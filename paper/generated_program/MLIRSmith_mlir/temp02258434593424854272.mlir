module {
  func.func nested @func1() -> vector<8x16xi32> {
    %cst = arith.constant 0x4E5DB104 : f32
    %false = arith.constant false
    %c1492876984_i32 = arith.constant 1492876984 : i32
    %c1053378056_i32 = arith.constant 1053378056 : i32
    %cst_0 = arith.constant 1.44135514E+9 : f32
    %false_1 = arith.constant false
    %c151266709_i64 = arith.constant 151266709 : i64
    %c-28554_i16 = arith.constant -28554 : i16
    %cst_2 = arith.constant 1.21461338E+9 : f32
    %cst_3 = arith.constant 6.224000e+04 : f16
    %true = arith.constant true
    %true_4 = arith.constant true
    %c1821023281_i32 = arith.constant 1821023281 : i32
    %false_5 = arith.constant false
    %cst_6 = arith.constant 0x4D5F3974 : f32
    %c1225607385_i64 = arith.constant 1225607385 : i64
    %0 = tensor.empty() : tensor<4x8x8xf32>
    %1 = tensor.empty() : tensor<8x16xi64>
    %2 = tensor.empty() : tensor<4x4x4xf32>
    %3 = tensor.empty() : tensor<8x16xi32>
    %4 = tensor.empty() : tensor<8x16xf16>
    %5 = tensor.empty() : tensor<4x4x4xf32>
    %6 = tensor.empty() : tensor<4x4x4xf32>
    %7 = tensor.empty() : tensor<4x4x4xi64>
    %8 = tensor.empty() : tensor<4x4x4xi16>
    %9 = tensor.empty() : tensor<4x8x8xf32>
    %10 = tensor.empty() : tensor<4x8x4xi1>
    %11 = tensor.empty() : tensor<4x4x4xi64>
    %12 = tensor.empty() : tensor<4x8x8xf32>
    %13 = tensor.empty() : tensor<8x16xf16>
    %14 = tensor.empty() : tensor<4x8x4xi1>
    %15 = tensor.empty() : tensor<4x8x4xf16>
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
    %alloc = memref.alloc() : memref<4x4x4xi1>
    %alloc_7 = memref.alloc() : memref<4x8x8xi16>
    %alloc_8 = memref.alloc() : memref<4x4x4xi16>
    %alloc_9 = memref.alloc() : memref<4x8x4xf32>
    %alloc_10 = memref.alloc() : memref<8x16xi1>
    %alloc_11 = memref.alloc() : memref<4x8x8xf16>
    %alloc_12 = memref.alloc() : memref<4x8x8xf32>
    %alloc_13 = memref.alloc() : memref<8x16xf32>
    %alloc_14 = memref.alloc() : memref<4x4x4xf16>
    %alloc_15 = memref.alloc() : memref<4x8x4xi1>
    %alloc_16 = memref.alloc() : memref<4x8x4xi64>
    %alloc_17 = memref.alloc() : memref<4x8x8xf16>
    %alloc_18 = memref.alloc() : memref<4x8x8xi64>
    %alloc_19 = memref.alloc() : memref<4x8x4xi32>
    %alloc_20 = memref.alloc() : memref<8x16xi64>
    %alloc_21 = memref.alloc() : memref<8x16xf16>
    %16 = tensor.empty() : tensor<4x8x8xf32>
    %17 = linalg.copy ins(%0 : tensor<4x8x8xf32>) outs(%16 : tensor<4x8x8xf32>) -> tensor<4x8x8xf32>
    %alloc_22 = memref.alloc() : memref<4x4x4xf32>
    linalg.transpose ins(%6 : tensor<4x4x4xf32>) outs(%alloc_22 : memref<4x4x4xf32>) permutation = [2, 0, 1] 
    %18 = tensor.empty() : tensor<8xi64>
    %reduced = linalg.reduce ins(%alloc_20 : memref<8x16xi64>) outs(%18 : tensor<8xi64>) dimensions = [1] 
      (%in: i64, %init: i64) {
        %generated_63 = tensor.generate %c1, %c3, %c13 {
        ^bb0(%arg0: index, %arg1: index, %arg2: index):
          %263 = vector.broadcast %in : i64 to vector<4x8x16xi64>
          %264 = vector.broadcast %in : i64 to vector<8x16xi64>
          %dest_65, %accumulated_value_66 = vector.scan <minsi>, %263, %264 {inclusive = true, reduction_dim = 0 : i64} : vector<4x8x16xi64>, vector<8x16xi64>
          %265 = arith.ori %c151266709_i64, %c1225607385_i64 : i64
          %266 = arith.mulf %cst_3, %cst_3 : f16
          %267 = vector.broadcast %false_5 : i1 to vector<4x4x4xi1>
          tensor.yield %c151266709_i64 : i64
        } : tensor<?x?x?xi64>
        %255 = arith.shrui %c1225607385_i64, %c1225607385_i64 : i64
        %256 = arith.shrui %c1492876984_i32, %c1053378056_i32 : i32
        %257 = vector.broadcast %c-28554_i16 : i16 to vector<i16>
        %258 = vector.insertelement %c-28554_i16, %257[] : vector<i16>
        %259 = vector.load %alloc_19[%c0, %c5, %c2] : memref<4x8x4xi32>, vector<4x8x8xi32>
        %260 = arith.remf %cst_2, %cst : f32
        %261 = math.tanh %9 : tensor<4x8x8xf32>
        %262 = arith.divf %cst_3, %cst_3 : f16
        %c0_i64_64 = arith.constant 0 : i64
        linalg.yield %c0_i64_64 : i64
      }
    scf.parallel (%arg0) = (%c2) to (%c2) step (%c3) {
      %255 = arith.addf %cst_2, %cst_2 : f32
      %256 = affine.load %alloc_21[%c11, %c10] : memref<8x16xf16>
      %257 = bufferization.to_tensor %alloc_17 : memref<4x8x8xf16>
      %258 = affine.if affine_set<(d0, d1) : (d0 >= 0, d0 mod 4 - (d0 - d0 mod 4) >= 0, d0 - (d0 - 4) - 32 >= 0)>(%c14, %c6) -> i64 {
        affine.store %cst_2, %alloc_22[%c12, %c10, %c9] : memref<4x4x4xf32>
        %275 = vector.create_mask %c9, %c15 : vector<8x16xi1>
        %276 = math.ipowi %7, %11 : tensor<4x4x4xi64>
        %277 = arith.ceildivsi %true, %false_1 : i1
        %278 = math.expm1 %5 : tensor<4x4x4xf32>
        %279 = tensor.empty() : tensor<16x8xi64>
        %280 = tensor.empty() : tensor<8x8xi64>
        %281 = linalg.matmul ins(%1, %279 : tensor<8x16xi64>, tensor<16x8xi64>) outs(%280 : tensor<8x8xi64>) -> tensor<8x8xi64>
        %282 = index.casts %c1225607385_i64 : i64 to index
        %283 = arith.negf %256 : f16
        affine.yield %c151266709_i64 : i64
      } else {
        %275 = math.atan2 %0, %0 : tensor<4x8x8xf32>
        %276 = vector.broadcast %false_1 : i1 to vector<4x8x4xi1>
        %277 = vector.shuffle %276, %276 [0, 1, 2, 3, 4, 6] : vector<4x8x4xi1>, vector<4x8x4xi1>
        %278 = vector.broadcast %true_4 : i1 to vector<16xi1>
        %279 = vector.flat_transpose %278 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
        %280 = arith.remui %false, %false_1 : i1
        %281 = math.log10 %2 : tensor<4x4x4xf32>
        %282 = arith.shrui %true, %false : i1
        %283 = arith.addf %cst_2, %cst : f32
        %284 = math.round %17 : tensor<4x8x8xf32>
        affine.yield %c1225607385_i64 : i64
      }
      %259 = affine.load %alloc_14[%c6, %c15, %c2] : memref<4x4x4xf16>
      %260 = vector.broadcast %c7 : index to vector<4xindex>
      %261 = vector.broadcast %false : i1 to vector<4xi1>
      %262 = vector.broadcast %cst : f32 to vector<4xf32>
      vector.scatter %alloc_13[%c1, %c14] [%260], %261, %262 : memref<8x16xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
      %263 = bufferization.clone %alloc_12 : memref<4x8x8xf32> to memref<4x8x8xf32>
      %264 = arith.minsi %false_1, %false_5 : i1
      %265 = index.floordivs %c15, %arg0
      %266 = vector.broadcast %c1053378056_i32 : i32 to vector<1xi32>
      %267 = vector.broadcast %c1821023281_i32 : i32 to vector<1xi32>
      %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %266, %267, %c1492876984_i32 : vector<1xi32>, vector<1xi32> into i32
      %269 = arith.shrsi %c151266709_i64, %c151266709_i64 : i64
      %270 = arith.remf %cst_2, %cst_2 : f32
      %271 = math.exp2 %cst_3 : f16
      %272 = arith.floordivsi %false, %true : i1
      %273 = arith.remf %256, %256 : f16
      %274 = vector.matrix_multiply %266, %266 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
      scf.yield
    }
    %19 = affine.vector_load %alloc_13[%c3, %c3] : memref<8x16xf32>, vector<8xf32>
    affine.vector_store %19, %alloc_12[%c11, %c15, %c4] : memref<4x8x8xf32>, vector<8xf32>
    %20 = tensor.empty() : tensor<8xi64>
    %21 = tensor.empty() : tensor<i64>
    %22 = linalg.dot ins(%reduced, %20 : tensor<8xi64>, tensor<8xi64>) outs(%21 : tensor<i64>) -> tensor<i64>
    %23 = math.log1p %9 : tensor<4x8x8xf32>
    %24 = math.round %cst_3 : f16
    %25 = math.round %13 : tensor<8x16xf16>
    %26 = arith.ori %c1492876984_i32, %c1492876984_i32 : i32
    %27 = math.floor %13 : tensor<8x16xf16>
    %28 = math.exp %5 : tensor<4x4x4xf32>
    affine.for %arg0 = 0 to 25 {
    }
    %cst_23 = arith.constant 1.000000e+00 : f32
    %cst_24 = arith.constant 0.000000e+00 : f32
    %29 = vector.transfer_read %0[%c14, %c14, %c13], %cst_24 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<4x8x8xf32>, vector<16x4xf32>
    affine.store %true_4, %alloc[%c2, %c2, %c3] : memref<4x4x4xi1>
    %generated = tensor.generate %c1, %c2 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %255 = arith.ori %true_4, %false_1 : i1
      %false_63 = index.bool.constant false
      %256 = arith.remf %cst_3, %cst_3 : f16
      %257 = math.round %13 : tensor<8x16xf16>
      tensor.yield %cst_3 : f16
    } : tensor<?x?x4xf16>
    %30 = memref.atomic_rmw maxf %cst_3, %alloc_17[%c2, %c0, %c5] : (f16, memref<4x8x8xf16>) -> f16
    %alloc_25 = memref.alloc() : memref<8x8xf32>
    %31 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_25, %alloc_25 : memref<8x8xf32>, memref<8x8xf32>) outs(%12 : tensor<4x8x8xf32>) {
    ^bb0(%in: f32, %in_63: f32, %out: f32):
      bufferization.dealloc_tensor %9 : tensor<4x8x8xf32>
      %255 = math.cttz %18 : tensor<8xi64>
      %256 = vector.broadcast %c-28554_i16 : i16 to vector<4x4x4xi16>
      %257 = vector.broadcast %false_1 : i1 to vector<4x4x4xi1>
      %258 = vector.broadcast %c1492876984_i32 : i32 to vector<4x4x4xi32>
      %259 = vector.gather %alloc_7[%c3, %c3, %c14] [%258], %257, %256 : memref<4x8x8xi16>, vector<4x4x4xi32>, vector<4x4x4xi1>, vector<4x4x4xi16> into vector<4x4x4xi16>
      %260 = index.ceildivu %c8, %c0
      %261 = math.sqrt %in : f32
      %262 = scf.index_switch %c12 -> vector<8x16xi64> 
      case 1 {
        %287 = math.exp %cst_3 : f16
        %288 = affine.min affine_map<(d0) -> (d0 * 2, 2, (d0 * -2) floordiv 64, (d0 * -2) floordiv 64)>(%c7)
        %289 = math.tanh %cst : f32
        %290 = math.copysign %6, %2 : tensor<4x4x4xf32>
        %291 = math.fpowi %in_63, %c1492876984_i32 : f32, i32
        %292 = math.exp %12 : tensor<4x8x8xf32>
        memref.store %c-28554_i16, %alloc_8[%c2, %c2, %c2] : memref<4x4x4xi16>
        %293 = math.exp %13 : tensor<8x16xf16>
        %294 = math.fma %9, %12, %9 : tensor<4x8x8xf32>
        %295 = vector.create_mask %c1, %c0, %c12 : vector<4x4x4xi1>
        %296 = arith.xori %false, %false_1 : i1
        %extracted_68 = tensor.extract %8[%c2, %c3, %c1] : tensor<4x4x4xi16>
        %297 = math.rsqrt %16 : tensor<4x8x8xf32>
        %298 = vector.load %alloc_18[%c3, %c0, %c5] : memref<4x8x8xi64>, vector<8x16xi64>
        %299 = index.divs %c4, %c13
        %300 = arith.floordivsi %c1053378056_i32, %c1053378056_i32 : i32
        scf.yield %298 : vector<8x16xi64>
      }
      default {
        %287 = vector.broadcast %false_1 : i1 to vector<4x4xi1>
        %dest_68, %accumulated_value_69 = vector.scan <maxui>, %257, %287 {inclusive = true, reduction_dim = 1 : i64} : vector<4x4x4xi1>, vector<4x4xi1>
        %288 = vector.broadcast %c1492876984_i32 : i32 to vector<8xi32>
        vector.transfer_write %288, %alloc_19[%c11, %c7, %c10] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<8xi32>, memref<4x8x4xi32>
        %289 = arith.negf %cst_6 : f32
        %rank_70 = tensor.rank %15 : tensor<4x8x4xf16>
        %290 = math.cttz %14 : tensor<4x8x4xi1>
        %291 = memref.atomic_rmw assign %c151266709_i64, %alloc_16[%c2, %c5, %c2] : (i64, memref<4x8x4xi64>) -> i64
        %292 = vector.shuffle %258, %258 [1, 7] : vector<4x4x4xi32>, vector<4x4x4xi32>
        affine.store %cst_2, %alloc_22[%c2, %c12, %c6] : memref<4x4x4xf32>
        %293 = vector.broadcast %false_1 : i1 to vector<4xi1>
        vector.transfer_write %293, %alloc_10[%c2, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi1>, memref<8x16xi1>
        %294 = index.divs %c9, %c9
        %295 = math.floor %9 : tensor<4x8x8xf32>
        %296 = vector.reduction <minui>, %293 : vector<4xi1> into i1
        %297 = arith.addf %cst_0, %cst_0 : f32
        %298 = math.powf %13, %13 : tensor<8x16xf16>
        %299 = math.atan2 %16, %9 : tensor<4x8x8xf32>
        %300 = arith.shrsi %false, %false_1 : i1
        %301 = vector.broadcast %c1225607385_i64 : i64 to vector<8x16xi64>
        scf.yield %301 : vector<8x16xi64>
      }
      %263 = vector.create_mask %c2, %c4, %c14 : vector<4x8x4xi1>
      %264 = vector.create_mask %c13, %c10, %c14 : vector<4x8x4xi1>
      %true_64 = index.bool.constant true
      %265 = index.mul %c15, %c10
      %266 = vector.broadcast %c-28554_i16 : i16 to vector<8xi16>
      %267 = vector.broadcast %false_1 : i1 to vector<8xi1>
      %268 = vector.maskedload %alloc_7[%c0, %c3, %c6], %267, %266 : memref<4x8x8xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
      %269 = arith.addf %cst_6, %in : f32
      %270 = arith.addf %cst, %cst_2 : f32
      %271 = arith.mulf %out, %in_63 : f32
      %272 = math.exp2 %5 : tensor<4x4x4xf32>
      %273 = arith.ceildivsi %false, %true : i1
      %274 = tensor.empty() : tensor<4x4x4xf32>
      %mapped_65 = linalg.map ins(%2, %5 : tensor<4x4x4xf32>, tensor<4x4x4xf32>) outs(%274 : tensor<4x4x4xf32>)
        (%in_68: f32, %in_69: f32) {
          %287 = arith.addi %true, %true : i1
          %288 = index.castu %c9 : index to i32
          %289 = math.fpowi %4, %3 : tensor<8x16xf16>, tensor<8x16xi32>
          %alloc_70 = memref.alloc() : memref<4x8x4xi64>
          memref.copy %alloc_16, %alloc_70 : memref<4x8x4xi64> to memref<4x8x4xi64>
          %290 = math.tan %6 : tensor<4x4x4xf32>
          %291 = math.fpowi %in, %c1492876984_i32 : f32, i32
          %292 = math.round %6 : tensor<4x4x4xf32>
          %293 = arith.ceildivsi %false_1, %false_1 : i1
          %294 = math.round %cst_3 : f16
          %295 = arith.shli %c1492876984_i32, %c1821023281_i32 : i32
          %296 = vector.broadcast %cst : f32 to vector<4x8x8xf32>
          %alloc_71 = memref.alloc() : memref<8x16xi1>
          memref.copy %alloc_10, %alloc_71 : memref<8x16xi1> to memref<8x16xi1>
          %collapsed_72 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<4x8x8xf32> into tensor<32x8xf32>
          %297 = arith.ori %c1492876984_i32, %c1053378056_i32 : i32
          %298 = math.cos %in_68 : f32
          %299 = vector.create_mask %c8, %c13 : vector<8x16xi1>
          %300 = math.log1p %4 : tensor<8x16xf16>
          %301 = arith.minf %in_69, %cst_23 : f32
          %cast_73 = tensor.cast %17 : tensor<4x8x8xf32> to tensor<?x?x?xf32>
          %302 = affine.min affine_map<(d0) -> ((-d0) floordiv 16, ((d0 ceildiv 8) * 2) ceildiv 4, d0 floordiv 128, (d0 ceildiv 8) * 2 - 1)>(%c2)
          %303 = math.atan2 %13, %4 : tensor<8x16xf16>
          memref.copy %alloc_11, %alloc_17 : memref<4x8x8xf16> to memref<4x8x8xf16>
          %304 = index.add %c8, %c8
          %305 = arith.cmpi ult, %true, %true : i1
          %306 = vector.create_mask %304, %c5, %c11 : vector<4x8x8xi1>
          %307 = arith.minui %false_1, %true : i1
          %308 = arith.xori %true, %true : i1
          %309 = arith.ceildivsi %false_1, %false : i1
          %310 = arith.remf %cst, %in_68 : f32
          %311 = arith.ceildivsi %false, %true_4 : i1
          %312 = arith.mulf %cst_3, %cst_3 : f16
          %313 = vector.load %alloc_7[%c3, %c2, %c2] : memref<4x8x8xi16>, vector<4x8x4xi16>
          %cst_74 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_74 : f32
        }
      %275 = vector.extract_strided_slice %263 {offsets = [0], sizes = [3], strides = [1]} : vector<4x8x4xi1> to vector<3x8x4xi1>
      scf.if %false_5 {
        %287 = index.ceildivu %c15, %c2
        %288 = arith.mulf %cst_23, %cst : f32
        %289 = index.divs %c12, %c9
        %290 = math.ceil %16 : tensor<4x8x8xf32>
        %291 = math.roundeven %cst : f32
        %292 = math.log2 %2 : tensor<4x4x4xf32>
        %splat = tensor.splat %c1225607385_i64 : tensor<4x8x4xi64>
        %293 = vector.broadcast %c151266709_i64 : i64 to vector<8x16xi64>
      } else {
        %287 = arith.shrsi %c1821023281_i32, %c1821023281_i32 : i32
        %288 = vector.broadcast %false_5 : i1 to vector<4x4xi1>
        %dest_68, %accumulated_value_69 = vector.scan <add>, %257, %288 {inclusive = true, reduction_dim = 2 : i64} : vector<4x4x4xi1>, vector<4x4xi1>
        %289 = memref.atomic_rmw minu %c-28554_i16, %alloc_8[%c3, %c0, %c2] : (i16, memref<4x4x4xi16>) -> i16
        %290 = arith.ceildivsi %true_64, %true : i1
        %291 = vector.insertelement %false, %267[%c9 : index] : vector<8xi1>
        %292 = math.cos %12 : tensor<4x8x8xf32>
        %293 = vector.reduction <or>, %267 : vector<8xi1> into i1
        %294 = vector.create_mask %c6, %c12 : vector<8x16xi1>
      }
      %276 = math.fma %274, %5, %2 : tensor<4x4x4xf32>
      %277 = arith.remsi %c-28554_i16, %c-28554_i16 : i16
      %278 = affine.apply affine_map<(d0, d1) -> (d1 + d0 floordiv 2 + d1 + 9 + 9)>(%260, %c5)
      %279 = arith.negf %cst_6 : f32
      bufferization.dealloc_tensor %generated : tensor<?x?x4xf16>
      %cst_66 = arith.constant 1.000000e+00 : f32
      %cst_67 = arith.constant 0.000000e+00 : f32
      %280 = vector.transfer_read %9[%c15, %c9, %c6], %cst_67 : tensor<4x8x8xf32>, vector<f32>
      %281 = affine.load %alloc_12[%c9, %c12, %c8] : memref<4x8x8xf32>
      %282 = index.sub %c11, %c13
      memref.store %cst, %alloc_9[%c2, %c4, %c3] : memref<4x8x4xf32>
      %283 = vector.broadcast %c1053378056_i32 : i32 to vector<8x16xi32>
      %284 = index.maxs %c7, %c8
      bufferization.dealloc_tensor %8 : tensor<4x4x4xi16>
      %285 = vector.broadcast %c1225607385_i64 : i64 to vector<i64>
      %286 = vector.transfer_write %285, %20[%c10] : vector<i64>, tensor<8xi64>
      linalg.yield %in : f32
    } -> tensor<4x8x8xf32>
    %expanded = tensor.expand_shape %18 [[0, 1]] : tensor<8xi64> into tensor<8x1xi64>
    %32 = arith.andi %c1225607385_i64, %c1225607385_i64 : i64
    %33 = arith.subi %c1225607385_i64, %c1225607385_i64 : i64
    %34 = math.exp %0 : tensor<4x8x8xf32>
    %35 = index.maxs %c12, %c6
    %true_26 = index.bool.constant true
    %36 = math.atan2 %4, %13 : tensor<8x16xf16>
    %37 = arith.divsi %c151266709_i64, %c1225607385_i64 : i64
    %38 = tensor.empty() : tensor<1x16xi64>
    %39 = tensor.empty() : tensor<8x16xi64>
    %40 = linalg.matmul ins(%expanded, %38 : tensor<8x1xi64>, tensor<1x16xi64>) outs(%39 : tensor<8x16xi64>) -> tensor<8x16xi64>
    %41 = bufferization.to_memref %reduced : memref<8xi64>
    %42 = math.fma %cst_0, %cst_23, %cst_6 : f32
    %43 = arith.remf %cst_6, %cst_0 : f32
    %collapsed = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<4x8x8xf32> into tensor<32x8xf32>
    %44 = index.mul %c10, %c13
    %45 = memref.atomic_rmw ori %c-28554_i16, %alloc_7[%c2, %c2, %c3] : (i16, memref<4x8x8xi16>) -> i16
    %true_27 = index.bool.constant true
    %46 = math.floor %15 : tensor<4x8x4xf16>
    %47 = tensor.empty() : tensor<8xi64>
    %mapped = linalg.map ins(%18 : tensor<8xi64>) outs(%47 : tensor<8xi64>)
      (%in: i64) {
        %255 = arith.negf %cst : f32
        %expanded_63 = tensor.expand_shape %39 [[0], [1, 2]] : tensor<8x16xi64> into tensor<8x16x1xi64>
        %256 = index.mul %c13, %c10
        %generated_64 = tensor.generate %c12 {
        ^bb0(%arg0: index, %arg1: index, %arg2: index):
          %284 = affine.max affine_map<(d0) -> (d0 * 2, d0 * 8 - 1, d0 * 7)>(%c8)
          %285 = math.exp2 %2 : tensor<4x4x4xf32>
          %collapsed_73 = tensor.collapse_shape %4 [[0, 1]] : tensor<8x16xf16> into tensor<128xf16>
          %splat_74 = tensor.splat %cst : tensor<4x4x4xf32>
          tensor.yield %cst_3 : f16
        } : tensor<?x8x8xf16>
        %257 = arith.xori %c1053378056_i32, %c1492876984_i32 : i32
        %258 = math.powf %9, %9 : tensor<4x8x8xf32>
        %259 = math.exp %cst_23 : f32
        %alloc_65 = memref.alloc() : memref<4x4x4xi32>
        %260 = vector.broadcast %c1492876984_i32 : i32 to vector<4x8x8xi32>
        %261 = vector.broadcast %true_4 : i1 to vector<4x8x8xi1>
        %262 = vector.gather %alloc_65[%c4, %c13, %c3] [%260], %261, %260 : memref<4x4x4xi32>, vector<4x8x8xi32>, vector<4x8x8xi1>, vector<4x8x8xi32> into vector<4x8x8xi32>
        %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%17 : tensor<4x8x8xf32>) {
        ^bb0(%out: f32):
          %284 = memref.atomic_rmw mulf %cst_3, %alloc_21[%c1, %c4] : (f16, memref<8x16xf16>) -> f16
          %285 = math.atan2 %6, %6 : tensor<4x4x4xf32>
          %286 = math.log %0 : tensor<4x8x8xf32>
          %287 = vector.broadcast %cst_2 : f32 to vector<8x16xf32>
          %288 = math.exp2 %16 : tensor<4x8x8xf32>
          %289 = vector.broadcast %cst : f32 to vector<8x16xf32>
          %290 = vector.fma %289, %287, %287 : vector<8x16xf32>
          %alloc_73 = memref.alloc() : memref<4x8x4xi64>
          memref.copy %alloc_16, %alloc_73 : memref<4x8x4xi64> to memref<4x8x4xi64>
          %291 = math.rsqrt %cst : f32
          %292 = index.ceildivu %c5, %c2
          %293 = bufferization.clone %alloc_18 : memref<4x8x8xi64> to memref<4x8x8xi64>
          %294 = math.ipowi %reduced, %20 : tensor<8xi64>
          %295 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 64 - 128)>(%c4, %c3)
          %296 = affine.load %alloc_7[%c2, %c8, %c14] : memref<4x8x8xi16>
          %297 = arith.remf %cst_23, %cst_23 : f32
          %298 = arith.floordivsi %true_26, %true_4 : i1
          %299 = math.exp2 %4 : tensor<8x16xf16>
          %300 = math.log %collapsed : tensor<32x8xf32>
          %301 = vector.insertelement %cst_6, %19[%c15 : index] : vector<8xf32>
          %c1_i64_74 = arith.constant 1 : i64
          %302 = vector.transfer_read %1[%c12, %292], %c1_i64_74 : tensor<8x16xi64>, vector<i64>
          %303 = index.casts %c1_i64_74 : i64 to index
          %304 = arith.minui %c1225607385_i64, %c151266709_i64 : i64
          %305 = math.atan2 %2, %5 : tensor<4x4x4xf32>
          %306 = index.add %c8, %c7
          %307 = vector.broadcast %cst_2 : f32 to vector<16xf32>
          %308 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %19, %290, %307 : vector<8xf32>, vector<8x16xf32> into vector<16xf32>
          %cast_75 = tensor.cast %2 : tensor<4x4x4xf32> to tensor<?x?x?xf32>
          %309 = arith.cmpi eq, %true_27, %false_5 : i1
          %310 = arith.ceildivsi %false_5, %true_26 : i1
          %311 = affine.min affine_map<(d0) -> (d0 mod 2, d0, d0 mod 2 + d0)>(%c7)
          %312 = index.ceildivu %c5, %c2
          %313 = bufferization.to_tensor %alloc_18 : memref<4x8x8xi64>
          %314 = math.atan2 %4, %4 : tensor<8x16xf16>
          %315 = arith.mulf %cst_2, %cst_23 : f32
          linalg.yield %cst_0 : f32
        } -> tensor<4x8x8xf32>
        %rank_66 = tensor.rank %generated_64 : tensor<?x8x8xf16>
        %splat = tensor.splat %cst_0 : tensor<4x4x4xf32>
        %collapsed_67 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<4x4x4xi64> into tensor<16x4xi64>
        memref.assume_alignment %alloc_17, 2 : memref<4x8x8xf16>
        %expanded_68 = tensor.expand_shape %9 [[0], [1], [2, 3]] : tensor<4x8x8xf32> into tensor<4x8x8x1xf32>
        %264 = math.tanh %5 : tensor<4x4x4xf32>
        %265 = arith.shrui %false_1, %false : i1
        %266 = vector.broadcast %false : i1 to vector<8x8x8x8xi1>
        %267 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %261, %261, %266 : vector<4x8x8xi1>, vector<4x8x8xi1> into vector<8x8x8x8xi1>
        %268 = vector.broadcast %true : i1 to vector<i1>
        vector.transfer_write %268, %alloc_15[%c3, %c10, %c13] : vector<i1>, memref<4x8x4xi1>
        %269 = bufferization.to_memref %7 : memref<4x4x4xi64>
        %270 = math.roundeven %splat : tensor<4x4x4xf32>
        %271 = tensor.empty() : tensor<4x8x8xf32>
        %mapped_69 = linalg.map ins(%12, %0, %12 : tensor<4x8x8xf32>, tensor<4x8x8xf32>, tensor<4x8x8xf32>) outs(%271 : tensor<4x8x8xf32>)
          (%in_73: f32, %in_74: f32, %in_75: f32) {
            %284 = math.cttz %expanded_63 : tensor<8x16x1xi64>
            %expanded_76 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<4x8x4xi1> into tensor<4x8x4x1xi1>
            %285 = math.atan2 %15, %15 : tensor<4x8x4xf16>
            %286 = arith.negf %in_75 : f32
            %287 = arith.xori %in, %c1225607385_i64 : i64
            %288 = math.ceil %13 : tensor<8x16xf16>
            %289 = affine.max affine_map<(d0, d1) -> (-d0)>(%c8, %c12)
            %290 = math.ctpop %22 : tensor<i64>
            %291 = arith.divsi %true, %false : i1
            %292 = vector.extract_strided_slice %262 {offsets = [2], sizes = [2], strides = [1]} : vector<4x8x8xi32> to vector<2x8x8xi32>
            %293 = tensor.empty() : tensor<8x16xf16>
            %294 = vector.broadcast %in_74 : f32 to vector<8x8xf32>
            %295 = vector.transfer_write %294, %16[%c6, %c10, %rank_66] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<8x8xf32>, tensor<4x8x8xf32>
            %296 = math.tanh %cst_23 : f32
            %297 = arith.addf %cst_6, %cst_2 : f32
            %298 = vector.create_mask %c8, %c8, %c9 : vector<4x8x8xi1>
            %299 = index.maxs %35, %289
            %300 = index.floordivs %c9, %c6
            %301 = vector.broadcast %cst_3 : f16 to vector<4xf16>
            %302 = vector.transfer_write %301, %4[%c12, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xf16>, tensor<8x16xf16>
            %303 = arith.shrsi %in, %c1225607385_i64 : i64
            %alloc_77 = memref.alloc() : memref<8x16xi1>
            memref.copy %alloc_10, %alloc_77 : memref<8x16xi1> to memref<8x16xi1>
            %304 = vector.broadcast %cst_23 : f32 to vector<4x4x4xf32>
            %305 = vector.fma %304, %304, %304 : vector<4x4x4xf32>
            %306 = memref.atomic_rmw mins %c1053378056_i32, %alloc_65[%c0, %c2, %c2] : (i32, memref<4x4x4xi32>) -> i32
            %307 = index.floordivs %c11, %c2
            %308 = math.rsqrt %5 : tensor<4x4x4xf32>
            %collapsed_78 = tensor.collapse_shape %3 [[0, 1]] : tensor<8x16xi32> into tensor<128xi32>
            %309 = arith.maxui %true, %true_4 : i1
            %310 = arith.negf %cst_23 : f32
            memref.assume_alignment %alloc_14, 16 : memref<4x4x4xf16>
            %311 = arith.addi %true_26, %true_27 : i1
            %312 = vector.broadcast %in_74 : f32 to vector<4x4xf32>
            %313 = vector.insert %312, %304 [3] : vector<4x4xf32> into vector<4x4x4xf32>
            %314 = math.floor %4 : tensor<8x16xf16>
            affine.store %cst_3, %alloc_17[%c0, %c8, %c2] : memref<4x8x8xf16>
            %cst_79 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_79 : f32
          }
        %272 = memref.atomic_rmw assign %cst_3, %alloc_17[%c3, %c4, %c7] : (f16, memref<4x8x8xf16>) -> f16
        %273 = arith.remf %cst_3, %cst_3 : f16
        %274 = vector.broadcast %cst_2 : f32 to vector<f32>
        %275 = vector.transfer_write %274, %expanded_68[%c6, %c15, %rank_66, %c0] : vector<f32>, tensor<4x8x8x1xf32>
        %expanded_70 = tensor.expand_shape %12 [[0], [1], [2, 3]] : tensor<4x8x8xf32> into tensor<4x8x8x1xf32>
        %276 = memref.atomic_rmw mulf %cst_3, %alloc_11[%c3, %c5, %c2] : (f16, memref<4x8x8xf16>) -> f16
        %277 = vector.broadcast %c-28554_i16 : i16 to vector<4xi16>
        %278 = vector.broadcast %true_4 : i1 to vector<4xi1>
        %279 = vector.maskedload %alloc_7[%c2, %c6, %c7], %278, %277 : memref<4x8x8xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %280 = math.fpowi %cst, %c1492876984_i32 : f32, i32
        %false_71 = index.bool.constant false
        %281 = arith.addi %c1821023281_i32, %c1492876984_i32 : i32
        %282 = math.ctpop %22 : tensor<i64>
        %283 = math.tanh %cst_23 : f32
        %c1_i64_72 = arith.constant 1 : i64
        linalg.yield %c1_i64_72 : i64
      }
    %48 = memref.atomic_rmw addi %c151266709_i64, %alloc_18[%c2, %c2, %c1] : (i64, memref<4x8x8xi64>) -> i64
    %49 = math.tanh %17 : tensor<4x8x8xf32>
    %50 = arith.maxui %false_5, %true_26 : i1
    %51 = index.casts %c-28554_i16 : i16 to index
    %rank = tensor.rank %8 : tensor<4x4x4xi16>
    %52 = math.log1p %5 : tensor<4x4x4xf32>
    %53 = index.mul %44, %c5
    %54 = vector.shuffle %19, %19 [2, 3, 4, 5, 6, 7, 8, 12, 13, 14] : vector<8xf32>, vector<8xf32>
    memref.alloca_scope  {
      %255 = arith.floordivsi %false, %true_4 : i1
      %256 = math.log10 %2 : tensor<4x4x4xf32>
      %257 = vector.broadcast %cst_6 : f32 to vector<8x8xf32>
      %dest_63, %accumulated_value_64 = vector.scan <maxf>, %257, %19 {inclusive = true, reduction_dim = 0 : i64} : vector<8x8xf32>, vector<8xf32>
      %258 = math.ipowi %false_5, %true : i1
      %259 = arith.remui %c1053378056_i32, %c1492876984_i32 : i32
      %260 = math.fpowi %cst_2, %c1821023281_i32 : f32, i32
      %261 = vector.reduction <minf>, %19 : vector<8xf32> into f32
      %alloc_65 = memref.alloc() : memref<4x4x4xi1>
      memref.copy %alloc, %alloc_65 : memref<4x4x4xi1> to memref<4x4x4xi1>
      %c0_i64_66 = arith.constant 0 : i64
      %262 = vector.transfer_read %20[%c12], %c0_i64_66 : tensor<8xi64>, vector<i64>
      %263 = arith.negf %cst_3 : f16
      %264 = bufferization.to_memref %39 : memref<8x16xi64>
      %265 = math.powf %15, %15 : tensor<4x8x4xf16>
      %266 = tensor.empty() : tensor<4xi64>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%266 : tensor<4xi64>) outs(%7 : tensor<4x4x4xi64>) {
      ^bb0(%in: i64, %out: i64):
        %284 = tensor.empty() : tensor<4x8x4xi32>
        %285 = math.cttz %1 : tensor<8x16xi64>
        %286 = index.ceildivu %c10, %44
        vector.print %19 : vector<8xf32>
        %true_68 = arith.constant true
        %287 = arith.remf %cst_0, %cst_2 : f32
        %288 = arith.muli %out, %out : i64
        %289 = math.ctpop %3 : tensor<8x16xi32>
        %290 = bufferization.clone %alloc_12 : memref<4x8x8xf32> to memref<4x8x8xf32>
        %splat = tensor.splat %cst_2 : tensor<4x4x4xf32>
        %alloca = memref.alloca() : memref<4x4x4xf32>
        %291 = arith.addf %cst_0, %cst_2 : f32
        %292 = arith.shrui %c0_i64_66, %c1225607385_i64 : i64
        %293 = index.ceildivs %c1, %c6
        %294 = math.log10 %collapsed : tensor<32x8xf32>
        %295 = arith.shli %true_27, %true : i1
        %296 = arith.shli %true_26, %false_5 : i1
        %297 = math.tanh %cst : f32
        %298 = vector.broadcast %cst_0 : f32 to vector<4x4x4xf32>
        %299 = arith.divf %cst_0, %cst_23 : f32
        %300 = arith.negf %cst_23 : f32
        %301 = bufferization.to_tensor %290 : memref<4x8x8xf32>
        %302 = affine.apply affine_map<(d0, d1) -> (d0 floordiv 32)>(%44, %c13)
        %303 = tensor.empty() : tensor<16x4xi64>
        %304 = tensor.empty() : tensor<8x4xi64>
        %305 = linalg.matmul ins(%1, %303 : tensor<8x16xi64>, tensor<16x4xi64>) outs(%304 : tensor<8x4xi64>) -> tensor<8x4xi64>
        %306 = vector.create_mask %c13, %44, %c2 : vector<4x8x4xi1>
        %rank_69 = tensor.rank %13 : tensor<8x16xf16>
        bufferization.dealloc_tensor %13 : tensor<8x16xf16>
        %307 = index.ceildivs %c9, %c15
        %308 = math.log10 %17 : tensor<4x8x8xf32>
        %309 = math.tanh %12 : tensor<4x8x8xf32>
        %310 = math.expm1 %15 : tensor<4x8x4xf16>
        %311 = arith.muli %c1053378056_i32, %c1821023281_i32 : i32
        linalg.yield %c151266709_i64 : i64
      } -> tensor<4x4x4xi64>
      %268 = vector.splat %cst_0 : vector<4x8x4xf32>
      %269 = arith.shrui %c0_i64_66, %c151266709_i64 : i64
      %270 = math.log10 %6 : tensor<4x4x4xf32>
      memref.store %c1225607385_i64, %alloc_16[%c3, %c2, %c3] : memref<4x8x4xi64>
      scf.if %true {
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %19, %cst_0 : vector<8xf32>, vector<8xf32> into f32
        %285 = math.atan %5 : tensor<4x4x4xf32>
        %286 = tensor.empty() : tensor<16x8xf16>
        %287 = tensor.empty() : tensor<8x8xf16>
        %288 = linalg.matmul ins(%4, %286 : tensor<8x16xf16>, tensor<16x8xf16>) outs(%287 : tensor<8x8xf16>) -> tensor<8x8xf16>
        %289 = vector.load %alloc_10[%c5, %c14] : memref<8x16xi1>, vector<4x8x8xi1>
        %290 = math.copysign %cst_3, %cst_3 : f16
        %291 = vector.insert %cst_23, %19 [1] : f32 into vector<8xf32>
        %292 = index.mul %c10, %c9
        %293 = arith.negf %cst : f32
      } else {
        %284 = arith.minf %cst_3, %cst_3 : f16
        %285 = arith.addf %cst_23, %cst : f32
        %286 = vector.transpose %19, [0] : vector<8xf32> to vector<8xf32>
        %287 = index.divu %c7, %35
        %288 = arith.muli %true_4, %false_1 : i1
        %289 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 2 + 32)>(%287, %c0, %c8)
        %290 = index.castu %c-28554_i16 : i16 to index
        %alloca = memref.alloca() : memref<4x8x4xi32>
      }
      scf.if %true_27 {
        %collapsed_68 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<4x8x4xi1> into tensor<32x4xi1>
        %284 = bufferization.to_memref %5 : memref<4x4x4xf32>
        %285 = memref.load %alloc_7[%c2, %c5, %c1] : memref<4x8x8xi16>
        %286 = arith.maxf %cst, %cst_23 : f32
        %287 = math.round %cst_23 : f32
        %288 = vector.load %alloc_12[%c0, %c5, %c4] : memref<4x8x8xf32>, vector<4x8x4xf32>
        %cast_69 = tensor.cast %18 : tensor<8xi64> to tensor<?xi64>
        %289 = math.rsqrt %2 : tensor<4x4x4xf32>
      }
      %271 = vector.create_mask %c15, %rank, %44 : vector<4x8x8xi1>
      %272 = arith.maxsi %c151266709_i64, %c1225607385_i64 : i64
      %generated_67 = tensor.generate %c14 {
      ^bb0(%arg0: index, %arg1: index, %arg2: index):
        %extracted_68 = tensor.extract %21[] : tensor<i64>
        %284 = arith.divsi %false_1, %false_5 : i1
        %285 = affine.min affine_map<(d0, d1, d2) -> (0, d2)>(%rank, %c13, %arg2)
        %286 = memref.atomic_rmw addf %cst_23, %alloc_12[%c3, %c0, %c0] : (f32, memref<4x8x8xf32>) -> f32
        tensor.yield %c-28554_i16 : i16
      } : tensor<?x4x4xi16>
      %273 = math.expm1 %9 : tensor<4x8x8xf32>
      %274 = math.floor %16 : tensor<4x8x8xf32>
      %275 = tensor.empty() : tensor<4x8x4xi32>
      %276 = math.fpowi %15, %275 : tensor<4x8x4xf16>, tensor<4x8x4xi32>
      %277 = vector.create_mask %35, %c13 : vector<8x16xi1>
      %278 = arith.shli %c-28554_i16, %c-28554_i16 : i16
      %279 = vector.broadcast %false : i1 to vector<i1>
      vector.transfer_write %279, %alloc[%rank, %c4, %c6] : vector<i1>, memref<4x4x4xi1>
      %280 = arith.shli %c1053378056_i32, %c1492876984_i32 : i32
      %281 = index.floordivs %c3, %c0
      %282 = index.mul %c11, %c6
      %283 = math.tan %6 : tensor<4x4x4xf32>
    }
    %55 = scf.execute_region -> memref<4x8x8xi16> {
      %255 = vector.broadcast %cst_0 : f32 to vector<8x16xf32>
      %256 = vector.fma %255, %255, %255 : vector<8x16xf32>
      affine.store %cst, %alloc_12[%c10, %c2, %c3] : memref<4x8x8xf32>
      scf.if %true_26 {
        %true_65 = index.bool.constant true
        %271 = vector.broadcast %cst_6 : f32 to vector<4x8x4xf32>
        %272 = vector.fma %271, %271, %271 : vector<4x8x4xf32>
        %273 = math.atan2 %cst_6, %cst_6 : f32
        %274 = bufferization.to_tensor %alloc_9 : memref<4x8x4xf32>
        %275 = vector.broadcast %c1492876984_i32 : i32 to vector<4x8x4xi32>
        %276 = affine.min affine_map<(d0) -> (-d0, (d0 - 8) mod 128, (d0 ceildiv 4) mod 32, d0 + ((d0 ceildiv 4) mod 2) floordiv 16 - 8)>(%c13)
        %277 = math.floor %9 : tensor<4x8x8xf32>
        %278 = arith.remf %cst_0, %cst_0 : f32
      }
      %257 = vector.broadcast %cst_23 : f32 to vector<4x8x4xf32>
      %258 = index.divu %c8, %c8
      %259 = arith.addf %cst, %cst_23 : f32
      %260 = affine.if affine_set<(d0, d1, d2, d3) : (d3 - d1 >= 0, d3 - d1 - 128 >= 0, (d3 - d1) floordiv 2 == 0)>(%c9, %c7, %c12, %c3) -> i64 {
        %collapsed_65 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<4x8x8xf32> into tensor<32x8xf32>
        %271 = vector.reduction <add>, %19 : vector<8xf32> into f32
        %alloc_66 = memref.alloc() : memref<8x16xf16>
        memref.copy %alloc_21, %alloc_66 : memref<8x16xf16> to memref<8x16xf16>
        vector.print %19 : vector<8xf32>
        %false_67 = index.bool.constant false
        %272 = arith.addi %c-28554_i16, %c-28554_i16 : i16
        %273 = math.ipowi %39, %39 : tensor<8x16xi64>
        %274 = tensor.empty() : tensor<4x8x4xi16>
        affine.yield %c151266709_i64 : i64
      } else {
        %271 = vector.broadcast %c151266709_i64 : i64 to vector<8x16xi64>
        %272 = vector.broadcast %true_27 : i1 to vector<8x16xi1>
        %273 = vector.broadcast %c1492876984_i32 : i32 to vector<8x16xi32>
        %274 = vector.gather %7[%c3, %rank, %53] [%273], %272, %271 : tensor<4x4x4xi64>, vector<8x16xi32>, vector<8x16xi1>, vector<8x16xi64> into vector<8x16xi64>
        %275 = index.ceildivu %44, %c10
        %276 = arith.divui %c1492876984_i32, %c1053378056_i32 : i32
        %277 = index.sub %c3, %c1
        %splat = tensor.splat %cst_3 : tensor<4x8x4xf16>
        %278 = arith.minsi %c1492876984_i32, %c1492876984_i32 : i32
        %inserted = tensor.insert %c1225607385_i64 into %7[%c0, %c2, %c1] : tensor<4x4x4xi64>
        memref.store %c-28554_i16, %alloc_7[%c2, %c0, %c5] : memref<4x8x8xi16>
        affine.yield %c1225607385_i64 : i64
      }
      %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %cst_6 : vector<8xf32>, vector<8xf32> into f32
      %262 = math.floor %12 : tensor<4x8x8xf32>
      %263 = arith.muli %true_27, %true_26 : i1
      %264 = tensor.empty() : tensor<4x8x8xf32>
      %mapped_63 = linalg.map ins(%16 : tensor<4x8x8xf32>) outs(%264 : tensor<4x8x8xf32>)
        (%in: f32) {
          %271 = index.ceildivs %c15, %c1
          memref.store %c151266709_i64, %alloc_16[%c2, %c4, %c0] : memref<4x8x4xi64>
          %extracted_65 = tensor.extract %3[%c6, %c13] : tensor<8x16xi32>
          %272 = math.floor %9 : tensor<4x8x8xf32>
          %273 = vector.load %alloc_20[%c2, %c13] : memref<8x16xi64>, vector<4x4x4xi64>
          %274 = vector.shuffle %255, %256 [0, 6, 7, 9, 10, 11, 12, 15] : vector<8x16xf32>, vector<8x16xf32>
          %275 = math.log2 %9 : tensor<4x8x8xf32>
          %276 = affine.max affine_map<(d0, d1, d2) -> (d1, d2)>(%c0, %c12, %c13)
          %277 = index.add %c4, %c12
          %278 = math.log10 %12 : tensor<4x8x8xf32>
          %279 = math.ctpop %21 : tensor<i64>
          %280 = arith.shrsi %false_1, %false_1 : i1
          %281 = vector.broadcast %c1225607385_i64 : i64 to vector<8x8xi64>
          %282 = vector.transfer_write %281, %7[%c13, %c11, %c6] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<8x8xi64>, tensor<4x4x4xi64>
          %283 = math.roundeven %4 : tensor<8x16xf16>
          %284 = arith.divsi %false, %false_1 : i1
          %cast_66 = tensor.cast %collapsed : tensor<32x8xf32> to tensor<?x?xf32>
          %collapsed_67 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<4x4x4xi64> into tensor<16x4xi64>
          %285 = vector.shuffle %257, %257 [4, 5, 7] : vector<4x8x4xf32>, vector<4x8x4xf32>
          %collapsed_68 = tensor.collapse_shape %cast_66 [[0, 1]] : tensor<?x?xf32> into tensor<?xf32>
          %rank_69 = tensor.rank %4 : tensor<8x16xf16>
          %286 = vector.broadcast %false_1 : i1 to vector<4xi1>
          %287 = vector.maskedload %alloc_10[%c5, %c12], %286, %286 : memref<8x16xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
          %rank_70 = tensor.rank %collapsed : tensor<32x8xf32>
          %288 = affine.min affine_map<(d0, d1, d2) -> (d1 * 2 - d2, d0)>(%c13, %c13, %c6)
          %289 = index.ceildivu %c15, %c7
          %290 = bufferization.to_tensor %alloc_10 : memref<8x16xi1>
          %291 = math.cttz %extracted_65 : i32
          %292 = math.tanh %264 : tensor<4x8x8xf32>
          %293 = arith.minui %c1821023281_i32, %c1492876984_i32 : i32
          %294 = math.exp %13 : tensor<8x16xf16>
          %295 = math.copysign %264, %264 : tensor<4x8x8xf32>
          affine.store %c151266709_i64, %41[%c15] : memref<8xi64>
          %296 = arith.mulf %cst, %cst_6 : f32
          %cst_71 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_71 : f32
        }
      %265 = math.expm1 %2 : tensor<4x4x4xf32>
      %266 = vector.broadcast %c-28554_i16 : i16 to vector<8xi16>
      %267 = vector.broadcast %true_26 : i1 to vector<8xi1>
      %268 = vector.maskedload %alloc_8[%c2, %c0, %c3], %267, %266 : memref<4x4x4xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
      %269 = index.ceildivu %c8, %c15
      %generated_64 = tensor.generate %44 {
      ^bb0(%arg0: index, %arg1: index, %arg2: index):
        %271 = arith.divf %cst_23, %cst_0 : f32
        %272 = arith.divf %cst_2, %cst_2 : f32
        %273 = arith.addf %cst_2, %cst_23 : f32
        %dest_65, %accumulated_value_66 = vector.scan <mul>, %255, %19 {inclusive = true, reduction_dim = 1 : i64} : vector<8x16xf32>, vector<8xf32>
        tensor.yield %cst_3 : f16
      } : tensor<?x4x4xf16>
      %270 = arith.divsi %false_1, %true_4 : i1
      scf.yield %alloc_7 : memref<4x8x8xi16>
    }
    %56 = arith.cmpf oeq, %cst_0, %cst_0 : f32
    %57 = arith.cmpi ne, %c1821023281_i32, %c1053378056_i32 : i32
    %58 = vector.load %alloc_16[%c3, %c4, %c0] : memref<4x8x4xi64>, vector<4x4x4xi64>
    memref.store %cst, %alloc_22[%c3, %c0, %c0] : memref<4x4x4xf32>
    %59 = tensor.empty() : tensor<16x16xf16>
    %60 = tensor.empty() : tensor<8x16xf16>
    %61 = linalg.matmul ins(%13, %59 : tensor<8x16xf16>, tensor<16x16xf16>) outs(%60 : tensor<8x16xf16>) -> tensor<8x16xf16>
    %62 = arith.cmpf ole, %cst_2, %cst_6 : f32
    %63 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 16)>(%c13, %c14, %44)
    %64 = affine.max affine_map<(d0, d1) -> (d1 ceildiv 128)>(%63, %c0)
    %65 = math.powf %12, %12 : tensor<4x8x8xf32>
    %66 = index.floordivs %c9, %35
    scf.if %true {
      %collapsed_63 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<4x4x4xf32> into tensor<16x4xf32>
      %255 = math.rsqrt %12 : tensor<4x8x8xf32>
      %256 = arith.ceildivsi %c1225607385_i64, %c1225607385_i64 : i64
      %257 = arith.muli %true_27, %true_27 : i1
      %258 = tensor.empty() : tensor<4x4x4xi32>
      %259 = math.fpowi %2, %258 : tensor<4x4x4xf32>, tensor<4x4x4xi32>
      %260 = index.ceildivu %c3, %rank
      bufferization.dealloc_tensor %7 : tensor<4x4x4xi64>
      %261 = vector.load %alloc_15[%c1, %c2, %c1] : memref<4x8x4xi1>, vector<8x16xi1>
    } else {
      %255 = math.floor %cst_23 : f32
      %256 = math.ipowi %false, %true_27 : i1
      %257 = scf.while (%arg0 = %19) : (vector<8xf32>) -> vector<8xf32> {
        %262 = index.ceildivs %c4, %53
        %263 = memref.load %alloc_19[%c1, %c3, %c2] : memref<4x8x4xi32>
        %collapsed_64 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<4x8x8xf32> into tensor<32x8xf32>
        %rank_65 = tensor.rank %8 : tensor<4x4x4xi16>
        %264 = index.floordivs %c2, %c11
        %265 = arith.mulf %cst_0, %cst_6 : f32
        %266 = arith.addf %cst_23, %cst_2 : f32
        %267 = index.floordivs %63, %c14
        scf.condition(%true_27) %19 : vector<8xf32>
      } do {
      ^bb0(%arg0: vector<8xf32>):
        memref.copy %55, %alloc_7 : memref<4x8x8xi16> to memref<4x8x8xi16>
        %262 = arith.divf %cst_6, %cst_2 : f32
        %263 = affine.min affine_map<(d0) -> (d0, (d0 - 32) ceildiv 4, (-(d0 - 32) + 64) * 32, (-(d0 - 32) + 64) * 32)>(%c8)
        %264 = math.powf %2, %2 : tensor<4x4x4xf32>
        %265 = vector.load %alloc_11[%c3, %c3, %c0] : memref<4x8x8xf16>, vector<4x8x8xf16>
        %alloc_64 = memref.alloc() : memref<16x8xf16>
        %266 = tensor.empty() : tensor<8x8xf16>
        %267 = linalg.matmul ins(%13, %alloc_64 : tensor<8x16xf16>, memref<16x8xf16>) outs(%266 : tensor<8x8xf16>) -> tensor<8x8xf16>
        %268 = math.expm1 %0 : tensor<4x8x8xf32>
        %269 = arith.shrui %c1492876984_i32, %c1821023281_i32 : i32
        %270 = math.floor %60 : tensor<8x16xf16>
        %271 = math.exp %collapsed : tensor<32x8xf32>
        %true_65 = index.bool.constant true
        %272 = math.atan2 %cst_0, %cst_0 : f32
        %273 = affine.load %alloc_7[%c13, %c0, %c2] : memref<4x8x8xi16>
        %274 = math.tanh %15 : tensor<4x8x4xf16>
        %275 = math.round %17 : tensor<4x8x8xf32>
        %276 = memref.realloc %41 : memref<8xi64> to memref<4xi64>
        scf.yield %19 : vector<8xf32>
      }
      %alloc_63 = memref.alloc() : memref<4x8x8xi64>
      memref.copy %alloc_18, %alloc_63 : memref<4x8x8xi64> to memref<4x8x8xi64>
      %258 = index.ceildivu %c10, %c6
      %259 = math.rsqrt %15 : tensor<4x8x4xf16>
      %260 = arith.minf %cst_23, %cst_0 : f32
      %261 = bufferization.clone %alloc_14 : memref<4x4x4xf16> to memref<4x4x4xf16>
    }
    %67 = math.exp2 %15 : tensor<4x8x4xf16>
    %68 = vector.flat_transpose %19 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
    %69 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %68, %19, %cst_6 : vector<8xf32>, vector<8xf32> into f32
    %70 = tensor.empty() : tensor<4x4xf32>
    %71 = tensor.empty() : tensor<4xf32>
    %72 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%70, %71 : tensor<4x4xf32>, tensor<4xf32>) outs(%6 : tensor<4x4x4xf32>) {
    ^bb0(%in: f32, %in_63: f32, %out: f32):
      %255 = math.floor %12 : tensor<4x8x8xf32>
      %256 = vector.broadcast %out : f32 to vector<8x16xf32>
      %257 = vector.fma %256, %256, %256 : vector<8x16xf32>
      %258 = arith.remsi %c1053378056_i32, %c1821023281_i32 : i32
      %259 = math.copysign %15, %15 : tensor<4x8x4xf16>
      %260 = vector.broadcast %c151266709_i64 : i64 to vector<4x4xi64>
      %dest_64, %accumulated_value_65 = vector.scan <and>, %58, %260 {inclusive = false, reduction_dim = 2 : i64} : vector<4x4x4xi64>, vector<4x4xi64>
      %261 = affine.if affine_set<(d0) : (0 == 0, 0 >= 0)>(%c5) -> memref<4x4x4xi64> {
        %287 = index.castu %c1225607385_i64 : i64 to index
        %288 = arith.addi %c1225607385_i64, %c151266709_i64 : i64
        %289 = vector.broadcast %in_63 : f32 to vector<8x16xf32>
        %290 = affine.max affine_map<(d0, d1, d2) -> (d0 floordiv 4 + 16, d2)>(%c12, %c14, %c5)
        %291 = math.atan2 %60, %13 : tensor<8x16xf16>
        %292 = arith.addf %out, %cst_23 : f32
        %293 = math.cttz %1 : tensor<8x16xi64>
        %294 = arith.addf %cst_3, %cst_3 : f16
        %alloc_70 = memref.alloc() : memref<4x4x4xi64>
        affine.yield %alloc_70 : memref<4x4x4xi64>
      } else {
        %287 = affine.min affine_map<(d0) -> (-d0, -d0, d0 - 8, d0)>(%c15)
        %288 = index.casts %53 : index to i32
        memref.store %cst_3, %alloc_17[%c1, %c0, %c4] : memref<4x8x8xf16>
        %289 = arith.remf %cst_23, %cst_2 : f32
        %290 = index.maxs %c1, %64
        %291 = vector.broadcast %in_63 : f32 to vector<8x16xf32>
        %292 = vector.fma %291, %291, %256 : vector<8x16xf32>
        %293 = math.atan2 %cst_0, %in : f32
        %294 = math.floor %2 : tensor<4x4x4xf32>
        %alloc_70 = memref.alloc() : memref<4x4x4xi64>
        affine.yield %alloc_70 : memref<4x4x4xi64>
      }
      %262 = vector.broadcast %cst_3 : f16 to vector<8xf16>
      %263 = vector.broadcast %true_26 : i1 to vector<8xi1>
      %264 = vector.maskedload %alloc_14[%c2, %c1, %c0], %263, %262 : memref<4x4x4xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
      %265 = vector.broadcast %in : f32 to vector<4x8xf32>
      %266 = vector.transfer_write %265, %5[%63, %c3, %c13] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<4x8xf32>, tensor<4x4x4xf32>
      %267 = tensor.empty(%c0) : tensor<4x?x4xi1>
      %268 = index.ceildivu %66, %51
      %269 = vector.transpose %265, [1, 0] : vector<4x8xf32> to vector<8x4xf32>
      %270 = index.divs %rank, %c14
      %271 = affine.load %alloc_18[%c13, %c7, %c11] : memref<4x8x8xi64>
      %272 = math.log2 %0 : tensor<4x8x8xf32>
      %273 = index.divs %c1, %c14
      %274 = index.ceildivs %c10, %53
      %275 = bufferization.to_tensor %alloc_7 : memref<4x8x8xi16>
      %expanded_66 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<4x8x8xf32> into tensor<4x8x8x1xf32>
      %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %263, %263, %true_26 : vector<8xi1>, vector<8xi1> into i1
      bufferization.dealloc_tensor %15 : tensor<4x8x4xf16>
      %277 = tensor.empty() : tensor<4x8x8xi32>
      %278 = math.fpowi %0, %277 : tensor<4x8x8xf32>, tensor<4x8x8xi32>
      %279 = arith.remf %cst_3, %cst_3 : f16
      %280 = math.exp2 %in_63 : f32
      %splat = tensor.splat %cst_6 : tensor<4x8x8xf32>
      %281 = arith.shli %c151266709_i64, %c151266709_i64 : i64
      %282 = vector.broadcast %cst_0 : f32 to vector<4xf32>
      %dest_67, %accumulated_value_68 = vector.scan <maxf>, %265, %282 {inclusive = true, reduction_dim = 1 : i64} : vector<4x8xf32>, vector<4xf32>
      %283 = math.ipowi %c1053378056_i32, %c1053378056_i32 : i32
      %alloc_69 = memref.alloc() : memref<4x4x4xi64>
      %284 = arith.ori %true_26, %true_4 : i1
      affine.store %c1225607385_i64, %alloc_18[%c15, %c15, %c3] : memref<4x8x8xi64>
      %285 = arith.minsi %true_26, %true : i1
      %286 = vector.shuffle %58, %58 [0, 1, 6] : vector<4x4x4xi64>, vector<4x4x4xi64>
      linalg.yield %in_63 : f32
    } -> tensor<4x4x4xf32>
    %73 = math.log10 %4 : tensor<8x16xf16>
    %74 = math.powf %cst, %cst_2 : f32
    %75 = math.cttz %14 : tensor<4x8x4xi1>
    %76 = tensor.empty() : tensor<8x16xi64>
    %mapped_28 = linalg.map ins(%alloc_20 : memref<8x16xi64>) outs(%76 : tensor<8x16xi64>)
      (%in: i64) {
        %255 = arith.divsi %c151266709_i64, %c1225607385_i64 : i64
        %alloc_63 = memref.alloc() : memref<8x16xi1>
        memref.copy %alloc_10, %alloc_63 : memref<8x16xi1> to memref<8x16xi1>
        %256 = arith.remf %cst_0, %cst_6 : f32
        %257 = math.copysign %5, %5 : tensor<4x4x4xf32>
        %258 = arith.cmpi eq, %c1492876984_i32, %c1492876984_i32 : i32
        %259 = vector.broadcast %cst_23 : f32 to vector<8x16xf32>
        %260 = arith.mulf %cst_23, %cst_2 : f32
        %261 = arith.remsi %c151266709_i64, %c151266709_i64 : i64
        %262 = math.log10 %2 : tensor<4x4x4xf32>
        %263 = arith.mulf %cst_0, %cst_0 : f32
        memref.copy %alloc_17, %alloc_11 : memref<4x8x8xf16> to memref<4x8x8xf16>
        %264 = math.exp %cst : f32
        bufferization.dealloc_tensor %5 : tensor<4x4x4xf32>
        %265 = index.castu %c151266709_i64 : i64 to index
        %alloc_64 = memref.alloc() : memref<4x4xi64>
        %alloc_65 = memref.alloc() : memref<4xi64>
        %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_64, %alloc_65 : memref<4x4xi64>, memref<4xi64>) outs(%11 : tensor<4x4x4xi64>) {
        ^bb0(%in_70: i64, %in_71: i64, %out: i64):
          %alloc_72 = memref.alloc() : memref<4x4x4xi32>
          %280 = vector.broadcast %c1492876984_i32 : i32 to vector<4x4x4xi32>
          %281 = vector.broadcast %true_27 : i1 to vector<4x4x4xi1>
          %282 = vector.gather %alloc_72[%c9, %c4, %c3] [%280], %281, %280 : memref<4x4x4xi32>, vector<4x4x4xi32>, vector<4x4x4xi1>, vector<4x4x4xi32> into vector<4x4x4xi32>
          %283 = arith.andi %c-28554_i16, %c-28554_i16 : i16
          %284 = math.expm1 %12 : tensor<4x8x8xf32>
          %285 = arith.remf %cst, %cst_23 : f32
          %286 = arith.remf %cst_2, %cst : f32
          %287 = math.exp2 %9 : tensor<4x8x8xf32>
          %288 = math.floor %16 : tensor<4x8x8xf32>
          %289 = arith.minui %c1492876984_i32, %c1053378056_i32 : i32
          %290 = arith.maxui %c1492876984_i32, %c1821023281_i32 : i32
          %291 = arith.addf %cst_2, %cst_6 : f32
          %292 = vector.bitcast %68 : vector<8xf32> to vector<8xf32>
          %293 = vector.broadcast %c1492876984_i32 : i32 to vector<8xi32>
          %294 = vector.broadcast %false_5 : i1 to vector<8xi1>
          %295 = vector.maskedload %alloc_19[%c2, %c0, %c3], %294, %293 : memref<4x8x4xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
          %296 = math.log10 %4 : tensor<8x16xf16>
          %297 = arith.shrsi %in_70, %c1225607385_i64 : i64
          %298 = index.ceildivu %c1, %265
          %299 = tensor.empty() : tensor<4x8x8xi1>
          memref.assume_alignment %alloc_17, 8 : memref<4x8x8xf16>
          %300 = vector.extract %68[4] : vector<8xf32>
          %301 = affine.min affine_map<(d0, d1) -> (d1 + 3, -(d1 + 1))>(%c3, %c7)
          %302 = arith.negf %cst_23 : f32
          %303 = math.round %5 : tensor<4x4x4xf32>
          memref.assume_alignment %41, 16 : memref<8xi64>
          %304 = vector.broadcast %true : i1 to vector<8x16xi1>
          %305 = vector.load %alloc_12[%c0, %c4, %c1] : memref<4x8x8xf32>, vector<4x4x4xf32>
          %306 = arith.addf %cst_6, %cst_23 : f32
          %307 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 16)>(%35, %c1, %64)
          %308 = math.ipowi %8, %8 : tensor<4x4x4xi16>
          %309 = memref.load %alloc_21[%c2, %c12] : memref<8x16xf16>
          %alloc_73 = memref.alloc() : memref<4x4x4xf16>
          memref.copy %alloc_14, %alloc_73 : memref<4x4x4xf16> to memref<4x4x4xf16>
          %310 = tensor.empty() : tensor<4x4x4xi32>
          %311 = math.fpowi %5, %310 : tensor<4x4x4xf32>, tensor<4x4x4xi32>
          %312 = math.cos %17 : tensor<4x8x8xf32>
          %313 = arith.muli %c1821023281_i32, %c1821023281_i32 : i32
          linalg.yield %c151266709_i64 : i64
        } -> tensor<4x4x4xi64>
        %expanded_66 = tensor.expand_shape %3 [[0], [1, 2]] : tensor<8x16xi32> into tensor<8x16x1xi32>
        %267 = math.round %cst_23 : f32
        memref.store %cst_6, %alloc_13[%c4, %c9] : memref<8x16xf32>
        %268 = arith.ori %true_27, %false_5 : i1
        %269 = index.mul %c0, %c14
        %270 = arith.divf %cst_6, %cst_0 : f32
        %inserted = tensor.insert %cst_2 into %12[%c3, %c6, %c3] : tensor<4x8x8xf32>
        %false_67 = index.bool.constant false
        %271 = arith.muli %in, %in : i64
        %272 = vector.create_mask %c2, %35 : vector<8x16xi1>
        %273 = math.ipowi %8, %8 : tensor<4x4x4xi16>
        %274 = math.ctpop %false_5 : i1
        %275 = vector.broadcast %false_5 : i1 to vector<16x16xi1>
        %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %272, %272, %275 : vector<8x16xi1>, vector<8x16xi1> into vector<16x16xi1>
        %expanded_68 = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<4x4x4xf32> into tensor<4x4x4x1xf32>
        %277 = affine.apply affine_map<(d0, d1, d2) -> (((d0 + d2) * 2) floordiv 16)>(%c13, %66, %c12)
        %278 = arith.remf %cst_3, %cst_3 : f16
        %279 = vector.broadcast %true_27 : i1 to vector<4x8x4xi1>
        %c1_i64_69 = arith.constant 1 : i64
        linalg.yield %c1_i64_69 : i64
      }
    %77 = arith.mulf %cst, %cst_6 : f32
    %78 = math.exp %2 : tensor<4x4x4xf32>
    %79 = vector.broadcast %c1053378056_i32 : i32 to vector<4x8x8xi32>
    %80 = tensor.empty(%44, %c15) : tensor<?x8x?xi16>
    %81 = arith.negf %cst_6 : f32
    %generated_29 = tensor.generate %51, %c7 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      affine.store %true_4, %alloc[%c14, %c1, %c13] : memref<4x4x4xi1>
      %255 = index.divu %c10, %c11
      %256 = arith.subi %false_5, %true_4 : i1
      %257 = arith.negf %cst_6 : f32
      tensor.yield %cst : f32
    } : tensor<?x?x4xf32>
    bufferization.dealloc_tensor %8 : tensor<4x4x4xi16>
    %82 = vector.broadcast %true_4 : i1 to vector<4x8x4xi1>
    %83 = arith.floordivsi %c-28554_i16, %c-28554_i16 : i16
    %84 = arith.remf %cst_3, %cst_3 : f16
    %85 = tensor.empty() : tensor<8x16xf32>
    %86 = vector.broadcast %cst : f32 to vector<8x16xf32>
    %87 = vector.broadcast %true : i1 to vector<8x16xi1>
    %88 = vector.broadcast %c1492876984_i32 : i32 to vector<8x16xi32>
    %89 = vector.gather %85[%rank, %53] [%88], %87, %86 : tensor<8x16xf32>, vector<8x16xi32>, vector<8x16xi1>, vector<8x16xf32> into vector<8x16xf32>
    %cast = tensor.cast %18 : tensor<8xi64> to tensor<?xi64>
    %90 = arith.divsi %c1053378056_i32, %c1821023281_i32 : i32
    %91 = tensor.empty() : tensor<4x8x8xi16>
    %mapped_30 = linalg.map ins(%alloc_7, %alloc_7, %alloc_7 : memref<4x8x8xi16>, memref<4x8x8xi16>, memref<4x8x8xi16>) outs(%91 : tensor<4x8x8xi16>)
      (%in: i16, %in_63: i16, %in_64: i16) {
        %false_65 = index.bool.constant false
        %255 = vector.broadcast %cst : f32 to vector<16xf32>
        %256 = vector.insert %255, %89 [1] : vector<16xf32> into vector<8x16xf32>
        %257 = vector.broadcast %63 : index to vector<8xindex>
        %258 = vector.broadcast %false_5 : i1 to vector<8xi1>
        %259 = vector.broadcast %in_63 : i16 to vector<8xi16>
        vector.scatter %alloc_7[%c0, %c3, %c4] [%257], %258, %259 : memref<4x8x8xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %260 = tensor.empty() : tensor<4x8x4xi1>
        %mapped_66 = linalg.map ins(%10 : tensor<4x8x4xi1>) outs(%260 : tensor<4x8x4xi1>)
          (%in_75: i1) {
            %false_76 = index.bool.constant false
            %284 = memref.load %alloc_20[%c1, %c5] : memref<8x16xi64>
            %285 = index.add %53, %c15
            %286 = math.exp %9 : tensor<4x8x8xf32>
            %287 = arith.shli %c1821023281_i32, %c1821023281_i32 : i32
            %288 = arith.divf %cst_0, %cst : f32
            %289 = bufferization.to_tensor %alloc_16 : memref<4x8x4xi64>
            %290 = affine.min affine_map<(d0, d1) -> ((d0 - 64) ceildiv 64)>(%53, %c8)
            %291 = math.fma %85, %85, %85 : tensor<8x16xf32>
            %292 = vector.load %41[%c0] : memref<8xi64>, vector<4x4x4xi64>
            %293 = arith.addf %cst_3, %cst_3 : f16
            %294 = math.exp2 %5 : tensor<4x4x4xf32>
            %295 = arith.shrsi %in, %in_63 : i16
            memref.assume_alignment %alloc_21, 1 : memref<8x16xf16>
            affine.store %cst_3, %alloc_17[%c13, %c12, %c1] : memref<4x8x8xf16>
            %296 = math.expm1 %12 : tensor<4x8x8xf32>
            %297 = index.casts %in : i16 to index
            %298 = vector.load %alloc_21[%c0, %c15] : memref<8x16xf16>, vector<4x8x4xf16>
            %rank_77 = tensor.rank %4 : tensor<8x16xf16>
            %299 = tensor.empty() : tensor<4x8x4xf32>
            %300 = math.ipowi %260, %10 : tensor<4x8x4xi1>
            %collapsed_78 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<4x8x4xi1> into tensor<32x4xi1>
            %alloc_79 = memref.alloc() : memref<4x4x4xf16>
            %301 = index.maxs %rank, %c6
            %302 = vector.broadcast %true_4 : i1 to vector<4x8x4xi1>
            %303 = affine.min affine_map<(d0, d1, d2, d3) -> (d2)>(%301, %51, %c3, %c4)
            %304 = arith.muli %false_1, %false_1 : i1
            %305 = math.ctpop %47 : tensor<8xi64>
            %306 = math.exp2 %cst : f32
            %cst_80 = arith.constant 6.102400e+04 : f16
            %c1_i64_81 = arith.constant 1 : i64
            %307 = vector.transfer_read %20[%53], %c1_i64_81 : tensor<8xi64>, vector<i64>
            %308 = arith.minui %c1821023281_i32, %c1492876984_i32 : i32
            %false_82 = arith.constant false
            linalg.yield %false_82 : i1
          }
        %cst_67 = arith.constant 1.000000e+00 : f32
        %261 = vector.transfer_read %alloc_22[%c10, %c6, %64], %cst_67 : memref<4x4x4xf32>, vector<f32>
        %alloc_68 = memref.alloc() : memref<4x8x8xf16>
        %262 = arith.mulf %cst_3, %cst_3 : f16
        %263 = arith.shrui %c1225607385_i64, %c151266709_i64 : i64
        %264 = arith.floordivsi %c1225607385_i64, %c1225607385_i64 : i64
        %rank_69 = tensor.rank %260 : tensor<4x8x4xi1>
        %true_70 = index.bool.constant true
        %265 = arith.shrui %c1053378056_i32, %c1821023281_i32 : i32
        %true_71 = index.bool.constant true
        %266 = arith.floordivsi %true_27, %true_70 : i1
        %267 = vector.create_mask %rank_69, %rank : vector<8x16xi1>
        %268 = math.exp %12 : tensor<4x8x8xf32>
        %269 = math.absf %2 : tensor<4x4x4xf32>
        %270 = math.exp %13 : tensor<8x16xf16>
        bufferization.dealloc_tensor %0 : tensor<4x8x8xf32>
        %271 = tensor.empty() : tensor<8x16xf32>
        %mapped_72 = linalg.map ins(%85 : tensor<8x16xf32>) outs(%271 : tensor<8x16xf32>)
          (%in_75: f32) {
            %284 = index.floordivs %c12, %c5
            %285 = arith.ceildivsi %in, %in_64 : i16
            %286 = arith.ceildivsi %true_26, %false_65 : i1
            %c1_i16 = arith.constant 1 : i16
            %c0_i16_76 = arith.constant 0 : i16
            %287 = vector.transfer_read %8[%c15, %c5, %53], %c0_i16_76 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<4x4x4xi16>, vector<16xi16>
            %288 = math.fpowi %85, %3 : tensor<8x16xf32>, tensor<8x16xi32>
            %289 = arith.ori %c1_i16, %in : i16
            %290 = index.castu %c4 : index to i32
            %291 = math.cttz %in_64 : i16
            %292 = memref.load %41[%c3] : memref<8xi64>
            %293 = math.floor %0 : tensor<4x8x8xf32>
            %294 = math.ceil %cst : f32
            %295 = arith.divsi %true_71, %false : i1
            %296 = arith.shrsi %false_5, %true_26 : i1
            %297 = math.copysign %collapsed, %collapsed : tensor<32x8xf32>
            %298 = arith.shrui %false, %true_70 : i1
            %299 = arith.divui %true_70, %true : i1
            %300 = vector.broadcast %cst_2 : f32 to vector<16x16xf32>
            %301 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %86, %86, %300 : vector<8x16xf32>, vector<8x16xf32> into vector<16x16xf32>
            %302 = arith.maxui %true_4, %false : i1
            %303 = vector.extract_strided_slice %68 {offsets = [3], sizes = [5], strides = [1]} : vector<8xf32> to vector<5xf32>
            %304 = arith.muli %true_71, %false : i1
            %305 = math.rsqrt %9 : tensor<4x8x8xf32>
            %dest_77, %accumulated_value_78 = vector.scan <mul>, %86, %68 {inclusive = false, reduction_dim = 1 : i64} : vector<8x16xf32>, vector<8xf32>
            %306 = arith.remf %cst_2, %cst_0 : f32
            %307 = arith.minf %cst_6, %in_75 : f32
            %308 = arith.cmpf ole, %cst, %cst_6 : f32
            %309 = vector.create_mask %c11, %c8, %c10 : vector<4x4x4xi1>
            %310 = arith.divsi %c151266709_i64, %c151266709_i64 : i64
            %311 = arith.remf %cst, %cst : f32
            %312 = arith.andi %false_5, %false : i1
            %expanded_79 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<4x4x4xf32> into tensor<4x4x4x1xf32>
            %313 = arith.divsi %true_71, %true_27 : i1
            %314 = index.ceildivu %284, %c6
            %cst_80 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_80 : f32
          }
        %272 = vector.broadcast %c151266709_i64 : i64 to vector<4x4x4x4xi64>
        %273 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %58, %58, %272 : vector<4x4x4xi64>, vector<4x4x4xi64> into vector<4x4x4x4xi64>
        %274 = arith.shrui %true_27, %true_70 : i1
        %275 = math.tanh %9 : tensor<4x8x8xf32>
        %276 = memref.atomic_rmw mins %c1225607385_i64, %41[%c4] : (i64, memref<8xi64>) -> i64
        %277 = math.log10 %16 : tensor<4x8x8xf32>
        %278 = vector.broadcast %c1053378056_i32 : i32 to vector<16xi32>
        %dest_73, %accumulated_value_74 = vector.scan <minsi>, %88, %278 {inclusive = true, reduction_dim = 0 : i64} : vector<8x16xi32>, vector<16xi32>
        %279 = arith.remsi %true_27, %true_71 : i1
        %splat = tensor.splat %in_64 : tensor<4x8x4xi16>
        %280 = math.powf %5, %6 : tensor<4x4x4xf32>
        %281 = index.ceildivs %c1, %c15
        %282 = arith.maxui %c1225607385_i64, %c1225607385_i64 : i64
        %283 = affine.for %arg0 = 0 to 117 iter_args(%arg1 = %alloc_20) -> (memref<8x16xi64>) {
          affine.yield %arg1 : memref<8x16xi64>
        }
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %92 = math.log10 %6 : tensor<4x4x4xf32>
    %93 = bufferization.to_memref %9 : memref<4x8x8xf32>
    %rank_31 = tensor.rank %91 : tensor<4x8x8xi16>
    %94 = arith.floordivsi %false_1, %true_4 : i1
    %95 = arith.mulf %cst_23, %cst_6 : f32
    %96 = tensor.empty() : tensor<8x16xf32>
    %97 = vector.extract_strided_slice %68 {offsets = [2], sizes = [6], strides = [1]} : vector<8xf32> to vector<6xf32>
    %98 = arith.minsi %c1053378056_i32, %c1821023281_i32 : i32
    %99 = vector.load %93[%c3, %c2, %c3] : memref<4x8x8xf32>, vector<4x4x4xf32>
    %100 = math.ipowi %21, %22 : tensor<i64>
    scf.execute_region {
      %255 = memref.load %alloc_12[%c3, %c7, %c6] : memref<4x8x8xf32>
      %256 = arith.ceildivsi %c1492876984_i32, %c1821023281_i32 : i32
      %collapsed_63 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<4x8x8xf32> into tensor<32x8xf32>
      %257 = arith.mulf %cst_6, %cst_2 : f32
      %258 = math.ipowi %20, %47 : tensor<8xi64>
      %259 = vector.create_mask %64, %c14, %c4 : vector<4x8x8xi1>
      %260 = tensor.empty() : tensor<32x8xf32>
      %mapped_64 = linalg.map ins(%collapsed, %collapsed_63 : tensor<32x8xf32>, tensor<32x8xf32>) outs(%260 : tensor<32x8xf32>)
        (%in: f32, %in_65: f32) {
          %270 = math.exp %cst_3 : f16
          %271 = index.castu %false_1 : i1 to index
          %272 = index.divs %53, %271
          %273 = bufferization.to_tensor %alloc_19 : memref<4x8x4xi32>
          affine.store %c-28554_i16, %alloc_7[%c5, %c15, %c5] : memref<4x8x8xi16>
          %274 = affine.min affine_map<(d0, d1) -> ((d1 - (d1 + 8)) ceildiv 32 + 2, (d0 - 3) mod 16)>(%c14, %272)
          %false_66 = index.bool.constant false
          %275 = arith.floordivsi %c-28554_i16, %c-28554_i16 : i16
          %276 = math.absf %cst_2 : f32
          %alloc_67 = memref.alloc() : memref<4x8x8xi1>
          %277 = vector.broadcast %c1821023281_i32 : i32 to vector<4x8x4xi32>
          %278 = vector.gather %alloc_67[%c6, %63, %c6] [%277], %82, %82 : memref<4x8x8xi1>, vector<4x8x4xi32>, vector<4x8x4xi1>, vector<4x8x4xi1> into vector<4x8x4xi1>
          %279 = index.casts %false : i1 to index
          %280 = affine.load %alloc_11[%c5, %c8, %c8] : memref<4x8x8xf16>
          %281 = math.log2 %cst_3 : f16
          %282 = math.floor %2 : tensor<4x4x4xf32>
          %inserted = tensor.insert %in_65 into %collapsed_63[%c12, %c4] : tensor<32x8xf32>
          %283 = index.divs %c9, %272
          %284 = index.ceildivu %c1, %c11
          %285 = vector.reduction <maxf>, %19 : vector<8xf32> into f32
          %286 = arith.shli %true, %false : i1
          bufferization.dealloc_tensor %1 : tensor<8x16xi64>
          %alloc_68 = memref.alloc() : memref<4x8x4xi64>
          memref.copy %alloc_16, %alloc_68 : memref<4x8x4xi64> to memref<4x8x4xi64>
          %287 = math.powf %280, %280 : f16
          %288 = vector.create_mask %rank_31, %c3, %c10 : vector<4x4x4xi1>
          %289 = vector.broadcast %in_65 : f32 to vector<16xf32>
          %290 = vector.insert %289, %89 [6] : vector<16xf32> into vector<8x16xf32>
          %291 = math.floor %cst_23 : f32
          %292 = arith.minf %cst_23, %in : f32
          %293 = vector.extract_strided_slice %68 {offsets = [0], sizes = [6], strides = [1]} : vector<8xf32> to vector<6xf32>
          %294 = math.tan %4 : tensor<8x16xf16>
          %collapsed_69 = tensor.collapse_shape %13 [[0, 1]] : tensor<8x16xf16> into tensor<128xf16>
          %expanded_70 = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<4x4x4xf32> into tensor<4x4x4x1xf32>
          %expanded_71 = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<4x4x4xf32> into tensor<4x4x4x1xf32>
          bufferization.dealloc_tensor %12 : tensor<4x8x8xf32>
          %cst_72 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_72 : f32
        }
      %261 = vector.broadcast %false_1 : i1 to vector<8xi1>
      %262 = vector.maskedload %alloc_13[%c1, %c5], %261, %19 : memref<8x16xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
      %263 = vector.load %alloc_20[%c7, %c2] : memref<8x16xi64>, vector<8x16xi64>
      %264 = memref.load %alloc_13[%c2, %c13] : memref<8x16xf32>
      %265 = affine.min affine_map<(d0) -> (d0, (-(d0 floordiv 16) - d0) floordiv 32, d0 * 2, d0 * 2)>(%c9)
      %266 = arith.ori %true, %false_1 : i1
      %267 = affine.for %arg0 = 0 to 8 iter_args(%arg1 = %60) -> (tensor<8x16xf16>) {
        affine.yield %4 : tensor<8x16xf16>
      }
      %268 = vector.broadcast %c1225607385_i64 : i64 to vector<8xi64>
      %269 = vector.maskedload %alloc_16[%c0, %c0, %c3], %261, %268 : memref<4x8x4xi64>, vector<8xi1>, vector<8xi64> into vector<8xi64>
      scf.if %false_1 {
        %270 = math.fma %85, %85, %85 : tensor<8x16xf32>
        %271 = math.ctpop %91 : tensor<4x8x8xi16>
        %expanded_65 = tensor.expand_shape %91 [[0], [1], [2, 3]] : tensor<4x8x8xi16> into tensor<4x8x8x1xi16>
        memref.assume_alignment %alloc_8, 16 : memref<4x4x4xi16>
        %true_66 = index.bool.constant true
        %272 = index.mul %c15, %rank_31
        %inserted = tensor.insert %cst_3 into %15[%c1, %c4, %c2] : tensor<4x8x4xf16>
        %273 = vector.insertelement %cst_6, %97[%c10 : index] : vector<6xf32>
      }
      scf.index_switch %265 
      case 1 {
        %270 = affine.min affine_map<(d0, d1, d2) -> (((-d1) ceildiv 128 - ((d0 ceildiv 8) mod 128 + 32)) ceildiv 16, d0 ceildiv 8 + d2 + (d0 ceildiv 8) mod 128, -(d0 ceildiv 8))>(%c5, %64, %53)
        %c0_i64_65 = arith.constant 0 : i64
        %c0_i64_66 = arith.constant 0 : i64
        %271 = vector.transfer_read %1[%270, %265], %c0_i64_66 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<8x16xi64>, vector<8xi64>
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_67 = arith.constant 0 : i16
        %272 = vector.transfer_read %91[%rank_31, %c4, %63], %c0_i16_67 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<4x8x8xi16>, vector<8x16xi16>
        %273 = vector.broadcast %cst_2 : f32 to vector<16xf32>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %19, %89, %273 : vector<8xf32>, vector<8x16xf32> into vector<16xf32>
        %inserted = tensor.insert %cst_6 into %2[%c0, %c0, %c3] : tensor<4x4x4xf32>
        %275 = math.cttz %c1821023281_i32 : i32
        %276 = math.tanh %17 : tensor<4x8x8xf32>
        memref.assume_alignment %alloc_8, 1 : memref<4x4x4xi16>
        %277 = math.log1p %2 : tensor<4x4x4xf32>
        %false_68 = index.bool.constant false
        %278 = math.round %cst_2 : f32
        %279 = memref.load %alloc[%c2, %c2, %c0] : memref<4x4x4xi1>
        %280 = arith.muli %false_1, %true_4 : i1
        %281 = arith.cmpi ne, %true_4, %true : i1
        %282 = vector.create_mask %c5, %66, %35 : vector<4x4x4xi1>
        %283 = affine.apply affine_map<(d0, d1) -> ((d0 + 2) * 2)>(%c11, %c3)
        scf.yield
      }
      case 2 {
        %270 = affine.apply affine_map<(d0, d1, d2) -> ((d0 + 7) mod 128)>(%c2, %51, %c14)
        %271 = arith.ori %c-28554_i16, %c-28554_i16 : i16
        %272 = affine.max affine_map<(d0) -> ((d0 - 16) ceildiv 32 - 4, d0 floordiv 4 + 124, d0)>(%c4)
        %273 = affine.apply affine_map<(d0, d1) -> (d1 + d0 floordiv 2 + d1 + 9 + 9)>(%35, %270)
        %274 = arith.cmpf oge, %cst_0, %cst_23 : f32
        memref.assume_alignment %alloc_22, 4 : memref<4x4x4xf32>
        %275 = index.maxs %c6, %44
        %276 = memref.load %alloc_20[%c4, %c8] : memref<8x16xi64>
        %277 = index.castu %true_4 : i1 to index
        %278 = math.absf %6 : tensor<4x4x4xf32>
        %279 = arith.divui %c1225607385_i64, %c151266709_i64 : i64
        %280 = arith.negf %cst_23 : f32
        %281 = vector.broadcast %cst_23 : f32 to vector<16xf32>
        %dest_65, %accumulated_value_66 = vector.scan <add>, %86, %281 {inclusive = true, reduction_dim = 0 : i64} : vector<8x16xf32>, vector<16xf32>
        %282 = math.exp2 %collapsed : tensor<32x8xf32>
        %283 = math.atan %15 : tensor<4x8x4xf16>
        %284 = math.exp %2 : tensor<4x4x4xf32>
        scf.yield
      }
      case 3 {
        %270 = index.add %53, %c0
        %271 = math.expm1 %cst_0 : f32
        %expanded_65 = tensor.expand_shape %generated_29 [[0], [1], [2, 3]] : tensor<?x?x4xf32> into tensor<?x?x4x1xf32>
        %272 = affine.load %alloc_9[%c14, %c8, %c10] : memref<4x8x4xf32>
        %273 = arith.remf %cst_6, %cst_2 : f32
        %274 = math.tanh %13 : tensor<8x16xf16>
        %275 = math.tanh %272 : f32
        %276 = math.copysign %6, %5 : tensor<4x4x4xf32>
        %277 = vector.reduction <maxui>, %268 : vector<8xi64> into i64
        %278 = vector.broadcast %false : i1 to vector<4x8xi1>
        %dest_66, %accumulated_value_67 = vector.scan <xor>, %259, %278 {inclusive = false, reduction_dim = 1 : i64} : vector<4x8x8xi1>, vector<4x8xi1>
        %279 = math.cttz %14 : tensor<4x8x4xi1>
        %280 = math.powf %13, %4 : tensor<8x16xf16>
        %281 = arith.ori %true_26, %true_4 : i1
        %282 = index.ceildivu %265, %c8
        %283 = affine.apply affine_map<(d0) -> (d0)>(%51)
        %284 = arith.negf %cst_23 : f32
        scf.yield
      }
      case 4 {
        %270 = math.cttz %expanded : tensor<8x1xi64>
        %271 = math.ipowi %18, %20 : tensor<8xi64>
        %272 = index.ceildivu %c10, %53
        %expanded_65 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<8x16xi64> into tensor<8x16x1xi64>
        %273 = index.floordivs %63, %c13
        %274 = math.roundeven %60 : tensor<8x16xf16>
        %275 = arith.shrsi %c151266709_i64, %c151266709_i64 : i64
        %276 = math.expm1 %15 : tensor<4x8x4xf16>
        %277 = math.atan2 %cst_0, %cst_2 : f32
        %278 = arith.minui %false_5, %true_4 : i1
        %279 = arith.shrsi %false, %false_5 : i1
        %280 = arith.floordivsi %c1053378056_i32, %c1821023281_i32 : i32
        %281 = vector.multi_reduction <add>, %86, %68 [1] : vector<8x16xf32> to vector<8xf32>
        %282 = math.atan2 %85, %85 : tensor<8x16xf32>
        %283 = bufferization.clone %alloc_12 : memref<4x8x8xf32> to memref<4x8x8xf32>
        %284 = math.floor %6 : tensor<4x4x4xf32>
        scf.yield
      }
      default {
        %270 = index.ceildivs %c10, %c10
        %271 = arith.negf %cst_6 : f32
        %272 = arith.shli %true_4, %true : i1
        %273 = arith.shrui %c1053378056_i32, %c1492876984_i32 : i32
        %274 = arith.ori %c151266709_i64, %c151266709_i64 : i64
        %275 = arith.shrui %c1053378056_i32, %c1821023281_i32 : i32
        %276 = memref.load %alloc_13[%c2, %c2] : memref<8x16xf32>
        %collapsed_65 = tensor.collapse_shape %3 [[0, 1]] : tensor<8x16xi32> into tensor<128xi32>
        %expanded_66 = tensor.expand_shape %generated_29 [[0], [1], [2, 3]] : tensor<?x?x4xf32> into tensor<?x?x4x1xf32>
        %277 = math.fpowi %85, %3 : tensor<8x16xf32>, tensor<8x16xi32>
        %278 = tensor.empty(%44, %44) : tensor<?x8x?xf32>
        %279 = arith.remf %cst_23, %cst_6 : f32
        %280 = vector.broadcast %c1053378056_i32 : i32 to vector<4x8x8xi32>
        %expanded_67 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<4x4x4xi16> into tensor<4x4x4x1xi16>
        %281 = arith.minui %c-28554_i16, %c-28554_i16 : i16
        %true_68 = index.bool.constant true
      }
      scf.yield
    }
    %101 = vector.matrix_multiply %68, %97 {lhs_columns = 2 : i32, lhs_rows = 4 : i32, rhs_columns = 3 : i32} : (vector<8xf32>, vector<6xf32>) -> vector<12xf32>
    %c26477488_i64 = arith.constant 26477488 : i64
    %102 = arith.ori %c1053378056_i32, %c1492876984_i32 : i32
    %103 = memref.load %alloc_17[%c2, %c7, %c3] : memref<4x8x8xf16>
    %104 = math.floor %cst_3 : f16
    %105 = memref.atomic_rmw ori %c-28554_i16, %alloc_8[%c2, %c1, %c3] : (i16, memref<4x4x4xi16>) -> i16
    %106 = vector.create_mask %c12, %c8 : vector<8x16xi1>
    %107 = arith.shli %c-28554_i16, %c-28554_i16 : i16
    %generated_32 = tensor.generate %51, %c6 {
    ^bb0(%arg0: index, %arg1: index):
      bufferization.dealloc_tensor %17 : tensor<4x8x8xf32>
      %255 = affine.apply affine_map<(d0) -> (d0)>(%c3)
      %cst_63 = arith.constant 2.913600e+04 : f16
      %256 = tensor.empty() : tensor<4x8x8xf32>
      %mapped_64 = linalg.map ins(%9, %17 : tensor<4x8x8xf32>, tensor<4x8x8xf32>) outs(%256 : tensor<4x8x8xf32>)
        (%in: f32, %in_65: f32) {
          memref.store %c151266709_i64, %41[%c0] : memref<8xi64>
          %257 = vector.broadcast %c1821023281_i32 : i32 to vector<16x16xi32>
          %258 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %88, %88, %257 : vector<8x16xi32>, vector<8x16xi32> into vector<16x16xi32>
          %259 = vector.broadcast %cst_3 : f16 to vector<8xf16>
          vector.transfer_write %259, %alloc_17[%arg0, %c4, %44] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<8xf16>, memref<4x8x8xf16>
          %260 = math.log10 %17 : tensor<4x8x8xf32>
          %261 = math.atan2 %2, %5 : tensor<4x4x4xf32>
          %262 = vector.broadcast %false : i1 to vector<16x16xi1>
          %263 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %106, %106, %262 : vector<8x16xi1>, vector<8x16xi1> into vector<16x16xi1>
          %264 = arith.addi %false_5, %false : i1
          %265 = affine.load %alloc_16[%c5, %c0, %c15] : memref<4x8x4xi64>
          %266 = arith.divsi %c1225607385_i64, %c151266709_i64 : i64
          %267 = tensor.empty(%rank) : tensor<?x8x8xi16>
          %268 = index.ceildivu %c12, %64
          %269 = vector.broadcast %false : i1 to vector<8xi1>
          %270 = vector.maskedload %93[%c3, %c4, %c6], %269, %19 : memref<4x8x8xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
          %271 = vector.create_mask %c2, %c3, %66 : vector<4x8x8xi1>
          %272 = affine.min affine_map<(d0) -> (0, d0 mod 64, d0 mod 2)>(%63)
          %273 = index.ceildivu %c3, %c3
          vector.print %19 : vector<8xf32>
          %274 = vector.load %alloc_11[%c1, %c5, %c2] : memref<4x8x8xf16>, vector<8x16xf16>
          %275 = index.divu %c11, %c14
          %276 = math.round %17 : tensor<4x8x8xf32>
          %true_66 = index.bool.constant true
          %rank_67 = tensor.rank %reduced : tensor<8xi64>
          %splat = tensor.splat %cst_6 : tensor<4x8x8xf32>
          %277 = arith.xori %c151266709_i64, %c151266709_i64 : i64
          %278 = arith.floordivsi %c-28554_i16, %c-28554_i16 : i16
          %279 = affine.load %alloc_10[%c6, %c14] : memref<8x16xi1>
          %280 = index.floordivs %c3, %arg0
          %281 = arith.shli %true_27, %true_26 : i1
          %282 = arith.negf %cst : f32
          %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %101, %101, %in : vector<12xf32>, vector<12xf32> into f32
          %284 = arith.addf %cst_0, %cst_0 : f32
          %285 = arith.muli %true_27, %false : i1
          %extracted_68 = tensor.extract %11[%c2, %c1, %c2] : tensor<4x4x4xi64>
          %cst_69 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_69 : f32
        }
      tensor.yield %cst_6 : f32
    } : tensor<?x?xf32>
    %108 = tensor.empty() : tensor<4x4x4xi32>
    %109 = math.fpowi %6, %108 : tensor<4x4x4xf32>, tensor<4x4x4xi32>
    %110 = math.fma %15, %15, %15 : tensor<4x8x4xf16>
    %111 = math.powf %cst_6, %cst : f32
    %112 = arith.shli %true_26, %true : i1
    %113 = bufferization.to_memref %15 : memref<4x8x4xf16>
    %114 = math.log %85 : tensor<8x16xf32>
    %115 = arith.addi %false_5, %true : i1
    %116 = math.expm1 %5 : tensor<4x4x4xf32>
    %117 = index.floordivs %c4, %c9
    %c1_i64 = arith.constant 1 : i64
    %118 = vector.transfer_read %41[%c3], %c1_i64 : memref<8xi64>, vector<i64>
    %119 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %101, %101, %cst_23 : vector<12xf32>, vector<12xf32> into f32
    %120 = affine.max affine_map<(d0, d1, d2, d3) -> ((d3 ceildiv 64) floordiv 4, d2, d1 - 128)>(%51, %c8, %c7, %rank_31)
    %121 = arith.maxui %true_4, %true_27 : i1
    %122 = arith.cmpi ugt, %true_27, %false_5 : i1
    %123 = scf.if %true -> (i64) {
      %255 = affine.apply affine_map<(d0) -> ((d0 ceildiv 64) mod 8)>(%c10)
      %256 = arith.minsi %c1821023281_i32, %c1053378056_i32 : i32
      %257 = index.castu %false : i1 to index
      %258 = arith.remf %cst, %cst_6 : f32
      %259 = index.ceildivu %44, %64
      %260 = math.powf %cst, %cst_0 : f32
      %261 = arith.ceildivsi %c1821023281_i32, %c1053378056_i32 : i32
      %alloc_63 = memref.alloc() : memref<4xf16>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_63 : memref<4xf16>) outs(%15 : tensor<4x8x4xf16>) {
      ^bb0(%in: f16, %out: f16):
        %263 = arith.shrsi %c1_i64, %c151266709_i64 : i64
        %264 = math.log2 %15 : tensor<4x8x4xf16>
        %265 = memref.atomic_rmw maxs %c-28554_i16, %alloc_8[%c0, %c0, %c3] : (i16, memref<4x4x4xi16>) -> i16
        %alloc_64 = memref.alloc() : memref<16x16xi64>
        %266 = tensor.empty() : tensor<8x16xi64>
        %267 = linalg.matmul ins(%1, %alloc_64 : tensor<8x16xi64>, memref<16x16xi64>) outs(%266 : tensor<8x16xi64>) -> tensor<8x16xi64>
        %268 = math.cttz %20 : tensor<8xi64>
        %269 = vector.create_mask %64, %c8, %c13 : vector<4x4x4xi1>
        %270 = index.sub %c12, %51
        %271 = vector.shuffle %86, %86 [0, 6, 7, 8, 9, 12] : vector<8x16xf32>, vector<8x16xf32>
        %272 = math.log10 %17 : tensor<4x8x8xf32>
        %collapsed_65 = tensor.collapse_shape %13 [[0, 1]] : tensor<8x16xf16> into tensor<128xf16>
        %273 = vector.broadcast %c1053378056_i32 : i32 to vector<8x8xi32>
        %274 = vector.insert %273, %79 [0] : vector<8x8xi32> into vector<4x8x8xi32>
        %275 = arith.remf %cst_23, %cst_6 : f32
        %276 = affine.min affine_map<(d0, d1) -> (d0 + 16)>(%c13, %c11)
        %277 = vector.broadcast %cst_23 : f32 to vector<f32>
        %278 = vector.transfer_write %277, %96[%c6, %c15] : vector<f32>, tensor<8x16xf32>
        %279 = math.cttz %true : i1
        %280 = memref.atomic_rmw maxu %c151266709_i64, %41[%c0] : (i64, memref<8xi64>) -> i64
        %281 = math.tan %out : f16
        %282 = affine.load %alloc_15[%c1, %c13, %c3] : memref<4x8x4xi1>
        %283 = arith.muli %false_1, %true_4 : i1
        %284 = affine.load %alloc_18[%c5, %c9, %c2] : memref<4x8x8xi64>
        vector.print %277 : vector<f32>
        %285 = vector.load %41[%c2] : memref<8xi64>, vector<4x4x4xi64>
        %286 = arith.muli %true_26, %true : i1
        %287 = memref.atomic_rmw addf %out, %alloc_21[%c4, %c11] : (f16, memref<8x16xf16>) -> f16
        %288 = index.add %35, %51
        %289 = vector.extract_strided_slice %99 {offsets = [1, 1], sizes = [1, 2], strides = [1, 1]} : vector<4x4x4xf32> to vector<1x2x4xf32>
        %290 = arith.maxui %284, %c151266709_i64 : i64
        %cast_66 = tensor.cast %0 : tensor<4x8x8xf32> to tensor<?x?x?xf32>
        %291 = math.tanh %60 : tensor<8x16xf16>
        %292 = index.maxu %288, %259
        %293 = math.atan2 %15, %15 : tensor<4x8x4xf16>
        %294 = vector.broadcast %c1225607385_i64 : i64 to vector<i64>
        %295 = vector.transfer_write %294, %266[%53, %120] : vector<i64>, tensor<8x16xi64>
        linalg.yield %in : f16
      } -> tensor<4x8x4xf16>
      scf.yield %c1225607385_i64 : i64
    } else {
      %255 = tensor.empty(%c12) : tensor<4x?x8xf32>
      %256 = vector.broadcast %c-28554_i16 : i16 to vector<i16>
      vector.transfer_write %256, %alloc_7[%c13, %64, %c6] : vector<i16>, memref<4x8x8xi16>
      %257 = math.exp %5 : tensor<4x4x4xf32>
      %258 = arith.negf %cst_0 : f32
      %259 = vector.shuffle %87, %87 [0, 3, 4, 5, 7, 10, 11, 12, 15] : vector<8x16xi1>, vector<8x16xi1>
      bufferization.dealloc_tensor %9 : tensor<4x8x8xf32>
      %260 = arith.divf %cst_2, %cst_2 : f32
      %261 = math.log2 %collapsed : tensor<32x8xf32>
      scf.yield %c151266709_i64 : i64
    }
    %alloc_33 = memref.alloc() : memref<4x4x4xi16>
    %124 = affine.if affine_set<(d0, d1, d2, d3) : (d2 == 0)>(%c5, %c15, %c12, %c7) -> f16 {
      %false_63 = index.bool.constant false
      %255 = math.rsqrt %6 : tensor<4x4x4xf32>
      %alloc_64 = memref.alloc() : memref<8x16xf16>
      memref.copy %alloc_21, %alloc_64 : memref<8x16xf16> to memref<8x16xf16>
      %cst_65 = arith.constant 1.000000e+00 : f16
      %cst_66 = arith.constant 0.000000e+00 : f16
      %256 = vector.transfer_read %60[%c7, %35], %cst_66 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<8x16xf16>, vector<8xf16>
      %257 = index.divs %c5, %117
      %258 = arith.minui %c1_i64, %c1_i64 : i64
      %259 = math.exp2 %cst_2 : f32
      %260 = arith.ori %false_63, %false_5 : i1
      affine.yield %cst_65 : f16
    } else {
      scf.index_switch %51 
      case 1 {
        %261 = vector.extract_strided_slice %86 {offsets = [0], sizes = [7], strides = [1]} : vector<8x16xf32> to vector<7x16xf32>
        %262 = math.fma %85, %96, %96 : tensor<8x16xf32>
        %263 = affine.min affine_map<(d0, d1) -> (d1 mod 128, (d1 floordiv 4) mod 8, d1 floordiv 16)>(%c11, %c14)
        bufferization.dealloc_tensor %0 : tensor<4x8x8xf32>
        bufferization.dealloc_tensor %generated_29 : tensor<?x?x4xf32>
        %264 = arith.negf %cst_23 : f32
        %265 = arith.minf %cst_6, %cst : f32
        %266 = arith.divsi %true_27, %false : i1
        %267 = vector.broadcast %c1492876984_i32 : i32 to vector<8x16xi32>
        bufferization.dealloc_tensor %5 : tensor<4x4x4xf32>
        %268 = arith.muli %c1492876984_i32, %c1053378056_i32 : i32
        %269 = bufferization.to_memref %6 : memref<4x4x4xf32>
        %270 = arith.xori %c-28554_i16, %c-28554_i16 : i16
        %rank_63 = tensor.rank %0 : tensor<4x8x8xf32>
        %271 = arith.remf %cst, %cst_2 : f32
        %from_elements = tensor.from_elements %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3 : tensor<4x4x4xf16>
        scf.yield
      }
      case 2 {
        %261 = math.tanh %13 : tensor<8x16xf16>
        %262 = affine.min affine_map<(d0, d1, d2) -> (d2 + 1, -(d2 * 17 + 1), (d2 * 16) floordiv 64, d0)>(%c9, %c3, %117)
        %263 = math.powf %4, %4 : tensor<8x16xf16>
        %264 = arith.muli %c-28554_i16, %c-28554_i16 : i16
        %splat = tensor.splat %c1_i64 : tensor<8x16xi64>
        %265 = math.expm1 %4 : tensor<8x16xf16>
        %266 = math.exp2 %6 : tensor<4x4x4xf32>
        %267 = arith.andi %c1053378056_i32, %c1492876984_i32 : i32
        %268 = index.castu %c9 : index to i32
        %269 = arith.shrsi %true_26, %false_5 : i1
        %270 = arith.minf %cst_2, %cst : f32
        %271 = arith.divf %cst_6, %cst : f32
        %rank_63 = tensor.rank %9 : tensor<4x8x8xf32>
        %272 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 * 16, d3 ceildiv 16 + 64)>(%c14, %c13, %c13, %rank)
        %273 = math.round %60 : tensor<8x16xf16>
        %274 = index.floordivs %c12, %c2
        scf.yield
      }
      default {
        %261 = affine.min affine_map<(d0) -> (-d0 + 1, -d0 + 1)>(%c8)
        vector.print %87 : vector<8x16xi1>
        %262 = index.maxs %c11, %c4
        %263 = affine.load %alloc[%c3, %c14, %c1] : memref<4x4x4xi1>
        %264 = arith.shrui %c1492876984_i32, %c1053378056_i32 : i32
        %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %101, %101, %cst : vector<12xf32>, vector<12xf32> into f32
        %266 = arith.ori %c151266709_i64, %c1_i64 : i64
        %267 = arith.shli %c1_i64, %123 : i64
        %268 = vector.load %55[%c2, %c5, %c2] : memref<4x8x8xi16>, vector<4x8x4xi16>
        %cast_63 = tensor.cast %5 : tensor<4x4x4xf32> to tensor<?x?x?xf32>
        %inserted = tensor.insert %c-28554_i16 into %8[%c3, %c0, %c1] : tensor<4x4x4xi16>
        %269 = math.atan %85 : tensor<8x16xf32>
        %c0_i16 = arith.constant 0 : i16
        %270 = vector.transfer_read %8[%c14, %c5, %c3], %c0_i16 : tensor<4x4x4xi16>, vector<i16>
        %271 = vector.broadcast %120 : index to vector<16xindex>
        %272 = vector.broadcast %false_5 : i1 to vector<16xi1>
        vector.scatter %alloc[%c1, %c1, %c3] [%271], %272, %272 : memref<4x4x4xi1>, vector<16xindex>, vector<16xi1>, vector<16xi1>
        %273 = vector.broadcast %true_4 : i1 to vector<8x16xi1>
        %274 = index.floordivs %rank_31, %63
      }
      %255 = vector.shuffle %68, %19 [2, 3, 6, 7, 8, 10, 11, 14] : vector<8xf32>, vector<8xf32>
      %256 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 16)>(%rank, %c0, %44)
      %257 = arith.shrsi %c-28554_i16, %c-28554_i16 : i16
      affine.store %cst_23, %alloc_9[%c13, %c10, %c9] : memref<4x8x4xf32>
      %258 = arith.floordivsi %false_1, %true_4 : i1
      %259 = arith.shrsi %false_5, %true : i1
      %260 = arith.shli %true_4, %true_4 : i1
      affine.yield %cst_3 : f16
    }
    %125 = math.round %9 : tensor<4x8x8xf32>
    %126 = math.exp %2 : tensor<4x4x4xf32>
    %expanded_34 = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<4x8x8xf32> into tensor<4x8x8x1xf32>
    %127 = affine.min affine_map<(d0, d1, d2, d3) -> (-d3 - d1 ceildiv 4 + d0 ceildiv 64 + 32, d2)>(%c1, %c11, %c4, %c13)
    %128 = vector.shuffle %99, %99 [4, 7] : vector<4x4x4xf32>, vector<4x4x4xf32>
    %129 = arith.remf %cst_2, %cst_2 : f32
    %130 = arith.addf %cst_2, %cst_23 : f32
    affine.store %false_5, %alloc[%c2, %c5, %c7] : memref<4x4x4xi1>
    %131 = arith.minui %c151266709_i64, %c151266709_i64 : i64
    %132 = arith.shli %true_26, %false_5 : i1
    %133 = arith.minf %cst_23, %cst_2 : f32
    %extracted = tensor.extract %10[%c2, %c1, %c3] : tensor<4x8x4xi1>
    %134 = affine.if affine_set<(d0, d1, d2, d3) : ((d2 - 8) ceildiv 4 >= 0, d3 >= 0, (d0 ceildiv 64) * 16 == 0, d1 * 16 >= 0)>(%c9, %c5, %c4, %c9) -> memref<4x8x8xi1> {
      %false_63 = index.bool.constant false
      %255 = arith.ceildivsi %true, %true_26 : i1
      %256 = math.fpowi %60, %3 : tensor<8x16xf16>, tensor<8x16xi32>
      %257 = math.tanh %9 : tensor<4x8x8xf32>
      %258 = arith.divsi %c1_i64, %c1_i64 : i64
      affine.for %arg0 = 0 to 86 {
      }
      %259 = bufferization.to_memref %7 : memref<4x4x4xi64>
      %260 = math.sqrt %12 : tensor<4x8x8xf32>
      %alloc_64 = memref.alloc() : memref<4x8x8xi1>
      affine.yield %alloc_64 : memref<4x8x8xi1>
    } else {
      %255 = math.log10 %15 : tensor<4x8x4xf16>
      %256 = scf.while (%arg0 = %c1821023281_i32) : (i32) -> i32 {
        %262 = vector.matrix_multiply %101, %19 {lhs_columns = 4 : i32, lhs_rows = 3 : i32, rhs_columns = 2 : i32} : (vector<12xf32>, vector<8xf32>) -> vector<6xf32>
        bufferization.dealloc_tensor %6 : tensor<4x4x4xf32>
        %263 = arith.shrsi %c1_i64, %c151266709_i64 : i64
        %264 = arith.cmpf ueq, %cst_6, %cst : f32
        %265 = arith.maxf %cst_23, %cst_2 : f32
        %266 = arith.ori %true_26, %false : i1
        %267 = memref.atomic_rmw assign %cst_0, %alloc_13[%c1, %c9] : (f32, memref<8x16xf32>) -> f32
        %268 = arith.andi %c-28554_i16, %c-28554_i16 : i16
        scf.condition(%false_1) %arg0 : i32
      } do {
      ^bb0(%arg0: i32):
        %262 = tensor.empty() : tensor<4x8x4xi32>
        %263 = math.fpowi %15, %262 : tensor<4x8x4xf16>, tensor<4x8x4xi32>
        %264 = arith.floordivsi %false, %false_5 : i1
        %265 = index.floordivs %44, %c3
        %alloc_64 = memref.alloc() : memref<4x8x4xf32>
        memref.copy %alloc_9, %alloc_64 : memref<4x8x4xf32> to memref<4x8x4xf32>
        %266 = arith.muli %c151266709_i64, %c1_i64 : i64
        %267 = arith.shli %123, %c151266709_i64 : i64
        %268 = arith.mulf %cst_0, %cst : f32
        %269 = math.floor %cst_3 : f16
        %270 = arith.addf %cst_0, %cst_2 : f32
        %271 = index.maxs %c9, %c2
        %272 = math.tanh %0 : tensor<4x8x8xf32>
        %273 = arith.addf %cst_23, %cst_6 : f32
        %274 = index.floordivs %c7, %117
        %275 = arith.minui %c1821023281_i32, %c1492876984_i32 : i32
        %276 = vector.broadcast %cst_23 : f32 to vector<8x16xf32>
        %277 = math.powf %12, %9 : tensor<4x8x8xf32>
        scf.yield %arg0 : i32
      }
      %257 = memref.atomic_rmw assign %cst_6, %93[%c0, %c5, %c5] : (f32, memref<4x8x8xf32>) -> f32
      %258 = index.add %117, %rank_31
      %259 = arith.minf %cst_23, %cst : f32
      %260 = arith.remf %cst_0, %cst_0 : f32
      vector.print %79 : vector<4x8x8xi32>
      %261 = math.round %2 : tensor<4x4x4xf32>
      %alloc_63 = memref.alloc() : memref<4x8x8xi1>
      affine.yield %alloc_63 : memref<4x8x8xi1>
    }
    %135 = arith.ceildivsi %false, %false_1 : i1
    %136 = vector.broadcast %true : i1 to vector<4xi1>
    %137 = vector.maskedload %alloc[%c2, %c3, %c2], %136, %136 : memref<4x4x4xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
    %138 = index.castu %117 : index to i32
    %139 = arith.minsi %false, %true_26 : i1
    %140 = arith.shli %false_1, %true_26 : i1
    %141 = affine.for %arg0 = 0 to 5 iter_args(%arg1 = %true_26) -> (i1) {
      affine.yield %false_5 : i1
    }
    %142 = math.floor %60 : tensor<8x16xf16>
    %collapsed_35 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<4x4x4xf32> into tensor<16x4xf32>
    bufferization.dealloc_tensor %11 : tensor<4x4x4xi64>
    %143 = math.floor %5 : tensor<4x4x4xf32>
    %144 = vector.flat_transpose %19 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
    %145 = memref.load %alloc_13[%c3, %c0] : memref<8x16xf32>
    %146 = math.expm1 %9 : tensor<4x8x8xf32>
    %147 = arith.negf %cst_23 : f32
    %148 = math.log10 %2 : tensor<4x4x4xf32>
    %149 = arith.cmpi ne, %false, %true : i1
    %150 = bufferization.to_memref %5 : memref<4x4x4xf32>
    %151 = arith.shli %true, %false_5 : i1
    %152 = math.tanh %0 : tensor<4x8x8xf32>
    %153 = arith.mulf %cst_23, %cst_0 : f32
    %154 = tensor.empty() : tensor<16x4xi32>
    %155 = math.fpowi %collapsed_35, %154 : tensor<16x4xf32>, tensor<16x4xi32>
    %156 = memref.atomic_rmw mulf %cst_3, %alloc_14[%c2, %c2, %c2] : (f16, memref<4x4x4xf16>) -> f16
    %157 = scf.if %true_4 -> (memref<4x8x4xi16>) {
      %255 = arith.ori %c151266709_i64, %c1_i64 : i64
      %256 = arith.negf %cst_0 : f32
      %257 = arith.divf %cst, %cst_23 : f32
      %cst_63 = arith.constant 1.000000e+00 : f32
      %cst_64 = arith.constant 0.000000e+00 : f32
      %258 = vector.transfer_read %alloc_12[%c4, %c3, %c15], %cst_64 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : memref<4x8x8xf32>, vector<8xf32>
      %259 = scf.while (%arg0 = %true_26) : (i1) -> i1 {
        %263 = math.roundeven %13 : tensor<8x16xf16>
        %264 = arith.addi %c1821023281_i32, %c1821023281_i32 : i32
        %265 = arith.divui %c1_i64, %c151266709_i64 : i64
        %266 = memref.atomic_rmw ori %c1492876984_i32, %alloc_19[%c2, %c0, %c2] : (i32, memref<4x8x4xi32>) -> i32
        %c0_i64_66 = arith.constant 0 : i64
        %c0_i64_67 = arith.constant 0 : i64
        %267 = vector.transfer_read %18[%117], %c0_i64_67 : tensor<8xi64>, vector<i64>
        %268 = index.add %rank, %c8
        memref.assume_alignment %alloc_21, 2 : memref<8x16xf16>
        %269 = math.fma %85, %96, %85 : tensor<8x16xf32>
        scf.condition(%true_27) %true_26 : i1
      } do {
      ^bb0(%arg0: i1):
        %263 = memref.load %alloc_21[%c2, %c2] : memref<8x16xf16>
        %264 = index.maxu %35, %c3
        %265 = math.cttz %c1492876984_i32 : i32
        %266 = math.log1p %12 : tensor<4x8x8xf32>
        %267 = index.mul %117, %66
        %268 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 128, d0 mod 128)>(%c9, %c15, %c5)
        %269 = math.tanh %96 : tensor<8x16xf32>
        %270 = affine.min affine_map<(d0, d1, d2) -> (-d0 - d2 + d0, -(((d2 floordiv 32) mod 2) mod 32), d2 + 32, ((d2 floordiv 32) mod 2) mod 32 - 2)>(%44, %53, %c15)
        %271 = index.castu %c3 : index to i32
        memref.copy %alloc_11, %alloc_17 : memref<4x8x8xf16> to memref<4x8x8xf16>
        %272 = bufferization.to_memref %60 : memref<8x16xf16>
        %273 = arith.ori %c1225607385_i64, %c1225607385_i64 : i64
        %274 = arith.maxsi %false_5, %true : i1
        %275 = tensor.empty() : tensor<4x8x4xf16>
        %276 = math.atan2 %4, %60 : tensor<8x16xf16>
        %277 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 2 + 32)>(%c14, %rank, %66)
        scf.yield %true_4 : i1
      }
      %260 = arith.addf %cst_63, %cst_63 : f32
      %261 = math.exp %cst_3 : f16
      %262 = math.round %cst_6 : f32
      %alloc_65 = memref.alloc() : memref<4x8x4xi16>
      scf.yield %alloc_65 : memref<4x8x4xi16>
    } else {
      %255 = vector.broadcast %cst_3 : f16 to vector<f16>
      vector.transfer_write %255, %alloc_11[%c7, %c12, %c15] : vector<f16>, memref<4x8x8xf16>
      %false_63 = index.bool.constant false
      %256 = arith.negf %cst_23 : f32
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %257 = vector.transfer_read %alloc_19[%c10, %c14, %117], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<4x8x4xi32>, vector<4xi32>
      %258 = vector.create_mask %c3, %c13, %64 : vector<4x4x4xi1>
      %259 = vector.reduction <minf>, %97 : vector<6xf32> into f32
      %260 = arith.shrsi %c1225607385_i64, %c151266709_i64 : i64
      %alloc_64 = memref.alloc() : memref<16x8xf16>
      %261 = tensor.empty() : tensor<8x8xf16>
      %262 = linalg.matmul ins(%4, %alloc_64 : tensor<8x16xf16>, memref<16x8xf16>) outs(%261 : tensor<8x8xf16>) -> tensor<8x8xf16>
      %alloc_65 = memref.alloc() : memref<4x8x4xi16>
      scf.yield %alloc_65 : memref<4x8x4xi16>
    }
    %158 = math.tanh %cst_23 : f32
    %159 = bufferization.to_tensor %alloc_18 : memref<4x8x8xi64>
    %160 = arith.muli %true_26, %true : i1
    %true_36 = index.bool.constant true
    %161 = vector.broadcast %123 : i64 to vector<4x4xi64>
    %dest, %accumulated_value = vector.scan <add>, %58, %161 {inclusive = true, reduction_dim = 1 : i64} : vector<4x4x4xi64>, vector<4x4xi64>
    memref.store %c1_i64, %alloc_16[%c2, %c2, %c2] : memref<4x8x4xi64>
    %162 = math.atan2 %4, %4 : tensor<8x16xf16>
    %163 = vector.broadcast %cst_2 : f32 to vector<4x4x4x4xf32>
    %164 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %99, %99, %163 : vector<4x4x4xf32>, vector<4x4x4xf32> into vector<4x4x4x4xf32>
    %165 = math.rsqrt %collapsed_35 : tensor<16x4xf32>
    bufferization.dealloc_tensor %6 : tensor<4x4x4xf32>
    %166 = math.expm1 %5 : tensor<4x4x4xf32>
    %167 = affine.load %alloc_21[%c3, %c1] : memref<8x16xf16>
    %168 = arith.minf %cst_2, %cst_23 : f32
    %169 = affine.apply affine_map<(d0, d1) -> ((d0 + 2) * 2)>(%117, %rank_31)
    %170 = vector.load %113[%c0, %c5, %c2] : memref<4x8x4xf16>, vector<8x16xf16>
    %171 = vector.reduction <maxf>, %19 : vector<8xf32> into f32
    %172 = arith.mulf %cst_6, %cst_6 : f32
    %c0_i64 = arith.constant 0 : i64
    %c0_i64_37 = arith.constant 0 : i64
    %173 = vector.transfer_read %7[%c9, %c15, %c13], %c0_i64_37 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<4x4x4xi64>, vector<4x16xi64>
    %174 = arith.muli %c1225607385_i64, %c0_i64 : i64
    %rank_38 = tensor.rank %154 : tensor<16x4xi32>
    %175 = math.cttz %7 : tensor<4x4x4xi64>
    %176 = math.exp %5 : tensor<4x4x4xf32>
    %collapsed_39 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<4x8x8xf32> into tensor<32x8xf32>
    %177 = arith.shrsi %false, %true : i1
    %178 = index.ceildivs %64, %120
    %179 = arith.floordivsi %123, %123 : i64
    %dest_40, %accumulated_value_41 = vector.scan <maxf>, %86, %68 {inclusive = false, reduction_dim = 1 : i64} : vector<8x16xf32>, vector<8xf32>
    %180 = affine.apply affine_map<(d0, d1, d2) -> ((d0 + 7) mod 128)>(%c3, %53, %rank)
    %expanded_42 = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<4x8x4xi1> into tensor<4x8x4x1xi1>
    %181 = vector.broadcast %c-28554_i16 : i16 to vector<4x8x8xi16>
    %182 = arith.addi %true_4, %false_5 : i1
    %183 = arith.shrsi %true_27, %false_5 : i1
    %184 = arith.addf %cst_0, %cst_2 : f32
    %185 = arith.shrsi %false_5, %true_26 : i1
    %186 = math.powf %0, %12 : tensor<4x8x8xf32>
    %187 = scf.while (%arg0 = %19) : (vector<8xf32>) -> vector<8xf32> {
      %255 = vector.broadcast %167 : f16 to vector<16x16xf16>
      %256 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %170, %170, %255 : vector<8x16xf16>, vector<8x16xf16> into vector<16x16xf16>
      %257 = vector.broadcast %cst_6 : f32 to vector<8x16xf32>
      %258 = vector.fma %257, %86, %86 : vector<8x16xf32>
      %259 = vector.reduction <maxf>, %97 : vector<6xf32> into f32
      %260 = index.divs %117, %c14
      %261 = arith.muli %c0_i64, %c1_i64 : i64
      %262 = arith.minsi %c0_i64, %c151266709_i64 : i64
      %263 = index.divu %260, %44
      %264 = math.atan %12 : tensor<4x8x8xf32>
      scf.condition(%true_26) %144 : vector<8xf32>
    } do {
    ^bb0(%arg0: vector<8xf32>):
      %alloca = memref.alloca() : memref<4x8x4xi64>
      %255 = scf.if %false -> (memref<4x8x8xf16>) {
        %267 = arith.negf %cst : f32
        %268 = arith.xori %c1_i64, %c0_i64 : i64
        %269 = math.atan2 %5, %5 : tensor<4x4x4xf32>
        %270 = math.atan2 %cst_2, %cst_23 : f32
        %271 = math.fma %15, %15, %15 : tensor<4x8x4xf16>
        %272 = arith.ori %c1053378056_i32, %c1821023281_i32 : i32
        %273 = vector.broadcast %c-28554_i16 : i16 to vector<8x8x8x8xi16>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %181, %181, %273 : vector<4x8x8xi16>, vector<4x8x8xi16> into vector<8x8x8x8xi16>
        %275 = math.rsqrt %9 : tensor<4x8x8xf32>
        scf.yield %alloc_11 : memref<4x8x8xf16>
      } else {
        %267 = math.fpowi %4, %3 : tensor<8x16xf16>, tensor<8x16xi32>
        %268 = arith.subi %c1225607385_i64, %123 : i64
        %269 = math.round %cst : f32
        %270 = math.atan %9 : tensor<4x8x8xf32>
        %271 = arith.mulf %cst, %cst_2 : f32
        %272 = vector.broadcast %rank : index to vector<16xindex>
        %273 = vector.broadcast %false_1 : i1 to vector<16xi1>
        %274 = vector.broadcast %c0_i64 : i64 to vector<16xi64>
        vector.scatter %alloc_16[%c1, %c2, %c1] [%272], %273, %274 : memref<4x8x4xi64>, vector<16xindex>, vector<16xi1>, vector<16xi64>
        %275 = memref.atomic_rmw assign %cst_3, %alloc_11[%c2, %c2, %c4] : (f16, memref<4x8x8xf16>) -> f16
        bufferization.dealloc_tensor %18 : tensor<8xi64>
        scf.yield %alloc_17 : memref<4x8x8xf16>
      }
      %256 = math.exp2 %16 : tensor<4x8x8xf32>
      %257 = scf.while (%arg1 = %true) : (i1) -> i1 {
        %267 = arith.addf %167, %167 : f16
        %268 = math.ceil %2 : tensor<4x4x4xf32>
        %269 = math.tan %60 : tensor<8x16xf16>
        %270 = vector.broadcast %cst_0 : f32 to vector<16xf32>
        %271 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %144, %89, %270 : vector<8xf32>, vector<8x16xf32> into vector<16xf32>
        %272 = memref.atomic_rmw ori %c-28554_i16, %157[%c2, %c6, %c0] : (i16, memref<4x8x4xi16>) -> i16
        %273 = affine.max affine_map<(d0, d1, d2) -> (d1 mod 64, d2 - 64)>(%c14, %64, %180)
        %274 = math.tanh %9 : tensor<4x8x8xf32>
        %275 = math.floor %12 : tensor<4x8x8xf32>
        scf.condition(%extracted) %true : i1
      } do {
      ^bb0(%arg1: i1):
        %rank_65 = tensor.rank %reduced : tensor<8xi64>
        %267 = vector.bitcast %86 : vector<8x16xf32> to vector<8x16xf32>
        %268 = vector.broadcast %true : i1 to vector<8x4xi1>
        %dest_66, %accumulated_value_67 = vector.scan <maxsi>, %82, %268 {inclusive = false, reduction_dim = 0 : i64} : vector<4x8x4xi1>, vector<8x4xi1>
        %269 = vector.broadcast %cst_3 : f16 to vector<8xf16>
        %dest_68, %accumulated_value_69 = vector.scan <add>, %170, %269 {inclusive = true, reduction_dim = 1 : i64} : vector<8x16xf16>, vector<8xf16>
        %270 = math.tanh %4 : tensor<8x16xf16>
        %271 = arith.ceildivsi %extracted, %false_1 : i1
        %272 = bufferization.clone %alloc_14 : memref<4x4x4xf16> to memref<4x4x4xf16>
        %273 = index.castu %117 : index to i32
        %274 = arith.shrui %true_27, %false_1 : i1
        %275 = index.floordivs %180, %120
        %276 = tensor.empty(%35) : tensor<?x8x8xi1>
        %277 = tensor.empty(%rank_65) : tensor<?x8x4xi32>
        %278 = index.add %120, %c11
        memref.store %cst_3, %272[%c1, %c3, %c0] : memref<4x4x4xf16>
        %from_elements = tensor.from_elements %cst_0, %cst_6, %cst_0, %cst_23, %cst_2, %cst_23, %cst_23, %cst, %cst_2, %cst, %cst_23, %cst, %cst_0, %cst_0, %cst_2, %cst_6, %cst_0, %cst_6, %cst_2, %cst_23, %cst_2, %cst_23, %cst_0, %cst, %cst_23, %cst, %cst_23, %cst, %cst_6, %cst_2, %cst_6, %cst_0, %cst_2, %cst_6, %cst_2, %cst_2, %cst_0, %cst, %cst_23, %cst_23, %cst, %cst, %cst, %cst_23, %cst, %cst, %cst_0, %cst_6, %cst_0, %cst_6, %cst_6, %cst_2, %cst_0, %cst_2, %cst_23, %cst_23, %cst, %cst_2, %cst_6, %cst_2, %cst_23, %cst_0, %cst_0, %cst_2, %cst_6, %cst_6, %cst_0, %cst_23, %cst_23, %cst_2, %cst_23, %cst_23, %cst_2, %cst_2, %cst_6, %cst_2, %cst_0, %cst_0, %cst, %cst_0, %cst_6, %cst, %cst, %cst_23, %cst_23, %cst_23, %cst_2, %cst_23, %cst_2, %cst_0, %cst_2, %cst_23, %cst_2, %cst_2, %cst_2, %cst, %cst, %cst_0, %cst_6, %cst, %cst, %cst, %cst_0, %cst_2, %cst, %cst_23, %cst_2, %cst, %cst, %cst_6, %cst_6, %cst_0, %cst_0, %cst_0, %cst_6, %cst_2, %cst, %cst_23, %cst_6, %cst_0, %cst_2, %cst_2, %cst_0, %cst, %cst, %cst_0, %cst_23, %cst_0 : tensor<4x8x4xf32>
        %279 = arith.cmpi uge, %true_36, %true_4 : i1
        scf.yield %arg1 : i1
      }
      %258 = bufferization.to_tensor %alloc_18 : memref<4x8x8xi64>
      %259 = vector.splat %c0 : vector<4x8x4xindex>
      memref.assume_alignment %alloc_11, 1 : memref<4x8x8xf16>
      %260 = affine.load %alloc_17[%c3, %c15, %c0] : memref<4x8x8xf16>
      bufferization.dealloc_tensor %8 : tensor<4x4x4xi16>
      %261 = index.castu %c6 : index to i32
      %262 = vector.create_mask %127, %44 : vector<8x16xi1>
      %263 = vector.broadcast %167 : f16 to vector<16xf16>
      %dest_63, %accumulated_value_64 = vector.scan <mul>, %170, %263 {inclusive = true, reduction_dim = 0 : i64} : vector<8x16xf16>, vector<16xf16>
      %264 = math.ctlz %c0_i64 : i64
      %265 = math.ipowi %false_5, %false_1 : i1
      %266 = affine.apply affine_map<(d0, d1) -> (d1 + d0 floordiv 2 + d1 + 9 + 9)>(%c12, %c2)
      memref.assume_alignment %alloc_22, 8 : memref<4x4x4xf32>
      scf.yield %19 : vector<8xf32>
    }
    %188 = affine.min affine_map<(d0) -> ((d0 * 32 - 2) * 32, -2, -16, -2)>(%c1)
    %collapsed_43 = tensor.collapse_shape %159 [[0, 1], [2]] : tensor<4x8x8xi64> into tensor<32x8xi64>
    %true_44 = index.bool.constant true
    %189 = arith.shli %true_27, %true_27 : i1
    %190 = arith.divf %cst, %cst : f32
    %191 = index.ceildivs %c10, %c11
    %192 = arith.mulf %cst_0, %cst_6 : f32
    vector.print %97 : vector<6xf32>
    %193 = arith.mulf %cst_2, %cst_0 : f32
    %false_45 = index.bool.constant false
    %194 = arith.maxui %123, %c1225607385_i64 : i64
    %195 = memref.load %157[%c3, %c1, %c2] : memref<4x8x4xi16>
    bufferization.dealloc_tensor %3 : tensor<8x16xi32>
    %196 = vector.broadcast %cst_6 : f32 to vector<8x16xf32>
    %197 = vector.fma %196, %89, %89 : vector<8x16xf32>
    %alloc_46 = memref.alloc() : memref<4x8x4xf16>
    memref.copy %113, %alloc_46 : memref<4x8x4xf16> to memref<4x8x4xf16>
    %198 = math.floor %12 : tensor<4x8x8xf32>
    %199 = math.cttz %10 : tensor<4x8x4xi1>
    %false_47 = arith.constant false
    %200 = vector.transfer_read %alloc[%c3, %c15, %169], %false_47 : memref<4x4x4xi1>, vector<16xi1>
    %201 = math.powf %12, %17 : tensor<4x8x8xf32>
    %rank_48 = tensor.rank %14 : tensor<4x8x4xi1>
    %202 = math.atan2 %collapsed, %collapsed_39 : tensor<32x8xf32>
    %203 = vector.create_mask %c15, %c2 : vector<8x16xi1>
    %204 = arith.floordivsi %true_26, %true_26 : i1
    %205 = math.atan2 %cst_0, %cst_0 : f32
    bufferization.dealloc_tensor %16 : tensor<4x8x8xf32>
    %206 = math.cttz %c1_i64 : i64
    %207 = vector.create_mask %c13, %180 : vector<8x16xi1>
    %208 = index.ceildivs %64, %c2
    %209 = vector.broadcast %c14 : index to vector<16xindex>
    %210 = vector.broadcast %false_5 : i1 to vector<16xi1>
    %211 = vector.broadcast %c1_i64 : i64 to vector<16xi64>
    vector.scatter %alloc_16[%c0, %c1, %c3] [%209], %210, %211 : memref<4x8x4xi64>, vector<16xindex>, vector<16xi1>, vector<16xi64>
    %212 = vector.create_mask %rank_38, %rank, %c3 : vector<4x8x4xi1>
    %213 = memref.load %alloc_22[%c1, %c0, %c2] : memref<4x4x4xf32>
    %214 = arith.divsi %extracted, %true_36 : i1
    %215 = math.atan2 %collapsed_39, %collapsed_39 : tensor<32x8xf32>
    %216 = vector.broadcast %c-28554_i16 : i16 to vector<4x8xi16>
    %dest_49, %accumulated_value_50 = vector.scan <xor>, %181, %216 {inclusive = false, reduction_dim = 2 : i64} : vector<4x8x8xi16>, vector<4x8xi16>
    %217 = math.cttz %c-28554_i16 : i16
    %218 = index.divs %191, %c3
    %generated_51 = tensor.generate %188 {
    ^bb0(%arg0: index, %arg1: index):
      %255 = math.absf %4 : tensor<8x16xf16>
      %256 = arith.addi %c151266709_i64, %c1225607385_i64 : i64
      %collapsed_63 = tensor.collapse_shape %expanded [[0, 1]] : tensor<8x1xi64> into tensor<8xi64>
      affine.for %arg2 = 0 to 45 {
      }
      tensor.yield %c1225607385_i64 : i64
    } : tensor<?x16xi64>
    %219 = affine.apply affine_map<(d0, d1, d2) -> ((d2 floordiv 16) * 2 + 128)>(%c3, %c4, %178)
    %220 = bufferization.to_tensor %alloc_11 : memref<4x8x8xf16>
    %221 = affine.load %alloc_18[%c0, %c13, %c5] : memref<4x8x8xi64>
    %222 = arith.shrui %true_27, %false_1 : i1
    %223 = affine.if affine_set<(d0) : (-(d0 mod 64) - 64 >= 0)>(%c1) -> memref<4x8x4xi1> {
      %255 = memref.atomic_rmw mulf %cst_23, %alloc_12[%c2, %c3, %c2] : (f32, memref<4x8x8xf32>) -> f32
      %256 = vector.broadcast %true_44 : i1 to vector<4x8x8xi1>
      %257 = math.powf %0, %12 : tensor<4x8x8xf32>
      %258 = index.add %191, %66
      %259 = math.log2 %cst_6 : f32
      %260 = vector.broadcast %extracted : i1 to vector<16x4x4xi1>
      %261 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %207, %82, %260 : vector<8x16xi1>, vector<4x8x4xi1> into vector<16x4x4xi1>
      %262 = math.log2 %cst_2 : f32
      %263 = math.fma %9, %17, %9 : tensor<4x8x8xf32>
      affine.yield %alloc_15 : memref<4x8x4xi1>
    } else {
      %255 = vector.shuffle %86, %89 [0, 3, 4, 8, 10, 12] : vector<8x16xf32>, vector<8x16xf32>
      %256 = math.log1p %12 : tensor<4x8x8xf32>
      %257 = tensor.empty() : tensor<4xi16>
      %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%257 : tensor<4xi16>) outs(%8 : tensor<4x4x4xi16>) {
      ^bb0(%in: i16, %out: i16):
        %263 = math.exp %cst_23 : f32
        %264 = tensor.empty() : tensor<4x8x8xi64>
        %265 = math.cttz %10 : tensor<4x8x4xi1>
        %266 = index.mul %c10, %c0
        %267 = vector.bitcast %86 : vector<8x16xf32> to vector<8x16xf32>
        %splat = tensor.splat %true_26 : tensor<8x16xi1>
        %268 = vector.shuffle %170, %170 [0, 2, 4, 5, 8, 9, 10, 11, 12] : vector<8x16xf16>, vector<8x16xf16>
        %269 = math.rsqrt %2 : tensor<4x4x4xf32>
        %270 = math.round %cst_23 : f32
        memref.assume_alignment %55, 2 : memref<4x8x8xi16>
        %271 = arith.addf %cst_0, %cst_6 : f32
        %272 = arith.divsi %c-28554_i16, %in : i16
        %273 = math.ipowi %false, %true : i1
        %274 = math.ctlz %1 : tensor<8x16xi64>
        %275 = index.ceildivu %180, %c13
        %276 = vector.bitcast %19 : vector<8xf32> to vector<8xf32>
        %277 = arith.maxui %false_1, %false_5 : i1
        %278 = math.atan2 %16, %9 : tensor<4x8x8xf32>
        %279 = math.round %cst_3 : f16
        %cst_63 = arith.constant 1.000000e+00 : f32
        %280 = vector.transfer_read %96[%44, %219], %cst_63 : tensor<8x16xf32>, vector<f32>
        %281 = vector.create_mask %51, %rank_31 : vector<8x16xi1>
        %expanded_64 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<4x4x4xi64> into tensor<4x4x4x1xi64>
        %282 = math.atan2 %5, %6 : tensor<4x4x4xf32>
        %283 = affine.load %alloc_20[%c8, %c4] : memref<8x16xi64>
        %284 = math.atan2 %2, %5 : tensor<4x4x4xf32>
        %285 = vector.broadcast %true_44 : i1 to vector<8x4xi1>
        %dest_65, %accumulated_value_66 = vector.scan <xor>, %212, %285 {inclusive = true, reduction_dim = 0 : i64} : vector<4x8x4xi1>, vector<8x4xi1>
        %286 = math.expm1 %4 : tensor<8x16xf16>
        %287 = arith.addf %cst_6, %cst_63 : f32
        %288 = arith.shrui %true, %false_1 : i1
        %splat_67 = tensor.splat %cst : tensor<4x8x8xf32>
        %289 = arith.shli %c1492876984_i32, %c1053378056_i32 : i32
        %extracted_68 = tensor.extract %5[%c0, %c1, %c1] : tensor<4x4x4xf32>
        linalg.yield %out : i16
      } -> tensor<4x4x4xi16>
      %259 = arith.remf %cst_23, %cst_6 : f32
      memref.assume_alignment %alloc_14, 1 : memref<4x4x4xf16>
      %260 = arith.maxui %true_26, %false_5 : i1
      %261 = vector.broadcast %c151266709_i64 : i64 to vector<i64>
      vector.transfer_write %261, %alloc_20[%117, %rank_31] : vector<i64>, memref<8x16xi64>
      %262 = arith.shrsi %true_36, %true_26 : i1
      affine.yield %alloc_15 : memref<4x8x4xi1>
    }
    %224 = arith.minf %cst_3, %cst_3 : f16
    %rank_52 = tensor.rank %3 : tensor<8x16xi32>
    %225 = affine.for %arg0 = 0 to 81 iter_args(%arg1 = %220) -> (tensor<4x8x8xf16>) {
      affine.yield %arg1 : tensor<4x8x8xf16>
    }
    %226 = arith.floordivsi %true, %true : i1
    %227 = math.cttz %3 : tensor<8x16xi32>
    %228 = index.ceildivu %64, %c11
    %229 = math.ipowi %true, %true_27 : i1
    %230 = arith.minf %167, %167 : f16
    %231 = math.expm1 %cst : f32
    %232 = tensor.empty() : tensor<4x8x8xf32>
    %mapped_53 = linalg.map ins(%9, %9 : tensor<4x8x8xf32>, tensor<4x8x8xf32>) outs(%232 : tensor<4x8x8xf32>)
      (%in: f32, %in_63: f32) {
        %255 = arith.remf %in_63, %cst_6 : f32
        %256 = vector.broadcast %in_63 : f32 to vector<8x16xf32>
        %257 = vector.fma %256, %89, %197 : vector<8x16xf32>
        scf.execute_region {
          %285 = arith.divsi %true, %true : i1
          %286 = vector.broadcast %false : i1 to vector<16x8xi1>
          %287 = vector.transfer_write %286, %10[%53, %218, %rank_52] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x8xi1>, tensor<4x8x4xi1>
          %288 = index.divs %rank_38, %44
          %cast_70 = tensor.cast %10 : tensor<4x8x4xi1> to tensor<?x?x?xi1>
          %289 = arith.negf %cst : f32
          %290 = math.ipowi %1, %39 : tensor<8x16xi64>
          %291 = arith.divsi %c-28554_i16, %c-28554_i16 : i16
          %292 = math.exp2 %5 : tensor<4x4x4xf32>
          %293 = arith.shrsi %c1053378056_i32, %c1821023281_i32 : i32
          %294 = arith.ori %c151266709_i64, %c1_i64 : i64
          %295 = vector.broadcast %false_5 : i1 to vector<4x8x4xi1>
          %296 = vector.load %alloc_19[%c3, %c7, %c1] : memref<4x8x4xi32>, vector<4x8x4xi32>
          %expanded_71 = tensor.expand_shape %85 [[0], [1, 2]] : tensor<8x16xf32> into tensor<8x16x1xf32>
          %297 = math.exp %15 : tensor<4x8x4xf16>
          %298 = affine.max affine_map<(d0) -> (d0 mod 64 - 80)>(%c13)
          %299 = arith.minui %false, %true_27 : i1
          scf.yield
        }
        %258 = arith.addi %c1225607385_i64, %c151266709_i64 : i64
        %259 = vector.broadcast %c1_i64 : i64 to vector<8xi64>
        %260 = vector.transfer_write %259, %collapsed_43[%117, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi64>, tensor<32x8xi64>
        %261 = vector.broadcast %cst_2 : f32 to vector<16xf32>
        %262 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %257, %144, %261 : vector<8x16xf32>, vector<8xf32> into vector<16xf32>
        memref.copy %150, %alloc_22 : memref<4x4x4xf32> to memref<4x4x4xf32>
        %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%5 : tensor<4x4x4xf32>) {
        ^bb0(%out: f32):
          %285 = math.ctlz %expanded_42 : tensor<4x8x4x1xi1>
          %286 = arith.minsi %c151266709_i64, %123 : i64
          %287 = vector.broadcast %cst_23 : f32 to vector<f32>
          vector.transfer_write %287, %150[%rank_52, %c8, %c0] : vector<f32>, memref<4x4x4xf32>
          %cst_70 = arith.constant 1.000000e+00 : f32
          %288 = vector.transfer_read %150[%188, %c15, %c7], %cst_70 : memref<4x4x4xf32>, vector<8xf32>
          memref.store %c1_i64, %41[%c6] : memref<8xi64>
          %289 = index.maxs %191, %c6
          %290 = math.rsqrt %5 : tensor<4x4x4xf32>
          %291 = math.cttz %false_1 : i1
          %expanded_71 = tensor.expand_shape %9 [[0], [1], [2, 3]] : tensor<4x8x8xf32> into tensor<4x8x8x1xf32>
          %292 = arith.mulf %in, %cst_0 : f32
          %293 = math.rsqrt %6 : tensor<4x4x4xf32>
          %inserted = tensor.insert %c151266709_i64 into %18[%c4] : tensor<8xi64>
          %294 = memref.load %alloc_12[%c2, %c2, %c6] : memref<4x8x8xf32>
          %295 = math.fpowi %in_63, %c1053378056_i32 : f32, i32
          %296 = math.cttz %false_5 : i1
          %297 = vector.create_mask %53, %180, %c7 : vector<4x8x4xi1>
          %298 = math.tanh %out : f32
          %299 = bufferization.to_memref %expanded : memref<8x1xi64>
          %300 = math.exp2 %5 : tensor<4x4x4xf32>
          %301 = arith.mulf %in, %cst_2 : f32
          %302 = math.powf %5, %5 : tensor<4x4x4xf32>
          %alloc_72 = memref.alloc() : memref<4x8x8xi64>
          memref.copy %alloc_18, %alloc_72 : memref<4x8x8xi64> to memref<4x8x8xi64>
          bufferization.dealloc_tensor %6 : tensor<4x4x4xf32>
          %303 = math.tan %expanded_71 : tensor<4x8x8x1xf32>
          %304 = memref.load %alloc_16[%c1, %c6, %c1] : memref<4x8x4xi64>
          %305 = index.ceildivu %120, %rank
          %306 = arith.shli %true, %true : i1
          %cast_73 = tensor.cast %6 : tensor<4x4x4xf32> to tensor<?x?x?xf32>
          %307 = vector.create_mask %rank, %63, %35 : vector<4x8x4xi1>
          %308 = vector.broadcast %cst_23 : f32 to vector<16x16xf32>
          %309 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %197, %256, %308 : vector<8x16xf32>, vector<8x16xf32> into vector<16x16xf32>
          %310 = arith.remf %cst_2, %cst_6 : f32
          %311 = math.exp %cst_6 : f32
          linalg.yield %cst_23 : f32
        } -> tensor<4x4x4xf32>
        %splat = tensor.splat %true_4 : tensor<4x8x8xi1>
        %264 = math.tanh %4 : tensor<8x16xf16>
        %c0_i32 = arith.constant 0 : i32
        %265 = vector.transfer_read %154[%c11, %191], %c0_i32 : tensor<16x4xi32>, vector<8xi32>
        %collapsed_64 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<32x8xf32> into tensor<256xf32>
        %266 = math.roundeven %60 : tensor<8x16xf16>
        %267 = index.castu %127 : index to i32
        %268 = arith.ori %221, %c1225607385_i64 : i64
        %269 = arith.remf %cst_6, %cst_23 : f32
        %270 = vector.extract_strided_slice %87 {offsets = [2], sizes = [5], strides = [1]} : vector<8x16xi1> to vector<5x16xi1>
        %271 = index.castu %c1492876984_i32 : i32 to index
        %272 = vector.extract %259[7] : vector<8xi64>
        %273 = math.round %167 : f16
        %expanded_65 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<8x16xf16> into tensor<8x16x1xf16>
        %274 = arith.mulf %167, %167 : f16
        %275 = tensor.empty() : tensor<32x16xf32>
        %276 = linalg.matmul ins(%collapsed, %96 : tensor<32x8xf32>, tensor<8x16xf32>) outs(%275 : tensor<32x16xf32>) -> tensor<32x16xf32>
        %277 = arith.cmpi sge, %c1821023281_i32, %c0_i32 : i32
        %generated_66 = tensor.generate %c9, %127 {
        ^bb0(%arg0: index, %arg1: index):
          %alloc_70 = memref.alloc() : memref<4x8x4xi32>
          %285 = math.exp2 %2 : tensor<4x4x4xf32>
          %286 = index.maxu %271, %208
          %287 = index.castu %rank : index to i32
          tensor.yield %c-28554_i16 : i16
        } : tensor<?x?xi16>
        %true_67 = index.bool.constant true
        %278 = memref.load %alloc_20[%c4, %c3] : memref<8x16xi64>
        %false_68 = index.bool.constant false
        %279 = index.mul %c12, %rank_52
        %280 = math.ceil %15 : tensor<4x8x4xf16>
        %281 = vector.broadcast %true : i1 to vector<4x4x4xi1>
        %282 = vector.broadcast %c1821023281_i32 : i32 to vector<4x4x4xi32>
        %283 = vector.gather %alloc_20[%64, %64] [%282], %281, %58 : memref<8x16xi64>, vector<4x4x4xi32>, vector<4x4x4xi1>, vector<4x4x4xi64> into vector<4x4x4xi64>
        %284 = math.exp %4 : tensor<8x16xf16>
        %cst_69 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_69 : f32
      }
    %233 = tensor.empty() : tensor<4x8x8xi16>
    %mapped_54 = linalg.map ins(%alloc_7, %55 : memref<4x8x8xi16>, memref<4x8x8xi16>) outs(%233 : tensor<4x8x8xi16>)
      (%in: i16, %in_63: i16) {
        %255 = memref.realloc %41 : memref<8xi64> to memref<8xi64>
        %256 = math.floor %13 : tensor<8x16xf16>
        %257 = arith.andi %c-28554_i16, %in_63 : i16
        %258 = arith.ceildivsi %false_47, %extracted : i1
        %259 = index.divs %120, %188
        bufferization.dealloc_tensor %0 : tensor<4x8x8xf32>
        %260 = memref.atomic_rmw assign %cst_0, %150[%c3, %c2, %c0] : (f32, memref<4x4x4xf32>) -> f32
        %261 = affine.min affine_map<(d0) -> (0)>(%120)
        bufferization.dealloc_tensor %13 : tensor<8x16xf16>
        %rank_64 = tensor.rank %17 : tensor<4x8x8xf32>
        %262 = math.rsqrt %cst_0 : f32
        %263 = vector.broadcast %cst_2 : f32 to vector<8x8xf32>
        %264 = vector.transfer_write %263, %5[%c15, %208, %rank_64] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<8x8xf32>, tensor<4x4x4xf32>
        memref.store %c1_i64, %alloc_18[%c3, %c6, %c1] : memref<4x8x8xi64>
        %265 = bufferization.clone %alloc_7 : memref<4x8x8xi16> to memref<4x8x8xi16>
        %266 = arith.addf %cst_23, %cst_2 : f32
        %267 = arith.floordivsi %123, %c151266709_i64 : i64
        affine.store %c1_i64, %alloc_20[%c11, %c12] : memref<8x16xi64>
        %from_elements = tensor.from_elements %c1492876984_i32, %c1492876984_i32, %c1821023281_i32, %c1821023281_i32, %c1821023281_i32, %c1821023281_i32, %c1492876984_i32, %c1821023281_i32, %c1053378056_i32, %c1053378056_i32, %c1821023281_i32, %c1492876984_i32, %c1821023281_i32, %c1053378056_i32, %c1821023281_i32, %c1821023281_i32, %c1492876984_i32, %c1821023281_i32, %c1492876984_i32, %c1492876984_i32, %c1492876984_i32, %c1053378056_i32, %c1821023281_i32, %c1821023281_i32, %c1492876984_i32, %c1492876984_i32, %c1053378056_i32, %c1821023281_i32, %c1053378056_i32, %c1053378056_i32, %c1821023281_i32, %c1492876984_i32, %c1492876984_i32, %c1053378056_i32, %c1821023281_i32, %c1053378056_i32, %c1821023281_i32, %c1821023281_i32, %c1492876984_i32, %c1821023281_i32, %c1053378056_i32, %c1492876984_i32, %c1053378056_i32, %c1492876984_i32, %c1492876984_i32, %c1053378056_i32, %c1053378056_i32, %c1492876984_i32, %c1492876984_i32, %c1821023281_i32, %c1053378056_i32, %c1053378056_i32, %c1821023281_i32, %c1053378056_i32, %c1492876984_i32, %c1821023281_i32, %c1821023281_i32, %c1492876984_i32, %c1053378056_i32, %c1492876984_i32, %c1821023281_i32, %c1821023281_i32, %c1821023281_i32, %c1053378056_i32, %c1492876984_i32, %c1053378056_i32, %c1053378056_i32, %c1053378056_i32, %c1053378056_i32, %c1492876984_i32, %c1053378056_i32, %c1492876984_i32, %c1821023281_i32, %c1053378056_i32, %c1053378056_i32, %c1053378056_i32, %c1053378056_i32, %c1821023281_i32, %c1492876984_i32, %c1492876984_i32, %c1492876984_i32, %c1492876984_i32, %c1821023281_i32, %c1492876984_i32, %c1492876984_i32, %c1821023281_i32, %c1053378056_i32, %c1053378056_i32, %c1492876984_i32, %c1821023281_i32, %c1821023281_i32, %c1492876984_i32, %c1821023281_i32, %c1053378056_i32, %c1053378056_i32, %c1821023281_i32, %c1492876984_i32, %c1821023281_i32, %c1053378056_i32, %c1053378056_i32, %c1492876984_i32, %c1492876984_i32, %c1821023281_i32, %c1492876984_i32, %c1492876984_i32, %c1053378056_i32, %c1053378056_i32, %c1821023281_i32, %c1821023281_i32, %c1053378056_i32, %c1053378056_i32, %c1053378056_i32, %c1821023281_i32, %c1053378056_i32, %c1053378056_i32, %c1821023281_i32, %c1053378056_i32, %c1053378056_i32, %c1492876984_i32, %c1053378056_i32, %c1821023281_i32, %c1053378056_i32, %c1492876984_i32, %c1492876984_i32, %c1492876984_i32, %c1053378056_i32, %c1821023281_i32, %c1053378056_i32 : tensor<4x8x4xi32>
        %268 = math.atan %0 : tensor<4x8x8xf32>
        %269 = vector.create_mask %178, %c11 : vector<8x16xi1>
        %270 = memref.atomic_rmw muli %in_63, %157[%c2, %c5, %c0] : (i16, memref<4x8x4xi16>) -> i16
        %271 = index.add %208, %rank_64
        %272 = scf.while (%arg0 = %137) : (vector<4xi1>) -> vector<4xi1> {
          %280 = math.round %13 : tensor<8x16xf16>
          %281 = arith.cmpf oeq, %cst_3, %cst_3 : f16
          %282 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, (d3 - d2) * 32, d3 + d2, d0 - d3 mod 16)>(%66, %64, %c8, %c14)
          %283 = index.floordivs %66, %c6
          %284 = math.fma %9, %12, %9 : tensor<4x8x8xf32>
          %285 = index.ceildivs %219, %191
          %286 = math.rsqrt %cst_23 : f32
          %287 = arith.ceildivsi %true_36, %false : i1
          scf.condition(%false_5) %136 : vector<4xi1>
        } do {
        ^bb0(%arg0: vector<4xi1>):
          %280 = memref.load %alloc_18[%c1, %c1, %c3] : memref<4x8x8xi64>
          %281 = vector.create_mask %261, %rank_31, %rank_64 : vector<4x8x4xi1>
          %282 = math.rsqrt %cst_2 : f32
          %283 = vector.broadcast %in_63 : i16 to vector<4x8x8xi16>
          %284 = bufferization.to_tensor %alloc_19 : memref<4x8x4xi32>
          %285 = arith.minf %cst_6, %cst_0 : f32
          %286 = vector.broadcast %in_63 : i16 to vector<i16>
          vector.transfer_write %286, %alloc_8[%c3, %219, %169] : vector<i16>, memref<4x4x4xi16>
          %287 = tensor.empty() : tensor<4x8x8xi32>
          %288 = math.fpowi %0, %287 : tensor<4x8x8xf32>, tensor<4x8x8xi32>
          %289 = math.tanh %4 : tensor<8x16xf16>
          %expanded_66 = tensor.expand_shape %15 [[0], [1], [2, 3]] : tensor<4x8x4xf16> into tensor<4x8x4x1xf16>
          %290 = vector.broadcast %true_26 : i1 to vector<8xi1>
          %dest_67, %accumulated_value_68 = vector.scan <minui>, %87, %290 {inclusive = true, reduction_dim = 1 : i64} : vector<8x16xi1>, vector<8xi1>
          %splat = tensor.splat %c-28554_i16 : tensor<4x4x4xi16>
          %alloc_69 = memref.alloc() : memref<16x8xf16>
          %291 = tensor.empty() : tensor<8x8xf16>
          %292 = linalg.matmul ins(%13, %alloc_69 : tensor<8x16xf16>, memref<16x8xf16>) outs(%291 : tensor<8x8xf16>) -> tensor<8x8xf16>
          %293 = arith.cmpi ult, %c1_i64, %c0_i64 : i64
          %294 = arith.xori %221, %221 : i64
          %295 = arith.ori %in, %in : i16
          scf.yield %136 : vector<4xi1>
        }
        %273 = math.exp2 %6 : tensor<4x4x4xf32>
        %274 = memref.atomic_rmw addi %c1225607385_i64, %alloc_18[%c2, %c4, %c0] : (i64, memref<4x8x8xi64>) -> i64
        %275 = vector.transpose %136, [0] : vector<4xi1> to vector<4xi1>
        %276 = math.floor %collapsed_39 : tensor<32x8xf32>
        %277 = scf.while (%arg0 = %167) : (f16) -> f16 {
          %cst_66 = arith.constant 1.000000e+00 : f32
          %cst_67 = arith.constant 0.000000e+00 : f32
          %280 = vector.transfer_read %expanded_34[%c5, %53, %271, %c1], %cst_67 {permutation_map = affine_map<(d0, d1, d2, d3) -> (d0, d1)>} : tensor<4x8x8x1xf32>, vector<16x4xf32>
          %false_68 = index.bool.constant false
          %281 = vector.broadcast %cst_6 : f32 to vector<16xf32>
          %282 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %89, %144, %281 : vector<8x16xf32>, vector<8xf32> into vector<16xf32>
          %false_69 = index.bool.constant false
          %283 = math.log10 %0 : tensor<4x8x8xf32>
          %284 = vector.broadcast %cst_23 : f32 to vector<4x8x8xf32>
          %285 = vector.fma %284, %284, %284 : vector<4x8x8xf32>
          %286 = arith.ceildivsi %c1053378056_i32, %c1053378056_i32 : i32
          %287 = arith.cmpi uge, %false_47, %true_26 : i1
          scf.condition(%true_44) %arg0 : f16
        } do {
        ^bb0(%arg0: f16):
          %280 = math.rsqrt %expanded_34 : tensor<4x8x8x1xf32>
          %extracted_66 = tensor.extract %2[%c1, %c1, %c0] : tensor<4x4x4xf32>
          %281 = math.tan %85 : tensor<8x16xf32>
          %282 = math.tanh %0 : tensor<4x8x8xf32>
          %283 = math.exp %15 : tensor<4x8x4xf16>
          %284 = vector.shuffle %137, %136 [0, 3, 6, 7] : vector<4xi1>, vector<4xi1>
          %285 = memref.realloc %41 : memref<8xi64> to memref<8xi64>
          %286 = index.maxs %64, %c9
          %c5837_i16 = arith.constant 5837 : i16
          memref.store %167, %113[%c0, %c1, %c0] : memref<4x8x4xf16>
          memref.store %in_63, %157[%c1, %c1, %c1] : memref<4x8x4xi16>
          %287 = math.tanh %2 : tensor<4x4x4xf32>
          %288 = arith.shrsi %false, %false_5 : i1
          %289 = memref.atomic_rmw maxs %c1225607385_i64, %alloc_16[%c2, %c4, %c2] : (i64, memref<4x8x4xi64>) -> i64
          %290 = affine.load %265[%c8, %c7, %c4] : memref<4x8x8xi16>
          %collapsed_67 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<4x8x8xf32> into tensor<32x8xf32>
          scf.yield %cst_3 : f16
        }
        %278 = index.ceildivu %208, %44
        %collapsed_65 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<4x8x8xf32> into tensor<32x8xf32>
        %279 = index.ceildivs %188, %191
        affine.store %cst_3, %alloc_11[%c14, %c14, %c15] : memref<4x8x8xf16>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %234 = arith.ori %true_27, %false_45 : i1
    %235 = affine.if affine_set<(d0) : ((-(((d0 ceildiv 64) * 4) mod 32)) mod 16 == 0, d0 + ((d0 ceildiv 64) * 4) mod 32 >= 0, (-(((d0 ceildiv 64) * 4) mod 32)) mod 16 + ((d0 ceildiv 64) * 4) mod 32 + 2 >= 0, (d0 ceildiv 64) ceildiv 128 >= 0)>(%c4) -> memref<8x16xi32> {
      %cst_63 = arith.constant 1.000000e+00 : f32
      %255 = vector.transfer_read %alloc_9[%c12, %c2, %117], %cst_63 : memref<4x8x4xf32>, vector<4x8xf32>
      %256 = arith.minsi %extracted, %true_44 : i1
      %257 = index.castu %c0_i64 : i64 to index
      %258 = math.log2 %9 : tensor<4x8x8xf32>
      %259 = math.tanh %4 : tensor<8x16xf16>
      %collapsed_64 = tensor.collapse_shape %91 [[0, 1], [2]] : tensor<4x8x8xi16> into tensor<32x8xi16>
      %260 = vector.broadcast %c-28554_i16 : i16 to vector<8x16xi16>
      %261 = vector.gather %233[%178, %178, %c0] [%88], %87, %260 : tensor<4x8x8xi16>, vector<8x16xi32>, vector<8x16xi1>, vector<8x16xi16> into vector<8x16xi16>
      %262 = math.floor %cst_3 : f16
      %alloc_65 = memref.alloc() : memref<8x16xi32>
      affine.yield %alloc_65 : memref<8x16xi32>
    } else {
      %255 = vector.shuffle %101, %144 [2, 3, 4, 5, 15, 17, 18] : vector<12xf32>, vector<8xf32>
      %collapsed_63 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<4x4x4xi64> into tensor<16x4xi64>
      %256 = vector.create_mask %188, %218, %c5 : vector<4x8x8xi1>
      %257 = math.rsqrt %96 : tensor<8x16xf32>
      %258 = math.round %15 : tensor<4x8x4xf16>
      %259 = arith.cmpi ugt, %c1821023281_i32, %c1821023281_i32 : i32
      memref.assume_alignment %alloc_18, 1 : memref<4x8x8xi64>
      scf.execute_region {
        %260 = memref.load %alloc_16[%c3, %c3, %c2] : memref<4x8x4xi64>
        %261 = math.expm1 %expanded_34 : tensor<4x8x8x1xf32>
        %262 = arith.muli %false, %extracted : i1
        %263 = arith.shrui %c-28554_i16, %c-28554_i16 : i16
        %264 = math.log2 %collapsed_35 : tensor<16x4xf32>
        %265 = arith.remsi %true, %true_27 : i1
        %266 = vector.broadcast %167 : f16 to vector<16xf16>
        %267 = vector.transfer_write %266, %13[%c4, %169] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xf16>, tensor<8x16xf16>
        bufferization.dealloc_tensor %13 : tensor<8x16xf16>
        %268 = bufferization.to_memref %18 : memref<8xi64>
        %269 = vector.flat_transpose %68 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        %270 = arith.addf %cst_2, %cst_6 : f32
        %271 = arith.shrui %false_47, %false_45 : i1
        %272 = index.sizeof
        %273 = arith.shrui %123, %c1_i64 : i64
        %274 = index.casts %c1821023281_i32 : i32 to index
        %275 = vector.broadcast %c1821023281_i32 : i32 to vector<16xi32>
        %dest_65, %accumulated_value_66 = vector.scan <add>, %88, %275 {inclusive = false, reduction_dim = 0 : i64} : vector<8x16xi32>, vector<16xi32>
        scf.yield
      }
      %alloc_64 = memref.alloc() : memref<8x16xi32>
      affine.yield %alloc_64 : memref<8x16xi32>
    }
    %236 = index.mul %rank_38, %120
    %237 = vector.broadcast %c151266709_i64 : i64 to vector<4x4x4x4xi64>
    %238 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<and>} %58, %58, %237 : vector<4x4x4xi64>, vector<4x4x4xi64> into vector<4x4x4x4xi64>
    %239 = vector.broadcast %cst : f32 to vector<4x4x4xf32>
    %240 = vector.fma %239, %239, %239 : vector<4x4x4xf32>
    memref.alloca_scope  {
      %255 = scf.while (%arg0 = %68) : (vector<8xf32>) -> vector<8xf32> {
        %286 = math.tanh %167 : f16
        %splat = tensor.splat %extracted : tensor<4x4x4xi1>
        %287 = vector.broadcast %cst_3 : f16 to vector<4x4x4xf16>
        memref.assume_alignment %alloc_7, 16 : memref<4x8x8xi16>
        %288 = arith.shrsi %c1053378056_i32, %c1492876984_i32 : i32
        %289 = math.round %cst_6 : f32
        %290 = vector.reduction <mul>, %97 : vector<6xf32> into f32
        %291 = tensor.empty(%c3, %c5) : tensor<?x8x?xi16>
        scf.condition(%false_45) %68 : vector<8xf32>
      } do {
      ^bb0(%arg0: vector<8xf32>):
        %286 = vector.broadcast %c-28554_i16 : i16 to vector<4xi16>
        vector.transfer_write %286, %alloc_8[%c11, %53, %rank_38] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<4xi16>, memref<4x4x4xi16>
        %287 = arith.negf %cst : f32
        %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %97, %97, %cst : vector<6xf32>, vector<6xf32> into f32
        %289 = math.log2 %4 : tensor<8x16xf16>
        %290 = arith.remf %cst, %cst_23 : f32
        %291 = arith.cmpf ult, %cst_23, %cst : f32
        %292 = vector.broadcast %c0_i64 : i64 to vector<8xi64>
        vector.transfer_write %292, %alloc_18[%c11, %236, %c9] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<8xi64>, memref<4x8x8xi64>
        %293 = index.divs %219, %c11
        %294 = arith.ori %c1053378056_i32, %c1053378056_i32 : i32
        %295 = affine.load %alloc_19[%c12, %c7, %c14] : memref<4x8x4xi32>
        %296 = tensor.empty() : tensor<4x8x8xi1>
        %297 = arith.shrui %true_36, %true : i1
        %298 = vector.create_mask %228, %63 : vector<8x16xi1>
        %299 = vector.flat_transpose %136 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %300 = tensor.empty() : tensor<8x4xi32>
        %301 = linalg.matmul ins(%3, %154 : tensor<8x16xi32>, tensor<16x4xi32>) outs(%300 : tensor<8x4xi32>) -> tensor<8x4xi32>
        %302 = math.cttz %false_45 : i1
        scf.yield %144 : vector<8xf32>
      }
      %256 = vector.load %55[%c1, %c3, %c2] : memref<4x8x8xi16>, vector<4x8x8xi16>
      %257 = index.add %c1, %120
      %258 = math.rsqrt %6 : tensor<4x4x4xf32>
      %259 = arith.shrsi %c151266709_i64, %c1_i64 : i64
      %260 = vector.broadcast %cst_6 : f32 to vector<8xf32>
      %261 = vector.transfer_write %260, %16[%208, %c6, %c10] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<8xf32>, tensor<4x8x8xf32>
      %262 = arith.shrsi %c1492876984_i32, %c1821023281_i32 : i32
      %263 = tensor.empty() : tensor<4x4x4xi64>
      %264 = affine.min affine_map<(d0) -> ((d0 mod 2) mod 32 - d0 - 2, (d0 mod 2) mod 32 - ((d0 mod 2) mod 32 - d0), (d0 mod 2) mod 32)>(%35)
      %265 = tensor.empty() : tensor<4x8x8xi32>
      %266 = math.fpowi %12, %265 : tensor<4x8x8xf32>, tensor<4x8x8xi32>
      %267 = tensor.empty(%c3) : tensor<4x?x8xi16>
      %268 = index.add %c8, %169
      %rank_63 = tensor.rank %60 : tensor<8x16xf16>
      %alloc_64 = memref.alloc() : memref<8xi64>
      memref.copy %41, %alloc_64 : memref<8xi64> to memref<8xi64>
      %269 = vector.broadcast %cst_2 : f32 to vector<4x8x8xf32>
      %270 = vector.fma %269, %269, %269 : vector<4x8x8xf32>
      %271 = scf.if %false_5 -> (i64) {
        %286 = arith.negf %cst : f32
        %287 = index.castu %c11 : index to i32
        %288 = vector.create_mask %c3, %c2 : vector<8x16xi1>
        %289 = math.cttz %false_5 : i1
        %290 = math.atan2 %cst_23, %cst : f32
        %291 = index.add %rank_31, %228
        %292 = vector.broadcast %true_27 : i1 to vector<4x8x4xi1>
        %293 = arith.andi %c0_i64, %c1225607385_i64 : i64
        scf.yield %c1225607385_i64 : i64
      } else {
        %286 = arith.minf %cst_2, %cst_6 : f32
        %287 = math.log1p %5 : tensor<4x4x4xf32>
        %288 = index.ceildivu %120, %264
        %expanded_68 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<8x16xf16> into tensor<8x16x1xf16>
        %289 = math.exp2 %60 : tensor<8x16xf16>
        %290 = vector.broadcast %false_5 : i1 to vector<16xi1>
        %291 = vector.insert %290, %203 [1] : vector<16xi1> into vector<8x16xi1>
        %292 = vector.bitcast %136 : vector<4xi1> to vector<4xi1>
        memref.store %true_26, %alloc[%c1, %c1, %c2] : memref<4x4x4xi1>
        scf.yield %c1225607385_i64 : i64
      }
      %272 = math.atan2 %5, %5 : tensor<4x4x4xf32>
      %rank_65 = tensor.rank %0 : tensor<4x8x8xf32>
      %generated_66 = tensor.generate %127, %127, %c8 {
      ^bb0(%arg0: index, %arg1: index, %arg2: index):
        %286 = arith.shrsi %false_47, %true_36 : i1
        %287 = math.roundeven %collapsed_35 : tensor<16x4xf32>
        %288 = vector.broadcast %cst_6 : f32 to vector<8x16xf32>
        %289 = vector.fma %288, %89, %197 : vector<8x16xf32>
        %290 = arith.negf %cst : f32
        tensor.yield %true : i1
      } : tensor<?x?x?xi1>
      %273 = bufferization.to_memref %15 : memref<4x8x4xf16>
      %274 = index.maxs %rank_48, %188
      %275 = arith.cmpi ne, %true, %false_1 : i1
      %276 = bufferization.clone %alloc_15 : memref<4x8x4xi1> to memref<4x8x4xi1>
      %277 = arith.shli %false_47, %true_27 : i1
      %278 = arith.floordivsi %221, %271 : i64
      %279 = vector.extract_strided_slice %240 {offsets = [2], sizes = [2], strides = [1]} : vector<4x4x4xf32> to vector<2x4x4xf32>
      %280 = scf.while (%arg0 = %c-28554_i16) : (i16) -> i16 {
        %286 = math.log10 %13 : tensor<8x16xf16>
        %287 = affine.max affine_map<(d0, d1, d2) -> (d0, d0)>(%180, %c8, %208)
        %288 = math.floor %0 : tensor<4x8x8xf32>
        %289 = math.cttz %extracted : i1
        %290 = math.exp %85 : tensor<8x16xf32>
        %291 = vector.reduction <maxf>, %260 : vector<8xf32> into f32
        %292 = math.cttz %false_1 : i1
        %293 = vector.broadcast %123 : i64 to vector<8x4xi64>
        vector.transfer_write %293, %alloc_18[%274, %c8, %rank_31] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<8x4xi64>, memref<4x8x8xi64>
        scf.condition(%false_45) %arg0 : i16
      } do {
      ^bb0(%arg0: i16):
        %286 = arith.muli %c0_i64, %c151266709_i64 : i64
        %287 = index.ceildivu %c1, %rank_48
        %288 = affine.load %41[%c3] : memref<8xi64>
        %collapsed_68 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<4x8x8xf32> into tensor<32x8xf32>
        %289 = math.log %collapsed : tensor<32x8xf32>
        %290 = math.expm1 %167 : f16
        %291 = memref.realloc %41 : memref<8xi64> to memref<4xi64>
        %292 = vector.broadcast %cst : f32 to vector<4x4x4xf32>
        %293 = math.ctlz %false_45 : i1
        %294 = arith.addf %cst, %cst_2 : f32
        %295 = math.fma %6, %5, %5 : tensor<4x4x4xf32>
        %296 = arith.minf %cst_0, %cst_2 : f32
        %297 = math.rsqrt %2 : tensor<4x4x4xf32>
        %298 = index.add %228, %c12
        %299 = affine.min affine_map<(d0, d1, d2) -> (-d0, d0 ceildiv 32 + d0)>(%c3, %236, %rank_31)
        %300 = vector.broadcast %cst : f32 to vector<16x4x8xf32>
        %301 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %89, %269, %300 : vector<8x16xf32>, vector<4x8x8xf32> into vector<16x4x8xf32>
        scf.yield %arg0 : i16
      }
      %c0_i64_67 = arith.constant 0 : i64
      %281 = vector.transfer_read %7[%64, %rank_48, %169], %c0_i64_67 : tensor<4x4x4xi64>, vector<i64>
      %282 = math.cttz %1 : tensor<8x16xi64>
      %283 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d3 ceildiv 8))>(%c1, %35, %c2, %rank_48)
      %284 = math.rsqrt %2 : tensor<4x4x4xf32>
      %285 = arith.cmpf ult, %cst, %cst_6 : f32
    }
    %241 = vector.broadcast %167 : f16 to vector<4x8x8xf16>
    %242 = math.floor %13 : tensor<8x16xf16>
    %243 = arith.minsi %true_27, %false_5 : i1
    %244 = arith.mulf %cst_2, %cst : f32
    %collapsed_55 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<4x8x8xf32> into tensor<32x8xf32>
    %rank_56 = tensor.rank %14 : tensor<4x8x4xi1>
    %245 = arith.maxui %221, %c1225607385_i64 : i64
    %246 = memref.atomic_rmw maxf %cst_3, %alloc_11[%c0, %c0, %c1] : (f16, memref<4x8x8xf16>) -> f16
    %rank_57 = tensor.rank %6 : tensor<4x4x4xf32>
    %247 = arith.remf %cst_6, %cst_0 : f32
    %generated_58 = tensor.generate %236, %rank_31, %218 {
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      %255 = math.powf %13, %4 : tensor<8x16xf16>
      %cast_63 = tensor.cast %220 : tensor<4x8x8xf16> to tensor<?x?x?xf16>
      scf.index_switch %35 
      case 1 {
        memref.copy %93, %alloc_12 : memref<4x8x8xf32> to memref<4x8x8xf32>
        %258 = arith.xori %221, %123 : i64
        %259 = arith.addf %cst_3, %cst_3 : f16
        %260 = arith.negf %cst_2 : f32
        %261 = arith.remf %cst_0, %cst : f32
        %262 = math.exp %6 : tensor<4x4x4xf32>
        %263 = arith.remf %cst_6, %cst_2 : f32
        %264 = math.exp2 %5 : tensor<4x4x4xf32>
        %inserted = tensor.insert %cst_2 into %9[%c0, %c1, %c5] : tensor<4x8x8xf32>
        %265 = math.floor %9 : tensor<4x8x8xf32>
        %266 = bufferization.to_memref %159 : memref<4x8x8xi64>
        %267 = vector.broadcast %c-28554_i16 : i16 to vector<i16>
        %268 = vector.transfer_write %267, %8[%178, %66, %c3] : vector<i16>, tensor<4x4x4xi16>
        %269 = math.exp %4 : tensor<8x16xf16>
        %c1492539978_i64 = arith.constant 1492539978 : i64
        %270 = arith.mulf %cst_6, %cst_23 : f32
        %271 = arith.mulf %cst_23, %cst_2 : f32
        scf.yield
      }
      default {
        %258 = vector.bitcast %99 : vector<4x4x4xf32> to vector<4x4x4xf32>
        %259 = index.mul %rank_57, %c15
        %260 = arith.cmpf one, %cst_3, %cst_3 : f16
        %261 = arith.shrsi %c1053378056_i32, %c1053378056_i32 : i32
        %262 = math.log1p %6 : tensor<4x4x4xf32>
        %263 = index.castu %true_27 : i1 to index
        %264 = vector.broadcast %cst : f32 to vector<16x16xf32>
        %265 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %89, %89, %264 : vector<8x16xf32>, vector<8x16xf32> into vector<16x16xf32>
        %266 = math.exp %220 : tensor<4x8x8xf16>
        %267 = index.floordivs %c10, %rank_31
        %268 = affine.apply affine_map<(d0, d1) -> ((d0 + 2) * 2)>(%c15, %c12)
        %269 = affine.max affine_map<(d0, d1, d2) -> (d1 + 64, d1)>(%44, %268, %arg2)
        %270 = vector.broadcast %c1_i64 : i64 to vector<8x16xi64>
        %271 = bufferization.to_memref %91 : memref<4x8x8xi16>
        %272 = arith.minui %c1821023281_i32, %c1821023281_i32 : i32
        %273 = arith.shrui %c151266709_i64, %c1225607385_i64 : i64
        %274 = vector.broadcast %c1225607385_i64 : i64 to vector<16xi64>
        %275 = vector.broadcast %false_47 : i1 to vector<16xi1>
        %276 = vector.maskedload %alloc_16[%c1, %c1, %c3], %275, %274 : memref<4x8x4xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
      }
      %256 = vector.broadcast %false : i1 to vector<16x16xi1>
      %257 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %207, %207, %256 : vector<8x16xi1>, vector<8x16xi1> into vector<16x16xi1>
      tensor.yield %cst_0 : f32
    } : tensor<?x?x?xf32>
    %alloc_59 = memref.alloc() : memref<4x4x4xi1>
    memref.copy %alloc, %alloc_59 : memref<4x4x4xi1> to memref<4x4x4xi1>
    %true_60 = index.bool.constant true
    %248 = math.powf %6, %6 : tensor<4x4x4xf32>
    %249 = bufferization.clone %alloc_10 : memref<8x16xi1> to memref<8x16xi1>
    %250 = tensor.empty() : tensor<8x16xi64>
    %251 = linalg.copy ins(%1 : tensor<8x16xi64>) outs(%250 : tensor<8x16xi64>) -> tensor<8x16xi64>
    %alloc_61 = memref.alloc() : memref<16x8xf16>
    linalg.transpose ins(%13 : tensor<8x16xf16>) outs(%alloc_61 : memref<16x8xf16>) permutation = [1, 0] 
    %252 = tensor.empty() : tensor<16xi1>
    %reduced_62 = linalg.reduce ins(%249 : memref<8x16xi1>) outs(%252 : tensor<16xi1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %255 = vector.broadcast %c-28554_i16 : i16 to vector<4xi16>
        %256 = vector.maskedload %55[%c1, %c2, %c2], %136, %255 : memref<4x8x8xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
        %257 = arith.minsi %true_44, %false_47 : i1
        %258 = math.copysign %cst, %cst_2 : f32
        %259 = tensor.empty() : tensor<4x8x4xi1>
        %mapped_63 = linalg.map ins(%14, %10, %alloc_15 : tensor<4x8x4xi1>, tensor<4x8x4xi1>, memref<4x8x4xi1>) outs(%259 : tensor<4x8x4xi1>)
          (%in_65: i1, %in_66: i1, %in_67: i1) {
            %266 = vector.bitcast %101 : vector<12xf32> to vector<12xf32>
            %267 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 16)>(%66, %219, %rank_57)
            %268 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, ((d2 * 32) mod 128 + d1 + d0 + d2 * 32) ceildiv 128)>(%63, %208, %120, %c0)
            %269 = math.rsqrt %85 : tensor<8x16xf32>
            %270 = index.maxs %219, %51
            bufferization.dealloc_tensor %154 : tensor<16x4xi32>
            %271 = arith.minf %cst, %cst_2 : f32
            %272 = arith.floordivsi %true_36, %true_4 : i1
            %273 = affine.apply affine_map<(d0, d1, d2) -> ((d2 floordiv 16) * 2 + 128)>(%c0, %53, %53)
            %274 = arith.mulf %cst_2, %cst_0 : f32
            %splat = tensor.splat %false_1 : tensor<4x8x4xi1>
            memref.assume_alignment %alloc_61, 1 : memref<16x8xf16>
            %275 = arith.ori %true_26, %false : i1
            %276 = math.log1p %4 : tensor<8x16xf16>
            %collapsed_68 = tensor.collapse_shape %76 [[0, 1]] : tensor<8x16xi64> into tensor<128xi64>
            %277 = vector.create_mask %c12, %120, %c2 : vector<4x8x8xi1>
            %278 = arith.divf %cst_23, %cst_6 : f32
            %279 = arith.mulf %cst_6, %cst_2 : f32
            %280 = math.atan %13 : tensor<8x16xf16>
            %281 = vector.broadcast %true : i1 to vector<16x16xi1>
            %282 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %87, %106, %281 : vector<8x16xi1>, vector<8x16xi1> into vector<16x16xi1>
            %283 = index.ceildivu %c4, %236
            %284 = math.log1p %collapsed_39 : tensor<32x8xf32>
            %285 = memref.load %113[%c3, %c4, %c1] : memref<4x8x4xf16>
            %286 = vector.broadcast %in : i1 to vector<16xi1>
            %dest_69, %accumulated_value_70 = vector.scan <maxui>, %207, %286 {inclusive = true, reduction_dim = 0 : i64} : vector<8x16xi1>, vector<16xi1>
            %inserted = tensor.insert %cst into %5[%c3, %c0, %c1] : tensor<4x4x4xf32>
            %287 = vector.broadcast %true_27 : i1 to vector<8xi1>
            %dest_71, %accumulated_value_72 = vector.scan <xor>, %207, %287 {inclusive = false, reduction_dim = 1 : i64} : vector<8x16xi1>, vector<8xi1>
            %288 = vector.broadcast %cst_23 : f32 to vector<8x16xf32>
            %289 = vector.fma %288, %197, %196 : vector<8x16xf32>
            %290 = vector.broadcast %in_66 : i1 to vector<16xi1>
            %dest_73, %accumulated_value_74 = vector.scan <minsi>, %87, %290 {inclusive = true, reduction_dim = 0 : i64} : vector<8x16xi1>, vector<16xi1>
            %291 = math.ceil %15 : tensor<4x8x4xf16>
            %292 = tensor.empty() : tensor<4x8x8xi32>
            %293 = math.fpowi %9, %292 : tensor<4x8x8xf32>, tensor<4x8x8xi32>
            %294 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + 16, (d0 ceildiv 32) floordiv 16 - 2, d1 ceildiv 2 - 128)>(%c2, %c15, %c12, %178)
            %295 = vector.load %alloc_12[%c0, %c1, %c4] : memref<4x8x8xf32>, vector<4x8x4xf32>
            %false_75 = arith.constant false
            linalg.yield %false_75 : i1
          }
        %260 = memref.load %113[%c0, %c1, %c2] : memref<4x8x4xf16>
        %261 = index.ceildivu %c10, %c8
        %262 = index.ceildivu %c0, %219
        %263 = vector.broadcast %cst_3 : f16 to vector<8xf16>
        %264 = vector.broadcast %true_36 : i1 to vector<8xi1>
        %265 = vector.maskedload %alloc_14[%c1, %c2, %c1], %264, %263 : memref<4x4x4xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
        %true_64 = arith.constant true
        linalg.yield %true_64 : i1
      }
    %253 = scf.parallel (%arg0) = (%c14) to (%218) step (%c11) init (%c-28554_i16) -> i16 {
      %c0_i64_63 = arith.constant 0 : i64
      %c0_i64_64 = arith.constant 0 : i64
      %255 = vector.transfer_read %expanded[%c14, %c6], %c0_i64_64 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<8x1xi64>, vector<8xi64>
      %256 = index.castu %120 : index to i32
      %257 = math.exp %9 : tensor<4x8x8xf32>
      %258 = arith.cmpi sgt, %false_5, %false : i1
      %259 = math.log10 %4 : tensor<8x16xf16>
      %260 = math.cttz %233 : tensor<4x8x8xi16>
      %261 = memref.load %alloc_14[%c1, %c0, %c2] : memref<4x4x4xf16>
      %262 = arith.divsi %c-28554_i16, %c-28554_i16 : i16
      %c0_i16 = arith.constant 0 : i16
      %263 = vector.transfer_read %55[%arg0, %rank_48, %c2], %c0_i16 : memref<4x8x8xi16>, vector<8x8xi16>
      %264 = math.atan2 %6, %5 : tensor<4x4x4xf32>
      %265 = vector.broadcast %true_27 : i1 to vector<i1>
      %266 = vector.transfer_write %265, %252[%c8] : vector<i1>, tensor<16xi1>
      %267 = index.ceildivu %64, %188
      %dest_65, %accumulated_value_66 = vector.scan <maxf>, %86, %68 {inclusive = true, reduction_dim = 1 : i64} : vector<8x16xf32>, vector<8xf32>
      %268 = arith.cmpf ogt, %167, %167 : f16
      %269 = arith.remf %167, %cst_3 : f16
      %270 = math.ctpop %expanded_42 : tensor<4x8x4x1xi1>
      %c1_i16 = arith.constant 1 : i16
      scf.reduce(%c1_i16)  : i16 {
      ^bb0(%arg1: i16, %arg2: i16):
        %271 = index.add %c12, %c15
        %272 = vector.shuffle %58, %58 [2, 3, 4, 6, 7] : vector<4x4x4xi64>, vector<4x4x4xi64>
        %273 = vector.broadcast %c1821023281_i32 : i32 to vector<8xi32>
        %dest_67, %accumulated_value_68 = vector.scan <mul>, %88, %273 {inclusive = false, reduction_dim = 1 : i64} : vector<8x16xi32>, vector<8xi32>
        %274 = vector.broadcast %218 : index to vector<8xindex>
        %275 = vector.broadcast %true : i1 to vector<8xi1>
        %276 = vector.broadcast %cst_3 : f16 to vector<8xf16>
        vector.scatter %113[%c0, %c7, %c3] [%274], %275, %276 : memref<4x8x4xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
        %expanded_69 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<8x16xf16> into tensor<8x16x1xf16>
        %alloc_70 = memref.alloc() : memref<16x16xi64>
        %277 = tensor.empty() : tensor<8x16xi64>
        %278 = linalg.matmul ins(%76, %alloc_70 : tensor<8x16xi64>, memref<16x16xi64>) outs(%277 : tensor<8x16xi64>) -> tensor<8x16xi64>
        memref.copy %alloc_10, %249 : memref<8x16xi1> to memref<8x16xi1>
        %279 = arith.ori %true_4, %true_44 : i1
        %c0_i16_71 = arith.constant 0 : i16
        scf.reduce.return %c0_i16_71 : i16
      }
      scf.yield
    }
    %254 = affine.vector_load %249[%236, %208] : memref<8x16xi1>, vector<8xi1>
    affine.vector_store %144, %150[%c4, %c13, %c14] : memref<4x4x4xf32>, vector<8xf32>
    vector.print %19 : vector<8xf32>
    vector.print %58 : vector<4x4x4xi64>
    vector.print %68 : vector<8xf32>
    vector.print %79 : vector<4x8x8xi32>
    vector.print %82 : vector<4x8x4xi1>
    vector.print %86 : vector<8x16xf32>
    vector.print %87 : vector<8x16xi1>
    vector.print %88 : vector<8x16xi32>
    vector.print %89 : vector<8x16xf32>
    vector.print %97 : vector<6xf32>
    vector.print %99 : vector<4x4x4xf32>
    vector.print %101 : vector<12xf32>
    vector.print %106 : vector<8x16xi1>
    vector.print %136 : vector<4xi1>
    vector.print %137 : vector<4xi1>
    vector.print %144 : vector<8xf32>
    vector.print %170 : vector<8x16xf16>
    vector.print %181 : vector<4x8x8xi16>
    vector.print %196 : vector<8x16xf32>
    vector.print %197 : vector<8x16xf32>
    vector.print %203 : vector<8x16xi1>
    vector.print %207 : vector<8x16xi1>
    vector.print %212 : vector<4x8x4xi1>
    vector.print %239 : vector<4x4x4xf32>
    vector.print %240 : vector<4x4x4xf32>
    vector.print %241 : vector<4x8x8xf16>
    vector.print %254 : vector<8xi1>
    vector.print %cst : f32
    vector.print %false : i1
    vector.print %c1492876984_i32 : i32
    vector.print %c1053378056_i32 : i32
    vector.print %cst_0 : f32
    vector.print %false_1 : i1
    vector.print %c151266709_i64 : i64
    vector.print %c-28554_i16 : i16
    vector.print %cst_2 : f32
    vector.print %cst_3 : f16
    vector.print %true : i1
    vector.print %true_4 : i1
    vector.print %c1821023281_i32 : i32
    vector.print %false_5 : i1
    vector.print %cst_6 : f32
    vector.print %c1225607385_i64 : i64
    vector.print %cst_23 : f32
    vector.print %true_26 : i1
    vector.print %true_27 : i1
    vector.print %c1_i64 : i64
    vector.print %123 : i64
    vector.print %extracted : i1
    vector.print %true_36 : i1
    vector.print %167 : f16
    vector.print %c0_i64 : i64
    vector.print %true_44 : i1
    vector.print %false_45 : i1
    vector.print %false_47 : i1
    vector.print %221 : i64
    vector.print %true_60 : i1
    return %88 : vector<8x16xi32>
  }
}
