module {
  func.func @func1(%arg0: memref<10xi16>, %arg1: tensor<10x2x10xi64>) {
    %false = arith.constant false
    %false_0 = arith.constant false
    %cst = arith.constant 4.300800e+04 : f16
    %c727661701_i64 = arith.constant 727661701 : i64
    %false_1 = arith.constant false
    %cst_2 = arith.constant 2.472000e+04 : f16
    %cst_3 = arith.constant 0x4E0A06C9 : f32
    %c939322342_i64 = arith.constant 939322342 : i64
    %cst_4 = arith.constant 7.636000e+03 : f16
    %c-14039_i16 = arith.constant -14039 : i16
    %cst_5 = arith.constant 0x4D69BE02 : f32
    %cst_6 = arith.constant 0x4E50306D : f32
    %false_7 = arith.constant false
    %true = arith.constant true
    %cst_8 = arith.constant 0x4E3BBEA5 : f32
    %c1721459475_i32 = arith.constant 1721459475 : i32
    %0 = tensor.empty() : tensor<2xi1>
    %1 = tensor.empty() : tensor<10x2x10xi1>
    %2 = tensor.empty() : tensor<2xf16>
    %3 = tensor.empty() : tensor<10x2x10xf32>
    %4 = tensor.empty() : tensor<10xi1>
    %5 = tensor.empty() : tensor<10xf32>
    %6 = tensor.empty() : tensor<10x2x10xi64>
    %7 = tensor.empty() : tensor<2xi1>
    %8 = tensor.empty() : tensor<10x2x10xi16>
    %9 = tensor.empty() : tensor<10xf16>
    %10 = tensor.empty() : tensor<10x2x10xi16>
    %11 = tensor.empty() : tensor<10xi32>
    %12 = tensor.empty() : tensor<2xf32>
    %13 = tensor.empty() : tensor<2xi64>
    %14 = tensor.empty() : tensor<10xf16>
    %15 = tensor.empty() : tensor<2xf16>
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
    %alloc = memref.alloc() : memref<10xf16>
    %alloc_9 = memref.alloc() : memref<10xi32>
    %alloc_10 = memref.alloc() : memref<10xi32>
    %alloc_11 = memref.alloc() : memref<10xf16>
    %alloc_12 = memref.alloc() : memref<10x2x10xi64>
    %alloc_13 = memref.alloc() : memref<2xi64>
    %alloc_14 = memref.alloc() : memref<10x2x10xf16>
    %alloc_15 = memref.alloc() : memref<2xi16>
    %alloc_16 = memref.alloc() : memref<10x2x10xi16>
    %alloc_17 = memref.alloc() : memref<2xi16>
    %alloc_18 = memref.alloc() : memref<10x2x10xf16>
    %alloc_19 = memref.alloc() : memref<10xi16>
    %alloc_20 = memref.alloc() : memref<10xi64>
    %alloc_21 = memref.alloc() : memref<2xf16>
    %alloc_22 = memref.alloc() : memref<2xi32>
    %alloc_23 = memref.alloc() : memref<10xi16>
    %16 = tensor.empty() : tensor<10xf16>
    %17 = linalg.copy ins(%14 : tensor<10xf16>) outs(%16 : tensor<10xf16>) -> tensor<10xf16>
    %alloc_24 = memref.alloc() : memref<2xi64>
    linalg.transpose ins(%13 : tensor<2xi64>) outs(%alloc_24 : memref<2xi64>) permutation = [0] 
    %alloc_25 = memref.alloc() : memref<i16>
    linalg.reduce ins(%alloc_16 : memref<10x2x10xi16>) outs(%alloc_25 : memref<i16>) dimensions = [0, 1, 2] 
      (%in: i16, %init: i16) {
        %273 = index.castu %c11 : index to i32
        %274 = vector.broadcast %c939322342_i64 : i64 to vector<10x2x10xi64>
        vector.print %274 : vector<10x2x10xi64>
        %275 = math.atan2 %3, %3 : tensor<10x2x10xf32>
        %276 = arith.addi %false_0, %true : i1
        %277 = arith.addf %cst_8, %cst_5 : f32
        %278 = arith.xori %false, %false : i1
        %279 = arith.xori %c727661701_i64, %c939322342_i64 : i64
        %280 = vector.broadcast %cst_4 : f16 to vector<10xf16>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    scf.parallel (%arg2, %arg3) = (%c5, %c2) to (%c0, %c6) step (%c4, %c2) {
      %273 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 * 4, d3 mod 16 + 64, -d3)>(%c11, %c10, %c10, %c10)
      %274 = vector.create_mask %arg2 : vector<10xi1>
      %275 = affine.load %alloc[%c7] : memref<10xf16>
      %276 = index.maxu %c2, %c13
      %277 = arith.xori %false_7, %false_1 : i1
      %cast_39 = tensor.cast %3 : tensor<10x2x10xf32> to tensor<?x?x?xf32>
      %278 = scf.execute_region -> tensor<10xf16> {
        %289 = arith.remf %cst_2, %275 : f16
        %290 = math.fma %cst_2, %cst_2, %275 : f16
        %291 = math.log2 %12 : tensor<2xf32>
        %292 = vector.shuffle %274, %274 [0, 2, 4, 9, 10, 16, 19] : vector<10xi1>, vector<10xi1>
        %293 = vector.broadcast %c1721459475_i32 : i32 to vector<10xi32>
        %294 = vector.gather %alloc_22[%c9] [%293], %274, %293 : memref<2xi32>, vector<10xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %295 = vector.create_mask %c3 : vector<10xi1>
        %296 = vector.splat %c9 : vector<10xindex>
        %297 = arith.remsi %true, %true : i1
        %298 = math.fma %cst_5, %cst_8, %cst_3 : f32
        %299 = index.mul %c9, %c6
        %300 = index.castu %false_0 : i1 to index
        %301 = index.floordivs %c2, %c15
        %302 = vector.broadcast %cst_4 : f16 to vector<10xf16>
        %303 = math.cttz %10 : tensor<10x2x10xi16>
        %304 = arith.divf %cst_3, %cst_6 : f32
        %305 = arith.divui %c727661701_i64, %c939322342_i64 : i64
        scf.yield %16 : tensor<10xf16>
      }
      %279 = arith.divsi %false_1, %false_0 : i1
      %280 = vector.shuffle %274, %274 [7, 8, 11, 12, 15, 16, 17, 19] : vector<10xi1>, vector<10xi1>
      %281 = vector.shuffle %274, %274 [1, 2, 4, 5, 6, 8, 9, 12, 13, 14, 15, 17] : vector<10xi1>, vector<10xi1>
      %282 = scf.if %false_1 -> (memref<10x2x10xf32>) {
        %289 = arith.remsi %false_7, %false_7 : i1
        %290 = arith.shrui %c727661701_i64, %c727661701_i64 : i64
        %291 = math.floor %3 : tensor<10x2x10xf32>
        %292 = arith.shrui %false, %false_7 : i1
        %293 = vector.extract_strided_slice %274 {offsets = [5], sizes = [3], strides = [1]} : vector<10xi1> to vector<3xi1>
        %294 = math.sqrt %9 : tensor<10xf16>
        %295 = vector.broadcast %cst_8 : f32 to vector<10x2x10xf32>
        %296 = vector.fma %295, %295, %295 : vector<10x2x10xf32>
        %297 = vector.load %alloc_12[%c6, %c1, %c1] : memref<10x2x10xi64>, vector<2xi64>
        %alloc_40 = memref.alloc() : memref<10x2x10xf32>
        scf.yield %alloc_40 : memref<10x2x10xf32>
      } else {
        %289 = math.round %cst_3 : f32
        %290 = math.cos %cst_5 : f32
        %291 = math.fma %278, %14, %9 : tensor<10xf16>
        %292 = arith.remf %cst_8, %cst_8 : f32
        %293 = math.log2 %3 : tensor<10x2x10xf32>
        %294 = arith.divui %c-14039_i16, %c-14039_i16 : i16
        %from_elements_40 = tensor.from_elements %false_7, %true, %false_0, %false_1, %true, %true, %false_0, %false, %false, %false_7 : tensor<10xi1>
        %295 = arith.remf %cst, %cst : f16
        %alloc_41 = memref.alloc() : memref<10x2x10xf32>
        scf.yield %alloc_41 : memref<10x2x10xf32>
      }
      %283 = arith.muli %c939322342_i64, %c727661701_i64 : i64
      %284 = vector.broadcast %c-14039_i16 : i16 to vector<4x2xi16>
      %285 = vector.broadcast %c-14039_i16 : i16 to vector<4xi16>
      %dest, %accumulated_value = vector.scan <mul>, %284, %285 {inclusive = true, reduction_dim = 1 : i64} : vector<4x2xi16>, vector<4xi16>
      %286 = math.cttz %7 : tensor<2xi1>
      %287 = index.mul %c4, %c5
      %288 = affine.load %alloc_9[%c5] : memref<10xi32>
      scf.yield
    }
    %18 = affine.vector_load %alloc_10[%c2] : memref<10xi32>, vector<4xi32>
    affine.vector_store %18, %alloc_22[%c13] : memref<2xi32>, vector<4xi32>
    %alloc_26 = memref.alloc() : memref<10xi32>
    %19 = tensor.empty() : tensor<i32>
    %20 = linalg.dot ins(%11, %alloc_26 : tensor<10xi32>, memref<10xi32>) outs(%19 : tensor<i32>) -> tensor<i32>
    %21 = arith.remui %c1721459475_i32, %c1721459475_i32 : i32
    %22 = math.log10 %cst_4 : f16
    %23 = math.cos %cst_6 : f32
    bufferization.dealloc_tensor %7 : tensor<2xi1>
    %24 = math.absi %19 : tensor<i32>
    %25 = vector.load %alloc_15[%c1] : memref<2xi16>, vector<10xi16>
    %26 = bufferization.to_memref %19 : memref<i32>
    %27 = index.floordivs %c11, %c12
    %28 = memref.realloc %alloc_15 : memref<2xi16> to memref<10xi16>
    %29 = vector.splat %true : vector<10xi1>
    %30 = arith.minsi %false_0, %false_1 : i1
    %31 = math.fma %2, %15, %15 : tensor<2xf16>
    %extracted = tensor.extract %10[%c4, %c0, %c7] : tensor<10x2x10xi16>
    %32 = arith.maxf %cst_4, %cst_4 : f16
    %33 = arith.maxf %cst_6, %cst_3 : f32
    %34 = math.tan %cst_5 : f32
    %35 = memref.realloc %alloc_19 : memref<10xi16> to memref<10xi16>
    %cast = tensor.cast %1 : tensor<10x2x10xi1> to tensor<?x?x?xi1>
    %36 = vector.shuffle %25, %25 [0, 1, 5, 8, 9, 11, 13, 14, 15, 16] : vector<10xi16>, vector<10xi16>
    %37 = math.absi %1 : tensor<10x2x10xi1>
    %38 = vector.extract_strided_slice %25 {offsets = [4], sizes = [6], strides = [1]} : vector<10xi16> to vector<6xi16>
    %39 = arith.cmpi sgt, %extracted, %c-14039_i16 : i16
    %40 = index.maxs %c7, %c5
    %41 = vector.matrix_multiply %25, %38 {lhs_columns = 2 : i32, lhs_rows = 5 : i32, rhs_columns = 3 : i32} : (vector<10xi16>, vector<6xi16>) -> vector<15xi16>
    %42 = bufferization.to_memref %0 : memref<2xi1>
    %43 = arith.addi %extracted, %extracted : i16
    %44 = math.fma %15, %2, %2 : tensor<2xf16>
    %alloca = memref.alloca() : memref<2xi64>
    %45 = math.absi %6 : tensor<10x2x10xi64>
    %46 = tensor.empty() : tensor<10x2x10xi64>
    %mapped = linalg.map ins(%6 : tensor<10x2x10xi64>) outs(%46 : tensor<10x2x10xi64>)
      (%in: i64) {
        %273 = arith.mulf %cst_3, %cst_5 : f32
        %274 = vector.broadcast %c939322342_i64 : i64 to vector<2xi64>
        %275 = vector.transfer_write %274, %46[%c9, %c14, %c10] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xi64>, tensor<10x2x10xi64>
        %276 = vector.broadcast %c1721459475_i32 : i32 to vector<2xi32>
        %277 = math.ipowi %6, %6 : tensor<10x2x10xi64>
        %278 = math.atan2 %2, %2 : tensor<2xf16>
        %279 = bufferization.to_memref %9 : memref<10xf16>
        %280 = arith.muli %c-14039_i16, %extracted : i16
        %cst_39 = arith.constant 2.801600e+04 : f16
        %281 = arith.andi %true, %false_7 : i1
        %from_elements_40 = tensor.from_elements %false_0, %false_1, %false_7, %false_7, %false_7, %false_7, %false_1, %false, %false_1, %false, %false_1, %false_7, %false, %true, %false_0, %false_0, %true, %false_1, %true, %false, %false_0, %false_0, %false_0, %true, %false_7, %true, %false_7, %false_0, %true, %false_7, %false_7, %false_7, %false, %false_1, %true, %false_0, %false_7, %false, %false_7, %false, %true, %false_7, %false, %false_1, %false, %false_0, %false_7, %false, %false, %false_0, %true, %false_1, %false_7, %false_7, %false_1, %false, %false_1, %false_7, %true, %true, %false, %false_1, %false_1, %false_0, %false_0, %false, %false_1, %false_1, %false_1, %false_7, %true, %false, %false, %false, %false_7, %false_1, %true, %false_7, %true, %false_7, %false_1, %false_7, %false_7, %false_1, %true, %false_0, %false_0, %false_1, %false, %false, %false, %true, %true, %false_0, %false, %true, %false_1, %false_1, %false_7, %false_1, %false_1, %false_7, %true, %false_1, %false_0, %false, %true, %false_7, %false_0, %false_1, %false_0, %false_0, %false_0, %false, %false_7, %false, %true, %false, %false, %false_7, %true, %false, %false_7, %false_1, %false_0, %false_1, %true, %false_1, %false, %false_0, %false_7, %false_1, %false_1, %false, %true, %false_7, %false_0, %false_0, %false, %false_1, %false, %false_7, %false_7, %false_7, %false_7, %true, %true, %false_7, %false, %false_0, %false_7, %false_1, %false_7, %false_1, %false_7, %false_0, %false_0, %false_7, %false_7, %false_0, %false_1, %false_7, %false_1, %false, %false_7, %true, %false_0, %true, %false_0, %true, %false_0, %false, %false_1, %false_0, %false_7, %false_1, %true, %true, %false, %false_7, %false, %false_7, %false_7, %false_0, %false_0, %false, %false_1, %true, %false_0, %false_1, %false_0, %false_1, %false_7, %false_7, %false_0, %false, %false_1, %true, %false_1, %false_0 : tensor<10x2x10xi1>
        %282 = tensor.empty() : tensor<10xi16>
        %283 = memref.realloc %alloc_22 : memref<2xi32> to memref<10xi32>
        %284 = arith.minf %cst_3, %cst_3 : f32
        %285 = affine.max affine_map<(d0) -> (d0, 0, d0 * 4 + 1, 0)>(%c9)
        %286 = math.roundeven %cst_8 : f32
        %287 = vector.matrix_multiply %18, %276 {lhs_columns = 2 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<2xi32>) -> vector<2xi32>
        %288 = vector.transpose %18, [0] : vector<4xi32> to vector<4xi32>
        %289 = vector.extract %25[6] : vector<10xi16>
        %290 = arith.remf %cst, %cst : f16
        %291 = vector.load %alloc_15[%c1] : memref<2xi16>, vector<10x2x10xi16>
        %292 = math.log10 %cst_2 : f16
        %293 = arith.maxsi %false_0, %false_1 : i1
        %294 = index.ceildivs %c5, %c7
        %295 = arith.shli %false_1, %false_1 : i1
        %296 = arith.shli %false_1, %true : i1
        %297 = bufferization.clone %alloc_18 : memref<10x2x10xf16> to memref<10x2x10xf16>
        %298 = arith.maxui %c1721459475_i32, %c1721459475_i32 : i32
        %299 = vector.broadcast %false_0 : i1 to vector<10xi1>
        %300 = vector.broadcast %c1721459475_i32 : i32 to vector<10xi32>
        %301 = vector.gather %282[%c13] [%300], %299, %25 : tensor<10xi16>, vector<10xi32>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %302 = math.cos %cst_2 : f16
        %303 = arith.maxsi %extracted, %extracted : i16
        %304 = arith.divui %false, %true : i1
        %305 = vector.matrix_multiply %301, %25 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi16>, vector<10xi16>) -> vector<1xi16>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %47 = vector.broadcast %cst_3 : f32 to vector<10xf32>
    %48 = arith.xori %c-14039_i16, %extracted : i16
    %49 = vector.extract %25[3] : vector<10xi16>
    %50 = math.expm1 %cst_6 : f32
    %51 = arith.floordivsi %c939322342_i64, %c727661701_i64 : i64
    %52 = vector.matrix_multiply %38, %38 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi16>, vector<6xi16>) -> vector<1xi16>
    %53 = tensor.empty(%c9) : tensor<?xi1>
    %54 = math.ipowi %13, %13 : tensor<2xi64>
    %55 = vector.splat %false_1 : vector<10xi1>
    %56 = math.ctpop %false_1 : i1
    %57 = arith.divsi %extracted, %extracted : i16
    %58 = math.ctlz %11 : tensor<10xi32>
    %59 = math.tanh %14 : tensor<10xf16>
    %60 = vector.transpose %18, [0] : vector<4xi32> to vector<4xi32>
    %61 = arith.ceildivsi %c939322342_i64, %c939322342_i64 : i64
    %62 = affine.max affine_map<(d0) -> (-(d0 floordiv 128 + 1), -(d0 floordiv 128 + 1), d0)>(%c0)
    %63 = bufferization.clone %alloc_20 : memref<10xi64> to memref<10xi64>
    %64 = math.log2 %12 : tensor<2xf32>
    %splat = tensor.splat %cst_6 : tensor<10xf32>
    %65 = vector.load %alloc_25[] : memref<i16>, vector<2xi16>
    %66 = vector.extract %41[13] : vector<15xi16>
    %67 = index.ceildivs %c6, %c15
    %68 = index.floordivs %c10, %c4
    %69 = math.exp %17 : tensor<10xf16>
    %70 = memref.alloca_scope  -> (memref<10x2x10xf16>) {
      %273 = arith.remf %cst, %cst_4 : f16
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%1 : tensor<10x2x10xi1>) {
      ^bb0(%out: i1):
        %306 = arith.shrsi %extracted, %extracted : i16
        %307 = arith.minf %cst, %cst_2 : f16
        %308 = arith.andi %true, %false : i1
        %309 = math.log1p %14 : tensor<10xf16>
        %310 = tensor.empty(%c14) : tensor<?xi16>
        %311 = index.add %c13, %c12
        %312 = vector.extract_strided_slice %38 {offsets = [0], sizes = [5], strides = [1]} : vector<6xi16> to vector<5xi16>
        %313 = arith.divsi %c-14039_i16, %extracted : i16
        %314 = math.expm1 %2 : tensor<2xf16>
        %cast_40 = tensor.cast %9 : tensor<10xf16> to tensor<?xf16>
        %315 = math.expm1 %3 : tensor<10x2x10xf32>
        %316 = vector.broadcast %false_7 : i1 to vector<2xi1>
        %317 = vector.splat %cst_4 : vector<10x2x10xf16>
        %318 = arith.andi %c-14039_i16, %c-14039_i16 : i16
        %319 = vector.splat %false_0 : vector<10xi1>
        %320 = math.ipowi %0, %7 : tensor<2xi1>
        %321 = math.copysign %14, %9 : tensor<10xf16>
        %alloca_41 = memref.alloca() : memref<10x2x10xi32>
        %322 = math.log2 %cst_3 : f32
        %323 = memref.realloc %63 : memref<10xi64> to memref<2xi64>
        memref.assume_alignment %alloc_18, 1 : memref<10x2x10xf16>
        %324 = bufferization.to_tensor %alloc_18 : memref<10x2x10xf16>
        %325 = arith.cmpi ne, %extracted, %extracted : i16
        %326 = index.divu %c4, %27
        %327 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %25, %25, %extracted : vector<10xi16>, vector<10xi16> into i16
        %328 = vector.splat %cst_5 : vector<10xf32>
        %329 = arith.minui %c1721459475_i32, %c1721459475_i32 : i32
        %330 = math.expm1 %17 : tensor<10xf16>
        %331 = arith.divui %c-14039_i16, %c-14039_i16 : i16
        %332 = vector.broadcast %cst : f16 to vector<2xf16>
        %333 = vector.broadcast %c1721459475_i32 : i32 to vector<2xi32>
        %334 = vector.gather %alloc_14[%c13, %68, %c14] [%333], %316, %332 : memref<10x2x10xf16>, vector<2xi32>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %335 = arith.divsi %extracted, %c-14039_i16 : i16
        %336 = memref.realloc %alloc_23 : memref<10xi16> to memref<10xi16>
        linalg.yield %false_7 : i1
      } -> tensor<10x2x10xi1>
      %275 = vector.splat %c1721459475_i32 : vector<10x2x10xi32>
      %276 = arith.divsi %false_7, %false_1 : i1
      %277 = bufferization.clone %alloc_9 : memref<10xi32> to memref<10xi32>
      %278 = math.log2 %splat : tensor<10xf32>
      %279 = arith.shrsi %c-14039_i16, %c-14039_i16 : i16
      %280 = arith.divui %true, %false_7 : i1
      %281 = arith.remui %c-14039_i16, %c-14039_i16 : i16
      %282 = arith.shrsi %c939322342_i64, %c727661701_i64 : i64
      %283 = math.cos %5 : tensor<10xf32>
      %284 = arith.negf %cst_5 : f32
      %285 = index.castu %c939322342_i64 : i64 to index
      %286 = arith.maxf %cst, %cst_2 : f16
      memref.tensor_store %9, %alloc : memref<10xf16>
      %287 = math.tanh %9 : tensor<10xf16>
      %288 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%13 : tensor<2xi64>) outs(%46 : tensor<10x2x10xi64>) {
      ^bb0(%in: i64, %out: i64):
        %c681478521_i32 = arith.constant 681478521 : i32
        %306 = memref.atomic_rmw maxs %c1721459475_i32, %26[] : (i32, memref<i32>) -> i32
        %alloca_40 = memref.alloca() : memref<10xi64>
        %307 = vector.broadcast %true : i1 to vector<2xi1>
        %308 = vector.maskedload %alloc_17[%c0], %307, %65 : memref<2xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
        %309 = math.round %cst_2 : f16
        %310 = math.rsqrt %12 : tensor<2xf32>
        affine.store %cst_4, %alloc_14[%c11, %c11, %c7] : memref<10x2x10xf16>
        %311 = index.castu %c14 : index to i32
        %312 = arith.maxf %cst_8, %cst_6 : f32
        %313 = arith.remui %out, %c939322342_i64 : i64
        %314 = vector.create_mask %c6 : vector<10xi1>
        %315 = affine.load %63[%c10] : memref<10xi64>
        %316 = memref.atomic_rmw minu %extracted, %alloc_25[] : (i16, memref<i16>) -> i16
        memref.tensor_store %16, %alloc_11 : memref<10xf16>
        %splat_41 = tensor.splat %c1721459475_i32 : tensor<10x2x10xi32>
        %317 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 - 32) * 32, (d2 - 32) * 32)>(%c3, %c5, %27, %c1)
        %318 = arith.divui %false, %false : i1
        %319 = arith.maxsi %out, %315 : i64
        %320 = math.ctpop %4 : tensor<10xi1>
        %321 = math.expm1 %15 : tensor<2xf16>
        %322 = arith.maxsi %in, %315 : i64
        %323 = arith.divf %cst_2, %cst_2 : f16
        %324 = index.castu %c12 : index to i32
        %325 = arith.minf %cst_2, %cst_2 : f16
        %326 = arith.divui %false_1, %true : i1
        %327 = math.cos %15 : tensor<2xf16>
        %328 = index.sub %27, %c0
        %329 = index.divs %c5, %67
        %alloca_42 = memref.alloca() : memref<10xi32>
        %330 = vector.transpose %65, [0] : vector<2xi16> to vector<2xi16>
        affine.store %c1721459475_i32, %26[] : memref<i32>
        %331 = arith.minsi %out, %in : i64
        linalg.yield %in : i64
      } -> tensor<10x2x10xi64>
      %289 = vector.create_mask %40 : vector<2xi1>
      %290 = index.floordivs %c11, %c5
      memref.assume_alignment %42, 8 : memref<2xi1>
      %291 = arith.minsi %false_7, %false_0 : i1
      %alloc_39 = memref.alloc() : memref<10x2x10xf32>
      %292 = vector.broadcast %false_7 : i1 to vector<10xi1>
      %293 = vector.broadcast %c1721459475_i32 : i32 to vector<10xi32>
      %294 = vector.gather %alloc_39[%c8, %27, %c3] [%293], %292, %47 : memref<10x2x10xf32>, vector<10xi32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
      %295 = index.ceildivu %c14, %c8
      %296 = vector.transpose %294, [0] : vector<10xf32> to vector<10xf32>
      %297 = arith.remf %cst_2, %cst : f16
      %298 = math.expm1 %15 : tensor<2xf16>
      %299 = math.expm1 %9 : tensor<10xf16>
      %300 = tensor.empty() : tensor<10xi16>
      %301 = vector.broadcast %c1721459475_i32 : i32 to vector<2xi32>
      %302 = vector.gather %300[%c14] [%301], %289, %65 : tensor<10xi16>, vector<2xi32>, vector<2xi1>, vector<2xi16> into vector<2xi16>
      bufferization.dealloc_tensor %6 : tensor<10x2x10xi64>
      %303 = vector.flat_transpose %302 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
      %304 = arith.maxf %cst_8, %cst_3 : f32
      %305 = arith.shrsi %false_7, %false_7 : i1
      memref.alloca_scope.return %alloc_18 : memref<10x2x10xf16>
    }
    %71 = math.roundeven %14 : tensor<10xf16>
    %72 = index.castu %68 : index to i32
    %from_elements = tensor.from_elements %c-14039_i16, %extracted, %extracted, %c-14039_i16, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted : tensor<10xi16>
    %73 = math.ipowi %7, %0 : tensor<2xi1>
    %74 = math.log1p %17 : tensor<10xf16>
    %inserted = tensor.insert %c1721459475_i32 into %19[] : tensor<i32>
    %75 = vector.extract_strided_slice %41 {offsets = [5], sizes = [9], strides = [1]} : vector<15xi16> to vector<9xi16>
    memref.store %cst_4, %alloc_14[%c1, %c0, %c8] : memref<10x2x10xf16>
    %76 = arith.divsi %c939322342_i64, %c727661701_i64 : i64
    %77 = arith.minf %cst_8, %cst_3 : f32
    %alloc_27 = memref.alloc() : memref<10x10x2xf32>
    %78 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_27, %splat, %12 : memref<10x10x2xf32>, tensor<10xf32>, tensor<2xf32>) outs(%3 : tensor<10x2x10xf32>) {
    ^bb0(%in: f32, %in_39: f32, %in_40: f32, %out: f32):
      %alloca_41 = memref.alloca() : memref<2xi16>
      %273 = vector.splat %cst_6 : vector<10xf32>
      %274 = affine.max affine_map<(d0) -> (d0 * 3, d0 - 2)>(%40)
      %275 = math.powf %14, %17 : tensor<10xf16>
      %276 = vector.transpose %41, [0] : vector<15xi16> to vector<15xi16>
      %277 = bufferization.clone %alloc_26 : memref<10xi32> to memref<10xi32>
      %278 = arith.maxsi %c1721459475_i32, %c1721459475_i32 : i32
      scf.if %false_1 {
        %302 = index.floordivs %c13, %c15
        %303 = arith.divsi %c-14039_i16, %c-14039_i16 : i16
        %304 = arith.addi %c939322342_i64, %c939322342_i64 : i64
        %from_elements_43 = tensor.from_elements %c727661701_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64 : tensor<10xi64>
        %305 = index.mul %302, %c7
        %306 = vector.shuffle %52, %25 [3, 4, 8, 9, 10] : vector<1xi16>, vector<10xi16>
        %307 = memref.atomic_rmw addf %cst_2, %alloc_11[%c9] : (f16, memref<10xf16>) -> f16
        %308 = math.absi %7 : tensor<2xi1>
      } else {
        %302 = index.add %67, %c11
        %303 = arith.mulf %in_39, %cst_5 : f32
        %304 = math.atan2 %cst_5, %out : f32
        %305 = vector.extract_strided_slice %18 {offsets = [0], sizes = [3], strides = [1]} : vector<4xi32> to vector<3xi32>
        %306 = arith.divui %true, %false : i1
        %307 = math.absf %splat : tensor<10xf32>
        %308 = affine.load %alloc_18[%c7, %c11, %c3] : memref<10x2x10xf16>
        %309 = vector.transpose %65, [0] : vector<2xi16> to vector<2xi16>
      }
      %279 = bufferization.to_tensor %alloc_15 : memref<2xi16>
      %280 = math.sqrt %5 : tensor<10xf32>
      %281 = vector.broadcast %false_7 : i1 to vector<10xi1>
      %282 = vector.matrix_multiply %25, %38 {lhs_columns = 2 : i32, lhs_rows = 5 : i32, rhs_columns = 3 : i32} : (vector<10xi16>, vector<6xi16>) -> vector<15xi16>
      %283 = arith.minf %cst_3, %cst_3 : f32
      %284 = arith.minf %cst_3, %out : f32
      %285 = memref.realloc %alloc : memref<10xf16> to memref<2xf16>
      memref.assume_alignment %alloc_19, 1 : memref<10xi16>
      %286 = arith.shrsi %false_7, %false : i1
      %287 = bufferization.clone %alloc_17 : memref<2xi16> to memref<2xi16>
      %288 = vector.broadcast %c-14039_i16 : i16 to vector<i16>
      %289 = vector.transfer_write %288, %from_elements[%c3] : vector<i16>, tensor<10xi16>
      %290 = arith.remf %cst_6, %cst_5 : f32
      %291 = vector.extract %75[6] : vector<9xi16>
      %292 = vector.extract_strided_slice %281 {offsets = [6], sizes = [1], strides = [1]} : vector<10xi1> to vector<1xi1>
      %293 = math.cos %cst_3 : f32
      %294 = index.casts %true : i1 to index
      %295 = index.maxs %c0, %c2
      %296 = vector.splat %cst_5 : vector<10xf32>
      %297 = vector.create_mask %c7 : vector<2xi1>
      %298 = arith.maxf %out, %cst_6 : f32
      %299 = math.log2 %cst_8 : f32
      %extracted_42 = tensor.extract %1[%c9, %c0, %c8] : tensor<10x2x10xi1>
      %300 = vector.insert %c-14039_i16, %38 [3] : i16 into vector<6xi16>
      %301 = bufferization.clone %alloc_26 : memref<10xi32> to memref<10xi32>
      linalg.yield %out : f32
    } -> tensor<10x2x10xf32>
    %79 = index.floordivs %67, %c12
    %80 = memref.atomic_rmw assign %c1721459475_i32, %alloc_9[%c4] : (i32, memref<10xi32>) -> i32
    %81 = arith.maxf %cst_5, %cst_8 : f32
    %82 = vector.flat_transpose %41 {columns = 5 : i32, rows = 3 : i32} : vector<15xi16> -> vector<15xi16>
    %83 = vector.extract_strided_slice %41 {offsets = [6], sizes = [1], strides = [1]} : vector<15xi16> to vector<1xi16>
    %84 = arith.addf %cst_4, %cst_4 : f16
    %85 = math.expm1 %cst_6 : f32
    %86 = index.ceildivu %c11, %c10
    %87 = math.ipowi %1, %1 : tensor<10x2x10xi1>
    %88 = vector.insertelement %cst_8, %47[%c8 : index] : vector<10xf32>
    %cast_28 = tensor.cast %7 : tensor<2xi1> to tensor<?xi1>
    %89 = arith.remui %false_7, %false_1 : i1
    %90 = index.sub %67, %c5
    %91 = vector.transpose %47, [0] : vector<10xf32> to vector<10xf32>
    %92 = bufferization.to_memref %46 : memref<10x2x10xi64>
    %93 = index.ceildivs %c11, %c7
    %94 = vector.broadcast %cst_6 : f32 to vector<10x2x10xf32>
    %95 = vector.broadcast %false_1 : i1 to vector<10x2x10xi1>
    %96 = vector.broadcast %c1721459475_i32 : i32 to vector<10x2x10xi32>
    %97 = vector.gather %splat[%79] [%96], %95, %94 : tensor<10xf32>, vector<10x2x10xi32>, vector<10x2x10xi1>, vector<10x2x10xf32> into vector<10x2x10xf32>
    %98 = vector.insert %47, %94 [2, 1] : vector<10xf32> into vector<10x2x10xf32>
    %99 = vector.flat_transpose %38 {columns = 2 : i32, rows = 3 : i32} : vector<6xi16> -> vector<6xi16>
    %100 = arith.mulf %cst_8, %cst_5 : f32
    %101 = index.castu %true : i1 to index
    %102 = math.fma %14, %14, %16 : tensor<10xf16>
    %103 = math.expm1 %cst_8 : f32
    %inserted_29 = tensor.insert %false_7 into %0[%c0] : tensor<2xi1>
    %104 = arith.addf %cst_3, %cst_5 : f32
    %105 = vector.insert %extracted, %65 [0] : i16 into vector<2xi16>
    %106 = vector.broadcast %93 : index to vector<2xindex>
    %107 = vector.broadcast %false_7 : i1 to vector<2xi1>
    %108 = vector.broadcast %c1721459475_i32 : i32 to vector<2xi32>
    vector.scatter %alloc_26[%c9] [%106], %107, %108 : memref<10xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
    %109 = math.tanh %cst : f16
    %110 = math.expm1 %cst_5 : f32
    %111 = tensor.empty() : tensor<2xi64>
    %mapped_30 = linalg.map ins(%13, %alloc_24 : tensor<2xi64>, memref<2xi64>) outs(%111 : tensor<2xi64>)
      (%in: i64, %in_39: i64) {
        %273 = vector.flat_transpose %52 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %274 = bufferization.clone %alloc_15 : memref<2xi16> to memref<2xi16>
        %275 = math.exp %cst_4 : f16
        %276 = arith.maxsi %c1721459475_i32, %c1721459475_i32 : i32
        %277 = index.sizeof
        %278 = arith.maxsi %false_0, %false_7 : i1
        %279 = math.sqrt %14 : tensor<10xf16>
        %280 = index.mul %27, %79
        %281 = arith.remsi %false_0, %false : i1
        %282 = index.ceildivs %93, %c3
        %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %38, %38, %extracted : vector<6xi16>, vector<6xi16> into i16
        %284 = arith.remsi %false, %false_1 : i1
        %285 = math.ipowi %c727661701_i64, %c939322342_i64 : i64
        %286 = arith.remf %cst_5, %cst_6 : f32
        %287 = arith.divsi %false, %false : i1
        scf.if %false {
          %303 = bufferization.to_tensor %alloc_16 : memref<10x2x10xi16>
          %304 = math.ceil %15 : tensor<2xf16>
          %305 = math.cttz %8 : tensor<10x2x10xi16>
          %306 = vector.matrix_multiply %18, %18 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
          %307 = vector.broadcast %cst_6 : f32 to vector<10x2xf32>
          %dest, %accumulated_value = vector.scan <mul>, %94, %307 {inclusive = true, reduction_dim = 2 : i64} : vector<10x2x10xf32>, vector<10x2xf32>
          %alloca_41 = memref.alloca() : memref<10xf32>
          %alloc_42 = memref.alloc() : memref<10x2x10xf32>
          memref.tensor_store %3, %alloc_42 : memref<10x2x10xf32>
          %308 = arith.divf %cst_4, %cst : f16
        }
        %288 = vector.matrix_multiply %82, %273 {lhs_columns = 1 : i32, lhs_rows = 15 : i32, rhs_columns = 1 : i32} : (vector<15xi16>, vector<1xi16>) -> vector<15xi16>
        %289 = bufferization.to_memref %12 : memref<2xf32>
        %290 = math.log1p %17 : tensor<10xf16>
        %291 = tensor.empty() : tensor<10x2x10xf16>
        %292 = arith.andi %in, %c939322342_i64 : i64
        %293 = math.cttz %false_7 : i1
        %294 = vector.insertelement %extracted, %288[%90 : index] : vector<15xi16>
        %295 = vector.transpose %94, [1, 0, 2] : vector<10x2x10xf32> to vector<2x10x10xf32>
        memref.tensor_store %14, %alloc_11 : memref<10xf16>
        %296 = math.cos %15 : tensor<2xf16>
        %297 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %288, %41, %c-14039_i16 : vector<15xi16>, vector<15xi16> into i16
        %298 = arith.maxf %cst_5, %cst_3 : f32
        %299 = index.divs %79, %62
        %300 = math.ctlz %1 : tensor<10x2x10xi1>
        %alloc_40 = memref.alloc() : memref<10x10xf32>
        %301 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%5, %alloc_40, %5 : tensor<10xf32>, memref<10x10xf32>, tensor<10xf32>) outs(%3 : tensor<10x2x10xf32>) {
        ^bb0(%in_41: f32, %in_42: f32, %in_43: f32, %out: f32):
          %303 = index.add %c14, %c2
          %304 = arith.remf %cst_5, %cst_5 : f32
          %305 = math.tan %9 : tensor<10xf16>
          %306 = arith.addf %cst_2, %cst_4 : f16
          %307 = arith.addi %true, %false_1 : i1
          %308 = arith.shrsi %false, %false : i1
          %309 = arith.remui %true, %false : i1
          %310 = arith.remsi %false_7, %false_1 : i1
          %cst_44 = arith.constant 0x4E63D306 : f32
          %311 = index.ceildivu %282, %299
          %312 = math.sqrt %16 : tensor<10xf16>
          %313 = arith.remui %false_0, %false : i1
          %alloc_45 = memref.alloc() : memref<i16>
          memref.copy %alloc_25, %alloc_45 : memref<i16> to memref<i16>
          %314 = math.ipowi %46, %6 : tensor<10x2x10xi64>
          %315 = index.maxu %c1, %68
          %316 = index.castu %c4 : index to i32
          %317 = vector.extract_strided_slice %25 {offsets = [2], sizes = [3], strides = [1]} : vector<10xi16> to vector<3xi16>
          %318 = arith.remf %in_43, %cst_6 : f32
          %319 = arith.minsi %false_1, %false_1 : i1
          %320 = math.ctlz %10 : tensor<10x2x10xi16>
          affine.store %extracted, %alloc_16[%c14, %c12, %c5] : memref<10x2x10xi16>
          %321 = vector.flat_transpose %47 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
          %322 = math.expm1 %3 : tensor<10x2x10xf32>
          %323 = math.ceil %cst_2 : f16
          %324 = math.ipowi %10, %10 : tensor<10x2x10xi16>
          %325 = arith.maxsi %false_0, %false_1 : i1
          %326 = bufferization.to_tensor %alloc_20 : memref<10xi64>
          %327 = bufferization.clone %70 : memref<10x2x10xf16> to memref<10x2x10xf16>
          %328 = math.expm1 %291 : tensor<10x2x10xf16>
          %329 = vector.splat %86 : vector<10x2x10xindex>
          %330 = arith.maxsi %c727661701_i64, %in_39 : i64
          %331 = vector.flat_transpose %82 {columns = 5 : i32, rows = 3 : i32} : vector<15xi16> -> vector<15xi16>
          linalg.yield %cst_3 : f32
        } -> tensor<10x2x10xf32>
        %302 = math.powf %291, %291 : tensor<10x2x10xf16>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %112 = vector.broadcast %c-14039_i16 : i16 to vector<6x6xi16>
    %113 = vector.outerproduct %99, %99, %112 {kind = #vector.kind<xor>} : vector<6xi16>, vector<6xi16>
    %114 = bufferization.clone %alloc_26 : memref<10xi32> to memref<10xi32>
    %115 = index.castu %c939322342_i64 : i64 to index
    %116 = arith.muli %c-14039_i16, %extracted : i16
    %117 = arith.negf %cst_2 : f16
    %118 = math.ctpop %c727661701_i64 : i64
    %119 = tensor.empty() : tensor<2xi64>
    %120 = math.ctpop %extracted : i16
    %121 = scf.while (%arg2 = %cst) : (f16) -> f16 {
      %273 = arith.addi %false_1, %false_1 : i1
      %274 = math.sqrt %cst_8 : f32
      %275 = math.absi %4 : tensor<10xi1>
      %276 = arith.shrsi %false_0, %true : i1
      %277 = math.expm1 %17 : tensor<10xf16>
      %278 = arith.remui %false, %false_0 : i1
      %279 = vector.matrix_multiply %41, %65 {lhs_columns = 1 : i32, lhs_rows = 15 : i32, rhs_columns = 2 : i32} : (vector<15xi16>, vector<2xi16>) -> vector<30xi16>
      %280 = index.castu %c6 : index to i32
      scf.condition(%false) %cst : f16
    } do {
    ^bb0(%arg2: f16):
      %extracted_39 = tensor.extract %5[%c8] : tensor<10xf32>
      %273 = index.ceildivu %c11, %c12
      %274 = vector.matrix_multiply %82, %75 {lhs_columns = 3 : i32, lhs_rows = 5 : i32, rhs_columns = 3 : i32} : (vector<15xi16>, vector<9xi16>) -> vector<15xi16>
      %275 = math.ipowi %false, %false_1 : i1
      %276 = index.castu %c727661701_i64 : i64 to index
      %277 = math.sqrt %cst_8 : f32
      %278 = arith.addf %cst_6, %cst_6 : f32
      %cast_40 = tensor.cast %7 : tensor<2xi1> to tensor<?xi1>
      %279 = vector.flat_transpose %41 {columns = 5 : i32, rows = 3 : i32} : vector<15xi16> -> vector<15xi16>
      %280 = index.mul %40, %c12
      %281 = vector.splat %c8 : vector<10xindex>
      %282 = tensor.empty() : tensor<10xi64>
      %283 = vector.broadcast %c939322342_i64 : i64 to vector<2xi64>
      %284 = vector.broadcast %false_1 : i1 to vector<2xi1>
      %285 = vector.broadcast %c1721459475_i32 : i32 to vector<2xi32>
      %286 = vector.gather %282[%c8] [%285], %284, %283 : tensor<10xi64>, vector<2xi32>, vector<2xi1>, vector<2xi64> into vector<2xi64>
      %287 = vector.flat_transpose %279 {columns = 5 : i32, rows = 3 : i32} : vector<15xi16> -> vector<15xi16>
      %288 = vector.insert %c939322342_i64, %286 [0] : i64 into vector<2xi64>
      %289 = math.log1p %3 : tensor<10x2x10xf32>
      %290 = affine.load %alloc_25[] : memref<i16>
      scf.yield %cst_4 : f16
    }
    %122 = arith.xori %false_1, %false : i1
    scf.if %false_1 {
      %273 = arith.xori %false_1, %false_7 : i1
      %274 = math.ceil %14 : tensor<10xf16>
      %275 = affine.load %alloc_20[%c11] : memref<10xi64>
      %276 = arith.shrsi %false_0, %false_7 : i1
      %277 = math.round %cst : f16
      %278 = math.atan2 %cst, %cst : f16
      %279 = vector.flat_transpose %82 {columns = 5 : i32, rows = 3 : i32} : vector<15xi16> -> vector<15xi16>
      %280 = index.add %c8, %c7
    } else {
      %273 = affine.load %alloc_17[%c13] : memref<2xi16>
      %collapsed = tensor.collapse_shape %46 [[0, 1], [2]] : tensor<10x2x10xi64> into tensor<20x10xi64>
      %274 = index.floordivs %40, %c11
      %275 = vector.shuffle %95, %95 [0, 8, 9, 13, 14, 19] : vector<10x2x10xi1>, vector<10x2x10xi1>
      %276 = arith.remui %false_7, %false_0 : i1
      %277 = math.round %16 : tensor<10xf16>
      %278 = math.ceil %12 : tensor<2xf32>
      %279 = math.exp %5 : tensor<10xf32>
    }
    %123 = math.ctlz %c939322342_i64 : i64
    %124 = math.cos %15 : tensor<2xf16>
    bufferization.dealloc_tensor %4 : tensor<10xi1>
    %125 = math.tanh %9 : tensor<10xf16>
    %126 = affine.min affine_map<(d0, d1) -> (-(d1 - d0 ceildiv 4 - 2), d1 - 2, d1 - d0 ceildiv 4 - 2)>(%62, %c9)
    %127 = scf.index_switch %62 -> memref<2xf32> 
    case 1 {
      %273 = vector.broadcast %extracted : i16 to vector<10x2x10xi16>
      %274 = vector.gather %from_elements[%c8] [%96], %95, %273 : tensor<10xi16>, vector<10x2x10xi32>, vector<10x2x10xi1>, vector<10x2x10xi16> into vector<10x2x10xi16>
      %275 = arith.divsi %false_1, %false : i1
      %generated_39 = tensor.generate %c4, %c4, %79 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %286 = memref.atomic_rmw assign %c727661701_i64, %alloc_13[%c1] : (i64, memref<2xi64>) -> i64
        %287 = math.absf %9 : tensor<10xf16>
        %cst_43 = arith.constant 1.692800e+04 : f16
        %288 = index.add %c6, %115
        tensor.yield %c727661701_i64 : i64
      } : tensor<?x?x?xi64>
      %276 = arith.minsi %c1721459475_i32, %c1721459475_i32 : i32
      %277 = vector.matrix_multiply %75, %25 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 10 : i32} : (vector<9xi16>, vector<10xi16>) -> vector<90xi16>
      %278 = index.divu %c10, %c3
      %279 = math.powf %2, %2 : tensor<2xf16>
      %280 = arith.divf %cst, %cst_4 : f16
      %281 = bufferization.to_memref %46 : memref<10x2x10xi64>
      %282 = vector.flat_transpose %65 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
      scf.execute_region {
        %286 = arith.divsi %c-14039_i16, %extracted : i16
        %287 = index.maxu %c8, %93
        %288 = bufferization.clone %alloc_9 : memref<10xi32> to memref<10xi32>
        %289 = arith.divf %cst_2, %cst_2 : f16
        %290 = arith.minsi %false_1, %false_1 : i1
        %291 = vector.matrix_multiply %18, %18 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi32>, vector<4xi32>) -> vector<1xi32>
        %from_elements_43 = tensor.from_elements %cst_3, %cst_5 : tensor<2xf32>
        %292 = arith.divsi %c-14039_i16, %extracted : i16
        %cast_44 = tensor.cast %20 : tensor<i32> to tensor<i32>
        %from_elements_45 = tensor.from_elements %false_1, %true, %false_0, %false_0, %false_7, %false_1, %false_7, %false_1, %false_7, %false_1, %false_0, %false_0, %false, %true, %true, %false_7, %false_7, %false_0, %false_1, %false_1, %false_0, %false_7, %false_1, %false_1, %true, %true, %false_0, %false_7, %true, %false_1, %false_1, %true, %false_1, %true, %false, %false_7, %false_1, %false, %false_0, %true, %false, %false, %false, %true, %true, %false, %false_1, %false_1, %true, %false_1, %true, %false_1, %false_7, %false, %false_1, %false_1, %false, %false_7, %true, %true, %false, %false, %false_0, %false_1, %false_0, %true, %false_0, %true, %false_1, %false_1, %false_7, %false_0, %false, %false, %false_7, %false_0, %false, %false_1, %false_1, %true, %false_1, %false_1, %false_7, %false_7, %false_1, %false, %false_7, %false_1, %false_7, %false_0, %false_7, %true, %false, %false_0, %false, %false_1, %false_0, %false_1, %false_1, %false_7, %false_0, %true, %false_0, %false_7, %false_0, %false, %false, %false_7, %true, %true, %true, %false_1, %false_0, %false_7, %false_0, %false_0, %false, %false_0, %false_0, %false, %false_7, %false, %false_1, %false_7, %false_0, %false_1, %false_1, %true, %false, %false, %false_1, %false_7, %false_7, %false_7, %false, %false_1, %false_1, %false, %false_0, %false, %false_7, %false_1, %false_7, %false_0, %false_0, %false_7, %false, %false, %false_7, %false_0, %false, %false_0, %false_1, %false_1, %true, %false_1, %false_1, %false_1, %false_1, %true, %false_0, %false_1, %false_7, %false, %true, %true, %false_0, %false_1, %true, %false, %false_1, %false_7, %false_0, %true, %true, %false_1, %false, %false_7, %false, %false_0, %false, %false_7, %false_1, %true, %false_0, %true, %false_1, %false, %true, %false, %false_1, %false_0, %true, %true, %true, %false_7, %false_0, %false_1, %true, %true : tensor<10x2x10xi1>
        %293 = bufferization.to_memref %0 : memref<2xi1>
        %294 = index.floordivs %27, %c6
        %295 = arith.shrsi %c1721459475_i32, %c1721459475_i32 : i32
        %296 = math.tanh %cst : f16
        %297 = arith.minsi %false_1, %false : i1
        %298 = math.cos %from_elements_43 : tensor<2xf32>
        scf.yield
      }
      %from_elements_40 = tensor.from_elements %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst_2, %cst, %cst_4, %cst, %cst, %cst_2, %cst_2, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst_2, %cst, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2, %cst, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_2, %cst_4, %cst, %cst_2, %cst, %cst_4, %cst_2, %cst, %cst_2, %cst_2, %cst_4, %cst, %cst_4, %cst, %cst, %cst_4, %cst, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst, %cst, %cst_2, %cst, %cst, %cst_4, %cst, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst, %cst_2, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst_4, %cst, %cst_2, %cst_4, %cst, %cst_4, %cst, %cst_2, %cst_4, %cst, %cst, %cst_4, %cst, %cst_4, %cst_2, %cst, %cst, %cst, %cst_2, %cst_2, %cst, %cst_2, %cst_4, %cst_4, %cst, %cst_2, %cst_2, %cst_4, %cst_2, %cst, %cst, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst_2, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst, %cst, %cst, %cst, %cst_2, %cst, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst, %cst, %cst_4, %cst_2, %cst, %cst, %cst, %cst_2, %cst, %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst, %cst_4, %cst_4, %cst_2, %cst_4, %cst, %cst_4, %cst_2, %cst, %cst, %cst_2, %cst_4, %cst_2, %cst, %cst, %cst, %cst, %cst_4, %cst_2, %cst, %cst_2, %cst, %cst, %cst, %cst, %cst_4, %cst_2, %cst_4, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst, %cst_2, %cst_4, %cst_4, %cst, %cst_4, %cst_4 : tensor<10x2x10xf16>
      %cast_41 = tensor.cast %from_elements : tensor<10xi16> to tensor<?xi16>
      %283 = vector.splat %false_1 : vector<10xi1>
      %284 = bufferization.clone %alloc_24 : memref<2xi64> to memref<2xi64>
      %285 = math.exp %5 : tensor<10xf32>
      %alloc_42 = memref.alloc() : memref<2xf32>
      scf.yield %alloc_42 : memref<2xf32>
    }
    case 2 {
      %273 = math.ceil %5 : tensor<10xf32>
      %274 = affine.load %alloc_11[%c1] : memref<10xf16>
      %275 = vector.splat %c4 : vector<2xindex>
      %276 = math.ipowi %c-14039_i16, %extracted : i16
      %277 = arith.addi %c1721459475_i32, %c1721459475_i32 : i32
      vector.print %97 : vector<10x2x10xf32>
      %278 = math.log %cst_4 : f16
      %279 = math.expm1 %cst_5 : f32
      %280 = math.sqrt %splat : tensor<10xf32>
      %281 = tensor.empty(%115) : tensor<?xf32>
      %282 = affine.apply affine_map<(d0, d1, d2) -> ((d2 ceildiv 2) * 8)>(%c7, %c8, %c2)
      %283 = arith.mulf %cst_4, %cst : f16
      scf.index_switch %c3 
      case 1 {
        %287 = arith.shrsi %c727661701_i64, %c939322342_i64 : i64
        %288 = tensor.empty() : tensor<10xf32>
        %289 = bufferization.clone %alloc_12 : memref<10x2x10xi64> to memref<10x2x10xi64>
        %290 = arith.negf %cst_3 : f32
        %291 = bufferization.clone %114 : memref<10xi32> to memref<10xi32>
        %292 = index.mul %90, %62
        %293 = arith.maxui %false, %false_0 : i1
        %294 = math.atan2 %3, %3 : tensor<10x2x10xf32>
        %295 = index.castu %false_1 : i1 to index
        %296 = math.log2 %2 : tensor<2xf16>
        %alloca_40 = memref.alloca() : memref<10xi64>
        %297 = memref.atomic_rmw maxs %c1721459475_i32, %alloc_26[%c5] : (i32, memref<10xi32>) -> i32
        %298 = math.absi %10 : tensor<10x2x10xi16>
        %299 = vector.broadcast %c8 : index to vector<10xindex>
        %300 = vector.broadcast %false_1 : i1 to vector<10xi1>
        %301 = vector.broadcast %c727661701_i64 : i64 to vector<10xi64>
        vector.scatter %alloc_12[%c7, %c1, %c0] [%299], %300, %301 : memref<10x2x10xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %302 = arith.shrsi %extracted, %extracted : i16
        vector.print %97 : vector<10x2x10xf32>
        scf.yield
      }
      case 2 {
        %287 = vector.insert %c-14039_i16, %75 [3] : i16 into vector<9xi16>
        bufferization.dealloc_tensor %11 : tensor<10xi32>
        %288 = arith.cmpi ne, %extracted, %c-14039_i16 : i16
        %collapsed = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<10x2x10xi16> into tensor<20x10xi16>
        %289 = arith.cmpi ule, %c1721459475_i32, %c1721459475_i32 : i32
        %inserted_40 = tensor.insert %274 into %15[%c0] : tensor<2xf16>
        %290 = math.log1p %cst_6 : f32
        %rank = tensor.rank %13 : tensor<2xi64>
        %291 = tensor.empty() : tensor<2xi16>
        %292 = vector.broadcast %true : i1 to vector<2xi1>
        %293 = vector.broadcast %c1721459475_i32 : i32 to vector<2xi32>
        %294 = vector.gather %291[%c12] [%293], %292, %65 : tensor<2xi16>, vector<2xi32>, vector<2xi1>, vector<2xi16> into vector<2xi16>
        %295 = arith.andi %true, %false : i1
        %296 = bufferization.to_memref %17 : memref<10xf16>
        %alloc_41 = memref.alloc() : memref<10x2xi16>
        %297 = tensor.empty() : tensor<20x2xi16>
        %298 = linalg.matmul ins(%collapsed, %alloc_41 : tensor<20x10xi16>, memref<10x2xi16>) outs(%297 : tensor<20x2xi16>) -> tensor<20x2xi16>
        %299 = index.mul %c4, %c13
        %300 = math.expm1 %cst : f16
        %301 = math.exp %14 : tensor<10xf16>
        %302 = math.absf %14 : tensor<10xf16>
        scf.yield
      }
      default {
        %from_elements_40 = tensor.from_elements %cst_5, %cst_6, %cst_8, %cst_6, %cst_6, %cst_3, %cst_5, %cst_5, %cst_5, %cst_5 : tensor<10xf32>
        %287 = index.ceildivs %c13, %86
        %288 = arith.ceildivsi %c939322342_i64, %c939322342_i64 : i64
        %289 = bufferization.to_memref %12 : memref<2xf32>
        %290 = memref.realloc %alloc_11 : memref<10xf16> to memref<10xf16>
        %291 = tensor.empty() : tensor<2xi32>
        %292 = vector.broadcast %c1721459475_i32 : i32 to vector<10xi32>
        %293 = vector.broadcast %false_7 : i1 to vector<10xi1>
        %294 = vector.gather %291[%287] [%292], %293, %292 : tensor<2xi32>, vector<10xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %295 = arith.minsi %c727661701_i64, %c939322342_i64 : i64
        %296 = math.expm1 %274 : f16
        %297 = arith.remf %274, %cst_2 : f16
        %298 = arith.minf %cst_4, %cst_2 : f16
        %from_elements_41 = tensor.from_elements %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64 : tensor<10x2x10xi64>
        %299 = math.cos %cst_2 : f16
        %300 = memref.atomic_rmw minu %c939322342_i64, %92[%c3, %c1, %c9] : (i64, memref<10x2x10xi64>) -> i64
        %301 = index.floordivs %c2, %90
        %302 = index.ceildivs %c13, %67
        %303 = affine.min affine_map<(d0, d1) -> ((d1 floordiv 16) mod 8, (d1 floordiv 16) ceildiv 64, (d1 - 4) * 128, d1 floordiv 16)>(%c6, %c5)
      }
      %284 = math.sqrt %15 : tensor<2xf16>
      %285 = math.round %16 : tensor<10xf16>
      %286 = arith.mulf %cst_2, %274 : f16
      %alloc_39 = memref.alloc() : memref<2xf32>
      scf.yield %alloc_39 : memref<2xf32>
    }
    case 3 {
      %generated_39 = tensor.generate %c8 {
      ^bb0(%arg2: index):
        %splat_41 = tensor.splat %false : tensor<2xi1>
        %286 = arith.remf %cst, %cst : f16
        %287 = math.atan2 %12, %12 : tensor<2xf32>
        %288 = arith.shrsi %c-14039_i16, %extracted : i16
        tensor.yield %true : i1
      } : tensor<?xi1>
      %273 = arith.shrsi %c939322342_i64, %c939322342_i64 : i64
      %274 = math.expm1 %cst_4 : f16
      %275 = index.castu %c8 : index to i32
      %276 = arith.maxsi %true, %false_0 : i1
      %277 = vector.insert %extracted, %82 [0] : i16 into vector<15xi16>
      %278 = arith.cmpi ugt, %true, %true : i1
      %279 = math.powf %3, %3 : tensor<10x2x10xf32>
      memref.store %c1721459475_i32, %26[] : memref<i32>
      %280 = arith.shrui %false_1, %false_1 : i1
      %281 = math.ipowi %111, %111 : tensor<2xi64>
      %282 = math.cttz %7 : tensor<2xi1>
      %283 = arith.muli %c939322342_i64, %c939322342_i64 : i64
      memref.store %cst, %alloc_14[%c5, %c0, %c4] : memref<10x2x10xf16>
      %284 = vector.shuffle %95, %95 [0, 5, 6, 7, 8, 12, 19] : vector<10x2x10xi1>, vector<10x2x10xi1>
      %285 = tensor.empty(%c11) : tensor<?xi1>
      %alloc_40 = memref.alloc() : memref<2xf32>
      scf.yield %alloc_40 : memref<2xf32>
    }
    default {
      %273 = arith.remf %cst_5, %cst_5 : f32
      %274 = index.casts %27 : index to i32
      %275 = bufferization.to_tensor %alloc_21 : memref<2xf16>
      %collapsed = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<10x2x10xi16> into tensor<20x10xi16>
      %cst_39 = arith.constant 3.232000e+04 : f16
      %276 = vector.insertelement %extracted, %38[%c10 : index] : vector<6xi16>
      %277 = arith.muli %false_1, %false_1 : i1
      %278 = arith.divsi %false_0, %false : i1
      %alloc_40 = memref.alloc() : memref<2xi16>
      %279 = arith.remf %cst_4, %cst_2 : f16
      %280 = vector.shuffle %25, %52 [3, 4, 6, 9] : vector<10xi16>, vector<1xi16>
      %281 = memref.realloc %114 : memref<10xi32> to memref<10xi32>
      memref.alloca_scope  {
        %285 = math.absi %10 : tensor<10x2x10xi16>
        %286 = index.castu %c6 : index to i32
        %287 = index.floordivs %c13, %c11
        %288 = math.exp %cst : f16
        %289 = arith.minsi %c1721459475_i32, %c1721459475_i32 : i32
        %290 = index.floordivs %68, %287
        %291 = math.tanh %12 : tensor<2xf32>
        %292 = vector.broadcast %extracted : i16 to vector<1x1xi16>
        %293 = vector.outerproduct %83, %83, %292 {kind = #vector.kind<minui>} : vector<1xi16>, vector<1xi16>
        %294 = arith.mulf %cst_6, %cst_3 : f32
        %295 = math.absf %12 : tensor<2xf32>
        %296 = vector.create_mask %90 : vector<2xi1>
        %297 = vector.extract_strided_slice %82 {offsets = [10], sizes = [3], strides = [1]} : vector<15xi16> to vector<3xi16>
        %298 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 + 64)>(%c0, %c3, %c4, %86)
        %299 = vector.broadcast %cst_3 : f32 to vector<10x10xf32>
        %dest, %accumulated_value = vector.scan <add>, %97, %299 {inclusive = true, reduction_dim = 1 : i64} : vector<10x2x10xf32>, vector<10x10xf32>
        %alloc_42 = memref.alloc() : memref<10x2x10xf32>
        memref.tensor_store %3, %alloc_42 : memref<10x2x10xf32>
        %300 = index.add %c4, %290
        %301 = math.cos %12 : tensor<2xf32>
        %302 = arith.divui %false_7, %true : i1
        %303 = math.ctpop %46 : tensor<10x2x10xi64>
        %304 = vector.matrix_multiply %41, %297 {lhs_columns = 3 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<15xi16>, vector<3xi16>) -> vector<5xi16>
        %305 = math.log1p %5 : tensor<10xf32>
        %306 = bufferization.to_tensor %alloc_16 : memref<10x2x10xi16>
        %expanded = tensor.expand_shape %111 [[0, 1]] : tensor<2xi64> into tensor<2x1xi64>
        %307 = arith.addi %true, %false_1 : i1
        %308 = math.log2 %cst_3 : f32
        %309 = arith.remui %c-14039_i16, %extracted : i16
        %310 = memref.realloc %alloc_13 : memref<2xi64> to memref<4xi64>
        memref.copy %alloc_11, %alloc : memref<10xf16> to memref<10xf16>
        %311 = bufferization.to_tensor %alloc_10 : memref<10xi32>
        %312 = arith.remf %cst_5, %cst_3 : f32
        %313 = arith.maxf %cst_2, %cst : f16
        %314 = math.ceil %17 : tensor<10xf16>
      }
      %282 = index.maxs %62, %c1
      %283 = index.mul %93, %93
      %284 = vector.shuffle %65, %82 [1, 3, 7, 8, 11, 14, 16] : vector<2xi16>, vector<15xi16>
      %alloc_41 = memref.alloc() : memref<2xf32>
      scf.yield %alloc_41 : memref<2xf32>
    }
    %128 = arith.andi %c939322342_i64, %c727661701_i64 : i64
    %129 = math.fma %9, %17, %9 : tensor<10xf16>
    %130 = index.add %c8, %79
    %131 = math.expm1 %15 : tensor<2xf16>
    %132 = arith.remui %false, %false_7 : i1
    %133 = scf.if %false -> (memref<2xi16>) {
      %273 = arith.remsi %false_7, %false_1 : i1
      %274 = index.floordivs %c2, %27
      bufferization.dealloc_tensor %16 : tensor<10xf16>
      %275 = arith.remui %true, %false_7 : i1
      %276 = math.absi %c727661701_i64 : i64
      %277 = arith.shrsi %c-14039_i16, %c-14039_i16 : i16
      %278 = math.absf %cst : f16
      affine.for %arg2 = 0 to 46 {
      }
      scf.yield %alloc_17 : memref<2xi16>
    } else {
      %273 = arith.divui %extracted, %extracted : i16
      %274 = arith.divf %cst, %cst_4 : f16
      %275 = arith.andi %c1721459475_i32, %c1721459475_i32 : i32
      %276 = index.floordivs %c7, %101
      %277 = math.log %5 : tensor<10xf32>
      %c1_i64 = arith.constant 1 : i64
      %278 = vector.transfer_read %13[%c14], %c1_i64 : tensor<2xi64>, vector<i64>
      %279 = math.tanh %15 : tensor<2xf16>
      %280 = arith.divsi %extracted, %c-14039_i16 : i16
      scf.yield %alloc_15 : memref<2xi16>
    }
    %134 = arith.remui %extracted, %c-14039_i16 : i16
    %135 = index.casts %c7 : index to i32
    %136 = scf.while (%arg2 = %c1721459475_i32) : (i32) -> i32 {
      %273 = arith.maxsi %false_0, %false_0 : i1
      %274 = vector.shuffle %99, %83 [0, 1, 4, 5] : vector<6xi16>, vector<1xi16>
      %275 = vector.flat_transpose %65 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
      %276 = vector.broadcast %cst_4 : f16 to vector<10xf16>
      %277 = vector.broadcast %false_1 : i1 to vector<10xi1>
      %278 = vector.maskedload %alloc_14[%c3, %c0, %c1], %277, %276 : memref<10x2x10xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
      %279 = arith.remf %cst_4, %cst_4 : f16
      %280 = index.floordivs %c2, %c0
      %281 = tensor.empty(%62) : tensor<?xi32>
      %282 = arith.floordivsi %false_1, %false_1 : i1
      scf.condition(%false_7) %c1721459475_i32 : i32
    } do {
    ^bb0(%arg2: i32):
      %273 = affine.load %alloc_20[%c2] : memref<10xi64>
      %274 = bufferization.to_tensor %alloc_20 : memref<10xi64>
      %275 = vector.shuffle %52, %75 [0, 1, 4, 8, 9] : vector<1xi16>, vector<9xi16>
      %276 = math.expm1 %cst_8 : f32
      %277 = vector.flat_transpose %38 {columns = 2 : i32, rows = 3 : i32} : vector<6xi16> -> vector<6xi16>
      memref.tensor_store %19, %26 : memref<i32>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12 : tensor<2xf32>) outs(%3 : tensor<10x2x10xf32>) {
      ^bb0(%in: f32, %out: f32):
        %287 = arith.andi %273, %c727661701_i64 : i64
        %288 = index.casts %false_0 : i1 to index
        %289 = index.sub %c12, %c11
        %290 = arith.negf %cst_5 : f32
        %291 = vector.flat_transpose %41 {columns = 5 : i32, rows = 3 : i32} : vector<15xi16> -> vector<15xi16>
        %inserted_42 = tensor.insert %cst_2 into %9[%c7] : tensor<10xf16>
        %292 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 + 126, d0, d2 + d2 floordiv 16 + 4 + 128, 128)>(%130, %115, %c6, %62)
        %293 = arith.addi %false, %true : i1
        %294 = arith.remui %extracted, %extracted : i16
        %295 = arith.remf %cst_3, %cst_6 : f32
        %296 = arith.floordivsi %true, %true : i1
        %297 = arith.shrsi %273, %c727661701_i64 : i64
        %splat_43 = tensor.splat %cst_8 : tensor<10xf32>
        %298 = vector.broadcast %c939322342_i64 : i64 to vector<10xi64>
        %299 = vector.broadcast %false_0 : i1 to vector<10xi1>
        %300 = vector.maskedload %alloc_12[%c8, %c0, %c8], %299, %298 : memref<10x2x10xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
        %301 = bufferization.to_memref %12 : memref<2xf32>
        %302 = vector.broadcast %c8 : index to vector<4xindex>
        %303 = vector.broadcast %true : i1 to vector<4xi1>
        %304 = vector.broadcast %cst : f16 to vector<4xf16>
        vector.scatter %alloc_18[%c1, %c1, %c2] [%302], %303, %304 : memref<10x2x10xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        %305 = memref.realloc %alloc_23 : memref<10xi16> to memref<2xi16>
        memref.tensor_store %15, %alloc_21 : memref<2xf16>
        %306 = arith.remf %cst_5, %cst_8 : f32
        %307 = vector.broadcast %c12 : index to vector<10xindex>
        vector.scatter %alloc_17[%c1] [%307], %299, %25 : memref<2xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %308 = arith.remsi %false_7, %false : i1
        %309 = index.floordivs %c4, %62
        %310 = math.ipowi %extracted, %extracted : i16
        %311 = index.ceildivu %79, %79
        %312 = arith.maxsi %273, %c727661701_i64 : i64
        %cast_44 = tensor.cast %274 : tensor<10xi64> to tensor<?xi64>
        %313 = vector.insert %c-14039_i16, %291 [6] : i16 into vector<15xi16>
        %314 = arith.addi %c1721459475_i32, %arg2 : i32
        %315 = bufferization.clone %alloc_12 : memref<10x2x10xi64> to memref<10x2x10xi64>
        memref.assume_alignment %alloc_18, 2 : memref<10x2x10xf16>
        %316 = arith.minsi %c1721459475_i32, %arg2 : i32
        %317 = index.floordivs %40, %86
        linalg.yield %cst_6 : f32
      } -> tensor<10x2x10xf32>
      %279 = math.rsqrt %5 : tensor<10xf32>
      %280 = vector.matrix_multiply %277, %82 {lhs_columns = 3 : i32, lhs_rows = 2 : i32, rhs_columns = 5 : i32} : (vector<6xi16>, vector<15xi16>) -> vector<10xi16>
      %true_39 = arith.constant true
      %false_40 = arith.constant false
      %281 = vector.transfer_read %0[%c1], %false_40 : tensor<2xi1>, vector<i1>
      %282 = arith.divsi %c-14039_i16, %c-14039_i16 : i16
      %283 = vector.create_mask %c2 : vector<2xi1>
      %284 = index.ceildivs %c0, %68
      %285 = arith.andi %273, %c727661701_i64 : i64
      %286 = tensor.empty() : tensor<10x2x10xi16>
      %mapped_41 = linalg.map ins(%8 : tensor<10x2x10xi16>) outs(%286 : tensor<10x2x10xi16>)
        (%in: i16) {
          %287 = arith.divui %true, %true : i1
          %288 = arith.shrsi %in, %in : i16
          %289 = arith.remui %false_1, %false : i1
          %290 = vector.flat_transpose %47 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
          bufferization.dealloc_tensor %splat : tensor<10xf32>
          %291 = arith.addi %true_39, %false_0 : i1
          %292 = index.divs %c4, %c3
          %293 = math.cttz %19 : tensor<i32>
          %294 = vector.broadcast %cst_8 : f32 to vector<2x10xf32>
          %dest, %accumulated_value = vector.scan <mul>, %94, %294 {inclusive = false, reduction_dim = 0 : i64} : vector<10x2x10xf32>, vector<2x10xf32>
          %295 = index.mul %68, %c9
          %296 = arith.ceildivsi %c-14039_i16, %in : i16
          %297 = arith.shrui %true, %false_7 : i1
          %298 = bufferization.to_tensor %114 : memref<10xi32>
          %from_elements_42 = tensor.from_elements %c727661701_i64, %c939322342_i64 : tensor<2xi64>
          %299 = arith.shrsi %false_0, %false_7 : i1
          %300 = arith.minf %cst_5, %cst_8 : f32
          %301 = math.rsqrt %3 : tensor<10x2x10xf32>
          bufferization.dealloc_tensor %16 : tensor<10xf16>
          %302 = arith.mulf %cst, %cst : f16
          %303 = index.maxs %67, %62
          memref.assume_alignment %alloc_12, 16 : memref<10x2x10xi64>
          %304 = math.cttz %11 : tensor<10xi32>
          %305 = arith.maxsi %c727661701_i64, %273 : i64
          %306 = arith.maxf %cst_4, %cst : f16
          %307 = index.casts %extracted : i16 to index
          %308 = vector.shuffle %52, %41 [4, 6, 9, 11, 12, 13, 14, 15] : vector<1xi16>, vector<15xi16>
          %309 = vector.broadcast %arg2 : i32 to vector<10xi32>
          %310 = vector.broadcast %false_7 : i1 to vector<10xi1>
          %311 = vector.gather %alloc_22[%130] [%309], %310, %309 : memref<2xi32>, vector<10xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
          %312 = arith.remsi %arg2, %c1721459475_i32 : i32
          %313 = index.ceildivu %c14, %67
          %314 = index.casts %in : i16 to index
          %315 = math.cos %12 : tensor<2xf32>
          %316 = arith.andi %false_1, %false_1 : i1
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %collapsed = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<10x2x10xi16> into tensor<20x10xi16>
      scf.yield %c1721459475_i32 : i32
    }
    %137 = arith.muli %true, %true : i1
    %138 = math.fma %16, %14, %14 : tensor<10xf16>
    %139 = vector.extract_strided_slice %94 {offsets = [8], sizes = [2], strides = [1]} : vector<10x2x10xf32> to vector<2x2x10xf32>
    %140 = arith.cmpi ult, %false_0, %false_1 : i1
    %141 = tensor.empty() : tensor<2xi32>
    %142 = math.fpowi %15, %141 : tensor<2xf16>, tensor<2xi32>
    %143 = index.mul %c2, %c10
    %inserted_31 = tensor.insert %true into %1[%c2, %c1, %c8] : tensor<10x2x10xi1>
    %144 = vector.broadcast %cst_2 : f16 to vector<10xf16>
    %145 = vector.broadcast %false_7 : i1 to vector<10xi1>
    %146 = vector.broadcast %c1721459475_i32 : i32 to vector<10xi32>
    %147 = vector.gather %14[%67] [%146], %145, %144 : tensor<10xf16>, vector<10xi32>, vector<10xi1>, vector<10xf16> into vector<10xf16>
    %cast_32 = tensor.cast %6 : tensor<10x2x10xi64> to tensor<?x?x?xi64>
    %148 = math.log2 %5 : tensor<10xf32>
    %149 = bufferization.to_memref %7 : memref<2xi1>
    %150 = bufferization.to_tensor %alloc_21 : memref<2xf16>
    %151 = arith.shli %false, %false_0 : i1
    %152 = affine.apply affine_map<(d0) -> ((d0 + d0 floordiv 2) floordiv 64)>(%86)
    %153 = index.mul %c1, %40
    %154 = arith.remf %cst_4, %cst_4 : f16
    %155 = math.log2 %3 : tensor<10x2x10xf32>
    memref.tensor_store %10, %alloc_16 : memref<10x2x10xi16>
    %156 = arith.addf %cst, %cst_2 : f16
    %157 = arith.andi %false_7, %false_7 : i1
    %158 = arith.maxui %extracted, %c-14039_i16 : i16
    %159 = index.maxs %62, %126
    %160 = affine.load %114[%c10] : memref<10xi32>
    %cast_33 = tensor.cast %0 : tensor<2xi1> to tensor<?xi1>
    %161 = vector.splat %cst : vector<10x2x10xf16>
    %162 = math.tanh %cst_6 : f32
    %163 = vector.create_mask %130 : vector<10xi1>
    %164 = math.powf %splat, %5 : tensor<10xf32>
    %165 = math.fma %cst, %cst_2, %cst_4 : f16
    %166 = index.ceildivu %62, %86
    %167 = bufferization.to_tensor %alloc_24 : memref<2xi64>
    %168 = index.divs %c9, %c13
    %169 = math.log10 %3 : tensor<10x2x10xf32>
    %170 = arith.shrsi %extracted, %c-14039_i16 : i16
    %171 = math.cos %150 : tensor<2xf16>
    %172 = math.round %cst_8 : f32
    %173 = arith.divsi %c-14039_i16, %extracted : i16
    %174 = math.sqrt %5 : tensor<10xf32>
    %175 = index.maxs %c7, %62
    %176 = vector.shuffle %47, %47 [1, 7, 8, 10, 12, 15, 16, 19] : vector<10xf32>, vector<10xf32>
    scf.index_switch %67 
    case 1 {
      %273 = tensor.empty() : tensor<2xi64>
      %274 = arith.remf %cst_6, %cst_3 : f32
      %275 = math.log1p %splat : tensor<10xf32>
      %276 = arith.maxf %cst_5, %cst_5 : f32
      %inserted_39 = tensor.insert %c939322342_i64 into %46[%c2, %c1, %c5] : tensor<10x2x10xi64>
      %277 = vector.matrix_multiply %75, %38 {lhs_columns = 3 : i32, lhs_rows = 3 : i32, rhs_columns = 2 : i32} : (vector<9xi16>, vector<6xi16>) -> vector<6xi16>
      %278 = math.exp2 %cst_4 : f16
      %alloca_40 = memref.alloca() : memref<10xf32>
      %279 = math.atan2 %cst_2, %cst : f16
      %280 = memref.atomic_rmw addi %c727661701_i64, %alloc_13[%c1] : (i64, memref<2xi64>) -> i64
      %281 = arith.shrsi %c727661701_i64, %c727661701_i64 : i64
      %282 = arith.remf %cst_3, %cst_6 : f32
      %283 = vector.insertelement %extracted, %38[%115 : index] : vector<6xi16>
      %284 = memref.alloca_scope  -> (memref<10xi16>) {
        %286 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %18, %18, %c1721459475_i32 : vector<4xi32>, vector<4xi32> into i32
        %extracted_42 = tensor.extract %2[%c1] : tensor<2xf16>
        %287 = arith.maxf %cst_8, %cst_3 : f32
        %288 = arith.cmpf ugt, %cst, %cst_4 : f16
        %289 = math.ceil %17 : tensor<10xf16>
        %290 = arith.remui %true, %false : i1
        %291 = math.fma %3, %3, %3 : tensor<10x2x10xf32>
        %292 = math.ipowi %167, %111 : tensor<2xi64>
        %293 = vector.broadcast %false_7 : i1 to vector<2x10xi1>
        %dest, %accumulated_value = vector.scan <minui>, %95, %293 {inclusive = false, reduction_dim = 0 : i64} : vector<10x2x10xi1>, vector<2x10xi1>
        %294 = arith.cmpi ult, %c-14039_i16, %extracted : i16
        %295 = index.mul %175, %168
        %296 = memref.atomic_rmw andi %c-14039_i16, %alloc_16[%c5, %c0, %c7] : (i16, memref<10x2x10xi16>) -> i16
        %297 = arith.cmpi slt, %160, %c1721459475_i32 : i32
        %298 = bufferization.to_memref %15 : memref<2xf16>
        %299 = arith.muli %false_1, %false_7 : i1
        %300 = vector.extract %97[9] : vector<10x2x10xf32>
        %301 = index.mul %c14, %c1
        %302 = math.expm1 %splat : tensor<10xf32>
        %303 = index.floordivs %c9, %62
        %304 = index.divu %40, %c3
        %305 = arith.maxui %extracted, %extracted : i16
        %306 = vector.insertelement %c-14039_i16, %82[%93 : index] : vector<15xi16>
        memref.tensor_store %13, %alloc_24 : memref<2xi64>
        %307 = index.ceildivs %c4, %c13
        %308 = index.ceildivs %c12, %168
        %309 = vector.splat %cst_5 : vector<10x2x10xf32>
        %310 = arith.addf %cst_6, %cst_3 : f32
        %311 = math.log1p %5 : tensor<10xf32>
        %inserted_43 = tensor.insert %cst_4 into %9[%c6] : tensor<10xf16>
        %312 = math.ctlz %6 : tensor<10x2x10xi64>
        %313 = tensor.empty() : tensor<2xi64>
        %314 = arith.xori %c-14039_i16, %c-14039_i16 : i16
        memref.alloca_scope.return %alloc_19 : memref<10xi16>
      }
      %from_elements_41 = tensor.from_elements %cst_4, %cst_4, %cst, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst, %cst_4, %cst, %cst_4, %cst, %cst_4, %cst, %cst_2, %cst_4, %cst, %cst, %cst, %cst, %cst, %cst, %cst_2, %cst_2, %cst, %cst_4, %cst_4, %cst_2, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst, %cst_2, %cst_4, %cst, %cst_2, %cst, %cst_4, %cst_2, %cst, %cst_4, %cst, %cst_2, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_2, %cst_2, %cst, %cst, %cst_4, %cst, %cst_2, %cst_4, %cst, %cst_4, %cst_4, %cst, %cst_4, %cst_4, %cst_4, %cst, %cst_2, %cst_2, %cst_4, %cst_2, %cst, %cst, %cst, %cst_2, %cst, %cst_4, %cst_4, %cst, %cst_2, %cst, %cst_4, %cst_2, %cst, %cst, %cst, %cst, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst, %cst, %cst, %cst, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_2, %cst, %cst, %cst_2, %cst, %cst_4, %cst_2, %cst, %cst_4, %cst_2, %cst_2, %cst, %cst_2, %cst, %cst_4, %cst, %cst, %cst_4, %cst_2, %cst, %cst, %cst_4, %cst, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst, %cst_2, %cst_2, %cst_4, %cst_4, %cst, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst, %cst, %cst_2, %cst_4, %cst_2, %cst_4, %cst, %cst, %cst, %cst_4, %cst, %cst, %cst_4, %cst, %cst, %cst_4, %cst, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst, %cst, %cst_4, %cst_4, %cst, %cst_2, %cst_4, %cst, %cst_2, %cst, %cst_4, %cst, %cst_2, %cst_2, %cst_4 : tensor<10x2x10xf16>
      %285 = affine.load %alloc[%c1] : memref<10xf16>
      scf.yield
    }
    default {
      %273 = arith.divui %c-14039_i16, %extracted : i16
      %274 = index.floordivs %62, %101
      %275 = math.cttz %13 : tensor<2xi64>
      scf.index_switch %c2 
      case 1 {
        %287 = vector.extract %145[6] : vector<10xi1>
        %288 = math.cos %12 : tensor<2xf32>
        %289 = index.ceildivu %159, %c10
        %290 = math.cos %5 : tensor<10xf32>
        %291 = index.mul %c7, %c5
        %292 = math.ctlz %7 : tensor<2xi1>
        %293 = math.log2 %14 : tensor<10xf16>
        %cast_40 = tensor.cast %150 : tensor<2xf16> to tensor<?xf16>
        %294 = math.absi %111 : tensor<2xi64>
        %295 = arith.addi %160, %160 : i32
        %296 = math.sqrt %2 : tensor<2xf16>
        %297 = math.powf %15, %15 : tensor<2xf16>
        %298 = index.castu %c-14039_i16 : i16 to index
        %collapsed = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<10x2x10xi64> into tensor<20x10xi64>
        %299 = arith.addi %false, %false_0 : i1
        %300 = arith.maxf %cst_3, %cst_6 : f32
        scf.yield
      }
      default {
        %287 = math.expm1 %15 : tensor<2xf16>
        %288 = index.add %c15, %62
        bufferization.dealloc_tensor %cast_32 : tensor<?x?x?xi64>
        %289 = index.sub %c2, %67
        %290 = index.casts %c9 : index to i32
        %291 = vector.gather %splat[%90] [%146], %163, %47 : tensor<10xf32>, vector<10xi32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
        %292 = math.absf %16 : tensor<10xf16>
        %293 = math.log2 %15 : tensor<2xf16>
        %294 = arith.mulf %cst_5, %cst_3 : f32
        %295 = index.sizeof
        %296 = math.ctpop %19 : tensor<i32>
        %297 = arith.addf %cst_2, %cst_2 : f16
        %298 = arith.addi %160, %c1721459475_i32 : i32
        %299 = arith.divsi %false_1, %true : i1
        %300 = math.ctpop %0 : tensor<2xi1>
        %301 = math.atan2 %12, %12 : tensor<2xf32>
      }
      %276 = arith.maxui %160, %160 : i32
      %277 = index.floordivs %c13, %115
      %278 = vector.shuffle %18, %146 [1, 2, 4, 5, 6, 8, 13] : vector<4xi32>, vector<10xi32>
      %279 = vector.broadcast %true : i1 to vector<10xi1>
      %280 = arith.addf %cst_4, %cst : f16
      %281 = index.add %153, %93
      %282 = math.sqrt %3 : tensor<10x2x10xf32>
      %283 = arith.addi %c727661701_i64, %c939322342_i64 : i64
      %284 = arith.maxui %false, %false_0 : i1
      %inserted_39 = tensor.insert %cst_4 into %9[%c7] : tensor<10xf16>
      %285 = math.log2 %9 : tensor<10xf16>
      %286 = vector.transpose %99, [0] : vector<6xi16> to vector<6xi16>
    }
    %177 = math.ctpop %20 : tensor<i32>
    %178 = affine.apply affine_map<(d0) -> ((d0 + d0 floordiv 2) floordiv 64)>(%79)
    %cast_34 = tensor.cast %12 : tensor<2xf32> to tensor<?xf32>
    %179 = arith.divsi %c-14039_i16, %c-14039_i16 : i16
    %180 = index.castu %c9 : index to i32
    %181 = index.maxs %c13, %90
    %182 = arith.remui %false_7, %false_0 : i1
    %183 = index.divs %c4, %168
    %184 = index.casts %false_0 : i1 to index
    %185 = bufferization.to_memref %13 : memref<2xi64>
    %186 = math.log1p %cst_5 : f32
    %187 = index.add %40, %126
    %188 = arith.mulf %cst_5, %cst_6 : f32
    %189 = arith.divsi %c939322342_i64, %c727661701_i64 : i64
    %190 = arith.cmpi uge, %160, %c1721459475_i32 : i32
    %191 = arith.divui %false_1, %false_0 : i1
    %192 = arith.shrui %c1721459475_i32, %160 : i32
    %193 = arith.remf %cst_4, %cst : f16
    %194 = vector.extract_strided_slice %41 {offsets = [11], sizes = [4], strides = [1]} : vector<15xi16> to vector<4xi16>
    %195 = math.exp %2 : tensor<2xf16>
    %196 = math.fpowi %17, %11 : tensor<10xf16>, tensor<10xi32>
    %generated = tensor.generate %68 {
    ^bb0(%arg2: index):
      %273 = vector.broadcast %93 : index to vector<10xindex>
      %274 = vector.broadcast %c939322342_i64 : i64 to vector<10xi64>
      vector.scatter %185[%c1] [%273], %163, %274 : memref<2xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
      %from_elements_39 = tensor.from_elements %c939322342_i64, %c727661701_i64 : tensor<2xi64>
      %275 = affine.load %alloc_23[%c4] : memref<10xi16>
      %276 = arith.minsi %c727661701_i64, %c727661701_i64 : i64
      tensor.yield %275 : i16
    } : tensor<?xi16>
    %197 = math.ipowi %c-14039_i16, %c-14039_i16 : i16
    %198 = scf.while (%arg2 = %extracted) : (i16) -> i16 {
      %273 = arith.maxf %cst_6, %cst_6 : f32
      %274 = math.ipowi %false_0, %false_0 : i1
      %275 = math.expm1 %150 : tensor<2xf16>
      %inserted_39 = tensor.insert %cst_2 into %15[%c1] : tensor<2xf16>
      %276 = arith.shrsi %c1721459475_i32, %160 : i32
      %from_elements_40 = tensor.from_elements %c939322342_i64, %c939322342_i64 : tensor<2xi64>
      %277 = vector.flat_transpose %65 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
      %278 = index.castu %c727661701_i64 : i64 to index
      scf.condition(%true) %extracted : i16
    } do {
    ^bb0(%arg2: i16):
      %273 = affine.load %alloc_18[%c9, %c5, %c3] : memref<10x2x10xf16>
      vector.print %96 : vector<10x2x10xi32>
      %274 = vector.extract %41[0] : vector<15xi16>
      %275 = arith.divf %cst_4, %273 : f16
      %276 = index.casts %c1721459475_i32 : i32 to index
      affine.store %c727661701_i64, %alloc_20[%c2] : memref<10xi64>
      %277 = bufferization.clone %92 : memref<10x2x10xi64> to memref<10x2x10xi64>
      %278 = arith.remf %cst, %cst_2 : f16
      %279 = arith.mulf %cst_3, %cst_8 : f32
      %280 = arith.shrsi %c939322342_i64, %c939322342_i64 : i64
      %281 = math.log1p %15 : tensor<2xf16>
      %282 = vector.matrix_multiply %52, %25 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xi16>, vector<10xi16>) -> vector<10xi16>
      %283 = memref.atomic_rmw minu %160, %114[%c6] : (i32, memref<10xi32>) -> i32
      %284 = arith.muli %false_7, %false_0 : i1
      %285 = index.sub %181, %c10
      %286 = vector.gather %from_elements[%168] [%146], %163, %25 : tensor<10xi16>, vector<10xi32>, vector<10xi1>, vector<10xi16> into vector<10xi16>
      scf.yield %c-14039_i16 : i16
    }
    %199 = arith.cmpi sle, %true, %false : i1
    %200 = bufferization.clone %alloc_18 : memref<10x2x10xf16> to memref<10x2x10xf16>
    %201 = arith.remf %cst_2, %cst_2 : f16
    %202 = math.log2 %15 : tensor<2xf16>
    %203 = math.cos %9 : tensor<10xf16>
    %204 = math.powf %15, %150 : tensor<2xf16>
    %205 = arith.divui %c-14039_i16, %extracted : i16
    %206 = index.divu %79, %152
    memref.alloca_scope  {
      %273 = arith.divui %true, %false : i1
      %274 = math.cttz %false_0 : i1
      %from_elements_39 = tensor.from_elements %c939322342_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c727661701_i64, %c727661701_i64, %c939322342_i64, %c939322342_i64, %c939322342_i64, %c727661701_i64 : tensor<10xi64>
      %275 = vector.extract %75[4] : vector<9xi16>
      %276 = math.ipowi %0, %7 : tensor<2xi1>
      %277 = vector.flat_transpose %99 {columns = 2 : i32, rows = 3 : i32} : vector<6xi16> -> vector<6xi16>
      %278 = arith.divf %cst_2, %cst_2 : f16
      %279 = arith.divf %cst_3, %cst_6 : f32
      %280 = arith.remf %cst_3, %cst_8 : f32
      %281 = memref.realloc %133 : memref<2xi16> to memref<2xi16>
      %282 = arith.maxui %c1721459475_i32, %c1721459475_i32 : i32
      %283 = arith.ceildivsi %c727661701_i64, %c939322342_i64 : i64
      %284 = arith.addi %160, %160 : i32
      %285 = arith.xori %false_1, %false_7 : i1
      %286 = math.exp2 %cst_6 : f32
      %287 = scf.execute_region -> tensor<2xi16> {
        %304 = math.ipowi %11, %11 : tensor<10xi32>
        %305 = math.powf %3, %3 : tensor<10x2x10xf32>
        %306 = arith.maxsi %c939322342_i64, %c939322342_i64 : i64
        %307 = math.powf %14, %9 : tensor<10xf16>
        %308 = vector.extract %163[4] : vector<10xi1>
        %309 = vector.extract %163[1] : vector<10xi1>
        %310 = arith.remf %cst_4, %cst_4 : f16
        %311 = bufferization.to_memref %14 : memref<10xf16>
        %312 = vector.matrix_multiply %99, %82 {lhs_columns = 3 : i32, lhs_rows = 2 : i32, rhs_columns = 5 : i32} : (vector<6xi16>, vector<15xi16>) -> vector<10xi16>
        %313 = math.cos %2 : tensor<2xf16>
        %314 = arith.maxui %false_0, %false_7 : i1
        %315 = memref.realloc %alloc_17 : memref<2xi16> to memref<10xi16>
        %316 = arith.minsi %c1721459475_i32, %c1721459475_i32 : i32
        %317 = vector.shuffle %95, %95 [0, 3, 4, 5, 6, 8, 10, 11, 12, 13, 16, 18, 19] : vector<10x2x10xi1>, vector<10x2x10xi1>
        %318 = vector.insertelement %false_1, %145[%c11 : index] : vector<10xi1>
        %319 = vector.broadcast %extracted : i16 to vector<10x2x10xi16>
        %320 = vector.gather %alloc_19[%c10] [%96], %95, %319 : memref<10xi16>, vector<10x2x10xi32>, vector<10x2x10xi1>, vector<10x2x10xi16> into vector<10x2x10xi16>
        %321 = tensor.empty() : tensor<2xi16>
        scf.yield %321 : tensor<2xi16>
      }
      %288 = tensor.empty() : tensor<10xf16>
      %289 = tensor.empty() : tensor<10x2x10xi1>
      %mapped_40 = linalg.map ins(%1, %1 : tensor<10x2x10xi1>, tensor<10x2x10xi1>) outs(%289 : tensor<10x2x10xi1>)
        (%in: i1, %in_41: i1) {
          %304 = memref.realloc %alloc_26 : memref<10xi32> to memref<10xi32>
          %305 = math.rsqrt %17 : tensor<10xf16>
          %306 = math.ctpop %289 : tensor<10x2x10xi1>
          %307 = math.expm1 %cst_3 : f32
          %308 = vector.flat_transpose %41 {columns = 5 : i32, rows = 3 : i32} : vector<15xi16> -> vector<15xi16>
          %309 = math.round %3 : tensor<10x2x10xf32>
          %310 = vector.create_mask %184 : vector<10xi1>
          %311 = math.ceil %cst_5 : f32
          %312 = arith.andi %false_1, %true : i1
          %313 = arith.maxui %false_1, %in_41 : i1
          %314 = vector.flat_transpose %65 {columns = 1 : i32, rows = 2 : i32} : vector<2xi16> -> vector<2xi16>
          %315 = vector.load %alloc_18[%c2, %c0, %c9] : memref<10x2x10xf16>, vector<2xf16>
          %316 = arith.negf %cst_5 : f32
          %317 = index.casts %184 : index to i32
          %318 = vector.shuffle %25, %75 [2, 3, 4, 5, 6, 7, 8, 11, 17, 18] : vector<10xi16>, vector<9xi16>
          %319 = index.ceildivu %62, %168
          %320 = bufferization.to_memref %15 : memref<2xf16>
          %321 = math.tan %9 : tensor<10xf16>
          %322 = arith.maxsi %true, %true : i1
          %323 = arith.maxsi %c727661701_i64, %c727661701_i64 : i64
          %324 = vector.broadcast %false_0 : i1 to vector<2x10xi1>
          %dest, %accumulated_value = vector.scan <minui>, %95, %324 {inclusive = true, reduction_dim = 0 : i64} : vector<10x2x10xi1>, vector<2x10xi1>
          %325 = arith.shrsi %false_0, %in : i1
          %326 = affine.apply affine_map<(d0) -> (-16)>(%c6)
          %327 = math.log2 %splat : tensor<10xf32>
          memref.store %cst_4, %200[%c7, %c0, %c8] : memref<10x2x10xf16>
          %from_elements_42 = tensor.from_elements %in_41, %false_1, %false, %false_0, %in, %false_7, %true, %false_1, %false, %in : tensor<10xi1>
          %328 = arith.remsi %false_7, %in : i1
          %329 = index.casts %159 : index to i32
          %330 = math.log2 %cst : f16
          %331 = arith.addf %cst, %cst_4 : f16
          %332 = math.ctlz %289 : tensor<10x2x10xi1>
          %333 = arith.cmpi slt, %in_41, %false : i1
          %false_43 = arith.constant false
          linalg.yield %false_43 : i1
        }
      %290 = arith.ceildivsi %extracted, %c-14039_i16 : i16
      %291 = index.ceildivs %79, %175
      %292 = index.mul %183, %166
      %293 = affine.min affine_map<(d0, d1, d2) -> (0, d1 + (d0 floordiv 2) floordiv 128 + 32, (d0 floordiv 2) floordiv 128)>(%c15, %168, %86)
      %294 = index.floordivs %175, %86
      %295 = vector.create_mask %166 : vector<10xi1>
      %296 = arith.shrui %extracted, %c-14039_i16 : i16
      %297 = vector.matrix_multiply %25, %25 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi16>, vector<10xi16>) -> vector<1xi16>
      %298 = arith.muli %false_7, %true : i1
      %299 = index.maxs %183, %166
      %300 = bufferization.to_memref %6 : memref<10x2x10xi64>
      %301 = math.fma %2, %15, %150 : tensor<2xf16>
      %302 = arith.addi %c-14039_i16, %c-14039_i16 : i16
      %303 = arith.addi %c727661701_i64, %c939322342_i64 : i64
    }
    %207 = math.exp2 %cst_8 : f32
    %208 = vector.shuffle %41, %75 [4, 6, 8, 12, 14, 18, 19, 23] : vector<15xi16>, vector<9xi16>
    %209 = math.sqrt %cst_5 : f32
    %210 = arith.remf %cst_5, %cst_6 : f32
    %211 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_23 : memref<10xi16>) outs(%8 : tensor<10x2x10xi16>) {
    ^bb0(%in: i16, %out: i16):
      %273 = bufferization.to_memref %8 : memref<10x2x10xi16>
      %274 = index.ceildivu %143, %c8
      %275 = arith.maxsi %c939322342_i64, %c939322342_i64 : i64
      %cst_39 = arith.constant 1.000000e+00 : f16
      %276 = vector.transfer_read %70[%40, %c11, %90], %cst_39 : memref<10x2x10xf16>, vector<f16>
      %277 = math.expm1 %12 : tensor<2xf32>
      %278 = math.ceil %12 : tensor<2xf32>
      %279 = math.copysign %5, %5 : tensor<10xf32>
      %280 = math.tanh %cst_2 : f16
      %281 = index.ceildivu %143, %101
      %282 = arith.minsi %extracted, %out : i16
      %extracted_40 = tensor.extract %11[%c5] : tensor<10xi32>
      affine.for %arg2 = 0 to 48 {
      }
      %283 = bufferization.clone %63 : memref<10xi64> to memref<10xi64>
      %284 = arith.shrsi %false_0, %false : i1
      bufferization.dealloc_tensor %9 : tensor<10xf16>
      %285 = tensor.empty() : tensor<10xf32>
      %286 = index.maxs %c10, %c3
      %287 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%42 : memref<2xi1>) outs(%1 : tensor<10x2x10xi1>) {
      ^bb0(%in_41: i1, %out_42: i1):
        %301 = vector.flat_transpose %83 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %302 = arith.muli %c939322342_i64, %c939322342_i64 : i64
        %303 = tensor.empty() : tensor<2xi16>
        %304 = vector.broadcast %extracted : i16 to vector<10x2x10xi16>
        %305 = vector.gather %303[%187] [%96], %95, %304 : tensor<2xi16>, vector<10x2x10xi32>, vector<10x2x10xi1>, vector<10x2x10xi16> into vector<10x2x10xi16>
        %306 = bufferization.to_tensor %alloc_20 : memref<10xi64>
        %307 = arith.divf %cst_3, %cst_8 : f32
        %308 = tensor.empty() : tensor<10xi1>
        %309 = index.sizeof
        %310 = index.ceildivs %183, %166
        %311 = math.tanh %2 : tensor<2xf16>
        %312 = index.ceildivs %40, %c6
        %313 = arith.remui %extracted, %out : i16
        %314 = vector.matrix_multiply %75, %301 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 1 : i32} : (vector<9xi16>, vector<1xi16>) -> vector<9xi16>
        %315 = arith.remui %in, %extracted : i16
        %316 = arith.mulf %cst_4, %cst : f16
        %317 = math.copysign %150, %15 : tensor<2xf16>
        %318 = vector.extract_strided_slice %304 {offsets = [3], sizes = [5], strides = [1]} : vector<10x2x10xi16> to vector<5x2x10xi16>
        %319 = bufferization.clone %alloc_13 : memref<2xi64> to memref<2xi64>
        %320 = index.castu %206 : index to i32
        %321 = math.fma %17, %16, %14 : tensor<10xf16>
        %322 = math.ctpop %out : i16
        %323 = vector.shuffle %146, %146 [1, 3, 4, 7, 8, 10, 12, 13, 14, 17, 19] : vector<10xi32>, vector<10xi32>
        %324 = math.exp %9 : tensor<10xf16>
        %325 = arith.andi %c-14039_i16, %in : i16
        %326 = math.log2 %cst_5 : f32
        %327 = vector.create_mask %126 : vector<10xi1>
        %328 = vector.transpose %38, [0] : vector<6xi16> to vector<6xi16>
        %splat_43 = tensor.splat %cst_3 : tensor<10xf32>
        %329 = vector.flat_transpose %99 {columns = 2 : i32, rows = 3 : i32} : vector<6xi16> -> vector<6xi16>
        %330 = index.mul %c5, %68
        %331 = arith.floordivsi %in_41, %false_1 : i1
        %332 = vector.transpose %305, [1, 0, 2] : vector<10x2x10xi16> to vector<2x10x10xi16>
        %333 = math.powf %3, %3 : tensor<10x2x10xf32>
        linalg.yield %out_42 : i1
      } -> tensor<10x2x10xi1>
      %288 = arith.addi %c-14039_i16, %out : i16
      scf.index_switch %93 
      case 1 {
        %301 = vector.flat_transpose %147 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
        %302 = vector.reduction <or>, %146 : vector<10xi32> into i32
        %303 = math.powf %5, %splat : tensor<10xf32>
        %304 = bufferization.clone %63 : memref<10xi64> to memref<10xi64>
        %305 = arith.addi %in, %c-14039_i16 : i16
        %306 = index.ceildivu %90, %c8
        %307 = arith.divui %extracted, %extracted : i16
        %308 = math.ipowi %extracted_40, %extracted_40 : i32
        %309 = arith.mulf %cst_3, %cst_8 : f32
        %310 = math.log %16 : tensor<10xf16>
        %311 = index.mul %c6, %178
        %312 = math.log1p %cst_8 : f32
        %313 = affine.min affine_map<(d0) -> ((-d0) ceildiv 128 - 64)>(%27)
        bufferization.dealloc_tensor %17 : tensor<10xf16>
        %from_elements_41 = tensor.from_elements %cst_5, %cst_8, %cst_5, %cst_6, %cst_8, %cst_3, %cst_6, %cst_5, %cst_5, %cst_5 : tensor<10xf32>
        %314 = arith.remsi %false_7, %false : i1
        scf.yield
      }
      case 2 {
        %301 = math.round %14 : tensor<10xf16>
        %302 = math.ceil %3 : tensor<10x2x10xf32>
        %303 = vector.extract_strided_slice %38 {offsets = [0], sizes = [1], strides = [1]} : vector<6xi16> to vector<1xi16>
        %304 = math.ipowi %0, %0 : tensor<2xi1>
        %c1_i16 = arith.constant 1 : i16
        %305 = vector.transfer_read %alloc_19[%c8], %c1_i16 : memref<10xi16>, vector<i16>
        %306 = math.rsqrt %cst_4 : f16
        %307 = index.add %168, %c10
        %308 = bufferization.to_tensor %114 : memref<10xi32>
        %309 = vector.transpose %163, [0] : vector<10xi1> to vector<10xi1>
        %c2113413710_i32 = arith.constant 2113413710 : i32
        %310 = vector.flat_transpose %144 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
        %311 = bufferization.to_tensor %70 : memref<10x2x10xf16>
        %312 = math.ipowi %111, %13 : tensor<2xi64>
        %313 = arith.cmpi slt, %false, %false_1 : i1
        %314 = vector.broadcast %false_7 : i1 to vector<2xi1>
        %315 = vector.broadcast %160 : i32 to vector<2xi32>
        %316 = vector.gather %alloc_15[%c11] [%315], %314, %65 : memref<2xi16>, vector<2xi32>, vector<2xi1>, vector<2xi16> into vector<2xi16>
        %317 = math.exp2 %15 : tensor<2xf16>
        scf.yield
      }
      case 3 {
        %301 = memref.realloc %alloc : memref<10xf16> to memref<2xf16>
        %302 = math.log %2 : tensor<2xf16>
        %303 = math.copysign %5, %5 : tensor<10xf32>
        %304 = arith.remf %cst, %cst_39 : f16
        %305 = memref.atomic_rmw andi %160, %114[%c9] : (i32, memref<10xi32>) -> i32
        %306 = arith.ceildivsi %true, %false_0 : i1
        %expanded = tensor.expand_shape %12 [[0, 1]] : tensor<2xf32> into tensor<2x1xf32>
        %307 = arith.floordivsi %extracted_40, %c1721459475_i32 : i32
        memref.tensor_store %13, %alloc_24 : memref<2xi64>
        %308 = arith.remf %cst_5, %cst_3 : f32
        %309 = math.expm1 %9 : tensor<10xf16>
        %310 = memref.realloc %alloc_10 : memref<10xi32> to memref<4xi32>
        %cast_41 = tensor.cast %10 : tensor<10x2x10xi16> to tensor<?x?x?xi16>
        %311 = index.divs %90, %79
        %312 = memref.atomic_rmw mins %out, %273[%c8, %c1, %c1] : (i16, memref<10x2x10xi16>) -> i16
        %313 = arith.andi %c727661701_i64, %c727661701_i64 : i64
        scf.yield
      }
      default {
        %301 = arith.cmpi ne, %c939322342_i64, %c939322342_i64 : i64
        %302 = math.log1p %15 : tensor<2xf16>
        %303 = math.absi %false : i1
        %c0_i64 = arith.constant 0 : i64
        %304 = vector.transfer_read %167[%274], %c0_i64 : tensor<2xi64>, vector<i64>
        %splat_41 = tensor.splat %c1721459475_i32 : tensor<2xi32>
        %305 = math.fma %15, %2, %15 : tensor<2xf16>
        %306 = math.expm1 %cst_6 : f32
        %307 = arith.remui %c939322342_i64, %c0_i64 : i64
        %308 = affine.max affine_map<(d0, d1, d2) -> (-d2, (((-d2) mod 64) ceildiv 128) ceildiv 16)>(%143, %c12, %c6)
        %309 = math.expm1 %cst_5 : f32
        %310 = vector.insertelement %cst_3, %47[%187 : index] : vector<10xf32>
        %311 = math.powf %15, %2 : tensor<2xf16>
        %cast_42 = tensor.cast %4 : tensor<10xi1> to tensor<?xi1>
        %312 = math.absf %cst_39 : f16
        %313 = math.ipowi %7, %0 : tensor<2xi1>
        %314 = index.divu %c11, %206
      }
      %289 = arith.cmpi sgt, %in, %out : i16
      %290 = index.casts %c13 : index to i32
      %291 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 + 64)>(%c5, %101, %101, %187)
      %292 = vector.flat_transpose %146 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
      %293 = affine.load %alloc_23[%c1] : memref<10xi16>
      %294 = scf.execute_region -> tensor<2xf32> {
        %301 = math.expm1 %5 : tensor<10xf32>
        %302 = math.atan2 %15, %15 : tensor<2xf16>
        %303 = index.castu %false_7 : i1 to index
        %304 = arith.maxui %extracted_40, %c1721459475_i32 : i32
        %305 = arith.cmpi sle, %c-14039_i16, %in : i16
        %306 = arith.divsi %extracted, %out : i16
        %307 = vector.extract_strided_slice %96 {offsets = [6], sizes = [1], strides = [1]} : vector<10x2x10xi32> to vector<1x2x10xi32>
        %308 = math.atan2 %12, %12 : tensor<2xf32>
        %from_elements_41 = tensor.from_elements %false_0, %true, %false_7, %false_7, %true, %false_0, %false_1, %false, %false, %true, %false_1, %false_1, %false_7, %false_1, %false_7, %false_7, %false_0, %false_0, %true, %false_7, %false_0, %false_0, %false_0, %true, %false_7, %false_1, %false_7, %false_7, %false, %false_7, %false_0, %false_0, %false_7, %false, %false_0, %false_1, %false_0, %true, %false, %false, %false, %false_7, %false_7, %false_7, %false_1, %false_0, %false_1, %false, %false, %true, %false_0, %false_7, %false, %false_7, %false_7, %false_0, %true, %false, %false_0, %false_0, %false_1, %false_1, %false_0, %false, %false_7, %false, %false_7, %false_1, %false_0, %false_0, %false_0, %false_1, %false_0, %false_0, %false_1, %true, %false, %true, %false_7, %false_0, %true, %false, %false_1, %false, %false, %false_7, %false_0, %false_1, %false_1, %false, %false, %true, %false_1, %false_1, %true, %false_7, %false_1, %false_7, %false, %false_0, %false_1, %false_7, %true, %false_0, %false_1, %true, %false_7, %false_1, %false, %false, %false_1, %true, %false_7, %false_0, %false_7, %false, %true, %false, %false_1, %true, %false_7, %false_1, %true, %false_1, %false_7, %true, %false, %false_7, %false, %false, %false, %false_1, %true, %false_1, %false, %false, %false_0, %false_1, %false, %true, %false_0, %true, %true, %false_0, %false_7, %false_7, %false_7, %false, %true, %false, %false_7, %true, %false_0, %false_0, %false_0, %false_0, %true, %false, %false, %false_7, %false, %true, %false_7, %false_1, %false_7, %false_0, %true, %true, %false, %false_1, %true, %false_7, %false_7, %false_0, %true, %true, %false_0, %false_0, %false_7, %false_0, %false_7, %false, %false, %false_7, %true, %false_7, %false_7, %true, %false_0, %true, %false_1, %false_7, %false, %false, %false_1, %false, %false_7, %false, %false_1, %true : tensor<10x2x10xi1>
        %inserted_42 = tensor.insert %false_7 into %4[%c1] : tensor<10xi1>
        %309 = math.expm1 %3 : tensor<10x2x10xf32>
        %310 = vector.splat %c6 : vector<10xindex>
        %311 = math.rsqrt %splat : tensor<10xf32>
        %312 = index.castu %160 : i32 to index
        %313 = math.cos %3 : tensor<10x2x10xf32>
        %314 = tensor.empty(%79, %86, %126) : tensor<?x?x?xi64>
        scf.yield %12 : tensor<2xf32>
      }
      %295 = affine.apply affine_map<(d0, d1) -> ((-(d1 ceildiv 128 + 8)) mod 16)>(%c12, %67)
      %296 = vector.insertelement %293, %38[%c8 : index] : vector<6xi16>
      %297 = scf.index_switch %62 -> memref<2xi1> 
      case 1 {
        %301 = math.powf %12, %12 : tensor<2xf32>
        %inserted_41 = tensor.insert %cst_2 into %15[%c1] : tensor<2xf16>
        %splat_42 = tensor.splat %cst_4 : tensor<10xf16>
        %302 = arith.shrsi %extracted, %293 : i16
        %303 = arith.maxui %false_1, %false : i1
        %304 = math.log10 %cst_39 : f16
        %305 = bufferization.clone %alloc_15 : memref<2xi16> to memref<2xi16>
        %306 = vector.shuffle %139, %94 [1, 2, 3, 6, 11] : vector<2x2x10xf32>, vector<10x2x10xf32>
        %307 = arith.cmpf ult, %cst_6, %cst_3 : f32
        %308 = index.mul %178, %115
        %309 = arith.xori %extracted_40, %160 : i32
        affine.store %160, %alloc_9[%c6] : memref<10xi32>
        %310 = arith.cmpi sge, %extracted_40, %extracted_40 : i32
        %311 = math.copysign %cst_2, %cst_2 : f16
        %312 = vector.shuffle %139, %139 [1] : vector<2x2x10xf32>, vector<2x2x10xf32>
        %313 = index.floordivs %178, %c13
        scf.yield %149 : memref<2xi1>
      }
      case 2 {
        %301 = vector.transpose %144, [0] : vector<10xf16> to vector<10xf16>
        %302 = vector.insertelement %293, %41[%c8 : index] : vector<15xi16>
        %303 = index.casts %c7 : index to i32
        %304 = math.ctlz %out : i16
        %305 = memref.atomic_rmw assign %cst, %200[%c0, %c0, %c3] : (f16, memref<10x2x10xf16>) -> f16
        %306 = math.fma %12, %12, %12 : tensor<2xf32>
        %307 = math.atan2 %150, %2 : tensor<2xf16>
        %308 = math.copysign %splat, %5 : tensor<10xf32>
        %309 = vector.maskedload %alloc_22[%c1], %163, %146 : memref<2xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %310 = math.log1p %12 : tensor<2xf32>
        %311 = arith.remsi %false_0, %false : i1
        %312 = index.floordivs %c0, %143
        %313 = arith.shrsi %out, %293 : i16
        %314 = math.ipowi %19, %20 : tensor<i32>
        %315 = arith.cmpi sle, %160, %c1721459475_i32 : i32
        %316 = arith.cmpf oeq, %cst_39, %cst_2 : f16
        scf.yield %42 : memref<2xi1>
      }
      default {
        %301 = math.round %9 : tensor<10xf16>
        %302 = bufferization.clone %42 : memref<2xi1> to memref<2xi1>
        %303 = arith.negf %cst_2 : f16
        %304 = math.log2 %150 : tensor<2xf16>
        %305 = memref.realloc %133 : memref<2xi16> to memref<2xi16>
        %306 = index.ceildivs %c7, %c2
        %307 = arith.andi %extracted_40, %extracted_40 : i32
        %308 = index.mul %286, %281
        %inserted_41 = tensor.insert %c939322342_i64 into %13[%c1] : tensor<2xi64>
        %309 = vector.broadcast %cst_39 : f16 to vector<10xf16>
        %310 = arith.remui %extracted, %in : i16
        %311 = arith.minsi %false_7, %false_0 : i1
        %312 = affine.load %114[%c2] : memref<10xi32>
        %313 = bufferization.to_tensor %133 : memref<2xi16>
        %314 = index.floordivs %166, %c10
        %315 = affine.min affine_map<(d0, d1) -> (d0 * 128)>(%126, %c8)
        scf.yield %42 : memref<2xi1>
      }
      %298 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%6 : tensor<10x2x10xi64>) {
      ^bb0(%out_41: i64):
        %301 = math.absi %false : i1
        %302 = arith.remf %cst, %cst_4 : f16
        %303 = affine.load %149[%c8] : memref<2xi1>
        %304 = vector.bitcast %194 : vector<4xi16> to vector<4xf16>
        %305 = vector.extract_strided_slice %97 {offsets = [0], sizes = [8], strides = [1]} : vector<10x2x10xf32> to vector<8x2x10xf32>
        bufferization.dealloc_tensor %11 : tensor<10xi32>
        %306 = math.floor %14 : tensor<10xf16>
        %307 = arith.maxsi %303, %false_1 : i1
        %collapsed = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<10x2x10xi16> into tensor<20x10xi16>
        %308 = math.absf %2 : tensor<2xf16>
        %309 = math.ctpop %7 : tensor<2xi1>
        affine.store %extracted_40, %26[] : memref<i32>
        %310 = affine.min affine_map<(d0, d1) -> (d1 mod 2 - (((d1 mod 2) mod 4) ceildiv 8) * 4 - 144)>(%c6, %c0)
        %311 = arith.shrsi %extracted_40, %c1721459475_i32 : i32
        %312 = vector.insertelement %cst_4, %304[%c4 : index] : vector<4xf16>
        %313 = arith.maxui %false, %true : i1
        %314 = arith.divsi %c727661701_i64, %out_41 : i64
        %315 = bufferization.clone %42 : memref<2xi1> to memref<2xi1>
        %316 = index.castu %extracted_40 : i32 to index
        %317 = index.maxu %79, %86
        %318 = index.ceildivu %67, %c2
        %319 = index.maxu %c7, %281
        %320 = arith.negf %cst_8 : f32
        %321 = arith.addi %c-14039_i16, %293 : i16
        %322 = arith.addf %cst_2, %cst_39 : f16
        %alloca_42 = memref.alloca() : memref<2xi16>
        %323 = vector.matrix_multiply %83, %75 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 9 : i32} : (vector<1xi16>, vector<9xi16>) -> vector<9xi16>
        %324 = index.floordivs %316, %153
        %325 = math.log2 %2 : tensor<2xf16>
        %326 = vector.broadcast %false_1 : i1 to vector<4xi1>
        %327 = vector.maskedload %114[%c3], %326, %18 : memref<10xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %328 = vector.matrix_multiply %38, %323 {lhs_columns = 3 : i32, lhs_rows = 2 : i32, rhs_columns = 3 : i32} : (vector<6xi16>, vector<9xi16>) -> vector<6xi16>
        %329 = math.ctpop %1 : tensor<10x2x10xi1>
        linalg.yield %out_41 : i64
      } -> tensor<10x2x10xi64>
      %299 = index.divu %183, %178
      %300 = arith.shli %160, %extracted_40 : i32
      linalg.yield %c-14039_i16 : i16
    } -> tensor<10x2x10xi16>
    %212 = arith.addi %false_0, %false_7 : i1
    %213 = math.tanh %cst : f16
    %214 = arith.remf %cst_8, %cst_8 : f32
    %215 = arith.maxui %false_1, %true : i1
    %alloca_35 = memref.alloca() : memref<2xi1>
    %216 = vector.broadcast %79 : index to vector<2xindex>
    %217 = vector.broadcast %false_7 : i1 to vector<2xi1>
    %218 = vector.broadcast %cst_4 : f16 to vector<2xf16>
    vector.scatter %alloc_11[%c3] [%216], %217, %218 : memref<10xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
    %219 = vector.extract %96[9, 0] : vector<10x2x10xi32>
    %220 = bufferization.to_tensor %alloc_9 : memref<10xi32>
    %221 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%6 : tensor<10x2x10xi64>) outs(%6 : tensor<10x2x10xi64>) {
    ^bb0(%in: i64, %out: i64):
      vector.print %18 : vector<4xi32>
      %273 = math.sqrt %2 : tensor<2xf16>
      %274 = index.floordivs %c2, %130
      %275 = index.mul %c15, %c4
      %276 = math.absf %splat : tensor<10xf32>
      %277 = math.log1p %14 : tensor<10xf16>
      affine.for %arg2 = 0 to 52 {
      }
      %278 = math.cos %3 : tensor<10x2x10xf32>
      %279 = arith.addi %false_1, %false_1 : i1
      %280 = vector.load %70[%c6, %c0, %c2] : memref<10x2x10xf16>, vector<10x2x10xf16>
      %281 = index.maxs %175, %187
      %282 = math.ceil %15 : tensor<2xf16>
      %283 = arith.shrui %false_7, %false_0 : i1
      %284 = math.rsqrt %cst_6 : f32
      %alloc_39 = memref.alloc() : memref<10x10xf32>
      %alloc_40 = memref.alloc() : memref<10x10x2xf32>
      %285 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_39, %splat, %alloc_40 : memref<10x10xf32>, tensor<10xf32>, memref<10x10x2xf32>) outs(%3 : tensor<10x2x10xf32>) {
      ^bb0(%in_42: f32, %in_43: f32, %in_44: f32, %out_45: f32):
        %300 = arith.mulf %out_45, %in_44 : f32
        %301 = vector.splat %out : vector<2xi64>
        %302 = math.expm1 %150 : tensor<2xf16>
        %cast_46 = tensor.cast %3 : tensor<10x2x10xf32> to tensor<?x?x?xf32>
        %303 = vector.broadcast %152 : index to vector<4xindex>
        %304 = vector.broadcast %false_1 : i1 to vector<4xi1>
        vector.scatter %alloc_22[%c0] [%303], %304, %18 : memref<2xi32>, vector<4xindex>, vector<4xi1>, vector<4xi32>
        %305 = arith.divsi %false, %false_7 : i1
        %306 = affine.max affine_map<(d0, d1, d2) -> ((-d2) floordiv 4, (d1 - d2) * 16, -d2)>(%281, %68, %166)
        memref.store %extracted, %alloc_19[%c6] : memref<10xi16>
        %307 = math.log2 %15 : tensor<2xf16>
        %308 = vector.extract_strided_slice %96 {offsets = [0, 0], sizes = [7, 2], strides = [1, 1]} : vector<10x2x10xi32> to vector<7x2x10xi32>
        %309 = arith.xori %true, %false_0 : i1
        %310 = math.sqrt %3 : tensor<10x2x10xf32>
        %alloca_47 = memref.alloca() : memref<10xf32>
        %311 = arith.divsi %false, %true : i1
        %312 = math.copysign %in_44, %in_43 : f32
        %313 = arith.divf %in_42, %cst_6 : f32
        %cst_48 = arith.constant 1.7242263E+9 : f32
        %314 = math.floor %in_43 : f32
        %315 = memref.realloc %alloc_20 : memref<10xi64> to memref<2xi64>
        %316 = math.cttz %in : i64
        %317 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %38, %99, %c-14039_i16 : vector<6xi16>, vector<6xi16> into i16
        %318 = math.ctpop %10 : tensor<10x2x10xi16>
        %319 = arith.divui %in, %c939322342_i64 : i64
        %320 = index.casts %in : i64 to index
        %321 = vector.insertelement %in_44, %47[%143 : index] : vector<10xf32>
        %322 = index.mul %320, %143
        %323 = math.ctlz %c1721459475_i32 : i32
        %324 = arith.andi %c1721459475_i32, %160 : i32
        %325 = arith.andi %extracted, %extracted : i16
        %326 = vector.transpose %219, [0] : vector<10xi32> to vector<10xi32>
        %327 = vector.flat_transpose %99 {columns = 2 : i32, rows = 3 : i32} : vector<6xi16> -> vector<6xi16>
        %328 = tensor.empty() : tensor<2xi16>
        linalg.yield %out_45 : f32
      } -> tensor<10x2x10xf32>
      %286 = arith.maxui %false, %false_7 : i1
      %287 = vector.splat %168 : vector<2xindex>
      %288 = math.log2 %14 : tensor<10xf16>
      %289 = vector.load %alloc_13[%c0] : memref<2xi64>, vector<2xi64>
      %290 = memref.realloc %alloc_13 : memref<2xi64> to memref<4xi64>
      affine.store %out, %alloc_13[%c2] : memref<2xi64>
      %291 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%8 : tensor<10x2x10xi16>) {
      ^bb0(%out_42: i16):
        %300 = math.log10 %150 : tensor<2xf16>
        %301 = index.casts %93 : index to i32
        %302 = math.log %cst_3 : f32
        %303 = math.atan2 %15, %15 : tensor<2xf16>
        %304 = index.ceildivs %c3, %79
        %305 = vector.matrix_multiply %41, %75 {lhs_columns = 3 : i32, lhs_rows = 5 : i32, rhs_columns = 3 : i32} : (vector<15xi16>, vector<9xi16>) -> vector<15xi16>
        %306 = bufferization.clone %alloc_26 : memref<10xi32> to memref<10xi32>
        %307 = vector.transpose %144, [0] : vector<10xf16> to vector<10xf16>
        %308 = vector.shuffle %41, %83 [0, 2, 3, 6, 8, 14, 15] : vector<15xi16>, vector<1xi16>
        %309 = vector.broadcast %cst_4 : f16 to vector<10x2xf16>
        %dest, %accumulated_value = vector.scan <maxf>, %280, %309 {inclusive = true, reduction_dim = 2 : i64} : vector<10x2x10xf16>, vector<10x2xf16>
        %310 = math.exp2 %5 : tensor<10xf32>
        %311 = math.absf %15 : tensor<2xf16>
        %312 = arith.divui %out, %out : i64
        %313 = index.ceildivs %c13, %152
        %314 = index.castu %extracted : i16 to index
        memref.tensor_store %2, %alloc_21 : memref<2xf16>
        %315 = vector.flat_transpose %289 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %316 = arith.shrui %false_0, %false_0 : i1
        %317 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 16, -d0, (d0 mod 128) * 64 - d0, d2 mod 2)>(%187, %68, %c6)
        %318 = math.atan2 %2, %15 : tensor<2xf16>
        %collapsed = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<10x2x10xi16> into tensor<20x10xi16>
        %319 = arith.remf %cst, %cst_4 : f16
        %320 = tensor.empty() : tensor<10x2x10xi32>
        %321 = vector.gather %320[%275, %152, %90] [%146], %145, %219 : tensor<10x2x10xi32>, vector<10xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %322 = arith.muli %c1721459475_i32, %c1721459475_i32 : i32
        %323 = index.ceildivu %c10, %c11
        %324 = arith.negf %cst_3 : f32
        %325 = math.ipowi %160, %160 : i32
        %326 = vector.load %alloc_16[%c7, %c0, %c6] : memref<10x2x10xi16>, vector<10xi16>
        %327 = vector.transpose %18, [0] : vector<4xi32> to vector<4xi32>
        %extracted_43 = tensor.extract %5[%c3] : tensor<10xf32>
        %328 = math.round %5 : tensor<10xf32>
        %329 = math.atan2 %14, %17 : tensor<10xf16>
        linalg.yield %out_42 : i16
      } -> tensor<10x2x10xi16>
      %cast_41 = tensor.cast %10 : tensor<10x2x10xi16> to tensor<?x?x?xi16>
      %292 = arith.xori %in, %c727661701_i64 : i64
      %293 = vector.transpose %97, [1, 2, 0] : vector<10x2x10xf32> to vector<2x10x10xf32>
      %294 = math.atan2 %17, %17 : tensor<10xf16>
      %295 = math.sqrt %3 : tensor<10x2x10xf32>
      %296 = vector.extract_strided_slice %280 {offsets = [4], sizes = [4], strides = [1]} : vector<10x2x10xf16> to vector<4x2x10xf16>
      %297 = affine.max affine_map<(d0, d1, d2, d3) -> ((d1 - d0) mod 32, d2 floordiv 128, 0)>(%86, %62, %27, %90)
      %298 = arith.floordivsi %160, %c1721459475_i32 : i32
      affine.for %arg2 = 0 to 76 {
      }
      %299 = arith.remsi %false, %false : i1
      linalg.yield %out : i64
    } -> tensor<10x2x10xi64>
    %222 = vector.transpose %95, [2, 0, 1] : vector<10x2x10xi1> to vector<10x10x2xi1>
    %223 = arith.maxui %false_0, %false_1 : i1
    %224 = tensor.empty() : tensor<10xf16>
    %225 = arith.andi %160, %c1721459475_i32 : i32
    %226 = scf.while (%arg2 = %42) : (memref<2xi1>) -> memref<2xi1> {
      %273 = math.atan2 %cst_8, %cst_6 : f32
      %expanded = tensor.expand_shape %12 [[0, 1]] : tensor<2xf32> into tensor<2x1xf32>
      %274 = index.floordivs %166, %c1
      %275 = vector.flat_transpose %38 {columns = 2 : i32, rows = 3 : i32} : vector<6xi16> -> vector<6xi16>
      %276 = vector.matrix_multiply %145, %163 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
      %277 = affine.min affine_map<(d0, d1) -> (-d1, 0)>(%115, %c7)
      %278 = index.maxs %115, %86
      %279 = memref.alloca_scope  -> (f16) {
        %280 = math.atan2 %3, %3 : tensor<10x2x10xf32>
        %281 = arith.maxsi %false, %false_0 : i1
        %282 = math.ctpop %0 : tensor<2xi1>
        %283 = vector.splat %c3 : vector<10xindex>
        %284 = arith.divui %extracted, %c-14039_i16 : i16
        %285 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c15, %130, %c0, %c1)
        %286 = vector.broadcast %c15 : index to vector<4xindex>
        %287 = vector.broadcast %true : i1 to vector<4xi1>
        %288 = vector.broadcast %c939322342_i64 : i64 to vector<4xi64>
        vector.scatter %alloc_13[%c1] [%286], %287, %288 : memref<2xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
        %289 = vector.broadcast %67 : index to vector<10xindex>
        %290 = vector.broadcast %c727661701_i64 : i64 to vector<10xi64>
        vector.scatter %alloc_13[%c1] [%289], %145, %290 : memref<2xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %291 = math.expm1 %cst_5 : f32
        %292 = arith.maxsi %false, %false : i1
        %293 = arith.shrsi %c1721459475_i32, %160 : i32
        %294 = memref.realloc %alloc_26 : memref<10xi32> to memref<10xi32>
        %295 = vector.extract_strided_slice %276 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %296 = tensor.empty() : tensor<10xi16>
        %297 = vector.broadcast %101 : index to vector<4xindex>
        %298 = vector.broadcast %false_7 : i1 to vector<4xi1>
        %299 = vector.broadcast %cst_2 : f16 to vector<4xf16>
        vector.scatter %alloc_11[%c1] [%297], %298, %299 : memref<10xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        %300 = math.rsqrt %224 : tensor<10xf16>
        %301 = vector.splat %68 : vector<10x2x10xindex>
        %302 = vector.matrix_multiply %219, %219 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
        %303 = index.mul %187, %c3
        %304 = vector.broadcast %160 : i32 to vector<2xi32>
        %305 = vector.broadcast %false_1 : i1 to vector<2xi1>
        %306 = vector.maskedload %alloc_9[%c7], %305, %304 : memref<10xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %307 = math.expm1 %2 : tensor<2xf16>
        %308 = math.log2 %2 : tensor<2xf16>
        %309 = arith.xori %false_7, %false_0 : i1
        %310 = arith.cmpi sge, %160, %c1721459475_i32 : i32
        %311 = arith.divf %cst, %cst : f16
        %312 = arith.minsi %extracted, %extracted : i16
        %313 = math.absf %5 : tensor<10xf32>
        %314 = arith.maxsi %false, %true : i1
        %315 = index.ceildivu %68, %175
        %316 = vector.shuffle %163, %295 [0, 2, 5, 8, 10] : vector<10xi1>, vector<1xi1>
        %317 = math.powf %17, %9 : tensor<10xf16>
        %318 = arith.cmpf ule, %cst, %cst_2 : f16
        memref.alloca_scope.return %cst_2 : f16
      }
      scf.condition(%false_0) %arg2 : memref<2xi1>
    } do {
    ^bb0(%arg2: memref<2xi1>):
      %273 = vector.flat_transpose %47 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
      %274 = arith.mulf %cst_6, %cst_8 : f32
      %275 = affine.max affine_map<(d0) -> (d0 mod 16, d0 mod 16, d0 mod 16, -(d0 ceildiv 64))>(%175)
      %276 = vector.transpose %52, [0] : vector<1xi16> to vector<1xi16>
      %277 = arith.shli %false_0, %false_7 : i1
      %278 = arith.andi %false_0, %false_0 : i1
      %279 = index.ceildivu %c13, %c5
      %280 = vector.broadcast %c727661701_i64 : i64 to vector<10x2x10xi64>
      %281 = vector.gather %alloc_20[%c2] [%96], %95, %280 : memref<10xi64>, vector<10x2x10xi32>, vector<10x2x10xi1>, vector<10x2x10xi64> into vector<10x2x10xi64>
      %282 = bufferization.to_memref %5 : memref<10xf32>
      %283 = memref.atomic_rmw addf %cst_2, %alloc_21[%c1] : (f16, memref<2xf16>) -> f16
      %284 = math.log2 %cst_2 : f16
      %285 = arith.minf %cst_4, %cst_2 : f16
      %cast_39 = tensor.cast %224 : tensor<10xf16> to tensor<?xf16>
      %286 = math.tanh %5 : tensor<10xf32>
      %287 = vector.insertelement %cst_6, %47[%c7 : index] : vector<10xf32>
      %288 = arith.divsi %c727661701_i64, %c939322342_i64 : i64
      scf.yield %42 : memref<2xi1>
    }
    %227 = arith.shrsi %c939322342_i64, %c939322342_i64 : i64
    %228 = arith.remf %cst_5, %cst_5 : f32
    %229 = arith.addi %false_0, %false_1 : i1
    %230 = math.atan2 %cst_2, %cst : f16
    %231 = arith.cmpi sle, %false, %false : i1
    %232 = bufferization.to_memref %7 : memref<2xi1>
    %233 = vector.broadcast %cst_6 : f32 to vector<2xf32>
    %234 = vector.fma %233, %233, %233 : vector<2xf32>
    %235 = bufferization.clone %alloc_12 : memref<10x2x10xi64> to memref<10x2x10xi64>
    %236 = scf.execute_region -> vector<10xf16> {
      %273 = index.floordivs %101, %90
      %274 = bufferization.clone %133 : memref<2xi16> to memref<2xi16>
      %alloc_39 = memref.alloc() : memref<10x2x10xi32>
      %275 = vector.broadcast %160 : i32 to vector<2xi32>
      %276 = vector.broadcast %false_1 : i1 to vector<2xi1>
      %277 = vector.gather %alloc_39[%c1, %168, %c9] [%275], %276, %275 : memref<10x2x10xi32>, vector<2xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
      %278 = arith.maxf %cst_5, %cst_6 : f32
      scf.index_switch %40 
      case 1 {
        %290 = tensor.empty() : tensor<2xi64>
        %cast_40 = tensor.cast %2 : tensor<2xf16> to tensor<?xf16>
        %291 = arith.cmpi sgt, %false_1, %false_7 : i1
        %292 = math.atan2 %cst, %cst : f16
        %293 = vector.splat %true : vector<10xi1>
        %294 = vector.splat %false : vector<10xi1>
        %295 = affine.load %alloc_13[%c7] : memref<2xi64>
        %296 = vector.extract_strided_slice %75 {offsets = [0], sizes = [8], strides = [1]} : vector<9xi16> to vector<8xi16>
        %297 = index.ceildivs %126, %178
        %298 = vector.splat %cst_3 : vector<10xf32>
        %299 = math.ceil %cst : f16
        %300 = arith.minsi %c-14039_i16, %extracted : i16
        %301 = math.expm1 %15 : tensor<2xf16>
        %cast_41 = tensor.cast %11 : tensor<10xi32> to tensor<?xi32>
        %302 = arith.mulf %cst_6, %cst_5 : f32
        %303 = vector.extract_strided_slice %95 {offsets = [0, 0], sizes = [3, 1], strides = [1, 1]} : vector<10x2x10xi1> to vector<3x1x10xi1>
        scf.yield
      }
      case 2 {
        %290 = arith.minsi %false, %true : i1
        %291 = math.ipowi %10, %10 : tensor<10x2x10xi16>
        %292 = bufferization.to_memref %17 : memref<10xf16>
        %293 = arith.remsi %c-14039_i16, %extracted : i16
        %294 = bufferization.to_tensor %70 : memref<10x2x10xf16>
        %295 = tensor.empty(%175) : tensor<10x?x10xi16>
        %296 = arith.mulf %cst_5, %cst_5 : f32
        %297 = bufferization.to_tensor %42 : memref<2xi1>
        %298 = arith.muli %c727661701_i64, %c939322342_i64 : i64
        %299 = vector.splat %c15 : vector<10xindex>
        %300 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 + d3) floordiv 16)>(%c9, %183, %175, %130)
        %301 = arith.maxsi %c1721459475_i32, %160 : i32
        %302 = bufferization.to_tensor %alloc_9 : memref<10xi32>
        %303 = arith.remui %c-14039_i16, %c-14039_i16 : i16
        %304 = affine.load %149[%c11] : memref<2xi1>
        %305 = math.cos %cst_5 : f32
        scf.yield
      }
      case 3 {
        %290 = index.maxs %c0, %62
        %291 = math.fma %12, %12, %12 : tensor<2xf32>
        %292 = arith.maxf %cst_8, %cst_6 : f32
        %293 = memref.realloc %42 : memref<2xi1> to memref<10xi1>
        %294 = math.ceil %15 : tensor<2xf16>
        %295 = arith.divui %extracted, %extracted : i16
        %296 = math.absf %16 : tensor<10xf16>
        %297 = arith.floordivsi %c1721459475_i32, %c1721459475_i32 : i32
        %298 = arith.remui %c1721459475_i32, %c1721459475_i32 : i32
        %299 = arith.maxui %c1721459475_i32, %c1721459475_i32 : i32
        %300 = arith.remsi %false_7, %false_0 : i1
        %301 = index.castu %false_7 : i1 to index
        %302 = vector.extract %94[4] : vector<10x2x10xf32>
        %303 = index.casts %c939322342_i64 : i64 to index
        %304 = bufferization.clone %alloc_9 : memref<10xi32> to memref<10xi32>
        %305 = math.log2 %cst_6 : f32
        scf.yield
      }
      default {
        %290 = index.mul %68, %62
        %291 = vector.broadcast %c-14039_i16 : i16 to vector<2x2xi16>
        %292 = vector.outerproduct %65, %65, %291 {kind = #vector.kind<maxui>} : vector<2xi16>, vector<2xi16>
        %293 = math.floor %cst_6 : f32
        vector.print %139 : vector<2x2x10xf32>
        %294 = index.add %c9, %c10
        %295 = vector.extract %65[0] : vector<2xi16>
        %296 = index.floordivs %c10, %c7
        %297 = math.ceil %cst_5 : f32
        %298 = index.floordivs %c5, %c0
        memref.tensor_store %220, %alloc_9 : memref<10xi32>
        %299 = math.ctlz %10 : tensor<10x2x10xi16>
        %300 = vector.matrix_multiply %194, %82 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 15 : i32} : (vector<4xi16>, vector<15xi16>) -> vector<60xi16>
        %301 = vector.flat_transpose %145 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %302 = arith.xori %false_7, %true : i1
        %303 = memref.realloc %alloc_17 : memref<2xi16> to memref<4xi16>
        %304 = arith.andi %extracted, %extracted : i16
      }
      %279 = math.absf %5 : tensor<10xf32>
      %280 = math.absi %20 : tensor<i32>
      %281 = memref.realloc %274 : memref<2xi16> to memref<10xi16>
      %282 = arith.maxsi %extracted, %c-14039_i16 : i16
      %283 = vector.shuffle %163, %163 [2, 3, 5, 6, 7, 8, 12, 15, 16, 17, 18, 19] : vector<10xi1>, vector<10xi1>
      %284 = vector.extract_strided_slice %94 {offsets = [4], sizes = [6], strides = [1]} : vector<10x2x10xf32> to vector<6x2x10xf32>
      %285 = arith.maxsi %c727661701_i64, %c727661701_i64 : i64
      %286 = vector.flat_transpose %41 {columns = 5 : i32, rows = 3 : i32} : vector<15xi16> -> vector<15xi16>
      %287 = arith.cmpi slt, %c-14039_i16, %extracted : i16
      %288 = bufferization.to_memref %15 : memref<2xf16>
      %289 = index.floordivs %166, %175
      scf.yield %144 : vector<10xf16>
    }
    %237 = arith.divsi %c-14039_i16, %extracted : i16
    %238 = math.ctlz %4 : tensor<10xi1>
    bufferization.dealloc_tensor %cast : tensor<?x?x?xi1>
    %239 = vector.broadcast %c939322342_i64 : i64 to vector<2xi64>
    %240 = vector.broadcast %false_7 : i1 to vector<2xi1>
    %241 = vector.broadcast %160 : i32 to vector<2xi32>
    %242 = vector.gather %alloc_24[%c4] [%241], %240, %239 : memref<2xi64>, vector<2xi32>, vector<2xi1>, vector<2xi64> into vector<2xi64>
    %243 = arith.andi %false_0, %true : i1
    %alloca_36 = memref.alloca() : memref<10xi16>
    %244 = index.casts %c2 : index to i32
    %245 = arith.mulf %cst_4, %cst_4 : f16
    %246 = vector.broadcast %cst_2 : f16 to vector<10xf16>
    %247 = arith.remui %c727661701_i64, %c727661701_i64 : i64
    %248 = bufferization.to_tensor %235 : memref<10x2x10xi64>
    %249 = arith.andi %false_1, %false_7 : i1
    %250 = vector.create_mask %168 : vector<2xi1>
    %251 = tensor.empty() : tensor<10x2x10xf32>
    %from_elements_37 = tensor.from_elements %false_0, %false_0 : tensor<2xi1>
    %252 = index.mul %168, %67
    %253 = index.floordivs %126, %68
    %254 = memref.atomic_rmw addi %160, %alloc_26[%c6] : (i32, memref<10xi32>) -> i32
    %255 = arith.remf %cst_8, %cst_8 : f32
    %256 = math.cos %2 : tensor<2xf16>
    %257 = math.atan2 %splat, %5 : tensor<10xf32>
    %258 = math.log2 %5 : tensor<10xf32>
    %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %234, %233, %cst_3 : vector<2xf32>, vector<2xf32> into f32
    %260 = vector.extract %82[0] : vector<15xi16>
    scf.if %false_0 {
      %273 = math.log2 %3 : tensor<10x2x10xf32>
      %274 = arith.xori %c939322342_i64, %c727661701_i64 : i64
      %275 = math.atan2 %3, %251 : tensor<10x2x10xf32>
      %276 = index.mul %175, %40
      %277 = arith.maxui %c-14039_i16, %c-14039_i16 : i16
      %alloca_39 = memref.alloca() : memref<10x2x10xi16>
      %278 = scf.execute_region -> tensor<2xi32> {
        %280 = math.expm1 %cst_5 : f32
        %281 = arith.muli %c727661701_i64, %c727661701_i64 : i64
        %282 = math.log2 %5 : tensor<10xf32>
        %283 = affine.min affine_map<(d0) -> (-d0, d0 * 2)>(%c4)
        %alloc_40 = memref.alloc() : memref<2xi16>
        %284 = arith.minf %cst_6, %cst_5 : f32
        %285 = math.ipowi %10, %8 : tensor<10x2x10xi16>
        %286 = math.cos %cst_3 : f32
        %287 = math.atan2 %3, %251 : tensor<10x2x10xf32>
        %288 = index.floordivs %c8, %206
        %289 = vector.splat %90 : vector<10xindex>
        %290 = arith.andi %false_0, %false : i1
        %291 = arith.xori %c1721459475_i32, %c1721459475_i32 : i32
        %292 = arith.divui %c727661701_i64, %c727661701_i64 : i64
        %293 = memref.realloc %133 : memref<2xi16> to memref<4xi16>
        %294 = arith.maxsi %false_1, %false_0 : i1
        scf.yield %141 : tensor<2xi32>
      }
      %279 = arith.minf %cst_3, %cst_3 : f32
    }
    %261 = memref.atomic_rmw assign %160, %alloc_26[%c1] : (i32, memref<10xi32>) -> i32
    %262 = arith.minf %cst_8, %cst_3 : f32
    %263 = math.cos %cst_6 : f32
    %264 = arith.muli %c1721459475_i32, %160 : i32
    %265 = index.floordivs %181, %178
    %266 = arith.remui %c-14039_i16, %extracted : i16
    %267 = scf.execute_region -> memref<10xf16> {
      %273 = affine.for %arg2 = 0 to 2 iter_args(%arg3 = %1) -> (tensor<10x2x10xi1>) {
        affine.yield %1 : tensor<10x2x10xi1>
      }
      %inserted_39 = tensor.insert %true into %1[%c0, %c0, %c4] : tensor<10x2x10xi1>
      %274 = memref.realloc %alloc_17 : memref<2xi16> to memref<10xi16>
      %275 = index.divu %c8, %c5
      %276 = math.log1p %3 : tensor<10x2x10xf32>
      %277 = arith.maxui %c939322342_i64, %c939322342_i64 : i64
      %278 = vector.flat_transpose %144 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
      %279 = scf.while (%arg2 = %alloc_9) : (memref<10xi32>) -> memref<10xi32> {
        %288 = vector.matrix_multiply %99, %25 {lhs_columns = 2 : i32, lhs_rows = 3 : i32, rhs_columns = 5 : i32} : (vector<6xi16>, vector<10xi16>) -> vector<15xi16>
        %289 = vector.transpose %233, [0] : vector<2xf32> to vector<2xf32>
        %290 = arith.shrsi %true, %false_0 : i1
        %291 = affine.min affine_map<(d0) -> ((d0 floordiv 16) mod 64, d0)>(%206)
        %292 = index.maxs %c3, %168
        %293 = math.ctpop %c-14039_i16 : i16
        %294 = math.fma %15, %150, %2 : tensor<2xf16>
        %295 = tensor.empty(%c9, %292) : tensor<?x?x10xf32>
        scf.condition(%false_7) %alloc_26 : memref<10xi32>
      } do {
      ^bb0(%arg2: memref<10xi32>):
        %288 = arith.muli %false_1, %false : i1
        %289 = index.floordivs %181, %c6
        %290 = arith.divui %c1721459475_i32, %c1721459475_i32 : i32
        %291 = math.expm1 %cst_2 : f16
        %alloca_40 = memref.alloca() : memref<10xf16>
        %292 = math.log1p %5 : tensor<10xf32>
        %293 = vector.flat_transpose %41 {columns = 5 : i32, rows = 3 : i32} : vector<15xi16> -> vector<15xi16>
        vector.print %163 : vector<10xi1>
        %false_41 = arith.constant false
        %294 = vector.transfer_read %1[%187, %c4, %187], %false_41 : tensor<10x2x10xi1>, vector<10xi1>
        %295 = arith.mulf %cst_3, %cst_5 : f32
        %alloca_42 = memref.alloca() : memref<10x2x10xi32>
        %296 = arith.addi %true, %false_7 : i1
        %297 = math.fma %cst_8, %cst_3, %cst_3 : f32
        %298 = arith.shrsi %false_7, %false_0 : i1
        %299 = arith.divsi %false_1, %false_41 : i1
        %300 = math.rsqrt %3 : tensor<10x2x10xf32>
        scf.yield %arg2 : memref<10xi32>
      }
      %280 = vector.insertelement %cst_5, %47[%126 : index] : vector<10xf32>
      %281 = index.sub %27, %c1
      %282 = bufferization.to_memref %5 : memref<10xf32>
      %283 = arith.subi %true, %false : i1
      %284 = bufferization.to_tensor %alloc_10 : memref<10xi32>
      %285 = math.ctpop %c-14039_i16 : i16
      %286 = arith.maxui %c1721459475_i32, %c1721459475_i32 : i32
      %287 = arith.addi %true, %false_7 : i1
      scf.yield %alloc : memref<10xf16>
    }
    %268 = tensor.empty() : tensor<10x2x10xi64>
    %269 = linalg.copy ins(%248 : tensor<10x2x10xi64>) outs(%268 : tensor<10x2x10xi64>) -> tensor<10x2x10xi64>
    %270 = tensor.empty() : tensor<10x10x2xf32>
    %transposed = linalg.transpose ins(%3 : tensor<10x2x10xf32>) outs(%270 : tensor<10x10x2xf32>) permutation = [2, 0, 1] 
    %alloc_38 = memref.alloc() : memref<i32>
    linalg.reduce ins(%141 : tensor<2xi32>) outs(%alloc_38 : memref<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %273 = vector.transpose %83, [0] : vector<1xi16> to vector<1xi16>
        %274 = index.maxs %126, %c1
        %275 = arith.andi %c727661701_i64, %c727661701_i64 : i64
        %276 = affine.load %alloc_12[%c0, %c9, %c5] : memref<10x2x10xi64>
        %277 = vector.load %alloc_10[%c9] : memref<10xi32>, vector<10xi32>
        %splat_39 = tensor.splat %cst : tensor<2xf16>
        %278 = vector.splat %166 : vector<10x2x10xindex>
        %279 = bufferization.to_memref %cast : memref<?x?x?xi1>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %271 = scf.parallel (%arg2) = (%c6) to (%206) step (%c2) init (%251) -> tensor<10x2x10xf32> {
      %273 = arith.maxsi %c939322342_i64, %c727661701_i64 : i64
      %inserted_39 = tensor.insert %false_1 into %cast[%c0, %c0, %c0] : tensor<?x?x?xi1>
      %274 = index.sub %187, %79
      %275 = arith.remui %c727661701_i64, %c727661701_i64 : i64
      %276 = vector.extract_strided_slice %219 {offsets = [5], sizes = [1], strides = [1]} : vector<10xi32> to vector<1xi32>
      %277 = math.atan2 %cst_2, %cst : f16
      %278 = affine.load %alloc_11[%c3] : memref<10xf16>
      %279 = arith.ceildivsi %c-14039_i16, %extracted : i16
      %280 = math.copysign %cst_5, %cst_3 : f32
      %281 = affine.load %42[%c8] : memref<2xi1>
      %282 = index.add %27, %101
      %283 = vector.reduction <minui>, %240 : vector<2xi1> into i1
      %284 = vector.splat %true : vector<10xi1>
      %285 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%transposed : tensor<10x10x2xf32>) {
      ^bb0(%out: f32):
        %289 = math.expm1 %3 : tensor<10x2x10xf32>
        %290 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 + 8) * 32 + (d1 - 1) mod 32, (d3 + 8) * 32 + (d1 - 1) mod 32)>(%68, %265, %168, %c0)
        %291 = vector.broadcast %false_1 : i1 to vector<10xi1>
        %292 = index.mul %c13, %27
        %293 = vector.broadcast %extracted : i16 to vector<2xi16>
        %294 = vector.maskedload %alloc_15[%c0], %240, %293 : memref<2xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
        %295 = math.cos %cst_4 : f16
        %296 = arith.remui %281, %281 : i1
        %297 = arith.muli %false_0, %false : i1
        %298 = bufferization.clone %232 : memref<2xi1> to memref<2xi1>
        %299 = bufferization.to_memref %1 : memref<10x2x10xi1>
        %300 = math.fma %270, %270, %transposed : tensor<10x10x2xf32>
        %from_elements_40 = tensor.from_elements %c1721459475_i32, %160, %c1721459475_i32, %160, %c1721459475_i32, %c1721459475_i32, %160, %160, %160, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %160, %160, %c1721459475_i32, %160, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %c1721459475_i32, %160, %c1721459475_i32, %160, %160, %c1721459475_i32, %160, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %c1721459475_i32, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %160, %c1721459475_i32, %160, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %160, %160, %c1721459475_i32, %160, %c1721459475_i32, %160, %c1721459475_i32, %c1721459475_i32, %160, %160, %160, %160, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %160, %160, %160, %c1721459475_i32, %160, %c1721459475_i32, %160, %160, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %c1721459475_i32, %160, %160, %c1721459475_i32, %160, %160, %c1721459475_i32, %160, %160, %160, %160, %c1721459475_i32, %c1721459475_i32, %160, %160, %160, %160, %c1721459475_i32, %160, %c1721459475_i32, %c1721459475_i32, %160, %160, %160, %c1721459475_i32, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %160, %c1721459475_i32, %160, %160, %160, %c1721459475_i32, %160, %160, %c1721459475_i32, %160, %160, %c1721459475_i32, %c1721459475_i32, %160, %c1721459475_i32, %160, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %c1721459475_i32, %c1721459475_i32, %160, %160, %160, %c1721459475_i32, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %160, %160, %c1721459475_i32, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %160, %160, %c1721459475_i32, %160, %160, %160, %160, %c1721459475_i32, %160, %c1721459475_i32, %c1721459475_i32, %160, %c1721459475_i32, %160, %c1721459475_i32, %c1721459475_i32, %c1721459475_i32, %160, %160 : tensor<10x2x10xi32>
        %301 = arith.shrui %extracted, %c-14039_i16 : i16
        %rank = tensor.rank %6 : tensor<10x2x10xi64>
        %rank_41 = tensor.rank %150 : tensor<2xf16>
        %302 = vector.maskedload %42[%c1], %145, %163 : memref<2xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %303 = vector.insert %c1721459475_i32, %241 [1] : i32 into vector<2xi32>
        %304 = math.cos %cst : f16
        %305 = index.divu %arg2, %290
        %306 = affine.min affine_map<(d0) -> (d0 floordiv 16, -d0)>(%c4)
        %307 = arith.maxf %cst_6, %cst_8 : f32
        %308 = vector.broadcast %extracted : i16 to vector<10xi16>
        %309 = math.log1p %cst_5 : f32
        bufferization.dealloc_tensor %220 : tensor<10xi32>
        %310 = math.ctpop %c1721459475_i32 : i32
        %311 = affine.apply affine_map<(d0, d1) -> (((d1 mod 2) floordiv 32) floordiv 4)>(%c14, %c9)
        %312 = math.absf %14 : tensor<10xf16>
        %313 = math.ctlz %c939322342_i64 : i64
        %314 = arith.cmpi sgt, %281, %false : i1
        %cst_42 = arith.constant 6.128000e+04 : f16
        %315 = index.sizeof
        linalg.yield %cst_6 : f32
      } -> tensor<10x10x2xf32>
      %286 = vector.create_mask %175, %159, %c1 : vector<10x2x10xi1>
      %287 = vector.flat_transpose %83 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
      %288 = tensor.empty() : tensor<10x2x10xf32>
      scf.reduce(%288)  : tensor<10x2x10xf32> {
      ^bb0(%arg3: tensor<10x2x10xf32>, %arg4: tensor<10x2x10xf32>):
        %289 = memref.atomic_rmw addi %c727661701_i64, %92[%c9, %c0, %c9] : (i64, memref<10x2x10xi64>) -> i64
        %alloc_40 = memref.alloc() : memref<10x2x10xi1>
        %290 = vector.gather %alloc_40[%c1, %206, %252] [%146], %163, %163 : memref<10x2x10xi1>, vector<10xi32>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %291 = vector.insertelement %extracted, %41[%159 : index] : vector<15xi16>
        %292 = arith.negf %cst_8 : f32
        %293 = math.sqrt %2 : tensor<2xf16>
        %294 = tensor.empty() : tensor<10xf32>
        %295 = arith.addi %false_7, %false : i1
        %296 = math.fma %cst_3, %cst_3, %cst_8 : f32
        %297 = tensor.empty() : tensor<10x2x10xf32>
        scf.reduce.return %297 : tensor<10x2x10xf32>
      }
      scf.yield
    }
    %272 = affine.vector_load %alloc_11[%143] : memref<10xf16>, vector<10xf16>
    affine.vector_store %145, %232[%184] : memref<2xi1>, vector<10xi1>
    vector.print %18 : vector<4xi32>
    vector.print %25 : vector<10xi16>
    vector.print %38 : vector<6xi16>
    vector.print %41 : vector<15xi16>
    vector.print %47 : vector<10xf32>
    vector.print %52 : vector<1xi16>
    vector.print %65 : vector<2xi16>
    vector.print %75 : vector<9xi16>
    vector.print %82 : vector<15xi16>
    vector.print %83 : vector<1xi16>
    vector.print %94 : vector<10x2x10xf32>
    vector.print %95 : vector<10x2x10xi1>
    vector.print %96 : vector<10x2x10xi32>
    vector.print %97 : vector<10x2x10xf32>
    vector.print %99 : vector<6xi16>
    vector.print %139 : vector<2x2x10xf32>
    vector.print %144 : vector<10xf16>
    vector.print %145 : vector<10xi1>
    vector.print %146 : vector<10xi32>
    vector.print %147 : vector<10xf16>
    vector.print %163 : vector<10xi1>
    vector.print %194 : vector<4xi16>
    vector.print %219 : vector<10xi32>
    vector.print %233 : vector<2xf32>
    vector.print %234 : vector<2xf32>
    vector.print %239 : vector<2xi64>
    vector.print %240 : vector<2xi1>
    vector.print %241 : vector<2xi32>
    vector.print %242 : vector<2xi64>
    vector.print %246 : vector<10xf16>
    vector.print %250 : vector<2xi1>
    vector.print %272 : vector<10xf16>
    vector.print %false : i1
    vector.print %false_0 : i1
    vector.print %cst : f16
    vector.print %c727661701_i64 : i64
    vector.print %false_1 : i1
    vector.print %cst_2 : f16
    vector.print %cst_3 : f32
    vector.print %c939322342_i64 : i64
    vector.print %cst_4 : f16
    vector.print %c-14039_i16 : i16
    vector.print %cst_5 : f32
    vector.print %cst_6 : f32
    vector.print %false_7 : i1
    vector.print %true : i1
    vector.print %cst_8 : f32
    vector.print %c1721459475_i32 : i32
    vector.print %extracted : i16
    vector.print %160 : i32
    return
  }
}
