module {
  func.func @func1(%arg0: i32, %arg1: i64) {
    %true = arith.constant true
    %cst = arith.constant 1.74812493E+9 : f32
    %c1422306378_i64 = arith.constant 1422306378 : i64
    %cst_0 = arith.constant 1.63691251E+9 : f32
    %c1059108793_i64 = arith.constant 1059108793 : i64
    %c-15893_i16 = arith.constant -15893 : i16
    %cst_1 = arith.constant 2.032000e+04 : f16
    %true_2 = arith.constant true
    %true_3 = arith.constant true
    %c903769282_i64 = arith.constant 903769282 : i64
    %true_4 = arith.constant true
    %cst_5 = arith.constant 5.360000e+04 : f16
    %c33059462_i32 = arith.constant 33059462 : i32
    %c2016339117_i32 = arith.constant 2016339117 : i32
    %true_6 = arith.constant true
    %cst_7 = arith.constant 1.57553587E+9 : f32
    %0 = tensor.empty() : tensor<2x5x8xi32>
    %1 = tensor.empty() : tensor<5x5xi64>
    %2 = tensor.empty() : tensor<2x5x8xi1>
    %3 = tensor.empty() : tensor<5x5xf32>
    %4 = tensor.empty() : tensor<2x5x8xi16>
    %5 = tensor.empty() : tensor<5x5xf32>
    %6 = tensor.empty() : tensor<5x5xi64>
    %7 = tensor.empty() : tensor<8xi32>
    %8 = tensor.empty() : tensor<2x5x8xi64>
    %9 = tensor.empty() : tensor<8xi16>
    %10 = tensor.empty() : tensor<2x5x8xi16>
    %11 = tensor.empty() : tensor<2x16x8xi32>
    %12 = tensor.empty() : tensor<8xi64>
    %13 = tensor.empty() : tensor<2x5x8xf16>
    %14 = tensor.empty() : tensor<8xi1>
    %15 = tensor.empty() : tensor<8xi1>
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
    %alloc = memref.alloc() : memref<2x16x8xi16>
    %alloc_8 = memref.alloc() : memref<2x5x8xi16>
    %alloc_9 = memref.alloc() : memref<5x5xi1>
    %alloc_10 = memref.alloc() : memref<2x5x8xi16>
    %alloc_11 = memref.alloc() : memref<2x16x8xi16>
    %alloc_12 = memref.alloc() : memref<8xf16>
    %alloc_13 = memref.alloc() : memref<8xi1>
    %alloc_14 = memref.alloc() : memref<2x16x8xi64>
    %alloc_15 = memref.alloc() : memref<5x5xf32>
    %alloc_16 = memref.alloc() : memref<5x5xf16>
    %alloc_17 = memref.alloc() : memref<8xi16>
    %alloc_18 = memref.alloc() : memref<5x5xi32>
    %alloc_19 = memref.alloc() : memref<5x5xi32>
    %alloc_20 = memref.alloc() : memref<8xi1>
    %alloc_21 = memref.alloc() : memref<8xi1>
    %alloc_22 = memref.alloc() : memref<2x5x8xi1>
    %16 = tensor.empty() : tensor<5x5xi64>
    %17 = linalg.copy ins(%1 : tensor<5x5xi64>) outs(%16 : tensor<5x5xi64>) -> tensor<5x5xi64>
    %alloc_23 = memref.alloc() : memref<5x5xf16>
    linalg.transpose ins(%alloc_16 : memref<5x5xf16>) outs(%alloc_23 : memref<5x5xf16>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<i1>
    %reduced = linalg.reduce ins(%alloc_20 : memref<8xi1>) outs(%18 : tensor<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %261 = vector.load %alloc_11[%c1, %c1, %c2] : memref<2x16x8xi16>, vector<2x5x8xi16>
        %262 = bufferization.clone %alloc_11 : memref<2x16x8xi16> to memref<2x16x8xi16>
        scf.execute_region {
          %269 = arith.ceildivsi %c33059462_i32, %c33059462_i32 : i32
          %270 = bufferization.clone %alloc_10 : memref<2x5x8xi16> to memref<2x5x8xi16>
          %271 = index.add %c4, %c12
          %272 = arith.maxsi %c33059462_i32, %c33059462_i32 : i32
          %273 = index.castu %271 : index to i32
          %274 = arith.cmpf ole, %cst_1, %cst_5 : f16
          %collapsed_45 = tensor.collapse_shape %17 [[0, 1]] : tensor<5x5xi64> into tensor<25xi64>
          %275 = tensor.empty() : tensor<8xf32>
          %276 = arith.ceildivsi %c1422306378_i64, %c1059108793_i64 : i64
          %277 = bufferization.to_memref %8 : memref<2x5x8xi64>
          %278 = arith.shli %in, %true_6 : i1
          %279 = arith.minsi %c903769282_i64, %c1422306378_i64 : i64
          %280 = arith.remsi %in, %init : i1
          %281 = arith.floordivsi %in, %true_3 : i1
          %282 = vector.broadcast %c-15893_i16 : i16 to vector<5x8x5x8xi16>
          %283 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %261, %261, %282 : vector<2x5x8xi16>, vector<2x5x8xi16> into vector<5x8x5x8xi16>
          %284 = vector.broadcast %c-15893_i16 : i16 to vector<5x8xi16>
          %285 = vector.insert %284, %261 [1] : vector<5x8xi16> into vector<2x5x8xi16>
          scf.yield
        }
        %263 = math.fpowi %cst_1, %c33059462_i32 : f16, i32
        %264 = arith.remf %cst_1, %cst_5 : f16
        %265 = arith.shrui %c1059108793_i64, %c1422306378_i64 : i64
        %266 = tensor.empty() : tensor<5x5xi64>
        %267 = linalg.matmul ins(%16, %6 : tensor<5x5xi64>, tensor<5x5xi64>) outs(%266 : tensor<5x5xi64>) -> tensor<5x5xi64>
        %268 = affine.max affine_map<(d0) -> (0, 0)>(%c3)
        %true_44 = arith.constant true
        linalg.yield %true_44 : i1
      }
    %19 = scf.parallel (%arg2, %arg3) = (%c3, %c6) to (%c2, %c4) step (%c6, %c4) init (%11) -> tensor<2x16x8xi32> {
      %261 = arith.remf %cst_7, %cst_7 : f32
      %262 = vector.broadcast %c-15893_i16 : i16 to vector<8xi16>
      %263 = vector.matrix_multiply %262, %262 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi16>, vector<8xi16>) -> vector<1xi16>
      %264 = vector.splat %arg3 : vector<2x16x8xindex>
      %265 = math.sqrt %cst : f32
      %266 = index.castu %true_3 : i1 to index
      %267 = arith.shli %true_2, %true_4 : i1
      %alloc_44 = memref.alloc() : memref<2x5x8xf16>
      memref.tensor_store %13, %alloc_44 : memref<2x5x8xf16>
      %268 = arith.ceildivsi %true_6, %true_4 : i1
      %269 = bufferization.to_memref %15 : memref<8xi1>
      %270 = vector.create_mask %c8, %c6 : vector<5x5xi1>
      %271 = arith.shrsi %true, %true_2 : i1
      %272 = index.add %c9, %c11
      %273 = arith.divf %cst_0, %cst_7 : f32
      %274 = vector.create_mask %c4, %c4, %272 : vector<2x5x8xi1>
      %275 = vector.broadcast %c-15893_i16 : i16 to vector<16xi16>
      %276 = vector.broadcast %true : i1 to vector<16xi1>
      %277 = vector.maskedload %alloc_10[%c0, %c3, %c3], %276, %275 : memref<2x5x8xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
      %from_elements_45 = tensor.from_elements %c903769282_i64, %c1059108793_i64, %c1422306378_i64, %c903769282_i64, %c1059108793_i64, %c1422306378_i64, %c903769282_i64, %c1059108793_i64, %c903769282_i64, %c1422306378_i64, %c1059108793_i64, %c903769282_i64, %c903769282_i64, %c903769282_i64, %c1059108793_i64, %c1422306378_i64, %c903769282_i64, %c903769282_i64, %c903769282_i64, %c1422306378_i64, %c903769282_i64, %c1422306378_i64, %c1059108793_i64, %c1422306378_i64, %c1422306378_i64, %c1422306378_i64, %c1422306378_i64, %c1422306378_i64, %c1059108793_i64, %c1422306378_i64, %c903769282_i64, %c903769282_i64, %c903769282_i64, %c1059108793_i64, %c1059108793_i64, %c1059108793_i64, %c1422306378_i64, %c1422306378_i64, %c1422306378_i64, %c1422306378_i64, %c1422306378_i64, %c1422306378_i64, %c903769282_i64, %c1422306378_i64, %c1059108793_i64, %c1422306378_i64, %c1422306378_i64, %c1059108793_i64, %c1059108793_i64, %c1422306378_i64, %c1422306378_i64, %c1059108793_i64, %c1422306378_i64, %c1059108793_i64, %c1059108793_i64, %c1059108793_i64, %c903769282_i64, %c1059108793_i64, %c1059108793_i64, %c1422306378_i64, %c1059108793_i64, %c903769282_i64, %c1422306378_i64, %c1422306378_i64, %c1059108793_i64, %c1422306378_i64, %c903769282_i64, %c1059108793_i64, %c1422306378_i64, %c1422306378_i64, %c903769282_i64, %c1422306378_i64, %c1422306378_i64, %c1422306378_i64, %c1059108793_i64, %c1059108793_i64, %c1059108793_i64, %c903769282_i64, %c1422306378_i64, %c903769282_i64 : tensor<2x5x8xi64>
      %278 = tensor.empty() : tensor<2x16x8xi32>
      scf.reduce(%278)  : tensor<2x16x8xi32> {
      ^bb0(%arg4: tensor<2x16x8xi32>, %arg5: tensor<2x16x8xi32>):
        %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %275, %277, %c-15893_i16 : vector<16xi16>, vector<16xi16> into i16
        %280 = arith.remsi %true_3, %true : i1
        %281 = arith.andi %true, %true : i1
        %282 = vector.broadcast %cst_1 : f16 to vector<5x5xf16>
        memref.assume_alignment %alloc_18, 2 : memref<5x5xi32>
        %283 = math.round %13 : tensor<2x5x8xf16>
        %284 = arith.maxui %c1422306378_i64, %c1059108793_i64 : i64
        %285 = tensor.empty() : tensor<5x5xi16>
        %286 = vector.broadcast %c-15893_i16 : i16 to vector<2x5x8xi16>
        %287 = vector.broadcast %c2016339117_i32 : i32 to vector<2x5x8xi32>
        %288 = vector.gather %285[%272, %c7] [%287], %274, %286 : tensor<5x5xi16>, vector<2x5x8xi32>, vector<2x5x8xi1>, vector<2x5x8xi16> into vector<2x5x8xi16>
        %289 = tensor.empty() : tensor<2x16x8xi32>
        scf.reduce.return %289 : tensor<2x16x8xi32>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_23[%c15, %c1] : memref<5x5xf16>, vector<2xf16>
    affine.vector_store %20, %alloc_16[%c11, %c4] : memref<5x5xf16>, vector<2xf16>
    %alloc_24 = memref.alloc() : memref<8xi1>
    %21 = tensor.empty() : tensor<i1>
    %22 = linalg.dot ins(%alloc_13, %alloc_24 : memref<8xi1>, memref<8xi1>) outs(%21 : tensor<i1>) -> tensor<i1>
    vector.print %20 : vector<2xf16>
    %23 = arith.remf %cst_0, %cst_7 : f32
    %24 = math.atan %cst_1 : f16
    %25 = math.log %cst_1 : f16
    %26 = vector.matrix_multiply %20, %20 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
    %27 = tensor.empty() : tensor<2x5x8xi16>
    %mapped = linalg.map ins(%10, %10 : tensor<2x5x8xi16>, tensor<2x5x8xi16>) outs(%27 : tensor<2x5x8xi16>)
      (%in: i16, %in_44: i16) {
        %261 = math.log1p %3 : tensor<5x5xf32>
        %262 = arith.xori %true_6, %true_6 : i1
        %263 = math.tanh %cst : f32
        %264 = vector.extract %26[0] : vector<1xf16>
        %265 = index.maxu %c5, %c4
        %266 = vector.shuffle %20, %20 [0] : vector<2xf16>, vector<2xf16>
        %267 = bufferization.to_tensor %alloc_9 : memref<5x5xi1>
        %268 = arith.maxui %true_6, %true : i1
        %269 = vector.broadcast %cst : f32 to vector<2x5x8xf32>
        %270 = vector.fma %269, %269, %269 : vector<2x5x8xf32>
        %c699590887_i64 = arith.constant 699590887 : i64
        %271 = math.copysign %5, %5 : tensor<5x5xf32>
        %272 = scf.if %true_4 -> (memref<2x5x8xi1>) {
          %291 = arith.remf %cst_0, %cst_7 : f32
          %292 = arith.cmpf ule, %cst_7, %cst : f32
          %293 = arith.ceildivsi %c-15893_i16, %in : i16
          %true_47 = index.bool.constant true
          %294 = index.sizeof
          %295 = tensor.empty() : tensor<5x5xi32>
          %296 = math.fpowi %3, %295 : tensor<5x5xf32>, tensor<5x5xi32>
          %297 = index.add %c3, %c5
          %false_48 = arith.constant false
          scf.yield %alloc_22 : memref<2x5x8xi1>
        } else {
          %291 = math.exp %5 : tensor<5x5xf32>
          %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %26, %26, %cst_5 : vector<1xf16>, vector<1xf16> into f16
          %splat_47 = tensor.splat %cst_1 : tensor<8xf16>
          %293 = math.ipowi %in, %in_44 : i16
          %294 = math.round %splat_47 : tensor<8xf16>
          %295 = arith.andi %c1422306378_i64, %c1422306378_i64 : i64
          %296 = vector.splat %true_4 : vector<2x16x8xi1>
          %297 = arith.shrsi %c903769282_i64, %c1422306378_i64 : i64
          scf.yield %alloc_22 : memref<2x5x8xi1>
        }
        %alloca_45 = memref.alloca() : memref<8xi32>
        %273 = math.exp %cst : f32
        %274 = math.atan %5 : tensor<5x5xf32>
        %275 = math.absf %13 : tensor<2x5x8xf16>
        %276 = arith.minui %c903769282_i64, %c1422306378_i64 : i64
        %277 = vector.create_mask %c4 : vector<8xi1>
        %278 = tensor.empty() : tensor<2x5x8xi16>
        %mapped_46 = linalg.map ins(%10, %27 : tensor<2x5x8xi16>, tensor<2x5x8xi16>) outs(%278 : tensor<2x5x8xi16>)
          (%in_47: i16, %in_48: i16) {
            %collapsed_49 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<2x5x8xi16> into tensor<10x8xi16>
            %291 = math.sqrt %13 : tensor<2x5x8xf16>
            %292 = bufferization.to_memref %6 : memref<5x5xi64>
            %from_elements_50 = tensor.from_elements %cst_1, %cst_1, %cst_1, %cst_5, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst_5, %cst_1, %cst_1, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst_1, %cst_5, %cst_5, %cst_1, %cst_5, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst_5, %cst_1, %cst_1, %cst_1, %cst_1, %cst_5, %cst_5, %cst_5, %cst_1, %cst_1, %cst_5, %cst_1, %cst_1, %cst_5, %cst_5, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst_5, %cst_5, %cst_1, %cst_1, %cst_5, %cst_1, %cst_1, %cst_1, %cst_5, %cst_1, %cst_1, %cst_1, %cst_5, %cst_5, %cst_5, %cst_5, %cst_1, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_1, %cst_1, %cst_1, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_1, %cst_5, %cst_5, %cst_1, %cst_1, %cst_5, %cst_1, %cst_5, %cst_1, %cst_1, %cst_5, %cst_1, %cst_5, %cst_1, %cst_1, %cst_1, %cst_1, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_1, %cst_1, %cst_5, %cst_1, %cst_1, %cst_1, %cst_5, %cst_5, %cst_1, %cst_5, %cst_1, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst_5, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst_1, %cst_1, %cst_1, %cst_5, %cst_1, %cst_5, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_1, %cst_5, %cst_5, %cst_1, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst_1, %cst_5, %cst_5, %cst_1, %cst_5, %cst_1, %cst_1, %cst_5, %cst_1, %cst_1, %cst_5, %cst_5, %cst_1, %cst_5, %cst_1, %cst_1, %cst_5, %cst_5, %cst_1, %cst_5, %cst_5, %cst_5, %cst_1, %cst_1, %cst_1, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst_1, %cst_1, %cst_5, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_5, %cst_1, %cst_1, %cst_1, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst_1, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_1, %cst_5, %cst_1, %cst_5, %cst_1, %cst_1, %cst_5, %cst_1, %cst_1, %cst_5, %cst_1, %cst_5, %cst_1, %cst_1, %cst_1, %cst_5 : tensor<2x16x8xf16>
            memref.copy %alloc_16, %alloc_23 : memref<5x5xf16> to memref<5x5xf16>
            %293 = tensor.empty() : tensor<5x5xf32>
            %294 = linalg.matmul ins(%5, %3 : tensor<5x5xf32>, tensor<5x5xf32>) outs(%293 : tensor<5x5xf32>) -> tensor<5x5xf32>
            %295 = math.round %cst : f32
            memref.assume_alignment %alloc_20, 16 : memref<8xi1>
            %296 = arith.negf %cst_0 : f32
            %297 = arith.remui %in_44, %in_48 : i16
            %false_51 = index.bool.constant false
            %298 = arith.shli %c-15893_i16, %c-15893_i16 : i16
            %299 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %277, %277, %true_2 : vector<8xi1>, vector<8xi1> into i1
            %300 = math.log1p %13 : tensor<2x5x8xf16>
            %301 = arith.maxf %cst, %cst_0 : f32
            %302 = arith.muli %in_48, %c-15893_i16 : i16
            memref.tensor_store %6, %292 : memref<5x5xi64>
            %303 = index.casts %265 : index to i32
            %304 = vector.extract_strided_slice %277 {offsets = [3], sizes = [4], strides = [1]} : vector<8xi1> to vector<4xi1>
            %305 = index.casts %c7 : index to i32
            %306 = arith.remui %in_47, %c-15893_i16 : i16
            %307 = vector.create_mask %c13, %c15, %c2 : vector<2x5x8xi1>
            %308 = math.sqrt %cst_5 : f16
            %309 = vector.create_mask %c4, %c10, %c1 : vector<2x5x8xi1>
            %310 = arith.maxui %c-15893_i16, %in_44 : i16
            %311 = math.log10 %3 : tensor<5x5xf32>
            %312 = math.sqrt %cst_1 : f16
            %313 = index.sub %c0, %c10
            %rank_52 = tensor.rank %293 : tensor<5x5xf32>
            %314 = arith.maxui %true_6, %true_6 : i1
            %315 = math.cos %cst_7 : f32
            %316 = arith.shrui %c1422306378_i64, %c1422306378_i64 : i64
            %c0_i16 = arith.constant 0 : i16
            linalg.yield %c0_i16 : i16
          }
        scf.execute_region {
          %291 = math.log10 %cst : f32
          %292 = vector.insert %cst_1, %26 [0] : f16 into vector<1xf16>
          %293 = arith.negf %cst : f32
          %294 = math.fma %13, %13, %13 : tensor<2x5x8xf16>
          %295 = index.ceildivu %c13, %c1
          %collapsed_47 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<2x5x8xi64> into tensor<10x8xi64>
          %inserted_48 = tensor.insert %in_44 into %9[%c7] : tensor<8xi16>
          %296 = arith.maxf %cst_0, %cst : f32
          %297 = vector.broadcast %true_3 : i1 to vector<2xi1>
          %298 = vector.maskedload %alloc_24[%c4], %297, %297 : memref<8xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
          %299 = arith.muli %c2016339117_i32, %c33059462_i32 : i32
          %300 = arith.mulf %cst, %cst_7 : f32
          %301 = vector.insert %true_6, %277 [0] : i1 into vector<8xi1>
          %302 = arith.mulf %cst, %cst : f32
          %303 = math.absf %cst : f32
          %splat_49 = tensor.splat %true_4 : tensor<2x5x8xi1>
          %304 = math.atan %cst_5 : f16
          scf.yield
        }
        %279 = math.tanh %cst_5 : f16
        %280 = index.sub %c11, %c8
        %281 = vector.matrix_multiply %20, %20 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
        %282 = arith.remui %true_2, %true_4 : i1
        %283 = affine.load %alloc_12[%c9] : memref<8xf16>
        %284 = math.log %cst_5 : f16
        %285 = arith.divsi %c33059462_i32, %c33059462_i32 : i32
        %286 = affine.min affine_map<(d0, d1) -> (((d1 * 2) floordiv 128) floordiv 64 - 128)>(%c14, %c12)
        %287 = arith.remui %c1422306378_i64, %c1059108793_i64 : i64
        %288 = arith.shrui %c1422306378_i64, %c903769282_i64 : i64
        %289 = arith.maxf %cst_0, %cst_7 : f32
        %290 = vector.maskedload %272[%c1, %c0, %c1], %277, %277 : memref<2x5x8xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %28 = math.copysign %cst_0, %cst_0 : f32
    %29 = math.atan2 %cst, %cst_7 : f32
    %30 = arith.andi %true_2, %true_2 : i1
    scf.if %true_3 {
      %261 = vector.shuffle %26, %20 [0, 1, 2] : vector<1xf16>, vector<2xf16>
      %262 = scf.execute_region -> i64 {
        %267 = arith.shrsi %c33059462_i32, %c33059462_i32 : i32
        %268 = arith.ceildivsi %true_3, %true_6 : i1
        %269 = arith.remf %cst, %cst : f32
        %270 = arith.andi %c33059462_i32, %c2016339117_i32 : i32
        %271 = vector.broadcast %cst_1 : f16 to vector<5xf16>
        %272 = vector.broadcast %true_4 : i1 to vector<5xi1>
        %273 = vector.maskedload %alloc_12[%c1], %272, %271 : memref<8xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %274 = arith.remf %cst_1, %cst_1 : f16
        %275 = bufferization.to_memref %18 : memref<i1>
        %276 = affine.min affine_map<(d0) -> (d0 ceildiv 4 - d0 + 4, 0)>(%c11)
        %277 = index.sub %c13, %276
        %278 = arith.shrsi %c33059462_i32, %c33059462_i32 : i32
        %279 = index.add %c5, %c3
        bufferization.dealloc_tensor %10 : tensor<2x5x8xi16>
        %280 = vector.matrix_multiply %273, %271 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf16>, vector<5xf16>) -> vector<1xf16>
        %281 = math.round %cst : f32
        %282 = math.expm1 %cst_0 : f32
        %283 = arith.minf %cst_1, %cst_5 : f16
        scf.yield %c1422306378_i64 : i64
      }
      %c940920421_i32 = arith.constant 940920421 : i32
      memref.assume_alignment %alloc_22, 2 : memref<2x5x8xi1>
      %263 = affine.min affine_map<(d0) -> (d0 mod 32 + 4, ((d0 floordiv 2) floordiv 32) mod 2, (d0 mod 32) ceildiv 8)>(%c2)
      %264 = math.copysign %cst_7, %cst_7 : f32
      %265 = arith.addf %cst_7, %cst : f32
      %266 = arith.muli %true, %true_2 : i1
    }
    %31 = index.add %c5, %c10
    %32 = affine.max affine_map<(d0, d1, d2) -> (d1, (d2 floordiv 128 + (d2 ceildiv 16) ceildiv 32) * 2, (d2 floordiv 128 + (d2 ceildiv 16) ceildiv 32) floordiv 128)>(%c0, %c14, %c10)
    %33 = arith.maxf %cst_0, %cst_0 : f32
    %34 = vector.broadcast %c903769282_i64 : i64 to vector<i64>
    %35 = vector.transfer_write %34, %6[%c11, %c1] : vector<i64>, tensor<5x5xi64>
    %36 = vector.broadcast %c-15893_i16 : i16 to vector<i16>
    %37 = vector.transfer_write %36, %4[%c5, %31, %c4] : vector<i16>, tensor<2x5x8xi16>
    %38 = arith.floordivsi %c2016339117_i32, %c33059462_i32 : i32
    %39 = math.log10 %cst_1 : f16
    %40 = math.copysign %3, %5 : tensor<5x5xf32>
    %41 = math.log2 %13 : tensor<2x5x8xf16>
    %42 = index.sub %c8, %c0
    %43 = math.expm1 %cst_5 : f16
    %44 = math.fma %13, %13, %13 : tensor<2x5x8xf16>
    %45 = math.absi %12 : tensor<8xi64>
    %46 = tensor.empty() : tensor<5x2xi1>
    %47 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%46 : tensor<5x2xi1>) outs(%2 : tensor<2x5x8xi1>) {
    ^bb0(%in: i1, %out: i1):
      %261 = arith.shrsi %true, %true_3 : i1
      %262 = index.floordivs %c7, %c9
      %263 = math.sqrt %3 : tensor<5x5xf32>
      %264 = scf.while (%arg2 = %alloc_9) : (memref<5x5xi1>) -> memref<5x5xi1> {
        %288 = vector.insert %cst_5, %20 [1] : f16 into vector<2xf16>
        %289 = math.exp %5 : tensor<5x5xf32>
        %290 = math.log10 %cst_7 : f32
        %291 = arith.andi %c2016339117_i32, %c2016339117_i32 : i32
        %292 = arith.addf %cst_1, %cst_5 : f16
        %cst_50 = arith.constant 1.000000e+00 : f16
        %cst_51 = arith.constant 0.000000e+00 : f16
        %293 = vector.transfer_read %13[%c12, %32, %c14], %cst_51 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<2x5x8xf16>, vector<2xf16>
        %294 = arith.maxf %cst_7, %cst_7 : f32
        bufferization.dealloc_tensor %13 : tensor<2x5x8xf16>
        scf.condition(%out) %arg2 : memref<5x5xi1>
      } do {
      ^bb0(%arg2: memref<5x5xi1>):
        %288 = arith.maxf %cst_5, %cst_1 : f16
        %289 = math.fma %5, %5, %3 : tensor<5x5xf32>
        %290 = math.log2 %13 : tensor<2x5x8xf16>
        %splat_50 = tensor.splat %true_4 : tensor<2x5x8xi1>
        %291 = bufferization.to_memref %16 : memref<5x5xi64>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %292 = vector.transfer_read %6[%31, %c3], %c0_i64 : tensor<5x5xi64>, vector<i64>
        %293 = arith.maxf %cst_5, %cst_1 : f16
        %294 = math.sqrt %cst : f32
        %295 = math.fma %13, %13, %13 : tensor<2x5x8xf16>
        %296 = arith.shli %out, %true_4 : i1
        %297 = bufferization.clone %alloc_21 : memref<8xi1> to memref<8xi1>
        %298 = bufferization.to_memref %11 : memref<2x16x8xi32>
        %299 = vector.extract_strided_slice %26 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16_51 = arith.constant 0 : i16
        %300 = vector.transfer_read %alloc_8[%c7, %c1, %c3], %c0_i16_51 : memref<2x5x8xi16>, vector<i16>
        affine.store %cst_1, %alloc_16[%c14, %c11] : memref<5x5xf16>
        %301 = arith.remf %cst_0, %cst_7 : f32
        scf.yield %arg2 : memref<5x5xi1>
      }
      %265 = arith.ori %true_4, %true_6 : i1
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_44 = arith.constant 0 : i16
      %266 = vector.transfer_read %27[%c12, %c2, %c3], %c0_i16_44 {permutation_map = affine_map<(d0, d1, d2) -> (0, 0)>} : tensor<2x5x8xi16>, vector<2x8xi16>
      %from_elements_45 = tensor.from_elements %c33059462_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32 : tensor<8xi32>
      %267 = vector.splat %c2016339117_i32 : vector<8xi32>
      %268 = math.absf %5 : tensor<5x5xf32>
      %269 = tensor.empty() : tensor<2x5x8xi1>
      %mapped_46 = linalg.map ins(%2, %2, %2 : tensor<2x5x8xi1>, tensor<2x5x8xi1>, tensor<2x5x8xi1>) outs(%269 : tensor<2x5x8xi1>)
        (%in_50: i1, %in_51: i1, %in_52: i1) {
          %288 = vector.shuffle %26, %26 [0, 1] : vector<1xf16>, vector<1xf16>
          %289 = vector.broadcast %cst_1 : f16 to vector<8xf16>
          %290 = vector.broadcast %in_50 : i1 to vector<8xi1>
          %291 = vector.maskedload %alloc_16[%c3, %c0], %290, %289 : memref<5x5xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
          %292 = index.maxu %42, %c10
          %293 = tensor.empty() : tensor<5x5xi32>
          %294 = math.fpowi %5, %293 : tensor<5x5xf32>, tensor<5x5xi32>
          %cst_53 = arith.constant 0x4B9F700C : f32
          %295 = arith.maxsi %c33059462_i32, %c2016339117_i32 : i32
          %296 = math.fma %cst_0, %cst, %cst_0 : f32
          %297 = vector.broadcast %cst_7 : f32 to vector<2x16x8xf32>
          %298 = vector.fma %297, %297, %297 : vector<2x16x8xf32>
          %299 = arith.addf %cst, %cst : f32
          %c1810888254_i64 = arith.constant 1810888254 : i64
          %300 = vector.splat %c12 : vector<2x16x8xindex>
          %301 = arith.shrui %true_3, %true_2 : i1
          %302 = math.atan %13 : tensor<2x5x8xf16>
          %303 = index.sub %c12, %c3
          %304 = vector.transpose %36, [] : vector<i16> to vector<i16>
          %305 = vector.insert %cst_5, %20 [1] : f16 into vector<2xf16>
          %306 = math.fpowi %5, %293 : tensor<5x5xf32>, tensor<5x5xi32>
          %inserted_54 = tensor.insert %c-15893_i16 into %10[%c1, %c0, %c6] : tensor<2x5x8xi16>
          %307 = arith.shrui %c-15893_i16, %c0_i16 : i16
          %inserted_55 = tensor.insert %c2016339117_i32 into %0[%c0, %c3, %c5] : tensor<2x5x8xi32>
          %308 = arith.maxsi %c903769282_i64, %c903769282_i64 : i64
          %309 = arith.shrui %c-15893_i16, %c0_i16 : i16
          %rank_56 = tensor.rank %10 : tensor<2x5x8xi16>
          %310 = math.exp %cst_7 : f32
          %311 = vector.broadcast %c11 : index to vector<5xindex>
          %312 = vector.broadcast %true_4 : i1 to vector<5xi1>
          vector.scatter %alloc_24[%c5] [%311], %312, %312 : memref<8xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
          %313 = vector.extract %26[0] : vector<1xf16>
          %314 = index.maxu %32, %c13
          %315 = arith.remui %true_3, %true_4 : i1
          %316 = arith.divf %cst_1, %cst_5 : f16
          %317 = vector.shuffle %290, %290 [5, 10, 11, 12] : vector<8xi1>, vector<8xi1>
          %318 = vector.create_mask %c3, %303, %c9 : vector<2x16x8xi1>
          %319 = vector.bitcast %318 : vector<2x16x8xi1> to vector<2x16x8xi1>
          %false_57 = arith.constant false
          linalg.yield %false_57 : i1
        }
      %270 = arith.subi %c2016339117_i32, %c2016339117_i32 : i32
      %271 = arith.maxsi %true, %true_3 : i1
      %272 = vector.splat %true_3 : vector<2x5x8xi1>
      affine.for %arg2 = 0 to 26 {
      }
      %273 = arith.maxsi %true_4, %true_6 : i1
      %274 = math.ipowi %7, %7 : tensor<8xi32>
      %cst_47 = arith.constant 1.13731584E+9 : f32
      %275 = vector.broadcast %cst_5 : f16 to vector<8xf16>
      %c1_i32 = arith.constant 1 : i32
      %276 = vector.transfer_read %0[%c3, %c1, %c6], %c1_i32 : tensor<2x5x8xi32>, vector<i32>
      %277 = arith.remf %cst_0, %cst_7 : f32
      %278 = bufferization.to_memref %14 : memref<8xi1>
      %279 = arith.shli %true_4, %out : i1
      %true_48 = index.bool.constant true
      %280 = math.absi %10 : tensor<2x5x8xi16>
      %281 = index.sizeof
      %282 = arith.mulf %cst_7, %cst_0 : f32
      %283 = arith.divsi %out, %true_48 : i1
      %284 = arith.shli %c1422306378_i64, %c903769282_i64 : i64
      %true_49 = index.bool.constant true
      %285 = vector.extract_strided_slice %275 {offsets = [6], sizes = [1], strides = [1]} : vector<8xf16> to vector<1xf16>
      %286 = vector.broadcast %c1422306378_i64 : i64 to vector<8xi64>
      %287 = vector.transfer_write %286, %1[%281, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<8xi64>, tensor<5x5xi64>
      scf.execute_region {
        %288 = arith.maxf %cst_0, %cst_0 : f32
        %289 = math.log1p %5 : tensor<5x5xf32>
        %290 = vector.multi_reduction <maxsi>, %286, %c903769282_i64 [0] : vector<8xi64> to i64
        %291 = arith.maxsi %c-15893_i16, %c-15893_i16 : i16
        %292 = vector.shuffle %20, %20 [1] : vector<2xf16>, vector<2xf16>
        %293 = math.log10 %cst_0 : f32
        %294 = arith.cmpf uno, %cst_5, %cst_5 : f16
        %295 = math.round %cst_1 : f16
        %296 = math.log10 %3 : tensor<5x5xf32>
        %297 = bufferization.to_memref %10 : memref<2x5x8xi16>
        %298 = arith.remf %cst_1, %cst_1 : f16
        %299 = math.tanh %cst_7 : f32
        %300 = math.log2 %5 : tensor<5x5xf32>
        %301 = vector.splat %c1422306378_i64 : vector<2x5x8xi64>
        %alloca_50 = memref.alloca() : memref<2x16x8xf32>
        %302 = vector.matrix_multiply %275, %285 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 1 : i32} : (vector<8xf16>, vector<1xf16>) -> vector<8xf16>
        scf.yield
      }
      linalg.yield %true_4 : i1
    } -> tensor<2x5x8xi1>
    %48 = index.sizeof
    %49 = arith.andi %c2016339117_i32, %c33059462_i32 : i32
    %50 = tensor.empty() : tensor<5x5xf32>
    %51 = linalg.matmul ins(%5, %3 : tensor<5x5xf32>, tensor<5x5xf32>) outs(%50 : tensor<5x5xf32>) -> tensor<5x5xf32>
    %52 = index.add %c5, %c1
    %53 = math.log1p %13 : tensor<2x5x8xf16>
    %54 = arith.maxsi %true_3, %true_2 : i1
    %true_25 = index.bool.constant true
    bufferization.dealloc_tensor %3 : tensor<5x5xf32>
    %55 = math.sqrt %50 : tensor<5x5xf32>
    %inserted = tensor.insert %c-15893_i16 into %27[%c1, %c2, %c2] : tensor<2x5x8xi16>
    %56 = math.log1p %5 : tensor<5x5xf32>
    %57 = vector.broadcast %true : i1 to vector<i1>
    %58 = vector.transfer_write %57, %15[%c4] : vector<i1>, tensor<8xi1>
    %59 = math.ceil %cst_5 : f16
    %60 = math.atan %50 : tensor<5x5xf32>
    %61 = math.sqrt %13 : tensor<2x5x8xf16>
    %62 = arith.maxui %true_3, %true_25 : i1
    %63 = scf.execute_region -> vector<2x16x8xi32> {
      %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %20, %cst_5 : vector<2xf16>, vector<2xf16> into f16
      %262 = vector.broadcast %cst_7 : f32 to vector<2x16x8xf32>
      %263 = vector.fma %262, %262, %262 : vector<2x16x8xf32>
      %264 = vector.multi_reduction <maxf>, %20, %cst_5 [0] : vector<2xf16> to f16
      %true_44 = index.bool.constant true
      %265 = vector.shuffle %36, %36 [0, 1] : vector<i16>, vector<i16>
      %266 = arith.minui %c-15893_i16, %c-15893_i16 : i16
      %267 = memref.atomic_rmw muli %c-15893_i16, %alloc_11[%c1, %c1, %c5] : (i16, memref<2x16x8xi16>) -> i16
      %collapsed_45 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<2x5x8xi16> into tensor<10x8xi16>
      %268 = arith.cmpf une, %264, %cst_5 : f16
      %269 = index.castu %c4 : index to i32
      %cst_46 = arith.constant 5.273600e+04 : f16
      %270 = arith.shrsi %true, %true : i1
      %271 = scf.while (%arg2 = %alloc_17) : (memref<8xi16>) -> memref<8xi16> {
        %275 = vector.extract %26[0] : vector<1xf16>
        %276 = math.exp %3 : tensor<5x5xf32>
        %277 = memref.atomic_rmw maxu %c1422306378_i64, %alloc_14[%c0, %c13, %c7] : (i64, memref<2x16x8xi64>) -> i64
        %278 = math.log1p %3 : tensor<5x5xf32>
        %279 = index.castu %c9 : index to i32
        %splat_48 = tensor.splat %cst_1 : tensor<2x5x8xf16>
        affine.store %c-15893_i16, %arg2[%c13] : memref<8xi16>
        %280 = math.atan %3 : tensor<5x5xf32>
        scf.condition(%true_3) %arg2 : memref<8xi16>
      } do {
      ^bb0(%arg2: memref<8xi16>):
        %275 = vector.broadcast %cst_7 : f32 to vector<2x16x8xf32>
        %276 = vector.fma %275, %275, %275 : vector<2x16x8xf32>
        bufferization.dealloc_tensor %4 : tensor<2x5x8xi16>
        %277 = arith.divf %264, %cst_1 : f16
        %278 = math.atan %cst_5 : f16
        %279 = arith.cmpf olt, %cst_0, %cst : f32
        %280 = vector.broadcast %cst_0 : f32 to vector<2x16x8xf32>
        %281 = vector.fma %280, %275, %262 : vector<2x16x8xf32>
        %282 = vector.splat %c9 : vector<2x16x8xindex>
        %283 = vector.broadcast %c1059108793_i64 : i64 to vector<i64>
        %284 = vector.transfer_write %283, %8[%c8, %48, %c2] : vector<i64>, tensor<2x5x8xi64>
        %285 = arith.shrui %true_25, %true_2 : i1
        %286 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d3 + 1, d0 * 2, -(d3 mod 2))>(%c13, %c12, %c5, %c15)
        %287 = vector.broadcast %cst_0 : f32 to vector<8xf32>
        %288 = vector.fma %287, %287, %287 : vector<8xf32>
        %289 = arith.remf %cst_7, %cst_0 : f32
        %cst_48 = arith.constant 1.000000e+00 : f32
        %cst_49 = arith.constant 0.000000e+00 : f32
        %290 = vector.transfer_read %50[%c13, %c13], %cst_49 : tensor<5x5xf32>, vector<f32>
        %inserted_50 = tensor.insert %c2016339117_i32 into %7[%c3] : tensor<8xi32>
        %291 = math.log1p %3 : tensor<5x5xf32>
        %292 = arith.minui %c1059108793_i64, %c1059108793_i64 : i64
        scf.yield %arg2 : memref<8xi16>
      }
      %272 = index.sizeof
      %inserted_47 = tensor.insert %c-15893_i16 into %10[%c0, %c3, %c2] : tensor<2x5x8xi16>
      %273 = arith.subi %true_25, %true_2 : i1
      %274 = vector.broadcast %c33059462_i32 : i32 to vector<2x16x8xi32>
      scf.yield %274 : vector<2x16x8xi32>
    }
    %64 = arith.maxsi %true, %true_4 : i1
    %65 = arith.maxui %true_3, %true_3 : i1
    %66 = vector.extract %26[0] : vector<1xf16>
    %splat = tensor.splat %true_3 : tensor<5x5xi1>
    %67 = arith.remf %cst_1, %cst_5 : f16
    %68 = index.floordivs %c13, %c1
    %69 = math.absi %4 : tensor<2x5x8xi16>
    %70 = arith.addf %cst_0, %cst_7 : f32
    %71 = tensor.empty() : tensor<8xi64>
    %72 = arith.shrsi %c903769282_i64, %c1059108793_i64 : i64
    %73 = vector.insert %cst_1, %20 [0] : f16 into vector<2xf16>
    %74 = index.floordivs %c10, %42
    memref.store %true_25, %alloc_20[%c7] : memref<8xi1>
    %75 = vector.load %alloc_13[%c6] : memref<8xi1>, vector<8xi1>
    scf.index_switch %c1 
    case 1 {
      %splat_44 = tensor.splat %c1059108793_i64 : tensor<2x16x8xi64>
      %261 = bufferization.to_memref %12 : memref<8xi64>
      %262 = vector.broadcast %true_3 : i1 to vector<2xi1>
      %263 = vector.maskedload %alloc_20[%c7], %262, %262 : memref<8xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
      %264 = math.cos %5 : tensor<5x5xf32>
      %265 = arith.divsi %c33059462_i32, %c2016339117_i32 : i32
      %266 = index.add %c2, %c0
      %267 = arith.maxf %cst, %cst_7 : f32
      %268 = math.absf %cst_7 : f32
      %269 = math.atan %13 : tensor<2x5x8xf16>
      %270 = math.copysign %5, %3 : tensor<5x5xf32>
      %271 = arith.addf %cst_0, %cst : f32
      %272 = vector.transpose %262, [0] : vector<2xi1> to vector<2xi1>
      %273 = arith.minf %cst_7, %cst : f32
      %274 = index.sub %68, %c12
      %275 = arith.minui %true_3, %true_3 : i1
      scf.if %true_3 {
        %276 = vector.broadcast %c-15893_i16 : i16 to vector<8xi16>
        %277 = vector.broadcast %c33059462_i32 : i32 to vector<8xi32>
        %278 = vector.gather %4[%c11, %c11, %c7] [%277], %75, %276 : tensor<2x5x8xi16>, vector<8xi32>, vector<8xi1>, vector<8xi16> into vector<8xi16>
        %279 = vector.insert %cst_5, %26 [0] : f16 into vector<1xf16>
        %splat_45 = tensor.splat %cst_0 : tensor<5x5xf32>
        %from_elements_46 = tensor.from_elements %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c33059462_i32 : tensor<2x16x8xi32>
        %280 = index.maxu %74, %c10
        %281 = vector.broadcast %c0 : index to vector<16xindex>
        %282 = vector.broadcast %true_25 : i1 to vector<16xi1>
        vector.scatter %alloc_24[%c3] [%281], %282, %282 : memref<8xi1>, vector<16xindex>, vector<16xi1>, vector<16xi1>
        %283 = vector.broadcast %cst : f32 to vector<5x8xf32>
        %284 = vector.broadcast %cst : f32 to vector<5xf32>
        %dest_47, %accumulated_value_48 = vector.scan <maxf>, %283, %284 {inclusive = true, reduction_dim = 1 : i64} : vector<5x8xf32>, vector<5xf32>
        %285 = arith.addf %cst, %cst_7 : f32
      }
      scf.yield
    }
    case 2 {
      %261 = arith.ceildivsi %c903769282_i64, %c1422306378_i64 : i64
      %262 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %75, %75, %true_6 : vector<8xi1>, vector<8xi1> into i1
      %263 = tensor.empty() : tensor<2x5x8xi16>
      %mapped_44 = linalg.map ins(%10 : tensor<2x5x8xi16>) outs(%263 : tensor<2x5x8xi16>)
        (%in: i16) {
          %273 = vector.broadcast %c2016339117_i32 : i32 to vector<2x5x8xi32>
          %274 = arith.mulf %cst_7, %cst : f32
          %alloc_46 = memref.alloc() : memref<2x5x8xi64>
          memref.tensor_store %8, %alloc_46 : memref<2x5x8xi64>
          vector.print %57 : vector<i1>
          %alloca_47 = memref.alloca() : memref<2x5x8xi1>
          %splat_48 = tensor.splat %in : tensor<5x5xi16>
          %275 = math.atan %13 : tensor<2x5x8xf16>
          %276 = vector.shuffle %34, %34 [0, 1] : vector<i64>, vector<i64>
          %277 = arith.minsi %c903769282_i64, %c903769282_i64 : i64
          %278 = arith.shrsi %c-15893_i16, %in : i16
          %279 = vector.broadcast %cst : f32 to vector<8xf32>
          %280 = index.sizeof
          %281 = arith.maxui %true_2, %true_3 : i1
          %282 = arith.xori %true_25, %true_25 : i1
          %283 = math.tanh %50 : tensor<5x5xf32>
          %284 = vector.flat_transpose %26 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
          %285 = arith.ori %c-15893_i16, %c-15893_i16 : i16
          vector.print %36 : vector<i16>
          %286 = index.add %c2, %68
          %287 = vector.broadcast %c33059462_i32 : i32 to vector<2x5xi32>
          %dest_49, %accumulated_value_50 = vector.scan <mul>, %273, %287 {inclusive = true, reduction_dim = 2 : i64} : vector<2x5x8xi32>, vector<2x5xi32>
          %288 = vector.extract_strided_slice %75 {offsets = [3], sizes = [4], strides = [1]} : vector<8xi1> to vector<4xi1>
          %289 = math.floor %cst_1 : f16
          %290 = arith.cmpf oge, %cst_7, %cst : f32
          %291 = math.log %50 : tensor<5x5xf32>
          %292 = math.copysign %cst_7, %cst_0 : f32
          %293 = index.sizeof
          %inserted_51 = tensor.insert %c-15893_i16 into %4[%c1, %c3, %c3] : tensor<2x5x8xi16>
          %294 = vector.matrix_multiply %75, %75 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
          %295 = vector.extract_strided_slice %279 {offsets = [5], sizes = [1], strides = [1]} : vector<8xf32> to vector<1xf32>
          vector.print %295 : vector<1xf32>
          %296 = arith.addi %c33059462_i32, %c2016339117_i32 : i32
          %297 = vector.broadcast %c-15893_i16 : i16 to vector<16xi16>
          %298 = vector.broadcast %true_6 : i1 to vector<16xi1>
          %299 = vector.maskedload %alloc_8[%c1, %c0, %c0], %298, %297 : memref<2x5x8xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      vector.print %36 : vector<i16>
      %264 = arith.shrui %c903769282_i64, %c1059108793_i64 : i64
      vector.print %57 : vector<i1>
      memref.assume_alignment %alloc_16, 2 : memref<5x5xf16>
      %265 = math.round %3 : tensor<5x5xf32>
      vector.print %34 : vector<i64>
      %266 = memref.atomic_rmw maxf %cst, %alloc_15[%c1, %c4] : (f32, memref<5x5xf32>) -> f32
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%13 : tensor<2x5x8xf16>) {
      ^bb0(%out: f16):
        %273 = vector.insert %cst_5, %26 [0] : f16 into vector<1xf16>
        %274 = math.cos %50 : tensor<5x5xf32>
        %275 = arith.maxsi %true_2, %true_25 : i1
        %276 = vector.insert %true, %75 [5] : i1 into vector<8xi1>
        %277 = arith.maxsi %c33059462_i32, %c33059462_i32 : i32
        %278 = math.expm1 %5 : tensor<5x5xf32>
        %279 = bufferization.to_tensor %alloc_21 : memref<8xi1>
        %280 = math.sqrt %13 : tensor<2x5x8xf16>
        %281 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + d1 mod 8, d0 * 256, (d1 + d1 mod 8) ceildiv 2)>(%32, %32, %c5, %c15)
        %282 = index.maxu %281, %c0
        %283 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + 32, d2 - (d3 - 32), d3 - 128)>(%282, %c6, %c12, %52)
        %284 = index.casts %74 : index to i32
        bufferization.dealloc_tensor %7 : tensor<8xi32>
        %285 = arith.remf %cst, %cst_0 : f32
        %286 = math.tanh %cst_1 : f16
        %extracted_46 = tensor.extract %4[%c1, %c1, %c7] : tensor<2x5x8xi16>
        %287 = math.ceil %cst : f32
        %288 = index.add %c1, %c9
        %289 = arith.cmpf olt, %cst_5, %cst_5 : f16
        %290 = math.atan %3 : tensor<5x5xf32>
        %291 = arith.minf %cst_5, %out : f16
        %292 = arith.addi %true_2, %true_25 : i1
        %293 = math.log1p %5 : tensor<5x5xf32>
        %294 = arith.xori %true, %true : i1
        %295 = arith.minui %true_25, %true_25 : i1
        %296 = index.casts %c1422306378_i64 : i64 to index
        %297 = math.sqrt %3 : tensor<5x5xf32>
        %298 = index.ceildivs %c3, %52
        %true_47 = index.bool.constant true
        %299 = arith.maxsi %c2016339117_i32, %c33059462_i32 : i32
        %300 = arith.minui %true_25, %true_47 : i1
        %301 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf16> to vector<1xf16>
        linalg.yield %out : f16
      } -> tensor<2x5x8xf16>
      %alloc_45 = memref.alloc() : memref<2x16x8xi1>
      %268 = vector.broadcast %true_25 : i1 to vector<5x5xi1>
      %269 = vector.broadcast %c2016339117_i32 : i32 to vector<5x5xi32>
      %270 = vector.gather %alloc_45[%c1, %c1, %31] [%269], %268, %268 : memref<2x16x8xi1>, vector<5x5xi32>, vector<5x5xi1>, vector<5x5xi1> into vector<5x5xi1>
      %271 = arith.minsi %true_25, %true_4 : i1
      %272 = bufferization.clone %alloc_12 : memref<8xf16> to memref<8xf16>
      %c231913768_i64 = arith.constant 231913768 : i64
      memref.assume_alignment %alloc_16, 2 : memref<5x5xf16>
      scf.yield
    }
    case 3 {
      %261 = bufferization.to_tensor %alloc_11 : memref<2x16x8xi16>
      %262 = math.tanh %50 : tensor<5x5xf32>
      %263 = math.copysign %13, %13 : tensor<2x5x8xf16>
      %264 = arith.shrsi %c-15893_i16, %c-15893_i16 : i16
      %265 = memref.realloc %alloc_17 : memref<8xi16> to memref<5xi16>
      %266 = math.fma %50, %5, %3 : tensor<5x5xf32>
      %267 = index.ceildivs %c7, %c6
      %268 = tensor.empty() : tensor<2x16x8xi16>
      %mapped_44 = linalg.map ins(%alloc_11, %alloc_11, %alloc_11 : memref<2x16x8xi16>, memref<2x16x8xi16>, memref<2x16x8xi16>) outs(%268 : tensor<2x16x8xi16>)
        (%in: i16, %in_46: i16, %in_47: i16) {
          %275 = arith.andi %true_3, %true_4 : i1
          %276 = vector.shuffle %57, %57 [0, 1] : vector<i1>, vector<i1>
          %277 = arith.minui %c2016339117_i32, %c33059462_i32 : i32
          %278 = vector.splat %c2016339117_i32 : vector<5x5xi32>
          %279 = arith.maxui %in, %in_46 : i16
          %280 = arith.addi %true_2, %true : i1
          %281 = arith.shli %true_6, %true_2 : i1
          %282 = arith.addi %c-15893_i16, %in : i16
          %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %75, %75, %true_2 : vector<8xi1>, vector<8xi1> into i1
          %284 = bufferization.to_memref %splat : memref<5x5xi1>
          %true_48 = index.bool.constant true
          %285 = math.floor %cst_0 : f32
          %286 = vector.multi_reduction <and>, %75, %true [0] : vector<8xi1> to i1
          %287 = arith.shrsi %in_46, %c-15893_i16 : i16
          %288 = tensor.empty() : tensor<5x5xi32>
          %289 = math.fpowi %3, %288 : tensor<5x5xf32>, tensor<5x5xi32>
          %290 = arith.negf %cst : f32
          %291 = arith.shli %c33059462_i32, %c33059462_i32 : i32
          %292 = vector.shuffle %57, %57 [0, 1] : vector<i1>, vector<i1>
          %293 = math.ceil %cst_7 : f32
          %294 = vector.matrix_multiply %75, %75 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
          %splat_49 = tensor.splat %in_47 : tensor<8xi16>
          %295 = memref.load %alloc_15[%c1, %c1] : memref<5x5xf32>
          %296 = index.divu %c13, %c12
          %297 = math.expm1 %5 : tensor<5x5xf32>
          %298 = affine.load %alloc_24[%c12] : memref<8xi1>
          %c231876938_i64 = arith.constant 231876938 : i64
          %299 = math.fma %50, %50, %5 : tensor<5x5xf32>
          %300 = math.log10 %50 : tensor<5x5xf32>
          %301 = index.sizeof
          %302 = index.sub %48, %68
          %303 = math.exp %cst : f32
          %304 = math.log %cst_0 : f32
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %269 = vector.splat %c0 : vector<5x5xindex>
      memref.assume_alignment %alloc_10, 16 : memref<2x5x8xi16>
      %splat_45 = tensor.splat %cst_0 : tensor<2x16x8xf32>
      %270 = math.copysign %50, %3 : tensor<5x5xf32>
      %271 = vector.extract %26[0] : vector<1xf16>
      %272 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf16> to vector<1xf16>
      %273 = arith.remf %cst, %cst_0 : f32
      %274 = vector.insert %true_2, %75 [0] : i1 into vector<8xi1>
      scf.yield
    }
    default {
      %261 = arith.remf %cst_0, %cst_7 : f32
      %262 = math.absi %9 : tensor<8xi16>
      %263 = vector.load %alloc_24[%c7] : memref<8xi1>, vector<5x5xi1>
      %264 = math.round %cst_7 : f32
      %265 = math.exp %5 : tensor<5x5xf32>
      %266 = arith.negf %cst_0 : f32
      %267 = index.maxu %68, %32
      %true_44 = index.bool.constant true
      %268 = arith.maxsi %c1422306378_i64, %c1059108793_i64 : i64
      %269 = math.atan %3 : tensor<5x5xf32>
      %270 = math.round %5 : tensor<5x5xf32>
      %271 = math.log1p %5 : tensor<5x5xf32>
      bufferization.dealloc_tensor %27 : tensor<2x5x8xi16>
      %272 = arith.andi %true_3, %true_4 : i1
      %273 = arith.maxui %c1059108793_i64, %c1059108793_i64 : i64
      %274 = math.atan %cst_1 : f16
    }
    %76 = math.log1p %5 : tensor<5x5xf32>
    %77 = arith.ceildivsi %true, %true : i1
    %78 = arith.maxf %cst_0, %cst_7 : f32
    %79 = math.atan %50 : tensor<5x5xf32>
    %80 = math.expm1 %cst_0 : f32
    %81 = vector.flat_transpose %20 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
    memref.assume_alignment %alloc_23, 16 : memref<5x5xf16>
    %82 = affine.max affine_map<(d0, d1, d2, d3) -> (d3)>(%c0, %c12, %42, %48)
    %83 = arith.remf %cst, %cst : f32
    %84 = memref.alloca_scope  -> (memref<8xf32>) {
      %261 = vector.broadcast %cst : f32 to vector<2x16x8xf32>
      %262 = arith.floordivsi %true_3, %true_2 : i1
      %263 = vector.splat %c3 : vector<5x5xindex>
      %264 = arith.remui %c33059462_i32, %c33059462_i32 : i32
      %265 = vector.broadcast %c1422306378_i64 : i64 to vector<2x5x8xi64>
      %266 = index.maxu %c9, %42
      %267 = math.exp %cst : f32
      %268 = math.log1p %5 : tensor<5x5xf32>
      %269 = index.maxu %c14, %c1
      %270 = arith.addi %c33059462_i32, %c2016339117_i32 : i32
      %271 = arith.minui %true_4, %true : i1
      %272 = arith.cmpf oge, %cst_7, %cst_7 : f32
      %273 = arith.addf %cst_0, %cst_7 : f32
      %274 = arith.minui %c-15893_i16, %c-15893_i16 : i16
      %275 = arith.shrsi %c903769282_i64, %c903769282_i64 : i64
      %276 = arith.minf %cst_1, %cst_1 : f16
      %277 = arith.mulf %cst_7, %cst_7 : f32
      %278 = arith.negf %cst_7 : f32
      %279 = arith.shrui %c33059462_i32, %c33059462_i32 : i32
      %280 = vector.matrix_multiply %20, %81 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
      %281 = math.sqrt %cst_0 : f32
      %282 = memref.realloc %alloc_20 : memref<8xi1> to memref<8xi1>
      %rank_44 = tensor.rank %14 : tensor<8xi1>
      %283 = tensor.empty() : tensor<5x5xi32>
      %284 = math.fpowi %5, %283 : tensor<5x5xf32>, tensor<5x5xi32>
      %285 = arith.shrui %true, %true_2 : i1
      %286 = arith.maxf %cst_5, %cst_5 : f16
      %287 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %26, %280, %cst_5 : vector<1xf16>, vector<1xf16> into f16
      %288 = arith.remsi %c-15893_i16, %c-15893_i16 : i16
      %289 = math.sqrt %5 : tensor<5x5xf32>
      %290 = bufferization.clone %alloc_16 : memref<5x5xf16> to memref<5x5xf16>
      %291 = tensor.empty() : tensor<2x5x8xi1>
      %mapped_45 = linalg.map ins(%alloc_22, %2 : memref<2x5x8xi1>, tensor<2x5x8xi1>) outs(%291 : tensor<2x5x8xi1>)
        (%in: i1, %in_47: i1) {
          %293 = vector.insert %true, %75 [4] : i1 into vector<8xi1>
          %294 = vector.bitcast %81 : vector<2xf16> to vector<2xf16>
          %295 = index.castu %c8 : index to i32
          %296 = math.floor %5 : tensor<5x5xf32>
          %297 = index.sub %82, %42
          %298 = arith.divsi %true_25, %true_25 : i1
          %299 = vector.broadcast %c1422306378_i64 : i64 to vector<16xi64>
          %300 = vector.transfer_write %299, %6[%c15, %68] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi64>, tensor<5x5xi64>
          %301 = bufferization.clone %alloc_12 : memref<8xf16> to memref<8xf16>
          %302 = arith.cmpf ueq, %cst_0, %cst_0 : f32
          %303 = math.expm1 %5 : tensor<5x5xf32>
          %304 = arith.muli %true_3, %true_25 : i1
          vector.print %26 : vector<1xf16>
          %305 = arith.remui %true_3, %in_47 : i1
          %306 = bufferization.to_memref %21 : memref<i1>
          %307 = vector.broadcast %c903769282_i64 : i64 to vector<i64>
          %308 = vector.transfer_write %307, %6[%c9, %c7] : vector<i64>, tensor<5x5xi64>
          %309 = index.maxs %266, %82
          %310 = bufferization.to_memref %283 : memref<5x5xi32>
          %splat_48 = tensor.splat %c33059462_i32 : tensor<8xi32>
          %collapsed_49 = tensor.collapse_shape %16 [[0, 1]] : tensor<5x5xi64> into tensor<25xi64>
          %311 = arith.maxsi %true, %true_25 : i1
          %312 = index.ceildivu %c8, %c13
          %313 = index.sub %c7, %68
          %314 = vector.broadcast %in : i1 to vector<2xi1>
          %315 = vector.maskedload %alloc_24[%c1], %314, %314 : memref<8xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
          %316 = math.log2 %13 : tensor<2x5x8xf16>
          %317 = arith.maxsi %c1422306378_i64, %c1422306378_i64 : i64
          %318 = arith.divsi %c33059462_i32, %c33059462_i32 : i32
          %319 = arith.ceildivsi %true_3, %true_3 : i1
          %320 = arith.shrui %true_3, %true_3 : i1
          %321 = arith.minsi %true_6, %true_2 : i1
          %322 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 floordiv 2)>(%c8, %c12, %31, %rank_44)
          %323 = bufferization.to_tensor %alloc_22 : memref<2x5x8xi1>
          %324 = math.ctlz %21 : tensor<i1>
          %true_50 = arith.constant true
          linalg.yield %true_50 : i1
        }
      %292 = affine.apply affine_map<(d0) -> (d0 * 2 + 16)>(%68)
      %alloc_46 = memref.alloc() : memref<8xf32>
      memref.alloca_scope.return %alloc_46 : memref<8xf32>
    }
    %85 = affine.apply affine_map<(d0) -> (-(d0 - 64))>(%32)
    %86 = bufferization.to_tensor %alloc_22 : memref<2x5x8xi1>
    %87 = math.ctlz %8 : tensor<2x5x8xi64>
    %88 = index.castu %c9 : index to i32
    %89 = arith.maxui %c1059108793_i64, %c903769282_i64 : i64
    %90 = arith.subi %c-15893_i16, %c-15893_i16 : i16
    %91 = vector.insert %cst_1, %26 [0] : f16 into vector<1xf16>
    %92 = index.add %c13, %c9
    %93 = vector.multi_reduction <add>, %26, %cst_5 [0] : vector<1xf16> to f16
    %94 = math.expm1 %50 : tensor<5x5xf32>
    %95 = tensor.empty() : tensor<8xf16>
    %96 = math.log1p %5 : tensor<5x5xf32>
    %97 = arith.maxf %cst_0, %cst : f32
    %98 = arith.floordivsi %c1422306378_i64, %c1422306378_i64 : i64
    %99 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 floordiv 8)>(%82, %c0, %c13, %74)
    %100 = arith.remf %cst_7, %cst_0 : f32
    %101 = math.sqrt %cst : f32
    %collapsed = tensor.collapse_shape %5 [[0, 1]] : tensor<5x5xf32> into tensor<25xf32>
    %102 = index.maxu %c13, %85
    %103 = vector.multi_reduction <mul>, %20, %20 [] : vector<2xf16> to vector<2xf16>
    %104 = math.log10 %13 : tensor<2x5x8xf16>
    %105 = math.fma %5, %5, %3 : tensor<5x5xf32>
    %from_elements = tensor.from_elements %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16 : tensor<2x16x8xi16>
    %106 = bufferization.to_tensor %alloc_12 : memref<8xf16>
    memref.alloca_scope  {
      %261 = tensor.empty() : tensor<8xf32>
      %262 = vector.broadcast %cst : f32 to vector<2x16x8xf32>
      %263 = vector.broadcast %true_2 : i1 to vector<2x16x8xi1>
      %264 = vector.broadcast %c33059462_i32 : i32 to vector<2x16x8xi32>
      %265 = vector.gather %261[%99] [%264], %263, %262 : tensor<8xf32>, vector<2x16x8xi32>, vector<2x16x8xi1>, vector<2x16x8xf32> into vector<2x16x8xf32>
      %266 = scf.while (%arg2 = %cst_5) : (f16) -> f16 {
        %297 = math.ceil %13 : tensor<2x5x8xf16>
        %298 = math.copysign %cst_7, %cst_7 : f32
        %299 = vector.matrix_multiply %75, %75 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
        %300 = vector.splat %c6 : vector<5x5xindex>
        %cst_46 = arith.constant 2.720000e+04 : f16
        %301 = affine.load %alloc_15[%c1, %c14] : memref<5x5xf32>
        %302 = arith.maxsi %c903769282_i64, %c903769282_i64 : i64
        %303 = arith.shli %true_3, %true_3 : i1
        scf.condition(%true_4) %93 : f16
      } do {
      ^bb0(%arg2: f16):
        %297 = vector.extract_strided_slice %81 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf16> to vector<1xf16>
        %298 = index.add %c12, %c6
        %299 = tensor.empty(%c0, %74) : tensor<2x?x?xi16>
        %300 = arith.mulf %93, %cst_5 : f16
        %301 = vector.splat %c1059108793_i64 : vector<2x5x8xi64>
        %302 = math.absf %13 : tensor<2x5x8xf16>
        %303 = arith.minf %cst_0, %cst_0 : f32
        %alloca_46 = memref.alloca() : memref<2x16x8xi16>
        %304 = math.copysign %3, %3 : tensor<5x5xf32>
        %305 = math.expm1 %13 : tensor<2x5x8xf16>
        %306 = bufferization.clone %alloc_21 : memref<8xi1> to memref<8xi1>
        %307 = vector.broadcast %cst_0 : f32 to vector<f32>
        vector.transfer_write %307, %84[%c5] : vector<f32>, memref<8xf32>
        %308 = arith.divsi %c33059462_i32, %c33059462_i32 : i32
        %309 = tensor.empty() : tensor<5x5xf32>
        %310 = linalg.matmul ins(%5, %3 : tensor<5x5xf32>, tensor<5x5xf32>) outs(%309 : tensor<5x5xf32>) -> tensor<5x5xf32>
        %311 = math.log2 %cst_1 : f16
        %312 = arith.shrsi %true_25, %true_4 : i1
        scf.yield %arg2 : f16
      }
      %267 = scf.while (%arg2 = %alloc_11) : (memref<2x16x8xi16>) -> memref<2x16x8xi16> {
        %297 = index.castu %c4 : index to i32
        %298 = vector.insert %true_25, %75 [1] : i1 into vector<8xi1>
        %299 = math.rsqrt %cst_7 : f32
        %300 = math.log %93 : f16
        %rank_46 = tensor.rank %8 : tensor<2x5x8xi64>
        %301 = math.absi %7 : tensor<8xi32>
        %302 = tensor.empty() : tensor<2x16x8xi64>
        %303 = vector.create_mask %85 : vector<8xi1>
        scf.condition(%true_2) %alloc_11 : memref<2x16x8xi16>
      } do {
      ^bb0(%arg2: memref<2x16x8xi16>):
        %297 = affine.load %alloc_23[%c11, %c11] : memref<5x5xf16>
        %298 = vector.matrix_multiply %75, %75 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
        %alloc_46 = memref.alloc() : memref<2x16x8xf32>
        %299 = vector.broadcast %cst_0 : f32 to vector<5x5xf32>
        %300 = vector.broadcast %true : i1 to vector<5x5xi1>
        %301 = vector.broadcast %c33059462_i32 : i32 to vector<5x5xi32>
        %302 = vector.gather %alloc_46[%42, %48, %c15] [%301], %300, %299 : memref<2x16x8xf32>, vector<5x5xi32>, vector<5x5xi1>, vector<5x5xf32> into vector<5x5xf32>
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %303 = vector.transfer_read %10[%c7, %c12, %31], %c0_i16 : tensor<2x5x8xi16>, vector<i16>
        %304 = math.copysign %cst_1, %297 : f16
        %305 = math.log2 %3 : tensor<5x5xf32>
        %splat_47 = tensor.splat %cst : tensor<2x5x8xf32>
        %306 = vector.broadcast %cst_1 : f16 to vector<1x1xf16>
        %307 = vector.outerproduct %26, %26, %306 {kind = #vector.kind<mul>} : vector<1xf16>, vector<1xf16>
        %308 = index.ceildivs %c15, %32
        %309 = math.fpowi %106, %7 : tensor<8xf16>, tensor<8xi32>
        %310 = arith.maxf %cst_0, %cst : f32
        %311 = arith.minui %true_3, %true_6 : i1
        %312 = math.sqrt %splat_47 : tensor<2x5x8xf32>
        %313 = bufferization.to_memref %106 : memref<8xf16>
        %314 = math.log10 %3 : tensor<5x5xf32>
        %315 = math.powf %5, %5 : tensor<5x5xf32>
        scf.yield %arg2 : memref<2x16x8xi16>
      }
      %268 = vector.broadcast %cst : f32 to vector<8xf32>
      %269 = vector.broadcast %c2016339117_i32 : i32 to vector<8xi32>
      %270 = vector.gather %84[%99] [%269], %75, %268 : memref<8xf32>, vector<8xi32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
      %from_elements_44 = tensor.from_elements %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16 : tensor<2x16x8xi16>
      %271 = scf.execute_region -> index {
        bufferization.dealloc_tensor %13 : tensor<2x5x8xf16>
        %297 = vector.extract %81[0] : vector<2xf16>
        %298 = vector.broadcast %93 : f16 to vector<f16>
        %299 = vector.transfer_write %298, %106[%48] : vector<f16>, tensor<8xf16>
        %300 = math.floor %3 : tensor<5x5xf32>
        %301 = arith.remf %cst, %cst_0 : f32
        %302 = vector.splat %c15 : vector<5x5xindex>
        %alloca_46 = memref.alloca() : memref<8xf16>
        %303 = math.sqrt %cst_5 : f16
        %304 = math.log1p %50 : tensor<5x5xf32>
        %alloca_47 = memref.alloca() : memref<8xf32>
        %305 = memref.load %alloc_22[%c0, %c2, %c1] : memref<2x5x8xi1>
        %306 = index.ceildivs %c11, %c11
        %307 = vector.extract %81[1] : vector<2xf16>
        %308 = vector.load %alloc[%c0, %c0, %c6] : memref<2x16x8xi16>, vector<8xi16>
        %309 = vector.broadcast %cst_7 : f32 to vector<8x8xf32>
        %310 = vector.outerproduct %270, %268, %309 {kind = #vector.kind<maxf>} : vector<8xf32>, vector<8xf32>
        %311 = arith.minui %c1422306378_i64, %c1422306378_i64 : i64
        scf.yield %c0 : index
      }
      %272 = index.casts %48 : index to i32
      %273 = math.log1p %collapsed : tensor<25xf32>
      %274 = tensor.empty() : tensor<8xi1>
      %false_45 = index.bool.constant false
      %c-20481_i16 = arith.constant -20481 : i16
      %275 = scf.execute_region -> tensor<8xi32> {
        %297 = math.floor %cst_1 : f16
        %298 = tensor.empty() : tensor<5x5xi64>
        %299 = linalg.matmul ins(%16, %6 : tensor<5x5xi64>, tensor<5x5xi64>) outs(%298 : tensor<5x5xi64>) -> tensor<5x5xi64>
        %300 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf16> to vector<1xf16>
        %301 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %268, %270, %cst_0 : vector<8xf32>, vector<8xf32> into f32
        %302 = arith.negf %cst_0 : f32
        %collapsed_46 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<2x5x8xi1> into tensor<10x8xi1>
        %303 = vector.load %alloc_18[%c2, %c0] : memref<5x5xi32>, vector<2x5x8xi32>
        %true_47 = arith.constant true
        %304 = arith.ceildivsi %true_4, %true_3 : i1
        %305 = math.atan %cst_0 : f32
        %306 = math.atan2 %13, %13 : tensor<2x5x8xf16>
        %rank_48 = tensor.rank %11 : tensor<2x16x8xi32>
        %collapsed_49 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<2x5x8xi64> into tensor<10x8xi64>
        %307 = arith.mulf %93, %cst_5 : f16
        %308 = arith.mulf %cst, %cst_0 : f32
        %309 = bufferization.to_memref %14 : memref<8xi1>
        scf.yield %7 : tensor<8xi32>
      }
      %276 = vector.matrix_multiply %75, %75 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
      memref.store %c33059462_i32, %alloc_19[%c1, %c1] : memref<5x5xi32>
      %277 = memref.alloca_scope  -> (i32) {
        %297 = math.log %13 : tensor<2x5x8xf16>
        %298 = arith.minui %c1059108793_i64, %c903769282_i64 : i64
        %299 = vector.broadcast %cst_7 : f32 to vector<2x16xf32>
        %dest_46, %accumulated_value_47 = vector.scan <mul>, %265, %299 {inclusive = false, reduction_dim = 2 : i64} : vector<2x16x8xf32>, vector<2x16xf32>
        %300 = arith.ori %true, %true_4 : i1
        %301 = index.ceildivu %92, %85
        %302 = bufferization.to_memref %8 : memref<2x5x8xi64>
        %303 = arith.negf %cst_0 : f32
        %304 = bufferization.clone %alloc_12 : memref<8xf16> to memref<8xf16>
        %305 = arith.shrsi %true_6, %true : i1
        %306 = arith.addf %93, %cst_5 : f16
        %307 = tensor.empty(%102) : tensor<5x?xi64>
        %cst_48 = arith.constant 2.12082867E+9 : f32
        %308 = index.floordivs %31, %102
        %309 = math.log1p %50 : tensor<5x5xf32>
        %310 = math.fma %cst_7, %cst_7, %cst_0 : f32
        %311 = vector.broadcast %cst_7 : f32 to vector<2x5x8xf32>
        %312 = vector.fma %311, %311, %311 : vector<2x5x8xf32>
        %313 = index.castu %c6 : index to i32
        %314 = vector.broadcast %true_2 : i1 to vector<i1>
        vector.transfer_write %314, %alloc_24[%c15] : vector<i1>, memref<8xi1>
        %315 = arith.cmpf ogt, %cst_0, %cst_7 : f32
        %316 = vector.extract_strided_slice %75 {offsets = [2], sizes = [6], strides = [1]} : vector<8xi1> to vector<6xi1>
        %317 = arith.addf %cst_0, %cst_7 : f32
        %318 = bufferization.to_memref %22 : memref<i1>
        %319 = math.fma %3, %50, %5 : tensor<5x5xf32>
        %320 = arith.negf %cst : f32
        %321 = vector.broadcast %c-15893_i16 : i16 to vector<5xi16>
        %322 = vector.broadcast %true_4 : i1 to vector<5xi1>
        %323 = vector.maskedload %alloc_8[%c0, %c3, %c0], %322, %321 : memref<2x5x8xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        %324 = math.sqrt %collapsed : tensor<25xf32>
        %325 = vector.insert %true_3, %75 [1] : i1 into vector<8xi1>
        %326 = math.log %cst_0 : f32
        %327 = math.round %5 : tensor<5x5xf32>
        %328 = memref.atomic_rmw minu %c2016339117_i32, %alloc_18[%c2, %c4] : (i32, memref<5x5xi32>) -> i32
        %329 = math.ctlz %c1059108793_i64 : i64
        %330 = arith.mulf %cst_7, %cst_7 : f32
        memref.alloca_scope.return %c2016339117_i32 : i32
      }
      %278 = vector.insert %cst_0, %270 [7] : f32 into vector<8xf32>
      %279 = math.absi %15 : tensor<8xi1>
      %280 = arith.mulf %cst_7, %cst_7 : f32
      %281 = arith.minf %cst_5, %cst_1 : f16
      %282 = vector.matrix_multiply %81, %26 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<1xf16>) -> vector<2xf16>
      %283 = math.absi %c1059108793_i64 : i64
      %284 = index.add %52, %31
      %285 = vector.broadcast %c2016339117_i32 : i32 to vector<8x8xi32>
      %286 = vector.outerproduct %269, %269, %285 {kind = #vector.kind<xor>} : vector<8xi32>, vector<8xi32>
      %287 = math.atan %collapsed : tensor<25xf32>
      %288 = arith.maxsi %true, %true_3 : i1
      %289 = math.tanh %5 : tensor<5x5xf32>
      %290 = tensor.empty() : tensor<5x5xi64>
      %291 = linalg.matmul ins(%16, %6 : tensor<5x5xi64>, tensor<5x5xi64>) outs(%290 : tensor<5x5xi64>) -> tensor<5x5xi64>
      %292 = vector.broadcast %c1059108793_i64 : i64 to vector<2x5x8xi64>
      %293 = vector.create_mask %c6, %271, %85 : vector<2x5x8xi1>
      %294 = arith.cmpf ole, %93, %cst_1 : f16
      %295 = index.sub %c7, %85
      %296 = vector.matrix_multiply %269, %269 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi32>, vector<8xi32>) -> vector<1xi32>
    }
    %107 = vector.multi_reduction <maxf>, %20, %81 [] : vector<2xf16> to vector<2xf16>
    %108 = arith.shrui %true_6, %true : i1
    %109 = arith.maxui %c1059108793_i64, %c1059108793_i64 : i64
    %110 = arith.remui %c2016339117_i32, %c33059462_i32 : i32
    %111 = tensor.empty(%32) : tensor<?x5x8xi16>
    %true_26 = arith.constant true
    %112 = vector.broadcast %c-15893_i16 : i16 to vector<8x8xi16>
    %113 = vector.broadcast %c-15893_i16 : i16 to vector<8xi16>
    %dest, %accumulated_value = vector.scan <maxui>, %112, %113 {inclusive = true, reduction_dim = 0 : i64} : vector<8x8xi16>, vector<8xi16>
    %114 = index.floordivs %52, %74
    %115 = vector.multi_reduction <or>, %75, %75 [] : vector<8xi1> to vector<8xi1>
    %116 = scf.if %true_25 -> (f32) {
      memref.store %c-15893_i16, %alloc_10[%c0, %c3, %c2] : memref<2x5x8xi16>
      %261 = math.sqrt %13 : tensor<2x5x8xf16>
      affine.store %true_3, %alloc_22[%c11, %c14, %c6] : memref<2x5x8xi1>
      %262 = vector.broadcast %c2016339117_i32 : i32 to vector<2x16x8xi32>
      %263 = vector.broadcast %true_2 : i1 to vector<2x16x8xi1>
      %264 = vector.gather %0[%c15, %102, %c7] [%262], %263, %262 : tensor<2x5x8xi32>, vector<2x16x8xi32>, vector<2x16x8xi1>, vector<2x16x8xi32> into vector<2x16x8xi32>
      %265 = math.tanh %3 : tensor<5x5xf32>
      %266 = arith.negf %cst_1 : f16
      %267 = affine.if affine_set<(d0) : (0 == 0)>(%c11) -> f16 {
        %269 = math.absi %7 : tensor<8xi32>
        %270 = vector.create_mask %32 : vector<8xi1>
        %271 = affine.apply affine_map<(d0) -> ((d0 - 32) * -2)>(%102)
        %272 = math.sqrt %5 : tensor<5x5xf32>
        %273 = vector.matrix_multiply %26, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<1xf16>, vector<2xf16>) -> vector<2xf16>
        %274 = index.sizeof
        %275 = vector.broadcast %c2016339117_i32 : i32 to vector<8xi32>
        %276 = vector.gather %0[%48, %c11, %271] [%275], %75, %275 : tensor<2x5x8xi32>, vector<8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
        %277 = arith.muli %true_2, %true_3 : i1
        affine.yield %cst_5 : f16
      } else {
        %269 = arith.maxsi %true_6, %true_6 : i1
        %270 = index.add %52, %c7
        bufferization.dealloc_tensor %collapsed : tensor<25xf32>
        %true_44 = arith.constant true
        %271 = vector.broadcast %c1422306378_i64 : i64 to vector<i64>
        vector.transfer_write %271, %alloc_14[%74, %114, %42] : vector<i64>, memref<2x16x8xi64>
        bufferization.dealloc_tensor %6 : tensor<5x5xi64>
        %272 = index.sizeof
        %273 = arith.mulf %cst_7, %cst_7 : f32
        affine.yield %cst_5 : f16
      }
      %268 = arith.shli %true, %true_3 : i1
      scf.yield %cst_7 : f32
    } else {
      scf.execute_region {
        %267 = index.ceildivu %114, %c2
        %268 = arith.maxui %true_3, %true_6 : i1
        %269 = vector.broadcast %c1059108793_i64 : i64 to vector<i64>
        %270 = vector.transfer_write %269, %16[%c0, %c2] : vector<i64>, tensor<5x5xi64>
        %271 = vector.broadcast %93 : f16 to vector<8x5x16xf16>
        %272 = vector.broadcast %cst_1 : f16 to vector<5x16xf16>
        %dest_44, %accumulated_value_45 = vector.scan <add>, %271, %272 {inclusive = false, reduction_dim = 0 : i64} : vector<8x5x16xf16>, vector<5x16xf16>
        %273 = tensor.empty() : tensor<5x5xi64>
        %274 = linalg.matmul ins(%16, %16 : tensor<5x5xi64>, tensor<5x5xi64>) outs(%273 : tensor<5x5xi64>) -> tensor<5x5xi64>
        %275 = math.log2 %13 : tensor<2x5x8xf16>
        %276 = math.ceil %cst_0 : f32
        %277 = math.log %cst_5 : f16
        %278 = vector.splat %c14 : vector<2x16x8xindex>
        %279 = math.expm1 %3 : tensor<5x5xf32>
        %280 = vector.broadcast %cst_1 : f16 to vector<2x2xf16>
        %281 = vector.outerproduct %81, %81, %280 {kind = #vector.kind<minf>} : vector<2xf16>, vector<2xf16>
        %282 = vector.broadcast %true_2 : i1 to vector<8xi1>
        %283 = math.absi %16 : tensor<5x5xi64>
        %284 = arith.floordivsi %true_2, %true_25 : i1
        %285 = index.castu %c903769282_i64 : i64 to index
        %286 = index.ceildivs %31, %85
        scf.yield
      }
      %261 = math.sqrt %3 : tensor<5x5xf32>
      %262 = arith.floordivsi %true_25, %true_3 : i1
      %263 = arith.xori %true_2, %true_6 : i1
      %264 = arith.cmpf ueq, %cst_0, %cst : f32
      %265 = memref.atomic_rmw maxs %c-15893_i16, %alloc_11[%c1, %c4, %c4] : (i16, memref<2x16x8xi16>) -> i16
      scf.execute_region {
        %267 = arith.divui %true_6, %true_6 : i1
        %268 = math.ipowi %true_6, %true_4 : i1
        bufferization.dealloc_tensor %21 : tensor<i1>
        %269 = index.castu %true_3 : i1 to index
        %270 = arith.remf %cst, %cst_7 : f32
        %271 = math.log1p %13 : tensor<2x5x8xf16>
        %272 = tensor.empty(%c1, %c13) : tensor<?x?x8xf32>
        memref.assume_alignment %alloc_18, 4 : memref<5x5xi32>
        %273 = index.sizeof
        %274 = vector.splat %c1 : vector<2x5x8xindex>
        %275 = memref.realloc %84 : memref<8xf32> to memref<8xf32>
        %276 = vector.extract %75[2] : vector<8xi1>
        %277 = math.atan %93 : f16
        %278 = arith.minf %cst_0, %cst : f32
        %279 = math.fma %13, %13, %13 : tensor<2x5x8xf16>
        %280 = index.castu %true : i1 to index
        scf.yield
      }
      %266 = arith.remsi %c903769282_i64, %c1059108793_i64 : i64
      scf.yield %cst_7 : f32
    }
    %117 = math.exp %cst_0 : f32
    %118 = arith.remui %true_4, %true : i1
    %119 = math.powf %cst_1, %cst_5 : f16
    %120 = math.log2 %cst_1 : f16
    %121 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %20, %81, %cst_5 : vector<2xf16>, vector<2xf16> into f16
    %122 = math.log2 %5 : tensor<5x5xf32>
    %123 = math.ceil %13 : tensor<2x5x8xf16>
    %124 = index.casts %114 : index to i32
    %from_elements_27 = tensor.from_elements %true, %true, %true, %true_6, %true_6, %true_2, %true_3, %true_2, %true, %true_25, %true, %true, %true_6, %true_6, %true_25, %true, %true_4, %true_3, %true_6, %true_6, %true_4, %true_4, %true_4, %true_2, %true_3 : tensor<5x5xi1>
    %125 = vector.create_mask %c8, %99, %c10 : vector<2x5x8xi1>
    %126 = arith.xori %true_4, %true_4 : i1
    %127 = scf.while (%arg2 = %alloc_15) : (memref<5x5xf32>) -> memref<5x5xf32> {
      %261 = arith.addf %116, %cst : f32
      %262 = vector.shuffle %26, %81 [0, 2] : vector<1xf16>, vector<2xf16>
      %263 = math.ipowi %8, %8 : tensor<2x5x8xi64>
      %264 = arith.shli %c1059108793_i64, %c903769282_i64 : i64
      %265 = affine.for %arg3 = 0 to 82 iter_args(%arg4 = %c5) -> (index) {
        affine.yield %c5 : index
      }
      %266 = bufferization.to_memref %1 : memref<5x5xi64>
      %267 = vector.broadcast %cst_1 : f16 to vector<f16>
      vector.transfer_write %267, %alloc_16[%c7, %c14] : vector<f16>, memref<5x5xf16>
      %268 = math.tanh %106 : tensor<8xf16>
      scf.condition(%true_25) %alloc_15 : memref<5x5xf32>
    } do {
    ^bb0(%arg2: memref<5x5xf32>):
      %261 = arith.shli %true_2, %true_25 : i1
      %262 = vector.broadcast %116 : f32 to vector<5xf32>
      %263 = vector.broadcast %true_6 : i1 to vector<5xi1>
      %264 = vector.maskedload %alloc_15[%c2, %c4], %263, %262 : memref<5x5xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
      %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %20, %81, %cst_5 : vector<2xf16>, vector<2xf16> into f16
      %266 = vector.broadcast %93 : f16 to vector<f16>
      vector.transfer_write %266, %alloc_12[%92] : vector<f16>, memref<8xf16>
      %267 = vector.flat_transpose %81 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
      %268 = vector.reduction <minsi>, %263 : vector<5xi1> into i1
      %269 = vector.reduction <minf>, %264 : vector<5xf32> into f32
      %270 = arith.floordivsi %c2016339117_i32, %c33059462_i32 : i32
      %271 = arith.andi %true_3, %true_2 : i1
      %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %26, %26, %cst_5 : vector<1xf16>, vector<1xf16> into f16
      %273 = math.log1p %cst_7 : f32
      %c-26233_i16 = arith.constant -26233 : i16
      %274 = math.ipowi %1, %6 : tensor<5x5xi64>
      %275 = index.sizeof
      %276 = scf.while (%arg3 = %81) : (vector<2xf16>) -> vector<2xf16> {
        %278 = index.castu %c2 : index to i32
        %279 = memref.atomic_rmw minu %c-15893_i16, %alloc_11[%c0, %c7, %c7] : (i16, memref<2x16x8xi16>) -> i16
        %inserted_44 = tensor.insert %cst_5 into %13[%c1, %c2, %c1] : tensor<2x5x8xf16>
        %280 = vector.matrix_multiply %20, %267 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
        %281 = arith.mulf %cst_1, %cst_1 : f16
        %282 = arith.divsi %c2016339117_i32, %c33059462_i32 : i32
        %283 = math.absi %8 : tensor<2x5x8xi64>
        %284 = math.absf %collapsed : tensor<25xf32>
        scf.condition(%true) %267 : vector<2xf16>
      } do {
      ^bb0(%arg3: vector<2xf16>):
        %278 = math.expm1 %3 : tensor<5x5xf32>
        %279 = math.copysign %50, %50 : tensor<5x5xf32>
        %280 = arith.mulf %cst_7, %cst_0 : f32
        %281 = index.castu %c2016339117_i32 : i32 to index
        %282 = arith.remui %true_6, %true_6 : i1
        %283 = math.ipowi %8, %8 : tensor<2x5x8xi64>
        %284 = math.expm1 %cst_7 : f32
        %285 = arith.muli %true_25, %true_25 : i1
        %286 = math.ctlz %1 : tensor<5x5xi64>
        %287 = index.ceildivu %c0, %48
        %288 = math.fma %3, %5, %50 : tensor<5x5xf32>
        %289 = arith.minui %c-15893_i16, %c-15893_i16 : i16
        %290 = arith.divsi %c1422306378_i64, %c903769282_i64 : i64
        %291 = math.log2 %3 : tensor<5x5xf32>
        %292 = arith.ceildivsi %true_2, %true_3 : i1
        %293 = vector.maskedload %alloc_9[%c4, %c0], %263, %263 : memref<5x5xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
        scf.yield %267 : vector<2xf16>
      }
      %277 = math.exp %cst_1 : f16
      scf.yield %alloc_15 : memref<5x5xf32>
    }
    %128 = index.castu %c6 : index to i32
    %129 = math.absf %5 : tensor<5x5xf32>
    %130 = arith.minui %c1422306378_i64, %c903769282_i64 : i64
    %131 = arith.andi %c-15893_i16, %c-15893_i16 : i16
    %132 = arith.remui %c1059108793_i64, %c1422306378_i64 : i64
    %133 = math.fpowi %13, %0 : tensor<2x5x8xf16>, tensor<2x5x8xi32>
    %134 = index.floordivs %c2, %c1
    %135 = affine.apply affine_map<(d0, d1) -> ((d0 + 8) mod 32)>(%c14, %c12)
    %136 = vector.splat %c9 : vector<5x5xindex>
    %splat_28 = tensor.splat %true : tensor<2x16x8xi1>
    %137 = affine.load %alloc_9[%c5, %c15] : memref<5x5xi1>
    %138 = arith.minsi %c1059108793_i64, %c1059108793_i64 : i64
    %139 = arith.shli %c1422306378_i64, %c1059108793_i64 : i64
    %140 = vector.create_mask %48, %92 : vector<5x5xi1>
    %141 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %26, %26, %cst_5 : vector<1xf16>, vector<1xf16> into f16
    %142 = arith.maxf %cst_7, %cst_7 : f32
    %143 = arith.muli %c33059462_i32, %c2016339117_i32 : i32
    %144 = arith.maxui %c1059108793_i64, %c903769282_i64 : i64
    %145 = index.sub %68, %48
    %146 = arith.minf %93, %cst_5 : f16
    %from_elements_29 = tensor.from_elements %137, %true_2, %true, %true_6, %true_2, %137, %true_6, %137 : tensor<8xi1>
    %147 = arith.remf %cst_5, %cst_1 : f16
    %148 = vector.shuffle %34, %34 [0, 1] : vector<i64>, vector<i64>
    %149 = vector.extract_strided_slice %20 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf16> to vector<1xf16>
    %extracted = tensor.extract %14[%c3] : tensor<8xi1>
    %150 = vector.broadcast %true_3 : i1 to vector<2x16x8xi1>
    %151 = math.fma %cst_0, %cst_0, %cst : f32
    %152 = arith.remui %c33059462_i32, %c33059462_i32 : i32
    %153 = math.copysign %cst, %116 : f32
    affine.for %arg2 = 0 to 127 {
    }
    %154 = arith.mulf %cst_1, %cst_1 : f16
    memref.alloca_scope  {
      %261 = vector.broadcast %c-15893_i16 : i16 to vector<5xi16>
      %262 = vector.broadcast %true_3 : i1 to vector<5xi1>
      %263 = vector.maskedload %alloc[%c0, %c5, %c7], %262, %261 : memref<2x16x8xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
      %264 = arith.andi %extracted, %true_25 : i1
      vector.print %261 : vector<5xi16>
      memref.alloca_scope  {
        %285 = vector.broadcast %cst_0 : f32 to vector<2xf32>
        %286 = vector.broadcast %true : i1 to vector<2xi1>
        %287 = vector.maskedload %alloc_15[%c4, %c1], %286, %285 : memref<5x5xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %288 = math.fpowi %cst_7, %c33059462_i32 : f32, i32
        %inserted_52 = tensor.insert %c2016339117_i32 into %11[%c1, %c13, %c7] : tensor<2x16x8xi32>
        %289 = vector.matrix_multiply %285, %285 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf32>, vector<2xf32>) -> vector<1xf32>
        %290 = vector.create_mask %31, %68, %c13 : vector<2x5x8xi1>
        %291 = arith.remf %cst, %cst_0 : f32
        %c0_i16 = arith.constant 0 : i16
        %292 = vector.transfer_read %alloc[%c13, %c10, %c7], %c0_i16 : memref<2x16x8xi16>, vector<8x2xi16>
        %293 = arith.floordivsi %c1422306378_i64, %c903769282_i64 : i64
        bufferization.dealloc_tensor %11 : tensor<2x16x8xi32>
        %294 = math.fma %collapsed, %collapsed, %collapsed : tensor<25xf32>
        %295 = arith.shli %c2016339117_i32, %c2016339117_i32 : i32
        %296 = math.fma %13, %13, %13 : tensor<2x5x8xf16>
        %297 = arith.floordivsi %c903769282_i64, %c903769282_i64 : i64
        %298 = bufferization.clone %alloc_22 : memref<2x5x8xi1> to memref<2x5x8xi1>
        %299 = math.atan %cst_0 : f32
        %300 = memref.atomic_rmw assign %cst_0, %alloc_15[%c0, %c1] : (f32, memref<5x5xf32>) -> f32
        %alloca_53 = memref.alloca() : memref<2x5x8xi16>
        %301 = math.exp %13 : tensor<2x5x8xf16>
        %302 = arith.divui %true_6, %true_3 : i1
        %303 = math.round %3 : tensor<5x5xf32>
        %304 = vector.splat %134 : vector<2x5x8xindex>
        %305 = vector.multi_reduction <minf>, %285, %cst_7 [0] : vector<2xf32> to f32
        %306 = bufferization.clone %alloc_23 : memref<5x5xf16> to memref<5x5xf16>
        %307 = index.casts %99 : index to i32
        %308 = arith.negf %cst_7 : f32
        %309 = index.floordivs %c5, %134
        %310 = memref.realloc %alloc_20 : memref<8xi1> to memref<2xi1>
        %311 = math.ceil %116 : f32
        %312 = math.absi %true_6 : i1
        %313 = math.expm1 %5 : tensor<5x5xf32>
        %314 = arith.remf %116, %116 : f32
        %315 = math.ctlz %7 : tensor<8xi32>
      }
      %splat_44 = tensor.splat %extracted : tensor<2x16x8xi1>
      %265 = index.divu %c15, %c3
      vector.print %150 : vector<2x16x8xi1>
      %266 = index.add %c15, %c14
      %267 = math.log1p %collapsed : tensor<25xf32>
      %rank_45 = tensor.rank %7 : tensor<8xi32>
      %c-9445_i16 = arith.constant -9445 : i16
      %268 = arith.minui %true_3, %true_4 : i1
      %269 = vector.broadcast %true_6 : i1 to vector<5x8xi1>
      %dest_46, %accumulated_value_47 = vector.scan <or>, %125, %269 {inclusive = false, reduction_dim = 0 : i64} : vector<2x5x8xi1>, vector<5x8xi1>
      %270 = vector.bitcast %140 : vector<5x5xi1> to vector<5x5xi1>
      %271 = arith.minui %true, %true_3 : i1
      %272 = math.expm1 %93 : f16
      %dest_48, %accumulated_value_49 = vector.scan <and>, %270, %262 {inclusive = false, reduction_dim = 1 : i64} : vector<5x5xi1>, vector<5xi1>
      %273 = tensor.empty() : tensor<5x5xf32>
      %274 = linalg.matmul ins(%3, %5 : tensor<5x5xf32>, tensor<5x5xf32>) outs(%273 : tensor<5x5xf32>) -> tensor<5x5xf32>
      %275 = arith.maxsi %true_25, %137 : i1
      %alloca_50 = memref.alloca() : memref<2x5x8xi32>
      %276 = arith.remf %cst_7, %116 : f32
      memref.alloca_scope  {
        %splat_52 = tensor.splat %true_3 : tensor<2x5x8xi1>
        %285 = index.sub %c0, %145
        %286 = memref.atomic_rmw maxu %c-15893_i16, %alloc[%c1, %c13, %c4] : (i16, memref<2x16x8xi16>) -> i16
        %287 = arith.shrui %c1059108793_i64, %c1422306378_i64 : i64
        %288 = affine.apply affine_map<(d0) -> ((d0 - 1) * 16 - 4)>(%c13)
        %289 = arith.maxui %true_25, %true_3 : i1
        %290 = bufferization.clone %84 : memref<8xf32> to memref<8xf32>
        %291 = affine.load %alloc_16[%c4, %c11] : memref<5x5xf16>
        %292 = index.floordivs %114, %52
        %293 = arith.floordivsi %true_3, %extracted : i1
        %294 = arith.shrui %true_25, %true_2 : i1
        %295 = arith.mulf %cst_5, %93 : f16
        %296 = math.absf %291 : f16
        %297 = math.log1p %cst : f32
        %298 = affine.load %alloc_11[%c6, %c1, %c15] : memref<2x16x8xi16>
        %299 = math.atan %13 : tensor<2x5x8xf16>
        %300 = arith.ori %true_25, %true_4 : i1
        %301 = arith.remsi %extracted, %extracted : i1
        memref.tensor_store %splat_52, %alloc_22 : memref<2x5x8xi1>
        %alloc_53 = memref.alloc() : memref<2x16x8xi1>
        %302 = vector.broadcast %c2016339117_i32 : i32 to vector<5x5xi32>
        %303 = vector.gather %alloc_53[%68, %rank_45, %c2] [%302], %140, %140 : memref<2x16x8xi1>, vector<5x5xi32>, vector<5x5xi1>, vector<5x5xi1> into vector<5x5xi1>
        %304 = arith.maxsi %true_6, %true_6 : i1
        %305 = vector.broadcast %c-15893_i16 : i16 to vector<i16>
        %306 = vector.transfer_write %305, %10[%266, %82, %c5] : vector<i16>, tensor<2x5x8xi16>
        %307 = vector.extract %26[0] : vector<1xf16>
        %308 = index.sub %c6, %c1
        %309 = arith.maxf %291, %291 : f16
        %310 = vector.insert %c-15893_i16, %263 [0] : i16 into vector<5xi16>
        %311 = math.fma %cst_5, %291, %93 : f16
        %312 = arith.andi %true, %extracted : i1
        %313 = vector.create_mask %32, %c9, %42 : vector<2x5x8xi1>
        %314 = arith.maxui %true_4, %true_25 : i1
        %splat_54 = tensor.splat %c2016339117_i32 : tensor<2x5x8xi32>
        %315 = arith.andi %c903769282_i64, %c1422306378_i64 : i64
      }
      %277 = arith.remf %cst_1, %93 : f16
      %278 = index.add %102, %c10
      %279 = arith.shli %c-15893_i16, %c-15893_i16 : i16
      %280 = scf.while (%arg2 = %cst_5) : (f16) -> f16 {
        %285 = math.absi %6 : tensor<5x5xi64>
        %286 = arith.andi %c1422306378_i64, %c1059108793_i64 : i64
        %287 = vector.matrix_multiply %26, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<1xf16>, vector<2xf16>) -> vector<2xf16>
        %288 = arith.subi %extracted, %true_6 : i1
        memref.tensor_store %10, %alloc_10 : memref<2x5x8xi16>
        memref.tensor_store %4, %alloc_10 : memref<2x5x8xi16>
        %289 = math.log10 %arg2 : f16
        %290 = arith.ceildivsi %c2016339117_i32, %c2016339117_i32 : i32
        scf.condition(%true_6) %cst_1 : f16
      } do {
      ^bb0(%arg2: f16):
        %285 = math.cos %arg2 : f16
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %286 = vector.transfer_read %10[%31, %c13, %31], %c0_i16 : tensor<2x5x8xi16>, vector<i16>
        %287 = vector.extract_strided_slice %270 {offsets = [0], sizes = [2], strides = [1]} : vector<5x5xi1> to vector<2x5xi1>
        %288 = index.sub %c9, %c7
        %alloc_52 = memref.alloc() : memref<2x5x8xi32>
        memref.tensor_store %0, %alloc_52 : memref<2x5x8xi32>
        %289 = vector.broadcast %134 : index to vector<16xindex>
        %290 = vector.broadcast %true_2 : i1 to vector<16xi1>
        %291 = vector.broadcast %cst_7 : f32 to vector<16xf32>
        vector.scatter %84[%c3] [%289], %290, %291 : memref<8xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
        %292 = math.exp %cst_1 : f16
        %293 = math.copysign %collapsed, %collapsed : tensor<25xf32>
        %294 = math.exp %5 : tensor<5x5xf32>
        %extracted_53 = tensor.extract %10[%c1, %c0, %c1] : tensor<2x5x8xi16>
        %295 = arith.negf %cst_5 : f16
        %296 = math.log2 %cst_1 : f16
        %297 = arith.divui %true, %true_2 : i1
        vector.print %140 : vector<5x5xi1>
        %inserted_54 = tensor.insert %c903769282_i64 into %6[%c1, %c4] : tensor<5x5xi64>
        %298 = arith.minf %cst, %cst_7 : f32
        scf.yield %cst_5 : f16
      }
      memref.alloca_scope  {
        %285 = arith.maxf %cst_0, %116 : f32
        %286 = math.atan %3 : tensor<5x5xf32>
        %287 = arith.maxf %cst_7, %cst_0 : f32
        %288 = arith.remui %true_3, %extracted : i1
        %289 = vector.broadcast %c33059462_i32 : i32 to vector<2xi32>
        %290 = vector.broadcast %true_6 : i1 to vector<2xi1>
        %291 = vector.maskedload %alloc_19[%c1, %c3], %290, %289 : memref<5x5xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %292 = index.casts %c2016339117_i32 : i32 to index
        %293 = arith.muli %true_3, %true : i1
        %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %20, %81, %cst_5 : vector<2xf16>, vector<2xf16> into f16
        %295 = arith.shli %c2016339117_i32, %c2016339117_i32 : i32
        %296 = math.fma %3, %3, %5 : tensor<5x5xf32>
        %297 = vector.broadcast %cst_0 : f32 to vector<8xf32>
        %298 = vector.fma %297, %297, %297 : vector<8xf32>
        %299 = arith.subi %true_2, %true_25 : i1
        %300 = bufferization.to_memref %splat_44 : memref<2x16x8xi1>
        %collapsed_52 = tensor.collapse_shape %splat [[0, 1]] : tensor<5x5xi1> into tensor<25xi1>
        %301 = arith.maxf %116, %116 : f32
        %rank_53 = tensor.rank %11 : tensor<2x16x8xi32>
        %302 = index.add %31, %102
        %303 = vector.matrix_multiply %26, %26 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        bufferization.dealloc_tensor %5 : tensor<5x5xf32>
        %304 = math.round %cst_0 : f32
        %305 = vector.extract %290[1] : vector<2xi1>
        %c720339620_i64 = arith.constant 720339620 : i64
        %306 = arith.remf %cst_1, %93 : f16
        %307 = math.tanh %cst : f32
        %308 = tensor.empty() : tensor<5x5xi32>
        %309 = math.fpowi %5, %308 : tensor<5x5xf32>, tensor<5x5xi32>
        %alloca_54 = memref.alloca() : memref<8xi32>
        %310 = arith.shrsi %true_25, %true_4 : i1
        %311 = vector.load %alloc_21[%c0] : memref<8xi1>, vector<2x5x8xi1>
        %312 = math.tanh %cst_7 : f32
        %313 = bufferization.to_memref %3 : memref<5x5xf32>
        %314 = vector.broadcast %true : i1 to vector<8xi1>
        %collapsed_55 = tensor.collapse_shape %splat_44 [[0, 1], [2]] : tensor<2x16x8xi1> into tensor<32x8xi1>
      }
      %281 = vector.extract %263[1] : vector<5xi16>
      %282 = index.maxu %31, %c15
      %283 = arith.divsi %true_3, %true_25 : i1
      %splat_51 = tensor.splat %true_4 : tensor<2x5x8xi1>
      %284 = vector.extract_strided_slice %263 {offsets = [0], sizes = [4], strides = [1]} : vector<5xi16> to vector<4xi16>
    }
    %155 = tensor.empty() : tensor<5x5xi64>
    %156 = linalg.matmul ins(%1, %1 : tensor<5x5xi64>, tensor<5x5xi64>) outs(%155 : tensor<5x5xi64>) -> tensor<5x5xi64>
    %157 = bufferization.clone %alloc_20 : memref<8xi1> to memref<8xi1>
    %158 = vector.load %alloc_11[%c0, %c13, %c5] : memref<2x16x8xi16>, vector<2x16x8xi16>
    %159 = arith.minui %true_25, %true_2 : i1
    %160 = index.sub %c4, %c0
    %161 = arith.minsi %c2016339117_i32, %c2016339117_i32 : i32
    %collapsed_30 = tensor.collapse_shape %5 [[0, 1]] : tensor<5x5xf32> into tensor<25xf32>
    %alloca = memref.alloca() : memref<2x5x8xi16>
    %162 = vector.broadcast %c-15893_i16 : i16 to vector<16x16xi16>
    %163 = vector.transfer_write %162, %27[%c7, %82, %c15] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x16xi16>, tensor<2x5x8xi16>
    %164 = memref.atomic_rmw mins %c-15893_i16, %alloc_10[%c0, %c0, %c2] : (i16, memref<2x5x8xi16>) -> i16
    %165 = arith.maxui %true_3, %extracted : i1
    %rank = tensor.rank %10 : tensor<2x5x8xi16>
    %166 = tensor.empty(%145) : tensor<?xf32>
    %167 = math.exp %116 : f32
    %168 = index.sub %82, %c10
    %169 = vector.broadcast %c14 : index to vector<2xindex>
    %170 = vector.broadcast %true_4 : i1 to vector<2xi1>
    %171 = vector.broadcast %c33059462_i32 : i32 to vector<2xi32>
    vector.scatter %alloc_19[%c3, %c1] [%169], %170, %171 : memref<5x5xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
    %172 = math.exp %cst_0 : f32
    %173 = math.tanh %cst_0 : f32
    %174 = math.round %50 : tensor<5x5xf32>
    %175 = scf.execute_region -> index {
      %261 = bufferization.to_tensor %alloc_13 : memref<8xi1>
      %262 = vector.extract_strided_slice %162 {offsets = [1], sizes = [6], strides = [1]} : vector<16x16xi16> to vector<6x16xi16>
      %263 = math.ipowi %2, %2 : tensor<2x5x8xi1>
      %264 = math.log1p %50 : tensor<5x5xf32>
      %265 = tensor.empty() : tensor<5x5xi32>
      %266 = math.fpowi %5, %265 : tensor<5x5xf32>, tensor<5x5xi32>
      %267 = arith.maxsi %c1422306378_i64, %c903769282_i64 : i64
      %268 = math.log1p %cst : f32
      %269 = vector.bitcast %75 : vector<8xi1> to vector<8xi1>
      %270 = math.exp %5 : tensor<5x5xf32>
      vector.print %20 : vector<2xf16>
      %271 = math.exp %93 : f16
      %272 = arith.minui %true, %true : i1
      %273 = vector.broadcast %cst_0 : f32 to vector<2x5x8xf32>
      %274 = vector.fma %273, %273, %273 : vector<2x5x8xf32>
      %275 = arith.minf %cst_0, %116 : f32
      %276 = index.maxu %52, %c4
      %277 = vector.broadcast %cst : f32 to vector<f32>
      %278 = vector.transfer_write %277, %collapsed[%32] : vector<f32>, tensor<25xf32>
      scf.yield %c13 : index
    }
    %176 = arith.minsi %c1059108793_i64, %c1059108793_i64 : i64
    %inserted_31 = tensor.insert %c1422306378_i64 into %6[%c4, %c3] : tensor<5x5xi64>
    affine.store %c-15893_i16, %alloc_11[%c10, %c15, %c5] : memref<2x16x8xi16>
    %177 = affine.load %alloc_11[%c2, %c0, %c1] : memref<2x16x8xi16>
    %splat_32 = tensor.splat %137 : tensor<8xi1>
    %178 = index.maxu %82, %c12
    %179 = math.expm1 %116 : f32
    %180 = arith.remf %cst_1, %cst_1 : f16
    %181 = vector.shuffle %140, %140 [0, 1, 4, 7, 8, 9] : vector<5x5xi1>, vector<5x5xi1>
    %182 = scf.execute_region -> index {
      %261 = tensor.empty() : tensor<5x5xi32>
      %262 = math.fpowi %3, %261 : tensor<5x5xf32>, tensor<5x5xi32>
      %263 = math.absi %11 : tensor<2x16x8xi32>
      %264 = arith.xori %true_25, %true_4 : i1
      %265 = tensor.empty() : tensor<25xi32>
      %266 = math.fpowi %collapsed_30, %265 : tensor<25xf32>, tensor<25xi32>
      %267 = arith.subi %c1059108793_i64, %c1059108793_i64 : i64
      %268 = affine.if affine_set<(d0) : (d0 * 2 >= 0)>(%c10) -> i16 {
        %277 = index.sub %168, %145
        bufferization.dealloc_tensor %16 : tensor<5x5xi64>
        %278 = arith.shli %true_3, %true_4 : i1
        %279 = math.round %cst : f32
        %280 = arith.addi %true_6, %true : i1
        %281 = memref.atomic_rmw minu %c33059462_i32, %alloc_19[%c2, %c3] : (i32, memref<5x5xi32>) -> i32
        %282 = arith.shrui %true_6, %true_6 : i1
        %283 = arith.xori %true_3, %true_2 : i1
        affine.yield %c-15893_i16 : i16
      } else {
        %rank_45 = tensor.rank %12 : tensor<8xi64>
        %277 = math.log10 %5 : tensor<5x5xf32>
        %278 = arith.muli %true_25, %true_25 : i1
        %splat_46 = tensor.splat %true : tensor<2x5x8xi1>
        %279 = math.tanh %cst_0 : f32
        %280 = vector.broadcast %c-15893_i16 : i16 to vector<16xi16>
        %281 = vector.multi_reduction <and>, %162, %280 [1] : vector<16x16xi16> to vector<16xi16>
        %282 = arith.minsi %extracted, %extracted : i1
        %283 = vector.broadcast %c-15893_i16 : i16 to vector<2x8xi16>
        %dest_47, %accumulated_value_48 = vector.scan <and>, %158, %283 {inclusive = true, reduction_dim = 1 : i64} : vector<2x16x8xi16>, vector<2x8xi16>
        affine.yield %c-15893_i16 : i16
      }
      %269 = arith.remui %137, %true_3 : i1
      %270 = index.add %c3, %175
      %271 = memref.atomic_rmw maxf %116, %alloc_15[%c2, %c4] : (f32, memref<5x5xf32>) -> f32
      %272 = arith.shrui %true_4, %137 : i1
      %273 = tensor.empty() : tensor<5x5xi64>
      %mapped_44 = linalg.map ins(%6 : tensor<5x5xi64>) outs(%273 : tensor<5x5xi64>)
        (%in: i64) {
          %inserted_45 = tensor.insert %extracted into %18[] : tensor<i1>
          %277 = vector.multi_reduction <maxui>, %75, %75 [] : vector<8xi1> to vector<8xi1>
          %278 = arith.divsi %true_25, %true_3 : i1
          %279 = math.log1p %106 : tensor<8xf16>
          %280 = vector.broadcast %c-15893_i16 : i16 to vector<5xi16>
          %281 = vector.broadcast %extracted : i1 to vector<5xi1>
          %282 = vector.maskedload %alloc_10[%c1, %c3, %c3], %281, %280 : memref<2x5x8xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
          %283 = affine.load %alloc_10[%c10, %c9, %c5] : memref<2x5x8xi16>
          %284 = math.exp %5 : tensor<5x5xf32>
          %285 = arith.maxf %cst_7, %cst_7 : f32
          %286 = math.absf %cst_1 : f16
          %splat_46 = tensor.splat %137 : tensor<2x5x8xi1>
          %287 = arith.muli %c1059108793_i64, %c903769282_i64 : i64
          %288 = memref.atomic_rmw muli %177, %alloc_11[%c1, %c9, %c1] : (i16, memref<2x16x8xi16>) -> i16
          %289 = arith.subi %true_25, %true_2 : i1
          %290 = math.expm1 %cst_0 : f32
          %291 = bufferization.clone %alloc_21 : memref<8xi1> to memref<8xi1>
          %292 = arith.minui %true_2, %true_2 : i1
          %293 = index.sub %175, %68
          %294 = arith.remf %cst_5, %93 : f16
          %295 = math.log1p %3 : tensor<5x5xf32>
          %296 = vector.create_mask %c6, %168 : vector<5x5xi1>
          %297 = arith.xori %c2016339117_i32, %c33059462_i32 : i32
          %298 = arith.remui %c1059108793_i64, %c903769282_i64 : i64
          %299 = vector.shuffle %36, %36 [0, 1] : vector<i16>, vector<i16>
          %300 = arith.ceildivsi %true_25, %true_3 : i1
          %301 = affine.load %alloc[%c0, %c4, %c5] : memref<2x16x8xi16>
          %302 = index.sizeof
          %303 = math.copysign %collapsed_30, %collapsed : tensor<25xf32>
          %c1_i64 = arith.constant 1 : i64
          %c0_i64 = arith.constant 0 : i64
          %304 = vector.transfer_read %alloc_14[%c11, %135, %c9], %c0_i64 : memref<2x16x8xi64>, vector<i64>
          %305 = arith.shli %c903769282_i64, %c1422306378_i64 : i64
          %306 = vector.broadcast %cst_1 : f16 to vector<16xf16>
          %307 = vector.broadcast %true_25 : i1 to vector<16xi1>
          %308 = vector.maskedload %alloc_23[%c1, %c2], %307, %306 : memref<5x5xf16>, vector<16xi1>, vector<16xf16> into vector<16xf16>
          bufferization.dealloc_tensor %12 : tensor<8xi64>
          %309 = math.expm1 %cst : f32
          %c0_i64_47 = arith.constant 0 : i64
          linalg.yield %c0_i64_47 : i64
        }
      %274 = arith.shrui %c-15893_i16, %177 : i16
      %275 = affine.max affine_map<(d0) -> ((d0 * 17 - 1) * 32, (d0 * 17 - 1) * 32, d0 * 17 - 1)>(%c0)
      %276 = arith.shli %true_2, %true_2 : i1
      memref.alloca_scope  {
        %277 = arith.remf %93, %cst_1 : f16
        %alloc_45 = memref.alloc() : memref<5x5xi64>
        %278 = vector.broadcast %c903769282_i64 : i64 to vector<2x16x8xi64>
        %279 = vector.broadcast %c33059462_i32 : i32 to vector<2x16x8xi32>
        %280 = vector.gather %alloc_45[%c3, %c0] [%279], %150, %278 : memref<5x5xi64>, vector<2x16x8xi32>, vector<2x16x8xi1>, vector<2x16x8xi64> into vector<2x16x8xi64>
        %281 = vector.transpose %26, [0] : vector<1xf16> to vector<1xf16>
        %282 = math.round %106 : tensor<8xf16>
        vector.print %57 : vector<i1>
        %inserted_46 = tensor.insert %true_25 into %2[%c0, %c3, %c5] : tensor<2x5x8xi1>
        %283 = math.ctlz %12 : tensor<8xi64>
        %284 = arith.remf %cst_5, %cst_1 : f16
        %285 = vector.splat %93 : vector<8xf16>
        %286 = arith.maxui %177, %c-15893_i16 : i16
        %287 = vector.splat %92 : vector<8xindex>
        %288 = index.sub %c12, %c11
        %289 = math.round %93 : f16
        %290 = vector.extract_strided_slice %26 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %291 = arith.remsi %true_3, %true : i1
        %292 = vector.broadcast %true_3 : i1 to vector<2x5xi1>
        %dest_47, %accumulated_value_48 = vector.scan <and>, %125, %292 {inclusive = true, reduction_dim = 2 : i64} : vector<2x5x8xi1>, vector<2x5xi1>
        %293 = arith.cmpf uge, %116, %116 : f32
        %294 = index.ceildivu %48, %288
        %295 = vector.broadcast %116 : f32 to vector<5x5xf32>
        %296 = vector.fma %295, %295, %295 : vector<5x5xf32>
        %297 = index.sizeof
        %298 = math.fma %106, %106, %106 : tensor<8xf16>
        %from_elements_49 = tensor.from_elements %cst_5, %cst_1, %93, %cst_5, %cst_1, %93, %cst_5, %cst_5 : tensor<8xf16>
        %299 = arith.ceildivsi %true_3, %137 : i1
        %rank_50 = tensor.rank %17 : tensor<5x5xi64>
        %collapsed_51 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<2x5x8xi1> into tensor<10x8xi1>
        %300 = vector.create_mask %175, %c6, %102 : vector<2x5x8xi1>
        %301 = vector.shuffle %140, %140 [1, 2, 5, 6, 8, 9] : vector<5x5xi1>, vector<5x5xi1>
        %302 = memref.atomic_rmw ori %177, %alloc_17[%c4] : (i16, memref<8xi16>) -> i16
        %303 = arith.addf %cst_5, %cst_1 : f16
        memref.assume_alignment %alloc_19, 1 : memref<5x5xi32>
        %304 = index.sizeof
        %305 = arith.ori %c2016339117_i32, %c2016339117_i32 : i32
      }
      affine.for %arg2 = 0 to 120 {
      }
      scf.yield %c7 : index
    }
    %183 = index.add %145, %68
    %184 = vector.broadcast %true_2 : i1 to vector<i1>
    vector.transfer_write %184, %alloc_22[%c10, %c10, %160] : vector<i1>, memref<2x5x8xi1>
    %185 = math.tanh %cst_0 : f32
    %186 = arith.cmpf olt, %cst_0, %cst_0 : f32
    %187 = arith.minf %cst, %cst_0 : f32
    %188 = arith.andi %true_3, %137 : i1
    %189 = tensor.empty(%114) : tensor<?xi64>
    %190 = vector.extract %162[12] : vector<16x16xi16>
    %191 = affine.if affine_set<(d0, d1, d2) : (d1 * 16 - d0 >= 0, d2 >= 0, d2 == 0, d1 * 16 == 0)>(%c8, %c7, %c1) -> memref<5x5xi16> {
      %261 = tensor.empty() : tensor<5x5xi32>
      %262 = math.fpowi %50, %261 : tensor<5x5xf32>, tensor<5x5xi32>
      %263 = arith.remui %c33059462_i32, %c33059462_i32 : i32
      %264 = vector.bitcast %20 : vector<2xf16> to vector<2xf16>
      %265 = index.castu %c6 : index to i32
      %266 = arith.cmpf olt, %cst_7, %cst_7 : f32
      %cast = tensor.cast %27 : tensor<2x5x8xi16> to tensor<?x?x?xi16>
      %267 = vector.extract_strided_slice %26 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
      %268 = arith.muli %c1422306378_i64, %c903769282_i64 : i64
      %alloc_44 = memref.alloc() : memref<5x5xi16>
      affine.yield %alloc_44 : memref<5x5xi16>
    } else {
      %261 = arith.remui %true_6, %true_2 : i1
      %true_44 = index.bool.constant true
      memref.store %c-15893_i16, %alloc_8[%c1, %c4, %c6] : memref<2x5x8xi16>
      %262 = math.tanh %collapsed_30 : tensor<25xf32>
      %263 = math.copysign %5, %3 : tensor<5x5xf32>
      %264 = arith.maxsi %c1059108793_i64, %c1059108793_i64 : i64
      %265 = arith.minsi %c1422306378_i64, %c903769282_i64 : i64
      %266 = arith.maxsi %c1422306378_i64, %c1059108793_i64 : i64
      %alloc_45 = memref.alloc() : memref<5x5xi16>
      affine.yield %alloc_45 : memref<5x5xi16>
    }
    %collapsed_33 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<2x16x8xi32> into tensor<32x8xi32>
    %192 = vector.broadcast %178 : index to vector<8xindex>
    %193 = vector.broadcast %c-15893_i16 : i16 to vector<8xi16>
    vector.scatter %alloc[%c1, %c15, %c7] [%192], %75, %193 : memref<2x16x8xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
    %194 = math.log2 %3 : tensor<5x5xf32>
    vector.print %158 : vector<2x16x8xi16>
    %195 = math.sqrt %cst_5 : f16
    scf.index_switch %c9 
    case 1 {
      %261 = index.sub %85, %178
      %262 = arith.xori %137, %true_4 : i1
      %263 = arith.xori %true_25, %true : i1
      %264 = arith.remui %c1422306378_i64, %c903769282_i64 : i64
      %265 = arith.maxui %c1422306378_i64, %c903769282_i64 : i64
      %266 = affine.load %alloc_15[%c15, %c11] : memref<5x5xf32>
      %267 = arith.mulf %cst_7, %cst_0 : f32
      bufferization.dealloc_tensor %106 : tensor<8xf16>
      %268 = vector.broadcast %true_3 : i1 to vector<16x8xi1>
      %dest_44, %accumulated_value_45 = vector.scan <maxui>, %150, %268 {inclusive = true, reduction_dim = 0 : i64} : vector<2x16x8xi1>, vector<16x8xi1>
      %269 = arith.maxsi %true_6, %137 : i1
      %270 = arith.remf %266, %cst_0 : f32
      %271 = vector.splat %92 : vector<2x16x8xindex>
      %272 = math.roundeven %93 : f16
      %273 = vector.broadcast %cst_7 : f32 to vector<8xf32>
      %274 = vector.fma %273, %273, %273 : vector<8xf32>
      %alloca_46 = memref.alloca() : memref<2x5x8xi64>
      %275 = tensor.empty() : tensor<5x2xi64>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%275 : tensor<5x2xi64>) outs(%8 : tensor<2x5x8xi64>) {
      ^bb0(%in: i64, %out: i64):
        affine.store %cst_5, %alloc_23[%c8, %c7] : memref<5x5xf16>
        %277 = math.round %cst_5 : f16
        %278 = arith.cmpf oeq, %cst_0, %266 : f32
        %279 = arith.maxf %cst, %cst : f32
        %280 = math.copysign %50, %3 : tensor<5x5xf32>
        %281 = arith.ceildivsi %true_25, %true_4 : i1
        %282 = bufferization.to_memref %11 : memref<2x16x8xi32>
        %283 = math.round %5 : tensor<5x5xf32>
        %284 = vector.broadcast %true_2 : i1 to vector<i1>
        %285 = vector.transfer_write %284, %splat[%99, %c6] : vector<i1>, tensor<5x5xi1>
        %286 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %26, %26, %93 : vector<1xf16>, vector<1xf16> into f16
        %287 = math.ipowi %15, %14 : tensor<8xi1>
        %288 = arith.remf %cst, %cst_7 : f32
        %289 = index.sizeof
        %290 = vector.shuffle %184, %284 [0, 1] : vector<i1>, vector<i1>
        vector.print %36 : vector<i16>
        %291 = vector.splat %true : vector<2x5x8xi1>
        %292 = bufferization.clone %alloc_24 : memref<8xi1> to memref<8xi1>
        %293 = math.fpowi %cst_7, %c2016339117_i32 : f32, i32
        %294 = arith.ori %true_3, %extracted : i1
        %295 = arith.shli %true_25, %true_3 : i1
        %296 = tensor.empty() : tensor<5x5xf32>
        %297 = linalg.matmul ins(%50, %3 : tensor<5x5xf32>, tensor<5x5xf32>) outs(%296 : tensor<5x5xf32>) -> tensor<5x5xf32>
        %298 = arith.divsi %true_25, %true_25 : i1
        %299 = index.ceildivs %82, %74
        %300 = math.log1p %13 : tensor<2x5x8xf16>
        %301 = arith.minf %cst_5, %93 : f16
        %302 = arith.shli %true_4, %true_25 : i1
        %303 = vector.splat %183 : vector<5x5xindex>
        %304 = index.castu %85 : index to i32
        %305 = arith.subi %c-15893_i16, %c-15893_i16 : i16
        %306 = index.maxu %c10, %92
        %c0_i32 = arith.constant 0 : i32
        %307 = vector.transfer_read %7[%289], %c0_i32 : tensor<8xi32>, vector<i32>
        %308 = index.add %74, %114
        linalg.yield %out : i64
      } -> tensor<2x5x8xi64>
      scf.yield
    }
    case 2 {
      %261 = vector.bitcast %140 : vector<5x5xi1> to vector<5x5xi1>
      %262 = arith.remf %cst_0, %cst_7 : f32
      bufferization.dealloc_tensor %1 : tensor<5x5xi64>
      %263 = memref.realloc %alloc_21 : memref<8xi1> to memref<2xi1>
      %264 = vector.broadcast %cst_7 : f32 to vector<2x16x8xf32>
      %265 = vector.fma %264, %264, %264 : vector<2x16x8xf32>
      %266 = arith.addf %cst_5, %cst_5 : f16
      %267 = math.absi %0 : tensor<2x5x8xi32>
      %c27497_i16 = arith.constant 27497 : i16
      %268 = vector.broadcast %93 : f16 to vector<2x16x8xf16>
      %269 = arith.minui %c2016339117_i32, %c2016339117_i32 : i32
      %270 = arith.minf %93, %cst_5 : f16
      vector.print %264 : vector<2x16x8xf32>
      %271 = math.log10 %3 : tensor<5x5xf32>
      %272 = vector.extract_strided_slice %265 {offsets = [0], sizes = [2], strides = [1]} : vector<2x16x8xf32> to vector<2x16x8xf32>
      %273 = math.copysign %93, %cst_1 : f16
      %274 = scf.if %extracted -> (memref<2x16x8xf32>) {
        %275 = vector.broadcast %cst_0 : f32 to vector<5x5xf32>
        %276 = arith.remf %cst_5, %cst_1 : f16
        %277 = vector.load %84[%c4] : memref<8xf32>, vector<5x5xf32>
        %278 = bufferization.to_memref %2 : memref<2x5x8xi1>
        %279 = math.exp %93 : f16
        %280 = arith.remui %137, %true_2 : i1
        %281 = arith.addf %cst_5, %93 : f16
        %282 = math.exp %5 : tensor<5x5xf32>
        %alloc_44 = memref.alloc() : memref<2x16x8xf32>
        scf.yield %alloc_44 : memref<2x16x8xf32>
      } else {
        %275 = arith.floordivsi %true_6, %true : i1
        %276 = math.log10 %collapsed_30 : tensor<25xf32>
        %277 = arith.negf %cst : f32
        %278 = index.castu %42 : index to i32
        %from_elements_44 = tensor.from_elements %c1422306378_i64, %c1059108793_i64, %c903769282_i64, %c903769282_i64, %c903769282_i64, %c903769282_i64, %c1422306378_i64, %c1422306378_i64, %c1059108793_i64, %c903769282_i64, %c903769282_i64, %c1422306378_i64, %c903769282_i64, %c903769282_i64, %c1059108793_i64, %c903769282_i64, %c1059108793_i64, %c1422306378_i64, %c1059108793_i64, %c903769282_i64, %c903769282_i64, %c1059108793_i64, %c903769282_i64, %c1059108793_i64, %c1059108793_i64 : tensor<5x5xi64>
        %279 = arith.andi %c1059108793_i64, %c903769282_i64 : i64
        %280 = arith.maxf %cst_0, %116 : f32
        %281 = arith.addi %c-15893_i16, %177 : i16
        %alloc_45 = memref.alloc() : memref<2x16x8xf32>
        scf.yield %alloc_45 : memref<2x16x8xf32>
      }
      scf.yield
    }
    case 3 {
      %261 = scf.while (%arg2 = %190) : (vector<16xi16>) -> vector<16xi16> {
        %278 = arith.shli %c903769282_i64, %c1422306378_i64 : i64
        %279 = math.ceil %50 : tensor<5x5xf32>
        %280 = math.ctlz %4 : tensor<2x5x8xi16>
        %c1189820033_i64 = arith.constant 1189820033 : i64
        %281 = vector.broadcast %cst_0 : f32 to vector<2x16x8xf32>
        %282 = vector.fma %281, %281, %281 : vector<2x16x8xf32>
        %283 = math.copysign %13, %13 : tensor<2x5x8xf16>
        %284 = vector.splat %32 : vector<8xindex>
        %285 = vector.splat %183 : vector<8xindex>
        scf.condition(%true_25) %190 : vector<16xi16>
      } do {
      ^bb0(%arg2: vector<16xi16>):
        %278 = arith.divsi %c903769282_i64, %c1059108793_i64 : i64
        %279 = math.sqrt %cst : f32
        %280 = index.sub %c6, %rank
        %281 = vector.extract_strided_slice %20 {offsets = [0], sizes = [2], strides = [1]} : vector<2xf16> to vector<2xf16>
        %cst_46 = arith.constant 1.91770138E+9 : f32
        %282 = math.expm1 %3 : tensor<5x5xf32>
        %283 = math.atan %cst_0 : f32
        %284 = vector.matrix_multiply %149, %281 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<1xf16>, vector<2xf16>) -> vector<2xf16>
        %285 = arith.maxsi %c-15893_i16, %177 : i16
        %alloca_47 = memref.alloca() : memref<5x5xi64>
        %286 = arith.shrui %c-15893_i16, %177 : i16
        affine.store %93, %alloc_16[%c9, %c4] : memref<5x5xf16>
        %287 = math.fma %116, %cst_7, %cst_0 : f32
        %288 = arith.ceildivsi %c1422306378_i64, %c903769282_i64 : i64
        %289 = arith.floordivsi %177, %177 : i16
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %20, %81, %93 : vector<2xf16>, vector<2xf16> into f16
        scf.yield %190 : vector<16xi16>
      }
      %262 = tensor.empty() : tensor<5x5xi1>
      %mapped_44 = linalg.map ins(%splat, %from_elements_27 : tensor<5x5xi1>, tensor<5x5xi1>) outs(%262 : tensor<5x5xi1>)
        (%in: i1, %in_46: i1) {
          %278 = vector.create_mask %68, %74 : vector<5x5xi1>
          %279 = vector.matrix_multiply %20, %81 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
          %280 = index.ceildivs %48, %99
          %281 = arith.ceildivsi %c1422306378_i64, %c1059108793_i64 : i64
          %282 = bufferization.clone %alloc : memref<2x16x8xi16> to memref<2x16x8xi16>
          %283 = vector.extract %190[1] : vector<16xi16>
          %284 = bufferization.to_tensor %alloc_10 : memref<2x5x8xi16>
          %285 = arith.cmpf false, %cst_5, %cst_5 : f16
          %286 = bufferization.to_tensor %alloc_16 : memref<5x5xf16>
          %287 = arith.remui %c903769282_i64, %c1059108793_i64 : i64
          %288 = memref.load %alloc_17[%c3] : memref<8xi16>
          %289 = math.tanh %50 : tensor<5x5xf32>
          %290 = math.sqrt %116 : f32
          %291 = index.castu %true_6 : i1 to index
          %292 = math.log1p %50 : tensor<5x5xf32>
          %293 = arith.maxsi %true, %true_6 : i1
          %294 = tensor.empty(%c4) : tensor<?x5x8xf32>
          %295 = index.maxu %82, %182
          %296 = arith.remf %cst_1, %cst_1 : f16
          %297 = tensor.empty() : tensor<25xi32>
          %298 = math.fpowi %collapsed, %297 : tensor<25xf32>, tensor<25xi32>
          %alloca_47 = memref.alloca() : memref<5x5xi64>
          %299 = tensor.empty(%c13) : tensor<5x?xi1>
          %300 = math.round %3 : tensor<5x5xf32>
          %301 = arith.remf %cst_1, %93 : f16
          %302 = math.atan %93 : f16
          %303 = vector.broadcast %177 : i16 to vector<i16>
          vector.transfer_write %303, %282[%32, %145, %c15] : vector<i16>, memref<2x16x8xi16>
          %304 = vector.extract_strided_slice %279 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
          %305 = math.copysign %13, %13 : tensor<2x5x8xf16>
          %306 = arith.minui %true_3, %true_4 : i1
          %307 = vector.broadcast %93 : f16 to vector<5x5xf16>
          %308 = math.round %cst_0 : f32
          %splat_48 = tensor.splat %true_4 : tensor<2x5x8xi1>
          %true_49 = arith.constant true
          linalg.yield %true_49 : i1
        }
      %263 = math.log1p %cst_7 : f32
      %264 = math.atan %collapsed : tensor<25xf32>
      %265 = tensor.empty() : tensor<8xi1>
      %mapped_45 = linalg.map ins(%15 : tensor<8xi1>) outs(%265 : tensor<8xi1>)
        (%in: i1) {
          %278 = vector.shuffle %36, %36 [0, 1] : vector<i16>, vector<i16>
          %279 = arith.divsi %true, %true_3 : i1
          %280 = vector.bitcast %81 : vector<2xf16> to vector<2xf16>
          %281 = arith.shrsi %extracted, %in : i1
          %c-16438_i16 = arith.constant -16438 : i16
          %282 = arith.mulf %116, %cst : f32
          %283 = bufferization.to_tensor %alloc_21 : memref<8xi1>
          %c1_i64 = arith.constant 1 : i64
          %284 = vector.transfer_read %6[%99, %c12], %c1_i64 : tensor<5x5xi64>, vector<i64>
          %285 = arith.mulf %93, %cst_5 : f16
          %286 = vector.shuffle %81, %280 [0, 2] : vector<2xf16>, vector<2xf16>
          %287 = math.round %cst_7 : f32
          %288 = vector.broadcast %c2016339117_i32 : i32 to vector<2x5x8xi32>
          %289 = arith.maxf %116, %cst : f32
          %290 = vector.extract_strided_slice %162 {offsets = [7], sizes = [5], strides = [1]} : vector<16x16xi16> to vector<5x16xi16>
          %291 = vector.broadcast %c1059108793_i64 : i64 to vector<5xi64>
          %292 = vector.broadcast %true : i1 to vector<5xi1>
          %293 = vector.maskedload %alloc_14[%c0, %c15, %c1], %292, %291 : memref<2x16x8xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
          %294 = index.maxu %c5, %168
          %295 = vector.maskedload %alloc_9[%c2, %c4], %75, %75 : memref<5x5xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
          %296 = vector.shuffle %190, %190 [4, 5, 7, 8, 9, 10, 11, 14, 16, 18, 19, 21, 22, 23, 24, 26, 28, 31] : vector<16xi16>, vector<16xi16>
          %297 = index.sizeof
          %298 = affine.load %alloc_15[%c4, %c3] : memref<5x5xf32>
          %c502036800_i32 = arith.constant 502036800 : i32
          %299 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %291, %291, %c1059108793_i64 : vector<5xi64>, vector<5xi64> into i64
          %300 = vector.matrix_multiply %81, %26 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<1xf16>) -> vector<2xf16>
          %301 = math.fpowi %cst_0, %c2016339117_i32 : f32, i32
          %302 = math.log1p %13 : tensor<2x5x8xf16>
          %303 = affine.max affine_map<(d0, d1, d2) -> (d0 ceildiv 16 - d1, d2)>(%32, %134, %48)
          %304 = math.ceil %93 : f16
          %305 = vector.load %alloc_10[%c1, %c1, %c4] : memref<2x5x8xi16>, vector<5x5xi16>
          %306 = vector.broadcast %c1_i64 : i64 to vector<8xi64>
          %307 = vector.maskedload %alloc_14[%c0, %c13, %c2], %295, %306 : memref<2x16x8xi64>, vector<8xi1>, vector<8xi64> into vector<8xi64>
          %308 = arith.maxui %c33059462_i32, %c2016339117_i32 : i32
          bufferization.dealloc_tensor %5 : tensor<5x5xf32>
          %309 = arith.mulf %cst_7, %116 : f32
          %true_46 = arith.constant true
          linalg.yield %true_46 : i1
        }
      %266 = arith.maxsi %c1059108793_i64, %c1059108793_i64 : i64
      %267 = index.sizeof
      %268 = math.round %collapsed_30 : tensor<25xf32>
      %269 = arith.cmpf ueq, %cst_5, %cst_1 : f16
      %270 = arith.andi %c2016339117_i32, %c33059462_i32 : i32
      %271 = index.sizeof
      %272 = index.divs %c7, %134
      %273 = scf.execute_region -> i32 {
        %278 = math.atan %3 : tensor<5x5xf32>
        %279 = index.ceildivu %145, %c7
        %280 = vector.load %alloc_18[%c3, %c1] : memref<5x5xi32>, vector<5x5xi32>
        %281 = math.sqrt %3 : tensor<5x5xf32>
        %282 = math.log1p %3 : tensor<5x5xf32>
        %283 = math.expm1 %5 : tensor<5x5xf32>
        %284 = index.add %178, %102
        %285 = arith.xori %true, %true_4 : i1
        %286 = arith.maxui %true_25, %extracted : i1
        %287 = vector.bitcast %190 : vector<16xi16> to vector<16xi16>
        %288 = vector.broadcast %c-15893_i16 : i16 to vector<5xi16>
        %289 = vector.broadcast %true_3 : i1 to vector<5xi1>
        %290 = vector.maskedload %alloc_8[%c0, %c3, %c6], %289, %288 : memref<2x5x8xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        %from_elements_46 = tensor.from_elements %177, %177, %c-15893_i16, %c-15893_i16, %c-15893_i16, %177, %c-15893_i16, %177, %c-15893_i16, %c-15893_i16, %177, %c-15893_i16, %c-15893_i16, %177, %c-15893_i16, %177, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %c-15893_i16, %177, %c-15893_i16, %c-15893_i16, %c-15893_i16, %177, %177, %177, %177, %177, %177, %c-15893_i16, %c-15893_i16, %177, %177, %177, %177, %177, %c-15893_i16, %c-15893_i16, %177, %c-15893_i16, %c-15893_i16, %177, %177, %c-15893_i16, %177, %c-15893_i16, %177, %c-15893_i16, %177, %177, %c-15893_i16, %177, %177, %177, %c-15893_i16, %177, %c-15893_i16, %177, %177, %177, %c-15893_i16, %c-15893_i16, %177, %177, %177, %c-15893_i16, %c-15893_i16, %c-15893_i16, %177, %177, %c-15893_i16, %c-15893_i16, %177, %177, %177, %177, %177, %c-15893_i16 : tensor<2x5x8xi16>
        %291 = arith.remf %cst, %cst_0 : f32
        %292 = math.atan %collapsed : tensor<25xf32>
        %293 = arith.andi %c1422306378_i64, %c1422306378_i64 : i64
        %294 = bufferization.clone %alloc_24 : memref<8xi1> to memref<8xi1>
        scf.yield %c2016339117_i32 : i32
      }
      %274 = arith.maxui %c-15893_i16, %177 : i16
      %275 = vector.broadcast %true : i1 to vector<2xi1>
      %276 = vector.multi_reduction <maxsi>, %150, %275 [1, 2] : vector<2x16x8xi1> to vector<2xi1>
      %277 = math.ctlz %11 : tensor<2x16x8xi32>
      scf.yield
    }
    default {
      %261 = vector.broadcast %93 : f16 to vector<1x1xf16>
      %262 = vector.outerproduct %149, %26, %261 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
      %263 = index.floordivs %c3, %c8
      %264 = math.ceil %13 : tensor<2x5x8xf16>
      %265 = math.fpowi %93, %c2016339117_i32 : f16, i32
      %266 = affine.for %arg2 = 0 to 99 iter_args(%arg3 = %2) -> (tensor<2x5x8xi1>) {
        affine.yield %2 : tensor<2x5x8xi1>
      }
      %267 = vector.bitcast %75 : vector<8xi1> to vector<8xi1>
      %268 = vector.load %alloc_11[%c0, %c0, %c7] : memref<2x16x8xi16>, vector<2x16x8xi16>
      %269 = index.castu %c33059462_i32 : i32 to index
      %true_44 = index.bool.constant true
      memref.store %177, %alloc_10[%c0, %c0, %c1] : memref<2x5x8xi16>
      %270 = math.round %cst_0 : f32
      %splat_45 = tensor.splat %177 : tensor<8xi16>
      %271 = arith.minui %true, %true_2 : i1
      %272 = arith.maxui %true_44, %true_44 : i1
      %273 = arith.maxf %cst_7, %cst : f32
      %274 = arith.maxsi %c1059108793_i64, %c903769282_i64 : i64
    }
    %196 = vector.create_mask %c13 : vector<8xi1>
    %197 = affine.if affine_set<(d0, d1, d2) : (d2 mod 2 >= 0, d0 >= 0)>(%c3, %c15, %c12) -> i16 {
      %261 = math.expm1 %5 : tensor<5x5xf32>
      %262 = arith.minui %c2016339117_i32, %c2016339117_i32 : i32
      %263 = vector.broadcast %true : i1 to vector<2x5xi1>
      %264 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %196, %125, %263 : vector<8xi1>, vector<2x5x8xi1> into vector<2x5xi1>
      %265 = vector.extract %81[0] : vector<2xf16>
      %266 = arith.remf %116, %cst : f32
      %267 = math.expm1 %cst_1 : f16
      %268 = arith.shrsi %c1059108793_i64, %c903769282_i64 : i64
      %269 = index.castu %true_25 : i1 to index
      affine.yield %177 : i16
    } else {
      %splat_44 = tensor.splat %true_2 : tensor<2x16x8xi1>
      %inserted_45 = tensor.insert %extracted into %18[] : tensor<i1>
      %261 = index.sub %c12, %32
      vector.print %162 : vector<16x16xi16>
      %262 = arith.maxf %cst_7, %cst : f32
      %263 = arith.xori %177, %c-15893_i16 : i16
      %264 = math.absi %c2016339117_i32 : i32
      %265 = index.castu %true : i1 to index
      affine.yield %177 : i16
    }
    %198 = math.log1p %5 : tensor<5x5xf32>
    %199 = math.sqrt %116 : f32
    %200 = vector.shuffle %158, %158 [2] : vector<2x16x8xi16>, vector<2x16x8xi16>
    %rank_34 = tensor.rank %collapsed_33 : tensor<32x8xi32>
    %201 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %81, %20, %93 : vector<2xf16>, vector<2xf16> into f16
    %202 = index.sub %99, %48
    %203 = math.atan %93 : f16
    %204 = math.log %50 : tensor<5x5xf32>
    %205 = math.sqrt %cst : f32
    %206 = vector.insert %190, %162 [15] : vector<16xi16> into vector<16x16xi16>
    %false = index.bool.constant false
    %207 = index.casts %true_6 : i1 to index
    %208 = scf.while (%arg2 = %true_3) : (i1) -> i1 {
      %261 = math.fpowi %116, %c2016339117_i32 : f32, i32
      %262 = math.atan %collapsed_30 : tensor<25xf32>
      %263 = math.exp %93 : f16
      %264 = arith.floordivsi %true_25, %true_6 : i1
      %265 = math.ceil %cst_7 : f32
      %alloc_44 = memref.alloc() : memref<2x16x8xi32>
      %266 = vector.broadcast %c33059462_i32 : i32 to vector<8xi32>
      %267 = vector.gather %alloc_44[%rank_34, %175, %c1] [%266], %75, %266 : memref<2x16x8xi32>, vector<8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
      %268 = arith.divui %c2016339117_i32, %c33059462_i32 : i32
      %269 = vector.broadcast %cst_5 : f16 to vector<2x2xf16>
      %270 = vector.outerproduct %20, %20, %269 {kind = #vector.kind<mul>} : vector<2xf16>, vector<2xf16>
      scf.condition(%true_4) %true_3 : i1
    } do {
    ^bb0(%arg2: i1):
      %261 = affine.if affine_set<(d0, d1, d2) : (d1 * 16 - d0 >= 0, d2 >= 0, d2 == 0, d1 * 16 == 0)>(%c5, %c0, %c10) -> memref<2x16x8xi32> {
        %275 = math.ctlz %12 : tensor<8xi64>
        %276 = math.atan %cst_5 : f16
        %277 = index.castu %145 : index to i32
        %278 = tensor.empty() : tensor<5x5xi32>
        %279 = math.fpowi %5, %278 : tensor<5x5xf32>, tensor<5x5xi32>
        %280 = arith.remf %116, %cst_7 : f32
        %281 = index.casts %c1059108793_i64 : i64 to index
        %282 = arith.cmpf ole, %116, %116 : f32
        %283 = index.ceildivu %52, %182
        %alloc_45 = memref.alloc() : memref<2x16x8xi32>
        affine.yield %alloc_45 : memref<2x16x8xi32>
      } else {
        %275 = vector.broadcast %true_2 : i1 to vector<2x16x8xi1>
        %276 = math.log2 %50 : tensor<5x5xf32>
        %277 = vector.broadcast %cst_5 : f16 to vector<16x2xf16>
        %278 = vector.transfer_write %277, %13[%c0, %c5, %145] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x2xf16>, tensor<2x5x8xf16>
        %279 = arith.mulf %cst_0, %cst_7 : f32
        %splat_45 = tensor.splat %137 : tensor<5x5xi1>
        %280 = vector.extract_strided_slice %26 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %281 = math.ceil %5 : tensor<5x5xf32>
        %282 = arith.maxui %false, %true_6 : i1
        %alloc_46 = memref.alloc() : memref<2x16x8xi32>
        affine.yield %alloc_46 : memref<2x16x8xi32>
      }
      affine.store %93, %alloc_12[%c0] : memref<8xf16>
      %262 = arith.shli %arg2, %true_2 : i1
      %263 = vector.broadcast %cst_0 : f32 to vector<8xf32>
      %264 = vector.fma %263, %263, %263 : vector<8xf32>
      %265 = arith.mulf %cst_5, %cst_5 : f16
      %266 = math.log1p %3 : tensor<5x5xf32>
      %267 = arith.mulf %cst_5, %cst_5 : f16
      %true_44 = index.bool.constant true
      %268 = math.exp %cst_0 : f32
      vector.print %263 : vector<8xf32>
      %269 = arith.andi %true_3, %false : i1
      %270 = math.exp %cst : f32
      %271 = index.ceildivu %92, %160
      %272 = math.atan %93 : f16
      %273 = arith.shli %c1422306378_i64, %c1059108793_i64 : i64
      %274 = arith.minsi %true_3, %false : i1
      scf.yield %true_4 : i1
    }
    %cst_35 = arith.constant 1.000000e+00 : f32
    %cst_36 = arith.constant 0.000000e+00 : f32
    %209 = vector.transfer_read %84[%182], %cst_36 : memref<8xf32>, vector<f32>
    %210 = scf.while (%arg2 = %alloc_11) : (memref<2x16x8xi16>) -> memref<2x16x8xi16> {
      %261 = math.exp %116 : f32
      %262 = vector.splat %false : vector<2x5x8xi1>
      vector.print %196 : vector<8xi1>
      %263 = math.log1p %93 : f16
      %264 = bufferization.to_memref %9 : memref<8xi16>
      %265 = tensor.empty() : tensor<5x5xi16>
      %266 = vector.broadcast %177 : i16 to vector<2x5x8xi16>
      %267 = vector.broadcast %c33059462_i32 : i32 to vector<2x5x8xi32>
      %268 = vector.gather %265[%135, %74] [%267], %125, %266 : tensor<5x5xi16>, vector<2x5x8xi32>, vector<2x5x8xi1>, vector<2x5x8xi16> into vector<2x5x8xi16>
      %269 = index.ceildivs %c13, %182
      %270 = index.floordivs %c3, %c4
      scf.condition(%extracted) %alloc_11 : memref<2x16x8xi16>
    } do {
    ^bb0(%arg2: memref<2x16x8xi16>):
      %261 = arith.addf %116, %cst_35 : f32
      %262 = arith.subi %extracted, %true_4 : i1
      %263 = math.log %13 : tensor<2x5x8xf16>
      %264 = vector.create_mask %c0, %c0 : vector<5x5xi1>
      %265 = bufferization.to_memref %collapsed : memref<25xf32>
      %266 = math.absi %8 : tensor<2x5x8xi64>
      %267 = math.round %116 : f32
      bufferization.dealloc_tensor %collapsed_33 : tensor<32x8xi32>
      %268 = arith.minsi %c1059108793_i64, %c903769282_i64 : i64
      %269 = math.log %93 : f16
      scf.execute_region {
        %273 = arith.maxui %137, %true_6 : i1
        %274 = tensor.empty() : tensor<5x5xi64>
        %275 = linalg.matmul ins(%155, %1 : tensor<5x5xi64>, tensor<5x5xi64>) outs(%274 : tensor<5x5xi64>) -> tensor<5x5xi64>
        %splat_45 = tensor.splat %116 : tensor<5x5xf32>
        %276 = arith.minf %cst_35, %cst_35 : f32
        %277 = arith.maxf %cst_7, %cst_35 : f32
        %278 = index.ceildivu %c3, %160
        %alloc_46 = memref.alloc() : memref<5x5xi64>
        memref.tensor_store %6, %alloc_46 : memref<5x5xi64>
        %279 = index.casts %true_4 : i1 to index
        %280 = math.round %collapsed : tensor<25xf32>
        %281 = vector.broadcast %extracted : i1 to vector<5xi1>
        %282 = vector.maskedload %alloc_13[%c3], %281, %281 : memref<8xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
        %collapsed_47 = tensor.collapse_shape %3 [[0, 1]] : tensor<5x5xf32> into tensor<25xf32>
        %283 = math.tanh %5 : tensor<5x5xf32>
        %284 = arith.minf %cst_7, %cst_0 : f32
        %285 = index.maxu %c2, %175
        %286 = math.log10 %cst_7 : f32
        %c23324_i16 = arith.constant 23324 : i16
        scf.yield
      }
      scf.if %true_25 {
        %273 = math.log1p %5 : tensor<5x5xf32>
        %274 = vector.extract_strided_slice %162 {offsets = [1], sizes = [12], strides = [1]} : vector<16x16xi16> to vector<12x16xi16>
        %275 = vector.broadcast %177 : i16 to vector<i16>
        vector.transfer_write %275, %alloc_17[%82] : vector<i16>, memref<8xi16>
        %276 = vector.splat %177 : vector<2x5x8xi16>
        %277 = arith.shli %c2016339117_i32, %c2016339117_i32 : i32
        %278 = memref.load %alloc_12[%c0] : memref<8xf16>
        %alloc_45 = memref.alloc() : memref<2x5x8xi64>
        memref.tensor_store %8, %alloc_45 : memref<2x5x8xi64>
        %279 = arith.ori %c903769282_i64, %c1422306378_i64 : i64
      } else {
        %273 = math.rsqrt %cst_0 : f32
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %149, %26, %cst_5 : vector<1xf16>, vector<1xf16> into f16
        %extracted_45 = tensor.extract %18[] : tensor<i1>
        %275 = index.floordivs %c4, %c7
        %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %149, %26, %cst_5 : vector<1xf16>, vector<1xf16> into f16
        %277 = arith.minui %c33059462_i32, %c2016339117_i32 : i32
        %278 = bufferization.to_tensor %arg2 : memref<2x16x8xi16>
        %279 = arith.remf %116, %cst : f32
      }
      %270 = arith.remf %cst_5, %cst_1 : f16
      %271 = arith.xori %true_3, %true_6 : i1
      %272 = arith.shrsi %c1422306378_i64, %c1059108793_i64 : i64
      %alloc_44 = memref.alloc() : memref<5x5xf16>
      scf.yield %arg2 : memref<2x16x8xi16>
    }
    %211 = math.atan %5 : tensor<5x5xf32>
    %212 = math.tanh %cst_1 : f16
    %213 = arith.divsi %true, %true_2 : i1
    %214 = arith.negf %cst : f32
    %215 = math.absf %3 : tensor<5x5xf32>
    %216 = arith.cmpf ueq, %cst_1, %93 : f16
    %217 = arith.ceildivsi %c-15893_i16, %c-15893_i16 : i16
    %extracted_37 = tensor.extract %collapsed_30[%c1] : tensor<25xf32>
    %218 = arith.cmpf ugt, %extracted_37, %cst : f32
    %219 = index.casts %32 : index to i32
    %220 = vector.insert %true_2, %196 [2] : i1 into vector<8xi1>
    affine.store %c903769282_i64, %alloc_14[%c2, %c6, %c13] : memref<2x16x8xi64>
    %221 = math.log10 %106 : tensor<8xf16>
    %222 = vector.broadcast %c33059462_i32 : i32 to vector<i32>
    vector.transfer_write %222, %alloc_18[%92, %c10] : vector<i32>, memref<5x5xi32>
    %cst_38 = arith.constant 1.32054374E+9 : f32
    %223 = arith.divui %true_4, %true_25 : i1
    %224 = vector.extract %140[3] : vector<5x5xi1>
    %225 = index.casts %true : i1 to index
    %226 = arith.ori %c2016339117_i32, %c2016339117_i32 : i32
    %227 = index.floordivs %207, %c2
    %228 = arith.shli %true, %false : i1
    %229 = tensor.empty() : tensor<2x5x8xi16>
    %mapped_39 = linalg.map ins(%27 : tensor<2x5x8xi16>) outs(%229 : tensor<2x5x8xi16>)
      (%in: i16) {
        %261 = math.fma %collapsed_30, %collapsed_30, %collapsed : tensor<25xf32>
        %262 = arith.minui %c1422306378_i64, %c1422306378_i64 : i64
        %263 = arith.remui %true, %false : i1
        memref.alloca_scope  {
          %287 = vector.insert %93, %20 [0] : f16 into vector<2xf16>
          %288 = math.log %106 : tensor<8xf16>
          %289 = arith.ceildivsi %true_25, %extracted : i1
          %290 = bufferization.to_tensor %alloc_23 : memref<5x5xf16>
          affine.store %cst_1, %alloc_23[%c6, %c5] : memref<5x5xf16>
          vector.print %81 : vector<2xf16>
          %291 = arith.shrui %c1059108793_i64, %c1059108793_i64 : i64
          %splat_51 = tensor.splat %137 : tensor<8xi1>
          %292 = index.sub %225, %182
          %293 = arith.remsi %true, %false : i1
          %294 = vector.bitcast %26 : vector<1xf16> to vector<1xf16>
          %295 = arith.addf %cst, %cst_35 : f32
          bufferization.dealloc_tensor %21 : tensor<i1>
          %296 = vector.bitcast %75 : vector<8xi1> to vector<8xi1>
          bufferization.dealloc_tensor %155 : tensor<5x5xi64>
          %297 = index.floordivs %c5, %207
          %298 = arith.minui %c1422306378_i64, %c1422306378_i64 : i64
          %299 = arith.minui %true_3, %false : i1
          %300 = arith.minui %c1059108793_i64, %c1422306378_i64 : i64
          %301 = math.copysign %50, %3 : tensor<5x5xf32>
          %302 = math.log1p %cst_7 : f32
          %303 = arith.floordivsi %c1059108793_i64, %c903769282_i64 : i64
          %304 = index.castu %rank : index to i32
          bufferization.dealloc_tensor %11 : tensor<2x16x8xi32>
          memref.tensor_store %10, %alloc_10 : memref<2x5x8xi16>
          %305 = math.ceil %13 : tensor<2x5x8xf16>
          %306 = index.sizeof
          %307 = vector.shuffle %20, %20 [2, 3] : vector<2xf16>, vector<2xf16>
          %308 = arith.maxf %cst_5, %cst_5 : f16
          %309 = arith.addi %extracted, %true_6 : i1
          %310 = vector.insert %extracted, %224 [0] : i1 into vector<5xi1>
          %311 = arith.cmpf false, %cst_7, %cst_35 : f32
        }
        %264 = vector.splat %c5 : vector<5x5xindex>
        %265 = vector.broadcast %c8 : index to vector<8xindex>
        %266 = vector.broadcast %in : i16 to vector<8xi16>
        vector.scatter %alloc[%c0, %c0, %c7] [%265], %196, %266 : memref<2x16x8xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %267 = math.round %3 : tensor<5x5xf32>
        %268 = math.sqrt %collapsed : tensor<25xf32>
        %from_elements_44 = tensor.from_elements %c2016339117_i32, %c2016339117_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c33059462_i32, %c2016339117_i32, %c2016339117_i32 : tensor<8xi32>
        %269 = vector.broadcast %cst_35 : f32 to vector<8xf32>
        %270 = arith.divsi %c33059462_i32, %c2016339117_i32 : i32
        %271 = vector.flat_transpose %269 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        %272 = arith.floordivsi %true_25, %true : i1
        %273 = vector.shuffle %158, %158 [0, 1, 2] : vector<2x16x8xi16>, vector<2x16x8xi16>
        %274 = arith.addi %c2016339117_i32, %c33059462_i32 : i32
        %275 = arith.shli %true_25, %extracted : i1
        %276 = math.sqrt %116 : f32
        %dest_45, %accumulated_value_46 = vector.scan <minui>, %162, %190 {inclusive = false, reduction_dim = 0 : i64} : vector<16x16xi16>, vector<16xi16>
        %277 = math.atan %50 : tensor<5x5xf32>
        %alloca_47 = memref.alloca() : memref<2x5x8xi1>
        %rank_48 = tensor.rank %collapsed_30 : tensor<25xf32>
        %from_elements_49 = tensor.from_elements %true_3, %false, %137, %extracted, %true_6, %137, %true_3, %137, %true_25, %false, %true_3, %true_6, %true_6, %true, %true_25, %true, %true_6, %true, %extracted, %true_4, %false, %true_4, %true_4, %true_3, %137, %true_25, %true_6, %true_6, %137, %true_3, %true_3, %true_25, %true_3, %true_3, %true_25, %extracted, %true_2, %true, %false, %true_4, %true_2, %true_4, %true, %true, %true_2, %false, %true_4, %true_6, %true_6, %true_25, %137, %true_3, %true_4, %true_3, %137, %true_4, %true_4, %extracted, %true, %true_6, %false, %false, %true_4, %true_2, %true_25, %137, %true_6, %true_3, %true_6, %true, %137, %false, %true_6, %true_4, %137, %true_3, %true_6, %137, %extracted, %true_25, %extracted, %137, %137, %true, %true_2, %137, %true_3, %extracted, %true_4, %true_2, %true, %false, %137, %extracted, %true_25, %true_25, %true_2, %true_2, %extracted, %true_2, %true_4, %137, %true_6, %false, %true_3, %false, %true_3, %true_25, %true_4, %true_6, %true_3, %true_6, %true, %true_4, %true_3, %137, %true_25, %false, %true_3, %true_25, %137, %extracted, %false, %true_3, %true_3, %true_4, %true, %true_3, %true_2, %extracted, %true_3, %true_3, %true_25, %true_25, %true_25, %true_25, %true_3, %137, %true_3, %false, %true_25, %137, %true_25, %true, %true_3, %true, %false, %true_25, %extracted, %true_6, %true_6, %true_2, %extracted, %true, %true_4, %true_6, %137, %true_3, %true_4, %false, %true_25, %true_6, %true_6, %137, %extracted, %true_4, %true_25, %true_4, %true_6, %true_6, %true_25, %true_2, %extracted, %true_25, %true_2, %true, %137, %true_6, %true_4, %false, %true_6, %extracted, %true_2, %true_4, %true_25, %true_3, %true_4, %true_25, %true_4, %true_25, %true, %true_4, %true_6, %true, %true_3, %true, %true_3, %137, %true, %extracted, %137, %137, %true_4, %true_2, %true, %true_3, %true_2, %137, %true_2, %true_25, %true_6, %true_3, %true_25, %true_25, %extracted, %true_4, %true_3, %true_4, %false, %false, %true_25, %false, %137, %true_2, %false, %true_25, %extracted, %true_3, %137, %true, %true_4, %true_4, %false, %extracted, %137, %137, %true_4, %extracted, %true, %true_3, %true_2, %true, %137, %true_6, %true_3, %extracted, %true_2, %true_3, %extracted, %true_25, %true_6, %true_6, %true_25, %true_3, %137, %false : tensor<2x16x8xi1>
        %278 = vector.broadcast %177 : i16 to vector<2x8xi16>
        %279 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %158, %190, %278 : vector<2x16x8xi16>, vector<16xi16> into vector<2x8xi16>
        %280 = vector.bitcast %150 : vector<2x16x8xi1> to vector<2x16x8xi1>
        %281 = arith.shli %177, %177 : i16
        %282 = math.atan %cst_5 : f16
        %c2014790197_i32 = arith.constant 2014790197 : i32
        %283 = vector.extract %150[0] : vector<2x16x8xi1>
        %284 = math.log10 %116 : f32
        %285 = vector.extract %158[1] : vector<2x16x8xi16>
        %286 = math.sqrt %3 : tensor<5x5xf32>
        %false_50 = arith.constant false
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %230 = tensor.empty() : tensor<2x16x8xi32>
    %mapped_40 = linalg.map ins(%11, %11, %11 : tensor<2x16x8xi32>, tensor<2x16x8xi32>, tensor<2x16x8xi32>) outs(%230 : tensor<2x16x8xi32>)
      (%in: i32, %in_44: i32, %in_45: i32) {
        %261 = vector.matrix_multiply %75, %75 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
        %262 = vector.shuffle %75, %224 [1, 3, 4, 5, 8, 9, 10] : vector<8xi1>, vector<5xi1>
        %263 = math.copysign %106, %106 : tensor<8xf16>
        %264 = tensor.empty() : tensor<2x16x8xi32>
        %c-18041_i16 = arith.constant -18041 : i16
        %265 = index.castu %true_6 : i1 to index
        %true_46 = index.bool.constant true
        %266 = math.sqrt %cst : f32
        %267 = math.ctlz %4 : tensor<2x5x8xi16>
        %268 = arith.shrui %c33059462_i32, %in_45 : i32
        %269 = vector.broadcast %true_25 : i1 to vector<2xi1>
        %270 = vector.maskedload %alloc_20[%c0], %269, %269 : memref<8xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
        %collapsed_47 = tensor.collapse_shape %from_elements_27 [[0, 1]] : tensor<5x5xi1> into tensor<25xi1>
        %271 = bufferization.clone %alloc_14 : memref<2x16x8xi64> to memref<2x16x8xi64>
        %extracted_48 = tensor.extract %50[%c4, %c1] : tensor<5x5xf32>
        %272 = arith.xori %c-15893_i16, %c-15893_i16 : i16
        %273 = math.fma %116, %cst_0, %cst_7 : f32
        %274 = vector.create_mask %c14 : vector<8xi1>
        %275 = arith.shli %c33059462_i32, %in_45 : i32
        %276 = math.log %cst_5 : f16
        %277 = vector.flat_transpose %26 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %278 = index.ceildivu %c5, %175
        %279 = math.round %cst_0 : f32
        %280 = affine.load %alloc_11[%c1, %c8, %c9] : memref<2x16x8xi16>
        %281 = arith.addf %cst_35, %extracted_48 : f32
        %282 = index.castu %177 : i16 to index
        %283 = vector.broadcast %in_44 : i32 to vector<2x16x8xi32>
        %284 = vector.gather %alloc_10[%rank, %52, %c10] [%283], %150, %158 : memref<2x5x8xi16>, vector<2x16x8xi32>, vector<2x16x8xi1>, vector<2x16x8xi16> into vector<2x16x8xi16>
        %285 = vector.broadcast %116 : f32 to vector<5x5xf32>
        %286 = vector.fma %285, %285, %285 : vector<5x5xf32>
        %splat_49 = tensor.splat %c903769282_i64 : tensor<5x5xi64>
        %287 = arith.shrui %c903769282_i64, %c903769282_i64 : i64
        %splat_50 = tensor.splat %true_25 : tensor<2x5x8xi1>
        %288 = tensor.empty() : tensor<5x2xi16>
        %289 = tensor.empty() : tensor<2x8xi16>
        %290 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%288, %289, %289 : tensor<5x2xi16>, tensor<2x8xi16>, tensor<2x8xi16>) outs(%229 : tensor<2x5x8xi16>) {
        ^bb0(%in_51: i16, %in_52: i16, %in_53: i16, %out: i16):
          %292 = arith.cmpf one, %cst_35, %cst_0 : f32
          %293 = arith.shli %c-15893_i16, %in_51 : i16
          %294 = math.absf %extracted_48 : f32
          %295 = index.add %c12, %rank_34
          %c45652140_i64 = arith.constant 45652140 : i64
          %296 = arith.shrui %c2016339117_i32, %in_44 : i32
          %297 = math.exp %collapsed : tensor<25xf32>
          %298 = arith.mulf %cst_0, %116 : f32
          %299 = math.fpowi %cst_35, %c2016339117_i32 : f32, i32
          %300 = index.ceildivu %227, %c8
          %301 = vector.shuffle %277, %20 [1, 2] : vector<1xf16>, vector<2xf16>
          memref.assume_alignment %84, 1 : memref<8xf32>
          %302 = arith.xori %c1059108793_i64, %c903769282_i64 : i64
          %303 = math.floor %cst : f32
          %304 = memref.load %alloc_9[%c4, %c2] : memref<5x5xi1>
          %305 = vector.matrix_multiply %149, %26 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
          bufferization.dealloc_tensor %15 : tensor<8xi1>
          %306 = vector.create_mask %c8, %c6, %31 : vector<2x5x8xi1>
          %inserted_54 = tensor.insert %extracted_37 into %collapsed_30[%c5] : tensor<25xf32>
          %307 = arith.shrui %137, %true_25 : i1
          %308 = vector.gather %splat_28[%c13, %182, %295] [%283], %150, %150 : tensor<2x16x8xi1>, vector<2x16x8xi32>, vector<2x16x8xi1>, vector<2x16x8xi1> into vector<2x16x8xi1>
          %alloca_55 = memref.alloca() : memref<2x16x8xi32>
          %309 = vector.shuffle %149, %20 [0] : vector<1xf16>, vector<2xf16>
          %inserted_56 = tensor.insert %cst_0 into %50[%c0, %c0] : tensor<5x5xf32>
          %310 = index.maxu %c10, %c15
          %311 = vector.matrix_multiply %75, %270 {lhs_columns = 2 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<2xi1>) -> vector<4xi1>
          %inserted_57 = tensor.insert %true_4 into %splat_50[%c1, %c4, %c4] : tensor<2x5x8xi1>
          %312 = math.log %5 : tensor<5x5xf32>
          %313 = index.floordivs %rank_34, %32
          %collapsed_58 = tensor.collapse_shape %from_elements [[0, 1], [2]] : tensor<2x16x8xi16> into tensor<32x8xi16>
          %true_59 = arith.constant true
          %314 = arith.xori %in_53, %in_51 : i16
          linalg.yield %in_53 : i16
        } -> tensor<2x5x8xi16>
        %291 = affine.apply affine_map<(d0, d1) -> (0)>(%c6, %c5)
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    %231 = arith.andi %c33059462_i32, %c2016339117_i32 : i32
    %232 = vector.broadcast %cst : f32 to vector<5xf32>
    %233 = vector.transfer_write %232, %50[%175, %48] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xf32>, tensor<5x5xf32>
    %234 = scf.while (%arg2 = %true_3) : (i1) -> i1 {
      %261 = math.fma %3, %3, %5 : tensor<5x5xf32>
      %262 = bufferization.to_tensor %alloc_19 : memref<5x5xi32>
      %263 = math.round %cst : f32
      memref.assume_alignment %alloc_10, 1 : memref<2x5x8xi16>
      %264 = affine.if affine_set<(d0) : (d0 >= 0, (-d0) mod 4 == 0, d0 * 2 + (-d0) mod 4 >= 0)>(%c11) -> i64 {
        %268 = tensor.empty() : tensor<5x5xi64>
        %269 = vector.broadcast %cst : f32 to vector<2x5x8xf32>
        %270 = vector.fma %269, %269, %269 : vector<2x5x8xf32>
        %271 = vector.load %alloc_15[%c4, %c4] : memref<5x5xf32>, vector<8xf32>
        %272 = tensor.empty(%c4) : tensor<?x5x8xf32>
        %273 = vector.bitcast %162 : vector<16x16xi16> to vector<16x16xi16>
        %274 = math.absf %collapsed_30 : tensor<25xf32>
        %275 = affine.max affine_map<(d0) -> ((d0 floordiv 64) mod 128)>(%c2)
        %276 = arith.shli %false, %true : i1
        affine.yield %c1059108793_i64 : i64
      } else {
        %268 = arith.maxui %true_6, %arg2 : i1
        %269 = vector.broadcast %c1059108793_i64 : i64 to vector<2x16x8xi64>
        %270 = vector.broadcast %c33059462_i32 : i32 to vector<2x16x8xi32>
        %271 = vector.gather %alloc_14[%c12, %32, %114] [%270], %150, %269 : memref<2x16x8xi64>, vector<2x16x8xi32>, vector<2x16x8xi1>, vector<2x16x8xi64> into vector<2x16x8xi64>
        %272 = index.ceildivs %c4, %rank
        %273 = math.fma %116, %cst_7, %extracted_37 : f32
        %274 = arith.maxui %c1422306378_i64, %c903769282_i64 : i64
        %275 = index.casts %c14 : index to i32
        %276 = vector.shuffle %222, %222 [0, 1] : vector<i32>, vector<i32>
        %277 = arith.remf %cst_7, %extracted_37 : f32
        affine.yield %c1422306378_i64 : i64
      }
      %265 = arith.floordivsi %true_25, %true_25 : i1
      %266 = arith.cmpf oge, %cst_5, %cst_5 : f16
      %267 = affine.if affine_set<(d0, d1, d2) : (d1 * 16 - d0 >= 0, d2 >= 0, d2 == 0, d1 * 16 == 0)>(%c6, %c6, %c5) -> i1 {
        %268 = vector.broadcast %c-15893_i16 : i16 to vector<5xi16>
        vector.transfer_write %268, %alloc_11[%227, %134, %c0] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xi16>, memref<2x16x8xi16>
        %269 = index.mul %32, %227
        %270 = arith.shrui %extracted, %true_4 : i1
        %271 = arith.xori %c-15893_i16, %177 : i16
        vector.print %162 : vector<16x16xi16>
        %272 = math.fpowi %cst_1, %c33059462_i32 : f16, i32
        bufferization.dealloc_tensor %6 : tensor<5x5xi64>
        %alloc_44 = memref.alloc() : memref<8xi64>
        %273 = vector.broadcast %c1059108793_i64 : i64 to vector<8xi64>
        %274 = vector.broadcast %c33059462_i32 : i32 to vector<8xi32>
        %275 = vector.gather %alloc_44[%135] [%274], %75, %273 : memref<8xi64>, vector<8xi32>, vector<8xi1>, vector<8xi64> into vector<8xi64>
        affine.yield %true_3 : i1
      } else {
        %268 = arith.divsi %arg2, %137 : i1
        %269 = vector.matrix_multiply %81, %20 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<2xf16>, vector<2xf16>) -> vector<1xf16>
        %splat_44 = tensor.splat %cst_7 : tensor<5x5xf32>
        %270 = math.ctpop %27 : tensor<2x5x8xi16>
        %271 = vector.broadcast %c903769282_i64 : i64 to vector<i64>
        %272 = vector.transfer_write %271, %1[%rank_34, %207] : vector<i64>, tensor<5x5xi64>
        %alloca_45 = memref.alloca() : memref<8xi1>
        %273 = arith.shrui %true_3, %true_2 : i1
        %274 = arith.minui %true, %true_4 : i1
        affine.yield %extracted : i1
      }
      scf.condition(%extracted) %true_25 : i1
    } do {
    ^bb0(%arg2: i1):
      %261 = vector.create_mask %102, %c7 : vector<5x5xi1>
      %262 = vector.load %alloc_15[%c1, %c0] : memref<5x5xf32>, vector<8xf32>
      %263 = arith.remf %cst, %cst : f32
      %264 = arith.shrui %c1422306378_i64, %c1059108793_i64 : i64
      %265 = vector.broadcast %cst : f32 to vector<5x5xf32>
      %266 = vector.outerproduct %232, %232, %265 {kind = #vector.kind<mul>} : vector<5xf32>, vector<5xf32>
      %267 = affine.if affine_set<(d0, d1, d2) : (d0 == 0)>(%c10, %c14, %c3) -> i32 {
        %276 = index.add %c7, %114
        %277 = vector.splat %48 : vector<5x5xindex>
        bufferization.dealloc_tensor %6 : tensor<5x5xi64>
        %278 = index.sizeof
        %279 = index.maxu %c10, %85
        %280 = arith.remsi %true, %true_25 : i1
        %281 = math.ipowi %22, %22 : tensor<i1>
        %282 = memref.atomic_rmw assign %93, %alloc_16[%c4, %c4] : (f16, memref<5x5xf16>) -> f16
        affine.yield %c33059462_i32 : i32
      } else {
        %276 = math.tanh %cst_7 : f32
        %277 = vector.bitcast %261 : vector<5x5xi1> to vector<5x5xi1>
        %278 = vector.reduction <minf>, %26 : vector<1xf16> into f16
        %c0_i16 = arith.constant 0 : i16
        %279 = vector.transfer_read %4[%202, %160, %182], %c0_i16 : tensor<2x5x8xi16>, vector<16x2xi16>
        %280 = vector.extract_strided_slice %125 {offsets = [0], sizes = [2], strides = [1]} : vector<2x5x8xi1> to vector<2x5x8xi1>
        %281 = index.casts %92 : index to i32
        %282 = math.ceil %50 : tensor<5x5xf32>
        %283 = index.add %160, %c6
        affine.yield %c2016339117_i32 : i32
      }
      %268 = math.copysign %collapsed_30, %collapsed_30 : tensor<25xf32>
      %269 = index.maxu %31, %rank_34
      %270 = index.sub %c4, %c15
      %alloc_44 = memref.alloc() : memref<2x16x8xi1>
      memref.tensor_store %splat_28, %alloc_44 : memref<2x16x8xi1>
      %271 = math.log10 %cst_7 : f32
      %272 = scf.while (%arg3 = %262) : (vector<8xf32>) -> vector<8xf32> {
        %276 = arith.shrsi %true_25, %true_25 : i1
        %alloc_47 = memref.alloc() : memref<8xi64>
        memref.tensor_store %12, %alloc_47 : memref<8xi64>
        %277 = arith.maxsi %false, %true_2 : i1
        %278 = math.fma %cst_1, %cst_1, %cst_1 : f16
        %279 = math.ctlz %16 : tensor<5x5xi64>
        %280 = arith.remf %116, %cst : f32
        memref.tensor_store %9, %alloc_17 : memref<8xi16>
        %281 = bufferization.to_memref %17 : memref<5x5xi64>
        scf.condition(%extracted) %262 : vector<8xf32>
      } do {
      ^bb0(%arg3: vector<8xf32>):
        %true_47 = arith.constant true
        %276 = vector.transfer_read %alloc_21[%135], %true_47 : memref<8xi1>, vector<i1>
        %277 = math.log10 %50 : tensor<5x5xf32>
        %278 = arith.shrsi %true_25, %true_2 : i1
        %false_48 = index.bool.constant false
        %279 = arith.cmpf uge, %cst_5, %93 : f16
        %280 = math.fpowi %13, %0 : tensor<2x5x8xf16>, tensor<2x5x8xi32>
        %281 = math.ceil %cst_0 : f32
        %282 = arith.ceildivsi %extracted, %arg2 : i1
        %283 = vector.multi_reduction <add>, %140, %224 [1] : vector<5x5xi1> to vector<5xi1>
        %284 = arith.cmpf false, %cst_5, %93 : f16
        %285 = tensor.empty() : tensor<5x5xi32>
        %286 = math.fpowi %5, %285 : tensor<5x5xf32>, tensor<5x5xi32>
        %287 = vector.extract_strided_slice %140 {offsets = [2], sizes = [1], strides = [1]} : vector<5x5xi1> to vector<1x5xi1>
        vector.print %81 : vector<2xf16>
        %288 = tensor.empty() : tensor<5x5xf32>
        %289 = linalg.matmul ins(%3, %5 : tensor<5x5xf32>, tensor<5x5xf32>) outs(%288 : tensor<5x5xf32>) -> tensor<5x5xf32>
        %290 = vector.broadcast %68 : index to vector<2xindex>
        %291 = vector.broadcast %true_2 : i1 to vector<2xi1>
        vector.scatter %alloc_23[%c2, %c1] [%290], %291, %81 : memref<5x5xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
        %292 = vector.splat %c903769282_i64 : vector<5x5xi64>
        scf.yield %262 : vector<8xf32>
      }
      %273 = math.log %13 : tensor<2x5x8xf16>
      %274 = math.absf %3 : tensor<5x5xf32>
      %inserted_45 = tensor.insert %c33059462_i32 into %11[%c1, %c10, %c0] : tensor<2x16x8xi32>
      %275 = tensor.empty() : tensor<2x5x8xi16>
      %mapped_46 = linalg.map ins(%alloc_8 : memref<2x5x8xi16>) outs(%275 : tensor<2x5x8xi16>)
        (%in: i16) {
          %276 = vector.broadcast %c1059108793_i64 : i64 to vector<i64>
          %277 = vector.transfer_write %276, %1[%82, %c12] : vector<i64>, tensor<5x5xi64>
          %278 = math.absf %cst_7 : f32
          %279 = vector.multi_reduction <add>, %232, %cst_7 [0] : vector<5xf32> to f32
          %280 = arith.muli %c33059462_i32, %c33059462_i32 : i32
          %from_elements_47 = tensor.from_elements %137, %true_6, %false, %true_3, %extracted, %true_4, %arg2, %true_2, %true_25, %false, %137, %true_2, %true_4, %true_6, %true_6, %arg2, %true_6, %137, %arg2, %true, %true, %true, %true, %extracted, %true, %true_2, %true, %true_6, %arg2, %137, %true_4, %extracted, %137, %true_25, %arg2, %true_4, %true, %true_6, %true_2, %true_3, %137, %false, %false, %arg2, %137, %true_4, %arg2, %true_3, %true_25, %true_4, %extracted, %extracted, %true_3, %true_6, %true, %true_25, %137, %true_4, %true_25, %true_25, %true_3, %true_2, %true_4, %true_3, %true_2, %true_3, %true_6, %true_4, %true, %true_3, %false, %true, %false, %true, %true_6, %arg2, %true_6, %false, %true_25, %true_4 : tensor<2x5x8xi1>
          %alloc_48 = memref.alloc() : memref<2x5x8xf16>
          %281 = vector.broadcast %cst_1 : f16 to vector<2x16x8xf16>
          %282 = vector.broadcast %c33059462_i32 : i32 to vector<2x16x8xi32>
          %283 = vector.gather %alloc_48[%31, %c2, %114] [%282], %150, %281 : memref<2x5x8xf16>, vector<2x16x8xi32>, vector<2x16x8xi1>, vector<2x16x8xf16> into vector<2x16x8xf16>
          %284 = arith.remui %true_3, %true_2 : i1
          %c1002428880_i64 = arith.constant 1002428880 : i64
          %285 = math.expm1 %3 : tensor<5x5xf32>
          %inserted_49 = tensor.insert %cst_5 into %13[%c1, %c4, %c5] : tensor<2x5x8xf16>
          %286 = arith.cmpf one, %cst_7, %cst : f32
          %287 = index.castu %114 : index to i32
          %288 = vector.shuffle %232, %262 [0, 1, 4, 7, 9, 10, 12] : vector<5xf32>, vector<8xf32>
          %289 = math.atan %93 : f16
          %290 = vector.broadcast %93 : f16 to vector<2x16xf16>
          %dest_50, %accumulated_value_51 = vector.scan <minf>, %283, %290 {inclusive = true, reduction_dim = 2 : i64} : vector<2x16x8xf16>, vector<2x16xf16>
          %291 = math.log10 %106 : tensor<8xf16>
          %292 = bufferization.clone %alloc_11 : memref<2x16x8xi16> to memref<2x16x8xi16>
          %293 = arith.shrsi %true_6, %true_4 : i1
          %294 = vector.broadcast %93 : f16 to vector<2xf16>
          vector.transfer_write %294, %alloc_23[%225, %c12] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xf16>, memref<5x5xf16>
          %295 = index.maxu %175, %c8
          %rank_52 = tensor.rank %splat_28 : tensor<2x16x8xi1>
          %false_53 = arith.constant false
          %296 = math.log10 %116 : f32
          %297 = arith.subi %true_3, %true_2 : i1
          %298 = vector.bitcast %149 : vector<1xf16> to vector<1xf16>
          %299 = vector.reduction <mul>, %196 : vector<8xi1> into i1
          %300 = math.round %cst_1 : f16
          %301 = math.log1p %cst_35 : f32
          %302 = arith.shrsi %true_6, %true_3 : i1
          %303 = index.sizeof
          %304 = arith.mulf %cst_7, %cst_7 : f32
          %305 = affine.apply affine_map<(d0, d1) -> ((d0 + 8) mod 32)>(%202, %rank_52)
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      scf.yield %true_4 : i1
    }
    %235 = math.sqrt %cst_35 : f32
    %236 = tensor.empty() : tensor<5x5xi1>
    %237 = arith.maxsi %c-15893_i16, %c-15893_i16 : i16
    vector.print %184 : vector<i1>
    %238 = arith.cmpf one, %cst_0, %cst_35 : f32
    %239 = math.log10 %cst_0 : f32
    %240 = arith.divf %extracted_37, %extracted_37 : f32
    %241 = math.cos %93 : f16
    %242 = arith.divsi %false, %false : i1
    %243 = arith.remf %extracted_37, %cst_7 : f32
    %false_41 = index.bool.constant false
    %244 = math.exp %cst : f32
    %245 = arith.remf %116, %cst_35 : f32
    %246 = arith.minui %c903769282_i64, %c1422306378_i64 : i64
    %247 = math.tanh %cst_0 : f32
    %248 = math.ipowi %18, %22 : tensor<i1>
    %249 = index.castu %92 : index to i32
    %250 = math.sqrt %extracted_37 : f32
    %251 = vector.broadcast %cst_5 : f16 to vector<16xf16>
    %252 = vector.broadcast %true_25 : i1 to vector<16xi1>
    %253 = vector.maskedload %alloc_12[%c2], %252, %251 : memref<8xf16>, vector<16xi1>, vector<16xf16> into vector<16xf16>
    %254 = math.fpowi %cst_35, %c2016339117_i32 : f32, i32
    %255 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %162, %162, %162 : vector<16x16xi16>, vector<16x16xi16> into vector<16x16xi16>
    %256 = math.cttz %155 : tensor<5x5xi64>
    %257 = memref.realloc %alloc_21 : memref<8xi1> to memref<2xi1>
    %258 = tensor.empty() : tensor<5x5xi64>
    %259 = linalg.copy ins(%155 : tensor<5x5xi64>) outs(%258 : tensor<5x5xi64>) -> tensor<5x5xi64>
    %alloc_42 = memref.alloc() : memref<5x5xi64>
    linalg.transpose ins(%155 : tensor<5x5xi64>) outs(%alloc_42 : memref<5x5xi64>) permutation = [1, 0] 
    %alloc_43 = memref.alloc() : memref<5xi64>
    linalg.reduce ins(%8 : tensor<2x5x8xi64>) outs(%alloc_43 : memref<5xi64>) dimensions = [0, 2] 
      (%in: i64, %init: i64) {
        %261 = index.castu %c8 : index to i32
        %262 = arith.shli %137, %true_2 : i1
        %263 = vector.splat %init : vector<5x5xi64>
        %264 = arith.floordivsi %137, %extracted : i1
        %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %149, %26, %cst_1 : vector<1xf16>, vector<1xf16> into f16
        %266 = math.log %5 : tensor<5x5xf32>
        %267 = tensor.empty() : tensor<5xi16>
        %268 = tensor.empty() : tensor<8x5xi16>
        %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%267, %268 : tensor<5xi16>, tensor<8x5xi16>) outs(%229 : tensor<2x5x8xi16>) {
        ^bb0(%in_44: i16, %in_45: i16, %out: i16):
          %271 = vector.broadcast %false : i1 to vector<5x8x5x8xi1>
          %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %125, %125, %271 : vector<2x5x8xi1>, vector<2x5x8xi1> into vector<5x8x5x8xi1>
          affine.store %177, %alloc_11[%c4, %c13, %c9] : memref<2x16x8xi16>
          %273 = math.fma %cst_0, %cst_7, %cst_35 : f32
          %274 = arith.negf %116 : f32
          %275 = arith.divui %true_25, %false_41 : i1
          %276 = vector.extract %158[1] : vector<2x16x8xi16>
          %277 = tensor.empty(%c9) : tensor<5x?xi32>
          memref.tensor_store %5, %alloc_15 : memref<5x5xf32>
          %278 = vector.broadcast %extracted_37 : f32 to vector<8xf32>
          %279 = vector.fma %278, %278, %278 : vector<8xf32>
          %280 = tensor.empty(%c12) : tensor<?x16x8xi64>
          %281 = vector.splat %out : vector<8xi16>
          %282 = memref.realloc %157 : memref<8xi1> to memref<8xi1>
          bufferization.dealloc_tensor %13 : tensor<2x5x8xf16>
          %283 = math.powf %116, %cst_0 : f32
          %from_elements_46 = tensor.from_elements %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_1, %93 : tensor<8xf16>
          %284 = index.add %c8, %c8
          %285 = vector.broadcast %137 : i1 to vector<2x16xi1>
          %286 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %196, %150, %285 : vector<8xi1>, vector<2x16x8xi1> into vector<2x16xi1>
          %287 = bufferization.to_memref %from_elements_27 : memref<5x5xi1>
          %288 = arith.andi %c2016339117_i32, %c2016339117_i32 : i32
          %289 = arith.cmpf une, %cst_7, %extracted_37 : f32
          %290 = vector.broadcast %true : i1 to vector<5x8x5x8xi1>
          %291 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %125, %125, %290 : vector<2x5x8xi1>, vector<2x5x8xi1> into vector<5x8x5x8xi1>
          vector.print %196 : vector<8xi1>
          %292 = arith.shli %in_44, %in_44 : i16
          %293 = arith.xori %137, %true_6 : i1
          %294 = vector.extract_strided_slice %149 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
          %295 = vector.extract %252[1] : vector<16xi1>
          %296 = bufferization.to_memref %14 : memref<8xi1>
          %alloc_47 = memref.alloc() : memref<2x16x8xi32>
          %297 = vector.load %296[%c6] : memref<8xi1>, vector<2x16x8xi1>
          %298 = math.round %50 : tensor<5x5xf32>
          %299 = tensor.empty() : tensor<2x5x8xi32>
          %300 = tensor.empty() : tensor<5x5xi32>
          %301 = math.fpowi %5, %300 : tensor<5x5xf32>, tensor<5x5xi32>
          linalg.yield %in_44 : i16
        } -> tensor<2x5x8xi16>
        %270 = math.log2 %50 : tensor<5x5xf32>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    scf.parallel (%arg2, %arg3) = (%85, %168) to (%c15, %c12) step (%c2, %c4) {
      %261 = arith.negf %cst_0 : f32
      %false_44 = arith.constant false
      %262 = arith.minf %cst, %cst_35 : f32
      %263 = math.fma %cst_5, %cst_5, %cst_1 : f16
      %264 = vector.load %alloc_10[%c0, %c1, %c3] : memref<2x5x8xi16>, vector<2x16x8xi16>
      %265 = tensor.empty() : tensor<5x5xf32>
      %266 = linalg.matmul ins(%3, %3 : tensor<5x5xf32>, tensor<5x5xf32>) outs(%265 : tensor<5x5xf32>) -> tensor<5x5xf32>
      %267 = arith.minf %93, %cst_5 : f16
      %268 = arith.remsi %c33059462_i32, %c33059462_i32 : i32
      %269 = index.sub %92, %92
      %270 = arith.shrsi %c33059462_i32, %c2016339117_i32 : i32
      %271 = math.atan2 %cst_0, %cst_35 : f32
      %272 = arith.minsi %true_4, %false : i1
      %273 = index.sizeof
      %274 = math.sqrt %3 : tensor<5x5xf32>
      %275 = vector.broadcast %cst_7 : f32 to vector<2x5x8xf32>
      %276 = math.round %extracted_37 : f32
      scf.yield
    }
    %260 = affine.vector_load %alloc_11[%c14, %183, %c2] : memref<2x16x8xi16>, vector<5xi16>
    affine.vector_store %232, %84[%c7] : memref<8xf32>, vector<5xf32>
    vector.print %20 : vector<2xf16>
    vector.print %26 : vector<1xf16>
    vector.print %34 : vector<i64>
    vector.print %36 : vector<i16>
    vector.print %57 : vector<i1>
    vector.print %75 : vector<8xi1>
    vector.print %81 : vector<2xf16>
    vector.print %125 : vector<2x5x8xi1>
    vector.print %140 : vector<5x5xi1>
    vector.print %149 : vector<1xf16>
    vector.print %150 : vector<2x16x8xi1>
    vector.print %158 : vector<2x16x8xi16>
    vector.print %162 : vector<16x16xi16>
    vector.print %184 : vector<i1>
    vector.print %190 : vector<16xi16>
    vector.print %196 : vector<8xi1>
    vector.print %222 : vector<i32>
    vector.print %224 : vector<5xi1>
    vector.print %232 : vector<5xf32>
    vector.print %251 : vector<16xf16>
    vector.print %252 : vector<16xi1>
    vector.print %253 : vector<16xf16>
    vector.print %260 : vector<5xi16>
    vector.print %true : i1
    vector.print %cst : f32
    vector.print %c1422306378_i64 : i64
    vector.print %cst_0 : f32
    vector.print %c1059108793_i64 : i64
    vector.print %c-15893_i16 : i16
    vector.print %cst_1 : f16
    vector.print %true_2 : i1
    vector.print %true_3 : i1
    vector.print %c903769282_i64 : i64
    vector.print %true_4 : i1
    vector.print %cst_5 : f16
    vector.print %c33059462_i32 : i32
    vector.print %c2016339117_i32 : i32
    vector.print %true_6 : i1
    vector.print %cst_7 : f32
    vector.print %true_25 : i1
    vector.print %93 : f16
    vector.print %116 : f32
    vector.print %137 : i1
    vector.print %extracted : i1
    vector.print %177 : i16
    vector.print %false : i1
    vector.print %cst_35 : f32
    vector.print %extracted_37 : f32
    vector.print %false_41 : i1
    return
  }
}
