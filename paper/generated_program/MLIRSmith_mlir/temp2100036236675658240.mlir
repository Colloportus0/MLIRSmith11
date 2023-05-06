module {
  func.func @func1(%arg0: vector<10x12xi64>) {
    %c4835_i16 = arith.constant 4835 : i16
    %cst = arith.constant 6.131200e+04 : f16
    %cst_0 = arith.constant 3.987200e+04 : f16
    %true = arith.constant true
    %c-116_i16 = arith.constant -116 : i16
    %c-8334_i16 = arith.constant -8334 : i16
    %false = arith.constant false
    %c1737417764_i32 = arith.constant 1737417764 : i32
    %c18156_i16 = arith.constant 18156 : i16
    %c1039273875_i64 = arith.constant 1039273875 : i64
    %c438772603_i32 = arith.constant 438772603 : i32
    %false_1 = arith.constant false
    %c1116965833_i32 = arith.constant 1116965833 : i32
    %c189462912_i64 = arith.constant 189462912 : i64
    %cst_2 = arith.constant 0x4D09F18C : f32
    %c760248696_i64 = arith.constant 760248696 : i64
    %0 = tensor.empty() : tensor<10x10xi64>
    %1 = tensor.empty() : tensor<10x12xi1>
    %2 = tensor.empty() : tensor<5x12xi64>
    %3 = tensor.empty() : tensor<5xf32>
    %4 = tensor.empty() : tensor<10x12xi64>
    %5 = tensor.empty() : tensor<5x12xi64>
    %6 = tensor.empty() : tensor<5xf32>
    %7 = tensor.empty() : tensor<5xi1>
    %8 = tensor.empty() : tensor<5xi64>
    %9 = tensor.empty() : tensor<10x10xi1>
    %10 = tensor.empty() : tensor<10x12xi64>
    %11 = tensor.empty() : tensor<5x12xi16>
    %12 = tensor.empty() : tensor<10x10xf32>
    %13 = tensor.empty() : tensor<5x12xi32>
    %14 = tensor.empty() : tensor<5xi32>
    %15 = tensor.empty() : tensor<10x10xf32>
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
    %alloc = memref.alloc() : memref<10x12xi1>
    %alloc_3 = memref.alloc() : memref<10x12xf32>
    %alloc_4 = memref.alloc() : memref<10x12xi16>
    %alloc_5 = memref.alloc() : memref<10x10xi1>
    %alloc_6 = memref.alloc() : memref<10x10xi32>
    %alloc_7 = memref.alloc() : memref<10x10xf16>
    %alloc_8 = memref.alloc() : memref<5x12xf16>
    %alloc_9 = memref.alloc() : memref<10x10xi1>
    %alloc_10 = memref.alloc() : memref<5x12xi1>
    %alloc_11 = memref.alloc() : memref<5x12xi32>
    %alloc_12 = memref.alloc() : memref<10x10xi1>
    %alloc_13 = memref.alloc() : memref<10x12xf16>
    %alloc_14 = memref.alloc() : memref<5x12xi1>
    %alloc_15 = memref.alloc() : memref<10x10xf32>
    %alloc_16 = memref.alloc() : memref<5xi64>
    %alloc_17 = memref.alloc() : memref<10x10xf16>
    %16 = tensor.empty() : tensor<10x10xi64>
    %17 = linalg.copy ins(%0 : tensor<10x10xi64>) outs(%16 : tensor<10x10xi64>) -> tensor<10x10xi64>
    %alloc_18 = memref.alloc() : memref<10x10xf16>
    linalg.transpose ins(%alloc_17 : memref<10x10xf16>) outs(%alloc_18 : memref<10x10xf16>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<5xi32>
    %reduced = linalg.reduce ins(%13 : tensor<5x12xi32>) outs(%18 : tensor<5xi32>) dimensions = [1] 
      (%in: i32, %init: i32) {
        %262 = math.round %15 : tensor<10x10xf32>
        %263 = arith.ceildivsi %c1116965833_i32, %c438772603_i32 : i32
        %collapsed_32 = tensor.collapse_shape %16 [[0, 1]] : tensor<10x10xi64> into tensor<100xi64>
        %264 = math.log10 %cst_0 : f16
        %265 = arith.minsi %c4835_i16, %c18156_i16 : i16
        %266 = index.sub %c2, %c14
        %267 = tensor.empty() : tensor<10x12xi16>
        %268 = arith.remsi %false_1, %true : i1
        %c1_i32_33 = arith.constant 1 : i32
        linalg.yield %c1_i32_33 : i32
      }
    %19 = scf.parallel (%arg1) = (%c9) to (%c11) step (%c8) init (%11) -> tensor<5x12xi16> {
      %262 = math.log10 %15 : tensor<10x10xf32>
      %cst_32 = arith.constant 1.81750272E+9 : f32
      %263 = arith.shli %c-8334_i16, %c18156_i16 : i16
      %264 = math.ctpop %4 : tensor<10x12xi64>
      %265 = vector.broadcast %cst_2 : f32 to vector<10xf32>
      vector.transfer_write %265, %alloc_15[%c8, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xf32>, memref<10x10xf32>
      %266 = vector.bitcast %265 : vector<10xf32> to vector<10xf32>
      %267 = memref.alloca_scope  -> (memref<10x10xf16>) {
        %276 = vector.bitcast %265 : vector<10xf32> to vector<10xf32>
        %c1309358535_i32 = arith.constant 1309358535 : i32
        %277 = vector.flat_transpose %266 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
        %278 = arith.ceildivsi %c189462912_i64, %c1039273875_i64 : i64
        %279 = vector.broadcast %c1039273875_i64 : i64 to vector<5xi64>
        %280 = vector.broadcast %false_1 : i1 to vector<5xi1>
        %281 = vector.maskedload %alloc_16[%c0], %280, %279 : memref<5xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %282 = vector.broadcast %cst_2 : f32 to vector<f32>
        vector.transfer_write %282, %alloc_15[%c14, %c13] : vector<f32>, memref<10x10xf32>
        %283 = vector.broadcast %c1116965833_i32 : i32 to vector<5x12xi32>
        %284 = arith.cmpi ule, %false_1, %false_1 : i1
        %285 = index.casts %c2 : index to i32
        %alloc_35 = memref.alloc() : memref<10x12xi1>
        memref.copy %alloc, %alloc_35 : memref<10x12xi1> to memref<10x12xi1>
        %286 = arith.remf %cst_2, %cst_2 : f32
        %287 = arith.cmpi slt, %c18156_i16, %c18156_i16 : i16
        %288 = math.atan %cst : f16
        %289 = arith.maxui %c189462912_i64, %c1039273875_i64 : i64
        %alloc_36 = memref.alloc() : memref<5xf32>
        memref.tensor_store %6, %alloc_36 : memref<5xf32>
        %290 = math.exp %12 : tensor<10x10xf32>
        %291 = math.tanh %3 : tensor<5xf32>
        %c1_i64 = arith.constant 1 : i64
        %292 = vector.transfer_read %5[%c3, %c1], %c1_i64 : tensor<5x12xi64>, vector<5xi64>
        %rank = tensor.rank %13 : tensor<5x12xi32>
        %rank_37 = tensor.rank %2 : tensor<5x12xi64>
        %293 = arith.maxsi %false_1, %false : i1
        %294 = math.rsqrt %12 : tensor<10x10xf32>
        %295 = vector.flat_transpose %281 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
        %296 = math.floor %cst : f16
        %rank_38 = tensor.rank %reduced : tensor<5xi32>
        %297 = vector.extract %265[2] : vector<10xf32>
        %298 = arith.maxf %cst_0, %cst : f16
        %splat = tensor.splat %false_1 : tensor<10x12xi1>
        %299 = vector.insertelement %cst_2, %276[%c6 : index] : vector<10xf32>
        %300 = math.atan2 %12, %12 : tensor<10x10xf32>
        %301 = vector.broadcast %c1737417764_i32 : i32 to vector<12xi32>
        %dest_39, %accumulated_value_40 = vector.scan <mul>, %283, %301 {inclusive = false, reduction_dim = 0 : i64} : vector<5x12xi32>, vector<12xi32>
        %302 = bufferization.to_tensor %alloc_12 : memref<10x10xi1>
        memref.alloca_scope.return %alloc_17 : memref<10x10xf16>
      }
      %expanded_33 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<5x12xi16> into tensor<5x12x1xi16>
      %alloc_34 = memref.alloc() : memref<5xf32>
      memref.tensor_store %3, %alloc_34 : memref<5xf32>
      %268 = math.ctpop %14 : tensor<5xi32>
      %269 = vector.reduction <add>, %266 : vector<10xf32> into f32
      %270 = math.atan2 %6, %3 : tensor<5xf32>
      %271 = arith.remf %cst, %cst_0 : f16
      %272 = arith.floordivsi %c-116_i16, %c18156_i16 : i16
      %273 = vector.transpose %265, [0] : vector<10xf32> to vector<10xf32>
      %274 = index.casts %false_1 : i1 to index
      %275 = tensor.empty() : tensor<5x12xi16>
      scf.reduce(%275)  : tensor<5x12xi16> {
      ^bb0(%arg2: tensor<5x12xi16>, %arg3: tensor<5x12xi16>):
        %276 = arith.negf %cst_0 : f16
        %277 = arith.maxf %cst, %cst_0 : f16
        %278 = arith.shrsi %c18156_i16, %c-8334_i16 : i16
        %279 = arith.minf %cst_0, %cst_0 : f16
        %c396335632_i64 = arith.constant 396335632 : i64
        %280 = math.log2 %15 : tensor<10x10xf32>
        %281 = math.atan2 %cst, %cst_0 : f16
        %282 = vector.insert %cst_2, %265 [9] : f32 into vector<10xf32>
        %283 = tensor.empty() : tensor<5x12xi16>
        scf.reduce.return %283 : tensor<5x12xi16>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_14[%c3, %c1] : memref<5x12xi1>, vector<5xi1>
    affine.vector_store %20, %alloc_5[%c4, %c12] : memref<10x10xi1>, vector<5xi1>
    %alloc_19 = memref.alloc() : memref<5xf32>
    %21 = tensor.empty() : tensor<f32>
    %22 = linalg.dot ins(%6, %alloc_19 : tensor<5xf32>, memref<5xf32>) outs(%21 : tensor<f32>) -> tensor<f32>
    %23 = math.ceil %22 : tensor<f32>
    %alloc_20 = memref.alloc() : memref<5xi1>
    memref.tensor_store %7, %alloc_20 : memref<5xi1>
    %24 = math.powf %cst_2, %cst_2 : f32
    memref.tensor_store %6, %alloc_19 : memref<5xf32>
    %25 = scf.index_switch %c15 -> tensor<5x12xi16> 
    case 1 {
      affine.for %arg1 = 0 to 92 {
      }
      bufferization.dealloc_tensor %0 : tensor<10x10xi64>
      %262 = math.sqrt %21 : tensor<f32>
      %263 = index.divu %c7, %c13
      %264 = math.fpowi %3, %18 : tensor<5xf32>, tensor<5xi32>
      %265 = math.expm1 %21 : tensor<f32>
      %266 = vector.maskedload %alloc_12[%c1, %c2], %20, %20 : memref<10x10xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
      %267 = arith.maxsi %true, %false_1 : i1
      %268 = index.casts %c10 : index to i32
      %269 = arith.divf %cst_0, %cst_0 : f16
      %270 = math.absf %cst_0 : f16
      %splat = tensor.splat %c189462912_i64 : tensor<5x12xi64>
      %271 = math.ctpop %c438772603_i32 : i32
      %272 = index.sub %c11, %c3
      %273 = bufferization.clone %alloc : memref<10x12xi1> to memref<10x12xi1>
      %inserted = tensor.insert %cst_2 into %12[%c2, %c5] : tensor<10x10xf32>
      scf.yield %11 : tensor<5x12xi16>
    }
    case 2 {
      scf.index_switch %c9 
      case 1 {
        %275 = math.log2 %21 : tensor<f32>
        %276 = affine.apply affine_map<(d0, d1, d2) -> (d2 floordiv 16)>(%c15, %c12, %c11)
        %277 = math.powf %6, %3 : tensor<5xf32>
        %278 = math.log2 %22 : tensor<f32>
        %279 = bufferization.to_tensor %alloc_13 : memref<10x12xf16>
        %280 = index.divu %c15, %c5
        %281 = bufferization.to_tensor %alloc_13 : memref<10x12xf16>
        %282 = vector.broadcast %c5 : index to vector<5xindex>
        %283 = vector.broadcast %c1039273875_i64 : i64 to vector<5xi64>
        vector.scatter %alloc_16[%c1] [%282], %20, %283 : memref<5xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
        %284 = vector.reduction <add>, %20 : vector<5xi1> into i1
        %285 = math.log2 %cst_2 : f32
        %286 = arith.minui %false_1, %true : i1
        %alloc_34 = memref.alloc() : memref<5x12xi16>
        memref.tensor_store %11, %alloc_34 : memref<5x12xi16>
        %287 = arith.remsi %c438772603_i32, %c1116965833_i32 : i32
        %288 = arith.divui %c438772603_i32, %c1737417764_i32 : i32
        %289 = math.exp2 %6 : tensor<5xf32>
        %290 = index.ceildivu %c13, %c5
        scf.yield
      }
      case 2 {
        %275 = arith.maxf %cst_2, %cst_2 : f32
        %276 = vector.transpose %20, [0] : vector<5xi1> to vector<5xi1>
        %277 = arith.remui %c189462912_i64, %c1039273875_i64 : i64
        %278 = math.expm1 %cst_2 : f32
        %c1_i64 = arith.constant 1 : i64
        %279 = vector.transfer_read %8[%c2], %c1_i64 : tensor<5xi64>, vector<i64>
        %splat = tensor.splat %c-8334_i16 : tensor<10x10xi16>
        %280 = vector.transpose %20, [0] : vector<5xi1> to vector<5xi1>
        %281 = bufferization.clone %alloc_11 : memref<5x12xi32> to memref<5x12xi32>
        %282 = math.sqrt %15 : tensor<10x10xf32>
        %283 = arith.ceildivsi %true, %false_1 : i1
        %284 = tensor.empty() : tensor<5xi64>
        %285 = affine.min affine_map<(d0, d1) -> ((d1 + 129) mod 16, (d1 + 128) * 64)>(%c5, %c10)
        %collapsed_34 = tensor.collapse_shape %splat [[0, 1]] : tensor<10x10xi16> into tensor<100xi16>
        %286 = arith.cmpf olt, %cst_0, %cst_0 : f16
        %287 = arith.remf %cst_0, %cst : f16
        %288 = math.tanh %15 : tensor<10x10xf32>
        scf.yield
      }
      default {
        %275 = vector.broadcast %false_1 : i1 to vector<5x5xi1>
        %276 = vector.outerproduct %20, %20, %275 {kind = #vector.kind<add>} : vector<5xi1>, vector<5xi1>
        %collapsed_34 = tensor.collapse_shape %4 [[0, 1]] : tensor<10x12xi64> into tensor<120xi64>
        %277 = math.fma %6, %6, %3 : tensor<5xf32>
        %278 = affine.load %alloc_19[%c15] : memref<5xf32>
        %279 = tensor.empty() : tensor<5x12xi64>
        %280 = arith.shrui %c1737417764_i32, %c1116965833_i32 : i32
        %281 = arith.remf %cst_0, %cst_0 : f16
        %282 = index.divu %c14, %c0
        %283 = arith.maxui %c1116965833_i32, %c1116965833_i32 : i32
        %inserted = tensor.insert %c760248696_i64 into %8[%c1] : tensor<5xi64>
        %284 = vector.reduction <mul>, %20 : vector<5xi1> into i1
        %285 = vector.broadcast %cst_2 : f32 to vector<10x12xf32>
        %286 = vector.fma %285, %285, %285 : vector<10x12xf32>
        %287 = index.floordivs %c11, %c12
        %288 = index.casts %c1737417764_i32 : i32 to index
        %289 = index.floordivs %282, %c15
        %290 = index.floordivs %c3, %c7
      }
      %generated_32 = tensor.generate %c7 {
      ^bb0(%arg1: index, %arg2: index):
        %275 = arith.ori %c-116_i16, %c18156_i16 : i16
        %276 = arith.xori %c4835_i16, %c4835_i16 : i16
        %277 = arith.ceildivsi %c1737417764_i32, %c1737417764_i32 : i32
        %278 = index.divs %c5, %arg2
        tensor.yield %c1116965833_i32 : i32
      } : tensor<?x12xi32>
      %262 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %20, %20, %false : vector<5xi1>, vector<5xi1> into i1
      %263 = arith.negf %cst : f16
      %264 = math.fma %3, %6, %6 : tensor<5xf32>
      %265 = arith.minsi %c18156_i16, %c-116_i16 : i16
      %266 = affine.min affine_map<(d0, d1) -> (d1 floordiv 2 - 128)>(%c3, %c11)
      %267 = tensor.empty() : tensor<10x10x10xi64>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%16, %16, %17 : tensor<10x10xi64>, tensor<10x10xi64>, tensor<10x10xi64>) outs(%267 : tensor<10x10x10xi64>) {
      ^bb0(%in: i64, %in_34: i64, %in_35: i64, %out: i64):
        %275 = arith.divf %cst, %cst_0 : f16
        %276 = vector.extract_strided_slice %20 {offsets = [0], sizes = [2], strides = [1]} : vector<5xi1> to vector<2xi1>
        %277 = math.ctpop %4 : tensor<10x12xi64>
        %278 = arith.floordivsi %out, %in_35 : i64
        %279 = vector.matrix_multiply %20, %276 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 2 : i32} : (vector<5xi1>, vector<2xi1>) -> vector<10xi1>
        %280 = vector.broadcast %cst_2 : f32 to vector<10x10xf32>
        %281 = vector.fma %280, %280, %280 : vector<10x10xf32>
        %282 = bufferization.to_tensor %alloc_12 : memref<10x10xi1>
        %283 = index.divs %c1, %c13
        %284 = arith.shli %c1039273875_i64, %in_34 : i64
        %285 = vector.shuffle %20, %20 [1, 4] : vector<5xi1>, vector<5xi1>
        %286 = vector.transpose %276, [0] : vector<2xi1> to vector<2xi1>
        %287 = vector.transpose %276, [0] : vector<2xi1> to vector<2xi1>
        %288 = arith.maxf %cst, %cst : f16
        %289 = math.atan %cst : f16
        %290 = arith.xori %c1039273875_i64, %in_35 : i64
        %291 = arith.cmpf ule, %cst_2, %cst_2 : f32
        %292 = affine.load %alloc_9[%c9, %c12] : memref<10x10xi1>
        %293 = vector.matrix_multiply %279, %20 {lhs_columns = 5 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<5xi1>) -> vector<2xi1>
        %294 = arith.shrui %c4835_i16, %c-8334_i16 : i16
        %295 = math.fma %cst, %cst, %cst_0 : f16
        %cst_36 = arith.constant 1.000000e+00 : f32
        %cst_37 = arith.constant 0.000000e+00 : f32
        %296 = vector.transfer_read %12[%c15, %c12], %cst_37 : tensor<10x10xf32>, vector<f32>
        %rank = tensor.rank %282 : tensor<10x10xi1>
        %297 = math.log2 %cst_0 : f16
        %298 = vector.reduction <mul>, %293 : vector<2xi1> into i1
        %299 = math.exp %21 : tensor<f32>
        %300 = bufferization.to_tensor %alloc_5 : memref<10x10xi1>
        %301 = affine.max affine_map<(d0, d1, d2) -> (0, (d1 - 2) ceildiv 2, (d1 - 2) * 16)>(%c9, %c10, %c12)
        %302 = vector.broadcast %false_1 : i1 to vector<2x2xi1>
        %303 = vector.outerproduct %276, %293, %302 {kind = #vector.kind<and>} : vector<2xi1>, vector<2xi1>
        %304 = vector.broadcast %true : i1 to vector<10x10xi1>
        %305 = vector.outerproduct %279, %279, %304 {kind = #vector.kind<maxui>} : vector<10xi1>, vector<10xi1>
        %306 = affine.load %alloc_8[%c10, %c10] : memref<5x12xf16>
        %307 = arith.maxui %292, %false : i1
        %308 = arith.ori %true, %292 : i1
        linalg.yield %in : i64
      } -> tensor<10x10x10xi64>
      %269 = math.tanh %15 : tensor<10x10xf32>
      %270 = vector.broadcast %c1039273875_i64 : i64 to vector<5x12xi64>
      %271 = math.powf %cst_2, %cst_2 : f32
      %alloc_33 = memref.alloc() : memref<5xi32>
      memref.tensor_store %14, %alloc_33 : memref<5xi32>
      %272 = math.sqrt %12 : tensor<10x10xf32>
      memref.tensor_store %13, %alloc_11 : memref<5x12xi32>
      %273 = math.log %6 : tensor<5xf32>
      %274 = arith.cmpf false, %cst_2, %cst_2 : f32
      scf.yield %11 : tensor<5x12xi16>
    }
    case 3 {
      scf.if %false_1 {
        %273 = arith.remf %cst_2, %cst_2 : f32
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_35 = arith.constant 0 : i16
        %274 = vector.transfer_read %11[%c10, %c6], %c0_i16_35 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<5x12xi16>, vector<10xi16>
        %splat = tensor.splat %cst : tensor<10x12xf16>
        %275 = bufferization.to_memref %2 : memref<5x12xi64>
        %276 = math.ctpop %4 : tensor<10x12xi64>
        %277 = bufferization.to_memref %5 : memref<5x12xi64>
        %278 = math.fma %cst_2, %cst_2, %cst_2 : f32
        %279 = index.casts %c9 : index to i32
      }
      %alloc_32 = memref.alloc() : memref<5x12xi32>
      memref.copy %alloc_11, %alloc_32 : memref<5x12xi32> to memref<5x12xi32>
      %262 = math.atan %6 : tensor<5xf32>
      %alloca_33 = memref.alloca() : memref<10x10xi64>
      %263 = vector.shuffle %20, %20 [1, 2, 4, 5, 6, 7, 9] : vector<5xi1>, vector<5xi1>
      %264 = arith.negf %cst_0 : f16
      %265 = scf.while (%arg1 = %false_1) : (i1) -> i1 {
        %273 = arith.remf %cst_0, %cst : f16
        %false_35 = arith.constant false
        %274 = vector.transfer_read %9[%c10, %c3], %false_35 : tensor<10x10xi1>, vector<5xi1>
        %275 = math.ceil %cst_2 : f32
        %276 = math.log1p %12 : tensor<10x10xf32>
        %277 = bufferization.to_tensor %alloc_13 : memref<10x12xf16>
        %278 = math.powf %21, %22 : tensor<f32>
        %279 = math.round %277 : tensor<10x12xf16>
        %280 = arith.maxsi %c-8334_i16, %c4835_i16 : i16
        scf.condition(%true) %arg1 : i1
      } do {
      ^bb0(%arg1: i1):
        %273 = arith.addi %false, %false : i1
        %274 = arith.minsi %false_1, %arg1 : i1
        %275 = math.rsqrt %12 : tensor<10x10xf32>
        %276 = tensor.empty() : tensor<10x10xi1>
        %277 = linalg.matmul ins(%9, %9 : tensor<10x10xi1>, tensor<10x10xi1>) outs(%276 : tensor<10x10xi1>) -> tensor<10x10xi1>
        %278 = math.expm1 %cst_0 : f16
        %279 = math.copysign %6, %3 : tensor<5xf32>
        %280 = bufferization.to_memref %4 : memref<10x12xi64>
        %281 = math.cttz %9 : tensor<10x10xi1>
        %282 = index.sizeof
        %283 = math.ctpop %8 : tensor<5xi64>
        %rank = tensor.rank %5 : tensor<5x12xi64>
        %false_35 = arith.constant false
        %284 = vector.transfer_read %7[%c10], %false_35 : tensor<5xi1>, vector<i1>
        %285 = vector.reduction <minui>, %20 : vector<5xi1> into i1
        %inserted = tensor.insert %cst_2 into %12[%c8, %c3] : tensor<10x10xf32>
        %286 = arith.ori %c-8334_i16, %c-8334_i16 : i16
        %287 = affine.max affine_map<(d0, d1, d2) -> (d0 * 8, d1 mod 2)>(%c12, %c2, %c8)
        scf.yield %true : i1
      }
      scf.if %true {
        %273 = math.ctpop %2 : tensor<5x12xi64>
        %274 = vector.transpose %20, [0] : vector<5xi1> to vector<5xi1>
        %275 = math.ipowi %13, %13 : tensor<5x12xi32>
        %276 = math.log %12 : tensor<10x10xf32>
        %277 = math.ipowi %c18156_i16, %c-116_i16 : i16
        %278 = arith.subi %c18156_i16, %c4835_i16 : i16
        %279 = vector.extract_strided_slice %20 {offsets = [3], sizes = [2], strides = [1]} : vector<5xi1> to vector<2xi1>
        %280 = arith.ori %true, %true : i1
      }
      %266 = vector.broadcast %cst_2 : f32 to vector<10xf32>
      %267 = vector.broadcast %true : i1 to vector<10xi1>
      %268 = vector.maskedload %alloc_15[%c6, %c3], %267, %266 : memref<10x10xf32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
      %collapsed_34 = tensor.collapse_shape %9 [[0, 1]] : tensor<10x10xi1> into tensor<100xi1>
      %269 = arith.divf %cst_2, %cst_2 : f32
      %270 = math.cttz %c438772603_i32 : i32
      scf.if %true {
        %273 = arith.divf %cst_0, %cst : f16
        %274 = math.sqrt %6 : tensor<5xf32>
        %275 = arith.cmpi sle, %c1116965833_i32, %c1737417764_i32 : i32
        %276 = math.round %15 : tensor<10x10xf32>
        %277 = vector.broadcast %c1737417764_i32 : i32 to vector<i32>
        %278 = vector.transfer_write %277, %18[%c7] : vector<i32>, tensor<5xi32>
        %279 = math.log2 %6 : tensor<5xf32>
        %280 = affine.max affine_map<(d0) -> (d0 mod 8 + d0 floordiv 2, (d0 * 2 + 128) ceildiv 2)>(%c4)
        %281 = tensor.empty() : tensor<10x10xf32>
        %282 = linalg.matmul ins(%15, %12 : tensor<10x10xf32>, tensor<10x10xf32>) outs(%281 : tensor<10x10xf32>) -> tensor<10x10xf32>
      }
      %271 = vector.transpose %267, [0] : vector<10xi1> to vector<10xi1>
      %272 = math.absf %6 : tensor<5xf32>
      affine.for %arg1 = 0 to 17 {
      }
      scf.yield %11 : tensor<5x12xi16>
    }
    default {
      %262 = vector.create_mask %c1, %c9 : vector<5x12xi1>
      %263 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
      %264 = index.maxs %c10, %c6
      %265 = math.copysign %cst, %cst_0 : f16
      %266 = scf.while (%arg1 = %alloc_18) : (memref<10x10xf16>) -> memref<10x10xf16> {
        %278 = math.roundeven %cst_2 : f32
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %279 = vector.transfer_read %alloc_16[%c5], %c0_i64 : memref<5xi64>, vector<i64>
        %280 = bufferization.to_memref %9 : memref<10x10xi1>
        %281 = arith.negf %cst : f16
        %282 = index.floordivs %c13, %c13
        %283 = affine.max affine_map<(d0) -> (d0 - 128)>(%c6)
        %284 = math.ctpop %c1116965833_i32 : i32
        %285 = affine.max affine_map<(d0) -> (d0 mod 128, d0 mod 128 - 64, (d0 mod 128) * 32 - 4)>(%c11)
        scf.condition(%false) %alloc_18 : memref<10x10xf16>
      } do {
      ^bb0(%arg1: memref<10x10xf16>):
        %false_32 = arith.constant false
        %278 = arith.shli %false_1, %false_1 : i1
        %279 = math.round %cst_0 : f16
        %280 = affine.min affine_map<(d0, d1) -> (d0 - (d0 + 64), d1 * -31)>(%c8, %c7)
        %281 = math.round %15 : tensor<10x10xf32>
        %282 = tensor.empty() : tensor<12x5xi64>
        %283 = tensor.empty() : tensor<5x5xi64>
        %284 = linalg.matmul ins(%5, %282 : tensor<5x12xi64>, tensor<12x5xi64>) outs(%283 : tensor<5x5xi64>) -> tensor<5x5xi64>
        %285 = math.powf %6, %6 : tensor<5xf32>
        %inserted = tensor.insert %c760248696_i64 into %283[%c0, %c3] : tensor<5x5xi64>
        %cst_33 = arith.constant 4.168000e+03 : f16
        %false_34 = arith.constant false
        %false_35 = arith.constant false
        %286 = vector.transfer_read %7[%c10], %false_35 : tensor<5xi1>, vector<i1>
        %287 = math.fma %22, %22, %22 : tensor<f32>
        %288 = arith.remf %cst, %cst : f16
        %289 = arith.cmpf ord, %cst_2, %cst_2 : f32
        %290 = arith.cmpf uno, %cst, %cst_0 : f16
        %291 = arith.maxf %cst_0, %cst_0 : f16
        %false_36 = arith.constant false
        %292 = vector.transfer_read %9[%c2, %280], %false_36 : tensor<10x10xi1>, vector<i1>
        scf.yield %alloc_18 : memref<10x10xf16>
      }
      %267 = index.sizeof
      %268 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
      %269 = arith.maxf %cst, %cst : f16
      %270 = scf.index_switch %c3 -> i16 
      case 1 {
        %278 = index.castu %c12 : index to i32
        %279 = math.log2 %6 : tensor<5xf32>
        %280 = affine.min affine_map<(d0, d1, d2) -> (d1 mod 2, -(d1 - 2) - 64)>(%c8, %c12, %c11)
        %281 = math.log1p %15 : tensor<10x10xf32>
        %282 = math.absf %cst_2 : f32
        %283 = math.tanh %6 : tensor<5xf32>
        %284 = index.maxs %280, %c12
        memref.tensor_store %12, %alloc_15 : memref<10x10xf32>
        %285 = vector.splat %c18156_i16 : vector<5xi16>
        %286 = affine.load %alloc_5[%c3, %c4] : memref<10x10xi1>
        %287 = math.round %cst : f16
        %288 = arith.minui %c760248696_i64, %c760248696_i64 : i64
        %289 = math.powf %21, %21 : tensor<f32>
        %290 = index.ceildivu %c3, %267
        %291 = math.round %3 : tensor<5xf32>
        %292 = vector.bitcast %268 : vector<5xi1> to vector<5xi1>
        scf.yield %c4835_i16 : i16
      }
      case 2 {
        %278 = affine.max affine_map<(d0, d1, d2) -> (d0, d0, d0, d0)>(%c1, %c10, %c2)
        %279 = math.fma %22, %22, %22 : tensor<f32>
        %280 = math.log2 %cst : f16
        %281 = math.cos %3 : tensor<5xf32>
        %282 = math.exp2 %12 : tensor<10x10xf32>
        %283 = arith.minui %c189462912_i64, %c760248696_i64 : i64
        %284 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        %285 = math.exp2 %21 : tensor<f32>
        %286 = index.mul %c11, %c11
        %287 = index.sizeof
        %288 = math.exp %3 : tensor<5xf32>
        %289 = math.rsqrt %6 : tensor<5xf32>
        %290 = math.round %3 : tensor<5xf32>
        %291 = arith.subi %c1737417764_i32, %c1116965833_i32 : i32
        %292 = arith.addi %c760248696_i64, %c1039273875_i64 : i64
        %293 = math.log2 %6 : tensor<5xf32>
        scf.yield %c-116_i16 : i16
      }
      default {
        %278 = math.copysign %12, %12 : tensor<10x10xf32>
        %279 = vector.transpose %262, [0, 1] : vector<5x12xi1> to vector<5x12xi1>
        %280 = arith.floordivsi %c-116_i16, %c-8334_i16 : i16
        %281 = vector.reduction <mul>, %268 : vector<5xi1> into i1
        %282 = index.divu %c13, %c3
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_32 = arith.constant 0 : i64
        %283 = vector.transfer_read %8[%c7], %c0_i64_32 : tensor<5xi64>, vector<i64>
        %284 = arith.negf %cst_0 : f16
        %285 = arith.divf %cst, %cst_0 : f16
        %286 = vector.matrix_multiply %20, %263 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
        %287 = index.divu %c8, %c1
        %288 = math.atan %15 : tensor<10x10xf32>
        %289 = vector.insertelement %false, %263[%c8 : index] : vector<5xi1>
        %290 = vector.transpose %20, [0] : vector<5xi1> to vector<5xi1>
        %291 = vector.broadcast %true : i1 to vector<5x5xi1>
        %292 = vector.outerproduct %263, %268, %291 {kind = #vector.kind<xor>} : vector<5xi1>, vector<5xi1>
        %293 = index.divu %c4, %c0
        %extracted_33 = tensor.extract %10[%c5, %c6] : tensor<10x12xi64>
        scf.yield %c-116_i16 : i16
      }
      %271 = vector.shuffle %263, %20 [0, 1, 4, 7, 8] : vector<5xi1>, vector<5xi1>
      %272 = arith.ori %c4835_i16, %c-116_i16 : i16
      %273 = arith.minf %cst, %cst : f16
      %274 = math.fma %cst_2, %cst_2, %cst_2 : f32
      %275 = arith.remf %cst_2, %cst_2 : f32
      %276 = arith.addi %c-8334_i16, %c18156_i16 : i16
      %277 = arith.minui %c4835_i16, %c18156_i16 : i16
      scf.yield %11 : tensor<5x12xi16>
    }
    %26 = math.roundeven %15 : tensor<10x10xf32>
    %27 = arith.addi %true, %true : i1
    %28 = math.ctpop %reduced : tensor<5xi32>
    %29 = vector.broadcast %cst_2 : f32 to vector<5xf32>
    %30 = vector.maskedload %alloc_3[%c5, %c11], %20, %29 : memref<10x12xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
    %31 = arith.addi %c760248696_i64, %c1039273875_i64 : i64
    %32 = arith.divf %cst_0, %cst_0 : f16
    %33 = index.divu %c12, %c4
    %collapsed = tensor.collapse_shape %2 [[0, 1]] : tensor<5x12xi64> into tensor<60xi64>
    %34 = arith.divf %cst_0, %cst : f16
    %cst_21 = arith.constant 1.593000e+03 : f16
    scf.if %false {
      %262 = scf.if %true -> (memref<5x12xi1>) {
        %268 = math.ctpop %5 : tensor<5x12xi64>
        %269 = memref.load %alloc_4[%c9, %c0] : memref<10x12xi16>
        %270 = math.ipowi %8, %8 : tensor<5xi64>
        %271 = index.casts %c760248696_i64 : i64 to index
        %272 = math.round %22 : tensor<f32>
        %273 = vector.shuffle %30, %29 [0, 1, 3, 5, 7, 8] : vector<5xf32>, vector<5xf32>
        %collapsed_33 = tensor.collapse_shape %11 [[0, 1]] : tensor<5x12xi16> into tensor<60xi16>
        %274 = vector.insertelement %cst_2, %30[%271 : index] : vector<5xf32>
        scf.yield %alloc_10 : memref<5x12xi1>
      } else {
        %268 = vector.broadcast %c438772603_i32 : i32 to vector<10x10xi32>
        %269 = math.absf %21 : tensor<f32>
        %270 = index.maxs %c6, %c6
        %271 = arith.addf %cst_2, %cst_2 : f32
        %272 = arith.maxui %c438772603_i32, %c1737417764_i32 : i32
        %273 = index.castu %c0 : index to i32
        %274 = math.fma %cst_0, %cst, %cst : f16
        %275 = arith.cmpi ugt, %true, %false : i1
        scf.yield %alloc_10 : memref<5x12xi1>
      }
      %263 = math.log %12 : tensor<10x10xf32>
      %alloc_32 = memref.alloc() : memref<60xi64>
      memref.tensor_store %collapsed, %alloc_32 : memref<60xi64>
      %264 = vector.reduction <maxf>, %29 : vector<5xf32> into f32
      %c7464_i16 = arith.constant 7464 : i16
      %265 = arith.negf %cst_0 : f16
      %266 = math.ceil %15 : tensor<10x10xf32>
      %267 = math.cttz %18 : tensor<5xi32>
    } else {
      %262 = index.add %c8, %c3
      %263 = arith.ori %c-116_i16, %c4835_i16 : i16
      scf.execute_region {
        %270 = math.log2 %cst_0 : f16
        %271 = arith.shli %c-8334_i16, %c-8334_i16 : i16
        %272 = vector.broadcast %cst_2 : f32 to vector<10x10xf32>
        %273 = vector.fma %272, %272, %272 : vector<10x10xf32>
        %274 = bufferization.clone %alloc_17 : memref<10x10xf16> to memref<10x10xf16>
        %275 = vector.matrix_multiply %30, %29 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
        %276 = math.expm1 %12 : tensor<10x10xf32>
        %277 = vector.matrix_multiply %20, %20 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
        %278 = index.floordivs %c12, %c13
        %279 = math.sqrt %12 : tensor<10x10xf32>
        %280 = vector.broadcast %c1039273875_i64 : i64 to vector<i64>
        %281 = vector.transfer_write %280, %2[%c15, %c10] : vector<i64>, tensor<5x12xi64>
        %282 = math.fma %6, %3, %6 : tensor<5xf32>
        %283 = index.casts %c1 : index to i32
        %284 = math.atan2 %21, %21 : tensor<f32>
        %c0_i32 = arith.constant 0 : i32
        %285 = vector.transfer_read %13[%262, %c9], %c0_i32 : tensor<5x12xi32>, vector<10xi32>
        %286 = arith.remsi %true, %false : i1
        %287 = arith.maxui %c-8334_i16, %c18156_i16 : i16
        scf.yield
      }
      %264 = vector.broadcast %cst_2 : f32 to vector<10x10xf32>
      %265 = vector.fma %264, %264, %264 : vector<10x10xf32>
      %266 = vector.flat_transpose %29 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
      %267 = arith.minf %cst_2, %cst_2 : f32
      %268 = arith.ori %c18156_i16, %c-116_i16 : i16
      %269 = arith.divf %cst_0, %cst_0 : f16
    }
    %35 = math.rsqrt %21 : tensor<f32>
    bufferization.dealloc_tensor %9 : tensor<10x10xi1>
    %36 = arith.remui %c-8334_i16, %c4835_i16 : i16
    %37 = math.log %cst_2 : f32
    %38 = bufferization.to_memref %8 : memref<5xi64>
    %39 = arith.remui %c760248696_i64, %c189462912_i64 : i64
    %40 = arith.shrsi %c189462912_i64, %c760248696_i64 : i64
    %41 = arith.remsi %c18156_i16, %c-8334_i16 : i16
    %42 = vector.broadcast %cst : f16 to vector<10xf16>
    %43 = vector.broadcast %false : i1 to vector<10xi1>
    %44 = vector.maskedload %alloc_8[%c1, %c0], %43, %42 : memref<5x12xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
    %45 = vector.matrix_multiply %29, %30 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
    %cst_22 = arith.constant 0x4E1E4D20 : f32
    %46 = index.maxs %c0, %c0
    %47 = vector.extract_strided_slice %42 {offsets = [1], sizes = [2], strides = [1]} : vector<10xf16> to vector<2xf16>
    %48 = index.floordivs %c9, %c8
    %49 = index.casts %c1737417764_i32 : i32 to index
    %50 = math.cttz %c-116_i16 : i16
    %51 = arith.maxui %c-8334_i16, %c18156_i16 : i16
    %52 = math.absf %22 : tensor<f32>
    %53 = arith.cmpi uge, %c1737417764_i32, %c438772603_i32 : i32
    %54 = arith.maxui %c1737417764_i32, %c1737417764_i32 : i32
    %55 = vector.broadcast %c760248696_i64 : i64 to vector<5xi64>
    %56 = vector.maskedload %38[%c2], %20, %55 : memref<5xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
    %57 = math.log2 %12 : tensor<10x10xf32>
    %generated = tensor.generate %c6 {
    ^bb0(%arg1: index):
      %262 = math.tanh %15 : tensor<10x10xf32>
      %263 = math.floor %15 : tensor<10x10xf32>
      %264 = math.ipowi %2, %2 : tensor<5x12xi64>
      %265 = arith.shli %false_1, %false : i1
      tensor.yield %c1737417764_i32 : i32
    } : tensor<?xi32>
    %58 = math.ipowi %4, %10 : tensor<10x12xi64>
    %59 = affine.max affine_map<(d0, d1, d2, d3) -> (384, d2 mod 16, d2 mod 16)>(%c4, %46, %c5, %c14)
    %60 = vector.insert %cst, %47 [0] : f16 into vector<2xf16>
    %61 = arith.remui %c1737417764_i32, %c1737417764_i32 : i32
    %62 = arith.negf %cst_2 : f32
    %63 = vector.transpose %20, [0] : vector<5xi1> to vector<5xi1>
    %64 = memref.load %alloc_4[%c0, %c6] : memref<10x12xi16>
    %65 = math.tanh %cst_0 : f16
    %66 = arith.cmpi uge, %false_1, %true : i1
    bufferization.dealloc_tensor %reduced : tensor<5xi32>
    %67 = bufferization.to_memref %7 : memref<5xi1>
    memref.store %cst_0, %alloc_18[%c3, %c0] : memref<10x10xf16>
    %68 = arith.divf %cst, %cst : f16
    %69 = arith.ceildivsi %c18156_i16, %c18156_i16 : i16
    %70 = math.absf %3 : tensor<5xf32>
    %71 = vector.broadcast %cst_2 : f32 to vector<5x12xf32>
    %72 = vector.fma %71, %71, %71 : vector<5x12xf32>
    %73 = arith.minsi %c-8334_i16, %c4835_i16 : i16
    %74 = affine.max affine_map<(d0) -> ((d0 + 64) * -128)>(%c0)
    %75 = vector.shuffle %43, %20 [8, 9, 11, 13, 14] : vector<10xi1>, vector<5xi1>
    %alloc_23 = memref.alloc() : memref<10x10xf32>
    memref.copy %alloc_15, %alloc_23 : memref<10x10xf32> to memref<10x10xf32>
    %76 = vector.flat_transpose %56 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
    %77 = arith.cmpi ult, %false, %false_1 : i1
    %78 = arith.shrsi %c760248696_i64, %c760248696_i64 : i64
    %79 = vector.reduction <maxsi>, %76 : vector<5xi64> into i64
    %80 = arith.cmpi ne, %c18156_i16, %c-116_i16 : i16
    %81 = vector.matrix_multiply %43, %43 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
    %82 = index.castu %c2 : index to i32
    %83 = math.exp %22 : tensor<f32>
    %84 = arith.remf %cst_2, %cst_2 : f32
    %85 = index.casts %c9 : index to i32
    %86 = vector.broadcast %false_1 : i1 to vector<10x10xi1>
    %from_elements = tensor.from_elements %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst, %cst_0 : tensor<10x12xf16>
    %87 = vector.broadcast %cst : f16 to vector<f16>
    vector.transfer_write %87, %alloc_17[%c4, %c3] : vector<f16>, memref<10x10xf16>
    %88 = math.round %cst_2 : f32
    %89 = math.fma %15, %15, %15 : tensor<10x10xf32>
    %90 = arith.shrui %false_1, %false_1 : i1
    %91 = index.ceildivs %c5, %c6
    %92 = index.mul %46, %c8
    %93 = vector.broadcast %c760248696_i64 : i64 to vector<5xi64>
    %94 = arith.maxui %false, %false_1 : i1
    %95 = bufferization.to_memref %14 : memref<5xi32>
    %96 = index.ceildivu %c9, %c9
    %97 = arith.divf %cst_0, %cst_0 : f16
    %alloca = memref.alloca() : memref<10x12xf16>
    %98 = index.floordivs %c5, %91
    %collapsed_24 = tensor.collapse_shape %11 [[0, 1]] : tensor<5x12xi16> into tensor<60xi16>
    %99 = vector.transpose %55, [0] : vector<5xi64> to vector<5xi64>
    %100 = math.atan %cst_2 : f32
    %101 = arith.shli %c4835_i16, %c-116_i16 : i16
    %102 = index.sizeof
    %103 = memref.load %alloc_11[%c4, %c11] : memref<5x12xi32>
    %104 = affine.if affine_set<(d0, d1, d2, d3) : (2 >= 0, d3 - d1 == 0, 2 == 0)>(%c10, %c15, %c11, %c3) -> f16 {
      %262 = math.ipowi %1, %1 : tensor<10x12xi1>
      %generated_32 = tensor.generate %c2 {
      ^bb0(%arg1: index, %arg2: index):
        %269 = arith.ori %c-8334_i16, %c18156_i16 : i16
        %270 = math.rsqrt %21 : tensor<f32>
        %271 = math.fma %from_elements, %from_elements, %from_elements : tensor<10x12xf16>
        %from_elements_33 = tensor.from_elements %false, %true, %true, %true, %false_1, %true, %false_1, %true, %false, %true, %false, %false_1, %true, %false_1, %false, %true, %true, %false, %true, %false_1, %false_1, %true, %true, %false_1, %true, %false, %false_1, %false, %false, %false_1, %false_1, %false, %false, %false, %false_1, %false, %false, %true, %false_1, %false, %false, %true, %false, %true, %false, %true, %true, %true, %false, %true, %false_1, %true, %true, %false, %false, %true, %false, %true, %false, %false_1 : tensor<5x12xi1>
        tensor.yield %c1039273875_i64 : i64
      } : tensor<?x12xi64>
      %263 = math.cttz %c760248696_i64 : i64
      %264 = vector.reduction <or>, %93 : vector<5xi64> into i64
      %265 = arith.shrui %c760248696_i64, %c189462912_i64 : i64
      %266 = arith.minsi %c-8334_i16, %c18156_i16 : i16
      %267 = bufferization.clone %alloc_19 : memref<5xf32> to memref<5xf32>
      %268 = index.ceildivu %c10, %c9
      affine.yield %cst : f16
    } else {
      %262 = arith.negf %cst_0 : f16
      %rank = tensor.rank %1 : tensor<10x12xi1>
      %263 = math.exp2 %cst : f16
      %264 = math.log %3 : tensor<5xf32>
      %265 = math.exp %21 : tensor<f32>
      %266 = arith.cmpf uno, %cst, %cst_0 : f16
      %267 = math.tanh %21 : tensor<f32>
      %268 = arith.remui %c4835_i16, %c-116_i16 : i16
      affine.yield %cst_0 : f16
    }
    %105 = math.exp2 %12 : tensor<10x10xf32>
    %106 = math.round %15 : tensor<10x10xf32>
    %107 = arith.cmpi ugt, %c18156_i16, %c-8334_i16 : i16
    %108 = math.tan %21 : tensor<f32>
    %109 = vector.broadcast %c1039273875_i64 : i64 to vector<10x10xi64>
    %alloca_25 = memref.alloca() : memref<5x12xi32>
    scf.if %false {
      scf.if %true {
        %rank = tensor.rank %8 : tensor<5xi64>
        %271 = vector.create_mask %c13 : vector<5xi1>
        %272 = memref.load %alloc_19[%c0] : memref<5xf32>
        %273 = index.ceildivu %c10, %c6
        %274 = arith.cmpf oeq, %cst, %cst : f16
        %275 = vector.matrix_multiply %271, %43 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<5xi1>, vector<10xi1>) -> vector<2xi1>
        %276 = bufferization.to_memref %11 : memref<5x12xi16>
        %277 = vector.broadcast %c18156_i16 : i16 to vector<10xi16>
        %278 = vector.maskedload %276[%c2, %c11], %43, %277 : memref<5x12xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
      } else {
        %271 = index.sizeof
        %272 = arith.shrui %c4835_i16, %c-116_i16 : i16
        %dest_32, %accumulated_value_33 = vector.scan <maxf>, %71, %30 {inclusive = false, reduction_dim = 1 : i64} : vector<5x12xf32>, vector<5xf32>
        %273 = vector.matrix_multiply %29, %45 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<1xf32>) -> vector<5xf32>
        %274 = vector.flat_transpose %45 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %275 = arith.cmpf ogt, %cst_2, %cst_2 : f32
        %276 = math.ctpop %0 : tensor<10x10xi64>
        %277 = vector.broadcast %c7 : index to vector<10xindex>
        %278 = vector.broadcast %c4835_i16 : i16 to vector<10xi16>
        vector.scatter %alloc_4[%c9, %c10] [%277], %43, %278 : memref<10x12xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
      }
      %262 = math.ctpop %4 : tensor<10x12xi64>
      %263 = vector.broadcast %false_1 : i1 to vector<1x1xi1>
      %264 = vector.outerproduct %81, %81, %263 {kind = #vector.kind<maxui>} : vector<1xi1>, vector<1xi1>
      %265 = vector.broadcast %false_1 : i1 to vector<5x5xi1>
      %266 = vector.outerproduct %20, %20, %265 {kind = #vector.kind<maxsi>} : vector<5xi1>, vector<5xi1>
      %267 = arith.minsi %c1737417764_i32, %c1737417764_i32 : i32
      %268 = math.ceil %6 : tensor<5xf32>
      %269 = arith.floordivsi %c-116_i16, %c18156_i16 : i16
      %270 = arith.floordivsi %c1116965833_i32, %c1737417764_i32 : i32
    }
    %110 = index.ceildivu %c0, %c6
    %111 = index.divu %110, %49
    %112 = vector.broadcast %cst_2 : f32 to vector<12xf32>
    %dest, %accumulated_value = vector.scan <add>, %71, %112 {inclusive = true, reduction_dim = 0 : i64} : vector<5x12xf32>, vector<12xf32>
    %113 = arith.subi %c-8334_i16, %c4835_i16 : i16
    %114 = arith.ceildivsi %c1039273875_i64, %c760248696_i64 : i64
    %115 = bufferization.clone %alloc_17 : memref<10x10xf16> to memref<10x10xf16>
    %116 = scf.while (%arg1 = %alloc_4) : (memref<10x12xi16>) -> memref<10x12xi16> {
      %262 = math.exp2 %6 : tensor<5xf32>
      %263 = bufferization.to_memref %10 : memref<10x12xi64>
      %alloc_32 = memref.alloc() : memref<10x10xi64>
      %264 = bufferization.to_tensor %alloc_3 : memref<10x12xf32>
      %265 = arith.ori %c1737417764_i32, %c1116965833_i32 : i32
      %266 = index.casts %48 : index to i32
      %267 = vector.matrix_multiply %81, %43 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xi1>, vector<10xi1>) -> vector<10xi1>
      %268 = math.log2 %cst_0 : f16
      scf.condition(%false_1) %arg1 : memref<10x12xi16>
    } do {
    ^bb0(%arg1: memref<10x12xi16>):
      %262 = math.log10 %15 : tensor<10x10xf32>
      %c1_i32_32 = arith.constant 1 : i32
      %263 = vector.transfer_read %13[%c13, %98], %c1_i32_32 : tensor<5x12xi32>, vector<i32>
      %264 = math.round %15 : tensor<10x10xf32>
      %265 = index.sizeof
      %266 = vector.matrix_multiply %45, %29 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xf32>, vector<5xf32>) -> vector<5xf32>
      %267 = arith.cmpi slt, %c-8334_i16, %c18156_i16 : i16
      %268 = index.casts %c1039273875_i64 : i64 to index
      memref.copy %arg1, %alloc_4 : memref<10x12xi16> to memref<10x12xi16>
      scf.if %false {
        %277 = index.casts %c8 : index to i32
        %278 = arith.negf %cst : f16
        %279 = arith.cmpf ueq, %cst_0, %cst_0 : f16
        %280 = arith.minf %cst, %cst_0 : f16
        %281 = bufferization.to_tensor %alloc_16 : memref<5xi64>
        %282 = index.maxs %c13, %111
        %283 = index.maxu %98, %102
        %284 = arith.minf %cst_0, %cst_0 : f16
      } else {
        %277 = index.sub %33, %c7
        %278 = vector.flat_transpose %45 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %279 = vector.flat_transpose %278 {columns = 1 : i32, rows = 1 : i32} : vector<1xf32> -> vector<1xf32>
        %280 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d1 * 2)>(%92, %277, %c11, %102)
        %281 = math.ctpop %5 : tensor<5x12xi64>
        %282 = math.absf %3 : tensor<5xf32>
        %rank = tensor.rank %8 : tensor<5xi64>
        %283 = vector.flat_transpose %30 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
      }
      %269 = index.ceildivu %46, %96
      %270 = index.ceildivu %c1, %c0
      %271 = tensor.empty() : tensor<10x10x10xi64>
      %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%271 : tensor<10x10x10xi64>) {
      ^bb0(%out: i64):
        %277 = math.tanh %cst : f16
        %278 = arith.cmpf false, %cst_0, %cst : f16
        %279 = arith.addi %false_1, %false_1 : i1
        %280 = math.sqrt %15 : tensor<10x10xf32>
        %281 = arith.xori %c-8334_i16, %c-8334_i16 : i16
        %282 = index.maxs %98, %c12
        %283 = math.tanh %cst : f16
        %284 = bufferization.clone %alloc_14 : memref<5x12xi1> to memref<5x12xi1>
        %285 = arith.cmpi ugt, %c760248696_i64, %c1039273875_i64 : i64
        %286 = vector.multi_reduction <mul>, %72, %72 [] : vector<5x12xf32> to vector<5x12xf32>
        %287 = arith.addi %c4835_i16, %c4835_i16 : i16
        %288 = arith.minsi %c760248696_i64, %c1039273875_i64 : i64
        %289 = vector.broadcast %c6 : index to vector<5xindex>
        %290 = vector.broadcast %c18156_i16 : i16 to vector<5xi16>
        vector.scatter %arg1[%c2, %c1] [%289], %20, %290 : memref<10x12xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
        %291 = math.cttz %c760248696_i64 : i64
        %292 = math.fma %cst, %cst, %cst : f16
        %293 = math.copysign %12, %15 : tensor<10x10xf32>
        %294 = bufferization.clone %38 : memref<5xi64> to memref<5xi64>
        %295 = bufferization.to_memref %collapsed_24 : memref<60xi16>
        %296 = arith.remf %cst, %cst : f16
        %297 = arith.ceildivsi %c4835_i16, %c4835_i16 : i16
        %298 = index.divs %c4, %282
        %alloca_33 = memref.alloca() : memref<10x10xi64>
        %299 = vector.transpose %93, [0] : vector<5xi64> to vector<5xi64>
        %300 = math.atan %3 : tensor<5xf32>
        %alloc_34 = memref.alloc() : memref<10x12xi64>
        memref.tensor_store %4, %alloc_34 : memref<10x12xi64>
        %301 = vector.multi_reduction <mul>, %47, %cst [0] : vector<2xf16> to f16
        %302 = arith.subi %out, %out : i64
        %303 = index.ceildivs %298, %c4
        %304 = vector.broadcast %c1039273875_i64 : i64 to vector<i64>
        %305 = vector.transfer_write %304, %8[%33] : vector<i64>, tensor<5xi64>
        %306 = math.atan %cst_0 : f16
        %expanded_35 = tensor.expand_shape %6 [[0, 1]] : tensor<5xf32> into tensor<5x1xf32>
        %307 = math.floor %expanded_35 : tensor<5x1xf32>
        linalg.yield %c1039273875_i64 : i64
      } -> tensor<10x10x10xi64>
      scf.execute_region {
        %277 = arith.divf %cst, %cst_0 : f16
        %alloc_33 = memref.alloc() : memref<10x10xi64>
        memref.tensor_store %17, %alloc_33 : memref<10x10xi64>
        %278 = arith.cmpf false, %cst_2, %cst_2 : f32
        %279 = arith.floordivsi %false_1, %true : i1
        %280 = index.divu %92, %c10
        %281 = math.cos %12 : tensor<10x10xf32>
        %282 = math.tanh %cst_2 : f32
        %283 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        %false_34 = arith.constant false
        %284 = affine.apply affine_map<(d0, d1) -> (((d0 + 8) mod 64) * 32)>(%91, %c3)
        %alloc_35 = memref.alloc() : memref<12x12xi16>
        %285 = tensor.empty() : tensor<5x12xi16>
        %286 = linalg.matmul ins(%11, %alloc_35 : tensor<5x12xi16>, memref<12x12xi16>) outs(%285 : tensor<5x12xi16>) -> tensor<5x12xi16>
        %287 = math.ctpop %c4835_i16 : i16
        %288 = vector.bitcast %283 : vector<5xi1> to vector<5xi1>
        %289 = vector.broadcast %cst_2 : f32 to vector<10x12xf32>
        %290 = vector.fma %289, %289, %289 : vector<10x12xf32>
        %291 = arith.cmpf ult, %cst_0, %cst_0 : f16
        %292 = arith.negf %cst_0 : f16
        scf.yield
      }
      %273 = math.rsqrt %22 : tensor<f32>
      %274 = tensor.empty() : tensor<10x10x10xi64>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%274 : tensor<10x10x10xi64>) outs(%274 : tensor<10x10x10xi64>) {
      ^bb0(%in: i64, %out: i64):
        %277 = vector.broadcast %c11 : index to vector<5xindex>
        vector.scatter %alloc_14[%c1, %c10] [%277], %20, %20 : memref<5x12xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
        %278 = math.ctpop %false : i1
        %279 = math.cos %6 : tensor<5xf32>
        %280 = tensor.empty() : tensor<12x5xi64>
        %281 = tensor.empty() : tensor<5x5xi64>
        %282 = linalg.matmul ins(%5, %280 : tensor<5x12xi64>, tensor<12x5xi64>) outs(%281 : tensor<5x5xi64>) -> tensor<5x5xi64>
        %false_33 = arith.constant false
        %false_34 = arith.constant false
        %283 = vector.transfer_read %alloc_12[%c11, %c2], %false_34 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<10x10xi1>, vector<12xi1>
        %284 = arith.remsi %false, %false_1 : i1
        %285 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 + 32) floordiv 128)>(%265, %48, %268, %270)
        %rank = tensor.rank %2 : tensor<5x12xi64>
        %286 = math.absf %15 : tensor<10x10xf32>
        %287 = index.sizeof
        %288 = vector.matrix_multiply %42, %42 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<10xf16>) -> vector<1xf16>
        %289 = math.ceil %cst : f16
        %290 = arith.cmpi uge, %false_1, %false_1 : i1
        %291 = arith.floordivsi %c1_i32_32, %c1737417764_i32 : i32
        %292 = bufferization.to_memref %22 : memref<f32>
        %293 = vector.broadcast %c1_i32_32 : i32 to vector<5xi32>
        %294 = vector.maskedload %alloc_6[%c9, %c2], %20, %293 : memref<10x10xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
        %295 = math.fma %22, %22, %22 : tensor<f32>
        %296 = math.tanh %12 : tensor<10x10xf32>
        %297 = arith.maxui %false_1, %false_1 : i1
        %298 = affine.min affine_map<(d0) -> (((d0 - (d0 - 4)) ceildiv 32) floordiv 64, ((d0 - (d0 - 4)) ceildiv 32) floordiv 64, -d0, d0 - 12)>(%268)
        %299 = vector.maskedload %alloc_18[%c6, %c4], %43, %42 : memref<10x10xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
        %300 = vector.shuffle %55, %56 [0, 1, 6] : vector<5xi64>, vector<5xi64>
        %301 = math.ceil %6 : tensor<5xf32>
        %302 = affine.min affine_map<(d0, d1) -> (0, (d1 ceildiv 4 + d1) mod 32, 0)>(%48, %98)
        %cst_35 = arith.constant 0x4E2DEE2E : f32
        %303 = arith.shrui %false_33, %false_33 : i1
        %304 = arith.maxui %c438772603_i32, %c438772603_i32 : i32
        %inserted = tensor.insert %false_33 into %1[%c3, %c5] : tensor<10x12xi1>
        %305 = arith.cmpi ult, %c1737417764_i32, %c438772603_i32 : i32
        %306 = index.add %c1, %269
        %307 = math.cttz %c189462912_i64 : i64
        %308 = arith.ceildivsi %false_33, %false_33 : i1
        linalg.yield %c760248696_i64 : i64
      } -> tensor<10x10x10xi64>
      %276 = arith.divf %cst_2, %cst_2 : f32
      scf.yield %arg1 : memref<10x12xi16>
    }
    %117 = vector.create_mask %111, %c8 : vector<10x10xi1>
    %118 = arith.remf %cst_0, %cst : f16
    %119 = index.casts %96 : index to i32
    %120 = vector.load %alloc_9[%c8, %c6] : memref<10x10xi1>, vector<10x10xi1>
    %121 = index.maxs %c13, %91
    bufferization.dealloc_tensor %14 : tensor<5xi32>
    %122 = arith.floordivsi %c1116965833_i32, %c1116965833_i32 : i32
    %123 = index.sizeof
    %124 = arith.remf %cst, %cst : f16
    %125 = math.copysign %15, %12 : tensor<10x10xf32>
    %126 = vector.transpose %44, [0] : vector<10xf16> to vector<10xf16>
    %127 = vector.matrix_multiply %45, %45 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
    %128 = index.casts %48 : index to i32
    %129 = math.tanh %12 : tensor<10x10xf32>
    %130 = math.tanh %cst_2 : f32
    %131 = arith.remui %c4835_i16, %c-116_i16 : i16
    %expanded = tensor.expand_shape %4 [[0], [1, 2]] : tensor<10x12xi64> into tensor<10x12x1xi64>
    %132 = arith.maxui %c4835_i16, %c18156_i16 : i16
    memref.tensor_store %6, %alloc_19 : memref<5xf32>
    %133 = vector.broadcast %91 : index to vector<5xindex>
    vector.scatter %alloc_19[%c2] [%133], %20, %29 : memref<5xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
    %134 = arith.xori %true, %false : i1
    %135 = math.cttz %16 : tensor<10x10xi64>
    %136 = vector.broadcast %c-8334_i16 : i16 to vector<10xi16>
    %137 = vector.maskedload %alloc_4[%c4, %c2], %43, %136 : memref<10x12xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
    scf.if %false {
      %262 = math.ctpop %c-116_i16 : i16
      %263 = arith.xori %c1039273875_i64, %c189462912_i64 : i64
      %264 = vector.extract %55[3] : vector<5xi64>
      %265 = arith.minf %cst_2, %cst_2 : f32
      %266 = math.tanh %15 : tensor<10x10xf32>
      %267 = math.log2 %6 : tensor<5xf32>
      %268 = arith.minf %cst_2, %cst_2 : f32
      %269 = arith.remui %false_1, %false_1 : i1
    } else {
      %262 = vector.flat_transpose %43 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
      %263 = affine.min affine_map<(d0, d1, d2, d3) -> (d1)>(%c1, %98, %123, %c8)
      %264 = arith.divf %cst_0, %cst_0 : f16
      %265 = math.ctpop %7 : tensor<5xi1>
      %266 = memref.alloca_scope  -> (i16) {
        bufferization.dealloc_tensor %generated : tensor<?xi32>
        %269 = arith.addi %c1737417764_i32, %c438772603_i32 : i32
        %270 = index.divu %c15, %48
        %271 = math.absf %12 : tensor<10x10xf32>
        %272 = vector.broadcast %cst_2 : f32 to vector<12xf32>
        %dest_33, %accumulated_value_34 = vector.scan <minf>, %71, %272 {inclusive = false, reduction_dim = 0 : i64} : vector<5x12xf32>, vector<12xf32>
        %273 = math.powf %12, %12 : tensor<10x10xf32>
        %274 = index.add %98, %c7
        %275 = math.atan %3 : tensor<5xf32>
        %rank = tensor.rank %6 : tensor<5xf32>
        %276 = math.ctpop %2 : tensor<5x12xi64>
        %277 = bufferization.to_tensor %alloc_8 : memref<5x12xf16>
        %278 = vector.multi_reduction <or>, %137, %137 [] : vector<10xi16> to vector<10xi16>
        %279 = index.casts %rank : index to i32
        %inserted = tensor.insert %cst_2 into %21[] : tensor<f32>
        %280 = arith.xori %c-8334_i16, %c18156_i16 : i16
        %281 = math.fma %from_elements, %from_elements, %from_elements : tensor<10x12xf16>
        %282 = math.log2 %22 : tensor<f32>
        %283 = arith.minui %c1737417764_i32, %c1116965833_i32 : i32
        %284 = vector.matrix_multiply %45, %45 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf32>, vector<1xf32>) -> vector<1xf32>
        %285 = vector.create_mask %110, %c2 : vector<5x12xi1>
        %286 = bufferization.to_tensor %alloc_6 : memref<10x10xi32>
        %287 = arith.cmpf uno, %cst_0, %cst_0 : f16
        %288 = index.casts %c1 : index to i32
        %289 = vector.shuffle %47, %42 [0, 2, 3, 4, 6, 7, 8, 9, 10] : vector<2xf16>, vector<10xf16>
        %290 = arith.cmpi eq, %c438772603_i32, %c438772603_i32 : i32
        %291 = arith.remui %true, %false_1 : i1
        %292 = math.tan %3 : tensor<5xf32>
        %293 = math.powf %6, %3 : tensor<5xf32>
        %294 = index.maxs %274, %98
        %295 = index.sub %c6, %c2
        %296 = bufferization.to_memref %22 : memref<f32>
        %297 = vector.broadcast %false_1 : i1 to vector<12xi1>
        %298 = vector.maskedload %alloc_10[%c0, %c3], %297, %297 : memref<5x12xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
        memref.alloca_scope.return %c-116_i16 : i16
      }
      %267 = arith.ceildivsi %c1737417764_i32, %c1737417764_i32 : i32
      %alloc_32 = memref.alloc() : memref<60xi64>
      memref.tensor_store %collapsed, %alloc_32 : memref<60xi64>
      %268 = index.divu %49, %c13
    }
    %138 = math.log10 %12 : tensor<10x10xf32>
    %139 = arith.negf %cst : f16
    %140 = affine.max affine_map<(d0, d1) -> (d0, d1)>(%c5, %110)
    %141 = arith.remui %c4835_i16, %c4835_i16 : i16
    %generated_26 = tensor.generate %c0, %140 {
    ^bb0(%arg1: index, %arg2: index):
      %262 = affine.load %38[%c3] : memref<5xi64>
      %263 = index.maxs %46, %74
      %264 = math.expm1 %6 : tensor<5xf32>
      %265 = vector.shuffle %55, %76 [0, 2, 4, 8, 9] : vector<5xi64>, vector<5xi64>
      tensor.yield %c-116_i16 : i16
    } : tensor<?x?xi16>
    %142 = arith.minf %cst_0, %cst : f16
    %143 = arith.ceildivsi %c-116_i16, %c4835_i16 : i16
    %144 = arith.remf %cst_0, %cst : f16
    memref.copy %alloc_5, %alloc_9 : memref<10x10xi1> to memref<10x10xi1>
    %145 = vector.broadcast %cst_2 : f32 to vector<5xf32>
    %146 = vector.fma %145, %30, %30 : vector<5xf32>
    %147 = arith.xori %c1039273875_i64, %c1039273875_i64 : i64
    memref.alloca_scope  {
      %262 = math.ceil %12 : tensor<10x10xf32>
      %263 = vector.shuffle %109, %109 [1, 2, 8, 10, 11, 12, 13, 14, 15, 16, 17, 19] : vector<10x10xi64>, vector<10x10xi64>
      %264 = vector.insertelement %c1039273875_i64, %56[%96 : index] : vector<5xi64>
      %265 = arith.maxf %cst_0, %cst : f16
      %266 = math.tanh %12 : tensor<10x10xf32>
      %267 = scf.execute_region -> tensor<5x12xi16> {
        %extracted_37 = tensor.extract %from_elements[%c3, %c4] : tensor<10x12xf16>
        %292 = vector.create_mask %c11, %59 : vector<10x10xi1>
        %false_38 = arith.constant false
        %rank_39 = tensor.rank %14 : tensor<5xi32>
        %293 = math.rsqrt %cst_0 : f16
        %dest_40, %accumulated_value_41 = vector.scan <maxui>, %120, %43 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10xi1>, vector<10xi1>
        %294 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        %295 = tensor.empty() : tensor<10x10xi1>
        %296 = math.exp2 %cst_2 : f32
        %297 = math.cttz %18 : tensor<5xi32>
        %298 = index.maxs %c3, %c7
        bufferization.dealloc_tensor %18 : tensor<5xi32>
        %299 = arith.remui %c1116965833_i32, %c1737417764_i32 : i32
        %300 = arith.remsi %c-116_i16, %c18156_i16 : i16
        %collapsed_42 = tensor.collapse_shape %17 [[0, 1]] : tensor<10x10xi64> into tensor<100xi64>
        %301 = vector.splat %c14 : vector<10x10xindex>
        scf.yield %11 : tensor<5x12xi16>
      }
      %268 = vector.broadcast %cst_2 : f32 to vector<5x5xf32>
      %269 = vector.outerproduct %146, %145, %268 {kind = #vector.kind<mul>} : vector<5xf32>, vector<5xf32>
      %270 = vector.broadcast %c18156_i16 : i16 to vector<10x10xi16>
      %extracted_32 = tensor.extract %generated_26[%c0, %c0] : tensor<?x?xi16>
      %271 = arith.minsi %c18156_i16, %c4835_i16 : i16
      %272 = affine.load %alloc[%c0, %c14] : memref<10x12xi1>
      %273 = arith.maxui %false_1, %false_1 : i1
      %rank = tensor.rank %9 : tensor<10x10xi1>
      %274 = math.cttz %4 : tensor<10x12xi64>
      %275 = index.divs %140, %c6
      %276 = affine.min affine_map<(d0, d1, d2) -> (d2 ceildiv 128 + d1 ceildiv 4)>(%275, %74, %121)
      %277 = index.sizeof
      %278 = arith.cmpf ugt, %cst_2, %cst_2 : f32
      %279 = index.sizeof
      %280 = scf.while (%arg1 = %c438772603_i32) : (i32) -> i32 {
        %292 = index.floordivs %275, %rank
        %293 = math.cttz %c1039273875_i64 : i64
        %294 = affine.max affine_map<(d0, d1, d2) -> (d2)>(%277, %277, %c7)
        %295 = vector.broadcast %cst_2 : f32 to vector<5xf32>
        %296 = vector.fma %295, %30, %295 : vector<5xf32>
        %rank_37 = tensor.rank %21 : tensor<f32>
        %297 = math.log %12 : tensor<10x10xf32>
        %298 = arith.cmpi eq, %arg1, %c1737417764_i32 : i32
        %299 = math.ipowi %c-116_i16, %c4835_i16 : i16
        scf.condition(%false) %c1737417764_i32 : i32
      } do {
      ^bb0(%arg1: i32):
        %292 = arith.ori %c1039273875_i64, %c189462912_i64 : i64
        %293 = math.round %12 : tensor<10x10xf32>
        %294 = math.fma %3, %6, %6 : tensor<5xf32>
        %295 = math.log2 %cst_2 : f32
        %296 = affine.apply affine_map<(d0, d1, d2) -> (-(d0 - d1 * 2))>(%33, %c9, %277)
        %297 = arith.negf %cst : f16
        %298 = arith.minf %cst_2, %cst_2 : f32
        %rank_37 = tensor.rank %267 : tensor<5x12xi16>
        %299 = index.casts %true : i1 to index
        %300 = arith.shrui %false, %272 : i1
        %301 = arith.ceildivsi %c4835_i16, %extracted_32 : i16
        %302 = index.maxs %c2, %49
        %303 = math.ctpop %1 : tensor<10x12xi1>
        %304 = index.sizeof
        %305 = math.cos %6 : tensor<5xf32>
        %306 = math.log %21 : tensor<f32>
        scf.yield %arg1 : i32
      }
      %c1_i32_33 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %281 = vector.transfer_read %reduced[%c6], %c0_i32 : tensor<5xi32>, vector<i32>
      %282 = arith.floordivsi %272, %true : i1
      %283 = arith.cmpi sge, %c18156_i16, %c18156_i16 : i16
      %284 = math.roundeven %12 : tensor<10x10xf32>
      %285 = vector.broadcast %c189462912_i64 : i64 to vector<10xi64>
      %dest_34, %accumulated_value_35 = vector.scan <mul>, %109, %285 {inclusive = true, reduction_dim = 0 : i64} : vector<10x10xi64>, vector<10xi64>
      %286 = vector.splat %48 : vector<5x12xindex>
      %287 = affine.load %95[%c11] : memref<5xi32>
      %288 = arith.subi %c1116965833_i32, %c1116965833_i32 : i32
      %289 = vector.splat %c1 : vector<5x12xindex>
      %290 = math.sqrt %15 : tensor<10x10xf32>
      %291 = math.rsqrt %12 : tensor<10x10xf32>
      %collapsed_36 = tensor.collapse_shape %1 [[0, 1]] : tensor<10x12xi1> into tensor<120xi1>
    }
    %148 = arith.minsi %c760248696_i64, %c189462912_i64 : i64
    %149 = math.absf %12 : tensor<10x10xf32>
    %150 = math.sqrt %21 : tensor<f32>
    %151 = arith.divf %cst, %cst_0 : f16
    scf.index_switch %c4 
    case 1 {
      %c5741_i16 = arith.constant 5741 : i16
      %262 = arith.maxui %false, %false_1 : i1
      %263 = vector.maskedload %alloc_8[%c4, %c4], %43, %44 : memref<5x12xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
      %264 = arith.maxui %false_1, %true : i1
      %265 = vector.flat_transpose %136 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
      %266 = arith.floordivsi %c760248696_i64, %c760248696_i64 : i64
      %267 = math.round %from_elements : tensor<10x12xf16>
      %268 = vector.broadcast %c12 : index to vector<5xindex>
      %269 = vector.broadcast %cst_0 : f16 to vector<5xf16>
      vector.scatter %alloc_8[%c1, %c8] [%268], %20, %269 : memref<5x12xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
      %270 = arith.xori %c1039273875_i64, %c189462912_i64 : i64
      %271 = math.sqrt %6 : tensor<5xf32>
      %272 = vector.insertelement %c760248696_i64, %55[%91 : index] : vector<5xi64>
      %273 = vector.extract_strided_slice %72 {offsets = [1], sizes = [4], strides = [1]} : vector<5x12xf32> to vector<4x12xf32>
      %274 = arith.ceildivsi %c18156_i16, %c-116_i16 : i16
      %275 = arith.ori %c760248696_i64, %c1039273875_i64 : i64
      %276 = vector.broadcast %c760248696_i64 : i64 to vector<12xi64>
      %277 = vector.broadcast %false_1 : i1 to vector<12xi1>
      %278 = vector.maskedload %38[%c2], %277, %276 : memref<5xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
      %279 = vector.insert %c1039273875_i64, %276 [2] : i64 into vector<12xi64>
      scf.yield
    }
    case 2 {
      %262 = index.sub %c12, %49
      %263 = arith.divui %c1116965833_i32, %c1737417764_i32 : i32
      %extracted_32 = tensor.extract %14[%c3] : tensor<5xi32>
      %264 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 + (d0 + 16) mod 128 - (d1 + 32) + 2, d3, (d0 + 16) mod 128 - (d1 + 32) + 130, d3 * 32)>(%262, %c15, %49, %c11)
      memref.tensor_store %13, %alloc_11 : memref<5x12xi32>
      %265 = math.powf %3, %6 : tensor<5xf32>
      %266 = index.sub %123, %111
      %267 = math.round %3 : tensor<5xf32>
      %268 = arith.cmpi ne, %false, %false : i1
      %269 = math.ipowi %13, %13 : tensor<5x12xi32>
      %270 = affine.if affine_set<(d0, d1, d2, d3) : (d2 - d0 == 0, d1 * 16 >= 0, -((d0 - 1) ceildiv 32) >= 0)>(%c12, %c11, %c3, %c12) -> i64 {
        %276 = arith.shli %c1116965833_i32, %c1116965833_i32 : i32
        %277 = math.tanh %15 : tensor<10x10xf32>
        %278 = vector.matrix_multiply %146, %127 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<1xf32>) -> vector<5xf32>
        %279 = vector.broadcast %c760248696_i64 : i64 to vector<5x5xi64>
        %280 = vector.outerproduct %93, %56, %279 {kind = #vector.kind<mul>} : vector<5xi64>, vector<5xi64>
        %281 = vector.extract_strided_slice %71 {offsets = [0], sizes = [3], strides = [1]} : vector<5x12xf32> to vector<3x12xf32>
        %282 = math.powf %cst_0, %cst_0 : f16
        %283 = vector.splat %c18156_i16 : vector<5xi16>
        %284 = math.exp2 %12 : tensor<10x10xf32>
        affine.yield %c189462912_i64 : i64
      } else {
        %276 = math.rsqrt %15 : tensor<10x10xf32>
        %277 = arith.remui %c438772603_i32, %c1737417764_i32 : i32
        %alloca_33 = memref.alloca() : memref<5xf32>
        %278 = arith.ceildivsi %c4835_i16, %c4835_i16 : i16
        %279 = arith.maxui %false_1, %false : i1
        %280 = arith.maxui %c-116_i16, %c-8334_i16 : i16
        %281 = vector.shuffle %47, %44 [0, 3, 4, 5, 6, 9, 10, 11] : vector<2xf16>, vector<10xf16>
        %c775731130_i32 = arith.constant 775731130 : i32
        affine.yield %c760248696_i64 : i64
      }
      %271 = math.log2 %21 : tensor<f32>
      %272 = math.absf %22 : tensor<f32>
      %273 = vector.insertelement %c-8334_i16, %137[%c1 : index] : vector<10xi16>
      %274 = math.tan %15 : tensor<10x10xf32>
      %275 = vector.reduction <maxsi>, %137 : vector<10xi16> into i16
      scf.yield
    }
    case 3 {
      %262 = vector.multi_reduction <xor>, %109, %c189462912_i64 [0, 1] : vector<10x10xi64> to i64
      %263 = arith.cmpi eq, %true, %false : i1
      %264 = vector.shuffle %145, %30 [1, 4, 5, 6, 7] : vector<5xf32>, vector<5xf32>
      %265 = bufferization.to_memref %generated : memref<?xi32>
      %266 = arith.ori %c1116965833_i32, %c1737417764_i32 : i32
      %267 = math.log %12 : tensor<10x10xf32>
      %collapsed_32 = tensor.collapse_shape %15 [[0, 1]] : tensor<10x10xf32> into tensor<100xf32>
      %268 = arith.xori %c189462912_i64, %c189462912_i64 : i64
      %269 = bufferization.to_tensor %alloc_9 : memref<10x10xi1>
      %270 = index.divu %c0, %c0
      %271 = arith.addi %false_1, %false_1 : i1
      %272 = affine.load %alloc_16[%c3] : memref<5xi64>
      %273 = math.tan %6 : tensor<5xf32>
      bufferization.dealloc_tensor %17 : tensor<10x10xi64>
      %274 = math.round %12 : tensor<10x10xf32>
      %275 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 * 16) mod 128, d3 * 32)>(%c6, %c4, %91, %33)
      scf.yield
    }
    case 4 {
      %262 = vector.reduction <or>, %20 : vector<5xi1> into i1
      %263 = vector.matrix_multiply %76, %55 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi64>, vector<5xi64>) -> vector<1xi64>
      %264 = vector.multi_reduction <add>, %30, %145 [] : vector<5xf32> to vector<5xf32>
      %265 = math.fma %15, %15, %12 : tensor<10x10xf32>
      %266 = affine.if affine_set<(d0, d1, d2) : (d0 == 0)>(%c11, %c2, %c13) -> i16 {
        %278 = vector.insertelement %true, %43[%c9 : index] : vector<10xi1>
        %279 = math.log2 %22 : tensor<f32>
        %280 = index.ceildivu %96, %98
        %281 = arith.remsi %c1737417764_i32, %c1116965833_i32 : i32
        %alloca_32 = memref.alloca() : memref<5x12xi1>
        %from_elements_33 = tensor.from_elements %true, %true, %false_1, %false, %true, %false, %true, %false_1, %false_1, %false, %true, %false_1, %false_1, %true, %false, %true, %true, %false_1, %true, %false_1, %false, %true, %false_1, %false_1, %true, %false, %true, %true, %false_1, %true, %false_1, %true, %false_1, %true, %false_1, %false_1, %false, %true, %false_1, %false, %false, %false_1, %true, %false_1, %false_1, %false, %true, %true, %false_1, %false, %false, %false_1, %false, %true, %false_1, %false_1, %true, %false_1, %false, %true, %false_1, %false, %true, %false, %false, %false, %false, %false, %false, %true, %false, %false, %false, %false, %true, %true, %true, %false_1, %false, %true, %false_1, %false, %true, %false_1, %false, %true, %true, %false, %false_1, %false_1, %true, %true, %false_1, %false, %false, %false, %false, %false_1, %true, %true : tensor<10x10xi1>
        %282 = arith.remui %c1737417764_i32, %c438772603_i32 : i32
        %283 = math.powf %22, %22 : tensor<f32>
        affine.yield %c4835_i16 : i16
      } else {
        %278 = math.atan2 %6, %3 : tensor<5xf32>
        %279 = arith.minf %cst_0, %cst_0 : f16
        %280 = index.maxs %c0, %c5
        %281 = math.log2 %3 : tensor<5xf32>
        %282 = arith.negf %cst_0 : f16
        %283 = math.tanh %6 : tensor<5xf32>
        %284 = math.copysign %22, %22 : tensor<f32>
        %expanded_32 = tensor.expand_shape %7 [[0, 1]] : tensor<5xi1> into tensor<5x1xi1>
        affine.yield %c4835_i16 : i16
      }
      %267 = arith.addi %c1039273875_i64, %c189462912_i64 : i64
      %268 = math.ctpop %c1116965833_i32 : i32
      %269 = arith.subi %c189462912_i64, %c1039273875_i64 : i64
      %270 = math.cttz %11 : tensor<5x12xi16>
      %271 = math.log2 %cst : f16
      %272 = math.tan %3 : tensor<5xf32>
      %273 = arith.shrsi %c760248696_i64, %c189462912_i64 : i64
      %274 = index.casts %110 : index to i32
      %275 = vector.load %alloc_12[%c9, %c9] : memref<10x10xi1>, vector<10x12xi1>
      %276 = math.round %3 : tensor<5xf32>
      %277 = scf.if %false_1 -> (memref<10x10xf32>) {
        %278 = index.ceildivu %49, %c7
        %279 = index.ceildivs %140, %74
        %280 = math.tanh %6 : tensor<5xf32>
        %281 = arith.shli %c189462912_i64, %c760248696_i64 : i64
        %282 = arith.divf %cst_0, %cst_0 : f16
        %283 = vector.extract_strided_slice %42 {offsets = [3], sizes = [4], strides = [1]} : vector<10xf16> to vector<4xf16>
        %284 = vector.broadcast %121 : index to vector<12xindex>
        %285 = vector.broadcast %false : i1 to vector<12xi1>
        %286 = vector.broadcast %cst_0 : f16 to vector<12xf16>
        vector.scatter %alloc_8[%c0, %c1] [%284], %285, %286 : memref<5x12xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
        %287 = affine.max affine_map<(d0, d1) -> ((d0 floordiv 4 + 16) * 4096, d0 floordiv 4 + 8, d1 mod 64)>(%123, %102)
        scf.yield %alloc_15 : memref<10x10xf32>
      } else {
        %278 = math.round %cst : f16
        %279 = index.sizeof
        %280 = math.tan %3 : tensor<5xf32>
        %281 = arith.remsi %true, %false : i1
        %282 = vector.shuffle %137, %137 [1, 3, 5, 6, 10, 16, 17, 19] : vector<10xi16>, vector<10xi16>
        %283 = vector.flat_transpose %47 {columns = 1 : i32, rows = 2 : i32} : vector<2xf16> -> vector<2xf16>
        %284 = arith.remf %cst_2, %cst_2 : f32
        %285 = vector.matrix_multiply %146, %146 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
        scf.yield %alloc_15 : memref<10x10xf32>
      }
      scf.yield
    }
    default {
      %inserted = tensor.insert %false into %9[%c2, %c1] : tensor<10x10xi1>
      %262 = math.log %22 : tensor<f32>
      %263 = math.round %12 : tensor<10x10xf32>
      %264 = math.tanh %3 : tensor<5xf32>
      %265 = vector.create_mask %c8, %c9 : vector<5x12xi1>
      %266 = arith.maxf %cst_2, %cst_2 : f32
      %267 = vector.broadcast %cst_2 : f32 to vector<5xf32>
      %268 = vector.fma %267, %30, %267 : vector<5xf32>
      %269 = vector.maskedload %alloc_14[%c3, %c5], %43, %43 : memref<5x12xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
      %270 = index.sub %c3, %c3
      %271 = math.log %12 : tensor<10x10xf32>
      %272 = vector.transpose %47, [0] : vector<2xf16> to vector<2xf16>
      %273 = arith.ori %c4835_i16, %c-8334_i16 : i16
      %274 = math.ctpop %0 : tensor<10x10xi64>
      %275 = math.round %22 : tensor<f32>
      %276 = math.tanh %12 : tensor<10x10xf32>
      %277 = math.atan %6 : tensor<5xf32>
    }
    %152 = index.divu %59, %c7
    %153 = arith.remf %cst, %cst : f16
    %154 = index.ceildivu %c7, %48
    %155 = math.atan %12 : tensor<10x10xf32>
    %156 = vector.splat %121 : vector<5xindex>
    %157 = index.sub %c6, %c4
    %158 = index.castu %49 : index to i32
    %159 = index.add %c6, %c12
    %160 = math.cttz %10 : tensor<10x12xi64>
    %161 = index.maxs %c8, %c8
    %162 = arith.divf %cst_2, %cst_2 : f32
    %163 = index.casts %false : i1 to index
    %164 = index.floordivs %140, %159
    %165 = affine.max affine_map<(d0, d1) -> (d1 - 8, d1 * 2 + d0 mod 4 - 16)>(%74, %c12)
    %166 = index.floordivs %163, %49
    %167 = arith.remsi %c-8334_i16, %c-8334_i16 : i16
    %168 = arith.divf %cst_0, %cst : f16
    %169 = vector.broadcast %cst_2 : f32 to vector<5x5xf32>
    %170 = vector.outerproduct %30, %29, %169 {kind = #vector.kind<mul>} : vector<5xf32>, vector<5xf32>
    %171 = vector.broadcast %cst_2 : f32 to vector<5x12xf32>
    %172 = vector.fma %171, %71, %171 : vector<5x12xf32>
    %173 = bufferization.clone %alloc : memref<10x12xi1> to memref<10x12xi1>
    %174 = math.tan %6 : tensor<5xf32>
    %175 = arith.minsi %c760248696_i64, %c760248696_i64 : i64
    %176 = math.powf %6, %6 : tensor<5xf32>
    %177 = vector.transpose %127, [0] : vector<1xf32> to vector<1xf32>
    %178 = tensor.empty() : tensor<5xi32>
    %179 = arith.shrui %c1116965833_i32, %c438772603_i32 : i32
    %180 = arith.floordivsi %c1737417764_i32, %c438772603_i32 : i32
    %181 = math.absf %6 : tensor<5xf32>
    %182 = index.divu %c4, %49
    %183 = index.floordivs %164, %c0
    %184 = math.cos %15 : tensor<10x10xf32>
    %185 = index.maxs %110, %49
    %186 = bufferization.to_memref %2 : memref<5x12xi64>
    %187 = arith.maxui %c438772603_i32, %c1737417764_i32 : i32
    %188 = arith.remui %c438772603_i32, %c1737417764_i32 : i32
    %189 = math.cos %from_elements : tensor<10x12xf16>
    %190 = affine.min affine_map<(d0, d1) -> (0, (d0 ceildiv 4) mod 16, d1 * 128 + (d0 ceildiv 4) mod 128, d1 * 127)>(%157, %121)
    %191 = bufferization.clone %alloc_8 : memref<5x12xf16> to memref<5x12xf16>
    %192 = arith.maxui %false_1, %true : i1
    %193 = vector.flat_transpose %43 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
    %194 = index.sub %c13, %59
    %195 = arith.shrsi %c438772603_i32, %c1116965833_i32 : i32
    %196 = arith.minsi %c189462912_i64, %c1039273875_i64 : i64
    %197 = vector.shuffle %146, %29 [0, 4, 5, 6, 8, 9] : vector<5xf32>, vector<5xf32>
    %198 = math.ctpop %11 : tensor<5x12xi16>
    %199 = math.log %15 : tensor<10x10xf32>
    %c1_i32 = arith.constant 1 : i32
    %200 = vector.transfer_read %95[%92], %c1_i32 : memref<5xi32>, vector<i32>
    %201 = arith.minf %cst_0, %cst : f16
    %202 = vector.splat %140 : vector<10x12xindex>
    %203 = index.divu %140, %121
    bufferization.dealloc_tensor %6 : tensor<5xf32>
    %204 = vector.bitcast %42 : vector<10xf16> to vector<10xf16>
    %205 = vector.broadcast %cst_2 : f32 to vector<5xf32>
    %206 = vector.fma %205, %145, %205 : vector<5xf32>
    %207 = math.copysign %22, %21 : tensor<f32>
    %208 = scf.index_switch %c12 -> index 
    case 1 {
      %262 = index.ceildivu %165, %49
      %263 = math.sqrt %12 : tensor<10x10xf32>
      %264 = vector.flat_transpose %43 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
      %265 = arith.ceildivsi %c438772603_i32, %c1737417764_i32 : i32
      memref.tensor_store %2, %186 : memref<5x12xi64>
      %266 = vector.broadcast %cst_2 : f32 to vector<10xf32>
      %267 = vector.maskedload %alloc_19[%c4], %264, %266 : memref<5xf32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
      %268 = arith.subi %true, %false_1 : i1
      %269 = math.tanh %6 : tensor<5xf32>
      %270 = math.powf %3, %3 : tensor<5xf32>
      %271 = arith.shrsi %c4835_i16, %c-116_i16 : i16
      %272 = memref.atomic_rmw assign %cst_2, %alloc_3[%c3, %c5] : (f32, memref<10x12xf32>) -> f32
      %273 = arith.maxui %c18156_i16, %c-8334_i16 : i16
      %274 = arith.floordivsi %c1_i32, %c1_i32 : i32
      %275 = vector.broadcast %152 : index to vector<5xindex>
      %276 = vector.broadcast %cst : f16 to vector<5xf16>
      vector.scatter %alloc_7[%c7, %c2] [%275], %20, %276 : memref<10x10xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
      %277 = index.sub %c12, %194
      %278 = bufferization.clone %115 : memref<10x10xf16> to memref<10x10xf16>
      scf.yield %c11 : index
    }
    case 2 {
      %262 = math.round %15 : tensor<10x10xf32>
      %263 = index.ceildivu %48, %c1
      %264 = vector.broadcast %cst_2 : f32 to vector<10x10xf32>
      %265 = vector.fma %264, %264, %264 : vector<10x10xf32>
      %266 = arith.cmpf ogt, %cst_0, %cst : f16
      %267 = affine.for %arg1 = 0 to 43 iter_args(%arg2 = %159) -> (index) {
        affine.yield %140 : index
      }
      affine.for %arg1 = 0 to 63 {
      }
      %268 = bufferization.to_tensor %115 : memref<10x10xf16>
      %269 = vector.broadcast %c4 : index to vector<5xindex>
      %270 = vector.broadcast %cst_0 : f16 to vector<5xf16>
      vector.scatter %alloc_13[%c4, %c8] [%269], %20, %270 : memref<10x12xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
      %271 = bufferization.to_memref %16 : memref<10x10xi64>
      %272 = arith.ceildivsi %c189462912_i64, %c760248696_i64 : i64
      %273 = index.sub %154, %74
      %274 = vector.broadcast %c189462912_i64 : i64 to vector<5x12xi64>
      %275 = affine.max affine_map<(d0, d1) -> (d1 mod 64, d1, d1 mod 64)>(%c5, %46)
      %276 = vector.maskedload %alloc_14[%c4, %c0], %43, %193 : memref<5x12xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
      %277 = index.add %154, %c3
      %278 = math.cttz %c4835_i16 : i16
      scf.yield %c7 : index
    }
    case 3 {
      %262 = index.ceildivu %185, %166
      %alloc_32 = memref.alloc() : memref<60xi16>
      memref.tensor_store %collapsed_24, %alloc_32 : memref<60xi16>
      %263 = math.round %cst_2 : f32
      %264 = math.ceil %15 : tensor<10x10xf32>
      %265 = arith.remsi %c1039273875_i64, %c1039273875_i64 : i64
      %266 = index.divs %c4, %161
      %267 = math.ceil %21 : tensor<f32>
      %268 = vector.broadcast %cst_2 : f32 to vector<10x12xf32>
      %269 = vector.fma %268, %268, %268 : vector<10x12xf32>
      %270 = math.ctpop %10 : tensor<10x12xi64>
      %271 = vector.shuffle %127, %145 [3, 4] : vector<1xf32>, vector<5xf32>
      %272 = math.ceil %21 : tensor<f32>
      %273 = affine.max affine_map<(d0) -> (((d0 - 32) ceildiv 128) mod 128, d0 floordiv 8, 0)>(%98)
      %274 = bufferization.clone %115 : memref<10x10xf16> to memref<10x10xf16>
      %275 = math.fma %15, %12, %12 : tensor<10x10xf32>
      %276 = arith.divf %cst_2, %cst_2 : f32
      %splat = tensor.splat %c1039273875_i64 : tensor<5x12xi64>
      scf.yield %49 : index
    }
    case 4 {
      %262 = vector.flat_transpose %55 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
      %263 = math.ipowi %c760248696_i64, %c189462912_i64 : i64
      %264 = math.log10 %6 : tensor<5xf32>
      affine.for %arg1 = 0 to 44 {
      }
      %265 = bufferization.clone %alloc_18 : memref<10x10xf16> to memref<10x10xf16>
      %266 = index.divu %163, %91
      %267 = index.casts %48 : index to i32
      %268 = arith.divui %c189462912_i64, %c1039273875_i64 : i64
      %269 = arith.minsi %false, %true : i1
      %270 = affine.load %alloc[%c0, %c12] : memref<10x12xi1>
      %271 = index.ceildivu %203, %c5
      %272 = arith.ceildivsi %c-8334_i16, %c-116_i16 : i16
      %273 = arith.shrsi %c760248696_i64, %c760248696_i64 : i64
      %274 = index.maxs %166, %c4
      memref.tensor_store %15, %alloc_15 : memref<10x10xf32>
      %275 = arith.addi %c438772603_i32, %c1116965833_i32 : i32
      scf.yield %98 : index
    }
    default {
      %alloc_32 = memref.alloc() : memref<5xf32>
      memref.copy %alloc_19, %alloc_32 : memref<5xf32> to memref<5xf32>
      %true_33 = arith.constant true
      %262 = vector.transfer_read %alloc_5[%c1, %185], %true_33 : memref<10x10xi1>, vector<5xi1>
      %263 = vector.matrix_multiply %204, %47 {lhs_columns = 2 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<2xf16>) -> vector<5xf16>
      %264 = vector.insertelement %cst_2, %127[%111 : index] : vector<1xf32>
      %265 = math.cttz %1 : tensor<10x12xi1>
      %266 = math.round %cst : f16
      %267 = index.casts %c760248696_i64 : i64 to index
      %generated_34 = tensor.generate %121, %102 {
      ^bb0(%arg1: index, %arg2: index):
        %276 = bufferization.to_tensor %alloc_10 : memref<5x12xi1>
        %277 = arith.negf %cst_0 : f16
        %278 = vector.flat_transpose %146 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
        %279 = vector.flat_transpose %278 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
        tensor.yield %c1116965833_i32 : i32
      } : tensor<?x?xi32>
      %268 = vector.broadcast %c189462912_i64 : i64 to vector<12xi64>
      %269 = vector.broadcast %true : i1 to vector<12xi1>
      %270 = vector.maskedload %38[%c3], %269, %268 : memref<5xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
      %271 = index.ceildivu %98, %159
      %272 = math.log1p %3 : tensor<5xf32>
      %273 = bufferization.to_memref %from_elements : memref<10x12xf16>
      memref.tensor_store %12, %alloc_15 : memref<10x10xf32>
      %274 = math.tanh %15 : tensor<10x10xf32>
      %275 = math.log10 %cst : f16
      %splat = tensor.splat %c18156_i16 : tensor<10x10xi16>
      scf.yield %182 : index
    }
    %209 = arith.ceildivsi %false, %true : i1
    %210 = arith.cmpf ule, %cst_0, %cst_0 : f16
    %211 = arith.minf %cst_2, %cst_2 : f32
    %212 = index.add %121, %161
    %213 = arith.remf %cst, %cst : f16
    %214 = vector.reduction <maxui>, %76 : vector<5xi64> into i64
    %215 = math.cttz %11 : tensor<5x12xi16>
    %216 = math.sqrt %3 : tensor<5xf32>
    %217 = index.add %183, %212
    %218 = arith.negf %cst : f16
    %219 = math.round %6 : tensor<5xf32>
    %220 = math.exp2 %from_elements : tensor<10x12xf16>
    %221 = math.tanh %cst_0 : f16
    %222 = math.log1p %12 : tensor<10x10xf32>
    %223 = index.ceildivu %46, %183
    %alloca_27 = memref.alloca() : memref<5xf32>
    %224 = vector.splat %59 : vector<10x10xindex>
    %225 = arith.ceildivsi %c1737417764_i32, %c438772603_i32 : i32
    memref.tensor_store %12, %alloc_15 : memref<10x10xf32>
    %226 = affine.min affine_map<(d0, d1, d2) -> ((d2 - d0) ceildiv 2, (-d0) mod 64)>(%c1, %c3, %c10)
    %227 = bufferization.to_tensor %alloc_4 : memref<10x12xi16>
    memref.tensor_store %6, %alloc_19 : memref<5xf32>
    %228 = arith.remui %c760248696_i64, %c760248696_i64 : i64
    %229 = index.ceildivu %33, %c15
    %extracted = tensor.extract %18[%c0] : tensor<5xi32>
    scf.if %true {
      %262 = math.log2 %cst_0 : f16
      %263 = arith.divui %c-116_i16, %c4835_i16 : i16
      %264 = bufferization.to_memref %14 : memref<5xi32>
      %265 = scf.if %true -> (memref<5xi16>) {
        %271 = index.divu %194, %c4
        %272 = math.ceil %21 : tensor<f32>
        %273 = math.ctpop %16 : tensor<10x10xi64>
        %274 = arith.minui %c-116_i16, %c-8334_i16 : i16
        %275 = vector.broadcast %c11 : index to vector<5xindex>
        vector.scatter %38[%c1] [%275], %20, %56 : memref<5xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
        %276 = math.cttz %1 : tensor<10x12xi1>
        %277 = vector.shuffle %137, %136 [2, 4, 13, 14, 16, 17, 19] : vector<10xi16>, vector<10xi16>
        %278 = arith.floordivsi %c-116_i16, %c4835_i16 : i16
        %alloc_32 = memref.alloc() : memref<5xi16>
        scf.yield %alloc_32 : memref<5xi16>
      } else {
        %271 = vector.broadcast %c760248696_i64 : i64 to vector<10xi64>
        %dest_32, %accumulated_value_33 = vector.scan <and>, %109, %271 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10xi64>, vector<10xi64>
        %272 = math.round %12 : tensor<10x10xf32>
        %273 = arith.addi %c760248696_i64, %c1039273875_i64 : i64
        %274 = arith.floordivsi %c189462912_i64, %c189462912_i64 : i64
        %alloc_34 = memref.alloc() : memref<60xi64>
        memref.tensor_store %collapsed, %alloc_34 : memref<60xi64>
        %275 = arith.cmpf false, %cst, %cst_0 : f16
        %276 = vector.shuffle %204, %42 [5, 8, 14, 16, 19] : vector<10xf16>, vector<10xf16>
        %277 = index.sizeof
        %alloc_35 = memref.alloc() : memref<5xi16>
        scf.yield %alloc_35 : memref<5xi16>
      }
      %266 = index.divu %c8, %217
      %267 = index.divs %266, %152
      %268 = vector.broadcast %cst_2 : f32 to vector<10x10xf32>
      %269 = vector.fma %268, %268, %268 : vector<10x10xf32>
      %270 = math.rsqrt %3 : tensor<5xf32>
    }
    %230 = vector.broadcast %cst_2 : f32 to vector<5x12xf32>
    %231 = vector.fma %230, %230, %172 : vector<5x12xf32>
    %232 = scf.if %true -> (f32) {
      %262 = arith.subi %c18156_i16, %c18156_i16 : i16
      %c1_i64 = arith.constant 1 : i64
      %263 = vector.transfer_read %expanded[%166, %229, %c9], %c1_i64 : tensor<10x12x1xi64>, vector<10x5xi64>
      memref.tensor_store %5, %186 : memref<5x12xi64>
      %264 = vector.transpose %231, [1, 0] : vector<5x12xf32> to vector<12x5xf32>
      %265 = vector.broadcast %cst_2 : f32 to vector<f32>
      vector.transfer_write %265, %alloc_3[%159, %59] : vector<f32>, memref<10x12xf32>
      %266 = tensor.empty() : tensor<10x12xi64>
      %267 = linalg.matmul ins(%16, %10 : tensor<10x10xi64>, tensor<10x12xi64>) outs(%266 : tensor<10x12xi64>) -> tensor<10x12xi64>
      %268 = tensor.empty() : tensor<12x5xi64>
      %269 = tensor.empty() : tensor<5x5xi64>
      %270 = linalg.matmul ins(%5, %268 : tensor<5x12xi64>, tensor<12x5xi64>) outs(%269 : tensor<5x5xi64>) -> tensor<5x5xi64>
      %271 = arith.remui %true, %false_1 : i1
      scf.yield %cst_2 : f32
    } else {
      %262 = arith.ceildivsi %c1_i32, %c1_i32 : i32
      %263 = math.ctlz %true : i1
      %264 = vector.matrix_multiply %20, %193 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<5xi1>, vector<10xi1>) -> vector<2xi1>
      %false_32 = index.bool.constant false
      %265 = math.log10 %3 : tensor<5xf32>
      %266 = vector.insertelement %c760248696_i64, %56[%152 : index] : vector<5xi64>
      %267 = math.exp2 %6 : tensor<5xf32>
      %268 = arith.negf %cst : f16
      scf.yield %cst_2 : f32
    }
    %233 = affine.max affine_map<(d0) -> (d0)>(%164)
    %from_elements_28 = tensor.from_elements %c4835_i16, %c4835_i16, %c-8334_i16, %c-116_i16, %c-116_i16 : tensor<5xi16>
    %234 = math.rsqrt %6 : tensor<5xf32>
    %235 = math.sqrt %12 : tensor<10x10xf32>
    %236 = math.log10 %12 : tensor<10x10xf32>
    %237 = math.atan2 %15, %12 : tensor<10x10xf32>
    %238 = vector.reduction <mul>, %127 : vector<1xf32> into f32
    %239 = arith.shrui %false_1, %false_1 : i1
    %expanded_29 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<10x10xf32> into tensor<10x10x1xf32>
    %240 = arith.shrui %c-8334_i16, %c-8334_i16 : i16
    %241 = math.round %6 : tensor<5xf32>
    %242 = index.casts %c1737417764_i32 : i32 to index
    %243 = arith.cmpi slt, %c1116965833_i32, %c1116965833_i32 : i32
    %244 = memref.load %alloc_8[%c2, %c8] : memref<5x12xf16>
    %245 = arith.shli %extracted, %extracted : i32
    %246 = vector.broadcast %232 : f32 to vector<f32>
    vector.transfer_write %246, %alloc_19[%c7] : vector<f32>, memref<5xf32>
    %247 = math.ctpop %5 : tensor<5x12xi64>
    %248 = bufferization.clone %alloc_3 : memref<10x12xf32> to memref<10x12xf32>
    %249 = math.log %22 : tensor<f32>
    %250 = math.exp2 %15 : tensor<10x10xf32>
    %251 = math.sqrt %expanded_29 : tensor<10x10x1xf32>
    %252 = math.atan2 %6, %3 : tensor<5xf32>
    %253 = arith.minsi %c1_i32, %c1116965833_i32 : i32
    %254 = vector.broadcast %c438772603_i32 : i32 to vector<5xi32>
    %255 = vector.flat_transpose %30 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
    %256 = vector.shuffle %87, %87 [0, 1] : vector<f16>, vector<f16>
    %257 = arith.remf %cst_0, %cst_0 : f16
    %258 = tensor.empty() : tensor<5x12xi32>
    %259 = linalg.copy ins(%13 : tensor<5x12xi32>) outs(%258 : tensor<5x12xi32>) -> tensor<5x12xi32>
    %alloc_30 = memref.alloc() : memref<10x10xf16>
    linalg.transpose ins(%115 : memref<10x10xf16>) outs(%alloc_30 : memref<10x10xf16>) permutation = [1, 0] 
    %alloc_31 = memref.alloc() : memref<i32>
    linalg.reduce ins(%259 : tensor<5x12xi32>) outs(%alloc_31 : memref<i32>) dimensions = [0, 1] 
      (%in: i32, %init: i32) {
        %262 = arith.remsi %false_1, %false_1 : i1
        %263 = vector.shuffle %42, %204 [0, 1, 4, 10, 12, 15, 16, 18, 19] : vector<10xf16>, vector<10xf16>
        %264 = arith.ori %c-8334_i16, %c18156_i16 : i16
        %265 = index.divs %223, %c7
        %266 = index.casts %157 : index to i32
        %267 = index.ceildivu %c5, %c3
        %268 = arith.negf %cst_2 : f32
        %269 = arith.divui %c18156_i16, %c18156_i16 : i16
        %c1_i32_32 = arith.constant 1 : i32
        linalg.yield %c1_i32_32 : i32
      }
    %260 = scf.parallel (%arg1) = (%c7) to (%59) step (%c14) init (%231) -> vector<5x12xf32> {
      %262 = index.sub %c1, %74
      %263 = math.powf %3, %6 : tensor<5xf32>
      %264 = math.cttz %0 : tensor<10x10xi64>
      %265 = arith.maxui %true, %false : i1
      %266 = arith.cmpi slt, %c-8334_i16, %c18156_i16 : i16
      %267 = vector.shuffle %137, %137 [0, 3, 4, 6, 7, 11, 13, 15, 16, 17, 18] : vector<10xi16>, vector<10xi16>
      %268 = arith.xori %c1116965833_i32, %c1737417764_i32 : i32
      %269 = math.round %21 : tensor<f32>
      %270 = tensor.empty() : tensor<5x12xi64>
      %mapped = linalg.map ins(%2, %2 : tensor<5x12xi64>, tensor<5x12xi64>) outs(%270 : tensor<5x12xi64>)
        (%in: i64, %in_34: i64) {
          %276 = vector.broadcast %102 : index to vector<5xindex>
          %277 = vector.broadcast %c4835_i16 : i16 to vector<5xi16>
          vector.scatter %alloc_4[%c5, %c6] [%276], %20, %277 : memref<10x12xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
          %278 = math.rsqrt %12 : tensor<10x10xf32>
          %279 = arith.remsi %c1737417764_i32, %c1116965833_i32 : i32
          %280 = vector.splat %185 : vector<5xindex>
          %281 = tensor.empty() : tensor<10x10xi1>
          %282 = arith.cmpf uge, %232, %cst_2 : f32
          memref.copy %alloc_12, %alloc_5 : memref<10x10xi1> to memref<10x10xi1>
          %283 = math.ctpop %c-116_i16 : i16
          %284 = arith.floordivsi %c1737417764_i32, %c1116965833_i32 : i32
          %285 = arith.divf %cst_0, %cst : f16
          %286 = math.exp %expanded_29 : tensor<10x10x1xf32>
          %287 = tensor.empty() : tensor<10x12xf32>
          %288 = vector.matrix_multiply %42, %47 {lhs_columns = 2 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<2xf16>) -> vector<5xf16>
          %289 = vector.broadcast %true : i1 to vector<12xi1>
          %290 = vector.maskedload %alloc_12[%c0, %c3], %289, %289 : memref<10x10xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
          %alloc_35 = memref.alloc() : memref<5x12xi64>
          memref.copy %186, %alloc_35 : memref<5x12xi64> to memref<5x12xi64>
          %291 = vector.matrix_multiply %81, %43 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xi1>, vector<10xi1>) -> vector<10xi1>
          %292 = index.casts %in : i64 to index
          %293 = vector.maskedload %alloc_10[%c3, %c5], %20, %20 : memref<5x12xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
          %294 = vector.broadcast %c1039273875_i64 : i64 to vector<12xi64>
          %295 = vector.transfer_write %294, %0[%96, %223] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi64>, tensor<10x10xi64>
          %296 = math.rsqrt %22 : tensor<f32>
          %297 = index.floordivs %154, %59
          %298 = arith.cmpi ne, %c438772603_i32, %c1116965833_i32 : i32
          %299 = math.log1p %12 : tensor<10x10xf32>
          %300 = arith.minui %false_1, %false_1 : i1
          %301 = arith.minui %c1737417764_i32, %extracted : i32
          %302 = arith.divui %in_34, %c1039273875_i64 : i64
          %false_36 = arith.constant false
          %303 = math.expm1 %6 : tensor<5xf32>
          %304 = index.floordivs %arg1, %212
          %305 = arith.minf %cst_0, %cst : f16
          %306 = arith.ceildivsi %c1_i32, %extracted : i32
          %307 = arith.shrui %c1737417764_i32, %c1_i32 : i32
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %alloc_32 = memref.alloc() : memref<60xi16>
      memref.tensor_store %collapsed_24, %alloc_32 : memref<60xi16>
      %271 = math.exp %cst_0 : f16
      %expanded_33 = tensor.expand_shape %14 [[0, 1]] : tensor<5xi32> into tensor<5x1xi32>
      %272 = index.floordivs %154, %c2
      bufferization.dealloc_tensor %0 : tensor<10x10xi64>
      %273 = vector.splat %217 : vector<10x10xindex>
      %274 = math.log2 %22 : tensor<f32>
      %275 = vector.broadcast %cst_2 : f32 to vector<5x12xf32>
      scf.reduce(%275)  : vector<5x12xf32> {
      ^bb0(%arg2: vector<5x12xf32>, %arg3: vector<5x12xf32>):
        %276 = memref.realloc %alloc_16 : memref<5xi64> to memref<5xi64>
        %277 = math.tan %12 : tensor<10x10xf32>
        %278 = math.log2 %15 : tensor<10x10xf32>
        %279 = affine.load %alloc_4[%c14, %c0] : memref<10x12xi16>
        %280 = vector.create_mask %154, %110 : vector<10x10xi1>
        %281 = vector.insertelement %c1039273875_i64, %56[%c7 : index] : vector<5xi64>
        %282 = arith.shrui %c4835_i16, %c18156_i16 : i16
        %283 = bufferization.to_tensor %186 : memref<5x12xi64>
        %284 = vector.broadcast %232 : f32 to vector<5x12xf32>
        scf.reduce.return %284 : vector<5x12xf32>
      }
      scf.yield
    }
    %261 = affine.vector_load %alloc_19[%c9] : memref<5xf32>, vector<10xf32>
    affine.vector_store %261, %alloc_15[%165, %223] : memref<10x10xf32>, vector<10xf32>
    vector.print %20 : vector<5xi1>
    vector.print %29 : vector<5xf32>
    vector.print %30 : vector<5xf32>
    vector.print %42 : vector<10xf16>
    vector.print %43 : vector<10xi1>
    vector.print %44 : vector<10xf16>
    vector.print %45 : vector<1xf32>
    vector.print %47 : vector<2xf16>
    vector.print %55 : vector<5xi64>
    vector.print %56 : vector<5xi64>
    vector.print %71 : vector<5x12xf32>
    vector.print %72 : vector<5x12xf32>
    vector.print %76 : vector<5xi64>
    vector.print %81 : vector<1xi1>
    vector.print %86 : vector<10x10xi1>
    vector.print %87 : vector<f16>
    vector.print %93 : vector<5xi64>
    vector.print %109 : vector<10x10xi64>
    vector.print %117 : vector<10x10xi1>
    vector.print %120 : vector<10x10xi1>
    vector.print %127 : vector<1xf32>
    vector.print %136 : vector<10xi16>
    vector.print %137 : vector<10xi16>
    vector.print %145 : vector<5xf32>
    vector.print %146 : vector<5xf32>
    vector.print %171 : vector<5x12xf32>
    vector.print %172 : vector<5x12xf32>
    vector.print %193 : vector<10xi1>
    vector.print %204 : vector<10xf16>
    vector.print %205 : vector<5xf32>
    vector.print %206 : vector<5xf32>
    vector.print %230 : vector<5x12xf32>
    vector.print %231 : vector<5x12xf32>
    vector.print %246 : vector<f32>
    vector.print %254 : vector<5xi32>
    vector.print %255 : vector<5xf32>
    vector.print %261 : vector<10xf32>
    vector.print %c4835_i16 : i16
    vector.print %cst : f16
    vector.print %cst_0 : f16
    vector.print %true : i1
    vector.print %c-116_i16 : i16
    vector.print %c-8334_i16 : i16
    vector.print %false : i1
    vector.print %c1737417764_i32 : i32
    vector.print %c18156_i16 : i16
    vector.print %c1039273875_i64 : i64
    vector.print %c438772603_i32 : i32
    vector.print %false_1 : i1
    vector.print %c1116965833_i32 : i32
    vector.print %c189462912_i64 : i64
    vector.print %cst_2 : f32
    vector.print %c760248696_i64 : i64
    vector.print %c1_i32 : i32
    vector.print %extracted : i32
    vector.print %232 : f32
    return
  }
}
