module {
  func.func @func1(%arg0: vector<3x3xf16>, %arg1: memref<5x3x15xi16>) -> i16 {
    %c1220632730_i32 = arith.constant 1220632730 : i32
    %c38605508_i32 = arith.constant 38605508 : i32
    %c27644_i16 = arith.constant 27644 : i16
    %cst = arith.constant 5.577600e+04 : f16
    %cst_0 = arith.constant 0x4D4DE556 : f32
    %c1809694973_i32 = arith.constant 1809694973 : i32
    %true = arith.constant true
    %c-23574_i16 = arith.constant -23574 : i16
    %c-12004_i16 = arith.constant -12004 : i16
    %cst_1 = arith.constant 2.12604954E+9 : f32
    %c-15365_i16 = arith.constant -15365 : i16
    %c268195901_i64 = arith.constant 268195901 : i64
    %c-6735_i16 = arith.constant -6735 : i16
    %cst_2 = arith.constant 0x4D4884AF : f32
    %c-523_i16 = arith.constant -523 : i16
    %false = arith.constant false
    %0 = tensor.empty() : tensor<5x3x15xi32>
    %1 = tensor.empty() : tensor<15x16xi64>
    %2 = tensor.empty() : tensor<3x3xf16>
    %3 = tensor.empty() : tensor<5x3x15xi64>
    %4 = tensor.empty() : tensor<3x3xi1>
    %5 = tensor.empty() : tensor<5x3x15xi64>
    %6 = tensor.empty() : tensor<15x16xf16>
    %7 = tensor.empty() : tensor<5x16x5xf32>
    %8 = tensor.empty() : tensor<5x16x5xi64>
    %9 = tensor.empty() : tensor<15x16xf32>
    %10 = tensor.empty() : tensor<5x16x5xi1>
    %11 = tensor.empty() : tensor<3x3xi32>
    %12 = tensor.empty() : tensor<15x16xi16>
    %13 = tensor.empty() : tensor<5x16x5xf16>
    %14 = tensor.empty() : tensor<3x3xi64>
    %15 = tensor.empty() : tensor<5x16x5xi64>
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
    %alloc = memref.alloc() : memref<5x16x5xi32>
    %alloc_3 = memref.alloc() : memref<5x16x5xf32>
    %alloc_4 = memref.alloc() : memref<5x3x15xi32>
    %alloc_5 = memref.alloc() : memref<3x3xf32>
    %alloc_6 = memref.alloc() : memref<5x3x15xi16>
    %alloc_7 = memref.alloc() : memref<3x3xi1>
    %alloc_8 = memref.alloc() : memref<3x3xf16>
    %alloc_9 = memref.alloc() : memref<15x16xi32>
    %alloc_10 = memref.alloc() : memref<15x16xi32>
    %alloc_11 = memref.alloc() : memref<3x3xi16>
    %alloc_12 = memref.alloc() : memref<5x16x5xi1>
    %alloc_13 = memref.alloc() : memref<5x16x5xi1>
    %alloc_14 = memref.alloc() : memref<15x16xi32>
    %alloc_15 = memref.alloc() : memref<5x3x15xf16>
    %alloc_16 = memref.alloc() : memref<5x3x15xf32>
    %alloc_17 = memref.alloc() : memref<15x16xi1>
    %16 = tensor.empty() : tensor<5x16x5xf32>
    %17 = linalg.copy ins(%7 : tensor<5x16x5xf32>) outs(%16 : tensor<5x16x5xf32>) -> tensor<5x16x5xf32>
    %18 = tensor.empty() : tensor<16x15xf32>
    %transposed = linalg.transpose ins(%9 : tensor<15x16xf32>) outs(%18 : tensor<16x15xf32>) permutation = [1, 0] 
    %alloc_18 = memref.alloc() : memref<16xi64>
    linalg.reduce ins(%1 : tensor<15x16xi64>) outs(%alloc_18 : memref<16xi64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        memref.assume_alignment %alloc_3, 16 : memref<5x16x5xf32>
        memref.alloca_scope  {
          %275 = math.tan %2 : tensor<3x3xf16>
          %276 = affine.load %alloc[%c6, %c13, %c6] : memref<5x16x5xi32>
          %277 = vector.broadcast %c1809694973_i32 : i32 to vector<1xi32>
          %278 = vector.broadcast %c1220632730_i32 : i32 to vector<1xi32>
          %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %277, %278, %c1220632730_i32 : vector<1xi32>, vector<1xi32> into i32
          vector.print %277 : vector<1xi32>
          %280 = math.round %2 : tensor<3x3xf16>
          %false_40 = index.bool.constant false
          %281 = arith.ori %c1220632730_i32, %c1809694973_i32 : i32
          %282 = arith.negf %cst_1 : f32
          %283 = arith.divf %cst_0, %cst_2 : f32
          %collapsed_41 = tensor.collapse_shape %11 [[0, 1]] : tensor<3x3xi32> into tensor<9xi32>
          %false_42 = index.bool.constant false
          %284 = math.log10 %cst_1 : f32
          %285 = vector.create_mask %c3, %c7, %c15 : vector<5x16x5xi1>
          %286 = index.mul %c4, %c5
          %287 = index.maxu %c14, %286
          %288 = vector.transpose %277, [0] : vector<1xi32> to vector<1xi32>
          %289 = arith.maxsi %c-23574_i16, %c-15365_i16 : i16
          %290 = memref.realloc %alloc_18 : memref<16xi64> to memref<15xi64>
          %alloc_43 = memref.alloc() : memref<5x16x5xf16>
          %291 = vector.broadcast %cst : f16 to vector<15x16xf16>
          %292 = vector.broadcast %false_42 : i1 to vector<15x16xi1>
          %293 = vector.broadcast %276 : i32 to vector<15x16xi32>
          %294 = vector.gather %alloc_43[%c11, %c0, %c13] [%293], %292, %291 : memref<5x16x5xf16>, vector<15x16xi32>, vector<15x16xi1>, vector<15x16xf16> into vector<15x16xf16>
          %295 = bufferization.clone %alloc_8 : memref<3x3xf16> to memref<3x3xf16>
          %296 = vector.broadcast %c-12004_i16 : i16 to vector<3x3xi16>
          %297 = tensor.empty() : tensor<15x16xi32>
          %298 = math.fpowi %6, %297 : tensor<15x16xf16>, tensor<15x16xi32>
          %299 = arith.ceildivsi %c-523_i16, %c27644_i16 : i16
          %300 = math.absi %collapsed_41 : tensor<9xi32>
          %301 = vector.broadcast %c268195901_i64 : i64 to vector<5xi64>
          %302 = vector.broadcast %false : i1 to vector<5xi1>
          %303 = vector.maskedload %alloc_18[%c8], %302, %301 : memref<16xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
          %alloca_44 = memref.alloca() : memref<5x16x5xf32>
          %304 = math.powf %13, %13 : tensor<5x16x5xf16>
          %305 = math.atan %2 : tensor<3x3xf16>
          %306 = arith.negf %cst_0 : f32
          %307 = affine.max affine_map<(d0, d1, d2, d3) -> (((d0 * 2 + d2) mod 16) ceildiv 32, d3, d3, d2)>(%c12, %c13, %c10, %c11)
          %308 = arith.muli %c27644_i16, %c-523_i16 : i16
          %cast_45 = tensor.cast %10 : tensor<5x16x5xi1> to tensor<?x?x?xi1>
        }
        %alloca = memref.alloca() : memref<5x16x5xi64>
        %268 = math.ipowi %1, %1 : tensor<15x16xi64>
        %269 = vector.broadcast %c1 : index to vector<16xindex>
        %270 = vector.broadcast %false : i1 to vector<16xi1>
        %271 = vector.broadcast %c1809694973_i32 : i32 to vector<16xi32>
        vector.scatter %alloc_10[%c14, %c10] [%269], %270, %271 : memref<15x16xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
        %272 = math.floor %9 : tensor<15x16xf32>
        %273 = arith.andi %c268195901_i64, %init : i64
        %274 = arith.xori %c268195901_i64, %in : i64
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %19 = scf.parallel (%arg2, %arg3) = (%c12, %c4) to (%c9, %c15) step (%c15, %c7) init (%alloc_5) -> memref<3x3xf32> {
      %268 = math.copysign %7, %17 : tensor<5x16x5xf32>
      %rank_40 = tensor.rank %12 : tensor<15x16xi16>
      memref.alloca_scope  {
        %284 = arith.maxf %cst_1, %cst_2 : f32
        %rank_43 = tensor.rank %9 : tensor<15x16xf32>
        %285 = arith.remui %c-23574_i16, %c-12004_i16 : i16
        %286 = math.tan %13 : tensor<5x16x5xf16>
        %287 = arith.divsi %c-6735_i16, %c-15365_i16 : i16
        bufferization.dealloc_tensor %0 : tensor<5x3x15xi32>
        %288 = math.floor %7 : tensor<5x16x5xf32>
        %collapsed_44 = tensor.collapse_shape %1 [[0, 1]] : tensor<15x16xi64> into tensor<240xi64>
        %289 = math.cttz %0 : tensor<5x3x15xi32>
        %290 = math.atan %9 : tensor<15x16xf32>
        %291 = vector.broadcast %c268195901_i64 : i64 to vector<3x3xi64>
        %292 = vector.transpose %291, [0, 1] : vector<3x3xi64> to vector<3x3xi64>
        %293 = memref.realloc %alloc_18 : memref<16xi64> to memref<5xi64>
        %294 = math.ctlz %3 : tensor<5x3x15xi64>
        %295 = vector.bitcast %291 : vector<3x3xi64> to vector<3x3xi64>
        %296 = index.ceildivu %c10, %rank_40
        %297 = bufferization.clone %alloc_14 : memref<15x16xi32> to memref<15x16xi32>
        %298 = math.ceil %6 : tensor<15x16xf16>
        %299 = index.maxu %c0, %c9
        %300 = affine.load %alloc_8[%c9, %c14] : memref<3x3xf16>
        %301 = vector.broadcast %300 : f16 to vector<15x16xf16>
        %302 = vector.broadcast %true : i1 to vector<15x16xi1>
        %303 = vector.broadcast %c1809694973_i32 : i32 to vector<15x16xi32>
        %304 = vector.gather %alloc_15[%c2, %c7, %c15] [%303], %302, %301 : memref<5x3x15xf16>, vector<15x16xi32>, vector<15x16xi1>, vector<15x16xf16> into vector<15x16xf16>
        %305 = index.floordivs %c10, %rank_43
        %306 = memref.realloc %alloc_18 : memref<16xi64> to memref<3xi64>
        %307 = vector.create_mask %c9, %c0 : vector<15x16xi1>
        %308 = math.absf %7 : tensor<5x16x5xf32>
        %309 = math.log10 %13 : tensor<5x16x5xf16>
        memref.store %c1220632730_i32, %alloc_14[%c2, %c14] : memref<15x16xi32>
        %alloca_45 = memref.alloca() : memref<15x16xi1>
        %310 = math.ctlz %8 : tensor<5x16x5xi64>
        %311 = vector.broadcast %c15 : index to vector<15xindex>
        %312 = vector.broadcast %false : i1 to vector<15xi1>
        %313 = vector.broadcast %c1809694973_i32 : i32 to vector<15xi32>
        vector.scatter %297[%c0, %c8] [%311], %312, %313 : memref<15x16xi32>, vector<15xindex>, vector<15xi1>, vector<15xi32>
        %314 = index.casts %c1220632730_i32 : i32 to index
        %315 = arith.maxui %c1220632730_i32, %c1220632730_i32 : i32
        %rank_46 = tensor.rank %15 : tensor<5x16x5xi64>
      }
      %269 = vector.broadcast %cst : f16 to vector<15xf16>
      %270 = vector.broadcast %cst : f16 to vector<15x15xf16>
      %271 = vector.outerproduct %269, %269, %270 {kind = #vector.kind<mul>} : vector<15xf16>, vector<15xf16>
      %272 = arith.remf %cst_1, %cst_1 : f32
      %273 = arith.cmpf ule, %cst_2, %cst_0 : f32
      %274 = vector.broadcast %c27644_i16 : i16 to vector<1xi16>
      %275 = vector.extract_strided_slice %274 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi16> to vector<1xi16>
      %276 = affine.if affine_set<(d0) : ((((d0 ceildiv 128) mod 16) ceildiv 2) floordiv 2 == 0, -(d0 - (d0 ceildiv 128) mod 16 - 1) >= 0, d0 floordiv 128 == 0, (((d0 ceildiv 128) mod 16) ceildiv 2) floordiv 2 == 0)>(%c12) -> i32 {
        %collapsed_43 = tensor.collapse_shape %6 [[0, 1]] : tensor<15x16xf16> into tensor<240xf16>
        %284 = vector.shuffle %275, %275 [0, 1] : vector<1xi16>, vector<1xi16>
        %285 = math.absi %c27644_i16 : i16
        %286 = vector.matrix_multiply %274, %274 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
        %287 = math.cttz %5 : tensor<5x3x15xi64>
        %288 = arith.maxsi %c1809694973_i32, %c1809694973_i32 : i32
        %289 = vector.flat_transpose %275 {columns = 1 : i32, rows = 1 : i32} : vector<1xi16> -> vector<1xi16>
        %290 = index.maxs %c13, %c14
        affine.yield %c1220632730_i32 : i32
      } else {
        %284 = index.castu %c268195901_i64 : i64 to index
        %285 = arith.subi %c-15365_i16, %c-23574_i16 : i16
        %286 = bufferization.clone %alloc_11 : memref<3x3xi16> to memref<3x3xi16>
        %287 = math.log1p %cst_1 : f32
        %alloc_43 = memref.alloc() : memref<15x16xi16>
        memref.tensor_store %12, %alloc_43 : memref<15x16xi16>
        %288 = index.mul %c9, %c12
        %289 = index.divu %c2, %c6
        %290 = arith.xori %c38605508_i32, %c38605508_i32 : i32
        affine.yield %c1220632730_i32 : i32
      }
      %alloca = memref.alloca() : memref<15x16xf32>
      %277 = vector.broadcast %true : i1 to vector<3x3xi1>
      %278 = vector.broadcast %c38605508_i32 : i32 to vector<3x3xi32>
      %279 = vector.gather %alloc_7[%c12, %c10] [%278], %277, %277 : memref<3x3xi1>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi1> into vector<3x3xi1>
      %280 = math.tanh %6 : tensor<15x16xf16>
      %281 = tensor.empty() : tensor<3x3xi16>
      %282 = affine.max affine_map<(d0, d1, d2, d3) -> ((d1 + d0 - d0) * 8, d0, d3 mod 32)>(%c5, %c14, %c14, %c1)
      %rank_41 = tensor.rank %18 : tensor<16x15xf32>
      memref.tensor_store %7, %alloc_3 : memref<5x16x5xf32>
      %283 = affine.max affine_map<(d0, d1, d2) -> (d0 + 16, d1)>(%c3, %c8, %c1)
      %alloc_42 = memref.alloc() : memref<3x3xf32>
      scf.reduce(%alloc_42)  : memref<3x3xf32> {
      ^bb0(%arg4: memref<3x3xf32>, %arg5: memref<3x3xf32>):
        %from_elements_43 = tensor.from_elements %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64 : tensor<5x16x5xi64>
        %284 = bufferization.clone %alloc_14 : memref<15x16xi32> to memref<15x16xi32>
        %285 = arith.maxui %c-12004_i16, %c-15365_i16 : i16
        %286 = vector.multi_reduction <minsi>, %274, %275 [] : vector<1xi16> to vector<1xi16>
        %splat_44 = tensor.splat %cst_1 : tensor<5x16x5xf32>
        %287 = memref.realloc %alloc_18 : memref<16xi64> to memref<3xi64>
        %288 = vector.broadcast %c-15365_i16 : i16 to vector<1x1xi16>
        %289 = vector.outerproduct %275, %275, %288 {kind = #vector.kind<xor>} : vector<1xi16>, vector<1xi16>
        %290 = vector.broadcast %c268195901_i64 : i64 to vector<5x16x5xi64>
        %291 = vector.broadcast %false : i1 to vector<5x16x5xi1>
        %292 = vector.broadcast %c1220632730_i32 : i32 to vector<5x16x5xi32>
        %293 = vector.gather %1[%c4, %c5] [%292], %291, %290 : tensor<15x16xi64>, vector<5x16x5xi32>, vector<5x16x5xi1>, vector<5x16x5xi64> into vector<5x16x5xi64>
        %alloc_45 = memref.alloc() : memref<3x3xf32>
        scf.reduce.return %alloc_45 : memref<3x3xf32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc[%c9, %c7, %c13] : memref<5x16x5xi32>, vector<15xi32>
    affine.vector_store %20, %alloc_10[%c13, %c13] : memref<15x16xi32>, vector<15xi32>
    %alloc_19 = memref.alloc() : memref<16xi64>
    %21 = tensor.empty() : tensor<i64>
    %22 = linalg.dot ins(%alloc_18, %alloc_19 : memref<16xi64>, memref<16xi64>) outs(%21 : tensor<i64>) -> tensor<i64>
    %23 = index.mul %c0, %c0
    %24 = math.tan %9 : tensor<15x16xf32>
    %25 = arith.remui %c-6735_i16, %c-23574_i16 : i16
    %26 = vector.shuffle %20, %20 [3, 5, 6, 8, 10, 12, 13, 18, 20, 21, 23, 24, 25, 27, 28, 29] : vector<15xi32>, vector<15xi32>
    memref.alloca_scope  {
      %268 = index.maxu %c7, %c7
      %269 = arith.ceildivsi %false, %true : i1
      %270 = vector.broadcast %c1220632730_i32 : i32 to vector<15x15xi32>
      %271 = vector.outerproduct %20, %20, %270 {kind = #vector.kind<mul>} : vector<15xi32>, vector<15xi32>
      %272 = affine.max affine_map<(d0, d1, d2) -> (-d1 + d2)>(%c0, %c5, %c12)
      %273 = tensor.empty() : tensor<3x3xf32>
      %mapped = linalg.map ins(%alloc_5, %alloc_5, %alloc_5 : memref<3x3xf32>, memref<3x3xf32>, memref<3x3xf32>) outs(%273 : tensor<3x3xf32>)
        (%in: f32, %in_41: f32, %in_42: f32) {
          %300 = arith.divsi %c268195901_i64, %c268195901_i64 : i64
          %301 = bufferization.to_tensor %alloc_6 : memref<5x3x15xi16>
          %302 = math.absf %in : f32
          %303 = vector.broadcast %cst : f16 to vector<3xf16>
          %304 = vector.broadcast %false : i1 to vector<3xi1>
          %305 = vector.maskedload %alloc_15[%c2, %c1, %c6], %304, %303 : memref<5x3x15xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
          %306 = index.floordivs %c11, %c4
          %307 = tensor.empty() : tensor<5x16x5xi1>
          %308 = affine.max affine_map<(d0, d1, d2) -> (d1, d2 * 32, d1 + 128, d1 - 122)>(%c13, %c0, %c3)
          %309 = arith.cmpf false, %cst, %cst : f16
          %310 = vector.broadcast %cst : f16 to vector<3x3xf16>
          %311 = vector.outerproduct %303, %303, %310 {kind = #vector.kind<add>} : vector<3xf16>, vector<3xf16>
          %312 = bufferization.clone %alloc_7 : memref<3x3xi1> to memref<3x3xi1>
          %313 = math.ctpop %c268195901_i64 : i64
          %314 = arith.mulf %cst_0, %in : f32
          %315 = arith.andi %c1809694973_i32, %c1809694973_i32 : i32
          %316 = vector.broadcast %c3 : index to vector<16xindex>
          %317 = vector.broadcast %true : i1 to vector<16xi1>
          %318 = vector.broadcast %c1809694973_i32 : i32 to vector<16xi32>
          vector.scatter %alloc_4[%c2, %c2, %c13] [%316], %317, %318 : memref<5x3x15xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
          %319 = arith.negf %in_41 : f32
          %inserted_43 = tensor.insert %c268195901_i64 into %8[%c0, %c5, %c3] : tensor<5x16x5xi64>
          %from_elements_44 = tensor.from_elements %c-15365_i16, %c-6735_i16, %c-523_i16, %c-15365_i16, %c27644_i16, %c-6735_i16, %c-12004_i16, %c-15365_i16, %c-23574_i16 : tensor<3x3xi16>
          %320 = arith.divsi %false, %false : i1
          %321 = vector.shuffle %304, %304 [1, 2, 3, 5] : vector<3xi1>, vector<3xi1>
          bufferization.dealloc_tensor %4 : tensor<3x3xi1>
          %322 = vector.broadcast %308 : index to vector<5xindex>
          %323 = vector.broadcast %true : i1 to vector<5xi1>
          %324 = vector.broadcast %c268195901_i64 : i64 to vector<5xi64>
          vector.scatter %alloc_19[%c9] [%322], %323, %324 : memref<16xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
          %325 = vector.matrix_multiply %305, %303 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xf16>, vector<3xf16>) -> vector<1xf16>
          %326 = index.maxu %c15, %c4
          affine.store %c-23574_i16, %alloc_11[%c13, %c1] : memref<3x3xi16>
          %327 = math.atan %13 : tensor<5x16x5xf16>
          %328 = index.add %306, %308
          %329 = memref.realloc %alloc_19 : memref<16xi64> to memref<5xi64>
          %330 = math.fpowi %in_42, %c1809694973_i32 : f32, i32
          %false_45 = index.bool.constant false
          %331 = vector.multi_reduction <add>, %305, %cst [0] : vector<3xf16> to f16
          %332 = affine.max affine_map<(d0) -> (d0 * 32 + 16, d0 * -60, d0 * 32 + 16, 0)>(%c4)
          %333 = arith.maxf %cst_0, %in_42 : f32
          %cst_46 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_46 : f32
        }
      %274 = math.ipowi %c1809694973_i32, %c1809694973_i32 : i32
      %275 = vector.bitcast %20 : vector<15xi32> to vector<15xi32>
      %alloc_40 = memref.alloc() : memref<15x16xi64>
      %276 = vector.broadcast %c268195901_i64 : i64 to vector<3x3xi64>
      %277 = vector.broadcast %true : i1 to vector<3x3xi1>
      %278 = vector.broadcast %c1220632730_i32 : i32 to vector<3x3xi32>
      %279 = vector.gather %alloc_40[%268, %c3] [%278], %277, %276 : memref<15x16xi64>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi64> into vector<3x3xi64>
      %280 = affine.for %arg2 = 0 to 64 iter_args(%arg3 = %true) -> (i1) {
        affine.yield %false : i1
      }
      %281 = math.log1p %6 : tensor<15x16xf16>
      %282 = arith.remf %cst_2, %cst_2 : f32
      %283 = arith.minui %c38605508_i32, %c38605508_i32 : i32
      %284 = arith.maxui %c-6735_i16, %c-15365_i16 : i16
      %285 = math.ipowi %0, %0 : tensor<5x3x15xi32>
      %286 = arith.maxui %c27644_i16, %c-12004_i16 : i16
      affine.store %false, %alloc_12[%c12, %c9, %c9] : memref<5x16x5xi1>
      %287 = arith.remui %c27644_i16, %c-15365_i16 : i16
      %288 = vector.splat %c10 : vector<3x3xindex>
      %289 = arith.remf %cst_0, %cst_2 : f32
      affine.store %true, %alloc_13[%c11, %c4, %c4] : memref<5x16x5xi1>
      %290 = vector.create_mask %c5, %c3 : vector<3x3xi1>
      %291 = math.atan %2 : tensor<3x3xf16>
      %292 = tensor.empty(%272) : tensor<?x16x5xi16>
      %293 = math.floor %16 : tensor<5x16x5xf32>
      scf.if %true {
        %from_elements_41 = tensor.from_elements %c-15365_i16, %c-6735_i16, %c-523_i16, %c-23574_i16, %c-15365_i16, %c-523_i16, %c-23574_i16, %c-23574_i16, %c-15365_i16, %c-6735_i16, %c-23574_i16, %c-12004_i16, %c-6735_i16, %c-15365_i16, %c-6735_i16, %c27644_i16, %c-523_i16, %c-23574_i16, %c-523_i16, %c-6735_i16, %c-23574_i16, %c-15365_i16, %c-523_i16, %c-6735_i16, %c27644_i16, %c-523_i16, %c-523_i16, %c27644_i16, %c-15365_i16, %c27644_i16, %c-523_i16, %c-15365_i16, %c-23574_i16, %c-6735_i16, %c-523_i16, %c-6735_i16, %c-12004_i16, %c-15365_i16, %c-23574_i16, %c-523_i16, %c27644_i16, %c-523_i16, %c-23574_i16, %c27644_i16, %c-23574_i16, %c-23574_i16, %c-6735_i16, %c-15365_i16, %c-6735_i16, %c-6735_i16, %c27644_i16, %c-6735_i16, %c-12004_i16, %c-15365_i16, %c-6735_i16, %c-15365_i16, %c-15365_i16, %c27644_i16, %c-6735_i16, %c-6735_i16, %c-523_i16, %c-23574_i16, %c-23574_i16, %c-523_i16, %c-12004_i16, %c-12004_i16, %c-523_i16, %c-12004_i16, %c-523_i16, %c-15365_i16, %c-523_i16, %c-15365_i16, %c-523_i16, %c-15365_i16, %c-12004_i16, %c-12004_i16, %c-12004_i16, %c-523_i16, %c27644_i16, %c-6735_i16, %c-23574_i16, %c27644_i16, %c-23574_i16, %c27644_i16, %c-23574_i16, %c-23574_i16, %c-6735_i16, %c-15365_i16, %c-6735_i16, %c-6735_i16, %c-523_i16, %c27644_i16, %c-12004_i16, %c-6735_i16, %c-523_i16, %c-6735_i16, %c-6735_i16, %c-12004_i16, %c-6735_i16, %c-6735_i16, %c-23574_i16, %c-523_i16, %c-23574_i16, %c-15365_i16, %c-6735_i16, %c27644_i16, %c-12004_i16, %c-6735_i16, %c-523_i16, %c-12004_i16, %c-12004_i16, %c27644_i16, %c-6735_i16, %c-12004_i16, %c-523_i16, %c-23574_i16, %c-23574_i16, %c-12004_i16, %c-523_i16, %c-523_i16, %c-12004_i16, %c27644_i16, %c-523_i16, %c-12004_i16, %c27644_i16, %c27644_i16, %c-12004_i16, %c-523_i16, %c-23574_i16, %c-6735_i16, %c-6735_i16, %c-23574_i16, %c-12004_i16, %c-523_i16, %c-12004_i16, %c-523_i16, %c-12004_i16, %c-23574_i16, %c-6735_i16, %c-6735_i16, %c-6735_i16, %c-523_i16, %c-15365_i16, %c-523_i16, %c-523_i16, %c-523_i16, %c-23574_i16, %c-15365_i16, %c-23574_i16, %c-6735_i16, %c-12004_i16, %c-23574_i16, %c-523_i16, %c-6735_i16, %c27644_i16, %c-523_i16, %c-12004_i16, %c-12004_i16, %c-6735_i16, %c-6735_i16, %c-23574_i16, %c-6735_i16, %c-15365_i16, %c-23574_i16, %c-6735_i16, %c-15365_i16, %c-523_i16, %c-523_i16, %c-23574_i16, %c-23574_i16, %c-6735_i16, %c-23574_i16, %c-15365_i16, %c-12004_i16, %c-15365_i16, %c-15365_i16, %c-23574_i16, %c27644_i16, %c-15365_i16, %c27644_i16, %c-12004_i16, %c-12004_i16, %c-15365_i16, %c-15365_i16, %c27644_i16, %c-523_i16, %c-523_i16, %c-23574_i16, %c27644_i16, %c-23574_i16, %c-15365_i16, %c-15365_i16, %c-6735_i16, %c27644_i16, %c-12004_i16, %c-523_i16, %c-15365_i16, %c-6735_i16, %c27644_i16, %c-23574_i16, %c27644_i16, %c-15365_i16, %c-15365_i16, %c-15365_i16, %c27644_i16, %c-6735_i16, %c-23574_i16, %c27644_i16, %c-6735_i16, %c-23574_i16, %c-523_i16, %c-23574_i16, %c-523_i16, %c-6735_i16, %c-12004_i16, %c27644_i16, %c27644_i16, %c-23574_i16, %c27644_i16, %c-23574_i16, %c-15365_i16, %c-23574_i16, %c-23574_i16, %c-6735_i16, %c27644_i16, %c27644_i16, %c-6735_i16, %c-23574_i16, %c27644_i16, %c-15365_i16, %c-12004_i16, %c-523_i16, %c-23574_i16, %c-523_i16, %c-23574_i16, %c-6735_i16, %c27644_i16, %c-15365_i16, %c-15365_i16, %c27644_i16 : tensor<15x16xi16>
        %300 = vector.load %alloc_3[%c0, %c9, %c1] : memref<5x16x5xf32>, vector<3x3xf32>
        %301 = vector.bitcast %279 : vector<3x3xi64> to vector<3x3xi64>
        %302 = arith.remui %false, %true : i1
        %303 = vector.shuffle %275, %20 [1, 5, 6, 13, 16, 17, 18, 19, 20, 22, 23, 24, 27, 28, 29] : vector<15xi32>, vector<15xi32>
        %304 = arith.xori %c27644_i16, %c-23574_i16 : i16
        %305 = math.absi %4 : tensor<3x3xi1>
        %306 = affine.max affine_map<(d0) -> (-(d0 * 2 + 128), d0 - 125)>(%268)
      }
      %294 = arith.negf %cst_2 : f32
      %295 = math.fpowi %273, %11 : tensor<3x3xf32>, tensor<3x3xi32>
      %296 = arith.shli %c-23574_i16, %c-15365_i16 : i16
      memref.assume_alignment %alloc_8, 1 : memref<3x3xf16>
      %297 = arith.ceildivsi %c1220632730_i32, %c38605508_i32 : i32
      %298 = arith.minui %true, %false : i1
      %299 = arith.shli %true, %true : i1
    }
    %27 = math.log1p %transposed : tensor<16x15xf32>
    %28 = arith.divui %c268195901_i64, %c268195901_i64 : i64
    memref.store %true, %alloc_12[%c3, %c2, %c4] : memref<5x16x5xi1>
    memref.alloca_scope  {
      %false_40 = index.bool.constant false
      %expanded_41 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<15x16xf32> into tensor<15x16x1xf32>
      %268 = math.rsqrt %17 : tensor<5x16x5xf32>
      %269 = arith.xori %c27644_i16, %c-6735_i16 : i16
      %270 = vector.reduction <maxsi>, %20 : vector<15xi32> into i32
      %271 = arith.maxf %cst_1, %cst_0 : f32
      %272 = tensor.empty(%c0, %c3) : tensor<?x?xi1>
      %273 = math.tanh %2 : tensor<3x3xf16>
      %false_42 = index.bool.constant false
      memref.assume_alignment %alloc, 4 : memref<5x16x5xi32>
      %274 = index.floordivs %c9, %c14
      %275 = math.roundeven %cst_0 : f32
      memref.alloca_scope  {
        affine.store %c1809694973_i32, %alloc_10[%c2, %c3] : memref<15x16xi32>
        %300 = math.absf %13 : tensor<5x16x5xf16>
        %301 = vector.broadcast %c-12004_i16 : i16 to vector<15x5xi16>
        %302 = vector.broadcast %c27644_i16 : i16 to vector<15xi16>
        %dest_44, %accumulated_value_45 = vector.scan <maxui>, %301, %302 {inclusive = false, reduction_dim = 1 : i64} : vector<15x5xi16>, vector<15xi16>
        %303 = tensor.empty() : tensor<15x16x1xi32>
        %304 = math.fpowi %expanded_41, %303 : tensor<15x16x1xf32>, tensor<15x16x1xi32>
        %305 = vector.broadcast %c38605508_i32 : i32 to vector<3xi32>
        %306 = vector.broadcast %false_40 : i1 to vector<3xi1>
        %307 = vector.maskedload %alloc_14[%c4, %c2], %306, %305 : memref<15x16xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
        %308 = math.rsqrt %7 : tensor<5x16x5xf32>
        %309 = arith.xori %c-15365_i16, %c-523_i16 : i16
        %310 = math.copysign %cst_1, %cst_0 : f32
        %311 = arith.muli %c-12004_i16, %c-23574_i16 : i16
        %312 = arith.muli %c-523_i16, %c-6735_i16 : i16
        bufferization.dealloc_tensor %11 : tensor<3x3xi32>
        %313 = math.ceil %13 : tensor<5x16x5xf16>
        %314 = math.cos %13 : tensor<5x16x5xf16>
        %315 = math.log %13 : tensor<5x16x5xf16>
        affine.store %c1809694973_i32, %alloc_9[%c0, %c7] : memref<15x16xi32>
        %316 = affine.load %alloc_17[%c15, %c9] : memref<15x16xi1>
        %317 = vector.bitcast %20 : vector<15xi32> to vector<15xi32>
        %318 = arith.negf %cst_1 : f32
        %319 = math.absf %7 : tensor<5x16x5xf32>
        %320 = math.tan %6 : tensor<15x16xf16>
        %321 = tensor.empty(%c11) : tensor<5x?x5xi1>
        %322 = affine.min affine_map<(d0, d1, d2) -> (d0 - 2, d1 + 8, d0)>(%c9, %c5, %23)
        %323 = arith.negf %cst : f16
        %324 = math.round %17 : tensor<5x16x5xf32>
        %325 = affine.apply affine_map<(d0) -> (0)>(%c1)
        %326 = arith.divui %false, %316 : i1
        %327 = memref.load %alloc[%c4, %c2, %c0] : memref<5x16x5xi32>
        %328 = index.ceildivs %c13, %c0
        %329 = vector.extract %317[9] : vector<15xi32>
        %330 = vector.broadcast %cst : f16 to vector<16x16xf16>
        %331 = vector.broadcast %cst : f16 to vector<16xf16>
        %dest_46, %accumulated_value_47 = vector.scan <minf>, %330, %331 {inclusive = false, reduction_dim = 0 : i64} : vector<16x16xf16>, vector<16xf16>
        %332 = vector.insert %316, %306 [1] : i1 into vector<3xi1>
        %false_48 = index.bool.constant false
      }
      %276 = vector.broadcast %true : i1 to vector<16xi1>
      %277 = vector.maskedload %alloc_13[%c3, %c15, %c2], %276, %276 : memref<5x16x5xi1>, vector<16xi1>, vector<16xi1> into vector<16xi1>
      %278 = math.absf %16 : tensor<5x16x5xf32>
      %279 = vector.reduction <minui>, %276 : vector<16xi1> into i1
      %280 = vector.multi_reduction <maxsi>, %276, %false [0] : vector<16xi1> to i1
      %281 = vector.extract %20[3] : vector<15xi32>
      %282 = vector.broadcast %c27644_i16 : i16 to vector<16x15x16xi16>
      %283 = vector.broadcast %c-23574_i16 : i16 to vector<15x16xi16>
      %dest, %accumulated_value = vector.scan <minsi>, %282, %283 {inclusive = false, reduction_dim = 0 : i64} : vector<16x15x16xi16>, vector<15x16xi16>
      %284 = arith.maxf %cst_2, %cst_2 : f32
      %285 = index.floordivs %c10, %c14
      %286 = vector.transpose %20, [0] : vector<15xi32> to vector<15xi32>
      %287 = index.divs %285, %c12
      %inserted_43 = tensor.insert %c268195901_i64 into %5[%c0, %c0, %c14] : tensor<5x3x15xi64>
      %288 = arith.minsi %c-15365_i16, %c-12004_i16 : i16
      %289 = math.rsqrt %6 : tensor<15x16xf16>
      %290 = math.sqrt %cst : f16
      %291 = vector.broadcast %cst_0 : f32 to vector<15x16xf32>
      %292 = vector.broadcast %280 : i1 to vector<15x16xi1>
      %293 = vector.broadcast %c38605508_i32 : i32 to vector<15x16xi32>
      %294 = vector.gather %alloc_3[%c8, %c11, %c0] [%293], %292, %291 : memref<5x16x5xf32>, vector<15x16xi32>, vector<15x16xi1>, vector<15x16xf32> into vector<15x16xf32>
      %295 = vector.broadcast %cst_2 : f32 to vector<5x16x5xf32>
      %296 = vector.fma %295, %295, %295 : vector<5x16x5xf32>
      %297 = math.absi %4 : tensor<3x3xi1>
      %298 = tensor.empty(%c5, %c12) : tensor<?x?x5xf16>
      %299 = arith.maxui %c268195901_i64, %c268195901_i64 : i64
    }
    %29 = math.exp %cst : f16
    %30 = index.maxu %c3, %c15
    %31 = arith.muli %c-6735_i16, %c-15365_i16 : i16
    %expanded = tensor.expand_shape %2 [[0], [1, 2]] : tensor<3x3xf16> into tensor<3x3x1xf16>
    %32 = vector.broadcast %cst_2 : f32 to vector<15x16xf32>
    %33 = vector.fma %32, %32, %32 : vector<15x16xf32>
    %34 = math.absf %cst_2 : f32
    %35 = vector.extract_strided_slice %32 {offsets = [11], sizes = [1], strides = [1]} : vector<15x16xf32> to vector<1x16xf32>
    %36 = arith.remui %c-6735_i16, %c-23574_i16 : i16
    %37 = arith.addf %cst_1, %cst_2 : f32
    %38 = arith.shrui %c38605508_i32, %c1809694973_i32 : i32
    %39 = tensor.empty() : tensor<16x15xi32>
    %40 = math.fpowi %18, %39 : tensor<16x15xf32>, tensor<16x15xi32>
    %from_elements = tensor.from_elements %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst : tensor<5x16x5xf16>
    %41 = vector.splat %c-523_i16 : vector<15x16xi16>
    %42 = affine.if affine_set<(d0) : ((((d0 ceildiv 128) mod 16) ceildiv 2) floordiv 2 == 0, -(d0 - (d0 ceildiv 128) mod 16 - 1) >= 0, d0 floordiv 128 == 0, (((d0 ceildiv 128) mod 16) ceildiv 2) floordiv 2 == 0)>(%c12) -> memref<5x16x5xf16> {
      %268 = math.ipowi %1, %1 : tensor<15x16xi64>
      %rank_40 = tensor.rank %3 : tensor<5x3x15xi64>
      %269 = math.fpowi %2, %11 : tensor<3x3xf16>, tensor<3x3xi32>
      %270 = math.copysign %cst_2, %cst_1 : f32
      %271 = arith.addi %c-15365_i16, %c27644_i16 : i16
      %expanded_41 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<15x16xf16> into tensor<15x16x1xf16>
      %272 = arith.floordivsi %c1809694973_i32, %c1809694973_i32 : i32
      %273 = arith.shrsi %c-12004_i16, %c-15365_i16 : i16
      %alloc_42 = memref.alloc() : memref<5x16x5xf16>
      affine.yield %alloc_42 : memref<5x16x5xf16>
    } else {
      %268 = scf.while (%arg2 = %c1220632730_i32) : (i32) -> i32 {
        %274 = vector.reduction <or>, %20 : vector<15xi32> into i32
        %275 = arith.andi %arg2, %c1220632730_i32 : i32
        %276 = math.atan %18 : tensor<16x15xf32>
        %277 = bufferization.to_tensor %alloc_19 : memref<16xi64>
        %278 = arith.divsi %c-15365_i16, %c-12004_i16 : i16
        %279 = math.tanh %9 : tensor<15x16xf32>
        %280 = affine.min affine_map<(d0, d1) -> (d1, -(d0 - 1), d0 * 32, -d1)>(%c9, %c2)
        %281 = index.maxu %30, %c7
        scf.condition(%true) %arg2 : i32
      } do {
      ^bb0(%arg2: i32):
        %274 = tensor.empty() : tensor<15x16xi32>
        %275 = math.fpowi %6, %274 : tensor<15x16xf16>, tensor<15x16xi32>
        %276 = vector.broadcast %arg2 : i32 to vector<15x15xi32>
        %277 = vector.outerproduct %20, %20, %276 {kind = #vector.kind<xor>} : vector<15xi32>, vector<15xi32>
        %278 = vector.insertelement %c1809694973_i32, %20[%c2 : index] : vector<15xi32>
        %279 = math.ctlz %15 : tensor<5x16x5xi64>
        %from_elements_43 = tensor.from_elements %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64 : tensor<15x16xi64>
        %280 = math.roundeven %cst_2 : f32
        %281 = arith.andi %c1809694973_i32, %arg2 : i32
        %282 = vector.broadcast %arg2 : i32 to vector<16xi32>
        %283 = vector.broadcast %false : i1 to vector<16xi1>
        %284 = vector.maskedload %alloc_14[%c13, %c12], %283, %282 : memref<15x16xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
        %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %282, %284, %arg2 : vector<16xi32>, vector<16xi32> into i32
        %splat_44 = tensor.splat %c-12004_i16 : tensor<5x3x15xi16>
        %inserted_45 = tensor.insert %c268195901_i64 into %1[%c7, %c6] : tensor<15x16xi64>
        %286 = bufferization.to_tensor %alloc_8 : memref<3x3xf16>
        %287 = arith.divsi %true, %false : i1
        %288 = vector.flat_transpose %282 {columns = 4 : i32, rows = 4 : i32} : vector<16xi32> -> vector<16xi32>
        %289 = arith.shrui %c268195901_i64, %c268195901_i64 : i64
        %290 = arith.minui %c-23574_i16, %c-15365_i16 : i16
        scf.yield %c1809694973_i32 : i32
      }
      vector.print %35 : vector<1x16xf32>
      %269 = tensor.empty(%c10) : tensor<3x?xf16>
      %270 = vector.broadcast %true : i1 to vector<15xi1>
      %271 = vector.maskedload %alloc_14[%c2, %c8], %270, %20 : memref<15x16xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
      %272 = arith.cmpf olt, %cst, %cst : f16
      %273 = vector.flat_transpose %20 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
      %splat_40 = tensor.splat %cst_2 : tensor<3x3xf32>
      %rank_41 = tensor.rank %7 : tensor<5x16x5xf32>
      %alloc_42 = memref.alloc() : memref<5x16x5xf16>
      affine.yield %alloc_42 : memref<5x16x5xf16>
    }
    %43 = arith.maxui %c1220632730_i32, %c1220632730_i32 : i32
    %44 = arith.remf %cst_1, %cst_2 : f32
    %45 = bufferization.clone %alloc_5 : memref<3x3xf32> to memref<3x3xf32>
    %46 = vector.multi_reduction <maxsi>, %20, %c38605508_i32 [0] : vector<15xi32> to i32
    %47 = vector.create_mask %c0, %c8 : vector<3x3xi1>
    %48 = arith.remf %cst_0, %cst_0 : f32
    %49 = arith.minui %c1220632730_i32, %c1809694973_i32 : i32
    %50 = math.cos %9 : tensor<15x16xf32>
    %51 = math.roundeven %cst_1 : f32
    %52 = affine.if affine_set<(d0, d1, d2) : (d0 * 2 == 0)>(%c0, %c12, %c15) -> i32 {
      %268 = affine.for %arg2 = 0 to 51 iter_args(%arg3 = %c9) -> (index) {
        affine.yield %c2 : index
      }
      bufferization.dealloc_tensor %14 : tensor<3x3xi64>
      %269 = math.absi %1 : tensor<15x16xi64>
      %270 = math.roundeven %13 : tensor<5x16x5xf16>
      %rank_40 = tensor.rank %22 : tensor<i64>
      %271 = vector.create_mask %c10, %rank_40 : vector<15x16xi1>
      %272 = arith.remui %c-23574_i16, %c-12004_i16 : i16
      %273 = arith.divui %c-12004_i16, %c-12004_i16 : i16
      affine.yield %c1809694973_i32 : i32
    } else {
      %268 = math.rsqrt %7 : tensor<5x16x5xf32>
      %269 = index.mul %c14, %c11
      %270 = arith.maxsi %46, %c38605508_i32 : i32
      %271 = arith.ceildivsi %c1220632730_i32, %c1809694973_i32 : i32
      %272 = affine.if affine_set<(d0, d1) : (-(d1 + d0) >= 0, (-d1 - (d1 + d0)) * -7 - 128 >= 0, d1 + d0 - 4 >= 0)>(%c7, %c10) -> memref<3x3xi16> {
        %275 = memref.realloc %alloc_19 : memref<16xi64> to memref<16xi64>
        %collapsed_41 = tensor.collapse_shape %39 [[0, 1]] : tensor<16x15xi32> into tensor<240xi32>
        %276 = vector.matrix_multiply %20, %20 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
        %277 = vector.bitcast %35 : vector<1x16xf32> to vector<1x16xf32>
        %278 = math.atan %13 : tensor<5x16x5xf16>
        %279 = affine.max affine_map<(d0, d1) -> (d1 mod 128 + 2, (d1 + d0 + d1 mod 128 + 2) mod 8, d1 mod 128 + 2, (d1 + d0) mod 64)>(%269, %c3)
        %280 = math.fpowi %cst, %c1809694973_i32 : f16, i32
        %collapsed_42 = tensor.collapse_shape %12 [[0, 1]] : tensor<15x16xi16> into tensor<240xi16>
        affine.yield %alloc_11 : memref<3x3xi16>
      } else {
        %275 = bufferization.to_memref %13 : memref<5x16x5xf16>
        %276 = arith.xori %46, %c1809694973_i32 : i32
        %277 = memref.load %alloc_9[%c3, %c6] : memref<15x16xi32>
        %278 = arith.andi %false, %false : i1
        %alloc_41 = memref.alloc() : memref<16x5xi64>
        %279 = tensor.empty() : tensor<15x5xi64>
        %280 = linalg.matmul ins(%1, %alloc_41 : tensor<15x16xi64>, memref<16x5xi64>) outs(%279 : tensor<15x5xi64>) -> tensor<15x5xi64>
        %281 = arith.shrui %c-6735_i16, %c-6735_i16 : i16
        %282 = arith.muli %c-12004_i16, %c-15365_i16 : i16
        %283 = vector.splat %c27644_i16 : vector<15x16xi16>
        affine.yield %alloc_11 : memref<3x3xi16>
      }
      %273 = math.atan %transposed : tensor<16x15xf32>
      %cast_40 = tensor.cast %9 : tensor<15x16xf32> to tensor<?x?xf32>
      %274 = arith.shrui %c1809694973_i32, %c1809694973_i32 : i32
      affine.yield %c1809694973_i32 : i32
    }
    %53 = math.absi %10 : tensor<5x16x5xi1>
    %inserted = tensor.insert %false into %10[%c1, %c6, %c2] : tensor<5x16x5xi1>
    %54 = vector.create_mask %c14, %c3 : vector<3x3xi1>
    %55 = vector.insertelement %c1220632730_i32, %20[%c6 : index] : vector<15xi32>
    %56 = math.tanh %9 : tensor<15x16xf32>
    %collapsed = tensor.collapse_shape %11 [[0, 1]] : tensor<3x3xi32> into tensor<9xi32>
    %from_elements_20 = tensor.from_elements %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64 : tensor<5x16x5xi64>
    %57 = vector.create_mask %c0, %c6 : vector<15x16xi1>
    %58 = vector.bitcast %47 : vector<3x3xi1> to vector<3x3xi1>
    %59 = vector.create_mask %23, %c15, %c9 : vector<5x3x15xi1>
    %60 = math.floor %2 : tensor<3x3xf16>
    %61 = index.floordivs %c14, %c6
    %62 = math.tan %7 : tensor<5x16x5xf32>
    %63 = index.mul %c10, %c7
    %64 = arith.maxui %c1809694973_i32, %c1220632730_i32 : i32
    %65 = math.tanh %7 : tensor<5x16x5xf32>
    %66 = scf.index_switch %61 -> index 
    case 1 {
      %268 = math.floor %expanded : tensor<3x3x1xf16>
      %269 = vector.broadcast %c1809694973_i32 : i32 to vector<15x15xi32>
      %270 = vector.outerproduct %20, %20, %269 {kind = #vector.kind<and>} : vector<15xi32>, vector<15xi32>
      %271 = arith.divui %c-523_i16, %c-23574_i16 : i16
      %272 = arith.divui %c-523_i16, %c-523_i16 : i16
      %273 = math.tanh %7 : tensor<5x16x5xf32>
      %274 = arith.minf %cst_1, %cst_1 : f32
      %275 = vector.broadcast %false : i1 to vector<16x16xi1>
      %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %57, %57, %275 : vector<15x16xi1>, vector<15x16xi1> into vector<16x16xi1>
      %277 = vector.create_mask %c12, %c6 : vector<3x3xi1>
      %278 = index.add %c8, %c1
      %279 = index.castu %46 : i32 to index
      %alloc_40 = memref.alloc() : memref<15x16xi16>
      memref.tensor_store %12, %alloc_40 : memref<15x16xi16>
      %280 = arith.shrui %c1809694973_i32, %c1220632730_i32 : i32
      %cast_41 = tensor.cast %collapsed : tensor<9xi32> to tensor<?xi32>
      %281 = tensor.empty() : tensor<15x16xf16>
      %282 = index.mul %c10, %c7
      %283 = math.absi %15 : tensor<5x16x5xi64>
      scf.yield %c7 : index
    }
    case 2 {
      %268 = arith.andi %c268195901_i64, %c268195901_i64 : i64
      %269 = affine.if affine_set<(d0) : ((d0 ceildiv 16) mod 8 - d0 ceildiv 16 >= 0, (d0 ceildiv 16) mod 16 + d0 == 0)>(%c2) -> memref<5x3x15xi1> {
        %280 = vector.bitcast %54 : vector<3x3xi1> to vector<3x3xi1>
        %281 = math.atan2 %7, %17 : tensor<5x16x5xf32>
        %282 = vector.reduction <maxsi>, %20 : vector<15xi32> into i32
        %283 = vector.broadcast %c1220632730_i32 : i32 to vector<3x3xi32>
        %284 = vector.gather %alloc_4[%c12, %c2, %c8] [%283], %58, %283 : memref<5x3x15xi32>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi32> into vector<3x3xi32>
        %285 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - 14, -((d0 ceildiv 64) mod 16), d0 + d0 ceildiv 64)>(%c13, %30, %c15, %c9)
        %286 = vector.multi_reduction <or>, %280, %true [0, 1] : vector<3x3xi1> to i1
        %287 = vector.flat_transpose %20 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
        %288 = arith.muli %c268195901_i64, %c268195901_i64 : i64
        %alloc_42 = memref.alloc() : memref<5x3x15xi1>
        affine.yield %alloc_42 : memref<5x3x15xi1>
      } else {
        memref.assume_alignment %alloc_11, 1 : memref<3x3xi16>
        %280 = vector.create_mask %63, %c4, %c14 : vector<5x3x15xi1>
        %281 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%c6, %c15, %c13, %c14)
        %282 = vector.extract %20[2] : vector<15xi32>
        %283 = index.maxu %c5, %c15
        memref.assume_alignment %alloc_9, 2 : memref<15x16xi32>
        %284 = math.floor %7 : tensor<5x16x5xf32>
        %285 = arith.divsi %46, %c1220632730_i32 : i32
        %alloc_42 = memref.alloc() : memref<5x3x15xi1>
        affine.yield %alloc_42 : memref<5x3x15xi1>
      }
      %alloc_40 = memref.alloc() : memref<15x16xf32>
      %270 = tensor.empty() : tensor<5x16x5xi32>
      %271 = math.fpowi %13, %270 : tensor<5x16x5xf16>, tensor<5x16x5xi32>
      %rank_41 = tensor.rank %9 : tensor<15x16xf32>
      %extracted = tensor.extract %14[%c1, %c0] : tensor<3x3xi64>
      scf.if %true {
        %280 = vector.broadcast %c38605508_i32 : i32 to vector<i32>
        %281 = vector.transfer_write %280, %0[%c14, %c5, %c0] : vector<i32>, tensor<5x3x15xi32>
        %282 = math.log %cst_2 : f32
        %283 = vector.reduction <maxui>, %20 : vector<15xi32> into i32
        %284 = memref.load %alloc_11[%c2, %c2] : memref<3x3xi16>
        %285 = arith.maxsi %46, %c38605508_i32 : i32
        %286 = arith.shrsi %46, %c38605508_i32 : i32
        %287 = vector.broadcast %c1 : index to vector<5xindex>
        %288 = vector.broadcast %true : i1 to vector<5xi1>
        %289 = vector.broadcast %cst_1 : f32 to vector<5xf32>
        vector.scatter %alloc_5[%c0, %c2] [%287], %288, %289 : memref<3x3xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
        %290 = arith.ori %c-12004_i16, %c-23574_i16 : i16
      } else {
        %280 = math.log10 %9 : tensor<15x16xf32>
        %281 = index.castu %c38605508_i32 : i32 to index
        %282 = bufferization.to_tensor %alloc_7 : memref<3x3xi1>
        %283 = math.fpowi %7, %270 : tensor<5x16x5xf32>, tensor<5x16x5xi32>
        %284 = math.log10 %2 : tensor<3x3xf16>
        %285 = arith.minui %false, %true : i1
        %286 = math.log1p %13 : tensor<5x16x5xf16>
        %287 = vector.transpose %54, [1, 0] : vector<3x3xi1> to vector<3x3xi1>
      }
      affine.store %c1809694973_i32, %alloc_4[%c12, %c0, %c13] : memref<5x3x15xi32>
      %272 = vector.flat_transpose %20 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
      %273 = bufferization.clone %alloc_3 : memref<5x16x5xf32> to memref<5x16x5xf32>
      %274 = vector.flat_transpose %20 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
      %275 = arith.maxui %c-12004_i16, %c-23574_i16 : i16
      %276 = math.atan %2 : tensor<3x3xf16>
      %277 = math.cos %expanded : tensor<3x3x1xf16>
      %278 = arith.minf %cst_2, %cst_0 : f32
      %279 = vector.broadcast %c38605508_i32 : i32 to vector<5x16x5xi32>
      scf.yield %c15 : index
    }
    case 3 {
      %268 = vector.broadcast %c1220632730_i32 : i32 to vector<3x3xi32>
      %269 = vector.broadcast %c38605508_i32 : i32 to vector<15x15xi32>
      %270 = vector.outerproduct %20, %20, %269 {kind = #vector.kind<minui>} : vector<15xi32>, vector<15xi32>
      %271 = tensor.empty() : tensor<3x3xf16>
      %272 = linalg.matmul ins(%2, %2 : tensor<3x3xf16>, tensor<3x3xf16>) outs(%271 : tensor<3x3xf16>) -> tensor<3x3xf16>
      %273 = arith.negf %cst_2 : f32
      %274 = math.roundeven %9 : tensor<15x16xf32>
      %275 = arith.negf %cst_0 : f32
      %276 = math.exp %9 : tensor<15x16xf32>
      scf.index_switch %c4 
      case 1 {
        %alloc_40 = memref.alloc() : memref<15x15xi32>
        %284 = tensor.empty() : tensor<16x15xi32>
        %285 = linalg.matmul ins(%39, %alloc_40 : tensor<16x15xi32>, memref<15x15xi32>) outs(%284 : tensor<16x15xi32>) -> tensor<16x15xi32>
        memref.assume_alignment %alloc_18, 8 : memref<16xi64>
        %286 = tensor.empty(%c0) : tensor<?x3xi64>
        %287 = index.add %c2, %c12
        %inserted_41 = tensor.insert %cst into %expanded[%c1, %c2, %c0] : tensor<3x3x1xf16>
        %288 = vector.create_mask %c15, %287 : vector<3x3xi1>
        %inserted_42 = tensor.insert %c-6735_i16 into %12[%c11, %c11] : tensor<15x16xi16>
        %289 = math.copysign %from_elements, %13 : tensor<5x16x5xf16>
        %290 = math.round %cst_2 : f32
        %291 = vector.broadcast %cst_1 : f32 to vector<16xf32>
        %dest_43, %accumulated_value_44 = vector.scan <maxf>, %32, %291 {inclusive = true, reduction_dim = 0 : i64} : vector<15x16xf32>, vector<16xf32>
        %alloca = memref.alloca() : memref<15x16xi1>
        %292 = arith.maxui %46, %c1220632730_i32 : i32
        affine.store %false, %alloc_13[%c6, %c10, %c9] : memref<5x16x5xi1>
        memref.assume_alignment %alloc_13, 8 : memref<5x16x5xi1>
        %293 = math.log10 %7 : tensor<5x16x5xf32>
        %294 = math.atan %cst : f16
        scf.yield
      }
      case 2 {
        %284 = math.exp %cst_1 : f32
        %285 = vector.extract_strided_slice %33 {offsets = [0], sizes = [2], strides = [1]} : vector<15x16xf32> to vector<2x16xf32>
        %286 = arith.maxf %cst_2, %cst_1 : f32
        %287 = math.absi %c27644_i16 : i16
        %inserted_40 = tensor.insert %c268195901_i64 into %from_elements_20[%c4, %c5, %c4] : tensor<5x16x5xi64>
        %288 = arith.shrsi %c1809694973_i32, %c1220632730_i32 : i32
        %289 = math.tanh %9 : tensor<15x16xf32>
        %alloc_41 = memref.alloc() : memref<15x16xi1>
        memref.copy %alloc_17, %alloc_41 : memref<15x16xi1> to memref<15x16xi1>
        %290 = affine.load %alloc_14[%c2, %c1] : memref<15x16xi32>
        %291 = arith.divui %false, %false : i1
        %292 = math.powf %18, %18 : tensor<16x15xf32>
        %293 = math.floor %13 : tensor<5x16x5xf16>
        %294 = index.maxs %c12, %c11
        %295 = bufferization.clone %alloc_4 : memref<5x3x15xi32> to memref<5x3x15xi32>
        %296 = arith.remf %cst, %cst : f16
        %297 = math.atan %13 : tensor<5x16x5xf16>
        scf.yield
      }
      case 3 {
        %284 = bufferization.clone %alloc_5 : memref<3x3xf32> to memref<3x3xf32>
        %285 = arith.cmpf ult, %cst_1, %cst_2 : f32
        %286 = index.maxu %23, %61
        %287 = bufferization.clone %alloc_9 : memref<15x16xi32> to memref<15x16xi32>
        %288 = math.round %13 : tensor<5x16x5xf16>
        %289 = memref.load %alloc_12[%c4, %c10, %c4] : memref<5x16x5xi1>
        %290 = affine.max affine_map<(d0, d1, d2, d3) -> (-d2, -((d0 ceildiv 64) ceildiv 32), d0, d2 * 8)>(%61, %286, %63, %c1)
        %291 = vector.broadcast %cst_0 : f32 to vector<5x3x15xf32>
        %292 = vector.fma %291, %291, %291 : vector<5x3x15xf32>
        %c1735049828_i64 = arith.constant 1735049828 : i64
        %293 = vector.bitcast %57 : vector<15x16xi1> to vector<15x16xi1>
        %294 = math.ctlz %false : i1
        %295 = vector.create_mask %30, %23 : vector<15x16xi1>
        %296 = arith.divui %false, %true : i1
        %297 = vector.broadcast %cst : f16 to vector<16x5xf16>
        vector.transfer_write %297, %alloc_15[%c12, %c1, %c3] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x5xf16>, memref<5x3x15xf16>
        %298 = arith.cmpi eq, %c-6735_i16, %c27644_i16 : i16
        %299 = math.cttz %14 : tensor<3x3xi64>
        scf.yield
      }
      default {
        %284 = vector.broadcast %c0 : index to vector<16xindex>
        %285 = vector.broadcast %true : i1 to vector<16xi1>
        vector.scatter %alloc_13[%c1, %c10, %c3] [%284], %285, %285 : memref<5x16x5xi1>, vector<16xindex>, vector<16xi1>, vector<16xi1>
        %286 = math.ipowi %14, %14 : tensor<3x3xi64>
        %287 = arith.negf %cst_0 : f32
        %288 = math.log1p %18 : tensor<16x15xf32>
        %289 = math.log10 %7 : tensor<5x16x5xf32>
        %extracted = tensor.extract %6[%c1, %c12] : tensor<15x16xf16>
        %290 = tensor.empty() : tensor<5x16x5xi32>
        %291 = math.fpowi %7, %290 : tensor<5x16x5xf32>, tensor<5x16x5xi32>
        %292 = math.absi %8 : tensor<5x16x5xi64>
        %293 = vector.flat_transpose %20 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
        %294 = vector.matrix_multiply %20, %20 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
        %295 = bufferization.clone %alloc_6 : memref<5x3x15xi16> to memref<5x3x15xi16>
        %296 = vector.broadcast %c1809694973_i32 : i32 to vector<15x15xi32>
        %297 = vector.outerproduct %20, %293, %296 {kind = #vector.kind<maxui>} : vector<15xi32>, vector<15xi32>
        %true_40 = index.bool.constant true
        %298 = math.atan %13 : tensor<5x16x5xf16>
        %299 = math.ipowi %11, %11 : tensor<3x3xi32>
        %300 = arith.andi %c38605508_i32, %46 : i32
      }
      %277 = memref.alloca_scope  -> (memref<5x16x5xi1>) {
        %284 = math.tan %13 : tensor<5x16x5xf16>
        %285 = math.ceil %13 : tensor<5x16x5xf16>
        %286 = arith.floordivsi %c1220632730_i32, %46 : i32
        %287 = vector.broadcast %46 : i32 to vector<15x15xi32>
        %288 = vector.outerproduct %20, %20, %287 {kind = #vector.kind<and>} : vector<15xi32>, vector<15xi32>
        %289 = bufferization.clone %alloc_14 : memref<15x16xi32> to memref<15x16xi32>
        %290 = arith.ceildivsi %c38605508_i32, %c1809694973_i32 : i32
        %291 = arith.divf %cst, %cst : f16
        %inserted_40 = tensor.insert %cst_0 into %7[%c4, %c10, %c4] : tensor<5x16x5xf32>
        %292 = math.ctpop %c268195901_i64 : i64
        %293 = arith.remf %cst_1, %cst_1 : f32
        %294 = arith.shrsi %c-6735_i16, %c27644_i16 : i16
        %295 = tensor.empty() : tensor<5x16x5xi64>
        %296 = bufferization.to_tensor %alloc_18 : memref<16xi64>
        %297 = arith.divui %false, %true : i1
        %298 = vector.matrix_multiply %20, %20 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
        %299 = bufferization.clone %alloc_3 : memref<5x16x5xf32> to memref<5x16x5xf32>
        %alloc_41 = memref.alloc() : memref<3x3xi64>
        %300 = vector.broadcast %c268195901_i64 : i64 to vector<3x3xi64>
        %301 = vector.gather %alloc_41[%c9, %c13] [%268], %47, %300 : memref<3x3xi64>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi64> into vector<3x3xi64>
        %302 = index.castu %c-23574_i16 : i16 to index
        %303 = index.divu %c3, %c4
        %304 = arith.minui %c38605508_i32, %c38605508_i32 : i32
        %305 = arith.xori %c27644_i16, %c-15365_i16 : i16
        %306 = affine.min affine_map<(d0, d1, d2, d3) -> ((-d2) ceildiv 2, ((-d2) ceildiv 2) * 4, d2 * 2, d1)>(%c0, %c15, %c3, %63)
        %307 = bufferization.clone %alloc_18 : memref<16xi64> to memref<16xi64>
        %308 = arith.divui %false, %true : i1
        %309 = math.powf %2, %271 : tensor<3x3xf16>
        %cast_42 = tensor.cast %5 : tensor<5x3x15xi64> to tensor<?x?x?xi64>
        %310 = affine.apply affine_map<(d0, d1, d2) -> (d0 - d0 floordiv 2 + 1)>(%c13, %303, %c4)
        %311 = arith.mulf %cst_1, %cst_0 : f32
        %312 = math.log10 %17 : tensor<5x16x5xf32>
        %313 = vector.broadcast %cst_0 : f32 to vector<16x15xf32>
        %314 = vector.transfer_write %313, %16[%c6, %61, %c1] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x15xf32>, tensor<5x16x5xf32>
        %315 = math.tanh %13 : tensor<5x16x5xf16>
        %316 = arith.ceildivsi %false, %true : i1
        memref.alloca_scope.return %alloc_13 : memref<5x16x5xi1>
      }
      %278 = index.castu %false : i1 to index
      scf.if %false {
        %alloc_40 = memref.alloc() : memref<16x16xi16>
        %284 = tensor.empty() : tensor<15x16xi16>
        %285 = linalg.matmul ins(%12, %alloc_40 : tensor<15x16xi16>, memref<16x16xi16>) outs(%284 : tensor<15x16xi16>) -> tensor<15x16xi16>
        %alloca = memref.alloca() : memref<15x16xi64>
        %286 = bufferization.clone %alloc_10 : memref<15x16xi32> to memref<15x16xi32>
        %287 = index.mul %c13, %c8
        %288 = math.log %2 : tensor<3x3xf16>
        %289 = affine.apply affine_map<(d0, d1, d2) -> (d0 - d0 floordiv 2 + 1)>(%c2, %c15, %c0)
        %290 = arith.muli %c-523_i16, %c27644_i16 : i16
        %291 = arith.remf %cst, %cst : f16
      } else {
        %284 = vector.broadcast %c6 : index to vector<16xindex>
        %285 = vector.broadcast %false : i1 to vector<16xi1>
        vector.scatter %alloc_13[%c0, %c15, %c1] [%284], %285, %285 : memref<5x16x5xi1>, vector<16xindex>, vector<16xi1>, vector<16xi1>
        %286 = affine.apply affine_map<(d0, d1, d2) -> (d0 - d0 floordiv 2 + 1)>(%23, %c3, %23)
        %287 = memref.load %alloc_15[%c3, %c0, %c7] : memref<5x3x15xf16>
        %288 = math.cos %2 : tensor<3x3xf16>
        %289 = index.add %c3, %c14
        %290 = vector.broadcast %46 : i32 to vector<15x15xi32>
        %291 = vector.outerproduct %20, %20, %290 {kind = #vector.kind<xor>} : vector<15xi32>, vector<15xi32>
        %inserted_40 = tensor.insert %c268195901_i64 into %5[%c3, %c1, %c13] : tensor<5x3x15xi64>
        %292 = bufferization.clone %alloc_7 : memref<3x3xi1> to memref<3x3xi1>
      }
      %279 = math.tan %17 : tensor<5x16x5xf32>
      %280 = vector.broadcast %false : i1 to vector<15xi1>
      %dest, %accumulated_value = vector.scan <and>, %57, %280 {inclusive = false, reduction_dim = 1 : i64} : vector<15x16xi1>, vector<15xi1>
      %281 = arith.ori %c38605508_i32, %c1220632730_i32 : i32
      %282 = index.castu %c268195901_i64 : i64 to index
      %283 = math.ceil %expanded : tensor<3x3x1xf16>
      scf.yield %c11 : index
    }
    case 4 {
      %268 = affine.max affine_map<(d0) -> ((((d0 + 1) ceildiv 2) * 8) mod 32, (((d0 + 1) ceildiv 2) * 8) mod 32, 0, (d0 + 1) ceildiv 2)>(%c13)
      %269 = arith.remf %cst_2, %cst_1 : f32
      %270 = math.log10 %9 : tensor<15x16xf32>
      scf.execute_region {
        %expanded_40 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<15x16xi16> into tensor<15x16x1xi16>
        %282 = bufferization.clone %alloc_9 : memref<15x16xi32> to memref<15x16xi32>
        %283 = memref.atomic_rmw maxf %cst_2, %alloc_16[%c0, %c1, %c10] : (f32, memref<5x3x15xf32>) -> f32
        %284 = index.mul %c11, %c10
        %285 = math.round %9 : tensor<15x16xf32>
        %286 = vector.extract_strided_slice %58 {offsets = [1], sizes = [1], strides = [1]} : vector<3x3xi1> to vector<1x3xi1>
        %287 = arith.floordivsi %false, %false : i1
        %288 = bufferization.clone %alloc_7 : memref<3x3xi1> to memref<3x3xi1>
        %289 = arith.cmpf ord, %cst, %cst : f16
        %290 = math.rsqrt %6 : tensor<15x16xf16>
        %291 = math.exp2 %2 : tensor<3x3xf16>
        %292 = math.log %18 : tensor<16x15xf32>
        %293 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + d2 + 2)>(%c6, %c2, %c11, %c15)
        %true_41 = index.bool.constant true
        %294 = vector.insertelement %c1809694973_i32, %20[%c0 : index] : vector<15xi32>
        %295 = arith.divui %c1220632730_i32, %c1809694973_i32 : i32
        scf.yield
      }
      %271 = math.cos %2 : tensor<3x3xf16>
      %272 = vector.splat %c-12004_i16 : vector<3x3xi16>
      %273 = arith.muli %c-23574_i16, %c-15365_i16 : i16
      %274 = vector.reduction <or>, %20 : vector<15xi32> into i32
      %275 = arith.ori %c-23574_i16, %c-523_i16 : i16
      %276 = bufferization.clone %alloc_5 : memref<3x3xf32> to memref<3x3xf32>
      %277 = arith.shrui %c-12004_i16, %c-523_i16 : i16
      %278 = index.mul %c2, %c2
      %279 = index.add %c10, %61
      %280 = arith.maxsi %c-6735_i16, %c27644_i16 : i16
      memref.alloca_scope  {
        %282 = arith.remsi %c268195901_i64, %c268195901_i64 : i64
        %283 = arith.remf %cst_2, %cst_1 : f32
        %rank_40 = tensor.rank %13 : tensor<5x16x5xf16>
        %284 = vector.flat_transpose %20 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
        %285 = math.log %6 : tensor<15x16xf16>
        %286 = arith.mulf %cst, %cst : f16
        %287 = math.cttz %22 : tensor<i64>
        %288 = arith.minui %46, %46 : i32
        %289 = bufferization.to_tensor %alloc_11 : memref<3x3xi16>
        %290 = arith.mulf %cst_0, %cst_1 : f32
        %291 = arith.remf %cst, %cst : f16
        %292 = vector.multi_reduction <or>, %54, %47 [] : vector<3x3xi1> to vector<3x3xi1>
        %293 = vector.broadcast %c8 : index to vector<3xindex>
        %294 = vector.broadcast %false : i1 to vector<3xi1>
        %295 = vector.broadcast %cst_1 : f32 to vector<3xf32>
        vector.scatter %alloc_3[%c1, %c10, %c2] [%293], %294, %295 : memref<5x16x5xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
        %296 = arith.xori %c-23574_i16, %c-523_i16 : i16
        memref.assume_alignment %alloc_15, 16 : memref<5x3x15xf16>
        %297 = arith.muli %c-15365_i16, %c-12004_i16 : i16
        %298 = affine.load %alloc_10[%c5, %c3] : memref<15x16xi32>
        %299 = math.roundeven %7 : tensor<5x16x5xf32>
        %300 = bufferization.clone %alloc_14 : memref<15x16xi32> to memref<15x16xi32>
        %301 = bufferization.to_tensor %alloc_15 : memref<5x3x15xf16>
        %302 = index.floordivs %rank_40, %c5
        %303 = index.divs %c7, %c9
        %304 = bufferization.clone %alloc_10 : memref<15x16xi32> to memref<15x16xi32>
        %305 = arith.mulf %cst_2, %cst_2 : f32
        %collapsed_41 = tensor.collapse_shape %2 [[0, 1]] : tensor<3x3xf16> into tensor<9xf16>
        %alloc_42 = memref.alloc() : memref<16x3xi16>
        %306 = tensor.empty() : tensor<15x3xi16>
        %307 = linalg.matmul ins(%12, %alloc_42 : tensor<15x16xi16>, memref<16x3xi16>) outs(%306 : tensor<15x3xi16>) -> tensor<15x3xi16>
        %308 = math.absf %6 : tensor<15x16xf16>
        %309 = index.maxu %c14, %c8
        %310 = arith.divf %cst, %cst : f16
        %311 = math.ipowi %12, %12 : tensor<15x16xi16>
        %312 = arith.cmpf ogt, %cst_2, %cst_0 : f32
        %313 = vector.broadcast %298 : i32 to vector<15x15xi32>
        %314 = vector.outerproduct %20, %284, %313 {kind = #vector.kind<mul>} : vector<15xi32>, vector<15xi32>
      }
      %281 = math.log %6 : tensor<15x16xf16>
      scf.yield %c4 : index
    }
    default {
      %268 = vector.broadcast %cst_0 : f32 to vector<1x15xf32>
      %269 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %35, %32, %268 : vector<1x16xf32>, vector<15x16xf32> into vector<1x15xf32>
      %270 = math.floor %13 : tensor<5x16x5xf16>
      %271 = index.mul %c15, %c11
      %272 = index.floordivs %c12, %c14
      %273 = tensor.empty(%c2, %c12) : tensor<?x16x?xi64>
      scf.execute_region {
        %283 = vector.broadcast %46 : i32 to vector<15x15xi32>
        %284 = vector.outerproduct %20, %20, %283 {kind = #vector.kind<maxsi>} : vector<15xi32>, vector<15xi32>
        %285 = memref.atomic_rmw addf %cst_2, %alloc_5[%c2, %c0] : (f32, memref<3x3xf32>) -> f32
        %286 = math.ceil %7 : tensor<5x16x5xf32>
        %287 = bufferization.clone %45 : memref<3x3xf32> to memref<3x3xf32>
        memref.store %c-6735_i16, %alloc_11[%c0, %c1] : memref<3x3xi16>
        %288 = vector.extract_strided_slice %47 {offsets = [1], sizes = [1], strides = [1]} : vector<3x3xi1> to vector<1x3xi1>
        %289 = arith.remsi %c-12004_i16, %c-12004_i16 : i16
        %290 = vector.broadcast %false : i1 to vector<3xi1>
        %291 = vector.multi_reduction <and>, %47, %290 [0] : vector<3x3xi1> to vector<3xi1>
        %292 = index.divu %c13, %c8
        %293 = math.ctlz %c268195901_i64 : i64
        %294 = math.log10 %18 : tensor<16x15xf32>
        %295 = vector.broadcast %cst_0 : f32 to vector<5x3x15xf32>
        %296 = vector.fma %295, %295, %295 : vector<5x3x15xf32>
        %true_42 = index.bool.constant true
        %297 = vector.insertelement %true_42, %290[%30 : index] : vector<3xi1>
        %298 = arith.divf %cst_0, %cst_0 : f32
        %299 = vector.splat %c268195901_i64 : vector<3x3xi64>
        scf.yield
      }
      %rank_40 = tensor.rank %13 : tensor<5x16x5xf16>
      %274 = math.round %6 : tensor<15x16xf16>
      %275 = vector.transpose %35, [1, 0] : vector<1x16xf32> to vector<16x1xf32>
      %276 = math.ctlz %10 : tensor<5x16x5xi1>
      %277 = vector.transpose %59, [0, 2, 1] : vector<5x3x15xi1> to vector<5x15x3xi1>
      %cast_41 = tensor.cast %13 : tensor<5x16x5xf16> to tensor<?x?x?xf16>
      %278 = math.absf %13 : tensor<5x16x5xf16>
      %279 = index.maxu %c7, %c8
      %280 = arith.maxsi %true, %true : i1
      %281 = tensor.empty() : tensor<16x16xf32>
      %282 = linalg.matmul ins(%18, %9 : tensor<16x15xf32>, tensor<15x16xf32>) outs(%281 : tensor<16x16xf32>) -> tensor<16x16xf32>
      scf.yield %c13 : index
    }
    %from_elements_21 = tensor.from_elements %c-15365_i16, %c27644_i16, %c-23574_i16, %c-15365_i16, %c27644_i16, %c-15365_i16, %c27644_i16, %c-6735_i16, %c-23574_i16, %c-523_i16, %c-15365_i16, %c-523_i16, %c27644_i16, %c-523_i16, %c27644_i16, %c-23574_i16, %c27644_i16, %c-15365_i16, %c-523_i16, %c-15365_i16, %c27644_i16, %c-12004_i16, %c-523_i16, %c-12004_i16, %c-6735_i16, %c-23574_i16, %c-12004_i16, %c-23574_i16, %c27644_i16, %c-523_i16, %c-12004_i16, %c-12004_i16, %c-23574_i16, %c-6735_i16, %c-15365_i16, %c-15365_i16, %c27644_i16, %c27644_i16, %c-15365_i16, %c-23574_i16, %c-523_i16, %c-23574_i16, %c-12004_i16, %c-12004_i16, %c-23574_i16, %c-12004_i16, %c-15365_i16, %c-6735_i16, %c-15365_i16, %c27644_i16, %c-15365_i16, %c-523_i16, %c-12004_i16, %c-12004_i16, %c-6735_i16, %c-6735_i16, %c-523_i16, %c-6735_i16, %c-15365_i16, %c-23574_i16, %c-6735_i16, %c27644_i16, %c-6735_i16, %c-15365_i16, %c-6735_i16, %c-523_i16, %c-12004_i16, %c-23574_i16, %c-523_i16, %c-23574_i16, %c27644_i16, %c-523_i16, %c-12004_i16, %c-6735_i16, %c-12004_i16, %c-23574_i16, %c-15365_i16, %c-12004_i16, %c-23574_i16, %c-23574_i16, %c-15365_i16, %c-15365_i16, %c-23574_i16, %c27644_i16, %c-12004_i16, %c-12004_i16, %c-23574_i16, %c-6735_i16, %c-23574_i16, %c-6735_i16, %c27644_i16, %c-23574_i16, %c-523_i16, %c-6735_i16, %c-15365_i16, %c-12004_i16, %c27644_i16, %c-23574_i16, %c-6735_i16, %c-6735_i16, %c-523_i16, %c-6735_i16, %c-23574_i16, %c27644_i16, %c-523_i16, %c-15365_i16, %c-12004_i16, %c27644_i16, %c-12004_i16, %c-15365_i16, %c-12004_i16, %c-15365_i16, %c-23574_i16, %c-15365_i16, %c-12004_i16, %c-15365_i16, %c-15365_i16, %c-6735_i16, %c27644_i16, %c-23574_i16, %c-12004_i16, %c-12004_i16, %c-12004_i16, %c-15365_i16, %c27644_i16, %c-12004_i16, %c-523_i16, %c27644_i16, %c-6735_i16, %c-15365_i16, %c-15365_i16, %c-12004_i16, %c-12004_i16, %c27644_i16, %c-12004_i16, %c-23574_i16, %c-6735_i16, %c27644_i16, %c-23574_i16, %c-523_i16, %c-23574_i16, %c-12004_i16, %c-6735_i16, %c-15365_i16, %c27644_i16, %c27644_i16, %c-523_i16, %c-23574_i16, %c-15365_i16, %c-15365_i16, %c-6735_i16, %c-6735_i16, %c-23574_i16, %c-15365_i16, %c-523_i16, %c-15365_i16, %c-523_i16, %c-23574_i16, %c27644_i16, %c-523_i16, %c-12004_i16, %c27644_i16, %c-23574_i16, %c27644_i16, %c-6735_i16, %c-6735_i16, %c-15365_i16, %c27644_i16, %c-23574_i16, %c-6735_i16, %c27644_i16, %c-15365_i16, %c-523_i16, %c-23574_i16, %c-12004_i16, %c-12004_i16, %c-23574_i16, %c-6735_i16, %c-6735_i16, %c-523_i16, %c-12004_i16, %c-15365_i16, %c-6735_i16, %c-12004_i16, %c-15365_i16, %c-23574_i16, %c27644_i16, %c27644_i16, %c-12004_i16, %c-23574_i16, %c-12004_i16, %c-523_i16, %c27644_i16, %c-523_i16, %c-15365_i16, %c-6735_i16, %c27644_i16, %c-15365_i16, %c-523_i16, %c-15365_i16, %c-15365_i16, %c-523_i16, %c-23574_i16, %c-6735_i16, %c-12004_i16, %c27644_i16, %c-23574_i16, %c27644_i16, %c-12004_i16, %c-15365_i16, %c-6735_i16, %c-523_i16, %c-523_i16, %c-12004_i16, %c-523_i16, %c-23574_i16, %c-523_i16, %c27644_i16, %c-23574_i16, %c-12004_i16, %c27644_i16, %c-23574_i16, %c-23574_i16, %c-6735_i16, %c-523_i16, %c-12004_i16, %c-6735_i16, %c-523_i16, %c-23574_i16, %c-523_i16, %c27644_i16, %c-23574_i16, %c-523_i16, %c-6735_i16, %c27644_i16, %c-15365_i16, %c-6735_i16, %c-23574_i16, %c-15365_i16, %c-12004_i16, %c-12004_i16, %c-6735_i16, %c-6735_i16, %c-6735_i16, %c-23574_i16, %c-6735_i16, %c27644_i16, %c-23574_i16, %c-15365_i16, %c27644_i16, %c-12004_i16, %c-15365_i16, %c-12004_i16, %c-6735_i16, %c-523_i16, %c-6735_i16, %c27644_i16, %c-23574_i16, %c-15365_i16, %c-6735_i16, %c-15365_i16, %c27644_i16, %c27644_i16, %c-23574_i16, %c-23574_i16, %c-12004_i16, %c-12004_i16, %c-23574_i16, %c-15365_i16, %c-12004_i16, %c27644_i16, %c-15365_i16, %c-6735_i16, %c-15365_i16, %c-15365_i16, %c-6735_i16, %c-12004_i16, %c27644_i16, %c-12004_i16, %c-12004_i16, %c27644_i16, %c-15365_i16, %c-12004_i16, %c-15365_i16, %c27644_i16, %c-6735_i16, %c27644_i16, %c-15365_i16, %c-15365_i16, %c-523_i16, %c-523_i16, %c-6735_i16, %c-6735_i16, %c-15365_i16, %c-15365_i16, %c-23574_i16, %c-6735_i16, %c-6735_i16, %c-15365_i16, %c-23574_i16, %c-15365_i16, %c-6735_i16, %c-23574_i16, %c-523_i16, %c-15365_i16, %c27644_i16, %c-523_i16, %c27644_i16, %c-523_i16, %c-523_i16, %c-23574_i16, %c-12004_i16, %c27644_i16, %c-6735_i16, %c-6735_i16, %c-523_i16, %c-15365_i16, %c-15365_i16, %c-6735_i16, %c-15365_i16, %c27644_i16, %c-23574_i16, %c-12004_i16, %c-15365_i16, %c-15365_i16, %c-523_i16, %c-6735_i16, %c27644_i16, %c27644_i16, %c-523_i16, %c-12004_i16, %c-523_i16, %c-23574_i16, %c-523_i16, %c-523_i16, %c-6735_i16, %c27644_i16, %c-12004_i16, %c27644_i16, %c-12004_i16, %c27644_i16, %c-12004_i16, %c-15365_i16, %c27644_i16, %c27644_i16, %c-23574_i16, %c27644_i16, %c-15365_i16, %c-523_i16, %c-23574_i16, %c-523_i16, %c-23574_i16, %c-12004_i16, %c-12004_i16, %c27644_i16, %c-523_i16, %c-6735_i16, %c-15365_i16, %c-23574_i16, %c-12004_i16, %c-6735_i16, %c27644_i16, %c-523_i16, %c27644_i16, %c-523_i16, %c-12004_i16, %c27644_i16, %c27644_i16, %c-12004_i16, %c27644_i16, %c-6735_i16, %c-15365_i16, %c-523_i16, %c-23574_i16, %c-23574_i16, %c27644_i16, %c-12004_i16, %c-15365_i16, %c-23574_i16, %c-23574_i16, %c-6735_i16, %c27644_i16, %c-6735_i16, %c-6735_i16, %c27644_i16, %c-12004_i16, %c-23574_i16, %c-23574_i16, %c-23574_i16, %c-23574_i16, %c-12004_i16, %c-23574_i16, %c-6735_i16, %c-15365_i16, %c27644_i16, %c-15365_i16, %c-23574_i16, %c27644_i16, %c-12004_i16, %c-15365_i16 : tensor<5x16x5xi16>
    %67 = index.maxs %c6, %61
    %68 = arith.maxui %c27644_i16, %c-6735_i16 : i16
    %69 = math.fpowi %18, %39 : tensor<16x15xf32>, tensor<16x15xi32>
    %70 = affine.if affine_set<(d0, d1, d2, d3) : (d3 == 0, d1 - 33 >= 0)>(%c2, %c15, %c15, %c13) -> i32 {
      %268 = math.roundeven %6 : tensor<15x16xf16>
      %269 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d3 * 8) ceildiv 64)>(%c3, %63, %c6, %c1)
      %270 = arith.mulf %cst_2, %cst_0 : f32
      %cast_40 = tensor.cast %14 : tensor<3x3xi64> to tensor<?x?xi64>
      %271 = index.add %c14, %67
      memref.alloca_scope  {
        %274 = math.round %2 : tensor<3x3xf16>
        %275 = vector.reduction <xor>, %20 : vector<15xi32> into i32
        %276 = index.floordivs %c5, %c1
        %cast_41 = tensor.cast %9 : tensor<15x16xf32> to tensor<?x?xf32>
        %277 = math.log %7 : tensor<5x16x5xf32>
        %278 = index.sizeof
        %279 = vector.bitcast %20 : vector<15xi32> to vector<15xi32>
        %280 = vector.bitcast %58 : vector<3x3xi1> to vector<3x3xi1>
        %281 = math.rsqrt %6 : tensor<15x16xf16>
        %282 = math.floor %6 : tensor<15x16xf16>
        %283 = bufferization.to_tensor %alloc_14 : memref<15x16xi32>
        %284 = arith.muli %true, %false : i1
        %285 = vector.broadcast %c1220632730_i32 : i32 to vector<15x15xi32>
        %286 = vector.outerproduct %279, %279, %285 {kind = #vector.kind<or>} : vector<15xi32>, vector<15xi32>
        %287 = bufferization.clone %alloc : memref<5x16x5xi32> to memref<5x16x5xi32>
        vector.print %280 : vector<3x3xi1>
        %288 = math.absi %22 : tensor<i64>
        %289 = math.roundeven %cst_2 : f32
        %290 = tensor.empty() : tensor<16x16xf32>
        %291 = linalg.matmul ins(%transposed, %9 : tensor<16x15xf32>, tensor<15x16xf32>) outs(%290 : tensor<16x16xf32>) -> tensor<16x16xf32>
        %292 = math.log10 %cst_0 : f32
        %293 = vector.shuffle %54, %58 [0, 1, 2, 3] : vector<3x3xi1>, vector<3x3xi1>
        %294 = math.exp %13 : tensor<5x16x5xf16>
        %295 = arith.negf %cst_1 : f32
        %296 = arith.cmpf une, %cst_2, %cst_1 : f32
        %297 = vector.bitcast %35 : vector<1x16xf32> to vector<1x16xf32>
        %298 = index.maxu %c4, %c13
        %299 = index.mul %23, %c13
        %300 = vector.broadcast %false : i1 to vector<3xi1>
        %dest, %accumulated_value = vector.scan <maxui>, %58, %300 {inclusive = false, reduction_dim = 1 : i64} : vector<3x3xi1>, vector<3xi1>
        %301 = vector.splat %c-15365_i16 : vector<5x3x15xi16>
        %302 = vector.broadcast %c38605508_i32 : i32 to vector<15x15xi32>
        %303 = vector.outerproduct %279, %20, %302 {kind = #vector.kind<or>} : vector<15xi32>, vector<15xi32>
        %304 = arith.ceildivsi %c38605508_i32, %46 : i32
        %305 = vector.multi_reduction <add>, %297, %cst_0 [0, 1] : vector<1x16xf32> to f32
        %306 = vector.shuffle %59, %59 [0, 2, 3, 6] : vector<5x3x15xi1>, vector<5x3x15xi1>
      }
      %272 = math.log10 %13 : tensor<5x16x5xf16>
      %273 = arith.shrui %c-23574_i16, %c-15365_i16 : i16
      affine.yield %c1220632730_i32 : i32
    } else {
      %268 = arith.cmpf false, %cst_1, %cst_2 : f32
      %269 = scf.while (%arg2 = %alloc_9) : (memref<15x16xi32>) -> memref<15x16xi32> {
        %275 = math.atan %2 : tensor<3x3xf16>
        %cast_41 = tensor.cast %14 : tensor<3x3xi64> to tensor<?x?xi64>
        %276 = math.round %9 : tensor<15x16xf32>
        %alloc_42 = memref.alloc() : memref<15x16xi16>
        %277 = vector.broadcast %c-15365_i16 : i16 to vector<3x3xi16>
        %278 = vector.broadcast %c38605508_i32 : i32 to vector<3x3xi32>
        %279 = vector.gather %alloc_42[%c15, %c6] [%278], %58, %277 : memref<15x16xi16>, vector<3x3xi32>, vector<3x3xi1>, vector<3x3xi16> into vector<3x3xi16>
        %280 = arith.maxui %46, %c1220632730_i32 : i32
        %281 = vector.bitcast %279 : vector<3x3xi16> to vector<3x3xi16>
        %282 = affine.min affine_map<(d0) -> (d0 - 4)>(%c5)
        %283 = arith.muli %46, %c1809694973_i32 : i32
        scf.condition(%true) %alloc_9 : memref<15x16xi32>
      } do {
      ^bb0(%arg2: memref<15x16xi32>):
        %275 = index.maxu %63, %c6
        %276 = index.floordivs %c12, %63
        %rank_41 = tensor.rank %14 : tensor<3x3xi64>
        %277 = index.floordivs %c10, %c3
        %278 = arith.remf %cst, %cst : f16
        %279 = math.ctlz %10 : tensor<5x16x5xi1>
        %280 = vector.multi_reduction <mul>, %57, %true [0, 1] : vector<15x16xi1> to i1
        %c1762767191_i64 = arith.constant 1762767191 : i64
        %281 = math.sqrt %6 : tensor<15x16xf16>
        %282 = index.divu %c2, %c14
        %283 = vector.insertelement %c38605508_i32, %20[%23 : index] : vector<15xi32>
        %284 = math.copysign %7, %7 : tensor<5x16x5xf32>
        %285 = math.copysign %2, %2 : tensor<3x3xf16>
        bufferization.dealloc_tensor %0 : tensor<5x3x15xi32>
        %286 = math.ipowi %4, %4 : tensor<3x3xi1>
        %expanded_42 = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<5x3x15xi64> into tensor<5x3x15x1xi64>
        scf.yield %alloc_14 : memref<15x16xi32>
      }
      %270 = arith.cmpf ogt, %cst_2, %cst_2 : f32
      %inserted_40 = tensor.insert %c268195901_i64 into %15[%c2, %c15, %c3] : tensor<5x16x5xi64>
      %271 = bufferization.to_tensor %alloc : memref<5x16x5xi32>
      %272 = vector.extract_strided_slice %47 {offsets = [0], sizes = [2], strides = [1]} : vector<3x3xi1> to vector<2x3xi1>
      %273 = math.ctlz %10 : tensor<5x16x5xi1>
      %274 = vector.matrix_multiply %20, %20 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
      affine.yield %c38605508_i32 : i32
    }
    %71 = arith.remui %c268195901_i64, %c268195901_i64 : i64
    %72 = arith.muli %c27644_i16, %c-15365_i16 : i16
    %73 = math.ctpop %14 : tensor<3x3xi64>
    %74 = affine.min affine_map<(d0, d1, d2) -> (d1 - d2)>(%c8, %c14, %c4)
    %alloc_22 = memref.alloc() : memref<5x3x15xi64>
    %75 = vector.broadcast %c268195901_i64 : i64 to vector<5x16x5xi64>
    %76 = vector.broadcast %false : i1 to vector<5x16x5xi1>
    %77 = vector.broadcast %46 : i32 to vector<5x16x5xi32>
    %78 = vector.gather %alloc_22[%c7, %c8, %c14] [%77], %76, %75 : memref<5x3x15xi64>, vector<5x16x5xi32>, vector<5x16x5xi1>, vector<5x16x5xi64> into vector<5x16x5xi64>
    %79 = vector.broadcast %c7 : index to vector<3xindex>
    %80 = vector.broadcast %false : i1 to vector<3xi1>
    %81 = vector.broadcast %c1809694973_i32 : i32 to vector<3xi32>
    vector.scatter %alloc_14[%c12, %c8] [%79], %80, %81 : memref<15x16xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
    %82 = affine.min affine_map<(d0, d1, d2) -> (d2 + d0, d2 + d0 - 12, d0 - (d2 + d0), d0)>(%c10, %c10, %c3)
    %83 = math.ceil %transposed : tensor<16x15xf32>
    %84 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%c15, %c0, %c4, %c8)
    %85 = bufferization.to_tensor %alloc_17 : memref<15x16xi1>
    %86 = math.log1p %9 : tensor<15x16xf32>
    %87 = vector.broadcast %c-15365_i16 : i16 to vector<3x3xi16>
    %88 = vector.broadcast %c268195901_i64 : i64 to vector<3xi64>
    %89 = vector.broadcast %false : i1 to vector<3xi1>
    %90 = vector.maskedload %alloc_19[%c9], %89, %88 : memref<16xi64>, vector<3xi1>, vector<3xi64> into vector<3xi64>
    memref.store %46, %alloc_4[%c4, %c2, %c3] : memref<5x3x15xi32>
    %91 = vector.shuffle %54, %54 [3, 4, 5] : vector<3x3xi1>, vector<3x3xi1>
    %92 = arith.mulf %cst_2, %cst_2 : f32
    memref.alloca_scope  {
      %268 = arith.xori %false, %true : i1
      %269 = math.exp2 %13 : tensor<5x16x5xf16>
      %270 = arith.muli %false, %false : i1
      %cast_40 = tensor.cast %9 : tensor<15x16xf32> to tensor<?x?xf32>
      %271 = vector.matrix_multiply %88, %90 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
      %272 = arith.shrui %46, %c38605508_i32 : i32
      %273 = arith.remf %cst_2, %cst_1 : f32
      %274 = arith.cmpf one, %cst_0, %cst_0 : f32
      %275 = index.maxu %c7, %c5
      %276 = math.atan %7 : tensor<5x16x5xf32>
      %277 = affine.max affine_map<(d0, d1, d2, d3) -> ((-d3) mod 32, d2 * 2, (-d3) mod 32 - 128, d2 + d1)>(%c8, %275, %74, %c11)
      %278 = arith.muli %true, %true : i1
      %alloc_41 = memref.alloc() : memref<15x16xi1>
      memref.copy %alloc_17, %alloc_41 : memref<15x16xi1> to memref<15x16xi1>
      %279 = memref.load %alloc_3[%c4, %c0, %c4] : memref<5x16x5xf32>
      %280 = math.fpowi %cst_1, %c38605508_i32 : f32, i32
      %281 = arith.negf %cst_2 : f32
      %282 = arith.muli %c1809694973_i32, %46 : i32
      %283 = math.cttz %0 : tensor<5x3x15xi32>
      %284 = index.floordivs %c11, %c9
      %285 = vector.broadcast %true : i1 to vector<5xi1>
      %286 = vector.multi_reduction <add>, %76, %285 [1, 2] : vector<5x16x5xi1> to vector<5xi1>
      %287 = arith.divf %cst_0, %cst_1 : f32
      %288 = vector.splat %c268195901_i64 : vector<3x3xi64>
      %289 = affine.max affine_map<(d0, d1, d2, d3) -> (d2)>(%c9, %c1, %c7, %c8)
      %290 = vector.flat_transpose %88 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
      %from_elements_42 = tensor.from_elements %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64, %c268195901_i64 : tensor<5x3x15xi64>
      %291 = vector.flat_transpose %271 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
      %292 = index.ceildivu %c9, %c4
      %293 = memref.realloc %alloc_19 : memref<16xi64> to memref<5xi64>
      %294 = affine.min affine_map<(d0, d1, d2) -> (d0 + 8, -d0, d0 * 8 + 16, -d0)>(%c9, %c0, %c1)
      %295 = arith.divui %46, %c1809694973_i32 : i32
      %296 = vector.reduction <maxsi>, %90 : vector<3xi64> into i64
      %297 = math.log2 %6 : tensor<15x16xf16>
    }
    %collapsed_23 = tensor.collapse_shape %39 [[0, 1]] : tensor<16x15xi32> into tensor<240xi32>
    affine.store %c268195901_i64, %alloc_19[%c12] : memref<16xi64>
    %93 = tensor.empty() : tensor<5x16x5xi32>
    %94 = math.atan %transposed : tensor<16x15xf32>
    %cast = tensor.cast %2 : tensor<3x3xf16> to tensor<?x?xf16>
    %95 = vector.multi_reduction <maxsi>, %90, %90 [] : vector<3xi64> to vector<3xi64>
    %96 = arith.divui %c38605508_i32, %c1220632730_i32 : i32
    %97 = math.copysign %from_elements, %13 : tensor<5x16x5xf16>
    %98 = math.log10 %cst_2 : f32
    %99 = arith.mulf %cst_2, %cst_1 : f32
    vector.print %59 : vector<5x3x15xi1>
    %false_24 = arith.constant false
    %100 = math.rsqrt %expanded : tensor<3x3x1xf16>
    %101 = index.maxu %c8, %61
    %102 = index.ceildivs %c0, %84
    %103 = arith.addf %cst_2, %cst_0 : f32
    %104 = vector.multi_reduction <or>, %88, %c268195901_i64 [0] : vector<3xi64> to i64
    %105 = vector.bitcast %77 : vector<5x16x5xi32> to vector<5x16x5xf32>
    %106 = affine.min affine_map<(d0, d1, d2) -> ((d0 - 2) mod 4, d2, d1)>(%c2, %c9, %c8)
    %107 = arith.remf %cst_2, %cst_0 : f32
    %108 = vector.shuffle %89, %89 [3, 5] : vector<3xi1>, vector<3xi1>
    %109 = math.floor %9 : tensor<15x16xf32>
    %110 = bufferization.clone %alloc_3 : memref<5x16x5xf32> to memref<5x16x5xf32>
    %111 = affine.min affine_map<(d0, d1, d2) -> (d0 floordiv 128)>(%c14, %74, %67)
    %112 = arith.andi %c-12004_i16, %c-6735_i16 : i16
    %113 = arith.maxf %cst, %cst : f16
    %114 = scf.if %true -> (memref<15x16xf16>) {
      %268 = memref.alloca_scope  -> (memref<15x16xf32>) {
        affine.store %c268195901_i64, %alloc_22[%c5, %c0, %c9] : memref<5x3x15xi64>
        %280 = arith.muli %false, %false : i1
        %281 = affine.load %alloc_9[%c7, %c13] : memref<15x16xi32>
        %282 = vector.reduction <xor>, %90 : vector<3xi64> into i64
        %283 = vector.flat_transpose %89 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %284 = arith.cmpf une, %cst_2, %cst_2 : f32
        %285 = arith.shrui %c-23574_i16, %c-12004_i16 : i16
        %286 = index.mul %101, %63
        %cast_41 = tensor.cast %15 : tensor<5x16x5xi64> to tensor<?x?x?xi64>
        %287 = bufferization.to_tensor %alloc_7 : memref<3x3xi1>
        %288 = vector.bitcast %35 : vector<1x16xf32> to vector<1x16xf32>
        %289 = index.floordivs %111, %c13
        %290 = vector.flat_transpose %88 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %291 = index.maxu %c6, %c4
        %292 = arith.remf %cst_0, %cst_2 : f32
        %293 = math.copysign %2, %2 : tensor<3x3xf16>
        %294 = vector.multi_reduction <maxui>, %57, %57 [] : vector<15x16xi1> to vector<15x16xi1>
        memref.copy %alloc_14, %alloc_9 : memref<15x16xi32> to memref<15x16xi32>
        %295 = affine.apply affine_map<(d0, d1, d2) -> ((-d1) mod 8 - d2 floordiv 64)>(%c0, %291, %74)
        %296 = index.mul %106, %67
        %297 = vector.broadcast %104 : i64 to vector<3x3xi64>
        %298 = vector.outerproduct %290, %88, %297 {kind = #vector.kind<minui>} : vector<3xi64>, vector<3xi64>
        %299 = arith.maxui %false, %true : i1
        %300 = arith.divui %c-523_i16, %c-12004_i16 : i16
        %301 = math.log %7 : tensor<5x16x5xf32>
        %302 = index.floordivs %286, %74
        %303 = tensor.empty() : tensor<15x16xi32>
        %304 = math.fpowi %9, %303 : tensor<15x16xf32>, tensor<15x16xi32>
        %305 = math.log2 %13 : tensor<5x16x5xf16>
        %306 = vector.broadcast %281 : i32 to vector<3x3xi32>
        %307 = bufferization.clone %alloc_12 : memref<5x16x5xi1> to memref<5x16x5xi1>
        %308 = vector.insertelement %false, %89[%291 : index] : vector<3xi1>
        %309 = arith.negf %cst_0 : f32
        %310 = vector.extract_strided_slice %58 {offsets = [0], sizes = [2], strides = [1]} : vector<3x3xi1> to vector<2x3xi1>
        %alloc_42 = memref.alloc() : memref<15x16xf32>
        memref.alloca_scope.return %alloc_42 : memref<15x16xf32>
      }
      %269 = vector.reduction <and>, %89 : vector<3xi1> into i1
      %270 = vector.transpose %54, [0, 1] : vector<3x3xi1> to vector<3x3xi1>
      %271 = math.tan %expanded : tensor<3x3x1xf16>
      %272 = vector.broadcast %102 : index to vector<15xindex>
      %273 = vector.broadcast %true : i1 to vector<15xi1>
      %274 = vector.broadcast %cst_0 : f32 to vector<15xf32>
      vector.scatter %268[%c13, %c7] [%272], %273, %274 : memref<15x16xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
      %275 = arith.addf %cst_2, %cst_1 : f32
      %276 = vector.broadcast %cst : f16 to vector<5x3x15xf16>
      %277 = vector.broadcast %46 : i32 to vector<5x3x15xi32>
      %278 = vector.gather %2[%61, %c13] [%277], %59, %276 : tensor<3x3xf16>, vector<5x3x15xi32>, vector<5x3x15xi1>, vector<5x3x15xf16> into vector<5x3x15xf16>
      %279 = math.tan %transposed : tensor<16x15xf32>
      %alloc_40 = memref.alloc() : memref<15x16xf16>
      scf.yield %alloc_40 : memref<15x16xf16>
    } else {
      %268 = affine.apply affine_map<(d0, d1, d2) -> (d0 mod 2 - 4)>(%111, %74, %101)
      %false_40 = index.bool.constant false
      %269 = arith.xori %c268195901_i64, %104 : i64
      %270 = vector.reduction <or>, %90 : vector<3xi64> into i64
      %271 = math.tanh %7 : tensor<5x16x5xf32>
      %collapsed_41 = tensor.collapse_shape %expanded [[0, 1], [2]] : tensor<3x3x1xf16> into tensor<9x1xf16>
      %272 = index.sizeof
      vector.print %75 : vector<5x16x5xi64>
      %alloc_42 = memref.alloc() : memref<15x16xf16>
      scf.yield %alloc_42 : memref<15x16xf16>
    }
    %115 = arith.divf %cst_2, %cst_2 : f32
    %116 = arith.minf %cst_0, %cst_2 : f32
    %117 = arith.remui %c-6735_i16, %c-23574_i16 : i16
    scf.index_switch %c14 
    case 1 {
      %268 = math.ctlz %c38605508_i32 : i32
      %269 = index.mul %102, %c11
      %270 = arith.divsi %true, %false : i1
      %271 = index.mul %c8, %c9
      %c1924294012_i32 = arith.constant 1924294012 : i32
      %272 = math.ipowi %collapsed_23, %collapsed_23 : tensor<240xi32>
      %273 = index.add %c5, %111
      %274 = affine.min affine_map<(d0, d1, d2) -> (d0, d0 + (d0 + 2) * 32, d0 floordiv 32 - d2 floordiv 128)>(%c4, %82, %84)
      %275 = math.ctlz %c1809694973_i32 : i32
      %276 = arith.maxui %c38605508_i32, %c38605508_i32 : i32
      %splat_40 = tensor.splat %cst_1 : tensor<3x3xf32>
      %277 = vector.splat %c8 : vector<5x3x15xindex>
      %278 = math.floor %6 : tensor<15x16xf16>
      %279 = vector.outerproduct %89, %89, %54 {kind = #vector.kind<or>} : vector<3xi1>, vector<3xi1>
      %280 = arith.shrsi %c1809694973_i32, %c38605508_i32 : i32
      %281 = arith.ceildivsi %c268195901_i64, %104 : i64
      scf.yield
    }
    default {
      %268 = scf.if %false -> (f16) {
        %inserted_40 = tensor.insert %104 into %1[%c10, %c14] : tensor<15x16xi64>
        %284 = tensor.empty() : tensor<16x16xf32>
        %285 = linalg.matmul ins(%transposed, %9 : tensor<16x15xf32>, tensor<15x16xf32>) outs(%284 : tensor<16x16xf32>) -> tensor<16x16xf32>
        %286 = vector.broadcast %c-15365_i16 : i16 to vector<3xi16>
        %287 = vector.multi_reduction <or>, %87, %286 [0] : vector<3x3xi16> to vector<3xi16>
        %288 = math.absi %15 : tensor<5x16x5xi64>
        %289 = vector.flat_transpose %89 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
        %290 = math.tan %9 : tensor<15x16xf32>
        %291 = index.sub %c8, %c9
        affine.store %true, %alloc_7[%c2, %c8] : memref<3x3xi1>
        scf.yield %cst : f16
      } else {
        %284 = index.ceildivs %c14, %c1
        %alloc_40 = memref.alloc() : memref<i64>
        memref.tensor_store %21, %alloc_40 : memref<i64>
        %285 = arith.remsi %46, %c1809694973_i32 : i32
        %286 = math.absi %3 : tensor<5x3x15xi64>
        %287 = arith.andi %c-523_i16, %c27644_i16 : i16
        %288 = math.tanh %6 : tensor<15x16xf16>
        %289 = arith.minui %c27644_i16, %c-6735_i16 : i16
        %290 = arith.cmpf true, %cst_2, %cst_2 : f32
        scf.yield %cst : f16
      }
      %269 = math.log10 %16 : tensor<5x16x5xf32>
      %270 = math.fpowi %18, %39 : tensor<16x15xf32>, tensor<16x15xi32>
      %271 = vector.flat_transpose %89 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
      %272 = math.absi %11 : tensor<3x3xi32>
      %273 = math.ctlz %21 : tensor<i64>
      %274 = math.log1p %268 : f16
      %275 = vector.shuffle %58, %54 [2, 4] : vector<3x3xi1>, vector<3x3xi1>
      %276 = arith.shrui %false, %true : i1
      %277 = arith.maxui %c1809694973_i32, %c38605508_i32 : i32
      %278 = scf.if %true -> (i16) {
        %284 = tensor.empty() : tensor<5x3x15xi32>
        %285 = arith.divsi %c-15365_i16, %c27644_i16 : i16
        %286 = math.tanh %transposed : tensor<16x15xf32>
        %287 = math.atan2 %9, %9 : tensor<15x16xf32>
        %288 = index.maxs %c7, %106
        %289 = math.absi %c268195901_i64 : i64
        %290 = arith.ori %c-23574_i16, %c-6735_i16 : i16
        %291 = arith.minui %c-15365_i16, %c27644_i16 : i16
        scf.yield %c-12004_i16 : i16
      } else {
        %284 = arith.divui %c-23574_i16, %c-523_i16 : i16
        %285 = math.tanh %18 : tensor<16x15xf32>
        %286 = vector.transpose %75, [0, 1, 2] : vector<5x16x5xi64> to vector<5x16x5xi64>
        %287 = math.log2 %9 : tensor<15x16xf32>
        %288 = tensor.empty() : tensor<15x16xi32>
        %289 = math.fpowi %6, %288 : tensor<15x16xf16>, tensor<15x16xi32>
        %290 = arith.maxf %cst_2, %cst_0 : f32
        %291 = math.roundeven %13 : tensor<5x16x5xf16>
        %292 = index.maxs %c11, %61
        scf.yield %c-12004_i16 : i16
      }
      %279 = arith.maxf %268, %cst : f16
      %280 = arith.divf %cst_2, %cst_2 : f32
      %281 = memref.realloc %alloc_18 : memref<16xi64> to memref<16xi64>
      %282 = index.maxu %c10, %102
      %283 = vector.reduction <or>, %271 : vector<3xi1> into i1
    }
    %118 = arith.maxui %c27644_i16, %c-23574_i16 : i16
    %119 = affine.max affine_map<(d0, d1, d2) -> ((d2 + 8) floordiv 16 + ((d2 + 8) floordiv 16) floordiv 8, d2, d1, (((d2 + 8) floordiv 16) floordiv 8) * 128 + 32)>(%c12, %c13, %102)
    %120 = arith.divui %46, %c38605508_i32 : i32
    %121 = vector.reduction <mul>, %89 : vector<3xi1> into i1
    %collapsed_25 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<5x16x5xi64> into tensor<80x5xi64>
    %alloc_26 = memref.alloc() : memref<15x16xi16>
    %122 = vector.broadcast %c-23574_i16 : i16 to vector<5x3x15xi16>
    %123 = vector.broadcast %46 : i32 to vector<5x3x15xi32>
    %124 = vector.gather %alloc_26[%30, %23] [%123], %59, %122 : memref<15x16xi16>, vector<5x3x15xi32>, vector<5x3x15xi1>, vector<5x3x15xi16> into vector<5x3x15xi16>
    %125 = index.maxu %c7, %c0
    %126 = arith.shrui %c-523_i16, %c-23574_i16 : i16
    %127 = math.log10 %7 : tensor<5x16x5xf32>
    %inserted_27 = tensor.insert %104 into %15[%c1, %c12, %c4] : tensor<5x16x5xi64>
    %128 = vector.broadcast %104 : i64 to vector<5xi64>
    %129 = vector.insert %128, %78 [1, 15] : vector<5xi64> into vector<5x16x5xi64>
    %130 = vector.matrix_multiply %20, %20 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
    %131 = memref.load %alloc_11[%c0, %c0] : memref<3x3xi16>
    %132 = arith.muli %c1809694973_i32, %c1220632730_i32 : i32
    %133 = math.ctlz %85 : tensor<15x16xi1>
    %134 = math.round %6 : tensor<15x16xf16>
    %135 = index.divu %125, %84
    %136 = index.maxu %101, %c9
    %137 = math.round %9 : tensor<15x16xf32>
    %138 = math.rsqrt %17 : tensor<5x16x5xf32>
    %139 = affine.load %alloc_22[%c11, %c6, %c11] : memref<5x3x15xi64>
    %140 = arith.divf %cst, %cst : f16
    %141 = vector.extract_strided_slice %59 {offsets = [2, 0], sizes = [3, 2], strides = [1, 1]} : vector<5x3x15xi1> to vector<3x2x15xi1>
    %142 = arith.addf %cst, %cst : f16
    %143 = vector.broadcast %cst_2 : f32 to vector<3x3xf32>
    %144 = vector.fma %143, %143, %143 : vector<3x3xf32>
    %145 = arith.shli %false, %true : i1
    %collapsed_28 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<5x16x5xf16> into tensor<80x5xf16>
    %146 = math.log2 %2 : tensor<3x3xf16>
    %147 = arith.ceildivsi %c-6735_i16, %c27644_i16 : i16
    %148 = vector.create_mask %c3, %c12, %c13 : vector<5x16x5xi1>
    memref.assume_alignment %45, 8 : memref<3x3xf32>
    %149 = arith.negf %cst_1 : f32
    %150 = math.ctlz %c-12004_i16 : i16
    %151 = arith.ceildivsi %c-12004_i16, %c-15365_i16 : i16
    %152 = arith.remui %c-523_i16, %c27644_i16 : i16
    %153 = vector.bitcast %47 : vector<3x3xi1> to vector<3x3xi1>
    %154 = tensor.empty() : tensor<5x16x5xi32>
    %155 = math.fpowi %13, %154 : tensor<5x16x5xf16>, tensor<5x16x5xi32>
    %156 = math.rsqrt %2 : tensor<3x3xf16>
    %157 = bufferization.to_memref %collapsed_28 : memref<80x5xf16>
    %158 = math.cttz %c38605508_i32 : i32
    %159 = vector.multi_reduction <or>, %88, %88 [] : vector<3xi64> to vector<3xi64>
    %160 = arith.subi %true, %false : i1
    %161 = arith.minsi %c1220632730_i32, %46 : i32
    %162 = index.maxs %c15, %106
    %163 = index.floordivs %125, %102
    %inserted_29 = tensor.insert %cst_0 into %16[%c3, %c8, %c4] : tensor<5x16x5xf32>
    %164 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - d0 * 4 + 96, d3 - (d1 - 32) + 16)>(%c4, %c13, %101, %135)
    %165 = bufferization.clone %alloc_16 : memref<5x3x15xf32> to memref<5x3x15xf32>
    %166 = math.fpowi %7, %154 : tensor<5x16x5xf32>, tensor<5x16x5xi32>
    %167 = tensor.empty(%c2, %c12) : tensor<5x?x?xi64>
    %168 = memref.load %alloc_11[%c0, %c2] : memref<3x3xi16>
    %169 = memref.alloca_scope  -> (memref<5x3x15xi64>) {
      %268 = arith.divui %c-6735_i16, %c27644_i16 : i16
      scf.if %true {
        %300 = math.absf %9 : tensor<15x16xf32>
        %301 = vector.matrix_multiply %90, %90 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi64>, vector<3xi64>) -> vector<1xi64>
        %302 = vector.bitcast %141 : vector<3x2x15xi1> to vector<3x2x15xi1>
        %rank_42 = tensor.rank %12 : tensor<15x16xi16>
        %303 = affine.min affine_map<(d0) -> (d0 floordiv 32)>(%c12)
        %304 = vector.splat %cst_0 : vector<15x16xf32>
        %305 = vector.broadcast %cst_1 : f32 to vector<3x3xf32>
        %306 = vector.fma %305, %143, %144 : vector<3x3xf32>
        %307 = bufferization.to_tensor %alloc_14 : memref<15x16xi32>
      }
      %269 = affine.load %alloc_9[%c15, %c12] : memref<15x16xi32>
      %270 = vector.gather %4[%102, %125] [%123], %59, %59 : tensor<3x3xi1>, vector<5x3x15xi32>, vector<5x3x15xi1>, vector<5x3x15xi1> into vector<5x3x15xi1>
      %271 = arith.mulf %cst_2, %cst_1 : f32
      %272 = arith.muli %c-12004_i16, %c-523_i16 : i16
      %273 = arith.divf %cst_0, %cst_2 : f32
      %274 = index.sizeof
      %275 = arith.maxui %c-12004_i16, %c-23574_i16 : i16
      %276 = vector.broadcast %269 : i32 to vector<15x16xi32>
      %277 = vector.gather %alloc_13[%61, %c0, %111] [%276], %57, %57 : memref<5x16x5xi1>, vector<15x16xi32>, vector<15x16xi1>, vector<15x16xi1> into vector<15x16xi1>
      %278 = memref.alloca_scope  -> (i1) {
        %300 = arith.minui %c-523_i16, %c-523_i16 : i16
        %301 = math.ipowi %14, %14 : tensor<3x3xi64>
        %302 = vector.flat_transpose %20 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
        %inserted_42 = tensor.insert %139 into %14[%c0, %c1] : tensor<3x3xi64>
        %303 = math.log1p %6 : tensor<15x16xf16>
        %304 = math.absi %4 : tensor<3x3xi1>
        %305 = arith.divui %c1809694973_i32, %c38605508_i32 : i32
        %collapsed_43 = tensor.collapse_shape %cast [[0, 1]] : tensor<?x?xf16> into tensor<?xf16>
        %306 = math.ctlz %8 : tensor<5x16x5xi64>
        %307 = vector.broadcast %cst_2 : f32 to vector<5xf32>
        %308 = vector.transfer_write %307, %18[%c12, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xf32>, tensor<16x15xf32>
        %309 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %130, %130, %c1809694973_i32 : vector<1xi32>, vector<1xi32> into i32
        %310 = arith.floordivsi %c-12004_i16, %c-23574_i16 : i16
        %false_44 = index.bool.constant false
        %cst_45 = arith.constant 2.275200e+04 : f16
        %311 = math.absf %9 : tensor<15x16xf32>
        %312 = math.atan %6 : tensor<15x16xf16>
        %313 = math.floor %7 : tensor<5x16x5xf32>
        %314 = affine.load %alloc_17[%c13, %c10] : memref<15x16xi1>
        %315 = math.log2 %2 : tensor<3x3xf16>
        %316 = bufferization.clone %alloc_15 : memref<5x3x15xf16> to memref<5x3x15xf16>
        %317 = vector.load %alloc_12[%c2, %c12, %c3] : memref<5x16x5xi1>, vector<3x3xi1>
        %318 = vector.transpose %54, [1, 0] : vector<3x3xi1> to vector<3x3xi1>
        %319 = arith.shrui %46, %c38605508_i32 : i32
        %320 = math.roundeven %9 : tensor<15x16xf32>
        %321 = vector.broadcast %139 : i64 to vector<5x5xi64>
        %dest, %accumulated_value = vector.scan <add>, %78, %321 {inclusive = true, reduction_dim = 1 : i64} : vector<5x16x5xi64>, vector<5x5xi64>
        %322 = math.log %13 : tensor<5x16x5xf16>
        bufferization.dealloc_tensor %6 : tensor<15x16xf16>
        %323 = arith.minui %false, %false : i1
        %324 = index.maxu %c3, %274
        %325 = arith.muli %46, %269 : i32
        %326 = math.cos %cst_2 : f32
        %327 = index.castu %67 : index to i32
        memref.alloca_scope.return %314 : i1
      }
      %279 = math.rsqrt %9 : tensor<15x16xf32>
      %280 = vector.broadcast %c6 : index to vector<15xindex>
      %281 = vector.broadcast %true : i1 to vector<15xi1>
      %282 = vector.broadcast %cst : f16 to vector<15xf16>
      vector.scatter %alloc_8[%c0, %c1] [%280], %281, %282 : memref<3x3xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
      %283 = arith.maxsi %46, %46 : i32
      %284 = vector.broadcast %c1220632730_i32 : i32 to vector<15x16xi32>
      scf.if %278 {
        %300 = arith.remui %c1809694973_i32, %c1220632730_i32 : i32
        %301 = math.copysign %cst, %cst : f16
        %302 = index.mul %c4, %c1
        %303 = tensor.empty() : tensor<80x5xi32>
        %304 = math.fpowi %collapsed_28, %303 : tensor<80x5xf16>, tensor<80x5xi32>
        %305 = index.mul %84, %c4
        %306 = vector.gather %15[%162, %c11, %163] [%77], %148, %78 : tensor<5x16x5xi64>, vector<5x16x5xi32>, vector<5x16x5xi1>, vector<5x16x5xi64> into vector<5x16x5xi64>
        %307 = math.ipowi %104, %c268195901_i64 : i64
        %308 = vector.broadcast %c268195901_i64 : i64 to vector<3x3xi64>
        %309 = vector.outerproduct %88, %88, %308 {kind = #vector.kind<maxsi>} : vector<3xi64>, vector<3xi64>
      }
      %285 = memref.load %114[%c3, %c0] : memref<15x16xf16>
      %286 = tensor.empty() : tensor<15x16xf32>
      %287 = vector.reduction <minsi>, %20 : vector<15xi32> into i32
      %288 = arith.muli %c-12004_i16, %c-6735_i16 : i16
      %289 = arith.divsi %104, %104 : i64
      %290 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d0 - 64), 0, d0 - 64)>(%c13, %84, %30, %c5)
      %collapsed_40 = tensor.collapse_shape %286 [[0, 1]] : tensor<15x16xf32> into tensor<240xf32>
      %c234 = arith.constant 234 : index
      %inserted_41 = tensor.insert %cst_2 into %collapsed_40[%c234] : tensor<240xf32>
      %291 = math.cos %17 : tensor<5x16x5xf32>
      %292 = math.log10 %transposed : tensor<16x15xf32>
      %293 = vector.outerproduct %89, %89, %153 {kind = #vector.kind<add>} : vector<3xi1>, vector<3xi1>
      %294 = arith.shrsi %c-523_i16, %c-523_i16 : i16
      %295 = tensor.empty() : tensor<15x16xi32>
      %296 = math.fpowi %9, %295 : tensor<15x16xf32>, tensor<15x16xi32>
      %297 = math.rsqrt %9 : tensor<15x16xf32>
      %298 = math.tanh %cst : f16
      %299 = arith.minui %c1220632730_i32, %c1809694973_i32 : i32
      memref.alloca_scope.return %alloc_22 : memref<5x3x15xi64>
    }
    %170 = affine.apply affine_map<(d0) -> (0)>(%135)
    %171 = index.ceildivs %c8, %c1
    %172 = arith.divsi %c38605508_i32, %c1809694973_i32 : i32
    %173 = vector.transpose %57, [1, 0] : vector<15x16xi1> to vector<16x15xi1>
    %174 = vector.reduction <add>, %89 : vector<3xi1> into i1
    %175 = bufferization.to_tensor %alloc_9 : memref<15x16xi32>
    %176 = memref.load %alloc_22[%c1, %c0, %c14] : memref<5x3x15xi64>
    %177 = index.divu %136, %101
    %178 = arith.minui %false, %true : i1
    %179 = vector.bitcast %54 : vector<3x3xi1> to vector<3x3xi1>
    %180 = index.ceildivu %c12, %c1
    %181 = arith.shrsi %c-15365_i16, %c-6735_i16 : i16
    %alloc_30 = memref.alloc() : memref<16x15xi32>
    memref.tensor_store %39, %alloc_30 : memref<16x15xi32>
    %182 = vector.bitcast %88 : vector<3xi64> to vector<3xi64>
    %false_31 = index.bool.constant false
    %183 = math.tan %17 : tensor<5x16x5xf32>
    %184 = arith.negf %cst_0 : f32
    %185 = scf.if %false_31 -> (i64) {
      %268 = vector.reduction <minsi>, %182 : vector<3xi64> into i64
      %269 = math.tanh %9 : tensor<15x16xf32>
      %270 = index.maxu %c11, %136
      %271 = arith.remf %cst_2, %cst_2 : f32
      %272 = arith.divf %cst_0, %cst_1 : f32
      %273 = arith.shrui %c1220632730_i32, %46 : i32
      %274 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d0 + 32), d1 - d0, d1 - d0, -(d1 - d0))>(%170, %270, %164, %270)
      %275 = arith.cmpf ord, %cst_1, %cst_1 : f32
      scf.yield %104 : i64
    } else {
      %268 = math.exp2 %collapsed_28 : tensor<80x5xf16>
      %269 = memref.alloca_scope  -> (i64) {
        %278 = vector.broadcast %cst : f16 to vector<3x3xf16>
        %279 = vector.shuffle %148, %76 [0, 1, 2, 5, 7, 9] : vector<5x16x5xi1>, vector<5x16x5xi1>
        %280 = vector.create_mask %c2, %180 : vector<15x16xi1>
        %281 = math.cos %from_elements : tensor<5x16x5xf16>
        %282 = math.floor %cst_2 : f32
        %283 = vector.splat %c4 : vector<15x16xindex>
        %284 = index.floordivs %c9, %c15
        %285 = math.ctlz %11 : tensor<3x3xi32>
        %286 = arith.negf %cst : f16
        %287 = arith.cmpf ult, %cst_1, %cst_0 : f32
        %288 = vector.create_mask %c5, %63 : vector<15x16xi1>
        %false_40 = index.bool.constant false
        %289 = index.maxu %c0, %125
        %290 = math.ceil %cst : f16
        %291 = bufferization.clone %alloc_13 : memref<5x16x5xi1> to memref<5x16x5xi1>
        %292 = math.exp %cst : f16
        memref.tensor_store %12, %alloc_26 : memref<15x16xi16>
        %293 = math.absi %c-523_i16 : i16
        %294 = vector.transpose %76, [2, 1, 0] : vector<5x16x5xi1> to vector<5x16x5xi1>
        %295 = arith.floordivsi %c1220632730_i32, %c1809694973_i32 : i32
        %296 = vector.bitcast %35 : vector<1x16xf32> to vector<1x16xf32>
        %297 = arith.maxsi %c-15365_i16, %c-15365_i16 : i16
        %298 = vector.create_mask %164, %c1, %c14 : vector<5x16x5xi1>
        %299 = index.ceildivs %c1, %106
        %300 = vector.matrix_multiply %130, %130 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
        %301 = vector.shuffle %280, %57 [0, 1, 2, 4, 5, 6, 8, 10, 12, 14, 18, 19, 22, 25, 27, 28] : vector<15x16xi1>, vector<15x16xi1>
        %302 = vector.extract %141[2] : vector<3x2x15xi1>
        %303 = vector.shuffle %296, %33 [0, 3, 4, 6, 7, 8, 9, 12, 13] : vector<1x16xf32>, vector<15x16xf32>
        %304 = index.floordivs %23, %61
        %305 = math.rsqrt %13 : tensor<5x16x5xf16>
        %collapsed_41 = tensor.collapse_shape %2 [[0, 1]] : tensor<3x3xf16> into tensor<9xf16>
        %306 = vector.splat %c1 : vector<5x16x5xindex>
        memref.alloca_scope.return %104 : i64
      }
      %270 = arith.shrui %139, %139 : i64
      %271 = vector.broadcast %269 : i64 to vector<5x3x15xi64>
      %272 = vector.gather %3[%84, %106, %c2] [%123], %59, %271 : tensor<5x3x15xi64>, vector<5x3x15xi32>, vector<5x3x15xi1>, vector<5x3x15xi64> into vector<5x3x15xi64>
      %273 = affine.load %alloc_17[%c11, %c15] : memref<15x16xi1>
      %274 = vector.broadcast %c4 : index to vector<16xindex>
      %275 = vector.broadcast %273 : i1 to vector<16xi1>
      %276 = vector.broadcast %cst_1 : f32 to vector<16xf32>
      vector.scatter %45[%c1, %c0] [%274], %275, %276 : memref<3x3xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
      %277 = arith.remf %cst_0, %cst_2 : f32
      scf.if %true {
        %278 = arith.minui %c-6735_i16, %c-12004_i16 : i16
        %279 = bufferization.clone %45 : memref<3x3xf32> to memref<3x3xf32>
        %280 = arith.negf %cst_1 : f32
        %281 = index.floordivs %111, %c2
        %282 = affine.load %alloc_18[%c10] : memref<16xi64>
        %283 = arith.shrsi %c1220632730_i32, %c1220632730_i32 : i32
        %284 = math.roundeven %cst_0 : f32
        %285 = vector.create_mask %c14, %c6, %c13 : vector<5x3x15xi1>
      } else {
        %278 = arith.minsi %c-6735_i16, %c-6735_i16 : i16
        %279 = math.ctpop %15 : tensor<5x16x5xi64>
        %280 = vector.shuffle %144, %143 [0, 1, 3, 4, 5] : vector<3x3xf32>, vector<3x3xf32>
        %281 = affine.max affine_map<(d0, d1, d2) -> (-d1, -(d2 * 4 - 1), -d1 + d2)>(%63, %84, %c10)
        memref.store %c-23574_i16, %alloc_11[%c1, %c1] : memref<3x3xi16>
        %282 = arith.maxsi %104, %269 : i64
        %283 = vector.insertelement %c268195901_i64, %128[%171 : index] : vector<5xi64>
        %284 = math.fpowi %18, %39 : tensor<16x15xf32>, tensor<16x15xi32>
      }
      scf.yield %104 : i64
    }
    %186 = tensor.empty() : tensor<16x5xf16>
    %187 = tensor.empty() : tensor<15x5xf16>
    %188 = linalg.matmul ins(%6, %186 : tensor<15x16xf16>, tensor<16x5xf16>) outs(%187 : tensor<15x5xf16>) -> tensor<15x5xf16>
    affine.store %cst_1, %alloc_16[%c5, %c3, %c12] : memref<5x3x15xf32>
    %189 = affine.if affine_set<(d0, d1, d2) : (-(d0 floordiv 64) >= 0, (d2 mod 32) floordiv 4 + d0 floordiv 64 >= 0, d2 >= 0, d2 mod 32 == 0)>(%c6, %c10, %c5) -> i16 {
      %268 = arith.remf %cst_0, %cst_1 : f32
      %alloc_40 = memref.alloc() : memref<5x5xf16>
      %269 = tensor.empty() : tensor<80x5xf16>
      %270 = linalg.matmul ins(%collapsed_28, %alloc_40 : tensor<80x5xf16>, memref<5x5xf16>) outs(%269 : tensor<80x5xf16>) -> tensor<80x5xf16>
      %271 = index.add %c5, %c10
      %272 = tensor.empty() : tensor<5x3x15xi64>
      %273 = scf.index_switch %162 -> memref<15x16xi32> 
      case 1 {
        %278 = tensor.empty(%82) : tensor<15x?xi64>
        %279 = arith.negf %cst_2 : f32
        affine.store %c1809694973_i32, %alloc_14[%c1, %c8] : memref<15x16xi32>
        %280 = index.ceildivu %106, %c3
        %281 = vector.broadcast %46 : i32 to vector<15x16xi32>
        %282 = vector.gather %0[%74, %119, %74] [%281], %57, %281 : tensor<5x3x15xi32>, vector<15x16xi32>, vector<15x16xi1>, vector<15x16xi32> into vector<15x16xi32>
        %283 = math.copysign %cst_2, %cst_1 : f32
        %284 = arith.divf %cst_1, %cst_0 : f32
        %285 = math.tanh %7 : tensor<5x16x5xf32>
        %286 = arith.mulf %cst_2, %cst_1 : f32
        %287 = arith.maxsi %c27644_i16, %c27644_i16 : i16
        %288 = arith.minui %46, %46 : i32
        %289 = vector.broadcast %c14 : index to vector<3xindex>
        vector.scatter %alloc_19[%c4] [%289], %89, %88 : memref<16xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
        %290 = math.exp2 %2 : tensor<3x3xf16>
        %291 = math.log10 %cst_2 : f32
        %292 = arith.divui %true, %false : i1
        %293 = index.sub %102, %136
        scf.yield %alloc_10 : memref<15x16xi32>
      }
      default {
        %278 = arith.maxui %c27644_i16, %c-523_i16 : i16
        %279 = math.roundeven %7 : tensor<5x16x5xf32>
        %280 = math.tanh %cst_2 : f32
        %281 = math.atan %6 : tensor<15x16xf16>
        %true_41 = index.bool.constant true
        %282 = arith.remf %cst_0, %cst_1 : f32
        %283 = memref.load %165[%c2, %c0, %c2] : memref<5x3x15xf32>
        %284 = index.castu %true_41 : i1 to index
        %285 = math.ipowi %10, %10 : tensor<5x16x5xi1>
        %286 = arith.divsi %c38605508_i32, %c38605508_i32 : i32
        %287 = vector.broadcast %104 : i64 to vector<3x3xi64>
        %288 = vector.outerproduct %88, %182, %287 {kind = #vector.kind<minui>} : vector<3xi64>, vector<3xi64>
        %289 = math.ipowi %collapsed_25, %collapsed_25 : tensor<80x5xi64>
        %collapsed_42 = tensor.collapse_shape %269 [[0, 1]] : tensor<80x5xf16> into tensor<400xf16>
        %290 = vector.splat %c3 : vector<5x3x15xindex>
        %291 = arith.maxui %c268195901_i64, %139 : i64
        %292 = index.ceildivs %c1, %c9
        scf.yield %alloc_10 : memref<15x16xi32>
      }
      %274 = math.round %18 : tensor<16x15xf32>
      %275 = vector.broadcast %c1809694973_i32 : i32 to vector<15x15xi32>
      %276 = vector.outerproduct %20, %20, %275 {kind = #vector.kind<maxui>} : vector<15xi32>, vector<15xi32>
      %277 = affine.load %alloc_17[%c7, %c3] : memref<15x16xi1>
      affine.yield %c27644_i16 : i16
    } else {
      %268 = vector.gather %0[%74, %106, %c3] [%123], %59, %123 : tensor<5x3x15xi32>, vector<5x3x15xi32>, vector<5x3x15xi1>, vector<5x3x15xi32> into vector<5x3x15xi32>
      %269 = vector.transpose %89, [0] : vector<3xi1> to vector<3xi1>
      %270 = scf.while (%arg2 = %c-15365_i16) : (i16) -> i16 {
        %276 = arith.minsi %c38605508_i32, %46 : i32
        %277 = math.copysign %cst_1, %cst_0 : f32
        %278 = arith.remf %cst_2, %cst_1 : f32
        %cst_40 = arith.constant 6.169600e+04 : f16
        %279 = math.tan %transposed : tensor<16x15xf32>
        %alloc_41 = memref.alloc() : memref<80x5xi64>
        memref.tensor_store %collapsed_25, %alloc_41 : memref<80x5xi64>
        %rank_42 = tensor.rank %5 : tensor<5x3x15xi64>
        %280 = index.mul %c10, %164
        scf.condition(%true) %c-12004_i16 : i16
      } do {
      ^bb0(%arg2: i16):
        %276 = math.tan %187 : tensor<15x5xf16>
        %277 = tensor.empty() : tensor<15x15xi32>
        %278 = linalg.matmul ins(%175, %39 : tensor<15x16xi32>, tensor<16x15xi32>) outs(%277 : tensor<15x15xi32>) -> tensor<15x15xi32>
        %279 = arith.remui %139, %104 : i64
        %280 = vector.bitcast %58 : vector<3x3xi1> to vector<3x3xi1>
        %from_elements_40 = tensor.from_elements %c1809694973_i32, %46, %c1220632730_i32, %c1220632730_i32, %46, %c1220632730_i32, %c1220632730_i32, %46, %46 : tensor<3x3xi32>
        %281 = vector.insertelement %104, %182[%180 : index] : vector<3xi64>
        %282 = vector.broadcast %74 : index to vector<15xindex>
        %283 = vector.broadcast %true : i1 to vector<15xi1>
        %284 = vector.broadcast %c-6735_i16 : i16 to vector<15xi16>
        vector.scatter %alloc_26[%c7, %c11] [%282], %283, %284 : memref<15x16xi16>, vector<15xindex>, vector<15xi1>, vector<15xi16>
        %285 = tensor.empty() : tensor<3x3xi32>
        %286 = linalg.matmul ins(%11, %from_elements_40 : tensor<3x3xi32>, tensor<3x3xi32>) outs(%285 : tensor<3x3xi32>) -> tensor<3x3xi32>
        %287 = vector.extract_strided_slice %75 {offsets = [0, 8], sizes = [2, 4], strides = [1, 1]} : vector<5x16x5xi64> to vector<2x4x5xi64>
        %288 = bufferization.clone %alloc_19 : memref<16xi64> to memref<16xi64>
        %289 = bufferization.to_tensor %alloc_17 : memref<15x16xi1>
        %290 = math.roundeven %transposed : tensor<16x15xf32>
        %291 = vector.bitcast %87 : vector<3x3xi16> to vector<3x3xf16>
        %292 = math.log2 %collapsed_28 : tensor<80x5xf16>
        %expanded_41 = tensor.expand_shape %collapsed_23 [[0, 1]] : tensor<240xi32> into tensor<240x1xi32>
        %293 = index.add %c2, %63
        scf.yield %c-12004_i16 : i16
      }
      %271 = arith.shrui %c-15365_i16, %c-23574_i16 : i16
      %272 = arith.mulf %cst_0, %cst_0 : f32
      %273 = math.atan2 %9, %9 : tensor<15x16xf32>
      %274 = arith.negf %cst_2 : f32
      %275 = math.round %cst : f16
      affine.yield %c27644_i16 : i16
    }
    %190 = memref.load %alloc_10[%c13, %c6] : memref<15x16xi32>
    %191 = math.ipowi %0, %0 : tensor<5x3x15xi32>
    %192 = vector.create_mask %c1, %135, %c2 : vector<5x16x5xi1>
    %193 = math.ctlz %1 : tensor<15x16xi64>
    %cast_32 = tensor.cast %0 : tensor<5x3x15xi32> to tensor<?x?x?xi32>
    scf.if %false_31 {
      %alloc_40 = memref.alloc() : memref<15x16xi64>
      %268 = vector.broadcast %139 : i64 to vector<5x3x15xi64>
      %269 = vector.gather %alloc_40[%c7, %c11] [%123], %59, %268 : memref<15x16xi64>, vector<5x3x15xi32>, vector<5x3x15xi1>, vector<5x3x15xi64> into vector<5x3x15xi64>
      %270 = math.copysign %9, %9 : tensor<15x16xf32>
      %271 = affine.load %45[%c3, %c1] : memref<3x3xf32>
      %272 = math.roundeven %9 : tensor<15x16xf32>
      %273 = math.round %collapsed_28 : tensor<80x5xf16>
      %274 = vector.flat_transpose %88 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
      %275 = vector.shuffle %54, %54 [0, 1, 2, 5] : vector<3x3xi1>, vector<3x3xi1>
      %cast_41 = tensor.cast %2 : tensor<3x3xf16> to tensor<?x?xf16>
    }
    %194 = index.sizeof
    memref.assume_alignment %alloc_16, 1 : memref<5x3x15xf32>
    %195 = math.absf %18 : tensor<16x15xf32>
    %196 = vector.broadcast %171 : index to vector<5xindex>
    %197 = vector.broadcast %true : i1 to vector<5xi1>
    %198 = vector.broadcast %cst_2 : f32 to vector<5xf32>
    vector.scatter %alloc_3[%c0, %c1, %c3] [%196], %197, %198 : memref<5x16x5xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
    %199 = vector.transpose %35, [0, 1] : vector<1x16xf32> to vector<1x16xf32>
    %200 = arith.mulf %cst_2, %cst_0 : f32
    scf.if %true {
      %268 = arith.remsi %c-12004_i16, %c27644_i16 : i16
      %269 = scf.execute_region -> tensor<3x3xi16> {
        %274 = index.maxu %c7, %74
        %275 = math.floor %9 : tensor<15x16xf32>
        %276 = arith.cmpf false, %cst_2, %cst_2 : f32
        %277 = math.copysign %9, %9 : tensor<15x16xf32>
        %278 = arith.andi %c-6735_i16, %c27644_i16 : i16
        %279 = math.atan %cst_2 : f32
        %280 = math.tan %16 : tensor<5x16x5xf32>
        %281 = memref.load %169[%c1, %c2, %c9] : memref<5x3x15xi64>
        %282 = arith.remf %cst_1, %cst_2 : f32
        %283 = arith.minsi %c27644_i16, %c-12004_i16 : i16
        %284 = index.divu %164, %111
        %285 = index.maxu %c2, %c7
        %286 = math.atan %cst_1 : f32
        %287 = math.ipowi %c-15365_i16, %c-6735_i16 : i16
        %288 = arith.remf %cst_2, %cst_2 : f32
        %289 = math.rsqrt %9 : tensor<15x16xf32>
        %290 = tensor.empty() : tensor<3x3xi16>
        scf.yield %290 : tensor<3x3xi16>
      }
      %270 = arith.divf %cst_2, %cst_0 : f32
      memref.assume_alignment %114, 2 : memref<15x16xf16>
      %271 = math.log2 %cst_2 : f32
      %272 = vector.multi_reduction <maxui>, %20, %20 [] : vector<15xi32> to vector<15xi32>
      %rank_40 = tensor.rank %collapsed : tensor<9xi32>
      %273 = affine.min affine_map<(d0, d1, d2) -> ((d2 ceildiv 64 - 4) * 2)>(%74, %c2, %194)
    }
    %201 = vector.extract %179[0] : vector<3x3xi1>
    %collapsed_33 = tensor.collapse_shape %16 [[0, 1], [2]] : tensor<5x16x5xf32> into tensor<80x5xf32>
    %202 = affine.if affine_set<(d0, d1, d2) : (d0 * 2 == 0)>(%c0, %c4, %c3) -> i16 {
      %268 = math.absf %2 : tensor<3x3xf16>
      %269 = arith.remui %c27644_i16, %c-15365_i16 : i16
      %rank_40 = tensor.rank %22 : tensor<i64>
      %270 = bufferization.clone %alloc_18 : memref<16xi64> to memref<16xi64>
      %271 = arith.negf %cst_1 : f32
      %272 = math.ctlz %5 : tensor<5x3x15xi64>
      %273 = math.absi %8 : tensor<5x16x5xi64>
      %274 = arith.remf %cst, %cst : f16
      affine.yield %c-523_i16 : i16
    } else {
      %268 = arith.maxf %cst_1, %cst_1 : f32
      %collapsed_40 = tensor.collapse_shape %transposed [[0, 1]] : tensor<16x15xf32> into tensor<240xf32>
      %269 = math.tan %expanded : tensor<3x3x1xf16>
      %270 = bufferization.clone %alloc_4 : memref<5x3x15xi32> to memref<5x3x15xi32>
      %271 = affine.min affine_map<(d0) -> (d0 - 4, d0 * 4, -(d0 ceildiv 64))>(%106)
      bufferization.dealloc_tensor %10 : tensor<5x16x5xi1>
      %272 = arith.minui %185, %c268195901_i64 : i64
      %273 = math.exp2 %cst_1 : f32
      affine.yield %c-12004_i16 : i16
    }
    %203 = arith.maxsi %c-523_i16, %c-15365_i16 : i16
    %204 = math.absf %2 : tensor<3x3xf16>
    %205 = vector.broadcast %cst : f16 to vector<3xf16>
    %206 = vector.transfer_write %205, %2[%c3, %194] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xf16>, tensor<3x3xf16>
    %splat = tensor.splat %cst_1 : tensor<5x16x5xf32>
    %rank = tensor.rank %15 : tensor<5x16x5xi64>
    %207 = affine.load %alloc_26[%c1, %c5] : memref<15x16xi16>
    %208 = vector.extract_strided_slice %148 {offsets = [1], sizes = [4], strides = [1]} : vector<5x16x5xi1> to vector<4x16x5xi1>
    %209 = math.fpowi %13, %154 : tensor<5x16x5xf16>, tensor<5x16x5xi32>
    %210 = index.castu %rank : index to i32
    %211 = arith.maxui %139, %139 : i64
    %collapsed_34 = tensor.collapse_shape %15 [[0, 1], [2]] : tensor<5x16x5xi64> into tensor<80x5xi64>
    %212 = vector.splat %194 : vector<5x3x15xindex>
    %213 = arith.xori %c38605508_i32, %c38605508_i32 : i32
    %214 = math.ceil %13 : tensor<5x16x5xf16>
    %215 = math.copysign %17, %7 : tensor<5x16x5xf32>
    %216 = arith.divsi %c268195901_i64, %c268195901_i64 : i64
    %217 = vector.flat_transpose %89 {columns = 3 : i32, rows = 1 : i32} : vector<3xi1> -> vector<3xi1>
    %218 = math.floor %2 : tensor<3x3xf16>
    %219 = vector.outerproduct %217, %89, %179 {kind = #vector.kind<xor>} : vector<3xi1>, vector<3xi1>
    %220 = index.add %84, %23
    %221 = arith.minf %cst_0, %cst_2 : f32
    %222 = arith.cmpf ule, %cst_1, %cst_0 : f32
    %223 = math.ctpop %c38605508_i32 : i32
    %224 = vector.reduction <or>, %128 : vector<5xi64> into i64
    memref.assume_alignment %alloc_18, 16 : memref<16xi64>
    %225 = math.log10 %cst_1 : f32
    %226 = arith.cmpf false, %cst_2, %cst_1 : f32
    %227 = index.maxs %c8, %194
    %228 = arith.muli %185, %139 : i64
    %229 = math.copysign %2, %2 : tensor<3x3xf16>
    %230 = math.round %6 : tensor<15x16xf16>
    %cast_35 = tensor.cast %17 : tensor<5x16x5xf32> to tensor<?x?x?xf32>
    %alloc_36 = memref.alloc() : memref<3x3xi32>
    %231 = vector.gather %alloc_36[%c1, %180] [%77], %76, %77 : memref<3x3xi32>, vector<5x16x5xi32>, vector<5x16x5xi1>, vector<5x16x5xi32> into vector<5x16x5xi32>
    %232 = vector.broadcast %cst_2 : f32 to vector<5x3x15xf32>
    %233 = vector.fma %232, %232, %232 : vector<5x3x15xf32>
    %234 = vector.reduction <or>, %88 : vector<3xi64> into i64
    %235 = affine.apply affine_map<(d0, d1, d2) -> (d0 - d0 floordiv 2 + 1)>(%rank, %125, %67)
    %236 = math.rsqrt %cst_2 : f32
    %237 = index.maxs %180, %30
    %238 = vector.gather %14[%c6, %84] [%231], %192, %75 : tensor<3x3xi64>, vector<5x16x5xi32>, vector<5x16x5xi1>, vector<5x16x5xi64> into vector<5x16x5xi64>
    %239 = vector.broadcast %c1220632730_i32 : i32 to vector<5x3x15xi32>
    %240 = vector.reduction <maxui>, %217 : vector<3xi1> into i1
    %241 = arith.remf %cst_1, %cst_0 : f32
    %242 = math.exp2 %2 : tensor<3x3xf16>
    %243 = vector.broadcast %c5 : index to vector<15xindex>
    %244 = vector.broadcast %true : i1 to vector<15xi1>
    %245 = vector.broadcast %cst_1 : f32 to vector<15xf32>
    vector.scatter %45[%c0, %c2] [%243], %244, %245 : memref<3x3xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
    %246 = arith.divui %c38605508_i32, %c38605508_i32 : i32
    %247 = math.cos %13 : tensor<5x16x5xf16>
    %248 = affine.max affine_map<(d0, d1, d2, d3) -> (d0)>(%136, %136, %235, %177)
    %249 = vector.gather %alloc_9[%248, %227] [%239], %59, %239 : memref<15x16xi32>, vector<5x3x15xi32>, vector<5x3x15xi1>, vector<5x3x15xi32> into vector<5x3x15xi32>
    %250 = arith.andi %false, %false_31 : i1
    %251 = arith.ceildivsi %104, %139 : i64
    %252 = arith.minui %c-6735_i16, %c-15365_i16 : i16
    memref.assume_alignment %alloc_26, 16 : memref<15x16xi16>
    %253 = math.atan2 %13, %13 : tensor<5x16x5xf16>
    %254 = arith.shrui %c27644_i16, %c-12004_i16 : i16
    %255 = affine.min affine_map<(d0, d1, d2) -> (d1 * 2 + d1 - 2 - 1, d1 * 64, -d1 + 64, d0)>(%102, %c12, %84)
    %256 = arith.negf %cst_2 : f32
    vector.print %130 : vector<1xi32>
    %257 = vector.extract_strided_slice %232 {offsets = [0, 1], sizes = [3, 2], strides = [1, 1]} : vector<5x3x15xf32> to vector<3x2x15xf32>
    %258 = math.log10 %187 : tensor<15x5xf16>
    %259 = math.copysign %7, %7 : tensor<5x16x5xf32>
    %260 = math.exp2 %collapsed_33 : tensor<80x5xf32>
    %261 = bufferization.clone %alloc_16 : memref<5x3x15xf32> to memref<5x3x15xf32>
    %rank_37 = tensor.rank %collapsed_33 : tensor<80x5xf32>
    %262 = vector.broadcast %cst_0 : f32 to vector<5x16x5xf32>
    %263 = vector.fma %262, %262, %262 : vector<5x16x5xf32>
    %264 = tensor.empty(%194, %c7) : tensor<?x?xf16>
    %265 = linalg.copy ins(%cast : tensor<?x?xf16>) outs(%264 : tensor<?x?xf16>) -> tensor<?x?xf16>
    %alloc_38 = memref.alloc() : memref<16x15xi64>
    linalg.transpose ins(%1 : tensor<15x16xi64>) outs(%alloc_38 : memref<16x15xi64>) permutation = [1, 0] 
    %alloc_39 = memref.alloc() : memref<15xi32>
    linalg.reduce ins(%alloc_9 : memref<15x16xi32>) outs(%alloc_39 : memref<15xi32>) dimensions = [1] 
      (%in: i32, %init: i32) {
        %268 = arith.subi %104, %104 : i64
        %cast_40 = tensor.cast %13 : tensor<5x16x5xf16> to tensor<?x?x?xf16>
        %269 = arith.remsi %false, %false_31 : i1
        %270 = arith.divsi %185, %139 : i64
        %271 = math.round %13 : tensor<5x16x5xf16>
        %272 = tensor.empty() : tensor<16x15xi32>
        %mapped = linalg.map ins(%39, %39 : tensor<16x15xi32>, tensor<16x15xi32>) outs(%272 : tensor<16x15xi32>)
          (%in_41: i32, %in_42: i32) {
            %275 = math.ctlz %from_elements_21 : tensor<5x16x5xi16>
            %276 = index.maxu %119, %220
            %277 = index.divs %c3, %106
            %278 = arith.remui %true, %false_31 : i1
            %279 = tensor.empty() : tensor<15x16xi64>
            %280 = vector.broadcast %cst_1 : f32 to vector<5x16x5xf32>
            %281 = vector.fma %280, %263, %280 : vector<5x16x5xf32>
            %282 = arith.divsi %true, %true : i1
            %inserted_43 = tensor.insert %c38605508_i32 into %collapsed[%c2] : tensor<9xi32>
            %283 = arith.shrui %true, %false : i1
            %284 = math.exp %6 : tensor<15x16xf16>
            %285 = vector.transpose %238, [0, 1, 2] : vector<5x16x5xi64> to vector<5x16x5xi64>
            %286 = arith.ceildivsi %true, %true : i1
            %287 = math.ctlz %collapsed : tensor<9xi32>
            %288 = affine.min affine_map<(d0, d1) -> ((d0 mod 64) * 4 - (d0 + d1 + 1) mod 64, d1 + 1, d1 + 1, d0 + d1 + 1)>(%177, %61)
            %289 = arith.maxui %false_31, %true : i1
            %290 = arith.shli %c-23574_i16, %c-6735_i16 : i16
            %291 = memref.realloc %alloc_19 : memref<16xi64> to memref<15xi64>
            %292 = index.ceildivu %c13, %c0
            %293 = tensor.empty(%106, %c10) : tensor<?x?x15xi64>
            %294 = arith.maxf %cst_1, %cst_1 : f32
            %295 = vector.transpose %257, [2, 0, 1] : vector<3x2x15xf32> to vector<15x3x2xf32>
            %296 = arith.maxsi %c-23574_i16, %c-12004_i16 : i16
            %297 = vector.extract_strided_slice %75 {offsets = [3, 9], sizes = [2, 3], strides = [1, 1]} : vector<5x16x5xi64> to vector<2x3x5xi64>
            %298 = math.rsqrt %cst : f16
            memref.assume_alignment %alloc_36, 2 : memref<3x3xi32>
            %299 = index.maxu %171, %111
            %300 = math.fpowi %9, %175 : tensor<15x16xf32>, tensor<15x16xi32>
            %301 = tensor.empty(%c6, %rank) : tensor<?x?x5xi64>
            %302 = tensor.empty() : tensor<3x3xi64>
            %303 = linalg.matmul ins(%14, %14 : tensor<3x3xi64>, tensor<3x3xi64>) outs(%302 : tensor<3x3xi64>) -> tensor<3x3xi64>
            %304 = arith.muli %c-12004_i16, %c-12004_i16 : i16
            %305 = vector.reduction <and>, %182 : vector<3xi64> into i64
            %306 = math.roundeven %9 : tensor<15x16xf32>
            %c1_i32_44 = arith.constant 1 : i32
            linalg.yield %c1_i32_44 : i32
          }
        %273 = vector.shuffle %20, %20 [0, 1, 3, 8, 10, 11, 13, 14, 16, 18, 19, 21, 23, 25, 26, 27, 29] : vector<15xi32>, vector<15xi32>
        %274 = affine.if affine_set<(d0, d1) : (d0 * 2 - 16 == 0, -d0 >= 0, d0 - 20 >= 0, d1 * 32 + d0 >= 0)>(%c1, %c9) -> i1 {
          %alloca = memref.alloca() : memref<5x16x5xi1>
          %275 = arith.shrsi %init, %in : i32
          %276 = arith.shrui %true, %false : i1
          %277 = index.floordivs %227, %111
          %alloca_41 = memref.alloca() : memref<3x3xf16>
          %278 = math.absi %c-15365_i16 : i16
          %279 = index.mul %111, %c13
          %280 = vector.splat %rank : vector<15x16xindex>
          affine.yield %true : i1
        } else {
          %275 = arith.ceildivsi %c268195901_i64, %139 : i64
          %276 = math.ctpop %from_elements_20 : tensor<5x16x5xi64>
          %277 = arith.shli %false, %false_31 : i1
          %278 = affine.apply affine_map<(d0) -> (d0 floordiv 4)>(%84)
          %279 = arith.minui %c-23574_i16, %c27644_i16 : i16
          %280 = vector.shuffle %201, %89 [1, 2, 5] : vector<3xi1>, vector<3xi1>
          %281 = affine.load %169[%c9, %c5, %c6] : memref<5x3x15xi64>
          %282 = arith.remui %c-12004_i16, %c-12004_i16 : i16
          affine.yield %false : i1
        }
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %266 = scf.parallel (%arg2) = (%237) to (%c3) step (%c7) init (%114) -> memref<15x16xf16> {
      %268 = scf.while (%arg3 = %alloc_39) : (memref<15xi32>) -> memref<15xi32> {
        %283 = vector.flat_transpose %205 {columns = 3 : i32, rows = 1 : i32} : vector<3xf16> -> vector<3xf16>
        %284 = vector.multi_reduction <xor>, %182, %88 [] : vector<3xi64> to vector<3xi64>
        %285 = arith.maxf %cst_1, %cst_0 : f32
        %286 = math.log10 %13 : tensor<5x16x5xf16>
        %287 = arith.maxui %207, %c-6735_i16 : i16
        %288 = affine.max affine_map<(d0) -> (d0)>(%c9)
        %289 = vector.bitcast %238 : vector<5x16x5xi64> to vector<5x16x5xi64>
        %290 = arith.shrui %c-12004_i16, %c-12004_i16 : i16
        scf.condition(%true) %arg3 : memref<15xi32>
      } do {
      ^bb0(%arg3: memref<15xi32>):
        %283 = vector.broadcast %false_31 : i1 to vector<2x15xi1>
        %284 = vector.multi_reduction <minsi>, %141, %283 [0] : vector<3x2x15xi1> to vector<2x15xi1>
        %285 = tensor.empty(%171, %106) : tensor<?x?xi16>
        %286 = tensor.empty() : tensor<3x3xi32>
        %287 = vector.splat %177 : vector<15x16xindex>
        %288 = arith.remf %cst, %cst : f16
        %289 = arith.divsi %false_31, %false_31 : i1
        %290 = math.exp2 %collapsed_28 : tensor<80x5xf16>
        %291 = math.log10 %18 : tensor<16x15xf32>
        %292 = memref.realloc %alloc_39 : memref<15xi32> to memref<5xi32>
        %293 = index.mul %c2, %c14
        %294 = index.maxu %c7, %c7
        %295 = vector.reduction <mul>, %89 : vector<3xi1> into i1
        %296 = affine.max affine_map<(d0, d1, d2) -> (d1, d2, d2 ceildiv 2)>(%237, %125, %c9)
        %from_elements_41 = tensor.from_elements %c38605508_i32, %46, %c1809694973_i32, %c1220632730_i32, %c38605508_i32, %46, %c38605508_i32, %46, %c38605508_i32, %c1809694973_i32, %c1809694973_i32, %46, %c1220632730_i32, %c1220632730_i32, %c38605508_i32, %46, %c38605508_i32, %46, %c1809694973_i32, %c1809694973_i32, %c38605508_i32, %46, %46, %c1809694973_i32, %c38605508_i32, %46, %c1220632730_i32, %46, %46, %c1809694973_i32, %46, %c1220632730_i32, %c1220632730_i32, %c1220632730_i32, %46, %c38605508_i32, %c1220632730_i32, %c1809694973_i32, %c1220632730_i32, %c38605508_i32, %c38605508_i32, %c1220632730_i32, %c1809694973_i32, %c38605508_i32, %46, %46, %c1220632730_i32, %46, %c1809694973_i32, %46, %c38605508_i32, %c38605508_i32, %c1809694973_i32, %c1809694973_i32, %c1220632730_i32, %46, %46, %c1809694973_i32, %46, %46, %c1809694973_i32, %c1220632730_i32, %c38605508_i32, %46, %c1809694973_i32, %c38605508_i32, %c1220632730_i32, %c1809694973_i32, %c1809694973_i32, %c1220632730_i32, %46, %46, %c1809694973_i32, %46, %c1220632730_i32, %46, %c38605508_i32, %c38605508_i32, %46, %46, %46, %c1809694973_i32, %46, %c38605508_i32, %c1220632730_i32, %c1220632730_i32, %c1220632730_i32, %c38605508_i32, %c38605508_i32, %c1220632730_i32, %46, %c1220632730_i32, %c1220632730_i32, %c1220632730_i32, %c1809694973_i32, %c38605508_i32, %46, %c38605508_i32, %46, %c38605508_i32, %c1220632730_i32, %c1809694973_i32, %c38605508_i32, %46, %c1220632730_i32, %c38605508_i32, %c1220632730_i32, %c1220632730_i32, %46, %46, %46, %c1809694973_i32, %c1220632730_i32, %c1809694973_i32, %c1809694973_i32, %46, %c1220632730_i32, %c1809694973_i32, %c38605508_i32, %c38605508_i32, %c1809694973_i32, %c38605508_i32, %46, %c1809694973_i32, %c1809694973_i32, %46, %c1809694973_i32, %c1220632730_i32, %c38605508_i32, %46, %c38605508_i32, %c38605508_i32, %c1220632730_i32, %c1220632730_i32, %c1809694973_i32, %46, %46, %c1809694973_i32, %c1809694973_i32, %c38605508_i32, %c38605508_i32, %c38605508_i32, %c1809694973_i32, %46, %c1220632730_i32, %46, %c1220632730_i32, %c1220632730_i32, %c38605508_i32, %46, %c38605508_i32, %46, %46, %c1809694973_i32, %c38605508_i32, %c38605508_i32, %c1220632730_i32, %c1809694973_i32, %c1220632730_i32, %c1809694973_i32, %46, %46, %46, %c38605508_i32, %46, %46, %c1809694973_i32, %c1220632730_i32, %46, %c1809694973_i32, %c1809694973_i32, %c1809694973_i32, %c1809694973_i32, %c1220632730_i32, %c1809694973_i32, %46, %c38605508_i32, %c1809694973_i32, %c38605508_i32, %c1220632730_i32, %46, %c1220632730_i32, %c38605508_i32, %46, %46, %c1220632730_i32, %c38605508_i32, %46, %46, %c38605508_i32, %c1809694973_i32, %c1220632730_i32, %46, %46, %c38605508_i32, %c38605508_i32, %c1809694973_i32, %c38605508_i32, %c1809694973_i32, %46, %c1809694973_i32, %c1809694973_i32, %c1809694973_i32, %c1809694973_i32, %c38605508_i32, %46, %c1220632730_i32, %46, %c38605508_i32, %c38605508_i32, %c1809694973_i32, %c1809694973_i32, %c1220632730_i32, %c1220632730_i32, %c1220632730_i32, %c1220632730_i32, %46, %c38605508_i32, %c1220632730_i32, %c1809694973_i32, %46, %c38605508_i32, %c38605508_i32, %46, %c1809694973_i32 : tensor<5x3x15xi32>
        %297 = vector.bitcast %153 : vector<3x3xi1> to vector<3x3xi1>
        %298 = arith.ori %207, %207 : i16
        scf.yield %alloc_39 : memref<15xi32>
      }
      %269 = arith.maxsi %c-523_i16, %c-523_i16 : i16
      %270 = bufferization.to_memref %2 : memref<3x3xf16>
      memref.alloca_scope  {
        %283 = vector.broadcast %185 : i64 to vector<3x3xi64>
        %284 = math.fpowi %2, %11 : tensor<3x3xf16>, tensor<3x3xi32>
        %285 = vector.extract_strided_slice %78 {offsets = [3, 5], sizes = [2, 11], strides = [1, 1]} : vector<5x16x5xi64> to vector<2x11x5xi64>
        %286 = arith.maxui %c27644_i16, %c-6735_i16 : i16
        %287 = arith.subi %false_31, %false : i1
        %288 = index.sizeof
        %289 = tensor.empty() : tensor<15x16xf16>
        %290 = math.ceil %2 : tensor<3x3xf16>
        %291 = arith.ceildivsi %139, %104 : i64
        %292 = vector.broadcast %c38605508_i32 : i32 to vector<i32>
        %293 = vector.transfer_write %292, %154[%255, %171, %135] : vector<i32>, tensor<5x16x5xi32>
        vector.print %141 : vector<3x2x15xi1>
        %294 = affine.load %alloc_17[%c1, %c0] : memref<15x16xi1>
        %295 = memref.realloc %alloc_19 : memref<16xi64> to memref<15xi64>
        %296 = math.log1p %2 : tensor<3x3xf16>
        %297 = index.mul %c14, %c3
        %alloca = memref.alloca() : memref<5x3x15xi16>
        %298 = index.sizeof
        %299 = arith.maxui %c-23574_i16, %c-12004_i16 : i16
        %300 = tensor.empty() : tensor<3x3xi1>
        %301 = arith.maxui %46, %c38605508_i32 : i32
        %302 = arith.xori %true, %false_31 : i1
        %303 = vector.reduction <add>, %130 : vector<1xi32> into i32
        %304 = math.atan %6 : tensor<15x16xf16>
        %305 = vector.splat %171 : vector<3x3xindex>
        %306 = tensor.empty() : tensor<3x3x1xi32>
        %307 = math.fpowi %expanded, %306 : tensor<3x3x1xf16>, tensor<3x3x1xi32>
        %308 = index.ceildivs %30, %74
        %309 = math.fpowi %16, %154 : tensor<5x16x5xf32>, tensor<5x16x5xi32>
        %310 = vector.reduction <maxui>, %89 : vector<3xi1> into i1
        %311 = math.cttz %185 : i64
        %312 = math.roundeven %splat : tensor<5x16x5xf32>
        %313 = arith.floordivsi %c27644_i16, %207 : i16
        %314 = vector.load %114[%c9, %c12] : memref<15x16xf16>, vector<15x16xf16>
      }
      %271 = vector.broadcast %164 : index to vector<15xindex>
      %272 = vector.broadcast %true : i1 to vector<15xi1>
      vector.scatter %alloc_17[%c5, %c10] [%271], %272, %272 : memref<15x16xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
      %273 = scf.while (%arg3 = %270) : (memref<3x3xf16>) -> memref<3x3xf16> {
        %283 = vector.broadcast %false_31 : i1 to vector<15xi1>
        %284 = vector.maskedload %alloc_9[%c8, %c7], %283, %20 : memref<15x16xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        %285 = math.absi %11 : tensor<3x3xi32>
        %286 = math.rsqrt %collapsed_28 : tensor<80x5xf16>
        %287 = vector.broadcast %c-12004_i16 : i16 to vector<3xi16>
        %dest, %accumulated_value = vector.scan <or>, %87, %287 {inclusive = false, reduction_dim = 1 : i64} : vector<3x3xi16>, vector<3xi16>
        %collapsed_41 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<5x16x5xi64> into tensor<80x5xi64>
        %288 = math.atan2 %splat, %17 : tensor<5x16x5xf32>
        %289 = math.absf %transposed : tensor<16x15xf32>
        %290 = math.log10 %18 : tensor<16x15xf32>
        scf.condition(%false_31) %270 : memref<3x3xf16>
      } do {
      ^bb0(%arg3: memref<3x3xf16>):
        %283 = math.rsqrt %9 : tensor<15x16xf32>
        %284 = vector.bitcast %263 : vector<5x16x5xf32> to vector<5x16x5xi32>
        %from_elements_41 = tensor.from_elements %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst : tensor<15x16xf16>
        %285 = math.absi %15 : tensor<5x16x5xi64>
        %286 = math.fpowi %cst, %46 : f16, i32
        %287 = vector.multi_reduction <minsi>, %57, %false [0, 1] : vector<15x16xi1> to i1
        %288 = bufferization.clone %alloc_13 : memref<5x16x5xi1> to memref<5x16x5xi1>
        %289 = index.castu %c0 : index to i32
        %290 = index.castu %c-15365_i16 : i16 to index
        %291 = index.add %c10, %136
        %292 = arith.muli %46, %c38605508_i32 : i32
        %293 = memref.load %alloc_17[%c1, %c14] : memref<15x16xi1>
        %294 = vector.load %alloc_18[%c10] : memref<16xi64>, vector<15x16xi64>
        %295 = math.absi %c27644_i16 : i16
        %296 = math.tan %cst_0 : f32
        %297 = arith.remsi %true, %287 : i1
        scf.yield %270 : memref<3x3xf16>
      }
      %274 = math.rsqrt %9 : tensor<15x16xf32>
      %275 = arith.muli %c38605508_i32, %46 : i32
      %276 = math.log1p %cst_1 : f32
      %277 = math.rsqrt %17 : tensor<5x16x5xf32>
      %278 = arith.divf %cst_2, %cst_2 : f32
      %279 = vector.gather %11[%135, %163] [%239], %59, %239 : tensor<3x3xi32>, vector<5x3x15xi32>, vector<5x3x15xi1>, vector<5x3x15xi32> into vector<5x3x15xi32>
      %280 = vector.matrix_multiply %217, %217 {lhs_columns = 3 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<3xi1>, vector<3xi1>) -> vector<1xi1>
      affine.for %arg3 = 0 to 106 {
      }
      %281 = arith.muli %c-523_i16, %c-523_i16 : i16
      %282 = arith.xori %139, %139 : i64
      %alloc_40 = memref.alloc() : memref<15x16xf16>
      scf.reduce(%alloc_40)  : memref<15x16xf16> {
      ^bb0(%arg3: memref<15x16xf16>, %arg4: memref<15x16xf16>):
        %283 = math.fpowi %17, %154 : tensor<5x16x5xf32>, tensor<5x16x5xi32>
        %284 = memref.load %alloc_18[%c7] : memref<16xi64>
        %285 = bufferization.clone %alloc_18 : memref<16xi64> to memref<16xi64>
        %286 = arith.negf %cst_0 : f32
        %287 = index.sizeof
        %288 = math.absi %c1220632730_i32 : i32
        %289 = vector.flat_transpose %88 {columns = 3 : i32, rows = 1 : i32} : vector<3xi64> -> vector<3xi64>
        %290 = affine.min affine_map<(d0, d1, d2, d3) -> (-d2)>(%164, %170, %c15, %235)
        %alloc_41 = memref.alloc() : memref<15x16xf16>
        scf.reduce.return %alloc_41 : memref<15x16xf16>
      }
      scf.yield
    }
    %267 = affine.vector_load %157[%c6, %23] : memref<80x5xf16>, vector<16xf16>
    affine.vector_store %20, %alloc_14[%c11, %c13] : memref<15x16xi32>, vector<15xi32>
    vector.print %20 : vector<15xi32>
    vector.print %32 : vector<15x16xf32>
    vector.print %33 : vector<15x16xf32>
    vector.print %35 : vector<1x16xf32>
    vector.print %47 : vector<3x3xi1>
    vector.print %54 : vector<3x3xi1>
    vector.print %57 : vector<15x16xi1>
    vector.print %58 : vector<3x3xi1>
    vector.print %59 : vector<5x3x15xi1>
    vector.print %75 : vector<5x16x5xi64>
    vector.print %76 : vector<5x16x5xi1>
    vector.print %77 : vector<5x16x5xi32>
    vector.print %78 : vector<5x16x5xi64>
    vector.print %87 : vector<3x3xi16>
    vector.print %88 : vector<3xi64>
    vector.print %89 : vector<3xi1>
    vector.print %90 : vector<3xi64>
    vector.print %105 : vector<5x16x5xf32>
    vector.print %122 : vector<5x3x15xi16>
    vector.print %123 : vector<5x3x15xi32>
    vector.print %124 : vector<5x3x15xi16>
    vector.print %128 : vector<5xi64>
    vector.print %130 : vector<1xi32>
    vector.print %141 : vector<3x2x15xi1>
    vector.print %143 : vector<3x3xf32>
    vector.print %144 : vector<3x3xf32>
    vector.print %148 : vector<5x16x5xi1>
    vector.print %153 : vector<3x3xi1>
    vector.print %179 : vector<3x3xi1>
    vector.print %182 : vector<3xi64>
    vector.print %192 : vector<5x16x5xi1>
    vector.print %201 : vector<3xi1>
    vector.print %205 : vector<3xf16>
    vector.print %208 : vector<4x16x5xi1>
    vector.print %217 : vector<3xi1>
    vector.print %231 : vector<5x16x5xi32>
    vector.print %232 : vector<5x3x15xf32>
    vector.print %233 : vector<5x3x15xf32>
    vector.print %238 : vector<5x16x5xi64>
    vector.print %239 : vector<5x3x15xi32>
    vector.print %249 : vector<5x3x15xi32>
    vector.print %257 : vector<3x2x15xf32>
    vector.print %262 : vector<5x16x5xf32>
    vector.print %263 : vector<5x16x5xf32>
    vector.print %267 : vector<16xf16>
    vector.print %c1220632730_i32 : i32
    vector.print %c38605508_i32 : i32
    vector.print %c27644_i16 : i16
    vector.print %cst : f16
    vector.print %cst_0 : f32
    vector.print %c1809694973_i32 : i32
    vector.print %true : i1
    vector.print %c-23574_i16 : i16
    vector.print %c-12004_i16 : i16
    vector.print %cst_1 : f32
    vector.print %c-15365_i16 : i16
    vector.print %c268195901_i64 : i64
    vector.print %c-6735_i16 : i16
    vector.print %cst_2 : f32
    vector.print %c-523_i16 : i16
    vector.print %false : i1
    vector.print %46 : i32
    vector.print %104 : i64
    vector.print %139 : i64
    vector.print %false_31 : i1
    vector.print %185 : i64
    vector.print %207 : i16
    return %c-15365_i16 : i16
  }
}
