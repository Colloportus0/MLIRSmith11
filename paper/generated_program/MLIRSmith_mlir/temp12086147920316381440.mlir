module {
  func.func nested @func1(%arg0: vector<11x13xf32>, %arg1: tensor<8x11x8xi32>) -> vector<8x11x8xf32> {
    %c1570961800_i64 = arith.constant 1570961800 : i64
    %c1963286850_i32 = arith.constant 1963286850 : i32
    %true = arith.constant true
    %c1711792754_i64 = arith.constant 1711792754 : i64
    %false = arith.constant false
    %c618576397_i32 = arith.constant 618576397 : i32
    %cst = arith.constant 9.616000e+03 : f16
    %c768864186_i32 = arith.constant 768864186 : i32
    %c1586311473_i64 = arith.constant 1586311473 : i64
    %cst_0 = arith.constant 2.926400e+04 : f16
    %cst_1 = arith.constant 0x4D3FFBCA : f32
    %true_2 = arith.constant true
    %cst_3 = arith.constant 1.46947853E+9 : f32
    %c-9988_i16 = arith.constant -9988 : i16
    %c1193819625_i32 = arith.constant 1193819625 : i32
    %c34358798_i32 = arith.constant 34358798 : i32
    %0 = tensor.empty() : tensor<7x11x13xi64>
    %1 = tensor.empty() : tensor<7x11x13xf32>
    %2 = tensor.empty() : tensor<7xf16>
    %3 = tensor.empty() : tensor<7x11x13xi16>
    %4 = tensor.empty() : tensor<7xi16>
    %5 = tensor.empty() : tensor<7x11x13xf16>
    %6 = tensor.empty() : tensor<11x13xi16>
    %7 = tensor.empty() : tensor<7x11x13xi16>
    %8 = tensor.empty() : tensor<11x13xi1>
    %9 = tensor.empty() : tensor<8x11x8xi1>
    %10 = tensor.empty() : tensor<8x11x8xi16>
    %11 = tensor.empty() : tensor<11x13xi64>
    %12 = tensor.empty() : tensor<7xf16>
    %13 = tensor.empty() : tensor<7x11x13xf32>
    %14 = tensor.empty() : tensor<8x11x8xi16>
    %15 = tensor.empty() : tensor<11x13xi16>
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
    %alloc = memref.alloc() : memref<11x13xi64>
    %alloc_4 = memref.alloc() : memref<8x11x8xi1>
    %alloc_5 = memref.alloc() : memref<11x13xf32>
    %alloc_6 = memref.alloc() : memref<7xi1>
    %alloc_7 = memref.alloc() : memref<7xi32>
    %alloc_8 = memref.alloc() : memref<11x13xi32>
    %alloc_9 = memref.alloc() : memref<8x11x8xi16>
    %alloc_10 = memref.alloc() : memref<7x11x13xi64>
    %alloc_11 = memref.alloc() : memref<8x11x8xi64>
    %alloc_12 = memref.alloc() : memref<11x13xf16>
    %alloc_13 = memref.alloc() : memref<7x11x13xi1>
    %alloc_14 = memref.alloc() : memref<11x13xf32>
    %alloc_15 = memref.alloc() : memref<8x11x8xf16>
    %alloc_16 = memref.alloc() : memref<7x11x13xi16>
    %alloc_17 = memref.alloc() : memref<8x11x8xi32>
    %alloc_18 = memref.alloc() : memref<11x13xi32>
    %16 = tensor.empty() : tensor<7x11x13xf32>
    %17 = linalg.copy ins(%13 : tensor<7x11x13xf32>) outs(%16 : tensor<7x11x13xf32>) -> tensor<7x11x13xf32>
    %18 = tensor.empty() : tensor<13x11xi64>
    %transposed = linalg.transpose ins(%11 : tensor<11x13xi64>) outs(%18 : tensor<13x11xi64>) permutation = [1, 0] 
    %alloc_19 = memref.alloc() : memref<i16>
    linalg.reduce ins(%7 : tensor<7x11x13xi16>) outs(%alloc_19 : memref<i16>) dimensions = [0, 1, 2] 
      (%in: i16, %init: i16) {
        %262 = arith.remui %c1586311473_i64, %c1586311473_i64 : i64
        %263 = vector.broadcast %cst_3 : f32 to vector<11xf32>
        %264 = vector.matrix_multiply %263, %263 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
        %265 = arith.divf %cst_3, %cst_1 : f32
        %266 = vector.multi_reduction <minf>, %263, %cst_3 [0] : vector<11xf32> to f32
        %267 = math.powf %2, %12 : tensor<7xf16>
        %268 = math.floor %cst_3 : f32
        %269 = vector.broadcast %cst_3 : f32 to vector<11x11xf32>
        %270 = vector.outerproduct %263, %263, %269 {kind = #vector.kind<add>} : vector<11xf32>, vector<11xf32>
        %271 = math.expm1 %12 : tensor<7xf16>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %19 = scf.parallel (%arg2, %arg3) = (%c3, %c8) to (%c10, %c6) step (%c12, %c14) init (%true_2) -> i1 {
      %262 = arith.remf %cst_1, %cst_3 : f32
      %263 = index.sizeof
      %264 = math.exp2 %12 : tensor<7xf16>
      %265 = math.roundeven %12 : tensor<7xf16>
      %266 = index.add %c13, %arg3
      %267 = arith.maxui %c618576397_i32, %c618576397_i32 : i32
      %268 = scf.execute_region -> memref<7x11x13xi32> {
        %276 = index.ceildivu %c5, %c12
        %277 = vector.broadcast %cst_1 : f32 to vector<f32>
        %278 = vector.insertelement %cst_3, %277[] : vector<f32>
        %279 = vector.create_mask %c2, %c13, %c14 : vector<7x11x13xi1>
        %280 = vector.load %alloc_18[%c3, %c1] : memref<11x13xi32>, vector<8x11x8xi32>
        %281 = arith.shrui %true_2, %true : i1
        %282 = arith.remf %cst_0, %cst : f16
        %283 = index.add %c1, %263
        %284 = math.cttz %c1193819625_i32 : i32
        %285 = math.cttz %9 : tensor<8x11x8xi1>
        %286 = math.absf %13 : tensor<7x11x13xf32>
        %c101469084_i64 = arith.constant 101469084 : i64
        %287 = math.cos %cst_0 : f16
        %alloca_55 = memref.alloca() : memref<7x11x13xf16>
        %288 = index.sub %c11, %c1
        %289 = index.castu %c618576397_i32 : i32 to index
        %splat_56 = tensor.splat %c1570961800_i64 : tensor<7x11x13xi64>
        %alloc_57 = memref.alloc() : memref<7x11x13xi32>
        scf.yield %alloc_57 : memref<7x11x13xi32>
      }
      %269 = math.tan %13 : tensor<7x11x13xf32>
      %270 = arith.remui %c1193819625_i32, %c768864186_i32 : i32
      %271 = vector.load %alloc_4[%c2, %c0, %c7] : memref<8x11x8xi1>, vector<11x13xi1>
      %272 = arith.maxf %cst, %cst_0 : f16
      %273 = index.mul %c2, %263
      %274 = arith.floordivsi %c1586311473_i64, %c1586311473_i64 : i64
      %alloca_53 = memref.alloca() : memref<7xi32>
      scf.index_switch %c10 
      case 1 {
        %276 = math.exp2 %17 : tensor<7x11x13xf32>
        %277 = math.expm1 %17 : tensor<7x11x13xf32>
        %278 = vector.broadcast %false : i1 to vector<11xi1>
        %279 = vector.multi_reduction <xor>, %271, %278 [1] : vector<11x13xi1> to vector<11xi1>
        %280 = vector.splat %true : vector<7xi1>
        %expanded_55 = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<7x11x13xf16> into tensor<7x11x13x1xf16>
        %281 = vector.flat_transpose %278 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
        %282 = arith.divf %cst_0, %cst_0 : f16
        %283 = math.expm1 %5 : tensor<7x11x13xf16>
        %284 = affine.load %alloc_13[%c1, %c9, %c9] : memref<7x11x13xi1>
        %285 = vector.broadcast %cst_1 : f32 to vector<8x11x8xf32>
        %286 = vector.fma %285, %285, %285 : vector<8x11x8xf32>
        %287 = vector.insertelement %false, %278[%c6 : index] : vector<11xi1>
        %288 = bufferization.to_tensor %alloc_18 : memref<11x13xi32>
        %289 = index.ceildivu %c5, %273
        %inserted_56 = tensor.insert %c-9988_i16 into %7[%c1, %c6, %c3] : tensor<7x11x13xi16>
        %290 = vector.bitcast %286 : vector<8x11x8xf32> to vector<8x11x8xf32>
        %291 = vector.reduction <minui>, %278 : vector<11xi1> into i1
        scf.yield
      }
      case 2 {
        %alloca_55 = memref.alloca() : memref<11x13xi16>
        memref.assume_alignment %alloc_17, 8 : memref<8x11x8xi32>
        bufferization.dealloc_tensor %10 : tensor<8x11x8xi16>
        %276 = vector.broadcast %c768864186_i32 : i32 to vector<11xi32>
        %277 = vector.broadcast %false : i1 to vector<11xi1>
        %278 = vector.maskedload %alloc_7[%c1], %277, %276 : memref<7xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
        %cast = tensor.cast %9 : tensor<8x11x8xi1> to tensor<?x?x?xi1>
        %279 = math.sqrt %1 : tensor<7x11x13xf32>
        %280 = arith.divf %cst_1, %cst_3 : f32
        %281 = arith.minf %cst, %cst_0 : f16
        %inserted_56 = tensor.insert %c-9988_i16 into %14[%c1, %c8, %c5] : tensor<8x11x8xi16>
        %282 = vector.broadcast %c1570961800_i64 : i64 to vector<7xi64>
        %283 = vector.broadcast %true : i1 to vector<7xi1>
        %284 = vector.broadcast %c1963286850_i32 : i32 to vector<7xi32>
        %285 = vector.gather %alloc_10[%arg2, %c5, %273] [%284], %283, %282 : memref<7x11x13xi64>, vector<7xi32>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %286 = bufferization.to_tensor %alloc_16 : memref<7x11x13xi16>
        %287 = vector.reduction <add>, %276 : vector<11xi32> into i32
        %288 = math.log10 %cst_0 : f16
        %289 = math.sqrt %cst_1 : f32
        %290 = arith.divf %cst_3, %cst_3 : f32
        %291 = math.round %cst : f16
        scf.yield
      }
      case 3 {
        %276 = vector.broadcast %c1963286850_i32 : i32 to vector<7xi32>
        %277 = vector.flat_transpose %276 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        %278 = math.tan %2 : tensor<7xf16>
        %279 = arith.divf %cst_0, %cst : f16
        %280 = math.cttz %15 : tensor<11x13xi16>
        %281 = math.powf %cst_0, %cst_0 : f16
        %282 = index.ceildivu %c11, %c0
        %283 = vector.flat_transpose %276 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        %284 = vector.load %alloc_7[%c1] : memref<7xi32>, vector<7x11x13xi32>
        %285 = arith.floordivsi %c768864186_i32, %c34358798_i32 : i32
        %splat_55 = tensor.splat %c1570961800_i64 : tensor<8x11x8xi64>
        %286 = index.sizeof
        %287 = arith.muli %c1570961800_i64, %c1586311473_i64 : i64
        %288 = arith.cmpi uge, %c1586311473_i64, %c1586311473_i64 : i64
        %289 = arith.remui %false, %true_2 : i1
        %alloca_56 = memref.alloca() : memref<7x11x13xi64>
        %290 = arith.shrsi %c618576397_i32, %c1193819625_i32 : i32
        scf.yield
      }
      default {
        %276 = arith.divui %c1193819625_i32, %c618576397_i32 : i32
        %277 = vector.extract_strided_slice %271 {offsets = [4], sizes = [7], strides = [1]} : vector<11x13xi1> to vector<7x13xi1>
        %278 = vector.splat %true : vector<11x13xi1>
        %279 = memref.atomic_rmw assign %c-9988_i16, %alloc_19[] : (i16, memref<i16>) -> i16
        %280 = bufferization.to_tensor %alloc_8 : memref<11x13xi32>
        %281 = math.ctlz %4 : tensor<7xi16>
        %alloc_55 = memref.alloc() : memref<7xi32>
        memref.copy %alloc_7, %alloc_55 : memref<7xi32> to memref<7xi32>
        %282 = index.casts %c-9988_i16 : i16 to index
        %283 = bufferization.clone %alloc_16 : memref<7x11x13xi16> to memref<7x11x13xi16>
        %284 = vector.broadcast %true : i1 to vector<11xi1>
        %285 = vector.matrix_multiply %284, %284 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi1>, vector<11xi1>) -> vector<1xi1>
        %286 = index.sizeof
        %287 = arith.andi %c1711792754_i64, %c1586311473_i64 : i64
        %288 = memref.load %alloc_7[%c1] : memref<7xi32>
        %289 = arith.minf %cst_3, %cst_1 : f32
        %290 = vector.load %alloc_4[%c4, %c10, %c3] : memref<8x11x8xi1>, vector<11x13xi1>
        %291 = vector.matrix_multiply %285, %285 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      }
      %275 = memref.atomic_rmw maxf %cst, %alloc_12[%c4, %c1] : (f16, memref<11x13xf16>) -> f16
      %false_54 = arith.constant false
      scf.reduce(%false_54)  : i1 {
      ^bb0(%arg4: i1, %arg5: i1):
        %inserted_55 = tensor.insert %cst_3 into %1[%c1, %c0, %c6] : tensor<7x11x13xf32>
        %rank_56 = tensor.rank %8 : tensor<11x13xi1>
        %cst_57 = arith.constant 0x4E365FE2 : f32
        %276 = vector.transpose %271, [0, 1] : vector<11x13xi1> to vector<11x13xi1>
        %277 = arith.divui %c1570961800_i64, %c1711792754_i64 : i64
        %278 = tensor.empty() : tensor<7xi1>
        %279 = vector.broadcast %c768864186_i32 : i32 to vector<11x13xi32>
        %280 = vector.gather %278[%c11] [%279], %271, %271 : tensor<7xi1>, vector<11x13xi32>, vector<11x13xi1>, vector<11x13xi1> into vector<11x13xi1>
        %true_58 = index.bool.constant true
        %281 = index.sizeof
        %false_59 = arith.constant false
        scf.reduce.return %false_59 : i1
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_11[%c13, %c13, %c8] : memref<8x11x8xi64>, vector<8xi64>
    affine.vector_store %20, %alloc_11[%c5, %c6, %c6] : memref<8x11x8xi64>, vector<8xi64>
    %alloc_20 = memref.alloc() : memref<7xf16>
    %21 = tensor.empty() : tensor<f16>
    %22 = linalg.dot ins(%2, %alloc_20 : tensor<7xf16>, memref<7xf16>) outs(%21 : tensor<f16>) -> tensor<f16>
    %from_elements = tensor.from_elements %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c1193819625_i32, %c618576397_i32, %c1963286850_i32, %c618576397_i32, %c34358798_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c618576397_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c1963286850_i32, %c1193819625_i32, %c1193819625_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c1193819625_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c618576397_i32, %c1963286850_i32, %c618576397_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c34358798_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c768864186_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c768864186_i32, %c1963286850_i32, %c1963286850_i32, %c34358798_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c1193819625_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c1193819625_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c1193819625_i32, %c34358798_i32, %c618576397_i32, %c1193819625_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c34358798_i32, %c1193819625_i32, %c34358798_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c768864186_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c618576397_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c768864186_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c34358798_i32, %c618576397_i32, %c34358798_i32, %c34358798_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c34358798_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c1963286850_i32, %c1193819625_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c1963286850_i32, %c1193819625_i32, %c1963286850_i32, %c1193819625_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c1963286850_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c1193819625_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c1193819625_i32, %c618576397_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c768864186_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c768864186_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c768864186_i32, %c34358798_i32, %c618576397_i32, %c34358798_i32, %c1193819625_i32, %c1193819625_i32, %c618576397_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c1963286850_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c34358798_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c618576397_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c1193819625_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c618576397_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c1963286850_i32, %c768864186_i32, %c768864186_i32, %c1963286850_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c34358798_i32, %c34358798_i32, %c1963286850_i32, %c34358798_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c768864186_i32, %c1963286850_i32, %c1193819625_i32, %c1193819625_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c1963286850_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c618576397_i32, %c1963286850_i32, %c618576397_i32, %c34358798_i32, %c1193819625_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c1963286850_i32, %c618576397_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c618576397_i32, %c34358798_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c34358798_i32, %c1193819625_i32, %c618576397_i32, %c1963286850_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c34358798_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c1963286850_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c1193819625_i32, %c34358798_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c1193819625_i32, %c1193819625_i32, %c618576397_i32, %c1963286850_i32, %c768864186_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c618576397_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c768864186_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c34358798_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c1193819625_i32, %c1963286850_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c34358798_i32, %c1963286850_i32, %c768864186_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c1963286850_i32, %c768864186_i32, %c34358798_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c34358798_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c768864186_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c1193819625_i32, %c34358798_i32, %c34358798_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c618576397_i32, %c768864186_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c1193819625_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c768864186_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c1963286850_i32, %c768864186_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c34358798_i32, %c34358798_i32, %c1193819625_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c1193819625_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c1963286850_i32, %c34358798_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c1193819625_i32, %c1193819625_i32, %c1193819625_i32, %c618576397_i32, %c34358798_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c618576397_i32, %c1963286850_i32, %c768864186_i32, %c768864186_i32, %c1193819625_i32, %c618576397_i32, %c768864186_i32, %c34358798_i32, %c1963286850_i32, %c618576397_i32, %c1193819625_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c1963286850_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c34358798_i32, %c618576397_i32, %c34358798_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c34358798_i32, %c1193819625_i32, %c768864186_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c768864186_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c1193819625_i32, %c34358798_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c618576397_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c1963286850_i32, %c34358798_i32, %c1963286850_i32, %c1193819625_i32, %c34358798_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c768864186_i32, %c1193819625_i32, %c618576397_i32, %c34358798_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c34358798_i32, %c1963286850_i32, %c768864186_i32, %c1963286850_i32 : tensor<7x11x13xi32>
    %23 = scf.while (%arg2 = %alloc_19) : (memref<i16>) -> memref<i16> {
      scf.index_switch %c15 
      case 1 {
        %271 = index.sub %c4, %c1
        %272 = arith.remf %cst, %cst : f16
        %273 = math.tan %12 : tensor<7xf16>
        %alloca_54 = memref.alloca() : memref<11x13xf32>
        %274 = math.log %16 : tensor<7x11x13xf32>
        %cast = tensor.cast %6 : tensor<11x13xi16> to tensor<?x?xi16>
        %275 = math.floor %cst_3 : f32
        %276 = arith.xori %c1586311473_i64, %c1570961800_i64 : i64
        %277 = bufferization.to_tensor %alloc_11 : memref<8x11x8xi64>
        %278 = arith.ceildivsi %true_2, %true : i1
        %279 = arith.muli %false, %true_2 : i1
        %alloca_55 = memref.alloca() : memref<7xi1>
        %280 = arith.shrui %true, %false : i1
        %281 = index.sizeof
        %282 = math.round %cst : f16
        %283 = arith.shrui %c-9988_i16, %c-9988_i16 : i16
        scf.yield
      }
      default {
        %271 = math.roundeven %5 : tensor<7x11x13xf16>
        %272 = vector.broadcast %cst : f16 to vector<11x8xf16>
        %273 = vector.broadcast %cst : f16 to vector<8xf16>
        %dest, %accumulated_value = vector.scan <mul>, %272, %273 {inclusive = true, reduction_dim = 0 : i64} : vector<11x8xf16>, vector<8xf16>
        %274 = arith.mulf %cst_1, %cst_1 : f32
        %275 = math.tanh %cst : f16
        %276 = arith.negf %cst_0 : f16
        %277 = arith.ceildivsi %c1963286850_i32, %c1963286850_i32 : i32
        %278 = memref.load %alloc_10[%c4, %c1, %c2] : memref<7x11x13xi64>
        %279 = vector.broadcast %cst_0 : f16 to vector<11x8xf16>
        %280 = vector.broadcast %cst_0 : f16 to vector<8xf16>
        %dest_54, %accumulated_value_55 = vector.scan <minf>, %279, %280 {inclusive = false, reduction_dim = 0 : i64} : vector<11x8xf16>, vector<8xf16>
        %281 = index.sizeof
        %282 = math.copysign %12, %2 : tensor<7xf16>
        %283 = math.log10 %1 : tensor<7x11x13xf32>
        %284 = memref.load %arg2[] : memref<i16>
        %285 = arith.negf %cst : f16
        %286 = arith.cmpi sgt, %c-9988_i16, %c-9988_i16 : i16
        memref.copy %alloc_18, %alloc_8 : memref<11x13xi32> to memref<11x13xi32>
        %287 = vector.bitcast %20 : vector<8xi64> to vector<8xi64>
      }
      %262 = tensor.empty() : tensor<i16>
      %mapped_53 = linalg.map ins(%alloc_19, %alloc_19 : memref<i16>, memref<i16>) outs(%262 : tensor<i16>)
        (%in: i16, %in_54: i16) {
          %271 = tensor.empty() : tensor<7xi32>
          %272 = math.fpowi %2, %271 : tensor<7xf16>, tensor<7xi32>
          %273 = math.absi %14 : tensor<8x11x8xi16>
          %274 = index.add %c8, %c1
          %cast = tensor.cast %14 : tensor<8x11x8xi16> to tensor<?x?x?xi16>
          %275 = affine.load %alloc_18[%c8, %c15] : memref<11x13xi32>
          %276 = arith.floordivsi %c768864186_i32, %c768864186_i32 : i32
          %277 = arith.remf %cst_0, %cst_0 : f16
          bufferization.dealloc_tensor %22 : tensor<f16>
          %278 = arith.shrui %in, %c-9988_i16 : i16
          %279 = tensor.empty() : tensor<7xi32>
          %280 = bufferization.to_tensor %alloc_15 : memref<8x11x8xf16>
          %281 = vector.matrix_multiply %20, %20 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
          %alloca_55 = memref.alloca() : memref<7x11x13xi64>
          %282 = arith.floordivsi %c1963286850_i32, %c618576397_i32 : i32
          %283 = arith.xori %c-9988_i16, %in : i16
          %284 = vector.broadcast %c1711792754_i64 : i64 to vector<11x13xi64>
          %285 = vector.broadcast %false : i1 to vector<11x13xi1>
          %286 = vector.broadcast %c34358798_i32 : i32 to vector<11x13xi32>
          %287 = vector.gather %alloc_11[%c1, %c6, %c1] [%286], %285, %284 : memref<8x11x8xi64>, vector<11x13xi32>, vector<11x13xi1>, vector<11x13xi64> into vector<11x13xi64>
          %288 = math.expm1 %cst_0 : f16
          %splat_56 = tensor.splat %in_54 : tensor<8x11x8xi16>
          %289 = index.sizeof
          %290 = vector.broadcast %c5 : index to vector<7xindex>
          %291 = vector.broadcast %false : i1 to vector<7xi1>
          %292 = vector.broadcast %cst_3 : f32 to vector<7xf32>
          vector.scatter %alloc_5[%c5, %c4] [%290], %291, %292 : memref<11x13xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
          %293 = arith.remsi %c1963286850_i32, %c618576397_i32 : i32
          %false_57 = arith.constant false
          %294 = vector.transfer_read %9[%c15, %c2, %c11], %false_57 : tensor<8x11x8xi1>, vector<8x7xi1>
          affine.store %true, %alloc_6[%c10] : memref<7xi1>
          %295 = math.powf %cst_0, %cst : f16
          %296 = math.log10 %12 : tensor<7xf16>
          %true_58 = index.bool.constant true
          %297 = affine.apply affine_map<(d0) -> ((((d0 + 1) mod 4) floordiv 16) * -32)>(%274)
          %298 = memref.load %alloc_14[%c10, %c11] : memref<11x13xf32>
          %299 = vector.insertelement %c1711792754_i64, %20[%c5 : index] : vector<8xi64>
          %300 = math.sqrt %5 : tensor<7x11x13xf16>
          %splat_59 = tensor.splat %c1193819625_i32 : tensor<8x11x8xi32>
          %301 = arith.maxf %cst_3, %cst_1 : f32
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %263 = math.round %1 : tensor<7x11x13xf32>
      %264 = vector.splat %cst_3 : vector<7x11x13xf32>
      %265 = affine.if affine_set<(d0, d1) : ((d0 ceildiv 8 + d1 + 20) mod 8 == 0)>(%c3, %c2) -> memref<7x11x13xi64> {
        %271 = vector.create_mask %c13, %c9 : vector<11x13xi1>
        %272 = math.expm1 %1 : tensor<7x11x13xf32>
        %273 = index.ceildivu %c14, %c15
        %alloca_54 = memref.alloca() : memref<7x11x13xi16>
        %rank_55 = tensor.rank %13 : tensor<7x11x13xf32>
        %274 = arith.ceildivsi %c768864186_i32, %c618576397_i32 : i32
        %cast = tensor.cast %6 : tensor<11x13xi16> to tensor<?x?xi16>
        %275 = index.sizeof
        affine.yield %alloc_10 : memref<7x11x13xi64>
      } else {
        %271 = memref.atomic_rmw mins %c-9988_i16, %alloc_16[%c1, %c1, %c4] : (i16, memref<7x11x13xi16>) -> i16
        %272 = vector.multi_reduction <maxsi>, %20, %c1570961800_i64 [0] : vector<8xi64> to i64
        %273 = index.sub %c1, %c5
        %274 = arith.minui %true, %true_2 : i1
        %rank_54 = tensor.rank %3 : tensor<7x11x13xi16>
        %275 = vector.reduction <or>, %20 : vector<8xi64> into i64
        %276 = vector.multi_reduction <minui>, %20, %272 [0] : vector<8xi64> to i64
        %277 = math.fpowi %1, %from_elements : tensor<7x11x13xf32>, tensor<7x11x13xi32>
        affine.yield %alloc_10 : memref<7x11x13xi64>
      }
      %266 = vector.broadcast %c1586311473_i64 : i64 to vector<13xi64>
      %267 = vector.broadcast %false : i1 to vector<13xi1>
      %268 = vector.maskedload %alloc[%c0, %c2], %267, %266 : memref<11x13xi64>, vector<13xi1>, vector<13xi64> into vector<13xi64>
      %269 = vector.extract_strided_slice %268 {offsets = [4], sizes = [1], strides = [1]} : vector<13xi64> to vector<1xi64>
      %270 = arith.floordivsi %true, %true : i1
      scf.condition(%false) %alloc_19 : memref<i16>
    } do {
    ^bb0(%arg2: memref<i16>):
      %generated_53 = tensor.generate %c5, %c1 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %277 = bufferization.to_tensor %alloc_17 : memref<8x11x8xi32>
        %278 = index.castu %c4 : index to i32
        %279 = math.absf %cst : f16
        %280 = arith.maxf %cst_0, %cst : f16
        tensor.yield %true : i1
      } : tensor<?x?x8xi1>
      %262 = arith.shrui %true_2, %true_2 : i1
      %263 = scf.execute_region -> index {
        %277 = arith.muli %true, %true : i1
        %from_elements_55 = tensor.from_elements %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3 : tensor<8x11x8xf32>
        %inserted_56 = tensor.insert %c1963286850_i32 into %from_elements[%c0, %c9, %c9] : tensor<7x11x13xi32>
        %278 = vector.flat_transpose %20 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
        %279 = vector.splat %c12 : vector<7x11x13xindex>
        %280 = arith.maxui %c768864186_i32, %c618576397_i32 : i32
        %alloca_57 = memref.alloca() : memref<7x11x13xi1>
        %281 = vector.multi_reduction <or>, %278, %278 [] : vector<8xi64> to vector<8xi64>
        %282 = vector.reduction <maxui>, %278 : vector<8xi64> into i64
        %283 = math.absf %1 : tensor<7x11x13xf32>
        %284 = math.absf %16 : tensor<7x11x13xf32>
        %285 = vector.broadcast %c-9988_i16 : i16 to vector<8xi16>
        %286 = vector.broadcast %true_2 : i1 to vector<8xi1>
        %287 = vector.maskedload %alloc_16[%c4, %c2, %c1], %286, %285 : memref<7x11x13xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
        %extracted_58 = tensor.extract %14[%c3, %c3, %c5] : tensor<8x11x8xi16>
        %288 = index.maxu %c14, %c3
        %inserted_59 = tensor.insert %cst_0 into %22[] : tensor<f16>
        %289 = arith.xori %c768864186_i32, %c34358798_i32 : i32
        scf.yield %c0 : index
      }
      %264 = math.floor %2 : tensor<7xf16>
      %265 = arith.addi %c618576397_i32, %c618576397_i32 : i32
      %266 = vector.reduction <and>, %20 : vector<8xi64> into i64
      %267 = index.ceildivu %c15, %c1
      %268 = tensor.empty() : tensor<8x11x8xi32>
      %mapped_54 = linalg.map ins(%alloc_17, %alloc_17 : memref<8x11x8xi32>, memref<8x11x8xi32>) outs(%268 : tensor<8x11x8xi32>)
        (%in: i32, %in_55: i32) {
          memref.assume_alignment %alloc_7, 16 : memref<7xi32>
          %277 = math.fma %1, %1, %16 : tensor<7x11x13xf32>
          %expanded_56 = tensor.expand_shape %12 [[0, 1]] : tensor<7xf16> into tensor<7x1xf16>
          %278 = arith.maxui %c1586311473_i64, %c1586311473_i64 : i64
          %279 = math.cttz %15 : tensor<11x13xi16>
          %splat_57 = tensor.splat %true : tensor<7xi1>
          %280 = math.ctlz %4 : tensor<7xi16>
          %281 = affine.load %alloc_20[%c12] : memref<7xf16>
          %282 = vector.splat %c11 : vector<11x13xindex>
          %283 = arith.minf %cst_0, %281 : f16
          %284 = arith.negf %281 : f16
          %285 = index.add %c11, %c6
          %cast = tensor.cast %10 : tensor<8x11x8xi16> to tensor<?x?x?xi16>
          %286 = math.fma %1, %17, %1 : tensor<7x11x13xf32>
          %287 = memref.realloc %alloc_7 : memref<7xi32> to memref<7xi32>
          %288 = arith.ceildivsi %c618576397_i32, %c768864186_i32 : i32
          bufferization.dealloc_tensor %9 : tensor<8x11x8xi1>
          %c0_i32 = arith.constant 0 : i32
          %c0_i32_58 = arith.constant 0 : i32
          %289 = vector.transfer_read %from_elements[%c8, %c1, %c14], %c0_i32_58 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<7x11x13xi32>, vector<8xi32>
          %290 = vector.broadcast %c1711792754_i64 : i64 to vector<8x8xi64>
          %291 = vector.outerproduct %20, %20, %290 {kind = #vector.kind<maxui>} : vector<8xi64>, vector<8xi64>
          %292 = bufferization.to_tensor %alloc_5 : memref<11x13xf32>
          %293 = arith.maxui %c1193819625_i32, %c34358798_i32 : i32
          %294 = arith.xori %c34358798_i32, %in_55 : i32
          %alloca_59 = memref.alloca() : memref<7xi1>
          %rank_60 = tensor.rank %11 : tensor<11x13xi64>
          %295 = arith.negf %281 : f16
          %296 = bufferization.to_tensor %alloc_20 : memref<7xf16>
          %297 = vector.flat_transpose %20 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
          %298 = arith.ceildivsi %c1586311473_i64, %c1711792754_i64 : i64
          %299 = math.log2 %292 : tensor<11x13xf32>
          bufferization.dealloc_tensor %14 : tensor<8x11x8xi16>
          %300 = index.divs %c8, %c12
          %301 = arith.ceildivsi %c-9988_i16, %c-9988_i16 : i16
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %269 = vector.insertelement %c1586311473_i64, %20[%c5 : index] : vector<8xi64>
      %270 = arith.maxf %cst, %cst_0 : f16
      %271 = vector.broadcast %true : i1 to vector<i1>
      vector.transfer_write %271, %alloc_6[%c6] : vector<i1>, memref<7xi1>
      %272 = math.absi %8 : tensor<11x13xi1>
      %273 = index.sizeof
      %274 = arith.andi %c1711792754_i64, %c1570961800_i64 : i64
      %275 = index.divs %263, %c3
      %276 = memref.realloc %alloc_6 : memref<7xi1> to memref<8xi1>
      scf.yield %arg2 : memref<i16>
    }
    %24 = index.sub %c10, %c15
    %25 = vector.broadcast %c-9988_i16 : i16 to vector<8x11x8xi16>
    %26 = vector.broadcast %false : i1 to vector<8x11x8xi1>
    %27 = vector.broadcast %c768864186_i32 : i32 to vector<8x11x8xi32>
    %28 = vector.gather %3[%24, %c10, %c2] [%27], %26, %25 : tensor<7x11x13xi16>, vector<8x11x8xi32>, vector<8x11x8xi1>, vector<8x11x8xi16> into vector<8x11x8xi16>
    %29 = affine.load %alloc_20[%c5] : memref<7xf16>
    %alloca = memref.alloca() : memref<7xi16>
    %30 = vector.extract_strided_slice %25 {offsets = [5], sizes = [1], strides = [1]} : vector<8x11x8xi16> to vector<1x11x8xi16>
    %31 = math.tanh %12 : tensor<7xf16>
    %32 = index.casts %c0 : index to i32
    %33 = vector.extract_strided_slice %30 {offsets = [0, 5], sizes = [1, 6], strides = [1, 1]} : vector<1x11x8xi16> to vector<1x6x8xi16>
    affine.store %c618576397_i32, %alloc_8[%c9, %c9] : memref<11x13xi32>
    %34 = arith.maxui %c34358798_i32, %c34358798_i32 : i32
    %35 = arith.negf %cst : f16
    %36 = arith.shrsi %c618576397_i32, %c618576397_i32 : i32
    %37 = vector.extract_strided_slice %30 {offsets = [0], sizes = [1], strides = [1]} : vector<1x11x8xi16> to vector<1x11x8xi16>
    %38 = vector.insertelement %c1570961800_i64, %20[%24 : index] : vector<8xi64>
    memref.assume_alignment %alloc_4, 4 : memref<8x11x8xi1>
    %39 = vector.broadcast %c-9988_i16 : i16 to vector<11x8xi16>
    %40 = vector.insert %39, %28 [1] : vector<11x8xi16> into vector<8x11x8xi16>
    %41 = math.powf %22, %21 : tensor<f16>
    %from_elements_21 = tensor.from_elements %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64 : tensor<7xi64>
    %42 = tensor.empty() : tensor<8x11x8xi16>
    %mapped = linalg.map ins(%14, %14, %14 : tensor<8x11x8xi16>, tensor<8x11x8xi16>, tensor<8x11x8xi16>) outs(%42 : tensor<8x11x8xi16>)
      (%in: i16, %in_53: i16, %in_54: i16) {
        %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%42 : tensor<8x11x8xi16>) {
        ^bb0(%out: i16):
          %290 = index.divu %c14, %c9
          %291 = arith.negf %cst_3 : f32
          %splat_58 = tensor.splat %c1963286850_i32 : tensor<8x11x8xi32>
          %alloca_59 = memref.alloca() : memref<8x11x8xf32>
          %alloc_60 = memref.alloc() : memref<7x11x13xf16>
          %292 = index.maxu %c14, %c9
          %293 = math.tan %2 : tensor<7xf16>
          %294 = memref.realloc %alloc_7 : memref<7xi32> to memref<7xi32>
          %from_elements_61 = tensor.from_elements %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64 : tensor<7xi64>
          %295 = math.expm1 %17 : tensor<7x11x13xf32>
          %cast = tensor.cast %8 : tensor<11x13xi1> to tensor<?x?xi1>
          %296 = vector.broadcast %c-9988_i16 : i16 to vector<8xi16>
          %297 = vector.insert %296, %39 [1] : vector<8xi16> into vector<11x8xi16>
          %298 = memref.atomic_rmw minu %c1963286850_i32, %alloc_17[%c1, %c9, %c2] : (i32, memref<8x11x8xi32>) -> i32
          %299 = math.tan %cst : f16
          %300 = arith.cmpi ugt, %c1570961800_i64, %c1570961800_i64 : i64
          %301 = arith.andi %c34358798_i32, %c1963286850_i32 : i32
          %302 = math.copysign %2, %12 : tensor<7xf16>
          %303 = math.log %cst : f16
          %304 = math.tan %cst_1 : f32
          %305 = vector.bitcast %26 : vector<8x11x8xi1> to vector<8x11x8xi1>
          %306 = index.ceildivu %c1, %c8
          %307 = arith.maxf %29, %cst_0 : f16
          %cast_62 = tensor.cast %4 : tensor<7xi16> to tensor<?xi16>
          %308 = vector.load %alloc[%c2, %c2] : memref<11x13xi64>, vector<11x13xi64>
          %309 = memref.load %alloc_16[%c3, %c9, %c10] : memref<7x11x13xi16>
          %310 = arith.divf %cst_0, %cst_0 : f16
          %alloca_63 = memref.alloca() : memref<7xi1>
          %311 = index.maxu %c6, %c10
          %312 = arith.ceildivsi %c1193819625_i32, %c618576397_i32 : i32
          %313 = vector.create_mask %290 : vector<7xi1>
          %314 = vector.broadcast %c618576397_i32 : i32 to vector<8x8xi32>
          %dest, %accumulated_value = vector.scan <add>, %27, %314 {inclusive = false, reduction_dim = 1 : i64} : vector<8x11x8xi32>, vector<8x8xi32>
          %315 = math.exp2 %13 : tensor<7x11x13xf32>
          linalg.yield %in_53 : i16
        } -> tensor<8x11x8xi16>
        %263 = vector.load %alloc_9[%c0, %c0, %c3] : memref<8x11x8xi16>, vector<8x11x8xi16>
        %264 = arith.addf %cst_0, %cst_0 : f16
        %generated_55 = tensor.generate %c15, %c7 {
        ^bb0(%arg2: index, %arg3: index, %arg4: index):
          %290 = index.ceildivu %c8, %arg4
          %291 = arith.minsi %true, %true_2 : i1
          %292 = memref.atomic_rmw maxf %cst, %alloc_12[%c4, %c9] : (f16, memref<11x13xf16>) -> f16
          %293 = index.maxu %c14, %c14
          tensor.yield %29 : f16
        } : tensor<?x?x13xf16>
        %265 = vector.broadcast %in_53 : i16 to vector<11x8x11x8xi16>
        %266 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %263, %25, %265 : vector<8x11x8xi16>, vector<8x11x8xi16> into vector<11x8x11x8xi16>
        %267 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 64)>(%c5, %c5, %c9, %c14)
        %268 = arith.mulf %29, %cst_0 : f16
        %269 = arith.remui %c1711792754_i64, %c1570961800_i64 : i64
        %270 = vector.flat_transpose %20 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
        %271 = math.expm1 %2 : tensor<7xf16>
        %272 = arith.floordivsi %c1193819625_i32, %c768864186_i32 : i32
        %273 = math.fpowi %5, %from_elements : tensor<7x11x13xf16>, tensor<7x11x13xi32>
        %274 = vector.load %alloc_18[%c4, %c5] : memref<11x13xi32>, vector<7x11x13xi32>
        %splat_56 = tensor.splat %in_53 : tensor<8x11x8xi16>
        %275 = vector.reduction <or>, %20 : vector<8xi64> into i64
        %276 = math.fpowi %16, %from_elements : tensor<7x11x13xf32>, tensor<7x11x13xi32>
        %277 = tensor.empty() : tensor<7xi32>
        %278 = math.fpowi %12, %277 : tensor<7xf16>, tensor<7xi32>
        %279 = arith.cmpi uge, %c618576397_i32, %c34358798_i32 : i32
        %280 = math.cos %16 : tensor<7x11x13xf32>
        affine.for %arg2 = 0 to 79 {
        }
        %281 = math.absf %5 : tensor<7x11x13xf16>
        %282 = math.cos %29 : f16
        %283 = arith.remf %cst, %cst : f16
        %generated_57 = tensor.generate %c6, %c5 {
        ^bb0(%arg2: index, %arg3: index, %arg4: index):
          %290 = arith.addi %false, %true_2 : i1
          memref.copy %alloc_18, %alloc_8 : memref<11x13xi32> to memref<11x13xi32>
          %291 = arith.cmpi eq, %true_2, %true : i1
          %292 = vector.reduction <minsi>, %20 : vector<8xi64> into i64
          tensor.yield %c34358798_i32 : i32
        } : tensor<?x?x8xi32>
        scf.execute_region {
          %290 = index.sizeof
          %291 = vector.reduction <xor>, %20 : vector<8xi64> into i64
          %true_58 = index.bool.constant true
          %292 = vector.bitcast %263 : vector<8x11x8xi16> to vector<8x11x8xi16>
          %293 = arith.cmpi ugt, %c618576397_i32, %c1963286850_i32 : i32
          %294 = tensor.empty() : tensor<i32>
          %295 = math.fpowi %21, %294 : tensor<f16>, tensor<i32>
          %c1_i16 = arith.constant 1 : i16
          %296 = vector.transfer_read %splat_56[%c4, %c7, %c1], %c1_i16 : tensor<8x11x8xi16>, vector<i16>
          %297 = arith.maxf %cst_0, %29 : f16
          %298 = affine.load %alloc_4[%c13, %c11, %c8] : memref<8x11x8xi1>
          %cast = tensor.cast %13 : tensor<7x11x13xf32> to tensor<?x?x?xf32>
          %299 = index.add %c13, %c7
          %300 = affine.apply affine_map<(d0, d1) -> (d0 floordiv 128)>(%c4, %299)
          %301 = math.floor %16 : tensor<7x11x13xf32>
          %302 = bufferization.to_tensor %alloc_15 : memref<8x11x8xf16>
          %303 = math.atan2 %cst_3, %cst_1 : f32
          %304 = arith.remui %c1193819625_i32, %c34358798_i32 : i32
          scf.yield
        }
        %284 = arith.maxf %cst, %cst : f16
        scf.if %false {
          %290 = vector.insertelement %c1586311473_i64, %270[%c3 : index] : vector<8xi64>
          %291 = arith.remui %c1193819625_i32, %c618576397_i32 : i32
          %292 = math.fma %1, %16, %13 : tensor<7x11x13xf32>
          %293 = vector.reduction <minui>, %270 : vector<8xi64> into i64
          %294 = vector.extract_strided_slice %26 {offsets = [6, 8], sizes = [1, 2], strides = [1, 1]} : vector<8x11x8xi1> to vector<1x2x8xi1>
          %295 = math.round %16 : tensor<7x11x13xf32>
          %296 = arith.xori %c618576397_i32, %c1193819625_i32 : i32
          %297 = math.copysign %cst_3, %cst_1 : f32
        }
        %285 = index.add %c7, %c11
        %286 = math.exp2 %13 : tensor<7x11x13xf32>
        %287 = memref.realloc %alloc_6 : memref<7xi1> to memref<8xi1>
        %288 = math.exp2 %13 : tensor<7x11x13xf32>
        %289 = index.ceildivu %24, %c6
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %43 = vector.flat_transpose %20 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
    %44 = arith.shrui %c1570961800_i64, %c1586311473_i64 : i64
    scf.execute_region {
      %262 = vector.insertelement %c1586311473_i64, %43[%24 : index] : vector<8xi64>
      %263 = memref.atomic_rmw addf %cst_0, %alloc_20[%c4] : (f16, memref<7xf16>) -> f16
      %264 = math.fma %2, %12, %12 : tensor<7xf16>
      %265 = scf.execute_region -> tensor<8x11x8xf16> {
        %280 = vector.broadcast %c-9988_i16 : i16 to vector<8xi16>
        %281 = vector.multi_reduction <maxsi>, %25, %280 [0, 1] : vector<8x11x8xi16> to vector<8xi16>
        %282 = math.round %13 : tensor<7x11x13xf32>
        %283 = vector.broadcast %c14 : index to vector<13xindex>
        %284 = vector.broadcast %false : i1 to vector<13xi1>
        %285 = vector.broadcast %c-9988_i16 : i16 to vector<13xi16>
        vector.scatter %alloc_9[%c1, %c6, %c6] [%283], %284, %285 : memref<8x11x8xi16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
        %286 = math.roundeven %5 : tensor<7x11x13xf16>
        %287 = math.log %cst_0 : f16
        bufferization.dealloc_tensor %4 : tensor<7xi16>
        %alloc_54 = memref.alloc() : memref<11x13xi16>
        memref.tensor_store %6, %alloc_54 : memref<11x13xi16>
        %from_elements_55 = tensor.from_elements %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_3 : tensor<7xf32>
        %288 = arith.muli %c1586311473_i64, %c1586311473_i64 : i64
        %289 = vector.broadcast %false : i1 to vector<7xi1>
        %290 = vector.maskedload %alloc_6[%c5], %289, %289 : memref<7xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
        bufferization.dealloc_tensor %5 : tensor<7x11x13xf16>
        %291 = index.sizeof
        %292 = arith.xori %false, %false : i1
        %splat_56 = tensor.splat %c-9988_i16 : tensor<7x11x13xi16>
        %293 = math.log2 %29 : f16
        %294 = index.castu %c0 : index to i32
        %295 = tensor.empty() : tensor<8x11x8xf16>
        scf.yield %295 : tensor<8x11x8xf16>
      }
      %266 = arith.addi %c1586311473_i64, %c1570961800_i64 : i64
      %267 = arith.minf %cst_1, %cst_3 : f32
      %268 = math.log2 %1 : tensor<7x11x13xf32>
      %269 = math.absi %transposed : tensor<13x11xi64>
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %270 = vector.transfer_read %from_elements_21[%c4], %c0_i64 : tensor<7xi64>, vector<i64>
      %271 = vector.flat_transpose %20 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
      %272 = arith.shrui %c1_i64, %c1586311473_i64 : i64
      %splat_53 = tensor.splat %c618576397_i32 : tensor<7x11x13xi32>
      %273 = vector.broadcast %cst : f16 to vector<7xf16>
      %274 = vector.broadcast %true_2 : i1 to vector<7xi1>
      %275 = vector.broadcast %c1963286850_i32 : i32 to vector<7xi32>
      %276 = vector.gather %5[%c10, %c4, %c8] [%275], %274, %273 : tensor<7x11x13xf16>, vector<7xi32>, vector<7xi1>, vector<7xf16> into vector<7xf16>
      %277 = index.ceildivu %c12, %c2
      %278 = arith.cmpi sge, %c1193819625_i32, %c768864186_i32 : i32
      %279 = arith.xori %c1570961800_i64, %c1586311473_i64 : i64
      scf.yield
    }
    %45 = vector.reduction <xor>, %20 : vector<8xi64> into i64
    memref.assume_alignment %alloc_18, 1 : memref<11x13xi32>
    %46 = arith.ceildivsi %c1711792754_i64, %c1570961800_i64 : i64
    %47 = math.log1p %cst_3 : f32
    %48 = affine.if affine_set<(d0, d1) : ((d0 ceildiv 8 + d1 + 20) mod 8 == 0)>(%c12, %c1) -> i16 {
      %262 = arith.floordivsi %c-9988_i16, %c-9988_i16 : i16
      %splat_53 = tensor.splat %cst : tensor<7xf16>
      %263 = math.cttz %15 : tensor<11x13xi16>
      %264 = arith.maxui %c1570961800_i64, %c1570961800_i64 : i64
      memref.tensor_store %splat_53, %alloc_20 : memref<7xf16>
      %265 = arith.maxf %cst, %cst_0 : f16
      %collapsed_54 = tensor.collapse_shape %8 [[0, 1]] : tensor<11x13xi1> into tensor<143xi1>
      %266 = arith.minf %cst_3, %cst_1 : f32
      affine.yield %c-9988_i16 : i16
    } else {
      %262 = bufferization.to_tensor %alloc : memref<11x13xi64>
      %263 = math.log %29 : f16
      %264 = math.cttz %transposed : tensor<13x11xi64>
      %265 = math.log %29 : f16
      %266 = memref.atomic_rmw muli %c1586311473_i64, %alloc_11[%c2, %c8, %c4] : (i64, memref<8x11x8xi64>) -> i64
      %267 = math.fma %5, %5, %5 : tensor<7x11x13xf16>
      %cast = tensor.cast %0 : tensor<7x11x13xi64> to tensor<?x?x?xi64>
      %268 = arith.shrui %c34358798_i32, %c34358798_i32 : i32
      affine.yield %c-9988_i16 : i16
    }
    %49 = index.castu %c4 : index to i32
    %alloca_22 = memref.alloca() : memref<7x11x13xf32>
    %50 = tensor.empty() : tensor<7x11x13xi64>
    %mapped_23 = linalg.map ins(%0, %0 : tensor<7x11x13xi64>, tensor<7x11x13xi64>) outs(%50 : tensor<7x11x13xi64>)
      (%in: i64, %in_53: i64) {
        %262 = arith.muli %in_53, %c1586311473_i64 : i64
        %263 = arith.negf %cst : f16
        %264 = vector.broadcast %in_53 : i64 to vector<8x8xi64>
        %265 = vector.outerproduct %43, %43, %264 {kind = #vector.kind<mul>} : vector<8xi64>, vector<8xi64>
        %266 = vector.broadcast %c-9988_i16 : i16 to vector<6x8xi16>
        %dest, %accumulated_value = vector.scan <minsi>, %33, %266 {inclusive = false, reduction_dim = 0 : i64} : vector<1x6x8xi16>, vector<6x8xi16>
        %267 = affine.if affine_set<(d0, d1) : ((d1 - 64) * 2048 == 0)>(%c3, %c9) -> memref<11x13xi16> {
          %292 = memref.atomic_rmw minf %cst_0, %alloc_12[%c5, %c11] : (f16, memref<11x13xf16>) -> f16
          %293 = index.sizeof
          %294 = index.sub %24, %c1
          %295 = vector.splat %c12 : vector<8x11x8xindex>
          %296 = math.log10 %cst : f16
          %297 = math.cttz %false : i1
          %298 = index.ceildivu %c8, %c3
          %299 = vector.extract_strided_slice %27 {offsets = [1], sizes = [2], strides = [1]} : vector<8x11x8xi32> to vector<2x11x8xi32>
          %alloc_57 = memref.alloc() : memref<11x13xi16>
          affine.yield %alloc_57 : memref<11x13xi16>
        } else {
          %292 = math.cos %2 : tensor<7xf16>
          %293 = math.fma %5, %5, %5 : tensor<7x11x13xf16>
          %294 = math.tan %12 : tensor<7xf16>
          %295 = math.tan %cst : f16
          %296 = arith.floordivsi %in, %in_53 : i64
          memref.tensor_store %7, %alloc_16 : memref<7x11x13xi16>
          %297 = arith.minf %cst_1, %cst_1 : f32
          %298 = math.expm1 %29 : f16
          %alloc_57 = memref.alloc() : memref<11x13xi16>
          affine.yield %alloc_57 : memref<11x13xi16>
        }
        %268 = arith.remui %c-9988_i16, %c-9988_i16 : i16
        %269 = math.absi %14 : tensor<8x11x8xi16>
        scf.execute_region {
          %292 = arith.negf %cst_1 : f32
          %293 = arith.minf %cst_3, %cst_3 : f32
          %294 = math.fma %13, %13, %17 : tensor<7x11x13xf32>
          %295 = vector.insertelement %c1711792754_i64, %43[%24 : index] : vector<8xi64>
          %296 = index.add %c7, %c14
          %297 = arith.muli %c768864186_i32, %c768864186_i32 : i32
          %298 = memref.load %alloc_4[%c6, %c0, %c3] : memref<8x11x8xi1>
          %299 = math.exp2 %cst_1 : f32
          %alloc_57 = memref.alloc() : memref<7xi32>
          memref.copy %alloc_7, %alloc_57 : memref<7xi32> to memref<7xi32>
          %300 = math.log10 %13 : tensor<7x11x13xf32>
          %301 = arith.cmpi ule, %true, %true_2 : i1
          %302 = affine.load %alloc_8[%c3, %c1] : memref<11x13xi32>
          %splat_58 = tensor.splat %true_2 : tensor<7x11x13xi1>
          %303 = index.ceildivu %24, %24
          %304 = math.cttz %6 : tensor<11x13xi16>
          %305 = vector.reduction <minsi>, %43 : vector<8xi64> into i64
          scf.yield
        }
        %270 = vector.bitcast %43 : vector<8xi64> to vector<8xi64>
        %271 = index.mul %c2, %c4
        %272 = arith.andi %c1570961800_i64, %c1586311473_i64 : i64
        %273 = index.ceildivu %c3, %c3
        %274 = arith.divf %29, %cst : f16
        %275 = scf.while (%arg2 = %alloc_8) : (memref<11x13xi32>) -> memref<11x13xi32> {
          %292 = math.fpowi %5, %from_elements : tensor<7x11x13xf16>, tensor<7x11x13xi32>
          %inserted_57 = tensor.insert %c-9988_i16 into %6[%c5, %c12] : tensor<11x13xi16>
          %293 = arith.shrui %c-9988_i16, %c-9988_i16 : i16
          %294 = math.fpowi %1, %from_elements : tensor<7x11x13xf32>, tensor<7x11x13xi32>
          %295 = arith.minf %cst, %cst : f16
          %296 = index.castu %c11 : index to i32
          %297 = vector.broadcast %c-9988_i16 : i16 to vector<11xi16>
          %298 = vector.transfer_write %297, %6[%c12, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<11xi16>, tensor<11x13xi16>
          %299 = vector.broadcast %c-9988_i16 : i16 to vector<1xi16>
          %300 = vector.multi_reduction <add>, %30, %299 [1, 2] : vector<1x11x8xi16> to vector<1xi16>
          scf.condition(%true) %alloc_18 : memref<11x13xi32>
        } do {
        ^bb0(%arg2: memref<11x13xi32>):
          %292 = index.sizeof
          %293 = vector.load %alloc_10[%c5, %c8, %c4] : memref<7x11x13xi64>, vector<7x11x13xi64>
          %294 = tensor.empty(%c6, %c15) : tensor<?x11x?xi16>
          %295 = vector.splat %c14 : vector<8x11x8xindex>
          %296 = math.log1p %2 : tensor<7xf16>
          %297 = vector.extract_strided_slice %270 {offsets = [2], sizes = [4], strides = [1]} : vector<8xi64> to vector<4xi64>
          %298 = math.absi %7 : tensor<7x11x13xi16>
          %299 = math.atan2 %cst, %cst : f16
          %300 = vector.broadcast %c3 : index to vector<7xindex>
          %301 = vector.broadcast %true : i1 to vector<7xi1>
          %302 = vector.broadcast %c1193819625_i32 : i32 to vector<7xi32>
          vector.scatter %alloc_18[%c4, %c4] [%300], %301, %302 : memref<11x13xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
          %from_elements_57 = tensor.from_elements %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c1193819625_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c768864186_i32, %c34358798_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c768864186_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c1193819625_i32, %c768864186_i32, %c34358798_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c1963286850_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c768864186_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c1963286850_i32, %c1963286850_i32, %c34358798_i32, %c34358798_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c34358798_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c768864186_i32, %c768864186_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c34358798_i32, %c1963286850_i32, %c1193819625_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c34358798_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c1193819625_i32, %c1963286850_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c34358798_i32, %c1963286850_i32, %c34358798_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c34358798_i32, %c1963286850_i32, %c768864186_i32, %c1193819625_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c34358798_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c1193819625_i32, %c1193819625_i32, %c618576397_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c768864186_i32, %c768864186_i32, %c1963286850_i32, %c1193819625_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c768864186_i32, %c34358798_i32, %c1193819625_i32, %c618576397_i32, %c1963286850_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c768864186_i32, %c768864186_i32, %c1963286850_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c1963286850_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c34358798_i32, %c1193819625_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c1193819625_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c1193819625_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c618576397_i32, %c34358798_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c1193819625_i32, %c1963286850_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c1193819625_i32, %c1193819625_i32, %c1193819625_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c34358798_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c1193819625_i32, %c34358798_i32, %c618576397_i32, %c1963286850_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c618576397_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c34358798_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c34358798_i32, %c34358798_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c34358798_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c618576397_i32, %c34358798_i32, %c618576397_i32, %c618576397_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c34358798_i32, %c1963286850_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c34358798_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c34358798_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c1963286850_i32, %c34358798_i32, %c34358798_i32, %c1193819625_i32, %c1193819625_i32, %c1193819625_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c34358798_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c618576397_i32, %c1193819625_i32, %c34358798_i32, %c34358798_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c1963286850_i32, %c768864186_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c618576397_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c34358798_i32, %c618576397_i32, %c34358798_i32, %c1193819625_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c34358798_i32, %c1193819625_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c618576397_i32, %c34358798_i32, %c1193819625_i32, %c618576397_i32, %c34358798_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c768864186_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c1193819625_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c768864186_i32, %c618576397_i32, %c1193819625_i32, %c1193819625_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c1193819625_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c1963286850_i32, %c1193819625_i32, %c618576397_i32, %c1193819625_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c1193819625_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c1963286850_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c34358798_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c618576397_i32, %c34358798_i32, %c1193819625_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c34358798_i32, %c1963286850_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c768864186_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c618576397_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c34358798_i32, %c618576397_i32, %c1963286850_i32, %c1963286850_i32, %c768864186_i32, %c768864186_i32, %c1193819625_i32, %c768864186_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c34358798_i32, %c1963286850_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c618576397_i32, %c618576397_i32, %c768864186_i32, %c1193819625_i32, %c618576397_i32, %c618576397_i32, %c34358798_i32, %c768864186_i32, %c1193819625_i32, %c1963286850_i32, %c34358798_i32, %c1963286850_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c618576397_i32, %c1963286850_i32, %c1193819625_i32, %c768864186_i32, %c768864186_i32, %c1963286850_i32, %c1963286850_i32, %c34358798_i32, %c618576397_i32, %c34358798_i32, %c34358798_i32, %c34358798_i32, %c618576397_i32, %c768864186_i32, %c618576397_i32, %c34358798_i32, %c618576397_i32, %c1963286850_i32, %c1193819625_i32, %c34358798_i32, %c768864186_i32, %c1963286850_i32, %c618576397_i32, %c1963286850_i32, %c618576397_i32, %c618576397_i32, %c1963286850_i32 : tensor<8x11x8xi32>
          %303 = arith.remf %cst_1, %cst_1 : f32
          %304 = index.maxu %c3, %c8
          %305 = arith.andi %c618576397_i32, %c1193819625_i32 : i32
          %306 = arith.xori %true_2, %false : i1
          %307 = arith.cmpi slt, %in, %c1711792754_i64 : i64
          %true_58 = index.bool.constant true
          scf.yield %alloc_18 : memref<11x13xi32>
        }
        %276 = vector.matrix_multiply %43, %43 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
        %277 = vector.load %alloc_8[%c2, %c4] : memref<11x13xi32>, vector<11x13xi32>
        %278 = arith.cmpi ugt, %false, %true_2 : i1
        %expanded_54 = tensor.expand_shape %16 [[0], [1], [2, 3]] : tensor<7x11x13xf32> into tensor<7x11x13x1xf32>
        %279 = index.sub %c4, %c14
        %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%50 : tensor<7x11x13xi64>) {
        ^bb0(%out: i64):
          %292 = vector.bitcast %270 : vector<8xi64> to vector<8xi64>
          %293 = math.tanh %22 : tensor<f16>
          %294 = arith.muli %false, %false : i1
          %295 = vector.broadcast %29 : f16 to vector<f16>
          %296 = vector.transfer_write %295, %5[%c6, %c14, %c4] : vector<f16>, tensor<7x11x13xf16>
          %297 = arith.ceildivsi %c1711792754_i64, %c1570961800_i64 : i64
          %298 = vector.insert %c1570961800_i64, %43 [3] : i64 into vector<8xi64>
          %c1_i16 = arith.constant 1 : i16
          %299 = vector.transfer_read %14[%24, %c8, %c11], %c1_i16 : tensor<8x11x8xi16>, vector<8x8xi16>
          %300 = index.ceildivu %c1, %c0
          %extracted_57 = tensor.extract %22[] : tensor<f16>
          %301 = arith.andi %c1193819625_i32, %c618576397_i32 : i32
          %302 = vector.bitcast %33 : vector<1x6x8xi16> to vector<1x6x8xi16>
          %303 = vector.flat_transpose %20 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
          %304 = math.log2 %12 : tensor<7xf16>
          %305 = index.ceildivs %c8, %24
          %306 = math.ctlz %18 : tensor<13x11xi64>
          %307 = math.ctlz %10 : tensor<8x11x8xi16>
          %308 = arith.minf %cst_0, %cst : f16
          %309 = arith.floordivsi %true, %true : i1
          %310 = math.powf %5, %5 : tensor<7x11x13xf16>
          %inserted_58 = tensor.insert %c-9988_i16 into %3[%c1, %c6, %c7] : tensor<7x11x13xi16>
          %311 = arith.divui %c618576397_i32, %c34358798_i32 : i32
          %312 = math.expm1 %13 : tensor<7x11x13xf32>
          %313 = bufferization.clone %alloc_10 : memref<7x11x13xi64> to memref<7x11x13xi64>
          %314 = index.maxu %c2, %c0
          %315 = index.casts %300 : index to i32
          %316 = math.absi %0 : tensor<7x11x13xi64>
          %317 = vector.splat %c1711792754_i64 : vector<11x13xi64>
          %318 = arith.negf %29 : f16
          %false_59 = index.bool.constant false
          %319 = vector.broadcast %false : i1 to vector<7x11x13xi1>
          %320 = vector.broadcast %c768864186_i32 : i32 to vector<7x11x13xi32>
          %321 = vector.gather %alloc_4[%c9, %305, %c8] [%320], %319, %319 : memref<8x11x8xi1>, vector<7x11x13xi32>, vector<7x11x13xi1>, vector<7x11x13xi1> into vector<7x11x13xi1>
          %322 = math.powf %5, %5 : tensor<7x11x13xf16>
          %expanded_60 = tensor.expand_shape %2 [[0, 1]] : tensor<7xf16> into tensor<7x1xf16>
          linalg.yield %c1711792754_i64 : i64
        } -> tensor<7x11x13xi64>
        %281 = index.castu %c34358798_i32 : i32 to index
        %282 = arith.maxsi %c34358798_i32, %c1963286850_i32 : i32
        %alloc_55 = memref.alloc() : memref<7x11x13xi1>
        memref.copy %alloc_13, %alloc_55 : memref<7x11x13xi1> to memref<7x11x13xi1>
        %rank_56 = tensor.rank %0 : tensor<7x11x13xi64>
        %283 = vector.broadcast %c1586311473_i64 : i64 to vector<8x8xi64>
        %284 = vector.outerproduct %43, %20, %283 {kind = #vector.kind<maxui>} : vector<8xi64>, vector<8xi64>
        %285 = vector.insertelement %in_53, %270[%c4 : index] : vector<8xi64>
        %286 = memref.load %alloc_5[%c10, %c1] : memref<11x13xf32>
        %287 = index.divs %c0, %c11
        %288 = vector.bitcast %276 : vector<1xi64> to vector<1xi64>
        %289 = arith.maxf %cst_3, %cst_3 : f32
        %290 = bufferization.to_memref %11 : memref<11x13xi64>
        %291 = math.powf %1, %1 : tensor<7x11x13xf32>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %51 = vector.create_mask %c1, %c10 : vector<11x13xi1>
    %52 = index.sub %c15, %c9
    %53 = arith.remf %29, %29 : f16
    %rank = tensor.rank %16 : tensor<7x11x13xf32>
    %expanded = tensor.expand_shape %42 [[0], [1], [2, 3]] : tensor<8x11x8xi16> into tensor<8x11x8x1xi16>
    %54 = math.round %5 : tensor<7x11x13xf16>
    %55 = math.round %22 : tensor<f16>
    %56 = arith.remf %cst_0, %29 : f16
    %57 = index.add %c6, %c5
    %splat = tensor.splat %true : tensor<11x13xi1>
    %58 = math.floor %12 : tensor<7xf16>
    %59 = arith.addi %c1586311473_i64, %c1711792754_i64 : i64
    %60 = vector.insertelement %c1570961800_i64, %43[%c9 : index] : vector<8xi64>
    %61 = arith.maxf %cst_0, %29 : f16
    %62 = index.divu %57, %c7
    %63 = vector.flat_transpose %20 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
    %64 = affine.apply affine_map<(d0, d1, d2, d3) -> (((d2 + d1) floordiv 16) floordiv 64)>(%rank, %57, %c10, %52)
    %65 = affine.apply affine_map<(d0, d1, d2) -> (d1 floordiv 8 - 128)>(%c3, %c5, %c0)
    %66 = vector.broadcast %cst_3 : f32 to vector<11x13xf32>
    %67 = vector.fma %66, %66, %66 : vector<11x13xf32>
    %alloc_24 = memref.alloc() : memref<i16>
    memref.copy %alloc_19, %alloc_24 : memref<i16> to memref<i16>
    %68 = vector.flat_transpose %43 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
    %69 = math.tanh %1 : tensor<7x11x13xf32>
    %70 = math.fma %17, %1, %1 : tensor<7x11x13xf32>
    %71 = math.ctlz %50 : tensor<7x11x13xi64>
    %72 = arith.muli %c1711792754_i64, %c1586311473_i64 : i64
    %73 = tensor.empty() : tensor<7xf32>
    %74 = vector.broadcast %cst_3 : f32 to vector<7x11x13xf32>
    %75 = vector.broadcast %true : i1 to vector<7x11x13xi1>
    %76 = vector.broadcast %c1963286850_i32 : i32 to vector<7x11x13xi32>
    %77 = vector.gather %73[%c1] [%76], %75, %74 : tensor<7xf32>, vector<7x11x13xi32>, vector<7x11x13xi1>, vector<7x11x13xf32> into vector<7x11x13xf32>
    %78 = index.ceildivu %52, %c11
    %79 = vector.broadcast %cst_3 : f32 to vector<11x13xf32>
    %80 = vector.fma %79, %79, %79 : vector<11x13xf32>
    %expanded_25 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<7x11x13xi64> into tensor<7x11x13x1xi64>
    %81 = arith.floordivsi %c1193819625_i32, %c618576397_i32 : i32
    %82 = vector.load %alloc[%c9, %c1] : memref<11x13xi64>, vector<7x11x13xi64>
    %83 = math.cttz %15 : tensor<11x13xi16>
    %84 = vector.broadcast %c1 : index to vector<8xindex>
    %85 = vector.broadcast %false : i1 to vector<8xi1>
    %86 = vector.broadcast %cst_3 : f32 to vector<8xf32>
    vector.scatter %alloc_14[%c9, %c0] [%84], %85, %86 : memref<11x13xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
    %87 = math.fma %73, %73, %73 : tensor<7xf32>
    scf.execute_region {
      %262 = vector.load %alloc_16[%c1, %c10, %c6] : memref<7x11x13xi16>, vector<7x11x13xi16>
      %263 = scf.index_switch %c1 -> memref<8x11x8xi16> 
      case 1 {
        %279 = vector.insert %c1711792754_i64, %68 [2] : i64 into vector<8xi64>
        %280 = vector.broadcast %c-9988_i16 : i16 to vector<8x8xi16>
        %dest, %accumulated_value = vector.scan <minsi>, %28, %280 {inclusive = false, reduction_dim = 1 : i64} : vector<8x11x8xi16>, vector<8x8xi16>
        %281 = arith.xori %c768864186_i32, %c1963286850_i32 : i32
        %282 = math.roundeven %22 : tensor<f16>
        %283 = index.sub %c11, %62
        %284 = index.divu %c8, %65
        %285 = arith.shrsi %c1193819625_i32, %c768864186_i32 : i32
        %286 = math.powf %5, %5 : tensor<7x11x13xf16>
        %287 = index.casts %c1570961800_i64 : i64 to index
        %expanded_54 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<11x13xi16> into tensor<11x13x1xi16>
        %288 = index.add %c0, %c13
        %289 = math.log1p %12 : tensor<7xf16>
        %290 = index.maxu %c1, %62
        %291 = arith.floordivsi %c1193819625_i32, %c1193819625_i32 : i32
        %292 = math.exp2 %cst_1 : f32
        %293 = memref.load %alloc_10[%c4, %c7, %c5] : memref<7x11x13xi64>
        scf.yield %alloc_9 : memref<8x11x8xi16>
      }
      case 2 {
        %279 = math.floor %16 : tensor<7x11x13xf32>
        %280 = math.tan %cst : f16
        %281 = vector.load %alloc_9[%c4, %c6, %c3] : memref<8x11x8xi16>, vector<7x11x13xi16>
        %cast = tensor.cast %10 : tensor<8x11x8xi16> to tensor<?x?x?xi16>
        %282 = math.ctlz %50 : tensor<7x11x13xi64>
        %283 = arith.shrsi %c1586311473_i64, %c1570961800_i64 : i64
        %284 = math.cttz %15 : tensor<11x13xi16>
        %285 = index.sub %c4, %c15
        %286 = math.expm1 %2 : tensor<7xf16>
        %287 = vector.multi_reduction <or>, %63, %c1711792754_i64 [0] : vector<8xi64> to i64
        %288 = index.sizeof
        %289 = vector.load %alloc_17[%c3, %c2, %c1] : memref<8x11x8xi32>, vector<8x11x8xi32>
        %290 = index.sizeof
        %291 = index.casts %c768864186_i32 : i32 to index
        %292 = arith.ceildivsi %c618576397_i32, %c34358798_i32 : i32
        %293 = vector.flat_transpose %63 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
        scf.yield %alloc_9 : memref<8x11x8xi16>
      }
      case 3 {
        %279 = vector.bitcast %33 : vector<1x6x8xi16> to vector<1x6x8xf16>
        %280 = math.ctlz %9 : tensor<8x11x8xi1>
        %281 = vector.broadcast %true_2 : i1 to vector<i1>
        vector.transfer_write %281, %alloc_6[%c5] : vector<i1>, memref<7xi1>
        %282 = vector.load %alloc_14[%c7, %c7] : memref<11x13xf32>, vector<7x11x13xf32>
        %283 = math.fpowi %5, %from_elements : tensor<7x11x13xf16>, tensor<7x11x13xi32>
        %284 = vector.broadcast %64 : index to vector<11xindex>
        %285 = vector.broadcast %true_2 : i1 to vector<11xi1>
        %286 = vector.broadcast %c1570961800_i64 : i64 to vector<11xi64>
        vector.scatter %alloc_11[%c5, %c7, %c1] [%284], %285, %286 : memref<8x11x8xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
        %287 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 64)>(%c10, %c12, %c5, %c11)
        %288 = index.divs %c8, %78
        %289 = vector.reduction <minsi>, %68 : vector<8xi64> into i64
        %290 = vector.multi_reduction <maxui>, %262, %262 [] : vector<7x11x13xi16> to vector<7x11x13xi16>
        %291 = vector.insert %79, %282 [1] : vector<11x13xf32> into vector<7x11x13xf32>
        %292 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 4)>(%57, %c9, %c13, %24)
        %293 = vector.load %alloc[%c0, %c6] : memref<11x13xi64>, vector<7xi64>
        %294 = vector.flat_transpose %43 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
        %295 = math.log %13 : tensor<7x11x13xf32>
        %296 = arith.maxf %29, %cst_0 : f16
        scf.yield %alloc_9 : memref<8x11x8xi16>
      }
      case 4 {
        %279 = index.castu %true_2 : i1 to index
        %280 = vector.load %alloc_6[%c4] : memref<7xi1>, vector<7xi1>
        %281 = arith.ceildivsi %true, %true : i1
        %282 = vector.bitcast %280 : vector<7xi1> to vector<7xi1>
        %283 = math.cos %73 : tensor<7xf32>
        %284 = index.sub %52, %57
        %285 = math.log2 %5 : tensor<7x11x13xf16>
        %286 = index.casts %284 : index to i32
        %287 = math.log1p %2 : tensor<7xf16>
        memref.assume_alignment %alloc_18, 2 : memref<11x13xi32>
        %288 = math.copysign %cst_0, %29 : f16
        %289 = index.sizeof
        bufferization.dealloc_tensor %5 : tensor<7x11x13xf16>
        %290 = index.divs %c1, %279
        %291 = arith.maxf %29, %29 : f16
        %292 = index.ceildivu %c5, %52
        scf.yield %alloc_9 : memref<8x11x8xi16>
      }
      default {
        %splat_54 = tensor.splat %c34358798_i32 : tensor<7xi32>
        %279 = math.absf %22 : tensor<f16>
        %280 = vector.extract_strided_slice %76 {offsets = [1], sizes = [5], strides = [1]} : vector<7x11x13xi32> to vector<5x11x13xi32>
        %281 = arith.floordivsi %true_2, %true_2 : i1
        %282 = arith.shrsi %c1711792754_i64, %c1570961800_i64 : i64
        %283 = bufferization.clone %alloc_8 : memref<11x13xi32> to memref<11x13xi32>
        %284 = memref.atomic_rmw minu %c1711792754_i64, %alloc[%c2, %c9] : (i64, memref<11x13xi64>) -> i64
        %285 = math.cos %12 : tensor<7xf16>
        %286 = math.cos %73 : tensor<7xf32>
        %287 = arith.shrsi %true_2, %true_2 : i1
        %288 = math.ipowi %0, %50 : tensor<7x11x13xi64>
        %289 = math.powf %cst_1, %cst_1 : f32
        %290 = arith.ceildivsi %c1963286850_i32, %c618576397_i32 : i32
        %291 = math.log2 %2 : tensor<7xf16>
        %292 = math.log10 %12 : tensor<7xf16>
        %293 = math.cttz %7 : tensor<7x11x13xi16>
        scf.yield %alloc_9 : memref<8x11x8xi16>
      }
      %264 = scf.while (%arg2 = %68) : (vector<8xi64>) -> vector<8xi64> {
        %279 = arith.minsi %c1586311473_i64, %c1711792754_i64 : i64
        %280 = index.add %65, %78
        %281 = vector.broadcast %280 : index to vector<7xindex>
        %282 = vector.broadcast %true : i1 to vector<7xi1>
        %283 = vector.broadcast %c1193819625_i32 : i32 to vector<7xi32>
        vector.scatter %alloc_7[%c5] [%281], %282, %283 : memref<7xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %c0_i16 = arith.constant 0 : i16
        %284 = vector.transfer_read %7[%c9, %c13, %c15], %c0_i16 : tensor<7x11x13xi16>, vector<i16>
        %285 = index.sizeof
        %286 = arith.addi %c1963286850_i32, %c1193819625_i32 : i32
        %287 = math.expm1 %73 : tensor<7xf32>
        %288 = math.exp2 %cst_1 : f32
        scf.condition(%false) %63 : vector<8xi64>
      } do {
      ^bb0(%arg2: vector<8xi64>):
        %279 = index.maxu %c5, %c14
        %280 = index.sizeof
        %extracted_54 = tensor.extract %13[%c5, %c4, %c6] : tensor<7x11x13xf32>
        %c1437305393_i64 = arith.constant 1437305393 : i64
        %281 = math.floor %5 : tensor<7x11x13xf16>
        %alloca_55 = memref.alloca() : memref<7x11x13xi64>
        %282 = vector.broadcast %cst_1 : f32 to vector<11x13xf32>
        %283 = vector.fma %282, %80, %80 : vector<11x13xf32>
        %284 = math.log10 %12 : tensor<7xf16>
        %285 = memref.atomic_rmw addf %cst, %alloc_15[%c7, %c5, %c6] : (f16, memref<8x11x8xf16>) -> f16
        %286 = arith.addi %c1963286850_i32, %c1963286850_i32 : i32
        bufferization.dealloc_tensor %22 : tensor<f16>
        %287 = vector.broadcast %29 : f16 to vector<11xf16>
        %288 = vector.broadcast %true : i1 to vector<11xi1>
        %289 = vector.maskedload %alloc_12[%c3, %c9], %288, %287 : memref<11x13xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
        %290 = vector.splat %c7 : vector<7xindex>
        %291 = vector.broadcast %cst : f16 to vector<11x11xf16>
        %292 = vector.outerproduct %289, %289, %291 {kind = #vector.kind<minf>} : vector<11xf16>, vector<11xf16>
        %293 = arith.divf %extracted_54, %cst_1 : f32
        %294 = math.roundeven %5 : tensor<7x11x13xf16>
        scf.yield %43 : vector<8xi64>
      }
      %265 = math.round %5 : tensor<7x11x13xf16>
      %266 = bufferization.to_tensor %alloc_13 : memref<7x11x13xi1>
      %267 = index.sizeof
      %268 = math.round %13 : tensor<7x11x13xf32>
      %269 = index.add %c2, %c2
      %270 = arith.maxui %c1570961800_i64, %c1711792754_i64 : i64
      %271 = math.atan2 %cst_1, %cst_1 : f32
      %272 = arith.xori %c1711792754_i64, %c1586311473_i64 : i64
      %273 = vector.broadcast %cst_3 : f32 to vector<11x13xf32>
      %274 = vector.fma %273, %66, %80 : vector<11x13xf32>
      %275 = math.fpowi %cst_0, %c1193819625_i32 : f16, i32
      %276 = arith.minf %cst_1, %cst_1 : f32
      %277 = math.sqrt %73 : tensor<7xf32>
      %278 = tensor.empty() : tensor<8x11x8xi1>
      %mapped_53 = linalg.map ins(%alloc_4, %9 : memref<8x11x8xi1>, tensor<8x11x8xi1>) outs(%278 : tensor<8x11x8xi1>)
        (%in: i1, %in_54: i1) {
          %279 = index.castu %62 : index to i32
          %280 = math.log10 %5 : tensor<7x11x13xf16>
          %281 = arith.maxf %cst_1, %cst_3 : f32
          %282 = index.mul %c1, %62
          %283 = vector.broadcast %cst_1 : f32 to vector<7x11x13xf32>
          %284 = vector.fma %283, %77, %74 : vector<7x11x13xf32>
          %285 = math.cos %cst_3 : f32
          %286 = vector.flat_transpose %43 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
          %287 = vector.broadcast %c0 : index to vector<7xindex>
          %288 = vector.broadcast %in : i1 to vector<7xi1>
          %289 = vector.broadcast %cst_3 : f32 to vector<7xf32>
          vector.scatter %alloc_14[%c3, %c6] [%287], %288, %289 : memref<11x13xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
          %290 = math.absi %11 : tensor<11x13xi64>
          %291 = index.sub %c4, %c8
          %292 = bufferization.clone %alloc_4 : memref<8x11x8xi1> to memref<8x11x8xi1>
          %293 = memref.atomic_rmw assign %29, %alloc_20[%c5] : (f16, memref<7xf16>) -> f16
          %294 = index.add %269, %c7
          %splat_55 = tensor.splat %29 : tensor<7x11x13xf16>
          %295 = index.ceildivu %c11, %269
          %296 = math.fma %2, %12, %2 : tensor<7xf16>
          %297 = index.divs %c3, %rank
          %298 = math.powf %13, %13 : tensor<7x11x13xf32>
          %299 = arith.andi %true_2, %false : i1
          %300 = arith.minsi %c1711792754_i64, %c1570961800_i64 : i64
          bufferization.dealloc_tensor %15 : tensor<11x13xi16>
          %301 = vector.broadcast %297 : index to vector<7xindex>
          %302 = vector.broadcast %in : i1 to vector<7xi1>
          %303 = vector.broadcast %cst_1 : f32 to vector<7xf32>
          vector.scatter %alloc_5[%c2, %c8] [%301], %302, %303 : memref<11x13xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
          %304 = index.casts %c8 : index to i32
          %305 = arith.remf %cst, %29 : f16
          %splat_56 = tensor.splat %c618576397_i32 : tensor<8x11x8xi32>
          %306 = math.cttz %from_elements : tensor<7x11x13xi32>
          %307 = vector.bitcast %43 : vector<8xi64> to vector<8xi64>
          %308 = vector.matrix_multiply %43, %307 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
          %309 = arith.remui %c618576397_i32, %c1193819625_i32 : i32
          %310 = vector.broadcast %65 : index to vector<8xindex>
          %311 = vector.broadcast %in : i1 to vector<8xi1>
          vector.scatter %alloc_13[%c2, %c7, %c10] [%310], %311, %311 : memref<7x11x13xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
          %312 = memref.atomic_rmw muli %c-9988_i16, %alloc_9[%c4, %c6, %c3] : (i16, memref<8x11x8xi16>) -> i16
          %313 = vector.matrix_multiply %20, %43 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
          %true_57 = arith.constant true
          linalg.yield %true_57 : i1
        }
      scf.yield
    }
    %88 = vector.insertelement %c1570961800_i64, %68[%64 : index] : vector<8xi64>
    %89 = math.tan %22 : tensor<f16>
    %90 = memref.atomic_rmw assign %cst_3, %alloc_5[%c6, %c5] : (f32, memref<11x13xf32>) -> f32
    %91 = math.fma %5, %5, %5 : tensor<7x11x13xf16>
    %92 = memref.atomic_rmw minu %c34358798_i32, %alloc_18[%c8, %c8] : (i32, memref<11x13xi32>) -> i32
    %93 = arith.floordivsi %c1570961800_i64, %c1711792754_i64 : i64
    %94 = bufferization.to_tensor %alloc_6 : memref<7xi1>
    memref.assume_alignment %alloc_19, 1 : memref<i16>
    %95 = scf.if %false -> (memref<7xi64>) {
      %262 = memref.atomic_rmw assign %c1193819625_i32, %alloc_7[%c5] : (i32, memref<7xi32>) -> i32
      %263 = vector.insertelement %c1570961800_i64, %20[%24 : index] : vector<8xi64>
      %264 = arith.floordivsi %true, %true_2 : i1
      %265 = index.castu %c15 : index to i32
      %266 = vector.broadcast %c-9988_i16 : i16 to vector<8xi16>
      %267 = vector.insert %266, %39 [7] : vector<8xi16> into vector<11x8xi16>
      %alloca_53 = memref.alloca() : memref<8x11x8xf16>
      %268 = memref.atomic_rmw minf %cst_3, %alloc_14[%c10, %c6] : (f32, memref<11x13xf32>) -> f32
      %269 = vector.broadcast %c1586311473_i64 : i64 to vector<11x13xi64>
      %270 = vector.broadcast %c768864186_i32 : i32 to vector<11x13xi32>
      %271 = vector.gather %alloc_11[%c5, %c4, %c8] [%270], %51, %269 : memref<8x11x8xi64>, vector<11x13xi32>, vector<11x13xi1>, vector<11x13xi64> into vector<11x13xi64>
      %alloc_54 = memref.alloc() : memref<7xi64>
      scf.yield %alloc_54 : memref<7xi64>
    } else {
      bufferization.dealloc_tensor %15 : tensor<11x13xi16>
      %262 = math.round %73 : tensor<7xf32>
      %263 = bufferization.to_tensor %alloc_18 : memref<11x13xi32>
      %264 = scf.if %true -> (memref<7xf32>) {
        bufferization.dealloc_tensor %9 : tensor<8x11x8xi1>
        %268 = vector.insert %39, %37 [0] : vector<11x8xi16> into vector<1x11x8xi16>
        %269 = math.round %2 : tensor<7xf16>
        %270 = math.exp2 %22 : tensor<f16>
        %271 = vector.transpose %79, [1, 0] : vector<11x13xf32> to vector<13x11xf32>
        %272 = vector.shuffle %27, %27 [0, 2, 3, 5, 6, 7, 9, 10, 11] : vector<8x11x8xi32>, vector<8x11x8xi32>
        %273 = bufferization.clone %alloc_13 : memref<7x11x13xi1> to memref<7x11x13xi1>
        affine.store %true_2, %alloc_4[%c5, %c15, %c7] : memref<8x11x8xi1>
        %alloc_54 = memref.alloc() : memref<7xf32>
        scf.yield %alloc_54 : memref<7xf32>
      } else {
        %268 = vector.load %alloc_4[%c6, %c5, %c5] : memref<8x11x8xi1>, vector<11x13xi1>
        %269 = arith.remui %true, %false : i1
        %270 = math.fma %5, %5, %5 : tensor<7x11x13xf16>
        %271 = math.fma %cst_0, %cst, %29 : f16
        %272 = arith.xori %true, %true : i1
        %273 = arith.minf %cst_0, %cst_0 : f16
        %274 = memref.load %alloc_10[%c3, %c2, %c8] : memref<7x11x13xi64>
        %275 = arith.floordivsi %c618576397_i32, %c768864186_i32 : i32
        %alloc_54 = memref.alloc() : memref<7xf32>
        scf.yield %alloc_54 : memref<7xf32>
      }
      scf.index_switch %c9 
      case 1 {
        %268 = math.powf %2, %2 : tensor<7xf16>
        %269 = index.ceildivu %c14, %78
        %270 = math.round %cst_3 : f32
        %271 = vector.multi_reduction <xor>, %63, %68 [] : vector<8xi64> to vector<8xi64>
        %272 = arith.maxf %cst_1, %cst_3 : f32
        %expanded_54 = tensor.expand_shape %transposed [[0], [1, 2]] : tensor<13x11xi64> into tensor<13x11x1xi64>
        %273 = arith.shrui %c1586311473_i64, %c1711792754_i64 : i64
        %274 = arith.maxf %29, %cst : f16
        %275 = math.expm1 %16 : tensor<7x11x13xf32>
        %276 = math.expm1 %1 : tensor<7x11x13xf32>
        %277 = index.ceildivu %c6, %c1
        %278 = index.sizeof
        %279 = vector.broadcast %c8 : index to vector<13xindex>
        %280 = vector.broadcast %false : i1 to vector<13xi1>
        %281 = vector.broadcast %cst_1 : f32 to vector<13xf32>
        vector.scatter %alloc_14[%c1, %c12] [%279], %280, %281 : memref<11x13xf32>, vector<13xindex>, vector<13xi1>, vector<13xf32>
        %282 = math.fpowi %1, %from_elements : tensor<7x11x13xf32>, tensor<7x11x13xi32>
        %283 = math.round %cst_1 : f32
        %284 = memref.atomic_rmw ori %c618576397_i32, %alloc_8[%c1, %c8] : (i32, memref<11x13xi32>) -> i32
        scf.yield
      }
      case 2 {
        %268 = arith.shrui %c1963286850_i32, %c1193819625_i32 : i32
        %269 = vector.matrix_multiply %43, %43 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
        %rank_54 = tensor.rank %9 : tensor<8x11x8xi1>
        %270 = arith.maxf %cst_3, %cst_1 : f32
        %271 = vector.insertelement %c1711792754_i64, %20[%57 : index] : vector<8xi64>
        %272 = math.absf %5 : tensor<7x11x13xf16>
        %273 = vector.load %alloc_5[%c0, %c6] : memref<11x13xf32>, vector<11x13xf32>
        %splat_55 = tensor.splat %true : tensor<11x13xi1>
        %274 = arith.ceildivsi %c1570961800_i64, %c1711792754_i64 : i64
        %275 = arith.xori %false, %true_2 : i1
        %276 = index.sub %c11, %c4
        %rank_56 = tensor.rank %73 : tensor<7xf32>
        %277 = tensor.empty() : tensor<8x11x8xi32>
        %278 = arith.shrsi %true, %true : i1
        %279 = tensor.empty() : tensor<7xi32>
        %280 = vector.broadcast %c618576397_i32 : i32 to vector<7xi32>
        %281 = vector.broadcast %false : i1 to vector<7xi1>
        %282 = vector.gather %279[%c4] [%280], %281, %280 : tensor<7xi32>, vector<7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %283 = index.ceildivu %c3, %c5
        scf.yield
      }
      case 3 {
        %268 = arith.ceildivsi %c768864186_i32, %c34358798_i32 : i32
        %269 = math.copysign %2, %2 : tensor<7xf16>
        %270 = math.sqrt %29 : f16
        %271 = arith.muli %true_2, %false : i1
        %272 = arith.shrui %c618576397_i32, %c1963286850_i32 : i32
        %273 = arith.maxf %cst_0, %cst_0 : f16
        %274 = index.ceildivs %c7, %c13
        %275 = arith.floordivsi %true, %false : i1
        %alloca_54 = memref.alloca() : memref<7x11x13xf32>
        %276 = vector.insertelement %c1711792754_i64, %68[%c1 : index] : vector<8xi64>
        %277 = arith.addi %c618576397_i32, %c1193819625_i32 : i32
        %278 = index.ceildivu %64, %c9
        %279 = math.ctlz %11 : tensor<11x13xi64>
        %280 = index.divs %c4, %rank
        %c0_i16 = arith.constant 0 : i16
        %281 = vector.transfer_read %10[%c8, %280, %57], %c0_i16 : tensor<8x11x8xi16>, vector<11xi16>
        %282 = arith.maxf %29, %cst : f16
        scf.yield
      }
      default {
        %268 = math.tan %2 : tensor<7xf16>
        %alloc_54 = memref.alloc() : memref<7xi64>
        memref.tensor_store %from_elements_21, %alloc_54 : memref<7xi64>
        %alloc_55 = memref.alloc() : memref<8x11x8xi1>
        memref.copy %alloc_4, %alloc_55 : memref<8x11x8xi1> to memref<8x11x8xi1>
        %269 = math.cttz %10 : tensor<8x11x8xi16>
        %270 = math.atan2 %cst_0, %29 : f16
        %271 = vector.create_mask %c13, %c3, %c15 : vector<8x11x8xi1>
        %272 = memref.atomic_rmw muli %c-9988_i16, %alloc_9[%c4, %c1, %c5] : (i16, memref<8x11x8xi16>) -> i16
        %273 = vector.flat_transpose %43 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
        %274 = vector.insertelement %c1711792754_i64, %273[%52 : index] : vector<8xi64>
        %275 = arith.maxf %cst_3, %cst_3 : f32
        %276 = math.fma %1, %1, %1 : tensor<7x11x13xf32>
        %277 = vector.flat_transpose %63 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
        %278 = memref.atomic_rmw maxu %c1193819625_i32, %alloc_17[%c5, %c4, %c6] : (i32, memref<8x11x8xi32>) -> i32
        %279 = math.atan2 %21, %21 : tensor<f16>
        %280 = vector.bitcast %79 : vector<11x13xf32> to vector<11x13xf32>
        %281 = math.round %cst_0 : f16
      }
      %265 = vector.bitcast %37 : vector<1x11x8xi16> to vector<1x11x8xi16>
      %266 = index.castu %c4 : index to i32
      %267 = index.sizeof
      %alloc_53 = memref.alloc() : memref<7xi64>
      scf.yield %alloc_53 : memref<7xi64>
    }
    %96 = arith.ceildivsi %c1711792754_i64, %c1586311473_i64 : i64
    %alloca_26 = memref.alloca() : memref<7xi16>
    %97 = arith.cmpi ugt, %false, %true_2 : i1
    %splat_27 = tensor.splat %c1711792754_i64 : tensor<7xi64>
    %98 = arith.negf %cst_3 : f32
    %99 = math.ipowi %true, %true_2 : i1
    %100 = index.sizeof
    %101 = bufferization.clone %alloc_19 : memref<i16> to memref<i16>
    %102 = scf.index_switch %c7 -> memref<11x13xi32> 
    case 1 {
      %262 = math.cttz %c1711792754_i64 : i64
      %263 = math.fma %cst, %29, %cst : f16
      %264 = bufferization.to_tensor %alloc : memref<11x13xi64>
      %265 = vector.splat %65 : vector<7x11x13xindex>
      %266 = arith.remf %cst_1, %cst_1 : f32
      %267 = math.absi %6 : tensor<11x13xi16>
      %inserted_53 = tensor.insert %true into %9[%c2, %c8, %c1] : tensor<8x11x8xi1>
      %268 = bufferization.clone %alloc_16 : memref<7x11x13xi16> to memref<7x11x13xi16>
      %269 = arith.minf %cst_0, %cst_0 : f16
      %270 = vector.broadcast %c1193819625_i32 : i32 to vector<11x8xi32>
      %271 = vector.insert %270, %27 [1] : vector<11x8xi32> into vector<8x11x8xi32>
      %272 = math.exp2 %13 : tensor<7x11x13xf32>
      %inserted_54 = tensor.insert %c-9988_i16 into %15[%c0, %c5] : tensor<11x13xi16>
      %273 = vector.broadcast %cst_3 : f32 to vector<11xf32>
      %dest, %accumulated_value = vector.scan <mul>, %80, %273 {inclusive = false, reduction_dim = 1 : i64} : vector<11x13xf32>, vector<11xf32>
      %274 = scf.index_switch %52 -> memref<8x11x8xi16> 
      case 1 {
        %277 = arith.maxsi %c-9988_i16, %c-9988_i16 : i16
        %278 = arith.remui %c1963286850_i32, %c34358798_i32 : i32
        %279 = index.casts %c11 : index to i32
        %280 = math.exp2 %2 : tensor<7xf16>
        %281 = vector.broadcast %c1711792754_i64 : i64 to vector<i64>
        %282 = vector.transfer_write %281, %50[%c15, %c3, %62] : vector<i64>, tensor<7x11x13xi64>
        %283 = index.sub %c5, %c8
        %284 = vector.splat %64 : vector<7xindex>
        %285 = memref.atomic_rmw ori %c618576397_i32, %alloc_8[%c5, %c10] : (i32, memref<11x13xi32>) -> i32
        %286 = affine.load %alloc_9[%c14, %c4, %c8] : memref<8x11x8xi16>
        %287 = arith.shrsi %c1711792754_i64, %c1586311473_i64 : i64
        %288 = vector.transpose %51, [0, 1] : vector<11x13xi1> to vector<11x13xi1>
        %289 = arith.maxui %true, %false : i1
        %290 = index.sub %c13, %78
        %from_elements_55 = tensor.from_elements %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64 : tensor<11x13xi64>
        %291 = math.log2 %21 : tensor<f16>
        %292 = arith.remui %false, %true : i1
        scf.yield %alloc_9 : memref<8x11x8xi16>
      }
      case 2 {
        %277 = arith.remsi %true_2, %true_2 : i1
        %278 = arith.remui %c1586311473_i64, %c1711792754_i64 : i64
        %279 = vector.multi_reduction <xor>, %63, %c1586311473_i64 [0] : vector<8xi64> to i64
        %280 = math.fma %cst_1, %cst_3, %cst_1 : f32
        %281 = arith.addf %cst, %29 : f16
        %282 = arith.muli %true, %false : i1
        %283 = math.floor %16 : tensor<7x11x13xf32>
        %284 = arith.maxf %cst, %cst : f16
        %285 = vector.broadcast %c-9988_i16 : i16 to vector<7xi16>
        %286 = vector.broadcast %true : i1 to vector<7xi1>
        %287 = vector.maskedload %alloc_19[], %286, %285 : memref<i16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %288 = bufferization.to_tensor %alloc_8 : memref<11x13xi32>
        %289 = arith.maxui %c1570961800_i64, %c1586311473_i64 : i64
        %290 = math.floor %73 : tensor<7xf32>
        %291 = memref.atomic_rmw mulf %29, %alloc_15[%c2, %c7, %c7] : (f16, memref<8x11x8xf16>) -> f16
        %cast = tensor.cast %17 : tensor<7x11x13xf32> to tensor<?x?x?xf32>
        %292 = arith.xori %c618576397_i32, %c768864186_i32 : i32
        %293 = arith.maxui %c1586311473_i64, %c1711792754_i64 : i64
        scf.yield %alloc_9 : memref<8x11x8xi16>
      }
      default {
        %277 = arith.floordivsi %c1963286850_i32, %c618576397_i32 : i32
        %278 = math.fma %73, %73, %73 : tensor<7xf32>
        %279 = math.copysign %12, %12 : tensor<7xf16>
        %280 = index.divs %rank, %c13
        %281 = math.expm1 %29 : f16
        %282 = index.casts %c9 : index to i32
        %283 = math.absi %94 : tensor<7xi1>
        %284 = memref.atomic_rmw maxf %cst_3, %alloc_14[%c9, %c12] : (f32, memref<11x13xf32>) -> f32
        %285 = tensor.empty() : tensor<8x11x8xf32>
        %286 = vector.broadcast %cst_3 : f32 to vector<7xf32>
        %287 = vector.broadcast %false : i1 to vector<7xi1>
        %288 = vector.broadcast %c1963286850_i32 : i32 to vector<7xi32>
        %289 = vector.gather %285[%c11, %78, %c5] [%288], %287, %286 : tensor<8x11x8xf32>, vector<7xi32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        %290 = affine.load %alloc_10[%c4, %c14, %c8] : memref<7x11x13xi64>
        %291 = memref.realloc %alloc_7 : memref<7xi32> to memref<7xi32>
        %292 = math.atan %12 : tensor<7xf16>
        %293 = arith.floordivsi %c1570961800_i64, %c1586311473_i64 : i64
        %294 = arith.maxf %cst_3, %cst_3 : f32
        %295 = index.castu %c-9988_i16 : i16 to index
        %296 = index.sub %c2, %52
        scf.yield %alloc_9 : memref<8x11x8xi16>
      }
      %275 = arith.remsi %c1963286850_i32, %c1193819625_i32 : i32
      %276 = math.powf %cst, %cst : f16
      scf.yield %alloc_18 : memref<11x13xi32>
    }
    case 2 {
      %c0_i64 = arith.constant 0 : i64
      %262 = vector.transfer_read %11[%c14, %62], %c0_i64 : tensor<11x13xi64>, vector<i64>
      %263 = math.round %16 : tensor<7x11x13xf32>
      %264 = vector.load %alloc_5[%c8, %c6] : memref<11x13xf32>, vector<7x11x13xf32>
      %265 = math.roundeven %1 : tensor<7x11x13xf32>
      %266 = memref.load %alloc_13[%c3, %c2, %c7] : memref<7x11x13xi1>
      %267 = arith.xori %c1586311473_i64, %c1570961800_i64 : i64
      %268 = arith.xori %c1586311473_i64, %c1711792754_i64 : i64
      %269 = vector.reduction <or>, %68 : vector<8xi64> into i64
      %270 = math.log10 %73 : tensor<7xf32>
      %271 = vector.bitcast %26 : vector<8x11x8xi1> to vector<8x11x8xi1>
      %272 = math.log %1 : tensor<7x11x13xf32>
      %273 = vector.gather %8[%62, %rank] [%27], %271, %271 : tensor<11x13xi1>, vector<8x11x8xi32>, vector<8x11x8xi1>, vector<8x11x8xi1> into vector<8x11x8xi1>
      %274 = math.ctlz %false : i1
      %275 = tensor.empty() : tensor<11x13xi64>
      %mapped_53 = linalg.map ins(%11 : tensor<11x13xi64>) outs(%275 : tensor<11x13xi64>)
        (%in: i64) {
          %280 = tensor.empty() : tensor<11x13xi32>
          %281 = vector.load %alloc_10[%c1, %c3, %c11] : memref<7x11x13xi64>, vector<7xi64>
          %282 = math.log2 %5 : tensor<7x11x13xf16>
          %splat_54 = tensor.splat %cst_1 : tensor<8x11x8xf32>
          %283 = index.casts %true_2 : i1 to index
          %alloca_55 = memref.alloca() : memref<7xf32>
          %284 = arith.muli %c1963286850_i32, %c618576397_i32 : i32
          %285 = math.expm1 %17 : tensor<7x11x13xf32>
          bufferization.dealloc_tensor %7 : tensor<7x11x13xi16>
          %rank_56 = tensor.rank %13 : tensor<7x11x13xf32>
          %286 = arith.andi %c618576397_i32, %c768864186_i32 : i32
          %rank_57 = tensor.rank %10 : tensor<8x11x8xi16>
          %287 = math.copysign %22, %22 : tensor<f16>
          %288 = index.divu %62, %rank_56
          %289 = vector.multi_reduction <or>, %75, %51 [0] : vector<7x11x13xi1> to vector<11x13xi1>
          %290 = affine.load %alloc_14[%c15, %c5] : memref<11x13xf32>
          %291 = arith.divf %290, %cst_1 : f32
          %292 = index.maxu %78, %c13
          %293 = math.expm1 %cst_1 : f32
          %294 = math.log %cst_1 : f32
          %295 = vector.broadcast %290 : f32 to vector<8x11x8xf32>
          %296 = vector.fma %295, %295, %295 : vector<8x11x8xf32>
          %297 = arith.minui %in, %c1586311473_i64 : i64
          %298 = arith.remf %290, %cst_1 : f32
          %299 = arith.cmpi ugt, %c1963286850_i32, %c768864186_i32 : i32
          %300 = math.absi %4 : tensor<7xi16>
          %301 = arith.andi %c1193819625_i32, %c34358798_i32 : i32
          %302 = memref.load %95[%c5] : memref<7xi64>
          %303 = vector.matrix_multiply %43, %20 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
          %304 = vector.extract_strided_slice %27 {offsets = [4], sizes = [1], strides = [1]} : vector<8x11x8xi32> to vector<1x11x8xi32>
          %305 = arith.muli %in, %c1711792754_i64 : i64
          %cast = tensor.cast %3 : tensor<7x11x13xi16> to tensor<?x?x?xi16>
          %306 = vector.broadcast %c1586311473_i64 : i64 to vector<8x8xi64>
          %307 = vector.outerproduct %63, %68, %306 {kind = #vector.kind<and>} : vector<8xi64>, vector<8xi64>
          %c0_i64_58 = arith.constant 0 : i64
          linalg.yield %c0_i64_58 : i64
        }
      %276 = tensor.empty() : tensor<13x8xi1>
      %277 = tensor.empty() : tensor<11x8xi1>
      %278 = linalg.matmul ins(%8, %276 : tensor<11x13xi1>, tensor<13x8xi1>) outs(%277 : tensor<11x8xi1>) -> tensor<11x8xi1>
      %279 = math.round %29 : f16
      scf.yield %alloc_8 : memref<11x13xi32>
    }
    case 3 {
      %c60417368_i32 = arith.constant 60417368 : i32
      %262 = arith.floordivsi %c768864186_i32, %c34358798_i32 : i32
      %263 = index.divu %24, %c8
      %264 = vector.insertelement %c1586311473_i64, %43[%c2 : index] : vector<8xi64>
      %265 = arith.maxf %cst, %cst_0 : f16
      %266 = arith.divf %cst_1, %cst_1 : f32
      %alloc_53 = memref.alloc() : memref<7xf32>
      memref.tensor_store %73, %alloc_53 : memref<7xf32>
      memref.assume_alignment %alloc_19, 4 : memref<i16>
      %267 = vector.extract_strided_slice %37 {offsets = [0], sizes = [1], strides = [1]} : vector<1x11x8xi16> to vector<1x11x8xi16>
      %268 = vector.bitcast %28 : vector<8x11x8xi16> to vector<8x11x8xi16>
      %269 = bufferization.to_tensor %alloc_5 : memref<11x13xf32>
      memref.assume_alignment %alloc_7, 16 : memref<7xi32>
      %alloc_54 = memref.alloc() : memref<8x11x8xi1>
      %270 = arith.shli %c768864186_i32, %c34358798_i32 : i32
      %271 = vector.broadcast %true : i1 to vector<13x8x8xi1>
      %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %51, %26, %271 : vector<11x13xi1>, vector<8x11x8xi1> into vector<13x8x8xi1>
      %273 = affine.load %alloc_15[%c13, %c10, %c5] : memref<8x11x8xf16>
      scf.yield %alloc_18 : memref<11x13xi32>
    }
    case 4 {
      %262 = vector.broadcast %c10 : index to vector<11xindex>
      %263 = vector.broadcast %true : i1 to vector<11xi1>
      %264 = vector.broadcast %c1711792754_i64 : i64 to vector<11xi64>
      vector.scatter %alloc_10[%c4, %c1, %c12] [%262], %263, %264 : memref<7x11x13xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
      %265 = vector.broadcast %cst_1 : f32 to vector<13xf32>
      %dest, %accumulated_value = vector.scan <maxf>, %66, %265 {inclusive = false, reduction_dim = 0 : i64} : vector<11x13xf32>, vector<13xf32>
      %266 = math.fma %12, %2, %2 : tensor<7xf16>
      %267 = tensor.empty() : tensor<i32>
      %268 = math.fpowi %22, %267 : tensor<f16>, tensor<i32>
      %269 = index.castu %c1586311473_i64 : i64 to index
      %270 = arith.shrui %c34358798_i32, %c1963286850_i32 : i32
      %271 = arith.maxf %cst_0, %cst : f16
      %272 = math.absi %c1586311473_i64 : i64
      %273 = vector.insertelement %c1711792754_i64, %20[%65 : index] : vector<8xi64>
      %274 = arith.remf %cst_3, %cst_3 : f32
      %275 = vector.broadcast %c1570961800_i64 : i64 to vector<8x8xi64>
      %276 = vector.outerproduct %68, %20, %275 {kind = #vector.kind<and>} : vector<8xi64>, vector<8xi64>
      %277 = math.floor %cst_1 : f32
      %278 = index.add %78, %c13
      %279 = index.divs %c0, %c12
      %280 = memref.realloc %alloc_6 : memref<7xi1> to memref<7xi1>
      %281 = vector.insertelement %c1586311473_i64, %63[%c10 : index] : vector<8xi64>
      scf.yield %alloc_8 : memref<11x13xi32>
    }
    default {
      %262 = affine.apply affine_map<(d0, d1, d2, d3) -> (((d2 + d1) floordiv 16) floordiv 64)>(%65, %c2, %57, %c11)
      %263 = arith.cmpi ule, %c1570961800_i64, %c1570961800_i64 : i64
      %from_elements_53 = tensor.from_elements %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1586311473_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1586311473_i64, %c1711792754_i64, %c1586311473_i64, %c1570961800_i64, %c1711792754_i64, %c1570961800_i64, %c1586311473_i64 : tensor<7x11x13xi64>
      %264 = vector.splat %c1963286850_i32 : vector<11x13xi32>
      %generated_54 = tensor.generate %c1 {
      ^bb0(%arg2: index, %arg3: index):
        %272 = math.exp %1 : tensor<7x11x13xf32>
        %273 = index.add %64, %c4
        %274 = index.sub %65, %52
        %275 = math.round %29 : f16
        tensor.yield %c1711792754_i64 : i64
      } : tensor<?x13xi64>
      %265 = vector.matrix_multiply %63, %68 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
      %266 = math.absf %16 : tensor<7x11x13xf32>
      %267 = arith.muli %c1570961800_i64, %c1586311473_i64 : i64
      %splat_55 = tensor.splat %cst : tensor<11x13xf16>
      %generated_56 = tensor.generate %262 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %272 = vector.broadcast %cst_3 : f32 to vector<7x11x13xf32>
        %273 = vector.fma %272, %77, %272 : vector<7x11x13xf32>
        %274 = arith.andi %c1963286850_i32, %c1963286850_i32 : i32
        memref.copy %alloc_5, %alloc_14 : memref<11x13xf32> to memref<11x13xf32>
        %275 = arith.addf %cst, %cst : f16
        tensor.yield %c768864186_i32 : i32
      } : tensor<?x11x13xi32>
      %alloc_57 = memref.alloc() : memref<7xi16>
      %true_58 = index.bool.constant true
      %268 = scf.while (%arg2 = %c618576397_i32) : (i32) -> i32 {
        %272 = arith.xori %c1586311473_i64, %c1711792754_i64 : i64
        %273 = affine.load %alloc_19[] : memref<i16>
        %274 = index.sub %rank, %78
        %275 = math.log10 %12 : tensor<7xf16>
        %276 = math.log10 %5 : tensor<7x11x13xf16>
        %277 = arith.remf %cst_3, %cst_3 : f32
        %alloca_59 = memref.alloca() : memref<11x13xf16>
        %278 = math.log2 %cst : f16
        scf.condition(%false) %c1963286850_i32 : i32
      } do {
      ^bb0(%arg2: i32):
        %272 = arith.divf %cst_0, %29 : f16
        %273 = math.fma %12, %2, %2 : tensor<7xf16>
        %274 = affine.apply affine_map<(d0, d1) -> (d0 ceildiv 16)>(%c5, %c5)
        memref.store %c1963286850_i32, %alloc_8[%c8, %c6] : memref<11x13xi32>
        %275 = arith.addi %c1570961800_i64, %c1570961800_i64 : i64
        %276 = memref.atomic_rmw ori %c34358798_i32, %alloc_8[%c8, %c10] : (i32, memref<11x13xi32>) -> i32
        %277 = math.exp2 %1 : tensor<7x11x13xf32>
        %278 = vector.broadcast %c1586311473_i64 : i64 to vector<8x8xi64>
        %279 = vector.outerproduct %20, %43, %278 {kind = #vector.kind<add>} : vector<8xi64>, vector<8xi64>
        %280 = arith.xori %c1586311473_i64, %c1586311473_i64 : i64
        %281 = math.fma %2, %12, %12 : tensor<7xf16>
        %282 = arith.negf %cst_1 : f32
        %283 = arith.floordivsi %c1963286850_i32, %c1963286850_i32 : i32
        %alloca_59 = memref.alloca() : memref<7xi64>
        %284 = arith.negf %29 : f16
        %285 = arith.remf %29, %cst : f16
        %286 = vector.bitcast %75 : vector<7x11x13xi1> to vector<7x11x13xi1>
        scf.yield %c768864186_i32 : i32
      }
      %269 = arith.minf %cst_1, %cst_3 : f32
      %270 = affine.min affine_map<(d0, d1, d2) -> (-d1, d2, d1 + 1, 0)>(%c2, %262, %c7)
      %271 = vector.multi_reduction <or>, %20, %68 [] : vector<8xi64> to vector<8xi64>
      scf.yield %alloc_8 : memref<11x13xi32>
    }
    %103 = math.cos %12 : tensor<7xf16>
    %104 = index.maxu %c12, %c12
    %105 = memref.realloc %95 : memref<7xi64> to memref<7xi64>
    %expanded_28 = tensor.expand_shape %from_elements [[0], [1], [2, 3]] : tensor<7x11x13xi32> into tensor<7x11x13x1xi32>
    %106 = arith.divsi %false, %false : i1
    %107 = bufferization.to_tensor %101 : memref<i16>
    %108 = math.tan %1 : tensor<7x11x13xf32>
    %109 = vector.broadcast %c34358798_i32 : i32 to vector<8xi32>
    %110 = vector.broadcast %true : i1 to vector<8xi1>
    %111 = vector.maskedload %alloc_18[%c2, %c3], %110, %109 : memref<11x13xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
    %false_29 = arith.constant false
    %112 = vector.transfer_read %alloc_13[%c9, %c1, %c7], %false_29 : memref<7x11x13xi1>, vector<11xi1>
    %113 = math.log10 %16 : tensor<7x11x13xf32>
    %114 = vector.broadcast %c1963286850_i32 : i32 to vector<8x8xi32>
    %115 = vector.outerproduct %109, %111, %114 {kind = #vector.kind<maxsi>} : vector<8xi32>, vector<8xi32>
    %116 = math.tan %1 : tensor<7x11x13xf32>
    %117 = index.sub %c12, %c4
    %rank_30 = tensor.rank %7 : tensor<7x11x13xi16>
    %118 = vector.matrix_multiply %111, %109 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi32>, vector<8xi32>) -> vector<1xi32>
    %alloc_31 = memref.alloc() : memref<11x13xi1>
    memref.tensor_store %8, %alloc_31 : memref<11x13xi1>
    %119 = bufferization.to_tensor %95 : memref<7xi64>
    %120 = vector.splat %104 : vector<7x11x13xindex>
    %121 = vector.reduction <minui>, %20 : vector<8xi64> into i64
    scf.index_switch %64 
    case 1 {
      memref.assume_alignment %alloc_4, 4 : memref<8x11x8xi1>
      %262 = math.log %5 : tensor<7x11x13xf16>
      %263 = arith.addi %c-9988_i16, %c-9988_i16 : i16
      %from_elements_53 = tensor.from_elements %c-9988_i16, %c-9988_i16, %c-9988_i16, %c-9988_i16, %c-9988_i16, %c-9988_i16, %c-9988_i16 : tensor<7xi16>
      %264 = vector.broadcast %29 : f16 to vector<8x11x8xf16>
      %265 = vector.gather %5[%c11, %78, %c12] [%27], %26, %264 : tensor<7x11x13xf16>, vector<8x11x8xi32>, vector<8x11x8xi1>, vector<8x11x8xf16> into vector<8x11x8xf16>
      %266 = arith.addi %false, %false : i1
      %267 = vector.broadcast %c-9988_i16 : i16 to vector<8xi16>
      %268 = vector.multi_reduction <xor>, %39, %267 [0] : vector<11x8xi16> to vector<8xi16>
      %269 = math.powf %cst_1, %cst_1 : f32
      %270 = arith.muli %c618576397_i32, %c768864186_i32 : i32
      %271 = arith.xori %true, %true_2 : i1
      %272 = vector.transpose %63, [0] : vector<8xi64> to vector<8xi64>
      %273 = bufferization.to_tensor %alloc_9 : memref<8x11x8xi16>
      %274 = index.maxu %c6, %c8
      %275 = math.round %cst_0 : f16
      %c15516_i16 = arith.constant 15516 : i16
      %276 = scf.index_switch %rank -> memref<8x11x8xi32> 
      case 1 {
        %277 = vector.splat %c1 : vector<11x13xindex>
        %278 = arith.minf %29, %29 : f16
        %279 = math.absf %16 : tensor<7x11x13xf32>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_54 = arith.constant 0 : i32
        %280 = vector.transfer_read %alloc_7[%c5], %c0_i32_54 : memref<7xi32>, vector<i32>
        %281 = arith.shrui %c-9988_i16, %c-9988_i16 : i16
        %282 = index.sizeof
        %283 = arith.andi %c1711792754_i64, %c1570961800_i64 : i64
        affine.store %c-9988_i16, %101[] : memref<i16>
        %284 = memref.atomic_rmw maxs %c1586311473_i64, %95[%c3] : (i64, memref<7xi64>) -> i64
        %285 = arith.floordivsi %c1711792754_i64, %c1586311473_i64 : i64
        %286 = index.casts %rank : index to i32
        %287 = arith.cmpi ugt, %c34358798_i32, %c34358798_i32 : i32
        %288 = arith.ceildivsi %c-9988_i16, %c-9988_i16 : i16
        %289 = math.cttz %11 : tensor<11x13xi64>
        %290 = arith.remf %cst_0, %29 : f16
        %291 = arith.remf %cst_0, %cst : f16
        scf.yield %alloc_17 : memref<8x11x8xi32>
      }
      case 2 {
        memref.assume_alignment %alloc_9, 16 : memref<8x11x8xi16>
        %277 = arith.shrui %false_29, %true_2 : i1
        %alloc_54 = memref.alloc() : memref<8x11x8xi64>
        %278 = arith.shrui %c1963286850_i32, %c34358798_i32 : i32
        %false_55 = index.bool.constant false
        %279 = arith.shrui %c-9988_i16, %c-9988_i16 : i16
        %280 = math.log1p %2 : tensor<7xf16>
        %281 = index.ceildivu %65, %c8
        %282 = index.casts %78 : index to i32
        %283 = math.powf %21, %21 : tensor<f16>
        %284 = arith.subi %c34358798_i32, %c618576397_i32 : i32
        %285 = arith.muli %false, %false : i1
        %286 = math.exp2 %1 : tensor<7x11x13xf32>
        memref.copy %alloc_8, %alloc_18 : memref<11x13xi32> to memref<11x13xi32>
        %287 = index.ceildivs %rank, %c12
        %288 = arith.andi %c34358798_i32, %c1963286850_i32 : i32
        scf.yield %alloc_17 : memref<8x11x8xi32>
      }
      default {
        %277 = vector.broadcast %78 : index to vector<11xindex>
        %278 = vector.broadcast %true : i1 to vector<11xi1>
        %279 = vector.broadcast %c1570961800_i64 : i64 to vector<11xi64>
        vector.scatter %95[%c2] [%277], %278, %279 : memref<7xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
        %280 = bufferization.clone %alloc_14 : memref<11x13xf32> to memref<11x13xf32>
        %281 = arith.remf %cst_0, %29 : f16
        %282 = vector.broadcast %62 : index to vector<11xindex>
        %283 = vector.broadcast %true_2 : i1 to vector<11xi1>
        %284 = vector.broadcast %c618576397_i32 : i32 to vector<11xi32>
        vector.scatter %alloc_7[%c2] [%282], %283, %284 : memref<7xi32>, vector<11xindex>, vector<11xi1>, vector<11xi32>
        %285 = arith.remf %cst_3, %cst_1 : f32
        %c0_i32 = arith.constant 0 : i32
        %286 = vector.transfer_read %expanded_28[%c4, %c3, %c8, %52], %c0_i32 : tensor<7x11x13x1xi32>, vector<11x11x11xi32>
        %splat_54 = tensor.splat %c1711792754_i64 : tensor<7x11x13xi64>
        %287 = math.cttz %splat_27 : tensor<7xi64>
        %288 = math.fma %1, %1, %1 : tensor<7x11x13xf32>
        %289 = vector.load %alloc_11[%c0, %c10, %c3] : memref<8x11x8xi64>, vector<7xi64>
        %290 = vector.bitcast %63 : vector<8xi64> to vector<8xi64>
        %291 = bufferization.to_tensor %alloc_7 : memref<7xi32>
        %292 = vector.load %alloc_11[%c5, %c9, %c2] : memref<8x11x8xi64>, vector<8x11x8xi64>
        bufferization.dealloc_tensor %11 : tensor<11x13xi64>
        %alloca_55 = memref.alloca() : memref<11x13xi16>
        %293 = index.floordivs %c10, %64
        scf.yield %alloc_17 : memref<8x11x8xi32>
      }
      scf.yield
    }
    case 2 {
      %262 = arith.minf %cst_1, %cst_3 : f32
      %263 = vector.broadcast %cst_1 : f32 to vector<11xf32>
      %264 = vector.multi_reduction <mul>, %79, %263 [1] : vector<11x13xf32> to vector<11xf32>
      %265 = math.fma %13, %16, %16 : tensor<7x11x13xf32>
      %266 = arith.cmpi ule, %true_2, %false : i1
      %267 = math.log1p %73 : tensor<7xf32>
      %268 = math.powf %cst_1, %cst_1 : f32
      %c0_i16 = arith.constant 0 : i16
      %269 = vector.transfer_read %alloc_9[%64, %c4, %c14], %c0_i16 : memref<8x11x8xi16>, vector<i16>
      %generated_53 = tensor.generate %104, %c10, %c3 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %277 = math.tan %2 : tensor<7xf16>
        %278 = math.fma %16, %13, %17 : tensor<7x11x13xf32>
        %279 = arith.mulf %29, %cst : f16
        %280 = index.casts %false : i1 to index
        tensor.yield %c618576397_i32 : i32
      } : tensor<?x?x?xi32>
      bufferization.dealloc_tensor %7 : tensor<7x11x13xi16>
      %270 = arith.floordivsi %c618576397_i32, %c1193819625_i32 : i32
      %271 = math.ctlz %8 : tensor<11x13xi1>
      %272 = math.fma %22, %21, %22 : tensor<f16>
      %273 = arith.maxui %false_29, %false : i1
      %274 = index.ceildivu %57, %c14
      %275 = tensor.empty() : tensor<7xi16>
      %276 = bufferization.to_tensor %alloc_9 : memref<8x11x8xi16>
      scf.yield
    }
    case 3 {
      %262 = vector.transpose %30, [1, 0, 2] : vector<1x11x8xi16> to vector<11x1x8xi16>
      %263 = math.exp2 %1 : tensor<7x11x13xf32>
      %264 = vector.broadcast %cst_0 : f16 to vector<13xf16>
      %265 = vector.broadcast %false_29 : i1 to vector<13xi1>
      %266 = vector.maskedload %alloc_20[%c4], %265, %264 : memref<7xf16>, vector<13xi1>, vector<13xf16> into vector<13xf16>
      %267 = memref.atomic_rmw mins %c-9988_i16, %101[] : (i16, memref<i16>) -> i16
      %inserted_53 = tensor.insert %cst_1 into %73[%c4] : tensor<7xf32>
      %268 = arith.shrui %true, %true : i1
      %true_54 = index.bool.constant true
      %269 = math.log2 %2 : tensor<7xf16>
      %270 = memref.realloc %alloc_6 : memref<7xi1> to memref<11xi1>
      %271 = arith.addi %true, %false_29 : i1
      %true_55 = arith.constant true
      %272 = index.divs %c6, %62
      %273 = math.log10 %73 : tensor<7xf32>
      %274 = math.round %73 : tensor<7xf32>
      %275 = vector.splat %c1963286850_i32 : vector<7x11x13xi32>
      %alloc_56 = memref.alloc() : memref<8x11x8xf16>
      memref.copy %alloc_15, %alloc_56 : memref<8x11x8xf16> to memref<8x11x8xf16>
      scf.yield
    }
    default {
      %262 = vector.splat %c15 : vector<7xindex>
      %263 = scf.while (%arg2 = %c34358798_i32) : (i32) -> i32 {
        %277 = arith.xori %c1570961800_i64, %c1570961800_i64 : i64
        %278 = math.fma %21, %22, %21 : tensor<f16>
        %splat_55 = tensor.splat %c1711792754_i64 : tensor<11x13xi64>
        %279 = vector.broadcast %64 : index to vector<7xindex>
        %280 = vector.broadcast %true_2 : i1 to vector<7xi1>
        %281 = vector.broadcast %c-9988_i16 : i16 to vector<7xi16>
        vector.scatter %alloc_9[%c0, %c4, %c0] [%279], %280, %281 : memref<8x11x8xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
        %282 = math.floor %12 : tensor<7xf16>
        %283 = index.divs %100, %c11
        %284 = math.log10 %cst : f16
        %285 = vector.reduction <minsi>, %68 : vector<8xi64> into i64
        scf.condition(%false_29) %c34358798_i32 : i32
      } do {
      ^bb0(%arg2: i32):
        %277 = math.cos %16 : tensor<7x11x13xf32>
        %278 = index.sub %104, %c2
        %279 = bufferization.to_tensor %alloc_11 : memref<8x11x8xi64>
        %280 = affine.load %alloc_20[%c10] : memref<7xf16>
        %281 = index.casts %false : i1 to index
        %282 = math.tan %2 : tensor<7xf16>
        %splat_55 = tensor.splat %280 : tensor<7xf16>
        %283 = arith.divf %cst_1, %cst_3 : f32
        %alloc_56 = memref.alloc() : memref<8x11x8xi1>
        memref.copy %alloc_4, %alloc_56 : memref<8x11x8xi1> to memref<8x11x8xi1>
        %inserted_57 = tensor.insert %false_29 into %8[%c1, %c3] : tensor<11x13xi1>
        %284 = index.sub %65, %c12
        %285 = arith.xori %c1586311473_i64, %c1711792754_i64 : i64
        %286 = vector.gather %9[%c2, %104, %c3] [%27], %26, %26 : tensor<8x11x8xi1>, vector<8x11x8xi32>, vector<8x11x8xi1>, vector<8x11x8xi1> into vector<8x11x8xi1>
        %287 = arith.floordivsi %false, %true : i1
        %288 = math.expm1 %16 : tensor<7x11x13xf32>
        %289 = math.roundeven %5 : tensor<7x11x13xf16>
        scf.yield %arg2 : i32
      }
      %264 = arith.remf %cst_3, %cst_3 : f32
      %265 = math.expm1 %12 : tensor<7xf16>
      %266 = math.tan %cst_3 : f32
      %267 = index.mul %c11, %rank
      %rank_53 = tensor.rank %42 : tensor<8x11x8xi16>
      %inserted_54 = tensor.insert %c-9988_i16 into %15[%c4, %c7] : tensor<11x13xi16>
      %268 = scf.while (%arg2 = %76) : (vector<7x11x13xi32>) -> vector<7x11x13xi32> {
        %277 = index.castu %c6 : index to i32
        %278 = index.divs %52, %c5
        %279 = arith.addf %cst_1, %cst_3 : f32
        %280 = math.log10 %16 : tensor<7x11x13xf32>
        %281 = math.log10 %1 : tensor<7x11x13xf32>
        %282 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 4)>(%64, %24, %rank, %c4)
        %283 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 64)>(%c15, %267, %c11, %65)
        memref.tensor_store %3, %alloc_16 : memref<7x11x13xi16>
        scf.condition(%true) %76 : vector<7x11x13xi32>
      } do {
      ^bb0(%arg2: vector<7x11x13xi32>):
        %277 = tensor.empty(%c15) : tensor<?xi1>
        %278 = bufferization.clone %alloc_7 : memref<7xi32> to memref<7xi32>
        %279 = arith.divf %cst_3, %cst_1 : f32
        %280 = index.mul %104, %c5
        %281 = vector.transpose %66, [0, 1] : vector<11x13xf32> to vector<11x13xf32>
        bufferization.dealloc_tensor %expanded : tensor<8x11x8x1xi16>
        %282 = arith.shrsi %true_2, %false_29 : i1
        %283 = math.powf %5, %5 : tensor<7x11x13xf16>
        %284 = arith.maxui %false_29, %false_29 : i1
        %285 = arith.remsi %c1586311473_i64, %c1586311473_i64 : i64
        %inserted_55 = tensor.insert %c-9988_i16 into %14[%c2, %c4, %c6] : tensor<8x11x8xi16>
        %286 = index.sub %64, %c3
        %287 = arith.maxui %true, %false_29 : i1
        %288 = vector.broadcast %true_2 : i1 to vector<8x8xi1>
        %289 = vector.outerproduct %110, %110, %288 {kind = #vector.kind<maxsi>} : vector<8xi1>, vector<8xi1>
        %290 = arith.xori %c1570961800_i64, %c1570961800_i64 : i64
        memref.assume_alignment %alloc_10, 4 : memref<7x11x13xi64>
        scf.yield %76 : vector<7x11x13xi32>
      }
      %269 = memref.atomic_rmw andi %c768864186_i32, %alloc_17[%c3, %c10, %c0] : (i32, memref<8x11x8xi32>) -> i32
      %270 = arith.divui %c1711792754_i64, %c1711792754_i64 : i64
      %271 = arith.remf %29, %29 : f16
      memref.assume_alignment %alloc_19, 16 : memref<i16>
      %272 = vector.broadcast %104 : index to vector<7xindex>
      %273 = vector.broadcast %true_2 : i1 to vector<7xi1>
      %274 = vector.broadcast %cst_3 : f32 to vector<7xf32>
      vector.scatter %alloc_5[%c2, %c8] [%272], %273, %274 : memref<11x13xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
      %275 = math.floor %cst : f16
      %276 = math.fma %5, %5, %5 : tensor<7x11x13xf16>
    }
    %122 = arith.divf %29, %29 : f16
    %generated = tensor.generate %57, %c15 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %262 = arith.maxui %c1711792754_i64, %c1586311473_i64 : i64
      %263 = math.tan %cst_0 : f16
      %264 = math.absi %3 : tensor<7x11x13xi16>
      %265 = index.add %64, %c4
      tensor.yield %c1963286850_i32 : i32
    } : tensor<?x?x8xi32>
    %rank_32 = tensor.rank %22 : tensor<f16>
    %expanded_33 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<7x11x13xf32> into tensor<7x11x13x1xf32>
    %123 = vector.broadcast %false_29 : i1 to vector<7xi1>
    %124 = vector.broadcast %c618576397_i32 : i32 to vector<7xi32>
    %125 = vector.gather %alloc_13[%c12, %57, %65] [%124], %123, %123 : memref<7x11x13xi1>, vector<7xi32>, vector<7xi1>, vector<7xi1> into vector<7xi1>
    %126 = math.fpowi %13, %from_elements : tensor<7x11x13xf32>, tensor<7x11x13xi32>
    %127 = math.log %cst_0 : f16
    %128 = index.castu %65 : index to i32
    %129 = math.ceil %1 : tensor<7x11x13xf32>
    %130 = math.round %16 : tensor<7x11x13xf32>
    %131 = arith.cmpf one, %cst, %cst_0 : f16
    %132 = arith.andi %c34358798_i32, %c34358798_i32 : i32
    %alloc_34 = memref.alloc() : memref<7xi1>
    memref.copy %alloc_6, %alloc_34 : memref<7xi1> to memref<7xi1>
    %133 = vector.load %95[%c0] : memref<7xi64>, vector<7x11x13xi64>
    %extracted = tensor.extract %13[%c0, %c3, %c1] : tensor<7x11x13xf32>
    %collapsed = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<7x11x13xf32> into tensor<77x13xf32>
    %134 = math.log2 %12 : tensor<7xf16>
    %135 = arith.shrui %c1193819625_i32, %c1963286850_i32 : i32
    %136 = bufferization.to_tensor %alloc_19 : memref<i16>
    %137 = scf.while (%arg2 = %80) : (vector<11x13xf32>) -> vector<11x13xf32> {
      %alloc_53 = memref.alloc() : memref<7xi64>
      memref.copy %95, %alloc_53 : memref<7xi64> to memref<7xi64>
      %262 = vector.splat %c15 : vector<7x11x13xindex>
      %263 = arith.maxf %cst_0, %cst_0 : f16
      %264 = arith.ceildivsi %c-9988_i16, %c-9988_i16 : i16
      %265 = math.expm1 %5 : tensor<7x11x13xf16>
      %266 = index.sizeof
      %267 = arith.divui %c1570961800_i64, %c1711792754_i64 : i64
      %268 = bufferization.to_tensor %alloc_15 : memref<8x11x8xf16>
      scf.condition(%true) %67 : vector<11x13xf32>
    } do {
    ^bb0(%arg2: vector<11x13xf32>):
      %262 = affine.for %arg3 = 0 to 97 iter_args(%arg4 = %117) -> (index) {
        affine.yield %rank : index
      }
      %alloca_53 = memref.alloca() : memref<7x11x13xi1>
      %263 = vector.broadcast %cst_1 : f32 to vector<7x13x13xf32>
      %264 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1)>, affine_map<(d0, d1, d2, d3) -> (d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %77, %79, %263 : vector<7x11x13xf32>, vector<11x13xf32> into vector<7x13x13xf32>
      %265 = math.exp2 %16 : tensor<7x11x13xf32>
      %266 = arith.cmpi sle, %c34358798_i32, %c768864186_i32 : i32
      %267 = vector.broadcast %false : i1 to vector<7x7xi1>
      %268 = vector.outerproduct %123, %123, %267 {kind = #vector.kind<mul>} : vector<7xi1>, vector<7xi1>
      %269 = vector.matrix_multiply %124, %118 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<1xi32>) -> vector<7xi32>
      %alloc_54 = memref.alloc() : memref<7x11x13xf32>
      memref.tensor_store %17, %alloc_54 : memref<7x11x13xf32>
      %270 = vector.broadcast %c-9988_i16 : i16 to vector<8xi16>
      %271 = vector.multi_reduction <minui>, %37, %270 [0, 1] : vector<1x11x8xi16> to vector<8xi16>
      %272 = arith.andi %false, %false_29 : i1
      %273 = vector.extract_strided_slice %67 {offsets = [8], sizes = [1], strides = [1]} : vector<11x13xf32> to vector<1x13xf32>
      %274 = affine.if affine_set<(d0, d1) : (d0 floordiv 8 + d1 == 0)>(%c4, %c2) -> i16 {
        %279 = math.floor %73 : tensor<7xf32>
        %280 = vector.splat %64 : vector<8x11x8xindex>
        %281 = vector.splat %c1 : vector<7xindex>
        %282 = vector.bitcast %20 : vector<8xi64> to vector<8xi64>
        %283 = math.log2 %expanded_33 : tensor<7x11x13x1xf32>
        %284 = vector.bitcast %125 : vector<7xi1> to vector<7xi1>
        %alloca_55 = memref.alloca() : memref<7xi64>
        %285 = vector.transpose %125, [0] : vector<7xi1> to vector<7xi1>
        affine.yield %c-9988_i16 : i16
      } else {
        %279 = math.exp2 %17 : tensor<7x11x13xf32>
        %280 = math.absi %8 : tensor<11x13xi1>
        %281 = math.log10 %21 : tensor<f16>
        %282 = vector.broadcast %cst_1 : f32 to vector<11x13xf32>
        %283 = vector.fma %282, %80, %282 : vector<11x13xf32>
        %284 = arith.cmpi ult, %c-9988_i16, %c-9988_i16 : i16
        %285 = vector.broadcast %c1193819625_i32 : i32 to vector<11xi32>
        %286 = vector.multi_reduction <maxsi>, %27, %285 [0, 2] : vector<8x11x8xi32> to vector<11xi32>
        %287 = arith.remf %cst_3, %cst_3 : f32
        %288 = arith.minf %extracted, %extracted : f32
        affine.yield %c-9988_i16 : i16
      }
      %275 = arith.floordivsi %c1586311473_i64, %c1711792754_i64 : i64
      %276 = math.log10 %extracted : f32
      %277 = index.sub %c15, %c15
      %278 = math.log2 %cst_3 : f32
      scf.yield %79 : vector<11x13xf32>
    }
    %138 = math.absi %9 : tensor<8x11x8xi1>
    %139 = arith.minf %cst_3, %cst_1 : f32
    %140 = math.tan %16 : tensor<7x11x13xf32>
    %141 = vector.broadcast %c1570961800_i64 : i64 to vector<8x8xi64>
    %142 = vector.outerproduct %20, %63, %141 {kind = #vector.kind<minsi>} : vector<8xi64>, vector<8xi64>
    %143 = index.casts %117 : index to i32
    %144 = arith.addf %cst_0, %cst_0 : f16
    %145 = vector.flat_transpose %63 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
    %146 = vector.broadcast %c15 : index to vector<7xindex>
    vector.scatter %alloc_13[%c1, %c7, %c11] [%146], %123, %125 : memref<7x11x13xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
    %147 = arith.shrui %c-9988_i16, %c-9988_i16 : i16
    memref.assume_alignment %alloc_4, 4 : memref<8x11x8xi1>
    %148 = math.ctlz %c1963286850_i32 : i32
    %rank_35 = tensor.rank %10 : tensor<8x11x8xi16>
    %149 = memref.realloc %95 : memref<7xi64> to memref<8xi64>
    %150 = arith.divf %cst, %cst_0 : f16
    %151 = math.exp2 %cst_1 : f32
    %152 = math.expm1 %73 : tensor<7xf32>
    %153 = index.sizeof
    %154 = memref.load %alloc_10[%c2, %c1, %c0] : memref<7x11x13xi64>
    %155 = index.castu %rank_32 : index to i32
    %156 = math.atan2 %12, %2 : tensor<7xf16>
    %157 = math.exp2 %cst_1 : f32
    %158 = index.sub %117, %rank_30
    %159 = arith.cmpi sgt, %c34358798_i32, %c34358798_i32 : i32
    %160 = index.sizeof
    %161 = index.maxu %104, %c1
    memref.assume_alignment %alloc_9, 1 : memref<8x11x8xi16>
    %162 = memref.load %alloc_19[] : memref<i16>
    %163 = vector.broadcast %extracted : f32 to vector<13xf32>
    %164 = vector.multi_reduction <add>, %67, %163 [0] : vector<11x13xf32> to vector<13xf32>
    %rank_36 = tensor.rank %4 : tensor<7xi16>
    %165 = arith.addi %c1193819625_i32, %c34358798_i32 : i32
    memref.assume_alignment %alloc_12, 1 : memref<11x13xf16>
    %166 = math.log %13 : tensor<7x11x13xf32>
    %167 = math.absf %12 : tensor<7xf16>
    %168 = math.expm1 %22 : tensor<f16>
    %generated_37 = tensor.generate %rank_32 {
    ^bb0(%arg2: index):
      %262 = vector.flat_transpose %111 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
      %extracted_53 = tensor.extract %from_elements_21[%c5] : tensor<7xi64>
      %263 = scf.index_switch %161 -> tensor<11x13xf32> 
      case 1 {
        %265 = vector.bitcast %20 : vector<8xi64> to vector<8xi64>
        %266 = arith.divf %cst_1, %cst_3 : f32
        %267 = math.powf %collapsed, %collapsed : tensor<77x13xf32>
        %268 = math.log %73 : tensor<7xf32>
        %269 = vector.broadcast %c-9988_i16 : i16 to vector<i16>
        %270 = vector.transfer_write %269, %14[%c2, %c12, %117] : vector<i16>, tensor<8x11x8xi16>
        %alloc_54 = memref.alloc() : memref<f16>
        memref.tensor_store %22, %alloc_54 : memref<f16>
        %271 = index.add %rank_32, %rank_30
        %272 = math.absf %collapsed : tensor<77x13xf32>
        %273 = arith.remui %extracted_53, %c1711792754_i64 : i64
        %274 = affine.load %alloc_17[%c5, %c9, %c0] : memref<8x11x8xi32>
        %275 = memref.atomic_rmw addi %c768864186_i32, %alloc_8[%c9, %c6] : (i32, memref<11x13xi32>) -> i32
        %276 = memref.load %alloc_8[%c4, %c2] : memref<11x13xi32>
        %alloc_55 = memref.alloc() : memref<7x11x13xi32>
        %277 = vector.load %alloc_12[%c4, %c8] : memref<11x13xf16>, vector<8x11x8xf16>
        %278 = arith.cmpi sge, %false_29, %false : i1
        %279 = index.sub %c9, %c5
        %280 = tensor.empty() : tensor<11x13xf32>
        scf.yield %280 : tensor<11x13xf32>
      }
      default {
        %265 = vector.flat_transpose %20 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
        %alloc_54 = memref.alloc() : memref<13x11xi16>
        %266 = tensor.empty() : tensor<11x11xi16>
        %267 = linalg.matmul ins(%15, %alloc_54 : tensor<11x13xi16>, memref<13x11xi16>) outs(%266 : tensor<11x11xi16>) -> tensor<11x11xi16>
        %268 = math.powf %1, %1 : tensor<7x11x13xf32>
        %rank_55 = tensor.rank %8 : tensor<11x13xi1>
        %269 = affine.load %alloc_18[%c1, %c11] : memref<11x13xi32>
        %270 = index.castu %c1570961800_i64 : i64 to index
        %c1_i64 = arith.constant 1 : i64
        %271 = vector.transfer_read %alloc_11[%rank_55, %160, %rank_32], %c1_i64 : memref<8x11x8xi64>, vector<11x8xi64>
        %272 = index.divs %161, %24
        %273 = vector.bitcast %39 : vector<11x8xi16> to vector<11x8xf16>
        %274 = math.log %2 : tensor<7xf16>
        %275 = arith.addf %29, %29 : f16
        %276 = vector.reduction <minsi>, %125 : vector<7xi1> into i1
        %277 = math.exp2 %collapsed : tensor<77x13xf32>
        %inserted_56 = tensor.insert %extracted_53 into %0[%c6, %c6, %c8] : tensor<7x11x13xi64>
        %278 = arith.xori %true, %true_2 : i1
        %279 = math.log10 %1 : tensor<7x11x13xf32>
        %280 = tensor.empty() : tensor<11x13xf32>
        scf.yield %280 : tensor<11x13xf32>
      }
      %264 = math.powf %12, %2 : tensor<7xf16>
      tensor.yield %c-9988_i16 : i16
    } : tensor<?xi16>
    %169 = vector.bitcast %67 : vector<11x13xf32> to vector<11x13xi32>
    %170 = vector.flat_transpose %43 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
    %171 = arith.minf %extracted, %cst_3 : f32
    %172 = index.castu %rank_32 : index to i32
    %173 = math.powf %5, %5 : tensor<7x11x13xf16>
    %174 = math.cos %expanded_33 : tensor<7x11x13x1xf32>
    %rank_38 = tensor.rank %8 : tensor<11x13xi1>
    %175 = math.log2 %29 : f16
    %176 = math.absf %16 : tensor<7x11x13xf32>
    %177 = vector.broadcast %c-9988_i16 : i16 to vector<8xi16>
    %178 = vector.multi_reduction <maxui>, %33, %177 [0, 1] : vector<1x6x8xi16> to vector<8xi16>
    %179 = index.ceildivu %c0, %c15
    %180 = index.sizeof
    %181 = index.sub %c9, %100
    %182 = math.fma %1, %1, %13 : tensor<7x11x13xf32>
    %183 = math.tanh %13 : tensor<7x11x13xf32>
    %184 = math.absi %c618576397_i32 : i32
    %185 = scf.if %false_29 -> (i16) {
      memref.assume_alignment %alloc_10, 8 : memref<7x11x13xi64>
      %262 = vector.load %alloc_13[%c2, %c4, %c3] : memref<7x11x13xi1>, vector<7xi1>
      %263 = math.expm1 %expanded_33 : tensor<7x11x13x1xf32>
      %264 = affine.load %alloc_14[%c13, %c15] : memref<11x13xf32>
      %265 = math.fma %12, %2, %2 : tensor<7xf16>
      %266 = math.sqrt %2 : tensor<7xf16>
      %267 = arith.maxf %cst_3, %cst_1 : f32
      %268 = bufferization.to_memref %collapsed : memref<77x13xf32>
      scf.yield %c-9988_i16 : i16
    } else {
      %alloca_53 = memref.alloca() : memref<7x11x13xi16>
      %262 = index.castu %false_29 : i1 to index
      %263 = affine.load %alloc_11[%c7, %c0, %c0] : memref<8x11x8xi64>
      %264 = math.log2 %22 : tensor<f16>
      %265 = index.casts %c34358798_i32 : i32 to index
      %266 = math.ctlz %15 : tensor<11x13xi16>
      %267 = vector.extract_strided_slice %145 {offsets = [6], sizes = [2], strides = [1]} : vector<8xi64> to vector<2xi64>
      %268 = scf.while (%arg2 = %alloc_12) : (memref<11x13xf16>) -> memref<11x13xf16> {
        %269 = arith.divui %false_29, %false_29 : i1
        %270 = math.absi %107 : tensor<i16>
        %extracted_54 = tensor.extract %7[%c2, %c0, %c2] : tensor<7x11x13xi16>
        %271 = math.log %extracted : f32
        affine.store %c1570961800_i64, %alloc[%c12, %c13] : memref<11x13xi64>
        %272 = arith.xori %false_29, %false : i1
        %alloc_55 = memref.alloc() : memref<7x11x13x1xi64>
        memref.tensor_store %expanded_25, %alloc_55 : memref<7x11x13x1xi64>
        %273 = index.sizeof
        scf.condition(%true) %arg2 : memref<11x13xf16>
      } do {
      ^bb0(%arg2: memref<11x13xf16>):
        %alloca_54 = memref.alloca() : memref<7xi32>
        %269 = index.ceildivu %c15, %rank_36
        %270 = vector.broadcast %78 : index to vector<8xindex>
        %271 = vector.broadcast %cst : f16 to vector<8xf16>
        vector.scatter %alloc_12[%c5, %c6] [%270], %110, %271 : memref<11x13xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
        %alloca_55 = memref.alloca() : memref<7x11x13xi1>
        %272 = vector.bitcast %163 : vector<13xf32> to vector<13xf32>
        %false_56 = index.bool.constant false
        %273 = vector.bitcast %110 : vector<8xi1> to vector<8xi1>
        %274 = vector.matrix_multiply %68, %68 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
        %275 = vector.broadcast %rank_30 : index to vector<13xindex>
        %276 = vector.broadcast %true_2 : i1 to vector<13xi1>
        %277 = vector.broadcast %c-9988_i16 : i16 to vector<13xi16>
        vector.scatter %alloc_9[%c6, %c0, %c5] [%275], %276, %277 : memref<8x11x8xi16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
        %278 = math.absf %5 : tensor<7x11x13xf16>
        %279 = index.sub %c3, %rank_30
        %280 = vector.broadcast %extracted : f32 to vector<8x11x8xf32>
        %281 = vector.fma %280, %280, %280 : vector<8x11x8xf32>
        %282 = arith.minui %c1711792754_i64, %c1711792754_i64 : i64
        %283 = vector.flat_transpose %20 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
        %284 = vector.broadcast %false_56 : i1 to vector<11x8xi1>
        %dest, %accumulated_value = vector.scan <mul>, %26, %284 {inclusive = false, reduction_dim = 0 : i64} : vector<8x11x8xi1>, vector<11x8xi1>
        %285 = vector.matrix_multiply %63, %68 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
        scf.yield %alloc_12 : memref<11x13xf16>
      }
      scf.yield %c-9988_i16 : i16
    }
    %186 = vector.gather %9[%c4, %24, %158] [%169], %51, %51 : tensor<8x11x8xi1>, vector<11x13xi32>, vector<11x13xi1>, vector<11x13xi1> into vector<11x13xi1>
    %187 = math.round %5 : tensor<7x11x13xf16>
    %188 = scf.while (%arg2 = %63) : (vector<8xi64>) -> vector<8xi64> {
      %262 = arith.remf %29, %cst : f16
      %263 = memref.atomic_rmw mulf %cst_3, %alloc_14[%c0, %c2] : (f32, memref<11x13xf32>) -> f32
      %264 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %124, %76, %169 : vector<7xi32>, vector<7x11x13xi32> into vector<11x13xi32>
      %265 = vector.multi_reduction <minui>, %125, %false [0] : vector<7xi1> to i1
      %cst_53 = arith.constant 1.000000e+00 : f32
      %266 = vector.transfer_read %13[%c2, %78, %65], %cst_53 : tensor<7x11x13xf32>, vector<f32>
      %267 = arith.negf %cst_53 : f32
      %cst_54 = arith.constant 1.000000e+00 : f16
      %cst_55 = arith.constant 0.000000e+00 : f16
      %268 = vector.transfer_read %12[%160], %cst_55 : tensor<7xf16>, vector<f16>
      %269 = vector.broadcast %c1711792754_i64 : i64 to vector<8x8xi64>
      %270 = vector.outerproduct %63, %145, %269 {kind = #vector.kind<or>} : vector<8xi64>, vector<8xi64>
      scf.condition(%265) %68 : vector<8xi64>
    } do {
    ^bb0(%arg2: vector<8xi64>):
      %262 = index.divu %c7, %180
      bufferization.dealloc_tensor %8 : tensor<11x13xi1>
      %263 = arith.addf %extracted, %cst_1 : f32
      %264 = math.powf %1, %17 : tensor<7x11x13xf32>
      %265 = math.log2 %cst_0 : f16
      %alloc_53 = memref.alloc() : memref<11x13x7xi16>
      %266 = tensor.empty() : tensor<11xi16>
      %267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_53, %266 : memref<11x13x7xi16>, tensor<11xi16>) outs(%3 : tensor<7x11x13xi16>) {
      ^bb0(%in: i16, %in_55: i16, %out: i16):
        %277 = arith.remf %cst, %cst_0 : f16
        %278 = math.roundeven %5 : tensor<7x11x13xf16>
        %279 = affine.load %alloc_7[%c12] : memref<7xi32>
        %cast = tensor.cast %3 : tensor<7x11x13xi16> to tensor<?x?x?xi16>
        %280 = memref.load %alloc_11[%c4, %c9, %c6] : memref<8x11x8xi64>
        %281 = math.exp %5 : tensor<7x11x13xf16>
        %282 = arith.divui %false_29, %true_2 : i1
        %283 = math.powf %cst_0, %29 : f16
        %284 = vector.broadcast %78 : index to vector<7xindex>
        %285 = vector.broadcast %c1570961800_i64 : i64 to vector<7xi64>
        vector.scatter %alloc_11[%c0, %c2, %c7] [%284], %125, %285 : memref<8x11x8xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %286 = index.add %rank, %rank
        %287 = math.expm1 %12 : tensor<7xf16>
        %288 = bufferization.clone %alloc_19 : memref<i16> to memref<i16>
        %289 = arith.maxui %c1193819625_i32, %c768864186_i32 : i32
        %290 = vector.maskedload %alloc_17[%c5, %c6, %c0], %123, %124 : memref<8x11x8xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %291 = math.fpowi %cst_3, %c1193819625_i32 : f32, i32
        %292 = arith.shli %true, %false_29 : i1
        %293 = math.log %cst_3 : f32
        %extracted_56 = tensor.extract %12[%c2] : tensor<7xf16>
        %expanded_57 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<11x13xi16> into tensor<11x13x1xi16>
        %294 = arith.addf %cst_0, %extracted_56 : f16
        %295 = index.castu %64 : index to i32
        %296 = vector.flat_transpose %125 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %297 = tensor.empty(%181) : tensor<7x?x13xi64>
        %inserted_58 = tensor.insert %c1586311473_i64 into %18[%c10, %c0] : tensor<13x11xi64>
        %298 = arith.shrui %false_29, %false_29 : i1
        %299 = math.absi %15 : tensor<11x13xi16>
        %300 = vector.flat_transpose %68 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
        %301 = arith.minf %cst_0, %cst : f16
        %302 = arith.divf %extracted, %cst_3 : f32
        %303 = vector.broadcast %cst_3 : f32 to vector<7xf32>
        %304 = vector.fma %303, %303, %303 : vector<7xf32>
        %305 = math.absf %cst_3 : f32
        %306 = arith.shrui %c-9988_i16, %c-9988_i16 : i16
        linalg.yield %c-9988_i16 : i16
      } -> tensor<7x11x13xi16>
      %268 = index.sub %158, %c15
      %269 = arith.maxui %185, %185 : i16
      %270 = math.exp2 %12 : tensor<7xf16>
      %271 = index.maxu %62, %268
      %alloc_54 = memref.alloc() : memref<7x11x13xi16>
      memref.copy %alloc_16, %alloc_54 : memref<7x11x13xi16> to memref<7x11x13xi16>
      %272 = scf.while (%arg3 = %63) : (vector<8xi64>) -> vector<8xi64> {
        %277 = math.cttz %42 : tensor<8x11x8xi16>
        %278 = index.sub %rank_38, %c14
        %splat_55 = tensor.splat %c1193819625_i32 : tensor<7x11x13xi32>
        %279 = arith.floordivsi %c768864186_i32, %c1193819625_i32 : i32
        %280 = arith.xori %c1586311473_i64, %c1586311473_i64 : i64
        %inserted_56 = tensor.insert %c1570961800_i64 into %119[%c5] : tensor<7xi64>
        %281 = math.round %cst_3 : f32
        %alloca_57 = memref.alloca() : memref<8x11x8xf32>
        scf.condition(%false) %170 : vector<8xi64>
      } do {
      ^bb0(%arg3: vector<8xi64>):
        %277 = vector.broadcast %57 : index to vector<8xindex>
        vector.scatter %alloc[%c2, %c0] [%277], %110, %20 : memref<11x13xi64>, vector<8xindex>, vector<8xi1>, vector<8xi64>
        %278 = memref.load %alloc_19[] : memref<i16>
        %279 = index.divu %c1, %rank_32
        %280 = arith.minf %cst_3, %extracted : f32
        %281 = math.roundeven %collapsed : tensor<77x13xf32>
        %alloc_55 = memref.alloc() : memref<8x11x8xi1>
        memref.copy %alloc_4, %alloc_55 : memref<8x11x8xi1> to memref<8x11x8xi1>
        %282 = index.castu %179 : index to i32
        %283 = math.copysign %17, %17 : tensor<7x11x13xf32>
        %284 = math.round %16 : tensor<7x11x13xf32>
        %285 = vector.broadcast %rank_35 : index to vector<13xindex>
        %286 = vector.broadcast %true_2 : i1 to vector<13xi1>
        %287 = vector.broadcast %c-9988_i16 : i16 to vector<13xi16>
        vector.scatter %101[] [%285], %286, %287 : memref<i16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
        %inserted_56 = tensor.insert %cst_3 into %13[%c4, %c3, %c10] : tensor<7x11x13xf32>
        %288 = math.log10 %1 : tensor<7x11x13xf32>
        %cast = tensor.cast %0 : tensor<7x11x13xi64> to tensor<?x?x?xi64>
        %289 = tensor.empty() : tensor<8x11x8xi32>
        %290 = vector.gather %289[%c0, %rank_35, %52] [%27], %26, %27 : tensor<8x11x8xi32>, vector<8x11x8xi32>, vector<8x11x8xi1>, vector<8x11x8xi32> into vector<8x11x8xi32>
        %291 = vector.create_mask %c7 : vector<7xi1>
        %splat_57 = tensor.splat %c-9988_i16 : tensor<8x11x8xi16>
        scf.yield %145 : vector<8xi64>
      }
      %273 = math.tan %cst_1 : f32
      %274 = vector.broadcast %false : i1 to vector<13xi1>
      %dest, %accumulated_value = vector.scan <and>, %186, %274 {inclusive = false, reduction_dim = 0 : i64} : vector<11x13xi1>, vector<13xi1>
      %275 = math.fpowi %13, %from_elements : tensor<7x11x13xf32>, tensor<7x11x13xi32>
      %276 = index.sizeof
      scf.yield %145 : vector<8xi64>
    }
    %189 = affine.for %arg2 = 0 to 64 iter_args(%arg3 = %alloc_6) -> (memref<7xi1>) {
      affine.yield %alloc_6 : memref<7xi1>
    }
    %190 = index.castu %false : i1 to index
    %191 = memref.load %alloc_17[%c6, %c1, %c6] : memref<8x11x8xi32>
    %192 = math.expm1 %1 : tensor<7x11x13xf32>
    %193 = arith.minf %cst_1, %extracted : f32
    %194 = arith.remui %true_2, %true_2 : i1
    %195 = index.add %190, %c15
    %196 = memref.atomic_rmw assign %c34358798_i32, %alloc_8[%c0, %c11] : (i32, memref<11x13xi32>) -> i32
    %true_39 = index.bool.constant true
    %197 = math.expm1 %21 : tensor<f16>
    %rank_40 = tensor.rank %transposed : tensor<13x11xi64>
    %198 = math.powf %16, %17 : tensor<7x11x13xf32>
    %199 = vector.broadcast %c1570961800_i64 : i64 to vector<7x13xi64>
    %200 = vector.multi_reduction <add>, %133, %199 [1] : vector<7x11x13xi64> to vector<7x13xi64>
    %201 = arith.cmpf ule, %cst_3, %cst_3 : f32
    %202 = arith.remui %c1963286850_i32, %c1963286850_i32 : i32
    %c-13928_i16 = arith.constant -13928 : i16
    %inserted = tensor.insert %185 into %136[] : tensor<i16>
    %203 = tensor.empty() : tensor<8x11x8xi16>
    %mapped_41 = linalg.map ins(%42 : tensor<8x11x8xi16>) outs(%203 : tensor<8x11x8xi16>)
      (%in: i16) {
        %262 = index.floordivs %c6, %c8
        %263 = index.castu %262 : index to i32
        %264 = math.expm1 %cst_3 : f32
        %265 = arith.addf %cst_3, %cst_3 : f32
        %266 = arith.shrui %c-9988_i16, %c-9988_i16 : i16
        %267 = arith.ceildivsi %c768864186_i32, %c768864186_i32 : i32
        %268 = scf.while (%arg2 = %109) : (vector<8xi32>) -> vector<8xi32> {
          %291 = index.ceildivu %24, %65
          %292 = vector.broadcast %cst_1 : f32 to vector<7xf32>
          %293 = vector.fma %292, %292, %292 : vector<7xf32>
          %splat_57 = tensor.splat %c1711792754_i64 : tensor<7x11x13xi64>
          %294 = arith.maxsi %false_29, %true_2 : i1
          %from_elements_58 = tensor.from_elements %true_39, %false_29, %true, %false, %true, %true_2, %false_29, %true_39, %false_29, %false, %false, %false_29, %true, %false_29, %true, %true_2, %false, %true_39, %false, %true_2, %false_29, %true, %true_39, %false_29, %true_39, %false, %false, %true, %false_29, %false_29, %false, %true_2, %true_2, %false_29, %true, %true_39, %true_2, %false, %false, %false, %false_29, %true_39, %true, %true_2, %true, %false, %false_29, %true_39, %true_39, %true, %true_2, %true_2, %true_39, %false_29, %true, %true_39, %true_39, %false, %false_29, %false, %false_29, %false_29, %true_2, %true_39, %false, %true, %true_39, %true, %false, %false_29, %false, %false_29, %true, %false, %false, %true_2, %true, %true_39, %false_29, %true, %true_2, %true_2, %false, %true_39, %false_29, %true, %true_2, %true_2, %false, %false, %true, %false, %true, %true_39, %true_2, %true, %false_29, %true_39, %true_2, %true_2, %true, %false, %true, %true, %false, %false, %false, %true_2, %true_39, %false_29, %true_39, %true_2, %false, %true, %true, %true_39, %false_29, %false_29, %true, %true_2, %true, %true_2, %false, %true_2, %false_29, %true, %true_2, %false_29, %false, %false, %true_39, %true, %true_2, %false, %true_39, %true_2, %true_2, %false, %false, %false_29, %true_2, %true, %true_39, %true_39, %false, %false, %true_39, %false_29, %false, %false, %false_29, %false, %true, %true_39, %false_29, %false_29, %true, %true_39, %true_39, %true_2, %true_2, %false, %true, %false_29, %true_2, %false, %false, %false_29, %true_39, %false_29, %true, %true_39, %false, %true, %true_39, %true_2, %true_39, %false, %true_39, %false_29, %false_29, %true_2, %true_2, %true_2, %false, %false_29, %true, %true_2, %false_29, %true, %true_2, %false, %true_39, %false_29, %true, %false_29, %true_2, %false, %false_29, %true_2, %false, %false, %false_29, %true_39, %false, %false_29, %false, %false, %true_2, %false, %true_39, %false_29, %true_2, %true_2, %false_29, %true, %true_2, %false, %true_39, %true, %true, %true_39, %true_2, %false, %false_29, %true_39, %true_39, %false, %false, %false_29, %false, %true_39, %false_29, %true_39, %true_39, %false_29, %false, %false_29, %true, %false, %false_29, %true_2, %false, %false, %false, %true, %false, %true_39, %true_39, %false, %true_39, %true_39, %true, %false_29, %false_29, %false_29, %false, %true_2, %true_39, %true_39, %true, %false_29, %true_39, %false, %true_39, %false_29, %true_2, %true_2, %false, %true_2, %false_29, %true_39, %true, %false, %false, %true_2, %true_39, %true_39, %true_39, %true_39, %false, %false_29, %true_2, %false, %true, %true, %false, %true_2, %true_39, %true, %false, %true, %true_2, %true_2, %true_2, %false_29, %true_2, %true_39, %true_2, %false, %false, %true, %false_29, %false, %false, %true_39, %false_29, %false_29, %true, %false, %true, %false_29, %false, %false, %true_39, %true_39, %true, %false, %true, %true_39, %false_29, %true_2, %true_2, %true_39, %true_39, %false_29, %true_39, %true_39, %false_29, %true, %false, %false_29, %true_39, %true_2, %true_39, %true_39, %true, %false, %true_39, %false_29, %true_2, %true_39, %true, %true_2, %true, %false, %true_39, %false_29, %false, %false_29, %false_29, %false, %true, %false_29, %false_29, %true_2, %true_39, %true_2, %true_39, %true_2, %true_2, %true, %false, %true, %true_2, %true_2, %false, %true, %false, %true, %true_39, %false, %false, %true_39, %false_29, %true_39, %true_39, %true_2, %true, %true_39, %false, %true_2, %false, %false, %false, %false, %false, %true_39, %true_2, %true_39, %true_39, %true, %true_39, %true, %true_39, %true_2, %false_29, %true_39, %true, %false_29, %true_2, %true_2, %true_2, %true_2, %true_39, %true_2, %false_29, %true_39, %true_39, %false, %true, %true, %false_29, %true, %true, %false_29, %true_39, %true_39, %true_2, %true_2, %false_29, %true, %true, %false_29, %true, %true_39, %false_29, %false_29, %true, %true_39, %true_39, %true_2, %false, %false_29, %true_2, %false, %true_2, %false_29, %false, %true_39, %true, %false, %false, %false_29, %true, %false_29, %true_2, %true, %true, %false, %true_2, %false_29, %true, %true, %true, %true_39, %false, %false_29, %false, %true, %true_2, %true_39, %false_29, %false, %false, %true_39, %false, %true, %true, %true_39, %true, %false_29, %true_2, %false_29, %true, %true_2, %false_29, %false_29, %true_39, %true_2, %false, %false, %true, %false_29, %true, %false_29, %true, %true_39, %true, %true_39, %false_29, %true_39, %true_2, %true, %true, %true_2, %false_29, %true, %false, %false, %true_39, %true_39, %true, %true_2, %false_29, %true, %true, %true, %false, %false_29, %false_29, %true, %false_29, %true_39, %true_2, %true_2, %true, %true_39, %true, %true_39, %true, %true_2, %false, %true_39, %false, %true_39, %false, %true, %false_29, %true, %true, %true_2, %true, %false, %true, %true, %true_39, %false, %true, %false_29, %true_2, %false, %false, %true, %false, %true, %true_39, %true_2, %false, %true_39, %true, %false_29, %true, %false, %true_39, %true, %false, %true_2, %false_29, %true, %true_39, %false_29, %true_2, %true_39, %true, %false, %true_39, %true_39, %true, %true, %true_2, %false, %true, %true_39, %false, %true, %true, %false, %true_39, %true_39, %false, %true_39, %true_2, %false_29, %true, %true, %true, %false_29, %true_2, %true_39, %false_29, %true_2, %true_2, %true_2, %true_2, %false, %false, %true, %false, %true_39, %true_2, %false_29, %true, %true_2, %true, %true_39, %true_2, %false_29, %true, %true, %false, %false, %true, %true_2, %true_2, %true, %true_39, %true_39, %true_2, %false_29, %true_2, %true_39, %true_2, %true, %true, %false, %true, %false_29, %false, %false, %true_2, %false, %true_2, %false, %true_39, %true_2, %true, %true_39, %true_2, %false_29, %false, %false, %false, %true, %true_2, %false_29, %true_39, %true_39, %true_2, %true, %false, %false, %true_2, %true, %true_39, %true_39, %false, %true_2, %true_39, %true_2, %false, %false, %true_2, %false_29, %true, %true_2, %true, %true, %true, %false_29, %false, %false_29, %true_39, %true, %false_29, %true_39, %false_29, %false_29, %true, %true_2, %true, %true, %true_39, %false_29, %true, %true_2, %false, %false_29, %false, %true_39, %true, %true_39, %true_39, %true_39, %true, %true, %false_29, %true, %true_39, %true_2, %false, %true_2, %false_29, %false_29, %true_2, %true_39, %false, %true_39, %true_39, %false_29, %false, %false_29, %true_39, %true_2, %false, %false_29, %false, %true_2, %false_29, %false, %true, %true, %false_29, %true, %false, %true, %true_39, %false_29, %true_2, %true, %true, %true_39, %false_29, %true, %true_2, %true_2, %true, %true_2, %true_39, %true_2, %false_29, %false_29, %false_29, %false, %true_2, %true, %false_29, %false, %true_39, %false, %true_39, %false, %false, %true_39, %false_29, %true_2, %false_29, %true_39, %false, %false, %true, %true_2, %true_39, %true_39, %true_2, %true_39, %false, %false, %false_29, %false, %true_39, %false, %true_39, %true, %false_29, %true, %true, %false_29, %false_29, %false_29, %true, %true, %true_2, %false, %true_39, %true, %true_39, %true_39, %false_29, %true_39, %false_29, %true_2, %false_29, %true_2, %true, %true_2, %true_2, %false, %false_29, %true_39, %false, %false_29, %false_29, %true_39, %true_39, %false_29, %true_2, %false, %false_29, %true, %false_29, %true_39, %true_39, %false_29, %true_39, %false_29, %true, %false, %false, %false_29, %true_2, %false_29, %false, %false, %false_29, %true, %true_39, %true, %true, %true_39, %true_2, %true, %true_39, %false_29, %true_2, %true_39, %true_2, %false, %true, %true, %true_39, %false_29, %false_29, %true, %true_2, %true, %true_39, %true_2, %true_39, %false, %false_29, %false_29, %false, %true_2, %true_39, %false, %true_2, %false_29, %true, %true_2, %false, %false, %false, %true_39, %true_2, %true, %true_2, %true_2, %true_2, %false, %false_29, %false_29, %false, %true_2, %true, %true_39, %true_2, %false_29, %true, %true_39, %true_39, %false_29, %true, %false, %false_29, %false, %true_39, %true_2, %false_29, %true_2, %true_39, %true_39, %true_39, %true, %false, %true_39, %false_29, %false_29, %true_39, %true_2, %false, %false, %true_2, %true_39, %true_2, %true_2, %false, %true, %false_29, %false, %true_2, %true_39, %true, %true_2, %true, %true_39, %true_39, %false, %false, %false_29, %true, %true, %false_29, %true_39, %false_29, %true_2, %false, %false, %false, %true_39, %true_2, %false, %true_39, %false, %true_2, %false, %false, %true, %true_2, %true_2, %true, %false_29, %false, %true, %false_29, %true_2, %true_2, %true_2, %false_29, %false, %false, %true_39, %true, %false, %true, %false_29, %true_39, %true_39, %true_2, %true_39, %false, %false_29, %true_39, %false_29, %true, %true, %true, %false_29, %false, %false, %true, %true_39, %false_29, %true, %false_29, %true, %true_2, %false, %false_29, %true_39, %false, %true_39, %false_29, %false, %true_39, %false_29, %false, %false_29, %false_29, %true, %false, %true_39, %true_2, %true_39, %false, %false, %true_2, %true_2, %true_2, %true_39, %false_29 : tensor<7x11x13xi1>
          %295 = arith.divf %cst_1, %cst_3 : f32
          %296 = tensor.empty() : tensor<i32>
          %297 = math.fpowi %22, %296 : tensor<f16>, tensor<i32>
          %298 = math.tanh %1 : tensor<7x11x13xf32>
          scf.condition(%false_29) %111 : vector<8xi32>
        } do {
        ^bb0(%arg2: vector<8xi32>):
          %291 = memref.load %alloc_19[] : memref<i16>
          %cast = tensor.cast %2 : tensor<7xf16> to tensor<?xf16>
          %292 = math.log %21 : tensor<f16>
          %true_57 = arith.constant true
          %293 = math.atan2 %16, %13 : tensor<7x11x13xf32>
          %294 = vector.broadcast %185 : i16 to vector<11xi16>
          %295 = vector.broadcast %false_29 : i1 to vector<11xi1>
          %296 = vector.maskedload %alloc_16[%c6, %c0, %c8], %295, %294 : memref<7x11x13xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
          %297 = math.log10 %cst_3 : f32
          %298 = arith.divf %extracted, %cst_3 : f32
          %299 = arith.andi %185, %c-9988_i16 : i16
          %300 = arith.ceildivsi %c34358798_i32, %c34358798_i32 : i32
          %301 = arith.maxui %in, %c-9988_i16 : i16
          %302 = arith.xori %c1586311473_i64, %c1570961800_i64 : i64
          %303 = math.exp2 %12 : tensor<7xf16>
          %304 = index.add %57, %c14
          %305 = math.powf %2, %12 : tensor<7xf16>
          %c820467240_i32 = arith.constant 820467240 : i32
          scf.yield %111 : vector<8xi32>
        }
        %269 = vector.broadcast %c11 : index to vector<8xindex>
        vector.scatter %alloc_4[%c7, %c10, %c5] [%269], %110, %110 : memref<8x11x8xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
        %270 = arith.floordivsi %true, %true : i1
        %271 = vector.insert %c1570961800_i64, %170 [4] : i64 into vector<8xi64>
        %272 = vector.insertelement %c1711792754_i64, %43[%c14 : index] : vector<8xi64>
        %from_elements_53 = tensor.from_elements %cst_0, %cst, %cst, %29, %cst, %cst, %cst, %cst, %cst_0, %29, %29, %29, %29, %29, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %29, %cst, %cst_0, %cst_0, %cst, %cst, %29, %cst, %cst, %cst, %cst, %29, %cst, %29, %29, %cst_0, %cst_0, %cst_0, %cst, %29, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %29, %cst_0, %cst_0, %cst, %29, %cst, %29, %29, %cst_0, %cst, %cst_0, %cst, %cst, %cst, %29, %29, %cst_0, %29, %29, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %29, %cst, %cst_0, %cst, %cst_0, %cst_0, %29, %cst, %cst_0, %29, %cst_0, %cst, %29, %cst, %cst_0, %cst, %cst, %29, %cst, %29, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %29, %29, %cst, %cst_0, %29, %29, %29, %cst_0, %cst, %cst_0, %cst_0, %29, %cst, %cst, %29, %cst, %29, %29, %29, %29, %cst, %cst, %29, %29, %cst_0, %cst_0, %29, %29, %cst_0, %29, %cst, %cst_0, %cst, %29, %29, %cst, %29, %29, %cst_0, %cst_0, %29, %cst, %cst, %cst, %cst_0, %29, %29, %cst, %cst, %cst_0, %cst, %cst_0, %29, %cst_0, %29, %cst_0, %cst, %29, %29, %cst_0, %cst, %29, %29, %cst_0, %cst, %29, %29, %29, %29, %29, %29, %29, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst, %29, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %29, %cst_0, %cst_0, %29, %cst, %cst_0, %cst, %cst, %29, %cst_0, %cst, %cst_0, %cst_0, %29, %cst, %29, %cst_0, %cst_0, %cst, %cst, %29, %cst, %cst_0, %cst, %29, %cst_0, %cst, %29, %cst_0, %29, %cst, %29, %cst, %cst_0, %29, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %29, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %29, %cst_0, %cst_0, %cst_0, %cst_0, %29, %cst_0, %29, %cst_0, %29, %cst, %29, %29, %29, %29, %cst_0, %29, %cst_0, %29, %29, %29, %29, %29, %cst, %29, %29, %cst_0, %29, %29, %cst, %cst, %29, %cst_0, %29, %cst, %29, %cst_0, %cst, %cst, %29, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0, %29, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %29, %cst_0, %29, %cst_0, %cst_0, %cst, %29, %29, %cst_0, %cst_0, %cst_0, %29, %29, %29, %29, %cst, %29, %cst, %cst, %29, %29, %cst, %29, %cst_0, %cst_0, %cst_0, %29, %29, %29, %cst_0, %cst_0, %cst, %cst_0, %29, %cst, %cst_0, %29, %cst, %cst_0, %29, %cst_0, %29, %cst_0, %cst_0, %cst_0, %29, %cst_0, %cst_0, %cst, %29, %29, %cst_0, %29, %cst_0, %cst, %29, %29, %29, %cst_0, %cst_0, %29, %cst, %29, %29, %cst_0, %29, %cst, %29, %29, %cst, %cst_0, %cst_0, %29, %29, %cst_0, %cst_0, %29, %cst_0, %cst_0, %29, %29, %cst, %cst_0, %cst, %cst_0, %cst, %29, %cst, %cst_0, %cst, %cst_0, %29, %cst_0, %cst, %cst, %cst_0, %cst_0, %29, %cst, %cst_0, %cst, %29, %29, %29, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %29, %29, %cst_0, %cst, %29, %cst, %cst_0, %29, %29, %cst_0, %29, %cst, %29, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %29, %cst, %cst, %cst_0, %29, %29, %cst, %cst_0, %29, %29, %cst, %cst, %cst_0, %29, %29, %cst, %29, %29, %cst_0, %29, %29, %cst, %29, %29, %cst, %29, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %29, %29, %cst, %cst_0, %cst_0, %cst, %29, %cst_0, %29, %cst, %cst_0, %cst, %cst, %29, %29, %29, %cst_0, %cst_0, %cst, %cst, %cst_0, %29, %cst, %cst_0, %cst_0, %29, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %29, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %29, %cst_0, %29, %29, %cst_0, %29, %29, %cst, %cst, %cst, %cst_0, %29, %cst_0, %cst, %29, %29, %cst_0, %29, %cst_0, %cst_0, %29, %cst_0, %29, %cst, %cst_0, %29, %cst, %29, %29, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %29, %cst, %cst_0, %cst, %29, %29, %cst, %cst, %cst, %29, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst, %29, %cst_0, %cst_0, %29, %29, %29, %29, %29, %cst_0, %29, %29, %29, %cst_0, %cst, %29, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst, %29, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %29, %29, %cst, %cst, %29, %cst_0, %cst, %cst, %29, %cst, %29, %cst_0, %cst, %29, %cst, %29, %29, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst, %29, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %29, %29, %29, %29, %29, %cst_0, %cst_0, %cst, %29, %cst_0, %cst_0, %29, %cst_0, %29, %cst_0, %29, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %29, %29, %29, %cst_0, %29, %cst, %29, %cst_0, %29, %29, %cst_0, %29, %cst, %29, %cst, %29, %cst_0, %cst, %29, %29, %cst_0, %29, %cst, %29, %cst, %cst, %29, %cst, %cst, %cst, %cst, %cst_0, %cst, %29, %29, %cst_0, %cst, %29, %29, %29, %29, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %29, %29, %29, %cst, %cst_0, %29, %cst_0, %cst, %29, %29, %29, %cst_0, %cst, %29, %cst, %cst_0, %cst, %cst, %cst_0, %29, %29, %cst_0, %29, %cst, %cst_0, %29, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %29, %cst, %29, %29, %29, %cst, %cst_0, %29, %cst, %29, %cst_0, %cst_0, %cst, %29, %cst_0, %29, %cst_0, %29, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst_0, %29, %cst, %29, %29, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %29, %cst, %29, %29, %cst, %cst, %cst, %cst, %cst, %29, %cst, %29, %29, %29, %cst, %29, %29, %cst_0, %29, %cst, %29, %cst, %29, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %29, %cst, %cst, %cst_0, %cst_0, %cst_0, %29, %cst_0, %29, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %29, %cst, %cst_0, %29, %cst, %cst_0, %29, %29, %29, %cst, %29, %29, %cst_0, %29, %29, %cst, %cst, %cst_0, %cst, %cst, %cst, %29, %cst, %cst, %29, %29, %29, %cst_0, %cst, %cst_0, %29, %29, %cst_0, %29, %cst, %cst, %cst_0, %cst, %cst_0, %29, %cst_0, %29, %cst, %cst_0, %29, %cst, %29, %29, %29, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %29, %cst_0, %cst, %29, %29, %29, %cst, %29, %29, %cst, %29, %cst_0, %cst, %29, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %29, %cst_0, %29, %29, %29, %cst_0, %29, %cst, %cst_0, %cst_0, %cst, %cst_0, %29, %29, %29, %29, %cst_0, %cst_0, %cst_0, %cst_0, %29, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %29, %29, %cst, %29, %cst, %cst_0, %cst, %cst_0, %cst_0, %29, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %29, %29, %cst_0, %29, %cst, %cst_0, %cst_0, %29, %29, %29, %cst, %cst_0, %29, %cst_0, %29, %29, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %29, %cst, %cst_0, %29, %cst, %29, %cst_0, %29, %cst_0, %cst_0, %29, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %29, %cst_0, %29, %cst_0 : tensor<7x11x13xf16>
        affine.for %arg2 = 0 to 1 {
        }
        %273 = memref.realloc %alloc_7 : memref<7xi32> to memref<13xi32>
        %274 = math.round %5 : tensor<7x11x13xf16>
        %275 = scf.while (%arg2 = %alloc) : (memref<11x13xi64>) -> memref<11x13xi64> {
          %291 = index.divs %c6, %c14
          %rank_57 = tensor.rank %from_elements : tensor<7x11x13xi32>
          %292 = vector.multi_reduction <maxui>, %110, %true_39 [0] : vector<8xi1> to i1
          memref.copy %alloc_5, %alloc_14 : memref<11x13xf32> to memref<11x13xf32>
          %293 = math.powf %12, %12 : tensor<7xf16>
          %294 = index.sub %c13, %160
          %295 = math.expm1 %1 : tensor<7x11x13xf32>
          %296 = vector.multi_reduction <maxf>, %163, %cst_3 [0] : vector<13xf32> to f32
          scf.condition(%true) %alloc : memref<11x13xi64>
        } do {
        ^bb0(%arg2: memref<11x13xi64>):
          %291 = math.powf %cst_1, %cst_1 : f32
          %c0_i16_57 = arith.constant 0 : i16
          %292 = vector.transfer_read %6[%c11, %c5], %c0_i16_57 : tensor<11x13xi16>, vector<11xi16>
          %293 = index.castu %c7 : index to i32
          %294 = math.fma %collapsed, %collapsed, %collapsed : tensor<77x13xf32>
          %295 = arith.cmpf one, %cst_1, %extracted : f32
          %296 = vector.extract_strided_slice %82 {offsets = [0], sizes = [1], strides = [1]} : vector<7x11x13xi64> to vector<1x11x13xi64>
          %297 = arith.xori %c1193819625_i32, %c1193819625_i32 : i32
          %298 = index.ceildivu %57, %179
          %299 = index.add %52, %c0
          %300 = math.absf %2 : tensor<7xf16>
          %301 = index.ceildivu %c15, %160
          bufferization.dealloc_tensor %15 : tensor<11x13xi16>
          %302 = vector.broadcast %cst_1 : f32 to vector<7x13xf32>
          %303 = vector.multi_reduction <minf>, %77, %302 [1] : vector<7x11x13xf32> to vector<7x13xf32>
          %inserted_58 = tensor.insert %false into %splat[%c6, %c8] : tensor<11x13xi1>
          %inserted_59 = tensor.insert %cst into %12[%c2] : tensor<7xf16>
          %304 = vector.broadcast %true_39 : i1 to vector<7x11x13xi1>
          scf.yield %alloc : memref<11x13xi64>
        }
        %276 = scf.while (%arg2 = %111) : (vector<8xi32>) -> vector<8xi32> {
          %291 = math.ctlz %4 : tensor<7xi16>
          %292 = math.fpowi %5, %from_elements : tensor<7x11x13xf16>, tensor<7x11x13xi32>
          %293 = arith.shrui %c-9988_i16, %in : i16
          %294 = math.expm1 %cst_0 : f16
          %295 = arith.muli %in, %185 : i16
          %dest, %accumulated_value = vector.scan <minsi>, %75, %51 {inclusive = true, reduction_dim = 0 : i64} : vector<7x11x13xi1>, vector<11x13xi1>
          %from_elements_57 = tensor.from_elements %c34358798_i32, %c618576397_i32, %c34358798_i32, %c34358798_i32, %c1963286850_i32, %c1193819625_i32, %c618576397_i32 : tensor<7xi32>
          %296 = index.castu %195 : index to i32
          scf.condition(%false) %111 : vector<8xi32>
        } do {
        ^bb0(%arg2: vector<8xi32>):
          %alloca_57 = memref.alloca() : memref<11x13xf32>
          %291 = arith.shrui %c1963286850_i32, %c618576397_i32 : i32
          %alloc_58 = memref.alloc() : memref<8x11x8xi32>
          %292 = math.tan %collapsed : tensor<77x13xf32>
          %293 = arith.floordivsi %c1711792754_i64, %c1586311473_i64 : i64
          %294 = affine.load %alloc_16[%c3, %c2, %c12] : memref<7x11x13xi16>
          %295 = bufferization.to_tensor %alloc_9 : memref<8x11x8xi16>
          %296 = vector.reduction <add>, %145 : vector<8xi64> into i64
          %297 = vector.broadcast %c6 : index to vector<13xindex>
          %298 = vector.broadcast %false : i1 to vector<13xi1>
          vector.scatter %alloc_5[%c6, %c10] [%297], %298, %163 : memref<11x13xf32>, vector<13xindex>, vector<13xi1>, vector<13xf32>
          %299 = math.ctlz %from_elements : tensor<7x11x13xi32>
          %300 = vector.insertelement %cst_1, %163[%rank_32 : index] : vector<13xf32>
          %301 = vector.maskedload %alloc_8[%c3, %c2], %123, %124 : memref<11x13xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
          %302 = math.tanh %1 : tensor<7x11x13xf32>
          %303 = index.sub %c4, %179
          %304 = math.log10 %2 : tensor<7xf16>
          %305 = math.ctlz %18 : tensor<13x11xi64>
          scf.yield %111 : vector<8xi32>
        }
        %277 = math.log2 %cst_0 : f16
        %278 = bufferization.clone %alloc_14 : memref<11x13xf32> to memref<11x13xf32>
        %279 = vector.extract_strided_slice %186 {offsets = [7], sizes = [2], strides = [1]} : vector<11x13xi1> to vector<2x13xi1>
        %280 = math.powf %cst_1, %cst_3 : f32
        %281 = affine.load %alloc_4[%c10, %c10, %c7] : memref<8x11x8xi1>
        %282 = tensor.empty(%64, %c7) : tensor<?x?xf16>
        %false_54 = arith.constant false
        %283 = arith.shrui %c1193819625_i32, %c618576397_i32 : i32
        %284 = vector.extract_strided_slice %26 {offsets = [6], sizes = [1], strides = [1]} : vector<8x11x8xi1> to vector<1x11x8xi1>
        %285 = arith.floordivsi %true_39, %true_39 : i1
        %286 = scf.while (%arg2 = %alloc_13) : (memref<7x11x13xi1>) -> memref<7x11x13xi1> {
          %alloca_57 = memref.alloca() : memref<7x11x13xi32>
          %291 = vector.insertelement %c1193819625_i32, %118[%c3 : index] : vector<1xi32>
          %292 = math.copysign %21, %21 : tensor<f16>
          %293 = vector.insert %186, %75 [3] : vector<11x13xi1> into vector<7x11x13xi1>
          %294 = arith.floordivsi %c1711792754_i64, %c1570961800_i64 : i64
          %295 = index.sizeof
          %296 = vector.bitcast %26 : vector<8x11x8xi1> to vector<8x11x8xi1>
          %alloca_58 = memref.alloca() : memref<11x13xf32>
          scf.condition(%true_2) %alloc_13 : memref<7x11x13xi1>
        } do {
        ^bb0(%arg2: memref<7x11x13xi1>):
          affine.store %c1711792754_i64, %95[%c4] : memref<7xi64>
          %alloca_57 = memref.alloca() : memref<8x11x8xi32>
          %291 = arith.floordivsi %c-9988_i16, %in : i16
          affine.store %185, %101[] : memref<i16>
          %292 = math.log10 %73 : tensor<7xf32>
          %293 = arith.andi %true, %false_29 : i1
          %294 = arith.maxf %cst_3, %extracted : f32
          memref.assume_alignment %alloc_8, 16 : memref<11x13xi32>
          %295 = index.castu %281 : i1 to index
          %296 = vector.splat %c15 : vector<7xindex>
          %297 = arith.cmpi ule, %true_2, %false : i1
          %298 = arith.addi %c768864186_i32, %c34358798_i32 : i32
          %299 = arith.muli %c34358798_i32, %c618576397_i32 : i32
          bufferization.dealloc_tensor %9 : tensor<8x11x8xi1>
          %alloc_58 = memref.alloc() : memref<11x13xi64>
          memref.copy %alloc, %alloc_58 : memref<11x13xi64> to memref<11x13xi64>
          %alloc_59 = memref.alloc() : memref<7xi32>
          scf.yield %alloc_13 : memref<7x11x13xi1>
        }
        %287 = math.log %1 : tensor<7x11x13xf32>
        %288 = vector.broadcast %cst_0 : f16 to vector<8xf16>
        %289 = vector.maskedload %alloc_12[%c0, %c12], %110, %288 : memref<11x13xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
        %290 = tensor.empty() : tensor<11x13xi32>
        %mapped_55 = linalg.map ins(%alloc_18 : memref<11x13xi32>) outs(%290 : tensor<11x13xi32>)
          (%in_57: i32) {
            %291 = memref.load %alloc_11[%c0, %c3, %c3] : memref<8x11x8xi64>
            %292 = math.expm1 %16 : tensor<7x11x13xf32>
            %293 = memref.realloc %alloc_20 : memref<7xf16> to memref<7xf16>
            %294 = math.absf %22 : tensor<f16>
            %295 = arith.shrui %c1711792754_i64, %c1570961800_i64 : i64
            %296 = math.sqrt %12 : tensor<7xf16>
            %297 = arith.divf %cst, %29 : f16
            %298 = arith.maxsi %c34358798_i32, %c618576397_i32 : i32
            %299 = arith.remf %cst_3, %extracted : f32
            %300 = index.ceildivu %57, %c12
            %301 = index.mul %c0, %180
            %302 = vector.splat %c2 : vector<8x11x8xindex>
            %303 = arith.ceildivsi %c1586311473_i64, %c1711792754_i64 : i64
            %304 = math.absf %2 : tensor<7xf16>
            %305 = index.sub %52, %301
            %306 = vector.insertelement %cst_3, %163[%181 : index] : vector<13xf32>
            %307 = vector.multi_reduction <minui>, %170, %170 [] : vector<8xi64> to vector<8xi64>
            %inserted_58 = tensor.insert %true into %8[%c3, %c6] : tensor<11x13xi1>
            %308 = arith.remui %c1193819625_i32, %c1963286850_i32 : i32
            %309 = memref.load %95[%c2] : memref<7xi64>
            %310 = arith.andi %in_57, %c768864186_i32 : i32
            memref.tensor_store %7, %alloc_16 : memref<7x11x13xi16>
            %311 = vector.broadcast %195 : index to vector<8xindex>
            vector.scatter %alloc_13[%c5, %c3, %c10] [%311], %110, %110 : memref<7x11x13xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
            %312 = arith.ceildivsi %c768864186_i32, %c34358798_i32 : i32
            %313 = vector.matrix_multiply %63, %170 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
            %314 = vector.insertelement %c1711792754_i64, %145[%78 : index] : vector<8xi64>
            %315 = tensor.empty(%c11, %65) : tensor<?x11x?xi32>
            %collapsed_59 = tensor.collapse_shape %8 [[0, 1]] : tensor<11x13xi1> into tensor<143xi1>
            %316 = arith.mulf %cst_0, %cst : f16
            %317 = affine.load %alloc_5[%c7, %c9] : memref<11x13xf32>
            %alloca_60 = memref.alloca() : memref<8x11x8xi32>
            %318 = math.exp2 %1 : tensor<7x11x13xf32>
            %c0_i32 = arith.constant 0 : i32
            linalg.yield %c0_i32 : i32
          }
        %alloca_56 = memref.alloca() : memref<7xi32>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %204 = tensor.empty() : tensor<11x13xf32>
    %mapped_42 = linalg.map ins(%alloc_5, %alloc_14 : memref<11x13xf32>, memref<11x13xf32>) outs(%204 : tensor<11x13xf32>)
      (%in: f32, %in_53: f32) {
        %262 = scf.if %true_2 -> (f16) {
          %293 = index.divs %181, %c0
          memref.assume_alignment %alloc_16, 8 : memref<7x11x13xi16>
          %294 = index.castu %c34358798_i32 : i32 to index
          %295 = arith.divf %extracted, %in : f32
          %296 = math.fma %expanded_33, %expanded_33, %expanded_33 : tensor<7x11x13x1xf32>
          %297 = vector.transpose %123, [0] : vector<7xi1> to vector<7xi1>
          %298 = index.sizeof
          %inserted_57 = tensor.insert %c-9988_i16 into %14[%c4, %c9, %c2] : tensor<8x11x8xi16>
          scf.yield %29 : f16
        } else {
          %293 = index.ceildivu %64, %c0
          %294 = arith.cmpi ult, %c-9988_i16, %c-9988_i16 : i16
          %295 = math.exp %5 : tensor<7x11x13xf16>
          %296 = math.fma %extracted, %extracted, %cst_3 : f32
          %297 = arith.remui %c1570961800_i64, %c1711792754_i64 : i64
          %298 = arith.maxf %29, %29 : f16
          %299 = index.casts %c1193819625_i32 : i32 to index
          %300 = memref.atomic_rmw muli %c1570961800_i64, %alloc_10[%c0, %c7, %c8] : (i64, memref<7x11x13xi64>) -> i64
          scf.yield %29 : f16
        }
        %263 = arith.negf %extracted : f32
        %264 = index.maxu %57, %24
        %265 = affine.if affine_set<(d0, d1) : (d0 floordiv 8 + d1 == 0)>(%c8, %c14) -> memref<7xi32> {
          %rank_57 = tensor.rank %collapsed : tensor<77x13xf32>
          %293 = arith.maxui %c768864186_i32, %c768864186_i32 : i32
          %294 = arith.divf %29, %29 : f16
          %295 = index.maxu %c12, %rank_35
          %296 = vector.load %alloc_18[%c8, %c6] : memref<11x13xi32>, vector<7xi32>
          memref.tensor_store %119, %95 : memref<7xi64>
          %alloc_58 = memref.alloc() : memref<11x13xi1>
          %297 = arith.remui %c768864186_i32, %c1963286850_i32 : i32
          affine.yield %alloc_7 : memref<7xi32>
        } else {
          %293 = index.castu %c4 : index to i32
          %294 = arith.andi %c618576397_i32, %c768864186_i32 : i32
          %295 = math.ctlz %c1570961800_i64 : i64
          %296 = math.round %in : f32
          %297 = math.tan %29 : f16
          %298 = vector.maskedload %alloc_6[%c3], %125, %125 : memref<7xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
          %expanded_57 = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<7x11x13xi16> into tensor<7x11x13x1xi16>
          %299 = bufferization.to_tensor %alloc_9 : memref<8x11x8xi16>
          affine.yield %alloc_7 : memref<7xi32>
        }
        %266 = vector.extract_strided_slice %28 {offsets = [4], sizes = [1], strides = [1]} : vector<8x11x8xi16> to vector<1x11x8xi16>
        %267 = index.sizeof
        %268 = arith.minf %cst, %262 : f16
        %269 = vector.broadcast %in_53 : f32 to vector<8x11x8xf32>
        %270 = vector.fma %269, %269, %269 : vector<8x11x8xf32>
        %271 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%64, %c12, %158)
        %272 = math.cos %5 : tensor<7x11x13xf16>
        %273 = arith.divf %in_53, %cst_3 : f32
        %274 = arith.shrui %c1193819625_i32, %c1963286850_i32 : i32
        %275 = affine.if affine_set<(d0, d1, d2) : (d2 == 0)>(%c14, %c11, %c2) -> memref<11x13xi32> {
          %293 = arith.cmpf olt, %extracted, %cst_3 : f32
          %294 = math.cttz %expanded_25 : tensor<7x11x13x1xi64>
          %295 = arith.muli %true, %false_29 : i1
          %296 = index.ceildivu %62, %57
          %297 = arith.divf %in_53, %in : f32
          %298 = math.ctlz %11 : tensor<11x13xi64>
          %299 = vector.load %101[] : memref<i16>, vector<8x11x8xi16>
          %alloc_57 = memref.alloc() : memref<7x11x13xf32>
          %300 = vector.gather %alloc_57[%c4, %rank_35, %c15] [%27], %26, %269 : memref<7x11x13xf32>, vector<8x11x8xi32>, vector<8x11x8xi1>, vector<8x11x8xf32> into vector<8x11x8xf32>
          affine.yield %alloc_8 : memref<11x13xi32>
        } else {
          %293 = vector.flat_transpose %177 {columns = 4 : i32, rows = 2 : i32} : vector<8xi16> -> vector<8xi16>
          %294 = math.powf %262, %cst_0 : f16
          %295 = vector.load %95[%c6] : memref<7xi64>, vector<7x11x13xi64>
          %296 = index.add %271, %c5
          %297 = index.sub %64, %264
          %298 = arith.xori %c1963286850_i32, %c34358798_i32 : i32
          %299 = math.log1p %12 : tensor<7xf16>
          %300 = math.expm1 %73 : tensor<7xf32>
          affine.yield %alloc_8 : memref<11x13xi32>
        }
        %276 = math.absf %cst_1 : f32
        %277 = vector.bitcast %27 : vector<8x11x8xi32> to vector<8x11x8xi32>
        %278 = memref.atomic_rmw minu %c1570961800_i64, %alloc_11[%c4, %c2, %c6] : (i64, memref<8x11x8xi64>) -> i64
        %279 = affine.for %arg2 = 0 to 104 iter_args(%arg3 = %c9) -> (index) {
          affine.yield %c12 : index
        }
        %280 = arith.remui %c1193819625_i32, %c1963286850_i32 : i32
        %281 = arith.shrui %c1963286850_i32, %c1193819625_i32 : i32
        %282 = math.tan %16 : tensor<7x11x13xf32>
        %283 = arith.addf %in_53, %cst_3 : f32
        %284 = math.exp2 %17 : tensor<7x11x13xf32>
        %285 = affine.load %alloc_14[%c7, %c3] : memref<11x13xf32>
        %286 = arith.negf %cst_1 : f32
        %287 = memref.atomic_rmw maxs %c1586311473_i64, %alloc_11[%c1, %c2, %c6] : (i64, memref<8x11x8xi64>) -> i64
        %288 = vector.extract_strided_slice %68 {offsets = [1], sizes = [7], strides = [1]} : vector<8xi64> to vector<7xi64>
        %289 = arith.maxui %c34358798_i32, %c1193819625_i32 : i32
        %alloca_54 = memref.alloca() : memref<8x11x8xf32>
        %290 = vector.bitcast %25 : vector<8x11x8xi16> to vector<8x11x8xi16>
        %291 = arith.ceildivsi %c618576397_i32, %c618576397_i32 : i32
        %292 = arith.addi %c1193819625_i32, %c1963286850_i32 : i32
        %alloc_55 = memref.alloc() : memref<8x11x8xf16>
        %cst_56 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_56 : f32
      }
    %205 = math.log %13 : tensor<7x11x13xf32>
    %206 = math.copysign %2, %2 : tensor<7xf16>
    %207 = tensor.empty() : tensor<11x13xi1>
    %mapped_43 = linalg.map ins(%splat : tensor<11x13xi1>) outs(%207 : tensor<11x13xi1>)
      (%in: i1) {
        %262 = vector.extract_strided_slice %76 {offsets = [1, 3], sizes = [6, 5], strides = [1, 1]} : vector<7x11x13xi32> to vector<6x5x13xi32>
        scf.if %false_29 {
          %291 = arith.divui %c768864186_i32, %c34358798_i32 : i32
          %292 = vector.flat_transpose %145 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
          %293 = vector.broadcast %rank : index to vector<8xindex>
          vector.scatter %101[] [%293], %110, %177 : memref<i16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
          %true_57 = index.bool.constant true
          %294 = math.log2 %12 : tensor<7xf16>
          %295 = vector.splat %62 : vector<7xindex>
          %296 = arith.xori %true_39, %true_2 : i1
          %297 = affine.load %alloc_18[%c7, %c1] : memref<11x13xi32>
        } else {
          %291 = index.castu %c4 : index to i32
          %292 = bufferization.to_tensor %101 : memref<i16>
          %293 = index.casts %c768864186_i32 : i32 to index
          %294 = arith.cmpi sgt, %c1711792754_i64, %c1711792754_i64 : i64
          %295 = arith.ceildivsi %false, %false : i1
          %296 = memref.atomic_rmw maxf %cst_1, %alloc_14[%c4, %c9] : (f32, memref<11x13xf32>) -> f32
          %297 = math.cttz %c1586311473_i64 : i64
          %298 = math.powf %16, %1 : tensor<7x11x13xf32>
        }
        %extracted_53 = tensor.extract %136[] : tensor<i16>
        %263 = affine.load %alloc_5[%c8, %c10] : memref<11x13xf32>
        %expanded_54 = tensor.expand_shape %splat [[0], [1, 2]] : tensor<11x13xi1> into tensor<11x13x1xi1>
        %264 = arith.floordivsi %185, %c-9988_i16 : i16
        %265 = vector.extract_strided_slice %125 {offsets = [1], sizes = [2], strides = [1]} : vector<7xi1> to vector<2xi1>
        %266 = index.casts %78 : index to i32
        %267 = arith.muli %true_2, %false_29 : i1
        %268 = arith.xori %c1711792754_i64, %c1586311473_i64 : i64
        %269 = scf.if %true -> (memref<11x13xi1>) {
          %291 = arith.maxf %cst, %cst : f16
          %292 = vector.load %alloc_12[%c0, %c0] : memref<11x13xf16>, vector<7x11x13xf16>
          %293 = math.round %collapsed : tensor<77x13xf32>
          %294 = index.add %100, %c10
          %295 = math.ctlz %94 : tensor<7xi1>
          %296 = vector.bitcast %20 : vector<8xi64> to vector<8xi64>
          %alloca_57 = memref.alloca() : memref<11x13xi64>
          %rank_58 = tensor.rank %15 : tensor<11x13xi16>
          %alloc_59 = memref.alloc() : memref<11x13xi1>
          scf.yield %alloc_59 : memref<11x13xi1>
        } else {
          %291 = math.log %cst_1 : f32
          %292 = arith.remf %extracted, %extracted : f32
          %293 = bufferization.clone %alloc_14 : memref<11x13xf32> to memref<11x13xf32>
          %294 = math.ctlz %3 : tensor<7x11x13xi16>
          %295 = vector.insert %c-9988_i16, %177 [6] : i16 into vector<8xi16>
          %296 = vector.reduction <and>, %125 : vector<7xi1> into i1
          %expanded_57 = tensor.expand_shape %17 [[0], [1], [2, 3]] : tensor<7x11x13xf32> into tensor<7x11x13x1xf32>
          %297 = arith.maxf %cst, %cst : f16
          %alloc_58 = memref.alloc() : memref<11x13xi1>
          scf.yield %alloc_58 : memref<11x13xi1>
        }
        %270 = index.sub %c7, %78
        %271 = arith.remui %extracted_53, %185 : i16
        %272 = arith.maxui %c618576397_i32, %c34358798_i32 : i32
        %273 = vector.broadcast %c768864186_i32 : i32 to vector<8x8xi32>
        %274 = vector.outerproduct %109, %109, %273 {kind = #vector.kind<maxsi>} : vector<8xi32>, vector<8xi32>
        %275 = math.log1p %12 : tensor<7xf16>
        %alloca_55 = memref.alloca() : memref<7xf16>
        %276 = vector.multi_reduction <xor>, %63, %63 [] : vector<8xi64> to vector<8xi64>
        %277 = arith.xori %185, %c-9988_i16 : i16
        %278 = arith.divf %extracted, %extracted : f32
        %279 = math.absf %cst_1 : f32
        %280 = arith.xori %c618576397_i32, %c1963286850_i32 : i32
        %281 = arith.xori %true_39, %true_2 : i1
        %282 = scf.while (%arg2 = %123) : (vector<7xi1>) -> vector<7xi1> {
          memref.assume_alignment %101, 2 : memref<i16>
          %291 = math.absf %2 : tensor<7xf16>
          %dest, %accumulated_value = vector.scan <maxsi>, %133, %199 {inclusive = false, reduction_dim = 1 : i64} : vector<7x11x13xi64>, vector<7x13xi64>
          %292 = vector.splat %c15 : vector<8x11x8xindex>
          %293 = arith.maxf %cst_1, %extracted : f32
          %294 = memref.atomic_rmw maxs %c1711792754_i64, %alloc[%c1, %c0] : (i64, memref<11x13xi64>) -> i64
          %295 = arith.ceildivsi %c768864186_i32, %c1193819625_i32 : i32
          %296 = arith.addi %extracted_53, %c-9988_i16 : i16
          scf.condition(%in) %123 : vector<7xi1>
        } do {
        ^bb0(%arg2: vector<7xi1>):
          %291 = index.ceildivu %c11, %179
          %292 = memref.atomic_rmw minu %c1193819625_i32, %alloc_18[%c0, %c1] : (i32, memref<11x13xi32>) -> i32
          %293 = vector.matrix_multiply %123, %123 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
          %294 = math.fma %16, %1, %1 : tensor<7x11x13xf32>
          %295 = arith.muli %c1586311473_i64, %c1711792754_i64 : i64
          %296 = index.floordivs %181, %c8
          %297 = arith.maxf %cst_3, %cst_3 : f32
          %298 = math.tanh %22 : tensor<f16>
          %299 = vector.multi_reduction <minsi>, %37, %39 [0] : vector<1x11x8xi16> to vector<11x8xi16>
          %300 = index.sub %179, %100
          %301 = math.ctlz %true_39 : i1
          %302 = arith.maxf %cst_0, %cst_0 : f16
          %alloc_57 = memref.alloc() : memref<11x13xf16>
          memref.copy %alloc_12, %alloc_57 : memref<11x13xf16> to memref<11x13xf16>
          %303 = math.round %204 : tensor<11x13xf32>
          %304 = index.sizeof
          memref.assume_alignment %alloc_6, 1 : memref<7xi1>
          scf.yield %125 : vector<7xi1>
        }
        %283 = math.powf %2, %2 : tensor<7xf16>
        %284 = index.divs %153, %c1
        %285 = vector.broadcast %161 : index to vector<7xindex>
        vector.scatter %alloc_18[%c3, %c2] [%285], %125, %124 : memref<11x13xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %286 = arith.shrui %c34358798_i32, %c618576397_i32 : i32
        %287 = index.ceildivu %c7, %c0
        %288 = arith.remf %263, %extracted : f32
        %289 = arith.ceildivsi %185, %185 : i16
        %290 = index.sub %c3, %181
        %true_56 = arith.constant true
        linalg.yield %true_56 : i1
      }
    %208 = math.absf %12 : tensor<7xf16>
    %209 = index.sub %rank_32, %158
    %210 = memref.load %alloc_4[%c0, %c1, %c7] : memref<8x11x8xi1>
    memref.assume_alignment %alloc, 1 : memref<11x13xi64>
    %211 = vector.flat_transpose %63 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
    %212 = index.sizeof
    %213 = memref.load %alloc_4[%c4, %c1, %c6] : memref<8x11x8xi1>
    %alloca_44 = memref.alloca() : memref<7xf16>
    %214 = vector.splat %160 : vector<7xindex>
    %215 = index.ceildivu %52, %rank_30
    %216 = vector.broadcast %extracted : f32 to vector<7x11x13xf32>
    %217 = vector.fma %216, %77, %74 : vector<7x11x13xf32>
    %218 = index.add %c8, %c8
    %219 = vector.load %alloc_8[%c0, %c5] : memref<11x13xi32>, vector<7xi32>
    %220 = vector.splat %161 : vector<7x11x13xindex>
    %true_45 = arith.constant true
    %false_46 = arith.constant false
    %221 = vector.transfer_read %9[%180, %52, %161], %false_46 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<8x11x8xi1>, vector<13xi1>
    %222 = tensor.empty() : tensor<7x11x13xf32>
    %mapped_47 = linalg.map ins(%13 : tensor<7x11x13xf32>) outs(%222 : tensor<7x11x13xf32>)
      (%in: f32) {
        %262 = arith.minf %extracted, %extracted : f32
        %263 = index.ceildivu %c11, %160
        %264 = index.sub %rank, %rank_35
        %265 = bufferization.to_memref %1 : memref<7x11x13xf32>
        %266 = math.round %204 : tensor<11x13xf32>
        %267 = math.round %22 : tensor<f16>
        %268 = math.ctlz %c1963286850_i32 : i32
        %269 = arith.mulf %29, %29 : f16
        %270 = affine.load %alloc[%c2, %c8] : memref<11x13xi64>
        %271 = index.sizeof
        %272 = bufferization.to_tensor %alloc_7 : memref<7xi32>
        %273 = math.tan %17 : tensor<7x11x13xf32>
        %274 = math.expm1 %13 : tensor<7x11x13xf32>
        %275 = vector.multi_reduction <and>, %43, %170 [] : vector<8xi64> to vector<8xi64>
        %276 = arith.xori %c1711792754_i64, %c1570961800_i64 : i64
        %277 = arith.shrui %c618576397_i32, %c34358798_i32 : i32
        %278 = vector.bitcast %211 : vector<8xi64> to vector<8xi64>
        %279 = arith.ceildivsi %c618576397_i32, %c768864186_i32 : i32
        %280 = tensor.empty() : tensor<7x11x13xf16>
        %mapped_53 = linalg.map ins(%5 : tensor<7x11x13xf16>) outs(%280 : tensor<7x11x13xf16>)
          (%in_57: f16) {
            %292 = vector.splat %true_2 : vector<7xi1>
            %293 = arith.maxui %true_2, %true : i1
            %294 = bufferization.clone %alloc_7 : memref<7xi32> to memref<7xi32>
            %false_58 = index.bool.constant false
            %295 = math.log2 %cst_3 : f32
            %296 = math.fma %29, %cst_0, %in_57 : f16
            %297 = arith.maxui %c1586311473_i64, %c1570961800_i64 : i64
            %298 = arith.maxf %cst, %cst : f16
            %299 = arith.xori %c1570961800_i64, %270 : i64
            %300 = arith.addf %29, %29 : f16
            %301 = arith.cmpi sge, %false_58, %true_2 : i1
            %302 = vector.broadcast %in : f32 to vector<7x11x13xf32>
            %303 = vector.fma %302, %302, %302 : vector<7x11x13xf32>
            bufferization.dealloc_tensor %280 : tensor<7x11x13xf16>
            %304 = math.expm1 %73 : tensor<7xf32>
            %305 = bufferization.to_tensor %265 : memref<7x11x13xf32>
            %306 = math.absf %cst : f16
            %307 = arith.floordivsi %true_39, %false : i1
            %308 = vector.gather %204[%153, %65] [%169], %51, %66 : tensor<11x13xf32>, vector<11x13xi32>, vector<11x13xi1>, vector<11x13xf32> into vector<11x13xf32>
            %309 = index.sub %209, %c11
            %310 = vector.broadcast %false_29 : i1 to vector<13xi1>
            %311 = vector.multi_reduction <minui>, %186, %310 [0] : vector<11x13xi1> to vector<13xi1>
            %312 = vector.broadcast %c-9988_i16 : i16 to vector<11xi16>
            %313 = vector.multi_reduction <maxsi>, %30, %312 [0, 2] : vector<1x11x8xi16> to vector<11xi16>
            %314 = vector.broadcast %c6 : index to vector<11xindex>
            %315 = vector.broadcast %true_39 : i1 to vector<11xi1>
            vector.scatter %alloc_4[%c7, %c10, %c1] [%314], %315, %315 : memref<8x11x8xi1>, vector<11xindex>, vector<11xi1>, vector<11xi1>
            %316 = arith.maxui %c1586311473_i64, %270 : i64
            %inserted_59 = tensor.insert %185 into %expanded[%c4, %c3, %c7, %c0] : tensor<8x11x8x1xi16>
            %317 = arith.cmpf ole, %29, %cst : f16
            %318 = arith.negf %in_57 : f16
            %319 = arith.ceildivsi %false_29, %false : i1
            %rank_60 = tensor.rank %14 : tensor<8x11x8xi16>
            %320 = math.tan %12 : tensor<7xf16>
            %321 = arith.maxf %in, %cst_1 : f32
            %322 = arith.ceildivsi %false_58, %true : i1
            %323 = tensor.empty() : tensor<11x13xi32>
            %cst_61 = arith.constant 1.000000e+00 : f16
            linalg.yield %cst_61 : f16
          }
        %281 = math.cttz %6 : tensor<11x13xi16>
        %282 = arith.remui %c-9988_i16, %185 : i16
        %283 = index.ceildivu %161, %c9
        %rank_54 = tensor.rank %expanded_33 : tensor<7x11x13x1xf32>
        %284 = vector.transpose %20, [0] : vector<8xi64> to vector<8xi64>
        %285 = math.log1p %5 : tensor<7x11x13xf16>
        %286 = bufferization.to_tensor %alloc_20 : memref<7xf16>
        %287 = arith.remsi %c1570961800_i64, %c1711792754_i64 : i64
        memref.assume_alignment %alloc_20, 4 : memref<7xf16>
        %288 = math.log1p %2 : tensor<7xf16>
        %289 = arith.remui %c1193819625_i32, %c1193819625_i32 : i32
        %cst_55 = arith.constant 1.000000e+00 : f16
        %290 = vector.transfer_read %5[%c0, %c11, %rank_54], %cst_55 : tensor<7x11x13xf16>, vector<11x8xf16>
        %291 = vector.insert %270, %43 [0] : i64 into vector<8xi64>
        %cst_56 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_56 : f32
      }
    %inserted_48 = tensor.insert %cst_3 into %13[%c2, %c0, %c0] : tensor<7x11x13xf32>
    %223 = tensor.empty() : tensor<i32>
    %224 = math.fpowi %21, %223 : tensor<f16>, tensor<i32>
    %225 = math.log %13 : tensor<7x11x13xf32>
    %226 = arith.maxf %cst_0, %cst : f16
    %227 = vector.broadcast %c0 : index to vector<8xindex>
    vector.scatter %alloc_18[%c5, %c4] [%227], %110, %109 : memref<11x13xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
    %inserted_49 = tensor.insert %c1586311473_i64 into %splat_27[%c4] : tensor<7xi64>
    %228 = scf.index_switch %c4 -> tensor<7xi1> 
    case 1 {
      %262 = vector.multi_reduction <minui>, %25, %177 [1, 2] : vector<8x11x8xi16> to vector<8xi16>
      %263 = memref.atomic_rmw addi %185, %101[] : (i16, memref<i16>) -> i16
      %264 = index.castu %c3 : index to i32
      %265 = arith.divui %c1963286850_i32, %c1193819625_i32 : i32
      %266 = arith.ceildivsi %true_45, %true_39 : i1
      %267 = math.log10 %expanded_33 : tensor<7x11x13x1xf32>
      %268 = index.ceildivu %c10, %218
      %269 = tensor.empty() : tensor<8x11x8xi16>
      %mapped_53 = linalg.map ins(%203, %203, %14 : tensor<8x11x8xi16>, tensor<8x11x8xi16>, tensor<8x11x8xi16>) outs(%269 : tensor<8x11x8xi16>)
        (%in: i16, %in_56: i16, %in_57: i16) {
          %277 = math.expm1 %204 : tensor<11x13xf32>
          %278 = memref.load %alloc_4[%c2, %c2, %c1] : memref<8x11x8xi1>
          %279 = math.floor %22 : tensor<f16>
          %280 = math.fpowi %cst, %c1963286850_i32 : f16, i32
          %281 = vector.multi_reduction <and>, %219, %c34358798_i32 [0] : vector<7xi32> to i32
          %282 = memref.atomic_rmw addf %cst_1, %alloc_14[%c8, %c5] : (f32, memref<11x13xf32>) -> f32
          %alloca_58 = memref.alloca() : memref<11x13xf16>
          %283 = arith.remf %cst, %cst_0 : f16
          %284 = arith.cmpf ogt, %extracted, %cst_1 : f32
          %from_elements_59 = tensor.from_elements %c1570961800_i64, %c1711792754_i64, %c1711792754_i64, %c1711792754_i64, %c1570961800_i64, %c1570961800_i64, %c1711792754_i64 : tensor<7xi64>
          %285 = math.tanh %collapsed : tensor<77x13xf32>
          %cst_60 = arith.constant 1.000000e+00 : f32
          %286 = vector.transfer_read %222[%rank_35, %c12, %c3], %cst_60 : tensor<7x11x13xf32>, vector<f32>
          %287 = vector.matrix_multiply %124, %111 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 8 : i32} : (vector<7xi32>, vector<8xi32>) -> vector<56xi32>
          %288 = vector.broadcast %rank_40 : index to vector<8xindex>
          vector.scatter %101[] [%288], %110, %177 : memref<i16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
          %289 = vector.bitcast %211 : vector<8xi64> to vector<8xi64>
          %290 = index.ceildivu %c14, %c8
          %alloca_61 = memref.alloca() : memref<11x13xi16>
          bufferization.dealloc_tensor %0 : tensor<7x11x13xi64>
          %291 = vector.multi_reduction <maxui>, %63, %c1711792754_i64 [0] : vector<8xi64> to i64
          %292 = bufferization.clone %95 : memref<7xi64> to memref<7xi64>
          memref.assume_alignment %101, 16 : memref<i16>
          %293 = vector.broadcast %cst_3 : f32 to vector<7x11x13xf32>
          %294 = vector.fma %293, %77, %74 : vector<7x11x13xf32>
          %295 = arith.shrui %true_2, %true_39 : i1
          %296 = tensor.empty(%c14) : tensor<?xi1>
          %297 = vector.broadcast %185 : i16 to vector<1xi16>
          %298 = vector.multi_reduction <mul>, %37, %297 [1, 2] : vector<1x11x8xi16> to vector<1xi16>
          %alloc_62 = memref.alloc() : memref<13x7xi16>
          %299 = tensor.empty() : tensor<11x7xi16>
          %300 = linalg.matmul ins(%6, %alloc_62 : tensor<11x13xi16>, memref<13x7xi16>) outs(%299 : tensor<11x7xi16>) -> tensor<11x7xi16>
          %301 = math.round %cst_3 : f32
          %302 = index.casts %281 : i32 to index
          %303 = vector.broadcast %180 : index to vector<8xindex>
          vector.scatter %alloc_7[%c5] [%303], %110, %111 : memref<7xi32>, vector<8xindex>, vector<8xi1>, vector<8xi32>
          %304 = vector.insertelement %c1711792754_i64, %145[%218 : index] : vector<8xi64>
          %305 = arith.divf %cst_3, %cst_3 : f32
          %306 = vector.flat_transpose %287 {columns = 7 : i32, rows = 8 : i32} : vector<56xi32> -> vector<56xi32>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %true_54 = index.bool.constant true
      %270 = vector.broadcast %209 : index to vector<8xindex>
      vector.scatter %alloc_13[%c4, %c7, %c9] [%270], %110, %110 : memref<7x11x13xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
      %271 = math.expm1 %29 : f16
      %272 = arith.ori %false_29, %true : i1
      %273 = arith.remui %true_39, %true_54 : i1
      %274 = vector.broadcast %cst_1 : f32 to vector<7x11x13xf32>
      %275 = vector.fma %274, %74, %74 : vector<7x11x13xf32>
      %276 = vector.transpose %26, [1, 0, 2] : vector<8x11x8xi1> to vector<11x8x8xi1>
      %rank_55 = tensor.rank %10 : tensor<8x11x8xi16>
      scf.yield %94 : tensor<7xi1>
    }
    case 2 {
      %262 = vector.transpose %51, [1, 0] : vector<11x13xi1> to vector<13x11xi1>
      %c0_i64 = arith.constant 0 : i64
      %c0_i64_53 = arith.constant 0 : i64
      %263 = vector.transfer_read %119[%181], %c0_i64_53 : tensor<7xi64>, vector<i64>
      %inserted_54 = tensor.insert %c-9988_i16 into %6[%c2, %c10] : tensor<11x13xi16>
      %264 = index.sub %rank_40, %212
      %265 = arith.shrui %false_29, %true_2 : i1
      %266 = bufferization.to_tensor %alloc_5 : memref<11x13xf32>
      %267 = index.divu %c4, %c12
      %268 = math.absi %50 : tensor<7x11x13xi64>
      %alloca_55 = memref.alloca() : memref<7x11x13xi32>
      %expanded_56 = tensor.expand_shape %50 [[0], [1], [2, 3]] : tensor<7x11x13xi64> into tensor<7x11x13x1xi64>
      %269 = vector.broadcast %cst_3 : f32 to vector<7xf32>
      %270 = vector.fma %269, %269, %269 : vector<7xf32>
      %271 = arith.cmpi sgt, %false, %true_45 : i1
      %272 = index.mul %57, %c11
      %273 = arith.floordivsi %c1711792754_i64, %c1570961800_i64 : i64
      %274 = arith.maxsi %false_29, %false_29 : i1
      %275 = math.expm1 %13 : tensor<7x11x13xf32>
      scf.yield %94 : tensor<7xi1>
    }
    default {
      %262 = vector.reduction <minui>, %170 : vector<8xi64> into i64
      %263 = vector.matrix_multiply %170, %63 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
      %generated_53 = tensor.generate %c11 {
      ^bb0(%arg2: index):
        %271 = arith.shli %false_29, %false_29 : i1
        %alloc_59 = memref.alloc() : memref<8x11x8xi16>
        %272 = math.log %5 : tensor<7x11x13xf16>
        %273 = arith.minf %cst_0, %cst : f16
        tensor.yield %c1193819625_i32 : i32
      } : tensor<?xi32>
      %false_54 = index.bool.constant false
      %264 = tensor.empty() : tensor<7xi16>
      %mapped_55 = linalg.map ins(%4, %4, %4 : tensor<7xi16>, tensor<7xi16>, tensor<7xi16>) outs(%264 : tensor<7xi16>)
        (%in: i16, %in_59: i16, %in_60: i16) {
          %271 = vector.create_mask %c13, %181, %158 : vector<7x11x13xi1>
          %272 = index.castu %c-9988_i16 : i16 to index
          %273 = memref.load %alloc_9[%c5, %c2, %c4] : memref<8x11x8xi16>
          %274 = math.cttz %7 : tensor<7x11x13xi16>
          %275 = math.exp2 %expanded_33 : tensor<7x11x13x1xf32>
          %276 = vector.splat %c618576397_i32 : vector<7x11x13xi32>
          %277 = math.round %12 : tensor<7xf16>
          %278 = arith.cmpi ne, %false, %true_2 : i1
          %279 = vector.bitcast %66 : vector<11x13xf32> to vector<11x13xf32>
          %rank_61 = tensor.rank %15 : tensor<11x13xi16>
          %280 = index.add %215, %64
          %281 = math.absi %0 : tensor<7x11x13xi64>
          %282 = vector.create_mask %rank_36, %181 : vector<11x13xi1>
          %rank_62 = tensor.rank %222 : tensor<7x11x13xf32>
          %283 = arith.shrui %c1193819625_i32, %c618576397_i32 : i32
          %284 = vector.broadcast %true_39 : i1 to vector<7x7xi1>
          %285 = vector.outerproduct %125, %123, %284 {kind = #vector.kind<mul>} : vector<7xi1>, vector<7xi1>
          %286 = arith.addi %c34358798_i32, %c768864186_i32 : i32
          %287 = math.absf %222 : tensor<7x11x13xf32>
          %false_63 = index.bool.constant false
          %288 = arith.divf %extracted, %cst_1 : f32
          %289 = arith.maxui %c1586311473_i64, %c1570961800_i64 : i64
          %290 = arith.remf %cst, %cst_0 : f16
          %291 = vector.reduction <xor>, %170 : vector<8xi64> into i64
          %292 = vector.insertelement %c1570961800_i64, %63[%rank_36 : index] : vector<8xi64>
          %293 = arith.xori %c-9988_i16, %in_60 : i16
          %alloca_64 = memref.alloca() : memref<11x13xf16>
          %294 = vector.bitcast %177 : vector<8xi16> to vector<8xi16>
          %295 = vector.multi_reduction <mul>, %79, %cst_1 [0, 1] : vector<11x13xf32> to f32
          %296 = memref.atomic_rmw mins %c34358798_i32, %alloc_17[%c1, %c4, %c1] : (i32, memref<8x11x8xi32>) -> i32
          %297 = vector.load %alloc_19[] : memref<i16>, vector<7xi16>
          %298 = arith.cmpf ugt, %cst_0, %cst_0 : f16
          %299 = bufferization.to_tensor %alloc_17 : memref<8x11x8xi32>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %splat_56 = tensor.splat %cst_3 : tensor<7xf32>
      %generated_57 = tensor.generate %c8 {
      ^bb0(%arg2: index):
        %271 = memref.load %alloc_20[%c4] : memref<7xf16>
        %272 = arith.minf %cst, %cst : f16
        %alloca_59 = memref.alloca() : memref<8x11x8xi64>
        bufferization.dealloc_tensor %223 : tensor<i32>
        tensor.yield %c1586311473_i64 : i64
      } : tensor<?xi64>
      %265 = vector.reduction <maxsi>, %63 : vector<8xi64> into i64
      %266 = affine.for %arg2 = 0 to 121 iter_args(%arg3 = %rank) -> (index) {
        affine.yield %c1 : index
      }
      %267 = arith.andi %true, %false : i1
      memref.copy %alloc_8, %alloc_18 : memref<11x13xi32> to memref<11x13xi32>
      affine.store %c1586311473_i64, %alloc_11[%c5, %c11, %c13] : memref<8x11x8xi64>
      %268 = vector.reduction <minui>, %20 : vector<8xi64> into i64
      %generated_58 = tensor.generate %rank_32 {
      ^bb0(%arg2: index):
        %271 = index.castu %185 : i16 to index
        %272 = index.sub %215, %c6
        %273 = vector.multi_reduction <maxf>, %77, %67 [0] : vector<7x11x13xf32> to vector<11x13xf32>
        %274 = index.castu %true_45 : i1 to index
        tensor.yield %extracted : f32
      } : tensor<?xf32>
      %269 = scf.if %false_29 -> (memref<7x11x13xi16>) {
        %271 = bufferization.clone %alloc_6 : memref<7xi1> to memref<7xi1>
        %272 = vector.maskedload %95[%c3], %110, %63 : memref<7xi64>, vector<8xi1>, vector<8xi64> into vector<8xi64>
        %273 = math.fma %cst_3, %cst_1, %cst_3 : f32
        %274 = math.cos %2 : tensor<7xf16>
        %275 = vector.flat_transpose %170 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
        %276 = arith.shrui %c1570961800_i64, %c1570961800_i64 : i64
        %277 = vector.reduction <add>, %43 : vector<8xi64> into i64
        %278 = vector.insertelement %c1193819625_i32, %109[%215 : index] : vector<8xi32>
        scf.yield %alloc_16 : memref<7x11x13xi16>
      } else {
        %271 = vector.broadcast %c2 : index to vector<8xindex>
        %272 = vector.broadcast %cst_0 : f16 to vector<8xf16>
        vector.scatter %alloc_15[%c6, %c9, %c3] [%271], %110, %272 : memref<8x11x8xf16>, vector<8xindex>, vector<8xi1>, vector<8xf16>
        %273 = arith.negf %cst_1 : f32
        %274 = vector.splat %c34358798_i32 : vector<11x13xi32>
        %275 = index.maxu %rank_38, %104
        %276 = tensor.empty() : tensor<7xi32>
        %277 = math.fpowi %73, %276 : tensor<7xf32>, tensor<7xi32>
        %278 = math.absi %15 : tensor<11x13xi16>
        %279 = memref.load %alloc_13[%c1, %c1, %c7] : memref<7x11x13xi1>
        %280 = index.maxu %57, %rank_36
        scf.yield %alloc_16 : memref<7x11x13xi16>
      }
      %270 = arith.addi %185, %185 : i16
      scf.yield %94 : tensor<7xi1>
    }
    %229 = vector.create_mask %57 : vector<7xi1>
    %230 = arith.subi %c618576397_i32, %c1963286850_i32 : i32
    %231 = arith.ceildivsi %c1711792754_i64, %c1586311473_i64 : i64
    %232 = math.expm1 %13 : tensor<7x11x13xf32>
    %233 = bufferization.to_tensor %alloc_8 : memref<11x13xi32>
    %234 = arith.remf %cst_1, %cst_3 : f32
    %235 = index.maxu %c13, %rank_35
    %236 = index.casts %c34358798_i32 : i32 to index
    %237 = vector.broadcast %29 : f16 to vector<11x13xf16>
    %238 = vector.gather %2[%c3] [%169], %51, %237 : tensor<7xf16>, vector<11x13xi32>, vector<11x13xi1>, vector<11x13xf16> into vector<11x13xf16>
    %239 = math.copysign %cst_3, %cst_1 : f32
    %240 = math.log %5 : tensor<7x11x13xf16>
    %splat_50 = tensor.splat %c1570961800_i64 : tensor<7xi64>
    %241 = math.log2 %collapsed : tensor<77x13xf32>
    memref.assume_alignment %alloc_18, 8 : memref<11x13xi32>
    %242 = vector.broadcast %185 : i16 to vector<7xi16>
    %243 = vector.gather %alloc_16[%190, %179, %c11] [%124], %229, %242 : memref<7x11x13xi16>, vector<7xi32>, vector<7xi1>, vector<7xi16> into vector<7xi16>
    %244 = arith.ceildivsi %false_29, %true_2 : i1
    %245 = arith.minf %cst_0, %cst : f16
    %246 = vector.matrix_multiply %243, %242 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<7xi16>) -> vector<1xi16>
    %247 = index.sizeof
    %248 = math.ctlz %10 : tensor<8x11x8xi16>
    %249 = vector.flat_transpose %123 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
    %250 = vector.bitcast %133 : vector<7x11x13xi64> to vector<7x11x13xi64>
    memref.assume_alignment %101, 8 : memref<i16>
    %251 = vector.flat_transpose %109 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
    %252 = arith.xori %false_29, %true : i1
    bufferization.dealloc_tensor %222 : tensor<7x11x13xf32>
    %253 = math.exp2 %cst : f16
    %254 = bufferization.to_tensor %alloc_9 : memref<8x11x8xi16>
    %255 = bufferization.to_tensor %95 : memref<7xi64>
    %256 = affine.if affine_set<(d0, d1) : ((d0 ceildiv 8 + d1 + 20) mod 8 == 0)>(%c7, %c1) -> memref<7xi64> {
      %rank_53 = tensor.rank %18 : tensor<13x11xi64>
      %262 = arith.addf %cst, %cst : f16
      %263 = index.mul %52, %c6
      %264 = affine.load %alloc_19[] : memref<i16>
      %265 = math.copysign %cst, %cst : f16
      %266 = memref.load %alloc[%c7, %c10] : memref<11x13xi64>
      %267 = affine.if affine_set<(d0, d1, d2) : (d2 - 128 >= 0)>(%c3, %c5, %c7) -> memref<8x11x8xi16> {
        %268 = index.maxu %195, %64
        %269 = vector.load %alloc_8[%c2, %c2] : memref<11x13xi32>, vector<7xi32>
        %270 = memref.realloc %alloc_6 : memref<7xi1> to memref<8xi1>
        %271 = vector.broadcast %158 : index to vector<7xindex>
        %272 = vector.broadcast %c1586311473_i64 : i64 to vector<7xi64>
        vector.scatter %alloc_11[%c3, %c1, %c3] [%271], %125, %272 : memref<8x11x8xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %273 = math.round %12 : tensor<7xf16>
        %274 = index.casts %true : i1 to index
        %275 = vector.broadcast %false_29 : i1 to vector<7x11xi1>
        %dest, %accumulated_value = vector.scan <and>, %75, %275 {inclusive = false, reduction_dim = 2 : i64} : vector<7x11x13xi1>, vector<7x11xi1>
        %276 = index.add %rank_30, %104
        affine.yield %alloc_9 : memref<8x11x8xi16>
      } else {
        %268 = vector.flat_transpose %219 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
        %269 = vector.splat %181 : vector<8x11x8xindex>
        %270 = bufferization.to_tensor %alloc_16 : memref<7x11x13xi16>
        %271 = memref.atomic_rmw minf %cst_1, %alloc_14[%c8, %c10] : (f32, memref<11x13xf32>) -> f32
        %272 = affine.load %alloc_17[%c10, %c0, %c3] : memref<8x11x8xi32>
        %273 = math.roundeven %13 : tensor<7x11x13xf32>
        %274 = memref.atomic_rmw addf %cst_1, %alloc_5[%c3, %c2] : (f32, memref<11x13xf32>) -> f32
        %275 = arith.xori %true, %true_45 : i1
        affine.yield %alloc_9 : memref<8x11x8xi16>
      }
      %alloc_54 = memref.alloc() : memref<8x11x8xi64>
      affine.yield %95 : memref<7xi64>
    } else {
      %262 = arith.maxf %cst_3, %cst_3 : f32
      %263 = tensor.empty() : tensor<13x8xi1>
      %264 = tensor.empty() : tensor<11x8xi1>
      %265 = linalg.matmul ins(%splat, %263 : tensor<11x13xi1>, tensor<13x8xi1>) outs(%264 : tensor<11x8xi1>) -> tensor<11x8xi1>
      %266 = memref.load %101[] : memref<i16>
      %267 = arith.maxf %cst_3, %extracted : f32
      %268 = math.atan2 %cst, %cst : f16
      %269 = arith.ceildivsi %c1570961800_i64, %c1586311473_i64 : i64
      %270 = index.casts %236 : index to i32
      %271 = math.log10 %13 : tensor<7x11x13xf32>
      affine.yield %95 : memref<7xi64>
    }
    %257 = index.casts %true_45 : i1 to index
    %258 = tensor.empty() : tensor<7xi64>
    %259 = linalg.copy ins(%splat_27 : tensor<7xi64>) outs(%258 : tensor<7xi64>) -> tensor<7xi64>
    %alloc_51 = memref.alloc() : memref<13x7x11xf16>
    linalg.transpose ins(%5 : tensor<7x11x13xf16>) outs(%alloc_51 : memref<13x7x11xf16>) permutation = [2, 0, 1] 
    %alloc_52 = memref.alloc() : memref<f32>
    linalg.reduce ins(%collapsed : tensor<77x13xf32>) outs(%alloc_52 : memref<f32>) dimensions = [0, 1] 
      (%in: f32, %init: f32) {
        %262 = math.round %cst : f16
        %263 = vector.insertelement %185, %243[%100 : index] : vector<7xi16>
        %264 = vector.gather %alloc_13[%rank_40, %236, %57] [%76], %75, %75 : memref<7x11x13xi1>, vector<7x11x13xi32>, vector<7x11x13xi1>, vector<7x11x13xi1> into vector<7x11x13xi1>
        %265 = math.log10 %extracted : f32
        bufferization.dealloc_tensor %10 : tensor<8x11x8xi16>
        %266 = math.absi %c1586311473_i64 : i64
        %267 = arith.mulf %extracted, %cst_1 : f32
        %268 = tensor.empty() : tensor<i16>
        %mapped_53 = linalg.map ins(%136 : tensor<i16>) outs(%268 : tensor<i16>)
          (%in_55: i16) {
            memref.assume_alignment %alloc_9, 2 : memref<8x11x8xi16>
            %269 = math.exp2 %29 : f16
            %270 = vector.broadcast %true_45 : i1 to vector<7x7xi1>
            %271 = vector.outerproduct %125, %229, %270 {kind = #vector.kind<minui>} : vector<7xi1>, vector<7xi1>
            %272 = tensor.empty() : tensor<7xi32>
            %273 = vector.gather %272[%78] [%219], %123, %124 : tensor<7xi32>, vector<7xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
            memref.assume_alignment %alloc_12, 4 : memref<11x13xf16>
            %274 = arith.muli %true_2, %true_2 : i1
            %275 = bufferization.to_tensor %alloc_14 : memref<11x13xf32>
            %276 = math.absf %204 : tensor<11x13xf32>
            %277 = vector.broadcast %rank_30 : index to vector<13xindex>
            %278 = vector.broadcast %true_2 : i1 to vector<13xi1>
            %279 = vector.broadcast %c-9988_i16 : i16 to vector<13xi16>
            vector.scatter %101[] [%277], %278, %279 : memref<i16>, vector<13xindex>, vector<13xi1>, vector<13xi16>
            %280 = arith.divf %cst_1, %cst_3 : f32
            %inserted_56 = tensor.insert %c-9988_i16 into %6[%c8, %c0] : tensor<11x13xi16>
            %281 = math.floor %1 : tensor<7x11x13xf32>
            %282 = vector.multi_reduction <minui>, %76, %219 [1, 2] : vector<7x11x13xi32> to vector<7xi32>
            %expanded_57 = tensor.expand_shape %generated [[0], [1], [2, 3]] : tensor<?x?x8xi32> into tensor<?x?x8x1xi32>
            %283 = bufferization.clone %alloc_51 : memref<13x7x11xf16> to memref<13x7x11xf16>
            %splat_58 = tensor.splat %c1570961800_i64 : tensor<7x11x13xi64>
            %284 = index.sub %rank_30, %c5
            bufferization.dealloc_tensor %5 : tensor<7x11x13xf16>
            %285 = math.log %22 : tensor<f16>
            %286 = vector.bitcast %109 : vector<8xi32> to vector<8xi32>
            %287 = index.floordivs %212, %235
            %288 = vector.flat_transpose %43 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
            %expanded_59 = tensor.expand_shape %207 [[0], [1, 2]] : tensor<11x13xi1> into tensor<11x13x1xi1>
            %289 = index.sizeof
            %290 = vector.multi_reduction <minui>, %39, %185 [0, 1] : vector<11x8xi16> to i16
            %291 = math.round %cst_0 : f16
            %292 = vector.broadcast %235 : index to vector<11xindex>
            %293 = vector.broadcast %true : i1 to vector<11xi1>
            %294 = vector.broadcast %c1711792754_i64 : i64 to vector<11xi64>
            vector.scatter %alloc_10[%c3, %c4, %c3] [%292], %293, %294 : memref<7x11x13xi64>, vector<11xindex>, vector<11xi1>, vector<11xi64>
            bufferization.dealloc_tensor %255 : tensor<7xi64>
            %295 = math.tan %init : f32
            %296 = math.tan %init : f32
            %297 = affine.load %alloc_6[%c6] : memref<7xi1>
            %expanded_60 = tensor.expand_shape %42 [[0], [1], [2, 3]] : tensor<8x11x8xi16> into tensor<8x11x8x1xi16>
            %c0_i16 = arith.constant 0 : i16
            linalg.yield %c0_i16 : i16
          }
        %cst_54 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_54 : f32
      }
    scf.parallel (%arg2, %arg3) = (%161, %c6) to (%180, %rank_32) step (%c13, %c6) {
      %262 = arith.ceildivsi %false, %false_29 : i1
      %263 = arith.andi %true_2, %true_39 : i1
      %264 = vector.gather %9[%153, %180, %c8] [%76], %75, %75 : tensor<8x11x8xi1>, vector<7x11x13xi32>, vector<7x11x13xi1>, vector<7x11x13xi1> into vector<7x11x13xi1>
      %265 = vector.broadcast %215 : index to vector<8xindex>
      vector.scatter %alloc_13[%c6, %c6, %c0] [%265], %110, %110 : memref<7x11x13xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
      %266 = math.absf %204 : tensor<11x13xf32>
      %267 = math.tan %expanded_33 : tensor<7x11x13x1xf32>
      %268 = arith.ceildivsi %c-9988_i16, %c-9988_i16 : i16
      %269 = index.sub %181, %190
      scf.index_switch %arg2 
      case 1 {
        %277 = vector.insert %169, %76 [6] : vector<11x13xi32> into vector<7x11x13xi32>
        %278 = math.fma %cst, %cst_0, %29 : f16
        %279 = vector.multi_reduction <maxui>, %109, %111 [] : vector<8xi32> to vector<8xi32>
        %280 = arith.andi %185, %185 : i16
        %281 = arith.shrui %true, %true_39 : i1
        %282 = arith.remui %c618576397_i32, %c768864186_i32 : i32
        %extracted_53 = tensor.extract %17[%c6, %c6, %c12] : tensor<7x11x13xf32>
        %283 = memref.load %alloc_8[%c8, %c10] : memref<11x13xi32>
        %284 = math.tanh %extracted : f32
        %285 = math.log2 %cst_1 : f32
        %inserted_54 = tensor.insert %c-9988_i16 into %6[%c8, %c6] : tensor<11x13xi16>
        %286 = arith.ceildivsi %c1586311473_i64, %c1570961800_i64 : i64
        memref.assume_alignment %95, 16 : memref<7xi64>
        %287 = math.log2 %204 : tensor<11x13xf32>
        %288 = arith.addf %29, %29 : f16
        %289 = math.exp2 %5 : tensor<7x11x13xf16>
        scf.yield
      }
      case 2 {
        %277 = math.log %13 : tensor<7x11x13xf32>
        %278 = index.add %c15, %24
        %279 = math.powf %21, %21 : tensor<f16>
        %280 = vector.insertelement %c1193819625_i32, %251[%212 : index] : vector<8xi32>
        %281 = vector.splat %rank : vector<7xindex>
        %282 = math.expm1 %collapsed : tensor<77x13xf32>
        %inserted_53 = tensor.insert %cst into %22[] : tensor<f16>
        affine.store %185, %101[] : memref<i16>
        %c0_i16 = arith.constant 0 : i16
        %283 = vector.transfer_read %6[%rank_36, %c3], %c0_i16 : tensor<11x13xi16>, vector<i16>
        %284 = arith.cmpi sge, %c768864186_i32, %c618576397_i32 : i32
        %rank_54 = tensor.rank %42 : tensor<8x11x8xi16>
        %285 = affine.apply affine_map<(d0, d1) -> (d0 ceildiv 16)>(%161, %195)
        %286 = math.roundeven %collapsed : tensor<77x13xf32>
        %287 = arith.divui %c-9988_i16, %c-9988_i16 : i16
        %288 = arith.xori %c618576397_i32, %c1193819625_i32 : i32
        %289 = vector.broadcast %c1586311473_i64 : i64 to vector<8x8xi64>
        %290 = vector.outerproduct %170, %20, %289 {kind = #vector.kind<maxui>} : vector<8xi64>, vector<8xi64>
        scf.yield
      }
      default {
        %277 = arith.divf %extracted, %cst_1 : f32
        %278 = math.roundeven %12 : tensor<7xf16>
        %inserted_53 = tensor.insert %cst_0 into %2[%c3] : tensor<7xf16>
        memref.assume_alignment %alloc_20, 1 : memref<7xf16>
        %279 = vector.transpose %109, [0] : vector<8xi32> to vector<8xi32>
        %280 = math.log2 %cst_0 : f16
        %281 = math.absi %255 : tensor<7xi64>
        %282 = vector.load %alloc_15[%c1, %c3, %c4] : memref<8x11x8xf16>, vector<7xf16>
        %alloc_54 = memref.alloc() : memref<7x11x13xi16>
        memref.copy %alloc_16, %alloc_54 : memref<7x11x13xi16> to memref<7x11x13xi16>
        %283 = memref.load %alloc[%c7, %c0] : memref<11x13xi64>
        %284 = arith.negf %cst_0 : f16
        memref.assume_alignment %alloc_12, 8 : memref<11x13xf16>
        %285 = arith.remsi %c1570961800_i64, %c1711792754_i64 : i64
        %286 = math.expm1 %12 : tensor<7xf16>
        %287 = math.expm1 %extracted : f32
        %288 = arith.addf %29, %cst : f16
      }
      %270 = arith.maxf %extracted, %cst_3 : f32
      %271 = math.powf %29, %cst_0 : f16
      %272 = affine.for %arg4 = 0 to 30 iter_args(%arg5 = %alloc_17) -> (memref<8x11x8xi32>) {
        affine.yield %arg5 : memref<8x11x8xi32>
      }
      %273 = math.tanh %cst_1 : f32
      %274 = arith.remf %cst_0, %29 : f16
      %275 = math.powf %2, %12 : tensor<7xf16>
      %276 = vector.insertelement %c1711792754_i64, %68[%64 : index] : vector<8xi64>
      scf.yield
    }
    %260 = affine.vector_load %alloc_8[%57, %181] : memref<11x13xi32>, vector<7xi32>
    affine.vector_store %118, %alloc_7[%64] : memref<7xi32>, vector<1xi32>
    vector.print %20 : vector<8xi64>
    vector.print %25 : vector<8x11x8xi16>
    vector.print %26 : vector<8x11x8xi1>
    vector.print %27 : vector<8x11x8xi32>
    vector.print %28 : vector<8x11x8xi16>
    vector.print %30 : vector<1x11x8xi16>
    vector.print %33 : vector<1x6x8xi16>
    vector.print %37 : vector<1x11x8xi16>
    vector.print %39 : vector<11x8xi16>
    vector.print %43 : vector<8xi64>
    vector.print %51 : vector<11x13xi1>
    vector.print %63 : vector<8xi64>
    vector.print %66 : vector<11x13xf32>
    vector.print %67 : vector<11x13xf32>
    vector.print %68 : vector<8xi64>
    vector.print %74 : vector<7x11x13xf32>
    vector.print %75 : vector<7x11x13xi1>
    vector.print %76 : vector<7x11x13xi32>
    vector.print %77 : vector<7x11x13xf32>
    vector.print %79 : vector<11x13xf32>
    vector.print %80 : vector<11x13xf32>
    vector.print %82 : vector<7x11x13xi64>
    vector.print %109 : vector<8xi32>
    vector.print %110 : vector<8xi1>
    vector.print %111 : vector<8xi32>
    vector.print %118 : vector<1xi32>
    vector.print %123 : vector<7xi1>
    vector.print %124 : vector<7xi32>
    vector.print %125 : vector<7xi1>
    vector.print %133 : vector<7x11x13xi64>
    vector.print %145 : vector<8xi64>
    vector.print %163 : vector<13xf32>
    vector.print %169 : vector<11x13xi32>
    vector.print %170 : vector<8xi64>
    vector.print %177 : vector<8xi16>
    vector.print %186 : vector<11x13xi1>
    vector.print %199 : vector<7x13xi64>
    vector.print %211 : vector<8xi64>
    vector.print %216 : vector<7x11x13xf32>
    vector.print %217 : vector<7x11x13xf32>
    vector.print %219 : vector<7xi32>
    vector.print %229 : vector<7xi1>
    vector.print %237 : vector<11x13xf16>
    vector.print %238 : vector<11x13xf16>
    vector.print %242 : vector<7xi16>
    vector.print %243 : vector<7xi16>
    vector.print %246 : vector<1xi16>
    vector.print %249 : vector<7xi1>
    vector.print %250 : vector<7x11x13xi64>
    vector.print %251 : vector<8xi32>
    vector.print %260 : vector<7xi32>
    vector.print %c1570961800_i64 : i64
    vector.print %c1963286850_i32 : i32
    vector.print %true : i1
    vector.print %c1711792754_i64 : i64
    vector.print %false : i1
    vector.print %c618576397_i32 : i32
    vector.print %cst : f16
    vector.print %c768864186_i32 : i32
    vector.print %c1586311473_i64 : i64
    vector.print %cst_0 : f16
    vector.print %cst_1 : f32
    vector.print %true_2 : i1
    vector.print %cst_3 : f32
    vector.print %c-9988_i16 : i16
    vector.print %c1193819625_i32 : i32
    vector.print %c34358798_i32 : i32
    vector.print %29 : f16
    vector.print %false_29 : i1
    vector.print %extracted : f32
    vector.print %185 : i16
    vector.print %true_39 : i1
    vector.print %true_45 : i1
    %261 = vector.broadcast %cst_3 : f32 to vector<8x11x8xf32>
    return %261 : vector<8x11x8xf32>
  }
}
