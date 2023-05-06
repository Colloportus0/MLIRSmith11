module {
  func.func nested @func1(%arg0: memref<13xf16>) -> tensor<10x4x13xf32> {
    %false = arith.constant false
    %cst = arith.constant 0x4E17CA8B : f32
    %c490147963_i32 = arith.constant 490147963 : i32
    %c-14576_i16 = arith.constant -14576 : i16
    %cst_0 = arith.constant 0x4E47F7DE : f32
    %c1052194578_i32 = arith.constant 1052194578 : i32
    %cst_1 = arith.constant 6.134400e+04 : f16
    %c1531692190_i64 = arith.constant 1531692190 : i64
    %false_2 = arith.constant false
    %cst_3 = arith.constant 1.84266394E+9 : f32
    %true = arith.constant true
    %c27645_i16 = arith.constant 27645 : i16
    %cst_4 = arith.constant 0x4BCE95BF : f32
    %cst_5 = arith.constant 1.53067917E+9 : f32
    %cst_6 = arith.constant 2.017000e+03 : f16
    %cst_7 = arith.constant 1.8469408E+9 : f32
    %0 = tensor.empty() : tensor<10x4x13xi64>
    %1 = tensor.empty() : tensor<13xf16>
    %2 = tensor.empty() : tensor<4x10xi1>
    %3 = tensor.empty() : tensor<4x13xi64>
    %4 = tensor.empty() : tensor<4x13xi16>
    %5 = tensor.empty() : tensor<4x13xf16>
    %6 = tensor.empty() : tensor<10x4x13xi64>
    %7 = tensor.empty() : tensor<4x13xi64>
    %8 = tensor.empty() : tensor<10x4x13xi16>
    %9 = tensor.empty() : tensor<4x13xi16>
    %10 = tensor.empty() : tensor<13xi1>
    %11 = tensor.empty() : tensor<13xi32>
    %12 = tensor.empty() : tensor<4x10xi64>
    %13 = tensor.empty() : tensor<10x4x13xf32>
    %14 = tensor.empty() : tensor<10x4x13xi16>
    %15 = tensor.empty() : tensor<4x10xi32>
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
    %alloc = memref.alloc() : memref<13xi64>
    %alloc_8 = memref.alloc() : memref<10x4x13xi16>
    %alloc_9 = memref.alloc() : memref<10x4x13xf16>
    %alloc_10 = memref.alloc() : memref<4x10xf32>
    %alloc_11 = memref.alloc() : memref<13xi16>
    %alloc_12 = memref.alloc() : memref<4x10xf16>
    %alloc_13 = memref.alloc() : memref<10x4x13xf32>
    %alloc_14 = memref.alloc() : memref<4x13xi1>
    %alloc_15 = memref.alloc() : memref<10x4x13xi1>
    %alloc_16 = memref.alloc() : memref<4x10xi16>
    %alloc_17 = memref.alloc() : memref<4x10xf32>
    %alloc_18 = memref.alloc() : memref<10x4x13xf32>
    %alloc_19 = memref.alloc() : memref<10x4x13xf16>
    %alloc_20 = memref.alloc() : memref<10x4x13xi1>
    %alloc_21 = memref.alloc() : memref<4x13xi1>
    %alloc_22 = memref.alloc() : memref<4x10xi64>
    %16 = tensor.empty() : tensor<10x4x13xi64>
    %17 = linalg.copy ins(%6 : tensor<10x4x13xi64>) outs(%16 : tensor<10x4x13xi64>) -> tensor<10x4x13xi64>
    %18 = tensor.empty() : tensor<13x10x4xf32>
    %transposed = linalg.transpose ins(%alloc_18 : memref<10x4x13xf32>) outs(%18 : tensor<13x10x4xf32>) permutation = [2, 0, 1] 
    %alloc_23 = memref.alloc() : memref<4xi64>
    linalg.reduce ins(%3 : tensor<4x13xi64>) outs(%alloc_23 : memref<4xi64>) dimensions = [1] 
      (%in: i64, %init: i64) {
        %253 = arith.remsi %c1052194578_i32, %c1052194578_i32 : i32
        %254 = index.ceildivu %c8, %c1
        %255 = math.fma %13, %13, %13 : tensor<10x4x13xf32>
        %256 = arith.minsi %false_2, %false : i1
        %257 = affine.min affine_map<(d0) -> (d0 ceildiv 2, d0 mod 2)>(%c7)
        %alloc_56 = memref.alloc() : memref<4x10xi16>
        %258 = vector.broadcast %cst_1 : f16 to vector<13xf16>
        %259 = vector.broadcast %false : i1 to vector<13xi1>
        %260 = vector.maskedload %alloc_19[%c2, %c2, %c10], %259, %258 : memref<10x4x13xf16>, vector<13xi1>, vector<13xf16> into vector<13xf16>
        %generated_57 = tensor.generate %c7 {
        ^bb0(%arg1: index, %arg2: index):
          %261 = arith.negf %cst : f32
          %rank = tensor.rank %10 : tensor<13xi1>
          %262 = vector.broadcast %c3 : index to vector<9xindex>
          %263 = vector.broadcast %true : i1 to vector<9xi1>
          vector.scatter %alloc_20[%c0, %c1, %c11] [%262], %263, %263 : memref<10x4x13xi1>, vector<9xindex>, vector<9xi1>, vector<9xi1>
          %264 = arith.divf %cst_1, %cst_1 : f16
          tensor.yield %false : i1
        } : tensor<?x13xi1>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %19 = scf.parallel (%arg1) = (%c15) to (%c1) step (%c9) init (%false) -> i1 {
      scf.index_switch %c0 
      case 1 {
        %true_60 = index.bool.constant true
        %267 = tensor.empty() : tensor<4x13xi32>
        %268 = math.fpowi %5, %267 : tensor<4x13xf16>, tensor<4x13xi32>
        %269 = arith.minsi %true, %false_2 : i1
        %alloc_61 = memref.alloc() : memref<4x13xf16>
        %270 = index.maxu %c11, %c15
        %271 = vector.broadcast %c-14576_i16 : i16 to vector<13xi16>
        %272 = vector.broadcast %false : i1 to vector<13xi1>
        %273 = vector.maskedload %alloc_11[%c11], %272, %271 : memref<13xi16>, vector<13xi1>, vector<13xi16> into vector<13xi16>
        affine.store %cst_5, %alloc_18[%c12, %c13, %c14] : memref<10x4x13xf32>
        %alloc_62 = memref.alloc() : memref<13xi32>
        %cst_63 = arith.constant 0x4DB28F6B : f32
        %274 = vector.flat_transpose %272 {columns = 13 : i32, rows = 1 : i32} : vector<13xi1> -> vector<13xi1>
        %275 = vector.broadcast %c1531692190_i64 : i64 to vector<i64>
        vector.transfer_write %275, %alloc_23[%c11] : vector<i64>, memref<4xi64>
        %276 = vector.shuffle %271, %273 [2, 4, 5, 8, 15, 19, 20, 23] : vector<13xi16>, vector<13xi16>
        %277 = arith.minf %cst_3, %cst_4 : f32
        %278 = vector.transpose %275, [] : vector<i64> to vector<i64>
        memref.assume_alignment %alloc_13, 1 : memref<10x4x13xf32>
        %279 = math.log2 %5 : tensor<4x13xf16>
        scf.yield
      }
      case 2 {
        %267 = math.copysign %1, %1 : tensor<13xf16>
        %268 = vector.broadcast %cst_5 : f32 to vector<13xf32>
        %269 = index.ceildivu %c7, %c1
        %270 = index.ceildivu %c3, %c14
        %from_elements_60 = tensor.from_elements %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32 : tensor<10x4x13xi32>
        %271 = math.ctlz %8 : tensor<10x4x13xi16>
        %272 = index.mul %c12, %c11
        %273 = vector.shuffle %268, %268 [0, 1, 2, 4, 5, 9, 10, 14, 15, 17, 19, 21, 23, 25] : vector<13xf32>, vector<13xf32>
        %274 = index.divs %c15, %c1
        %275 = affine.min affine_map<(d0) -> (d0 * 32, (d0 mod 64) * 128 + d0, (d0 ceildiv 8) mod 4)>(%c3)
        %276 = arith.shli %c27645_i16, %c-14576_i16 : i16
        %277 = arith.addf %cst_0, %cst_5 : f32
        %278 = vector.broadcast %c490147963_i32 : i32 to vector<i32>
        %279 = vector.transfer_write %278, %11[%c4] : vector<i32>, tensor<13xi32>
        %280 = index.ceildivu %274, %c2
        %281 = arith.divsi %c1531692190_i64, %c1531692190_i64 : i64
        %282 = math.exp2 %5 : tensor<4x13xf16>
        scf.yield
      }
      default {
        memref.store %c1531692190_i64, %alloc_23[%c2] : memref<4xi64>
        %267 = arith.andi %c1052194578_i32, %c1052194578_i32 : i32
        %268 = memref.load %alloc_20[%c7, %c3, %c1] : memref<10x4x13xi1>
        %269 = vector.broadcast %c1052194578_i32 : i32 to vector<4x13xi32>
        %270 = vector.broadcast %false_2 : i1 to vector<4x13xi1>
        %271 = vector.gather %15[%c10, %c11] [%269], %270, %269 : tensor<4x10xi32>, vector<4x13xi32>, vector<4x13xi1>, vector<4x13xi32> into vector<4x13xi32>
        %272 = math.roundeven %transposed : tensor<13x10x4xf32>
        %273 = arith.divsi %false_2, %false : i1
        %274 = index.maxu %c12, %c2
        %inserted_60 = tensor.insert %c-14576_i16 into %9[%c3, %c11] : tensor<4x13xi16>
        %275 = arith.cmpf oge, %cst_4, %cst_5 : f32
        %276 = arith.cmpf ule, %cst_4, %cst_3 : f32
        %277 = index.mul %c13, %c5
        %cast_61 = tensor.cast %16 : tensor<10x4x13xi64> to tensor<?x?x?xi64>
        %278 = index.ceildivu %c4, %c3
        affine.store %cst_7, %alloc_17[%c8, %c3] : memref<4x10xf32>
        %279 = arith.negf %cst_6 : f16
        %280 = math.log2 %cst_6 : f16
      }
      %253 = math.floor %1 : tensor<13xf16>
      %254 = arith.remf %cst_0, %cst_7 : f32
      %alloc_56 = memref.alloc() : memref<13x10xi16>
      %255 = tensor.empty() : tensor<4x10xi16>
      %256 = linalg.matmul ins(%9, %alloc_56 : tensor<4x13xi16>, memref<13x10xi16>) outs(%255 : tensor<4x10xi16>) -> tensor<4x10xi16>
      %257 = arith.divui %c1531692190_i64, %c1531692190_i64 : i64
      %true_57 = index.bool.constant true
      %258 = affine.min affine_map<(d0, d1, d2) -> (d1, d2 + 2, -d0 - (d1 + 64) - 8)>(%c3, %c2, %c6)
      scf.if %false_2 {
        %267 = arith.divui %c27645_i16, %c-14576_i16 : i16
        %268 = arith.negf %cst_0 : f32
        %269 = index.maxu %c11, %arg1
        %270 = math.absf %cst_6 : f16
        %271 = math.log1p %cst_0 : f32
        %272 = math.floor %5 : tensor<4x13xf16>
        %collapsed_60 = tensor.collapse_shape %18 [[0, 1], [2]] : tensor<13x10x4xf32> into tensor<130x4xf32>
        %273 = arith.minf %cst_4, %cst_3 : f32
      } else {
        %267 = vector.broadcast %cst_1 : f16 to vector<4x10xf16>
        %268 = vector.shuffle %267, %267 [1, 2, 7] : vector<4x10xf16>, vector<4x10xf16>
        %269 = bufferization.clone %alloc_23 : memref<4xi64> to memref<4xi64>
        %inserted_60 = tensor.insert %c1531692190_i64 into %3[%c2, %c8] : tensor<4x13xi64>
        %270 = math.round %cst_1 : f16
        %271 = math.round %cst_0 : f32
        %272 = index.castu %c0 : index to i32
        %273 = vector.broadcast %c1531692190_i64 : i64 to vector<1xi64>
        %274 = vector.multi_reduction <xor>, %273, %c1531692190_i64 [0] : vector<1xi64> to i64
        %alloca_61 = memref.alloca() : memref<13xf32>
      }
      %259 = arith.remui %false, %true_57 : i1
      %260 = arith.shli %c1052194578_i32, %c1052194578_i32 : i32
      %261 = math.fma %cst_3, %cst_0, %cst_7 : f32
      scf.index_switch %c9 
      case 1 {
        %267 = bufferization.to_tensor %alloc_22 : memref<4x10xi64>
        %268 = bufferization.clone %alloc_21 : memref<4x13xi1> to memref<4x13xi1>
        memref.assume_alignment %alloc_15, 4 : memref<10x4x13xi1>
        %269 = arith.remf %cst_3, %cst : f32
        %270 = math.atan %cst : f32
        %271 = arith.remui %true_57, %false_2 : i1
        %272 = index.ceildivu %c1, %c13
        %273 = math.roundeven %cst_5 : f32
        %274 = arith.minsi %c1531692190_i64, %c1531692190_i64 : i64
        %275 = math.copysign %cst_1, %cst_6 : f16
        %276 = arith.divui %false, %false : i1
        %277 = math.sqrt %cst_3 : f32
        %from_elements_60 = tensor.from_elements %false, %false, %true, %true_57, %true_57, %true, %false_2, %false_2, %true_57, %true, %true, %true_57, %true, %true_57, %true_57, %true_57, %true, %true_57, %true_57, %true_57, %false_2, %true_57, %true_57, %true, %true_57, %true, %true, %true, %false, %false_2, %true_57, %true, %false, %false_2, %false, %false_2, %true, %false_2, %false_2, %true_57, %false, %false_2, %true_57, %true_57, %false, %true, %true, %false_2, %false_2, %true, %false, %false, %false, %false, %false, %false_2, %false_2, %true_57, %true, %true_57, %true_57, %true, %false_2, %false, %true_57, %false, %false_2, %false_2, %false_2, %true, %false_2, %true, %true, %true, %false, %true, %true, %false_2, %false_2, %false_2, %true_57, %true_57, %true, %true, %true, %true, %false, %false_2, %true, %true, %false, %false_2, %false_2, %false_2, %true_57, %true, %false, %true_57, %true, %true_57, %false_2, %true_57, %false_2, %true_57, %true_57, %false_2, %true, %false_2, %false_2, %true, %false, %true_57, %true, %false, %true_57, %false, %false, %true, %true_57, %false_2, %true_57, %false_2, %false_2, %false_2, %false, %false, %true_57, %false_2, %true, %false_2, %false, %true, %false, %true, %true_57, %false_2, %false_2, %false, %false, %true, %false, %false_2, %false_2, %false_2, %false, %false_2, %false, %false_2, %false, %false, %true, %true, %false, %true, %true_57, %false_2, %true, %true, %false, %true_57, %true, %false_2, %false, %true, %false_2, %false, %false, %true, %false, %false, %false_2, %true, %true_57, %false, %false, %false, %false, %false, %true_57, %false, %false_2, %true_57, %true, %false_2, %true_57, %false_2, %true_57, %false, %false, %true, %false, %true, %false, %false, %false, %false, %false_2, %true, %true, %true, %false_2, %false_2, %true_57, %true, %true, %true_57, %false, %true, %true_57, %false, %true_57, %false_2, %false_2, %true_57, %true_57, %false, %false_2, %false, %true_57, %true_57, %true_57, %false, %true_57, %false, %false_2, %false_2, %false_2, %false, %true, %false_2, %false_2, %false_2, %true_57, %true, %true_57, %false, %true_57, %true, %false, %false, %true_57, %true, %false, %true_57, %true, %true_57, %true, %true, %false_2, %true_57, %true, %false, %false_2, %false, %false_2, %true, %true_57, %false, %true_57, %true, %false, %false_2, %true, %true_57, %false_2, %false, %true, %false_2, %true_57, %false, %true_57, %false, %true_57, %false_2, %false, %false, %false_2, %true, %false_2, %true, %true_57, %true, %true_57, %false_2, %false_2, %true, %false_2, %true, %true_57, %true_57, %true_57, %true_57, %false, %true_57, %true, %false, %false_2, %true_57, %true, %true_57, %true_57, %false, %false, %false, %true, %true, %true, %true, %true, %false_2, %false, %false_2, %false, %false_2, %true, %false_2, %true, %false_2, %false, %false_2, %false_2, %false, %false, %true, %false_2, %true, %false_2, %true, %false, %true_57, %false, %true_57, %true, %false, %true, %false, %false, %true, %false, %true, %false, %true, %true_57, %true, %true_57, %true, %true, %false_2, %true, %true, %true, %true_57, %true_57, %true, %true_57, %false, %false, %false_2, %true, %false, %false_2, %false_2, %false, %true_57, %false, %true_57, %true_57, %false_2, %false_2, %true, %false, %true_57, %false_2, %false_2, %false, %true, %true_57, %false, %true, %true_57, %false, %true, %false_2, %true, %true_57, %true, %false, %false_2, %true, %false_2, %true_57, %true_57, %true_57, %true, %true, %false, %false, %true, %true, %false, %false_2, %false_2, %false, %true_57, %false, %false_2, %false, %true, %false, %false, %true, %false_2, %true_57, %true_57, %false, %true_57, %true, %true_57, %true_57, %false_2, %true, %true_57, %false, %false_2, %false_2, %true_57, %true_57, %false_2, %false, %false, %false, %true, %true_57, %false_2, %true_57, %true, %false_2, %false, %true, %true, %true_57, %true_57, %true, %false_2, %false_2, %true_57, %false, %false, %true, %true, %false, %true_57, %false_2, %true_57, %false, %true, %true, %true, %true, %false, %false, %false_2, %false_2, %false, %true_57, %false_2, %true, %false_2, %true_57, %true, %false_2, %true_57, %true, %false, %false_2, %true_57, %false, %true, %true_57, %false, %false, %true, %false_2, %false_2, %true_57, %false, %false, %true_57, %false_2, %true, %false, %false_2, %true, %false_2, %true, %false, %true_57, %false_2, %false_2, %false_2, %true, %false, %false_2, %false, %true_57, %false_2, %true_57, %false, %true, %true_57, %false, %true, %false_2, %false, %true, %true, %true_57, %true, %true, %true_57 : tensor<10x4x13xi1>
        %278 = math.log1p %cst_0 : f32
        %279 = math.fma %cst_0, %cst_5, %cst_7 : f32
        %280 = vector.broadcast %arg1 : index to vector<10xindex>
        %281 = vector.broadcast %false_2 : i1 to vector<10xi1>
        %282 = vector.broadcast %cst_3 : f32 to vector<10xf32>
        vector.scatter %alloc_18[%c6, %c2, %c0] [%280], %281, %282 : memref<10x4x13xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
        scf.yield
      }
      default {
        %267 = arith.maxui %c1052194578_i32, %c1052194578_i32 : i32
        %268 = arith.shrsi %c490147963_i32, %c490147963_i32 : i32
        %269 = vector.broadcast %cst_5 : f32 to vector<1xf32>
        %270 = vector.broadcast %cst_4 : f32 to vector<1xf32>
        %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %269, %270, %cst : vector<1xf32>, vector<1xf32> into f32
        %272 = vector.broadcast %cst_6 : f16 to vector<9xf16>
        %273 = vector.broadcast %true_57 : i1 to vector<9xi1>
        %274 = vector.maskedload %alloc_9[%c0, %c2, %c7], %273, %272 : memref<10x4x13xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %275 = math.tan %1 : tensor<13xf16>
        %276 = math.sqrt %5 : tensor<4x13xf16>
        %277 = math.log %cst_5 : f32
        %inserted_60 = tensor.insert %cst_3 into %13[%c0, %c3, %c1] : tensor<10x4x13xf32>
        %278 = bufferization.to_tensor %alloc_22 : memref<4x10xi64>
        %279 = vector.multi_reduction <mul>, %269, %cst_0 [0] : vector<1xf32> to f32
        %280 = index.sizeof
        %281 = vector.shuffle %269, %269 [0, 1] : vector<1xf32>, vector<1xf32>
        %282 = arith.addf %279, %cst_0 : f32
        %283 = vector.multi_reduction <maxf>, %269, %269 [] : vector<1xf32> to vector<1xf32>
        %alloc_61 = memref.alloc() : memref<13x9xi16>
        %284 = tensor.empty() : tensor<4x9xi16>
        %285 = linalg.matmul ins(%4, %alloc_61 : tensor<4x13xi16>, memref<13x9xi16>) outs(%284 : tensor<4x9xi16>) -> tensor<4x9xi16>
        %286 = math.floor %cst_7 : f32
      }
      %262 = vector.splat %c1 : vector<13xindex>
      %263 = vector.broadcast %c-14576_i16 : i16 to vector<13xi16>
      %264 = vector.matrix_multiply %263, %263 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xi16>, vector<13xi16>) -> vector<1xi16>
      %265 = vector.broadcast %c1 : index to vector<4xindex>
      %266 = vector.broadcast %false_2 : i1 to vector<4xi1>
      vector.scatter %alloc_21[%c0, %c5] [%265], %266, %266 : memref<4x13xi1>, vector<4xindex>, vector<4xi1>, vector<4xi1>
      %splat_58 = tensor.splat %cst_3 : tensor<4x13xf32>
      %false_59 = arith.constant false
      scf.reduce(%false_59)  : i1 {
      ^bb0(%arg2: i1, %arg3: i1):
        memref.store %cst, %alloc_18[%c6, %c0, %c5] : memref<10x4x13xf32>
        %267 = arith.remsi %false_59, %true : i1
        %268 = arith.andi %true_57, %false_59 : i1
        %splat_60 = tensor.splat %c1052194578_i32 : tensor<4x13xi32>
        %269 = arith.shrsi %arg2, %false_59 : i1
        %270 = math.fpowi %1, %11 : tensor<13xf16>, tensor<13xi32>
        %expanded = tensor.expand_shape %9 [[0], [1, 2]] : tensor<4x13xi16> into tensor<4x13x1xi16>
        %splat_61 = tensor.splat %cst_6 : tensor<4x13xf16>
        %true_62 = arith.constant true
        scf.reduce.return %true_62 : i1
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_21[%c4, %c12] : memref<4x13xi1>, vector<4xi1>
    affine.vector_store %20, %alloc_20[%c5, %c1, %c2] : memref<10x4x13xi1>, vector<4xi1>
    %alloc_24 = memref.alloc() : memref<13xi32>
    %21 = tensor.empty() : tensor<i32>
    %22 = linalg.dot ins(%11, %alloc_24 : tensor<13xi32>, memref<13xi32>) outs(%21 : tensor<i32>) -> tensor<i32>
    %23 = tensor.empty() : tensor<10x4x13xi64>
    %mapped = linalg.map ins(%0, %17, %0 : tensor<10x4x13xi64>, tensor<10x4x13xi64>, tensor<10x4x13xi64>) outs(%23 : tensor<10x4x13xi64>)
      (%in: i64, %in_56: i64, %in_57: i64) {
        %253 = vector.broadcast %c1531692190_i64 : i64 to vector<i64>
        vector.transfer_write %253, %alloc[%c6] : vector<i64>, memref<13xi64>
        %254 = vector.insert %true, %20 [1] : i1 into vector<4xi1>
        %255 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %20, %20, %true : vector<4xi1>, vector<4xi1> into i1
        %256 = arith.divui %c-14576_i16, %c27645_i16 : i16
        %257 = arith.minf %cst_0, %cst_0 : f32
        %rank = tensor.rank %23 : tensor<10x4x13xi64>
        %alloca_58 = memref.alloca() : memref<4x10xi64>
        %258 = index.sub %rank, %c4
        %259 = math.log2 %5 : tensor<4x13xf16>
        %alloc_59 = memref.alloc() : memref<4x13xf32>
        %260 = vector.broadcast %cst_0 : f32 to vector<10x4x13xf32>
        %261 = vector.broadcast %true : i1 to vector<10x4x13xi1>
        %262 = vector.broadcast %c1052194578_i32 : i32 to vector<10x4x13xi32>
        %263 = vector.gather %alloc_59[%c1, %c10] [%262], %261, %260 : memref<4x13xf32>, vector<10x4x13xi32>, vector<10x4x13xi1>, vector<10x4x13xf32> into vector<10x4x13xf32>
        memref.store %cst_4, %alloc_17[%c0, %c9] : memref<4x10xf32>
        %264 = math.absf %5 : tensor<4x13xf16>
        %splat_60 = tensor.splat %c27645_i16 : tensor<4x13xi16>
        %inserted_61 = tensor.insert %in_57 into %6[%c9, %c0, %c10] : tensor<10x4x13xi64>
        %265 = index.maxs %258, %258
        %266 = arith.mulf %cst, %cst_7 : f32
        %rank_62 = tensor.rank %18 : tensor<13x10x4xf32>
        %generated_63 = tensor.generate %c2 {
        ^bb0(%arg1: index):
          %280 = math.log2 %1 : tensor<13xf16>
          %281 = arith.remf %cst_5, %cst : f32
          %282 = vector.create_mask %arg1 : vector<13xi1>
          %283 = arith.maxui %c1052194578_i32, %c490147963_i32 : i32
          tensor.yield %true : i1
        } : tensor<?xi1>
        %267 = math.cttz %c490147963_i32 : i32
        %268 = math.atan %cst_3 : f32
        %269 = vector.broadcast %cst_5 : f32 to vector<13xf32>
        %270 = vector.multi_reduction <mul>, %260, %269 [0, 1] : vector<10x4x13xf32> to vector<13xf32>
        %271 = arith.divsi %in_56, %in_57 : i64
        %272 = arith.xori %in, %in_57 : i64
        %273 = index.castu %c1052194578_i32 : i32 to index
        %274 = math.round %transposed : tensor<13x10x4xf32>
        %collapsed_64 = tensor.collapse_shape %5 [[0, 1]] : tensor<4x13xf16> into tensor<52xf16>
        %275 = index.maxu %265, %c5
        %276 = tensor.empty() : tensor<4x13xi1>
        %277 = math.tan %cst : f32
        %278 = arith.cmpi slt, %c1052194578_i32, %c1052194578_i32 : i32
        %279 = arith.remui %false, %false_2 : i1
        %from_elements_65 = tensor.from_elements %true, %false, %true, %true, %true, %true, %false_2, %true, %false_2, %false, %false, %false_2, %false, %false, %true, %true, %true, %false_2, %true, %false, %true, %false, %true, %true, %false_2, %false, %true, %true, %true, %false_2, %false_2, %false, %false_2, %false_2, %false, %true, %true, %false, %false_2, %true, %false, %false, %true, %false_2, %false, %true, %false, %false_2, %false, %true, %true, %false_2 : tensor<4x13xi1>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %24 = arith.andi %c1052194578_i32, %c490147963_i32 : i32
    %25 = arith.divui %false_2, %false : i1
    %26 = vector.multi_reduction <xor>, %20, %false [0] : vector<4xi1> to i1
    %27 = math.round %cst_5 : f32
    %28 = math.log %cst_7 : f32
    %29 = math.absf %5 : tensor<4x13xf16>
    %30 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
    %31 = math.copysign %1, %1 : tensor<13xf16>
    scf.if %26 {
      %253 = math.cttz %16 : tensor<10x4x13xi64>
      %254 = scf.while (%arg1 = %c490147963_i32) : (i32) -> i32 {
        %261 = vector.broadcast %cst_7 : f32 to vector<13xf32>
        %262 = vector.broadcast %26 : i1 to vector<13xi1>
        %263 = vector.maskedload %alloc_18[%c7, %c0, %c12], %262, %261 : memref<10x4x13xf32>, vector<13xi1>, vector<13xf32> into vector<13xf32>
        %264 = math.log1p %cst_3 : f32
        %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %262, %262, %26 : vector<13xi1>, vector<13xi1> into i1
        %266 = index.casts %c5 : index to i32
        %267 = math.sqrt %cst_0 : f32
        %268 = math.cttz %c1052194578_i32 : i32
        %269 = arith.maxui %arg1, %c1052194578_i32 : i32
        %270 = arith.minui %c490147963_i32, %arg1 : i32
        scf.condition(%false_2) %c490147963_i32 : i32
      } do {
      ^bb0(%arg1: i32):
        %261 = vector.extract %30[2] : vector<4xi1>
        %262 = math.absi %c1052194578_i32 : i32
        %263 = bufferization.clone %alloc_12 : memref<4x10xf16> to memref<4x10xf16>
        %264 = affine.max affine_map<(d0) -> (d0 + 128)>(%c2)
        %265 = math.sqrt %1 : tensor<13xf16>
        %266 = math.absf %cst_0 : f32
        %267 = math.cttz %16 : tensor<10x4x13xi64>
        %alloca_57 = memref.alloca() : memref<4x10xf32>
        %268 = math.tan %13 : tensor<10x4x13xf32>
        vector.print %30 : vector<4xi1>
        %inserted_58 = tensor.insert %c1531692190_i64 into %3[%c2, %c6] : tensor<4x13xi64>
        %alloc_59 = memref.alloc() : memref<10x10xi1>
        %269 = tensor.empty() : tensor<4x10xi1>
        %270 = linalg.matmul ins(%2, %alloc_59 : tensor<4x10xi1>, memref<10x10xi1>) outs(%269 : tensor<4x10xi1>) -> tensor<4x10xi1>
        %271 = arith.maxf %cst_5, %cst : f32
        %272 = arith.maxf %cst_7, %cst_4 : f32
        %273 = vector.reduction <maxsi>, %20 : vector<4xi1> into i1
        %274 = arith.remf %cst_3, %cst_7 : f32
        scf.yield %c490147963_i32 : i32
      }
      %255 = arith.andi %26, %26 : i1
      %256 = math.ctpop %22 : tensor<i32>
      %257 = math.cttz %11 : tensor<13xi32>
      scf.index_switch %c13 
      case 1 {
        %261 = math.log2 %1 : tensor<13xf16>
        %262 = vector.shuffle %20, %20 [2, 6] : vector<4xi1>, vector<4xi1>
        %263 = index.floordivs %c1, %c9
        %264 = arith.ori %c1052194578_i32, %c1052194578_i32 : i32
        %265 = vector.create_mask %c12, %c5 : vector<4x13xi1>
        %266 = affine.max affine_map<(d0, d1) -> (d0 + 64)>(%c8, %c14)
        %inserted_57 = tensor.insert %cst_0 into %13[%c6, %c1, %c0] : tensor<10x4x13xf32>
        %267 = vector.load %alloc_20[%c9, %c0, %c0] : memref<10x4x13xi1>, vector<4x10xi1>
        %268 = math.fma %13, %13, %13 : tensor<10x4x13xf32>
        %269 = arith.shrui %c1531692190_i64, %c1531692190_i64 : i64
        %270 = arith.shli %c-14576_i16, %c-14576_i16 : i16
        %271 = math.absi %8 : tensor<10x4x13xi16>
        %272 = math.ctpop %0 : tensor<10x4x13xi64>
        %273 = vector.broadcast %true : i1 to vector<4x13xi1>
        %from_elements_58 = tensor.from_elements %cst_1, %cst_1, %cst_6, %cst_1, %cst_6, %cst_6, %cst_1, %cst_6, %cst_1, %cst_6, %cst_1, %cst_1, %cst_1, %cst_1, %cst_6, %cst_1, %cst_1, %cst_6, %cst_1, %cst_1, %cst_1, %cst_6, %cst_1, %cst_6, %cst_1, %cst_1, %cst_1, %cst_1, %cst_6, %cst_6, %cst_6, %cst_6, %cst_1, %cst_6, %cst_6, %cst_1, %cst_6, %cst_1, %cst_6, %cst_6 : tensor<4x10xf16>
        %274 = arith.maxui %c490147963_i32, %c490147963_i32 : i32
        scf.yield
      }
      case 2 {
        %261 = math.cttz %6 : tensor<10x4x13xi64>
        %262 = vector.matrix_multiply %20, %30 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %263 = arith.remsi %26, %26 : i1
        %264 = vector.broadcast %cst_3 : f32 to vector<f32>
        %265 = vector.transfer_write %264, %18[%c0, %c6, %c6] : vector<f32>, tensor<13x10x4xf32>
        %266 = math.exp2 %13 : tensor<10x4x13xf32>
        %267 = vector.broadcast %c1052194578_i32 : i32 to vector<13xi32>
        %268 = vector.broadcast %false_2 : i1 to vector<13xi1>
        %269 = vector.maskedload %alloc_24[%c12], %268, %267 : memref<13xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
        %270 = vector.extract %262[0] : vector<1xi1>
        %271 = tensor.empty(%c14) : tensor<4x?xi16>
        %272 = vector.shuffle %262, %20 [1, 2] : vector<1xi1>, vector<4xi1>
        %273 = math.tan %cst_6 : f16
        %274 = vector.insert %26, %20 [1] : i1 into vector<4xi1>
        %275 = arith.subi %false, %26 : i1
        %276 = tensor.empty() : tensor<4x13xi32>
        %277 = arith.remf %cst, %cst_0 : f32
        %278 = arith.remf %cst_3, %cst_4 : f32
        %279 = index.add %c15, %c15
        scf.yield
      }
      case 3 {
        %261 = arith.cmpf false, %cst, %cst_7 : f32
        %262 = math.rsqrt %cst_7 : f32
        memref.assume_alignment %alloc_13, 2 : memref<10x4x13xf32>
        %extracted_57 = tensor.extract %16[%c0, %c0, %c2] : tensor<10x4x13xi64>
        %263 = math.powf %5, %5 : tensor<4x13xf16>
        %264 = math.roundeven %cst_0 : f32
        %265 = vector.reduction <add>, %30 : vector<4xi1> into i1
        %splat_58 = tensor.splat %false_2 : tensor<4x13xi1>
        %266 = math.log1p %cst_1 : f16
        memref.store %c490147963_i32, %alloc_24[%c9] : memref<13xi32>
        %267 = vector.reduction <minsi>, %20 : vector<4xi1> into i1
        %268 = arith.divui %c1531692190_i64, %extracted_57 : i64
        %269 = math.sqrt %13 : tensor<10x4x13xf32>
        %270 = bufferization.clone %alloc_22 : memref<4x10xi64> to memref<4x10xi64>
        %271 = arith.cmpi ne, %c27645_i16, %c-14576_i16 : i16
        %272 = math.ctpop %22 : tensor<i32>
        scf.yield
      }
      case 4 {
        %261 = vector.broadcast %c14 : index to vector<9xindex>
        %262 = vector.broadcast %26 : i1 to vector<9xi1>
        %263 = vector.broadcast %cst : f32 to vector<9xf32>
        vector.scatter %alloc_18[%c6, %c1, %c7] [%261], %262, %263 : memref<10x4x13xf32>, vector<9xindex>, vector<9xi1>, vector<9xf32>
        %c962929884_i32 = arith.constant 962929884 : i32
        %264 = index.ceildivu %c14, %c9
        %extracted_57 = tensor.extract %1[%c5] : tensor<13xf16>
        %265 = affine.min affine_map<(d0, d1) -> (d1 + 64)>(%c15, %c10)
        %266 = arith.minui %c27645_i16, %c27645_i16 : i16
        memref.store %26, %alloc_20[%c4, %c2, %c11] : memref<10x4x13xi1>
        %267 = bufferization.to_memref %0 : memref<10x4x13xi64>
        %268 = math.absf %cst_0 : f32
        %269 = math.cttz %0 : tensor<10x4x13xi64>
        %cast_58 = tensor.cast %3 : tensor<4x13xi64> to tensor<?x?xi64>
        %270 = math.copysign %cst, %cst_0 : f32
        %271 = arith.maxui %true, %false_2 : i1
        %272 = arith.minui %c1531692190_i64, %c1531692190_i64 : i64
        memref.assume_alignment %alloc_13, 4 : memref<10x4x13xf32>
        %273 = arith.cmpi ugt, %c490147963_i32, %c1052194578_i32 : i32
        scf.yield
      }
      default {
        %261 = arith.remf %cst_0, %cst_7 : f32
        %262 = index.castu %c2 : index to i32
        memref.assume_alignment %alloc_10, 1 : memref<4x10xf32>
        %263 = bufferization.to_memref %16 : memref<10x4x13xi64>
        %264 = arith.remf %cst_4, %cst : f32
        %265 = math.absf %cst_3 : f32
        %inserted_57 = tensor.insert %c1531692190_i64 into %3[%c1, %c4] : tensor<4x13xi64>
        %266 = arith.maxui %false_2, %26 : i1
        %267 = affine.apply affine_map<(d0, d1) -> (d1 - 128)>(%c0, %c3)
        %alloca_58 = memref.alloca() : memref<4x10xi32>
        %268 = vector.broadcast %c27645_i16 : i16 to vector<10x4x13xi16>
        %269 = vector.broadcast %false_2 : i1 to vector<10x4x13xi1>
        %270 = vector.broadcast %c490147963_i32 : i32 to vector<10x4x13xi32>
        %271 = vector.gather %alloc_16[%c3, %c8] [%270], %269, %268 : memref<4x10xi16>, vector<10x4x13xi32>, vector<10x4x13xi1>, vector<10x4x13xi16> into vector<10x4x13xi16>
        %272 = arith.divsi %c1531692190_i64, %c1531692190_i64 : i64
        %273 = math.round %cst_5 : f32
        memref.store %cst_3, %alloc_13[%c6, %c1, %c1] : memref<10x4x13xf32>
        %274 = math.sqrt %13 : tensor<10x4x13xf32>
        %275 = vector.load %alloc_13[%c5, %c2, %c2] : memref<10x4x13xf32>, vector<4x10xf32>
      }
      %258 = memref.load %alloc_9[%c1, %c0, %c6] : memref<10x4x13xf16>
      %259 = tensor.empty() : tensor<10xi64>
      %alloc_56 = memref.alloc() : memref<13x10xi64>
      %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%259, %alloc_56, %alloc_23 : tensor<10xi64>, memref<13x10xi64>, memref<4xi64>) outs(%0 : tensor<10x4x13xi64>) {
      ^bb0(%in: i64, %in_57: i64, %in_58: i64, %out: i64):
        %261 = index.ceildivu %c0, %c4
        memref.copy %alloc_9, %alloc_19 : memref<10x4x13xf16> to memref<10x4x13xf16>
        %262 = arith.divui %c1531692190_i64, %in_58 : i64
        %263 = math.round %cst_5 : f32
        %extracted_59 = tensor.extract %9[%c1, %c4] : tensor<4x13xi16>
        %inserted_60 = tensor.insert %c490147963_i32 into %15[%c0, %c1] : tensor<4x10xi32>
        %264 = arith.cmpi ne, %c-14576_i16, %c-14576_i16 : i16
        %265 = bufferization.clone %alloc_16 : memref<4x10xi16> to memref<4x10xi16>
        %266 = arith.shrui %c-14576_i16, %c27645_i16 : i16
        %267 = math.tan %cst_1 : f16
        %268 = vector.shuffle %20, %20 [1, 2, 5, 6] : vector<4xi1>, vector<4xi1>
        %269 = arith.remf %cst_0, %cst_4 : f32
        %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %30, %20, %true : vector<4xi1>, vector<4xi1> into i1
        %271 = vector.transpose %20, [0] : vector<4xi1> to vector<4xi1>
        %272 = index.sizeof
        %273 = index.floordivs %c10, %c10
        %274 = arith.divui %false, %26 : i1
        %extracted_61 = tensor.extract %3[%c1, %c9] : tensor<4x13xi64>
        %275 = arith.negf %cst_7 : f32
        %276 = math.cttz %9 : tensor<4x13xi16>
        %277 = vector.extract %20[3] : vector<4xi1>
        %278 = math.exp2 %13 : tensor<10x4x13xf32>
        %279 = index.sub %c4, %c0
        %280 = arith.xori %out, %in : i64
        %281 = math.log %13 : tensor<10x4x13xf32>
        %282 = vector.reduction <maxui>, %30 : vector<4xi1> into i1
        %283 = vector.splat %26 : vector<10x4x13xi1>
        %284 = arith.divui %extracted_59, %c27645_i16 : i16
        %285 = index.sub %c0, %c0
        %286 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %287 = vector.flat_transpose %30 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %288 = index.add %c11, %279
        linalg.yield %in_58 : i64
      } -> tensor<10x4x13xi64>
    }
    %32 = vector.broadcast %c-14576_i16 : i16 to vector<4xi16>
    %33 = vector.maskedload %alloc_8[%c8, %c2, %c11], %30, %32 : memref<10x4x13xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
    %splat = tensor.splat %cst_4 : tensor<10x4x13xf32>
    %34 = arith.shrsi %c490147963_i32, %c490147963_i32 : i32
    %35 = index.maxu %c4, %c8
    %36 = scf.index_switch %c8 -> i64 
    case 1 {
      %253 = arith.remui %c1052194578_i32, %c490147963_i32 : i32
      %254 = math.atan %cst : f32
      %255 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %33, %33, %c27645_i16 : vector<4xi16>, vector<4xi16> into i16
      %256 = math.log2 %cst_7 : f32
      %257 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %30, %30, %26 : vector<4xi1>, vector<4xi1> into i1
      %258 = vector.flat_transpose %30 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
      %259 = tensor.empty() : tensor<13xf32>
      %260 = vector.broadcast %cst_3 : f32 to vector<4x10xf32>
      %261 = vector.broadcast %false_2 : i1 to vector<4x10xi1>
      %262 = vector.broadcast %c1052194578_i32 : i32 to vector<4x10xi32>
      %263 = vector.gather %259[%35] [%262], %261, %260 : tensor<13xf32>, vector<4x10xi32>, vector<4x10xi1>, vector<4x10xf32> into vector<4x10xf32>
      %264 = bufferization.to_tensor %alloc_18 : memref<10x4x13xf32>
      %265 = math.exp2 %18 : tensor<13x10x4xf32>
      %266 = index.maxu %c14, %c8
      %true_56 = index.bool.constant true
      scf.execute_region {
        %269 = vector.broadcast %cst_7 : f32 to vector<10xf32>
        %270 = vector.multi_reduction <add>, %263, %269 [0] : vector<4x10xf32> to vector<10xf32>
        %271 = vector.extract %20[2] : vector<4xi1>
        %272 = bufferization.to_memref %12 : memref<4x10xi64>
        %273 = arith.minsi %26, %true : i1
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %258, %30, %true_56 : vector<4xi1>, vector<4xi1> into i1
        %275 = vector.broadcast %cst_7 : f32 to vector<f32>
        vector.transfer_write %275, %alloc_17[%35, %c13] : vector<f32>, memref<4x10xf32>
        %276 = memref.load %alloc_10[%c0, %c9] : memref<4x10xf32>
        %277 = math.round %13 : tensor<10x4x13xf32>
        %278 = index.maxs %c2, %c1
        %279 = affine.max affine_map<(d0) -> (d0, d0 + d0 + d0 - 4 + d0 - 4)>(%c2)
        %280 = math.sqrt %13 : tensor<10x4x13xf32>
        %281 = vector.broadcast %c2 : index to vector<4xindex>
        %282 = vector.broadcast %cst_1 : f16 to vector<4xf16>
        vector.scatter %alloc_12[%c3, %c4] [%281], %20, %282 : memref<4x10xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        %283 = arith.minf %cst_0, %cst_3 : f32
        %284 = math.log %1 : tensor<13xf16>
        %285 = math.sqrt %5 : tensor<4x13xf16>
        %286 = tensor.empty(%c4) : tensor<10x4x?xi32>
        scf.yield
      }
      %267 = math.log2 %259 : tensor<13xf32>
      %rank = tensor.rank %5 : tensor<4x13xf16>
      %268 = math.floor %cst_0 : f32
      %inserted_57 = tensor.insert %c1531692190_i64 into %12[%c2, %c7] : tensor<4x10xi64>
      scf.yield %c1531692190_i64 : i64
    }
    default {
      %253 = math.log2 %cst_0 : f32
      %254 = arith.remsi %26, %false : i1
      %from_elements_56 = tensor.from_elements %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64 : tensor<4x10xi64>
      %255 = index.sub %c4, %35
      %256 = math.atan %cst_5 : f32
      %257 = vector.load %alloc_13[%c7, %c3, %c2] : memref<10x4x13xf32>, vector<4x10xf32>
      %258 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
      %259 = arith.minf %cst_4, %cst_3 : f32
      %rank = tensor.rank %10 : tensor<13xi1>
      memref.store %cst_7, %alloc_10[%c2, %c9] : memref<4x10xf32>
      %260 = math.round %splat : tensor<10x4x13xf32>
      %extracted_57 = tensor.extract %7[%c0, %c1] : tensor<4x13xi64>
      %alloc_58 = memref.alloc() : memref<4xi64>
      memref.copy %alloc_23, %alloc_58 : memref<4xi64> to memref<4xi64>
      %261 = vector.broadcast %cst_5 : f32 to vector<4x10xf32>
      %262 = vector.fma %261, %257, %261 : vector<4x10xf32>
      %263 = vector.insert %c27645_i16, %32 [3] : i16 into vector<4xi16>
      %264 = index.sizeof
      scf.yield %c1531692190_i64 : i64
    }
    %37 = arith.remf %cst_1, %cst_6 : f16
    %38 = math.cttz %4 : tensor<4x13xi16>
    %39 = math.ctlz %c1531692190_i64 : i64
    %40 = scf.while (%arg1 = %alloc_22) : (memref<4x10xi64>) -> memref<4x10xi64> {
      %253 = math.roundeven %13 : tensor<10x4x13xf32>
      %254 = vector.multi_reduction <mul>, %32, %c27645_i16 [0] : vector<4xi16> to i16
      scf.execute_region {
        %260 = vector.broadcast %c11 : index to vector<10xindex>
        %261 = vector.broadcast %26 : i1 to vector<10xi1>
        %262 = vector.broadcast %254 : i16 to vector<10xi16>
        vector.scatter %alloc_8[%c5, %c1, %c6] [%260], %261, %262 : memref<10x4x13xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
        %263 = index.add %c6, %c15
        %264 = math.cos %cst_5 : f32
        %expanded = tensor.expand_shape %10 [[0, 1]] : tensor<13xi1> into tensor<13x1xi1>
        %alloc_56 = memref.alloc() : memref<13x10xi64>
        %265 = tensor.empty() : tensor<4x10xi64>
        %266 = linalg.matmul ins(%7, %alloc_56 : tensor<4x13xi64>, memref<13x10xi64>) outs(%265 : tensor<4x10xi64>) -> tensor<4x10xi64>
        %267 = math.absi %12 : tensor<4x10xi64>
        %268 = index.castu %c1531692190_i64 : i64 to index
        memref.store %true, %alloc_20[%c6, %c0, %c8] : memref<10x4x13xi1>
        %269 = index.sizeof
        %270 = bufferization.clone %alloc_12 : memref<4x10xf16> to memref<4x10xf16>
        %271 = math.tan %cst_7 : f32
        %272 = arith.shrsi %c-14576_i16, %c27645_i16 : i16
        %273 = index.ceildivu %c5, %c8
        %274 = arith.cmpf false, %cst_0, %cst_4 : f32
        %275 = vector.broadcast %c1531692190_i64 : i64 to vector<10xi64>
        %276 = vector.broadcast %26 : i1 to vector<10xi1>
        %277 = vector.maskedload %alloc_23[%c3], %276, %275 : memref<4xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
        %278 = arith.remui %26, %true : i1
        scf.yield
      }
      %255 = vector.maskedload %alloc_8[%c7, %c0, %c2], %20, %33 : memref<10x4x13xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
      %256 = arith.divui %c490147963_i32, %c490147963_i32 : i32
      %257 = vector.extract_strided_slice %20 {offsets = [1], sizes = [3], strides = [1]} : vector<4xi1> to vector<3xi1>
      %258 = scf.index_switch %c1 -> memref<10x4x13xi1> 
      case 1 {
        %260 = arith.remui %true, %26 : i1
        %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %32, %33, %254 : vector<4xi16>, vector<4xi16> into i16
        %262 = arith.minf %cst_7, %cst_4 : f32
        %263 = bufferization.to_memref %1 : memref<13xf16>
        %264 = vector.extract %20[2] : vector<4xi1>
        %265 = arith.minf %cst_7, %cst_0 : f32
        %266 = affine.apply affine_map<(d0, d1) -> (d1 - 128)>(%c14, %c4)
        %267 = vector.transpose %20, [0] : vector<4xi1> to vector<4xi1>
        %268 = bufferization.clone %alloc_12 : memref<4x10xf16> to memref<4x10xf16>
        %269 = arith.cmpf false, %cst, %cst : f32
        %270 = math.copysign %cst_6, %cst_6 : f16
        %alloca_56 = memref.alloca() : memref<4x13xi16>
        %collapsed_57 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<10x4x13xi16> into tensor<40x13xi16>
        %c1391663373_i64 = arith.constant 1391663373 : i64
        %inserted_58 = tensor.insert %c490147963_i32 into %11[%c2] : tensor<13xi32>
        %271 = arith.muli %c1052194578_i32, %c1052194578_i32 : i32
        scf.yield %alloc_15 : memref<10x4x13xi1>
      }
      default {
        %extracted_56 = tensor.extract %1[%c3] : tensor<13xf16>
        %260 = vector.broadcast %false : i1 to vector<9xi1>
        %261 = vector.transfer_write %260, %2[%c9, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi1>, tensor<4x10xi1>
        %262 = affine.load %alloc_17[%c14, %c13] : memref<4x10xf32>
        %263 = arith.cmpf ult, %cst_4, %cst_7 : f32
        %264 = index.casts %c0 : index to i32
        %265 = index.add %c6, %c2
        %266 = arith.remf %extracted_56, %cst_6 : f16
        %inserted_57 = tensor.insert %c1531692190_i64 into %12[%c3, %c3] : tensor<4x10xi64>
        %267 = math.log2 %13 : tensor<10x4x13xf32>
        %collapsed_58 = tensor.collapse_shape %23 [[0, 1], [2]] : tensor<10x4x13xi64> into tensor<40x13xi64>
        %268 = math.exp2 %cst_0 : f32
        %269 = vector.matrix_multiply %260, %260 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi1>, vector<9xi1>) -> vector<1xi1>
        %270 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 2, d1 * 4 - (d1 * 4 - 8))>(%c9, %c11, %c12, %c11)
        %271 = math.ctpop %10 : tensor<13xi1>
        %272 = vector.create_mask %270, %c0 : vector<4x10xi1>
        %273 = arith.cmpf une, %262, %cst : f32
        scf.yield %alloc_15 : memref<10x4x13xi1>
      }
      %259 = scf.while (%arg2 = %255) : (vector<4xi16>) -> vector<4xi16> {
        %260 = math.tan %cst_0 : f32
        %261 = index.casts %c-14576_i16 : i16 to index
        %262 = vector.broadcast %c11 : index to vector<4xindex>
        vector.scatter %alloc_8[%c7, %c0, %c8] [%262], %30, %255 : memref<10x4x13xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
        %263 = index.ceildivu %35, %35
        %264 = arith.maxui %false_2, %true : i1
        %splat_56 = tensor.splat %c1531692190_i64 : tensor<4x13xi64>
        %265 = vector.insert %c-14576_i16, %32 [2] : i16 into vector<4xi16>
        %266 = vector.broadcast %c1531692190_i64 : i64 to vector<13xi64>
        %267 = vector.broadcast %false : i1 to vector<13xi1>
        %268 = vector.maskedload %alloc_23[%c3], %267, %266 : memref<4xi64>, vector<13xi1>, vector<13xi64> into vector<13xi64>
        scf.condition(%26) %33 : vector<4xi16>
      } do {
      ^bb0(%arg2: vector<4xi16>):
        %from_elements_56 = tensor.from_elements %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64 : tensor<4x13xi64>
        %260 = affine.load %alloc_12[%c2, %c10] : memref<4x10xf16>
        %alloca_57 = memref.alloca() : memref<13xf16>
        %splat_58 = tensor.splat %true : tensor<10x4x13xi1>
        %extracted_59 = tensor.extract %15[%c0, %c9] : tensor<4x10xi32>
        %extracted_60 = tensor.extract %6[%c9, %c2, %c7] : tensor<10x4x13xi64>
        %261 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 + d1) floordiv 2, -d1 - 2)>(%c5, %c5, %c5, %c12)
        %extracted_61 = tensor.extract %11[%c3] : tensor<13xi32>
        %262 = index.ceildivu %c11, %c11
        %263 = arith.andi %extracted_61, %extracted_59 : i32
        %264 = arith.minf %cst_3, %cst_0 : f32
        %265 = bufferization.to_memref %7 : memref<4x13xi64>
        %266 = tensor.empty(%c5) : tensor<10x?x13xf32>
        %267 = bufferization.clone %alloc_8 : memref<10x4x13xi16> to memref<10x4x13xi16>
        %268 = index.sub %c3, %c12
        %269 = vector.shuffle %255, %255 [0, 1] : vector<4xi16>, vector<4xi16>
        scf.yield %32 : vector<4xi16>
      }
      scf.condition(%true) %alloc_22 : memref<4x10xi64>
    } do {
    ^bb0(%arg1: memref<4x10xi64>):
      %253 = math.sqrt %cst_3 : f32
      affine.store %true, %alloc_20[%c8, %c8, %c0] : memref<10x4x13xi1>
      %254 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %32, %33, %c27645_i16 : vector<4xi16>, vector<4xi16> into i16
      %255 = vector.bitcast %32 : vector<4xi16> to vector<4xi16>
      %alloc_56 = memref.alloc() : memref<4x13xi64>
      memref.tensor_store %3, %alloc_56 : memref<4x13xi64>
      %256 = scf.index_switch %c10 -> i64 
      case 1 {
        %268 = math.cttz %false_2 : i1
        %269 = bufferization.to_memref %15 : memref<4x10xi32>
        %alloca_58 = memref.alloca() : memref<13xf16>
        %270 = bufferization.clone %alloc_24 : memref<13xi32> to memref<13xi32>
        %271 = arith.xori %c1531692190_i64, %c1531692190_i64 : i64
        %272 = math.roundeven %18 : tensor<13x10x4xf32>
        %273 = math.cttz %14 : tensor<10x4x13xi16>
        %274 = vector.load %alloc_10[%c3, %c8] : memref<4x10xf32>, vector<10x4x13xf32>
        %275 = index.casts %c1531692190_i64 : i64 to index
        %276 = index.maxu %275, %35
        %277 = math.tan %cst_3 : f32
        %278 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - 4)>(%c8, %c1, %c11, %c10)
        %279 = arith.remui %c1052194578_i32, %c490147963_i32 : i32
        %280 = math.log2 %5 : tensor<4x13xf16>
        %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %32, %33, %c27645_i16 : vector<4xi16>, vector<4xi16> into i16
        %282 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 * 2)>(%c15, %c5, %c3, %c1)
        scf.yield %c1531692190_i64 : i64
      }
      default {
        %268 = math.atan %13 : tensor<10x4x13xf32>
        %269 = math.absf %splat : tensor<10x4x13xf32>
        %270 = index.sub %c10, %c12
        %271 = math.absf %13 : tensor<10x4x13xf32>
        %272 = arith.remui %c1531692190_i64, %c1531692190_i64 : i64
        %273 = vector.splat %cst_5 : vector<4x10xf32>
        %274 = math.exp %5 : tensor<4x13xf16>
        %275 = math.log10 %cst : f32
        %276 = arith.subi %c490147963_i32, %c490147963_i32 : i32
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %30, %20, %true : vector<4xi1>, vector<4xi1> into i1
        %278 = arith.shrsi %c1531692190_i64, %c1531692190_i64 : i64
        %alloc_58 = memref.alloc() : memref<4x10xi64>
        %279 = memref.load %alloc_16[%c0, %c9] : memref<4x10xi16>
        %280 = math.floor %cst_0 : f32
        %281 = tensor.empty() : tensor<13xf32>
        %282 = math.tan %cst_3 : f32
        scf.yield %c1531692190_i64 : i64
      }
      %257 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 128)>(%c11, %c10, %c2)
      %258 = math.absf %5 : tensor<4x13xf16>
      %alloc_57 = memref.alloc() : memref<10x4x13xi1>
      %259 = arith.maxui %c1052194578_i32, %c1052194578_i32 : i32
      %260 = index.sub %c8, %c12
      %261 = math.expm1 %cst : f32
      %262 = math.round %13 : tensor<10x4x13xf32>
      %263 = bufferization.to_tensor %alloc_14 : memref<4x13xi1>
      %264 = arith.shli %c-14576_i16, %c27645_i16 : i16
      %265 = tensor.empty() : tensor<10x4xi1>
      %266 = tensor.empty() : tensor<4x4xi1>
      %267 = linalg.matmul ins(%2, %265 : tensor<4x10xi1>, tensor<10x4xi1>) outs(%266 : tensor<4x4xi1>) -> tensor<4x4xi1>
      scf.yield %arg1 : memref<4x10xi64>
    }
    %collapsed = tensor.collapse_shape %12 [[0, 1]] : tensor<4x10xi64> into tensor<40xi64>
    %41 = arith.minsi %c490147963_i32, %c1052194578_i32 : i32
    %42 = math.cttz %0 : tensor<10x4x13xi64>
    %43 = arith.maxui %false, %false : i1
    %44 = arith.maxui %false_2, %false : i1
    %45 = arith.muli %26, %26 : i1
    %46 = affine.load %alloc_20[%c11, %c7, %c14] : memref<10x4x13xi1>
    memref.store %26, %alloc_20[%c6, %c0, %c2] : memref<10x4x13xi1>
    %inserted = tensor.insert %c1531692190_i64 into %7[%c1, %c10] : tensor<4x13xi64>
    %47 = index.sizeof
    %48 = vector.broadcast %c0 : index to vector<9xindex>
    %49 = vector.broadcast %26 : i1 to vector<9xi1>
    %50 = vector.broadcast %cst : f32 to vector<9xf32>
    vector.scatter %alloc_18[%c7, %c0, %c11] [%48], %49, %50 : memref<10x4x13xf32>, vector<9xindex>, vector<9xi1>, vector<9xf32>
    %51 = math.exp2 %splat : tensor<10x4x13xf32>
    %52 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + d0, d3 + d0, d2 mod 32, d1)>(%47, %c3, %c8, %c4)
    scf.index_switch %c3 
    case 1 {
      %253 = index.casts %c1052194578_i32 : i32 to index
      %254 = math.round %cst_7 : f32
      %255 = vector.load %alloc_23[%c1] : memref<4xi64>, vector<10x4x13xi64>
      %256 = math.absi %false_2 : i1
      %257 = arith.ceildivsi %c27645_i16, %c27645_i16 : i16
      %258 = index.maxu %c0, %c9
      %259 = arith.remf %cst_4, %cst_5 : f32
      %cst_56 = arith.constant 1.02662106E+9 : f32
      %260 = math.exp %cst_6 : f16
      %from_elements_57 = tensor.from_elements %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64 : tensor<4x13xi64>
      %false_58 = arith.constant false
      %261 = vector.transpose %32, [0] : vector<4xi16> to vector<4xi16>
      %262 = memref.load %alloc_9[%c0, %c3, %c6] : memref<10x4x13xf16>
      %splat_59 = tensor.splat %cst_1 : tensor<10x4x13xf16>
      %263 = math.log %18 : tensor<13x10x4xf32>
      %264 = arith.remui %c1531692190_i64, %c1531692190_i64 : i64
      scf.yield
    }
    case 2 {
      scf.if %46 {
        %269 = arith.divui %46, %false_2 : i1
        %270 = vector.shuffle %20, %20 [0, 2, 4, 7] : vector<4xi1>, vector<4xi1>
        %271 = vector.broadcast %cst_0 : f32 to vector<13xf32>
        vector.transfer_write %271, %alloc_10[%c4, %52] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xf32>, memref<4x10xf32>
        %272 = math.sqrt %cst_1 : f16
        %273 = tensor.empty() : tensor<13x10x4xi32>
        %274 = math.fpowi %transposed, %273 : tensor<13x10x4xf32>, tensor<13x10x4xi32>
        memref.copy %alloc_21, %alloc_14 : memref<4x13xi1> to memref<4x13xi1>
        %275 = arith.addf %cst_0, %cst_5 : f32
        %276 = math.absf %13 : tensor<10x4x13xf32>
      } else {
        %269 = arith.andi %true, %true : i1
        %270 = math.atan2 %5, %5 : tensor<4x13xf16>
        %271 = vector.broadcast %true : i1 to vector<4x4xi1>
        %272 = vector.outerproduct %20, %20, %271 {kind = #vector.kind<and>} : vector<4xi1>, vector<4xi1>
        %273 = vector.matrix_multiply %33, %33 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        %274 = tensor.empty() : tensor<4x13xi32>
        %275 = index.divs %c11, %c13
        %276 = arith.andi %false, %false : i1
        %277 = arith.addf %cst_5, %cst_5 : f32
      }
      %253 = math.expm1 %1 : tensor<13xf16>
      %254 = math.exp2 %cst : f32
      %255 = affine.min affine_map<(d0, d1, d2) -> (d2 + 2, d2)>(%52, %52, %47)
      %256 = arith.muli %false, %46 : i1
      %257 = index.castu %46 : i1 to index
      %258 = arith.cmpf false, %cst_1, %cst_6 : f16
      %259 = arith.remf %cst_6, %cst_6 : f16
      scf.execute_region {
        %269 = vector.shuffle %33, %33 [2, 3, 5, 7] : vector<4xi16>, vector<4xi16>
        %270 = math.log %1 : tensor<13xf16>
        %271 = arith.floordivsi %c27645_i16, %c-14576_i16 : i16
        %272 = arith.cmpf une, %cst_6, %cst_6 : f16
        %273 = math.copysign %cst_3, %cst_0 : f32
        %c17758_i16 = arith.constant 17758 : i16
        %alloca_56 = memref.alloca() : memref<10x4x13xi1>
        %c-2038_i16 = arith.constant -2038 : i16
        %274 = arith.addf %cst, %cst_3 : f32
        %275 = math.log10 %13 : tensor<10x4x13xf32>
        %alloc_57 = memref.alloc() : memref<10x4x13xi16>
        %276 = bufferization.to_memref %13 : memref<10x4x13xf32>
        %277 = bufferization.to_memref %8 : memref<10x4x13xi16>
        %278 = math.cos %cst_6 : f16
        %279 = bufferization.to_memref %1 : memref<13xf16>
        %280 = arith.cmpf oeq, %cst_3, %cst_5 : f32
        scf.yield
      }
      %260 = arith.addf %cst_1, %cst_1 : f16
      %261 = arith.maxui %true, %26 : i1
      %262 = arith.addf %cst, %cst_0 : f32
      %263 = vector.broadcast %c7 : index to vector<10xindex>
      %264 = vector.broadcast %true : i1 to vector<10xi1>
      %265 = vector.broadcast %c27645_i16 : i16 to vector<10xi16>
      vector.scatter %alloc_16[%c3, %c5] [%263], %264, %265 : memref<4x10xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
      %266 = index.castu %false_2 : i1 to index
      %267 = arith.shrui %c-14576_i16, %c27645_i16 : i16
      %268 = math.round %cst : f32
      scf.yield
    }
    case 3 {
      %253 = vector.broadcast %c1052194578_i32 : i32 to vector<9xi32>
      %254 = vector.transfer_write %253, %15[%c13, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi32>, tensor<4x10xi32>
      %255 = arith.remui %46, %46 : i1
      %256 = vector.broadcast %c27645_i16 : i16 to vector<4x13xi16>
      %257 = vector.broadcast %26 : i1 to vector<4x13xi1>
      %258 = vector.broadcast %c490147963_i32 : i32 to vector<4x13xi32>
      %259 = vector.gather %alloc_11[%c7] [%258], %257, %256 : memref<13xi16>, vector<4x13xi32>, vector<4x13xi1>, vector<4x13xi16> into vector<4x13xi16>
      %260 = index.floordivs %c11, %52
      %alloc_56 = memref.alloc() : memref<4x13xi16>
      memref.tensor_store %4, %alloc_56 : memref<4x13xi16>
      %261 = index.divs %c4, %c3
      %c1679451964_i64 = arith.constant 1679451964 : i64
      %262 = math.tan %cst_1 : f16
      %263 = vector.extract %33[0] : vector<4xi16>
      scf.index_switch %c10 
      case 1 {
        %269 = math.expm1 %cst_4 : f32
        %270 = math.cttz %15 : tensor<4x10xi32>
        %271 = vector.shuffle %258, %258 [0, 1, 2, 3, 4, 7] : vector<4x13xi32>, vector<4x13xi32>
        %272 = vector.transpose %30, [0] : vector<4xi1> to vector<4xi1>
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %30, %20, %46 : vector<4xi1>, vector<4xi1> into i1
        %rank = tensor.rank %3 : tensor<4x13xi64>
        %274 = math.absf %13 : tensor<10x4x13xf32>
        %275 = arith.minui %c-14576_i16, %c27645_i16 : i16
        %276 = index.maxu %c5, %c3
        %277 = arith.addf %cst_7, %cst_5 : f32
        memref.store %cst_4, %alloc_17[%c1, %c5] : memref<4x10xf32>
        %278 = arith.remf %cst_4, %cst : f32
        %279 = index.ceildivu %c11, %c1
        %280 = vector.transpose %253, [0] : vector<9xi32> to vector<9xi32>
        %281 = math.sqrt %splat : tensor<10x4x13xf32>
        %282 = vector.broadcast %cst_4 : f32 to vector<f32>
        %283 = vector.transfer_write %282, %13[%c13, %c14, %c13] : vector<f32>, tensor<10x4x13xf32>
        scf.yield
      }
      default {
        %269 = math.exp2 %cst_3 : f32
        %270 = vector.multi_reduction <or>, %259, %256 [] : vector<4x13xi16> to vector<4x13xi16>
        %271 = index.maxu %c2, %c5
        %272 = arith.shrui %c-14576_i16, %c-14576_i16 : i16
        %273 = math.copysign %cst_0, %cst_7 : f32
        %274 = vector.extract_strided_slice %20 {offsets = [0], sizes = [2], strides = [1]} : vector<4xi1> to vector<2xi1>
        %275 = bufferization.to_memref %7 : memref<4x13xi64>
        %276 = vector.splat %52 : vector<10x4x13xindex>
        %277 = arith.mulf %cst_7, %cst_4 : f32
        %278 = vector.broadcast %c13 : index to vector<13xindex>
        %279 = vector.broadcast %true : i1 to vector<13xi1>
        %280 = vector.broadcast %c-14576_i16 : i16 to vector<13xi16>
        vector.scatter %alloc_11[%c11] [%278], %279, %280 : memref<13xi16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
        %281 = vector.broadcast %cst_1 : f16 to vector<10xf16>
        %282 = vector.transfer_write %281, %5[%c7, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xf16>, tensor<4x13xf16>
        %283 = arith.shrsi %c-14576_i16, %c27645_i16 : i16
        %284 = index.mul %c14, %47
        %285 = arith.maxui %c1531692190_i64, %c1531692190_i64 : i64
        %286 = memref.load %alloc_15[%c4, %c0, %c5] : memref<10x4x13xi1>
        %287 = index.sizeof
      }
      memref.copy %alloc_17, %alloc_10 : memref<4x10xf32> to memref<4x10xf32>
      %264 = math.cttz %22 : tensor<i32>
      %265 = scf.while (%arg1 = %c27645_i16) : (i16) -> i16 {
        %269 = vector.broadcast %c-14576_i16 : i16 to vector<13xi16>
        %270 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %32, %256, %269 : vector<4xi16>, vector<4x13xi16> into vector<13xi16>
        %271 = index.sub %c13, %c7
        %272 = arith.divui %false_2, %false_2 : i1
        %273 = vector.extract_strided_slice %258 {offsets = [0], sizes = [2], strides = [1]} : vector<4x13xi32> to vector<2x13xi32>
        %274 = affine.min affine_map<(d0, d1) -> (d1)>(%c11, %c2)
        %275 = bufferization.to_memref %1 : memref<13xf16>
        %extracted_57 = tensor.extract %17[%c3, %c3, %c3] : tensor<10x4x13xi64>
        %276 = affine.min affine_map<(d0, d1, d2, d3) -> (-d1, -d1 - 1, d3 + d0 - 1, d2)>(%271, %c10, %274, %c12)
        scf.condition(%46) %c-14576_i16 : i16
      } do {
      ^bb0(%arg1: i16):
        %269 = math.cttz %arg1 : i16
        %270 = vector.broadcast %c490147963_i32 : i32 to vector<10x4x13xi32>
        %c1_i16 = arith.constant 1 : i16
        %271 = vector.transfer_read %14[%c2, %c14, %c14], %c1_i16 : tensor<10x4x13xi16>, vector<i16>
        %272 = arith.maxf %cst_1, %cst_6 : f16
        %273 = index.sizeof
        %274 = index.ceildivu %c11, %c13
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %253, %253, %c490147963_i32 : vector<9xi32>, vector<9xi32> into i32
        %276 = tensor.empty(%c12) : tensor<10x4x?xf16>
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (-d2 + 32, 0, d0 floordiv 64, -(((-d2) floordiv 32) ceildiv 4))>(%c14, %c6, %c1, %261)
        %278 = arith.muli %c1531692190_i64, %c1531692190_i64 : i64
        %279 = arith.divsi %false_2, %46 : i1
        %280 = math.absi %12 : tensor<4x10xi64>
        %281 = vector.broadcast %cst_3 : f32 to vector<4x10xf32>
        %282 = vector.broadcast %46 : i1 to vector<4x10xi1>
        %283 = vector.broadcast %c490147963_i32 : i32 to vector<4x10xi32>
        %284 = vector.gather %alloc_18[%35, %c13, %c0] [%283], %282, %281 : memref<10x4x13xf32>, vector<4x10xi32>, vector<4x10xi1>, vector<4x10xf32> into vector<4x10xf32>
        %alloc_57 = memref.alloc() : memref<13xi64>
        %285 = math.exp2 %cst_3 : f32
        %286 = index.castu %273 : index to i32
        scf.yield %arg1 : i16
      }
      %266 = vector.extract %33[2] : vector<4xi16>
      %267 = arith.shrsi %26, %46 : i1
      %268 = arith.maxui %c1052194578_i32, %c490147963_i32 : i32
      scf.yield
    }
    default {
      %collapsed_56 = tensor.collapse_shape %23 [[0, 1], [2]] : tensor<10x4x13xi64> into tensor<40x13xi64>
      %253 = arith.maxf %cst_5, %cst_3 : f32
      %254 = vector.insert %c27645_i16, %32 [3] : i16 into vector<4xi16>
      %255 = math.copysign %18, %18 : tensor<13x10x4xf32>
      %256 = arith.shli %c-14576_i16, %c27645_i16 : i16
      %257 = index.maxu %52, %c11
      %258 = math.fma %transposed, %transposed, %18 : tensor<13x10x4xf32>
      %259 = bufferization.to_memref %7 : memref<4x13xi64>
      %c-23186_i16 = arith.constant -23186 : i16
      %260 = vector.shuffle %32, %32 [0, 1, 2] : vector<4xi16>, vector<4xi16>
      %261 = math.sqrt %13 : tensor<10x4x13xf32>
      %262 = vector.create_mask %c0, %c13 : vector<4x10xi1>
      %263 = bufferization.to_tensor %259 : memref<4x13xi64>
      %extracted_57 = tensor.extract %4[%c1, %c8] : tensor<4x13xi16>
      %264 = arith.shrui %false_2, %26 : i1
      %265 = index.ceildivu %c1, %c1
    }
    %53 = math.absf %cst_5 : f32
    %54 = index.add %c8, %c0
    %55 = index.mul %c13, %35
    %inserted_25 = tensor.insert %c1531692190_i64 into %7[%c0, %c0] : tensor<4x13xi64>
    %56 = vector.insertelement %c-14576_i16, %33[%c13 : index] : vector<4xi16>
    %57 = index.ceildivu %52, %c8
    %58 = memref.load %alloc_24[%c10] : memref<13xi32>
    %collapsed_26 = tensor.collapse_shape %7 [[0, 1]] : tensor<4x13xi64> into tensor<52xi64>
    %59 = arith.divui %c27645_i16, %c27645_i16 : i16
    affine.for %arg1 = 0 to 124 {
    }
    %60 = bufferization.to_tensor %alloc_21 : memref<4x13xi1>
    %61 = arith.maxui %c27645_i16, %c-14576_i16 : i16
    %62 = arith.shrui %c-14576_i16, %c-14576_i16 : i16
    %inserted_27 = tensor.insert %c1531692190_i64 into %7[%c2, %c7] : tensor<4x13xi64>
    %63 = math.log2 %5 : tensor<4x13xf16>
    %64 = math.absf %1 : tensor<13xf16>
    %65 = bufferization.to_memref %17 : memref<10x4x13xi64>
    %66 = math.log10 %cst_7 : f32
    %67 = index.casts %54 : index to i32
    %68 = bufferization.to_tensor %alloc_17 : memref<4x10xf32>
    %69 = math.log %cst_7 : f32
    %70 = arith.divsi %c1052194578_i32, %c1052194578_i32 : i32
    %alloc_28 = memref.alloc() : memref<4x13xf16>
    %true_29 = index.bool.constant true
    %alloc_30 = memref.alloc() : memref<4x10xf16>
    memref.copy %alloc_12, %alloc_30 : memref<4x10xf16> to memref<4x10xf16>
    %71 = arith.maxui %c1531692190_i64, %c1531692190_i64 : i64
    %72 = math.log %68 : tensor<4x10xf32>
    %73 = vector.broadcast %55 : index to vector<4xindex>
    %74 = vector.broadcast %cst_1 : f16 to vector<4xf16>
    vector.scatter %alloc_19[%c5, %c3, %c10] [%73], %20, %74 : memref<10x4x13xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
    %75 = vector.splat %57 : vector<10x4x13xindex>
    %76 = arith.remsi %false_2, %46 : i1
    %77 = arith.remsi %true_29, %false_2 : i1
    %78 = affine.min affine_map<(d0) -> (-(d0 * 2 - 2))>(%c10)
    %79 = arith.remf %cst_4, %cst_5 : f32
    %alloc_31 = memref.alloc() : memref<4x13xi64>
    memref.tensor_store %7, %alloc_31 : memref<4x13xi64>
    %80 = arith.minf %cst_4, %cst_7 : f32
    memref.assume_alignment %alloc_20, 2 : memref<10x4x13xi1>
    %81 = index.mul %52, %c7
    %82 = math.copysign %cst_6, %cst_6 : f16
    %83 = math.roundeven %13 : tensor<10x4x13xf32>
    %84 = math.tan %cst_0 : f32
    %85 = vector.reduction <minsi>, %20 : vector<4xi1> into i1
    %86 = affine.min affine_map<(d0, d1, d2, d3) -> ((d0 * -4) floordiv 16, d0 * 128, d3 mod 64, (-d3) mod 8)>(%c1, %35, %c1, %c5)
    %87 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %30, %30, %false_2 : vector<4xi1>, vector<4xi1> into i1
    %generated = tensor.generate %c2 {
    ^bb0(%arg1: index, %arg2: index):
      %generated_56 = tensor.generate %c3, %c5 {
      ^bb0(%arg3: index, %arg4: index):
        %inserted_57 = tensor.insert %cst_1 into %1[%c3] : tensor<13xf16>
        %256 = arith.ori %true_29, %26 : i1
        %257 = arith.shli %46, %false : i1
        %inserted_58 = tensor.insert %c-14576_i16 into %4[%c2, %c8] : tensor<4x13xi16>
        tensor.yield %cst_6 : f16
      } : tensor<?x?xf16>
      %253 = math.sqrt %cst : f32
      %254 = affine.min affine_map<(d0, d1) -> (0, -((d0 * 2) ceildiv 64), d1 floordiv 16 - 64, (d0 * 2) ceildiv 64)>(%c5, %55)
      %255 = arith.divsi %false_2, %46 : i1
      tensor.yield %c-14576_i16 : i16
    } : tensor<?x10xi16>
    %88 = arith.andi %46, %46 : i1
    %89 = vector.extract %30[1] : vector<4xi1>
    %90 = math.floor %transposed : tensor<13x10x4xf32>
    %91 = index.mul %c11, %c1
    %92 = tensor.empty() : tensor<10x4x13xi64>
    %mapped_32 = linalg.map ins(%0, %6 : tensor<10x4x13xi64>, tensor<10x4x13xi64>) outs(%92 : tensor<10x4x13xi64>)
      (%in: i64, %in_56: i64) {
        %253 = vector.load %alloc_14[%c0, %c3] : memref<4x13xi1>, vector<13xi1>
        %extracted_57 = tensor.extract %2[%c1, %c5] : tensor<4x10xi1>
        %alloc_58 = memref.alloc() : memref<13xi1>
        memref.tensor_store %10, %alloc_58 : memref<13xi1>
        %254 = math.log2 %transposed : tensor<13x10x4xf32>
        %255 = arith.remf %cst_4, %cst_5 : f32
        %256 = vector.multi_reduction <minsi>, %20, %20 [] : vector<4xi1> to vector<4xi1>
        %257 = bufferization.to_tensor %alloc_12 : memref<4x10xf16>
        %258 = vector.load %alloc_8[%c3, %c3, %c9] : memref<10x4x13xi16>, vector<10x4x13xi16>
        %259 = arith.remui %c27645_i16, %c-14576_i16 : i16
        %260 = arith.maxui %c490147963_i32, %c490147963_i32 : i32
        %261 = arith.ceildivsi %false_2, %true_29 : i1
        %262 = arith.shrsi %false, %false_2 : i1
        %alloca_59 = memref.alloca() : memref<13xi32>
        %263 = affine.min affine_map<(d0, d1, d2) -> (d2 + d0)>(%c13, %c2, %47)
        %264 = arith.xori %26, %true_29 : i1
        memref.store %c490147963_i32, %alloc_24[%c7] : memref<13xi32>
        %265 = index.ceildivu %c6, %35
        %266 = math.powf %68, %68 : tensor<4x10xf32>
        %267 = arith.minui %in_56, %in_56 : i64
        scf.index_switch %c8 
        case 1 {
          %278 = vector.extract %33[1] : vector<4xi16>
          %rank = tensor.rank %1 : tensor<13xf16>
          %279 = affine.apply affine_map<(d0, d1, d2) -> (-((d2 * -4) ceildiv 32))>(%54, %47, %c10)
          %280 = vector.shuffle %20, %20 [3, 5, 7] : vector<4xi1>, vector<4xi1>
          %281 = arith.minsi %c-14576_i16, %c27645_i16 : i16
          %282 = vector.broadcast %in : i64 to vector<13xi64>
          %alloc_62 = memref.alloc() : memref<4x10xi1>
          memref.tensor_store %2, %alloc_62 : memref<4x10xi1>
          %283 = arith.minf %cst, %cst_4 : f32
          %284 = arith.remf %cst_5, %cst_3 : f32
          %285 = vector.broadcast %81 : index to vector<4xindex>
          %286 = vector.broadcast %cst_6 : f16 to vector<4xf16>
          vector.scatter %alloc_12[%c0, %c4] [%285], %30, %286 : memref<4x10xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
          %extracted_63 = tensor.extract %9[%c0, %c10] : tensor<4x13xi16>
          %alloc_64 = memref.alloc() : memref<4x10xi16>
          %287 = index.maxu %78, %c4
          %288 = math.copysign %cst, %cst_4 : f32
          %289 = arith.divui %c27645_i16, %c27645_i16 : i16
          %290 = index.maxu %47, %c4
          scf.yield
        }
        default {
          %278 = arith.remsi %false_2, %false : i1
          %279 = math.tan %5 : tensor<4x13xf16>
          %from_elements_62 = tensor.from_elements %cst_1, %cst_1, %cst_6, %cst_6, %cst_1, %cst_1, %cst_6, %cst_6, %cst_1, %cst_1, %cst_1, %cst_6, %cst_6 : tensor<13xf16>
          %280 = vector.broadcast %c27645_i16 : i16 to vector<4x4xi16>
          %281 = vector.outerproduct %32, %33, %280 {kind = #vector.kind<maxsi>} : vector<4xi16>, vector<4xi16>
          %cst_63 = arith.constant 2.228800e+04 : f16
          %282 = math.tan %cst_7 : f32
          %extracted_64 = tensor.extract %10[%c12] : tensor<13xi1>
          %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %20, %30, %true_29 : vector<4xi1>, vector<4xi1> into i1
          %284 = vector.matrix_multiply %33, %32 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
          %285 = math.rsqrt %1 : tensor<13xf16>
          %286 = index.add %91, %47
          %287 = vector.shuffle %32, %284 [1, 2] : vector<4xi16>, vector<1xi16>
          %288 = vector.shuffle %20, %30 [0, 2, 4, 5, 6] : vector<4xi1>, vector<4xi1>
          %289 = math.ctpop %in : i64
          %290 = bufferization.clone %alloc_8 : memref<10x4x13xi16> to memref<10x4x13xi16>
          %291 = vector.multi_reduction <mul>, %20, %30 [] : vector<4xi1> to vector<4xi1>
        }
        %268 = math.round %13 : tensor<10x4x13xf32>
        %269 = index.sizeof
        %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %20, %20, %26 : vector<4xi1>, vector<4xi1> into i1
        %271 = arith.shrsi %extracted_57, %false_2 : i1
        %272 = memref.load %alloc[%c6] : memref<13xi64>
        %273 = index.castu %c0 : index to i32
        %false_60 = index.bool.constant false
        %274 = arith.divui %c27645_i16, %c27645_i16 : i16
        %275 = bufferization.to_memref %splat : memref<10x4x13xf32>
        %collapsed_61 = tensor.collapse_shape %14 [[0, 1], [2]] : tensor<10x4x13xi16> into tensor<40x13xi16>
        %276 = index.floordivs %c4, %c9
        %277 = math.atan %cst_5 : f32
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %93 = vector.reduction <maxui>, %32 : vector<4xi16> into i16
    %94 = memref.load %alloc_10[%c0, %c2] : memref<4x10xf32>
    %95 = affine.load %alloc_13[%c2, %c14, %c0] : memref<10x4x13xf32>
    %96 = math.absi %false : i1
    %97 = math.rsqrt %68 : tensor<4x10xf32>
    %alloc_33 = memref.alloc() : memref<10x4xi32>
    %98 = tensor.empty() : tensor<4x4xi32>
    %99 = linalg.matmul ins(%15, %alloc_33 : tensor<4x10xi32>, memref<10x4xi32>) outs(%98 : tensor<4x4xi32>) -> tensor<4x4xi32>
    %100 = arith.divsi %c490147963_i32, %c490147963_i32 : i32
    %101 = arith.minui %true_29, %false : i1
    %102 = arith.minf %cst, %cst_4 : f32
    %collapsed_34 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<10x4x13xf32> into tensor<40x13xf32>
    %103 = tensor.empty(%c14) : tensor<?xi16>
    %collapsed_35 = tensor.collapse_shape %12 [[0, 1]] : tensor<4x10xi64> into tensor<40xi64>
    %false_36 = index.bool.constant false
    %104 = arith.addf %cst, %cst_0 : f32
    %105 = arith.remui %true_29, %46 : i1
    %106 = arith.maxui %c1052194578_i32, %c490147963_i32 : i32
    %107 = index.maxu %c2, %86
    %108 = arith.divui %true, %false : i1
    %109 = vector.broadcast %cst_4 : f32 to vector<4x13xf32>
    %110 = vector.fma %109, %109, %109 : vector<4x13xf32>
    %111 = math.cos %95 : f32
    %112 = vector.insert %c-14576_i16, %33 [0] : i16 into vector<4xi16>
    memref.copy %alloc_10, %alloc_17 : memref<4x10xf32> to memref<4x10xf32>
    %113 = math.log2 %cst_4 : f32
    %114 = arith.remui %c27645_i16, %c-14576_i16 : i16
    %115 = index.mul %91, %54
    %true_37 = index.bool.constant true
    %116 = bufferization.clone %alloc_10 : memref<4x10xf32> to memref<4x10xf32>
    %117 = arith.shrui %c1052194578_i32, %c490147963_i32 : i32
    %118 = index.casts %c4 : index to i32
    %119 = tensor.empty() : tensor<4x10xi64>
    %mapped_38 = linalg.map ins(%12, %alloc_22, %alloc_22 : tensor<4x10xi64>, memref<4x10xi64>, memref<4x10xi64>) outs(%119 : tensor<4x10xi64>)
      (%in: i64, %in_56: i64, %in_57: i64) {
        %253 = arith.mulf %cst_0, %95 : f32
        %254 = arith.shrsi %26, %46 : i1
        %255 = arith.maxui %c1531692190_i64, %c1531692190_i64 : i64
        %256 = math.fma %cst_3, %cst_3, %cst_5 : f32
        %257 = arith.shrui %c1052194578_i32, %c1052194578_i32 : i32
        %258 = index.mul %107, %c13
        %259 = arith.divui %c1052194578_i32, %c1052194578_i32 : i32
        %260 = arith.shrui %c1531692190_i64, %in : i64
        %expanded = tensor.expand_shape %4 [[0], [1, 2]] : tensor<4x13xi16> into tensor<4x13x1xi16>
        %261 = arith.shrui %26, %false_2 : i1
        %alloca_58 = memref.alloca() : memref<10x4x13xi1>
        %262 = arith.remsi %in_56, %in : i64
        %263 = arith.mulf %cst_7, %cst : f32
        %264 = tensor.empty() : tensor<10x4x13xi16>
        %265 = math.powf %splat, %splat : tensor<10x4x13xf32>
        %266 = math.cos %cst_6 : f16
        %267 = vector.broadcast %in_57 : i64 to vector<13xi64>
        %268 = arith.maxsi %true_29, %true_29 : i1
        %269 = arith.divui %false_2, %46 : i1
        %270 = memref.atomic_rmw assign %cst_1, %alloc_19[%c2, %c0, %c7] : (f16, memref<10x4x13xf16>) -> f16
        %271 = arith.andi %false_36, %true_37 : i1
        %cst_59 = arith.constant 1.000000e+00 : f32
        %272 = vector.transfer_read %68[%c1, %c14], %cst_59 : tensor<4x10xf32>, vector<10xf32>
        %273 = index.ceildivu %35, %c0
        %274 = index.divu %78, %86
        %275 = arith.shrui %in, %in : i64
        %276 = vector.shuffle %30, %30 [0, 3, 4, 5, 6] : vector<4xi1>, vector<4xi1>
        %277 = math.exp2 %18 : tensor<13x10x4xf32>
        %alloca_60 = memref.alloca() : memref<4x13xi64>
        %278 = math.cttz %9 : tensor<4x13xi16>
        %279 = tensor.empty(%57, %57) : tensor<10x?x?xi64>
        %280 = math.sqrt %cst_0 : f32
        %281 = math.exp %1 : tensor<13xf16>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %120 = index.ceildivu %47, %c1
    %121 = scf.if %46 -> (i64) {
      %253 = arith.shrsi %c-14576_i16, %c27645_i16 : i16
      %254 = vector.broadcast %cst_6 : f16 to vector<13xf16>
      %255 = math.tan %cst_6 : f16
      %256 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 + d1)>(%c0, %c1, %35, %c7)
      %257 = math.expm1 %cst_1 : f16
      %generated_56 = tensor.generate %c7 {
      ^bb0(%arg1: index):
        %splat_58 = tensor.splat %c-14576_i16 : tensor<4x13xi16>
        %259 = math.round %1 : tensor<13xf16>
        %260 = arith.negf %cst_3 : f32
        %alloc_59 = memref.alloc() : memref<13xf16>
        tensor.yield %c1531692190_i64 : i64
      } : tensor<?xi64>
      %258 = index.ceildivu %c15, %c8
      %inserted_57 = tensor.insert %cst_7 into %13[%c2, %c1, %c11] : tensor<10x4x13xf32>
      scf.yield %c1531692190_i64 : i64
    } else {
      %253 = vector.reduction <maxui>, %33 : vector<4xi16> into i16
      %254 = vector.maskedload %alloc_15[%c2, %c3, %c4], %30, %30 : memref<10x4x13xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
      %255 = math.cos %cst_0 : f32
      %extracted_56 = tensor.extract %generated[%c0, %c7] : tensor<?x10xi16>
      %splat_57 = tensor.splat %cst_7 : tensor<13xf32>
      %256 = bufferization.clone %65 : memref<10x4x13xi64> to memref<10x4x13xi64>
      %rank = tensor.rank %13 : tensor<10x4x13xf32>
      %257 = arith.andi %c490147963_i32, %c490147963_i32 : i32
      scf.yield %c1531692190_i64 : i64
    }
    %122 = memref.load %alloc_18[%c1, %c3, %c9] : memref<10x4x13xf32>
    %123 = arith.minsi %121, %121 : i64
    %124 = index.maxu %81, %107
    %125 = tensor.empty(%c6, %35) : tensor<?x?xi64>
    %126 = scf.while (%arg1 = %46) : (i1) -> i1 {
      %253 = vector.broadcast %cst_4 : f32 to vector<f32>
      vector.transfer_write %253, %alloc_18[%c12, %c15, %124] : vector<f32>, memref<10x4x13xf32>
      %254 = math.log2 %1 : tensor<13xf16>
      %255 = affine.load %alloc_24[%c12] : memref<13xi32>
      memref.store %true, %alloc_14[%c3, %c12] : memref<4x13xi1>
      %256 = math.log %cst_5 : f32
      %257 = scf.if %arg1 -> (memref<10x4x13xf16>) {
        %259 = affine.max affine_map<(d0, d1, d2) -> (d2)>(%57, %78, %c13)
        %260 = math.copysign %transposed, %18 : tensor<13x10x4xf32>
        %splat_57 = tensor.splat %95 : tensor<4x10xf32>
        %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %30, %20, %true_37 : vector<4xi1>, vector<4xi1> into i1
        %262 = math.copysign %cst_6, %cst_1 : f16
        %from_elements_58 = tensor.from_elements %c27645_i16, %c27645_i16, %c27645_i16, %c27645_i16, %c-14576_i16, %c27645_i16, %c-14576_i16, %c27645_i16, %c-14576_i16, %c-14576_i16, %c27645_i16, %c27645_i16, %c-14576_i16, %c27645_i16, %c27645_i16, %c27645_i16, %c-14576_i16, %c-14576_i16, %c27645_i16, %c-14576_i16, %c27645_i16, %c-14576_i16, %c-14576_i16, %c27645_i16, %c-14576_i16, %c27645_i16, %c-14576_i16, %c27645_i16, %c-14576_i16, %c27645_i16, %c27645_i16, %c-14576_i16, %c-14576_i16, %c-14576_i16, %c27645_i16, %c27645_i16, %c-14576_i16, %c27645_i16, %c27645_i16, %c27645_i16 : tensor<4x10xi16>
        memref.store %false, %alloc_20[%c0, %c0, %c7] : memref<10x4x13xi1>
        %263 = arith.shrsi %c490147963_i32, %c1052194578_i32 : i32
        scf.yield %alloc_19 : memref<10x4x13xf16>
      } else {
        %259 = tensor.empty() : tensor<10x13xf32>
        %260 = tensor.empty() : tensor<4x13xf32>
        %261 = linalg.matmul ins(%68, %259 : tensor<4x10xf32>, tensor<10x13xf32>) outs(%260 : tensor<4x13xf32>) -> tensor<4x13xf32>
        %collapsed_57 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<10x4x13xi16> into tensor<40x13xi16>
        %262 = arith.remf %95, %cst_7 : f32
        %263 = arith.addf %cst_4, %cst : f32
        %264 = vector.transpose %253, [] : vector<f32> to vector<f32>
        %265 = arith.ori %false_2, %arg1 : i1
        %rank = tensor.rank %14 : tensor<10x4x13xi16>
        %266 = arith.cmpf une, %95, %cst_5 : f32
        scf.yield %alloc_9 : memref<10x4x13xf16>
      }
      %258 = arith.cmpf oeq, %cst, %95 : f32
      %cast_56 = tensor.cast %10 : tensor<13xi1> to tensor<?xi1>
      scf.condition(%false_36) %26 : i1
    } do {
    ^bb0(%arg1: i1):
      %253 = bufferization.clone %alloc : memref<13xi64> to memref<13xi64>
      %254 = arith.andi %121, %c1531692190_i64 : i64
      %255 = scf.execute_region -> memref<4x10xf16> {
        %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %33, %32, %c-14576_i16 : vector<4xi16>, vector<4xi16> into i16
        %267 = vector.matrix_multiply %32, %32 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        %268 = math.absi %0 : tensor<10x4x13xi64>
        %269 = arith.minf %95, %cst_5 : f32
        %cast_60 = tensor.cast %11 : tensor<13xi32> to tensor<?xi32>
        %270 = math.cttz %collapsed : tensor<40xi64>
        %271 = vector.splat %arg1 : vector<4x13xi1>
        %alloca_61 = memref.alloca() : memref<10x4x13xi1>
        %272 = arith.andi %true_37, %26 : i1
        %273 = index.mul %81, %107
        %274 = math.ctlz %46 : i1
        %275 = arith.remsi %c1531692190_i64, %c1531692190_i64 : i64
        %cst_62 = arith.constant 5.379200e+04 : f16
        %276 = math.ctpop %9 : tensor<4x13xi16>
        %277 = arith.floordivsi %arg1, %true_29 : i1
        %278 = vector.create_mask %c2, %c11 : vector<4x13xi1>
        scf.yield %alloc_12 : memref<4x10xf16>
      }
      memref.assume_alignment %alloc_21, 1 : memref<4x13xi1>
      %256 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 + d1 + 64)>(%c3, %c10, %c12, %47)
      %257 = affine.min affine_map<(d0) -> ((d0 - 2) ceildiv 8 - 1, d0 floordiv 64 - d0 + 8, (d0 floordiv 64) * 128, (d0 floordiv 64) floordiv 4)>(%81)
      %258 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
      %259 = index.floordivs %52, %81
      %alloca_56 = memref.alloca() : memref<10x4x13xi16>
      %alloc_57 = memref.alloc() : memref<10x4x13xi16>
      memref.store %c1531692190_i64, %alloc_23[%c2] : memref<4xi64>
      %alloca_58 = memref.alloca() : memref<10x4x13xf16>
      %260 = arith.divsi %false, %true_29 : i1
      %261 = tensor.empty() : tensor<4x10xi32>
      %262 = linalg.matmul ins(%98, %15 : tensor<4x4xi32>, tensor<4x10xi32>) outs(%261 : tensor<4x10xi32>) -> tensor<4x10xi32>
      %263 = tensor.empty() : tensor<10x13xf32>
      %alloc_59 = memref.alloc() : memref<13xf32>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%263, %alloc_59, %263 : tensor<10x13xf32>, memref<13xf32>, tensor<10x13xf32>) outs(%13 : tensor<10x4x13xf32>) {
      ^bb0(%in: f32, %in_60: f32, %in_61: f32, %out: f32):
        %inserted_62 = tensor.insert %95 into %13[%c4, %c0, %c9] : tensor<10x4x13xf32>
        %266 = arith.remui %false, %false : i1
        %267 = arith.divui %c-14576_i16, %c-14576_i16 : i16
        %268 = index.ceildivu %256, %57
        memref.tensor_store %11, %alloc_24 : memref<13xi32>
        %269 = affine.min affine_map<(d0, d1) -> ((d0 - 8) ceildiv 4, d1 mod 8, d0 - 8)>(%c1, %c3)
        %270 = vector.broadcast %c1052194578_i32 : i32 to vector<13xi32>
        %271 = vector.transfer_write %270, %98[%c7, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xi32>, tensor<4x4xi32>
        %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %33, %32, %c-14576_i16 : vector<4xi16>, vector<4xi16> into i16
        %273 = arith.shrui %46, %true_37 : i1
        %274 = math.absi %15 : tensor<4x10xi32>
        %275 = arith.addi %c1531692190_i64, %121 : i64
        memref.store %121, %alloc_22[%c2, %c6] : memref<4x10xi64>
        %276 = arith.divsi %c1052194578_i32, %c1052194578_i32 : i32
        %277 = arith.remf %95, %cst_0 : f32
        %cast_63 = tensor.cast %2 : tensor<4x10xi1> to tensor<?x?xi1>
        %278 = index.maxu %c2, %c2
        %alloc_64 = memref.alloc() : memref<4x10xi32>
        memref.tensor_store %15, %alloc_64 : memref<4x10xi32>
        %279 = arith.remf %cst_4, %cst_0 : f32
        %280 = arith.remf %in_60, %95 : f32
        %281 = arith.remsi %true_37, %arg1 : i1
        %282 = math.exp2 %cst : f32
        memref.tensor_store %14, %alloc_8 : memref<10x4x13xi16>
        %283 = arith.maxui %true_29, %46 : i1
        %284 = arith.remsi %arg1, %true : i1
        %alloca_65 = memref.alloca() : memref<4x13xi1>
        memref.tensor_store %8, %alloc_8 : memref<10x4x13xi16>
        %285 = tensor.empty() : tensor<13xi64>
        %286 = vector.broadcast %false_2 : i1 to vector<4x10xi1>
        %287 = math.exp %18 : tensor<13x10x4xf32>
        %extracted_66 = tensor.extract %119[%c3, %c3] : tensor<4x10xi64>
        %alloca_67 = memref.alloca() : memref<10x4x13xi16>
        %288 = arith.negf %cst_5 : f32
        linalg.yield %in_61 : f32
      } -> tensor<10x4x13xf32>
      %265 = index.maxs %54, %257
      scf.yield %arg1 : i1
    }
    %127 = memref.load %alloc_14[%c0, %c10] : memref<4x13xi1>
    %splat_39 = tensor.splat %cst_1 : tensor<10x4x13xf16>
    %128 = arith.divsi %c-14576_i16, %c27645_i16 : i16
    %129 = arith.remui %false, %false : i1
    %130 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %33, %33, %c27645_i16 : vector<4xi16>, vector<4xi16> into i16
    %alloca = memref.alloca() : memref<4x13xi1>
    %131 = arith.divui %false_36, %46 : i1
    %c1686630024_i64 = arith.constant 1686630024 : i64
    %132 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 floordiv 16 + (d1 floordiv 4) mod 2 - d3, d0, d3 - d2)>(%c14, %c0, %115, %57)
    %133 = arith.minsi %false_2, %false : i1
    %134 = affine.apply affine_map<(d0, d1, d2) -> (-((d2 * -4) ceildiv 32))>(%c6, %c7, %c0)
    %splat_40 = tensor.splat %true : tensor<13xi1>
    %135 = arith.shrui %c-14576_i16, %c27645_i16 : i16
    %136 = math.round %transposed : tensor<13x10x4xf32>
    %137 = vector.extract %110[3] : vector<4x13xf32>
    %138 = math.round %cst : f32
    %139 = arith.ceildivsi %121, %c1531692190_i64 : i64
    %140 = tensor.empty() : tensor<4x10xf32>
    %mapped_41 = linalg.map ins(%alloc_10, %116 : memref<4x10xf32>, memref<4x10xf32>) outs(%140 : tensor<4x10xf32>)
      (%in: f32, %in_56: f32) {
        %generated_57 = tensor.generate %52, %c0 {
        ^bb0(%arg1: index, %arg2: index):
          %282 = index.ceildivu %c5, %c2
          %283 = vector.insert %c-14576_i16, %33 [1] : i16 into vector<4xi16>
          %284 = math.fma %68, %68, %140 : tensor<4x10xf32>
          %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %30, %20, %true_29 : vector<4xi1>, vector<4xi1> into i1
          tensor.yield %95 : f32
        } : tensor<?x?xf32>
        %253 = math.cttz %3 : tensor<4x13xi64>
        %254 = vector.load %alloc_13[%c9, %c2, %c11] : memref<10x4x13xf32>, vector<10x4x13xf32>
        %255 = index.sub %c5, %107
        %256 = affine.max affine_map<(d0, d1, d2) -> (d1)>(%78, %c9, %c2)
        %257 = math.copysign %cst, %cst_0 : f32
        %258 = vector.create_mask %c10, %256 : vector<4x13xi1>
        %259 = arith.addi %121, %c1531692190_i64 : i64
        %260 = index.casts %c12 : index to i32
        %261 = math.round %cst_5 : f32
        %262 = vector.insertelement %c27645_i16, %32[%c7 : index] : vector<4xi16>
        %alloca_58 = memref.alloca() : memref<4x13xf32>
        %263 = arith.andi %46, %46 : i1
        %264 = vector.extract %33[0] : vector<4xi16>
        %inserted_59 = tensor.insert %c490147963_i32 into %11[%c1] : tensor<13xi32>
        %265 = scf.execute_region -> index {
          %282 = arith.minui %26, %true : i1
          %283 = vector.broadcast %81 : index to vector<10xindex>
          %284 = vector.broadcast %false : i1 to vector<10xi1>
          %285 = vector.broadcast %cst_0 : f32 to vector<10xf32>
          vector.scatter %alloc_17[%c2, %c3] [%283], %284, %285 : memref<4x10xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
          %286 = arith.ceildivsi %121, %121 : i64
          %287 = arith.divui %c490147963_i32, %c490147963_i32 : i32
          %288 = vector.shuffle %33, %32 [2] : vector<4xi16>, vector<4xi16>
          %289 = index.sizeof
          %290 = vector.insert %c-14576_i16, %33 [2] : i16 into vector<4xi16>
          %291 = math.sqrt %transposed : tensor<13x10x4xf32>
          %292 = math.fma %cst_5, %cst_0, %cst_4 : f32
          %293 = vector.extract %258[3] : vector<4x13xi1>
          %294 = arith.maxui %c1531692190_i64, %c1531692190_i64 : i64
          %295 = vector.transpose %254, [1, 0, 2] : vector<10x4x13xf32> to vector<4x10x13xf32>
          memref.assume_alignment %alloc_13, 16 : memref<10x4x13xf32>
          %rank_62 = tensor.rank %23 : tensor<10x4x13xi64>
          %296 = vector.insert %cst_4, %137 [9] : f32 into vector<13xf32>
          %297 = affine.min affine_map<(d0, d1) -> (((d1 floordiv 16) ceildiv 128) mod 16, d1 - 64)>(%c0, %289)
          scf.yield %81 : index
        }
        %266 = math.round %140 : tensor<4x10xf32>
        %267 = math.copysign %cst_1, %cst_1 : f16
        %268 = math.sqrt %68 : tensor<4x10xf32>
        %269 = arith.cmpf ugt, %cst_0, %cst : f32
        %270 = vector.broadcast %46 : i1 to vector<13xi1>
        %271 = vector.maskedload %alloc_21[%c2, %c10], %270, %270 : memref<4x13xi1>, vector<13xi1>, vector<13xi1> into vector<13xi1>
        %272 = vector.broadcast %cst_6 : f16 to vector<13xf16>
        %273 = vector.maskedload %alloc_19[%c9, %c0, %c11], %270, %272 : memref<10x4x13xf16>, vector<13xi1>, vector<13xf16> into vector<13xf16>
        %274 = math.log %13 : tensor<10x4x13xf32>
        %275 = arith.ceildivsi %true_37, %46 : i1
        %276 = arith.negf %in : f32
        %277 = arith.negf %cst_3 : f32
        %278 = memref.alloca_scope  -> (memref<10x4x13xi16>) {
          %extracted_62 = tensor.extract %119[%c3, %c3] : tensor<4x10xi64>
          %282 = arith.shrsi %26, %26 : i1
          %283 = arith.cmpf olt, %cst_3, %95 : f32
          %284 = math.log2 %140 : tensor<4x10xf32>
          %285 = arith.maxui %extracted_62, %121 : i64
          %286 = math.floor %18 : tensor<13x10x4xf32>
          %from_elements_63 = tensor.from_elements %extracted_62, %121, %121, %extracted_62, %extracted_62, %121, %extracted_62, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %extracted_62, %121 : tensor<13xi64>
          %287 = arith.floordivsi %26, %true_37 : i1
          %288 = math.atan %cst_3 : f32
          %289 = arith.remf %in_56, %cst_4 : f32
          %290 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 + d1 + 64)>(%57, %78, %107, %124)
          %291 = arith.minsi %false_36, %true_29 : i1
          %292 = math.exp2 %cst_1 : f16
          %293 = math.absf %cst_4 : f32
          %splat_64 = tensor.splat %cst_7 : tensor<4x10xf32>
          %294 = vector.broadcast %c1052194578_i32 : i32 to vector<13xi32>
          %295 = vector.gather %alloc_15[%35, %255, %c14] [%294], %271, %270 : memref<10x4x13xi1>, vector<13xi32>, vector<13xi1>, vector<13xi1> into vector<13xi1>
          %296 = math.log1p %splat_64 : tensor<4x10xf32>
          %297 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %294, %294, %c1052194578_i32 : vector<13xi32>, vector<13xi32> into i32
          %298 = math.absi %collapsed : tensor<40xi64>
          %alloc_65 = memref.alloc() : memref<10x4x13xi16>
          memref.copy %alloc_8, %alloc_65 : memref<10x4x13xi16> to memref<10x4x13xi16>
          memref.store %26, %alloc_15[%c0, %c3, %c3] : memref<10x4x13xi1>
          %299 = bufferization.to_memref %11 : memref<13xi32>
          %300 = math.floor %68 : tensor<4x10xf32>
          %301 = index.ceildivu %120, %c4
          %302 = arith.shrui %26, %true_37 : i1
          %alloc_66 = memref.alloc() : memref<13x10x4xf32>
          memref.tensor_store %transposed, %alloc_66 : memref<13x10x4xf32>
          %alloc_67 = memref.alloc() : memref<10x4x13xi16>
          memref.copy %alloc_8, %alloc_67 : memref<10x4x13xi16> to memref<10x4x13xi16>
          %303 = math.atan2 %1, %1 : tensor<13xf16>
          %304 = arith.maxf %cst, %95 : f32
          %from_elements_68 = tensor.from_elements %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32 : tensor<13xi32>
          %305 = arith.minui %true_37, %true : i1
          %306 = math.log2 %18 : tensor<13x10x4xf32>
          memref.alloca_scope.return %alloc_8 : memref<10x4x13xi16>
        }
        %279 = arith.ori %true, %46 : i1
        %280 = math.log2 %collapsed_34 : tensor<40x13xf32>
        %true_60 = arith.constant true
        %281 = bufferization.clone %alloc_11 : memref<13xi16> to memref<13xi16>
        %rank = tensor.rank %splat_39 : tensor<10x4x13xf16>
        %cst_61 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_61 : f32
      }
    %141 = arith.divsi %true_37, %true : i1
    %142 = vector.maskedload %alloc_8[%c6, %c2, %c7], %20, %32 : memref<10x4x13xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
    %143 = arith.maxui %c1531692190_i64, %c1531692190_i64 : i64
    %144 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%18 : tensor<13x10x4xf32>) {
    ^bb0(%out: f32):
      %c35 = arith.constant 35 : index
      %inserted_56 = tensor.insert %121 into %collapsed[%c35] : tensor<40xi64>
      %253 = vector.extract_strided_slice %110 {offsets = [1], sizes = [3], strides = [1]} : vector<4x13xf32> to vector<3x13xf32>
      %254 = math.log2 %1 : tensor<13xf16>
      %255 = math.cttz %6 : tensor<10x4x13xi64>
      %256 = index.sizeof
      %257 = math.cttz %2 : tensor<4x10xi1>
      %258 = math.sqrt %cst_0 : f32
      %alloc_57 = memref.alloc() : memref<10x4x13xi64>
      %259 = index.maxs %124, %c9
      scf.if %46 {
        %278 = math.round %cst_0 : f32
        %279 = math.sqrt %splat_39 : tensor<10x4x13xf16>
        %280 = vector.load %alloc_10[%c1, %c6] : memref<4x10xf32>, vector<13xf32>
        memref.tensor_store %17, %65 : memref<10x4x13xi64>
        %281 = math.round %splat_39 : tensor<10x4x13xf16>
        %282 = arith.cmpf oeq, %cst_1, %cst_1 : f16
        %283 = math.fma %transposed, %18, %transposed : tensor<13x10x4xf32>
        %284 = math.absf %13 : tensor<10x4x13xf32>
      }
      %260 = arith.remsi %true_29, %false_36 : i1
      %261 = arith.maxsi %true, %false : i1
      %262 = memref.atomic_rmw minf %cst_1, %alloc_12[%c0, %c1] : (f16, memref<4x10xf16>) -> f16
      %splat_58 = tensor.splat %c490147963_i32 : tensor<10x4x13xi32>
      %263 = math.absf %cst_0 : f32
      %264 = arith.remf %cst_3, %95 : f32
      %265 = arith.shli %c1531692190_i64, %121 : i64
      %266 = arith.minui %121, %c1531692190_i64 : i64
      %267 = index.sub %57, %c7
      %268 = tensor.empty(%267, %52) : tensor<?x?xi1>
      %269 = arith.remf %cst_3, %cst : f32
      %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %137, %137, %cst_4 : vector<13xf32>, vector<13xf32> into f32
      %271 = math.absi %16 : tensor<10x4x13xi64>
      %272 = math.sqrt %5 : tensor<4x13xf16>
      memref.store %95, %alloc_13[%c2, %c2, %c11] : memref<10x4x13xf32>
      %c324823193_i64 = arith.constant 324823193 : i64
      %273 = math.ctlz %15 : tensor<4x10xi32>
      %274 = math.sqrt %transposed : tensor<13x10x4xf32>
      %275 = arith.ori %121, %121 : i64
      %false_59 = index.bool.constant false
      %276 = vector.reduction <mul>, %30 : vector<4xi1> into i1
      %277 = math.log2 %cst_1 : f16
      linalg.yield %95 : f32
    } -> tensor<13x10x4xf32>
    %145 = arith.addf %cst_5, %cst_3 : f32
    %146 = math.fma %cst_4, %cst_3, %cst_3 : f32
    %147 = arith.maxui %false_2, %false_36 : i1
    %148 = index.ceildivu %107, %c14
    %149 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %33, %142, %c27645_i16 : vector<4xi16>, vector<4xi16> into i16
    %150 = arith.maxui %26, %26 : i1
    %151 = vector.matrix_multiply %142, %33 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
    %152 = math.exp2 %18 : tensor<13x10x4xf32>
    %collapsed_42 = tensor.collapse_shape %15 [[0, 1]] : tensor<4x10xi32> into tensor<40xi32>
    %alloca_43 = memref.alloca() : memref<10x4x13xi32>
    %alloc_44 = memref.alloc() : memref<10x13xi64>
    %153 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_44, %alloc : memref<10x13xi64>, memref<13xi64>) outs(%6 : tensor<10x4x13xi64>) {
    ^bb0(%in: i64, %in_56: i64, %out: i64):
      %253 = tensor.empty() : tensor<10x4x13xf16>
      %254 = math.round %5 : tensor<4x13xf16>
      %255 = arith.minui %c1052194578_i32, %c1052194578_i32 : i32
      %256 = math.log %5 : tensor<4x13xf16>
      %257 = arith.shli %true_37, %false : i1
      %258 = arith.negf %cst_7 : f32
      %259 = affine.load %alloc_9[%c8, %c6, %c11] : memref<10x4x13xf16>
      %260 = index.sub %c5, %91
      memref.store %cst_7, %alloc_18[%c1, %c1, %c10] : memref<10x4x13xf32>
      %261 = arith.maxf %95, %cst_7 : f32
      %262 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 floordiv 128, d0 mod 2)>(%260, %c9, %c7, %c3)
      %263 = math.log2 %1 : tensor<13xf16>
      %264 = math.floor %140 : tensor<4x10xf32>
      %from_elements_57 = tensor.from_elements %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32 : tensor<4x13xi32>
      %splat_58 = tensor.splat %in_56 : tensor<10x4x13xi64>
      %265 = arith.divui %false, %true : i1
      %266 = tensor.empty(%c1) : tensor<4x?xf16>
      %267 = math.cttz %21 : tensor<i32>
      %268 = vector.extract %110[0] : vector<4x13xf32>
      %269 = vector.extract %109[0] : vector<4x13xf32>
      %270 = vector.load %alloc_16[%c1, %c5] : memref<4x10xi16>, vector<13xi16>
      %271 = bufferization.to_memref %2 : memref<4x10xi1>
      %272 = math.cttz %8 : tensor<10x4x13xi16>
      %expanded = tensor.expand_shape %7 [[0], [1, 2]] : tensor<4x13xi64> into tensor<4x13x1xi64>
      scf.if %26 {
        %280 = index.add %c3, %c13
        %281 = tensor.empty() : tensor<4x13xi32>
        %282 = math.log %5 : tensor<4x13xf16>
        %283 = bufferization.to_memref %2 : memref<4x10xi1>
        %284 = index.ceildivu %55, %115
        %285 = arith.shrui %26, %true_29 : i1
        %286 = arith.ori %c-14576_i16, %c-14576_i16 : i16
        %287 = math.exp2 %259 : f16
      }
      %273 = vector.create_mask %c5, %c9 : vector<4x13xi1>
      %274 = math.absi %c-14576_i16 : i16
      %275 = vector.broadcast %c1052194578_i32 : i32 to vector<10xi32>
      %276 = vector.broadcast %false_36 : i1 to vector<10xi1>
      %277 = vector.maskedload %alloc_24[%c0], %276, %275 : memref<13xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
      %278 = index.ceildivu %c9, %c4
      %collapsed_59 = tensor.collapse_shape %7 [[0, 1]] : tensor<4x13xi64> into tensor<52xi64>
      scf.execute_region {
        %280 = math.fma %cst_5, %cst_5, %cst_7 : f32
        %inserted_60 = tensor.insert %c1531692190_i64 into %12[%c1, %c2] : tensor<4x10xi64>
        %281 = index.add %c14, %c13
        %282 = memref.load %alloc_22[%c3, %c3] : memref<4x10xi64>
        memref.assume_alignment %alloc_8, 4 : memref<10x4x13xi16>
        %283 = index.sub %148, %c2
        %splat_61 = tensor.splat %cst_7 : tensor<4x10xf32>
        %284 = vector.transpose %273, [0, 1] : vector<4x13xi1> to vector<4x13xi1>
        %285 = arith.remf %cst_4, %95 : f32
        %286 = vector.bitcast %20 : vector<4xi1> to vector<4xi1>
        %287 = math.sqrt %splat_61 : tensor<4x10xf32>
        %288 = arith.ceildivsi %121, %in : i64
        %289 = arith.minui %out, %c1531692190_i64 : i64
        %290 = math.cttz %c-14576_i16 : i16
        %true_62 = arith.constant true
        %false_63 = arith.constant false
        %291 = vector.transfer_read %alloc_14[%281, %c7], %false_63 : memref<4x13xi1>, vector<i1>
        %292 = arith.divui %false, %true_29 : i1
        scf.yield
      }
      %279 = arith.divsi %in_56, %121 : i64
      linalg.yield %out : i64
    } -> tensor<10x4x13xi64>
    %154 = vector.matrix_multiply %30, %30 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
    %155 = memref.load %alloc_23[%c1] : memref<4xi64>
    %156 = arith.cmpf oge, %cst_5, %cst : f32
    %157 = index.casts %78 : index to i32
    %158 = arith.mulf %cst_1, %cst_6 : f16
    %159 = arith.shrui %c490147963_i32, %c1052194578_i32 : i32
    memref.copy %alloc_14, %alloc_21 : memref<4x13xi1> to memref<4x13xi1>
    %160 = arith.maxf %cst_4, %95 : f32
    %collapsed_45 = tensor.collapse_shape %4 [[0, 1]] : tensor<4x13xi16> into tensor<52xi16>
    %extracted = tensor.extract %1[%c10] : tensor<13xf16>
    %161 = math.powf %1, %1 : tensor<13xf16>
    %162 = arith.ori %false_2, %true_37 : i1
    %163 = math.absf %collapsed_34 : tensor<40x13xf32>
    %164 = math.log10 %cst_3 : f32
    %165 = index.divs %c7, %35
    %166 = tensor.empty() : tensor<4x13xi16>
    %mapped_46 = linalg.map ins(%4, %4 : tensor<4x13xi16>, tensor<4x13xi16>) outs(%166 : tensor<4x13xi16>)
      (%in: i16, %in_56: i16) {
        %253 = tensor.empty() : tensor<13xi16>
        %254 = vector.broadcast %in : i16 to vector<4x10xi16>
        %255 = vector.broadcast %26 : i1 to vector<4x10xi1>
        %256 = vector.broadcast %c1052194578_i32 : i32 to vector<4x10xi32>
        %257 = vector.gather %253[%c7] [%256], %255, %254 : tensor<13xi16>, vector<4x10xi32>, vector<4x10xi1>, vector<4x10xi16> into vector<4x10xi16>
        %258 = tensor.empty(%54) : tensor<?x10xi1>
        %259 = arith.minf %cst, %cst_7 : f32
        %260 = arith.divf %95, %cst : f32
        %261 = vector.broadcast %cst_0 : f32 to vector<10x4x13xf32>
        %262 = vector.broadcast %121 : i64 to vector<9x10xi64>
        vector.transfer_write %262, %65[%c3, %c8, %c11] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<9x10xi64>, memref<10x4x13xi64>
        scf.execute_region {
          %rank_59 = tensor.rank %3 : tensor<4x13xi64>
          %from_elements_60 = tensor.from_elements %121, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %121, %121, %121, %121, %121, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %121, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %121, %121, %121, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %121, %121, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %121, %121, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %121, %121, %121, %121, %c1531692190_i64, %121, %121, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121 : tensor<10x4x13xi64>
          %284 = vector.broadcast %c490147963_i32 : i32 to vector<4x10xi32>
          %285 = index.add %c3, %c9
          %alloc_61 = memref.alloc() : memref<10x4x13xi16>
          memref.store %cst_5, %alloc_18[%c6, %c0, %c1] : memref<10x4x13xf32>
          %286 = vector.broadcast %78 : index to vector<9xindex>
          %287 = vector.broadcast %false : i1 to vector<9xi1>
          vector.scatter %alloc_20[%c6, %c3, %c0] [%286], %287, %287 : memref<10x4x13xi1>, vector<9xindex>, vector<9xi1>, vector<9xi1>
          %288 = arith.maxui %true_37, %true : i1
          %289 = arith.remf %extracted, %cst_6 : f16
          memref.copy %116, %alloc_17 : memref<4x10xf32> to memref<4x10xf32>
          %290 = vector.broadcast %cst_4 : f32 to vector<4x13x4x13xf32>
          %291 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %261, %261, %290 : vector<10x4x13xf32>, vector<10x4x13xf32> into vector<4x13x4x13xf32>
          %292 = index.floordivs %c6, %rank_59
          %293 = vector.extract_strided_slice %154 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
          %294 = index.add %c2, %c10
          %alloca_62 = memref.alloca() : memref<4x10xf32>
          %295 = vector.load %alloc_17[%c2, %c7] : memref<4x10xf32>, vector<4x13xf32>
          scf.yield
        }
        %263 = math.copysign %140, %140 : tensor<4x10xf32>
        %264 = math.absf %extracted : f16
        %265 = arith.floordivsi %false_36, %true_29 : i1
        %266 = index.ceildivu %86, %c2
        %267 = arith.andi %c490147963_i32, %c490147963_i32 : i32
        memref.store %cst_3, %alloc_17[%c2, %c4] : memref<4x10xf32>
        %268 = vector.broadcast %cst_7 : f32 to vector<10x13x13xf32>
        %269 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %261, %110, %268 : vector<10x4x13xf32>, vector<4x13xf32> into vector<10x13x13xf32>
        %270 = index.mul %165, %c14
        %271 = arith.remf %cst_1, %cst_1 : f16
        %272 = arith.remf %95, %cst_5 : f32
        %273 = index.castu %57 : index to i32
        bufferization.dealloc_tensor %18 : tensor<13x10x4xf32>
        bufferization.dealloc_tensor %13 : tensor<10x4x13xf32>
        %274 = arith.cmpf ord, %cst_1, %cst_6 : f16
        %275 = tensor.empty() : tensor<4x10xi16>
        %276 = vector.gather %275[%78, %134] [%256], %255, %254 : tensor<4x10xi16>, vector<4x10xi32>, vector<4x10xi1>, vector<4x10xi16> into vector<4x10xi16>
        %277 = math.sqrt %cst_0 : f32
        %278 = arith.remf %cst_0, %cst_3 : f32
        %279 = vector.multi_reduction <minsi>, %151, %c-14576_i16 [0] : vector<1xi16> to i16
        %alloc_57 = memref.alloc() : memref<4x10xi32>
        %280 = index.divs %c7, %c12
        %alloca_58 = memref.alloca() : memref<4x13xi1>
        %rank = tensor.rank %60 : tensor<4x13xi1>
        %281 = index.maxu %55, %86
        %282 = arith.addf %cst_3, %cst_0 : f32
        %283 = math.exp2 %cst : f32
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %167 = bufferization.to_tensor %65 : memref<10x4x13xi64>
    %168 = arith.maxui %c1531692190_i64, %c1531692190_i64 : i64
    %169 = index.divs %c8, %124
    %170 = arith.negf %cst : f32
    %171 = arith.cmpi ule, %46, %true_29 : i1
    %172 = math.tan %cst_5 : f32
    %173 = affine.load %alloc_21[%c0, %c5] : memref<4x13xi1>
    %174 = math.round %cst : f32
    %175 = vector.flat_transpose %137 {columns = 13 : i32, rows = 1 : i32} : vector<13xf32> -> vector<13xf32>
    %176 = math.copysign %cst_0, %95 : f32
    %177 = math.sqrt %cst_4 : f32
    %178 = arith.remf %cst_4, %cst : f32
    %179 = scf.index_switch %c0 -> index 
    case 1 {
      %c27486_i16 = arith.constant 27486 : i16
      scf.if %46 {
        %263 = memref.load %alloc_16[%c0, %c4] : memref<4x10xi16>
        %264 = memref.load %alloc_21[%c1, %c0] : memref<4x13xi1>
        %alloc_59 = memref.alloc() : memref<10x4x13xi16>
        memref.copy %alloc_8, %alloc_59 : memref<10x4x13xi16> to memref<10x4x13xi16>
        %265 = tensor.empty() : tensor<13xf32>
        %266 = tensor.empty() : tensor<4x10xi16>
        %extracted_60 = tensor.extract %10[%c8] : tensor<13xi1>
        %267 = arith.remf %cst_0, %cst_4 : f32
        %268 = math.round %68 : tensor<4x10xf32>
      } else {
        %263 = arith.shrui %121, %c1531692190_i64 : i64
        %264 = math.cttz %9 : tensor<4x13xi16>
        memref.copy %alloc_13, %alloc_18 : memref<10x4x13xf32> to memref<10x4x13xf32>
        %265 = math.cttz %8 : tensor<10x4x13xi16>
        %266 = arith.minf %extracted, %cst_1 : f16
        %inserted_59 = tensor.insert %false into %60[%c1, %c10] : tensor<4x13xi1>
        memref.assume_alignment %alloc_22, 1 : memref<4x10xi64>
        %267 = math.log %18 : tensor<13x10x4xf32>
      }
      %true_56 = arith.constant true
      %253 = index.sub %86, %c8
      %254 = math.log %collapsed_34 : tensor<40x13xf32>
      %255 = math.round %collapsed_34 : tensor<40x13xf32>
      %256 = math.expm1 %13 : tensor<10x4x13xf32>
      %257 = math.round %5 : tensor<4x13xf16>
      bufferization.dealloc_tensor %0 : tensor<10x4x13xi64>
      %258 = arith.maxf %cst_5, %cst_0 : f32
      %259 = tensor.empty() : tensor<4x13xi1>
      %260 = scf.execute_region -> vector<4x10xi1> {
        %263 = tensor.empty(%c14) : tensor<?xi1>
        %264 = vector.create_mask %c3 : vector<13xi1>
        %265 = arith.mulf %extracted, %extracted : f16
        %266 = arith.minsi %true_37, %true_37 : i1
        %267 = math.atan %13 : tensor<10x4x13xf32>
        %268 = vector.extract_strided_slice %154 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %269 = arith.remsi %true_29, %false_36 : i1
        %270 = index.castu %c2 : index to i32
        %271 = index.sub %57, %35
        %272 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %30, %20, %26 : vector<4xi1>, vector<4xi1> into i1
        %273 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 + d1 + 32) * 128, d0, (d2 + d1 + 32) * 128 + d1 + 32, (d2 + d1 + 32) * 128 + d1 + 32)>(%c12, %52, %78, %c13)
        %274 = bufferization.to_tensor %alloc_22 : memref<4x10xi64>
        %275 = index.maxu %c6, %81
        %276 = arith.shrui %false_2, %173 : i1
        %277 = index.add %c8, %c12
        %278 = math.sqrt %68 : tensor<4x10xf32>
        %279 = vector.broadcast %false_2 : i1 to vector<4x10xi1>
        scf.yield %279 : vector<4x10xi1>
      }
      %261 = vector.insertelement %c-14576_i16, %33[%169 : index] : vector<4xi16>
      %alloc_57 = memref.alloc() : memref<10x4x13xf32>
      %cst_58 = arith.constant 5.091200e+04 : f16
      %262 = index.sub %c12, %35
      scf.yield %c11 : index
    }
    case 2 {
      %253 = vector.splat %extracted : vector<13xf16>
      %254 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 + d1 + 64)>(%169, %81, %115, %c12)
      %255 = vector.broadcast %132 : index to vector<10xindex>
      %256 = vector.broadcast %false_2 : i1 to vector<10xi1>
      %257 = vector.broadcast %c1052194578_i32 : i32 to vector<10xi32>
      vector.scatter %alloc_24[%c7] [%255], %256, %257 : memref<13xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
      %258 = math.cttz %16 : tensor<10x4x13xi64>
      %alloc_56 = memref.alloc() : memref<4x10xi32>
      %259 = vector.broadcast %extracted : f16 to vector<13xf16>
      %260 = vector.broadcast %true : i1 to vector<13xi1>
      %261 = vector.maskedload %alloc_12[%c0, %c6], %260, %259 : memref<4x10xf16>, vector<13xi1>, vector<13xf16> into vector<13xf16>
      %262 = vector.shuffle %261, %259 [1, 3, 9, 10, 14, 16, 22] : vector<13xf16>, vector<13xf16>
      %generated_57 = tensor.generate %57, %107 {
      ^bb0(%arg1: index, %arg2: index):
        %268 = math.sqrt %cst_0 : f32
        %269 = math.tan %collapsed_34 : tensor<40x13xf32>
        %270 = arith.maxui %173, %true_29 : i1
        %alloc_58 = memref.alloc() : memref<4x10xf32>
        tensor.yield %c27645_i16 : i16
      } : tensor<?x?xi16>
      affine.store %c27645_i16, %alloc_11[%c15] : memref<13xi16>
      %263 = vector.insertelement %c27645_i16, %151[%132 : index] : vector<1xi16>
      %264 = math.absi %60 : tensor<4x13xi1>
      memref.tensor_store %92, %65 : memref<10x4x13xi64>
      %265 = arith.subi %false_2, %46 : i1
      %266 = math.roundeven %68 : tensor<4x10xf32>
      %267 = memref.alloca_scope  -> (memref<10x4x13xi1>) {
        %268 = math.roundeven %1 : tensor<13xf16>
        %269 = vector.matrix_multiply %261, %261 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xf16>, vector<13xf16>) -> vector<1xf16>
        %270 = index.add %47, %c1
        %271 = affine.min affine_map<(d0, d1, d2, d3) -> (d3)>(%55, %c7, %c2, %134)
        %272 = bufferization.clone %116 : memref<4x10xf32> to memref<4x10xf32>
        %273 = arith.minui %c1531692190_i64, %121 : i64
        %274 = index.castu %c-14576_i16 : i16 to index
        %275 = bufferization.to_tensor %alloc_12 : memref<4x10xf16>
        %276 = arith.addi %true, %true : i1
        %277 = math.absi %119 : tensor<4x10xi64>
        %278 = arith.remf %cst_1, %cst_1 : f16
        %279 = vector.load %alloc_17[%c0, %c9] : memref<4x10xf32>, vector<4x13xf32>
        %alloc_58 = memref.alloc() : memref<10x4x13xi64>
        memref.copy %65, %alloc_58 : memref<10x4x13xi64> to memref<10x4x13xi64>
        %280 = vector.broadcast %false_2 : i1 to vector<10xi1>
        %281 = vector.maskedload %alloc_21[%c3, %c10], %280, %280 : memref<4x13xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %alloc_59 = memref.alloc() : memref<13xi32>
        memref.copy %alloc_24, %alloc_59 : memref<13xi32> to memref<13xi32>
        %282 = vector.insert %c-14576_i16, %32 [3] : i16 into vector<4xi16>
        %283 = vector.bitcast %259 : vector<13xf16> to vector<13xf16>
        %284 = arith.minui %c1531692190_i64, %121 : i64
        %alloc_60 = memref.alloc() : memref<13x9xi16>
        %285 = tensor.empty() : tensor<4x9xi16>
        %286 = linalg.matmul ins(%4, %alloc_60 : tensor<4x13xi16>, memref<13x9xi16>) outs(%285 : tensor<4x9xi16>) -> tensor<4x9xi16>
        %287 = arith.ori %false_2, %true_37 : i1
        %288 = math.log2 %transposed : tensor<13x10x4xf32>
        %289 = arith.cmpf uge, %cst_6, %cst_1 : f16
        %290 = index.ceildivu %107, %274
        %291 = arith.andi %true_29, %46 : i1
        %292 = math.round %cst_6 : f16
        %splat_61 = tensor.splat %cst_1 : tensor<4x13xf16>
        %293 = affine.min affine_map<(d0) -> (0)>(%c7)
        %294 = arith.remf %95, %cst_3 : f32
        %extracted_62 = tensor.extract %6[%c5, %c3, %c0] : tensor<10x4x13xi64>
        memref.tensor_store %8, %alloc_8 : memref<10x4x13xi16>
        %295 = arith.shrui %46, %false_2 : i1
        %296 = arith.shli %26, %26 : i1
        memref.alloca_scope.return %alloc_15 : memref<10x4x13xi1>
      }
      memref.copy %116, %alloc_10 : memref<4x10xf32> to memref<4x10xf32>
      scf.yield %c15 : index
    }
    case 3 {
      %253 = vector.broadcast %169 : index to vector<10xindex>
      %254 = vector.broadcast %false : i1 to vector<10xi1>
      %255 = vector.broadcast %121 : i64 to vector<10xi64>
      vector.scatter %alloc[%c0] [%253], %254, %255 : memref<13xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
      %256 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%23 : tensor<10x4x13xi64>) {
      ^bb0(%out: i64):
        %269 = vector.create_mask %c14 : vector<13xi1>
        %270 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 * 4, -d3, -d1)>(%120, %52, %115, %115)
        %271 = math.floor %collapsed_34 : tensor<40x13xf32>
        %272 = arith.addf %cst_7, %cst_4 : f32
        %273 = math.sqrt %cst_7 : f32
        %274 = vector.broadcast %c1531692190_i64 : i64 to vector<4x10xi64>
        %275 = vector.broadcast %true_37 : i1 to vector<4x10xi1>
        %276 = vector.broadcast %c1052194578_i32 : i32 to vector<4x10xi32>
        %277 = vector.gather %0[%c1, %81, %c5] [%276], %275, %274 : tensor<10x4x13xi64>, vector<4x10xi32>, vector<4x10xi1>, vector<4x10xi64> into vector<4x10xi64>
        %278 = arith.remf %cst_4, %cst : f32
        %cst_58 = arith.constant 1.81978867E+9 : f32
        %279 = arith.andi %c27645_i16, %c-14576_i16 : i16
        %expanded = tensor.expand_shape %119 [[0], [1, 2]] : tensor<4x10xi64> into tensor<4x10x1xi64>
        %extracted_59 = tensor.extract %14[%c7, %c1, %c2] : tensor<10x4x13xi16>
        %280 = index.divs %c0, %57
        %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %137, %137, %cst_5 : vector<13xf32>, vector<13xf32> into f32
        %282 = math.rsqrt %5 : tensor<4x13xf16>
        %expanded_60 = tensor.expand_shape %11 [[0, 1]] : tensor<13xi32> into tensor<13x1xi32>
        %283 = arith.cmpf olt, %95, %cst_5 : f32
        memref.assume_alignment %65, 1 : memref<10x4x13xi64>
        memref.assume_alignment %alloc_12, 8 : memref<4x10xf16>
        %284 = vector.broadcast %c-14576_i16 : i16 to vector<10xi16>
        %285 = vector.broadcast %true_29 : i1 to vector<10xi1>
        %286 = vector.maskedload %alloc_16[%c3, %c2], %285, %284 : memref<4x10xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %287 = index.castu %c6 : index to i32
        %288 = math.tan %cst_4 : f32
        %289 = math.sqrt %cst_7 : f32
        %290 = index.sub %c6, %c9
        %291 = arith.negf %cst_0 : f32
        %292 = bufferization.to_memref %splat : memref<10x4x13xf32>
        %293 = vector.broadcast %c13 : index to vector<13xindex>
        vector.scatter %alloc_15[%c4, %c0, %c2] [%293], %269, %269 : memref<10x4x13xi1>, vector<13xindex>, vector<13xi1>, vector<13xi1>
        memref.tensor_store %119, %alloc_22 : memref<4x10xi64>
        %294 = tensor.empty(%81) : tensor<?x4x13xf16>
        %295 = math.absf %13 : tensor<10x4x13xf32>
        %296 = arith.maxf %95, %95 : f32
        %297 = arith.cmpi eq, %extracted_59, %extracted_59 : i16
        %298 = arith.shli %173, %false_36 : i1
        linalg.yield %out : i64
      } -> tensor<10x4x13xi64>
      %257 = math.fma %68, %68, %140 : tensor<4x10xf32>
      %258 = math.round %18 : tensor<13x10x4xf32>
      %259 = math.sqrt %cst : f32
      %alloc_56 = memref.alloc() : memref<10x4x13xi64>
      memref.copy %65, %alloc_56 : memref<10x4x13xi64> to memref<10x4x13xi64>
      %260 = math.floor %68 : tensor<4x10xf32>
      %261 = affine.if affine_set<(d0, d1) : (d1 >= 0, d1 - (d0 + d1 mod 64) - 8 == 0)>(%c0, %c7) -> i1 {
        %269 = arith.divsi %true_29, %true_37 : i1
        %270 = arith.remf %extracted, %cst_1 : f16
        %271 = math.log1p %cst_6 : f16
        %272 = arith.cmpi sgt, %true_29, %46 : i1
        %273 = arith.remf %cst, %cst_7 : f32
        %274 = math.round %13 : tensor<10x4x13xf32>
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %20, %20, %46 : vector<4xi1>, vector<4xi1> into i1
        %276 = math.absi %166 : tensor<4x13xi16>
        affine.yield %true : i1
      } else {
        %269 = arith.minui %26, %26 : i1
        %270 = index.sizeof
        %271 = index.ceildivu %91, %134
        %collapsed_58 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<10x4x13xf32> into tensor<40x13xf32>
        %272 = index.sub %c3, %115
        %273 = math.floor %1 : tensor<13xf16>
        %274 = bufferization.to_memref %140 : memref<4x10xf32>
        memref.copy %116, %alloc_10 : memref<4x10xf32> to memref<4x10xf32>
        affine.yield %true_37 : i1
      }
      %262 = arith.remui %false_36, %false : i1
      %263 = arith.andi %true_29, %46 : i1
      %from_elements_57 = tensor.from_elements %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %121, %121, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %121, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %121, %121, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64 : tensor<10x4x13xi64>
      scf.if %true_37 {
        %269 = arith.floordivsi %46, %26 : i1
        %splat_58 = tensor.splat %173 : tensor<4x10xi1>
        %270 = arith.andi %173, %46 : i1
        %collapsed_59 = tensor.collapse_shape %transposed [[0, 1], [2]] : tensor<13x10x4xf32> into tensor<130x4xf32>
        %271 = math.round %13 : tensor<10x4x13xf32>
        %272 = math.absf %5 : tensor<4x13xf16>
        %273 = math.log %collapsed_59 : tensor<130x4xf32>
        %alloca_60 = memref.alloca() : memref<4x10xf32>
      } else {
        %269 = math.absf %collapsed_34 : tensor<40x13xf32>
        %270 = arith.remui %false_36, %26 : i1
        %c1965533564_i32 = arith.constant 1965533564 : i32
        %271 = affine.apply affine_map<(d0, d1) -> ((d0 * 2) ceildiv 128)>(%c0, %55)
        %272 = arith.remui %c1531692190_i64, %c1531692190_i64 : i64
        %alloc_58 = memref.alloc() : memref<13xf32>
        %273 = arith.minf %95, %cst_5 : f32
        %274 = arith.addf %cst_1, %cst_6 : f16
      }
      %264 = vector.broadcast %169 : index to vector<4xindex>
      %265 = vector.broadcast %cst : f32 to vector<4xf32>
      vector.scatter %alloc_18[%c4, %c2, %c1] [%264], %20, %265 : memref<10x4x13xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
      %266 = math.log2 %cst : f32
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_10 : memref<4x10xf32>) outs(%13 : tensor<10x4x13xf32>) {
      ^bb0(%in: f32, %out: f32):
        %269 = math.fpowi %cst_1, %c490147963_i32 : f16, i32
        %alloc_58 = memref.alloc() : memref<13xf16>
        %270 = math.exp2 %13 : tensor<10x4x13xf32>
        %271 = math.round %68 : tensor<4x10xf32>
        %272 = arith.cmpf ugt, %cst_7, %cst : f32
        %273 = math.absi %15 : tensor<4x10xi32>
        %274 = index.sizeof
        %275 = arith.maxui %c-14576_i16, %c27645_i16 : i16
        %276 = math.cttz %15 : tensor<4x10xi32>
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 floordiv 64)>(%54, %c13, %c12, %c9)
        %278 = vector.matrix_multiply %142, %151 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<1xi16>) -> vector<4xi16>
        %alloc_59 = memref.alloc() : memref<10x4x13xi16>
        %279 = index.sizeof
        %280 = index.add %277, %54
        %alloc_60 = memref.alloc() : memref<10x4x13xf32>
        %281 = arith.subi %c1531692190_i64, %c1531692190_i64 : i64
        affine.store %121, %alloc_23[%c14] : memref<4xi64>
        %282 = arith.remf %cst_0, %in : f32
        %283 = vector.broadcast %c1531692190_i64 : i64 to vector<i64>
        %284 = vector.transfer_write %283, %119[%280, %c10] : vector<i64>, tensor<4x10xi64>
        %285 = vector.broadcast %in : f32 to vector<13xf32>
        %286 = vector.fma %285, %285, %285 : vector<13xf32>
        %287 = index.sub %c10, %c8
        %288 = affine.max affine_map<(d0, d1, d2) -> (d0)>(%78, %134, %57)
        %289 = bufferization.to_memref %collapsed_26 : memref<52xi64>
        %290 = arith.shli %true_37, %false_36 : i1
        %291 = math.sqrt %1 : tensor<13xf16>
        %292 = vector.multi_reduction <maxf>, %137, %137 [] : vector<13xf32> to vector<13xf32>
        %293 = bufferization.to_tensor %116 : memref<4x10xf32>
        memref.assume_alignment %alloc_13, 4 : memref<10x4x13xf32>
        memref.copy %alloc_20, %alloc_15 : memref<10x4x13xi1> to memref<10x4x13xi1>
        %294 = math.log10 %collapsed_34 : tensor<40x13xf32>
        %295 = affine.load %alloc_13[%c1, %c10, %c3] : memref<10x4x13xf32>
        %296 = index.casts %279 : index to i32
        linalg.yield %cst_0 : f32
      } -> tensor<10x4x13xf32>
      %268 = arith.andi %false_36, %46 : i1
      scf.yield %57 : index
    }
    case 4 {
      %253 = vector.broadcast %true : i1 to vector<4xi1>
      %254 = vector.transfer_write %253, %2[%c1, %134] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi1>, tensor<4x10xi1>
      memref.store %false, %alloc_14[%c3, %c7] : memref<4x13xi1>
      %rank = tensor.rank %collapsed_35 : tensor<40xi64>
      %255 = vector.shuffle %30, %253 [1, 2, 3, 5] : vector<4xi1>, vector<4xi1>
      %256 = math.ctpop %22 : tensor<i32>
      %257 = math.fma %collapsed_34, %collapsed_34, %collapsed_34 : tensor<40x13xf32>
      %258 = vector.broadcast %78 : index to vector<9xindex>
      %259 = vector.broadcast %46 : i1 to vector<9xi1>
      %260 = vector.broadcast %extracted : f16 to vector<9xf16>
      vector.scatter %alloc_9[%c0, %c2, %c12] [%258], %259, %260 : memref<10x4x13xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
      %261 = arith.divsi %121, %121 : i64
      %262 = math.fma %95, %cst_0, %cst_0 : f32
      %263 = math.round %140 : tensor<4x10xf32>
      %264 = math.absi %16 : tensor<10x4x13xi64>
      %265 = arith.ceildivsi %c27645_i16, %c-14576_i16 : i16
      %266 = index.add %115, %c5
      vector.print %137 : vector<13xf32>
      %collapsed_56 = tensor.collapse_shape %166 [[0, 1]] : tensor<4x13xi16> into tensor<52xi16>
      %267 = math.atan %cst_0 : f32
      scf.yield %52 : index
    }
    default {
      scf.execute_region {
        %266 = math.log %1 : tensor<13xf16>
        %267 = arith.shrui %true_29, %173 : i1
        %268 = math.atan %95 : f32
        %269 = math.exp %68 : tensor<4x10xf32>
        %270 = vector.transpose %142, [0] : vector<4xi16> to vector<4xi16>
        %271 = math.exp %extracted : f16
        %272 = index.sizeof
        %273 = vector.broadcast %cst_3 : f32 to vector<4xf32>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %110, %137, %273 : vector<4x13xf32>, vector<13xf32> into vector<4xf32>
        %275 = arith.remf %cst_3, %cst : f32
        %276 = vector.load %alloc_9[%c6, %c0, %c0] : memref<10x4x13xf16>, vector<13xf16>
        %277 = bufferization.clone %alloc_16 : memref<4x10xi16> to memref<4x10xi16>
        %278 = vector.broadcast %c1531692190_i64 : i64 to vector<i64>
        %279 = vector.transfer_write %278, %7[%52, %272] : vector<i64>, tensor<4x13xi64>
        %280 = arith.muli %26, %true_37 : i1
        memref.store %false, %alloc_21[%c0, %c8] : memref<4x13xi1>
        %281 = arith.minf %cst_5, %cst_4 : f32
        %282 = math.round %95 : f32
        scf.yield
      }
      %253 = arith.andi %c-14576_i16, %c27645_i16 : i16
      %254 = bufferization.clone %alloc_11 : memref<13xi16> to memref<13xi16>
      %collapsed_56 = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<10x4x13xi64> into tensor<40x13xi64>
      %generated_57 = tensor.generate %c4, %165, %c8 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %rank = tensor.rank %92 : tensor<10x4x13xi64>
        %266 = arith.remf %95, %cst_0 : f32
        %true_59 = arith.constant true
        %267 = arith.divsi %true, %173 : i1
        tensor.yield %c1531692190_i64 : i64
      } : tensor<?x?x?xi64>
      %255 = index.mul %c14, %78
      %256 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %33, %32, %c27645_i16 : vector<4xi16>, vector<4xi16> into i16
      %257 = arith.remf %cst_5, %cst_7 : f32
      %258 = vector.broadcast %true_37 : i1 to vector<4xi1>
      vector.transfer_write %258, %alloc_21[%52, %47] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi1>, memref<4x13xi1>
      %259 = arith.addf %cst_4, %95 : f32
      %260 = arith.andi %46, %false_2 : i1
      bufferization.dealloc_tensor %7 : tensor<4x13xi64>
      %261 = index.castu %true_29 : i1 to index
      %from_elements_58 = tensor.from_elements %26, %46, %26, %false_2, %true, %173, %26, %true_29, %true, %true, %26, %false, %true_37 : tensor<13xi1>
      %262 = arith.addi %c27645_i16, %c27645_i16 : i16
      %263 = vector.broadcast %115 : index to vector<10xindex>
      %264 = vector.broadcast %true_29 : i1 to vector<10xi1>
      %265 = vector.broadcast %cst_1 : f16 to vector<10xf16>
      vector.scatter %alloc_12[%c0, %c8] [%263], %264, %265 : memref<4x10xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
      scf.yield %255 : index
    }
    %180 = bufferization.to_memref %12 : memref<4x10xi64>
    %181 = arith.andi %c1052194578_i32, %c490147963_i32 : i32
    %182 = affine.min affine_map<(d0) -> ((d0 * 3) mod 32, d0 * 4 + 1, 0)>(%148)
    %183 = math.log10 %18 : tensor<13x10x4xf32>
    %184 = math.exp %1 : tensor<13xf16>
    %cast = tensor.cast %7 : tensor<4x13xi64> to tensor<?x?xi64>
    %185 = affine.apply affine_map<(d0, d1, d2) -> ((((d0 - 32) mod 128) floordiv 128) floordiv 4)>(%165, %54, %55)
    %186 = affine.max affine_map<(d0) -> (d0 * 2, d0, -d0, -(d0 - 64))>(%c4)
    %187 = arith.subi %c27645_i16, %c-14576_i16 : i16
    %188 = math.copysign %5, %5 : tensor<4x13xf16>
    %189 = arith.shrui %46, %false : i1
    %190 = math.log2 %cst_5 : f32
    %191 = math.absi %3 : tensor<4x13xi64>
    %192 = scf.while (%arg1 = %cst_3) : (f32) -> f32 {
      %253 = math.sqrt %13 : tensor<10x4x13xf32>
      %254 = arith.remf %95, %95 : f32
      %255 = arith.maxf %arg1, %cst_4 : f32
      %256 = bufferization.to_memref %11 : memref<13xi32>
      %257 = affine.for %arg2 = 0 to 122 iter_args(%arg3 = %11) -> (tensor<13xi32>) {
        affine.yield %11 : tensor<13xi32>
      }
      %258 = vector.broadcast %cst_4 : f32 to vector<4xf32>
      %dest, %accumulated_value = vector.scan <maxf>, %109, %258 {inclusive = true, reduction_dim = 1 : i64} : vector<4x13xf32>, vector<4xf32>
      %259 = math.absf %140 : tensor<4x10xf32>
      %260 = arith.maxsi %c-14576_i16, %c27645_i16 : i16
      scf.condition(%true) %cst_0 : f32
    } do {
    ^bb0(%arg1: f32):
      %253 = vector.flat_transpose %30 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
      %254 = math.absi %98 : tensor<4x4xi32>
      scf.index_switch %c11 
      case 1 {
        %266 = arith.remf %cst_5, %arg1 : f32
        %267 = math.exp2 %cst_3 : f32
        %268 = math.absi %92 : tensor<10x4x13xi64>
        %269 = arith.addf %cst, %cst_4 : f32
        %270 = bufferization.to_tensor %alloc_9 : memref<10x4x13xf16>
        %271 = math.round %13 : tensor<10x4x13xf32>
        %272 = vector.create_mask %c6, %c10 : vector<4x13xi1>
        %273 = vector.broadcast %c15 : index to vector<10xindex>
        %274 = vector.broadcast %173 : i1 to vector<10xi1>
        %275 = vector.broadcast %extracted : f16 to vector<10xf16>
        vector.scatter %alloc_19[%c5, %c1, %c6] [%273], %274, %275 : memref<10x4x13xf16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
        %276 = bufferization.to_memref %12 : memref<4x10xi64>
        %277 = arith.addf %cst_6, %cst_6 : f16
        %278 = math.round %140 : tensor<4x10xf32>
        %279 = affine.min affine_map<(d0, d1) -> (d0 * 2, -d1)>(%35, %148)
        %280 = bufferization.to_tensor %alloc_20 : memref<10x4x13xi1>
        %281 = math.round %transposed : tensor<13x10x4xf32>
        %282 = tensor.empty() : tensor<40x13xi32>
        %283 = math.fpowi %collapsed_34, %282 : tensor<40x13xf32>, tensor<40x13xi32>
        memref.assume_alignment %alloc_18, 4 : memref<10x4x13xf32>
        scf.yield
      }
      default {
        %266 = memref.atomic_rmw addf %cst_5, %alloc_13[%c4, %c1, %c4] : (f32, memref<10x4x13xf32>) -> f32
        %267 = vector.shuffle %20, %20 [1, 2, 3, 4, 5] : vector<4xi1>, vector<4xi1>
        %268 = index.maxs %c14, %78
        %269 = vector.broadcast %cst_6 : f16 to vector<4xf16>
        %270 = vector.maskedload %alloc_12[%c1, %c1], %253, %269 : memref<4x10xf16>, vector<4xi1>, vector<4xf16> into vector<4xf16>
        %splat_58 = tensor.splat %26 : tensor<4x10xi1>
        %271 = math.atan %68 : tensor<4x10xf32>
        %272 = bufferization.to_tensor %alloc_18 : memref<10x4x13xf32>
        %expanded = tensor.expand_shape %collapsed_35 [[0, 1]] : tensor<40xi64> into tensor<40x1xi64>
        %c3516_i16 = arith.constant 3516 : i16
        %273 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 + d1)>(%107, %c1, %55, %c8)
        %274 = vector.extract_strided_slice %253 {offsets = [1], sizes = [2], strides = [1]} : vector<4xi1> to vector<2xi1>
        %275 = arith.minui %false_2, %true : i1
        %276 = math.copysign %arg1, %cst_7 : f32
        %rank = tensor.rank %11 : tensor<13xi32>
        %277 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %278 = arith.subi %46, %false : i1
      }
      %255 = tensor.empty() : tensor<4x13xi1>
      %256 = arith.addf %cst_3, %95 : f32
      %257 = arith.divf %arg1, %cst_3 : f32
      %258 = arith.cmpi sge, %c490147963_i32, %c490147963_i32 : i32
      %259 = tensor.empty(%c6) : tensor<10x?x13xi32>
      %260 = math.atan %95 : f32
      %261 = math.exp %1 : tensor<13xf16>
      %alloca_56 = memref.alloca() : memref<13xi64>
      memref.copy %180, %alloc_22 : memref<4x10xi64> to memref<4x10xi64>
      %262 = vector.load %alloc_17[%c1, %c7] : memref<4x10xf32>, vector<4x13xf32>
      %263 = math.rsqrt %extracted : f16
      %alloc_57 = memref.alloc() : memref<4x10x13xf16>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_57, %alloc_9 : memref<4x10x13xf16>, memref<10x4x13xf16>) outs(%splat_39 : tensor<10x4x13xf16>) {
      ^bb0(%in: f16, %in_58: f16, %out: f16):
        %266 = arith.remui %false_2, %true : i1
        %267 = arith.shrui %true_37, %true_29 : i1
        %from_elements_59 = tensor.from_elements %cst_0, %cst_3, %cst_4, %cst_5, %cst_5, %cst_3, %cst_4, %cst_7, %cst_0, %cst, %arg1, %cst_4, %95, %cst_0, %cst_0, %cst_5, %cst, %95, %cst_4, %cst, %95, %cst, %cst_0, %95, %arg1, %95, %cst_5, %arg1, %cst, %cst_0, %cst, %cst_7, %cst_5, %cst_4, %cst_7, %cst, %arg1, %cst_7, %cst_7, %cst_4 : tensor<4x10xf32>
        %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %154, %154, %false : vector<1xi1>, vector<1xi1> into i1
        %269 = vector.broadcast %false_36 : i1 to vector<4x4xi1>
        %270 = vector.outerproduct %253, %30, %269 {kind = #vector.kind<maxsi>} : vector<4xi1>, vector<4xi1>
        %271 = index.mul %55, %78
        %272 = vector.broadcast %46 : i1 to vector<4x4xi1>
        %273 = vector.outerproduct %20, %20, %272 {kind = #vector.kind<maxsi>} : vector<4xi1>, vector<4xi1>
        %274 = arith.maxui %c1531692190_i64, %c1531692190_i64 : i64
        %275 = arith.divui %false, %26 : i1
        %from_elements_60 = tensor.from_elements %out, %cst_6, %out, %in_58, %cst_1, %cst_6, %out, %cst_6, %extracted, %cst_6, %in_58, %cst_1, %extracted, %cst_6, %in_58, %cst_1, %cst_1, %cst_6, %extracted, %in_58, %cst_6, %cst_6, %out, %in, %in_58, %in_58, %in, %cst_1, %in, %extracted, %extracted, %in_58, %cst_1, %in, %in_58, %out, %in_58, %cst_6, %extracted, %in, %in_58, %extracted, %in, %out, %cst_1, %in, %out, %in_58, %in, %extracted, %in_58, %extracted, %in_58, %cst_1, %out, %extracted, %cst_1, %out, %out, %extracted, %in_58, %out, %cst_6, %extracted, %in, %out, %extracted, %cst_1, %cst_1, %cst_6, %in, %cst_1, %cst_1, %in, %in_58, %in_58, %cst_1, %extracted, %out, %cst_6, %in_58, %in, %cst_6, %in, %cst_6, %in_58, %cst_6, %extracted, %in, %in_58, %out, %cst_6, %in_58, %cst_1, %in, %out, %out, %in, %extracted, %out, %in_58, %in_58, %out, %out, %extracted, %extracted, %cst_6, %cst_1, %extracted, %extracted, %in, %cst_1, %cst_1, %cst_1, %cst_1, %in, %in_58, %in_58, %cst_6, %extracted, %cst_6, %in_58, %cst_1, %in, %in_58, %cst_6, %out, %out, %in, %in_58, %in_58, %out, %extracted, %out, %in, %out, %in_58, %in_58, %cst_1, %cst_6, %in, %cst_6, %cst_1, %cst_1, %in_58, %cst_1, %cst_6, %out, %extracted, %cst_6, %in, %cst_6, %extracted, %in_58, %extracted, %in, %cst_6, %in, %in, %extracted, %cst_1, %extracted, %out, %cst_1, %in_58, %cst_6, %out, %cst_1, %extracted, %in_58, %extracted, %out, %cst_6, %extracted, %in_58, %in_58, %in_58, %extracted, %extracted, %cst_6, %out, %in, %out, %cst_6, %cst_1, %in_58, %extracted, %in_58, %in_58, %extracted, %out, %out, %in, %cst_1, %in, %cst_1, %in, %out, %in, %in_58, %in, %extracted, %extracted, %cst_1, %in_58, %in, %in, %in_58, %in_58, %in_58, %in_58, %extracted, %in_58, %in, %cst_6, %cst_6, %in_58, %out, %in_58, %out, %cst_6, %out, %out, %extracted, %cst_1, %cst_1, %extracted, %cst_1, %cst_6, %in_58, %in_58, %extracted, %out, %in, %extracted, %extracted, %in, %in_58, %cst_1, %in, %in_58, %cst_1, %cst_1, %in_58, %out, %in_58, %cst_6, %out, %in, %cst_6, %extracted, %out, %cst_1, %cst_6, %in, %out, %in_58, %extracted, %out, %out, %in_58, %out, %out, %extracted, %in, %cst_1, %in_58, %in_58, %in, %cst_6, %cst_1, %cst_1, %cst_1, %out, %extracted, %in, %out, %in_58, %in, %out, %extracted, %cst_6, %in, %extracted, %in, %extracted, %cst_6, %cst_1, %in, %in_58, %cst_6, %in, %in_58, %extracted, %in, %cst_1, %extracted, %out, %out, %cst_1, %cst_6, %in_58, %cst_1, %out, %out, %in_58, %out, %cst_1, %cst_6, %cst_6, %in_58, %out, %in_58, %out, %extracted, %in, %in, %cst_1, %out, %in_58, %cst_1, %cst_1, %in_58, %in_58, %extracted, %out, %cst_1, %in_58, %extracted, %in_58, %cst_1, %cst_1, %in_58, %in, %extracted, %cst_6, %in_58, %in, %out, %in, %cst_6, %in, %cst_1, %in_58, %cst_6, %cst_6, %in_58, %cst_6, %cst_1, %in_58, %in, %cst_1, %extracted, %cst_6, %out, %in, %extracted, %cst_6, %in_58, %extracted, %extracted, %cst_1, %in, %in, %cst_1, %out, %cst_6, %in_58, %in, %cst_6, %out, %cst_6, %extracted, %in, %in, %extracted, %extracted, %cst_1, %cst_6, %in_58, %out, %cst_1, %in, %cst_6, %out, %in, %in_58, %out, %cst_1, %out, %cst_6, %out, %extracted, %in, %out, %extracted, %in, %out, %cst_1, %out, %in_58, %out, %in_58, %extracted, %in_58, %out, %cst_6, %cst_6, %cst_1, %out, %cst_6, %in_58, %out, %in_58, %in, %cst_6, %in, %cst_6, %in, %cst_6, %extracted, %extracted, %cst_1, %extracted, %in, %in, %extracted, %out, %in_58, %cst_6, %in_58, %in_58, %cst_1, %in_58, %in_58, %cst_1, %out, %extracted, %cst_1, %extracted, %cst_6, %in_58, %extracted, %out, %in, %out, %cst_1, %in, %extracted, %cst_6, %cst_1, %cst_6, %extracted, %cst_6, %cst_1, %cst_6, %in_58, %cst_1, %out, %in, %in, %in_58, %cst_1, %cst_1, %cst_6, %cst_1, %out, %in, %cst_1, %out, %cst_6, %out, %in, %cst_1, %cst_6, %in_58, %cst_6, %extracted, %in_58, %in, %cst_6, %extracted, %in, %in, %cst_6, %cst_6, %extracted, %cst_1, %cst_1, %cst_1, %cst_6, %in, %cst_1, %cst_6, %extracted, %extracted, %in_58, %cst_6, %out, %in_58, %cst_1, %cst_1, %out, %in_58, %extracted, %out, %out, %in, %cst_6, %cst_6, %out, %in_58, %out, %cst_6, %in, %cst_1, %cst_6, %cst_6, %out, %cst_6 : tensor<10x4x13xf16>
        %cst_61 = arith.constant 0x4E0D18B3 : f32
        %276 = arith.minf %cst_1, %cst_6 : f16
        %277 = vector.broadcast %in : f16 to vector<10x9xf16>
        vector.transfer_write %277, %alloc_9[%c15, %165, %124] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<10x9xf16>, memref<10x4x13xf16>
        memref.store %c490147963_i32, %alloc_24[%c5] : memref<13xi32>
        %extracted_62 = tensor.extract %140[%c2, %c2] : tensor<4x10xf32>
        %278 = tensor.empty() : tensor<4x10xf32>
        %rank = tensor.rank %4 : tensor<4x13xi16>
        memref.assume_alignment %alloc_13, 8 : memref<10x4x13xf32>
        %279 = arith.cmpf ole, %cst_6, %extracted : f16
        %280 = index.maxu %57, %186
        %281 = math.round %1 : tensor<13xf16>
        %282 = arith.negf %cst : f32
        %283 = math.log %out : f16
        %284 = index.mul %280, %185
        %285 = math.rsqrt %cst_1 : f16
        %286 = tensor.empty() : tensor<13x9xi16>
        %287 = tensor.empty() : tensor<4x9xi16>
        %288 = linalg.matmul ins(%4, %286 : tensor<4x13xi16>, tensor<13x9xi16>) outs(%287 : tensor<4x9xi16>) -> tensor<4x9xi16>
        %289 = arith.maxui %c-14576_i16, %c27645_i16 : i16
        %290 = math.fma %transposed, %transposed, %transposed : tensor<13x10x4xf32>
        %291 = arith.addf %cst_7, %cst_3 : f32
        %292 = arith.minf %out, %cst_1 : f16
        %293 = math.exp %140 : tensor<4x10xf32>
        %294 = arith.remsi %c1531692190_i64, %c1531692190_i64 : i64
        linalg.yield %cst_1 : f16
      } -> tensor<10x4x13xf16>
      %265 = scf.while (%arg2 = %alloc_17) : (memref<4x10xf32>) -> memref<4x10xf32> {
        %266 = affine.apply affine_map<(d0) -> (d0 + ((d0 * -2) floordiv 64) ceildiv 2 - 8)>(%c11)
        %267 = bufferization.to_memref %collapsed_35 : memref<40xi64>
        %268 = index.ceildivu %c1, %134
        %269 = index.maxu %148, %86
        %270 = vector.create_mask %132, %55, %185 : vector<10x4x13xi1>
        %271 = bufferization.to_tensor %alloc_10 : memref<4x10xf32>
        %272 = vector.transpose %137, [0] : vector<13xf32> to vector<13xf32>
        %cst_58 = arith.constant 0x4CB56320 : f32
        scf.condition(%26) %arg2 : memref<4x10xf32>
      } do {
      ^bb0(%arg2: memref<4x10xf32>):
        %266 = arith.remui %c27645_i16, %c-14576_i16 : i16
        %267 = vector.broadcast %57 : index to vector<9xindex>
        %268 = vector.broadcast %false_36 : i1 to vector<9xi1>
        %269 = vector.broadcast %c1531692190_i64 : i64 to vector<9xi64>
        vector.scatter %180[%c0, %c8] [%267], %268, %269 : memref<4x10xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
        %270 = math.rsqrt %18 : tensor<13x10x4xf32>
        %alloca_58 = memref.alloca() : memref<13xi32>
        %c989921582_i64 = arith.constant 989921582 : i64
        %271 = tensor.empty() : tensor<4x10xi64>
        %272 = math.cttz %collapsed : tensor<40xi64>
        %273 = vector.broadcast %c0 : index to vector<4xindex>
        %274 = vector.broadcast %extracted : f16 to vector<4xf16>
        vector.scatter %alloc_19[%c6, %c3, %c2] [%273], %20, %274 : memref<10x4x13xf16>, vector<4xindex>, vector<4xi1>, vector<4xf16>
        %cst_59 = arith.constant 0x4E67918A : f32
        %275 = math.cttz %collapsed_45 : tensor<52xi16>
        %276 = arith.shrui %173, %true_29 : i1
        %277 = arith.shrsi %26, %true_29 : i1
        %278 = vector.broadcast %cst_0 : f32 to vector<10x4x13xf32>
        %279 = vector.fma %278, %278, %278 : vector<10x4x13xf32>
        %280 = arith.addi %false_2, %true_29 : i1
        %281 = math.absf %140 : tensor<4x10xf32>
        %282 = arith.shli %false, %173 : i1
        scf.yield %alloc_17 : memref<4x10xf32>
      }
      scf.yield %95 : f32
    }
    %193 = arith.andi %c1531692190_i64, %121 : i64
    %194 = arith.remf %cst_0, %cst_7 : f32
    %195 = arith.shrui %false_2, %true_29 : i1
    %196 = vector.matrix_multiply %33, %33 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
    %197 = vector.multi_reduction <minui>, %30, %20 [] : vector<4xi1> to vector<4xi1>
    %198 = index.ceildivu %78, %120
    %199 = arith.minsi %173, %173 : i1
    %200 = index.maxu %c4, %35
    %201 = scf.index_switch %124 -> vector<13xi32> 
    case 1 {
      %253 = arith.xori %true_37, %46 : i1
      %254 = math.exp2 %140 : tensor<4x10xf32>
      %255 = index.ceildivu %124, %c0
      %256 = vector.broadcast %c12 : index to vector<13xindex>
      %257 = vector.broadcast %false : i1 to vector<13xi1>
      %258 = vector.broadcast %c27645_i16 : i16 to vector<13xi16>
      vector.scatter %alloc_8[%c8, %c2, %c5] [%256], %257, %258 : memref<10x4x13xi16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
      %cast_56 = tensor.cast %11 : tensor<13xi32> to tensor<?xi32>
      %259 = index.sizeof
      memref.assume_alignment %alloc_21, 1 : memref<4x13xi1>
      %alloca_57 = memref.alloca() : memref<10x4x13xi64>
      %260 = math.copysign %extracted, %cst_1 : f16
      %261 = math.log2 %5 : tensor<4x13xf16>
      %262 = index.ceildivu %198, %c9
      memref.store %cst_6, %alloc_19[%c9, %c3, %c3] : memref<10x4x13xf16>
      %263 = arith.ori %false, %26 : i1
      %264 = arith.addf %cst_0, %cst_7 : f32
      %265 = math.absi %splat_40 : tensor<13xi1>
      %266 = math.absf %collapsed_34 : tensor<40x13xf32>
      %267 = vector.broadcast %c1052194578_i32 : i32 to vector<13xi32>
      scf.yield %267 : vector<13xi32>
    }
    case 2 {
      %253 = index.sub %c3, %c2
      %254 = math.atan %cst_0 : f32
      %inserted_56 = tensor.insert %extracted into %1[%c11] : tensor<13xf16>
      %255 = arith.minui %c27645_i16, %c27645_i16 : i16
      %256 = arith.andi %46, %173 : i1
      %257 = index.ceildivu %c1, %169
      %258 = index.add %c8, %c11
      %259 = math.cttz %11 : tensor<13xi32>
      %260 = arith.shrsi %173, %false_36 : i1
      %261 = arith.remsi %26, %173 : i1
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_11 : memref<13xi16>) outs(%14 : tensor<10x4x13xi16>) {
      ^bb0(%in: i16, %out: i16):
        %extracted_59 = tensor.extract %92[%c0, %c2, %c6] : tensor<10x4x13xi64>
        %267 = math.sqrt %splat_39 : tensor<10x4x13xf16>
        %268 = math.cos %13 : tensor<10x4x13xf32>
        %269 = arith.minui %46, %false_36 : i1
        %270 = affine.load %alloc_23[%c10] : memref<4xi64>
        %271 = arith.shrui %false_2, %26 : i1
        %272 = tensor.empty() : tensor<13x13xi16>
        %273 = tensor.empty() : tensor<4x13xi16>
        %274 = linalg.matmul ins(%9, %272 : tensor<4x13xi16>, tensor<13x13xi16>) outs(%273 : tensor<4x13xi16>) -> tensor<4x13xi16>
        %275 = math.floor %68 : tensor<4x10xf32>
        %276 = vector.reduction <maxf>, %175 : vector<13xf32> into f32
        %277 = bufferization.to_tensor %alloc_14 : memref<4x13xi1>
        %278 = memref.load %alloc_19[%c4, %c3, %c1] : memref<10x4x13xf16>
        %279 = math.cttz %46 : i1
        %280 = math.rsqrt %transposed : tensor<13x10x4xf32>
        %collapsed_60 = tensor.collapse_shape %60 [[0, 1]] : tensor<4x13xi1> into tensor<52xi1>
        %281 = math.expm1 %cst_4 : f32
        %splat_61 = tensor.splat %out : tensor<4x10xi16>
        %collapsed_62 = tensor.collapse_shape %collapsed_34 [[0, 1]] : tensor<40x13xf32> into tensor<520xf32>
        %282 = arith.remsi %out, %c-14576_i16 : i16
        %283 = bufferization.to_memref %9 : memref<4x13xi16>
        %284 = memref.load %283[%c2, %c10] : memref<4x13xi16>
        %285 = tensor.empty() : tensor<10x4x13xi64>
        %splat_63 = tensor.splat %out : tensor<13xi16>
        %286 = arith.minf %cst_6, %cst_6 : f16
        %287 = arith.shrsi %46, %true_29 : i1
        %288 = math.copysign %collapsed_34, %collapsed_34 : tensor<40x13xf32>
        %289 = bufferization.to_tensor %alloc_13 : memref<10x4x13xf32>
        %290 = index.ceildivu %107, %258
        %291 = arith.cmpi ult, %c1052194578_i32, %c490147963_i32 : i32
        %292 = arith.addf %cst_4, %cst_4 : f32
        %293 = bufferization.to_memref %cast : memref<?x?xi64>
        %294 = index.sub %c9, %165
        %295 = vector.transpose %33, [0] : vector<4xi16> to vector<4xi16>
        linalg.yield %c27645_i16 : i16
      } -> tensor<10x4x13xi16>
      %generated_57 = tensor.generate %52 {
      ^bb0(%arg1: index):
        %267 = memref.load %alloc_21[%c2, %c3] : memref<4x13xi1>
        %268 = arith.addf %95, %cst_5 : f32
        %269 = vector.reduction <or>, %33 : vector<4xi16> into i16
        %270 = index.add %169, %185
        tensor.yield %121 : i64
      } : tensor<?xi64>
      %263 = arith.cmpf ule, %cst_4, %cst_5 : f32
      %264 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 + d1)>(%35, %c0, %c3, %257)
      %true_58 = index.bool.constant true
      %265 = bufferization.to_tensor %alloc_10 : memref<4x10xf32>
      %266 = vector.broadcast %c1052194578_i32 : i32 to vector<13xi32>
      scf.yield %266 : vector<13xi32>
    }
    default {
      %253 = math.absf %cst_4 : f32
      %254 = arith.cmpi eq, %true, %173 : i1
      %255 = memref.atomic_rmw maxs %c27645_i16, %alloc_16[%c2, %c2] : (i16, memref<4x10xi16>) -> i16
      %256 = bufferization.to_tensor %alloc : memref<13xi64>
      %257 = math.cttz %7 : tensor<4x13xi64>
      %258 = arith.mulf %cst_6, %cst_1 : f16
      %259 = arith.remui %c490147963_i32, %c490147963_i32 : i32
      %260 = vector.shuffle %30, %154 [0, 1, 3] : vector<4xi1>, vector<1xi1>
      %261 = math.round %cst_3 : f32
      %262 = math.cos %68 : tensor<4x10xf32>
      %263 = arith.maxui %26, %false_2 : i1
      %264 = math.log1p %5 : tensor<4x13xf16>
      %265 = bufferization.to_tensor %alloc_19 : memref<10x4x13xf16>
      %266 = index.ceildivu %182, %c0
      %267 = index.divs %c12, %c9
      %268 = index.casts %54 : index to i32
      %269 = vector.broadcast %c490147963_i32 : i32 to vector<13xi32>
      scf.yield %269 : vector<13xi32>
    }
    %202 = arith.shrui %121, %121 : i64
    %203 = affine.min affine_map<(d0, d1) -> (d1, d1 floordiv 64 - d1 floordiv 32 + 8)>(%169, %57)
    %204 = math.tan %13 : tensor<10x4x13xf32>
    %205 = scf.while (%arg1 = %137) : (vector<13xf32>) -> vector<13xf32> {
      %from_elements_56 = tensor.from_elements %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32 : tensor<4x10xi32>
      %253 = vector.broadcast %95 : f32 to vector<13x13xf32>
      %254 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %110, %109, %253 : vector<4x13xf32>, vector<4x13xf32> into vector<13x13xf32>
      %255 = arith.minsi %121, %c1531692190_i64 : i64
      %256 = affine.for %arg2 = 0 to 23 iter_args(%arg3 = %collapsed_26) -> (tensor<52xi64>) {
        affine.yield %collapsed_26 : tensor<52xi64>
      }
      %257 = vector.broadcast %cst_0 : f32 to vector<10xf32>
      %258 = vector.broadcast %46 : i1 to vector<10xi1>
      %259 = vector.maskedload %116[%c3, %c2], %258, %257 : memref<4x10xf32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
      %inserted_57 = tensor.insert %cst_7 into %13[%c3, %c1, %c11] : tensor<10x4x13xf32>
      %260 = vector.broadcast %107 : index to vector<10xindex>
      vector.scatter %alloc_18[%c8, %c1, %c8] [%260], %258, %259 : memref<10x4x13xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
      %261 = index.casts %46 : i1 to index
      scf.condition(%26) %175 : vector<13xf32>
    } do {
    ^bb0(%arg1: vector<13xf32>):
      %253 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %175, %137, %cst_0 : vector<13xf32>, vector<13xf32> into f32
      bufferization.dealloc_tensor %collapsed : tensor<40xi64>
      %254 = arith.maxui %26, %true_29 : i1
      %255 = arith.minui %c-14576_i16, %c-14576_i16 : i16
      %inserted_56 = tensor.insert %26 into %10[%c3] : tensor<13xi1>
      %256 = memref.atomic_rmw andi %121, %180[%c2, %c6] : (i64, memref<4x10xi64>) -> i64
      %splat_57 = tensor.splat %cst_0 : tensor<4x10xf32>
      %rank = tensor.rank %60 : tensor<4x13xi1>
      %257 = arith.remsi %false_36, %false : i1
      %258 = memref.load %alloc_22[%c3, %c9] : memref<4x10xi64>
      %259 = vector.load %180[%c1, %c2] : memref<4x10xi64>, vector<13xi64>
      %260 = arith.remf %cst_6, %cst_1 : f16
      %261 = math.floor %1 : tensor<13xf16>
      %262 = math.round %splat : tensor<10x4x13xf32>
      %263 = math.exp2 %cst : f32
      %264 = vector.broadcast %cst_1 : f16 to vector<f16>
      %265 = vector.transfer_write %264, %1[%198] : vector<f16>, tensor<13xf16>
      scf.yield %175 : vector<13xf32>
    }
    %206 = math.cttz %23 : tensor<10x4x13xi64>
    %c1741255433_i32 = arith.constant 1741255433 : i32
    %207 = math.sqrt %splat : tensor<10x4x13xf32>
    %208 = arith.remsi %c-14576_i16, %c27645_i16 : i16
    %from_elements = tensor.from_elements %cst_5, %cst_3, %cst_5, %cst_7, %cst_0, %cst_4, %cst_4, %cst_3, %cst_4, %cst_5, %95, %cst_5, %cst_0, %cst, %cst_3, %cst_4, %cst_7, %cst_3, %cst, %cst_5, %cst_7, %cst_3, %cst_0, %cst_7, %cst, %cst_0, %cst, %95, %cst_4, %cst_7, %cst_0, %cst, %cst_4, %cst, %cst, %cst_0, %cst_0, %cst, %cst_5, %cst_0, %cst, %cst_3, %cst, %cst, %cst_7, %cst, %cst, %cst_3, %95, %cst_7, %cst_3, %cst_5 : tensor<4x13xf32>
    %209 = scf.if %46 -> (i16) {
      %253 = vector.shuffle %30, %20 [0, 3, 4, 7] : vector<4xi1>, vector<4xi1>
      %254 = tensor.empty() : tensor<4x13xf16>
      %mapped_56 = linalg.map ins(%5 : tensor<4x13xf16>) outs(%254 : tensor<4x13xf16>)
        (%in: f16) {
          %259 = vector.broadcast %86 : index to vector<10xindex>
          %260 = vector.broadcast %false_36 : i1 to vector<10xi1>
          %261 = vector.broadcast %c27645_i16 : i16 to vector<10xi16>
          vector.scatter %alloc_16[%c0, %c5] [%259], %260, %261 : memref<4x10xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
          %262 = index.sub %182, %107
          %263 = memref.load %65[%c9, %c1, %c0] : memref<10x4x13xi64>
          %264 = arith.shli %26, %26 : i1
          %265 = arith.remsi %false_36, %true_37 : i1
          %266 = index.mul %c1, %52
          %267 = index.maxu %165, %c2
          %expanded = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<10x4x13xf32> into tensor<10x4x13x1xf32>
          vector.print %33 : vector<4xi16>
          %splat_58 = tensor.splat %cst : tensor<13xf32>
          %268 = vector.create_mask %52 : vector<13xi1>
          %269 = arith.xori %121, %c1531692190_i64 : i64
          %270 = math.sqrt %1 : tensor<13xf16>
          %271 = math.round %cst : f32
          %272 = math.sqrt %cst : f32
          %273 = math.floor %splat_58 : tensor<13xf32>
          %274 = math.absf %5 : tensor<4x13xf16>
          %275 = math.atan %from_elements : tensor<4x13xf32>
          %276 = arith.remf %cst_4, %cst_4 : f32
          %277 = index.casts %c1 : index to i32
          %278 = arith.cmpf ugt, %cst_5, %cst_4 : f32
          %alloca_59 = memref.alloca() : memref<10x4x13xf32>
          %279 = math.absf %13 : tensor<10x4x13xf32>
          %280 = arith.maxsi %c27645_i16, %c-14576_i16 : i16
          %281 = arith.minf %cst, %cst : f32
          %282 = math.sqrt %cst_6 : f16
          %283 = vector.shuffle %33, %142 [7] : vector<4xi16>, vector<4xi16>
          %284 = arith.minf %cst_5, %cst_5 : f32
          %alloc_60 = memref.alloc() : memref<13xf32>
          %cast_61 = tensor.cast %14 : tensor<10x4x13xi16> to tensor<?x?x?xi16>
          %285 = vector.extract %196[0] : vector<1xi16>
          %286 = arith.divui %true, %false : i1
          %cst_62 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_62 : f16
        }
      %255 = index.casts %203 : index to i32
      %256 = math.ctlz %9 : tensor<4x13xi16>
      %257 = arith.divui %c490147963_i32, %c490147963_i32 : i32
      %from_elements_57 = tensor.from_elements %false_36, %true_29, %26, %true_29, %true, %false_36, %46, %46, %26, %false, %true_37, %173, %false, %true_37, %true, %173, %46, %true_37, %false_2, %26, %false, %26, %false_36, %173, %173, %false_36, %true_37, %true_29, %false_36, %false_36, %true_29, %46, %false_2, %false_2, %true, %46, %false_36, %46, %false_36, %46, %true, %true, %false_2, %46, %false_2, %173, %173, %true_37, %173, %false, %false_36, %true, %false, %true_29, %true_37, %true, %true, %true_29, %true_29, %true_37, %true, %false_36, %46, %false_36, %false_36, %true, %173, %46, %false_2, %true_37, %false_2, %26, %173, %true, %46, %false_2, %true_29, %26, %false_36, %46, %true_37, %false, %true, %true_37, %true_37, %false_2, %false_36, %false, %true_29, %true_29, %false_2, %true_29, %true_29, %26, %false_2, %26, %false_2, %false_36, %true_37, %true_29, %false_2, %26, %false, %true_29, %true_29, %173, %false, %46, %true_29, %26, %173, %false_36, %true_29, %true_29, %173, %false_2, %false_36, %false, %173, %173, %false, %173, %true_29, %true_37, %true_29, %false, %true_29, %173, %false_2, %46, %173, %false_2, %26, %173, %false_36, %46, %false_36, %false_2, %true_37, %true_29, %26, %26, %false_2, %26, %173, %true_37, %46, %true_29, %false_2, %false_36, %26, %true_37, %false_36, %46, %46, %true_29, %true_29, %173, %26, %26, %46, %26, %false, %true_37, %false_2, %true, %false_2, %true_37, %true_37, %true_29, %46, %46, %false, %false, %26, %173, %173, %true_37, %true_37, %false_36, %true, %26, %false, %46, %true_29, %true_29, %26, %46, %true_37, %true, %false_2, %true, %true_29, %true_37, %true_37, %true, %true_29, %false_36, %false_2, %173, %true, %173, %173, %46, %true, %true_37, %true_37, %false_36, %false_2, %true_37, %true, %false_2, %26, %46, %false_2, %false_36, %46, %26, %46, %false, %46, %false, %26, %true, %46, %false_36, %false_2, %46, %true_37, %false, %true_29, %46, %true_29, %false_36, %26, %false_36, %true, %46, %true, %true_29, %true, %false_36, %true_29, %173, %false_2, %false_2, %false_36, %false, %true, %false_2, %false, %173, %173, %false, %26, %true_37, %46, %false_2, %false_2, %46, %true_37, %false_2, %false_36, %46, %false_2, %46, %26, %26, %173, %true, %true, %46, %true_29, %46, %46, %false_2, %26, %true_37, %false_36, %173, %46, %26, %26, %false_2, %false, %173, %46, %false, %false_36, %46, %true_37, %true, %false, %173, %true_29, %false_36, %173, %46, %true_37, %46, %26, %26, %true_37, %46, %false_2, %46, %false, %true_37, %173, %true_29, %true, %26, %46, %26, %false_2, %46, %true_37, %46, %false_2, %true, %46, %26, %false_36, %true_37, %false_36, %false_36, %true_29, %173, %46, %173, %false_2, %true_29, %false, %true_29, %46, %true_29, %false_36, %false, %true_29, %true_37, %true_37, %false, %true_29, %false_2, %true, %true, %173, %true_29, %173, %true_37, %false_2, %true, %true_37, %26, %true_29, %true_29, %false_36, %false_2, %46, %46, %false, %false_36, %true_37, %true_29, %46, %true, %true, %false_36, %false, %true_29, %true_29, %false, %true_29, %46, %false_2, %26, %true_37, %true_37, %true_29, %false_36, %true_29, %false, %false, %26, %true, %false_36, %26, %true, %false_2, %false_2, %true_37, %false_36, %false_36, %true_37, %true_29, %true, %false, %true, %true_37, %true_29, %26, %173, %true_29, %false_36, %true_29, %true, %false_2, %true_29, %true, %false_2, %false, %true, %false_36, %true_37, %false_36, %false_2, %false, %false, %false, %true_37, %46, %false_2, %26, %false_36, %false_36, %false_36, %173, %false, %false_2, %false, %true_29, %true_37, %26, %true_37, %true_29, %false_36, %true_29, %173, %true_37, %true_37, %true_29, %true, %26, %false_2, %true_29, %true, %26, %46, %26, %46, %false_36, %false, %26, %true_37, %true_37, %173, %true_29, %false_36, %true, %true_29, %false, %true_29, %false_2, %173, %false_36, %false_2, %false_2, %false, %26, %false, %26, %false, %46, %173, %false_2, %true_37, %true, %26, %true_37, %false_36, %46, %26, %true_29, %26, %26, %false_36, %173, %true_37, %false, %173, %true, %true_29, %true_29, %true, %26, %173, %false_36, %173, %false_36, %true_29, %false_36, %173, %173, %true_29, %true, %46, %173, %false_2, %46, %false_36, %false, %false_2, %true, %false_36, %46, %false_2, %173, %true_29, %true_29, %false : tensor<10x4x13xi1>
      %258 = scf.execute_region -> tensor<10x4x13xf16> {
        %259 = math.cttz %167 : tensor<10x4x13xi64>
        %260 = arith.andi %c27645_i16, %c-14576_i16 : i16
        %261 = arith.remui %c-14576_i16, %c-14576_i16 : i16
        %262 = vector.insertelement %c27645_i16, %33[%47 : index] : vector<4xi16>
        %collapsed_58 = tensor.collapse_shape %5 [[0, 1]] : tensor<4x13xf16> into tensor<52xf16>
        %263 = bufferization.clone %116 : memref<4x10xf32> to memref<4x10xf32>
        %264 = index.ceildivu %198, %c9
        bufferization.dealloc_tensor %2 : tensor<4x10xi1>
        %inserted_59 = tensor.insert %c1531692190_i64 into %23[%c8, %c3, %c7] : tensor<10x4x13xi64>
        %265 = vector.flat_transpose %142 {columns = 2 : i32, rows = 2 : i32} : vector<4xi16> -> vector<4xi16>
        %266 = bufferization.to_memref %21 : memref<i32>
        memref.copy %alloc_9, %alloc_19 : memref<10x4x13xf16> to memref<10x4x13xf16>
        %267 = bufferization.to_memref %collapsed_45 : memref<52xi16>
        %268 = arith.divui %c490147963_i32, %c1052194578_i32 : i32
        %269 = math.log %cst_1 : f16
        %270 = index.casts %c1052194578_i32 : i32 to index
        scf.yield %splat_39 : tensor<10x4x13xf16>
      }
      scf.index_switch %91 
      case 1 {
        %259 = math.fma %254, %5, %5 : tensor<4x13xf16>
        %260 = bufferization.to_memref %17 : memref<10x4x13xi64>
        %261 = vector.broadcast %cst_4 : f32 to vector<4xf32>
        %262 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %109, %137, %261 : vector<4x13xf32>, vector<13xf32> into vector<4xf32>
        %263 = arith.addf %cst_4, %95 : f32
        %264 = index.mul %169, %54
        %265 = tensor.empty() : tensor<4x13xi1>
        %alloc_58 = memref.alloc() : memref<13x10x4xf32>
        memref.tensor_store %transposed, %alloc_58 : memref<13x10x4xf32>
        %266 = math.log2 %13 : tensor<10x4x13xf32>
        %267 = vector.bitcast %109 : vector<4x13xf32> to vector<4x13xf32>
        %268 = arith.divui %c1052194578_i32, %c490147963_i32 : i32
        %269 = affine.load %alloc_19[%c13, %c4, %c0] : memref<10x4x13xf16>
        %from_elements_59 = tensor.from_elements %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %121 : tensor<4x10xi64>
        %270 = vector.extract %142[0] : vector<4xi16>
        %271 = index.floordivs %182, %120
        %272 = math.round %cst_1 : f16
        %extracted_60 = tensor.extract %140[%c1, %c6] : tensor<4x10xf32>
        scf.yield
      }
      case 2 {
        memref.copy %alloc_17, %116 : memref<4x10xf32> to memref<4x10xf32>
        %259 = math.copysign %18, %18 : tensor<13x10x4xf32>
        %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %33, %142, %c-14576_i16 : vector<4xi16>, vector<4xi16> into i16
        %261 = tensor.empty() : tensor<10x4x13xi32>
        affine.store %extracted, %alloc_19[%c8, %c1, %c15] : memref<10x4x13xf16>
        %262 = math.sqrt %cst_0 : f32
        %263 = arith.cmpf ogt, %cst, %95 : f32
        %264 = arith.divui %true_37, %46 : i1
        %cst_58 = arith.constant 0x4E4A3A41 : f32
        %265 = bufferization.to_memref %13 : memref<10x4x13xf32>
        %alloc_59 = memref.alloc() : memref<10x4x13xi32>
        %266 = math.absi %9 : tensor<4x13xi16>
        %cast_60 = tensor.cast %transposed : tensor<13x10x4xf32> to tensor<?x?x?xf32>
        memref.store %cst, %116[%c3, %c9] : memref<4x10xf32>
        memref.store %cst_6, %alloc_12[%c0, %c6] : memref<4x10xf16>
        %267 = math.log2 %1 : tensor<13xf16>
        scf.yield
      }
      case 3 {
        %259 = index.castu %26 : i1 to index
        %expanded = tensor.expand_shape %98 [[0], [1, 2]] : tensor<4x4xi32> into tensor<4x4x1xi32>
        affine.store %c1531692190_i64, %alloc_22[%c11, %c12] : memref<4x10xi64>
        %260 = index.divs %c1, %c3
        %261 = arith.cmpf oge, %cst_3, %cst_0 : f32
        %262 = tensor.empty() : tensor<13x10xi1>
        %263 = tensor.empty() : tensor<4x10xi1>
        %264 = linalg.matmul ins(%60, %262 : tensor<4x13xi1>, tensor<13x10xi1>) outs(%263 : tensor<4x10xi1>) -> tensor<4x10xi1>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %265 = vector.transfer_read %167[%c7, %198, %81], %c0_i64 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : tensor<10x4x13xi64>, vector<13xi64>
        %266 = math.exp2 %cst_4 : f32
        %267 = index.ceildivu %259, %120
        %268 = arith.shrsi %false, %173 : i1
        %269 = math.tan %18 : tensor<13x10x4xf32>
        %270 = arith.remsi %c1531692190_i64, %c1_i64 : i64
        %271 = arith.shli %c1052194578_i32, %c490147963_i32 : i32
        memref.store %95, %alloc_18[%c5, %c0, %c7] : memref<10x4x13xf32>
        %272 = math.fma %13, %13, %13 : tensor<10x4x13xf32>
        %273 = bufferization.to_tensor %alloc_9 : memref<10x4x13xf16>
        scf.yield
      }
      case 4 {
        %259 = vector.extract %196[0] : vector<1xi16>
        %260 = index.divu %57, %35
        %261 = affine.apply affine_map<(d0, d1) -> ((d0 * 3 - 8) * -32)>(%c2, %81)
        %262 = index.mul %124, %c9
        memref.tensor_store %14, %alloc_8 : memref<10x4x13xi16>
        %263 = tensor.empty(%35, %81, %c13) : tensor<?x?x?xf32>
        %264 = bufferization.to_memref %4 : memref<4x13xi16>
        %265 = math.log2 %258 : tensor<10x4x13xf16>
        %266 = arith.cmpi sge, %c-14576_i16, %c27645_i16 : i16
        %267 = math.log2 %1 : tensor<13xf16>
        %268 = arith.cmpf uge, %extracted, %cst_6 : f16
        %269 = math.atan2 %transposed, %transposed : tensor<13x10x4xf32>
        %270 = arith.minsi %true, %true : i1
        %271 = vector.load %alloc_23[%c2] : memref<4xi64>, vector<4x13xi64>
        %extracted_58 = tensor.extract %92[%c2, %c2, %c8] : tensor<10x4x13xi64>
        %272 = index.mul %c10, %148
        scf.yield
      }
      default {
        %259 = math.ctpop %121 : i64
        %alloca_58 = memref.alloca() : memref<4x13xf16>
        %260 = arith.divui %c1052194578_i32, %c490147963_i32 : i32
        %261 = math.cos %cst_4 : f32
        %262 = vector.transpose %175, [0] : vector<13xf32> to vector<13xf32>
        %263 = vector.broadcast %cst_5 : f32 to vector<9xf32>
        %264 = vector.broadcast %true : i1 to vector<9xi1>
        %265 = vector.maskedload %116[%c2, %c3], %264, %263 : memref<4x10xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %266 = vector.flat_transpose %30 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
        %267 = vector.multi_reduction <or>, %32, %33 [] : vector<4xi16> to vector<4xi16>
        %268 = math.sqrt %cst_1 : f16
        %269 = math.sqrt %cst : f32
        %270 = index.add %c13, %c3
        %271 = math.absf %cst_6 : f16
        %272 = arith.remui %false_36, %true_37 : i1
        %273 = math.log10 %cst_3 : f32
        %274 = arith.muli %false, %false_2 : i1
        %275 = vector.multi_reduction <maxsi>, %32, %142 [] : vector<4xi16> to vector<4xi16>
      }
      scf.yield %c27645_i16 : i16
    } else {
      %253 = vector.broadcast %200 : index to vector<10xindex>
      %254 = vector.broadcast %true_29 : i1 to vector<10xi1>
      %255 = vector.broadcast %cst_0 : f32 to vector<10xf32>
      vector.scatter %alloc_17[%c0, %c8] [%253], %254, %255 : memref<4x10xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
      %256 = vector.shuffle %20, %20 [2, 4, 5] : vector<4xi1>, vector<4xi1>
      %257 = arith.maxui %c1052194578_i32, %c1052194578_i32 : i32
      %258 = arith.remf %cst_5, %cst_3 : f32
      %259 = vector.broadcast %124 : index to vector<13xindex>
      %260 = vector.broadcast %false_36 : i1 to vector<13xi1>
      vector.scatter %alloc_18[%c5, %c1, %c11] [%259], %260, %137 : memref<10x4x13xf32>, vector<13xindex>, vector<13xi1>, vector<13xf32>
      %261 = math.cttz %collapsed_42 : tensor<40xi32>
      %262 = index.casts %c0 : index to i32
      %263 = vector.create_mask %c10, %78, %c15 : vector<10x4x13xi1>
      scf.yield %c-14576_i16 : i16
    }
    %210 = arith.remf %cst_3, %cst_4 : f32
    %211 = math.exp %95 : f32
    %alloc_47 = memref.alloc() : memref<13xi16>
    memref.copy %alloc_11, %alloc_47 : memref<13xi16> to memref<13xi16>
    %212 = math.absf %cst_3 : f32
    %213 = arith.mulf %cst, %cst_3 : f32
    %214 = math.fma %collapsed_34, %collapsed_34, %collapsed_34 : tensor<40x13xf32>
    %215 = affine.min affine_map<(d0, d1) -> (d1, d1, 0, d1 mod 128 - 2)>(%134, %c7)
    %216 = math.log %140 : tensor<4x10xf32>
    %217 = arith.maxf %cst_5, %95 : f32
    %218 = math.floor %extracted : f16
    affine.store %c27645_i16, %alloc_16[%c11, %c9] : memref<4x10xi16>
    %219 = bufferization.to_memref %18 : memref<13x10x4xf32>
    %220 = math.tan %1 : tensor<13xf16>
    %221 = affine.load %alloc_12[%c0, %c7] : memref<4x10xf16>
    %222 = index.ceildivu %35, %c2
    %223 = math.round %from_elements : tensor<4x13xf32>
    %224 = vector.broadcast %91 : index to vector<4xindex>
    %225 = vector.broadcast %c1531692190_i64 : i64 to vector<4xi64>
    vector.scatter %180[%c2, %c4] [%224], %30, %225 : memref<4x10xi64>, vector<4xindex>, vector<4xi1>, vector<4xi64>
    %226 = tensor.empty() : tensor<4x10xi1>
    %mapped_48 = linalg.map ins(%2, %2 : tensor<4x10xi1>, tensor<4x10xi1>) outs(%226 : tensor<4x10xi1>)
      (%in: i1, %in_56: i1) {
        %253 = arith.minsi %c27645_i16, %209 : i16
        %254 = math.rsqrt %cst_3 : f32
        %255 = arith.ori %false_36, %in_56 : i1
        scf.index_switch %c4 
        case 1 {
          %277 = arith.divui %false_36, %false : i1
          %278 = math.copysign %18, %transposed : tensor<13x10x4xf32>
          %rank = tensor.rank %1 : tensor<13xf16>
          %279 = arith.divsi %false, %173 : i1
          %280 = math.sqrt %splat : tensor<10x4x13xf32>
          memref.assume_alignment %alloc_13, 4 : memref<10x4x13xf32>
          %from_elements_62 = tensor.from_elements %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121 : tensor<4x13xi64>
          %281 = affine.min affine_map<(d0, d1, d2) -> ((d0 - 32) floordiv 64)>(%115, %203, %52)
          %282 = math.log1p %cst_1 : f16
          %283 = bufferization.to_memref %15 : memref<4x10xi32>
          %284 = index.divs %115, %c0
          %285 = vector.load %alloc_12[%c3, %c5] : memref<4x10xf16>, vector<4x10xf16>
          %286 = arith.cmpf ule, %221, %cst_6 : f16
          %287 = affine.apply affine_map<(d0) -> (d0 * 256)>(%c11)
          %288 = math.exp %5 : tensor<4x13xf16>
          vector.print %142 : vector<4xi16>
          scf.yield
        }
        case 2 {
          %277 = index.maxu %198, %c12
          %278 = arith.shrui %c27645_i16, %c27645_i16 : i16
          %279 = arith.minui %true_37, %46 : i1
          %280 = index.casts %c8 : index to i32
          %true_62 = index.bool.constant true
          %281 = index.add %c7, %c0
          %splat_63 = tensor.splat %true_29 : tensor<4x13xi1>
          %282 = arith.maxf %cst_1, %cst_1 : f16
          %283 = vector.create_mask %54, %148 : vector<4x13xi1>
          %splat_64 = tensor.splat %121 : tensor<4x13xi64>
          %284 = arith.remf %cst, %cst_5 : f32
          %alloc_65 = memref.alloc() : memref<13xf32>
          %285 = vector.broadcast %false_2 : i1 to vector<13xi1>
          %286 = vector.broadcast %c490147963_i32 : i32 to vector<13xi32>
          %287 = vector.gather %alloc_65[%115] [%286], %285, %175 : memref<13xf32>, vector<13xi32>, vector<13xi1>, vector<13xf32> into vector<13xf32>
          %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %30, %30, %in : vector<4xi1>, vector<4xi1> into i1
          %289 = index.sizeof
          %290 = math.log1p %13 : tensor<10x4x13xf32>
          %291 = arith.cmpf false, %221, %cst_1 : f16
          scf.yield
        }
        case 3 {
          %277 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 * 32, d1, d2 * -16)>(%198, %c9, %200, %c7)
          %278 = arith.minui %26, %173 : i1
          %279 = math.atan %collapsed_34 : tensor<40x13xf32>
          %280 = vector.load %alloc_8[%c4, %c0, %c3] : memref<10x4x13xi16>, vector<10x4x13xi16>
          %281 = math.round %13 : tensor<10x4x13xf32>
          %282 = memref.atomic_rmw andi %121, %65[%c6, %c3, %c7] : (i64, memref<10x4x13xi64>) -> i64
          %283 = vector.broadcast %false_36 : i1 to vector<1x1xi1>
          %284 = vector.outerproduct %154, %154, %283 {kind = #vector.kind<add>} : vector<1xi1>, vector<1xi1>
          %285 = bufferization.to_memref %17 : memref<10x4x13xi64>
          %286 = arith.cmpi slt, %209, %209 : i16
          %rank = tensor.rank %splat_39 : tensor<10x4x13xf16>
          %287 = math.log %cst_7 : f32
          %288 = arith.andi %46, %true_29 : i1
          %289 = vector.broadcast %cst_4 : f32 to vector<9xf32>
          vector.transfer_write %289, %alloc_13[%185, %169, %c12] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<9xf32>, memref<10x4x13xf32>
          %290 = arith.remf %extracted, %221 : f16
          %291 = vector.broadcast %cst_0 : f32 to vector<10x4x13xf32>
          %292 = bufferization.to_memref %0 : memref<10x4x13xi64>
          scf.yield
        }
        case 4 {
          %277 = arith.andi %c1531692190_i64, %121 : i64
          %278 = memref.load %219[%c8, %c5, %c3] : memref<13x10x4xf32>
          %279 = vector.broadcast %cst_1 : f16 to vector<f16>
          vector.transfer_write %279, %alloc_9[%c7, %c15, %c1] : vector<f16>, memref<10x4x13xf16>
          %280 = bufferization.to_memref %collapsed_45 : memref<52xi16>
          %281 = arith.divsi %true_37, %26 : i1
          memref.copy %alloc_19, %alloc_9 : memref<10x4x13xf16> to memref<10x4x13xf16>
          %282 = arith.maxui %c27645_i16, %c27645_i16 : i16
          %283 = vector.broadcast %in_56 : i1 to vector<13xi1>
          %284 = vector.maskedload %116[%c2, %c0], %283, %137 : memref<4x10xf32>, vector<13xi1>, vector<13xf32> into vector<13xf32>
          %285 = math.sqrt %140 : tensor<4x10xf32>
          %286 = arith.cmpi ne, %false_36, %true : i1
          %287 = index.sizeof
          %288 = arith.andi %in, %173 : i1
          %inserted_62 = tensor.insert %173 into %10[%c4] : tensor<13xi1>
          %289 = arith.andi %173, %46 : i1
          %290 = math.absi %121 : i64
          %291 = index.castu %c9 : index to i32
          scf.yield
        }
        default {
          memref.assume_alignment %alloc_9, 4 : memref<10x4x13xf16>
          %277 = affine.min affine_map<(d0, d1, d2) -> (d0 * 64, 0)>(%86, %186, %120)
          %278 = vector.matrix_multiply %20, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
          %279 = vector.insertelement %209, %32[%107 : index] : vector<4xi16>
          %280 = arith.muli %in_56, %26 : i1
          %281 = arith.remf %cst_6, %cst_1 : f16
          %extracted_62 = tensor.extract %splat_40[%c10] : tensor<13xi1>
          %282 = arith.andi %121, %121 : i64
          %283 = math.sqrt %95 : f32
          %284 = math.cttz %21 : tensor<i32>
          %285 = arith.shrui %true, %true : i1
          %286 = arith.shrui %173, %in_56 : i1
          %287 = arith.divui %46, %in_56 : i1
          %288 = vector.insert %95, %137 [1] : f32 into vector<13xf32>
          %289 = affine.min affine_map<(d0) -> (d0 * 2, d0 * 65, d0 * 16, d0 - 24)>(%c14)
          %290 = index.sub %277, %54
        }
        %256 = arith.addf %cst_4, %cst_0 : f32
        %257 = arith.ori %false_36, %46 : i1
        %258 = arith.divsi %true, %true_37 : i1
        %259 = affine.load %alloc_10[%c1, %c0] : memref<4x10xf32>
        %alloca_57 = memref.alloca() : memref<4x13xi64>
        %260 = bufferization.clone %180 : memref<4x10xi64> to memref<4x10xi64>
        scf.execute_region {
          %277 = affine.apply affine_map<(d0, d1) -> (((d1 + d0) * 2) mod 16 - 80)>(%169, %c15)
          %278 = index.maxu %c10, %115
          %279 = vector.create_mask %78 : vector<13xi1>
          %280 = arith.divsi %c1531692190_i64, %121 : i64
          %281 = math.copysign %transposed, %transposed : tensor<13x10x4xf32>
          %282 = math.round %140 : tensor<4x10xf32>
          %283 = vector.broadcast %cst_7 : f32 to vector<4xf32>
          %284 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %137, %110, %283 : vector<13xf32>, vector<4x13xf32> into vector<4xf32>
          %285 = tensor.empty() : tensor<4x13xi16>
          %286 = arith.minf %221, %extracted : f16
          %287 = vector.transpose %32, [0] : vector<4xi16> to vector<4xi16>
          %288 = tensor.empty(%c14) : tensor<4x?xi32>
          %289 = arith.shrsi %false, %true_37 : i1
          %290 = index.castu %52 : index to i32
          %291 = math.round %cst_7 : f32
          %292 = math.log %68 : tensor<4x10xf32>
          %293 = arith.muli %false_36, %false_2 : i1
          scf.yield
        }
        %cast_58 = tensor.cast %14 : tensor<10x4x13xi16> to tensor<?x?x?xi16>
        %261 = math.log10 %18 : tensor<13x10x4xf32>
        %262 = arith.remf %cst_5, %cst_4 : f32
        %263 = math.round %cst_3 : f32
        memref.store %c490147963_i32, %alloc_24[%c5] : memref<13xi32>
        %264 = affine.load %alloc_18[%c10, %c7, %c3] : memref<10x4x13xf32>
        %alloc_59 = memref.alloc() : memref<4x10xf16>
        memref.copy %alloc_12, %alloc_59 : memref<4x10xf16> to memref<4x10xf16>
        %extracted_60 = tensor.extract %generated[%c0, %c9] : tensor<?x10xi16>
        %265 = math.absf %68 : tensor<4x10xf32>
        %266 = arith.mulf %cst, %264 : f32
        %267 = bufferization.to_memref %140 : memref<4x10xf32>
        %268 = vector.load %alloc_8[%c0, %c3, %c4] : memref<10x4x13xi16>, vector<4x10xi16>
        %269 = math.roundeven %cst_0 : f32
        %270 = affine.for %arg1 = 0 to 1 iter_args(%arg2 = %154) -> (vector<1xi1>) {
          affine.yield %154 : vector<1xi1>
        }
        %271 = math.rsqrt %5 : tensor<4x13xf16>
        %272 = affine.min affine_map<(d0) -> (0, -d0)>(%54)
        %273 = arith.ori %c-14576_i16, %c-14576_i16 : i16
        %274 = vector.splat %203 : vector<13xindex>
        %275 = tensor.empty() : tensor<13xf32>
        %276 = memref.atomic_rmw maxu %c1531692190_i64, %alloc_23[%c1] : (i64, memref<4xi64>) -> i64
        %c1432436395_i64 = arith.constant 1432436395 : i64
        %true_61 = arith.constant true
        linalg.yield %true_61 : i1
      }
    %alloca_49 = memref.alloca() : memref<4x10xi64>
    %227 = vector.load %alloc_13[%c3, %c2, %c12] : memref<10x4x13xf32>, vector<10x4x13xf32>
    %228 = math.copysign %1, %1 : tensor<13xf16>
    scf.if %true_37 {
      %253 = arith.minsi %26, %true_37 : i1
      %254 = math.log2 %cst_5 : f32
      %255 = arith.shrui %46, %true_29 : i1
      %256 = vector.load %alloc_20[%c7, %c3, %c9] : memref<10x4x13xi1>, vector<4x10xi1>
      %257 = arith.cmpf true, %cst_6, %221 : f16
      %258 = arith.remsi %26, %173 : i1
      %collapsed_56 = tensor.collapse_shape %splat [[0, 1], [2]] : tensor<10x4x13xf32> into tensor<40x13xf32>
      %259 = math.ctpop %3 : tensor<4x13xi64>
    }
    %229 = math.round %140 : tensor<4x10xf32>
    %230 = arith.divui %121, %121 : i64
    %231 = scf.index_switch %c0 -> vector<13xf32> 
    case 1 {
      %253 = scf.if %false -> (f32) {
        %267 = math.absf %5 : tensor<4x13xf16>
        %268 = math.sqrt %extracted : f16
        %269 = vector.shuffle %227, %227 [1, 5, 7, 8, 10, 18, 19] : vector<10x4x13xf32>, vector<10x4x13xf32>
        %270 = vector.load %alloc[%c9] : memref<13xi64>, vector<4x13xi64>
        %271 = arith.shrsi %121, %c1531692190_i64 : i64
        %alloc_58 = memref.alloc() : memref<10x4x13xi16>
        memref.copy %alloc_13, %alloc_18 : memref<10x4x13xf32> to memref<10x4x13xf32>
        %alloc_59 = memref.alloc() : memref<13xi32>
        scf.yield %cst_4 : f32
      } else {
        %267 = bufferization.to_memref %7 : memref<4x13xi64>
        %268 = math.sqrt %cst_0 : f32
        %collapsed_58 = tensor.collapse_shape %68 [[0, 1]] : tensor<4x10xf32> into tensor<40xf32>
        %269 = index.floordivs %c7, %222
        %alloc_59 = memref.alloc() : memref<4x10xi64>
        %270 = math.log2 %13 : tensor<10x4x13xf32>
        %271 = vector.broadcast %cst_5 : f32 to vector<10x4xf32>
        %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %137, %227, %271 : vector<13xf32>, vector<10x4x13xf32> into vector<10x4xf32>
        %273 = math.exp2 %cst_0 : f32
        scf.yield %95 : f32
      }
      %254 = vector.insert %true, %154 [0] : i1 into vector<1xi1>
      %c40 = arith.constant 40 : index
      %extracted_56 = tensor.extract %collapsed_26[%c40] : tensor<52xi64>
      %255 = math.absi %26 : i1
      %cast_57 = tensor.cast %9 : tensor<4x13xi16> to tensor<?x?xi16>
      %256 = arith.minsi %c1531692190_i64, %c1531692190_i64 : i64
      %257 = tensor.empty(%55) : tensor<?x10xi64>
      %258 = vector.load %65[%c6, %c2, %c5] : memref<10x4x13xi64>, vector<13xi64>
      %259 = arith.andi %c490147963_i32, %c490147963_i32 : i32
      %260 = arith.muli %true_29, %true_29 : i1
      %261 = bufferization.to_memref %92 : memref<10x4x13xi64>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%16 : tensor<10x4x13xi64>) {
      ^bb0(%out: i64):
        %267 = arith.maxui %26, %false : i1
        %268 = vector.extract %110[0] : vector<4x13xf32>
        %269 = arith.muli %c1531692190_i64, %out : i64
        %alloc_58 = memref.alloc() : memref<4x13xi16>
        memref.tensor_store %4, %alloc_58 : memref<4x13xi16>
        %270 = math.sqrt %splat_39 : tensor<10x4x13xf16>
        %271 = arith.shrsi %c490147963_i32, %c1052194578_i32 : i32
        %272 = arith.remf %cst, %cst_5 : f32
        %273 = arith.remf %cst_3, %cst_5 : f32
        %274 = arith.cmpf une, %cst, %cst_0 : f32
        %rank = tensor.rank %7 : tensor<4x13xi64>
        %275 = arith.remsi %extracted_56, %extracted_56 : i64
        %from_elements_59 = tensor.from_elements %209, %c-14576_i16, %c-14576_i16, %c27645_i16, %c-14576_i16, %209, %c27645_i16, %c27645_i16, %c-14576_i16, %c27645_i16, %c-14576_i16, %209, %209 : tensor<13xi16>
        %276 = memref.load %alloc_17[%c1, %c6] : memref<4x10xf32>
        %alloca_60 = memref.alloca() : memref<10x4x13xf32>
        %277 = math.log %cst_3 : f32
        %alloc_61 = memref.alloc() : memref<4x10xi1>
        memref.tensor_store %2, %alloc_61 : memref<4x10xi1>
        %278 = math.atan %68 : tensor<4x10xf32>
        %c6865_i16 = arith.constant 6865 : i16
        %279 = index.casts %c8 : index to i32
        %280 = arith.shrsi %out, %c1531692190_i64 : i64
        %281 = arith.shrui %false_36, %true_37 : i1
        %282 = math.absf %5 : tensor<4x13xf16>
        %283 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 + 32, d1 + 32, d1 + 32)>(%35, %rank, %c0, %c7)
        %284 = affine.min affine_map<(d0, d1) -> (((d1 floordiv 64) floordiv 2) ceildiv 4, d1 mod 2)>(%c5, %203)
        %extracted_62 = tensor.extract %cast_57[%c0, %c0] : tensor<?x?xi16>
        %285 = index.add %c13, %54
        %true_63 = index.bool.constant true
        %286 = vector.multi_reduction <minsi>, %142, %c27645_i16 [0] : vector<4xi16> to i16
        %287 = arith.negf %cst_0 : f32
        %288 = vector.shuffle %20, %20 [2, 4, 5, 6] : vector<4xi1>, vector<4xi1>
        %289 = memref.load %alloc_24[%c10] : memref<13xi32>
        %290 = vector.matrix_multiply %142, %32 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi16>, vector<4xi16>) -> vector<1xi16>
        linalg.yield %out : i64
      } -> tensor<10x4x13xi64>
      %263 = math.cttz %c-14576_i16 : i16
      %264 = index.add %57, %c15
      %265 = arith.shli %c1531692190_i64, %c1531692190_i64 : i64
      %266 = math.sqrt %cst_1 : f16
      scf.yield %175 : vector<13xf32>
    }
    default {
      %253 = affine.max affine_map<(d0, d1) -> (d0 floordiv 128, d0 floordiv 128, 0, ((d0 floordiv 128) * 128 + 128) * 2)>(%c2, %91)
      %254 = arith.maxui %c-14576_i16, %c27645_i16 : i16
      %255 = scf.execute_region -> vector<10x4x13xi32> {
        %268 = arith.andi %c490147963_i32, %c1052194578_i32 : i32
        %269 = arith.remsi %46, %46 : i1
        %270 = arith.divui %c1052194578_i32, %c1052194578_i32 : i32
        %271 = index.sub %148, %c3
        %extracted_58 = tensor.extract %16[%c2, %c1, %c2] : tensor<10x4x13xi64>
        %272 = math.log1p %cst_6 : f16
        %273 = affine.min affine_map<(d0, d1) -> (d0 mod 16 - 128, -(d0 mod 16 - 128), d0 mod 16 - 128, (d0 - 8) * 2)>(%c6, %222)
        memref.assume_alignment %alloc_22, 8 : memref<4x10xi64>
        %274 = arith.maxf %221, %221 : f16
        %275 = arith.divui %extracted_58, %c1531692190_i64 : i64
        %extracted_59 = tensor.extract %166[%c3, %c4] : tensor<4x13xi16>
        %276 = affine.min affine_map<(d0, d1, d2) -> (0, d0, 0, 0)>(%91, %c15, %185)
        %alloc_60 = memref.alloc() : memref<4xi64>
        memref.copy %alloc_23, %alloc_60 : memref<4xi64> to memref<4xi64>
        %277 = vector.insert %false_36, %20 [2] : i1 into vector<4xi1>
        %278 = tensor.empty() : tensor<13x9xi16>
        %279 = tensor.empty() : tensor<4x9xi16>
        %280 = linalg.matmul ins(%9, %278 : tensor<4x13xi16>, tensor<13x9xi16>) outs(%279 : tensor<4x9xi16>) -> tensor<4x9xi16>
        %281 = arith.shrui %26, %false_36 : i1
        %282 = vector.broadcast %c490147963_i32 : i32 to vector<10x4x13xi32>
        scf.yield %282 : vector<10x4x13xi32>
      }
      %256 = index.floordivs %c2, %c0
      %257 = vector.create_mask %c8, %91 : vector<4x10xi1>
      %258 = memref.load %180[%c1, %c1] : memref<4x10xi64>
      %259 = index.maxs %200, %c0
      %260 = tensor.empty() : tensor<4x10xf32>
      %mapped_56 = linalg.map ins(%alloc_17 : memref<4x10xf32>) outs(%260 : tensor<4x10xf32>)
        (%in: f32) {
          %inserted_58 = tensor.insert %cst into %18[%c0, %c8, %c2] : tensor<13x10x4xf32>
          %268 = arith.divf %cst_1, %cst_6 : f16
          %269 = affine.load %alloc_11[%c2] : memref<13xi16>
          %270 = math.ctlz %12 : tensor<4x10xi64>
          %271 = arith.remf %cst_1, %extracted : f16
          %272 = index.maxu %55, %169
          %273 = arith.ori %c1052194578_i32, %c1052194578_i32 : i32
          %274 = math.cttz %7 : tensor<4x13xi64>
          %275 = arith.shrui %46, %26 : i1
          %276 = math.absi %0 : tensor<10x4x13xi64>
          %277 = vector.insert %false_2, %30 [2] : i1 into vector<4xi1>
          %278 = arith.shrui %121, %121 : i64
          %279 = arith.andi %209, %209 : i16
          %alloca_59 = memref.alloca() : memref<10x4x13xf16>
          %280 = math.cttz %8 : tensor<10x4x13xi16>
          %281 = arith.cmpf ole, %extracted, %extracted : f16
          %282 = arith.maxsi %173, %46 : i1
          %283 = vector.transpose %109, [0, 1] : vector<4x13xf32> to vector<4x13xf32>
          %extracted_60 = tensor.extract %167[%c6, %c3, %c4] : tensor<10x4x13xi64>
          %284 = math.round %extracted : f16
          %285 = index.add %78, %81
          %286 = vector.broadcast %46 : i1 to vector<10xi1>
          %287 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %257, %30, %286 : vector<4x10xi1>, vector<4xi1> into vector<10xi1>
          %288 = vector.broadcast %c1531692190_i64 : i64 to vector<13xi64>
          %289 = vector.broadcast %false_2 : i1 to vector<13xi1>
          %290 = vector.maskedload %180[%c1, %c4], %289, %288 : memref<4x10xi64>, vector<13xi1>, vector<13xi64> into vector<13xi64>
          %291 = math.absi %3 : tensor<4x13xi64>
          %292 = arith.divui %269, %269 : i16
          %293 = arith.remui %c1052194578_i32, %c1052194578_i32 : i32
          %294 = math.copysign %splat_39, %splat_39 : tensor<10x4x13xf16>
          %295 = arith.remf %cst, %in : f32
          %296 = bufferization.to_tensor %alloc_14 : memref<4x13xi1>
          %297 = vector.extract_strided_slice %289 {offsets = [8], sizes = [2], strides = [1]} : vector<13xi1> to vector<2xi1>
          %298 = vector.extract %33[2] : vector<4xi16>
          %299 = arith.addf %cst_5, %cst_4 : f32
          %cst_61 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_61 : f32
        }
      %261 = arith.subi %false_2, %false_36 : i1
      %alloc_57 = memref.alloc() : memref<4x13xi64>
      %262 = vector.broadcast %extracted : f16 to vector<f16>
      %263 = vector.transfer_write %262, %1[%200] : vector<f16>, tensor<13xf16>
      %264 = math.absf %splat : tensor<10x4x13xf32>
      %265 = arith.negf %extracted : f16
      scf.if %true_37 {
        %268 = index.sub %253, %c7
        %269 = vector.shuffle %151, %33 [0, 1, 3, 4] : vector<1xi16>, vector<4xi16>
        memref.store %46, %alloc_20[%c5, %c0, %c3] : memref<10x4x13xi1>
        %270 = arith.divf %cst_1, %cst_6 : f16
        memref.store %121, %65[%c6, %c0, %c8] : memref<10x4x13xi64>
        %271 = arith.cmpi sle, %true_29, %false_2 : i1
        %272 = math.round %cst : f32
        %273 = math.roundeven %cst_6 : f16
      }
      %266 = arith.ori %26, %true_29 : i1
      %267 = affine.load %65[%c7, %c1, %c7] : memref<10x4x13xi64>
      scf.yield %137 : vector<13xf32>
    }
    %232 = index.maxs %35, %185
    %from_elements_50 = tensor.from_elements %121, %121, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121 : tensor<4x10xi64>
    %233 = index.sizeof
    %234 = vector.shuffle %142, %33 [1, 3, 5] : vector<4xi16>, vector<4xi16>
    %235 = arith.minf %cst, %cst_0 : f32
    %236 = math.absf %1 : tensor<13xf16>
    %from_elements_51 = tensor.from_elements %209, %209, %c27645_i16, %209, %c27645_i16, %c-14576_i16, %209, %c27645_i16, %c27645_i16, %c-14576_i16, %209, %c27645_i16, %c27645_i16, %c27645_i16, %c-14576_i16, %c27645_i16, %c27645_i16, %c27645_i16, %209, %209, %c27645_i16, %209, %c27645_i16, %c-14576_i16, %209, %209, %c-14576_i16, %c-14576_i16, %209, %c27645_i16, %c27645_i16, %c-14576_i16, %209, %c-14576_i16, %c27645_i16, %c-14576_i16, %209, %209, %209, %c-14576_i16, %c-14576_i16, %c-14576_i16, %c-14576_i16, %209, %c-14576_i16, %c27645_i16, %c-14576_i16, %209, %209, %c-14576_i16, %c-14576_i16, %209 : tensor<4x13xi16>
    %237 = scf.index_switch %54 -> index 
    case 1 {
      %253 = arith.remf %cst, %cst_7 : f32
      %254 = math.cttz %11 : tensor<13xi32>
      %255 = tensor.empty() : tensor<4x10xi16>
      %256 = vector.broadcast %c27645_i16 : i16 to vector<4x10xi16>
      %257 = vector.broadcast %46 : i1 to vector<4x10xi1>
      %258 = vector.broadcast %c1052194578_i32 : i32 to vector<4x10xi32>
      %259 = vector.gather %255[%c10, %54] [%258], %257, %256 : tensor<4x10xi16>, vector<4x10xi32>, vector<4x10xi1>, vector<4x10xi16> into vector<4x10xi16>
      %260 = math.log %from_elements : tensor<4x13xf32>
      %261 = arith.ori %121, %121 : i64
      %262 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 + 2) * 64)>(%165, %52, %c15, %132)
      %263 = vector.extract %151[0] : vector<1xi16>
      %264 = arith.minf %95, %cst : f32
      %265 = math.round %from_elements : tensor<4x13xf32>
      scf.execute_region {
        %272 = arith.remf %extracted, %cst_6 : f16
        %273 = math.exp2 %13 : tensor<10x4x13xf32>
        %274 = arith.negf %221 : f16
        %275 = arith.maxf %cst_7, %cst_0 : f32
        %276 = tensor.empty() : tensor<10x4x13xi1>
        %alloca_56 = memref.alloca() : memref<4x13xi16>
        %277 = vector.insertelement %false, %154[%c2 : index] : vector<1xi1>
        %from_elements_57 = tensor.from_elements %121, %121, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %121, %121, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %c1531692190_i64, %121, %c1531692190_i64, %c1531692190_i64, %121, %121, %121, %c1531692190_i64, %121, %121, %c1531692190_i64, %121, %c1531692190_i64, %121 : tensor<4x13xi64>
        %278 = vector.extract_strided_slice %20 {offsets = [1], sizes = [1], strides = [1]} : vector<4xi1> to vector<1xi1>
        %279 = math.log %splat : tensor<10x4x13xf32>
        %280 = math.atan %cst_1 : f16
        %281 = math.round %cst_6 : f16
        %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %151, %196, %209 : vector<1xi16>, vector<1xi16> into i16
        %283 = arith.maxui %c-14576_i16, %c-14576_i16 : i16
        %alloc_58 = memref.alloc() : memref<13xi32>
        %284 = math.round %collapsed_34 : tensor<40x13xf32>
        scf.yield
      }
      %266 = tensor.empty() : tensor<4x10xf16>
      %267 = vector.multi_reduction <minsi>, %33, %33 [] : vector<4xi16> to vector<4xi16>
      %268 = arith.subi %26, %46 : i1
      %269 = vector.extract_strided_slice %257 {offsets = [2], sizes = [1], strides = [1]} : vector<4x10xi1> to vector<1x10xi1>
      %270 = vector.extract %227[4] : vector<10x4x13xf32>
      %271 = math.log2 %1 : tensor<13xf16>
      scf.yield %57 : index
    }
    case 2 {
      %253 = index.add %81, %c13
      %254 = vector.insert %c27645_i16, %196 [0] : i16 into vector<1xi16>
      %255 = arith.cmpf oeq, %cst, %cst_7 : f32
      %alloc_56 = memref.alloc() : memref<10x4xi64>
      %256 = tensor.empty() : tensor<4x4xi64>
      %257 = linalg.matmul ins(%12, %alloc_56 : tensor<4x10xi64>, memref<10x4xi64>) outs(%256 : tensor<4x4xi64>) -> tensor<4x4xi64>
      %258 = vector.reduction <mul>, %142 : vector<4xi16> into i16
      %259 = tensor.empty(%232, %253, %169) : tensor<?x?x?xi16>
      %260 = index.mul %215, %c5
      %cst_57 = arith.constant 0x4E38310F : f32
      memref.tensor_store %60, %alloc_14 : memref<4x13xi1>
      %rank = tensor.rank %3 : tensor<4x13xi64>
      %261 = math.sqrt %cst : f32
      %from_elements_58 = tensor.from_elements %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32, %c1052194578_i32, %c1052194578_i32, %c490147963_i32, %c1052194578_i32, %c490147963_i32, %c490147963_i32 : tensor<4x13xi32>
      %262 = arith.remui %true_29, %true_37 : i1
      %263 = vector.transpose %109, [0, 1] : vector<4x13xf32> to vector<4x13xf32>
      %264 = index.maxu %c14, %c9
      %rank_59 = tensor.rank %21 : tensor<i32>
      scf.yield %c4 : index
    }
    default {
      %253 = vector.broadcast %c1052194578_i32 : i32 to vector<4x13xi32>
      %254 = vector.broadcast %true_29 : i1 to vector<4x13xi1>
      %255 = vector.gather %15[%c2, %81] [%253], %254, %253 : tensor<4x10xi32>, vector<4x13xi32>, vector<4x13xi1>, vector<4x13xi32> into vector<4x13xi32>
      %alloca_56 = memref.alloca() : memref<13xi64>
      %256 = vector.splat %35 : vector<4x13xindex>
      %257 = arith.ori %26, %true : i1
      %258 = affine.max affine_map<(d0, d1, d2) -> (-d2, d2 + 1)>(%c0, %c13, %c2)
      %259 = arith.remf %cst_0, %cst_5 : f32
      %260 = arith.addf %extracted, %extracted : f16
      %extracted_57 = tensor.extract %splat_40[%c11] : tensor<13xi1>
      %alloc_58 = memref.alloc() : memref<13xi64>
      %261 = arith.maxf %cst_6, %cst_6 : f16
      %262 = bufferization.to_memref %generated : memref<?x10xi16>
      %263 = index.mul %169, %35
      %264 = bufferization.to_memref %119 : memref<4x10xi64>
      %265 = math.sqrt %13 : tensor<10x4x13xf32>
      %266 = arith.muli %false, %extracted_57 : i1
      %inserted_59 = tensor.insert %209 into %9[%c1, %c9] : tensor<4x13xi16>
      scf.yield %c10 : index
    }
    %alloc_52 = memref.alloc() : memref<13xi64>
    %238 = math.round %transposed : tensor<13x10x4xf32>
    %239 = index.mul %134, %52
    %240 = vector.insert %137, %109 [2] : vector<13xf32> into vector<4x13xf32>
    %alloc_53 = memref.alloc() : memref<10x4x13xi32>
    %241 = vector.broadcast %c1052194578_i32 : i32 to vector<13xi32>
    %242 = vector.broadcast %26 : i1 to vector<13xi1>
    %243 = vector.gather %alloc_53[%c0, %c6, %120] [%241], %242, %241 : memref<10x4x13xi32>, vector<13xi32>, vector<13xi1>, vector<13xi32> into vector<13xi32>
    %244 = math.cttz %collapsed : tensor<40xi64>
    %245 = arith.cmpf uno, %extracted, %cst_6 : f16
    %246 = vector.transpose %33, [0] : vector<4xi16> to vector<4xi16>
    %alloc_54 = memref.alloc() : memref<13xi1>
    %247 = tensor.empty() : tensor<13xi32>
    %248 = linalg.copy ins(%11 : tensor<13xi32>) outs(%247 : tensor<13xi32>) -> tensor<13xi32>
    %249 = tensor.empty() : tensor<13x4xi64>
    %transposed_55 = linalg.transpose ins(%3 : tensor<4x13xi64>) outs(%249 : tensor<13x4xi64>) permutation = [1, 0] 
    %250 = tensor.empty() : tensor<4x13xi64>
    %reduced = linalg.reduce ins(%0 : tensor<10x4x13xi64>) outs(%250 : tensor<4x13xi64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %253 = tensor.empty() : tensor<13xi1>
        %mapped_56 = linalg.map ins(%10, %splat_40, %10 : tensor<13xi1>, tensor<13xi1>, tensor<13xi1>) outs(%253 : tensor<13xi1>)
          (%in_58: i1, %in_59: i1, %in_60: i1) {
            memref.tensor_store %13, %alloc_13 : memref<10x4x13xf32>
            %rank = tensor.rank %2 : tensor<4x10xi1>
            %260 = math.absi %166 : tensor<4x13xi16>
            %from_elements_61 = tensor.from_elements %209, %209, %209, %209, %209, %c-14576_i16, %c-14576_i16, %c27645_i16, %c27645_i16, %c27645_i16, %c27645_i16, %c27645_i16, %209, %c27645_i16, %c27645_i16, %209, %c27645_i16, %c-14576_i16, %c27645_i16, %c27645_i16, %c-14576_i16, %c-14576_i16, %c-14576_i16, %c27645_i16, %c27645_i16, %209, %c27645_i16, %209, %209, %c-14576_i16, %c-14576_i16, %c27645_i16, %209, %209, %209, %c-14576_i16, %209, %c-14576_i16, %c27645_i16, %c-14576_i16 : tensor<4x10xi16>
            %alloc_62 = memref.alloc() : memref<4x10xi1>
            %261 = arith.xori %121, %c1531692190_i64 : i64
            %262 = vector.load %116[%c1, %c8] : memref<4x10xf32>, vector<13xf32>
            %c0_i16 = arith.constant 0 : i16
            %263 = vector.transfer_read %from_elements_61[%222, %c13], %c0_i16 : tensor<4x10xi16>, vector<4xi16>
            %264 = arith.subi %true_29, %true_29 : i1
            %265 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 128)>(%c14, %200, %c13)
            %266 = math.powf %cst_5, %cst : f32
            %267 = index.castu %false : i1 to index
            %268 = arith.shrsi %26, %in_59 : i1
            %269 = bufferization.clone %alloc_19 : memref<10x4x13xf16> to memref<10x4x13xf16>
            %270 = vector.broadcast %cst_7 : f32 to vector<9xf32>
            %271 = vector.transfer_write %270, %13[%rank, %107, %57] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<9xf32>, tensor<10x4x13xf32>
            %alloca_63 = memref.alloca() : memref<4x10xi1>
            %272 = index.sub %81, %55
            %273 = arith.minsi %121, %c1531692190_i64 : i64
            %274 = arith.remf %cst_7, %cst_3 : f32
            %275 = arith.divui %c1531692190_i64, %121 : i64
            %extracted_64 = tensor.extract %15[%c3, %c9] : tensor<4x10xi32>
            %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %242, %242, %false_2 : vector<13xi1>, vector<13xi1> into i1
            %277 = index.mul %115, %107
            %278 = vector.shuffle %109, %109 [1, 2, 6] : vector<4x13xf32>, vector<4x13xf32>
            %279 = vector.broadcast %cst_7 : f32 to vector<4xf32>
            %280 = vector.multi_reduction <maxf>, %109, %279 [1] : vector<4x13xf32> to vector<4xf32>
            %281 = arith.divui %209, %209 : i16
            memref.copy %alloc_15, %alloc_20 : memref<10x4x13xi1> to memref<10x4x13xi1>
            %from_elements_65 = tensor.from_elements %in, %121, %121, %c1531692190_i64, %in, %init, %121, %in, %121, %c1531692190_i64, %init, %init, %c1531692190_i64 : tensor<13xi64>
            %282 = vector.splat %200 : vector<10x4x13xindex>
            %283 = math.log2 %1 : tensor<13xf16>
            %284 = vector.extract_strided_slice %243 {offsets = [2], sizes = [6], strides = [1]} : vector<13xi32> to vector<6xi32>
            %rank_66 = tensor.rank %226 : tensor<4x10xi1>
            %false_67 = arith.constant false
            linalg.yield %false_67 : i1
          }
        %254 = math.sqrt %splat : tensor<10x4x13xf32>
        %255 = math.log %1 : tensor<13xf16>
        %256 = math.copysign %collapsed_34, %collapsed_34 : tensor<40x13xf32>
        %alloc_57 = memref.alloc() : memref<4x13xi32>
        %257 = math.fma %95, %cst_7, %cst_3 : f32
        %258 = math.sqrt %95 : f32
        %259 = arith.shrui %46, %true_29 : i1
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %251 = scf.parallel (%arg1) = (%232) to (%182) step (%c14) init (%5) -> tensor<4x13xf16> {
      %253 = index.casts %c1531692190_i64 : i64 to index
      %254 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %33, %33, %c-14576_i16 : vector<4xi16>, vector<4xi16> into i16
      %255 = vector.matrix_multiply %196, %33 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 4 : i32} : (vector<1xi16>, vector<4xi16>) -> vector<4xi16>
      %alloca_56 = memref.alloca() : memref<4x10xi16>
      %256 = math.tan %transposed : tensor<13x10x4xf32>
      %257 = arith.andi %c-14576_i16, %c27645_i16 : i16
      %258 = scf.while (%arg2 = %alloc_15) : (memref<10x4x13xi1>) -> memref<10x4x13xi1> {
        %270 = arith.remf %221, %221 : f16
        %271 = index.sizeof
        %272 = vector.transpose %137, [0] : vector<13xf32> to vector<13xf32>
        %273 = index.add %198, %232
        %274 = index.casts %186 : index to i32
        %false_58 = index.bool.constant false
        %alloc_59 = memref.alloc() : memref<4x10xi16>
        %275 = arith.minui %false_58, %46 : i1
        scf.condition(%true_37) %alloc_20 : memref<10x4x13xi1>
      } do {
      ^bb0(%arg2: memref<10x4x13xi1>):
        %270 = affine.load %alloc_18[%c9, %c4, %c2] : memref<10x4x13xf32>
        %271 = index.sub %165, %86
        %extracted_58 = tensor.extract %0[%c4, %c2, %c10] : tensor<10x4x13xi64>
        %alloca_59 = memref.alloca() : memref<4x10xi32>
        %alloca_60 = memref.alloca() : memref<10x4x13xf16>
        %272 = math.log2 %extracted : f16
        %273 = arith.cmpi sle, %c1052194578_i32, %c1052194578_i32 : i32
        %274 = vector.load %alloc_22[%c1, %c4] : memref<4x10xi64>, vector<4x10xi64>
        %275 = math.floor %extracted : f16
        %276 = math.copysign %5, %5 : tensor<4x13xf16>
        %277 = vector.shuffle %196, %151 [0] : vector<1xi16>, vector<1xi16>
        %278 = arith.minf %270, %95 : f32
        %279 = math.tan %68 : tensor<4x10xf32>
        %280 = arith.shrui %c1052194578_i32, %c490147963_i32 : i32
        %281 = math.log2 %221 : f16
        %282 = math.sqrt %cst_4 : f32
        scf.yield %alloc_15 : memref<10x4x13xi1>
      }
      %259 = arith.shli %26, %true : i1
      %260 = index.casts %c1052194578_i32 : i32 to index
      %261 = index.mul %c13, %c12
      %splat_57 = tensor.splat %26 : tensor<4x13xi1>
      %262 = vector.reduction <xor>, %255 : vector<4xi16> into i16
      %263 = arith.minui %c490147963_i32, %c1052194578_i32 : i32
      %264 = index.add %c6, %54
      %265 = arith.minui %173, %true_37 : i1
      %266 = vector.broadcast %26 : i1 to vector<4x13xi1>
      %267 = vector.broadcast %c1052194578_i32 : i32 to vector<4x13xi32>
      %268 = vector.gather %from_elements[%222, %c5] [%267], %266, %109 : tensor<4x13xf32>, vector<4x13xi32>, vector<4x13xi1>, vector<4x13xf32> into vector<4x13xf32>
      %269 = tensor.empty() : tensor<4x13xf16>
      scf.reduce(%269)  : tensor<4x13xf16> {
      ^bb0(%arg2: tensor<4x13xf16>, %arg3: tensor<4x13xf16>):
        %270 = arith.remui %true_29, %26 : i1
        %271 = math.log %cst : f32
        %272 = arith.cmpi ne, %121, %c1531692190_i64 : i64
        %273 = vector.broadcast %221 : f16 to vector<9xf16>
        %274 = vector.broadcast %true_37 : i1 to vector<9xi1>
        %275 = vector.maskedload %alloc_9[%c8, %c0, %c5], %274, %273 : memref<10x4x13xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        memref.assume_alignment %alloc_24, 4 : memref<13xi32>
        %276 = arith.remui %true_37, %false_36 : i1
        %true_58 = arith.constant true
        %277 = index.maxu %233, %200
        %278 = tensor.empty() : tensor<4x13xf16>
        scf.reduce.return %278 : tensor<4x13xf16>
      }
      scf.yield
    }
    %252 = affine.vector_load %alloc_13[%47, %232, %182] : memref<10x4x13xf32>, vector<9xf32>
    affine.vector_store %32, %alloc_8[%239, %c4, %222] : memref<10x4x13xi16>, vector<4xi16>
    vector.print %20 : vector<4xi1>
    vector.print %30 : vector<4xi1>
    vector.print %32 : vector<4xi16>
    vector.print %33 : vector<4xi16>
    vector.print %109 : vector<4x13xf32>
    vector.print %110 : vector<4x13xf32>
    vector.print %137 : vector<13xf32>
    vector.print %142 : vector<4xi16>
    vector.print %151 : vector<1xi16>
    vector.print %154 : vector<1xi1>
    vector.print %175 : vector<13xf32>
    vector.print %196 : vector<1xi16>
    vector.print %227 : vector<10x4x13xf32>
    vector.print %241 : vector<13xi32>
    vector.print %242 : vector<13xi1>
    vector.print %243 : vector<13xi32>
    vector.print %252 : vector<9xf32>
    vector.print %false : i1
    vector.print %cst : f32
    vector.print %c490147963_i32 : i32
    vector.print %c-14576_i16 : i16
    vector.print %cst_0 : f32
    vector.print %c1052194578_i32 : i32
    vector.print %cst_1 : f16
    vector.print %c1531692190_i64 : i64
    vector.print %false_2 : i1
    vector.print %cst_3 : f32
    vector.print %true : i1
    vector.print %c27645_i16 : i16
    vector.print %cst_4 : f32
    vector.print %cst_5 : f32
    vector.print %cst_6 : f16
    vector.print %cst_7 : f32
    vector.print %26 : i1
    vector.print %46 : i1
    vector.print %true_29 : i1
    vector.print %95 : f32
    vector.print %false_36 : i1
    vector.print %true_37 : i1
    vector.print %121 : i64
    vector.print %extracted : f16
    vector.print %173 : i1
    vector.print %209 : i16
    vector.print %221 : f16
    return %splat : tensor<10x4x13xf32>
  }
}
