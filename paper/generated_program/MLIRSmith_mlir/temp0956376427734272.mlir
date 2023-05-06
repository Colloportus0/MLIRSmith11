module {
  func.func nested @func1(%arg0: index) -> vector<2x7xi32> {
    %cst = arith.constant 5.036800e+04 : f16
    %cst_0 = arith.constant 0x4D99CBEC : f32
    %cst_1 = arith.constant 1.55735552E+9 : f32
    %cst_2 = arith.constant 1.620800e+04 : f16
    %c1583994261_i64 = arith.constant 1583994261 : i64
    %c1604127476_i32 = arith.constant 1604127476 : i32
    %c815937863_i64 = arith.constant 815937863 : i64
    %c656764588_i32 = arith.constant 656764588 : i32
    %false = arith.constant false
    %cst_3 = arith.constant 6.272000e+04 : f16
    %true = arith.constant true
    %c1618150045_i64 = arith.constant 1618150045 : i64
    %c1002889823_i32 = arith.constant 1002889823 : i32
    %c1114033323_i64 = arith.constant 1114033323 : i64
    %c917497104_i64 = arith.constant 917497104 : i64
    %c2236_i16 = arith.constant 2236 : i16
    %0 = tensor.empty() : tensor<7x8xi16>
    %1 = tensor.empty() : tensor<13x7xi16>
    %2 = tensor.empty() : tensor<13x7xi32>
    %3 = tensor.empty() : tensor<2x7xi64>
    %4 = tensor.empty() : tensor<13x7xi64>
    %5 = tensor.empty() : tensor<13x7xf32>
    %6 = tensor.empty() : tensor<7x8xi32>
    %7 = tensor.empty() : tensor<7x8xf16>
    %8 = tensor.empty() : tensor<13x7xi32>
    %9 = tensor.empty() : tensor<7x8xi1>
    %10 = tensor.empty() : tensor<2x7xi1>
    %11 = tensor.empty() : tensor<7x8xi32>
    %12 = tensor.empty() : tensor<7x8xf32>
    %13 = tensor.empty() : tensor<7x8xi16>
    %14 = tensor.empty() : tensor<13x7xf16>
    %15 = tensor.empty() : tensor<7x8xi32>
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
    %alloc = memref.alloc() : memref<2x7xi64>
    %alloc_4 = memref.alloc() : memref<13x7xf16>
    %alloc_5 = memref.alloc() : memref<2x7xi1>
    %alloc_6 = memref.alloc() : memref<7x8xi64>
    %alloc_7 = memref.alloc() : memref<7x8xi1>
    %alloc_8 = memref.alloc() : memref<13x7xi16>
    %alloc_9 = memref.alloc() : memref<13x7xf32>
    %alloc_10 = memref.alloc() : memref<7x8xi1>
    %alloc_11 = memref.alloc() : memref<7x8xf32>
    %alloc_12 = memref.alloc() : memref<2x7xi1>
    %alloc_13 = memref.alloc() : memref<2x7xi32>
    %alloc_14 = memref.alloc() : memref<13x7xi16>
    %alloc_15 = memref.alloc() : memref<7x8xi16>
    %alloc_16 = memref.alloc() : memref<7x8xf32>
    %alloc_17 = memref.alloc() : memref<7x8xi1>
    %alloc_18 = memref.alloc() : memref<7x8xi64>
    %16 = tensor.empty() : tensor<7x8xf16>
    %17 = linalg.copy ins(%7 : tensor<7x8xf16>) outs(%16 : tensor<7x8xf16>) -> tensor<7x8xf16>
    %18 = tensor.empty() : tensor<7x13xi16>
    %transposed = linalg.transpose ins(%alloc_8 : memref<13x7xi16>) outs(%18 : tensor<7x13xi16>) permutation = [1, 0] 
    %19 = tensor.empty() : tensor<8xi32>
    %reduced = linalg.reduce ins(%15 : tensor<7x8xi32>) outs(%19 : tensor<8xi32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %267 = index.sizeof
        %268 = arith.addf %cst, %cst_2 : f16
        %269 = math.expm1 %14 : tensor<13x7xf16>
        %270 = arith.divui %c815937863_i64, %c1114033323_i64 : i64
        %271 = math.ceil %5 : tensor<13x7xf32>
        %272 = arith.shrsi %c917497104_i64, %c815937863_i64 : i64
        %273 = affine.if affine_set<(d0) : (0 == 0, 0 == 0, (-d0) floordiv 2 == 0, 0 == 0)>(%c9) -> i32 {
          %275 = vector.broadcast %false : i1 to vector<8xi1>
          %276 = vector.flat_transpose %275 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
          %277 = math.round %12 : tensor<7x8xf32>
          %278 = vector.shuffle %276, %275 [0, 2, 3, 4, 5, 6, 7, 9, 10, 12, 14, 15] : vector<8xi1>, vector<8xi1>
          %279 = index.add %c2, %c1
          %extracted_40 = tensor.extract %1[%c4, %c4] : tensor<13x7xi16>
          %280 = vector.multi_reduction <maxui>, %276, %276 [] : vector<8xi1> to vector<8xi1>
          %281 = vector.broadcast %false : i1 to vector<13x7xi1>
          %282 = vector.broadcast %init : i32 to vector<13x7xi32>
          %283 = vector.gather %9[%c14, %c10] [%282], %281, %281 : tensor<7x8xi1>, vector<13x7xi32>, vector<13x7xi1>, vector<13x7xi1> into vector<13x7xi1>
          %284 = math.log2 %5 : tensor<13x7xf32>
          affine.yield %init : i32
        } else {
          %275 = vector.broadcast %cst_3 : f16 to vector<7xf16>
          %276 = vector.reduction <maxf>, %275 : vector<7xf16> into f16
          %277 = bufferization.clone %alloc_6 : memref<7x8xi64> to memref<7x8xi64>
          %278 = math.log %12 : tensor<7x8xf32>
          %279 = math.log %cst_1 : f32
          %280 = memref.atomic_rmw addf %cst_2, %alloc_4[%c10, %c5] : (f16, memref<13x7xf16>) -> f16
          memref.copy %alloc_11, %alloc_16 : memref<7x8xf32> to memref<7x8xf32>
          %inserted_40 = tensor.insert %in into %8[%c4, %c5] : tensor<13x7xi32>
          %281 = index.divu %c14, %c1
          affine.yield %in : i32
        }
        %274 = math.fma %cst_0, %cst_1, %cst_0 : f32
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %20 = scf.parallel (%arg1, %arg2) = (%c12, %c13) to (%c1, %c14) step (%c8, %c13) init (%3) -> tensor<2x7xi64> {
      %267 = vector.broadcast %c1604127476_i32 : i32 to vector<13xi32>
      %268 = vector.reduction <minsi>, %267 : vector<13xi32> into i32
      %269 = vector.create_mask %c10, %c7 : vector<13x7xi1>
      %270 = vector.create_mask %c8, %c3 : vector<13x7xi1>
      %271 = index.divu %c12, %c8
      %272 = arith.minf %cst_2, %cst : f16
      vector.print %269 : vector<13x7xi1>
      %273 = vector.broadcast %false : i1 to vector<7x7xi1>
      %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %269, %270, %273 : vector<13x7xi1>, vector<13x7xi1> into vector<7x7xi1>
      memref.store %c815937863_i64, %alloc_18[%c5, %c6] : memref<7x8xi64>
      %collapsed_40 = tensor.collapse_shape %6 [[0, 1]] : tensor<7x8xi32> into tensor<56xi32>
      %275 = arith.remsi %c656764588_i32, %c656764588_i32 : i32
      memref.alloca_scope  {
        %281 = math.rsqrt %16 : tensor<7x8xf16>
        %282 = index.maxu %c12, %c15
        %283 = arith.andi %c917497104_i64, %c1114033323_i64 : i64
        %284 = math.log1p %cst : f16
        %285 = vector.broadcast %c10 : index to vector<2xindex>
        %286 = vector.broadcast %true : i1 to vector<2xi1>
        vector.scatter %alloc_12[%c0, %c2] [%285], %286, %286 : memref<2x7xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
        vector.print %269 : vector<13x7xi1>
        %287 = arith.minui %c1002889823_i32, %c1002889823_i32 : i32
        %288 = math.ceil %17 : tensor<7x8xf16>
        %289 = arith.muli %true, %true : i1
        %290 = arith.addf %cst_1, %cst_1 : f32
        %291 = arith.addi %c815937863_i64, %c815937863_i64 : i64
        %cst_41 = arith.constant 6.016000e+04 : f16
        %292 = vector.splat %c7 : vector<13x7xindex>
        %293 = math.fpowi %14, %8 : tensor<13x7xf16>, tensor<13x7xi32>
        %294 = arith.cmpf une, %cst_3, %cst_3 : f16
        %295 = arith.mulf %cst_3, %cst_3 : f16
        %296 = vector.broadcast %true : i1 to vector<7xi1>
        %dest_42, %accumulated_value_43 = vector.scan <minsi>, %269, %296 {inclusive = true, reduction_dim = 0 : i64} : vector<13x7xi1>, vector<7xi1>
        %cst_44 = arith.constant 2.392000e+04 : f16
        %297 = index.castu %c12 : index to i32
        %298 = arith.shrsi %c815937863_i64, %c815937863_i64 : i64
        %299 = arith.xori %c1604127476_i32, %c1604127476_i32 : i32
        %300 = math.expm1 %12 : tensor<7x8xf32>
        %301 = vector.extract_strided_slice %269 {offsets = [1], sizes = [12], strides = [1]} : vector<13x7xi1> to vector<12x7xi1>
        %302 = arith.xori %false, %true : i1
        %303 = math.tanh %16 : tensor<7x8xf16>
        %304 = math.rsqrt %cst_3 : f16
        %305 = math.log10 %5 : tensor<13x7xf32>
        memref.store %false, %alloc_5[%c1, %c6] : memref<2x7xi1>
        %306 = vector.extract_strided_slice %301 {offsets = [1], sizes = [6], strides = [1]} : vector<12x7xi1> to vector<6x7xi1>
        %307 = arith.minui %true, %true : i1
        %308 = arith.shrsi %c815937863_i64, %c1618150045_i64 : i64
        %309 = vector.bitcast %306 : vector<6x7xi1> to vector<6x7xi1>
      }
      bufferization.dealloc_tensor %4 : tensor<13x7xi64>
      %276 = index.maxu %c10, %c5
      %277 = memref.alloca_scope  -> (memref<13x7xi16>) {
        %281 = index.sizeof
        %282 = vector.broadcast %true : i1 to vector<7x7xi1>
        %283 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %270, %270, %282 : vector<13x7xi1>, vector<13x7xi1> into vector<7x7xi1>
        %splat_41 = tensor.splat %c1583994261_i64 : tensor<13x7xi64>
        %284 = math.absf %cst_3 : f16
        %285 = arith.shrui %c1604127476_i32, %c1002889823_i32 : i32
        %alloc_42 = memref.alloc() : memref<13x7xf16>
        memref.copy %alloc_4, %alloc_42 : memref<13x7xf16> to memref<13x7xf16>
        %286 = tensor.empty() : tensor<8x8xf16>
        %287 = tensor.empty() : tensor<7x8xf16>
        %288 = linalg.matmul ins(%7, %286 : tensor<7x8xf16>, tensor<8x8xf16>) outs(%287 : tensor<7x8xf16>) -> tensor<7x8xf16>
        %289 = index.ceildivs %271, %c11
        %c0_i64 = arith.constant 0 : i64
        %290 = vector.transfer_read %alloc[%271, %c15], %c0_i64 : memref<2x7xi64>, vector<i64>
        %inserted_43 = tensor.insert %false into %10[%c1, %c2] : tensor<2x7xi1>
        %291 = vector.broadcast %cst_1 : f32 to vector<f32>
        %292 = vector.insertelement %cst_0, %291[] : vector<f32>
        %293 = arith.remsi %c1583994261_i64, %c815937863_i64 : i64
        %294 = math.log %14 : tensor<13x7xf16>
        %295 = math.floor %16 : tensor<7x8xf16>
        %296 = math.fma %14, %14, %14 : tensor<13x7xf16>
        %297 = math.ipowi %8, %8 : tensor<13x7xi32>
        %298 = arith.remsi %true, %true : i1
        affine.store %c815937863_i64, %alloc_6[%c6, %c1] : memref<7x8xi64>
        %299 = arith.minui %c1114033323_i64, %c815937863_i64 : i64
        %300 = memref.atomic_rmw addi %c656764588_i32, %alloc_13[%c0, %c1] : (i32, memref<2x7xi32>) -> i32
        %301 = vector.multi_reduction <or>, %270, %269 [] : vector<13x7xi1> to vector<13x7xi1>
        %302 = math.expm1 %7 : tensor<7x8xf16>
        %303 = math.cttz %2 : tensor<13x7xi32>
        %304 = arith.subi %c1114033323_i64, %c1583994261_i64 : i64
        %from_elements = tensor.from_elements %cst_3, %cst, %cst_3, %cst_2, %cst_2, %cst_2, %cst, %cst, %cst, %cst, %cst_2, %cst, %cst_3, %cst, %cst_3, %cst_2, %cst_3, %cst_3, %cst_2, %cst_3, %cst_2, %cst_2, %cst, %cst_2, %cst_3, %cst_3, %cst_2, %cst_2, %cst, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst_2, %cst_2, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_2, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst_2, %cst_2, %cst, %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %cst, %cst_3, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst_3, %cst, %cst_2, %cst_2, %cst_3, %cst_2, %cst_2, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst_2 : tensor<13x7xf16>
        %305 = arith.maxsi %c2236_i16, %c2236_i16 : i16
        memref.copy %alloc_16, %alloc_11 : memref<7x8xf32> to memref<7x8xf32>
        %306 = vector.broadcast %c1604127476_i32 : i32 to vector<i32>
        %307 = vector.transfer_write %306, %8[%c13, %arg2] : vector<i32>, tensor<13x7xi32>
        %308 = arith.shrui %c917497104_i64, %c0_i64 : i64
        %309 = math.fma %14, %14, %14 : tensor<13x7xf16>
        %310 = math.round %cst_2 : f16
        %311 = arith.divui %c656764588_i32, %c1002889823_i32 : i32
        memref.alloca_scope.return %alloc_8 : memref<13x7xi16>
      }
      scf.if %true {
        %281 = vector.broadcast %cst_3 : f16 to vector<2xf16>
        %282 = vector.reduction <add>, %281 : vector<2xf16> into f16
        %283 = math.absf %5 : tensor<13x7xf32>
        %284 = index.sizeof
        bufferization.dealloc_tensor %16 : tensor<7x8xf16>
        %285 = math.round %17 : tensor<7x8xf16>
        %286 = arith.divui %c815937863_i64, %c1618150045_i64 : i64
        %287 = arith.cmpi ult, %c1002889823_i32, %c1604127476_i32 : i32
        %288 = vector.load %alloc_10[%c3, %c0] : memref<7x8xi1>, vector<13x7xi1>
      } else {
        %cst_41 = arith.constant 1.000000e+00 : f16
        %cst_42 = arith.constant 0.000000e+00 : f16
        %281 = vector.transfer_read %14[%c13, %arg2], %cst_42 : tensor<13x7xf16>, vector<f16>
        %282 = bufferization.clone %alloc_7 : memref<7x8xi1> to memref<7x8xi1>
        %283 = math.cttz %false : i1
        %284 = math.round %17 : tensor<7x8xf16>
        %285 = arith.maxsi %c1604127476_i32, %c1604127476_i32 : i32
        %286 = vector.extract_strided_slice %269 {offsets = [10], sizes = [3], strides = [1]} : vector<13x7xi1> to vector<3x7xi1>
        %expanded_43 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<7x8xf16> into tensor<7x8x1xf16>
        %287 = arith.negf %cst_1 : f32
      }
      %278 = vector.broadcast %cst : f16 to vector<8xf16>
      %279 = vector.transfer_write %278, %7[%276, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xf16>, tensor<7x8xf16>
      %280 = tensor.empty() : tensor<2x7xi64>
      scf.reduce(%280)  : tensor<2x7xi64> {
      ^bb0(%arg3: tensor<2x7xi64>, %arg4: tensor<2x7xi64>):
        %281 = math.log10 %14 : tensor<13x7xf16>
        %282 = arith.xori %c1583994261_i64, %c917497104_i64 : i64
        %283 = arith.addi %false, %true : i1
        %284 = math.expm1 %cst_2 : f16
        %285 = arith.minf %cst_0, %cst_1 : f32
        %rank = tensor.rank %18 : tensor<7x13xi16>
        %286 = index.ceildivs %c11, %rank
        %c-3107_i16 = arith.constant -3107 : i16
        %287 = tensor.empty() : tensor<2x7xi64>
        scf.reduce.return %287 : tensor<2x7xi64>
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_18[%c3, %c15] : memref<7x8xi64>, vector<13xi64>
    affine.vector_store %21, %alloc_6[%c10, %c14] : memref<7x8xi64>, vector<13xi64>
    %22 = tensor.empty() : tensor<8xi32>
    %23 = tensor.empty() : tensor<i32>
    %24 = linalg.dot ins(%19, %22 : tensor<8xi32>, tensor<8xi32>) outs(%23 : tensor<i32>) -> tensor<i32>
    %25 = vector.broadcast %c2236_i16 : i16 to vector<i16>
    %26 = vector.transfer_write %25, %1[%c5, %c10] : vector<i16>, tensor<13x7xi16>
    %27 = index.sizeof
    %28 = math.exp %cst_2 : f16
    %alloc_19 = memref.alloc() : memref<7x8xi16>
    memref.copy %alloc_15, %alloc_19 : memref<7x8xi16> to memref<7x8xi16>
    %29 = arith.negf %cst_0 : f32
    %30 = index.floordivs %c12, %c5
    %31 = math.expm1 %5 : tensor<13x7xf32>
    %32 = arith.addi %c917497104_i64, %c815937863_i64 : i64
    memref.store %c1002889823_i32, %alloc_13[%c0, %c6] : memref<2x7xi32>
    %33 = math.rsqrt %7 : tensor<7x8xf16>
    %34 = math.cttz %c2236_i16 : i16
    %expanded = tensor.expand_shape %9 [[0], [1, 2]] : tensor<7x8xi1> into tensor<7x8x1xi1>
    vector.print %25 : vector<i16>
    %35 = vector.broadcast %c2236_i16 : i16 to vector<13xi16>
    %36 = vector.broadcast %true : i1 to vector<13xi1>
    %37 = vector.maskedload %alloc_15[%c5, %c6], %36, %35 : memref<7x8xi16>, vector<13xi1>, vector<13xi16> into vector<13xi16>
    %cast = tensor.cast %19 : tensor<8xi32> to tensor<?xi32>
    %38 = math.fpowi %16, %11 : tensor<7x8xf16>, tensor<7x8xi32>
    %39 = arith.negf %cst_3 : f16
    affine.store %cst_0, %alloc_16[%c0, %c6] : memref<7x8xf32>
    %40 = arith.addi %c2236_i16, %c2236_i16 : i16
    %41 = arith.andi %c917497104_i64, %c815937863_i64 : i64
    %42 = arith.cmpi ule, %true, %false : i1
    %43 = arith.xori %c1618150045_i64, %c1583994261_i64 : i64
    %44 = scf.execute_region -> memref<7x8xi16> {
      %267 = vector.broadcast %cst_1 : f32 to vector<7x8xf32>
      %268 = vector.fma %267, %267, %267 : vector<7x8xf32>
      %269 = arith.xori %c2236_i16, %c2236_i16 : i16
      memref.copy %alloc_7, %alloc_17 : memref<7x8xi1> to memref<7x8xi1>
      %270 = vector.multi_reduction <or>, %36, %36 [] : vector<13xi1> to vector<13xi1>
      %271 = vector.broadcast %c1002889823_i32 : i32 to vector<i32>
      %272 = vector.transfer_write %271, %8[%c15, %c4] : vector<i32>, tensor<13x7xi32>
      %273 = vector.create_mask %30, %c0 : vector<7x8xi1>
      %274 = arith.xori %c917497104_i64, %c1114033323_i64 : i64
      %alloc_40 = memref.alloc() : memref<1x8xi1>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_40, %expanded : memref<1x8xi1>, tensor<7x8x1xi1>) outs(%expanded : tensor<7x8x1xi1>) {
      ^bb0(%in: i1, %in_42: i1, %out: i1):
        %286 = arith.divui %c1583994261_i64, %c917497104_i64 : i64
        %cst_43 = arith.constant 1.000000e+00 : f32
        %cst_44 = arith.constant 0.000000e+00 : f32
        %287 = vector.transfer_read %5[%c8, %27], %cst_44 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<13x7xf32>, vector<7xf32>
        %288 = math.fpowi %cst_2, %c1002889823_i32 : f16, i32
        %289 = arith.maxf %cst, %cst_2 : f16
        %290 = arith.maxsi %c815937863_i64, %c1618150045_i64 : i64
        %291 = bufferization.clone %alloc_12 : memref<2x7xi1> to memref<2x7xi1>
        %292 = vector.broadcast %cst_1 : f32 to vector<13x7xf32>
        %293 = vector.broadcast %false : i1 to vector<13x7xi1>
        %294 = vector.broadcast %c1604127476_i32 : i32 to vector<13x7xi32>
        %295 = vector.gather %alloc_11[%c15, %c15] [%294], %293, %292 : memref<7x8xf32>, vector<13x7xi32>, vector<13x7xi1>, vector<13x7xf32> into vector<13x7xf32>
        %296 = math.rsqrt %cst_2 : f16
        %297 = math.round %cst_0 : f32
        %298 = index.divs %c8, %c14
        %299 = math.ceil %14 : tensor<13x7xf16>
        memref.copy %alloc_6, %alloc_18 : memref<7x8xi64> to memref<7x8xi64>
        %extracted_45 = tensor.extract %4[%c4, %c4] : tensor<13x7xi64>
        memref.copy %alloc_8, %alloc_14 : memref<13x7xi16> to memref<13x7xi16>
        %alloc_46 = memref.alloc() : memref<2x7xi64>
        memref.copy %alloc, %alloc_46 : memref<2x7xi64> to memref<2x7xi64>
        memref.copy %291, %alloc_12 : memref<2x7xi1> to memref<2x7xi1>
        %300 = arith.divui %c1604127476_i32, %c1604127476_i32 : i32
        %301 = arith.mulf %cst_3, %cst : f16
        %rank = tensor.rank %4 : tensor<13x7xi64>
        %302 = affine.apply affine_map<(d0, d1, d2) -> (-d1 + 32)>(%c8, %c2, %c14)
        %false_47 = arith.constant false
        %303 = index.divu %c6, %c14
        %304 = vector.broadcast %c11 : index to vector<8xindex>
        %305 = vector.broadcast %in : i1 to vector<8xi1>
        vector.scatter %291[%c1, %c4] [%304], %305, %305 : memref<2x7xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
        %306 = tensor.empty(%c15, %c15) : tensor<?x?xi16>
        bufferization.dealloc_tensor %3 : tensor<2x7xi64>
        %307 = index.sizeof
        %308 = arith.xori %extracted_45, %c1114033323_i64 : i64
        %309 = arith.remsi %c815937863_i64, %c917497104_i64 : i64
        %310 = arith.mulf %cst_3, %cst_3 : f16
        %311 = arith.divui %out, %false : i1
        %312 = memref.atomic_rmw muli %c1583994261_i64, %alloc[%c0, %c6] : (i64, memref<2x7xi64>) -> i64
        %313 = vector.splat %c15 : vector<2x7xindex>
        linalg.yield %out : i1
      } -> tensor<7x8x1xi1>
      %276 = vector.flat_transpose %37 {columns = 13 : i32, rows = 1 : i32} : vector<13xi16> -> vector<13xi16>
      %277 = math.log1p %cst_1 : f32
      %278 = tensor.empty() : tensor<1xi1>
      %279 = tensor.empty() : tensor<7xi1>
      %alloc_41 = memref.alloc() : memref<8x1x7xi1>
      %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%278, %279, %alloc_41 : tensor<1xi1>, tensor<7xi1>, memref<8x1x7xi1>) outs(%expanded : tensor<7x8x1xi1>) {
      ^bb0(%in: i1, %in_42: i1, %in_43: i1, %out: i1):
        %286 = math.copysign %cst_1, %cst_1 : f32
        %287 = math.cos %5 : tensor<13x7xf32>
        %288 = vector.shuffle %37, %35 [8, 12, 13, 14, 15, 16, 17, 22, 24] : vector<13xi16>, vector<13xi16>
        bufferization.dealloc_tensor %12 : tensor<7x8xf32>
        %289 = index.ceildivu %c8, %c1
        %290 = arith.divui %c1604127476_i32, %c656764588_i32 : i32
        %291 = vector.insertelement %out, %36[%c10 : index] : vector<13xi1>
        %292 = arith.minui %in_43, %in : i1
        %293 = math.log10 %cst : f16
        %extracted_44 = tensor.extract %6[%c1, %c1] : tensor<7x8xi32>
        %294 = arith.minui %c917497104_i64, %c917497104_i64 : i64
        bufferization.dealloc_tensor %cast : tensor<?xi32>
        %295 = arith.minf %cst_3, %cst_3 : f16
        %296 = vector.broadcast %cst_1 : f32 to vector<8x8xf32>
        %297 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %267, %268, %296 : vector<7x8xf32>, vector<7x8xf32> into vector<8x8xf32>
        %298 = math.expm1 %14 : tensor<13x7xf16>
        %299 = index.sizeof
        %300 = math.absf %7 : tensor<7x8xf16>
        %301 = math.tan %12 : tensor<7x8xf32>
        %302 = vector.broadcast %cst : f16 to vector<13xf16>
        %303 = vector.maskedload %alloc_4[%c7, %c2], %36, %302 : memref<13x7xf16>, vector<13xi1>, vector<13xf16> into vector<13xf16>
        %304 = arith.divui %in_42, %in_43 : i1
        %305 = index.castu %c917497104_i64 : i64 to index
        %306 = vector.broadcast %c4 : index to vector<8xindex>
        %307 = vector.broadcast %in_42 : i1 to vector<8xi1>
        %308 = vector.broadcast %c2236_i16 : i16 to vector<8xi16>
        vector.scatter %alloc_15[%c2, %c1] [%306], %307, %308 : memref<7x8xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %309 = vector.splat %c2236_i16 : vector<7x8xi16>
        %310 = arith.maxf %cst, %cst : f16
        %311 = arith.negf %cst_2 : f16
        %312 = math.log %14 : tensor<13x7xf16>
        %313 = bufferization.to_tensor %alloc_11 : memref<7x8xf32>
        affine.store %c2236_i16, %alloc_14[%c13, %c10] : memref<13x7xi16>
        %314 = vector.insertelement %c1604127476_i32, %271[] : vector<i32>
        %315 = arith.floordivsi %c2236_i16, %c2236_i16 : i16
        %316 = vector.broadcast %cst_3 : f16 to vector<f16>
        %317 = vector.transfer_write %316, %7[%c5, %c12] : vector<f16>, tensor<7x8xf16>
        %318 = math.absf %14 : tensor<13x7xf16>
        linalg.yield %true : i1
      } -> tensor<7x8x1xi1>
      %281 = index.add %30, %c2
      %282 = arith.subi %c656764588_i32, %c1604127476_i32 : i32
      %283 = arith.negf %cst_3 : f16
      %284 = index.sub %c15, %c8
      %285 = arith.mulf %cst_1, %cst_0 : f32
      scf.yield %alloc_15 : memref<7x8xi16>
    }
    %inserted = tensor.insert %c656764588_i32 into %2[%c12, %c3] : tensor<13x7xi32>
    %45 = math.exp %5 : tensor<13x7xf32>
    %46 = index.sizeof
    %cast_20 = tensor.cast %reduced : tensor<8xi32> to tensor<?xi32>
    %47 = math.absf %5 : tensor<13x7xf32>
    %48 = affine.max affine_map<(d0, d1, d2) -> (d2)>(%27, %c13, %27)
    %49 = index.floordivs %c7, %c11
    %50 = index.ceildivs %c6, %c13
    memref.copy %alloc_15, %44 : memref<7x8xi16> to memref<7x8xi16>
    %51 = arith.remf %cst, %cst_3 : f16
    memref.copy %alloc_7, %alloc_17 : memref<7x8xi1> to memref<7x8xi1>
    %52 = arith.divf %cst_0, %cst_1 : f32
    %53 = arith.remsi %c1114033323_i64, %c1618150045_i64 : i64
    %54 = math.floor %5 : tensor<13x7xf32>
    %55 = bufferization.clone %alloc_4 : memref<13x7xf16> to memref<13x7xf16>
    %56 = affine.for %arg1 = 0 to 6 iter_args(%arg2 = %10) -> (tensor<2x7xi1>) {
      affine.yield %10 : tensor<2x7xi1>
    }
    %57 = math.cos %cst : f16
    %58 = math.round %cst_3 : f16
    %59 = arith.xori %c1002889823_i32, %c1002889823_i32 : i32
    %60 = index.castu %46 : index to i32
    %61 = arith.minf %cst_1, %cst_1 : f32
    %62 = arith.maxf %cst_1, %cst_1 : f32
    %63 = vector.insertelement %c2236_i16, %37[%c4 : index] : vector<13xi16>
    %64 = arith.remsi %c917497104_i64, %c1583994261_i64 : i64
    %65 = arith.maxsi %c1618150045_i64, %c917497104_i64 : i64
    %66 = arith.ceildivsi %c656764588_i32, %c656764588_i32 : i32
    %67 = math.ipowi %13, %0 : tensor<7x8xi16>
    %68 = vector.broadcast %cst : f16 to vector<13xf16>
    %69 = vector.maskedload %55[%c7, %c4], %36, %68 : memref<13x7xf16>, vector<13xi1>, vector<13xf16> into vector<13xf16>
    %collapsed = tensor.collapse_shape %5 [[0, 1]] : tensor<13x7xf32> into tensor<91xf32>
    %70 = arith.minsi %false, %true : i1
    %71 = affine.for %arg1 = 0 to 82 iter_args(%arg2 = %c15) -> (index) {
      affine.yield %c1 : index
    }
    %72 = arith.minui %c2236_i16, %c2236_i16 : i16
    %73 = vector.splat %c917497104_i64 : vector<13x7xi64>
    %74 = index.floordivs %c11, %c7
    %75 = math.cttz %15 : tensor<7x8xi32>
    %76 = arith.minf %cst_2, %cst_3 : f16
    %inserted_21 = tensor.insert %c656764588_i32 into %24[] : tensor<i32>
    vector.print %36 : vector<13xi1>
    %77 = vector.broadcast %c1002889823_i32 : i32 to vector<13x7xi32>
    %78 = vector.broadcast %true : i1 to vector<13x7xi1>
    %79 = vector.gather %2[%c1, %c13] [%77], %78, %77 : tensor<13x7xi32>, vector<13x7xi32>, vector<13x7xi1>, vector<13x7xi32> into vector<13x7xi32>
    %80 = index.ceildivs %50, %c6
    %81 = math.round %cst_2 : f16
    %cst_22 = arith.constant 1.67021837E+9 : f32
    %82 = vector.broadcast %c656764588_i32 : i32 to vector<i32>
    %83 = vector.transfer_write %82, %15[%46, %c6] : vector<i32>, tensor<7x8xi32>
    %84 = arith.remf %cst_1, %cst_0 : f32
    %85 = math.fpowi %cst_3, %c1002889823_i32 : f16, i32
    %86 = arith.ceildivsi %true, %true : i1
    %87 = memref.alloca_scope  -> (i64) {
      %267 = vector.reduction <mul>, %68 : vector<13xf16> into f16
      %268 = tensor.empty() : tensor<7x8xi32>
      %mapped_40 = linalg.map ins(%15, %6 : tensor<7x8xi32>, tensor<7x8xi32>) outs(%268 : tensor<7x8xi32>)
        (%in: i32, %in_46: i32) {
          %296 = math.sqrt %cst : f16
          %c0_i16 = arith.constant 0 : i16
          %c0_i16_47 = arith.constant 0 : i16
          %297 = vector.transfer_read %alloc_14[%c5, %c14], %c0_i16_47 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<13x7xi16>, vector<13xi16>
          %298 = index.ceildivs %80, %c5
          %299 = arith.maxsi %c1583994261_i64, %c815937863_i64 : i64
          %300 = arith.addi %true, %false : i1
          %301 = vector.load %alloc_6[%c0, %c7] : memref<7x8xi64>, vector<7x8xi64>
          memref.store %c0_i16, %alloc_15[%c4, %c3] : memref<7x8xi16>
          %302 = index.ceildivs %74, %c6
          memref.assume_alignment %alloc_10, 4 : memref<7x8xi1>
          %303 = math.log1p %cst_3 : f16
          %304 = vector.multi_reduction <minui>, %79, %in_46 [0, 1] : vector<13x7xi32> to i32
          %305 = math.round %5 : tensor<13x7xf32>
          %306 = math.round %16 : tensor<7x8xf16>
          %307 = vector.splat %c8 : vector<2x7xindex>
          %308 = math.cos %cst_2 : f16
          %309 = arith.addf %cst_3, %cst_3 : f16
          %310 = arith.minui %c1604127476_i32, %in : i32
          %splat_48 = tensor.splat %c1114033323_i64 : tensor<2x7xi64>
          %311 = math.round %7 : tensor<7x8xf16>
          %312 = math.log %cst_0 : f32
          %inserted_49 = tensor.insert %c815937863_i64 into %3[%c1, %c1] : tensor<2x7xi64>
          %313 = bufferization.to_tensor %alloc_12 : memref<2x7xi1>
          %314 = bufferization.to_memref %1 : memref<13x7xi16>
          %315 = math.log %cst_2 : f16
          bufferization.dealloc_tensor %13 : tensor<7x8xi16>
          %316 = math.atan2 %5, %5 : tensor<13x7xf32>
          %317 = arith.muli %c1114033323_i64, %c815937863_i64 : i64
          %318 = arith.xori %c2236_i16, %c2236_i16 : i16
          %319 = vector.insertelement %c1618150045_i64, %21[%c3 : index] : vector<13xi64>
          %320 = arith.ceildivsi %true, %true : i1
          %321 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %36, %36, %true : vector<13xi1>, vector<13xi1> into i1
          %rank = tensor.rank %14 : tensor<13x7xf16>
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %269 = bufferization.to_tensor %alloc_14 : memref<13x7xi16>
      %generated_41 = tensor.generate %30, %c5 {
      ^bb0(%arg1: index, %arg2: index):
        %296 = arith.divsi %c1002889823_i32, %c1002889823_i32 : i32
        %297 = math.round %cst_2 : f16
        %298 = arith.minui %true, %true : i1
        %299 = vector.broadcast %false : i1 to vector<13x13xi1>
        %300 = vector.outerproduct %36, %36, %299 {kind = #vector.kind<and>} : vector<13xi1>, vector<13xi1>
        tensor.yield %c815937863_i64 : i64
      } : tensor<?x?xi64>
      bufferization.dealloc_tensor %13 : tensor<7x8xi16>
      %270 = vector.broadcast %cst : f16 to vector<7x8xf16>
      %271 = vector.broadcast %true : i1 to vector<7x8xi1>
      %272 = vector.broadcast %c1604127476_i32 : i32 to vector<7x8xi32>
      %273 = vector.gather %alloc_4[%30, %48] [%272], %271, %270 : memref<13x7xf16>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xf16> into vector<7x8xf16>
      %274 = math.round %17 : tensor<7x8xf16>
      %275 = math.round %12 : tensor<7x8xf32>
      %276 = arith.maxf %cst, %cst_2 : f16
      %277 = math.atan2 %12, %12 : tensor<7x8xf32>
      %278 = index.castu %c5 : index to i32
      %279 = vector.load %alloc[%c0, %c4] : memref<2x7xi64>, vector<7x8xi64>
      %true_42 = index.bool.constant true
      %280 = arith.minf %cst_0, %cst_1 : f32
      %281 = vector.shuffle %69, %68 [0, 3, 4, 5, 6, 7, 8, 10, 12, 17, 22, 23] : vector<13xf16>, vector<13xf16>
      %282 = math.ipowi %18, %18 : tensor<7x13xi16>
      %283 = arith.minf %cst_2, %cst_3 : f16
      %c-19905_i16 = arith.constant -19905 : i16
      %284 = math.absf %14 : tensor<13x7xf16>
      %285 = vector.create_mask %c14, %c14 : vector<7x8xi1>
      %286 = arith.addi %false, %false : i1
      %expanded_43 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<7x8xi16> into tensor<7x8x1xi16>
      %287 = vector.flat_transpose %68 {columns = 13 : i32, rows = 1 : i32} : vector<13xf16> -> vector<13xf16>
      %288 = math.absf %cst : f16
      %289 = arith.negf %cst_3 : f16
      %false_44 = index.bool.constant false
      %290 = arith.divui %c1604127476_i32, %c656764588_i32 : i32
      %291 = arith.addi %c815937863_i64, %c815937863_i64 : i64
      %292 = math.log10 %7 : tensor<7x8xf16>
      %293 = vector.broadcast %cst_2 : f16 to vector<13x13xf16>
      %294 = vector.outerproduct %68, %68, %293 {kind = #vector.kind<mul>} : vector<13xf16>, vector<13xf16>
      %alloca_45 = memref.alloca() : memref<13x7xf32>
      %295 = arith.floordivsi %c917497104_i64, %c815937863_i64 : i64
      memref.alloca_scope.return %c815937863_i64 : i64
    }
    %88 = math.cttz %false : i1
    %89 = index.maxu %48, %74
    %inserted_23 = tensor.insert %c656764588_i32 into %reduced[%c4] : tensor<8xi32>
    %90 = vector.extract_strided_slice %37 {offsets = [6], sizes = [2], strides = [1]} : vector<13xi16> to vector<2xi16>
    %91 = vector.broadcast %cst : f16 to vector<13x13xf16>
    %92 = vector.outerproduct %69, %68, %91 {kind = #vector.kind<maxf>} : vector<13xf16>, vector<13xf16>
    %93 = vector.broadcast %cst : f16 to vector<7xf16>
    %94 = vector.broadcast %true : i1 to vector<7xi1>
    %95 = vector.maskedload %alloc_4[%c2, %c5], %94, %93 : memref<13x7xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
    %96 = bufferization.clone %alloc_7 : memref<7x8xi1> to memref<7x8xi1>
    %97 = math.cos %14 : tensor<13x7xf16>
    %98 = vector.reduction <mul>, %94 : vector<7xi1> into i1
    %99 = arith.minf %cst_3, %cst_3 : f16
    %c2048925934_i64 = arith.constant 2048925934 : i64
    %100 = tensor.empty() : tensor<8x13xi32>
    %101 = tensor.empty() : tensor<7x13xi32>
    %102 = linalg.matmul ins(%6, %100 : tensor<7x8xi32>, tensor<8x13xi32>) outs(%101 : tensor<7x13xi32>) -> tensor<7x13xi32>
    %103 = math.fma %12, %12, %12 : tensor<7x8xf32>
    %104 = arith.minui %c2236_i16, %c2236_i16 : i16
    %105 = vector.bitcast %35 : vector<13xi16> to vector<13xi16>
    %106 = math.expm1 %12 : tensor<7x8xf32>
    bufferization.dealloc_tensor %101 : tensor<7x13xi32>
    %107 = arith.minsi %c1583994261_i64, %c1618150045_i64 : i64
    %splat = tensor.splat %c656764588_i32 : tensor<2x7xi32>
    memref.assume_alignment %alloc_13, 1 : memref<2x7xi32>
    %108 = arith.shrsi %c2236_i16, %c2236_i16 : i16
    %109 = math.absi %13 : tensor<7x8xi16>
    %110 = index.maxu %c8, %c9
    %111 = vector.shuffle %78, %78 [2, 6, 9, 12, 13, 17, 20, 22, 24] : vector<13x7xi1>, vector<13x7xi1>
    %112 = vector.create_mask %c15, %c9 : vector<2x7xi1>
    %113 = math.tanh %5 : tensor<13x7xf32>
    bufferization.dealloc_tensor %1 : tensor<13x7xi16>
    %114 = arith.remf %cst_3, %cst : f16
    %115 = vector.broadcast %c2236_i16 : i16 to vector<8xi16>
    %116 = vector.transfer_write %115, %0[%c3, %c10] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi16>, tensor<7x8xi16>
    %117 = arith.maxui %c1604127476_i32, %c656764588_i32 : i32
    %splat_24 = tensor.splat %false : tensor<2x7xi1>
    %alloca = memref.alloca() : memref<2x7xf16>
    %c-8684_i16 = arith.constant -8684 : i16
    %118 = arith.minf %cst_3, %cst_2 : f16
    %119 = math.cos %cst_0 : f32
    %120 = math.log1p %cst_3 : f16
    %121 = arith.divf %cst_3, %cst : f16
    %122 = math.rsqrt %7 : tensor<7x8xf16>
    %123 = math.fma %cst_2, %cst, %cst_2 : f16
    %124 = vector.transpose %69, [0] : vector<13xf16> to vector<13xf16>
    %125 = math.exp %cst_1 : f32
    %126 = vector.broadcast %c1002889823_i32 : i32 to vector<7xi32>
    %127 = vector.insert %126, %77 [9] : vector<7xi32> into vector<13x7xi32>
    %128 = arith.addi %c1583994261_i64, %c917497104_i64 : i64
    %129 = vector.broadcast %c2236_i16 : i16 to vector<8xi16>
    vector.transfer_write %129, %44[%c6, %c12] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi16>, memref<7x8xi16>
    %130 = vector.broadcast %c815937863_i64 : i64 to vector<7xi64>
    %131 = vector.maskedload %alloc_6[%c3, %c4], %94, %130 : memref<7x8xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
    %132 = math.cttz %22 : tensor<8xi32>
    memref.copy %96, %alloc_7 : memref<7x8xi1> to memref<7x8xi1>
    %133 = math.absf %7 : tensor<7x8xf16>
    %134 = index.ceildivu %c4, %110
    %135 = math.round %collapsed : tensor<91xf32>
    %136 = vector.maskedload %alloc_12[%c1, %c4], %94, %94 : memref<2x7xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
    %137 = arith.minui %false, %false : i1
    %138 = vector.flat_transpose %37 {columns = 13 : i32, rows = 1 : i32} : vector<13xi16> -> vector<13xi16>
    %139 = arith.minsi %c815937863_i64, %c1114033323_i64 : i64
    %140 = math.log %14 : tensor<13x7xf16>
    %141 = vector.broadcast %cst_0 : f32 to vector<2x7xf32>
    %142 = vector.fma %141, %141, %141 : vector<2x7xf32>
    %143 = vector.broadcast %cst_2 : f16 to vector<f16>
    %144 = vector.transfer_write %143, %17[%50, %c8] : vector<f16>, tensor<7x8xf16>
    %145 = math.floor %12 : tensor<7x8xf32>
    %146 = arith.subi %c1604127476_i32, %c1604127476_i32 : i32
    %147 = bufferization.to_tensor %44 : memref<7x8xi16>
    %splat_25 = tensor.splat %87 : tensor<13x7xi64>
    %148 = math.sqrt %5 : tensor<13x7xf32>
    memref.copy %alloc_11, %alloc_16 : memref<7x8xf32> to memref<7x8xf32>
    %149 = arith.subi %false, %true : i1
    memref.store %c1114033323_i64, %alloc_6[%c2, %c6] : memref<7x8xi64>
    %150 = math.tan %cst_0 : f32
    %alloc_26 = memref.alloc() : memref<2x7xf32>
    %151 = vector.broadcast %cst_0 : f32 to vector<7x8xf32>
    %152 = vector.broadcast %true : i1 to vector<7x8xi1>
    %153 = vector.broadcast %c1604127476_i32 : i32 to vector<7x8xi32>
    %154 = vector.gather %alloc_26[%110, %c5] [%153], %152, %151 : memref<2x7xf32>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xf32> into vector<7x8xf32>
    %155 = arith.ceildivsi %true, %false : i1
    %156 = vector.multi_reduction <xor>, %126, %126 [] : vector<7xi32> to vector<7xi32>
    %157 = arith.divui %c1583994261_i64, %c1114033323_i64 : i64
    %158 = math.exp2 %cst_1 : f32
    %159 = math.rsqrt %14 : tensor<13x7xf16>
    %160 = arith.negf %cst : f16
    %161 = vector.insertelement %cst_3, %143[] : vector<f16>
    %162 = vector.extract_strided_slice %79 {offsets = [8], sizes = [3], strides = [1]} : vector<13x7xi32> to vector<3x7xi32>
    %163 = index.castu %c1002889823_i32 : i32 to index
    %164 = affine.load %alloc_17[%c0, %c3] : memref<7x8xi1>
    %165 = vector.multi_reduction <minf>, %93, %cst [0] : vector<7xf16> to f16
    %166 = tensor.empty() : tensor<2x7xi32>
    %167 = math.fma %14, %14, %14 : tensor<13x7xf16>
    %168 = vector.splat %c5 : vector<7x8xindex>
    %169 = index.maxu %89, %c7
    %true_27 = index.bool.constant true
    %c1_i32 = arith.constant 1 : i32
    %170 = vector.transfer_read %22[%c2], %c1_i32 : tensor<8xi32>, vector<i32>
    %alloca_28 = memref.alloca() : memref<2x7xi16>
    %171 = arith.maxf %cst_3, %cst_2 : f16
    %172 = vector.broadcast %c656764588_i32 : i32 to vector<7x7xi32>
    %173 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %77, %79, %172 : vector<13x7xi32>, vector<13x7xi32> into vector<7x7xi32>
    %174 = arith.remf %cst, %165 : f16
    %175 = math.ctpop %c1114033323_i64 : i64
    %176 = math.tanh %165 : f16
    %177 = arith.minf %cst_0, %cst_0 : f32
    memref.alloca_scope  {
      %267 = vector.broadcast %cst_0 : f32 to vector<7xf32>
      %268 = vector.maskedload %alloc_11[%c5, %c7], %136, %267 : memref<7x8xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
      %269 = index.sizeof
      %270 = math.atan2 %16, %7 : tensor<7x8xf16>
      memref.assume_alignment %alloc_10, 2 : memref<7x8xi1>
      %271 = index.floordivs %27, %27
      %272 = vector.reduction <and>, %36 : vector<13xi1> into i1
      %273 = math.log10 %14 : tensor<13x7xf16>
      %274 = math.exp %7 : tensor<7x8xf16>
      %275 = vector.extract_strided_slice %129 {offsets = [1], sizes = [6], strides = [1]} : vector<8xi16> to vector<6xi16>
      %276 = arith.cmpf ugt, %cst_0, %cst_1 : f32
      %277 = math.sqrt %14 : tensor<13x7xf16>
      %278 = tensor.empty() : tensor<13x8xi32>
      %279 = linalg.matmul ins(%8, %6 : tensor<13x7xi32>, tensor<7x8xi32>) outs(%278 : tensor<13x8xi32>) -> tensor<13x8xi32>
      %280 = affine.load %alloc_14[%c14, %c12] : memref<13x7xi16>
      %281 = math.tanh %17 : tensor<7x8xf16>
      %false_40 = index.bool.constant false
      %inserted_41 = tensor.insert %280 into %18[%c2, %c3] : tensor<7x13xi16>
      %282 = math.tanh %cst : f16
      %splat_42 = tensor.splat %c1_i32 : tensor<2x7xi32>
      %283 = vector.broadcast %true_27 : i1 to vector<i1>
      %284 = vector.transfer_write %283, %9[%c9, %c15] : vector<i1>, tensor<7x8xi1>
      %285 = vector.broadcast %cst_1 : f32 to vector<2x7xf32>
      %286 = vector.fma %285, %141, %285 : vector<2x7xf32>
      %287 = math.ceil %165 : f16
      affine.store %c2236_i16, %alloc_14[%c3, %c11] : memref<13x7xi16>
      %288 = index.castu %269 : index to i32
      %generated_43 = tensor.generate %74 {
      ^bb0(%arg1: index, %arg2: index):
        %296 = tensor.empty() : tensor<7x7xi16>
        %297 = linalg.matmul ins(%18, %1 : tensor<7x13xi16>, tensor<13x7xi16>) outs(%296 : tensor<7x7xi16>) -> tensor<7x7xi16>
        %false_45 = index.bool.constant false
        %298 = arith.maxf %cst_0, %cst_0 : f32
        %299 = math.round %cst_1 : f32
        tensor.yield %c1002889823_i32 : i32
      } : tensor<?x8xi32>
      %289 = math.cttz %4 : tensor<13x7xi64>
      %290 = vector.splat %280 : vector<2x7xi16>
      %291 = vector.extract %37[8] : vector<13xi16>
      memref.assume_alignment %alloc_5, 8 : memref<2x7xi1>
      %292 = arith.cmpf oeq, %165, %cst_3 : f16
      %293 = math.log1p %cst : f16
      %alloc_44 = memref.alloc() : memref<2x7xf16>
      %294 = vector.broadcast %165 : f16 to vector<7x8xf16>
      %295 = vector.gather %alloc_44[%c8, %c12] [%153], %152, %294 : memref<2x7xf16>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xf16> into vector<7x8xf16>
      vector.print %151 : vector<7x8xf32>
    }
    %178 = tensor.empty() : tensor<2x7xf32>
    %179 = vector.gather %178[%c1, %c8] [%153], %152, %154 : tensor<2x7xf32>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xf32> into vector<7x8xf32>
    %180 = affine.for %arg1 = 0 to 18 iter_args(%arg2 = %true) -> (i1) {
      affine.yield %false : i1
    }
    %181 = arith.cmpf uno, %165, %cst : f16
    %182 = index.sizeof
    %183 = math.fma %12, %12, %12 : tensor<7x8xf32>
    %184 = index.mul %50, %49
    %185 = math.tanh %16 : tensor<7x8xf16>
    %186 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<7x8x1xi1>) {
    ^bb0(%out: i1):
      bufferization.dealloc_tensor %2 : tensor<13x7xi32>
      %267 = tensor.empty() : tensor<7x8xi16>
      %mapped_40 = linalg.map ins(%0 : tensor<7x8xi16>) outs(%267 : tensor<7x8xi16>)
        (%in: i16) {
          %292 = affine.min affine_map<(d0, d1, d2) -> (d0, d1 * 2)>(%27, %110, %74)
          %293 = index.sizeof
          %294 = arith.remsi %c1114033323_i64, %c815937863_i64 : i64
          %295 = math.absi %9 : tensor<7x8xi1>
          %false_42 = index.bool.constant false
          bufferization.dealloc_tensor %splat_25 : tensor<13x7xi64>
          %296 = arith.divsi %c1114033323_i64, %c1618150045_i64 : i64
          %297 = math.log10 %cst_1 : f32
          %298 = math.tanh %12 : tensor<7x8xf32>
          %299 = math.copysign %178, %178 : tensor<2x7xf32>
          %300 = math.log %5 : tensor<13x7xf32>
          %301 = index.ceildivu %30, %74
          %rank = tensor.rank %5 : tensor<13x7xf32>
          %302 = arith.remf %cst_3, %cst_2 : f16
          %303 = index.ceildivs %134, %293
          %304 = bufferization.clone %alloc_11 : memref<7x8xf32> to memref<7x8xf32>
          %305 = arith.negf %cst : f16
          %alloca_43 = memref.alloca() : memref<7x8xf16>
          %306 = bufferization.to_tensor %alloc_26 : memref<2x7xf32>
          %307 = memref.atomic_rmw assign %cst_0, %alloc_26[%c0, %c1] : (f32, memref<2x7xf32>) -> f32
          %308 = arith.addi %false, %out : i1
          %309 = math.log10 %5 : tensor<13x7xf32>
          %310 = index.maxu %c15, %169
          %311 = math.round %7 : tensor<7x8xf16>
          %312 = vector.multi_reduction <mul>, %69, %165 [0] : vector<13xf16> to f16
          %313 = vector.insertelement %c2236_i16, %115[%301 : index] : vector<8xi16>
          %314 = vector.multi_reduction <maxui>, %153, %153 [] : vector<7x8xi32> to vector<7x8xi32>
          %315 = math.floor %cst_0 : f32
          %316 = arith.negf %cst_0 : f32
          %317 = index.ceildivu %169, %184
          %318 = vector.extract %130[6] : vector<7xi64>
          %319 = vector.splat %50 : vector<13x7xindex>
          %c0_i16_44 = arith.constant 0 : i16
          linalg.yield %c0_i16_44 : i16
        }
      affine.store %cst_2, %55[%c2, %c10] : memref<13x7xf16>
      %cast_41 = tensor.cast %16 : tensor<7x8xf16> to tensor<?x?xf16>
      %268 = bufferization.clone %alloc_8 : memref<13x7xi16> to memref<13x7xi16>
      %269 = math.log1p %5 : tensor<13x7xf32>
      %270 = arith.minui %c1114033323_i64, %87 : i64
      %271 = vector.splat %80 : vector<7x8xindex>
      memref.alloca_scope  {
        %292 = math.fpowi %12, %6 : tensor<7x8xf32>, tensor<7x8xi32>
        %293 = math.ctpop %c656764588_i32 : i32
        %294 = vector.broadcast %165 : f16 to vector<f16>
        vector.transfer_write %294, %alloc_4[%c14, %c5] : vector<f16>, memref<13x7xf16>
        %cst_42 = arith.constant 1.000000e+00 : f32
        %295 = vector.transfer_read %alloc_9[%c14, %27], %cst_42 : memref<13x7xf32>, vector<2xf32>
        %296 = vector.reduction <add>, %95 : vector<7xf16> into f16
        %297 = arith.xori %c1_i32, %c1002889823_i32 : i32
        %splat_43 = tensor.splat %c656764588_i32 : tensor<7x8xi32>
        %cst_44 = arith.constant 0x4E39584F : f32
        %298 = arith.cmpf ule, %cst_0, %cst_1 : f32
        %299 = arith.minsi %c656764588_i32, %c1_i32 : i32
        %300 = vector.splat %false : vector<7x8xi1>
        %301 = math.tanh %12 : tensor<7x8xf32>
        %302 = vector.broadcast %c1618150045_i64 : i64 to vector<13xi64>
        vector.transfer_write %302, %alloc_6[%c9, %46] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xi64>, memref<7x8xi64>
        %303 = bufferization.to_memref %11 : memref<7x8xi32>
        %304 = math.cttz %c1618150045_i64 : i64
        %305 = vector.maskedload %96[%c3, %c1], %136, %94 : memref<7x8xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
        %306 = arith.divui %c1604127476_i32, %c656764588_i32 : i32
        %307 = tensor.empty() : tensor<8x13xi32>
        %308 = tensor.empty() : tensor<7x13xi32>
        %309 = linalg.matmul ins(%splat_43, %307 : tensor<7x8xi32>, tensor<8x13xi32>) outs(%308 : tensor<7x13xi32>) -> tensor<7x13xi32>
        %310 = math.absf %14 : tensor<13x7xf16>
        %311 = vector.broadcast %c1604127476_i32 : i32 to vector<2x7xi32>
        %312 = vector.gather %alloc_13[%163, %163] [%311], %112, %311 : memref<2x7xi32>, vector<2x7xi32>, vector<2x7xi1>, vector<2x7xi32> into vector<2x7xi32>
        %313 = vector.extract_strided_slice %162 {offsets = [1], sizes = [2], strides = [1]} : vector<3x7xi32> to vector<2x7xi32>
        %314 = math.floor %165 : f16
        %cst_45 = arith.constant 1.000000e+00 : f16
        %cst_46 = arith.constant 0.000000e+00 : f16
        %315 = vector.transfer_read %55[%c11, %182], %cst_46 : memref<13x7xf16>, vector<f16>
        memref.assume_alignment %96, 2 : memref<7x8xi1>
        %316 = math.floor %17 : tensor<7x8xf16>
        %317 = math.tanh %cst_2 : f16
        memref.copy %alloc_4, %55 : memref<13x7xf16> to memref<13x7xf16>
        %318 = tensor.empty() : tensor<91xi32>
        %319 = math.fpowi %collapsed, %318 : tensor<91xf32>, tensor<91xi32>
        %320 = math.fpowi %12, %splat_43 : tensor<7x8xf32>, tensor<7x8xi32>
        %321 = math.tanh %178 : tensor<2x7xf32>
        %322 = math.ipowi %22, %reduced : tensor<8xi32>
        %323 = tensor.empty() : tensor<13x8xf16>
        %324 = linalg.matmul ins(%14, %7 : tensor<13x7xf16>, tensor<7x8xf16>) outs(%323 : tensor<13x8xf16>) -> tensor<13x8xf16>
      }
      %272 = vector.create_mask %c10, %c9 : vector<13x7xi1>
      %273 = vector.broadcast %c3 : index to vector<7xindex>
      %274 = vector.broadcast %cst_0 : f32 to vector<7xf32>
      vector.scatter %alloc_11[%c4, %c5] [%273], %94, %274 : memref<7x8xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
      memref.copy %alloc_5, %alloc_12 : memref<2x7xi1> to memref<2x7xi1>
      %275 = math.floor %cst_2 : f16
      %276 = arith.remf %cst_2, %165 : f16
      %277 = arith.remsi %c1583994261_i64, %87 : i64
      %278 = arith.minsi %c1604127476_i32, %c1604127476_i32 : i32
      %c0_i16 = arith.constant 0 : i16
      %279 = vector.transfer_read %268[%48, %c8], %c0_i16 : memref<13x7xi16>, vector<i16>
      %280 = vector.reduction <add>, %136 : vector<7xi1> into i1
      %281 = index.divs %182, %c15
      %282 = index.ceildivu %c0, %50
      %283 = arith.mulf %cst_2, %cst : f16
      memref.store %out, %alloc_12[%c0, %c0] : memref<2x7xi1>
      %284 = index.sizeof
      %285 = vector.reduction <minui>, %37 : vector<13xi16> into i16
      %286 = math.log10 %cst_1 : f32
      %287 = arith.divf %165, %cst_2 : f16
      %288 = vector.splat %165 : vector<2x7xf16>
      %289 = math.exp2 %12 : tensor<7x8xf32>
      vector.print %105 : vector<13xi16>
      %290 = vector.extract_strided_slice %151 {offsets = [2], sizes = [3], strides = [1]} : vector<7x8xf32> to vector<3x8xf32>
      %291 = arith.remsi %c917497104_i64, %c1618150045_i64 : i64
      scf.execute_region {
        %292 = arith.remsi %c2236_i16, %c2236_i16 : i16
        %293 = math.absf %178 : tensor<2x7xf32>
        %294 = math.absi %transposed : tensor<7x13xi16>
        %295 = arith.remsi %c1583994261_i64, %c815937863_i64 : i64
        %296 = arith.addi %c0_i16, %c2236_i16 : i16
        memref.assume_alignment %alloc_6, 1 : memref<7x8xi64>
        %297 = math.cos %14 : tensor<13x7xf16>
        memref.assume_alignment %96, 8 : memref<7x8xi1>
        %298 = math.round %cst : f16
        %299 = arith.remf %cst, %cst : f16
        %300 = tensor.empty() : tensor<8x8xi16>
        %301 = tensor.empty() : tensor<7x8xi16>
        %302 = linalg.matmul ins(%0, %300 : tensor<7x8xi16>, tensor<8x8xi16>) outs(%301 : tensor<7x8xi16>) -> tensor<7x8xi16>
        %303 = math.fpowi %5, %8 : tensor<13x7xf32>, tensor<13x7xi32>
        %304 = vector.transpose %151, [1, 0] : vector<7x8xf32> to vector<8x7xf32>
        %splat_42 = tensor.splat %cst_0 : tensor<2x7xf32>
        %305 = vector.multi_reduction <or>, %36, %36 [] : vector<13xi1> to vector<13xi1>
        %expanded_43 = tensor.expand_shape %166 [[0], [1, 2]] : tensor<2x7xi32> into tensor<2x7x1xi32>
        scf.yield
      }
      linalg.yield %true : i1
    } -> tensor<7x8x1xi1>
    %187 = math.log1p %cst_2 : f16
    %188 = arith.shrsi %c656764588_i32, %c1604127476_i32 : i32
    %189 = bufferization.clone %alloc_14 : memref<13x7xi16> to memref<13x7xi16>
    %expanded_29 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<13x7xi16> into tensor<13x7x1xi16>
    %true_30 = index.bool.constant true
    %190 = math.fpowi %12, %11 : tensor<7x8xf32>, tensor<7x8xi32>
    %191 = arith.minf %165, %cst_3 : f16
    %192 = tensor.empty() : tensor<7x2xi64>
    %193 = tensor.empty() : tensor<2x2xi64>
    %194 = linalg.matmul ins(%3, %192 : tensor<2x7xi64>, tensor<7x2xi64>) outs(%193 : tensor<2x2xi64>) -> tensor<2x2xi64>
    %195 = math.absf %16 : tensor<7x8xf16>
    %196 = bufferization.to_tensor %alloc_18 : memref<7x8xi64>
    %collapsed_31 = tensor.collapse_shape %1 [[0, 1]] : tensor<13x7xi16> into tensor<91xi16>
    %197 = vector.extract %93[3] : vector<7xf16>
    %198 = arith.addf %cst_1, %cst_0 : f32
    %199 = vector.multi_reduction <mul>, %136, %94 [] : vector<7xi1> to vector<7xi1>
    %200 = math.cos %14 : tensor<13x7xf16>
    %201 = math.roundeven %17 : tensor<7x8xf16>
    %202 = math.atan2 %12, %12 : tensor<7x8xf32>
    %203 = tensor.empty() : tensor<7x8xi64>
    %mapped = linalg.map ins(%196 : tensor<7x8xi64>) outs(%203 : tensor<7x8xi64>)
      (%in: i64) {
        %267 = arith.remui %c1114033323_i64, %87 : i64
        %268 = arith.xori %87, %c1583994261_i64 : i64
        %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%18, %expanded_29 : tensor<7x13xi16>, tensor<13x7x1xi16>) outs(%expanded_29 : tensor<13x7x1xi16>) {
        ^bb0(%in_41: i16, %in_42: i16, %out: i16):
          %298 = vector.extract %130[5] : vector<7xi64>
          %299 = arith.minui %164, %164 : i1
          %cast_43 = tensor.cast %203 : tensor<7x8xi64> to tensor<?x?xi64>
          %300 = math.log1p %12 : tensor<7x8xf32>
          %expanded_44 = tensor.expand_shape %16 [[0], [1, 2]] : tensor<7x8xf16> into tensor<7x8x1xf16>
          %301 = tensor.empty() : tensor<7x8xi1>
          %302 = arith.maxf %cst_2, %165 : f16
          %303 = math.exp %16 : tensor<7x8xf16>
          %rank = tensor.rank %178 : tensor<2x7xf32>
          memref.store %cst_1, %alloc_16[%c0, %c6] : memref<7x8xf32>
          %304 = vector.extract %142[1] : vector<2x7xf32>
          %305 = vector.reduction <add>, %93 : vector<7xf16> into f16
          %306 = math.fma %5, %5, %5 : tensor<13x7xf32>
          %307 = math.atan2 %cst_3, %165 : f16
          %308 = arith.xori %c917497104_i64, %c1618150045_i64 : i64
          %309 = math.log1p %cst_0 : f32
          %expanded_45 = tensor.expand_shape %203 [[0], [1, 2]] : tensor<7x8xi64> into tensor<7x8x1xi64>
          %310 = index.sizeof
          %311 = arith.remf %cst_0, %cst_1 : f32
          %312 = index.divs %c7, %169
          %313 = arith.xori %in, %in : i64
          %cast_46 = tensor.cast %splat_25 : tensor<13x7xi64> to tensor<?x?xi64>
          bufferization.dealloc_tensor %2 : tensor<13x7xi32>
          %314 = math.log %cst_2 : f16
          %315 = math.cttz %1 : tensor<13x7xi16>
          %expanded_47 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<7x8xi32> into tensor<7x8x1xi32>
          %316 = bufferization.to_tensor %alloc_6 : memref<7x8xi64>
          %317 = math.fpowi %7, %11 : tensor<7x8xf16>, tensor<7x8xi32>
          bufferization.dealloc_tensor %transposed : tensor<7x13xi16>
          %318 = math.log1p %expanded_44 : tensor<7x8x1xf16>
          %319 = arith.addi %in_41, %in_42 : i16
          %320 = arith.shrsi %out, %in_41 : i16
          linalg.yield %in_42 : i16
        } -> tensor<13x7x1xi16>
        %270 = vector.extract_strided_slice %36 {offsets = [5], sizes = [7], strides = [1]} : vector<13xi1> to vector<7xi1>
        %271 = math.cttz %c1618150045_i64 : i64
        %272 = affine.load %alloc_10[%c5, %c11] : memref<7x8xi1>
        %273 = index.divu %80, %c1
        %274 = arith.remsi %in, %in : i64
        %275 = arith.minui %true_27, %true_27 : i1
        %276 = math.rsqrt %12 : tensor<7x8xf32>
        %277 = index.ceildivs %c6, %c10
        %278 = arith.minf %cst, %cst_3 : f16
        %279 = tensor.empty() : tensor<1xi16>
        %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%279 : tensor<1xi16>) outs(%expanded_29 : tensor<13x7x1xi16>) {
        ^bb0(%in_41: i16, %out: i16):
          %298 = math.cttz %193 : tensor<2x2xi64>
          %alloc_42 = memref.alloc() : memref<8x8xf32>
          %299 = tensor.empty() : tensor<7x8xf32>
          %300 = linalg.matmul ins(%12, %alloc_42 : tensor<7x8xf32>, memref<8x8xf32>) outs(%299 : tensor<7x8xf32>) -> tensor<7x8xf32>
          %301 = vector.insertelement %c1_i32, %126[%182 : index] : vector<7xi32>
          %302 = math.copysign %7, %17 : tensor<7x8xf16>
          %303 = arith.minui %c917497104_i64, %c1114033323_i64 : i64
          %304 = vector.broadcast %cst_1 : f32 to vector<2xf32>
          %dest_43, %accumulated_value_44 = vector.scan <mul>, %142, %304 {inclusive = false, reduction_dim = 1 : i64} : vector<2x7xf32>, vector<2xf32>
          %c1_i16 = arith.constant 1 : i16
          %305 = vector.transfer_read %18[%89, %50], %c1_i16 : tensor<7x13xi16>, vector<2xi16>
          bufferization.dealloc_tensor %1 : tensor<13x7xi16>
          %306 = arith.remsi %c1583994261_i64, %c1618150045_i64 : i64
          %307 = index.divu %163, %27
          %308 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %35, %105, %c1_i16 : vector<13xi16>, vector<13xi16> into i16
          %309 = math.cttz %c1604127476_i32 : i32
          %310 = arith.cmpi sge, %true, %false : i1
          %311 = vector.splat %c14 : vector<13x7xindex>
          %312 = arith.minf %cst_2, %cst : f16
          %313 = math.cos %7 : tensor<7x8xf16>
          bufferization.dealloc_tensor %24 : tensor<i32>
          %314 = arith.maxsi %false, %272 : i1
          %315 = vector.splat %89 : vector<2x7xindex>
          %316 = math.ceil %14 : tensor<13x7xf16>
          memref.assume_alignment %alloc_18, 4 : memref<7x8xi64>
          %317 = math.round %165 : f16
          %318 = tensor.empty() : tensor<13x7xi32>
          %319 = vector.insertelement %c1_i32, %82[] : vector<i32>
          %320 = arith.addi %c1604127476_i32, %c1604127476_i32 : i32
          %321 = math.cos %5 : tensor<13x7xf32>
          %322 = vector.extract %126[4] : vector<7xi32>
          %323 = arith.minsi %out, %in_41 : i16
          %splat_45 = tensor.splat %c656764588_i32 : tensor<7x8xi32>
          %324 = math.cos %5 : tensor<13x7xf32>
          %325 = arith.divui %c656764588_i32, %c1_i32 : i32
          %326 = math.round %16 : tensor<7x8xf16>
          linalg.yield %c2236_i16 : i16
        } -> tensor<13x7x1xi16>
        %281 = index.sizeof
        scf.index_switch %89 
        case 1 {
          %c1_i64 = arith.constant 1 : i64
          %298 = vector.transfer_read %alloc_6[%281, %184], %c1_i64 : memref<7x8xi64>, vector<i64>
          %299 = math.fpowi %5, %8 : tensor<13x7xf32>, tensor<13x7xi32>
          %300 = index.sub %30, %277
          %301 = arith.divui %in, %c815937863_i64 : i64
          %302 = vector.extract_strided_slice %153 {offsets = [1], sizes = [4], strides = [1]} : vector<7x8xi32> to vector<4x8xi32>
          %303 = arith.negf %cst_1 : f32
          vector.print %37 : vector<13xi16>
          %304 = arith.xori %c1604127476_i32, %c1_i32 : i32
          %splat_41 = tensor.splat %164 : tensor<7x8xi1>
          %305 = arith.remf %cst_2, %165 : f16
          %extracted_42 = tensor.extract %12[%c6, %c2] : tensor<7x8xf32>
          %306 = index.ceildivu %163, %89
          %307 = math.round %16 : tensor<7x8xf16>
          %308 = vector.load %alloc_15[%c1, %c4] : memref<7x8xi16>, vector<7x8xi16>
          %alloc_43 = memref.alloc() : memref<8x7xi1>
          %309 = tensor.empty() : tensor<7x7xi1>
          %310 = linalg.matmul ins(%9, %alloc_43 : tensor<7x8xi1>, memref<8x7xi1>) outs(%309 : tensor<7x7xi1>) -> tensor<7x7xi1>
          %311 = math.atan %collapsed : tensor<91xf32>
          scf.yield
        }
        case 2 {
          %298 = arith.minf %cst, %cst_2 : f16
          %299 = vector.flat_transpose %95 {columns = 7 : i32, rows = 1 : i32} : vector<7xf16> -> vector<7xf16>
          memref.assume_alignment %55, 4 : memref<13x7xf16>
          %300 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %90, %90, %c2236_i16 : vector<2xi16>, vector<2xi16> into i16
          %301 = arith.minsi %true_30, %true : i1
          bufferization.dealloc_tensor %203 : tensor<7x8xi64>
          %302 = vector.broadcast %cst_0 : f32 to vector<7x8xf32>
          %303 = vector.fma %302, %302, %154 : vector<7x8xf32>
          %304 = vector.broadcast %30 : index to vector<13xindex>
          vector.scatter %alloc_15[%c4, %c5] [%304], %36, %138 : memref<7x8xi16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
          %305 = index.floordivs %169, %c0
          %306 = arith.subi %true_30, %false : i1
          %307 = math.absi %147 : tensor<7x8xi16>
          %308 = vector.shuffle %129, %138 [1, 3, 4, 5, 8, 9, 10, 11, 12, 13, 15, 16, 17, 18] : vector<8xi16>, vector<13xi16>
          %309 = math.cos %cst : f16
          %310 = arith.mulf %cst_2, %cst_2 : f16
          %311 = vector.splat %true : vector<13x7xi1>
          %312 = vector.insertelement %c1583994261_i64, %131[%c14 : index] : vector<7xi64>
          scf.yield
        }
        default {
          %298 = arith.divf %cst_2, %cst : f16
          %299 = math.tanh %12 : tensor<7x8xf32>
          %300 = math.atan2 %cst_0, %cst_1 : f32
          %301 = math.tan %cst : f16
          %302 = arith.mulf %cst_3, %cst : f16
          %303 = vector.broadcast %c656764588_i32 : i32 to vector<2x7xi32>
          %304 = vector.gather %8[%80, %c8] [%303], %112, %303 : tensor<13x7xi32>, vector<2x7xi32>, vector<2x7xi1>, vector<2x7xi32> into vector<2x7xi32>
          %305 = affine.load %189[%c15, %c9] : memref<13x7xi16>
          %c1_i64 = arith.constant 1 : i64
          %c0_i64_41 = arith.constant 0 : i64
          %306 = vector.transfer_read %alloc_18[%30, %48], %c0_i64_41 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<7x8xi64>, vector<8xi64>
          %307 = vector.extract_strided_slice %90 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi16> to vector<2xi16>
          %308 = math.exp %14 : tensor<13x7xf16>
          %309 = math.cttz %272 : i1
          %310 = arith.xori %c1583994261_i64, %c1114033323_i64 : i64
          %311 = arith.minf %cst, %cst_2 : f16
          %312 = memref.atomic_rmw addf %165, %alloc_4[%c5, %c1] : (f16, memref<13x7xf16>) -> f16
          %313 = arith.negf %cst_3 : f16
          %314 = math.log1p %5 : tensor<13x7xf32>
        }
        %282 = arith.shli %true, %272 : i1
        %283 = vector.shuffle %78, %112 [1, 2, 6, 9, 10, 12, 13] : vector<13x7xi1>, vector<2x7xi1>
        %false_40 = arith.constant false
        %284 = vector.transfer_read %alloc_10[%c10, %c1], %false_40 : memref<7x8xi1>, vector<13xi1>
        memref.assume_alignment %alloc_10, 16 : memref<7x8xi1>
        memref.assume_alignment %alloc_15, 4 : memref<7x8xi16>
        %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %37, %138, %c2236_i16 : vector<13xi16>, vector<13xi16> into i16
        %286 = arith.remf %cst_1, %cst_1 : f32
        %287 = arith.shrsi %true_27, %false : i1
        %288 = vector.reduction <add>, %69 : vector<13xf16> into f16
        %289 = math.floor %cst_2 : f16
        %290 = math.tanh %cst_1 : f32
        %291 = tensor.empty() : tensor<13x8xi32>
        %292 = linalg.matmul ins(%8, %11 : tensor<13x7xi32>, tensor<7x8xi32>) outs(%291 : tensor<13x8xi32>) -> tensor<13x8xi32>
        %293 = memref.alloca_scope  -> (memref<7x8xi16>) {
          %298 = math.tanh %collapsed : tensor<91xf32>
          %c1558275408_i32 = arith.constant 1558275408 : i32
          %299 = arith.remf %cst_3, %cst : f16
          %300 = vector.splat %110 : vector<7x8xindex>
          %301 = math.log1p %17 : tensor<7x8xf16>
          %expanded_41 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<7x8xf32> into tensor<7x8x1xf32>
          %302 = vector.extract %136[6] : vector<7xi1>
          %303 = math.copysign %12, %12 : tensor<7x8xf32>
          memref.assume_alignment %alloc_10, 4 : memref<7x8xi1>
          %304 = vector.broadcast %c1_i32 : i32 to vector<13xi32>
          %305 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %77, %126, %304 : vector<13x7xi32>, vector<7xi32> into vector<13xi32>
          %306 = vector.broadcast %cst : f16 to vector<2x7xf16>
          %307 = vector.broadcast %c1_i32 : i32 to vector<2x7xi32>
          %308 = vector.gather %17[%c3, %30] [%307], %112, %306 : tensor<7x8xf16>, vector<2x7xi32>, vector<2x7xi1>, vector<2x7xf16> into vector<2x7xf16>
          %309 = arith.mulf %cst, %cst_3 : f16
          %310 = math.round %12 : tensor<7x8xf32>
          %311 = arith.minsi %c1002889823_i32, %c1002889823_i32 : i32
          %true_42 = index.bool.constant true
          %c1_i16 = arith.constant 1 : i16
          %c0_i16 = arith.constant 0 : i16
          %312 = vector.transfer_read %13[%273, %46], %c0_i16 : tensor<7x8xi16>, vector<i16>
          %313 = tensor.empty() : tensor<13x13xi16>
          %314 = linalg.matmul ins(%1, %18 : tensor<13x7xi16>, tensor<7x13xi16>) outs(%313 : tensor<13x13xi16>) -> tensor<13x13xi16>
          %315 = math.exp2 %5 : tensor<13x7xf32>
          %316 = arith.xori %c656764588_i32, %c1_i32 : i32
          %splat_43 = tensor.splat %false_40 : tensor<2x7xi1>
          %317 = arith.addi %c656764588_i32, %c1604127476_i32 : i32
          %318 = vector.multi_reduction <minsi>, %152, %152 [] : vector<7x8xi1> to vector<7x8xi1>
          %319 = vector.insertelement %c2236_i16, %138[%48 : index] : vector<13xi16>
          %320 = math.absf %cst_0 : f32
          %321 = arith.addi %c1_i32, %c1002889823_i32 : i32
          %322 = index.ceildivs %c5, %277
          %c1_i64 = arith.constant 1 : i64
          %323 = vector.transfer_read %4[%281, %273], %c1_i64 : tensor<13x7xi64>, vector<7xi64>
          %324 = memref.atomic_rmw minf %cst_0, %alloc_11[%c2, %c6] : (f32, memref<7x8xf32>) -> f32
          %325 = arith.minf %165, %165 : f16
          %326 = vector.multi_reduction <xor>, %78, %78 [] : vector<13x7xi1> to vector<13x7xi1>
          bufferization.dealloc_tensor %11 : tensor<7x8xi32>
          %327 = math.tan %5 : tensor<13x7xf32>
          memref.alloca_scope.return %alloc_15 : memref<7x8xi16>
        }
        %294 = arith.divui %in, %c1618150045_i64 : i64
        %295 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_29, %expanded_29 : tensor<13x7x1xi16>, tensor<13x7x1xi16>) outs(%expanded_29 : tensor<13x7x1xi16>) {
        ^bb0(%in_41: i16, %in_42: i16, %out: i16):
          %rank = tensor.rank %18 : tensor<7x13xi16>
          %298 = affine.load %96[%c10, %c8] : memref<7x8xi1>
          %299 = arith.xori %272, %true_27 : i1
          %300 = arith.negf %cst : f16
          memref.store %272, %alloc_5[%c0, %c3] : memref<2x7xi1>
          %301 = math.absf %17 : tensor<7x8xf16>
          %cast_43 = tensor.cast %8 : tensor<13x7xi32> to tensor<?x?xi32>
          %302 = bufferization.to_tensor %alloc_10 : memref<7x8xi1>
          %303 = arith.xori %out, %in_42 : i16
          %304 = index.divu %49, %30
          %305 = math.powf %5, %5 : tensor<13x7xf32>
          %306 = math.round %14 : tensor<13x7xf16>
          %307 = math.cttz %expanded : tensor<7x8x1xi1>
          %308 = index.divu %46, %c5
          %309 = arith.cmpi ugt, %87, %in : i64
          %alloc_44 = memref.alloc() : memref<8xf16>
          %310 = memref.realloc %alloc_44 : memref<8xf16> to memref<13xf16>
          %311 = vector.insert %126, %79 [3] : vector<7xi32> into vector<13x7xi32>
          %312 = vector.insert %in_42, %138 [8] : i16 into vector<13xi16>
          %313 = math.rsqrt %7 : tensor<7x8xf16>
          %314 = index.floordivs %c10, %80
          %315 = arith.minui %c2236_i16, %c2236_i16 : i16
          %316 = memref.load %alloc_4[%c0, %c3] : memref<13x7xf16>
          %317 = arith.muli %87, %in : i64
          %318 = arith.minf %cst_2, %cst : f16
          %319 = math.round %cst : f16
          %320 = index.ceildivs %281, %273
          %321 = math.cos %cst : f16
          %322 = arith.addi %298, %false_40 : i1
          %323 = arith.divui %true_27, %164 : i1
          %324 = math.absi %2 : tensor<13x7xi32>
          %325 = arith.ceildivsi %87, %c815937863_i64 : i64
          %326 = math.tanh %collapsed : tensor<91xf32>
          linalg.yield %in_41 : i16
        } -> tensor<13x7x1xi16>
        %296 = vector.transpose %115, [0] : vector<8xi16> to vector<8xi16>
        %297 = index.floordivs %c0, %30
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %204 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %131, %131, %87 : vector<7xi64>, vector<7xi64> into i64
    %c1_i32_32 = arith.constant 1 : i32
    %205 = vector.transfer_read %8[%c3, %c15], %c1_i32_32 : tensor<13x7xi32>, vector<i32>
    %206 = index.casts %c1618150045_i64 : i64 to index
    %207 = memref.atomic_rmw maxf %cst_1, %alloc_9[%c12, %c1] : (f32, memref<13x7xf32>) -> f32
    %208 = arith.ceildivsi %c815937863_i64, %c1618150045_i64 : i64
    scf.execute_region {
      %267 = bufferization.clone %alloc_13 : memref<2x7xi32> to memref<2x7xi32>
      %268 = math.atan2 %collapsed, %collapsed : tensor<91xf32>
      %269 = affine.if affine_set<(d0, d1, d2, d3) : (d2 mod 64 + d0 + 3 >= 0, d2 mod 64 + 8 == 0, d1 == 0)>(%c6, %c13, %c9, %c7) -> f32 {
        %282 = affine.load %267[%c4, %c2] : memref<2x7xi32>
        %283 = math.rsqrt %cst_0 : f32
        %c1023296792_i64 = arith.constant 1023296792 : i64
        %false_41 = index.bool.constant false
        %284 = arith.andi %true_27, %true_27 : i1
        %285 = arith.minsi %282, %c1002889823_i32 : i32
        %286 = index.ceildivu %c12, %46
        %287 = memref.load %alloc_9[%c10, %c0] : memref<13x7xf32>
        affine.yield %cst_0 : f32
      } else {
        %282 = index.maxu %48, %206
        %283 = memref.atomic_rmw mulf %cst_0, %alloc_26[%c0, %c5] : (f32, memref<2x7xf32>) -> f32
        memref.assume_alignment %44, 1 : memref<7x8xi16>
        memref.copy %96, %alloc_17 : memref<7x8xi1> to memref<7x8xi1>
        %284 = math.cos %7 : tensor<7x8xf16>
        %285 = arith.minsi %c1002889823_i32, %c1002889823_i32 : i32
        %c1127217979_i32 = arith.constant 1127217979 : i32
        %286 = math.cos %178 : tensor<2x7xf32>
        affine.yield %cst_1 : f32
      }
      %270 = arith.divui %true, %true_30 : i1
      %271 = vector.maskedload %alloc_4[%c0, %c1], %94, %95 : memref<13x7xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
      %272 = math.log1p %12 : tensor<7x8xf32>
      %273 = bufferization.clone %alloc_9 : memref<13x7xf32> to memref<13x7xf32>
      %274 = bufferization.to_memref %23 : memref<i32>
      %275 = math.cttz %101 : tensor<7x13xi32>
      %276 = arith.divui %true, %false : i1
      %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %95, %95, %cst : vector<7xf16>, vector<7xf16> into f16
      %c1665786623_i64 = arith.constant 1665786623 : i64
      %false_40 = arith.constant false
      %278 = vector.broadcast %cst_1 : f32 to vector<2xf32>
      %279 = vector.multi_reduction <add>, %142, %278 [1] : vector<2x7xf32> to vector<2xf32>
      %280 = vector.reduction <add>, %95 : vector<7xf16> into f16
      %281 = math.round %7 : tensor<7x8xf16>
      scf.yield
    }
    %209 = math.ceil %165 : f16
    %210 = arith.maxf %cst_3, %cst : f16
    %211 = arith.minf %cst_2, %cst_2 : f16
    %expanded_33 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<2x7xi1> into tensor<2x7x1xi1>
    %extracted = tensor.extract %0[%c5, %c1] : tensor<7x8xi16>
    %212 = math.log %cst : f16
    %213 = math.tanh %178 : tensor<2x7xf32>
    %214 = math.tan %cst : f16
    %215 = arith.cmpi ult, %true, %false : i1
    memref.copy %alloc_14, %189 : memref<13x7xi16> to memref<13x7xi16>
    %216 = math.round %cst_2 : f16
    %217 = math.round %7 : tensor<7x8xf16>
    %218 = vector.broadcast %cst_1 : f32 to vector<2xf32>
    %dest, %accumulated_value = vector.scan <maxf>, %142, %218 {inclusive = true, reduction_dim = 1 : i64} : vector<2x7xf32>, vector<2xf32>
    %219 = arith.minui %87, %c1114033323_i64 : i64
    %220 = arith.minf %cst, %cst_2 : f16
    memref.assume_alignment %alloc_18, 16 : memref<7x8xi64>
    %221 = arith.shrsi %true_30, %true_27 : i1
    %222 = math.absi %0 : tensor<7x8xi16>
    %generated = tensor.generate %c3 {
    ^bb0(%arg1: index, %arg2: index):
      %267 = vector.broadcast %c2236_i16 : i16 to vector<i16>
      %268 = vector.transfer_write %267, %1[%c2, %arg2] : vector<i16>, tensor<13x7xi16>
      %269 = math.rsqrt %7 : tensor<7x8xf16>
      %270 = math.expm1 %12 : tensor<7x8xf32>
      %alloc_40 = memref.alloc() : memref<2xi16>
      %271 = memref.realloc %alloc_40 : memref<2xi16> to memref<2xi16>
      tensor.yield %c2236_i16 : i16
    } : tensor<?x8xi16>
    %223 = arith.negf %cst_1 : f32
    memref.assume_alignment %alloc_6, 8 : memref<7x8xi64>
    %224 = math.log1p %178 : tensor<2x7xf32>
    %225 = arith.divui %c1618150045_i64, %c815937863_i64 : i64
    %226 = arith.shli %c815937863_i64, %c1618150045_i64 : i64
    %227 = vector.bitcast %94 : vector<7xi1> to vector<7xi1>
    %c1_i32_34 = arith.constant 1 : i32
    %228 = vector.transfer_read %8[%c8, %c5], %c1_i32_34 : tensor<13x7xi32>, vector<7xi32>
    %229 = vector.flat_transpose %36 {columns = 13 : i32, rows = 1 : i32} : vector<13xi1> -> vector<13xi1>
    %230 = vector.reduction <minui>, %136 : vector<7xi1> into i1
    %231 = arith.shli %true, %164 : i1
    %232 = arith.remf %165, %165 : f16
    %233 = vector.create_mask %182, %74 : vector<7x8xi1>
    %234 = arith.divsi %87, %c917497104_i64 : i64
    %c1060717064_i64 = arith.constant 1060717064 : i64
    %235 = math.exp %cst_1 : f32
    %236 = index.ceildivs %182, %80
    %237 = bufferization.to_memref %1 : memref<13x7xi16>
    %238 = arith.negf %165 : f16
    %239 = math.fpowi %16, %6 : tensor<7x8xf16>, tensor<7x8xi32>
    %240 = arith.remsi %c656764588_i32, %c1_i32_34 : i32
    %241 = arith.divf %cst_3, %165 : f16
    %242 = vector.extract_strided_slice %69 {offsets = [5], sizes = [5], strides = [1]} : vector<13xf16> to vector<5xf16>
    %243 = index.castu %87 : i64 to index
    %244 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<7x8x1xi1>) {
    ^bb0(%out: i1):
      %inserted_40 = tensor.insert %c1002889823_i32 into %11[%c6, %c5] : tensor<7x8xi32>
      %267 = index.ceildivs %c7, %c6
      %alloc_41 = memref.alloc() : memref<8x8xi32>
      %268 = tensor.empty() : tensor<7x8xi32>
      %269 = linalg.matmul ins(%15, %alloc_41 : tensor<7x8xi32>, memref<8x8xi32>) outs(%268 : tensor<7x8xi32>) -> tensor<7x8xi32>
      %270 = vector.splat %50 : vector<13x7xindex>
      %false_42 = index.bool.constant false
      %271 = arith.cmpi ne, %c2236_i16, %extracted : i16
      %272 = vector.extract_strided_slice %90 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi16> to vector<2xi16>
      %273 = vector.multi_reduction <mul>, %142, %cst_1 [0, 1] : vector<2x7xf32> to f32
      %274 = math.tanh %14 : tensor<13x7xf16>
      %275 = vector.create_mask %182, %c5 : vector<13x7xi1>
      %276 = vector.splat %164 : vector<2x7xi1>
      %277 = arith.remf %cst_3, %cst_2 : f16
      %278 = vector.extract_strided_slice %130 {offsets = [5], sizes = [2], strides = [1]} : vector<7xi64> to vector<2xi64>
      %279 = tensor.empty() : tensor<7x8xf16>
      %280 = vector.insertelement %cst_2, %69[%c3 : index] : vector<13xf16>
      %281 = vector.splat %cst_3 : vector<2x7xf16>
      %282 = arith.minsi %true_27, %false_42 : i1
      %283 = vector.reduction <maxui>, %105 : vector<13xi16> into i16
      %284 = math.exp %5 : tensor<13x7xf32>
      %285 = bufferization.to_memref %4 : memref<13x7xi64>
      %286 = arith.subi %out, %true_27 : i1
      %287 = tensor.empty(%c6, %134) : tensor<?x?xi32>
      %288 = index.ceildivs %169, %236
      %289 = math.atan2 %165, %cst_3 : f16
      %290 = affine.load %alloc_16[%c9, %c14] : memref<7x8xf32>
      %291 = arith.remf %cst_2, %cst_2 : f16
      %false_43 = arith.constant false
      %false_44 = arith.constant false
      %292 = vector.transfer_read %splat_24[%c13, %c5], %false_44 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<2x7xi1>, vector<13xi1>
      %generated_45 = tensor.generate %c4, %c14 {
      ^bb0(%arg1: index, %arg2: index):
        %298 = math.fma %178, %178, %178 : tensor<2x7xf32>
        %299 = arith.shli %false, %out : i1
        %300 = arith.ceildivsi %87, %c1114033323_i64 : i64
        %301 = arith.divf %cst_2, %cst : f16
        tensor.yield %cst_1 : f32
      } : tensor<?x?xf32>
      %293 = arith.negf %273 : f32
      %294 = math.tanh %5 : tensor<13x7xf32>
      %295 = vector.broadcast %c1583994261_i64 : i64 to vector<7x8xi64>
      %296 = vector.gather %alloc_6[%80, %c8] [%153], %152, %295 : memref<7x8xi64>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xi64> into vector<7x8xi64>
      %297 = math.tanh %12 : tensor<7x8xf32>
      linalg.yield %true_27 : i1
    } -> tensor<7x8x1xi1>
    %245 = math.round %14 : tensor<13x7xf16>
    %246 = arith.divsi %true, %164 : i1
    %247 = vector.broadcast %165 : f16 to vector<7x7xf16>
    %248 = vector.outerproduct %93, %93, %247 {kind = #vector.kind<add>} : vector<7xf16>, vector<7xf16>
    %249 = math.cttz %c1002889823_i32 : i32
    %inserted_35 = tensor.insert %c2236_i16 into %expanded_29[%c4, %c6, %c0] : tensor<13x7x1xi16>
    %alloc_36 = memref.alloc() : memref<2xi16>
    %250 = memref.realloc %alloc_36 : memref<2xi16> to memref<2xi16>
    %alloc_37 = memref.alloc() : memref<7x2xi1>
    %251 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_37 : memref<7x2xi1>) outs(%expanded_33 : tensor<2x7x1xi1>) {
    ^bb0(%in: i1, %out: i1):
      %rank = tensor.rank %166 : tensor<2x7xi32>
      %267 = arith.cmpi ne, %c1114033323_i64, %c1114033323_i64 : i64
      %268 = math.exp %14 : tensor<13x7xf16>
      %269 = index.maxu %c2, %50
      %270 = vector.broadcast %cst_0 : f32 to vector<13x7xf32>
      %271 = vector.gather %178[%c9, %48] [%79], %78, %270 : tensor<2x7xf32>, vector<13x7xi32>, vector<13x7xi1>, vector<13x7xf32> into vector<13x7xf32>
      %272 = tensor.empty() : tensor<1xi1>
      %alloc_40 = memref.alloc() : memref<8xi1>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%272, %alloc_40, %272 : tensor<1xi1>, memref<8xi1>, tensor<1xi1>) outs(%expanded : tensor<7x8x1xi1>) {
      ^bb0(%in_44: i1, %in_45: i1, %in_46: i1, %out_47: i1):
        %297 = vector.broadcast %c1_i32_32 : i32 to vector<3xi32>
        %dest_48, %accumulated_value_49 = vector.scan <add>, %162, %297 {inclusive = true, reduction_dim = 1 : i64} : vector<3x7xi32>, vector<3xi32>
        %298 = tensor.empty() : tensor<8x2xi64>
        %299 = tensor.empty() : tensor<7x2xi64>
        %300 = linalg.matmul ins(%203, %298 : tensor<7x8xi64>, tensor<8x2xi64>) outs(%299 : tensor<7x2xi64>) -> tensor<7x2xi64>
        %301 = vector.insertelement %in_44, %36[%110 : index] : vector<13xi1>
        %302 = arith.minui %c1583994261_i64, %c1583994261_i64 : i64
        %303 = affine.min affine_map<(d0) -> (-(-d0 + 2) - 64, d0 - 128, -d0 + 34)>(%c0)
        %304 = arith.minf %cst_3, %cst_3 : f16
        memref.store %cst_0, %alloc_11[%c3, %c5] : memref<7x8xf32>
        %305 = math.log1p %17 : tensor<7x8xf16>
        %306 = arith.divsi %c1583994261_i64, %c917497104_i64 : i64
        %307 = index.sizeof
        %308 = math.atan2 %165, %cst_3 : f16
        %309 = vector.splat %c10 : vector<2x7xindex>
        %310 = vector.extract_strided_slice %68 {offsets = [11], sizes = [1], strides = [1]} : vector<13xf16> to vector<1xf16>
        %311 = arith.negf %165 : f16
        %312 = math.cos %12 : tensor<7x8xf32>
        %313 = arith.addf %cst_3, %cst : f16
        %314 = math.tan %cst_3 : f16
        %315 = index.sizeof
        %316 = math.round %cst_2 : f16
        %317 = math.cttz %18 : tensor<7x13xi16>
        %318 = arith.divsi %c815937863_i64, %87 : i64
        %319 = arith.muli %true_27, %in_44 : i1
        %320 = arith.xori %true, %out_47 : i1
        %321 = math.log1p %14 : tensor<13x7xf16>
        %322 = arith.mulf %cst_1, %cst_1 : f32
        %323 = vector.transpose %37, [0] : vector<13xi16> to vector<13xi16>
        %324 = arith.subi %out_47, %in_45 : i1
        %325 = vector.splat %c15 : vector<7x8xindex>
        %326 = arith.negf %cst_1 : f32
        %327 = arith.maxui %c1583994261_i64, %c917497104_i64 : i64
        %328 = math.log %cst_1 : f32
        %329 = arith.divsi %c1114033323_i64, %c1114033323_i64 : i64
        linalg.yield %164 : i1
      } -> tensor<7x8x1xi1>
      %274 = arith.minf %cst, %cst : f16
      %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %35, %37, %c2236_i16 : vector<13xi16>, vector<13xi16> into i16
      %276 = arith.divsi %164, %out : i1
      memref.assume_alignment %alloc_14, 8 : memref<13x7xi16>
      %277 = vector.insertelement %in, %36[%c7 : index] : vector<13xi1>
      %278 = affine.for %arg1 = 0 to 73 iter_args(%arg2 = %23) -> (tensor<i32>) {
        affine.yield %arg2 : tensor<i32>
      }
      %279 = affine.load %alloc_5[%c1, %c7] : memref<2x7xi1>
      %280 = vector.reduction <mul>, %94 : vector<7xi1> into i1
      %281 = arith.muli %c1618150045_i64, %c1618150045_i64 : i64
      %282 = math.tanh %5 : tensor<13x7xf32>
      %alloca_41 = memref.alloca() : memref<7x8xi64>
      %283 = math.floor %14 : tensor<13x7xf16>
      %284 = tensor.empty() : tensor<2x7xi1>
      %mapped_42 = linalg.map ins(%alloc_12, %10, %alloc_5 : memref<2x7xi1>, tensor<2x7xi1>, memref<2x7xi1>) outs(%284 : tensor<2x7xi1>)
        (%in_44: i1, %in_45: i1, %in_46: i1) {
          %297 = math.rsqrt %cst_2 : f16
          %298 = math.floor %cst_3 : f16
          %299 = vector.create_mask %c13, %89 : vector<2x7xi1>
          %300 = math.fma %7, %17, %7 : tensor<7x8xf16>
          %301 = math.fma %17, %17, %7 : tensor<7x8xf16>
          %302 = vector.broadcast %cst_0 : f32 to vector<13xf32>
          %303 = vector.maskedload %alloc_26[%c0, %c4], %36, %302 : memref<2x7xf32>, vector<13xi1>, vector<13xf32> into vector<13xf32>
          %304 = arith.maxsi %extracted, %extracted : i16
          %305 = math.cos %14 : tensor<13x7xf16>
          %splat_47 = tensor.splat %c1114033323_i64 : tensor<7x8xi64>
          %306 = arith.xori %in_46, %true_30 : i1
          %307 = vector.broadcast %87 : i64 to vector<i64>
          %308 = vector.transfer_write %307, %4[%c11, %50] : vector<i64>, tensor<13x7xi64>
          %extracted_48 = tensor.extract %5[%c0, %c3] : tensor<13x7xf32>
          %309 = arith.minui %false, %279 : i1
          %310 = math.cttz %15 : tensor<7x8xi32>
          %311 = index.divs %c9, %c4
          %312 = math.fpowi %17, %15 : tensor<7x8xf16>, tensor<7x8xi32>
          %313 = arith.subi %false, %true_27 : i1
          %cst_49 = arith.constant 0x4D00CC5B : f32
          %314 = vector.splat %c15 : vector<2x7xindex>
          %315 = vector.create_mask %c12, %c14 : vector<7x8xi1>
          %316 = arith.maxui %c1_i32, %c1_i32_32 : i32
          %317 = arith.minf %cst_3, %cst : f16
          %318 = arith.negf %cst : f16
          %319 = math.absf %extracted_48 : f32
          %320 = arith.minsi %in_46, %false : i1
          affine.store %cst_0, %alloc_26[%c1, %c2] : memref<2x7xf32>
          %321 = math.cos %12 : tensor<7x8xf32>
          %322 = arith.remsi %true_27, %true_30 : i1
          %323 = math.round %14 : tensor<13x7xf16>
          %324 = arith.minsi %164, %279 : i1
          %rank_50 = tensor.rank %collapsed_31 : tensor<91xi16>
          %325 = index.ceildivu %c2, %c9
          %true_51 = arith.constant true
          linalg.yield %true_51 : i1
        }
      %285 = math.roundeven %cst_0 : f32
      %286 = index.maxu %30, %182
      %287 = math.log %cst_1 : f32
      %288 = math.log %14 : tensor<13x7xf16>
      %289 = index.divs %c0, %27
      %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %129, %115, %c2236_i16 : vector<8xi16>, vector<8xi16> into i16
      %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %93, %93, %cst : vector<7xf16>, vector<7xf16> into f16
      %292 = math.log1p %7 : tensor<7x8xf16>
      %expanded_43 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<13x7xi32> into tensor<13x7x1xi32>
      %293 = arith.shrsi %true_27, %true : i1
      %294 = index.divs %c15, %c1
      %295 = math.atan2 %5, %5 : tensor<13x7xf32>
      %296 = math.ipowi %284, %284 : tensor<2x7xi1>
      linalg.yield %279 : i1
    } -> tensor<2x7x1xi1>
    %252 = arith.remf %cst_2, %cst_3 : f16
    %253 = arith.floordivsi %true_27, %true_30 : i1
    %254 = arith.shrsi %c917497104_i64, %c1114033323_i64 : i64
    %255 = math.atan2 %7, %17 : tensor<7x8xf16>
    %256 = index.casts %c1583994261_i64 : i64 to index
    affine.for %arg1 = 0 to 118 {
    }
    affine.store %cst_1, %alloc_9[%c7, %c7] : memref<13x7xf32>
    %257 = arith.subi %c1583994261_i64, %c1114033323_i64 : i64
    %258 = arith.remf %cst_1, %cst_0 : f32
    %259 = vector.shuffle %77, %79 [1, 3, 5, 7, 9, 10, 12, 13, 14, 16, 19, 21, 24, 25] : vector<13x7xi32>, vector<13x7xi32>
    %260 = index.sizeof
    %261 = arith.divsi %false, %true : i1
    %262 = tensor.empty() : tensor<2x7xi1>
    %263 = linalg.copy ins(%10 : tensor<2x7xi1>) outs(%262 : tensor<2x7xi1>) -> tensor<2x7xi1>
    %264 = tensor.empty() : tensor<8x7xf32>
    %transposed_38 = linalg.transpose ins(%12 : tensor<7x8xf32>) outs(%264 : tensor<8x7xf32>) permutation = [1, 0] 
    %alloc_39 = memref.alloc() : memref<8xi1>
    linalg.reduce ins(%9 : tensor<7x8xi1>) outs(%alloc_39 : memref<8xi1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %267 = arith.xori %87, %c1114033323_i64 : i64
        %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %227, %227, %in : vector<7xi1>, vector<7xi1> into i1
        %269 = index.sizeof
        %270 = math.log %264 : tensor<8x7xf32>
        %alloc_40 = memref.alloc() : memref<1x7xi1>
        %alloc_41 = memref.alloc() : memref<1xi1>
        %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_40, %alloc_41 : memref<1x7xi1>, memref<1xi1>) outs(%expanded_33 : tensor<2x7x1xi1>) {
        ^bb0(%in_43: i1, %in_44: i1, %out: i1):
          %276 = arith.muli %in_44, %true_27 : i1
          %277 = index.sizeof
          %278 = tensor.empty() : tensor<7x8xf32>
          %279 = arith.muli %in_44, %164 : i1
          %280 = vector.broadcast %cst_0 : f32 to vector<2xf32>
          %281 = vector.broadcast %false : i1 to vector<2xi1>
          %282 = vector.maskedload %alloc_26[%c1, %c0], %281, %280 : memref<2x7xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
          %283 = arith.divui %c1_i32, %c1_i32_34 : i32
          %284 = arith.divui %c656764588_i32, %c1_i32_34 : i32
          %285 = bufferization.clone %alloc_8 : memref<13x7xi16> to memref<13x7xi16>
          memref.copy %alloc_14, %alloc_8 : memref<13x7xi16> to memref<13x7xi16>
          %286 = math.floor %cst_1 : f32
          %287 = vector.gather %alloc_16[%80, %169] [%153], %233, %154 : memref<7x8xf32>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xf32> into vector<7x8xf32>
          memref.store %c2236_i16, %189[%c9, %c3] : memref<13x7xi16>
          %288 = arith.minsi %true_30, %164 : i1
          %289 = math.expm1 %7 : tensor<7x8xf16>
          %290 = arith.negf %cst_2 : f16
          %291 = arith.minsi %in_44, %true : i1
          %292 = arith.negf %cst : f16
          %293 = math.cttz %203 : tensor<7x8xi64>
          %c1277394521_i64 = arith.constant 1277394521 : i64
          %expanded_45 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<13x7xf16> into tensor<13x7x1xf16>
          %294 = math.exp %cst_1 : f32
          %295 = vector.shuffle %105, %138 [0, 1, 4, 5, 6, 7, 8, 9, 11, 13, 16, 18, 21, 22, 23] : vector<13xi16>, vector<13xi16>
          %296 = tensor.empty() : tensor<2x13xi32>
          %297 = linalg.matmul ins(%splat, %101 : tensor<2x7xi32>, tensor<7x13xi32>) outs(%296 : tensor<2x13xi32>) -> tensor<2x13xi32>
          %298 = math.cos %cst_1 : f32
          %299 = math.log %cst_1 : f32
          %300 = math.cos %expanded_45 : tensor<13x7x1xf16>
          memref.store %in, %alloc_7[%c5, %c7] : memref<7x8xi1>
          %301 = vector.insertelement %in_44, %227[%c10 : index] : vector<7xi1>
          %302 = vector.extract %112[1] : vector<2x7xi1>
          memref.store %c1583994261_i64, %alloc[%c0, %c1] : memref<2x7xi64>
          %303 = math.log1p %transposed_38 : tensor<8x7xf32>
          %304 = math.exp %178 : tensor<2x7xf32>
          linalg.yield %false : i1
        } -> tensor<2x7x1xi1>
        %272 = vector.broadcast %cst_3 : f16 to vector<5x5xf16>
        %273 = vector.outerproduct %242, %242, %272 {kind = #vector.kind<add>} : vector<5xf16>, vector<5xf16>
        %274 = math.atan %cst_3 : f16
        %275 = vector.extract_strided_slice %130 {offsets = [2], sizes = [2], strides = [1]} : vector<7xi64> to vector<2xi64>
        %false_42 = arith.constant false
        linalg.yield %false_42 : i1
      }
    scf.parallel (%arg1) = (%236) to (%46) step (%c15) {
      %267 = arith.addf %165, %cst_3 : f16
      %268 = arith.remf %cst_3, %cst : f16
      %269 = math.cttz %splat_25 : tensor<13x7xi64>
      %270 = arith.remsi %c1114033323_i64, %c815937863_i64 : i64
      %271 = math.log2 %cst : f16
      %272 = bufferization.clone %alloc_18 : memref<7x8xi64> to memref<7x8xi64>
      %273 = arith.maxsi %c1114033323_i64, %c1114033323_i64 : i64
      %274 = math.tan %264 : tensor<8x7xf32>
      %alloca_40 = memref.alloca() : memref<2x7xf32>
      %275 = affine.load %alloc_9[%c2, %c9] : memref<13x7xf32>
      %276 = index.maxu %48, %110
      %277 = tensor.empty() : tensor<2x8xi32>
      %278 = linalg.matmul ins(%splat, %15 : tensor<2x7xi32>, tensor<7x8xi32>) outs(%277 : tensor<2x8xi32>) -> tensor<2x8xi32>
      vector.print %35 : vector<13xi16>
      %279 = arith.shli %c656764588_i32, %c1002889823_i32 : i32
      %280 = affine.for %arg2 = 0 to 77 iter_args(%arg3 = %143) -> (vector<f16>) {
        affine.yield %143 : vector<f16>
      }
      %281 = math.log10 %14 : tensor<13x7xf16>
      scf.yield
    }
    %265 = affine.vector_load %alloc_11[%49, %c2] : memref<7x8xf32>, vector<8xf32>
    affine.vector_store %36, %alloc_17[%163, %c6] : memref<7x8xi1>, vector<13xi1>
    vector.print %21 : vector<13xi64>
    vector.print %25 : vector<i16>
    vector.print %35 : vector<13xi16>
    vector.print %36 : vector<13xi1>
    vector.print %37 : vector<13xi16>
    vector.print %68 : vector<13xf16>
    vector.print %69 : vector<13xf16>
    vector.print %77 : vector<13x7xi32>
    vector.print %78 : vector<13x7xi1>
    vector.print %79 : vector<13x7xi32>
    vector.print %82 : vector<i32>
    vector.print %90 : vector<2xi16>
    vector.print %93 : vector<7xf16>
    vector.print %94 : vector<7xi1>
    vector.print %95 : vector<7xf16>
    vector.print %105 : vector<13xi16>
    vector.print %112 : vector<2x7xi1>
    vector.print %115 : vector<8xi16>
    vector.print %126 : vector<7xi32>
    vector.print %129 : vector<8xi16>
    vector.print %130 : vector<7xi64>
    vector.print %131 : vector<7xi64>
    vector.print %136 : vector<7xi1>
    vector.print %138 : vector<13xi16>
    vector.print %141 : vector<2x7xf32>
    vector.print %142 : vector<2x7xf32>
    vector.print %143 : vector<f16>
    vector.print %151 : vector<7x8xf32>
    vector.print %152 : vector<7x8xi1>
    vector.print %153 : vector<7x8xi32>
    vector.print %154 : vector<7x8xf32>
    vector.print %162 : vector<3x7xi32>
    vector.print %179 : vector<7x8xf32>
    vector.print %227 : vector<7xi1>
    vector.print %229 : vector<13xi1>
    vector.print %233 : vector<7x8xi1>
    vector.print %242 : vector<5xf16>
    vector.print %265 : vector<8xf32>
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %c1583994261_i64 : i64
    vector.print %c1604127476_i32 : i32
    vector.print %c815937863_i64 : i64
    vector.print %c656764588_i32 : i32
    vector.print %false : i1
    vector.print %cst_3 : f16
    vector.print %true : i1
    vector.print %c1618150045_i64 : i64
    vector.print %c1002889823_i32 : i32
    vector.print %c1114033323_i64 : i64
    vector.print %c917497104_i64 : i64
    vector.print %c2236_i16 : i16
    vector.print %87 : i64
    vector.print %164 : i1
    vector.print %165 : f16
    vector.print %true_27 : i1
    vector.print %c1_i32 : i32
    vector.print %true_30 : i1
    vector.print %c1_i32_32 : i32
    vector.print %extracted : i16
    vector.print %c1_i32_34 : i32
    %266 = vector.broadcast %c1_i32_34 : i32 to vector<2x7xi32>
    return %266 : vector<2x7xi32>
  }
}
