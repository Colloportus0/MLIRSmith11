module {
  func.func private @func1(%arg0: f32, %arg1: tensor<8xi16>, %arg2: i1) {
    %c528530600_i32 = arith.constant 528530600 : i32
    %cst = arith.constant 1.763200e+04 : f16
    %c979846887_i32 = arith.constant 979846887 : i32
    %cst_0 = arith.constant 4.376000e+03 : f16
    %c1005429591_i32 = arith.constant 1005429591 : i32
    %c-13633_i16 = arith.constant -13633 : i16
    %true = arith.constant true
    %cst_1 = arith.constant 6.528000e+03 : f16
    %cst_2 = arith.constant 2.081600e+04 : f16
    %cst_3 = arith.constant 4.464000e+04 : f16
    %c1711146161_i64 = arith.constant 1711146161 : i64
    %c873602045_i32 = arith.constant 873602045 : i32
    %c1503914008_i64 = arith.constant 1503914008 : i64
    %false = arith.constant false
    %c958695536_i64 = arith.constant 958695536 : i64
    %true_4 = arith.constant true
    %0 = tensor.empty() : tensor<8xi32>
    %1 = tensor.empty() : tensor<16xi64>
    %2 = tensor.empty() : tensor<8xf16>
    %3 = tensor.empty() : tensor<14x7x7xf32>
    %4 = tensor.empty() : tensor<8xi1>
    %5 = tensor.empty() : tensor<14x16xf32>
    %6 = tensor.empty() : tensor<16xi1>
    %7 = tensor.empty() : tensor<16xf16>
    %8 = tensor.empty() : tensor<8xf32>
    %9 = tensor.empty() : tensor<14x7x7xi1>
    %10 = tensor.empty() : tensor<14x16xf16>
    %11 = tensor.empty() : tensor<8xf32>
    %12 = tensor.empty() : tensor<16xf16>
    %13 = tensor.empty() : tensor<8xf32>
    %14 = tensor.empty() : tensor<16xf32>
    %15 = tensor.empty() : tensor<16xi1>
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
    %alloc = memref.alloc() : memref<8xi1>
    %alloc_5 = memref.alloc() : memref<14x16xf16>
    %alloc_6 = memref.alloc() : memref<16xf16>
    %alloc_7 = memref.alloc() : memref<14x7x7xf16>
    %alloc_8 = memref.alloc() : memref<16xi16>
    %alloc_9 = memref.alloc() : memref<16xf16>
    %alloc_10 = memref.alloc() : memref<14x16xi32>
    %alloc_11 = memref.alloc() : memref<14x7x7xi1>
    %alloc_12 = memref.alloc() : memref<14x7x7xi1>
    %alloc_13 = memref.alloc() : memref<14x7x7xf16>
    %alloc_14 = memref.alloc() : memref<16xf16>
    %alloc_15 = memref.alloc() : memref<14x7x7xf16>
    %alloc_16 = memref.alloc() : memref<14x7x7xi1>
    %alloc_17 = memref.alloc() : memref<8xf32>
    %alloc_18 = memref.alloc() : memref<8xf16>
    %alloc_19 = memref.alloc() : memref<14x16xi64>
    %16 = tensor.empty() : tensor<14x7x7xf32>
    %17 = linalg.copy ins(%3 : tensor<14x7x7xf32>) outs(%16 : tensor<14x7x7xf32>) -> tensor<14x7x7xf32>
    %alloc_20 = memref.alloc() : memref<16xf16>
    linalg.transpose ins(%12 : tensor<16xf16>) outs(%alloc_20 : memref<16xf16>) permutation = [0] 
    %alloc_21 = memref.alloc() : memref<14xf32>
    linalg.reduce ins(%5 : tensor<14x16xf32>) outs(%alloc_21 : memref<14xf32>) dimensions = [1] 
      (%in: f32, %init: f32) {
        %255 = math.roundeven %cst_0 : f16
        %256 = math.tanh %10 : tensor<14x16xf16>
        %257 = arith.minui %c-13633_i16, %c-13633_i16 : i16
        %258 = index.maxu %c14, %c3
        %259 = scf.while (%arg3 = %init) : (f32) -> f32 {
          %cast_50 = tensor.cast %16 : tensor<14x7x7xf32> to tensor<?x?x?xf32>
          %263 = index.divs %c8, %c3
          %264 = index.castu %263 : index to i32
          %265 = arith.negf %in : f32
          %266 = math.cos %3 : tensor<14x7x7xf32>
          %267 = vector.broadcast %cst_2 : f16 to vector<7xf16>
          %268 = vector.flat_transpose %267 {columns = 7 : i32, rows = 1 : i32} : vector<7xf16> -> vector<7xf16>
          %269 = index.mul %c15, %c3
          %270 = math.exp2 %3 : tensor<14x7x7xf32>
          scf.condition(%false) %init : f32
        } do {
        ^bb0(%arg3: f32):
          %263 = math.exp2 %14 : tensor<16xf32>
          %264 = bufferization.clone %alloc_20 : memref<16xf16> to memref<16xf16>
          %265 = arith.addi %true, %true_4 : i1
          %266 = arith.remui %c1503914008_i64, %c1711146161_i64 : i64
          %267 = arith.addf %cst_3, %cst_1 : f16
          %inserted_50 = tensor.insert %cst_3 into %10[%c2, %c6] : tensor<14x16xf16>
          %from_elements_51 = tensor.from_elements %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64 : tensor<14x7x7xi64>
          %268 = arith.shli %c528530600_i32, %c1005429591_i32 : i32
          %269 = arith.remui %c873602045_i32, %c979846887_i32 : i32
          %270 = vector.create_mask %c14, %c11, %c2 : vector<14x7x7xi1>
          %271 = arith.remf %cst_3, %cst_2 : f16
          %272 = math.absf %5 : tensor<14x16xf32>
          %273 = math.expm1 %14 : tensor<16xf32>
          %cast_52 = tensor.cast %15 : tensor<16xi1> to tensor<?xi1>
          %274 = math.log1p %5 : tensor<14x16xf32>
          memref.copy %alloc_16, %alloc_11 : memref<14x7x7xi1> to memref<14x7x7xi1>
          scf.yield %arg3 : f32
        }
        %260 = arith.addi %c528530600_i32, %c1005429591_i32 : i32
        %261 = vector.broadcast %c1503914008_i64 : i64 to vector<14x7x7xi64>
        vector.print %261 : vector<14x7x7xi64>
        %262 = memref.alloca_scope  -> (i1) {
          %263 = vector.splat %c12 : vector<16xindex>
          %264 = arith.remui %true_4, %true : i1
          %265 = arith.remf %in, %in : f32
          %266 = arith.addi %c1005429591_i32, %c1005429591_i32 : i32
          %267 = math.log1p %11 : tensor<8xf32>
          %268 = index.maxs %c14, %c11
          %269 = index.ceildivu %c4, %c3
          %270 = affine.load %alloc_13[%c1, %c15, %c6] : memref<14x7x7xf16>
          %271 = vector.extract %261[6] : vector<14x7x7xi64>
          %272 = index.maxs %c4, %c14
          %273 = arith.negf %cst_3 : f16
          %true_50 = index.bool.constant true
          vector.print %261 : vector<14x7x7xi64>
          %274 = vector.broadcast %c958695536_i64 : i64 to vector<7x7x7x7xi64>
          %275 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %261, %261, %274 : vector<14x7x7xi64>, vector<14x7x7xi64> into vector<7x7x7x7xi64>
          %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %261, %271, %261 : vector<14x7x7xi64>, vector<7x7xi64> into vector<14x7x7xi64>
          %true_51 = arith.constant true
          %277 = index.ceildivu %c11, %c2
          %278 = bufferization.to_memref %9 : memref<14x7x7xi1>
          %279 = math.rsqrt %2 : tensor<8xf16>
          %280 = math.absf %cst_0 : f16
          %281 = arith.negf %cst_2 : f16
          %282 = affine.min affine_map<(d0, d1) -> (d0)>(%268, %c7)
          %from_elements_52 = tensor.from_elements %270, %cst_2, %cst_0, %270, %cst_3, %270, %cst_1, %cst_2, %270, %cst_0, %cst_1, %cst_1, %270, %270, %cst, %cst_1, %cst_0, %cst_2, %270, %cst_0, %270, %cst, %270, %cst, %cst_0, %cst_1, %270, %cst_3, %270, %cst_2, %cst, %cst_1, %cst_0, %270, %cst_1, %cst_1, %270, %270, %cst_2, %270, %cst_2, %cst_1, %cst, %270, %270, %cst, %cst_1, %cst_3, %cst_3, %cst_2, %cst_3, %cst_0, %cst_2, %cst_1, %cst_3, %cst_3, %cst, %cst_1, %270, %cst_0, %cst_0, %cst_1, %cst_1, %cst_3, %cst_3, %cst, %cst_0, %cst_0, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %270, %cst_0, %cst, %cst_1, %cst_1, %cst, %cst_3, %cst_2, %cst, %cst, %cst_0, %cst_0, %270, %cst_2, %270, %cst, %cst_0, %cst_2, %cst_2, %270, %cst, %cst, %cst, %270, %cst_3, %cst_0, %cst_3, %cst_0, %cst, %270, %cst_3, %cst_1, %cst_3, %cst_2, %cst_0, %cst_1, %cst_0, %270, %cst_3, %cst_1, %cst_1, %cst, %cst, %cst_0, %cst_2, %cst, %270, %cst_3, %cst_0, %cst_3, %cst, %cst_0, %cst_0, %cst_2, %cst_1, %cst_1, %cst_0, %cst_3, %cst_2, %270, %cst_0, %cst_0, %270, %cst_0, %cst_3, %cst_1, %cst_2, %cst_1, %270, %cst_2, %cst_0, %cst, %cst_3, %cst_0, %cst, %cst_3, %cst_1, %cst_2, %cst, %cst_1, %cst_0, %cst_1, %270, %cst_3, %cst, %cst_3, %cst_1, %cst_0, %cst, %cst_1, %cst, %cst_1, %cst, %cst, %cst, %cst_0, %cst_0, %cst_2, %cst, %cst_2, %cst_3, %cst_0, %cst_0, %cst_2, %cst, %cst, %cst_2, %cst_0, %270, %cst_3, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %270, %cst_0, %cst, %cst, %cst_0, %cst, %cst_1, %270, %cst_0, %cst_3, %270, %cst_1, %cst, %270, %cst_3, %cst_0, %cst_3, %cst_0, %cst, %270, %cst_2, %cst_3, %cst_0, %cst_0, %270, %cst_2, %cst, %cst_2, %cst_0, %cst_1, %cst_3, %cst_0, %cst_3, %270, %cst_3, %cst_3, %cst_3, %270, %cst_0, %cst_2, %270, %cst_0, %cst_2, %cst_2, %cst_0, %cst_1, %270, %cst_3, %cst_0, %270, %cst_2, %cst_2, %cst_1, %cst, %cst_2, %cst_3, %cst_0, %cst_0, %cst_1, %cst_2, %cst_1, %cst_0, %cst, %cst_3, %cst_1, %cst_2, %cst_3, %cst_0, %cst_0, %cst_1, %270, %cst_0, %cst_3, %270, %cst_2, %cst_3, %cst, %cst_0, %cst, %cst_0, %cst_1, %cst_0, %cst_0, %cst_3, %cst_1, %cst_3, %cst, %270, %cst_3, %cst_0, %cst_3, %cst_2, %cst, %270, %cst_2, %cst_1, %cst_0, %270, %cst, %cst, %cst_1, %cst_0, %cst_3, %cst_0, %270, %270, %cst_0, %cst_1, %cst, %270, %cst_3, %cst_1, %cst_3, %cst_0, %cst_3, %cst_3, %270, %270, %cst_1, %cst_2, %cst_3, %270, %cst_1, %cst_3, %cst_1, %cst_2, %cst_1, %cst_0, %cst, %cst_2, %cst_2, %270, %270, %cst_1, %270, %270, %cst_0, %cst_2, %270, %cst_0, %cst_0, %cst_1, %270, %cst_0, %cst_3, %270, %cst_3, %cst, %cst_3, %cst_0, %cst_2, %270, %cst_1, %cst_0, %cst_0, %cst_0, %cst_3, %cst_1, %cst, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst, %cst_1, %cst_3, %cst_3, %cst_2, %cst_1, %cst_1, %cst_3, %cst_3, %270, %cst_3, %cst_1, %cst_1, %cst_0, %cst_2, %cst, %cst_3, %cst, %cst_1, %cst_1, %cst, %cst_0, %270, %cst, %cst_3, %cst_0, %cst_0, %cst, %cst, %cst, %cst_1, %270, %270, %cst, %cst_3, %cst_1, %cst_0, %cst, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %270, %cst_2, %cst_3, %cst_3, %cst_1, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_3, %cst_2, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_3, %cst_0, %cst_3, %cst_0, %cst_3, %cst_2, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %270, %270, %cst_3, %270, %cst_2, %cst_2, %cst, %cst_0, %270, %cst_0, %cst, %cst_3, %270, %cst_3, %cst_2, %270, %cst, %cst_1, %cst_2, %cst_1, %cst_3, %cst, %cst, %cst, %cst_2, %cst_3, %cst, %cst, %270, %cst_3, %cst_3, %cst_3, %cst, %cst_0, %cst_1, %cst_3, %cst_0, %cst_1, %270, %cst_1, %cst_1, %cst, %cst_3, %cst_0, %cst_3, %cst_1, %cst_0, %cst_1, %cst_2, %cst_0, %270, %cst_2, %cst_2, %cst_0, %cst_1, %cst_3, %270, %cst_2, %cst_3, %cst, %cst_3, %cst, %270, %cst_2, %270, %cst, %270, %270, %cst_2, %cst, %cst_1, %cst_1, %cst_0, %cst_0, %cst_2, %cst_3, %cst, %cst_1, %cst_1, %cst, %cst, %cst_0, %cst_2, %cst, %270, %cst, %cst_2, %cst_1, %270, %270, %270, %cst_3, %cst_1, %270, %cst_1, %270, %cst_1, %270, %cst_2, %cst_1, %cst_3, %270, %cst, %cst, %cst, %cst_0, %cst_2, %cst_2, %cst_3, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %270, %cst_3, %cst_0, %cst_1, %270, %cst_2, %cst, %270, %270, %cst_0, %cst, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst, %cst, %cst_2, %270, %cst_1, %cst_2, %cst_2, %cst_1, %cst, %270, %270, %cst_1, %cst_2, %cst, %270, %cst, %cst_0, %cst_3, %270, %cst_3, %cst_2, %cst_3, %cst_3, %cst, %cst_0, %270, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_3, %cst_0, %cst_0, %cst_1, %cst_0, %cst_0, %cst, %270, %cst, %cst_0, %cst_2, %cst, %cst, %270, %cst_2, %270, %270, %cst_0, %cst_1, %cst_3, %270, %cst_2, %cst_1, %cst, %270, %cst_0, %270, %270, %270, %cst_1, %270, %cst_0, %cst_2, %cst_0, %cst, %cst_3, %cst, %cst_2, %cst, %cst_2, %cst_3, %cst_2, %cst_1, %270, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_0, %cst, %cst_1, %cst, %270, %cst_1, %cst_0, %270, %cst_0, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst_2, %cst, %cst, %270, %270, %270, %cst_3, %cst_3, %cst_3, %cst_0, %270, %cst_1, %cst_3, %270, %cst_2, %cst_0, %cst_0, %cst_0 : tensor<14x7x7xf16>
          %283 = math.cos %11 : tensor<8xf32>
          %284 = vector.splat %277 : vector<14x7x7xindex>
          %inserted_53 = tensor.insert %init into %13[%c2] : tensor<8xf32>
          %285 = arith.remf %cst_2, %cst_2 : f16
          %286 = arith.minf %cst, %cst_2 : f16
          %287 = index.add %272, %258
          %inserted_54 = tensor.insert %true into %15[%c5] : tensor<16xi1>
          %288 = arith.remui %true_50, %true : i1
          %289 = arith.floordivsi %c1005429591_i32, %c1005429591_i32 : i32
          memref.alloca_scope.return %true : i1
        }
        %cst_49 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_49 : f32
      }
    %18 = scf.parallel (%arg3, %arg4) = (%c10, %c3) to (%c6, %c6) step (%c11, %c14) init (%12) -> tensor<16xf16> {
      %255 = arith.minui %c979846887_i32, %c979846887_i32 : i32
      %256 = tensor.empty() : tensor<7x14xi1>
      %257 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%256 : tensor<7x14xi1>) outs(%9 : tensor<14x7x7xi1>) {
      ^bb0(%in: i1, %out: i1):
        %270 = math.expm1 %2 : tensor<8xf16>
        %271 = arith.remsi %true, %in : i1
        %272 = arith.remsi %c1503914008_i64, %c1503914008_i64 : i64
        %273 = arith.divsi %c979846887_i32, %c528530600_i32 : i32
        %274 = vector.broadcast %c-13633_i16 : i16 to vector<8xi16>
        %275 = vector.broadcast %c-13633_i16 : i16 to vector<8x8xi16>
        %276 = vector.outerproduct %274, %274, %275 {kind = #vector.kind<or>} : vector<8xi16>, vector<8xi16>
        %277 = index.sizeof
        %278 = vector.splat %c1005429591_i32 : vector<8xi32>
        %279 = math.tanh %2 : tensor<8xf16>
        %false_49 = index.bool.constant false
        %280 = index.sizeof
        %281 = tensor.empty() : tensor<14x16xf32>
        %282 = vector.broadcast %cst_0 : f16 to vector<16x14xf16>
        %283 = vector.broadcast %cst : f16 to vector<16xf16>
        %dest_50, %accumulated_value_51 = vector.scan <mul>, %282, %283 {inclusive = false, reduction_dim = 1 : i64} : vector<16x14xf16>, vector<16xf16>
        %284 = vector.broadcast %c1711146161_i64 : i64 to vector<14x16xi64>
        %285 = math.absf %3 : tensor<14x7x7xf32>
        %286 = arith.floordivsi %c873602045_i32, %c1005429591_i32 : i32
        %287 = vector.extract_strided_slice %284 {offsets = [12], sizes = [1], strides = [1]} : vector<14x16xi64> to vector<1x16xi64>
        %288 = arith.minui %c1711146161_i64, %c1711146161_i64 : i64
        %289 = vector.multi_reduction <or>, %287, %287 [] : vector<1x16xi64> to vector<1x16xi64>
        %alloc_52 = memref.alloc() : memref<16xf32>
        %290 = vector.create_mask %arg3 : vector<8xi1>
        %291 = vector.load %alloc_11[%c5, %c0, %c2] : memref<14x7x7xi1>, vector<16xi1>
        %292 = index.mul %c6, %c10
        %293 = vector.shuffle %287, %284 [0, 1, 2, 8, 9, 10, 13] : vector<1x16xi64>, vector<14x16xi64>
        %294 = math.cos %281 : tensor<14x16xf32>
        %295 = arith.divsi %out, %false_49 : i1
        %296 = bufferization.clone %alloc_12 : memref<14x7x7xi1> to memref<14x7x7xi1>
        %297 = memref.atomic_rmw ori %c958695536_i64, %alloc_19[%c11, %c12] : (i64, memref<14x16xi64>) -> i64
        %298 = vector.broadcast %true : i1 to vector<8x8xi1>
        %299 = vector.outerproduct %290, %290, %298 {kind = #vector.kind<or>} : vector<8xi1>, vector<8xi1>
        %300 = math.atan %11 : tensor<8xf32>
        %301 = vector.broadcast %c958695536_i64 : i64 to vector<1x14xi64>
        %302 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %287, %284, %301 : vector<1x16xi64>, vector<14x16xi64> into vector<1x14xi64>
        %303 = arith.negf %cst_2 : f16
        %304 = math.round %16 : tensor<14x7x7xf32>
        linalg.yield %true_4 : i1
      } -> tensor<14x7x7xi1>
      %258 = vector.broadcast %c-13633_i16 : i16 to vector<16xi16>
      vector.print %258 : vector<16xi16>
      %259 = arith.minui %c1503914008_i64, %c1503914008_i64 : i64
      %260 = vector.splat %true : vector<16xi1>
      %261 = arith.maxf %cst_0, %cst : f16
      vector.print %258 : vector<16xi16>
      %262 = math.atan %3 : tensor<14x7x7xf32>
      %rank = tensor.rank %6 : tensor<16xi1>
      %263 = vector.splat %rank : vector<8xindex>
      %264 = arith.cmpf uno, %cst, %cst_1 : f16
      %265 = index.divs %c11, %c1
      %266 = vector.load %alloc_13[%c1, %c0, %c2] : memref<14x7x7xf16>, vector<8xf16>
      scf.if %true {
        %270 = arith.ori %true, %false : i1
        %271 = arith.minsi %c1503914008_i64, %c1711146161_i64 : i64
        %272 = math.absi %6 : tensor<16xi1>
        %alloc_49 = memref.alloc() : memref<16x8xf16>
        %273 = tensor.empty() : tensor<14x8xf16>
        %274 = linalg.matmul ins(%10, %alloc_49 : tensor<14x16xf16>, memref<16x8xf16>) outs(%273 : tensor<14x8xf16>) -> tensor<14x8xf16>
        %275 = math.fpowi %cst_1, %c528530600_i32 : f16, i32
        %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %266, %266, %cst_3 : vector<8xf16>, vector<8xf16> into f16
        %false_50 = index.bool.constant false
        %277 = math.expm1 %5 : tensor<14x16xf32>
      } else {
        %270 = index.castu %c1711146161_i64 : i64 to index
        %271 = math.rsqrt %2 : tensor<8xf16>
        %272 = vector.insert %cst_3, %266 [3] : f16 into vector<8xf16>
        %273 = math.expm1 %cst_0 : f16
        %274 = vector.multi_reduction <maxsi>, %258, %258 [] : vector<16xi16> to vector<16xi16>
        %275 = math.exp %7 : tensor<16xf16>
        %276 = arith.remf %cst_0, %cst_2 : f16
        %277 = arith.negf %cst : f16
      }
      %267 = index.maxu %c5, %c10
      %268 = arith.remf %cst_3, %cst : f16
      %269 = tensor.empty() : tensor<16xf16>
      scf.reduce(%269)  : tensor<16xf16> {
      ^bb0(%arg5: tensor<16xf16>, %arg6: tensor<16xf16>):
        %270 = vector.broadcast %c958695536_i64 : i64 to vector<16xi64>
        %271 = index.casts %arg3 : index to i32
        %272 = math.cos %17 : tensor<14x7x7xf32>
        %273 = math.roundeven %7 : tensor<16xf16>
        %from_elements_49 = tensor.from_elements %c528530600_i32, %c873602045_i32, %c979846887_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c979846887_i32, %c528530600_i32 : tensor<8xi32>
        %274 = math.exp2 %10 : tensor<14x16xf16>
        %275 = vector.splat %c2 : vector<14x16xindex>
        %276 = index.maxu %arg4, %c15
        %277 = tensor.empty() : tensor<16xf16>
        scf.reduce.return %277 : tensor<16xf16>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_11[%c11, %c6, %c5] : memref<14x7x7xi1>, vector<16xi1>
    affine.vector_store %19, %alloc_16[%c8, %c11, %c8] : memref<14x7x7xi1>, vector<16xi1>
    %alloc_22 = memref.alloc() : memref<16xf16>
    %20 = tensor.empty() : tensor<f16>
    %21 = linalg.dot ins(%7, %alloc_22 : tensor<16xf16>, memref<16xf16>) outs(%20 : tensor<f16>) -> tensor<f16>
    %22 = index.divs %c10, %c11
    %23 = index.casts %c0 : index to i32
    %24 = arith.remf %cst_3, %cst_0 : f16
    %25 = vector.create_mask %c0, %c11 : vector<14x16xi1>
    %26 = arith.floordivsi %true, %true : i1
    %27 = math.round %cst_0 : f16
    %dest, %accumulated_value = vector.scan <maxsi>, %25, %19 {inclusive = true, reduction_dim = 0 : i64} : vector<14x16xi1>, vector<16xi1>
    %28 = memref.atomic_rmw maxf %cst_1, %alloc_18[%c1] : (f16, memref<8xf16>) -> f16
    %29 = math.cos %5 : tensor<14x16xf32>
    %30 = math.powf %16, %17 : tensor<14x7x7xf32>
    %31 = arith.xori %c528530600_i32, %c979846887_i32 : i32
    %32 = vector.load %alloc_8[%c6] : memref<16xi16>, vector<8xi16>
    %33 = arith.maxui %c873602045_i32, %c873602045_i32 : i32
    %34 = bufferization.clone %alloc_21 : memref<14xf32> to memref<14xf32>
    %35 = vector.multi_reduction <and>, %32, %c-13633_i16 [0] : vector<8xi16> to i16
    %36 = arith.maxui %true, %true_4 : i1
    %37 = index.maxs %c13, %c8
    %38 = vector.splat %35 : vector<14x7x7xi16>
    %39 = vector.broadcast %35 : i16 to vector<8x8xi16>
    %40 = vector.outerproduct %32, %32, %39 {kind = #vector.kind<mul>} : vector<8xi16>, vector<8xi16>
    %41 = vector.shuffle %25, %25 [1, 2, 4, 5, 6, 7, 9, 14, 15, 16, 17, 23, 26, 27] : vector<14x16xi1>, vector<14x16xi1>
    %42 = math.ctpop %9 : tensor<14x7x7xi1>
    %43 = vector.load %34[%c3] : memref<14xf32>, vector<8xf32>
    memref.copy %alloc_22, %alloc_9 : memref<16xf16> to memref<16xf16>
    vector.print %32 : vector<8xi16>
    %44 = math.exp2 %16 : tensor<14x7x7xf32>
    %cst_23 = arith.constant 5.344000e+04 : f16
    %45 = arith.xori %false, %true : i1
    %46 = arith.remui %c1503914008_i64, %c1711146161_i64 : i64
    %47 = tensor.empty() : tensor<7x14xf32>
    %48 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%47, %alloc_21, %47 : tensor<7x14xf32>, memref<14xf32>, tensor<7x14xf32>) outs(%3 : tensor<14x7x7xf32>) {
    ^bb0(%in: f32, %in_49: f32, %in_50: f32, %out: f32):
      %255 = arith.floordivsi %c-13633_i16, %35 : i16
      scf.index_switch %c10 
      case 1 {
        %288 = math.fma %cst_3, %cst, %cst_2 : f16
        %289 = bufferization.clone %alloc_14 : memref<16xf16> to memref<16xf16>
        %290 = tensor.empty() : tensor<16x16xf32>
        %291 = tensor.empty() : tensor<14x16xf32>
        %292 = linalg.matmul ins(%5, %290 : tensor<14x16xf32>, tensor<16x16xf32>) outs(%291 : tensor<14x16xf32>) -> tensor<14x16xf32>
        %293 = arith.maxui %35, %35 : i16
        %294 = arith.mulf %cst_1, %cst_1 : f16
        %295 = math.floor %cst_1 : f16
        %alloca = memref.alloca() : memref<14x16xf32>
        %296 = math.rsqrt %11 : tensor<8xf32>
        %297 = vector.broadcast %c2 : index to vector<14xindex>
        %298 = vector.broadcast %true_4 : i1 to vector<14xi1>
        %299 = vector.broadcast %cst_0 : f16 to vector<14xf16>
        vector.scatter %alloc_13[%c11, %c1, %c6] [%297], %298, %299 : memref<14x7x7xf16>, vector<14xindex>, vector<14xi1>, vector<14xf16>
        %300 = arith.floordivsi %false, %false : i1
        %301 = arith.ori %c979846887_i32, %c873602045_i32 : i32
        %302 = arith.maxsi %false, %true_4 : i1
        %303 = math.rsqrt %13 : tensor<8xf32>
        memref.copy %alloc_14, %289 : memref<16xf16> to memref<16xf16>
        vector.print %19 : vector<16xi1>
        %alloc_55 = memref.alloc() : memref<14x7x7xf32>
        memref.tensor_store %3, %alloc_55 : memref<14x7x7xf32>
        scf.yield
      }
      case 2 {
        memref.copy %alloc_14, %alloc_22 : memref<16xf16> to memref<16xf16>
        %288 = arith.addi %c1711146161_i64, %c1503914008_i64 : i64
        %alloca = memref.alloca() : memref<16xi1>
        %alloc_55 = memref.alloc() : memref<16xf16>
        %289 = vector.load %alloc_11[%c9, %c4, %c2] : memref<14x7x7xi1>, vector<8xi1>
        %290 = arith.minui %35, %c-13633_i16 : i16
        %291 = memref.load %alloc_20[%c0] : memref<16xf16>
        %292 = vector.broadcast %c873602045_i32 : i32 to vector<14x16xi32>
        %293 = arith.divf %cst_3, %cst_3 : f16
        %294 = arith.remf %out, %in_50 : f32
        %295 = arith.remf %in, %in : f32
        %296 = arith.remsi %true, %true : i1
        %alloca_56 = memref.alloca() : memref<14x7x7xi32>
        %297 = arith.xori %c1005429591_i32, %c979846887_i32 : i32
        %298 = math.exp2 %2 : tensor<8xf16>
        memref.store %c873602045_i32, %alloc_10[%c10, %c7] : memref<14x16xi32>
        scf.yield
      }
      case 3 {
        memref.copy %alloc_22, %alloc_9 : memref<16xf16> to memref<16xf16>
        %288 = vector.multi_reduction <add>, %43, %in_49 [0] : vector<8xf32> to f32
        %289 = tensor.empty() : tensor<8xf32>
        %290 = arith.remf %cst_3, %cst_2 : f16
        %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %32, %32, %35 : vector<8xi16>, vector<8xi16> into i16
        %292 = index.mul %37, %c10
        %293 = math.exp2 %3 : tensor<14x7x7xf32>
        %294 = index.maxs %c11, %c4
        %295 = vector.create_mask %22, %37, %37 : vector<14x7x7xi1>
        vector.print %43 : vector<8xf32>
        %296 = tensor.empty() : tensor<8xi32>
        %297 = math.ipowi %c1005429591_i32, %c528530600_i32 : i32
        %298 = arith.minui %true_4, %false : i1
        vector.print %32 : vector<8xi16>
        %299 = math.log %7 : tensor<16xf16>
        %300 = arith.floordivsi %c1005429591_i32, %c979846887_i32 : i32
        scf.yield
      }
      default {
        %288 = vector.matrix_multiply %32, %32 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi16>, vector<8xi16>) -> vector<1xi16>
        %289 = math.exp2 %17 : tensor<14x7x7xf32>
        %290 = arith.remsi %c1005429591_i32, %c1005429591_i32 : i32
        %291 = math.absf %cst_1 : f16
        %292 = arith.ori %c1503914008_i64, %c1711146161_i64 : i64
        %293 = index.maxs %c5, %c5
        %294 = arith.xori %c-13633_i16, %35 : i16
        %295 = index.maxs %c11, %c5
        %296 = arith.cmpf oge, %in_50, %in_50 : f32
        %297 = math.log %11 : tensor<8xf32>
        %298 = math.ctpop %0 : tensor<8xi32>
        %extracted_55 = tensor.extract %8[%c6] : tensor<8xf32>
        %299 = vector.load %alloc_20[%c10] : memref<16xf16>, vector<16xf16>
        %300 = arith.addf %cst_3, %cst_2 : f16
        %301 = math.sqrt %cst_0 : f16
        %302 = math.copysign %11, %8 : tensor<8xf32>
      }
      %256 = arith.remf %in_49, %out : f32
      %257 = math.absf %21 : tensor<f16>
      %258 = vector.splat %cst : vector<8xf16>
      memref.copy %alloc_21, %34 : memref<14xf32> to memref<14xf32>
      %259 = math.log10 %20 : tensor<f16>
      %260 = arith.shli %false, %false : i1
      %261 = affine.if affine_set<(d0, d1, d2) : (d0 ceildiv 32 + 4 >= 0, (d1 ceildiv 8) ceildiv 8 == 0)>(%c4, %c0, %c8) -> memref<14x7x7xi64> {
        %288 = arith.remf %cst_0, %cst : f16
        %289 = vector.broadcast %true_4 : i1 to vector<16x16xi1>
        %290 = vector.outerproduct %19, %19, %289 {kind = #vector.kind<minsi>} : vector<16xi1>, vector<16xi1>
        memref.copy %alloc_7, %alloc_15 : memref<14x7x7xf16> to memref<14x7x7xf16>
        %291 = math.log10 %10 : tensor<14x16xf16>
        %292 = arith.xori %c979846887_i32, %c528530600_i32 : i32
        %293 = math.ctpop %c1711146161_i64 : i64
        %294 = bufferization.to_memref %16 : memref<14x7x7xf32>
        %295 = math.cos %in_50 : f32
        %alloc_55 = memref.alloc() : memref<14x7x7xi64>
        affine.yield %alloc_55 : memref<14x7x7xi64>
      } else {
        %288 = arith.minf %in, %out : f32
        %289 = vector.splat %false : vector<14x16xi1>
        %290 = math.log1p %13 : tensor<8xf32>
        %291 = arith.divui %true_4, %true : i1
        %292 = math.rsqrt %in_50 : f32
        %293 = arith.ori %c-13633_i16, %35 : i16
        %294 = math.tanh %13 : tensor<8xf32>
        %295 = math.ctpop %1 : tensor<16xi64>
        %alloc_55 = memref.alloc() : memref<14x7x7xi64>
        affine.yield %alloc_55 : memref<14x7x7xi64>
      }
      %262 = scf.execute_region -> tensor<14x7x7xi1> {
        %288 = arith.divui %c1503914008_i64, %c958695536_i64 : i64
        %289 = math.tanh %10 : tensor<14x16xf16>
        %290 = arith.maxf %cst_2, %cst_0 : f16
        %291 = vector.matrix_multiply %19, %19 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi1>, vector<16xi1>) -> vector<1xi1>
        %292 = math.powf %21, %20 : tensor<f16>
        %293 = bufferization.to_memref %0 : memref<8xi32>
        %294 = arith.divf %cst, %cst : f16
        %295 = arith.shrsi %c958695536_i64, %c1503914008_i64 : i64
        %296 = arith.remui %true, %false : i1
        %alloc_55 = memref.alloc() : memref<8xi32>
        %297 = arith.ceildivsi %c1005429591_i32, %c873602045_i32 : i32
        %expanded = tensor.expand_shape %4 [[0, 1]] : tensor<8xi1> into tensor<8x1xi1>
        %298 = math.copysign %12, %12 : tensor<16xf16>
        %false_56 = index.bool.constant false
        %299 = math.round %cst_0 : f16
        %300 = math.roundeven %in_50 : f32
        scf.yield %9 : tensor<14x7x7xi1>
      }
      %263 = tensor.empty() : tensor<7x14xi1>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%263 : tensor<7x14xi1>) outs(%9 : tensor<14x7x7xi1>) {
      ^bb0(%in_55: i1, %out_56: i1):
        %288 = affine.load %alloc_10[%c13, %c2] : memref<14x16xi32>
        %289 = math.cos %13 : tensor<8xf32>
        %from_elements_57 = tensor.from_elements %out, %out, %in, %in_49, %in, %in, %in, %in_50, %in, %in_50, %out, %in, %out, %out, %in, %in_50 : tensor<16xf32>
        %290 = index.mul %c4, %c0
        %inserted_58 = tensor.insert %c979846887_i32 into %0[%c3] : tensor<8xi32>
        %dest_59, %accumulated_value_60 = vector.scan <or>, %25, %19 {inclusive = false, reduction_dim = 0 : i64} : vector<14x16xi1>, vector<16xi1>
        %291 = math.cttz %c-13633_i16 : i16
        %292 = arith.remsi %out_56, %in_55 : i1
        %293 = math.rsqrt %cst_1 : f16
        %294 = vector.insert %c-13633_i16, %32 [6] : i16 into vector<8xi16>
        %295 = math.roundeven %in_49 : f32
        %296 = arith.shli %true, %out_56 : i1
        %297 = vector.load %alloc_6[%c3] : memref<16xf16>, vector<14x7x7xf16>
        %298 = affine.load %alloc_11[%c14, %c3, %c2] : memref<14x7x7xi1>
        %299 = tensor.empty() : tensor<14x16xi1>
        %300 = arith.minui %c873602045_i32, %c979846887_i32 : i32
        %301 = arith.ceildivsi %true, %out_56 : i1
        %302 = arith.mulf %out, %in_49 : f32
        %303 = math.ceil %7 : tensor<16xf16>
        %304 = arith.ori %c979846887_i32, %c528530600_i32 : i32
        %305 = math.powf %7, %12 : tensor<16xf16>
        %c1509815938_i32 = arith.constant 1509815938 : i32
        %from_elements_61 = tensor.from_elements %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %288, %288, %c979846887_i32, %c1005429591_i32, %c528530600_i32 : tensor<8xi32>
        %306 = vector.broadcast %in : f32 to vector<14xf32>
        %307 = vector.broadcast %in_55 : i1 to vector<14xi1>
        %308 = vector.maskedload %34[%c8], %307, %306 : memref<14xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %309 = arith.addi %288, %c873602045_i32 : i32
        %310 = affine.load %alloc_13[%c0, %c5, %c10] : memref<14x7x7xf16>
        %cast_62 = tensor.cast %2 : tensor<8xf16> to tensor<?xf16>
        %311 = vector.create_mask %c7 : vector<16xi1>
        %312 = vector.create_mask %c5 : vector<16xi1>
        %313 = arith.floordivsi %c873602045_i32, %c873602045_i32 : i32
        %314 = arith.minui %c1005429591_i32, %c1005429591_i32 : i32
        %315 = index.maxs %c0, %290
        linalg.yield %out_56 : i1
      } -> tensor<14x7x7xi1>
      %265 = vector.broadcast %cst_2 : f16 to vector<14x7x7xf16>
      %266 = vector.broadcast %true_4 : i1 to vector<14x7x7xi1>
      %267 = vector.broadcast %c873602045_i32 : i32 to vector<14x7x7xi32>
      %268 = vector.gather %alloc_18[%c14] [%267], %266, %265 : memref<8xf16>, vector<14x7x7xi32>, vector<14x7x7xi1>, vector<14x7x7xf16> into vector<14x7x7xf16>
      %269 = arith.maxui %c528530600_i32, %c873602045_i32 : i32
      %270 = vector.extract_strided_slice %19 {offsets = [7], sizes = [2], strides = [1]} : vector<16xi1> to vector<2xi1>
      %271 = affine.for %arg3 = 0 to 107 iter_args(%arg4 = %c12) -> (index) {
        affine.yield %22 : index
      }
      %272 = memref.atomic_rmw assign %cst_2, %alloc_9[%c12] : (f16, memref<16xf16>) -> f16
      %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %43, %43, %in_49 : vector<8xf32>, vector<8xf32> into f32
      %274 = index.maxs %c9, %c6
      %275 = math.absf %20 : tensor<f16>
      %276 = arith.ori %35, %c-13633_i16 : i16
      %277 = affine.apply affine_map<(d0) -> (d0 ceildiv 128)>(%c11)
      %cast_51 = tensor.cast %4 : tensor<8xi1> to tensor<?xi1>
      %278 = arith.ori %c-13633_i16, %35 : i16
      %279 = math.ctlz %c958695536_i64 : i64
      %280 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + d1, 0, (d1 ceildiv 64) mod 128 + 16, -d2)>(%c0, %c12, %37, %c2)
      %281 = vector.broadcast %cst_0 : f16 to vector<14x7xf16>
      %dest_52, %accumulated_value_53 = vector.scan <maxf>, %265, %281 {inclusive = true, reduction_dim = 2 : i64} : vector<14x7x7xf16>, vector<14x7xf16>
      %282 = math.expm1 %cst_1 : f16
      %alloc_54 = memref.alloc() : memref<16xi1>
      %283 = vector.broadcast %c528530600_i32 : i32 to vector<14x16xi32>
      %284 = vector.gather %alloc_54[%c14] [%283], %25, %25 : memref<16xi1>, vector<14x16xi32>, vector<14x16xi1>, vector<14x16xi1> into vector<14x16xi1>
      memref.assume_alignment %alloc_22, 4 : memref<16xf16>
      %285 = math.cos %14 : tensor<16xf32>
      %286 = arith.minf %cst_0, %cst_3 : f16
      %287 = bufferization.clone %alloc_15 : memref<14x7x7xf16> to memref<14x7x7xf16>
      linalg.yield %out : f32
    } -> tensor<14x7x7xf32>
    %49 = bufferization.to_memref %10 : memref<14x16xf16>
    %50 = bufferization.clone %34 : memref<14xf32> to memref<14xf32>
    %dest_24, %accumulated_value_25 = vector.scan <or>, %25, %19 {inclusive = false, reduction_dim = 0 : i64} : vector<14x16xi1>, vector<16xi1>
    %51 = index.ceildivu %c0, %c2
    %from_elements = tensor.from_elements %c528530600_i32, %c979846887_i32, %c528530600_i32, %c528530600_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c873602045_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c873602045_i32, %c873602045_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c1005429591_i32, %c528530600_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c528530600_i32, %c979846887_i32, %c1005429591_i32, %c873602045_i32, %c979846887_i32, %c528530600_i32, %c873602045_i32, %c979846887_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c528530600_i32, %c1005429591_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c528530600_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c979846887_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c1005429591_i32, %c873602045_i32, %c1005429591_i32, %c873602045_i32, %c979846887_i32, %c979846887_i32, %c1005429591_i32, %c528530600_i32, %c1005429591_i32, %c979846887_i32, %c1005429591_i32, %c873602045_i32, %c873602045_i32, %c1005429591_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c979846887_i32, %c979846887_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c1005429591_i32, %c873602045_i32, %c528530600_i32, %c1005429591_i32, %c873602045_i32, %c1005429591_i32, %c528530600_i32, %c979846887_i32, %c1005429591_i32, %c873602045_i32, %c979846887_i32, %c873602045_i32, %c528530600_i32, %c528530600_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c873602045_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c979846887_i32, %c873602045_i32, %c873602045_i32, %c528530600_i32, %c1005429591_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c1005429591_i32, %c979846887_i32, %c528530600_i32, %c979846887_i32, %c979846887_i32, %c1005429591_i32, %c528530600_i32, %c979846887_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c1005429591_i32, %c979846887_i32, %c528530600_i32, %c528530600_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c873602045_i32, %c979846887_i32, %c1005429591_i32, %c1005429591_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c528530600_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c1005429591_i32, %c873602045_i32, %c979846887_i32, %c873602045_i32, %c873602045_i32, %c979846887_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c979846887_i32, %c528530600_i32, %c873602045_i32, %c1005429591_i32, %c979846887_i32, %c873602045_i32, %c873602045_i32, %c1005429591_i32, %c528530600_i32, %c979846887_i32, %c1005429591_i32, %c1005429591_i32, %c528530600_i32, %c528530600_i32, %c528530600_i32, %c528530600_i32, %c528530600_i32, %c979846887_i32, %c1005429591_i32, %c979846887_i32, %c873602045_i32, %c528530600_i32, %c979846887_i32, %c1005429591_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c979846887_i32, %c979846887_i32, %c1005429591_i32, %c873602045_i32, %c1005429591_i32, %c1005429591_i32, %c873602045_i32, %c528530600_i32, %c979846887_i32, %c979846887_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c1005429591_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c979846887_i32, %c979846887_i32, %c873602045_i32, %c528530600_i32, %c528530600_i32, %c979846887_i32, %c979846887_i32, %c528530600_i32, %c979846887_i32, %c1005429591_i32, %c979846887_i32, %c1005429591_i32, %c528530600_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c1005429591_i32, %c873602045_i32, %c528530600_i32, %c1005429591_i32, %c873602045_i32, %c528530600_i32, %c979846887_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c979846887_i32, %c979846887_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c979846887_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c528530600_i32, %c528530600_i32, %c979846887_i32, %c979846887_i32, %c979846887_i32, %c1005429591_i32, %c979846887_i32, %c979846887_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c1005429591_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c979846887_i32, %c528530600_i32, %c528530600_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c979846887_i32, %c979846887_i32, %c979846887_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c979846887_i32, %c873602045_i32, %c979846887_i32, %c528530600_i32, %c528530600_i32, %c528530600_i32, %c979846887_i32, %c1005429591_i32, %c873602045_i32, %c873602045_i32, %c873602045_i32, %c528530600_i32, %c1005429591_i32, %c979846887_i32, %c528530600_i32, %c979846887_i32, %c1005429591_i32, %c873602045_i32, %c528530600_i32, %c979846887_i32, %c1005429591_i32, %c1005429591_i32, %c1005429591_i32, %c528530600_i32, %c979846887_i32, %c979846887_i32, %c528530600_i32, %c528530600_i32, %c1005429591_i32, %c1005429591_i32, %c1005429591_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c528530600_i32, %c1005429591_i32, %c979846887_i32, %c1005429591_i32, %c979846887_i32, %c1005429591_i32, %c873602045_i32, %c873602045_i32, %c979846887_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c1005429591_i32, %c873602045_i32, %c873602045_i32, %c1005429591_i32, %c528530600_i32, %c979846887_i32, %c528530600_i32, %c873602045_i32, %c1005429591_i32, %c873602045_i32, %c528530600_i32, %c528530600_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c1005429591_i32, %c979846887_i32, %c979846887_i32, %c873602045_i32, %c979846887_i32, %c1005429591_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c979846887_i32, %c873602045_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c873602045_i32, %c873602045_i32, %c979846887_i32, %c873602045_i32, %c1005429591_i32, %c1005429591_i32, %c873602045_i32, %c979846887_i32, %c873602045_i32, %c873602045_i32, %c528530600_i32, %c528530600_i32, %c528530600_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c979846887_i32, %c528530600_i32, %c873602045_i32, %c979846887_i32, %c1005429591_i32, %c1005429591_i32, %c528530600_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c979846887_i32, %c1005429591_i32, %c979846887_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c1005429591_i32, %c873602045_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c1005429591_i32, %c1005429591_i32, %c1005429591_i32, %c873602045_i32, %c873602045_i32, %c979846887_i32, %c1005429591_i32, %c979846887_i32, %c979846887_i32, %c528530600_i32, %c873602045_i32, %c528530600_i32, %c528530600_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c979846887_i32, %c979846887_i32, %c979846887_i32, %c979846887_i32, %c873602045_i32, %c528530600_i32, %c873602045_i32, %c979846887_i32, %c528530600_i32, %c528530600_i32, %c1005429591_i32, %c873602045_i32, %c979846887_i32, %c1005429591_i32, %c1005429591_i32, %c1005429591_i32, %c528530600_i32, %c528530600_i32, %c979846887_i32, %c528530600_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c979846887_i32, %c1005429591_i32, %c528530600_i32, %c1005429591_i32, %c979846887_i32, %c873602045_i32, %c979846887_i32, %c1005429591_i32, %c1005429591_i32, %c873602045_i32, %c873602045_i32, %c528530600_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c1005429591_i32, %c979846887_i32, %c979846887_i32, %c979846887_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c1005429591_i32, %c528530600_i32, %c1005429591_i32, %c873602045_i32, %c528530600_i32, %c979846887_i32, %c979846887_i32, %c1005429591_i32, %c528530600_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c1005429591_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c873602045_i32, %c873602045_i32, %c528530600_i32, %c1005429591_i32, %c979846887_i32, %c873602045_i32, %c528530600_i32, %c873602045_i32, %c528530600_i32, %c1005429591_i32, %c1005429591_i32, %c873602045_i32, %c1005429591_i32, %c1005429591_i32, %c873602045_i32, %c979846887_i32, %c873602045_i32, %c979846887_i32, %c528530600_i32, %c979846887_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c528530600_i32, %c873602045_i32, %c1005429591_i32, %c1005429591_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c528530600_i32, %c873602045_i32, %c528530600_i32, %c528530600_i32, %c979846887_i32, %c979846887_i32, %c979846887_i32, %c1005429591_i32, %c528530600_i32, %c979846887_i32, %c979846887_i32, %c979846887_i32, %c528530600_i32, %c873602045_i32, %c979846887_i32, %c979846887_i32, %c1005429591_i32, %c1005429591_i32, %c528530600_i32, %c528530600_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c1005429591_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c979846887_i32, %c1005429591_i32, %c979846887_i32, %c1005429591_i32, %c979846887_i32, %c1005429591_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c528530600_i32, %c873602045_i32, %c979846887_i32, %c873602045_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c528530600_i32, %c1005429591_i32, %c873602045_i32, %c979846887_i32, %c873602045_i32, %c979846887_i32, %c873602045_i32, %c979846887_i32, %c1005429591_i32, %c1005429591_i32, %c1005429591_i32, %c873602045_i32, %c1005429591_i32, %c873602045_i32, %c1005429591_i32, %c528530600_i32, %c979846887_i32, %c979846887_i32, %c873602045_i32, %c1005429591_i32, %c979846887_i32, %c979846887_i32, %c873602045_i32, %c873602045_i32, %c873602045_i32, %c873602045_i32, %c528530600_i32, %c1005429591_i32, %c873602045_i32, %c979846887_i32, %c873602045_i32, %c528530600_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c979846887_i32, %c873602045_i32, %c979846887_i32, %c528530600_i32, %c528530600_i32, %c979846887_i32, %c528530600_i32, %c979846887_i32, %c528530600_i32, %c979846887_i32, %c1005429591_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c528530600_i32, %c873602045_i32, %c528530600_i32, %c528530600_i32, %c1005429591_i32, %c1005429591_i32, %c873602045_i32, %c528530600_i32, %c979846887_i32, %c979846887_i32, %c528530600_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c873602045_i32, %c1005429591_i32, %c979846887_i32, %c873602045_i32, %c979846887_i32, %c1005429591_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c528530600_i32, %c873602045_i32, %c979846887_i32, %c873602045_i32, %c873602045_i32, %c528530600_i32, %c528530600_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c528530600_i32, %c979846887_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c873602045_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c873602045_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c873602045_i32, %c1005429591_i32, %c873602045_i32, %c873602045_i32, %c528530600_i32, %c1005429591_i32, %c528530600_i32, %c979846887_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c873602045_i32, %c873602045_i32, %c1005429591_i32, %c528530600_i32, %c528530600_i32, %c1005429591_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c528530600_i32, %c528530600_i32, %c979846887_i32, %c873602045_i32, %c979846887_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c873602045_i32, %c1005429591_i32, %c1005429591_i32 : tensor<14x7x7xi32>
    %52 = vector.splat %c5 : vector<8xindex>
    %53 = index.maxs %c9, %51
    %54 = arith.mulf %cst_0, %cst_3 : f16
    %55 = arith.maxui %c1005429591_i32, %c979846887_i32 : i32
    %cst_26 = arith.constant 1.000000e+00 : f32
    %inserted = tensor.insert %cst_26 into %17[%c11, %c3, %c0] : tensor<14x7x7xf32>
    %56 = vector.create_mask %c15 : vector<16xi1>
    %57 = arith.remui %c528530600_i32, %c979846887_i32 : i32
    %58 = arith.subi %true, %true : i1
    %59 = vector.extract_strided_slice %25 {offsets = [5], sizes = [6], strides = [1]} : vector<14x16xi1> to vector<6x16xi1>
    %60 = index.maxu %22, %c11
    %61 = vector.create_mask %c14 : vector<16xi1>
    %62 = math.rsqrt %cst_1 : f16
    %63 = arith.floordivsi %c958695536_i64, %c958695536_i64 : i64
    %64 = index.casts %c1503914008_i64 : i64 to index
    %65 = affine.load %alloc_20[%c8] : memref<16xf16>
    %66 = math.atan %21 : tensor<f16>
    %cast = tensor.cast %4 : tensor<8xi1> to tensor<?xi1>
    %67 = affine.min affine_map<(d0, d1, d2) -> (d1 floordiv 8 + 1, d1 + 8, d1, (d1 floordiv 8 - d1 + 1) floordiv 128)>(%c9, %c10, %37)
    %alloc_27 = memref.alloc() : memref<14x7x7xi1>
    %68 = tensor.empty(%c9) : tensor<?xf16>
    %69 = math.exp %3 : tensor<14x7x7xf32>
    %70 = arith.remsi %false, %false : i1
    %alloc_28 = memref.alloc() : memref<8xi1>
    memref.copy %alloc, %alloc_28 : memref<8xi1> to memref<8xi1>
    %71 = arith.remui %c873602045_i32, %c1005429591_i32 : i32
    %false_29 = index.bool.constant false
    %72 = memref.load %alloc_21[%c0] : memref<14xf32>
    %73 = arith.floordivsi %c979846887_i32, %c873602045_i32 : i32
    %74 = vector.broadcast %c7 : index to vector<16xindex>
    %75 = vector.broadcast %cst_26 : f32 to vector<16xf32>
    vector.scatter %alloc_17[%c4] [%74], %61, %75 : memref<8xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
    %76 = arith.divf %cst_26, %cst_26 : f32
    %77 = scf.while (%arg3 = %alloc_8) : (memref<16xi16>) -> memref<16xi16> {
      %255 = tensor.empty() : tensor<7xi1>
      %256 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%255 : tensor<7xi1>) outs(%9 : tensor<14x7x7xi1>) {
      ^bb0(%in: i1, %out: i1):
        %265 = arith.remui %35, %35 : i16
        %266 = vector.extract %32[2] : vector<8xi16>
        %267 = vector.splat %c8 : vector<14x7x7xindex>
        vector.print %61 : vector<16xi1>
        %268 = math.exp2 %3 : tensor<14x7x7xf32>
        %alloca = memref.alloca() : memref<16xi64>
        vector.print %32 : vector<8xi16>
        %269 = vector.broadcast %c8 : index to vector<7xindex>
        %270 = vector.broadcast %false_29 : i1 to vector<7xi1>
        %271 = vector.broadcast %cst_26 : f32 to vector<7xf32>
        vector.scatter %alloc_17[%c3] [%269], %270, %271 : memref<8xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
        %272 = arith.floordivsi %35, %c-13633_i16 : i16
        %273 = vector.broadcast %true : i1 to vector<14xi1>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %25, %19, %273 : vector<14x16xi1>, vector<16xi1> into vector<14xi1>
        %275 = arith.negf %cst_2 : f16
        %276 = math.ctpop %false_29 : i1
        %277 = arith.subi %in, %false : i1
        %278 = math.powf %3, %3 : tensor<14x7x7xf32>
        %279 = index.mul %c11, %c0
        %280 = index.divu %c13, %c13
        %281 = math.exp %11 : tensor<8xf32>
        %282 = vector.insert %false_29, %19 [4] : i1 into vector<16xi1>
        %cast_49 = tensor.cast %15 : tensor<16xi1> to tensor<?xi1>
        %283 = vector.splat %true : vector<14x16xi1>
        %alloca_50 = memref.alloca() : memref<16xi16>
        %284 = vector.reduction <minui>, %61 : vector<16xi1> into i1
        %285 = vector.broadcast %35 : i16 to vector<8x8xi16>
        %286 = vector.outerproduct %32, %32, %285 {kind = #vector.kind<maxsi>} : vector<8xi16>, vector<8xi16>
        %alloc_51 = memref.alloc() : memref<8xf32>
        %287 = arith.minf %65, %cst_3 : f16
        %288 = index.sizeof
        %289 = math.rsqrt %12 : tensor<16xf16>
        %290 = vector.multi_reduction <xor>, %56, %61 [] : vector<16xi1> to vector<16xi1>
        %inserted_52 = tensor.insert %c1711146161_i64 into %1[%c9] : tensor<16xi64>
        %291 = arith.remf %cst_0, %cst_3 : f16
        %292 = arith.remf %cst_2, %cst_3 : f16
        %293 = vector.broadcast %c-13633_i16 : i16 to vector<8x8xi16>
        %294 = vector.outerproduct %32, %32, %293 {kind = #vector.kind<maxsi>} : vector<8xi16>, vector<8xi16>
        linalg.yield %false : i1
      } -> tensor<14x7x7xi1>
      %257 = arith.addi %c958695536_i64, %c958695536_i64 : i64
      %258 = math.powf %8, %11 : tensor<8xf32>
      %259 = index.sizeof
      %260 = math.cos %cst_0 : f16
      %261 = index.sizeof
      %262 = index.castu %false : i1 to index
      %263 = vector.broadcast %cst_26 : f32 to vector<8xf32>
      %264 = vector.fma %263, %43, %43 : vector<8xf32>
      scf.condition(%true_4) %arg3 : memref<16xi16>
    } do {
    ^bb0(%arg3: memref<16xi16>):
      %255 = vector.splat %c7 : vector<16xindex>
      %256 = memref.atomic_rmw mulf %cst_26, %50[%c12] : (f32, memref<14xf32>) -> f32
      %257 = vector.extract %61[3] : vector<16xi1>
      %258 = math.absf %16 : tensor<14x7x7xf32>
      %259 = vector.flat_transpose %61 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
      %260 = arith.remui %true, %false : i1
      %261 = arith.subi %c-13633_i16, %35 : i16
      %262 = math.sqrt %3 : tensor<14x7x7xf32>
      %263 = vector.extract_strided_slice %259 {offsets = [10], sizes = [3], strides = [1]} : vector<16xi1> to vector<3xi1>
      %264 = math.absi %c873602045_i32 : i32
      %265 = arith.addf %cst, %cst_2 : f16
      %266 = math.ipowi %c-13633_i16, %35 : i16
      %267 = vector.multi_reduction <minsi>, %25, %25 [] : vector<14x16xi1> to vector<14x16xi1>
      %268 = vector.broadcast %false : i1 to vector<14xi1>
      %dest_49, %accumulated_value_50 = vector.scan <add>, %25, %268 {inclusive = true, reduction_dim = 1 : i64} : vector<14x16xi1>, vector<14xi1>
      %269 = affine.for %arg4 = 0 to 25 iter_args(%arg5 = %25) -> (vector<14x16xi1>) {
        affine.yield %25 : vector<14x16xi1>
      }
      %270 = math.powf %cst_0, %cst_3 : f16
      scf.yield %arg3 : memref<16xi16>
    }
    %78 = arith.andi %c1503914008_i64, %c1503914008_i64 : i64
    %79 = arith.minf %cst_0, %cst_3 : f16
    %80 = math.exp2 %2 : tensor<8xf16>
    %81 = vector.insertelement %cst_26, %43[%53 : index] : vector<8xf32>
    %82 = tensor.empty() : tensor<16xi32>
    %83 = math.fpowi %12, %82 : tensor<16xf16>, tensor<16xi32>
    %84 = math.sqrt %7 : tensor<16xf16>
    %extracted = tensor.extract %13[%c7] : tensor<8xf32>
    %cst_30 = arith.constant 0x4D3A0D94 : f32
    %85 = arith.remsi %true_4, %true : i1
    %86 = arith.remui %35, %35 : i16
    %87 = math.ctpop %from_elements : tensor<14x7x7xi32>
    %88 = math.rsqrt %3 : tensor<14x7x7xf32>
    %89 = math.rsqrt %10 : tensor<14x16xf16>
    %90 = math.sqrt %cst_2 : f16
    %91 = arith.mulf %cst, %cst_1 : f16
    %92 = index.sizeof
    %93 = affine.load %alloc_7[%c0, %c5, %c15] : memref<14x7x7xf16>
    %94 = arith.cmpf uge, %cst_2, %cst_3 : f16
    %95 = math.tanh %65 : f16
    %96 = math.sqrt %93 : f16
    %97 = math.exp %cst_3 : f16
    %98 = vector.extract_strided_slice %56 {offsets = [4], sizes = [4], strides = [1]} : vector<16xi1> to vector<4xi1>
    %99 = vector.broadcast %false_29 : i1 to vector<16x16xi1>
    %100 = vector.outerproduct %56, %19, %99 {kind = #vector.kind<minsi>} : vector<16xi1>, vector<16xi1>
    %101 = bufferization.to_tensor %alloc_8 : memref<16xi16>
    %102 = math.floor %16 : tensor<14x7x7xf32>
    %103 = arith.negf %cst_0 : f16
    %104 = arith.cmpf false, %cst_1, %cst : f16
    %alloc_31 = memref.alloc() : memref<8xf16>
    memref.copy %alloc_18, %alloc_31 : memref<8xf16> to memref<8xf16>
    %extracted_32 = tensor.extract %6[%c0] : tensor<16xi1>
    %105 = vector.multi_reduction <maxsi>, %98, %98 [] : vector<4xi1> to vector<4xi1>
    %106 = vector.extract_strided_slice %25 {offsets = [7], sizes = [4], strides = [1]} : vector<14x16xi1> to vector<4x16xi1>
    %107 = arith.divui %extracted_32, %true_4 : i1
    %108 = math.ceil %12 : tensor<16xf16>
    %109 = arith.divui %35, %35 : i16
    %110 = math.ctlz %0 : tensor<8xi32>
    %111 = arith.remui %true, %false_29 : i1
    %112 = arith.xori %c1503914008_i64, %c1503914008_i64 : i64
    %113 = vector.extract %43[2] : vector<8xf32>
    %114 = index.mul %c12, %37
    %115 = affine.if affine_set<(d0, d1, d2) : (d0 ceildiv 32 + 4 >= 0, (d1 ceildiv 8) ceildiv 8 == 0)>(%c8, %c10, %c13) -> i1 {
      %255 = affine.for %arg3 = 0 to 112 iter_args(%arg4 = %c-13633_i16) -> (i16) {
        affine.yield %arg4 : i16
      }
      %256 = bufferization.clone %alloc_6 : memref<16xf16> to memref<16xf16>
      %257 = index.mul %c13, %c6
      %258 = arith.remf %cst_1, %65 : f16
      %259 = memref.atomic_rmw assign %cst_2, %49[%c3, %c2] : (f16, memref<14x16xf16>) -> f16
      %260 = arith.remsi %c1503914008_i64, %c1503914008_i64 : i64
      %261 = math.ctpop %101 : tensor<16xi16>
      %262 = arith.xori %true_4, %extracted_32 : i1
      affine.yield %extracted_32 : i1
    } else {
      %255 = math.log %10 : tensor<14x16xf16>
      %256 = index.ceildivu %64, %22
      %257 = index.castu %c0 : index to i32
      %258 = arith.remsi %c528530600_i32, %c979846887_i32 : i32
      %259 = bufferization.clone %alloc_8 : memref<16xi16> to memref<16xi16>
      %260 = arith.addi %c528530600_i32, %c979846887_i32 : i32
      %261 = tensor.empty() : tensor<7x14xi1>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%261 : tensor<7x14xi1>) outs(%9 : tensor<14x7x7xi1>) {
      ^bb0(%in: i1, %out: i1):
        %dest_49, %accumulated_value_50 = vector.scan <maxui>, %59, %56 {inclusive = false, reduction_dim = 0 : i64} : vector<6x16xi1>, vector<16xi1>
        %264 = math.rsqrt %10 : tensor<14x16xf16>
        vector.print %32 : vector<8xi16>
        %265 = math.ctpop %35 : i16
        %266 = arith.maxf %cst_0, %cst : f16
        %267 = math.log1p %16 : tensor<14x7x7xf32>
        %268 = vector.broadcast %extracted : f32 to vector<8x8xf32>
        %269 = vector.outerproduct %43, %43, %268 {kind = #vector.kind<minf>} : vector<8xf32>, vector<8xf32>
        %270 = arith.subi %extracted_32, %false_29 : i1
        %271 = arith.remui %c958695536_i64, %c1503914008_i64 : i64
        memref.store %cst_3, %alloc_22[%c12] : memref<16xf16>
        %272 = vector.broadcast %cst_26 : f32 to vector<8x8xf32>
        %273 = vector.outerproduct %43, %43, %272 {kind = #vector.kind<maxf>} : vector<8xf32>, vector<8xf32>
        %274 = math.floor %14 : tensor<16xf32>
        %275 = vector.shuffle %25, %59 [0, 2, 3, 5, 8, 15, 16, 17, 19] : vector<14x16xi1>, vector<6x16xi1>
        %276 = vector.broadcast %cst_26 : f32 to vector<f32>
        vector.transfer_write %276, %alloc_21[%c14] : vector<f32>, memref<14xf32>
        %277 = math.absf %12 : tensor<16xf16>
        %278 = math.absf %cst_2 : f16
        %279 = arith.shrui %out, %in : i1
        %280 = memref.atomic_rmw addf %extracted, %alloc_21[%c13] : (f32, memref<14xf32>) -> f32
        %dest_51, %accumulated_value_52 = vector.scan <add>, %106, %19 {inclusive = true, reduction_dim = 0 : i64} : vector<4x16xi1>, vector<16xi1>
        %281 = vector.insert %true_4, %98 [0] : i1 into vector<4xi1>
        %282 = arith.negf %65 : f16
        %283 = arith.remf %cst_1, %cst_2 : f16
        %inserted_53 = tensor.insert %93 into %10[%c12, %c4] : tensor<14x16xf16>
        %284 = index.divs %c1, %c3
        %285 = vector.matrix_multiply %32, %32 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi16>, vector<8xi16>) -> vector<1xi16>
        %286 = math.atan %10 : tensor<14x16xf16>
        %287 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minsi>} %56, %106, %98 : vector<16xi1>, vector<4x16xi1> into vector<4xi1>
        %288 = math.roundeven %11 : tensor<8xf32>
        memref.copy %alloc_14, %alloc_22 : memref<16xf16> to memref<16xf16>
        %289 = vector.matrix_multiply %98, %19 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<4xi1>, vector<16xi1>) -> vector<4xi1>
        %290 = index.maxs %c12, %c7
        %291 = math.absf %14 : tensor<16xf32>
        linalg.yield %in : i1
      } -> tensor<14x7x7xi1>
      %263 = vector.broadcast %35 : i16 to vector<14x7x7xi16>
      affine.yield %extracted_32 : i1
    }
    %116 = arith.minf %93, %65 : f16
    %117 = index.casts %false_29 : i1 to index
    %118 = vector.broadcast %extracted_32 : i1 to vector<16x16xi1>
    %119 = vector.outerproduct %56, %56, %118 {kind = #vector.kind<maxsi>} : vector<16xi1>, vector<16xi1>
    scf.if %true {
      %255 = vector.broadcast %true : i1 to vector<14x7xi1>
      vector.transfer_write %255, %alloc_16[%117, %c7, %c9] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<14x7xi1>, memref<14x7x7xi1>
      %256 = scf.execute_region -> f32 {
        %inserted_49 = tensor.insert %false_29 into %4[%c2] : tensor<8xi1>
        %263 = math.cos %11 : tensor<8xf32>
        %264 = vector.load %alloc_5[%c5, %c7] : memref<14x16xf16>, vector<16xf16>
        %265 = arith.shrsi %false_29, %true_4 : i1
        %266 = arith.remf %cst_2, %65 : f16
        %267 = arith.minf %cst, %cst_1 : f16
        %268 = arith.divui %c528530600_i32, %c1005429591_i32 : i32
        %269 = index.castu %117 : index to i32
        %270 = vector.splat %cst : vector<14x7x7xf16>
        %271 = index.sizeof
        vector.print %98 : vector<4xi1>
        %272 = arith.remsi %extracted_32, %true_4 : i1
        %273 = math.powf %8, %8 : tensor<8xf32>
        %274 = math.atan %10 : tensor<14x16xf16>
        %275 = arith.divf %65, %cst_1 : f16
        %276 = bufferization.to_tensor %alloc_14 : memref<16xf16>
        scf.yield %cst_26 : f32
      }
      %257 = vector.broadcast %true : i1 to vector<16x16xi1>
      %258 = vector.outerproduct %19, %61, %257 {kind = #vector.kind<mul>} : vector<16xi1>, vector<16xi1>
      %259 = math.cos %2 : tensor<8xf16>
      memref.copy %34, %50 : memref<14xf32> to memref<14xf32>
      %260 = math.floor %16 : tensor<14x7x7xf32>
      %261 = math.roundeven %13 : tensor<8xf32>
      %262 = affine.if affine_set<(d0, d1, d2, d3) : (d1 - 128 == 0, -(-d1 - 64) >= 0)>(%c3, %c0, %c4, %c14) -> memref<14x7x7xi64> {
        %263 = arith.addf %cst_3, %65 : f16
        %264 = index.mul %c5, %c1
        %265 = arith.floordivsi %false_29, %extracted_32 : i1
        %alloc_49 = memref.alloc() : memref<14x7x7xi1>
        %266 = index.castu %c5 : index to i32
        %267 = vector.multi_reduction <add>, %98, %true_4 [0] : vector<4xi1> to i1
        %268 = arith.minui %c958695536_i64, %c958695536_i64 : i64
        %269 = vector.extract_strided_slice %32 {offsets = [1], sizes = [7], strides = [1]} : vector<8xi16> to vector<7xi16>
        %alloc_50 = memref.alloc() : memref<14x7x7xi64>
        affine.yield %alloc_50 : memref<14x7x7xi64>
      } else {
        %dest_49, %accumulated_value_50 = vector.scan <maxui>, %25, %19 {inclusive = true, reduction_dim = 0 : i64} : vector<14x16xi1>, vector<16xi1>
        %263 = math.exp %extracted : f32
        %264 = index.maxu %c11, %c9
        %265 = arith.addi %c979846887_i32, %c979846887_i32 : i32
        %extracted_51 = tensor.extract %7[%c4] : tensor<16xf16>
        %266 = arith.xori %35, %c-13633_i16 : i16
        %267 = math.sqrt %21 : tensor<f16>
        vector.print %61 : vector<16xi1>
        %alloc_52 = memref.alloc() : memref<14x7x7xi64>
        affine.yield %alloc_52 : memref<14x7x7xi64>
      }
    } else {
      %255 = vector.broadcast %false_29 : i1 to vector<6xi1>
      %256 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxsi>} %61, %59, %255 : vector<16xi1>, vector<6x16xi1> into vector<6xi1>
      %257 = scf.while (%arg3 = %alloc_17) : (memref<8xf32>) -> memref<8xf32> {
        %261 = math.exp2 %14 : tensor<16xf32>
        %262 = math.exp %2 : tensor<8xf16>
        %263 = index.maxs %c1, %c7
        %264 = tensor.empty() : tensor<16x7xf16>
        %265 = tensor.empty() : tensor<14x7xf16>
        %266 = linalg.matmul ins(%10, %264 : tensor<14x16xf16>, tensor<16x7xf16>) outs(%265 : tensor<14x7xf16>) -> tensor<14x7xf16>
        %267 = vector.broadcast %true_4 : i1 to vector<16x16xi1>
        %268 = vector.outerproduct %56, %56, %267 {kind = #vector.kind<minsi>} : vector<16xi1>, vector<16xi1>
        %269 = math.log10 %cst_0 : f16
        %inserted_52 = tensor.insert %extracted into %8[%c4] : tensor<8xf32>
        %270 = vector.reduction <add>, %56 : vector<16xi1> into i1
        scf.condition(%true_4) %arg3 : memref<8xf32>
      } do {
      ^bb0(%arg3: memref<8xf32>):
        %alloca = memref.alloca() : memref<14x16xi1>
        %261 = vector.insertelement %true, %19[%53 : index] : vector<16xi1>
        %262 = vector.broadcast %extracted : f32 to vector<8x8xf32>
        %263 = vector.outerproduct %43, %43, %262 {kind = #vector.kind<mul>} : vector<8xf32>, vector<8xf32>
        %264 = affine.min affine_map<(d0, d1, d2) -> (d0)>(%53, %c14, %53)
        %265 = affine.apply affine_map<(d0, d1, d2) -> (-d0)>(%c3, %c13, %51)
        %266 = vector.broadcast %37 : index to vector<7xindex>
        %267 = vector.broadcast %true_4 : i1 to vector<7xi1>
        %268 = vector.broadcast %cst : f16 to vector<7xf16>
        vector.scatter %alloc_15[%c6, %c6, %c0] [%266], %267, %268 : memref<14x7x7xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %269 = vector.extract %19[2] : vector<16xi1>
        %270 = arith.divsi %c-13633_i16, %35 : i16
        %271 = index.add %c4, %c11
        %272 = arith.ori %false_29, %true : i1
        %273 = vector.splat %37 : vector<14x16xindex>
        %274 = math.ctpop %from_elements : tensor<14x7x7xi32>
        %from_elements_52 = tensor.from_elements %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64 : tensor<8xi64>
        %alloca_53 = memref.alloca() : memref<14x7x7xi64>
        %275 = index.casts %c13 : index to i32
        %276 = arith.addf %cst_3, %cst : f16
        scf.yield %alloc_17 : memref<8xf32>
      }
      %true_49 = arith.constant true
      %dest_50, %accumulated_value_51 = vector.scan <xor>, %106, %98 {inclusive = false, reduction_dim = 1 : i64} : vector<4x16xi1>, vector<4xi1>
      %258 = math.absi %c958695536_i64 : i64
      %259 = arith.minui %35, %35 : i16
      memref.copy %alloc_15, %alloc_7 : memref<14x7x7xf16> to memref<14x7x7xf16>
      %260 = arith.xori %false_29, %true_4 : i1
    }
    scf.index_switch %c3 
    case 1 {
      %255 = index.maxu %67, %c14
      %256 = affine.min affine_map<(d0, d1, d2) -> (d1 * -8 - (d2 mod 2) * 4, d1 mod 32)>(%c5, %c3, %92)
      %257 = math.round %cst_1 : f16
      %258 = arith.ori %c873602045_i32, %c1005429591_i32 : i32
      %259 = math.expm1 %11 : tensor<8xf32>
      affine.for %arg3 = 0 to 110 {
      }
      %260 = memref.alloca_scope  -> (memref<8xf16>) {
        %270 = vector.broadcast %c1503914008_i64 : i64 to vector<16xi64>
        %271 = vector.broadcast %extracted_32 : i1 to vector<14xi1>
        %dest_49, %accumulated_value_50 = vector.scan <mul>, %25, %271 {inclusive = true, reduction_dim = 1 : i64} : vector<14x16xi1>, vector<14xi1>
        memref.store %cst_3, %49[%c12, %c7] : memref<14x16xf16>
        %272 = index.mul %114, %c8
        %273 = math.exp2 %65 : f16
        %274 = arith.maxui %c1005429591_i32, %c1005429591_i32 : i32
        %275 = math.ctpop %true_4 : i1
        %276 = vector.create_mask %117, %60 : vector<14x16xi1>
        %277 = math.log1p %cst_0 : f16
        %278 = math.ceil %16 : tensor<14x7x7xf32>
        %279 = vector.multi_reduction <mul>, %98, %98 [] : vector<4xi1> to vector<4xi1>
        %280 = vector.broadcast %60 : index to vector<7xindex>
        %281 = vector.broadcast %false : i1 to vector<7xi1>
        %282 = vector.broadcast %extracted : f32 to vector<7xf32>
        vector.scatter %alloc_17[%c2] [%280], %281, %282 : memref<8xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
        %true_51 = index.bool.constant true
        %283 = math.expm1 %17 : tensor<14x7x7xf32>
        %alloc_52 = memref.alloc() : memref<16xi32>
        %284 = arith.maxsi %c528530600_i32, %c1005429591_i32 : i32
        %285 = vector.extract_strided_slice %59 {offsets = [4], sizes = [1], strides = [1]} : vector<6x16xi1> to vector<1x16xi1>
        %286 = math.absf %21 : tensor<f16>
        %287 = arith.shli %c-13633_i16, %c-13633_i16 : i16
        %288 = arith.minf %93, %cst_1 : f16
        %289 = math.tanh %7 : tensor<16xf16>
        %290 = math.fma %10, %10, %10 : tensor<14x16xf16>
        %291 = index.maxu %c13, %c9
        %292 = math.atan2 %5, %5 : tensor<14x16xf32>
        %293 = arith.ori %c958695536_i64, %c1503914008_i64 : i64
        %294 = arith.floordivsi %false, %true_4 : i1
        %295 = vector.load %alloc_7[%c8, %c6, %c0] : memref<14x7x7xf16>, vector<16xf16>
        %296 = bufferization.clone %alloc_9 : memref<16xf16> to memref<16xf16>
        %297 = index.divs %c9, %c8
        memref.store %cst_0, %alloc_5[%c2, %c6] : memref<14x16xf16>
        %298 = vector.broadcast %297 : index to vector<14xindex>
        %299 = vector.broadcast %false_29 : i1 to vector<14xi1>
        vector.scatter %alloc_16[%c5, %c3, %c0] [%298], %299, %299 : memref<14x7x7xi1>, vector<14xindex>, vector<14xi1>, vector<14xi1>
        %cast_53 = tensor.cast %10 : tensor<14x16xf16> to tensor<?x?xf16>
        memref.alloca_scope.return %alloc_18 : memref<8xf16>
      }
      %261 = math.rsqrt %10 : tensor<14x16xf16>
      %262 = math.roundeven %2 : tensor<8xf16>
      %263 = math.tanh %5 : tensor<14x16xf32>
      %264 = vector.splat %c2 : vector<16xindex>
      %265 = bufferization.clone %alloc_12 : memref<14x7x7xi1> to memref<14x7x7xi1>
      %266 = arith.subi %c528530600_i32, %c1005429591_i32 : i32
      %267 = arith.divsi %false, %false : i1
      %268 = affine.apply affine_map<(d0, d1) -> (d0 + (d1 + 128) * 128)>(%c5, %c7)
      %269 = math.atan %8 : tensor<8xf32>
      scf.yield
    }
    default {
      %255 = vector.broadcast %extracted : f32 to vector<8x8xf32>
      %256 = vector.outerproduct %43, %43, %255 {kind = #vector.kind<minf>} : vector<8xf32>, vector<8xf32>
      %257 = index.ceildivu %c11, %c1
      %258 = arith.addi %true, %extracted_32 : i1
      %259 = affine.min affine_map<(d0) -> (d0, d0 + 16, d0 * 64)>(%64)
      %260 = arith.negf %65 : f16
      scf.index_switch %c11 
      case 1 {
        %inserted_50 = tensor.insert %cst_0 into %2[%c1] : tensor<8xf16>
        %269 = vector.shuffle %98, %61 [1, 2, 4, 7, 8, 11, 12, 13, 14, 16, 19] : vector<4xi1>, vector<16xi1>
        %270 = vector.extract_strided_slice %43 {offsets = [5], sizes = [2], strides = [1]} : vector<8xf32> to vector<2xf32>
        %271 = arith.negf %cst_0 : f16
        %272 = vector.broadcast %extracted_32 : i1 to vector<14x4xi1>
        %273 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %25, %106, %272 : vector<14x16xi1>, vector<4x16xi1> into vector<14x4xi1>
        %274 = arith.floordivsi %extracted_32, %false_29 : i1
        %275 = arith.subi %c1711146161_i64, %c1711146161_i64 : i64
        %276 = affine.load %alloc_15[%c5, %c5, %c0] : memref<14x7x7xf16>
        %277 = vector.broadcast %extracted_32 : i1 to vector<8xi1>
        %278 = vector.broadcast %c873602045_i32 : i32 to vector<8xi32>
        %279 = vector.gather %11[%c12] [%278], %277, %43 : tensor<8xf32>, vector<8xi32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
        %280 = arith.andi %true_4, %false_29 : i1
        %alloca = memref.alloca() : memref<14x16xf16>
        %281 = arith.divsi %c528530600_i32, %c528530600_i32 : i32
        %282 = index.mul %c7, %c4
        %283 = math.log1p %276 : f16
        %284 = arith.minui %35, %c-13633_i16 : i16
        %285 = arith.ori %extracted_32, %true : i1
        scf.yield
      }
      case 2 {
        %269 = vector.splat %extracted_32 : vector<16xi1>
        %270 = vector.extract_strided_slice %25 {offsets = [3], sizes = [4], strides = [1]} : vector<14x16xi1> to vector<4x16xi1>
        %271 = math.absi %c873602045_i32 : i32
        %272 = arith.minui %c528530600_i32, %c873602045_i32 : i32
        %cast_50 = tensor.cast %8 : tensor<8xf32> to tensor<?xf32>
        %273 = index.maxs %c11, %53
        %inserted_51 = tensor.insert %extracted into %cast_50[%c0] : tensor<?xf32>
        %274 = math.tanh %65 : f16
        %275 = math.rsqrt %10 : tensor<14x16xf16>
        %276 = math.tan %2 : tensor<8xf16>
        %277 = math.exp2 %3 : tensor<14x7x7xf32>
        %278 = vector.shuffle %25, %270 [6, 8, 10, 11, 12, 14, 15, 17] : vector<14x16xi1>, vector<4x16xi1>
        %279 = math.exp2 %8 : tensor<8xf32>
        %280 = index.mul %22, %37
        %281 = math.atan %7 : tensor<16xf16>
        %282 = math.expm1 %10 : tensor<14x16xf16>
        scf.yield
      }
      default {
        %269 = vector.splat %35 : vector<8xi16>
        %270 = vector.broadcast %cst_26 : f32 to vector<8x8xf32>
        %271 = vector.outerproduct %43, %43, %270 {kind = #vector.kind<maxf>} : vector<8xf32>, vector<8xf32>
        %272 = math.cos %extracted : f32
        %273 = math.copysign %65, %cst_2 : f16
        %274 = vector.multi_reduction <mul>, %32, %35 [0] : vector<8xi16> to i16
        %275 = math.expm1 %65 : f16
        memref.copy %34, %alloc_21 : memref<14xf32> to memref<14xf32>
        %276 = vector.broadcast %false : i1 to vector<16x16xi1>
        %277 = vector.outerproduct %61, %61, %276 {kind = #vector.kind<mul>} : vector<16xi1>, vector<16xi1>
        %278 = index.ceildivs %37, %22
        %279 = index.maxu %c1, %c12
        %280 = arith.addf %cst, %cst_2 : f16
        %281 = index.casts %true_4 : i1 to index
        %282 = index.casts %true_4 : i1 to index
        %283 = vector.broadcast %c-13633_i16 : i16 to vector<8x8xi16>
        %284 = vector.outerproduct %32, %32, %283 {kind = #vector.kind<and>} : vector<8xi16>, vector<8xi16>
        %285 = vector.load %alloc_21[%c0] : memref<14xf32>, vector<16xf32>
        %inserted_50 = tensor.insert %93 into %7[%c10] : tensor<16xf16>
      }
      %261 = arith.maxui %c979846887_i32, %c1005429591_i32 : i32
      %262 = vector.extract_strided_slice %106 {offsets = [0], sizes = [1], strides = [1]} : vector<4x16xi1> to vector<1x16xi1>
      %263 = math.ipowi %c873602045_i32, %c1005429591_i32 : i32
      %264 = arith.divsi %c958695536_i64, %c1503914008_i64 : i64
      %265 = arith.maxui %c-13633_i16, %c-13633_i16 : i16
      %266 = arith.addf %cst, %cst_3 : f16
      %267 = math.absi %true : i1
      %268 = arith.divf %93, %cst_1 : f16
      %alloc_49 = memref.alloc() : memref<8xi32>
      memref.copy %34, %alloc_21 : memref<14xf32> to memref<14xf32>
    }
    %120 = vector.extract %98[3] : vector<4xi1>
    %121 = math.rsqrt %2 : tensor<8xf16>
    %122 = vector.load %alloc_18[%c6] : memref<8xf16>, vector<8xf16>
    %123 = vector.splat %c13 : vector<8xindex>
    %124 = index.castu %35 : i16 to index
    %from_elements_33 = tensor.from_elements %cst_3, %93, %cst_3, %cst_2, %65, %cst_3, %cst_2, %cst_2, %cst_2, %93, %65, %cst_3, %cst_2, %cst_2, %cst_3, %65, %65, %cst_2, %65, %65, %cst_0, %65, %93, %93, %93, %65, %65, %cst_3, %65, %93, %cst, %cst, %65, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %65, %cst, %cst_3, %cst_2, %cst_1, %cst_2, %cst_2, %cst, %93, %cst_3, %cst_1, %65, %93, %cst_0, %93, %65, %cst_2, %cst_0, %93, %cst_3, %cst_0, %65, %cst_1, %cst_0, %cst_3, %cst_0, %cst_3, %cst_1, %cst_2, %93, %cst_3, %93, %cst_3, %65, %cst_2, %cst_0, %cst_1, %cst_0, %cst, %cst_2, %cst, %cst_1, %93, %65, %cst_0, %cst_1, %65, %65, %cst_2, %cst_2, %65, %cst_3, %cst, %65, %cst_0, %93, %cst, %cst_2, %cst_2, %65, %93, %cst_2, %cst_2, %cst_2, %cst_2, %93, %cst, %cst_2, %cst_1, %93, %cst_3, %cst_1, %cst_2, %cst, %93, %cst_2, %cst_1, %cst_0, %cst_1, %cst_0, %cst_2, %cst_1, %93, %cst, %65, %65, %cst_3, %cst_3, %cst_2, %cst_1, %93, %cst_0, %93, %cst_2, %93, %cst_1, %cst_2, %cst, %65, %cst_2, %cst_1, %cst, %cst_2, %cst, %65, %cst_1, %cst_0, %cst_1, %65, %cst_2, %cst_0, %cst_1, %93, %cst, %cst_3, %cst_1, %cst, %cst_2, %93, %cst_0, %cst_3, %cst_1, %cst_1, %cst, %cst_1, %93, %cst_1, %93, %cst_0, %cst_3, %93, %cst_3, %cst_0, %65, %cst_0, %cst_1, %93, %93, %cst_2, %93, %cst_0, %65, %93, %cst_2, %cst_1, %93, %cst_1, %cst_1, %cst_0, %93, %cst_0, %65, %cst, %cst_1, %93, %cst_1, %cst_3, %65, %65, %cst, %cst_2, %cst, %65, %cst, %cst_3, %65, %cst_2, %cst_0, %93, %65, %cst_2, %cst_0, %cst, %cst_1, %cst_2, %cst_0, %cst_1, %cst_2, %cst_3, %cst_0, %cst_0, %cst_0, %93, %cst_2, %cst_3, %cst : tensor<14x16xf16>
    %125 = vector.transpose %25, [1, 0] : vector<14x16xi1> to vector<16x14xi1>
    %126 = math.copysign %7, %7 : tensor<16xf16>
    %127 = math.cos %8 : tensor<8xf32>
    %128 = arith.ori %c528530600_i32, %c873602045_i32 : i32
    %false_34 = index.bool.constant false
    %129 = math.fma %5, %5, %5 : tensor<14x16xf32>
    %130 = arith.mulf %cst_1, %cst_2 : f16
    %131 = vector.insertelement %35, %32[%c4 : index] : vector<8xi16>
    %132 = vector.broadcast %c4 : index to vector<16xindex>
    %133 = vector.broadcast %extracted : f32 to vector<16xf32>
    vector.scatter %alloc_17[%c7] [%132], %19, %133 : memref<8xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
    %134 = vector.reduction <minsi>, %98 : vector<4xi1> into i1
    %135 = arith.remsi %false_34, %false_34 : i1
    %136 = arith.remsi %c-13633_i16, %35 : i16
    %137 = bufferization.clone %alloc_18 : memref<8xf16> to memref<8xf16>
    %138 = vector.multi_reduction <add>, %43, %43 [] : vector<8xf32> to vector<8xf32>
    %cst_35 = arith.constant 2.672000e+04 : f16
    %139 = bufferization.to_memref %12 : memref<16xf16>
    %140 = vector.load %alloc_18[%c1] : memref<8xf16>, vector<14x16xf16>
    %inserted_36 = tensor.insert %65 into %10[%c0, %c5] : tensor<14x16xf16>
    %141 = arith.minf %cst_0, %cst : f16
    %142 = arith.maxf %cst, %93 : f16
    %143 = arith.remui %c1503914008_i64, %c1503914008_i64 : i64
    %144 = math.atan %cst_2 : f16
    %145 = arith.remf %cst_26, %cst_26 : f32
    %146 = math.absi %1 : tensor<16xi64>
    %147 = math.log1p %cst_3 : f16
    %148 = math.atan %7 : tensor<16xf16>
    %149 = vector.multi_reduction <xor>, %19, %true_4 [0] : vector<16xi1> to i1
    %150 = math.log1p %extracted : f32
    %151 = arith.andi %c958695536_i64, %c958695536_i64 : i64
    %152 = index.divs %c1, %92
    %153 = arith.remsi %false, %149 : i1
    %cast_37 = tensor.cast %from_elements_33 : tensor<14x16xf16> to tensor<?x?xf16>
    %154 = vector.insert %65, %122 [1] : f16 into vector<8xf16>
    %155 = index.castu %false : i1 to index
    %alloc_38 = memref.alloc() : memref<14x7x7xi1>
    %alloc_39 = memref.alloc() : memref<16xi16>
    memref.copy %alloc_8, %alloc_39 : memref<16xi16> to memref<16xi16>
    %collapsed = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<14x7x7xf32> into tensor<98x7xf32>
    %156 = affine.if affine_set<(d0, d1, d2) : (d0 ceildiv 32 + 4 >= 0, (d1 ceildiv 8) ceildiv 8 == 0)>(%c14, %c4, %c9) -> memref<14x16xi32> {
      %255 = arith.maxsi %149, %extracted_32 : i1
      %256 = math.absf %93 : f16
      %257 = math.fma %cst_0, %cst, %cst_3 : f16
      %258 = index.maxs %c8, %c11
      %259 = vector.broadcast %cst_2 : f16 to vector<16xf16>
      %260 = arith.remui %true_4, %false_34 : i1
      %261 = scf.execute_region -> tensor<14x7x7xi64> {
        %263 = vector.insert %extracted, %43 [2] : f32 into vector<8xf32>
        memref.store %93, %alloc_22[%c13] : memref<16xf16>
        %264 = arith.shli %c873602045_i32, %c528530600_i32 : i32
        %from_elements_49 = tensor.from_elements %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %cst_26, %extracted, %cst_26, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %cst_26 : tensor<16xf32>
        %265 = math.sqrt %from_elements_33 : tensor<14x16xf16>
        %266 = math.expm1 %14 : tensor<16xf32>
        %267 = arith.divf %65, %65 : f16
        %268 = arith.divui %c528530600_i32, %c979846887_i32 : i32
        %alloca = memref.alloca() : memref<14x16xi32>
        %269 = arith.divf %extracted, %extracted : f32
        %270 = index.sizeof
        %alloc_50 = memref.alloc() : memref<14x7x7xf32>
        %271 = arith.divui %149, %false_29 : i1
        %272 = math.exp %8 : tensor<8xf32>
        %273 = math.ctpop %extracted_32 : i1
        %274 = arith.remui %c1005429591_i32, %c528530600_i32 : i32
        %275 = tensor.empty() : tensor<14x7x7xi64>
        scf.yield %275 : tensor<14x7x7xi64>
      }
      %262 = arith.floordivsi %c979846887_i32, %c1005429591_i32 : i32
      affine.yield %alloc_10 : memref<14x16xi32>
    } else {
      %255 = math.ctpop %c979846887_i32 : i32
      %256 = arith.minf %93, %cst : f16
      %257 = memref.atomic_rmw minf %93, %alloc_6[%c11] : (f16, memref<16xf16>) -> f16
      %258 = math.exp2 %3 : tensor<14x7x7xf32>
      %259 = vector.broadcast %c13 : index to vector<16xindex>
      %260 = vector.broadcast %extracted : f32 to vector<16xf32>
      vector.scatter %50[%c11] [%259], %56, %260 : memref<14xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
      %261 = math.absf %3 : tensor<14x7x7xf32>
      %262 = arith.remui %c873602045_i32, %c528530600_i32 : i32
      %263 = bufferization.clone %alloc_5 : memref<14x16xf16> to memref<14x16xf16>
      affine.yield %alloc_10 : memref<14x16xi32>
    }
    %157 = arith.cmpf uge, %65, %cst_3 : f16
    %158 = vector.splat %c9 : vector<14x7x7xindex>
    %159 = arith.divui %false, %false : i1
    %160 = index.casts %c6 : index to i32
    %161 = math.rsqrt %8 : tensor<8xf32>
    %162 = bufferization.to_memref %17 : memref<14x7x7xf32>
    %163 = memref.atomic_rmw mulf %cst_0, %alloc_6[%c3] : (f16, memref<16xf16>) -> f16
    %164 = arith.divf %65, %65 : f16
    vector.print %140 : vector<14x16xf16>
    %165 = math.atan2 %11, %8 : tensor<8xf32>
    %166 = vector.broadcast %true_4 : i1 to vector<4x4xi1>
    %167 = vector.outerproduct %98, %98, %166 {kind = #vector.kind<minsi>} : vector<4xi1>, vector<4xi1>
    %168 = vector.load %139[%c6] : memref<16xf16>, vector<16xf16>
    %169 = math.absf %collapsed : tensor<98x7xf32>
    %170 = math.absi %1 : tensor<16xi64>
    %171 = vector.load %162[%c8, %c5, %c3] : memref<14x7x7xf32>, vector<14x7x7xf32>
    %172 = affine.load %162[%c3, %c7, %c15] : memref<14x7x7xf32>
    %173 = vector.matrix_multiply %168, %168 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf16>, vector<16xf16>) -> vector<1xf16>
    %174 = arith.ori %35, %c-13633_i16 : i16
    %inserted_40 = tensor.insert %cst_1 into %10[%c12, %c15] : tensor<14x16xf16>
    %175 = arith.maxf %cst_1, %cst_2 : f16
    %176 = math.absi %1 : tensor<16xi64>
    %177 = math.log10 %10 : tensor<14x16xf16>
    %178 = vector.broadcast %65 : f16 to vector<8x8xf16>
    %179 = vector.outerproduct %122, %122, %178 {kind = #vector.kind<maxf>} : vector<8xf16>, vector<8xf16>
    %180 = arith.addi %true_4, %false : i1
    vector.print %140 : vector<14x16xf16>
    memref.copy %alloc_18, %137 : memref<8xf16> to memref<8xf16>
    %181 = vector.extract %140[1] : vector<14x16xf16>
    %182 = vector.broadcast %172 : f32 to vector<8xf32>
    %183 = arith.remui %false_34, %false : i1
    %184 = math.absf %10 : tensor<14x16xf16>
    %185 = affine.for %arg3 = 0 to 66 iter_args(%arg4 = %140) -> (vector<14x16xf16>) {
      affine.yield %140 : vector<14x16xf16>
    }
    %alloc_41 = memref.alloc() : memref<8xf32>
    memref.copy %alloc_17, %alloc_41 : memref<8xf32> to memref<8xf32>
    %186 = vector.broadcast %cst_2 : f16 to vector<16x16xf16>
    %187 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %140, %140, %186 : vector<14x16xf16>, vector<14x16xf16> into vector<16x16xf16>
    %188 = scf.if %extracted_32 -> (memref<16xi1>) {
      %255 = arith.andi %c958695536_i64, %c1711146161_i64 : i64
      %256 = vector.broadcast %65 : f16 to vector<1x1xf16>
      %257 = vector.outerproduct %173, %173, %256 {kind = #vector.kind<add>} : vector<1xf16>, vector<1xf16>
      %258 = math.expm1 %12 : tensor<16xf16>
      %259 = vector.create_mask %53, %c1, %117 : vector<14x7x7xi1>
      %alloc_49 = memref.alloc() : memref<16xf32>
      %260 = vector.broadcast %cst_26 : f32 to vector<16xf32>
      %261 = vector.broadcast %c979846887_i32 : i32 to vector<16xi32>
      %262 = vector.gather %alloc_49[%67] [%261], %56, %260 : memref<16xf32>, vector<16xi32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
      %false_50 = arith.constant false
      %263 = affine.min affine_map<(d0, d1) -> (d1 * 4, ((d1 * 2) mod 4) floordiv 16, d1 * 2)>(%c12, %c3)
      %264 = index.castu %114 : index to i32
      %alloc_51 = memref.alloc() : memref<16xi1>
      scf.yield %alloc_51 : memref<16xi1>
    } else {
      %255 = arith.subi %true_4, %false : i1
      memref.copy %alloc_21, %34 : memref<14xf32> to memref<14xf32>
      %256 = math.powf %13, %8 : tensor<8xf32>
      %257 = arith.addi %c979846887_i32, %c528530600_i32 : i32
      %258 = vector.broadcast %cst_0 : f16 to vector<14xf16>
      %259 = vector.broadcast %false : i1 to vector<14xi1>
      %260 = vector.maskedload %137[%c3], %259, %258 : memref<8xf16>, vector<14xi1>, vector<14xf16> into vector<14xf16>
      %261 = arith.divui %c1711146161_i64, %c1711146161_i64 : i64
      %262 = vector.extract_strided_slice %140 {offsets = [4], sizes = [3], strides = [1]} : vector<14x16xf16> to vector<3x16xf16>
      %263 = vector.maskedload %alloc[%c2], %56, %56 : memref<8xi1>, vector<16xi1>, vector<16xi1> into vector<16xi1>
      %alloc_49 = memref.alloc() : memref<16xi1>
      scf.yield %alloc_49 : memref<16xi1>
    }
    scf.execute_region {
      %255 = affine.if affine_set<(d0, d1, d2) : ((d0 - 2) ceildiv 2 + 16 == 0, (d0 - 2) * 4 == 0)>(%c13, %c5, %c2) -> memref<8xf16> {
        %270 = vector.splat %false_29 : vector<14x7x7xi1>
        %271 = arith.shli %c1005429591_i32, %c1005429591_i32 : i32
        %272 = bufferization.to_memref %16 : memref<14x7x7xf32>
        %273 = vector.splat %true : vector<14x16xi1>
        %274 = math.fma %21, %20, %21 : tensor<f16>
        %275 = arith.xori %c1005429591_i32, %c528530600_i32 : i32
        %276 = arith.remf %93, %cst_2 : f16
        %277 = vector.broadcast %60 : index to vector<14xindex>
        %278 = vector.broadcast %extracted_32 : i1 to vector<14xi1>
        %279 = vector.broadcast %35 : i16 to vector<14xi16>
        vector.scatter %alloc_8[%c7] [%277], %278, %279 : memref<16xi16>, vector<14xindex>, vector<14xi1>, vector<14xi16>
        affine.yield %alloc_18 : memref<8xf16>
      } else {
        %270 = vector.broadcast %cst_1 : f16 to vector<16x16xf16>
        %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %140, %140, %270 : vector<14x16xf16>, vector<14x16xf16> into vector<16x16xf16>
        %272 = arith.divui %c1005429591_i32, %c528530600_i32 : i32
        %273 = arith.divsi %c528530600_i32, %c873602045_i32 : i32
        %274 = vector.broadcast %extracted : f32 to vector<8xf32>
        %275 = vector.fma %274, %182, %274 : vector<8xf32>
        %276 = arith.remui %c1503914008_i64, %c958695536_i64 : i64
        memref.copy %50, %alloc_21 : memref<14xf32> to memref<14xf32>
        %277 = vector.broadcast %true_4 : i1 to vector<14xi1>
        %278 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxui>} %61, %25, %277 : vector<16xi1>, vector<14x16xi1> into vector<14xi1>
        %279 = vector.insert %true, %98 [3] : i1 into vector<4xi1>
        affine.yield %137 : memref<8xf16>
      }
      %256 = math.absf %20 : tensor<f16>
      %257 = memref.alloca_scope  -> (memref<16xi1>) {
        %inserted_50 = tensor.insert %extracted into %13[%c6] : tensor<8xf32>
        %270 = arith.divf %cst, %cst : f16
        %271 = index.ceildivu %60, %c4
        %272 = math.exp2 %14 : tensor<16xf32>
        %273 = bufferization.clone %alloc_18 : memref<8xf16> to memref<8xf16>
        memref.store %cst_26, %34[%c9] : memref<14xf32>
        %274 = tensor.empty() : tensor<14x7x7xf32>
        %275 = vector.broadcast %172 : f32 to vector<7xf32>
        %276 = vector.multi_reduction <maxf>, %171, %275 [0, 1] : vector<14x7x7xf32> to vector<7xf32>
        %277 = arith.shli %c873602045_i32, %c528530600_i32 : i32
        %278 = vector.create_mask %c9, %64, %c4 : vector<14x7x7xi1>
        %279 = index.casts %c979846887_i32 : i32 to index
        %rank = tensor.rank %12 : tensor<16xf16>
        %alloc_51 = memref.alloc() : memref<14x16xi32>
        %280 = arith.remsi %false_34, %false : i1
        %alloca = memref.alloca() : memref<8xi16>
        %281 = arith.subi %c528530600_i32, %c873602045_i32 : i32
        %282 = affine.apply affine_map<(d0, d1, d2) -> (-(d0 - 64))>(%92, %c8, %c1)
        %283 = arith.negf %cst_3 : f16
        %284 = index.maxu %c11, %53
        %285 = memref.atomic_rmw addf %extracted, %162[%c13, %c5, %c6] : (f32, memref<14x7x7xf32>) -> f32
        %from_elements_52 = tensor.from_elements %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64 : tensor<16xi64>
        %286 = index.maxu %c12, %114
        %dest_53, %accumulated_value_54 = vector.scan <minf>, %140, %181 {inclusive = true, reduction_dim = 0 : i64} : vector<14x16xf16>, vector<16xf16>
        %287 = arith.minui %false_29, %false_34 : i1
        %288 = memref.atomic_rmw maxu %c1503914008_i64, %alloc_19[%c6, %c1] : (i64, memref<14x16xi64>) -> i64
        %289 = memref.load %alloc_6[%c3] : memref<16xf16>
        %290 = vector.create_mask %51 : vector<8xi1>
        %inserted_55 = tensor.insert %cst_2 into %2[%c0] : tensor<8xf16>
        %291 = arith.ori %149, %true : i1
        %292 = math.log1p %5 : tensor<14x16xf32>
        %293 = arith.remui %false_29, %false : i1
        %294 = math.ctpop %4 : tensor<8xi1>
        memref.alloca_scope.return %188 : memref<16xi1>
      }
      %258 = arith.cmpf ugt, %93, %cst_0 : f16
      %259 = vector.extract_strided_slice %181 {offsets = [13], sizes = [1], strides = [1]} : vector<16xf16> to vector<1xf16>
      %260 = index.casts %67 : index to i32
      %261 = index.mul %c12, %c7
      %alloc_49 = memref.alloc() : memref<14xi1>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_49, %alloc_49 : memref<14xi1>, memref<14xi1>) outs(%9 : tensor<14x7x7xi1>) {
      ^bb0(%in: i1, %in_50: i1, %out: i1):
        %270 = vector.transpose %181, [0] : vector<16xf16> to vector<16xf16>
        %271 = math.cos %5 : tensor<14x16xf32>
        %272 = math.powf %11, %8 : tensor<8xf32>
        %273 = arith.minui %35, %c-13633_i16 : i16
        memref.store %cst, %alloc_14[%c8] : memref<16xf16>
        %274 = bufferization.to_memref %9 : memref<14x7x7xi1>
        %275 = arith.mulf %cst_2, %cst_3 : f16
        %276 = math.powf %11, %11 : tensor<8xf32>
        %277 = index.maxu %c3, %60
        %278 = index.maxs %124, %c11
        %279 = vector.create_mask %67, %c2, %261 : vector<14x7x7xi1>
        %from_elements_51 = tensor.from_elements %35, %c-13633_i16, %c-13633_i16, %35, %c-13633_i16, %c-13633_i16, %c-13633_i16, %35 : tensor<8xi16>
        %c698879550_i64 = arith.constant 698879550 : i64
        %280 = index.maxs %c9, %c0
        %281 = tensor.empty() : tensor<16x8xf16>
        %282 = tensor.empty() : tensor<14x8xf16>
        %283 = linalg.matmul ins(%10, %281 : tensor<14x16xf16>, tensor<16x8xf16>) outs(%282 : tensor<14x8xf16>) -> tensor<14x8xf16>
        %cst_52 = arith.constant 0x4D8F49D5 : f32
        %284 = vector.broadcast %true_4 : i1 to vector<16x16xi1>
        %285 = vector.outerproduct %19, %61, %284 {kind = #vector.kind<minui>} : vector<16xi1>, vector<16xi1>
        %286 = vector.broadcast %extracted_32 : i1 to vector<7x7xi1>
        %287 = vector.insert %286, %279 [6] : vector<7x7xi1> into vector<14x7x7xi1>
        %288 = arith.divui %c873602045_i32, %c528530600_i32 : i32
        %289 = math.rsqrt %93 : f16
        %290 = math.exp2 %from_elements_33 : tensor<14x16xf16>
        %291 = math.floor %16 : tensor<14x7x7xf32>
        %292 = index.mul %c9, %c10
        %293 = math.log %11 : tensor<8xf32>
        %294 = vector.splat %in : vector<14x16xi1>
        %295 = arith.divui %true, %false_29 : i1
        %296 = memref.atomic_rmw assign %cst_2, %alloc_7[%c3, %c0, %c0] : (f16, memref<14x7x7xf16>) -> f16
        %297 = math.roundeven %11 : tensor<8xf32>
        %298 = vector.broadcast %extracted : f32 to vector<14xf32>
        %299 = vector.broadcast %false_29 : i1 to vector<14xi1>
        %300 = vector.maskedload %alloc_21[%c2], %299, %298 : memref<14xf32>, vector<14xi1>, vector<14xf32> into vector<14xf32>
        %301 = memref.atomic_rmw minu %c-13633_i16, %alloc_8[%c13] : (i16, memref<16xi16>) -> i16
        %302 = bufferization.clone %alloc_8 : memref<16xi16> to memref<16xi16>
        %303 = vector.load %alloc_6[%c13] : memref<16xf16>, vector<14x16xf16>
        linalg.yield %extracted_32 : i1
      } -> tensor<14x7x7xi1>
      %263 = affine.for %arg3 = 0 to 26 iter_args(%arg4 = %43) -> (vector<8xf32>) {
        affine.yield %182 : vector<8xf32>
      }
      %264 = arith.divsi %c1711146161_i64, %c958695536_i64 : i64
      %265 = arith.addi %35, %c-13633_i16 : i16
      %266 = math.fpowi %13, %0 : tensor<8xf32>, tensor<8xi32>
      %267 = bufferization.to_memref %from_elements : memref<14x7x7xi32>
      bufferization.dealloc_tensor %10 : tensor<14x16xf16>
      %268 = index.ceildivu %60, %64
      %269 = math.log10 %cst_2 : f16
      scf.yield
    }
    %189 = arith.divf %cst, %93 : f16
    %190 = math.log %2 : tensor<8xf16>
    %alloc_42 = memref.alloc() : memref<7x14xi1>
    %191 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_42, %alloc_42 : memref<7x14xi1>, memref<7x14xi1>) outs(%9 : tensor<14x7x7xi1>) {
    ^bb0(%in: i1, %in_49: i1, %out: i1):
      %255 = arith.ceildivsi %c979846887_i32, %c873602045_i32 : i32
      %256 = vector.multi_reduction <minsi>, %61, %61 [] : vector<16xi1> to vector<16xi1>
      %257 = memref.atomic_rmw mulf %cst, %49[%c9, %c8] : (f16, memref<14x16xf16>) -> f16
      scf.index_switch %c2 
      case 1 {
        %279 = arith.cmpf true, %172, %cst_26 : f32
        %280 = math.tanh %cst_1 : f16
        %c449499678_i32 = arith.constant 449499678 : i32
        %281 = vector.create_mask %c4 : vector<16xi1>
        %282 = math.cttz %out : i1
        %283 = arith.remsi %c1711146161_i64, %c1503914008_i64 : i64
        %284 = math.log %collapsed : tensor<98x7xf32>
        %285 = arith.minui %c528530600_i32, %c1005429591_i32 : i32
        %286 = vector.broadcast %extracted_32 : i1 to vector<6xi1>
        %dest_53, %accumulated_value_54 = vector.scan <minui>, %59, %286 {inclusive = false, reduction_dim = 1 : i64} : vector<6x16xi1>, vector<6xi1>
        %287 = math.powf %20, %21 : tensor<f16>
        %288 = math.exp %7 : tensor<16xf16>
        vector.print %61 : vector<16xi1>
        %289 = index.ceildivu %114, %37
        memref.copy %139, %alloc_22 : memref<16xf16> to memref<16xf16>
        %290 = vector.splat %in : vector<16xi1>
        %291 = math.sqrt %21 : tensor<f16>
        scf.yield
      }
      case 2 {
        affine.store %in_49, %alloc_16[%c2, %c13, %c5] : memref<14x7x7xi1>
        %279 = math.fpowi %14, %82 : tensor<16xf32>, tensor<16xi32>
        %280 = math.absf %cst_3 : f16
        %281 = math.log2 %7 : tensor<16xf16>
        %282 = math.exp2 %10 : tensor<14x16xf16>
        %283 = index.maxs %92, %c14
        %284 = arith.shrui %c979846887_i32, %c873602045_i32 : i32
        %285 = math.absi %true : i1
        %286 = index.maxs %c12, %c6
        %dest_53, %accumulated_value_54 = vector.scan <or>, %25, %56 {inclusive = true, reduction_dim = 0 : i64} : vector<14x16xi1>, vector<16xi1>
        %287 = math.round %7 : tensor<16xf16>
        %288 = arith.divsi %c1711146161_i64, %c1711146161_i64 : i64
        %289 = arith.maxsi %extracted_32, %in : i1
        %290 = math.roundeven %7 : tensor<16xf16>
        %291 = arith.minui %c1005429591_i32, %c979846887_i32 : i32
        %292 = affine.load %alloc_12[%c5, %c8, %c10] : memref<14x7x7xi1>
        scf.yield
      }
      case 3 {
        %279 = math.cos %cst_26 : f32
        %280 = arith.subi %extracted_32, %false : i1
        %inserted_53 = tensor.insert %c979846887_i32 into %0[%c7] : tensor<8xi32>
        %281 = arith.divsi %out, %in : i1
        %alloc_54 = memref.alloc() : memref<8xf32>
        memref.copy %alloc_17, %alloc_54 : memref<8xf32> to memref<8xf32>
        %282 = vector.broadcast %extracted : f32 to vector<14x7x7xf32>
        %283 = vector.fma %282, %171, %171 : vector<14x7x7xf32>
        %284 = math.atan %17 : tensor<14x7x7xf32>
        %285 = arith.divf %cst_2, %cst_1 : f16
        %false_55 = index.bool.constant false
        %286 = arith.minui %c1711146161_i64, %c1711146161_i64 : i64
        %cast_56 = tensor.cast %8 : tensor<8xf32> to tensor<?xf32>
        %287 = affine.min affine_map<(d0, d1, d2, d3) -> (-((-d3) ceildiv 2), d3, d2)>(%22, %117, %67, %c5)
        %288 = arith.divui %c-13633_i16, %c-13633_i16 : i16
        %289 = math.cos %13 : tensor<8xf32>
        %290 = arith.remsi %c528530600_i32, %c528530600_i32 : i32
        %291 = arith.minui %false, %false_29 : i1
        scf.yield
      }
      case 4 {
        memref.copy %alloc_14, %alloc_22 : memref<16xf16> to memref<16xf16>
        %279 = arith.divui %out, %false : i1
        %280 = arith.xori %out, %149 : i1
        %281 = arith.divui %false_29, %true : i1
        %282 = index.maxu %c0, %92
        %283 = index.add %c1, %c8
        %284 = math.log1p %21 : tensor<f16>
        %false_53 = arith.constant false
        %285 = math.fma %from_elements_33, %from_elements_33, %10 : tensor<14x16xf16>
        %286 = index.casts %67 : index to i32
        %expanded = tensor.expand_shape %12 [[0, 1]] : tensor<16xf16> into tensor<16x1xf16>
        %287 = vector.broadcast %out : i1 to vector<6xi1>
        %dest_54, %accumulated_value_55 = vector.scan <or>, %59, %287 {inclusive = false, reduction_dim = 1 : i64} : vector<6x16xi1>, vector<6xi1>
        %288 = vector.extract %25[10] : vector<14x16xi1>
        %289 = index.ceildivu %c6, %c0
        %dest_56, %accumulated_value_57 = vector.scan <minui>, %25, %56 {inclusive = true, reduction_dim = 0 : i64} : vector<14x16xi1>, vector<16xi1>
        %290 = index.maxu %114, %124
        scf.yield
      }
      default {
        %279 = math.exp2 %14 : tensor<16xf32>
        %280 = math.log1p %5 : tensor<14x16xf32>
        %from_elements_53 = tensor.from_elements %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64 : tensor<16xi64>
        %281 = math.cos %7 : tensor<16xf16>
        %282 = math.log10 %cst_3 : f16
        %283 = math.sqrt %12 : tensor<16xf16>
        %284 = math.absf %from_elements_33 : tensor<14x16xf16>
        %285 = arith.shrui %c979846887_i32, %c979846887_i32 : i32
        %286 = arith.mulf %cst_3, %cst : f16
        %287 = vector.multi_reduction <mul>, %182, %182 [] : vector<8xf32> to vector<8xf32>
        %288 = vector.broadcast %22 : index to vector<16xindex>
        %289 = vector.broadcast %extracted : f32 to vector<16xf32>
        vector.scatter %162[%c3, %c0, %c1] [%288], %61, %289 : memref<14x7x7xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
        %290 = vector.load %alloc_14[%c1] : memref<16xf16>, vector<14x7x7xf16>
        vector.print %56 : vector<16xi1>
        vector.print %19 : vector<16xi1>
        %alloca = memref.alloca() : memref<16xi16>
        %291 = math.sqrt %3 : tensor<14x7x7xf32>
      }
      %258 = arith.minui %true, %extracted_32 : i1
      %259 = vector.bitcast %32 : vector<8xi16> to vector<8xi16>
      %260 = index.castu %c1005429591_i32 : i32 to index
      vector.print %25 : vector<14x16xi1>
      %261 = math.expm1 %13 : tensor<8xf32>
      memref.copy %alloc_20, %alloc_22 : memref<16xf16> to memref<16xf16>
      %cast_50 = tensor.cast %4 : tensor<8xi1> to tensor<?xi1>
      %c1754042571_i32 = arith.constant 1754042571 : i32
      %262 = index.mul %c14, %c3
      %cast_51 = tensor.cast %10 : tensor<14x16xf16> to tensor<?x?xf16>
      %263 = math.exp %3 : tensor<14x7x7xf32>
      vector.print %98 : vector<4xi1>
      %false_52 = index.bool.constant false
      vector.print %56 : vector<16xi1>
      %264 = index.floordivs %c9, %c4
      %265 = affine.load %alloc_8[%c0] : memref<16xi16>
      %266 = math.atan %cst : f16
      %267 = vector.broadcast %cst_26 : f32 to vector<14x16xf32>
      %268 = vector.fma %267, %267, %267 : vector<14x16xf32>
      %269 = vector.load %162[%c3, %c5, %c0] : memref<14x7x7xf32>, vector<8xf32>
      %270 = math.exp2 %17 : tensor<14x7x7xf32>
      %271 = vector.flat_transpose %173 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
      %272 = arith.shli %c873602045_i32, %c979846887_i32 : i32
      %273 = math.log2 %cst_3 : f16
      %274 = scf.execute_region -> tensor<14x7x7xi32> {
        %rank = tensor.rank %11 : tensor<8xf32>
        %rank_53 = tensor.rank %16 : tensor<14x7x7xf32>
        %279 = index.mul %c1, %124
        %280 = math.absi %c1711146161_i64 : i64
        memref.copy %alloc_13, %alloc_7 : memref<14x7x7xf16> to memref<14x7x7xf16>
        %281 = math.exp2 %93 : f16
        %282 = arith.remf %172, %cst_26 : f32
        %false_54 = index.bool.constant false
        %283 = math.exp2 %12 : tensor<16xf16>
        %alloc_55 = memref.alloc() : memref<14x16xi16>
        %284 = vector.extract %32[0] : vector<8xi16>
        %285 = index.castu %35 : i16 to index
        %inserted_56 = tensor.insert %cst_2 into %21[] : tensor<f16>
        %286 = arith.ori %c1711146161_i64, %c1503914008_i64 : i64
        %287 = index.maxs %rank, %279
        %288 = math.rsqrt %93 : f16
        scf.yield %from_elements : tensor<14x7x7xi32>
      }
      %275 = arith.maxf %65, %cst : f16
      %276 = arith.floordivsi %false_34, %true : i1
      %277 = arith.divf %cst_1, %cst_0 : f16
      %278 = math.expm1 %12 : tensor<16xf16>
      linalg.yield %false_34 : i1
    } -> tensor<14x7x7xi1>
    %192 = affine.load %188[%c3] : memref<16xi1>
    %193 = arith.floordivsi %c528530600_i32, %c979846887_i32 : i32
    %194 = arith.subi %c1711146161_i64, %c1711146161_i64 : i64
    %195 = math.atan2 %5, %5 : tensor<14x16xf32>
    %196 = index.castu %124 : index to i32
    %197 = index.mul %67, %53
    %198 = arith.addi %c1711146161_i64, %c958695536_i64 : i64
    %199 = affine.min affine_map<(d0, d1) -> ((-d0) ceildiv 32 - 32)>(%c4, %92)
    %200 = vector.broadcast %199 : index to vector<16xindex>
    vector.scatter %alloc_22[%c13] [%200], %19, %168 : memref<16xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
    %false_43 = index.bool.constant false
    %201 = arith.remf %extracted, %extracted : f32
    %202 = vector.transpose %106, [0, 1] : vector<4x16xi1> to vector<4x16xi1>
    %from_elements_44 = tensor.from_elements %65, %cst_2, %cst, %cst_0, %cst_0, %cst_1, %cst, %cst_1, %cst_2, %cst_2, %cst_2, %93, %65, %cst_2, %cst, %cst_1, %65, %cst, %cst_1, %65, %cst_1, %cst_2, %cst_3, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst, %cst, %cst_2, %65, %cst_2, %cst, %93, %cst_1, %cst_2, %cst_1, %cst_3, %65, %cst_0, %cst_1, %cst_0, %93, %cst_2, %cst_1, %65, %cst_2, %cst_3, %cst_2, %cst, %cst_0, %cst_3, %cst_2, %cst_2, %cst_3, %cst_1, %cst, %cst_2, %cst_1, %93, %93, %65, %cst_0, %cst, %cst_3, %cst, %cst_2, %cst_0, %cst_0, %cst_1, %65, %93, %cst_2, %cst_0, %cst_1, %93, %cst_3, %cst, %cst_1, %cst, %93, %cst_3, %93, %cst_0, %cst_2, %cst, %cst, %65, %cst_3, %cst_0, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %65, %cst, %cst, %93, %65, %cst_0, %cst_0, %cst_3, %cst_3, %cst, %cst_1, %cst_0, %cst, %cst_2, %cst_3, %cst_0, %cst, %cst_0, %cst, %cst_2, %cst_0, %cst, %93, %cst_3, %cst_2, %cst_3, %cst, %cst_3, %cst_2, %cst_2, %cst, %93, %93, %93, %cst_0, %cst_3, %cst_2, %93, %cst_0, %93, %cst_0, %cst_0, %cst_1, %cst_2, %93, %cst_2, %cst_3, %cst_1, %cst_1, %cst_2, %65, %cst_3, %cst_0, %cst_3, %93, %cst, %cst_1, %cst, %cst, %93, %cst, %cst_1, %65, %cst_0, %cst, %cst, %cst_1, %cst, %cst, %cst_2, %cst_2, %93, %65, %65, %cst_0, %cst_3, %93, %cst_0, %65, %65, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst, %cst_3, %65, %cst_1, %cst_0, %93, %65, %65, %cst_2, %cst_0, %cst_1, %93, %cst, %cst_1, %cst_0, %cst_0, %65, %cst_2, %cst_1, %cst_1, %93, %93, %cst, %cst_0, %65, %93, %cst_3, %cst_3, %93, %cst, %65, %65, %cst_2, %cst_0, %cst, %65, %65, %cst_3, %93, %cst_2, %cst_3, %cst_2, %cst_3, %cst_0, %cst_3, %cst_2, %cst, %93, %cst_3, %cst_2, %cst_3, %cst_3, %65, %cst_2, %93, %cst_0, %93, %93, %cst_0, %cst_1, %cst, %cst, %cst_1, %cst, %cst_3, %cst_1, %cst_3, %cst, %cst, %cst_1, %cst_3, %cst_1, %cst_2, %cst_3, %cst_1, %cst_0, %cst_1, %cst_1, %65, %65, %93, %cst_2, %65, %cst_2, %cst_1, %cst, %cst_0, %cst_3, %93, %cst_1, %cst_2, %cst_2, %93, %cst, %cst, %93, %cst_0, %cst, %cst, %93, %cst_3, %cst_3, %cst, %cst_2, %cst_1, %93, %93, %93, %cst, %cst_3, %cst, %93, %cst_0, %cst_1, %93, %65, %93, %cst_3, %cst_1, %cst, %65, %65, %cst, %93, %93, %93, %cst_3, %93, %cst_1, %cst_0, %cst_3, %93, %cst_1, %cst_3, %cst, %cst_1, %cst_2, %cst_3, %cst_3, %93, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_2, %cst_3, %cst_3, %cst_1, %cst, %65, %cst_2, %cst_1, %cst_2, %cst_0, %cst_2, %cst_3, %cst_1, %cst, %cst, %cst_3, %cst, %65, %cst_2, %93, %cst_0, %93, %cst_2, %cst_0, %cst_0, %cst_3, %cst_2, %cst, %cst_0, %cst, %cst_2, %93, %cst, %cst_2, %93, %93, %cst, %65, %cst_3, %cst_1, %cst_1, %cst_2, %93, %cst, %cst_1, %cst_2, %93, %cst_1, %cst_0, %cst_1, %cst, %cst_3, %cst_2, %65, %cst_0, %cst_1, %cst, %65, %65, %cst, %cst, %65, %cst_0, %93, %93, %65, %93, %cst_0, %cst_3, %93, %cst_1, %65, %cst_0, %cst_1, %cst_1, %93, %cst_2, %cst_0, %cst, %cst_3, %93, %cst, %cst_2, %cst_2, %65, %cst_3, %cst, %cst_3, %65, %93, %65, %cst_1, %65, %cst_2, %cst_3, %cst_3, %93, %cst_1, %cst_0, %cst_1, %cst_2, %cst_3, %cst_2, %65, %cst_1, %cst, %cst_1, %cst, %cst_3, %cst_0, %cst_0, %93, %cst, %cst, %cst_1, %cst, %65, %cst_1, %cst_1, %cst_0, %cst, %cst_1, %cst_3, %65, %65, %cst_1, %cst_1, %cst_2, %65, %93, %cst_2, %cst_2, %65, %cst_2, %93, %65, %cst, %cst_0, %cst_0, %cst_2, %cst_3, %65, %cst_2, %cst_3, %cst_1, %cst_2, %cst_3, %93, %93, %cst_2, %65, %cst_0, %cst_1, %cst_1, %cst, %cst_0, %cst_1, %65, %cst_0, %cst_1, %cst_3, %93, %cst_0, %65, %cst_1, %65, %65, %93, %cst_0, %65, %cst_0, %cst_2, %cst_1, %65, %cst_2, %cst_3, %cst_1, %cst, %cst_0, %cst_1, %93, %93, %65, %cst, %cst_2, %cst_3, %93, %cst_0, %cst_1, %cst_2, %cst_2, %cst_0, %65, %cst_1, %65, %cst_3, %cst_2, %cst_3, %cst_1, %93, %cst_2, %cst_0, %65, %cst_3, %65, %cst_0, %cst_0, %cst_1, %cst_0, %cst, %cst, %cst, %cst, %65, %65, %93, %cst, %cst_3, %65, %cst, %cst_1, %cst_3, %cst, %cst_3, %cst_2, %93, %65, %93, %93, %cst_0, %cst, %cst_3, %93, %cst_1, %cst_1, %93, %cst_0, %cst_3, %cst, %93, %65, %cst, %cst_1, %cst, %cst_0, %cst_0, %cst_2, %cst, %cst_1, %cst_2, %65, %cst_1, %cst_3, %cst_3, %cst_3, %65, %cst_1, %cst_1, %93, %93, %cst_1, %cst, %cst_2, %cst, %93, %cst_3, %cst_1, %65, %cst_0, %cst_0, %cst_2, %93, %cst_1, %cst_3, %cst, %93, %93, %93, %cst_3, %65, %cst_3, %65, %93, %65, %65, %cst, %93, %cst_3, %cst_0, %cst_2, %cst, %65, %cst_1, %93, %cst_0, %65, %cst, %65, %cst_0, %cst_0, %65, %cst_0, %cst_1, %65, %cst_1, %93, %93, %cst_1, %65, %cst_3, %cst_2, %cst_2, %cst, %cst_0, %cst_0, %cst_1, %cst, %cst, %93, %93, %cst_3, %cst_0, %cst_0, %cst, %cst_2, %cst_1, %65, %cst_3, %cst_1, %cst, %cst_1, %cst_3, %93, %65, %cst, %65, %cst_3, %cst_3, %cst_3, %cst_2, %cst, %cst_0, %cst_1, %cst_2, %cst_2, %cst_2, %cst, %cst, %65, %cst_0, %93, %cst_1, %cst_2, %cst_3, %cst_0, %93, %cst_2, %cst_1, %cst_3, %93 : tensor<14x7x7xf16>
    %203 = vector.extract_strided_slice %59 {offsets = [3], sizes = [2], strides = [1]} : vector<6x16xi1> to vector<2x16xi1>
    %204 = arith.minf %cst, %65 : f16
    %205 = affine.min affine_map<(d0, d1) -> ((d1 mod 8) ceildiv 32)>(%c8, %c0)
    %generated = tensor.generate %c5 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %255 = arith.remui %149, %true : i1
      %256 = math.powf %cst_2, %93 : f16
      %257 = vector.extract %59[1] : vector<6x16xi1>
      %258 = arith.floordivsi %c873602045_i32, %c979846887_i32 : i32
      tensor.yield %c-13633_i16 : i16
    } : tensor<?x7x7xi16>
    %206 = math.exp2 %11 : tensor<8xf32>
    %207 = vector.splat %c1 : vector<14x16xindex>
    %208 = math.log1p %17 : tensor<14x7x7xf32>
    %209 = index.ceildivu %37, %53
    %210 = math.log %13 : tensor<8xf32>
    %211 = math.sqrt %cst_1 : f16
    %212 = math.log %10 : tensor<14x16xf16>
    %cast_45 = tensor.cast %20 : tensor<f16> to tensor<f16>
    %collapsed_46 = tensor.collapse_shape %10 [[0, 1]] : tensor<14x16xf16> into tensor<224xf16>
    %213 = arith.xori %c1005429591_i32, %c979846887_i32 : i32
    %214 = affine.min affine_map<(d0, d1) -> (d1 + 128, d0, -(d0 + 1), d1 mod 64)>(%51, %c4)
    %215 = math.cos %172 : f32
    affine.for %arg3 = 0 to 21 {
    }
    %216 = memref.load %alloc_6[%c8] : memref<16xf16>
    %217 = memref.alloca_scope  -> (memref<14x16xi64>) {
      %255 = index.maxs %c7, %37
      %alloc_49 = memref.alloc() : memref<16x16xf16>
      %256 = tensor.empty() : tensor<14x16xf16>
      %257 = linalg.matmul ins(%10, %alloc_49 : tensor<14x16xf16>, memref<16x16xf16>) outs(%256 : tensor<14x16xf16>) -> tensor<14x16xf16>
      %258 = vector.shuffle %19, %98 [2, 6, 9, 11, 12, 14, 15, 16, 17] : vector<16xi1>, vector<4xi1>
      %259 = math.round %collapsed_46 : tensor<224xf16>
      %260 = vector.load %188[%c12] : memref<16xi1>, vector<14x16xi1>
      %false_50 = index.bool.constant false
      %261 = tensor.empty() : tensor<14x7xi1>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%261 : tensor<14x7xi1>) outs(%9 : tensor<14x7x7xi1>) {
      ^bb0(%in: i1, %out: i1):
        %rank = tensor.rank %0 : tensor<8xi32>
        %281 = math.tanh %12 : tensor<16xf16>
        %alloc_55 = memref.alloc() : memref<14x16xi16>
        %282 = affine.min affine_map<(d0, d1, d2, d3) -> (-((d1 floordiv 2) * 64 - d3), d3 floordiv 4, d1)>(%53, %c15, %22, %67)
        %283 = bufferization.clone %alloc_15 : memref<14x7x7xf16> to memref<14x7x7xf16>
        %284 = index.sizeof
        %285 = vector.broadcast %extracted : f32 to vector<7x7xf32>
        %286 = vector.insert %285, %171 [5] : vector<7x7xf32> into vector<14x7x7xf32>
        %287 = math.ctlz %false_29 : i1
        %288 = math.expm1 %3 : tensor<14x7x7xf32>
        %289 = vector.extract_strided_slice %59 {offsets = [2], sizes = [3], strides = [1]} : vector<6x16xi1> to vector<3x16xi1>
        affine.store %35, %alloc_8[%c5] : memref<16xi16>
        %290 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c9, %c11, %c7)
        %291 = memref.atomic_rmw minf %65, %137[%c5] : (f16, memref<8xf16>) -> f16
        %292 = arith.addi %c979846887_i32, %c873602045_i32 : i32
        %alloca = memref.alloca() : memref<14x7x7xi32>
        %from_elements_56 = tensor.from_elements %65, %93, %cst_3, %cst, %cst_3, %65, %cst, %65 : tensor<8xf16>
        %293 = arith.remui %c979846887_i32, %c528530600_i32 : i32
        %from_elements_57 = tensor.from_elements %extracted, %cst_26, %172, %172, %extracted, %cst_26, %extracted, %172, %172, %172, %extracted, %cst_26, %cst_26, %172, %extracted, %extracted, %172, %172, %172, %cst_26, %cst_26, %extracted, %cst_26, %extracted, %172, %extracted, %cst_26, %172, %cst_26, %extracted, %extracted, %172, %cst_26, %cst_26, %172, %172, %extracted, %cst_26, %172, %extracted, %172, %cst_26, %extracted, %extracted, %cst_26, %cst_26, %172, %cst_26, %extracted, %extracted, %extracted, %172, %extracted, %172, %172, %172, %extracted, %extracted, %cst_26, %172, %172, %cst_26, %cst_26, %172, %extracted, %extracted, %extracted, %extracted, %cst_26, %extracted, %cst_26, %172, %extracted, %extracted, %extracted, %172, %cst_26, %172, %cst_26, %extracted, %172, %extracted, %172, %extracted, %extracted, %extracted, %cst_26, %172, %cst_26, %extracted, %172, %extracted, %extracted, %172, %172, %cst_26, %cst_26, %cst_26, %extracted, %extracted, %172, %extracted, %extracted, %172, %extracted, %cst_26, %cst_26, %extracted, %extracted, %cst_26, %172, %172, %cst_26, %cst_26, %172, %cst_26, %extracted, %extracted, %extracted, %extracted, %cst_26, %cst_26, %extracted, %extracted, %cst_26, %cst_26, %cst_26, %cst_26, %extracted, %cst_26, %172, %172, %cst_26, %extracted, %extracted, %extracted, %172, %cst_26, %extracted, %extracted, %172, %172, %172, %cst_26, %cst_26, %extracted, %extracted, %cst_26, %172, %cst_26, %cst_26, %172, %cst_26, %172, %172, %extracted, %extracted, %extracted, %172, %cst_26, %extracted, %cst_26, %172, %cst_26, %172, %cst_26, %cst_26, %172, %cst_26, %extracted, %172, %extracted, %cst_26, %172, %cst_26, %172, %172, %cst_26, %cst_26, %extracted, %extracted, %172, %extracted, %172, %cst_26, %172, %172, %extracted, %extracted, %172, %cst_26, %172, %extracted, %172, %extracted, %172, %cst_26, %extracted, %cst_26, %172, %cst_26, %extracted, %172, %cst_26, %172, %cst_26, %extracted, %cst_26, %172, %extracted, %extracted, %172, %172, %172, %extracted, %extracted, %cst_26, %172, %172, %extracted, %extracted, %172, %extracted, %cst_26, %cst_26, %172, %extracted, %172, %172, %172, %172, %cst_26, %extracted, %extracted, %extracted, %cst_26, %extracted, %cst_26, %172, %extracted, %172, %172, %extracted, %cst_26, %172, %extracted, %172, %extracted, %extracted, %172, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %cst_26, %cst_26, %cst_26, %cst_26, %cst_26, %extracted, %cst_26, %extracted, %extracted, %cst_26, %172, %172, %cst_26, %extracted, %cst_26, %extracted, %172, %cst_26, %extracted, %extracted, %cst_26, %extracted, %extracted, %cst_26, %cst_26, %cst_26, %cst_26, %cst_26, %172, %172, %172, %cst_26, %cst_26, %extracted, %cst_26, %extracted, %172, %extracted, %extracted, %172, %cst_26, %extracted, %172, %172, %172, %extracted, %extracted, %cst_26, %172, %cst_26, %172, %cst_26, %extracted, %172, %172, %172, %172, %extracted, %cst_26, %extracted, %cst_26, %cst_26, %extracted, %172, %extracted, %extracted, %cst_26, %cst_26, %extracted, %172, %172, %extracted, %extracted, %cst_26, %cst_26, %cst_26, %extracted, %cst_26, %cst_26, %172, %cst_26, %172, %cst_26, %cst_26, %extracted, %extracted, %cst_26, %172, %cst_26, %extracted, %172, %cst_26, %cst_26, %extracted, %172, %cst_26, %172, %172, %172, %172, %cst_26, %172, %172, %cst_26, %extracted, %172, %172, %extracted, %extracted, %cst_26, %extracted, %cst_26, %cst_26, %172, %cst_26, %172, %cst_26, %cst_26, %172, %cst_26, %172, %cst_26, %172, %172, %extracted, %cst_26, %172, %172, %extracted, %172, %extracted, %extracted, %cst_26, %cst_26, %172, %cst_26, %172, %extracted, %extracted, %cst_26, %172, %172, %cst_26, %cst_26, %cst_26, %172, %cst_26, %172, %extracted, %cst_26, %172, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %extracted, %172, %extracted, %extracted, %extracted, %extracted, %cst_26, %extracted, %cst_26, %cst_26, %172, %172, %cst_26, %extracted, %cst_26, %cst_26, %172, %extracted, %extracted, %cst_26, %extracted, %172, %cst_26, %172, %cst_26, %extracted, %172, %extracted, %extracted, %172, %172, %cst_26, %cst_26, %extracted, %extracted, %extracted, %172, %extracted, %cst_26, %cst_26, %cst_26, %cst_26, %172, %172, %extracted, %172, %cst_26, %172, %extracted, %172, %cst_26, %cst_26, %extracted, %172, %cst_26, %extracted, %cst_26, %172, %cst_26, %extracted, %cst_26, %172, %172, %extracted, %cst_26, %172, %172, %172, %172, %172, %extracted, %cst_26, %172, %172, %172, %172, %cst_26, %extracted, %172, %172, %cst_26, %cst_26, %cst_26, %cst_26, %cst_26, %extracted, %172, %extracted, %cst_26, %extracted, %cst_26, %172, %extracted, %cst_26, %172, %extracted, %extracted, %cst_26, %cst_26, %extracted, %extracted, %172, %cst_26, %cst_26, %cst_26, %172, %extracted, %cst_26, %cst_26, %extracted, %172, %cst_26, %cst_26, %extracted, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %extracted, %172, %172, %cst_26, %172, %172, %cst_26, %172, %172, %cst_26, %172, %172, %extracted, %172, %172, %172, %cst_26, %cst_26, %cst_26, %cst_26, %extracted, %cst_26, %extracted, %cst_26, %extracted, %172, %cst_26, %172, %cst_26, %extracted, %172, %cst_26, %cst_26, %cst_26, %172, %extracted, %cst_26, %cst_26, %extracted, %172, %cst_26, %extracted, %172, %cst_26, %extracted, %172, %extracted, %extracted, %cst_26, %extracted, %extracted, %extracted, %cst_26, %extracted, %extracted, %cst_26, %extracted, %cst_26, %extracted, %172, %cst_26, %172, %extracted, %extracted, %172, %extracted, %cst_26, %172, %extracted, %extracted, %172, %cst_26, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %cst_26, %172, %extracted, %extracted, %cst_26, %172, %172, %extracted, %cst_26, %cst_26, %cst_26, %172, %172, %172, %extracted, %172, %172, %cst_26, %extracted, %172, %extracted, %extracted, %extracted, %cst_26, %extracted, %cst_26, %172, %cst_26, %extracted, %extracted, %cst_26, %extracted, %172, %extracted, %cst_26, %172, %cst_26, %extracted, %extracted, %extracted, %cst_26, %cst_26, %cst_26, %extracted, %cst_26, %extracted, %172, %172, %cst_26, %172, %extracted, %172, %cst_26, %cst_26, %172, %172, %extracted, %cst_26, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %cst_26, %cst_26, %extracted, %extracted, %cst_26, %cst_26, %cst_26, %172, %cst_26, %cst_26, %172, %cst_26, %172, %extracted, %172, %cst_26 : tensor<14x7x7xf32>
        %294 = math.absi %false_50 : i1
        %295 = index.casts %205 : index to i32
        %296 = memref.atomic_rmw assign %172, %alloc_21[%c11] : (f32, memref<14xf32>) -> f32
        %297 = vector.broadcast %c7 : index to vector<16xindex>
        vector.scatter %alloc_18[%c6] [%297], %56, %181 : memref<8xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
        %298 = math.cttz %9 : tensor<14x7x7xi1>
        %299 = vector.reduction <minui>, %61 : vector<16xi1> into i1
        %300 = index.maxu %51, %c10
        %301 = arith.minui %c1503914008_i64, %c1711146161_i64 : i64
        %alloc_58 = memref.alloc() : memref<14x16xi64>
        memref.copy %alloc_19, %alloc_58 : memref<14x16xi64> to memref<14x16xi64>
        %302 = index.maxu %117, %c12
        %303 = arith.shli %false_43, %149 : i1
        %cast_59 = tensor.cast %8 : tensor<8xf32> to tensor<?xf32>
        %304 = arith.minui %c1711146161_i64, %c1503914008_i64 : i64
        %305 = arith.maxui %c958695536_i64, %c1711146161_i64 : i64
        linalg.yield %false_43 : i1
      } -> tensor<14x7x7xi1>
      %alloc_51 = memref.alloc() : memref<14x7x7xf32>
      memref.copy %162, %alloc_51 : memref<14x7x7xf32> to memref<14x7x7xf32>
      %263 = index.add %c13, %114
      %264 = vector.shuffle %32, %32 [0, 2, 6, 7, 8, 14, 15] : vector<8xi16>, vector<8xi16>
      %265 = math.log10 %5 : tensor<14x16xf32>
      memref.copy %alloc_20, %alloc_9 : memref<16xf16> to memref<16xf16>
      %266 = vector.multi_reduction <minf>, %173, %173 [] : vector<1xf16> to vector<1xf16>
      affine.for %arg3 = 0 to 31 {
      }
      %267 = vector.shuffle %32, %32 [1, 3, 4, 6, 9, 12] : vector<8xi16>, vector<8xi16>
      %268 = index.add %124, %c15
      %269 = index.sizeof
      memref.copy %139, %alloc_14 : memref<16xf16> to memref<16xf16>
      %270 = vector.shuffle %98, %56 [1, 3, 4, 7, 8, 9, 11, 12, 14, 15, 18] : vector<4xi1>, vector<16xi1>
      vector.print %171 : vector<14x7x7xf32>
      affine.for %arg3 = 0 to 118 {
      }
      %alloc_52 = memref.alloc() : memref<14x16xf32>
      %271 = math.powf %7, %7 : tensor<16xf16>
      %272 = vector.broadcast %cst_0 : f16 to vector<14x7x7xf16>
      %273 = vector.reduction <add>, %98 : vector<4xi1> into i1
      %274 = index.maxu %c9, %199
      %275 = arith.subi %true, %false : i1
      %276 = arith.xori %c528530600_i32, %c873602045_i32 : i32
      %277 = bufferization.clone %alloc_9 : memref<16xf16> to memref<16xf16>
      %278 = math.log10 %8 : tensor<8xf32>
      %279 = math.atan %65 : f16
      %280 = vector.broadcast %149 : i1 to vector<2xi1>
      %dest_53, %accumulated_value_54 = vector.scan <minsi>, %203, %280 {inclusive = true, reduction_dim = 1 : i64} : vector<2x16xi1>, vector<2xi1>
      memref.alloca_scope.return %alloc_19 : memref<14x16xi64>
    }
    %218 = vector.extract_strided_slice %140 {offsets = [4], sizes = [5], strides = [1]} : vector<14x16xf16> to vector<5x16xf16>
    %219 = arith.maxf %extracted, %cst_26 : f32
    %220 = vector.extract_strided_slice %140 {offsets = [9], sizes = [3], strides = [1]} : vector<14x16xf16> to vector<3x16xf16>
    %221 = math.expm1 %cst_3 : f16
    %222 = bufferization.to_memref %3 : memref<14x7x7xf32>
    %223 = arith.divsi %c873602045_i32, %c528530600_i32 : i32
    %224 = vector.broadcast %false_43 : i1 to vector<16x16xi1>
    %225 = vector.outerproduct %19, %19, %224 {kind = #vector.kind<or>} : vector<16xi1>, vector<16xi1>
    %alloc_47 = memref.alloc() : memref<7xi1>
    %226 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%9, %alloc_47 : tensor<14x7x7xi1>, memref<7xi1>) outs(%9 : tensor<14x7x7xi1>) {
    ^bb0(%in: i1, %in_49: i1, %out: i1):
      %255 = scf.while (%arg3 = %c1711146161_i64) : (i64) -> i64 {
        %285 = vector.extract_strided_slice %220 {offsets = [0], sizes = [2], strides = [1]} : vector<3x16xf16> to vector<2x16xf16>
        %286 = arith.divui %c528530600_i32, %c873602045_i32 : i32
        %287 = arith.addf %cst_3, %cst_1 : f16
        %288 = vector.transpose %168, [0] : vector<16xf16> to vector<16xf16>
        %289 = math.ctpop %c1005429591_i32 : i32
        %290 = math.round %cst_3 : f16
        %291 = index.divs %c9, %c10
        %292 = arith.floordivsi %c528530600_i32, %c1005429591_i32 : i32
        scf.condition(%149) %c958695536_i64 : i64
      } do {
      ^bb0(%arg3: i64):
        %from_elements_54 = tensor.from_elements %c979846887_i32, %c528530600_i32, %c528530600_i32, %c873602045_i32, %c1005429591_i32, %c979846887_i32, %c1005429591_i32, %c1005429591_i32, %c528530600_i32, %c1005429591_i32, %c1005429591_i32, %c1005429591_i32, %c979846887_i32, %c528530600_i32, %c1005429591_i32, %c873602045_i32 : tensor<16xi32>
        %285 = vector.broadcast %35 : i16 to vector<16xi16>
        %286 = math.log2 %172 : f32
        %287 = vector.multi_reduction <add>, %122, %122 [] : vector<8xf16> to vector<8xf16>
        %288 = arith.cmpf ueq, %cst_1, %cst_0 : f16
        %289 = arith.negf %172 : f32
        %290 = arith.shli %true_4, %false : i1
        %291 = vector.create_mask %c1, %c13 : vector<14x16xi1>
        %c2018914861_i32 = arith.constant 2018914861 : i32
        %292 = arith.subi %false_34, %out : i1
        %293 = index.add %c4, %152
        %294 = arith.divsi %false_29, %false : i1
        %295 = vector.multi_reduction <and>, %56, %19 [] : vector<16xi1> to vector<16xi1>
        %296 = index.divs %c14, %205
        %c712662370_i32 = arith.constant 712662370 : i32
        %297 = math.exp %8 : tensor<8xf32>
        scf.yield %arg3 : i64
      }
      %c32 = arith.constant 32 : index
      %inserted_50 = tensor.insert %cst into %collapsed_46[%c32] : tensor<224xf16>
      %256 = arith.remf %cst, %65 : f16
      %257 = math.atan %13 : tensor<8xf32>
      %258 = arith.subi %c958695536_i64, %c958695536_i64 : i64
      %259 = vector.broadcast %c1005429591_i32 : i32 to vector<8xi32>
      %260 = vector.broadcast %out : i1 to vector<8xi1>
      %261 = vector.gather %82[%67] [%259], %260, %259 : tensor<16xi32>, vector<8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
      %262 = math.powf %cst_1, %cst_0 : f16
      %263 = arith.divf %cst_1, %cst_0 : f16
      %264 = vector.broadcast %c528530600_i32 : i32 to vector<8x8xi32>
      %265 = vector.outerproduct %259, %261, %264 {kind = #vector.kind<xor>} : vector<8xi32>, vector<8xi32>
      %266 = arith.remsi %false, %false_43 : i1
      %267 = arith.remf %cst, %cst : f16
      %true_51 = arith.constant true
      vector.print %173 : vector<1xf16>
      %268 = math.atan %5 : tensor<14x16xf32>
      %269 = math.ctpop %true_4 : i1
      %270 = math.expm1 %65 : f16
      %271 = math.atan2 %7, %7 : tensor<16xf16>
      %inserted_52 = tensor.insert %c-13633_i16 into %generated[%c0, %c6, %c5] : tensor<?x7x7xi16>
      %272 = math.ctpop %in_49 : i1
      %273 = vector.transpose %32, [0] : vector<8xi16> to vector<8xi16>
      %274 = vector.shuffle %98, %19 [1, 5, 9, 10, 11, 13, 17, 19] : vector<4xi1>, vector<16xi1>
      %275 = index.maxu %60, %209
      %276 = math.ctlz %true : i1
      %277 = arith.remsi %c-13633_i16, %c-13633_i16 : i16
      %278 = math.expm1 %cst_3 : f16
      %279 = arith.minui %c528530600_i32, %c528530600_i32 : i32
      %280 = bufferization.to_memref %collapsed : memref<98x7xf32>
      %281 = vector.bitcast %181 : vector<16xf16> to vector<16xf16>
      %alloc_53 = memref.alloc() : memref<14x16xi64>
      %282 = arith.shrsi %c958695536_i64, %c1711146161_i64 : i64
      %283 = vector.extract_strided_slice %25 {offsets = [1], sizes = [4], strides = [1]} : vector<14x16xi1> to vector<4x16xi1>
      %284 = math.cos %11 : tensor<8xf32>
      linalg.yield %false_34 : i1
    } -> tensor<14x7x7xi1>
    %227 = math.fma %2, %2, %2 : tensor<8xf16>
    %228 = math.log %13 : tensor<8xf32>
    %229 = arith.maxf %extracted, %extracted : f32
    memref.alloca_scope  {
      %255 = vector.insertelement %false_34, %19[%64 : index] : vector<16xi1>
      %false_49 = index.bool.constant false
      vector.print %25 : vector<14x16xi1>
      %256 = arith.xori %149, %extracted_32 : i1
      %257 = affine.if affine_set<(d0, d1, d2) : (d1 >= 0)>(%c1, %c4, %c13) -> memref<8xi32> {
        %281 = arith.shli %false, %149 : i1
        %282 = arith.cmpi sge, %c1503914008_i64, %c958695536_i64 : i64
        %from_elements_54 = tensor.from_elements %extracted, %extracted, %cst_26, %cst_26, %cst_26, %172, %extracted, %extracted, %172, %cst_26, %extracted, %172, %extracted, %172, %172, %172, %extracted, %172, %172, %extracted, %cst_26, %cst_26, %cst_26, %cst_26, %172, %cst_26, %172, %extracted, %extracted, %extracted, %172, %extracted, %172, %cst_26, %172, %extracted, %cst_26, %172, %cst_26, %extracted, %extracted, %cst_26, %cst_26, %cst_26, %cst_26, %cst_26, %cst_26, %172, %cst_26, %extracted, %cst_26, %extracted, %172, %172, %extracted, %cst_26, %extracted, %extracted, %cst_26, %cst_26, %172, %172, %172, %172, %cst_26, %172, %cst_26, %cst_26, %cst_26, %cst_26, %cst_26, %extracted, %cst_26, %cst_26, %cst_26, %172, %172, %extracted, %cst_26, %cst_26, %cst_26, %extracted, %cst_26, %172, %cst_26, %extracted, %172, %172, %cst_26, %172, %cst_26, %cst_26, %extracted, %extracted, %cst_26, %extracted, %extracted, %extracted, %172, %extracted, %172, %172, %172, %extracted, %172, %172, %172, %cst_26, %cst_26, %cst_26, %extracted, %172, %172, %172, %cst_26, %172, %cst_26, %extracted, %172, %extracted, %172, %extracted, %172, %cst_26, %172, %172, %cst_26, %172, %cst_26, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %172, %172, %172, %172, %extracted, %172, %172, %172, %cst_26, %172, %cst_26, %172, %172, %172, %extracted, %cst_26, %172, %172, %172, %extracted, %extracted, %172, %extracted, %cst_26, %extracted, %172, %cst_26, %cst_26, %cst_26, %extracted, %cst_26, %extracted, %172, %172, %172, %172, %172, %172, %172, %172, %extracted, %172, %172, %extracted, %cst_26, %cst_26, %172, %172, %172, %extracted, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %172, %cst_26, %extracted, %172, %172, %cst_26, %extracted, %172, %extracted, %cst_26, %extracted, %cst_26, %cst_26, %172, %172, %172, %cst_26, %cst_26, %cst_26, %extracted, %cst_26, %172, %172, %172, %172, %172, %172, %172, %cst_26, %extracted, %cst_26, %extracted, %extracted, %cst_26, %extracted : tensor<14x16xf32>
        %283 = arith.andi %c-13633_i16, %35 : i16
        %284 = math.rsqrt %from_elements_54 : tensor<14x16xf32>
        %285 = arith.shrsi %false_49, %149 : i1
        %286 = index.casts %192 : i1 to index
        %287 = affine.apply affine_map<(d0, d1, d2) -> (-(d0 - 64))>(%c5, %c0, %64)
        %alloc_55 = memref.alloc() : memref<8xi32>
        affine.yield %alloc_55 : memref<8xi32>
      } else {
        %281 = math.tan %from_elements_44 : tensor<14x7x7xf16>
        %282 = index.divs %c12, %92
        %283 = index.add %60, %c3
        %284 = math.log %cst_1 : f16
        %285 = vector.reduction <mul>, %43 : vector<8xf32> into f32
        %286 = math.absi %35 : i16
        %287 = math.fma %cst_26, %cst_26, %cst_26 : f32
        %288 = index.add %60, %c2
        %alloc_54 = memref.alloc() : memref<8xi32>
        affine.yield %alloc_54 : memref<8xi32>
      }
      %alloc_50 = memref.alloc() : memref<14x7x7xi32>
      %true_51 = index.bool.constant true
      %258 = arith.minui %false_29, %false_43 : i1
      %259 = index.sizeof
      scf.if %149 {
        %281 = index.divs %c7, %155
        %282 = math.absf %collapsed : tensor<98x7xf32>
        %283 = affine.min affine_map<(d0, d1, d2) -> (0)>(%92, %67, %c6)
        %284 = affine.apply affine_map<(d0) -> (d0 ceildiv 128)>(%c9)
        %285 = math.absf %12 : tensor<16xf16>
        %286 = vector.load %alloc_21[%c1] : memref<14xf32>, vector<8xf32>
        %287 = index.maxu %284, %22
        %288 = vector.load %alloc_19[%c10, %c14] : memref<14x16xi64>, vector<14x7x7xi64>
      } else {
        %281 = arith.addi %c-13633_i16, %35 : i16
        %282 = math.floor %65 : f16
        %283 = math.ceil %14 : tensor<16xf32>
        %284 = index.sizeof
        %285 = vector.splat %93 : vector<16xf16>
        %286 = math.absf %from_elements_33 : tensor<14x16xf16>
        %287 = math.sqrt %collapsed_46 : tensor<224xf16>
        %288 = index.maxs %209, %53
      }
      %260 = arith.divui %c958695536_i64, %c1711146161_i64 : i64
      %261 = arith.ori %true_4, %false_49 : i1
      %262 = math.cos %20 : tensor<f16>
      %263 = math.copysign %7, %7 : tensor<16xf16>
      %264 = index.maxs %22, %51
      %265 = arith.ori %192, %false : i1
      %c155 = arith.constant 155 : index
      %extracted_52 = tensor.extract %collapsed_46[%c155] : tensor<224xf16>
      %266 = vector.broadcast %149 : i1 to vector<6xi1>
      %267 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %56, %59, %266 : vector<16xi1>, vector<6x16xi1> into vector<6xi1>
      %268 = affine.load %alloc_22[%c6] : memref<16xf16>
      %269 = affine.if affine_set<(d0, d1, d2) : (d2 == 0, ((d2 + d0) * -64) ceildiv 128 == 0)>(%c3, %c9, %c1) -> memref<14x16xi16> {
        %inserted_54 = tensor.insert %cst_26 into %3[%c0, %c5, %c5] : tensor<14x7x7xf32>
        %281 = index.mul %114, %c12
        %282 = vector.extract %56[15] : vector<16xi1>
        %283 = vector.load %alloc_8[%c9] : memref<16xi16>, vector<16xi16>
        %284 = arith.floordivsi %c-13633_i16, %c-13633_i16 : i16
        %285 = math.roundeven %3 : tensor<14x7x7xf32>
        %alloc_55 = memref.alloc() : memref<16x16xf32>
        %286 = tensor.empty() : tensor<14x16xf32>
        %287 = linalg.matmul ins(%5, %alloc_55 : tensor<14x16xf32>, memref<16x16xf32>) outs(%286 : tensor<14x16xf32>) -> tensor<14x16xf32>
        %cst_56 = arith.constant 6.435200e+04 : f16
        %alloc_57 = memref.alloc() : memref<14x16xi16>
        affine.yield %alloc_57 : memref<14x16xi16>
      } else {
        %281 = math.ipowi %0, %0 : tensor<8xi32>
        %282 = arith.cmpf uge, %cst_3, %extracted_52 : f16
        %283 = affine.load %alloc_17[%c3] : memref<8xf32>
        %284 = vector.extract %56[6] : vector<16xi1>
        %285 = arith.minui %c873602045_i32, %c979846887_i32 : i32
        %286 = vector.broadcast %cst_2 : f16 to vector<5xf16>
        %dest_54, %accumulated_value_55 = vector.scan <add>, %218, %286 {inclusive = false, reduction_dim = 1 : i64} : vector<5x16xf16>, vector<5xf16>
        %287 = math.absf %16 : tensor<14x7x7xf32>
        %288 = math.expm1 %11 : tensor<8xf32>
        %alloc_56 = memref.alloc() : memref<14x16xi16>
        affine.yield %alloc_56 : memref<14x16xi16>
      }
      %from_elements_53 = tensor.from_elements %c528530600_i32, %c873602045_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c1005429591_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c979846887_i32, %c528530600_i32, %c873602045_i32, %c873602045_i32, %c873602045_i32, %c1005429591_i32, %c1005429591_i32 : tensor<16xi32>
      %270 = index.casts %false_29 : i1 to index
      %271 = index.sizeof
      scf.index_switch %c6 
      case 1 {
        %281 = arith.divf %268, %cst_3 : f16
        %cast_54 = tensor.cast %101 : tensor<16xi16> to tensor<?xi16>
        %282 = math.tan %12 : tensor<16xf16>
        %283 = arith.floordivsi %true_4, %true_51 : i1
        %284 = math.exp %3 : tensor<14x7x7xf32>
        %cast_55 = tensor.cast %from_elements_53 : tensor<16xi32> to tensor<?xi32>
        %285 = vector.splat %214 : vector<14x16xindex>
        %286 = vector.reduction <minui>, %56 : vector<16xi1> into i1
        %287 = arith.minui %c979846887_i32, %c1005429591_i32 : i32
        %288 = math.log1p %cst_0 : f16
        %289 = vector.load %alloc_8[%c2] : memref<16xi16>, vector<14x7x7xi16>
        %290 = arith.divf %extracted_52, %cst_1 : f16
        %291 = arith.xori %extracted_32, %true_51 : i1
        %292 = arith.remui %false_34, %true_51 : i1
        %293 = vector.shuffle %289, %289 [0, 9, 10, 11, 12, 16, 20, 21, 22, 23] : vector<14x7x7xi16>, vector<14x7x7xi16>
        %294 = vector.extract %181[1] : vector<16xf16>
        scf.yield
      }
      case 2 {
        %281 = math.sqrt %8 : tensor<8xf32>
        %282 = vector.broadcast %cst_3 : f16 to vector<16x16xf16>
        %283 = vector.outerproduct %168, %168, %282 {kind = #vector.kind<maxf>} : vector<16xf16>, vector<16xf16>
        %284 = math.expm1 %7 : tensor<16xf16>
        vector.print %25 : vector<14x16xi1>
        %285 = arith.maxui %c1005429591_i32, %c873602045_i32 : i32
        %true_54 = index.bool.constant true
        %inserted_55 = tensor.insert %93 into %cast_37[%c0, %c0] : tensor<?x?xf16>
        %286 = arith.ceildivsi %extracted_32, %false_43 : i1
        %287 = math.atan2 %13, %11 : tensor<8xf32>
        %288 = math.atan %7 : tensor<16xf16>
        %289 = index.ceildivu %270, %c3
        %290 = math.atan %10 : tensor<14x16xf16>
        %alloca = memref.alloca() : memref<16xf16>
        %291 = arith.divsi %c-13633_i16, %35 : i16
        memref.store %268, %alloc_13[%c4, %c3, %c5] : memref<14x7x7xf16>
        %292 = vector.splat %cst_2 : vector<8xf16>
        scf.yield
      }
      default {
        %281 = vector.flat_transpose %182 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        %282 = bufferization.clone %139 : memref<16xf16> to memref<16xf16>
        %283 = math.sqrt %11 : tensor<8xf32>
        %284 = bufferization.clone %alloc_19 : memref<14x16xi64> to memref<14x16xi64>
        %285 = math.ctlz %4 : tensor<8xi1>
        %286 = vector.broadcast %192 : i1 to vector<16x16xi1>
        %287 = vector.outerproduct %61, %56, %286 {kind = #vector.kind<minsi>} : vector<16xi1>, vector<16xi1>
        %288 = vector.broadcast %false_49 : i1 to vector<8xi1>
        %289 = arith.divsi %c1503914008_i64, %c958695536_i64 : i64
        %290 = vector.extract_strided_slice %98 {offsets = [0], sizes = [1], strides = [1]} : vector<4xi1> to vector<1xi1>
        %291 = affine.load %alloc_16[%c13, %c8, %c2] : memref<14x7x7xi1>
        %292 = affine.load %alloc[%c1] : memref<8xi1>
        %293 = arith.addi %149, %149 : i1
        %294 = vector.matrix_multiply %98, %19 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<4xi1>, vector<16xi1>) -> vector<4xi1>
        %295 = vector.broadcast %false_49 : i1 to vector<2xi1>
        %dest_54, %accumulated_value_55 = vector.scan <xor>, %203, %295 {inclusive = false, reduction_dim = 1 : i64} : vector<2x16xi1>, vector<2xi1>
        %296 = index.casts %c1005429591_i32 : i32 to index
        %297 = index.casts %124 : index to i32
      }
      %272 = arith.floordivsi %35, %c-13633_i16 : i16
      %273 = math.absf %14 : tensor<16xf32>
      %274 = arith.xori %extracted_32, %false_34 : i1
      %275 = vector.extract %19[7] : vector<16xi1>
      %276 = math.fma %14, %14, %14 : tensor<16xf32>
      %277 = vector.broadcast %172 : f32 to vector<14x16xf32>
      %278 = vector.fma %277, %277, %277 : vector<14x16xf32>
      %279 = index.sizeof
      %280 = affine.max affine_map<(d0, d1) -> (-d0, (d0 - 64) ceildiv 8 - d0 - (d1 - 8), -d0, d0 * 32)>(%155, %c2)
    }
    %230 = arith.divsi %149, %extracted_32 : i1
    %231 = arith.divui %false_43, %149 : i1
    %232 = affine.if affine_set<(d0) : (d0 mod 8 - 2 == 0, d0 + d0 mod 8 + 34 == 0)>(%c13) -> i32 {
      %255 = scf.while (%arg3 = %c1005429591_i32) : (i32) -> i32 {
        %262 = vector.create_mask %c8 : vector<8xi1>
        memref.copy %137, %alloc_18 : memref<8xf16> to memref<8xf16>
        %263 = vector.splat %65 : vector<8xf16>
        %264 = math.rsqrt %7 : tensor<16xf16>
        %265 = math.absi %0 : tensor<8xi32>
        %266 = arith.maxf %cst_2, %cst_0 : f16
        vector.print %262 : vector<8xi1>
        %267 = index.divu %60, %c1
        scf.condition(%false_43) %c528530600_i32 : i32
      } do {
      ^bb0(%arg3: i32):
        %262 = vector.load %162[%c5, %c3, %c5] : memref<14x7x7xf32>, vector<14x16xf32>
        %263 = index.mul %114, %c12
        %264 = math.log1p %12 : tensor<16xf16>
        vector.print %25 : vector<14x16xi1>
        vector.print %98 : vector<4xi1>
        %265 = vector.create_mask %c2 : vector<8xi1>
        %266 = index.mul %c2, %c6
        %267 = math.exp2 %11 : tensor<8xf32>
        %268 = vector.broadcast %c1503914008_i64 : i64 to vector<14xi64>
        %269 = vector.broadcast %192 : i1 to vector<14xi1>
        %270 = vector.maskedload %alloc_19[%c1, %c3], %269, %268 : memref<14x16xi64>, vector<14xi1>, vector<14xi64> into vector<14xi64>
        %271 = vector.broadcast %false : i1 to vector<2xi1>
        %272 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %61, %203, %271 : vector<16xi1>, vector<2x16xi1> into vector<2xi1>
        %inserted_50 = tensor.insert %false_29 into %9[%c0, %c1, %c3] : tensor<14x7x7xi1>
        %273 = bufferization.clone %alloc_12 : memref<14x7x7xi1> to memref<14x7x7xi1>
        %cast_51 = tensor.cast %0 : tensor<8xi32> to tensor<?xi32>
        %274 = affine.min affine_map<(d0, d1) -> (0, 0, d1)>(%117, %c2)
        %275 = index.ceildivs %c14, %124
        %276 = arith.maxf %93, %65 : f16
        scf.yield %c873602045_i32 : i32
      }
      %256 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %32, %32, %c-13633_i16 : vector<8xi16>, vector<8xi16> into i16
      %cast_49 = tensor.cast %2 : tensor<8xf16> to tensor<?xf16>
      %257 = arith.xori %192, %149 : i1
      %258 = index.divs %c7, %c3
      %259 = index.casts %60 : index to i32
      %260 = bufferization.to_memref %1 : memref<16xi64>
      %261 = bufferization.clone %alloc_22 : memref<16xf16> to memref<16xf16>
      affine.yield %c979846887_i32 : i32
    } else {
      %255 = vector.splat %67 : vector<14x16xindex>
      %from_elements_49 = tensor.from_elements %cst_1, %cst, %cst, %cst, %cst_2, %93, %cst_2, %cst, %cst_3, %93, %65, %cst_3, %cst_0, %cst_0, %cst_1, %cst_1, %cst_3, %cst, %cst_1, %cst_1, %cst_0, %93, %cst_2, %cst_1, %cst_1, %cst_3, %93, %cst_1, %cst, %cst_3, %93, %cst_3, %cst_2, %cst_0, %cst_1, %cst_1, %cst, %93, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %93, %93, %93, %65, %cst_1, %cst, %93, %cst_0, %cst_3, %cst, %65, %65, %cst, %93, %cst_3, %65, %cst_1, %cst, %cst, %65, %93, %93, %cst_1, %65, %cst, %65, %cst_0, %65, %cst_0, %cst_2, %93, %cst_1, %cst_2, %cst_3, %cst_2, %cst_0, %cst_0, %cst_2, %cst_3, %93, %cst_0, %cst, %cst_0, %cst_0, %cst_1, %cst_0, %65, %cst_2, %cst_0, %93, %cst_2, %cst, %cst_1, %93, %cst, %93, %cst_3, %93, %cst_0, %cst_1, %cst_3, %cst_1, %cst, %cst_0, %cst, %93, %cst_0, %cst, %65, %cst, %cst_3, %cst_2, %cst_3, %cst_2, %65, %65, %cst_0, %cst_0, %cst_1, %cst_0, %cst, %cst_1, %cst_1, %cst_2, %cst_3, %cst, %cst_2, %65, %cst, %cst_1, %cst_2, %cst_3, %65, %cst, %93, %cst_0, %cst_3, %cst_1, %65, %cst_2, %cst_2, %cst_1, %93, %65, %cst_0, %cst_3, %cst_3, %cst_2, %65, %cst_3, %cst, %cst_0, %cst_3, %cst_1, %cst_1, %93, %65, %cst_1, %cst, %cst_2, %93, %cst_3, %65, %cst_0, %cst, %cst_3, %cst_3, %93, %cst_1, %93, %cst, %cst_1, %65, %cst_2, %cst_2, %cst_2, %cst_3, %cst, %cst_2, %65, %cst_0, %cst_1, %93, %cst, %cst_0, %cst, %cst_1, %cst_2, %cst_1, %cst_1, %93, %93, %cst_3, %cst_1, %cst_2, %cst_0, %93, %cst_1, %93, %cst_0, %cst, %cst_3, %cst_0, %cst, %93, %93, %65, %cst, %cst_3, %65, %cst_1, %65, %cst_2, %cst_0, %65, %cst_1, %cst_2, %cst, %cst, %cst_0, %cst, %65, %93, %93, %cst_2, %cst_1, %cst_2, %cst_2, %cst, %cst_3, %cst_3, %93, %cst_1, %93, %cst_3, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_0, %65, %cst_2, %cst, %93, %cst_0, %cst_3, %cst_0, %65, %65, %cst_0, %cst, %cst_0, %cst_1, %cst_1, %93, %cst_3, %93, %65, %cst_0, %cst_0, %cst, %cst, %cst_1, %93, %cst_3, %cst_0, %cst, %cst_0, %cst, %cst_2, %93, %cst, %cst_2, %cst, %93, %cst_0, %93, %cst, %cst_2, %93, %cst_0, %cst_1, %cst_3, %93, %93, %cst_1, %cst, %cst_1, %93, %cst_3, %cst_1, %cst_2, %cst, %cst_1, %93, %93, %cst, %93, %cst_2, %cst_1, %93, %65, %cst_2, %65, %cst_3, %cst_1, %65, %cst_2, %65, %cst, %cst_3, %cst_1, %cst_3, %cst_2, %65, %cst, %65, %cst_0, %cst_1, %93, %cst_1, %cst_3, %cst_2, %cst_1, %93, %cst_3, %cst_1, %cst_1, %65, %cst_1, %cst_2, %93, %cst_3, %cst_2, %cst_2, %cst_0, %cst, %cst, %cst_2, %cst_0, %65, %93, %cst_2, %cst_1, %65, %cst_1, %cst_3, %65, %cst_3, %93, %cst_1, %cst_0, %cst_2, %cst_2, %cst_1, %93, %cst_1, %cst_2, %93, %65, %cst, %cst_2, %cst, %65, %cst_1, %cst, %cst_2, %cst_0, %cst_2, %cst_1, %cst_1, %cst_0, %cst_1, %cst, %cst_0, %cst_0, %cst, %cst_1, %93, %cst_1, %cst_1, %cst_0, %cst_2, %cst_1, %cst_1, %cst_3, %cst, %93, %65, %65, %cst_3, %cst_1, %cst_0, %cst_0, %93, %cst_0, %cst_3, %93, %cst, %cst_1, %cst_3, %cst_2, %cst_0, %65, %65, %cst_0, %65, %cst_0, %cst_0, %cst_0, %65, %cst_3, %cst, %cst_0, %65, %cst, %65, %cst_2, %cst_0, %cst_1, %cst_2, %65, %cst_0, %cst_1, %cst_0, %cst, %cst_2, %cst_3, %cst_0, %93, %cst, %cst_1, %cst_3, %93, %65, %cst_0, %65, %cst_2, %cst_0, %cst_1, %cst_3, %93, %93, %cst_3, %cst_0, %cst_2, %cst_3, %93, %65, %cst_3, %cst_0, %cst_3, %cst_1, %cst_2, %cst_1, %93, %cst_0, %cst_3, %93, %93, %93, %cst_0, %93, %93, %cst_2, %93, %93, %cst_0, %93, %cst_1, %93, %93, %cst_0, %65, %65, %cst, %93, %93, %cst_3, %cst_1, %93, %65, %65, %cst, %cst, %cst, %cst, %cst_3, %65, %93, %65, %cst, %cst_2, %cst_1, %cst_2, %cst, %cst, %cst_0, %cst_1, %cst, %cst_1, %cst_2, %cst_1, %cst_0, %cst_0, %cst_3, %cst_0, %cst, %cst_0, %65, %cst_1, %cst, %93, %93, %cst_2, %cst, %cst_1, %cst_1, %cst, %65, %cst_0, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst_2, %93, %cst_2, %cst_0, %65, %cst_2, %93, %65, %cst_0, %cst_1, %cst_3, %cst, %cst_2, %cst_2, %cst_3, %cst_3, %cst_0, %65, %65, %65, %93, %cst_3, %cst_3, %93, %cst_1, %cst, %cst_0, %cst_2, %cst_3, %93, %65, %cst_2, %65, %cst_3, %93, %93, %93, %cst_0, %93, %cst_2, %cst_1, %cst_0, %93, %65, %cst_3, %cst_3, %cst_2, %93, %65, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst_2, %65, %65, %cst_1, %cst, %cst_2, %65, %cst_1, %cst, %93, %93, %cst_2, %cst_2, %cst, %93, %cst, %cst, %cst_2, %cst_1, %cst, %cst_2, %cst_1, %65, %cst_1, %cst_1, %65, %cst_2, %cst, %cst_3, %93, %cst_1, %cst_1, %cst_3, %65, %93, %cst_2, %cst_0, %93, %cst_0, %cst, %cst, %cst, %65, %cst_3, %cst_3, %cst_0, %cst_3, %cst_3, %cst, %cst, %cst, %cst_1, %cst, %cst_0, %cst_3, %cst_1, %cst_2, %cst, %cst, %cst, %cst_3, %cst_2, %cst_2, %65, %93, %65, %cst, %cst_0, %cst_0, %cst_3, %65, %cst_0, %cst_1, %cst_0, %65, %cst, %cst_0, %93, %cst_0, %cst, %cst_1, %cst_3, %cst_1, %cst_0, %93, %cst, %cst_1, %93, %cst_2, %cst_1, %cst_3, %65, %cst, %65, %cst, %cst_2, %cst_2, %cst_2 : tensor<14x7x7xf16>
      memref.copy %alloc_7, %alloc_13 : memref<14x7x7xf16> to memref<14x7x7xf16>
      %256 = arith.cmpf true, %cst_26, %extracted : f32
      %257 = arith.addi %c528530600_i32, %c1005429591_i32 : i32
      %258 = index.mul %c13, %c4
      affine.for %arg3 = 0 to 75 {
      }
      %259 = math.ceil %5 : tensor<14x16xf32>
      affine.yield %c873602045_i32 : i32
    }
    %233 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%9 : tensor<14x7x7xi1>) {
    ^bb0(%out: i1):
      %255 = math.exp2 %5 : tensor<14x16xf32>
      %256 = arith.andi %false_34, %149 : i1
      %257 = arith.floordivsi %extracted_32, %false_29 : i1
      memref.store %false_43, %alloc_12[%c8, %c3, %c4] : memref<14x7x7xi1>
      %258 = arith.addf %cst, %cst_0 : f16
      %259 = math.tanh %13 : tensor<8xf32>
      %260 = arith.negf %cst_0 : f16
      vector.print %168 : vector<16xf16>
      %261 = vector.create_mask %124 : vector<8xi1>
      %262 = arith.xori %c1711146161_i64, %c1503914008_i64 : i64
      %263 = arith.shli %149, %extracted_32 : i1
      %264 = vector.shuffle %182, %43 [0, 1, 3, 5, 6, 7, 9, 10, 11, 12, 15] : vector<8xf32>, vector<8xf32>
      %265 = math.log1p %65 : f16
      %266 = index.add %37, %114
      %alloca = memref.alloca() : memref<16xi32>
      %267 = bufferization.to_memref %8 : memref<8xf32>
      %268 = memref.atomic_rmw minf %cst_26, %267[%c5] : (f32, memref<8xf32>) -> f32
      %269 = arith.divui %c1503914008_i64, %c1503914008_i64 : i64
      %270 = index.maxu %c14, %60
      %271 = arith.cmpf olt, %cst_2, %cst_0 : f16
      %272 = math.log %cst : f16
      %273 = arith.shrsi %c1503914008_i64, %c1503914008_i64 : i64
      %274 = affine.for %arg3 = 0 to 38 iter_args(%arg4 = %182) -> (vector<8xf32>) {
        affine.yield %43 : vector<8xf32>
      }
      %275 = scf.index_switch %92 -> memref<16xi1> 
      case 1 {
        %284 = vector.flat_transpose %56 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
        %285 = arith.remui %c1005429591_i32, %c1005429591_i32 : i32
        %cast_49 = tensor.cast %16 : tensor<14x7x7xf32> to tensor<?x?x?xf32>
        %286 = index.mul %c8, %209
        %287 = math.log %12 : tensor<16xf16>
        %rank = tensor.rank %0 : tensor<8xi32>
        %288 = arith.addf %cst_3, %cst_2 : f16
        %289 = math.fma %11, %13, %11 : tensor<8xf32>
        %290 = arith.xori %c979846887_i32, %c528530600_i32 : i32
        %291 = index.casts %c7 : index to i32
        %292 = math.rsqrt %7 : tensor<16xf16>
        %293 = vector.multi_reduction <minsi>, %284, %284 [] : vector<16xi1> to vector<16xi1>
        %294 = vector.extract %171[7, 3] : vector<14x7x7xf32>
        %false_50 = index.bool.constant false
        %295 = math.rsqrt %cst_3 : f16
        %296 = arith.subi %c873602045_i32, %c528530600_i32 : i32
        scf.yield %188 : memref<16xi1>
      }
      default {
        %284 = arith.minf %65, %cst_0 : f16
        %285 = arith.remsi %false_34, %extracted_32 : i1
        vector.print %43 : vector<8xf32>
        affine.store %cst_2, %alloc_22[%c5] : memref<16xf16>
        %rank = tensor.rank %20 : tensor<f16>
        %286 = index.sizeof
        %287 = math.ctpop %false : i1
        %288 = math.log10 %collapsed : tensor<98x7xf32>
        %289 = arith.minf %cst_1, %cst_3 : f16
        %290 = math.ctpop %c1503914008_i64 : i64
        %291 = math.log %21 : tensor<f16>
        %292 = index.divu %67, %c9
        %293 = vector.shuffle %98, %261 [3, 4, 5, 6, 7, 9, 10] : vector<4xi1>, vector<8xi1>
        %294 = vector.extract_strided_slice %261 {offsets = [3], sizes = [3], strides = [1]} : vector<8xi1> to vector<3xi1>
        %295 = math.ctpop %9 : tensor<14x7x7xi1>
        %296 = affine.load %188[%c8] : memref<16xi1>
        scf.yield %188 : memref<16xi1>
      }
      %276 = vector.broadcast %false : i1 to vector<8xi1>
      %277 = arith.ceildivsi %false_29, %false_34 : i1
      %278 = arith.andi %out, %false_29 : i1
      %279 = arith.remsi %true_4, %149 : i1
      %280 = arith.divui %false_34, %true : i1
      %281 = arith.ori %c1503914008_i64, %c958695536_i64 : i64
      %282 = arith.floordivsi %false_29, %false_29 : i1
      %283 = bufferization.to_memref %14 : memref<16xf32>
      linalg.yield %true_4 : i1
    } -> tensor<14x7x7xi1>
    %234 = bufferization.clone %50 : memref<14xf32> to memref<14xf32>
    %235 = arith.remsi %149, %149 : i1
    scf.execute_region {
      %inserted_49 = tensor.insert %172 into %8[%c0] : tensor<8xf32>
      %255 = vector.broadcast %true_4 : i1 to vector<6xi1>
      %256 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %59, %61, %255 : vector<6x16xi1>, vector<16xi1> into vector<6xi1>
      %257 = arith.cmpf oeq, %cst_0, %cst_2 : f16
      %258 = affine.for %arg3 = 0 to 41 iter_args(%arg4 = %alloc_11) -> (memref<14x7x7xi1>) {
        affine.yield %alloc_16 : memref<14x7x7xi1>
      }
      %259 = scf.index_switch %c12 -> index 
      case 1 {
        %267 = math.tanh %cst_2 : f16
        %268 = vector.broadcast %199 : index to vector<14xindex>
        %269 = vector.broadcast %true : i1 to vector<14xi1>
        %270 = vector.broadcast %cst_3 : f16 to vector<14xf16>
        vector.scatter %alloc_22[%c6] [%268], %269, %270 : memref<16xf16>, vector<14xindex>, vector<14xi1>, vector<14xf16>
        %271 = index.castu %c979846887_i32 : i32 to index
        %272 = math.atan %collapsed : tensor<98x7xf32>
        %273 = arith.xori %c-13633_i16, %35 : i16
        %dest_54, %accumulated_value_55 = vector.scan <minsi>, %106, %98 {inclusive = false, reduction_dim = 1 : i64} : vector<4x16xi1>, vector<4xi1>
        %274 = arith.maxf %cst_26, %cst_26 : f32
        %275 = arith.minui %c979846887_i32, %c1005429591_i32 : i32
        %276 = arith.xori %c1503914008_i64, %c1503914008_i64 : i64
        %277 = math.rsqrt %12 : tensor<16xf16>
        %278 = arith.xori %true_4, %true : i1
        %279 = arith.divui %c1503914008_i64, %c1503914008_i64 : i64
        %280 = vector.load %234[%c5] : memref<14xf32>, vector<14x16xf32>
        %281 = index.casts %37 : index to i32
        %282 = math.tanh %11 : tensor<8xf32>
        %283 = affine.apply affine_map<(d0, d1, d2) -> (-(d0 - 64))>(%c15, %c14, %197)
        scf.yield %209 : index
      }
      case 2 {
        %267 = math.ctpop %extracted_32 : i1
        %268 = arith.addi %extracted_32, %false_29 : i1
        memref.store %c873602045_i32, %alloc_10[%c7, %c15] : memref<14x16xi32>
        %269 = math.ceil %14 : tensor<16xf32>
        %from_elements_54 = tensor.from_elements %extracted, %cst_26, %172, %extracted, %extracted, %extracted, %extracted, %extracted, %cst_26, %extracted, %cst_26, %extracted, %extracted, %extracted, %cst_26, %172, %extracted, %cst_26, %extracted, %172, %cst_26, %extracted, %cst_26, %extracted, %cst_26, %172, %cst_26, %172, %extracted, %172, %172, %cst_26, %extracted, %172, %extracted, %172, %cst_26, %cst_26, %cst_26, %172, %extracted, %172, %cst_26, %172, %172, %172, %extracted, %cst_26, %172, %cst_26, %extracted, %extracted, %172, %cst_26, %cst_26, %extracted, %172, %cst_26, %172, %cst_26, %cst_26, %cst_26, %cst_26, %extracted, %172, %cst_26, %extracted, %cst_26, %cst_26, %172, %extracted, %cst_26, %extracted, %cst_26, %extracted, %cst_26, %cst_26, %cst_26, %cst_26, %extracted, %cst_26, %extracted, %cst_26, %extracted, %cst_26, %172, %extracted, %cst_26, %cst_26, %extracted, %extracted, %cst_26, %extracted, %extracted, %cst_26, %cst_26, %cst_26, %172, %172, %172, %cst_26, %extracted, %172, %extracted, %cst_26, %extracted, %172, %extracted, %cst_26, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %cst_26, %172, %extracted, %172, %172, %172, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %extracted, %cst_26, %172, %extracted, %172, %extracted, %extracted, %cst_26, %172, %172, %extracted, %cst_26, %cst_26, %extracted, %172, %cst_26, %extracted, %extracted, %172, %172, %172, %cst_26, %extracted, %172, %172, %cst_26, %172, %extracted, %extracted, %cst_26, %extracted, %172, %cst_26, %extracted, %172, %cst_26, %extracted, %172, %cst_26, %cst_26, %extracted, %172, %172, %cst_26, %cst_26, %cst_26, %extracted, %172, %172, %172, %extracted, %cst_26, %172, %172, %172, %cst_26, %172, %172, %extracted, %172, %cst_26, %extracted, %172, %172, %172, %extracted, %cst_26, %extracted, %extracted, %extracted, %172, %172, %extracted, %extracted, %extracted, %cst_26, %extracted, %172, %cst_26, %extracted, %cst_26, %cst_26, %cst_26, %172, %172, %cst_26, %extracted, %cst_26, %172, %172, %extracted, %172, %extracted, %extracted, %cst_26, %172, %extracted, %172, %extracted, %cst_26, %extracted, %cst_26, %cst_26, %172, %cst_26, %172, %extracted, %cst_26, %172, %extracted, %172, %cst_26, %cst_26, %cst_26, %extracted, %extracted, %extracted, %172, %cst_26, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %extracted, %172, %cst_26, %extracted, %172, %cst_26, %cst_26, %extracted, %172, %extracted, %cst_26, %cst_26, %172, %172, %cst_26, %cst_26, %cst_26, %cst_26, %172, %extracted, %172, %cst_26, %extracted, %cst_26, %cst_26, %172, %172, %cst_26, %172, %172, %172, %172, %172, %extracted, %cst_26, %cst_26, %172, %172, %extracted, %172, %172, %cst_26, %cst_26, %172, %cst_26, %cst_26, %cst_26, %172, %extracted, %172, %cst_26, %cst_26, %172, %cst_26, %extracted, %172, %extracted, %172, %extracted, %extracted, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %extracted, %extracted, %cst_26, %172, %172, %extracted, %172, %cst_26, %172, %extracted, %172, %172, %172, %172, %172, %cst_26, %cst_26, %172, %172, %172, %cst_26, %172, %extracted, %172, %172, %cst_26, %extracted, %extracted, %extracted, %172, %extracted, %172, %extracted, %172, %172, %172, %cst_26, %extracted, %cst_26, %172, %extracted, %172, %extracted, %extracted, %extracted, %172, %extracted, %cst_26, %cst_26, %172, %cst_26, %172, %cst_26, %extracted, %cst_26, %extracted, %172, %172, %cst_26, %extracted, %172, %172, %172, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %cst_26, %cst_26, %172, %extracted, %172, %extracted, %cst_26, %cst_26, %extracted, %extracted, %cst_26, %extracted, %cst_26, %extracted, %cst_26, %172, %172, %172, %extracted, %cst_26, %extracted, %cst_26, %extracted, %172, %172, %172, %extracted, %extracted, %extracted, %extracted, %172, %172, %extracted, %extracted, %172, %cst_26, %extracted, %172, %cst_26, %cst_26, %extracted, %extracted, %extracted, %cst_26, %172, %extracted, %cst_26, %cst_26, %cst_26, %extracted, %172, %cst_26, %172, %172, %172, %cst_26, %cst_26, %extracted, %172, %cst_26, %extracted, %extracted, %172, %172, %extracted, %172, %cst_26, %172, %extracted, %extracted, %extracted, %extracted, %extracted, %cst_26, %cst_26, %extracted, %172, %172, %cst_26, %cst_26, %extracted, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %172, %cst_26, %cst_26, %172, %172, %172, %172, %extracted, %172, %172, %172, %cst_26, %172, %extracted, %172, %172, %cst_26, %extracted, %172, %extracted, %172, %172, %cst_26, %cst_26, %extracted, %cst_26, %extracted, %172, %172, %cst_26, %cst_26, %cst_26, %172, %172, %cst_26, %extracted, %172, %extracted, %cst_26, %extracted, %172, %cst_26, %172, %extracted, %172, %cst_26, %172, %cst_26, %cst_26, %extracted, %cst_26, %172, %cst_26, %cst_26, %cst_26, %cst_26, %cst_26, %extracted, %172, %extracted, %cst_26, %extracted, %172, %172, %extracted, %cst_26, %cst_26, %extracted, %cst_26, %172, %172, %extracted, %172, %172, %extracted, %172, %172, %172, %cst_26, %cst_26, %cst_26, %cst_26, %extracted, %cst_26, %cst_26, %cst_26, %172, %cst_26, %extracted, %172, %172, %172, %cst_26, %172, %cst_26, %extracted, %172, %extracted, %172, %cst_26, %172, %172, %172, %extracted, %172, %extracted, %172, %extracted, %172, %extracted, %172, %172, %extracted, %extracted, %cst_26, %cst_26, %172, %172, %cst_26, %extracted, %extracted, %172, %172, %172, %172, %extracted, %extracted, %extracted, %extracted, %extracted, %172, %cst_26, %extracted, %172, %cst_26, %cst_26, %172, %extracted, %172, %172, %cst_26, %172, %172, %extracted, %extracted, %cst_26, %cst_26, %extracted, %extracted, %cst_26, %172, %extracted, %172, %cst_26, %cst_26, %extracted, %172, %extracted, %172, %extracted, %extracted, %172, %cst_26, %cst_26, %extracted, %cst_26, %extracted, %cst_26, %cst_26, %extracted, %172, %172, %extracted, %cst_26, %extracted, %cst_26, %172, %172, %extracted, %extracted, %cst_26, %extracted, %extracted, %172, %cst_26, %cst_26, %172, %cst_26, %extracted, %extracted, %172, %172, %172, %cst_26, %172, %cst_26, %cst_26, %extracted, %cst_26, %extracted, %extracted, %172, %172, %172, %172, %172, %extracted, %extracted, %172, %extracted, %cst_26, %172, %extracted, %cst_26 : tensor<14x7x7xf32>
        %270 = affine.apply affine_map<(d0, d1) -> (d1)>(%c8, %c13)
        %true_55 = index.bool.constant true
        %271 = affine.load %222[%c5, %c11, %c2] : memref<14x7x7xf32>
        %272 = arith.negf %93 : f16
        vector.print %61 : vector<16xi1>
        %273 = math.ctpop %false : i1
        %274 = vector.multi_reduction <add>, %168, %cst_0 [0] : vector<16xf16> to f16
        %cast_56 = tensor.cast %collapsed : tensor<98x7xf32> to tensor<?x?xf32>
        %extracted_57 = tensor.extract %9[%c7, %c4, %c4] : tensor<14x7x7xi1>
        %275 = math.round %7 : tensor<16xf16>
        %276 = arith.maxf %93, %274 : f16
        scf.yield %c6 : index
      }
      default {
        %267 = math.ceil %collapsed_46 : tensor<224xf16>
        %268 = math.atan %2 : tensor<8xf16>
        %269 = tensor.empty(%c12) : tensor<?xf16>
        %270 = math.rsqrt %cst_3 : f16
        %271 = vector.broadcast %172 : f32 to vector<7x7xf32>
        %272 = vector.insert %271, %171 [11] : vector<7x7xf32> into vector<14x7x7xf32>
        %273 = arith.ori %true, %false_34 : i1
        %dest_54, %accumulated_value_55 = vector.scan <add>, %220, %181 {inclusive = true, reduction_dim = 0 : i64} : vector<3x16xf16>, vector<16xf16>
        %274 = vector.create_mask %51, %64, %c13 : vector<14x7x7xi1>
        %275 = math.cos %collapsed : tensor<98x7xf32>
        %276 = memref.atomic_rmw addf %cst_1, %137[%c1] : (f16, memref<8xf16>) -> f16
        %277 = arith.maxsi %c1005429591_i32, %c528530600_i32 : i32
        %278 = vector.broadcast %65 : f16 to vector<5xf16>
        %dest_56, %accumulated_value_57 = vector.scan <add>, %218, %278 {inclusive = true, reduction_dim = 1 : i64} : vector<5x16xf16>, vector<5xf16>
        %279 = math.log10 %collapsed : tensor<98x7xf32>
        %280 = index.maxs %c5, %c1
        %281 = vector.broadcast %c1711146161_i64 : i64 to vector<14xi64>
        %282 = vector.broadcast %extracted_32 : i1 to vector<14xi1>
        %283 = vector.maskedload %alloc_19[%c7, %c1], %282, %281 : memref<14x16xi64>, vector<14xi1>, vector<14xi64> into vector<14xi64>
        %284 = index.add %c5, %199
        scf.yield %c1 : index
      }
      %260 = vector.insertelement %cst_3, %122[%c7 : index] : vector<8xf16>
      %261 = arith.divui %false, %false_43 : i1
      %262 = vector.extract %173[0] : vector<1xf16>
      %cast_50 = tensor.cast %14 : tensor<16xf32> to tensor<?xf32>
      %263 = math.exp2 %14 : tensor<16xf32>
      %264 = vector.extract %43[0] : vector<8xf32>
      %alloc_51 = memref.alloc() : memref<8xi16>
      %alloc_52 = memref.alloc() : memref<8xi1>
      memref.copy %alloc, %alloc_52 : memref<8xi1> to memref<8xi1>
      %generated_53 = tensor.generate %60 {
      ^bb0(%arg3: index):
        %267 = bufferization.clone %alloc_17 : memref<8xf32> to memref<8xf32>
        %268 = index.maxs %51, %c5
        %269 = vector.extract_strided_slice %19 {offsets = [8], sizes = [7], strides = [1]} : vector<16xi1> to vector<7xi1>
        %270 = math.exp2 %cst : f16
        tensor.yield %c-13633_i16 : i16
      } : tensor<?xi16>
      %265 = memref.alloca_scope  -> (i1) {
        %inserted_54 = tensor.insert %172 into %13[%c4] : tensor<8xf32>
        %267 = math.rsqrt %11 : tensor<8xf32>
        %268 = math.exp2 %14 : tensor<16xf32>
        %269 = arith.maxui %true_4, %149 : i1
        %270 = math.powf %cst_3, %93 : f16
        %alloca = memref.alloca() : memref<14x16xi64>
        %271 = arith.divui %c1503914008_i64, %c958695536_i64 : i64
        %272 = arith.divui %false_34, %false_43 : i1
        %273 = index.divs %67, %c14
        %274 = arith.subi %c-13633_i16, %35 : i16
        %275 = index.sizeof
        %276 = arith.divui %c-13633_i16, %c-13633_i16 : i16
        %extracted_55 = tensor.extract %9[%c12, %c0, %c6] : tensor<14x7x7xi1>
        %false_56 = index.bool.constant false
        %from_elements_57 = tensor.from_elements %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c1503914008_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c958695536_i64, %c1503914008_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c1503914008_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64, %c958695536_i64, %c958695536_i64, %c1711146161_i64, %c1711146161_i64, %c958695536_i64, %c1711146161_i64, %c1503914008_i64, %c958695536_i64 : tensor<14x7x7xi64>
        %rank = tensor.rank %cast_50 : tensor<?xf32>
        %277 = arith.negf %93 : f16
        %278 = arith.divui %c979846887_i32, %c1005429591_i32 : i32
        %cst_58 = arith.constant 0x4E2731F8 : f32
        %279 = vector.matrix_multiply %122, %181 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<8xf16>, vector<16xf16>) -> vector<2xf16>
        %280 = affine.load %alloc_9[%c8] : memref<16xf16>
        %281 = arith.ori %extracted_55, %false : i1
        %282 = arith.shrsi %false, %false_34 : i1
        %283 = math.cos %17 : tensor<14x7x7xf32>
        %284 = math.expm1 %13 : tensor<8xf32>
        %285 = math.atan %93 : f16
        %286 = math.ctpop %149 : i1
        %287 = index.ceildivu %c9, %c15
        %false_59 = index.bool.constant false
        %288 = arith.shli %extracted_32, %extracted_32 : i1
        %289 = math.log10 %20 : tensor<f16>
        %290 = vector.broadcast %cst_2 : f16 to vector<1x1xf16>
        %291 = vector.outerproduct %173, %173, %290 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
        memref.alloca_scope.return %false : i1
      }
      %266 = arith.shrsi %c979846887_i32, %c979846887_i32 : i32
      scf.yield
    }
    %236 = arith.remf %cst_2, %cst_3 : f16
    %237 = arith.minui %c1711146161_i64, %c1503914008_i64 : i64
    %238 = affine.load %alloc_12[%c2, %c12, %c15] : memref<14x7x7xi1>
    %239 = scf.execute_region -> f16 {
      %255 = index.maxs %67, %c13
      %256 = arith.floordivsi %c528530600_i32, %c873602045_i32 : i32
      affine.for %arg3 = 0 to 24 {
      }
      %257 = index.maxu %c13, %c7
      %258 = index.castu %152 : index to i32
      %false_49 = index.bool.constant false
      %cast_50 = tensor.cast %9 : tensor<14x7x7xi1> to tensor<?x?x?xi1>
      %dest_51, %accumulated_value_52 = vector.scan <mul>, %106, %98 {inclusive = false, reduction_dim = 1 : i64} : vector<4x16xi1>, vector<4xi1>
      %259 = arith.ori %149, %extracted_32 : i1
      %260 = arith.mulf %cst_0, %cst_3 : f16
      %261 = vector.multi_reduction <minf>, %173, %173 [] : vector<1xf16> to vector<1xf16>
      %262 = math.powf %from_elements_33, %10 : tensor<14x16xf16>
      %263 = affine.load %alloc_15[%c14, %c5, %c12] : memref<14x7x7xf16>
      %264 = math.fma %12, %7, %7 : tensor<16xf16>
      %265 = arith.minf %cst_26, %extracted : f32
      %inserted_53 = tensor.insert %true_4 into %6[%c0] : tensor<16xi1>
      scf.yield %cst_0 : f16
    }
    %240 = arith.shrui %c1005429591_i32, %c1005429591_i32 : i32
    %241 = vector.broadcast %35 : i16 to vector<8xi16>
    %242 = index.casts %22 : index to i32
    %243 = math.cttz %0 : tensor<8xi32>
    %244 = arith.divui %true, %false : i1
    %245 = math.powf %cst, %cst_3 : f16
    %246 = bufferization.clone %alloc_7 : memref<14x7x7xf16> to memref<14x7x7xf16>
    %247 = arith.minui %c528530600_i32, %c979846887_i32 : i32
    %248 = arith.negf %172 : f32
    %249 = arith.xori %c1711146161_i64, %c1503914008_i64 : i64
    %250 = tensor.empty() : tensor<16xi64>
    %251 = linalg.copy ins(%1 : tensor<16xi64>) outs(%250 : tensor<16xi64>) -> tensor<16xi64>
    %alloc_48 = memref.alloc() : memref<16x14xi64>
    linalg.transpose ins(%217 : memref<14x16xi64>) outs(%alloc_48 : memref<16x14xi64>) permutation = [1, 0] 
    %252 = tensor.empty() : tensor<7x7xf16>
    %reduced = linalg.reduce ins(%alloc_7 : memref<14x7x7xf16>) outs(%252 : tensor<7x7xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %255 = math.log2 %65 : f16
        %expanded = tensor.expand_shape %250 [[0, 1]] : tensor<16xi64> into tensor<16x1xi64>
        %256 = arith.divf %extracted, %extracted : f32
        %257 = math.tanh %10 : tensor<14x16xf16>
        %258 = bufferization.to_memref %15 : memref<16xi1>
        %259 = vector.broadcast %cst_2 : f16 to vector<1x1xf16>
        %260 = vector.outerproduct %173, %173, %259 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
        vector.print %140 : vector<14x16xf16>
        %261 = arith.addi %c979846887_i32, %c528530600_i32 : i32
        %cst_49 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_49 : f16
      }
    %253 = scf.parallel (%arg3, %arg4) = (%c6, %c0) to (%209, %64) step (%c8, %c6) init (%c1711146161_i64) -> i64 {
      %255 = arith.remsi %c-13633_i16, %35 : i16
      %alloc_49 = memref.alloc() : memref<16xi1>
      memref.copy %188, %alloc_49 : memref<16xi1> to memref<16xi1>
      %256 = arith.remui %c958695536_i64, %c1711146161_i64 : i64
      %257 = arith.shrui %149, %true_4 : i1
      %258 = arith.remsi %false_34, %false : i1
      %cast_50 = tensor.cast %11 : tensor<8xf32> to tensor<?xf32>
      %259 = vector.insertelement %false_34, %98[%209 : index] : vector<4xi1>
      %260 = math.tan %13 : tensor<8xf32>
      %261 = index.castu %false : i1 to index
      %262 = memref.load %alloc_18[%c0] : memref<8xf16>
      %263 = math.log %20 : tensor<f16>
      %264 = bufferization.to_memref %5 : memref<14x16xf32>
      %265 = vector.extract %203[1] : vector<2x16xi1>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%from_elements_44 : tensor<14x7x7xf16>) {
      ^bb0(%out: f16):
        %271 = affine.apply affine_map<(d0) -> ((d0 * 2 - (d0 * 2) mod 32) mod 32)>(%c12)
        %272 = vector.load %246[%c7, %c0, %c4] : memref<14x7x7xf16>, vector<8xf16>
        %273 = vector.create_mask %c1, %199, %c4 : vector<14x7x7xi1>
        %274 = index.mul %209, %c11
        %275 = arith.mulf %cst_2, %out : f16
        %276 = arith.maxui %false_43, %149 : i1
        %277 = vector.matrix_multiply %122, %122 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf16>, vector<8xf16>) -> vector<1xf16>
        %278 = math.cos %14 : tensor<16xf32>
        %279 = index.sizeof
        %280 = index.casts %c-13633_i16 : i16 to index
        %281 = arith.shrui %false_34, %238 : i1
        %282 = math.ceil %7 : tensor<16xf16>
        %283 = index.mul %155, %c2
        %284 = tensor.empty(%152, %261) : tensor<?x7x?xf32>
        %285 = vector.broadcast %true_4 : i1 to vector<8xi1>
        %286 = math.atan %cst_26 : f32
        %rank = tensor.rank %4 : tensor<8xi1>
        %287 = vector.broadcast %93 : f16 to vector<16x16xf16>
        %288 = vector.outerproduct %168, %168, %287 {kind = #vector.kind<maxf>} : vector<16xf16>, vector<16xf16>
        %289 = arith.negf %cst_0 : f16
        %290 = arith.remui %c873602045_i32, %c528530600_i32 : i32
        %291 = arith.maxui %149, %false_43 : i1
        %inserted_51 = tensor.insert %out into %21[] : tensor<f16>
        %false_52 = index.bool.constant false
        %292 = index.maxs %64, %c12
        %293 = tensor.empty() : tensor<14x16xi16>
        %294 = arith.xori %false_52, %extracted_32 : i1
        %295 = math.tanh %12 : tensor<16xf16>
        %296 = arith.subi %238, %149 : i1
        %cast_53 = tensor.cast %12 : tensor<16xf16> to tensor<?xf16>
        %297 = math.roundeven %13 : tensor<8xf32>
        %298 = arith.maxsi %c1711146161_i64, %c958695536_i64 : i64
        %299 = vector.load %50[%c1] : memref<14xf32>, vector<14x7x7xf32>
        linalg.yield %65 : f16
      } -> tensor<14x7x7xf16>
      %267 = vector.broadcast %155 : index to vector<7xindex>
      %268 = vector.broadcast %extracted_32 : i1 to vector<7xi1>
      %269 = vector.broadcast %172 : f32 to vector<7xf32>
      vector.scatter %234[%c4] [%267], %268, %269 : memref<14xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
      %270 = arith.floordivsi %false_34, %false_29 : i1
      %c1_i64 = arith.constant 1 : i64
      scf.reduce(%c1_i64)  : i64 {
      ^bb0(%arg5: i64, %arg6: i64):
        %271 = math.atan2 %7, %7 : tensor<16xf16>
        %272 = math.cos %cst_26 : f32
        %alloca = memref.alloca() : memref<8xi16>
        %273 = index.castu %false : i1 to index
        %274 = math.absf %10 : tensor<14x16xf16>
        %275 = math.exp %reduced : tensor<7x7xf16>
        %276 = vector.extract_strided_slice %32 {offsets = [3], sizes = [3], strides = [1]} : vector<8xi16> to vector<3xi16>
        %277 = arith.ori %false_43, %238 : i1
        %c1_i64_51 = arith.constant 1 : i64
        scf.reduce.return %c1_i64_51 : i64
      }
      scf.yield
    }
    %254 = affine.vector_load %alloc_20[%c0] : memref<16xf16>, vector<7xf16>
    affine.vector_store %182, %alloc_17[%124] : memref<8xf32>, vector<8xf32>
    vector.print %19 : vector<16xi1>
    vector.print %25 : vector<14x16xi1>
    vector.print %32 : vector<8xi16>
    vector.print %43 : vector<8xf32>
    vector.print %56 : vector<16xi1>
    vector.print %59 : vector<6x16xi1>
    vector.print %61 : vector<16xi1>
    vector.print %98 : vector<4xi1>
    vector.print %106 : vector<4x16xi1>
    vector.print %122 : vector<8xf16>
    vector.print %140 : vector<14x16xf16>
    vector.print %168 : vector<16xf16>
    vector.print %171 : vector<14x7x7xf32>
    vector.print %173 : vector<1xf16>
    vector.print %181 : vector<16xf16>
    vector.print %182 : vector<8xf32>
    vector.print %203 : vector<2x16xi1>
    vector.print %218 : vector<5x16xf16>
    vector.print %220 : vector<3x16xf16>
    vector.print %241 : vector<8xi16>
    vector.print %254 : vector<7xf16>
    vector.print %c528530600_i32 : i32
    vector.print %cst : f16
    vector.print %c979846887_i32 : i32
    vector.print %cst_0 : f16
    vector.print %c1005429591_i32 : i32
    vector.print %c-13633_i16 : i16
    vector.print %true : i1
    vector.print %cst_1 : f16
    vector.print %cst_2 : f16
    vector.print %cst_3 : f16
    vector.print %c1711146161_i64 : i64
    vector.print %c873602045_i32 : i32
    vector.print %c1503914008_i64 : i64
    vector.print %false : i1
    vector.print %c958695536_i64 : i64
    vector.print %true_4 : i1
    vector.print %35 : i16
    vector.print %cst_26 : f32
    vector.print %65 : f16
    vector.print %false_29 : i1
    vector.print %extracted : f32
    vector.print %93 : f16
    vector.print %extracted_32 : i1
    vector.print %false_34 : i1
    vector.print %149 : i1
    vector.print %172 : f32
    vector.print %192 : i1
    vector.print %false_43 : i1
    vector.print %238 : i1
    vector.print %239 : f16
    return
  }
}
