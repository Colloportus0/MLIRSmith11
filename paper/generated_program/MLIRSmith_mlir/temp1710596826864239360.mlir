module {
  func.func @func1(%arg0: tensor<2x16xi16>) {
    %false = arith.constant false
    %true = arith.constant true
    %c7192_i16 = arith.constant 7192 : i16
    %false_0 = arith.constant false
    %c1633095684_i32 = arith.constant 1633095684 : i32
    %c-4457_i16 = arith.constant -4457 : i16
    %c1592072178_i64 = arith.constant 1592072178 : i64
    %cst = arith.constant 5.744000e+04 : f16
    %c31622_i16 = arith.constant 31622 : i16
    %cst_1 = arith.constant 1.55500109E+9 : f32
    %c-26475_i16 = arith.constant -26475 : i16
    %cst_2 = arith.constant 1.30674547E+9 : f32
    %c866211835_i32 = arith.constant 866211835 : i32
    %cst_3 = arith.constant 5.811200e+04 : f16
    %c-24118_i16 = arith.constant -24118 : i16
    %c839684178_i64 = arith.constant 839684178 : i64
    %0 = tensor.empty() : tensor<11x2x16xf16>
    %1 = tensor.empty() : tensor<11x2x16xf16>
    %2 = tensor.empty() : tensor<16x16xf32>
    %3 = tensor.empty() : tensor<2x16xf32>
    %4 = tensor.empty() : tensor<16x16xi64>
    %5 = tensor.empty() : tensor<11x16xi1>
    %6 = tensor.empty() : tensor<2x16xf32>
    %7 = tensor.empty() : tensor<2x16xi16>
    %8 = tensor.empty() : tensor<11x2x16xi16>
    %9 = tensor.empty() : tensor<16x16xi64>
    %10 = tensor.empty() : tensor<11x16xf16>
    %11 = tensor.empty() : tensor<11x16xf16>
    %12 = tensor.empty() : tensor<16x16xi1>
    %13 = tensor.empty() : tensor<11x16xi16>
    %14 = tensor.empty() : tensor<16x16xi32>
    %15 = tensor.empty() : tensor<11x16xf32>
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
    %alloc = memref.alloc() : memref<11x2x16xi32>
    %alloc_4 = memref.alloc() : memref<16x16xi1>
    %alloc_5 = memref.alloc() : memref<16x16xi32>
    %alloc_6 = memref.alloc() : memref<16x16xi1>
    %alloc_7 = memref.alloc() : memref<2x16xi64>
    %alloc_8 = memref.alloc() : memref<11x16xf16>
    %alloc_9 = memref.alloc() : memref<2x16xf32>
    %alloc_10 = memref.alloc() : memref<16x16xf16>
    %alloc_11 = memref.alloc() : memref<16x16xi16>
    %alloc_12 = memref.alloc() : memref<11x2x16xf16>
    %alloc_13 = memref.alloc() : memref<11x2x16xi16>
    %alloc_14 = memref.alloc() : memref<11x2x16xf32>
    %alloc_15 = memref.alloc() : memref<11x16xi64>
    %alloc_16 = memref.alloc() : memref<2x16xi16>
    %alloc_17 = memref.alloc() : memref<16x16xf32>
    %alloc_18 = memref.alloc() : memref<2x16xi16>
    %16 = tensor.empty() : tensor<11x2x16xi16>
    %17 = linalg.copy ins(%8 : tensor<11x2x16xi16>) outs(%16 : tensor<11x2x16xi16>) -> tensor<11x2x16xi16>
    %alloc_19 = memref.alloc() : memref<16x16xi16>
    linalg.transpose ins(%alloc_11 : memref<16x16xi16>) outs(%alloc_19 : memref<16x16xi16>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<16xi64>
    %reduced = linalg.reduce ins(%alloc_15 : memref<11x16xi64>) outs(%18 : tensor<16xi64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %266 = affine.for %arg1 = 0 to 73 iter_args(%arg2 = %c12) -> (index) {
          affine.yield %c9 : index
        }
        %splat_40 = tensor.splat %c839684178_i64 : tensor<16x16xi64>
        %267 = vector.broadcast %cst_2 : f32 to vector<2x16xf32>
        %268 = vector.broadcast %cst_1 : f32 to vector<16x16xf32>
        %269 = vector.fma %268, %268, %268 : vector<16x16xf32>
        %270 = math.cos %2 : tensor<16x16xf32>
        %271 = tensor.empty() : tensor<2xf16>
        %272 = tensor.empty() : tensor<2x16xf16>
        %273 = tensor.empty() : tensor<2x11x16xf16>
        %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%271, %272, %273 : tensor<2xf16>, tensor<2x16xf16>, tensor<2x11x16xf16>) outs(%0 : tensor<11x2x16xf16>) {
        ^bb0(%in_42: f16, %in_43: f16, %in_44: f16, %out: f16):
          %278 = arith.remf %cst, %out : f16
          bufferization.dealloc_tensor %15 : tensor<11x16xf32>
          %279 = math.ceil %0 : tensor<11x2x16xf16>
          %280 = arith.remf %in_44, %out : f16
          %281 = vector.load %alloc_9[%c0, %c5] : memref<2x16xf32>, vector<16x16xf32>
          %282 = vector.broadcast %c2 : index to vector<2xindex>
          %283 = vector.broadcast %false : i1 to vector<2xi1>
          %284 = vector.broadcast %in_44 : f16 to vector<2xf16>
          vector.scatter %alloc_8[%c0, %c2] [%282], %283, %284 : memref<11x16xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
          %285 = math.absi %13 : tensor<11x16xi16>
          %286 = tensor.empty(%c13) : tensor<11x?xi32>
          %287 = bufferization.to_memref %12 : memref<16x16xi1>
          %288 = arith.subi %c1592072178_i64, %c1592072178_i64 : i64
          %289 = math.copysign %6, %3 : tensor<2x16xf32>
          %cst_45 = arith.constant 2.724800e+04 : f16
          %290 = arith.minf %cst, %cst : f16
          %291 = vector.create_mask %c8, %c10 : vector<2x16xi1>
          memref.tensor_store %1, %alloc_12 : memref<11x2x16xf16>
          %292 = affine.max affine_map<(d0, d1) -> ((d0 - d1) ceildiv 128, ((d0 - d1) ceildiv 32) * 2, (d0 ceildiv 32) mod 8, d0 ceildiv 32)>(%c5, %c11)
          %293 = arith.remf %cst_3, %in_44 : f16
          %294 = arith.negf %cst_3 : f16
          %295 = index.sub %c6, %c1
          %296 = arith.remf %cst, %in_43 : f16
          %297 = index.castu %c6 : index to i32
          %298 = math.absi %9 : tensor<16x16xi64>
          %299 = vector.create_mask %c12, %c0 : vector<11x16xi1>
          %expanded = tensor.expand_shape %7 [[0], [1, 2]] : tensor<2x16xi16> into tensor<2x16x1xi16>
          %300 = math.log %out : f16
          %alloca_46 = memref.alloca() : memref<11x16xf32>
          %301 = math.floor %6 : tensor<2x16xf32>
          %302 = math.absi %4 : tensor<16x16xi64>
          %303 = math.floor %10 : tensor<11x16xf16>
          %304 = math.ctpop %splat_40 : tensor<16x16xi64>
          %rank_47 = tensor.rank %2 : tensor<16x16xf32>
          %rank_48 = tensor.rank %1 : tensor<11x2x16xf16>
          linalg.yield %in_44 : f16
        } -> tensor<11x2x16xf16>
        %cast_41 = tensor.cast %0 : tensor<11x2x16xf16> to tensor<?x?x?xf16>
        %275 = index.floordivs %c12, %c3
        %276 = vector.broadcast %c7192_i16 : i16 to vector<i16>
        %277 = vector.transfer_write %276, %16[%c10, %c12, %c4] : vector<i16>, tensor<11x2x16xi16>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    scf.parallel (%arg1) = (%c15) to (%c11) step (%c10) {
      %266 = vector.broadcast %cst_2 : f32 to vector<f32>
      %267 = vector.insertelement %cst_2, %266[] : vector<f32>
      bufferization.dealloc_tensor %14 : tensor<16x16xi32>
      %268 = index.ceildivs %c8, %c4
      %269 = arith.maxsi %c866211835_i32, %c866211835_i32 : i32
      %270 = arith.minui %true, %false_0 : i1
      %271 = arith.maxui %true, %false_0 : i1
      %272 = vector.broadcast %cst_2 : f32 to vector<16xf32>
      %273 = vector.matrix_multiply %272, %272 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
      %274 = vector.multi_reduction <maxf>, %272, %cst_1 [0] : vector<16xf32> to f32
      %275 = math.powf %10, %11 : tensor<11x16xf16>
      %276 = math.absi %17 : tensor<11x2x16xi16>
      %277 = memref.alloca_scope  -> (memref<11x2x16xi32>) {
        %284 = index.ceildivs %c1, %c11
        %rank_42 = tensor.rank %0 : tensor<11x2x16xf16>
        %285 = arith.maxf %274, %274 : f32
        %286 = math.ipowi %5, %5 : tensor<11x16xi1>
        %287 = arith.cmpf uno, %cst_2, %274 : f32
        %288 = math.sqrt %2 : tensor<16x16xf32>
        %289 = math.round %274 : f32
        %290 = math.powf %2, %2 : tensor<16x16xf32>
        %inserted_43 = tensor.insert %true into %12[%c8, %c0] : tensor<16x16xi1>
        %291 = arith.divf %274, %274 : f32
        %292 = arith.minf %cst_3, %cst_3 : f16
        %293 = arith.remsi %c-26475_i16, %c31622_i16 : i16
        %294 = math.exp2 %cst : f16
        %295 = math.powf %3, %6 : tensor<2x16xf32>
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %272, %272, %cst_1 : vector<16xf32>, vector<16xf32> into f32
        %297 = arith.maxf %cst_2, %cst_1 : f32
        %from_elements_44 = tensor.from_elements %cst_1, %cst_2, %cst_2, %cst_1, %274, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %274, %274, %274, %274, %cst_2, %cst_2, %274, %cst_1, %cst_1, %cst_2, %274, %cst_1, %cst_1, %274, %cst_2, %cst_1, %274, %cst_1, %274, %274, %274, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %274, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %274, %274, %274, %274, %cst_2, %274, %cst_2, %cst_2, %cst_2, %cst_1, %274, %cst_2, %274, %cst_2, %cst_2, %cst_2, %274, %cst_2, %cst_2, %cst_2, %274, %cst_1, %cst_1, %274, %274, %cst_2, %cst_2, %cst_2, %cst_1, %274, %cst_2, %274, %274, %274, %274, %cst_1, %274, %cst_1, %274, %cst_2, %cst_2, %274, %cst_2, %274, %274, %cst_2, %274, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %274, %274, %274, %cst_1, %274, %cst_1, %274, %cst_2, %274, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %274, %cst_1, %274, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %274, %274, %274, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %274, %274, %274, %cst_1, %274, %cst_2, %cst_2, %274, %cst_2, %274, %cst_2, %274, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %274, %274, %274, %cst_2, %274, %cst_1, %cst_2, %cst_2, %cst_2, %274, %274, %274, %cst_1, %cst_1, %274, %274, %274, %cst_1, %274, %cst_1, %cst_1, %274, %cst_1, %cst_2, %cst_2, %cst_1, %274, %274, %274, %cst_1, %274, %cst_2, %274, %cst_1, %cst_1, %274, %cst_2, %274, %274, %274, %274, %274, %cst_1, %cst_2, %274, %274, %274, %cst_1, %cst_1, %cst_2, %cst_2, %274, %cst_2, %cst_1, %cst_2, %cst_2, %274, %cst_1, %cst_1, %cst_2, %274, %cst_1, %cst_2, %274, %274, %274, %274, %cst_2, %cst_2, %cst_2, %cst_2, %274, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %274, %cst_1, %274, %cst_1, %cst_2, %274, %cst_2, %274, %274, %cst_1, %cst_1, %274, %274, %274, %cst_2, %cst_2, %274, %274, %274, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %274, %274, %cst_1, %cst_1, %274, %cst_1, %274, %cst_1, %274, %cst_2, %274, %274, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %274, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %274, %274, %cst_1, %cst_2, %274, %274, %cst_1, %cst_2, %cst_1, %cst_1, %274, %274, %cst_1, %cst_2, %274, %274, %cst_2, %cst_2, %cst_1, %cst_2, %274, %cst_1, %274, %274, %cst_2, %cst_1, %cst_2, %274, %cst_1, %cst_1, %274, %274, %cst_2, %cst_2, %274, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %274, %cst_2, %cst_2, %cst_1, %274, %cst_2, %cst_1, %cst_1, %274, %cst_2, %274, %274, %cst_1, %cst_1 : tensor<11x2x16xf32>
        %298 = arith.minsi %c31622_i16, %c7192_i16 : i16
        %299 = arith.addi %c7192_i16, %c7192_i16 : i16
        %from_elements_45 = tensor.from_elements %c-26475_i16, %c-26475_i16, %c-24118_i16, %c-4457_i16, %c-26475_i16, %c-4457_i16, %c-24118_i16, %c-24118_i16, %c-4457_i16, %c-24118_i16, %c-26475_i16, %c31622_i16, %c-26475_i16, %c7192_i16, %c31622_i16, %c31622_i16, %c7192_i16, %c-4457_i16, %c-26475_i16, %c31622_i16, %c-26475_i16, %c7192_i16, %c7192_i16, %c-24118_i16, %c-26475_i16, %c-26475_i16, %c7192_i16, %c-4457_i16, %c-24118_i16, %c-24118_i16, %c-24118_i16, %c-26475_i16 : tensor<2x16xi16>
        %300 = math.absf %274 : f32
        %from_elements_46 = tensor.from_elements %c31622_i16, %c-24118_i16, %c7192_i16, %c-4457_i16, %c31622_i16, %c31622_i16, %c-4457_i16, %c31622_i16, %c-24118_i16, %c7192_i16, %c-24118_i16, %c31622_i16, %c7192_i16, %c31622_i16, %c-26475_i16, %c31622_i16, %c-26475_i16, %c-4457_i16, %c31622_i16, %c7192_i16, %c-4457_i16, %c-26475_i16, %c-24118_i16, %c31622_i16, %c-26475_i16, %c-26475_i16, %c-26475_i16, %c-26475_i16, %c-4457_i16, %c7192_i16, %c-26475_i16, %c-24118_i16, %c-4457_i16, %c-24118_i16, %c-24118_i16, %c-26475_i16, %c-4457_i16, %c31622_i16, %c31622_i16, %c31622_i16, %c31622_i16, %c-24118_i16, %c-4457_i16, %c31622_i16, %c-26475_i16, %c-24118_i16, %c7192_i16, %c7192_i16, %c-26475_i16, %c-24118_i16, %c-4457_i16, %c-4457_i16, %c-26475_i16, %c-4457_i16, %c-26475_i16, %c31622_i16, %c31622_i16, %c-4457_i16, %c-24118_i16, %c-24118_i16, %c31622_i16, %c-4457_i16, %c-24118_i16, %c-24118_i16, %c-26475_i16, %c31622_i16, %c31622_i16, %c31622_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c-26475_i16, %c31622_i16, %c-26475_i16, %c-26475_i16, %c7192_i16, %c-24118_i16, %c31622_i16, %c7192_i16, %c-26475_i16, %c-4457_i16, %c31622_i16, %c-26475_i16, %c-24118_i16, %c-24118_i16, %c-26475_i16, %c-26475_i16, %c31622_i16, %c-26475_i16, %c-26475_i16, %c-24118_i16, %c7192_i16, %c31622_i16, %c-24118_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c-24118_i16, %c31622_i16, %c-4457_i16, %c7192_i16, %c-24118_i16, %c-4457_i16, %c-4457_i16, %c7192_i16, %c-26475_i16, %c7192_i16, %c31622_i16, %c-24118_i16, %c7192_i16, %c-24118_i16, %c-24118_i16, %c7192_i16, %c-26475_i16, %c-24118_i16, %c-26475_i16, %c-24118_i16, %c-26475_i16, %c-4457_i16, %c31622_i16, %c7192_i16, %c31622_i16, %c-26475_i16, %c31622_i16, %c-24118_i16, %c31622_i16, %c31622_i16, %c-26475_i16, %c-24118_i16, %c7192_i16, %c-4457_i16, %c-24118_i16, %c-24118_i16, %c31622_i16, %c-26475_i16, %c-4457_i16, %c-4457_i16, %c31622_i16, %c-4457_i16, %c31622_i16, %c-4457_i16, %c-24118_i16, %c7192_i16, %c7192_i16, %c-4457_i16, %c-24118_i16, %c-24118_i16, %c31622_i16, %c-26475_i16, %c-4457_i16, %c-24118_i16, %c31622_i16, %c-4457_i16, %c-24118_i16, %c7192_i16, %c-4457_i16, %c-4457_i16, %c-24118_i16, %c-26475_i16, %c-26475_i16, %c7192_i16, %c31622_i16, %c-4457_i16, %c-26475_i16, %c-4457_i16, %c31622_i16, %c7192_i16, %c-26475_i16, %c-24118_i16, %c7192_i16, %c-24118_i16, %c-26475_i16, %c31622_i16, %c7192_i16, %c7192_i16, %c-24118_i16, %c31622_i16, %c31622_i16, %c31622_i16, %c-4457_i16, %c-4457_i16, %c-4457_i16, %c7192_i16, %c-24118_i16, %c-24118_i16, %c-24118_i16, %c-26475_i16, %c7192_i16, %c31622_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c-24118_i16, %c-26475_i16, %c-4457_i16, %c-4457_i16, %c-4457_i16, %c-4457_i16, %c-26475_i16, %c31622_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c-26475_i16, %c-4457_i16, %c-4457_i16, %c-26475_i16, %c31622_i16, %c-24118_i16, %c31622_i16, %c-4457_i16, %c-24118_i16, %c31622_i16, %c-26475_i16, %c7192_i16, %c-4457_i16, %c-26475_i16, %c7192_i16, %c7192_i16, %c-4457_i16, %c-4457_i16, %c31622_i16, %c-4457_i16, %c-24118_i16, %c7192_i16, %c31622_i16, %c-4457_i16, %c-26475_i16, %c7192_i16, %c-4457_i16, %c31622_i16, %c-26475_i16, %c31622_i16, %c-26475_i16, %c-4457_i16, %c-4457_i16, %c31622_i16, %c7192_i16, %c-26475_i16, %c-24118_i16, %c7192_i16, %c-4457_i16, %c-4457_i16, %c-26475_i16, %c-24118_i16, %c-4457_i16, %c-4457_i16, %c-26475_i16, %c-24118_i16, %c-26475_i16, %c-24118_i16, %c7192_i16, %c-4457_i16, %c7192_i16, %c-24118_i16 : tensor<16x16xi16>
        %301 = math.tan %10 : tensor<11x16xf16>
        %302 = vector.transpose %266, [] : vector<f32> to vector<f32>
        %inserted_47 = tensor.insert %cst_1 into %3[%c1, %c11] : tensor<2x16xf32>
        %303 = arith.cmpf ugt, %274, %cst_2 : f32
        %304 = arith.maxf %cst_2, %cst_2 : f32
        memref.tensor_store %11, %alloc_8 : memref<11x16xf16>
        %305 = arith.ori %c7192_i16, %c7192_i16 : i16
        %306 = math.ctlz %12 : tensor<16x16xi1>
        %307 = vector.insertelement %cst_2, %266[] : vector<f32>
        %308 = math.ctlz %8 : tensor<11x2x16xi16>
        memref.alloca_scope.return %alloc : memref<11x2x16xi32>
      }
      %278 = arith.maxf %cst, %cst : f16
      %279 = arith.muli %c7192_i16, %c-24118_i16 : i16
      %280 = vector.broadcast %cst_2 : f32 to vector<11x16x2xf32>
      %281 = vector.broadcast %cst_2 : f32 to vector<16x2xf32>
      %dest_40, %accumulated_value_41 = vector.scan <maxf>, %280, %281 {inclusive = false, reduction_dim = 0 : i64} : vector<11x16x2xf32>, vector<16x2xf32>
      %282 = tensor.empty(%c12) : tensor<2x?xi16>
      %283 = vector.bitcast %272 : vector<16xf32> to vector<16xf32>
      scf.yield
    }
    %19 = affine.vector_load %alloc_16[%c4, %c13] : memref<2x16xi16>, vector<2xi16>
    affine.vector_store %19, %alloc_16[%c9, %c3] : memref<2x16xi16>, vector<2xi16>
    %alloc_20 = memref.alloc() : memref<16xi64>
    %20 = tensor.empty() : tensor<i64>
    %21 = linalg.dot ins(%reduced, %alloc_20 : tensor<16xi64>, memref<16xi64>) outs(%20 : tensor<i64>) -> tensor<i64>
    %22 = scf.index_switch %c1 -> index 
    case 1 {
      %266 = math.exp2 %15 : tensor<11x16xf32>
      %267 = math.cttz %c1592072178_i64 : i64
      %268 = vector.multi_reduction <maxsi>, %19, %c-24118_i16 [0] : vector<2xi16> to i16
      %269 = math.tan %11 : tensor<11x16xf16>
      %270 = vector.broadcast %c-24118_i16 : i16 to vector<2x2xi16>
      %271 = vector.outerproduct %19, %19, %270 {kind = #vector.kind<or>} : vector<2xi16>, vector<2xi16>
      %272 = index.casts %268 : i16 to index
      %splat_40 = tensor.splat %c866211835_i32 : tensor<2x16xi32>
      affine.for %arg1 = 0 to 88 {
      }
      %273 = arith.cmpf ole, %cst_1, %cst_1 : f32
      %274 = math.tan %1 : tensor<11x2x16xf16>
      %275 = math.ceil %1 : tensor<11x2x16xf16>
      %276 = arith.remsi %false, %false_0 : i1
      vector.print %19 : vector<2xi16>
      %277 = scf.execute_region -> memref<16x16xi64> {
        %279 = vector.broadcast %cst_2 : f32 to vector<2x16xf32>
        %280 = vector.broadcast %true : i1 to vector<2x16xi1>
        %281 = vector.broadcast %c1633095684_i32 : i32 to vector<2x16xi32>
        %282 = vector.gather %alloc_14[%c3, %c14, %c10] [%281], %280, %279 : memref<11x2x16xf32>, vector<2x16xi32>, vector<2x16xi1>, vector<2x16xf32> into vector<2x16xf32>
        %283 = math.absf %cst : f16
        %splat_42 = tensor.splat %c1592072178_i64 : tensor<2x16xi64>
        vector.print %280 : vector<2x16xi1>
        %284 = math.log %0 : tensor<11x2x16xf16>
        vector.print %279 : vector<2x16xf32>
        %285 = math.exp2 %15 : tensor<11x16xf32>
        %286 = arith.maxf %cst, %cst_3 : f16
        %287 = arith.subi %c1592072178_i64, %c839684178_i64 : i64
        %288 = arith.subi %c-4457_i16, %c-26475_i16 : i16
        %289 = math.atan %11 : tensor<11x16xf16>
        %290 = vector.broadcast %cst_2 : f32 to vector<11x2x16xf32>
        %291 = vector.fma %290, %290, %290 : vector<11x2x16xf32>
        %292 = vector.matrix_multiply %19, %19 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi16>, vector<2xi16>) -> vector<1xi16>
        %293 = math.floor %1 : tensor<11x2x16xf16>
        %alloca_43 = memref.alloca() : memref<11x16xi64>
        %294 = arith.shli %c1592072178_i64, %c839684178_i64 : i64
        %alloc_44 = memref.alloc() : memref<16x16xi64>
        scf.yield %alloc_44 : memref<16x16xi64>
      }
      %false_41 = index.bool.constant false
      %278 = math.ctpop %4 : tensor<16x16xi64>
      scf.yield %c3 : index
    }
    case 2 {
      %from_elements_40 = tensor.from_elements %c31622_i16, %c31622_i16, %c31622_i16, %c-26475_i16, %c-4457_i16, %c-26475_i16, %c31622_i16, %c-26475_i16, %c31622_i16, %c31622_i16, %c-26475_i16, %c7192_i16, %c-26475_i16, %c-4457_i16, %c7192_i16, %c31622_i16, %c7192_i16, %c7192_i16, %c-24118_i16, %c-24118_i16, %c-4457_i16, %c31622_i16, %c-26475_i16, %c-24118_i16, %c-4457_i16, %c31622_i16, %c31622_i16, %c-24118_i16, %c7192_i16, %c-26475_i16, %c-4457_i16, %c-24118_i16 : tensor<2x16xi16>
      memref.store %cst_3, %alloc_10[%c9, %c4] : memref<16x16xf16>
      memref.alloca_scope  {
        %278 = arith.remsi %c-26475_i16, %c31622_i16 : i16
        %279 = math.ipowi %c31622_i16, %c-24118_i16 : i16
        %280 = affine.apply affine_map<(d0) -> (d0 * 2)>(%c6)
        %281 = vector.load %alloc[%c9, %c1, %c1] : memref<11x2x16xi32>, vector<2x16xi32>
        %282 = vector.bitcast %281 : vector<2x16xi32> to vector<2x16xi32>
        %283 = bufferization.to_memref %1 : memref<11x2x16xf16>
        %284 = math.ctlz %8 : tensor<11x2x16xi16>
        %285 = math.absf %3 : tensor<2x16xf32>
        %286 = vector.extract_strided_slice %19 {offsets = [0], sizes = [2], strides = [1]} : vector<2xi16> to vector<2xi16>
        %287 = math.atan2 %2, %2 : tensor<16x16xf32>
        %288 = index.ceildivu %c13, %c2
        %inserted_42 = tensor.insert %c7192_i16 into %13[%c9, %c15] : tensor<11x16xi16>
        %289 = math.rsqrt %15 : tensor<11x16xf32>
        %290 = arith.remf %cst_2, %cst_1 : f32
        %291 = math.fma %2, %2, %2 : tensor<16x16xf32>
        %292 = index.castu %c839684178_i64 : i64 to index
        %from_elements_43 = tensor.from_elements %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64 : tensor<16x16xi64>
        %alloca_44 = memref.alloca() : memref<2x16xf32>
        %cst_45 = arith.constant 1.74857792E+9 : f32
        %293 = arith.muli %c7192_i16, %c31622_i16 : i16
        %294 = vector.extract %282[1] : vector<2x16xi32>
        %295 = math.cos %3 : tensor<2x16xf32>
        %296 = arith.divsi %c7192_i16, %c31622_i16 : i16
        %297 = vector.matrix_multiply %294, %294 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi32>, vector<16xi32>) -> vector<1xi32>
        %298 = arith.subi %c7192_i16, %c-26475_i16 : i16
        %299 = vector.multi_reduction <maxsi>, %297, %c1633095684_i32 [0] : vector<1xi32> to i32
        %300 = vector.transpose %297, [0] : vector<1xi32> to vector<1xi32>
        %301 = arith.remsi %c-26475_i16, %c-24118_i16 : i16
        %302 = vector.transpose %282, [0, 1] : vector<2x16xi32> to vector<2x16xi32>
        %303 = affine.max affine_map<(d0, d1, d2) -> ((-d0 + d1 + 8 - 129) * 128 - 32, d0)>(%c11, %280, %c3)
        %304 = math.log10 %cst_2 : f32
        %305 = math.absi %13 : tensor<11x16xi16>
      }
      bufferization.dealloc_tensor %20 : tensor<i64>
      %266 = arith.cmpf ogt, %cst_3, %cst_3 : f16
      %267 = index.sizeof
      %268 = index.floordivs %c14, %c4
      affine.for %arg1 = 0 to 100 {
      }
      %alloc_41 = memref.alloc() : memref<2x16xi1>
      %269 = vector.broadcast %true : i1 to vector<2x16xi1>
      %270 = vector.broadcast %c866211835_i32 : i32 to vector<2x16xi32>
      %271 = vector.gather %alloc_41[%c7, %c2] [%270], %269, %269 : memref<2x16xi1>, vector<2x16xi32>, vector<2x16xi1>, vector<2x16xi1> into vector<2x16xi1>
      %272 = arith.shli %c-4457_i16, %c-4457_i16 : i16
      affine.for %arg1 = 0 to 39 {
      }
      %273 = index.divs %c6, %c1
      %274 = index.floordivs %c13, %273
      %275 = arith.minf %cst, %cst_3 : f16
      %276 = arith.shli %c31622_i16, %c-24118_i16 : i16
      %277 = math.floor %0 : tensor<11x2x16xf16>
      scf.yield %c2 : index
    }
    case 3 {
      %266 = math.exp2 %cst : f16
      %267 = math.tanh %6 : tensor<2x16xf32>
      %268 = arith.addf %cst_3, %cst_3 : f16
      %269 = vector.insertelement %c-26475_i16, %19[%c12 : index] : vector<2xi16>
      %inserted_40 = tensor.insert %cst into %10[%c0, %c12] : tensor<11x16xf16>
      %270 = vector.insertelement %c7192_i16, %19[%c4 : index] : vector<2xi16>
      %271 = math.expm1 %1 : tensor<11x2x16xf16>
      %272 = index.ceildivs %c12, %c5
      memref.store %c31622_i16, %alloc_16[%c1, %c13] : memref<2x16xi16>
      %true_41 = index.bool.constant true
      scf.execute_region {
        %277 = vector.broadcast %c1592072178_i64 : i64 to vector<2x11xi64>
        %278 = vector.broadcast %c1592072178_i64 : i64 to vector<11xi64>
        %dest_44, %accumulated_value_45 = vector.scan <or>, %277, %278 {inclusive = false, reduction_dim = 0 : i64} : vector<2x11xi64>, vector<11xi64>
        %279 = arith.muli %c-24118_i16, %c31622_i16 : i16
        %280 = math.ctpop %4 : tensor<16x16xi64>
        %281 = index.sub %c3, %c15
        %282 = math.ctlz %true : i1
        %283 = index.ceildivu %c12, %c4
        %284 = arith.divf %cst, %cst : f16
        %285 = math.log2 %cst_2 : f32
        %false_46 = arith.constant false
        bufferization.dealloc_tensor %9 : tensor<16x16xi64>
        %286 = math.ctlz %12 : tensor<16x16xi1>
        %287 = tensor.empty() : tensor<11x2x16xf16>
        %288 = index.divu %c0, %c6
        %289 = math.powf %1, %0 : tensor<11x2x16xf16>
        %290 = index.ceildivs %c2, %c2
        %291 = math.log1p %3 : tensor<2x16xf32>
        scf.yield
      }
      %273 = bufferization.clone %alloc_7 : memref<2x16xi64> to memref<2x16xi64>
      %alloc_42 = memref.alloc() : memref<11x16xi16>
      memref.tensor_store %13, %alloc_42 : memref<11x16xi16>
      %274 = tensor.empty() : tensor<11x16xf16>
      %mapped_43 = linalg.map ins(%10, %11 : tensor<11x16xf16>, tensor<11x16xf16>) outs(%274 : tensor<11x16xf16>)
        (%in: f16, %in_44: f16) {
          %277 = math.log10 %in_44 : f16
          %278 = index.divs %c6, %c14
          %279 = arith.divui %c7192_i16, %c-24118_i16 : i16
          %280 = arith.subi %c31622_i16, %c-26475_i16 : i16
          %281 = arith.divsi %c866211835_i32, %c1633095684_i32 : i32
          %282 = arith.divui %c7192_i16, %c7192_i16 : i16
          %inserted_45 = tensor.insert %cst_1 into %6[%c1, %c4] : tensor<2x16xf32>
          %283 = math.tanh %in : f16
          %284 = arith.subi %c-26475_i16, %c-4457_i16 : i16
          %285 = math.powf %3, %3 : tensor<2x16xf32>
          %286 = math.ipowi %9, %9 : tensor<16x16xi64>
          %287 = math.tan %cst_1 : f32
          %288 = math.powf %3, %6 : tensor<2x16xf32>
          %289 = vector.broadcast %c1633095684_i32 : i32 to vector<11x2x16xi32>
          %290 = math.ceil %in : f16
          %291 = math.absi %12 : tensor<16x16xi1>
          %292 = math.rsqrt %11 : tensor<11x16xf16>
          %293 = affine.apply affine_map<(d0) -> (((-d0) floordiv 16) * 4)>(%c10)
          %294 = index.ceildivs %c0, %272
          %295 = math.tanh %11 : tensor<11x16xf16>
          %296 = arith.maxsi %c866211835_i32, %c866211835_i32 : i32
          %297 = arith.remsi %true_41, %true_41 : i1
          %298 = math.expm1 %cst_3 : f16
          %299 = math.absi %4 : tensor<16x16xi64>
          %300 = math.powf %15, %15 : tensor<11x16xf32>
          %301 = vector.load %alloc_8[%c7, %c11] : memref<11x16xf16>, vector<11x16xf16>
          %302 = math.atan %6 : tensor<2x16xf32>
          memref.store %c839684178_i64, %alloc_15[%c0, %c2] : memref<11x16xi64>
          %303 = math.absi %false : i1
          %304 = math.tanh %6 : tensor<2x16xf32>
          %305 = arith.shli %false_0, %true : i1
          %306 = math.absi %20 : tensor<i64>
          %cst_46 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_46 : f16
        }
      %275 = arith.divsi %c-4457_i16, %c-4457_i16 : i16
      %276 = index.sub %c10, %c2
      scf.yield %c4 : index
    }
    case 4 {
      %266 = math.log10 %3 : tensor<2x16xf32>
      %267 = math.expm1 %cst_1 : f32
      %268 = index.castu %false_0 : i1 to index
      vector.print %19 : vector<2xi16>
      %269 = vector.create_mask %c0, %c13, %c4 : vector<11x2x16xi1>
      %from_elements_40 = tensor.from_elements %c-24118_i16, %c-24118_i16, %c-24118_i16, %c-4457_i16, %c31622_i16, %c-26475_i16, %c-26475_i16, %c-4457_i16, %c-4457_i16, %c7192_i16, %c-24118_i16, %c-26475_i16, %c-24118_i16, %c-26475_i16, %c-26475_i16, %c-26475_i16, %c-24118_i16, %c-26475_i16, %c-26475_i16, %c-24118_i16, %c-24118_i16, %c-26475_i16, %c-24118_i16, %c-4457_i16, %c-24118_i16, %c31622_i16, %c7192_i16, %c-4457_i16, %c-24118_i16, %c-24118_i16, %c31622_i16, %c-26475_i16 : tensor<2x16xi16>
      %270 = arith.andi %c-26475_i16, %c-4457_i16 : i16
      %271 = index.casts %c10 : index to i32
      %272 = arith.remf %cst_2, %cst_2 : f32
      %273 = vector.matrix_multiply %19, %19 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi16>, vector<2xi16>) -> vector<1xi16>
      %274 = math.expm1 %1 : tensor<11x2x16xf16>
      %275 = math.ctpop %c-26475_i16 : i16
      %276 = arith.minsi %c839684178_i64, %c1592072178_i64 : i64
      %277 = arith.maxsi %c-4457_i16, %c-24118_i16 : i16
      %278 = math.log1p %10 : tensor<11x16xf16>
      %279 = math.fma %1, %1, %0 : tensor<11x2x16xf16>
      scf.yield %c14 : index
    }
    default {
      %266 = vector.load %alloc_15[%c2, %c7] : memref<11x16xi64>, vector<2x16xi64>
      %267 = math.copysign %11, %10 : tensor<11x16xf16>
      %268 = arith.divsi %c866211835_i32, %c1633095684_i32 : i32
      %269 = index.floordivs %c8, %c1
      %270 = vector.broadcast %c839684178_i64 : i64 to vector<16x16xi64>
      %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %266, %266, %270 : vector<2x16xi64>, vector<2x16xi64> into vector<16x16xi64>
      %272 = math.expm1 %1 : tensor<11x2x16xf16>
      %273 = arith.andi %c1633095684_i32, %c1633095684_i32 : i32
      %274 = arith.maxsi %c1592072178_i64, %c839684178_i64 : i64
      memref.tensor_store %7, %alloc_18 : memref<2x16xi16>
      %from_elements_40 = tensor.from_elements %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64 : tensor<11x2x16xi64>
      %275 = arith.ori %c7192_i16, %c-24118_i16 : i16
      memref.tensor_store %16, %alloc_13 : memref<11x2x16xi16>
      %276 = vector.broadcast %c839684178_i64 : i64 to vector<16xi64>
      %277 = vector.multi_reduction <maxui>, %266, %276 [0] : vector<2x16xi64> to vector<16xi64>
      %278 = arith.subi %c-4457_i16, %c-4457_i16 : i16
      %279 = math.round %15 : tensor<11x16xf32>
      %280 = vector.broadcast %cst_2 : f32 to vector<2x16xf32>
      %281 = vector.fma %280, %280, %280 : vector<2x16xf32>
      scf.yield %c12 : index
    }
    %23 = arith.cmpf ueq, %cst, %cst : f16
    %24 = math.cttz %5 : tensor<11x16xi1>
    %25 = vector.broadcast %cst_1 : f32 to vector<16x16xf32>
    %26 = vector.fma %25, %25, %25 : vector<16x16xf32>
    %27 = tensor.empty() : tensor<16x16xi64>
    %mapped = linalg.map ins(%9 : tensor<16x16xi64>) outs(%27 : tensor<16x16xi64>)
      (%in: i64) {
        %266 = arith.andi %c1633095684_i32, %c866211835_i32 : i32
        %267 = arith.minf %cst_2, %cst_2 : f32
        %268 = math.floor %cst_1 : f32
        %269 = arith.xori %c1633095684_i32, %c1633095684_i32 : i32
        %extracted_40 = tensor.extract %0[%c8, %c1, %c9] : tensor<11x2x16xf16>
        %alloc_41 = memref.alloc() : memref<16x16xi32>
        %270 = vector.broadcast %cst : f16 to vector<f16>
        vector.transfer_write %270, %alloc_12[%c7, %c7, %c15] : vector<f16>, memref<11x2x16xf16>
        %271 = math.cttz %13 : tensor<11x16xi16>
        %272 = tensor.empty() : tensor<2x16xi16>
        %mapped_42 = linalg.map ins(%7, %alloc_16 : tensor<2x16xi16>, memref<2x16xi16>) outs(%272 : tensor<2x16xi16>)
          (%in_48: i16, %in_49: i16) {
            %291 = math.atan2 %2, %2 : tensor<16x16xf32>
            %292 = index.sub %c0, %c0
            %293 = arith.remf %cst_2, %cst_1 : f32
            %294 = affine.max affine_map<(d0, d1, d2) -> (d2 - d2 mod 2)>(%c12, %c5, %c4)
            %295 = arith.remf %cst_1, %cst_1 : f32
            %296 = bufferization.to_memref %2 : memref<16x16xf32>
            %297 = arith.andi %c31622_i16, %c31622_i16 : i16
            %298 = arith.maxsi %c-24118_i16, %in_49 : i16
            %cst_50 = arith.constant 1.000000e+00 : f16
            %299 = vector.transfer_read %0[%c4, %c12, %c4], %cst_50 : tensor<11x2x16xf16>, vector<11xf16>
            %300 = arith.remsi %c1633095684_i32, %c866211835_i32 : i32
            %301 = arith.negf %cst_50 : f16
            %302 = vector.insertelement %c-26475_i16, %19[%c10 : index] : vector<2xi16>
            %303 = vector.load %alloc_8[%c6, %c14] : memref<11x16xf16>, vector<11x16xf16>
            %304 = vector.matrix_multiply %19, %19 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi16>, vector<2xi16>) -> vector<1xi16>
            %305 = math.powf %2, %2 : tensor<16x16xf32>
            %306 = math.log2 %10 : tensor<11x16xf16>
            %307 = index.floordivs %c12, %294
            %308 = index.maxu %c3, %c2
            %309 = arith.mulf %extracted_40, %cst : f16
            %310 = index.maxs %c11, %c0
            %311 = arith.xori %in_49, %c-24118_i16 : i16
            %312 = math.tanh %cst_2 : f32
            %313 = arith.shli %in, %in : i64
            %314 = vector.bitcast %303 : vector<11x16xf16> to vector<11x16xf16>
            %315 = math.absi %c-26475_i16 : i16
            %316 = tensor.empty() : tensor<11x16xf16>
            %inserted_51 = tensor.insert %cst_1 into %2[%c3, %c11] : tensor<16x16xf32>
            %317 = math.ctlz %9 : tensor<16x16xi64>
            memref.copy %alloc_4, %alloc_6 : memref<16x16xi1> to memref<16x16xi1>
            %alloca_52 = memref.alloca() : memref<2x16xi1>
            %318 = vector.broadcast %cst_50 : f16 to vector<f16>
            %319 = vector.transfer_write %318, %316[%c0, %c6] : vector<f16>, tensor<11x16xf16>
            %extracted_53 = tensor.extract %5[%c5, %c12] : tensor<11x16xi1>
            %c0_i16 = arith.constant 0 : i16
            linalg.yield %c0_i16 : i16
          }
        %273 = arith.subi %c866211835_i32, %c1633095684_i32 : i32
        %274 = vector.multi_reduction <minsi>, %19, %c31622_i16 [0] : vector<2xi16> to i16
        %expanded = tensor.expand_shape %272 [[0], [1, 2]] : tensor<2x16xi16> into tensor<2x16x1xi16>
        %275 = arith.remf %cst_3, %extracted_40 : f16
        %rank_43 = tensor.rank %1 : tensor<11x2x16xf16>
        %276 = math.ipowi %5, %5 : tensor<11x16xi1>
        %277 = arith.divsi %c31622_i16, %c7192_i16 : i16
        %278 = index.add %c14, %c4
        %279 = bufferization.clone %alloc_5 : memref<16x16xi32> to memref<16x16xi32>
        %inserted_44 = tensor.insert %cst_1 into %3[%c0, %c6] : tensor<2x16xf32>
        %280 = math.rsqrt %2 : tensor<16x16xf32>
        %281 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %26, %26, %25 : vector<16x16xf32>, vector<16x16xf32> into vector<16x16xf32>
        %282 = arith.minf %cst_3, %cst : f16
        %283 = arith.andi %274, %c-4457_i16 : i16
        %284 = vector.broadcast %cst_1 : f32 to vector<16xf32>
        %dest_45, %accumulated_value_46 = vector.scan <maxf>, %25, %284 {inclusive = true, reduction_dim = 0 : i64} : vector<16x16xf32>, vector<16xf32>
        %285 = arith.remf %cst_1, %cst_1 : f32
        %286 = vector.create_mask %c8, %c1, %c10 : vector<11x2x16xi1>
        %splat_47 = tensor.splat %cst_3 : tensor<2x16xf16>
        %287 = math.fma %15, %15, %15 : tensor<11x16xf32>
        %288 = index.casts %c866211835_i32 : i32 to index
        affine.for %arg1 = 0 to 17 {
        }
        %289 = index.casts %c14 : index to i32
        %290 = index.mul %c9, %c13
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %28 = math.round %2 : tensor<16x16xf32>
    %29 = arith.shli %c31622_i16, %c-26475_i16 : i16
    %30 = vector.broadcast %cst_1 : f32 to vector<2x16xf32>
    %31 = vector.fma %30, %30, %30 : vector<2x16xf32>
    %32 = math.round %1 : tensor<11x2x16xf16>
    %33 = vector.extract_strided_slice %31 {offsets = [0], sizes = [1], strides = [1]} : vector<2x16xf32> to vector<1x16xf32>
    %34 = arith.maxf %cst_3, %cst : f16
    %35 = math.ctpop %13 : tensor<11x16xi16>
    %inserted = tensor.insert %cst_1 into %2[%c6, %c6] : tensor<16x16xf32>
    %36 = arith.shli %c-24118_i16, %c-26475_i16 : i16
    %37 = index.ceildivs %c15, %c0
    %38 = math.ceil %3 : tensor<2x16xf32>
    %39 = math.fma %6, %6, %3 : tensor<2x16xf32>
    %40 = arith.floordivsi %c-4457_i16, %c-26475_i16 : i16
    %41 = arith.divsi %c-26475_i16, %c-24118_i16 : i16
    %42 = bufferization.clone %alloc_15 : memref<11x16xi64> to memref<11x16xi64>
    %43 = arith.maxui %c-4457_i16, %c-4457_i16 : i16
    %44 = math.floor %cst : f16
    %45 = vector.broadcast %c7192_i16 : i16 to vector<2x2xi16>
    %46 = vector.outerproduct %19, %19, %45 {kind = #vector.kind<and>} : vector<2xi16>, vector<2xi16>
    %inserted_21 = tensor.insert %true into %12[%c13, %c8] : tensor<16x16xi1>
    %47 = arith.cmpf ord, %cst_1, %cst_1 : f32
    %48 = math.log1p %1 : tensor<11x2x16xf16>
    %49 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %26, %26, %26 : vector<16x16xf32>, vector<16x16xf32> into vector<16x16xf32>
    %50 = arith.remf %cst_1, %cst_1 : f32
    %51 = tensor.empty() : tensor<11x16xi16>
    %52 = vector.extract_strided_slice %30 {offsets = [0], sizes = [2], strides = [1]} : vector<2x16xf32> to vector<2x16xf32>
    affine.for %arg1 = 0 to 83 {
    }
    %53 = index.divs %37, %c4
    %54 = math.ctlz %9 : tensor<16x16xi64>
    %55 = vector.broadcast %cst_1 : f32 to vector<16xf32>
    %56 = vector.insert %55, %25 [11] : vector<16xf32> into vector<16x16xf32>
    %57 = arith.maxsi %true, %false : i1
    %58 = bufferization.clone %alloc_8 : memref<11x16xf16> to memref<11x16xf16>
    %59 = index.sizeof
    %60 = vector.matrix_multiply %55, %55 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
    %61 = bufferization.to_tensor %alloc_9 : memref<2x16xf32>
    %62 = vector.load %alloc_20[%c5] : memref<16xi64>, vector<16x16xi64>
    memref.store %cst_3, %alloc_10[%c6, %c2] : memref<16x16xf16>
    %63 = arith.andi %false_0, %true : i1
    %64 = index.floordivs %c14, %53
    %65 = arith.mulf %cst_2, %cst_1 : f32
    %66 = math.ctpop %13 : tensor<11x16xi16>
    %67 = arith.ori %c1633095684_i32, %c866211835_i32 : i32
    %68 = arith.floordivsi %c866211835_i32, %c1633095684_i32 : i32
    scf.if %true {
      %266 = arith.remf %cst, %cst_3 : f16
      %267 = index.maxu %c14, %59
      %rank_40 = tensor.rank %17 : tensor<11x2x16xi16>
      %268 = arith.subi %c-24118_i16, %c-4457_i16 : i16
      %269 = vector.multi_reduction <add>, %60, %60 [] : vector<1xf32> to vector<1xf32>
      %270 = index.floordivs %c2, %53
      %271 = index.sub %c12, %c15
      %272 = index.ceildivu %c13, %271
    } else {
      %generated_40 = tensor.generate %c7 {
      ^bb0(%arg1: index, %arg2: index):
        %271 = vector.broadcast %cst_2 : f32 to vector<16x16xf32>
        %272 = math.floor %6 : tensor<2x16xf32>
        %collapsed_43 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<11x2x16xi16> into tensor<22x16xi16>
        %alloca_44 = memref.alloca() : memref<2x16xf16>
        tensor.yield %cst_1 : f32
      } : tensor<?x16xf32>
      %alloca_41 = memref.alloca() : memref<16x16xf16>
      %inserted_42 = tensor.insert %cst_3 into %1[%c8, %c0, %c10] : tensor<11x2x16xf16>
      %266 = math.cttz %c839684178_i64 : i64
      %267 = arith.remf %cst_1, %cst_1 : f32
      %268 = math.log1p %3 : tensor<2x16xf32>
      %269 = memref.atomic_rmw minf %cst_2, %alloc_9[%c0, %c3] : (f32, memref<2x16xf32>) -> f32
      %270 = vector.insertelement %cst_2, %55[%c2 : index] : vector<16xf32>
    }
    %69 = arith.remf %cst, %cst_3 : f16
    %70 = vector.matrix_multiply %19, %19 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi16>, vector<2xi16>) -> vector<1xi16>
    %71 = scf.execute_region -> tensor<2x16xi64> {
      %266 = vector.reduction <add>, %60 : vector<1xf32> into f32
      %267 = math.tan %11 : tensor<11x16xf16>
      %from_elements_40 = tensor.from_elements %c7192_i16, %c7192_i16, %c7192_i16, %c-26475_i16, %c-24118_i16, %c7192_i16, %c-4457_i16, %c-26475_i16, %c-24118_i16, %c31622_i16, %c-26475_i16, %c7192_i16, %c-4457_i16, %c-24118_i16, %c-24118_i16, %c7192_i16, %c31622_i16, %c-26475_i16, %c7192_i16, %c-24118_i16, %c31622_i16, %c-26475_i16, %c-26475_i16, %c-26475_i16, %c31622_i16, %c-26475_i16, %c31622_i16, %c-4457_i16, %c-24118_i16, %c31622_i16, %c-4457_i16, %c-4457_i16, %c-24118_i16, %c31622_i16, %c31622_i16, %c31622_i16, %c7192_i16, %c-4457_i16, %c-26475_i16, %c-24118_i16, %c-4457_i16, %c-4457_i16, %c-24118_i16, %c31622_i16, %c7192_i16, %c-26475_i16, %c-24118_i16, %c-4457_i16, %c7192_i16, %c31622_i16, %c-26475_i16, %c-26475_i16, %c-4457_i16, %c-4457_i16, %c-26475_i16, %c7192_i16, %c-4457_i16, %c31622_i16, %c-4457_i16, %c7192_i16, %c-4457_i16, %c31622_i16, %c-24118_i16, %c31622_i16, %c-4457_i16, %c-26475_i16, %c-24118_i16, %c-26475_i16, %c-4457_i16, %c-26475_i16, %c-26475_i16, %c31622_i16, %c-24118_i16, %c-26475_i16, %c-24118_i16, %c-24118_i16, %c-4457_i16, %c31622_i16, %c31622_i16, %c-4457_i16, %c-4457_i16, %c-24118_i16, %c-4457_i16, %c-4457_i16, %c7192_i16, %c-26475_i16, %c7192_i16, %c-24118_i16, %c7192_i16, %c31622_i16, %c-4457_i16, %c-24118_i16, %c-26475_i16, %c-4457_i16, %c7192_i16, %c31622_i16, %c-4457_i16, %c7192_i16, %c7192_i16, %c-4457_i16, %c31622_i16, %c7192_i16, %c-4457_i16, %c31622_i16, %c-24118_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c-24118_i16, %c-4457_i16, %c31622_i16, %c-4457_i16, %c-26475_i16, %c31622_i16, %c-4457_i16, %c31622_i16, %c-26475_i16, %c-26475_i16, %c7192_i16, %c-26475_i16, %c31622_i16, %c7192_i16, %c-26475_i16, %c31622_i16, %c7192_i16, %c-26475_i16, %c-26475_i16, %c31622_i16, %c-26475_i16, %c7192_i16, %c-26475_i16, %c-24118_i16, %c7192_i16, %c-26475_i16, %c-26475_i16, %c31622_i16, %c-24118_i16, %c-4457_i16, %c-26475_i16, %c-26475_i16, %c-26475_i16, %c-26475_i16, %c7192_i16, %c31622_i16, %c7192_i16, %c-24118_i16, %c-4457_i16, %c7192_i16, %c-26475_i16, %c-4457_i16, %c-24118_i16, %c-26475_i16, %c-4457_i16, %c31622_i16, %c-4457_i16, %c31622_i16, %c-26475_i16, %c-24118_i16, %c31622_i16, %c31622_i16, %c31622_i16, %c-24118_i16, %c7192_i16, %c-24118_i16, %c-24118_i16, %c31622_i16, %c-26475_i16, %c-26475_i16, %c-4457_i16, %c7192_i16, %c-24118_i16, %c31622_i16, %c-4457_i16, %c-24118_i16, %c-24118_i16, %c-24118_i16, %c7192_i16, %c-4457_i16, %c-26475_i16, %c31622_i16, %c-26475_i16, %c-26475_i16, %c-26475_i16, %c-24118_i16, %c-4457_i16, %c-24118_i16, %c-24118_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c-26475_i16, %c31622_i16, %c31622_i16, %c7192_i16, %c-24118_i16, %c7192_i16, %c31622_i16, %c-4457_i16, %c31622_i16, %c-24118_i16, %c31622_i16, %c-4457_i16, %c-26475_i16, %c7192_i16, %c-24118_i16, %c-26475_i16, %c-4457_i16, %c-24118_i16, %c7192_i16, %c-4457_i16, %c7192_i16, %c7192_i16, %c-4457_i16, %c31622_i16, %c31622_i16, %c-4457_i16, %c7192_i16, %c-4457_i16, %c-24118_i16, %c-4457_i16, %c-4457_i16, %c-4457_i16, %c-24118_i16, %c7192_i16, %c-26475_i16, %c-26475_i16, %c31622_i16, %c31622_i16, %c-24118_i16, %c-26475_i16, %c-26475_i16, %c31622_i16, %c-4457_i16, %c31622_i16, %c31622_i16, %c31622_i16, %c31622_i16, %c-4457_i16, %c-26475_i16, %c-26475_i16, %c-24118_i16, %c-26475_i16, %c-24118_i16, %c-26475_i16, %c7192_i16, %c-4457_i16, %c31622_i16, %c-4457_i16, %c-4457_i16, %c7192_i16, %c31622_i16, %c-26475_i16, %c7192_i16, %c-24118_i16, %c-26475_i16, %c-4457_i16, %c-26475_i16, %c31622_i16, %c7192_i16, %c7192_i16, %c-24118_i16, %c31622_i16, %c31622_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c-4457_i16, %c7192_i16, %c-24118_i16, %c31622_i16, %c-24118_i16, %c-4457_i16, %c-24118_i16, %c-24118_i16, %c-26475_i16, %c-4457_i16, %c7192_i16, %c7192_i16, %c31622_i16, %c-26475_i16, %c-4457_i16, %c7192_i16, %c-4457_i16, %c7192_i16, %c31622_i16, %c-4457_i16, %c31622_i16, %c31622_i16, %c31622_i16, %c-26475_i16, %c31622_i16, %c-24118_i16, %c31622_i16, %c31622_i16, %c-24118_i16, %c31622_i16, %c7192_i16, %c7192_i16, %c-24118_i16, %c7192_i16, %c31622_i16, %c-26475_i16, %c-4457_i16, %c31622_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c31622_i16, %c31622_i16, %c-24118_i16, %c-26475_i16, %c7192_i16, %c-4457_i16, %c7192_i16, %c-24118_i16, %c-24118_i16, %c31622_i16, %c-4457_i16, %c-24118_i16, %c-26475_i16, %c31622_i16, %c-4457_i16, %c-24118_i16, %c7192_i16, %c31622_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c-4457_i16, %c-26475_i16, %c-4457_i16, %c-26475_i16, %c31622_i16, %c7192_i16, %c7192_i16, %c-24118_i16, %c-26475_i16, %c-4457_i16, %c-24118_i16, %c31622_i16, %c31622_i16, %c7192_i16, %c7192_i16, %c-26475_i16, %c-26475_i16, %c7192_i16, %c31622_i16, %c-4457_i16 : tensor<11x2x16xi16>
      %268 = vector.broadcast %c1592072178_i64 : i64 to vector<16xi64>
      %269 = vector.multi_reduction <and>, %62, %268 [0] : vector<16x16xi64> to vector<16xi64>
      %270 = math.round %0 : tensor<11x2x16xf16>
      %271 = math.exp2 %15 : tensor<11x16xf32>
      %272 = arith.cmpi sgt, %c839684178_i64, %c839684178_i64 : i64
      %273 = arith.mulf %cst_1, %cst_1 : f32
      %274 = memref.realloc %alloc_20 : memref<16xi64> to memref<2xi64>
      %275 = arith.cmpi eq, %true, %false : i1
      %276 = bufferization.to_memref %17 : memref<11x2x16xi16>
      %277 = index.divu %c15, %c15
      %278 = math.tan %1 : tensor<11x2x16xf16>
      %inserted_41 = tensor.insert %false into %12[%c0, %c6] : tensor<16x16xi1>
      %279 = vector.multi_reduction <maxui>, %70, %70 [] : vector<1xi16> to vector<1xi16>
      %280 = arith.divsi %c839684178_i64, %c1592072178_i64 : i64
      %281 = tensor.empty() : tensor<2x16xi64>
      scf.yield %281 : tensor<2x16xi64>
    }
    %72 = vector.load %alloc[%c1, %c0, %c14] : memref<11x2x16xi32>, vector<16x16xi32>
    %73 = math.log2 %cst_3 : f16
    %74 = arith.maxf %cst_1, %cst_1 : f32
    %cast = tensor.cast %1 : tensor<11x2x16xf16> to tensor<?x?x?xf16>
    %75 = scf.if %false_0 -> (i1) {
      %266 = index.divs %c8, %c6
      %267 = vector.broadcast %c839684178_i64 : i64 to vector<11xi64>
      %268 = vector.broadcast %true : i1 to vector<11xi1>
      %269 = vector.maskedload %42[%c8, %c10], %268, %267 : memref<11x16xi64>, vector<11xi1>, vector<11xi64> into vector<11xi64>
      bufferization.dealloc_tensor %8 : tensor<11x2x16xi16>
      %c2095321461_i32 = arith.constant 2095321461 : i32
      affine.for %arg1 = 0 to 90 {
      }
      %270 = vector.broadcast %cst_1 : f32 to vector<11x2x16xf32>
      %271 = vector.fma %270, %270, %270 : vector<11x2x16xf32>
      %272 = index.divs %c3, %c4
      %273 = vector.broadcast %cst : f16 to vector<2xf16>
      %274 = vector.broadcast %false_0 : i1 to vector<2xi1>
      %275 = vector.maskedload %alloc_10[%c13, %c5], %274, %273 : memref<16x16xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
      scf.yield %false_0 : i1
    } else {
      %266 = math.tanh %cst_1 : f32
      %267 = arith.cmpf ole, %cst, %cst : f16
      %268 = arith.muli %c31622_i16, %c-4457_i16 : i16
      %269 = math.tanh %2 : tensor<16x16xf32>
      %270 = math.log2 %2 : tensor<16x16xf32>
      %271 = math.log2 %6 : tensor<2x16xf32>
      %alloc_40 = memref.alloc() : memref<16xi16>
      %272 = tensor.empty() : tensor<2xi16>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_40, %272 : memref<16xi16>, tensor<2xi16>) outs(%8 : tensor<11x2x16xi16>) {
      ^bb0(%in: i16, %in_41: i16, %out: i16):
        %275 = arith.shli %c839684178_i64, %c839684178_i64 : i64
        %276 = math.round %cst_3 : f16
        %277 = tensor.empty(%c11, %59) : tensor<?x?x16xi1>
        %278 = math.atan2 %61, %3 : tensor<2x16xf32>
        memref.store %cst_3, %alloc_10[%c14, %c11] : memref<16x16xf16>
        memref.assume_alignment %alloc_14, 2 : memref<11x2x16xf32>
        %279 = vector.extract %55[2] : vector<16xf32>
        bufferization.dealloc_tensor %14 : tensor<16x16xi32>
        %c206489531_i32 = arith.constant 206489531 : i32
        %280 = vector.create_mask %64, %c10 : vector<11x16xi1>
        %281 = math.cttz %false : i1
        %282 = math.atan %6 : tensor<2x16xf32>
        %283 = index.sizeof
        %284 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
        %285 = vector.outerproduct %60, %60, %284 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
        %collapsed_42 = tensor.collapse_shape %14 [[0, 1]] : tensor<16x16xi32> into tensor<256xi32>
        %286 = memref.load %alloc_19[%c7, %c14] : memref<16x16xi16>
        %alloca_43 = memref.alloca() : memref<2x16xi64>
        %287 = index.ceildivs %c6, %c15
        %alloca_44 = memref.alloca() : memref<11x2x16xi64>
        %288 = math.floor %0 : tensor<11x2x16xf16>
        %289 = arith.divsi %c-24118_i16, %c-4457_i16 : i16
        %290 = arith.minf %cst, %cst_3 : f16
        %291 = math.log2 %6 : tensor<2x16xf32>
        %292 = arith.maxsi %c31622_i16, %c-4457_i16 : i16
        %293 = arith.maxf %cst_3, %cst : f16
        %from_elements_45 = tensor.from_elements %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64 : tensor<11x16xi64>
        %alloc_46 = memref.alloc() : memref<11x16xi16>
        memref.tensor_store %13, %alloc_46 : memref<11x16xi16>
        %294 = math.log10 %11 : tensor<11x16xf16>
        %295 = math.tanh %6 : tensor<2x16xf32>
        %296 = vector.broadcast %c8 : index to vector<2xindex>
        %297 = vector.broadcast %true : i1 to vector<2xi1>
        vector.scatter %alloc_16[%c1, %c8] [%296], %297, %19 : memref<2x16xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        %298 = math.ipowi %in_41, %c-4457_i16 : i16
        %299 = arith.remf %cst_1, %cst_2 : f32
        linalg.yield %c-24118_i16 : i16
      } -> tensor<11x2x16xi16>
      %274 = arith.shli %c1633095684_i32, %c1633095684_i32 : i32
      scf.yield %true : i1
    }
    %76 = arith.negf %cst_2 : f32
    memref.copy %alloc_16, %alloc_18 : memref<2x16xi16> to memref<2x16xi16>
    %77 = arith.cmpi sgt, %75, %false_0 : i1
    %78 = math.absi %9 : tensor<16x16xi64>
    %79 = arith.cmpi ugt, %false_0, %75 : i1
    %80 = arith.maxsi %c7192_i16, %c-26475_i16 : i16
    %inserted_22 = tensor.insert %cst_3 into %1[%c10, %c1, %c1] : tensor<11x2x16xf16>
    %81 = arith.cmpi sle, %false, %true : i1
    %82 = arith.cmpf une, %cst_1, %cst_1 : f32
    %83 = bufferization.clone %alloc_5 : memref<16x16xi32> to memref<16x16xi32>
    %84 = math.exp2 %0 : tensor<11x2x16xf16>
    %85 = index.casts %c11 : index to i32
    %86 = arith.shrui %c-24118_i16, %c-24118_i16 : i16
    %extracted = tensor.extract %5[%c10, %c14] : tensor<11x16xi1>
    %87 = math.round %11 : tensor<11x16xf16>
    %88 = math.tanh %0 : tensor<11x2x16xf16>
    memref.assume_alignment %alloc_17, 1 : memref<16x16xf32>
    %89 = math.fma %cst_3, %cst, %cst_3 : f16
    %dest, %accumulated_value = vector.scan <maxf>, %25, %55 {inclusive = false, reduction_dim = 1 : i64} : vector<16x16xf32>, vector<16xf32>
    %90 = vector.create_mask %c11, %c13 : vector<11x16xi1>
    %91 = arith.remf %cst, %cst_3 : f16
    %92 = math.tan %1 : tensor<11x2x16xf16>
    %93 = math.rsqrt %61 : tensor<2x16xf32>
    %94 = math.tanh %cst_1 : f32
    %95 = arith.shli %c-26475_i16, %c-24118_i16 : i16
    %96 = math.log2 %15 : tensor<11x16xf32>
    %97 = scf.index_switch %c3 -> vector<11x16xi16> 
    case 1 {
      %266 = math.absi %reduced : tensor<16xi64>
      %267 = arith.remf %cst_1, %cst_2 : f32
      %268 = vector.create_mask %c2, %c4 : vector<16x16xi1>
      %269 = math.powf %cst_2, %cst_2 : f32
      %alloca_40 = memref.alloca() : memref<16x16xi32>
      %rank_41 = tensor.rank %12 : tensor<16x16xi1>
      %270 = index.ceildivu %c14, %53
      %271 = math.tanh %0 : tensor<11x2x16xf16>
      %272 = math.ipowi %8, %16 : tensor<11x2x16xi16>
      %273 = scf.if %75 -> (memref<2x16xi64>) {
        %279 = math.absi %13 : tensor<11x16xi16>
        %extracted_42 = tensor.extract %15[%c3, %c9] : tensor<11x16xf32>
        %280 = index.divu %64, %c6
        %splat_43 = tensor.splat %extracted : tensor<16x16xi1>
        %expanded = tensor.expand_shape %5 [[0], [1, 2]] : tensor<11x16xi1> into tensor<11x16x1xi1>
        %281 = math.ipowi %expanded, %expanded : tensor<11x16x1xi1>
        %282 = math.atan2 %3, %3 : tensor<2x16xf32>
        %283 = math.log %11 : tensor<11x16xf16>
        scf.yield %alloc_7 : memref<2x16xi64>
      } else {
        %279 = vector.broadcast %cst_2 : f32 to vector<11x2x16xf32>
        %280 = vector.fma %279, %279, %279 : vector<11x2x16xf32>
        %281 = math.log2 %3 : tensor<2x16xf32>
        %cst_42 = arith.constant 1.000000e+00 : f32
        %cst_43 = arith.constant 0.000000e+00 : f32
        %282 = vector.transfer_read %6[%rank_41, %270], %cst_43 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<2x16xf32>, vector<4xf32>
        %283 = math.fma %1, %0, %1 : tensor<11x2x16xf16>
        %from_elements_44 = tensor.from_elements %false, %extracted, %75, %extracted, %75, %false, %false_0, %false_0, %false_0, %false_0, %false_0, %75, %extracted, %false_0, %75, %extracted, %true, %false, %false_0, %false, %false_0, %true, %false_0, %false_0, %false, %extracted, %75, %false, %true, %extracted, %true, %false_0 : tensor<2x16xi1>
        %284 = math.expm1 %6 : tensor<2x16xf32>
        %inserted_45 = tensor.insert %c-24118_i16 into %51[%c8, %c8] : tensor<11x16xi16>
        %285 = vector.create_mask %c15, %c11 : vector<2x16xi1>
        scf.yield %alloc_7 : memref<2x16xi64>
      }
      %274 = arith.maxsi %c1592072178_i64, %c1592072178_i64 : i64
      %275 = math.log2 %10 : tensor<11x16xf16>
      %276 = arith.remf %cst_1, %cst_1 : f32
      memref.alloca_scope  {
        %279 = arith.maxf %cst_2, %cst_2 : f32
        %rank_42 = tensor.rank %6 : tensor<2x16xf32>
        %280 = math.cos %15 : tensor<11x16xf32>
        %281 = index.ceildivs %c4, %37
        %282 = arith.remf %cst_1, %cst_2 : f32
        %283 = math.atan2 %3, %6 : tensor<2x16xf32>
        %c0_i32 = arith.constant 0 : i32
        %284 = vector.transfer_read %alloc[%59, %c13, %c8], %c0_i32 : memref<11x2x16xi32>, vector<16x4xi32>
        %285 = arith.minsi %c1633095684_i32, %c866211835_i32 : i32
        %alloca_43 = memref.alloca() : memref<2x16xi1>
        %286 = arith.shrui %c0_i32, %c1633095684_i32 : i32
        %alloc_44 = memref.alloc() : memref<16x16xf32>
        memref.copy %alloc_17, %alloc_44 : memref<16x16xf32> to memref<16x16xf32>
        %287 = arith.remf %cst_2, %cst_1 : f32
        %alloca_45 = memref.alloca() : memref<11x2x16xf16>
        %288 = math.ipowi %7, %7 : tensor<2x16xi16>
        %289 = index.sub %c9, %c2
        %290 = affine.apply affine_map<(d0) -> (d0 * 2)>(%c14)
        %291 = math.powf %cst, %cst : f16
        %292 = math.cttz %14 : tensor<16x16xi32>
        %293 = math.ctlz %c-24118_i16 : i16
        %294 = math.ctlz %4 : tensor<16x16xi64>
        vector.print %30 : vector<2x16xf32>
        affine.store %c7192_i16, %alloc_18[%c10, %c10] : memref<2x16xi16>
        %295 = index.castu %c839684178_i64 : i64 to index
        %296 = arith.maxsi %c-26475_i16, %c-26475_i16 : i16
        %297 = index.floordivs %64, %53
        %298 = math.log10 %1 : tensor<11x2x16xf16>
        %299 = index.sizeof
        %300 = index.casts %c9 : index to i32
        %301 = math.atan2 %10, %10 : tensor<11x16xf16>
        %302 = arith.minf %cst_3, %cst : f16
        %303 = arith.addi %c1592072178_i64, %c839684178_i64 : i64
        %304 = vector.broadcast %cst_1 : f32 to vector<11x16xf32>
        %305 = vector.fma %304, %304, %304 : vector<11x16xf32>
      }
      affine.for %arg1 = 0 to 9 {
      }
      %277 = math.ctpop %27 : tensor<16x16xi64>
      %278 = vector.broadcast %c-26475_i16 : i16 to vector<11x16xi16>
      scf.yield %278 : vector<11x16xi16>
    }
    case 2 {
      %266 = math.tanh %cst_2 : f32
      %c1351854917_i64 = arith.constant 1351854917 : i64
      %267 = math.floor %cst_3 : f16
      %268 = arith.subi %c7192_i16, %c-4457_i16 : i16
      %269 = arith.remf %cst_3, %cst_3 : f16
      %270 = memref.load %alloc_5[%c9, %c14] : memref<16x16xi32>
      %inserted_40 = tensor.insert %cst into %11[%c8, %c8] : tensor<11x16xf16>
      %271 = math.ctpop %12 : tensor<16x16xi1>
      %272 = tensor.empty(%64) : tensor<?x2x16xf16>
      %273 = math.exp2 %2 : tensor<16x16xf32>
      %true_41 = index.bool.constant true
      %false_42 = index.bool.constant false
      %274 = math.round %6 : tensor<2x16xf32>
      %275 = scf.index_switch %c0 -> memref<11x2x16xi1> 
      case 1 {
        %279 = index.ceildivu %c1, %37
        %280 = arith.ori %c-24118_i16, %c7192_i16 : i16
        %281 = arith.xori %true, %true_41 : i1
        %282 = arith.remf %cst_3, %cst : f16
        %283 = arith.addi %75, %75 : i1
        %284 = vector.transpose %62, [1, 0] : vector<16x16xi64> to vector<16x16xi64>
        %alloca_44 = memref.alloca() : memref<16x16xf32>
        %285 = index.casts %c-26475_i16 : i16 to index
        %286 = tensor.empty() : tensor<2x16xf32>
        %287 = linalg.matmul ins(%61, %2 : tensor<2x16xf32>, tensor<16x16xf32>) outs(%286 : tensor<2x16xf32>) -> tensor<2x16xf32>
        %288 = index.casts %37 : index to i32
        %289 = arith.andi %false_0, %75 : i1
        %290 = arith.remf %cst_2, %cst_2 : f32
        %dest_45, %accumulated_value_46 = vector.scan <maxf>, %33, %60 {inclusive = false, reduction_dim = 1 : i64} : vector<1x16xf32>, vector<1xf32>
        %291 = vector.bitcast %25 : vector<16x16xf32> to vector<16x16xf32>
        %292 = math.expm1 %1 : tensor<11x2x16xf16>
        %rank_47 = tensor.rank %21 : tensor<i64>
        %alloc_48 = memref.alloc() : memref<11x2x16xi1>
        scf.yield %alloc_48 : memref<11x2x16xi1>
      }
      case 2 {
        %extracted_44 = tensor.extract %17[%c8, %c0, %c4] : tensor<11x2x16xi16>
        %279 = bufferization.to_memref %9 : memref<16x16xi64>
        %280 = memref.atomic_rmw maxs %c-26475_i16, %alloc_16[%c1, %c12] : (i16, memref<2x16xi16>) -> i16
        %281 = arith.maxui %c-4457_i16, %extracted_44 : i16
        %rank_45 = tensor.rank %1 : tensor<11x2x16xf16>
        %282 = arith.cmpi sge, %extracted_44, %c-26475_i16 : i16
        %283 = math.powf %6, %3 : tensor<2x16xf32>
        %284 = math.round %10 : tensor<11x16xf16>
        %285 = arith.maxf %cst_3, %cst : f16
        %inserted_46 = tensor.insert %cst_3 into %11[%c10, %c11] : tensor<11x16xf16>
        %286 = arith.divf %cst, %cst_3 : f16
        %287 = affine.max affine_map<(d0, d1) -> (d0 - d0 mod 2 - 32, 0, 0)>(%c4, %64)
        %288 = arith.minf %cst, %cst : f16
        %289 = index.divs %c7, %64
        bufferization.dealloc_tensor %13 : tensor<11x16xi16>
        %290 = index.sub %c0, %64
        %alloc_47 = memref.alloc() : memref<11x2x16xi1>
        scf.yield %alloc_47 : memref<11x2x16xi1>
      }
      case 3 {
        %279 = math.ctlz %9 : tensor<16x16xi64>
        %280 = tensor.empty(%c15) : tensor<?x2x16xi16>
        %281 = vector.broadcast %cst_1 : f32 to vector<2xf32>
        %dest_44, %accumulated_value_45 = vector.scan <maxf>, %31, %281 {inclusive = false, reduction_dim = 1 : i64} : vector<2x16xf32>, vector<2xf32>
        %282 = math.round %11 : tensor<11x16xf16>
        %283 = arith.cmpf une, %cst_3, %cst : f16
        %284 = math.fma %6, %6, %3 : tensor<2x16xf32>
        %285 = math.atan2 %2, %2 : tensor<16x16xf32>
        %alloc_46 = memref.alloc() : memref<2x16xi32>
        %286 = vector.reduction <add>, %55 : vector<16xf32> into f32
        %287 = vector.insertelement %cst_1, %60[%c11 : index] : vector<1xf32>
        %collapsed_47 = tensor.collapse_shape %61 [[0, 1]] : tensor<2x16xf32> into tensor<32xf32>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %288 = vector.transfer_read %alloc_19[%c6, %c0], %c0_i16 : memref<16x16xi16>, vector<i16>
        %289 = index.floordivs %c2, %c2
        %290 = arith.xori %true_41, %true_41 : i1
        %291 = arith.divsi %c839684178_i64, %c1592072178_i64 : i64
        memref.assume_alignment %alloc_6, 2 : memref<16x16xi1>
        %alloc_48 = memref.alloc() : memref<11x2x16xi1>
        scf.yield %alloc_48 : memref<11x2x16xi1>
      }
      case 4 {
        %279 = math.ceil %11 : tensor<11x16xf16>
        %280 = arith.cmpf ogt, %cst, %cst_3 : f16
        %281 = math.expm1 %1 : tensor<11x2x16xf16>
        %282 = math.absf %15 : tensor<11x16xf32>
        %c219212299_i32 = arith.constant 219212299 : i32
        %283 = vector.splat %c4 : vector<11x2x16xindex>
        %284 = math.powf %1, %0 : tensor<11x2x16xf16>
        %285 = math.log10 %cst_2 : f32
        %286 = vector.broadcast %c839684178_i64 : i64 to vector<16xi64>
        %dest_44, %accumulated_value_45 = vector.scan <and>, %62, %286 {inclusive = false, reduction_dim = 1 : i64} : vector<16x16xi64>, vector<16xi64>
        %cst_46 = arith.constant 5.638400e+04 : f16
        %287 = index.sub %c13, %c14
        %288 = math.log %cst_3 : f16
        %289 = tensor.empty() : tensor<16x16xi1>
        %290 = index.casts %c-4457_i16 : i16 to index
        %291 = math.log1p %2 : tensor<16x16xf32>
        %292 = math.exp2 %6 : tensor<2x16xf32>
        %alloc_47 = memref.alloc() : memref<11x2x16xi1>
        scf.yield %alloc_47 : memref<11x2x16xi1>
      }
      default {
        %279 = bufferization.to_memref %6 : memref<2x16xf32>
        %280 = arith.addi %c839684178_i64, %c1592072178_i64 : i64
        %281 = arith.addi %false_42, %false_0 : i1
        %282 = math.cos %10 : tensor<11x16xf16>
        %283 = math.tan %0 : tensor<11x2x16xf16>
        %284 = vector.matrix_multiply %70, %70 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %285 = arith.remsi %c7192_i16, %c-24118_i16 : i16
        %286 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %30, %52, %25 : vector<2x16xf32>, vector<2x16xf32> into vector<16x16xf32>
        %inserted_44 = tensor.insert %cst_3 into %0[%c9, %c0, %c8] : tensor<11x2x16xf16>
        vector.print %26 : vector<16x16xf32>
        %alloca_45 = memref.alloca() : memref<11x2x16xi64>
        %287 = vector.bitcast %72 : vector<16x16xi32> to vector<16x16xf32>
        %288 = index.ceildivu %c15, %c13
        %289 = index.castu %c0 : index to i32
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %290 = vector.transfer_read %7[%c5, %c9], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<2x16xi16>, vector<4xi16>
        %291 = vector.broadcast %c839684178_i64 : i64 to vector<2x16xi64>
        %alloc_46 = memref.alloc() : memref<11x2x16xi1>
        scf.yield %alloc_46 : memref<11x2x16xi1>
      }
      %276 = tensor.empty() : tensor<11x2x16xf16>
      %mapped_43 = linalg.map ins(%0, %alloc_12 : tensor<11x2x16xf16>, memref<11x2x16xf16>) outs(%276 : tensor<11x2x16xf16>)
        (%in: f16, %in_44: f16) {
          %279 = index.divu %c8, %c10
          %280 = math.round %10 : tensor<11x16xf16>
          %281 = index.castu %59 : index to i32
          %282 = math.ctpop %71 : tensor<2x16xi64>
          %283 = math.fma %0, %1, %1 : tensor<11x2x16xf16>
          %284 = math.powf %15, %15 : tensor<11x16xf32>
          %285 = arith.minf %cst, %cst_3 : f16
          %286 = math.tan %2 : tensor<16x16xf32>
          %287 = arith.cmpf ogt, %in, %in_44 : f16
          %288 = math.ctpop %extracted : i1
          %289 = affine.apply affine_map<(d0) -> (((-d0) floordiv 16) * 4)>(%c9)
          %290 = affine.apply affine_map<(d0) -> (d0 * 2)>(%c11)
          %rank_45 = tensor.rank %10 : tensor<11x16xf16>
          %291 = memref.load %alloc_8[%c1, %c4] : memref<11x16xf16>
          %c1_i64 = arith.constant 1 : i64
          %292 = vector.transfer_read %27[%c3, %59], %c1_i64 : tensor<16x16xi64>, vector<4xi64>
          %rank_46 = tensor.rank %13 : tensor<11x16xi16>
          %293 = math.tanh %10 : tensor<11x16xf16>
          %294 = memref.realloc %alloc_20 : memref<16xi64> to memref<2xi64>
          %295 = vector.multi_reduction <xor>, %70, %70 [] : vector<1xi16> to vector<1xi16>
          %296 = vector.broadcast %cst_1 : f32 to vector<11x16xf32>
          %297 = vector.fma %296, %296, %296 : vector<11x16xf32>
          %298 = arith.negf %cst_2 : f32
          %299 = math.tan %2 : tensor<16x16xf32>
          %rank_47 = tensor.rank %2 : tensor<16x16xf32>
          %300 = math.tanh %2 : tensor<16x16xf32>
          %301 = arith.addi %c839684178_i64, %c1_i64 : i64
          %302 = vector.broadcast %cst_1 : f32 to vector<1x2xf32>
          %303 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %33, %52, %302 : vector<1x16xf32>, vector<2x16xf32> into vector<1x2xf32>
          %304 = math.round %in : f16
          %305 = index.floordivs %c0, %c5
          %306 = math.ctpop %4 : tensor<16x16xi64>
          %307 = arith.divf %cst, %cst_3 : f16
          %308 = math.tan %2 : tensor<16x16xf32>
          %309 = vector.broadcast %cst : f16 to vector<16x16xf16>
          %310 = vector.broadcast %true_41 : i1 to vector<16x16xi1>
          %311 = vector.gather %1[%64, %c7, %c1] [%72], %310, %309 : tensor<11x2x16xf16>, vector<16x16xi32>, vector<16x16xi1>, vector<16x16xf16> into vector<16x16xf16>
          %cst_48 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_48 : f16
        }
      %277 = math.exp2 %0 : tensor<11x2x16xf16>
      %278 = vector.broadcast %c31622_i16 : i16 to vector<11x16xi16>
      scf.yield %278 : vector<11x16xi16>
    }
    case 3 {
      %266 = math.tanh %10 : tensor<11x16xf16>
      %267 = math.fma %3, %6, %6 : tensor<2x16xf32>
      %268 = math.round %11 : tensor<11x16xf16>
      %269 = vector.broadcast %c1633095684_i32 : i32 to vector<16x16xi32>
      %270 = vector.reduction <minf>, %60 : vector<1xf32> into f32
      %inserted_40 = tensor.insert %cst_3 into %1[%c4, %c1, %c3] : tensor<11x2x16xf16>
      %271 = math.exp2 %0 : tensor<11x2x16xf16>
      memref.assume_alignment %42, 8 : memref<11x16xi64>
      %splat_41 = tensor.splat %extracted : tensor<2x16xi1>
      %272 = math.round %2 : tensor<16x16xf32>
      memref.alloca_scope  {
        %cst_46 = arith.constant 0x4D6F935A : f32
        %dest_47, %accumulated_value_48 = vector.scan <minf>, %26, %55 {inclusive = true, reduction_dim = 0 : i64} : vector<16x16xf32>, vector<16xf32>
        %278 = arith.xori %75, %false_0 : i1
        %279 = arith.negf %cst : f16
        %280 = arith.remui %c31622_i16, %c-4457_i16 : i16
        memref.assume_alignment %alloc_10, 1 : memref<16x16xf16>
        %dest_49, %accumulated_value_50 = vector.scan <minf>, %25, %55 {inclusive = false, reduction_dim = 1 : i64} : vector<16x16xf32>, vector<16xf32>
        %281 = vector.broadcast %c5 : index to vector<11xindex>
        %282 = vector.broadcast %75 : i1 to vector<11xi1>
        %283 = vector.broadcast %c839684178_i64 : i64 to vector<11xi64>
        vector.scatter %alloc_20[%c2] [%281], %282, %283 : memref<16xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
        %284 = arith.subi %c866211835_i32, %c866211835_i32 : i32
        memref.store %cst_2, %alloc_9[%c1, %c8] : memref<2x16xf32>
        %285 = tensor.empty(%c4) : tensor<11x2x?xf32>
        %286 = math.fma %11, %11, %11 : tensor<11x16xf16>
        %287 = vector.bitcast %52 : vector<2x16xf32> to vector<2x16xf32>
        %288 = bufferization.to_memref %11 : memref<11x16xf16>
        %289 = arith.ori %c-24118_i16, %c-24118_i16 : i16
        %290 = vector.bitcast %62 : vector<16x16xi64> to vector<16x16xi64>
        %291 = math.fma %2, %2, %2 : tensor<16x16xf32>
        %292 = vector.insertelement %cst_1, %60[%c15 : index] : vector<1xf32>
        %cst_51 = arith.constant 5.097600e+04 : f16
        %293 = arith.xori %c7192_i16, %c31622_i16 : i16
        %294 = arith.ori %c839684178_i64, %c839684178_i64 : i64
        %295 = index.castu %c0 : index to i32
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_52 = arith.constant 0 : i32
        %296 = vector.transfer_read %14[%c2, %c0], %c0_i32_52 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<16x16xi32>, vector<4xi32>
        %297 = math.expm1 %10 : tensor<11x16xf16>
        %298 = bufferization.to_memref %7 : memref<2x16xi16>
        %299 = arith.maxsi %c31622_i16, %c-4457_i16 : i16
        %300 = arith.minf %cst_1, %cst_2 : f32
        %301 = arith.mulf %cst, %cst_3 : f16
        %302 = tensor.empty() : tensor<11x2x16xi32>
        %303 = vector.insertelement %cst_1, %60[%c8 : index] : vector<1xf32>
        %304 = arith.maxsi %c-26475_i16, %c-24118_i16 : i16
        %305 = math.ctlz %20 : tensor<i64>
      }
      %alloc_42 = memref.alloc() : memref<16x4xf16>
      %273 = tensor.empty() : tensor<11x4xf16>
      %274 = linalg.matmul ins(%11, %alloc_42 : tensor<11x16xf16>, memref<16x4xf16>) outs(%273 : tensor<11x4xf16>) -> tensor<11x4xf16>
      %275 = vector.broadcast %true : i1 to vector<11x2x16xi1>
      %cast_43 = tensor.cast %splat_41 : tensor<2x16xi1> to tensor<?x?xi1>
      %276 = vector.broadcast %false_0 : i1 to vector<11x2xi1>
      %dest_44, %accumulated_value_45 = vector.scan <and>, %275, %276 {inclusive = false, reduction_dim = 2 : i64} : vector<11x2x16xi1>, vector<11x2xi1>
      memref.store %cst_3, %alloc_12[%c5, %c0, %c10] : memref<11x2x16xf16>
      %277 = vector.broadcast %c7192_i16 : i16 to vector<11x16xi16>
      scf.yield %277 : vector<11x16xi16>
    }
    case 4 {
      scf.if %false {
        memref.store %cst_3, %alloc_8[%c3, %c8] : memref<11x16xf16>
        %278 = arith.maxf %cst_2, %cst_2 : f32
        %inserted_42 = tensor.insert %c31622_i16 into %17[%c3, %c1, %c0] : tensor<11x2x16xi16>
        memref.tensor_store %7, %alloc_18 : memref<2x16xi16>
        %279 = arith.divsi %75, %false_0 : i1
        %280 = vector.load %58[%c4, %c2] : memref<11x16xf16>, vector<11x2x16xf16>
        memref.assume_alignment %alloc_19, 1 : memref<16x16xi16>
        %cst_43 = arith.constant 1.268000e+04 : f16
      }
      %generated_40 = tensor.generate %c10, %c11, %c8 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %278 = index.sizeof
        memref.assume_alignment %42, 4 : memref<11x16xi64>
        %279 = index.ceildivu %c1, %arg1
        %inserted_42 = tensor.insert %cst_2 into %3[%c1, %c8] : tensor<2x16xf32>
        tensor.yield %cst_1 : f32
      } : tensor<?x?x?xf32>
      %266 = math.roundeven %3 : tensor<2x16xf32>
      %267 = tensor.empty(%37) : tensor<?x16xi16>
      memref.assume_alignment %alloc_20, 1 : memref<16xi64>
      scf.if %75 {
        %collapsed_42 = tensor.collapse_shape %27 [[0, 1]] : tensor<16x16xi64> into tensor<256xi64>
        %alloca_43 = memref.alloca() : memref<11x16xi32>
        %278 = arith.remf %cst_1, %cst_2 : f32
        %279 = math.log2 %6 : tensor<2x16xf32>
        %280 = index.maxu %c12, %c7
        %281 = index.sub %c4, %c3
        bufferization.dealloc_tensor %16 : tensor<11x2x16xi16>
        %282 = math.tan %1 : tensor<11x2x16xf16>
      } else {
        %278 = index.maxs %c7, %c15
        %279 = math.ctpop %c866211835_i32 : i32
        %280 = math.log2 %10 : tensor<11x16xf16>
        %281 = math.ctlz %false_0 : i1
        %282 = vector.insertelement %c-24118_i16, %70[%59 : index] : vector<1xi16>
        %283 = vector.load %alloc_12[%c10, %c0, %c5] : memref<11x2x16xf16>, vector<11x2x16xf16>
        %284 = math.exp2 %15 : tensor<11x16xf32>
        %285 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %62, %62, %62 : vector<16x16xi64>, vector<16x16xi64> into vector<16x16xi64>
      }
      %268 = math.ctlz %c866211835_i32 : i32
      %269 = index.add %53, %c10
      %splat_41 = tensor.splat %c31622_i16 : tensor<11x16xi16>
      %270 = arith.divui %c839684178_i64, %c839684178_i64 : i64
      %271 = affine.max affine_map<(d0, d1, d2) -> ((d2 mod 8) ceildiv 2, (d2 floordiv 4) ceildiv 8)>(%53, %c5, %c14)
      %272 = index.sizeof
      %273 = index.maxs %c14, %59
      %274 = index.sub %c1, %273
      %275 = bufferization.to_tensor %alloc_19 : memref<16x16xi16>
      %276 = math.powf %10, %11 : tensor<11x16xf16>
      %277 = vector.broadcast %c-4457_i16 : i16 to vector<11x16xi16>
      scf.yield %277 : vector<11x16xi16>
    }
    default {
      %266 = math.log1p %6 : tensor<2x16xf32>
      %267 = arith.maxf %cst_1, %cst_1 : f32
      %268 = index.ceildivs %c2, %c7
      %cast_40 = tensor.cast %14 : tensor<16x16xi32> to tensor<?x?xi32>
      %269 = math.roundeven %15 : tensor<11x16xf32>
      %270 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 32, d3, d2 floordiv 32, d0 * 64 + 1)>(%c6, %c7, %c11, %c2)
      %271 = arith.shli %c-24118_i16, %c31622_i16 : i16
      memref.tensor_store %1, %alloc_12 : memref<11x2x16xf16>
      %272 = math.round %1 : tensor<11x2x16xf16>
      memref.assume_alignment %alloc_9, 8 : memref<2x16xf32>
      %273 = index.sub %37, %c1
      %274 = arith.floordivsi %c866211835_i32, %c1633095684_i32 : i32
      %275 = arith.remsi %true, %75 : i1
      %276 = vector.transpose %70, [0] : vector<1xi16> to vector<1xi16>
      %277 = vector.multi_reduction <minsi>, %90, %90 [] : vector<11x16xi1> to vector<11x16xi1>
      %278 = vector.matrix_multiply %19, %19 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xi16>, vector<2xi16>) -> vector<1xi16>
      %279 = vector.broadcast %c31622_i16 : i16 to vector<11x16xi16>
      scf.yield %279 : vector<11x16xi16>
    }
    %98 = vector.broadcast %cst_2 : f32 to vector<11x16xf32>
    %99 = vector.fma %98, %98, %98 : vector<11x16xf32>
    %100 = vector.broadcast %c-4457_i16 : i16 to vector<2x2xi16>
    %101 = vector.outerproduct %19, %19, %100 {kind = #vector.kind<maxui>} : vector<2xi16>, vector<2xi16>
    %102 = tensor.empty() : tensor<16x16xi64>
    %103 = bufferization.clone %alloc_10 : memref<16x16xf16> to memref<16x16xf16>
    %104 = vector.reduction <add>, %19 : vector<2xi16> into i16
    %105 = index.maxs %c4, %64
    %106 = arith.cmpi sle, %c-24118_i16, %c-26475_i16 : i16
    %cst_23 = arith.constant 1.000000e+00 : f16
    %cst_24 = arith.constant 0.000000e+00 : f16
    %107 = vector.transfer_read %alloc_10[%53, %c6], %cst_24 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<16x16xf16>, vector<16xf16>
    %108 = math.round %3 : tensor<2x16xf32>
    %true_25 = index.bool.constant true
    %109 = arith.remf %cst_3, %cst : f16
    %110 = math.absi %18 : tensor<16xi64>
    %111 = arith.remsi %false_0, %true_25 : i1
    %extracted_26 = tensor.extract %12[%c7, %c14] : tensor<16x16xi1>
    %112 = index.casts %extracted : i1 to index
    %collapsed = tensor.collapse_shape %61 [[0, 1]] : tensor<2x16xf32> into tensor<32xf32>
    %113 = math.round %cst_3 : f16
    %cast_27 = tensor.cast %10 : tensor<11x16xf16> to tensor<?x?xf16>
    %114 = arith.divui %c-4457_i16, %c-4457_i16 : i16
    %115 = vector.broadcast %105 : index to vector<11xindex>
    %116 = vector.broadcast %false_0 : i1 to vector<11xi1>
    %117 = vector.broadcast %c7192_i16 : i16 to vector<11xi16>
    vector.scatter %alloc_13[%c10, %c1, %c11] [%115], %116, %117 : memref<11x2x16xi16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
    %118 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 - (d3 - 1) * 16)>(%c14, %c13, %c3, %c5)
    %119 = index.casts %59 : index to i32
    %120 = math.absf %1 : tensor<11x2x16xf16>
    %generated = tensor.generate %c9, %c10 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %266 = math.tanh %15 : tensor<11x16xf32>
      %267 = math.log1p %61 : tensor<2x16xf32>
      %268 = vector.broadcast %false : i1 to vector<16xi1>
      %dest_40, %accumulated_value_41 = vector.scan <maxui>, %90, %268 {inclusive = false, reduction_dim = 0 : i64} : vector<11x16xi1>, vector<16xi1>
      %269 = vector.broadcast %c839684178_i64 : i64 to vector<16xi64>
      %270 = vector.multi_reduction <and>, %62, %269 [0] : vector<16x16xi64> to vector<16xi64>
      tensor.yield %cst_2 : f32
    } : tensor<?x?x16xf32>
    %121 = math.log2 %15 : tensor<11x16xf32>
    %122 = tensor.empty() : tensor<11x16xf16>
    %mapped_28 = linalg.map ins(%58, %10 : memref<11x16xf16>, tensor<11x16xf16>) outs(%122 : tensor<11x16xf16>)
      (%in: f16, %in_40: f16) {
        %c466436367_i32 = arith.constant 466436367 : i32
        %cast_41 = tensor.cast %14 : tensor<16x16xi32> to tensor<?x?xi32>
        %266 = tensor.empty() : tensor<11x2x16xf16>
        %267 = vector.broadcast %c866211835_i32 : i32 to vector<11x16xi32>
        %268 = vector.gather %alloc_5[%118, %64] [%267], %90, %267 : memref<16x16xi32>, vector<11x16xi32>, vector<11x16xi1>, vector<11x16xi32> into vector<11x16xi32>
        %269 = math.expm1 %61 : tensor<2x16xf32>
        %270 = math.exp2 %10 : tensor<11x16xf16>
        %271 = math.tanh %1 : tensor<11x2x16xf16>
        %272 = math.tan %cst : f16
        memref.tensor_store %17, %alloc_13 : memref<11x2x16xi16>
        %273 = bufferization.to_memref %21 : memref<i64>
        %274 = arith.divf %cst_3, %cst_23 : f16
        %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%8 : tensor<11x2x16xi16>) {
        ^bb0(%out: i16):
          %292 = memref.load %alloc_12[%c1, %c1, %c5] : memref<11x2x16xf16>
          %293 = arith.shli %extracted_26, %false : i1
          %294 = vector.outerproduct %55, %55, %25 {kind = #vector.kind<mul>} : vector<16xf32>, vector<16xf32>
          %295 = index.divs %c0, %53
          %296 = math.log10 %11 : tensor<11x16xf16>
          %297 = math.atan2 %6, %3 : tensor<2x16xf32>
          %298 = vector.shuffle %52, %25 [0, 6, 7, 8, 9, 10, 11, 12, 13, 14] : vector<2x16xf32>, vector<16x16xf32>
          %299 = math.absi %9 : tensor<16x16xi64>
          %300 = math.round %in_40 : f16
          %inserted_49 = tensor.insert %cst_1 into %3[%c1, %c13] : tensor<2x16xf32>
          %301 = vector.outerproduct %55, %55, %26 {kind = #vector.kind<maxf>} : vector<16xf32>, vector<16xf32>
          %302 = math.ctlz %4 : tensor<16x16xi64>
          %303 = index.castu %c839684178_i64 : i64 to index
          %304 = arith.maxui %c866211835_i32, %c866211835_i32 : i32
          %305 = vector.splat %c2 : vector<11x16xindex>
          %306 = arith.ori %75, %extracted : i1
          %307 = index.ceildivu %303, %37
          %308 = arith.remf %cst_23, %in : f16
          %309 = arith.minf %cst_1, %cst_1 : f32
          %310 = arith.andi %true, %false : i1
          %311 = index.castu %c13 : index to i32
          %312 = math.absi %false : i1
          %313 = math.tanh %cst : f16
          %314 = arith.maxui %c-4457_i16, %c31622_i16 : i16
          %315 = vector.insertelement %c7192_i16, %70[%37 : index] : vector<1xi16>
          %316 = index.floordivs %c2, %112
          %317 = index.divs %105, %53
          %318 = math.absi %9 : tensor<16x16xi64>
          %c20140_i16 = arith.constant 20140 : i16
          %319 = arith.ori %c1592072178_i64, %c1592072178_i64 : i64
          %cst_50 = arith.constant 6.294400e+04 : f16
          %cast_51 = tensor.cast %9 : tensor<16x16xi64> to tensor<?x?xi64>
          linalg.yield %c7192_i16 : i16
        } -> tensor<11x2x16xi16>
        %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %62, %62, %62 : vector<16x16xi64>, vector<16x16xi64> into vector<16x16xi64>
        %277 = math.ctpop %8 : tensor<11x2x16xi16>
        %278 = arith.addi %true_25, %true : i1
        %279 = arith.shrui %c1592072178_i64, %c1592072178_i64 : i64
        %280 = affine.max affine_map<(d0, d1) -> (d0)>(%105, %105)
        %281 = affine.apply affine_map<(d0, d1) -> ((d0 - 1) ceildiv 128 - 8)>(%280, %118)
        %282 = arith.divsi %false_0, %true : i1
        %283 = math.expm1 %1 : tensor<11x2x16xf16>
        %false_42 = arith.constant false
        %false_43 = arith.constant false
        %284 = vector.transfer_read %5[%c11, %c15], %false_43 : tensor<11x16xi1>, vector<i1>
        %285 = arith.cmpi slt, %c-24118_i16, %c7192_i16 : i16
        memref.alloca_scope  {
          %292 = math.absi %false : i1
          %293 = math.absi %c-4457_i16 : i16
          %294 = tensor.empty() : tensor<11x2x16xi64>
          %295 = vector.transpose %52, [1, 0] : vector<2x16xf32> to vector<16x2xf32>
          %296 = arith.andi %c-26475_i16, %c-4457_i16 : i16
          %297 = tensor.empty() : tensor<2x16xi1>
          %298 = vector.transpose %19, [0] : vector<2xi16> to vector<2xi16>
          %299 = math.roundeven %in_40 : f16
          %300 = tensor.empty() : tensor<11x2x16xf16>
          %301 = math.floor %122 : tensor<11x16xf16>
          %302 = math.fma %0, %1, %300 : tensor<11x2x16xf16>
          %303 = math.atan2 %0, %266 : tensor<11x2x16xf16>
          %304 = index.mul %c13, %c2
          %alloca_49 = memref.alloca() : memref<11x16xf32>
          %305 = math.powf %6, %3 : tensor<2x16xf32>
          %306 = arith.maxsi %c7192_i16, %c7192_i16 : i16
          %307 = arith.minf %cst_2, %cst_1 : f32
          %308 = arith.maxf %cst_3, %cst : f16
          %309 = vector.multi_reduction <minf>, %25, %25 [] : vector<16x16xf32> to vector<16x16xf32>
          %cast_50 = tensor.cast %27 : tensor<16x16xi64> to tensor<?x?xi64>
          %310 = index.divs %c12, %c15
          %311 = vector.transpose %90, [1, 0] : vector<11x16xi1> to vector<16x11xi1>
          %312 = math.log2 %266 : tensor<11x2x16xf16>
          %313 = math.round %3 : tensor<2x16xf32>
          %314 = memref.load %alloc_16[%c0, %c9] : memref<2x16xi16>
          %315 = arith.maxsi %extracted_26, %false_42 : i1
          %316 = arith.floordivsi %c839684178_i64, %c1592072178_i64 : i64
          %317 = math.expm1 %122 : tensor<11x16xf16>
          %318 = index.sub %64, %281
          %319 = arith.cmpf oeq, %in, %cst_23 : f16
          %320 = math.rsqrt %10 : tensor<11x16xf16>
          %321 = math.tan %3 : tensor<2x16xf32>
        }
        %286 = tensor.empty() : tensor<2x16xf32>
        %mapped_44 = linalg.map ins(%6 : tensor<2x16xf32>) outs(%286 : tensor<2x16xf32>)
          (%in_49: f32) {
            %292 = vector.broadcast %cst_2 : f32 to vector<11xf32>
            %dest_50, %accumulated_value_51 = vector.scan <mul>, %98, %292 {inclusive = false, reduction_dim = 1 : i64} : vector<11x16xf32>, vector<11xf32>
            %293 = tensor.empty(%c11) : tensor<?x16xi16>
            %294 = memref.load %alloc_15[%c10, %c8] : memref<11x16xi64>
            %295 = vector.broadcast %c-26475_i16 : i16 to vector<2x2xi16>
            %296 = vector.outerproduct %19, %19, %295 {kind = #vector.kind<maxui>} : vector<2xi16>, vector<2xi16>
            %297 = arith.cmpi uge, %c-4457_i16, %c-26475_i16 : i16
            %298 = index.sub %c12, %c14
            %alloca_52 = memref.alloca() : memref<11x16xi16>
            %299 = math.exp2 %cst_23 : f16
            %300 = vector.broadcast %in_49 : f32 to vector<2x11xf32>
            %301 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %52, %99, %300 : vector<2x16xf32>, vector<11x16xf32> into vector<2x11xf32>
            %302 = vector.matrix_multiply %60, %60 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
            %303 = arith.divf %cst_3, %in_40 : f16
            %304 = arith.xori %75, %extracted : i1
            %305 = arith.maxf %cst_2, %cst_1 : f32
            %rank_53 = tensor.rank %cast_27 : tensor<?x?xf16>
            %expanded_54 = tensor.expand_shape %122 [[0], [1, 2]] : tensor<11x16xf16> into tensor<11x16x1xf16>
            %306 = vector.broadcast %cst_1 : f32 to vector<11x2x16xf32>
            %307 = vector.fma %306, %306, %306 : vector<11x2x16xf32>
            %308 = index.divs %c3, %281
            %expanded_55 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<11x16xf16> into tensor<11x16x1xf16>
            memref.store %c-4457_i16, %alloc_11[%c9, %c8] : memref<16x16xi16>
            %c2015762065_i32 = arith.constant 2015762065 : i32
            %309 = arith.negf %in_49 : f32
            %310 = arith.subi %true_25, %true : i1
            %311 = arith.andi %c1592072178_i64, %c1592072178_i64 : i64
            %312 = math.log2 %in_40 : f16
            %313 = arith.floordivsi %true_25, %false : i1
            %alloca_56 = memref.alloca() : memref<11x2x16xi16>
            %314 = vector.multi_reduction <add>, %33, %in_49 [0, 1] : vector<1x16xf32> to f32
            %315 = arith.divf %cst, %cst_3 : f16
            %316 = arith.shli %c31622_i16, %c-26475_i16 : i16
            %317 = math.log10 %314 : f32
            %318 = math.exp2 %cst_23 : f16
            %alloc_57 = memref.alloc() : memref<2x16xi16>
            %cst_58 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_58 : f32
          }
        %287 = index.floordivs %281, %64
        %288 = arith.divf %cst, %in : f16
        %inserted_45 = tensor.insert %c866211835_i32 into %14[%c13, %c9] : tensor<16x16xi32>
        %expanded = tensor.expand_shape %11 [[0], [1, 2]] : tensor<11x16xf16> into tensor<11x16x1xf16>
        %289 = arith.shli %false, %75 : i1
        %290 = vector.broadcast %cst_1 : f32 to vector<11xf32>
        %dest_46, %accumulated_value_47 = vector.scan <maxf>, %99, %290 {inclusive = false, reduction_dim = 1 : i64} : vector<11x16xf32>, vector<11xf32>
        %291 = arith.negf %cst_23 : f16
        memref.store %cst_3, %alloc_8[%c7, %c4] : memref<11x16xf16>
        %cst_48 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_48 : f16
      }
    %123 = vector.broadcast %c1592072178_i64 : i64 to vector<4xi64>
    %124 = vector.broadcast %false : i1 to vector<4xi1>
    %125 = vector.maskedload %alloc_7[%c1, %c15], %124, %123 : memref<2x16xi64>, vector<4xi1>, vector<4xi64> into vector<4xi64>
    vector.print %19 : vector<2xi16>
    %126 = bufferization.to_memref %2 : memref<16x16xf32>
    %127 = math.log2 %122 : tensor<11x16xf16>
    memref.assume_alignment %alloc_16, 8 : memref<2x16xi16>
    %128 = memref.load %alloc_13[%c7, %c1, %c10] : memref<11x2x16xi16>
    %129 = math.ipowi %8, %8 : tensor<11x2x16xi16>
    %130 = bufferization.to_memref %2 : memref<16x16xf32>
    %131 = arith.shli %c1633095684_i32, %c1633095684_i32 : i32
    %132 = math.tanh %cst_23 : f16
    %133 = arith.cmpf oge, %cst_23, %cst_23 : f16
    %134 = index.divs %105, %112
    %rank = tensor.rank %7 : tensor<2x16xi16>
    %135 = affine.max affine_map<(d0, d1, d2) -> (d2, -d1)>(%37, %c8, %c10)
    %alloc_29 = memref.alloc() : memref<16xf16>
    %alloc_30 = memref.alloc() : memref<11x2xf16>
    %136 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_29, %alloc_30, %0 : memref<16xf16>, memref<11x2xf16>, tensor<11x2x16xf16>) outs(%1 : tensor<11x2x16xf16>) {
    ^bb0(%in: f16, %in_40: f16, %in_41: f16, %out: f16):
      %266 = arith.remf %in, %in_40 : f16
      %267 = index.floordivs %105, %c12
      %268 = arith.floordivsi %true_25, %false : i1
      %269 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %62, %62, %62 : vector<16x16xi64>, vector<16x16xi64> into vector<16x16xi64>
      %270 = index.ceildivs %c14, %c6
      %271 = math.ctpop %13 : tensor<11x16xi16>
      %cst_42 = arith.constant 1.000000e+00 : f32
      %cst_43 = arith.constant 0.000000e+00 : f32
      %272 = vector.transfer_read %alloc_14[%c3, %37, %c5], %cst_43 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : memref<11x2x16xf32>, vector<4x11xf32>
      %273 = vector.create_mask %c12, %37, %118 : vector<11x2x16xi1>
      %274 = index.casts %false : i1 to index
      %rank_44 = tensor.rank %generated : tensor<?x?x16xf32>
      %275 = bufferization.clone %alloc_13 : memref<11x2x16xi16> to memref<11x2x16xi16>
      %276 = vector.reduction <minui>, %70 : vector<1xi16> into i16
      %277 = memref.load %alloc_13[%c9, %c0, %c3] : memref<11x2x16xi16>
      %278 = index.mul %c7, %c13
      %279 = affine.apply affine_map<(d0, d1) -> ((d0 ceildiv 32 + d0) ceildiv 32)>(%c1, %c4)
      vector.print %60 : vector<1xf32>
      %280 = index.divu %rank, %c14
      %281 = index.ceildivu %280, %53
      %true_45 = index.bool.constant true
      %282 = index.floordivs %c3, %64
      %inserted_46 = tensor.insert %cst_23 into %0[%c4, %c0, %c7] : tensor<11x2x16xf16>
      %283 = arith.divui %extracted_26, %extracted_26 : i1
      %284 = arith.divsi %c-24118_i16, %c-24118_i16 : i16
      %285 = scf.execute_region -> f16 {
        %c-28499_i16 = arith.constant -28499 : i16
        %293 = arith.xori %c1633095684_i32, %c1633095684_i32 : i32
        %294 = math.ctlz %true : i1
        %295 = math.copysign %2, %2 : tensor<16x16xf32>
        %296 = math.log2 %3 : tensor<2x16xf32>
        %alloc_48 = memref.alloc() : memref<16x11xf16>
        %297 = tensor.empty() : tensor<11x11xf16>
        %298 = linalg.matmul ins(%11, %alloc_48 : tensor<11x16xf16>, memref<16x11xf16>) outs(%297 : tensor<11x11xf16>) -> tensor<11x11xf16>
        %299 = arith.minsi %true_45, %extracted : i1
        %300 = arith.subi %c866211835_i32, %c1633095684_i32 : i32
        %301 = arith.divf %cst, %cst_23 : f16
        %302 = index.castu %64 : index to i32
        %303 = index.ceildivu %rank_44, %112
        %304 = math.ctlz %true : i1
        memref.assume_alignment %alloc_12, 8 : memref<11x2x16xf16>
        %extracted_49 = tensor.extract %0[%c1, %c1, %c7] : tensor<11x2x16xf16>
        %305 = math.tan %6 : tensor<2x16xf32>
        %306 = vector.broadcast %c1633095684_i32 : i32 to vector<2x16xi32>
        %307 = vector.broadcast %true : i1 to vector<2x16xi1>
        %308 = vector.gather %alloc[%280, %c10, %112] [%306], %307, %306 : memref<11x2x16xi32>, vector<2x16xi32>, vector<2x16xi1>, vector<2x16xi32> into vector<2x16xi32>
        scf.yield %cst_23 : f16
      }
      %286 = math.atan %1 : tensor<11x2x16xf16>
      %287 = math.tan %1 : tensor<11x2x16xf16>
      %288 = bufferization.to_memref %3 : memref<2x16xf32>
      %cst_47 = arith.constant 2.360000e+04 : f16
      %289 = math.tan %15 : tensor<11x16xf32>
      %290 = arith.remf %cst_1, %cst_42 : f32
      %291 = arith.addi %true_45, %false : i1
      %292 = math.ceil %6 : tensor<2x16xf32>
      linalg.yield %out : f16
    } -> tensor<11x2x16xf16>
    %from_elements = tensor.from_elements %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64 : tensor<11x16xi64>
    %137 = math.tanh %10 : tensor<11x16xf16>
    %138 = bufferization.clone %alloc_11 : memref<16x16xi16> to memref<16x16xi16>
    %139 = vector.broadcast %c31622_i16 : i16 to vector<16xi16>
    %140 = vector.broadcast %extracted : i1 to vector<16xi1>
    %141 = vector.maskedload %alloc_16[%c0, %c1], %140, %139 : memref<2x16xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
    %142 = vector.load %alloc_10[%c7, %c6] : memref<16x16xf16>, vector<11x2x16xf16>
    %143 = math.copysign %0, %1 : tensor<11x2x16xf16>
    %144 = math.cos %cst : f16
    %from_elements_31 = tensor.from_elements %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2 : tensor<2x16xf32>
    %145 = arith.subi %true_25, %true : i1
    %146 = bufferization.clone %42 : memref<11x16xi64> to memref<11x16xi64>
    %147 = index.castu %extracted : i1 to index
    %generated_32 = tensor.generate %105, %c1, %53 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %266 = bufferization.to_memref %generated : memref<?x?x16xf32>
      %267 = arith.maxf %cst_1, %cst_2 : f32
      %268 = index.divu %64, %arg3
      %269 = vector.insertelement %cst_1, %60[%c9 : index] : vector<1xf32>
      tensor.yield %cst_3 : f16
    } : tensor<?x?x?xf16>
    bufferization.dealloc_tensor %14 : tensor<16x16xi32>
    %148 = index.sub %59, %c4
    %149 = math.powf %11, %10 : tensor<11x16xf16>
    memref.tensor_store %7, %alloc_18 : memref<2x16xi16>
    %150 = arith.ori %true_25, %75 : i1
    %151 = arith.cmpi ugt, %extracted, %extracted : i1
    %152 = index.divu %c12, %c5
    %153 = math.absi %13 : tensor<11x16xi16>
    %154 = vector.broadcast %cst_23 : f16 to vector<f16>
    vector.transfer_write %154, %alloc_10[%c4, %rank] : vector<f16>, memref<16x16xf16>
    %155 = math.cttz %18 : tensor<16xi64>
    %156 = bufferization.to_memref %14 : memref<16x16xi32>
    %157 = vector.splat %148 : vector<11x2x16xindex>
    %158 = scf.while (%arg1 = %c-24118_i16) : (i16) -> i16 {
      %266 = math.ctlz %c1633095684_i32 : i32
      %267 = scf.execute_region -> vector<11x16xi1> {
        %272 = arith.remf %cst_1, %cst_1 : f32
        %273 = arith.remf %cst_2, %cst_1 : f32
        %274 = math.tan %3 : tensor<2x16xf32>
        %275 = arith.remui %c-4457_i16, %c7192_i16 : i16
        %cst_41 = arith.constant 1.000000e+00 : f32
        %276 = vector.transfer_read %2[%134, %c13], %cst_41 : tensor<16x16xf32>, vector<4xf32>
        %277 = math.ctlz %c1592072178_i64 : i64
        %278 = math.floor %cst : f16
        %279 = arith.subi %75, %false : i1
        %280 = arith.negf %cst_41 : f32
        %281 = vector.insert %c1592072178_i64, %123 [3] : i64 into vector<4xi64>
        %282 = arith.divf %cst_3, %cst : f16
        %283 = math.atan2 %10, %11 : tensor<11x16xf16>
        %alloca_42 = memref.alloca() : memref<11x16xf32>
        %284 = tensor.empty() : tensor<16x16xf16>
        %285 = vector.broadcast %cst : f16 to vector<16x16xf16>
        %286 = vector.broadcast %false : i1 to vector<16x16xi1>
        %287 = vector.gather %284[%112, %c4] [%72], %286, %285 : tensor<16x16xf16>, vector<16x16xi32>, vector<16x16xi1>, vector<16x16xf16> into vector<16x16xf16>
        %288 = vector.transpose %287, [0, 1] : vector<16x16xf16> to vector<16x16xf16>
        %289 = index.sizeof
        scf.yield %90 : vector<11x16xi1>
      }
      memref.assume_alignment %alloc_9, 4 : memref<2x16xf32>
      %268 = arith.cmpi sge, %c-26475_i16, %c-26475_i16 : i16
      %alloca_40 = memref.alloca() : memref<2x16xi1>
      %269 = index.sub %c2, %c2
      %270 = math.ctpop %4 : tensor<16x16xi64>
      %271 = index.maxs %c10, %c9
      scf.condition(%75) %c31622_i16 : i16
    } do {
    ^bb0(%arg1: i16):
      %266 = index.sizeof
      %267 = math.round %cst_3 : f16
      %268 = math.rsqrt %15 : tensor<11x16xf32>
      %269 = vector.broadcast %cst_2 : f32 to vector<11x2x16xf32>
      %270 = vector.fma %269, %269, %269 : vector<11x2x16xf32>
      %271 = index.divu %c13, %105
      %272 = math.round %1 : tensor<11x2x16xf16>
      %273 = vector.broadcast %c839684178_i64 : i64 to vector<2x16xi64>
      %274 = vector.broadcast %true_25 : i1 to vector<2x16xi1>
      %275 = vector.broadcast %c866211835_i32 : i32 to vector<2x16xi32>
      %276 = vector.gather %alloc_7[%c13, %c5] [%275], %274, %273 : memref<2x16xi64>, vector<2x16xi32>, vector<2x16xi1>, vector<2x16xi64> into vector<2x16xi64>
      %277 = arith.ceildivsi %c1592072178_i64, %c839684178_i64 : i64
      %278 = bufferization.to_memref %51 : memref<11x16xi16>
      %279 = arith.cmpf true, %cst_2, %cst_2 : f32
      %280 = tensor.empty(%c10) : tensor<11x?xi16>
      %281 = math.absi %71 : tensor<2x16xi64>
      %282 = vector.broadcast %cst_1 : f32 to vector<16x16xf32>
      %283 = vector.fma %282, %26, %282 : vector<16x16xf32>
      %c313307780_i32 = arith.constant 313307780 : i32
      %284 = index.maxs %c7, %53
      %285 = math.round %1 : tensor<11x2x16xf16>
      scf.yield %arg1 : i16
    }
    %159 = arith.negf %cst_23 : f16
    %160 = vector.multi_reduction <add>, %139, %141 [] : vector<16xi16> to vector<16xi16>
    %161 = vector.multi_reduction <mul>, %52, %31 [] : vector<2x16xf32> to vector<2x16xf32>
    %162 = index.mul %118, %c11
    %163 = index.ceildivu %c7, %64
    %164 = vector.reduction <maxui>, %124 : vector<4xi1> into i1
    %165 = vector.insertelement %c-26475_i16, %70[%162 : index] : vector<1xi16>
    %166 = math.fma %3, %61, %6 : tensor<2x16xf32>
    %167 = math.atan %15 : tensor<11x16xf32>
    %168 = vector.matrix_multiply %19, %141 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 8 : i32} : (vector<2xi16>, vector<16xi16>) -> vector<8xi16>
    %169 = index.floordivs %59, %c13
    %170 = vector.broadcast %cst_2 : f32 to vector<11x2x16xf32>
    %171 = vector.fma %170, %170, %170 : vector<11x2x16xf32>
    %172 = arith.floordivsi %c-4457_i16, %c-26475_i16 : i16
    %173 = scf.if %true_25 -> (memref<11x16xi32>) {
      %inserted_40 = tensor.insert %cst_2 into %15[%c9, %c12] : tensor<11x16xf32>
      %266 = arith.shli %75, %true_25 : i1
      %expanded = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<11x2x16xi16> into tensor<11x2x16x1xi16>
      %267 = math.ceil %collapsed : tensor<32xf32>
      %268 = math.tanh %10 : tensor<11x16xf16>
      %cst_41 = arith.constant 1.556800e+04 : f16
      %269 = bufferization.clone %138 : memref<16x16xi16> to memref<16x16xi16>
      %270 = vector.insertelement %cst_23, %154[] : vector<f16>
      %alloc_42 = memref.alloc() : memref<11x16xi32>
      scf.yield %alloc_42 : memref<11x16xi32>
    } else {
      %266 = arith.subi %c1633095684_i32, %c1633095684_i32 : i32
      %267 = arith.remf %cst_2, %cst_1 : f32
      memref.store %cst_23, %103[%c4, %c6] : memref<16x16xf16>
      %expanded = tensor.expand_shape %14 [[0], [1, 2]] : tensor<16x16xi32> into tensor<16x16x1xi32>
      %268 = math.log2 %cst_1 : f32
      %269 = index.sub %163, %c5
      %270 = math.atan %2 : tensor<16x16xf32>
      %271 = arith.negf %cst_3 : f16
      %alloc_40 = memref.alloc() : memref<11x16xi32>
      scf.yield %alloc_40 : memref<11x16xi32>
    }
    scf.execute_region {
      %266 = affine.max affine_map<(d0, d1, d2) -> (d2 * 2048 + 1, -(d0 + d1), d2)>(%c4, %c13, %c7)
      %267 = math.tanh %6 : tensor<2x16xf32>
      %268 = math.absi %8 : tensor<11x2x16xi16>
      %269 = arith.xori %true, %extracted : i1
      %270 = affine.max affine_map<(d0, d1) -> (d0 * -2, (d0 * 2) floordiv 16, d0 ceildiv 64, d1)>(%c5, %c14)
      %271 = index.divs %c13, %rank
      memref.assume_alignment %126, 16 : memref<16x16xf32>
      %272 = vector.broadcast %c-4457_i16 : i16 to vector<2x2xi16>
      %273 = vector.outerproduct %19, %19, %272 {kind = #vector.kind<or>} : vector<2xi16>, vector<2xi16>
      %alloca_40 = memref.alloca() : memref<16x16xi1>
      affine.for %arg1 = 0 to 127 {
      }
      %274 = math.expm1 %2 : tensor<16x16xf32>
      %alloca_41 = memref.alloca() : memref<11x16xi16>
      %275 = math.rsqrt %3 : tensor<2x16xf32>
      %276 = math.roundeven %cst_1 : f32
      %277 = math.round %2 : tensor<16x16xf32>
      %278 = math.round %10 : tensor<11x16xf16>
      scf.yield
    }
    %174 = vector.insertelement %c839684178_i64, %123[%169 : index] : vector<4xi64>
    %175 = arith.cmpi sle, %extracted, %false_0 : i1
    %176 = index.divu %134, %c14
    scf.if %false {
      %266 = math.expm1 %10 : tensor<11x16xf16>
      %267 = scf.if %extracted -> (f32) {
        %inserted_42 = tensor.insert %cst_2 into %6[%c0, %c8] : tensor<2x16xf32>
        %271 = arith.cmpi slt, %true_25, %true_25 : i1
        %272 = math.exp2 %2 : tensor<16x16xf32>
        %273 = math.ipowi %16, %8 : tensor<11x2x16xi16>
        %inserted_43 = tensor.insert %cst_1 into %6[%c0, %c7] : tensor<2x16xf32>
        %274 = vector.broadcast %c4 : index to vector<11xindex>
        %275 = vector.broadcast %extracted : i1 to vector<11xi1>
        %276 = vector.broadcast %c839684178_i64 : i64 to vector<11xi64>
        vector.scatter %alloc_7[%c0, %c11] [%274], %275, %276 : memref<2x16xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
        %277 = arith.maxsi %c-4457_i16, %c-4457_i16 : i16
        %278 = arith.cmpi ule, %false_0, %extracted_26 : i1
        scf.yield %cst_1 : f32
      } else {
        %271 = math.ceil %cst : f16
        %272 = index.floordivs %c14, %147
        %splat_42 = tensor.splat %cst : tensor<2x16xf16>
        %273 = arith.maxf %cst_1, %cst_1 : f32
        %274 = vector.broadcast %c866211835_i32 : i32 to vector<4xi32>
        %275 = vector.maskedload %83[%c14, %c14], %124, %274 : memref<16x16xi32>, vector<4xi1>, vector<4xi32> into vector<4xi32>
        %276 = math.floor %11 : tensor<11x16xf16>
        %277 = tensor.empty(%c10) : tensor<11x?x16xi32>
        %278 = math.atan2 %from_elements_31, %from_elements_31 : tensor<2x16xf32>
        scf.yield %cst_2 : f32
      }
      memref.store %cst, %alloc_8[%c9, %c13] : memref<11x16xf16>
      %268 = arith.minsi %c-4457_i16, %c7192_i16 : i16
      %collapsed_40 = tensor.collapse_shape %from_elements_31 [[0, 1]] : tensor<2x16xf32> into tensor<32xf32>
      %269 = math.absi %8 : tensor<11x2x16xi16>
      %false_41 = index.bool.constant false
      %270 = arith.remf %cst_23, %cst : f16
    } else {
      %266 = vector.matrix_multiply %123, %123 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
      %267 = math.tanh %1 : tensor<11x2x16xf16>
      %268 = math.exp2 %cst : f16
      %269 = arith.remsi %75, %false : i1
      %270 = vector.extract %62[7] : vector<16x16xi64>
      %271 = vector.transpose %142, [1, 0, 2] : vector<11x2x16xf16> to vector<2x11x16xf16>
      %272 = math.ctlz %12 : tensor<16x16xi1>
      %273 = index.ceildivs %147, %148
    }
    %extracted_33 = tensor.extract %7[%c0, %c8] : tensor<2x16xi16>
    vector.print %98 : vector<11x16xf32>
    %177 = math.round %2 : tensor<16x16xf32>
    %178 = vector.extract_strided_slice %142 {offsets = [3], sizes = [8], strides = [1]} : vector<11x2x16xf16> to vector<8x2x16xf16>
    %rank_34 = tensor.rank %13 : tensor<11x16xi16>
    %179 = arith.negf %cst_2 : f32
    %180 = math.log2 %cst : f16
    %181 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %31, %25, %30 : vector<2x16xf32>, vector<16x16xf32> into vector<2x16xf32>
    %182 = arith.maxsi %extracted_26, %extracted_26 : i1
    %183 = arith.addi %c7192_i16, %c31622_i16 : i16
    %184 = vector.create_mask %c10, %c15 : vector<2x16xi1>
    %185 = arith.remsi %extracted, %75 : i1
    %186 = arith.mulf %cst_3, %cst_3 : f16
    %alloc_35 = memref.alloc() : memref<2xf16>
    %187 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_35 : memref<2xf16>) outs(%1 : tensor<11x2x16xf16>) {
    ^bb0(%in: f16, %out: f16):
      %266 = math.floor %15 : tensor<11x16xf32>
      %267 = vector.multi_reduction <minsi>, %141, %extracted_33 [0] : vector<16xi16> to i16
      %268 = math.tan %from_elements_31 : tensor<2x16xf32>
      memref.alloca_scope  {
        %294 = math.fma %cst, %cst, %out : f16
        %295 = math.atan %in : f16
        %296 = math.log2 %15 : tensor<11x16xf32>
        %297 = vector.broadcast %c7192_i16 : i16 to vector<11xi16>
        %298 = vector.broadcast %extracted : i1 to vector<11xi1>
        %299 = vector.maskedload %alloc_11[%c12, %c3], %298, %297 : memref<16x16xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
        %300 = arith.subi %true_25, %false_0 : i1
        %301 = vector.transpose %72, [0, 1] : vector<16x16xi32> to vector<16x16xi32>
        %302 = arith.floordivsi %true, %true : i1
        %303 = arith.cmpi ult, %c866211835_i32, %c866211835_i32 : i32
        %304 = index.castu %53 : index to i32
        %dest_42, %accumulated_value_43 = vector.scan <maxf>, %33, %55 {inclusive = false, reduction_dim = 0 : i64} : vector<1x16xf32>, vector<16xf32>
        %305 = index.floordivs %c6, %53
        %306 = index.divu %rank, %64
        %307 = bufferization.clone %alloc_18 : memref<2x16xi16> to memref<2x16xi16>
        %308 = arith.remf %cst_1, %cst_2 : f32
        %309 = math.absf %from_elements_31 : tensor<2x16xf32>
        %310 = math.ctpop %true_25 : i1
        %311 = memref.realloc %alloc_20 : memref<16xi64> to memref<2xi64>
        %312 = bufferization.to_memref %4 : memref<16x16xi64>
        %313 = index.floordivs %c13, %c11
        %314 = arith.maxsi %false, %false_0 : i1
        %alloc_44 = memref.alloc() : memref<11x16xi1>
        memref.tensor_store %5, %alloc_44 : memref<11x16xi1>
        %315 = math.tanh %15 : tensor<11x16xf32>
        %316 = vector.reduction <maxui>, %297 : vector<11xi16> into i16
        %317 = vector.matrix_multiply %125, %125 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi64>, vector<4xi64>) -> vector<1xi64>
        %318 = vector.load %alloc_16[%c0, %c11] : memref<2x16xi16>, vector<16x16xi16>
        %319 = math.powf %10, %122 : tensor<11x16xf16>
        %320 = index.sub %c2, %169
        memref.store %c-26475_i16, %307[%c1, %c9] : memref<2x16xi16>
        %321 = vector.broadcast %cst_2 : f32 to vector<11x16xf32>
        %322 = vector.fma %321, %99, %99 : vector<11x16xf32>
        %323 = math.tan %cst_1 : f32
        %324 = arith.cmpf ueq, %in, %cst_23 : f16
        %325 = arith.divui %extracted_33, %c7192_i16 : i16
      }
      %inserted_40 = tensor.insert %true_25 into %5[%c2, %c4] : tensor<11x16xi1>
      %269 = math.expm1 %10 : tensor<11x16xf16>
      %270 = bufferization.clone %alloc_20 : memref<16xi64> to memref<16xi64>
      %false_41 = arith.constant false
      %271 = math.floor %15 : tensor<11x16xf32>
      %272 = arith.andi %c7192_i16, %c-4457_i16 : i16
      %273 = math.round %15 : tensor<11x16xf32>
      scf.index_switch %c4 
      case 1 {
        %294 = arith.andi %true, %extracted : i1
        %295 = math.atan %15 : tensor<11x16xf32>
        %296 = math.atan2 %cst, %cst_23 : f16
        %297 = index.add %c1, %c10
        %298 = index.mul %c5, %c5
        %rank_42 = tensor.rank %14 : tensor<16x16xi32>
        %299 = bufferization.clone %alloc_16 : memref<2x16xi16> to memref<2x16xi16>
        %300 = math.absi %c839684178_i64 : i64
        memref.assume_alignment %126, 16 : memref<16x16xf32>
        %301 = arith.andi %267, %c-4457_i16 : i16
        %302 = math.tanh %11 : tensor<11x16xf16>
        %303 = index.floordivs %162, %105
        %304 = vector.transpose %19, [0] : vector<2xi16> to vector<2xi16>
        %305 = math.rsqrt %122 : tensor<11x16xf16>
        %306 = math.log1p %out : f16
        %307 = math.absi %from_elements : tensor<11x16xi64>
        scf.yield
      }
      case 2 {
        %294 = arith.remf %cst, %cst_3 : f16
        %295 = math.powf %0, %0 : tensor<11x2x16xf16>
        %296 = arith.maxsi %c839684178_i64, %c839684178_i64 : i64
        %297 = arith.shrui %c7192_i16, %c-24118_i16 : i16
        %298 = tensor.empty(%112, %148) : tensor<?x2x?xi16>
        %299 = math.tanh %11 : tensor<11x16xf16>
        %c538691507_i64 = arith.constant 538691507 : i64
        %300 = arith.maxui %c-4457_i16, %c-4457_i16 : i16
        %301 = vector.bitcast %90 : vector<11x16xi1> to vector<11x16xi1>
        %302 = vector.bitcast %124 : vector<4xi1> to vector<4xi1>
        %303 = math.ctlz %7 : tensor<2x16xi16>
        %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<16x16xf32> into tensor<16x16x1xf32>
        %304 = math.ceil %10 : tensor<11x16xf16>
        %305 = vector.create_mask %163, %c2, %152 : vector<11x2x16xi1>
        %306 = math.powf %10, %10 : tensor<11x16xf16>
        %307 = arith.remf %out, %out : f16
        scf.yield
      }
      case 3 {
        %294 = math.ctpop %9 : tensor<16x16xi64>
        %alloca_42 = memref.alloca() : memref<16x16xf32>
        %alloca_43 = memref.alloca() : memref<2x16xi64>
        %295 = bufferization.to_memref %21 : memref<i64>
        %cast_44 = tensor.cast %27 : tensor<16x16xi64> to tensor<?x?xi64>
        %296 = tensor.empty() : tensor<16x16xf32>
        %297 = linalg.matmul ins(%2, %2 : tensor<16x16xf32>, tensor<16x16xf32>) outs(%296 : tensor<16x16xf32>) -> tensor<16x16xf32>
        %298 = index.maxs %c0, %c11
        memref.assume_alignment %103, 8 : memref<16x16xf16>
        %299 = math.atan2 %2, %296 : tensor<16x16xf32>
        %false_45 = arith.constant false
        %300 = math.log %2 : tensor<16x16xf32>
        %301 = arith.divsi %c-26475_i16, %c-24118_i16 : i16
        %302 = vector.transpose %123, [0] : vector<4xi64> to vector<4xi64>
        %303 = arith.divsi %extracted_26, %extracted_26 : i1
        %cst_46 = arith.constant 1.000000e+00 : f16
        %cst_47 = arith.constant 0.000000e+00 : f16
        %304 = vector.transfer_read %11[%c7, %c5], %cst_47 : tensor<11x16xf16>, vector<f16>
        bufferization.dealloc_tensor %9 : tensor<16x16xi64>
        scf.yield
      }
      case 4 {
        %294 = arith.subi %c7192_i16, %c7192_i16 : i16
        %295 = math.ctlz %4 : tensor<16x16xi64>
        %296 = vector.bitcast %26 : vector<16x16xf32> to vector<16x16xf32>
        %297 = math.log10 %15 : tensor<11x16xf32>
        %298 = arith.divui %c-26475_i16, %c31622_i16 : i16
        %299 = vector.bitcast %184 : vector<2x16xi1> to vector<2x16xi1>
        %from_elements_42 = tensor.from_elements %in, %in, %cst_23, %out, %cst_23, %cst_23, %cst, %in, %cst, %cst_23, %in, %cst_3, %cst_23, %cst_23, %in, %in, %cst_23, %cst, %cst_23, %out, %cst, %cst_3, %cst_23, %cst, %cst, %out, %cst_3, %out, %cst, %in, %out, %cst_3, %cst, %out, %cst, %cst_3, %cst_23, %out, %in, %in, %cst_3, %cst, %cst, %cst, %cst_23, %out, %cst, %in, %cst_23, %cst_3, %cst, %in, %in, %cst, %in, %in, %cst_3, %cst, %in, %in, %out, %cst_23, %out, %cst, %cst, %out, %cst, %cst, %in, %cst_23, %in, %cst_23, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %out, %cst, %in, %in, %cst, %cst, %in, %out, %cst_23, %in, %cst_23, %in, %in, %in, %cst, %out, %cst_23, %cst, %cst_3, %in, %out, %out, %cst, %cst, %cst, %cst, %cst_3, %cst_23, %cst_3, %cst_23, %in, %in, %cst_3, %cst, %in, %cst_23, %cst, %in, %cst, %out, %cst_23, %cst, %out, %cst, %cst_23, %cst, %cst, %in, %cst_3, %cst_3, %cst_23, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %out, %cst, %out, %cst_23, %cst_23, %cst_23, %in, %cst_3, %out, %cst, %cst_23, %cst, %cst_3, %in, %in, %cst_23, %cst_23, %cst, %cst, %cst_3, %out, %in, %cst_23, %cst_23, %cst_23, %in, %out, %cst_23, %cst_3, %cst_3, %cst_23, %in, %in, %in, %cst, %cst_3, %in, %in, %cst_3, %cst, %cst_23, %cst_23, %cst_3, %out, %in, %out, %cst, %cst, %cst_23, %cst_23, %cst, %cst_23, %cst_3, %out, %in, %cst_3, %in, %cst_23, %out, %out, %cst_23, %out, %cst_23, %out, %cst_23, %cst, %out, %in, %cst_3, %cst, %cst_23, %cst_3, %out, %out, %out, %out, %in, %out, %cst_3, %out, %in, %in, %cst, %cst, %cst_23, %cst_23, %out, %in, %out, %cst, %cst, %cst_23, %cst_3, %cst_3, %cst_23, %cst_3, %cst, %in, %in, %cst, %cst_3, %cst, %cst, %in, %cst_23, %in, %cst_3, %cst_23, %out, %cst, %cst_3, %cst, %out, %in, %cst_23, %cst_23, %out, %in, %cst, %cst_3 : tensor<16x16xf16>
        %300 = vector.load %alloc_11[%c4, %c7] : memref<16x16xi16>, vector<2x16xi16>
        %301 = index.floordivs %64, %rank
        %302 = index.divu %c15, %rank_34
        %303 = arith.divsi %false_0, %false_0 : i1
        %304 = arith.subi %c-24118_i16, %c7192_i16 : i16
        %305 = index.divs %c14, %134
        %306 = vector.create_mask %176, %301 : vector<11x16xi1>
        %307 = index.sizeof
        %308 = arith.remf %in, %cst_3 : f16
        scf.yield
      }
      default {
        %alloca_42 = memref.alloca() : memref<11x2x16xi64>
        %294 = vector.create_mask %c11, %c5, %c4 : vector<11x2x16xi1>
        %295 = index.ceildivs %c12, %c9
        %296 = math.rsqrt %122 : tensor<11x16xf16>
        %splat_43 = tensor.splat %c7192_i16 : tensor<11x16xi16>
        %expanded = tensor.expand_shape %1 [[0], [1], [2, 3]] : tensor<11x2x16xf16> into tensor<11x2x16x1xf16>
        %alloc_44 = memref.alloc() : memref<16x16xf32>
        %297 = memref.atomic_rmw mulf %cst_1, %alloc_9[%c1, %c15] : (f32, memref<2x16xf32>) -> f32
        %alloc_45 = memref.alloc() : memref<11x16xi32>
        memref.copy %173, %alloc_45 : memref<11x16xi32> to memref<11x16xi32>
        %298 = arith.cmpi eq, %75, %extracted : i1
        %299 = math.absf %10 : tensor<11x16xf16>
        %300 = math.atan2 %122, %10 : tensor<11x16xf16>
        %301 = index.ceildivu %c3, %c12
        %302 = math.rsqrt %2 : tensor<16x16xf32>
        %303 = arith.maxf %cst_3, %out : f16
        %304 = math.powf %6, %3 : tensor<2x16xf32>
      }
      %274 = math.tanh %3 : tensor<2x16xf32>
      %275 = math.fma %1, %0, %1 : tensor<11x2x16xf16>
      %c0_i64 = arith.constant 0 : i64
      %276 = vector.transfer_read %42[%64, %c13], %c0_i64 : memref<11x16xi64>, vector<i64>
      %277 = math.log2 %11 : tensor<11x16xf16>
      %278 = arith.remf %out, %cst : f16
      %279 = memref.load %130[%c12, %c7] : memref<16x16xf32>
      %280 = math.round %from_elements_31 : tensor<2x16xf32>
      %281 = math.absi %14 : tensor<16x16xi32>
      %282 = math.ctpop %13 : tensor<11x16xi16>
      %283 = scf.if %extracted -> (i32) {
        %294 = math.log2 %2 : tensor<16x16xf32>
        memref.tensor_store %2, %126 : memref<16x16xf32>
        %295 = arith.maxui %c-4457_i16, %c31622_i16 : i16
        %296 = math.round %11 : tensor<11x16xf16>
        %297 = vector.broadcast %c6 : index to vector<2xindex>
        %298 = vector.broadcast %extracted_26 : i1 to vector<2xi1>
        vector.scatter %138[%c4, %c2] [%297], %298, %19 : memref<16x16xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        %299 = tensor.empty() : tensor<16x16xi64>
        %300 = arith.addi %267, %c-26475_i16 : i16
        %301 = index.ceildivs %147, %c8
        scf.yield %c866211835_i32 : i32
      } else {
        %294 = arith.divsi %c1633095684_i32, %c1633095684_i32 : i32
        %from_elements_42 = tensor.from_elements %c1592072178_i64, %c0_i64, %c0_i64, %c0_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c0_i64, %c839684178_i64, %c839684178_i64, %c0_i64, %c1592072178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c839684178_i64, %c0_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c0_i64, %c839684178_i64, %c1592072178_i64, %c1592072178_i64, %c0_i64, %c0_i64, %c839684178_i64, %c1592072178_i64 : tensor<2x16xi64>
        %295 = arith.remf %cst_1, %cst_2 : f32
        %296 = index.sub %c4, %c2
        %297 = index.casts %extracted_26 : i1 to index
        %298 = math.atan2 %15, %15 : tensor<11x16xf32>
        %299 = vector.broadcast %118 : index to vector<11xindex>
        %300 = vector.broadcast %false_0 : i1 to vector<11xi1>
        %301 = vector.broadcast %c839684178_i64 : i64 to vector<11xi64>
        vector.scatter %42[%c0, %c7] [%299], %300, %301 : memref<11x16xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
        memref.copy %alloc_20, %270 : memref<16xi64> to memref<16xi64>
        scf.yield %c866211835_i32 : i32
      }
      %284 = math.ctpop %267 : i16
      %285 = math.floor %in : f16
      %286 = arith.divsi %c31622_i16, %c31622_i16 : i16
      %287 = affine.apply affine_map<(d0, d1, d2) -> (d1 + 1)>(%59, %176, %c11)
      %288 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %72, %72, %72 : vector<16x16xi32>, vector<16x16xi32> into vector<16x16xi32>
      %289 = bufferization.clone %126 : memref<16x16xf32> to memref<16x16xf32>
      %290 = arith.divsi %extracted_33, %c-26475_i16 : i16
      %291 = arith.minui %c-24118_i16, %extracted_33 : i16
      %292 = arith.maxsi %extracted_26, %75 : i1
      %293 = math.ipowi %c1592072178_i64, %c0_i64 : i64
      linalg.yield %out : f16
    } -> tensor<11x2x16xf16>
    %c30252_i16 = arith.constant 30252 : i16
    %188 = memref.alloca_scope  -> (i64) {
      %266 = math.exp2 %1 : tensor<11x2x16xf16>
      %267 = index.divs %59, %112
      %268 = math.ctpop %false_0 : i1
      %269 = arith.floordivsi %c31622_i16, %c31622_i16 : i16
      %270 = math.tanh %122 : tensor<11x16xf16>
      %alloca_40 = memref.alloca() : memref<11x2x16xf16>
      %alloc_41 = memref.alloc() : memref<11x16xf32>
      memref.tensor_store %15, %alloc_41 : memref<11x16xf32>
      %271 = math.atan2 %6, %from_elements_31 : tensor<2x16xf32>
      %272 = math.log2 %0 : tensor<11x2x16xf16>
      %false_42 = arith.constant false
      %273 = arith.floordivsi %c1592072178_i64, %c839684178_i64 : i64
      %274 = math.exp2 %11 : tensor<11x16xf16>
      %275 = arith.maxsi %true, %true_25 : i1
      %276 = math.rsqrt %10 : tensor<11x16xf16>
      %277 = math.atan2 %10, %10 : tensor<11x16xf16>
      %278 = vector.broadcast %c8 : index to vector<2xindex>
      %279 = vector.broadcast %75 : i1 to vector<2xi1>
      %280 = vector.broadcast %cst_1 : f32 to vector<2xf32>
      vector.scatter %alloc_9[%c0, %c13] [%278], %279, %280 : memref<2x16xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
      %281 = math.ctlz %14 : tensor<16x16xi32>
      %c1_i64 = arith.constant 1 : i64
      %282 = vector.transfer_read %alloc_15[%c12, %c10], %c1_i64 : memref<11x16xi64>, vector<4xi64>
      %283 = vector.create_mask %c13, %c12 : vector<16x16xi1>
      %collapsed_43 = tensor.collapse_shape %13 [[0, 1]] : tensor<11x16xi16> into tensor<176xi16>
      %284 = math.exp2 %1 : tensor<11x2x16xf16>
      %285 = math.ceil %10 : tensor<11x16xf16>
      %286 = vector.broadcast %cst_2 : f32 to vector<2xf32>
      %287 = vector.broadcast %75 : i1 to vector<2xi1>
      %288 = vector.maskedload %alloc_14[%c0, %c1, %c0], %287, %286 : memref<11x2x16xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      %289 = vector.transpose %154, [] : vector<f16> to vector<f16>
      %290 = math.tanh %1 : tensor<11x2x16xf16>
      %inserted_44 = tensor.insert %c7192_i16 into %8[%c1, %c0, %c0] : tensor<11x2x16xi16>
      %291 = math.ceil %3 : tensor<2x16xf32>
      %292 = scf.while (%arg1 = %168) : (vector<8xi16>) -> vector<8xi16> {
        %296 = arith.remui %c-26475_i16, %c31622_i16 : i16
        %297 = vector.insertelement %c-4457_i16, %141[%c9 : index] : vector<16xi16>
        %298 = arith.remf %cst_23, %cst_23 : f16
        %alloc_46 = memref.alloc() : memref<2x16xf16>
        %299 = math.cttz %extracted_33 : i16
        %300 = arith.subi %extracted, %extracted_26 : i1
        %301 = math.absi %71 : tensor<2x16xi64>
        %302 = arith.addf %cst_3, %cst : f16
        scf.condition(%true) %168 : vector<8xi16>
      } do {
      ^bb0(%arg1: vector<8xi16>):
        %296 = math.expm1 %2 : tensor<16x16xf32>
        %297 = arith.minf %cst_2, %cst_2 : f32
        %298 = math.ctlz %false_0 : i1
        %299 = index.maxu %53, %134
        %300 = math.ceil %61 : tensor<2x16xf32>
        %301 = math.log2 %cst_23 : f16
        %302 = arith.remf %cst_1, %cst_1 : f32
        %303 = math.cos %3 : tensor<2x16xf32>
        %304 = arith.divf %cst, %cst : f16
        %305 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %287, %287, %false : vector<2xi1>, vector<2xi1> into i1
        %306 = math.round %2 : tensor<16x16xf32>
        %307 = vector.broadcast %cst_3 : f16 to vector<8x2xf16>
        %dest_46, %accumulated_value_47 = vector.scan <minf>, %178, %307 {inclusive = true, reduction_dim = 2 : i64} : vector<8x2x16xf16>, vector<8x2xf16>
        %from_elements_48 = tensor.from_elements %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c1633095684_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c1633095684_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32, %c866211835_i32 : tensor<11x2x16xi32>
        %308 = arith.maxui %false_0, %true_25 : i1
        %309 = index.ceildivu %c12, %c9
        %310 = math.absi %c866211835_i32 : i32
        scf.yield %168 : vector<8xi16>
      }
      %extracted_45 = tensor.extract %13[%c3, %c1] : tensor<11x16xi16>
      %293 = math.atan2 %cst_3, %cst : f16
      %294 = index.ceildivu %176, %162
      %295 = vector.broadcast %152 : index to vector<16xindex>
      vector.scatter %alloc_9[%c0, %c9] [%295], %140, %55 : memref<2x16xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
      memref.alloca_scope.return %c1592072178_i64 : i64
    }
    %189 = vector.transpose %139, [0] : vector<16xi16> to vector<16xi16>
    %190 = math.atan %cst_3 : f16
    %191 = arith.negf %cst_3 : f16
    %192 = index.ceildivs %134, %37
    %193 = math.ceil %1 : tensor<11x2x16xf16>
    %194 = tensor.empty() : tensor<2x16xf32>
    %mapped_36 = linalg.map ins(%6, %6 : tensor<2x16xf32>, tensor<2x16xf32>) outs(%194 : tensor<2x16xf32>)
      (%in: f32, %in_40: f32) {
        %266 = math.floor %6 : tensor<2x16xf32>
        %267 = math.copysign %61, %6 : tensor<2x16xf32>
        %268 = vector.insertelement %c1592072178_i64, %125[%c5 : index] : vector<4xi64>
        %269 = arith.negf %cst_1 : f32
        %270 = vector.create_mask %c8, %c3 : vector<2x16xi1>
        %271 = vector.broadcast %cst_3 : f16 to vector<4xf16>
        %272 = vector.maskedload %alloc_8[%c2, %c2], %124, %271 : memref<11x16xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %273 = affine.if affine_set<(d0, d1) : (d1 + d0 - 32 == 0, -d0 >= 0, ((-d0) floordiv 128) floordiv 64 == 0, d1 - d0 >= 0)>(%c10, %c14) -> memref<11x2x16xi1> {
          %295 = math.expm1 %in_40 : f32
          %296 = math.exp2 %cst : f16
          %297 = arith.floordivsi %c7192_i16, %c7192_i16 : i16
          %298 = arith.shli %75, %extracted : i1
          %299 = math.absi %9 : tensor<16x16xi64>
          %false_45 = index.bool.constant false
          %300 = bufferization.clone %alloc_5 : memref<16x16xi32> to memref<16x16xi32>
          %301 = bufferization.clone %42 : memref<11x16xi64> to memref<11x16xi64>
          %alloc_46 = memref.alloc() : memref<11x2x16xi1>
          affine.yield %alloc_46 : memref<11x2x16xi1>
        } else {
          %295 = arith.maxsi %false_0, %false : i1
          %296 = vector.multi_reduction <minsi>, %123, %188 [0] : vector<4xi64> to i64
          %297 = arith.maxsi %true, %false_0 : i1
          %298 = math.powf %cst_2, %cst_1 : f32
          %cast_45 = tensor.cast %0 : tensor<11x2x16xf16> to tensor<?x?x?xf16>
          %alloc_46 = memref.alloc() : memref<16x16xi1>
          %299 = index.floordivs %118, %c4
          %300 = math.round %10 : tensor<11x16xf16>
          %alloc_47 = memref.alloc() : memref<11x2x16xi1>
          affine.yield %alloc_47 : memref<11x2x16xi1>
        }
        %274 = arith.negf %cst_3 : f16
        %alloc_41 = memref.alloc() : memref<11x16xi32>
        %cast_42 = tensor.cast %3 : tensor<2x16xf32> to tensor<?x?xf32>
        %275 = vector.create_mask %c14, %105 : vector<16x16xi1>
        %276 = index.sizeof
        %rank_43 = tensor.rank %11 : tensor<11x16xf16>
        %277 = math.exp2 %10 : tensor<11x16xf16>
        %278 = vector.matrix_multiply %60, %60 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        bufferization.dealloc_tensor %cast_42 : tensor<?x?xf32>
        %279 = math.absi %4 : tensor<16x16xi64>
        %280 = math.absi %true : i1
        %281 = vector.broadcast %c1633095684_i32 : i32 to vector<2xi32>
        %282 = vector.broadcast %true : i1 to vector<2xi1>
        %283 = vector.maskedload %alloc[%c6, %c0, %c13], %282, %281 : memref<11x2x16xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %expanded = tensor.expand_shape %7 [[0], [1, 2]] : tensor<2x16xi16> into tensor<2x16x1xi16>
        %284 = vector.transpose %55, [0] : vector<16xf32> to vector<16xf32>
        %285 = index.sizeof
        %286 = math.expm1 %10 : tensor<11x16xf16>
        %287 = math.exp2 %15 : tensor<11x16xf32>
        %288 = arith.divsi %extracted_33, %c-26475_i16 : i16
        %289 = vector.extract_strided_slice %141 {offsets = [14], sizes = [2], strides = [1]} : vector<16xi16> to vector<2xi16>
        affine.store %cst_2, %alloc_9[%c14, %c10] : memref<2x16xf32>
        %290 = index.add %118, %c4
        %291 = arith.remsi %75, %true_25 : i1
        %292 = scf.index_switch %c14 -> vector<11x2x16xf16> 
        case 1 {
          %295 = arith.cmpf oge, %cst_1, %cst_1 : f32
          %296 = math.round %0 : tensor<11x2x16xf16>
          %297 = math.tanh %11 : tensor<11x16xf16>
          %298 = index.divu %59, %53
          %299 = arith.remf %in, %cst_1 : f32
          %300 = math.cttz %true_25 : i1
          %301 = bufferization.clone %alloc_14 : memref<11x2x16xf32> to memref<11x2x16xf32>
          %302 = vector.extract_strided_slice %55 {offsets = [11], sizes = [5], strides = [1]} : vector<16xf32> to vector<5xf32>
          %303 = arith.maxf %cst_23, %cst : f16
          %304 = index.sub %112, %c3
          %305 = arith.maxf %cst_2, %in_40 : f32
          %306 = arith.cmpi eq, %c866211835_i32, %c1633095684_i32 : i32
          %307 = arith.subi %c1633095684_i32, %c1633095684_i32 : i32
          %308 = math.absi %17 : tensor<11x2x16xi16>
          %309 = vector.broadcast %cst_3 : f16 to vector<2xf16>
          %310 = vector.transfer_write %309, %10[%105, %134] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xf16>, tensor<11x16xf16>
          %311 = math.cos %cst_2 : f32
          scf.yield %142 : vector<11x2x16xf16>
        }
        case 2 {
          %295 = arith.maxui %c7192_i16, %extracted_33 : i16
          %inserted_45 = tensor.insert %cst into %0[%c7, %c1, %c9] : tensor<11x2x16xf16>
          %296 = vector.load %alloc[%c2, %c1, %c14] : memref<11x2x16xi32>, vector<11x16xi32>
          %297 = math.tan %cst_1 : f32
          %splat_46 = tensor.splat %cst : tensor<11x2x16xf16>
          %298 = tensor.empty() : tensor<11x16xi16>
          %299 = math.absf %collapsed : tensor<32xf32>
          %300 = arith.cmpf ule, %cst_2, %in : f32
          %301 = arith.addf %in, %in : f32
          %302 = vector.extract_strided_slice %62 {offsets = [11], sizes = [3], strides = [1]} : vector<16x16xi64> to vector<3x16xi64>
          %303 = index.castu %c2 : index to i32
          %304 = memref.load %130[%c3, %c13] : memref<16x16xf32>
          %305 = math.rsqrt %61 : tensor<2x16xf32>
          %expanded_47 = tensor.expand_shape %298 [[0], [1, 2]] : tensor<11x16xi16> into tensor<11x16x1xi16>
          %306 = math.log2 %splat_46 : tensor<11x2x16xf16>
          %307 = arith.negf %cst : f16
          scf.yield %142 : vector<11x2x16xf16>
        }
        case 3 {
          %295 = math.log %cst_23 : f16
          %inserted_45 = tensor.insert %in_40 into %3[%c0, %c14] : tensor<2x16xf32>
          %296 = arith.remf %cst_3, %cst_23 : f16
          %297 = vector.broadcast %cst_1 : f32 to vector<2x16xf32>
          %298 = vector.fma %297, %52, %31 : vector<2x16xf32>
          %299 = arith.mulf %in, %in : f32
          %300 = affine.max affine_map<(d0, d1, d2) -> (d0, 0, 0, 0)>(%64, %147, %c5)
          %301 = arith.shrui %extracted_33, %c31622_i16 : i16
          %302 = index.floordivs %c7, %c11
          %303 = arith.cmpi slt, %extracted_33, %c7192_i16 : i16
          %304 = index.ceildivu %302, %c12
          %305 = vector.shuffle %26, %33 [0, 2, 5, 10, 12, 15, 16] : vector<16x16xf32>, vector<1x16xf32>
          %306 = math.absi %c-4457_i16 : i16
          %expanded_46 = tensor.expand_shape %1 [[0], [1], [2, 3]] : tensor<11x2x16xf16> into tensor<11x2x16x1xf16>
          %307 = index.ceildivs %c0, %105
          %308 = index.floordivs %c1, %276
          %309 = index.mul %59, %rank_43
          scf.yield %142 : vector<11x2x16xf16>
        }
        default {
          %295 = vector.broadcast %in : f32 to vector<2xf32>
          %dest_45, %accumulated_value_46 = vector.scan <add>, %52, %295 {inclusive = true, reduction_dim = 1 : i64} : vector<2x16xf32>, vector<2xf32>
          %296 = index.sub %c6, %c15
          %297 = index.divu %c0, %176
          %298 = arith.maxf %in_40, %in : f32
          %extracted_47 = tensor.extract %8[%c3, %c1, %c5] : tensor<11x2x16xi16>
          %299 = math.ipowi %from_elements, %from_elements : tensor<11x16xi64>
          memref.copy %alloc_15, %42 : memref<11x16xi64> to memref<11x16xi64>
          %300 = vector.insertelement %c-4457_i16, %19[%162 : index] : vector<2xi16>
          %301 = arith.remf %cst_3, %cst : f16
          %302 = math.tanh %in : f32
          %collapsed_48 = tensor.collapse_shape %11 [[0, 1]] : tensor<11x16xf16> into tensor<176xf16>
          %303 = index.castu %rank_43 : index to i32
          %cast_49 = tensor.cast %2 : tensor<16x16xf32> to tensor<?x?xf32>
          %304 = math.tanh %10 : tensor<11x16xf16>
          %305 = math.atan %2 : tensor<16x16xf32>
          %306 = arith.remsi %extracted, %75 : i1
          scf.yield %142 : vector<11x2x16xf16>
        }
        %293 = vector.load %156[%c12, %c11] : memref<16x16xi32>, vector<2x16xi32>
        %294 = math.log %1 : tensor<11x2x16xf16>
        %cst_44 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_44 : f32
      }
    %195 = vector.extract_strided_slice %33 {offsets = [0], sizes = [1], strides = [1]} : vector<1x16xf32> to vector<1x16xf32>
    %196 = scf.if %true_25 -> (i1) {
      %266 = index.sub %162, %37
      %267 = index.maxs %266, %169
      %268 = arith.maxf %cst, %cst_3 : f16
      %269 = arith.floordivsi %c866211835_i32, %c1633095684_i32 : i32
      %270 = math.rsqrt %0 : tensor<11x2x16xf16>
      %collapsed_40 = tensor.collapse_shape %5 [[0, 1]] : tensor<11x16xi1> into tensor<176xi1>
      %271 = arith.divf %cst_23, %cst_23 : f16
      %272 = arith.cmpf ole, %cst_23, %cst_23 : f16
      scf.yield %75 : i1
    } else {
      %266 = math.floor %cst_23 : f16
      %267 = math.tanh %15 : tensor<11x16xf32>
      %268 = math.ctlz %c1633095684_i32 : i32
      %269 = index.sub %c6, %c9
      %270 = index.add %c6, %c3
      vector.print %140 : vector<16xi1>
      %271 = math.absi %true_25 : i1
      %272 = arith.andi %c1633095684_i32, %c866211835_i32 : i32
      scf.yield %true_25 : i1
    }
    %197 = math.round %cst : f16
    %198 = index.maxs %c10, %163
    %199 = vector.broadcast %c866211835_i32 : i32 to vector<16xi32>
    %200 = vector.multi_reduction <minsi>, %72, %199 [0] : vector<16x16xi32> to vector<16xi32>
    %201 = arith.remsi %c839684178_i64, %c839684178_i64 : i64
    %202 = math.ipowi %extracted_33, %extracted_33 : i16
    %203 = arith.andi %c839684178_i64, %c839684178_i64 : i64
    %204 = index.divs %c1, %118
    %generated_37 = tensor.generate %163, %169 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %266 = index.casts %c1592072178_i64 : i64 to index
      %267 = arith.cmpf ule, %cst_3, %cst_3 : f16
      %268 = arith.xori %c1633095684_i32, %c1633095684_i32 : i32
      scf.if %true {
        %269 = index.add %arg3, %c6
        %270 = bufferization.to_memref %14 : memref<16x16xi32>
        %271 = memref.load %alloc_5[%c2, %c5] : memref<16x16xi32>
        %272 = vector.broadcast %false_0 : i1 to vector<11x2xi1>
        %273 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %90, %184, %272 : vector<11x16xi1>, vector<2x16xi1> into vector<11x2xi1>
        %274 = math.round %2 : tensor<16x16xf32>
        %275 = vector.transpose %33, [0, 1] : vector<1x16xf32> to vector<1x16xf32>
        %276 = math.atan2 %3, %from_elements_31 : tensor<2x16xf32>
        %277 = index.sub %c13, %arg1
      }
      tensor.yield %c-24118_i16 : i16
    } : tensor<?x?x16xi16>
    %205 = math.tan %15 : tensor<11x16xf32>
    %206 = math.atan2 %15, %15 : tensor<11x16xf32>
    %207 = vector.broadcast %c-24118_i16 : i16 to vector<11x2x16xi16>
    %208 = vector.broadcast %true_25 : i1 to vector<11x2x16xi1>
    %209 = vector.broadcast %c1633095684_i32 : i32 to vector<11x2x16xi32>
    %210 = vector.gather %alloc_11[%c15, %152] [%209], %208, %207 : memref<16x16xi16>, vector<11x2x16xi32>, vector<11x2x16xi1>, vector<11x2x16xi16> into vector<11x2x16xi16>
    %211 = arith.maxf %cst_1, %cst_2 : f32
    %212 = vector.broadcast %c866211835_i32 : i32 to vector<i32>
    vector.transfer_write %212, %alloc_5[%64, %rank] : vector<i32>, memref<16x16xi32>
    %213 = tensor.empty() : tensor<2x11xi16>
    %214 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%213 : tensor<2x11xi16>) outs(%8 : tensor<11x2x16xi16>) {
    ^bb0(%in: i16, %out: i16):
      %collapsed_40 = tensor.collapse_shape %2 [[0, 1]] : tensor<16x16xf32> into tensor<256xf32>
      %266 = index.sub %c12, %112
      %267 = math.ipowi %c839684178_i64, %c839684178_i64 : i64
      %268 = math.log1p %0 : tensor<11x2x16xf16>
      %269 = math.cttz %reduced : tensor<16xi64>
      %270 = math.ipowi %16, %8 : tensor<11x2x16xi16>
      %extracted_41 = tensor.extract %4[%c3, %c12] : tensor<16x16xi64>
      scf.if %false_0 {
        %294 = arith.remsi %false, %75 : i1
        %295 = math.log10 %15 : tensor<11x16xf32>
        %alloc_46 = memref.alloc() : memref<11x16xi32>
        memref.copy %173, %alloc_46 : memref<11x16xi32> to memref<11x16xi32>
        %296 = math.tanh %collapsed_40 : tensor<256xf32>
        %297 = arith.remsi %75, %75 : i1
        %298 = math.tanh %cst_23 : f16
        %299 = arith.divsi %196, %true : i1
        %300 = arith.divui %false_0, %extracted : i1
      } else {
        %294 = vector.bitcast %90 : vector<11x16xi1> to vector<11x16xi1>
        %295 = arith.remsi %extracted_33, %c-4457_i16 : i16
        %296 = math.exp2 %3 : tensor<2x16xf32>
        %297 = arith.ori %extracted, %false : i1
        %298 = math.tanh %cst : f16
        %cst_46 = arith.constant 1.018400e+04 : f16
        %299 = arith.remf %cst_1, %cst_2 : f32
        %300 = index.castu %false_0 : i1 to index
      }
      %expanded = tensor.expand_shape %3 [[0], [1, 2]] : tensor<2x16xf32> into tensor<2x16x1xf32>
      %271 = tensor.empty() : tensor<16xf16>
      %alloc_42 = memref.alloc() : memref<11x16x2xf16>
      %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%271, %alloc_42, %271 : tensor<16xf16>, memref<11x16x2xf16>, tensor<16xf16>) outs(%1 : tensor<11x2x16xf16>) {
      ^bb0(%in_46: f16, %in_47: f16, %in_48: f16, %out_49: f16):
        %cast_50 = tensor.cast %12 : tensor<16x16xi1> to tensor<?x?xi1>
        %294 = arith.maxsi %c866211835_i32, %c1633095684_i32 : i32
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_51 = arith.constant 0 : i16
        %295 = vector.transfer_read %13[%c15, %53], %c0_i16_51 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<11x16xi16>, vector<4xi16>
        %296 = math.powf %cst_1, %cst_2 : f32
        %297 = arith.minsi %out, %out : i16
        %298 = vector.reduction <maxsi>, %140 : vector<16xi1> into i1
        %299 = arith.cmpf false, %out_49, %in_47 : f16
        %300 = vector.extract_strided_slice %33 {offsets = [0], sizes = [1], strides = [1]} : vector<1x16xf32> to vector<1x16xf32>
        %301 = vector.splat %out : vector<11x16xi16>
        %302 = arith.cmpi ult, %c1592072178_i64, %188 : i64
        %303 = math.ceil %cst_23 : f16
        %304 = index.castu %c-26475_i16 : i16 to index
        %305 = math.atan %cst : f16
        %true_52 = index.bool.constant true
        %306 = math.log2 %0 : tensor<11x2x16xf16>
        %307 = math.powf %194, %3 : tensor<2x16xf32>
        %308 = index.castu %false : i1 to index
        %309 = arith.subi %out, %c31622_i16 : i16
        %310 = arith.cmpi sgt, %c839684178_i64, %c839684178_i64 : i64
        %311 = vector.insertelement %cst_1, %60[%c5 : index] : vector<1xf32>
        %312 = index.maxu %c10, %c2
        %313 = arith.maxui %false_0, %extracted_26 : i1
        %314 = arith.floordivsi %extracted_26, %false : i1
        %315 = vector.multi_reduction <minf>, %99, %99 [] : vector<11x16xf32> to vector<11x16xf32>
        %316 = math.floor %15 : tensor<11x16xf32>
        %317 = vector.broadcast %cst_2 : f32 to vector<11x2x16xf32>
        %318 = vector.fma %317, %170, %317 : vector<11x2x16xf32>
        %319 = math.exp2 %2 : tensor<16x16xf32>
        %320 = arith.maxsi %true_52, %extracted_26 : i1
        %321 = math.ipowi %8, %16 : tensor<11x2x16xi16>
        %322 = index.sub %135, %c5
        %323 = arith.negf %cst : f16
        %324 = vector.load %alloc_15[%c0, %c8] : memref<11x16xi64>, vector<11x16xi64>
        linalg.yield %in_47 : f16
      } -> tensor<11x2x16xf16>
      %273 = math.cttz %false_0 : i1
      %274 = arith.remsi %true, %extracted_26 : i1
      %275 = arith.andi %c1633095684_i32, %c866211835_i32 : i32
      %276 = arith.addi %extracted_26, %true : i1
      %c1_i32 = arith.constant 1 : i32
      %277 = vector.transfer_read %14[%c14, %c11], %c1_i32 : tensor<16x16xi32>, vector<4xi32>
      %278 = vector.splat %out : vector<11x2x16xi16>
      %279 = vector.multi_reduction <minsi>, %210, %out [0, 1, 2] : vector<11x2x16xi16> to i16
      %280 = math.tanh %11 : tensor<11x16xf16>
      %281 = arith.minsi %c1633095684_i32, %c1633095684_i32 : i32
      %282 = index.floordivs %c2, %152
      %283 = arith.cmpf ule, %cst_1, %cst_1 : f32
      %284 = arith.cmpi ule, %true_25, %true : i1
      %285 = math.log1p %collapsed : tensor<32xf32>
      %286 = scf.index_switch %37 -> vector<11x16xi1> 
      case 1 {
        %294 = math.tan %11 : tensor<11x16xf16>
        %295 = math.ipowi %c-24118_i16, %c7192_i16 : i16
        %rank_46 = tensor.rank %4 : tensor<16x16xi64>
        %296 = math.ctlz %196 : i1
        %from_elements_47 = tensor.from_elements %c7192_i16, %c7192_i16, %279, %279, %279, %c31622_i16, %c-4457_i16, %c-4457_i16, %out, %out, %c31622_i16, %in, %extracted_33, %c7192_i16, %c31622_i16, %c-4457_i16, %c-4457_i16, %c31622_i16, %c-24118_i16, %out, %c-24118_i16, %c-26475_i16, %out, %279, %c-24118_i16, %c-24118_i16, %c7192_i16, %c-4457_i16, %279, %c31622_i16, %c-4457_i16, %c7192_i16, %c-4457_i16, %c-4457_i16, %c31622_i16, %c-26475_i16, %extracted_33, %c31622_i16, %c7192_i16, %c7192_i16, %c31622_i16, %extracted_33, %c-26475_i16, %c-24118_i16, %out, %c-26475_i16, %in, %c31622_i16, %out, %c31622_i16, %extracted_33, %c31622_i16, %out, %in, %out, %c7192_i16, %in, %c-24118_i16, %out, %c-24118_i16, %279, %extracted_33, %c-26475_i16, %out, %279, %in, %c-24118_i16, %extracted_33, %c-26475_i16, %out, %out, %279, %c7192_i16, %extracted_33, %c7192_i16, %out, %c7192_i16, %c31622_i16, %c-24118_i16, %in, %c-24118_i16, %c-24118_i16, %c31622_i16, %c-26475_i16, %c31622_i16, %c31622_i16, %in, %c-24118_i16, %c-26475_i16, %c-4457_i16, %c31622_i16, %in, %c-26475_i16, %279, %c31622_i16, %c-24118_i16, %c-26475_i16, %c-4457_i16, %out, %c-4457_i16, %279, %out, %c7192_i16, %c31622_i16, %c31622_i16, %c-24118_i16, %c31622_i16, %c-4457_i16, %c31622_i16, %extracted_33, %c-24118_i16, %279, %out, %extracted_33, %c-24118_i16, %c31622_i16, %c-26475_i16, %c-4457_i16, %279, %in, %279, %in, %c-24118_i16, %extracted_33, %c31622_i16, %c7192_i16, %c-4457_i16, %extracted_33, %out, %out, %out, %extracted_33, %in, %c31622_i16, %279, %c31622_i16, %c-26475_i16, %c-26475_i16, %c-24118_i16, %c-26475_i16, %extracted_33, %c7192_i16, %c-24118_i16, %c7192_i16, %out, %c7192_i16, %in, %279, %extracted_33, %c7192_i16, %c-4457_i16, %c-26475_i16, %c-4457_i16, %c-24118_i16, %c7192_i16, %c7192_i16, %c-4457_i16, %c31622_i16, %c-26475_i16, %c-26475_i16, %c-4457_i16, %out, %out, %c-24118_i16, %c-4457_i16, %c-24118_i16, %c-26475_i16, %c7192_i16, %c7192_i16, %in, %extracted_33, %c31622_i16, %c-4457_i16, %c-4457_i16, %279, %279, %279, %c31622_i16, %in, %c-4457_i16, %in, %279, %in, %c-26475_i16, %extracted_33, %c-24118_i16, %279, %c7192_i16, %c-4457_i16, %c31622_i16, %c31622_i16, %out, %279, %extracted_33, %out, %out, %c-24118_i16, %extracted_33, %c-26475_i16, %c-24118_i16, %c-26475_i16, %c7192_i16, %extracted_33, %279, %279, %out, %in, %c-26475_i16, %extracted_33, %out, %c-24118_i16, %c31622_i16, %c31622_i16, %c31622_i16, %c7192_i16, %c-26475_i16, %279, %c-24118_i16, %c-4457_i16, %c31622_i16, %c7192_i16, %extracted_33, %extracted_33, %c-26475_i16, %c-4457_i16, %in, %c-24118_i16, %c-4457_i16, %c-26475_i16, %c-24118_i16, %c-4457_i16, %extracted_33, %c31622_i16, %c31622_i16, %c-24118_i16, %in, %c-26475_i16, %c31622_i16, %279, %279, %extracted_33, %out, %c31622_i16, %in, %c-24118_i16, %in, %out, %279, %extracted_33, %c-26475_i16, %c-4457_i16, %c7192_i16, %c-4457_i16, %in, %c-24118_i16, %c-24118_i16 : tensor<16x16xi16>
        %extracted_48 = tensor.extract %from_elements_47[%c11, %c10] : tensor<16x16xi16>
        %collapsed_49 = tensor.collapse_shape %11 [[0, 1]] : tensor<11x16xf16> into tensor<176xf16>
        %297 = vector.create_mask %105, %163 : vector<2x16xi1>
        %298 = math.atan2 %15, %15 : tensor<11x16xf32>
        %299 = bufferization.clone %130 : memref<16x16xf32> to memref<16x16xf32>
        %300 = math.atan2 %15, %15 : tensor<11x16xf32>
        %301 = arith.maxf %cst_1, %cst_1 : f32
        memref.store %cst, %103[%c10, %c11] : memref<16x16xf16>
        %302 = math.fma %10, %122, %10 : tensor<11x16xf16>
        %303 = index.castu %c-4457_i16 : i16 to index
        %304 = vector.broadcast %cst_1 : f32 to vector<2x16xf32>
        %305 = vector.fma %304, %30, %30 : vector<2x16xf32>
        scf.yield %90 : vector<11x16xi1>
      }
      case 2 {
        %294 = bufferization.to_memref %13 : memref<11x16xi16>
        %295 = vector.create_mask %c0, %64 : vector<11x16xi1>
        %296 = math.ctlz %true_25 : i1
        %from_elements_46 = tensor.from_elements %cst_3, %cst_3, %cst_3, %cst_3, %cst_23, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_23, %cst_3, %cst_3, %cst_3, %cst_23, %cst_23, %cst_3, %cst_3, %cst_3, %cst_3, %cst_23, %cst, %cst, %cst, %cst_23, %cst_3, %cst, %cst, %cst_23, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_23, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_23, %cst_23, %cst_3, %cst, %cst_23, %cst, %cst_3, %cst_23, %cst_23, %cst_3, %cst_23, %cst_3, %cst_3, %cst_23, %cst, %cst_23, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_23, %cst_3, %cst, %cst, %cst_23, %cst_23, %cst_23, %cst_23, %cst, %cst_3, %cst_23, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst_23, %cst_3, %cst_3, %cst_23, %cst_3, %cst, %cst_23, %cst, %cst, %cst_23, %cst_23, %cst, %cst, %cst, %cst_3, %cst, %cst_23, %cst_3, %cst, %cst, %cst_23, %cst_3, %cst_23, %cst, %cst, %cst_23, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst_23, %cst_23, %cst_3, %cst, %cst_23, %cst_3, %cst_23, %cst_23, %cst_23, %cst, %cst_23, %cst_3, %cst, %cst_23, %cst, %cst, %cst, %cst, %cst_23, %cst_3, %cst_23, %cst, %cst, %cst, %cst_23, %cst_23, %cst_3, %cst_3, %cst_3, %cst_23, %cst_3, %cst, %cst_3, %cst_3, %cst_23, %cst_23, %cst_3, %cst_3, %cst_23, %cst_3, %cst_23, %cst, %cst_23, %cst, %cst_23, %cst_3, %cst_3, %cst, %cst_3, %cst_23, %cst_23, %cst_23, %cst_3, %cst, %cst_23, %cst_23, %cst_23, %cst, %cst_3, %cst_23, %cst_3, %cst_3, %cst, %cst_23, %cst, %cst_3, %cst_3, %cst, %cst_23, %cst_23, %cst_23, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_23, %cst_3, %cst_3, %cst, %cst_23, %cst_23, %cst_3, %cst_23, %cst_3, %cst_23, %cst_3, %cst, %cst_23, %cst, %cst_3, %cst_23, %cst_23, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst_23, %cst, %cst_23, %cst_23, %cst, %cst_23, %cst_23, %cst_3, %cst_23, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_23, %cst_3, %cst_23, %cst_23, %cst_3, %cst_23, %cst_23, %cst_23, %cst_23, %cst_3, %cst_23, %cst_3, %cst, %cst_3, %cst_3, %cst_23, %cst_3, %cst, %cst_3, %cst, %cst_23 : tensor<16x16xf16>
        %297 = math.round %from_elements_31 : tensor<2x16xf32>
        %298 = math.log2 %2 : tensor<16x16xf32>
        %inserted_47 = tensor.insert %196 into %12[%c5, %c6] : tensor<16x16xi1>
        %299 = arith.negf %cst_2 : f32
        %300 = arith.cmpi ugt, %extracted_41, %188 : i64
        %301 = vector.broadcast %188 : i64 to vector<i64>
        %302 = vector.transfer_write %301, %4[%c6, %c10] : vector<i64>, tensor<16x16xi64>
        %303 = math.powf %from_elements_31, %6 : tensor<2x16xf32>
        %304 = arith.cmpf ueq, %cst_23, %cst_23 : f16
        %305 = bufferization.to_memref %14 : memref<16x16xi32>
        %rank_48 = tensor.rank %18 : tensor<16xi64>
        %306 = arith.divsi %true, %extracted : i1
        %alloca_49 = memref.alloca() : memref<11x2x16xf16>
        scf.yield %90 : vector<11x16xi1>
      }
      case 3 {
        %294 = index.castu %c7192_i16 : i16 to index
        %295 = vector.bitcast %168 : vector<8xi16> to vector<8xi16>
        %296 = math.ctpop %c866211835_i32 : i32
        %297 = vector.matrix_multiply %140, %124 {lhs_columns = 4 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<16xi1>, vector<4xi1>) -> vector<4xi1>
        %298 = math.exp2 %10 : tensor<11x16xf16>
        %rank_46 = tensor.rank %4 : tensor<16x16xi64>
        %299 = math.tan %3 : tensor<2x16xf32>
        %300 = vector.load %130[%c10, %c15] : memref<16x16xf32>, vector<11x2x16xf32>
        %301 = memref.load %156[%c6, %c11] : memref<16x16xi32>
        %302 = math.exp2 %2 : tensor<16x16xf32>
        %303 = arith.muli %extracted_41, %extracted_41 : i64
        %304 = arith.divsi %false, %true : i1
        %305 = memref.load %alloc_19[%c3, %c5] : memref<16x16xi16>
        %from_elements_47 = tensor.from_elements %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2 : tensor<2x16xf32>
        %306 = arith.shrui %c-24118_i16, %c-24118_i16 : i16
        %307 = tensor.empty() : tensor<11x16xf32>
        scf.yield %90 : vector<11x16xi1>
      }
      case 4 {
        %294 = math.ctpop %5 : tensor<11x16xi1>
        %295 = bufferization.clone %alloc_5 : memref<16x16xi32> to memref<16x16xi32>
        %extracted_46 = tensor.extract %10[%c5, %c15] : tensor<11x16xf16>
        memref.copy %alloc_5, %295 : memref<16x16xi32> to memref<16x16xi32>
        %296 = math.absi %71 : tensor<2x16xi64>
        %alloc_47 = memref.alloc() : memref<16x16xi64>
        memref.tensor_store %4, %alloc_47 : memref<16x16xi64>
        %297 = vector.broadcast %extracted_41 : i64 to vector<i64>
        %298 = vector.transfer_write %297, %reduced[%266] : vector<i64>, tensor<16xi64>
        %299 = math.ipowi %188, %extracted_41 : i64
        %300 = index.sub %37, %c12
        %301 = arith.xori %c-26475_i16, %c-4457_i16 : i16
        %302 = arith.cmpi slt, %188, %c839684178_i64 : i64
        %303 = math.fma %6, %194, %194 : tensor<2x16xf32>
        %304 = arith.divf %extracted_46, %cst_23 : f16
        %305 = arith.remf %cst_23, %cst_3 : f16
        %306 = index.maxs %c4, %c1
        %307 = arith.maxui %true_25, %196 : i1
        scf.yield %90 : vector<11x16xi1>
      }
      default {
        %294 = bufferization.clone %138 : memref<16x16xi16> to memref<16x16xi16>
        bufferization.dealloc_tensor %8 : tensor<11x2x16xi16>
        %295 = math.atan2 %6, %from_elements_31 : tensor<2x16xf32>
        %296 = index.ceildivu %266, %176
        %297 = index.sizeof
        %298 = index.floordivs %c9, %c2
        %299 = arith.negf %cst_3 : f16
        %rank_46 = tensor.rank %reduced : tensor<16xi64>
        %300 = index.floordivs %c13, %rank_46
        %rank_47 = tensor.rank %9 : tensor<16x16xi64>
        %301 = vector.insertelement %extracted_41, %123[%c2 : index] : vector<4xi64>
        %302 = math.atan2 %2, %2 : tensor<16x16xf32>
        %303 = math.ceil %cst_3 : f16
        %304 = arith.cmpf ugt, %cst, %cst_23 : f16
        %305 = memref.realloc %alloc_20 : memref<16xi64> to memref<4xi64>
        %306 = vector.insertelement %cst, %154[] : vector<f16>
        scf.yield %90 : vector<11x16xi1>
      }
      %inserted_43 = tensor.insert %cst_2 into %2[%c4, %c3] : tensor<16x16xf32>
      %287 = arith.remf %cst_23, %cst_23 : f16
      %288 = math.rsqrt %2 : tensor<16x16xf32>
      %289 = math.log2 %collapsed : tensor<32xf32>
      %290 = index.ceildivs %c11, %64
      %291 = vector.transpose %139, [0] : vector<16xi16> to vector<16xi16>
      %292 = vector.broadcast %out : i16 to vector<2x16xi16>
      %dest_44, %accumulated_value_45 = vector.scan <minsi>, %207, %292 {inclusive = true, reduction_dim = 0 : i64} : vector<11x2x16xi16>, vector<2x16xi16>
      %293 = arith.maxui %75, %true : i1
      linalg.yield %extracted_33 : i16
    } -> tensor<11x2x16xi16>
    %215 = math.absi %8 : tensor<11x2x16xi16>
    %216 = arith.maxf %cst_2, %cst_2 : f32
    %217 = index.ceildivu %118, %134
    %218 = arith.divsi %c-26475_i16, %c31622_i16 : i16
    %219 = arith.remui %c1633095684_i32, %c1633095684_i32 : i32
    %220 = index.floordivs %c12, %59
    %221 = math.exp2 %10 : tensor<11x16xf16>
    %222 = arith.subi %c31622_i16, %extracted_33 : i16
    %223 = arith.maxf %cst_1, %cst_1 : f32
    affine.for %arg1 = 0 to 13 {
    }
    %224 = math.ipowi %extracted_33, %c-4457_i16 : i16
    %225 = index.casts %217 : index to i32
    %226 = math.round %6 : tensor<2x16xf32>
    %227 = index.maxu %162, %c5
    scf.if %false_0 {
      %266 = arith.muli %extracted_33, %c7192_i16 : i16
      %267 = index.maxs %c8, %134
      %268 = tensor.empty() : tensor<16x16xi1>
      %mapped_40 = linalg.map ins(%12, %alloc_4, %12 : tensor<16x16xi1>, memref<16x16xi1>, tensor<16x16xi1>) outs(%268 : tensor<16x16xi1>)
        (%in: i1, %in_41: i1, %in_42: i1) {
          %273 = math.powf %cst_3, %cst_3 : f16
          %alloca_43 = memref.alloca() : memref<11x16xi16>
          %274 = vector.reduction <mul>, %125 : vector<4xi64> into i64
          %rank_44 = tensor.rank %27 : tensor<16x16xi64>
          %c1_i16 = arith.constant 1 : i16
          %275 = vector.transfer_read %17[%53, %c8, %198], %c1_i16 : tensor<11x2x16xi16>, vector<16xi16>
          %276 = vector.splat %118 : vector<11x16xindex>
          %277 = math.rsqrt %1 : tensor<11x2x16xf16>
          %278 = vector.matrix_multiply %199, %199 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi32>, vector<16xi32>) -> vector<1xi32>
          %279 = vector.broadcast %cst_1 : f32 to vector<2x11xf32>
          %280 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %30, %98, %279 : vector<2x16xf32>, vector<11x16xf32> into vector<2x11xf32>
          %281 = math.log2 %cst : f16
          %282 = arith.maxui %196, %extracted_26 : i1
          %283 = arith.divsi %in_42, %in : i1
          %284 = index.divu %204, %135
          %285 = math.log10 %from_elements_31 : tensor<2x16xf32>
          %286 = vector.bitcast %168 : vector<8xi16> to vector<8xi16>
          %287 = arith.remf %cst_3, %cst_23 : f16
          %288 = vector.broadcast %c-4457_i16 : i16 to vector<11x2xi16>
          %289 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %139, %207, %288 : vector<16xi16>, vector<11x2x16xi16> into vector<11x2xi16>
          %290 = vector.extract %184[1] : vector<2x16xi1>
          %from_elements_45 = tensor.from_elements %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1 : tensor<11x2x16xf32>
          vector.print %168 : vector<8xi16>
          %291 = arith.negf %cst_2 : f32
          %292 = memref.realloc %alloc_20 : memref<16xi64> to memref<4xi64>
          %293 = vector.broadcast %188 : i64 to vector<16xi64>
          %dest_46, %accumulated_value_47 = vector.scan <mul>, %62, %293 {inclusive = true, reduction_dim = 0 : i64} : vector<16x16xi64>, vector<16xi64>
          %294 = math.ipowi %14, %14 : tensor<16x16xi32>
          %295 = arith.andi %false_0, %false : i1
          %296 = arith.negf %cst_3 : f16
          %from_elements_48 = tensor.from_elements %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2 : tensor<2x16xf32>
          %extracted_49 = tensor.extract %8[%c3, %c1, %c15] : tensor<11x2x16xi16>
          %297 = index.divs %59, %217
          %298 = arith.ori %c1592072178_i64, %c839684178_i64 : i64
          %c886035324_i32 = arith.constant 886035324 : i32
          %299 = math.powf %3, %3 : tensor<2x16xf32>
          %false_50 = arith.constant false
          linalg.yield %false_50 : i1
        }
      bufferization.dealloc_tensor %11 : tensor<11x16xf16>
      %269 = math.cttz %c31622_i16 : i16
      %270 = math.atan %1 : tensor<11x2x16xf16>
      %271 = index.sub %c15, %267
      %272 = index.ceildivu %c1, %135
    }
    %228 = math.log2 %6 : tensor<2x16xf32>
    %229 = vector.load %alloc_13[%c4, %c1, %c13] : memref<11x2x16xi16>, vector<2x16xi16>
    %230 = math.round %10 : tensor<11x16xf16>
    %231 = arith.minui %75, %false : i1
    %232 = arith.maxsi %extracted_26, %false : i1
    %233 = index.castu %true : i1 to index
    memref.alloca_scope  {
      %266 = arith.andi %extracted_33, %extracted_33 : i16
      %rank_40 = tensor.rank %13 : tensor<11x16xi16>
      %267 = arith.maxui %extracted_33, %c-24118_i16 : i16
      %268 = math.exp2 %from_elements_31 : tensor<2x16xf32>
      %269 = math.ipowi %extracted, %extracted_26 : i1
      %rank_41 = tensor.rank %13 : tensor<11x16xi16>
      %270 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d3)>(%rank_34, %c15, %rank_40, %c10)
      %271 = memref.realloc %alloc_20 : memref<16xi64> to memref<16xi64>
      memref.alloca_scope  {
        %292 = math.cos %from_elements_31 : tensor<2x16xf32>
        %293 = arith.divsi %extracted_33, %c-4457_i16 : i16
        %294 = arith.muli %c1592072178_i64, %c839684178_i64 : i64
        %295 = arith.divsi %c1633095684_i32, %c866211835_i32 : i32
        %296 = bufferization.clone %alloc_15 : memref<11x16xi64> to memref<11x16xi64>
        %297 = bufferization.clone %126 : memref<16x16xf32> to memref<16x16xf32>
        %298 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 32 - 4)>(%233, %c2, %112)
        %299 = arith.negf %cst_23 : f16
        %300 = math.cttz %c-26475_i16 : i16
        %from_elements_46 = tensor.from_elements %75, %196, %true_25, %false_0, %75, %extracted, %true, %true, %true_25, %false_0, %extracted, %extracted, %true_25, %true_25, %true_25, %75, %196, %false_0, %false_0, %75, %false, %true, %196, %196, %196, %false, %75, %false_0, %extracted, %75, %196, %true : tensor<2x16xi1>
        %301 = vector.transpose %55, [0] : vector<16xf32> to vector<16xf32>
        %extracted_47 = tensor.extract %0[%c2, %c0, %c2] : tensor<11x2x16xf16>
        %302 = arith.cmpi sgt, %c31622_i16, %c7192_i16 : i16
        %303 = index.ceildivu %c4, %217
        %304 = arith.cmpf one, %cst_3, %cst : f16
        %305 = tensor.empty(%152) : tensor<11x?x16xi1>
        %306 = arith.subi %c31622_i16, %c31622_i16 : i16
        %307 = vector.broadcast %cst_1 : f32 to vector<11x2x16xf32>
        %308 = vector.fma %307, %307, %171 : vector<11x2x16xf32>
        %309 = vector.transpose %60, [0] : vector<1xf32> to vector<1xf32>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_48 = arith.constant 0 : i32
        %310 = vector.transfer_read %14[%c9, %176], %c0_i32_48 : tensor<16x16xi32>, vector<i32>
        %311 = arith.remf %extracted_47, %extracted_47 : f16
        %312 = math.log2 %cst_23 : f16
        %313 = math.ctpop %extracted_33 : i16
        %314 = index.ceildivs %rank_41, %c3
        %315 = index.divs %217, %112
        %316 = arith.subi %c-24118_i16, %c31622_i16 : i16
        %317 = math.fma %extracted_47, %cst, %cst_3 : f16
        %rank_49 = tensor.rank %10 : tensor<11x16xf16>
        %318 = math.log1p %1 : tensor<11x2x16xf16>
        %319 = math.tan %15 : tensor<11x16xf32>
        %320 = math.powf %10, %11 : tensor<11x16xf16>
        %321 = index.divu %227, %rank
      }
      %272 = vector.bitcast %171 : vector<11x2x16xf32> to vector<11x2x16xf32>
      %273 = math.log %194 : tensor<2x16xf32>
      %cst_42 = arith.constant 3.571200e+04 : f16
      %274 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 + 64, (d2 mod 2) floordiv 16, d0 - (d2 mod 2 - (d0 + 64)), d2 + d1)>(%217, %112, %c9, %134)
      %275 = math.log2 %1 : tensor<11x2x16xf16>
      %276 = arith.subi %false, %196 : i1
      %277 = bufferization.clone %83 : memref<16x16xi32> to memref<16x16xi32>
      %278 = arith.remf %cst_3, %cst_23 : f16
      %279 = index.castu %c-24118_i16 : i16 to index
      %280 = math.log2 %0 : tensor<11x2x16xf16>
      %generated_43 = tensor.generate %118, %53 {
      ^bb0(%arg1: index, %arg2: index):
        %inserted_46 = tensor.insert %cst into %0[%c8, %c0, %c12] : tensor<11x2x16xf16>
        %292 = arith.shli %c1592072178_i64, %188 : i64
        %293 = vector.multi_reduction <maxsi>, %229, %19 [1] : vector<2x16xi16> to vector<2xi16>
        %294 = vector.multi_reduction <minf>, %25, %55 [1] : vector<16x16xf32> to vector<16xf32>
        tensor.yield %c1633095684_i32 : i32
      } : tensor<?x?xi32>
      %281 = math.expm1 %cst_23 : f16
      %282 = math.atan %11 : tensor<11x16xf16>
      %283 = tensor.empty() : tensor<11x16xi32>
      %284 = vector.broadcast %c866211835_i32 : i32 to vector<11x16xi32>
      %285 = vector.gather %283[%135, %220] [%284], %90, %284 : tensor<11x16xi32>, vector<11x16xi32>, vector<11x16xi1>, vector<11x16xi32> into vector<11x16xi32>
      %286 = arith.subi %extracted_26, %75 : i1
      %alloc_44 = memref.alloc() : memref<16x16xi64>
      memref.tensor_store %4, %alloc_44 : memref<16x16xi64>
      %splat_45 = tensor.splat %extracted : tensor<16x16xi1>
      %c1873234614_i32 = arith.constant 1873234614 : i32
      %287 = arith.remf %cst, %cst_23 : f16
      %288 = bufferization.clone %alloc : memref<11x2x16xi32> to memref<11x2x16xi32>
      %289 = arith.cmpi sgt, %c-4457_i16, %c-4457_i16 : i16
      %290 = vector.multi_reduction <minf>, %25, %55 [0] : vector<16x16xf32> to vector<16xf32>
      %291 = index.ceildivu %53, %c2
    }
    %234 = arith.minf %cst_2, %cst_1 : f32
    %235 = arith.ori %true, %true : i1
    %cast_38 = tensor.cast %11 : tensor<11x16xf16> to tensor<?x?xf16>
    %236 = tensor.empty() : tensor<11x16xf16>
    %237 = math.log1p %3 : tensor<2x16xf32>
    %238 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %99, %99, %26 : vector<11x16xf32>, vector<11x16xf32> into vector<16x16xf32>
    %239 = index.casts %233 : index to i32
    %240 = index.ceildivs %148, %217
    %241 = vector.broadcast %cst_1 : f32 to vector<16x16xf32>
    %242 = vector.fma %241, %25, %26 : vector<16x16xf32>
    %243 = math.round %1 : tensor<11x2x16xf16>
    %244 = math.absi %8 : tensor<11x2x16xi16>
    %245 = math.atan %10 : tensor<11x16xf16>
    %246 = math.cttz %8 : tensor<11x2x16xi16>
    %alloca = memref.alloca() : memref<2x16xi32>
    %247 = arith.maxf %cst, %cst : f16
    %248 = index.ceildivs %233, %162
    %249 = index.castu %c14 : index to i32
    %250 = math.tanh %0 : tensor<11x2x16xf16>
    %251 = arith.divsi %c1592072178_i64, %c1592072178_i64 : i64
    %splat = tensor.splat %c-4457_i16 : tensor<16x16xi16>
    %252 = arith.negf %cst_2 : f32
    %253 = index.add %240, %53
    %254 = arith.minf %cst_1, %cst_1 : f32
    %255 = index.castu %c1592072178_i64 : i64 to index
    %256 = math.log10 %10 : tensor<11x16xf16>
    %257 = math.floor %cst_23 : f16
    %258 = index.divu %253, %152
    %259 = arith.ori %188, %188 : i64
    %260 = tensor.empty() : tensor<2x16xf32>
    %261 = linalg.copy ins(%61 : tensor<2x16xf32>) outs(%260 : tensor<2x16xf32>) -> tensor<2x16xf32>
    %262 = tensor.empty() : tensor<16x2xf32>
    %transposed = linalg.transpose ins(%194 : tensor<2x16xf32>) outs(%262 : tensor<16x2xf32>) permutation = [1, 0] 
    %263 = tensor.empty() : tensor<16xf32>
    %reduced_39 = linalg.reduce ins(%130 : memref<16x16xf32>) outs(%263 : tensor<16xf32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %266 = vector.broadcast %cst_1 : f32 to vector<2x16xf32>
        %267 = vector.fma %266, %52, %31 : vector<2x16xf32>
        %268 = bufferization.to_memref %61 : memref<2x16xf32>
        %269 = arith.maxf %cst_23, %cst : f16
        %270 = vector.broadcast %init : f32 to vector<f32>
        %271 = vector.transfer_write %270, %262[%240, %c0] : vector<f32>, tensor<16x2xf32>
        %272 = arith.cmpi eq, %196, %true_25 : i1
        %273 = math.floor %10 : tensor<11x16xf16>
        %274 = vector.insertelement %c-4457_i16, %139[%240 : index] : vector<16xi16>
        %dest_40, %accumulated_value_41 = vector.scan <minf>, %266, %55 {inclusive = false, reduction_dim = 0 : i64} : vector<2x16xf32>, vector<16xf32>
        %cst_42 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_42 : f32
      }
    %264 = scf.parallel (%arg1) = (%c9) to (%c13) step (%c1) init (%cst_23) -> f16 {
      bufferization.dealloc_tensor %261 : tensor<2x16xf32>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<11x2x16xf16>) outs(%1 : tensor<11x2x16xf16>) {
      ^bb0(%in: f16, %out: f16):
        %alloca_44 = memref.alloca() : memref<2x16xi1>
        %278 = arith.maxf %in, %cst_3 : f16
        %279 = arith.maxsi %c31622_i16, %c-4457_i16 : i16
        %280 = arith.remf %cst_1, %cst_1 : f32
        %281 = math.ipowi %c1633095684_i32, %c866211835_i32 : i32
        %from_elements_45 = tensor.from_elements %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1 : tensor<11x2x16xf32>
        %282 = index.floordivs %152, %c4
        %283 = math.ctlz %9 : tensor<16x16xi64>
        %284 = math.tanh %from_elements_31 : tensor<2x16xf32>
        %285 = math.ctlz %13 : tensor<11x16xi16>
        %286 = arith.maxf %cst_2, %cst_2 : f32
        %287 = math.ctpop %false : i1
        %288 = math.rsqrt %transposed : tensor<16x2xf32>
        %289 = arith.maxsi %c-24118_i16, %c-24118_i16 : i16
        memref.store %c839684178_i64, %42[%c4, %c12] : memref<11x16xi64>
        %290 = arith.cmpf uge, %in, %cst : f16
        %291 = vector.broadcast %arg1 : index to vector<16xindex>
        %292 = vector.broadcast %out : f16 to vector<16xf16>
        vector.scatter %58[%c8, %c14] [%291], %140, %292 : memref<11x16xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
        %293 = math.atan2 %15, %15 : tensor<11x16xf32>
        %294 = math.log2 %262 : tensor<16x2xf32>
        %295 = math.rsqrt %0 : tensor<11x2x16xf16>
        %296 = arith.divf %cst_3, %cst_3 : f16
        %297 = math.cos %11 : tensor<11x16xf16>
        %298 = math.exp2 %10 : tensor<11x16xf16>
        %dest_46, %accumulated_value_47 = vector.scan <add>, %242, %55 {inclusive = false, reduction_dim = 1 : i64} : vector<16x16xf32>, vector<16xf32>
        %299 = arith.remui %c7192_i16, %c-26475_i16 : i16
        %300 = arith.maxf %cst_3, %out : f16
        %301 = math.round %262 : tensor<16x2xf32>
        %302 = math.floor %6 : tensor<2x16xf32>
        %303 = index.sub %112, %c14
        %expanded = tensor.expand_shape %3 [[0], [1, 2]] : tensor<2x16xf32> into tensor<2x16x1xf32>
        %304 = affine.apply affine_map<(d0, d1, d2) -> (d0 * 32 - 4)>(%147, %192, %135)
        %305 = arith.divf %cst_2, %cst_2 : f32
        linalg.yield %out : f16
      } -> tensor<11x2x16xf16>
      %267 = math.ipowi %c1592072178_i64, %188 : i64
      %true_40 = arith.constant true
      %268 = arith.maxf %cst_2, %cst_1 : f32
      %generated_41 = tensor.generate %204, %220 {
      ^bb0(%arg2: index, %arg3: index):
        %278 = math.log10 %cst : f16
        %279 = vector.multi_reduction <add>, %184, %140 [0] : vector<2x16xi1> to vector<16xi1>
        %splat_44 = tensor.splat %c1633095684_i32 : tensor<11x2x16xi32>
        %280 = arith.divsi %extracted_33, %c31622_i16 : i16
        tensor.yield %c1592072178_i64 : i64
      } : tensor<?x?xi64>
      %269 = math.log2 %2 : tensor<16x16xf32>
      %270 = math.round %6 : tensor<2x16xf32>
      %271 = vector.load %alloc_15[%c9, %c3] : memref<11x16xi64>, vector<11x2x16xi64>
      %from_elements_42 = tensor.from_elements %c-26475_i16, %c-4457_i16, %extracted_33, %c-4457_i16, %extracted_33, %c-24118_i16, %c31622_i16, %c7192_i16, %c-4457_i16, %extracted_33, %c-26475_i16, %c-24118_i16, %extracted_33, %c-24118_i16, %c-24118_i16, %c-24118_i16, %c-24118_i16, %c-4457_i16, %c-4457_i16, %extracted_33, %c31622_i16, %c-24118_i16, %c31622_i16, %c7192_i16, %c7192_i16, %c-4457_i16, %c-24118_i16, %c-26475_i16, %extracted_33, %extracted_33, %extracted_33, %c-24118_i16, %c-24118_i16, %c-26475_i16, %c31622_i16, %c-4457_i16, %c7192_i16, %c31622_i16, %c31622_i16, %c-24118_i16, %c7192_i16, %extracted_33, %c-4457_i16, %c-4457_i16, %c31622_i16, %c-24118_i16, %c7192_i16, %c7192_i16, %c31622_i16, %c-4457_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c-26475_i16, %extracted_33, %c7192_i16, %c31622_i16, %c-26475_i16, %extracted_33, %c7192_i16, %c7192_i16, %c-24118_i16, %extracted_33, %c-4457_i16, %c31622_i16, %extracted_33, %c-4457_i16, %c-4457_i16, %c-4457_i16, %c-4457_i16, %c-26475_i16, %extracted_33, %c7192_i16, %extracted_33, %c31622_i16, %extracted_33, %extracted_33, %c7192_i16, %extracted_33, %c-4457_i16, %c7192_i16, %c31622_i16, %c-4457_i16, %c-26475_i16, %extracted_33, %extracted_33, %c7192_i16, %c-4457_i16, %c-26475_i16, %c-26475_i16, %c-26475_i16, %extracted_33, %c-24118_i16, %extracted_33, %c31622_i16, %c-26475_i16, %c-4457_i16, %c-26475_i16, %c31622_i16, %c7192_i16, %c-4457_i16, %c-26475_i16, %c7192_i16, %c-4457_i16, %extracted_33, %c7192_i16, %c31622_i16, %c-4457_i16, %c7192_i16, %c31622_i16, %c31622_i16, %c-26475_i16, %c7192_i16, %c31622_i16, %c-4457_i16, %c-26475_i16, %c7192_i16, %c31622_i16, %extracted_33, %c31622_i16, %c-26475_i16, %c-24118_i16, %c-26475_i16, %extracted_33, %c-4457_i16, %c7192_i16, %c-4457_i16, %c-24118_i16, %c7192_i16, %c-24118_i16, %c-26475_i16, %extracted_33, %c-24118_i16, %c-24118_i16, %c-26475_i16, %extracted_33, %extracted_33, %c-26475_i16, %c-4457_i16, %c-24118_i16, %c-4457_i16, %c-4457_i16, %c-26475_i16, %c-24118_i16, %c-26475_i16, %c-24118_i16, %c-26475_i16, %c-24118_i16, %c7192_i16, %c7192_i16, %c7192_i16, %c7192_i16, %extracted_33, %c7192_i16, %extracted_33, %c-4457_i16, %c31622_i16, %c-26475_i16, %c-24118_i16, %c-4457_i16, %c-26475_i16, %c7192_i16, %c-4457_i16, %c7192_i16, %c7192_i16, %c-26475_i16, %c31622_i16, %c7192_i16, %c-4457_i16, %c-24118_i16, %c7192_i16, %c-4457_i16, %extracted_33, %c-4457_i16, %c-24118_i16, %c-4457_i16, %c7192_i16, %extracted_33, %extracted_33, %c-26475_i16, %c-24118_i16, %c7192_i16, %c-26475_i16, %c31622_i16, %c31622_i16, %c-26475_i16, %c-26475_i16, %c31622_i16, %c-26475_i16, %c-4457_i16, %c-24118_i16, %c7192_i16, %c7192_i16, %c-4457_i16, %c7192_i16, %c-26475_i16, %c-24118_i16, %c7192_i16, %c-4457_i16, %c31622_i16, %c-26475_i16, %c-4457_i16, %c-24118_i16, %c-26475_i16, %c7192_i16, %c-4457_i16, %c-26475_i16, %c-24118_i16, %c-24118_i16, %c7192_i16, %c-24118_i16, %c31622_i16, %c-24118_i16, %c-4457_i16, %c-24118_i16, %c7192_i16, %c-26475_i16, %c31622_i16, %c-24118_i16, %c-24118_i16, %c31622_i16, %c-4457_i16, %c-26475_i16, %c7192_i16, %c31622_i16, %extracted_33, %c-24118_i16, %c-4457_i16, %c-26475_i16, %c31622_i16, %c7192_i16, %c-4457_i16, %c7192_i16, %c31622_i16, %c7192_i16, %extracted_33, %c31622_i16, %extracted_33, %c-4457_i16, %c31622_i16, %c-24118_i16, %c-26475_i16, %c31622_i16, %c7192_i16, %extracted_33, %c-24118_i16, %c-4457_i16, %c31622_i16, %c-24118_i16, %c-26475_i16, %extracted_33, %extracted_33, %c31622_i16, %c-26475_i16, %c-24118_i16, %c31622_i16 : tensor<16x16xi16>
      %272 = math.tanh %cst : f16
      %273 = arith.remsi %c31622_i16, %extracted_33 : i16
      %274 = math.powf %6, %from_elements_31 : tensor<2x16xf32>
      %275 = math.round %10 : tensor<11x16xf16>
      %276 = math.floor %collapsed : tensor<32xf32>
      %277 = arith.maxsi %false, %196 : i1
      %cst_43 = arith.constant 1.000000e+00 : f16
      scf.reduce(%cst_43)  : f16 {
      ^bb0(%arg2: f16, %arg3: f16):
        %278 = index.ceildivu %220, %248
        %279 = arith.negf %cst_23 : f16
        %280 = arith.subi %c866211835_i32, %c1633095684_i32 : i32
        %281 = index.floordivs %c10, %240
        %282 = math.expm1 %122 : tensor<11x16xf16>
        %inserted_44 = tensor.insert %c7192_i16 into %8[%c2, %c1, %c0] : tensor<11x2x16xi16>
        %283 = math.tan %61 : tensor<2x16xf32>
        %284 = tensor.empty() : tensor<11x16xi32>
        %cst_45 = arith.constant 1.000000e+00 : f16
        scf.reduce.return %cst_45 : f16
      }
      scf.yield
    }
    %265 = affine.vector_load %146[%217, %217] : memref<11x16xi64>, vector<11xi64>
    affine.vector_store %140, %alloc_4[%c8, %c3] : memref<16x16xi1>, vector<16xi1>
    vector.print %19 : vector<2xi16>
    vector.print %25 : vector<16x16xf32>
    vector.print %26 : vector<16x16xf32>
    vector.print %30 : vector<2x16xf32>
    vector.print %31 : vector<2x16xf32>
    vector.print %33 : vector<1x16xf32>
    vector.print %52 : vector<2x16xf32>
    vector.print %55 : vector<16xf32>
    vector.print %60 : vector<1xf32>
    vector.print %62 : vector<16x16xi64>
    vector.print %70 : vector<1xi16>
    vector.print %72 : vector<16x16xi32>
    vector.print %90 : vector<11x16xi1>
    vector.print %98 : vector<11x16xf32>
    vector.print %99 : vector<11x16xf32>
    vector.print %123 : vector<4xi64>
    vector.print %124 : vector<4xi1>
    vector.print %125 : vector<4xi64>
    vector.print %139 : vector<16xi16>
    vector.print %140 : vector<16xi1>
    vector.print %141 : vector<16xi16>
    vector.print %142 : vector<11x2x16xf16>
    vector.print %154 : vector<f16>
    vector.print %168 : vector<8xi16>
    vector.print %170 : vector<11x2x16xf32>
    vector.print %171 : vector<11x2x16xf32>
    vector.print %178 : vector<8x2x16xf16>
    vector.print %184 : vector<2x16xi1>
    vector.print %195 : vector<1x16xf32>
    vector.print %199 : vector<16xi32>
    vector.print %207 : vector<11x2x16xi16>
    vector.print %208 : vector<11x2x16xi1>
    vector.print %209 : vector<11x2x16xi32>
    vector.print %210 : vector<11x2x16xi16>
    vector.print %212 : vector<i32>
    vector.print %229 : vector<2x16xi16>
    vector.print %241 : vector<16x16xf32>
    vector.print %242 : vector<16x16xf32>
    vector.print %265 : vector<11xi64>
    vector.print %false : i1
    vector.print %true : i1
    vector.print %c7192_i16 : i16
    vector.print %false_0 : i1
    vector.print %c1633095684_i32 : i32
    vector.print %c-4457_i16 : i16
    vector.print %c1592072178_i64 : i64
    vector.print %cst : f16
    vector.print %c31622_i16 : i16
    vector.print %cst_1 : f32
    vector.print %c-26475_i16 : i16
    vector.print %cst_2 : f32
    vector.print %c866211835_i32 : i32
    vector.print %cst_3 : f16
    vector.print %c-24118_i16 : i16
    vector.print %c839684178_i64 : i64
    vector.print %75 : i1
    vector.print %extracted : i1
    vector.print %cst_23 : f16
    vector.print %true_25 : i1
    vector.print %extracted_26 : i1
    vector.print %extracted_33 : i16
    vector.print %188 : i64
    vector.print %196 : i1
    return
  }
}
