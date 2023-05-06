module {
  func.func @func1(%arg0: tensor<9xi32>, %arg1: i64, %arg2: index) -> memref<14x8xi1> {
    %c650767988_i32 = arith.constant 650767988 : i32
    %cst = arith.constant 1.47746662E+9 : f32
    %false = arith.constant false
    %c1017508543_i32 = arith.constant 1017508543 : i32
    %cst_0 = arith.constant 1.89326451E+9 : f32
    %c3027_i16 = arith.constant 3027 : i16
    %false_1 = arith.constant false
    %c1901842985_i32 = arith.constant 1901842985 : i32
    %c1720371323_i64 = arith.constant 1720371323 : i64
    %cst_2 = arith.constant 1.017600e+04 : f16
    %c610352047_i32 = arith.constant 610352047 : i32
    %c492272022_i64 = arith.constant 492272022 : i64
    %c1944038390_i64 = arith.constant 1944038390 : i64
    %cst_3 = arith.constant 1.7321705E+9 : f32
    %cst_4 = arith.constant 6.115200e+04 : f16
    %cst_5 = arith.constant 1.04878406E+9 : f32
    %0 = tensor.empty() : tensor<9xi32>
    %1 = tensor.empty() : tensor<14x8xf16>
    %2 = tensor.empty() : tensor<9xf16>
    %3 = tensor.empty() : tensor<9xi32>
    %4 = tensor.empty() : tensor<14x12x9xi16>
    %5 = tensor.empty() : tensor<14x9xf16>
    %6 = tensor.empty() : tensor<9xi32>
    %7 = tensor.empty() : tensor<14x8xi16>
    %8 = tensor.empty() : tensor<14x12x9xi16>
    %9 = tensor.empty() : tensor<14x9xi64>
    %10 = tensor.empty() : tensor<9xi32>
    %11 = tensor.empty() : tensor<9xi16>
    %12 = tensor.empty() : tensor<14x12x9xi64>
    %13 = tensor.empty() : tensor<14x8xf32>
    %14 = tensor.empty() : tensor<14x12x9xi16>
    %15 = tensor.empty() : tensor<9xi64>
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
    %alloc = memref.alloc() : memref<14x12x9xi32>
    %alloc_6 = memref.alloc() : memref<9xf32>
    %alloc_7 = memref.alloc() : memref<9xi64>
    %alloc_8 = memref.alloc() : memref<14x9xf32>
    %alloc_9 = memref.alloc() : memref<14x8xi1>
    %alloc_10 = memref.alloc() : memref<9xi16>
    %alloc_11 = memref.alloc() : memref<9xi16>
    %alloc_12 = memref.alloc() : memref<14x9xi64>
    %alloc_13 = memref.alloc() : memref<9xi1>
    %alloc_14 = memref.alloc() : memref<14x9xi32>
    %alloc_15 = memref.alloc() : memref<9xi1>
    %alloc_16 = memref.alloc() : memref<14x9xi64>
    %alloc_17 = memref.alloc() : memref<9xi1>
    %alloc_18 = memref.alloc() : memref<14x9xf16>
    %alloc_19 = memref.alloc() : memref<14x12x9xi32>
    %alloc_20 = memref.alloc() : memref<14x12x9xf16>
    %16 = tensor.empty() : tensor<9xf16>
    %17 = linalg.copy ins(%2 : tensor<9xf16>) outs(%16 : tensor<9xf16>) -> tensor<9xf16>
    %18 = tensor.empty() : tensor<9x14x12xi16>
    %transposed = linalg.transpose ins(%4 : tensor<14x12x9xi16>) outs(%18 : tensor<9x14x12xi16>) permutation = [2, 0, 1] 
    %19 = tensor.empty() : tensor<i32>
    %reduced = linalg.reduce ins(%10 : tensor<9xi32>) outs(%19 : tensor<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %262 = math.tan %5 : tensor<14x9xf16>
        %263 = math.round %1 : tensor<14x8xf16>
        %generated_39 = tensor.generate %c5, %c10 {
        ^bb0(%arg3: index, %arg4: index):
          %270 = arith.maxsi %init, %init : i32
          %271 = arith.addi %false_1, %false : i1
          %272 = math.exp %16 : tensor<9xf16>
          %273 = arith.remsi %in, %in : i32
          tensor.yield %c3027_i16 : i16
        } : tensor<?x?xi16>
        %264 = affine.min affine_map<(d0) -> (-32, d0, -32, 0)>(%c14)
        %265 = vector.broadcast %cst_3 : f32 to vector<1xf32>
        %266 = vector.extract_strided_slice %265 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        %267 = math.log %1 : tensor<14x8xf16>
        %268 = vector.load %alloc_15[%c8] : memref<9xi1>, vector<9xi1>
        %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %265, %265, %cst : vector<1xf32>, vector<1xf32> into f32
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    scf.parallel (%arg3, %arg4) = (%c4, %c5) to (%c12, %c0) step (%c15, %c14) {
      %262 = math.exp %cst_5 : f32
      %263 = arith.subi %c1017508543_i32, %c1017508543_i32 : i32
      %264 = arith.minsi %c610352047_i32, %c1901842985_i32 : i32
      %265 = arith.minf %cst_0, %cst_0 : f32
      %266 = math.exp %1 : tensor<14x8xf16>
      %267 = index.divs %arg4, %c12
      %268 = arith.xori %c3027_i16, %c3027_i16 : i16
      %269 = math.absi %11 : tensor<9xi16>
      %270 = vector.load %alloc_20[%c5, %c2, %c8] : memref<14x12x9xf16>, vector<14x9xf16>
      %271 = math.log1p %13 : tensor<14x8xf32>
      %rank_39 = tensor.rank %9 : tensor<14x9xi64>
      %272 = vector.broadcast %cst_5 : f32 to vector<9xf32>
      %273 = vector.fma %272, %272, %272 : vector<9xf32>
      %274 = vector.matrix_multiply %272, %272 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf32>, vector<9xf32>) -> vector<1xf32>
      %275 = arith.cmpf false, %cst_2, %cst_2 : f16
      %276 = scf.if %false_1 -> (i32) {
        %278 = arith.shrsi %c650767988_i32, %c650767988_i32 : i32
        %279 = index.maxs %arg4, %c15
        %280 = arith.divsi %false_1, %false_1 : i1
        %281 = arith.ori %c492272022_i64, %c492272022_i64 : i64
        %collapsed = tensor.collapse_shape %1 [[0, 1]] : tensor<14x8xf16> into tensor<112xf16>
        %282 = index.divu %c2, %c7
        %283 = arith.maxui %false, %false : i1
        %284 = vector.extract_strided_slice %274 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
        scf.yield %c650767988_i32 : i32
      } else {
        %rank_40 = tensor.rank %11 : tensor<9xi16>
        %278 = arith.minsi %c610352047_i32, %c650767988_i32 : i32
        %inserted_41 = tensor.insert %c1017508543_i32 into %3[%c7] : tensor<9xi32>
        affine.store %cst, %alloc_6[%c2] : memref<9xf32>
        %279 = affine.min affine_map<(d0) -> ((d0 ceildiv 4) ceildiv 2 + 128, (d0 ceildiv 4) ceildiv 2)>(%c7)
        %280 = index.sizeof
        memref.tensor_store %9, %alloc_16 : memref<14x9xi64>
        %281 = math.ctpop %9 : tensor<14x9xi64>
        scf.yield %c610352047_i32 : i32
      }
      %277 = arith.subi %false_1, %false_1 : i1
      scf.yield
    }
    %20 = affine.vector_load %alloc_16[%c7, %c10] : memref<14x9xi64>, vector<14xi64>
    affine.vector_store %20, %alloc_16[%c11, %c1] : memref<14x9xi64>, vector<14xi64>
    %alloc_21 = memref.alloc() : memref<9xi16>
    %21 = tensor.empty() : tensor<i16>
    %22 = linalg.dot ins(%11, %alloc_21 : tensor<9xi16>, memref<9xi16>) outs(%21 : tensor<i16>) -> tensor<i16>
    %23 = index.add %c15, %c13
    %24 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d2 floordiv 64))>(%c11, %c13, %c1, %c14)
    %25 = arith.maxf %cst, %cst_5 : f32
    affine.store %c1901842985_i32, %alloc_19[%c9, %c11, %c7] : memref<14x12x9xi32>
    %26 = scf.while (%arg3 = %alloc_9) : (memref<14x8xi1>) -> memref<14x8xi1> {
      %262 = vector.broadcast %cst_2 : f16 to vector<8xf16>
      %263 = vector.broadcast %false : i1 to vector<8xi1>
      %264 = vector.maskedload %alloc_18[%c8, %c5], %263, %262 : memref<14x9xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
      %265 = memref.load %alloc_18[%c4, %c0] : memref<14x9xf16>
      %266 = index.divu %c15, %c0
      %267 = arith.maxf %cst_3, %cst_3 : f32
      %268 = vector.insertelement %false, %263[%c6 : index] : vector<8xi1>
      %269 = index.add %c0, %24
      %270 = index.floordivs %c14, %c7
      %271 = arith.shrui %c1720371323_i64, %c1944038390_i64 : i64
      scf.condition(%false) %alloc_9 : memref<14x8xi1>
    } do {
    ^bb0(%arg3: memref<14x8xi1>):
      %262 = vector.broadcast %c1944038390_i64 : i64 to vector<14x9xi64>
      %263 = vector.broadcast %c1720371323_i64 : i64 to vector<9xi64>
      %dest, %accumulated_value = vector.scan <or>, %262, %263 {inclusive = true, reduction_dim = 0 : i64} : vector<14x9xi64>, vector<9xi64>
      %264 = math.log %cst_3 : f32
      %265 = math.exp %cst_3 : f32
      %266 = arith.subi %c1901842985_i32, %c610352047_i32 : i32
      %267 = math.exp2 %2 : tensor<9xf16>
      %268 = vector.insertelement %c492272022_i64, %20[%c14 : index] : vector<14xi64>
      %269 = math.exp2 %cst : f32
      %270 = arith.shli %c1720371323_i64, %c1944038390_i64 : i64
      %271 = vector.matrix_multiply %20, %20 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<14xi64>) -> vector<1xi64>
      %272 = vector.multi_reduction <or>, %20, %c492272022_i64 [0] : vector<14xi64> to i64
      %273 = vector.broadcast %24 : index to vector<8xindex>
      %274 = vector.broadcast %false_1 : i1 to vector<8xi1>
      %275 = vector.broadcast %cst_0 : f32 to vector<8xf32>
      vector.scatter %alloc_8[%c3, %c7] [%273], %274, %275 : memref<14x9xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
      %276 = math.ipowi %c1017508543_i32, %c610352047_i32 : i32
      %277 = math.atan2 %13, %13 : tensor<14x8xf32>
      %278 = arith.maxui %c492272022_i64, %c1944038390_i64 : i64
      %279 = math.atan %cst_3 : f32
      scf.yield %arg3 : memref<14x8xi1>
    }
    %27 = arith.remsi %c1017508543_i32, %c1901842985_i32 : i32
    %28 = math.ctlz %false_1 : i1
    %29 = vector.broadcast %c492272022_i64 : i64 to vector<14x14xi64>
    %30 = vector.outerproduct %20, %20, %29 {kind = #vector.kind<xor>} : vector<14xi64>, vector<14xi64>
    %31 = math.round %1 : tensor<14x8xf16>
    affine.store %cst_2, %alloc_20[%c3, %c2, %c9] : memref<14x12x9xf16>
    %32 = arith.ori %c610352047_i32, %c650767988_i32 : i32
    %33 = arith.maxf %cst_3, %cst_3 : f32
    %34 = arith.mulf %cst_2, %cst_2 : f16
    %35 = arith.shli %c1017508543_i32, %c1901842985_i32 : i32
    %36 = math.cos %2 : tensor<9xf16>
    %37 = vector.reduction <and>, %20 : vector<14xi64> into i64
    %38 = index.ceildivu %c12, %c11
    %39 = index.sizeof
    %c-5287_i16 = arith.constant -5287 : i16
    %40 = math.absi %9 : tensor<14x9xi64>
    scf.if %false {
      scf.execute_region {
        %270 = math.tan %5 : tensor<14x9xf16>
        %271 = math.tanh %cst_0 : f32
        %272 = index.castu %c11 : index to i32
        %273 = index.castu %24 : index to i32
        %274 = affine.min affine_map<(d0, d1, d2) -> (d0 * 8)>(%c6, %c11, %39)
        %275 = arith.mulf %cst_4, %cst_2 : f16
        %276 = index.floordivs %c2, %c3
        %inserted_39 = tensor.insert %c650767988_i32 into %3[%c2] : tensor<9xi32>
        %277 = index.add %c6, %c8
        %278 = math.exp2 %5 : tensor<14x9xf16>
        %279 = vector.matrix_multiply %20, %20 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<14xi64>) -> vector<1xi64>
        %280 = vector.insertelement %c1720371323_i64, %20[%277 : index] : vector<14xi64>
        %281 = math.roundeven %cst_4 : f16
        %282 = arith.mulf %cst_3, %cst_0 : f32
        %283 = vector.splat %c13 : vector<9xindex>
        %284 = math.log %cst_0 : f32
        scf.yield
      }
      %262 = arith.addi %c610352047_i32, %c1901842985_i32 : i32
      %263 = arith.ori %c1944038390_i64, %c1720371323_i64 : i64
      %264 = math.log2 %5 : tensor<14x9xf16>
      %265 = scf.if %false -> (i1) {
        memref.assume_alignment %alloc_20, 4 : memref<14x12x9xf16>
        %270 = arith.shrui %c1017508543_i32, %c1017508543_i32 : i32
        %271 = math.roundeven %1 : tensor<14x8xf16>
        %272 = memref.atomic_rmw muli %c1720371323_i64, %alloc_16[%c2, %c0] : (i64, memref<14x9xi64>) -> i64
        %273 = arith.subi %c3027_i16, %c3027_i16 : i16
        %c-18689_i16 = arith.constant -18689 : i16
        %inserted_39 = tensor.insert %c3027_i16 into %4[%c5, %c9, %c8] : tensor<14x12x9xi16>
        %274 = index.mul %c1, %c7
        scf.yield %false_1 : i1
      } else {
        %270 = math.expm1 %5 : tensor<14x9xf16>
        %rank_39 = tensor.rank %7 : tensor<14x8xi16>
        bufferization.dealloc_tensor %8 : tensor<14x12x9xi16>
        %271 = math.exp2 %cst_3 : f32
        %272 = math.ctlz %3 : tensor<9xi32>
        %273 = math.atan2 %13, %13 : tensor<14x8xf32>
        %274 = index.floordivs %c3, %c5
        %275 = arith.maxui %false, %false : i1
        scf.yield %false : i1
      }
      %266 = arith.cmpf false, %cst_0, %cst_0 : f32
      %267 = vector.broadcast %cst_2 : f16 to vector<f16>
      %268 = vector.transfer_write %267, %2[%c13] : vector<f16>, tensor<9xf16>
      %269 = arith.subi %false, %false_1 : i1
    }
    %41 = arith.maxf %cst_2, %cst_2 : f16
    %42 = arith.divui %c3027_i16, %c3027_i16 : i16
    %43 = arith.maxui %c610352047_i32, %c1901842985_i32 : i32
    %44 = index.sub %c12, %c2
    %rank = tensor.rank %8 : tensor<14x12x9xi16>
    %45 = arith.mulf %cst_0, %cst_5 : f32
    %46 = math.copysign %cst_2, %cst_2 : f16
    %47 = arith.maxui %c492272022_i64, %c492272022_i64 : i64
    %48 = math.atan %cst_5 : f32
    %49 = arith.remsi %false, %false_1 : i1
    %50 = vector.broadcast %c492272022_i64 : i64 to vector<14x14xi64>
    %51 = vector.outerproduct %20, %20, %50 {kind = #vector.kind<mul>} : vector<14xi64>, vector<14xi64>
    %52 = arith.ceildivsi %c1720371323_i64, %c492272022_i64 : i64
    %53 = index.maxs %c5, %c3
    %54 = index.casts %38 : index to i32
    %55 = math.exp %cst_4 : f16
    %56 = arith.cmpi sge, %c1901842985_i32, %c610352047_i32 : i32
    %57 = memref.atomic_rmw minf %cst_5, %alloc_8[%c6, %c0] : (f32, memref<14x9xf32>) -> f32
    %58 = arith.minui %c3027_i16, %c3027_i16 : i16
    %59 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %20, %20, %c1720371323_i64 : vector<14xi64>, vector<14xi64> into i64
    %60 = affine.apply affine_map<(d0) -> ((d0 - 32) * -2)>(%c7)
    scf.index_switch %c1 
    case 1 {
      %262 = vector.reduction <xor>, %20 : vector<14xi64> into i64
      %263 = index.sizeof
      %264 = math.fpowi %cst_3, %c1901842985_i32 : f32, i32
      %265 = arith.divui %false, %false : i1
      %266 = math.absi %15 : tensor<9xi64>
      %267 = math.expm1 %cst_5 : f32
      %268 = math.atan %cst_2 : f16
      %alloca = memref.alloca() : memref<14x9xi64>
      %269 = arith.maxsi %c492272022_i64, %c1720371323_i64 : i64
      %270 = vector.broadcast %c1944038390_i64 : i64 to vector<12xi64>
      %271 = vector.broadcast %false_1 : i1 to vector<12xi1>
      %272 = vector.maskedload %alloc_12[%c12, %c4], %271, %270 : memref<14x9xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
      %273 = arith.cmpi sle, %c1017508543_i32, %c1901842985_i32 : i32
      %274 = math.tanh %cst : f32
      %275 = index.sub %c5, %c1
      %276 = vector.insertelement %c1944038390_i64, %272[%c12 : index] : vector<12xi64>
      %277 = math.ipowi %c1017508543_i32, %c610352047_i32 : i32
      %278 = vector.broadcast %false_1 : i1 to vector<12x12xi1>
      %279 = vector.outerproduct %271, %271, %278 {kind = #vector.kind<maxsi>} : vector<12xi1>, vector<12xi1>
      scf.yield
    }
    case 2 {
      %262 = affine.apply affine_map<(d0) -> ((d0 floordiv 64) floordiv 2 - d0)>(%53)
      %263 = tensor.empty() : tensor<14x9xi1>
      %264 = vector.broadcast %false : i1 to vector<14x12x9xi1>
      %265 = vector.broadcast %c610352047_i32 : i32 to vector<14x12x9xi32>
      %266 = vector.gather %263[%38, %c2] [%265], %264, %264 : tensor<14x9xi1>, vector<14x12x9xi32>, vector<14x12x9xi1>, vector<14x12x9xi1> into vector<14x12x9xi1>
      %267 = math.cos %5 : tensor<14x9xf16>
      %268 = arith.subi %c650767988_i32, %c1017508543_i32 : i32
      %269 = math.atan %1 : tensor<14x8xf16>
      %270 = math.rsqrt %13 : tensor<14x8xf32>
      %271 = math.atan2 %2, %16 : tensor<9xf16>
      %272 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 + 16) * 8 >= 0, -d0 - d3 == 0, d2 >= 0)>(%c8, %c10, %c13, %c1) -> f32 {
        %279 = affine.min affine_map<(d0) -> (d0, d0 * 2 - 126, (d0 * 2 + 2) ceildiv 64, (((d0 * 2) floordiv 16) floordiv 4) mod 4)>(%262)
        %280 = math.log10 %cst_5 : f32
        %281 = index.sizeof
        memref.tensor_store %9, %alloc_16 : memref<14x9xi64>
        %282 = math.log2 %cst_0 : f32
        %283 = index.add %c15, %39
        %284 = arith.shrui %c3027_i16, %c3027_i16 : i16
        %285 = arith.remsi %c1944038390_i64, %c1944038390_i64 : i64
        affine.yield %cst_3 : f32
      } else {
        %279 = memref.load %alloc_8[%c8, %c6] : memref<14x9xf32>
        %280 = memref.load %alloc_12[%c12, %c3] : memref<14x9xi64>
        %281 = arith.shli %c1901842985_i32, %c610352047_i32 : i32
        %282 = memref.atomic_rmw minf %cst_4, %alloc_20[%c2, %c11, %c0] : (f16, memref<14x12x9xf16>) -> f16
        %283 = math.log10 %1 : tensor<14x8xf16>
        %rank_42 = tensor.rank %8 : tensor<14x12x9xi16>
        %284 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 - d0, d1 * 2, d2, d3)>(%c2, %c7, %c12, %24)
        %285 = index.casts %c1017508543_i32 : i32 to index
        affine.yield %cst : f32
      }
      %273 = math.round %16 : tensor<9xf16>
      %274 = arith.addf %cst_4, %cst_4 : f16
      %inserted_39 = tensor.insert %c1901842985_i32 into %3[%c0] : tensor<9xi32>
      %275 = index.castu %39 : index to i32
      %276 = vector.broadcast %c1017508543_i32 : i32 to vector<i32>
      %277 = vector.transfer_write %276, %0[%23] : vector<i32>, tensor<9xi32>
      %278 = math.powf %13, %13 : tensor<14x8xf32>
      %inserted_40 = tensor.insert %c3027_i16 into %4[%c0, %c11, %c7] : tensor<14x12x9xi16>
      %rank_41 = tensor.rank %8 : tensor<14x12x9xi16>
      scf.yield
    }
    case 3 {
      %expanded_39 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<14x8xf32> into tensor<14x8x1xf32>
      %262 = math.ceil %13 : tensor<14x8xf32>
      %263 = arith.minsi %c1720371323_i64, %c492272022_i64 : i64
      %alloc_40 = memref.alloc() : memref<14x8xf16>
      memref.tensor_store %1, %alloc_40 : memref<14x8xf16>
      %264 = math.expm1 %cst_3 : f32
      %alloc_41 = memref.alloc() : memref<14x12x9xi16>
      memref.tensor_store %8, %alloc_41 : memref<14x12x9xi16>
      %265 = arith.divui %c1944038390_i64, %c492272022_i64 : i64
      %266 = math.atan2 %cst, %cst : f32
      %267 = vector.transpose %20, [0] : vector<14xi64> to vector<14xi64>
      %268 = index.ceildivu %c11, %c5
      %generated_42 = tensor.generate %c3, %c14, %c14 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %273 = math.cos %cst_4 : f16
        %274 = math.exp %cst_0 : f32
        %rank_43 = tensor.rank %10 : tensor<9xi32>
        %275 = math.fma %5, %5, %5 : tensor<14x9xf16>
        tensor.yield %c610352047_i32 : i32
      } : tensor<?x?x?xi32>
      affine.store %c650767988_i32, %alloc[%c2, %c2, %c4] : memref<14x12x9xi32>
      %269 = arith.cmpf ole, %cst_2, %cst_4 : f16
      %270 = math.atan2 %cst_0, %cst_5 : f32
      %271 = math.cttz %false_1 : i1
      %272 = bufferization.clone %alloc_13 : memref<9xi1> to memref<9xi1>
      scf.yield
    }
    default {
      scf.if %false {
        %274 = index.ceildivu %c4, %c2
        %275 = math.tanh %cst_5 : f32
        %276 = arith.ceildivsi %c1720371323_i64, %c1720371323_i64 : i64
        %rank_41 = tensor.rank %reduced : tensor<i32>
        %277 = index.maxs %38, %38
        %278 = arith.remf %cst_5, %cst : f32
        %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %20, %20, %c492272022_i64 : vector<14xi64>, vector<14xi64> into i64
        %280 = index.casts %53 : index to i32
      } else {
        %274 = vector.load %alloc_18[%c11, %c4] : memref<14x9xf16>, vector<14x12x9xf16>
        %275 = vector.broadcast %c3027_i16 : i16 to vector<12xi16>
        %276 = vector.broadcast %false : i1 to vector<12xi1>
        %277 = vector.maskedload %alloc_21[%c7], %276, %275 : memref<9xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %278 = affine.min affine_map<(d0, d1) -> ((d0 mod 2) * -2, (d0 mod 2) * 2, (d0 mod 2 - 16) floordiv 128, d1 + d0 mod 2 - d0 mod 2 - 8)>(%rank, %c0)
        %279 = arith.maxsi %c650767988_i32, %c1901842985_i32 : i32
        %280 = arith.divf %cst, %cst_0 : f32
        %281 = vector.load %alloc_7[%c6] : memref<9xi64>, vector<14x8xi64>
        %282 = index.ceildivu %c1, %c14
        %283 = index.ceildivu %c5, %c10
      }
      %262 = vector.splat %rank : vector<14x9xindex>
      %263 = math.exp %17 : tensor<9xf16>
      %264 = vector.broadcast %cst_3 : f32 to vector<14x12x9xf32>
      %265 = arith.subi %false_1, %false : i1
      scf.index_switch %c0 
      case 1 {
        %274 = vector.matrix_multiply %20, %20 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<14xi64>) -> vector<1xi64>
        %275 = index.castu %c3 : index to i32
        %276 = arith.remui %false_1, %false_1 : i1
        %277 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 mod 2, d0 * 64, d0 * 65 - 4)>(%44, %c5, %c13, %c14)
        %278 = arith.ori %c1720371323_i64, %c492272022_i64 : i64
        %279 = memref.load %alloc_16[%c3, %c1] : memref<14x9xi64>
        %280 = index.ceildivu %39, %c15
        %281 = math.round %cst_5 : f32
        %282 = math.fma %13, %13, %13 : tensor<14x8xf32>
        %283 = index.mul %38, %23
        %284 = index.floordivs %283, %c15
        %285 = arith.mulf %cst_3, %cst : f32
        %286 = vector.reduction <minui>, %274 : vector<1xi64> into i64
        %287 = math.cos %17 : tensor<9xf16>
        %288 = math.expm1 %cst_5 : f32
        %289 = affine.apply affine_map<(d0, d1, d2) -> (d1 - 32)>(%44, %c7, %c15)
        scf.yield
      }
      case 2 {
        %274 = math.fma %cst_5, %cst_5, %cst_3 : f32
        %inserted_41 = tensor.insert %c3027_i16 into %11[%c5] : tensor<9xi16>
        %275 = vector.reduction <minsi>, %20 : vector<14xi64> into i64
        %276 = index.maxs %c2, %39
        %277 = index.ceildivs %24, %276
        %278 = vector.reduction <minui>, %20 : vector<14xi64> into i64
        %279 = index.add %c9, %53
        %280 = affine.max affine_map<(d0) -> ((d0 mod 8 - (d0 - 1)) * 32)>(%c5)
        %281 = vector.load %alloc_18[%c2, %c2] : memref<14x9xf16>, vector<14x8xf16>
        %282 = arith.cmpf oge, %cst_0, %cst_5 : f32
        %283 = vector.broadcast %c10 : index to vector<9xindex>
        %284 = vector.broadcast %false_1 : i1 to vector<9xi1>
        %285 = vector.broadcast %c1944038390_i64 : i64 to vector<9xi64>
        vector.scatter %alloc_12[%c2, %c2] [%283], %284, %285 : memref<14x9xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
        %286 = arith.divf %cst_5, %cst_3 : f32
        %287 = memref.atomic_rmw minf %cst, %alloc_8[%c5, %c5] : (f32, memref<14x9xf32>) -> f32
        %288 = vector.extract_strided_slice %264 {offsets = [11, 0], sizes = [3, 10], strides = [1, 1]} : vector<14x12x9xf32> to vector<3x10x9xf32>
        %289 = arith.shrsi %c1901842985_i32, %c1017508543_i32 : i32
        %290 = arith.divui %c610352047_i32, %c650767988_i32 : i32
        scf.yield
      }
      case 3 {
        %274 = math.log10 %5 : tensor<14x9xf16>
        %rank_41 = tensor.rank %2 : tensor<9xf16>
        %275 = math.log2 %13 : tensor<14x8xf32>
        memref.store %c3027_i16, %alloc_21[%c0] : memref<9xi16>
        %276 = arith.divui %c1901842985_i32, %c1017508543_i32 : i32
        %277 = memref.load %alloc_15[%c2] : memref<9xi1>
        %278 = vector.broadcast %cst_0 : f32 to vector<12x9xf32>
        %279 = vector.multi_reduction <add>, %264, %278 [0] : vector<14x12x9xf32> to vector<12x9xf32>
        %280 = math.expm1 %2 : tensor<9xf16>
        %alloc_42 = memref.alloc() : memref<9xf16>
        memref.tensor_store %16, %alloc_42 : memref<9xf16>
        %281 = arith.floordivsi %c1944038390_i64, %c1944038390_i64 : i64
        %282 = index.add %c11, %23
        %283 = vector.broadcast %cst : f32 to vector<9xf32>
        %284 = vector.insert %283, %278 [3] : vector<9xf32> into vector<12x9xf32>
        %285 = math.tan %17 : tensor<9xf16>
        %286 = vector.broadcast %cst_5 : f32 to vector<9xf32>
        %287 = arith.addi %c1901842985_i32, %c610352047_i32 : i32
        %288 = math.tanh %13 : tensor<14x8xf32>
        scf.yield
      }
      case 4 {
        %274 = vector.load %alloc_20[%c0, %c9, %c5] : memref<14x12x9xf16>, vector<14x12x9xf16>
        %275 = index.divu %24, %c15
        %276 = math.cos %16 : tensor<9xf16>
        %277 = index.ceildivs %rank, %44
        %false_41 = index.bool.constant false
        %278 = math.exp %13 : tensor<14x8xf32>
        bufferization.dealloc_tensor %0 : tensor<9xi32>
        %279 = math.cttz %0 : tensor<9xi32>
        %280 = math.ipowi %7, %7 : tensor<14x8xi16>
        %281 = arith.addf %cst_5, %cst_0 : f32
        %282 = arith.divui %c3027_i16, %c3027_i16 : i16
        %283 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 floordiv 8)>(%60, %c9, %24, %60)
        %284 = arith.remui %c1901842985_i32, %c650767988_i32 : i32
        %285 = affine.min affine_map<(d0, d1) -> (d0)>(%53, %c15)
        %286 = index.maxs %c14, %c10
        %287 = math.copysign %13, %13 : tensor<14x8xf32>
        scf.yield
      }
      default {
        %alloc_41 = memref.alloc() : memref<14x8xf16>
        %274 = vector.broadcast %cst_2 : f16 to vector<14x9xf16>
        %275 = vector.broadcast %false_1 : i1 to vector<14x9xi1>
        %276 = vector.broadcast %c1017508543_i32 : i32 to vector<14x9xi32>
        %277 = vector.gather %alloc_41[%44, %c6] [%276], %275, %274 : memref<14x8xf16>, vector<14x9xi32>, vector<14x9xi1>, vector<14x9xf16> into vector<14x9xf16>
        %278 = bufferization.clone %alloc_17 : memref<9xi1> to memref<9xi1>
        %279 = math.fma %5, %5, %5 : tensor<14x9xf16>
        %280 = vector.broadcast %c1720371323_i64 : i64 to vector<14x14xi64>
        %281 = vector.outerproduct %20, %20, %280 {kind = #vector.kind<or>} : vector<14xi64>, vector<14xi64>
        %282 = arith.addf %cst_5, %cst_0 : f32
        %283 = math.sqrt %cst_4 : f16
        %284 = math.sqrt %2 : tensor<9xf16>
        %285 = vector.load %278[%c7] : memref<9xi1>, vector<9xi1>
        %286 = arith.remsi %c1720371323_i64, %c1944038390_i64 : i64
        %287 = vector.broadcast %c7 : index to vector<12xindex>
        %288 = vector.broadcast %false : i1 to vector<12xi1>
        %289 = vector.broadcast %c3027_i16 : i16 to vector<12xi16>
        vector.scatter %alloc_21[%c8] [%287], %288, %289 : memref<9xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
        affine.store %cst_2, %alloc_20[%c0, %c1, %c1] : memref<14x12x9xf16>
        %290 = math.log10 %cst_0 : f32
        bufferization.dealloc_tensor %6 : tensor<9xi32>
        %291 = math.round %5 : tensor<14x9xf16>
        memref.store %cst_5, %alloc_8[%c4, %c0] : memref<14x9xf32>
        %292 = math.log1p %1 : tensor<14x8xf16>
      }
      %266 = vector.load %alloc_8[%c3, %c4] : memref<14x9xf32>, vector<14x8xf32>
      %267 = arith.maxsi %c1720371323_i64, %c492272022_i64 : i64
      %268 = math.expm1 %cst_3 : f32
      %269 = math.atan %cst_0 : f32
      %270 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 floordiv 64)>(%c9, %c13, %23, %60)
      %271 = vector.insertelement %c492272022_i64, %20[%39 : index] : vector<14xi64>
      %272 = math.tanh %1 : tensor<14x8xf16>
      %273 = math.tanh %cst_4 : f16
      %cst_39 = arith.constant 6.406400e+04 : f16
      %inserted_40 = tensor.insert %c3027_i16 into %11[%c4] : tensor<9xi16>
    }
    %61 = arith.minf %cst_2, %cst_2 : f16
    %alloc_22 = memref.alloc() : memref<14x8xi1>
    %62 = arith.xori %false_1, %false : i1
    %63 = index.sizeof
    %64 = arith.addi %c1901842985_i32, %c1901842985_i32 : i32
    affine.store %c1944038390_i64, %alloc_7[%c10] : memref<9xi64>
    %65 = arith.cmpi ule, %c1720371323_i64, %c492272022_i64 : i64
    %66 = vector.matrix_multiply %20, %20 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<14xi64>) -> vector<1xi64>
    %67 = math.exp %1 : tensor<14x8xf16>
    scf.if %false {
      %262 = vector.multi_reduction <or>, %20, %c1944038390_i64 [0] : vector<14xi64> to i64
      %263 = math.round %2 : tensor<9xf16>
      %264 = index.sub %c1, %38
      %265 = index.add %c3, %c1
      %266 = vector.extract_strided_slice %66 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
      %267 = arith.divui %c3027_i16, %c3027_i16 : i16
      %268 = math.roundeven %cst_4 : f16
      %269 = math.fma %cst_2, %cst_4, %cst_4 : f16
    } else {
      %262 = arith.shrsi %false, %false_1 : i1
      %263 = memref.load %alloc_19[%c1, %c5, %c3] : memref<14x12x9xi32>
      scf.if %false {
        %269 = vector.splat %c1017508543_i32 : vector<9xi32>
        %c1763061110_i64 = arith.constant 1763061110 : i64
        %270 = vector.reduction <maxsi>, %66 : vector<1xi64> into i64
        %271 = arith.addf %cst_0, %cst : f32
        %272 = affine.min affine_map<(d0, d1) -> (0, d1)>(%c9, %53)
        %273 = math.atan2 %16, %2 : tensor<9xf16>
        %274 = arith.addf %cst_4, %cst_2 : f16
        %275 = index.maxu %c4, %39
      } else {
        %269 = math.ceil %cst : f32
        %270 = math.ipowi %11, %11 : tensor<9xi16>
        %271 = index.maxs %c6, %c5
        %272 = arith.ceildivsi %false, %false : i1
        %273 = arith.remf %cst_3, %cst_5 : f32
        %274 = vector.broadcast %c2 : index to vector<8xindex>
        %275 = vector.broadcast %false_1 : i1 to vector<8xi1>
        vector.scatter %alloc_17[%c2] [%274], %275, %275 : memref<9xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
        %276 = math.atan %cst_5 : f32
        %splat = tensor.splat %c610352047_i32 : tensor<14x9xi32>
      }
      %264 = arith.maxf %cst_2, %cst_2 : f16
      %265 = arith.remf %cst, %cst_3 : f32
      %266 = vector.multi_reduction <add>, %20, %20 [] : vector<14xi64> to vector<14xi64>
      %267 = memref.load %alloc_12[%c8, %c6] : memref<14x9xi64>
      %268 = vector.splat %60 : vector<14x9xindex>
    }
    %alloc_23 = memref.alloc() : memref<14x8xi16>
    %68 = index.sizeof
    %69 = arith.maxui %c1944038390_i64, %c1944038390_i64 : i64
    %70 = vector.insertelement %c1944038390_i64, %66[%c12 : index] : vector<1xi64>
    %71 = math.absi %4 : tensor<14x12x9xi16>
    %72 = index.castu %c650767988_i32 : i32 to index
    %73 = math.cttz %c3027_i16 : i16
    %74 = memref.load %alloc_10[%c8] : memref<9xi16>
    %75 = math.copysign %5, %5 : tensor<14x9xf16>
    %generated = tensor.generate %c0, %c10, %63 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %262 = memref.atomic_rmw maxs %c3027_i16, %alloc_21[%c0] : (i16, memref<9xi16>) -> i16
      %263 = math.log1p %cst_2 : f16
      %264 = arith.ori %false_1, %false : i1
      %265 = index.add %c1, %23
      tensor.yield %cst_4 : f16
    } : tensor<?x?x?xf16>
    %cst_24 = arith.constant 0x4E6DA096 : f32
    %76 = math.sqrt %13 : tensor<14x8xf32>
    %77 = math.ceil %cst_2 : f16
    %78 = index.sizeof
    affine.store %c1944038390_i64, %alloc_16[%c9, %c4] : memref<14x9xi64>
    %79 = math.cttz %21 : tensor<i16>
    affine.for %arg3 = 0 to 87 {
    }
    %80 = arith.divf %cst_5, %cst_0 : f32
    %81 = index.casts %39 : index to i32
    %82 = arith.subi %false_1, %false_1 : i1
    %83 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 - (d2 - (d3 + 64) + (d1 mod 8) * 16) + 16) floordiv 128 >= 0, d2 - (d2 - (d3 + 64) + (d1 mod 8) * 16) + 16 == 0)>(%c9, %c3, %c8, %c6) -> memref<9xi1> {
      %262 = math.ctpop %11 : tensor<9xi16>
      %263 = arith.ceildivsi %c650767988_i32, %c650767988_i32 : i32
      affine.store %false_1, %alloc_13[%c11] : memref<9xi1>
      %264 = arith.maxui %c1901842985_i32, %c650767988_i32 : i32
      %265 = math.expm1 %13 : tensor<14x8xf32>
      vector.print %20 : vector<14xi64>
      %266 = arith.divsi %c610352047_i32, %c610352047_i32 : i32
      %267 = index.floordivs %c5, %c14
      affine.yield %alloc_15 : memref<9xi1>
    } else {
      %262 = arith.floordivsi %c650767988_i32, %c1901842985_i32 : i32
      %263 = arith.negf %cst_5 : f32
      %264 = arith.muli %c650767988_i32, %c650767988_i32 : i32
      %265 = arith.xori %false_1, %false_1 : i1
      %266 = arith.addf %cst, %cst : f32
      %267 = affine.apply affine_map<(d0, d1, d2) -> (d1 * 4)>(%c6, %68, %c9)
      %268 = arith.xori %c1720371323_i64, %c1944038390_i64 : i64
      %269 = math.roundeven %17 : tensor<9xf16>
      affine.yield %alloc_13 : memref<9xi1>
    }
    %84 = math.fma %5, %5, %5 : tensor<14x9xf16>
    %85 = arith.shrsi %c1720371323_i64, %c492272022_i64 : i64
    %86 = arith.maxsi %false_1, %false : i1
    %87 = math.atan %cst_5 : f32
    %88 = math.sqrt %cst_4 : f16
    %89 = arith.addi %c610352047_i32, %c650767988_i32 : i32
    %90 = arith.addf %cst_3, %cst_3 : f32
    scf.index_switch %53 
    case 1 {
      %262 = affine.apply affine_map<(d0, d1, d2) -> (d1 - 32)>(%23, %c6, %c7)
      %263 = memref.atomic_rmw maxf %cst_4, %alloc_18[%c2, %c8] : (f16, memref<14x9xf16>) -> f16
      %264 = math.log2 %17 : tensor<9xf16>
      %265 = arith.xori %c1017508543_i32, %c610352047_i32 : i32
      %266 = vector.matrix_multiply %20, %20 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<14xi64>) -> vector<1xi64>
      %267 = vector.reduction <and>, %66 : vector<1xi64> into i64
      %268 = arith.addi %c1720371323_i64, %c1944038390_i64 : i64
      %alloc_39 = memref.alloc() : memref<14x12x9xi16>
      memref.tensor_store %8, %alloc_39 : memref<14x12x9xi16>
      %269 = arith.maxf %cst_3, %cst : f32
      %270 = math.powf %5, %5 : tensor<14x9xf16>
      %271 = arith.addf %cst_2, %cst_2 : f16
      %272 = arith.ceildivsi %false_1, %false : i1
      %273 = arith.remui %c3027_i16, %c3027_i16 : i16
      %274 = math.tanh %16 : tensor<9xf16>
      %275 = math.cttz %6 : tensor<9xi32>
      %276 = arith.remf %cst_5, %cst_0 : f32
      scf.yield
    }
    case 2 {
      %262 = vector.create_mask %c2 : vector<9xi1>
      %263 = arith.negf %cst_5 : f32
      %264 = arith.maxsi %c492272022_i64, %c1720371323_i64 : i64
      %265 = vector.broadcast %53 : index to vector<9xindex>
      %266 = vector.broadcast %c1720371323_i64 : i64 to vector<9xi64>
      vector.scatter %alloc_7[%c3] [%265], %262, %266 : memref<9xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
      %267 = math.log2 %5 : tensor<14x9xf16>
      %268 = index.casts %78 : index to i32
      %269 = arith.addf %cst_0, %cst_5 : f32
      %270 = math.log2 %1 : tensor<14x8xf16>
      %271 = arith.remsi %false_1, %false_1 : i1
      %272 = math.ipowi %19, %reduced : tensor<i32>
      %273 = math.atan2 %5, %5 : tensor<14x9xf16>
      %274 = arith.remsi %false, %false : i1
      %275 = index.ceildivu %72, %c10
      %276 = affine.max affine_map<(d0, d1, d2) -> (-d2 - d1 - 8)>(%23, %c4, %78)
      %277 = math.absi %21 : tensor<i16>
      %278 = math.log2 %17 : tensor<9xf16>
      scf.yield
    }
    default {
      %262 = arith.floordivsi %false_1, %false : i1
      %263 = memref.atomic_rmw assign %cst, %alloc_6[%c6] : (f32, memref<9xf32>) -> f32
      memref.store %c1720371323_i64, %alloc_16[%c12, %c2] : memref<14x9xi64>
      %264 = math.expm1 %5 : tensor<14x9xf16>
      %265 = arith.ceildivsi %false, %false : i1
      %266 = vector.broadcast %c3027_i16 : i16 to vector<9x12xi16>
      %267 = vector.broadcast %c3027_i16 : i16 to vector<9xi16>
      %dest, %accumulated_value = vector.scan <maxsi>, %266, %267 {inclusive = false, reduction_dim = 1 : i64} : vector<9x12xi16>, vector<9xi16>
      %268 = vector.reduction <maxui>, %20 : vector<14xi64> into i64
      scf.if %false {
        %276 = math.ceil %cst_3 : f32
        %277 = arith.addf %cst_4, %cst_4 : f16
        %278 = math.log1p %1 : tensor<14x8xf16>
        %279 = arith.divui %c1017508543_i32, %c650767988_i32 : i32
        %280 = arith.shrui %c610352047_i32, %c650767988_i32 : i32
        %281 = index.divu %38, %78
        %282 = vector.broadcast %false : i1 to vector<14x8xi1>
        %283 = vector.broadcast %c650767988_i32 : i32 to vector<14x8xi32>
        %284 = vector.gather %alloc_15[%c9] [%283], %282, %282 : memref<9xi1>, vector<14x8xi32>, vector<14x8xi1>, vector<14x8xi1> into vector<14x8xi1>
        %285 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 64, (d2 - d1) floordiv 32, ((d2 - d1) floordiv 32) * 32)>(%281, %c15, %c6)
      }
      %269 = arith.divsi %c492272022_i64, %c1944038390_i64 : i64
      %270 = arith.ceildivsi %false_1, %false : i1
      %271 = math.ipowi %0, %3 : tensor<9xi32>
      %272 = math.exp %16 : tensor<9xf16>
      %alloca = memref.alloca() : memref<14x8xi64>
      %273 = index.add %c10, %72
      %274 = arith.xori %false, %false : i1
      %275 = index.sub %44, %60
    }
    %91 = index.mul %c9, %72
    %92 = arith.cmpi ult, %false, %false : i1
    %93 = math.fma %5, %5, %5 : tensor<14x9xf16>
    %94 = index.castu %c650767988_i32 : i32 to index
    %95 = bufferization.to_memref %5 : memref<14x9xf16>
    %96 = math.tanh %cst_5 : f32
    %97 = math.ceil %cst_4 : f16
    %98 = vector.broadcast %c492272022_i64 : i64 to vector<14x14xi64>
    %99 = vector.outerproduct %20, %20, %98 {kind = #vector.kind<add>} : vector<14xi64>, vector<14xi64>
    memref.store %false, %alloc_15[%c2] : memref<9xi1>
    %100 = math.log %2 : tensor<9xf16>
    %101 = index.mul %53, %24
    %102 = vector.insertelement %c1720371323_i64, %66[%72 : index] : vector<1xi64>
    %103 = math.log1p %16 : tensor<9xf16>
    %104 = index.ceildivs %rank, %24
    %105 = vector.matrix_multiply %20, %66 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 1 : i32} : (vector<14xi64>, vector<1xi64>) -> vector<14xi64>
    %106 = index.floordivs %39, %91
    %107 = math.exp %13 : tensor<14x8xf32>
    bufferization.dealloc_tensor %13 : tensor<14x8xf32>
    %108 = arith.maxf %cst_5, %cst_5 : f32
    %inserted = tensor.insert %c1017508543_i32 into %19[] : tensor<i32>
    %109 = math.log1p %13 : tensor<14x8xf32>
    %110 = vector.multi_reduction <maxui>, %105, %c492272022_i64 [0] : vector<14xi64> to i64
    %111 = arith.divui %c492272022_i64, %c1720371323_i64 : i64
    %112 = index.ceildivu %c15, %44
    %113 = math.round %16 : tensor<9xf16>
    %114 = arith.floordivsi %c610352047_i32, %c650767988_i32 : i32
    %115 = math.exp2 %cst : f32
    %116 = index.ceildivu %c4, %104
    %117 = arith.maxf %cst, %cst_3 : f32
    %alloc_25 = memref.alloc() : memref<14x12x9xi1>
    %118 = arith.remf %cst, %cst_3 : f32
    %119 = math.log %cst_4 : f16
    %120 = math.log2 %cst_2 : f16
    %121 = arith.remsi %false_1, %false : i1
    %122 = math.atan %cst_0 : f32
    %123 = math.atan2 %5, %5 : tensor<14x9xf16>
    %rank_26 = tensor.rank %4 : tensor<14x12x9xi16>
    scf.if %false_1 {
      %262 = index.casts %false_1 : i1 to index
      %263 = math.ceil %cst_5 : f32
      %264 = math.round %cst_2 : f16
      %265 = arith.subi %false, %false : i1
      %rank_39 = tensor.rank %15 : tensor<9xi64>
      %266 = math.ceil %cst_4 : f16
      %267 = arith.ori %c1944038390_i64, %c1944038390_i64 : i64
      %268 = arith.muli %c492272022_i64, %c1944038390_i64 : i64
    }
    %124 = vector.insert %c1944038390_i64, %66 [0] : i64 into vector<1xi64>
    %125 = math.atan %cst_3 : f32
    %cst_27 = arith.constant 4.048000e+04 : f16
    %126 = math.exp2 %2 : tensor<9xf16>
    %127 = arith.subi %110, %c1944038390_i64 : i64
    scf.index_switch %78 
    case 1 {
      %262 = math.expm1 %5 : tensor<14x9xf16>
      %263 = index.add %c8, %101
      %264 = arith.xori %c1017508543_i32, %c1017508543_i32 : i32
      %265 = arith.remsi %c1901842985_i32, %c1901842985_i32 : i32
      %266 = math.cos %cst_4 : f16
      %267 = math.cttz %4 : tensor<14x12x9xi16>
      %alloc_39 = memref.alloc() : memref<9xi32>
      memref.tensor_store %10, %alloc_39 : memref<9xi32>
      %268 = vector.broadcast %cst_3 : f32 to vector<8x8x14xf32>
      %269 = vector.broadcast %cst_0 : f32 to vector<8x14xf32>
      %dest, %accumulated_value = vector.scan <minf>, %268, %269 {inclusive = false, reduction_dim = 1 : i64} : vector<8x8x14xf32>, vector<8x14xf32>
      affine.for %arg3 = 0 to 127 {
      }
      %270 = index.maxs %63, %39
      %271 = arith.divui %c3027_i16, %c3027_i16 : i16
      %alloca = memref.alloca() : memref<14x12x9xf32>
      %272 = math.ceil %cst_0 : f32
      %273 = math.tan %2 : tensor<9xf16>
      %274 = arith.shli %c1720371323_i64, %c1944038390_i64 : i64
      %275 = index.sizeof
      scf.yield
    }
    case 2 {
      %262 = arith.divsi %c1720371323_i64, %110 : i64
      %263 = arith.cmpf ule, %cst_0, %cst_3 : f32
      %264 = math.round %cst_3 : f32
      %265 = vector.splat %c6 : vector<14x9xindex>
      %266 = arith.subi %c650767988_i32, %c1017508543_i32 : i32
      %267 = index.sub %c9, %c3
      %268 = index.casts %c1017508543_i32 : i32 to index
      %269 = affine.min affine_map<(d0, d1, d2) -> (d2, d0, d2 floordiv 8 + 4, d2 + d0 + 32)>(%c10, %44, %c13)
      %270 = index.maxs %c9, %91
      %generated_39 = tensor.generate %94 {
      ^bb0(%arg3: index, %arg4: index):
        %276 = math.roundeven %cst_0 : f32
        memref.store %c1017508543_i32, %alloc[%c7, %c6, %c5] : memref<14x12x9xi32>
        %277 = math.log10 %2 : tensor<9xf16>
        %278 = index.maxu %c9, %c12
        tensor.yield %false_1 : i1
      } : tensor<?x8xi1>
      %271 = arith.remui %c1720371323_i64, %c1720371323_i64 : i64
      %272 = affine.min affine_map<(d0, d1) -> (d0 + 4, d0 mod 2)>(%104, %c4)
      %273 = math.log10 %17 : tensor<9xf16>
      %274 = arith.remsi %c650767988_i32, %c1901842985_i32 : i32
      %275 = bufferization.clone %alloc_14 : memref<14x9xi32> to memref<14x9xi32>
      affine.store %c3027_i16, %alloc_11[%c13] : memref<9xi16>
      scf.yield
    }
    case 3 {
      %262 = arith.maxsi %c492272022_i64, %110 : i64
      %263 = arith.remui %c610352047_i32, %c1901842985_i32 : i32
      %264 = vector.broadcast %c1901842985_i32 : i32 to vector<12xi32>
      vector.transfer_write %264, %alloc_19[%60, %44, %53] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<12xi32>, memref<14x12x9xi32>
      affine.store %cst_3, %alloc_8[%c3, %c6] : memref<14x9xf32>
      %265 = bufferization.clone %alloc_16 : memref<14x9xi64> to memref<14x9xi64>
      %266 = math.tan %cst_5 : f32
      %267 = arith.remui %c1901842985_i32, %c650767988_i32 : i32
      %268 = vector.multi_reduction <xor>, %20, %105 [] : vector<14xi64> to vector<14xi64>
      %269 = vector.splat %cst_5 : vector<14x12x9xf32>
      %270 = index.maxu %53, %c3
      %271 = arith.shrsi %c1017508543_i32, %c1017508543_i32 : i32
      %272 = index.sizeof
      %273 = vector.insert %110, %20 [6] : i64 into vector<14xi64>
      %274 = math.round %17 : tensor<9xf16>
      affine.store %false, %alloc_17[%c11] : memref<9xi1>
      %275 = affine.max affine_map<(d0, d1) -> ((d1 mod 4) mod 128, d1 * -16)>(%53, %c7)
      scf.yield
    }
    case 4 {
      %262 = arith.ceildivsi %false_1, %false_1 : i1
      %263 = math.log1p %13 : tensor<14x8xf32>
      %264 = arith.subi %c492272022_i64, %c1720371323_i64 : i64
      %265 = index.castu %c1017508543_i32 : i32 to index
      %266 = arith.maxui %false, %false : i1
      %267 = math.absi %transposed : tensor<9x14x12xi16>
      %268 = arith.shli %c1944038390_i64, %c1720371323_i64 : i64
      %269 = vector.broadcast %c1017508543_i32 : i32 to vector<14x8xi32>
      %270 = vector.broadcast %false_1 : i1 to vector<14x8xi1>
      %271 = vector.gather %alloc[%44, %91, %c9] [%269], %270, %269 : memref<14x12x9xi32>, vector<14x8xi32>, vector<14x8xi1>, vector<14x8xi32> into vector<14x8xi32>
      %272 = math.exp2 %cst_4 : f16
      %273 = vector.broadcast %c3027_i16 : i16 to vector<9xi16>
      %274 = vector.broadcast %false_1 : i1 to vector<9xi1>
      %275 = vector.broadcast %c610352047_i32 : i32 to vector<9xi32>
      %276 = vector.gather %4[%39, %rank, %265] [%275], %274, %273 : tensor<14x12x9xi16>, vector<9xi32>, vector<9xi1>, vector<9xi16> into vector<9xi16>
      %277 = math.round %16 : tensor<9xf16>
      %278 = bufferization.to_tensor %alloc_6 : memref<9xf32>
      affine.store %false, %alloc_15[%c0] : memref<9xi1>
      %279 = arith.cmpi ne, %c1720371323_i64, %c492272022_i64 : i64
      %collapsed = tensor.collapse_shape %1 [[0, 1]] : tensor<14x8xf16> into tensor<112xf16>
      %280 = arith.floordivsi %c492272022_i64, %c1720371323_i64 : i64
      scf.yield
    }
    default {
      %262 = affine.apply affine_map<(d0, d1, d2) -> (d2 * 2 + 16)>(%c12, %c13, %c3)
      vector.print %20 : vector<14xi64>
      %263 = index.casts %c4 : index to i32
      %rank_39 = tensor.rank %22 : tensor<i16>
      %264 = math.fma %1, %1, %1 : tensor<14x8xf16>
      %265 = index.add %53, %c6
      %266 = math.tan %13 : tensor<14x8xf32>
      %267 = affine.apply affine_map<(d0) -> ((d0 floordiv 64) floordiv 2 - d0)>(%rank_26)
      %268 = affine.if affine_set<(d0) : (d0 >= 0)>(%c4) -> i32 {
        %276 = index.casts %110 : i64 to index
        %277 = arith.divui %c3027_i16, %c3027_i16 : i16
        %278 = math.atan %cst_4 : f16
        %279 = index.castu %c3027_i16 : i16 to index
        %280 = math.roundeven %cst_5 : f32
        %281 = math.exp2 %5 : tensor<14x9xf16>
        %alloc_40 = memref.alloc() : memref<14x8xi16>
        memref.tensor_store %7, %alloc_40 : memref<14x8xi16>
        %282 = vector.transpose %66, [0] : vector<1xi64> to vector<1xi64>
        affine.yield %c610352047_i32 : i32
      } else {
        %276 = math.absf %cst_0 : f32
        %277 = math.fma %2, %2, %17 : tensor<9xf16>
        %278 = affine.apply affine_map<(d0, d1, d2) -> ((d2 - 1) mod 8)>(%106, %rank_39, %24)
        %279 = math.fma %13, %13, %13 : tensor<14x8xf32>
        %280 = affine.apply affine_map<(d0, d1, d2) -> (d2 * 2 + 16)>(%23, %c1, %c0)
        %281 = index.add %c1, %106
        %282 = math.expm1 %17 : tensor<9xf16>
        %283 = math.atan %cst_3 : f32
        affine.yield %c1901842985_i32 : i32
      }
      %269 = arith.divsi %c3027_i16, %c3027_i16 : i16
      %270 = index.floordivs %c2, %c5
      %271 = arith.addf %cst_4, %cst_2 : f16
      %272 = index.sizeof
      %273 = math.log2 %cst_4 : f16
      %274 = arith.cmpf uge, %cst_3, %cst_0 : f32
      %275 = math.ipowi %110, %c492272022_i64 : i64
    }
    %128 = affine.if affine_set<(d0, d1, d2, d3) : (d0 >= 0, -d1 + 16 == 0, -d3 == 0, d0 >= 0)>(%c2, %c8, %c15, %c9) -> i1 {
      %262 = bufferization.to_tensor %alloc_15 : memref<9xi1>
      %263 = index.floordivs %c3, %c8
      %264 = memref.load %alloc_7[%c2] : memref<9xi64>
      %265 = math.log1p %1 : tensor<14x8xf16>
      %cst_39 = arith.constant 2.422400e+04 : f16
      %266 = arith.subi %c1017508543_i32, %c1017508543_i32 : i32
      scf.index_switch %rank_26 
      case 1 {
        %268 = math.expm1 %cst_5 : f32
        %269 = vector.broadcast %c1944038390_i64 : i64 to vector<1x1xi64>
        %270 = vector.outerproduct %66, %66, %269 {kind = #vector.kind<add>} : vector<1xi64>, vector<1xi64>
        %271 = index.maxs %60, %rank_26
        %alloca = memref.alloca() : memref<14x12x9xf16>
        %272 = arith.cmpf one, %cst_2, %cst_2 : f16
        %273 = arith.maxsi %false_1, %false : i1
        %274 = affine.min affine_map<(d0, d1, d2) -> (0, 0, (-d1) mod 16)>(%c6, %39, %39)
        %275 = math.cos %2 : tensor<9xf16>
        %276 = vector.load %alloc_12[%c8, %c3] : memref<14x9xi64>, vector<14x12x9xi64>
        %277 = memref.load %alloc_20[%c4, %c9, %c3] : memref<14x12x9xf16>
        %278 = tensor.empty() : tensor<14x9xi32>
        %279 = index.add %c13, %rank
        %280 = arith.divf %cst_5, %cst_3 : f32
        %alloca_40 = memref.alloca() : memref<14x8xi16>
        %281 = arith.remf %cst_5, %cst : f32
        %282 = math.ceil %cst_3 : f32
        scf.yield
      }
      case 2 {
        %268 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 * 16 + d2, d3 * 16, d3, d3 + d1 mod 8)>(%c4, %104, %116, %c9)
        %269 = arith.addf %cst_4, %cst_4 : f16
        %270 = arith.divf %cst, %cst_0 : f32
        %271 = index.divu %112, %112
        %false_40 = index.bool.constant false
        %272 = index.sub %106, %23
        %273 = affine.min affine_map<(d0, d1, d2) -> (d1 - 1, (d1 - d0) * 2, (d1 - d0) * 2, (d1 - d0) * -2)>(%c1, %60, %c7)
        %274 = arith.shrsi %c650767988_i32, %c1017508543_i32 : i32
        %275 = arith.remsi %c610352047_i32, %c610352047_i32 : i32
        %276 = index.mul %c3, %c5
        %277 = math.tanh %1 : tensor<14x8xf16>
        %278 = memref.atomic_rmw addf %cst_4, %alloc_18[%c12, %c7] : (f16, memref<14x9xf16>) -> f16
        %279 = math.ctpop %10 : tensor<9xi32>
        %280 = math.log1p %17 : tensor<9xf16>
        %281 = vector.load %alloc_19[%c5, %c8, %c1] : memref<14x12x9xi32>, vector<9xi32>
        %282 = math.expm1 %13 : tensor<14x8xf32>
        scf.yield
      }
      case 3 {
        %268 = math.log2 %cst_5 : f32
        %269 = vector.insertelement %110, %66[%60 : index] : vector<1xi64>
        %270 = affine.apply affine_map<(d0, d1) -> ((d1 + d0) * 4)>(%c14, %c7)
        %271 = vector.transpose %20, [0] : vector<14xi64> to vector<14xi64>
        %272 = math.powf %cst_0, %cst : f32
        %273 = arith.addi %c1901842985_i32, %c610352047_i32 : i32
        %274 = memref.load %alloc_18[%c3, %c0] : memref<14x9xf16>
        %275 = math.expm1 %17 : tensor<9xf16>
        %276 = arith.shrsi %c3027_i16, %c3027_i16 : i16
        %277 = index.maxu %c2, %c11
        %278 = arith.cmpf ogt, %cst_4, %cst_2 : f16
        %279 = vector.splat %c13 : vector<14x8xindex>
        %280 = index.add %24, %68
        %281 = arith.ori %false_1, %false_1 : i1
        %282 = math.atan2 %5, %5 : tensor<14x9xf16>
        %283 = math.fma %cst_5, %cst, %cst : f32
        scf.yield
      }
      default {
        %268 = vector.insertelement %c1720371323_i64, %66[%91 : index] : vector<1xi64>
        %269 = math.round %cst_4 : f16
        %270 = arith.shrsi %false, %false : i1
        %271 = math.exp %5 : tensor<14x9xf16>
        %272 = vector.matrix_multiply %66, %105 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 14 : i32} : (vector<1xi64>, vector<14xi64>) -> vector<14xi64>
        memref.tensor_store %9, %alloc_16 : memref<14x9xi64>
        %273 = memref.atomic_rmw addf %cst, %alloc_8[%c11, %c2] : (f32, memref<14x9xf32>) -> f32
        %274 = arith.ceildivsi %c1901842985_i32, %c1901842985_i32 : i32
        %275 = arith.remui %c492272022_i64, %c1720371323_i64 : i64
        %276 = math.cos %17 : tensor<9xf16>
        memref.tensor_store %9, %alloc_16 : memref<14x9xi64>
        affine.store %cst_4, %95[%c1, %c15] : memref<14x9xf16>
        %277 = vector.reduction <add>, %20 : vector<14xi64> into i64
        %278 = arith.addf %cst_2, %cst_2 : f16
        %279 = math.log2 %cst_2 : f16
        %280 = memref.load %alloc_10[%c3] : memref<9xi16>
      }
      %267 = math.atan2 %cst_3, %cst : f32
      affine.yield %false : i1
    } else {
      %262 = math.absf %1 : tensor<14x8xf16>
      %263 = scf.if %false -> (memref<14x12x9xf32>) {
        %270 = arith.xori %false_1, %false_1 : i1
        memref.assume_alignment %alloc_9, 1 : memref<14x8xi1>
        %271 = vector.broadcast %39 : index to vector<14xindex>
        %272 = vector.broadcast %false_1 : i1 to vector<14xi1>
        %273 = vector.broadcast %cst_2 : f16 to vector<14xf16>
        vector.scatter %alloc_20[%c2, %c10, %c2] [%271], %272, %273 : memref<14x12x9xf16>, vector<14xindex>, vector<14xi1>, vector<14xf16>
        %274 = math.cos %5 : tensor<14x9xf16>
        %275 = arith.minsi %c1017508543_i32, %c610352047_i32 : i32
        %276 = index.add %c0, %c3
        %277 = vector.transpose %20, [0] : vector<14xi64> to vector<14xi64>
        %278 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 2, d3 * -2, -d0, d3 * 2 - d1 - 32)>(%24, %104, %39, %116)
        %alloc_39 = memref.alloc() : memref<14x12x9xf32>
        scf.yield %alloc_39 : memref<14x12x9xf32>
      } else {
        %270 = math.ipowi %12, %12 : tensor<14x12x9xi64>
        %alloc_39 = memref.alloc() : memref<i16>
        memref.tensor_store %22, %alloc_39 : memref<i16>
        %alloc_40 = memref.alloc() : memref<9x14x12xi16>
        memref.tensor_store %18, %alloc_40 : memref<9x14x12xi16>
        %271 = vector.transpose %66, [0] : vector<1xi64> to vector<1xi64>
        affine.store %cst_2, %alloc_18[%c4, %c3] : memref<14x9xf16>
        %272 = arith.shrui %c3027_i16, %c3027_i16 : i16
        %273 = math.tanh %cst_2 : f16
        %274 = vector.insertelement %c1720371323_i64, %105[%c8 : index] : vector<14xi64>
        %alloc_41 = memref.alloc() : memref<14x12x9xf32>
        scf.yield %alloc_41 : memref<14x12x9xf32>
      }
      %264 = index.ceildivs %c11, %c3
      %265 = index.floordivs %c13, %rank_26
      %266 = vector.matrix_multiply %66, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 14 : i32} : (vector<1xi64>, vector<14xi64>) -> vector<14xi64>
      %267 = math.tan %cst_2 : f16
      %268 = index.casts %94 : index to i32
      %269 = arith.remf %cst_3, %cst : f32
      affine.yield %false : i1
    }
    %129 = arith.xori %c1017508543_i32, %c1901842985_i32 : i32
    %generated_28 = tensor.generate %rank_26 {
    ^bb0(%arg3: index, %arg4: index):
      affine.for %arg5 = 0 to 120 {
      }
      %262 = affine.apply affine_map<(d0, d1) -> ((d1 + d0) * 4)>(%38, %rank)
      memref.tensor_store %15, %alloc_7 : memref<9xi64>
      %collapsed = tensor.collapse_shape %generated [[0, 1], [2]] : tensor<?x?x?xf16> into tensor<?x?xf16>
      tensor.yield %c3027_i16 : i16
    } : tensor<?x9xi16>
    %130 = vector.broadcast %cst : f32 to vector<14x8xf32>
    %131 = vector.fma %130, %130, %130 : vector<14x8xf32>
    %132 = vector.broadcast %c1901842985_i32 : i32 to vector<9xi32>
    %133 = arith.divf %cst_5, %cst_0 : f32
    %134 = arith.divsi %false_1, %false : i1
    %135 = vector.splat %c1720371323_i64 : vector<14x12x9xi64>
    %136 = math.log2 %1 : tensor<14x8xf16>
    %137 = math.absi %0 : tensor<9xi32>
    %138 = affine.if affine_set<(d0, d1) : ((-(d1 ceildiv 4) + d0) mod 128 >= 0, d1 ceildiv 4 == 0)>(%c15, %c2) -> memref<14x8xi1> {
      %262 = affine.apply affine_map<(d0, d1) -> ((d1 + d0) * 4)>(%c7, %c7)
      %263 = index.maxs %116, %24
      %264 = arith.divf %cst_4, %cst_4 : f16
      %265 = math.round %cst_0 : f32
      %266 = index.maxs %c10, %24
      %267 = math.tan %cst_5 : f32
      %268 = vector.insertelement %c1720371323_i64, %105[%c3 : index] : vector<14xi64>
      %269 = math.cttz %11 : tensor<9xi16>
      affine.yield %alloc_9 : memref<14x8xi1>
    } else {
      %262 = vector.reduction <maxui>, %66 : vector<1xi64> into i64
      %263 = index.ceildivs %c2, %c0
      %264 = scf.while (%arg3 = %c610352047_i32) : (i32) -> i32 {
        %273 = math.sqrt %16 : tensor<9xf16>
        %274 = affine.max affine_map<(d0) -> ((d0 + 4) * 32, d0, d0, (d0 + 4) * -32)>(%112)
        %275 = math.log2 %5 : tensor<14x9xf16>
        %276 = index.maxs %c0, %c13
        %277 = arith.maxsi %c492272022_i64, %c1720371323_i64 : i64
        %278 = arith.addf %cst, %cst_5 : f32
        %279 = index.ceildivs %91, %106
        %280 = arith.divui %c610352047_i32, %c610352047_i32 : i32
        scf.condition(%false) %c1901842985_i32 : i32
      } do {
      ^bb0(%arg3: i32):
        %273 = index.sub %263, %116
        %274 = arith.maxsi %false_1, %false_1 : i1
        %275 = arith.mulf %cst_2, %cst_4 : f16
        %276 = math.powf %1, %1 : tensor<14x8xf16>
        %277 = index.floordivs %c6, %106
        %278 = index.sizeof
        %collapsed = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<14x12x9xi64> into tensor<168x9xi64>
        %279 = math.round %1 : tensor<14x8xf16>
        %280 = vector.broadcast %cst_3 : f32 to vector<8xf32>
        %281 = vector.multi_reduction <maxf>, %130, %280 [0] : vector<14x8xf32> to vector<8xf32>
        %282 = arith.divui %c1017508543_i32, %arg3 : i32
        affine.store %cst_3, %alloc_6[%c5] : memref<9xf32>
        memref.copy %alloc_21, %alloc_10 : memref<9xi16> to memref<9xi16>
        %283 = math.absi %7 : tensor<14x8xi16>
        %284 = math.round %1 : tensor<14x8xf16>
        %285 = math.exp %5 : tensor<14x9xf16>
        %286 = vector.broadcast %c492272022_i64 : i64 to vector<14x14xi64>
        %287 = vector.outerproduct %105, %105, %286 {kind = #vector.kind<mul>} : vector<14xi64>, vector<14xi64>
        scf.yield %c1017508543_i32 : i32
      }
      %265 = index.sizeof
      %266 = tensor.empty() : tensor<14x12x9xf32>
      %267 = vector.broadcast %cst : f32 to vector<14x12x9xf32>
      %268 = vector.broadcast %false : i1 to vector<14x12x9xi1>
      %269 = vector.broadcast %c610352047_i32 : i32 to vector<14x12x9xi32>
      %270 = vector.gather %266[%116, %106, %63] [%269], %268, %267 : tensor<14x12x9xf32>, vector<14x12x9xi32>, vector<14x12x9xi1>, vector<14x12x9xf32> into vector<14x12x9xf32>
      %271 = math.atan %13 : tensor<14x8xf32>
      %272 = affine.max affine_map<(d0, d1) -> (-(d1 - 16), -(d1 - 16), d1 - 16, (d1 floordiv 8) mod 2)>(%78, %263)
      %alloc_39 = memref.alloc() : memref<14x8xf32>
      affine.yield %alloc_9 : memref<14x8xi1>
    }
    %139 = index.mul %c10, %c15
    %140 = arith.maxui %false_1, %false_1 : i1
    %alloc_29 = memref.alloc() : memref<i16>
    memref.tensor_store %21, %alloc_29 : memref<i16>
    %141 = math.atan2 %cst_0, %cst_5 : f32
    %142 = arith.divui %c1901842985_i32, %c1901842985_i32 : i32
    %143 = vector.load %alloc_21[%c0] : memref<9xi16>, vector<14x12x9xi16>
    %144 = index.maxu %139, %24
    %145 = math.log1p %2 : tensor<9xf16>
    %146 = arith.ceildivsi %false, %false : i1
    %147 = arith.addi %c1017508543_i32, %c1901842985_i32 : i32
    %148 = arith.shrsi %c1720371323_i64, %c1720371323_i64 : i64
    %149 = math.log %5 : tensor<14x9xf16>
    %150 = memref.load %95[%c7, %c5] : memref<14x9xf16>
    %151 = math.ceil %cst_5 : f32
    %152 = math.atan %13 : tensor<14x8xf32>
    %153 = index.maxs %78, %c1
    %154 = math.atan %17 : tensor<9xf16>
    %155 = affine.apply affine_map<(d0, d1, d2) -> ((d2 - 1) mod 8)>(%116, %60, %153)
    %156 = arith.divui %c1017508543_i32, %c610352047_i32 : i32
    %157 = vector.broadcast %c3027_i16 : i16 to vector<9xi16>
    %158 = vector.multi_reduction <maxsi>, %143, %157 [0, 1] : vector<14x12x9xi16> to vector<9xi16>
    %159 = math.atan %cst_2 : f16
    %160 = vector.load %alloc_8[%c7, %c2] : memref<14x9xf32>, vector<9xf32>
    %161 = math.cttz %14 : tensor<14x12x9xi16>
    %162 = math.tanh %13 : tensor<14x8xf32>
    %163 = arith.floordivsi %110, %c1944038390_i64 : i64
    %164 = index.divu %c3, %c0
    %165 = arith.maxui %c1901842985_i32, %c1017508543_i32 : i32
    %166 = index.add %c7, %106
    %167 = math.tan %cst_5 : f32
    %168 = arith.minf %cst_0, %cst : f32
    %169 = math.exp %cst_4 : f16
    %170 = index.floordivs %106, %c3
    %171 = math.exp2 %1 : tensor<14x8xf16>
    %generated_30 = tensor.generate %c5, %c2, %c1 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %262 = arith.xori %false_1, %false_1 : i1
      %263 = arith.divui %c492272022_i64, %110 : i64
      %264 = index.floordivs %arg5, %rank
      %265 = math.exp %16 : tensor<9xf16>
      tensor.yield %c3027_i16 : i16
    } : tensor<?x?x?xi16>
    %172 = vector.splat %38 : vector<9xindex>
    bufferization.dealloc_tensor %2 : tensor<9xf16>
    %173 = vector.broadcast %false : i1 to vector<9xi1>
    %174 = vector.maskedload %alloc_19[%c0, %c9, %c7], %173, %132 : memref<14x12x9xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
    %175 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 - (d2 - (d3 + 64) + (d1 mod 8) * 16) + 16) floordiv 128 >= 0, d2 - (d2 - (d3 + 64) + (d1 mod 8) * 16) + 16 == 0)>(%c1, %c15, %c1, %c4) -> memref<9xi32> {
      %262 = arith.remsi %false, %false_1 : i1
      %263 = affine.max affine_map<(d0, d1) -> ((d1 ceildiv 32) mod 16)>(%c4, %c9)
      %264 = math.log %cst_3 : f32
      %265 = index.sub %63, %c5
      %266 = arith.addf %cst_0, %cst : f32
      %267 = index.add %c8, %c5
      %true = arith.constant true
      %268 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 floordiv 16)>(%38, %101, %91, %c2)
      %alloc_39 = memref.alloc() : memref<9xi32>
      affine.yield %alloc_39 : memref<9xi32>
    } else {
      %262 = arith.ori %110, %c1720371323_i64 : i64
      %rank_39 = tensor.rank %transposed : tensor<9x14x12xi16>
      %splat = tensor.splat %cst_2 : tensor<14x9xf16>
      %263 = vector.splat %39 : vector<14x12x9xindex>
      %264 = math.log1p %16 : tensor<9xf16>
      %265 = vector.matrix_multiply %66, %66 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      %266 = arith.cmpi eq, %c1017508543_i32, %c1901842985_i32 : i32
      %267 = index.maxs %144, %39
      %alloc_40 = memref.alloc() : memref<9xi32>
      affine.yield %alloc_40 : memref<9xi32>
    }
    %176 = math.log1p %cst_2 : f16
    %177 = math.log1p %5 : tensor<14x9xf16>
    %178 = math.absi %22 : tensor<i16>
    %179 = arith.floordivsi %c1017508543_i32, %c650767988_i32 : i32
    %180 = math.atan %5 : tensor<14x9xf16>
    %181 = vector.load %alloc_18[%c8, %c4] : memref<14x9xf16>, vector<14x9xf16>
    %182 = math.expm1 %cst : f32
    %183 = arith.maxui %c650767988_i32, %c610352047_i32 : i32
    %184 = math.cos %5 : tensor<14x9xf16>
    %185 = affine.max affine_map<(d0, d1) -> ((d0 floordiv 8) * 128)>(%44, %112)
    %186 = arith.addf %cst_0, %cst_5 : f32
    %187 = math.exp2 %5 : tensor<14x9xf16>
    %188 = arith.cmpf true, %cst_2, %cst_2 : f16
    %cst_31 = arith.constant 1.000000e+00 : f16
    %cst_32 = arith.constant 0.000000e+00 : f16
    %189 = vector.transfer_read %17[%c0], %cst_32 : tensor<9xf16>, vector<f16>
    %190 = memref.atomic_rmw addf %cst, %alloc_6[%c6] : (f32, memref<9xf32>) -> f32
    %191 = math.absi %8 : tensor<14x12x9xi16>
    %192 = math.tanh %1 : tensor<14x8xf16>
    %193 = arith.addf %cst_2, %cst_4 : f16
    %194 = arith.shli %110, %c1944038390_i64 : i64
    %195 = affine.max affine_map<(d0) -> (-(d0 - 8), -(d0 - 8), -(d0 - 8))>(%112)
    %false_33 = index.bool.constant false
    %196 = arith.cmpi sge, %false, %false_1 : i1
    %197 = vector.maskedload %alloc_11[%c7], %173, %157 : memref<9xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
    %198 = arith.subi %c1017508543_i32, %c610352047_i32 : i32
    %199 = vector.broadcast %166 : index to vector<14xindex>
    %200 = vector.broadcast %false_1 : i1 to vector<14xi1>
    %201 = vector.broadcast %cst_5 : f32 to vector<14xf32>
    vector.scatter %alloc_8[%c11, %c5] [%199], %200, %201 : memref<14x9xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
    %202 = arith.addi %false_33, %false : i1
    %alloc_34 = memref.alloc() : memref<14x12x9xi16>
    memref.tensor_store %14, %alloc_34 : memref<14x12x9xi16>
    %203 = arith.remsi %c492272022_i64, %c1720371323_i64 : i64
    %204 = index.castu %110 : i64 to index
    %205 = arith.cmpi ult, %c3027_i16, %c3027_i16 : i16
    %206 = vector.extract_strided_slice %174 {offsets = [6], sizes = [2], strides = [1]} : vector<9xi32> to vector<2xi32>
    %207 = vector.broadcast %false : i1 to vector<9x9xi1>
    %208 = vector.outerproduct %173, %173, %207 {kind = #vector.kind<minsi>} : vector<9xi1>, vector<9xi1>
    %209 = math.atan %cst_0 : f32
    %210 = index.add %166, %c15
    %211 = arith.maxsi %c1944038390_i64, %c1720371323_i64 : i64
    %212 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %66, %66, %c492272022_i64 : vector<1xi64>, vector<1xi64> into i64
    %213 = arith.maxui %c3027_i16, %c3027_i16 : i16
    %214 = affine.apply affine_map<(d0, d1, d2) -> (d1 * 4)>(%39, %c1, %24)
    %215 = vector.extract %132[5] : vector<9xi32>
    %216 = arith.divui %false_1, %false_1 : i1
    %217 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %173, %173, %false_33 : vector<9xi1>, vector<9xi1> into i1
    %218 = math.tan %cst_4 : f16
    %219 = index.ceildivu %c6, %c3
    %220 = bufferization.to_memref %13 : memref<14x8xf32>
    %221 = math.log10 %16 : tensor<9xf16>
    %222 = vector.load %alloc[%c11, %c10, %c4] : memref<14x12x9xi32>, vector<14x9xi32>
    %223 = arith.shrsi %c1944038390_i64, %c1720371323_i64 : i64
    bufferization.dealloc_tensor %7 : tensor<14x8xi16>
    %224 = vector.broadcast %110 : i64 to vector<14x14xi64>
    %225 = vector.outerproduct %105, %20, %224 {kind = #vector.kind<and>} : vector<14xi64>, vector<14xi64>
    %226 = math.log2 %16 : tensor<9xf16>
    %227 = vector.transpose %132, [0] : vector<9xi32> to vector<9xi32>
    %228 = index.mul %c15, %153
    %229 = arith.maxf %cst_5, %cst : f32
    %230 = vector.transpose %130, [0, 1] : vector<14x8xf32> to vector<14x8xf32>
    %231 = math.atan2 %cst_4, %cst_2 : f16
    %232 = vector.reduction <mul>, %20 : vector<14xi64> into i64
    %expanded = tensor.expand_shape %2 [[0, 1]] : tensor<9xf16> into tensor<9x1xf16>
    %233 = arith.maxui %c650767988_i32, %c650767988_i32 : i32
    %234 = arith.shrsi %c1017508543_i32, %c610352047_i32 : i32
    %235 = math.log2 %cst_0 : f32
    %236 = index.maxu %139, %104
    %237 = index.divs %c14, %rank_26
    %238 = math.expm1 %expanded : tensor<9x1xf16>
    %239 = arith.minf %cst_3, %cst : f32
    %240 = memref.atomic_rmw minu %c650767988_i32, %alloc_19[%c0, %c7, %c3] : (i32, memref<14x12x9xi32>) -> i32
    %241 = vector.reduction <add>, %206 : vector<2xi32> into i32
    %242 = index.floordivs %c7, %72
    %243 = vector.broadcast %c3027_i16 : i16 to vector<14x9xi16>
    %244 = vector.broadcast %false : i1 to vector<14x9xi1>
    %245 = vector.gather %14[%c6, %104, %c5] [%222], %244, %243 : tensor<14x12x9xi16>, vector<14x9xi32>, vector<14x9xi1>, vector<14x9xi16> into vector<14x9xi16>
    %246 = affine.max affine_map<(d0, d1, d2) -> (d1, d0 ceildiv 64, -((-d1) floordiv 8), d1)>(%68, %101, %24)
    %247 = index.maxu %155, %155
    %248 = vector.load %alloc_10[%c6] : memref<9xi16>, vector<14x12x9xi16>
    %249 = math.log10 %cst_5 : f32
    %250 = arith.negf %cst : f32
    %inserted_35 = tensor.insert %c1901842985_i32 into %6[%c4] : tensor<9xi32>
    %251 = math.cos %16 : tensor<9xf16>
    %false_36 = index.bool.constant false
    %252 = affine.if affine_set<(d0, d1) : ((d0 * 2 - 64) ceildiv 8 == 0)>(%c15, %c6) -> memref<14x8xi1> {
      %262 = index.maxu %144, %c6
      %263 = arith.subi %c1017508543_i32, %c1901842985_i32 : i32
      %264 = vector.insertelement %c1720371323_i64, %20[%c2 : index] : vector<14xi64>
      %265 = math.copysign %13, %13 : tensor<14x8xf32>
      %266 = index.divu %53, %c8
      %267 = vector.broadcast %c650767988_i32 : i32 to vector<14xi32>
      %268 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %222, %174, %267 : vector<14x9xi32>, vector<9xi32> into vector<14xi32>
      %c1255937053_i32 = arith.constant 1255937053 : i32
      %269 = arith.mulf %cst_3, %cst_0 : f32
      affine.yield %alloc_9 : memref<14x8xi1>
    } else {
      %262 = index.floordivs %91, %rank
      %263 = arith.shli %c3027_i16, %c3027_i16 : i16
      %264 = arith.divf %cst_2, %cst_31 : f16
      %265 = arith.xori %false, %false : i1
      %266 = arith.shrui %c1017508543_i32, %c610352047_i32 : i32
      %267 = index.add %24, %c0
      %268 = math.cos %cst : f32
      %269 = math.fma %cst_3, %cst, %cst_5 : f32
      affine.yield %alloc_9 : memref<14x8xi1>
    }
    %253 = math.atan %cst_2 : f16
    %254 = math.expm1 %1 : tensor<14x8xf16>
    %255 = math.absf %13 : tensor<14x8xf32>
    %256 = math.exp2 %5 : tensor<14x9xf16>
    %257 = arith.addf %cst_0, %cst_0 : f32
    %258 = tensor.empty() : tensor<9xi32>
    %259 = linalg.copy ins(%10 : tensor<9xi32>) outs(%258 : tensor<9xi32>) -> tensor<9xi32>
    %alloc_37 = memref.alloc() : memref<9xi64>
    linalg.transpose ins(%alloc_7 : memref<9xi64>) outs(%alloc_37 : memref<9xi64>) permutation = [0] 
    %260 = tensor.empty() : tensor<i32>
    %reduced_38 = linalg.reduce ins(%258 : tensor<9xi32>) outs(%260 : tensor<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %262 = affine.min affine_map<(d0) -> ((d0 * 2048 - 16) * 2, d0 * 8, d0 * 8)>(%94)
        %263 = scf.if %false -> (i1) {
          %270 = vector.transpose %143, [2, 0, 1] : vector<14x12x9xi16> to vector<9x14x12xi16>
          %271 = math.powf %17, %2 : tensor<9xf16>
          %272 = math.tan %13 : tensor<14x8xf32>
          %273 = arith.ceildivsi %false_36, %false_1 : i1
          %274 = index.casts %112 : index to i32
          %275 = memref.load %alloc_9[%c0, %c4] : memref<14x8xi1>
          %276 = math.ctlz %18 : tensor<9x14x12xi16>
          %277 = math.atan2 %1, %1 : tensor<14x8xf16>
          scf.yield %false_1 : i1
        } else {
          %270 = memref.load %alloc_7[%c0] : memref<9xi64>
          %271 = vector.splat %c13 : vector<9xindex>
          %272 = vector.create_mask %139, %91, %c6 : vector<14x12x9xi1>
          %273 = arith.divui %false_33, %false_1 : i1
          %274 = memref.atomic_rmw mulf %cst_5, %alloc_8[%c9, %c4] : (f32, memref<14x9xf32>) -> f32
          %275 = math.ipowi %19, %260 : tensor<i32>
          %276 = vector.broadcast %c2 : index to vector<9xindex>
          %277 = vector.broadcast %cst_31 : f16 to vector<9xf16>
          vector.scatter %alloc_20[%c3, %c5, %c3] [%276], %173, %277 : memref<14x12x9xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
          %278 = memref.load %alloc_14[%c1, %c6] : memref<14x9xi32>
          scf.yield %false_1 : i1
        }
        %264 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 + 16) * 8 >= 0, -d0 - d3 == 0, d2 >= 0)>(%c0, %c3, %c11, %c4) -> f16 {
          %270 = vector.insertelement %c3027_i16, %157[%242 : index] : vector<9xi16>
          %271 = arith.shrui %false_1, %false_1 : i1
          %272 = bufferization.to_memref %3 : memref<9xi32>
          %273 = arith.cmpi sgt, %263, %false_36 : i1
          %274 = arith.minsi %c650767988_i32, %c650767988_i32 : i32
          %275 = math.ctpop %c1944038390_i64 : i64
          %276 = math.absi %4 : tensor<14x12x9xi16>
          vector.print %173 : vector<9xi1>
          affine.yield %cst_2 : f16
        } else {
          %270 = math.absi %c650767988_i32 : i32
          %271 = index.divu %c1, %144
          %272 = arith.floordivsi %init, %c610352047_i32 : i32
          %273 = arith.ceildivsi %in, %c1901842985_i32 : i32
          %274 = arith.divf %cst_0, %cst_5 : f32
          %275 = arith.floordivsi %c3027_i16, %c3027_i16 : i16
          %276 = affine.apply affine_map<(d0) -> (0)>(%242)
          %277 = index.casts %c0 : index to i32
          affine.yield %cst_31 : f16
        }
        %265 = arith.addi %c610352047_i32, %c1017508543_i32 : i32
        scf.index_switch %c7 
        case 1 {
          %270 = arith.ori %c1017508543_i32, %init : i32
          %271 = affine.min affine_map<(d0, d1) -> (d0 ceildiv 16 + 47, d0, d0 * 2)>(%c7, %c6)
          %272 = arith.remsi %false, %false_1 : i1
          %273 = arith.ceildivsi %263, %263 : i1
          %274 = index.divu %c10, %c7
          %rank_39 = tensor.rank %1 : tensor<14x8xf16>
          %275 = index.mul %271, %170
          %276 = math.powf %5, %5 : tensor<14x9xf16>
          %277 = arith.ceildivsi %c650767988_i32, %c1901842985_i32 : i32
          %278 = arith.negf %cst_3 : f32
          %279 = arith.ceildivsi %c1017508543_i32, %in : i32
          %280 = vector.broadcast %c650767988_i32 : i32 to vector<14xi32>
          %281 = vector.broadcast %false_33 : i1 to vector<14xi1>
          %282 = vector.maskedload %alloc_14[%c8, %c3], %281, %280 : memref<14x9xi32>, vector<14xi1>, vector<14xi32> into vector<14xi32>
          %splat = tensor.splat %cst_4 : tensor<9xf16>
          %283 = vector.insert %false_36, %281 [13] : i1 into vector<14xi1>
          %284 = arith.ori %false_36, %263 : i1
          %285 = index.maxs %210, %c14
          scf.yield
        }
        case 2 {
          %270 = arith.ori %c3027_i16, %c3027_i16 : i16
          %271 = math.exp %1 : tensor<14x8xf16>
          %272 = math.log %13 : tensor<14x8xf32>
          %273 = memref.load %95[%c2, %c7] : memref<14x9xf16>
          %274 = arith.remui %in, %init : i32
          %275 = index.sizeof
          %276 = arith.ceildivsi %c1017508543_i32, %c650767988_i32 : i32
          affine.store %false_33, %alloc_13[%c0] : memref<9xi1>
          %277 = affine.max affine_map<(d0, d1, d2) -> ((d2 + 64) floordiv 128, d0, d2 + 128, (d2 + 64) floordiv 128)>(%23, %c1, %63)
          %278 = index.add %38, %rank_26
          %279 = vector.reduction <add>, %174 : vector<9xi32> into i32
          %280 = math.tanh %cst_2 : f16
          %281 = vector.broadcast %cst_31 : f16 to vector<8xf16>
          %282 = vector.broadcast %false_1 : i1 to vector<8xi1>
          %283 = vector.maskedload %alloc_18[%c12, %c1], %282, %281 : memref<14x9xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
          %284 = math.tan %cst_4 : f16
          %285 = arith.subi %in, %c1017508543_i32 : i32
          %286 = math.atan2 %cst_3, %cst_0 : f32
          scf.yield
        }
        case 3 {
          %270 = math.round %cst_0 : f32
          %271 = index.sizeof
          %272 = vector.transpose %173, [0] : vector<9xi1> to vector<9xi1>
          %273 = arith.ori %c3027_i16, %c3027_i16 : i16
          memref.store %110, %alloc_12[%c5, %c1] : memref<14x9xi64>
          %274 = math.atan2 %5, %5 : tensor<14x9xf16>
          %alloca = memref.alloca() : memref<14x8xf32>
          %rank_39 = tensor.rank %12 : tensor<14x12x9xi64>
          %275 = math.ceil %cst : f32
          %276 = vector.broadcast %false : i1 to vector<14xi1>
          %277 = vector.maskedload %alloc_7[%c8], %276, %105 : memref<9xi64>, vector<14xi1>, vector<14xi64> into vector<14xi64>
          %278 = index.casts %c1720371323_i64 : i64 to index
          %279 = vector.splat %c610352047_i32 : vector<14x8xi32>
          %280 = vector.insertelement %in, %206[%53 : index] : vector<2xi32>
          %281 = arith.addf %cst_5, %cst_3 : f32
          %282 = vector.splat %263 : vector<14x9xi1>
          %283 = affine.max affine_map<(d0, d1) -> (((d0 floordiv 64 + 64) ceildiv 16) mod 4)>(%rank, %c14)
          scf.yield
        }
        case 4 {
          %270 = math.cttz %6 : tensor<9xi32>
          %271 = index.divu %c6, %116
          %alloc_39 = memref.alloc() : memref<14x8xi64>
          %272 = vector.broadcast %c492272022_i64 : i64 to vector<14x8xi64>
          %273 = vector.broadcast %false_1 : i1 to vector<14x8xi1>
          %274 = vector.broadcast %c1901842985_i32 : i32 to vector<14x8xi32>
          %275 = vector.gather %alloc_39[%c14, %39] [%274], %273, %272 : memref<14x8xi64>, vector<14x8xi32>, vector<14x8xi1>, vector<14x8xi64> into vector<14x8xi64>
          %276 = affine.min affine_map<(d0, d1, d2, d3) -> ((d0 ceildiv 128) floordiv 64, d0 + d1, d3 - 4, d0)>(%101, %262, %24, %c2)
          %277 = index.add %237, %195
          affine.store %in, %alloc_14[%c1, %c1] : memref<14x9xi32>
          %278 = arith.maxui %c1017508543_i32, %c610352047_i32 : i32
          %279 = arith.ori %263, %263 : i1
          %280 = bufferization.to_tensor %alloc_12 : memref<14x9xi64>
          %281 = vector.splat %271 : vector<14x9xindex>
          %282 = arith.cmpf true, %cst, %cst_0 : f32
          %283 = arith.addf %cst_5, %cst_5 : f32
          %284 = affine.apply affine_map<(d0) -> ((d0 + 32) * 3)>(%c6)
          %285 = affine.apply affine_map<(d0) -> (-(d0 + 2))>(%116)
          %286 = math.copysign %cst, %cst : f32
          %287 = vector.extract_strided_slice %20 {offsets = [5], sizes = [6], strides = [1]} : vector<14xi64> to vector<6xi64>
          scf.yield
        }
        default {
          %270 = index.maxu %39, %c14
          %271 = arith.xori %c1901842985_i32, %init : i32
          %272 = math.atan2 %cst_0, %cst_3 : f32
          %273 = math.cos %2 : tensor<9xf16>
          %extracted = tensor.extract %transposed[%c1, %c10, %c11] : tensor<9x14x12xi16>
          %274 = math.cos %cst_4 : f16
          %275 = math.exp2 %13 : tensor<14x8xf32>
          %276 = vector.transpose %244, [1, 0] : vector<14x9xi1> to vector<9x14xi1>
          %277 = arith.maxui %false_36, %false_33 : i1
          %278 = math.exp %5 : tensor<14x9xf16>
          %cst_39 = arith.constant 0x4E305BDB : f32
          %279 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 64, (d0 - 2) mod 4)>(%c7, %c1, %c10, %101)
          %280 = arith.remui %extracted, %c3027_i16 : i16
          %281 = math.roundeven %cst_31 : f16
          %282 = math.expm1 %13 : tensor<14x8xf32>
          %283 = tensor.empty() : tensor<14x9xi32>
          %284 = math.fpowi %5, %283 : tensor<14x9xf16>, tensor<14x9xi32>
        }
        %266 = math.log %1 : tensor<14x8xf16>
        %267 = tensor.empty() : tensor<14x9xi32>
        %268 = math.fpowi %5, %267 : tensor<14x9xf16>, tensor<14x9xi32>
        %269 = tensor.empty() : tensor<14x8xf32>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    scf.parallel (%arg3) = (%c7) to (%c10) step (%c12) {
      %262 = index.maxs %c11, %164
      memref.alloca_scope  {
        %alloca = memref.alloca() : memref<14x9xf16>
        %276 = vector.multi_reduction <and>, %66, %c1944038390_i64 [0] : vector<1xi64> to i64
        %277 = math.expm1 %17 : tensor<9xf16>
        %278 = index.maxu %185, %63
        %279 = math.fma %cst_5, %cst_0, %cst_5 : f32
        %280 = index.divu %c14, %144
        %281 = math.log10 %cst_2 : f16
        %282 = vector.create_mask %rank_26 : vector<9xi1>
        %283 = index.maxs %91, %c4
        %284 = index.maxu %283, %c3
        %285 = math.roundeven %cst_5 : f32
        %286 = math.atan %expanded : tensor<9x1xf16>
        %287 = index.sizeof
        %288 = arith.divui %c492272022_i64, %c1944038390_i64 : i64
        %289 = bufferization.to_memref %13 : memref<14x8xf32>
        %290 = arith.remui %c650767988_i32, %c1901842985_i32 : i32
        memref.assume_alignment %220, 2 : memref<14x8xf32>
        memref.assume_alignment %220, 4 : memref<14x8xf32>
        %291 = math.cttz %3 : tensor<9xi32>
        %292 = math.log2 %2 : tensor<9xf16>
        %293 = arith.remsi %c1017508543_i32, %c650767988_i32 : i32
        %294 = math.atan %1 : tensor<14x8xf16>
        %295 = math.floor %17 : tensor<9xf16>
        %296 = arith.subi %c650767988_i32, %c610352047_i32 : i32
        %297 = affine.min affine_map<(d0) -> (d0 mod 16)>(%38)
        %298 = arith.ceildivsi %c3027_i16, %c3027_i16 : i16
        %inserted_39 = tensor.insert %c1720371323_i64 into %9[%c3, %c4] : tensor<14x9xi64>
        %299 = index.sub %283, %246
        %300 = arith.xori %c1944038390_i64, %c1944038390_i64 : i64
        %301 = index.divu %116, %280
        %302 = arith.mulf %cst_5, %cst : f32
        %303 = math.exp %cst_2 : f16
      }
      %263 = math.cos %2 : tensor<9xf16>
      %264 = arith.shrsi %c492272022_i64, %110 : i64
      %265 = bufferization.to_memref %19 : memref<i32>
      %266 = memref.load %alloc_10[%c3] : memref<9xi16>
      %267 = index.sub %c14, %164
      %268 = math.round %expanded : tensor<9x1xf16>
      %269 = vector.transpose %131, [1, 0] : vector<14x8xf32> to vector<8x14xf32>
      %270 = index.sub %44, %164
      %271 = math.round %2 : tensor<9xf16>
      %272 = memref.realloc %alloc_13 : memref<9xi1> to memref<8xi1>
      %273 = index.floordivs %c2, %139
      %274 = math.ctpop %transposed : tensor<9x14x12xi16>
      %275 = arith.mulf %cst_2, %cst_2 : f16
      vector.print %197 : vector<9xi16>
      scf.yield
    }
    %261 = affine.vector_load %alloc_10[%246] : memref<9xi16>, vector<8xi16>
    affine.vector_store %160, %alloc_8[%rank_26, %24] : memref<14x9xf32>, vector<9xf32>
    vector.print %20 : vector<14xi64>
    vector.print %66 : vector<1xi64>
    vector.print %105 : vector<14xi64>
    vector.print %130 : vector<14x8xf32>
    vector.print %131 : vector<14x8xf32>
    vector.print %132 : vector<9xi32>
    vector.print %143 : vector<14x12x9xi16>
    vector.print %157 : vector<9xi16>
    vector.print %160 : vector<9xf32>
    vector.print %173 : vector<9xi1>
    vector.print %174 : vector<9xi32>
    vector.print %181 : vector<14x9xf16>
    vector.print %197 : vector<9xi16>
    vector.print %206 : vector<2xi32>
    vector.print %222 : vector<14x9xi32>
    vector.print %243 : vector<14x9xi16>
    vector.print %244 : vector<14x9xi1>
    vector.print %245 : vector<14x9xi16>
    vector.print %248 : vector<14x12x9xi16>
    vector.print %261 : vector<8xi16>
    vector.print %c650767988_i32 : i32
    vector.print %cst : f32
    vector.print %false : i1
    vector.print %c1017508543_i32 : i32
    vector.print %cst_0 : f32
    vector.print %c3027_i16 : i16
    vector.print %false_1 : i1
    vector.print %c1901842985_i32 : i32
    vector.print %c1720371323_i64 : i64
    vector.print %cst_2 : f16
    vector.print %c610352047_i32 : i32
    vector.print %c492272022_i64 : i64
    vector.print %c1944038390_i64 : i64
    vector.print %cst_3 : f32
    vector.print %cst_4 : f16
    vector.print %cst_5 : f32
    vector.print %110 : i64
    vector.print %cst_31 : f16
    vector.print %false_33 : i1
    vector.print %false_36 : i1
    return %alloc_9 : memref<14x8xi1>
  }
}
