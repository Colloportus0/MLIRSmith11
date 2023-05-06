module {
  func.func @func1(%arg0: tensor<11x11xi16>, %arg1: index, %arg2: tensor<16x7xf16>) -> vector<7x7x11xi32> {
    %c797832060_i32 = arith.constant 797832060 : i32
    %cst = arith.constant 6.038400e+04 : f16
    %c-29101_i16 = arith.constant -29101 : i16
    %cst_0 = arith.constant 1.65607437E+9 : f32
    %cst_1 = arith.constant 1.67361702E+9 : f32
    %cst_2 = arith.constant 0x4DA9944E : f32
    %c1196836168_i64 = arith.constant 1196836168 : i64
    %true = arith.constant true
    %false = arith.constant false
    %cst_3 = arith.constant 7.376000e+03 : f16
    %true_4 = arith.constant true
    %true_5 = arith.constant true
    %cst_6 = arith.constant 1.4968064E+9 : f32
    %c-21014_i16 = arith.constant -21014 : i16
    %c921360577_i64 = arith.constant 921360577 : i64
    %c-29438_i16 = arith.constant -29438 : i16
    %0 = tensor.empty() : tensor<9x11xf32>
    %1 = tensor.empty() : tensor<16x7xf16>
    %2 = tensor.empty() : tensor<11x11xi16>
    %3 = tensor.empty() : tensor<7x7x11xi16>
    %4 = tensor.empty() : tensor<11x11xf32>
    %5 = tensor.empty() : tensor<7x7x11xi16>
    %6 = tensor.empty() : tensor<16x7xf32>
    %7 = tensor.empty() : tensor<7x7x11xi32>
    %8 = tensor.empty() : tensor<16x7xi32>
    %9 = tensor.empty() : tensor<7x7x11xi64>
    %10 = tensor.empty() : tensor<9x11xi32>
    %11 = tensor.empty() : tensor<16x7xi1>
    %12 = tensor.empty() : tensor<16x7xi16>
    %13 = tensor.empty() : tensor<7x7x11xi32>
    %14 = tensor.empty() : tensor<7x7x11xi16>
    %15 = tensor.empty() : tensor<9x11xi64>
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
    %alloc = memref.alloc() : memref<11x11xi64>
    %alloc_7 = memref.alloc() : memref<11x11xf32>
    %alloc_8 = memref.alloc() : memref<11x11xi64>
    %alloc_9 = memref.alloc() : memref<9x11xi16>
    %alloc_10 = memref.alloc() : memref<7x7x11xf32>
    %alloc_11 = memref.alloc() : memref<9x11xf16>
    %alloc_12 = memref.alloc() : memref<7x7x11xf32>
    %alloc_13 = memref.alloc() : memref<11x11xi64>
    %alloc_14 = memref.alloc() : memref<11x11xi1>
    %alloc_15 = memref.alloc() : memref<9x11xf16>
    %alloc_16 = memref.alloc() : memref<11x11xi64>
    %alloc_17 = memref.alloc() : memref<16x7xf16>
    %alloc_18 = memref.alloc() : memref<11x11xi1>
    %alloc_19 = memref.alloc() : memref<11x11xi1>
    %alloc_20 = memref.alloc() : memref<9x11xf16>
    %alloc_21 = memref.alloc() : memref<9x11xi1>
    %16 = tensor.empty() : tensor<16x7xi16>
    %17 = linalg.copy ins(%12 : tensor<16x7xi16>) outs(%16 : tensor<16x7xi16>) -> tensor<16x7xi16>
    %18 = tensor.empty() : tensor<7x16xi1>
    %transposed = linalg.transpose ins(%11 : tensor<16x7xi1>) outs(%18 : tensor<7x16xi1>) permutation = [1, 0] 
    %alloc_22 = memref.alloc() : memref<11xi64>
    linalg.reduce ins(%15 : tensor<9x11xi64>) outs(%alloc_22 : memref<11xi64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %261 = math.round %cst_0 : f32
        %false_50 = index.bool.constant false
        %262 = math.ipowi %17, %12 : tensor<16x7xi16>
        %263 = math.powf %0, %0 : tensor<9x11xf32>
        %264 = affine.apply affine_map<(d0, d1) -> (d1 mod 16)>(%c7, %c8)
        %265 = arith.remf %cst_1, %cst_2 : f32
        %266 = math.tanh %0 : tensor<9x11xf32>
        %from_elements_51 = tensor.from_elements %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16 : tensor<11x11xi16>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %19 = scf.parallel (%arg3, %arg4) = (%c2, %c6) to (%c9, %c12) step (%c2, %c3) init (%14) -> tensor<7x7x11xi16> {
      %261 = vector.broadcast %c797832060_i32 : i32 to vector<9xi32>
      %262 = vector.reduction <add>, %261 : vector<9xi32> into i32
      %extracted_50 = tensor.extract %3[%c5, %c6, %c8] : tensor<7x7x11xi16>
      %263 = math.tanh %4 : tensor<11x11xf32>
      %264 = bufferization.to_memref %13 : memref<7x7x11xi32>
      %265 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d3)>(%c1, %c0, %c11, %c13)
      memref.alloca_scope  {
        %expanded_53 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<16x7xi32> into tensor<16x7x1xi32>
        %278 = index.castu %true_5 : i1 to index
        %279 = math.fpowi %cst, %c797832060_i32 : f16, i32
        %280 = math.log %0 : tensor<9x11xf32>
        %281 = vector.broadcast %c797832060_i32 : i32 to vector<1xi32>
        %282 = vector.multi_reduction <add>, %281, %c797832060_i32 [0] : vector<1xi32> to i32
        %283 = arith.ceildivsi %c797832060_i32, %c797832060_i32 : i32
        %284 = memref.atomic_rmw andi %c1196836168_i64, %alloc_22[%c1] : (i64, memref<11xi64>) -> i64
        %285 = index.ceildivu %c4, %c11
        %286 = vector.broadcast %cst_6 : f32 to vector<11x11xf32>
        %287 = vector.fma %286, %286, %286 : vector<11x11xf32>
        %288 = memref.load %alloc_20[%c0, %c9] : memref<9x11xf16>
        %289 = math.atan2 %4, %4 : tensor<11x11xf32>
        %290 = math.ceil %1 : tensor<16x7xf16>
        %291 = vector.broadcast %c921360577_i64 : i64 to vector<i64>
        vector.transfer_write %291, %alloc_16[%c9, %c9] : vector<i64>, memref<11x11xi64>
        %292 = memref.atomic_rmw addi %c1196836168_i64, %alloc_8[%c10, %c3] : (i64, memref<11x11xi64>) -> i64
        %293 = math.sqrt %6 : tensor<16x7xf32>
        %294 = math.round %4 : tensor<11x11xf32>
        %295 = math.sqrt %4 : tensor<11x11xf32>
        %296 = affine.apply affine_map<(d0, d1) -> (d1 mod 16)>(%c6, %c9)
        %297 = bufferization.to_memref %15 : memref<9x11xi64>
        %298 = vector.shuffle %281, %281 [1] : vector<1xi32>, vector<1xi32>
        %299 = memref.atomic_rmw andi %c921360577_i64, %alloc_16[%c2, %c9] : (i64, memref<11x11xi64>) -> i64
        %extracted_54 = tensor.extract %8[%c13, %c2] : tensor<16x7xi32>
        %splat_55 = tensor.splat %extracted_50 : tensor<7x7x11xi16>
        %300 = math.sqrt %cst_1 : f32
        %301 = memref.atomic_rmw muli %c-29101_i16, %alloc_9[%c7, %c6] : (i16, memref<9x11xi16>) -> i16
        %alloc_56 = memref.alloc() : memref<11x11xi64>
        %302 = tensor.empty() : tensor<9x11xi64>
        %303 = linalg.matmul ins(%15, %alloc_56 : tensor<9x11xi64>, memref<11x11xi64>) outs(%302 : tensor<9x11xi64>) -> tensor<9x11xi64>
        %304 = arith.ori %true_5, %true : i1
        %305 = arith.xori %282, %c797832060_i32 : i32
        %306 = arith.remf %cst_6, %cst_1 : f32
        %307 = bufferization.to_tensor %alloc_12 : memref<7x7x11xf32>
        %308 = arith.shrui %c-29101_i16, %extracted_50 : i16
        %309 = math.fpowi %cst_0, %282 : f32, i32
      }
      %266 = arith.ceildivsi %extracted_50, %c-29101_i16 : i16
      %267 = math.copysign %cst_0, %cst_2 : f32
      %inserted_51 = tensor.insert %true_4 into %11[%c4, %c6] : tensor<16x7xi1>
      %268 = math.log2 %cst_3 : f16
      %splat_52 = tensor.splat %c-29438_i16 : tensor<11x11xi16>
      %269 = math.powf %cst_2, %cst_2 : f32
      %270 = tensor.empty() : tensor<16x16xi1>
      %271 = linalg.matmul ins(%11, %transposed : tensor<16x7xi1>, tensor<7x16xi1>) outs(%270 : tensor<16x16xi1>) -> tensor<16x16xi1>
      %272 = index.divu %c1, %c9
      %273 = vector.broadcast %true_5 : i1 to vector<9x11xi1>
      %274 = vector.broadcast %cst_2 : f32 to vector<11x11xf32>
      %275 = vector.fma %274, %274, %274 : vector<11x11xf32>
      %276 = vector.splat %false : vector<11x11xi1>
      %277 = tensor.empty() : tensor<7x7x11xi16>
      scf.reduce(%277)  : tensor<7x7x11xi16> {
      ^bb0(%arg5: tensor<7x7x11xi16>, %arg6: tensor<7x7x11xi16>):
        %278 = math.expm1 %cst_2 : f32
        %279 = vector.broadcast %c9 : index to vector<9xindex>
        %280 = vector.broadcast %true_4 : i1 to vector<9xi1>
        %281 = vector.broadcast %cst_3 : f16 to vector<9xf16>
        vector.scatter %alloc_15[%c5, %c2] [%279], %280, %281 : memref<9x11xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
        %282 = vector.broadcast %cst_0 : f32 to vector<f32>
        %283 = vector.transfer_write %282, %4[%c11, %c5] : vector<f32>, tensor<11x11xf32>
        %284 = math.tanh %cst_6 : f32
        %from_elements_53 = tensor.from_elements %cst_0, %cst_1, %cst_0, %cst_0, %cst_2, %cst_6, %cst_2, %cst_1, %cst_6, %cst_0, %cst_1, %cst_6, %cst_6, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst_6, %cst_1, %cst_1, %cst_6, %cst_1, %cst_2, %cst_2, %cst_2, %cst_6, %cst_1, %cst_6, %cst_6, %cst_1, %cst_0, %cst_0, %cst_2, %cst_6, %cst_2, %cst_6, %cst_6, %cst_0, %cst_1, %cst_1, %cst_6, %cst_1, %cst_6, %cst_0, %cst_1, %cst_0, %cst_6, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_6, %cst_1, %cst_0, %cst_2, %cst_6, %cst_1, %cst_0, %cst_2, %cst_6, %cst_1, %cst_2, %cst_6, %cst_6, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_6, %cst_0, %cst_1, %cst_6, %cst_2, %cst_0, %cst_6, %cst_6, %cst_0, %cst_6, %cst_0, %cst_2, %cst_6, %cst_1, %cst_1, %cst_0, %cst_2, %cst_0, %cst_6, %cst_6, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_6, %cst_1, %cst_2, %cst_1, %cst_0, %cst_1, %cst_2, %cst_0, %cst_2, %cst_0, %cst_6, %cst_2, %cst_2, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_6, %cst_6, %cst_2, %cst_2, %cst_0, %cst_2, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_2, %cst_2, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_1, %cst_2, %cst_2, %cst_0, %cst_6, %cst_2, %cst_0, %cst_1, %cst_0, %cst_0, %cst_6, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_1, %cst_1, %cst_2, %cst_6, %cst_2, %cst_1, %cst_1, %cst_1, %cst_0, %cst_6, %cst_6, %cst_6, %cst_6, %cst_0, %cst_6, %cst_1, %cst_6, %cst_0, %cst_6, %cst_2, %cst_0, %cst_1, %cst_2, %cst_6, %cst_0, %cst_2, %cst_6, %cst_6, %cst_6, %cst_2, %cst_6, %cst_6, %cst_2, %cst_6, %cst_6, %cst_6, %cst_2, %cst_1, %cst_6, %cst_6, %cst_6, %cst_6, %cst_2, %cst_1, %cst_1, %cst_0, %cst_6, %cst_6, %cst_6, %cst_2, %cst_0, %cst_1, %cst_2, %cst_6, %cst_0, %cst_1, %cst_6, %cst_2, %cst_2, %cst_6, %cst_6, %cst_6, %cst_6, %cst_6, %cst_1, %cst_0, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_1, %cst_6, %cst_2, %cst_1, %cst_1, %cst_0, %cst_6, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_6, %cst_2, %cst_2, %cst_6, %cst_2, %cst_1, %cst_0, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_6, %cst_6, %cst_1, %cst_1, %cst_6, %cst_0, %cst_2, %cst_2, %cst_1, %cst_0, %cst_1, %cst_6, %cst_6, %cst_1, %cst_2, %cst_2, %cst_0, %cst_1, %cst_6, %cst_2, %cst_1, %cst_0, %cst_2, %cst_6, %cst_1, %cst_1, %cst_0, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_6, %cst_0, %cst_6, %cst_6, %cst_0, %cst_2, %cst_1, %cst_2, %cst_2, %cst_6, %cst_2, %cst_6, %cst_2, %cst_6, %cst_1, %cst_2, %cst_1, %cst_1, %cst_0, %cst_6, %cst_2, %cst_0, %cst_1, %cst_2, %cst_2, %cst_6, %cst_6, %cst_0, %cst_2, %cst_2, %cst_6, %cst_0, %cst_6, %cst_0, %cst_2, %cst_1, %cst_1, %cst_0, %cst_0, %cst_1, %cst_0, %cst_6, %cst_2, %cst_1, %cst_2, %cst_0, %cst_0, %cst_2, %cst_1, %cst_6, %cst_2, %cst_1, %cst_2, %cst_2, %cst_0, %cst_1, %cst_0, %cst_6, %cst_6, %cst_6, %cst_0, %cst_2, %cst_6, %cst_0, %cst_6, %cst_1, %cst_0, %cst_1, %cst_6, %cst_0, %cst_0, %cst_6, %cst_1, %cst_6, %cst_0, %cst_1, %cst_2, %cst_1, %cst_0, %cst_6, %cst_0, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_0, %cst_6, %cst_6, %cst_2, %cst_1, %cst_0, %cst_0, %cst_2, %cst_2, %cst_0, %cst_1, %cst_6, %cst_6, %cst_0, %cst_0, %cst_0, %cst_2, %cst_6, %cst_2, %cst_1, %cst_1, %cst_6, %cst_2, %cst_2, %cst_2, %cst_2, %cst_6, %cst_2, %cst_6, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_1, %cst_2, %cst_2, %cst_0, %cst_6, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_2, %cst_2, %cst_6, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_0, %cst_0, %cst_2, %cst_6, %cst_6, %cst_2, %cst_2, %cst_2, %cst_0, %cst_6, %cst_1, %cst_6, %cst_1, %cst_6, %cst_2, %cst_1, %cst_1, %cst_6, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_6, %cst_1, %cst_6, %cst_1, %cst_1, %cst_6, %cst_2, %cst_0, %cst_0, %cst_1, %cst_0, %cst_1, %cst_6, %cst_6, %cst_1, %cst_6, %cst_2, %cst_6, %cst_2, %cst_6, %cst_6, %cst_6, %cst_0, %cst_0, %cst_1, %cst_6, %cst_0, %cst_0, %cst_2, %cst_6, %cst_0, %cst_6, %cst_6, %cst_6, %cst_6, %cst_1, %cst_0, %cst_6, %cst_0, %cst_0, %cst_1, %cst_0, %cst_6, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_6, %cst_2, %cst_6, %cst_1, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst_6, %cst_6, %cst_1, %cst_6, %cst_6, %cst_1, %cst_2, %cst_2, %cst_6, %cst_0, %cst_0, %cst_0, %cst_1, %cst_1, %cst_6, %cst_2, %cst_0, %cst_2, %cst_0, %cst_6, %cst_6, %cst_0, %cst_1, %cst_6, %cst_6, %cst_0, %cst_0 : tensor<7x7x11xf32>
        %285 = tensor.empty() : tensor<11x11xf32>
        %286 = linalg.matmul ins(%4, %4 : tensor<11x11xf32>, tensor<11x11xf32>) outs(%285 : tensor<11x11xf32>) -> tensor<11x11xf32>
        %287 = vector.shuffle %282, %282 [0, 1] : vector<f32>, vector<f32>
        %true_54 = arith.constant true
        %288 = tensor.empty() : tensor<7x7x11xi16>
        scf.reduce.return %288 : tensor<7x7x11xi16>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_7[%c4, %c15] : memref<11x11xf32>, vector<11xf32>
    affine.vector_store %20, %alloc_12[%c12, %c3, %c7] : memref<7x7x11xf32>, vector<11xf32>
    %21 = tensor.empty() : tensor<11xi64>
    %22 = tensor.empty() : tensor<i64>
    %23 = linalg.dot ins(%alloc_22, %21 : memref<11xi64>, tensor<11xi64>) outs(%22 : tensor<i64>) -> tensor<i64>
    %24 = index.add %c14, %c7
    %25 = math.expm1 %0 : tensor<9x11xf32>
    %26 = arith.negf %cst_6 : f32
    %27 = vector.load %alloc_20[%c5, %c8] : memref<9x11xf16>, vector<7x7x11xf16>
    %28 = affine.min affine_map<(d0, d1) -> (d0 + 4, d0 - 64, d0 mod 4 + 128, d1)>(%24, %c0)
    %extracted = tensor.extract %1[%c11, %c6] : tensor<16x7xf16>
    %29 = vector.matrix_multiply %20, %20 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
    %expanded = tensor.expand_shape %0 [[0], [1, 2]] : tensor<9x11xf32> into tensor<9x11x1xf32>
    %30 = math.cos %1 : tensor<16x7xf16>
    %31 = arith.maxsi %false, %true_4 : i1
    %32 = vector.create_mask %c15, %c13 : vector<16x7xi1>
    %alloc_23 = memref.alloc() : memref<11x11xi16>
    %33 = affine.for %arg3 = 0 to 110 iter_args(%arg4 = %c921360577_i64) -> (i64) {
      affine.yield %c921360577_i64 : i64
    }
    %34 = math.atan %cst_0 : f32
    %35 = index.floordivs %c3, %c8
    %36 = vector.broadcast %c-29438_i16 : i16 to vector<16xi16>
    %37 = vector.transfer_write %36, %12[%c13, %c13] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi16>, tensor<16x7xi16>
    %38 = index.maxs %c8, %c10
    %from_elements = tensor.from_elements %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16 : tensor<7x7x11xi16>
    %39 = memref.load %alloc_15[%c6, %c8] : memref<9x11xf16>
    %40 = arith.addf %extracted, %cst : f16
    %41 = arith.negf %cst_2 : f32
    %alloc_24 = memref.alloc() : memref<7x7x11xi64>
    memref.tensor_store %9, %alloc_24 : memref<7x7x11xi64>
    %expanded_25 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<7x7x11xi32> into tensor<7x7x11x1xi32>
    %42 = memref.realloc %alloc_22 : memref<11xi64> to memref<7xi64>
    %43 = math.absi %false : i1
    %generated = tensor.generate %c11 {
    ^bb0(%arg3: index, %arg4: index):
      %splat_50 = tensor.splat %cst_2 : tensor<9x11xf32>
      %261 = math.round %6 : tensor<16x7xf32>
      %cst_51 = arith.constant 1.000000e+00 : f32
      %cst_52 = arith.constant 0.000000e+00 : f32
      %262 = vector.transfer_read %6[%c15, %c10], %cst_52 : tensor<16x7xf32>, vector<f32>
      %263 = arith.shrui %true, %false : i1
      tensor.yield %c797832060_i32 : i32
    } : tensor<?x7xi32>
    %44 = bufferization.to_memref %11 : memref<16x7xi1>
    %45 = math.sqrt %cst_2 : f32
    %from_elements_26 = tensor.from_elements %extracted, %extracted, %extracted, %extracted, %cst, %extracted, %cst_3, %cst_3, %extracted, %extracted, %extracted, %extracted, %cst_3, %extracted, %cst_3, %extracted, %extracted, %cst_3, %extracted, %cst, %cst_3, %extracted, %cst, %cst, %extracted, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %cst_3, %extracted, %cst, %cst, %cst_3, %cst_3, %cst_3, %extracted, %cst, %extracted, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %extracted, %extracted, %extracted, %cst_3, %extracted, %extracted, %cst, %cst_3, %cst_3, %cst, %extracted, %extracted, %cst_3, %extracted, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %extracted, %cst_3, %cst, %cst, %extracted, %extracted, %extracted, %extracted, %cst_3, %extracted, %cst, %extracted, %cst, %extracted, %extracted, %extracted, %extracted, %cst_3, %cst, %extracted, %extracted, %cst_3, %cst : tensor<9x11xf16>
    %46 = arith.maxsi %true_4, %true_5 : i1
    %47 = math.exp %cst : f16
    %48 = vector.shuffle %32, %32 [0, 2, 4, 5, 6, 11, 12, 13, 14, 15, 17, 18, 23, 24, 25, 27, 28, 29, 30, 31] : vector<16x7xi1>, vector<16x7xi1>
    %49 = vector.create_mask %24, %c4 : vector<9x11xi1>
    %50 = arith.remf %cst, %cst_3 : f16
    %51 = arith.shrui %true, %true : i1
    %52 = index.maxu %35, %c10
    %53 = vector.broadcast %cst_6 : f32 to vector<9xf32>
    %54 = vector.transfer_write %53, %0[%c1, %35] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xf32>, tensor<9x11xf32>
    %55 = math.ceil %4 : tensor<11x11xf32>
    %56 = math.exp %6 : tensor<16x7xf32>
    %57 = vector.transpose %29, [0] : vector<1xf32> to vector<1xf32>
    %58 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 * 2, d1 * 2, d1 * 2)>(%28, %c10, %c3, %c3)
    %59 = arith.minsi %c797832060_i32, %c797832060_i32 : i32
    %60 = arith.minf %extracted, %cst_3 : f16
    %61 = arith.shrui %c-29438_i16, %c-29438_i16 : i16
    %62 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %36, %36, %c-21014_i16 : vector<16xi16>, vector<16xi16> into i16
    %63 = vector.flat_transpose %36 {columns = 4 : i32, rows = 4 : i32} : vector<16xi16> -> vector<16xi16>
    affine.store %c1196836168_i64, %alloc_13[%c4, %c9] : memref<11x11xi64>
    %64 = affine.min affine_map<(d0) -> ((((d0 - 2) mod 128 - d0) mod 2) floordiv 128, (d0 - 2) mod 128 - d0 + 34, 0, (d0 - 2) mod 128 - d0 + 32)>(%c15)
    %65 = math.rsqrt %from_elements_26 : tensor<9x11xf16>
    %66 = math.ctpop %8 : tensor<16x7xi32>
    %67 = vector.reduction <minf>, %53 : vector<9xf32> into f32
    %68 = math.expm1 %cst_3 : f16
    %69 = vector.matrix_multiply %29, %53 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 9 : i32} : (vector<1xf32>, vector<9xf32>) -> vector<9xf32>
    %70 = math.copysign %6, %6 : tensor<16x7xf32>
    %71 = arith.maxf %cst_3, %cst_3 : f16
    %72 = arith.minf %cst_6, %cst_2 : f32
    %73 = bufferization.to_tensor %alloc : memref<11x11xi64>
    %74 = arith.shrsi %false, %true_4 : i1
    %75 = vector.broadcast %cst_6 : f32 to vector<9x11xf32>
    %76 = math.sqrt %cst_0 : f32
    %collapsed = tensor.collapse_shape %from_elements_26 [[0, 1]] : tensor<9x11xf16> into tensor<99xf16>
    %77 = arith.maxf %cst_6, %cst_0 : f32
    %78 = math.exp %collapsed : tensor<99xf16>
    %79 = vector.matrix_multiply %69, %53 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf32>, vector<9xf32>) -> vector<1xf32>
    %80 = math.cos %cst_6 : f32
    memref.alloca_scope  {
      %261 = memref.realloc %alloc_22 : memref<11xi64> to memref<9xi64>
      %262 = arith.minf %cst_1, %cst_1 : f32
      %263 = arith.minui %c921360577_i64, %c921360577_i64 : i64
      affine.store %true_4, %alloc_21[%c4, %c9] : memref<9x11xi1>
      %264 = math.log %collapsed : tensor<99xf16>
      %265 = arith.minsi %c-29438_i16, %c-29101_i16 : i16
      %266 = math.round %0 : tensor<9x11xf32>
      %267 = vector.broadcast %cst_2 : f32 to vector<11x11xf32>
      %268 = vector.fma %267, %267, %267 : vector<11x11xf32>
      %269 = arith.remf %cst_2, %cst_2 : f32
      %270 = arith.floordivsi %c921360577_i64, %c1196836168_i64 : i64
      %splat_50 = tensor.splat %cst_3 : tensor<7x7x11xf16>
      %alloc_51 = memref.alloc() : memref<9x11xi32>
      %271 = math.cos %cst_1 : f32
      %272 = math.ipowi %true_4, %true : i1
      %273 = math.log %cst_0 : f32
      %274 = math.powf %expanded, %expanded : tensor<9x11x1xf32>
      %275 = index.ceildivu %28, %c6
      %276 = math.fpowi %0, %10 : tensor<9x11xf32>, tensor<9x11xi32>
      %277 = math.log1p %splat_50 : tensor<7x7x11xf16>
      %278 = math.exp2 %1 : tensor<16x7xf16>
      %279 = math.absf %1 : tensor<16x7xf16>
      %280 = bufferization.to_tensor %alloc_16 : memref<11x11xi64>
      %281 = vector.bitcast %49 : vector<9x11xi1> to vector<9x11xi1>
      %282 = vector.broadcast %true_5 : i1 to vector<11xi1>
      %283 = vector.multi_reduction <maxsi>, %281, %282 [0] : vector<9x11xi1> to vector<11xi1>
      %284 = arith.maxui %true, %true_4 : i1
      %285 = vector.broadcast %true_5 : i1 to vector<16xi1>
      %286 = vector.multi_reduction <minsi>, %32, %285 [1] : vector<16x7xi1> to vector<16xi1>
      %287 = index.maxu %24, %c15
      %288 = affine.apply affine_map<(d0, d1) -> (d0 + 1)>(%58, %c5)
      %289 = scf.execute_region -> tensor<11x11xf32> {
        %293 = arith.negf %cst_1 : f32
        %294 = math.atan2 %6, %6 : tensor<16x7xf32>
        %295 = arith.maxui %c-29438_i16, %c-29101_i16 : i16
        %296 = index.castu %true : i1 to index
        %297 = vector.matrix_multiply %282, %285 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 16 : i32} : (vector<11xi1>, vector<16xi1>) -> vector<176xi1>
        %298 = arith.ceildivsi %c-29438_i16, %c-21014_i16 : i16
        %299 = math.powf %cst, %cst : f16
        %300 = index.ceildivu %c11, %c2
        %cast = tensor.cast %13 : tensor<7x7x11xi32> to tensor<?x?x?xi32>
        affine.store %true_4, %alloc_19[%c1, %c3] : memref<11x11xi1>
        %301 = arith.cmpi ule, %false, %true : i1
        %true_52 = index.bool.constant true
        %302 = vector.broadcast %cst_2 : f32 to vector<9x11xf32>
        %303 = vector.fma %302, %75, %75 : vector<9x11xf32>
        %cast_53 = tensor.cast %17 : tensor<16x7xi16> to tensor<?x?xi16>
        %304 = math.exp2 %0 : tensor<9x11xf32>
        %305 = index.divu %300, %c14
        scf.yield %4 : tensor<11x11xf32>
      }
      %290 = arith.minui %true_5, %true_4 : i1
      %291 = math.cos %cst : f16
      %292 = vector.matrix_multiply %36, %36 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi16>, vector<16xi16>) -> vector<1xi16>
    }
    %splat = tensor.splat %cst_2 : tensor<9x11xf32>
    affine.for %arg3 = 0 to 8 {
    }
    %81 = vector.insertelement %cst_0, %69[%c9 : index] : vector<9xf32>
    %82 = math.fma %1, %1, %1 : tensor<16x7xf16>
    %83 = arith.negf %extracted : f16
    %84 = tensor.empty() : tensor<7x16xi16>
    %85 = tensor.empty() : tensor<16x16xi16>
    %86 = linalg.matmul ins(%12, %84 : tensor<16x7xi16>, tensor<7x16xi16>) outs(%85 : tensor<16x16xi16>) -> tensor<16x16xi16>
    %cst_27 = arith.constant 5.763200e+04 : f16
    %87 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 ceildiv 32) floordiv 2)>(%c8, %24, %c10, %c1)
    %88 = vector.broadcast %true_5 : i1 to vector<11xi1>
    %89 = vector.multi_reduction <and>, %49, %88 [0] : vector<9x11xi1> to vector<11xi1>
    %cst_28 = arith.constant 1.000000e+00 : f16
    %90 = vector.transfer_read %alloc_17[%38, %c11], %cst_28 : memref<16x7xf16>, vector<9xf16>
    %alloc_29 = memref.alloc() : memref<11x11xi32>
    %inserted = tensor.insert %c797832060_i32 into %13[%c6, %c0, %c5] : tensor<7x7x11xi32>
    %91 = arith.shrui %c921360577_i64, %c921360577_i64 : i64
    %92 = math.tanh %4 : tensor<11x11xf32>
    %93 = arith.maxf %cst_1, %cst_1 : f32
    %true_30 = index.bool.constant true
    %94 = math.ceil %extracted : f16
    memref.assume_alignment %alloc_10, 16 : memref<7x7x11xf32>
    %95 = arith.maxui %true, %true_30 : i1
    %96 = arith.cmpf olt, %cst, %extracted : f16
    %97 = math.fma %splat, %splat, %0 : tensor<9x11xf32>
    %98 = math.powf %cst_28, %cst_3 : f16
    affine.store %cst_1, %alloc_7[%c13, %c13] : memref<11x11xf32>
    %99 = affine.for %arg3 = 0 to 15 iter_args(%arg4 = %c1) -> (index) {
      affine.yield %c11 : index
    }
    %100 = math.powf %splat, %0 : tensor<9x11xf32>
    %101 = arith.cmpf ult, %cst_6, %cst_6 : f32
    %102 = index.floordivs %58, %c5
    %103 = vector.broadcast %52 : index to vector<11xindex>
    %104 = vector.broadcast %c1196836168_i64 : i64 to vector<11xi64>
    vector.scatter %alloc[%c10, %c5] [%103], %88, %104 : memref<11x11xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
    %105 = arith.remf %extracted, %cst_3 : f16
    %106 = tensor.empty() : tensor<99xi32>
    %107 = math.fpowi %collapsed, %106 : tensor<99xf16>, tensor<99xi32>
    %108 = math.absf %extracted : f16
    %109 = bufferization.to_memref %13 : memref<7x7x11xi32>
    %110 = math.powf %cst_6, %cst_1 : f32
    %111 = bufferization.clone %109 : memref<7x7x11xi32> to memref<7x7x11xi32>
    %112 = tensor.empty() : tensor<11x11xi64>
    %113 = linalg.matmul ins(%73, %73 : tensor<11x11xi64>, tensor<11x11xi64>) outs(%112 : tensor<11x11xi64>) -> tensor<11x11xi64>
    %inserted_31 = tensor.insert %c797832060_i32 into %8[%c13, %c3] : tensor<16x7xi32>
    memref.store %extracted, %alloc_11[%c2, %c4] : memref<9x11xf16>
    %114 = index.sub %c5, %c5
    vector.print %79 : vector<1xf32>
    %from_elements_32 = tensor.from_elements %extracted, %cst_28, %cst, %extracted, %cst, %cst, %cst_28, %cst_3, %cst, %extracted, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_28, %cst_28, %cst_3, %cst_28, %cst, %cst_28, %cst_3, %cst, %cst_28, %cst, %cst_3, %cst_3, %extracted, %cst_28, %extracted, %cst, %cst_28, %cst, %cst_28, %cst, %extracted, %cst, %extracted, %cst_3, %cst_3, %extracted, %cst_28, %cst_28, %extracted, %extracted, %extracted, %extracted, %cst_3, %extracted, %cst_3, %cst_3, %cst_3, %extracted, %extracted, %cst_3, %cst_3, %cst_3, %cst, %cst_28, %extracted, %extracted, %cst_28, %cst_3, %extracted, %cst_3, %cst_3, %extracted, %cst, %cst_28, %cst, %cst_3, %cst, %extracted, %extracted, %extracted, %extracted, %cst, %cst_3, %extracted, %cst_3, %cst_28, %extracted, %cst_3, %extracted, %cst, %cst_3, %cst, %cst_28, %extracted, %cst, %cst_3, %cst_3, %cst, %extracted, %cst_28, %cst_3, %extracted, %cst, %cst_3 : tensor<9x11xf16>
    %115 = index.divs %c8, %c5
    %alloc_33 = memref.alloc() : memref<7x7x11xi64>
    memref.tensor_store %9, %alloc_33 : memref<7x7x11xi64>
    %alloc_34 = memref.alloc() : memref<9x11xi64>
    %116 = arith.cmpi ult, %c797832060_i32, %c797832060_i32 : i32
    %117 = memref.load %alloc_19[%c0, %c10] : memref<11x11xi1>
    %118 = arith.minf %cst_3, %cst_3 : f16
    %119 = math.absf %cst_0 : f32
    %from_elements_35 = tensor.from_elements %true_5, %false, %true, %false, %false, %true, %false, %true_4, %false, %true_5, %true, %true_5, %false, %false, %true_30, %false, %true_5, %true_30, %true_5, %false, %true_30, %true_4, %true_30, %false, %true_30, %true_30, %false, %true, %false, %true, %false, %true_4, %false, %true_4, %true, %true_30, %false, %true, %true_5, %true_5, %true_5, %true_4, %true_30, %false, %false, %true_4, %true_5, %true_4, %true_4, %true_30, %true_30, %true_4, %true_5, %true_4, %true_4, %false, %true_30, %false, %true_5, %true, %true_5, %true_30, %true_30, %true_5, %false, %true, %true, %true_4, %false, %true, %true_30, %true_30, %false, %false, %true_4, %true_30, %false, %true_30, %true_5, %true_30, %true_4, %true, %true_5, %true, %false, %true, %false, %true_30, %true_5, %true_4, %true_4, %true, %true, %true_5, %true_30, %true_5, %true_4, %true_30, %false, %true_4, %true_5, %false, %true_5, %true, %true, %false, %false, %true, %true, %true_4, %true_5, %true_4, %true, %true_4, %true_30, %false, %true_5, %true_5, %false, %true_5, %true_5 : tensor<11x11xi1>
    %120 = affine.min affine_map<(d0) -> (d0 ceildiv 2, (d0 mod 128) * 4 - 32)>(%87)
    %121 = arith.addi %c-29438_i16, %c-29438_i16 : i16
    %122 = vector.broadcast %c1196836168_i64 : i64 to vector<i64>
    %123 = vector.transfer_write %122, %15[%114, %c7] : vector<i64>, tensor<9x11xi64>
    %124 = vector.transpose %49, [1, 0] : vector<9x11xi1> to vector<11x9xi1>
    %125 = vector.reduction <minf>, %69 : vector<9xf32> into f32
    %126 = math.powf %cst_1, %cst_6 : f32
    %127 = vector.splat %cst_0 : vector<9x11xf32>
    %128 = arith.minf %cst_6, %cst_2 : f32
    %129 = vector.reduction <mul>, %63 : vector<16xi16> into i16
    %cst_36 = arith.constant 1.000000e+00 : f16
    %cst_37 = arith.constant 0.000000e+00 : f16
    %130 = vector.transfer_read %alloc_15[%c0, %87], %cst_37 : memref<9x11xf16>, vector<f16>
    %131 = arith.cmpi ule, %c-29438_i16, %c-29438_i16 : i16
    %132 = math.round %6 : tensor<16x7xf32>
    %133 = arith.cmpf ord, %cst_36, %cst : f16
    %134 = index.ceildivs %28, %64
    %135 = vector.extract_strided_slice %69 {offsets = [6], sizes = [1], strides = [1]} : vector<9xf32> to vector<1xf32>
    %136 = math.sqrt %cst_1 : f32
    %137 = math.rsqrt %1 : tensor<16x7xf16>
    %138 = arith.ceildivsi %c-29101_i16, %c-29438_i16 : i16
    %139 = arith.divf %cst_1, %cst_2 : f32
    %140 = math.copysign %cst_2, %cst_2 : f32
    %141 = index.ceildivs %115, %c14
    %142 = arith.remf %cst, %cst_3 : f16
    %143 = arith.addi %c-29438_i16, %c-29438_i16 : i16
    %144 = math.tanh %1 : tensor<16x7xf16>
    %145 = affine.for %arg3 = 0 to 52 iter_args(%arg4 = %c0) -> (index) {
      affine.yield %c1 : index
    }
    %146 = arith.andi %true_4, %true_30 : i1
    %147 = math.fpowi %cst_1, %c797832060_i32 : f32, i32
    %148 = math.powf %1, %1 : tensor<16x7xf16>
    %149 = math.log10 %extracted : f16
    %150 = arith.remf %cst_1, %cst_6 : f32
    %collapsed_38 = tensor.collapse_shape %from_elements_32 [[0, 1]] : tensor<9x11xf16> into tensor<99xf16>
    %151 = math.expm1 %6 : tensor<16x7xf32>
    %true_39 = arith.constant true
    %152 = vector.transfer_read %11[%115, %c2], %true_39 : tensor<16x7xi1>, vector<i1>
    %153 = vector.maskedload %alloc_21[%c5, %c7], %88, %88 : memref<9x11xi1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
    %154 = memref.load %alloc_16[%c1, %c8] : memref<11x11xi64>
    %155 = tensor.empty() : tensor<7x7x11xf16>
    %156 = scf.while (%arg3 = %20) : (vector<11xf32>) -> vector<11xf32> {
      %261 = index.maxs %35, %114
      %262 = arith.negf %cst_6 : f32
      %263 = vector.create_mask %c4, %120, %141 : vector<7x7x11xi1>
      %alloc_50 = memref.alloc() : memref<11x11xi1>
      %264 = math.ipowi %3, %5 : tensor<7x7x11xi16>
      %265 = vector.splat %cst_6 : vector<11x11xf32>
      %266 = math.fma %cst_1, %cst_2, %cst_0 : f32
      %267 = arith.maxf %cst_36, %extracted : f16
      scf.condition(%true_5) %20 : vector<11xf32>
    } do {
    ^bb0(%arg3: vector<11xf32>):
      %261 = memref.load %alloc_16[%c9, %c9] : memref<11x11xi64>
      %262 = arith.addi %c-29438_i16, %c-21014_i16 : i16
      %263 = vector.broadcast %c797832060_i32 : i32 to vector<i32>
      %264 = vector.transfer_write %263, %106[%35] : vector<i32>, tensor<99xi32>
      %265 = affine.for %arg4 = 0 to 34 iter_args(%arg5 = %alloc_14) -> (memref<11x11xi1>) {
        affine.yield %alloc_19 : memref<11x11xi1>
      }
      %266 = arith.subi %c797832060_i32, %c797832060_i32 : i32
      %267 = tensor.empty() : tensor<9x11xi64>
      %268 = linalg.matmul ins(%15, %112 : tensor<9x11xi64>, tensor<11x11xi64>) outs(%267 : tensor<9x11xi64>) -> tensor<9x11xi64>
      %269 = vector.splat %c-29438_i16 : vector<11x11xi16>
      %270 = arith.maxui %c921360577_i64, %c1196836168_i64 : i64
      %271 = math.log %from_elements_26 : tensor<9x11xf16>
      %272 = math.copysign %splat, %splat : tensor<9x11xf32>
      %273 = arith.ceildivsi %c921360577_i64, %c1196836168_i64 : i64
      %274 = math.exp2 %cst : f16
      %from_elements_50 = tensor.from_elements %true_39, %true_5, %true_30, %true_4, %false, %false, %true_39, %true, %true, %true_39, %true, %true, %true_30, %true_30, %true_30, %true_4, %false, %true, %true_39, %true_39, %true_30, %true_4, %true_4, %true_5, %false, %true_39, %true, %true_30, %true_30, %true, %true_30, %true_30, %true, %true_39, %true_4, %true_39, %true, %true_30, %true, %true, %true_4, %true_5, %true_5, %true_39, %true_5, %true, %true_30, %true_4, %true, %true, %true_4, %true, %false, %true, %true_4, %true_39, %false, %true, %true_39, %true_5, %true_5, %true_5, %true_4, %true_30, %true_39, %true_39, %true_4, %true_39, %true_30, %true_4, %false, %true_4, %true_39, %true_5, %true_4, %true_30, %true_4, %false, %false, %true_30, %true, %true_30, %true_5, %true_39, %true, %true_5, %false, %true_4, %true, %true_39, %true_30, %true_4, %false, %true_30, %true_39, %true, %true_4, %false, %true, %true_5, %true_4, %true_30, %true_4, %true_5, %true, %false, %true_4, %true_4, %false, %false, %true_4, %true_30 : tensor<16x7xi1>
      %275 = vector.shuffle %29, %20 [0, 1, 2, 4, 5, 6, 8, 9, 10] : vector<1xf32>, vector<11xf32>
      %276 = math.ipowi %15, %267 : tensor<9x11xi64>
      %277 = index.divu %c11, %c3
      scf.yield %20 : vector<11xf32>
    }
    %157 = vector.load %alloc_21[%c7, %c5] : memref<9x11xi1>, vector<11x11xi1>
    %158 = arith.subi %false, %false : i1
    %159 = math.copysign %cst_2, %cst_1 : f32
    %splat_40 = tensor.splat %c1196836168_i64 : tensor<11x11xi64>
    memref.store %c797832060_i32, %109[%c5, %c4, %c10] : memref<7x7x11xi32>
    %160 = arith.remf %cst, %cst_36 : f16
    affine.for %arg3 = 0 to 122 {
    }
    %161 = math.fma %cst_28, %extracted, %cst_3 : f16
    %162 = arith.cmpf oge, %cst_1, %cst_0 : f32
    %163 = vector.broadcast %cst_1 : f32 to vector<9x11xf32>
    %164 = vector.fma %163, %163, %75 : vector<9x11xf32>
    %165 = index.add %52, %115
    %166 = arith.remf %cst_6, %cst_0 : f32
    %167 = index.maxu %c9, %c7
    %168 = arith.cmpi ule, %true, %true : i1
    %169 = math.floor %0 : tensor<9x11xf32>
    %170 = arith.ceildivsi %c797832060_i32, %c797832060_i32 : i32
    %true_41 = index.bool.constant true
    %171 = math.tanh %1 : tensor<16x7xf16>
    %172 = arith.addi %c-29438_i16, %c-21014_i16 : i16
    bufferization.dealloc_tensor %2 : tensor<11x11xi16>
    %173 = tensor.empty(%c0) : tensor<9x?xf32>
    %174 = arith.andi %c921360577_i64, %c921360577_i64 : i64
    %175 = math.tanh %6 : tensor<16x7xf32>
    %176 = vector.broadcast %cst_1 : f32 to vector<11x11xf32>
    %177 = vector.outerproduct %20, %20, %176 {kind = #vector.kind<mul>} : vector<11xf32>, vector<11xf32>
    %178 = tensor.empty() : tensor<7x7x11xi16>
    %179 = scf.while (%arg3 = %111) : (memref<7x7x11xi32>) -> memref<7x7x11xi32> {
      %false_50 = index.bool.constant false
      memref.store %c1196836168_i64, %alloc_22[%c9] : memref<11xi64>
      %261 = bufferization.clone %alloc_19 : memref<11x11xi1> to memref<11x11xi1>
      %262 = math.sqrt %cst_1 : f32
      %263 = vector.splat %141 : vector<16x7xindex>
      %264 = index.castu %c-29101_i16 : i16 to index
      %265 = index.maxu %35, %102
      %alloc_51 = memref.alloc() : memref<16x7xf16>
      memref.copy %alloc_17, %alloc_51 : memref<16x7xf16> to memref<16x7xf16>
      scf.condition(%true) %109 : memref<7x7x11xi32>
    } do {
    ^bb0(%arg3: memref<7x7x11xi32>):
      %261 = math.cttz %18 : tensor<7x16xi1>
      %262 = math.sqrt %155 : tensor<7x7x11xf16>
      %263 = arith.negf %cst_1 : f32
      %264 = memref.realloc %alloc_22 : memref<11xi64> to memref<16xi64>
      %265 = arith.cmpi sgt, %c1196836168_i64, %c921360577_i64 : i64
      %266 = math.sqrt %0 : tensor<9x11xf32>
      %267 = vector.broadcast %cst_3 : f16 to vector<7x7xf16>
      %268 = vector.multi_reduction <add>, %27, %267 [2] : vector<7x7x11xf16> to vector<7x7xf16>
      %expanded_50 = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<7x7x11xi16> into tensor<7x7x11x1xi16>
      %cst_51 = arith.constant 1.99640512E+9 : f32
      %269 = index.castu %true_5 : i1 to index
      %270 = index.maxs %c7, %28
      %271 = vector.transpose %29, [0] : vector<1xf32> to vector<1xf32>
      %272 = bufferization.clone %alloc_19 : memref<11x11xi1> to memref<11x11xi1>
      %273 = vector.flat_transpose %36 {columns = 4 : i32, rows = 4 : i32} : vector<16xi16> -> vector<16xi16>
      %274 = vector.shuffle %157, %157 [0, 1, 2, 3, 8, 12, 13, 14, 20] : vector<11x11xi1>, vector<11x11xi1>
      %expanded_52 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<16x7xi16> into tensor<16x7x1xi16>
      scf.yield %109 : memref<7x7x11xi32>
    }
    %180 = vector.outerproduct %153, %153, %157 {kind = #vector.kind<mul>} : vector<11xi1>, vector<11xi1>
    %181 = vector.broadcast %cst_0 : f32 to vector<11x11xf32>
    %182 = vector.fma %181, %181, %181 : vector<11x11xf32>
    %183 = vector.broadcast %cst_2 : f32 to vector<7x7x11xf32>
    %184 = vector.fma %183, %183, %183 : vector<7x7x11xf32>
    affine.for %arg3 = 0 to 72 {
    }
    %185 = index.castu %true_39 : i1 to index
    %186 = math.sqrt %1 : tensor<16x7xf16>
    %187 = vector.splat %64 : vector<9x11xindex>
    %188 = arith.xori %false, %true_4 : i1
    memref.copy %109, %111 : memref<7x7x11xi32> to memref<7x7x11xi32>
    %189 = arith.maxsi %true_5, %false : i1
    %190 = math.cttz %106 : tensor<99xi32>
    %191 = tensor.empty() : tensor<11x11xi64>
    %192 = linalg.matmul ins(%112, %73 : tensor<11x11xi64>, tensor<11x11xi64>) outs(%191 : tensor<11x11xi64>) -> tensor<11x11xi64>
    %193 = vector.matrix_multiply %69, %135 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 1 : i32} : (vector<9xf32>, vector<1xf32>) -> vector<9xf32>
    %194 = math.exp2 %from_elements_32 : tensor<9x11xf16>
    %from_elements_42 = tensor.from_elements %cst_2, %cst_1, %cst_1, %cst_6, %cst_2, %cst_0, %cst_1, %cst_6, %cst_0, %cst_6, %cst_1, %cst_2, %cst_2, %cst_6, %cst_6, %cst_1, %cst_1, %cst_6, %cst_6, %cst_1, %cst_0, %cst_2, %cst_2, %cst_6, %cst_0, %cst_6, %cst_1, %cst_1, %cst_2, %cst_0, %cst_1, %cst_6, %cst_1, %cst_1, %cst_0, %cst_2, %cst_6, %cst_2, %cst_1, %cst_0, %cst_0, %cst_6, %cst_1, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_6, %cst_1, %cst_0, %cst_0, %cst_6, %cst_0, %cst_6, %cst_2, %cst_0, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_6, %cst_0, %cst_6, %cst_0, %cst_1, %cst_2, %cst_0, %cst_2, %cst_0, %cst_1, %cst_1, %cst_6, %cst_2, %cst_1, %cst_1, %cst_0, %cst_6, %cst_0, %cst_1, %cst_1, %cst_2, %cst_6, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_6, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_6, %cst_1, %cst_1, %cst_0, %cst_1, %cst_0, %cst_6, %cst_6, %cst_1, %cst_2, %cst_0 : tensor<16x7xf32>
    %195 = arith.addi %c-21014_i16, %c-29101_i16 : i16
    %196 = vector.extract_strided_slice %75 {offsets = [0], sizes = [6], strides = [1]} : vector<9x11xf32> to vector<6x11xf32>
    %197 = index.castu %true_39 : i1 to index
    %198 = vector.shuffle %193, %79 [0, 4, 5, 6, 7, 9] : vector<9xf32>, vector<1xf32>
    %c1065378098_i32 = arith.constant 1065378098 : i32
    %199 = arith.addi %c921360577_i64, %c921360577_i64 : i64
    %200 = index.floordivs %c4, %c0
    %201 = vector.matrix_multiply %79, %29 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
    %202 = math.copysign %cst_28, %cst_28 : f16
    %203 = math.atan2 %cst_6, %cst_1 : f32
    %204 = vector.broadcast %extracted : f16 to vector<11xf16>
    %205 = vector.maskedload %alloc_20[%c8, %c10], %88, %204 : memref<9x11xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
    %206 = arith.shrui %c1196836168_i64, %c1196836168_i64 : i64
    %207 = math.atan2 %from_elements_32, %from_elements_32 : tensor<9x11xf16>
    %208 = tensor.empty() : tensor<11x11xf32>
    %209 = linalg.matmul ins(%4, %4 : tensor<11x11xf32>, tensor<11x11xf32>) outs(%208 : tensor<11x11xf32>) -> tensor<11x11xf32>
    %210 = arith.subi %c921360577_i64, %c921360577_i64 : i64
    %211 = math.copysign %expanded, %expanded : tensor<9x11x1xf32>
    %212 = math.expm1 %0 : tensor<9x11xf32>
    %false_43 = index.bool.constant false
    %inserted_44 = tensor.insert %cst_0 into %0[%c1, %c6] : tensor<9x11xf32>
    %213 = vector.splat %114 : vector<7x7x11xindex>
    %214 = math.ipowi %12, %17 : tensor<16x7xi16>
    %215 = vector.extract_strided_slice %69 {offsets = [3], sizes = [3], strides = [1]} : vector<9xf32> to vector<3xf32>
    %216 = math.exp2 %6 : tensor<16x7xf32>
    %217 = vector.bitcast %88 : vector<11xi1> to vector<11xi1>
    %218 = tensor.empty(%64) : tensor<9x?xf32>
    %219 = index.castu %true : i1 to index
    %220 = index.divs %c1, %114
    %inserted_45 = tensor.insert %c797832060_i32 into %8[%c14, %c1] : tensor<16x7xi32>
    vector.print %79 : vector<1xf32>
    %221 = memref.alloca_scope  -> (f16) {
      %261 = index.casts %114 : index to i32
      %262 = arith.maxf %cst, %cst_28 : f16
      %263 = math.round %cst_36 : f16
      %264 = math.cttz %3 : tensor<7x7x11xi16>
      %265 = bufferization.to_memref %15 : memref<9x11xi64>
      %266 = arith.mulf %cst_3, %cst_28 : f16
      %267 = vector.bitcast %164 : vector<9x11xf32> to vector<9x11xf32>
      %268 = memref.realloc %alloc_22 : memref<11xi64> to memref<9xi64>
      %269 = math.ipowi %splat_40, %112 : tensor<11x11xi64>
      %270 = arith.cmpi sle, %c-29438_i16, %c-29101_i16 : i16
      %271 = arith.maxui %true_41, %true_4 : i1
      %272 = tensor.empty() : tensor<11x11xi1>
      %273 = linalg.matmul ins(%from_elements_35, %from_elements_35 : tensor<11x11xi1>, tensor<11x11xi1>) outs(%272 : tensor<11x11xi1>) -> tensor<11x11xi1>
      %true_50 = arith.constant true
      %274 = vector.broadcast %cst_6 : f32 to vector<9x11xf32>
      %275 = vector.fma %274, %267, %163 : vector<9x11xf32>
      %276 = vector.broadcast %c-29101_i16 : i16 to vector<16x16xi16>
      %277 = vector.outerproduct %36, %63, %276 {kind = #vector.kind<minui>} : vector<16xi16>, vector<16xi16>
      %from_elements_51 = tensor.from_elements %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29101_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-29101_i16, %c-21014_i16, %c-29101_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-29101_i16, %c-21014_i16, %c-29438_i16, %c-29438_i16, %c-29101_i16, %c-29438_i16, %c-21014_i16, %c-29438_i16 : tensor<11x11xi16>
      %278 = math.ipowi %transposed, %transposed : tensor<7x16xi1>
      %279 = index.castu %c1196836168_i64 : i64 to index
      %280 = arith.subi %c797832060_i32, %c797832060_i32 : i32
      %281 = arith.subi %true_4, %true_39 : i1
      memref.store %cst_6, %alloc_7[%c0, %c2] : memref<11x11xf32>
      %282 = index.divs %141, %c8
      memref.assume_alignment %109, 1 : memref<7x7x11xi32>
      %283 = math.round %cst_28 : f16
      %cst_52 = arith.constant 1.000000e+00 : f32
      %284 = vector.transfer_read %expanded[%c4, %c14, %c7], %cst_52 : tensor<9x11x1xf32>, vector<f32>
      %285 = arith.remf %extracted, %cst_36 : f16
      %splat_53 = tensor.splat %cst_3 : tensor<9x11xf16>
      %286 = math.fma %splat, %0, %0 : tensor<9x11xf32>
      scf.execute_region {
        %290 = arith.cmpi ugt, %c-21014_i16, %c-21014_i16 : i16
        %291 = math.exp2 %cst : f16
        %292 = math.atan2 %from_elements_26, %from_elements_26 : tensor<9x11xf16>
        %293 = math.exp2 %cst_52 : f32
        vector.print %49 : vector<9x11xi1>
        %294 = math.cos %collapsed : tensor<99xf16>
        %295 = arith.remf %cst_52, %cst_2 : f32
        %296 = vector.matrix_multiply %29, %29 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        affine.store %true_5, %alloc_19[%c9, %c10] : memref<11x11xi1>
        %297 = math.fpowi %0, %10 : tensor<9x11xf32>, tensor<9x11xi32>
        %false_54 = index.bool.constant false
        %298 = arith.minui %c1196836168_i64, %c921360577_i64 : i64
        %299 = vector.extract_strided_slice %163 {offsets = [7], sizes = [2], strides = [1]} : vector<9x11xf32> to vector<2x11xf32>
        affine.store %c921360577_i64, %alloc_22[%c0] : memref<11xi64>
        %300 = arith.minsi %false, %false_54 : i1
        %301 = bufferization.to_tensor %alloc_16 : memref<11x11xi64>
        scf.yield
      }
      %287 = index.divu %c4, %102
      %288 = vector.broadcast %true_30 : i1 to vector<9xi1>
      vector.transfer_write %288, %alloc_19[%64, %52] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi1>, memref<11x11xi1>
      %289 = vector.splat %true : vector<11x11xi1>
      memref.alloca_scope.return %cst_3 : f16
    }
    %222 = vector.broadcast %cst_6 : f32 to vector<11x11xf32>
    %223 = vector.fma %222, %222, %181 : vector<11x11xf32>
    memref.assume_alignment %alloc_21, 16 : memref<9x11xi1>
    %224 = vector.insert %cst_1, %193 [6] : f32 into vector<9xf32>
    %225 = vector.shuffle %182, %196 [0, 2, 3, 4, 6, 10, 11, 12, 13] : vector<11x11xf32>, vector<6x11xf32>
    %226 = tensor.empty() : tensor<9x11xi16>
    %227 = vector.broadcast %c-29101_i16 : i16 to vector<7x7x11xi16>
    %228 = vector.broadcast %true_30 : i1 to vector<7x7x11xi1>
    %229 = vector.broadcast %c797832060_i32 : i32 to vector<7x7x11xi32>
    %230 = vector.gather %226[%38, %c10] [%229], %228, %227 : tensor<9x11xi16>, vector<7x7x11xi32>, vector<7x7x11xi1>, vector<7x7x11xi16> into vector<7x7x11xi16>
    %231 = bufferization.to_memref %9 : memref<7x7x11xi64>
    %expanded_46 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<11x11xi16> into tensor<11x11x1xi16>
    %232 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %181, %182, %182 : vector<11x11xf32>, vector<11x11xf32> into vector<11x11xf32>
    %233 = bufferization.to_tensor %alloc_15 : memref<9x11xf16>
    %234 = arith.ceildivsi %false_43, %true_39 : i1
    %235 = memref.realloc %alloc_22 : memref<11xi64> to memref<16xi64>
    %236 = math.sqrt %155 : tensor<7x7x11xf16>
    %237 = math.absf %4 : tensor<11x11xf32>
    %238 = arith.addi %c1196836168_i64, %c921360577_i64 : i64
    %239 = index.castu %58 : index to i32
    bufferization.dealloc_tensor %16 : tensor<16x7xi16>
    %240 = vector.reduction <add>, %29 : vector<1xf32> into f32
    %241 = math.expm1 %extracted : f16
    %242 = tensor.empty() : tensor<7x7x11xi32>
    %243 = tensor.empty() : tensor<9x11xi32>
    %244 = vector.bitcast %88 : vector<11xi1> to vector<11xi1>
    %245 = arith.remf %cst_3, %extracted : f16
    %246 = math.cos %collapsed : tensor<99xf16>
    %247 = math.absi %from_elements_35 : tensor<11x11xi1>
    %248 = index.sizeof
    %249 = vector.insertelement %cst_36, %205[%185 : index] : vector<11xf16>
    %250 = math.log10 %from_elements_42 : tensor<16x7xf32>
    %251 = math.log1p %splat : tensor<9x11xf32>
    %252 = index.divu %c8, %c5
    %cst_47 = arith.constant 1.168000e+04 : f16
    %253 = math.log10 %from_elements_32 : tensor<9x11xf16>
    %254 = affine.apply affine_map<(d0) -> (d0 mod 64)>(%185)
    %255 = arith.minf %cst_0, %cst_6 : f32
    %256 = arith.maxsi %c-29438_i16, %c-29101_i16 : i16
    %257 = tensor.empty() : tensor<16x7xf32>
    %258 = linalg.copy ins(%6 : tensor<16x7xf32>) outs(%257 : tensor<16x7xf32>) -> tensor<16x7xf32>
    %alloc_48 = memref.alloc() : memref<11x7x7xi16>
    linalg.transpose ins(%3 : tensor<7x7x11xi16>) outs(%alloc_48 : memref<11x7x7xi16>) permutation = [2, 0, 1] 
    %alloc_49 = memref.alloc() : memref<i64>
    linalg.reduce ins(%alloc_8 : memref<11x11xi64>) outs(%alloc_49 : memref<i64>) dimensions = [0, 1] 
      (%in: i64, %init: i64) {
        %261 = arith.cmpi sgt, %c-29101_i16, %c-21014_i16 : i16
        %cast = tensor.cast %258 : tensor<16x7xf32> to tensor<?x?xf32>
        %262 = scf.if %true_4 -> (memref<9x11xi64>) {
          %extracted_51 = tensor.extract %13[%c1, %c2, %c3] : tensor<7x7x11xi32>
          %269 = math.log2 %221 : f16
          %270 = math.ceil %1 : tensor<16x7xf16>
          %271 = tensor.empty() : tensor<9x11xf32>
          %272 = linalg.matmul ins(%splat, %208 : tensor<9x11xf32>, tensor<11x11xf32>) outs(%271 : tensor<9x11xf32>) -> tensor<9x11xf32>
          %273 = arith.cmpi uge, %true_4, %true_5 : i1
          %274 = arith.shrui %c-29101_i16, %c-21014_i16 : i16
          %c0_i32 = arith.constant 0 : i32
          %275 = vector.transfer_read %13[%c15, %c3, %87], %c0_i32 : tensor<7x7x11xi32>, vector<11x7xi32>
          %276 = math.atan2 %splat, %271 : tensor<9x11xf32>
          %alloc_52 = memref.alloc() : memref<9x11xi64>
          scf.yield %alloc_52 : memref<9x11xi64>
        } else {
          %269 = vector.broadcast %c797832060_i32 : i32 to vector<7x11x7x11xi32>
          %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<and>} %229, %229, %269 : vector<7x7x11xi32>, vector<7x7x11xi32> into vector<7x11x7x11xi32>
          %271 = arith.negf %cst_2 : f32
          %c1344_i16 = arith.constant 1344 : i16
          %true_51 = index.bool.constant true
          %272 = math.log %cst_0 : f32
          %alloc_52 = memref.alloc() : memref<99xf16>
          memref.tensor_store %collapsed_38, %alloc_52 : memref<99xf16>
          %273 = arith.minsi %true_30, %true_51 : i1
          %274 = math.sqrt %6 : tensor<16x7xf32>
          %alloc_53 = memref.alloc() : memref<9x11xi64>
          scf.yield %alloc_53 : memref<9x11xi64>
        }
        %263 = arith.maxsi %true_41, %true_4 : i1
        %from_elements_50 = tensor.from_elements %221, %cst_36, %cst_28, %cst_28, %cst_3, %cst, %cst_28, %cst_36, %extracted, %cst_36, %cst_28, %extracted, %cst_3, %cst_36, %extracted, %221, %cst_3, %extracted, %cst_28, %cst_3, %221, %cst, %cst_28, %cst, %221, %cst_36, %cst_36, %cst, %cst_28, %extracted, %cst_3, %cst_3, %cst, %cst, %cst_28, %cst_36, %cst_36, %cst_36, %cst_3, %extracted, %cst_36, %cst_3, %221, %cst_3, %221, %extracted, %221, %cst_28, %extracted, %cst_28, %cst_3, %cst, %cst_36, %221, %cst, %cst_28, %cst, %cst_36, %cst_28, %cst_3, %cst_36, %cst_36, %cst_36, %cst_28, %cst_3, %cst_3, %extracted, %cst_28, %cst, %cst_3, %extracted, %cst_36, %cst_3, %221, %cst_28, %extracted, %cst, %cst_36, %cst_36, %cst_28, %cst, %221, %extracted, %extracted, %cst_3, %cst_28, %cst_28, %cst_3, %extracted, %221, %221, %221, %cst_28, %cst_3, %cst_3, %cst_28, %221, %cst_3, %221, %cst_36, %extracted, %extracted, %extracted, %cst_36, %cst_36, %extracted, %cst_36, %cst_36, %cst_3, %extracted, %cst_3, %cst_28 : tensor<16x7xf16>
        %264 = vector.broadcast %cst_28 : f16 to vector<7xf16>
        %265 = vector.broadcast %true_5 : i1 to vector<7xi1>
        %266 = vector.maskedload %alloc_15[%c5, %c3], %265, %264 : memref<9x11xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %267 = math.atan %233 : tensor<9x11xf16>
        %268 = index.casts %true_30 : i1 to index
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    %259 = scf.parallel (%arg3, %arg4) = (%254, %114) to (%248, %c15) step (%c1, %c5) init (%15) -> tensor<9x11xi64> {
      %261 = math.fma %155, %155, %155 : tensor<7x7x11xf16>
      affine.store %true, %alloc_21[%c11, %c3] : memref<9x11xi1>
      %262 = math.log10 %4 : tensor<11x11xf32>
      %263 = arith.maxf %cst_1, %cst_2 : f32
      %264 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %53, %53, %cst_0 : vector<9xf32>, vector<9xf32> into f32
      %265 = arith.negf %cst_28 : f16
      %266 = arith.negf %extracted : f16
      %267 = index.castu %c921360577_i64 : i64 to index
      %268 = tensor.empty(%102) : tensor<?x11xi64>
      memref.store %c-29101_i16, %alloc_48[%c5, %c2, %c4] : memref<11x7x7xi16>
      %269 = math.absi %106 : tensor<99xi32>
      %270 = memref.atomic_rmw addf %cst_0, %alloc_10[%c2, %c5, %c9] : (f32, memref<7x7x11xf32>) -> f32
      %generated_50 = tensor.generate %200 {
      ^bb0(%arg5: index, %arg6: index):
        %272 = math.log10 %from_elements_32 : tensor<9x11xf16>
        %273 = vector.broadcast %cst_6 : f32 to vector<16x7xf32>
        %274 = vector.fma %273, %273, %273 : vector<16x7xf32>
        %275 = vector.extract_strided_slice %36 {offsets = [8], sizes = [7], strides = [1]} : vector<16xi16> to vector<7xi16>
        %276 = math.round %cst : f16
        tensor.yield %c-29438_i16 : i16
      } : tensor<?x11xi16>
      affine.for %arg5 = 0 to 44 {
      }
      memref.alloca_scope  {
        %272 = arith.xori %true_39, %true_5 : i1
        %273 = vector.broadcast %cst_1 : f32 to vector<16x7xf32>
        %274 = vector.fma %273, %273, %273 : vector<16x7xf32>
        %275 = bufferization.to_tensor %alloc_9 : memref<9x11xi16>
        %276 = math.fpowi %cst_2, %c797832060_i32 : f32, i32
        %277 = vector.splat %c1 : vector<16x7xindex>
        %278 = arith.andi %false_43, %true_4 : i1
        %279 = arith.addi %c797832060_i32, %c797832060_i32 : i32
        %280 = bufferization.to_tensor %alloc : memref<11x11xi64>
        %281 = index.divu %38, %c10
        %282 = math.cttz %true_30 : i1
        %283 = vector.matrix_multiply %79, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 11 : i32} : (vector<1xf32>, vector<11xf32>) -> vector<11xf32>
        %284 = index.ceildivu %c3, %35
        %285 = vector.shuffle %204, %204 [0, 1, 3, 8, 9, 10, 11, 12, 13, 15, 16, 18, 19] : vector<11xf16>, vector<11xf16>
        %286 = affine.min affine_map<(d0, d1, d2, d3) -> (0, d2)>(%267, %c10, %134, %102)
        %287 = arith.xori %true_30, %true_30 : i1
        %288 = vector.broadcast %cst_2 : f32 to vector<9x11xf32>
        %289 = vector.fma %288, %164, %75 : vector<9x11xf32>
        %alloc_51 = memref.alloc() : memref<16x7xi64>
        %290 = math.sqrt %collapsed_38 : tensor<99xf16>
        %291 = vector.broadcast %cst_3 : f16 to vector<9xf16>
        %292 = vector.transfer_write %291, %1[%58, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xf16>, tensor<16x7xf16>
        %293 = vector.reduction <add>, %204 : vector<11xf16> into f16
        %294 = index.floordivs %185, %c4
        %extracted_52 = tensor.extract %5[%c1, %c3, %c7] : tensor<7x7x11xi16>
        %295 = tensor.empty() : tensor<7x16xi16>
        %296 = tensor.empty() : tensor<16x16xi16>
        %297 = linalg.matmul ins(%12, %295 : tensor<16x7xi16>, tensor<7x16xi16>) outs(%296 : tensor<16x16xi16>) -> tensor<16x16xi16>
        %298 = vector.insertelement %c-29101_i16, %36[%281 : index] : vector<16xi16>
        %299 = memref.realloc %alloc_22 : memref<11xi64> to memref<11xi64>
        %from_elements_53 = tensor.from_elements %cst_28, %cst, %221, %221, %cst_36, %cst, %cst_28, %extracted, %cst_28, %cst_3, %cst_36, %cst_36, %cst_3, %cst_3, %cst_36, %cst_36, %cst_3, %extracted, %cst_36, %cst_36, %cst_3, %cst_3, %221, %cst, %cst_36, %extracted, %cst_28, %extracted, %cst_36, %cst_36, %cst_3, %cst_28, %extracted, %cst_3, %221, %cst_28, %cst_3, %221, %cst_36, %221, %cst_36, %cst_28, %extracted, %extracted, %cst_28, %extracted, %cst_36, %cst_28, %extracted, %cst, %cst, %cst_36, %cst_36, %cst_36, %extracted, %221, %cst_3, %extracted, %cst_36, %extracted, %cst, %cst_36, %cst_3, %extracted, %cst, %cst, %cst_36, %cst_3, %extracted, %221, %cst_28, %cst_28, %221, %221, %cst_36, %cst_28, %cst_36, %cst_3, %221, %cst, %221, %cst, %cst_36, %cst_36, %221, %221, %cst_3, %cst_36, %extracted, %cst_28, %cst_3, %cst, %cst_36, %extracted, %221, %extracted, %cst_36, %extracted, %extracted : tensor<9x11xf16>
        %300 = math.cos %cst_36 : f16
        %extracted_54 = tensor.extract %5[%c6, %c1, %c8] : tensor<7x7x11xi16>
        %301 = arith.maxsi %false, %true_39 : i1
        %302 = bufferization.to_tensor %alloc_11 : memref<9x11xf16>
        %303 = index.ceildivs %197, %c13
        %304 = memref.load %alloc_10[%c5, %c3, %c9] : memref<7x7x11xf32>
      }
      %rank = tensor.rank %12 : tensor<16x7xi16>
      %271 = tensor.empty() : tensor<9x11xi64>
      scf.reduce(%271)  : tensor<9x11xi64> {
      ^bb0(%arg5: tensor<9x11xi64>, %arg6: tensor<9x11xi64>):
        %272 = index.sub %28, %35
        %273 = math.fma %258, %258, %from_elements_42 : tensor<16x7xf32>
        %274 = math.cos %4 : tensor<11x11xf32>
        %275 = vector.broadcast %cst_1 : f32 to vector<7x7x11xf32>
        %276 = vector.fma %275, %275, %183 : vector<7x7x11xf32>
        %277 = arith.remf %cst_2, %cst_0 : f32
        %278 = vector.flat_transpose %88 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
        %279 = vector.reduction <mul>, %215 : vector<3xf32> into f32
        %280 = math.log10 %257 : tensor<16x7xf32>
        %281 = tensor.empty() : tensor<9x11xi64>
        scf.reduce.return %281 : tensor<9x11xi64>
      }
      scf.yield
    }
    %260 = affine.vector_load %109[%197, %254, %c13] : memref<7x7x11xi32>, vector<16xi32>
    affine.vector_store %79, %alloc_12[%102, %64, %120] : memref<7x7x11xf32>, vector<1xf32>
    vector.print %20 : vector<11xf32>
    vector.print %27 : vector<7x7x11xf16>
    vector.print %29 : vector<1xf32>
    vector.print %32 : vector<16x7xi1>
    vector.print %36 : vector<16xi16>
    vector.print %49 : vector<9x11xi1>
    vector.print %53 : vector<9xf32>
    vector.print %63 : vector<16xi16>
    vector.print %69 : vector<9xf32>
    vector.print %75 : vector<9x11xf32>
    vector.print %79 : vector<1xf32>
    vector.print %88 : vector<11xi1>
    vector.print %122 : vector<i64>
    vector.print %135 : vector<1xf32>
    vector.print %153 : vector<11xi1>
    vector.print %157 : vector<11x11xi1>
    vector.print %163 : vector<9x11xf32>
    vector.print %164 : vector<9x11xf32>
    vector.print %181 : vector<11x11xf32>
    vector.print %182 : vector<11x11xf32>
    vector.print %183 : vector<7x7x11xf32>
    vector.print %184 : vector<7x7x11xf32>
    vector.print %193 : vector<9xf32>
    vector.print %196 : vector<6x11xf32>
    vector.print %201 : vector<1xf32>
    vector.print %204 : vector<11xf16>
    vector.print %205 : vector<11xf16>
    vector.print %215 : vector<3xf32>
    vector.print %217 : vector<11xi1>
    vector.print %222 : vector<11x11xf32>
    vector.print %223 : vector<11x11xf32>
    vector.print %227 : vector<7x7x11xi16>
    vector.print %228 : vector<7x7x11xi1>
    vector.print %229 : vector<7x7x11xi32>
    vector.print %230 : vector<7x7x11xi16>
    vector.print %244 : vector<11xi1>
    vector.print %260 : vector<16xi32>
    vector.print %c797832060_i32 : i32
    vector.print %cst : f16
    vector.print %c-29101_i16 : i16
    vector.print %cst_0 : f32
    vector.print %cst_1 : f32
    vector.print %cst_2 : f32
    vector.print %c1196836168_i64 : i64
    vector.print %true : i1
    vector.print %false : i1
    vector.print %cst_3 : f16
    vector.print %true_4 : i1
    vector.print %true_5 : i1
    vector.print %cst_6 : f32
    vector.print %c-21014_i16 : i16
    vector.print %c921360577_i64 : i64
    vector.print %c-29438_i16 : i16
    vector.print %extracted : f16
    vector.print %cst_28 : f16
    vector.print %true_30 : i1
    vector.print %cst_36 : f16
    vector.print %true_39 : i1
    vector.print %true_41 : i1
    vector.print %false_43 : i1
    vector.print %221 : f16
    return %229 : vector<7x7x11xi32>
  }
}
