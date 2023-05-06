module {
  func.func @func1(%arg0: vector<2x12xf32>) {
    %c690967306_i64 = arith.constant 690967306 : i64
    %c-7223_i16 = arith.constant -7223 : i16
    %cst = arith.constant 5.603200e+04 : f16
    %c11367_i16 = arith.constant 11367 : i16
    %cst_0 = arith.constant 1.03131744E+9 : f32
    %c386112241_i64 = arith.constant 386112241 : i64
    %c-3537_i16 = arith.constant -3537 : i16
    %cst_1 = arith.constant 2.612000e+03 : f16
    %c32449_i16 = arith.constant 32449 : i16
    %true = arith.constant true
    %true_2 = arith.constant true
    %cst_3 = arith.constant 1.96052634E+9 : f32
    %cst_4 = arith.constant 0x4C559A4D : f32
    %c268168039_i32 = arith.constant 268168039 : i32
    %cst_5 = arith.constant 1.771200e+04 : f16
    %cst_6 = arith.constant 1.04237267E+9 : f32
    %0 = tensor.empty() : tensor<5x5x12xi32>
    %1 = tensor.empty() : tensor<2x12xi16>
    %2 = tensor.empty() : tensor<2x2xi16>
    %3 = tensor.empty() : tensor<2x2xi64>
    %4 = tensor.empty() : tensor<5x5x12xi16>
    %5 = tensor.empty() : tensor<2x2xi32>
    %6 = tensor.empty() : tensor<5xi1>
    %7 = tensor.empty() : tensor<5xi64>
    %8 = tensor.empty() : tensor<5x5x12xf16>
    %9 = tensor.empty() : tensor<5x5x12xi1>
    %10 = tensor.empty() : tensor<2x2xf16>
    %11 = tensor.empty() : tensor<2x12xi16>
    %12 = tensor.empty() : tensor<2x12xi1>
    %13 = tensor.empty() : tensor<2x2xf16>
    %14 = tensor.empty() : tensor<5x5x12xf32>
    %15 = tensor.empty() : tensor<5x5x12xi64>
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
    %alloc = memref.alloc() : memref<2x2xf32>
    %alloc_7 = memref.alloc() : memref<2x12xi16>
    %alloc_8 = memref.alloc() : memref<2x12xf16>
    %alloc_9 = memref.alloc() : memref<2x2xf16>
    %alloc_10 = memref.alloc() : memref<5x5x12xi64>
    %alloc_11 = memref.alloc() : memref<5xi32>
    %alloc_12 = memref.alloc() : memref<5x5x12xf32>
    %alloc_13 = memref.alloc() : memref<2x12xi16>
    %alloc_14 = memref.alloc() : memref<2x2xi32>
    %alloc_15 = memref.alloc() : memref<2x12xf32>
    %alloc_16 = memref.alloc() : memref<5xi32>
    %alloc_17 = memref.alloc() : memref<5x5x12xi16>
    %alloc_18 = memref.alloc() : memref<5xf32>
    %alloc_19 = memref.alloc() : memref<2x2xf32>
    %alloc_20 = memref.alloc() : memref<2x2xi1>
    %alloc_21 = memref.alloc() : memref<5x5x12xi32>
    %16 = tensor.empty() : tensor<2x12xi1>
    %17 = linalg.copy ins(%12 : tensor<2x12xi1>) outs(%16 : tensor<2x12xi1>) -> tensor<2x12xi1>
    %18 = tensor.empty() : tensor<12x5x5xi64>
    %transposed = linalg.transpose ins(%alloc_10 : memref<5x5x12xi64>) outs(%18 : tensor<12x5x5xi64>) permutation = [2, 0, 1] 
    %alloc_22 = memref.alloc() : memref<5xf16>
    linalg.reduce ins(%8 : tensor<5x5x12xf16>) outs(%alloc_22 : memref<5xf16>) dimensions = [1, 2] 
      (%in: f16, %init: f16) {
        %252 = math.tanh %cst_1 : f16
        %253 = vector.broadcast %true_2 : i1 to vector<2xi1>
        %254 = vector.maskedload %alloc_20[%c0, %c0], %253, %253 : memref<2x2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        scf.index_switch %c4 
        case 1 {
          %259 = math.exp2 %14 : tensor<5x5x12xf32>
          %260 = vector.broadcast %true_2 : i1 to vector<2x2xi1>
          %261 = vector.outerproduct %253, %253, %260 {kind = #vector.kind<add>} : vector<2xi1>, vector<2xi1>
          %262 = arith.negf %cst_0 : f32
          %263 = vector.splat %cst_1 : vector<5xf16>
          %264 = math.fma %init, %init, %init : f16
          %265 = arith.shrui %c11367_i16, %c-7223_i16 : i16
          %266 = bufferization.clone %alloc_14 : memref<2x2xi32> to memref<2x2xi32>
          %267 = arith.remf %cst_3, %cst_4 : f32
          affine.store %c268168039_i32, %alloc_16[%c15] : memref<5xi32>
          %268 = vector.broadcast %c268168039_i32 : i32 to vector<2xi32>
          %269 = vector.transfer_write %268, %5[%c13, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi32>, tensor<2x2xi32>
          %270 = arith.shli %c690967306_i64, %c386112241_i64 : i64
          %271 = math.log1p %14 : tensor<5x5x12xf32>
          %272 = math.exp %10 : tensor<2x2xf16>
          %273 = math.cttz %11 : tensor<2x12xi16>
          %274 = math.absf %13 : tensor<2x2xf16>
          %275 = vector.broadcast %c268168039_i32 : i32 to vector<2x12xi32>
          scf.yield
        }
        case 2 {
          %259 = math.rsqrt %14 : tensor<5x5x12xf32>
          %260 = math.fma %cst_0, %cst_3, %cst_0 : f32
          %261 = arith.addf %init, %cst : f16
          %262 = math.powf %cst_0, %cst_3 : f32
          memref.assume_alignment %alloc_9, 2 : memref<2x2xf16>
          %263 = math.powf %cst, %cst_5 : f16
          %true_57 = index.bool.constant true
          %264 = vector.broadcast %true_57 : i1 to vector<2x2xi1>
          %265 = vector.outerproduct %254, %253, %264 {kind = #vector.kind<or>} : vector<2xi1>, vector<2xi1>
          %266 = vector.bitcast %253 : vector<2xi1> to vector<2xi1>
          %267 = math.fma %cst_5, %cst, %cst : f16
          %268 = math.atan %13 : tensor<2x2xf16>
          %alloc_58 = memref.alloc() : memref<5x5x12xf32>
          memref.copy %alloc_12, %alloc_58 : memref<5x5x12xf32> to memref<5x5x12xf32>
          %269 = arith.shrui %c386112241_i64, %c386112241_i64 : i64
          %270 = arith.minui %true_57, %true_2 : i1
          %271 = arith.andi %c11367_i16, %c11367_i16 : i16
          %272 = index.maxu %c9, %c3
          scf.yield
        }
        case 3 {
          %259 = vector.broadcast %init : f16 to vector<2xf16>
          %260 = vector.maskedload %alloc_9[%c0, %c0], %254, %259 : memref<2x2xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
          %261 = math.sqrt %13 : tensor<2x2xf16>
          %262 = math.powf %10, %10 : tensor<2x2xf16>
          %263 = vector.broadcast %true_2 : i1 to vector<2x2xi1>
          %264 = vector.outerproduct %254, %253, %263 {kind = #vector.kind<minui>} : vector<2xi1>, vector<2xi1>
          %265 = math.absf %14 : tensor<5x5x12xf32>
          %266 = arith.shli %c-3537_i16, %c-7223_i16 : i16
          %267 = arith.andi %c690967306_i64, %c386112241_i64 : i64
          %268 = tensor.empty() : tensor<2x2xf16>
          %269 = linalg.matmul ins(%13, %13 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%268 : tensor<2x2xf16>) -> tensor<2x2xf16>
          %270 = math.absf %in : f16
          %271 = arith.addf %cst_1, %in : f16
          %272 = math.atan2 %cst_5, %cst_5 : f16
          %273 = math.cttz %c-3537_i16 : i16
          affine.store %c268168039_i32, %alloc_14[%c2, %c5] : memref<2x2xi32>
          %274 = arith.negf %cst_3 : f32
          %alloc_57 = memref.alloc() : memref<5x5x12xi1>
          %275 = vector.broadcast %true : i1 to vector<2x2xi1>
          %276 = vector.broadcast %c268168039_i32 : i32 to vector<2x2xi32>
          %277 = vector.gather %alloc_57[%c7, %c4, %c3] [%276], %275, %275 : memref<5x5x12xi1>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi1> into vector<2x2xi1>
          %278 = math.atan2 %8, %8 : tensor<5x5x12xf16>
          scf.yield
        }
        case 4 {
          %259 = math.tan %8 : tensor<5x5x12xf16>
          %260 = math.log1p %14 : tensor<5x5x12xf32>
          memref.store %cst, %alloc_9[%c1, %c1] : memref<2x2xf16>
          %261 = arith.andi %c386112241_i64, %c690967306_i64 : i64
          %262 = index.mul %c14, %c1
          %263 = arith.xori %c268168039_i32, %c268168039_i32 : i32
          %264 = arith.remsi %c32449_i16, %c-7223_i16 : i16
          %265 = vector.transpose %254, [0] : vector<2xi1> to vector<2xi1>
          %266 = arith.remui %true, %true : i1
          %267 = arith.andi %c11367_i16, %c-3537_i16 : i16
          %cast_57 = tensor.cast %10 : tensor<2x2xf16> to tensor<?x?xf16>
          %268 = math.exp2 %cst_5 : f16
          %269 = arith.divsi %c690967306_i64, %c386112241_i64 : i64
          %270 = vector.insert %true_2, %254 [0] : i1 into vector<2xi1>
          %271 = math.fma %13, %13, %10 : tensor<2x2xf16>
          %272 = math.expm1 %cst_0 : f32
          scf.yield
        }
        default {
          %259 = arith.andi %c-3537_i16, %c32449_i16 : i16
          %260 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * 2 + 32, d0 * 2 + 32, (d0 * 2 + 32) ceildiv 2, d3 * 32)>(%c6, %c4, %c15, %c6)
          %261 = index.castu %c10 : index to i32
          %262 = bufferization.to_tensor %alloc_20 : memref<2x2xi1>
          %263 = arith.minf %cst, %cst_1 : f16
          %264 = vector.insert %true_2, %253 [1] : i1 into vector<2xi1>
          %265 = bufferization.to_memref %1 : memref<2x12xi16>
          %266 = vector.matrix_multiply %253, %254 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<2xi1>) -> vector<1xi1>
          %alloca_57 = memref.alloca() : memref<2x12xi16>
          %267 = math.ctpop %2 : tensor<2x2xi16>
          %268 = math.powf %in, %cst : f16
          %269 = arith.remf %cst, %cst_1 : f16
          %270 = math.log1p %in : f16
          %271 = math.powf %cst_0, %cst_0 : f32
          %272 = vector.insert %true_2, %266 [0] : i1 into vector<1xi1>
          %273 = memref.load %alloc_14[%c0, %c1] : memref<2x2xi32>
        }
        %255 = index.mul %c6, %c4
        %256 = arith.xori %true, %true : i1
        %257 = index.maxu %c4, %c4
        %258 = math.ctlz %9 : tensor<5x5x12xi1>
        %cast_55 = tensor.cast %5 : tensor<2x2xi32> to tensor<?x?xi32>
        %cst_56 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_56 : f16
      }
    scf.parallel (%arg1, %arg2) = (%c8, %c10) to (%c12, %c3) step (%c11, %c7) {
      %252 = affine.for %arg3 = 0 to 110 iter_args(%arg4 = %alloc_10) -> (memref<5x5x12xi64>) {
        affine.yield %alloc_10 : memref<5x5x12xi64>
      }
      %alloca_55 = memref.alloca() : memref<2x12xi16>
      %253 = arith.xori %c32449_i16, %c32449_i16 : i16
      %254 = arith.divsi %c-7223_i16, %c-7223_i16 : i16
      %255 = math.exp %cst_6 : f32
      %256 = arith.shli %true, %true_2 : i1
      %257 = scf.while (%arg3 = %alloc_9) : (memref<2x2xf16>) -> memref<2x2xf16> {
        %267 = math.cos %cst_0 : f32
        memref.assume_alignment %alloc_7, 2 : memref<2x12xi16>
        %268 = math.cos %cst_1 : f16
        %269 = math.ctpop %9 : tensor<5x5x12xi1>
        %rank_56 = tensor.rank %5 : tensor<2x2xi32>
        %270 = memref.atomic_rmw maxu %c386112241_i64, %alloc_10[%c4, %c3, %c7] : (i64, memref<5x5x12xi64>) -> i64
        %271 = vector.broadcast %c12 : index to vector<2xindex>
        %272 = vector.broadcast %true_2 : i1 to vector<2xi1>
        %273 = vector.broadcast %cst : f16 to vector<2xf16>
        vector.scatter %alloc_9[%c1, %c0] [%271], %272, %273 : memref<2x2xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
        %alloc_57 = memref.alloc() : memref<5xi64>
        memref.tensor_store %7, %alloc_57 : memref<5xi64>
        scf.condition(%true) %alloc_9 : memref<2x2xf16>
      } do {
      ^bb0(%arg3: memref<2x2xf16>):
        %267 = arith.shli %true_2, %true : i1
        %268 = arith.mulf %cst_3, %cst_4 : f32
        %269 = arith.minf %cst, %cst : f16
        %270 = tensor.empty() : tensor<5xf32>
        %271 = vector.broadcast %cst_6 : f32 to vector<5xf32>
        %272 = vector.broadcast %true : i1 to vector<5xi1>
        %273 = vector.broadcast %c268168039_i32 : i32 to vector<5xi32>
        %274 = vector.gather %270[%c6] [%273], %272, %271 : tensor<5xf32>, vector<5xi32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        memref.assume_alignment %alloc_18, 8 : memref<5xf32>
        %275 = math.log1p %cst_4 : f32
        %276 = math.roundeven %cst_0 : f32
        %277 = vector.splat %cst_3 : vector<5x5x12xf32>
        %278 = arith.addf %cst, %cst_1 : f16
        %279 = math.ctlz %c690967306_i64 : i64
        %alloca_56 = memref.alloca() : memref<2x2xi64>
        %280 = vector.broadcast %cst_0 : f32 to vector<5xf32>
        %281 = vector.fma %280, %280, %274 : vector<5xf32>
        %282 = math.sqrt %10 : tensor<2x2xf16>
        %283 = arith.remui %c690967306_i64, %c386112241_i64 : i64
        %284 = math.round %cst_1 : f16
        %285 = math.log1p %cst_6 : f32
        scf.yield %arg3 : memref<2x2xf16>
      }
      %258 = index.divs %c2, %c8
      %259 = index.mul %c1, %c2
      %splat = tensor.splat %cst_4 : tensor<2x12xf32>
      %260 = vector.broadcast %c690967306_i64 : i64 to vector<2x12xi64>
      %261 = vector.transpose %260, [0, 1] : vector<2x12xi64> to vector<2x12xi64>
      %262 = math.tan %cst : f16
      %263 = math.absi %2 : tensor<2x2xi16>
      %264 = memref.alloca_scope  -> (i64) {
        %267 = index.maxs %259, %c14
        %268 = vector.broadcast %c386112241_i64 : i64 to vector<12x12xi64>
        %269 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %260, %260, %268 : vector<2x12xi64>, vector<2x12xi64> into vector<12x12xi64>
        %270 = arith.divsi %c-3537_i16, %c32449_i16 : i16
        %271 = arith.remf %cst_6, %cst_4 : f32
        affine.store %c11367_i16, %alloc_13[%c4, %c2] : memref<2x12xi16>
        %272 = index.sizeof
        %273 = arith.floordivsi %c11367_i16, %c32449_i16 : i16
        %274 = arith.maxsi %c-7223_i16, %c32449_i16 : i16
        %alloc_56 = memref.alloc() : memref<2x12xi16>
        %inserted_57 = tensor.insert %cst_5 into %10[%c1, %c0] : tensor<2x2xf16>
        %275 = arith.addf %cst, %cst_5 : f16
        %276 = vector.shuffle %260, %260 [0, 1] : vector<2x12xi64>, vector<2x12xi64>
        %277 = index.sizeof
        %278 = math.expm1 %cst_5 : f16
        vector.print %260 : vector<2x12xi64>
        %279 = math.ceil %cst_3 : f32
        memref.store %cst, %alloc_9[%c0, %c0] : memref<2x2xf16>
        %280 = math.floor %cst_5 : f16
        %281 = index.maxu %c1, %c7
        %282 = arith.addf %cst, %cst_5 : f16
        %283 = bufferization.to_memref %9 : memref<5x5x12xi1>
        %284 = tensor.empty() : tensor<2x2xf16>
        %alloc_58 = memref.alloc() : memref<2x2xi32>
        memref.copy %alloc_14, %alloc_58 : memref<2x2xi32> to memref<2x2xi32>
        %285 = arith.ori %c-3537_i16, %c-3537_i16 : i16
        %286 = arith.muli %c268168039_i32, %c268168039_i32 : i32
        %287 = index.mul %c15, %c8
        %288 = math.ceil %10 : tensor<2x2xf16>
        %289 = math.ceil %10 : tensor<2x2xf16>
        %290 = math.fma %8, %8, %8 : tensor<5x5x12xf16>
        %alloc_59 = memref.alloc() : memref<5x5x12xf32>
        memref.copy %alloc_12, %alloc_59 : memref<5x5x12xf32> to memref<5x5x12xf32>
        %rank_60 = tensor.rank %1 : tensor<2x12xi16>
        %291 = arith.remf %cst_4, %cst_3 : f32
        memref.alloca_scope.return %c386112241_i64 : i64
      }
      %265 = affine.for %arg3 = 0 to 25 iter_args(%arg4 = %8) -> (tensor<5x5x12xf16>) {
        affine.yield %8 : tensor<5x5x12xf16>
      }
      %266 = math.absf %splat : tensor<2x12xf32>
      scf.yield
    }
    %19 = affine.vector_load %alloc_10[%c12, %c13, %c13] : memref<5x5x12xi64>, vector<5xi64>
    affine.vector_store %19, %alloc_10[%c8, %c12, %c11] : memref<5x5x12xi64>, vector<5xi64>
    %alloc_23 = memref.alloc() : memref<5xi32>
    %20 = tensor.empty() : tensor<i32>
    %21 = linalg.dot ins(%alloc_11, %alloc_23 : memref<5xi32>, memref<5xi32>) outs(%20 : tensor<i32>) -> tensor<i32>
    %22 = vector.multi_reduction <mul>, %19, %c690967306_i64 [0] : vector<5xi64> to i64
    %23 = arith.shrui %true_2, %true_2 : i1
    %24 = math.absi %15 : tensor<5x5x12xi64>
    %25 = arith.minsi %c268168039_i32, %c268168039_i32 : i32
    %26 = arith.remf %cst_3, %cst_3 : f32
    %27 = index.mul %c15, %c2
    %28 = math.exp %cst : f16
    %29 = math.tan %cst_6 : f32
    %30 = math.round %8 : tensor<5x5x12xf16>
    %31 = bufferization.to_tensor %alloc_20 : memref<2x2xi1>
    %32 = vector.broadcast %c4 : index to vector<2xindex>
    %33 = vector.broadcast %true : i1 to vector<2xi1>
    %34 = vector.broadcast %c-3537_i16 : i16 to vector<2xi16>
    vector.scatter %alloc_7[%c0, %c9] [%32], %33, %34 : memref<2x12xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
    memref.assume_alignment %alloc_10, 4 : memref<5x5x12xi64>
    %35 = bufferization.clone %alloc_20 : memref<2x2xi1> to memref<2x2xi1>
    %36 = math.exp %13 : tensor<2x2xf16>
    %37 = affine.apply affine_map<(d0, d1) -> ((d0 * 2 - 1) * 128)>(%c7, %c11)
    %38 = arith.shrsi %true_2, %true : i1
    %39 = math.exp %cst : f16
    %40 = vector.insert %c690967306_i64, %19 [3] : i64 into vector<5xi64>
    %alloc_24 = memref.alloc() : memref<i32>
    memref.tensor_store %21, %alloc_24 : memref<i32>
    %alloca = memref.alloca() : memref<5xi1>
    %from_elements = tensor.from_elements %c11367_i16, %c11367_i16, %c11367_i16, %c11367_i16, %c-7223_i16, %c-7223_i16, %c32449_i16, %c-7223_i16, %c32449_i16, %c32449_i16, %c32449_i16, %c-3537_i16, %c-3537_i16, %c11367_i16, %c-3537_i16, %c32449_i16, %c11367_i16, %c11367_i16, %c-7223_i16, %c11367_i16, %c32449_i16, %c32449_i16, %c32449_i16, %c11367_i16 : tensor<2x12xi16>
    %41 = vector.matrix_multiply %19, %19 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
    %42 = arith.negf %cst_4 : f32
    %43 = arith.muli %22, %22 : i64
    %44 = tensor.empty() : tensor<5x12x5xi32>
    %alloc_25 = memref.alloc() : memref<12xi32>
    %45 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%44, %alloc_16, %alloc_25 : tensor<5x12x5xi32>, memref<5xi32>, memref<12xi32>) outs(%0 : tensor<5x5x12xi32>) {
    ^bb0(%in: i32, %in_55: i32, %in_56: i32, %out: i32):
      %252 = arith.ceildivsi %c-7223_i16, %c32449_i16 : i16
      %253 = math.sqrt %13 : tensor<2x2xf16>
      %254 = math.tanh %cst_1 : f16
      %255 = math.atan %10 : tensor<2x2xf16>
      memref.assume_alignment %alloc_9, 2 : memref<2x2xf16>
      %256 = math.powf %10, %10 : tensor<2x2xf16>
      %257 = arith.addi %true_2, %true : i1
      %258 = math.absi %c11367_i16 : i16
      memref.assume_alignment %alloc_23, 16 : memref<5xi32>
      %259 = arith.shrui %c386112241_i64, %c386112241_i64 : i64
      %260 = arith.maxui %c268168039_i32, %out : i32
      memref.assume_alignment %alloc_13, 4 : memref<2x12xi16>
      %expanded = tensor.expand_shape %10 [[0], [1, 2]] : tensor<2x2xf16> into tensor<2x2x1xf16>
      %261 = vector.broadcast %c11 : index to vector<2xindex>
      %262 = vector.broadcast %true_2 : i1 to vector<2xi1>
      %263 = vector.broadcast %c11367_i16 : i16 to vector<2xi16>
      vector.scatter %alloc_7[%c0, %c0] [%261], %262, %263 : memref<2x12xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
      %264 = vector.load %alloc_10[%c2, %c4, %c7] : memref<5x5x12xi64>, vector<2x12xi64>
      memref.assume_alignment %alloc_8, 2 : memref<2x12xf16>
      %265 = memref.realloc %alloc_18 : memref<5xf32> to memref<12xf32>
      bufferization.dealloc_tensor %4 : tensor<5x5x12xi16>
      %266 = math.copysign %expanded, %expanded : tensor<2x2x1xf16>
      %267 = affine.min affine_map<(d0) -> ((-(d0 + 33) - (d0 - (d0 + 1))) ceildiv 8)>(%c1)
      %268 = arith.minf %cst_4, %cst_6 : f32
      %rank_57 = tensor.rank %16 : tensor<2x12xi1>
      %269 = vector.broadcast %c690967306_i64 : i64 to vector<5x5xi64>
      %270 = vector.outerproduct %19, %19, %269 {kind = #vector.kind<mul>} : vector<5xi64>, vector<5xi64>
      %271 = vector.matrix_multiply %41, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xi64>, vector<5xi64>) -> vector<5xi64>
      %272 = math.roundeven %cst_6 : f32
      %273 = arith.shli %in_55, %c268168039_i32 : i32
      %alloca_58 = memref.alloca() : memref<2x2xi1>
      %274 = arith.andi %c32449_i16, %c11367_i16 : i16
      %275 = vector.broadcast %out : i32 to vector<12xi32>
      %276 = vector.broadcast %true : i1 to vector<12xi1>
      %277 = vector.maskedload %alloc_23[%c4], %276, %275 : memref<5xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
      %278 = vector.broadcast %true_2 : i1 to vector<12x12xi1>
      %279 = vector.outerproduct %276, %276, %278 {kind = #vector.kind<maxsi>} : vector<12xi1>, vector<12xi1>
      %280 = arith.divsi %c-3537_i16, %c-3537_i16 : i16
      affine.store %cst_3, %alloc_12[%c0, %c1, %c6] : memref<5x5x12xf32>
      linalg.yield %c268168039_i32 : i32
    } -> tensor<5x5x12xi32>
    %46 = math.log1p %cst_0 : f32
    %47 = arith.divui %c11367_i16, %c-3537_i16 : i16
    %48 = arith.divf %cst_3, %cst_4 : f32
    %cast = tensor.cast %4 : tensor<5x5x12xi16> to tensor<?x?x?xi16>
    %rank = tensor.rank %12 : tensor<2x12xi1>
    %49 = math.cos %cst : f16
    %50 = vector.broadcast %c268168039_i32 : i32 to vector<5xi32>
    %51 = vector.broadcast %true : i1 to vector<5xi1>
    %52 = vector.maskedload %alloc_14[%c1, %c0], %51, %50 : memref<2x2xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
    %53 = math.atan %8 : tensor<5x5x12xf16>
    %54 = arith.remf %cst_0, %cst_0 : f32
    affine.for %arg1 = 0 to 10 {
    }
    scf.if %true {
      %true_55 = index.bool.constant true
      %252 = bufferization.clone %alloc_7 : memref<2x12xi16> to memref<2x12xi16>
      %253 = math.atan %13 : tensor<2x2xf16>
      %254 = math.absf %10 : tensor<2x2xf16>
      %255 = math.absi %9 : tensor<5x5x12xi1>
      %rank_56 = tensor.rank %12 : tensor<2x12xi1>
      %256 = vector.extract %41[0] : vector<1xi64>
      %alloc_57 = memref.alloc() : memref<5x5x12xi1>
      memref.tensor_store %9, %alloc_57 : memref<5x5x12xi1>
    }
    %alloca_26 = memref.alloca() : memref<2x12xi16>
    %55 = vector.broadcast %cst_4 : f32 to vector<12xf32>
    %56 = vector.broadcast %true : i1 to vector<12xi1>
    %57 = vector.maskedload %alloc_12[%c0, %c4, %c7], %56, %55 : memref<5x5x12xf32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
    %58 = arith.minui %c690967306_i64, %22 : i64
    %alloca_27 = memref.alloca() : memref<2x2xf32>
    %59 = math.absf %8 : tensor<5x5x12xf16>
    %60 = vector.flat_transpose %51 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
    %61 = math.sqrt %8 : tensor<5x5x12xf16>
    %62 = math.exp2 %13 : tensor<2x2xf16>
    affine.store %true_2, %35[%c4, %c12] : memref<2x2xi1>
    %63 = math.atan2 %13, %13 : tensor<2x2xf16>
    %64 = vector.broadcast %c268168039_i32 : i32 to vector<5x5xi32>
    %65 = vector.outerproduct %52, %50, %64 {kind = #vector.kind<or>} : vector<5xi32>, vector<5xi32>
    %66 = scf.index_switch %rank -> vector<2x12xf16> 
    case 1 {
      %252 = index.mul %c1, %37
      %253 = memref.realloc %alloc_22 : memref<5xf16> to memref<2xf16>
      %254 = arith.negf %cst_6 : f32
      %255 = math.fma %cst_4, %cst_3, %cst_3 : f32
      vector.print %51 : vector<5xi1>
      %256 = bufferization.clone %alloc_7 : memref<2x12xi16> to memref<2x12xi16>
      %257 = arith.remsi %true_2, %true : i1
      %false_55 = index.bool.constant false
      %258 = math.absf %10 : tensor<2x2xf16>
      %259 = arith.ceildivsi %false_55, %true_2 : i1
      memref.assume_alignment %alloc_8, 8 : memref<2x12xf16>
      %260 = vector.broadcast %cst : f16 to vector<f16>
      vector.transfer_write %260, %alloc_9[%c13, %c0] : vector<f16>, memref<2x2xf16>
      %261 = arith.shli %true_2, %true_2 : i1
      %262 = arith.muli %c-7223_i16, %c11367_i16 : i16
      %263 = vector.broadcast %true_2 : i1 to vector<i1>
      %264 = vector.transfer_write %263, %12[%c1, %c13] : vector<i1>, tensor<2x12xi1>
      %265 = math.log2 %14 : tensor<5x5x12xf32>
      %266 = vector.broadcast %cst : f16 to vector<2x12xf16>
      scf.yield %266 : vector<2x12xf16>
    }
    case 2 {
      %252 = scf.while (%arg1 = %41) : (vector<1xi64>) -> vector<1xi64> {
        bufferization.dealloc_tensor %16 : tensor<2x12xi1>
        %269 = math.log1p %10 : tensor<2x2xf16>
        %alloca_55 = memref.alloca() : memref<5x5x12xi64>
        memref.assume_alignment %alloc_7, 4 : memref<2x12xi16>
        %270 = arith.negf %cst_4 : f32
        %271 = vector.insert %c386112241_i64, %19 [1] : i64 into vector<5xi64>
        %272 = math.absf %8 : tensor<5x5x12xf16>
        bufferization.dealloc_tensor %3 : tensor<2x2xi64>
        scf.condition(%true) %41 : vector<1xi64>
      } do {
      ^bb0(%arg1: vector<1xi64>):
        %269 = vector.reduction <or>, %19 : vector<5xi64> into i64
        %270 = arith.remui %c32449_i16, %c32449_i16 : i16
        %271 = arith.minf %cst_4, %cst_3 : f32
        %272 = vector.load %alloc_12[%c1, %c3, %c2] : memref<5x5x12xf32>, vector<5xf32>
        %273 = vector.matrix_multiply %60, %51 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
        %274 = math.exp %cst_0 : f32
        %275 = bufferization.to_tensor %alloc_14 : memref<2x2xi32>
        %276 = math.tan %cst_0 : f32
        %277 = math.tan %cst_6 : f32
        memref.copy %alloc_11, %alloc_16 : memref<5xi32> to memref<5xi32>
        %278 = vector.splat %cst_4 : vector<2x2xf32>
        bufferization.dealloc_tensor %17 : tensor<2x12xi1>
        %279 = arith.shli %true, %true_2 : i1
        %280 = math.round %13 : tensor<2x2xf16>
        %281 = math.ceil %cst_6 : f32
        %282 = affine.load %alloc_9[%c14, %c9] : memref<2x2xf16>
        scf.yield %41 : vector<1xi64>
      }
      %253 = scf.while (%arg1 = %c-7223_i16) : (i16) -> i16 {
        %269 = arith.negf %cst_3 : f32
        %true_55 = index.bool.constant true
        %270 = arith.minf %cst_3, %cst_3 : f32
        %rank_56 = tensor.rank %5 : tensor<2x2xi32>
        %271 = vector.broadcast %c386112241_i64 : i64 to vector<12xi64>
        vector.transfer_write %271, %alloc_10[%27, %c14, %c15] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<12xi64>, memref<5x5x12xi64>
        %272 = arith.minf %cst_6, %cst_4 : f32
        %273 = math.round %13 : tensor<2x2xf16>
        %274 = math.tan %cst_3 : f32
        scf.condition(%true) %c11367_i16 : i16
      } do {
      ^bb0(%arg1: i16):
        %269 = affine.apply affine_map<(d0) -> (((d0 * -2) mod 16) floordiv 2)>(%c0)
        %expanded = tensor.expand_shape %11 [[0], [1, 2]] : tensor<2x12xi16> into tensor<2x12x1xi16>
        %270 = vector.broadcast %c268168039_i32 : i32 to vector<2xi32>
        %271 = vector.broadcast %true_2 : i1 to vector<2xi1>
        %272 = vector.maskedload %alloc_21[%c4, %c2, %c9], %271, %270 : memref<5x5x12xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %273 = math.fma %10, %13, %13 : tensor<2x2xf16>
        %274 = memref.realloc %alloc_22 : memref<5xf16> to memref<2xf16>
        %275 = math.ceil %cst : f16
        %276 = bufferization.to_memref %11 : memref<2x12xi16>
        %277 = arith.shli %c386112241_i64, %22 : i64
        %278 = math.powf %cst, %cst_1 : f16
        %alloc_55 = memref.alloc() : memref<5x5x12xi16>
        memref.copy %alloc_17, %alloc_55 : memref<5x5x12xi16> to memref<5x5x12xi16>
        %279 = math.fma %13, %13, %13 : tensor<2x2xf16>
        %280 = arith.remf %cst, %cst_1 : f16
        %281 = vector.load %alloc_12[%c2, %c3, %c7] : memref<5x5x12xf32>, vector<5xf32>
        %282 = arith.divui %c386112241_i64, %22 : i64
        memref.store %cst_3, %alloc_12[%c0, %c1, %c1] : memref<5x5x12xf32>
        %splat = tensor.splat %cst_4 : tensor<5x5x12xf32>
        scf.yield %c-3537_i16 : i16
      }
      %254 = tensor.empty() : tensor<2x12xi16>
      %255 = linalg.matmul ins(%2, %from_elements : tensor<2x2xi16>, tensor<2x12xi16>) outs(%254 : tensor<2x12xi16>) -> tensor<2x12xi16>
      %256 = math.powf %13, %13 : tensor<2x2xf16>
      %257 = math.log1p %cst_4 : f32
      %258 = math.sqrt %cst : f16
      %259 = arith.minui %c11367_i16, %c-3537_i16 : i16
      %260 = vector.broadcast %27 : index to vector<12xindex>
      vector.scatter %alloc_15[%c0, %c6] [%260], %56, %55 : memref<2x12xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
      %261 = index.maxs %c10, %c5
      %262 = vector.matrix_multiply %55, %57 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
      vector.print %55 : vector<12xf32>
      %263 = math.fma %cst_4, %cst_3, %cst_4 : f32
      %264 = arith.shrui %true_2, %true_2 : i1
      %265 = math.fma %14, %14, %14 : tensor<5x5x12xf32>
      %266 = math.tan %cst : f16
      %267 = math.fma %13, %13, %13 : tensor<2x2xf16>
      %268 = vector.broadcast %cst_1 : f16 to vector<2x12xf16>
      scf.yield %268 : vector<2x12xf16>
    }
    case 3 {
      vector.print %57 : vector<12xf32>
      %252 = math.cttz %0 : tensor<5x5x12xi32>
      %253 = vector.shuffle %50, %50 [0, 2, 3, 7, 8, 9] : vector<5xi32>, vector<5xi32>
      %254 = vector.insert %cst_0, %57 [1] : f32 into vector<12xf32>
      %255 = vector.broadcast %cst_0 : f32 to vector<5x5x12xf32>
      %256 = vector.fma %255, %255, %255 : vector<5x5x12xf32>
      %rank_55 = tensor.rank %16 : tensor<2x12xi1>
      %257 = arith.remf %cst_1, %cst_5 : f16
      %258 = memref.alloca_scope  -> (memref<5x5x12xi16>) {
        %267 = memref.realloc %alloc_11 : memref<5xi32> to memref<12xi32>
        %268 = arith.minf %cst, %cst : f16
        %269 = vector.broadcast %cst_3 : f32 to vector<2xf32>
        %270 = vector.broadcast %true : i1 to vector<2xi1>
        %271 = vector.maskedload %alloc_12[%c4, %c2, %c1], %270, %269 : memref<5x5x12xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %272 = arith.xori %true_2, %true : i1
        memref.tensor_store %4, %alloc_17 : memref<5x5x12xi16>
        %273 = arith.xori %c32449_i16, %c-7223_i16 : i16
        %274 = bufferization.to_memref %13 : memref<2x2xf16>
        %275 = vector.broadcast %cst_0 : f32 to vector<2x12xf32>
        %276 = vector.fma %275, %275, %275 : vector<2x12xf32>
        %277 = math.absi %11 : tensor<2x12xi16>
        memref.tensor_store %0, %alloc_21 : memref<5x5x12xi32>
        %278 = math.rsqrt %cst_4 : f32
        %279 = vector.matrix_multiply %19, %19 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
        %280 = tensor.empty() : tensor<2x2xi64>
        %281 = linalg.matmul ins(%3, %3 : tensor<2x2xi64>, tensor<2x2xi64>) outs(%280 : tensor<2x2xi64>) -> tensor<2x2xi64>
        %282 = vector.multi_reduction <xor>, %60, %true_2 [0] : vector<5xi1> to i1
        %283 = math.exp2 %cst_3 : f32
        memref.tensor_store %4, %alloc_17 : memref<5x5x12xi16>
        %284 = arith.remf %cst_6, %cst_6 : f32
        %285 = bufferization.to_memref %9 : memref<5x5x12xi1>
        %286 = index.castu %c9 : index to i32
        %287 = index.sub %c8, %c12
        %alloc_57 = memref.alloc() : memref<5x5x12xf32>
        memref.copy %alloc_12, %alloc_57 : memref<5x5x12xf32> to memref<5x5x12xf32>
        %288 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - 32)>(%c2, %27, %c8, %rank)
        %289 = arith.divsi %282, %true : i1
        %splat = tensor.splat %cst_1 : tensor<5x5x12xf16>
        %290 = bufferization.to_memref %3 : memref<2x2xi64>
        %alloca_58 = memref.alloca() : memref<5xf32>
        %291 = math.ipowi %true_2, %282 : i1
        %292 = math.ceil %14 : tensor<5x5x12xf32>
        %293 = vector.broadcast %22 : i64 to vector<1x1xi64>
        %294 = vector.outerproduct %279, %41, %293 {kind = #vector.kind<maxui>} : vector<1xi64>, vector<1xi64>
        %295 = math.copysign %14, %14 : tensor<5x5x12xf32>
        %296 = math.absi %c268168039_i32 : i32
        %extracted = tensor.extract %0[%c4, %c0, %c11] : tensor<5x5x12xi32>
        memref.alloca_scope.return %alloc_17 : memref<5x5x12xi16>
      }
      %259 = math.fma %10, %10, %13 : tensor<2x2xf16>
      %260 = scf.index_switch %c11 -> index 
      case 1 {
        %267 = math.expm1 %cst_4 : f32
        %268 = vector.insert %c268168039_i32, %52 [4] : i32 into vector<5xi32>
        memref.assume_alignment %alloc_14, 4 : memref<2x2xi32>
        %269 = math.ipowi %16, %12 : tensor<2x12xi1>
        %270 = math.atan %8 : tensor<5x5x12xf16>
        %false_57 = index.bool.constant false
        %271 = vector.broadcast %cst_3 : f32 to vector<5x12xf32>
        %dest_58, %accumulated_value_59 = vector.scan <mul>, %256, %271 {inclusive = true, reduction_dim = 0 : i64} : vector<5x5x12xf32>, vector<5x12xf32>
        %alloc_60 = memref.alloc() : memref<2x12xf16>
        memref.copy %alloc_8, %alloc_60 : memref<2x12xf16> to memref<2x12xf16>
        %272 = index.sub %c8, %c14
        %273 = memref.load %alloc_10[%c3, %c0, %c3] : memref<5x5x12xi64>
        %274 = math.fma %cst_4, %cst_3, %cst_6 : f32
        %275 = vector.insert %c268168039_i32, %50 [4] : i32 into vector<5xi32>
        %276 = affine.load %alloc_19[%c6, %c15] : memref<2x2xf32>
        %277 = arith.andi %true_2, %true_2 : i1
        %278 = vector.broadcast %c32449_i16 : i16 to vector<5xi16>
        %279 = vector.maskedload %alloc_7[%c0, %c0], %51, %278 : memref<2x12xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        %280 = bufferization.to_memref %15 : memref<5x5x12xi64>
        scf.yield %c12 : index
      }
      case 2 {
        memref.store %c268168039_i32, %alloc_11[%c2] : memref<5xi32>
        %267 = vector.insert %c268168039_i32, %52 [1] : i32 into vector<5xi32>
        %268 = arith.addi %c690967306_i64, %c386112241_i64 : i64
        %269 = math.rsqrt %10 : tensor<2x2xf16>
        %270 = index.mul %c15, %c0
        %271 = vector.broadcast %c-7223_i16 : i16 to vector<2x2xi16>
        %272 = vector.broadcast %true : i1 to vector<2x2xi1>
        %273 = vector.broadcast %c268168039_i32 : i32 to vector<2x2xi32>
        %274 = vector.gather %4[%c12, %37, %c4] [%273], %272, %271 : tensor<5x5x12xi16>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi16> into vector<2x2xi16>
        %275 = math.floor %cst : f16
        %276 = math.cos %cst_3 : f32
        %277 = arith.muli %c-7223_i16, %c-3537_i16 : i16
        %278 = arith.maxsi %c690967306_i64, %c690967306_i64 : i64
        %279 = vector.broadcast %cst_4 : f32 to vector<5xf32>
        %280 = vector.fma %279, %279, %279 : vector<5xf32>
        %281 = arith.addf %cst_0, %cst_6 : f32
        %282 = math.tan %10 : tensor<2x2xf16>
        %283 = arith.subi %true, %true : i1
        %284 = math.cttz %true : i1
        %285 = arith.xori %true_2, %true : i1
        scf.yield %c1 : index
      }
      default {
        affine.store %cst_0, %alloc_18[%c2] : memref<5xf32>
        affine.store %22, %alloc_10[%c9, %c6, %c11] : memref<5x5x12xi64>
        %267 = arith.addf %cst_6, %cst_4 : f32
        %268 = arith.muli %c268168039_i32, %c268168039_i32 : i32
        %269 = math.exp %13 : tensor<2x2xf16>
        %270 = vector.broadcast %c690967306_i64 : i64 to vector<1x1xi64>
        %271 = vector.outerproduct %41, %41, %270 {kind = #vector.kind<xor>} : vector<1xi64>, vector<1xi64>
        %272 = vector.broadcast %rank_55 : index to vector<2xindex>
        %273 = vector.broadcast %true_2 : i1 to vector<2xi1>
        %274 = vector.broadcast %cst_5 : f16 to vector<2xf16>
        vector.scatter %alloc_8[%c0, %c3] [%272], %273, %274 : memref<2x12xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
        %275 = arith.shrsi %c690967306_i64, %c386112241_i64 : i64
        %276 = vector.matrix_multiply %19, %41 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<1xi64>) -> vector<5xi64>
        %277 = arith.maxsi %true, %true_2 : i1
        %278 = arith.remui %c-3537_i16, %c11367_i16 : i16
        %279 = arith.xori %c-7223_i16, %c32449_i16 : i16
        %280 = vector.broadcast %cst_4 : f32 to vector<5xf32>
        %281 = vector.multi_reduction <add>, %255, %280 [1, 2] : vector<5x5x12xf32> to vector<5xf32>
        %282 = arith.negf %cst_6 : f32
        %283 = math.atan %cst_6 : f32
        %284 = arith.muli %c386112241_i64, %22 : i64
        scf.yield %27 : index
      }
      %261 = vector.transpose %256, [0, 2, 1] : vector<5x5x12xf32> to vector<5x12x5xf32>
      %262 = vector.load %alloc_17[%c3, %c1, %c4] : memref<5x5x12xi16>, vector<2x12xi16>
      %263 = arith.cmpi uge, %c32449_i16, %c11367_i16 : i16
      %alloc_56 = memref.alloc() : memref<5x5x12xi64>
      memref.copy %alloc_10, %alloc_56 : memref<5x5x12xi64> to memref<5x5x12xi64>
      %264 = math.atan %cst : f16
      %265 = math.cttz %true : i1
      %266 = vector.broadcast %cst_5 : f16 to vector<2x12xf16>
      scf.yield %266 : vector<2x12xf16>
    }
    default {
      %252 = scf.index_switch %c9 -> index 
      case 1 {
        %269 = math.exp %cst_3 : f32
        %270 = index.maxs %rank, %c4
        %271 = index.sub %37, %c13
        memref.tensor_store %15, %alloc_10 : memref<5x5x12xi64>
        %272 = tensor.empty() : tensor<12x2xi16>
        %273 = tensor.empty() : tensor<2x2xi16>
        %274 = linalg.matmul ins(%from_elements, %272 : tensor<2x12xi16>, tensor<12x2xi16>) outs(%273 : tensor<2x2xi16>) -> tensor<2x2xi16>
        %275 = math.fma %10, %10, %10 : tensor<2x2xf16>
        %276 = math.powf %cst_3, %cst_0 : f32
        %277 = math.log1p %10 : tensor<2x2xf16>
        %alloc_58 = memref.alloc() : memref<5x5x12xi32>
        memref.copy %alloc_21, %alloc_58 : memref<5x5x12xi32> to memref<5x5x12xi32>
        %278 = arith.remf %cst_4, %cst_3 : f32
        %279 = vector.gather %3[%c9, %rank] [%52], %51, %19 : tensor<2x2xi64>, vector<5xi32>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %280 = vector.reduction <xor>, %19 : vector<5xi64> into i64
        %281 = math.copysign %13, %10 : tensor<2x2xf16>
        %282 = math.exp %cst : f16
        %283 = bufferization.to_tensor %alloc_10 : memref<5x5x12xi64>
        %284 = math.tan %cst_4 : f32
        scf.yield %c12 : index
      }
      case 2 {
        %269 = arith.shrsi %c690967306_i64, %22 : i64
        %270 = math.expm1 %cst_3 : f32
        %271 = math.ceil %cst_4 : f32
        %272 = arith.negf %cst_3 : f32
        %273 = math.atan %14 : tensor<5x5x12xf32>
        affine.store %c268168039_i32, %alloc_11[%c9] : memref<5xi32>
        %274 = index.mul %c4, %c3
        %275 = index.maxu %27, %c13
        %276 = index.floordivs %37, %c14
        %277 = arith.shrui %c32449_i16, %c32449_i16 : i16
        %278 = vector.shuffle %56, %51 [0, 2, 5, 6, 9, 12, 14, 15] : vector<12xi1>, vector<5xi1>
        %279 = vector.maskedload %alloc_20[%c0, %c0], %60, %51 : memref<2x2xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
        %280 = vector.load %alloc_8[%c0, %c7] : memref<2x12xf16>, vector<2x12xf16>
        %281 = arith.minui %true_2, %true_2 : i1
        %282 = arith.mulf %cst_0, %cst_0 : f32
        vector.print %41 : vector<1xi64>
        scf.yield %c0 : index
      }
      default {
        %269 = memref.atomic_rmw muli %c-3537_i16, %alloc_13[%c0, %c9] : (i16, memref<2x12xi16>) -> i16
        %cast_58 = tensor.cast %11 : tensor<2x12xi16> to tensor<?x?xi16>
        %alloc_59 = memref.alloc() : memref<5xi64>
        memref.tensor_store %7, %alloc_59 : memref<5xi64>
        %270 = math.powf %8, %8 : tensor<5x5x12xf16>
        %271 = vector.broadcast %true : i1 to vector<12x12xi1>
        %272 = vector.outerproduct %56, %56, %271 {kind = #vector.kind<and>} : vector<12xi1>, vector<12xi1>
        affine.store %cst_0, %alloc_18[%c5] : memref<5xf32>
        %273 = arith.shrsi %c268168039_i32, %c268168039_i32 : i32
        %274 = arith.addf %cst_5, %cst_5 : f16
        affine.store %cst_5, %alloc_9[%c1, %c4] : memref<2x2xf16>
        %275 = affine.min affine_map<(d0, d1, d2) -> (d0 * -1016, d0 * -1016, (d0 - d1 ceildiv 2 + 2) floordiv 64)>(%rank, %c8, %c1)
        %276 = vector.matrix_multiply %52, %52 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi32>, vector<5xi32>) -> vector<1xi32>
        %277 = math.roundeven %10 : tensor<2x2xf16>
        %278 = arith.maxui %true_2, %true_2 : i1
        %rank_60 = tensor.rank %17 : tensor<2x12xi1>
        %cast_61 = tensor.cast %14 : tensor<5x5x12xf32> to tensor<?x?x?xf32>
        %279 = memref.atomic_rmw mulf %cst_5, %alloc_9[%c0, %c1] : (f16, memref<2x2xf16>) -> f16
        scf.yield %c10 : index
      }
      %rank_55 = tensor.rank %16 : tensor<2x12xi1>
      %253 = vector.broadcast %c386112241_i64 : i64 to vector<2x2xi64>
      %254 = vector.broadcast %c386112241_i64 : i64 to vector<2xi64>
      %dest_56, %accumulated_value_57 = vector.scan <add>, %253, %254 {inclusive = true, reduction_dim = 1 : i64} : vector<2x2xi64>, vector<2xi64>
      %255 = vector.splat %c5 : vector<2x12xindex>
      %256 = arith.muli %c-7223_i16, %c-3537_i16 : i16
      %257 = math.exp %cst_3 : f32
      %258 = math.exp %cst_5 : f16
      %259 = vector.broadcast %cst_4 : f32 to vector<5x5x12xf32>
      %260 = vector.fma %259, %259, %259 : vector<5x5x12xf32>
      %261 = arith.ceildivsi %c-7223_i16, %c-3537_i16 : i16
      %262 = arith.addf %cst_5, %cst : f16
      %263 = vector.matrix_multiply %56, %60 {lhs_columns = 1 : i32, lhs_rows = 12 : i32, rhs_columns = 5 : i32} : (vector<12xi1>, vector<5xi1>) -> vector<60xi1>
      %264 = math.sqrt %cst_6 : f32
      %265 = math.absi %from_elements : tensor<2x12xi16>
      %266 = math.exp2 %13 : tensor<2x2xf16>
      memref.alloca_scope  {
        %269 = arith.maxsi %c32449_i16, %c-3537_i16 : i16
        %270 = arith.remf %cst_4, %cst_3 : f32
        %271 = vector.extract %41[0] : vector<1xi64>
        %272 = index.castu %c15 : index to i32
        %273 = affine.load %alloc_14[%c0, %c8] : memref<2x2xi32>
        %274 = math.fma %8, %8, %8 : tensor<5x5x12xf16>
        %275 = math.roundeven %cst_0 : f32
        %276 = math.rsqrt %cst_6 : f32
        %277 = arith.remui %c386112241_i64, %22 : i64
        %278 = index.maxu %c10, %c14
        %279 = arith.addi %c-3537_i16, %c-3537_i16 : i16
        %280 = vector.broadcast %c386112241_i64 : i64 to vector<5x5xi64>
        %281 = vector.outerproduct %19, %19, %280 {kind = #vector.kind<maxui>} : vector<5xi64>, vector<5xi64>
        %282 = vector.broadcast %c4 : index to vector<12xindex>
        %283 = vector.broadcast %c690967306_i64 : i64 to vector<12xi64>
        vector.scatter %alloc_10[%c2, %c0, %c1] [%282], %56, %283 : memref<5x5x12xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
        %284 = vector.broadcast %22 : i64 to vector<2xi64>
        %285 = vector.broadcast %true : i1 to vector<2xi1>
        %286 = vector.maskedload %alloc_10[%c3, %c0, %c7], %285, %284 : memref<5x5x12xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %287 = arith.negf %cst_0 : f32
        %288 = index.castu %rank : index to i32
        %289 = math.absi %3 : tensor<2x2xi64>
        %290 = index.ceildivs %c4, %rank_55
        %291 = memref.load %alloc_21[%c1, %c0, %c11] : memref<5x5x12xi32>
        %292 = arith.andi %273, %c268168039_i32 : i32
        %293 = vector.broadcast %cst_4 : f32 to vector<5xf32>
        %294 = vector.maskedload %alloc_18[%c2], %60, %293 : memref<5xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        %295 = affine.load %alloc_21[%c9, %c4, %c10] : memref<5x5x12xi32>
        %296 = arith.floordivsi %c11367_i16, %c32449_i16 : i16
        %297 = arith.minsi %c268168039_i32, %c268168039_i32 : i32
        %collapsed_58 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<5x5x12xf32> into tensor<25x12xf32>
        %298 = math.log1p %13 : tensor<2x2xf16>
        %299 = math.exp2 %8 : tensor<5x5x12xf16>
        %300 = math.cos %cst_6 : f32
        affine.store %cst_4, %alloc_19[%c3, %c3] : memref<2x2xf32>
        %301 = vector.broadcast %cst_6 : f32 to vector<5x12xf32>
        %dest_59, %accumulated_value_60 = vector.scan <minf>, %260, %301 {inclusive = false, reduction_dim = 1 : i64} : vector<5x5x12xf32>, vector<5x12xf32>
        %302 = math.ipowi %9, %9 : tensor<5x5x12xi1>
        %303 = index.castu %c11 : index to i32
      }
      %267 = math.cttz %9 : tensor<5x5x12xi1>
      %268 = vector.broadcast %cst_5 : f16 to vector<2x12xf16>
      scf.yield %268 : vector<2x12xf16>
    }
    %67 = math.copysign %8, %8 : tensor<5x5x12xf16>
    %68 = math.absi %true_2 : i1
    %69 = math.fma %13, %13, %10 : tensor<2x2xf16>
    %70 = index.mul %rank, %c4
    %71 = tensor.empty() : tensor<2x12xi1>
    %72 = linalg.matmul ins(%31, %16 : tensor<2x2xi1>, tensor<2x12xi1>) outs(%71 : tensor<2x12xi1>) -> tensor<2x12xi1>
    %73 = vector.shuffle %41, %41 [0] : vector<1xi64>, vector<1xi64>
    %74 = arith.minf %cst_6, %cst_0 : f32
    %75 = math.absi %c386112241_i64 : i64
    %76 = affine.load %alloc_20[%c4, %c2] : memref<2x2xi1>
    %77 = scf.execute_region -> memref<2x12xi32> {
      %alloca_55 = memref.alloca() : memref<5x5x12xi64>
      %252 = vector.broadcast %cst_3 : f32 to vector<2x12xf32>
      %cast_56 = tensor.cast %21 : tensor<i32> to tensor<i32>
      %dest_57, %accumulated_value_58 = vector.scan <maxf>, %252, %57 {inclusive = true, reduction_dim = 0 : i64} : vector<2x12xf32>, vector<12xf32>
      %253 = math.fma %10, %10, %10 : tensor<2x2xf16>
      %254 = arith.maxf %cst, %cst_1 : f16
      %255 = arith.ceildivsi %c-3537_i16, %c11367_i16 : i16
      %cast_59 = tensor.cast %71 : tensor<2x12xi1> to tensor<?x?xi1>
      %256 = arith.subi %22, %c690967306_i64 : i64
      %257 = arith.xori %c32449_i16, %c-7223_i16 : i16
      %258 = scf.execute_region -> f16 {
        %263 = math.ctpop %15 : tensor<5x5x12xi64>
        %264 = vector.multi_reduction <and>, %56, %56 [] : vector<12xi1> to vector<12xi1>
        %265 = arith.cmpf true, %cst, %cst : f16
        %266 = math.atan %13 : tensor<2x2xf16>
        %267 = index.maxu %c8, %27
        %268 = vector.broadcast %c268168039_i32 : i32 to vector<i32>
        %269 = vector.transfer_write %268, %0[%c5, %c14, %rank] : vector<i32>, tensor<5x5x12xi32>
        affine.store %c268168039_i32, %alloc_14[%c3, %c3] : memref<2x2xi32>
        %270 = vector.splat %c2 : vector<2x2xindex>
        %271 = math.log1p %cst_6 : f32
        %272 = arith.mulf %cst_5, %cst_5 : f16
        %273 = vector.broadcast %c9 : index to vector<12xindex>
        %274 = vector.broadcast %c268168039_i32 : i32 to vector<12xi32>
        vector.scatter %alloc_21[%c0, %c1, %c7] [%273], %56, %274 : memref<5x5x12xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
        %275 = index.maxu %c8, %c9
        %alloca_61 = memref.alloca() : memref<5xf32>
        %276 = arith.divsi %c11367_i16, %c11367_i16 : i16
        %277 = arith.minui %c-3537_i16, %c-3537_i16 : i16
        %278 = vector.transpose %268, [] : vector<i32> to vector<i32>
        scf.yield %cst : f16
      }
      %259 = index.sizeof
      %260 = math.cttz %4 : tensor<5x5x12xi16>
      %261 = memref.atomic_rmw minu %c268168039_i32, %alloc_11[%c2] : (i32, memref<5xi32>) -> i32
      %262 = arith.addf %cst_5, %258 : f16
      affine.store %22, %alloc_10[%c9, %c13, %c6] : memref<5x5x12xi64>
      %alloc_60 = memref.alloc() : memref<2x12xi32>
      scf.yield %alloc_60 : memref<2x12xi32>
    }
    %78 = arith.shrsi %c-3537_i16, %c32449_i16 : i16
    %79 = vector.matrix_multiply %57, %57 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
    %80 = vector.flat_transpose %51 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
    %81 = math.ceil %14 : tensor<5x5x12xf32>
    %82 = math.absi %7 : tensor<5xi64>
    %83 = arith.xori %c-7223_i16, %c-7223_i16 : i16
    %84 = vector.multi_reduction <mul>, %79, %cst_4 [0] : vector<1xf32> to f32
    %85 = index.mul %c0, %c7
    %86 = math.absi %1 : tensor<2x12xi16>
    %87 = index.add %c14, %c7
    %88 = bufferization.clone %alloc_13 : memref<2x12xi16> to memref<2x12xi16>
    scf.index_switch %37 
    case 1 {
      %252 = index.sub %c8, %c14
      vector.print %52 : vector<5xi32>
      %rank_55 = tensor.rank %18 : tensor<12x5x5xi64>
      %253 = math.tan %13 : tensor<2x2xf16>
      %254 = memref.realloc %alloc_11 : memref<5xi32> to memref<2xi32>
      %255 = index.maxu %87, %c4
      %256 = vector.broadcast %cst_6 : f32 to vector<12x5xf32>
      %dest_56, %accumulated_value_57 = vector.scan <minf>, %256, %55 {inclusive = false, reduction_dim = 1 : i64} : vector<12x5xf32>, vector<12xf32>
      %257 = math.atan %8 : tensor<5x5x12xf16>
      %258 = arith.addf %cst_3, %cst_6 : f32
      %259 = math.round %cst_0 : f32
      %splat = tensor.splat %cst_1 : tensor<5x5x12xf16>
      %260 = tensor.empty(%rank, %c3) : tensor<?x?xi64>
      %261 = math.sqrt %8 : tensor<5x5x12xf16>
      %262 = vector.broadcast %c9 : index to vector<2xindex>
      %263 = vector.broadcast %true_2 : i1 to vector<2xi1>
      vector.scatter %35[%c1, %c0] [%262], %263, %263 : memref<2x2xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
      %264 = arith.shli %c32449_i16, %c32449_i16 : i16
      %265 = affine.for %arg1 = 0 to 60 iter_args(%arg2 = %22) -> (i64) {
        affine.yield %c386112241_i64 : i64
      }
      scf.yield
    }
    case 2 {
      %252 = vector.broadcast %22 : i64 to vector<5x2xi64>
      vector.transfer_write %252, %alloc_10[%c13, %c7, %c5] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<5x2xi64>, memref<5x5x12xi64>
      %253 = arith.maxsi %76, %true : i1
      %254 = arith.shli %true_2, %76 : i1
      %255 = vector.shuffle %51, %51 [3, 4, 7, 8, 9] : vector<5xi1>, vector<5xi1>
      %256 = arith.divui %c-7223_i16, %c-7223_i16 : i16
      %257 = arith.maxf %cst_1, %cst_1 : f16
      %258 = arith.minui %true_2, %true : i1
      %259 = math.absi %0 : tensor<5x5x12xi32>
      %260 = arith.shrsi %true, %76 : i1
      %261 = bufferization.to_tensor %alloc_18 : memref<5xf32>
      %alloc_55 = memref.alloc() : memref<5x5x12xi64>
      scf.execute_region {
        %264 = vector.multi_reduction <and>, %252, %19 [1] : vector<5x2xi64> to vector<5xi64>
        %265 = math.exp2 %8 : tensor<5x5x12xf16>
        %266 = arith.remf %cst_4, %84 : f32
        %267 = math.ctlz %c-7223_i16 : i16
        %268 = arith.shrsi %true, %true_2 : i1
        %269 = index.mul %c2, %c7
        %270 = arith.minui %c-7223_i16, %c11367_i16 : i16
        %271 = tensor.empty() : tensor<2x2xf16>
        %272 = linalg.matmul ins(%10, %13 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%271 : tensor<2x2xf16>) -> tensor<2x2xf16>
        %cast_57 = tensor.cast %12 : tensor<2x12xi1> to tensor<?x?xi1>
        %273 = arith.shrsi %76, %true_2 : i1
        vector.print %80 : vector<5xi1>
        %274 = arith.maxsi %c-7223_i16, %c11367_i16 : i16
        %275 = arith.ceildivsi %c386112241_i64, %c386112241_i64 : i64
        %true_58 = index.bool.constant true
        %276 = index.maxu %c7, %c14
        %277 = vector.broadcast %22 : i64 to vector<i64>
        %278 = vector.transfer_write %277, %transposed[%87, %c14, %c7] : vector<i64>, tensor<12x5x5xi64>
        scf.yield
      }
      %262 = arith.minf %cst_5, %cst : f16
      %263 = math.cttz %5 : tensor<2x2xi32>
      memref.assume_alignment %alloc_8, 1 : memref<2x12xf16>
      %cast_56 = tensor.cast %9 : tensor<5x5x12xi1> to tensor<?x?x?xi1>
      scf.yield
    }
    default {
      %alloca_55 = memref.alloca() : memref<5x5x12xi32>
      %252 = tensor.empty() : tensor<2x2xi32>
      %253 = linalg.matmul ins(%5, %5 : tensor<2x2xi32>, tensor<2x2xi32>) outs(%252 : tensor<2x2xi32>) -> tensor<2x2xi32>
      %254 = math.log1p %10 : tensor<2x2xf16>
      %255 = math.round %cst_0 : f32
      %256 = vector.broadcast %true_2 : i1 to vector<i1>
      %257 = vector.transfer_write %256, %9[%c8, %c13, %c10] : vector<i1>, tensor<5x5x12xi1>
      %258 = math.tan %13 : tensor<2x2xf16>
      %259 = vector.insert %c386112241_i64, %41 [0] : i64 into vector<1xi64>
      %260 = vector.broadcast %rank : index to vector<2xindex>
      %261 = vector.broadcast %true : i1 to vector<2xi1>
      %262 = vector.broadcast %c268168039_i32 : i32 to vector<2xi32>
      vector.scatter %alloc_21[%c2, %c3, %c2] [%260], %261, %262 : memref<5x5x12xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
      %263 = math.absi %transposed : tensor<12x5x5xi64>
      %264 = affine.for %arg1 = 0 to 25 iter_args(%arg2 = %c9) -> (index) {
        affine.yield %c15 : index
      }
      %265 = affine.min affine_map<(d0) -> ((d0 mod 4 - d0 mod 8 + 97) floordiv 8, d0 mod 8 + d0 mod 4 - d0 mod 8 + 128)>(%c0)
      %266 = arith.negf %84 : f32
      %267 = arith.muli %c268168039_i32, %c268168039_i32 : i32
      %268 = index.add %c9, %265
      %269 = arith.addi %c690967306_i64, %c690967306_i64 : i64
      %270 = arith.shrui %true, %true : i1
    }
    %89 = math.round %8 : tensor<5x5x12xf16>
    %90 = math.ceil %cst_0 : f32
    %91 = vector.matrix_multiply %51, %56 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 12 : i32} : (vector<5xi1>, vector<12xi1>) -> vector<60xi1>
    affine.store %cst, %alloc_22[%c6] : memref<5xf16>
    %92 = bufferization.clone %alloc_23 : memref<5xi32> to memref<5xi32>
    %93 = math.cttz %0 : tensor<5x5x12xi32>
    %94 = math.exp2 %cst : f16
    %95 = arith.maxsi %c-7223_i16, %c32449_i16 : i16
    %96 = tensor.empty() : tensor<5xf16>
    %97 = vector.shuffle %60, %51 [0, 2, 4, 7, 8, 9] : vector<5xi1>, vector<5xi1>
    %98 = index.mul %c1, %c0
    %99 = math.ctpop %16 : tensor<2x12xi1>
    %100 = arith.addi %c-3537_i16, %c11367_i16 : i16
    %101 = vector.multi_reduction <mul>, %41, %41 [] : vector<1xi64> to vector<1xi64>
    %102 = math.cttz %c690967306_i64 : i64
    %103 = scf.execute_region -> tensor<2x2xf16> {
      %252 = vector.broadcast %98 : index to vector<5xindex>
      vector.scatter %alloc_23[%c1] [%252], %80, %50 : memref<5xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
      %253 = math.atan2 %14, %14 : tensor<5x5x12xf32>
      %254 = memref.alloca_scope  -> (memref<2x2xi16>) {
        %268 = arith.shli %c268168039_i32, %c268168039_i32 : i32
        %269 = memref.load %alloc_18[%c4] : memref<5xf32>
        %270 = vector.reduction <add>, %57 : vector<12xf32> into f32
        %collapsed_57 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<5x5x12xf32> into tensor<25x12xf32>
        %271 = math.powf %14, %14 : tensor<5x5x12xf32>
        %alloc_58 = memref.alloc() : memref<5x5x12xi1>
        memref.tensor_store %9, %alloc_58 : memref<5x5x12xi1>
        %272 = arith.remf %cst_4, %cst_3 : f32
        %273 = memref.atomic_rmw muli %c268168039_i32, %alloc_23[%c1] : (i32, memref<5xi32>) -> i32
        %274 = arith.remf %cst_6, %cst_3 : f32
        %alloc_59 = memref.alloc() : memref<2x12xi32>
        memref.copy %77, %alloc_59 : memref<2x12xi32> to memref<2x12xi32>
        memref.store %c268168039_i32, %77[%c0, %c2] : memref<2x12xi32>
        %275 = math.fma %8, %8, %8 : tensor<5x5x12xf16>
        %276 = bufferization.to_tensor %alloc_7 : memref<2x12xi16>
        %277 = vector.broadcast %c386112241_i64 : i64 to vector<5x5xi64>
        %278 = vector.outerproduct %19, %19, %277 {kind = #vector.kind<maxui>} : vector<5xi64>, vector<5xi64>
        %279 = arith.maxsi %22, %c386112241_i64 : i64
        %280 = math.roundeven %10 : tensor<2x2xf16>
        %collapsed_60 = tensor.collapse_shape %13 [[0, 1]] : tensor<2x2xf16> into tensor<4xf16>
        %281 = arith.minui %c-3537_i16, %c32449_i16 : i16
        %282 = arith.muli %c32449_i16, %c-7223_i16 : i16
        %283 = index.divu %27, %70
        %alloc_61 = memref.alloc() : memref<12x2xi16>
        %284 = tensor.empty() : tensor<2x2xi16>
        %285 = linalg.matmul ins(%276, %alloc_61 : tensor<2x12xi16>, memref<12x2xi16>) outs(%284 : tensor<2x2xi16>) -> tensor<2x2xi16>
        %286 = vector.broadcast %c268168039_i32 : i32 to vector<5x5xi32>
        %287 = vector.outerproduct %52, %50, %286 {kind = #vector.kind<add>} : vector<5xi32>, vector<5xi32>
        vector.print %57 : vector<12xf32>
        %288 = index.sub %85, %c4
        %289 = memref.load %92[%c4] : memref<5xi32>
        %290 = math.cttz %276 : tensor<2x12xi16>
        %291 = vector.broadcast %288 : index to vector<12xindex>
        %292 = vector.broadcast %cst_1 : f16 to vector<12xf16>
        vector.scatter %alloc_8[%c1, %c8] [%291], %56, %292 : memref<2x12xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
        %293 = vector.broadcast %84 : f32 to vector<2x12xf32>
        %294 = vector.broadcast %true_2 : i1 to vector<2x12xi1>
        %295 = vector.broadcast %c268168039_i32 : i32 to vector<2x12xi32>
        %296 = vector.gather %14[%c14, %c7, %rank] [%295], %294, %293 : tensor<5x5x12xf32>, vector<2x12xi32>, vector<2x12xi1>, vector<2x12xf32> into vector<2x12xf32>
        %297 = index.floordivs %c0, %c0
        %298 = math.exp %13 : tensor<2x2xf16>
        %299 = vector.reduction <add>, %51 : vector<5xi1> into i1
        %300 = math.tan %10 : tensor<2x2xf16>
        %alloc_62 = memref.alloc() : memref<2x2xi16>
        memref.alloca_scope.return %alloc_62 : memref<2x2xi16>
      }
      %255 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<5x5x12xi16>) {
      ^bb0(%out: i16):
        %268 = vector.broadcast %22 : i64 to vector<2x5x5xi64>
        %269 = vector.broadcast %c386112241_i64 : i64 to vector<5x5xi64>
        %dest_57, %accumulated_value_58 = vector.scan <maxui>, %268, %269 {inclusive = false, reduction_dim = 0 : i64} : vector<2x5x5xi64>, vector<5x5xi64>
        %270 = arith.addf %84, %cst_0 : f32
        %271 = arith.divui %76, %true : i1
        %272 = arith.subi %22, %22 : i64
        %false_59 = index.bool.constant false
        %273 = arith.divsi %true_2, %false_59 : i1
        %274 = bufferization.to_memref %0 : memref<5x5x12xi32>
        %275 = math.expm1 %cst_1 : f16
        %276 = vector.broadcast %98 : index to vector<2xindex>
        %277 = vector.broadcast %false_59 : i1 to vector<2xi1>
        vector.scatter %35[%c1, %c1] [%276], %277, %277 : memref<2x2xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
        %278 = arith.andi %76, %true_2 : i1
        %279 = math.exp %14 : tensor<5x5x12xf32>
        %280 = math.ipowi %0, %0 : tensor<5x5x12xi32>
        %281 = vector.broadcast %true : i1 to vector<5x5x12xi1>
        %282 = vector.broadcast %c690967306_i64 : i64 to vector<5x5xi64>
        %283 = vector.outerproduct %19, %19, %282 {kind = #vector.kind<xor>} : vector<5xi64>, vector<5xi64>
        %284 = arith.muli %c32449_i16, %c32449_i16 : i16
        %285 = math.atan %cst_6 : f32
        %286 = arith.shrui %c32449_i16, %c-3537_i16 : i16
        %287 = math.copysign %10, %13 : tensor<2x2xf16>
        %288 = vector.multi_reduction <maxsi>, %19, %19 [] : vector<5xi64> to vector<5xi64>
        %289 = arith.shli %true, %true_2 : i1
        %cast_60 = tensor.cast %20 : tensor<i32> to tensor<i32>
        %290 = math.ctlz %11 : tensor<2x12xi16>
        %291 = index.maxu %c15, %c1
        %292 = arith.mulf %cst_5, %cst_5 : f16
        %293 = math.powf %13, %13 : tensor<2x2xf16>
        %294 = vector.matrix_multiply %91, %51 {lhs_columns = 5 : i32, lhs_rows = 12 : i32, rhs_columns = 1 : i32} : (vector<60xi1>, vector<5xi1>) -> vector<12xi1>
        %295 = math.absf %cst_3 : f32
        %296 = bufferization.to_tensor %77 : memref<2x12xi32>
        %297 = index.castu %c32449_i16 : i16 to index
        %298 = arith.minui %c386112241_i64, %c690967306_i64 : i64
        %299 = vector.broadcast %c268168039_i32 : i32 to vector<i32>
        vector.transfer_write %299, %274[%c5, %c7, %c11] : vector<i32>, memref<5x5x12xi32>
        %300 = math.powf %84, %cst_0 : f32
        linalg.yield %c-7223_i16 : i16
      } -> tensor<5x5x12xi16>
      %256 = vector.create_mask %c4, %98 : vector<2x2xi1>
      %257 = vector.transpose %57, [0] : vector<12xf32> to vector<12xf32>
      %258 = vector.reduction <maxui>, %91 : vector<60xi1> into i1
      %259 = affine.min affine_map<(d0) -> (d0, d0 * 128 - (d0 mod 32 + 16))>(%c3)
      %260 = bufferization.to_tensor %alloc_17 : memref<5x5x12xi16>
      %261 = vector.shuffle %60, %60 [0, 2, 5, 9] : vector<5xi1>, vector<5xi1>
      %262 = math.absi %c690967306_i64 : i64
      %263 = arith.negf %cst_6 : f32
      %264 = bufferization.to_memref %96 : memref<5xf16>
      %265 = math.atan %8 : tensor<5x5x12xf16>
      %266 = vector.insert %cst_0, %57 [9] : f32 into vector<12xf32>
      %267 = vector.broadcast %true_2 : i1 to vector<2xi1>
      %dest_55, %accumulated_value_56 = vector.scan <or>, %256, %267 {inclusive = false, reduction_dim = 1 : i64} : vector<2x2xi1>, vector<2xi1>
      scf.yield %13 : tensor<2x2xf16>
    }
    scf.if %true {
      %252 = vector.broadcast %cst_4 : f32 to vector<5xf32>
      %253 = vector.gather %alloc[%c12, %c15] [%52], %51, %252 : memref<2x2xf32>, vector<5xi32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
      memref.copy %35, %alloc_20 : memref<2x2xi1> to memref<2x2xi1>
      %254 = affine.min affine_map<(d0, d1) -> ((d1 + d0 + d1) * 128, (d1 - d0) floordiv 4 - d1, (d1 - d0) floordiv 4 - d1, d0 + 128)>(%c10, %c3)
      %255 = math.sqrt %13 : tensor<2x2xf16>
      %256 = bufferization.to_tensor %alloc_13 : memref<2x12xi16>
      %257 = math.ceil %cst_4 : f32
      %258 = vector.multi_reduction <mul>, %51, %80 [] : vector<5xi1> to vector<5xi1>
      %259 = memref.atomic_rmw mins %c268168039_i32, %alloc_21[%c2, %c3, %c4] : (i32, memref<5x5x12xi32>) -> i32
    }
    %inserted = tensor.insert %true into %17[%c0, %c10] : tensor<2x12xi1>
    %104 = index.add %c11, %85
    %105 = math.rsqrt %14 : tensor<5x5x12xf32>
    %106 = math.tan %8 : tensor<5x5x12xf16>
    %107 = memref.atomic_rmw assign %cst, %alloc_9[%c1, %c0] : (f16, memref<2x2xf16>) -> f16
    %108 = arith.remf %cst_6, %84 : f32
    %109 = arith.maxf %cst, %cst_1 : f16
    %alloca_28 = memref.alloca() : memref<2x2xi32>
    %110 = math.rsqrt %14 : tensor<5x5x12xf32>
    %111 = math.ctlz %31 : tensor<2x2xi1>
    %112 = math.atan2 %84, %84 : f32
    %113 = index.sub %c1, %87
    %114 = math.expm1 %8 : tensor<5x5x12xf16>
    affine.store %c268168039_i32, %alloc_23[%c6] : memref<5xi32>
    %115 = math.atan2 %14, %14 : tensor<5x5x12xf32>
    %116 = arith.shli %c32449_i16, %c-3537_i16 : i16
    memref.store %cst_3, %alloc[%c1, %c0] : memref<2x2xf32>
    %117 = math.log1p %cst_3 : f32
    %rank_29 = tensor.rank %6 : tensor<5xi1>
    %118 = memref.load %alloc_22[%c3] : memref<5xf16>
    %119 = math.sqrt %cst_5 : f16
    %inserted_30 = tensor.insert %76 into %6[%c3] : tensor<5xi1>
    %120 = memref.atomic_rmw muli %c268168039_i32, %alloc_21[%c1, %c1, %c11] : (i32, memref<5x5x12xi32>) -> i32
    %false = index.bool.constant false
    %121 = math.atan2 %cst_4, %cst_6 : f32
    %122 = math.round %96 : tensor<5xf16>
    %123 = math.ceil %96 : tensor<5xf16>
    %124 = vector.broadcast %cst_6 : f32 to vector<2x2xf32>
    %125 = vector.broadcast %84 : f32 to vector<2xf32>
    %dest, %accumulated_value = vector.scan <maxf>, %124, %125 {inclusive = false, reduction_dim = 0 : i64} : vector<2x2xf32>, vector<2xf32>
    %126 = index.sizeof
    %127 = bufferization.to_tensor %alloc : memref<2x2xf32>
    %128 = vector.shuffle %41, %41 [0] : vector<1xi64>, vector<1xi64>
    %129 = index.maxu %c13, %c3
    %generated = tensor.generate %c0, %c7 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %252 = arith.remsi %22, %c386112241_i64 : i64
      %253 = arith.maxui %c-7223_i16, %c11367_i16 : i16
      %254 = bufferization.clone %alloc_9 : memref<2x2xf16> to memref<2x2xf16>
      %255 = affine.for %arg4 = 0 to 59 iter_args(%arg5 = %55) -> (vector<12xf32>) {
        affine.yield %55 : vector<12xf32>
      }
      tensor.yield %22 : i64
    } : tensor<?x?x12xi64>
    %130 = arith.maxf %84, %cst_4 : f32
    %131 = math.cttz %21 : tensor<i32>
    %132 = scf.while (%arg1 = %c386112241_i64) : (i64) -> i64 {
      %252 = vector.insertelement %22, %19[%c9 : index] : vector<5xi64>
      memref.assume_alignment %alloc_14, 1 : memref<2x2xi32>
      %253 = arith.addi %c-7223_i16, %c-3537_i16 : i16
      %254 = arith.maxf %cst_6, %cst_0 : f32
      %255 = arith.negf %cst_4 : f32
      %256 = math.absi %c268168039_i32 : i32
      %257 = vector.broadcast %cst_6 : f32 to vector<2x2xf32>
      %258 = vector.fma %257, %257, %257 : vector<2x2xf32>
      %259 = math.log2 %103 : tensor<2x2xf16>
      scf.condition(%false) %c690967306_i64 : i64
    } do {
    ^bb0(%arg1: i64):
      %252 = math.absf %cst_3 : f32
      %253 = arith.maxui %false, %true_2 : i1
      %inserted_55 = tensor.insert %cst into %10[%c0, %c1] : tensor<2x2xf16>
      %cst_56 = arith.constant 4.992000e+04 : f16
      %254 = memref.realloc %alloc_23 : memref<5xi32> to memref<5xi32>
      %255 = arith.addf %cst_0, %cst_4 : f32
      %256 = vector.broadcast %true_2 : i1 to vector<12x5xi1>
      %dest_57, %accumulated_value_58 = vector.scan <or>, %256, %56 {inclusive = true, reduction_dim = 1 : i64} : vector<12x5xi1>, vector<12xi1>
      %extracted = tensor.extract %8[%c2, %c4, %c11] : tensor<5x5x12xf16>
      %257 = index.castu %c11367_i16 : i16 to index
      %alloc_59 = memref.alloc() : memref<5xi1>
      %258 = vector.broadcast %true : i1 to vector<5x5x12xi1>
      %259 = vector.broadcast %c268168039_i32 : i32 to vector<5x5x12xi32>
      %260 = vector.gather %alloc_59[%c12] [%259], %258, %258 : memref<5xi1>, vector<5x5x12xi32>, vector<5x5x12xi1>, vector<5x5x12xi1> into vector<5x5x12xi1>
      %261 = arith.negf %cst_0 : f32
      %262 = arith.addi %c11367_i16, %c11367_i16 : i16
      memref.assume_alignment %alloc_22, 4 : memref<5xf16>
      %generated_60 = tensor.generate %c1, %129, %rank_29 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %264 = math.atan %13 : tensor<2x2xf16>
        %265 = math.tan %84 : f32
        %266 = arith.ceildivsi %c-3537_i16, %c-7223_i16 : i16
        %267 = vector.broadcast %87 : index to vector<12xindex>
        %268 = vector.broadcast %c268168039_i32 : i32 to vector<12xi32>
        vector.scatter %alloc_14[%c1, %c0] [%267], %56, %268 : memref<2x2xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
        tensor.yield %true_2 : i1
      } : tensor<?x?x?xi1>
      memref.assume_alignment %92, 1 : memref<5xi32>
      %263 = bufferization.to_tensor %alloc_59 : memref<5xi1>
      scf.yield %c690967306_i64 : i64
    }
    %133 = vector.broadcast %85 : index to vector<5xindex>
    %134 = vector.broadcast %cst_4 : f32 to vector<5xf32>
    vector.scatter %alloc_18[%c4] [%133], %51, %134 : memref<5xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
    %135 = arith.cmpi ule, %c11367_i16, %c-3537_i16 : i16
    %136 = math.ipowi %true_2, %false : i1
    %137 = arith.andi %c-7223_i16, %c32449_i16 : i16
    %138 = bufferization.to_memref %generated : memref<?x?x12xi64>
    %139 = arith.ceildivsi %c386112241_i64, %22 : i64
    %140 = arith.addf %84, %cst_6 : f32
    %141 = affine.load %alloc_14[%c13, %c5] : memref<2x2xi32>
    %142 = math.absf %127 : tensor<2x2xf32>
    %143 = arith.remf %cst_1, %cst_1 : f16
    %144 = math.exp %103 : tensor<2x2xf16>
    vector.print %57 : vector<12xf32>
    %145 = math.absi %31 : tensor<2x2xi1>
    %146 = math.exp %cst : f16
    %147 = index.mul %c11, %37
    %alloca_31 = memref.alloca() : memref<5x5x12xi64>
    %148 = bufferization.to_memref %21 : memref<i32>
    %149 = index.mul %c0, %c4
    %150 = math.exp %10 : tensor<2x2xf16>
    memref.alloca_scope  {
      %252 = math.expm1 %cst_0 : f32
      %253 = math.log2 %84 : f32
      %254 = arith.andi %c386112241_i64, %22 : i64
      bufferization.dealloc_tensor %15 : tensor<5x5x12xi64>
      memref.assume_alignment %alloc_19, 16 : memref<2x2xf32>
      %255 = arith.muli %c11367_i16, %c11367_i16 : i16
      %true_55 = index.bool.constant true
      %256 = math.fma %10, %13, %10 : tensor<2x2xf16>
      %257 = math.expm1 %cst_0 : f32
      %258 = arith.maxui %c-7223_i16, %c-7223_i16 : i16
      %259 = index.divs %113, %126
      %260 = index.sizeof
      memref.store %cst_3, %alloc_18[%c1] : memref<5xf32>
      %261 = vector.broadcast %84 : f32 to vector<5x5x12xf32>
      %262 = vector.broadcast %true : i1 to vector<5x5x12xi1>
      %263 = vector.broadcast %c268168039_i32 : i32 to vector<5x5x12xi32>
      %264 = vector.gather %127[%129, %c8] [%263], %262, %261 : tensor<2x2xf32>, vector<5x5x12xi32>, vector<5x5x12xi1>, vector<5x5x12xf32> into vector<5x5x12xf32>
      %265 = math.expm1 %84 : f32
      %266 = affine.max affine_map<(d0) -> ((d0 * 16 + 4) * 4)>(%c9)
      %267 = arith.remf %cst, %cst_5 : f16
      %268 = math.fma %14, %14, %14 : tensor<5x5x12xf32>
      %269 = vector.shuffle %262, %262 [1, 2, 4, 5, 7] : vector<5x5x12xi1>, vector<5x5x12xi1>
      %270 = math.cos %10 : tensor<2x2xf16>
      %271 = affine.apply affine_map<(d0, d1) -> ((d0 * 2 - 8) floordiv 32)>(%rank_29, %c9)
      %alloca_56 = memref.alloca() : memref<5xf16>
      %272 = vector.broadcast %147 : index to vector<2xindex>
      %273 = vector.broadcast %true_55 : i1 to vector<2xi1>
      %274 = vector.broadcast %cst_6 : f32 to vector<2xf32>
      vector.scatter %alloc_12[%c3, %c0, %c2] [%272], %273, %274 : memref<5x5x12xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
      %false_57 = index.bool.constant false
      %275 = memref.atomic_rmw mulf %cst_6, %alloc[%c0, %c1] : (f32, memref<2x2xf32>) -> f32
      %276 = scf.if %false -> (i64) {
        %280 = math.cos %96 : tensor<5xf16>
        %281 = math.atan2 %cst_5, %cst : f16
        %alloca_60 = memref.alloca() : memref<2x12xi32>
        %cast_61 = tensor.cast %3 : tensor<2x2xi64> to tensor<?x?xi64>
        %282 = index.mul %37, %98
        %alloc_62 = memref.alloc() : memref<5xf32>
        memref.copy %alloc_18, %alloc_62 : memref<5xf32> to memref<5xf32>
        %283 = math.cttz %16 : tensor<2x12xi1>
        memref.assume_alignment %alloc_8, 1 : memref<2x12xf16>
        scf.yield %c386112241_i64 : i64
      } else {
        %280 = math.atan %127 : tensor<2x2xf32>
        %281 = vector.multi_reduction <minsi>, %19, %c690967306_i64 [0] : vector<5xi64> to i64
        %282 = arith.shrsi %true_2, %true : i1
        %true_60 = index.bool.constant true
        %alloc_61 = memref.alloc() : memref<2x12xi64>
        %283 = vector.gather %alloc_61[%260, %147] [%52], %60, %19 : memref<2x12xi64>, vector<5xi32>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %284 = math.ceil %84 : f32
        %false_62 = index.bool.constant false
        %alloca_63 = memref.alloca() : memref<2x12xi32>
        scf.yield %22 : i64
      }
      %277 = index.mul %129, %147
      memref.copy %alloc_11, %alloc_23 : memref<5xi32> to memref<5xi32>
      %278 = arith.minui %141, %c268168039_i32 : i32
      %alloc_58 = memref.alloc() : memref<2x2xf16>
      memref.copy %alloc_9, %alloc_58 : memref<2x2xf16> to memref<2x2xf16>
      %279 = vector.maskedload %alloc_10[%c4, %c4, %c9], %80, %19 : memref<5x5x12xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
      %inserted_59 = tensor.insert %c-3537_i16 into %1[%c0, %c9] : tensor<2x12xi16>
    }
    vector.print %80 : vector<5xi1>
    %151 = affine.apply affine_map<(d0, d1, d2) -> ((d1 * 8 - 32) * 2)>(%c7, %149, %c3)
    %152 = math.cttz %11 : tensor<2x12xi16>
    %153 = index.maxu %c5, %85
    vector.print %79 : vector<1xf32>
    %154 = arith.minui %c32449_i16, %c11367_i16 : i16
    %collapsed = tensor.collapse_shape %11 [[0, 1]] : tensor<2x12xi16> into tensor<24xi16>
    memref.assume_alignment %88, 1 : memref<2x12xi16>
    %155 = arith.cmpf oeq, %84, %cst_0 : f32
    %156 = arith.shrsi %22, %c690967306_i64 : i64
    %cast_32 = tensor.cast %14 : tensor<5x5x12xf32> to tensor<?x?x?xf32>
    %157 = arith.maxf %cst_4, %cst_3 : f32
    %158 = scf.if %true_2 -> (i32) {
      vector.print %55 : vector<12xf32>
      %252 = vector.broadcast %76 : i1 to vector<i1>
      vector.transfer_write %252, %35[%149, %85] : vector<i1>, memref<2x2xi1>
      %alloc_55 = memref.alloc() : memref<5x5x12xf16>
      memref.tensor_store %8, %alloc_55 : memref<5x5x12xf16>
      %253 = scf.execute_region -> index {
        %258 = vector.transpose %55, [0] : vector<12xf32> to vector<12xf32>
        %259 = tensor.empty(%153) : tensor<2x?xi32>
        %260 = math.absf %14 : tensor<5x5x12xf32>
        %261 = math.absf %14 : tensor<5x5x12xf32>
        %262 = math.absf %96 : tensor<5xf16>
        vector.print %50 : vector<5xi32>
        %263 = math.atan %14 : tensor<5x5x12xf32>
        %264 = math.ceil %8 : tensor<5x5x12xf16>
        %265 = vector.broadcast %22 : i64 to vector<5x5xi64>
        %266 = vector.outerproduct %19, %19, %265 {kind = #vector.kind<xor>} : vector<5xi64>, vector<5xi64>
        %267 = arith.floordivsi %c386112241_i64, %22 : i64
        memref.assume_alignment %alloc_10, 4 : memref<5x5x12xi64>
        %false_56 = index.bool.constant false
        %268 = vector.shuffle %79, %55 [1, 2, 4, 5, 6, 7, 11] : vector<1xf32>, vector<12xf32>
        %269 = math.exp2 %8 : tensor<5x5x12xf16>
        %270 = math.roundeven %10 : tensor<2x2xf16>
        %271 = math.fma %cst_1, %cst_1, %cst_1 : f16
        scf.yield %c5 : index
      }
      %254 = math.log1p %13 : tensor<2x2xf16>
      %255 = arith.remui %true_2, %false : i1
      %256 = math.copysign %cst_3, %84 : f32
      %257 = vector.insert %76, %51 [2] : i1 into vector<5xi1>
      scf.yield %141 : i32
    } else {
      %252 = vector.insert %76, %91 [23] : i1 into vector<60xi1>
      %253 = arith.floordivsi %141, %c268168039_i32 : i32
      %254 = affine.load %alloc_14[%c6, %c5] : memref<2x2xi32>
      %255 = math.round %10 : tensor<2x2xf16>
      %256 = arith.andi %c268168039_i32, %254 : i32
      %257 = memref.realloc %92 : memref<5xi32> to memref<12xi32>
      %258 = memref.load %alloc_21[%c4, %c0, %c9] : memref<5x5x12xi32>
      %259 = arith.addf %cst_6, %cst_3 : f32
      scf.yield %c268168039_i32 : i32
    }
    %159 = arith.shrsi %141, %c268168039_i32 : i32
    %160 = arith.shrsi %141, %141 : i32
    %161 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %60, %80, %false : vector<5xi1>, vector<5xi1> into i1
    %162 = tensor.empty() : tensor<2x2xf16>
    %163 = linalg.matmul ins(%13, %10 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%162 : tensor<2x2xf16>) -> tensor<2x2xf16>
    %alloca_33 = memref.alloca() : memref<5x5x12xf16>
    %alloc_34 = memref.alloc() : memref<i32>
    memref.copy %148, %alloc_34 : memref<i32> to memref<i32>
    %164 = bufferization.to_memref %17 : memref<2x12xi1>
    %alloca_35 = memref.alloca() : memref<2x12xi1>
    %165 = arith.shrsi %c11367_i16, %c32449_i16 : i16
    %166 = math.exp %10 : tensor<2x2xf16>
    %rank_36 = tensor.rank %71 : tensor<2x12xi1>
    %167 = math.absi %5 : tensor<2x2xi32>
    %168 = scf.execute_region -> f32 {
      %alloca_55 = memref.alloca() : memref<5xf16>
      %252 = arith.negf %cst_4 : f32
      %generated_56 = tensor.generate %c11 {
      ^bb0(%arg1: index, %arg2: index):
        %262 = math.atan2 %13, %103 : tensor<2x2xf16>
        %263 = memref.atomic_rmw maxs %141, %alloc_21[%c2, %c3, %c9] : (i32, memref<5x5x12xi32>) -> i32
        %264 = arith.addf %cst_3, %84 : f32
        %265 = arith.ceildivsi %false, %false : i1
        tensor.yield %158 : i32
      } : tensor<?x2xi32>
      %253 = arith.shrsi %c386112241_i64, %22 : i64
      %254 = scf.execute_region -> vector<2x12xi16> {
        %262 = bufferization.to_tensor %alloc_17 : memref<5x5x12xi16>
        %263 = bufferization.to_memref %10 : memref<2x2xf16>
        %264 = vector.broadcast %true : i1 to vector<i1>
        %265 = vector.transfer_write %264, %6[%153] : vector<i1>, tensor<5xi1>
        %266 = math.ceil %127 : tensor<2x2xf32>
        %267 = math.tan %96 : tensor<5xf16>
        %268 = arith.ceildivsi %false, %false : i1
        affine.store %76, %alloc_20[%c0, %c4] : memref<2x2xi1>
        %cast_58 = tensor.cast %0 : tensor<5x5x12xi32> to tensor<?x?x?xi32>
        %269 = math.expm1 %cst_6 : f32
        %270 = vector.shuffle %79, %79 [0] : vector<1xf32>, vector<1xf32>
        %271 = index.mul %c3, %85
        %272 = arith.divsi %true_2, %true : i1
        %273 = math.absf %8 : tensor<5x5x12xf16>
        %cast_59 = tensor.cast %14 : tensor<5x5x12xf32> to tensor<?x?x?xf32>
        %274 = vector.splat %cst_1 : vector<2x2xf16>
        affine.store %false, %164[%c8, %c2] : memref<2x12xi1>
        %275 = vector.broadcast %c11367_i16 : i16 to vector<2x12xi16>
        scf.yield %275 : vector<2x12xi16>
      }
      %255 = vector.insert %84, %55 [4] : f32 into vector<12xf32>
      %256 = arith.minui %c-7223_i16, %c-3537_i16 : i16
      %257 = math.sqrt %cst_3 : f32
      %true_57 = index.bool.constant true
      %258 = math.log1p %162 : tensor<2x2xf16>
      %259 = math.powf %cst_5, %cst_1 : f16
      %260 = arith.mulf %cst, %cst_1 : f16
      affine.store %cst, %alloc_8[%c10, %c12] : memref<2x12xf16>
      %261 = math.copysign %cst_5, %cst_1 : f16
      memref.tensor_store %127, %alloc_19 : memref<2x2xf32>
      memref.alloca_scope  {
        %262 = math.atan %103 : tensor<2x2xf16>
        %263 = arith.muli %c690967306_i64, %c690967306_i64 : i64
        %264 = arith.shrui %c268168039_i32, %158 : i32
        %265 = arith.shrui %22, %c690967306_i64 : i64
        %rank_58 = tensor.rank %162 : tensor<2x2xf16>
        %266 = math.log2 %14 : tensor<5x5x12xf32>
        %267 = vector.broadcast %141 : i32 to vector<12xi32>
        %268 = vector.maskedload %alloc_11[%c0], %56, %267 : memref<5xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
        %269 = arith.floordivsi %76, %76 : i1
        %270 = arith.andi %c-3537_i16, %c-7223_i16 : i16
        %271 = math.absf %cst : f16
        %cst_59 = arith.constant 1.000000e+00 : f32
        %272 = vector.transfer_read %14[%147, %70, %c6], %cst_59 : tensor<5x5x12xf32>, vector<f32>
        %273 = math.ctpop %transposed : tensor<12x5x5xi64>
        %274 = math.absi %4 : tensor<5x5x12xi16>
        %275 = math.cos %cst_4 : f32
        %276 = math.absi %1 : tensor<2x12xi16>
        %277 = affine.min affine_map<(d0, d1, d2) -> (d1, d1 floordiv 8 - 64)>(%151, %27, %c12)
        %278 = vector.reduction <minf>, %55 : vector<12xf32> into f32
        %279 = arith.floordivsi %c32449_i16, %c32449_i16 : i16
        %280 = index.casts %c2 : index to i32
        %281 = math.atan %103 : tensor<2x2xf16>
        %282 = math.ceil %14 : tensor<5x5x12xf32>
        memref.store %158, %77[%c1, %c5] : memref<2x12xi32>
        memref.store %cst_1, %alloc_8[%c1, %c2] : memref<2x12xf16>
        %283 = vector.multi_reduction <xor>, %91, %76 [0] : vector<60xi1> to i1
        %cast_60 = tensor.cast %96 : tensor<5xf16> to tensor<?xf16>
        %284 = math.rsqrt %13 : tensor<2x2xf16>
        %285 = arith.shrui %141, %158 : i32
        %286 = math.tan %10 : tensor<2x2xf16>
        %287 = vector.multi_reduction <or>, %56, %56 [] : vector<12xi1> to vector<12xi1>
        %288 = math.round %10 : tensor<2x2xf16>
        %289 = arith.floordivsi %c11367_i16, %c-7223_i16 : i16
        %290 = arith.mulf %cst_6, %cst_0 : f32
      }
      scf.yield %cst_0 : f32
    }
    %169 = arith.subi %c-3537_i16, %c11367_i16 : i16
    %170 = arith.maxf %cst_4, %cst_6 : f32
    %171 = math.round %cst_1 : f16
    %rank_37 = tensor.rank %9 : tensor<5x5x12xi1>
    %alloc_38 = memref.alloc() : memref<2x2xf16>
    memref.copy %alloc_9, %alloc_38 : memref<2x2xf16> to memref<2x2xf16>
    %172 = math.absi %71 : tensor<2x12xi1>
    %173 = arith.remf %cst_6, %168 : f32
    %174 = scf.while (%arg1 = %141) : (i32) -> i32 {
      %252 = arith.remsi %141, %141 : i32
      %253 = vector.matrix_multiply %19, %19 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
      %254 = arith.divsi %true_2, %true : i1
      %255 = arith.remf %168, %84 : f32
      memref.tensor_store %0, %alloc_21 : memref<5x5x12xi32>
      %256 = index.add %c9, %70
      %257 = bufferization.to_tensor %alloc_7 : memref<2x12xi16>
      memref.assume_alignment %alloc, 2 : memref<2x2xf32>
      scf.condition(%true_2) %arg1 : i32
    } do {
    ^bb0(%arg1: i32):
      %252 = math.tan %13 : tensor<2x2xf16>
      %generated_55 = tensor.generate %27, %c11, %c7 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %266 = arith.cmpi sgt, %c32449_i16, %c32449_i16 : i16
        %267 = math.fma %cst_0, %cst_0, %cst_0 : f32
        %268 = bufferization.to_memref %15 : memref<5x5x12xi64>
        %269 = math.cos %cst_5 : f16
        tensor.yield %arg1 : i32
      } : tensor<?x?x?xi32>
      %253 = arith.remf %168, %cst_3 : f32
      %254 = arith.maxf %cst, %cst_1 : f16
      %255 = index.casts %c268168039_i32 : i32 to index
      %generated_56 = tensor.generate %rank_36 {
      ^bb0(%arg2: index, %arg3: index):
        %266 = math.expm1 %13 : tensor<2x2xf16>
        %267 = arith.minui %true_2, %true_2 : i1
        %268 = vector.bitcast %79 : vector<1xf32> to vector<1xf32>
        %269 = index.maxu %rank, %arg2
        tensor.yield %76 : i1
      } : tensor<?x12xi1>
      affine.store %c11367_i16, %alloc_17[%c3, %c0, %c8] : memref<5x5x12xi16>
      %256 = vector.broadcast %cst_3 : f32 to vector<5x5x12xf32>
      %257 = vector.fma %256, %256, %256 : vector<5x5x12xf32>
      %258 = index.mul %c11, %c12
      %259 = arith.maxf %cst_5, %cst : f16
      %260 = arith.remf %84, %cst_3 : f32
      %261 = affine.apply affine_map<(d0, d1) -> ((((d1 floordiv 4) ceildiv 64) ceildiv 64) ceildiv 8)>(%87, %c11)
      %262 = math.powf %168, %168 : f32
      %263 = vector.transpose %79, [0] : vector<1xf32> to vector<1xf32>
      %264 = scf.execute_region -> i1 {
        %266 = math.cttz %true_2 : i1
        %267 = math.ctpop %76 : i1
        %268 = arith.muli %false, %true_2 : i1
        %269 = arith.divf %cst_0, %cst_0 : f32
        %270 = math.exp2 %103 : tensor<2x2xf16>
        %271 = math.fma %13, %10, %13 : tensor<2x2xf16>
        %272 = vector.broadcast %true : i1 to vector<2x2xi1>
        %273 = vector.broadcast %arg1 : i32 to vector<2x2xi32>
        %274 = vector.gather %alloc_20[%c6, %c6] [%273], %272, %272 : memref<2x2xi1>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi1> into vector<2x2xi1>
        %275 = math.cttz %71 : tensor<2x12xi1>
        %276 = vector.matrix_multiply %51, %80 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
        %277 = arith.remf %cst_3, %cst_6 : f32
        %278 = arith.remf %cst_4, %168 : f32
        %279 = bufferization.clone %alloc_17 : memref<5x5x12xi16> to memref<5x5x12xi16>
        %280 = vector.broadcast %true : i1 to vector<5x5x12xi1>
        %281 = vector.broadcast %158 : i32 to vector<5x5x12xi32>
        %282 = vector.gather %31[%98, %98] [%281], %280, %280 : tensor<2x2xi1>, vector<5x5x12xi32>, vector<5x5x12xi1>, vector<5x5x12xi1> into vector<5x5x12xi1>
        %283 = index.mul %c12, %c4
        %alloc_57 = memref.alloc() : memref<2x2xi16>
        memref.tensor_store %2, %alloc_57 : memref<2x2xi16>
        %284 = vector.shuffle %50, %50 [2, 3, 4, 5, 6, 7, 8] : vector<5xi32>, vector<5xi32>
        scf.yield %false : i1
      }
      %265 = index.maxu %c14, %153
      scf.yield %c268168039_i32 : i32
    }
    %175 = vector.broadcast %cst_5 : f16 to vector<12x2xf16>
    %176 = vector.broadcast %cst_1 : f16 to vector<2xf16>
    %dest_39, %accumulated_value_40 = vector.scan <minf>, %175, %176 {inclusive = false, reduction_dim = 0 : i64} : vector<12x2xf16>, vector<2xf16>
    %177 = vector.broadcast %c268168039_i32 : i32 to vector<12x2x2xi32>
    %178 = vector.broadcast %158 : i32 to vector<12x2xi32>
    %dest_41, %accumulated_value_42 = vector.scan <or>, %177, %178 {inclusive = false, reduction_dim = 1 : i64} : vector<12x2x2xi32>, vector<12x2xi32>
    scf.index_switch %c2 
    case 1 {
      %252 = math.fma %96, %96, %96 : tensor<5xf16>
      %253 = vector.create_mask %c15, %70 : vector<2x12xi1>
      %254 = math.ctlz %71 : tensor<2x12xi1>
      %true_55 = index.bool.constant true
      %255 = arith.xori %false, %true_55 : i1
      %256 = math.log1p %162 : tensor<2x2xf16>
      %257 = arith.maxf %cst_3, %84 : f32
      %258 = vector.matrix_multiply %19, %41 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<1xi64>) -> vector<5xi64>
      %259 = vector.gather %7[%104] [%52], %80, %258 : tensor<5xi64>, vector<5xi32>, vector<5xi1>, vector<5xi64> into vector<5xi64>
      %260 = vector.broadcast %true : i1 to vector<2xi1>
      %261 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxsi>} %56, %253, %260 : vector<12xi1>, vector<2x12xi1> into vector<2xi1>
      %262 = index.maxu %147, %rank_37
      %263 = vector.broadcast %c4 : index to vector<12xindex>
      vector.scatter %alloc_18[%c3] [%263], %56, %55 : memref<5xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
      %dest_56, %accumulated_value_57 = vector.scan <or>, %253, %56 {inclusive = false, reduction_dim = 0 : i64} : vector<2x12xi1>, vector<12xi1>
      vector.print %41 : vector<1xi64>
      %alloca_58 = memref.alloca() : memref<5x5x12xi32>
      %264 = arith.shli %true_2, %true_55 : i1
      scf.yield
    }
    case 2 {
      memref.copy %88, %alloc_13 : memref<2x12xi16> to memref<2x12xi16>
      %252 = math.exp %cst_3 : f32
      %253 = arith.addf %168, %84 : f32
      %generated_55 = tensor.generate %151 {
      ^bb0(%arg1: index):
        %263 = index.maxs %c2, %c7
        %264 = vector.bitcast %55 : vector<12xf32> to vector<12xf32>
        %265 = vector.insert %84, %57 [1] : f32 into vector<12xf32>
        affine.store %cst_4, %alloc_19[%c3, %c4] : memref<2x2xf32>
        tensor.yield %c11367_i16 : i16
      } : tensor<?xi16>
      %rank_56 = tensor.rank %cast_32 : tensor<?x?x?xf32>
      %254 = math.absi %c386112241_i64 : i64
      %255 = arith.maxsi %c690967306_i64, %c690967306_i64 : i64
      %256 = vector.matrix_multiply %60, %91 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<5xi1>, vector<60xi1>) -> vector<12xi1>
      %257 = affine.for %arg1 = 0 to 28 iter_args(%arg2 = %cst_4) -> (f32) {
        affine.yield %cst_6 : f32
      }
      %258 = affine.min affine_map<(d0, d1) -> (d1 * 2, d0 ceildiv 4, -d1, d0 ceildiv 4 - (d0 mod 8) ceildiv 8)>(%98, %104)
      %alloca_57 = memref.alloca() : memref<2x2xf32>
      %259 = arith.remf %cst_4, %cst_6 : f32
      %260 = arith.remf %cst, %cst_5 : f16
      %261 = vector.transpose %51, [0] : vector<5xi1> to vector<5xi1>
      %262 = math.ctpop %18 : tensor<12x5x5xi64>
      bufferization.dealloc_tensor %8 : tensor<5x5x12xf16>
      scf.yield
    }
    case 3 {
      %252 = math.fma %96, %96, %96 : tensor<5xf16>
      %cast_55 = tensor.cast %13 : tensor<2x2xf16> to tensor<?x?xf16>
      %253 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %80, %80, %false : vector<5xi1>, vector<5xi1> into i1
      %254 = arith.muli %c-3537_i16, %c32449_i16 : i16
      scf.index_switch %c5 
      case 1 {
        %266 = math.cos %cst_5 : f16
        %267 = memref.realloc %alloc_11 : memref<5xi32> to memref<12xi32>
        %268 = vector.splat %cst_5 : vector<2x12xf16>
        %269 = math.absf %cst : f16
        %270 = math.exp %84 : f32
        %271 = arith.floordivsi %c32449_i16, %c-7223_i16 : i16
        %272 = arith.divf %cst_0, %84 : f32
        affine.store %158, %77[%c9, %c11] : memref<2x12xi32>
        %273 = affine.load %alloc_16[%c8] : memref<5xi32>
        %274 = arith.mulf %cst_6, %168 : f32
        %alloc_56 = memref.alloc() : memref<2x12xf16>
        memref.copy %alloc_8, %alloc_56 : memref<2x12xf16> to memref<2x12xf16>
        %275 = arith.minui %true_2, %true : i1
        %276 = vector.multi_reduction <and>, %80, %76 [0] : vector<5xi1> to i1
        %277 = tensor.empty() : tensor<2x2xi32>
        %278 = linalg.matmul ins(%5, %5 : tensor<2x2xi32>, tensor<2x2xi32>) outs(%277 : tensor<2x2xi32>) -> tensor<2x2xi32>
        %279 = vector.shuffle %55, %79 [1, 5, 8, 9] : vector<12xf32>, vector<1xf32>
        %280 = math.ctlz %15 : tensor<5x5x12xi64>
        scf.yield
      }
      case 2 {
        %266 = vector.shuffle %19, %41 [1, 2] : vector<5xi64>, vector<1xi64>
        %267 = vector.transpose %91, [0] : vector<60xi1> to vector<60xi1>
        %268 = math.absi %c11367_i16 : i16
        %269 = math.log1p %162 : tensor<2x2xf16>
        %270 = math.log1p %8 : tensor<5x5x12xf16>
        %271 = math.log2 %cst_5 : f16
        %272 = math.tan %cst : f16
        %273 = math.ctlz %7 : tensor<5xi64>
        %inserted_56 = tensor.insert %c32449_i16 into %from_elements[%c1, %c0] : tensor<2x12xi16>
        %inserted_57 = tensor.insert %cst_1 into %cast_55[%c0, %c0] : tensor<?x?xf16>
        %274 = math.absf %162 : tensor<2x2xf16>
        %275 = vector.transpose %41, [0] : vector<1xi64> to vector<1xi64>
        %276 = index.castu %c10 : index to i32
        %277 = arith.negf %cst_1 : f16
        %278 = math.ceil %14 : tensor<5x5x12xf32>
        %279 = math.log1p %cst_0 : f32
        scf.yield
      }
      case 3 {
        %266 = memref.atomic_rmw maxf %84, %alloc[%c0, %c0] : (f32, memref<2x2xf32>) -> f32
        %rank_56 = tensor.rank %15 : tensor<5x5x12xi64>
        %267 = arith.xori %76, %false : i1
        %268 = arith.minui %158, %141 : i32
        %269 = vector.broadcast %c8 : index to vector<5xindex>
        %270 = vector.broadcast %84 : f32 to vector<5xf32>
        vector.scatter %alloc[%c1, %c1] [%269], %60, %270 : memref<2x2xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
        %271 = arith.andi %c386112241_i64, %22 : i64
        %272 = vector.broadcast %cst_3 : f32 to vector<5xf32>
        %273 = vector.fma %272, %272, %272 : vector<5xf32>
        %274 = vector.broadcast %c1 : index to vector<2xindex>
        %275 = vector.broadcast %76 : i1 to vector<2xi1>
        %276 = vector.broadcast %158 : i32 to vector<2xi32>
        vector.scatter %148[] [%274], %275, %276 : memref<i32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
        %277 = math.exp %cst_5 : f16
        %278 = arith.ceildivsi %c-3537_i16, %c-7223_i16 : i16
        %collapsed_57 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<5x5x12xi64> into tensor<25x12xi64>
        %279 = math.powf %96, %96 : tensor<5xf16>
        %280 = bufferization.clone %alloc_20 : memref<2x2xi1> to memref<2x2xi1>
        %281 = math.powf %162, %10 : tensor<2x2xf16>
        %282 = math.exp %168 : f32
        %283 = vector.broadcast %84 : f32 to vector<12x2xf32>
        %dest_58, %accumulated_value_59 = vector.scan <minf>, %283, %55 {inclusive = true, reduction_dim = 1 : i64} : vector<12x2xf32>, vector<12xf32>
        scf.yield
      }
      default {
        %266 = vector.broadcast %cst : f16 to vector<f16>
        vector.transfer_write %266, %alloc_22[%c8] : vector<f16>, memref<5xf16>
        %267 = memref.realloc %alloc_23 : memref<5xi32> to memref<2xi32>
        %268 = arith.xori %c11367_i16, %c-3537_i16 : i16
        %269 = memref.load %88[%c0, %c5] : memref<2x12xi16>
        %270 = math.tan %13 : tensor<2x2xf16>
        %splat = tensor.splat %c386112241_i64 : tensor<2x12xi64>
        %271 = affine.load %alloc_9[%c6, %c7] : memref<2x2xf16>
        %rank_56 = tensor.rank %96 : tensor<5xf16>
        %272 = arith.negf %cst : f16
        %273 = bufferization.to_memref %4 : memref<5x5x12xi16>
        %274 = arith.maxsi %true, %true : i1
        %275 = vector.reduction <add>, %80 : vector<5xi1> into i1
        %276 = math.ctpop %splat : tensor<2x12xi64>
        %277 = math.log2 %10 : tensor<2x2xf16>
        %278 = vector.transpose %41, [0] : vector<1xi64> to vector<1xi64>
        %279 = arith.remui %158, %c268168039_i32 : i32
      }
      %255 = math.ctpop %true_2 : i1
      %256 = arith.cmpf uge, %168, %cst_0 : f32
      %257 = scf.index_switch %c0 -> vector<5xi1> 
      case 1 {
        %266 = math.ctlz %21 : tensor<i32>
        %267 = vector.broadcast %rank_36 : index to vector<2xindex>
        %268 = vector.broadcast %true_2 : i1 to vector<2xi1>
        %269 = vector.broadcast %141 : i32 to vector<2xi32>
        vector.scatter %77[%c0, %c10] [%267], %268, %269 : memref<2x12xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
        %270 = vector.broadcast %c268168039_i32 : i32 to vector<i32>
        %271 = vector.transfer_write %270, %5[%98, %c4] : vector<i32>, tensor<2x2xi32>
        %272 = index.mul %c1, %151
        %273 = math.ctlz %17 : tensor<2x12xi1>
        %274 = math.sqrt %cst_4 : f32
        %275 = arith.ceildivsi %c-3537_i16, %c11367_i16 : i16
        %276 = math.powf %10, %13 : tensor<2x2xf16>
        %277 = vector.insert %false, %56 [11] : i1 into vector<12xi1>
        %278 = arith.ceildivsi %false, %true : i1
        %c1034760675_i64 = arith.constant 1034760675 : i64
        %279 = arith.shli %c32449_i16, %c11367_i16 : i16
        %280 = math.round %cst_6 : f32
        %collapsed_56 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<5x5x12xi64> into tensor<25x12xi64>
        %281 = math.powf %14, %14 : tensor<5x5x12xf32>
        %282 = arith.divsi %c11367_i16, %c-7223_i16 : i16
        scf.yield %80 : vector<5xi1>
      }
      case 2 {
        %266 = vector.multi_reduction <maxsi>, %91, %76 [0] : vector<60xi1> to i1
        %267 = math.floor %13 : tensor<2x2xf16>
        %268 = arith.minui %158, %c268168039_i32 : i32
        %269 = vector.matrix_multiply %79, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xf32>, vector<12xf32>) -> vector<12xf32>
        %270 = math.exp %10 : tensor<2x2xf16>
        %inserted_56 = tensor.insert %true_2 into %17[%c0, %c5] : tensor<2x12xi1>
        %rank_57 = tensor.rank %10 : tensor<2x2xf16>
        %271 = vector.broadcast %cst_3 : f32 to vector<12xf32>
        %272 = vector.transfer_write %271, %14[%rank_57, %c1, %rank_29] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<12xf32>, tensor<5x5x12xf32>
        %273 = index.maxu %c15, %87
        %274 = vector.insert %true_2, %80 [0] : i1 into vector<5xi1>
        memref.tensor_store %14, %alloc_12 : memref<5x5x12xf32>
        bufferization.dealloc_tensor %21 : tensor<i32>
        memref.store %false, %164[%c1, %c10] : memref<2x12xi1>
        %275 = math.absi %c11367_i16 : i16
        %276 = vector.insert %76, %91 [54] : i1 into vector<60xi1>
        %inserted_58 = tensor.insert %22 into %15[%c3, %c1, %c10] : tensor<5x5x12xi64>
        scf.yield %51 : vector<5xi1>
      }
      case 3 {
        %266 = vector.broadcast %113 : index to vector<5xindex>
        vector.scatter %92[%c3] [%266], %60, %50 : memref<5xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
        %267 = math.absi %20 : tensor<i32>
        %268 = vector.shuffle %52, %50 [4, 8, 9] : vector<5xi32>, vector<5xi32>
        affine.store %22, %alloc_10[%c13, %c3, %c11] : memref<5x5x12xi64>
        %269 = arith.divsi %c690967306_i64, %c386112241_i64 : i64
        %270 = arith.xori %141, %158 : i32
        %271 = math.log1p %13 : tensor<2x2xf16>
        %272 = vector.broadcast %c7 : index to vector<12xindex>
        vector.scatter %164[%c0, %c1] [%272], %56, %56 : memref<2x12xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
        %273 = math.ctpop %20 : tensor<i32>
        %274 = arith.ceildivsi %c268168039_i32, %158 : i32
        %275 = math.cos %84 : f32
        %276 = arith.negf %84 : f32
        %277 = arith.remf %cst_1, %cst_5 : f16
        %278 = vector.broadcast %76 : i1 to vector<5x2xi1>
        %279 = vector.broadcast %76 : i1 to vector<2xi1>
        %dest_56, %accumulated_value_57 = vector.scan <maxui>, %278, %279 {inclusive = true, reduction_dim = 0 : i64} : vector<5x2xi1>, vector<2xi1>
        %280 = math.absi %2 : tensor<2x2xi16>
        %281 = arith.muli %true, %true : i1
        scf.yield %51 : vector<5xi1>
      }
      case 4 {
        %alloca_56 = memref.alloca() : memref<2x12xf16>
        affine.store %84, %alloc_19[%c10, %c14] : memref<2x2xf32>
        %266 = math.exp2 %14 : tensor<5x5x12xf32>
        %267 = index.maxu %149, %149
        %alloca_57 = memref.alloca() : memref<5x5x12xi1>
        %268 = arith.shli %c-7223_i16, %c32449_i16 : i16
        %269 = math.ctpop %15 : tensor<5x5x12xi64>
        %270 = arith.minui %true, %true : i1
        %271 = math.copysign %cst, %cst : f16
        %272 = arith.cmpi slt, %false, %true_2 : i1
        %273 = math.ctlz %transposed : tensor<12x5x5xi64>
        %274 = arith.negf %cst_5 : f16
        %275 = vector.transpose %79, [0] : vector<1xf32> to vector<1xf32>
        %276 = math.ctlz %true : i1
        %277 = arith.shrsi %c11367_i16, %c11367_i16 : i16
        %278 = vector.broadcast %22 : i64 to vector<5x5xi64>
        %dest_58, %accumulated_value_59 = vector.scan <add>, %278, %19 {inclusive = false, reduction_dim = 0 : i64} : vector<5x5xi64>, vector<5xi64>
        scf.yield %60 : vector<5xi1>
      }
      default {
        %266 = arith.muli %c11367_i16, %c11367_i16 : i16
        %267 = index.floordivs %c0, %c8
        %cast_56 = tensor.cast %5 : tensor<2x2xi32> to tensor<?x?xi32>
        %268 = arith.addf %cst, %cst : f16
        %269 = arith.addf %cst_4, %cst_6 : f32
        %270 = tensor.empty() : tensor<12x12xi1>
        %271 = tensor.empty() : tensor<2x12xi1>
        %272 = linalg.matmul ins(%12, %270 : tensor<2x12xi1>, tensor<12x12xi1>) outs(%271 : tensor<2x12xi1>) -> tensor<2x12xi1>
        %273 = vector.broadcast %168 : f32 to vector<5x5x12xf32>
        %274 = vector.fma %273, %273, %273 : vector<5x5x12xf32>
        %275 = arith.shli %141, %141 : i32
        %276 = arith.minui %true_2, %true : i1
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + 64)>(%rank, %c0, %c12, %rank_37)
        %278 = math.log2 %cst_4 : f32
        %279 = vector.flat_transpose %57 {columns = 3 : i32, rows = 4 : i32} : vector<12xf32> -> vector<12xf32>
        %280 = index.castu %37 : index to i32
        %281 = vector.broadcast %c11367_i16 : i16 to vector<i16>
        %282 = vector.transfer_write %281, %4[%70, %153, %27] : vector<i16>, tensor<5x5x12xi16>
        %283 = arith.maxsi %false, %true : i1
        %284 = math.ctlz %4 : tensor<5x5x12xi16>
        scf.yield %60 : vector<5xi1>
      }
      %258 = scf.while (%arg1 = %41) : (vector<1xi64>) -> vector<1xi64> {
        %266 = arith.shrsi %true_2, %true : i1
        %267 = arith.divsi %c268168039_i32, %141 : i32
        %268 = vector.broadcast %141 : i32 to vector<i32>
        %269 = vector.transfer_write %268, %5[%c4, %c3] : vector<i32>, tensor<2x2xi32>
        %270 = math.exp %cst_1 : f16
        %271 = math.log2 %cst_0 : f32
        %272 = math.exp2 %84 : f32
        %alloc_56 = memref.alloc() : memref<12x2xi16>
        %273 = tensor.empty() : tensor<2x2xi16>
        %274 = linalg.matmul ins(%11, %alloc_56 : tensor<2x12xi16>, memref<12x2xi16>) outs(%273 : tensor<2x2xi16>) -> tensor<2x2xi16>
        %275 = arith.divui %c268168039_i32, %158 : i32
        scf.condition(%true_2) %41 : vector<1xi64>
      } do {
      ^bb0(%arg1: vector<1xi64>):
        %266 = arith.floordivsi %c386112241_i64, %c690967306_i64 : i64
        %267 = arith.remui %c-3537_i16, %c-7223_i16 : i16
        %268 = index.sub %98, %c0
        %269 = arith.andi %c268168039_i32, %141 : i32
        %270 = math.copysign %14, %14 : tensor<5x5x12xf32>
        %alloc_56 = memref.alloc() : memref<5x5x12xi1>
        %271 = math.log1p %103 : tensor<2x2xf16>
        %272 = vector.shuffle %51, %80 [4, 6, 7, 8] : vector<5xi1>, vector<5xi1>
        %273 = math.cttz %31 : tensor<2x2xi1>
        %274 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%129, %113, %c11)
        %275 = math.log2 %162 : tensor<2x2xf16>
        %276 = arith.addf %cst_1, %cst : f16
        %277 = vector.maskedload %148[], %60, %50 : memref<i32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
        affine.store %c-3537_i16, %88[%c14, %c13] : memref<2x12xi16>
        vector.print %56 : vector<12xi1>
        %278 = math.absf %cst_5 : f16
        scf.yield %41 : vector<1xi64>
      }
      %259 = index.mul %129, %151
      %260 = vector.shuffle %56, %51 [1, 9, 15] : vector<12xi1>, vector<5xi1>
      %261 = vector.maskedload %164[%c0, %c10], %51, %60 : memref<2x12xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
      %262 = vector.reduction <maxsi>, %41 : vector<1xi64> into i64
      %263 = arith.maxsi %c690967306_i64, %c690967306_i64 : i64
      %264 = math.expm1 %cst_1 : f16
      %265 = math.powf %cst_1, %cst_1 : f16
      scf.yield
    }
    default {
      %252 = vector.broadcast %cst_3 : f32 to vector<2x2xf32>
      %253 = vector.fma %252, %252, %252 : vector<2x2xf32>
      %254 = bufferization.clone %alloc_11 : memref<5xi32> to memref<5xi32>
      bufferization.dealloc_tensor %collapsed : tensor<24xi16>
      %255 = index.casts %c690967306_i64 : i64 to index
      %256 = arith.shrui %c32449_i16, %c-3537_i16 : i16
      %257 = arith.divf %cst_5, %cst_5 : f16
      %258 = tensor.empty() : tensor<5x12x5xf32>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%14, %258, %alloc_18 : tensor<5x5x12xf32>, tensor<5x12x5xf32>, memref<5xf32>) outs(%14 : tensor<5x5x12xf32>) {
      ^bb0(%in: f32, %in_57: f32, %in_58: f32, %out: f32):
        %270 = index.maxu %153, %rank_29
        %271 = arith.shrsi %158, %c268168039_i32 : i32
        %272 = math.ctpop %c-3537_i16 : i16
        %273 = math.ceil %cst_0 : f32
        %274 = index.sizeof
        %cast_59 = tensor.cast %3 : tensor<2x2xi64> to tensor<?x?xi64>
        %splat = tensor.splat %cst_6 : tensor<5x5x12xf32>
        %275 = math.log2 %13 : tensor<2x2xf16>
        %276 = math.exp %in_58 : f32
        memref.tensor_store %21, %148 : memref<i32>
        %277 = math.tan %96 : tensor<5xf16>
        %278 = math.absf %in_57 : f32
        %279 = vector.shuffle %41, %41 [0] : vector<1xi64>, vector<1xi64>
        %280 = arith.muli %c386112241_i64, %c386112241_i64 : i64
        %alloca_60 = memref.alloca() : memref<2x2xi16>
        %281 = math.copysign %in_57, %cst_4 : f32
        %282 = arith.addf %cst_6, %out : f32
        %283 = arith.remf %cst_5, %cst_5 : f16
        %284 = math.exp2 %cst_3 : f32
        %285 = math.ctlz %3 : tensor<2x2xi64>
        %286 = math.fma %cst_3, %in_58, %cst_4 : f32
        %287 = arith.divui %22, %c690967306_i64 : i64
        affine.store %cst_3, %alloc_19[%c12, %c10] : memref<2x2xf32>
        %288 = index.castu %true : i1 to index
        affine.store %c268168039_i32, %148[] : memref<i32>
        %289 = arith.shrsi %c-3537_i16, %c11367_i16 : i16
        %290 = arith.cmpi ugt, %true_2, %true : i1
        %291 = arith.addf %cst_5, %cst : f16
        %292 = arith.shli %22, %c690967306_i64 : i64
        %293 = vector.reduction <xor>, %51 : vector<5xi1> into i1
        bufferization.dealloc_tensor %0 : tensor<5x5x12xi32>
        %294 = math.log2 %168 : f32
        linalg.yield %in : f32
      } -> tensor<5x5x12xf32>
      %false_55 = arith.constant false
      %false_56 = arith.constant false
      %260 = vector.transfer_read %9[%rank_29, %37, %c14], %false_56 : tensor<5x5x12xi1>, vector<i1>
      %261 = math.ceil %8 : tensor<5x5x12xf16>
      %262 = arith.remui %76, %false : i1
      %263 = vector.broadcast %149 : index to vector<5xindex>
      %264 = vector.broadcast %cst_6 : f32 to vector<5xf32>
      vector.scatter %alloc_19[%c0, %c1] [%263], %80, %264 : memref<2x2xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
      %265 = vector.multi_reduction <add>, %55, %55 [] : vector<12xf32> to vector<12xf32>
      %266 = index.sub %rank, %c5
      %267 = math.ctlz %4 : tensor<5x5x12xi16>
      %268 = scf.while (%arg1 = %cst_4) : (f32) -> f32 {
        %270 = math.ctpop %4 : tensor<5x5x12xi16>
        %false_57 = index.bool.constant false
        %271 = arith.shli %true_2, %false_55 : i1
        %extracted = tensor.extract %3[%c0, %c1] : tensor<2x2xi64>
        %272 = math.exp %cst_6 : f32
        %273 = index.maxu %c4, %c2
        %c-25943_i16 = arith.constant -25943 : i16
        %274 = index.floordivs %255, %c2
        scf.condition(%true) %cst_6 : f32
      } do {
      ^bb0(%arg1: f32):
        %270 = arith.shrsi %false, %false : i1
        vector.print %60 : vector<5xi1>
        %271 = arith.ceildivsi %c11367_i16, %c-7223_i16 : i16
        bufferization.dealloc_tensor %1 : tensor<2x12xi16>
        %272 = vector.insert %84, %79 [0] : f32 into vector<1xf32>
        %273 = math.exp %cst_1 : f16
        %274 = arith.remf %cst, %cst : f16
        %275 = arith.remf %cst_5, %cst_1 : f16
        %276 = arith.andi %158, %c268168039_i32 : i32
        %277 = math.rsqrt %8 : tensor<5x5x12xf16>
        %278 = arith.minui %158, %158 : i32
        %279 = math.powf %13, %10 : tensor<2x2xf16>
        %280 = arith.shrsi %c-3537_i16, %c-7223_i16 : i16
        %281 = math.exp %cst_0 : f32
        %282 = arith.minf %arg1, %cst_6 : f32
        %283 = math.log2 %cst_6 : f32
        scf.yield %168 : f32
      }
      %269 = arith.addf %cst_3, %cst_3 : f32
    }
    %179 = vector.maskedload %77[%c1, %c8], %80, %52 : memref<2x12xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
    %180 = math.log1p %8 : tensor<5x5x12xf16>
    %181 = vector.load %alloc_16[%c2] : memref<5xi32>, vector<5xi32>
    %182 = math.exp %13 : tensor<2x2xf16>
    %183 = vector.broadcast %cst_6 : f32 to vector<2x12xf32>
    %184 = vector.fma %183, %183, %183 : vector<2x12xf32>
    %185 = math.atan2 %cst_4, %cst_3 : f32
    memref.store %true, %35[%c1, %c0] : memref<2x2xi1>
    %186 = arith.cmpi eq, %c32449_i16, %c11367_i16 : i16
    %187 = math.cos %13 : tensor<2x2xf16>
    %188 = arith.remsi %c268168039_i32, %158 : i32
    %189 = bufferization.to_memref %cast : memref<?x?x?xi16>
    %190 = tensor.empty() : tensor<12xi64>
    %alloc_43 = memref.alloc() : memref<5x12xi64>
    %191 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %190, %alloc_43 : tensor<5xi64>, tensor<12xi64>, memref<5x12xi64>) outs(%transposed : tensor<12x5x5xi64>) {
    ^bb0(%in: i64, %in_55: i64, %in_56: i64, %out: i64):
      %252 = index.mul %85, %85
      %false_57 = index.bool.constant false
      memref.store %141, %148[] : memref<i32>
      affine.for %arg1 = 0 to 28 {
      }
      %253 = memref.alloca_scope  -> (f32) {
        %276 = vector.broadcast %37 : index to vector<12xindex>
        %277 = vector.broadcast %cst_1 : f16 to vector<12xf16>
        vector.scatter %alloc_8[%c1, %c5] [%276], %56, %277 : memref<2x12xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
        %278 = index.casts %22 : i64 to index
        %279 = arith.shli %c-7223_i16, %c11367_i16 : i16
        %280 = arith.maxf %cst_4, %cst_0 : f32
        %281 = arith.cmpf olt, %cst_5, %cst_1 : f16
        %rank_62 = tensor.rank %1 : tensor<2x12xi16>
        %282 = bufferization.to_memref %10 : memref<2x2xf16>
        %283 = math.fma %127, %127, %127 : tensor<2x2xf32>
        %284 = arith.maxui %c690967306_i64, %in_56 : i64
        %285 = arith.muli %c690967306_i64, %in_55 : i64
        %286 = vector.broadcast %158 : i32 to vector<2xi32>
        %287 = vector.broadcast %true_2 : i1 to vector<2xi1>
        %288 = vector.maskedload %alloc_21[%c0, %c3, %c9], %287, %286 : memref<5x5x12xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        affine.store %c32449_i16, %88[%c10, %c8] : memref<2x12xi16>
        %289 = vector.broadcast %cst_3 : f32 to vector<2xf32>
        %290 = vector.maskedload %alloc_12[%c0, %c4, %c4], %287, %289 : memref<5x5x12xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %291 = math.absi %11 : tensor<2x12xi16>
        %cast_63 = tensor.cast %12 : tensor<2x12xi1> to tensor<?x?xi1>
        %292 = arith.minui %141, %c268168039_i32 : i32
        %293 = arith.muli %false, %true_2 : i1
        %294 = math.floor %cst_4 : f32
        %295 = vector.broadcast %87 : index to vector<12xindex>
        %296 = vector.broadcast %158 : i32 to vector<12xi32>
        vector.scatter %alloc_14[%c0, %c0] [%295], %56, %296 : memref<2x2xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
        memref.assume_alignment %alloc_12, 1 : memref<5x5x12xf32>
        %297 = vector.broadcast %cst_4 : f32 to vector<12x12xf32>
        %298 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %184, %184, %297 : vector<2x12xf32>, vector<2x12xf32> into vector<12x12xf32>
        %299 = affine.load %alloc_16[%c0] : memref<5xi32>
        %300 = vector.broadcast %cst_0 : f32 to vector<2x2xf32>
        %301 = vector.fma %300, %300, %300 : vector<2x2xf32>
        %alloc_64 = memref.alloc() : memref<5x5x12xi64>
        memref.copy %alloc_10, %alloc_64 : memref<5x5x12xi64> to memref<5x5x12xi64>
        %302 = arith.ceildivsi %c32449_i16, %c32449_i16 : i16
        %303 = math.powf %8, %8 : tensor<5x5x12xf16>
        %304 = index.floordivs %126, %129
        %305 = vector.splat %84 : vector<2x12xf32>
        %306 = vector.broadcast %true : i1 to vector<5x5x12xi1>
        %307 = vector.broadcast %c268168039_i32 : i32 to vector<5x5x12xi32>
        %308 = vector.gather %31[%278, %37] [%307], %306, %306 : tensor<2x2xi1>, vector<5x5x12xi32>, vector<5x5x12xi1>, vector<5x5x12xi1> into vector<5x5x12xi1>
        affine.store %141, %alloc_11[%c15] : memref<5xi32>
        %alloca_65 = memref.alloca() : memref<2x12xf16>
        %309 = math.absi %transposed : tensor<12x5x5xi64>
        memref.alloca_scope.return %cst_3 : f32
      }
      %254 = index.casts %out : i64 to index
      %alloca_58 = memref.alloca() : memref<5xi32>
      %255 = vector.flat_transpose %181 {columns = 5 : i32, rows = 1 : i32} : vector<5xi32> -> vector<5xi32>
      %256 = scf.execute_region -> memref<5xi64> {
        %276 = math.cos %84 : f32
        %277 = index.maxu %c4, %c10
        %278 = math.ipowi %9, %9 : tensor<5x5x12xi1>
        %279 = math.cos %8 : tensor<5x5x12xf16>
        %alloca_62 = memref.alloca() : memref<5xi64>
        %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %91, %91, %true_2 : vector<60xi1>, vector<60xi1> into i1
        %281 = arith.maxf %84, %cst_6 : f32
        %dest_63, %accumulated_value_64 = vector.scan <add>, %184, %57 {inclusive = false, reduction_dim = 0 : i64} : vector<2x12xf32>, vector<12xf32>
        %282 = arith.addf %cst_6, %253 : f32
        %283 = vector.transpose %179, [0] : vector<5xi32> to vector<5xi32>
        %284 = index.maxu %104, %c14
        memref.tensor_store %from_elements, %alloc_13 : memref<2x12xi16>
        %285 = arith.shrsi %c-7223_i16, %c11367_i16 : i16
        memref.assume_alignment %alloc_9, 4 : memref<2x2xf16>
        %286 = math.ceil %cst_4 : f32
        memref.assume_alignment %alloc_12, 1 : memref<5x5x12xf32>
        %alloc_65 = memref.alloc() : memref<5xi64>
        scf.yield %alloc_65 : memref<5xi64>
      }
      %257 = arith.remf %cst, %cst_5 : f16
      %258 = vector.transpose %41, [0] : vector<1xi64> to vector<1xi64>
      %259 = index.floordivs %c3, %rank_37
      %260 = arith.divsi %c268168039_i32, %158 : i32
      %261 = math.log2 %14 : tensor<5x5x12xf32>
      %262 = math.atan %13 : tensor<2x2xf16>
      %263 = vector.shuffle %255, %50 [1, 2, 3, 4, 5, 6, 8] : vector<5xi32>, vector<5xi32>
      %264 = memref.alloca_scope  -> (memref<2x2xi64>) {
        %276 = arith.cmpi sge, %in_55, %c690967306_i64 : i64
        %277 = arith.negf %cst_3 : f32
        %278 = bufferization.to_memref %103 : memref<2x2xf16>
        %279 = math.exp %cst_0 : f32
        %alloc_62 = memref.alloc() : memref<2x12xi64>
        %280 = vector.gather %alloc_62[%c10, %129] [%181], %80, %19 : memref<2x12xi64>, vector<5xi32>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %281 = index.sizeof
        memref.assume_alignment %alloc_62, 16 : memref<2x12xi64>
        %282 = math.cos %cst_5 : f16
        %extracted = tensor.extract %13[%c1, %c0] : tensor<2x2xf16>
        %283 = vector.shuffle %184, %183 [1] : vector<2x12xf32>, vector<2x12xf32>
        %284 = arith.maxsi %false, %false : i1
        %285 = vector.bitcast %280 : vector<5xi64> to vector<5xi64>
        %286 = math.copysign %127, %127 : tensor<2x2xf32>
        %287 = arith.mulf %extracted, %cst_5 : f16
        %288 = math.absf %cst_3 : f32
        %289 = math.roundeven %cst : f16
        %290 = index.mul %c6, %c13
        %291 = math.ctpop %9 : tensor<5x5x12xi1>
        %292 = math.floor %cst_3 : f32
        %293 = math.tan %cst_1 : f16
        %294 = math.ctpop %12 : tensor<2x12xi1>
        %c2081176372_i64 = arith.constant 2081176372 : i64
        %false_63 = index.bool.constant false
        memref.assume_alignment %77, 8 : memref<2x12xi32>
        %inserted_64 = tensor.insert %true_2 into %9[%c2, %c4, %c6] : tensor<5x5x12xi1>
        %295 = vector.shuffle %57, %57 [5, 7, 9, 10, 12, 14, 16, 17, 21] : vector<12xf32>, vector<12xf32>
        %296 = math.sqrt %8 : tensor<5x5x12xf16>
        %297 = math.powf %8, %8 : tensor<5x5x12xf16>
        %298 = math.ctlz %in_56 : i64
        %299 = index.divu %c14, %rank_36
        %300 = arith.minsi %c386112241_i64, %out : i64
        %false_65 = index.bool.constant false
        %alloc_66 = memref.alloc() : memref<2x2xi64>
        memref.alloca_scope.return %alloc_66 : memref<2x2xi64>
      }
      %265 = scf.while (%arg1 = %c-7223_i16) : (i16) -> i16 {
        %splat_62 = tensor.splat %cst_4 : tensor<5x5x12xf32>
        %alloca_63 = memref.alloca() : memref<5x5x12xf32>
        %276 = math.expm1 %cst : f16
        %277 = arith.negf %cst_3 : f32
        %278 = vector.matrix_multiply %19, %19 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
        %279 = vector.broadcast %in : i64 to vector<2xi64>
        %280 = vector.transfer_write %279, %transposed[%c4, %c15, %c13] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xi64>, tensor<12x5x5xi64>
        %281 = tensor.empty() : tensor<5xi16>
        %282 = math.roundeven %13 : tensor<2x2xf16>
        scf.condition(%false) %c11367_i16 : i16
      } do {
      ^bb0(%arg1: i16):
        memref.tensor_store %1, %88 : memref<2x12xi16>
        %276 = math.exp %84 : f32
        %277 = math.roundeven %127 : tensor<2x2xf32>
        %278 = arith.andi %in_56, %c690967306_i64 : i64
        %279 = math.tan %14 : tensor<5x5x12xf32>
        %280 = arith.shli %76, %true : i1
        %281 = arith.negf %84 : f32
        %282 = math.cos %103 : tensor<2x2xf16>
        %283 = math.cttz %false : i1
        memref.assume_alignment %164, 16 : memref<2x12xi1>
        %284 = vector.create_mask %252, %254 : vector<2x2xi1>
        %285 = arith.shrsi %false_57, %false_57 : i1
        %286 = vector.create_mask %c10, %259 : vector<2x12xi1>
        %287 = math.powf %8, %8 : tensor<5x5x12xf16>
        %288 = arith.maxsi %76, %true_2 : i1
        %289 = vector.broadcast %c32449_i16 : i16 to vector<i16>
        vector.transfer_write %289, %88[%151, %151] : vector<i16>, memref<2x12xi16>
        scf.yield %c32449_i16 : i16
      }
      bufferization.dealloc_tensor %4 : tensor<5x5x12xi16>
      %266 = vector.broadcast %cst_6 : f32 to vector<12x12xf32>
      %267 = vector.outerproduct %57, %57, %266 {kind = #vector.kind<minf>} : vector<12xf32>, vector<12xf32>
      %268 = vector.broadcast %cst_6 : f32 to vector<2xf32>
      %dest_59, %accumulated_value_60 = vector.scan <minf>, %183, %268 {inclusive = false, reduction_dim = 1 : i64} : vector<2x12xf32>, vector<2xf32>
      %splat = tensor.splat %cst_4 : tensor<2x12xf32>
      %269 = affine.load %alloc_20[%c2, %c3] : memref<2x2xi1>
      %270 = math.powf %14, %14 : tensor<5x5x12xf32>
      %cast_61 = tensor.cast %1 : tensor<2x12xi16> to tensor<?x?xi16>
      %271 = scf.index_switch %c6 -> memref<5x5x12xi64> 
      case 1 {
        %276 = vector.create_mask %c9, %254 : vector<2x12xi1>
        %277 = math.atan2 %cst_0, %cst_0 : f32
        %278 = vector.shuffle %79, %55 [0, 1, 10, 11] : vector<1xf32>, vector<12xf32>
        %279 = arith.divf %cst_3, %cst_4 : f32
        %cst_62 = arith.constant 0x4D508C69 : f32
        %280 = arith.ori %158, %141 : i32
        %281 = vector.multi_reduction <add>, %181, %50 [] : vector<5xi32> to vector<5xi32>
        %282 = index.mul %85, %252
        vector.print %179 : vector<5xi32>
        %283 = math.absi %in : i64
        %284 = arith.andi %c690967306_i64, %22 : i64
        %285 = index.casts %rank_36 : index to i32
        %286 = math.exp %14 : tensor<5x5x12xf32>
        %287 = math.log2 %168 : f32
        memref.assume_alignment %alloc_11, 8 : memref<5xi32>
        %288 = arith.shrsi %c386112241_i64, %in : i64
        scf.yield %alloc_10 : memref<5x5x12xi64>
      }
      case 2 {
        %276 = vector.transpose %179, [0] : vector<5xi32> to vector<5xi32>
        %277 = math.fma %10, %13, %103 : tensor<2x2xf16>
        memref.assume_alignment %alloc_11, 16 : memref<5xi32>
        affine.store %158, %77[%c6, %c4] : memref<2x12xi32>
        %cast_62 = tensor.cast %20 : tensor<i32> to tensor<i32>
        memref.assume_alignment %alloc_21, 1 : memref<5x5x12xi32>
        %278 = arith.addi %false, %true : i1
        %279 = bufferization.to_memref %6 : memref<5xi1>
        memref.assume_alignment %92, 16 : memref<5xi32>
        %280 = bufferization.clone %alloc_20 : memref<2x2xi1> to memref<2x2xi1>
        %281 = arith.addf %84, %253 : f32
        %282 = math.fma %cst_5, %cst_5, %cst_5 : f16
        %283 = index.maxu %c2, %rank_36
        %284 = math.log1p %10 : tensor<2x2xf16>
        %285 = math.absi %20 : tensor<i32>
        %286 = math.fma %cst_6, %84, %168 : f32
        scf.yield %alloc_10 : memref<5x5x12xi64>
      }
      default {
        %276 = arith.mulf %84, %cst_4 : f32
        %rank_62 = tensor.rank %12 : tensor<2x12xi1>
        %277 = arith.maxf %253, %cst_3 : f32
        %278 = vector.reduction <maxui>, %52 : vector<5xi32> into i32
        %279 = arith.divf %168, %cst_6 : f32
        %280 = math.atan2 %13, %13 : tensor<2x2xf16>
        %281 = arith.maxui %c32449_i16, %c11367_i16 : i16
        %282 = vector.insert %true_2, %56 [4] : i1 into vector<12xi1>
        %283 = bufferization.to_memref %collapsed : memref<24xi16>
        %284 = arith.remf %cst_5, %cst : f16
        %285 = index.sub %85, %c0
        %286 = vector.shuffle %183, %183 [0, 3] : vector<2x12xf32>, vector<2x12xf32>
        bufferization.dealloc_tensor %14 : tensor<5x5x12xf32>
        %287 = math.absi %2 : tensor<2x2xi16>
        %288 = memref.realloc %alloc_11 : memref<5xi32> to memref<5xi32>
        %289 = math.cos %8 : tensor<5x5x12xf16>
        scf.yield %alloc_10 : memref<5x5x12xi64>
      }
      affine.for %arg1 = 0 to 116 {
      }
      memref.copy %alloc_11, %alloc_23 : memref<5xi32> to memref<5xi32>
      %272 = vector.broadcast %c386112241_i64 : i64 to vector<i64>
      vector.transfer_write %272, %256[%rank] : vector<i64>, memref<5xi64>
      %273 = arith.shli %c11367_i16, %c-3537_i16 : i16
      %274 = index.castu %259 : index to i32
      %275 = arith.shli %141, %141 : i32
      linalg.yield %c386112241_i64 : i64
    } -> tensor<12x5x5xi64>
    %192 = arith.cmpi ule, %158, %141 : i32
    %193 = bufferization.to_memref %12 : memref<2x12xi1>
    %194 = scf.while (%arg1 = %alloc_8) : (memref<2x12xf16>) -> memref<2x12xf16> {
      %252 = vector.broadcast %c32449_i16 : i16 to vector<12xi16>
      %253 = vector.maskedload %alloc_13[%c1, %c2], %56, %252 : memref<2x12xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
      %254 = arith.divf %cst_3, %cst_6 : f32
      %255 = vector.multi_reduction <add>, %50, %141 [0] : vector<5xi32> to i32
      %256 = arith.shrsi %141, %c268168039_i32 : i32
      %257 = vector.create_mask %104 : vector<5xi1>
      %258 = math.absf %84 : f32
      %259 = math.cttz %3 : tensor<2x2xi64>
      %260 = scf.index_switch %rank -> f16 
      case 1 {
        %261 = arith.mulf %84, %cst_6 : f32
        %262 = vector.broadcast %168 : f32 to vector<2xf32>
        %dest_55, %accumulated_value_56 = vector.scan <minf>, %183, %262 {inclusive = false, reduction_dim = 1 : i64} : vector<2x12xf32>, vector<2xf32>
        %263 = vector.broadcast %76 : i1 to vector<5x5xi1>
        %264 = vector.outerproduct %257, %257, %263 {kind = #vector.kind<xor>} : vector<5xi1>, vector<5xi1>
        %265 = vector.multi_reduction <and>, %80, %257 [] : vector<5xi1> to vector<5xi1>
        %266 = math.atan %cst_5 : f16
        %267 = arith.addf %cst_5, %cst : f16
        %268 = arith.ceildivsi %c11367_i16, %c-7223_i16 : i16
        affine.store %cst_3, %alloc_12[%c12, %c5, %c5] : memref<5x5x12xf32>
        %269 = math.log1p %162 : tensor<2x2xf16>
        %270 = math.absf %14 : tensor<5x5x12xf32>
        %271 = vector.broadcast %70 : index to vector<2xindex>
        %272 = vector.broadcast %true_2 : i1 to vector<2xi1>
        %273 = vector.broadcast %c-3537_i16 : i16 to vector<2xi16>
        vector.scatter %alloc_17[%c1, %c3, %c1] [%271], %272, %273 : memref<5x5x12xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        %274 = vector.load %164[%c1, %c11] : memref<2x12xi1>, vector<5x5x12xi1>
        vector.print %60 : vector<5xi1>
        %275 = math.sqrt %cst_1 : f16
        %276 = vector.broadcast %22 : i64 to vector<5x5x12xi64>
        %277 = math.fma %cst_1, %cst_1, %cst_1 : f16
        scf.yield %cst_5 : f16
      }
      case 2 {
        %261 = memref.atomic_rmw mins %c11367_i16, %88[%c0, %c8] : (i16, memref<2x12xi16>) -> i16
        %262 = index.mul %c12, %c9
        %263 = arith.xori %true_2, %false : i1
        %264 = vector.flat_transpose %51 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        %265 = math.cos %13 : tensor<2x2xf16>
        %266 = math.rsqrt %cst_5 : f16
        %267 = math.rsqrt %8 : tensor<5x5x12xf16>
        %268 = arith.remsi %c-3537_i16, %c11367_i16 : i16
        %269 = vector.extract %257[0] : vector<5xi1>
        memref.assume_alignment %alloc_20, 16 : memref<2x2xi1>
        %inserted_55 = tensor.insert %cst_5 into %13[%c1, %c1] : tensor<2x2xf16>
        memref.store %cst_5, %alloc_9[%c1, %c1] : memref<2x2xf16>
        %270 = math.cttz %9 : tensor<5x5x12xi1>
        %271 = math.ceil %8 : tensor<5x5x12xf16>
        %rank_56 = tensor.rank %10 : tensor<2x2xf16>
        %alloc_57 = memref.alloc() : memref<5x5x12xf32>
        memref.copy %alloc_12, %alloc_57 : memref<5x5x12xf32> to memref<5x5x12xf32>
        scf.yield %cst_5 : f16
      }
      case 3 {
        %261 = math.log1p %168 : f32
        %262 = vector.broadcast %true : i1 to vector<2x2xi1>
        %263 = vector.transfer_write %262, %9[%104, %c8, %98] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<2x2xi1>, tensor<5x5x12xi1>
        %264 = tensor.empty() : tensor<12x2xi1>
        %265 = tensor.empty() : tensor<2x2xi1>
        %266 = linalg.matmul ins(%16, %264 : tensor<2x12xi1>, tensor<12x2xi1>) outs(%265 : tensor<2x2xi1>) -> tensor<2x2xi1>
        %267 = vector.broadcast %true : i1 to vector<12x12xi1>
        %268 = vector.outerproduct %56, %56, %267 {kind = #vector.kind<minsi>} : vector<12xi1>, vector<12xi1>
        %269 = vector.insert %c268168039_i32, %181 [1] : i32 into vector<5xi32>
        %270 = arith.xori %c690967306_i64, %c690967306_i64 : i64
        %271 = vector.broadcast %255 : i32 to vector<2x5xi32>
        %272 = vector.transfer_write %271, %0[%113, %87, %70] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<2x5xi32>, tensor<5x5x12xi32>
        %273 = vector.broadcast %141 : i32 to vector<2xi32>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %50, %271, %273 : vector<5xi32>, vector<2x5xi32> into vector<2xi32>
        %275 = affine.min affine_map<(d0, d1, d2) -> (d2 floordiv 128, d1 * 8, d2 floordiv 128, -d2)>(%151, %c1, %c6)
        %276 = arith.remui %false, %76 : i1
        %277 = math.atan %cst_1 : f16
        %278 = affine.load %arg1[%c2, %c3] : memref<2x12xf16>
        memref.assume_alignment %alloc_23, 4 : memref<5xi32>
        %279 = arith.mulf %cst_3, %cst_0 : f32
        %280 = arith.muli %c11367_i16, %c-3537_i16 : i16
        affine.store %22, %alloc_10[%c1, %c9, %c4] : memref<5x5x12xi64>
        scf.yield %cst_5 : f16
      }
      default {
        %rank_55 = tensor.rank %8 : tensor<5x5x12xf16>
        memref.tensor_store %162, %alloc_9 : memref<2x2xf16>
        %261 = math.exp %162 : tensor<2x2xf16>
        %262 = arith.shrui %c11367_i16, %c32449_i16 : i16
        %263 = index.maxs %113, %c9
        %264 = math.ceil %10 : tensor<2x2xf16>
        %265 = bufferization.clone %148 : memref<i32> to memref<i32>
        vector.print %79 : vector<1xf32>
        %266 = bufferization.to_tensor %alloc_9 : memref<2x2xf16>
        %267 = arith.negf %cst_6 : f32
        %268 = arith.addi %false, %true_2 : i1
        affine.store %c11367_i16, %alloc_17[%c1, %c9, %c13] : memref<5x5x12xi16>
        %269 = arith.remui %c32449_i16, %c11367_i16 : i16
        %270 = vector.multi_reduction <maxui>, %257, %60 [] : vector<5xi1> to vector<5xi1>
        %271 = vector.transpose %56, [0] : vector<12xi1> to vector<12xi1>
        %272 = math.powf %84, %cst_0 : f32
        scf.yield %cst_5 : f16
      }
      scf.condition(%true_2) %arg1 : memref<2x12xf16>
    } do {
    ^bb0(%arg1: memref<2x12xf16>):
      %252 = math.absf %cst_1 : f16
      %253 = arith.shrsi %true, %true : i1
      %254 = vector.broadcast %22 : i64 to vector<2xi64>
      %255 = vector.transfer_write %254, %15[%rank_29, %rank_36, %c11] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<2xi64>, tensor<5x5x12xi64>
      %256 = math.cos %13 : tensor<2x2xf16>
      %257 = math.ctlz %5 : tensor<2x2xi32>
      %258 = vector.matrix_multiply %57, %57 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
      %259 = math.exp2 %cst_4 : f32
      %260 = math.exp %cst_0 : f32
      %261 = vector.insert %true, %60 [3] : i1 into vector<5xi1>
      %262 = math.cttz %true_2 : i1
      %false_55 = index.bool.constant false
      %263 = scf.index_switch %c13 -> memref<2x12xi16> 
      case 1 {
        %266 = math.ctpop %31 : tensor<2x2xi1>
        %267 = arith.shli %c11367_i16, %c-7223_i16 : i16
        %268 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %dest_57, %accumulated_value_58 = vector.scan <minf>, %183, %268 {inclusive = true, reduction_dim = 1 : i64} : vector<2x12xf32>, vector<2xf32>
        %269 = math.exp %10 : tensor<2x2xf16>
        %270 = index.mul %98, %c4
        %271 = memref.atomic_rmw minf %cst, %arg1[%c0, %c10] : (f16, memref<2x12xf16>) -> f16
        %272 = arith.negf %cst : f16
        %extracted = tensor.extract %4[%c0, %c4, %c9] : tensor<5x5x12xi16>
        %alloc_59 = memref.alloc() : memref<5x5x12xf32>
        %273 = vector.broadcast %87 : index to vector<2xindex>
        %274 = vector.broadcast %true : i1 to vector<2xi1>
        vector.scatter %alloc_10[%c0, %c2, %c10] [%273], %274, %254 : memref<5x5x12xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %275 = math.log2 %cst_4 : f32
        %276 = arith.minui %141, %158 : i32
        %277 = arith.muli %22, %c690967306_i64 : i64
        %278 = arith.shrsi %c11367_i16, %c11367_i16 : i16
        %279 = vector.broadcast %c268168039_i32 : i32 to vector<2x2xi32>
        %280 = affine.max affine_map<(d0) -> (-(d0 - 16), (d0 floordiv 32) floordiv 16)>(%rank_36)
        scf.yield %alloc_13 : memref<2x12xi16>
      }
      case 2 {
        %266 = arith.shrui %true_2, %76 : i1
        %267 = math.cos %cst_1 : f16
        %268 = vector.splat %149 : vector<2x12xindex>
        %269 = vector.broadcast %c9 : index to vector<2xindex>
        %270 = vector.broadcast %false : i1 to vector<2xi1>
        %271 = vector.broadcast %cst_4 : f32 to vector<2xf32>
        vector.scatter %alloc_15[%c1, %c5] [%269], %270, %271 : memref<2x12xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
        %splat = tensor.splat %c11367_i16 : tensor<2x12xi16>
        %272 = index.maxs %129, %27
        %rank_57 = tensor.rank %generated : tensor<?x?x12xi64>
        %273 = math.absi %11 : tensor<2x12xi16>
        %274 = math.powf %cst_5, %cst : f16
        %275 = arith.divsi %158, %c268168039_i32 : i32
        %276 = math.cttz %0 : tensor<5x5x12xi32>
        %277 = math.atan %cst_5 : f16
        %278 = math.absf %cst_6 : f32
        %279 = arith.muli %c-7223_i16, %c11367_i16 : i16
        %from_elements_58 = tensor.from_elements %false_55, %false, %76, %true_2 : tensor<2x2xi1>
        %280 = vector.multi_reduction <add>, %184, %cst_6 [0, 1] : vector<2x12xf32> to f32
        scf.yield %alloc_7 : memref<2x12xi16>
      }
      default {
        %266 = vector.broadcast %cst_6 : f32 to vector<12x12xf32>
        %267 = vector.outerproduct %57, %55, %266 {kind = #vector.kind<minf>} : vector<12xf32>, vector<12xf32>
        memref.tensor_store %0, %alloc_21 : memref<5x5x12xi32>
        memref.store %c268168039_i32, %alloc_21[%c1, %c1, %c6] : memref<5x5x12xi32>
        %268 = math.log1p %cst_1 : f16
        %269 = index.divu %149, %c3
        affine.store %141, %alloc_16[%c8] : memref<5xi32>
        affine.store %c268168039_i32, %92[%c1] : memref<5xi32>
        affine.store %84, %alloc_15[%c9, %c10] : memref<2x12xf32>
        %270 = index.mul %c10, %c15
        vector.print %181 : vector<5xi32>
        %271 = index.sizeof
        %272 = math.absf %14 : tensor<5x5x12xf32>
        %273 = arith.divsi %true_2, %true_2 : i1
        %274 = vector.multi_reduction <maxf>, %184, %cst_0 [0, 1] : vector<2x12xf32> to f32
        %275 = vector.broadcast %271 : index to vector<5xindex>
        %276 = vector.broadcast %cst_1 : f16 to vector<5xf16>
        vector.scatter %arg1[%c0, %c5] [%275], %60, %276 : memref<2x12xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
        %277 = arith.remf %168, %168 : f32
        scf.yield %88 : memref<2x12xi16>
      }
      %264 = memref.atomic_rmw muli %22, %alloc_10[%c4, %c2, %c8] : (i64, memref<5x5x12xi64>) -> i64
      memref.tensor_store %10, %alloc_9 : memref<2x2xf16>
      %inserted_56 = tensor.insert %true into %12[%c0, %c4] : tensor<2x12xi1>
      %265 = scf.if %false_55 -> (memref<2x12xf32>) {
        %266 = math.absi %1 : tensor<2x12xi16>
        %267 = math.fma %127, %127, %127 : tensor<2x2xf32>
        %268 = math.ctlz %c32449_i16 : i16
        %269 = arith.minui %false, %false_55 : i1
        memref.store %c11367_i16, %alloc_7[%c1, %c6] : memref<2x12xi16>
        %270 = arith.divsi %c690967306_i64, %c386112241_i64 : i64
        %271 = vector.broadcast %c-3537_i16 : i16 to vector<5xi16>
        %272 = vector.transfer_write %271, %2[%c9, %c5] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xi16>, tensor<2x2xi16>
        %273 = vector.load %alloc_20[%c1, %c0] : memref<2x2xi1>, vector<5xi1>
        scf.yield %alloc_15 : memref<2x12xf32>
      } else {
        %266 = arith.ceildivsi %158, %158 : i32
        %267 = math.ctpop %11 : tensor<2x12xi16>
        %false_57 = index.bool.constant false
        %268 = math.log1p %127 : tensor<2x2xf32>
        %269 = arith.shli %true, %true_2 : i1
        %270 = arith.xori %22, %22 : i64
        %alloc_58 = memref.alloc() : memref<5xi32>
        %271 = bufferization.to_memref %3 : memref<2x2xi64>
        scf.yield %alloc_15 : memref<2x12xf32>
      }
      scf.yield %alloc_8 : memref<2x12xf16>
    }
    %195 = arith.ceildivsi %false, %76 : i1
    %196 = math.roundeven %168 : f32
    memref.store %158, %alloc_21[%c2, %c2, %c1] : memref<5x5x12xi32>
    %197 = arith.ori %c-7223_i16, %c32449_i16 : i16
    %198 = tensor.empty() : tensor<2x2xf32>
    %mapped = linalg.map ins(%alloc : memref<2x2xf32>) outs(%198 : tensor<2x2xf32>)
      (%in: f32) {
        %252 = index.floordivs %c14, %rank
        %253 = arith.cmpi eq, %true_2, %true : i1
        %254 = tensor.empty() : tensor<2x2xf16>
        %255 = linalg.matmul ins(%13, %103 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%254 : tensor<2x2xf16>) -> tensor<2x2xf16>
        %256 = bufferization.to_tensor %alloc_23 : memref<5xi32>
        %257 = vector.matrix_multiply %181, %179 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi32>, vector<5xi32>) -> vector<1xi32>
        %258 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 - 32)>(%c8, %c0, %c12, %151)
        %259 = arith.andi %c32449_i16, %c-7223_i16 : i16
        %alloc_55 = memref.alloc() : memref<2x2xi1>
        %260 = vector.broadcast %c268168039_i32 : i32 to vector<5x5xi32>
        %261 = vector.outerproduct %181, %50, %260 {kind = #vector.kind<maxsi>} : vector<5xi32>, vector<5xi32>
        %262 = math.copysign %127, %198 : tensor<2x2xf32>
        %263 = memref.atomic_rmw maxu %c-3537_i16, %alloc_13[%c1, %c7] : (i16, memref<2x12xi16>) -> i16
        %splat = tensor.splat %168 : tensor<2x2xf32>
        %264 = scf.if %true -> (memref<5xi32>) {
          %286 = math.absi %c690967306_i64 : i64
          %287 = bufferization.clone %92 : memref<5xi32> to memref<5xi32>
          %288 = arith.xori %c-7223_i16, %c11367_i16 : i16
          memref.assume_alignment %alloc_23, 8 : memref<5xi32>
          %289 = arith.shrsi %false, %true_2 : i1
          %290 = index.mul %c4, %113
          %291 = math.absi %21 : tensor<i32>
          %292 = arith.maxsi %c32449_i16, %c11367_i16 : i16
          scf.yield %92 : memref<5xi32>
        } else {
          %286 = index.maxu %c10, %c0
          %287 = math.fma %127, %127, %127 : tensor<2x2xf32>
          %288 = memref.realloc %92 : memref<5xi32> to memref<2xi32>
          %289 = vector.maskedload %alloc_18[%c3], %56, %57 : memref<5xf32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
          %alloc_59 = memref.alloc() : memref<2x12xf16>
          memref.copy %alloc_8, %alloc_59 : memref<2x12xf16> to memref<2x12xf16>
          %290 = math.ctlz %1 : tensor<2x12xi16>
          %291 = arith.divsi %false, %true_2 : i1
          %292 = vector.transpose %183, [0, 1] : vector<2x12xf32> to vector<2x12xf32>
          scf.yield %alloc_16 : memref<5xi32>
        }
        %265 = tensor.empty() : tensor<5x5xi64>
        %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%265 : tensor<5x5xi64>) outs(%15 : tensor<5x5x12xi64>) {
        ^bb0(%in_59: i64, %out: i64):
          %286 = arith.addf %cst_5, %cst : f16
          %287 = math.absf %cst_4 : f32
          %288 = affine.load %alloc_17[%c13, %c6, %c13] : memref<5x5x12xi16>
          %289 = bufferization.to_tensor %148 : memref<i32>
          %290 = math.exp %14 : tensor<5x5x12xf32>
          %291 = math.exp2 %cst_3 : f32
          %292 = vector.extract %79[0] : vector<1xf32>
          %293 = arith.ceildivsi %false, %76 : i1
          %294 = vector.insert %true_2, %91 [5] : i1 into vector<60xi1>
          %295 = arith.muli %c268168039_i32, %141 : i32
          %296 = math.expm1 %splat : tensor<2x2xf32>
          %297 = arith.negf %cst_4 : f32
          %298 = math.cos %103 : tensor<2x2xf16>
          %299 = math.exp2 %168 : f32
          %300 = arith.maxsi %in_59, %c690967306_i64 : i64
          %301 = math.ceil %103 : tensor<2x2xf16>
          %302 = index.sub %c4, %252
          %303 = math.ceil %cst_5 : f16
          %304 = bufferization.to_tensor %264 : memref<5xi32>
          %305 = math.log1p %8 : tensor<5x5x12xf16>
          %306 = bufferization.clone %88 : memref<2x12xi16> to memref<2x12xi16>
          %307 = index.sizeof
          %308 = arith.shrui %in_59, %c386112241_i64 : i64
          %309 = tensor.empty() : tensor<12x2xi16>
          %310 = tensor.empty() : tensor<2x2xi16>
          %311 = linalg.matmul ins(%1, %309 : tensor<2x12xi16>, tensor<12x2xi16>) outs(%310 : tensor<2x2xi16>) -> tensor<2x2xi16>
          %312 = index.sizeof
          %313 = arith.xori %c386112241_i64, %22 : i64
          %314 = vector.transpose %41, [0] : vector<1xi64> to vector<1xi64>
          %315 = vector.broadcast %cst_5 : f16 to vector<2xf16>
          %316 = vector.broadcast %false : i1 to vector<2xi1>
          %317 = vector.maskedload %alloc_22[%c0], %316, %315 : memref<5xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
          %318 = memref.load %alloc_21[%c3, %c3, %c5] : memref<5x5x12xi32>
          %inserted_60 = tensor.insert %in into %14[%c1, %c1, %c3] : tensor<5x5x12xf32>
          %319 = vector.broadcast %rank_36 : index to vector<5xindex>
          %320 = vector.broadcast %cst_6 : f32 to vector<5xf32>
          vector.scatter %alloc[%c0, %c1] [%319], %80, %320 : memref<2x2xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
          %321 = vector.multi_reduction <maxf>, %55, %57 [] : vector<12xf32> to vector<12xf32>
          linalg.yield %c690967306_i64 : i64
        } -> tensor<5x5x12xi64>
        %267 = math.powf %cst_4, %168 : f32
        %268 = vector.broadcast %cst_3 : f32 to vector<5x5x12xf32>
        %269 = vector.fma %268, %268, %268 : vector<5x5x12xf32>
        %270 = math.sqrt %8 : tensor<5x5x12xf16>
        %271 = affine.apply affine_map<(d0) -> (-d0 - 136)>(%c0)
        %272 = vector.broadcast %c690967306_i64 : i64 to vector<5x5xi64>
        %273 = vector.outerproduct %19, %19, %272 {kind = #vector.kind<add>} : vector<5xi64>, vector<5xi64>
        %274 = arith.ceildivsi %158, %141 : i32
        %275 = math.log1p %splat : tensor<2x2xf32>
        %true_56 = arith.constant true
        %276 = arith.minsi %c690967306_i64, %22 : i64
        %277 = math.atan %splat : tensor<2x2xf32>
        %278 = math.log2 %splat : tensor<2x2xf32>
        %279 = math.log10 %cst : f16
        %280 = bufferization.to_memref %0 : memref<5x5x12xi32>
        %281 = arith.addf %cst_4, %in : f32
        %282 = math.powf %cst_6, %168 : f32
        %283 = tensor.empty() : tensor<12x5x5xi64>
        %mapped_57 = linalg.map ins(%18, %18 : tensor<12x5x5xi64>, tensor<12x5x5xi64>) outs(%283 : tensor<12x5x5xi64>)
          (%in_59: i64, %in_60: i64) {
            %286 = index.sizeof
            %287 = math.fma %198, %198, %splat : tensor<2x2xf32>
            %288 = bufferization.to_tensor %alloc_14 : memref<2x2xi32>
            %289 = math.absf %cst_0 : f32
            %alloca_61 = memref.alloca() : memref<5x5x12xi1>
            memref.store %141, %alloc_16[%c0] : memref<5xi32>
            memref.assume_alignment %alloc_17, 1 : memref<5x5x12xi16>
            %290 = bufferization.to_tensor %alloc_13 : memref<2x12xi16>
            %291 = memref.realloc %alloc_18 : memref<5xf32> to memref<2xf32>
            memref.tensor_store %198, %alloc : memref<2x2xf32>
            %292 = math.roundeven %168 : f32
            %293 = math.ipowi %in_59, %in_60 : i64
            memref.tensor_store %16, %193 : memref<2x12xi1>
            %294 = arith.negf %cst_3 : f32
            memref.assume_alignment %alloc_9, 1 : memref<2x2xf16>
            %295 = arith.shrui %false, %true : i1
            %296 = index.maxu %271, %98
            %297 = arith.minui %141, %158 : i32
            %298 = bufferization.clone %alloc_21 : memref<5x5x12xi32> to memref<5x5x12xi32>
            %299 = vector.transpose %183, [0, 1] : vector<2x12xf32> to vector<2x12xf32>
            %300 = vector.broadcast %27 : index to vector<2xindex>
            %301 = vector.broadcast %false : i1 to vector<2xi1>
            %302 = vector.broadcast %141 : i32 to vector<2xi32>
            vector.scatter %148[] [%300], %301, %302 : memref<i32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
            %303 = arith.addi %c268168039_i32, %141 : i32
            %304 = arith.divui %in_60, %in_59 : i64
            %305 = memref.load %280[%c4, %c2, %c3] : memref<5x5x12xi32>
            %306 = bufferization.to_memref %254 : memref<2x2xf16>
            %splat_62 = tensor.splat %in_59 : tensor<2x12xi64>
            %307 = math.exp2 %10 : tensor<2x2xf16>
            %308 = math.atan2 %14, %14 : tensor<5x5x12xf32>
            %309 = vector.broadcast %258 : index to vector<12xindex>
            vector.scatter %193[%c1, %c10] [%309], %56, %56 : memref<2x12xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
            %310 = math.sqrt %96 : tensor<5xf16>
            %311 = arith.addf %84, %in : f32
            memref.store %c-3537_i16, %88[%c1, %c7] : memref<2x12xi16>
            %c1_i64 = arith.constant 1 : i64
            linalg.yield %c1_i64 : i64
          }
        %284 = arith.shli %c-7223_i16, %c-3537_i16 : i16
        %285 = vector.flat_transpose %57 {columns = 3 : i32, rows = 4 : i32} : vector<12xf32> -> vector<12xf32>
        %cst_58 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_58 : f32
      }
    %alloc_44 = memref.alloc() : memref<5x5xi1>
    %199 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_44, %9 : memref<5x5xi1>, tensor<5x5x12xi1>) outs(%9 : tensor<5x5x12xi1>) {
    ^bb0(%in: i1, %in_55: i1, %out: i1):
      %252 = arith.subi %c-7223_i16, %c11367_i16 : i16
      %253 = arith.shrsi %c690967306_i64, %22 : i64
      memref.copy %alloc_19, %alloc : memref<2x2xf32> to memref<2x2xf32>
      memref.copy %92, %alloc_11 : memref<5xi32> to memref<5xi32>
      %254 = vector.broadcast %cst_0 : f32 to vector<2x12xf32>
      %255 = vector.fma %254, %183, %254 : vector<2x12xf32>
      %256 = affine.apply affine_map<(d0, d1) -> ((((d1 floordiv 4) ceildiv 64) ceildiv 64) ceildiv 8)>(%129, %c2)
      %257 = index.floordivs %c0, %153
      %258 = math.cos %cst_4 : f32
      %259 = math.atan2 %10, %10 : tensor<2x2xf16>
      %260 = math.log2 %8 : tensor<5x5x12xf16>
      %261 = vector.broadcast %141 : i32 to vector<5x5xi32>
      %262 = vector.outerproduct %181, %52, %261 {kind = #vector.kind<or>} : vector<5xi32>, vector<5xi32>
      %263 = math.roundeven %cst_3 : f32
      scf.index_switch %37 
      case 1 {
        %286 = vector.bitcast %56 : vector<12xi1> to vector<12xi1>
        %287 = index.casts %true_2 : i1 to index
        %288 = math.tanh %cst_5 : f16
        %dest_60, %accumulated_value_61 = vector.scan <maxf>, %255, %57 {inclusive = true, reduction_dim = 0 : i64} : vector<2x12xf32>, vector<12xf32>
        %false_62 = index.bool.constant false
        %289 = math.absf %168 : f32
        memref.copy %alloc, %alloc_19 : memref<2x2xf32> to memref<2x2xf32>
        %290 = index.castu %158 : i32 to index
        %291 = math.absi %3 : tensor<2x2xi64>
        %292 = index.maxs %87, %c10
        %293 = vector.create_mask %70, %c12, %rank_37 : vector<5x5x12xi1>
        %294 = arith.maxf %cst_5, %cst_1 : f16
        %295 = math.atan %cst_1 : f16
        %296 = arith.divsi %c-7223_i16, %c11367_i16 : i16
        %297 = index.sizeof
        %298 = arith.shli %in, %76 : i1
        scf.yield
      }
      case 2 {
        %286 = arith.andi %158, %c268168039_i32 : i32
        %287 = bufferization.to_memref %8 : memref<5x5x12xf16>
        %cast_60 = tensor.cast %18 : tensor<12x5x5xi64> to tensor<?x?x?xi64>
        %dest_61, %accumulated_value_62 = vector.scan <minf>, %254, %57 {inclusive = false, reduction_dim = 0 : i64} : vector<2x12xf32>, vector<12xf32>
        %288 = arith.floordivsi %158, %c268168039_i32 : i32
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %91, %91, %in_55 : vector<60xi1>, vector<60xi1> into i1
        %290 = bufferization.to_memref %16 : memref<2x12xi1>
        %291 = vector.shuffle %41, %19 [0, 1, 3, 4] : vector<1xi64>, vector<5xi64>
        %292 = math.log1p %cst_6 : f32
        %293 = math.log2 %103 : tensor<2x2xf16>
        %294 = math.atan %cst_5 : f16
        %295 = index.sizeof
        vector.print %50 : vector<5xi32>
        %296 = math.atan2 %13, %10 : tensor<2x2xf16>
        %297 = arith.divsi %true_2, %76 : i1
        %298 = math.sqrt %10 : tensor<2x2xf16>
        scf.yield
      }
      default {
        %286 = math.fma %cst_1, %cst_5, %cst_5 : f16
        %287 = index.maxu %147, %rank_37
        %288 = arith.shli %in_55, %false : i1
        %289 = vector.transpose %179, [0] : vector<5xi32> to vector<5xi32>
        %290 = math.fma %cst_0, %84, %168 : f32
        %291 = vector.broadcast %cst_0 : f32 to vector<12x12xf32>
        %292 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %184, %255, %291 : vector<2x12xf32>, vector<2x12xf32> into vector<12x12xf32>
        %293 = arith.maxui %141, %158 : i32
        %294 = memref.realloc %alloc_11 : memref<5xi32> to memref<2xi32>
        %295 = arith.muli %76, %true : i1
        %296 = arith.addf %84, %cst_0 : f32
        %297 = memref.atomic_rmw andi %158, %alloc_16[%c3] : (i32, memref<5xi32>) -> i32
        %splat = tensor.splat %out : tensor<2x2xi1>
        %298 = math.exp %cst_1 : f16
        %299 = arith.remui %22, %c690967306_i64 : i64
        %300 = math.powf %198, %198 : tensor<2x2xf32>
        %301 = bufferization.to_memref %15 : memref<5x5x12xi64>
      }
      %264 = affine.for %arg1 = 0 to 88 iter_args(%arg2 = %alloc_22) -> (memref<5xf16>) {
        affine.yield %arg2 : memref<5xf16>
      }
      %265 = bufferization.to_tensor %alloc_17 : memref<5x5x12xi16>
      %266 = memref.realloc %alloc_16 : memref<5xi32> to memref<2xi32>
      %267 = memref.alloca_scope  -> (i64) {
        %286 = arith.remui %c11367_i16, %c-3537_i16 : i16
        %287 = math.atan %13 : tensor<2x2xf16>
        %288 = math.roundeven %103 : tensor<2x2xf16>
        memref.tensor_store %13, %alloc_9 : memref<2x2xf16>
        %false_60 = index.bool.constant false
        %289 = index.floordivs %c13, %27
        %290 = arith.maxui %true_2, %in_55 : i1
        %291 = index.mul %c2, %c14
        %292 = index.maxu %126, %289
        %293 = math.ipowi %c-7223_i16, %c11367_i16 : i16
        %294 = arith.minf %cst_1, %cst_1 : f16
        %295 = vector.matrix_multiply %19, %19 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
        %296 = vector.shuffle %52, %52 [0, 1, 2, 4, 5, 9] : vector<5xi32>, vector<5xi32>
        %297 = arith.muli %in_55, %in : i1
        %cast_61 = tensor.cast %3 : tensor<2x2xi64> to tensor<?x?xi64>
        %298 = vector.broadcast %84 : f32 to vector<5x5x12xf32>
        %299 = vector.fma %298, %298, %298 : vector<5x5x12xf32>
        %300 = index.mul %c14, %289
        %301 = arith.remf %84, %168 : f32
        %302 = vector.broadcast %in : i1 to vector<2x12xi1>
        %303 = vector.broadcast %c268168039_i32 : i32 to vector<2x12xi32>
        %304 = vector.gather %12[%291, %289] [%303], %302, %302 : tensor<2x12xi1>, vector<2x12xi32>, vector<2x12xi1>, vector<2x12xi1> into vector<2x12xi1>
        %305 = bufferization.to_tensor %alloc_13 : memref<2x12xi16>
        %306 = vector.broadcast %in : i1 to vector<2xi1>
        %307 = vector.multi_reduction <maxsi>, %304, %306 [1] : vector<2x12xi1> to vector<2xi1>
        %308 = math.ctpop %20 : tensor<i32>
        %309 = vector.create_mask %c12, %c6 : vector<2x12xi1>
        %310 = arith.floordivsi %141, %c268168039_i32 : i32
        %311 = math.log1p %10 : tensor<2x2xf16>
        %312 = vector.load %alloc_16[%c0] : memref<5xi32>, vector<5xi32>
        %313 = bufferization.to_memref %0 : memref<5x5x12xi32>
        %314 = memref.atomic_rmw maxu %c268168039_i32, %alloc_14[%c1, %c1] : (i32, memref<2x2xi32>) -> i32
        memref.assume_alignment %alloc_23, 2 : memref<5xi32>
        %315 = vector.shuffle %183, %183 [2] : vector<2x12xf32>, vector<2x12xf32>
        memref.assume_alignment %alloc_12, 8 : memref<5x5x12xf32>
        %316 = bufferization.to_tensor %alloc_10 : memref<5x5x12xi64>
        memref.alloca_scope.return %c386112241_i64 : i64
      }
      %268 = vector.broadcast %out : i1 to vector<5x5xi1>
      %269 = vector.outerproduct %60, %80, %268 {kind = #vector.kind<add>} : vector<5xi1>, vector<5xi1>
      %270 = math.powf %cst_0, %cst_0 : f32
      %271 = vector.broadcast %cst_3 : f32 to vector<2xf32>
      %dest_56, %accumulated_value_57 = vector.scan <maxf>, %255, %271 {inclusive = false, reduction_dim = 1 : i64} : vector<2x12xf32>, vector<2xf32>
      %272 = vector.extract %254[0] : vector<2x12xf32>
      %273 = vector.broadcast %cst : f16 to vector<2x2xf16>
      %274 = vector.broadcast %in_55 : i1 to vector<2x2xi1>
      %275 = vector.broadcast %158 : i32 to vector<2x2xi32>
      %276 = vector.gather %alloc_22[%151] [%275], %274, %273 : memref<5xf16>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xf16> into vector<2x2xf16>
      %277 = arith.remui %in_55, %76 : i1
      %rank_58 = tensor.rank %14 : tensor<5x5x12xf32>
      %278 = vector.shuffle %184, %183 [0, 1] : vector<2x12xf32>, vector<2x12xf32>
      %alloc_59 = memref.alloc() : memref<12x12xi1>
      %279 = tensor.empty() : tensor<2x12xi1>
      %280 = linalg.matmul ins(%16, %alloc_59 : tensor<2x12xi1>, memref<12x12xi1>) outs(%279 : tensor<2x12xi1>) -> tensor<2x12xi1>
      memref.tensor_store %162, %alloc_9 : memref<2x2xf16>
      %281 = memref.atomic_rmw addi %158, %77[%c0, %c10] : (i32, memref<2x12xi32>) -> i32
      %282 = index.mul %126, %c14
      %283 = math.roundeven %127 : tensor<2x2xf32>
      %284 = vector.transpose %80, [0] : vector<5xi1> to vector<5xi1>
      %285 = vector.broadcast %c-7223_i16 : i16 to vector<5x5x12xi16>
      linalg.yield %false : i1
    } -> tensor<5x5x12xi1>
    %200 = vector.multi_reduction <minsi>, %19, %19 [] : vector<5xi64> to vector<5xi64>
    %201 = arith.andi %c268168039_i32, %c268168039_i32 : i32
    affine.store %141, %alloc_23[%c0] : memref<5xi32>
    %202 = scf.while (%arg1 = %35) : (memref<2x2xi1>) -> memref<2x2xi1> {
      %252 = index.floordivs %c11, %129
      %253 = arith.addf %cst_0, %cst_6 : f32
      %254 = arith.addi %22, %c386112241_i64 : i64
      %inserted_55 = tensor.insert %cst into %8[%c1, %c1, %c3] : tensor<5x5x12xf16>
      %alloc_56 = memref.alloc() : memref<2x2xi32>
      memref.copy %alloc_23, %alloc_16 : memref<5xi32> to memref<5xi32>
      %255 = vector.multi_reduction <add>, %184, %57 [0] : vector<2x12xf32> to vector<12xf32>
      %256 = vector.insert %false, %51 [3] : i1 into vector<5xi1>
      scf.condition(%76) %alloc_20 : memref<2x2xi1>
    } do {
    ^bb0(%arg1: memref<2x2xi1>):
      %252 = arith.addi %c-3537_i16, %c-7223_i16 : i16
      %253 = math.sqrt %168 : f32
      %254 = index.divu %149, %c9
      %255 = vector.multi_reduction <mul>, %80, %51 [] : vector<5xi1> to vector<5xi1>
      %256 = arith.addf %84, %cst_4 : f32
      %257 = arith.muli %c-7223_i16, %c32449_i16 : i16
      %258 = memref.alloca_scope  -> (i1) {
        %265 = vector.multi_reduction <and>, %179, %141 [0] : vector<5xi32> to i32
        %266 = vector.broadcast %141 : i32 to vector<5x5xi32>
        %267 = vector.outerproduct %181, %179, %266 {kind = #vector.kind<xor>} : vector<5xi32>, vector<5xi32>
        %268 = math.sqrt %13 : tensor<2x2xf16>
        %269 = tensor.empty() : tensor<2x12xi16>
        %270 = linalg.matmul ins(%2, %11 : tensor<2x2xi16>, tensor<2x12xi16>) outs(%269 : tensor<2x12xi16>) -> tensor<2x12xi16>
        %271 = math.atan2 %cst_4, %84 : f32
        %272 = tensor.empty() : tensor<2x2xf16>
        %273 = linalg.matmul ins(%10, %103 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%272 : tensor<2x2xf16>) -> tensor<2x2xf16>
        %274 = arith.minsi %265, %158 : i32
        bufferization.dealloc_tensor %9 : tensor<5x5x12xi1>
        %275 = math.atan2 %13, %10 : tensor<2x2xf16>
        %276 = arith.andi %true, %true : i1
        %277 = math.absi %1 : tensor<2x12xi16>
        %278 = math.roundeven %cst_4 : f32
        %279 = vector.transpose %183, [0, 1] : vector<2x12xf32> to vector<2x12xf32>
        memref.tensor_store %4, %alloc_17 : memref<5x5x12xi16>
        %280 = arith.addi %158, %158 : i32
        %281 = math.fpowi %14, %0 : tensor<5x5x12xf32>, tensor<5x5x12xi32>
        %282 = vector.shuffle %79, %55 [0, 1, 2, 3, 5, 6, 8, 12] : vector<1xf32>, vector<12xf32>
        %283 = vector.broadcast %true : i1 to vector<5x5xi1>
        %284 = vector.outerproduct %80, %60, %283 {kind = #vector.kind<minsi>} : vector<5xi1>, vector<5xi1>
        %285 = arith.maxf %cst, %cst_5 : f16
        %286 = arith.ceildivsi %c-7223_i16, %c11367_i16 : i16
        %287 = math.round %168 : f32
        %288 = index.mul %c14, %c9
        %289 = math.log1p %13 : tensor<2x2xf16>
        %290 = bufferization.clone %alloc_12 : memref<5x5x12xf32> to memref<5x5x12xf32>
        %291 = bufferization.to_tensor %alloc_8 : memref<2x12xf16>
        memref.assume_alignment %alloc_12, 1 : memref<5x5x12xf32>
        %cast_59 = tensor.cast %8 : tensor<5x5x12xf16> to tensor<?x?x?xf16>
        %292 = affine.apply affine_map<(d0, d1) -> ((d0 * 2 - 8) floordiv 32)>(%104, %rank_29)
        %293 = math.absi %6 : tensor<5xi1>
        %294 = index.maxu %c15, %c9
        %295 = memref.atomic_rmw minf %cst, %alloc_8[%c0, %c2] : (f16, memref<2x12xf16>) -> f16
        %296 = arith.shrui %c690967306_i64, %c690967306_i64 : i64
        memref.alloca_scope.return %true : i1
      }
      bufferization.dealloc_tensor %1 : tensor<2x12xi16>
      %259 = math.absf %14 : tensor<5x5x12xf32>
      %260 = arith.divsi %true, %true : i1
      %collapsed_55 = tensor.collapse_shape %2 [[0, 1]] : tensor<2x2xi16> into tensor<4xi16>
      %261 = math.atan %14 : tensor<5x5x12xf32>
      %alloca_56 = memref.alloca() : memref<5xi32>
      %262 = index.mul %c7, %c1
      %263 = math.atan2 %162, %10 : tensor<2x2xf16>
      %264 = vector.broadcast %cst_6 : f32 to vector<2xf32>
      %dest_57, %accumulated_value_58 = vector.scan <mul>, %183, %264 {inclusive = true, reduction_dim = 1 : i64} : vector<2x12xf32>, vector<2xf32>
      scf.yield %35 : memref<2x2xi1>
    }
    %203 = vector.broadcast %true_2 : i1 to vector<60x60xi1>
    %204 = vector.outerproduct %91, %91, %203 {kind = #vector.kind<minui>} : vector<60xi1>, vector<60xi1>
    %205 = vector.insert %158, %181 [0] : i32 into vector<5xi32>
    %206 = index.maxu %c0, %rank
    %207 = vector.broadcast %158 : i32 to vector<5x5xi32>
    %208 = vector.outerproduct %52, %181, %207 {kind = #vector.kind<and>} : vector<5xi32>, vector<5xi32>
    %alloca_45 = memref.alloca() : memref<2x12xi1>
    %209 = vector.insert %true, %51 [0] : i1 into vector<5xi1>
    %210 = index.maxu %c14, %c3
    %211 = math.powf %cst, %cst_5 : f16
    %212 = memref.alloca_scope  -> (f32) {
      %generated_55 = tensor.generate %104 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %276 = arith.remf %cst_6, %cst_3 : f32
        %277 = math.atan2 %cst_0, %cst_0 : f32
        %278 = math.roundeven %13 : tensor<2x2xf16>
        %279 = vector.maskedload %alloc_20[%c0, %c1], %80, %60 : memref<2x2xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
        tensor.yield %true_2 : i1
      } : tensor<?x5x12xi1>
      %252 = vector.multi_reduction <maxui>, %19, %c386112241_i64 [0] : vector<5xi64> to i64
      %253 = arith.shrui %c11367_i16, %c32449_i16 : i16
      %254 = vector.multi_reduction <and>, %60, %80 [] : vector<5xi1> to vector<5xi1>
      %255 = vector.broadcast %true : i1 to vector<i1>
      %256 = vector.transfer_write %255, %6[%c11] : vector<i1>, tensor<5xi1>
      %257 = math.ipowi %5, %5 : tensor<2x2xi32>
      %258 = arith.maxf %cst_5, %cst_5 : f16
      vector.print %179 : vector<5xi32>
      %259 = math.atan2 %96, %96 : tensor<5xf16>
      %260 = vector.matrix_multiply %80, %91 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<5xi1>, vector<60xi1>) -> vector<12xi1>
      %dest_56, %accumulated_value_57 = vector.scan <mul>, %183, %57 {inclusive = true, reduction_dim = 0 : i64} : vector<2x12xf32>, vector<12xf32>
      %261 = math.ctpop %18 : tensor<12x5x5xi64>
      %262 = arith.shli %c690967306_i64, %252 : i64
      %263 = index.castu %c6 : index to i32
      %264 = vector.broadcast %85 : index to vector<2xindex>
      %265 = vector.broadcast %true : i1 to vector<2xi1>
      %266 = vector.broadcast %cst_4 : f32 to vector<2xf32>
      vector.scatter %alloc_15[%c1, %c8] [%264], %265, %266 : memref<2x12xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
      affine.store %c11367_i16, %alloc_7[%c14, %c3] : memref<2x12xi16>
      %from_elements_58 = tensor.from_elements %22, %c386112241_i64, %c386112241_i64, %c690967306_i64, %c386112241_i64, %c690967306_i64, %c386112241_i64, %c690967306_i64, %c386112241_i64, %252, %22, %c386112241_i64, %c386112241_i64, %c386112241_i64, %c386112241_i64, %c690967306_i64, %c690967306_i64, %22, %252, %22, %22, %22, %22, %c386112241_i64, %22, %252, %c386112241_i64, %c690967306_i64, %c386112241_i64, %22, %252, %22, %c386112241_i64, %c690967306_i64, %252, %c386112241_i64, %22, %c386112241_i64, %c386112241_i64, %252, %252, %c690967306_i64, %252, %22, %22, %252, %252, %c386112241_i64, %22, %c386112241_i64, %c386112241_i64, %252, %c386112241_i64, %252, %22, %22, %c690967306_i64, %c386112241_i64, %c690967306_i64, %c386112241_i64, %c690967306_i64, %c690967306_i64, %22, %c690967306_i64, %c690967306_i64, %c386112241_i64, %252, %c690967306_i64, %c690967306_i64, %22, %c386112241_i64, %c690967306_i64, %c690967306_i64, %c386112241_i64, %c386112241_i64, %22, %252, %c386112241_i64, %c386112241_i64, %c386112241_i64, %22, %22, %252, %c386112241_i64, %c386112241_i64, %22, %c690967306_i64, %252, %c386112241_i64, %c690967306_i64, %252, %c690967306_i64, %22, %252, %22, %c690967306_i64, %252, %c386112241_i64, %c690967306_i64, %c386112241_i64, %c386112241_i64, %252, %252, %22, %252, %22, %22, %c386112241_i64, %252, %252, %c386112241_i64, %c386112241_i64, %c386112241_i64, %22, %c690967306_i64, %22, %c690967306_i64, %c690967306_i64, %252, %252, %c386112241_i64, %22, %c690967306_i64, %252, %c690967306_i64, %c386112241_i64, %c386112241_i64, %22, %c386112241_i64, %252, %c386112241_i64, %252, %22, %c690967306_i64, %22, %c386112241_i64, %c690967306_i64, %252, %22, %c690967306_i64, %c386112241_i64, %c386112241_i64, %252, %c386112241_i64, %c690967306_i64, %22, %22, %22, %c386112241_i64, %22, %c386112241_i64, %22, %22, %22, %c690967306_i64, %c690967306_i64, %252, %252, %c690967306_i64, %252, %c386112241_i64, %22, %252, %252, %252, %252, %c386112241_i64, %252, %252, %c386112241_i64, %c690967306_i64, %c690967306_i64, %22, %22, %c690967306_i64, %252, %252, %c690967306_i64, %252, %22, %c386112241_i64, %252, %252, %252, %c690967306_i64, %c386112241_i64, %c386112241_i64, %252, %c690967306_i64, %c386112241_i64, %c690967306_i64, %c386112241_i64, %252, %22, %c386112241_i64, %c690967306_i64, %22, %c386112241_i64, %22, %252, %c690967306_i64, %22, %c386112241_i64, %c690967306_i64, %c690967306_i64, %22, %252, %252, %c386112241_i64, %c690967306_i64, %22, %c690967306_i64, %c690967306_i64, %c386112241_i64, %22, %c386112241_i64, %c690967306_i64, %c690967306_i64, %22, %22, %252, %22, %c690967306_i64, %c690967306_i64, %252, %252, %c690967306_i64, %c386112241_i64, %c386112241_i64, %c690967306_i64, %22, %252, %c386112241_i64, %252, %c690967306_i64, %c386112241_i64, %22, %c386112241_i64, %c386112241_i64, %252, %c386112241_i64, %c386112241_i64, %c386112241_i64, %252, %c690967306_i64, %252, %c690967306_i64, %c690967306_i64, %c386112241_i64, %c386112241_i64, %c690967306_i64, %c386112241_i64, %22, %c690967306_i64, %c690967306_i64, %252, %c386112241_i64, %c690967306_i64, %22, %22, %22, %c690967306_i64, %252, %c690967306_i64, %252, %22, %c386112241_i64, %22, %252, %252, %22, %c386112241_i64, %252, %252, %c690967306_i64, %c690967306_i64, %22, %c386112241_i64, %c386112241_i64, %c386112241_i64, %252, %c690967306_i64, %c690967306_i64, %c690967306_i64, %22, %22, %c386112241_i64, %c690967306_i64, %c386112241_i64, %22, %c690967306_i64, %c690967306_i64, %22, %252, %252, %c690967306_i64, %c386112241_i64, %252, %252, %c690967306_i64 : tensor<5x5x12xi64>
      %267 = index.sub %rank, %126
      %from_elements_59 = tensor.from_elements %76, %76, %true, %true_2, %true, %76, %true_2, %true_2, %76, %false, %false, %false, %76, %true_2, %true, %true, %false, %true, %true_2, %true_2, %76, %true, %true_2, %76 : tensor<2x12xi1>
      %268 = math.powf %cst, %cst_1 : f16
      %true_60 = index.bool.constant true
      %269 = arith.remf %cst_0, %168 : f32
      %270 = vector.insert %57, %183 [0] : vector<12xf32> into vector<2x12xf32>
      affine.for %arg1 = 0 to 123 {
      }
      %271 = arith.floordivsi %c268168039_i32, %c268168039_i32 : i32
      %rank_61 = tensor.rank %16 : tensor<2x12xi1>
      %272 = vector.insert %cst_4, %55 [5] : f32 into vector<12xf32>
      %273 = vector.shuffle %181, %52 [0, 1, 2, 3, 8, 9] : vector<5xi32>, vector<5xi32>
      %splat = tensor.splat %84 : tensor<5x5x12xf32>
      %274 = math.exp %96 : tensor<5xf16>
      memref.store %cst_1, %alloc_8[%c0, %c5] : memref<2x12xf16>
      %275 = index.sizeof
      memref.alloca_scope.return %cst_3 : f32
    }
    %213 = vector.shuffle %51, %80 [0, 1, 2, 4, 5, 6, 7, 9] : vector<5xi1>, vector<5xi1>
    %214 = math.atan %13 : tensor<2x2xf16>
    %215 = arith.addf %cst_6, %cst_6 : f32
    %216 = math.powf %cst_3, %84 : f32
    %217 = vector.matrix_multiply %55, %57 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf32>, vector<12xf32>) -> vector<1xf32>
    %alloca_46 = memref.alloca() : memref<5xf16>
    %218 = vector.broadcast %cst_1 : f16 to vector<5xf16>
    %219 = vector.flat_transpose %57 {columns = 3 : i32, rows = 4 : i32} : vector<12xf32> -> vector<12xf32>
    %220 = math.ceil %8 : tensor<5x5x12xf16>
    %221 = math.powf %96, %96 : tensor<5xf16>
    %222 = index.sizeof
    %223 = vector.matrix_multiply %79, %219 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xf32>, vector<12xf32>) -> vector<12xf32>
    %224 = vector.broadcast %22 : i64 to vector<i64>
    %225 = vector.transfer_write %224, %15[%149, %c5, %c14] : vector<i64>, tensor<5x5x12xi64>
    %226 = vector.broadcast %153 : index to vector<12xindex>
    %227 = vector.broadcast %cst_1 : f16 to vector<12xf16>
    vector.scatter %alloc_8[%c0, %c2] [%226], %56, %227 : memref<2x12xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
    %228 = math.expm1 %cst_4 : f32
    %229 = math.cttz %c386112241_i64 : i64
    %rank_47 = tensor.rank %8 : tensor<5x5x12xf16>
    %collapsed_48 = tensor.collapse_shape %11 [[0, 1]] : tensor<2x12xi16> into tensor<24xi16>
    %230 = arith.xori %true, %76 : i1
    %231 = math.powf %14, %14 : tensor<5x5x12xf32>
    memref.assume_alignment %alloc_8, 4 : memref<2x12xf16>
    %rank_49 = tensor.rank %2 : tensor<2x2xi16>
    %232 = arith.shli %c690967306_i64, %22 : i64
    %233 = index.casts %c14 : index to i32
    %rank_50 = tensor.rank %4 : tensor<5x5x12xi16>
    %234 = math.absf %10 : tensor<2x2xf16>
    %235 = math.ipowi %c690967306_i64, %c690967306_i64 : i64
    %236 = memref.alloca_scope  -> (memref<2x2xf32>) {
      %252 = arith.negf %cst_4 : f32
      %253 = math.atan %127 : tensor<2x2xf32>
      %254 = math.roundeven %96 : tensor<5xf16>
      %255 = math.atan2 %10, %10 : tensor<2x2xf16>
      %256 = arith.cmpf olt, %cst_6, %212 : f32
      memref.copy %alloc_19, %alloc : memref<2x2xf32> to memref<2x2xf32>
      %257 = math.exp2 %127 : tensor<2x2xf32>
      %258 = arith.divui %c386112241_i64, %c690967306_i64 : i64
      %259 = arith.divui %c386112241_i64, %22 : i64
      %260 = math.ctlz %transposed : tensor<12x5x5xi64>
      %261 = arith.remsi %158, %c268168039_i32 : i32
      %262 = arith.minf %168, %cst_4 : f32
      %263 = arith.remf %cst_6, %84 : f32
      %264 = arith.remf %cst_1, %cst : f16
      %265 = math.exp %cst_1 : f16
      %266 = tensor.empty() : tensor<12x2xi16>
      %267 = tensor.empty() : tensor<2x2xi16>
      %268 = linalg.matmul ins(%11, %266 : tensor<2x12xi16>, tensor<12x2xi16>) outs(%267 : tensor<2x2xi16>) -> tensor<2x2xi16>
      %269 = index.mul %c12, %c4
      %270 = math.powf %198, %198 : tensor<2x2xf32>
      %271 = vector.broadcast %85 : index to vector<5xindex>
      vector.scatter %35[%c1, %c1] [%271], %51, %60 : memref<2x2xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
      %splat = tensor.splat %141 : tensor<5xi32>
      %272 = math.exp %cst_4 : f32
      %273 = arith.maxf %cst_1, %cst_5 : f16
      %274 = affine.if affine_set<(d0, d1, d2, d3) : (d3 - 128 == 0)>(%c14, %c5, %c10, %c0) -> memref<5x5x12xi32> {
        %286 = arith.negf %cst_4 : f32
        %287 = math.ctlz %transposed : tensor<12x5x5xi64>
        %288 = vector.matrix_multiply %218, %218 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf16>, vector<5xf16>) -> vector<1xf16>
        memref.store %141, %92[%c3] : memref<5xi32>
        %289 = index.maxu %85, %151
        %290 = math.ctlz %22 : i64
        %291 = arith.remui %22, %c386112241_i64 : i64
        %rank_55 = tensor.rank %collapsed : tensor<24xi16>
        affine.yield %alloc_21 : memref<5x5x12xi32>
      } else {
        %286 = arith.divui %141, %c268168039_i32 : i32
        %287 = math.absf %103 : tensor<2x2xf16>
        vector.print %179 : vector<5xi32>
        %288 = arith.andi %76, %76 : i1
        %289 = math.round %cst_6 : f32
        memref.assume_alignment %35, 4 : memref<2x2xi1>
        %290 = tensor.empty() : tensor<2x2xf16>
        %291 = linalg.matmul ins(%162, %13 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%290 : tensor<2x2xf16>) -> tensor<2x2xf16>
        %alloc_55 = memref.alloc() : memref<5x5x12xf16>
        %292 = vector.broadcast %cst_1 : f16 to vector<2x2xf16>
        %293 = vector.broadcast %false : i1 to vector<2x2xi1>
        %294 = vector.broadcast %141 : i32 to vector<2x2xi32>
        %295 = vector.gather %alloc_55[%c11, %rank_36, %c6] [%294], %293, %292 : memref<5x5x12xf16>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xf16> into vector<2x2xf16>
        affine.yield %alloc_21 : memref<5x5x12xi32>
      }
      %275 = math.absi %7 : tensor<5xi64>
      %276 = arith.shli %c268168039_i32, %141 : i32
      memref.store %141, %77[%c1, %c3] : memref<2x12xi32>
      %277 = vector.multi_reduction <maxui>, %60, %true [0] : vector<5xi1> to i1
      %278 = vector.bitcast %181 : vector<5xi32> to vector<5xi32>
      %279 = vector.broadcast %c4 : index to vector<2xindex>
      %280 = vector.broadcast %false : i1 to vector<2xi1>
      %281 = vector.broadcast %158 : i32 to vector<2xi32>
      vector.scatter %alloc_23[%c3] [%279], %280, %281 : memref<5xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
      %282 = scf.while (%arg1 = %35) : (memref<2x2xi1>) -> memref<2x2xi1> {
        %286 = math.fma %103, %103, %10 : tensor<2x2xf16>
        %287 = vector.broadcast %c268168039_i32 : i32 to vector<5x5xi32>
        %288 = vector.outerproduct %52, %278, %287 {kind = #vector.kind<or>} : vector<5xi32>, vector<5xi32>
        %alloc_55 = memref.alloc() : memref<5x5x12xi32>
        memref.copy %alloc_21, %alloc_55 : memref<5x5x12xi32> to memref<5x5x12xi32>
        %splat_56 = tensor.splat %158 : tensor<5xi32>
        %289 = math.ipowi %277, %true_2 : i1
        %rank_57 = tensor.rank %20 : tensor<i32>
        %290 = memref.load %193[%c1, %c5] : memref<2x12xi1>
        %291 = math.log10 %168 : f32
        scf.condition(%76) %35 : memref<2x2xi1>
      } do {
      ^bb0(%arg1: memref<2x2xi1>):
        %cast_55 = tensor.cast %21 : tensor<i32> to tensor<i32>
        %286 = tensor.empty() : tensor<2x12xi1>
        %287 = arith.remf %cst_3, %cst_6 : f32
        %288 = math.ctpop %21 : tensor<i32>
        %cast_56 = tensor.cast %3 : tensor<2x2xi64> to tensor<?x?xi64>
        %289 = arith.maxf %168, %cst_4 : f32
        %290 = math.powf %198, %127 : tensor<2x2xf32>
        %291 = bufferization.to_tensor %alloc_10 : memref<5x5x12xi64>
        %rank_57 = tensor.rank %cast_32 : tensor<?x?x?xf32>
        %292 = vector.maskedload %164[%c1, %c11], %80, %80 : memref<2x12xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
        %293 = arith.ceildivsi %22, %22 : i64
        %294 = arith.maxsi %c386112241_i64, %c690967306_i64 : i64
        %295 = vector.broadcast %cst_3 : f32 to vector<f32>
        vector.transfer_write %295, %alloc[%c15, %85] : vector<f32>, memref<2x2xf32>
        %296 = math.fma %cst_5, %cst, %cst_5 : f16
        %alloc_58 = memref.alloc() : memref<5x5x12xi16>
        memref.copy %alloc_17, %alloc_58 : memref<5x5x12xi16> to memref<5x5x12xi16>
        %297 = arith.negf %cst_4 : f32
        scf.yield %alloc_20 : memref<2x2xi1>
      }
      %283 = vector.insert %true, %91 [31] : i1 into vector<60xi1>
      %284 = tensor.empty() : tensor<2x12xi16>
      %285 = linalg.matmul ins(%267, %11 : tensor<2x2xi16>, tensor<2x12xi16>) outs(%284 : tensor<2x12xi16>) -> tensor<2x12xi16>
      memref.alloca_scope.return %alloc_19 : memref<2x2xf32>
    }
    %237 = vector.maskedload %alloc_14[%c1, %c0], %60, %52 : memref<2x2xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
    %238 = math.tan %198 : tensor<2x2xf32>
    %239 = math.tanh %10 : tensor<2x2xf16>
    %240 = arith.shrui %158, %c268168039_i32 : i32
    %generated_51 = tensor.generate %27 {
    ^bb0(%arg1: index, %arg2: index):
      %252 = vector.matrix_multiply %52, %237 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi32>, vector<5xi32>) -> vector<1xi32>
      %253 = vector.broadcast %cst_3 : f32 to vector<5xf32>
      vector.transfer_write %253, %236[%c12, %rank_49] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xf32>, memref<2x2xf32>
      %254 = math.tanh %cst : f16
      %255 = vector.maskedload %alloc_11[%c3], %60, %179 : memref<5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
      tensor.yield %c32449_i16 : i16
    } : tensor<?x2xi16>
    %alloca_52 = memref.alloca() : memref<5x5x12xf32>
    %241 = vector.broadcast %76 : i1 to vector<5x5xi1>
    %242 = vector.outerproduct %60, %60, %241 {kind = #vector.kind<mul>} : vector<5xi1>, vector<5xi1>
    %243 = math.cttz %6 : tensor<5xi1>
    affine.store %cst_6, %alloc_19[%c10, %c8] : memref<2x2xf32>
    %244 = vector.multi_reduction <add>, %50, %141 [0] : vector<5xi32> to i32
    %245 = scf.execute_region -> tensor<5xi16> {
      %252 = math.absi %0 : tensor<5x5x12xi32>
      %253 = bufferization.to_memref %7 : memref<5xi64>
      %254 = arith.minsi %c690967306_i64, %c386112241_i64 : i64
      %255 = arith.remf %cst_5, %cst_1 : f16
      %256 = arith.cmpi sle, %c32449_i16, %c11367_i16 : i16
      bufferization.dealloc_tensor %6 : tensor<5xi1>
      %257 = tensor.empty() : tensor<12xi64>
      %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%253, %7, %257 : memref<5xi64>, tensor<5xi64>, tensor<12xi64>) outs(%15 : tensor<5x5x12xi64>) {
      ^bb0(%in: i64, %in_57: i64, %in_58: i64, %out: i64):
        %266 = arith.andi %c11367_i16, %c11367_i16 : i16
        %267 = index.sizeof
        %268 = index.floordivs %rank_47, %c1
        %269 = arith.shrsi %c32449_i16, %c-3537_i16 : i16
        %270 = arith.negf %cst_5 : f16
        %271 = memref.load %77[%c0, %c7] : memref<2x12xi32>
        %272 = vector.broadcast %222 : index to vector<12xindex>
        vector.scatter %236[%c0, %c1] [%272], %56, %223 : memref<2x2xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
        %273 = vector.broadcast %244 : i32 to vector<2xi32>
        %274 = vector.broadcast %false : i1 to vector<2xi1>
        %275 = vector.maskedload %alloc_23[%c3], %274, %273 : memref<5xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %276 = math.ctpop %12 : tensor<2x12xi1>
        %277 = arith.shrsi %c690967306_i64, %in_57 : i64
        %278 = arith.cmpf ule, %cst_3, %cst_0 : f32
        %279 = index.sizeof
        %280 = math.tanh %103 : tensor<2x2xf16>
        %281 = math.ceil %cst_5 : f16
        %282 = math.sqrt %14 : tensor<5x5x12xf32>
        %283 = arith.andi %244, %c268168039_i32 : i32
        %284 = math.exp %cst : f16
        %285 = index.casts %279 : index to i32
        %286 = arith.maxsi %158, %158 : i32
        %287 = arith.divf %cst_6, %84 : f32
        %288 = math.floor %cst_0 : f32
        %289 = math.ipowi %71, %71 : tensor<2x12xi1>
        %290 = vector.multi_reduction <minsi>, %19, %in_58 [0] : vector<5xi64> to i64
        %291 = math.sqrt %10 : tensor<2x2xf16>
        %292 = arith.muli %141, %c268168039_i32 : i32
        %293 = arith.negf %cst_5 : f16
        %cast_59 = tensor.cast %14 : tensor<5x5x12xf32> to tensor<?x?x?xf32>
        %294 = arith.shli %c268168039_i32, %141 : i32
        %295 = arith.divui %true, %true_2 : i1
        %296 = affine.apply affine_map<(d0) -> (d0 * 32)>(%c10)
        %297 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - d0 - (d0 + 1) - d0, (d0 ceildiv 32) ceildiv 4)>(%rank_47, %149, %c2, %27)
        %298 = vector.broadcast %in : i64 to vector<5x5x12xi64>
        linalg.yield %22 : i64
      } -> tensor<5x5x12xi64>
      %259 = arith.minf %cst_4, %212 : f32
      %260 = math.powf %cst_1, %cst_5 : f16
      %alloca_55 = memref.alloca() : memref<2x12xi1>
      %261 = math.fma %13, %103, %10 : tensor<2x2xf16>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7 : tensor<5xi64>) outs(%15 : tensor<5x5x12xi64>) {
      ^bb0(%in: i64, %out: i64):
        %266 = arith.addf %cst, %cst_5 : f16
        memref.assume_alignment %77, 16 : memref<2x12xi32>
        memref.store %158, %92[%c0] : memref<5xi32>
        %267 = index.sub %113, %rank_29
        %268 = vector.multi_reduction <maxf>, %184, %223 [0] : vector<2x12xf32> to vector<12xf32>
        bufferization.dealloc_tensor %6 : tensor<5xi1>
        memref.assume_alignment %alloc_18, 8 : memref<5xf32>
        %269 = math.log1p %168 : f32
        %270 = affine.apply affine_map<(d0) -> (d0 * 32)>(%rank_49)
        %271 = math.exp %cst_0 : f32
        %272 = arith.shli %false, %76 : i1
        %273 = arith.shrui %c-7223_i16, %c-3537_i16 : i16
        %274 = math.fma %198, %127, %198 : tensor<2x2xf32>
        memref.assume_alignment %alloc_13, 2 : memref<2x12xi16>
        %275 = math.powf %96, %96 : tensor<5xf16>
        %276 = vector.broadcast %212 : f32 to vector<2xf32>
        %dest_57, %accumulated_value_58 = vector.scan <minf>, %184, %276 {inclusive = false, reduction_dim = 1 : i64} : vector<2x12xf32>, vector<2xf32>
        %277 = math.fma %cst_0, %cst_0, %cst_6 : f32
        %278 = math.ipowi %9, %9 : tensor<5x5x12xi1>
        %279 = affine.load %alloc_19[%c8, %c6] : memref<2x2xf32>
        memref.store %cst_5, %alloc_9[%c0, %c1] : memref<2x2xf16>
        %280 = vector.insert %cst_3, %223 [10] : f32 into vector<12xf32>
        %281 = math.absf %212 : f32
        memref.assume_alignment %alloc_23, 16 : memref<5xi32>
        %282 = arith.minf %168, %cst_3 : f32
        %283 = math.atan %10 : tensor<2x2xf16>
        %alloc_59 = memref.alloc() : memref<5xi1>
        memref.tensor_store %6, %alloc_59 : memref<5xi1>
        %284 = math.roundeven %cst_3 : f32
        %285 = tensor.empty() : tensor<2x2xf16>
        %286 = linalg.matmul ins(%10, %10 : tensor<2x2xf16>, tensor<2x2xf16>) outs(%285 : tensor<2x2xf16>) -> tensor<2x2xf16>
        %287 = vector.broadcast %c11367_i16 : i16 to vector<2x2xi16>
        %288 = vector.broadcast %76 : i1 to vector<2x2xi1>
        %289 = vector.broadcast %158 : i32 to vector<2x2xi32>
        %290 = vector.gather %alloc_17[%c5, %rank_49, %126] [%289], %288, %287 : memref<5x5x12xi16>, vector<2x2xi32>, vector<2x2xi1>, vector<2x2xi16> into vector<2x2xi16>
        %291 = math.powf %cst_6, %279 : f32
        %alloca_60 = memref.alloca() : memref<5xi32>
        %292 = arith.remf %212, %84 : f32
        linalg.yield %in : i64
      } -> tensor<5x5x12xi64>
      %263 = math.atan %13 : tensor<2x2xf16>
      %collapsed_56 = tensor.collapse_shape %3 [[0, 1]] : tensor<2x2xi64> into tensor<4xi64>
      scf.if %76 {
        %266 = math.expm1 %cst_1 : f16
        %267 = vector.broadcast %c32449_i16 : i16 to vector<i16>
        %268 = vector.transfer_write %267, %collapsed[%c4] : vector<i16>, tensor<24xi16>
        %269 = arith.negf %cst_0 : f32
        %270 = arith.maxsi %true, %true : i1
        %271 = vector.broadcast %c386112241_i64 : i64 to vector<5x5x12xi64>
        bufferization.dealloc_tensor %collapsed_48 : tensor<24xi16>
        %272 = bufferization.to_tensor %92 : memref<5xi32>
        %273 = math.ctpop %18 : tensor<12x5x5xi64>
      } else {
        %266 = index.maxs %149, %c11
        %267 = arith.xori %76, %true : i1
        %splat = tensor.splat %true : tensor<5x5x12xi1>
        %268 = arith.minf %cst_5, %cst_1 : f16
        %269 = math.powf %cst_6, %212 : f32
        %270 = math.log1p %14 : tensor<5x5x12xf32>
        %271 = arith.mulf %84, %cst_6 : f32
        %272 = arith.ceildivsi %c268168039_i32, %244 : i32
      }
      %264 = index.maxs %rank_47, %151
      %265 = tensor.empty() : tensor<5xi16>
      scf.yield %265 : tensor<5xi16>
    }
    %246 = vector.shuffle %223, %219 [4, 5, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20, 21, 22] : vector<12xf32>, vector<12xf32>
    %alloca_53 = memref.alloca() : memref<2x2xi16>
    %247 = vector.matrix_multiply %217, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xf32>, vector<12xf32>) -> vector<12xf32>
    %248 = tensor.empty() : tensor<2x12xi1>
    %249 = linalg.copy ins(%12 : tensor<2x12xi1>) outs(%248 : tensor<2x12xi1>) -> tensor<2x12xi1>
    %alloc_54 = memref.alloc() : memref<12x5x5xf16>
    linalg.transpose ins(%8 : tensor<5x5x12xf16>) outs(%alloc_54 : memref<12x5x5xf16>) permutation = [2, 0, 1] 
    %250 = tensor.empty() : tensor<i64>
    %reduced = linalg.reduce ins(%7 : tensor<5xi64>) outs(%250 : tensor<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %252 = vector.broadcast %212 : f32 to vector<2x2xf32>
        %253 = vector.fma %252, %252, %252 : vector<2x2xf32>
        %dest_55, %accumulated_value_56 = vector.scan <maxf>, %183, %247 {inclusive = false, reduction_dim = 0 : i64} : vector<2x12xf32>, vector<12xf32>
        %254 = math.absf %cst_4 : f32
        %255 = index.maxu %98, %c15
        %alloc_57 = memref.alloc() : memref<5x5x12xf16>
        %256 = vector.gather %alloc_57[%104, %c10, %151] [%179], %80, %218 : memref<5x5x12xf16>, vector<5xi32>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %dest_58, %accumulated_value_59 = vector.scan <maxf>, %183, %55 {inclusive = false, reduction_dim = 0 : i64} : vector<2x12xf32>, vector<12xf32>
        %257 = arith.shrsi %244, %158 : i32
        %258 = tensor.empty() : tensor<i32>
        %mapped_60 = linalg.map ins(%148, %20 : memref<i32>, tensor<i32>) outs(%258 : tensor<i32>)
          (%in_61: i32, %in_62: i32) {
            %259 = arith.shrui %158, %141 : i32
            %260 = index.maxu %c5, %c13
            %alloca_63 = memref.alloca() : memref<2x12xf16>
            %261 = arith.remui %158, %in_62 : i32
            %262 = affine.load %alloc_8[%c15, %c12] : memref<2x12xf16>
            %263 = math.powf %10, %162 : tensor<2x2xf16>
            %264 = affine.min affine_map<(d0) -> ((d0 * 2 - 16) * 16, (d0 * 2 - 16) * 16, d0 * 2)>(%c5)
            %265 = vector.broadcast %cst : f16 to vector<5xf16>
            %266 = vector.transfer_write %265, %10[%c6, %c12] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xf16>, tensor<2x2xf16>
            %267 = arith.addf %cst_6, %168 : f32
            %268 = arith.minf %cst_5, %cst_1 : f16
            %269 = vector.broadcast %false : i1 to vector<5x5xi1>
            %270 = vector.outerproduct %60, %60, %269 {kind = #vector.kind<and>} : vector<5xi1>, vector<5xi1>
            %271 = arith.divui %init, %init : i64
            %272 = math.powf %127, %198 : tensor<2x2xf32>
            %273 = index.maxu %260, %c7
            %274 = math.copysign %262, %262 : f16
            %275 = arith.shrui %true_2, %true : i1
            %276 = arith.shrsi %76, %true : i1
            %277 = affine.max affine_map<(d0) -> ((((d0 - 16) ceildiv 2) * 2) mod 128, d0 - 16, ((d0 - 16) ceildiv 2) * 2)>(%c14)
            %278 = vector.create_mask %c7, %129 : vector<2x12xi1>
            %279 = math.atan %cst_4 : f32
            %280 = math.atan2 %162, %10 : tensor<2x2xf16>
            %281 = math.atan2 %103, %10 : tensor<2x2xf16>
            memref.tensor_store %13, %alloc_9 : memref<2x2xf16>
            %282 = arith.shrui %true_2, %true_2 : i1
            %283 = vector.shuffle %278, %278 [0, 1, 3] : vector<2x12xi1>, vector<2x12xi1>
            %284 = arith.cmpi ult, %in_61, %141 : i32
            %285 = vector.broadcast %false : i1 to vector<2xi1>
            %286 = vector.maskedload %35[%c0, %c0], %285, %285 : memref<2x2xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
            %287 = arith.divui %76, %false : i1
            %288 = memref.realloc %alloc_18 : memref<5xf32> to memref<2xf32>
            %289 = vector.broadcast %cst_6 : f32 to vector<2xf32>
            %290 = vector.multi_reduction <maxf>, %253, %289 [1] : vector<2x2xf32> to vector<2xf32>
            %291 = math.powf %cst_5, %cst_5 : f16
            %292 = math.ceil %cst_5 : f16
            %c1_i32 = arith.constant 1 : i32
            linalg.yield %c1_i32 : i32
          }
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    scf.parallel (%arg1, %arg2) = (%153, %c8) to (%27, %c9) step (%c6, %c13) {
      %252 = index.maxu %c8, %87
      %253 = vector.broadcast %cst_3 : f32 to vector<2xf32>
      %dest_55, %accumulated_value_56 = vector.scan <add>, %183, %253 {inclusive = true, reduction_dim = 1 : i64} : vector<2x12xf32>, vector<2xf32>
      %254 = arith.shli %c386112241_i64, %c690967306_i64 : i64
      %255 = math.absi %11 : tensor<2x12xi16>
      %256 = arith.ceildivsi %false, %true_2 : i1
      %257 = arith.mulf %cst, %cst_1 : f16
      %258 = vector.transpose %51, [0] : vector<5xi1> to vector<5xi1>
      %259 = vector.broadcast %76 : i1 to vector<i1>
      %260 = vector.transfer_write %259, %16[%c12, %rank] : vector<i1>, tensor<2x12xi1>
      %alloc_57 = memref.alloc() : memref<2x2xi16>
      %261 = math.expm1 %cst_0 : f32
      %alloc_58 = memref.alloc() : memref<2x12xi32>
      %262 = math.absf %cst_6 : f32
      %263 = vector.insert %cst_6, %57 [9] : f32 into vector<12xf32>
      %rank_59 = tensor.rank %71 : tensor<2x12xi1>
      %264 = vector.broadcast %cst_3 : f32 to vector<2xf32>
      vector.transfer_write %264, %236[%c9, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xf32>, memref<2x2xf32>
      %alloc_60 = memref.alloc() : memref<2x12xf16>
      scf.yield
    }
    %251 = affine.vector_load %alloc_12[%147, %151, %151] : memref<5x5x12xf32>, vector<2xf32>
    affine.vector_store %91, %164[%rank_36, %rank_49] : memref<2x12xi1>, vector<60xi1>
    vector.print %19 : vector<5xi64>
    vector.print %41 : vector<1xi64>
    vector.print %50 : vector<5xi32>
    vector.print %51 : vector<5xi1>
    vector.print %52 : vector<5xi32>
    vector.print %55 : vector<12xf32>
    vector.print %56 : vector<12xi1>
    vector.print %57 : vector<12xf32>
    vector.print %60 : vector<5xi1>
    vector.print %79 : vector<1xf32>
    vector.print %80 : vector<5xi1>
    vector.print %91 : vector<60xi1>
    vector.print %179 : vector<5xi32>
    vector.print %181 : vector<5xi32>
    vector.print %183 : vector<2x12xf32>
    vector.print %184 : vector<2x12xf32>
    vector.print %217 : vector<1xf32>
    vector.print %218 : vector<5xf16>
    vector.print %219 : vector<12xf32>
    vector.print %223 : vector<12xf32>
    vector.print %224 : vector<i64>
    vector.print %237 : vector<5xi32>
    vector.print %247 : vector<12xf32>
    vector.print %251 : vector<2xf32>
    vector.print %c690967306_i64 : i64
    vector.print %c-7223_i16 : i16
    vector.print %cst : f16
    vector.print %c11367_i16 : i16
    vector.print %cst_0 : f32
    vector.print %c386112241_i64 : i64
    vector.print %c-3537_i16 : i16
    vector.print %cst_1 : f16
    vector.print %c32449_i16 : i16
    vector.print %true : i1
    vector.print %true_2 : i1
    vector.print %cst_3 : f32
    vector.print %cst_4 : f32
    vector.print %c268168039_i32 : i32
    vector.print %cst_5 : f16
    vector.print %cst_6 : f32
    vector.print %22 : i64
    vector.print %76 : i1
    vector.print %84 : f32
    vector.print %false : i1
    vector.print %141 : i32
    vector.print %158 : i32
    vector.print %168 : f32
    vector.print %212 : f32
    vector.print %244 : i32
    return
  }
}
