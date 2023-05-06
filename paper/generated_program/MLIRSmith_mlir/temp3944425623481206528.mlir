module {
  func.func nested @func1(%arg0: vector<6x5xi1>) {
    %cst = arith.constant 6.908560e+08 : f32
    %c1091576647_i64 = arith.constant 1091576647 : i64
    %c1437400375_i64 = arith.constant 1437400375 : i64
    %cst_0 = arith.constant 1.55865126E+9 : f32
    %c1999358763_i64 = arith.constant 1999358763 : i64
    %true = arith.constant true
    %c959735039_i32 = arith.constant 959735039 : i32
    %true_1 = arith.constant true
    %cst_2 = arith.constant 1.01109274E+9 : f32
    %c581854718_i32 = arith.constant 581854718 : i32
    %cst_3 = arith.constant 2.0634615E+9 : f32
    %cst_4 = arith.constant 5.859200e+04 : f16
    %true_5 = arith.constant true
    %cst_6 = arith.constant 2.843200e+04 : f16
    %c600853247_i64 = arith.constant 600853247 : i64
    %c1693094076_i32 = arith.constant 1693094076 : i32
    %0 = tensor.empty() : tensor<4xi32>
    %1 = tensor.empty() : tensor<4xi1>
    %2 = tensor.empty() : tensor<6x5xi64>
    %3 = tensor.empty() : tensor<14x14xi32>
    %4 = tensor.empty() : tensor<6x5xf32>
    %5 = tensor.empty() : tensor<6x5xi64>
    %6 = tensor.empty() : tensor<14x14xi32>
    %7 = tensor.empty() : tensor<14x14xi64>
    %8 = tensor.empty() : tensor<6x5xi1>
    %9 = tensor.empty() : tensor<6x5xf16>
    %10 = tensor.empty() : tensor<4xf32>
    %11 = tensor.empty() : tensor<4xi16>
    %12 = tensor.empty() : tensor<14x14xi1>
    %13 = tensor.empty() : tensor<5x4xi64>
    %14 = tensor.empty() : tensor<5x4xf16>
    %15 = tensor.empty() : tensor<5x4xf32>
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
    %alloc = memref.alloc() : memref<6x5xi64>
    %alloc_7 = memref.alloc() : memref<5x4xi1>
    %alloc_8 = memref.alloc() : memref<6x5xi1>
    %alloc_9 = memref.alloc() : memref<4xi16>
    %alloc_10 = memref.alloc() : memref<4xf32>
    %alloc_11 = memref.alloc() : memref<6x5xi16>
    %alloc_12 = memref.alloc() : memref<6x5xi1>
    %alloc_13 = memref.alloc() : memref<5x4xi16>
    %alloc_14 = memref.alloc() : memref<4xi64>
    %alloc_15 = memref.alloc() : memref<4xi64>
    %alloc_16 = memref.alloc() : memref<4xi16>
    %alloc_17 = memref.alloc() : memref<6x5xi16>
    %alloc_18 = memref.alloc() : memref<14x14xf16>
    %alloc_19 = memref.alloc() : memref<4xf16>
    %alloc_20 = memref.alloc() : memref<6x5xi64>
    %alloc_21 = memref.alloc() : memref<14x14xf32>
    %16 = tensor.empty() : tensor<6x5xi1>
    %17 = linalg.copy ins(%8 : tensor<6x5xi1>) outs(%16 : tensor<6x5xi1>) -> tensor<6x5xi1>
    %18 = tensor.empty() : tensor<14x14xi64>
    %transposed = linalg.transpose ins(%7 : tensor<14x14xi64>) outs(%18 : tensor<14x14xi64>) permutation = [1, 0] 
    %alloc_22 = memref.alloc() : memref<6xi1>
    linalg.reduce ins(%8 : tensor<6x5xi1>) outs(%alloc_22 : memref<6xi1>) dimensions = [1] 
      (%in: i1, %init: i1) {
        %cst_48 = arith.constant 1.000000e+00 : f32
        %261 = vector.transfer_read %alloc_21[%c14, %c2], %cst_48 : memref<14x14xf32>, vector<f32>
        %262 = arith.remf %cst_0, %cst : f32
        %rank_49 = tensor.rank %15 : tensor<5x4xf32>
        %263 = affine.apply affine_map<(d0, d1, d2, d3) -> (((d3 * 2) ceildiv 32) mod 4)>(%c11, %c6, %c1, %c7)
        %264 = vector.broadcast %c1999358763_i64 : i64 to vector<6x14xi64>
        %265 = vector.broadcast %c1437400375_i64 : i64 to vector<6xi64>
        %dest, %accumulated_value = vector.scan <minui>, %264, %265 {inclusive = true, reduction_dim = 1 : i64} : vector<6x14xi64>, vector<6xi64>
        affine.for %arg1 = 0 to 31 {
        }
        %266 = index.maxu %c1, %c12
        %from_elements_50 = tensor.from_elements %c581854718_i32, %c959735039_i32, %c1693094076_i32, %c581854718_i32 : tensor<4xi32>
        %false = arith.constant false
        linalg.yield %false : i1
      }
    scf.parallel (%arg1, %arg2) = (%c11, %c13) to (%c1, %c9) step (%c11, %c1) {
      %261 = math.round %4 : tensor<6x5xf32>
      %262 = math.copysign %15, %15 : tensor<5x4xf32>
      %263 = vector.splat %c14 : vector<4xindex>
      %264 = vector.splat %c12 : vector<4xindex>
      %265 = memref.load %alloc_22[%c2] : memref<6xi1>
      scf.execute_region {
        %273 = math.log %14 : tensor<5x4xf16>
        %274 = memref.atomic_rmw muli %c1999358763_i64, %alloc[%c2, %c0] : (i64, memref<6x5xi64>) -> i64
        %275 = math.tan %cst_2 : f32
        %276 = arith.minf %cst_6, %cst_6 : f16
        %277 = arith.floordivsi %true, %true : i1
        %278 = arith.minsi %c600853247_i64, %c1091576647_i64 : i64
        %279 = math.round %cst_4 : f16
        %280 = index.sizeof
        %281 = math.copysign %9, %9 : tensor<6x5xf16>
        %282 = math.roundeven %cst_6 : f16
        %283 = math.atan2 %4, %4 : tensor<6x5xf32>
        %284 = vector.broadcast %c1091576647_i64 : i64 to vector<1xi64>
        %285 = vector.multi_reduction <xor>, %284, %284 [] : vector<1xi64> to vector<1xi64>
        %expanded_52 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<14x14xi64> into tensor<14x14x1xi64>
        %286 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %284, %284, %c1091576647_i64 : vector<1xi64>, vector<1xi64> into i64
        %287 = arith.shli %true, %true_5 : i1
        %288 = bufferization.to_memref %13 : memref<5x4xi64>
        scf.yield
      }
      %cast_48 = tensor.cast %4 : tensor<6x5xf32> to tensor<?x?xf32>
      %266 = math.exp2 %10 : tensor<4xf32>
      %expanded_49 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<14x14xi64> into tensor<14x14x1xi64>
      %267 = arith.divsi %c959735039_i32, %c959735039_i32 : i32
      %268 = tensor.empty() : tensor<6x5xi32>
      %269 = math.fpowi %4, %268 : tensor<6x5xf32>, tensor<6x5xi32>
      %c0_i16 = arith.constant 0 : i16
      affine.store %c0_i16, %alloc_17[%c1, %c4] : memref<6x5xi16>
      %inserted_50 = tensor.insert %c600853247_i64 into %13[%c3, %c2] : tensor<5x4xi64>
      %270 = tensor.empty() : tensor<4xf32>
      %271 = index.add %c4, %c12
      %272 = tensor.empty() : tensor<14x14xi64>
      %mapped_51 = linalg.map ins(%transposed : tensor<14x14xi64>) outs(%272 : tensor<14x14xi64>)
        (%in: i64) {
          %273 = math.fma %10, %270, %10 : tensor<4xf32>
          %rank_52 = tensor.rank %13 : tensor<5x4xi64>
          %cst_53 = arith.constant 5.636000e+03 : f16
          %274 = math.atan %9 : tensor<6x5xf16>
          %275 = vector.broadcast %c0_i16 : i16 to vector<5x4xi16>
          %276 = vector.shuffle %275, %275 [0, 1, 4, 5, 6, 7] : vector<5x4xi16>, vector<5x4xi16>
          %277 = index.sub %c11, %c5
          %278 = vector.broadcast %cst_4 : f16 to vector<14x14xf16>
          %279 = vector.transpose %278, [0, 1] : vector<14x14xf16> to vector<14x14xf16>
          %280 = arith.muli %c600853247_i64, %in : i64
          %281 = memref.load %alloc_18[%c6, %c1] : memref<14x14xf16>
          %282 = vector.broadcast %cst_3 : f32 to vector<14x14xf32>
          %283 = vector.fma %282, %282, %282 : vector<14x14xf32>
          %284 = arith.remf %cst_4, %cst_6 : f16
          %285 = vector.transpose %278, [1, 0] : vector<14x14xf16> to vector<14x14xf16>
          %286 = math.roundeven %270 : tensor<4xf32>
          %287 = math.fpowi %9, %268 : tensor<6x5xf16>, tensor<6x5xi32>
          %288 = arith.minui %true_5, %true : i1
          %289 = math.log10 %cst : f32
          %290 = math.log10 %cst_2 : f32
          %291 = math.cttz %true_1 : i1
          %292 = vector.broadcast %277 : index to vector<14xindex>
          %293 = vector.broadcast %true_5 : i1 to vector<14xi1>
          %294 = vector.broadcast %c1437400375_i64 : i64 to vector<14xi64>
          vector.scatter %alloc_14[%c0] [%292], %293, %294 : memref<4xi64>, vector<14xindex>, vector<14xi1>, vector<14xi64>
          %295 = math.ctpop %13 : tensor<5x4xi64>
          %296 = vector.broadcast %cst_2 : f32 to vector<14xf32>
          %297 = vector.insert %296, %282 [4] : vector<14xf32> into vector<14x14xf32>
          %298 = arith.remf %cst_3, %cst_0 : f32
          %299 = arith.remui %c581854718_i32, %c581854718_i32 : i32
          %300 = math.log10 %cst_0 : f32
          %301 = arith.maxf %cst_3, %cst_0 : f32
          %302 = affine.max affine_map<(d0, d1) -> (d1 + 16, -(d1 ceildiv 4), (d1 mod 64) ceildiv 2)>(%c7, %c9)
          %303 = index.maxs %c10, %271
          %304 = arith.shrsi %c581854718_i32, %c959735039_i32 : i32
          %305 = math.exp %15 : tensor<5x4xf32>
          %306 = vector.reduction <minf>, %296 : vector<14xf32> into f32
          %307 = index.maxu %c1, %271
          %308 = math.log2 %cst_6 : f16
          %c1_i64_54 = arith.constant 1 : i64
          linalg.yield %c1_i64_54 : i64
        }
      scf.yield
    }
    %19 = affine.vector_load %alloc_18[%c12, %c9] : memref<14x14xf16>, vector<6xf16>
    affine.vector_store %19, %alloc_19[%c12] : memref<4xf16>, vector<6xf16>
    %alloc_23 = memref.alloc() : memref<4xi32>
    %20 = tensor.empty() : tensor<i32>
    %21 = linalg.dot ins(%0, %alloc_23 : tensor<4xi32>, memref<4xi32>) outs(%20 : tensor<i32>) -> tensor<i32>
    %22 = tensor.empty() : tensor<6x6x6xi32>
    %23 = tensor.empty() : tensor<6xi32>
    %24 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%23 : tensor<6xi32>) outs(%22 : tensor<6x6x6xi32>) {
    ^bb0(%in: i32, %out: i32):
      %261 = math.expm1 %14 : tensor<5x4xf16>
      %262 = math.cos %cst : f32
      %263 = vector.multi_reduction <minf>, %19, %cst_6 [0] : vector<6xf16> to f16
      %264 = vector.insertelement %cst_6, %19[%c14 : index] : vector<6xf16>
      %265 = vector.extract %19[3] : vector<6xf16>
      %266 = vector.insertelement %cst_4, %19[%c3 : index] : vector<6xf16>
      memref.assume_alignment %alloc_7, 2 : memref<5x4xi1>
      %267 = bufferization.clone %alloc_8 : memref<6x5xi1> to memref<6x5xi1>
      %268 = math.roundeven %10 : tensor<4xf32>
      %269 = vector.transpose %19, [0] : vector<6xf16> to vector<6xf16>
      %270 = math.copysign %9, %9 : tensor<6x5xf16>
      %271 = bufferization.to_tensor %alloc_11 : memref<6x5xi16>
      %272 = math.copysign %9, %9 : tensor<6x5xf16>
      %273 = math.log1p %cst : f32
      %274 = math.log2 %14 : tensor<5x4xf16>
      %275 = arith.minsi %in, %c1693094076_i32 : i32
      %276 = math.log1p %cst_6 : f16
      %277 = scf.if %true_5 -> (memref<4xf32>) {
        %287 = arith.remf %cst_0, %cst_3 : f32
        %288 = math.roundeven %263 : f16
        %289 = math.ctpop %c1999358763_i64 : i64
        %290 = math.log2 %15 : tensor<5x4xf32>
        %291 = index.sizeof
        %292 = memref.realloc %alloc_19 : memref<4xf16> to memref<4xf16>
        %293 = vector.broadcast %in : i32 to vector<4xi32>
        %294 = vector.broadcast %true : i1 to vector<4xi1>
        %295 = vector.gather %0[%c4] [%293], %294, %293 : tensor<4xi32>, vector<4xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %296 = index.mul %c5, %c3
        scf.yield %alloc_10 : memref<4xf32>
      } else {
        %287 = arith.subi %c1437400375_i64, %c1999358763_i64 : i64
        %288 = memref.atomic_rmw assign %c600853247_i64, %alloc_20[%c2, %c4] : (i64, memref<6x5xi64>) -> i64
        %289 = math.exp %cst_4 : f16
        %290 = vector.bitcast %19 : vector<6xf16> to vector<6xf16>
        %c0_i16 = arith.constant 0 : i16
        %291 = vector.broadcast %c0_i16 : i16 to vector<4xi16>
        %292 = vector.broadcast %true_1 : i1 to vector<4xi1>
        %293 = vector.maskedload %alloc_16[%c0], %292, %291 : memref<4xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %294 = vector.matrix_multiply %291, %291 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        %295 = vector.broadcast %cst_2 : f32 to vector<f32>
        %296 = vector.transfer_write %295, %10[%c1] : vector<f32>, tensor<4xf32>
        %297 = vector.broadcast %true_5 : i1 to vector<14x14xi1>
        %298 = vector.broadcast %true : i1 to vector<14xi1>
        %dest, %accumulated_value = vector.scan <maxui>, %297, %298 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xi1>, vector<14xi1>
        scf.yield %alloc_10 : memref<4xf32>
      }
      %278 = tensor.empty() : tensor<6x5xi64>
      %mapped_48 = linalg.map ins(%2 : tensor<6x5xi64>) outs(%278 : tensor<6x5xi64>)
        (%in_52: i64) {
          %287 = bufferization.to_tensor %alloc_23 : memref<4xi32>
          %288 = vector.broadcast %true_1 : i1 to vector<4xi1>
          %289 = vector.maskedload %267[%c1, %c4], %288, %288 : memref<6x5xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
          %c816947678_i32 = arith.constant 816947678 : i32
          %splat_53 = tensor.splat %true_5 : tensor<6x5xi1>
          %290 = arith.remf %263, %cst_6 : f16
          %291 = vector.insertelement %true_5, %289[%c5 : index] : vector<4xi1>
          %292 = math.cttz %0 : tensor<4xi32>
          %293 = memref.atomic_rmw maxs %c1999358763_i64, %alloc[%c3, %c4] : (i64, memref<6x5xi64>) -> i64
          %294 = index.maxu %c3, %c0
          %295 = index.maxu %c8, %c0
          %296 = math.powf %cst_4, %cst_6 : f16
          %297 = vector.broadcast %true : i1 to vector<4x4xi1>
          %298 = vector.outerproduct %288, %289, %297 {kind = #vector.kind<or>} : vector<4xi1>, vector<4xi1>
          %299 = tensor.empty() : tensor<4xi1>
          %300 = bufferization.clone %alloc_8 : memref<6x5xi1> to memref<6x5xi1>
          %301 = memref.load %alloc_12[%c0, %c2] : memref<6x5xi1>
          %302 = arith.maxui %c1437400375_i64, %c600853247_i64 : i64
          %303 = vector.bitcast %19 : vector<6xf16> to vector<6xf16>
          %304 = math.rsqrt %cst : f32
          %inserted_54 = tensor.insert %true_5 into %12[%c8, %c2] : tensor<14x14xi1>
          %305 = index.casts %out : i32 to index
          %true_55 = index.bool.constant true
          %306 = vector.shuffle %303, %19 [0, 3, 6, 10] : vector<6xf16>, vector<6xf16>
          %true_56 = index.bool.constant true
          %307 = math.roundeven %263 : f16
          %308 = bufferization.to_memref %splat_53 : memref<6x5xi1>
          %309 = bufferization.clone %alloc : memref<6x5xi64> to memref<6x5xi64>
          %310 = bufferization.to_memref %13 : memref<5x4xi64>
          %311 = bufferization.to_tensor %277 : memref<4xf32>
          %312 = memref.atomic_rmw minu %c600853247_i64, %alloc[%c1, %c2] : (i64, memref<6x5xi64>) -> i64
          %alloc_57 = memref.alloc() : memref<6x5xf32>
          memref.tensor_store %4, %alloc_57 : memref<6x5xf32>
          %313 = arith.xori %c600853247_i64, %in_52 : i64
          %314 = math.expm1 %9 : tensor<6x5xf16>
          %c0_i64_58 = arith.constant 0 : i64
          linalg.yield %c0_i64_58 : i64
        }
      memref.assume_alignment %alloc_15, 2 : memref<4xi64>
      %279 = arith.andi %in, %c1693094076_i32 : i32
      %inserted_49 = tensor.insert %c600853247_i64 into %2[%c1, %c3] : tensor<6x5xi64>
      %rank_50 = tensor.rank %8 : tensor<6x5xi1>
      memref.alloca_scope  {
        %false = index.bool.constant false
        %287 = arith.divf %cst_2, %cst : f32
        %288 = index.maxs %c0, %c11
        %289 = tensor.empty() : tensor<14x14xi32>
        %290 = linalg.matmul ins(%3, %3 : tensor<14x14xi32>, tensor<14x14xi32>) outs(%289 : tensor<14x14xi32>) -> tensor<14x14xi32>
        %291 = vector.broadcast %c581854718_i32 : i32 to vector<i32>
        %292 = vector.transfer_write %291, %0[%c10] : vector<i32>, tensor<4xi32>
        %293 = math.cos %10 : tensor<4xf32>
        %294 = math.log2 %14 : tensor<5x4xf16>
        %inserted_52 = tensor.insert %c1437400375_i64 into %5[%c3, %c2] : tensor<6x5xi64>
        %295 = arith.xori %c1437400375_i64, %c1091576647_i64 : i64
        %296 = arith.addf %cst_3, %cst_2 : f32
        %297 = math.fma %9, %9, %9 : tensor<6x5xf16>
        %298 = arith.floordivsi %true, %true : i1
        %299 = vector.insertelement %out, %291[] : vector<i32>
        %alloc_53 = memref.alloc() : memref<i32>
        memref.tensor_store %21, %alloc_53 : memref<i32>
        %300 = index.sub %c12, %c4
        %301 = math.absi %3 : tensor<14x14xi32>
        %302 = math.copysign %cst_2, %cst_2 : f32
        %303 = math.exp %15 : tensor<5x4xf32>
        %304 = tensor.empty() : tensor<6x5xi32>
        %305 = math.fpowi %4, %304 : tensor<6x5xf32>, tensor<6x5xi32>
        %306 = vector.flat_transpose %19 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
        affine.store %c581854718_i32, %alloc_23[%c9] : memref<4xi32>
        %307 = math.roundeven %cst_0 : f32
        %308 = math.log1p %cst_0 : f32
        %309 = vector.shuffle %19, %19 [0, 2, 3, 5, 6, 8, 9] : vector<6xf16>, vector<6xf16>
        %310 = index.divs %c4, %c8
        %311 = bufferization.to_tensor %alloc_16 : memref<4xi16>
        %312 = math.fma %4, %4, %4 : tensor<6x5xf32>
        %313 = arith.andi %c959735039_i32, %c1693094076_i32 : i32
        %alloc_54 = memref.alloc() : memref<6x5xi64>
        %314 = math.exp %15 : tensor<5x4xf32>
        %315 = arith.addf %263, %263 : f16
        %316 = vector.broadcast %c581854718_i32 : i32 to vector<14xi32>
        %317 = vector.transfer_write %316, %3[%c3, %c7] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<14xi32>, tensor<14x14xi32>
      }
      %280 = arith.addi %c1437400375_i64, %c600853247_i64 : i64
      %281 = math.ipowi %271, %271 : tensor<6x5xi16>
      %282 = index.sub %c11, %c4
      %283 = arith.maxui %out, %in : i32
      %284 = index.divu %c9, %c13
      %285 = math.copysign %263, %cst_4 : f16
      %inserted_51 = tensor.insert %true_5 into %1[%c3] : tensor<4xi1>
      %286 = math.fma %cst, %cst_2, %cst_2 : f32
      linalg.yield %c581854718_i32 : i32
    } -> tensor<6x6x6xi32>
    %25 = vector.broadcast %cst_2 : f32 to vector<6xf32>
    %26 = vector.broadcast %true : i1 to vector<6xi1>
    %27 = vector.maskedload %alloc_10[%c1], %26, %25 : memref<4xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
    %28 = index.maxs %c2, %c2
    %29 = vector.broadcast %c1999358763_i64 : i64 to vector<5xi64>
    %30 = vector.broadcast %true : i1 to vector<5xi1>
    %31 = vector.maskedload %alloc_14[%c2], %30, %29 : memref<4xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
    %32 = arith.addf %cst_4, %cst_6 : f16
    memref.alloca_scope  {
      %261 = math.exp %cst_4 : f16
      %262 = arith.addi %c1091576647_i64, %c600853247_i64 : i64
      affine.store %cst, %alloc_21[%c12, %c5] : memref<14x14xf32>
      %263 = vector.flat_transpose %19 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
      %264 = affine.apply affine_map<(d0) -> ((d0 floordiv 4) floordiv 16 - 24)>(%c14)
      memref.assume_alignment %alloc_8, 1 : memref<6x5xi1>
      %c404234292_i32 = arith.constant 404234292 : i32
      %265 = math.log1p %cst_2 : f32
      %266 = math.cos %cst_6 : f16
      %267 = vector.maskedload %alloc_12[%c2, %c1], %30, %30 : memref<6x5xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
      %cst_48 = arith.constant 2.241600e+04 : f16
      %268 = math.ceil %cst_6 : f16
      %cast_49 = tensor.cast %6 : tensor<14x14xi32> to tensor<?x?xi32>
      %269 = index.ceildivu %c8, %c11
      %270 = tensor.empty() : tensor<6x4xi64>
      %271 = linalg.matmul ins(%5, %13 : tensor<6x5xi64>, tensor<5x4xi64>) outs(%270 : tensor<6x4xi64>) -> tensor<6x4xi64>
      %272 = math.powf %14, %14 : tensor<5x4xf16>
      %273 = arith.remui %true_1, %true_5 : i1
      %274 = arith.muli %c1437400375_i64, %c1091576647_i64 : i64
      %275 = index.divs %28, %c6
      %276 = math.atan2 %10, %10 : tensor<4xf32>
      %277 = arith.shrsi %c1437400375_i64, %c1437400375_i64 : i64
      %collapsed = tensor.collapse_shape %14 [[0, 1]] : tensor<5x4xf16> into tensor<20xf16>
      %278 = index.sizeof
      %279 = arith.floordivsi %c581854718_i32, %c581854718_i32 : i32
      %splat_50 = tensor.splat %cst_2 : tensor<6x5xf32>
      %280 = vector.shuffle %25, %27 [2, 3, 6, 10] : vector<6xf32>, vector<6xf32>
      %281 = arith.remui %c1693094076_i32, %c1693094076_i32 : i32
      %282 = arith.maxf %cst_2, %cst_2 : f32
      %283 = vector.broadcast %cst_4 : f16 to vector<5x4xf16>
      %284 = vector.broadcast %cst_4 : f16 to vector<5xf16>
      %dest, %accumulated_value = vector.scan <minf>, %283, %284 {inclusive = true, reduction_dim = 1 : i64} : vector<5x4xf16>, vector<5xf16>
      %285 = index.add %c6, %c7
      %inserted_51 = tensor.insert %c1437400375_i64 into %2[%c1, %c0] : tensor<6x5xi64>
      %286 = memref.load %alloc[%c5, %c3] : memref<6x5xi64>
    }
    %33 = vector.bitcast %19 : vector<6xf16> to vector<6xi16>
    %34 = math.log1p %14 : tensor<5x4xf16>
    %35 = arith.divsi %c1437400375_i64, %c1091576647_i64 : i64
    %36 = index.casts %c5 : index to i32
    %37 = vector.shuffle %25, %27 [0, 2, 3, 5, 6, 9, 11] : vector<6xf32>, vector<6xf32>
    %38 = memref.alloca_scope  -> (i16) {
      %261 = math.round %14 : tensor<5x4xf16>
      %262 = arith.cmpi ugt, %true_5, %true_1 : i1
      %263 = arith.cmpi sgt, %c1693094076_i32, %c959735039_i32 : i32
      %264 = math.fma %10, %10, %10 : tensor<4xf32>
      %265 = math.log1p %cst_2 : f32
      %266 = memref.load %alloc_23[%c3] : memref<4xi32>
      %267 = math.roundeven %10 : tensor<4xf32>
      %268 = arith.minui %true, %true : i1
      %269 = arith.addf %cst_0, %cst_3 : f32
      %270 = math.ctpop %c581854718_i32 : i32
      %271 = math.roundeven %14 : tensor<5x4xf16>
      %272 = memref.alloca_scope  -> (memref<5x4xf32>) {
        %293 = vector.splat %cst_4 : vector<4xf16>
        %294 = vector.splat %cst_4 : vector<5x4xf16>
        %295 = arith.floordivsi %c1091576647_i64, %c600853247_i64 : i64
        %296 = vector.broadcast %cst_3 : f32 to vector<4xf32>
        %297 = vector.broadcast %true : i1 to vector<4xi1>
        %298 = vector.maskedload %alloc_21[%c2, %c7], %297, %296 : memref<14x14xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
        %299 = vector.flat_transpose %33 {columns = 2 : i32, rows = 3 : i32} : vector<6xi16> -> vector<6xi16>
        %300 = math.tan %9 : tensor<6x5xf16>
        %301 = vector.broadcast %c600853247_i64 : i64 to vector<4x6xi64>
        %302 = vector.broadcast %c1091576647_i64 : i64 to vector<6xi64>
        %dest_51, %accumulated_value_52 = vector.scan <add>, %301, %302 {inclusive = false, reduction_dim = 0 : i64} : vector<4x6xi64>, vector<6xi64>
        affine.store %c1091576647_i64, %alloc_20[%c15, %c6] : memref<6x5xi64>
        %303 = arith.addi %c959735039_i32, %c581854718_i32 : i32
        %304 = math.roundeven %cst_2 : f32
        %305 = vector.extract %296[1] : vector<4xf32>
        %306 = math.tan %cst_2 : f32
        %307 = vector.bitcast %31 : vector<5xi64> to vector<5xi64>
        %308 = bufferization.clone %alloc_12 : memref<6x5xi1> to memref<6x5xi1>
        %309 = memref.load %alloc_14[%c2] : memref<4xi64>
        %cast_53 = tensor.cast %transposed : tensor<14x14xi64> to tensor<?x?xi64>
        %310 = vector.maskedload %alloc_18[%c11, %c8], %26, %19 : memref<14x14xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
        %311 = math.fma %14, %14, %14 : tensor<5x4xf16>
        %true_54 = index.bool.constant true
        %312 = arith.addf %cst_6, %cst_4 : f16
        %313 = math.absi %6 : tensor<14x14xi32>
        %314 = arith.maxui %true, %true_5 : i1
        %315 = arith.maxui %c1437400375_i64, %c1091576647_i64 : i64
        %316 = math.cos %15 : tensor<5x4xf32>
        %317 = math.log1p %4 : tensor<6x5xf32>
        %318 = arith.maxf %cst_4, %cst_4 : f16
        %alloc_55 = memref.alloc() : memref<4xi16>
        %319 = math.exp2 %15 : tensor<5x4xf32>
        %320 = math.rsqrt %4 : tensor<6x5xf32>
        %321 = math.log1p %10 : tensor<4xf32>
        %322 = vector.maskedload %alloc_9[%c2], %26, %299 : memref<4xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
        %323 = vector.extract_strided_slice %30 {offsets = [0], sizes = [1], strides = [1]} : vector<5xi1> to vector<1xi1>
        %alloc_56 = memref.alloc() : memref<5x4xf32>
        memref.alloca_scope.return %alloc_56 : memref<5x4xf32>
      }
      %273 = math.fma %14, %14, %14 : tensor<5x4xf16>
      %274 = math.cos %cst_0 : f32
      %275 = math.round %15 : tensor<5x4xf32>
      %276 = vector.flat_transpose %29 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
      %277 = arith.remf %cst_2, %cst : f32
      %278 = math.exp %14 : tensor<5x4xf16>
      %279 = memref.realloc %alloc_9 : memref<4xi16> to memref<5xi16>
      %280 = vector.reduction <maxui>, %30 : vector<5xi1> into i1
      %cast_48 = tensor.cast %6 : tensor<14x14xi32> to tensor<?x?xi32>
      %281 = vector.load %alloc_10[%c3] : memref<4xf32>, vector<6x5xf32>
      %282 = vector.broadcast %cst : f32 to vector<5xf32>
      %dest, %accumulated_value = vector.scan <maxf>, %281, %282 {inclusive = false, reduction_dim = 0 : i64} : vector<6x5xf32>, vector<5xf32>
      %283 = index.add %c13, %c0
      %284 = vector.create_mask %c11, %c1 : vector<14x14xi1>
      %285 = vector.maskedload %alloc[%c5, %c0], %30, %276 : memref<6x5xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
      %286 = math.tan %9 : tensor<6x5xf16>
      %287 = vector.transpose %30, [0] : vector<5xi1> to vector<5xi1>
      %288 = arith.divf %cst, %cst_3 : f32
      %expanded_49 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<5x4xf32> into tensor<5x4x1xf32>
      %289 = math.cos %cst_2 : f32
      %alloc_50 = memref.alloc() : memref<5xf32>
      %290 = tensor.empty() : tensor<4x5x1xf32>
      %291 = tensor.empty() : tensor<4x5xf32>
      %292 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_50, %290, %291 : memref<5xf32>, tensor<4x5x1xf32>, tensor<4x5xf32>) outs(%expanded_49 : tensor<5x4x1xf32>) {
      ^bb0(%in: f32, %in_51: f32, %in_52: f32, %out: f32):
        %293 = arith.remsi %true, %true_5 : i1
        %294 = arith.floordivsi %c1437400375_i64, %c1999358763_i64 : i64
        %295 = math.absi %5 : tensor<6x5xi64>
        %inserted_53 = tensor.insert %cst_4 into %14[%c4, %c1] : tensor<5x4xf16>
        %296 = memref.load %alloc_23[%c2] : memref<4xi32>
        %cst_54 = arith.constant 1.000000e+00 : f16
        %cst_55 = arith.constant 0.000000e+00 : f16
        %297 = vector.transfer_read %14[%c12, %c5], %cst_55 : tensor<5x4xf16>, vector<f16>
        %298 = math.tan %4 : tensor<6x5xf32>
        %299 = vector.broadcast %in_51 : f32 to vector<5xf32>
        %300 = vector.insert %299, %281 [2] : vector<5xf32> into vector<6x5xf32>
        %301 = vector.shuffle %29, %276 [0, 1, 2, 4, 5, 7] : vector<5xi64>, vector<5xi64>
        %302 = tensor.empty() : tensor<6x4xi64>
        %303 = linalg.matmul ins(%5, %13 : tensor<6x5xi64>, tensor<5x4xi64>) outs(%302 : tensor<6x4xi64>) -> tensor<6x4xi64>
        %304 = arith.divf %in_52, %cst_0 : f32
        %305 = math.copysign %9, %9 : tensor<6x5xf16>
        %alloca_56 = memref.alloca() : memref<14x14xi1>
        %306 = tensor.empty() : tensor<14x14xi64>
        %307 = linalg.matmul ins(%7, %transposed : tensor<14x14xi64>, tensor<14x14xi64>) outs(%306 : tensor<14x14xi64>) -> tensor<14x14xi64>
        %308 = math.fma %15, %15, %15 : tensor<5x4xf32>
        %309 = math.ctpop %306 : tensor<14x14xi64>
        %310 = math.exp %10 : tensor<4xf32>
        %311 = arith.addi %c1091576647_i64, %c1091576647_i64 : i64
        %312 = vector.broadcast %true_5 : i1 to vector<5x5xi1>
        %313 = vector.outerproduct %30, %30, %312 {kind = #vector.kind<maxsi>} : vector<5xi1>, vector<5xi1>
        %314 = vector.insert %cst_6, %19 [4] : f16 into vector<6xf16>
        %inserted_57 = tensor.insert %true_5 into %12[%c13, %c11] : tensor<14x14xi1>
        %315 = arith.remsi %c1437400375_i64, %c1091576647_i64 : i64
        %316 = memref.load %alloc_13[%c4, %c3] : memref<5x4xi16>
        %317 = vector.broadcast %c1091576647_i64 : i64 to vector<5x5xi64>
        %318 = vector.outerproduct %31, %276, %317 {kind = #vector.kind<minui>} : vector<5xi64>, vector<5xi64>
        %319 = vector.broadcast %c1091576647_i64 : i64 to vector<5x5xi64>
        %320 = vector.outerproduct %276, %31, %319 {kind = #vector.kind<maxui>} : vector<5xi64>, vector<5xi64>
        %321 = memref.realloc %alloc_14 : memref<4xi64> to memref<4xi64>
        %322 = math.ctpop %8 : tensor<6x5xi1>
        %323 = vector.broadcast %out : f32 to vector<5x4xf32>
        %324 = vector.fma %323, %323, %323 : vector<5x4xf32>
        %cast_58 = tensor.cast %16 : tensor<6x5xi1> to tensor<?x?xi1>
        %325 = arith.andi %c581854718_i32, %c581854718_i32 : i32
        %326 = memref.realloc %alloc_23 : memref<4xi32> to memref<4xi32>
        %327 = vector.bitcast %27 : vector<6xf32> to vector<6xf32>
        linalg.yield %cst_3 : f32
      } -> tensor<5x4x1xf32>
      %c1_i16 = arith.constant 1 : i16
      memref.alloca_scope.return %c1_i16 : i16
    }
    %39 = math.roundeven %9 : tensor<6x5xf16>
    %40 = scf.execute_region -> tensor<4xf16> {
      %splat_48 = tensor.splat %cst_6 : tensor<14x14xf16>
      %261 = vector.flat_transpose %25 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
      %262 = math.copysign %cst_2, %cst : f32
      %263 = arith.addi %c581854718_i32, %c581854718_i32 : i32
      %264 = vector.broadcast %38 : i16 to vector<14xi16>
      %265 = vector.broadcast %true : i1 to vector<14xi1>
      %266 = vector.maskedload %alloc_9[%c3], %265, %264 : memref<4xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
      %267 = arith.andi %c1999358763_i64, %c1437400375_i64 : i64
      %268 = scf.while (%arg1 = %264) : (vector<14xi16>) -> vector<14xi16> {
        %278 = math.exp %10 : tensor<4xf32>
        %279 = math.log2 %9 : tensor<6x5xf16>
        %280 = math.absi %11 : tensor<4xi16>
        %281 = index.ceildivu %c5, %c6
        %282 = memref.atomic_rmw maxu %38, %alloc_9[%c1] : (i16, memref<4xi16>) -> i16
        %283 = math.exp2 %15 : tensor<5x4xf32>
        %alloca_50 = memref.alloca() : memref<4xf32>
        %alloca_51 = memref.alloca() : memref<4xf16>
        scf.condition(%true_1) %266 : vector<14xi16>
      } do {
      ^bb0(%arg1: vector<14xi16>):
        %splat_50 = tensor.splat %cst_4 : tensor<4xf16>
        memref.tensor_store %10, %alloc_10 : memref<4xf32>
        %278 = affine.max affine_map<(d0, d1, d2) -> (d0 floordiv 64, -((-(d0 + 4)) floordiv 8), d2)>(%28, %c12, %c6)
        %279 = math.absf %4 : tensor<6x5xf32>
        %280 = arith.ceildivsi %c1091576647_i64, %c600853247_i64 : i64
        %281 = math.atan %9 : tensor<6x5xf16>
        %282 = arith.maxui %c1091576647_i64, %c1091576647_i64 : i64
        %283 = math.cos %cst_6 : f16
        %284 = arith.cmpi ugt, %c581854718_i32, %c959735039_i32 : i32
        %285 = tensor.empty() : tensor<14x14xf16>
        %286 = vector.broadcast %cst_0 : f32 to vector<5x6xf32>
        %287 = vector.broadcast %cst_0 : f32 to vector<5xf32>
        %dest, %accumulated_value = vector.scan <mul>, %286, %287 {inclusive = true, reduction_dim = 1 : i64} : vector<5x6xf32>, vector<5xf32>
        memref.copy %alloc_20, %alloc : memref<6x5xi64> to memref<6x5xi64>
        %288 = math.log10 %cst_6 : f16
        %289 = math.absf %cst_3 : f32
        %290 = vector.matrix_multiply %26, %265 {lhs_columns = 2 : i32, lhs_rows = 3 : i32, rhs_columns = 7 : i32} : (vector<6xi1>, vector<14xi1>) -> vector<21xi1>
        %291 = index.maxs %c15, %c2
        scf.yield %264 : vector<14xi16>
      }
      %269 = index.add %c8, %28
      %270 = vector.matrix_multiply %31, %29 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
      %271 = index.add %c1, %269
      %272 = math.copysign %10, %10 : tensor<4xf32>
      %273 = index.sizeof
      %274 = arith.shli %c600853247_i64, %c600853247_i64 : i64
      %275 = index.maxu %c7, %c6
      %276 = index.floordivs %c10, %269
      %cast_49 = tensor.cast %3 : tensor<14x14xi32> to tensor<?x?xi32>
      %277 = tensor.empty() : tensor<4xf16>
      scf.yield %277 : tensor<4xf16>
    }
    %41 = tensor.empty() : tensor<6x6x6xi32>
    %alloc_24 = memref.alloc() : memref<6xi32>
    %alloc_25 = memref.alloc() : memref<6x6xi32>
    %42 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_24, %alloc_25 : memref<6xi32>, memref<6x6xi32>) outs(%41 : tensor<6x6x6xi32>) {
    ^bb0(%in: i32, %in_48: i32, %out: i32):
      %261 = arith.remui %c581854718_i32, %c1693094076_i32 : i32
      %generated_49 = tensor.generate %c1 {
      ^bb0(%arg1: index):
        %291 = bufferization.clone %alloc_18 : memref<14x14xf16> to memref<14x14xf16>
        %292 = arith.minsi %c1091576647_i64, %c600853247_i64 : i64
        %293 = arith.divf %cst_4, %cst_6 : f16
        %294 = math.ctpop %c1999358763_i64 : i64
        tensor.yield %c1693094076_i32 : i32
      } : tensor<?xi32>
      memref.store %true, %alloc_12[%c0, %c2] : memref<6x5xi1>
      %262 = vector.maskedload %alloc_10[%c1], %26, %27 : memref<4xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
      %263 = arith.divf %cst_4, %cst_4 : f16
      %264 = affine.min affine_map<(d0, d1) -> (d1 * -2, d1 * 64)>(%c6, %c12)
      %265 = scf.while (%arg1 = %c1693094076_i32) : (i32) -> i32 {
        %291 = math.atan2 %9, %9 : tensor<6x5xf16>
        %292 = math.log1p %10 : tensor<4xf32>
        %293 = arith.shli %c1437400375_i64, %c1437400375_i64 : i64
        %true_53 = index.bool.constant true
        %294 = affine.load %alloc_16[%c2] : memref<4xi16>
        memref.assume_alignment %alloc_13, 2 : memref<5x4xi16>
        %295 = bufferization.to_tensor %alloc_10 : memref<4xf32>
        %296 = arith.muli %true_53, %true_53 : i1
        scf.condition(%true_5) %c959735039_i32 : i32
      } do {
      ^bb0(%arg1: i32):
        %291 = bufferization.clone %alloc_9 : memref<4xi16> to memref<4xi16>
        %292 = memref.atomic_rmw addf %cst_6, %alloc_19[%c1] : (f16, memref<4xf16>) -> f16
        %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %262, %262, %cst : vector<6xf32>, vector<6xf32> into f32
        %294 = bufferization.to_tensor %alloc_7 : memref<5x4xi1>
        %295 = math.exp2 %cst_0 : f32
        %296 = bufferization.clone %alloc : memref<6x5xi64> to memref<6x5xi64>
        %297 = bufferization.clone %alloc_17 : memref<6x5xi16> to memref<6x5xi16>
        %298 = vector.insert %true_5, %26 [3] : i1 into vector<6xi1>
        %299 = vector.extract %31[0] : vector<5xi64>
        %300 = affine.apply affine_map<(d0, d1, d2, d3) -> (((d3 * 2) ceildiv 32) mod 4)>(%c6, %c0, %c4, %c7)
        %301 = index.ceildivu %300, %c15
        %alloc_53 = memref.alloc() : memref<14x14xi32>
        memref.assume_alignment %alloc_13, 2 : memref<5x4xi16>
        %302 = vector.broadcast %cst_3 : f32 to vector<6x5xf32>
        %303 = vector.fma %302, %302, %302 : vector<6x5xf32>
        %false = index.bool.constant false
        %304 = math.log1p %9 : tensor<6x5xf16>
        scf.yield %c959735039_i32 : i32
      }
      %266 = arith.divui %c1091576647_i64, %c1437400375_i64 : i64
      %267 = arith.maxui %true_5, %true_5 : i1
      %268 = arith.remui %c1437400375_i64, %c1091576647_i64 : i64
      %269 = math.round %15 : tensor<5x4xf32>
      %270 = math.round %cst_6 : f16
      %271 = arith.subi %c959735039_i32, %in : i32
      %272 = math.tan %cst : f32
      %273 = arith.minsi %c1091576647_i64, %c1999358763_i64 : i64
      %from_elements_50 = tensor.from_elements %c959735039_i32, %c959735039_i32, %c959735039_i32, %c581854718_i32, %out, %in, %c581854718_i32, %c959735039_i32, %c581854718_i32, %c1693094076_i32, %in_48, %in_48, %c581854718_i32, %c581854718_i32, %c581854718_i32, %out, %c1693094076_i32, %c1693094076_i32, %in_48, %in, %in, %in, %c959735039_i32, %c959735039_i32, %in, %in, %out, %c581854718_i32, %in_48, %c959735039_i32 : tensor<6x5xi32>
      %274 = tensor.empty() : tensor<6x6x6xi32>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%274 : tensor<6x6x6xi32>) {
      ^bb0(%out_53: i32):
        %291 = vector.multi_reduction <maxsi>, %33, %33 [] : vector<6xi16> to vector<6xi16>
        %292 = arith.addi %c581854718_i32, %c959735039_i32 : i32
        %293 = vector.multi_reduction <maxui>, %29, %31 [] : vector<5xi64> to vector<5xi64>
        %294 = index.sizeof
        %295 = math.rsqrt %cst_4 : f16
        %296 = vector.broadcast %true : i1 to vector<4xi1>
        %297 = vector.maskedload %alloc_12[%c0, %c3], %296, %296 : memref<6x5xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %298 = math.round %9 : tensor<6x5xf16>
        %299 = math.exp2 %cst : f32
        %rank_54 = tensor.rank %7 : tensor<14x14xi64>
        %300 = arith.xori %c600853247_i64, %c600853247_i64 : i64
        %301 = tensor.empty() : tensor<6x4xi64>
        %302 = linalg.matmul ins(%5, %13 : tensor<6x5xi64>, tensor<5x4xi64>) outs(%301 : tensor<6x4xi64>) -> tensor<6x4xi64>
        %303 = arith.cmpi sle, %c581854718_i32, %in : i32
        %304 = math.log2 %cst_4 : f16
        %305 = index.add %c9, %c5
        %alloc_55 = memref.alloc() : memref<6x5xi1>
        %306 = memref.load %alloc_16[%c2] : memref<4xi16>
        %307 = math.roundeven %cst_4 : f16
        %308 = arith.divsi %true, %true_1 : i1
        %309 = index.add %c13, %c5
        memref.copy %alloc_11, %alloc_17 : memref<6x5xi16> to memref<6x5xi16>
        %310 = vector.insert %c1437400375_i64, %31 [2] : i64 into vector<5xi64>
        %311 = vector.broadcast %cst_6 : f16 to vector<6x6xf16>
        %312 = vector.outerproduct %19, %19, %311 {kind = #vector.kind<mul>} : vector<6xf16>, vector<6xf16>
        %inserted_56 = tensor.insert %out_53 into %3[%c0, %c5] : tensor<14x14xi32>
        %alloc_57 = memref.alloc() : memref<14x14xi32>
        %313 = vector.broadcast %c959735039_i32 : i32 to vector<5x4xi32>
        %314 = vector.broadcast %true_5 : i1 to vector<5x4xi1>
        %315 = vector.gather %alloc_57[%c11, %c6] [%313], %314, %313 : memref<14x14xi32>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xi32> into vector<5x4xi32>
        %316 = arith.remf %cst_3, %cst_2 : f32
        %317 = vector.splat %cst_0 : vector<5x4xf32>
        %318 = math.exp2 %cst_4 : f16
        %319 = index.add %c10, %c13
        %320 = vector.bitcast %315 : vector<5x4xi32> to vector<5x4xi32>
        %321 = math.copysign %cst_4, %cst_4 : f16
        %322 = math.round %40 : tensor<4xf16>
        %323 = arith.addi %out, %c1693094076_i32 : i32
        linalg.yield %c1693094076_i32 : i32
      } -> tensor<6x6x6xi32>
      %276 = arith.minsi %c581854718_i32, %c959735039_i32 : i32
      %277 = affine.apply affine_map<(d0, d1, d2) -> (d0 - d2 + d0 + 1)>(%c11, %c6, %c15)
      %alloc_51 = memref.alloc() : memref<4x6xi64>
      %278 = tensor.empty() : tensor<5x6xi64>
      %279 = linalg.matmul ins(%13, %alloc_51 : tensor<5x4xi64>, memref<4x6xi64>) outs(%278 : tensor<5x6xi64>) -> tensor<5x6xi64>
      %280 = math.roundeven %cst_4 : f16
      %alloc_52 = memref.alloc() : memref<6x5xi1>
      %281 = arith.negf %cst_3 : f32
      %282 = math.tan %10 : tensor<4xf32>
      %283 = index.add %c4, %c8
      %284 = arith.addi %out, %c959735039_i32 : i32
      %285 = bufferization.clone %alloc_8 : memref<6x5xi1> to memref<6x5xi1>
      %286 = bufferization.to_tensor %alloc_13 : memref<5x4xi16>
      %287 = affine.if affine_set<(d0, d1, d2) : (0 >= 0, -((d2 mod 128) ceildiv 16) == 0)>(%c6, %c0, %c14) -> memref<4xi32> {
        %extracted_53 = tensor.extract %10[%c1] : tensor<4xf32>
        %291 = math.log10 %4 : tensor<6x5xf32>
        %292 = vector.broadcast %c1437400375_i64 : i64 to vector<5x5xi64>
        %293 = vector.outerproduct %31, %31, %292 {kind = #vector.kind<minui>} : vector<5xi64>, vector<5xi64>
        %alloca_54 = memref.alloca() : memref<4xf32>
        %294 = arith.minsi %c600853247_i64, %c600853247_i64 : i64
        %295 = arith.divf %cst_4, %cst_6 : f16
        %296 = math.ctpop %3 : tensor<14x14xi32>
        %297 = arith.divui %in_48, %in_48 : i32
        affine.yield %alloc_23 : memref<4xi32>
      } else {
        %291 = tensor.empty() : tensor<14x14xi32>
        %292 = linalg.matmul ins(%6, %3 : tensor<14x14xi32>, tensor<14x14xi32>) outs(%291 : tensor<14x14xi32>) -> tensor<14x14xi32>
        %293 = arith.maxsi %true_5, %true : i1
        %294 = bufferization.to_memref %13 : memref<5x4xi64>
        %295 = index.castu %c1999358763_i64 : i64 to index
        %296 = affine.max affine_map<(d0) -> (d0 - 3, d0, -5)>(%264)
        %297 = index.sizeof
        %298 = math.atan2 %cst_6, %cst_4 : f16
        %splat_53 = tensor.splat %true : tensor<4xi1>
        affine.yield %alloc_23 : memref<4xi32>
      }
      %288 = math.atan %15 : tensor<5x4xf32>
      %289 = affine.apply affine_map<(d0, d1, d2) -> ((d0 - d2 - 1) * 8 + 1)>(%c7, %c11, %c8)
      %290 = math.exp2 %10 : tensor<4xf32>
      linalg.yield %in_48 : i32
    } -> tensor<6x6x6xi32>
    %43 = math.cos %15 : tensor<5x4xf32>
    %44 = arith.addi %c581854718_i32, %c959735039_i32 : i32
    %45 = math.cos %14 : tensor<5x4xf16>
    %46 = arith.remui %c1437400375_i64, %c600853247_i64 : i64
    %expanded = tensor.expand_shape %15 [[0], [1, 2]] : tensor<5x4xf32> into tensor<5x4x1xf32>
    %47 = affine.max affine_map<(d0) -> ((d0 ceildiv 64) ceildiv 16, d0, (d0 ceildiv 64) floordiv 64)>(%c12)
    %48 = math.log2 %cst_4 : f16
    %49 = bufferization.clone %alloc_21 : memref<14x14xf32> to memref<14x14xf32>
    %50 = scf.while (%arg1 = %c1091576647_i64) : (i64) -> i64 {
      %261 = vector.splat %c959735039_i32 : vector<14x14xi32>
      %262 = math.exp %10 : tensor<4xf32>
      %false = arith.constant false
      %263 = vector.insertelement %c600853247_i64, %31[%c6 : index] : vector<5xi64>
      %rank_48 = tensor.rank %1 : tensor<4xi1>
      memref.copy %alloc_8, %alloc_12 : memref<6x5xi1> to memref<6x5xi1>
      %inserted_49 = tensor.insert %cst_4 into %9[%c2, %c4] : tensor<6x5xf16>
      %264 = math.log2 %15 : tensor<5x4xf32>
      scf.condition(%true_1) %arg1 : i64
    } do {
    ^bb0(%arg1: i64):
      %261 = tensor.empty() : tensor<6x5xi32>
      %262 = vector.broadcast %cst_6 : f16 to vector<6x5xf16>
      %263 = math.round %cst_3 : f32
      %264 = math.exp %cst_2 : f32
      %265 = vector.multi_reduction <and>, %29, %c1999358763_i64 [0] : vector<5xi64> to i64
      %266 = index.ceildivu %c9, %c8
      %267 = math.log2 %expanded : tensor<5x4x1xf32>
      %268 = arith.maxui %c1091576647_i64, %265 : i64
      %269 = math.absi %2 : tensor<6x5xi64>
      memref.copy %alloc_8, %alloc_12 : memref<6x5xi1> to memref<6x5xi1>
      %270 = index.add %c7, %c11
      %271 = vector.flat_transpose %30 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
      %272 = math.round %14 : tensor<5x4xf16>
      %273 = arith.remf %cst, %cst_3 : f32
      %274 = arith.remf %cst_0, %cst_0 : f32
      %275 = math.log2 %expanded : tensor<5x4x1xf32>
      scf.yield %265 : i64
    }
    %51 = vector.insert %c600853247_i64, %29 [1] : i64 into vector<5xi64>
    %52 = tensor.empty() : tensor<6x5xi64>
    %mapped = linalg.map ins(%2, %2 : tensor<6x5xi64>, tensor<6x5xi64>) outs(%52 : tensor<6x5xi64>)
      (%in: i64, %in_48: i64) {
        %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%10, %expanded : tensor<4xf32>, tensor<5x4x1xf32>) outs(%expanded : tensor<5x4x1xf32>) {
        ^bb0(%in_56: f32, %in_57: f32, %out: f32):
          %285 = math.roundeven %14 : tensor<5x4xf16>
          %286 = math.tanh %in_56 : f32
          %287 = bufferization.to_tensor %alloc_22 : memref<6xi1>
          %288 = vector.extract %33[3] : vector<6xi16>
          %289 = tensor.empty() : tensor<5x4xi32>
          %290 = math.fpowi %15, %289 : tensor<5x4xf32>, tensor<5x4xi32>
          %alloc_58 = memref.alloc() : memref<4xf32>
          %291 = memref.load %alloc_22[%c3] : memref<6xi1>
          %292 = arith.cmpi sge, %38, %38 : i16
          %293 = arith.maxf %in_56, %cst_0 : f32
          %alloc_59 = memref.alloc() : memref<14x14xi64>
          %294 = math.roundeven %out : f32
          %295 = math.round %10 : tensor<4xf32>
          %296 = vector.broadcast %38 : i16 to vector<i16>
          %297 = vector.transfer_write %296, %11[%47] : vector<i16>, tensor<4xi16>
          %298 = arith.muli %in, %c1437400375_i64 : i64
          %inserted_60 = tensor.insert %c581854718_i32 into %0[%c2] : tensor<4xi32>
          %299 = vector.broadcast %c581854718_i32 : i32 to vector<14x14xi32>
          %300 = vector.broadcast %c959735039_i32 : i32 to vector<14xi32>
          %dest, %accumulated_value = vector.scan <or>, %299, %300 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi32>, vector<14xi32>
          %301 = math.ctpop %21 : tensor<i32>
          %302 = arith.divf %cst_6, %cst_4 : f16
          %cast_61 = tensor.cast %289 : tensor<5x4xi32> to tensor<?x?xi32>
          %303 = vector.flat_transpose %29 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
          %false = index.bool.constant false
          %alloc_62 = memref.alloc() : memref<5x5xi1>
          %304 = tensor.empty() : tensor<6x5xi1>
          %305 = linalg.matmul ins(%17, %alloc_62 : tensor<6x5xi1>, memref<5x5xi1>) outs(%304 : tensor<6x5xi1>) -> tensor<6x5xi1>
          %306 = math.copysign %out, %cst_0 : f32
          %307 = math.atan %14 : tensor<5x4xf16>
          %308 = vector.broadcast %38 : i16 to vector<14xi16>
          %309 = vector.broadcast %false : i1 to vector<14xi1>
          %310 = vector.maskedload %alloc_16[%c2], %309, %308 : memref<4xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
          %311 = vector.load %alloc_15[%c3] : memref<4xi64>, vector<5x4xi64>
          %312 = math.log1p %cst : f32
          %313 = arith.shli %c1437400375_i64, %c1999358763_i64 : i64
          %314 = arith.maxui %c1999358763_i64, %in : i64
          %315 = arith.cmpi eq, %true, %true_1 : i1
          %316 = arith.shli %true, %true_5 : i1
          %317 = vector.broadcast %true_1 : i1 to vector<6x6xi1>
          %318 = vector.outerproduct %26, %26, %317 {kind = #vector.kind<maxsi>} : vector<6xi1>, vector<6xi1>
          linalg.yield %cst_2 : f32
        } -> tensor<5x4x1xf32>
        %262 = arith.addf %cst_6, %cst_4 : f16
        %rank_49 = tensor.rank %5 : tensor<6x5xi64>
        %inserted_50 = tensor.insert %in into %5[%c4, %c0] : tensor<6x5xi64>
        %263 = math.ctpop %0 : tensor<4xi32>
        %264 = math.log10 %4 : tensor<6x5xf32>
        %c298686767_i64 = arith.constant 298686767 : i64
        %265 = arith.maxf %cst, %cst_2 : f32
        %266 = affine.for %arg1 = 0 to 13 iter_args(%arg2 = %c0) -> (index) {
          affine.yield %c9 : index
        }
        %267 = tensor.empty() : tensor<14x14xi1>
        %268 = linalg.matmul ins(%12, %12 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%267 : tensor<14x14xi1>) -> tensor<14x14xi1>
        %269 = math.absf %cst_0 : f32
        %270 = math.log1p %cst_4 : f16
        %c1225657830_i32 = arith.constant 1225657830 : i32
        %271 = arith.floordivsi %c1693094076_i32, %c959735039_i32 : i32
        %272 = math.cttz %c1693094076_i32 : i32
        %273 = bufferization.to_tensor %alloc_16 : memref<4xi16>
        %274 = arith.remsi %in, %in_48 : i64
        affine.store %c1999358763_i64, %alloc_15[%c4] : memref<4xi64>
        %inserted_51 = tensor.insert %c1693094076_i32 into %6[%c4, %c10] : tensor<14x14xi32>
        %expanded_52 = tensor.expand_shape %11 [[0, 1]] : tensor<4xi16> into tensor<4x1xi16>
        %275 = arith.addf %cst_3, %cst_2 : f32
        %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<5x4x1xf32>) {
        ^bb0(%out: f32):
          %285 = math.exp %40 : tensor<4xf16>
          %286 = math.log1p %cst_0 : f32
          %287 = vector.reduction <maxf>, %25 : vector<6xf32> into f32
          %288 = arith.floordivsi %c1091576647_i64, %in_48 : i64
          %289 = arith.shrsi %c1999358763_i64, %in_48 : i64
          %290 = math.absf %15 : tensor<5x4xf32>
          %291 = math.fpowi %cst, %c959735039_i32 : f32, i32
          %292 = math.tan %cst_3 : f32
          %cast_56 = tensor.cast %2 : tensor<6x5xi64> to tensor<?x?xi64>
          %293 = arith.remf %cst, %cst : f32
          %cast_57 = tensor.cast %7 : tensor<14x14xi64> to tensor<?x?xi64>
          %294 = vector.splat %true_1 : vector<5x4xi1>
          %295 = arith.minsi %c581854718_i32, %c959735039_i32 : i32
          %296 = math.exp %15 : tensor<5x4xf32>
          %297 = math.expm1 %15 : tensor<5x4xf32>
          %298 = arith.remf %out, %cst_0 : f32
          %299 = arith.cmpi uge, %c600853247_i64, %c1999358763_i64 : i64
          %300 = index.maxu %c11, %c6
          %alloca_58 = memref.alloca() : memref<14x14xf32>
          %301 = arith.floordivsi %in, %c1437400375_i64 : i64
          %302 = arith.ori %c1693094076_i32, %c581854718_i32 : i32
          %303 = math.cttz %52 : tensor<6x5xi64>
          %304 = vector.splat %c4 : vector<5x4xindex>
          %305 = tensor.empty() : tensor<6x4xi64>
          %306 = linalg.matmul ins(%5, %13 : tensor<6x5xi64>, tensor<5x4xi64>) outs(%305 : tensor<6x4xi64>) -> tensor<6x4xi64>
          %307 = arith.addi %c1999358763_i64, %c1091576647_i64 : i64
          %308 = index.mul %c12, %c8
          %309 = math.cos %cst_4 : f16
          %310 = arith.negf %cst_3 : f32
          affine.store %cst_6, %alloc_19[%c11] : memref<4xf16>
          memref.assume_alignment %alloc_17, 8 : memref<6x5xi16>
          %311 = vector.load %alloc_11[%c0, %c1] : memref<6x5xi16>, vector<4xi16>
          %312 = index.ceildivu %c4, %c5
          linalg.yield %cst_2 : f32
        } -> tensor<5x4x1xf32>
        %277 = vector.transpose %30, [0] : vector<5xi1> to vector<5xi1>
        %278 = vector.flat_transpose %25 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
        %279 = arith.remui %c1693094076_i32, %c1693094076_i32 : i32
        %rank_53 = tensor.rank %13 : tensor<5x4xi64>
        %280 = math.expm1 %4 : tensor<6x5xf32>
        %alloc_54 = memref.alloc() : memref<4xi32>
        %281 = affine.apply affine_map<(d0) -> ((d0 * 32) mod 64)>(%c4)
        %282 = math.atan2 %cst_0, %cst_3 : f32
        %283 = index.sub %c5, %28
        %284 = math.roundeven %4 : tensor<6x5xf32>
        %c0_i64_55 = arith.constant 0 : i64
        linalg.yield %c0_i64_55 : i64
      }
    %53 = affine.apply affine_map<(d0) -> ((d0 floordiv 4) floordiv 16 - 24)>(%c6)
    %54 = vector.insertelement %cst_4, %19[%c14 : index] : vector<6xf16>
    %55 = math.roundeven %cst_0 : f32
    %56 = index.sub %c13, %c5
    %57 = vector.matrix_multiply %30, %30 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
    %58 = vector.insert %true, %26 [4] : i1 into vector<6xi1>
    %59 = math.ctpop %0 : tensor<4xi32>
    %60 = scf.execute_region -> index {
      %261 = math.log10 %14 : tensor<5x4xf16>
      %262 = arith.ori %c1693094076_i32, %c581854718_i32 : i32
      %263 = vector.matrix_multiply %33, %33 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi16>, vector<6xi16>) -> vector<1xi16>
      %264 = arith.minsi %c581854718_i32, %c581854718_i32 : i32
      %265 = bufferization.to_tensor %alloc_13 : memref<5x4xi16>
      %266 = vector.bitcast %263 : vector<1xi16> to vector<1xi16>
      %cast_48 = tensor.cast %10 : tensor<4xf32> to tensor<?xf32>
      %267 = arith.addf %cst_6, %cst_4 : f16
      %268 = vector.broadcast %c1437400375_i64 : i64 to vector<6x5xi64>
      %269 = vector.broadcast %c1091576647_i64 : i64 to vector<6xi64>
      %dest, %accumulated_value = vector.scan <xor>, %268, %269 {inclusive = false, reduction_dim = 1 : i64} : vector<6x5xi64>, vector<6xi64>
      %270 = arith.floordivsi %c581854718_i32, %c1693094076_i32 : i32
      %alloc_49 = memref.alloc() : memref<4xi32>
      %271 = scf.if %true_1 -> (f16) {
        %275 = vector.transpose %25, [0] : vector<6xf32> to vector<6xf32>
        %276 = arith.addf %cst, %cst_2 : f32
        %277 = index.add %c0, %c1
        %278 = arith.addi %c1091576647_i64, %c1437400375_i64 : i64
        %279 = math.log2 %10 : tensor<4xf32>
        %280 = index.add %c6, %53
        memref.copy %alloc_9, %alloc_16 : memref<4xi16> to memref<4xi16>
        %281 = arith.addf %cst, %cst : f32
        scf.yield %cst_4 : f16
      } else {
        %275 = vector.transpose %57, [0] : vector<1xi1> to vector<1xi1>
        %276 = arith.remf %cst_4, %cst_6 : f16
        %277 = vector.splat %cst_3 : vector<6x5xf32>
        %278 = math.log1p %10 : tensor<4xf32>
        %279 = arith.divf %cst_4, %cst_6 : f16
        %280 = tensor.empty() : tensor<6x4xf16>
        %281 = linalg.matmul ins(%9, %14 : tensor<6x5xf16>, tensor<5x4xf16>) outs(%280 : tensor<6x4xf16>) -> tensor<6x4xf16>
        %alloc_52 = memref.alloc() : memref<14x14xf16>
        memref.copy %alloc_18, %alloc_52 : memref<14x14xf16> to memref<14x14xf16>
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %263, %266, %38 : vector<1xi16>, vector<1xi16> into i16
        scf.yield %cst_6 : f16
      }
      %272 = tensor.empty() : tensor<5x4xf16>
      %mapped_50 = linalg.map ins(%14, %14 : tensor<5x4xf16>, tensor<5x4xf16>) outs(%272 : tensor<5x4xf16>)
        (%in: f16, %in_52: f16) {
          %275 = bufferization.clone %alloc_10 : memref<4xf32> to memref<4xf32>
          %276 = index.divu %47, %c3
          %277 = vector.shuffle %263, %33 [0, 4, 6] : vector<1xi16>, vector<6xi16>
          memref.store %cst_0, %alloc_21[%c8, %c11] : memref<14x14xf32>
          %278 = vector.extract %30[1] : vector<5xi1>
          %279 = math.rsqrt %9 : tensor<6x5xf16>
          %280 = affine.apply affine_map<(d0, d1, d2, d3) -> (((d3 * 2) ceildiv 32) mod 4)>(%c11, %47, %c12, %276)
          %281 = math.exp2 %10 : tensor<4xf32>
          %282 = vector.extract %33[3] : vector<6xi16>
          %283 = vector.broadcast %true : i1 to vector<i1>
          %284 = vector.transfer_write %283, %8[%c10, %c7] : vector<i1>, tensor<6x5xi1>
          %285 = index.casts %c959735039_i32 : i32 to index
          %286 = math.cttz %7 : tensor<14x14xi64>
          %287 = arith.divf %271, %in : f16
          %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %25, %25, %cst : vector<6xf32>, vector<6xf32> into f32
          %289 = index.maxs %c9, %c1
          %rank_53 = tensor.rank %11 : tensor<4xi16>
          %290 = math.copysign %in, %in_52 : f16
          %inserted_54 = tensor.insert %c1693094076_i32 into %21[] : tensor<i32>
          %291 = bufferization.clone %alloc_17 : memref<6x5xi16> to memref<6x5xi16>
          %292 = bufferization.clone %alloc_18 : memref<14x14xf16> to memref<14x14xf16>
          %293 = math.exp2 %cst_0 : f32
          %294 = vector.broadcast %cst_3 : f32 to vector<5x4xf32>
          %295 = vector.fma %294, %294, %294 : vector<5x4xf32>
          %296 = math.ipowi %5, %2 : tensor<6x5xi64>
          %297 = arith.divsi %true_1, %true_5 : i1
          %298 = vector.broadcast %cst_3 : f32 to vector<4xf32>
          %299 = vector.broadcast %true_5 : i1 to vector<4xi1>
          %300 = vector.maskedload %49[%c13, %c8], %299, %298 : memref<14x14xf32>, vector<4xi1>, vector<4xf32> into vector<4xf32>
          %cst_55 = arith.constant 0x4E053EB3 : f32
          %301 = arith.divf %cst_0, %cst_0 : f32
          %302 = vector.multi_reduction <minf>, %19, %19 [] : vector<6xf16> to vector<6xf16>
          %303 = arith.floordivsi %c1437400375_i64, %c600853247_i64 : i64
          %304 = math.rsqrt %cst_4 : f16
          %305 = vector.broadcast %true_1 : i1 to vector<14xi1>
          %306 = vector.maskedload %alloc_8[%c5, %c1], %305, %305 : memref<6x5xi1>, vector<14xi1>, vector<14xi1> into vector<14xi1>
          %307 = vector.maskedload %alloc_20[%c0, %c2], %30, %31 : memref<6x5xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
          %cst_56 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_56 : f16
        }
      %273 = tensor.empty() : tensor<6x5xi1>
      %mapped_51 = linalg.map ins(%16 : tensor<6x5xi1>) outs(%273 : tensor<6x5xi1>)
        (%in: i1) {
          %275 = vector.broadcast %38 : i16 to vector<5xi16>
          %276 = vector.maskedload %alloc_16[%c2], %30, %275 : memref<4xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
          %277 = index.casts %c1 : index to i32
          %278 = index.add %c12, %c12
          %279 = arith.maxui %c1999358763_i64, %c1437400375_i64 : i64
          %280 = index.ceildivu %28, %c4
          %281 = math.cttz %12 : tensor<14x14xi1>
          %c-26413_i16 = arith.constant -26413 : i16
          %282 = arith.maxui %in, %true : i1
          %283 = index.add %c5, %c15
          %284 = vector.splat %c1091576647_i64 : vector<5x4xi64>
          %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %26, %26, %true_5 : vector<6xi1>, vector<6xi1> into i1
          %286 = arith.floordivsi %true_1, %true_5 : i1
          %287 = math.roundeven %cst_4 : f16
          %288 = vector.shuffle %30, %26 [3, 5, 6, 7, 8] : vector<5xi1>, vector<6xi1>
          %289 = arith.andi %c1693094076_i32, %c959735039_i32 : i32
          %false = index.bool.constant false
          %290 = index.divu %c2, %283
          %291 = math.copysign %10, %10 : tensor<4xf32>
          %292 = math.tanh %10 : tensor<4xf32>
          affine.store %cst_0, %alloc_10[%c13] : memref<4xf32>
          %293 = arith.minsi %c959735039_i32, %c581854718_i32 : i32
          %294 = math.log1p %40 : tensor<4xf16>
          %295 = math.exp %14 : tensor<5x4xf16>
          %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %263, %266, %38 : vector<1xi16>, vector<1xi16> into i16
          %297 = arith.addi %c1091576647_i64, %c1437400375_i64 : i64
          %298 = math.log2 %4 : tensor<6x5xf32>
          %299 = arith.remf %cst_6, %cst_6 : f16
          %splat_52 = tensor.splat %cst : tensor<5x4xf32>
          %rank_53 = tensor.rank %transposed : tensor<14x14xi64>
          %300 = math.tan %14 : tensor<5x4xf16>
          %301 = math.cttz %12 : tensor<14x14xi1>
          %302 = index.ceildivu %c2, %c11
          %true_54 = arith.constant true
          linalg.yield %true_54 : i1
        }
      memref.alloca_scope  {
        %275 = arith.muli %c600853247_i64, %c1437400375_i64 : i64
        %276 = arith.cmpi ult, %true_5, %true : i1
        %277 = math.rsqrt %14 : tensor<5x4xf16>
        %alloca_52 = memref.alloca() : memref<6x5xf32>
        %alloc_53 = memref.alloc() : memref<4xi16>
        %278 = bufferization.to_tensor %alloc_13 : memref<5x4xi16>
        %279 = math.log %9 : tensor<6x5xf16>
        %280 = math.log %4 : tensor<6x5xf32>
        %281 = arith.ori %c600853247_i64, %c1437400375_i64 : i64
        %282 = math.atan2 %271, %cst_6 : f16
        affine.store %c600853247_i64, %alloc_15[%c7] : memref<4xi64>
        %283 = math.ceil %40 : tensor<4xf16>
        %284 = arith.remf %cst_4, %271 : f16
        %false = arith.constant false
        %285 = math.cos %cst_2 : f32
        %286 = vector.reduction <minf>, %27 : vector<6xf32> into f32
        %287 = vector.load %alloc_8[%c1, %c3] : memref<6x5xi1>, vector<4xi1>
        %288 = vector.broadcast %true_5 : i1 to vector<5x5xi1>
        %289 = vector.outerproduct %30, %30, %288 {kind = #vector.kind<and>} : vector<5xi1>, vector<5xi1>
        %290 = index.mul %c9, %c3
        %291 = arith.remf %cst_6, %271 : f16
        %292 = arith.cmpi ugt, %c1437400375_i64, %c600853247_i64 : i64
        %293 = index.add %c15, %c12
        %294 = vector.insertelement %38, %266[%c6 : index] : vector<1xi16>
        %295 = index.mul %c5, %c12
        %true_54 = index.bool.constant true
        %296 = vector.broadcast %cst_2 : f32 to vector<6x6xf32>
        %297 = vector.outerproduct %25, %27, %296 {kind = #vector.kind<maxf>} : vector<6xf32>, vector<6xf32>
        %298 = vector.load %alloc_14[%c2] : memref<4xi64>, vector<5x4xi64>
        %299 = math.tan %cst : f32
        affine.store %cst, %49[%c4, %c10] : memref<14x14xf32>
        %alloc_55 = memref.alloc() : memref<4xf32>
        %300 = arith.subi %c600853247_i64, %c1999358763_i64 : i64
        %301 = vector.broadcast %38 : i16 to vector<i16>
        %302 = vector.transfer_write %301, %11[%c2] : vector<i16>, tensor<4xi16>
      }
      %274 = index.sub %28, %c2
      scf.yield %c1 : index
    }
    %61 = math.absi %52 : tensor<6x5xi64>
    %true_26 = arith.constant true
    %62 = tensor.empty() : tensor<6x5xi32>
    %63 = math.fpowi %9, %62 : tensor<6x5xf16>, tensor<6x5xi32>
    %64 = math.tan %14 : tensor<5x4xf16>
    %65 = arith.cmpi slt, %c600853247_i64, %c1999358763_i64 : i64
    %66 = index.maxs %c3, %c15
    %67 = math.round %15 : tensor<5x4xf32>
    %68 = arith.ori %c1693094076_i32, %c1693094076_i32 : i32
    %cast = tensor.cast %10 : tensor<4xf32> to tensor<?xf32>
    %69 = vector.broadcast %38 : i16 to vector<14xi16>
    %70 = vector.broadcast %true_5 : i1 to vector<14xi1>
    %71 = vector.maskedload %alloc_11[%c4, %c0], %70, %69 : memref<6x5xi16>, vector<14xi1>, vector<14xi16> into vector<14xi16>
    %72 = vector.splat %c14 : vector<5x4xindex>
    %inserted = tensor.insert %true into %16[%c1, %c4] : tensor<6x5xi1>
    %73 = arith.divui %c581854718_i32, %c959735039_i32 : i32
    %cast_27 = tensor.cast %62 : tensor<6x5xi32> to tensor<?x?xi32>
    %alloca = memref.alloca() : memref<4xf16>
    %74 = memref.atomic_rmw andi %c600853247_i64, %alloc_15[%c3] : (i64, memref<4xi64>) -> i64
    %75 = index.castu %true_5 : i1 to index
    %76 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%10 : tensor<4xf32>) outs(%expanded : tensor<5x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %261 = arith.addi %c600853247_i64, %c1437400375_i64 : i64
      %262 = math.ipowi %c1693094076_i32, %c1693094076_i32 : i32
      %generated_48 = tensor.generate %c13 {
      ^bb0(%arg1: index):
        %293 = math.sqrt %9 : tensor<6x5xf16>
        %294 = tensor.empty() : tensor<6x4xi64>
        %295 = linalg.matmul ins(%5, %13 : tensor<6x5xi64>, tensor<5x4xi64>) outs(%294 : tensor<6x4xi64>) -> tensor<6x4xi64>
        %splat_50 = tensor.splat %cst : tensor<6x5xf32>
        %296 = index.sub %56, %c9
        tensor.yield %c1693094076_i32 : i32
      } : tensor<?xi32>
      %263 = math.exp2 %4 : tensor<6x5xf32>
      %264 = math.log1p %10 : tensor<4xf32>
      %265 = index.add %c8, %c7
      %266 = arith.addi %c1091576647_i64, %c1437400375_i64 : i64
      %267 = arith.remf %cst_0, %cst_3 : f32
      %268 = math.tan %15 : tensor<5x4xf32>
      %269 = vector.transpose %27, [0] : vector<6xf32> to vector<6xf32>
      %270 = vector.multi_reduction <minui>, %57, %true [0] : vector<1xi1> to i1
      %expanded_49 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<14x14xi64> into tensor<14x14x1xi64>
      %271 = vector.bitcast %70 : vector<14xi1> to vector<14xi1>
      %272 = tensor.empty() : tensor<1x5x4xf32>
      %273 = tensor.empty() : tensor<5xf32>
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%272, %273, %expanded : tensor<1x5x4xf32>, tensor<5xf32>, tensor<5x4x1xf32>) outs(%expanded : tensor<5x4x1xf32>) {
      ^bb0(%in_50: f32, %in_51: f32, %in_52: f32, %out_53: f32):
        %inserted_54 = tensor.insert %true into %16[%c4, %c3] : tensor<6x5xi1>
        %293 = index.ceildivu %47, %c3
        %294 = math.log1p %expanded : tensor<5x4x1xf32>
        %alloc_55 = memref.alloc() : memref<4xi1>
        %295 = bufferization.clone %alloc_23 : memref<4xi32> to memref<4xi32>
        %expanded_56 = tensor.expand_shape %11 [[0, 1]] : tensor<4xi16> into tensor<4x1xi16>
        %296 = arith.divf %in, %out_53 : f32
        %297 = arith.addi %true_1, %true_1 : i1
        %298 = math.copysign %cst_2, %in : f32
        %299 = memref.load %49[%c1, %c8] : memref<14x14xf32>
        %300 = math.copysign %in, %cst_2 : f32
        %301 = bufferization.clone %alloc_16 : memref<4xi16> to memref<4xi16>
        %302 = math.cttz %3 : tensor<14x14xi32>
        %303 = vector.bitcast %271 : vector<14xi1> to vector<14xi1>
        %304 = index.casts %c12 : index to i32
        %305 = vector.bitcast %30 : vector<5xi1> to vector<5xi1>
        %306 = math.cos %cst_4 : f16
        %307 = vector.insertelement %c1437400375_i64, %29[%c3 : index] : vector<5xi64>
        affine.store %c1091576647_i64, %alloc_15[%c13] : memref<4xi64>
        %308 = arith.xori %c1693094076_i32, %c959735039_i32 : i32
        memref.copy %alloc_8, %alloc_12 : memref<6x5xi1> to memref<6x5xi1>
        %309 = vector.transpose %271, [0] : vector<14xi1> to vector<14xi1>
        %from_elements_57 = tensor.from_elements %cst_4, %cst_6, %cst_4, %cst_6, %cst_4, %cst_6, %cst_4, %cst_6, %cst_6, %cst_6, %cst_6, %cst_4, %cst_6, %cst_6, %cst_6, %cst_4, %cst_6, %cst_6, %cst_6, %cst_6, %cst_6, %cst_6, %cst_6, %cst_6, %cst_4, %cst_6, %cst_4, %cst_6, %cst_6, %cst_4 : tensor<6x5xf16>
        %310 = vector.bitcast %271 : vector<14xi1> to vector<14xi1>
        %311 = arith.minsi %c1091576647_i64, %c1999358763_i64 : i64
        %cst_58 = arith.constant 1.000000e+00 : f32
        %cst_59 = arith.constant 0.000000e+00 : f32
        %312 = vector.transfer_read %4[%c5, %75], %cst_59 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<6x5xf32>, vector<4xf32>
        %313 = bufferization.clone %alloc_10 : memref<4xf32> to memref<4xf32>
        %314 = arith.shli %true_1, %true_5 : i1
        %315 = bufferization.clone %alloc_12 : memref<6x5xi1> to memref<6x5xi1>
        %316 = bufferization.to_tensor %alloc_13 : memref<5x4xi16>
        %317 = index.casts %56 : index to i32
        memref.copy %313, %alloc_10 : memref<4xf32> to memref<4xf32>
        linalg.yield %cst_58 : f32
      } -> tensor<5x4x1xf32>
      %false = index.bool.constant false
      %275 = arith.shli %true, %true_1 : i1
      %276 = vector.matrix_multiply %29, %31 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
      %277 = affine.for %arg1 = 0 to 124 iter_args(%arg2 = %13) -> (tensor<5x4xi64>) {
        affine.yield %13 : tensor<5x4xi64>
      }
      %278 = memref.realloc %alloc_22 : memref<6xi1> to memref<5xi1>
      %279 = arith.divf %in, %cst : f32
      %280 = arith.remf %out, %cst_2 : f32
      %281 = bufferization.to_memref %18 : memref<14x14xi64>
      %282 = math.round %cst : f32
      %283 = memref.realloc %alloc_19 : memref<4xf16> to memref<4xf16>
      %284 = memref.alloca_scope  -> (i64) {
        %293 = arith.divsi %c1999358763_i64, %c1999358763_i64 : i64
        %294 = vector.insertelement %true_1, %57[%c6 : index] : vector<1xi1>
        %295 = index.maxu %265, %c8
        %296 = memref.atomic_rmw mulf %cst_4, %alloc_19[%c2] : (f16, memref<4xf16>) -> f16
        %expanded_50 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<14x14xi32> into tensor<14x14x1xi32>
        %297 = arith.minui %false, %270 : i1
        %false_51 = index.bool.constant false
        %cast_52 = tensor.cast %40 : tensor<4xf16> to tensor<?xf16>
        %298 = arith.minui %c1999358763_i64, %c1437400375_i64 : i64
        %299 = vector.broadcast %c1999358763_i64 : i64 to vector<1x1xi64>
        %300 = vector.outerproduct %276, %276, %299 {kind = #vector.kind<minui>} : vector<1xi64>, vector<1xi64>
        %rank_53 = tensor.rank %62 : tensor<6x5xi32>
        %301 = math.exp %cst_6 : f16
        %302 = math.atan2 %cst_6, %cst_6 : f16
        %303 = math.round %cst_3 : f32
        %304 = math.absf %4 : tensor<6x5xf32>
        %305 = index.mul %c9, %c13
        %inserted_54 = tensor.insert %cst_3 into %10[%c3] : tensor<4xf32>
        %306 = vector.splat %38 : vector<6x5xi16>
        %307 = vector.transpose %30, [0] : vector<5xi1> to vector<5xi1>
        %308 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 - d3 mod 32)>(%c5, %c13, %295, %47)
        %309 = tensor.empty() : tensor<5x4xf16>
        %310 = vector.insert %c1437400375_i64, %29 [0] : i64 into vector<5xi64>
        %311 = index.casts %false : i1 to index
        %312 = index.divs %c15, %265
        %313 = index.maxu %c0, %75
        %314 = math.absf %out : f32
        %315 = math.ctpop %c1693094076_i32 : i32
        %316 = arith.minf %cst_0, %cst_2 : f32
        %expanded_55 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<5x4xf16> into tensor<5x4x1xf16>
        %317 = index.add %c5, %c5
        %318 = vector.broadcast %false : i1 to vector<4xi1>
        %319 = vector.transfer_write %318, %17[%308, %28] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi1>, tensor<6x5xi1>
        %320 = index.sub %c2, %c1
        memref.alloca_scope.return %c1091576647_i64 : i64
      }
      %285 = arith.shli %c1999358763_i64, %c1091576647_i64 : i64
      %286 = vector.broadcast %c1437400375_i64 : i64 to vector<5x5xi64>
      %287 = vector.outerproduct %29, %31, %286 {kind = #vector.kind<and>} : vector<5xi64>, vector<5xi64>
      %288 = index.sub %c9, %53
      %289 = vector.bitcast %25 : vector<6xf32> to vector<6xi32>
      %290 = index.divu %c1, %56
      %291 = arith.addf %cst_3, %cst_0 : f32
      %292 = math.roundeven %15 : tensor<5x4xf32>
      linalg.yield %in : f32
    } -> tensor<5x4x1xf32>
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %77 = vector.transfer_read %52[%56, %66], %c0_i64 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<6x5xi64>, vector<4xi64>
    %78 = bufferization.clone %alloc_20 : memref<6x5xi64> to memref<6x5xi64>
    %79 = vector.insert %true_5, %57 [0] : i1 into vector<1xi1>
    %80 = vector.load %alloc_12[%c3, %c2] : memref<6x5xi1>, vector<14x14xi1>
    %81 = index.divu %c12, %60
    %82 = vector.insert %cst, %25 [3] : f32 into vector<6xf32>
    %83 = arith.cmpi sgt, %true_1, %true_5 : i1
    %84 = math.ctlz %12 : tensor<14x14xi1>
    %85 = math.log10 %4 : tensor<6x5xf32>
    %86 = vector.load %alloc_20[%c4, %c0] : memref<6x5xi64>, vector<4xi64>
    %87 = math.tan %cst_2 : f32
    %88 = math.ceil %cst_2 : f32
    %cast_28 = tensor.cast %10 : tensor<4xf32> to tensor<?xf32>
    %89 = math.log %40 : tensor<4xf16>
    %90 = math.log10 %cst_2 : f32
    %91 = math.ceil %cst_6 : f16
    %92 = math.fpowi %cst_6, %c1693094076_i32 : f16, i32
    %93 = math.rsqrt %cst_3 : f32
    %94 = math.ctpop %true_1 : i1
    %95 = arith.remf %cst_0, %cst : f32
    %96 = arith.cmpi uge, %c1999358763_i64, %c1_i64 : i64
    %97 = math.cttz %6 : tensor<14x14xi32>
    %inserted_29 = tensor.insert %cst into %15[%c2, %c2] : tensor<5x4xf32>
    %98 = math.log10 %15 : tensor<5x4xf32>
    %99 = math.cttz %true : i1
    %100 = math.rsqrt %4 : tensor<6x5xf32>
    %101 = math.round %10 : tensor<4xf32>
    memref.assume_alignment %alloc_19, 1 : memref<4xf16>
    %102 = affine.max affine_map<(d0) -> ((d0 + 1) * 3 - d0, ((d0 + 1) * 3) ceildiv 2, (d0 + 1) * 3 - d0, (d0 + 1) * -2 - 8)>(%c13)
    %103 = index.add %66, %c14
    %extracted = tensor.extract %expanded[%c2, %c0, %c0] : tensor<5x4x1xf32>
    %104 = index.add %75, %c9
    %alloca_30 = memref.alloca() : memref<5x4xi32>
    %105 = tensor.empty() : tensor<14x14xi1>
    %mapped_31 = linalg.map ins(%12, %12, %12 : tensor<14x14xi1>, tensor<14x14xi1>, tensor<14x14xi1>) outs(%105 : tensor<14x14xi1>)
      (%in: i1, %in_48: i1, %in_49: i1) {
        %261 = arith.minsi %true_5, %in_48 : i1
        %generated_50 = tensor.generate %102 {
        ^bb0(%arg1: index):
          %290 = math.exp2 %cst_2 : f32
          %291 = index.mul %75, %66
          %292 = math.atan2 %15, %15 : tensor<5x4xf32>
          %293 = bufferization.to_memref %21 : memref<i32>
          tensor.yield %in_48 : i1
        } : tensor<?xi1>
        %262 = vector.reduction <add>, %26 : vector<6xi1> into i1
        %263 = index.maxu %c14, %c7
        %264 = arith.minsi %c581854718_i32, %c959735039_i32 : i32
        %265 = math.tan %4 : tensor<6x5xf32>
        %from_elements_51 = tensor.from_elements %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38 : tensor<14x14xi16>
        %cst_52 = arith.constant 3.641600e+04 : f16
        %266 = tensor.empty() : tensor<14x14xi32>
        %mapped_53 = linalg.map ins(%6 : tensor<14x14xi32>) outs(%266 : tensor<14x14xi32>)
          (%in_57: i32) {
            %false = arith.constant false
            %290 = math.exp2 %cst_6 : f16
            %291 = math.roundeven %40 : tensor<4xf16>
            %292 = vector.shuffle %31, %31 [1, 2, 3, 9] : vector<5xi64>, vector<5xi64>
            %293 = math.ctlz %true_1 : i1
            %294 = vector.extract %25[0] : vector<6xf32>
            %295 = affine.min affine_map<(d0) -> (-((d0 floordiv 2) floordiv 2 - 2), d0 * -4 - ((d0 floordiv 2) floordiv 2 - d0 - 2) + 128, d0 floordiv 2)>(%c11)
            %296 = vector.insert %c600853247_i64, %29 [4] : i64 into vector<5xi64>
            %297 = affine.apply affine_map<(d0, d1, d2) -> (d0 - d2 + d0 + 1)>(%c9, %75, %66)
            %298 = index.casts %true_1 : i1 to index
            %299 = index.sizeof
            %300 = vector.broadcast %cst_6 : f16 to vector<6x6xf16>
            %301 = vector.outerproduct %19, %19, %300 {kind = #vector.kind<maxf>} : vector<6xf16>, vector<6xf16>
            %302 = index.maxu %c11, %c3
            %303 = tensor.empty() : tensor<5x4xi1>
            %304 = tensor.empty() : tensor<6x4xi1>
            %305 = linalg.matmul ins(%8, %303 : tensor<6x5xi1>, tensor<5x4xi1>) outs(%304 : tensor<6x4xi1>) -> tensor<6x4xi1>
            memref.store %true, %alloc_7[%c3, %c0] : memref<5x4xi1>
            %306 = vector.broadcast %extracted : f32 to vector<4xf32>
            %307 = vector.fma %306, %306, %306 : vector<4xf32>
            %308 = memref.atomic_rmw minu %38, %alloc_13[%c2, %c2] : (i16, memref<5x4xi16>) -> i16
            %309 = bufferization.clone %alloc_16 : memref<4xi16> to memref<4xi16>
            %310 = math.ipowi %8, %17 : tensor<6x5xi1>
            %cast_58 = tensor.cast %6 : tensor<14x14xi32> to tensor<?x?xi32>
            %311 = math.atan2 %10, %10 : tensor<4xf32>
            %312 = arith.addi %true, %true_1 : i1
            %313 = arith.cmpi ule, %c1_i64, %c1091576647_i64 : i64
            %314 = arith.minui %c959735039_i32, %c1693094076_i32 : i32
            affine.store %cst_0, %alloc_21[%c7, %c15] : memref<14x14xf32>
            %315 = math.exp2 %40 : tensor<4xf16>
            %316 = index.ceildivu %c15, %299
            %317 = affine.max affine_map<(d0, d1, d2) -> (d0 + d0 + 64 + 132, d0 mod 2, d0 mod 8 + d0 - (d0 + 128) + 64)>(%c12, %c10, %81)
            %318 = bufferization.clone %alloc_15 : memref<4xi64> to memref<4xi64>
            %319 = math.log10 %15 : tensor<5x4xf32>
            %320 = math.rsqrt %cst_3 : f32
            %321 = arith.remf %cst_3, %cst_3 : f32
            %c0_i32 = arith.constant 0 : i32
            linalg.yield %c0_i32 : i32
          }
        %267 = arith.shli %true_1, %in_48 : i1
        %268 = arith.remf %cst_0, %cst : f32
        %c1_i64_54 = arith.constant 1 : i64
        %c0_i64_55 = arith.constant 0 : i64
        %269 = vector.transfer_read %5[%103, %c6], %c0_i64_55 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<6x5xi64>, vector<6xi64>
        %270 = math.sqrt %4 : tensor<6x5xf32>
        %271 = arith.addi %true, %in : i1
        %272 = index.mul %c12, %c6
        %273 = index.maxu %c10, %102
        %274 = tensor.empty() : tensor<4xi64>
        %275 = math.tan %10 : tensor<4xf32>
        %276 = math.absi %52 : tensor<6x5xi64>
        %277 = index.maxu %c9, %c0
        %278 = arith.xori %c1693094076_i32, %c1693094076_i32 : i32
        %279 = arith.xori %true_1, %in_49 : i1
        %280 = arith.floordivsi %true_1, %in_48 : i1
        %281 = math.log2 %10 : tensor<4xf32>
        %282 = bufferization.clone %alloc_14 : memref<4xi64> to memref<4xi64>
        %283 = math.round %expanded : tensor<5x4x1xf32>
        %284 = index.casts %c10 : index to i32
        %285 = index.mul %c0, %c13
        %286 = bufferization.clone %alloc_16 : memref<4xi16> to memref<4xi16>
        %287 = bufferization.clone %alloc_22 : memref<6xi1> to memref<6xi1>
        %288 = vector.extract %57[0] : vector<1xi1>
        %289 = arith.maxf %cst, %cst_0 : f32
        %true_56 = arith.constant true
        linalg.yield %true_56 : i1
      }
    %106 = index.maxs %c5, %56
    %107 = math.round %9 : tensor<6x5xf16>
    %108 = vector.insert %true, %26 [0] : i1 into vector<6xi1>
    %109 = arith.maxui %c581854718_i32, %c581854718_i32 : i32
    %110 = bufferization.clone %alloc_23 : memref<4xi32> to memref<4xi32>
    %111 = math.sqrt %15 : tensor<5x4xf32>
    %112 = tensor.empty() : tensor<5x4xi1>
    %mapped_32 = linalg.map ins(%alloc_7 : memref<5x4xi1>) outs(%112 : tensor<5x4xi1>)
      (%in: i1) {
        %261 = vector.broadcast %cst_0 : f32 to vector<14xf32>
        %262 = vector.maskedload %alloc_10[%c0], %70, %261 : memref<4xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %263 = vector.broadcast %cst : f32 to vector<14x14xf32>
        %264 = vector.outerproduct %262, %261, %263 {kind = #vector.kind<add>} : vector<14xf32>, vector<14xf32>
        %265 = affine.load %alloc_9[%c12] : memref<4xi16>
        %266 = math.log1p %9 : tensor<6x5xf16>
        %267 = vector.bitcast %33 : vector<6xi16> to vector<6xi16>
        %268 = memref.load %alloc_10[%c2] : memref<4xf32>
        %269 = index.mul %c8, %c15
        %270 = arith.remsi %true_1, %true_1 : i1
        %271 = arith.shrsi %true, %true_5 : i1
        %272 = arith.divf %cst_2, %cst_2 : f32
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_48 = arith.constant 0 : i16
        %273 = vector.transfer_read %alloc_9[%47], %c0_i16_48 : memref<4xi16>, vector<i16>
        %274 = arith.xori %c600853247_i64, %c1_i64 : i64
        %275 = index.ceildivu %c11, %66
        %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %86, %86, %c1999358763_i64 : vector<4xi64>, vector<4xi64> into i64
        %from_elements_49 = tensor.from_elements %true, %in, %in, %true_1 : tensor<4xi1>
        %277 = arith.andi %true_5, %true : i1
        %278 = bufferization.clone %alloc_18 : memref<14x14xf16> to memref<14x14xf16>
        %279 = math.exp %9 : tensor<6x5xf16>
        %280 = arith.andi %38, %c0_i16 : i16
        %281 = tensor.empty() : tensor<5x4xi32>
        %282 = math.fpowi %14, %281 : tensor<5x4xf16>, tensor<5x4xi32>
        %283 = vector.flat_transpose %70 {columns = 7 : i32, rows = 2 : i32} : vector<14xi1> -> vector<14xi1>
        %284 = index.ceildivu %c9, %c12
        %285 = index.ceildivu %102, %c4
        %alloc_50 = memref.alloc() : memref<14x14xi64>
        %286 = arith.minui %c1_i64, %c1999358763_i64 : i64
        %287 = bufferization.clone %alloc_9 : memref<4xi16> to memref<4xi16>
        %288 = vector.load %alloc_19[%c1] : memref<4xf16>, vector<6x5xf16>
        %289 = memref.atomic_rmw minf %extracted, %49[%c11, %c4] : (f32, memref<14x14xf32>) -> f32
        %290 = math.round %4 : tensor<6x5xf32>
        %291 = math.fma %9, %9, %9 : tensor<6x5xf16>
        %292 = math.log2 %14 : tensor<5x4xf16>
        %293 = vector.shuffle %69, %71 [0, 1, 3, 4, 5, 7, 9, 10, 12, 16, 17, 20, 23, 26] : vector<14xi16>, vector<14xi16>
        %false = arith.constant false
        linalg.yield %false : i1
      }
    %113 = math.fma %10, %10, %10 : tensor<4xf32>
    %114 = vector.broadcast %cst_4 : f16 to vector<14xf16>
    %115 = vector.maskedload %alloc_19[%c0], %70, %114 : memref<4xf16>, vector<14xi1>, vector<14xf16> into vector<14xf16>
    %116 = bufferization.to_tensor %alloc_9 : memref<4xi16>
    %117 = memref.atomic_rmw maxs %c1693094076_i32, %alloc_23[%c1] : (i32, memref<4xi32>) -> i32
    %118 = arith.remui %c959735039_i32, %c581854718_i32 : i32
    %cast_33 = tensor.cast %7 : tensor<14x14xi64> to tensor<?x?xi64>
    %119 = math.copysign %15, %15 : tensor<5x4xf32>
    %120 = memref.atomic_rmw minf %cst_0, %alloc_10[%c0] : (f32, memref<4xf32>) -> f32
    %splat = tensor.splat %c959735039_i32 : tensor<14x14xi32>
    scf.execute_region {
      %261 = bufferization.clone %alloc_18 : memref<14x14xf16> to memref<14x14xf16>
      %262 = vector.extract %80[12] : vector<14x14xi1>
      %263 = memref.load %alloc_9[%c0] : memref<4xi16>
      %264 = vector.transpose %31, [0] : vector<5xi64> to vector<5xi64>
      affine.for %arg1 = 0 to 48 {
      }
      %265 = arith.remf %cst, %cst_3 : f32
      %266 = arith.shrsi %c959735039_i32, %c581854718_i32 : i32
      %267 = bufferization.clone %alloc_12 : memref<6x5xi1> to memref<6x5xi1>
      %268 = arith.addi %c1693094076_i32, %c581854718_i32 : i32
      %269 = vector.broadcast %cst_6 : f16 to vector<4xf16>
      %270 = vector.broadcast %true : i1 to vector<4xi1>
      %271 = vector.maskedload %alloc_18[%c4, %c7], %270, %269 : memref<14x14xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
      %272 = tensor.empty() : tensor<14x14xi64>
      %273 = linalg.matmul ins(%7, %18 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%272 : tensor<14x14xi64>) -> tensor<14x14xi64>
      %274 = index.maxs %28, %28
      %275 = vector.broadcast %true_5 : i1 to vector<5x5xi1>
      %276 = vector.outerproduct %30, %30, %275 {kind = #vector.kind<or>} : vector<5xi1>, vector<5xi1>
      %277 = vector.broadcast %cst_6 : f16 to vector<5x4xf16>
      %278 = vector.matrix_multiply %26, %70 {lhs_columns = 2 : i32, lhs_rows = 3 : i32, rhs_columns = 7 : i32} : (vector<6xi1>, vector<14xi1>) -> vector<21xi1>
      %279 = index.ceildivu %c15, %53
      scf.yield
    }
    %121 = vector.matrix_multiply %31, %86 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 4 : i32} : (vector<5xi64>, vector<4xi64>) -> vector<20xi64>
    %122 = memref.atomic_rmw addf %cst_6, %alloc_18[%c4, %c11] : (f16, memref<14x14xf16>) -> f16
    %123 = index.ceildivu %c12, %81
    %124 = arith.andi %c959735039_i32, %c959735039_i32 : i32
    %125 = tensor.empty() : tensor<6x4xi1>
    %126 = linalg.matmul ins(%8, %112 : tensor<6x5xi1>, tensor<5x4xi1>) outs(%125 : tensor<6x4xi1>) -> tensor<6x4xi1>
    %127 = arith.addf %cst_6, %cst_4 : f16
    %from_elements = tensor.from_elements %true_5, %true_5, %true, %true_5 : tensor<4xi1>
    %rank = tensor.rank %transposed : tensor<14x14xi64>
    %128 = arith.divui %c1693094076_i32, %c959735039_i32 : i32
    %generated = tensor.generate %123 {
    ^bb0(%arg1: index):
      %261 = index.ceildivs %c12, %103
      memref.tensor_store %10, %alloc_10 : memref<4xf32>
      %262 = vector.broadcast %c5 : index to vector<14xindex>
      %263 = vector.broadcast %cst_0 : f32 to vector<14xf32>
      vector.scatter %49[%c11, %c11] [%262], %70, %263 : memref<14x14xf32>, vector<14xindex>, vector<14xi1>, vector<14xf32>
      %264 = tensor.empty() : tensor<6x5xi16>
      tensor.yield %c1_i64 : i64
    } : tensor<?xi64>
    %129 = tensor.empty() : tensor<6x5xi64>
    %130 = vector.multi_reduction <add>, %70, %70 [] : vector<14xi1> to vector<14xi1>
    %131 = index.sizeof
    %132 = index.ceildivs %c8, %103
    %133 = vector.splat %c9 : vector<14x14xindex>
    %134 = vector.bitcast %27 : vector<6xf32> to vector<6xf32>
    %135 = math.absf %9 : tensor<6x5xf16>
    %136 = vector.broadcast %true_1 : i1 to vector<i1>
    %137 = vector.transfer_write %136, %17[%c0, %28] : vector<i1>, tensor<6x5xi1>
    %138 = index.add %123, %c13
    %139 = vector.broadcast %38 : i16 to vector<14x14xi16>
    %140 = vector.outerproduct %69, %69, %139 {kind = #vector.kind<xor>} : vector<14xi16>, vector<14xi16>
    %141 = index.divu %c14, %c0
    %142 = bufferization.clone %alloc_23 : memref<4xi32> to memref<4xi32>
    %143 = vector.matrix_multiply %134, %25 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf32>, vector<6xf32>) -> vector<1xf32>
    %144 = arith.muli %c1091576647_i64, %c600853247_i64 : i64
    %145 = arith.remf %cst_2, %cst_3 : f32
    %146 = vector.bitcast %19 : vector<6xf16> to vector<6xf16>
    %147 = math.copysign %14, %14 : tensor<5x4xf16>
    %148 = arith.floordivsi %c959735039_i32, %c1693094076_i32 : i32
    %149 = math.log2 %4 : tensor<6x5xf32>
    %150 = math.cos %4 : tensor<6x5xf32>
    %151 = arith.maxsi %true_5, %true_1 : i1
    %true_34 = arith.constant true
    %152 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%15 : tensor<5x4xf32>) outs(%expanded : tensor<5x4x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %splat_48 = tensor.splat %cst_3 : tensor<14x14xf32>
      %extracted_49 = tensor.extract %62[%c1, %c2] : tensor<6x5xi32>
      %inserted_50 = tensor.insert %extracted into %expanded[%c1, %c2, %c0] : tensor<5x4x1xf32>
      %extracted_51 = tensor.extract %12[%c8, %c6] : tensor<14x14xi1>
      %261 = math.tan %4 : tensor<6x5xf32>
      %262 = bufferization.clone %alloc_8 : memref<6x5xi1> to memref<6x5xi1>
      %263 = bufferization.clone %alloc_22 : memref<6xi1> to memref<6xi1>
      %264 = bufferization.to_tensor %alloc_21 : memref<14x14xf32>
      vector.print %71 : vector<14xi16>
      %265 = vector.load %alloc_12[%c0, %c1] : memref<6x5xi1>, vector<6x5xi1>
      %266 = vector.broadcast %extracted : f32 to vector<14xf32>
      %267 = vector.maskedload %alloc_21[%c3, %c1], %70, %266 : memref<14x14xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
      %268 = arith.addi %true_5, %true : i1
      %269 = vector.matrix_multiply %70, %30 {lhs_columns = 1 : i32, lhs_rows = 14 : i32, rhs_columns = 5 : i32} : (vector<14xi1>, vector<5xi1>) -> vector<70xi1>
      %270 = math.log2 %264 : tensor<14x14xf32>
      %271 = arith.shrsi %true, %extracted_51 : i1
      %272 = vector.bitcast %265 : vector<6x5xi1> to vector<6x5xi1>
      %273 = tensor.empty() : tensor<14x14xf32>
      %274 = linalg.matmul ins(%splat_48, %264 : tensor<14x14xf32>, tensor<14x14xf32>) outs(%273 : tensor<14x14xf32>) -> tensor<14x14xf32>
      %275 = vector.splat %c12 : vector<14x14xindex>
      %276 = arith.addf %cst_6, %cst_4 : f16
      %splat_52 = tensor.splat %cst_0 : tensor<6x5xf32>
      %277 = math.exp %4 : tensor<6x5xf32>
      %278 = vector.insertelement %extracted_51, %26[%131 : index] : vector<6xi1>
      %279 = math.roundeven %cst_2 : f32
      %280 = math.log1p %out : f32
      %281 = math.roundeven %cst_4 : f16
      %282 = math.expm1 %15 : tensor<5x4xf32>
      %283 = index.casts %true_5 : i1 to index
      %284 = arith.ori %38, %38 : i16
      %285 = index.mul %131, %c7
      %286 = math.tan %cst_3 : f32
      %287 = vector.bitcast %30 : vector<5xi1> to vector<5xi1>
      %288 = math.ceil %out : f32
      linalg.yield %out : f32
    } -> tensor<5x4x1xf32>
    %153 = arith.xori %c1437400375_i64, %c1_i64 : i64
    %154 = math.cttz %1 : tensor<4xi1>
    %from_elements_35 = tensor.from_elements %38, %38, %38, %38 : tensor<4xi16>
    %155 = math.round %15 : tensor<5x4xf32>
    %156 = arith.minf %cst_3, %cst_2 : f32
    %157 = index.add %106, %c0
    %generated_36 = tensor.generate %c2 {
    ^bb0(%arg1: index, %arg2: index):
      %261 = affine.for %arg3 = 0 to 17 iter_args(%arg4 = %c581854718_i32) -> (i32) {
        affine.yield %c1693094076_i32 : i32
      }
      %262 = arith.shrsi %c1_i64, %c1091576647_i64 : i64
      %263 = vector.multi_reduction <xor>, %26, %26 [] : vector<6xi1> to vector<6xi1>
      %264 = tensor.empty() : tensor<4xi64>
      %mapped_48 = linalg.map ins(%alloc_15 : memref<4xi64>) outs(%264 : tensor<4xi64>)
        (%in: i64) {
          %alloc_49 = memref.alloc() : memref<i32>
          memref.tensor_store %20, %alloc_49 : memref<i32>
          %265 = vector.multi_reduction <minui>, %70, %true [0] : vector<14xi1> to i1
          %266 = affine.apply affine_map<(d0) -> (d0)>(%157)
          %267 = math.powf %4, %4 : tensor<6x5xf32>
          %268 = bufferization.clone %110 : memref<4xi32> to memref<4xi32>
          %269 = affine.min affine_map<(d0, d1, d2) -> (d0)>(%28, %c7, %c3)
          %270 = vector.extract_strided_slice %86 {offsets = [2], sizes = [2], strides = [1]} : vector<4xi64> to vector<2xi64>
          %271 = math.round %cst_6 : f16
          %272 = bufferization.clone %alloc_20 : memref<6x5xi64> to memref<6x5xi64>
          %273 = vector.splat %c600853247_i64 : vector<5x4xi64>
          %274 = arith.minsi %265, %265 : i1
          %275 = tensor.empty() : tensor<4xi32>
          %276 = index.maxs %c9, %138
          %277 = math.ctpop %265 : i1
          %278 = memref.atomic_rmw muli %38, %alloc_13[%c1, %c2] : (i16, memref<5x4xi16>) -> i16
          %279 = math.ctpop %265 : i1
          %280 = index.mul %c2, %c8
          %281 = affine.min affine_map<(d0, d1) -> (d1 mod 8, d1 ceildiv 128 - (d1 ceildiv 128 - d0), d1 mod 8 - 32)>(%269, %c2)
          %282 = math.log1p %cst : f32
          %283 = arith.remf %cst_6, %cst_4 : f16
          %284 = vector.matrix_multiply %114, %19 {lhs_columns = 2 : i32, lhs_rows = 7 : i32, rhs_columns = 3 : i32} : (vector<14xf16>, vector<6xf16>) -> vector<21xf16>
          %285 = math.log %cst_6 : f16
          %286 = math.roundeven %9 : tensor<6x5xf16>
          %287 = bufferization.clone %272 : memref<6x5xi64> to memref<6x5xi64>
          %288 = math.log1p %4 : tensor<6x5xf32>
          %289 = memref.load %alloc_12[%c5, %c4] : memref<6x5xi1>
          %290 = vector.insertelement %c1437400375_i64, %86[%c14 : index] : vector<4xi64>
          %291 = math.round %cst_3 : f32
          %292 = math.ceil %4 : tensor<6x5xf32>
          %293 = vector.extract %26[5] : vector<6xi1>
          memref.copy %78, %alloc : memref<6x5xi64> to memref<6x5xi64>
          %cast_50 = tensor.cast %116 : tensor<4xi16> to tensor<?xi16>
          %c0_i64_51 = arith.constant 0 : i64
          linalg.yield %c0_i64_51 : i64
        }
      tensor.yield %c581854718_i32 : i32
    } : tensor<?x14xi32>
    %158 = math.copysign %cst_0, %cst_3 : f32
    %159 = bufferization.clone %alloc_18 : memref<14x14xf16> to memref<14x14xf16>
    %160 = vector.splat %103 : vector<6x5xindex>
    %161 = math.roundeven %cst_6 : f16
    %162 = tensor.empty() : tensor<6x4xi1>
    %163 = linalg.matmul ins(%17, %112 : tensor<6x5xi1>, tensor<5x4xi1>) outs(%162 : tensor<6x4xi1>) -> tensor<6x4xi1>
    %164 = memref.atomic_rmw mins %c1437400375_i64, %alloc[%c2, %c4] : (i64, memref<6x5xi64>) -> i64
    %165 = index.sub %102, %c1
    %166 = arith.remf %cst_4, %cst_4 : f16
    %167 = arith.andi %c1_i64, %c1091576647_i64 : i64
    %168 = arith.xori %c1091576647_i64, %c1091576647_i64 : i64
    %169 = vector.transpose %80, [1, 0] : vector<14x14xi1> to vector<14x14xi1>
    %170 = vector.matrix_multiply %114, %19 {lhs_columns = 2 : i32, lhs_rows = 7 : i32, rhs_columns = 3 : i32} : (vector<14xf16>, vector<6xf16>) -> vector<21xf16>
    %expanded_37 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<5x4xf16> into tensor<5x4x1xf16>
    %171 = vector.multi_reduction <minsi>, %57, %true_1 [0] : vector<1xi1> to i1
    %172 = affine.for %arg1 = 0 to 21 iter_args(%arg2 = %49) -> (memref<14x14xf32>) {
      affine.yield %arg2 : memref<14x14xf32>
    }
    %173 = index.sub %c6, %123
    %174 = vector.extract %30[4] : vector<5xi1>
    %175 = math.rsqrt %14 : tensor<5x4xf16>
    %176 = scf.while (%arg1 = %69) : (vector<14xi16>) -> vector<14xi16> {
      %alloca_48 = memref.alloca() : memref<6x5xf16>
      %261 = math.roundeven %14 : tensor<5x4xf16>
      %generated_49 = tensor.generate %141 {
      ^bb0(%arg2: index, %arg3: index):
        %267 = arith.remf %cst_0, %cst : f32
        %268 = vector.flat_transpose %134 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
        %269 = memref.atomic_rmw ori %c600853247_i64, %alloc_20[%c4, %c4] : (i64, memref<6x5xi64>) -> i64
        %inserted_51 = tensor.insert %cst_3 into %expanded[%c4, %c0, %c0] : tensor<5x4x1xf32>
        tensor.yield %cst_2 : f32
      } : tensor<?x4xf32>
      %262 = vector.broadcast %c581854718_i32 : i32 to vector<i32>
      vector.transfer_write %262, %110[%141] : vector<i32>, memref<4xi32>
      scf.execute_region {
        %267 = arith.divf %extracted, %cst_0 : f32
        %268 = arith.addf %extracted, %cst : f32
        %alloc_51 = memref.alloc() : memref<4xi32>
        %269 = math.exp %10 : tensor<4xf32>
        %270 = math.tan %15 : tensor<5x4xf32>
        %271 = arith.andi %c1437400375_i64, %c600853247_i64 : i64
        %272 = arith.addf %cst_2, %extracted : f32
        %273 = math.exp %expanded_37 : tensor<5x4x1xf16>
        %274 = math.exp %15 : tensor<5x4xf32>
        vector.print %136 : vector<i1>
        %275 = vector.transpose %25, [0] : vector<6xf32> to vector<6xf32>
        %276 = affine.apply affine_map<(d0) -> (d0 + 64)>(%c14)
        %277 = math.log2 %40 : tensor<4xf16>
        %278 = bufferization.clone %alloc_20 : memref<6x5xi64> to memref<6x5xi64>
        %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %134, %27, %cst_3 : vector<6xf32>, vector<6xf32> into f32
        %280 = arith.ori %171, %true : i1
        scf.yield
      }
      %263 = tensor.empty() : tensor<4x1x5xf32>
      %alloc_50 = memref.alloc() : memref<4x5xf32>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%10, %263, %alloc_50 : tensor<4xf32>, tensor<4x1x5xf32>, memref<4x5xf32>) outs(%expanded : tensor<5x4x1xf32>) {
      ^bb0(%in: f32, %in_51: f32, %in_52: f32, %out: f32):
        %267 = index.sub %c4, %47
        %alloc_53 = memref.alloc() : memref<4x14xf16>
        %268 = tensor.empty() : tensor<5x14xf16>
        %269 = linalg.matmul ins(%14, %alloc_53 : tensor<5x4xf16>, memref<4x14xf16>) outs(%268 : tensor<5x14xf16>) -> tensor<5x14xf16>
        %270 = arith.addi %c1_i64, %c600853247_i64 : i64
        %271 = arith.addf %in_52, %extracted : f32
        %272 = index.maxu %c5, %138
        %273 = bufferization.to_tensor %alloc_7 : memref<5x4xi1>
        %274 = bufferization.clone %alloc_20 : memref<6x5xi64> to memref<6x5xi64>
        %275 = index.add %103, %c8
        %alloc_54 = memref.alloc() : memref<14x14xi1>
        %276 = index.add %106, %106
        %277 = vector.broadcast %c15 : index to vector<5xindex>
        vector.scatter %alloc_8[%c4, %c3] [%277], %30, %30 : memref<6x5xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
        %278 = index.add %157, %276
        %279 = index.sizeof
        %280 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d3 - 16))>(%279, %104, %c8, %66)
        %inserted_55 = tensor.insert %c600853247_i64 into %5[%c4, %c2] : tensor<6x5xi64>
        %281 = vector.matrix_multiply %70, %26 {lhs_columns = 2 : i32, lhs_rows = 7 : i32, rhs_columns = 3 : i32} : (vector<14xi1>, vector<6xi1>) -> vector<21xi1>
        %282 = vector.flat_transpose %146 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
        %283 = vector.shuffle %134, %27 [1, 2, 3, 4, 7, 8] : vector<6xf32>, vector<6xf32>
        %284 = arith.ori %true, %true_1 : i1
        %285 = index.maxu %173, %c0
        %286 = vector.multi_reduction <minf>, %282, %282 [] : vector<6xf16> to vector<6xf16>
        %287 = vector.splat %c3 : vector<6x5xindex>
        %288 = index.sub %279, %276
        %289 = arith.maxui %true_1, %171 : i1
        %from_elements_56 = tensor.from_elements %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38 : tensor<6x5xi16>
        %290 = arith.ori %c1091576647_i64, %c1_i64 : i64
        %291 = vector.broadcast %extracted : f32 to vector<6x6xf32>
        %292 = vector.outerproduct %27, %27, %291 {kind = #vector.kind<maxf>} : vector<6xf32>, vector<6xf32>
        %293 = vector.matrix_multiply %57, %26 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 6 : i32} : (vector<1xi1>, vector<6xi1>) -> vector<6xi1>
        %294 = bufferization.to_tensor %alloc_14 : memref<4xi64>
        %295 = math.sqrt %cst_3 : f32
        %296 = math.copysign %4, %4 : tensor<6x5xf32>
        %297 = memref.load %142[%c1] : memref<4xi32>
        linalg.yield %cst_2 : f32
      } -> tensor<5x4x1xf32>
      %265 = math.ctpop %c1437400375_i64 : i64
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_19 : memref<4xf16>) outs(%expanded_37 : tensor<5x4x1xf16>) {
      ^bb0(%in: f16, %out: f16):
        %267 = vector.transpose %115, [0] : vector<14xf16> to vector<14xf16>
        %268 = vector.broadcast %cst_3 : f32 to vector<6x6xf32>
        %269 = vector.outerproduct %25, %25, %268 {kind = #vector.kind<add>} : vector<6xf32>, vector<6xf32>
        %270 = arith.subi %true_5, %true_1 : i1
        %271 = arith.divf %cst_3, %cst_2 : f32
        %272 = index.add %53, %c5
        %273 = vector.create_mask %272, %c11 : vector<6x5xi1>
        %274 = arith.minsi %38, %38 : i16
        %275 = vector.splat %171 : vector<6x5xi1>
        %276 = arith.maxsi %c600853247_i64, %c1_i64 : i64
        %alloca_51 = memref.alloca() : memref<6x5xf32>
        %277 = math.ipowi %38, %38 : i16
        %278 = vector.matrix_multiply %31, %31 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
        %279 = math.copysign %cst, %cst_0 : f32
        %280 = arith.remf %out, %in : f16
        %281 = math.atan2 %cst, %cst_2 : f32
        %282 = arith.addf %out, %in : f16
        %283 = arith.divf %cst_2, %cst_0 : f32
        %284 = vector.load %alloc_11[%c1, %c3] : memref<6x5xi16>, vector<5x4xi16>
        %285 = arith.maxsi %c1_i64, %c1_i64 : i64
        memref.assume_alignment %alloc_11, 16 : memref<6x5xi16>
        %splat_52 = tensor.splat %38 : tensor<6x5xi16>
        %286 = memref.atomic_rmw maxu %c1693094076_i32, %alloc_23[%c3] : (i32, memref<4xi32>) -> i32
        %287 = vector.broadcast %cst_2 : f32 to vector<4xf32>
        memref.assume_alignment %alloc_8, 8 : memref<6x5xi1>
        %288 = vector.broadcast %171 : i1 to vector<5x5xi1>
        %289 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %273, %273, %288 : vector<6x5xi1>, vector<6x5xi1> into vector<5x5xi1>
        %290 = math.atan2 %expanded_37, %expanded_37 : tensor<5x4x1xf16>
        %dest, %accumulated_value = vector.scan <minui>, %80, %70 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xi1>, vector<14xi1>
        %true_53 = index.bool.constant true
        %291 = arith.remf %out, %cst_4 : f16
        %292 = vector.maskedload %alloc_8[%c3, %c1], %30, %30 : memref<6x5xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
        %293 = vector.multi_reduction <or>, %80, %80 [] : vector<14x14xi1> to vector<14x14xi1>
        %294 = vector.maskedload %alloc_11[%c2, %c1], %26, %33 : memref<6x5xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
        linalg.yield %out : f16
      } -> tensor<5x4x1xf16>
      scf.condition(%true) %71 : vector<14xi16>
    } do {
    ^bb0(%arg1: vector<14xi16>):
      %261 = vector.shuffle %25, %134 [4, 6, 9, 10, 11] : vector<6xf32>, vector<6xf32>
      %262 = vector.matrix_multiply %57, %30 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xi1>, vector<5xi1>) -> vector<5xi1>
      %false = arith.constant false
      %263 = math.absi %c1_i64 : i64
      %264 = vector.matrix_multiply %121, %31 {lhs_columns = 5 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<20xi64>, vector<5xi64>) -> vector<4xi64>
      %265 = index.mul %103, %c4
      %266 = math.cos %10 : tensor<4xf32>
      %267 = memref.atomic_rmw ori %c1693094076_i32, %110[%c0] : (i32, memref<4xi32>) -> i32
      %268 = math.rsqrt %9 : tensor<6x5xf16>
      %269 = vector.multi_reduction <minsi>, %26, %26 [] : vector<6xi1> to vector<6xi1>
      %270 = tensor.empty() : tensor<14x14xi1>
      %271 = linalg.matmul ins(%12, %12 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%270 : tensor<14x14xi1>) -> tensor<14x14xi1>
      %272 = scf.while (%arg2 = %c959735039_i32) : (i32) -> i32 {
        %cst_49 = arith.constant 5.452800e+04 : f16
        %275 = affine.apply affine_map<(d0, d1, d2, d3) -> (((d3 * 2) ceildiv 32) mod 4)>(%47, %c10, %c4, %c4)
        %276 = vector.maskedload %alloc_8[%c3, %c4], %26, %26 : memref<6x5xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        memref.assume_alignment %alloc_8, 16 : memref<6x5xi1>
        %277 = math.round %14 : tensor<5x4xf16>
        affine.store %true, %alloc_7[%c4, %c6] : memref<5x4xi1>
        %278 = math.log10 %cst : f32
        %279 = index.add %47, %132
        scf.condition(%true_5) %c959735039_i32 : i32
      } do {
      ^bb0(%arg2: i32):
        %275 = bufferization.to_memref %125 : memref<6x4xi1>
        %276 = math.cos %cst : f32
        %277 = vector.bitcast %170 : vector<21xf16> to vector<21xf16>
        %278 = bufferization.clone %78 : memref<6x5xi64> to memref<6x5xi64>
        %279 = math.tan %cst : f32
        affine.store %true_5, %alloc_7[%c13, %c15] : memref<5x4xi1>
        %cst_49 = arith.constant 5.136000e+04 : f16
        %280 = math.sqrt %9 : tensor<6x5xf16>
        %281 = vector.broadcast %c1091576647_i64 : i64 to vector<14x14xi64>
        %282 = index.maxu %c15, %c7
        %283 = index.maxu %282, %c2
        %284 = arith.ceildivsi %c600853247_i64, %c1437400375_i64 : i64
        %285 = memref.load %alloc_22[%c2] : memref<6xi1>
        %286 = arith.divsi %38, %38 : i16
        %287 = math.roundeven %4 : tensor<6x5xf32>
        %288 = arith.remf %cst, %extracted : f32
        scf.yield %c581854718_i32 : i32
      }
      %273 = index.add %c4, %c1
      affine.store %true, %alloc_8[%c13, %c12] : memref<6x5xi1>
      %274 = index.maxu %47, %c8
      %true_48 = index.bool.constant true
      scf.yield %69 : vector<14xi16>
    }
    %177 = vector.splat %47 : vector<6x5xindex>
    %178 = bufferization.clone %alloc_15 : memref<4xi64> to memref<4xi64>
    %179 = tensor.empty() : tensor<6x5xf16>
    %180 = arith.divsi %true_5, %true_1 : i1
    %181 = arith.ori %38, %38 : i16
    %182 = arith.muli %c959735039_i32, %c959735039_i32 : i32
    memref.copy %49, %alloc_21 : memref<14x14xf32> to memref<14x14xf32>
    %183 = arith.cmpi uge, %38, %38 : i16
    %184 = math.exp %cst_6 : f16
    %splat_38 = tensor.splat %c959735039_i32 : tensor<14x14xi32>
    %185 = index.maxu %c3, %138
    affine.store %38, %alloc_16[%c7] : memref<4xi16>
    memref.copy %78, %alloc : memref<6x5xi64> to memref<6x5xi64>
    %186 = index.maxu %123, %c5
    %187 = vector.transpose %69, [0] : vector<14xi16> to vector<14xi16>
    %188 = index.ceildivu %66, %81
    %189 = memref.alloca_scope  -> (memref<5x4xi32>) {
      %261 = vector.broadcast %true_5 : i1 to vector<4xi1>
      %262 = vector.maskedload %178[%c3], %261, %86 : memref<4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
      %263 = arith.addi %c600853247_i64, %c600853247_i64 : i64
      %264 = vector.broadcast %true_1 : i1 to vector<6x5xi1>
      %265 = vector.flat_transpose %57 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
      %266 = math.roundeven %15 : tensor<5x4xf32>
      %267 = arith.maxui %c1_i64, %c1999358763_i64 : i64
      %268 = arith.floordivsi %true, %true : i1
      %269 = vector.extract %31[1] : vector<5xi64>
      %270 = arith.divui %171, %171 : i1
      %271 = affine.min affine_map<(d0, d1) -> (d1, -(d0 floordiv 2), d0 * -64)>(%75, %28)
      %272 = vector.matrix_multiply %146, %170 {lhs_columns = 3 : i32, lhs_rows = 2 : i32, rhs_columns = 7 : i32} : (vector<6xf16>, vector<21xf16>) -> vector<14xf16>
      %273 = math.expm1 %14 : tensor<5x4xf16>
      %274 = arith.ori %true_5, %true_5 : i1
      %275 = math.roundeven %extracted : f32
      %276 = math.round %cst_2 : f32
      %277 = math.copysign %14, %14 : tensor<5x4xf16>
      %false = index.bool.constant false
      %278 = arith.minf %cst_3, %cst_0 : f32
      %279 = tensor.empty() : tensor<14x14xi1>
      %280 = linalg.matmul ins(%12, %105 : tensor<14x14xi1>, tensor<14x14xi1>) outs(%279 : tensor<14x14xi1>) -> tensor<14x14xi1>
      %281 = vector.broadcast %c581854718_i32 : i32 to vector<i32>
      vector.transfer_write %281, %142[%c5] : vector<i32>, memref<4xi32>
      %282 = arith.divsi %c1693094076_i32, %c1693094076_i32 : i32
      memref.alloca_scope  {
        %291 = arith.andi %171, %true : i1
        %false_52 = arith.constant false
        %292 = vector.transfer_read %alloc_22[%173], %false_52 : memref<6xi1>, vector<i1>
        memref.assume_alignment %110, 8 : memref<4xi32>
        %293 = index.ceildivu %c1, %138
        %294 = arith.andi %c1999358763_i64, %c600853247_i64 : i64
        %295 = arith.andi %c1437400375_i64, %c1091576647_i64 : i64
        %296 = index.sub %c9, %293
        %297 = math.copysign %10, %10 : tensor<4xf32>
        %298 = math.roundeven %cst_3 : f32
        affine.store %c1999358763_i64, %78[%c1, %c2] : memref<6x5xi64>
        %cst_53 = arith.constant 1.000000e+00 : f16
        %cst_54 = arith.constant 0.000000e+00 : f16
        %299 = vector.transfer_read %alloc_19[%c7], %cst_54 : memref<4xf16>, vector<f16>
        %300 = vector.load %alloc_7[%c0, %c2] : memref<5x4xi1>, vector<4xi1>
        %301 = math.exp %expanded_37 : tensor<5x4x1xf16>
        %302 = math.round %14 : tensor<5x4xf16>
        %303 = vector.matrix_multiply %170, %19 {lhs_columns = 3 : i32, lhs_rows = 7 : i32, rhs_columns = 2 : i32} : (vector<21xf16>, vector<6xf16>) -> vector<14xf16>
        %304 = vector.insertelement %true_1, %26[%c9 : index] : vector<6xi1>
        %305 = vector.multi_reduction <maxf>, %134, %cst_0 [0] : vector<6xf32> to f32
        %306 = arith.floordivsi %c600853247_i64, %c600853247_i64 : i64
        %307 = math.ctlz %6 : tensor<14x14xi32>
        %308 = math.copysign %14, %14 : tensor<5x4xf16>
        %309 = bufferization.clone %78 : memref<6x5xi64> to memref<6x5xi64>
        %310 = math.ctpop %c959735039_i32 : i32
        %311 = index.add %c1, %102
        %312 = math.ctpop %c1_i64 : i64
        %313 = index.maxu %60, %c13
        %inserted_55 = tensor.insert %cst_3 into %cast_28[%c0] : tensor<?xf32>
        %314 = math.cos %4 : tensor<6x5xf32>
        %315 = index.maxu %131, %165
        %316 = math.log2 %cst_4 : f16
        %317 = bufferization.clone %78 : memref<6x5xi64> to memref<6x5xi64>
        %318 = math.exp %9 : tensor<6x5xf16>
        %inserted_56 = tensor.insert %c959735039_i32 into %3[%c0, %c13] : tensor<14x14xi32>
      }
      %inserted_48 = tensor.insert %cst_4 into %40[%c1] : tensor<4xf16>
      %283 = index.maxs %c1, %c11
      %284 = index.mul %c3, %81
      %285 = arith.cmpi sgt, %true_5, %true_1 : i1
      %from_elements_49 = tensor.from_elements %38, %38, %38, %38 : tensor<4xi16>
      %286 = math.absi %from_elements_49 : tensor<4xi16>
      %287 = tensor.empty() : tensor<5x4xi64>
      %mapped_50 = linalg.map ins(%13 : tensor<5x4xi64>) outs(%287 : tensor<5x4xi64>)
        (%in: i64) {
          %alloc_52 = memref.alloc() : memref<14x14xi1>
          %291 = math.round %cst : f32
          %292 = math.exp %4 : tensor<6x5xf32>
          %293 = math.log1p %cst_3 : f32
          %294 = affine.min affine_map<(d0, d1, d2) -> (d0 ceildiv 128 + d0)>(%165, %66, %131)
          %295 = index.add %c5, %141
          %296 = vector.bitcast %26 : vector<6xi1> to vector<6xi1>
          %297 = arith.andi %c581854718_i32, %c959735039_i32 : i32
          %298 = vector.transpose %115, [0] : vector<14xf16> to vector<14xf16>
          memref.copy %alloc_16, %alloc_9 : memref<4xi16> to memref<4xi16>
          %c2030231730_i32 = arith.constant 2030231730 : i32
          %299 = arith.remf %extracted, %cst_0 : f32
          %300 = math.fpowi %10, %0 : tensor<4xf32>, tensor<4xi32>
          %301 = math.cttz %18 : tensor<14x14xi64>
          %cast_53 = tensor.cast %21 : tensor<i32> to tensor<i32>
          %302 = math.tan %14 : tensor<5x4xf16>
          %303 = tensor.empty() : tensor<14x14xi32>
          %304 = linalg.matmul ins(%3, %splat : tensor<14x14xi32>, tensor<14x14xi32>) outs(%303 : tensor<14x14xi32>) -> tensor<14x14xi32>
          %305 = arith.divf %cst_3, %cst : f32
          %306 = bufferization.clone %alloc_18 : memref<14x14xf16> to memref<14x14xf16>
          %307 = math.ceil %cst_3 : f32
          %308 = math.absi %c1437400375_i64 : i64
          %309 = vector.matrix_multiply %71, %71 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<14xi16>) -> vector<1xi16>
          %310 = index.casts %c5 : index to i32
          %311 = math.absi %7 : tensor<14x14xi64>
          %312 = math.atan2 %expanded, %expanded : tensor<5x4x1xf32>
          %313 = math.fpowi %cst_0, %c1693094076_i32 : f32, i32
          %inserted_54 = tensor.insert %c581854718_i32 into %21[] : tensor<i32>
          %314 = vector.broadcast %cst_4 : f16 to vector<5x4xf16>
          %315 = vector.broadcast %true_1 : i1 to vector<5x4xi1>
          %316 = vector.broadcast %c581854718_i32 : i32 to vector<5x4xi32>
          %317 = vector.gather %159[%56, %75] [%316], %315, %314 : memref<14x14xf16>, vector<5x4xi32>, vector<5x4xi1>, vector<5x4xf16> into vector<5x4xf16>
          %318 = math.roundeven %10 : tensor<4xf32>
          %319 = math.cos %4 : tensor<6x5xf32>
          %320 = arith.cmpi ugt, %c1_i64, %in : i64
          %321 = vector.transpose %19, [0] : vector<6xf16> to vector<6xf16>
          %c0_i64_55 = arith.constant 0 : i64
          linalg.yield %c0_i64_55 : i64
        }
      %288 = math.absf %10 : tensor<4xf32>
      %289 = memref.load %49[%c2, %c5] : memref<14x14xf32>
      %290 = index.mul %173, %c10
      %alloc_51 = memref.alloc() : memref<5x4xi32>
      memref.alloca_scope.return %alloc_51 : memref<5x4xi32>
    }
    %190 = math.cos %cst_2 : f32
    %191 = scf.while (%arg1 = %189) : (memref<5x4xi32>) -> memref<5x4xi32> {
      %261 = arith.subi %true_1, %true_5 : i1
      %262 = math.exp %cst_2 : f32
      %263 = arith.remsi %c1_i64, %c1_i64 : i64
      %264 = tensor.empty() : tensor<6x5xi64>
      %mapped_48 = linalg.map ins(%5 : tensor<6x5xi64>) outs(%264 : tensor<6x5xi64>)
        (%in: i64) {
          %270 = vector.matrix_multiply %143, %25 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 6 : i32} : (vector<1xf32>, vector<6xf32>) -> vector<6xf32>
          %271 = index.ceildivu %c14, %157
          %272 = arith.minui %38, %38 : i16
          memref.assume_alignment %142, 2 : memref<4xi32>
          %273 = arith.shli %c1_i64, %c1_i64 : i64
          %274 = tensor.empty() : tensor<6x4xi64>
          %275 = linalg.matmul ins(%264, %13 : tensor<6x5xi64>, tensor<5x4xi64>) outs(%274 : tensor<6x4xi64>) -> tensor<6x4xi64>
          %276 = math.exp %14 : tensor<5x4xf16>
          %277 = arith.xori %c1091576647_i64, %c1091576647_i64 : i64
          %278 = index.ceildivu %c12, %106
          %279 = math.powf %10, %10 : tensor<4xf32>
          %280 = index.maxu %rank, %60
          %281 = math.log2 %extracted : f32
          %282 = math.tan %cst_6 : f16
          %dest, %accumulated_value = vector.scan <xor>, %80, %70 {inclusive = true, reduction_dim = 0 : i64} : vector<14x14xi1>, vector<14xi1>
          %283 = arith.shrsi %c600853247_i64, %c1437400375_i64 : i64
          %expanded_49 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<6x5xi64> into tensor<6x5x1xi64>
          %284 = math.round %extracted : f32
          %285 = arith.shli %c1437400375_i64, %c600853247_i64 : i64
          %286 = index.casts %c10 : index to i32
          %287 = arith.muli %c959735039_i32, %c581854718_i32 : i32
          %288 = math.cos %9 : tensor<6x5xf16>
          %289 = math.roundeven %4 : tensor<6x5xf32>
          %inserted_50 = tensor.insert %in into %2[%c0, %c0] : tensor<6x5xi64>
          %290 = vector.transpose %33, [0] : vector<6xi16> to vector<6xi16>
          %291 = arith.floordivsi %171, %true_1 : i1
          %292 = index.mul %c4, %165
          %293 = math.ceil %4 : tensor<6x5xf32>
          %294 = math.log10 %14 : tensor<5x4xf16>
          %295 = math.absi %264 : tensor<6x5xi64>
          %splat_51 = tensor.splat %true_5 : tensor<5x4xi1>
          %296 = bufferization.clone %49 : memref<14x14xf32> to memref<14x14xf32>
          %297 = index.sizeof
          %c0_i64_52 = arith.constant 0 : i64
          linalg.yield %c0_i64_52 : i64
        }
      %265 = math.tan %40 : tensor<4xf16>
      %266 = arith.minsi %c1437400375_i64, %c1091576647_i64 : i64
      %267 = vector.broadcast %38 : i16 to vector<14x14xi16>
      %268 = vector.outerproduct %69, %71, %267 {kind = #vector.kind<or>} : vector<14xi16>, vector<14xi16>
      %269 = arith.floordivsi %c1091576647_i64, %c1_i64 : i64
      scf.condition(%true) %189 : memref<5x4xi32>
    } do {
    ^bb0(%arg1: memref<5x4xi32>):
      %261 = arith.shli %171, %true_1 : i1
      %262 = index.castu %true_5 : i1 to index
      %263 = arith.muli %c1_i64, %c600853247_i64 : i64
      %264 = bufferization.to_tensor %alloc_21 : memref<14x14xf32>
      %265 = math.fma %40, %40, %40 : tensor<4xf16>
      %266 = affine.min affine_map<(d0, d1) -> (d0 * 2, (d0 ceildiv 16) mod 64 - 16)>(%c15, %102)
      %expanded_48 = tensor.expand_shape %116 [[0, 1]] : tensor<4xi16> into tensor<4x1xi16>
      %267 = scf.if %true -> (f16) {
        %274 = vector.maskedload %alloc_22[%c2], %70, %70 : memref<6xi1>, vector<14xi1>, vector<14xi1> into vector<14xi1>
        %275 = math.ipowi %c1693094076_i32, %c581854718_i32 : i32
        %276 = math.fma %expanded_37, %expanded_37, %expanded_37 : tensor<5x4x1xf16>
        %277 = vector.broadcast %171 : i1 to vector<4xi1>
        %278 = vector.maskedload %alloc_12[%c5, %c4], %277, %277 : memref<6x5xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
        %279 = tensor.empty() : tensor<14x14xi32>
        %280 = linalg.matmul ins(%3, %3 : tensor<14x14xi32>, tensor<14x14xi32>) outs(%279 : tensor<14x14xi32>) -> tensor<14x14xi32>
        %281 = vector.extract %33[5] : vector<6xi16>
        %282 = math.log2 %cst_3 : f32
        %283 = memref.atomic_rmw andi %c1437400375_i64, %78[%c1, %c3] : (i64, memref<6x5xi64>) -> i64
        scf.yield %cst_6 : f16
      } else {
        %274 = math.cos %4 : tensor<6x5xf32>
        %275 = math.roundeven %cst : f32
        %276 = arith.shrsi %171, %true_1 : i1
        %277 = affine.apply affine_map<(d0, d1, d2) -> (d0 - d2 + d0 + 1)>(%c15, %185, %c5)
        %278 = arith.maxf %cst, %cst_0 : f32
        %279 = vector.splat %123 : vector<6x5xindex>
        %280 = math.exp2 %4 : tensor<6x5xf32>
        %281 = math.absi %0 : tensor<4xi32>
        scf.yield %cst_4 : f16
      }
      %268 = math.log1p %cst_6 : f16
      %269 = bufferization.to_tensor %alloc_7 : memref<5x4xi1>
      %270 = arith.divf %cst_0, %extracted : f32
      %271 = math.log %264 : tensor<14x14xf32>
      %c-1679_i16 = arith.constant -1679 : i16
      %272 = arith.cmpi ult, %c600853247_i64, %c1_i64 : i64
      %from_elements_49 = tensor.from_elements %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38 : tensor<6x5xi16>
      %273 = vector.multi_reduction <minsi>, %33, %33 [] : vector<6xi16> to vector<6xi16>
      scf.yield %arg1 : memref<5x4xi32>
    }
    %192 = vector.splat %c1 : vector<4xindex>
    %193 = arith.maxf %extracted, %cst_3 : f32
    %194 = vector.splat %c959735039_i32 : vector<5x4xi32>
    %195 = math.rsqrt %extracted : f32
    %196 = scf.execute_region -> tensor<4xi32> {
      %261 = index.maxu %75, %75
      %rank_48 = tensor.rank %15 : tensor<5x4xf32>
      %true_49 = index.bool.constant true
      %262 = bufferization.clone %alloc_14 : memref<4xi64> to memref<4xi64>
      %inserted_50 = tensor.insert %38 into %116[%c1] : tensor<4xi16>
      %263 = math.round %14 : tensor<5x4xf16>
      %264 = index.maxu %c0, %66
      %265 = vector.multi_reduction <minui>, %26, %26 [] : vector<6xi1> to vector<6xi1>
      %266 = math.tanh %15 : tensor<5x4xf32>
      %267 = vector.load %262[%c2] : memref<4xi64>, vector<4xi64>
      %268 = math.expm1 %cst_2 : f32
      %269 = affine.if affine_set<(d0, d1, d2, d3) : (d1 + d3 - d3 >= 0)>(%c9, %c13, %c0, %c2) -> f32 {
        %273 = arith.remf %cst_0, %cst : f32
        %274 = arith.minui %c1437400375_i64, %c1091576647_i64 : i64
        %275 = vector.broadcast %true_49 : i1 to vector<4xi1>
        %276 = math.cttz %2 : tensor<6x5xi64>
        %277 = math.atan %cst_2 : f32
        %278 = bufferization.clone %alloc_20 : memref<6x5xi64> to memref<6x5xi64>
        %279 = arith.maxf %cst_3, %cst_3 : f32
        %cst_51 = arith.constant 1.000000e+00 : f16
        %280 = vector.transfer_read %alloc_19[%185], %cst_51 : memref<4xf16>, vector<f16>
        affine.yield %cst_0 : f32
      } else {
        %false_51 = index.bool.constant false
        %273 = vector.broadcast %c1091576647_i64 : i64 to vector<6xi64>
        %274 = vector.maskedload %alloc_14[%c1], %26, %273 : memref<4xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        %275 = math.log1p %40 : tensor<4xf16>
        %276 = arith.andi %c1437400375_i64, %c1091576647_i64 : i64
        %277 = vector.shuffle %31, %86 [1, 2, 3, 5] : vector<5xi64>, vector<4xi64>
        %278 = math.roundeven %expanded : tensor<5x4x1xf32>
        %inserted_52 = tensor.insert %c1091576647_i64 into %7[%c3, %c6] : tensor<14x14xi64>
        %279 = vector.broadcast %cst_0 : f32 to vector<4xf32>
        affine.yield %cst_3 : f32
      }
      %false = index.bool.constant false
      %270 = memref.atomic_rmw assign %cst, %alloc_21[%c7, %c11] : (f32, memref<14x14xf32>) -> f32
      %271 = math.tan %cst_3 : f32
      %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%40, %40, %alloc_19 : tensor<4xf16>, tensor<4xf16>, memref<4xf16>) outs(%expanded_37 : tensor<5x4x1xf16>) {
      ^bb0(%in: f16, %in_51: f16, %in_52: f16, %out: f16):
        %alloc_53 = memref.alloc() : memref<4x4xf32>
        %273 = tensor.empty() : tensor<5x4xf32>
        %274 = linalg.matmul ins(%15, %alloc_53 : tensor<5x4xf32>, memref<4x4xf32>) outs(%273 : tensor<5x4xf32>) -> tensor<5x4xf32>
        %275 = math.log2 %10 : tensor<4xf32>
        %c1_i64_54 = arith.constant 1 : i64
        %276 = vector.transfer_read %13[%106, %106], %c1_i64_54 : tensor<5x4xi64>, vector<14xi64>
        %277 = math.ctpop %6 : tensor<14x14xi32>
        %278 = vector.extract %114[11] : vector<14xf16>
        %279 = arith.shli %c1999358763_i64, %c1437400375_i64 : i64
        %280 = vector.flat_transpose %71 {columns = 7 : i32, rows = 2 : i32} : vector<14xi16> -> vector<14xi16>
        %281 = affine.max affine_map<(d0) -> ((d0 floordiv 64 + 4) ceildiv 8, d0 floordiv 64, d0 floordiv 64 - (d0 floordiv 64 + 4) - 2, d0 mod 64)>(%264)
        %282 = vector.bitcast %70 : vector<14xi1> to vector<14xi1>
        %283 = bufferization.clone %110 : memref<4xi32> to memref<4xi32>
        %284 = bufferization.clone %alloc_20 : memref<6x5xi64> to memref<6x5xi64>
        %285 = bufferization.to_tensor %alloc_14 : memref<4xi64>
        %286 = index.floordivs %47, %102
        %287 = vector.matrix_multiply %115, %146 {lhs_columns = 2 : i32, lhs_rows = 7 : i32, rhs_columns = 3 : i32} : (vector<14xf16>, vector<6xf16>) -> vector<21xf16>
        %288 = index.maxu %c5, %c6
        %289 = vector.multi_reduction <maxf>, %25, %134 [] : vector<6xf32> to vector<6xf32>
        %290 = vector.broadcast %c1999358763_i64 : i64 to vector<i64>
        vector.transfer_write %290, %78[%rank_48, %c12] : vector<i64>, memref<6x5xi64>
        %291 = index.maxs %rank_48, %264
        affine.store %c1_i64_54, %alloc_15[%c6] : memref<4xi64>
        %292 = math.cos %in : f16
        %293 = memref.load %alloc_14[%c2] : memref<4xi64>
        %294 = index.casts %true_1 : i1 to index
        %295 = vector.flat_transpose %29 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
        %296 = math.ctpop %38 : i16
        %297 = arith.shli %c600853247_i64, %c1_i64 : i64
        %298 = vector.transpose %29, [0] : vector<5xi64> to vector<5xi64>
        %299 = tensor.empty() : tensor<6x4xf16>
        %300 = linalg.matmul ins(%9, %14 : tensor<6x5xf16>, tensor<5x4xf16>) outs(%299 : tensor<6x4xf16>) -> tensor<6x4xf16>
        %cast_55 = tensor.cast %273 : tensor<5x4xf32> to tensor<?x?xf32>
        %301 = math.fpowi %in_51, %c1693094076_i32 : f16, i32
        %302 = vector.matrix_multiply %280, %69 {lhs_columns = 14 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<14xi16>, vector<14xi16>) -> vector<1xi16>
        %303 = arith.minsi %c1999358763_i64, %c1091576647_i64 : i64
        %304 = math.round %cst : f32
        linalg.yield %in_51 : f16
      } -> tensor<5x4x1xf16>
      scf.yield %0 : tensor<4xi32>
    }
    %197 = arith.remui %c959735039_i32, %c959735039_i32 : i32
    %198 = arith.addi %c1999358763_i64, %c1091576647_i64 : i64
    %199 = bufferization.to_tensor %alloc_19 : memref<4xf16>
    %200 = math.ceil %14 : tensor<5x4xf16>
    %201 = vector.transpose %86, [0] : vector<4xi64> to vector<4xi64>
    %202 = math.absi %11 : tensor<4xi16>
    %203 = math.log1p %15 : tensor<5x4xf32>
    %204 = math.round %9 : tensor<6x5xf16>
    %cast_39 = tensor.cast %splat : tensor<14x14xi32> to tensor<?x?xi32>
    %205 = memref.load %alloc_23[%c0] : memref<4xi32>
    %206 = math.tan %cst : f32
    %207 = vector.insert %cst_4, %114 [2] : f16 into vector<14xf16>
    %208 = arith.shli %171, %true_5 : i1
    %209 = tensor.empty() : tensor<14x14xi1>
    %expanded_40 = tensor.expand_shape %199 [[0, 1]] : tensor<4xf16> into tensor<4x1xf16>
    scf.execute_region {
      %inserted_48 = tensor.insert %true_5 into %209[%c2, %c10] : tensor<14x14xi1>
      %261 = bufferization.clone %189 : memref<5x4xi32> to memref<5x4xi32>
      %extracted_49 = tensor.extract %3[%c10, %c2] : tensor<14x14xi32>
      %cast_50 = tensor.cast %6 : tensor<14x14xi32> to tensor<?x?xi32>
      %262 = arith.remf %cst_6, %cst_4 : f16
      %263 = math.cttz %21 : tensor<i32>
      %264 = arith.ceildivsi %true, %171 : i1
      %265 = arith.addi %c581854718_i32, %c1693094076_i32 : i32
      %expanded_51 = tensor.expand_shape %125 [[0], [1, 2]] : tensor<6x4xi1> into tensor<6x4x1xi1>
      %266 = arith.cmpi ult, %c600853247_i64, %c1437400375_i64 : i64
      %267 = index.mul %c0, %c6
      %268 = vector.broadcast %185 : index to vector<5xindex>
      vector.scatter %alloc_7[%c1, %c0] [%268], %30, %30 : memref<5x4xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
      %269 = affine.min affine_map<(d0) -> (d0 mod 4 - 8)>(%131)
      %270 = vector.extract %25[4] : vector<6xf32>
      %271 = vector.matrix_multiply %70, %26 {lhs_columns = 2 : i32, lhs_rows = 7 : i32, rhs_columns = 3 : i32} : (vector<14xi1>, vector<6xi1>) -> vector<21xi1>
      %272 = arith.addf %cst_3, %cst_3 : f32
      scf.yield
    }
    %210 = math.exp %10 : tensor<4xf32>
    %211 = arith.negf %cst_4 : f16
    %212 = arith.minsi %true_1, %true_1 : i1
    %213 = vector.matrix_multiply %31, %29 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
    %214 = vector.bitcast %146 : vector<6xf16> to vector<6xf16>
    %215 = vector.extract %114[6] : vector<14xf16>
    %216 = math.fma %cst, %cst_0, %cst_0 : f32
    %217 = math.cos %4 : tensor<6x5xf32>
    %218 = affine.min affine_map<(d0, d1, d2, d3) -> (0, d2 - (d3 floordiv 32 + 64) ceildiv 8 + 8)>(%28, %165, %157, %c4)
    %219 = tensor.empty() : tensor<14x14xi64>
    %220 = linalg.matmul ins(%7, %7 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%219 : tensor<14x14xi64>) -> tensor<14x14xi64>
    %221 = vector.bitcast %33 : vector<6xi16> to vector<6xi16>
    %generated_41 = tensor.generate %c6 {
    ^bb0(%arg1: index, %arg2: index):
      %261 = index.sizeof
      %262 = vector.bitcast %214 : vector<6xf16> to vector<6xf16>
      %263 = memref.alloca_scope  -> (memref<4xi64>) {
        %265 = bufferization.clone %alloc_15 : memref<4xi64> to memref<4xi64>
        affine.store %cst_6, %alloc_18[%c9, %c7] : memref<14x14xf16>
        %266 = arith.remf %extracted, %cst_2 : f32
        %267 = math.cos %cst : f32
        %268 = math.log1p %15 : tensor<5x4xf32>
        %269 = arith.addi %c600853247_i64, %c1_i64 : i64
        %270 = vector.shuffle %69, %221 [0, 2, 5, 7, 8, 9, 10, 11, 12, 15, 18] : vector<14xi16>, vector<6xi16>
        %271 = memref.atomic_rmw maxs %38, %alloc_9[%c0] : (i16, memref<4xi16>) -> i16
        %272 = arith.divui %true_1, %true_5 : i1
        %273 = arith.floordivsi %c959735039_i32, %c959735039_i32 : i32
        %274 = arith.remf %cst, %cst_3 : f32
        %275 = arith.shrsi %c1437400375_i64, %c1_i64 : i64
        %276 = math.round %10 : tensor<4xf32>
        %expanded_48 = tensor.expand_shape %11 [[0, 1]] : tensor<4xi16> into tensor<4x1xi16>
        %277 = affine.load %alloc_13[%c11, %c13] : memref<5x4xi16>
        %278 = affine.load %178[%c1] : memref<4xi64>
        %279 = arith.divf %cst_2, %cst_3 : f32
        %expanded_49 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<14x14xi32> into tensor<14x14x1xi32>
        %280 = arith.divf %cst_3, %cst_3 : f32
        %281 = arith.cmpi eq, %38, %277 : i16
        %rank_50 = tensor.rank %3 : tensor<14x14xi32>
        %282 = vector.extract %143[0] : vector<1xf32>
        %expanded_51 = tensor.expand_shape %17 [[0], [1, 2]] : tensor<6x5xi1> into tensor<6x5x1xi1>
        %283 = bufferization.clone %alloc_19 : memref<4xf16> to memref<4xf16>
        %284 = math.copysign %expanded, %expanded : tensor<5x4x1xf32>
        %285 = arith.addi %c1693094076_i32, %c959735039_i32 : i32
        %alloc_52 = memref.alloc() : memref<4xi32>
        %286 = memref.realloc %110 : memref<4xi32> to memref<5xi32>
        %287 = arith.remf %cst_6, %cst_4 : f16
        %288 = math.absf %cst : f32
        %cst_53 = arith.constant 1.980800e+04 : f16
        %289 = math.powf %15, %15 : tensor<5x4xf32>
        memref.alloca_scope.return %alloc_14 : memref<4xi64>
      }
      %264 = math.log %10 : tensor<4xf32>
      tensor.yield %cst_4 : f16
    } : tensor<?x5xf16>
    %alloc_42 = memref.alloc() : memref<14x14xi16>
    %222 = bufferization.clone %alloc_13 : memref<5x4xi16> to memref<5x4xi16>
    %223 = math.log10 %cst_3 : f32
    scf.execute_region {
      %261 = math.exp2 %cst_0 : f32
      memref.copy %142, %110 : memref<4xi32> to memref<4xi32>
      %262 = vector.broadcast %cst_3 : f32 to vector<14x14xf32>
      %263 = vector.fma %262, %262, %262 : vector<14x14xf32>
      %264 = arith.floordivsi %c1999358763_i64, %c1091576647_i64 : i64
      %265 = arith.shli %c1437400375_i64, %c1091576647_i64 : i64
      %266 = vector.transpose %71, [0] : vector<14xi16> to vector<14xi16>
      memref.alloca_scope  {
        %alloc_49 = memref.alloc() : memref<5x4xf32>
        %275 = math.copysign %10, %10 : tensor<4xf32>
        %276 = arith.maxui %c581854718_i32, %c1693094076_i32 : i32
        memref.assume_alignment %alloc_10, 2 : memref<4xf32>
        %277 = affine.apply affine_map<(d0, d1, d2, d3) -> (-(d3 - 16))>(%c12, %c6, %75, %c5)
        %278 = bufferization.to_tensor %alloc_14 : memref<4xi64>
        %279 = arith.shli %c1693094076_i32, %c1693094076_i32 : i32
        %280 = vector.multi_reduction <mul>, %213, %c1091576647_i64 [0] : vector<1xi64> to i64
        %281 = arith.muli %true, %true_1 : i1
        %282 = vector.matrix_multiply %29, %121 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<5xi64>, vector<20xi64>) -> vector<4xi64>
        %cast_50 = tensor.cast %278 : tensor<4xi64> to tensor<?xi64>
        %283 = math.round %9 : tensor<6x5xf16>
        %284 = vector.insertelement %cst_2, %143[%60 : index] : vector<1xf32>
        %285 = vector.reduction <minui>, %69 : vector<14xi16> into i16
        %286 = vector.broadcast %cst_2 : f32 to vector<14xf32>
        %dest, %accumulated_value = vector.scan <mul>, %263, %286 {inclusive = false, reduction_dim = 0 : i64} : vector<14x14xf32>, vector<14xf32>
        memref.copy %alloc_17, %alloc_11 : memref<6x5xi16> to memref<6x5xi16>
        %287 = arith.divsi %c1437400375_i64, %280 : i64
        %288 = vector.broadcast %38 : i16 to vector<14x14xi16>
        %289 = vector.outerproduct %71, %69, %288 {kind = #vector.kind<minui>} : vector<14xi16>, vector<14xi16>
        %290 = math.tan %40 : tensor<4xf16>
        %291 = affine.min affine_map<(d0) -> (d0 + 1)>(%c4)
        %292 = vector.maskedload %alloc_8[%c0, %c1], %26, %26 : memref<6x5xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        memref.assume_alignment %142, 2 : memref<4xi32>
        %293 = math.copysign %9, %9 : tensor<6x5xf16>
        %294 = vector.broadcast %cst_0 : f32 to vector<14xf32>
        %295 = vector.maskedload %alloc_10[%c2], %70, %294 : memref<4xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %296 = arith.maxf %cst_6, %cst_6 : f16
        %297 = arith.floordivsi %c581854718_i32, %c959735039_i32 : i32
        %298 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 - d0 - 130, d3, d2 - d0, -(-d1 - (d2 - d0) floordiv 128))>(%185, %186, %141, %c0)
        %299 = memref.load %78[%c5, %c0] : memref<6x5xi64>
        %300 = arith.cmpi uge, %true, %true : i1
        %301 = arith.remf %cst_2, %cst_2 : f32
        %cast_51 = tensor.cast %15 : tensor<5x4xf32> to tensor<?x?xf32>
        %302 = tensor.empty() : tensor<4xi1>
      }
      %267 = index.sub %c12, %c9
      %268 = arith.xori %c1999358763_i64, %c1091576647_i64 : i64
      %269 = arith.shli %c1_i64, %c1091576647_i64 : i64
      %splat_48 = tensor.splat %cst_0 : tensor<6x5xf32>
      %270 = arith.remf %cst, %cst_0 : f32
      %271 = bufferization.clone %78 : memref<6x5xi64> to memref<6x5xi64>
      %272 = math.log10 %cst_3 : f32
      %273 = vector.insert %cst_6, %170 [20] : f16 into vector<21xf16>
      %274 = bufferization.to_tensor %alloc_19 : memref<4xf16>
      scf.yield
    }
    %c-3121_i16 = arith.constant -3121 : i16
    %224 = tensor.empty() : tensor<4xi16>
    %mapped_43 = linalg.map ins(%alloc_16, %11 : memref<4xi16>, tensor<4xi16>) outs(%224 : tensor<4xi16>)
      (%in: i16, %in_48: i16) {
        %rank_49 = tensor.rank %11 : tensor<4xi16>
        %expanded_50 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<5x4xf32> into tensor<5x4x1xf32>
        %261 = vector.broadcast %cst_0 : f32 to vector<5x4xf32>
        %262 = math.tanh %9 : tensor<6x5xf16>
        %263 = vector.transpose %214, [0] : vector<6xf16> to vector<6xf16>
        %264 = arith.cmpi sgt, %c1999358763_i64, %c1999358763_i64 : i64
        %265 = vector.create_mask %66, %141 : vector<5x4xi1>
        %266 = vector.broadcast %extracted : f32 to vector<5x4xf32>
        %267 = vector.fma %266, %261, %266 : vector<5x4xf32>
        %268 = arith.negf %extracted : f32
        %269 = vector.broadcast %cst_0 : f32 to vector<5xf32>
        %270 = vector.maskedload %alloc_10[%c2], %30, %269 : memref<4xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        %271 = bufferization.clone %189 : memref<5x4xi32> to memref<5x4xi32>
        %272 = vector.broadcast %c2 : index to vector<14xindex>
        vector.scatter %alloc_7[%c3, %c0] [%272], %70, %70 : memref<5x4xi1>, vector<14xindex>, vector<14xi1>, vector<14xi1>
        %273 = vector.splat %188 : vector<14x14xindex>
        %274 = math.exp2 %cst : f32
        %275 = vector.broadcast %in_48 : i16 to vector<6x6xi16>
        %276 = vector.outerproduct %221, %33, %275 {kind = #vector.kind<minsi>} : vector<6xi16>, vector<6xi16>
        %277 = arith.andi %in, %in : i16
        %278 = affine.apply affine_map<(d0) -> (-(d0 mod 128))>(%c14)
        %279 = arith.remf %cst_2, %cst : f32
        %280 = arith.divsi %c1_i64, %c1999358763_i64 : i64
        %281 = arith.floordivsi %true, %true : i1
        %282 = math.cos %cst_6 : f16
        %283 = vector.insertelement %cst_4, %115[%c12 : index] : vector<14xf16>
        %284 = arith.addf %cst_4, %cst_6 : f16
        %285 = vector.transpose %25, [0] : vector<6xf32> to vector<6xf32>
        %286 = vector.broadcast %c600853247_i64 : i64 to vector<4xi64>
        %287 = vector.transfer_write %286, %7[%123, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi64>, tensor<14x14xi64>
        %288 = arith.cmpi sle, %c600853247_i64, %c1091576647_i64 : i64
        %dest, %accumulated_value = vector.scan <minsi>, %80, %70 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi1>, vector<14xi1>
        affine.for %arg1 = 0 to 29 {
        }
        affine.store %c1693094076_i32, %110[%c9] : memref<4xi32>
        %289 = arith.xori %in_48, %in : i16
        %290 = math.expm1 %expanded_40 : tensor<4x1xf16>
        %291 = vector.transpose %27, [0] : vector<6xf32> to vector<6xf32>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %225 = math.powf %expanded_37, %expanded_37 : tensor<5x4x1xf16>
    %226 = math.rsqrt %10 : tensor<4xf32>
    affine.store %true_5, %alloc_12[%c2, %c11] : memref<6x5xi1>
    memref.assume_alignment %alloc_20, 16 : memref<6x5xi64>
    %227 = math.roundeven %cst_2 : f32
    %228 = memref.load %alloc_7[%c3, %c2] : memref<5x4xi1>
    %229 = vector.broadcast %true : i1 to vector<4xi1>
    %230 = vector.maskedload %178[%c3], %229, %86 : memref<4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
    %231 = arith.cmpi sle, %c959735039_i32, %c581854718_i32 : i32
    memref.alloca_scope  {
      %true_48 = index.bool.constant true
      %261 = scf.if %true_1 -> (memref<5x4xi64>) {
        %286 = vector.transpose %30, [0] : vector<5xi1> to vector<5xi1>
        %287 = bufferization.clone %142 : memref<4xi32> to memref<4xi32>
        %288 = math.log2 %expanded_40 : tensor<4x1xf16>
        %289 = memref.load %alloc_13[%c4, %c0] : memref<5x4xi16>
        %290 = arith.muli %c600853247_i64, %c1091576647_i64 : i64
        %splat_55 = tensor.splat %cst_0 : tensor<14x14xf32>
        %291 = index.maxu %c14, %138
        %292 = vector.shuffle %57, %70 [0, 2, 5, 13] : vector<1xi1>, vector<14xi1>
        %alloc_56 = memref.alloc() : memref<5x4xi64>
        scf.yield %alloc_56 : memref<5x4xi64>
      } else {
        %286 = memref.load %alloc_21[%c0, %c13] : memref<14x14xf32>
        %287 = memref.load %189[%c3, %c2] : memref<5x4xi32>
        %from_elements_55 = tensor.from_elements %c1693094076_i32, %c581854718_i32, %c581854718_i32, %c1693094076_i32, %c1693094076_i32, %c581854718_i32, %c581854718_i32, %c959735039_i32, %c1693094076_i32, %c581854718_i32, %c1693094076_i32, %c1693094076_i32, %c959735039_i32, %c581854718_i32, %c959735039_i32, %c581854718_i32, %c581854718_i32, %c959735039_i32, %c1693094076_i32, %c581854718_i32 : tensor<5x4xi32>
        %288 = arith.xori %c581854718_i32, %c959735039_i32 : i32
        %alloca_56 = memref.alloca() : memref<6x5xi1>
        %289 = arith.minsi %c1091576647_i64, %c1091576647_i64 : i64
        %290 = math.fma %cst_0, %cst_3, %extracted : f32
        %291 = arith.remf %cst_4, %cst_6 : f16
        %alloc_57 = memref.alloc() : memref<5x4xi64>
        scf.yield %alloc_57 : memref<5x4xi64>
      }
      %262 = index.divu %56, %103
      %splat_49 = tensor.splat %cst_6 : tensor<5x4xf16>
      %263 = memref.atomic_rmw mins %c1693094076_i32, %142[%c2] : (i32, memref<4xi32>) -> i32
      %264 = arith.addf %extracted, %extracted : f32
      %265 = arith.andi %true_5, %true_1 : i1
      %266 = math.log1p %expanded_40 : tensor<4x1xf16>
      %267 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 ceildiv 2)>(%rank, %173, %218, %185)
      %268 = math.cttz %c959735039_i32 : i32
      %269 = vector.transpose %214, [0] : vector<6xf16> to vector<6xf16>
      %270 = vector.broadcast %cst_6 : f16 to vector<14x14xf16>
      %271 = vector.outerproduct %114, %114, %270 {kind = #vector.kind<add>} : vector<14xf16>, vector<14xf16>
      %272 = bufferization.to_memref %219 : memref<14x14xi64>
      %expanded_50 = tensor.expand_shape %expanded_40 [[0], [1, 2]] : tensor<4x1xf16> into tensor<4x1x1xf16>
      %273 = vector.matrix_multiply %86, %213 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<1xi64>) -> vector<4xi64>
      %274 = math.round %expanded : tensor<5x4x1xf32>
      %275 = arith.divf %cst_0, %cst_2 : f32
      %276 = math.ctpop %0 : tensor<4xi32>
      %277 = arith.minf %cst, %cst_0 : f32
      %true_51 = arith.constant true
      %splat_52 = tensor.splat %true_1 : tensor<6x5xi1>
      %278 = vector.multi_reduction <minf>, %25, %cst_3 [0] : vector<6xf32> to f32
      %279 = bufferization.clone %alloc_21 : memref<14x14xf32> to memref<14x14xf32>
      %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %143, %143, %extracted : vector<1xf32>, vector<1xf32> into f32
      %cast_53 = tensor.cast %4 : tensor<6x5xf32> to tensor<?x?xf32>
      %281 = index.divs %60, %103
      %282 = vector.extract %230[2] : vector<4xi64>
      memref.copy %alloc_20, %alloc : memref<6x5xi64> to memref<6x5xi64>
      %283 = bufferization.to_tensor %alloc_9 : memref<4xi16>
      %284 = vector.maskedload %alloc_21[%c10, %c8], %26, %27 : memref<14x14xf32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
      %generated_54 = tensor.generate %75 {
      ^bb0(%arg1: index):
        %286 = bufferization.to_tensor %alloc_7 : memref<5x4xi1>
        %287 = memref.atomic_rmw andi %c1999358763_i64, %alloc_20[%c2, %c1] : (i64, memref<6x5xi64>) -> i64
        %288 = vector.extract %230[1] : vector<4xi64>
        %289 = vector.broadcast %true_5 : i1 to vector<i1>
        %290 = vector.transfer_write %289, %1[%c10] : vector<i1>, tensor<4xi1>
        tensor.yield %extracted : f32
      } : tensor<?xf32>
      %285 = arith.ori %true_1, %171 : i1
    }
    %232 = index.add %132, %165
    %233 = vector.extract %69[9] : vector<14xi16>
    %234 = vector.load %142[%c1] : memref<4xi32>, vector<4xi32>
    %235 = affine.apply affine_map<(d0) -> ((d0 * 32) mod 64)>(%c11)
    %236 = scf.while (%arg1 = %alloc_11) : (memref<6x5xi16>) -> memref<6x5xi16> {
      %261 = vector.flat_transpose %19 {columns = 2 : i32, rows = 3 : i32} : vector<6xf16> -> vector<6xf16>
      vector.print %71 : vector<14xi16>
      %262 = math.roundeven %15 : tensor<5x4xf32>
      %263 = affine.for %arg2 = 0 to 120 iter_args(%arg3 = %c1091576647_i64) -> (i64) {
        affine.yield %arg3 : i64
      }
      %264 = memref.atomic_rmw ori %c600853247_i64, %alloc_15[%c1] : (i64, memref<4xi64>) -> i64
      %265 = arith.subi %171, %true : i1
      %dest, %accumulated_value = vector.scan <mul>, %80, %70 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi1>, vector<14xi1>
      %c989041914_i64 = arith.constant 989041914 : i64
      scf.condition(%true_5) %arg1 : memref<6x5xi16>
    } do {
    ^bb0(%arg1: memref<6x5xi16>):
      %261 = memref.atomic_rmw muli %c581854718_i32, %189[%c4, %c3] : (i32, memref<5x4xi32>) -> i32
      %262 = affine.if affine_set<(d0, d1, d2, d3) : (-(d1 + d0) == 0)>(%c10, %c4, %c4, %c11) -> memref<6x5xf32> {
        %276 = arith.remf %cst_0, %cst_2 : f32
        %277 = vector.matrix_multiply %134, %134 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf32>, vector<6xf32>) -> vector<1xf32>
        %278 = vector.insert %cst_6, %214 [0] : f16 into vector<6xf16>
        %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %221, %221, %38 : vector<6xi16>, vector<6xi16> into i16
        %280 = vector.matrix_multiply %229, %30 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 5 : i32} : (vector<4xi1>, vector<5xi1>) -> vector<20xi1>
        %281 = math.cos %9 : tensor<6x5xf16>
        %282 = vector.maskedload %alloc_15[%c3], %229, %86 : memref<4xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
        %283 = vector.broadcast %c581854718_i32 : i32 to vector<4x4xi32>
        %284 = vector.outerproduct %234, %234, %283 {kind = #vector.kind<or>} : vector<4xi32>, vector<4xi32>
        %alloc_48 = memref.alloc() : memref<6x5xf32>
        affine.yield %alloc_48 : memref<6x5xf32>
      } else {
        %276 = math.exp %10 : tensor<4xf32>
        %277 = math.ceil %expanded : tensor<5x4x1xf32>
        memref.store %true_5, %alloc_12[%c2, %c0] : memref<6x5xi1>
        %278 = index.sub %c6, %c8
        %279 = math.fma %15, %15, %15 : tensor<5x4xf32>
        %280 = vector.extract %26[0] : vector<6xi1>
        %281 = affine.min affine_map<(d0, d1, d2) -> ((d2 + d1) ceildiv 4, d0 - (d2 + d1), -(d2 + d1) + 4, 0)>(%165, %c8, %c9)
        %282 = bufferization.clone %alloc_19 : memref<4xf16> to memref<4xf16>
        %alloc_48 = memref.alloc() : memref<6x5xf32>
        affine.yield %alloc_48 : memref<6x5xf32>
      }
      %263 = index.divu %c2, %103
      %264 = vector.insert %true_1, %70 [2] : i1 into vector<14xi1>
      %265 = arith.maxf %cst_3, %cst : f32
      %266 = arith.floordivsi %c1437400375_i64, %c1_i64 : i64
      %267 = arith.andi %171, %true : i1
      %268 = arith.minsi %c581854718_i32, %c1693094076_i32 : i32
      %269 = index.divu %28, %103
      %270 = index.maxs %81, %47
      %271 = vector.multi_reduction <minsi>, %29, %c1091576647_i64 [0] : vector<5xi64> to i64
      %272 = math.log2 %expanded : tensor<5x4x1xf32>
      %273 = math.copysign %9, %9 : tensor<6x5xf16>
      scf.execute_region {
        %false = index.bool.constant false
        %276 = affine.apply affine_map<(d0) -> (-(d0 mod 128))>(%c0)
        %277 = math.roundeven %14 : tensor<5x4xf16>
        %278 = index.maxu %rank, %263
        %279 = index.add %263, %104
        %280 = arith.floordivsi %171, %true_5 : i1
        %alloc_48 = memref.alloc() : memref<5x4xi64>
        memref.tensor_store %13, %alloc_48 : memref<5x4xi64>
        %281 = index.sub %131, %138
        %282 = math.log1p %9 : tensor<6x5xf16>
        %283 = affine.max affine_map<(d0, d1, d2) -> (d2)>(%c10, %47, %278)
        %rank_49 = tensor.rank %expanded : tensor<5x4x1xf32>
        %284 = arith.addf %cst, %cst_0 : f32
        %285 = bufferization.to_tensor %alloc : memref<6x5xi64>
        %286 = math.exp %cst : f32
        %287 = arith.ori %38, %38 : i16
        %288 = bufferization.clone %alloc_16 : memref<4xi16> to memref<4xi16>
        scf.yield
      }
      %274 = math.powf %cst_6, %cst_6 : f16
      %275 = bufferization.to_tensor %189 : memref<5x4xi32>
      scf.yield %arg1 : memref<6x5xi16>
    }
    %generated_44 = tensor.generate %c5 {
    ^bb0(%arg1: index, %arg2: index):
      %261 = bufferization.to_tensor %alloc_19 : memref<4xf16>
      %262 = math.tan %cst_2 : f32
      %263 = vector.transpose %33, [0] : vector<6xi16> to vector<6xi16>
      %264 = vector.bitcast %25 : vector<6xf32> to vector<6xf32>
      tensor.yield %38 : i16
    } : tensor<?x14xi16>
    %237 = vector.multi_reduction <and>, %26, %true_5 [0] : vector<6xi1> to i1
    %238 = vector.create_mask %c2, %56 : vector<14x14xi1>
    %239 = scf.execute_region -> memref<4xf16> {
      %261 = vector.broadcast %c1693094076_i32 : i32 to vector<5x4xi32>
      %262 = math.expm1 %9 : tensor<6x5xf16>
      %263 = math.tan %expanded : tensor<5x4x1xf32>
      %264 = vector.bitcast %29 : vector<5xi64> to vector<5xi64>
      %265 = affine.for %arg1 = 0 to 26 iter_args(%arg2 = %c1_i64) -> (i64) {
        affine.yield %c600853247_i64 : i64
      }
      %266 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 * 2)>(%c9, %81, %104, %138)
      %267 = vector.transpose %115, [0] : vector<14xf16> to vector<14xf16>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_10 : memref<4xf32>) outs(%expanded : tensor<5x4x1xf32>) {
      ^bb0(%in: f32, %out: f32):
        %275 = index.divu %c9, %106
        %alloc_50 = memref.alloc() : memref<4xf32>
        memref.copy %alloc_10, %alloc_50 : memref<4xf32> to memref<4xf32>
        %276 = arith.xori %c1437400375_i64, %c600853247_i64 : i64
        %277 = math.log10 %out : f32
        %278 = arith.addf %out, %in : f32
        %279 = math.atan2 %cst_2, %cst_0 : f32
        %280 = vector.reduction <add>, %19 : vector<6xf16> into f16
        %281 = tensor.empty(%138, %c0) : tensor<?x?xf32>
        %282 = math.cos %14 : tensor<5x4xf16>
        %283 = arith.minsi %c1999358763_i64, %c1_i64 : i64
        %284 = arith.xori %c1693094076_i32, %c1693094076_i32 : i32
        %285 = arith.minsi %c1693094076_i32, %c959735039_i32 : i32
        %286 = affine.apply affine_map<(d0) -> (d0 + 64)>(%c15)
        %287 = bufferization.clone %alloc_12 : memref<6x5xi1> to memref<6x5xi1>
        %288 = math.round %cst_6 : f16
        %289 = index.add %rank, %c15
        affine.store %c1693094076_i32, %142[%c12] : memref<4xi32>
        %290 = arith.floordivsi %237, %171 : i1
        %291 = index.sizeof
        %292 = arith.divui %c600853247_i64, %c1091576647_i64 : i64
        %293 = tensor.empty() : tensor<5x1xf16>
        %294 = linalg.matmul ins(%14, %expanded_40 : tensor<5x4xf16>, tensor<4x1xf16>) outs(%293 : tensor<5x1xf16>) -> tensor<5x1xf16>
        %295 = index.add %66, %c1
        %296 = math.round %15 : tensor<5x4xf32>
        %297 = math.cos %10 : tensor<4xf32>
        %298 = math.log10 %10 : tensor<4xf32>
        %299 = math.absi %from_elements : tensor<4xi1>
        %300 = arith.minsi %c959735039_i32, %c581854718_i32 : i32
        %301 = arith.minsi %c1_i64, %c1_i64 : i64
        %302 = bufferization.clone %alloc_15 : memref<4xi64> to memref<4xi64>
        %303 = math.cos %out : f32
        %304 = vector.insert %38, %221 [1] : i16 into vector<6xi16>
        %305 = arith.minsi %true, %true_1 : i1
        linalg.yield %cst : f32
      } -> tensor<5x4x1xf32>
      %269 = arith.minsi %c1_i64, %c1_i64 : i64
      %false = index.bool.constant false
      %270 = vector.extract_strided_slice %57 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
      %cst_48 = arith.constant 1.217600e+04 : f16
      %271 = tensor.empty() : tensor<14x14xi64>
      %272 = linalg.matmul ins(%18, %219 : tensor<14x14xi64>, tensor<14x14xi64>) outs(%271 : tensor<14x14xi64>) -> tensor<14x14xi64>
      %alloc_49 = memref.alloc() : memref<5x4xi16>
      %273 = vector.transpose %121, [0] : vector<20xi64> to vector<20xi64>
      %274 = memref.atomic_rmw minf %cst_0, %alloc_21[%c7, %c7] : (f32, memref<14x14xf32>) -> f32
      scf.yield %alloc_19 : memref<4xf16>
    }
    %240 = tensor.empty() : tensor<4xi1>
    %241 = bufferization.to_tensor %alloc_8 : memref<6x5xi1>
    %242 = bufferization.to_tensor %alloc_13 : memref<5x4xi16>
    %243 = index.mul %c8, %c3
    %extracted_45 = tensor.extract %generated_41[%c0, %c2] : tensor<?x5xf16>
    %244 = math.log2 %15 : tensor<5x4xf32>
    %245 = vector.insert %70, %238 [0] : vector<14xi1> into vector<14x14xi1>
    %246 = arith.cmpi sle, %c1437400375_i64, %c1999358763_i64 : i64
    %247 = vector.insert %c600853247_i64, %213 [0] : i64 into vector<1xi64>
    %248 = math.roundeven %cst : f32
    %249 = affine.if affine_set<(d0, d1, d2) : ((d1 * 8 - d2 mod 2) mod 64 == 0)>(%c0, %c3, %c14) -> f16 {
      %261 = vector.outerproduct %70, %70, %238 {kind = #vector.kind<maxui>} : vector<14xi1>, vector<14xi1>
      %262 = vector.shuffle %134, %143 [2, 3, 5] : vector<6xf32>, vector<1xf32>
      %263 = vector.insert %70, %238 [12] : vector<14xi1> into vector<14x14xi1>
      %264 = index.casts %188 : index to i32
      %265 = arith.remf %extracted_45, %extracted_45 : f16
      %266 = arith.minsi %c1091576647_i64, %c1437400375_i64 : i64
      affine.for %arg1 = 0 to 7 {
      }
      %267 = math.exp %10 : tensor<4xf32>
      affine.yield %extracted_45 : f16
    } else {
      %261 = tensor.empty() : tensor<14x14xf32>
      %262 = tensor.empty() : tensor<6x4xi1>
      %263 = linalg.matmul ins(%241, %112 : tensor<6x5xi1>, tensor<5x4xi1>) outs(%262 : tensor<6x4xi1>) -> tensor<6x4xi1>
      %264 = math.exp2 %10 : tensor<4xf32>
      %265 = math.round %cst_6 : f16
      %266 = math.copysign %4, %4 : tensor<6x5xf32>
      %generated_48 = tensor.generate %c8, %123 {
      ^bb0(%arg1: index, %arg2: index):
        %269 = math.absi %13 : tensor<5x4xi64>
        %270 = vector.insertelement %38, %221[%c10 : index] : vector<6xi16>
        %271 = arith.cmpi eq, %c959735039_i32, %c959735039_i32 : i32
        %272 = vector.bitcast %26 : vector<6xi1> to vector<6xi1>
        tensor.yield %cst_4 : f16
      } : tensor<?x?xf16>
      %267 = index.maxs %132, %235
      %268 = vector.extract %26[1] : vector<6xi1>
      affine.yield %cst_4 : f16
    }
    %250 = bufferization.clone %alloc_16 : memref<4xi16> to memref<4xi16>
    %251 = vector.transpose %19, [0] : vector<6xf16> to vector<6xf16>
    %252 = arith.divf %extracted_45, %extracted_45 : f16
    %253 = memref.alloca_scope  -> (f32) {
      %261 = arith.remf %extracted_45, %cst_4 : f16
      %true_48 = index.bool.constant true
      %262 = arith.divf %extracted, %cst_3 : f32
      %263 = arith.floordivsi %38, %38 : i16
      %264 = arith.cmpi ult, %c1_i64, %c1_i64 : i64
      %265 = math.cos %10 : tensor<4xf32>
      %266 = vector.bitcast %26 : vector<6xi1> to vector<6xi1>
      %267 = vector.flat_transpose %25 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
      %268 = math.copysign %cst_4, %extracted_45 : f16
      %269 = vector.transpose %266, [0] : vector<6xi1> to vector<6xi1>
      %270 = arith.divf %cst_6, %extracted_45 : f16
      %271 = math.ctpop %171 : i1
      %272 = vector.bitcast %266 : vector<6xi1> to vector<6xi1>
      %273 = vector.broadcast %c1693094076_i32 : i32 to vector<5xi32>
      %274 = vector.maskedload %alloc_23[%c3], %30, %273 : memref<4xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
      %275 = vector.transpose %272, [0] : vector<6xi1> to vector<6xi1>
      %generated_49 = tensor.generate %c5, %235 {
      ^bb0(%arg1: index, %arg2: index):
        %291 = arith.minui %c1_i64, %c1999358763_i64 : i64
        %292 = math.rsqrt %cst_3 : f32
        %293 = math.exp2 %expanded : tensor<5x4x1xf32>
        %294 = tensor.empty() : tensor<14x14xi16>
        %295 = vector.broadcast %38 : i16 to vector<6x5xi16>
        %296 = vector.broadcast %171 : i1 to vector<6x5xi1>
        %297 = vector.broadcast %c581854718_i32 : i32 to vector<6x5xi32>
        %298 = vector.gather %294[%232, %arg2] [%297], %296, %295 : tensor<14x14xi16>, vector<6x5xi32>, vector<6x5xi1>, vector<6x5xi16> into vector<6x5xi16>
        tensor.yield %cst : f32
      } : tensor<?x?xf32>
      %276 = math.ceil %extracted : f32
      %277 = math.ipowi %17, %16 : tensor<6x5xi1>
      %278 = memref.atomic_rmw assign %cst_2, %alloc_10[%c2] : (f32, memref<4xf32>) -> f32
      scf.if %171 {
        %291 = vector.broadcast %38 : i16 to vector<i16>
        vector.transfer_write %291, %222[%185, %81] : vector<i16>, memref<5x4xi16>
        memref.store %c1999358763_i64, %alloc[%c5, %c0] : memref<6x5xi64>
        %292 = vector.insert %237, %26 [4] : i1 into vector<6xi1>
        %293 = arith.addf %cst_3, %extracted : f32
        %294 = bufferization.to_tensor %alloc_8 : memref<6x5xi1>
        %295 = vector.bitcast %273 : vector<5xi32> to vector<5xi32>
        %splat_51 = tensor.splat %true_5 : tensor<5x4xi1>
        %296 = tensor.empty() : tensor<4xf16>
      }
      %279 = bufferization.clone %alloc_11 : memref<6x5xi16> to memref<6x5xi16>
      %280 = index.sizeof
      %281 = math.round %14 : tensor<5x4xf16>
      affine.store %38, %250[%c12] : memref<4xi16>
      %282 = index.casts %218 : index to i32
      %283 = math.absi %12 : tensor<14x14xi1>
      %284 = arith.minui %c1_i64, %c1_i64 : i64
      %285 = math.absf %expanded : tensor<5x4x1xf32>
      %286 = tensor.empty() : tensor<4xi32>
      %mapped_50 = linalg.map ins(%0 : tensor<4xi32>) outs(%286 : tensor<4xi32>)
        (%in: i32) {
          %alloc_51 = memref.alloc() : memref<14x14xf32>
          %alloc_52 = memref.alloc() : memref<14x14xi32>
          memref.tensor_store %6, %alloc_52 : memref<14x14xi32>
          %291 = arith.xori %c600853247_i64, %c1091576647_i64 : i64
          %292 = math.exp2 %expanded : tensor<5x4x1xf32>
          %293 = index.add %c12, %rank
          %294 = math.tanh %4 : tensor<6x5xf32>
          %295 = index.mul %c11, %218
          %296 = memref.realloc %178 : memref<4xi64> to memref<6xi64>
          %297 = math.log1p %40 : tensor<4xf16>
          %298 = index.add %75, %81
          %299 = vector.maskedload %alloc_14[%c2], %30, %31 : memref<4xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
          %alloc_53 = memref.alloc() : memref<14x14xi1>
          memref.tensor_store %12, %alloc_53 : memref<14x14xi1>
          %300 = vector.broadcast %cst_3 : f32 to vector<14x14xf32>
          %301 = vector.fma %300, %300, %300 : vector<14x14xf32>
          %302 = vector.insertelement %cst_4, %114[%132 : index] : vector<14xf16>
          %dest, %accumulated_value = vector.scan <xor>, %238, %70 {inclusive = false, reduction_dim = 1 : i64} : vector<14x14xi1>, vector<14xi1>
          %303 = arith.minf %extracted_45, %cst_6 : f16
          %304 = memref.load %alloc_8[%c4, %c4] : memref<6x5xi1>
          %305 = bufferization.to_tensor %alloc_7 : memref<5x4xi1>
          %true_54 = index.bool.constant true
          %true_55 = index.bool.constant true
          memref.store %c1437400375_i64, %alloc_14[%c1] : memref<4xi64>
          memref.store %in, %142[%c2] : memref<4xi32>
          %306 = arith.shrsi %c581854718_i32, %c1693094076_i32 : i32
          %307 = math.log1p %expanded : tensor<5x4x1xf32>
          memref.copy %222, %alloc_13 : memref<5x4xi16> to memref<5x4xi16>
          %308 = arith.divf %cst_4, %cst_4 : f16
          %309 = vector.broadcast %38 : i16 to vector<14x14xi16>
          %310 = vector.outerproduct %69, %69, %309 {kind = #vector.kind<xor>} : vector<14xi16>, vector<14xi16>
          %311 = index.add %104, %106
          %312 = math.roundeven %expanded_37 : tensor<5x4x1xf16>
          %313 = bufferization.to_tensor %alloc_7 : memref<5x4xi1>
          %314 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %221, %221, %38 : vector<6xi16>, vector<6xi16> into i16
          %315 = math.atan %40 : tensor<4xf16>
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %287 = vector.broadcast %c1693094076_i32 : i32 to vector<4x4xi32>
      %288 = vector.outerproduct %234, %234, %287 {kind = #vector.kind<maxsi>} : vector<4xi32>, vector<4xi32>
      %289 = math.powf %14, %14 : tensor<5x4xf16>
      %290 = index.mul %c0, %c4
      memref.alloca_scope.return %extracted : f32
    }
    %254 = index.castu %c1091576647_i64 : i64 to index
    %255 = memref.load %189[%c0, %c2] : memref<5x4xi32>
    %256 = math.ctpop %c1_i64 : i64
    %257 = tensor.empty() : tensor<6x5xi1>
    %258 = linalg.copy ins(%17 : tensor<6x5xi1>) outs(%257 : tensor<6x5xi1>) -> tensor<6x5xi1>
    %259 = tensor.empty() : tensor<14x14xi64>
    %transposed_46 = linalg.transpose ins(%219 : tensor<14x14xi64>) outs(%259 : tensor<14x14xi64>) permutation = [1, 0] 
    %alloc_47 = memref.alloc() : memref<i16>
    linalg.reduce ins(%alloc_17 : memref<6x5xi16>) outs(%alloc_47 : memref<i16>) dimensions = [0, 1] 
      (%in: i16, %init: i16) {
        %261 = scf.while (%arg1 = %c1437400375_i64) : (i64) -> i64 {
          memref.copy %250, %alloc_9 : memref<4xi16> to memref<4xi16>
          %rank_50 = tensor.rank %generated_41 : tensor<?x5xf16>
          %266 = math.round %14 : tensor<5x4xf16>
          %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %25, %27, %cst_3 : vector<6xf32>, vector<6xf32> into f32
          %268 = vector.transpose %121, [0] : vector<20xi64> to vector<20xi64>
          %cast_51 = tensor.cast %4 : tensor<6x5xf32> to tensor<?x?xf32>
          %269 = arith.remsi %c959735039_i32, %c959735039_i32 : i32
          %270 = math.absi %18 : tensor<14x14xi64>
          scf.condition(%true_5) %c1_i64 : i64
        } do {
        ^bb0(%arg1: i64):
          %266 = arith.shrsi %c1999358763_i64, %c600853247_i64 : i64
          memref.copy %alloc_15, %alloc_14 : memref<4xi64> to memref<4xi64>
          %267 = math.round %15 : tensor<5x4xf32>
          %268 = index.casts %104 : index to i32
          %269 = math.tan %cst_0 : f32
          %270 = vector.broadcast %cst_0 : f32 to vector<6x6xf32>
          %271 = vector.outerproduct %27, %134, %270 {kind = #vector.kind<mul>} : vector<6xf32>, vector<6xf32>
          %272 = memref.realloc %alloc_15 : memref<4xi64> to memref<5xi64>
          %273 = math.cttz %c581854718_i32 : i32
          %274 = bufferization.clone %alloc_19 : memref<4xf16> to memref<4xf16>
          %275 = arith.andi %true_1, %true_1 : i1
          %inserted_50 = tensor.insert %cst into %cast_28[%c0] : tensor<?xf32>
          affine.store %cst_2, %alloc_21[%c12, %c6] : memref<14x14xf32>
          %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %30, %30, %237 : vector<5xi1>, vector<5xi1> into i1
          %277 = bufferization.clone %alloc_11 : memref<6x5xi16> to memref<6x5xi16>
          %278 = vector.maskedload %alloc_20[%c5, %c3], %229, %86 : memref<6x5xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
          %279 = arith.divui %true, %true_5 : i1
          scf.yield %c1091576647_i64 : i64
        }
        %262 = math.absi %105 : tensor<14x14xi1>
        %263 = math.log %14 : tensor<5x4xf16>
        %264 = scf.while (%arg1 = %78) : (memref<6x5xi64>) -> memref<6x5xi64> {
          memref.tensor_store %196, %142 : memref<4xi32>
          %266 = math.round %cst_3 : f32
          %267 = math.exp2 %expanded_40 : tensor<4x1xf16>
          %268 = math.exp %14 : tensor<5x4xf16>
          %269 = vector.broadcast %c1693094076_i32 : i32 to vector<i32>
          %270 = vector.transfer_write %269, %splat_38[%56, %c13] : vector<i32>, tensor<14x14xi32>
          %271 = arith.remui %c600853247_i64, %c1999358763_i64 : i64
          %inserted_50 = tensor.insert %171 into %105[%c4, %c13] : tensor<14x14xi1>
          %272 = arith.divf %cst_3, %cst_3 : f32
          scf.condition(%true_1) %arg1 : memref<6x5xi64>
        } do {
        ^bb0(%arg1: memref<6x5xi64>):
          %266 = math.fma %14, %14, %14 : tensor<5x4xf16>
          %rank_50 = tensor.rank %209 : tensor<14x14xi1>
          %267 = vector.flat_transpose %29 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
          %268 = vector.broadcast %in : i16 to vector<4xi16>
          %269 = vector.maskedload %222[%c3, %c0], %229, %268 : memref<5x4xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
          %270 = vector.multi_reduction <and>, %221, %init [0] : vector<6xi16> to i16
          %271 = memref.atomic_rmw assign %38, %alloc_17[%c0, %c4] : (i16, memref<6x5xi16>) -> i16
          %272 = math.copysign %9, %9 : tensor<6x5xf16>
          %273 = vector.broadcast %cst_6 : f16 to vector<14x14xf16>
          %false = index.bool.constant false
          %274 = arith.divsi %270, %init : i16
          %275 = math.cttz %237 : i1
          %276 = bufferization.clone %159 : memref<14x14xf16> to memref<14x14xf16>
          %277 = vector.transpose %27, [0] : vector<6xf32> to vector<6xf32>
          %278 = arith.xori %true_1, %237 : i1
          %279 = vector.transpose %30, [0] : vector<5xi1> to vector<5xi1>
          %280 = math.sqrt %199 : tensor<4xf16>
          scf.yield %alloc_20 : memref<6x5xi64>
        }
        %alloca_48 = memref.alloca() : memref<14x14xi32>
        %cst_49 = arith.constant 0x4DCC7073 : f32
        %265 = index.ceildivu %138, %75
        affine.store %extracted, %alloc_21[%c13, %c10] : memref<14x14xf32>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    scf.parallel (%arg1, %arg2) = (%102, %53) to (%104, %c10) step (%c13, %c9) {
      %cast_48 = tensor.cast %242 : tensor<5x4xi16> to tensor<?x?xi16>
      %from_elements_49 = tensor.from_elements %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38 : tensor<5x4xi16>
      %261 = arith.shli %38, %38 : i16
      %262 = vector.load %49[%c4, %c7] : memref<14x14xf32>, vector<6x5xf32>
      %263 = index.sub %173, %28
      %264 = index.casts %38 : i16 to index
      %dest, %accumulated_value = vector.scan <add>, %238, %70 {inclusive = true, reduction_dim = 1 : i64} : vector<14x14xi1>, vector<14xi1>
      %265 = math.copysign %extracted_45, %cst_4 : f16
      %266 = tensor.empty() : tensor<14x14xi32>
      %mapped_50 = linalg.map ins(%6 : tensor<14x14xi32>) outs(%266 : tensor<14x14xi32>)
        (%in: i32) {
          %273 = arith.divf %cst_0, %253 : f32
          %274 = vector.splat %102 : vector<5x4xindex>
          %275 = math.round %extracted_45 : f16
          %276 = math.absi %241 : tensor<6x5xi1>
          %277 = index.maxu %218, %254
          %278 = vector.extract_strided_slice %19 {offsets = [1], sizes = [2], strides = [1]} : vector<6xf16> to vector<2xf16>
          %279 = vector.flat_transpose %230 {columns = 2 : i32, rows = 2 : i32} : vector<4xi64> -> vector<4xi64>
          %280 = arith.floordivsi %c1693094076_i32, %c959735039_i32 : i32
          %281 = arith.minsi %237, %171 : i1
          %282 = arith.minsi %237, %171 : i1
          %283 = index.divu %c3, %c5
          %inserted_52 = tensor.insert %true_5 into %112[%c4, %c1] : tensor<5x4xi1>
          %284 = memref.load %alloc_9[%c3] : memref<4xi16>
          %285 = memref.atomic_rmw assign %extracted_45, %alloc_19[%c1] : (f16, memref<4xf16>) -> f16
          %286 = math.log10 %cst_2 : f32
          %287 = arith.divf %cst_2, %cst_2 : f32
          %288 = vector.transpose %213, [0] : vector<1xi64> to vector<1xi64>
          %false = index.bool.constant false
          %289 = memref.load %222[%c3, %c2] : memref<5x4xi16>
          %290 = bufferization.clone %alloc_47 : memref<i16> to memref<i16>
          %291 = vector.load %142[%c3] : memref<4xi32>, vector<6x5xi32>
          %292 = math.fma %expanded_40, %expanded_40, %expanded_40 : tensor<4x1xf16>
          %293 = index.add %66, %28
          %294 = vector.multi_reduction <maxui>, %230, %279 [] : vector<4xi64> to vector<4xi64>
          %295 = arith.remf %cst_0, %253 : f32
          %296 = arith.xori %c581854718_i32, %c1693094076_i32 : i32
          %297 = arith.cmpi ugt, %237, %true_5 : i1
          %298 = arith.remf %extracted, %cst : f32
          %299 = vector.reduction <maxf>, %146 : vector<6xf16> into f16
          %300 = vector.insert %38, %71 [3] : i16 into vector<14xi16>
          %301 = index.maxu %arg2, %102
          %302 = vector.transpose %31, [0] : vector<5xi64> to vector<5xi64>
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %generated_51 = tensor.generate %123, %60 {
      ^bb0(%arg3: index, %arg4: index):
        %273 = math.cttz %12 : tensor<14x14xi1>
        %274 = arith.muli %171, %true_5 : i1
        %275 = math.copysign %extracted_45, %cst_4 : f16
        %276 = math.sqrt %cst_2 : f32
        tensor.yield %true_5 : i1
      } : tensor<?x?xi1>
      %267 = arith.xori %237, %true_5 : i1
      %268 = affine.for %arg3 = 0 to 119 iter_args(%arg4 = %71) -> (vector<14xi16>) {
        affine.yield %71 : vector<14xi16>
      }
      %269 = index.add %c6, %165
      %270 = vector.extract %213[0] : vector<1xi64>
      %271 = math.log %10 : tensor<4xf32>
      %272 = index.ceildivs %28, %106
      scf.yield
    }
    %260 = affine.vector_load %alloc_17[%c4, %188] : memref<6x5xi16>, vector<5xi16>
    affine.vector_store %29, %alloc_14[%c12] : memref<4xi64>, vector<5xi64>
    vector.print %19 : vector<6xf16>
    vector.print %25 : vector<6xf32>
    vector.print %26 : vector<6xi1>
    vector.print %27 : vector<6xf32>
    vector.print %29 : vector<5xi64>
    vector.print %30 : vector<5xi1>
    vector.print %31 : vector<5xi64>
    vector.print %33 : vector<6xi16>
    vector.print %57 : vector<1xi1>
    vector.print %69 : vector<14xi16>
    vector.print %70 : vector<14xi1>
    vector.print %71 : vector<14xi16>
    vector.print %80 : vector<14x14xi1>
    vector.print %86 : vector<4xi64>
    vector.print %114 : vector<14xf16>
    vector.print %115 : vector<14xf16>
    vector.print %121 : vector<20xi64>
    vector.print %134 : vector<6xf32>
    vector.print %136 : vector<i1>
    vector.print %143 : vector<1xf32>
    vector.print %146 : vector<6xf16>
    vector.print %170 : vector<21xf16>
    vector.print %213 : vector<1xi64>
    vector.print %214 : vector<6xf16>
    vector.print %221 : vector<6xi16>
    vector.print %229 : vector<4xi1>
    vector.print %230 : vector<4xi64>
    vector.print %234 : vector<4xi32>
    vector.print %238 : vector<14x14xi1>
    vector.print %260 : vector<5xi16>
    vector.print %cst : f32
    vector.print %c1091576647_i64 : i64
    vector.print %c1437400375_i64 : i64
    vector.print %cst_0 : f32
    vector.print %c1999358763_i64 : i64
    vector.print %true : i1
    vector.print %c959735039_i32 : i32
    vector.print %true_1 : i1
    vector.print %cst_2 : f32
    vector.print %c581854718_i32 : i32
    vector.print %cst_3 : f32
    vector.print %cst_4 : f16
    vector.print %true_5 : i1
    vector.print %cst_6 : f16
    vector.print %c600853247_i64 : i64
    vector.print %c1693094076_i32 : i32
    vector.print %38 : i16
    vector.print %c1_i64 : i64
    vector.print %extracted : f32
    vector.print %171 : i1
    vector.print %237 : i1
    vector.print %extracted_45 : f16
    vector.print %253 : f32
    return
  }
}
