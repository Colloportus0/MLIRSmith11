module {
  func.func nested @func1(%arg0: vector<10x5xi32>, %arg1: index, %arg2: vector<1xi32>) -> memref<1xf32> {
    %true = arith.constant true
    %c1358131027_i32 = arith.constant 1358131027 : i32
    %true_0 = arith.constant true
    %cst = arith.constant 1.84201062E+9 : f32
    %c1169788843_i32 = arith.constant 1169788843 : i32
    %c1920537583_i32 = arith.constant 1920537583 : i32
    %c-27799_i16 = arith.constant -27799 : i16
    %c1976318927_i32 = arith.constant 1976318927 : i32
    %c1194413869_i64 = arith.constant 1194413869 : i64
    %c1063045236_i32 = arith.constant 1063045236 : i32
    %cst_1 = arith.constant 1.70524262E+9 : f32
    %cst_2 = arith.constant 4.268800e+04 : f16
    %cst_3 = arith.constant 4.332800e+04 : f16
    %cst_4 = arith.constant 3.195200e+04 : f16
    %c410749792_i32 = arith.constant 410749792 : i32
    %cst_5 = arith.constant 4.377600e+04 : f16
    %0 = tensor.empty() : tensor<5x1x1xi1>
    %1 = tensor.empty() : tensor<5x1x1xf16>
    %2 = tensor.empty() : tensor<5x1x1xi32>
    %3 = tensor.empty() : tensor<10x10xf32>
    %4 = tensor.empty() : tensor<10x10xf32>
    %5 = tensor.empty() : tensor<10x5xf32>
    %6 = tensor.empty() : tensor<1xf32>
    %7 = tensor.empty() : tensor<10x5xi32>
    %8 = tensor.empty() : tensor<10x10xi64>
    %9 = tensor.empty() : tensor<1xi32>
    %10 = tensor.empty() : tensor<10x10xf32>
    %11 = tensor.empty() : tensor<5x1x1xi1>
    %12 = tensor.empty() : tensor<10x10xi32>
    %13 = tensor.empty() : tensor<1xi16>
    %14 = tensor.empty() : tensor<10x5xi1>
    %15 = tensor.empty() : tensor<10x5xf16>
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
    %alloc = memref.alloc() : memref<1xf16>
    %alloc_6 = memref.alloc() : memref<10x10xi1>
    %alloc_7 = memref.alloc() : memref<10x10xf32>
    %alloc_8 = memref.alloc() : memref<10x10xf32>
    %alloc_9 = memref.alloc() : memref<5x1x1xi1>
    %alloc_10 = memref.alloc() : memref<1xf16>
    %alloc_11 = memref.alloc() : memref<10x10xf16>
    %alloc_12 = memref.alloc() : memref<5x1x1xi64>
    %alloc_13 = memref.alloc() : memref<10x10xf32>
    %alloc_14 = memref.alloc() : memref<1xi32>
    %alloc_15 = memref.alloc() : memref<1xi64>
    %alloc_16 = memref.alloc() : memref<10x5xi64>
    %alloc_17 = memref.alloc() : memref<10x10xf32>
    %alloc_18 = memref.alloc() : memref<5x1x1xf32>
    %alloc_19 = memref.alloc() : memref<5x1x1xi1>
    %alloc_20 = memref.alloc() : memref<10x5xi32>
    %16 = tensor.empty() : tensor<10x10xf32>
    %17 = linalg.copy ins(%3 : tensor<10x10xf32>) outs(%16 : tensor<10x10xf32>) -> tensor<10x10xf32>
    %18 = tensor.empty() : tensor<1x5x1xi1>
    %transposed = linalg.transpose ins(%11 : tensor<5x1x1xi1>) outs(%18 : tensor<1x5x1xi1>) permutation = [2, 0, 1] 
    %19 = tensor.empty() : tensor<10xf32>
    %reduced = linalg.reduce ins(%17 : tensor<10x10xf32>) outs(%19 : tensor<10xf32>) dimensions = [1] 
      (%in: f32, %init: f32) {
        %269 = math.copysign %15, %15 : tensor<10x5xf16>
        %270 = arith.divf %in, %init : f32
        %271 = affine.load %alloc_14[%c10] : memref<1xi32>
        %272 = arith.ori %true, %true_0 : i1
        %273 = arith.maxf %init, %cst_1 : f32
        %274 = math.tan %10 : tensor<10x10xf32>
        %275 = index.mul %c3, %c6
        %276 = vector.splat %c12 : vector<10x10xindex>
        %cst_47 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_47 : f32
      }
    scf.parallel (%arg3) = (%c5) to (%c8) step (%c1) {
      %269 = arith.addf %cst_5, %cst_4 : f16
      %270 = scf.if %true_0 -> (memref<10x5xf32>) {
        %281 = vector.broadcast %c-27799_i16 : i16 to vector<1xi16>
        %282 = vector.broadcast %c-27799_i16 : i16 to vector<1xi16>
        %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %281, %282, %c-27799_i16 : vector<1xi16>, vector<1xi16> into i16
        %284 = vector.broadcast %true : i1 to vector<1xi1>
        %285 = vector.broadcast %c410749792_i32 : i32 to vector<1xi32>
        %286 = vector.gather %11[%c3, %c7, %c14] [%285], %284, %284 : tensor<5x1x1xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        %287 = arith.andi %true, %true_0 : i1
        %288 = affine.max affine_map<(d0) -> ((d0 ceildiv 4) floordiv 4 + ((d0 ceildiv 4) * 2) floordiv 4 - 32, -(((d0 ceildiv 4) * 2) floordiv 4 - 32))>(%c7)
        %289 = vector.broadcast %true : i1 to vector<1x1xi1>
        %290 = vector.outerproduct %286, %286, %289 {kind = #vector.kind<maxsi>} : vector<1xi1>, vector<1xi1>
        %291 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 - 8, -(-(d2 - 16) - d0), d2 + -(d2 - 16) - d0 - 8)>(%c10, %c10, %c15, %c8)
        %292 = math.fma %5, %5, %5 : tensor<10x5xf32>
        %293 = math.ipowi %8, %8 : tensor<10x10xi64>
        %alloc_51 = memref.alloc() : memref<10x5xf32>
        scf.yield %alloc_51 : memref<10x5xf32>
      } else {
        memref.tensor_store %9, %alloc_14 : memref<1xi32>
        %281 = vector.broadcast %cst_1 : f32 to vector<10xf32>
        %282 = vector.broadcast %cst_1 : f32 to vector<10x10xf32>
        %283 = vector.outerproduct %281, %281, %282 {kind = #vector.kind<minf>} : vector<10xf32>, vector<10xf32>
        %284 = bufferization.clone %alloc_20 : memref<10x5xi32> to memref<10x5xi32>
        %285 = index.mul %arg3, %c1
        %286 = math.log1p %19 : tensor<10xf32>
        %287 = index.maxs %c9, %c11
        %288 = math.floor %3 : tensor<10x10xf32>
        %289 = math.absi %7 : tensor<10x5xi32>
        %alloc_51 = memref.alloc() : memref<10x5xf32>
        scf.yield %alloc_51 : memref<10x5xf32>
      }
      %271 = arith.ceildivsi %true, %true : i1
      %272 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 16, (d3 ceildiv 16) * 4)>(%c12, %c3, %c5, %c10)
      %from_elements_47 = tensor.from_elements %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %c1194413869_i64 : tensor<10x5xi64>
      %rank_48 = tensor.rank %14 : tensor<10x5xi1>
      %273 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 floordiv 16) mod 4 >= 0, 0 == 0, d1 mod 128 >= 0)>(%c8, %c13, %c10, %c1) -> f16 {
        %281 = arith.shrui %c1358131027_i32, %c1358131027_i32 : i32
        %282 = arith.muli %true, %true : i1
        %283 = vector.broadcast %c-27799_i16 : i16 to vector<1xi16>
        %284 = vector.matrix_multiply %283, %283 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %285 = arith.maxsi %true_0, %true : i1
        %286 = bufferization.to_memref %14 : memref<10x5xi1>
        %287 = affine.apply affine_map<(d0) -> (d0 * 64)>(%272)
        %true_51 = index.bool.constant true
        %288 = math.log2 %15 : tensor<10x5xf16>
        affine.yield %cst_2 : f16
      } else {
        %alloca_51 = memref.alloca() : memref<1xi1>
        %281 = math.absi %c-27799_i16 : i16
        %collapsed_52 = tensor.collapse_shape %15 [[0, 1]] : tensor<10x5xf16> into tensor<50xf16>
        %true_53 = index.bool.constant true
        %282 = arith.shrui %c-27799_i16, %c-27799_i16 : i16
        %283 = vector.broadcast %cst_3 : f16 to vector<10xf16>
        %284 = vector.broadcast %cst_5 : f16 to vector<10x10xf16>
        %285 = vector.outerproduct %283, %283, %284 {kind = #vector.kind<add>} : vector<10xf16>, vector<10xf16>
        %286 = math.round %10 : tensor<10x10xf32>
        %287 = math.fma %cst, %cst, %cst_1 : f32
        affine.yield %cst_5 : f16
      }
      %collapsed_49 = tensor.collapse_shape %8 [[0, 1]] : tensor<10x10xi64> into tensor<100xi64>
      %274 = affine.for %arg4 = 0 to 98 iter_args(%arg5 = %alloc_20) -> (memref<10x5xi32>) {
        affine.yield %alloc_20 : memref<10x5xi32>
      }
      %275 = arith.divsi %c1358131027_i32, %c1976318927_i32 : i32
      %276 = math.tanh %cst_5 : f16
      %277 = affine.max affine_map<(d0) -> (-d0, -d0, d0, d0 * 32 - (d0 mod 16 + 64))>(%c5)
      %278 = scf.index_switch %c10 -> i64 
      case 1 {
        %281 = arith.divui %c1358131027_i32, %c1169788843_i32 : i32
        %282 = math.expm1 %10 : tensor<10x10xf32>
        %283 = arith.minsi %c1920537583_i32, %c1358131027_i32 : i32
        affine.store %cst_1, %alloc_7[%c4, %c12] : memref<10x10xf32>
        %284 = index.sub %c10, %c1
        %285 = arith.minui %c1063045236_i32, %c410749792_i32 : i32
        %286 = math.cos %cst_1 : f32
        %287 = memref.atomic_rmw maxu %c410749792_i32, %alloc_20[%c2, %c0] : (i32, memref<10x5xi32>) -> i32
        %288 = vector.broadcast %c1194413869_i64 : i64 to vector<1xi64>
        %289 = vector.multi_reduction <add>, %288, %288 [] : vector<1xi64> to vector<1xi64>
        %290 = math.round %19 : tensor<10xf32>
        affine.store %cst_4, %alloc_11[%c6, %c8] : memref<10x10xf16>
        %291 = vector.create_mask %c8, %c9 : vector<10x5xi1>
        %292 = tensor.empty() : tensor<5x1x1xi32>
        %293 = arith.ori %c1194413869_i64, %c1194413869_i64 : i64
        %294 = arith.divui %c1920537583_i32, %c1358131027_i32 : i32
        %295 = index.maxs %c12, %c10
        scf.yield %c1194413869_i64 : i64
      }
      case 2 {
        %281 = math.log1p %cst_5 : f16
        %282 = memref.atomic_rmw maxf %cst_4, %alloc_10[%c0] : (f16, memref<1xf16>) -> f16
        %283 = math.roundeven %16 : tensor<10x10xf32>
        %284 = vector.create_mask %c10, %arg3 : vector<10x10xi1>
        %285 = arith.floordivsi %c-27799_i16, %c-27799_i16 : i16
        %286 = tensor.empty() : tensor<5x1x1xi16>
        %287 = vector.broadcast %c-27799_i16 : i16 to vector<5x1x1xi16>
        %288 = vector.broadcast %true_0 : i1 to vector<5x1x1xi1>
        %289 = vector.broadcast %c410749792_i32 : i32 to vector<5x1x1xi32>
        %290 = vector.gather %286[%c7, %c15, %c15] [%289], %288, %287 : tensor<5x1x1xi16>, vector<5x1x1xi32>, vector<5x1x1xi1>, vector<5x1x1xi16> into vector<5x1x1xi16>
        %291 = math.log1p %1 : tensor<5x1x1xf16>
        %292 = math.rsqrt %6 : tensor<1xf32>
        %293 = arith.shrui %c1169788843_i32, %c1358131027_i32 : i32
        %294 = affine.max affine_map<(d0) -> (d0 ceildiv 4 + 32)>(%c1)
        %295 = vector.broadcast %c-27799_i16 : i16 to vector<10x10xi16>
        %296 = vector.broadcast %c1358131027_i32 : i32 to vector<10x10xi32>
        %297 = vector.gather %286[%c10, %c13, %277] [%296], %284, %295 : tensor<5x1x1xi16>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xi16> into vector<10x10xi16>
        %298 = vector.broadcast %cst_1 : f32 to vector<f32>
        %299 = vector.transfer_write %298, %10[%c10, %c8] : vector<f32>, tensor<10x10xf32>
        %300 = math.fma %15, %15, %15 : tensor<10x5xf16>
        %301 = vector.broadcast %cst : f32 to vector<5xf32>
        %302 = vector.flat_transpose %301 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
        %303 = vector.broadcast %cst_1 : f32 to vector<10x5xf32>
        %304 = vector.fma %303, %303, %303 : vector<10x5xf32>
        %305 = vector.broadcast %cst : f32 to vector<5x5xf32>
        %306 = vector.outerproduct %301, %301, %305 {kind = #vector.kind<mul>} : vector<5xf32>, vector<5xf32>
        scf.yield %c1194413869_i64 : i64
      }
      case 3 {
        %281 = tensor.empty() : tensor<5x1x1xi1>
        %282 = vector.broadcast %cst_4 : f16 to vector<1xf16>
        %283 = vector.broadcast %cst_5 : f16 to vector<1xf16>
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %282, %283, %cst_4 : vector<1xf16>, vector<1xf16> into f16
        %285 = arith.remf %cst, %cst_1 : f32
        %286 = index.sub %rank_48, %c2
        %287 = arith.andi %c1063045236_i32, %c1358131027_i32 : i32
        %288 = math.round %17 : tensor<10x10xf32>
        %289 = affine.max affine_map<(d0, d1) -> (d0, (-d0) floordiv 32 + 2, 0)>(%c13, %c11)
        %290 = affine.max affine_map<(d0, d1, d2) -> (d1 mod 64, d0 + d2 floordiv 64, -d2)>(%c15, %277, %c0)
        %291 = arith.maxui %c1358131027_i32, %c1063045236_i32 : i32
        %292 = vector.load %alloc_17[%c2, %c1] : memref<10x10xf32>, vector<10x10xf32>
        %293 = arith.ceildivsi %c1920537583_i32, %c1920537583_i32 : i32
        %294 = math.cos %17 : tensor<10x10xf32>
        %295 = math.log1p %cst_4 : f16
        %296 = index.castu %c0 : index to i32
        %297 = memref.realloc %alloc : memref<1xf16> to memref<10xf16>
        %298 = math.expm1 %16 : tensor<10x10xf32>
        scf.yield %c1194413869_i64 : i64
      }
      case 4 {
        %281 = vector.broadcast %c1976318927_i32 : i32 to vector<1x5x1xi32>
        %282 = vector.broadcast %c1976318927_i32 : i32 to vector<1x1xi32>
        %dest_51, %accumulated_value_52 = vector.scan <or>, %281, %282 {inclusive = true, reduction_dim = 1 : i64} : vector<1x5x1xi32>, vector<1x1xi32>
        %283 = arith.divf %cst, %cst : f32
        %284 = arith.shli %c1169788843_i32, %c1358131027_i32 : i32
        %285 = tensor.empty() : tensor<1xf32>
        memref.store %cst, %alloc_18[%c0, %c0, %c0] : memref<5x1x1xf32>
        %286 = vector.broadcast %cst_1 : f32 to vector<10xf32>
        %287 = vector.matrix_multiply %286, %286 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf32>, vector<10xf32>) -> vector<1xf32>
        %inserted_53 = tensor.insert %cst_4 into %15[%c4, %c1] : tensor<10x5xf16>
        %288 = math.expm1 %reduced : tensor<10xf32>
        %289 = index.maxu %c12, %c13
        %290 = math.ipowi %collapsed_49, %collapsed_49 : tensor<100xi64>
        %291 = vector.broadcast %cst_1 : f32 to vector<10x10xf32>
        %292 = vector.fma %291, %291, %291 : vector<10x10xf32>
        %rank_54 = tensor.rank %4 : tensor<10x10xf32>
        %293 = index.add %c2, %c3
        %294 = arith.minf %cst_1, %cst : f32
        memref.assume_alignment %alloc_8, 16 : memref<10x10xf32>
        %295 = arith.divf %cst, %cst_1 : f32
        scf.yield %c1194413869_i64 : i64
      }
      default {
        %281 = arith.minf %cst_5, %cst_3 : f16
        %282 = index.castu %arg3 : index to i32
        %283 = math.ctlz %c1063045236_i32 : i32
        %284 = memref.load %alloc_20[%c8, %c1] : memref<10x5xi32>
        %285 = math.fpowi %3, %12 : tensor<10x10xf32>, tensor<10x10xi32>
        %286 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 * 64 - 32, -d2 - 1)>(%arg3, %c10, %c2, %arg3)
        %287 = vector.broadcast %c1194413869_i64 : i64 to vector<1xi64>
        %288 = vector.extract %287[0] : vector<1xi64>
        %289 = math.roundeven %6 : tensor<1xf32>
        %290 = arith.mulf %cst_4, %cst_2 : f16
        %291 = arith.remf %cst_3, %cst_2 : f16
        %292 = vector.create_mask %c8 : vector<1xi1>
        %293 = arith.negf %cst_2 : f16
        %294 = arith.minsi %true_0, %true : i1
        memref.tensor_store %11, %alloc_9 : memref<5x1x1xi1>
        %cast = tensor.cast %10 : tensor<10x10xf32> to tensor<?x?xf32>
        %295 = math.log1p %15 : tensor<10x5xf16>
        scf.yield %c1194413869_i64 : i64
      }
      %rank_50 = tensor.rank %3 : tensor<10x10xf32>
      %279 = arith.divui %c1920537583_i32, %c1169788843_i32 : i32
      %280 = arith.minui %c1169788843_i32, %c1976318927_i32 : i32
      scf.yield
    }
    %20 = affine.vector_load %alloc_16[%c7, %c2] : memref<10x5xi64>, vector<1xi64>
    affine.vector_store %20, %alloc_12[%c1, %c10, %c8] : memref<5x1x1xi64>, vector<1xi64>
    %21 = tensor.empty() : tensor<1xi32>
    %22 = tensor.empty() : tensor<i32>
    %23 = linalg.dot ins(%9, %21 : tensor<1xi32>, tensor<1xi32>) outs(%22 : tensor<i32>) -> tensor<i32>
    %24 = arith.subi %true, %true : i1
    %25 = index.divu %c0, %c10
    %26 = arith.shli %c1194413869_i64, %c1194413869_i64 : i64
    %27 = affine.min affine_map<(d0, d1, d2) -> ((d1 - 64) * 32 + d1 + d2 - 96, d1 - 64, d1 - 64)>(%25, %25, %c4)
    %28 = math.floor %cst_5 : f16
    %29 = math.tan %cst_5 : f16
    %30 = arith.subi %c1169788843_i32, %c1920537583_i32 : i32
    %31 = index.maxu %c1, %c1
    %32 = math.expm1 %cst_2 : f16
    %33 = arith.negf %cst_4 : f16
    %34 = vector.broadcast %cst : f32 to vector<10x5xf32>
    %35 = vector.fma %34, %34, %34 : vector<10x5xf32>
    %36 = arith.maxui %true, %true : i1
    %37 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 floordiv 4, (-d0) floordiv 8 - 2)>(%31, %31, %c10, %c6)
    %38 = math.tan %5 : tensor<10x5xf32>
    %39 = arith.minui %c1976318927_i32, %c1358131027_i32 : i32
    %40 = affine.max affine_map<(d0, d1, d2) -> ((((d1 + 128) * 2) ceildiv 64) ceildiv 4, (((d1 + 128) * 2) ceildiv 64) ceildiv 4, d2, d1 floordiv 4 - 96)>(%c12, %c4, %c15)
    %41 = bufferization.to_memref %3 : memref<10x10xf32>
    %42 = affine.load %alloc_12[%c11, %c0, %c1] : memref<5x1x1xi64>
    %true_21 = index.bool.constant true
    %43 = index.divs %c7, %c13
    %inserted = tensor.insert %cst_1 into %10[%c2, %c6] : tensor<10x10xf32>
    %44 = tensor.empty() : tensor<10x5xi64>
    %45 = math.log2 %1 : tensor<5x1x1xf16>
    %46 = index.add %37, %37
    %47 = vector.broadcast %cst : f32 to vector<10x10xf32>
    %48 = vector.fma %47, %47, %47 : vector<10x10xf32>
    %49 = bufferization.clone %alloc : memref<1xf16> to memref<1xf16>
    %50 = arith.remf %cst, %cst : f32
    %51 = arith.addf %cst_3, %cst_2 : f16
    %52 = math.ceil %1 : tensor<5x1x1xf16>
    %53 = math.atan %19 : tensor<10xf32>
    %54 = arith.floordivsi %c1976318927_i32, %c410749792_i32 : i32
    %55 = arith.maxui %true_21, %true : i1
    %alloc_22 = memref.alloc() : memref<1xf32>
    %56 = affine.apply affine_map<(d0, d1, d2) -> ((-d0) floordiv 4)>(%c2, %c1, %c7)
    %57 = index.sub %43, %c1
    %58 = index.ceildivs %c4, %c9
    %alloc_23 = memref.alloc() : memref<i32>
    memref.tensor_store %23, %alloc_23 : memref<i32>
    %59 = math.floor %cst_3 : f16
    %60 = index.maxu %c6, %c6
    %61 = arith.mulf %cst_4, %cst_3 : f16
    %false = index.bool.constant false
    memref.copy %alloc_10, %alloc : memref<1xf16> to memref<1xf16>
    %62 = index.divs %27, %46
    %63 = arith.shrsi %c1169788843_i32, %c1920537583_i32 : i32
    %inserted_24 = tensor.insert %true into %18[%c0, %c4, %c0] : tensor<1x5x1xi1>
    %64 = arith.maxui %false, %false : i1
    %65 = index.mul %c1, %c6
    %66 = vector.flat_transpose %20 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
    %67 = math.log1p %cst_5 : f16
    %68 = arith.subi %true, %true_21 : i1
    %69 = affine.apply affine_map<(d0) -> (d0 - (-d0 - 32) - 72)>(%c4)
    %collapsed = tensor.collapse_shape %4 [[0, 1]] : tensor<10x10xf32> into tensor<100xf32>
    %70 = math.absi %9 : tensor<1xi32>
    %71 = arith.shrui %c1920537583_i32, %c1920537583_i32 : i32
    %72 = vector.broadcast %c1194413869_i64 : i64 to vector<1x1xi64>
    %73 = vector.outerproduct %20, %20, %72 {kind = #vector.kind<maxui>} : vector<1xi64>, vector<1xi64>
    %74 = memref.load %alloc[%c0] : memref<1xf16>
    %75 = arith.cmpi sgt, %true_0, %true : i1
    %76 = arith.ori %true_0, %true : i1
    %77 = vector.multi_reduction <or>, %66, %20 [] : vector<1xi64> to vector<1xi64>
    %78 = arith.minf %cst_2, %cst_5 : f16
    %79 = math.ceil %1 : tensor<5x1x1xf16>
    %80 = bufferization.to_memref %transposed : memref<1x5x1xi1>
    %81 = arith.minsi %true_0, %true_21 : i1
    %82 = vector.shuffle %34, %35 [0, 5, 9, 13, 16, 17] : vector<10x5xf32>, vector<10x5xf32>
    %83 = arith.maxf %cst_3, %cst_3 : f16
    %84 = math.ctlz %11 : tensor<5x1x1xi1>
    %85 = math.expm1 %5 : tensor<10x5xf32>
    %86 = affine.apply affine_map<(d0, d1, d2) -> (d1 - d0 - (d1 - d0 - d0))>(%c15, %65, %c9)
    %87 = index.ceildivs %58, %c11
    %88 = index.divs %c12, %c12
    %89 = arith.divui %42, %42 : i64
    %90 = vector.reduction <minsi>, %20 : vector<1xi64> into i64
    %91 = vector.broadcast %cst_2 : f16 to vector<10x10xf16>
    %92 = vector.broadcast %false : i1 to vector<10x10xi1>
    %93 = vector.broadcast %c1920537583_i32 : i32 to vector<10x10xi32>
    %94 = vector.gather %15[%27, %c8] [%93], %92, %91 : tensor<10x5xf16>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xf16> into vector<10x10xf16>
    %95 = math.absi %21 : tensor<1xi32>
    %96 = vector.flat_transpose %66 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
    %97 = math.log2 %15 : tensor<10x5xf16>
    %98 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 mod 2)>(%27, %c11, %c4, %31)
    %99 = memref.atomic_rmw assign %42, %alloc_15[%c0] : (i64, memref<1xi64>) -> i64
    %100 = math.exp2 %cst_4 : f16
    %101 = math.ctlz %0 : tensor<5x1x1xi1>
    %102 = vector.flat_transpose %96 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
    %103 = index.divu %56, %62
    %104 = math.copysign %4, %4 : tensor<10x10xf32>
    %105 = index.maxs %31, %37
    %106 = vector.reduction <and>, %20 : vector<1xi64> into i64
    %107 = vector.broadcast %42 : i64 to vector<5xi64>
    %108 = vector.broadcast %false : i1 to vector<5xi1>
    %109 = vector.maskedload %alloc_16[%c6, %c2], %108, %107 : memref<10x5xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
    %110 = math.absi %true_0 : i1
    %111 = arith.floordivsi %c1358131027_i32, %c410749792_i32 : i32
    %112 = affine.if affine_set<(d0, d1) : (d1 * 16 >= 0, d1 * 16 == 0, d1 >= 0, (d1 - 192) floordiv 128 >= 0)>(%c8, %c2) -> memref<5x1x1xi16> {
      %269 = arith.shrui %c1358131027_i32, %c1169788843_i32 : i32
      %270 = math.atan2 %15, %15 : tensor<10x5xf16>
      %271 = math.ipowi %c1194413869_i64, %42 : i64
      %272 = arith.divsi %42, %42 : i64
      %273 = index.sub %98, %103
      %274 = arith.divui %c410749792_i32, %c1169788843_i32 : i32
      %275 = vector.splat %c3 : vector<10x5xindex>
      %276 = vector.broadcast %cst_1 : f32 to vector<5x1x1xf32>
      %277 = vector.fma %276, %276, %276 : vector<5x1x1xf32>
      %alloc_47 = memref.alloc() : memref<5x1x1xi16>
      affine.yield %alloc_47 : memref<5x1x1xi16>
    } else {
      %269 = bufferization.to_memref %14 : memref<10x5xi1>
      %270 = math.log %reduced : tensor<10xf32>
      %271 = vector.broadcast %true_21 : i1 to vector<5x1x1xi1>
      %272 = arith.shli %true_21, %true : i1
      %273 = vector.broadcast %cst : f32 to vector<5x5xf32>
      %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %34, %34, %273 : vector<10x5xf32>, vector<10x5xf32> into vector<5x5xf32>
      %275 = arith.minui %c1169788843_i32, %c410749792_i32 : i32
      %276 = tensor.empty() : tensor<10x5xi64>
      %mapped = linalg.map ins(%alloc_16, %44, %44 : memref<10x5xi64>, tensor<10x5xi64>, tensor<10x5xi64>) outs(%276 : tensor<10x5xi64>)
        (%in: i64, %in_48: i64, %in_49: i64) {
          %278 = vector.broadcast %cst_1 : f32 to vector<1xf32>
          %279 = vector.fma %278, %278, %278 : vector<1xf32>
          %280 = math.expm1 %3 : tensor<10x10xf32>
          %cast = tensor.cast %14 : tensor<10x5xi1> to tensor<?x?xi1>
          %281 = vector.load %269[%c0, %c2] : memref<10x5xi1>, vector<10x5xi1>
          %alloc_50 = memref.alloc() : memref<10x10xi1>
          %282 = math.absi %9 : tensor<1xi32>
          %283 = arith.minf %cst_5, %cst_2 : f16
          %284 = vector.broadcast %cst : f32 to vector<10x5xf32>
          %285 = vector.fma %284, %284, %34 : vector<10x5xf32>
          %286 = memref.load %41[%c8, %c8] : memref<10x10xf32>
          %287 = arith.maxf %cst_2, %cst_5 : f16
          %288 = arith.ori %c1169788843_i32, %c1976318927_i32 : i32
          affine.store %cst_5, %alloc_10[%c3] : memref<1xf16>
          %289 = index.mul %60, %60
          %290 = index.maxs %69, %86
          %291 = arith.negf %cst : f32
          %292 = math.ipowi %9, %9 : tensor<1xi32>
          %293 = vector.broadcast %cst_1 : f32 to vector<1x1xf32>
          %294 = vector.outerproduct %278, %278, %293 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
          vector.print %96 : vector<1xi64>
          %295 = affine.load %alloc_14[%c13] : memref<1xi32>
          %296 = math.expm1 %6 : tensor<1xf32>
          %297 = arith.minf %cst_4, %cst_3 : f16
          memref.assume_alignment %41, 16 : memref<10x10xf32>
          %298 = math.cttz %18 : tensor<1x5x1xi1>
          %299 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %279, %279, %cst_1 : vector<1xf32>, vector<1xf32> into f32
          %300 = arith.ceildivsi %c1194413869_i64, %c1194413869_i64 : i64
          %301 = math.ctlz %13 : tensor<1xi16>
          %302 = index.sub %46, %c5
          %303 = vector.broadcast %cst_1 : f32 to vector<1xf32>
          %304 = vector.transfer_write %303, %4[%c15, %31] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xf32>, tensor<10x10xf32>
          %305 = math.rsqrt %10 : tensor<10x10xf32>
          %306 = index.casts %true : i1 to index
          memref.assume_alignment %alloc_17, 8 : memref<10x10xf32>
          %307 = index.divs %c2, %c0
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %277 = arith.subi %c1063045236_i32, %c1169788843_i32 : i32
      %alloc_47 = memref.alloc() : memref<5x1x1xi16>
      affine.yield %alloc_47 : memref<5x1x1xi16>
    }
    %113 = index.ceildivs %103, %c9
    %114 = math.round %10 : tensor<10x10xf32>
    %115 = math.round %cst_3 : f16
    %116 = vector.shuffle %102, %109 [0, 1, 2, 3] : vector<1xi64>, vector<5xi64>
    %alloc_25 = memref.alloc() : memref<5x1x1xi64>
    memref.copy %alloc_12, %alloc_25 : memref<5x1x1xi64> to memref<5x1x1xi64>
    %117 = arith.ceildivsi %true, %true_21 : i1
    %alloc_26 = memref.alloc() : memref<5x1x1xf16>
    memref.tensor_store %1, %alloc_26 : memref<5x1x1xf16>
    %118 = affine.load %80[%c3, %c15, %c13] : memref<1x5x1xi1>
    affine.store %cst, %alloc_13[%c12, %c1] : memref<10x10xf32>
    memref.tensor_store %11, %alloc_9 : memref<5x1x1xi1>
    %rank = tensor.rank %4 : tensor<10x10xf32>
    %119 = bufferization.to_memref %11 : memref<5x1x1xi1>
    %120 = math.floor %cst_1 : f32
    %121 = arith.minui %c410749792_i32, %c1920537583_i32 : i32
    %122 = memref.atomic_rmw mulf %cst, %alloc_7[%c8, %c8] : (f32, memref<10x10xf32>) -> f32
    %123 = arith.minf %cst_2, %cst_2 : f16
    %124 = vector.multi_reduction <maxui>, %107, %107 [] : vector<5xi64> to vector<5xi64>
    %125 = arith.maxui %true_21, %false : i1
    %inserted_27 = tensor.insert %true_21 into %0[%c2, %c0, %c0] : tensor<5x1x1xi1>
    %126 = arith.divui %c1358131027_i32, %c410749792_i32 : i32
    %127 = vector.matrix_multiply %20, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
    %alloc_28 = memref.alloc() : memref<10x5xi32>
    memref.copy %alloc_20, %alloc_28 : memref<10x5xi32> to memref<10x5xi32>
    %128 = arith.ceildivsi %c410749792_i32, %c1063045236_i32 : i32
    %129 = math.cos %4 : tensor<10x10xf32>
    vector.print %108 : vector<5xi1>
    %130 = math.round %16 : tensor<10x10xf32>
    %cst_29 = arith.constant 1.000000e+00 : f32
    %cst_30 = arith.constant 0.000000e+00 : f32
    %131 = vector.transfer_read %19[%c7], %cst_30 : tensor<10xf32>, vector<f32>
    %132 = math.fma %6, %6, %6 : tensor<1xf32>
    %133 = math.log1p %6 : tensor<1xf32>
    %134 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, (d2 mod 64) * 2, (d2 mod 64 - 65) * 128, d2 mod 64 - 1)>(%c13, %37, %c9, %c10)
    %135 = vector.splat %cst_29 : vector<10x5xf32>
    %136 = bufferization.to_memref %4 : memref<10x10xf32>
    %collapsed_31 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<5x1x1xi32> into tensor<5x1xi32>
    %137 = vector.broadcast %cst_5 : f16 to vector<10xf16>
    %138 = vector.transfer_write %137, %1[%37, %86, %c0] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<10xf16>, tensor<5x1x1xf16>
    %139 = math.floor %cst_1 : f32
    %140 = arith.subi %c410749792_i32, %c410749792_i32 : i32
    %141 = affine.load %alloc_6[%c2, %c9] : memref<10x10xi1>
    %142 = scf.index_switch %c1 -> tensor<5x1x1xi64> 
    case 1 {
      %269 = arith.minf %cst_3, %cst_5 : f16
      %270 = vector.broadcast %cst : f32 to vector<10xf32>
      %271 = vector.insert %270, %48 [6] : vector<10xf32> into vector<10x10xf32>
      %cast = tensor.cast %14 : tensor<10x5xi1> to tensor<?x?xi1>
      %272 = vector.splat %58 : vector<10x5xindex>
      %273 = arith.minf %cst_29, %cst_1 : f32
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_47 = arith.constant 0 : i32
      %274 = vector.transfer_read %7[%88, %c11], %c0_i32_47 : tensor<10x5xi32>, vector<i32>
      %275 = affine.apply affine_map<(d0) -> (d0 - (-d0 - 32) - 72)>(%rank)
      %276 = index.divu %103, %113
      %277 = vector.broadcast %cst_1 : f32 to vector<10x5xf32>
      %278 = vector.fma %277, %35, %35 : vector<10x5xf32>
      %279 = arith.maxui %true_0, %141 : i1
      %280 = arith.ceildivsi %c1169788843_i32, %c1169788843_i32 : i32
      %281 = arith.negf %cst_1 : f32
      %282 = math.roundeven %17 : tensor<10x10xf32>
      %283 = math.log2 %16 : tensor<10x10xf32>
      %alloc_48 = memref.alloc() : memref<1x1xi32>
      %284 = tensor.empty() : tensor<5x1xi32>
      %285 = linalg.matmul ins(%collapsed_31, %alloc_48 : tensor<5x1xi32>, memref<1x1xi32>) outs(%284 : tensor<5x1xi32>) -> tensor<5x1xi32>
      %286 = scf.while (%arg3 = %c1169788843_i32) : (i32) -> i32 {
        %288 = arith.remf %cst_5, %cst_3 : f16
        %alloc_49 = memref.alloc() : memref<1xf32>
        memref.tensor_store %6, %alloc_49 : memref<1xf32>
        %289 = math.absi %8 : tensor<10x10xi64>
        %290 = arith.minsi %arg3, %c1920537583_i32 : i32
        %291 = arith.divui %42, %c1194413869_i64 : i64
        %292 = arith.andi %c1976318927_i32, %c0_i32 : i32
        %293 = vector.broadcast %false : i1 to vector<10xi1>
        %dest_50, %accumulated_value_51 = vector.scan <minui>, %92, %293 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10xi1>, vector<10xi1>
        %294 = vector.broadcast %c1169788843_i32 : i32 to vector<1xi32>
        scf.condition(%true) %c1976318927_i32 : i32
      } do {
      ^bb0(%arg3: i32):
        %288 = index.castu %31 : index to i32
        %289 = arith.negf %cst_29 : f32
        %290 = affine.max affine_map<(d0, d1, d2) -> (0, (-d0) mod 16, d0 - 32, d2 * 2 + 64)>(%88, %88, %40)
        %291 = affine.min affine_map<(d0, d1) -> (d0)>(%57, %c15)
        %292 = memref.atomic_rmw mulf %cst, %136[%c5, %c8] : (f32, memref<10x10xf32>) -> f32
        %cast_49 = tensor.cast %5 : tensor<10x5xf32> to tensor<?x?xf32>
        %293 = math.log %3 : tensor<10x10xf32>
        %294 = arith.cmpf uno, %cst_2, %cst_5 : f16
        %295 = affine.load %alloc_13[%c12, %c7] : memref<10x10xf32>
        %296 = arith.maxui %false, %true_0 : i1
        %297 = memref.load %alloc_14[%c0] : memref<1xi32>
        %298 = index.add %c0, %56
        %299 = vector.reduction <xor>, %66 : vector<1xi64> into i64
        %300 = index.add %37, %c8
        %301 = vector.bitcast %66 : vector<1xi64> to vector<1xi64>
        %inserted_50 = tensor.insert %c1063045236_i32 into %12[%c4, %c8] : tensor<10x10xi32>
        scf.yield %c1358131027_i32 : i32
      }
      %287 = tensor.empty() : tensor<5x1x1xi64>
      scf.yield %287 : tensor<5x1x1xi64>
    }
    default {
      affine.store %42, %alloc_16[%c10, %c6] : memref<10x5xi64>
      %269 = affine.max affine_map<(d0) -> (d0 * 3, (d0 ceildiv 32) ceildiv 64, (d0 * -2) ceildiv 64, -(d0 ceildiv 4))>(%27)
      %270 = math.log2 %6 : tensor<1xf32>
      %271 = arith.maxf %cst_1, %cst_29 : f32
      %272 = vector.splat %31 : vector<10x5xindex>
      %273 = index.divs %c15, %c3
      %274 = vector.broadcast %cst_29 : f32 to vector<10x10xf32>
      %275 = vector.fma %274, %274, %48 : vector<10x10xf32>
      affine.store %cst_1, %alloc_17[%c11, %c5] : memref<10x10xf32>
      %276 = vector.broadcast %c1194413869_i64 : i64 to vector<5x1x1xi64>
      %277 = vector.broadcast %true_0 : i1 to vector<5x1x1xi1>
      %278 = vector.broadcast %c1976318927_i32 : i32 to vector<5x1x1xi32>
      %279 = vector.gather %alloc_15[%c11] [%278], %277, %276 : memref<1xi64>, vector<5x1x1xi32>, vector<5x1x1xi1>, vector<5x1x1xi64> into vector<5x1x1xi64>
      %280 = math.floor %cst_4 : f16
      %281 = affine.min affine_map<(d0) -> (d0, d0 * -256, d0)>(%c13)
      %282 = index.casts %c1358131027_i32 : i32 to index
      %283 = arith.minf %cst_3, %cst_5 : f16
      %284 = vector.create_mask %c14, %57 : vector<10x5xi1>
      %285 = index.ceildivs %281, %c4
      %286 = arith.divsi %false, %141 : i1
      %287 = tensor.empty() : tensor<5x1x1xi64>
      scf.yield %287 : tensor<5x1x1xi64>
    }
    %143 = arith.minf %cst_2, %cst_3 : f16
    %144 = index.castu %c7 : index to i32
    %145 = index.maxu %40, %c4
    %146 = arith.negf %cst_3 : f16
    %147 = math.absi %11 : tensor<5x1x1xi1>
    %148 = affine.min affine_map<(d0, d1, d2) -> (d1, -((d2 - (d2 + 1)) ceildiv 16), d1)>(%105, %c10, %113)
    memref.assume_alignment %alloc_7, 16 : memref<10x10xf32>
    %alloc_32 = memref.alloc() : memref<1xi1>
    %149 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_32 : memref<1xi1>) outs(%0 : tensor<5x1x1xi1>) {
    ^bb0(%in: i1, %out: i1):
      affine.store %cst_2, %alloc_11[%c11, %c9] : memref<10x10xf16>
      %269 = math.ceil %4 : tensor<10x10xf32>
      %270 = math.round %cst_5 : f16
      %271 = arith.xori %true, %in : i1
      %272 = affine.max affine_map<(d0) -> (d0 floordiv 16, -(d0 floordiv 16))>(%56)
      %273 = arith.ceildivsi %c410749792_i32, %c1920537583_i32 : i32
      %274 = math.tan %cst_3 : f16
      %275 = arith.shli %c-27799_i16, %c-27799_i16 : i16
      %276 = affine.apply affine_map<(d0) -> (-64)>(%98)
      %277 = affine.min affine_map<(d0, d1, d2, d3) -> ((d0 + d3 ceildiv 64) ceildiv 4 + d0 + d3 ceildiv 64)>(%87, %58, %62, %c10)
      %278 = vector.reduction <and>, %107 : vector<5xi64> into i64
      %279 = arith.ceildivsi %in, %true_0 : i1
      %280 = scf.while (%arg3 = %20) : (vector<1xi64>) -> vector<1xi64> {
        %300 = vector.create_mask %60 : vector<1xi1>
        %301 = arith.shrui %true_21, %false : i1
        %302 = math.absi %9 : tensor<1xi32>
        %303 = vector.broadcast %cst_29 : f32 to vector<1xf32>
        %304 = vector.fma %303, %303, %303 : vector<1xf32>
        %305 = math.ctpop %13 : tensor<1xi16>
        %306 = arith.remf %cst_2, %cst_4 : f16
        %307 = index.maxs %58, %c10
        %308 = arith.minui %c1920537583_i32, %c410749792_i32 : i32
        scf.condition(%141) %20 : vector<1xi64>
      } do {
      ^bb0(%arg3: vector<1xi64>):
        %300 = vector.maskedload %alloc_12[%c3, %c0, %c0], %108, %107 : memref<5x1x1xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %alloc_47 = memref.alloc() : memref<5x1xi32>
        memref.tensor_store %collapsed_31, %alloc_47 : memref<5x1xi32>
        %301 = arith.minf %cst_1, %cst_29 : f32
        %302 = tensor.empty() : tensor<1xi1>
        %303 = math.absi %in : i1
        %304 = arith.andi %c1194413869_i64, %c1194413869_i64 : i64
        %305 = bufferization.to_tensor %80 : memref<1x5x1xi1>
        %306 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 mod 16, -(d2 floordiv 128), (d3 - d2) floordiv 2)>(%c11, %31, %87, %277)
        %307 = math.ipowi %in, %true_21 : i1
        %308 = affine.min affine_map<(d0) -> (d0, d0 + 32, d0)>(%25)
        %309 = math.ipowi %11, %11 : tensor<5x1x1xi1>
        %310 = arith.shli %c1194413869_i64, %c1194413869_i64 : i64
        %311 = tensor.empty() : tensor<10x5xi32>
        %312 = arith.maxui %141, %in : i1
        %313 = arith.divui %true_21, %false : i1
        %314 = arith.mulf %cst_1, %cst : f32
        scf.yield %20 : vector<1xi64>
      }
      %281 = arith.andi %118, %141 : i1
      %282 = arith.floordivsi %true_21, %true_21 : i1
      %283 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%transposed : tensor<1x5x1xi1>) {
      ^bb0(%out_47: i1):
        %300 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %108, %108, %true : vector<5xi1>, vector<5xi1> into i1
        %301 = memref.realloc %alloc_10 : memref<1xf16> to memref<1xf16>
        %302 = vector.splat %c6 : vector<5x1x1xindex>
        %alloc_48 = memref.alloc() : memref<5x1x1xf16>
        %303 = vector.broadcast %cst_2 : f16 to vector<1xf16>
        %304 = vector.broadcast %true : i1 to vector<1xi1>
        %305 = vector.broadcast %c1169788843_i32 : i32 to vector<1xi32>
        %306 = vector.gather %alloc_48[%86, %37, %56] [%305], %304, %303 : memref<5x1x1xf16>, vector<1xi32>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %307 = tensor.empty() : tensor<10x5xf16>
        %308 = vector.create_mask %25 : vector<1xi1>
        %309 = math.expm1 %4 : tensor<10x10xf32>
        %310 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, d1 floordiv 8, d3 - (-d1 - 64), -d1 - 64)>(%62, %58, %c11, %27)
        %311 = tensor.empty() : tensor<10x5xi32>
        memref.copy %alloc_7, %alloc_17 : memref<10x10xf32> to memref<10x10xf32>
        memref.copy %41, %alloc_7 : memref<10x10xf32> to memref<10x10xf32>
        %312 = memref.atomic_rmw maxf %cst_2, %alloc_11[%c5, %c1] : (f16, memref<10x10xf16>) -> f16
        %313 = math.ceil %3 : tensor<10x10xf32>
        %314 = arith.addf %cst_3, %cst_3 : f16
        %315 = vector.flat_transpose %108 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        %cst_49 = arith.constant 2.484800e+04 : f16
        %316 = math.round %5 : tensor<10x5xf32>
        %317 = arith.shrui %c1194413869_i64, %42 : i64
        %318 = arith.maxf %cst_1, %cst_1 : f32
        %319 = index.castu %false : i1 to index
        %from_elements_50 = tensor.from_elements %118, %true, %141, %true, %true_0 : tensor<5x1x1xi1>
        %320 = arith.negf %cst_2 : f16
        %alloca_51 = memref.alloca() : memref<1xi1>
        %321 = vector.shuffle %127, %107 [1, 2, 5] : vector<1xi64>, vector<5xi64>
        %322 = arith.maxui %c1169788843_i32, %c1920537583_i32 : i32
        %323 = math.absi %22 : tensor<i32>
        %324 = math.log10 %cst_5 : f16
        %325 = arith.shrui %42, %c1194413869_i64 : i64
        %326 = index.castu %105 : index to i32
        %327 = math.log1p %19 : tensor<10xf32>
        %328 = arith.divui %141, %141 : i1
        %329 = index.maxs %43, %69
        linalg.yield %141 : i1
      } -> tensor<1x5x1xi1>
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %284 = vector.transfer_read %alloc_16[%c0, %40], %c0_i64 : memref<10x5xi64>, vector<i64>
      %285 = arith.ceildivsi %c1920537583_i32, %c1169788843_i32 : i32
      %286 = vector.broadcast %false : i1 to vector<5x5xi1>
      %287 = vector.outerproduct %108, %108, %286 {kind = #vector.kind<minui>} : vector<5xi1>, vector<5xi1>
      %288 = arith.remui %c1194413869_i64, %c1_i64 : i64
      %289 = math.cos %cst_5 : f16
      %290 = arith.negf %cst_29 : f32
      %291 = arith.floordivsi %c1063045236_i32, %c1920537583_i32 : i32
      %292 = math.ceil %16 : tensor<10x10xf32>
      %293 = affine.min affine_map<(d0, d1, d2) -> (d2, d2 ceildiv 16)>(%276, %c2, %43)
      memref.assume_alignment %alloc_20, 16 : memref<10x5xi32>
      %294 = memref.load %alloc_15[%c0] : memref<1xi64>
      %295 = math.tan %15 : tensor<10x5xf16>
      %296 = math.log1p %3 : tensor<10x10xf32>
      %297 = math.ctlz %c1194413869_i64 : i64
      %298 = index.casts %c1920537583_i32 : i32 to index
      %299 = affine.max affine_map<(d0, d1, d2) -> (d1 - 128)>(%27, %298, %c13)
      linalg.yield %in : i1
    } -> tensor<5x1x1xi1>
    %150 = affine.apply affine_map<(d0, d1) -> (d1 - d0 - 8)>(%c8, %c4)
    %151 = index.maxs %c7, %87
    %152 = arith.remf %cst_5, %cst_3 : f16
    %153 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%1 : tensor<5x1x1xf16>) {
    ^bb0(%out: f16):
      %269 = arith.cmpf ogt, %cst_5, %cst_3 : f16
      %270 = scf.if %true_21 -> (memref<10x5xi32>) {
        %collapsed_49 = tensor.collapse_shape %7 [[0, 1]] : tensor<10x5xi32> into tensor<50xi32>
        %298 = index.divs %134, %56
        %299 = math.tanh %5 : tensor<10x5xf32>
        %300 = math.roundeven %cst_2 : f16
        %301 = memref.load %49[%c0] : memref<1xf16>
        %302 = vector.splat %c11 : vector<10x5xindex>
        %303 = arith.shli %c410749792_i32, %c1976318927_i32 : i32
        %304 = arith.minf %cst_3, %cst_3 : f16
        scf.yield %alloc_20 : memref<10x5xi32>
      } else {
        %298 = math.ceil %16 : tensor<10x10xf32>
        %299 = index.divs %113, %c12
        %300 = vector.matrix_multiply %20, %107 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xi64>, vector<5xi64>) -> vector<5xi64>
        %301 = arith.floordivsi %c1358131027_i32, %c1358131027_i32 : i32
        %302 = math.rsqrt %cst : f32
        %303 = index.casts %151 : index to i32
        %304 = bufferization.clone %alloc_10 : memref<1xf16> to memref<1xf16>
        %305 = arith.ceildivsi %true_0, %true : i1
        scf.yield %alloc_20 : memref<10x5xi32>
      }
      %271 = math.absi %true_0 : i1
      %inserted_47 = tensor.insert %cst into %5[%c3, %c3] : tensor<10x5xf32>
      %272 = arith.minf %cst, %cst_29 : f32
      %cst_48 = arith.constant 1.000000e+00 : f32
      %273 = vector.transfer_read %5[%113, %c7], %cst_48 : tensor<10x5xf32>, vector<f32>
      %274 = arith.remsi %true_21, %true : i1
      %275 = tensor.empty() : tensor<1xi1>
      %276 = vector.broadcast %false : i1 to vector<1xi1>
      %277 = vector.broadcast %c1976318927_i32 : i32 to vector<1xi32>
      %278 = vector.gather %275[%145] [%277], %276, %276 : tensor<1xi1>, vector<1xi32>, vector<1xi1>, vector<1xi1> into vector<1xi1>
      %cast = tensor.cast %10 : tensor<10x10xf32> to tensor<?x?xf32>
      %279 = vector.broadcast %true_0 : i1 to vector<1xi1>
      %280 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 - 2)>(%31, %c6, %103, %37)
      %281 = vector.broadcast %cst_29 : f32 to vector<1xf32>
      %282 = vector.gather %alloc_8[%c10, %31] [%277], %279, %281 : memref<10x10xf32>, vector<1xi32>, vector<1xi1>, vector<1xf32> into vector<1xf32>
      %283 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 + 2)>(%c6, %103, %88, %c11)
      %284 = index.sizeof
      %285 = affine.max affine_map<(d0, d1, d2) -> (d0 - d2, (d0 - (d1 - (d0 - d2)) - 1) floordiv 16, d1)>(%103, %c9, %c12)
      %286 = vector.matrix_multiply %281, %282 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
      %287 = math.ctlz %true : i1
      %288 = index.maxu %c15, %145
      %289 = math.atan2 %3, %4 : tensor<10x10xf32>
      memref.assume_alignment %136, 16 : memref<10x10xf32>
      %290 = arith.cmpf ogt, %cst_29, %cst_48 : f32
      %291 = math.absi %0 : tensor<5x1x1xi1>
      %292 = arith.shrui %118, %141 : i1
      memref.assume_alignment %alloc_11, 2 : memref<10x10xf16>
      scf.if %141 {
        %298 = affine.apply affine_map<(d0) -> (d0 - (-d0 - 32) - 72)>(%60)
        vector.print %277 : vector<1xi32>
        %299 = vector.create_mask %87, %c2 : vector<10x5xi1>
        %300 = affine.load %alloc_11[%c1, %c13] : memref<10x10xf16>
        %301 = index.castu %c410749792_i32 : i32 to index
        %302 = tensor.empty() : tensor<10x5xf32>
        %303 = linalg.matmul ins(%10, %5 : tensor<10x10xf32>, tensor<10x5xf32>) outs(%302 : tensor<10x5xf32>) -> tensor<10x5xf32>
        vector.print %92 : vector<10x10xi1>
        %304 = math.absi %11 : tensor<5x1x1xi1>
      }
      %293 = arith.shrui %c1920537583_i32, %c1358131027_i32 : i32
      memref.copy %136, %alloc_8 : memref<10x10xf32> to memref<10x10xf32>
      %294 = bufferization.clone %alloc_13 : memref<10x10xf32> to memref<10x10xf32>
      memref.assume_alignment %alloc_7, 2 : memref<10x10xf32>
      %295 = memref.load %119[%c0, %c0, %c0] : memref<5x1x1xi1>
      %296 = index.ceildivu %c4, %148
      %297 = vector.create_mask %283, %c13 : vector<10x5xi1>
      linalg.yield %cst_5 : f16
    } -> tensor<5x1x1xf16>
    %154 = affine.max affine_map<(d0) -> ((d0 + 2) mod 8)>(%rank)
    %155 = arith.divf %cst_1, %cst_29 : f32
    %156 = affine.apply affine_map<(d0) -> (0)>(%c8)
    %157 = math.rsqrt %15 : tensor<10x5xf16>
    %158 = tensor.empty() : tensor<10x5xi32>
    %159 = linalg.matmul ins(%12, %7 : tensor<10x10xi32>, tensor<10x5xi32>) outs(%158 : tensor<10x5xi32>) -> tensor<10x5xi32>
    %160 = math.cttz %44 : tensor<10x5xi64>
    %161 = affine.min affine_map<(d0, d1) -> (d0 mod 4, -(d1 + 8), (d1 * 4) mod 128, -(d1 + 8))>(%c15, %57)
    %162 = arith.remf %cst_2, %cst_2 : f16
    %163 = bufferization.clone %49 : memref<1xf16> to memref<1xf16>
    %164 = index.maxs %c7, %c4
    %165 = vector.extract %66[0] : vector<1xi64>
    scf.index_switch %c11 
    case 1 {
      %269 = index.divs %65, %c5
      %270 = index.add %25, %145
      %271 = index.sub %43, %c6
      %272 = arith.minui %42, %c1194413869_i64 : i64
      %273 = arith.ceildivsi %true_21, %true_0 : i1
      %inserted_47 = tensor.insert %cst into %5[%c5, %c0] : tensor<10x5xf32>
      %274 = arith.minui %42, %c1194413869_i64 : i64
      %275 = affine.if affine_set<(d0, d1, d2) : (d0 == 0, d0 floordiv 8 >= 0, d0 floordiv 8 >= 0)>(%c2, %c12, %c0) -> i16 {
        %282 = index.divu %c4, %c6
        %283 = math.absi %14 : tensor<10x5xi1>
        %284 = index.divu %87, %c7
        %285 = bufferization.clone %alloc_10 : memref<1xf16> to memref<1xf16>
        %286 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %92, %92, %92 : vector<10x10xi1>, vector<10x10xi1> into vector<10x10xi1>
        %cast = tensor.cast %17 : tensor<10x10xf32> to tensor<?x?xf32>
        %287 = vector.splat %c15 : vector<10x10xindex>
        %288 = arith.andi %42, %42 : i64
        affine.yield %c-27799_i16 : i16
      } else {
        %282 = arith.floordivsi %c410749792_i32, %c1976318927_i32 : i32
        %283 = vector.matrix_multiply %96, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
        %284 = arith.negf %cst_4 : f16
        %285 = vector.reduction <maxui>, %109 : vector<5xi64> into i64
        %286 = arith.minui %c1976318927_i32, %c410749792_i32 : i32
        %287 = index.divu %c9, %rank
        %288 = affine.load %alloc_10[%c8] : memref<1xf16>
        %289 = math.tan %19 : tensor<10xf32>
        affine.yield %c-27799_i16 : i16
      }
      %276 = vector.matrix_multiply %109, %107 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
      %277 = memref.atomic_rmw ori %c1194413869_i64, %alloc_15[%c0] : (i64, memref<1xi64>) -> i64
      %278 = memref.realloc %alloc_15 : memref<1xi64> to memref<1xi64>
      %alloc_48 = memref.alloc() : memref<5x1x1xf16>
      memref.tensor_store %1, %alloc_48 : memref<5x1x1xf16>
      %279 = vector.shuffle %93, %93 [0, 1, 2, 3, 4, 6, 8, 11] : vector<10x10xi32>, vector<10x10xi32>
      %false_49 = index.bool.constant false
      %280 = arith.ceildivsi %c1358131027_i32, %c1063045236_i32 : i32
      %281 = math.round %3 : tensor<10x10xf32>
      scf.yield
    }
    case 2 {
      memref.copy %alloc, %163 : memref<1xf16> to memref<1xf16>
      %269 = vector.create_mask %c4, %c3, %c5 : vector<5x1x1xi1>
      %270 = arith.addf %cst_1, %cst : f32
      scf.index_switch %c2 
      case 1 {
        %283 = vector.broadcast %cst_1 : f32 to vector<10xf32>
        %dest_47, %accumulated_value_48 = vector.scan <mul>, %47, %283 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10xf32>, vector<10xf32>
        %284 = arith.shrsi %true_21, %true : i1
        %285 = vector.create_mask %c14, %c6, %c3 : vector<5x1x1xi1>
        %286 = arith.maxui %true, %118 : i1
        %287 = affine.min affine_map<(d0) -> (d0)>(%150)
        %288 = math.absi %11 : tensor<5x1x1xi1>
        affine.store %cst_1, %136[%c12, %c6] : memref<10x10xf32>
        %289 = arith.andi %c-27799_i16, %c-27799_i16 : i16
        %290 = math.log2 %cst_5 : f16
        vector.print %91 : vector<10x10xf16>
        %291 = arith.maxsi %c410749792_i32, %c1169788843_i32 : i32
        %cast = tensor.cast %transposed : tensor<1x5x1xi1> to tensor<?x?x?xi1>
        %292 = index.sizeof
        %293 = affine.load %alloc_13[%c6, %c15] : memref<10x10xf32>
        %inserted_49 = tensor.insert %cst_29 into %3[%c8, %c3] : tensor<10x10xf32>
        %294 = arith.xori %42, %42 : i64
        scf.yield
      }
      case 2 {
        %283 = vector.broadcast %c410749792_i32 : i32 to vector<10xi32>
        %dest_47, %accumulated_value_48 = vector.scan <maxsi>, %93, %283 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10xi32>, vector<10xi32>
        %284 = math.log %cst_4 : f16
        %285 = arith.ceildivsi %c410749792_i32, %c1920537583_i32 : i32
        %286 = vector.broadcast %cst_1 : f32 to vector<5x1x1xf32>
        %287 = vector.fma %286, %286, %286 : vector<5x1x1xf32>
        %288 = arith.minf %cst_2, %cst_4 : f16
        %289 = arith.shli %42, %42 : i64
        %290 = vector.reduction <minf>, %137 : vector<10xf16> into f16
        %cst_49 = arith.constant 3.862400e+04 : f16
        %291 = affine.min affine_map<(d0) -> (0, d0 floordiv 128, 0, 0)>(%62)
        %292 = math.roundeven %cst_5 : f16
        %293 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %137, %91, %137 : vector<10xf16>, vector<10x10xf16> into vector<10xf16>
        %true_50 = index.bool.constant true
        %294 = vector.create_mask %c11, %c9 : vector<10x5xi1>
        %295 = vector.splat %cst_29 : vector<5x1x1xf32>
        %296 = vector.splat %c1358131027_i32 : vector<1xi32>
        %297 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %66, %42 : vector<1xi64>, vector<1xi64> into i64
        scf.yield
      }
      case 3 {
        %283 = math.ipowi %12, %12 : tensor<10x10xi32>
        affine.store %cst, %alloc_13[%c4, %c1] : memref<10x10xf32>
        %284 = vector.broadcast %cst : f32 to vector<10x10xf32>
        %285 = vector.fma %284, %284, %48 : vector<10x10xf32>
        %286 = math.fma %cst_3, %cst_4, %cst_5 : f16
        %287 = vector.broadcast %c1194413869_i64 : i64 to vector<1xi64>
        vector.transfer_write %287, %alloc_16[%25, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xi64>, memref<10x5xi64>
        %288 = memref.load %alloc_10[%c0] : memref<1xf16>
        %rank_47 = tensor.rank %14 : tensor<10x5xi1>
        %289 = vector.broadcast %cst_1 : f32 to vector<5x1x1xf32>
        %290 = vector.fma %289, %289, %289 : vector<5x1x1xf32>
        %291 = math.roundeven %1 : tensor<5x1x1xf16>
        %292 = index.castu %105 : index to i32
        %293 = math.copysign %4, %4 : tensor<10x10xf32>
        %294 = arith.remf %cst_29, %cst_29 : f32
        %295 = arith.maxui %c1169788843_i32, %c410749792_i32 : i32
        %296 = arith.shrsi %c1358131027_i32, %c1358131027_i32 : i32
        %297 = affine.apply affine_map<(d0) -> (d0 - (-d0 - 32) - 72)>(%c0)
        %298 = math.floor %17 : tensor<10x10xf32>
        scf.yield
      }
      default {
        %283 = vector.broadcast %cst_2 : f16 to vector<5x1x1xf16>
        %284 = tensor.empty(%57) : tensor<10x?xi16>
        %285 = vector.broadcast %cst_3 : f16 to vector<f16>
        %286 = vector.transfer_write %285, %1[%105, %62, %62] : vector<f16>, tensor<5x1x1xf16>
        %287 = arith.maxui %42, %42 : i64
        %288 = affine.load %alloc_6[%c7, %c9] : memref<10x10xi1>
        %289 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 mod 4, d1 mod 64)>(%c10, %58, %25, %105)
        %290 = arith.subi %c1358131027_i32, %c1920537583_i32 : i32
        memref.assume_alignment %alloc_13, 1 : memref<10x10xf32>
        affine.store %cst_4, %alloc_11[%c5, %c8] : memref<10x10xf16>
        %291 = math.absi %0 : tensor<5x1x1xi1>
        %292 = math.absi %c1194413869_i64 : i64
        affine.store %c1194413869_i64, %alloc_15[%c2] : memref<1xi64>
        %293 = vector.load %alloc_20[%c9, %c0] : memref<10x5xi32>, vector<10x10xi32>
        %collapsed_47 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<5x1x1xi1> into tensor<5x1xi1>
        %294 = arith.remf %cst_2, %cst_5 : f16
        %295 = math.ctlz %288 : i1
      }
      %271 = math.expm1 %1 : tensor<5x1x1xf16>
      %272 = vector.broadcast %cst_1 : f32 to vector<10x10xf32>
      %273 = vector.fma %272, %48, %272 : vector<10x10xf32>
      vector.print %127 : vector<1xi64>
      %274 = index.casts %42 : i64 to index
      %275 = math.copysign %6, %6 : tensor<1xf32>
      %276 = bufferization.clone %136 : memref<10x10xf32> to memref<10x10xf32>
      %277 = affine.load %163[%c4] : memref<1xf16>
      %278 = arith.minsi %c1063045236_i32, %c1169788843_i32 : i32
      %279 = memref.load %alloc[%c0] : memref<1xf16>
      %280 = math.absi %c1976318927_i32 : i32
      %281 = vector.reduction <mul>, %96 : vector<1xi64> into i64
      %282 = memref.realloc %alloc_10 : memref<1xf16> to memref<1xf16>
      scf.yield
    }
    default {
      %inserted_47 = tensor.insert %cst_2 into %1[%c0, %c0, %c0] : tensor<5x1x1xf16>
      %269 = math.tan %17 : tensor<10x10xf32>
      %270 = index.sizeof
      %271 = arith.maxsi %true_0, %118 : i1
      %272 = arith.remsi %42, %c1194413869_i64 : i64
      %273 = math.ceil %cst_2 : f16
      %274 = arith.andi %c1358131027_i32, %c410749792_i32 : i32
      %275 = tensor.empty() : tensor<1xi32>
      %276 = math.ctpop %7 : tensor<10x5xi32>
      %generated_48 = tensor.generate %c13 {
      ^bb0(%arg3: index, %arg4: index):
        %281 = arith.minui %118, %true : i1
        %282 = math.absi %2 : tensor<5x1x1xi32>
        %283 = index.maxs %58, %154
        %collapsed_51 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<5x1x1xf16> into tensor<5x1xf16>
        tensor.yield %42 : i64
      } : tensor<?x10xi64>
      %alloc_49 = memref.alloc() : memref<5x1x1xi64>
      memref.copy %alloc_12, %alloc_49 : memref<5x1x1xi64> to memref<5x1x1xi64>
      %277 = vector.insert %c1194413869_i64, %102 [0] : i64 into vector<1xi64>
      %278 = index.maxs %103, %c1
      %from_elements_50 = tensor.from_elements %cst_2, %cst_4, %cst_2, %cst_3, %cst_4, %cst_5, %cst_5, %cst_2, %cst_3, %cst_5, %cst_2, %cst_2, %cst_3, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_5, %cst_2, %cst_4, %cst_4, %cst_3, %cst_5, %cst_3, %cst_3, %cst_3, %cst_5, %cst_5, %cst_5, %cst_5, %cst_4, %cst_5, %cst_3, %cst_5, %cst_3, %cst_2, %cst_5, %cst_5, %cst_4, %cst_3, %cst_4, %cst_5, %cst_4, %cst_2, %cst_3, %cst_2, %cst_5, %cst_5 : tensor<10x5xf16>
      %279 = math.log %cst : f32
      %280 = math.ctlz %8 : tensor<10x10xi64>
    }
    %166 = vector.broadcast %42 : i64 to vector<1x1xi64>
    %167 = vector.outerproduct %102, %96, %166 {kind = #vector.kind<minsi>} : vector<1xi64>, vector<1xi64>
    %168 = math.log2 %3 : tensor<10x10xf32>
    %169 = vector.load %alloc[%c0] : memref<1xf16>, vector<5x1x1xf16>
    %170 = math.copysign %reduced, %reduced : tensor<10xf32>
    %171 = arith.maxui %c-27799_i16, %c-27799_i16 : i16
    %172 = tensor.empty() : tensor<10x10xf32>
    %173 = linalg.matmul ins(%4, %4 : tensor<10x10xf32>, tensor<10x10xf32>) outs(%172 : tensor<10x10xf32>) -> tensor<10x10xf32>
    %generated = tensor.generate %c1, %c5 {
    ^bb0(%arg3: index, %arg4: index):
      %collapsed_47 = tensor.collapse_shape %8 [[0, 1]] : tensor<10x10xi64> into tensor<100xi64>
      memref.assume_alignment %80, 2 : memref<1x5x1xi1>
      %inserted_48 = tensor.insert %cst_2 into %15[%c0, %c0] : tensor<10x5xf16>
      %269 = vector.broadcast %cst : f32 to vector<5x1x1xf32>
      %270 = vector.fma %269, %269, %269 : vector<5x1x1xf32>
      tensor.yield %cst : f32
    } : tensor<?x?xf32>
    %174 = arith.andi %false, %true : i1
    %175 = arith.maxsi %c1358131027_i32, %c410749792_i32 : i32
    %176 = memref.atomic_rmw maxf %cst, %alloc_7[%c6, %c7] : (f32, memref<10x10xf32>) -> f32
    %177 = vector.broadcast %cst_29 : f32 to vector<5x1x1xf32>
    %178 = vector.fma %177, %177, %177 : vector<5x1x1xf32>
    %179 = math.roundeven %cst_4 : f16
    %180 = vector.broadcast %cst_29 : f32 to vector<1xf32>
    %181 = vector.fma %180, %180, %180 : vector<1xf32>
    %182 = arith.remf %cst, %cst : f32
    %inserted_33 = tensor.insert %true_0 into %14[%c0, %c0] : tensor<10x5xi1>
    %183 = vector.bitcast %102 : vector<1xi64> to vector<1xi64>
    %184 = math.ctpop %0 : tensor<5x1x1xi1>
    %185 = vector.multi_reduction <maxf>, %94, %137 [1] : vector<10x10xf16> to vector<10xf16>
    %186 = math.log %5 : tensor<10x5xf32>
    %187 = arith.andi %c1063045236_i32, %c1976318927_i32 : i32
    %188 = index.ceildivs %c10, %164
    %189 = arith.mulf %cst_29, %cst : f32
    %190 = arith.xori %c1976318927_i32, %c410749792_i32 : i32
    %generated_34 = tensor.generate %154, %c0 {
    ^bb0(%arg3: index, %arg4: index):
      %269 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %94, %91, %94 : vector<10x10xf16>, vector<10x10xf16> into vector<10x10xf16>
      %270 = index.casts %42 : i64 to index
      %271 = math.atan %15 : tensor<10x5xf16>
      %272 = vector.bitcast %48 : vector<10x10xf32> to vector<10x10xf32>
      tensor.yield %c1976318927_i32 : i32
    } : tensor<?x?xi32>
    %inserted_35 = tensor.insert %true_21 into %14[%c7, %c2] : tensor<10x5xi1>
    %191 = vector.flat_transpose %180 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
    %192 = memref.realloc %alloc_10 : memref<1xf16> to memref<1xf16>
    %dest, %accumulated_value = vector.scan <minf>, %91, %137 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10xf16>, vector<10xf16>
    %193 = affine.apply affine_map<(d0, d1) -> (d1 - d0 - 8)>(%25, %c4)
    %194 = vector.broadcast %cst : f32 to vector<10x10xf32>
    %195 = vector.fma %194, %47, %48 : vector<10x10xf32>
    %196 = math.roundeven %10 : tensor<10x10xf32>
    %197 = vector.create_mask %c0 : vector<1xi1>
    %198 = arith.cmpi ne, %true_0, %141 : i1
    %199 = math.round %17 : tensor<10x10xf32>
    %200 = math.fma %reduced, %19, %19 : tensor<10xf32>
    %201 = index.maxs %69, %56
    %202 = math.ceil %172 : tensor<10x10xf32>
    %203 = math.ctpop %12 : tensor<10x10xi32>
    %204 = math.round %17 : tensor<10x10xf32>
    %205 = arith.floordivsi %c-27799_i16, %c-27799_i16 : i16
    %206 = arith.cmpf uno, %cst_3, %cst_3 : f16
    %207 = affine.apply affine_map<(d0, d1, d2) -> (((d2 ceildiv 16) * 32 + 1) * -8)>(%c11, %c4, %c11)
    %208 = arith.addf %cst_5, %cst_5 : f16
    memref.assume_alignment %163, 4 : memref<1xf16>
    %209 = arith.mulf %cst_2, %cst_5 : f16
    %210 = arith.shli %true, %118 : i1
    %collapsed_36 = tensor.collapse_shape %4 [[0, 1]] : tensor<10x10xf32> into tensor<100xf32>
    %211 = math.tan %10 : tensor<10x10xf32>
    %212 = math.ctpop %13 : tensor<1xi16>
    affine.store %cst_1, %alloc_17[%c10, %c1] : memref<10x10xf32>
    %213 = math.ipowi %true, %true_21 : i1
    %collapsed_37 = tensor.collapse_shape %10 [[0, 1]] : tensor<10x10xf32> into tensor<100xf32>
    %alloca = memref.alloca() : memref<5x1x1xi1>
    %214 = index.maxs %164, %148
    %inserted_38 = tensor.insert %cst_29 into %4[%c5, %c1] : tensor<10x10xf32>
    %215 = index.casts %c1063045236_i32 : i32 to index
    %216 = scf.while (%arg3 = %alloc_9) : (memref<5x1x1xi1>) -> memref<5x1x1xi1> {
      %269 = math.floor %3 : tensor<10x10xf32>
      %270 = vector.load %80[%c0, %c3, %c0] : memref<1x5x1xi1>, vector<5x1x1xi1>
      %271 = vector.reduction <maxui>, %109 : vector<5xi64> into i64
      %272 = arith.andi %c1920537583_i32, %c1358131027_i32 : i32
      %inserted_47 = tensor.insert %c1194413869_i64 into %44[%c8, %c0] : tensor<10x5xi64>
      %273 = arith.divf %cst_3, %cst_3 : f16
      %274 = math.log %cst_5 : f16
      %275 = index.mul %46, %148
      scf.condition(%true) %arg3 : memref<5x1x1xi1>
    } do {
    ^bb0(%arg3: memref<5x1x1xi1>):
      %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %127, %20, %c1194413869_i64 : vector<1xi64>, vector<1xi64> into i64
      %270 = index.sub %60, %c10
      %271 = math.copysign %cst_5, %cst_3 : f16
      %272 = arith.mulf %cst_5, %cst_5 : f16
      %273 = affine.min affine_map<(d0) -> ((d0 mod 8) floordiv 4, d0, d0 mod 8, d0 mod 8 - 1)>(%60)
      %274 = math.ipowi %12, %12 : tensor<10x10xi32>
      %275 = affine.if affine_set<(d0, d1) : (d1 * 16 >= 0, d1 * 16 == 0, d1 >= 0, (d1 - 192) floordiv 128 >= 0)>(%c7, %c0) -> memref<1xi64> {
        %true_47 = index.bool.constant true
        %285 = arith.ori %c1920537583_i32, %c1358131027_i32 : i32
        %286 = memref.atomic_rmw minf %cst_3, %49[%c0] : (f16, memref<1xf16>) -> f16
        %cst_48 = arith.constant 1.10816525E+9 : f32
        %inserted_49 = tensor.insert %c1358131027_i32 into %generated_34[%c0, %c0] : tensor<?x?xi32>
        %287 = affine.load %alloc_19[%c10, %c1, %c11] : memref<5x1x1xi1>
        %288 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 * 16) floordiv 64, d0 mod 4, d1)>(%87, %98, %86, %56)
        %289 = math.log1p %cst_29 : f32
        affine.yield %alloc_15 : memref<1xi64>
      } else {
        %285 = affine.min affine_map<(d0, d1) -> (d1 + 64)>(%c4, %43)
        %286 = bufferization.to_memref %17 : memref<10x10xf32>
        %287 = arith.minui %true_0, %false : i1
        %288 = math.fma %collapsed_36, %collapsed_37, %collapsed : tensor<100xf32>
        %289 = index.casts %true : i1 to index
        %290 = memref.load %alloc_15[%c0] : memref<1xi64>
        %291 = index.mul %156, %270
        %292 = affine.apply affine_map<(d0, d1, d2) -> ((-d0) floordiv 4)>(%25, %154, %46)
        affine.yield %alloc_15 : memref<1xi64>
      }
      %276 = arith.shrsi %141, %true : i1
      %277 = arith.shrui %c1976318927_i32, %c410749792_i32 : i32
      %278 = math.ctpop %23 : tensor<i32>
      %279 = vector.create_mask %c7, %201, %134 : vector<5x1x1xi1>
      %280 = math.ipowi %44, %44 : tensor<10x5xi64>
      %281 = arith.mulf %cst_4, %cst_3 : f16
      %282 = arith.minui %141, %true : i1
      %283 = affine.min affine_map<(d0, d1) -> (d0 - 2, -(d0 floordiv 16), (d0 - 2) ceildiv 64)>(%c2, %150)
      %284 = arith.remf %cst, %cst_1 : f32
      scf.yield %alloc_9 : memref<5x1x1xi1>
    }
    %217 = math.log %collapsed : tensor<100xf32>
    %218 = index.ceildivu %215, %c13
    %alloc_39 = memref.alloc() : memref<5x1x1xf32>
    memref.copy %alloc_18, %alloc_39 : memref<5x1x1xf32> to memref<5x1x1xf32>
    %219 = arith.andi %42, %c1194413869_i64 : i64
    %220 = arith.subi %c1920537583_i32, %c1063045236_i32 : i32
    %221 = vector.matrix_multiply %107, %102 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<1xi64>) -> vector<5xi64>
    memref.tensor_store %0, %alloc_19 : memref<5x1x1xi1>
    %222 = tensor.empty(%c2, %98) : tensor<?x?xf16>
    %223 = index.maxs %193, %c8
    %224 = math.absi %c1920537583_i32 : i32
    %225 = affine.apply affine_map<(d0) -> (d0 * 64)>(%193)
    %226 = vector.flat_transpose %197 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
    %from_elements = tensor.from_elements %true_0, %true_21, %true_0, %true, %false, %true_0, %true, %118, %true_21, %true_0, %false, %true_0, %141, %true_0, %true_0, %true_21, %true_0, %141, %true, %141, %true_0, %118, %true, %true, %true_21, %118, %118, %true_21, %true_21, %false, %118, %true, %true_21, %false, %118, %true_21, %false, %141, %true_0, %true_21, %true_21, %141, %true_0, %118, %118, %true_0, %true_0, %141, %true_21, %141 : tensor<10x5xi1>
    %227 = math.roundeven %10 : tensor<10x10xf32>
    %228 = vector.broadcast %false : i1 to vector<10xi1>
    vector.transfer_write %228, %alloc_9[%98, %134, %98] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<10xi1>, memref<5x1x1xi1>
    %229 = math.cos %15 : tensor<10x5xf16>
    %230 = memref.realloc %alloc_10 : memref<1xf16> to memref<1xf16>
    %231 = bufferization.to_tensor %49 : memref<1xf16>
    %232 = vector.flat_transpose %137 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
    %233 = vector.splat %40 : vector<1xindex>
    memref.copy %alloc_13, %136 : memref<10x10xf32> to memref<10x10xf32>
    %234 = math.expm1 %231 : tensor<1xf16>
    %alloc_40 = memref.alloc() : memref<5x1x1xf16>
    %235 = vector.broadcast %141 : i1 to vector<5x1x1xi1>
    %236 = vector.broadcast %c1063045236_i32 : i32 to vector<5x1x1xi32>
    %237 = vector.gather %alloc_40[%c2, %58, %88] [%236], %235, %169 : memref<5x1x1xf16>, vector<5x1x1xi32>, vector<5x1x1xi1>, vector<5x1x1xf16> into vector<5x1x1xf16>
    %238 = math.expm1 %16 : tensor<10x10xf32>
    %239 = math.cttz %141 : i1
    scf.if %true_0 {
      %269 = index.divs %156, %69
      %270 = math.floor %15 : tensor<10x5xf16>
      %inserted_47 = tensor.insert %false into %0[%c2, %c0, %c0] : tensor<5x1x1xi1>
      %271 = affine.min affine_map<(d0) -> ((d0 floordiv 32) floordiv 16, ((d0 floordiv 32) floordiv 16) mod 64 - d0 - 2, (((d0 floordiv 32) floordiv 16) mod 64 - 2) ceildiv 8)>(%65)
      %272 = index.sub %134, %c10
      %273 = vector.shuffle %94, %94 [3, 4, 5, 8, 9, 10, 15, 16, 17, 19] : vector<10x10xf16>, vector<10x10xf16>
      %rank_48 = tensor.rank %1 : tensor<5x1x1xf16>
      %274 = tensor.empty() : tensor<5x1x1xi1>
    }
    %240 = math.log2 %10 : tensor<10x10xf32>
    %241 = vector.reduction <or>, %197 : vector<1xi1> into i1
    scf.index_switch %86 
    case 1 {
      %269 = bufferization.clone %alloc_17 : memref<10x10xf32> to memref<10x10xf32>
      %270 = math.roundeven %6 : tensor<1xf32>
      %true_47 = index.bool.constant true
      %271 = vector.splat %c4 : vector<10x10xindex>
      %272 = arith.ceildivsi %false, %true_0 : i1
      %273 = math.floor %cst_5 : f16
      %274 = affine.apply affine_map<(d0, d1, d2) -> (d0 + d2 ceildiv 2 - d1)>(%103, %43, %c5)
      %275 = vector.broadcast %cst_5 : f16 to vector<1xf16>
      vector.transfer_write %275, %alloc_11[%218, %86] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xf16>, memref<10x10xf16>
      %276 = math.log2 %cst_3 : f16
      affine.store %141, %alloc_6[%c6, %c15] : memref<10x10xi1>
      affine.store %cst_5, %alloc_40[%c0, %c5, %c2] : memref<5x1x1xf16>
      %277 = math.log2 %1 : tensor<5x1x1xf16>
      %rank_48 = tensor.rank %14 : tensor<10x5xi1>
      %278 = bufferization.to_memref %5 : memref<10x5xf32>
      %279 = arith.shrui %true_0, %true_0 : i1
      %280 = vector.extract %235[0] : vector<5x1x1xi1>
      scf.yield
    }
    case 2 {
      %269 = index.sub %c9, %27
      %270 = memref.alloca_scope  -> (i64) {
        %283 = math.ceil %cst_4 : f16
        %284 = math.log %4 : tensor<10x10xf32>
        %285 = math.ipowi %c1063045236_i32, %c1920537583_i32 : i32
        %c16632_i16 = arith.constant 16632 : i16
        %286 = vector.broadcast %118 : i1 to vector<1x1xi1>
        %287 = vector.outerproduct %226, %226, %286 {kind = #vector.kind<minui>} : vector<1xi1>, vector<1xi1>
        %288 = math.absi %false : i1
        %289 = math.roundeven %231 : tensor<1xf16>
        %290 = arith.floordivsi %141, %true_21 : i1
        %291 = arith.mulf %cst, %cst_1 : f32
        %292 = arith.addi %false, %118 : i1
        %293 = arith.maxui %118, %true_21 : i1
        %294 = bufferization.clone %alloc_19 : memref<5x1x1xi1> to memref<5x1x1xi1>
        %295 = vector.matrix_multiply %20, %183 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
        %296 = arith.xori %c1920537583_i32, %c1358131027_i32 : i32
        %297 = bufferization.clone %alloc : memref<1xf16> to memref<1xf16>
        %298 = vector.multi_reduction <xor>, %92, %228 [0] : vector<10x10xi1> to vector<10xi1>
        %299 = vector.matrix_multiply %137, %137 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<10xf16>) -> vector<1xf16>
        %300 = vector.create_mask %c7, %188 : vector<10x10xi1>
        %301 = affine.load %alloc[%c10] : memref<1xf16>
        %302 = arith.floordivsi %c1920537583_i32, %c1169788843_i32 : i32
        %303 = math.cos %collapsed_36 : tensor<100xf32>
        %304 = math.ipowi %11, %0 : tensor<5x1x1xi1>
        %305 = math.tan %19 : tensor<10xf32>
        %306 = arith.shrui %c1194413869_i64, %42 : i64
        %307 = arith.negf %cst : f32
        %false_49 = index.bool.constant false
        %308 = math.log %1 : tensor<5x1x1xf16>
        %309 = bufferization.clone %alloc_10 : memref<1xf16> to memref<1xf16>
        %alloc_50 = memref.alloc() : memref<1x5x1xi1>
        memref.copy %80, %alloc_50 : memref<1x5x1xi1> to memref<1x5x1xi1>
        affine.store %cst_2, %297[%c13] : memref<1xf16>
        %310 = index.castu %c1 : index to i32
        %311 = math.log1p %5 : tensor<10x5xf32>
        memref.alloca_scope.return %42 : i64
      }
      %inserted_47 = tensor.insert %true into %14[%c7, %c1] : tensor<10x5xi1>
      %271 = index.maxs %62, %188
      %272 = memref.atomic_rmw maxu %c1976318927_i32, %alloc_20[%c6, %c4] : (i32, memref<10x5xi32>) -> i32
      %273 = arith.minf %cst, %cst_1 : f32
      %274 = arith.ori %c1358131027_i32, %c1169788843_i32 : i32
      %275 = memref.realloc %alloc_15 : memref<1xi64> to memref<1xi64>
      %c1561780012_i32 = arith.constant 1561780012 : i32
      %276 = index.maxu %151, %25
      %alloc_48 = memref.alloc() : memref<10x10xi64>
      %277 = math.exp2 %collapsed_36 : tensor<100xf32>
      %278 = tensor.empty() : tensor<5x1xi1>
      %279 = tensor.empty() : tensor<10x1xi1>
      %280 = linalg.matmul ins(%14, %278 : tensor<10x5xi1>, tensor<5x1xi1>) outs(%279 : tensor<10x1xi1>) -> tensor<10x1xi1>
      %281 = arith.mulf %cst_1, %cst : f32
      memref.copy %163, %alloc : memref<1xf16> to memref<1xf16>
      %282 = index.sub %151, %43
      scf.yield
    }
    case 3 {
      memref.alloca_scope  {
        %280 = arith.floordivsi %c1920537583_i32, %c410749792_i32 : i32
        %281 = affine.min affine_map<(d0, d1, d2) -> (d2, d2, ((d1 - 32) * 64 - d0 mod 128) ceildiv 4)>(%25, %31, %c10)
        %c496672586_i32 = arith.constant 496672586 : i32
        %282 = vector.create_mask %88 : vector<1xi1>
        %283 = arith.shrui %true, %true_0 : i1
        %284 = math.floor %4 : tensor<10x10xf32>
        memref.assume_alignment %alloc_15, 16 : memref<1xi64>
        %285 = arith.remf %cst, %cst_1 : f32
        %286 = math.fpowi %6, %9 : tensor<1xf32>, tensor<1xi32>
        %287 = arith.maxui %c410749792_i32, %c1063045236_i32 : i32
        %288 = index.castu %c11 : index to i32
        %cast = tensor.cast %10 : tensor<10x10xf32> to tensor<?x?xf32>
        %289 = math.tan %cst : f32
        %290 = arith.negf %cst_3 : f16
        %collapsed_51 = tensor.collapse_shape %10 [[0, 1]] : tensor<10x10xf32> into tensor<100xf32>
        %291 = math.cos %collapsed : tensor<100xf32>
        %292 = arith.remf %cst_4, %cst_4 : f16
        %293 = vector.shuffle %127, %102 [1] : vector<1xi64>, vector<1xi64>
        %294 = bufferization.to_memref %generated : memref<?x?xf32>
        %295 = index.sub %c8, %c10
        %296 = arith.maxsi %141, %141 : i1
        %alloc_52 = memref.alloc() : memref<1xf32>
        %297 = vector.gather %alloc_52[%rank] [%93], %92, %195 : memref<1xf32>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xf32> into vector<10x10xf32>
        %298 = arith.subi %c1358131027_i32, %c410749792_i32 : i32
        %from_elements_53 = tensor.from_elements %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16, %c-27799_i16 : tensor<10x10xi16>
        %299 = math.fma %19, %19, %reduced : tensor<10xf32>
        %300 = bufferization.clone %41 : memref<10x10xf32> to memref<10x10xf32>
        %collapsed_54 = tensor.collapse_shape %transposed [[0, 1], [2]] : tensor<1x5x1xi1> into tensor<5x1xi1>
        %301 = index.maxs %27, %188
        %collapsed_55 = tensor.collapse_shape %10 [[0, 1]] : tensor<10x10xf32> into tensor<100xf32>
        %302 = arith.minui %c1194413869_i64, %c1194413869_i64 : i64
        %303 = math.ceil %10 : tensor<10x10xf32>
        %304 = vector.bitcast %48 : vector<10x10xf32> to vector<10x10xf32>
      }
      %269 = affine.min affine_map<(d0, d1, d2) -> (d0, d2 floordiv 2)>(%193, %c2, %201)
      %generated_47 = tensor.generate %c7 {
      ^bb0(%arg3: index, %arg4: index):
        %280 = index.casts %c7 : index to i32
        %281 = arith.maxf %cst_2, %cst_2 : f16
        %282 = arith.ceildivsi %true, %true : i1
        %283 = arith.cmpf oeq, %cst_29, %cst_1 : f32
        tensor.yield %cst_3 : f16
      } : tensor<?x10xf16>
      %270 = arith.divsi %c1976318927_i32, %c1976318927_i32 : i32
      %271 = arith.maxf %cst, %cst : f32
      memref.tensor_store %0, %119 : memref<5x1x1xi1>
      %272 = vector.broadcast %cst_1 : f32 to vector<10xf32>
      %dest_48, %accumulated_value_49 = vector.scan <maxf>, %194, %272 {inclusive = true, reduction_dim = 0 : i64} : vector<10x10xf32>, vector<10xf32>
      %273 = math.atan2 %cst_3, %cst_4 : f16
      %274 = arith.minui %c1063045236_i32, %c410749792_i32 : i32
      %275 = math.log %cst_3 : f16
      affine.store %c1194413869_i64, %alloc_16[%c15, %c5] : memref<10x5xi64>
      %276 = index.maxu %218, %65
      %inserted_50 = tensor.insert %42 into %44[%c9, %c3] : tensor<10x5xi64>
      %277 = arith.minui %true_0, %true : i1
      %278 = affine.load %alloc_15[%c15] : memref<1xi64>
      %279 = vector.shuffle %47, %47 [2, 6, 8, 10, 12, 15, 16, 17, 18, 19] : vector<10x10xf32>, vector<10x10xf32>
      scf.yield
    }
    default {
      %269 = vector.broadcast %cst_29 : f32 to vector<10x10xf32>
      %270 = vector.fma %269, %195, %269 : vector<10x10xf32>
      %271 = math.copysign %cst, %cst_29 : f32
      %c6928_i16 = arith.constant 6928 : i16
      %272 = math.ctpop %158 : tensor<10x5xi32>
      %273 = bufferization.to_memref %18 : memref<1x5x1xi1>
      %274 = arith.divui %c410749792_i32, %c410749792_i32 : i32
      %generated_47 = tensor.generate %161, %c4 {
      ^bb0(%arg3: index, %arg4: index):
        %284 = affine.apply affine_map<(d0, d1, d2) -> (d1 - 32)>(%223, %225, %57)
        %285 = arith.negf %cst : f32
        %286 = memref.realloc %alloc_14 : memref<1xi32> to memref<10xi32>
        %287 = vector.load %41[%c6, %c2] : memref<10x10xf32>, vector<1xf32>
        tensor.yield %141 : i1
      } : tensor<?x?xi1>
      %275 = arith.minui %118, %true_21 : i1
      %276 = arith.shli %118, %118 : i1
      %277 = vector.broadcast %false : i1 to vector<10x5xi1>
      %278 = vector.broadcast %c1976318927_i32 : i32 to vector<10x5xi32>
      %279 = vector.gather %alloc_18[%40, %150, %25] [%278], %277, %35 : memref<5x1x1xf32>, vector<10x5xi32>, vector<10x5xi1>, vector<10x5xf32> into vector<10x5xf32>
      %280 = vector.bitcast %181 : vector<1xf32> to vector<1xf32>
      %alloc_48 = memref.alloc() : memref<1xi64>
      memref.copy %alloc_15, %alloc_48 : memref<1xi64> to memref<1xi64>
      %281 = math.log1p %collapsed_36 : tensor<100xf32>
      %282 = math.ipowi %c1976318927_i32, %c1169788843_i32 : i32
      %283 = arith.floordivsi %c1920537583_i32, %c410749792_i32 : i32
      affine.store %cst_1, %136[%c1, %c11] : memref<10x10xf32>
    }
    %242 = vector.broadcast %c1194413869_i64 : i64 to vector<1x1xi64>
    %243 = vector.outerproduct %20, %96, %242 {kind = #vector.kind<maxui>} : vector<1xi64>, vector<1xi64>
    %244 = vector.broadcast %cst_1 : f32 to vector<1xf32>
    vector.transfer_write %244, %136[%207, %40] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<1xf32>, memref<10x10xf32>
    %alloc_41 = memref.alloc() : memref<5x1x1xi16>
    %245 = vector.broadcast %c-27799_i16 : i16 to vector<10x5xi16>
    %246 = vector.broadcast %true_21 : i1 to vector<10x5xi1>
    %247 = vector.broadcast %c1358131027_i32 : i32 to vector<10x5xi32>
    %248 = vector.gather %alloc_41[%88, %207, %c11] [%247], %246, %245 : memref<5x1x1xi16>, vector<10x5xi32>, vector<10x5xi1>, vector<10x5xi16> into vector<10x5xi16>
    %249 = math.fma %4, %3, %172 : tensor<10x10xf32>
    %true_42 = index.bool.constant true
    %250 = index.ceildivs %98, %c10
    %alloc_43 = memref.alloc() : memref<1x5xi32>
    %251 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%21, %alloc_43 : tensor<1xi32>, memref<1x5xi32>) outs(%2 : tensor<5x1x1xi32>) {
    ^bb0(%in: i32, %in_47: i32, %out: i32):
      %269 = index.divs %148, %40
      %270 = vector.flat_transpose %107 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
      %271 = math.rsqrt %cst_5 : f16
      %272 = vector.matrix_multiply %183, %270 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xi64>, vector<5xi64>) -> vector<5xi64>
      %273 = vector.broadcast %cst_29 : f32 to vector<1x1xf32>
      %274 = vector.outerproduct %244, %244, %273 {kind = #vector.kind<minf>} : vector<1xf32>, vector<1xf32>
      %275 = index.casts %c1194413869_i64 : i64 to index
      %276 = vector.create_mask %88, %c4, %c12 : vector<5x1x1xi1>
      %277 = arith.andi %true_42, %false : i1
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%transposed : tensor<1x5x1xi1>) {
      ^bb0(%out_52: i1):
        %295 = arith.divui %42, %c1194413869_i64 : i64
        %296 = index.add %225, %193
        %297 = bufferization.to_memref %10 : memref<10x10xf32>
        %298 = vector.broadcast %118 : i1 to vector<i1>
        vector.transfer_write %298, %alloc_6[%c13, %275] : vector<i1>, memref<10x10xi1>
        %299 = arith.minf %cst_2, %cst_4 : f16
        %300 = vector.broadcast %cst_29 : f32 to vector<5x1x1xf32>
        %301 = vector.fma %300, %178, %300 : vector<5x1x1xf32>
        affine.store %cst_2, %49[%c11] : memref<1xf16>
        %302 = math.ipowi %8, %8 : tensor<10x10xi64>
        %303 = arith.divui %c-27799_i16, %c-27799_i16 : i16
        %304 = arith.addi %118, %out_52 : i1
        %305 = index.maxu %150, %150
        %306 = arith.maxui %c1169788843_i32, %c1169788843_i32 : i32
        affine.store %141, %alloc_9[%c7, %c10, %c8] : memref<5x1x1xi1>
        %307 = math.round %cst_4 : f16
        memref.assume_alignment %alloc_19, 1 : memref<5x1x1xi1>
        %308 = tensor.empty(%88, %56) : tensor<5x?x?xi32>
        %309 = bufferization.clone %alloc_13 : memref<10x10xf32> to memref<10x10xf32>
        %310 = arith.xori %c-27799_i16, %c-27799_i16 : i16
        %311 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 mod 32, d2, d3 mod 128 - d1, d1 mod 32 - 16)>(%88, %154, %c7, %161)
        %312 = arith.maxui %141, %true : i1
        %313 = arith.addf %cst_1, %cst_29 : f32
        %314 = math.round %231 : tensor<1xf16>
        %315 = math.expm1 %cst_5 : f16
        %316 = bufferization.to_memref %15 : memref<10x5xf16>
        %317 = arith.shrui %c1976318927_i32, %c1169788843_i32 : i32
        %318 = arith.divf %cst_2, %cst_3 : f16
        %319 = arith.addi %in_47, %c1063045236_i32 : i32
        %320 = math.atan2 %10, %4 : tensor<10x10xf32>
        %321 = math.ipowi %c1358131027_i32, %c1920537583_i32 : i32
        %322 = index.mul %46, %62
        %323 = math.atan2 %cst_5, %cst_3 : f16
        %324 = math.log %6 : tensor<1xf32>
        linalg.yield %true_0 : i1
      } -> tensor<1x5x1xi1>
      %279 = arith.shrsi %in, %c1169788843_i32 : i32
      %280 = vector.splat %true_0 : vector<5x1x1xi1>
      %281 = index.sub %145, %215
      memref.copy %alloc_19, %119 : memref<5x1x1xi1> to memref<5x1x1xi1>
      %282 = arith.shli %42, %c1194413869_i64 : i64
      vector.print %245 : vector<10x5xi16>
      %from_elements_48 = tensor.from_elements %c1194413869_i64, %c1194413869_i64, %c1194413869_i64, %42, %42 : tensor<5x1x1xi64>
      %283 = math.log1p %6 : tensor<1xf32>
      %284 = arith.remui %true, %118 : i1
      %rank_49 = tensor.rank %4 : tensor<10x10xf32>
      %collapsed_50 = tensor.collapse_shape %7 [[0, 1]] : tensor<10x5xi32> into tensor<50xi32>
      %285 = affine.min affine_map<(d0, d1) -> (0, d0 floordiv 16 + d1, 0)>(%62, %215)
      %286 = arith.shrsi %c-27799_i16, %c-27799_i16 : i16
      %287 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 mod 128)>(%285, %156, %65, %c4)
      %288 = vector.reduction <add>, %191 : vector<1xf32> into f32
      %289 = index.casts %in : i32 to index
      %290 = index.ceildivs %37, %40
      %291 = vector.create_mask %56 : vector<1xi1>
      %292 = tensor.empty() : tensor<1xi32>
      %mapped = linalg.map ins(%9 : tensor<1xi32>) outs(%292 : tensor<1xi32>)
        (%in_52: i32) {
          %295 = arith.subi %true, %false : i1
          memref.assume_alignment %alloc_19, 4 : memref<5x1x1xi1>
          %296 = arith.minf %cst_5, %cst_4 : f16
          %297 = index.castu %c-27799_i16 : i16 to index
          %298 = arith.shrui %in, %c1976318927_i32 : i32
          %alloc_53 = memref.alloc() : memref<10x10xf32>
          %collapsed_54 = tensor.collapse_shape %generated_34 [[0, 1]] : tensor<?x?xi32> into tensor<?xi32>
          %299 = arith.minf %cst_2, %cst_2 : f16
          %300 = index.maxu %105, %161
          %301 = math.floor %17 : tensor<10x10xf32>
          %302 = index.maxu %c13, %57
          %alloc_55 = memref.alloc() : memref<1xi16>
          %c33 = arith.constant 33 : index
          %inserted_56 = tensor.insert %c1063045236_i32 into %collapsed_50[%c33] : tensor<50xi32>
          %303 = memref.realloc %alloc : memref<1xf16> to memref<10xf16>
          %304 = math.absi %8 : tensor<10x10xi64>
          %305 = affine.apply affine_map<(d0) -> (d0 * 64)>(%215)
          %306 = vector.create_mask %250, %rank_49, %161 : vector<5x1x1xi1>
          %307 = math.ceil %19 : tensor<10xf32>
          %308 = math.floor %cst_3 : f16
          %309 = tensor.empty() : tensor<10x10xi1>
          %310 = vector.gather %309[%164, %c3] [%247], %246, %246 : tensor<10x10xi1>, vector<10x5xi32>, vector<10x5xi1>, vector<10x5xi1> into vector<10x5xi1>
          %311 = index.divs %c10, %154
          %312 = arith.andi %in_47, %out : i32
          %313 = vector.reduction <minsi>, %96 : vector<1xi64> into i64
          %314 = arith.mulf %cst_2, %cst_4 : f16
          %315 = vector.broadcast %cst_29 : f32 to vector<5x1xf32>
          %316 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %177, %244, %315 : vector<5x1x1xf32>, vector<1xf32> into vector<5x1xf32>
          %317 = arith.addi %true_0, %true_0 : i1
          %318 = math.fma %19, %reduced, %reduced : tensor<10xf32>
          %319 = arith.remf %cst_5, %cst_4 : f16
          %320 = math.ipowi %7, %7 : tensor<10x5xi32>
          %c-23860_i16 = arith.constant -23860 : i16
          %321 = vector.broadcast %cst_4 : f16 to vector<10x5xf16>
          %322 = index.casts %c0 : index to i32
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %alloc_51 = memref.alloc() : memref<10x10xi16>
      %293 = arith.xori %true, %true : i1
      %294 = arith.addf %cst_5, %cst_4 : f16
      affine.store %cst_29, %alloc_8[%c0, %c10] : memref<10x10xf32>
      linalg.yield %c1063045236_i32 : i32
    } -> tensor<5x1x1xi32>
    %252 = memref.realloc %49 : memref<1xf16> to memref<1xf16>
    %253 = math.rsqrt %6 : tensor<1xf32>
    %254 = arith.divf %cst_5, %cst_4 : f16
    %extracted = tensor.extract %4[%c8, %c0] : tensor<10x10xf32>
    %255 = vector.insert %true_42, %197 [0] : i1 into vector<1xi1>
    %256 = vector.broadcast %141 : i1 to vector<5x1xi1>
    %257 = vector.transfer_write %256, %11[%103, %58, %214] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<5x1xi1>, tensor<5x1x1xi1>
    %258 = vector.load %49[%c0] : memref<1xf16>, vector<5x1x1xf16>
    %259 = arith.maxui %false, %true_42 : i1
    %260 = math.ctpop %158 : tensor<10x5xi32>
    %261 = math.ctpop %13 : tensor<1xi16>
    %262 = math.cos %collapsed_37 : tensor<100xf32>
    %263 = memref.realloc %163 : memref<1xf16> to memref<5xf16>
    %264 = tensor.empty() : tensor<5x1x1xi1>
    %265 = linalg.copy ins(%11 : tensor<5x1x1xi1>) outs(%264 : tensor<5x1x1xi1>) -> tensor<5x1x1xi1>
    %alloc_44 = memref.alloc() : memref<1x5x1xi1>
    linalg.transpose ins(%265 : tensor<5x1x1xi1>) outs(%alloc_44 : memref<1x5x1xi1>) permutation = [2, 0, 1] 
    %266 = tensor.empty() : tensor<f32>
    %reduced_45 = linalg.reduce ins(%collapsed_37 : tensor<100xf32>) outs(%266 : tensor<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %269 = math.ctlz %2 : tensor<5x1x1xi32>
        %270 = math.atan2 %collapsed_37, %collapsed_37 : tensor<100xf32>
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_47 = arith.constant 0 : i64
        %271 = vector.transfer_read %8[%148, %69], %c0_i64_47 : tensor<10x10xi64>, vector<i64>
        %272 = vector.shuffle %258, %258 [1, 7, 9] : vector<5x1x1xf16>, vector<5x1x1xf16>
        %273 = bufferization.to_memref %265 : memref<5x1x1xi1>
        %alloc_48 = memref.alloc() : memref<10x5xf16>
        memref.tensor_store %15, %alloc_48 : memref<10x5xf16>
        %274 = arith.subi %c1976318927_i32, %c1169788843_i32 : i32
        %275 = memref.alloca_scope  -> (i1) {
          %276 = arith.shrsi %c1194413869_i64, %42 : i64
          %277 = vector.load %163[%c0] : memref<1xf16>, vector<10x10xf16>
          %collapsed_50 = tensor.collapse_shape %265 [[0, 1], [2]] : tensor<5x1x1xi1> into tensor<5x1xi1>
          %278 = index.divu %c8, %134
          %279 = math.ceil %1 : tensor<5x1x1xf16>
          %280 = vector.shuffle %92, %92 [2, 5, 6, 9, 14, 15, 16, 17, 18] : vector<10x10xi1>, vector<10x10xi1>
          %281 = math.roundeven %1 : tensor<5x1x1xf16>
          %282 = index.maxu %150, %113
          %283 = memref.atomic_rmw maxf %cst_4, %alloc_10[%c0] : (f16, memref<1xf16>) -> f16
          %284 = vector.broadcast %cst_3 : f16 to vector<f16>
          vector.transfer_write %284, %163[%56] : vector<f16>, memref<1xf16>
          %285 = math.expm1 %1 : tensor<5x1x1xf16>
          %expanded = tensor.expand_shape %collapsed_31 [[0], [1, 2]] : tensor<5x1xi32> into tensor<5x1x1xi32>
          %286 = arith.floordivsi %42, %c1194413869_i64 : i64
          %287 = arith.minf %init, %in : f32
          %288 = vector.insert %cst_29, %244 [0] : f32 into vector<1xf32>
          %289 = index.maxu %98, %154
          %290 = arith.divui %true_21, %141 : i1
          %291 = affine.apply affine_map<(d0, d1, d2) -> (((d2 ceildiv 16) * 32 + 1) * -8)>(%201, %282, %57)
          %292 = bufferization.clone %alloc_12 : memref<5x1x1xi64> to memref<5x1x1xi64>
          %inserted_51 = tensor.insert %true_0 into %14[%c6, %c0] : tensor<10x5xi1>
          %293 = vector.broadcast %c1358131027_i32 : i32 to vector<1xi32>
          %294 = bufferization.clone %alloc_19 : memref<5x1x1xi1> to memref<5x1x1xi1>
          %295 = math.log %in : f32
          %296 = arith.addf %cst_29, %cst_29 : f32
          %297 = vector.create_mask %201, %62 : vector<10x5xi1>
          %298 = math.cos %reduced : tensor<10xf32>
          %299 = vector.broadcast %c1063045236_i32 : i32 to vector<5x10xi32>
          %300 = vector.transfer_write %299, %2[%25, %43, %c14] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<5x10xi32>, tensor<5x1x1xi32>
          %301 = index.divs %c15, %88
          %302 = math.absi %14 : tensor<10x5xi1>
          %303 = math.atan2 %reduced, %19 : tensor<10xf32>
          %304 = arith.maxf %cst_5, %cst_5 : f16
          %305 = math.fma %172, %4, %10 : tensor<10x10xf32>
          memref.alloca_scope.return %118 : i1
        }
        %cst_49 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_49 : f32
      }
    %267 = scf.parallel (%arg3) = (%156) to (%60) step (%c13) init (%191) -> vector<1xf32> {
      %269 = vector.splat %c13 : vector<10x5xindex>
      %270 = vector.insert %42, %102 [0] : i64 into vector<1xi64>
      %271 = scf.while (%arg4 = %258) : (vector<5x1x1xf16>) -> vector<5x1x1xf16> {
        %286 = arith.remf %cst_4, %cst_3 : f16
        %inserted_47 = tensor.insert %cst_3 into %231[%c0] : tensor<1xf16>
        %287 = index.maxs %134, %c10
        %288 = memref.atomic_rmw addf %cst_3, %alloc[%c0] : (f16, memref<1xf16>) -> f16
        %289 = index.casts %c410749792_i32 : i32 to index
        %alloca_48 = memref.alloca() : memref<1xi64>
        %290 = vector.extract %258[3] : vector<5x1x1xf16>
        %291 = math.tan %cst_5 : f16
        scf.condition(%false) %169 : vector<5x1x1xf16>
      } do {
      ^bb0(%arg4: vector<5x1x1xf16>):
        %286 = arith.shli %118, %false : i1
        %287 = affine.max affine_map<(d0, d1, d2) -> (16)>(%223, %c9, %c0)
        %288 = arith.shrui %c410749792_i32, %c1169788843_i32 : i32
        %289 = math.expm1 %reduced_45 : tensor<f32>
        %290 = math.tan %cst_4 : f16
        %291 = math.log1p %3 : tensor<10x10xf32>
        %292 = index.maxs %103, %c8
        %293 = math.absi %c-27799_i16 : i16
        %alloc_47 = memref.alloc() : memref<1xi16>
        %294 = index.ceildivs %58, %105
        %295 = math.ctlz %c-27799_i16 : i16
        %296 = vector.bitcast %169 : vector<5x1x1xf16> to vector<5x1x1xf16>
        %297 = vector.matrix_multiply %109, %20 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<1xi64>) -> vector<5xi64>
        memref.store %cst_4, %163[%c0] : memref<1xf16>
        %298 = math.log1p %extracted : f32
        %299 = math.tan %cst_4 : f16
        scf.yield %296 : vector<5x1x1xf16>
      }
      %272 = index.mul %223, %69
      %273 = arith.maxui %c1194413869_i64, %42 : i64
      %274 = vector.broadcast %c1169788843_i32 : i32 to vector<10x1xi32>
      %275 = vector.transfer_write %274, %2[%88, %151, %134] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<10x1xi32>, tensor<5x1x1xi32>
      %276 = vector.broadcast %c3 : index to vector<10xindex>
      %277 = vector.broadcast %c1194413869_i64 : i64 to vector<10xi64>
      vector.scatter %alloc_16[%c9, %c4] [%276], %228, %277 : memref<10x5xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
      %278 = arith.minf %cst_29, %cst_29 : f32
      %279 = vector.shuffle %236, %236 [2, 4, 7, 9] : vector<5x1x1xi32>, vector<5x1x1xi32>
      %280 = math.tan %cst : f32
      %281 = math.tan %6 : tensor<1xf32>
      %282 = arith.addi %c1063045236_i32, %c410749792_i32 : i32
      memref.tensor_store %1, %alloc_40 : memref<5x1x1xf16>
      %expanded = tensor.expand_shape %13 [[0, 1]] : tensor<1xi16> into tensor<1x1xi16>
      %283 = math.cos %collapsed_36 : tensor<100xf32>
      %284 = vector.shuffle %178, %178 [1, 5, 7, 9] : vector<5x1x1xf32>, vector<5x1x1xf32>
      %285 = vector.broadcast %cst_1 : f32 to vector<1xf32>
      scf.reduce(%285)  : vector<1xf32> {
      ^bb0(%arg4: vector<1xf32>, %arg5: vector<1xf32>):
        %286 = index.castu %188 : index to i32
        %287 = arith.floordivsi %c1358131027_i32, %c1358131027_i32 : i32
        %288 = math.round %cst_4 : f16
        vector.print %236 : vector<5x1x1xi32>
        %289 = vector.load %163[%c0] : memref<1xf16>, vector<1xf16>
        %rank_47 = tensor.rank %5 : tensor<10x5xf32>
        %extracted_48 = tensor.extract %158[%c0, %c0] : tensor<10x5xi32>
        %290 = index.maxu %193, %150
        %291 = vector.broadcast %extracted : f32 to vector<1xf32>
        scf.reduce.return %291 : vector<1xf32>
      }
      scf.yield
    }
    %268 = affine.vector_load %alloc_6[%31, %65] : memref<10x10xi1>, vector<5xi1>
    affine.vector_store %226, %119[%154, %65, %46] : memref<5x1x1xi1>, vector<1xi1>
    vector.print %20 : vector<1xi64>
    vector.print %34 : vector<10x5xf32>
    vector.print %35 : vector<10x5xf32>
    vector.print %47 : vector<10x10xf32>
    vector.print %48 : vector<10x10xf32>
    vector.print %66 : vector<1xi64>
    vector.print %91 : vector<10x10xf16>
    vector.print %92 : vector<10x10xi1>
    vector.print %93 : vector<10x10xi32>
    vector.print %94 : vector<10x10xf16>
    vector.print %96 : vector<1xi64>
    vector.print %102 : vector<1xi64>
    vector.print %107 : vector<5xi64>
    vector.print %108 : vector<5xi1>
    vector.print %109 : vector<5xi64>
    vector.print %127 : vector<1xi64>
    vector.print %137 : vector<10xf16>
    vector.print %169 : vector<5x1x1xf16>
    vector.print %177 : vector<5x1x1xf32>
    vector.print %178 : vector<5x1x1xf32>
    vector.print %180 : vector<1xf32>
    vector.print %181 : vector<1xf32>
    vector.print %183 : vector<1xi64>
    vector.print %191 : vector<1xf32>
    vector.print %194 : vector<10x10xf32>
    vector.print %195 : vector<10x10xf32>
    vector.print %197 : vector<1xi1>
    vector.print %221 : vector<5xi64>
    vector.print %226 : vector<1xi1>
    vector.print %228 : vector<10xi1>
    vector.print %232 : vector<10xf16>
    vector.print %235 : vector<5x1x1xi1>
    vector.print %236 : vector<5x1x1xi32>
    vector.print %237 : vector<5x1x1xf16>
    vector.print %244 : vector<1xf32>
    vector.print %245 : vector<10x5xi16>
    vector.print %246 : vector<10x5xi1>
    vector.print %247 : vector<10x5xi32>
    vector.print %248 : vector<10x5xi16>
    vector.print %256 : vector<5x1xi1>
    vector.print %258 : vector<5x1x1xf16>
    vector.print %268 : vector<5xi1>
    vector.print %true : i1
    vector.print %c1358131027_i32 : i32
    vector.print %true_0 : i1
    vector.print %cst : f32
    vector.print %c1169788843_i32 : i32
    vector.print %c1920537583_i32 : i32
    vector.print %c-27799_i16 : i16
    vector.print %c1976318927_i32 : i32
    vector.print %c1194413869_i64 : i64
    vector.print %c1063045236_i32 : i32
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %cst_3 : f16
    vector.print %cst_4 : f16
    vector.print %c410749792_i32 : i32
    vector.print %cst_5 : f16
    vector.print %42 : i64
    vector.print %true_21 : i1
    vector.print %false : i1
    vector.print %118 : i1
    vector.print %cst_29 : f32
    vector.print %141 : i1
    vector.print %true_42 : i1
    vector.print %extracted : f32
    %alloc_46 = memref.alloc() : memref<1xf32>
    return %alloc_46 : memref<1xf32>
  }
}
