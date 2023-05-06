module {
  func.func private @func1(%arg0: index, %arg1: i32, %arg2: memref<16x6xf32>) {
    %c-14907_i16 = arith.constant -14907 : i16
    %c1191669277_i32 = arith.constant 1191669277 : i32
    %cst = arith.constant 4.944720e+07 : f32
    %cst_0 = arith.constant 4.620800e+04 : f16
    %c6901_i16 = arith.constant 6901 : i16
    %c605289834_i32 = arith.constant 605289834 : i32
    %c10222_i16 = arith.constant 10222 : i16
    %c28870_i16 = arith.constant 28870 : i16
    %c1429443777_i32 = arith.constant 1429443777 : i32
    %c2004578870_i32 = arith.constant 2004578870 : i32
    %cst_1 = arith.constant 6.297600e+04 : f16
    %true = arith.constant true
    %c851953729_i32 = arith.constant 851953729 : i32
    %c844669243_i32 = arith.constant 844669243 : i32
    %false = arith.constant false
    %cst_2 = arith.constant 1.281600e+04 : f16
    %0 = tensor.empty() : tensor<16x10xf16>
    %1 = tensor.empty() : tensor<16x10xf32>
    %2 = tensor.empty() : tensor<16x6xi1>
    %3 = tensor.empty() : tensor<10x10x6xi16>
    %4 = tensor.empty() : tensor<16x6xi1>
    %5 = tensor.empty() : tensor<16x10xi1>
    %6 = tensor.empty() : tensor<6x16x10xf16>
    %7 = tensor.empty() : tensor<16x6xi64>
    %8 = tensor.empty() : tensor<16x6xi1>
    %9 = tensor.empty() : tensor<10x10x6xi32>
    %10 = tensor.empty() : tensor<16x6xf16>
    %11 = tensor.empty() : tensor<6x16x10xi1>
    %12 = tensor.empty() : tensor<16x6xf32>
    %13 = tensor.empty() : tensor<10x10x6xi16>
    %14 = tensor.empty() : tensor<16x10xi16>
    %15 = tensor.empty() : tensor<16x6xi16>
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
    %alloc = memref.alloc() : memref<10x10x6xf16>
    %alloc_3 = memref.alloc() : memref<16x6xi16>
    %alloc_4 = memref.alloc() : memref<10x10x6xi16>
    %alloc_5 = memref.alloc() : memref<6x16x10xf32>
    %alloc_6 = memref.alloc() : memref<16x6xf16>
    %alloc_7 = memref.alloc() : memref<16x6xf16>
    %alloc_8 = memref.alloc() : memref<6x16x10xi32>
    %alloc_9 = memref.alloc() : memref<10x10x6xi1>
    %alloc_10 = memref.alloc() : memref<10x10x6xi1>
    %alloc_11 = memref.alloc() : memref<10x10x6xi64>
    %alloc_12 = memref.alloc() : memref<10x10x6xi64>
    %alloc_13 = memref.alloc() : memref<16x10xi1>
    %alloc_14 = memref.alloc() : memref<6x16x10xi32>
    %alloc_15 = memref.alloc() : memref<16x10xf32>
    %alloc_16 = memref.alloc() : memref<6x16x10xi64>
    %alloc_17 = memref.alloc() : memref<10x10x6xi16>
    %16 = tensor.empty() : tensor<16x6xi1>
    %17 = linalg.copy ins(%8 : tensor<16x6xi1>) outs(%16 : tensor<16x6xi1>) -> tensor<16x6xi1>
    %alloc_18 = memref.alloc() : memref<10x6x16xi1>
    linalg.transpose ins(%11 : tensor<6x16x10xi1>) outs(%alloc_18 : memref<10x6x16xi1>) permutation = [2, 0, 1] 
    %alloc_19 = memref.alloc() : memref<i1>
    linalg.reduce ins(%4 : tensor<16x6xi1>) outs(%alloc_19 : memref<i1>) dimensions = [0, 1] 
      (%in: i1, %init: i1) {
        %257 = math.atan2 %12, %12 : tensor<16x6xf32>
        %c1_i64_51 = arith.constant 1 : i64
        %258 = vector.broadcast %c1_i64_51 : i64 to vector<i64>
        %259 = vector.transfer_write %258, %7[%c14, %c10] : vector<i64>, tensor<16x6xi64>
        %260 = affine.max affine_map<(d0, d1) -> (d1, d0 + (d1 ceildiv 128) floordiv 8, d1 * -2, (d1 ceildiv 128) ceildiv 32)>(%c15, %c11)
        %261 = scf.if %true -> (i32) {
          %264 = vector.broadcast %c1_i64_51 : i64 to vector<1xi64>
          %265 = vector.multi_reduction <mul>, %264, %c1_i64_51 [0] : vector<1xi64> to i64
          %266 = affine.load %alloc_9[%c10, %c15, %c4] : memref<10x10x6xi1>
          %267 = index.casts %c13 : index to i32
          %268 = arith.floordivsi %in, %true : i1
          %269 = math.exp2 %cst : f32
          %270 = arith.xori %c10222_i16, %c6901_i16 : i16
          %271 = vector.extract %264[0] : vector<1xi64>
          bufferization.dealloc_tensor %4 : tensor<16x6xi1>
          scf.yield %c605289834_i32 : i32
        } else {
          %264 = arith.floordivsi %in, %in : i1
          %extracted_53 = tensor.extract %7[%c11, %c5] : tensor<16x6xi64>
          %extracted_54 = tensor.extract %0[%c6, %c3] : tensor<16x10xf16>
          %265 = index.maxs %c6, %c8
          %266 = math.log %6 : tensor<6x16x10xf16>
          memref.assume_alignment %alloc_12, 2 : memref<10x10x6xi64>
          %267 = index.casts %260 : index to i32
          %268 = arith.remui %c844669243_i32, %c844669243_i32 : i32
          scf.yield %c844669243_i32 : i32
        }
        %262 = arith.remf %cst_0, %cst_1 : f16
        scf.execute_region {
          %264 = index.maxs %c5, %c0
          %265 = arith.remui %c844669243_i32, %c1191669277_i32 : i32
          %266 = index.ceildivs %c13, %c4
          %267 = arith.negf %cst_1 : f16
          %268 = vector.broadcast %cst : f32 to vector<10xf32>
          %269 = vector.transfer_write %268, %1[%264, %c0] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xf32>, tensor<16x10xf32>
          %270 = arith.minui %c-14907_i16, %c10222_i16 : i16
          %from_elements_53 = tensor.from_elements %c1429443777_i32, %c1429443777_i32, %c1429443777_i32, %c1191669277_i32, %261, %c2004578870_i32, %c844669243_i32, %c1429443777_i32, %c1191669277_i32, %c1191669277_i32, %c2004578870_i32, %c844669243_i32, %c1191669277_i32, %c2004578870_i32, %c1429443777_i32, %c1429443777_i32, %c851953729_i32, %261, %c605289834_i32, %c1191669277_i32, %261, %c2004578870_i32, %c844669243_i32, %c2004578870_i32, %c1429443777_i32, %c1191669277_i32, %261, %c605289834_i32, %c1429443777_i32, %c1191669277_i32, %c1429443777_i32, %c605289834_i32, %c2004578870_i32, %c1191669277_i32, %c605289834_i32, %c851953729_i32, %c1429443777_i32, %c851953729_i32, %261, %c851953729_i32, %261, %261, %c2004578870_i32, %261, %c851953729_i32, %c844669243_i32, %c851953729_i32, %c2004578870_i32, %261, %c1191669277_i32, %c1191669277_i32, %c1429443777_i32, %c844669243_i32, %c1429443777_i32, %c844669243_i32, %c2004578870_i32, %c2004578870_i32, %c1429443777_i32, %c605289834_i32, %c1191669277_i32, %c605289834_i32, %c2004578870_i32, %c851953729_i32, %c2004578870_i32, %c1429443777_i32, %c1191669277_i32, %c605289834_i32, %c851953729_i32, %c851953729_i32, %c605289834_i32, %261, %c851953729_i32, %c844669243_i32, %c605289834_i32, %c605289834_i32, %c2004578870_i32, %c1429443777_i32, %261, %c844669243_i32, %c851953729_i32, %c1191669277_i32, %c2004578870_i32, %c2004578870_i32, %c851953729_i32, %c851953729_i32, %c1429443777_i32, %c2004578870_i32, %c1429443777_i32, %c605289834_i32, %c2004578870_i32, %c1191669277_i32, %c2004578870_i32, %c851953729_i32, %c2004578870_i32, %c844669243_i32, %c851953729_i32, %c851953729_i32, %c2004578870_i32, %c844669243_i32, %261, %c1191669277_i32, %c851953729_i32, %c2004578870_i32, %c844669243_i32, %c2004578870_i32, %c605289834_i32, %c851953729_i32, %c2004578870_i32, %261, %c1191669277_i32, %c1429443777_i32, %c851953729_i32, %261, %c844669243_i32, %c1429443777_i32, %c1191669277_i32, %c851953729_i32, %c1429443777_i32, %c1429443777_i32, %261, %c1191669277_i32, %c844669243_i32, %c851953729_i32, %c2004578870_i32, %c1191669277_i32, %c1429443777_i32, %c605289834_i32, %c851953729_i32, %c851953729_i32, %261, %261, %c844669243_i32, %c844669243_i32, %c1429443777_i32, %c844669243_i32, %c844669243_i32, %c1191669277_i32, %c851953729_i32, %c605289834_i32, %261, %c2004578870_i32, %261, %c1429443777_i32, %261, %c1191669277_i32, %c844669243_i32, %c851953729_i32, %c1191669277_i32, %c851953729_i32, %c2004578870_i32, %c844669243_i32, %c1429443777_i32, %c2004578870_i32, %c605289834_i32, %c1429443777_i32, %c851953729_i32, %c851953729_i32, %c1191669277_i32, %c1429443777_i32, %c851953729_i32, %261, %c605289834_i32, %c851953729_i32, %c844669243_i32, %c605289834_i32, %c844669243_i32, %c605289834_i32, %c1429443777_i32, %c1429443777_i32, %c605289834_i32, %c844669243_i32, %c844669243_i32, %c851953729_i32, %c844669243_i32, %c844669243_i32, %c2004578870_i32, %c2004578870_i32, %261, %c851953729_i32, %c1191669277_i32, %c844669243_i32, %c1429443777_i32, %c605289834_i32, %c851953729_i32, %261, %c844669243_i32, %c844669243_i32, %c1191669277_i32, %c851953729_i32, %c844669243_i32, %c605289834_i32, %c1191669277_i32, %c844669243_i32, %c844669243_i32, %c851953729_i32, %c844669243_i32, %c851953729_i32, %c1429443777_i32, %c851953729_i32, %261, %c851953729_i32, %c2004578870_i32, %c2004578870_i32, %c605289834_i32, %c851953729_i32, %c1191669277_i32, %c844669243_i32, %c851953729_i32, %c2004578870_i32, %c2004578870_i32, %c605289834_i32, %c1429443777_i32, %c2004578870_i32, %261, %c844669243_i32, %c1191669277_i32, %c851953729_i32, %c1191669277_i32, %c1429443777_i32, %c844669243_i32, %261, %c844669243_i32, %c1191669277_i32, %c2004578870_i32, %c851953729_i32, %c851953729_i32, %c851953729_i32, %c844669243_i32, %c2004578870_i32, %c851953729_i32, %261, %c844669243_i32, %c2004578870_i32, %c1191669277_i32, %261, %c1429443777_i32, %c605289834_i32, %c844669243_i32, %c1191669277_i32, %c844669243_i32, %c1429443777_i32, %c851953729_i32, %261, %c844669243_i32, %c851953729_i32, %c851953729_i32, %c851953729_i32, %c605289834_i32, %c2004578870_i32, %c851953729_i32, %c2004578870_i32, %c1429443777_i32, %c605289834_i32, %c844669243_i32, %c605289834_i32, %c605289834_i32, %c1429443777_i32, %c605289834_i32, %c1429443777_i32, %c1429443777_i32, %c851953729_i32, %c851953729_i32, %c2004578870_i32, %c1191669277_i32, %c851953729_i32, %261, %261, %c2004578870_i32, %c605289834_i32, %c844669243_i32, %c1429443777_i32, %c844669243_i32, %c2004578870_i32, %c844669243_i32, %c1429443777_i32, %c2004578870_i32, %c2004578870_i32, %c1191669277_i32, %c1191669277_i32, %261, %c1191669277_i32, %c2004578870_i32, %c2004578870_i32, %c1191669277_i32, %c1191669277_i32, %c1191669277_i32, %c2004578870_i32, %c1429443777_i32, %c1191669277_i32, %c1429443777_i32, %c1429443777_i32, %c605289834_i32, %261, %c1191669277_i32, %c851953729_i32, %261, %c844669243_i32, %c2004578870_i32, %c1429443777_i32, %c2004578870_i32, %c844669243_i32, %c605289834_i32, %c2004578870_i32, %c605289834_i32, %c851953729_i32, %c851953729_i32, %261, %c1191669277_i32, %261, %c605289834_i32, %c605289834_i32, %c605289834_i32, %261, %c1191669277_i32, %c844669243_i32, %c2004578870_i32, %c851953729_i32, %c1191669277_i32, %c844669243_i32, %c605289834_i32, %c2004578870_i32, %c844669243_i32, %261, %c1191669277_i32, %c1191669277_i32, %c1429443777_i32, %c605289834_i32, %c851953729_i32, %c851953729_i32, %c1191669277_i32, %c851953729_i32, %c2004578870_i32, %c2004578870_i32, %c1429443777_i32, %c1429443777_i32, %c851953729_i32, %261, %c844669243_i32, %c1429443777_i32, %261, %261, %c844669243_i32, %c1429443777_i32, %c2004578870_i32, %261, %c844669243_i32, %c844669243_i32, %c844669243_i32, %c1429443777_i32, %c851953729_i32, %c605289834_i32, %c1429443777_i32, %c851953729_i32, %c1429443777_i32, %c605289834_i32, %c1191669277_i32, %c2004578870_i32, %c844669243_i32, %c851953729_i32, %c844669243_i32, %c2004578870_i32, %c2004578870_i32, %c1429443777_i32, %c851953729_i32, %c844669243_i32, %c2004578870_i32, %c2004578870_i32, %261, %261, %c1429443777_i32, %c851953729_i32, %c1191669277_i32, %c844669243_i32, %c844669243_i32, %c605289834_i32, %c1429443777_i32, %c605289834_i32, %261, %c851953729_i32, %c851953729_i32, %261, %c1191669277_i32, %261, %c605289834_i32, %c605289834_i32, %261, %c1191669277_i32, %c1191669277_i32, %c844669243_i32, %c1429443777_i32, %c1429443777_i32, %c605289834_i32, %261, %c1191669277_i32, %c851953729_i32, %c1191669277_i32, %c844669243_i32, %c844669243_i32, %c1191669277_i32, %c1429443777_i32, %261, %c2004578870_i32, %c605289834_i32, %c605289834_i32, %c605289834_i32, %c1191669277_i32, %261, %c1191669277_i32, %c2004578870_i32, %c2004578870_i32, %c1429443777_i32, %c2004578870_i32, %c1191669277_i32, %c844669243_i32, %c1191669277_i32, %c2004578870_i32, %c605289834_i32, %261, %c605289834_i32, %261, %c605289834_i32, %261, %c1429443777_i32, %c844669243_i32, %261, %c851953729_i32, %c2004578870_i32, %c2004578870_i32, %c605289834_i32, %c2004578870_i32, %c1191669277_i32, %c2004578870_i32, %c1191669277_i32, %c2004578870_i32, %c1191669277_i32, %261, %c1191669277_i32, %c844669243_i32, %c851953729_i32, %c605289834_i32, %c605289834_i32, %c605289834_i32, %c2004578870_i32, %261, %c2004578870_i32, %261, %c1191669277_i32, %c851953729_i32, %c1191669277_i32, %c1191669277_i32, %c605289834_i32, %c851953729_i32, %c844669243_i32, %c2004578870_i32, %c1429443777_i32, %c1429443777_i32, %261, %261, %c1429443777_i32, %c844669243_i32, %c851953729_i32, %c851953729_i32, %c851953729_i32, %c605289834_i32, %c1429443777_i32, %c2004578870_i32, %261, %c605289834_i32, %c851953729_i32, %c2004578870_i32, %c844669243_i32, %261, %c1191669277_i32, %c1429443777_i32, %c844669243_i32, %c851953729_i32, %c605289834_i32, %c1429443777_i32, %c2004578870_i32, %c851953729_i32, %c605289834_i32, %c844669243_i32, %c2004578870_i32, %c844669243_i32, %c2004578870_i32, %c605289834_i32, %c2004578870_i32, %c1429443777_i32, %c2004578870_i32, %261, %261, %c605289834_i32, %261, %c605289834_i32, %c844669243_i32, %c1191669277_i32, %c605289834_i32, %c1191669277_i32, %c1191669277_i32, %c1191669277_i32, %c1429443777_i32, %c851953729_i32, %261, %c1191669277_i32, %c605289834_i32, %c851953729_i32, %c605289834_i32, %c1429443777_i32, %c605289834_i32, %c1429443777_i32, %c2004578870_i32, %261, %c1429443777_i32, %c2004578870_i32, %c1429443777_i32, %c1429443777_i32, %c605289834_i32, %c844669243_i32, %261, %c2004578870_i32, %c605289834_i32, %c851953729_i32, %c2004578870_i32, %c851953729_i32, %c851953729_i32, %261, %261, %c1191669277_i32, %c1191669277_i32, %c2004578870_i32, %c1429443777_i32, %c2004578870_i32, %261, %c844669243_i32, %c2004578870_i32, %261, %c2004578870_i32, %c605289834_i32, %c851953729_i32, %c605289834_i32, %c2004578870_i32, %c1191669277_i32, %c2004578870_i32, %c1191669277_i32, %c1191669277_i32, %c844669243_i32, %c1429443777_i32, %c2004578870_i32, %c851953729_i32, %c851953729_i32, %c605289834_i32, %c844669243_i32, %c2004578870_i32, %c844669243_i32, %c851953729_i32, %261, %c851953729_i32, %261, %c605289834_i32, %c1429443777_i32, %261, %c1191669277_i32, %261, %c1191669277_i32, %c851953729_i32, %c2004578870_i32, %c851953729_i32, %c605289834_i32, %c1429443777_i32, %261, %c1429443777_i32, %261, %c605289834_i32, %c851953729_i32, %c605289834_i32, %c851953729_i32, %c1191669277_i32, %c1429443777_i32, %c1191669277_i32, %c844669243_i32, %c2004578870_i32, %c605289834_i32, %c605289834_i32, %c1191669277_i32, %c1191669277_i32, %c851953729_i32, %c2004578870_i32, %c1429443777_i32, %c605289834_i32, %261, %c2004578870_i32, %c2004578870_i32, %c1429443777_i32, %c1191669277_i32, %c2004578870_i32, %c605289834_i32, %c851953729_i32, %c1429443777_i32, %c1429443777_i32, %c1429443777_i32 : tensor<10x10x6xi32>
          %271 = vector.shuffle %268, %268 [2, 3, 6, 8, 14, 16, 17, 18] : vector<10xf32>, vector<10xf32>
          %272 = arith.ceildivsi %c10222_i16, %c-14907_i16 : i16
          %273 = bufferization.to_memref %11 : memref<6x16x10xi1>
          %274 = index.castu %c844669243_i32 : i32 to index
          %275 = vector.extract %268[3] : vector<10xf32>
          %276 = bufferization.to_memref %from_elements_53 : memref<10x10x6xi32>
          %inserted_54 = tensor.insert %c-14907_i16 into %3[%c6, %c5, %c0] : tensor<10x10x6xi16>
          %collapsed_55 = tensor.collapse_shape %15 [[0, 1]] : tensor<16x6xi16> into tensor<96xi16>
          %277 = vector.reduction <mul>, %268 : vector<10xf32> into f32
          scf.yield
        }
        %splat = tensor.splat %c844669243_i32 : tensor<16x6xi32>
        %263 = affine.min affine_map<(d0) -> (d0, ((d0 - 8) mod 128 + 6) * 2)>(%260)
        %false_52 = arith.constant false
        linalg.yield %false_52 : i1
      }
    %18 = scf.parallel (%arg3, %arg4) = (%c6, %c4) to (%c7, %c9) step (%c9, %c13) init (%alloc_16) -> memref<6x16x10xi64> {
      %c1_i64_51 = arith.constant 1 : i64
      %from_elements_52 = tensor.from_elements %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51, %c1_i64_51 : tensor<16x6xi64>
      %257 = vector.broadcast %false : i1 to vector<16x6xi1>
      %258 = vector.shuffle %257, %257 [0, 1, 4, 10, 15, 17, 20, 24, 29, 30, 31] : vector<16x6xi1>, vector<16x6xi1>
      %259 = math.tan %0 : tensor<16x10xf16>
      %260 = arith.andi %c1191669277_i32, %c1429443777_i32 : i32
      %261 = index.ceildivu %c6, %c0
      %262 = index.divs %c1, %c10
      %263 = arith.remsi %c1429443777_i32, %c1191669277_i32 : i32
      %264 = index.sub %c12, %c2
      %alloc_53 = memref.alloc() : memref<6xi32>
      %265 = memref.realloc %alloc_53 : memref<6xi32> to memref<10xi32>
      %266 = arith.minsi %c605289834_i32, %c851953729_i32 : i32
      %267 = affine.if affine_set<(d0) : (d0 + 4 >= 0, (d0 floordiv 2) mod 4 >= 0)>(%c13) -> memref<16x10xf32> {
        memref.assume_alignment %alloc_16, 16 : memref<6x16x10xi64>
        memref.assume_alignment %alloc_9, 16 : memref<10x10x6xi1>
        %271 = arith.cmpf oeq, %cst, %cst : f32
        %272 = arith.shrui %c605289834_i32, %c844669243_i32 : i32
        %273 = math.log2 %cst_0 : f16
        %274 = arith.remf %cst_1, %cst_2 : f16
        %275 = tensor.empty() : tensor<16x6xi32>
        %276 = math.fpowi %10, %275 : tensor<16x6xf16>, tensor<16x6xi32>
        %277 = index.sub %c2, %arg3
        affine.yield %alloc_15 : memref<16x10xf32>
      } else {
        memref.assume_alignment %alloc_9, 2 : memref<10x10x6xi1>
        %271 = arith.floordivsi %false, %true : i1
        %272 = arith.remf %cst_0, %cst_1 : f16
        %273 = arith.cmpi slt, %c605289834_i32, %c605289834_i32 : i32
        %274 = arith.remf %cst_1, %cst_2 : f16
        %splat = tensor.splat %c605289834_i32 : tensor<10x10x6xi32>
        %true_57 = index.bool.constant true
        %275 = vector.broadcast %c-14907_i16 : i16 to vector<10xi16>
        %276 = vector.reduction <maxui>, %275 : vector<10xi16> into i16
        affine.yield %alloc_15 : memref<16x10xf32>
      }
      %cast_54 = tensor.cast %from_elements_52 : tensor<16x6xi64> to tensor<?x?xi64>
      %268 = arith.minf %cst_0, %cst_2 : f16
      %true_55 = index.bool.constant true
      %269 = math.floor %10 : tensor<16x6xf16>
      %270 = math.exp2 %cst_0 : f16
      %alloc_56 = memref.alloc() : memref<6x16x10xi64>
      scf.reduce(%alloc_56)  : memref<6x16x10xi64> {
      ^bb0(%arg5: memref<6x16x10xi64>, %arg6: memref<6x16x10xi64>):
        %271 = vector.broadcast %cst : f32 to vector<10x10x6xf32>
        %272 = vector.transpose %271, [2, 1, 0] : vector<10x10x6xf32> to vector<6x10x10xf32>
        %collapsed_57 = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<6x16x10xf16> into tensor<96x10xf16>
        %273 = bufferization.clone %alloc_6 : memref<16x6xf16> to memref<16x6xf16>
        %274 = index.casts %c0 : index to i32
        %275 = math.atan2 %1, %1 : tensor<16x10xf32>
        %276 = tensor.empty() : tensor<16x6xi32>
        %277 = math.fpowi %10, %276 : tensor<16x6xf16>, tensor<16x6xi32>
        %278 = arith.maxf %cst, %cst : f32
        %279 = math.copysign %6, %6 : tensor<6x16x10xf16>
        %alloc_58 = memref.alloc() : memref<6x16x10xi64>
        scf.reduce.return %alloc_58 : memref<6x16x10xi64>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_9[%c9, %c8, %c11] : memref<10x10x6xi1>, vector<6xi1>
    affine.vector_store %19, %alloc_19[] : memref<i1>, vector<6xi1>
    %20 = tensor.empty() : tensor<16xi32>
    %21 = tensor.empty() : tensor<16xi32>
    %22 = tensor.empty() : tensor<i32>
    %23 = linalg.dot ins(%20, %21 : tensor<16xi32>, tensor<16xi32>) outs(%22 : tensor<i32>) -> tensor<i32>
    %24 = arith.divsi %c605289834_i32, %c851953729_i32 : i32
    %alloc_20 = memref.alloc() : memref<16x6xi1>
    memref.tensor_store %4, %alloc_20 : memref<16x6xi1>
    %25 = scf.execute_region -> index {
      %alloc_51 = memref.alloc() : memref<16x6xi64>
      memref.tensor_store %7, %alloc_51 : memref<16x6xi64>
      %false_52 = index.bool.constant false
      %257 = index.ceildivs %c7, %c1
      memref.tensor_store %5, %alloc_13 : memref<16x10xi1>
      %c0_i64 = arith.constant 0 : i64
      %258 = vector.transfer_read %alloc_16[%c6, %c0, %c8], %c0_i64 : memref<6x16x10xi64>, vector<10xi64>
      %259 = index.maxs %c4, %c8
      %260 = vector.transpose %19, [0] : vector<6xi1> to vector<6xi1>
      %261 = vector.create_mask %c8, %c3 : vector<16x6xi1>
      %262 = arith.maxui %false, %false : i1
      %263 = vector.broadcast %cst_1 : f16 to vector<16x10xf16>
      %264 = index.castu %c8 : index to i32
      %265 = math.sqrt %0 : tensor<16x10xf16>
      %false_53 = index.bool.constant false
      %266 = arith.shrsi %c-14907_i16, %c-14907_i16 : i16
      %267 = vector.broadcast %cst : f32 to vector<6x16x10xf32>
      %268 = vector.fma %267, %267, %267 : vector<6x16x10xf32>
      %269 = arith.shrui %c2004578870_i32, %c851953729_i32 : i32
      scf.yield %259 : index
    }
    %26 = index.castu %c1191669277_i32 : i32 to index
    %inserted = tensor.insert %c605289834_i32 into %9[%c6, %c1, %c2] : tensor<10x10x6xi32>
    %27 = arith.minf %cst, %cst : f32
    %28 = index.sub %c4, %c3
    %29 = index.divu %c5, %28
    %30 = math.round %6 : tensor<6x16x10xf16>
    %31 = arith.mulf %cst_2, %cst_0 : f16
    %32 = arith.minui %c605289834_i32, %c851953729_i32 : i32
    %33 = arith.andi %c1429443777_i32, %c851953729_i32 : i32
    %34 = index.sub %28, %25
    %35 = math.ctlz %9 : tensor<10x10x6xi32>
    %c1_i64 = arith.constant 1 : i64
    %36 = vector.broadcast %c1_i64 : i64 to vector<6xi64>
    %37 = vector.maskedload %alloc_11[%c7, %c2, %c2], %19, %36 : memref<10x10x6xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
    %38 = arith.maxf %cst_2, %cst_2 : f16
    %39 = index.sub %c15, %29
    %40 = math.roundeven %0 : tensor<16x10xf16>
    %41 = arith.shrsi %c1191669277_i32, %c605289834_i32 : i32
    %expanded = tensor.expand_shape %14 [[0], [1, 2]] : tensor<16x10xi16> into tensor<16x10x1xi16>
    %42 = arith.remui %c2004578870_i32, %c844669243_i32 : i32
    %43 = arith.andi %true, %false : i1
    %44 = arith.cmpi slt, %true, %false : i1
    %45 = index.casts %c851953729_i32 : i32 to index
    %46 = math.log %0 : tensor<16x10xf16>
    %47 = math.log10 %0 : tensor<16x10xf16>
    %48 = index.maxs %c10, %c8
    %49 = arith.mulf %cst, %cst : f32
    scf.if %true {
      %257 = arith.addi %false, %true : i1
      %258 = index.casts %c6901_i16 : i16 to index
      %259 = arith.addf %cst_2, %cst_2 : f16
      %260 = math.absf %10 : tensor<16x6xf16>
      %cast_51 = tensor.cast %8 : tensor<16x6xi1> to tensor<?x?xi1>
      %261 = math.ctpop %3 : tensor<10x10x6xi16>
      %262 = arith.remf %cst, %cst : f32
      %263 = index.floordivs %c4, %25
    } else {
      %257 = arith.cmpi ule, %c844669243_i32, %c2004578870_i32 : i32
      %alloc_51 = memref.alloc() : memref<16x10xf32>
      %258 = arith.cmpf false, %cst_1, %cst_0 : f16
      %259 = arith.remsi %c6901_i16, %c-14907_i16 : i16
      %from_elements_52 = tensor.from_elements %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64 : tensor<6x16x10xi64>
      %260 = arith.shrsi %true, %true : i1
      %true_53 = index.bool.constant true
      %261 = arith.shrui %false, %true : i1
    }
    %50 = arith.floordivsi %c28870_i16, %c28870_i16 : i16
    %51 = index.casts %c2 : index to i32
    %52 = arith.minsi %c1_i64, %c1_i64 : i64
    %53 = math.rsqrt %cst : f32
    %54 = scf.execute_region -> index {
      %257 = math.absi %2 : tensor<16x6xi1>
      %false_51 = index.bool.constant false
      %258 = math.absi %15 : tensor<16x6xi16>
      %259 = math.powf %cst_1, %cst_0 : f16
      %260 = vector.broadcast %cst : f32 to vector<10x10x6xf32>
      %261 = vector.fma %260, %260, %260 : vector<10x10x6xf32>
      %262 = index.casts %c6 : index to i32
      %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %19, %19, %false : vector<6xi1>, vector<6xi1> into i1
      memref.tensor_store %13, %alloc_17 : memref<10x10x6xi16>
      %264 = vector.create_mask %c1, %c1, %c2 : vector<10x10x6xi1>
      %265 = bufferization.clone %alloc_18 : memref<10x6x16xi1> to memref<10x6x16xi1>
      %266 = arith.andi %c1429443777_i32, %c1429443777_i32 : i32
      %267 = vector.broadcast %c2004578870_i32 : i32 to vector<6x16x10xi32>
      %268 = vector.reduction <minsi>, %37 : vector<6xi64> into i64
      memref.alloca_scope  {
        %from_elements_52 = tensor.from_elements %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst : tensor<10x10x6xf32>
        %271 = math.absi %13 : tensor<10x10x6xi16>
        %272 = math.exp %0 : tensor<16x10xf16>
        %273 = arith.minui %c844669243_i32, %c851953729_i32 : i32
        %274 = vector.broadcast %c1191669277_i32 : i32 to vector<16x10xi32>
        %275 = vector.multi_reduction <and>, %267, %274 [0] : vector<6x16x10xi32> to vector<16x10xi32>
        %alloc_53 = memref.alloc() : memref<16x6xi16>
        memref.copy %alloc_3, %alloc_53 : memref<16x6xi16> to memref<16x6xi16>
        %276 = index.castu %c10222_i16 : i16 to index
        %277 = math.expm1 %6 : tensor<6x16x10xf16>
        %278 = arith.minf %cst_1, %cst_1 : f16
        %true_54 = index.bool.constant true
        %279 = index.sub %48, %c14
        %280 = index.sub %c4, %c9
        %281 = math.round %10 : tensor<16x6xf16>
        %alloc_55 = memref.alloc() : memref<16x6xi16>
        memref.copy %alloc_3, %alloc_55 : memref<16x6xi16> to memref<16x6xi16>
        %282 = index.maxs %c1, %45
        %283 = tensor.empty() : tensor<16x6xi32>
        %284 = math.fpowi %12, %283 : tensor<16x6xf32>, tensor<16x6xi32>
        %285 = vector.transpose %36, [0] : vector<6xi64> to vector<6xi64>
        %alloc_56 = memref.alloc() : memref<10xi16>
        %286 = memref.realloc %alloc_56 : memref<10xi16> to memref<10xi16>
        %287 = arith.minf %cst_0, %cst_0 : f16
        %inserted_57 = tensor.insert %false_51 into %11[%c3, %c7, %c8] : tensor<6x16x10xi1>
        %288 = index.casts %c10222_i16 : i16 to index
        vector.print %37 : vector<6xi64>
        %289 = arith.shli %c851953729_i32, %c1429443777_i32 : i32
        %290 = arith.ceildivsi %c1429443777_i32, %c1429443777_i32 : i32
        %291 = vector.broadcast %cst_1 : f16 to vector<10x10xf16>
        vector.transfer_write %291, %alloc[%280, %c1, %c6] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<10x10xf16>, memref<10x10x6xf16>
        %292 = math.ctlz %c1_i64 : i64
        %293 = arith.cmpf ult, %cst_2, %cst_1 : f16
        %294 = index.divs %288, %c13
        %295 = math.ctlz %c1_i64 : i64
        %296 = math.ctlz %17 : tensor<16x6xi1>
        %cst_58 = arith.constant 4.742400e+04 : f16
        %inserted_59 = tensor.insert %cst_1 into %0[%c15, %c1] : tensor<16x10xf16>
      }
      %269 = scf.while (%arg3 = %alloc_13) : (memref<16x10xi1>) -> memref<16x10xi1> {
        %271 = math.absi %c1429443777_i32 : i32
        %272 = arith.remf %cst_0, %cst_0 : f16
        %273 = vector.shuffle %261, %260 [0, 1, 3, 4, 6, 8, 9, 10, 11, 12, 13, 14, 15, 18, 19] : vector<10x10x6xf32>, vector<10x10x6xf32>
        %274 = arith.floordivsi %c6901_i16, %c28870_i16 : i16
        bufferization.dealloc_tensor %7 : tensor<16x6xi64>
        memref.tensor_store %13, %alloc_4 : memref<10x10x6xi16>
        %collapsed_52 = tensor.collapse_shape %4 [[0, 1]] : tensor<16x6xi1> into tensor<96xi1>
        %alloc_53 = memref.alloc() : memref<6xi32>
        %275 = memref.realloc %alloc_53 : memref<6xi32> to memref<10xi32>
        scf.condition(%false_51) %alloc_13 : memref<16x10xi1>
      } do {
      ^bb0(%arg3: memref<16x10xi1>):
        %271 = arith.ceildivsi %c10222_i16, %c-14907_i16 : i16
        %272 = arith.floordivsi %true, %false : i1
        %273 = arith.cmpi sle, %c605289834_i32, %c2004578870_i32 : i32
        %inserted_52 = tensor.insert %false into %11[%c1, %c14, %c3] : tensor<6x16x10xi1>
        %274 = math.tanh %0 : tensor<16x10xf16>
        %275 = arith.shrui %c10222_i16, %c28870_i16 : i16
        %276 = index.ceildivu %28, %c3
        %277 = arith.remf %cst_2, %cst_2 : f16
        %alloc_53 = memref.alloc() : memref<10xi64>
        %278 = memref.realloc %alloc_53 : memref<10xi64> to memref<6xi64>
        %extracted_54 = tensor.extract %13[%c5, %c5, %c1] : tensor<10x10x6xi16>
        %279 = vector.create_mask %39, %45 : vector<16x10xi1>
        %280 = index.casts %extracted_54 : i16 to index
        %alloc_55 = memref.alloc() : memref<16x6xi1>
        memref.tensor_store %4, %alloc_55 : memref<16x6xi1>
        %281 = vector.broadcast %cst : f32 to vector<10xf32>
        %282 = vector.multi_reduction <maxf>, %260, %281 [0, 2] : vector<10x10x6xf32> to vector<10xf32>
        %cast_56 = tensor.cast %2 : tensor<16x6xi1> to tensor<?x?xi1>
        %283 = bufferization.to_memref %4 : memref<16x6xi1>
        scf.yield %arg3 : memref<16x10xi1>
      }
      %270 = arith.ceildivsi %c2004578870_i32, %c851953729_i32 : i32
      scf.yield %25 : index
    }
    %55 = memref.load %alloc[%c0, %c7, %c2] : memref<10x10x6xf16>
    %56 = affine.min affine_map<(d0) -> (-d0, d0 - (-d0) floordiv 64, 0)>(%c13)
    %57 = affine.for %arg3 = 0 to 102 iter_args(%arg4 = %48) -> (index) {
      affine.yield %arg4 : index
    }
    %58 = bufferization.clone %alloc_7 : memref<16x6xf16> to memref<16x6xf16>
    %expanded_21 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<10x10x6xi16> into tensor<10x10x6x1xi16>
    %59 = vector.transpose %19, [0] : vector<6xi1> to vector<6xi1>
    %60 = tensor.empty() : tensor<16x6xi16>
    %mapped = linalg.map ins(%15, %alloc_3, %alloc_3 : tensor<16x6xi16>, memref<16x6xi16>, memref<16x6xi16>) outs(%60 : tensor<16x6xi16>)
      (%in: i16, %in_51: i16, %in_52: i16) {
        %257 = arith.remsi %c10222_i16, %in_52 : i16
        %258 = index.castu %c844669243_i32 : i32 to index
        %259 = bufferization.clone %alloc_18 : memref<10x6x16xi1> to memref<10x6x16xi1>
        affine.for %arg3 = 0 to 2 {
        }
        %260 = vector.insertelement %c1_i64, %36[%25 : index] : vector<6xi64>
        %inserted_53 = tensor.insert %false into %2[%c10, %c5] : tensor<16x6xi1>
        %261 = bufferization.to_tensor %alloc_15 : memref<16x10xf32>
        %262 = affine.min affine_map<(d0, d1, d2) -> (d2 * 2, 0, d0 floordiv 8)>(%c12, %258, %26)
        %263 = scf.while (%arg3 = %c1_i64) : (i64) -> i64 {
          %289 = arith.cmpi sgt, %c605289834_i32, %c605289834_i32 : i32
          %from_elements_56 = tensor.from_elements %c851953729_i32, %c851953729_i32, %c2004578870_i32, %c844669243_i32, %c851953729_i32, %c605289834_i32, %c605289834_i32, %c1429443777_i32, %c605289834_i32, %c1429443777_i32, %c844669243_i32, %c1191669277_i32, %c1429443777_i32, %c1191669277_i32, %c2004578870_i32, %c1191669277_i32, %c2004578870_i32, %c844669243_i32, %c851953729_i32, %c851953729_i32, %c1191669277_i32, %c2004578870_i32, %c2004578870_i32, %c2004578870_i32, %c2004578870_i32, %c851953729_i32, %c844669243_i32, %c1191669277_i32, %c1191669277_i32, %c1191669277_i32, %c1191669277_i32, %c2004578870_i32, %c605289834_i32, %c844669243_i32, %c1191669277_i32, %c851953729_i32, %c1191669277_i32, %c844669243_i32, %c605289834_i32, %c851953729_i32, %c844669243_i32, %c2004578870_i32, %c1191669277_i32, %c1429443777_i32, %c1191669277_i32, %c605289834_i32, %c1191669277_i32, %c844669243_i32, %c1191669277_i32, %c2004578870_i32, %c605289834_i32, %c844669243_i32, %c844669243_i32, %c844669243_i32, %c605289834_i32, %c1191669277_i32, %c844669243_i32, %c2004578870_i32, %c844669243_i32, %c844669243_i32, %c605289834_i32, %c844669243_i32, %c605289834_i32, %c2004578870_i32, %c1429443777_i32, %c1191669277_i32, %c1429443777_i32, %c1191669277_i32, %c605289834_i32, %c844669243_i32, %c1191669277_i32, %c2004578870_i32, %c605289834_i32, %c851953729_i32, %c1191669277_i32, %c844669243_i32, %c605289834_i32, %c1429443777_i32, %c1429443777_i32, %c1191669277_i32, %c1191669277_i32, %c605289834_i32, %c851953729_i32, %c2004578870_i32, %c605289834_i32, %c851953729_i32, %c2004578870_i32, %c1191669277_i32, %c1429443777_i32, %c1429443777_i32, %c844669243_i32, %c844669243_i32, %c844669243_i32, %c844669243_i32, %c1429443777_i32, %c605289834_i32 : tensor<16x6xi32>
          %290 = math.copysign %0, %0 : tensor<16x10xf16>
          %291 = vector.shuffle %36, %37 [0, 2, 3, 5, 7] : vector<6xi64>, vector<6xi64>
          %292 = arith.remf %cst_1, %cst_1 : f16
          %293 = vector.create_mask %c2, %29 : vector<16x10xi1>
          %c0_i16_57 = arith.constant 0 : i16
          %c0_i16_58 = arith.constant 0 : i16
          %294 = vector.transfer_read %alloc_17[%c14, %54, %c4], %c0_i16_58 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : memref<10x10x6xi16>, vector<16x16xi16>
          %295 = arith.mulf %cst_0, %cst_2 : f16
          scf.condition(%false) %c1_i64 : i64
        } do {
        ^bb0(%arg3: i64):
          %289 = arith.shrsi %c1_i64, %arg3 : i64
          %290 = affine.load %alloc_14[%c7, %c8, %c11] : memref<6x16x10xi32>
          %291 = index.castu %in : i16 to index
          %292 = vector.matrix_multiply %19, %19 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi1>, vector<6xi1>) -> vector<1xi1>
          memref.tensor_store %1, %alloc_15 : memref<16x10xf32>
          %293 = math.log10 %12 : tensor<16x6xf32>
          %294 = math.log10 %cst_1 : f16
          %295 = arith.mulf %cst_2, %cst_1 : f16
          %296 = index.ceildivu %c11, %45
          %297 = vector.bitcast %36 : vector<6xi64> to vector<6xi64>
          %298 = index.maxs %c1, %c12
          %299 = math.atan2 %261, %1 : tensor<16x10xf32>
          %false_56 = index.bool.constant false
          %300 = arith.maxui %in, %c10222_i16 : i16
          %301 = math.exp %0 : tensor<16x10xf16>
          %302 = index.sub %298, %34
          scf.yield %arg3 : i64
        }
        %264 = tensor.empty() : tensor<10x10xf32>
        %265 = tensor.empty() : tensor<16x10xf32>
        %266 = linalg.matmul ins(%1, %264 : tensor<16x10xf32>, tensor<10x10xf32>) outs(%265 : tensor<16x10xf32>) -> tensor<16x10xf32>
        %267 = math.absi %9 : tensor<10x10x6xi32>
        memref.alloca_scope  {
          %289 = vector.broadcast %cst : f32 to vector<6x16x10xf32>
          %290 = vector.fma %289, %289, %289 : vector<6x16x10xf32>
          %291 = index.sub %c5, %c14
          %292 = arith.addi %c-14907_i16, %c10222_i16 : i16
          vector.print %36 : vector<6xi64>
          %alloc_56 = memref.alloc() : memref<10xi64>
          %293 = memref.realloc %alloc_56 : memref<10xi64> to memref<10xi64>
          %294 = arith.shrui %in_51, %in_52 : i16
          %295 = math.ctpop %2 : tensor<16x6xi1>
          %false_57 = index.bool.constant false
          %296 = index.divu %c14, %c9
          %297 = vector.flat_transpose %37 {columns = 2 : i32, rows = 3 : i32} : vector<6xi64> -> vector<6xi64>
          %298 = tensor.empty() : tensor<16x10xi32>
          %299 = math.fpowi %0, %298 : tensor<16x10xf16>, tensor<16x10xi32>
          %300 = vector.broadcast %cst : f32 to vector<16x10x16x10xf32>
          %301 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %290, %289, %300 : vector<6x16x10xf32>, vector<6x16x10xf32> into vector<16x10x16x10xf32>
          %true_58 = arith.constant true
          %302 = vector.transfer_read %2[%296, %29], %true_58 : tensor<16x6xi1>, vector<10xi1>
          %303 = arith.xori %c10222_i16, %c28870_i16 : i16
          %304 = index.divu %25, %c1
          %305 = arith.minsi %c605289834_i32, %c1429443777_i32 : i32
          %306 = tensor.empty() : tensor<16x6xi32>
          %307 = math.fpowi %10, %306 : tensor<16x6xf16>, tensor<16x6xi32>
          %308 = math.sqrt %0 : tensor<16x10xf16>
          %309 = arith.remf %cst_2, %cst_0 : f16
          %310 = math.copysign %10, %10 : tensor<16x6xf16>
          %c0_i16_59 = arith.constant 0 : i16
          %c0_i16_60 = arith.constant 0 : i16
          %311 = vector.transfer_read %expanded[%54, %296, %26], %c0_i16_60 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<16x10x1xi16>, vector<10xi16>
          %312 = arith.addf %cst_1, %cst_0 : f16
          %expanded_61 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<16x6xf32> into tensor<16x6x1xf32>
          %313 = index.maxs %54, %45
          memref.assume_alignment %alloc_3, 8 : memref<16x6xi16>
          %314 = arith.minui %c1429443777_i32, %c1191669277_i32 : i32
          %315 = math.log10 %265 : tensor<16x10xf32>
          %316 = arith.cmpi uge, %in, %c-14907_i16 : i16
          %317 = math.atan2 %cst_2, %cst_1 : f16
          %318 = math.fpowi %cst_2, %c851953729_i32 : f16, i32
          %319 = vector.broadcast %cst : f32 to vector<10x10x6xf32>
          %320 = vector.fma %319, %319, %319 : vector<10x10x6xf32>
          %321 = arith.remf %cst_0, %cst_0 : f16
        }
        %268 = index.divu %26, %c9
        %269 = index.mul %28, %c13
        %270 = bufferization.clone %alloc_3 : memref<16x6xi16> to memref<16x6xi16>
        %271 = math.log2 %12 : tensor<16x6xf32>
        %272 = arith.minui %in_52, %in : i16
        %273 = vector.flat_transpose %36 {columns = 2 : i32, rows = 3 : i32} : vector<6xi64> -> vector<6xi64>
        %274 = vector.insert %false, %19 [5] : i1 into vector<6xi1>
        %275 = arith.maxui %c605289834_i32, %c851953729_i32 : i32
        %276 = math.round %cst : f32
        %277 = index.ceildivs %c12, %c9
        %278 = math.log2 %cst_1 : f16
        %279 = index.ceildivs %258, %c12
        %280 = index.castu %54 : index to i32
        %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %36, %273, %c1_i64 : vector<6xi64>, vector<6xi64> into i64
        %282 = arith.minui %c844669243_i32, %c2004578870_i32 : i32
        %283 = bufferization.clone %58 : memref<16x6xf16> to memref<16x6xf16>
        %284 = tensor.empty() : tensor<6x16xi64>
        %285 = tensor.empty() : tensor<16x16xi64>
        %286 = linalg.matmul ins(%7, %284 : tensor<16x6xi64>, tensor<6x16xi64>) outs(%285 : tensor<16x16xi64>) -> tensor<16x16xi64>
        %inserted_54 = tensor.insert %true into %8[%c1, %c2] : tensor<16x6xi1>
        %287 = arith.minsi %c844669243_i32, %c851953729_i32 : i32
        %288 = index.sub %39, %c14
        %c1_i16_55 = arith.constant 1 : i16
        linalg.yield %c1_i16_55 : i16
      }
    %61 = math.ctlz %8 : tensor<16x6xi1>
    %62 = index.castu %39 : index to i32
    %63 = arith.cmpi ne, %c10222_i16, %c10222_i16 : i16
    %64 = vector.insertelement %true, %19[%34 : index] : vector<6xi1>
    %65 = arith.remf %cst_1, %cst_0 : f16
    %collapsed = tensor.collapse_shape %expanded_21 [[0, 1], [2], [3]] : tensor<10x10x6x1xi16> into tensor<100x6x1xi16>
    %66 = arith.shrui %c28870_i16, %c10222_i16 : i16
    %67 = arith.xori %true, %true : i1
    %68 = tensor.empty() : tensor<6x16x10xi1>
    %mapped_22 = linalg.map ins(%11, %11 : tensor<6x16x10xi1>, tensor<6x16x10xi1>) outs(%68 : tensor<6x16x10xi1>)
      (%in: i1, %in_51: i1) {
        bufferization.dealloc_tensor %68 : tensor<6x16x10xi1>
        %257 = arith.cmpf olt, %cst_2, %cst_0 : f16
        affine.store %false, %alloc_9[%c10, %c13, %c15] : memref<10x10x6xi1>
        %258 = vector.shuffle %19, %19 [0, 1, 5, 9] : vector<6xi1>, vector<6xi1>
        %from_elements_52 = tensor.from_elements %true, %false, %true, %in, %true, %in_51, %false, %in, %false, %false, %true, %in_51, %in_51, %false, %false, %in_51, %in_51, %in_51, %true, %true, %in, %false, %true, %true, %in, %false, %true, %false, %false, %true, %in_51, %in, %in_51, %true, %false, %false, %in, %false, %true, %false, %false, %in, %true, %in, %true, %in_51, %true, %false, %false, %true, %true, %in_51, %in, %in, %true, %in, %true, %true, %in_51, %true, %in_51, %false, %in_51, %false, %in, %true, %false, %in, %in, %true, %false, %in, %in, %true, %in_51, %in, %in, %true, %true, %in_51, %true, %in, %true, %true, %in, %true, %false, %in_51, %in_51, %in, %in, %in_51, %in_51, %in_51, %in, %true, %in_51, %in_51, %false, %true, %false, %false, %false, %true, %in, %false, %in, %in, %in, %in, %false, %in, %in_51, %in, %in, %false, %false, %true, %in, %true, %in, %in_51, %false, %in_51, %false, %in, %in, %false, %in_51, %in_51, %in_51, %in_51, %false, %true, %in, %in, %false, %in, %true, %in_51, %false, %in, %true, %in, %true, %in_51, %in_51, %in, %true, %in, %false, %false, %in_51, %in, %in_51, %in_51, %in, %false, %in, %true : tensor<16x10xi1>
        %259 = affine.min affine_map<(d0) -> (d0, d0 mod 8 + d0 + 64, (d0 mod 8 + d0 + 64 - 64) * 128)>(%45)
        bufferization.dealloc_tensor %1 : tensor<16x10xf32>
        %260 = arith.divui %false, %false : i1
        %extracted_53 = tensor.extract %3[%c5, %c0, %c0] : tensor<10x10x6xi16>
        %261 = arith.remsi %c1191669277_i32, %c1429443777_i32 : i32
        %262 = vector.multi_reduction <add>, %36, %c1_i64 [0] : vector<6xi64> to i64
        %263 = arith.maxui %in_51, %in_51 : i1
        %264 = vector.broadcast %false : i1 to vector<6x16x10xi1>
        %265 = index.ceildivu %c3, %c8
        %false_54 = index.bool.constant false
        %266 = index.mul %c6, %c0
        %alloc_55 = memref.alloc() : memref<10xi1>
        %267 = memref.realloc %alloc_55 : memref<10xi1> to memref<10xi1>
        %268 = math.sqrt %12 : tensor<16x6xf32>
        %269 = scf.index_switch %28 -> i32 
        case 1 {
          %286 = bufferization.clone %58 : memref<16x6xf16> to memref<16x6xf16>
          %287 = arith.minui %c844669243_i32, %c605289834_i32 : i32
          %alloc_57 = memref.alloc() : memref<10xi1>
          %288 = memref.realloc %alloc_57 : memref<10xi1> to memref<10xi1>
          %289 = arith.ceildivsi %c1_i64, %c1_i64 : i64
          %290 = arith.divui %c1191669277_i32, %c2004578870_i32 : i32
          %alloc_58 = memref.alloc() : memref<16x6xi1>
          memref.tensor_store %4, %alloc_58 : memref<16x6xi1>
          %291 = math.sqrt %1 : tensor<16x10xf32>
          %292 = arith.shrui %c1_i64, %c1_i64 : i64
          %293 = math.absi %14 : tensor<16x10xi16>
          %294 = math.powf %cst, %cst : f32
          %from_elements_59 = tensor.from_elements %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst : tensor<16x6xf32>
          %295 = vector.shuffle %37, %36 [0, 1, 4, 9, 10, 11] : vector<6xi64>, vector<6xi64>
          %296 = arith.mulf %cst, %cst : f32
          %297 = math.sqrt %cst_0 : f16
          %alloc_60 = memref.alloc() : memref<6x6xi16>
          %298 = tensor.empty() : tensor<16x6xi16>
          %299 = linalg.matmul ins(%60, %alloc_60 : tensor<16x6xi16>, memref<6x6xi16>) outs(%298 : tensor<16x6xi16>) -> tensor<16x6xi16>
          %300 = math.log10 %0 : tensor<16x10xf16>
          scf.yield %c1429443777_i32 : i32
        }
        case 2 {
          %splat = tensor.splat %in : tensor<16x6xi1>
          memref.assume_alignment %alloc_18, 1 : memref<10x6x16xi1>
          %286 = math.absi %false_54 : i1
          %287 = index.maxu %c10, %c9
          %288 = arith.minf %cst_0, %cst_1 : f16
          %289 = vector.broadcast %cst : f32 to vector<16x10xf32>
          %290 = vector.fma %289, %289, %289 : vector<16x10xf32>
          %291 = math.atan2 %0, %0 : tensor<16x10xf16>
          %292 = vector.broadcast %c10222_i16 : i16 to vector<10x10x6xi16>
          %inserted_57 = tensor.insert %c28870_i16 into %60[%c11, %c3] : tensor<16x6xi16>
          %293 = arith.cmpi ule, %c1429443777_i32, %c851953729_i32 : i32
          %294 = vector.transpose %292, [1, 2, 0] : vector<10x10x6xi16> to vector<10x6x10xi16>
          %295 = index.castu %false : i1 to index
          %296 = math.ctlz %20 : tensor<16xi32>
          %297 = math.powf %10, %10 : tensor<16x6xf16>
          %rank = tensor.rank %expanded_21 : tensor<10x10x6x1xi16>
          %expanded_58 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<16x6xi64> into tensor<16x6x1xi64>
          scf.yield %c844669243_i32 : i32
        }
        case 3 {
          %286 = arith.shrui %c844669243_i32, %c605289834_i32 : i32
          %287 = math.exp2 %0 : tensor<16x10xf16>
          %288 = arith.shrui %c1_i64, %c1_i64 : i64
          %289 = math.sqrt %0 : tensor<16x10xf16>
          %290 = math.sqrt %cst_0 : f16
          %291 = math.log %6 : tensor<6x16x10xf16>
          %292 = vector.extract %19[3] : vector<6xi1>
          %293 = vector.broadcast %c-14907_i16 : i16 to vector<16x10xi16>
          %294 = tensor.empty() : tensor<16x10xi32>
          %295 = math.fpowi %1, %294 : tensor<16x10xf32>, tensor<16x10xi32>
          %296 = vector.bitcast %19 : vector<6xi1> to vector<6xi1>
          %297 = vector.broadcast %c6901_i16 : i16 to vector<6x16x10xi16>
          %298 = arith.cmpf oge, %cst, %cst : f32
          %299 = vector.reduction <or>, %36 : vector<6xi64> into i64
          %300 = math.fma %cst, %cst, %cst : f32
          %from_elements_57 = tensor.from_elements %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_1, %cst_2, %cst_1, %cst_0, %cst_0, %cst_1, %cst_0, %cst_2, %cst_2, %cst_1, %cst_0, %cst_1, %cst_0, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_2, %cst_0, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_0, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_0, %cst_0, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_0, %cst_0, %cst_1, %cst_1, %cst_2, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_2, %cst_0, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_0, %cst_2, %cst_1, %cst_2, %cst_1, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_1, %cst_2, %cst_2, %cst_0, %cst_2, %cst_1, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_1, %cst_0, %cst_1, %cst_0, %cst_2, %cst_0, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_2, %cst_0, %cst_2, %cst_0, %cst_1, %cst_2, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst_2, %cst_0, %cst_1, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_1, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_0, %cst_0, %cst_1, %cst_2, %cst_1, %cst_2, %cst_0, %cst_2, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst_2, %cst_1, %cst_0, %cst_2, %cst_2, %cst_1, %cst_0, %cst_0, %cst_2, %cst_2, %cst_1, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_2, %cst_1, %cst_1, %cst_0, %cst_1, %cst_2, %cst_0, %cst_0, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst_2, %cst_2, %cst_1, %cst_2, %cst_0, %cst_2, %cst_1, %cst_0, %cst_1, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_1, %cst_2, %cst_0, %cst_0, %cst_1, %cst_1, %cst_2, %cst_0, %cst_1, %cst_2, %cst_1, %cst_2, %cst_0, %cst_1, %cst_1, %cst_0, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_1, %cst_2, %cst_0, %cst_2, %cst_1, %cst_0, %cst_0, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_0, %cst_1, %cst_1, %cst_2, %cst_2, %cst_0, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_2, %cst_0, %cst_1, %cst_0, %cst_2, %cst_2, %cst_1, %cst_0, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_0, %cst_1, %cst_0, %cst_0, %cst_1, %cst_2, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_1, %cst_1, %cst_1, %cst_2, %cst_0, %cst_0, %cst_2, %cst_1, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_0, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_1, %cst_1, %cst_1, %cst_2, %cst_0, %cst_2, %cst_2, %cst_1, %cst_0, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_2, %cst_1, %cst_0, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_2, %cst_1, %cst_2, %cst_2, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_2, %cst_1, %cst_0, %cst_1, %cst_2, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_1, %cst_1, %cst_0, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst_1, %cst_1, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_1, %cst_0, %cst_2, %cst_0, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_0, %cst_0, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_1, %cst_0, %cst_2, %cst_0, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_0, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_1, %cst_0, %cst_0, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_0, %cst_1, %cst_1, %cst_2, %cst_0, %cst_2, %cst_1, %cst_0, %cst_0, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_2, %cst_1, %cst_0, %cst_1, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_1, %cst_0, %cst_0, %cst_2, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_2, %cst_0, %cst_1, %cst_0, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_0, %cst_2, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_0, %cst_2, %cst_1, %cst_0, %cst_1, %cst_2, %cst_2, %cst_0, %cst_1, %cst_2, %cst_0, %cst_0, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_0, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_2, %cst_0, %cst_1, %cst_1, %cst_2, %cst_0, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_0, %cst_1, %cst_2, %cst_1, %cst_0, %cst_2, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_2, %cst_0, %cst_1, %cst_2, %cst_1, %cst_0, %cst_0, %cst_1, %cst_0, %cst_0, %cst_1, %cst_0, %cst_2, %cst_1, %cst_0, %cst_0, %cst_1, %cst_0, %cst_0, %cst_1, %cst_2, %cst_2, %cst_1, %cst_0, %cst_1, %cst_1, %cst_0, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst_1, %cst_2, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_1, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0, %cst_2, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst_1, %cst_0, %cst_0, %cst_2, %cst_1, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_1, %cst_2, %cst_0, %cst_1, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_1, %cst_2, %cst_1, %cst_0, %cst_1, %cst_2, %cst_1 : tensor<6x16x10xf16>
          %301 = arith.mulf %cst_0, %cst_0 : f16
          scf.yield %c1429443777_i32 : i32
        }
        default {
          %286 = bufferization.clone %alloc_6 : memref<16x6xf16> to memref<16x6xf16>
          %287 = vector.broadcast %c-14907_i16 : i16 to vector<16x10xi16>
          %288 = vector.broadcast %in : i1 to vector<16x10xi1>
          %289 = vector.broadcast %c1191669277_i32 : i32 to vector<16x10xi32>
          %290 = vector.gather %14[%45, %c3] [%289], %288, %287 : tensor<16x10xi16>, vector<16x10xi32>, vector<16x10xi1>, vector<16x10xi16> into vector<16x10xi16>
          %splat = tensor.splat %false_54 : tensor<6x16x10xi1>
          %splat_57 = tensor.splat %false : tensor<16x6xi1>
          %291 = math.powf %0, %0 : tensor<16x10xf16>
          %292 = arith.maxui %c844669243_i32, %c844669243_i32 : i32
          %293 = math.fma %cst_1, %cst_1, %cst_2 : f16
          %294 = math.sqrt %12 : tensor<16x6xf32>
          %295 = arith.cmpi ule, %c2004578870_i32, %c1429443777_i32 : i32
          %296 = arith.maxui %c605289834_i32, %c844669243_i32 : i32
          %297 = index.casts %26 : index to i32
          %298 = math.absf %cst_1 : f16
          %299 = arith.minf %cst_2, %cst_1 : f16
          %300 = index.casts %c605289834_i32 : i32 to index
          %alloc_58 = memref.alloc() : memref<10xf32>
          %301 = memref.realloc %alloc_58 : memref<10xf32> to memref<16xf32>
          %302 = arith.divui %c844669243_i32, %c1191669277_i32 : i32
          scf.yield %c2004578870_i32 : i32
        }
        %270 = index.maxs %39, %c9
        scf.if %true {
          %286 = vector.load %58[%c3, %c3] : memref<16x6xf16>, vector<6x16x10xf16>
          %c333447341_i64 = arith.constant 333447341 : i64
          %287 = index.casts %c10 : index to i32
          %288 = vector.broadcast %c2004578870_i32 : i32 to vector<16x6xi32>
          %289 = math.log %cst_2 : f16
          %from_elements_57 = tensor.from_elements %262, %262, %c1_i64, %262, %c1_i64, %262, %262, %262, %262, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %262, %262, %c1_i64, %262, %262, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %262, %262, %c1_i64, %262, %262, %c1_i64, %262, %262, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %262, %262, %c1_i64, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %262, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %262, %262, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %262, %c1_i64, %262, %262, %262, %262, %262, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %262, %262, %c1_i64, %262, %262, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %262, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %262, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %262, %c1_i64, %c1_i64, %262, %c1_i64, %262, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %262, %c1_i64, %262, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %262, %262, %262, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %262, %262, %262, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %262, %262, %262, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %262, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %262, %262, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %262, %262, %c1_i64, %262, %c1_i64, %262, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %262, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %262, %c1_i64, %262, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %262, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %c1_i64, %262, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %262, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %262, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %262, %262, %262, %262, %262, %262, %262, %c1_i64, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %c1_i64, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %262, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %262, %262, %262, %262, %262, %c1_i64, %262, %c1_i64, %262, %262, %262, %262, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %c1_i64, %c1_i64, %262, %262, %262, %262, %c1_i64, %262, %c1_i64, %262, %262, %262, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %c1_i64, %c1_i64, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %262, %262, %c1_i64, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %262, %262, %c1_i64, %262, %262, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %262, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %262, %c1_i64, %262, %c1_i64, %262, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %c1_i64, %262, %262, %262, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %262, %262, %c1_i64, %c1_i64, %262, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %c1_i64, %262, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %262, %262, %262, %c1_i64, %262, %262, %c1_i64, %262, %262, %262, %262, %262, %262, %c1_i64, %c1_i64, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %c1_i64, %262, %262, %262, %c1_i64 : tensor<6x16x10xi64>
          %290 = arith.xori %c10222_i16, %c28870_i16 : i16
          %alloc_58 = memref.alloc() : memref<10x10x6xi32>
          memref.tensor_store %9, %alloc_58 : memref<10x10x6xi32>
        }
        %271 = vector.create_mask %c6, %c15, %c9 : vector<10x10x6xi1>
        %272 = arith.ceildivsi %c1191669277_i32, %c1191669277_i32 : i32
        %273 = arith.ori %true, %in : i1
        %274 = index.sizeof
        %275 = math.log2 %cst_0 : f16
        %276 = tensor.empty() : tensor<16x10xi32>
        %277 = math.fpowi %1, %276 : tensor<16x10xf32>, tensor<16x10xi32>
        %278 = vector.broadcast %cst : f32 to vector<16x6xf32>
        %279 = vector.fma %278, %278, %278 : vector<16x6xf32>
        %280 = vector.broadcast %cst : f32 to vector<16x10xf32>
        %281 = vector.fma %280, %280, %280 : vector<16x10xf32>
        %282 = math.round %0 : tensor<16x10xf16>
        %283 = arith.minsi %false, %true : i1
        %284 = vector.broadcast %cst : f32 to vector<10x6xf32>
        %285 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %280, %279, %284 : vector<16x10xf32>, vector<16x6xf32> into vector<10x6xf32>
        %true_56 = arith.constant true
        linalg.yield %true_56 : i1
      }
    %69 = index.castu %c1429443777_i32 : i32 to index
    %70 = math.exp2 %12 : tensor<16x6xf32>
    %71 = index.maxs %c10, %34
    %72 = arith.cmpi ule, %false, %true : i1
    %73 = math.powf %10, %10 : tensor<16x6xf16>
    %74 = vector.shuffle %36, %36 [6, 7, 8] : vector<6xi64>, vector<6xi64>
    scf.index_switch %c0 
    case 1 {
      %257 = arith.shrsi %c851953729_i32, %c1429443777_i32 : i32
      %258 = math.exp %0 : tensor<16x10xf16>
      %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %37, %36, %c1_i64 : vector<6xi64>, vector<6xi64> into i64
      %260 = arith.remsi %c10222_i16, %c6901_i16 : i16
      %261 = index.sub %28, %69
      %262 = math.fpowi %cst_0, %c844669243_i32 : f16, i32
      %263 = arith.cmpi ne, %c1_i64, %c1_i64 : i64
      %264 = vector.broadcast %c1191669277_i32 : i32 to vector<16x10xi32>
      %265 = memref.load %alloc_19[] : memref<i1>
      %cast_51 = tensor.cast %16 : tensor<16x6xi1> to tensor<?x?xi1>
      %266 = affine.min affine_map<(d0, d1) -> (d1, d1, d1, d0 mod 32)>(%48, %c8)
      scf.execute_region {
        %270 = arith.divui %false, %true : i1
        %expanded_52 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<16x6xi64> into tensor<16x6x1xi64>
        %271 = arith.addi %c-14907_i16, %c-14907_i16 : i16
        %272 = math.fma %12, %12, %12 : tensor<16x6xf32>
        %273 = arith.cmpi ult, %c844669243_i32, %c1429443777_i32 : i32
        %274 = math.fpowi %cst_2, %c1429443777_i32 : f16, i32
        %275 = vector.insert %true, %19 [1] : i1 into vector<6xi1>
        %276 = arith.mulf %cst, %cst : f32
        vector.print %36 : vector<6xi64>
        %277 = math.sqrt %cst : f32
        %from_elements_53 = tensor.from_elements %c28870_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c6901_i16 : tensor<6x16x10xi16>
        %278 = vector.insertelement %c1_i64, %37[%39 : index] : vector<6xi64>
        %279 = bufferization.to_tensor %alloc_16 : memref<6x16x10xi64>
        %280 = arith.minui %c6901_i16, %c10222_i16 : i16
        %281 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 * 8)>(%c1, %26, %48, %25)
        %282 = math.powf %cst, %cst : f32
        scf.yield
      }
      %267 = bufferization.clone %alloc_9 : memref<10x10x6xi1> to memref<10x10x6xi1>
      %268 = vector.insert %c1_i64, %36 [1] : i64 into vector<6xi64>
      %269 = arith.maxf %cst_1, %cst_2 : f16
      affine.store %cst, %alloc_15[%c4, %c1] : memref<16x10xf32>
      scf.yield
    }
    default {
      scf.if %true {
        %271 = vector.reduction <add>, %37 : vector<6xi64> into i64
        %272 = vector.multi_reduction <maxsi>, %36, %c1_i64 [0] : vector<6xi64> to i64
        %alloc_51 = memref.alloc() : memref<6x16xi16>
        %273 = tensor.empty() : tensor<16x16xi16>
        %274 = linalg.matmul ins(%15, %alloc_51 : tensor<16x6xi16>, memref<6x16xi16>) outs(%273 : tensor<16x16xi16>) -> tensor<16x16xi16>
        %false_52 = arith.constant false
        %275 = arith.floordivsi %c28870_i16, %c-14907_i16 : i16
        %276 = vector.transpose %36, [0] : vector<6xi64> to vector<6xi64>
        bufferization.dealloc_tensor %23 : tensor<i32>
        %true_53 = index.bool.constant true
      }
      %257 = vector.create_mask %c14, %c8 : vector<16x10xi1>
      %258 = arith.remf %cst_1, %cst_0 : f16
      %259 = index.casts %c12 : index to i32
      %260 = math.powf %12, %12 : tensor<16x6xf32>
      %261 = math.fma %cst, %cst, %cst : f32
      %262 = arith.addi %c844669243_i32, %c605289834_i32 : i32
      %263 = arith.minui %c605289834_i32, %c2004578870_i32 : i32
      %264 = math.exp2 %6 : tensor<6x16x10xf16>
      %rank = tensor.rank %1 : tensor<16x10xf32>
      %265 = vector.broadcast %cst : f32 to vector<16x6xf32>
      %266 = vector.fma %265, %265, %265 : vector<16x6xf32>
      %267 = arith.floordivsi %true, %false : i1
      %splat = tensor.splat %c28870_i16 : tensor<16x10xi16>
      %268 = arith.minf %cst, %cst : f32
      %269 = math.absi %4 : tensor<16x6xi1>
      %270 = index.casts %c1429443777_i32 : i32 to index
    }
    %75 = arith.remf %cst_1, %cst_2 : f16
    %76 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 * 8)>(%c10, %c10, %c15, %25)
    %77 = index.ceildivs %c7, %c11
    %78 = vector.broadcast %true : i1 to vector<16x10xi1>
    %false_23 = index.bool.constant false
    %79 = vector.create_mask %28, %c12 : vector<16x10xi1>
    %80 = math.absi %7 : tensor<16x6xi64>
    %81 = math.expm1 %1 : tensor<16x10xf32>
    %82 = scf.while (%arg3 = %cst) : (f32) -> f32 {
      %expanded_51 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<6x16x10xi1> into tensor<6x16x10x1xi1>
      %257 = arith.minui %false_23, %false_23 : i1
      %258 = math.log2 %cst_0 : f16
      %259 = math.ipowi %13, %3 : tensor<10x10x6xi16>
      %260 = math.fpowi %cst, %c844669243_i32 : f32, i32
      %261 = arith.shrsi %c28870_i16, %c10222_i16 : i16
      %262 = vector.bitcast %37 : vector<6xi64> to vector<6xi64>
      %expanded_52 = tensor.expand_shape %68 [[0], [1], [2, 3]] : tensor<6x16x10xi1> into tensor<6x16x10x1xi1>
      scf.condition(%true) %arg3 : f32
    } do {
    ^bb0(%arg3: f32):
      %cst_51 = arith.constant 1.000000e+00 : f16
      %cst_52 = arith.constant 0.000000e+00 : f16
      %257 = vector.transfer_read %6[%29, %c8, %c5], %cst_52 {permutation_map = affine_map<(d0, d1, d2) -> (0, d1)>} : tensor<6x16x10xf16>, vector<6x10xf16>
      %from_elements_53 = tensor.from_elements %cst_2, %cst_1, %cst_51, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_0, %cst_0, %cst_51, %cst_1, %cst_1, %cst_0, %cst_1, %cst_51, %cst_0, %cst_1, %cst_51, %cst_2, %cst_51, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_2, %cst_1, %cst_51, %cst_2, %cst_1, %cst_0, %cst_1, %cst_51, %cst_1, %cst_2, %cst_0, %cst_2, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_1, %cst_51, %cst_2, %cst_51, %cst_51, %cst_51, %cst_2, %cst_1, %cst_1, %cst_51, %cst_0, %cst_0, %cst_1, %cst_1, %cst_2, %cst_1, %cst_0, %cst_51, %cst_51, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_1, %cst_51, %cst_51, %cst_2, %cst_51, %cst_1, %cst_51, %cst_1, %cst_51, %cst_0, %cst_0, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_51, %cst_51, %cst_0, %cst_1, %cst_0, %cst_0, %cst_1, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_51, %cst_1, %cst_1, %cst_2, %cst_1, %cst_51, %cst_51, %cst_2, %cst_0, %cst_51, %cst_51, %cst_2, %cst_0, %cst_1, %cst_1, %cst_51, %cst_1, %cst_1, %cst_1, %cst_51, %cst_1, %cst_0, %cst_51, %cst_51, %cst_1, %cst_2, %cst_1, %cst_51, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_51, %cst_2, %cst_2, %cst_1, %cst_51, %cst_0, %cst_1, %cst_1, %cst_1, %cst_2, %cst_51, %cst_0, %cst_1, %cst_51, %cst_0, %cst_0, %cst_0, %cst_1, %cst_51, %cst_51, %cst_51, %cst_2, %cst_51, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_51, %cst_1, %cst_1, %cst_51, %cst_51, %cst_1, %cst_51, %cst_0, %cst_51, %cst_2, %cst_1, %cst_51, %cst_2, %cst_51, %cst_0, %cst_51, %cst_51, %cst_51, %cst_1, %cst_2, %cst_2, %cst_2, %cst_51, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_51, %cst_1, %cst_1, %cst_51, %cst_1, %cst_0, %cst_0, %cst_51, %cst_2, %cst_1, %cst_0, %cst_1, %cst_0, %cst_2, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_51, %cst_2, %cst_51, %cst_2, %cst_1, %cst_0, %cst_51, %cst_0, %cst_2, %cst_51, %cst_51, %cst_51, %cst_51, %cst_1, %cst_0, %cst_51, %cst_51, %cst_2, %cst_51, %cst_1, %cst_2, %cst_51, %cst_2, %cst_1, %cst_0, %cst_1, %cst_51, %cst_51, %cst_1, %cst_2, %cst_51, %cst_0, %cst_2, %cst_1, %cst_51, %cst_51, %cst_0, %cst_2, %cst_2, %cst_51, %cst_51, %cst_1, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_51, %cst_0, %cst_2, %cst_51, %cst_1, %cst_0, %cst_1, %cst_51, %cst_0, %cst_0, %cst_2, %cst_2, %cst_1, %cst_0, %cst_2, %cst_1, %cst_51, %cst_2, %cst_2, %cst_51, %cst_0, %cst_51, %cst_1, %cst_2, %cst_2, %cst_2, %cst_51, %cst_0, %cst_51, %cst_0, %cst_51, %cst_51, %cst_51, %cst_51, %cst_2, %cst_1, %cst_1, %cst_51, %cst_51, %cst_51, %cst_0, %cst_1, %cst_2, %cst_51, %cst_2, %cst_51, %cst_1, %cst_51, %cst_51, %cst_2, %cst_1, %cst_51, %cst_51, %cst_1, %cst_0, %cst_0, %cst_2, %cst_51, %cst_51, %cst_2, %cst_2, %cst_2, %cst_51, %cst_51, %cst_0, %cst_51, %cst_0, %cst_51, %cst_1, %cst_51, %cst_1, %cst_1, %cst_1, %cst_0, %cst_2, %cst_2, %cst_0, %cst_51, %cst_2, %cst_2, %cst_0, %cst_51, %cst_0, %cst_1, %cst_51, %cst_2, %cst_51, %cst_0, %cst_51, %cst_2, %cst_51, %cst_2, %cst_1, %cst_0, %cst_1, %cst_2, %cst_0, %cst_2, %cst_1, %cst_2, %cst_51, %cst_1, %cst_0, %cst_0, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_0, %cst_51, %cst_1, %cst_0, %cst_1, %cst_51, %cst_2, %cst_0, %cst_1, %cst_0, %cst_1, %cst_51, %cst_2, %cst_51, %cst_2, %cst_0, %cst_1, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_51, %cst_51, %cst_2, %cst_2, %cst_1, %cst_2, %cst_0, %cst_51, %cst_51, %cst_0, %cst_51, %cst_51, %cst_1, %cst_0, %cst_2, %cst_0, %cst_2, %cst_51, %cst_51, %cst_51, %cst_51, %cst_0, %cst_2, %cst_1, %cst_2, %cst_51, %cst_2, %cst_1, %cst_0, %cst_51, %cst_51, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_51, %cst_1, %cst_51, %cst_51, %cst_51, %cst_0, %cst_51, %cst_1, %cst_0, %cst_51, %cst_1, %cst_51, %cst_0, %cst_51, %cst_51, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_1, %cst_2, %cst_2, %cst_0, %cst_2, %cst_1, %cst_0, %cst_51, %cst_1, %cst_2, %cst_1, %cst_51, %cst_0, %cst_51, %cst_0, %cst_51, %cst_2, %cst_0, %cst_51, %cst_2, %cst_2, %cst_0, %cst_2, %cst_51, %cst_0, %cst_2, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_51, %cst_1, %cst_0, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_51, %cst_51, %cst_0, %cst_0, %cst_2, %cst_2, %cst_1, %cst_0, %cst_51, %cst_1, %cst_0, %cst_51, %cst_2, %cst_0, %cst_51, %cst_51, %cst_2, %cst_51, %cst_1, %cst_0, %cst_51, %cst_0, %cst_2, %cst_2, %cst_51, %cst_51, %cst_2, %cst_2, %cst_51, %cst_1, %cst_0, %cst_1, %cst_2, %cst_1, %cst_0, %cst_0, %cst_1, %cst_51, %cst_0, %cst_0, %cst_1, %cst_51, %cst_2, %cst_0, %cst_51, %cst_51, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_51, %cst_1, %cst_1, %cst_51, %cst_1, %cst_0, %cst_2, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_51, %cst_1, %cst_1, %cst_2, %cst_1, %cst_0, %cst_51, %cst_2, %cst_51, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_51, %cst_51, %cst_2, %cst_51, %cst_0 : tensor<10x10x6xf16>
      %alloc_54 = memref.alloc() : memref<16xf32>
      %258 = memref.realloc %alloc_54 : memref<16xf32> to memref<6xf32>
      %259 = bufferization.to_memref %7 : memref<16x6xi64>
      %260 = math.powf %0, %0 : tensor<16x10xf16>
      %261 = scf.while (%arg4 = %c10222_i16) : (i16) -> i16 {
        %274 = arith.minsi %c851953729_i32, %c1429443777_i32 : i32
        %275 = math.log %6 : tensor<6x16x10xf16>
        %276 = arith.cmpi sge, %c10222_i16, %c10222_i16 : i16
        %277 = vector.multi_reduction <add>, %37, %c1_i64 [0] : vector<6xi64> to i64
        %cast_56 = tensor.cast %4 : tensor<16x6xi1> to tensor<?x?xi1>
        %278 = math.powf %cst, %arg3 : f32
        %279 = math.absi %c2004578870_i32 : i32
        %280 = vector.reduction <maxsi>, %19 : vector<6xi1> into i1
        scf.condition(%false_23) %c-14907_i16 : i16
      } do {
      ^bb0(%arg4: i16):
        %274 = math.absi %c6901_i16 : i16
        %275 = arith.addi %c605289834_i32, %c1429443777_i32 : i32
        %276 = math.powf %12, %12 : tensor<16x6xf32>
        %277 = index.castu %false_23 : i1 to index
        %278 = arith.addf %cst, %cst : f32
        %279 = math.atan2 %12, %12 : tensor<16x6xf32>
        vector.print %19 : vector<6xi1>
        vector.print %19 : vector<6xi1>
        %280 = vector.multi_reduction <minui>, %19, %false [0] : vector<6xi1> to i1
        %281 = index.sub %c8, %48
        %282 = memref.load %alloc_8[%c4, %c4, %c9] : memref<6x16x10xi32>
        %283 = math.ctpop %15 : tensor<16x6xi16>
        %284 = arith.minsi %c28870_i16, %c6901_i16 : i16
        %285 = math.log %0 : tensor<16x10xf16>
        %286 = index.casts %c10222_i16 : i16 to index
        %287 = math.ctlz %9 : tensor<10x10x6xi32>
        scf.yield %arg4 : i16
      }
      %262 = scf.index_switch %54 -> memref<16x10xf32> 
      case 1 {
        %expanded_56 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<6x16x10xf16> into tensor<6x16x10x1xf16>
        %274 = bufferization.clone %alloc_18 : memref<10x6x16xi1> to memref<10x6x16xi1>
        %inserted_57 = tensor.insert %c6901_i16 into %15[%c9, %c1] : tensor<16x6xi16>
        %275 = bufferization.clone %alloc_4 : memref<10x10x6xi16> to memref<10x10x6xi16>
        %276 = arith.cmpi ugt, %false_23, %true : i1
        %alloc_58 = memref.alloc() : memref<10xi16>
        %277 = memref.realloc %alloc_58 : memref<10xi16> to memref<10xi16>
        %rank = tensor.rank %16 : tensor<16x6xi1>
        %278 = vector.broadcast %arg3 : f32 to vector<10x10x6xf32>
        %279 = vector.fma %278, %278, %278 : vector<10x10x6xf32>
        %280 = arith.minui %c28870_i16, %c28870_i16 : i16
        %281 = vector.insertelement %false, %19[%c13 : index] : vector<6xi1>
        %inserted_59 = tensor.insert %c-14907_i16 into %3[%c0, %c6, %c3] : tensor<10x10x6xi16>
        %from_elements_60 = tensor.from_elements %c1191669277_i32, %c1191669277_i32, %c2004578870_i32, %c2004578870_i32, %c851953729_i32, %c844669243_i32, %c2004578870_i32, %c605289834_i32, %c851953729_i32, %c851953729_i32, %c851953729_i32, %c851953729_i32, %c2004578870_i32, %c844669243_i32, %c851953729_i32, %c851953729_i32, %c844669243_i32, %c1191669277_i32, %c851953729_i32, %c844669243_i32, %c605289834_i32, %c1191669277_i32, %c605289834_i32, %c1429443777_i32, %c2004578870_i32, %c1191669277_i32, %c1191669277_i32, %c851953729_i32, %c1429443777_i32, %c844669243_i32, %c1429443777_i32, %c1429443777_i32, %c844669243_i32, %c1429443777_i32, %c2004578870_i32, %c844669243_i32, %c605289834_i32, %c2004578870_i32, %c605289834_i32, %c851953729_i32, %c2004578870_i32, %c844669243_i32, %c844669243_i32, %c1191669277_i32, %c2004578870_i32, %c2004578870_i32, %c605289834_i32, %c844669243_i32, %c1429443777_i32, %c605289834_i32, %c844669243_i32, %c851953729_i32, %c2004578870_i32, %c605289834_i32, %c851953729_i32, %c851953729_i32, %c851953729_i32, %c1429443777_i32, %c851953729_i32, %c851953729_i32, %c851953729_i32, %c605289834_i32, %c1191669277_i32, %c605289834_i32, %c851953729_i32, %c1429443777_i32, %c1429443777_i32, %c2004578870_i32, %c2004578870_i32, %c1191669277_i32, %c1429443777_i32, %c851953729_i32, %c605289834_i32, %c605289834_i32, %c1191669277_i32, %c605289834_i32, %c851953729_i32, %c2004578870_i32, %c844669243_i32, %c2004578870_i32, %c1191669277_i32, %c844669243_i32, %c844669243_i32, %c605289834_i32, %c2004578870_i32, %c844669243_i32, %c851953729_i32, %c2004578870_i32, %c605289834_i32, %c851953729_i32, %c844669243_i32, %c1429443777_i32, %c851953729_i32, %c605289834_i32, %c844669243_i32, %c851953729_i32, %c844669243_i32, %c844669243_i32, %c1191669277_i32, %c851953729_i32, %c844669243_i32, %c1429443777_i32, %c851953729_i32, %c605289834_i32, %c2004578870_i32, %c2004578870_i32, %c844669243_i32, %c605289834_i32, %c844669243_i32, %c851953729_i32, %c2004578870_i32, %c1429443777_i32, %c1191669277_i32, %c605289834_i32, %c1191669277_i32, %c1429443777_i32, %c605289834_i32, %c2004578870_i32, %c1429443777_i32, %c844669243_i32, %c851953729_i32, %c851953729_i32, %c1429443777_i32, %c851953729_i32, %c844669243_i32, %c2004578870_i32, %c1429443777_i32, %c844669243_i32, %c2004578870_i32, %c1191669277_i32, %c605289834_i32, %c2004578870_i32, %c844669243_i32, %c1191669277_i32, %c1191669277_i32, %c1191669277_i32, %c851953729_i32, %c605289834_i32, %c1429443777_i32, %c2004578870_i32, %c605289834_i32, %c1429443777_i32, %c1191669277_i32, %c2004578870_i32, %c1191669277_i32, %c2004578870_i32, %c844669243_i32, %c851953729_i32, %c1429443777_i32, %c844669243_i32, %c851953729_i32, %c844669243_i32, %c605289834_i32, %c605289834_i32, %c1191669277_i32, %c844669243_i32, %c1429443777_i32, %c2004578870_i32, %c844669243_i32, %c1429443777_i32 : tensor<16x10xi32>
        %282 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d3 - d0, -(d3 - 36), d3)>(%c15, %c10, %56, %c1)
        %283 = math.ctpop %expanded : tensor<16x10x1xi16>
        %284 = index.sub %c7, %c2
        %285 = math.log2 %0 : tensor<16x10xf16>
        scf.yield %alloc_15 : memref<16x10xf32>
      }
      case 2 {
        %274 = affine.min affine_map<(d0, d1, d2, d3) -> (0, -(d2 mod 32))>(%c5, %c11, %c13, %54)
        %275 = math.cos %cst : f32
        %276 = index.sub %26, %25
        %277 = vector.broadcast %true : i1 to vector<10xi1>
        %278 = vector.maskedload %alloc_9[%c1, %c8, %c1], %277, %277 : memref<10x10x6xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %279 = math.cos %cst : f32
        %280 = index.maxs %c9, %274
        %cast_56 = tensor.cast %0 : tensor<16x10xf16> to tensor<?x?xf16>
        %281 = vector.create_mask %77, %77 : vector<16x10xi1>
        %282 = arith.andi %c851953729_i32, %c851953729_i32 : i32
        %283 = vector.shuffle %37, %37 [4, 10, 11] : vector<6xi64>, vector<6xi64>
        %284 = affine.load %alloc_12[%c4, %c6, %c7] : memref<10x10x6xi64>
        %285 = index.divu %c1, %77
        %collapsed_57 = tensor.collapse_shape %4 [[0, 1]] : tensor<16x6xi1> into tensor<96xi1>
        %286 = arith.minsi %true, %true : i1
        %287 = math.round %cst : f32
        %expanded_58 = tensor.expand_shape %68 [[0], [1], [2, 3]] : tensor<6x16x10xi1> into tensor<6x16x10x1xi1>
        scf.yield %alloc_15 : memref<16x10xf32>
      }
      case 3 {
        %274 = vector.multi_reduction <maxsi>, %36, %36 [] : vector<6xi64> to vector<6xi64>
        %true_56 = index.bool.constant true
        %275 = arith.shrui %c2004578870_i32, %c1191669277_i32 : i32
        %true_57 = index.bool.constant true
        %276 = arith.cmpi ult, %c1191669277_i32, %c605289834_i32 : i32
        %c39 = arith.constant 39 : index
        %inserted_58 = tensor.insert %c28870_i16 into %collapsed[%c39, %c0, %c0] : tensor<100x6x1xi16>
        %277 = vector.broadcast %cst : f32 to vector<10x10x6xf32>
        %278 = vector.fma %277, %277, %277 : vector<10x10x6xf32>
        %279 = bufferization.clone %alloc_5 : memref<6x16x10xf32> to memref<6x16x10xf32>
        %280 = arith.shrsi %true_56, %true_57 : i1
        %281 = arith.andi %true, %false : i1
        %282 = arith.minui %c6901_i16, %c28870_i16 : i16
        %283 = arith.cmpi sge, %c28870_i16, %c28870_i16 : i16
        %c0_i16_59 = arith.constant 0 : i16
        %284 = vector.transfer_read %14[%c13, %76], %c0_i16_59 : tensor<16x10xi16>, vector<16xi16>
        %285 = math.atan %10 : tensor<16x6xf16>
        %286 = vector.broadcast %cst : f32 to vector<10x10xf32>
        %dest_60, %accumulated_value_61 = vector.scan <maxf>, %278, %286 {inclusive = true, reduction_dim = 2 : i64} : vector<10x10x6xf32>, vector<10x10xf32>
        %287 = arith.floordivsi %c6901_i16, %c28870_i16 : i16
        scf.yield %alloc_15 : memref<16x10xf32>
      }
      default {
        %274 = arith.maxf %cst_51, %cst_51 : f16
        %alloc_56 = memref.alloc() : memref<i1>
        memref.copy %alloc_19, %alloc_56 : memref<i1> to memref<i1>
        %275 = bufferization.clone %alloc_8 : memref<6x16x10xi32> to memref<6x16x10xi32>
        %cast_57 = tensor.cast %1 : tensor<16x10xf32> to tensor<?x?xf32>
        %276 = math.fpowi %from_elements_53, %9 : tensor<10x10x6xf16>, tensor<10x10x6xi32>
        %277 = vector.broadcast %cst : f32 to vector<16x6xf32>
        %278 = vector.fma %277, %277, %277 : vector<16x6xf32>
        %from_elements_58 = tensor.from_elements %false_23, %true, %true, %true, %true, %true, %false_23, %false_23, %false, %false, %false, %false_23, %false, %false_23, %true, %false_23, %true, %false_23, %false, %false, %false, %true, %false, %true, %false_23, %false, %false, %false, %true, %false, %true, %false_23, %false_23, %false_23, %false, %false, %true, %true, %false, %false, %false_23, %true, %false, %true, %true, %true, %false_23, %false_23, %true, %false, %false_23, %false, %false, %true, %true, %false, %true, %false_23, %false_23, %true, %true, %true, %true, %false_23, %false_23, %true, %false_23, %false, %true, %false, %false, %false, %false_23, %false_23, %true, %true, %true, %true, %true, %false_23, %false_23, %false_23, %false_23, %false_23, %false, %true, %false, %false_23, %false, %false, %false, %true, %false, %true, %true, %false, %false, %false, %false_23, %true, %false_23, %false_23, %false, %false, %false_23, %false_23, %true, %true, %false, %false, %false_23, %false_23, %true, %false, %false_23, %true, %false_23, %true, %true, %true, %false_23, %false_23, %false, %false, %true, %true, %true, %false_23, %false_23, %false, %true, %true, %false, %true, %true, %true, %false, %false_23, %false, %true, %true, %true, %false_23, %true, %true, %true, %true, %false_23, %false, %false_23, %false_23, %false, %false_23, %false_23, %false_23, %false_23, %true, %false, %true, %true, %false_23, %false, %false_23, %false, %false_23, %false, %true, %false_23, %false_23, %false_23, %false_23, %false, %false, %true, %true, %false_23, %false, %false, %false, %false_23, %true, %false_23, %false, %false, %false, %false, %false, %false, %false, %false_23, %true, %false_23, %false_23, %false, %false, %true, %true, %true, %false_23, %false_23, %false_23, %true, %true, %true, %false, %false, %false_23, %false, %false_23, %true, %false_23, %false_23, %false_23, %false, %false_23, %true, %true, %false, %true, %false_23, %false, %true, %true, %false, %false_23, %false_23, %true, %false_23, %false, %true, %false_23, %true, %true, %false_23, %true, %false, %false, %false, %false_23, %false, %false, %false_23, %false, %true, %false_23, %false_23, %true, %false, %false, %false, %true, %false_23, %true, %true, %false_23, %false_23, %false_23, %false_23, %true, %true, %true, %false, %false_23, %false_23, %false_23, %false, %false, %false, %false, %false_23, %true, %false_23, %false, %false, %false, %true, %false_23, %false, %false_23, %false_23, %true, %false_23, %false_23, %false_23, %false_23, %false, %false, %false_23, %false_23, %false, %false, %true, %true, %true, %false, %false_23, %false_23, %true, %false_23, %true, %false, %true, %true, %false_23, %false_23, %true, %false, %false, %false_23, %false_23, %true, %false_23, %true, %false_23, %false_23, %true, %false, %false_23, %true, %false_23, %true, %false_23, %true, %true, %false_23, %false, %false_23, %false, %false, %false, %false, %false, %false_23, %true, %false, %false_23, %false_23, %true, %false_23, %false, %true, %true, %false, %false, %true, %true, %false, %false, %false, %false, %true, %false, %false, %false_23, %false, %false_23, %false, %true, %true, %false, %false_23, %true, %true, %false_23, %false_23, %true, %false, %true, %false, %true, %false_23, %false, %true, %false, %false, %false_23, %false, %false_23, %false_23, %false, %false_23, %true, %true, %false, %false_23, %true, %true, %true, %true, %false_23, %false_23, %false_23, %true, %true, %false, %false, %false, %true, %false_23, %false, %true, %true, %false, %false_23, %true, %false, %false, %true, %true, %false, %false, %false, %false_23, %false_23, %false, %false_23, %false, %true, %false_23, %false, %false, %false_23, %false_23, %true, %false, %true, %false, %false_23, %false_23, %true, %false_23, %true, %false, %false_23, %false, %false, %false, %false, %false, %false_23, %false_23, %true, %false, %true, %false_23, %false_23, %true, %true, %false, %true, %true, %false_23, %true, %false_23, %false_23, %false, %false, %false, %true, %false_23, %false, %true, %false_23, %false_23, %false, %false_23, %false, %true, %true, %true, %false_23, %false_23, %true, %false, %true, %false_23, %false_23, %false, %false_23, %false, %false_23, %false_23, %false_23, %true, %false, %false_23, %false_23, %true, %false_23, %true, %false_23, %false_23, %false_23, %false, %true, %false, %false_23, %false, %true, %false, %false, %false, %false_23, %false_23, %false, %false_23, %true, %false, %false, %false, %true, %false, %false, %false, %false, %true, %false_23, %false_23, %false, %true, %true, %false_23, %false, %true, %false, %true, %false_23, %true, %false, %false, %true, %false, %true, %false, %true, %false, %false_23, %true, %false, %true, %true, %true, %false, %true, %false_23, %false, %false, %true, %false_23, %false_23, %false, %false_23, %false_23, %false_23, %false, %true, %false, %true, %false, %true, %false_23, %true, %false_23, %false, %false_23, %false, %false_23, %false, %false_23, %false_23, %false, %false_23, %false, %false_23, %false_23, %false, %false, %true, %false, %false_23, %false, %false, %false_23, %true, %false_23, %false_23, %false, %false_23, %false, %false, %false, %false_23, %false, %false, %true, %true, %true, %false, %false, %false_23, %false_23, %false_23, %false_23, %true, %true, %true, %false, %true, %false, %false, %false, %true, %false, %false_23, %true, %false_23, %false_23, %true, %false_23, %false, %false, %true, %true, %true, %false_23, %false, %false_23, %true, %true, %false_23, %true, %true, %true, %true, %false, %false_23, %true, %false_23, %false, %false, %true, %false_23, %false_23, %true, %false_23, %true, %false, %true, %false, %true, %false, %false, %false, %false_23, %true, %false_23, %false, %true, %true, %false, %true, %false_23, %false, %false_23, %false, %false, %false_23, %false_23, %false_23, %false, %false_23, %false, %true, %false_23, %true, %false, %false_23, %false, %true, %false, %false_23, %false_23, %true, %true, %true, %false_23, %true, %false, %true, %false_23, %true, %false_23, %false, %false_23, %false_23, %true, %false, %false, %true, %false_23, %true, %true, %true, %true, %true, %false_23, %true, %false, %false, %true, %false_23, %false_23, %false_23, %true, %true, %false_23, %true, %true, %true, %false, %true, %true, %false_23, %false_23, %false_23, %false, %false, %true, %false_23, %false, %false, %false_23, %false_23, %false_23, %true, %true, %false, %true, %false, %false_23, %false_23, %false_23, %false, %false, %false, %false_23, %false_23, %false, %false, %false_23, %false, %false, %false_23, %true, %false, %false_23, %false, %false_23, %false_23, %false_23, %true, %false, %true, %false_23, %false, %false, %true, %false, %false_23, %false, %true, %true, %false_23, %true, %false, %false_23, %true, %false_23, %false_23, %false, %true, %false_23, %true, %true, %true, %false, %true, %true, %true, %false_23, %false_23, %false, %false, %false, %false, %false, %true, %true, %false_23, %true, %false_23, %true, %true, %false_23, %false_23, %false_23, %false, %false, %true, %false_23, %false, %true, %false_23, %true, %true, %false, %false_23, %true, %true, %false_23, %true, %true, %false_23, %false, %true, %false, %false_23, %true, %false, %false_23, %false_23, %false_23, %true, %false_23, %false, %false_23, %true, %false, %true, %false, %true, %false_23, %false_23, %false_23, %false_23, %false, %false, %false, %true, %true, %false_23, %false, %true, %false, %false_23, %true, %false_23, %false, %true, %true, %true, %false, %false_23, %true, %false, %true, %true, %false_23, %false_23, %false, %false, %false, %true, %false_23, %true, %false, %false_23, %false_23, %false, %false_23, %true, %false_23, %false, %false, %true, %false, %false_23, %true, %true, %true, %false, %false, %true, %false, %true, %true, %false_23, %true, %true, %false, %false, %true, %false_23, %false_23, %false_23, %true, %false, %false, %false_23, %true, %true, %false, %true, %true, %true, %true, %false_23, %false_23, %true, %false, %false_23, %false_23, %false, %false, %false, %true, %true, %false_23, %false_23, %true, %false, %false_23, %false, %false_23, %true, %true, %false, %false_23, %false_23, %true, %false_23, %true, %false, %false, %false_23, %false_23, %true, %true, %true, %true, %true, %false, %false, %false_23, %false, %false_23, %false_23, %true, %false, %true : tensor<6x16x10xi1>
        %279 = arith.minsi %c851953729_i32, %c605289834_i32 : i32
        %280 = math.fma %cst_51, %cst_0, %cst_2 : f16
        %281 = arith.minf %cst, %arg3 : f32
        vector.print %78 : vector<16x10xi1>
        memref.assume_alignment %alloc_12, 1 : memref<10x10x6xi64>
        %282 = math.log2 %10 : tensor<16x6xf16>
        %283 = math.ctlz %2 : tensor<16x6xi1>
        %284 = vector.extract %79[12] : vector<16x10xi1>
        %285 = arith.cmpi sgt, %c6901_i16, %c-14907_i16 : i16
        scf.yield %alloc_15 : memref<16x10xf32>
      }
      %263 = vector.extract %19[5] : vector<6xi1>
      %264 = arith.floordivsi %c605289834_i32, %c844669243_i32 : i32
      %265 = index.sub %c12, %c9
      %266 = vector.multi_reduction <maxui>, %37, %c1_i64 [0] : vector<6xi64> to i64
      %alloc_55 = memref.alloc() : memref<10x10xi1>
      %267 = tensor.empty() : tensor<16x10xi1>
      %268 = linalg.matmul ins(%5, %alloc_55 : tensor<16x10xi1>, memref<10x10xi1>) outs(%267 : tensor<16x10xi1>) -> tensor<16x10xi1>
      %269 = vector.broadcast %false : i1 to vector<6x6xi1>
      %270 = vector.outerproduct %19, %19, %269 {kind = #vector.kind<xor>} : vector<6xi1>, vector<6xi1>
      %271 = math.ctlz %collapsed : tensor<100x6x1xi16>
      %272 = math.ceil %0 : tensor<16x10xf16>
      %273 = vector.shuffle %79, %78 [0, 2, 3, 6, 8, 9, 12, 15, 16, 17, 18, 19, 23, 24, 28, 29, 30] : vector<16x10xi1>, vector<16x10xi1>
      scf.yield %cst : f32
    }
    %83 = index.sizeof
    %84 = bufferization.clone %alloc_13 : memref<16x10xi1> to memref<16x10xi1>
    %85 = vector.shuffle %37, %37 [3, 6, 7] : vector<6xi64>, vector<6xi64>
    %extracted = tensor.extract %5[%c1, %c7] : tensor<16x10xi1>
    %86 = math.ctlz %collapsed : tensor<100x6x1xi16>
    scf.index_switch %c4 
    case 1 {
      %cst_51 = arith.constant 1.600800e+04 : f16
      %257 = vector.broadcast %false_23 : i1 to vector<16xi1>
      %258 = vector.multi_reduction <maxui>, %79, %257 [1] : vector<16x10xi1> to vector<16xi1>
      %from_elements_52 = tensor.from_elements %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64 : tensor<6x16x10xi64>
      %259 = arith.mulf %cst_0, %cst_1 : f16
      %inserted_53 = tensor.insert %cst into %1[%c12, %c1] : tensor<16x10xf32>
      %260 = arith.divui %c-14907_i16, %c10222_i16 : i16
      %261 = index.divu %48, %56
      %262 = bufferization.clone %alloc : memref<10x10x6xf16> to memref<10x10x6xf16>
      %263 = math.ctpop %c-14907_i16 : i16
      %264 = math.exp %10 : tensor<16x6xf16>
      %265 = math.absi %5 : tensor<16x10xi1>
      %266 = arith.mulf %cst_2, %cst_2 : f16
      %267 = arith.shrui %c851953729_i32, %c1191669277_i32 : i32
      %268 = math.log10 %cst_0 : f16
      %269 = arith.addi %false_23, %extracted : i1
      %270 = vector.insertelement %c1_i64, %37[%c3 : index] : vector<6xi64>
      scf.yield
    }
    case 2 {
      %257 = affine.load %alloc_6[%c2, %c13] : memref<16x6xf16>
      %258 = arith.shrui %c605289834_i32, %c605289834_i32 : i32
      %259 = arith.andi %false, %true : i1
      %260 = math.fma %1, %1, %1 : tensor<16x10xf32>
      %261 = index.sub %83, %25
      %262 = tensor.empty() : tensor<16x10x1xi16>
      %mapped_51 = linalg.map ins(%expanded, %expanded : tensor<16x10x1xi16>, tensor<16x10x1xi16>) outs(%262 : tensor<16x10x1xi16>)
        (%in: i16, %in_53: i16) {
          %272 = math.rsqrt %1 : tensor<16x10xf32>
          %273 = math.ctpop %9 : tensor<10x10x6xi32>
          %274 = index.divs %39, %c4
          %275 = arith.minsi %in_53, %in_53 : i16
          %276 = arith.divui %c844669243_i32, %c2004578870_i32 : i32
          %277 = arith.andi %in_53, %c28870_i16 : i16
          %278 = math.ctpop %9 : tensor<10x10x6xi32>
          %279 = arith.maxf %257, %cst_2 : f16
          affine.store %false_23, %84[%c2, %c9] : memref<16x10xi1>
          %280 = arith.shrsi %c605289834_i32, %c605289834_i32 : i32
          %281 = index.divs %39, %54
          %282 = arith.maxui %c6901_i16, %in : i16
          %283 = math.rsqrt %257 : f16
          %284 = vector.multi_reduction <maxsi>, %19, %true [0] : vector<6xi1> to i1
          %285 = index.mul %c1, %281
          %286 = arith.remf %cst_1, %cst_1 : f16
          %287 = arith.shrui %c1191669277_i32, %c1429443777_i32 : i32
          %288 = math.fpowi %cst_1, %c605289834_i32 : f16, i32
          %289 = arith.maxui %284, %true : i1
          %290 = vector.multi_reduction <minsi>, %36, %36 [] : vector<6xi64> to vector<6xi64>
          %291 = vector.broadcast %in : i16 to vector<6x16x10xi16>
          %292 = math.ctpop %3 : tensor<10x10x6xi16>
          %293 = arith.addi %c844669243_i32, %c1191669277_i32 : i32
          %alloc_54 = memref.alloc() : memref<10xi16>
          %294 = memref.realloc %alloc_54 : memref<10xi16> to memref<10xi16>
          %295 = bufferization.clone %alloc_7 : memref<16x6xf16> to memref<16x6xf16>
          %296 = math.sqrt %10 : tensor<16x6xf16>
          %297 = arith.remf %cst_1, %cst_1 : f16
          %collapsed_55 = tensor.collapse_shape %12 [[0, 1]] : tensor<16x6xf32> into tensor<96xf32>
          %298 = bufferization.clone %alloc_13 : memref<16x10xi1> to memref<16x10xi1>
          %299 = index.castu %true : i1 to index
          %300 = index.sub %c3, %c6
          %301 = affine.min affine_map<(d0) -> (d0 * 16 + d0 floordiv 32 - 120, -(d0 * 16 + 8), d0 floordiv 32 - (d0 floordiv 32 + 8) - 120)>(%c13)
          %c0_i16_56 = arith.constant 0 : i16
          linalg.yield %c0_i16_56 : i16
        }
      %263 = index.divu %c11, %c10
      %264 = math.absi %expanded : tensor<16x10x1xi16>
      %265 = math.atan %10 : tensor<16x6xf16>
      %266 = math.sqrt %10 : tensor<16x6xf16>
      %267 = math.log2 %1 : tensor<16x10xf32>
      %268 = index.castu %c2004578870_i32 : i32 to index
      %269 = affine.load %alloc[%c5, %c8, %c14] : memref<10x10x6xf16>
      %cast_52 = tensor.cast %22 : tensor<i32> to tensor<i32>
      %270 = arith.maxui %false_23, %false : i1
      %271 = bufferization.clone %alloc_3 : memref<16x6xi16> to memref<16x6xi16>
      scf.yield
    }
    case 3 {
      %257 = index.floordivs %45, %c10
      %258 = arith.cmpi eq, %c1429443777_i32, %c851953729_i32 : i32
      %259 = vector.create_mask %76, %c6, %c14 : vector<6x16x10xi1>
      %260 = math.ctlz %c2004578870_i32 : i32
      %261 = arith.shrsi %false, %true : i1
      %262 = tensor.empty() : tensor<6x16x10xi1>
      %mapped_51 = linalg.map ins(%11 : tensor<6x16x10xi1>) outs(%262 : tensor<6x16x10xi1>)
        (%in: i1) {
          %273 = math.rsqrt %12 : tensor<16x6xf32>
          %274 = index.maxu %39, %c4
          %275 = vector.broadcast %false_23 : i1 to vector<10xi1>
          %dest_53, %accumulated_value_54 = vector.scan <add>, %79, %275 {inclusive = true, reduction_dim = 0 : i64} : vector<16x10xi1>, vector<10xi1>
          %276 = memref.load %alloc_10[%c9, %c5, %c3] : memref<10x10x6xi1>
          %277 = vector.load %alloc_15[%c15, %c9] : memref<16x10xf32>, vector<10x10x6xf32>
          %collapsed_55 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x16x10xi1> into tensor<96x10xi1>
          %278 = arith.minf %cst_2, %cst_2 : f16
          %279 = arith.shrsi %c1429443777_i32, %c1191669277_i32 : i32
          %280 = arith.remf %cst_1, %cst_2 : f16
          %281 = math.log2 %cst : f32
          %282 = arith.minsi %c10222_i16, %c-14907_i16 : i16
          %283 = math.floor %1 : tensor<16x10xf32>
          %284 = vector.transpose %79, [0, 1] : vector<16x10xi1> to vector<16x10xi1>
          %true_56 = index.bool.constant true
          %285 = bufferization.to_memref %8 : memref<16x6xi1>
          %286 = arith.ceildivsi %true, %true_56 : i1
          %cast_57 = tensor.cast %7 : tensor<16x6xi64> to tensor<?x?xi64>
          %287 = math.ctlz %22 : tensor<i32>
          %288 = math.log2 %12 : tensor<16x6xf32>
          %289 = arith.maxui %c605289834_i32, %c605289834_i32 : i32
          %290 = math.ctpop %c1429443777_i32 : i32
          %291 = arith.shrui %c1191669277_i32, %c844669243_i32 : i32
          %292 = math.sqrt %cst_0 : f16
          %293 = tensor.empty() : tensor<16x6xi32>
          %294 = math.fpowi %12, %293 : tensor<16x6xf32>, tensor<16x6xi32>
          %295 = math.rsqrt %cst_1 : f16
          memref.assume_alignment %285, 2 : memref<16x6xi1>
          %296 = math.exp2 %12 : tensor<16x6xf32>
          %297 = math.expm1 %6 : tensor<6x16x10xf16>
          %298 = index.casts %c14 : index to i32
          %299 = arith.remsi %false_23, %false : i1
          %300 = arith.cmpi slt, %c-14907_i16, %c6901_i16 : i16
          %301 = bufferization.to_tensor %alloc_13 : memref<16x10xi1>
          %false_58 = arith.constant false
          linalg.yield %false_58 : i1
        }
      %263 = math.fma %6, %6, %6 : tensor<6x16x10xf16>
      %264 = arith.minui %c1191669277_i32, %c1191669277_i32 : i32
      %265 = arith.shrsi %c1429443777_i32, %c1191669277_i32 : i32
      %266 = vector.extract %79[6] : vector<16x10xi1>
      %267 = affine.if affine_set<(d0, d1, d2, d3) : (-(d1 - (d0 + d2)) == 0, -(d1 - (d0 + d2)) >= 0, d1 + d1 - (d0 + d2) - 130 >= 0)>(%c4, %c4, %c15, %c12) -> memref<6x16x10xf16> {
        %273 = math.atan2 %10, %10 : tensor<16x6xf16>
        %274 = arith.shrsi %c851953729_i32, %c844669243_i32 : i32
        %275 = math.floor %6 : tensor<6x16x10xf16>
        %276 = index.castu %56 : index to i32
        %277 = arith.minsi %false_23, %true : i1
        %278 = math.floor %cst_2 : f16
        %279 = vector.flat_transpose %36 {columns = 2 : i32, rows = 3 : i32} : vector<6xi64> -> vector<6xi64>
        %280 = math.atan2 %12, %12 : tensor<16x6xf32>
        %alloc_53 = memref.alloc() : memref<6x16x10xf16>
        affine.yield %alloc_53 : memref<6x16x10xf16>
      } else {
        %from_elements_53 = tensor.from_elements %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64 : tensor<10x10x6xi64>
        %273 = vector.shuffle %78, %78 [1, 2, 5, 6, 8, 9, 12, 13, 14, 15, 20, 22, 25, 28, 29, 30] : vector<16x10xi1>, vector<16x10xi1>
        %274 = index.sizeof
        %275 = index.maxu %56, %c3
        %276 = arith.addi %extracted, %true : i1
        %277 = math.sqrt %12 : tensor<16x6xf32>
        %278 = math.absi %8 : tensor<16x6xi1>
        %279 = vector.extract_strided_slice %19 {offsets = [2], sizes = [2], strides = [1]} : vector<6xi1> to vector<2xi1>
        %alloc_54 = memref.alloc() : memref<6x16x10xf16>
        affine.yield %alloc_54 : memref<6x16x10xf16>
      }
      %268 = arith.xori %false, %false : i1
      %269 = index.maxs %25, %c14
      %270 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 floordiv 8 - 4, (-d1) mod 2)>(%c11, %48, %29, %77)
      %271 = math.log2 %12 : tensor<16x6xf32>
      %272 = tensor.empty() : tensor<6x16x10xf16>
      %mapped_52 = linalg.map ins(%6, %6 : tensor<6x16x10xf16>, tensor<6x16x10xf16>) outs(%272 : tensor<6x16x10xf16>)
        (%in: f16, %in_53: f16) {
          %273 = math.log10 %in_53 : f16
          %274 = index.maxu %c15, %25
          %275 = arith.mulf %cst_2, %cst_2 : f16
          %276 = math.atan2 %12, %12 : tensor<16x6xf32>
          %277 = math.tan %cst : f32
          %278 = math.exp %12 : tensor<16x6xf32>
          %from_elements_54 = tensor.from_elements %c1429443777_i32, %c2004578870_i32, %c2004578870_i32, %c1429443777_i32, %c1429443777_i32, %c605289834_i32, %c605289834_i32, %c844669243_i32, %c851953729_i32, %c605289834_i32, %c844669243_i32, %c2004578870_i32, %c1191669277_i32, %c1191669277_i32, %c2004578870_i32, %c851953729_i32, %c1429443777_i32, %c844669243_i32, %c844669243_i32, %c1191669277_i32, %c2004578870_i32, %c1429443777_i32, %c1191669277_i32, %c605289834_i32, %c605289834_i32, %c851953729_i32, %c2004578870_i32, %c1191669277_i32, %c1429443777_i32, %c1191669277_i32, %c605289834_i32, %c851953729_i32, %c1191669277_i32, %c2004578870_i32, %c844669243_i32, %c2004578870_i32, %c605289834_i32, %c1429443777_i32, %c2004578870_i32, %c2004578870_i32, %c1191669277_i32, %c851953729_i32, %c844669243_i32, %c2004578870_i32, %c1191669277_i32, %c851953729_i32, %c844669243_i32, %c851953729_i32, %c844669243_i32, %c2004578870_i32, %c605289834_i32, %c1429443777_i32, %c851953729_i32, %c1429443777_i32, %c1429443777_i32, %c605289834_i32, %c2004578870_i32, %c1429443777_i32, %c844669243_i32, %c2004578870_i32, %c851953729_i32, %c1429443777_i32, %c2004578870_i32, %c844669243_i32, %c1429443777_i32, %c844669243_i32, %c1429443777_i32, %c605289834_i32, %c1429443777_i32, %c605289834_i32, %c844669243_i32, %c1429443777_i32, %c2004578870_i32, %c844669243_i32, %c2004578870_i32, %c2004578870_i32, %c2004578870_i32, %c844669243_i32, %c851953729_i32, %c2004578870_i32, %c1429443777_i32, %c2004578870_i32, %c2004578870_i32, %c605289834_i32, %c1429443777_i32, %c2004578870_i32, %c2004578870_i32, %c605289834_i32, %c851953729_i32, %c605289834_i32, %c844669243_i32, %c844669243_i32, %c1191669277_i32, %c2004578870_i32, %c1191669277_i32, %c1191669277_i32 : tensor<16x6xi32>
          %279 = arith.shrsi %c844669243_i32, %c2004578870_i32 : i32
          %280 = arith.minui %false_23, %false : i1
          %281 = arith.minf %in, %in_53 : f16
          %282 = arith.maxui %c1429443777_i32, %c1191669277_i32 : i32
          %283 = vector.bitcast %78 : vector<16x10xi1> to vector<16x10xi1>
          %284 = affine.min affine_map<(d0, d1) -> (d1 - 34, d1, 16, d1 floordiv 128)>(%274, %76)
          %285 = vector.broadcast %c1_i64 : i64 to vector<16x10xi64>
          %286 = bufferization.clone %alloc_19 : memref<i1> to memref<i1>
          %splat = tensor.splat %cst_0 : tensor<10x10x6xf16>
          %287 = vector.transpose %285, [1, 0] : vector<16x10xi64> to vector<10x16xi64>
          %288 = arith.cmpi eq, %c6901_i16, %c6901_i16 : i16
          %289 = arith.remf %cst_0, %in_53 : f16
          %290 = arith.floordivsi %c-14907_i16, %c28870_i16 : i16
          %291 = index.casts %26 : index to i32
          %292 = affine.load %alloc_18[%c13, %c13, %c0] : memref<10x6x16xi1>
          %293 = vector.broadcast %c13 : index to vector<10xindex>
          %294 = vector.broadcast %cst_2 : f16 to vector<10xf16>
          vector.scatter %alloc_7[%c10, %c2] [%293], %266, %294 : memref<16x6xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
          %295 = math.ctlz %13 : tensor<10x10x6xi16>
          %296 = arith.cmpi ult, %c1_i64, %c1_i64 : i64
          %297 = arith.minf %cst, %cst : f32
          %298 = arith.andi %c6901_i16, %c6901_i16 : i16
          %splat_55 = tensor.splat %c2004578870_i32 : tensor<16x6xi32>
          %299 = bufferization.to_memref %272 : memref<6x16x10xf16>
          %300 = math.tan %272 : tensor<6x16x10xf16>
          %301 = arith.cmpi ne, %c-14907_i16, %c10222_i16 : i16
          %302 = math.atan2 %cst, %cst : f32
          %cst_56 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_56 : f16
        }
      scf.yield
    }
    case 4 {
      %257 = affine.apply affine_map<(d0, d1) -> (0)>(%c6, %c5)
      %alloc_51 = memref.alloc() : memref<6x16x10xf16>
      memref.tensor_store %6, %alloc_51 : memref<6x16x10xf16>
      memref.assume_alignment %alloc_16, 4 : memref<6x16x10xi64>
      vector.print %19 : vector<6xi1>
      %258 = math.powf %12, %12 : tensor<16x6xf32>
      %259 = affine.load %58[%c10, %c11] : memref<16x6xf16>
      %260 = math.round %259 : f16
      %extracted_52 = tensor.extract %2[%c13, %c1] : tensor<16x6xi1>
      %261 = arith.floordivsi %false_23, %false_23 : i1
      %262 = affine.load %alloc_4[%c6, %c11, %c2] : memref<10x10x6xi16>
      %263 = tensor.empty() : tensor<10x10xi16>
      %264 = tensor.empty() : tensor<16x10xi16>
      %265 = linalg.matmul ins(%14, %263 : tensor<16x10xi16>, tensor<10x10xi16>) outs(%264 : tensor<16x10xi16>) -> tensor<16x10xi16>
      %266 = arith.remui %c2004578870_i32, %c844669243_i32 : i32
      %267 = tensor.empty() : tensor<10x10xi16>
      %268 = tensor.empty() : tensor<16x10xi16>
      %269 = linalg.matmul ins(%264, %267 : tensor<16x10xi16>, tensor<10x10xi16>) outs(%268 : tensor<16x10xi16>) -> tensor<16x10xi16>
      %270 = vector.load %alloc_18[%c1, %c2, %c3] : memref<10x6x16xi1>, vector<16x10xi1>
      %271 = arith.andi %extracted_52, %true : i1
      %272 = arith.cmpi slt, %c1191669277_i32, %c2004578870_i32 : i32
      scf.yield
    }
    default {
      %257 = tensor.empty() : tensor<16x6xi32>
      %258 = math.fpowi %12, %257 : tensor<16x6xf32>, tensor<16x6xi32>
      %259 = vector.extract %19[3] : vector<6xi1>
      %260 = arith.ceildivsi %c1191669277_i32, %c2004578870_i32 : i32
      %261 = arith.maxui %c844669243_i32, %c2004578870_i32 : i32
      %262 = bufferization.clone %alloc_8 : memref<6x16x10xi32> to memref<6x16x10xi32>
      %263 = vector.broadcast %false : i1 to vector<16x6xi1>
      %264 = math.log2 %0 : tensor<16x10xf16>
      %265 = index.castu %c6 : index to i32
      %266 = arith.addf %cst_0, %cst_1 : f16
      %267 = bufferization.clone %262 : memref<6x16x10xi32> to memref<6x16x10xi32>
      %268 = memref.alloca_scope  -> (memref<6x16x10xi16>) {
        %274 = index.mul %c3, %c15
        %275 = index.casts %false : i1 to index
        %276 = index.sub %c11, %76
        %277 = vector.broadcast %cst : f32 to vector<16x6xf32>
        %278 = vector.fma %277, %277, %277 : vector<16x6xf32>
        %279 = bufferization.clone %alloc_7 : memref<16x6xf16> to memref<16x6xf16>
        %280 = arith.remsi %c2004578870_i32, %c605289834_i32 : i32
        %281 = index.maxu %83, %c2
        %282 = index.divs %29, %69
        %283 = bufferization.to_memref %3 : memref<10x10x6xi16>
        %284 = math.powf %cst_0, %cst_1 : f16
        %285 = arith.xori %c6901_i16, %c10222_i16 : i16
        %inserted_51 = tensor.insert %c6901_i16 into %expanded[%c9, %c8, %c0] : tensor<16x10x1xi16>
        %286 = arith.remui %false_23, %extracted : i1
        %287 = index.divu %45, %c4
        %288 = math.floor %6 : tensor<6x16x10xf16>
        %289 = arith.shrsi %false_23, %false_23 : i1
        %290 = index.divu %28, %c9
        %291 = index.casts %48 : index to i32
        %292 = memref.atomic_rmw ori %c1191669277_i32, %267[%c4, %c7, %c9] : (i32, memref<6x16x10xi32>) -> i32
        %293 = index.divu %34, %c1
        %294 = vector.broadcast %c1_i64 : i64 to vector<6x6xi64>
        %295 = vector.outerproduct %37, %37, %294 {kind = #vector.kind<add>} : vector<6xi64>, vector<6xi64>
        %from_elements_52 = tensor.from_elements %false, %false_23, %true, %extracted, %false_23, %true, %true, %true, %extracted, %extracted, %extracted, %extracted, %false, %false, %false_23, %false, %false, %false_23, %false_23, %false_23, %true, %extracted, %false, %false, %false_23, %false, %false_23, %false_23, %extracted, %extracted, %extracted, %true, %true, %extracted, %extracted, %false_23, %true, %extracted, %true, %false, %false, %true, %extracted, %true, %false, %extracted, %true, %false_23, %false, %false_23, %false_23, %true, %false, %extracted, %true, %extracted, %extracted, %false_23, %false, %true, %false, %true, %false_23, %false, %extracted, %true, %extracted, %true, %extracted, %false, %true, %false_23, %true, %false_23, %false_23, %false, %false_23, %false, %extracted, %true, %false_23, %extracted, %true, %false_23, %extracted, %true, %true, %extracted, %false_23, %extracted, %false, %extracted, %false, %true, %extracted, %false_23, %false, %false_23, %false, %false_23, %true, %extracted, %true, %false, %false, %false_23, %true, %false, %false_23, %false, %extracted, %false_23, %false, %false_23, %false, %false_23, %false_23, %false, %true, %true, %extracted, %extracted, %true, %false, %extracted, %extracted, %false_23, %false_23, %false, %false, %false, %extracted, %false, %false_23, %true, %extracted, %false, %extracted, %extracted, %extracted, %true, %true, %extracted, %false_23, %true, %extracted, %extracted, %false, %true, %false, %extracted, %extracted, %extracted, %false_23, %true, %false, %true, %false_23, %true, %true, %true, %false_23, %extracted, %extracted, %extracted, %extracted, %false, %extracted, %false, %false_23, %false_23, %false, %false, %false_23, %true, %false_23, %false_23, %extracted, %extracted, %true, %extracted, %false, %false_23, %true, %false, %false, %false_23, %false_23, %false_23, %true, %extracted, %extracted, %false_23, %extracted, %false, %false, %extracted, %true, %extracted, %true, %extracted, %true, %true, %true, %extracted, %false, %extracted, %true, %true, %extracted, %false_23, %false_23, %extracted, %false_23, %extracted, %false_23, %true, %extracted, %false_23, %extracted, %extracted, %true, %false, %true, %extracted, %extracted, %true, %extracted, %extracted, %false, %true, %true, %false_23, %false, %false_23, %false_23, %false, %true, %false_23, %true, %true, %false_23, %true, %extracted, %extracted, %false_23, %extracted, %true, %false_23, %false_23, %false_23, %false_23, %false_23, %false_23, %extracted, %false, %false, %extracted, %false, %true, %false_23, %true, %false, %true, %false_23, %extracted, %extracted, %true, %false, %false_23, %true, %true, %extracted, %false_23, %false_23, %false, %false, %false_23, %false_23, %false, %false, %false, %extracted, %false, %true, %true, %extracted, %false_23, %true, %extracted, %true, %false_23, %false_23, %true, %extracted, %false, %false_23, %true, %true, %false, %false, %false_23, %false_23, %extracted, %false, %true, %extracted, %extracted, %true, %false_23, %true, %true, %false_23, %true, %false_23, %extracted, %true, %true, %false_23, %false, %false_23, %false, %true, %extracted, %extracted, %true, %false, %false_23, %true, %false_23, %false, %extracted, %extracted, %extracted, %extracted, %true, %false_23, %false_23, %false, %extracted, %true, %true, %extracted, %false, %false, %false_23, %true, %extracted, %false, %true, %extracted, %false, %false_23, %true, %false, %true, %false_23, %extracted, %extracted, %true, %extracted, %extracted, %true, %extracted, %false, %false, %true, %false_23, %false_23, %extracted, %false, %false, %true, %true, %true, %extracted, %true, %false_23, %false, %false_23, %false, %extracted, %false_23, %true, %true, %extracted, %extracted, %false, %true, %false_23, %extracted, %extracted, %true, %extracted, %extracted, %extracted, %false, %false_23, %false, %extracted, %false_23, %extracted, %extracted, %true, %extracted, %true, %extracted, %false, %false, %true, %false_23, %false, %extracted, %false_23, %false_23, %false, %extracted, %false, %false_23, %false_23, %extracted, %extracted, %false, %false_23, %true, %true, %false_23, %false, %false, %false, %true, %extracted, %true, %false_23, %false, %extracted, %false_23, %false_23, %false_23, %extracted, %extracted, %false, %true, %extracted, %false_23, %true, %extracted, %false_23, %extracted, %false, %false, %true, %false_23, %true, %extracted, %extracted, %false_23, %true, %false_23, %true, %extracted, %extracted, %true, %false_23, %false_23, %true, %true, %true, %extracted, %extracted, %extracted, %false, %false_23, %extracted, %true, %false, %true, %extracted, %false_23, %extracted, %false, %true, %true, %false, %true, %false_23, %extracted, %true, %false, %false_23, %extracted, %false_23, %true, %extracted, %false_23, %extracted, %false_23, %false_23, %true, %false_23, %extracted, %true, %true, %true, %true, %true, %false_23, %extracted, %extracted, %false, %false_23, %false, %true, %extracted, %false_23, %true, %false, %true, %false, %true, %extracted, %false, %false_23, %true, %true, %false_23, %false_23, %false_23, %extracted, %false_23, %false_23, %true, %extracted, %false_23, %false, %false_23, %false_23, %false, %true, %false, %true, %false_23, %extracted, %false, %false_23, %false, %false_23, %false, %false, %false_23, %false, %false_23, %true, %extracted, %false_23, %false, %extracted, %true, %true, %false_23, %false, %true, %true, %false, %true, %true, %true, %true, %false_23, %false, %extracted, %false_23, %false, %false, %true, %false, %false_23, %false, %false_23, %true, %false_23, %extracted, %false_23, %extracted, %false_23, %false, %false_23, %extracted, %extracted, %false_23, %true, %false, %true, %false, %true, %true, %false, %false_23, %false_23, %false, %false_23, %false, %false_23, %true, %false, %false, %false, %false, %true, %extracted, %true, %extracted, %false_23, %false, %extracted, %true, %false, %false, %false_23, %false, %true, %false, %true, %extracted, %false, %true, %false_23, %false_23, %false, %false, %false_23, %false, %extracted, %extracted, %false, %false, %false_23, %extracted, %false, %false_23, %false_23, %extracted, %false_23, %false, %false, %true, %false, %extracted, %false, %false_23, %false_23, %extracted, %false, %false_23, %false_23, %true, %extracted, %true, %false, %false, %false, %false_23, %true, %false_23, %true, %extracted, %extracted, %extracted, %false, %extracted, %false_23, %extracted, %extracted, %extracted, %false_23, %extracted, %false_23, %false, %extracted, %extracted, %true, %extracted, %false, %true, %true, %false_23, %true, %true, %false, %true, %true, %false_23, %true, %false, %extracted, %true, %extracted, %false_23, %false, %false_23, %extracted, %false, %false_23, %false_23, %false, %extracted, %false, %extracted, %false, %false_23, %false, %extracted, %false, %true, %true, %true, %extracted, %false_23, %extracted, %true, %extracted, %false, %false, %extracted, %false, %false_23, %extracted, %false_23, %false_23, %false_23, %true, %false_23, %true, %true, %false_23, %extracted, %true, %false_23, %false, %extracted, %false_23, %true, %false_23, %false, %true, %true, %extracted, %true, %extracted, %extracted, %false, %extracted, %extracted, %extracted, %extracted, %false_23, %true, %extracted, %true, %true, %true, %true, %false_23, %extracted, %false, %extracted, %true, %true, %true, %extracted, %extracted, %true, %extracted, %false_23, %true, %extracted, %false_23, %true, %true, %extracted, %false, %true, %false, %false, %true, %true, %false_23, %extracted, %true, %false, %true, %true, %true, %extracted, %extracted, %false_23, %false, %false_23, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %true, %false_23, %true, %false_23, %true, %true, %extracted, %extracted, %false, %false, %false, %false_23, %false_23, %true, %false, %false, %extracted, %extracted, %false, %true, %false, %false_23, %extracted, %false_23, %extracted, %false, %true, %true, %false, %false, %true, %false, %false_23, %extracted, %false, %true, %true, %extracted, %extracted, %extracted, %false, %false_23, %false, %false, %extracted, %false, %true, %false_23, %false_23, %false, %false, %false_23, %extracted, %true, %false_23, %true, %false, %false_23, %false, %true, %false, %extracted, %true, %true, %extracted, %false_23, %extracted, %false_23, %false, %false, %extracted, %true, %true, %false_23, %false, %false, %true, %extracted, %false, %true, %false, %false_23, %extracted, %false_23, %extracted, %true, %false, %false_23, %false_23, %false_23, %extracted, %false, %extracted, %true, %true, %false, %extracted, %false, %true, %false_23, %extracted, %false_23, %extracted, %false, %false, %false, %false_23, %extracted, %true, %false_23, %true, %false_23, %extracted, %false, %extracted, %false_23, %extracted, %extracted, %false, %true, %true, %false_23, %false, %true, %false, %false, %false_23, %false, %extracted, %true, %extracted, %false, %extracted, %true, %false_23, %false_23, %extracted, %false, %false, %false, %true, %false, %false_23, %extracted, %false, %extracted, %false_23, %false_23, %false_23, %false, %true, %false_23, %extracted, %extracted : tensor<6x16x10xi1>
        %296 = arith.negf %cst_1 : f16
        %alloc_53 = memref.alloc() : memref<16xf16>
        %297 = memref.realloc %alloc_53 : memref<16xf16> to memref<16xf16>
        %298 = math.log %0 : tensor<16x10xf16>
        %299 = arith.maxui %c-14907_i16, %c10222_i16 : i16
        %300 = arith.ceildivsi %false, %false_23 : i1
        %301 = arith.floordivsi %c1191669277_i32, %c844669243_i32 : i32
        %302 = math.rsqrt %cst : f32
        %303 = arith.remf %cst_1, %cst_1 : f16
        %304 = math.round %10 : tensor<16x6xf16>
        %305 = math.expm1 %cst_1 : f16
        %alloc_54 = memref.alloc() : memref<6x16x10xi16>
        memref.alloca_scope.return %alloc_54 : memref<6x16x10xi16>
      }
      %269 = index.divu %34, %48
      %270 = tensor.empty(%c11) : tensor<?x10xi32>
      %271 = vector.shuffle %78, %79 [1, 2, 3, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 18, 22, 29] : vector<16x10xi1>, vector<16x10xi1>
      %272 = arith.minui %c2004578870_i32, %c2004578870_i32 : i32
      %273 = vector.reduction <minui>, %36 : vector<6xi64> into i64
    }
    %87 = arith.remsi %c-14907_i16, %c-14907_i16 : i16
    %88 = arith.minf %cst_2, %cst_0 : f16
    %89 = vector.broadcast %cst_0 : f16 to vector<16xf16>
    %90 = vector.broadcast %extracted : i1 to vector<16xi1>
    %91 = vector.maskedload %58[%c8, %c2], %90, %89 : memref<16x6xf16>, vector<16xi1>, vector<16xf16> into vector<16xf16>
    %92 = bufferization.to_memref %14 : memref<16x10xi16>
    %93 = math.log2 %12 : tensor<16x6xf32>
    %94 = arith.shrsi %c-14907_i16, %c10222_i16 : i16
    %95 = vector.extract %19[0] : vector<6xi1>
    %96 = scf.execute_region -> vector<16x10xi16> {
      %expanded_51 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<16x6xi1> into tensor<16x6x1xi1>
      %257 = math.floor %10 : tensor<16x6xf16>
      %rank = tensor.rank %20 : tensor<16xi32>
      %258 = math.rsqrt %10 : tensor<16x6xf16>
      %false_52 = index.bool.constant false
      %expanded_53 = tensor.expand_shape %collapsed [[0], [1], [2, 3]] : tensor<100x6x1xi16> into tensor<100x6x1x1xi16>
      %259 = index.maxs %c13, %76
      %alloc_54 = memref.alloc() : memref<6xi16>
      %260 = memref.realloc %alloc_54 : memref<6xi16> to memref<10xi16>
      %261 = arith.negf %cst_0 : f16
      %262 = index.ceildivu %c4, %c14
      %263 = arith.minf %cst_1, %cst_1 : f16
      %264 = vector.broadcast %c605289834_i32 : i32 to vector<16xi32>
      %265 = vector.maskedload %alloc_14[%c3, %c7, %c0], %90, %264 : memref<6x16x10xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
      %266 = affine.load %alloc_11[%c12, %c14, %c6] : memref<10x10x6xi64>
      %267 = math.ctlz %3 : tensor<10x10x6xi16>
      %268 = vector.bitcast %36 : vector<6xi64> to vector<6xi64>
      %269 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 mod 8 - (d2 floordiv 4 + 4), d3 * 16 + 128, (d2 mod 8) * 16)>(%25, %259, %c12, %c7)
      %270 = vector.broadcast %c28870_i16 : i16 to vector<16x10xi16>
      scf.yield %270 : vector<16x10xi16>
    }
    %97 = arith.shrsi %c1429443777_i32, %c844669243_i32 : i32
    %98 = math.expm1 %cst_0 : f16
    %99 = arith.remui %c1429443777_i32, %c2004578870_i32 : i32
    %100 = vector.broadcast %false_23 : i1 to vector<10xi1>
    %dest, %accumulated_value = vector.scan <or>, %79, %100 {inclusive = false, reduction_dim = 0 : i64} : vector<16x10xi1>, vector<10xi1>
    %101 = vector.reduction <minsi>, %90 : vector<16xi1> into i1
    %c1_i16 = arith.constant 1 : i16
    %c0_i16 = arith.constant 0 : i16
    %102 = vector.transfer_read %92[%45, %c4], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<16x10xi16>, vector<16xi16>
    %false_24 = arith.constant false
    %103 = vector.transfer_read %11[%c14, %c12, %71], %false_24 : tensor<6x16x10xi1>, vector<10x10xi1>
    %alloc_25 = memref.alloc() : memref<16xf16>
    %104 = memref.realloc %alloc_25 : memref<16xf16> to memref<6xf16>
    vector.print %37 : vector<6xi64>
    %105 = tensor.empty() : tensor<10x10x6xi32>
    %mapped_26 = linalg.map ins(%9, %9, %9 : tensor<10x10x6xi32>, tensor<10x10x6xi32>, tensor<10x10x6xi32>) outs(%105 : tensor<10x10x6xi32>)
      (%in: i32, %in_51: i32, %in_52: i32) {
        %true_53 = arith.constant true
        %257 = arith.shrsi %c6901_i16, %c28870_i16 : i16
        %258 = tensor.empty() : tensor<6x16x10xi16>
        %259 = vector.broadcast %c10222_i16 : i16 to vector<6x16x10xi16>
        %260 = vector.broadcast %false : i1 to vector<6x16x10xi1>
        %261 = vector.broadcast %c851953729_i32 : i32 to vector<6x16x10xi32>
        %262 = vector.gather %258[%c11, %48, %c15] [%261], %260, %259 : tensor<6x16x10xi16>, vector<6x16x10xi32>, vector<6x16x10xi1>, vector<6x16x10xi16> into vector<6x16x10xi16>
        %263 = arith.minui %c28870_i16, %c-14907_i16 : i16
        %264 = bufferization.to_tensor %92 : memref<16x10xi16>
        %265 = math.cos %cst : f32
        %266 = tensor.empty() : tensor<10x10xf16>
        %267 = tensor.empty() : tensor<16x10xf16>
        %268 = linalg.matmul ins(%0, %266 : tensor<16x10xf16>, tensor<10x10xf16>) outs(%267 : tensor<16x10xf16>) -> tensor<16x10xf16>
        %269 = index.ceildivu %c6, %54
        %270 = vector.broadcast %in_51 : i32 to vector<10x10x6xi32>
        %271 = tensor.empty() : tensor<6x16x10xi1>
        %mapped_54 = linalg.map ins(%11, %11 : tensor<6x16x10xi1>, tensor<6x16x10xi1>) outs(%271 : tensor<6x16x10xi1>)
          (%in_58: i1, %in_59: i1) {
            memref.assume_alignment %alloc_15, 4 : memref<16x10xf32>
            %291 = math.log10 %6 : tensor<6x16x10xf16>
            %292 = math.copysign %1, %1 : tensor<16x10xf32>
            %293 = arith.minf %cst_0, %cst_0 : f16
            %294 = math.rsqrt %12 : tensor<16x6xf32>
            %295 = tensor.empty() : tensor<6x16x10xi32>
            %296 = math.fpowi %6, %295 : tensor<6x16x10xf16>, tensor<6x16x10xi32>
            %297 = vector.broadcast %c1_i64 : i64 to vector<16x6xi64>
            %298 = vector.broadcast %false_24 : i1 to vector<16x6xi1>
            %299 = vector.broadcast %in_51 : i32 to vector<16x6xi32>
            %300 = vector.gather %alloc_12[%77, %269, %c0] [%299], %298, %297 : memref<10x10x6xi64>, vector<16x6xi32>, vector<16x6xi1>, vector<16x6xi64> into vector<16x6xi64>
            %301 = index.divu %29, %c7
            %302 = tensor.empty() : tensor<6x16x10xf32>
            %303 = vector.broadcast %cst : f32 to vector<16x6xf32>
            %304 = vector.gather %302[%48, %34, %c2] [%299], %298, %303 : tensor<6x16x10xf32>, vector<16x6xi32>, vector<16x6xi1>, vector<16x6xf32> into vector<16x6xf32>
            %alloc_60 = memref.alloc() : memref<16xi16>
            %305 = memref.realloc %alloc_60 : memref<16xi16> to memref<10xi16>
            %306 = math.log10 %12 : tensor<16x6xf32>
            %cast_61 = tensor.cast %7 : tensor<16x6xi64> to tensor<?x?xi64>
            %from_elements_62 = tensor.from_elements %c1_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c1_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c1_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c1_i16, %c28870_i16, %c-14907_i16, %c1_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c1_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c1_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c1_i16, %c6901_i16, %c1_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c1_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c1_i16, %c28870_i16, %c1_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c1_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c1_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c1_i16, %c10222_i16, %c1_i16, %c10222_i16, %c1_i16, %c1_i16, %c-14907_i16, %c-14907_i16, %c1_i16, %c6901_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c10222_i16, %c1_i16, %c1_i16 : tensor<16x6xi16>
            %307 = vector.load %alloc_3[%c12, %c0] : memref<16x6xi16>, vector<10x10x6xi16>
            %308 = vector.shuffle %307, %307 [0, 2, 3, 6, 7, 9, 10, 11, 13, 14, 15] : vector<10x10x6xi16>, vector<10x10x6xi16>
            memref.assume_alignment %alloc_11, 8 : memref<10x10x6xi64>
            %extracted_63 = tensor.extract %267[%c12, %c1] : tensor<16x10xf16>
            %309 = math.log10 %0 : tensor<16x10xf16>
            %310 = index.maxs %c13, %34
            %311 = math.sqrt %1 : tensor<16x10xf32>
            %312 = index.add %83, %83
            %313 = vector.extract %300[10] : vector<16x6xi64>
            %314 = arith.remf %cst_1, %extracted_63 : f16
            %315 = affine.min affine_map<(d0) -> (((d0 * 16) ceildiv 128 + d0 floordiv 128 + 16 + 16) * 128, d0 * 16 + d0 floordiv 128 + 16)>(%c11)
            %316 = vector.broadcast %cst : f32 to vector<10x10x6xf32>
            %317 = vector.fma %316, %316, %316 : vector<10x10x6xf32>
            %collapsed_64 = tensor.collapse_shape %271 [[0, 1], [2]] : tensor<6x16x10xi1> into tensor<96x10xi1>
            %extracted_65 = tensor.extract %13[%c7, %c4, %c5] : tensor<10x10x6xi16>
            %318 = arith.divui %c844669243_i32, %c1191669277_i32 : i32
            %rank_66 = tensor.rank %8 : tensor<16x6xi1>
            %319 = tensor.empty() : tensor<16x10xi32>
            %320 = math.fpowi %267, %319 : tensor<16x10xf16>, tensor<16x10xi32>
            %321 = arith.remf %cst_0, %cst_1 : f16
            %322 = math.ctlz %14 : tensor<16x10xi16>
            %false_67 = arith.constant false
            linalg.yield %false_67 : i1
          }
        affine.store %cst_1, %alloc_7[%c8, %c10] : memref<16x6xf16>
        %272 = vector.broadcast %cst : f32 to vector<10x10x6xf32>
        %273 = vector.fma %272, %272, %272 : vector<10x10x6xf32>
        %274 = math.ctlz %14 : tensor<16x10xi16>
        %275 = arith.negf %cst_0 : f16
        %dest_55, %accumulated_value_56 = vector.scan <and>, %78, %90 {inclusive = false, reduction_dim = 1 : i64} : vector<16x10xi1>, vector<16xi1>
        %generated_57 = tensor.generate %c3 {
        ^bb0(%arg3: index, %arg4: index, %arg5: index):
          %291 = math.log10 %10 : tensor<16x6xf16>
          %292 = tensor.empty() : tensor<10x10xi1>
          %293 = tensor.empty() : tensor<16x10xi1>
          %294 = linalg.matmul ins(%5, %292 : tensor<16x10xi1>, tensor<10x10xi1>) outs(%293 : tensor<16x10xi1>) -> tensor<16x10xi1>
          %from_elements_58 = tensor.from_elements %c6901_i16, %c6901_i16, %c1_i16, %c1_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c28870_i16, %c1_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c1_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c1_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c1_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c1_i16, %c28870_i16, %c1_i16, %c1_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c1_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c1_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c1_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c1_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c1_i16, %c28870_i16, %c10222_i16, %c1_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c1_i16, %c-14907_i16, %c10222_i16, %c1_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c1_i16, %c1_i16, %c28870_i16, %c28870_i16, %c-14907_i16 : tensor<16x6xi16>
          %295 = math.tan %cst : f32
          tensor.yield %false_24 : i1
        } : tensor<?x10x6xi1>
        %276 = math.ctpop %105 : tensor<10x10x6xi32>
        %rank = tensor.rank %2 : tensor<16x6xi1>
        %277 = math.ipowi %21, %20 : tensor<16xi32>
        %278 = arith.shrsi %c2004578870_i32, %in_52 : i32
        %279 = scf.if %extracted -> (memref<16x10xi32>) {
          %collapsed_58 = tensor.collapse_shape %14 [[0, 1]] : tensor<16x10xi16> into tensor<160xi16>
          bufferization.dealloc_tensor %60 : tensor<16x6xi16>
          %291 = arith.floordivsi %in_51, %c844669243_i32 : i32
          %292 = math.expm1 %6 : tensor<6x16x10xf16>
          %293 = index.ceildivs %c10, %c0
          %294 = arith.cmpi ule, %c1_i16, %c6901_i16 : i16
          %295 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %19, %260, %79 : vector<6xi1>, vector<6x16x10xi1> into vector<16x10xi1>
          %296 = math.fma %12, %12, %12 : tensor<16x6xf32>
          %alloc_59 = memref.alloc() : memref<16x10xi32>
          scf.yield %alloc_59 : memref<16x10xi32>
        } else {
          %291 = arith.minsi %in_51, %in_52 : i32
          %292 = vector.insert %false_23, %90 [10] : i1 into vector<16xi1>
          %293 = vector.broadcast %c851953729_i32 : i32 to vector<10xi32>
          %294 = vector.multi_reduction <mul>, %270, %293 [0, 2] : vector<10x10x6xi32> to vector<10xi32>
          %295 = math.fma %cst_0, %cst_0, %cst_1 : f16
          %alloc_58 = memref.alloc() : memref<16xi32>
          memref.tensor_store %20, %alloc_58 : memref<16xi32>
          %296 = math.exp2 %12 : tensor<16x6xf32>
          %297 = vector.multi_reduction <mul>, %91, %91 [] : vector<16xf16> to vector<16xf16>
          %298 = math.ctlz %4 : tensor<16x6xi1>
          %alloc_59 = memref.alloc() : memref<16x10xi32>
          scf.yield %alloc_59 : memref<16x10xi32>
        }
        %280 = math.absf %10 : tensor<16x6xf16>
        %281 = math.expm1 %1 : tensor<16x10xf32>
        %282 = scf.execute_region -> index {
          %291 = math.exp2 %cst_1 : f16
          %292 = vector.broadcast %cst : f32 to vector<16x6xf32>
          %293 = vector.fma %292, %292, %292 : vector<16x6xf32>
          %false_58 = index.bool.constant false
          %294 = vector.broadcast %cst : f32 to vector<6x16x10xf32>
          %295 = vector.fma %294, %294, %294 : vector<6x16x10xf32>
          %296 = math.log2 %cst_2 : f16
          %297 = vector.reduction <maxui>, %37 : vector<6xi64> into i64
          %alloc_59 = memref.alloc() : memref<6x10xf16>
          %298 = tensor.empty() : tensor<16x10xf16>
          %299 = linalg.matmul ins(%10, %alloc_59 : tensor<16x6xf16>, memref<6x10xf16>) outs(%298 : tensor<16x10xf16>) -> tensor<16x10xf16>
          %300 = arith.remf %cst_2, %cst_2 : f16
          %301 = arith.divf %cst, %cst : f32
          %302 = vector.broadcast %cst : f32 to vector<16xf32>
          %303 = vector.maskedload %alloc_15[%c4, %c2], %90, %302 : memref<16x10xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
          %304 = vector.multi_reduction <minf>, %293, %302 [1] : vector<16x6xf32> to vector<16xf32>
          %305 = vector.extract %293[15] : vector<16x6xf32>
          %306 = index.sub %c5, %c14
          %307 = math.expm1 %0 : tensor<16x10xf16>
          %308 = bufferization.clone %alloc_16 : memref<6x16x10xi64> to memref<6x16x10xi64>
          %309 = index.sub %71, %29
          scf.yield %29 : index
        }
        %283 = bufferization.to_tensor %alloc_13 : memref<16x10xi1>
        %284 = index.ceildivs %c4, %c6
        %285 = vector.transpose %260, [2, 1, 0] : vector<6x16x10xi1> to vector<10x16x6xi1>
        memref.assume_alignment %alloc_18, 4 : memref<10x6x16xi1>
        %286 = tensor.empty() : tensor<16x10xi32>
        %287 = math.fpowi %0, %286 : tensor<16x10xf16>, tensor<16x10xi32>
        %288 = arith.cmpf ult, %cst_1, %cst_0 : f16
        %289 = math.ctpop %20 : tensor<16xi32>
        %290 = index.floordivs %c12, %25
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %106 = math.atan %cst_0 : f16
    memref.store %cst_1, %alloc_6[%c5, %c4] : memref<16x6xf16>
    %107 = scf.if %true -> (memref<6x16x10xf32>) {
      %expanded_51 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<10x10x6xi16> into tensor<10x10x6x1xi16>
      bufferization.dealloc_tensor %20 : tensor<16xi32>
      %257 = math.sqrt %cst_2 : f16
      %258 = arith.andi %c-14907_i16, %c28870_i16 : i16
      %259 = arith.floordivsi %false_23, %true : i1
      %260 = bufferization.to_tensor %alloc_6 : memref<16x6xf16>
      %261 = vector.multi_reduction <minui>, %78, %79 [] : vector<16x10xi1> to vector<16x10xi1>
      %262 = vector.broadcast %extracted : i1 to vector<10xi1>
      %263 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %78, %90, %262 : vector<16x10xi1>, vector<16xi1> into vector<10xi1>
      scf.yield %alloc_5 : memref<6x16x10xf32>
    } else {
      %257 = arith.xori %c28870_i16, %c10222_i16 : i16
      %258 = arith.shli %c10222_i16, %c10222_i16 : i16
      %259 = math.log10 %0 : tensor<16x10xf16>
      %260 = vector.broadcast %c1191669277_i32 : i32 to vector<16x6xi32>
      %261 = index.castu %c1429443777_i32 : i32 to index
      memref.assume_alignment %alloc_14, 2 : memref<6x16x10xi32>
      %262 = index.divs %83, %c12
      %263 = math.log %12 : tensor<16x6xf32>
      scf.yield %alloc_5 : memref<6x16x10xf32>
    }
    %108 = arith.remf %cst, %cst : f32
    %109 = index.divu %83, %28
    %cast = tensor.cast %13 : tensor<10x10x6xi16> to tensor<?x?x?xi16>
    %110 = math.exp2 %10 : tensor<16x6xf16>
    %111 = bufferization.clone %58 : memref<16x6xf16> to memref<16x6xf16>
    %112 = arith.shrui %true, %extracted : i1
    %113 = arith.ori %c605289834_i32, %c1429443777_i32 : i32
    %114 = tensor.empty() : tensor<10x10x6xi32>
    %mapped_27 = linalg.map ins(%9, %9, %9 : tensor<10x10x6xi32>, tensor<10x10x6xi32>, tensor<10x10x6xi32>) outs(%114 : tensor<10x10x6xi32>)
      (%in: i32, %in_51: i32, %in_52: i32) {
        %257 = arith.minf %cst, %cst : f32
        %258 = arith.maxui %c605289834_i32, %c605289834_i32 : i32
        %extracted_53 = tensor.extract %4[%c9, %c0] : tensor<16x6xi1>
        %259 = affine.load %92[%c11, %c10] : memref<16x10xi16>
        %260 = arith.remf %cst_1, %cst_0 : f16
        %261 = affine.apply affine_map<(d0) -> (d0 floordiv 8 + 3)>(%28)
        %262 = vector.insert %cst_0, %91 [15] : f16 into vector<16xf16>
        %263 = math.log2 %cst : f32
        %264 = arith.addi %false, %false : i1
        %265 = math.copysign %cst_1, %cst_2 : f16
        vector.print %19 : vector<6xi1>
        %266 = vector.create_mask %c8, %71 : vector<16x6xi1>
        %267 = math.absi %extracted_53 : i1
        %268 = index.maxu %83, %71
        %269 = math.ctlz %c1_i16 : i16
        %270 = arith.mulf %cst_2, %cst_1 : f16
        %false_54 = index.bool.constant false
        %271 = arith.divsi %false_54, %extracted_53 : i1
        %272 = math.atan %6 : tensor<6x16x10xf16>
        %273 = vector.bitcast %37 : vector<6xi64> to vector<6xi64>
        %274 = arith.minsi %false_54, %false_54 : i1
        %275 = math.rsqrt %cst_2 : f16
        %276 = vector.broadcast %259 : i16 to vector<6x16x10xi16>
        %277 = arith.ceildivsi %in_51, %c605289834_i32 : i32
        %from_elements_55 = tensor.from_elements %true, %extracted, %true, %true, %false_54, %true, %false_23, %true, %true, %true, %false_23, %extracted_53, %extracted, %false_23, %false_24, %true, %false_54, %false_23, %extracted_53, %false_24, %false_24, %extracted, %false, %false_23, %false, %false_24, %false, %false_24, %false, %false_24, %false_23, %true, %false_23, %false_24, %false_24, %false_23, %false_23, %extracted_53, %false_24, %true, %extracted, %true, %extracted, %false, %true, %extracted, %false_23, %false_54, %true, %false, %true, %false_54, %false, %false_24, %extracted, %extracted, %false, %false_24, %extracted, %false_24, %true, %false_23, %false, %extracted, %true, %extracted_53, %extracted_53, %false, %false_24, %false_24, %true, %false_54, %false, %extracted, %false_24, %false_24, %extracted_53, %extracted_53, %extracted, %false, %false_24, %false, %false_24, %false_24, %false_23, %true, %false, %false_23, %false_23, %false, %extracted_53, %false, %extracted_53, %true, %true, %false_24, %extracted, %false_23, %false_24, %true, %extracted, %true, %true, %true, %extracted, %false_24, %false_23, %false_23, %false_24, %extracted, %extracted, %extracted, %true, %false_24, %true, %extracted, %false_24, %false, %true, %false_54, %false_24, %true, %false_54, %false_23, %extracted, %extracted, %false, %false_24, %false_24, %extracted, %false, %false, %extracted, %false, %false_24, %false_54, %extracted_53, %false_23, %false_23, %true, %false_23, %extracted_53, %true, %false_23, %false_23, %false_54, %false, %false_24, %false_54, %false_23, %false_54, %false_54, %false_23, %extracted_53, %false_54, %true, %false_54, %true, %true, %false_23, %false_24, %false_24, %false, %false_24, %false_54, %extracted_53, %extracted_53, %extracted, %false_54, %false_54, %false_24, %false_23, %true, %false_23, %extracted_53, %true, %extracted_53, %true, %extracted_53, %false, %true, %false_24, %false_24, %extracted, %false_54, %extracted_53, %extracted_53, %extracted, %true, %false_24, %extracted, %true, %extracted, %false_54, %false_54, %false_23, %true, %false_54, %extracted, %false_24, %false_54, %false_24, %false_54, %false_54, %extracted, %extracted, %extracted, %false_23, %false_54, %false_23, %extracted, %false_54, %false_54, %false_24, %extracted_53, %false_54, %false_23, %false_23, %false_23, %extracted_53, %false_54, %extracted_53, %false, %extracted, %extracted, %false_54, %false_54, %extracted_53, %false, %extracted, %extracted, %true, %extracted_53, %false_23, %false_54, %false_54, %false_54, %false_23, %false_24, %false_24, %false_24, %false_24, %false_23, %false_54, %extracted_53, %false_24, %false_24, %false_54, %false_23, %false_24, %false_24, %extracted_53, %extracted, %false_24, %false_54, %false_24, %false_24, %false, %false_24, %extracted, %false_23, %extracted, %false_23, %false_54, %extracted, %false_23, %false, %false, %false, %true, %false_54, %false, %false_54, %extracted_53, %true, %extracted, %extracted_53, %extracted, %true, %false_24, %true, %false, %false_54, %false_24, %extracted, %extracted_53, %false, %false_23, %false_24, %true, %false_24, %false, %false, %true, %false, %false_24, %false_23, %false_54, %extracted, %extracted_53, %false_54, %false, %false_24, %extracted, %extracted, %extracted, %false_23, %false, %false_24, %true, %false_24, %false_23, %extracted, %extracted, %extracted_53, %false_54, %false, %false_24, %true, %extracted_53, %true, %false_24, %false_54, %extracted, %extracted, %true, %false_23, %false_23, %false_24, %false, %false_24, %false, %false_24, %false_24, %true, %false_24, %true, %false_24, %false_23, %extracted_53, %false_54, %true, %false_54, %false, %extracted, %false_54, %false_23, %false_54, %false_23, %false_24, %true, %false, %false_24, %false_24, %false_23, %extracted, %extracted_53, %extracted_53, %extracted_53, %true, %extracted_53, %extracted, %true, %false_24, %true, %false, %false_24, %false_54, %false, %true, %false_23, %true, %false_24, %false, %extracted, %false, %extracted_53, %false_54, %extracted_53, %false_54, %extracted, %false_54, %false_23, %false, %extracted, %extracted_53, %false_24, %extracted, %false_24, %false_23, %extracted, %false_54, %false, %false_23, %extracted, %false_54, %false_23, %false_23, %false_54, %true, %true, %false_54, %false_23, %extracted, %false, %extracted_53, %extracted, %false, %false_24, %extracted_53, %extracted_53, %false_24, %true, %extracted_53, %extracted_53, %false_54, %false, %false, %extracted, %false, %false_24, %false_54, %true, %extracted, %false, %false_24, %true, %true, %false_24, %true, %extracted, %false, %extracted_53, %false_54, %extracted, %extracted, %false_54, %false, %true, %true, %false_24, %extracted, %true, %false_54, %false_23, %true, %false_54, %false_23, %true, %false_54, %false, %false_24, %false, %extracted, %extracted_53, %false_54, %extracted_53, %false, %extracted_53, %false_24, %true, %false_54, %true, %extracted_53, %false_23, %extracted, %false_54, %true, %false_54, %false_24, %false_54, %false, %false_24, %false_23, %false, %extracted_53, %false_54, %false_24, %extracted_53, %extracted, %extracted, %true, %false_23, %extracted, %extracted_53, %false_24, %extracted, %false_54, %false_54, %false_24, %false_24, %false_24, %false_24, %true, %true, %extracted, %false_23, %extracted, %extracted, %extracted, %false_54, %false_54, %extracted_53, %false, %false_54, %extracted, %false_54, %extracted_53, %true, %false_23, %false_54, %extracted_53, %true, %false, %true, %false, %extracted_53, %false_24, %false_54, %extracted_53, %extracted_53, %false_24, %extracted, %extracted_53, %false_54, %extracted, %extracted_53, %true, %false_54, %false_24, %false_24, %extracted_53, %false, %extracted_53, %extracted_53, %false_24, %false_23, %false, %false_23, %false_54, %extracted, %false_54, %extracted_53, %extracted_53, %false_23, %false_23, %false_54, %true, %extracted_53, %extracted, %true, %true, %false, %false_24, %extracted_53, %true, %extracted_53, %false_24, %false_54, %extracted_53, %extracted_53, %false_24, %extracted_53, %true, %false_23, %true, %false, %true, %false_24, %extracted_53, %extracted, %false_54, %extracted, %false_23, %false, %false_54, %false_54, %false_23, %false_23, %false, %false, %false_23, %false_54, %extracted, %false_24, %extracted, %false_23, %false_24, %extracted_53, %false_54, %extracted, %false_24, %false_24, %false, %false_23, %extracted_53, %extracted, %false_54, %false_24, %true : tensor<10x10x6xi1>
        %alloc_56 = memref.alloc() : memref<10x16xf16>
        %278 = tensor.empty() : tensor<16x16xf16>
        %279 = linalg.matmul ins(%0, %alloc_56 : tensor<16x10xf16>, memref<10x16xf16>) outs(%278 : tensor<16x16xf16>) -> tensor<16x16xf16>
        %280 = vector.insertelement %cst_2, %91[%54 : index] : vector<16xf16>
        %281 = math.ctlz %13 : tensor<10x10x6xi16>
        %282 = index.castu %in_52 : i32 to index
        %283 = arith.remf %cst_1, %cst_0 : f16
        affine.store %c1_i64, %alloc_16[%c8, %c2, %c10] : memref<6x16x10xi64>
        %284 = math.sqrt %12 : tensor<16x6xf32>
        %c1_i32_57 = arith.constant 1 : i32
        linalg.yield %c1_i32_57 : i32
      }
    %115 = index.add %54, %c7
    %116 = index.sub %c15, %39
    memref.assume_alignment %alloc_5, 1 : memref<6x16x10xf32>
    %117 = index.floordivs %56, %c5
    %118 = index.castu %c10 : index to i32
    %119 = vector.broadcast %extracted : i1 to vector<10xi1>
    %120 = vector.maskedload %alloc_9[%c6, %c9, %c2], %119, %119 : memref<10x10x6xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
    %alloc_28 = memref.alloc() : memref<16xf32>
    %121 = memref.realloc %alloc_28 : memref<16xf32> to memref<10xf32>
    %122 = math.expm1 %12 : tensor<16x6xf32>
    %inserted_29 = tensor.insert %cst into %1[%c2, %c9] : tensor<16x10xf32>
    %123 = vector.broadcast %false : i1 to vector<10x10xi1>
    %124 = vector.outerproduct %119, %120, %123 {kind = #vector.kind<or>} : vector<10xi1>, vector<10xi1>
    %125 = index.maxs %c5, %c7
    %126 = math.expm1 %cst_0 : f16
    %127 = arith.remf %cst_2, %cst_2 : f16
    %inserted_30 = tensor.insert %cst_0 into %0[%c5, %c1] : tensor<16x10xf16>
    %128 = vector.broadcast %c6901_i16 : i16 to vector<16x10xi16>
    %129 = arith.subi %c2004578870_i32, %c605289834_i32 : i32
    %130 = math.absi %3 : tensor<10x10x6xi16>
    %131 = bufferization.clone %111 : memref<16x6xf16> to memref<16x6xf16>
    %132 = tensor.empty() : tensor<6x10xi1>
    %133 = tensor.empty() : tensor<16x10xi1>
    %134 = linalg.matmul ins(%2, %132 : tensor<16x6xi1>, tensor<6x10xi1>) outs(%133 : tensor<16x10xi1>) -> tensor<16x10xi1>
    %alloca = memref.alloca() : memref<16x10xi1>
    %135 = math.exp2 %0 : tensor<16x10xf16>
    memref.assume_alignment %alloc_6, 16 : memref<16x6xf16>
    %136 = math.absf %10 : tensor<16x6xf16>
    %true_31 = index.bool.constant true
    %137 = arith.ceildivsi %c1_i16, %c1_i16 : i16
    %138 = arith.shrsi %false_24, %true : i1
    %139 = math.atan2 %6, %6 : tensor<6x16x10xf16>
    %140 = math.ctlz %8 : tensor<16x6xi1>
    %141 = arith.shrsi %c1_i16, %c10222_i16 : i16
    %142 = arith.remf %cst, %cst : f32
    %cst_32 = arith.constant 0x4E02FA16 : f32
    %143 = arith.floordivsi %c851953729_i32, %c844669243_i32 : i32
    vector.print %79 : vector<16x10xi1>
    %144 = vector.broadcast %cst_0 : f16 to vector<16xf16>
    %145 = vector.transfer_write %144, %10[%c5, %39] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xf16>, tensor<16x6xf16>
    %146 = index.maxs %c13, %c1
    %147 = arith.minf %cst_1, %cst_1 : f16
    %148 = arith.minsi %c28870_i16, %c-14907_i16 : i16
    %expanded_33 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<16x6xf32> into tensor<16x6x1xf32>
    %149 = arith.andi %true_31, %extracted : i1
    memref.copy %58, %111 : memref<16x6xf16> to memref<16x6xf16>
    %150 = arith.minf %cst_1, %cst_1 : f16
    %151 = index.sub %125, %c3
    %152 = index.ceildivu %c13, %115
    %from_elements = tensor.from_elements %cst_2, %cst_2, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_0, %cst_0, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_0, %cst_1, %cst_0, %cst_0, %cst_1, %cst_2, %cst_0, %cst_2, %cst_1, %cst_2, %cst_1, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst_1, %cst_2, %cst_1, %cst_0, %cst_2, %cst_0, %cst_0, %cst_1, %cst_2, %cst_0, %cst_0, %cst_2, %cst_0, %cst_1, %cst_1, %cst_2, %cst_1, %cst_0, %cst_0, %cst_1, %cst_0, %cst_2, %cst_0, %cst_1, %cst_0, %cst_2, %cst_2, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_0, %cst_2, %cst_2, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_1, %cst_1, %cst_0 : tensor<16x6xf16>
    %153 = math.sqrt %0 : tensor<16x10xf16>
    %154 = vector.insertelement %cst_0, %91[%c1 : index] : vector<16xf16>
    %155 = arith.floordivsi %extracted, %extracted : i1
    %156 = vector.bitcast %120 : vector<10xi1> to vector<10xi1>
    scf.execute_region {
      %257 = affine.apply affine_map<(d0, d1, d2) -> (d2 - 191)>(%48, %116, %34)
      %258 = arith.remui %c1191669277_i32, %c605289834_i32 : i32
      %259 = math.sqrt %12 : tensor<16x6xf32>
      %260 = index.divs %48, %116
      %261 = arith.remf %cst_2, %cst_2 : f16
      %262 = arith.maxsi %c844669243_i32, %c851953729_i32 : i32
      %263 = index.castu %true_31 : i1 to index
      %264 = index.maxs %71, %56
      %265 = tensor.empty() : tensor<16x6xi16>
      %mapped_51 = linalg.map ins(%15 : tensor<16x6xi16>) outs(%265 : tensor<16x6xi16>)
        (%in: i16) {
          %inserted_53 = tensor.insert %c851953729_i32 into %105[%c9, %c7, %c2] : tensor<10x10x6xi32>
          %272 = math.ctlz %in : i16
          %273 = math.tan %cst_1 : f16
          %274 = bufferization.clone %alloc_16 : memref<6x16x10xi64> to memref<6x16x10xi64>
          %275 = math.absi %c-14907_i16 : i16
          %276 = index.castu %c28870_i16 : i16 to index
          %277 = math.ctlz %c6901_i16 : i16
          %278 = math.floor %cst : f32
          %279 = vector.multi_reduction <maxf>, %91, %cst_1 [0] : vector<16xf16> to f16
          %280 = arith.ceildivsi %c-14907_i16, %c28870_i16 : i16
          %281 = index.divu %c0, %109
          %282 = vector.load %alloc_8[%c3, %c4, %c3] : memref<6x16x10xi32>, vector<16x10xi32>
          %283 = math.fma %cst, %cst, %cst : f32
          %284 = math.round %1 : tensor<16x10xf32>
          %285 = arith.shli %false_24, %extracted : i1
          memref.assume_alignment %alloc_18, 2 : memref<10x6x16xi1>
          %286 = vector.insert %119, %79 [15] : vector<10xi1> into vector<16x10xi1>
          %287 = math.round %12 : tensor<16x6xf32>
          %288 = math.exp2 %cst_1 : f16
          %289 = arith.minui %c2004578870_i32, %c1191669277_i32 : i32
          %290 = vector.matrix_multiply %19, %119 {lhs_columns = 2 : i32, lhs_rows = 3 : i32, rhs_columns = 5 : i32} : (vector<6xi1>, vector<10xi1>) -> vector<15xi1>
          %true_54 = arith.constant true
          %false_55 = arith.constant false
          %291 = vector.transfer_read %16[%c13, %c2], %false_55 : tensor<16x6xi1>, vector<i1>
          %292 = vector.flat_transpose %89 {columns = 4 : i32, rows = 4 : i32} : vector<16xf16> -> vector<16xf16>
          %293 = vector.shuffle %282, %282 [4, 6, 7, 10, 11, 13, 16, 17, 20, 23, 24, 26, 27, 28, 29, 30, 31] : vector<16x10xi32>, vector<16x10xi32>
          %294 = vector.broadcast %cst : f32 to vector<6x16x10xf32>
          %295 = vector.fma %294, %294, %294 : vector<6x16x10xf32>
          %296 = index.ceildivs %257, %45
          %297 = arith.cmpi ne, %c-14907_i16, %c28870_i16 : i16
          %298 = vector.multi_reduction <mul>, %90, %90 [] : vector<16xi1> to vector<16xi1>
          %299 = math.floor %1 : tensor<16x10xf32>
          %300 = arith.maxui %c10222_i16, %c-14907_i16 : i16
          %301 = vector.broadcast %cst : f32 to vector<16x10xf32>
          %302 = vector.fma %301, %301, %301 : vector<16x10xf32>
          %303 = arith.maxf %cst, %cst : f32
          %c0_i16_56 = arith.constant 0 : i16
          linalg.yield %c0_i16_56 : i16
        }
      %266 = arith.mulf %cst_0, %cst_1 : f16
      %from_elements_52 = tensor.from_elements %c6901_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c1_i16, %c-14907_i16, %c-14907_i16, %c1_i16, %c-14907_i16, %c6901_i16, %c1_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c1_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c1_i16, %c6901_i16, %c-14907_i16, %c1_i16, %c1_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c1_i16, %c1_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c1_i16, %c-14907_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c-14907_i16, %c1_i16, %c1_i16, %c28870_i16, %c1_i16, %c-14907_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c28870_i16, %c1_i16, %c28870_i16, %c6901_i16, %c1_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c1_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c1_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c1_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c1_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c1_i16, %c1_i16, %c28870_i16, %c1_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c1_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c1_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c1_i16, %c28870_i16, %c1_i16, %c6901_i16, %c28870_i16, %c1_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c1_i16, %c10222_i16, %c1_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c1_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c1_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c1_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c1_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c1_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c1_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c1_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c1_i16, %c1_i16, %c-14907_i16, %c1_i16, %c1_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c1_i16, %c1_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c1_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c1_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c1_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c1_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c1_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c1_i16, %c1_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c1_i16, %c1_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c1_i16, %c10222_i16, %c1_i16, %c1_i16, %c-14907_i16, %c1_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c1_i16, %c1_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c1_i16, %c1_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c1_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c1_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c1_i16, %c6901_i16, %c6901_i16, %c1_i16, %c1_i16, %c1_i16, %c6901_i16, %c6901_i16, %c28870_i16, %c1_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c1_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c1_i16, %c10222_i16, %c6901_i16, %c1_i16, %c1_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c1_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c1_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c1_i16, %c28870_i16, %c28870_i16, %c1_i16, %c28870_i16, %c1_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c1_i16, %c-14907_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c1_i16, %c1_i16, %c28870_i16, %c1_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c1_i16, %c28870_i16, %c1_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c1_i16, %c10222_i16, %c1_i16, %c10222_i16, %c1_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c1_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c1_i16, %c1_i16, %c28870_i16, %c1_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c1_i16, %c1_i16, %c28870_i16, %c6901_i16, %c1_i16, %c-14907_i16, %c1_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c28870_i16, %c1_i16, %c-14907_i16, %c28870_i16, %c1_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c1_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c1_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c1_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c1_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c10222_i16, %c6901_i16, %c10222_i16 : tensor<10x10x6xi16>
      %267 = arith.andi %c605289834_i32, %c2004578870_i32 : i32
      %268 = math.round %1 : tensor<16x10xf32>
      %269 = math.exp %from_elements : tensor<16x6xf16>
      %270 = bufferization.to_memref %3 : memref<10x10x6xi16>
      %271 = affine.apply affine_map<(d0) -> (((((d0 + 2) floordiv 8) mod 32) floordiv 128) * 64)>(%116)
      scf.yield
    }
    %generated = tensor.generate %48, %71, %c1 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %from_elements_51 = tensor.from_elements %true, %true, %true_31, %true_31, %true, %true_31, %extracted, %false, %extracted, %true_31, %false_23, %false, %false_24, %true_31, %false_23, %extracted, %false, %true_31, %false_24, %false_24, %true_31, %false, %false, %false, %extracted, %false_24, %extracted, %true, %false_23, %true_31, %extracted, %false, %false, %false_24, %false, %true, %true_31, %false_23, %false_23, %false_23, %true, %false, %false, %false_23, %false, %true, %true_31, %false, %false_24, %true_31, %extracted, %extracted, %extracted, %false_23, %true, %extracted, %false, %true, %false, %false_24, %false, %false, %true, %false_23, %true_31, %false_23, %extracted, %false_24, %false_24, %false_24, %false_24, %false_23, %true, %true, %true_31, %true, %true_31, %extracted, %true, %false_24, %false_23, %true_31, %false, %false_24, %extracted, %false, %false, %true, %false_24, %true_31, %false, %false, %extracted, %false, %false_24, %false, %false, %false_24, %false_24, %extracted, %true, %extracted, %true_31, %true_31, %false_24, %true, %true, %extracted, %extracted, %false, %false_24, %false_23, %false_23, %true_31, %true, %false_24, %false_24, %true, %true_31, %false_23, %false_24, %false_24, %false, %false_23, %true_31, %false_24, %extracted, %extracted, %extracted, %true, %true_31, %false_24, %false_23, %false_23, %false_23, %false_24, %true, %true_31, %false, %true_31, %true_31, %false_24, %true_31, %extracted, %true_31, %false_23, %false_23, %false_23, %extracted, %extracted, %false_23, %true, %extracted, %false, %extracted, %false_23, %false, %false_24, %extracted, %false_24, %false_24, %true, %false_24, %false_24, %true_31, %false, %false_24, %false_24, %false_23, %extracted, %false, %false, %extracted, %false_23, %true, %false_24, %true_31, %extracted, %true_31, %false, %true_31, %true_31, %extracted, %true_31, %extracted, %true_31, %false_24, %true, %false, %extracted, %extracted, %true, %false_23, %false_23, %false_23, %false_24, %extracted, %extracted, %true_31, %extracted, %false_24, %extracted, %extracted, %false_23, %false_24, %true, %true_31, %extracted, %extracted, %true_31, %false_24, %false, %extracted, %true_31, %true, %false_24, %true, %false_24, %extracted, %false_24, %false_24, %false_23, %true_31, %true_31, %true_31, %false, %true, %true_31, %false, %true_31, %extracted, %false_24, %true_31, %true_31, %true_31, %true_31, %false_23, %false, %false_24, %false, %extracted, %false, %false_23, %true, %true, %extracted, %extracted, %true_31, %false_23, %true, %false_23, %false_23, %false_24, %false_24, %false, %true, %extracted, %false_23, %false, %false, %false_24, %false, %false_24, %extracted, %false, %true_31, %true, %true, %false, %false_23, %true, %extracted, %extracted, %true_31, %false, %true, %extracted, %false_24, %false_24, %extracted, %false_23, %extracted, %true, %false_23, %true, %true, %false, %true_31, %false_24, %true_31, %false_24, %extracted, %true_31, %true_31, %true_31, %false, %true_31, %true, %false_23, %false_24, %true_31, %false_24, %extracted, %true, %extracted, %true_31, %true_31, %true, %extracted, %true_31, %true, %false_24, %false_23, %false_23, %false_24, %true_31, %true_31, %extracted, %extracted, %false_23, %false_24, %extracted, %false, %false, %false, %extracted, %true, %false_24, %true_31, %false_24, %false, %true_31, %extracted, %false_23, %true_31, %false, %false, %extracted, %false_23, %true_31, %false_23, %true_31, %extracted, %true, %false_24, %true_31, %true, %extracted, %extracted, %false, %false_23, %false, %true_31, %true, %false, %true_31, %false, %true_31, %true_31, %false_24, %false_24, %false, %extracted, %true_31, %false_23, %extracted, %extracted, %false, %true_31, %true_31, %true_31, %false_23, %true, %extracted, %extracted, %false_23, %false, %extracted, %true, %true_31, %false_24, %extracted, %true_31, %extracted, %false_24, %false_23, %false_23, %extracted, %false_23, %extracted, %false_23, %false_24, %false, %false_24, %extracted, %extracted, %false, %extracted, %true_31, %false_24, %extracted, %false_23, %true_31, %extracted, %false_23, %false_23, %false_24, %true, %extracted, %true, %false, %false_24, %true, %false, %true_31, %false, %false_23, %false_23, %true, %extracted, %false_23, %extracted, %true, %true_31, %extracted, %true, %true_31, %false_24, %false, %extracted, %false, %true, %false, %extracted, %false_24, %false, %extracted, %false, %extracted, %true_31, %false_23, %false_23, %true, %extracted, %false_24, %true_31, %false, %false, %extracted, %false, %false, %extracted, %false, %false_24, %extracted, %false, %extracted, %false, %false, %false_23, %true_31, %extracted, %false_23, %false, %true, %true_31, %true_31, %true, %true_31, %false_23, %true, %true, %true_31, %true_31, %true, %true, %false_23, %false_23, %true_31, %true, %true_31, %true_31, %false_23, %false_24, %false_23, %extracted, %true_31, %false_23, %false_24, %true_31, %true_31, %false_23, %false_23, %false_23, %false, %true_31, %false, %false, %false_24, %false_23, %false, %false, %true, %false_24, %false, %false_24, %false, %extracted, %false_23, %extracted, %true_31, %true, %false_24, %true, %true_31, %false_24, %extracted, %extracted, %false, %false, %true_31, %true, %false_24, %true_31, %false, %false_24, %false_24, %extracted, %false, %true, %true_31, %extracted, %false, %extracted, %false_24, %false_24, %true_31, %true_31, %true, %true, %false, %extracted, %false_24, %true, %true_31, %false_23, %false_24, %false_23, %false, %false_23, %extracted, %false_23, %false, %false_24, %false_23, %false_23, %false_24, %true, %false, %extracted, %false, %false_23, %false_23, %false_23, %true_31, %true_31, %true_31, %false_24, %true_31, %false_24, %true, %false_24, %true_31, %true, %false_24, %false_24, %extracted, %false, %true, %false_24, %false_23, %false, %false, %false_23, %false_24, %false_23, %false_23, %true_31, %true, %true_31, %extracted, %true_31, %true_31, %true_31, %true, %false_24, %true, %false_23, %false_24, %true_31 : tensor<10x10x6xi1>
      %257 = arith.floordivsi %c851953729_i32, %c844669243_i32 : i32
      %258 = math.ctlz %c6901_i16 : i16
      %259 = math.log10 %10 : tensor<16x6xf16>
      tensor.yield %cst : f32
    } : tensor<?x?x?xf32>
    %157 = bufferization.clone %alloc_14 : memref<6x16x10xi32> to memref<6x16x10xi32>
    %c1_i32 = arith.constant 1 : i32
    %158 = vector.transfer_read %114[%c11, %151, %c7], %c1_i32 : tensor<10x10x6xi32>, vector<10xi32>
    vector.print %144 : vector<16xf16>
    %159 = bufferization.clone %157 : memref<6x16x10xi32> to memref<6x16x10xi32>
    %160 = index.maxu %c15, %c14
    %161 = scf.execute_region -> vector<6x16x10xi16> {
      %257 = arith.andi %c1429443777_i32, %c1429443777_i32 : i32
      %258 = arith.minui %c-14907_i16, %c1_i16 : i16
      %259 = vector.broadcast %c1_i32 : i32 to vector<16x10xi32>
      %260 = scf.while (%arg3 = %128) : (vector<16x10xi16>) -> vector<16x10xi16> {
        %true_54 = index.bool.constant true
        %273 = tensor.empty() : tensor<10x6xi1>
        %274 = tensor.empty() : tensor<16x6xi1>
        %275 = linalg.matmul ins(%5, %273 : tensor<16x10xi1>, tensor<10x6xi1>) outs(%274 : tensor<16x6xi1>) -> tensor<16x6xi1>
        %276 = arith.divsi %false_24, %true_54 : i1
        %277 = arith.cmpi uge, %false, %false_23 : i1
        %278 = math.copysign %from_elements, %10 : tensor<16x6xf16>
        %279 = vector.reduction <maxsi>, %90 : vector<16xi1> into i1
        %280 = arith.shrsi %c1_i16, %c28870_i16 : i16
        %281 = index.casts %true_31 : i1 to index
        scf.condition(%false_23) %128 : vector<16x10xi16>
      } do {
      ^bb0(%arg3: vector<16x10xi16>):
        %273 = index.divu %c12, %146
        %274 = index.divu %c10, %125
        %275 = index.sub %160, %c10
        %276 = arith.minsi %c1_i32, %c2004578870_i32 : i32
        %277 = math.cos %cst_0 : f16
        %cast_54 = tensor.cast %20 : tensor<16xi32> to tensor<?xi32>
        %278 = index.divu %34, %c14
        %279 = math.expm1 %1 : tensor<16x10xf32>
        %280 = vector.insertelement %extracted, %156[%c6 : index] : vector<10xi1>
        %281 = index.casts %26 : index to i32
        %282 = arith.subi %false_24, %extracted : i1
        vector.print %156 : vector<10xi1>
        %collapsed_55 = tensor.collapse_shape %cast [[0, 1], [2]] : tensor<?x?x?xi16> into tensor<?x?xi16>
        %283 = vector.bitcast %119 : vector<10xi1> to vector<10xi1>
        %284 = vector.extract %283[0] : vector<10xi1>
        %285 = arith.divsi %false_24, %extracted : i1
        scf.yield %128 : vector<16x10xi16>
      }
      %261 = arith.mulf %cst_2, %cst_1 : f16
      %262 = arith.muli %c-14907_i16, %c1_i16 : i16
      %263 = affine.load %alloc_16[%c10, %c2, %c10] : memref<6x16x10xi64>
      %264 = arith.minui %false_23, %false_23 : i1
      %alloc_51 = memref.alloc() : memref<6xi1>
      %265 = memref.realloc %alloc_51 : memref<6xi1> to memref<10xi1>
      %false_52 = index.bool.constant false
      %266 = arith.minsi %c-14907_i16, %c10222_i16 : i16
      %267 = math.log10 %0 : tensor<16x10xf16>
      %268 = math.rsqrt %expanded_33 : tensor<16x6x1xf32>
      %269 = vector.broadcast %c1_i32 : i32 to vector<10x10xi32>
      %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %259, %259, %269 : vector<16x10xi32>, vector<16x10xi32> into vector<10x10xi32>
      %true_53 = index.bool.constant true
      %271 = bufferization.clone %alloc_5 : memref<6x16x10xf32> to memref<6x16x10xf32>
      %272 = vector.broadcast %c1_i16 : i16 to vector<6x16x10xi16>
      scf.yield %272 : vector<6x16x10xi16>
    }
    %162 = index.maxs %115, %c11
    %163 = math.sqrt %10 : tensor<16x6xf16>
    %164 = index.mul %115, %69
    %165 = index.divs %c2, %c15
    %alloc_34 = memref.alloc() : memref<10xi64>
    %166 = memref.realloc %alloc_34 : memref<10xi64> to memref<16xi64>
    %167 = vector.transpose %90, [0] : vector<16xi1> to vector<16xi1>
    %168 = index.ceildivu %76, %69
    %169 = arith.remui %c851953729_i32, %c1429443777_i32 : i32
    %170 = vector.multi_reduction <or>, %19, %19 [] : vector<6xi1> to vector<6xi1>
    %171 = math.expm1 %expanded_33 : tensor<16x6x1xf32>
    %172 = arith.remf %cst_1, %cst_1 : f16
    %173 = math.exp2 %10 : tensor<16x6xf16>
    %174 = math.log %10 : tensor<16x6xf16>
    %175 = index.divs %39, %152
    affine.store %cst, %alloc_5[%c8, %c9, %c14] : memref<6x16x10xf32>
    %176 = arith.mulf %cst_0, %cst_0 : f16
    %177 = arith.minf %cst_1, %cst_0 : f16
    %178 = arith.minf %cst, %cst : f32
    %179 = math.expm1 %1 : tensor<16x10xf32>
    %180 = arith.remsi %c2004578870_i32, %c2004578870_i32 : i32
    %181 = arith.minf %cst_1, %cst_0 : f16
    %182 = arith.minui %true_31, %true_31 : i1
    %183 = arith.minsi %c605289834_i32, %c605289834_i32 : i32
    %184 = math.atan %0 : tensor<16x10xf16>
    %185 = affine.min affine_map<(d0, d1, d2) -> (-d0, d0 ceildiv 4, d0 * 32)>(%c11, %c12, %146)
    %186 = arith.remsi %c1_i16, %c-14907_i16 : i16
    %187 = index.maxs %34, %151
    %188 = index.sub %69, %71
    %189 = affine.min affine_map<(d0, d1, d2) -> (d2 * -4)>(%c1, %25, %151)
    %190 = arith.minui %c6901_i16, %c10222_i16 : i16
    %191 = vector.shuffle %78, %78 [1, 2, 3, 4, 6, 8, 10, 13, 14, 16, 19, 20, 21, 26, 27, 28, 30] : vector<16x10xi1>, vector<16x10xi1>
    %192 = math.atan2 %6, %6 : tensor<6x16x10xf16>
    %193 = scf.if %false_24 -> (memref<10x10x6xi64>) {
      %257 = math.round %1 : tensor<16x10xf32>
      %258 = bufferization.clone %alloc_12 : memref<10x10x6xi64> to memref<10x10x6xi64>
      %259 = math.atan %10 : tensor<16x6xf16>
      vector.print %79 : vector<16x10xi1>
      %alloc_51 = memref.alloc() : memref<16xf32>
      %260 = memref.realloc %alloc_51 : memref<16xf32> to memref<16xf32>
      %collapsed_52 = tensor.collapse_shape %68 [[0, 1], [2]] : tensor<6x16x10xi1> into tensor<96x10xi1>
      %261 = arith.addi %c2004578870_i32, %c844669243_i32 : i32
      %262 = math.atan2 %0, %0 : tensor<16x10xf16>
      scf.yield %258 : memref<10x10x6xi64>
    } else {
      %257 = bufferization.clone %alloc_9 : memref<10x10x6xi1> to memref<10x10x6xi1>
      bufferization.dealloc_tensor %17 : tensor<16x6xi1>
      %extracted_51 = tensor.extract %generated[%c0, %c0, %c0] : tensor<?x?x?xf32>
      %258 = math.roundeven %6 : tensor<6x16x10xf16>
      %259 = bufferization.clone %84 : memref<16x10xi1> to memref<16x10xi1>
      %260 = vector.flat_transpose %120 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
      %261 = vector.bitcast %79 : vector<16x10xi1> to vector<16x10xi1>
      %262 = tensor.empty() : tensor<16x6xi32>
      %263 = math.fpowi %10, %262 : tensor<16x6xf16>, tensor<16x6xi32>
      scf.yield %alloc_12 : memref<10x10x6xi64>
    }
    %194 = arith.shrui %c1191669277_i32, %c1191669277_i32 : i32
    %195 = vector.shuffle %90, %120 [0, 1, 3, 6, 7, 10, 11, 15, 16, 17, 20, 22, 23, 24, 25] : vector<16xi1>, vector<10xi1>
    %196 = affine.load %131[%c6, %c11] : memref<16x6xf16>
    %alloc_35 = memref.alloc() : memref<6x10xi16>
    %197 = tensor.empty() : tensor<16x10xi16>
    %198 = linalg.matmul ins(%15, %alloc_35 : tensor<16x6xi16>, memref<6x10xi16>) outs(%197 : tensor<16x10xi16>) -> tensor<16x10xi16>
    %199 = math.fpowi %cst_0, %c1_i32 : f16, i32
    %200 = bufferization.clone %alloc_3 : memref<16x6xi16> to memref<16x6xi16>
    %generated_36 = tensor.generate %c14, %c4 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %257 = math.exp2 %0 : tensor<16x10xf16>
      %from_elements_51 = tensor.from_elements %c1191669277_i32, %c844669243_i32, %c1_i32, %c851953729_i32, %c2004578870_i32, %c1429443777_i32, %c605289834_i32, %c2004578870_i32, %c1_i32, %c844669243_i32, %c844669243_i32, %c1429443777_i32, %c1_i32, %c851953729_i32, %c1191669277_i32, %c844669243_i32, %c844669243_i32, %c1429443777_i32, %c1191669277_i32, %c851953729_i32, %c1191669277_i32, %c1429443777_i32, %c844669243_i32, %c1191669277_i32, %c844669243_i32, %c844669243_i32, %c1_i32, %c851953729_i32, %c1191669277_i32, %c605289834_i32, %c1191669277_i32, %c605289834_i32, %c605289834_i32, %c844669243_i32, %c844669243_i32, %c1_i32, %c605289834_i32, %c844669243_i32, %c605289834_i32, %c1429443777_i32, %c1191669277_i32, %c844669243_i32, %c851953729_i32, %c1191669277_i32, %c1191669277_i32, %c1_i32, %c605289834_i32, %c1_i32, %c2004578870_i32, %c1191669277_i32, %c851953729_i32, %c1_i32, %c2004578870_i32, %c1191669277_i32, %c851953729_i32, %c851953729_i32, %c844669243_i32, %c1191669277_i32, %c2004578870_i32, %c1191669277_i32, %c1429443777_i32, %c2004578870_i32, %c1191669277_i32, %c1191669277_i32, %c851953729_i32, %c844669243_i32, %c1429443777_i32, %c1_i32, %c2004578870_i32, %c2004578870_i32, %c851953729_i32, %c2004578870_i32, %c844669243_i32, %c851953729_i32, %c844669243_i32, %c851953729_i32, %c2004578870_i32, %c2004578870_i32, %c1191669277_i32, %c1_i32, %c1_i32, %c1429443777_i32, %c1429443777_i32, %c1191669277_i32, %c2004578870_i32, %c1429443777_i32, %c1_i32, %c605289834_i32, %c1429443777_i32, %c844669243_i32, %c2004578870_i32, %c851953729_i32, %c605289834_i32, %c844669243_i32, %c1_i32, %c1429443777_i32, %c844669243_i32, %c851953729_i32, %c844669243_i32, %c1429443777_i32, %c1429443777_i32, %c1191669277_i32, %c2004578870_i32, %c1191669277_i32, %c844669243_i32, %c1429443777_i32, %c1191669277_i32, %c2004578870_i32, %c2004578870_i32, %c2004578870_i32, %c851953729_i32, %c1429443777_i32, %c2004578870_i32, %c1429443777_i32, %c1191669277_i32, %c605289834_i32, %c851953729_i32, %c851953729_i32, %c605289834_i32, %c1_i32, %c2004578870_i32, %c1_i32, %c2004578870_i32, %c1_i32, %c1_i32, %c1191669277_i32, %c605289834_i32, %c2004578870_i32, %c2004578870_i32, %c1191669277_i32, %c1_i32, %c1_i32, %c1429443777_i32, %c844669243_i32, %c1_i32, %c844669243_i32, %c1429443777_i32, %c605289834_i32, %c605289834_i32, %c1_i32, %c2004578870_i32, %c1429443777_i32, %c1191669277_i32, %c2004578870_i32, %c851953729_i32, %c1_i32, %c1191669277_i32, %c1_i32, %c1191669277_i32, %c844669243_i32, %c2004578870_i32, %c851953729_i32, %c1429443777_i32, %c1_i32, %c1191669277_i32, %c2004578870_i32, %c605289834_i32, %c851953729_i32, %c844669243_i32, %c844669243_i32, %c1_i32, %c851953729_i32, %c1429443777_i32, %c605289834_i32, %c2004578870_i32, %c2004578870_i32, %c851953729_i32, %c1191669277_i32, %c1191669277_i32, %c1191669277_i32, %c1191669277_i32, %c844669243_i32, %c2004578870_i32, %c851953729_i32, %c1_i32, %c1191669277_i32, %c2004578870_i32, %c844669243_i32, %c1_i32, %c1191669277_i32, %c1_i32, %c851953729_i32, %c851953729_i32, %c1191669277_i32, %c1191669277_i32, %c1429443777_i32, %c2004578870_i32, %c1429443777_i32, %c605289834_i32, %c605289834_i32, %c1191669277_i32, %c1429443777_i32, %c2004578870_i32, %c2004578870_i32, %c605289834_i32, %c1_i32, %c1191669277_i32, %c605289834_i32, %c1191669277_i32, %c1_i32, %c844669243_i32, %c2004578870_i32, %c1429443777_i32, %c605289834_i32, %c1_i32, %c1429443777_i32, %c605289834_i32, %c851953729_i32, %c1_i32, %c2004578870_i32, %c605289834_i32, %c1429443777_i32, %c1_i32, %c2004578870_i32, %c1429443777_i32, %c1_i32, %c851953729_i32, %c1429443777_i32, %c605289834_i32, %c605289834_i32, %c605289834_i32, %c844669243_i32, %c605289834_i32, %c844669243_i32, %c844669243_i32, %c1429443777_i32, %c2004578870_i32, %c1191669277_i32, %c2004578870_i32, %c2004578870_i32, %c605289834_i32, %c844669243_i32, %c851953729_i32, %c1191669277_i32, %c1_i32, %c1_i32, %c2004578870_i32, %c851953729_i32, %c1429443777_i32, %c844669243_i32, %c1191669277_i32, %c1_i32, %c605289834_i32, %c2004578870_i32, %c1_i32, %c1429443777_i32, %c1429443777_i32, %c1429443777_i32, %c1_i32, %c1191669277_i32, %c605289834_i32, %c1191669277_i32, %c2004578870_i32, %c851953729_i32, %c1191669277_i32, %c2004578870_i32, %c1_i32, %c1_i32, %c2004578870_i32, %c844669243_i32, %c2004578870_i32, %c851953729_i32, %c851953729_i32, %c1_i32, %c1191669277_i32, %c851953729_i32, %c1_i32, %c851953729_i32, %c844669243_i32, %c1191669277_i32, %c1191669277_i32, %c605289834_i32, %c1191669277_i32, %c1429443777_i32, %c1191669277_i32, %c1429443777_i32, %c851953729_i32, %c844669243_i32, %c1191669277_i32, %c2004578870_i32, %c851953729_i32, %c844669243_i32, %c605289834_i32, %c605289834_i32, %c1_i32, %c1429443777_i32, %c605289834_i32, %c1429443777_i32, %c844669243_i32, %c605289834_i32, %c1191669277_i32, %c1429443777_i32, %c2004578870_i32, %c605289834_i32, %c844669243_i32, %c2004578870_i32, %c2004578870_i32, %c1191669277_i32, %c1429443777_i32, %c1429443777_i32, %c851953729_i32, %c1191669277_i32, %c2004578870_i32, %c1191669277_i32, %c1_i32, %c605289834_i32, %c1191669277_i32, %c1191669277_i32, %c851953729_i32, %c851953729_i32, %c844669243_i32, %c1191669277_i32, %c1429443777_i32, %c1191669277_i32, %c1_i32, %c844669243_i32, %c605289834_i32, %c1429443777_i32, %c1429443777_i32, %c605289834_i32, %c1191669277_i32, %c1191669277_i32, %c1429443777_i32, %c1191669277_i32, %c1191669277_i32, %c851953729_i32, %c844669243_i32, %c2004578870_i32, %c1191669277_i32, %c851953729_i32, %c2004578870_i32, %c2004578870_i32, %c605289834_i32, %c844669243_i32, %c605289834_i32, %c844669243_i32, %c851953729_i32, %c2004578870_i32, %c605289834_i32, %c1_i32, %c605289834_i32, %c2004578870_i32, %c1191669277_i32, %c1_i32, %c1429443777_i32, %c1429443777_i32, %c1429443777_i32, %c1429443777_i32, %c1429443777_i32, %c844669243_i32, %c2004578870_i32, %c2004578870_i32, %c1191669277_i32, %c605289834_i32, %c1429443777_i32, %c851953729_i32, %c605289834_i32, %c844669243_i32, %c605289834_i32, %c1191669277_i32, %c2004578870_i32, %c605289834_i32, %c844669243_i32, %c851953729_i32, %c1191669277_i32, %c1191669277_i32, %c1429443777_i32, %c851953729_i32, %c1429443777_i32, %c1191669277_i32, %c2004578870_i32, %c2004578870_i32, %c1191669277_i32, %c1191669277_i32, %c1429443777_i32, %c844669243_i32, %c1429443777_i32, %c605289834_i32, %c605289834_i32, %c1_i32, %c844669243_i32, %c2004578870_i32, %c1_i32, %c1_i32, %c851953729_i32, %c844669243_i32, %c844669243_i32, %c1_i32, %c851953729_i32, %c605289834_i32, %c844669243_i32, %c1191669277_i32, %c1_i32, %c1429443777_i32, %c2004578870_i32, %c2004578870_i32, %c605289834_i32, %c2004578870_i32, %c1191669277_i32, %c605289834_i32, %c851953729_i32, %c605289834_i32, %c851953729_i32, %c1429443777_i32, %c1429443777_i32, %c844669243_i32, %c2004578870_i32, %c1429443777_i32, %c851953729_i32, %c2004578870_i32, %c1191669277_i32, %c844669243_i32, %c605289834_i32, %c1191669277_i32, %c851953729_i32, %c1429443777_i32, %c2004578870_i32, %c2004578870_i32, %c1429443777_i32, %c605289834_i32, %c1_i32, %c605289834_i32, %c1429443777_i32, %c851953729_i32, %c1429443777_i32, %c2004578870_i32, %c1191669277_i32, %c605289834_i32, %c2004578870_i32, %c2004578870_i32, %c2004578870_i32, %c2004578870_i32, %c1191669277_i32, %c2004578870_i32, %c844669243_i32, %c1429443777_i32, %c1429443777_i32, %c851953729_i32, %c1429443777_i32, %c1191669277_i32, %c2004578870_i32, %c844669243_i32, %c1191669277_i32, %c605289834_i32, %c851953729_i32, %c844669243_i32, %c605289834_i32, %c844669243_i32, %c605289834_i32, %c1429443777_i32, %c844669243_i32, %c844669243_i32, %c1429443777_i32, %c1_i32, %c2004578870_i32, %c844669243_i32, %c844669243_i32, %c2004578870_i32, %c2004578870_i32, %c1191669277_i32, %c1191669277_i32, %c2004578870_i32, %c2004578870_i32, %c605289834_i32, %c2004578870_i32, %c844669243_i32, %c2004578870_i32, %c2004578870_i32, %c844669243_i32, %c1_i32, %c851953729_i32, %c1429443777_i32, %c2004578870_i32, %c1_i32, %c1_i32, %c605289834_i32, %c2004578870_i32, %c851953729_i32, %c1191669277_i32, %c844669243_i32, %c1429443777_i32, %c2004578870_i32, %c1191669277_i32, %c1429443777_i32, %c2004578870_i32, %c2004578870_i32, %c2004578870_i32, %c605289834_i32, %c1191669277_i32, %c844669243_i32, %c605289834_i32, %c2004578870_i32, %c851953729_i32, %c2004578870_i32, %c605289834_i32, %c2004578870_i32, %c844669243_i32, %c605289834_i32, %c1_i32, %c1191669277_i32, %c1_i32, %c1_i32, %c1429443777_i32, %c2004578870_i32, %c1_i32, %c1191669277_i32, %c1191669277_i32, %c605289834_i32, %c1_i32, %c851953729_i32, %c1_i32, %c605289834_i32, %c851953729_i32, %c2004578870_i32, %c1191669277_i32, %c851953729_i32, %c2004578870_i32, %c2004578870_i32, %c844669243_i32, %c1429443777_i32, %c844669243_i32, %c1191669277_i32, %c605289834_i32, %c2004578870_i32, %c1_i32, %c605289834_i32, %c2004578870_i32, %c844669243_i32, %c1_i32, %c1429443777_i32, %c1429443777_i32, %c605289834_i32, %c851953729_i32, %c1_i32, %c1_i32, %c1429443777_i32, %c2004578870_i32, %c851953729_i32, %c1429443777_i32, %c851953729_i32, %c844669243_i32, %c1191669277_i32, %c605289834_i32, %c844669243_i32, %c1191669277_i32, %c1429443777_i32, %c1_i32, %c1_i32, %c1_i32, %c2004578870_i32, %c851953729_i32, %c844669243_i32, %c851953729_i32, %c1_i32, %c1191669277_i32, %c1_i32, %c1_i32, %c2004578870_i32, %c605289834_i32, %c605289834_i32, %c851953729_i32, %c1429443777_i32, %c844669243_i32, %c1_i32, %c1429443777_i32, %c1191669277_i32, %c1_i32, %c2004578870_i32, %c1429443777_i32, %c844669243_i32, %c844669243_i32, %c844669243_i32, %c1_i32, %c2004578870_i32, %c605289834_i32, %c1_i32, %c1429443777_i32, %c605289834_i32, %c1191669277_i32, %c851953729_i32, %c851953729_i32, %c1_i32, %c1429443777_i32, %c851953729_i32, %c605289834_i32, %c851953729_i32, %c1191669277_i32, %c2004578870_i32, %c851953729_i32, %c2004578870_i32, %c2004578870_i32, %c851953729_i32, %c1429443777_i32, %c844669243_i32, %c605289834_i32, %c1191669277_i32, %c844669243_i32, %c844669243_i32, %c1429443777_i32, %c851953729_i32 : tensor<10x10x6xi32>
      %258 = arith.andi %true_31, %true_31 : i1
      %alloc_52 = memref.alloc() : memref<6x16x10xi1>
      memref.tensor_store %68, %alloc_52 : memref<6x16x10xi1>
      tensor.yield %c6901_i16 : i16
    } : tensor<?x?x10xi16>
    %201 = vector.reduction <mul>, %89 : vector<16xf16> into f16
    %202 = index.maxs %117, %c1
    %203 = math.exp2 %cst_2 : f16
    %204 = scf.if %false_24 -> (memref<6x16x10xf32>) {
      %257 = math.ctlz %9 : tensor<10x10x6xi32>
      %258 = bufferization.to_tensor %159 : memref<6x16x10xi32>
      %259 = math.atan %from_elements : tensor<16x6xf16>
      %260 = index.castu %c13 : index to i32
      %261 = arith.cmpi sgt, %c-14907_i16, %c1_i16 : i16
      %false_51 = index.bool.constant false
      %262 = index.ceildivu %162, %48
      %263 = vector.broadcast %false : i1 to vector<i1>
      vector.transfer_write %263, %84[%152, %26] : vector<i1>, memref<16x10xi1>
      scf.yield %alloc_5 : memref<6x16x10xf32>
    } else {
      %257 = vector.reduction <minf>, %89 : vector<16xf16> into f16
      %258 = bufferization.to_memref %105 : memref<10x10x6xi32>
      %259 = arith.addi %c605289834_i32, %c1_i32 : i32
      %260 = arith.cmpi ne, %c6901_i16, %c1_i16 : i16
      %261 = arith.remsi %c6901_i16, %c1_i16 : i16
      %alloc_51 = memref.alloc() : memref<16x10xf32>
      memref.copy %alloc_15, %alloc_51 : memref<16x10xf32> to memref<16x10xf32>
      %262 = math.log2 %1 : tensor<16x10xf32>
      %263 = bufferization.to_memref %12 : memref<16x6xf32>
      scf.yield %107 : memref<6x16x10xf32>
    }
    %cst_37 = arith.constant 0x4D146035 : f32
    %205 = index.castu %false_23 : i1 to index
    %206 = arith.minui %true_31, %false_24 : i1
    %alloc_38 = memref.alloc() : memref<16xf32>
    %207 = memref.realloc %alloc_38 : memref<16xf32> to memref<10xf32>
    %208 = arith.cmpi sle, %c844669243_i32, %c851953729_i32 : i32
    %209 = arith.shrsi %true, %extracted : i1
    %210 = arith.remsi %c1_i16, %c6901_i16 : i16
    %cast_39 = tensor.cast %collapsed : tensor<100x6x1xi16> to tensor<?x?x?xi16>
    %211 = vector.bitcast %37 : vector<6xi64> to vector<6xi64>
    %212 = arith.maxui %true_31, %true : i1
    %213 = tensor.empty() : tensor<16xi32>
    %mapped_40 = linalg.map ins(%20, %21 : tensor<16xi32>, tensor<16xi32>) outs(%213 : tensor<16xi32>)
      (%in: i32, %in_51: i32) {
        %257 = math.sqrt %1 : tensor<16x10xf32>
        %258 = math.exp2 %from_elements : tensor<16x6xf16>
        %259 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 + 8) * 4, d3 + 4, d1 - d2 - 16, d1 - d2 + d0 - 16)>(%28, %39, %189, %c11)
        %260 = tensor.empty() : tensor<6x6xf32>
        %261 = tensor.empty() : tensor<16x6xf32>
        %262 = linalg.matmul ins(%12, %260 : tensor<16x6xf32>, tensor<6x6xf32>) outs(%261 : tensor<16x6xf32>) -> tensor<16x6xf32>
        bufferization.dealloc_tensor %2 : tensor<16x6xi1>
        %263 = vector.multi_reduction <add>, %79, %79 [] : vector<16x10xi1> to vector<16x10xi1>
        %264 = index.divs %c12, %83
        %265 = vector.transpose %211, [0] : vector<6xi64> to vector<6xi64>
        %266 = tensor.empty() : tensor<16x6xi64>
        %cst_52 = arith.constant 1.000000e+00 : f16
        %cst_53 = arith.constant 0.000000e+00 : f16
        %267 = vector.transfer_read %alloc_7[%c3, %205], %cst_53 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<16x6xf16>, vector<10xf16>
        %268 = scf.if %true_31 -> (i32) {
          %286 = vector.shuffle %37, %211 [0, 1, 4, 5, 6, 7, 8, 10, 11] : vector<6xi64>, vector<6xi64>
          %287 = arith.cmpf ord, %cst, %cst : f32
          %288 = arith.andi %true_31, %false_23 : i1
          %289 = vector.broadcast %cst : f32 to vector<10x10x6xf32>
          %290 = vector.fma %289, %289, %289 : vector<10x10x6xf32>
          %291 = vector.multi_reduction <minf>, %91, %cst_0 [0] : vector<16xf16> to f16
          %292 = math.fma %cst_2, %291, %196 : f16
          %293 = arith.ceildivsi %true, %true_31 : i1
          %294 = arith.mulf %cst, %cst : f32
          scf.yield %in : i32
        } else {
          %286 = arith.minf %cst_0, %cst_52 : f16
          %287 = index.maxs %168, %c12
          %288 = math.sqrt %10 : tensor<16x6xf16>
          %c-3152_i16 = arith.constant -3152 : i16
          %289 = vector.broadcast %c10222_i16 : i16 to vector<6xi16>
          %290 = vector.transfer_write %289, %collapsed[%25, %175, %56] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<6xi16>, tensor<100x6x1xi16>
          %291 = arith.shrui %c605289834_i32, %in : i32
          %292 = bufferization.clone %alloc_7 : memref<16x6xf16> to memref<16x6xf16>
          %293 = vector.multi_reduction <minsi>, %36, %c1_i64 [0] : vector<6xi64> to i64
          scf.yield %c1429443777_i32 : i32
        }
        %269 = vector.broadcast %c6901_i16 : i16 to vector<16x6xi16>
        %inserted_54 = tensor.insert %cst_0 into %10[%c15, %c2] : tensor<16x6xf16>
        %alloc_55 = memref.alloc() : memref<6x6xf16>
        %270 = tensor.empty() : tensor<16x6xf16>
        %271 = linalg.matmul ins(%10, %alloc_55 : tensor<16x6xf16>, memref<6x6xf16>) outs(%270 : tensor<16x6xf16>) -> tensor<16x6xf16>
        %272 = arith.divsi %c1_i32, %c1_i32 : i32
        %273 = arith.remf %cst_52, %cst_0 : f16
        %274 = bufferization.to_tensor %alloc_6 : memref<16x6xf16>
        memref.assume_alignment %107, 8 : memref<6x16x10xf32>
        %275 = vector.bitcast %144 : vector<16xf16> to vector<16xf16>
        %extracted_56 = tensor.extract %1[%c1, %c2] : tensor<16x10xf32>
        %expanded_57 = tensor.expand_shape %collapsed [[0], [1], [2, 3]] : tensor<100x6x1xi16> into tensor<100x6x1x1xi16>
        %276 = index.casts %false_23 : i1 to index
        %277 = math.log2 %extracted_56 : f32
        %alloc_58 = memref.alloc() : memref<10xf32>
        %278 = memref.realloc %alloc_58 : memref<10xf32> to memref<10xf32>
        %279 = arith.remsi %false_23, %true : i1
        %280 = arith.minui %c1_i64, %c1_i64 : i64
        %from_elements_59 = tensor.from_elements %false, %false, %extracted, %true_31, %true_31, %true_31, %false, %true, %false_23, %false, %false, %false_24, %true, %extracted, %true_31, %false_24, %false_24, %extracted, %false, %extracted, %false_23, %extracted, %extracted, %extracted, %true_31, %extracted, %false_24, %false_23, %false_23, %false_24, %false, %false_23, %true_31, %false_24, %false_23, %true_31, %true_31, %true_31, %true, %true, %false_23, %false, %false_24, %false_23, %extracted, %false_23, %true, %false, %true, %false_24, %false, %false_23, %true_31, %extracted, %false, %false_24, %false_24, %false_23, %extracted, %false, %true_31, %true, %true, %false, %extracted, %false_23, %false_23, %false, %true_31, %true_31, %true_31, %true, %false, %false, %true, %false, %extracted, %true_31, %extracted, %true, %false, %true_31, %false, %true, %false_23, %extracted, %extracted, %false_23, %extracted, %false, %false_23, %extracted, %true_31, %extracted, %false_24, %false, %false, %false_24, %false_24, %true_31, %true, %false, %false, %false, %false_24, %true_31, %true, %false_23, %true, %false, %false_24, %true_31, %false_23, %false_24, %true, %true, %false, %extracted, %true, %false_24, %true_31, %false_23, %false_24, %false_24, %false_24, %false, %false_24, %false_23, %true, %true_31, %false_24, %true, %extracted, %true, %true, %extracted, %false, %false, %extracted, %false_24, %true_31, %false_24, %true_31, %extracted, %extracted, %true, %false_23, %false_24, %true, %false_24, %true_31, %false, %false_24, %false_24, %false_24, %extracted, %true, %false, %true_31, %extracted : tensor<16x10xi1>
        %281 = index.mul %125, %259
        %282 = math.ceil %cst_52 : f16
        %283 = math.round %6 : tensor<6x16x10xf16>
        %284 = affine.min affine_map<(d0) -> ((d0 + d0 mod 32) * 64, d0 + d0 mod 32, (d0 - 2) mod 16, -(d0 mod 16))>(%117)
        %285 = index.casts %c6901_i16 : i16 to index
        %c1_i32_60 = arith.constant 1 : i32
        linalg.yield %c1_i32_60 : i32
      }
    %214 = math.floor %0 : tensor<16x10xf16>
    %215 = arith.mulf %196, %cst_1 : f16
    %extracted_41 = tensor.extract %generated_36[%c0, %c0, %c6] : tensor<?x?x10xi16>
    %216 = math.rsqrt %cst_2 : f16
    %217 = arith.maxf %196, %cst_2 : f16
    %218 = tensor.empty() : tensor<16x6xi32>
    %219 = math.fpowi %12, %218 : tensor<16x6xf32>, tensor<16x6xi32>
    %220 = vector.reduction <minsi>, %19 : vector<6xi1> into i1
    %221 = index.maxu %160, %c13
    %222 = vector.load %alloc_11[%c0, %c9, %c0] : memref<10x10x6xi64>, vector<16x6xi64>
    %223 = tensor.empty() : tensor<16x6xi1>
    %mapped_42 = linalg.map ins(%4 : tensor<16x6xi1>) outs(%223 : tensor<16x6xi1>)
      (%in: i1) {
        %257 = arith.mulf %cst, %cst : f32
        %258 = bufferization.clone %157 : memref<6x16x10xi32> to memref<6x16x10xi32>
        %259 = math.copysign %from_elements, %10 : tensor<16x6xf16>
        %260 = scf.execute_region -> tensor<10x10x6xi1> {
          %284 = arith.maxui %c1_i16, %extracted_41 : i16
          %alloc_56 = memref.alloc() : memref<6x10xf16>
          %285 = tensor.empty() : tensor<16x10xf16>
          %286 = linalg.matmul ins(%10, %alloc_56 : tensor<16x6xf16>, memref<6x10xf16>) outs(%285 : tensor<16x10xf16>) -> tensor<16x10xf16>
          %287 = affine.min affine_map<(d0, d1, d2) -> (0, (d0 ceildiv 2 - (d2 + 8)) mod 64, d0 ceildiv 2)>(%202, %165, %54)
          %288 = vector.shuffle %19, %156 [0, 1, 2, 4, 9, 11, 13, 14, 15] : vector<6xi1>, vector<10xi1>
          %from_elements_57 = tensor.from_elements %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst : tensor<10x10x6xf32>
          %extracted_58 = tensor.extract %11[%c1, %c0, %c9] : tensor<6x16x10xi1>
          %false_59 = index.bool.constant false
          %289 = index.divu %c2, %34
          %290 = affine.load %alloc_10[%c3, %c1, %c8] : memref<10x10x6xi1>
          %291 = vector.broadcast %false_23 : i1 to vector<16x10xi1>
          %292 = arith.minf %cst_1, %cst_1 : f16
          %293 = arith.remui %extracted_58, %extracted_58 : i1
          %294 = arith.minui %c6901_i16, %c10222_i16 : i16
          memref.assume_alignment %84, 2 : memref<16x10xi1>
          %295 = index.castu %extracted : i1 to index
          %alloc_60 = memref.alloc() : memref<10xf16>
          %296 = memref.realloc %alloc_60 : memref<10xf16> to memref<6xf16>
          %297 = tensor.empty() : tensor<10x10x6xi1>
          scf.yield %297 : tensor<10x10x6xi1>
        }
        %261 = arith.maxui %extracted_41, %c28870_i16 : i16
        %262 = vector.multi_reduction <or>, %19, %true_31 [0] : vector<6xi1> to i1
        %from_elements_51 = tensor.from_elements %c851953729_i32, %c851953729_i32, %c1191669277_i32, %c1191669277_i32, %c844669243_i32, %c2004578870_i32, %c1_i32, %c1429443777_i32, %c851953729_i32, %c1429443777_i32, %c2004578870_i32, %c2004578870_i32, %c844669243_i32, %c844669243_i32, %c844669243_i32, %c1_i32, %c1_i32, %c2004578870_i32, %c844669243_i32, %c1429443777_i32, %c1_i32, %c844669243_i32, %c2004578870_i32, %c1191669277_i32, %c851953729_i32, %c1429443777_i32, %c1429443777_i32, %c1429443777_i32, %c1191669277_i32, %c2004578870_i32, %c2004578870_i32, %c851953729_i32, %c1429443777_i32, %c605289834_i32, %c1_i32, %c851953729_i32, %c851953729_i32, %c851953729_i32, %c1191669277_i32, %c2004578870_i32, %c844669243_i32, %c2004578870_i32, %c1191669277_i32, %c2004578870_i32, %c844669243_i32, %c1191669277_i32, %c844669243_i32, %c1191669277_i32, %c1429443777_i32, %c851953729_i32, %c605289834_i32, %c1191669277_i32, %c851953729_i32, %c605289834_i32, %c2004578870_i32, %c1191669277_i32, %c844669243_i32, %c851953729_i32, %c1429443777_i32, %c1_i32, %c851953729_i32, %c844669243_i32, %c851953729_i32, %c851953729_i32, %c851953729_i32, %c605289834_i32, %c844669243_i32, %c605289834_i32, %c851953729_i32, %c851953729_i32, %c844669243_i32, %c1429443777_i32, %c1429443777_i32, %c844669243_i32, %c1429443777_i32, %c1_i32, %c1_i32, %c844669243_i32, %c1191669277_i32, %c1429443777_i32, %c605289834_i32, %c844669243_i32, %c2004578870_i32, %c605289834_i32, %c1_i32, %c1429443777_i32, %c1_i32, %c851953729_i32, %c2004578870_i32, %c2004578870_i32, %c1_i32, %c605289834_i32, %c851953729_i32, %c851953729_i32, %c1191669277_i32, %c1429443777_i32 : tensor<16x6xi32>
        %263 = bufferization.clone %alloc_5 : memref<6x16x10xf32> to memref<6x16x10xf32>
        %264 = affine.if affine_set<(d0) : ((-(d0 * 2 - 4)) floordiv 128 + 64 >= 0)>(%c8) -> memref<10x10x6xf16> {
          %rank_56 = tensor.rank %generated_36 : tensor<?x?x10xi16>
          %284 = vector.broadcast %cst : f32 to vector<6x16x10xf32>
          %285 = vector.fma %284, %284, %284 : vector<6x16x10xf32>
          %286 = arith.remsi %c851953729_i32, %c2004578870_i32 : i32
          %287 = index.divs %83, %125
          %288 = math.absi %223 : tensor<16x6xi1>
          %289 = arith.cmpf false, %cst_2, %196 : f16
          %290 = arith.ori %true_31, %false_24 : i1
          %collapsed_57 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<10x10x6xi32> into tensor<100x6xi32>
          affine.yield %alloc : memref<10x10x6xf16>
        } else {
          %284 = index.maxu %117, %109
          %from_elements_56 = tensor.from_elements %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64, %c1_i64 : tensor<6x16x10xi64>
          %splat = tensor.splat %in : tensor<6x16x10xi1>
          %285 = vector.flat_transpose %89 {columns = 4 : i32, rows = 4 : i32} : vector<16xf16> -> vector<16xf16>
          %286 = arith.shrui %false, %true : i1
          %287 = math.round %12 : tensor<16x6xf32>
          %288 = arith.andi %c28870_i16, %extracted_41 : i16
          %289 = vector.insert %262, %120 [6] : i1 into vector<10xi1>
          affine.yield %alloc : memref<10x10x6xf16>
        }
        %265 = math.log10 %cst : f32
        %inserted_52 = tensor.insert %c1_i64 into %7[%c15, %c2] : tensor<16x6xi64>
        %266 = math.atan2 %cst_1, %196 : f16
        %267 = arith.minf %cst_1, %cst_2 : f16
        %268 = arith.minsi %c1429443777_i32, %c844669243_i32 : i32
        %269 = math.tan %6 : tensor<6x16x10xf16>
        %270 = index.maxs %160, %26
        %271 = bufferization.to_tensor %alloc_11 : memref<10x10x6xi64>
        %272 = arith.minsi %extracted, %true_31 : i1
        %273 = index.maxs %185, %109
        %274 = math.ctlz %c1429443777_i32 : i32
        %275 = arith.maxui %c10222_i16, %c-14907_i16 : i16
        %276 = index.maxs %26, %c3
        %277 = index.maxu %109, %c13
        %278 = arith.minui %in, %262 : i1
        %rank = tensor.rank %0 : tensor<16x10xf16>
        %dest_53, %accumulated_value_54 = vector.scan <add>, %79, %119 {inclusive = true, reduction_dim = 0 : i64} : vector<16x10xi1>, vector<10xi1>
        %279 = math.powf %10, %10 : tensor<16x6xf16>
        %280 = arith.remf %196, %196 : f16
        %281 = arith.shrsi %c28870_i16, %c28870_i16 : i16
        scf.if %false {
          %284 = math.sqrt %from_elements : tensor<16x6xf16>
          %285 = arith.divsi %false_24, %false_24 : i1
          %286 = arith.subi %c1_i16, %c28870_i16 : i16
          %287 = arith.minf %cst, %cst : f32
          %288 = math.sqrt %cst_1 : f16
          %289 = arith.maxf %cst_1, %cst_2 : f16
          %extracted_56 = tensor.extract %133[%c15, %c0] : tensor<16x10xi1>
          %290 = math.copysign %10, %10 : tensor<16x6xf16>
        } else {
          %284 = math.log2 %from_elements : tensor<16x6xf16>
          %285 = math.exp2 %1 : tensor<16x10xf32>
          %286 = math.absi %c851953729_i32 : i32
          %287 = vector.transpose %119, [0] : vector<10xi1> to vector<10xi1>
          %288 = vector.reduction <add>, %90 : vector<16xi1> into i1
          %289 = index.castu %true_31 : i1 to index
          %290 = math.log %6 : tensor<6x16x10xf16>
          %291 = arith.minui %c844669243_i32, %c1_i32 : i32
        }
        %282 = arith.maxf %cst, %cst : f32
        %283 = arith.cmpf ult, %cst, %cst : f32
        %true_55 = arith.constant true
        linalg.yield %true_55 : i1
      }
    scf.if %extracted {
      %257 = tensor.empty() : tensor<16x6xf16>
      %mapped_51 = linalg.map ins(%131, %from_elements, %131 : memref<16x6xf16>, tensor<16x6xf16>, memref<16x6xf16>) outs(%257 : tensor<16x6xf16>)
        (%in: f16, %in_53: f16, %in_54: f16) {
          %alloc_55 = memref.alloc() : memref<10x16xi16>
          %265 = tensor.empty() : tensor<16x16xi16>
          %266 = linalg.matmul ins(%197, %alloc_55 : tensor<16x10xi16>, memref<10x16xi16>) outs(%265 : tensor<16x16xi16>) -> tensor<16x16xi16>
          %267 = arith.divsi %c1191669277_i32, %c2004578870_i32 : i32
          %268 = arith.addf %in_54, %in : f16
          %269 = math.powf %0, %0 : tensor<16x10xf16>
          %270 = arith.remui %false, %true : i1
          %271 = index.divu %151, %146
          %272 = arith.ceildivsi %extracted_41, %c28870_i16 : i16
          %273 = index.divs %28, %202
          %274 = index.castu %c10 : index to i32
          %275 = math.log2 %6 : tensor<6x16x10xf16>
          %276 = arith.minui %false_24, %extracted : i1
          %277 = arith.minsi %true, %false : i1
          %278 = memref.atomic_rmw assign %cst, %204[%c3, %c10, %c4] : (f32, memref<6x16x10xf32>) -> f32
          %279 = arith.xori %false_23, %false_23 : i1
          %280 = arith.remsi %c844669243_i32, %c851953729_i32 : i32
          %281 = tensor.empty() : tensor<10x10x6xi1>
          %282 = vector.broadcast %false_24 : i1 to vector<16x6xi1>
          %283 = vector.broadcast %c605289834_i32 : i32 to vector<16x6xi32>
          %284 = vector.gather %281[%152, %205, %c10] [%283], %282, %282 : tensor<10x10x6xi1>, vector<16x6xi32>, vector<16x6xi1>, vector<16x6xi1> into vector<16x6xi1>
          %cast_56 = tensor.cast %8 : tensor<16x6xi1> to tensor<?x?xi1>
          %285 = arith.minui %c10222_i16, %c10222_i16 : i16
          %286 = math.copysign %cst, %cst : f32
          affine.store %in_54, %alloc_6[%c10, %c12] : memref<16x6xf16>
          %287 = arith.addf %in, %cst_2 : f16
          %288 = arith.minui %extracted_41, %c6901_i16 : i16
          %289 = vector.load %alloc_10[%c5, %c4, %c4] : memref<10x10x6xi1>, vector<16x10xi1>
          %290 = math.log10 %cst_0 : f16
          %291 = arith.shrui %c28870_i16, %c6901_i16 : i16
          memref.assume_alignment %alloc_10, 1 : memref<10x10x6xi1>
          %292 = vector.transpose %119, [0] : vector<10xi1> to vector<10xi1>
          %293 = index.sizeof
          %294 = index.maxs %162, %48
          %295 = arith.shrsi %c1_i64, %c1_i64 : i64
          %296 = math.atan %6 : tensor<6x16x10xf16>
          %297 = index.divu %54, %189
          %cst_57 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_57 : f16
        }
      %inserted_52 = tensor.insert %196 into %0[%c5, %c2] : tensor<16x10xf16>
      %258 = vector.multi_reduction <minsi>, %90, %false_23 [0] : vector<16xi1> to i1
      %259 = vector.broadcast %cst : f32 to vector<10x10x6xf32>
      %260 = vector.fma %259, %259, %259 : vector<10x10x6xf32>
      %261 = arith.andi %false_23, %true : i1
      %262 = bufferization.to_tensor %157 : memref<6x16x10xi32>
      %263 = arith.andi %c1191669277_i32, %c1_i32 : i32
      %264 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %91, %91, %cst_1 : vector<16xf16>, vector<16xf16> into f16
    } else {
      %257 = index.castu %c1 : index to i32
      %inserted_51 = tensor.insert %cst into %generated[%c0, %c0, %c0] : tensor<?x?x?xf32>
      %258 = math.exp2 %196 : f16
      %259 = math.sqrt %cst_2 : f16
      %alloc_52 = memref.alloc() : memref<16xf32>
      %260 = memref.realloc %alloc_52 : memref<16xf32> to memref<6xf32>
      %261 = math.rsqrt %1 : tensor<16x10xf32>
      memref.assume_alignment %alloc_7, 1 : memref<16x6xf16>
      %262 = index.casts %c11 : index to i32
    }
    %224 = arith.mulf %196, %cst_1 : f16
    %225 = vector.broadcast %cst : f32 to vector<16x6xf32>
    %226 = vector.fma %225, %225, %225 : vector<16x6xf32>
    %true_43 = index.bool.constant true
    %227 = arith.remf %196, %cst_0 : f16
    %228 = vector.broadcast %c11 : index to vector<16xindex>
    vector.scatter %alloc_19[] [%228], %90, %90 : memref<i1>, vector<16xindex>, vector<16xi1>, vector<16xi1>
    %229 = math.rsqrt %0 : tensor<16x10xf16>
    %230 = arith.cmpi eq, %true_43, %true : i1
    %231 = vector.transpose %36, [0] : vector<6xi64> to vector<6xi64>
    %232 = scf.execute_region -> index {
      %257 = math.floor %10 : tensor<16x6xf16>
      %258 = vector.multi_reduction <add>, %128, %128 [] : vector<16x10xi16> to vector<16x10xi16>
      %259 = math.exp2 %0 : tensor<16x10xf16>
      %260 = index.sub %c8, %152
      %261 = arith.cmpi ugt, %true_31, %false_23 : i1
      %262 = vector.broadcast %c28870_i16 : i16 to vector<16x6xi16>
      %263 = scf.while (%arg3 = %90) : (vector<16xi1>) -> vector<16xi1> {
        %275 = vector.shuffle %119, %119 [0, 1, 5, 6, 7, 8, 14, 15, 17, 18, 19] : vector<10xi1>, vector<10xi1>
        %276 = vector.bitcast %19 : vector<6xi1> to vector<6xi1>
        %277 = math.atan %0 : tensor<16x10xf16>
        bufferization.dealloc_tensor %expanded_21 : tensor<10x10x6x1xi16>
        %278 = arith.floordivsi %extracted, %true_43 : i1
        %279 = vector.broadcast %c28870_i16 : i16 to vector<10x10x6xi16>
        %280 = math.log2 %10 : tensor<16x6xf16>
        %281 = bufferization.clone %alloc_7 : memref<16x6xf16> to memref<16x6xf16>
        scf.condition(%extracted) %90 : vector<16xi1>
      } do {
      ^bb0(%arg3: vector<16xi1>):
        %expanded_52 = tensor.expand_shape %133 [[0], [1, 2]] : tensor<16x10xi1> into tensor<16x10x1xi1>
        %275 = arith.ceildivsi %true_31, %extracted : i1
        %276 = index.ceildivs %162, %c15
        %277 = bufferization.clone %92 : memref<16x10xi16> to memref<16x10xi16>
        %278 = index.divs %221, %221
        %279 = math.log %6 : tensor<6x16x10xf16>
        %280 = vector.broadcast %cst : f32 to vector<16x6xf32>
        %281 = vector.fma %280, %225, %226 : vector<16x6xf32>
        %cst_53 = arith.constant 5.641600e+04 : f16
        %282 = vector.broadcast %cst : f32 to vector<16x6xf32>
        %283 = vector.fma %282, %226, %280 : vector<16x6xf32>
        vector.print %225 : vector<16x6xf32>
        %284 = bufferization.clone %193 : memref<10x10x6xi64> to memref<10x10x6xi64>
        %false_54 = index.bool.constant false
        %285 = affine.max affine_map<(d0) -> (d0, d0 - d0 floordiv 16 + (d0 floordiv 16) * 2)>(%c0)
        %286 = arith.remf %cst_1, %cst_2 : f16
        %from_elements_55 = tensor.from_elements %c10222_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %extracted_41, %c10222_i16, %c-14907_i16, %c28870_i16, %c1_i16, %c1_i16, %c10222_i16, %extracted_41, %extracted_41, %c28870_i16, %c-14907_i16, %extracted_41, %c1_i16, %extracted_41, %c-14907_i16, %c-14907_i16, %c1_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %extracted_41, %extracted_41, %c-14907_i16, %c1_i16, %c6901_i16, %extracted_41, %c-14907_i16, %c1_i16, %extracted_41, %c6901_i16, %extracted_41, %c6901_i16, %c28870_i16, %extracted_41, %extracted_41, %extracted_41, %c6901_i16, %extracted_41, %c10222_i16, %c6901_i16, %c-14907_i16, %extracted_41, %c10222_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c-14907_i16, %extracted_41, %c1_i16, %extracted_41, %c6901_i16, %c-14907_i16, %extracted_41, %c6901_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c1_i16, %extracted_41, %extracted_41, %c6901_i16, %c1_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c1_i16, %extracted_41, %c-14907_i16, %c-14907_i16, %extracted_41, %extracted_41, %extracted_41, %c6901_i16, %c1_i16, %c28870_i16, %extracted_41, %c1_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %extracted_41, %extracted_41, %c10222_i16, %c1_i16, %c6901_i16, %extracted_41, %extracted_41, %c6901_i16, %c1_i16, %extracted_41, %c28870_i16, %extracted_41, %c28870_i16, %c28870_i16, %c1_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %extracted_41, %c6901_i16, %c1_i16, %c-14907_i16, %extracted_41, %c28870_i16, %c10222_i16, %extracted_41, %c1_i16, %c6901_i16, %extracted_41, %c10222_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c6901_i16, %extracted_41, %c6901_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c6901_i16, %extracted_41, %c1_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c28870_i16, %c1_i16, %c1_i16, %c10222_i16, %c10222_i16, %extracted_41, %c6901_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c1_i16, %c-14907_i16, %c1_i16, %c-14907_i16, %extracted_41, %c1_i16, %c28870_i16, %c6901_i16, %c6901_i16, %extracted_41, %c-14907_i16, %extracted_41, %c10222_i16, %c6901_i16, %c1_i16, %c28870_i16, %extracted_41, %extracted_41, %c6901_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c1_i16, %c1_i16, %c6901_i16, %c-14907_i16, %c1_i16, %c10222_i16, %c10222_i16, %c28870_i16, %extracted_41, %c-14907_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %extracted_41, %c1_i16, %extracted_41, %c-14907_i16, %c1_i16, %c6901_i16, %c1_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c1_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %extracted_41, %c1_i16, %extracted_41, %extracted_41, %c10222_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c1_i16, %c10222_i16, %c28870_i16, %extracted_41, %c-14907_i16, %c-14907_i16, %extracted_41, %c28870_i16, %c10222_i16, %c10222_i16, %extracted_41, %c10222_i16, %c1_i16, %extracted_41, %c-14907_i16, %c10222_i16, %c6901_i16, %c6901_i16, %extracted_41, %c-14907_i16, %c1_i16, %c1_i16, %extracted_41, %c28870_i16, %c1_i16, %extracted_41, %c1_i16, %c1_i16, %extracted_41, %c10222_i16, %c10222_i16, %c1_i16, %c1_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c1_i16, %c1_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c1_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %extracted_41, %c6901_i16, %c1_i16, %c28870_i16, %extracted_41, %c28870_i16, %extracted_41, %extracted_41, %c28870_i16, %c6901_i16, %c10222_i16, %extracted_41, %extracted_41, %c6901_i16, %c1_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c1_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c10222_i16, %extracted_41, %c6901_i16, %extracted_41, %c1_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c28870_i16, %extracted_41, %c-14907_i16, %c10222_i16, %extracted_41, %c6901_i16, %c10222_i16, %c1_i16, %extracted_41, %c6901_i16, %c1_i16, %c6901_i16, %c-14907_i16, %c1_i16, %c10222_i16, %c-14907_i16, %extracted_41, %c1_i16, %c-14907_i16, %c1_i16, %c28870_i16, %extracted_41, %c28870_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %extracted_41, %c10222_i16, %c28870_i16, %c6901_i16, %c1_i16, %c10222_i16, %extracted_41, %c28870_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %extracted_41, %extracted_41, %c10222_i16, %c28870_i16, %c10222_i16, %extracted_41, %c6901_i16, %extracted_41, %c1_i16, %extracted_41, %c-14907_i16, %extracted_41, %c-14907_i16, %extracted_41, %c28870_i16, %extracted_41, %c6901_i16, %c10222_i16, %c28870_i16, %extracted_41, %extracted_41, %c-14907_i16, %c1_i16, %extracted_41, %c-14907_i16, %c6901_i16, %c-14907_i16, %extracted_41, %c10222_i16, %c10222_i16, %extracted_41, %c28870_i16, %c6901_i16, %c10222_i16, %c1_i16, %c1_i16, %c10222_i16, %c6901_i16, %c1_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c28870_i16, %extracted_41, %c6901_i16, %c28870_i16, %c1_i16, %c1_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c1_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c1_i16, %c6901_i16, %c10222_i16, %extracted_41, %c1_i16, %c-14907_i16, %c6901_i16, %c1_i16, %c6901_i16, %extracted_41, %extracted_41, %c10222_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %extracted_41, %c1_i16, %extracted_41, %c-14907_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c1_i16, %c1_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c6901_i16, %c1_i16, %c28870_i16, %extracted_41, %c6901_i16, %c-14907_i16, %c6901_i16, %extracted_41, %c1_i16, %extracted_41, %c-14907_i16, %c10222_i16, %c1_i16, %c1_i16, %c6901_i16, %c28870_i16, %c1_i16, %c6901_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c1_i16, %c10222_i16, %extracted_41, %c6901_i16, %c1_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c1_i16, %c-14907_i16, %extracted_41, %extracted_41, %c-14907_i16, %extracted_41, %c10222_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %extracted_41, %c28870_i16, %extracted_41, %c-14907_i16, %extracted_41, %c28870_i16, %c1_i16, %c10222_i16, %c1_i16, %c6901_i16, %c-14907_i16, %c1_i16, %c10222_i16, %extracted_41, %c10222_i16, %c-14907_i16, %c-14907_i16, %extracted_41, %c10222_i16, %c10222_i16, %c1_i16, %extracted_41, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %extracted_41, %c1_i16, %c10222_i16, %c6901_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c1_i16, %c6901_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c1_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c1_i16, %c10222_i16, %c10222_i16, %c1_i16, %c1_i16, %extracted_41, %c10222_i16, %c6901_i16, %c1_i16, %extracted_41, %c1_i16, %c1_i16, %extracted_41, %c28870_i16, %c6901_i16, %c6901_i16, %extracted_41, %c1_i16, %c-14907_i16, %extracted_41, %extracted_41, %c-14907_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %extracted_41, %c6901_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %extracted_41, %c-14907_i16, %c6901_i16, %c1_i16, %extracted_41, %c6901_i16, %c28870_i16, %c1_i16, %c6901_i16, %c1_i16, %extracted_41, %c6901_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %c1_i16, %c1_i16, %c28870_i16, %c1_i16, %c6901_i16, %c1_i16, %c-14907_i16, %c10222_i16, %c1_i16, %c1_i16, %c6901_i16, %c1_i16, %c-14907_i16, %c1_i16, %c6901_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c6901_i16, %extracted_41, %c-14907_i16, %c6901_i16, %extracted_41, %c10222_i16, %c1_i16, %extracted_41, %c10222_i16, %c10222_i16, %c28870_i16, %c1_i16, %extracted_41, %c-14907_i16, %c-14907_i16, %c1_i16, %extracted_41, %c1_i16, %c28870_i16, %c6901_i16, %c-14907_i16, %extracted_41, %c10222_i16, %c1_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c1_i16, %c6901_i16, %c28870_i16, %c6901_i16, %c6901_i16, %c10222_i16, %extracted_41, %extracted_41, %c6901_i16, %c10222_i16, %c-14907_i16, %c1_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c1_i16, %c1_i16, %c1_i16, %c28870_i16, %c1_i16, %c6901_i16, %extracted_41, %c28870_i16, %c6901_i16, %c10222_i16, %c10222_i16, %extracted_41, %c-14907_i16, %extracted_41, %c6901_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c-14907_i16, %c1_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c28870_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c10222_i16, %c6901_i16, %c28870_i16, %c28870_i16, %extracted_41, %c1_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %extracted_41, %extracted_41, %c28870_i16, %c28870_i16, %extracted_41, %extracted_41, %c10222_i16, %c1_i16, %c28870_i16, %c-14907_i16, %extracted_41, %c6901_i16, %c-14907_i16, %c-14907_i16, %extracted_41, %c10222_i16, %extracted_41, %c1_i16, %c28870_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c-14907_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c1_i16, %c-14907_i16, %extracted_41, %c6901_i16, %c-14907_i16, %c28870_i16, %extracted_41, %c-14907_i16, %c6901_i16, %c10222_i16, %c10222_i16, %c6901_i16, %c1_i16, %c28870_i16, %c1_i16, %c10222_i16, %c1_i16, %extracted_41, %c10222_i16, %extracted_41, %c6901_i16, %extracted_41, %c10222_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c10222_i16, %c1_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c6901_i16, %extracted_41, %c-14907_i16, %extracted_41, %c10222_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c1_i16, %c1_i16, %c-14907_i16, %extracted_41, %c28870_i16, %extracted_41, %extracted_41, %c-14907_i16, %c28870_i16, %extracted_41, %c10222_i16, %c-14907_i16, %c10222_i16, %c6901_i16, %c6901_i16, %extracted_41, %c-14907_i16, %extracted_41, %c1_i16, %c-14907_i16, %c28870_i16, %c10222_i16, %c1_i16, %c-14907_i16, %extracted_41, %c-14907_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c-14907_i16, %c6901_i16, %c28870_i16, %c1_i16, %c1_i16, %c1_i16, %c-14907_i16, %extracted_41, %c1_i16, %c10222_i16, %extracted_41, %c28870_i16, %c28870_i16, %c1_i16, %c28870_i16, %c6901_i16, %c28870_i16, %c10222_i16, %c1_i16, %c6901_i16, %extracted_41, %extracted_41, %c1_i16, %c1_i16, %extracted_41, %c6901_i16, %extracted_41, %c28870_i16, %c6901_i16, %c-14907_i16, %c6901_i16, %c6901_i16, %c1_i16, %c-14907_i16, %extracted_41, %c1_i16, %c28870_i16, %c10222_i16, %c1_i16, %c10222_i16, %c10222_i16, %c28870_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c1_i16, %c10222_i16, %c10222_i16, %c1_i16, %c1_i16, %c1_i16, %extracted_41, %extracted_41, %c10222_i16, %extracted_41, %c-14907_i16, %extracted_41, %extracted_41, %c6901_i16, %extracted_41, %c28870_i16, %c6901_i16, %extracted_41, %c1_i16, %c10222_i16, %c28870_i16, %extracted_41, %c-14907_i16, %c1_i16, %c1_i16, %c6901_i16, %c1_i16, %extracted_41, %c28870_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c1_i16, %c28870_i16, %c10222_i16, %c10222_i16, %c1_i16, %c6901_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c6901_i16, %extracted_41, %c-14907_i16, %extracted_41, %c6901_i16, %extracted_41, %c6901_i16, %c10222_i16, %c28870_i16, %c10222_i16, %c6901_i16, %c6901_i16, %c6901_i16, %c1_i16, %c1_i16, %c1_i16, %c1_i16, %c-14907_i16, %extracted_41, %c6901_i16, %extracted_41, %c6901_i16, %c10222_i16, %c10222_i16, %c28870_i16, %extracted_41, %c28870_i16, %c1_i16, %c10222_i16, %c1_i16, %c28870_i16, %c10222_i16, %extracted_41, %c10222_i16, %c28870_i16, %c6901_i16, %c10222_i16, %c10222_i16, %extracted_41, %c28870_i16, %c-14907_i16, %c10222_i16, %c1_i16, %c28870_i16, %c1_i16, %extracted_41, %c-14907_i16, %extracted_41, %c1_i16, %c1_i16, %c28870_i16, %extracted_41, %c1_i16, %c6901_i16, %c6901_i16, %c-14907_i16, %c10222_i16, %extracted_41, %c-14907_i16, %c1_i16, %c-14907_i16, %c10222_i16, %c10222_i16, %c-14907_i16, %c28870_i16, %c-14907_i16, %c6901_i16, %c1_i16, %c-14907_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c28870_i16, %c10222_i16, %c-14907_i16, %c6901_i16, %extracted_41, %c1_i16, %c-14907_i16, %extracted_41, %c-14907_i16 : tensor<6x16x10xi16>
        %287 = index.divu %125, %c11
        scf.yield %90 : vector<16xi1>
      }
      %264 = vector.broadcast %cst : f32 to vector<16x6xf32>
      %265 = vector.fma %264, %226, %225 : vector<16x6xf32>
      %266 = vector.load %alloc_4[%c4, %c9, %c2] : memref<10x10x6xi16>, vector<10x10x6xi16>
      %267 = vector.reduction <add>, %144 : vector<16xf16> into f16
      %268 = arith.xori %true_31, %false : i1
      %269 = index.ceildivu %188, %28
      %270 = arith.maxui %c10222_i16, %c10222_i16 : i16
      %271 = vector.broadcast %c1_i64 : i64 to vector<i64>
      %272 = vector.transfer_write %271, %7[%269, %56] : vector<i64>, tensor<16x6xi64>
      %273 = index.castu %true_43 : i1 to index
      %274 = tensor.empty() : tensor<16x6xf16>
      %mapped_51 = linalg.map ins(%from_elements, %from_elements, %131 : tensor<16x6xf16>, tensor<16x6xf16>, memref<16x6xf16>) outs(%274 : tensor<16x6xf16>)
        (%in: f16, %in_52: f16, %in_53: f16) {
          %275 = arith.cmpi uge, %false_23, %true_43 : i1
          %276 = arith.divui %c851953729_i32, %c605289834_i32 : i32
          memref.copy %alloc_10, %alloc_9 : memref<10x10x6xi1> to memref<10x10x6xi1>
          %277 = arith.minui %true_43, %true_43 : i1
          %278 = arith.remf %196, %cst_1 : f16
          %279 = arith.minf %in, %196 : f16
          %280 = index.maxu %205, %162
          %281 = arith.remsi %c1_i32, %c2004578870_i32 : i32
          %282 = vector.flat_transpose %120 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
          %283 = arith.remui %false_24, %true_31 : i1
          %284 = arith.shrui %c-14907_i16, %c10222_i16 : i16
          %285 = math.log10 %cst_1 : f16
          %expanded_54 = tensor.expand_shape %0 [[0], [1, 2]] : tensor<16x10xf16> into tensor<16x10x1xf16>
          %286 = tensor.empty() : tensor<16x10xi32>
          %287 = math.fpowi %0, %286 : tensor<16x10xf16>, tensor<16x10xi32>
          %288 = index.divs %168, %273
          %289 = affine.load %alloc_7[%c2, %c7] : memref<16x6xf16>
          %290 = arith.minui %c1_i64, %c1_i64 : i64
          %291 = math.fpowi %289, %c1191669277_i32 : f16, i32
          %292 = math.atan %196 : f16
          %c1_i32_55 = arith.constant 1 : i32
          %293 = vector.transfer_read %218[%202, %125], %c1_i32_55 : tensor<16x6xi32>, vector<10xi32>
          %294 = arith.subi %c1_i16, %c1_i16 : i16
          %295 = math.exp2 %cst_1 : f16
          %296 = tensor.empty() : tensor<10x6xi32>
          %297 = tensor.empty() : tensor<16x6xi32>
          %298 = linalg.matmul ins(%286, %296 : tensor<16x10xi32>, tensor<10x6xi32>) outs(%297 : tensor<16x6xi32>) -> tensor<16x6xi32>
          %299 = vector.broadcast %false : i1 to vector<16x6xi1>
          %300 = vector.transfer_write %299, %68[%115, %54, %c3] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x6xi1>, tensor<6x16x10xi1>
          %301 = arith.minsi %c-14907_i16, %extracted_41 : i16
          %302 = index.ceildivu %115, %c9
          bufferization.dealloc_tensor %expanded_21 : tensor<10x10x6x1xi16>
          %303 = arith.cmpf uge, %cst_0, %cst_2 : f16
          %304 = bufferization.clone %alloc_5 : memref<6x16x10xf32> to memref<6x16x10xf32>
          %305 = bufferization.to_tensor %alloc_13 : memref<16x10xi1>
          %306 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 - d0)>(%c4, %164, %56, %c7)
          %307 = bufferization.clone %alloc_15 : memref<16x10xf32> to memref<16x10xf32>
          %cst_56 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_56 : f16
        }
      scf.yield %160 : index
    }
    %233 = arith.minf %cst_1, %cst_0 : f16
    %234 = math.exp %12 : tensor<16x6xf32>
    %cst_44 = arith.constant 1.000000e+00 : f32
    %235 = vector.transfer_read %204[%202, %25, %69], %cst_44 : memref<6x16x10xf32>, vector<6xf32>
    %236 = math.copysign %12, %12 : tensor<16x6xf32>
    scf.index_switch %162 
    case 1 {
      memref.assume_alignment %alloc_16, 2 : memref<6x16x10xi64>
      %257 = arith.floordivsi %c851953729_i32, %c2004578870_i32 : i32
      %258 = affine.if affine_set<(d0) : (d0 * -8 >= 0, d0 + d0 * -8 + d0 mod 128 + 32 >= 0, d0 mod 128 >= 0)>(%c12) -> f32 {
        %272 = bufferization.clone %alloc_5 : memref<6x16x10xf32> to memref<6x16x10xf32>
        %273 = math.fma %6, %6, %6 : tensor<6x16x10xf16>
        %274 = math.ctlz %16 : tensor<16x6xi1>
        %275 = tensor.empty() : tensor<16x6x1xi32>
        %276 = math.fpowi %expanded_33, %275 : tensor<16x6x1xf32>, tensor<16x6x1xi32>
        %277 = arith.ceildivsi %false, %true_31 : i1
        %278 = index.castu %false_23 : i1 to index
        %279 = arith.shrui %c844669243_i32, %c1429443777_i32 : i32
        %280 = vector.shuffle %91, %144 [1, 2, 3, 4, 7, 9, 11, 12, 15, 18, 21, 25, 26, 27] : vector<16xf16>, vector<16xf16>
        affine.yield %cst : f32
      } else {
        %272 = arith.remsi %c605289834_i32, %c1_i32 : i32
        %true_52 = arith.constant true
        %273 = vector.transfer_read %11[%152, %164, %188], %true_52 : tensor<6x16x10xi1>, vector<6x6xi1>
        %274 = bufferization.to_memref %9 : memref<10x10x6xi32>
        %275 = vector.reduction <add>, %156 : vector<10xi1> into i1
        %alloc_53 = memref.alloc() : memref<6x16x10xi1>
        memref.tensor_store %68, %alloc_53 : memref<6x16x10xi1>
        %276 = vector.broadcast %cst_44 : f32 to vector<f32>
        %277 = vector.transfer_write %276, %12[%165, %c1] : vector<f32>, tensor<16x6xf32>
        %278 = vector.load %alloc_5[%c1, %c14, %c6] : memref<6x16x10xf32>, vector<6x16x10xf32>
        %279 = arith.remsi %c-14907_i16, %c28870_i16 : i16
        affine.yield %cst_44 : f32
      }
      %alloc_51 = memref.alloc() : memref<6xi16>
      %259 = memref.realloc %alloc_51 : memref<6xi16> to memref<16xi16>
      %260 = arith.cmpi uge, %extracted_41, %c28870_i16 : i16
      %261 = arith.subi %true_43, %true : i1
      %262 = index.casts %232 : index to i32
      %263 = index.ceildivu %83, %185
      %264 = arith.cmpf oeq, %cst_1, %cst_1 : f16
      %265 = arith.minf %cst_0, %cst_1 : f16
      %266 = arith.cmpi sgt, %true, %true_43 : i1
      %267 = math.round %0 : tensor<16x10xf16>
      %268 = vector.shuffle %144, %89 [3, 5, 7, 8, 10, 11, 12, 13, 14, 16, 17, 19, 23, 24, 26, 27, 28, 30, 31] : vector<16xf16>, vector<16xf16>
      %269 = index.castu %c14 : index to i32
      %270 = vector.create_mask %164, %54, %185 : vector<6x16x10xi1>
      %271 = vector.extract %211[2] : vector<6xi64>
      scf.yield
    }
    case 2 {
      %alloca_51 = memref.alloca() : memref<10x10x6xi1>
      %257 = scf.if %true_43 -> (memref<10x10x6xi32>) {
        %271 = math.atan %12 : tensor<16x6xf32>
        %272 = vector.shuffle %128, %128 [1, 3, 6, 8, 9, 12, 13, 16, 17, 20, 22, 23, 26, 27, 30] : vector<16x10xi16>, vector<16x10xi16>
        %273 = affine.apply affine_map<(d0) -> (0)>(%83)
        %274 = vector.load %107[%c4, %c13, %c6] : memref<6x16x10xf32>, vector<16x6xf32>
        %275 = math.ctlz %133 : tensor<16x10xi1>
        %276 = bufferization.clone %alloc_7 : memref<16x6xf16> to memref<16x6xf16>
        %277 = arith.ceildivsi %extracted, %extracted : i1
        %278 = arith.shrui %false_24, %false : i1
        %alloc_55 = memref.alloc() : memref<10x10x6xi32>
        scf.yield %alloc_55 : memref<10x10x6xi32>
      } else {
        %271 = arith.mulf %cst_2, %cst_1 : f16
        %272 = math.log %6 : tensor<6x16x10xf16>
        %c5304_i16 = arith.constant 5304 : i16
        %collapsed_55 = tensor.collapse_shape %5 [[0, 1]] : tensor<16x10xi1> into tensor<160xi1>
        %cast_56 = tensor.cast %8 : tensor<16x6xi1> to tensor<?x?xi1>
        %alloc_57 = memref.alloc() : memref<6x16x10xi16>
        %273 = index.maxs %25, %48
        %274 = index.casts %c1191669277_i32 : i32 to index
        %alloc_58 = memref.alloc() : memref<10x10x6xi32>
        scf.yield %alloc_58 : memref<10x10x6xi32>
      }
      %258 = arith.remsi %c6901_i16, %c6901_i16 : i16
      %true_52 = arith.constant true
      %259 = vector.transfer_read %4[%c2, %c13], %true_52 : tensor<16x6xi1>, vector<i1>
      %260 = arith.cmpf false, %196, %196 : f16
      %true_53 = index.bool.constant true
      %261 = tensor.empty() : tensor<10x10x6xi64>
      %mapped_54 = linalg.map ins(%193, %alloc_12 : memref<10x10x6xi64>, memref<10x10x6xi64>) outs(%261 : tensor<10x10x6xi64>)
        (%in: i64, %in_55: i64) {
          %271 = arith.minf %cst_0, %cst_2 : f16
          %272 = vector.extract %222[6] : vector<16x6xi64>
          %273 = memref.load %107[%c5, %c3, %c4] : memref<6x16x10xf32>
          %274 = index.divu %28, %164
          %275 = arith.divsi %c28870_i16, %c1_i16 : i16
          %276 = math.log %6 : tensor<6x16x10xf16>
          %277 = arith.minui %c28870_i16, %c6901_i16 : i16
          %278 = vector.bitcast %128 : vector<16x10xi16> to vector<16x10xi16>
          %279 = index.ceildivs %26, %48
          %280 = math.absi %15 : tensor<16x6xi16>
          %281 = arith.maxf %cst_0, %cst_1 : f16
          %282 = arith.remf %196, %cst_2 : f16
          %283 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 mod 4) * 2)>(%45, %c3, %48, %175)
          %284 = vector.broadcast %cst : f32 to vector<10x10x6xf32>
          %285 = affine.max affine_map<(d0) -> ((d0 floordiv 128) ceildiv 32 - 2, d0)>(%c15)
          %286 = arith.cmpf ole, %cst_44, %cst_44 : f32
          %287 = vector.broadcast %c6901_i16 : i16 to vector<10x10xi16>
          %288 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %128, %278, %287 : vector<16x10xi16>, vector<16x10xi16> into vector<10x10xi16>
          %from_elements_56 = tensor.from_elements %c851953729_i32, %c1429443777_i32, %c1429443777_i32, %c1191669277_i32, %c605289834_i32, %c605289834_i32, %c844669243_i32, %c1429443777_i32, %c1191669277_i32, %c2004578870_i32, %c605289834_i32, %c2004578870_i32, %c1_i32, %c844669243_i32, %c851953729_i32, %c1429443777_i32, %c605289834_i32, %c1191669277_i32, %c1_i32, %c1_i32, %c2004578870_i32, %c1429443777_i32, %c2004578870_i32, %c851953729_i32, %c844669243_i32, %c605289834_i32, %c844669243_i32, %c851953729_i32, %c844669243_i32, %c851953729_i32, %c1191669277_i32, %c605289834_i32, %c1_i32, %c2004578870_i32, %c1429443777_i32, %c1_i32, %c1_i32, %c1_i32, %c1429443777_i32, %c1_i32, %c1191669277_i32, %c1191669277_i32, %c1_i32, %c844669243_i32, %c605289834_i32, %c1_i32, %c851953729_i32, %c1191669277_i32, %c605289834_i32, %c1429443777_i32, %c844669243_i32, %c1429443777_i32, %c605289834_i32, %c844669243_i32, %c844669243_i32, %c605289834_i32, %c2004578870_i32, %c1429443777_i32, %c1429443777_i32, %c605289834_i32, %c1_i32, %c851953729_i32, %c1_i32, %c605289834_i32, %c1429443777_i32, %c1_i32, %c2004578870_i32, %c2004578870_i32, %c2004578870_i32, %c844669243_i32, %c2004578870_i32, %c1_i32, %c1191669277_i32, %c851953729_i32, %c844669243_i32, %c851953729_i32, %c1191669277_i32, %c1191669277_i32, %c844669243_i32, %c1_i32, %c1_i32, %c605289834_i32, %c844669243_i32, %c1429443777_i32, %c1429443777_i32, %c851953729_i32, %c851953729_i32, %c844669243_i32, %c1429443777_i32, %c1_i32, %c2004578870_i32, %c1191669277_i32, %c851953729_i32, %c2004578870_i32, %c605289834_i32, %c851953729_i32 : tensor<16x6xi32>
          %289 = math.ctpop %false_24 : i1
          %290 = vector.insert %true_53, %119 [4] : i1 into vector<10xi1>
          %from_elements_57 = tensor.from_elements %extracted, %false_23, %true_31, %true_52, %false_23, %false_23, %true, %false_23, %false, %true_43, %true, %true_31, %false, %true_31, %true_31, %true, %true_43, %true, %extracted, %true_53, %true_52, %true_53, %false_24, %extracted, %true_53, %true_31, %true_52, %false_24, %false_24, %false_24, %extracted, %false, %true_53, %true_53, %true_43, %true_53, %true_43, %extracted, %true_53, %true_53, %false_23, %false_24, %true_52, %true, %true_53, %extracted, %true, %true_31, %true_53, %true, %true_43, %false_24, %false_24, %true_31, %false_24, %false, %false_24, %false, %true_52, %true_31, %extracted, %false_24, %false_23, %false_24, %extracted, %false_23, %false, %false_24, %true_52, %true_53, %true, %false_23, %false_24, %true_43, %false_23, %false_23, %true_43, %true_31, %true, %true_31, %true_43, %true_31, %true_52, %true_31, %true_31, %false, %false_24, %false_23, %true_31, %false_24, %false_23, %true_31, %false_23, %true_52, %extracted, %false : tensor<16x6xi1>
          %291 = math.atan %12 : tensor<16x6xf32>
          memref.assume_alignment %alloc_7, 8 : memref<16x6xf16>
          %292 = vector.transpose %79, [0, 1] : vector<16x10xi1> to vector<16x10xi1>
          vector.print %78 : vector<16x10xi1>
          %293 = arith.minui %false_24, %true_53 : i1
          %294 = arith.minui %c2004578870_i32, %c605289834_i32 : i32
          %295 = bufferization.to_memref %68 : memref<6x16x10xi1>
          %296 = arith.addi %c-14907_i16, %c10222_i16 : i16
          %297 = arith.addi %c10222_i16, %c28870_i16 : i16
          %false_58 = index.bool.constant false
          %298 = math.exp2 %10 : tensor<16x6xf16>
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %262 = memref.atomic_rmw andi %c605289834_i32, %257[%c8, %c5, %c1] : (i32, memref<10x10x6xi32>) -> i32
      %263 = scf.execute_region -> vector<16x10xf16> {
        %271 = vector.multi_reduction <minf>, %89, %89 [] : vector<16xf16> to vector<16xf16>
        %272 = vector.transpose %128, [0, 1] : vector<16x10xi16> to vector<16x10xi16>
        %273 = index.castu %c-14907_i16 : i16 to index
        %274 = index.casts %162 : index to i32
        %275 = arith.remf %cst, %cst_44 : f32
        %276 = math.absi %16 : tensor<16x6xi1>
        %cast_55 = tensor.cast %collapsed : tensor<100x6x1xi16> to tensor<?x?x?xi16>
        %277 = vector.broadcast %c1_i64 : i64 to vector<10xi64>
        %278 = vector.maskedload %193[%c9, %c9, %c5], %156, %277 : memref<10x10x6xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
        %279 = arith.mulf %cst, %cst_44 : f32
        %280 = arith.cmpf uno, %cst, %cst : f32
        %281 = arith.minui %c1_i64, %c1_i64 : i64
        %alloc_56 = memref.alloc() : memref<6x16x10xi1>
        %282 = vector.broadcast %true_52 : i1 to vector<16x6xi1>
        %283 = vector.broadcast %c851953729_i32 : i32 to vector<16x6xi32>
        %284 = vector.gather %alloc_56[%c8, %c5, %45] [%283], %282, %282 : memref<6x16x10xi1>, vector<16x6xi32>, vector<16x6xi1>, vector<16x6xi1> into vector<16x6xi1>
        %285 = math.atan %1 : tensor<16x10xf32>
        %alloc_57 = memref.alloc() : memref<10xf16>
        %286 = memref.realloc %alloc_57 : memref<10xf16> to memref<10xf16>
        %true_58 = index.bool.constant true
        %287 = math.copysign %0, %0 : tensor<16x10xf16>
        %288 = vector.broadcast %196 : f16 to vector<16x10xf16>
        scf.yield %288 : vector<16x10xf16>
      }
      %264 = arith.maxui %c1429443777_i32, %c1429443777_i32 : i32
      %265 = vector.transpose %222, [1, 0] : vector<16x6xi64> to vector<6x16xi64>
      %266 = arith.mulf %cst_2, %196 : f16
      %267 = affine.if affine_set<(d0) : (d0 + 4 >= 0, (d0 floordiv 2) mod 4 >= 0)>(%c7) -> memref<10x10x6xi16> {
        %271 = vector.broadcast %c1429443777_i32 : i32 to vector<6x10xi32>
        %272 = vector.transfer_write %271, %114[%c2, %125, %c10] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<6x10xi32>, tensor<10x10x6xi32>
        %273 = math.log10 %12 : tensor<16x6xf32>
        %274 = index.castu %c11 : index to i32
        bufferization.dealloc_tensor %105 : tensor<10x10x6xi32>
        %275 = arith.minsi %true_53, %true_53 : i1
        %276 = vector.load %159[%c0, %c5, %c4] : memref<6x16x10xi32>, vector<16x10xi32>
        %277 = vector.broadcast %c1_i64 : i64 to vector<i64>
        %278 = vector.transfer_write %277, %7[%165, %28] : vector<i64>, tensor<16x6xi64>
        %279 = vector.load %193[%c0, %c8, %c3] : memref<10x10x6xi64>, vector<6x16x10xi64>
        affine.yield %alloc_17 : memref<10x10x6xi16>
      } else {
        %271 = arith.remf %cst, %cst : f32
        %272 = index.maxu %c13, %117
        %273 = vector.shuffle %225, %226 [3, 5, 7, 8, 11, 12, 15, 16, 17, 18, 25, 26, 27, 29, 30] : vector<16x6xf32>, vector<16x6xf32>
        %collapsed_55 = tensor.collapse_shape %12 [[0, 1]] : tensor<16x6xf32> into tensor<96xf32>
        %274 = index.divu %205, %c9
        %275 = arith.shrsi %false, %true_31 : i1
        %276 = vector.shuffle %37, %37 [1, 2, 4, 6, 7, 11] : vector<6xi64>, vector<6xi64>
        %alloc_56 = memref.alloc() : memref<10x10x6x1xi16>
        memref.tensor_store %expanded_21, %alloc_56 : memref<10x10x6x1xi16>
        affine.yield %alloc_17 : memref<10x10x6xi16>
      }
      %268 = math.expm1 %0 : tensor<16x10xf16>
      %269 = arith.mulf %cst_44, %cst : f32
      %270 = index.ceildivs %c4, %69
      scf.yield
    }
    default {
      %257 = index.maxs %205, %146
      memref.assume_alignment %84, 16 : memref<16x10xi1>
      %258 = scf.execute_region -> memref<6x16x10xf16> {
        %from_elements_52 = tensor.from_elements %cst_1, %cst_1, %cst_0, %cst_2, %cst_1, %cst_2, %cst_1, %196, %cst_2, %196, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %196, %cst_1, %196, %cst_0, %cst_2, %cst_0, %cst_2, %cst_1, %cst_0, %196, %196, %cst_0, %196, %cst_2, %cst_1, %cst_0, %cst_2, %cst_1, %196, %cst_2, %196, %196, %196, %cst_2, %cst_0, %cst_0, %196, %cst_0, %cst_2, %cst_1, %196, %196, %196, %196, %196, %cst_1, %cst_0, %cst_0, %cst_0, %196, %cst_0, %cst_0, %cst_0, %196, %196, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_0, %196, %cst_1, %cst_0, %cst_1, %cst_2, %196, %cst_2, %cst_2, %cst_1, %cst_1, %cst_0, %cst_2, %196, %196, %cst_0, %cst_0, %cst_0, %cst_2, %196, %cst_0, %cst_2, %196, %cst_2, %cst_1, %196, %cst_1, %cst_0, %cst_0, %196, %196, %cst_0, %196, %cst_1, %cst_1, %cst_2, %cst_1, %cst_0, %cst_0, %cst_2, %cst_1, %196, %cst_1, %cst_1, %196, %cst_2, %cst_1, %196, %cst_2, %cst_2, %cst_1, %cst_0, %cst_0, %196, %cst_2, %cst_1, %cst_2, %cst_1, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_1, %cst_2, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %196, %196, %cst_0, %196, %196, %cst_2, %cst_0, %196, %cst_0, %cst_2, %cst_0, %cst_1, %196, %cst_2, %cst_1, %cst_0, %196, %cst_1, %196, %cst_1, %cst_0, %196, %196, %cst_2 : tensor<16x10xf16>
        %272 = arith.mulf %cst_0, %cst_0 : f16
        %alloca_53 = memref.alloca() : memref<10x10x6xi16>
        %273 = vector.broadcast %c1_i64 : i64 to vector<16xi64>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxsi>} %37, %222, %273 : vector<6xi64>, vector<16x6xi64> into vector<16xi64>
        %275 = math.round %196 : f16
        %cst_54 = arith.constant 1.000000e+00 : f16
        %276 = vector.transfer_read %alloc_6[%165, %116], %cst_54 : memref<16x6xf16>, vector<f16>
        %277 = index.divu %c9, %187
        %278 = arith.mulf %cst_0, %cst_0 : f16
        %279 = vector.shuffle %144, %91 [3, 6, 7, 11, 13, 15, 16, 18, 19, 20, 26, 31] : vector<16xf16>, vector<16xf16>
        %280 = vector.flat_transpose %91 {columns = 4 : i32, rows = 4 : i32} : vector<16xf16> -> vector<16xf16>
        %281 = arith.remf %cst_0, %cst_0 : f16
        %282 = math.floor %from_elements : tensor<16x6xf16>
        %283 = math.floor %cst_44 : f32
        %284 = math.exp2 %cst : f32
        %285 = vector.create_mask %c8, %188, %165 : vector<10x10x6xi1>
        %286 = bufferization.to_memref %11 : memref<6x16x10xi1>
        %alloc_55 = memref.alloc() : memref<6x16x10xf16>
        scf.yield %alloc_55 : memref<6x16x10xf16>
      }
      %259 = arith.minsi %c1_i16, %c-14907_i16 : i16
      %260 = vector.broadcast %257 : index to vector<10xindex>
      %261 = vector.broadcast %cst_1 : f16 to vector<10xf16>
      vector.scatter %alloc_7[%c2, %c5] [%260], %119, %261 : memref<16x6xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
      %262 = math.log2 %0 : tensor<16x10xf16>
      %263 = scf.index_switch %c7 -> f32 
      case 1 {
        %272 = vector.insert %false_24, %120 [4] : i1 into vector<10xi1>
        %273 = arith.mulf %196, %cst_2 : f16
        %274 = arith.andi %c1429443777_i32, %c1_i32 : i32
        %extracted_52 = tensor.extract %223[%c1, %c5] : tensor<16x6xi1>
        %expanded_53 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<16x6xi64> into tensor<16x6x1xi64>
        %275 = math.floor %cst_44 : f32
        %276 = vector.broadcast %c844669243_i32 : i32 to vector<6x16x10xi32>
        %277 = arith.shrui %true, %false_23 : i1
        %278 = index.sub %c8, %c12
        %279 = arith.remui %c1191669277_i32, %c1191669277_i32 : i32
        %extracted_54 = tensor.extract %9[%c6, %c8, %c2] : tensor<10x10x6xi32>
        %280 = index.divs %125, %188
        %281 = vector.create_mask %c7, %187 : vector<16x10xi1>
        %282 = arith.divf %cst, %cst : f32
        %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %36, %37, %c1_i64 : vector<6xi64>, vector<6xi64> into i64
        %284 = bufferization.clone %84 : memref<16x10xi1> to memref<16x10xi1>
        scf.yield %cst : f32
      }
      case 2 {
        %272 = math.sqrt %0 : tensor<16x10xf16>
        %273 = vector.flat_transpose %37 {columns = 2 : i32, rows = 3 : i32} : vector<6xi64> -> vector<6xi64>
        %274 = vector.transpose %36, [0] : vector<6xi64> to vector<6xi64>
        %275 = math.round %expanded_33 : tensor<16x6x1xf32>
        %inserted_52 = tensor.insert %196 into %10[%c7, %c4] : tensor<16x6xf16>
        %276 = vector.broadcast %cst : f32 to vector<10x10x6xf32>
        %277 = vector.fma %276, %276, %276 : vector<10x10x6xf32>
        %278 = affine.apply affine_map<(d0, d1, d2) -> (d2 - 191)>(%54, %69, %175)
        %279 = index.sizeof
        %280 = affine.apply affine_map<(d0, d1, d2) -> ((d2 * 2) mod 64)>(%c15, %187, %25)
        vector.print %225 : vector<16x6xf32>
        %281 = arith.remsi %c1_i16, %c10222_i16 : i16
        %282 = math.powf %6, %6 : tensor<6x16x10xf16>
        %283 = vector.broadcast %cst_44 : f32 to vector<16x6xf32>
        %284 = vector.fma %283, %225, %283 : vector<16x6xf32>
        %285 = arith.remf %cst_44, %cst : f32
        %286 = math.log %cst : f32
        %287 = index.add %116, %151
        scf.yield %cst_44 : f32
      }
      default {
        %272 = vector.multi_reduction <mul>, %144, %cst_2 [0] : vector<16xf16> to f16
        memref.copy %204, %alloc_5 : memref<6x16x10xf32> to memref<6x16x10xf32>
        %273 = arith.cmpi slt, %c6901_i16, %extracted_41 : i16
        %274 = bufferization.to_memref %15 : memref<16x6xi16>
        bufferization.dealloc_tensor %11 : tensor<6x16x10xi1>
        %275 = index.divs %257, %152
        %collapsed_52 = tensor.collapse_shape %60 [[0, 1]] : tensor<16x6xi16> into tensor<96xi16>
        %276 = arith.subi %true_43, %false : i1
        %cast_53 = tensor.cast %9 : tensor<10x10x6xi32> to tensor<?x?x?xi32>
        %277 = vector.broadcast %extracted : i1 to vector<10xi1>
        vector.transfer_write %277, %84[%116, %56] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi1>, memref<16x10xi1>
        %278 = vector.create_mask %39, %54 : vector<16x10xi1>
        %279 = math.rsqrt %0 : tensor<16x10xf16>
        memref.store %c1_i64, %alloc_11[%c8, %c4, %c3] : memref<10x10x6xi64>
        %inserted_54 = tensor.insert %cst_1 into %6[%c1, %c2, %c2] : tensor<6x16x10xf16>
        %false_55 = index.bool.constant false
        %280 = math.ctlz %60 : tensor<16x6xi16>
        scf.yield %cst : f32
      }
      %264 = arith.minui %false_23, %extracted : i1
      %alloc_51 = memref.alloc() : memref<6x10xf32>
      %265 = tensor.empty() : tensor<16x10xf32>
      %266 = linalg.matmul ins(%12, %alloc_51 : tensor<16x6xf32>, memref<6x10xf32>) outs(%265 : tensor<16x10xf32>) -> tensor<16x10xf32>
      %267 = arith.floordivsi %true_31, %extracted : i1
      %268 = arith.remf %cst_2, %cst_2 : f16
      %269 = arith.remsi %c28870_i16, %c1_i16 : i16
      scf.execute_region {
        %272 = math.tanh %cst_1 : f16
        %alloc_52 = memref.alloc() : memref<6x16xi32>
        %273 = tensor.empty() : tensor<16x16xi32>
        %274 = linalg.matmul ins(%218, %alloc_52 : tensor<16x6xi32>, memref<6x16xi32>) outs(%273 : tensor<16x16xi32>) -> tensor<16x16xi32>
        %275 = math.exp2 %cst_2 : f16
        %276 = bufferization.to_memref %22 : memref<i32>
        %277 = arith.addi %c6901_i16, %c6901_i16 : i16
        %278 = vector.extract %37[0] : vector<6xi64>
        %279 = math.ctlz %c1191669277_i32 : i32
        %280 = math.log10 %10 : tensor<16x6xf16>
        %281 = math.log10 %10 : tensor<16x6xf16>
        %282 = arith.shrsi %c2004578870_i32, %c1429443777_i32 : i32
        %283 = arith.remf %cst, %cst_44 : f32
        %rank = tensor.rank %generated : tensor<?x?x?xf32>
        %284 = index.casts %c10222_i16 : i16 to index
        %285 = arith.shrui %false, %false_24 : i1
        %286 = math.atan %from_elements : tensor<16x6xf16>
        %287 = math.ctlz %9 : tensor<10x10x6xi32>
        scf.yield
      }
      vector.print %225 : vector<16x6xf32>
      %270 = index.sub %165, %205
      %271 = bufferization.to_memref %68 : memref<6x16x10xi1>
    }
    %237 = scf.while (%arg3 = %extracted_41) : (i16) -> i16 {
      %extracted_51 = tensor.extract %23[] : tensor<i32>
      affine.for %arg4 = 0 to 72 {
      }
      %257 = tensor.empty() : tensor<6x16x10xi32>
      %258 = math.fpowi %6, %257 : tensor<6x16x10xf16>, tensor<6x16x10xi32>
      %259 = arith.minsi %c851953729_i32, %c1191669277_i32 : i32
      %260 = arith.remf %cst, %cst : f32
      %261 = arith.divf %196, %cst_1 : f16
      %262 = arith.maxf %cst_2, %cst_1 : f16
      %263 = math.ctlz %15 : tensor<16x6xi16>
      scf.condition(%true_31) %c28870_i16 : i16
    } do {
    ^bb0(%arg3: i16):
      %257 = arith.divui %false_24, %false_23 : i1
      %258 = vector.multi_reduction <or>, %36, %c1_i64 [0] : vector<6xi64> to i64
      %259 = index.sub %71, %146
      %260 = arith.cmpf ueq, %cst, %cst_44 : f32
      %261 = arith.minsi %258, %258 : i64
      %c2074318002_i32 = arith.constant 2074318002 : i32
      %262 = arith.andi %true_43, %false_24 : i1
      %263 = math.atan %from_elements : tensor<16x6xf16>
      %extracted_51 = tensor.extract %4[%c9, %c2] : tensor<16x6xi1>
      %264 = vector.reduction <add>, %36 : vector<6xi64> into i64
      %265 = math.log10 %196 : f16
      %alloca_52 = memref.alloca() : memref<6x16x10xi64>
      %266 = vector.shuffle %36, %37 [0, 1, 2, 3, 5, 6, 7, 8] : vector<6xi64>, vector<6xi64>
      %267 = scf.while (%arg4 = %90) : (vector<16xi1>) -> vector<16xi1> {
        %269 = math.copysign %10, %10 : tensor<16x6xf16>
        %270 = math.sqrt %12 : tensor<16x6xf32>
        %271 = arith.shrui %extracted, %true_31 : i1
        %272 = vector.shuffle %90, %90 [1, 2, 6, 8, 10, 11, 12, 14, 15, 20, 21, 22, 25, 28, 30] : vector<16xi1>, vector<16xi1>
        memref.assume_alignment %alloc_18, 2 : memref<10x6x16xi1>
        %273 = vector.transpose %19, [0] : vector<6xi1> to vector<6xi1>
        %274 = arith.minsi %c6901_i16, %extracted_41 : i16
        %275 = memref.load %159[%c4, %c7, %c9] : memref<6x16x10xi32>
        scf.condition(%false) %90 : vector<16xi1>
      } do {
      ^bb0(%arg4: vector<16xi1>):
        %269 = arith.ceildivsi %c1191669277_i32, %c1191669277_i32 : i32
        %cast_54 = tensor.cast %218 : tensor<16x6xi32> to tensor<?x?xi32>
        %270 = index.divu %175, %c0
        %271 = vector.create_mask %77, %160 : vector<16x6xi1>
        %272 = index.divs %115, %189
        %273 = index.divs %71, %56
        %274 = arith.floordivsi %c-14907_i16, %c-14907_i16 : i16
        %275 = arith.minsi %c851953729_i32, %c1_i32 : i32
        %276 = index.maxs %34, %168
        %277 = index.castu %extracted_51 : i1 to index
        %278 = arith.shrsi %true, %true : i1
        %279 = vector.insert %c1_i64, %36 [3] : i64 into vector<6xi64>
        %280 = arith.andi %true, %false_23 : i1
        %splat = tensor.splat %258 : tensor<16x6xi64>
        %281 = vector.bitcast %226 : vector<16x6xf32> to vector<16x6xf32>
        %282 = math.atan2 %10, %from_elements : tensor<16x6xf16>
        scf.yield %90 : vector<16xi1>
      }
      %268 = affine.min affine_map<(d0) -> ((d0 * 32 - 4) mod 128 - (d0 * 32) ceildiv 128, (d0 * 32 - 4) mod 128, ((d0 * 32) ceildiv 128) floordiv 16)>(%189)
      %false_53 = index.bool.constant false
      scf.yield %c10222_i16 : i16
    }
    %238 = math.floor %cst : f32
    %alloc_45 = memref.alloc() : memref<10xi16>
    %239 = memref.realloc %alloc_45 : memref<10xi16> to memref<10xi16>
    %240 = math.sqrt %10 : tensor<16x6xf16>
    %241 = math.round %10 : tensor<16x6xf16>
    %242 = index.maxu %c1, %175
    %collapsed_46 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<10x10x6xi32> into tensor<100x6xi32>
    %243 = arith.shrsi %c10222_i16, %extracted_41 : i16
    %244 = arith.maxui %extracted_41, %c1_i16 : i16
    %cast_47 = tensor.cast %9 : tensor<10x10x6xi32> to tensor<?x?x?xi32>
    %245 = affine.load %alloc_12[%c11, %c0, %c11] : memref<10x10x6xi64>
    %246 = math.log2 %6 : tensor<6x16x10xf16>
    %247 = math.fma %12, %12, %12 : tensor<16x6xf32>
    %248 = memref.load %alloc_15[%c6, %c7] : memref<16x10xf32>
    vector.print %90 : vector<16xi1>
    %249 = vector.transpose %90, [0] : vector<16xi1> to vector<16xi1>
    %250 = arith.floordivsi %c1_i32, %c1191669277_i32 : i32
    %251 = index.maxu %c10, %76
    %c1_i16_48 = arith.constant 1 : i16
    %c0_i16_49 = arith.constant 0 : i16
    %252 = vector.transfer_read %14[%187, %115], %c0_i16_49 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<16x10xi16>, vector<10xi16>
    %253 = tensor.empty(%c10, %151, %83) : tensor<?x?x?xi32>
    %254 = linalg.copy ins(%cast_47 : tensor<?x?x?xi32>) outs(%253 : tensor<?x?x?xi32>) -> tensor<?x?x?xi32>
    %255 = tensor.empty() : tensor<16xi32>
    %transposed = linalg.transpose ins(%21 : tensor<16xi32>) outs(%255 : tensor<16xi32>) permutation = [0] 
    %alloc_50 = memref.alloc() : memref<16x10xi64>
    linalg.reduce ins(%alloc_16 : memref<6x16x10xi64>) outs(%alloc_50 : memref<16x10xi64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %257 = arith.remsi %c1429443777_i32, %c2004578870_i32 : i32
        %258 = arith.divsi %c1_i64, %c1_i64 : i64
        %cast_51 = tensor.cast %8 : tensor<16x6xi1> to tensor<?x?xi1>
        %259 = index.maxs %185, %146
        %260 = index.castu %c10222_i16 : i16 to index
        %261 = math.floor %from_elements : tensor<16x6xf16>
        %262 = arith.divsi %c10222_i16, %c-14907_i16 : i16
        %263 = bufferization.clone %200 : memref<16x6xi16> to memref<16x6xi16>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    scf.parallel (%arg3, %arg4) = (%151, %c4) to (%188, %c5) step (%c15, %c15) {
      %257 = scf.while (%arg5 = %78) : (vector<16x10xi1>) -> vector<16x10xi1> {
        %269 = math.ctpop %218 : tensor<16x6xi32>
        %270 = arith.remsi %false_23, %true_43 : i1
        %271 = vector.bitcast %128 : vector<16x10xi16> to vector<16x10xi16>
        %272 = math.expm1 %12 : tensor<16x6xf32>
        vector.print %226 : vector<16x6xf32>
        %273 = index.divs %c4, %117
        %274 = bufferization.clone %200 : memref<16x6xi16> to memref<16x6xi16>
        %expanded_53 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<6x16x10xi1> into tensor<6x16x10x1xi1>
        scf.condition(%extracted) %78 : vector<16x10xi1>
      } do {
      ^bb0(%arg5: vector<16x10xi1>):
        %269 = arith.addi %c1_i32, %c605289834_i32 : i32
        %270 = affine.max affine_map<(d0, d1) -> (d1 + d1 mod 64 + 2)>(%28, %116)
        %271 = vector.shuffle %90, %119 [2, 4, 5, 6, 10, 11, 12, 14, 15, 16, 17, 18, 19, 21, 22, 23, 24, 25] : vector<16xi1>, vector<10xi1>
        %272 = arith.minf %cst_44, %cst_44 : f32
        %extracted_53 = tensor.extract %23[] : tensor<i32>
        %273 = index.sub %175, %c1
        %274 = arith.ori %c1_i16_48, %c-14907_i16 : i16
        %275 = vector.flat_transpose %90 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
        %276 = vector.extract %211[4] : vector<6xi64>
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 floordiv 2 + 3, d0 floordiv 2 + 3, d2 ceildiv 128, d0 floordiv 2 - 63)>(%83, %34, %205, %164)
        %278 = arith.maxsi %c10222_i16, %extracted_41 : i16
        %false_54 = index.bool.constant false
        %279 = arith.mulf %cst_0, %cst_0 : f16
        %280 = arith.subi %245, %245 : i64
        %281 = index.maxs %146, %arg3
        %282 = math.tan %12 : tensor<16x6xf32>
        scf.yield %78 : vector<16x10xi1>
      }
      %cst_51 = arith.constant 1.000000e+00 : f16
      %258 = vector.transfer_read %10[%185, %c11], %cst_51 : tensor<16x6xf16>, vector<f16>
      %259 = index.ceildivu %77, %c11
      %260 = vector.broadcast %cst_2 : f16 to vector<10x10x6xf16>
      vector.print %226 : vector<16x6xf32>
      %261 = index.casts %221 : index to i32
      memref.assume_alignment %alloc_17, 2 : memref<10x10x6xi16>
      vector.print %225 : vector<16x6xf32>
      memref.assume_alignment %alloc_14, 2 : memref<6x16x10xi32>
      %262 = math.ctlz %13 : tensor<10x10x6xi16>
      %263 = bufferization.clone %84 : memref<16x10xi1> to memref<16x10xi1>
      %264 = scf.while (%arg5 = %alloc) : (memref<10x10x6xf16>) -> memref<10x10x6xf16> {
        %extracted_53 = tensor.extract %3[%c7, %c8, %c1] : tensor<10x10x6xi16>
        %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %211, %37, %c1_i64 : vector<6xi64>, vector<6xi64> into i64
        %270 = math.rsqrt %196 : f16
        %271 = arith.minf %cst_0, %cst_0 : f16
        %272 = math.round %from_elements : tensor<16x6xf16>
        %273 = vector.transpose %36, [0] : vector<6xi64> to vector<6xi64>
        %extracted_54 = tensor.extract %11[%c3, %c0, %c0] : tensor<6x16x10xi1>
        %274 = arith.andi %c1_i16, %extracted_53 : i16
        scf.condition(%extracted) %arg5 : memref<10x10x6xf16>
      } do {
      ^bb0(%arg5: memref<10x10x6xf16>):
        %269 = math.round %0 : tensor<16x10xf16>
        %270 = arith.andi %c-14907_i16, %c10222_i16 : i16
        %271 = vector.multi_reduction <mul>, %91, %144 [] : vector<16xf16> to vector<16xf16>
        %272 = vector.broadcast %c1_i32 : i32 to vector<16x10xi32>
        %273 = vector.gather %263[%160, %c11] [%272], %79, %79 : memref<16x10xi1>, vector<16x10xi32>, vector<16x10xi1>, vector<16x10xi1> into vector<16x10xi1>
        %alloca_53 = memref.alloca() : memref<16x10xi64>
        %274 = tensor.empty() : tensor<6x10xf16>
        %275 = tensor.empty() : tensor<16x10xf16>
        %276 = linalg.matmul ins(%10, %274 : tensor<16x6xf16>, tensor<6x10xf16>) outs(%275 : tensor<16x10xf16>) -> tensor<16x10xf16>
        %c0_i16_54 = arith.constant 0 : i16
        %277 = vector.transfer_read %15[%160, %189], %c0_i16_54 : tensor<16x6xi16>, vector<i16>
        %278 = vector.flat_transpose %156 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %cst_55 = arith.constant 1.000000e+00 : f16
        %279 = vector.transfer_read %0[%202, %45], %cst_55 : tensor<16x10xf16>, vector<16xf16>
        %inserted_56 = tensor.insert %c605289834_i32 into %transposed[%c8] : tensor<16xi32>
        %280 = math.powf %cst_1, %cst_1 : f16
        %281 = arith.minf %cst_0, %196 : f16
        %282 = arith.addi %c0_i16_54, %c10222_i16 : i16
        %283 = bufferization.clone %alloc_7 : memref<16x6xf16> to memref<16x6xf16>
        memref.assume_alignment %200, 2 : memref<16x6xi16>
        %284 = bufferization.clone %alloc_7 : memref<16x6xf16> to memref<16x6xf16>
        scf.yield %alloc : memref<10x10x6xf16>
      }
      %265 = vector.shuffle %91, %91 [0, 1, 2, 5, 6, 8, 9, 10, 11, 14, 15, 16, 26, 27, 28, 29, 30, 31] : vector<16xf16>, vector<16xf16>
      %266 = arith.shrui %c1_i16, %c6901_i16 : i16
      %267 = math.ctpop %16 : tensor<16x6xi1>
      %268 = tensor.empty() : tensor<16x10xf32>
      %mapped_52 = linalg.map ins(%1, %1 : tensor<16x10xf32>, tensor<16x10xf32>) outs(%268 : tensor<16x10xf32>)
        (%in: f32, %in_53: f32) {
          %269 = math.ctlz %11 : tensor<6x16x10xi1>
          %270 = arith.cmpi sge, %c1429443777_i32, %c2004578870_i32 : i32
          %271 = arith.shrui %false_23, %true_31 : i1
          memref.copy %alloc_8, %157 : memref<6x16x10xi32> to memref<6x16x10xi32>
          %272 = math.copysign %in_53, %cst_44 : f32
          %273 = index.divs %25, %29
          memref.assume_alignment %159, 8 : memref<6x16x10xi32>
          %274 = index.casts %185 : index to i32
          %275 = index.castu %232 : index to i32
          %276 = vector.create_mask %c5, %116, %189 : vector<10x10x6xi1>
          %collapsed_54 = tensor.collapse_shape %7 [[0, 1]] : tensor<16x6xi64> into tensor<96xi64>
          %277 = arith.maxui %c1_i16_48, %extracted_41 : i16
          %278 = tensor.empty() : tensor<10x10xf32>
          %279 = tensor.empty() : tensor<16x10xf32>
          %280 = linalg.matmul ins(%1, %278 : tensor<16x10xf32>, tensor<10x10xf32>) outs(%279 : tensor<16x10xf32>) -> tensor<16x10xf32>
          %281 = vector.broadcast %c10222_i16 : i16 to vector<10x10x6xi16>
          %282 = arith.minui %c1_i16_48, %c1_i16_48 : i16
          %283 = math.floor %196 : f16
          %284 = arith.remf %cst_51, %cst_2 : f16
          %285 = index.casts %116 : index to i32
          %alloc_55 = memref.alloc() : memref<10x6xi16>
          %286 = tensor.empty() : tensor<16x6xi16>
          %287 = linalg.matmul ins(%14, %alloc_55 : tensor<16x10xi16>, memref<10x6xi16>) outs(%286 : tensor<16x6xi16>) -> tensor<16x6xi16>
          %288 = arith.remf %196, %196 : f16
          %alloca_56 = memref.alloca() : memref<10x10x6xi64>
          %inserted_57 = tensor.insert %c2004578870_i32 into %transposed[%c5] : tensor<16xi32>
          %289 = math.floor %cst_44 : f32
          %290 = vector.create_mask %117, %26, %221 : vector<10x10x6xi1>
          %291 = index.casts %116 : index to i32
          %292 = arith.ceildivsi %c2004578870_i32, %c851953729_i32 : i32
          %293 = arith.addi %c1_i64, %245 : i64
          %294 = index.ceildivs %83, %c1
          %295 = vector.shuffle %222, %222 [3, 5, 6, 9, 10, 11, 15, 18, 19, 23, 24, 25, 26, 28, 30, 31] : vector<16x6xi64>, vector<16x6xi64>
          %296 = arith.shrsi %c2004578870_i32, %c1191669277_i32 : i32
          %297 = vector.broadcast %c-14907_i16 : i16 to vector<16xi16>
          %dest_58, %accumulated_value_59 = vector.scan <maxsi>, %128, %297 {inclusive = false, reduction_dim = 1 : i64} : vector<16x10xi16>, vector<16xi16>
          %298 = arith.minsi %c605289834_i32, %c1_i32 : i32
          %cst_60 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_60 : f32
        }
      scf.yield
    }
    %256 = affine.vector_load %159[%77, %c3, %152] : memref<6x16x10xi32>, vector<10xi32>
    affine.vector_store %90, %alloc_10[%56, %152, %c13] : memref<10x10x6xi1>, vector<16xi1>
    vector.print %19 : vector<6xi1>
    vector.print %36 : vector<6xi64>
    vector.print %37 : vector<6xi64>
    vector.print %78 : vector<16x10xi1>
    vector.print %79 : vector<16x10xi1>
    vector.print %89 : vector<16xf16>
    vector.print %90 : vector<16xi1>
    vector.print %91 : vector<16xf16>
    vector.print %119 : vector<10xi1>
    vector.print %120 : vector<10xi1>
    vector.print %128 : vector<16x10xi16>
    vector.print %144 : vector<16xf16>
    vector.print %156 : vector<10xi1>
    vector.print %211 : vector<6xi64>
    vector.print %222 : vector<16x6xi64>
    vector.print %225 : vector<16x6xf32>
    vector.print %226 : vector<16x6xf32>
    vector.print %256 : vector<10xi32>
    vector.print %c-14907_i16 : i16
    vector.print %c1191669277_i32 : i32
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %c6901_i16 : i16
    vector.print %c605289834_i32 : i32
    vector.print %c10222_i16 : i16
    vector.print %c28870_i16 : i16
    vector.print %c1429443777_i32 : i32
    vector.print %c2004578870_i32 : i32
    vector.print %cst_1 : f16
    vector.print %true : i1
    vector.print %c851953729_i32 : i32
    vector.print %c844669243_i32 : i32
    vector.print %false : i1
    vector.print %cst_2 : f16
    vector.print %c1_i64 : i64
    vector.print %false_23 : i1
    vector.print %extracted : i1
    vector.print %c1_i16 : i16
    vector.print %false_24 : i1
    vector.print %true_31 : i1
    vector.print %c1_i32 : i32
    vector.print %196 : f16
    vector.print %extracted_41 : i16
    vector.print %true_43 : i1
    vector.print %cst_44 : f32
    vector.print %245 : i64
    vector.print %c1_i16_48 : i16
    return
  }
}
