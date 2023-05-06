module {
  func.func private @func1() -> memref<2x8x3xi64> {
    %c1222537340_i64 = arith.constant 1222537340 : i64
    %false = arith.constant false
    %true = arith.constant true
    %cst = arith.constant 1.14104934E+9 : f32
    %c5569_i16 = arith.constant 5569 : i16
    %c912764018_i64 = arith.constant 912764018 : i64
    %c-1714_i16 = arith.constant -1714 : i16
    %c-7914_i16 = arith.constant -7914 : i16
    %c1218623755_i64 = arith.constant 1218623755 : i64
    %c1462183081_i32 = arith.constant 1462183081 : i32
    %cst_0 = arith.constant 3.292800e+04 : f16
    %true_1 = arith.constant true
    %c1900925428_i32 = arith.constant 1900925428 : i32
    %c576287540_i64 = arith.constant 576287540 : i64
    %c1524040724_i64 = arith.constant 1524040724 : i64
    %c342695497_i32 = arith.constant 342695497 : i32
    %0 = tensor.empty() : tensor<2x8x3xf16>
    %1 = tensor.empty() : tensor<2x8x3xi32>
    %2 = tensor.empty() : tensor<2x8xf16>
    %3 = tensor.empty() : tensor<15xf32>
    %4 = tensor.empty() : tensor<15xi32>
    %5 = tensor.empty() : tensor<15xi1>
    %6 = tensor.empty() : tensor<2x8x3xi32>
    %7 = tensor.empty() : tensor<2x8x3xf32>
    %8 = tensor.empty() : tensor<15xi1>
    %9 = tensor.empty() : tensor<15xf16>
    %10 = tensor.empty() : tensor<2x8xi1>
    %11 = tensor.empty() : tensor<15xf16>
    %12 = tensor.empty() : tensor<2x8xf16>
    %13 = tensor.empty() : tensor<2x8x3xf32>
    %14 = tensor.empty() : tensor<15xi64>
    %15 = tensor.empty() : tensor<15xf32>
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
    %alloc = memref.alloc() : memref<2x8xf16>
    %alloc_2 = memref.alloc() : memref<15xf32>
    %alloc_3 = memref.alloc() : memref<15xf16>
    %alloc_4 = memref.alloc() : memref<15xf32>
    %alloc_5 = memref.alloc() : memref<15xf16>
    %alloc_6 = memref.alloc() : memref<2x8x3xi1>
    %alloc_7 = memref.alloc() : memref<2x8xi64>
    %alloc_8 = memref.alloc() : memref<15xf16>
    %alloc_9 = memref.alloc() : memref<2x8xi64>
    %alloc_10 = memref.alloc() : memref<2x8x3xi64>
    %alloc_11 = memref.alloc() : memref<2x8x3xf16>
    %alloc_12 = memref.alloc() : memref<2x8x3xi64>
    %alloc_13 = memref.alloc() : memref<2x8x3xi64>
    %alloc_14 = memref.alloc() : memref<2x8xi16>
    %alloc_15 = memref.alloc() : memref<2x8x3xi1>
    %alloc_16 = memref.alloc() : memref<2x8xi32>
    %16 = tensor.empty() : tensor<15xi32>
    %17 = linalg.copy ins(%4 : tensor<15xi32>) outs(%16 : tensor<15xi32>) -> tensor<15xi32>
    %alloc_17 = memref.alloc() : memref<15xf16>
    linalg.transpose ins(%9 : tensor<15xf16>) outs(%alloc_17 : memref<15xf16>) permutation = [0] 
    %18 = tensor.empty() : tensor<i32>
    %reduced = linalg.reduce ins(%16 : tensor<15xi32>) outs(%18 : tensor<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %266 = math.exp2 %7 : tensor<2x8x3xf32>
        %267 = arith.minf %cst, %cst : f32
        %268 = index.divu %c10, %c0
        %269 = vector.broadcast %cst : f32 to vector<1xf32>
        %270 = vector.multi_reduction <maxf>, %269, %cst [0] : vector<1xf32> to f32
        %271 = arith.ori %c1222537340_i64, %c1218623755_i64 : i64
        %272 = arith.maxsi %c1900925428_i32, %in : i32
        %273 = vector.splat %c0 : vector<15xindex>
        %274 = arith.divf %cst, %cst : f32
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    scf.parallel (%arg0, %arg1) = (%c1, %c13) to (%c7, %c13) step (%c15, %c2) {
      %266 = arith.shrui %c1218623755_i64, %c1524040724_i64 : i64
      %267 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d3 - (d3 - 4)), d3 * 128, d0, (d3 * 129) floordiv 4 - 1)>(%c14, %c12, %c11, %c13)
      %268 = arith.negf %cst_0 : f16
      %from_elements_38 = tensor.from_elements %c912764018_i64, %c1524040724_i64, %c576287540_i64, %c1524040724_i64, %c1222537340_i64, %c1218623755_i64, %c1524040724_i64, %c1222537340_i64, %c912764018_i64, %c912764018_i64, %c1218623755_i64, %c912764018_i64, %c1222537340_i64, %c912764018_i64, %c576287540_i64, %c1222537340_i64, %c1218623755_i64, %c1218623755_i64, %c1222537340_i64, %c1524040724_i64, %c576287540_i64, %c1218623755_i64, %c576287540_i64, %c912764018_i64, %c912764018_i64, %c912764018_i64, %c1524040724_i64, %c1524040724_i64, %c1218623755_i64, %c1218623755_i64, %c1218623755_i64, %c1218623755_i64, %c1218623755_i64, %c1222537340_i64, %c912764018_i64, %c1218623755_i64, %c1218623755_i64, %c1524040724_i64, %c1218623755_i64, %c1524040724_i64, %c1222537340_i64, %c576287540_i64, %c1218623755_i64, %c1524040724_i64, %c1218623755_i64, %c912764018_i64, %c1222537340_i64, %c1524040724_i64 : tensor<2x8x3xi64>
      %269 = arith.maxsi %c1524040724_i64, %c1218623755_i64 : i64
      %270 = vector.broadcast %cst : f32 to vector<1xf32>
      %271 = vector.multi_reduction <minf>, %270, %cst [0] : vector<1xf32> to f32
      %272 = vector.flat_transpose %270 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
      %273 = scf.if %true_1 -> (f32) {
        %284 = math.ceil %7 : tensor<2x8x3xf32>
        %285 = vector.extract %270[0] : vector<1xf32>
        %286 = math.ceil %15 : tensor<15xf32>
        %287 = arith.mulf %cst, %cst : f32
        %288 = arith.divf %cst_0, %cst_0 : f16
        %289 = vector.flat_transpose %272 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %290 = math.exp %cst : f32
        %291 = arith.divsi %c5569_i16, %c5569_i16 : i16
        scf.yield %cst : f32
      } else {
        %284 = vector.broadcast %c912764018_i64 : i64 to vector<15xi64>
        %285 = vector.broadcast %true : i1 to vector<15xi1>
        %286 = vector.maskedload %alloc_7[%c1, %c6], %285, %284 : memref<2x8xi64>, vector<15xi1>, vector<15xi64> into vector<15xi64>
        %287 = vector.matrix_multiply %272, %270 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %288 = vector.broadcast %cst : f32 to vector<2x8xf32>
        %289 = vector.fma %288, %288, %288 : vector<2x8xf32>
        %290 = index.casts %267 : index to i32
        %from_elements_39 = tensor.from_elements %c-1714_i16, %c-7914_i16, %c-1714_i16, %c5569_i16, %c5569_i16, %c-7914_i16, %c-7914_i16, %c-7914_i16, %c-7914_i16, %c-7914_i16, %c-1714_i16, %c-1714_i16, %c5569_i16, %c5569_i16, %c-7914_i16, %c5569_i16 : tensor<2x8xi16>
        %291 = math.exp %9 : tensor<15xf16>
        %false_40 = arith.constant false
        %false_41 = arith.constant false
        %292 = vector.transfer_read %10[%c4, %arg1], %false_41 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<2x8xi1>, vector<15xi1>
        %293 = arith.xori %c5569_i16, %c5569_i16 : i16
        scf.yield %cst : f32
      }
      %274 = vector.insertelement %cst, %270[%c6 : index] : vector<1xf32>
      %275 = math.absf %0 : tensor<2x8x3xf16>
      %276 = math.exp %271 : f32
      %277 = index.divu %c4, %267
      %278 = vector.broadcast %c2 : index to vector<15xindex>
      %279 = vector.broadcast %true_1 : i1 to vector<15xi1>
      %280 = vector.broadcast %c1218623755_i64 : i64 to vector<15xi64>
      vector.scatter %alloc_7[%c1, %c4] [%278], %279, %280 : memref<2x8xi64>, vector<15xindex>, vector<15xi1>, vector<15xi64>
      %281 = vector.matrix_multiply %272, %272 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
      %282 = arith.cmpf olt, %cst, %273 : f32
      %283 = index.divu %c10, %c8
      scf.yield
    }
    %19 = affine.vector_load %alloc_8[%c4] : memref<15xf16>, vector<15xf16>
    affine.vector_store %19, %alloc[%c7, %c12] : memref<2x8xf16>, vector<15xf16>
    %alloc_18 = memref.alloc() : memref<15xf16>
    %20 = tensor.empty() : tensor<f16>
    %21 = linalg.dot ins(%11, %alloc_18 : tensor<15xf16>, memref<15xf16>) outs(%20 : tensor<f16>) -> tensor<f16>
    affine.for %arg0 = 0 to 52 {
    }
    %22 = arith.maxui %true, %false : i1
    %23 = arith.xori %c912764018_i64, %c1218623755_i64 : i64
    %24 = math.absf %13 : tensor<2x8x3xf32>
    %25 = memref.load %alloc_13[%c1, %c1, %c1] : memref<2x8x3xi64>
    %26 = affine.for %arg0 = 0 to 68 iter_args(%arg1 = %c5) -> (index) {
      affine.yield %c10 : index
    }
    %alloc_19 = memref.alloc() : memref<2x8xf16>
    memref.copy %alloc, %alloc_19 : memref<2x8xf16> to memref<2x8xf16>
    %27 = math.absf %cst : f32
    %28 = math.ctpop %c-1714_i16 : i16
    %29 = index.floordivs %c6, %c14
    %30 = math.ipowi %16, %17 : tensor<15xi32>
    %31 = math.floor %3 : tensor<15xf32>
    %32 = arith.mulf %cst, %cst : f32
    %33 = arith.xori %c1222537340_i64, %c1218623755_i64 : i64
    %34 = arith.remsi %c342695497_i32, %c1462183081_i32 : i32
    %35 = bufferization.clone %alloc_18 : memref<15xf16> to memref<15xf16>
    %36 = affine.max affine_map<(d0, d1, d2) -> (d2 * 8)>(%c2, %c1, %c4)
    %37 = arith.remui %c1900925428_i32, %c1900925428_i32 : i32
    %38 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %cst_0 : vector<15xf16>, vector<15xf16> into f16
    %39 = math.log10 %0 : tensor<2x8x3xf16>
    %40 = math.log %15 : tensor<15xf32>
    memref.copy %alloc_10, %alloc_12 : memref<2x8x3xi64> to memref<2x8x3xi64>
    %41 = arith.minsi %c912764018_i64, %c1218623755_i64 : i64
    %42 = arith.addi %c342695497_i32, %c1462183081_i32 : i32
    %43 = math.exp %15 : tensor<15xf32>
    bufferization.dealloc_tensor %6 : tensor<2x8x3xi32>
    %44 = math.exp2 %21 : tensor<f16>
    %45 = vector.broadcast %cst : f32 to vector<2x8xf32>
    %46 = vector.fma %45, %45, %45 : vector<2x8xf32>
    %47 = math.ipowi %5, %5 : tensor<15xi1>
    %generated = tensor.generate %c1, %c12 {
    ^bb0(%arg0: index, %arg1: index):
      %from_elements_38 = tensor.from_elements %c5569_i16, %c-1714_i16, %c5569_i16, %c-7914_i16, %c5569_i16, %c5569_i16, %c5569_i16, %c-1714_i16, %c-7914_i16, %c-1714_i16, %c-7914_i16, %c5569_i16, %c-1714_i16, %c5569_i16, %c-7914_i16 : tensor<15xi16>
      %266 = index.divu %c6, %c0
      %267 = arith.remsi %true, %true : i1
      %268 = vector.broadcast %arg0 : index to vector<3xindex>
      %269 = vector.broadcast %true_1 : i1 to vector<3xi1>
      %270 = vector.broadcast %c1524040724_i64 : i64 to vector<3xi64>
      vector.scatter %alloc_10[%c0, %c0, %c0] [%268], %269, %270 : memref<2x8x3xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
      tensor.yield %false : i1
    } : tensor<?x?xi1>
    %48 = vector.broadcast %cst_0 : f16 to vector<15x15xf16>
    %49 = vector.outerproduct %19, %19, %48 {kind = #vector.kind<add>} : vector<15xf16>, vector<15xf16>
    scf.if %true_1 {
      %266 = math.powf %21, %20 : tensor<f16>
      %267 = arith.minui %c342695497_i32, %c1462183081_i32 : i32
      %268 = arith.remsi %true_1, %true_1 : i1
      %269 = math.cttz %6 : tensor<2x8x3xi32>
      %270 = arith.floordivsi %c1524040724_i64, %c1218623755_i64 : i64
      %271 = arith.xori %c5569_i16, %c-1714_i16 : i16
      %272 = index.maxu %c14, %36
      %273 = vector.broadcast %true_1 : i1 to vector<15xi1>
    }
    %50 = math.copysign %cst, %cst : f32
    affine.for %arg0 = 0 to 74 {
    }
    %51 = affine.apply affine_map<(d0, d1, d2) -> (d2 * -3 + 2)>(%c0, %c10, %c0)
    %alloc_20 = memref.alloc() : memref<2x8xi32>
    memref.copy %alloc_16, %alloc_20 : memref<2x8xi32> to memref<2x8xi32>
    vector.print %19 : vector<15xf16>
    %52 = math.log %13 : tensor<2x8x3xf32>
    %53 = math.copysign %12, %2 : tensor<2x8xf16>
    %54 = bufferization.clone %alloc_12 : memref<2x8x3xi64> to memref<2x8x3xi64>
    %55 = arith.addf %cst, %cst : f32
    scf.if %false {
      %266 = arith.shrui %false, %true : i1
      %267 = arith.floordivsi %c1462183081_i32, %c1900925428_i32 : i32
      %268 = math.round %9 : tensor<15xf16>
      %inserted_38 = tensor.insert %c342695497_i32 into %17[%c3] : tensor<15xi32>
      %269 = math.ctlz %4 : tensor<15xi32>
      %270 = math.ipowi %8, %8 : tensor<15xi1>
      %271 = index.floordivs %c11, %36
      %272 = arith.cmpf ule, %cst, %cst : f32
    } else {
      %266 = math.sqrt %cst : f32
      %267 = math.exp %0 : tensor<2x8x3xf16>
      %268 = math.cttz %8 : tensor<15xi1>
      %269 = math.ctpop %false : i1
      %270 = arith.maxsi %c-1714_i16, %c-7914_i16 : i16
      %271 = vector.load %alloc_8[%c6] : memref<15xf16>, vector<2x8xf16>
      %272 = math.sqrt %15 : tensor<15xf32>
      %273 = index.divs %c1, %c14
    }
    %56 = math.round %3 : tensor<15xf32>
    %57 = affine.load %alloc_17[%c6] : memref<15xf16>
    bufferization.dealloc_tensor %2 : tensor<2x8xf16>
    %58 = index.floordivs %c15, %c5
    %59 = arith.cmpi eq, %c1900925428_i32, %c1900925428_i32 : i32
    %60 = math.tanh %11 : tensor<15xf16>
    %61 = arith.cmpf une, %cst_0, %cst_0 : f16
    %62 = math.fpowi %0, %6 : tensor<2x8x3xf16>, tensor<2x8x3xi32>
    %63 = index.sub %c6, %c14
    %64 = arith.andi %false, %true_1 : i1
    %65 = affine.load %alloc_2[%c4] : memref<15xf32>
    %66 = vector.broadcast %cst_0 : f16 to vector<2xf16>
    %67 = vector.broadcast %false : i1 to vector<2xi1>
    %68 = vector.maskedload %alloc[%c0, %c5], %67, %66 : memref<2x8xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
    %69 = math.powf %3, %15 : tensor<15xf32>
    %70 = index.divu %c6, %51
    %71 = vector.broadcast %c1218623755_i64 : i64 to vector<15xi64>
    %72 = math.log10 %3 : tensor<15xf32>
    %73 = vector.extract_strided_slice %71 {offsets = [0], sizes = [2], strides = [1]} : vector<15xi64> to vector<2xi64>
    %generated_21 = tensor.generate %c15, %c6 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      scf.index_switch %51 
      case 1 {
        %270 = math.ipowi %6, %6 : tensor<2x8x3xi32>
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %271 = vector.transfer_read %1[%c15, %58, %c15], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<2x8x3xi32>, vector<2xi32>
        %272 = bufferization.clone %alloc_18 : memref<15xf16> to memref<15xf16>
        %273 = math.exp2 %20 : tensor<f16>
        bufferization.dealloc_tensor %13 : tensor<2x8x3xf32>
        %274 = arith.cmpi sle, %c5569_i16, %c-7914_i16 : i16
        %275 = index.ceildivs %29, %arg2
        %276 = math.rsqrt %9 : tensor<15xf16>
        %277 = affine.load %alloc_2[%c1] : memref<15xf32>
        %278 = math.expm1 %15 : tensor<15xf32>
        %279 = arith.maxf %cst_0, %cst_0 : f16
        %280 = math.powf %9, %11 : tensor<15xf16>
        %281 = math.log10 %20 : tensor<f16>
        %282 = math.powf %21, %21 : tensor<f16>
        %283 = vector.extract_strided_slice %71 {offsets = [13], sizes = [2], strides = [1]} : vector<15xi64> to vector<2xi64>
        %inserted_38 = tensor.insert %false into %generated[%c0, %c0] : tensor<?x?xi1>
        scf.yield
      }
      case 2 {
        %270 = vector.broadcast %c576287540_i64 : i64 to vector<2x8x3xi64>
        %271 = arith.ceildivsi %c5569_i16, %c5569_i16 : i16
        %272 = index.floordivs %c3, %58
        %273 = math.atan2 %11, %11 : tensor<15xf16>
        %274 = arith.minf %65, %cst : f32
        %275 = memref.atomic_rmw maxf %cst_0, %alloc_11[%c1, %c1, %c2] : (f16, memref<2x8x3xf16>) -> f16
        %276 = vector.transpose %66, [0] : vector<2xf16> to vector<2xf16>
        %277 = math.log %21 : tensor<f16>
        %278 = arith.cmpf true, %cst_0, %cst_0 : f16
        %279 = arith.ori %c1524040724_i64, %c1524040724_i64 : i64
        %280 = vector.splat %c1524040724_i64 : vector<2x8xi64>
        %281 = math.log10 %2 : tensor<2x8xf16>
        %282 = arith.shrsi %c5569_i16, %c5569_i16 : i16
        %283 = math.ipowi %10, %10 : tensor<2x8xi1>
        %284 = arith.negf %65 : f32
        %285 = math.round %12 : tensor<2x8xf16>
        scf.yield
      }
      case 3 {
        %270 = math.rsqrt %11 : tensor<15xf16>
        %271 = arith.remsi %true, %true : i1
        %272 = arith.addf %65, %65 : f32
        %273 = index.castu %29 : index to i32
        %274 = arith.floordivsi %c5569_i16, %c-1714_i16 : i16
        %275 = memref.atomic_rmw addi %c576287540_i64, %alloc_10[%c1, %c3, %c2] : (i64, memref<2x8x3xi64>) -> i64
        %276 = arith.cmpf oeq, %65, %65 : f32
        %277 = arith.addf %cst_0, %cst_0 : f16
        %278 = math.ceil %2 : tensor<2x8xf16>
        %279 = index.divu %63, %c1
        %280 = vector.broadcast %cst : f32 to vector<8xf32>
        %281 = vector.broadcast %true_1 : i1 to vector<8xi1>
        %282 = vector.maskedload %alloc_2[%c7], %281, %280 : memref<15xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
        %283 = math.absf %57 : f16
        %284 = index.add %70, %c2
        %285 = math.cttz %c1524040724_i64 : i64
        %286 = math.copysign %cst_0, %57 : f16
        %287 = math.tanh %9 : tensor<15xf16>
        scf.yield
      }
      case 4 {
        %270 = math.log10 %20 : tensor<f16>
        %271 = arith.cmpf ule, %cst, %cst : f32
        %272 = index.maxu %c7, %c11
        %273 = index.maxu %c5, %c8
        %274 = math.ceil %cst : f32
        %275 = vector.insertelement %cst_0, %68[%arg1 : index] : vector<2xf16>
        %276 = math.log2 %2 : tensor<2x8xf16>
        %277 = bufferization.to_tensor %alloc_2 : memref<15xf32>
        %278 = index.floordivs %c11, %58
        %279 = arith.divsi %c1222537340_i64, %c576287540_i64 : i64
        %280 = math.copysign %20, %21 : tensor<f16>
        bufferization.dealloc_tensor %0 : tensor<2x8x3xf16>
        %281 = math.ctlz %10 : tensor<2x8xi1>
        %expanded_38 = tensor.expand_shape %15 [[0, 1]] : tensor<15xf32> into tensor<15x1xf32>
        %282 = vector.multi_reduction <minf>, %68, %68 [] : vector<2xf16> to vector<2xf16>
        %cst_39 = arith.constant 1.000000e+00 : f16
        %283 = vector.transfer_read %2[%c3, %arg2], %cst_39 : tensor<2x8xf16>, vector<f16>
        scf.yield
      }
      default {
        %270 = index.maxu %c7, %c4
        %271 = math.cttz %5 : tensor<15xi1>
        %272 = bufferization.to_memref %4 : memref<15xi32>
        %273 = bufferization.to_tensor %alloc_12 : memref<2x8x3xi64>
        %274 = math.rsqrt %65 : f32
        %275 = vector.broadcast %65 : f32 to vector<8x8xf32>
        %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %46, %46, %275 : vector<2x8xf32>, vector<2x8xf32> into vector<8x8xf32>
        %277 = arith.muli %c-1714_i16, %c-1714_i16 : i16
        %278 = index.castu %c14 : index to i32
        %279 = affine.max affine_map<(d0, d1) -> (((-d0) mod 16) ceildiv 32)>(%70, %63)
        %280 = math.round %13 : tensor<2x8x3xf32>
        %281 = arith.minf %cst_0, %57 : f16
        %282 = arith.remsi %c1462183081_i32, %c1462183081_i32 : i32
        %283 = vector.matrix_multiply %67, %67 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<2xi1>) -> vector<1xi1>
        %284 = math.sqrt %2 : tensor<2x8xf16>
        %expanded_38 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<2x8x3xf32> into tensor<2x8x3x1xf32>
        %collapsed_39 = tensor.collapse_shape %10 [[0, 1]] : tensor<2x8xi1> into tensor<16xi1>
      }
      %266 = vector.broadcast %57 : f16 to vector<15x15xf16>
      %267 = vector.outerproduct %19, %19, %266 {kind = #vector.kind<maxf>} : vector<15xf16>, vector<15xf16>
      %268 = arith.andi %c912764018_i64, %c576287540_i64 : i64
      %269 = math.ctpop %4 : tensor<15xi32>
      tensor.yield %c-1714_i16 : i16
    } : tensor<?x?x3xi16>
    %74 = vector.broadcast %c1900925428_i32 : i32 to vector<8x2xi32>
    %75 = vector.transfer_write %74, %1[%51, %c2, %29] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<8x2xi32>, tensor<2x8x3xi32>
    %76 = bufferization.clone %alloc_17 : memref<15xf16> to memref<15xf16>
    %77 = vector.broadcast %c1222537340_i64 : i64 to vector<15xi64>
    %78 = math.powf %9, %9 : tensor<15xf16>
    %79 = vector.broadcast %cst_0 : f16 to vector<3xf16>
    %80 = vector.transfer_write %79, %12[%c7, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xf16>, tensor<2x8xf16>
    %81 = vector.multi_reduction <add>, %19, %19 [] : vector<15xf16> to vector<15xf16>
    %82 = vector.broadcast %cst : f32 to vector<2xf32>
    %83 = vector.maskedload %alloc_2[%c2], %67, %82 : memref<15xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
    %84 = math.rsqrt %0 : tensor<2x8x3xf16>
    %85 = arith.xori %c1222537340_i64, %c1524040724_i64 : i64
    %86 = math.log2 %2 : tensor<2x8xf16>
    %87 = bufferization.to_memref %12 : memref<2x8xf16>
    %expanded = tensor.expand_shape %generated_21 [[0], [1], [2, 3]] : tensor<?x?x3xi16> into tensor<?x?x3x1xi16>
    %88 = math.expm1 %13 : tensor<2x8x3xf32>
    %89 = arith.shrui %c-1714_i16, %c-1714_i16 : i16
    %90 = arith.andi %c1218623755_i64, %c576287540_i64 : i64
    %91 = arith.remsi %true, %false : i1
    %92 = vector.broadcast %65 : f32 to vector<2x2xf32>
    %93 = vector.outerproduct %82, %82, %92 {kind = #vector.kind<minf>} : vector<2xf32>, vector<2xf32>
    %94 = math.round %65 : f32
    %95 = index.ceildivs %c11, %c1
    %splat = tensor.splat %false : tensor<15xi1>
    %from_elements = tensor.from_elements %cst_0, %57, %57, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %57, %cst_0, %57, %57, %cst_0, %cst_0, %cst_0 : tensor<15xf16>
    %96 = math.exp %cst_0 : f16
    %97 = arith.divsi %c342695497_i32, %c1900925428_i32 : i32
    %98 = arith.divsi %true_1, %true_1 : i1
    %99 = vector.matrix_multiply %67, %67 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<2xi1>) -> vector<1xi1>
    %100 = bufferization.clone %alloc_7 : memref<2x8xi64> to memref<2x8xi64>
    %101 = vector.reduction <minsi>, %77 : vector<15xi64> into i64
    %102 = math.round %9 : tensor<15xf16>
    memref.store %cst, %alloc_2[%c11] : memref<15xf32>
    %103 = math.sqrt %12 : tensor<2x8xf16>
    %104 = bufferization.to_tensor %alloc_12 : memref<2x8x3xi64>
    %105 = math.ceil %3 : tensor<15xf32>
    %generated_22 = tensor.generate %c0 {
    ^bb0(%arg0: index):
      %266 = arith.ori %c1524040724_i64, %c576287540_i64 : i64
      %267 = index.divu %c5, %c0
      %268 = arith.minf %65, %cst : f32
      %269 = math.cttz %8 : tensor<15xi1>
      tensor.yield %c-7914_i16 : i16
    } : tensor<?xi16>
    %106 = index.sizeof
    %107 = vector.broadcast %true_1 : i1 to vector<15xi1>
    %108 = vector.broadcast %c1462183081_i32 : i32 to vector<15xi32>
    %109 = vector.gather %alloc_7[%c4, %95] [%108], %107, %71 : memref<2x8xi64>, vector<15xi32>, vector<15xi1>, vector<15xi64> into vector<15xi64>
    %110 = vector.matrix_multiply %107, %107 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi1>, vector<15xi1>) -> vector<1xi1>
    %111 = vector.reduction <or>, %77 : vector<15xi64> into i64
    %112 = math.log %13 : tensor<2x8x3xf32>
    %113 = math.ctpop %c-7914_i16 : i16
    %114 = arith.remf %57, %cst_0 : f16
    %115 = arith.shrui %c342695497_i32, %c342695497_i32 : i32
    %116 = index.maxu %c15, %c8
    %117 = math.powf %12, %2 : tensor<2x8xf16>
    %118 = vector.reduction <or>, %67 : vector<2xi1> into i1
    %119 = math.fpowi %7, %6 : tensor<2x8x3xf32>, tensor<2x8x3xi32>
    %120 = vector.bitcast %74 : vector<8x2xi32> to vector<8x2xi32>
    %from_elements_23 = tensor.from_elements %c1524040724_i64, %c1524040724_i64, %c912764018_i64, %c912764018_i64, %c1524040724_i64, %c912764018_i64, %c576287540_i64, %c1222537340_i64, %c912764018_i64, %c576287540_i64, %c1524040724_i64, %c912764018_i64, %c1524040724_i64, %c1524040724_i64, %c1222537340_i64, %c1218623755_i64, %c1218623755_i64, %c576287540_i64, %c912764018_i64, %c576287540_i64, %c1222537340_i64, %c1222537340_i64, %c1218623755_i64, %c1222537340_i64, %c1222537340_i64, %c576287540_i64, %c1524040724_i64, %c1218623755_i64, %c1222537340_i64, %c576287540_i64, %c1218623755_i64, %c1222537340_i64, %c576287540_i64, %c1218623755_i64, %c1222537340_i64, %c912764018_i64, %c576287540_i64, %c1218623755_i64, %c576287540_i64, %c912764018_i64, %c912764018_i64, %c576287540_i64, %c576287540_i64, %c1218623755_i64, %c576287540_i64, %c576287540_i64, %c576287540_i64, %c1524040724_i64 : tensor<2x8x3xi64>
    %121 = vector.broadcast %57 : f16 to vector<8xf16>
    %122 = vector.broadcast %true_1 : i1 to vector<8xi1>
    %123 = vector.maskedload %87[%c1, %c1], %122, %121 : memref<2x8xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
    %124 = arith.shrsi %c-7914_i16, %c5569_i16 : i16
    %125 = math.fpowi %13, %6 : tensor<2x8x3xf32>, tensor<2x8x3xi32>
    %126 = math.round %65 : f32
    %127 = vector.maskedload %54[%c0, %c0, %c0], %67, %73 : memref<2x8x3xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
    %alloca = memref.alloca() : memref<15xf32>
    %128 = vector.flat_transpose %73 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
    %129 = index.casts %106 : index to i32
    %130 = affine.min affine_map<(d0, d1, d2) -> (d1, d0, d1, d0)>(%c14, %c9, %c15)
    %131 = arith.muli %c1900925428_i32, %c1462183081_i32 : i32
    %132 = math.ctpop %c576287540_i64 : i64
    %133 = arith.cmpi ne, %true_1, %false : i1
    %134 = bufferization.clone %alloc_18 : memref<15xf16> to memref<15xf16>
    %135 = index.ceildivs %106, %c0
    %136 = math.sqrt %3 : tensor<15xf32>
    %137 = vector.broadcast %c1462183081_i32 : i32 to vector<8xi32>
    %138 = vector.multi_reduction <add>, %74, %137 [1] : vector<8x2xi32> to vector<8xi32>
    %139 = vector.extract %107[3] : vector<15xi1>
    %140 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, d2 mod 32)>(%c6, %c3, %c7, %63)
    %alloca_24 = memref.alloca() : memref<2x8xf32>
    %splat_25 = tensor.splat %false : tensor<15xi1>
    %141 = index.maxu %c1, %116
    %142 = vector.splat %c-1714_i16 : vector<15xi16>
    %143 = arith.minf %cst, %cst : f32
    %144 = arith.subi %false, %false : i1
    %145 = arith.mulf %65, %65 : f32
    %146 = bufferization.clone %alloc_10 : memref<2x8x3xi64> to memref<2x8x3xi64>
    %147 = math.log10 %9 : tensor<15xf16>
    %148 = vector.extract %66[1] : vector<2xf16>
    %inserted = tensor.insert %c5569_i16 into %generated_22[%c0] : tensor<?xi16>
    %149 = bufferization.to_memref %1 : memref<2x8x3xi32>
    bufferization.dealloc_tensor %13 : tensor<2x8x3xf32>
    %150 = arith.remf %cst, %cst : f32
    %151 = arith.subi %c1222537340_i64, %c1218623755_i64 : i64
    %152 = bufferization.to_memref %14 : memref<15xi64>
    %153 = index.maxs %63, %c14
    affine.for %arg0 = 0 to 5 {
    }
    %154 = affine.max affine_map<(d0, d1) -> (d1 * 3)>(%135, %c7)
    %splat_26 = tensor.splat %cst : tensor<2x8x3xf32>
    %155 = arith.remf %65, %cst : f32
    %inserted_27 = tensor.insert %c342695497_i32 into %18[] : tensor<i32>
    %156 = bufferization.clone %alloc_3 : memref<15xf16> to memref<15xf16>
    %157 = math.sqrt %20 : tensor<f16>
    %158 = math.sqrt %11 : tensor<15xf16>
    %159 = arith.shrsi %c576287540_i64, %c576287540_i64 : i64
    %160 = arith.divf %cst_0, %cst_0 : f16
    %161 = index.floordivs %36, %c3
    %162 = math.ctpop %14 : tensor<15xi64>
    %163 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%104 : tensor<2x8x3xi64>) {
    ^bb0(%out: i64):
      affine.for %arg0 = 0 to 61 {
      }
      %266 = math.ctpop %6 : tensor<2x8x3xi32>
      %267 = vector.reduction <mul>, %123 : vector<8xf16> into f16
      %268 = index.ceildivs %153, %c14
      affine.for %arg0 = 0 to 80 {
      }
      %269 = vector.splat %63 : vector<15xindex>
      %270 = arith.remsi %c1218623755_i64, %c912764018_i64 : i64
      %alloc_38 = memref.alloc() : memref<8x15xf16>
      %271 = tensor.empty() : tensor<2x15xf16>
      %272 = linalg.matmul ins(%2, %alloc_38 : tensor<2x8xf16>, memref<8x15xf16>) outs(%271 : tensor<2x15xf16>) -> tensor<2x15xf16>
      %273 = arith.divf %65, %cst : f32
      %274 = math.exp %20 : tensor<f16>
      %275 = math.fma %0, %0, %0 : tensor<2x8x3xf16>
      scf.if %false {
        %296 = arith.ori %c1222537340_i64, %c1218623755_i64 : i64
        %297 = affine.max affine_map<(d0, d1, d2) -> ((d1 - d2) * 16 + 1)>(%c1, %51, %63)
        %298 = arith.cmpf ogt, %cst_0, %cst_0 : f16
        %299 = index.casts %140 : index to i32
        %300 = vector.broadcast %153 : index to vector<2xindex>
        vector.scatter %alloc_2[%c2] [%300], %67, %83 : memref<15xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
        %301 = arith.remsi %out, %c912764018_i64 : i64
        %302 = math.round %12 : tensor<2x8xf16>
        memref.store %c576287540_i64, %100[%c0, %c7] : memref<2x8xi64>
      }
      %276 = vector.load %alloc_4[%c8] : memref<15xf32>, vector<15xf32>
      %277 = index.maxs %135, %63
      %278 = math.copysign %splat_26, %7 : tensor<2x8x3xf32>
      %279 = math.round %57 : f16
      %280 = affine.load %alloc_9[%c14, %c0] : memref<2x8xi64>
      %281 = affine.for %arg0 = 0 to 22 iter_args(%arg1 = %46) -> (vector<2x8xf32>) {
        affine.yield %46 : vector<2x8xf32>
      }
      %282 = memref.atomic_rmw ori %c1222537340_i64, %100[%c0, %c6] : (i64, memref<2x8xi64>) -> i64
      %283 = index.castu %58 : index to i32
      %splat_39 = tensor.splat %c576287540_i64 : tensor<15xi64>
      %284 = math.cos %7 : tensor<2x8x3xf32>
      %285 = memref.atomic_rmw assign %cst, %alloc_2[%c8] : (f32, memref<15xf32>) -> f32
      %286 = bufferization.to_memref %10 : memref<2x8xi1>
      %287 = math.floor %11 : tensor<15xf16>
      %288 = vector.broadcast %c8 : index to vector<3xindex>
      %289 = vector.broadcast %false : i1 to vector<3xi1>
      %290 = vector.broadcast %c1900925428_i32 : i32 to vector<3xi32>
      vector.scatter %149[%c1, %c2, %c1] [%288], %289, %290 : memref<2x8x3xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
      %collapsed_40 = tensor.collapse_shape %generated_21 [[0, 1], [2]] : tensor<?x?x3xi16> into tensor<?x3xi16>
      %291 = vector.broadcast %57 : f16 to vector<2x8x3xf16>
      %292 = math.log %9 : tensor<15xf16>
      %293 = affine.for %arg0 = 0 to 51 iter_args(%arg1 = %alloc_13) -> (memref<2x8x3xi64>) {
        affine.yield %alloc_13 : memref<2x8x3xi64>
      }
      %294 = vector.splat %false : vector<15xi1>
      %295 = math.cos %271 : tensor<2x15xf16>
      linalg.yield %280 : i64
    } -> tensor<2x8x3xi64>
    %164 = arith.maxui %c-7914_i16, %c5569_i16 : i16
    %165 = vector.broadcast %c1524040724_i64 : i64 to vector<15x15xi64>
    %166 = vector.outerproduct %109, %109, %165 {kind = #vector.kind<maxsi>} : vector<15xi64>, vector<15xi64>
    %167 = math.cttz %c1462183081_i32 : i32
    %168 = math.expm1 %13 : tensor<2x8x3xf32>
    %169 = vector.broadcast %36 : index to vector<15xindex>
    %170 = vector.broadcast %cst : f32 to vector<15xf32>
    vector.scatter %alloc_4[%c4] [%169], %107, %170 : memref<15xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
    %171 = arith.remsi %c342695497_i32, %c1462183081_i32 : i32
    %172 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%0 : tensor<2x8x3xf16>) {
    ^bb0(%out: f16):
      %from_elements_38 = tensor.from_elements %true_1, %true, %false, %false, %false, %true, %true, %true, %true, %true_1, %true_1, %true_1, %true, %true_1, %false : tensor<15xi1>
      affine.for %arg0 = 0 to 57 {
      }
      %266 = arith.remsi %c912764018_i64, %c1218623755_i64 : i64
      %267 = affine.min affine_map<(d0, d1) -> ((d0 mod 4) ceildiv 8, d0 mod 4, d0 mod 4 + d0 ceildiv 128 - 33)>(%c12, %c14)
      %268 = index.ceildivs %c5, %c6
      %269 = math.floor %0 : tensor<2x8x3xf16>
      %270 = arith.mulf %out, %cst_0 : f16
      %271 = math.copysign %3, %3 : tensor<15xf32>
      %272 = arith.maxui %c-7914_i16, %c5569_i16 : i16
      %273 = index.ceildivs %140, %c0
      %274 = math.exp %7 : tensor<2x8x3xf32>
      %275 = vector.extract %19[10] : vector<15xf16>
      %276 = affine.for %arg0 = 0 to 88 iter_args(%arg1 = %63) -> (index) {
        affine.yield %141 : index
      }
      %277 = arith.cmpf une, %cst, %cst : f32
      %278 = vector.transpose %79, [0] : vector<3xf16> to vector<3xf16>
      %279 = bufferization.clone %100 : memref<2x8xi64> to memref<2x8xi64>
      %280 = math.ctpop %5 : tensor<15xi1>
      %281 = index.divu %95, %36
      %282 = vector.insert %c912764018_i64, %128 [1] : i64 into vector<2xi64>
      %283 = math.floor %0 : tensor<2x8x3xf16>
      %284 = vector.reduction <minf>, %123 : vector<8xf16> into f16
      %285 = vector.extract %74[6] : vector<8x2xi32>
      %286 = affine.for %arg0 = 0 to 22 iter_args(%arg1 = %19) -> (vector<15xf16>) {
        affine.yield %19 : vector<15xf16>
      }
      %287 = math.exp %3 : tensor<15xf32>
      %alloc_39 = memref.alloc() : memref<8x3xf16>
      %288 = tensor.empty() : tensor<2x3xf16>
      %289 = linalg.matmul ins(%2, %alloc_39 : tensor<2x8xf16>, memref<8x3xf16>) outs(%288 : tensor<2x3xf16>) -> tensor<2x3xf16>
      %290 = arith.addf %cst, %cst : f32
      %from_elements_40 = tensor.from_elements %c5569_i16, %c-1714_i16, %c5569_i16, %c-1714_i16, %c-7914_i16, %c-7914_i16, %c-1714_i16, %c5569_i16, %c5569_i16, %c5569_i16, %c-1714_i16, %c5569_i16, %c5569_i16, %c-7914_i16, %c-7914_i16, %c-1714_i16 : tensor<2x8xi16>
      affine.for %arg0 = 0 to 57 {
      }
      %291 = vector.multi_reduction <minsi>, %128, %73 [] : vector<2xi64> to vector<2xi64>
      %292 = vector.transpose %73, [0] : vector<2xi64> to vector<2xi64>
      scf.if %true_1 {
        %294 = math.fpowi %9, %4 : tensor<15xf16>, tensor<15xi32>
        %295 = arith.xori %c1222537340_i64, %c1524040724_i64 : i64
        %296 = arith.maxf %cst_0, %out : f16
        %297 = vector.multi_reduction <and>, %77, %c1524040724_i64 [0] : vector<15xi64> to i64
        %298 = arith.mulf %cst, %cst : f32
        %299 = affine.load %152[%c14] : memref<15xi64>
        %300 = math.fpowi %13, %6 : tensor<2x8x3xf32>, tensor<2x8x3xi32>
        %301 = vector.reduction <minsi>, %73 : vector<2xi64> into i64
      }
      %293 = index.divu %c7, %70
      linalg.yield %out : f16
    } -> tensor<2x8x3xf16>
    %173 = math.log2 %3 : tensor<15xf32>
    %174 = tensor.empty() : tensor<2x8xi1>
    %mapped = linalg.map ins(%10, %10 : tensor<2x8xi1>, tensor<2x8xi1>) outs(%174 : tensor<2x8xi1>)
      (%in: i1, %in_38: i1) {
        %266 = math.copysign %65, %cst : f32
        %alloc_39 = memref.alloc() : memref<2x8xi1>
        %267 = math.rsqrt %7 : tensor<2x8x3xf32>
        %268 = arith.addf %cst_0, %cst_0 : f16
        %269 = bufferization.to_memref %18 : memref<i32>
        %270 = vector.reduction <add>, %123 : vector<8xf16> into f16
        %271 = vector.broadcast %in : i1 to vector<15xi1>
        %272 = math.cttz %c-7914_i16 : i16
        %273 = vector.flat_transpose %127 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
        %274 = math.floor %15 : tensor<15xf32>
        %275 = math.log %13 : tensor<2x8x3xf32>
        %276 = index.maxs %c12, %51
        %277 = math.powf %9, %11 : tensor<15xf16>
        %278 = vector.broadcast %cst : f32 to vector<15xf32>
        %279 = vector.fma %278, %278, %278 : vector<15xf32>
        %280 = arith.remsi %false, %in : i1
        %281 = index.maxs %130, %63
        %282 = arith.addf %57, %cst_0 : f16
        %283 = vector.broadcast %65 : f32 to vector<2x8x3xf32>
        %284 = vector.fma %283, %283, %283 : vector<2x8x3xf32>
        %collapsed_40 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<2x8x3xf16> into tensor<16x3xf16>
        %285 = arith.addf %57, %57 : f16
        %286 = memref.atomic_rmw addi %c1462183081_i32, %149[%c0, %c2, %c2] : (i32, memref<2x8x3xi32>) -> i32
        %287 = index.castu %c1524040724_i64 : i64 to index
        %288 = arith.maxsi %c1218623755_i64, %c1524040724_i64 : i64
        %289 = math.ctlz %8 : tensor<15xi1>
        %290 = bufferization.clone %76 : memref<15xf16> to memref<15xf16>
        %291 = arith.cmpf oge, %57, %57 : f16
        %292 = vector.broadcast %cst_0 : f16 to vector<f16>
        %293 = vector.transfer_write %292, %from_elements[%c11] : vector<f16>, tensor<15xf16>
        %294 = arith.remsi %c1524040724_i64, %c1218623755_i64 : i64
        vector.print %46 : vector<2x8xf32>
        %295 = vector.reduction <maxsi>, %128 : vector<2xi64> into i64
        %296 = arith.andi %c912764018_i64, %c1524040724_i64 : i64
        %297 = arith.addf %65, %65 : f32
        %false_41 = arith.constant false
        linalg.yield %false_41 : i1
      }
    %175 = vector.broadcast %135 : index to vector<3xindex>
    %176 = vector.broadcast %true : i1 to vector<3xi1>
    vector.scatter %alloc_11[%c0, %c3, %c1] [%175], %176, %79 : memref<2x8x3xf16>, vector<3xindex>, vector<3xi1>, vector<3xf16>
    %177 = tensor.empty() : tensor<8x2x3xi32>
    %alloc_28 = memref.alloc() : memref<3xi32>
    %178 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%177, %177, %alloc_28 : tensor<8x2x3xi32>, tensor<8x2x3xi32>, memref<3xi32>) outs(%6 : tensor<2x8x3xi32>) {
    ^bb0(%in: i32, %in_38: i32, %in_39: i32, %out: i32):
      %266 = math.ipowi %c342695497_i32, %out : i32
      %267 = affine.max affine_map<(d0, d1) -> (d0, d1 - 65)>(%161, %95)
      %268 = math.ctpop %14 : tensor<15xi64>
      %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %107, %107, %true : vector<15xi1>, vector<15xi1> into i1
      %270 = math.ctpop %104 : tensor<2x8x3xi64>
      %271 = math.powf %0, %0 : tensor<2x8x3xf16>
      %272 = index.divu %c8, %29
      %273 = vector.multi_reduction <minsi>, %128, %127 [] : vector<2xi64> to vector<2xi64>
      %274 = math.ipowi %true_1, %false : i1
      %275 = index.divu %c8, %141
      %276 = tensor.empty() : tensor<2x3xf16>
      %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%276, %2, %276 : tensor<2x3xf16>, tensor<2x8xf16>, tensor<2x3xf16>) outs(%0 : tensor<2x8x3xf16>) {
      ^bb0(%in_40: f16, %in_41: f16, %in_42: f16, %out_43: f16):
        %298 = math.ctpop %c342695497_i32 : i32
        %299 = arith.minf %57, %in_41 : f16
        vector.print %137 : vector<8xi32>
        %300 = arith.cmpf true, %cst, %65 : f32
        bufferization.dealloc_tensor %from_elements : tensor<15xf16>
        %301 = affine.load %alloc_6[%c13, %c12, %c8] : memref<2x8x3xi1>
        %302 = index.casts %140 : index to i32
        %303 = math.cttz %4 : tensor<15xi32>
        %304 = vector.insert %true, %122 [4] : i1 into vector<8xi1>
        %inserted_44 = tensor.insert %true into %5[%c13] : tensor<15xi1>
        %305 = arith.minsi %c-7914_i16, %c-1714_i16 : i16
        %306 = arith.andi %in_38, %c1900925428_i32 : i32
        %307 = bufferization.clone %alloc_13 : memref<2x8x3xi64> to memref<2x8x3xi64>
        %308 = math.log10 %2 : tensor<2x8xf16>
        %309 = vector.transpose %82, [0] : vector<2xf32> to vector<2xf32>
        %collapsed_45 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<2x8x3xf16> into tensor<16x3xf16>
        %310 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %66, %68, %cst_0 : vector<2xf16>, vector<2xf16> into f16
        %311 = arith.remsi %c1218623755_i64, %c1524040724_i64 : i64
        %312 = arith.divf %57, %in_40 : f16
        %313 = index.divu %29, %c0
        %314 = vector.matrix_multiply %121, %79 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 3 : i32} : (vector<8xf16>, vector<3xf16>) -> vector<24xf16>
        %315 = math.log2 %0 : tensor<2x8x3xf16>
        memref.copy %alloc_15, %alloc_6 : memref<2x8x3xi1> to memref<2x8x3xi1>
        %316 = arith.minsi %c1524040724_i64, %c912764018_i64 : i64
        %317 = math.ceil %57 : f16
        %318 = math.round %0 : tensor<2x8x3xf16>
        %319 = affine.max affine_map<(d0, d1, d2, d3) -> (((d0 floordiv 2) ceildiv 32) * 32, (-d1 - d3) ceildiv 2, -d1, d2 + 65)>(%36, %272, %275, %29)
        %320 = math.ctpop %out : i32
        %321 = index.maxs %161, %319
        %322 = index.ceildivs %29, %116
        memref.copy %alloc_17, %76 : memref<15xf16> to memref<15xf16>
        %323 = arith.negf %cst_0 : f16
        linalg.yield %in_40 : f16
      } -> tensor<2x8x3xf16>
      %278 = bufferization.clone %152 : memref<15xi64> to memref<15xi64>
      %279 = vector.broadcast %cst : f32 to vector<2x8x3xf32>
      %280 = math.log2 %cst : f32
      %281 = index.ceildivs %135, %c10
      %282 = math.round %from_elements : tensor<15xf16>
      scf.if %true_1 {
        %298 = affine.max affine_map<(d0) -> (d0 + 4)>(%c6)
        %299 = vector.flat_transpose %71 {columns = 5 : i32, rows = 3 : i32} : vector<15xi64> -> vector<15xi64>
        %300 = math.ctlz %true : i1
        %301 = bufferization.clone %54 : memref<2x8x3xi64> to memref<2x8x3xi64>
        %302 = index.sub %c6, %c2
        %303 = math.ceil %2 : tensor<2x8xf16>
        %304 = arith.divsi %c-7914_i16, %c-1714_i16 : i16
        %305 = arith.minui %false, %true_1 : i1
      } else {
        %298 = math.sqrt %7 : tensor<2x8x3xf32>
        %299 = arith.maxui %in, %out : i32
        %300 = math.fpowi %21, %reduced : tensor<f16>, tensor<i32>
        %301 = math.log %13 : tensor<2x8x3xf32>
        %302 = arith.maxf %57, %57 : f16
        %303 = arith.mulf %57, %57 : f16
        %304 = math.tanh %2 : tensor<2x8xf16>
        %305 = arith.subi %c-7914_i16, %c-7914_i16 : i16
      }
      %283 = arith.shrsi %in_38, %c1900925428_i32 : i32
      %284 = math.tanh %2 : tensor<2x8xf16>
      %285 = index.maxs %c2, %70
      %286 = math.cttz %17 : tensor<15xi32>
      %287 = arith.subi %in, %c342695497_i32 : i32
      %288 = vector.splat %65 : vector<15xf32>
      %289 = arith.ori %c1218623755_i64, %c1222537340_i64 : i64
      %290 = vector.extract %68[0] : vector<2xf16>
      %291 = vector.extract_strided_slice %66 {offsets = [0], sizes = [2], strides = [1]} : vector<2xf16> to vector<2xf16>
      %292 = vector.matrix_multiply %291, %121 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<2xf16>, vector<8xf16>) -> vector<4xf16>
      %293 = math.cttz %splat_25 : tensor<15xi1>
      %294 = arith.maxf %cst, %cst : f32
      %295 = math.exp %3 : tensor<15xf32>
      %296 = index.maxs %c9, %116
      %297 = arith.remsi %c912764018_i64, %c1218623755_i64 : i64
      linalg.yield %c1900925428_i32 : i32
    } -> tensor<2x8x3xi32>
    %179 = math.fma %2, %2, %12 : tensor<2x8xf16>
    %alloc_29 = memref.alloc() : memref<8x15xi1>
    %180 = tensor.empty() : tensor<2x15xi1>
    %181 = linalg.matmul ins(%174, %alloc_29 : tensor<2x8xi1>, memref<8x15xi1>) outs(%180 : tensor<2x15xi1>) -> tensor<2x15xi1>
    %alloca_30 = memref.alloca() : memref<2x8x3xf32>
    %cst_31 = arith.constant 1.000000e+00 : f32
    %cst_32 = arith.constant 0.000000e+00 : f32
    %182 = vector.transfer_read %alloc_2[%c3], %cst_32 : memref<15xf32>, vector<f32>
    bufferization.dealloc_tensor %2 : tensor<2x8xf16>
    %183 = arith.shrsi %c-7914_i16, %c-1714_i16 : i16
    %184 = math.fpowi %21, %18 : tensor<f16>, tensor<i32>
    %185 = math.powf %12, %2 : tensor<2x8xf16>
    %186 = arith.floordivsi %c1462183081_i32, %c1900925428_i32 : i32
    %187 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1 : tensor<2x8x3xi32>) outs(%1 : tensor<2x8x3xi32>) {
    ^bb0(%in: i32, %out: i32):
      %266 = vector.insertelement %cst_0, %123[%c12 : index] : vector<8xf16>
      %267 = math.ipowi %true_1, %false : i1
      %268 = index.sub %c10, %95
      %269 = vector.broadcast %cst : f32 to vector<f32>
      vector.transfer_write %269, %alloc_4[%51] : vector<f32>, memref<15xf32>
      %270 = vector.broadcast %cst_31 : f32 to vector<2x8x3xf32>
      %271 = vector.fma %270, %270, %270 : vector<2x8x3xf32>
      %272 = math.round %7 : tensor<2x8x3xf32>
      %expanded_38 = tensor.expand_shape %15 [[0, 1]] : tensor<15xf32> into tensor<15x1xf32>
      memref.copy %alloc_9, %100 : memref<2x8xi64> to memref<2x8xi64>
      %273 = math.tanh %2 : tensor<2x8xf16>
      %274 = math.log2 %20 : tensor<f16>
      %c0_i64 = arith.constant 0 : i64
      %c0_i64_39 = arith.constant 0 : i64
      %275 = vector.transfer_read %54[%51, %154, %c5], %c0_i64_39 : memref<2x8x3xi64>, vector<i64>
      %276 = affine.load %alloc_5[%c13] : memref<15xf16>
      %277 = vector.matrix_multiply %99, %122 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 8 : i32} : (vector<1xi1>, vector<8xi1>) -> vector<8xi1>
      %278 = math.log %from_elements : tensor<15xf16>
      %279 = math.powf %3, %15 : tensor<15xf32>
      %280 = vector.broadcast %57 : f16 to vector<f16>
      vector.transfer_write %280, %134[%154] : vector<f16>, memref<15xf16>
      %from_elements_40 = tensor.from_elements %cst_31, %cst, %cst_31, %65, %65, %65, %cst_31, %65, %cst_31, %65, %cst, %cst_31, %cst, %65, %cst_31 : tensor<15xf32>
      %281 = arith.addf %cst, %cst : f32
      %282 = affine.load %alloc_14[%c3, %c9] : memref<2x8xi16>
      %283 = arith.muli %false, %true_1 : i1
      %284 = tensor.empty() : tensor<8xf32>
      %alloc_41 = memref.alloc() : memref<2x3x8xf32>
      %285 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%284, %alloc_41 : tensor<8xf32>, memref<2x3x8xf32>) outs(%13 : tensor<2x8x3xf32>) {
      ^bb0(%in_43: f32, %in_44: f32, %out_45: f32):
        %296 = vector.broadcast %282 : i16 to vector<15xi16>
        %297 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %296, %296, %282 : vector<15xi16>, vector<15xi16> into i16
        %298 = math.log2 %11 : tensor<15xf16>
        %299 = vector.reduction <and>, %107 : vector<15xi1> into i1
        %300 = vector.broadcast %cst_31 : f32 to vector<f32>
        vector.transfer_write %300, %alloc_2[%36] : vector<f32>, memref<15xf32>
        %301 = index.sizeof
        %302 = arith.remsi %in, %c1900925428_i32 : i32
        %303 = bufferization.to_memref %104 : memref<2x8x3xi64>
        %304 = affine.load %156[%c13] : memref<15xf16>
        %305 = arith.floordivsi %c1524040724_i64, %c1524040724_i64 : i64
        %collapsed_46 = tensor.collapse_shape %2 [[0, 1]] : tensor<2x8xf16> into tensor<16xf16>
        %306 = math.copysign %9, %11 : tensor<15xf16>
        %307 = vector.insertelement %c576287540_i64, %109[%116 : index] : vector<15xi64>
        %308 = arith.cmpf ule, %in_44, %in_43 : f32
        %309 = vector.reduction <and>, %122 : vector<8xi1> into i1
        %310 = math.log %cst : f32
        %311 = index.maxu %36, %135
        %312 = vector.flat_transpose %110 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %313 = index.divu %c10, %c12
        %314 = math.round %0 : tensor<2x8x3xf16>
        %315 = arith.remsi %out, %c342695497_i32 : i32
        %316 = vector.splat %c0_i64 : vector<15xi64>
        %317 = math.log %65 : f32
        %318 = bufferization.clone %alloc_15 : memref<2x8x3xi1> to memref<2x8x3xi1>
        %inserted_47 = tensor.insert %57 into %0[%c0, %c5, %c2] : tensor<2x8x3xf16>
        %319 = arith.floordivsi %c-1714_i16, %282 : i16
        %320 = arith.subi %c0_i64, %c1218623755_i64 : i64
        %321 = math.absf %2 : tensor<2x8xf16>
        %322 = arith.ceildivsi %282, %c-7914_i16 : i16
        %inserted_48 = tensor.insert %57 into %11[%c3] : tensor<15xf16>
        %323 = arith.shli %c576287540_i64, %c0_i64 : i64
        %324 = math.exp2 %9 : tensor<15xf16>
        linalg.yield %cst_31 : f32
      } -> tensor<2x8x3xf32>
      %286 = math.absf %from_elements_40 : tensor<15xf32>
      %287 = index.floordivs %c8, %c5
      %288 = math.ctlz %282 : i16
      %289 = vector.extract %271[1] : vector<2x8x3xf32>
      %290 = vector.matrix_multiply %73, %77 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 15 : i32} : (vector<2xi64>, vector<15xi64>) -> vector<30xi64>
      %291 = vector.matrix_multiply %127, %128 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi64>, vector<2xi64>) -> vector<1xi64>
      %292 = math.cttz %1 : tensor<2x8x3xi32>
      %generated_42 = tensor.generate %c5 {
      ^bb0(%arg0: index, %arg1: index):
        memref.store %57, %87[%c0, %c2] : memref<2x8xf16>
        %296 = arith.shli %c576287540_i64, %c912764018_i64 : i64
        %297 = index.castu %c1218623755_i64 : i64 to index
        %298 = arith.cmpf ogt, %cst, %65 : f32
        tensor.yield %65 : f32
      } : tensor<?x8xf32>
      %293 = arith.divsi %c912764018_i64, %c1222537340_i64 : i64
      %294 = vector.bitcast %99 : vector<1xi1> to vector<1xi1>
      %295 = bufferization.to_memref %from_elements_23 : memref<2x8x3xi64>
      linalg.yield %c1900925428_i32 : i32
    } -> tensor<2x8x3xi32>
    %188 = index.divu %c1, %c3
    %189 = vector.reduction <maxf>, %121 : vector<8xf16> into f16
    %190 = math.log %cst_0 : f16
    %191 = math.powf %splat_26, %7 : tensor<2x8x3xf32>
    %192 = math.fpowi %13, %1 : tensor<2x8x3xf32>, tensor<2x8x3xi32>
    %193 = arith.divsi %true, %true_1 : i1
    %194 = math.round %13 : tensor<2x8x3xf32>
    %195 = vector.broadcast %c342695497_i32 : i32 to vector<15xi32>
    %196 = vector.broadcast %true_1 : i1 to vector<i1>
    %197 = vector.transfer_write %196, %splat_25[%63] : vector<i1>, tensor<15xi1>
    %inserted_33 = tensor.insert %65 into %15[%c11] : tensor<15xf32>
    %198 = math.log2 %13 : tensor<2x8x3xf32>
    %199 = affine.min affine_map<(d0, d1) -> (((-d0) ceildiv 64) ceildiv 8, (-d0 - 2) * -2 - 2, (-(-d0 - 2)) ceildiv 64)>(%95, %c4)
    %alloca_34 = memref.alloca() : memref<2x8x3xi32>
    %200 = arith.divui %c1222537340_i64, %c1222537340_i64 : i64
    %201 = arith.ori %c576287540_i64, %c1222537340_i64 : i64
    %202 = vector.create_mask %161 : vector<15xi1>
    %203 = math.ipowi %c912764018_i64, %c1524040724_i64 : i64
    %204 = vector.insertelement %cst_0, %123[%51 : index] : vector<8xf16>
    %alloca_35 = memref.alloca() : memref<2x8x3xf16>
    memref.store %57, %156[%c8] : memref<15xf16>
    %205 = index.maxs %95, %95
    %206 = vector.reduction <maxui>, %110 : vector<1xi1> into i1
    %207 = index.maxu %51, %c6
    %208 = bufferization.clone %146 : memref<2x8x3xi64> to memref<2x8x3xi64>
    memref.copy %alloc_4, %alloc_2 : memref<15xf32> to memref<15xf32>
    %209 = math.absf %15 : tensor<15xf32>
    %210 = arith.cmpi sle, %c576287540_i64, %c576287540_i64 : i64
    %211 = vector.matrix_multiply %99, %67 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<1xi1>, vector<2xi1>) -> vector<2xi1>
    %212 = math.log2 %0 : tensor<2x8x3xf16>
    %collapsed = tensor.collapse_shape %12 [[0, 1]] : tensor<2x8xf16> into tensor<16xf16>
    %213 = arith.ori %c5569_i16, %c-1714_i16 : i16
    %214 = math.log %12 : tensor<2x8xf16>
    %215 = math.ctlz %c1462183081_i32 : i32
    %216 = vector.insert %c342695497_i32, %195 [2] : i32 into vector<15xi32>
    %217 = arith.cmpf uno, %57, %cst_0 : f16
    %218 = tensor.empty() : tensor<15xi64>
    %cast = tensor.cast %3 : tensor<15xf32> to tensor<?xf32>
    %219 = math.exp2 %11 : tensor<15xf16>
    %220 = bufferization.clone %alloc_15 : memref<2x8x3xi1> to memref<2x8x3xi1>
    %221 = math.sqrt %20 : tensor<f16>
    %222 = arith.shrui %c1222537340_i64, %c576287540_i64 : i64
    %223 = vector.extract_strided_slice %67 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi1> to vector<2xi1>
    %224 = vector.splat %true : vector<15xi1>
    %225 = arith.maxsi %false, %true_1 : i1
    %226 = vector.broadcast %cst_0 : f16 to vector<8x8xf16>
    %227 = vector.outerproduct %123, %123, %226 {kind = #vector.kind<add>} : vector<8xf16>, vector<8xf16>
    %228 = math.sqrt %2 : tensor<2x8xf16>
    %229 = arith.cmpf ueq, %65, %65 : f32
    %230 = math.log %7 : tensor<2x8x3xf32>
    %231 = memref.atomic_rmw maxs %c1222537340_i64, %alloc_7[%c1, %c4] : (i64, memref<2x8xi64>) -> i64
    %232 = affine.for %arg0 = 0 to 53 iter_args(%arg1 = %8) -> (tensor<15xi1>) {
      affine.yield %5 : tensor<15xi1>
    }
    %233 = bufferization.clone %alloc_12 : memref<2x8x3xi64> to memref<2x8x3xi64>
    %234 = vector.transpose %127, [0] : vector<2xi64> to vector<2xi64>
    %235 = math.log10 %0 : tensor<2x8x3xf16>
    %236 = arith.subi %true, %true_1 : i1
    %237 = math.log10 %2 : tensor<2x8xf16>
    %238 = arith.mulf %cst, %65 : f32
    %239 = bufferization.clone %100 : memref<2x8xi64> to memref<2x8xi64>
    %240 = arith.xori %c5569_i16, %c-1714_i16 : i16
    %241 = vector.extract %83[1] : vector<2xf32>
    %242 = bufferization.to_memref %3 : memref<15xf32>
    %243 = affine.max affine_map<(d0, d1, d2, d3) -> (-d3, 0, d1 - 32)>(%207, %c6, %c10, %95)
    %244 = arith.remf %cst_31, %cst : f32
    %245 = vector.splat %c9 : vector<15xindex>
    %246 = vector.broadcast %c576287540_i64 : i64 to vector<15x8xi64>
    vector.transfer_write %246, %233[%36, %140, %63] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<15x8xi64>, memref<2x8x3xi64>
    %247 = math.exp2 %12 : tensor<2x8xf16>
    memref.store %cst_0, %87[%c1, %c1] : memref<2x8xf16>
    affine.store %cst_0, %alloc_18[%c3] : memref<15xf16>
    %248 = arith.maxui %c1462183081_i32, %c342695497_i32 : i32
    %249 = arith.maxf %57, %cst_0 : f16
    %250 = math.rsqrt %splat_26 : tensor<2x8x3xf32>
    %251 = math.copysign %20, %20 : tensor<f16>
    %252 = math.floor %11 : tensor<15xf16>
    %253 = arith.shrui %true_1, %false : i1
    %254 = math.fpowi %21, %reduced : tensor<f16>, tensor<i32>
    %255 = vector.broadcast %65 : f32 to vector<15xf32>
    %256 = vector.fma %255, %255, %255 : vector<15xf32>
    %257 = arith.remf %cst_0, %57 : f16
    %258 = math.sqrt %15 : tensor<15xf32>
    %259 = vector.multi_reduction <mul>, %83, %83 [] : vector<2xf32> to vector<2xf32>
    %260 = arith.shrsi %c342695497_i32, %c1900925428_i32 : i32
    %261 = math.ipowi %c576287540_i64, %c912764018_i64 : i64
    %262 = tensor.empty() : tensor<15xf16>
    %263 = linalg.copy ins(%from_elements : tensor<15xf16>) outs(%262 : tensor<15xf16>) -> tensor<15xf16>
    %alloc_36 = memref.alloc() : memref<8x2xi64>
    linalg.transpose ins(%100 : memref<2x8xi64>) outs(%alloc_36 : memref<8x2xi64>) permutation = [1, 0] 
    %264 = tensor.empty() : tensor<2xi1>
    %reduced_37 = linalg.reduce ins(%10 : tensor<2x8xi1>) outs(%264 : tensor<2xi1>) dimensions = [1] 
      (%in: i1, %init: i1) {
        %266 = vector.broadcast %c-7914_i16 : i16 to vector<2x8xi16>
        %267 = math.log2 %splat_26 : tensor<2x8x3xf32>
        %268 = arith.floordivsi %c576287540_i64, %c576287540_i64 : i64
        %269 = arith.maxf %57, %cst_0 : f16
        %270 = memref.atomic_rmw maxf %cst_0, %alloc_17[%c9] : (f16, memref<15xf16>) -> f16
        %271 = index.maxs %c6, %130
        bufferization.dealloc_tensor %15 : tensor<15xf32>
        %272 = vector.transpose %19, [0] : vector<15xf16> to vector<15xf16>
        %true_38 = arith.constant true
        linalg.yield %true_38 : i1
      }
    scf.parallel (%arg0, %arg1) = (%106, %205) to (%58, %c9) step (%c15, %c1) {
      %266 = vector.create_mask %c10 : vector<15xi1>
      %267 = math.ctpop %from_elements_23 : tensor<2x8x3xi64>
      %268 = arith.divsi %c1462183081_i32, %c1462183081_i32 : i32
      vector.print %45 : vector<2x8xf32>
      %269 = vector.reduction <minui>, %110 : vector<1xi1> into i1
      %270 = index.divu %c0, %c7
      %271 = bufferization.clone %alloc_4 : memref<15xf32> to memref<15xf32>
      %272 = math.ipowi %174, %10 : tensor<2x8xi1>
      bufferization.dealloc_tensor %264 : tensor<2xi1>
      %273 = vector.extract %120[5] : vector<8x2xi32>
      %274 = index.maxs %51, %130
      bufferization.dealloc_tensor %263 : tensor<15xf16>
      %275 = math.round %12 : tensor<2x8xf16>
      %276 = arith.shrsi %c5569_i16, %c-1714_i16 : i16
      memref.store %57, %134[%c3] : memref<15xf16>
      %277 = math.sqrt %0 : tensor<2x8x3xf16>
      scf.yield
    }
    %265 = affine.vector_load %242[%c5] : memref<15xf32>, vector<2xf32>
    affine.vector_store %73, %239[%205, %36] : memref<2x8xi64>, vector<2xi64>
    vector.print %19 : vector<15xf16>
    vector.print %45 : vector<2x8xf32>
    vector.print %46 : vector<2x8xf32>
    vector.print %66 : vector<2xf16>
    vector.print %67 : vector<2xi1>
    vector.print %68 : vector<2xf16>
    vector.print %71 : vector<15xi64>
    vector.print %73 : vector<2xi64>
    vector.print %74 : vector<8x2xi32>
    vector.print %77 : vector<15xi64>
    vector.print %79 : vector<3xf16>
    vector.print %82 : vector<2xf32>
    vector.print %83 : vector<2xf32>
    vector.print %99 : vector<1xi1>
    vector.print %107 : vector<15xi1>
    vector.print %108 : vector<15xi32>
    vector.print %109 : vector<15xi64>
    vector.print %110 : vector<1xi1>
    vector.print %120 : vector<8x2xi32>
    vector.print %121 : vector<8xf16>
    vector.print %122 : vector<8xi1>
    vector.print %123 : vector<8xf16>
    vector.print %127 : vector<2xi64>
    vector.print %128 : vector<2xi64>
    vector.print %137 : vector<8xi32>
    vector.print %195 : vector<15xi32>
    vector.print %196 : vector<i1>
    vector.print %202 : vector<15xi1>
    vector.print %211 : vector<2xi1>
    vector.print %223 : vector<2xi1>
    vector.print %246 : vector<15x8xi64>
    vector.print %255 : vector<15xf32>
    vector.print %256 : vector<15xf32>
    vector.print %265 : vector<2xf32>
    vector.print %c1222537340_i64 : i64
    vector.print %false : i1
    vector.print %true : i1
    vector.print %cst : f32
    vector.print %c5569_i16 : i16
    vector.print %c912764018_i64 : i64
    vector.print %c-1714_i16 : i16
    vector.print %c-7914_i16 : i16
    vector.print %c1218623755_i64 : i64
    vector.print %c1462183081_i32 : i32
    vector.print %cst_0 : f16
    vector.print %true_1 : i1
    vector.print %c1900925428_i32 : i32
    vector.print %c576287540_i64 : i64
    vector.print %c1524040724_i64 : i64
    vector.print %c342695497_i32 : i32
    vector.print %57 : f16
    vector.print %65 : f32
    vector.print %cst_31 : f32
    return %alloc_10 : memref<2x8x3xi64>
  }
}
