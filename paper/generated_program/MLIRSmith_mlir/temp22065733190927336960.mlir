module {
  func.func @func1(%arg0: vector<16xf16>, %arg1: tensor<5xi16>, %arg2: vector<5xf32>) -> i32 {
    %cst = arith.constant 0x4E35938D : f32
    %cst_0 = arith.constant 3.644800e+04 : f16
    %cst_1 = arith.constant 1.28313792E+9 : f32
    %c-20596_i16 = arith.constant -20596 : i16
    %cst_2 = arith.constant 1.25897446E+9 : f32
    %true = arith.constant true
    %cst_3 = arith.constant 3.651200e+04 : f16
    %cst_4 = arith.constant 0x4E369B61 : f32
    %c-22643_i16 = arith.constant -22643 : i16
    %cst_5 = arith.constant 6.489600e+04 : f16
    %cst_6 = arith.constant 1.17351014E+9 : f32
    %c-32578_i16 = arith.constant -32578 : i16
    %cst_7 = arith.constant 1.06137549E+9 : f32
    %cst_8 = arith.constant 3.022400e+04 : f16
    %cst_9 = arith.constant 1.047200e+04 : f16
    %c27109_i16 = arith.constant 27109 : i16
    %0 = tensor.empty() : tensor<7x13x16xf32>
    %1 = tensor.empty() : tensor<7x13x16xi32>
    %2 = tensor.empty() : tensor<13x16xi16>
    %3 = tensor.empty() : tensor<13x16xf32>
    %4 = tensor.empty() : tensor<16xi1>
    %5 = tensor.empty() : tensor<7x13x16xi1>
    %6 = tensor.empty() : tensor<16xf16>
    %7 = tensor.empty() : tensor<5xi1>
    %8 = tensor.empty() : tensor<13x16xi1>
    %9 = tensor.empty() : tensor<5xi16>
    %10 = tensor.empty() : tensor<5xi1>
    %11 = tensor.empty() : tensor<13x16xi32>
    %12 = tensor.empty() : tensor<5xi64>
    %13 = tensor.empty() : tensor<7x13x16xf16>
    %14 = tensor.empty() : tensor<16xi1>
    %15 = tensor.empty() : tensor<13x16xi16>
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
    %alloc = memref.alloc() : memref<16xi64>
    %alloc_10 = memref.alloc() : memref<5xi16>
    %alloc_11 = memref.alloc() : memref<13x16xf16>
    %alloc_12 = memref.alloc() : memref<5xi1>
    %alloc_13 = memref.alloc() : memref<13x16xi32>
    %alloc_14 = memref.alloc() : memref<16xi64>
    %alloc_15 = memref.alloc() : memref<13x16xi1>
    %alloc_16 = memref.alloc() : memref<16xi1>
    %alloc_17 = memref.alloc() : memref<13x16xf16>
    %alloc_18 = memref.alloc() : memref<7x13x16xf16>
    %alloc_19 = memref.alloc() : memref<5xf16>
    %alloc_20 = memref.alloc() : memref<5xi16>
    %alloc_21 = memref.alloc() : memref<7x13x16xf16>
    %alloc_22 = memref.alloc() : memref<16xi32>
    %alloc_23 = memref.alloc() : memref<16xf16>
    %alloc_24 = memref.alloc() : memref<13x16xi64>
    %16 = tensor.empty() : tensor<16xi1>
    %17 = linalg.copy ins(%14 : tensor<16xi1>) outs(%16 : tensor<16xi1>) -> tensor<16xi1>
    %alloc_25 = memref.alloc() : memref<16x13xf16>
    linalg.transpose ins(%alloc_17 : memref<13x16xf16>) outs(%alloc_25 : memref<16x13xf16>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<16xi16>
    %reduced = linalg.reduce ins(%2 : tensor<13x16xi16>) outs(%18 : tensor<16xi16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %263 = math.absi %15 : tensor<13x16xi16>
        %264 = arith.addi %init, %init : i16
        %265 = arith.subi %c-22643_i16, %c-20596_i16 : i16
        %266 = bufferization.to_tensor %alloc_23 : memref<16xf16>
        %267 = arith.maxui %c-22643_i16, %in : i16
        %268 = affine.load %alloc_16[%c1] : memref<16xi1>
        %269 = index.ceildivu %c7, %c9
        %270 = arith.cmpi ugt, %268, %268 : i1
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    scf.parallel (%arg3, %arg4) = (%c12, %c2) to (%c10, %c10) step (%c5, %c3) {
      %263 = math.ipowi %15, %15 : tensor<13x16xi16>
      %cast_45 = tensor.cast %7 : tensor<5xi1> to tensor<?xi1>
      %264 = vector.broadcast %cst_8 : f16 to vector<5xf16>
      %265 = vector.matrix_multiply %264, %264 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf16>, vector<5xf16>) -> vector<1xf16>
      %266 = scf.index_switch %c6 -> memref<5xi64> 
      case 1 {
        %278 = arith.xori %c27109_i16, %c-32578_i16 : i16
        %279 = vector.insert %cst_0, %264 [2] : f16 into vector<5xf16>
        %280 = arith.ceildivsi %c27109_i16, %c-22643_i16 : i16
        %281 = vector.extract %265[0] : vector<1xf16>
        %282 = index.divu %c11, %c3
        %283 = vector.bitcast %265 : vector<1xf16> to vector<1xf16>
        %alloc_47 = memref.alloc() : memref<13x16xi1>
        memref.copy %alloc_15, %alloc_47 : memref<13x16xi1> to memref<13x16xi1>
        %284 = arith.ceildivsi %true, %true : i1
        %285 = affine.min affine_map<(d0) -> ((d0 + 68) floordiv 16 - 16, ((d0 + 4) floordiv 64) floordiv 2)>(%c7)
        %286 = vector.broadcast %cst_7 : f32 to vector<5xf32>
        %287 = vector.transfer_write %286, %3[%c1, %c14] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xf32>, tensor<13x16xf32>
        %288 = index.maxs %c9, %c5
        %289 = index.add %282, %arg3
        bufferization.dealloc_tensor %15 : tensor<13x16xi16>
        %290 = math.sqrt %3 : tensor<13x16xf32>
        %291 = arith.minui %c-22643_i16, %c-32578_i16 : i16
        %292 = arith.shrsi %true, %true : i1
        %alloc_48 = memref.alloc() : memref<5xi64>
        scf.yield %alloc_48 : memref<5xi64>
      }
      case 2 {
        %278 = arith.cmpf ueq, %cst_7, %cst_2 : f32
        %279 = arith.divsi %c27109_i16, %c27109_i16 : i16
        %280 = bufferization.clone %alloc_13 : memref<13x16xi32> to memref<13x16xi32>
        %281 = arith.addi %c-32578_i16, %c-20596_i16 : i16
        %282 = vector.splat %cst_8 : vector<7x13x16xf16>
        %283 = arith.shrsi %c-32578_i16, %c-32578_i16 : i16
        %284 = vector.bitcast %265 : vector<1xf16> to vector<1xf16>
        %285 = vector.matrix_multiply %284, %284 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
        %286 = math.exp2 %cst_4 : f32
        %287 = index.maxu %c3, %c5
        %288 = vector.create_mask %c13, %c14, %c10 : vector<7x13x16xi1>
        %289 = math.roundeven %cst_1 : f32
        %290 = vector.splat %c6 : vector<7x13x16xindex>
        memref.copy %alloc_20, %alloc_10 : memref<5xi16> to memref<5xi16>
        %291 = index.ceildivu %c11, %c4
        %292 = arith.divsi %c-20596_i16, %c-32578_i16 : i16
        %alloc_47 = memref.alloc() : memref<5xi64>
        scf.yield %alloc_47 : memref<5xi64>
      }
      default {
        %278 = bufferization.to_tensor %alloc_20 : memref<5xi16>
        %alloc_47 = memref.alloc() : memref<13x16xi64>
        memref.copy %alloc_24, %alloc_47 : memref<13x16xi64> to memref<13x16xi64>
        %279 = vector.create_mask %c14 : vector<16xi1>
        %c1_i32 = arith.constant 1 : i32
        %280 = vector.transfer_read %11[%c13, %c3], %c1_i32 : tensor<13x16xi32>, vector<i32>
        %281 = bufferization.to_memref %13 : memref<7x13x16xf16>
        %282 = affine.max affine_map<(d0, d1) -> ((d1 + d0 - (d1 + 2)) mod 4, (d1 + d0 - (d1 + 2)) mod 4, d0, d0 - (d1 + 2))>(%c6, %c4)
        %283 = math.powf %3, %3 : tensor<13x16xf32>
        %284 = vector.broadcast %cst_2 : f32 to vector<5xf32>
        %285 = vector.fma %284, %284, %284 : vector<5xf32>
        %286 = arith.shrsi %c27109_i16, %c-20596_i16 : i16
        %287 = math.copysign %cst_4, %cst_2 : f32
        %288 = math.exp2 %cst_4 : f32
        %289 = vector.broadcast %cst_1 : f32 to vector<13x16xf32>
        %290 = math.powf %cst, %cst : f32
        %291 = index.casts %c-32578_i16 : i16 to index
        %292 = math.fma %cst_3, %cst_8, %cst_0 : f16
        memref.tensor_store %6, %alloc_23 : memref<16xf16>
        %alloc_48 = memref.alloc() : memref<5xi64>
        scf.yield %alloc_48 : memref<5xi64>
      }
      %cast_46 = tensor.cast %15 : tensor<13x16xi16> to tensor<?x?xi16>
      %267 = vector.broadcast %c-22643_i16 : i16 to vector<7x13x16xi16>
      %268 = math.atan2 %cst_8, %cst_9 : f16
      %269 = bufferization.to_tensor %alloc_20 : memref<5xi16>
      %270 = arith.muli %c27109_i16, %c-22643_i16 : i16
      %271 = vector.matrix_multiply %264, %264 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf16>, vector<5xf16>) -> vector<1xf16>
      %272 = bufferization.to_memref %8 : memref<13x16xi1>
      %273 = arith.ori %c-20596_i16, %c-32578_i16 : i16
      %274 = index.floordivs %c13, %c9
      %275 = bufferization.clone %alloc_20 : memref<5xi16> to memref<5xi16>
      %276 = math.absi %true : i1
      %277 = memref.realloc %alloc_19 : memref<5xf16> to memref<7xf16>
      scf.yield
    }
    %19 = affine.vector_load %alloc_25[%c3, %c13] : memref<16x13xf16>, vector<7xf16>
    affine.vector_store %19, %alloc_19[%c10] : memref<5xf16>, vector<7xf16>
    %alloc_26 = memref.alloc() : memref<5xi1>
    %20 = tensor.empty() : tensor<i1>
    %21 = linalg.dot ins(%10, %alloc_26 : tensor<5xi1>, memref<5xi1>) outs(%20 : tensor<i1>) -> tensor<i1>
    %22 = arith.minui %c-22643_i16, %c-20596_i16 : i16
    affine.for %arg3 = 0 to 15 {
    }
    %23 = vector.broadcast %cst_7 : f32 to vector<13x16xf32>
    %24 = vector.fma %23, %23, %23 : vector<13x16xf32>
    %25 = arith.shli %c-20596_i16, %c-22643_i16 : i16
    %generated = tensor.generate %c12, %c14 {
    ^bb0(%arg3: index, %arg4: index):
      %263 = scf.index_switch %c9 -> tensor<5xi16> 
      case 1 {
        %267 = arith.ceildivsi %c-32578_i16, %c-32578_i16 : i16
        %268 = index.ceildivu %c0, %arg4
        %269 = bufferization.clone %alloc_18 : memref<7x13x16xf16> to memref<7x13x16xf16>
        %270 = arith.divsi %c-22643_i16, %c-20596_i16 : i16
        %271 = arith.ori %c27109_i16, %c-22643_i16 : i16
        %272 = vector.extract %19[0] : vector<7xf16>
        %273 = vector.broadcast %cst_9 : f16 to vector<16x7xf16>
        %274 = vector.transfer_write %273, %13[%c13, %c15, %arg3] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x7xf16>, tensor<7x13x16xf16>
        %275 = vector.broadcast %cst_1 : f32 to vector<16xf32>
        %276 = vector.fma %275, %275, %275 : vector<16xf32>
        %277 = index.maxu %c12, %c4
        %278 = math.expm1 %3 : tensor<13x16xf32>
        %279 = arith.maxsi %c-32578_i16, %c27109_i16 : i16
        %280 = math.fma %cst_1, %cst, %cst_1 : f32
        %281 = math.tanh %cst_0 : f16
        %282 = memref.realloc %alloc_20 : memref<5xi16> to memref<16xi16>
        %283 = arith.muli %c27109_i16, %c-22643_i16 : i16
        %284 = arith.cmpf oge, %cst_2, %cst_1 : f32
        scf.yield %9 : tensor<5xi16>
      }
      case 2 {
        %collapsed_45 = tensor.collapse_shape %8 [[0, 1]] : tensor<13x16xi1> into tensor<208xi1>
        %collapsed_46 = tensor.collapse_shape %15 [[0, 1]] : tensor<13x16xi16> into tensor<208xi16>
        %267 = arith.negf %cst_7 : f32
        %268 = bufferization.to_memref %15 : memref<13x16xi16>
        %269 = arith.muli %c27109_i16, %c-20596_i16 : i16
        %c0_i64_47 = arith.constant 0 : i64
        memref.store %c0_i64_47, %alloc[%c14] : memref<16xi64>
        %270 = math.copysign %cst_2, %cst_4 : f32
        %271 = math.copysign %cst_0, %cst_9 : f16
        %272 = vector.matrix_multiply %19, %19 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf16>, vector<7xf16>) -> vector<1xf16>
        %273 = bufferization.to_memref %collapsed_45 : memref<208xi1>
        %274 = index.mul %c1, %c0
        %splat_48 = tensor.splat %cst : tensor<16xf32>
        %275 = math.absi %c-20596_i16 : i16
        %276 = math.exp %6 : tensor<16xf16>
        %277 = arith.remsi %c-22643_i16, %c-32578_i16 : i16
        %278 = vector.broadcast %cst_7 : f32 to vector<16xf32>
        %279 = vector.insert %278, %24 [0] : vector<16xf32> into vector<13x16xf32>
        scf.yield %9 : tensor<5xi16>
      }
      default {
        %267 = math.log %cst_4 : f32
        %268 = math.exp2 %13 : tensor<7x13x16xf16>
        %269 = vector.extract %23[0] : vector<13x16xf32>
        %270 = arith.remsi %true, %true : i1
        %271 = bufferization.to_memref %13 : memref<7x13x16xf16>
        %272 = index.sizeof
        %273 = math.round %cst_7 : f32
        %274 = math.ctpop %c-22643_i16 : i16
        %275 = index.ceildivu %arg4, %c4
        %276 = bufferization.to_memref %reduced : memref<16xi16>
        %extracted_45 = tensor.extract %6[%c3] : tensor<16xf16>
        %277 = index.floordivs %c5, %c5
        %278 = bufferization.to_tensor %alloc_19 : memref<5xf16>
        %279 = vector.broadcast %cst_9 : f16 to vector<5x7xf16>
        %280 = vector.transfer_write %279, %13[%c2, %c14, %c14] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<5x7xf16>, tensor<7x13x16xf16>
        %281 = math.ipowi %true, %true : i1
        %splat_46 = tensor.splat %c-22643_i16 : tensor<16xi16>
        scf.yield %9 : tensor<5xi16>
      }
      %264 = bufferization.clone %alloc_22 : memref<16xi32> to memref<16xi32>
      %265 = index.ceildivs %c6, %arg3
      %266 = arith.cmpf true, %cst_0, %cst_0 : f16
      tensor.yield %cst_0 : f16
    } : tensor<?x?xf16>
    %26 = index.floordivs %c1, %c12
    %27 = scf.index_switch %c13 -> f32 
    case 1 {
      %263 = arith.ceildivsi %c27109_i16, %c-32578_i16 : i16
      %264 = arith.addi %c-20596_i16, %c-32578_i16 : i16
      %265 = arith.ceildivsi %c-32578_i16, %c27109_i16 : i16
      %266 = arith.shrsi %c27109_i16, %c-32578_i16 : i16
      %267 = math.powf %0, %0 : tensor<7x13x16xf32>
      %268 = affine.if affine_set<(d0, d1, d2) : (-d1 + 32 >= 0, d1 >= 0)>(%c8, %c11, %c12) -> memref<13x16xi32> {
        %inserted_47 = tensor.insert %c27109_i16 into %9[%c1] : tensor<5xi16>
        %281 = bufferization.to_memref %10 : memref<5xi1>
        %282 = math.log %0 : tensor<7x13x16xf32>
        %283 = math.floor %cst_2 : f32
        %284 = math.tanh %3 : tensor<13x16xf32>
        %285 = math.floor %cst_3 : f16
        %286 = vector.broadcast %cst_7 : f32 to vector<16xf32>
        %287 = vector.fma %286, %286, %286 : vector<16xf32>
        %288 = math.tanh %cst_0 : f16
        affine.yield %alloc_13 : memref<13x16xi32>
      } else {
        %281 = math.absi %14 : tensor<16xi1>
        %282 = index.ceildivu %c0, %c6
        %283 = math.log %cst_5 : f16
        %284 = bufferization.clone %alloc_20 : memref<5xi16> to memref<5xi16>
        %285 = vector.insert %cst_5, %19 [0] : f16 into vector<7xf16>
        %splat_47 = tensor.splat %cst_5 : tensor<16xf16>
        %286 = math.absi %7 : tensor<5xi1>
        %287 = arith.xori %c-32578_i16, %c27109_i16 : i16
        affine.yield %alloc_13 : memref<13x16xi32>
      }
      %269 = arith.minsi %c-20596_i16, %c-22643_i16 : i16
      %270 = vector.broadcast %cst_0 : f16 to vector<16xf16>
      %271 = vector.broadcast %true : i1 to vector<16xi1>
      %c1_i32 = arith.constant 1 : i32
      %272 = vector.broadcast %c1_i32 : i32 to vector<16xi32>
      %273 = vector.gather %alloc_11[%c12, %c6] [%272], %271, %270 : memref<13x16xf16>, vector<16xi32>, vector<16xi1>, vector<16xf16> into vector<16xf16>
      memref.tensor_store %7, %alloc_12 : memref<5xi1>
      %274 = math.copysign %13, %13 : tensor<7x13x16xf16>
      %275 = tensor.empty() : tensor<5xi16>
      %mapped_45 = linalg.map ins(%alloc_20, %9, %9 : memref<5xi16>, tensor<5xi16>, tensor<5xi16>) outs(%275 : tensor<5xi16>)
        (%in: i16, %in_47: i16, %in_48: i16) {
          %cst_49 = arith.constant 1.739200e+04 : f16
          %281 = math.floor %0 : tensor<7x13x16xf32>
          %282 = tensor.empty() : tensor<5xi1>
          %283 = tensor.empty(%c14) : tensor<?xi64>
          %284 = arith.xori %c-20596_i16, %c-22643_i16 : i16
          %285 = math.round %13 : tensor<7x13x16xf16>
          %286 = math.powf %cst_4, %cst_1 : f32
          %287 = vector.bitcast %24 : vector<13x16xf32> to vector<13x16xi32>
          %288 = arith.xori %c-22643_i16, %in_48 : i16
          memref.copy %alloc_18, %alloc_21 : memref<7x13x16xf16> to memref<7x13x16xf16>
          %289 = bufferization.clone %alloc_18 : memref<7x13x16xf16> to memref<7x13x16xf16>
          memref.assume_alignment %alloc_11, 2 : memref<13x16xf16>
          %290 = vector.broadcast %c1_i32 : i32 to vector<7xi32>
          %291 = vector.transfer_write %290, %11[%c9, %26] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi32>, tensor<13x16xi32>
          %292 = math.ctlz %1 : tensor<7x13x16xi32>
          %c1623958028_i64 = arith.constant 1623958028 : i64
          %293 = arith.muli %true, %true : i1
          %294 = math.exp %6 : tensor<16xf16>
          %295 = arith.maxsi %in, %c-20596_i16 : i16
          %296 = vector.bitcast %270 : vector<16xf16> to vector<16xf16>
          %297 = vector.broadcast %cst_6 : f32 to vector<7x13x16xf32>
          %298 = vector.fma %297, %297, %297 : vector<7x13x16xf32>
          %299 = math.atan %cst_3 : f16
          %300 = math.ctlz %17 : tensor<16xi1>
          %301 = vector.create_mask %c15 : vector<5xi1>
          %302 = arith.andi %in, %in_47 : i16
          %303 = index.castu %c3 : index to i32
          %304 = math.log10 %cst_2 : f32
          %305 = vector.insertelement %cst_3, %270[%c14 : index] : vector<16xf16>
          %splat_50 = tensor.splat %cst_9 : tensor<13x16xf16>
          %306 = math.roundeven %6 : tensor<16xf16>
          %307 = vector.broadcast %cst_1 : f32 to vector<5xf32>
          %308 = vector.fma %307, %307, %307 : vector<5xf32>
          %309 = vector.create_mask %c3 : vector<5xi1>
          %310 = index.maxs %c14, %c7
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      vector.print %273 : vector<16xf16>
      %276 = tensor.empty() : tensor<5xi16>
      %mapped_46 = linalg.map ins(%alloc_10, %275 : memref<5xi16>, tensor<5xi16>) outs(%276 : tensor<5xi16>)
        (%in: i16, %in_47: i16) {
          %281 = index.mul %c11, %c0
          %rank = tensor.rank %0 : tensor<7x13x16xf32>
          memref.copy %alloc, %alloc_14 : memref<16xi64> to memref<16xi64>
          %282 = arith.cmpi ult, %in, %c-22643_i16 : i16
          %283 = arith.ceildivsi %c-22643_i16, %c-32578_i16 : i16
          %284 = math.absi %c-32578_i16 : i16
          %285 = vector.broadcast %cst_8 : f16 to vector<13x16xf16>
          %splat_48 = tensor.splat %cst_1 : tensor<16xf32>
          %286 = index.castu %c8 : index to i32
          bufferization.dealloc_tensor %5 : tensor<7x13x16xi1>
          %287 = arith.minsi %in_47, %c27109_i16 : i16
          %288 = bufferization.to_tensor %alloc_13 : memref<13x16xi32>
          %289 = bufferization.clone %alloc_17 : memref<13x16xf16> to memref<13x16xf16>
          %290 = vector.broadcast %cst : f32 to vector<7x13x16xf32>
          %291 = vector.fma %290, %290, %290 : vector<7x13x16xf32>
          %292 = math.ipowi %10, %10 : tensor<5xi1>
          %293 = arith.ori %c-20596_i16, %in : i16
          memref.assume_alignment %alloc_20, 16 : memref<5xi16>
          %294 = memref.realloc %alloc_20 : memref<5xi16> to memref<13xi16>
          %295 = bufferization.clone %alloc_12 : memref<5xi1> to memref<5xi1>
          %alloc_49 = memref.alloc() : memref<16x16xi32>
          %296 = tensor.empty() : tensor<13x16xi32>
          %297 = linalg.matmul ins(%11, %alloc_49 : tensor<13x16xi32>, memref<16x16xi32>) outs(%296 : tensor<13x16xi32>) -> tensor<13x16xi32>
          %298 = math.round %splat_48 : tensor<16xf32>
          %299 = index.sub %26, %c2
          %300 = memref.realloc %alloc_16 : memref<16xi1> to memref<13xi1>
          %301 = vector.bitcast %271 : vector<16xi1> to vector<16xi1>
          %302 = vector.reduction <xor>, %301 : vector<16xi1> into i1
          %303 = affine.load %alloc_11[%c2, %c2] : memref<13x16xf16>
          %304 = math.fma %cst_8, %cst_8, %cst_8 : f16
          %305 = arith.muli %in, %c-20596_i16 : i16
          %306 = bufferization.to_memref %14 : memref<16xi1>
          %307 = math.ctlz %1 : tensor<7x13x16xi32>
          %308 = vector.extract %301[10] : vector<16xi1>
          %309 = arith.shrsi %c-22643_i16, %in : i16
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %277 = arith.ceildivsi %c-32578_i16, %c-22643_i16 : i16
      %278 = index.maxu %c8, %c15
      %279 = vector.broadcast %cst : f32 to vector<5xf32>
      %280 = vector.fma %279, %279, %279 : vector<5xf32>
      scf.yield %cst : f32
    }
    default {
      %263 = tensor.empty() : tensor<7x13x16xi32>
      %264 = arith.ceildivsi %c-32578_i16, %c-32578_i16 : i16
      %265 = index.maxu %c0, %c4
      %266 = vector.transpose %24, [1, 0] : vector<13x16xf32> to vector<16x13xf32>
      memref.copy %alloc_18, %alloc_21 : memref<7x13x16xf16> to memref<7x13x16xf16>
      %267 = index.add %c6, %c13
      %268 = vector.extract %19[2] : vector<7xf16>
      %269 = math.absi %17 : tensor<16xi1>
      %rank = tensor.rank %15 : tensor<13x16xi16>
      %270 = arith.shrsi %true, %true : i1
      %271 = index.floordivs %26, %26
      %272 = index.castu %c-22643_i16 : i16 to index
      memref.copy %alloc_17, %alloc_11 : memref<13x16xf16> to memref<13x16xf16>
      %273 = index.floordivs %c10, %c11
      %274 = scf.index_switch %c15 -> memref<5xi16> 
      case 1 {
        %alloc_45 = memref.alloc() : memref<5xi16>
        %cast_46 = tensor.cast %12 : tensor<5xi64> to tensor<?xi64>
        %276 = vector.broadcast %cst_2 : f32 to vector<5xf32>
        %277 = vector.fma %276, %276, %276 : vector<5xf32>
        %278 = vector.extract %276[1] : vector<5xf32>
        %279 = math.floor %cst_9 : f16
        %280 = index.casts %c10 : index to i32
        %281 = index.maxu %rank, %c12
        %282 = arith.cmpi ugt, %c-32578_i16, %c-20596_i16 : i16
        %283 = math.absi %15 : tensor<13x16xi16>
        %284 = arith.shli %true, %true : i1
        %285 = arith.addi %c27109_i16, %c-22643_i16 : i16
        %286 = arith.maxsi %true, %true : i1
        %287 = arith.addi %c-22643_i16, %c-22643_i16 : i16
        %288 = math.ctpop %8 : tensor<13x16xi1>
        %289 = index.mul %271, %c10
        %290 = tensor.empty() : tensor<13x16xf32>
        scf.yield %alloc_20 : memref<5xi16>
      }
      case 2 {
        %276 = vector.shuffle %24, %24 [0, 2, 3, 7, 9, 11, 12, 13, 14, 15, 16, 18, 20, 21, 23, 25] : vector<13x16xf32>, vector<13x16xf32>
        %277 = bufferization.clone %alloc_12 : memref<5xi1> to memref<5xi1>
        %278 = math.absi %4 : tensor<16xi1>
        %279 = arith.cmpi sgt, %true, %true : i1
        %280 = math.fpowi %3, %11 : tensor<13x16xf32>, tensor<13x16xi32>
        %281 = arith.divsi %true, %true : i1
        %282 = affine.load %alloc_25[%c7, %c12] : memref<16x13xf16>
        %283 = tensor.empty(%c9, %c11) : tensor<?x?x16xf32>
        %284 = arith.divsi %c-32578_i16, %c-20596_i16 : i16
        %285 = index.casts %true : i1 to index
        %286 = tensor.empty() : tensor<16xi32>
        %c1_i64_45 = arith.constant 1 : i64
        memref.store %c1_i64_45, %alloc_14[%c12] : memref<16xi64>
        %287 = math.ipowi %14, %14 : tensor<16xi1>
        memref.copy %alloc_17, %alloc_11 : memref<13x16xf16> to memref<13x16xf16>
        %c0_i32_46 = arith.constant 0 : i32
        %inserted_47 = tensor.insert %c0_i32_46 into %263[%c4, %c9, %c1] : tensor<7x13x16xi32>
        bufferization.dealloc_tensor %13 : tensor<7x13x16xf16>
        scf.yield %alloc_20 : memref<5xi16>
      }
      default {
        %276 = math.ceil %cst_7 : f32
        %277 = math.log2 %cst_2 : f32
        %c0_i32_45 = arith.constant 0 : i32
        %278 = math.fpowi %cst_7, %c0_i32_45 : f32, i32
        %inserted_46 = tensor.insert %cst_9 into %6[%c0] : tensor<16xf16>
        %279 = bufferization.clone %alloc_18 : memref<7x13x16xf16> to memref<7x13x16xf16>
        %280 = vector.broadcast %cst : f32 to vector<7x13x16xf32>
        %281 = vector.fma %280, %280, %280 : vector<7x13x16xf32>
        %alloc_47 = memref.alloc() : memref<7x13x16xi32>
        memref.tensor_store %1, %alloc_47 : memref<7x13x16xi32>
        %inserted_48 = tensor.insert %true into %16[%c4] : tensor<16xi1>
        %282 = vector.bitcast %24 : vector<13x16xf32> to vector<13x16xi32>
        %283 = index.mul %c7, %26
        %284 = arith.divsi %c0_i32_45, %c0_i32_45 : i32
        %285 = math.tanh %cst_4 : f32
        %286 = memref.realloc %alloc_16 : memref<16xi1> to memref<7xi1>
        %287 = vector.splat %c14 : vector<16xindex>
        %288 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %cst_3 : vector<7xf16>, vector<7xf16> into f16
        memref.tensor_store %14, %alloc_16 : memref<16xi1>
        scf.yield %alloc_20 : memref<5xi16>
      }
      %275 = math.sqrt %cst_6 : f32
      scf.yield %cst : f32
    }
    %28 = math.absi %20 : tensor<i1>
    %29 = vector.bitcast %19 : vector<7xf16> to vector<7xi16>
    %30 = affine.max affine_map<(d0) -> ((d0 ceildiv 16 + 8) mod 128, ((d0 ceildiv 16) ceildiv 16) mod 2, ((d0 ceildiv 16) ceildiv 16) * -2, (d0 floordiv 2) floordiv 8)>(%c2)
    %31 = scf.while (%arg3 = %true) : (i1) -> i1 {
      %extracted_45 = tensor.extract %14[%c10] : tensor<16xi1>
      %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %19, %cst_3 : vector<7xf16>, vector<7xf16> into f16
      %264 = arith.negf %cst_0 : f16
      %265 = tensor.empty() : tensor<7x13x16xf32>
      %generated_46 = tensor.generate %c14 {
      ^bb0(%arg4: index):
        %268 = arith.shli %c-22643_i16, %c27109_i16 : i16
        memref.copy %alloc_10, %alloc_20 : memref<5xi16> to memref<5xi16>
        %269 = index.add %c2, %arg4
        %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %19, %19, %cst_5 : vector<7xf16>, vector<7xf16> into f16
        %c1_i32 = arith.constant 1 : i32
        tensor.yield %c1_i32 : i32
      } : tensor<?xi32>
      bufferization.dealloc_tensor %15 : tensor<13x16xi16>
      %266 = index.mul %c13, %c9
      %267 = arith.maxf %cst_9, %cst_8 : f16
      scf.condition(%extracted_45) %true : i1
    } do {
    ^bb0(%arg3: i1):
      %263 = arith.shli %c-20596_i16, %c27109_i16 : i16
      %264 = vector.insertelement %c-32578_i16, %29[%c13 : index] : vector<7xi16>
      %265 = math.log10 %cst_5 : f16
      %266 = arith.ori %c-22643_i16, %c27109_i16 : i16
      affine.for %arg4 = 0 to 81 {
      }
      %splat_45 = tensor.splat %c-20596_i16 : tensor<7x13x16xi16>
      %267 = bufferization.clone %alloc_10 : memref<5xi16> to memref<5xi16>
      %268 = arith.minui %c-22643_i16, %c-20596_i16 : i16
      scf.if %true {
        %273 = index.maxs %c4, %c1
        %274 = math.atan %cst_7 : f32
        %275 = math.ceil %6 : tensor<16xf16>
        %alloc_48 = memref.alloc() : memref<5xi64>
        %276 = vector.extract %24[5] : vector<13x16xf32>
        %277 = math.ipowi %1, %1 : tensor<7x13x16xi32>
        %278 = vector.transpose %24, [0, 1] : vector<13x16xf32> to vector<13x16xf32>
        %279 = vector.matrix_multiply %29, %29 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<7xi16>) -> vector<1xi16>
      } else {
        %273 = vector.bitcast %23 : vector<13x16xf32> to vector<13x16xf32>
        %274 = arith.floordivsi %c27109_i16, %c-32578_i16 : i16
        %275 = index.add %c0, %c2
        %cast_48 = tensor.cast %14 : tensor<16xi1> to tensor<?xi1>
        %276 = bufferization.to_memref %splat_45 : memref<7x13x16xi16>
        %277 = index.ceildivs %c10, %c4
        %278 = arith.addi %arg3, %arg3 : i1
        %279 = arith.cmpf ueq, %cst_9, %cst_3 : f16
      }
      %generated_46 = tensor.generate %c14 {
      ^bb0(%arg4: index):
        %true_48 = index.bool.constant true
        %273 = bufferization.clone %alloc_21 : memref<7x13x16xf16> to memref<7x13x16xf16>
        vector.print %23 : vector<13x16xf32>
        %274 = index.ceildivs %c4, %c7
        tensor.yield %c-32578_i16 : i16
      } : tensor<?xi16>
      %269 = arith.shli %c27109_i16, %c-20596_i16 : i16
      %270 = math.log %cst : f32
      %271 = math.exp2 %13 : tensor<7x13x16xf16>
      %272 = math.exp %cst_9 : f16
      memref.tensor_store %14, %alloc_16 : memref<16xi1>
      %generated_47 = tensor.generate %c0 {
      ^bb0(%arg4: index):
        %273 = math.atan2 %cst_9, %cst_9 : f16
        %274 = bufferization.to_tensor %alloc_18 : memref<7x13x16xf16>
        %275 = vector.broadcast %cst_6 : f32 to vector<16xf32>
        %dest_48, %accumulated_value_49 = vector.scan <mul>, %24, %275 {inclusive = false, reduction_dim = 0 : i64} : vector<13x16xf32>, vector<16xf32>
        %276 = math.sqrt %cst_1 : f32
        %c1_i64_50 = arith.constant 1 : i64
        tensor.yield %c1_i64_50 : i64
      } : tensor<?xi64>
      scf.yield %arg3 : i1
    }
    %32 = vector.extract %29[2] : vector<7xi16>
    %33 = vector.insert %c27109_i16, %29 [0] : i16 into vector<7xi16>
    %34 = index.mul %c2, %c5
    memref.tensor_store %4, %alloc_16 : memref<16xi1>
    %35 = math.exp2 %cst_2 : f32
    %36 = math.ctpop %true : i1
    %37 = vector.extract %19[6] : vector<7xf16>
    %38 = vector.broadcast %cst_9 : f16 to vector<16xf16>
    %39 = vector.broadcast %true : i1 to vector<16xi1>
    %c0_i32 = arith.constant 0 : i32
    %40 = vector.broadcast %c0_i32 : i32 to vector<16xi32>
    %41 = vector.gather %alloc_17[%c13, %30] [%40], %39, %38 : memref<13x16xf16>, vector<16xi32>, vector<16xi1>, vector<16xf16> into vector<16xf16>
    %42 = math.ipowi %c-22643_i16, %c-22643_i16 : i16
    %43 = vector.broadcast %cst_2 : f32 to vector<7x13x16xf32>
    %44 = vector.fma %43, %43, %43 : vector<7x13x16xf32>
    %45 = math.rsqrt %3 : tensor<13x16xf32>
    %46 = math.round %cst_8 : f16
    %47 = vector.broadcast %c0_i32 : i32 to vector<i32>
    %48 = vector.transfer_write %47, %1[%c6, %c1, %c1] : vector<i32>, tensor<7x13x16xi32>
    %49 = arith.divsi %c27109_i16, %c-22643_i16 : i16
    %50 = vector.broadcast %cst_2 : f32 to vector<13x16xf32>
    %51 = vector.fma %50, %23, %50 : vector<13x16xf32>
    %52 = scf.index_switch %c13 -> i16 
    case 1 {
      %263 = math.absi %1 : tensor<7x13x16xi32>
      %264 = bufferization.clone %alloc_13 : memref<13x16xi32> to memref<13x16xi32>
      %265 = tensor.empty() : tensor<5xf16>
      %266 = arith.maxsi %c-20596_i16, %c27109_i16 : i16
      %267 = affine.min affine_map<(d0, d1) -> (d0)>(%26, %c4)
      memref.alloca_scope  {
        %277 = arith.xori %c0_i32, %c0_i32 : i32
        %278 = bufferization.to_memref %13 : memref<7x13x16xf16>
        %279 = math.floor %cst_3 : f16
        %collapsed_45 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<7x13x16xf32> into tensor<91x16xf32>
        %alloca = memref.alloca() : memref<13x16xi1>
        %280 = vector.broadcast %c27109_i16 : i16 to vector<7x7xi16>
        %281 = vector.outerproduct %29, %29, %280 {kind = #vector.kind<maxui>} : vector<7xi16>, vector<7xi16>
        %282 = index.add %c3, %c11
        %283 = vector.broadcast %true : i1 to vector<7xi1>
        %284 = vector.maskedload %alloc_21[%c4, %c12, %c0], %283, %19 : memref<7x13x16xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %285 = arith.cmpf olt, %cst_9, %cst_5 : f16
        %286 = index.mul %26, %26
        %287 = math.fma %13, %13, %13 : tensor<7x13x16xf16>
        %288 = affine.load %alloc_18[%c9, %c7, %c11] : memref<7x13x16xf16>
        %289 = index.ceildivs %267, %c7
        %290 = index.divu %c13, %c14
        %291 = math.powf %3, %3 : tensor<13x16xf32>
        %292 = tensor.empty() : tensor<7x13x16xi16>
        %293 = math.powf %cst_3, %cst_5 : f16
        %294 = math.rsqrt %265 : tensor<5xf16>
        %from_elements_46 = tensor.from_elements %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32 : tensor<13x16xi32>
        %295 = math.exp %13 : tensor<7x13x16xf16>
        %296 = math.tanh %cst_7 : f32
        %297 = math.copysign %cst_4, %cst_4 : f32
        %298 = vector.bitcast %29 : vector<7xi16> to vector<7xi16>
        %299 = vector.extract %19[0] : vector<7xf16>
        %300 = math.expm1 %cst_9 : f16
        %301 = math.log10 %cst_5 : f16
        %302 = arith.floordivsi %c-32578_i16, %c27109_i16 : i16
        %303 = bufferization.clone %alloc_18 : memref<7x13x16xf16> to memref<7x13x16xf16>
        %304 = math.log10 %cst_0 : f16
        %splat_47 = tensor.splat %c27109_i16 : tensor<13x16xi16>
        affine.store %true, %alloc_26[%c4] : memref<5xi1>
        %305 = math.floor %cst_1 : f32
      }
      %268 = index.sub %c14, %c0
      %269 = bufferization.to_memref %12 : memref<5xi64>
      %270 = math.round %cst_9 : f16
      %271 = math.exp2 %265 : tensor<5xf16>
      %272 = affine.load %alloc_10[%c8] : memref<5xi16>
      %273 = math.absi %7 : tensor<5xi1>
      %274 = index.floordivs %c7, %c10
      memref.alloca_scope  {
        %277 = index.sub %c7, %c1
        %278 = math.expm1 %cst_8 : f16
        %279 = arith.shrui %c-20596_i16, %c27109_i16 : i16
        %280 = vector.bitcast %51 : vector<13x16xf32> to vector<13x16xf32>
        %cst_45 = arith.constant 4.966400e+04 : f16
        memref.store %cst_3, %alloc_25[%c11, %c12] : memref<16x13xf16>
        %281 = vector.shuffle %40, %40 [1, 4, 6, 8, 9, 10, 12, 15, 16, 18, 19, 20, 21, 22, 23, 25, 28, 29, 30, 31] : vector<16xi32>, vector<16xi32>
        bufferization.dealloc_tensor %4 : tensor<16xi1>
        %282 = math.ceil %6 : tensor<16xf16>
        vector.print %40 : vector<16xi32>
        %283 = math.ctlz %2 : tensor<13x16xi16>
        %284 = math.exp2 %cst_1 : f32
        %285 = math.ceil %cst_9 : f16
        %286 = index.maxs %c6, %c4
        %287 = arith.muli %true, %true : i1
        %288 = arith.minui %c-22643_i16, %272 : i16
        %289 = math.tanh %6 : tensor<16xf16>
        %290 = math.tanh %cst_5 : f16
        %291 = math.ipowi %c27109_i16, %272 : i16
        %292 = vector.bitcast %280 : vector<13x16xf32> to vector<13x16xf32>
        %293 = math.absi %c27109_i16 : i16
        %294 = vector.broadcast %cst_7 : f32 to vector<f32>
        %295 = vector.transfer_write %294, %3[%277, %286] : vector<f32>, tensor<13x16xf32>
        %296 = vector.broadcast %true : i1 to vector<i1>
        %297 = vector.transfer_write %296, %10[%267] : vector<i1>, tensor<5xi1>
        %298 = arith.addf %cst_2, %cst_6 : f32
        %299 = arith.maxsi %c-22643_i16, %c-22643_i16 : i16
        bufferization.dealloc_tensor %8 : tensor<13x16xi1>
        %300 = math.rsqrt %0 : tensor<7x13x16xf32>
        %301 = index.ceildivu %c4, %26
        %302 = bufferization.to_memref %0 : memref<7x13x16xf32>
        %303 = index.maxu %267, %274
        %304 = bufferization.clone %alloc_18 : memref<7x13x16xf16> to memref<7x13x16xf16>
        %305 = arith.floordivsi %true, %true : i1
      }
      %275 = arith.shrui %c-22643_i16, %c27109_i16 : i16
      %276 = math.log %cst_4 : f32
      scf.yield %c27109_i16 : i16
    }
    case 2 {
      %263 = affine.min affine_map<(d0, d1, d2) -> (d0 + 8, d1 mod 64 - (-d1) ceildiv 128, d0 floordiv 32)>(%c14, %26, %c14)
      %264 = vector.insert %c0_i32, %40 [11] : i32 into vector<16xi32>
      %alloc_45 = memref.alloc() : memref<13x16xi32>
      memref.copy %alloc_13, %alloc_45 : memref<13x16xi32> to memref<13x16xi32>
      %265 = math.powf %cst_9, %cst_0 : f16
      %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %39, %39, %true : vector<16xi1>, vector<16xi1> into i1
      %267 = math.ipowi %18, %reduced : tensor<16xi16>
      %268 = vector.transpose %43, [2, 0, 1] : vector<7x13x16xf32> to vector<16x7x13xf32>
      %269 = math.absf %cst_1 : f32
      %270 = memref.atomic_rmw muli %c0_i32, %alloc_22[%c9] : (i32, memref<16xi32>) -> i32
      %271 = arith.cmpi slt, %c-22643_i16, %c27109_i16 : i16
      %272 = math.ipowi %4, %4 : tensor<16xi1>
      %c-19272_i16 = arith.constant -19272 : i16
      %273 = math.ipowi %12, %12 : tensor<5xi64>
      %274 = index.ceildivu %c10, %c13
      %275 = tensor.empty() : tensor<16x16xi16>
      %276 = tensor.empty() : tensor<13x16xi16>
      %277 = linalg.matmul ins(%15, %275 : tensor<13x16xi16>, tensor<16x16xi16>) outs(%276 : tensor<13x16xi16>) -> tensor<13x16xi16>
      %278 = arith.remf %cst_0, %cst_5 : f16
      scf.yield %c-20596_i16 : i16
    }
    default {
      %263 = math.powf %cst_0, %cst_0 : f16
      %264 = arith.cmpf ogt, %cst_9, %cst_9 : f16
      %265 = arith.shrsi %c0_i32, %c0_i32 : i32
      %266 = arith.ori %c-22643_i16, %c-22643_i16 : i16
      %from_elements_45 = tensor.from_elements %c27109_i16, %c-22643_i16, %c-32578_i16, %c-20596_i16, %c-20596_i16, %c-20596_i16, %c-32578_i16, %c27109_i16, %c-22643_i16, %c27109_i16, %c-32578_i16, %c-20596_i16, %c-32578_i16, %c-22643_i16, %c27109_i16, %c-22643_i16 : tensor<16xi16>
      %267 = vector.bitcast %51 : vector<13x16xf32> to vector<13x16xf32>
      %268 = affine.if affine_set<(d0) : (0 >= 0, -d0 >= 0, d0 * 32 - 8 >= 0)>(%c11) -> memref<13x16xi64> {
        %276 = memref.realloc %alloc_12 : memref<5xi1> to memref<7xi1>
        %277 = tensor.empty(%c1, %c8) : tensor<?x?xi32>
        %278 = index.ceildivs %c12, %c10
        %279 = vector.matrix_multiply %38, %19 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 7 : i32} : (vector<16xf16>, vector<7xf16>) -> vector<112xf16>
        %280 = arith.muli %c-22643_i16, %c-20596_i16 : i16
        %281 = math.sqrt %13 : tensor<7x13x16xf16>
        %282 = math.expm1 %cst_7 : f32
        %283 = arith.shli %c-20596_i16, %c-20596_i16 : i16
        affine.yield %alloc_24 : memref<13x16xi64>
      } else {
        %276 = index.maxu %c8, %26
        %277 = vector.transpose %43, [0, 1, 2] : vector<7x13x16xf32> to vector<7x13x16xf32>
        %278 = arith.negf %cst_7 : f32
        %279 = arith.maxsi %c-32578_i16, %c-22643_i16 : i16
        %280 = math.atan %cst : f32
        %281 = index.divu %c5, %30
        %282 = math.ipowi %reduced, %reduced : tensor<16xi16>
        %283 = index.mul %c1, %c14
        affine.yield %alloc_24 : memref<13x16xi64>
      }
      memref.copy %alloc_12, %alloc_26 : memref<5xi1> to memref<5xi1>
      %269 = arith.maxsi %c-32578_i16, %c-22643_i16 : i16
      %alloc_46 = memref.alloc() : memref<16xi1>
      %270 = index.mul %34, %c1
      %271 = vector.create_mask %c9, %c5 : vector<13x16xi1>
      %272 = tensor.empty() : tensor<13x16xi64>
      %273 = arith.maxf %cst, %cst : f32
      %274 = math.ceil %6 : tensor<16xf16>
      %275 = affine.if affine_set<(d0, d1) : ((d0 ceildiv 128) floordiv 64 >= 0, d0 ceildiv 128 + d1 + d0 ceildiv 128 - d0 == 0)>(%c2, %c4) -> memref<16xi32> {
        %276 = vector.broadcast %cst_1 : f32 to vector<16xf32>
        %277 = vector.insert %276, %50 [6] : vector<16xf32> into vector<13x16xf32>
        %rank = tensor.rank %from_elements_45 : tensor<16xi16>
        %alloc_47 = memref.alloc() : memref<16xi1>
        memref.copy %alloc_16, %alloc_47 : memref<16xi1> to memref<16xi1>
        %inserted_48 = tensor.insert %c-22643_i16 into %9[%c0] : tensor<5xi16>
        %278 = math.fpowi %cst_0, %c0_i32 : f16, i32
        %279 = index.divu %c2, %c4
        %280 = index.floordivs %c0, %c14
        memref.assume_alignment %alloc_22, 16 : memref<16xi32>
        affine.yield %alloc_22 : memref<16xi32>
      } else {
        %276 = math.roundeven %cst_1 : f32
        %277 = math.log1p %13 : tensor<7x13x16xf16>
        %278 = index.divs %c6, %30
        %279 = tensor.empty() : tensor<7x13x16xi16>
        %280 = index.divs %30, %c4
        %281 = affine.min affine_map<(d0, d1, d2) -> (d2 - 64, ((d2 - 64) mod 128) * 2, d1, d2 - d1 - 64)>(%c0, %26, %c5)
        %282 = bufferization.to_memref %17 : memref<16xi1>
        %283 = math.roundeven %cst_1 : f32
        affine.yield %alloc_22 : memref<16xi32>
      }
      scf.yield %c-32578_i16 : i16
    }
    %53 = math.cos %cst_0 : f16
    %54 = arith.shrsi %true, %true : i1
    %55 = arith.shrsi %c-22643_i16, %c-22643_i16 : i16
    %56 = index.castu %c0_i32 : i32 to index
    %57 = math.roundeven %cst_5 : f16
    %58 = arith.shrsi %c-32578_i16, %c-32578_i16 : i16
    %59 = index.mul %30, %c0
    %cst_27 = arith.constant 0x4E2A973F : f32
    scf.index_switch %c14 
    case 1 {
      %263 = bufferization.to_memref %4 : memref<16xi1>
      %264 = index.ceildivu %c0, %59
      %265 = arith.xori %c-22643_i16, %c27109_i16 : i16
      %266 = math.rsqrt %0 : tensor<7x13x16xf32>
      %267 = index.add %c12, %c7
      %268 = math.ceil %cst_7 : f32
      %269 = tensor.empty() : tensor<13x16xf16>
      %270 = affine.for %arg3 = 0 to 118 iter_args(%arg4 = %alloc_17) -> (memref<13x16xf16>) {
        affine.yield %arg4 : memref<13x16xf16>
      }
      %271 = affine.if affine_set<(d0, d1, d2) : (d2 * 8 == 0, d2 * 8 == 0, d1 mod 4 >= 0)>(%c5, %c13, %c4) -> f32 {
        %279 = vector.insertelement %c0_i32, %40[%c8 : index] : vector<16xi32>
        %280 = bufferization.clone %alloc_14 : memref<16xi64> to memref<16xi64>
        %281 = vector.broadcast %cst_1 : f32 to vector<16xf32>
        %282 = vector.insert %281, %44 [0, 1] : vector<16xf32> into vector<7x13x16xf32>
        %283 = vector.shuffle %23, %51 [3, 4, 5, 7, 8, 9, 11, 13, 15, 16, 18, 19, 20, 24] : vector<13x16xf32>, vector<13x16xf32>
        memref.tensor_store %10, %alloc_26 : memref<5xi1>
        %284 = arith.cmpf uge, %cst_0, %cst_5 : f16
        %285 = vector.broadcast %c27109_i16 : i16 to vector<16xi16>
        %286 = arith.addi %c-32578_i16, %c-20596_i16 : i16
        affine.yield %cst_1 : f32
      } else {
        vector.print %29 : vector<7xi16>
        %279 = bufferization.to_tensor %alloc_15 : memref<13x16xi1>
        %280 = arith.maxf %cst_9, %cst_0 : f16
        %281 = vector.reduction <minui>, %39 : vector<16xi1> into i1
        %282 = math.copysign %cst_7, %cst_7 : f32
        %283 = arith.floordivsi %c-20596_i16, %c-32578_i16 : i16
        %284 = math.ceil %cst_3 : f16
        %285 = vector.reduction <minui>, %39 : vector<16xi1> into i1
        affine.yield %cst_6 : f32
      }
      %272 = math.log1p %0 : tensor<7x13x16xf32>
      %273 = index.sub %c0, %c10
      %274 = math.round %cst_9 : f16
      %275 = vector.matrix_multiply %38, %19 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 7 : i32} : (vector<16xf16>, vector<7xf16>) -> vector<112xf16>
      %276 = arith.minui %c0_i32, %c0_i32 : i32
      %277 = math.rsqrt %cst : f32
      %278 = arith.maxf %cst_1, %cst : f32
      scf.yield
    }
    case 2 {
      %splat_45 = tensor.splat %c-32578_i16 : tensor<13x16xi16>
      %263 = index.castu %c-20596_i16 : i16 to index
      %264 = bufferization.to_tensor %alloc_16 : memref<16xi1>
      %265 = math.exp2 %13 : tensor<7x13x16xf16>
      %266 = math.ceil %6 : tensor<16xf16>
      %267 = vector.extract %51[3] : vector<13x16xf32>
      %268 = scf.while (%arg3 = %40) : (vector<16xi32>) -> vector<16xi32> {
        %c1_i64_46 = arith.constant 1 : i64
        %c0_i64_47 = arith.constant 0 : i64
        %277 = vector.transfer_read %12[%56], %c0_i64_47 : tensor<5xi64>, vector<i64>
        %278 = math.exp %6 : tensor<16xf16>
        vector.print %39 : vector<16xi1>
        %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %39, %39, %true : vector<16xi1>, vector<16xi1> into i1
        %280 = index.mul %c1, %c15
        %281 = index.floordivs %30, %c11
        %282 = arith.maxf %cst_0, %cst_8 : f16
        %283 = index.ceildivu %c14, %c9
        scf.condition(%true) %40 : vector<16xi32>
      } do {
      ^bb0(%arg3: vector<16xi32>):
        %277 = bufferization.to_memref %14 : memref<16xi1>
        %278 = arith.remf %cst_7, %cst_4 : f32
        %279 = math.log %cst_4 : f32
        %rank = tensor.rank %12 : tensor<5xi64>
        %280 = vector.broadcast %cst : f32 to vector<5xf32>
        %281 = vector.fma %280, %280, %280 : vector<5xf32>
        %282 = arith.shli %c27109_i16, %c27109_i16 : i16
        %283 = vector.multi_reduction <mul>, %29, %29 [] : vector<7xi16> to vector<7xi16>
        %284 = index.mul %34, %c9
        %285 = arith.maxui %c-22643_i16, %c-20596_i16 : i16
        %286 = bufferization.clone %alloc_25 : memref<16x13xf16> to memref<16x13xf16>
        %rank_46 = tensor.rank %reduced : tensor<16xi16>
        %c2141715961_i32 = arith.constant 2141715961 : i32
        %287 = math.powf %cst_7, %cst : f32
        %288 = math.ceil %3 : tensor<13x16xf32>
        %rank_47 = tensor.rank %2 : tensor<13x16xi16>
        %c1_i64_48 = arith.constant 1 : i64
        memref.store %c1_i64_48, %alloc_24[%c5, %c9] : memref<13x16xi64>
        scf.yield %40 : vector<16xi32>
      }
      %269 = index.castu %c-22643_i16 : i16 to index
      %270 = bufferization.clone %alloc : memref<16xi64> to memref<16xi64>
      %271 = math.ctpop %16 : tensor<16xi1>
      %272 = scf.while (%arg3 = %24) : (vector<13x16xf32>) -> vector<13x16xf32> {
        %277 = vector.broadcast %c-20596_i16 : i16 to vector<i16>
        %278 = vector.transfer_write %277, %9[%30] : vector<i16>, tensor<5xi16>
        %279 = math.round %cst_7 : f32
        %280 = affine.apply affine_map<(d0) -> (-d0)>(%c12)
        %281 = math.exp2 %13 : tensor<7x13x16xf16>
        %splat_46 = tensor.splat %cst_4 : tensor<16xf32>
        %282 = bufferization.to_memref %splat_45 : memref<13x16xi16>
        %283 = vector.reduction <maxf>, %41 : vector<16xf16> into f16
        %284 = index.ceildivu %c0, %c3
        scf.condition(%true) %51 : vector<13x16xf32>
      } do {
      ^bb0(%arg3: vector<13x16xf32>):
        %277 = vector.broadcast %cst_4 : f32 to vector<13x16xf32>
        %278 = vector.fma %277, %277, %51 : vector<13x16xf32>
        %279 = vector.broadcast %cst : f32 to vector<16x16xf32>
        %280 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %50, %50, %279 : vector<13x16xf32>, vector<13x16xf32> into vector<16x16xf32>
        %281 = math.exp2 %cst_7 : f32
        %282 = vector.reduction <maxf>, %38 : vector<16xf16> into f16
        %283 = arith.negf %cst_7 : f32
        %284 = math.log2 %cst_9 : f16
        %285 = math.atan %cst_7 : f32
        %286 = arith.minsi %c0_i32, %c0_i32 : i32
        %287 = vector.broadcast %true : i1 to vector<5xi1>
        %288 = vector.transfer_write %287, %5[%c5, %56, %c4] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xi1>, tensor<7x13x16xi1>
        %alloc_46 = memref.alloc() : memref<16xf32>
        %289 = vector.broadcast %true : i1 to vector<13x16xi1>
        %290 = vector.broadcast %c0_i32 : i32 to vector<13x16xi32>
        %291 = vector.gather %alloc_46[%c5] [%290], %289, %51 : memref<16xf32>, vector<13x16xi32>, vector<13x16xi1>, vector<13x16xf32> into vector<13x16xf32>
        memref.assume_alignment %alloc_46, 8 : memref<16xf32>
        %292 = math.fma %cst_9, %cst_3, %cst_9 : f16
        %293 = vector.insert %267, %51 [11] : vector<16xf32> into vector<13x16xf32>
        %294 = vector.reduction <add>, %267 : vector<16xf32> into f32
        %295 = index.floordivs %30, %c15
        %296 = index.mul %295, %c2
        scf.yield %51 : vector<13x16xf32>
      }
      %273 = vector.insert %267, %24 [2] : vector<16xf32> into vector<13x16xf32>
      %274 = vector.splat %cst_7 : vector<13x16xf32>
      memref.tensor_store %14, %alloc_16 : memref<16xi1>
      %275 = vector.insert %true, %39 [2] : i1 into vector<16xi1>
      %276 = vector.insertelement %c0_i32, %47[] : vector<i32>
      scf.yield
    }
    default {
      %263 = scf.index_switch %30 -> index 
      case 1 {
        %274 = vector.extract %19[4] : vector<7xf16>
        %275 = index.mul %c14, %59
        %276 = index.ceildivs %c12, %c5
        %277 = math.ctlz %7 : tensor<5xi1>
        %278 = bufferization.to_memref %7 : memref<5xi1>
        %279 = index.sub %c6, %c10
        %extracted_51 = tensor.extract %13[%c2, %c7, %c14] : tensor<7x13x16xf16>
        %280 = math.absi %c0_i32 : i32
        %rank = tensor.rank %3 : tensor<13x16xf32>
        %c93327979_i64 = arith.constant 93327979 : i64
        %281 = affine.min affine_map<(d0) -> (0, 0, 0, 0)>(%c14)
        %282 = math.powf %cst, %cst_6 : f32
        %283 = index.castu %c0_i32 : i32 to index
        %284 = vector.matrix_multiply %38, %38 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf16>, vector<16xf16>) -> vector<1xf16>
        %rank_52 = tensor.rank %0 : tensor<7x13x16xf32>
        %285 = arith.floordivsi %c0_i32, %c0_i32 : i32
        scf.yield %c3 : index
      }
      case 2 {
        %c0_i16 = arith.constant 0 : i16
        %274 = vector.transfer_read %reduced[%c13], %c0_i16 : tensor<16xi16>, vector<i16>
        %275 = arith.floordivsi %true, %true : i1
        %276 = math.ipowi %12, %12 : tensor<5xi64>
        %277 = arith.shrsi %c0_i16, %c-22643_i16 : i16
        %278 = index.floordivs %c13, %c2
        %279 = math.roundeven %cst_8 : f16
        %280 = vector.broadcast %cst_2 : f32 to vector<7x13x16xf32>
        %281 = vector.matrix_multiply %29, %29 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi16>, vector<7xi16>) -> vector<1xi16>
        %282 = index.divu %c2, %59
        %283 = arith.remsi %c27109_i16, %c-32578_i16 : i16
        %c0_i64_51 = arith.constant 0 : i64
        %inserted_52 = tensor.insert %c0_i64_51 into %12[%c4] : tensor<5xi64>
        %284 = vector.broadcast %cst_2 : f32 to vector<16xf32>
        %285 = vector.fma %284, %284, %284 : vector<16xf32>
        %286 = arith.remf %cst_8, %cst_9 : f16
        %287 = vector.bitcast %41 : vector<16xf16> to vector<16xf16>
        %288 = vector.insertelement %cst_4, %284[%59 : index] : vector<16xf32>
        %289 = vector.broadcast %c-32578_i16 : i16 to vector<5xi16>
        %290 = vector.transfer_write %289, %2[%c8, %c1] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xi16>, tensor<13x16xi16>
        scf.yield %c5 : index
      }
      default {
        %274 = bufferization.to_memref %3 : memref<13x16xf32>
        %275 = vector.broadcast %true : i1 to vector<7xi1>
        %276 = vector.maskedload %alloc_17[%c8, %c8], %275, %19 : memref<13x16xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %277 = index.divs %c14, %c1
        %278 = arith.muli %true, %true : i1
        %279 = affine.min affine_map<(d0, d1, d2) -> (d2)>(%56, %c7, %c8)
        %splat_51 = tensor.splat %true : tensor<5xi1>
        %280 = affine.max affine_map<(d0, d1, d2, d3) -> (0, d2, d2)>(%56, %56, %c8, %c0)
        %281 = math.exp2 %cst_7 : f32
        %282 = arith.remsi %c-22643_i16, %c-22643_i16 : i16
        %283 = vector.insert %cst_0, %19 [1] : f16 into vector<7xf16>
        %284 = index.mul %26, %c14
        %285 = index.ceildivu %56, %c0
        %286 = affine.min affine_map<(d0, d1) -> (d1 + 4, d0)>(%c9, %c4)
        memref.store %cst_4, %274[%c8, %c4] : memref<13x16xf32>
        %287 = vector.broadcast %cst_3 : f16 to vector<7x13x16xf16>
        %288 = math.log10 %6 : tensor<16xf16>
        scf.yield %284 : index
      }
      %264 = scf.if %true -> (f32) {
        %274 = arith.muli %c-32578_i16, %c-32578_i16 : i16
        %275 = vector.flat_transpose %29 {columns = 7 : i32, rows = 1 : i32} : vector<7xi16> -> vector<7xi16>
        %276 = math.copysign %cst_5, %cst_5 : f16
        %277 = index.floordivs %c11, %c7
        %278 = arith.cmpf olt, %cst_6, %cst_6 : f32
        %279 = vector.insertelement %c-32578_i16, %29[%c0 : index] : vector<7xi16>
        %280 = math.ipowi %10, %7 : tensor<5xi1>
        %281 = math.ipowi %8, %8 : tensor<13x16xi1>
        scf.yield %cst_7 : f32
      } else {
        %274 = index.sub %c9, %c13
        %275 = arith.shrui %c-22643_i16, %c-20596_i16 : i16
        %276 = bufferization.to_memref %13 : memref<7x13x16xf16>
        %277 = index.maxs %c15, %c8
        %278 = math.ipowi %4, %4 : tensor<16xi1>
        %279 = arith.andi %c27109_i16, %c-22643_i16 : i16
        %280 = vector.broadcast %cst_7 : f32 to vector<5x13xf32>
        %281 = vector.transfer_write %280, %0[%c13, %c2, %c8] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<5x13xf32>, tensor<7x13x16xf32>
        %282 = arith.cmpf ugt, %cst_5, %cst_9 : f16
        scf.yield %cst_6 : f32
      }
      %265 = scf.if %true -> (i64) {
        memref.assume_alignment %alloc, 2 : memref<16xi64>
        %274 = math.powf %264, %cst : f32
        %275 = arith.shrsi %c-22643_i16, %c27109_i16 : i16
        %276 = index.maxs %c3, %c8
        %277 = vector.broadcast %264 : f32 to vector<7x16xf32>
        %dest_51, %accumulated_value_52 = vector.scan <maxf>, %43, %277 {inclusive = true, reduction_dim = 1 : i64} : vector<7x13x16xf32>, vector<7x16xf32>
        %278 = vector.extract %44[0] : vector<7x13x16xf32>
        %279 = vector.transpose %51, [0, 1] : vector<13x16xf32> to vector<13x16xf32>
        %280 = index.divu %34, %c12
        %c0_i64_53 = arith.constant 0 : i64
        scf.yield %c0_i64_53 : i64
      } else {
        %274 = math.round %cst : f32
        %275 = math.roundeven %cst : f32
        %cast_51 = tensor.cast %12 : tensor<5xi64> to tensor<?xi64>
        %276 = math.rsqrt %cst_1 : f32
        %277 = arith.shrsi %c27109_i16, %c27109_i16 : i16
        %278 = index.ceildivs %c6, %c6
        %279 = bufferization.clone %alloc_19 : memref<5xf16> to memref<5xf16>
        %280 = index.maxu %c14, %26
        %c0_i64_52 = arith.constant 0 : i64
        scf.yield %c0_i64_52 : i64
      }
      %alloc_45 = memref.alloc() : memref<13x16xi16>
      memref.tensor_store %15, %alloc_45 : memref<13x16xi16>
      %266 = math.powf %0, %0 : tensor<7x13x16xf32>
      %267 = math.ipowi %5, %5 : tensor<7x13x16xi1>
      %extracted_46 = tensor.extract %11[%c6, %c4] : tensor<13x16xi32>
      %268 = index.divs %34, %c14
      %alloca = memref.alloca() : memref<16xi1>
      %269 = arith.muli %265, %265 : i64
      %270 = vector.broadcast %264 : f32 to vector<13xf32>
      %dest_47, %accumulated_value_48 = vector.scan <minf>, %50, %270 {inclusive = false, reduction_dim = 1 : i64} : vector<13x16xf32>, vector<13xf32>
      %alloc_49 = memref.alloc() : memref<16xi32>
      memref.copy %alloc_22, %alloc_49 : memref<16xi32> to memref<16xi32>
      %271 = math.floor %0 : tensor<7x13x16xf32>
      %272 = arith.divsi %265, %265 : i64
      %273 = index.ceildivs %c8, %c11
      %alloc_50 = memref.alloc() : memref<7x13x16xi64>
    }
    %60 = bufferization.clone %alloc_26 : memref<5xi1> to memref<5xi1>
    %61 = arith.xori %true, %true : i1
    %62 = vector.insertelement %cst_8, %41[%c9 : index] : vector<16xf16>
    %63 = math.powf %cst, %cst_4 : f32
    %64 = tensor.empty() : tensor<13x16xf32>
    %65 = vector.bitcast %38 : vector<16xf16> to vector<16xf16>
    %66 = tensor.empty() : tensor<16xi16>
    %mapped = linalg.map ins(%reduced, %18 : tensor<16xi16>, tensor<16xi16>) outs(%66 : tensor<16xi16>)
      (%in: i16, %in_45: i16) {
        memref.assume_alignment %alloc_11, 16 : memref<13x16xf16>
        %263 = math.ctlz %7 : tensor<5xi1>
        %264 = bufferization.clone %alloc_13 : memref<13x16xi32> to memref<13x16xi32>
        %265 = math.rsqrt %cst_8 : f16
        %266 = arith.addf %cst_9, %cst_9 : f16
        %267 = arith.xori %c-32578_i16, %c27109_i16 : i16
        %268 = tensor.empty() : tensor<13x16xi32>
        %mapped_46 = linalg.map ins(%alloc_13, %264, %alloc_13 : memref<13x16xi32>, memref<13x16xi32>, memref<13x16xi32>) outs(%268 : tensor<13x16xi32>)
          (%in_49: i32, %in_50: i32, %in_51: i32) {
            %292 = arith.ori %c0_i32, %c0_i32 : i32
            %293 = vector.splat %c2 : vector<7x13x16xindex>
            %294 = index.maxs %c0, %c5
            %295 = index.floordivs %34, %c12
            %296 = vector.extract %39[15] : vector<16xi1>
            %297 = math.ctlz %2 : tensor<13x16xi16>
            %298 = math.atan %13 : tensor<7x13x16xf16>
            %299 = index.divs %c8, %c3
            %300 = vector.broadcast %in_51 : i32 to vector<i32>
            vector.transfer_write %300, %alloc_22[%c8] : vector<i32>, memref<16xi32>
            %301 = math.ctlz %11 : tensor<13x16xi32>
            %302 = math.log1p %cst_3 : f16
            %303 = arith.minui %in_51, %c0_i32 : i32
            %304 = index.ceildivu %c15, %c0
            %305 = vector.matrix_multiply %41, %19 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 7 : i32} : (vector<16xf16>, vector<7xf16>) -> vector<112xf16>
            %true_52 = arith.constant true
            %false = arith.constant false
            %306 = vector.transfer_read %4[%299], %false : tensor<16xi1>, vector<i1>
            %307 = math.tanh %13 : tensor<7x13x16xf16>
            %308 = index.floordivs %c3, %c8
            %309 = math.fpowi %cst_9, %c0_i32 : f16, i32
            %c1_i64_53 = arith.constant 1 : i64
            %inserted_54 = tensor.insert %c1_i64_53 into %12[%c0] : tensor<5xi64>
            %310 = arith.addi %c-20596_i16, %c-20596_i16 : i16
            %311 = arith.muli %in, %c27109_i16 : i16
            %312 = math.ceil %0 : tensor<7x13x16xf32>
            %313 = math.absi %10 : tensor<5xi1>
            %314 = arith.shrui %in_45, %in_45 : i16
            %315 = bufferization.clone %alloc_15 : memref<13x16xi1> to memref<13x16xi1>
            %316 = arith.ori %in_45, %c-32578_i16 : i16
            %317 = vector.extract %24[2] : vector<13x16xf32>
            %318 = arith.ori %in_49, %in_50 : i32
            %319 = math.powf %6, %6 : tensor<16xf16>
            %320 = vector.broadcast %true : i1 to vector<13x16xi1>
            memref.copy %alloc_18, %alloc_21 : memref<7x13x16xf16> to memref<7x13x16xf16>
            %321 = arith.addi %in_45, %c-22643_i16 : i16
            %c1_i32 = arith.constant 1 : i32
            linalg.yield %c1_i32 : i32
          }
        %true_47 = arith.constant true
        %269 = vector.transfer_read %10[%c9], %true_47 : tensor<5xi1>, vector<i1>
        memref.copy %264, %alloc_13 : memref<13x16xi32> to memref<13x16xi32>
        %270 = index.maxu %c3, %c11
        %271 = index.castu %in : i16 to index
        %272 = affine.if affine_set<(d0, d1, d2, d3) : (-d1 - d0 * 2 == 0, d3 >= 0, d1 >= 0)>(%c1, %c11, %c10, %c12) -> i16 {
          %292 = arith.divsi %c-32578_i16, %c27109_i16 : i16
          %293 = index.ceildivu %56, %c5
          %294 = index.divu %c1, %c5
          %295 = memref.realloc %60 : memref<5xi1> to memref<16xi1>
          %296 = index.floordivs %c10, %30
          %297 = vector.extract %41[6] : vector<16xf16>
          %298 = arith.maxui %c-32578_i16, %c-22643_i16 : i16
          %299 = vector.extract %50[4] : vector<13x16xf32>
          affine.yield %c-22643_i16 : i16
        } else {
          %cast_49 = tensor.cast %10 : tensor<5xi1> to tensor<?xi1>
          %292 = index.add %c6, %c12
          %c1_i32 = arith.constant 1 : i32
          %293 = vector.transfer_read %268[%c13, %c6], %c1_i32 : tensor<13x16xi32>, vector<i32>
          %294 = math.log10 %cst_4 : f32
          %295 = math.log10 %cst_0 : f16
          %296 = math.absf %0 : tensor<7x13x16xf32>
          %297 = vector.broadcast %cst_2 : f32 to vector<16xf32>
          %298 = arith.remf %cst_0, %cst_3 : f16
          affine.yield %c-32578_i16 : i16
        }
        %273 = bufferization.to_memref %8 : memref<13x16xi1>
        %274 = index.sub %59, %c15
        %275 = arith.floordivsi %c-20596_i16, %in : i16
        %276 = index.maxu %c4, %59
        %277 = arith.minui %in, %c-32578_i16 : i16
        %278 = scf.while (%arg3 = %60) : (memref<5xi1>) -> memref<5xi1> {
          %292 = vector.create_mask %26 : vector<5xi1>
          %splat_49 = tensor.splat %cst_0 : tensor<7x13x16xf16>
          %293 = index.floordivs %c5, %c1
          %294 = arith.minsi %true, %true : i1
          memref.copy %60, %arg3 : memref<5xi1> to memref<5xi1>
          %295 = vector.splat %c-20596_i16 : vector<7x13x16xi16>
          %296 = arith.minui %true_47, %true_47 : i1
          %297 = math.ipowi %reduced, %18 : tensor<16xi16>
          scf.condition(%true) %60 : memref<5xi1>
        } do {
        ^bb0(%arg3: memref<5xi1>):
          %292 = tensor.empty(%c2, %c2) : tensor<?x?xi64>
          %293 = arith.maxf %cst_3, %cst_9 : f16
          %294 = arith.floordivsi %in_45, %in_45 : i16
          %295 = bufferization.to_tensor %60 : memref<5xi1>
          %296 = math.absi %17 : tensor<16xi1>
          %297 = bufferization.to_memref %1 : memref<7x13x16xi32>
          %splat_49 = tensor.splat %cst_1 : tensor<5xf32>
          %298 = math.exp2 %cst_6 : f32
          %299 = vector.bitcast %40 : vector<16xi32> to vector<16xi32>
          memref.copy %alloc_26, %alloc_12 : memref<5xi1> to memref<5xi1>
          %cast_50 = tensor.cast %0 : tensor<7x13x16xf32> to tensor<?x?x?xf32>
          %300 = math.ipowi %in_45, %c-20596_i16 : i16
          %301 = vector.broadcast %true_47 : i1 to vector<i1>
          vector.transfer_write %301, %60[%c9] : vector<i1>, memref<5xi1>
          %302 = math.ipowi %true, %true_47 : i1
          %303 = index.divs %c11, %c11
          %304 = vector.create_mask %c8, %c0 : vector<13x16xi1>
          scf.yield %alloc_12 : memref<5xi1>
        }
        %279 = tensor.empty() : tensor<16xf32>
        %alloc_48 = memref.alloc() : memref<7xf32>
        %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%279, %alloc_48 : tensor<16xf32>, memref<7xf32>) outs(%0 : tensor<7x13x16xf32>) {
        ^bb0(%in_49: f32, %in_50: f32, %out: f32):
          %292 = index.mul %270, %c0
          %293 = tensor.empty() : tensor<13x16xi64>
          %294 = index.castu %c0_i32 : i32 to index
          %295 = math.powf %64, %64 : tensor<13x16xf32>
          %296 = vector.broadcast %in_49 : f32 to vector<16xf32>
          %dest_51, %accumulated_value_52 = vector.scan <add>, %23, %296 {inclusive = true, reduction_dim = 0 : i64} : vector<13x16xf32>, vector<16xf32>
          %297 = index.castu %c0_i32 : i32 to index
          %298 = arith.cmpf ole, %in_50, %cst_7 : f32
          %true_53 = arith.constant true
          %299 = vector.transfer_read %5[%c12, %c6, %c1], %true_53 : tensor<7x13x16xi1>, vector<16xi1>
          %300 = vector.matrix_multiply %41, %38 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf16>, vector<16xf16>) -> vector<1xf16>
          %301 = vector.gather %alloc_11[%30, %34] [%40], %39, %41 : memref<13x16xf16>, vector<16xi32>, vector<16xi1>, vector<16xf16> into vector<16xf16>
          %302 = math.exp %13 : tensor<7x13x16xf16>
          %303 = math.exp %out : f32
          %304 = math.atan %cst_2 : f32
          %305 = arith.minui %c27109_i16, %in_45 : i16
          %306 = bufferization.to_memref %0 : memref<7x13x16xf32>
          %307 = arith.muli %true_47, %true : i1
          %308 = math.tanh %3 : tensor<13x16xf32>
          %309 = index.ceildivu %c13, %34
          %310 = math.exp2 %cst_1 : f32
          %311 = arith.shrsi %in, %c-32578_i16 : i16
          %312 = index.divs %276, %59
          %313 = bufferization.to_memref %18 : memref<16xi16>
          %314 = bufferization.clone %alloc_23 : memref<16xf16> to memref<16xf16>
          %315 = arith.divsi %c0_i32, %c0_i32 : i32
          %316 = vector.broadcast %cst_4 : f32 to vector<5xf32>
          %317 = vector.fma %316, %316, %316 : vector<5xf32>
          %318 = arith.subi %in, %c-32578_i16 : i16
          %319 = vector.broadcast %cst_7 : f32 to vector<7x13x16xf32>
          %320 = vector.fma %319, %319, %43 : vector<7x13x16xf32>
          %321 = math.log2 %cst_5 : f16
          %322 = vector.extract %44[6] : vector<7x13x16xf32>
          %323 = vector.matrix_multiply %301, %41 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf16>, vector<16xf16>) -> vector<1xf16>
          %324 = vector.bitcast %19 : vector<7xf16> to vector<7xf16>
          %inserted_54 = tensor.insert %cst_6 into %64[%c10, %c7] : tensor<13x16xf32>
          linalg.yield %cst : f32
        } -> tensor<7x13x16xf32>
        %281 = scf.if %true_47 -> (i16) {
          %292 = math.ipowi %c27109_i16, %in_45 : i16
          %293 = vector.reduction <mul>, %19 : vector<7xf16> into f16
          %294 = arith.minsi %c0_i32, %c0_i32 : i32
          %collapsed_49 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<7x13x16xf16> into tensor<91x16xf16>
          %295 = math.fpowi %cst_1, %c0_i32 : f32, i32
          %296 = index.sub %59, %c13
          %splat_50 = tensor.splat %c-20596_i16 : tensor<5xi16>
          %297 = bufferization.clone %60 : memref<5xi1> to memref<5xi1>
          scf.yield %in_45 : i16
        } else {
          %extracted_49 = tensor.extract %13[%c4, %c2, %c3] : tensor<7x13x16xf16>
          %292 = index.castu %56 : index to i32
          %293 = arith.xori %c27109_i16, %c-22643_i16 : i16
          %294 = math.exp2 %cst_7 : f32
          %295 = math.ipowi %9, %9 : tensor<5xi16>
          %296 = math.sqrt %extracted_49 : f16
          %297 = vector.bitcast %50 : vector<13x16xf32> to vector<13x16xf32>
          %298 = bufferization.to_tensor %264 : memref<13x16xi32>
          scf.yield %c27109_i16 : i16
        }
        %282 = index.divu %270, %c13
        %283 = scf.while (%arg3 = %cst_1) : (f32) -> f32 {
          %292 = math.ceil %3 : tensor<13x16xf32>
          %alloc_49 = memref.alloc() : memref<5xi64>
          memref.tensor_store %12, %alloc_49 : memref<5xi64>
          %293 = index.ceildivu %276, %c0
          %294 = math.rsqrt %0 : tensor<7x13x16xf32>
          %295 = vector.extract %23[6] : vector<13x16xf32>
          %296 = math.round %cst_6 : f32
          %297 = arith.cmpf ole, %cst_5, %cst_3 : f16
          %298 = index.castu %34 : index to i32
          scf.condition(%true) %arg3 : f32
        } do {
        ^bb0(%arg3: f32):
          %292 = math.roundeven %6 : tensor<16xf16>
          %false = index.bool.constant false
          %293 = bufferization.to_memref %3 : memref<13x16xf32>
          %294 = vector.multi_reduction <mul>, %19, %19 [] : vector<7xf16> to vector<7xf16>
          %295 = arith.divsi %281, %c-20596_i16 : i16
          memref.store %c0_i32, %264[%c2, %c5] : memref<13x16xi32>
          %cast_49 = tensor.cast %20 : tensor<i1> to tensor<i1>
          %296 = vector.broadcast %cst_3 : f16 to vector<5xf16>
          %297 = vector.matrix_multiply %39, %39 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi1>, vector<16xi1>) -> vector<1xi1>
          %298 = bufferization.to_memref %1 : memref<7x13x16xi32>
          %299 = bufferization.to_memref %9 : memref<5xi16>
          %cst_50 = arith.constant 1.000000e+00 : f32
          %300 = vector.transfer_read %3[%c10, %c0], %cst_50 : tensor<13x16xf32>, vector<13xf32>
          %301 = math.ceil %6 : tensor<16xf16>
          %302 = math.exp2 %cst_4 : f32
          %303 = index.divs %c1, %c10
          %304 = memref.realloc %alloc_19 : memref<5xf16> to memref<5xf16>
          scf.yield %cst : f32
        }
        vector.print %43 : vector<7x13x16xf32>
        %284 = affine.min affine_map<(d0, d1, d2) -> (d0 + 32)>(%c3, %282, %59)
        %285 = bufferization.clone %alloc_12 : memref<5xi1> to memref<5xi1>
        %286 = arith.shrsi %in_45, %c-32578_i16 : i16
        %287 = arith.ori %c-20596_i16, %c-32578_i16 : i16
        memref.store %true, %285[%c1] : memref<5xi1>
        %288 = math.ipowi %7, %10 : tensor<5xi1>
        %289 = index.ceildivs %276, %c5
        %290 = arith.maxsi %c-32578_i16, %c-20596_i16 : i16
        %291 = arith.ori %281, %in_45 : i16
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %67 = index.floordivs %c2, %c13
    %splat = tensor.splat %cst_8 : tensor<16xf16>
    %68 = arith.ceildivsi %true, %true : i1
    %69 = index.divu %c3, %c14
    %70 = math.ceil %cst_6 : f32
    %71 = arith.minui %c-32578_i16, %c-20596_i16 : i16
    %72 = math.absi %4 : tensor<16xi1>
    %73 = index.casts %c-32578_i16 : i16 to index
    memref.assume_alignment %alloc_17, 16 : memref<13x16xf16>
    %alloc_28 = memref.alloc() : memref<16xi1>
    memref.copy %alloc_16, %alloc_28 : memref<16xi1> to memref<16xi1>
    %74 = arith.xori %c-32578_i16, %c-32578_i16 : i16
    %75 = arith.floordivsi %c-32578_i16, %c-20596_i16 : i16
    %76 = arith.maxf %cst_0, %cst_3 : f16
    memref.alloca_scope  {
      %263 = arith.floordivsi %c-22643_i16, %c-20596_i16 : i16
      memref.copy %alloc_12, %60 : memref<5xi1> to memref<5xi1>
      memref.tensor_store %13, %alloc_18 : memref<7x13x16xf16>
      %264 = math.log10 %cst_2 : f32
      %265 = math.copysign %cst_7, %cst_1 : f32
      %266 = vector.broadcast %cst_7 : f32 to vector<7x13x16xf32>
      %267 = vector.fma %266, %266, %44 : vector<7x13x16xf32>
      %cast_45 = tensor.cast %64 : tensor<13x16xf32> to tensor<?x?xf32>
      %268 = math.ctlz %16 : tensor<16xi1>
      %alloc_46 = memref.alloc() : memref<13x16xi1>
      memref.copy %alloc_15, %alloc_46 : memref<13x16xi1> to memref<13x16xi1>
      %269 = arith.remf %cst_7, %cst_4 : f32
      %splat_47 = tensor.splat %cst_6 : tensor<16xf32>
      %270 = arith.floordivsi %c0_i32, %c0_i32 : i32
      %271 = memref.realloc %alloc_10 : memref<5xi16> to memref<7xi16>
      %272 = arith.minsi %c-32578_i16, %c-32578_i16 : i16
      %273 = math.ceil %0 : tensor<7x13x16xf32>
      %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %65, %65, %cst_3 : vector<16xf16>, vector<16xf16> into f16
      %cst_48 = arith.constant 1.000000e+00 : f16
      %cst_49 = arith.constant 0.000000e+00 : f16
      %275 = vector.transfer_read %alloc_23[%c0], %cst_49 : memref<16xf16>, vector<f16>
      %276 = vector.broadcast %c-22643_i16 : i16 to vector<5xi16>
      %splat_50 = tensor.splat %cst_48 : tensor<16xf16>
      %277 = arith.ceildivsi %c0_i32, %c0_i32 : i32
      %278 = math.roundeven %cst_1 : f32
      scf.if %true {
        %288 = math.round %6 : tensor<16xf16>
        %from_elements_53 = tensor.from_elements %c-20596_i16, %c-20596_i16, %c-22643_i16, %c-20596_i16, %c-32578_i16, %c-32578_i16, %c-20596_i16, %c-32578_i16, %c-20596_i16, %c-20596_i16, %c-20596_i16, %c-20596_i16, %c-32578_i16, %c-20596_i16, %c-22643_i16, %c27109_i16 : tensor<16xi16>
        %c1_i32 = arith.constant 1 : i32
        %289 = vector.transfer_read %1[%c15, %c15, %c1], %c1_i32 : tensor<7x13x16xi32>, vector<16xi32>
        %290 = index.divu %67, %73
        %291 = index.ceildivu %c0, %73
        %292 = math.floor %cst_5 : f16
        %293 = math.floor %cst_5 : f16
        %294 = bufferization.to_memref %8 : memref<13x16xi1>
      }
      %279 = scf.while (%arg3 = %alloc_17) : (memref<13x16xf16>) -> memref<13x16xf16> {
        %288 = bufferization.to_tensor %alloc_26 : memref<5xi1>
        %289 = index.add %c11, %c7
        %290 = vector.broadcast %c27109_i16 : i16 to vector<16xi16>
        %291 = vector.gather %2[%c9, %c3] [%40], %39, %290 : tensor<13x16xi16>, vector<16xi32>, vector<16xi1>, vector<16xi16> into vector<16xi16>
        %292 = math.copysign %splat, %6 : tensor<16xf16>
        %293 = arith.remsi %c27109_i16, %c-22643_i16 : i16
        %294 = math.ipowi %18, %18 : tensor<16xi16>
        %295 = math.floor %cst_5 : f16
        %296 = arith.negf %cst_3 : f16
        scf.condition(%true) %alloc_11 : memref<13x16xf16>
      } do {
      ^bb0(%arg3: memref<13x16xf16>):
        %288 = index.castu %c2 : index to i32
        %false = index.bool.constant false
        %289 = math.floor %splat_50 : tensor<16xf16>
        %290 = index.sizeof
        %291 = math.roundeven %cst_5 : f16
        %292 = index.maxs %c5, %c10
        %293 = arith.shrsi %c-20596_i16, %c27109_i16 : i16
        %294 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d1 - 8)>(%59, %26, %c4, %c7)
        %295 = vector.broadcast %true : i1 to vector<i1>
        vector.transfer_write %295, %alloc_12[%34] : vector<i1>, memref<5xi1>
        %296 = math.absi %5 : tensor<7x13x16xi1>
        %297 = bufferization.clone %alloc_11 : memref<13x16xf16> to memref<13x16xf16>
        memref.copy %alloc_12, %60 : memref<5xi1> to memref<5xi1>
        %298 = bufferization.to_memref %cast_45 : memref<?x?xf32>
        %299 = math.log1p %cst_6 : f32
        %300 = vector.bitcast %19 : vector<7xf16> to vector<7xf16>
        %301 = affine.apply affine_map<(d0) -> ((-(d0 + 128)) ceildiv 64)>(%c4)
        scf.yield %arg3 : memref<13x16xf16>
      }
      %280 = vector.insert %cst_0, %19 [6] : f16 into vector<7xf16>
      %281 = index.castu %c-32578_i16 : i16 to index
      %282 = index.divu %34, %c5
      %283 = arith.shrsi %true, %true : i1
      %284 = vector.broadcast %cst_1 : f32 to vector<16xf32>
      %285 = vector.transfer_write %284, %3[%67, %c11] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xf32>, tensor<13x16xf32>
      %splat_51 = tensor.splat %cst_3 : tensor<16xf16>
      %286 = math.round %splat : tensor<16xf16>
      %287 = vector.insertelement %cst_6, %284[%c9 : index] : vector<16xf32>
      %alloc_52 = memref.alloc() : memref<13x16xf16>
    }
    %77 = index.ceildivu %c13, %c13
    %78 = scf.while (%arg3 = %40) : (vector<16xi32>) -> vector<16xi32> {
      %generated_45 = tensor.generate %c10 {
      ^bb0(%arg4: index):
        %271 = vector.broadcast %cst : f32 to vector<16xf32>
        %272 = vector.insert %271, %44 [2, 5] : vector<16xf32> into vector<7x13x16xf32>
        %alloc_46 = memref.alloc() : memref<13x16xf32>
        memref.tensor_store %3, %alloc_46 : memref<13x16xf32>
        %273 = arith.divsi %c-20596_i16, %c-32578_i16 : i16
        %274 = index.castu %34 : index to i32
        tensor.yield %c-22643_i16 : i16
      } : tensor<?xi16>
      %263 = math.exp2 %6 : tensor<16xf16>
      %264 = index.mul %73, %c5
      %265 = vector.bitcast %38 : vector<16xf16> to vector<16xf16>
      %266 = vector.reduction <mul>, %38 : vector<16xf16> into f16
      %267 = index.mul %c9, %c11
      %268 = math.expm1 %6 : tensor<16xf16>
      %269 = tensor.empty() : tensor<16xi32>
      %270 = math.fpowi %splat, %269 : tensor<16xf16>, tensor<16xi32>
      scf.condition(%true) %40 : vector<16xi32>
    } do {
    ^bb0(%arg3: vector<16xi32>):
      %generated_45 = tensor.generate %c9, %c13 {
      ^bb0(%arg4: index, %arg5: index, %arg6: index):
        %275 = math.tanh %3 : tensor<13x16xf32>
        %276 = arith.muli %true, %true : i1
        %277 = arith.minf %cst_2, %cst_7 : f32
        %278 = index.mul %c12, %77
        tensor.yield %c0_i32 : i32
      } : tensor<?x?x16xi32>
      %263 = arith.minui %true, %true : i1
      %264 = bufferization.to_memref %4 : memref<16xi1>
      %extracted_46 = tensor.extract %3[%c5, %c1] : tensor<13x16xf32>
      %265 = math.fpowi %cst_4, %c0_i32 : f32, i32
      %266 = bufferization.clone %alloc_20 : memref<5xi16> to memref<5xi16>
      %267 = bufferization.clone %alloc_24 : memref<13x16xi64> to memref<13x16xi64>
      memref.copy %alloc_18, %alloc_21 : memref<7x13x16xf16> to memref<7x13x16xf16>
      bufferization.dealloc_tensor %13 : tensor<7x13x16xf16>
      %268 = math.exp %cst_3 : f16
      %269 = index.castu %c8 : index to i32
      %270 = arith.addi %c0_i32, %c0_i32 : i32
      %271 = affine.if affine_set<(d0, d1) : (d0 * -32 >= 0, d0 == 0, d0 floordiv 16 >= 0)>(%c8, %c3) -> f32 {
        %splat_47 = tensor.splat %c27109_i16 : tensor<16xi16>
        %275 = arith.maxf %cst_2, %cst_7 : f32
        %276 = index.ceildivs %c5, %77
        %277 = arith.divsi %c0_i32, %c0_i32 : i32
        %278 = vector.extract %24[1] : vector<13x16xf32>
        %279 = index.ceildivu %c1, %c2
        %280 = arith.muli %c0_i32, %c0_i32 : i32
        %281 = math.exp2 %splat : tensor<16xf16>
        affine.yield %cst_4 : f32
      } else {
        %275 = index.divu %c14, %c3
        %276 = math.sqrt %13 : tensor<7x13x16xf16>
        %277 = bufferization.to_tensor %alloc_17 : memref<13x16xf16>
        %278 = vector.multi_reduction <minui>, %29, %29 [] : vector<7xi16> to vector<7xi16>
        %279 = arith.muli %true, %true : i1
        %280 = index.sub %34, %73
        %281 = arith.divsi %c-32578_i16, %c27109_i16 : i16
        %282 = vector.extract %39[0] : vector<16xi1>
        affine.yield %cst_1 : f32
      }
      %272 = vector.insert %cst_3, %38 [4] : f16 into vector<16xf16>
      %273 = index.ceildivs %69, %69
      %274 = arith.maxsi %c-22643_i16, %c-20596_i16 : i16
      scf.yield %40 : vector<16xi32>
    }
    %79 = vector.broadcast %true : i1 to vector<16x16xi1>
    %80 = vector.outerproduct %39, %39, %79 {kind = #vector.kind<add>} : vector<16xi1>, vector<16xi1>
    %81 = math.floor %cst_8 : f16
    %82 = scf.if %true -> (i64) {
      %263 = index.maxu %59, %c1
      %264 = index.mul %c6, %c2
      %265 = affine.load %alloc_15[%c5, %c13] : memref<13x16xi1>
      %266 = index.divu %c14, %c3
      %267 = bufferization.clone %alloc_25 : memref<16x13xf16> to memref<16x13xf16>
      %generated_45 = tensor.generate %c12 {
      ^bb0(%arg3: index):
        %270 = index.divs %56, %c15
        %271 = vector.matrix_multiply %19, %41 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 16 : i32} : (vector<7xf16>, vector<16xf16>) -> vector<112xf16>
        %272 = vector.insert %23, %43 [3] : vector<13x16xf32> into vector<7x13x16xf32>
        %273 = math.powf %cst_1, %cst_7 : f32
        tensor.yield %cst_9 : f16
      } : tensor<?xf16>
      %268 = arith.muli %c-32578_i16, %c-22643_i16 : i16
      %269 = vector.bitcast %24 : vector<13x16xf32> to vector<13x16xf32>
      %c1_i64_46 = arith.constant 1 : i64
      scf.yield %c1_i64_46 : i64
    } else {
      %263 = affine.load %alloc_20[%c13] : memref<5xi16>
      %264 = math.round %6 : tensor<16xf16>
      %265 = arith.divsi %263, %c-20596_i16 : i16
      %266 = arith.shrsi %c0_i32, %c0_i32 : i32
      %267 = math.fpowi %cst_9, %c0_i32 : f16, i32
      %268 = arith.ori %c-22643_i16, %c-32578_i16 : i16
      %269 = index.floordivs %c8, %c11
      %270 = index.mul %69, %c6
      %c0_i64_45 = arith.constant 0 : i64
      scf.yield %c0_i64_45 : i64
    }
    %cast = tensor.cast %12 : tensor<5xi64> to tensor<?xi64>
    %83 = math.powf %3, %3 : tensor<13x16xf32>
    %alloc_29 = memref.alloc() : memref<7xi32>
    %alloc_30 = memref.alloc() : memref<7x16x13xi32>
    %84 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_29, %alloc_30, %alloc_30 : memref<7xi32>, memref<7x16x13xi32>, memref<7x16x13xi32>) outs(%1 : tensor<7x13x16xi32>) {
    ^bb0(%in: i32, %in_45: i32, %in_46: i32, %out: i32):
      memref.assume_alignment %alloc_13, 2 : memref<13x16xi32>
      %263 = math.round %splat : tensor<16xf16>
      %264 = arith.floordivsi %c-20596_i16, %c-20596_i16 : i16
      %265 = math.log1p %64 : tensor<13x16xf32>
      %266 = arith.floordivsi %c0_i32, %in : i32
      %267 = index.casts %c-20596_i16 : i16 to index
      %268 = arith.maxf %cst, %cst_1 : f32
      %269 = scf.if %true -> (memref<13x16xi32>) {
        %290 = arith.addf %cst_9, %cst_5 : f16
        %291 = index.divs %30, %30
        %292 = vector.load %alloc_20[%c1] : memref<5xi16>, vector<7x13x16xi16>
        %293 = math.log10 %cst_2 : f32
        %inserted_49 = tensor.insert %cst_9 into %generated[%c0, %c0] : tensor<?x?xf16>
        %294 = math.fpowi %cst_5, %in : f16, i32
        %295 = math.log10 %3 : tensor<13x16xf32>
        %296 = math.log10 %cst_3 : f16
        scf.yield %alloc_13 : memref<13x16xi32>
      } else {
        %from_elements_49 = tensor.from_elements %cst_6, %cst_2, %cst_1, %cst_1, %cst_2 : tensor<5xf32>
        %inserted_50 = tensor.insert %c-20596_i16 into %reduced[%c12] : tensor<16xi16>
        %290 = bufferization.to_memref %6 : memref<16xf16>
        %291 = vector.insert %cst_5, %19 [4] : f16 into vector<7xf16>
        %292 = vector.splat %c1 : vector<5xindex>
        %inserted_51 = tensor.insert %c-20596_i16 into %18[%c8] : tensor<16xi16>
        %293 = math.tanh %cst_8 : f16
        memref.copy %alloc_18, %alloc_21 : memref<7x13x16xf16> to memref<7x13x16xf16>
        scf.yield %alloc_13 : memref<13x16xi32>
      }
      %270 = arith.remf %cst_9, %cst_8 : f16
      %271 = vector.broadcast %c15 : index to vector<7xindex>
      %272 = vector.broadcast %true : i1 to vector<7xi1>
      vector.scatter %alloc_26[%c2] [%271], %272, %272 : memref<5xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
      memref.assume_alignment %alloc, 4 : memref<16xi64>
      %273 = index.divu %c7, %c10
      %274 = index.sub %69, %c15
      %275 = math.exp2 %3 : tensor<13x16xf32>
      %276 = math.ceil %cst_8 : f16
      %splat_47 = tensor.splat %in_46 : tensor<16xi32>
      %277 = index.divs %30, %c6
      %inserted_48 = tensor.insert %cst_2 into %3[%c5, %c0] : tensor<13x16xf32>
      %278 = arith.ceildivsi %c-20596_i16, %c-20596_i16 : i16
      %279 = arith.ceildivsi %out, %in_45 : i32
      %280 = index.sizeof
      %281 = math.powf %cst_8, %cst_3 : f16
      %282 = index.casts %59 : index to i32
      %c121421546_i64 = arith.constant 121421546 : i64
      %283 = arith.ori %c-22643_i16, %c-32578_i16 : i16
      %284 = vector.extract %19[0] : vector<7xf16>
      %285 = index.castu %c27109_i16 : i16 to index
      %286 = arith.ori %true, %true : i1
      %287 = arith.addi %in, %c0_i32 : i32
      %288 = bufferization.to_memref %5 : memref<7x13x16xi1>
      vector.print %29 : vector<7xi16>
      %289 = math.log10 %cst_5 : f16
      linalg.yield %in_45 : i32
    } -> tensor<7x13x16xi32>
    %85 = math.powf %64, %3 : tensor<13x16xf32>
    %86 = bufferization.to_memref %7 : memref<5xi1>
    %generated_31 = tensor.generate %30 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %extracted_45 = tensor.extract %12[%c3] : tensor<5xi64>
      %263 = math.fpowi %3, %11 : tensor<13x16xf32>, tensor<13x16xi32>
      %264 = math.round %cst_0 : f16
      %265 = bufferization.to_tensor %86 : memref<5xi1>
      tensor.yield %cst_2 : f32
    } : tensor<?x13x16xf32>
    %87 = index.maxu %73, %c6
    %88 = arith.floordivsi %c-22643_i16, %c-22643_i16 : i16
    %89 = affine.if affine_set<(d0, d1, d2, d3) : (-d1 - d0 * 2 == 0, d3 >= 0, d1 >= 0)>(%c9, %c9, %c15, %c12) -> i64 {
      %263 = index.sizeof
      %alloc_45 = memref.alloc() : memref<5xi64>
      memref.tensor_store %12, %alloc_45 : memref<5xi64>
      %264 = tensor.empty() : tensor<7xf32>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%264 : tensor<7xf32>) outs(%0 : tensor<7x13x16xf32>) {
      ^bb0(%in: f32, %out: f32):
        %271 = math.fma %6, %splat, %splat : tensor<16xf16>
        %272 = math.atan %splat : tensor<16xf16>
        %273 = arith.cmpi ult, %c-32578_i16, %c27109_i16 : i16
        %274 = math.copysign %in, %cst_7 : f32
        %275 = math.absi %2 : tensor<13x16xi16>
        %276 = arith.divsi %c27109_i16, %c-22643_i16 : i16
        %277 = tensor.empty() : tensor<16xi32>
        memref.copy %alloc_14, %alloc : memref<16xi64> to memref<16xi64>
        %278 = arith.minui %c27109_i16, %c-32578_i16 : i16
        %279 = affine.max affine_map<(d0, d1, d2) -> (d2, d1 * 32, d0, d2)>(%73, %c11, %c7)
        %280 = math.powf %cst, %cst_2 : f32
        %281 = index.maxu %263, %c5
        %282 = vector.insertelement %true, %39[%c13 : index] : vector<16xi1>
        %283 = math.exp %cst : f32
        %284 = arith.divsi %c-22643_i16, %c-32578_i16 : i16
        %285 = arith.remf %in, %in : f32
        %286 = arith.negf %cst_4 : f32
        %287 = arith.xori %c-32578_i16, %c27109_i16 : i16
        %288 = vector.broadcast %cst_6 : f32 to vector<5xf32>
        %289 = vector.fma %288, %288, %288 : vector<5xf32>
        %290 = arith.addf %cst_1, %cst_7 : f32
        %291 = math.log %cst_1 : f32
        %292 = math.ipowi %c0_i32, %c0_i32 : i32
        %splat_46 = tensor.splat %c-32578_i16 : tensor<16xi16>
        %293 = bufferization.to_memref %3 : memref<13x16xf32>
        %294 = math.exp2 %in : f32
        %295 = math.tanh %3 : tensor<13x16xf32>
        %296 = vector.broadcast %out : f32 to vector<7x13x16xf32>
        %297 = vector.fma %296, %43, %296 : vector<7x13x16xf32>
        %298 = vector.flat_transpose %288 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
        %true_47 = index.bool.constant true
        %299 = arith.ori %c0_i32, %c0_i32 : i32
        %dest_48, %accumulated_value_49 = vector.scan <mul>, %43, %50 {inclusive = false, reduction_dim = 0 : i64} : vector<7x13x16xf32>, vector<13x16xf32>
        %300 = math.exp2 %3 : tensor<13x16xf32>
        linalg.yield %cst_6 : f32
      } -> tensor<7x13x16xf32>
      %266 = arith.shli %c27109_i16, %c-20596_i16 : i16
      %267 = bufferization.clone %alloc : memref<16xi64> to memref<16xi64>
      %268 = arith.muli %c-32578_i16, %c-20596_i16 : i16
      %269 = math.ceil %cst_2 : f32
      %270 = math.log1p %cst_4 : f32
      affine.yield %82 : i64
    } else {
      %263 = index.ceildivs %30, %67
      %264 = arith.shli %c-32578_i16, %c27109_i16 : i16
      %265 = vector.broadcast %true : i1 to vector<i1>
      %266 = vector.transfer_write %265, %5[%c8, %69, %c1] : vector<i1>, tensor<7x13x16xi1>
      %alloc_45 = memref.alloc() : memref<13x16xf32>
      memref.tensor_store %3, %alloc_45 : memref<13x16xf32>
      %267 = math.log1p %cst_0 : f16
      %268 = vector.broadcast %c0_i32 : i32 to vector<i32>
      vector.transfer_write %268, %alloc_13[%c8, %c6] : vector<i32>, memref<13x16xi32>
      %269 = arith.cmpf ult, %cst_3, %cst_9 : f16
      memref.store %82, %alloc_14[%c4] : memref<16xi64>
      affine.yield %82 : i64
    }
    %90 = affine.if affine_set<(d0, d1) : (d1 mod 64 - 128 == 0, d1 == 0)>(%c12, %c4) -> memref<16xf32> {
      %263 = vector.broadcast %cst_4 : f32 to vector<7x13x16xf32>
      %264 = vector.fma %263, %44, %263 : vector<7x13x16xf32>
      %265 = arith.remf %cst_3, %cst_0 : f16
      memref.tensor_store %9, %alloc_10 : memref<5xi16>
      %266 = bufferization.clone %alloc_20 : memref<5xi16> to memref<5xi16>
      %267 = affine.for %arg3 = 0 to 8 iter_args(%arg4 = %alloc_18) -> (memref<7x13x16xf16>) {
        affine.yield %alloc_18 : memref<7x13x16xf16>
      }
      %268 = math.ceil %0 : tensor<7x13x16xf32>
      %269 = memref.realloc %60 : memref<5xi1> to memref<16xi1>
      %270 = memref.realloc %60 : memref<5xi1> to memref<5xi1>
      %alloc_45 = memref.alloc() : memref<16xf32>
      affine.yield %alloc_45 : memref<16xf32>
    } else {
      %263 = arith.muli %c0_i32, %c0_i32 : i32
      %264 = tensor.empty() : tensor<16xi16>
      %265 = arith.floordivsi %c-20596_i16, %c27109_i16 : i16
      %266 = math.cos %0 : tensor<7x13x16xf32>
      %267 = index.mul %c1, %c5
      %268 = vector.splat %69 : vector<13x16xindex>
      %splat_45 = tensor.splat %cst_7 : tensor<5xf32>
      memref.store %cst_3, %alloc_19[%c0] : memref<5xf16>
      %alloc_46 = memref.alloc() : memref<16xf32>
      affine.yield %alloc_46 : memref<16xf32>
    }
    %splat_32 = tensor.splat %c0_i32 : tensor<13x16xi32>
    %91 = vector.reduction <maxf>, %38 : vector<16xf16> into f16
    %92 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %19, %19, %cst_5 : vector<7xf16>, vector<7xf16> into f16
    %93 = arith.remf %cst_8, %cst_8 : f16
    %94 = index.floordivs %c8, %73
    %95 = tensor.empty() : tensor<13x16xi32>
    %96 = arith.muli %true, %true : i1
    %97 = math.ceil %cst : f32
    %98 = arith.ori %c0_i32, %c0_i32 : i32
    %inserted = tensor.insert %82 into %cast[%c0] : tensor<?xi64>
    %99 = math.log2 %0 : tensor<7x13x16xf32>
    scf.index_switch %c1 
    case 1 {
      %cast_45 = tensor.cast %15 : tensor<13x16xi16> to tensor<?x?xi16>
      %263 = index.castu %c-22643_i16 : i16 to index
      %264 = arith.cmpi eq, %c0_i32, %c0_i32 : i32
      %265 = memref.realloc %alloc_16 : memref<16xi1> to memref<5xi1>
      %266 = vector.broadcast %cst_6 : f32 to vector<5xf32>
      %267 = vector.fma %266, %266, %266 : vector<5xf32>
      %268 = scf.while (%arg3 = %29) : (vector<7xi16>) -> vector<7xi16> {
        %277 = math.log10 %13 : tensor<7x13x16xf16>
        %278 = math.absi %66 : tensor<16xi16>
        %279 = bufferization.clone %alloc_17 : memref<13x16xf16> to memref<13x16xf16>
        %280 = index.add %c10, %c0
        %281 = vector.splat %c13 : vector<16xindex>
        %282 = math.expm1 %cst_3 : f16
        %283 = arith.ori %c-32578_i16, %c-22643_i16 : i16
        memref.copy %alloc_21, %alloc_18 : memref<7x13x16xf16> to memref<7x13x16xf16>
        scf.condition(%true) %29 : vector<7xi16>
      } do {
      ^bb0(%arg3: vector<7xi16>):
        %277 = vector.broadcast %cst_2 : f32 to vector<7x13x16xf32>
        %278 = math.powf %cst_1, %cst : f32
        %279 = math.powf %cst_9, %cst_9 : f16
        %280 = index.maxs %87, %c0
        %c1_i64_49 = arith.constant 1 : i64
        %c0_i64_50 = arith.constant 0 : i64
        %281 = vector.transfer_read %12[%c6], %c0_i64_50 : tensor<5xi64>, vector<i64>
        %282 = math.ctpop %true : i1
        %283 = index.maxu %94, %c0
        %inserted_51 = tensor.insert %true into %4[%c6] : tensor<16xi1>
        %284 = math.exp2 %cst_0 : f16
        %285 = vector.load %alloc_21[%c2, %c0, %c0] : memref<7x13x16xf16>, vector<5xf16>
        %286 = arith.ceildivsi %c27109_i16, %c27109_i16 : i16
        %287 = memref.realloc %alloc_26 : memref<5xi1> to memref<5xi1>
        %extracted_52 = tensor.extract %11[%c0, %c11] : tensor<13x16xi32>
        %288 = math.copysign %3, %3 : tensor<13x16xf32>
        %cast_53 = tensor.cast %15 : tensor<13x16xi16> to tensor<?x?xi16>
        %289 = vector.broadcast %cst_7 : f32 to vector<16xf32>
        %290 = vector.insert %289, %277 [1, 5] : vector<16xf32> into vector<7x13x16xf32>
        scf.yield %29 : vector<7xi16>
      }
      %269 = math.tanh %0 : tensor<7x13x16xf32>
      %270 = vector.insertelement %c0_i32, %47[] : vector<i32>
      %271 = vector.broadcast %cst_7 : f32 to vector<16xf32>
      %dest_46, %accumulated_value_47 = vector.scan <maxf>, %50, %271 {inclusive = false, reduction_dim = 0 : i64} : vector<13x16xf32>, vector<16xf32>
      %false = arith.constant false
      %272 = math.log %6 : tensor<16xf16>
      %273 = math.fpowi %cst_6, %c0_i32 : f32, i32
      %274 = index.mul %c4, %263
      %true_48 = index.bool.constant true
      %275 = arith.maxf %cst_9, %cst_0 : f16
      %276 = math.log10 %3 : tensor<13x16xf32>
      scf.yield
    }
    case 2 {
      %263 = arith.divsi %c-22643_i16, %c27109_i16 : i16
      %264 = vector.insert %cst_5, %19 [3] : f16 into vector<7xf16>
      %265 = math.log1p %cst_6 : f32
      %266 = math.absf %13 : tensor<7x13x16xf16>
      %267 = arith.addi %c27109_i16, %c-22643_i16 : i16
      %268 = bufferization.to_memref %reduced : memref<16xi16>
      vector.print %47 : vector<i32>
      %alloc_45 = memref.alloc() : memref<13x16xf32>
      memref.tensor_store %3, %alloc_45 : memref<13x16xf32>
      %269 = bufferization.clone %alloc_21 : memref<7x13x16xf16> to memref<7x13x16xf16>
      %cast_46 = tensor.cast %9 : tensor<5xi16> to tensor<?xi16>
      %270 = arith.minsi %c27109_i16, %c-32578_i16 : i16
      bufferization.dealloc_tensor %95 : tensor<13x16xi32>
      %271 = math.absi %9 : tensor<5xi16>
      %272 = math.round %3 : tensor<13x16xf32>
      memref.tensor_store %6, %alloc_23 : memref<16xf16>
      %273 = math.log2 %3 : tensor<13x16xf32>
      scf.yield
    }
    case 3 {
      %263 = arith.remsi %c27109_i16, %c-20596_i16 : i16
      %264 = math.fpowi %cst_0, %c0_i32 : f16, i32
      %265 = math.atan %6 : tensor<16xf16>
      %266 = vector.splat %c15 : vector<7x13x16xindex>
      %267 = vector.matrix_multiply %40, %40 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi32>, vector<16xi32>) -> vector<1xi32>
      %268 = affine.apply affine_map<(d0, d1, d2) -> (d2 ceildiv 16 - 16)>(%73, %69, %c9)
      %269 = vector.broadcast %cst_7 : f32 to vector<13xf32>
      %dest_45, %accumulated_value_46 = vector.scan <maxf>, %24, %269 {inclusive = false, reduction_dim = 1 : i64} : vector<13x16xf32>, vector<13xf32>
      %270 = vector.broadcast %cst_7 : f32 to vector<16xf32>
      %dest_47, %accumulated_value_48 = vector.scan <minf>, %23, %270 {inclusive = true, reduction_dim = 0 : i64} : vector<13x16xf32>, vector<16xf32>
      %271 = arith.muli %true, %true : i1
      %272 = vector.reduction <minf>, %41 : vector<16xf16> into f16
      %273 = vector.splat %c7 : vector<13x16xindex>
      %extracted_49 = tensor.extract %11[%c10, %c11] : tensor<13x16xi32>
      %alloc_50 = memref.alloc() : memref<i1>
      memref.tensor_store %21, %alloc_50 : memref<i1>
      %extracted_51 = tensor.extract %9[%c3] : tensor<5xi16>
      %274 = math.atan2 %cst_7, %cst_1 : f32
      %275 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 + d1 - d3 + 1) floordiv 8, d3, (d1 - d3) * 128 + d0)>(%87, %67, %34, %c3)
      scf.yield
    }
    default {
      %263 = scf.while (%arg3 = %alloc_17) : (memref<13x16xf16>) -> memref<13x16xf16> {
        %279 = math.copysign %3, %64 : tensor<13x16xf32>
        %280 = arith.shrsi %c0_i32, %c0_i32 : i32
        %281 = index.floordivs %67, %26
        %282 = index.divu %281, %c8
        %283 = arith.maxsi %c27109_i16, %c-32578_i16 : i16
        %284 = math.round %cst_2 : f32
        %285 = vector.broadcast %cst_1 : f32 to vector<7x13x16xf32>
        %286 = vector.fma %285, %43, %285 : vector<7x13x16xf32>
        %287 = arith.minf %cst_5, %cst_5 : f16
        scf.condition(%true) %alloc_17 : memref<13x16xf16>
      } do {
      ^bb0(%arg3: memref<13x16xf16>):
        %alloc_45 = memref.alloc() : memref<16xi1>
        memref.copy %alloc_16, %alloc_45 : memref<16xi1> to memref<16xi1>
        %279 = arith.divsi %c0_i32, %c0_i32 : i32
        %280 = math.ipowi %5, %5 : tensor<7x13x16xi1>
        %281 = math.exp %13 : tensor<7x13x16xf16>
        %282 = math.log %cst_0 : f16
        %283 = arith.maxsi %82, %82 : i64
        %284 = vector.create_mask %73 : vector<16xi1>
        %285 = index.add %c2, %c11
        %286 = arith.remsi %c-20596_i16, %c-22643_i16 : i16
        %287 = arith.negf %cst_4 : f32
        %288 = math.fpowi %64, %95 : tensor<13x16xf32>, tensor<13x16xi32>
        %289 = bufferization.to_memref %10 : memref<5xi1>
        %290 = bufferization.to_tensor %alloc_24 : memref<13x16xi64>
        %291 = vector.broadcast %c0_i32 : i32 to vector<i32>
        %292 = vector.transfer_write %291, %95[%c3, %56] : vector<i32>, tensor<13x16xi32>
        %293 = arith.maxsi %c-22643_i16, %c27109_i16 : i16
        %294 = math.absi %14 : tensor<16xi1>
        scf.yield %alloc_11 : memref<13x16xf16>
      }
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%0 : tensor<7x13x16xf32>) {
      ^bb0(%out: f32):
        %279 = vector.bitcast %50 : vector<13x16xf32> to vector<13x16xf32>
        %280 = math.log1p %cst : f32
        %281 = math.fpowi %13, %1 : tensor<7x13x16xf16>, tensor<7x13x16xi32>
        %282 = math.tanh %cst_1 : f32
        %283 = math.absi %9 : tensor<5xi16>
        %284 = index.ceildivu %30, %c0
        %alloc_45 = memref.alloc() : memref<13x16xi16>
        %285 = arith.xori %c-32578_i16, %c-32578_i16 : i16
        %286 = arith.cmpi ule, %c27109_i16, %c-22643_i16 : i16
        bufferization.dealloc_tensor %5 : tensor<7x13x16xi1>
        %287 = math.ctpop %9 : tensor<5xi16>
        %288 = arith.remf %cst_9, %cst_0 : f16
        %289 = arith.maxsi %c-20596_i16, %c27109_i16 : i16
        %290 = bufferization.to_memref %8 : memref<13x16xi1>
        %291 = vector.extract %43[1] : vector<7x13x16xf32>
        memref.copy %alloc_14, %alloc : memref<16xi64> to memref<16xi64>
        %292 = math.floor %3 : tensor<13x16xf32>
        %293 = index.casts %true : i1 to index
        %294 = math.log10 %cst_9 : f16
        %295 = vector.create_mask %c9 : vector<16xi1>
        %296 = arith.divsi %c0_i32, %c0_i32 : i32
        %297 = vector.insertelement %c0_i32, %40[%69 : index] : vector<16xi32>
        %298 = arith.cmpf une, %out, %out : f32
        %299 = math.log2 %cst_3 : f16
        memref.assume_alignment %alloc_22, 16 : memref<16xi32>
        %300 = affine.load %alloc_14[%c7] : memref<16xi64>
        %301 = arith.shrsi %c-20596_i16, %c-32578_i16 : i16
        %302 = vector.broadcast %cst_6 : f32 to vector<16x16xf32>
        %303 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %50, %279, %302 : vector<13x16xf32>, vector<13x16xf32> into vector<16x16xf32>
        %304 = vector.splat %300 : vector<7x13x16xi64>
        %305 = index.casts %94 : index to i32
        %306 = math.floor %cst_5 : f16
        %307 = vector.broadcast %c0_i32 : i32 to vector<7x13x16xi32>
        %308 = vector.broadcast %true : i1 to vector<7x13x16xi1>
        %309 = vector.gather %alloc_13[%293, %c0] [%307], %308, %307 : memref<13x16xi32>, vector<7x13x16xi32>, vector<7x13x16xi1>, vector<7x13x16xi32> into vector<7x13x16xi32>
        linalg.yield %out : f32
      } -> tensor<7x13x16xf32>
      %265 = math.absi %10 : tensor<5xi1>
      %266 = bufferization.to_tensor %alloc_22 : memref<16xi32>
      %267 = math.copysign %cst_6, %cst : f32
      %268 = bufferization.clone %alloc : memref<16xi64> to memref<16xi64>
      %269 = arith.xori %c0_i32, %c0_i32 : i32
      %270 = arith.floordivsi %82, %82 : i64
      %271 = vector.extract %51[3] : vector<13x16xf32>
      %272 = math.fma %cst_8, %cst_0, %cst_3 : f16
      %273 = arith.floordivsi %c0_i32, %c0_i32 : i32
      %274 = arith.divsi %82, %82 : i64
      %275 = vector.extract %43[2] : vector<7x13x16xf32>
      %276 = math.exp %0 : tensor<7x13x16xf32>
      %277 = vector.extract %38[14] : vector<16xf16>
      %278 = tensor.empty(%c6) : tensor<?x13x16xf16>
    }
    %100 = bufferization.clone %60 : memref<5xi1> to memref<5xi1>
    %101 = math.fpowi %cst_1, %c0_i32 : f32, i32
    %102 = arith.cmpi ult, %82, %82 : i64
    %103 = vector.flat_transpose %65 {columns = 4 : i32, rows = 4 : i32} : vector<16xf16> -> vector<16xf16>
    %104 = math.copysign %cst_7, %cst_6 : f32
    %105 = arith.floordivsi %c-32578_i16, %c27109_i16 : i16
    %106 = math.log2 %splat : tensor<16xf16>
    %107 = math.tanh %splat : tensor<16xf16>
    %108 = vector.broadcast %cst_4 : f32 to vector<16xf32>
    %dest, %accumulated_value = vector.scan <maxf>, %51, %108 {inclusive = true, reduction_dim = 0 : i64} : vector<13x16xf32>, vector<16xf32>
    %109 = arith.maxsi %c0_i32, %c0_i32 : i32
    %110 = vector.extract %24[12] : vector<13x16xf32>
    %111 = vector.extract %43[6] : vector<7x13x16xf32>
    %112 = bufferization.to_memref %reduced : memref<16xi16>
    %113 = affine.if affine_set<(d0) : ((d0 floordiv 128 + 4) mod 32 == 0)>(%c2) -> i32 {
      %cast_45 = tensor.cast %0 : tensor<7x13x16xf32> to tensor<?x?x?xf32>
      %263 = vector.insertelement %c0_i32, %40[%c5 : index] : vector<16xi32>
      memref.store %82, %alloc[%c14] : memref<16xi64>
      %264 = index.ceildivs %c11, %77
      %265 = scf.index_switch %264 -> index 
      case 1 {
        %269 = arith.minui %c-32578_i16, %c-32578_i16 : i16
        %270 = math.floor %cst_9 : f16
        %271 = math.floor %3 : tensor<13x16xf32>
        %272 = bufferization.clone %alloc_10 : memref<5xi16> to memref<5xi16>
        %273 = index.castu %c-32578_i16 : i16 to index
        %274 = vector.broadcast %cst_8 : f16 to vector<16xf16>
        %splat_46 = tensor.splat %cst_6 : tensor<13x16xf32>
        %275 = math.ipowi %true, %true : i1
        %276 = arith.minui %c-22643_i16, %c-32578_i16 : i16
        %277 = arith.divsi %c-22643_i16, %c-22643_i16 : i16
        memref.assume_alignment %alloc_19, 1 : memref<5xf16>
        %278 = arith.maxsi %c-32578_i16, %c27109_i16 : i16
        %279 = math.powf %cst, %cst_1 : f32
        %280 = index.casts %c0_i32 : i32 to index
        memref.assume_alignment %alloc_17, 16 : memref<13x16xf16>
        %281 = math.absi %c-32578_i16 : i16
        scf.yield %c6 : index
      }
      default {
        %269 = vector.create_mask %67 : vector<16xi1>
        %270 = math.roundeven %0 : tensor<7x13x16xf32>
        %271 = arith.ceildivsi %c0_i32, %c0_i32 : i32
        %272 = arith.shli %c-22643_i16, %c-22643_i16 : i16
        %273 = vector.splat %c0_i32 : vector<7x13x16xi32>
        %274 = arith.ceildivsi %82, %82 : i64
        %275 = index.sub %30, %c3
        %276 = index.mul %69, %73
        %277 = index.divu %59, %26
        %278 = vector.bitcast %50 : vector<13x16xf32> to vector<13x16xf32>
        %279 = affine.min affine_map<(d0) -> (d0)>(%c11)
        %splat_46 = tensor.splat %cst_8 : tensor<16xf16>
        %280 = vector.extract %19[3] : vector<7xf16>
        %281 = bufferization.to_memref %11 : memref<13x16xi32>
        %282 = math.ctlz %9 : tensor<5xi16>
        %283 = bufferization.clone %alloc_10 : memref<5xi16> to memref<5xi16>
        scf.yield %26 : index
      }
      %266 = arith.xori %82, %82 : i64
      %267 = vector.transpose %51, [0, 1] : vector<13x16xf32> to vector<13x16xf32>
      %268 = math.cos %13 : tensor<7x13x16xf16>
      affine.yield %c0_i32 : i32
    } else {
      %263 = math.atan2 %cst_0, %cst_5 : f16
      %264 = arith.floordivsi %82, %82 : i64
      %265 = arith.negf %cst_2 : f32
      %266 = arith.minf %cst_5, %cst_0 : f16
      scf.index_switch %c9 
      case 1 {
        %270 = vector.multi_reduction <add>, %44, %44 [] : vector<7x13x16xf32> to vector<7x13x16xf32>
        %271 = math.floor %13 : tensor<7x13x16xf16>
        %272 = math.powf %cst_1, %cst_6 : f32
        %273 = index.sizeof
        %274 = index.floordivs %c3, %c1
        %275 = vector.matrix_multiply %19, %65 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 16 : i32} : (vector<7xf16>, vector<16xf16>) -> vector<112xf16>
        %276 = arith.minf %cst_8, %cst_9 : f16
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (((d2 floordiv 32) mod 8) * 2 - d1, (d2 floordiv 16 - 8) * 128, d2, d2 floordiv 128 + 63)>(%c0, %94, %26, %73)
        %278 = index.mul %c0, %c14
        %279 = arith.minf %cst_5, %cst_0 : f16
        vector.print %110 : vector<16xf32>
        %280 = arith.subi %c27109_i16, %c27109_i16 : i16
        %281 = arith.shrsi %c-32578_i16, %c-32578_i16 : i16
        %282 = arith.maxui %c27109_i16, %c-22643_i16 : i16
        %283 = arith.shrsi %c-22643_i16, %c-20596_i16 : i16
        %284 = vector.broadcast %cst_0 : f16 to vector<13x16xf16>
        scf.yield
      }
      case 2 {
        %270 = memref.realloc %alloc_10 : memref<5xi16> to memref<5xi16>
        %271 = arith.floordivsi %c-32578_i16, %c27109_i16 : i16
        %272 = math.floor %6 : tensor<16xf16>
        %273 = arith.floordivsi %c-22643_i16, %c27109_i16 : i16
        %274 = index.ceildivs %c6, %c3
        bufferization.dealloc_tensor %generated_31 : tensor<?x13x16xf32>
        %275 = vector.shuffle %43, %43 [0, 1, 2, 6, 11, 13] : vector<7x13x16xf32>, vector<7x13x16xf32>
        %276 = arith.ceildivsi %82, %82 : i64
        %277 = arith.remsi %c-32578_i16, %c-20596_i16 : i16
        %278 = vector.broadcast %cst_7 : f32 to vector<16xf32>
        %cst_45 = arith.constant 1.64032346E+9 : f32
        %279 = math.powf %cst_4, %cst : f32
        %280 = math.fpowi %64, %11 : tensor<13x16xf32>, tensor<13x16xi32>
        %281 = arith.floordivsi %c-20596_i16, %c-32578_i16 : i16
        %extracted_46 = tensor.extract %66[%c13] : tensor<16xi16>
        %282 = index.divu %c10, %274
        scf.yield
      }
      default {
        %inserted_45 = tensor.insert %cst into %0[%c0, %c3, %c13] : tensor<7x13x16xf32>
        %270 = math.ceil %6 : tensor<16xf16>
        %271 = bufferization.to_memref %12 : memref<5xi64>
        %272 = math.round %cst_4 : f32
        %273 = vector.insert %cst_3, %103 [14] : f16 into vector<16xf16>
        %274 = vector.broadcast %cst_5 : f16 to vector<f16>
        %275 = vector.transfer_write %274, %6[%c15] : vector<f16>, tensor<16xf16>
        %276 = vector.insert %110, %23 [8] : vector<16xf32> into vector<13x16xf32>
        %277 = math.log %cst_9 : f16
        %extracted_46 = tensor.extract %12[%c2] : tensor<5xi64>
        memref.assume_alignment %alloc_13, 8 : memref<13x16xi32>
        %278 = math.copysign %cst_1, %cst_2 : f32
        %279 = math.floor %64 : tensor<13x16xf32>
        %280 = arith.floordivsi %extracted_46, %extracted_46 : i64
        %281 = index.mul %c7, %c13
        %282 = bufferization.to_memref %splat_32 : memref<13x16xi32>
        %283 = vector.transpose %38, [0] : vector<16xf16> to vector<16xf16>
      }
      %267 = math.fpowi %13, %1 : tensor<7x13x16xf16>, tensor<7x13x16xi32>
      %268 = math.absi %c-20596_i16 : i16
      %269 = index.castu %c27109_i16 : i16 to index
      affine.yield %c0_i32 : i32
    }
    %114 = vector.multi_reduction <maxsi>, %29, %29 [] : vector<7xi16> to vector<7xi16>
    %115 = vector.broadcast %cst_2 : f32 to vector<7x13x16xf32>
    %116 = vector.fma %115, %44, %43 : vector<7x13x16xf32>
    %117 = arith.xori %c-20596_i16, %c-20596_i16 : i16
    %118 = arith.ceildivsi %c-32578_i16, %c-22643_i16 : i16
    %119 = arith.negf %cst_6 : f32
    %120 = affine.min affine_map<(d0, d1) -> (-(d0 - d1 * 4))>(%30, %c14)
    %extracted = tensor.extract %6[%c7] : tensor<16xf16>
    %121 = index.casts %c3 : index to i32
    %122 = index.castu %true : i1 to index
    vector.print %110 : vector<16xf32>
    %123 = math.fpowi %cst_7, %c0_i32 : f32, i32
    %124 = vector.insert %110, %43 [0, 10] : vector<16xf32> into vector<7x13x16xf32>
    %125 = scf.while (%arg3 = %41) : (vector<16xf16>) -> vector<16xf16> {
      %collapsed_45 = tensor.collapse_shape %8 [[0, 1]] : tensor<13x16xi1> into tensor<208xi1>
      %263 = math.tanh %splat : tensor<16xf16>
      %264 = index.add %c12, %67
      %265 = bufferization.to_tensor %112 : memref<16xi16>
      %266 = index.castu %c-20596_i16 : i16 to index
      %267 = memref.atomic_rmw minf %extracted, %alloc_19[%c0] : (f16, memref<5xf16>) -> f16
      %268 = math.absf %cst_7 : f32
      %269 = math.powf %cst_6, %cst_4 : f32
      scf.condition(%true) %41 : vector<16xf16>
    } do {
    ^bb0(%arg3: vector<16xf16>):
      %263 = index.castu %c-22643_i16 : i16 to index
      %264 = index.divu %34, %87
      %265 = arith.remsi %true, %true : i1
      %266 = arith.maxsi %c0_i32, %c0_i32 : i32
      %267 = arith.ceildivsi %c-22643_i16, %c-32578_i16 : i16
      %268 = index.floordivs %77, %56
      %269 = vector.extract %24[11] : vector<13x16xf32>
      scf.index_switch %c14 
      case 1 {
        %281 = arith.shrsi %c27109_i16, %c27109_i16 : i16
        %282 = math.atan %13 : tensor<7x13x16xf16>
        %283 = math.absi %21 : tensor<i1>
        %284 = vector.create_mask %c6 : vector<16xi1>
        %285 = vector.insert %269, %50 [6] : vector<16xf32> into vector<13x16xf32>
        %286 = math.log10 %extracted : f16
        %alloc_45 = memref.alloc() : memref<16xf16>
        memref.copy %alloc_23, %alloc_45 : memref<16xf16> to memref<16xf16>
        %287 = index.divu %263, %c12
        %288 = vector.broadcast %cst_2 : f32 to vector<16xf32>
        %289 = vector.fma %288, %110, %269 : vector<16xf32>
        %290 = vector.broadcast %c-32578_i16 : i16 to vector<i16>
        %291 = vector.transfer_write %290, %2[%c13, %c2] : vector<i16>, tensor<13x16xi16>
        %292 = vector.broadcast %true : i1 to vector<5xi1>
        %293 = vector.transfer_write %292, %5[%264, %59, %268] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xi1>, tensor<7x13x16xi1>
        %294 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 + d1 mod 32)>(%c6, %268, %77, %73)
        %295 = index.maxu %69, %c8
        %296 = arith.floordivsi %c-22643_i16, %c-32578_i16 : i16
        %297 = vector.matrix_multiply %110, %288 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
        %298 = arith.remf %cst_2, %cst_2 : f32
        scf.yield
      }
      case 2 {
        %281 = affine.load %alloc_22[%c5] : memref<16xi32>
        %282 = math.exp2 %0 : tensor<7x13x16xf32>
        %283 = bufferization.clone %alloc_17 : memref<13x16xf16> to memref<13x16xf16>
        %284 = vector.splat %cst_5 : vector<5xf16>
        %285 = math.exp %extracted : f16
        %286 = tensor.empty() : tensor<16xi32>
        %287 = math.fpowi %6, %286 : tensor<16xf16>, tensor<16xi32>
        %288 = arith.maxsi %281, %c0_i32 : i32
        %289 = math.exp %cst_6 : f32
        %rank = tensor.rank %6 : tensor<16xf16>
        %290 = bufferization.clone %112 : memref<16xi16> to memref<16xi16>
        %291 = vector.broadcast %cst : f32 to vector<13x16xf32>
        %292 = vector.fma %291, %291, %24 : vector<13x16xf32>
        %293 = math.exp2 %cst_1 : f32
        %294 = arith.cmpi eq, %281, %281 : i32
        %295 = arith.addf %cst_9, %cst_8 : f16
        %296 = vector.matrix_multiply %110, %269 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
        %297 = vector.broadcast %true : i1 to vector<i1>
        vector.transfer_write %297, %alloc_26[%69] : vector<i1>, memref<5xi1>
        scf.yield
      }
      case 3 {
        %281 = arith.divsi %82, %82 : i64
        %c1_i32 = arith.constant 1 : i32
        %c0_i32_45 = arith.constant 0 : i32
        %282 = vector.transfer_read %alloc_13[%263, %264], %c0_i32_45 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<13x16xi32>, vector<13xi32>
        %alloc_46 = memref.alloc() : memref<13x16xi16>
        %283 = math.log10 %13 : tensor<7x13x16xf16>
        %284 = math.fma %3, %3, %64 : tensor<13x16xf32>
        %285 = math.cos %cst_6 : f32
        %false = arith.constant false
        %286 = tensor.empty(%73) : tensor<7x13x?xf16>
        %287 = math.floor %cst_8 : f16
        vector.print %110 : vector<16xf32>
        %288 = arith.divsi %true, %true : i1
        %289 = math.copysign %0, %0 : tensor<7x13x16xf32>
        %290 = bufferization.clone %112 : memref<16xi16> to memref<16xi16>
        %291 = arith.cmpi ule, %c1_i32, %c1_i32 : i32
        %292 = affine.min affine_map<(d0, d1, d2) -> (d0 + 64, d0 - d1 + 64, d1 - 128, (d0 mod 32) ceildiv 32)>(%c1, %30, %73)
        %293 = arith.cmpi sgt, %true, %true : i1
        scf.yield
      }
      default {
        %false = arith.constant false
        %false_45 = arith.constant false
        %281 = vector.transfer_read %86[%77], %false_45 : memref<5xi1>, vector<i1>
        %282 = math.ipowi %1, %1 : tensor<7x13x16xi32>
        %283 = vector.broadcast %cst_1 : f32 to vector<7x13x16xf32>
        %284 = math.exp2 %3 : tensor<13x16xf32>
        %285 = vector.bitcast %24 : vector<13x16xf32> to vector<13x16xf32>
        %286 = arith.ori %false, %false : i1
        %287 = math.rsqrt %64 : tensor<13x16xf32>
        %288 = vector.broadcast %c0_i32 : i32 to vector<5xi32>
        %289 = vector.transfer_write %288, %11[%c1, %77] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<5xi32>, tensor<13x16xi32>
        %290 = arith.maxui %c27109_i16, %c27109_i16 : i16
        %291 = math.rsqrt %cst_3 : f16
        %292 = math.round %0 : tensor<7x13x16xf32>
        %293 = arith.muli %c27109_i16, %c-32578_i16 : i16
        %294 = math.ipowi %5, %5 : tensor<7x13x16xi1>
        %295 = index.maxs %c6, %268
        %296 = vector.extract %44[1] : vector<7x13x16xf32>
        %297 = arith.addf %cst_8, %cst_9 : f16
      }
      %270 = arith.maxsi %c-20596_i16, %c-22643_i16 : i16
      %271 = vector.broadcast %cst_5 : f16 to vector<5xf16>
      %272 = vector.broadcast %true : i1 to vector<5xi1>
      %273 = vector.maskedload %alloc_21[%c0, %c7, %c0], %272, %271 : memref<7x13x16xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
      %274 = math.floor %6 : tensor<16xf16>
      %275 = index.castu %c-20596_i16 : i16 to index
      %276 = vector.create_mask %c14 : vector<16xi1>
      %277 = vector.broadcast %cst_7 : f32 to vector<7x13x16xf32>
      %278 = vector.fma %277, %44, %116 : vector<7x13x16xf32>
      %279 = affine.min affine_map<(d0, d1) -> (d0)>(%77, %59)
      %280 = index.add %c1, %c4
      scf.yield %103 : vector<16xf16>
    }
    %126 = memref.realloc %86 : memref<5xi1> to memref<16xi1>
    %127 = math.absf %cst_2 : f32
    %128 = affine.load %alloc_15[%c1, %c4] : memref<13x16xi1>
    %129 = vector.shuffle %51, %23 [0, 2, 3, 6, 13, 15, 16, 19, 21, 22, 23] : vector<13x16xf32>, vector<13x16xf32>
    %130 = arith.ori %c0_i32, %c0_i32 : i32
    %131 = tensor.empty() : tensor<16xf16>
    %132 = scf.index_switch %56 -> vector<13x16xf16> 
    case 1 {
      %263 = index.maxu %c3, %67
      %264 = math.ipowi %1, %1 : tensor<7x13x16xi32>
      %extracted_45 = tensor.extract %13[%c0, %c2, %c1] : tensor<7x13x16xf16>
      %265 = vector.bitcast %115 : vector<7x13x16xf32> to vector<7x13x16xf32>
      %266 = vector.extract %65[11] : vector<16xf16>
      %267 = vector.shuffle %29, %29 [1, 4, 5, 10, 13] : vector<7xi16>, vector<7xi16>
      %c1_i32 = arith.constant 1 : i32
      %c0_i32_46 = arith.constant 0 : i32
      %268 = vector.transfer_read %95[%c15, %c7], %c0_i32_46 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<13x16xi32>, vector<7xi32>
      %269 = bufferization.to_tensor %86 : memref<5xi1>
      %270 = vector.broadcast %cst_6 : f32 to vector<13x16xf32>
      %271 = vector.fma %270, %50, %23 : vector<13x16xf32>
      %alloc_47 = memref.alloc() : memref<16xi16>
      memref.copy %112, %alloc_47 : memref<16xi16> to memref<16xi16>
      %272 = index.divs %c8, %69
      %273 = index.castu %73 : index to i32
      %274 = index.ceildivs %c15, %c5
      %275 = vector.multi_reduction <maxf>, %41, %extracted [0] : vector<16xf16> to f16
      %276 = index.castu %274 : index to i32
      %277 = math.roundeven %cst_7 : f32
      %278 = vector.broadcast %cst_3 : f16 to vector<13x16xf16>
      scf.yield %278 : vector<13x16xf16>
    }
    case 2 {
      %263 = index.maxu %c0, %c5
      %264 = arith.ceildivsi %c27109_i16, %c-32578_i16 : i16
      %265 = arith.ori %82, %82 : i64
      %collapsed_45 = tensor.collapse_shape %11 [[0, 1]] : tensor<13x16xi32> into tensor<208xi32>
      bufferization.dealloc_tensor %cast : tensor<?xi64>
      %266 = index.divs %30, %c5
      %267 = vector.broadcast %true : i1 to vector<13x16xi1>
      %268 = vector.broadcast %c0_i32 : i32 to vector<13x16xi32>
      %269 = vector.gather %0[%94, %67, %c3] [%268], %267, %24 : tensor<7x13x16xf32>, vector<13x16xi32>, vector<13x16xi1>, vector<13x16xf32> into vector<13x16xf32>
      %270 = arith.maxsi %82, %82 : i64
      %271 = math.log10 %cst_0 : f16
      %272 = math.tanh %13 : tensor<7x13x16xf16>
      %273 = index.maxs %c12, %c15
      %274 = math.cos %0 : tensor<7x13x16xf32>
      %275 = math.ipowi %2, %2 : tensor<13x16xi16>
      %276 = math.exp2 %0 : tensor<7x13x16xf32>
      %277 = arith.cmpi sle, %c-20596_i16, %c-22643_i16 : i16
      %278 = math.ctlz %c27109_i16 : i16
      %279 = vector.broadcast %cst_5 : f16 to vector<13x16xf16>
      scf.yield %279 : vector<13x16xf16>
    }
    case 3 {
      %263 = math.round %cst_6 : f32
      %264 = arith.remsi %c-32578_i16, %c-32578_i16 : i16
      %265 = arith.floordivsi %c-32578_i16, %c-20596_i16 : i16
      %266 = index.mul %c6, %94
      %267 = bufferization.clone %alloc_10 : memref<5xi16> to memref<5xi16>
      %268 = arith.floordivsi %c0_i32, %c0_i32 : i32
      %269 = affine.min affine_map<(d0) -> (d0)>(%69)
      %270 = index.mul %120, %c8
      %271 = index.divu %c3, %56
      %272 = tensor.empty(%c7) : tensor<?xi32>
      %273 = math.atan2 %cst_1, %cst_1 : f32
      %274 = index.sizeof
      %275 = vector.extract %115[2, 4] : vector<7x13x16xf32>
      %276 = vector.reduction <xor>, %29 : vector<7xi16> into i16
      %277 = arith.negf %cst_4 : f32
      %278 = index.sub %94, %274
      %279 = vector.broadcast %cst_5 : f16 to vector<13x16xf16>
      scf.yield %279 : vector<13x16xf16>
    }
    case 4 {
      %263 = index.mul %56, %c1
      memref.store %cst_9, %alloc_25[%c15, %c6] : memref<16x13xf16>
      %264 = index.casts %c-22643_i16 : i16 to index
      %alloc_45 = memref.alloc() : memref<5xi64>
      memref.tensor_store %12, %alloc_45 : memref<5xi64>
      %265 = vector.bitcast %29 : vector<7xi16> to vector<7xi16>
      %266 = math.exp2 %cst_5 : f16
      %267 = arith.maxsi %c0_i32, %c0_i32 : i32
      %268 = arith.divsi %c-22643_i16, %c27109_i16 : i16
      %269 = bufferization.clone %alloc : memref<16xi64> to memref<16xi64>
      %alloc_46 = memref.alloc() : memref<7xf16>
      %alloc_47 = memref.alloc() : memref<13xf16>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46, %splat, %alloc_47 : memref<7xf16>, tensor<16xf16>, memref<13xf16>) outs(%13 : tensor<7x13x16xf16>) {
      ^bb0(%in: f16, %in_49: f16, %in_50: f16, %out: f16):
        %276 = index.castu %c7 : index to i32
        %277 = arith.ori %c27109_i16, %c27109_i16 : i16
        %278 = arith.cmpi ne, %128, %128 : i1
        %279 = index.maxu %c8, %77
        %280 = math.fma %0, %0, %0 : tensor<7x13x16xf32>
        %281 = bufferization.clone %alloc_25 : memref<16x13xf16> to memref<16x13xf16>
        %282 = index.floordivs %73, %c0
        %283 = math.log1p %splat : tensor<16xf16>
        %284 = vector.create_mask %77, %279 : vector<13x16xi1>
        memref.copy %alloc_10, %alloc_20 : memref<5xi16> to memref<5xi16>
        vector.print %103 : vector<16xf16>
        %285 = arith.cmpf ule, %cst_8, %cst_5 : f16
        %286 = bufferization.to_tensor %alloc_16 : memref<16xi1>
        %287 = bufferization.clone %alloc_21 : memref<7x13x16xf16> to memref<7x13x16xf16>
        %288 = vector.broadcast %cst_7 : f32 to vector<5xf32>
        %289 = vector.fma %288, %288, %288 : vector<5xf32>
        %290 = index.castu %c-32578_i16 : i16 to index
        %291 = arith.ceildivsi %c-32578_i16, %c-20596_i16 : i16
        %292 = vector.broadcast %true : i1 to vector<7xi1>
        %293 = vector.transfer_write %292, %8[%c3, %c5] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi1>, tensor<13x16xi1>
        %294 = math.copysign %3, %3 : tensor<13x16xf32>
        %295 = affine.load %alloc_20[%c15] : memref<5xi16>
        %296 = math.exp2 %0 : tensor<7x13x16xf32>
        %297 = math.ceil %6 : tensor<16xf16>
        %298 = math.powf %cst_9, %cst_8 : f16
        %299 = vector.insert %39, %284 [4] : vector<16xi1> into vector<13x16xi1>
        %300 = math.round %cst_7 : f32
        %301 = arith.maxui %c0_i32, %c0_i32 : i32
        %302 = arith.divsi %82, %82 : i64
        %303 = math.log %13 : tensor<7x13x16xf16>
        memref.store %128, %60[%c2] : memref<5xi1>
        %304 = math.ctlz %12 : tensor<5xi64>
        %305 = vector.multi_reduction <minf>, %38, %cst_9 [0] : vector<16xf16> to f16
        %306 = arith.floordivsi %295, %295 : i16
        linalg.yield %305 : f16
      } -> tensor<7x13x16xf16>
      memref.assume_alignment %100, 16 : memref<5xi1>
      %271 = index.ceildivu %122, %94
      %alloc_48 = memref.alloc() : memref<7x13x16xf32>
      memref.tensor_store %0, %alloc_48 : memref<7x13x16xf32>
      %272 = index.sizeof
      %273 = math.atan %cst_6 : f32
      %274 = bufferization.to_memref %9 : memref<5xi16>
      %275 = vector.broadcast %cst_8 : f16 to vector<13x16xf16>
      scf.yield %275 : vector<13x16xf16>
    }
    default {
      %263 = index.maxu %c3, %122
      %264 = scf.if %true -> (memref<13x16xi32>) {
        %alloc_47 = memref.alloc() : memref<13x16xf16>
        %276 = arith.muli %c-20596_i16, %c-22643_i16 : i16
        %277 = math.absi %splat_32 : tensor<13x16xi32>
        %278 = math.rsqrt %13 : tensor<7x13x16xf16>
        bufferization.dealloc_tensor %2 : tensor<13x16xi16>
        %279 = tensor.empty() : tensor<16xi64>
        %280 = vector.broadcast %82 : i64 to vector<13x16xi64>
        %281 = vector.broadcast %true : i1 to vector<13x16xi1>
        %282 = vector.broadcast %c0_i32 : i32 to vector<13x16xi32>
        %283 = vector.gather %279[%c9] [%282], %281, %280 : tensor<16xi64>, vector<13x16xi32>, vector<13x16xi1>, vector<13x16xi64> into vector<13x16xi64>
        %284 = vector.broadcast %cst_8 : f16 to vector<7xf16>
        vector.transfer_write %284, %alloc_17[%94, %94] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xf16>, memref<13x16xf16>
        %285 = vector.extract %115[2] : vector<7x13x16xf32>
        scf.yield %alloc_13 : memref<13x16xi32>
      } else {
        %276 = tensor.empty() : tensor<7x13x16xi32>
        %rank = tensor.rank %11 : tensor<13x16xi32>
        %277 = math.powf %13, %13 : tensor<7x13x16xf16>
        %278 = math.sqrt %3 : tensor<13x16xf32>
        %279 = math.tanh %cst_9 : f16
        %280 = affine.min affine_map<(d0, d1, d2, d3) -> ((d1 - d3 + d1 - d3 + d2) ceildiv 32)>(%67, %c14, %67, %c7)
        %281 = math.ceil %extracted : f16
        %282 = vector.insert %cst_1, %110 [3] : f32 into vector<16xf32>
        scf.yield %alloc_13 : memref<13x16xi32>
      }
      %265 = arith.minui %c-22643_i16, %c-22643_i16 : i16
      scf.index_switch %c5 
      case 1 {
        %276 = arith.remsi %true, %true : i1
        %277 = memref.atomic_rmw ori %c0_i32, %264[%c12, %c13] : (i32, memref<13x16xi32>) -> i32
        %278 = arith.muli %c-32578_i16, %c-22643_i16 : i16
        %expanded = tensor.expand_shape %95 [[0], [1, 2]] : tensor<13x16xi32> into tensor<13x16x1xi32>
        %279 = vector.splat %c7 : vector<5xindex>
        %280 = index.divs %77, %c0
        %splat_47 = tensor.splat %82 : tensor<5xi64>
        %281 = math.copysign %cst_2, %cst_1 : f32
        memref.copy %alloc_17, %alloc_11 : memref<13x16xf16> to memref<13x16xf16>
        %282 = arith.xori %82, %82 : i64
        %283 = vector.multi_reduction <minf>, %24, %111 [] : vector<13x16xf32> to vector<13x16xf32>
        %284 = math.atan2 %3, %64 : tensor<13x16xf32>
        memref.assume_alignment %alloc_20, 4 : memref<5xi16>
        %285 = bufferization.clone %alloc_15 : memref<13x16xi1> to memref<13x16xi1>
        %286 = index.floordivs %87, %c11
        %287 = arith.shli %c27109_i16, %c-22643_i16 : i16
        scf.yield
      }
      default {
        %276 = bufferization.clone %112 : memref<16xi16> to memref<16xi16>
        %277 = bufferization.clone %alloc_23 : memref<16xf16> to memref<16xf16>
        %278 = math.ceil %cst : f32
        %279 = arith.divsi %true, %128 : i1
        %280 = vector.shuffle %44, %44 [1, 2, 3, 4, 8, 10, 11, 13] : vector<7x13x16xf32>, vector<7x13x16xf32>
        %true_47 = arith.constant true
        %281 = math.exp2 %cst_5 : f16
        %282 = tensor.empty() : tensor<5xi1>
        %283 = index.ceildivu %c7, %34
        %284 = arith.shli %c-22643_i16, %c-22643_i16 : i16
        %285 = vector.shuffle %29, %29 [1, 3, 4, 6, 9, 11] : vector<7xi16>, vector<7xi16>
        %286 = bufferization.clone %alloc_25 : memref<16x13xf16> to memref<16x13xf16>
        %287 = vector.extract %38[4] : vector<16xf16>
        %288 = math.atan %3 : tensor<13x16xf32>
        %289 = arith.negf %cst_7 : f32
        %290 = arith.cmpf oeq, %cst_5, %cst_3 : f16
      }
      %266 = arith.maxsi %c-32578_i16, %c27109_i16 : i16
      %267 = bufferization.to_tensor %alloc_19 : memref<5xf16>
      %268 = math.ctlz %66 : tensor<16xi16>
      %generated_45 = tensor.generate %56 {
      ^bb0(%arg3: index):
        %276 = vector.matrix_multiply %40, %40 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi32>, vector<16xi32>) -> vector<1xi32>
        %277 = arith.shrsi %true, %128 : i1
        %278 = index.sizeof
        %279 = vector.broadcast %cst_6 : f32 to vector<16xf32>
        %280 = vector.fma %279, %279, %279 : vector<16xf32>
        tensor.yield %c-20596_i16 : i16
      } : tensor<?xi16>
      %false = arith.constant false
      %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %38, %65, %cst_5 : vector<16xf16>, vector<16xf16> into f16
      %collapsed_46 = tensor.collapse_shape %95 [[0, 1]] : tensor<13x16xi32> into tensor<208xi32>
      %270 = math.rsqrt %cst_4 : f32
      %271 = math.ipowi %18, %66 : tensor<16xi16>
      %272 = math.ctpop %true : i1
      %273 = vector.insert %c-32578_i16, %29 [3] : i16 into vector<7xi16>
      %274 = index.maxs %c6, %c13
      %275 = vector.broadcast %extracted : f16 to vector<13x16xf16>
      scf.yield %275 : vector<13x16xf16>
    }
    %133 = math.roundeven %6 : tensor<16xf16>
    %134 = arith.divsi %c27109_i16, %c-22643_i16 : i16
    %135 = arith.divsi %82, %82 : i64
    %136 = index.ceildivs %c14, %77
    %137 = math.powf %cst_8, %cst_8 : f16
    %138 = vector.broadcast %cst_2 : f32 to vector<16x16xf32>
    %139 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %51, %24, %138 : vector<13x16xf32>, vector<13x16xf32> into vector<16x16xf32>
    %140 = index.castu %94 : index to i32
    %141 = arith.ceildivsi %c-22643_i16, %c-32578_i16 : i16
    affine.for %arg3 = 0 to 112 {
    }
    %142 = math.log1p %extracted : f16
    scf.index_switch %c14 
    case 1 {
      %263 = index.mul %c9, %c10
      %264 = vector.broadcast %cst_7 : f32 to vector<7xf32>
      %265 = vector.multi_reduction <mul>, %44, %264 [1, 2] : vector<7x13x16xf32> to vector<7xf32>
      %266 = arith.maxsi %true, %128 : i1
      %267 = math.ctlz %c27109_i16 : i16
      %splat_45 = tensor.splat %cst_4 : tensor<7x13x16xf32>
      %inserted_46 = tensor.insert %c-32578_i16 into %66[%c14] : tensor<16xi16>
      %268 = arith.minsi %c-22643_i16, %c27109_i16 : i16
      %269 = bufferization.to_tensor %alloc_14 : memref<16xi64>
      %270 = vector.broadcast %cst_4 : f32 to vector<13x16x13x16xf32>
      %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %44, %116, %270 : vector<7x13x16xf32>, vector<7x13x16xf32> into vector<13x16x13x16xf32>
      %272 = math.fma %13, %13, %13 : tensor<7x13x16xf16>
      %273 = vector.flat_transpose %39 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
      %274 = math.sqrt %cst_2 : f32
      %275 = bufferization.clone %alloc_10 : memref<5xi16> to memref<5xi16>
      %inserted_47 = tensor.insert %128 into %20[] : tensor<i1>
      %276 = vector.splat %56 : vector<7x13x16xindex>
      %277 = arith.maxui %c27109_i16, %c-20596_i16 : i16
      scf.yield
    }
    default {
      %263 = math.atan2 %cst_8, %cst_3 : f16
      %264 = index.sub %c12, %c7
      %265 = math.ctlz %82 : i64
      %266 = affine.if affine_set<(d0, d1, d2) : (-d1 >= 0, d0 ceildiv 4 == 0)>(%c14, %c15, %c7) -> i64 {
        %alloc_48 = memref.alloc() : memref<13x16xi16>
        %277 = index.sizeof
        %278 = vector.create_mask %120 : vector<16xi1>
        %279 = affine.min affine_map<(d0, d1) -> ((-d0 + 8) ceildiv 64)>(%c6, %122)
        %280 = math.copysign %cst_2, %cst_7 : f32
        %281 = arith.shrsi %c-20596_i16, %c27109_i16 : i16
        %282 = vector.insert %cst_3, %65 [11] : f16 into vector<16xf16>
        %283 = vector.broadcast %c27109_i16 : i16 to vector<7x13x16xi16>
        affine.yield %82 : i64
      } else {
        %277 = vector.matrix_multiply %41, %65 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf16>, vector<16xf16>) -> vector<1xf16>
        %278 = memref.realloc %alloc_22 : memref<16xi32> to memref<5xi32>
        %inserted_48 = tensor.insert %128 into %4[%c11] : tensor<16xi1>
        %279 = index.mul %122, %c0
        %280 = math.fpowi %cst_8, %c0_i32 : f16, i32
        %281 = arith.floordivsi %true, %true : i1
        %282 = bufferization.to_tensor %alloc_25 : memref<16x13xf16>
        %true_49 = index.bool.constant true
        affine.yield %82 : i64
      }
      %alloc_45 = memref.alloc() : memref<13x16xf32>
      %267 = math.fma %6, %6, %6 : tensor<16xf16>
      %268 = arith.addi %c-32578_i16, %c27109_i16 : i16
      %269 = tensor.empty() : tensor<7xf16>
      %alloc_46 = memref.alloc() : memref<7x16x13xf16>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%269, %alloc_46 : tensor<7xf16>, memref<7x16x13xf16>) outs(%13 : tensor<7x13x16xf16>) {
      ^bb0(%in: f16, %in_48: f16, %out: f16):
        %alloc_49 = memref.alloc() : memref<7x13x16xi16>
        %277 = vector.broadcast %c27109_i16 : i16 to vector<7x13x16xi16>
        %278 = vector.broadcast %128 : i1 to vector<7x13x16xi1>
        %279 = vector.broadcast %c0_i32 : i32 to vector<7x13x16xi32>
        %280 = vector.gather %alloc_49[%26, %c1, %87] [%279], %278, %277 : memref<7x13x16xi16>, vector<7x13x16xi32>, vector<7x13x16xi1>, vector<7x13x16xi16> into vector<7x13x16xi16>
        %281 = index.add %c10, %c4
        %282 = arith.xori %c-22643_i16, %c-32578_i16 : i16
        %283 = math.log1p %cst_5 : f16
        %284 = arith.ceildivsi %128, %128 : i1
        %285 = arith.ceildivsi %c-20596_i16, %c-22643_i16 : i16
        %cast_50 = tensor.cast %splat : tensor<16xf16> to tensor<?xf16>
        %286 = math.exp2 %3 : tensor<13x16xf32>
        %false = index.bool.constant false
        %c0_i16 = arith.constant 0 : i16
        %287 = vector.transfer_read %112[%c1], %c0_i16 : memref<16xi16>, vector<i16>
        %288 = arith.divsi %false, %false : i1
        %289 = index.floordivs %c15, %c1
        %c2058539329_i32 = arith.constant 2058539329 : i32
        %290 = bufferization.clone %alloc_22 : memref<16xi32> to memref<16xi32>
        bufferization.dealloc_tensor %20 : tensor<i1>
        %291 = math.ipowi %true, %false : i1
        %rank = tensor.rank %0 : tensor<7x13x16xf32>
        %292 = index.maxs %c3, %281
        %293 = arith.ori %false, %128 : i1
        %294 = vector.extract %24[0] : vector<13x16xf32>
        %295 = index.sub %69, %292
        %296 = math.rsqrt %cst_7 : f32
        %297 = vector.reduction <maxsi>, %39 : vector<16xi1> into i1
        %298 = arith.divsi %128, %true : i1
        %299 = vector.matrix_multiply %19, %38 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 16 : i32} : (vector<7xf16>, vector<16xf16>) -> vector<112xf16>
        %300 = math.atan2 %splat, %splat : tensor<16xf16>
        %cst_51 = arith.constant 1.34055795E+9 : f32
        bufferization.dealloc_tensor %21 : tensor<i1>
        %301 = math.log1p %0 : tensor<7x13x16xf32>
        %302 = math.absi %66 : tensor<16xi16>
        %303 = bufferization.clone %alloc_17 : memref<13x16xf16> to memref<13x16xf16>
        %false_52 = arith.constant false
        linalg.yield %cst_5 : f16
      } -> tensor<7x13x16xf16>
      vector.print %103 : vector<16xf16>
      %271 = index.add %c1, %c15
      %272 = affine.for %arg3 = 0 to 35 iter_args(%arg4 = %cst_8) -> (f16) {
        affine.yield %cst_8 : f16
      }
      %273 = index.sub %c14, %c7
      %274 = math.log %cst_1 : f32
      %alloc_47 = memref.alloc() : memref<16xi32>
      %275 = arith.maxf %cst_0, %cst_9 : f16
      %276 = math.log10 %cst_2 : f32
    }
    %143 = math.ipowi %18, %18 : tensor<16xi16>
    %144 = bufferization.clone %alloc_11 : memref<13x16xf16> to memref<13x16xf16>
    %145 = bufferization.clone %alloc_14 : memref<16xi64> to memref<16xi64>
    %146 = math.ceil %cst_0 : f16
    %147 = math.ipowi %14, %4 : tensor<16xi1>
    %148 = math.round %cst_6 : f32
    %149 = arith.ceildivsi %c-32578_i16, %c27109_i16 : i16
    %150 = bufferization.to_memref %5 : memref<7x13x16xi1>
    %151 = tensor.empty() : tensor<16xi32>
    %152 = math.fpowi %6, %151 : tensor<16xf16>, tensor<16xi32>
    vector.print %44 : vector<7x13x16xf32>
    %153 = arith.divsi %c-20596_i16, %c27109_i16 : i16
    %154 = vector.maskedload %150[%c6, %c2, %c4], %39, %39 : memref<7x13x16xi1>, vector<16xi1>, vector<16xi1> into vector<16xi1>
    %155 = math.atan %13 : tensor<7x13x16xf16>
    %156 = vector.matrix_multiply %65, %103 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf16>, vector<16xf16>) -> vector<1xf16>
    %c361898761_i64 = arith.constant 361898761 : i64
    %157 = vector.broadcast %c-20596_i16 : i16 to vector<i16>
    %158 = vector.transfer_write %157, %15[%30, %c3] : vector<i16>, tensor<13x16xi16>
    %159 = math.ctpop %18 : tensor<16xi16>
    %160 = memref.realloc %alloc : memref<16xi64> to memref<13xi64>
    %161 = vector.broadcast %cst_1 : f32 to vector<5xf32>
    %162 = math.ctlz %14 : tensor<16xi1>
    %163 = index.mul %77, %c14
    scf.index_switch %163 
    case 1 {
      %263 = index.ceildivs %c12, %c2
      %264 = index.castu %263 : index to i32
      %265 = math.fma %6, %6, %6 : tensor<16xf16>
      %266 = arith.maxsi %128, %128 : i1
      %267 = vector.broadcast %true : i1 to vector<7xi1>
      %268 = vector.maskedload %60[%c4], %267, %267 : memref<5xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
      %269 = arith.maxsi %true, %128 : i1
      %270 = arith.shrsi %c0_i32, %c0_i32 : i32
      %271 = arith.negf %cst_0 : f16
      %272 = arith.remsi %c-20596_i16, %c-32578_i16 : i16
      %273 = math.floor %cst_1 : f32
      %274 = math.sqrt %6 : tensor<16xf16>
      %275 = arith.maxf %cst_3, %cst_0 : f16
      %276 = arith.shrsi %c-22643_i16, %c-32578_i16 : i16
      %277 = math.tanh %13 : tensor<7x13x16xf16>
      %278 = arith.minf %cst_6, %cst_4 : f32
      %279 = arith.ceildivsi %128, %true : i1
      scf.yield
    }
    case 2 {
      %263 = arith.minsi %true, %true : i1
      %264 = index.divu %c13, %94
      %265 = bufferization.clone %145 : memref<16xi64> to memref<16xi64>
      %266 = memref.realloc %alloc : memref<16xi64> to memref<7xi64>
      %267 = index.ceildivu %c12, %c6
      %c-25613_i16 = arith.constant -25613 : i16
      %from_elements_45 = tensor.from_elements %cst_8, %cst_3, %cst_8, %cst_3, %cst_8 : tensor<5xf16>
      %268 = scf.while (%arg3 = %145) : (memref<16xi64>) -> memref<16xi64> {
        %274 = math.ipowi %151, %151 : tensor<16xi32>
        %275 = index.mul %c5, %c8
        %276 = vector.broadcast %cst_6 : f32 to vector<13x16xf32>
        %277 = math.log2 %cst_4 : f32
        %278 = arith.remf %cst_2, %cst_2 : f32
        %279 = bufferization.clone %alloc_23 : memref<16xf16> to memref<16xf16>
        %280 = arith.remsi %82, %82 : i64
        %281 = arith.minui %82, %82 : i64
        scf.condition(%true) %arg3 : memref<16xi64>
      } do {
      ^bb0(%arg3: memref<16xi64>):
        %274 = arith.floordivsi %82, %82 : i64
        %275 = index.castu %69 : index to i32
        %276 = bufferization.clone %alloc_25 : memref<16x13xf16> to memref<16x13xf16>
        %277 = index.floordivs %69, %136
        %278 = math.log1p %64 : tensor<13x16xf32>
        %279 = arith.shrui %c27109_i16, %c-20596_i16 : i16
        %280 = index.ceildivu %277, %c11
        %281 = math.ctlz %8 : tensor<13x16xi1>
        %282 = vector.insert %cst_9, %156 [0] : f16 into vector<1xf16>
        %283 = index.mul %26, %120
        %284 = math.ipowi %reduced, %reduced : tensor<16xi16>
        %false = arith.constant false
        memref.assume_alignment %alloc_25, 2 : memref<16x13xf16>
        %285 = bufferization.clone %60 : memref<5xi1> to memref<5xi1>
        %286 = index.casts %122 : index to i32
        %287 = arith.divsi %c-20596_i16, %c-32578_i16 : i16
        scf.yield %alloc_14 : memref<16xi64>
      }
      %269 = index.divu %73, %264
      %true_46 = index.bool.constant true
      %270 = vector.bitcast %23 : vector<13x16xf32> to vector<13x16xf32>
      %271 = arith.xori %true, %true : i1
      scf.if %128 {
        memref.copy %alloc_12, %100 : memref<5xi1> to memref<5xi1>
        %274 = bufferization.clone %alloc_10 : memref<5xi16> to memref<5xi16>
        %275 = math.copysign %cst_3, %cst_9 : f16
        %276 = math.absi %1 : tensor<7x13x16xi32>
        %277 = bufferization.clone %60 : memref<5xi1> to memref<5xi1>
        %278 = index.maxs %c10, %c14
        %c1868875606_i32 = arith.constant 1868875606 : i32
        memref.store %cst_0, %alloc_23[%c2] : memref<16xf16>
      } else {
        %274 = index.castu %c0_i32 : i32 to index
        %275 = arith.ori %c27109_i16, %c-22643_i16 : i16
        %276 = vector.broadcast %cst_0 : f16 to vector<16xf16>
        %277 = math.tanh %cst_9 : f16
        %278 = index.maxs %c12, %120
        %279 = vector.multi_reduction <add>, %276, %cst_9 [0] : vector<16xf16> to f16
        %280 = math.roundeven %6 : tensor<16xf16>
        %281 = vector.create_mask %67 : vector<5xi1>
      }
      %cast_47 = tensor.cast %6 : tensor<16xf16> to tensor<?xf16>
      %272 = vector.matrix_multiply %110, %110 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf32>, vector<16xf32>) -> vector<1xf32>
      %273 = index.maxu %163, %c9
      scf.yield
    }
    default {
      %263 = bufferization.clone %alloc_23 : memref<16xf16> to memref<16xf16>
      %264 = affine.for %arg3 = 0 to 127 iter_args(%arg4 = %29) -> (vector<7xi16>) {
        affine.yield %29 : vector<7xi16>
      }
      %265 = affine.min affine_map<(d0, d1, d2) -> (d2, -(d2 * 2 + 63))>(%c6, %67, %c13)
      %266 = math.powf %3, %3 : tensor<13x16xf32>
      %267 = scf.if %true -> (memref<16xi1>) {
        %278 = arith.divsi %c0_i32, %c0_i32 : i32
        vector.print %116 : vector<7x13x16xf32>
        %collapsed_46 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<7x13x16xi32> into tensor<91x16xi32>
        %279 = index.sizeof
        %280 = math.fpowi %cst_3, %c0_i32 : f16, i32
        %281 = vector.broadcast %c5 : index to vector<13xindex>
        %282 = vector.broadcast %128 : i1 to vector<13xi1>
        %283 = vector.broadcast %82 : i64 to vector<13xi64>
        vector.scatter %alloc_14[%c15] [%281], %282, %283 : memref<16xi64>, vector<13xindex>, vector<13xi1>, vector<13xi64>
        %284 = arith.shli %c-32578_i16, %c27109_i16 : i16
        %285 = vector.extract %40[10] : vector<16xi32>
        scf.yield %alloc_16 : memref<16xi1>
      } else {
        %278 = vector.broadcast %c0_i32 : i32 to vector<7xi32>
        %279 = vector.transfer_write %278, %11[%c5, %73] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi32>, tensor<13x16xi32>
        %280 = arith.divsi %c-32578_i16, %c-20596_i16 : i16
        %281 = math.ctlz %7 : tensor<5xi1>
        %282 = math.expm1 %6 : tensor<16xf16>
        %283 = index.maxu %c11, %c6
        %284 = index.castu %c27109_i16 : i16 to index
        %285 = arith.ceildivsi %true, %128 : i1
        %286 = index.maxs %120, %94
        scf.yield %alloc_16 : memref<16xi1>
      }
      %splat_45 = tensor.splat %c-20596_i16 : tensor<13x16xi16>
      %268 = index.add %c5, %c0
      %269 = math.tanh %cst_5 : f16
      bufferization.dealloc_tensor %14 : tensor<16xi1>
      %270 = vector.transpose %161, [0] : vector<5xf32> to vector<5xf32>
      %271 = tensor.empty(%77, %c5, %34) : tensor<?x?x?xi1>
      %272 = vector.broadcast %cst_6 : f32 to vector<16xf32>
      %273 = vector.fma %272, %272, %110 : vector<16xf32>
      %274 = tensor.empty() : tensor<5xi1>
      %275 = affine.min affine_map<(d0) -> (d0 * 8 - (d0 * 8 + 1) - 32, (d0 * 8 + 1) * 2, -(d0 * 8 + 1) - 64)>(%67)
      %276 = math.log10 %cst_2 : f32
      %277 = index.mul %c6, %34
    }
    %164 = vector.flat_transpose %39 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
    %165 = index.add %122, %56
    %166 = math.ipowi %82, %82 : i64
    %splat_33 = tensor.splat %c-20596_i16 : tensor<7x13x16xi16>
    %167 = arith.addi %true, %true : i1
    %168 = index.divu %c12, %c3
    %169 = arith.cmpf ule, %cst_7, %cst_1 : f32
    %170 = math.exp2 %0 : tensor<7x13x16xf32>
    %171 = arith.ceildivsi %c-22643_i16, %c-22643_i16 : i16
    %172 = math.absf %6 : tensor<16xf16>
    %173 = vector.extract %44[2, 0] : vector<7x13x16xf32>
    %174 = index.castu %77 : index to i32
    memref.assume_alignment %60, 16 : memref<5xi1>
    %175 = arith.cmpi ult, %c-20596_i16, %c-22643_i16 : i16
    %176 = index.divs %26, %c0
    %177 = bufferization.to_tensor %alloc_13 : memref<13x16xi32>
    %178 = math.tanh %splat : tensor<16xf16>
    %179 = math.roundeven %cst : f32
    %180 = index.divu %c8, %77
    %181 = vector.insertelement %true, %164[%c4 : index] : vector<16xi1>
    %182 = scf.index_switch %30 -> index 
    case 1 {
      %263 = index.floordivs %73, %136
      %264 = math.tanh %cst : f32
      %265 = math.tanh %64 : tensor<13x16xf32>
      %splat_45 = tensor.splat %cst_0 : tensor<13x16xf16>
      %266 = vector.broadcast %cst_7 : f32 to vector<16xf32>
      %267 = vector.fma %266, %110, %173 : vector<16xf32>
      %268 = tensor.empty() : tensor<5xf32>
      %269 = arith.maxf %cst_1, %cst_4 : f32
      %alloc_46 = memref.alloc() : memref<13x16xf32>
      %270 = vector.extract %29[4] : vector<7xi16>
      %271 = bufferization.to_tensor %alloc_20 : memref<5xi16>
      bufferization.dealloc_tensor %6 : tensor<16xf16>
      %272 = vector.broadcast %59 : index to vector<5xindex>
      %273 = vector.broadcast %true : i1 to vector<5xi1>
      %274 = vector.broadcast %c27109_i16 : i16 to vector<5xi16>
      vector.scatter %112[%c0] [%272], %273, %274 : memref<16xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
      %275 = vector.broadcast %cst_2 : f32 to vector<7x13x16xf32>
      %276 = vector.fma %275, %44, %43 : vector<7x13x16xf32>
      %277 = scf.if %true -> (memref<16xi1>) {
        %279 = math.log2 %13 : tensor<7x13x16xf16>
        %280 = index.maxu %c9, %c15
        %281 = bufferization.clone %alloc_25 : memref<16x13xf16> to memref<16x13xf16>
        %282 = arith.minf %cst_9, %extracted : f16
        %283 = tensor.empty(%56) : tensor<7x?x16xi32>
        %284 = arith.ori %c0_i32, %c0_i32 : i32
        %splat_48 = tensor.splat %cst_1 : tensor<5xf32>
        %285 = arith.divui %true, %true : i1
        scf.yield %alloc_16 : memref<16xi1>
      } else {
        %279 = math.log2 %cst_5 : f16
        %280 = arith.addi %c-20596_i16, %c-20596_i16 : i16
        %281 = math.ipowi %1, %1 : tensor<7x13x16xi32>
        %282 = arith.minui %c27109_i16, %c27109_i16 : i16
        %283 = arith.addi %c27109_i16, %c-22643_i16 : i16
        %284 = index.sizeof
        vector.print %29 : vector<7xi16>
        %285 = math.absi %20 : tensor<i1>
        scf.yield %alloc_16 : memref<16xi1>
      }
      %extracted_47 = tensor.extract %reduced[%c1] : tensor<16xi16>
      %278 = math.ipowi %15, %2 : tensor<13x16xi16>
      scf.yield %c11 : index
    }
    default {
      %263 = vector.broadcast %cst : f32 to vector<13x16xf32>
      %264 = arith.remsi %true, %true : i1
      %alloc_45 = memref.alloc() : memref<5xf16>
      %alloc_46 = memref.alloc() : memref<16x13xf16>
      memref.copy %alloc_25, %alloc_46 : memref<16x13xf16> to memref<16x13xf16>
      %265 = scf.index_switch %168 -> memref<13x16xf32> 
      case 1 {
        %275 = index.mul %c2, %c10
        %276 = vector.broadcast %cst_2 : f32 to vector<13x16xf32>
        %277 = vector.fma %276, %50, %111 : vector<13x16xf32>
        bufferization.dealloc_tensor %21 : tensor<i1>
        %278 = index.add %120, %59
        %279 = arith.muli %128, %true : i1
        %280 = math.exp2 %cst : f32
        %281 = index.maxu %30, %c9
        %282 = index.ceildivu %165, %165
        %283 = math.exp2 %6 : tensor<16xf16>
        bufferization.dealloc_tensor %cast : tensor<?xi64>
        %284 = math.copysign %3, %3 : tensor<13x16xf32>
        %285 = memref.realloc %alloc_20 : memref<5xi16> to memref<13xi16>
        %286 = arith.cmpi sle, %c-32578_i16, %c-22643_i16 : i16
        %287 = arith.remsi %82, %82 : i64
        %288 = vector.broadcast %128 : i1 to vector<5xi1>
        %289 = vector.broadcast %c0_i32 : i32 to vector<5xi32>
        %290 = vector.gather %100[%c2] [%289], %288, %288 : memref<5xi1>, vector<5xi32>, vector<5xi1>, vector<5xi1> into vector<5xi1>
        %291 = tensor.empty() : tensor<16xf16>
        %alloc_49 = memref.alloc() : memref<13x16xf32>
        scf.yield %alloc_49 : memref<13x16xf32>
      }
      case 2 {
        %275 = arith.shrsi %128, %true : i1
        memref.assume_alignment %alloc_10, 2 : memref<5xi16>
        %276 = arith.cmpi ule, %true, %128 : i1
        %extracted_49 = tensor.extract %12[%c4] : tensor<5xi64>
        %277 = math.cos %cst_6 : f32
        %278 = vector.extract %51[2] : vector<13x16xf32>
        %279 = vector.extract %40[10] : vector<16xi32>
        %280 = arith.xori %82, %extracted_49 : i64
        %from_elements_50 = tensor.from_elements %82, %extracted_49, %82, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %82, %82, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %82, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %82, %extracted_49, %82, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %82, %extracted_49, %82, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %82, %extracted_49, %82, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %82, %82, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %extracted_49, %82, %82, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %82, %82, %82, %82, %82, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %extracted_49, %82, %82, %82, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %82, %extracted_49, %82, %82, %82, %extracted_49, %82, %82, %extracted_49, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %82, %82, %extracted_49, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %82, %82, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %82, %82, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %82, %82, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %82, %82, %extracted_49, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %82, %82, %82, %82, %82, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %82, %82, %82, %82, %82, %82, %extracted_49, %82, %extracted_49, %82, %82, %82, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %82, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %82, %82, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %82, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %82, %extracted_49, %extracted_49, %extracted_49, %extracted_49, %extracted_49 : tensor<7x13x16xi64>
        %281 = vector.splat %34 : vector<7x13x16xindex>
        %c-6418_i16 = arith.constant -6418 : i16
        %alloc_51 = memref.alloc() : memref<5xi64>
        memref.tensor_store %12, %alloc_51 : memref<5xi64>
        affine.store %cst_3, %alloc_17[%c13, %c4] : memref<13x16xf16>
        %282 = vector.broadcast %cst_4 : f32 to vector<7x13x16xf32>
        %283 = arith.minui %82, %82 : i64
        %284 = arith.negf %cst_8 : f16
        %alloc_52 = memref.alloc() : memref<13x16xf32>
        scf.yield %alloc_52 : memref<13x16xf32>
      }
      case 3 {
        %275 = bufferization.to_tensor %alloc_21 : memref<7x13x16xf16>
        %276 = math.tanh %cst_1 : f32
        %277 = vector.broadcast %true : i1 to vector<i1>
        %278 = vector.transfer_write %277, %7[%73] : vector<i1>, tensor<5xi1>
        %true_49 = index.bool.constant true
        bufferization.dealloc_tensor %11 : tensor<13x16xi32>
        %279 = arith.addi %c27109_i16, %c-32578_i16 : i16
        %280 = vector.broadcast %cst_1 : f32 to vector<13xf32>
        %281 = vector.multi_reduction <mul>, %115, %280 [0, 2] : vector<7x13x16xf32> to vector<13xf32>
        %282 = math.ceil %275 : tensor<7x13x16xf16>
        %283 = math.absi %16 : tensor<16xi1>
        %284 = math.ceil %13 : tensor<7x13x16xf16>
        %285 = bufferization.to_tensor %alloc_12 : memref<5xi1>
        %286 = arith.addf %cst_8, %cst_8 : f16
        %287 = math.tanh %275 : tensor<7x13x16xf16>
        %288 = arith.shrsi %128, %128 : i1
        %extracted_50 = tensor.extract %13[%c3, %c6, %c7] : tensor<7x13x16xf16>
        %289 = vector.flat_transpose %156 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %alloc_51 = memref.alloc() : memref<13x16xf32>
        scf.yield %alloc_51 : memref<13x16xf32>
      }
      default {
        %true_49 = arith.constant true
        %275 = math.fma %cst_2, %cst_2, %cst_1 : f32
        %276 = index.divu %c12, %122
        %277 = vector.reduction <minf>, %173 : vector<16xf32> into f32
        %278 = index.divu %136, %c4
        %279 = vector.reduction <minsi>, %40 : vector<16xi32> into i32
        %280 = bufferization.clone %alloc_23 : memref<16xf16> to memref<16xf16>
        %281 = vector.extract %173[0] : vector<16xf32>
        %from_elements_50 = tensor.from_elements %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82 : tensor<13x16xi64>
        %282 = bufferization.to_tensor %alloc_10 : memref<5xi16>
        %283 = math.tanh %cst_3 : f16
        %284 = vector.extract %65[8] : vector<16xf16>
        memref.copy %alloc_12, %60 : memref<5xi1> to memref<5xi1>
        %285 = vector.splat %cst_0 : vector<16xf16>
        %286 = vector.broadcast %cst_1 : f32 to vector<16x7x16xf32>
        %287 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %51, %44, %286 : vector<13x16xf32>, vector<7x13x16xf32> into vector<16x7x16xf32>
        %288 = index.ceildivu %c3, %c1
        %alloc_51 = memref.alloc() : memref<13x16xf32>
        scf.yield %alloc_51 : memref<13x16xf32>
      }
      %266 = memref.alloca_scope  -> (memref<16xi64>) {
        %275 = math.log10 %cst_0 : f16
        %276 = math.ctlz %10 : tensor<5xi1>
        %277 = math.copysign %cst_6, %cst_4 : f32
        %278 = math.fma %cst_1, %cst, %cst_1 : f32
        %279 = index.divu %120, %94
        %280 = math.fma %cst, %cst_4, %cst_2 : f32
        %281 = index.floordivs %122, %279
        %282 = index.maxu %c10, %26
        memref.tensor_store %13, %alloc_21 : memref<7x13x16xf16>
        %283 = arith.maxsi %c-22643_i16, %c-20596_i16 : i16
        %284 = math.tanh %cst_3 : f16
        %285 = math.copysign %3, %3 : tensor<13x16xf32>
        %286 = arith.maxsi %c-32578_i16, %c-20596_i16 : i16
        %c1320332157_i64 = arith.constant 1320332157 : i64
        %287 = math.roundeven %6 : tensor<16xf16>
        %288 = tensor.empty(%73, %c6) : tensor<7x?x?xi16>
        %289 = math.absi %2 : tensor<13x16xi16>
        %290 = arith.ori %c27109_i16, %c-32578_i16 : i16
        %291 = math.log10 %cst_8 : f16
        %292 = arith.ori %c-32578_i16, %c27109_i16 : i16
        %293 = vector.broadcast %128 : i1 to vector<5xi1>
        %294 = vector.broadcast %c0_i32 : i32 to vector<5xi32>
        %295 = vector.gather %64[%c1, %168] [%294], %293, %161 : tensor<13x16xf32>, vector<5xi32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        %296 = index.sizeof
        %collapsed_49 = tensor.collapse_shape %3 [[0, 1]] : tensor<13x16xf32> into tensor<208xf32>
        %297 = arith.addi %c27109_i16, %c-22643_i16 : i16
        %298 = vector.broadcast %cst_4 : f32 to vector<7x13xf32>
        %dest_50, %accumulated_value_51 = vector.scan <mul>, %115, %298 {inclusive = false, reduction_dim = 2 : i64} : vector<7x13x16xf32>, vector<7x13xf32>
        %299 = math.ceil %cst : f32
        %300 = bufferization.to_tensor %alloc_10 : memref<5xi16>
        %301 = vector.broadcast %cst_4 : f32 to vector<7x13x16xf32>
        %302 = vector.fma %301, %115, %43 : vector<7x13x16xf32>
        %303 = vector.bitcast %173 : vector<16xf32> to vector<16xf32>
        bufferization.dealloc_tensor %15 : tensor<13x16xi16>
        %304 = arith.remsi %c-32578_i16, %c-20596_i16 : i16
        %dest_52, %accumulated_value_53 = vector.scan <minf>, %24, %173 {inclusive = true, reduction_dim = 0 : i64} : vector<13x16xf32>, vector<16xf32>
        memref.alloca_scope.return %145 : memref<16xi64>
      }
      %267 = index.divs %c6, %30
      %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %161, %161, %cst_2 : vector<5xf32>, vector<5xf32> into f32
      %269 = arith.shrsi %c27109_i16, %c-32578_i16 : i16
      %270 = index.castu %26 : index to i32
      %splat_47 = tensor.splat %82 : tensor<16xi64>
      %generated_48 = tensor.generate %77 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %275 = vector.broadcast %82 : i64 to vector<5xi64>
        %276 = math.roundeven %extracted : f16
        %277 = math.ctlz %1 : tensor<7x13x16xi32>
        %278 = affine.max affine_map<(d0, d1) -> (d1 mod 2, d1 mod 2 - 1, d1 + 128)>(%c11, %arg3)
        tensor.yield %c-20596_i16 : i16
      } : tensor<?x13x16xi16>
      %271 = arith.shli %c27109_i16, %c-20596_i16 : i16
      %272 = arith.shrsi %true, %true : i1
      %273 = arith.divsi %82, %82 : i64
      %274 = math.exp %cst_2 : f32
      scf.yield %34 : index
    }
    affine.store %true, %alloc_15[%c1, %c9] : memref<13x16xi1>
    %183 = index.divs %136, %c9
    %184 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %40, %40, %c0_i32 : vector<16xi32>, vector<16xi32> into i32
    %185 = math.log10 %cst_6 : f32
    %186 = vector.broadcast %cst_7 : f32 to vector<7x13x16xf32>
    %187 = vector.fma %186, %116, %43 : vector<7x13x16xf32>
    %splat_34 = tensor.splat %cst_8 : tensor<16xf16>
    %188 = index.mul %165, %c3
    %189 = arith.divui %true, %true : i1
    %190 = index.add %183, %56
    %191 = bufferization.clone %alloc_23 : memref<16xf16> to memref<16xf16>
    %192 = bufferization.to_memref %7 : memref<5xi1>
    %alloc_35 = memref.alloc() : memref<5xi64>
    %193 = vector.broadcast %82 : i64 to vector<5xi64>
    %194 = vector.broadcast %128 : i1 to vector<5xi1>
    %195 = vector.broadcast %c0_i32 : i32 to vector<5xi32>
    %196 = vector.gather %alloc_35[%c4] [%195], %194, %193 : memref<5xi64>, vector<5xi32>, vector<5xi1>, vector<5xi64> into vector<5xi64>
    %197 = vector.broadcast %cst_9 : f16 to vector<5xf16>
    %198 = affine.if affine_set<(d0) : (0 >= 0, -d0 >= 0, d0 * 32 - 8 >= 0)>(%c14) -> f32 {
      %263 = index.mul %168, %188
      %264 = math.round %cst_4 : f32
      %265 = arith.maxsi %c-20596_i16, %c-32578_i16 : i16
      memref.assume_alignment %alloc_13, 2 : memref<13x16xi32>
      %266 = scf.if %true -> (memref<7x13x16xi32>) {
        %269 = math.floor %extracted : f16
        %270 = math.ctlz %151 : tensor<16xi32>
        %271 = math.absi %14 : tensor<16xi1>
        %272 = vector.maskedload %alloc_12[%c3], %164, %39 : memref<5xi1>, vector<16xi1>, vector<16xi1> into vector<16xi1>
        %273 = affine.min affine_map<(d0, d1) -> (d1 floordiv 32, d0 floordiv 32 - d1 floordiv 4)>(%c0, %168)
        %274 = index.maxu %c15, %c4
        %c144329586_i32 = arith.constant 144329586 : i32
        %275 = index.divs %67, %c10
        %alloc_45 = memref.alloc() : memref<7x13x16xi32>
        scf.yield %alloc_45 : memref<7x13x16xi32>
      } else {
        %269 = vector.broadcast %cst_1 : f32 to vector<7x16xf32>
        %dest_45, %accumulated_value_46 = vector.scan <maxf>, %186, %269 {inclusive = false, reduction_dim = 1 : i64} : vector<7x13x16xf32>, vector<7x16xf32>
        %270 = index.mul %136, %34
        %271 = math.exp %cst_2 : f32
        %272 = index.add %77, %122
        memref.store %82, %alloc[%c9] : memref<16xi64>
        %dest_47, %accumulated_value_48 = vector.scan <add>, %50, %110 {inclusive = true, reduction_dim = 0 : i64} : vector<13x16xf32>, vector<16xf32>
        %273 = math.floor %cst_4 : f32
        %274 = arith.maxui %c0_i32, %c0_i32 : i32
        %alloc_49 = memref.alloc() : memref<7x13x16xi32>
        scf.yield %alloc_49 : memref<7x13x16xi32>
      }
      scf.if %128 {
        %269 = math.fma %cst_4, %cst_6, %cst_7 : f32
        %cst_45 = arith.constant 1.64269658E+9 : f32
        %270 = math.ceil %3 : tensor<13x16xf32>
        %271 = arith.maxsi %true, %128 : i1
        %272 = math.absf %13 : tensor<7x13x16xf16>
        %273 = math.ipowi %4, %4 : tensor<16xi1>
        %274 = math.floor %splat_34 : tensor<16xf16>
        %275 = arith.subi %c0_i32, %c0_i32 : i32
      }
      %267 = arith.divsi %c27109_i16, %c-20596_i16 : i16
      %268 = vector.extract %196[1] : vector<5xi64>
      affine.yield %cst : f32
    } else {
      %263 = math.copysign %cst_3, %cst_3 : f16
      %264 = arith.xori %true, %128 : i1
      %265 = math.ipowi %177, %splat_32 : tensor<13x16xi32>
      %266 = math.copysign %cst_2, %cst : f32
      %267 = bufferization.to_tensor %alloc_21 : memref<7x13x16xf16>
      %268 = math.rsqrt %13 : tensor<7x13x16xf16>
      %269 = arith.muli %c0_i32, %c0_i32 : i32
      %270 = arith.floordivsi %c0_i32, %c0_i32 : i32
      affine.yield %cst_2 : f32
    }
    %199 = bufferization.to_memref %5 : memref<7x13x16xi1>
    %200 = scf.index_switch %165 -> tensor<16xf32> 
    case 1 {
      %263 = math.atan2 %cst_4, %cst : f32
      %264 = vector.transpose %116, [1, 0, 2] : vector<7x13x16xf32> to vector<13x7x16xf32>
      %265 = arith.ceildivsi %true, %128 : i1
      %266 = math.ceil %cst_9 : f16
      %267 = arith.shrsi %82, %82 : i64
      %268 = math.log10 %0 : tensor<7x13x16xf32>
      %269 = math.ipowi %151, %151 : tensor<16xi32>
      %270 = arith.remf %cst_1, %cst : f32
      memref.copy %alloc_23, %191 : memref<16xf16> to memref<16xf16>
      %271 = arith.addi %c27109_i16, %c-20596_i16 : i16
      %272 = vector.extract %156[0] : vector<1xf16>
      %273 = index.maxs %c10, %69
      %274 = arith.cmpf olt, %cst_1, %cst_2 : f32
      %275 = math.atan %cst_1 : f32
      %276 = affine.min affine_map<(d0, d1, d2) -> (d1 ceildiv 128, ((d0 - d1 + 2) floordiv 8) floordiv 2, d0 + 2)>(%180, %163, %c15)
      %277 = index.floordivs %188, %67
      %278 = tensor.empty() : tensor<16xf32>
      scf.yield %278 : tensor<16xf32>
    }
    case 2 {
      %263 = math.ipowi %reduced, %reduced : tensor<16xi16>
      %264 = index.divu %69, %26
      vector.print %187 : vector<7x13x16xf32>
      %splat_45 = tensor.splat %128 : tensor<5xi1>
      %265 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, (d2 mod 128) ceildiv 16, d1 ceildiv 16, d1 ceildiv 16 - 8)>(%73, %c6, %120, %c0)
      %266 = math.round %13 : tensor<7x13x16xf16>
      %cst_46 = arith.constant 0x4D1728A7 : f32
      %267 = math.fma %cst_1, %cst, %cst : f32
      memref.store %cst_3, %alloc_23[%c2] : memref<16xf16>
      %268 = index.divs %c3, %c6
      %269 = arith.shrsi %82, %82 : i64
      %270 = arith.shli %128, %128 : i1
      %271 = arith.maxui %128, %true : i1
      %272 = arith.xori %c27109_i16, %c-20596_i16 : i16
      %273 = memref.realloc %60 : memref<5xi1> to memref<5xi1>
      %274 = index.divu %c1, %c11
      %275 = tensor.empty() : tensor<16xf32>
      scf.yield %275 : tensor<16xf32>
    }
    case 3 {
      %263 = index.castu %26 : index to i32
      %264 = math.log %cst : f32
      %265 = math.atan2 %cst_8, %cst_9 : f16
      %alloc_45 = memref.alloc() : memref<16xf32>
      %266 = vector.gather %alloc_45[%94] [%195], %194, %161 : memref<16xf32>, vector<5xi32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
      %267 = arith.xori %c-22643_i16, %c-22643_i16 : i16
      %alloc_46 = memref.alloc() : memref<7x13x16xi16>
      %268 = math.absi %66 : tensor<16xi16>
      %269 = math.fma %cst_0, %cst_8, %cst_8 : f16
      %270 = bufferization.clone %alloc_24 : memref<13x16xi64> to memref<13x16xi64>
      %271 = tensor.empty() : tensor<7x16x13xf32>
      %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_45, %271 : memref<16xf32>, tensor<7x16x13xf32>) outs(%0 : tensor<7x13x16xf32>) {
      ^bb0(%in: f32, %in_49: f32, %out: f32):
        %279 = vector.matrix_multiply %173, %161 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 5 : i32} : (vector<16xf32>, vector<5xf32>) -> vector<80xf32>
        %280 = vector.insertelement %cst_5, %103[%122 : index] : vector<16xf16>
        %281 = arith.ori %128, %128 : i1
        %282 = math.absf %3 : tensor<13x16xf32>
        %283 = index.ceildivs %56, %73
        %284 = index.sizeof
        %285 = math.log10 %in_49 : f32
        %286 = arith.minsi %c0_i32, %c0_i32 : i32
        %287 = math.ipowi %11, %11 : tensor<13x16xi32>
        bufferization.dealloc_tensor %15 : tensor<13x16xi16>
        %cast_50 = tensor.cast %4 : tensor<16xi1> to tensor<?xi1>
        %288 = bufferization.to_memref %11 : memref<13x16xi32>
        %289 = index.castu %c27109_i16 : i16 to index
        %290 = arith.remsi %c0_i32, %c0_i32 : i32
        %291 = math.exp %6 : tensor<16xf16>
        %292 = arith.divsi %82, %82 : i64
        %293 = arith.muli %82, %82 : i64
        %294 = arith.shrsi %82, %82 : i64
        %295 = vector.extract %195[3] : vector<5xi32>
        %splat_51 = tensor.splat %128 : tensor<5xi1>
        %296 = index.mul %289, %188
        %297 = index.sub %122, %73
        %298 = arith.shli %c-20596_i16, %c27109_i16 : i16
        %299 = math.fpowi %splat, %151 : tensor<16xf16>, tensor<16xi32>
        %300 = math.floor %3 : tensor<13x16xf32>
        %301 = index.maxu %59, %183
        %302 = math.ipowi %20, %20 : tensor<i1>
        %303 = bufferization.clone %alloc_11 : memref<13x16xf16> to memref<13x16xf16>
        %304 = math.powf %6, %6 : tensor<16xf16>
        %305 = math.round %cst_1 : f32
        %306 = bufferization.to_tensor %alloc : memref<16xi64>
        %cast_52 = tensor.cast %15 : tensor<13x16xi16> to tensor<?x?xi16>
        linalg.yield %cst_6 : f32
      } -> tensor<7x13x16xf32>
      %273 = math.tanh %cst : f32
      %false = arith.constant false
      %false_47 = arith.constant false
      %274 = vector.transfer_read %14[%c15], %false_47 : tensor<16xi1>, vector<i1>
      %extracted_48 = tensor.extract %3[%c3, %c1] : tensor<13x16xf32>
      %275 = vector.extract %193[0] : vector<5xi64>
      %276 = scf.while (%arg3 = %cst_1) : (f32) -> f32 {
        %279 = arith.maxsi %true, %128 : i1
        %280 = arith.addf %cst, %cst_7 : f32
        %281 = arith.xori %c-32578_i16, %c27109_i16 : i16
        %282 = math.floor %cst : f32
        affine.store %c-32578_i16, %112[%c14] : memref<16xi16>
        %283 = math.expm1 %cst_9 : f16
        %284 = memref.realloc %112 : memref<16xi16> to memref<13xi16>
        %285 = arith.addi %82, %82 : i64
        scf.condition(%false) %cst_2 : f32
      } do {
      ^bb0(%arg3: f32):
        %279 = math.log2 %cst_7 : f32
        %280 = math.log2 %3 : tensor<13x16xf32>
        %281 = vector.create_mask %c9 : vector<16xi1>
        %282 = math.ctlz %4 : tensor<16xi1>
        %283 = math.log2 %cst_0 : f16
        %dest_49, %accumulated_value_50 = vector.scan <minf>, %187, %51 {inclusive = true, reduction_dim = 0 : i64} : vector<7x13x16xf32>, vector<13x16xf32>
        bufferization.dealloc_tensor %12 : tensor<5xi64>
        %284 = arith.floordivsi %c-32578_i16, %c-32578_i16 : i16
        %285 = index.divs %77, %67
        %286 = arith.xori %c-22643_i16, %c27109_i16 : i16
        %287 = arith.ori %false, %128 : i1
        %288 = arith.floordivsi %true, %128 : i1
        memref.assume_alignment %alloc_13, 2 : memref<13x16xi32>
        %289 = index.divs %180, %c15
        %290 = math.tanh %cst_1 : f32
        %291 = vector.broadcast %cst : f32 to vector<5xf32>
        %292 = vector.fma %291, %266, %266 : vector<5xf32>
        scf.yield %cst_1 : f32
      }
      %277 = arith.shrsi %c0_i32, %c0_i32 : i32
      %278 = tensor.empty() : tensor<16xf32>
      scf.yield %278 : tensor<16xf32>
    }
    case 4 {
      %263 = index.divu %c10, %190
      %264 = index.floordivs %26, %c0
      %265 = math.ctpop %128 : i1
      %266 = index.mul %c0, %c4
      %267 = bufferization.clone %191 : memref<16xf16> to memref<16xf16>
      %268 = math.round %cst_2 : f32
      %269 = arith.floordivsi %true, %128 : i1
      scf.if %true {
        %277 = arith.maxf %cst_4, %cst_1 : f32
        %278 = tensor.empty() : tensor<5xf16>
        %279 = math.ipowi %16, %14 : tensor<16xi1>
        %280 = math.floor %cst_6 : f32
        %281 = arith.xori %c27109_i16, %c-32578_i16 : i16
        %282 = arith.floordivsi %c-32578_i16, %c27109_i16 : i16
        %283 = index.ceildivs %73, %34
        %284 = math.ctlz %17 : tensor<16xi1>
      }
      %270 = index.add %94, %176
      %271 = math.ipowi %c27109_i16, %c-20596_i16 : i16
      %272 = math.ceil %3 : tensor<13x16xf32>
      %alloc_45 = memref.alloc() : memref<16xi32>
      %splat_46 = tensor.splat %cst_9 : tensor<7x13x16xf16>
      %273 = math.ipowi %95, %11 : tensor<13x16xi32>
      %274 = arith.remf %cst_0, %extracted : f16
      %275 = vector.broadcast %cst_2 : f32 to vector<5xf32>
      %276 = tensor.empty() : tensor<16xf32>
      scf.yield %276 : tensor<16xf32>
    }
    default {
      %263 = vector.bitcast %116 : vector<7x13x16xf32> to vector<7x13x16xf32>
      %264 = arith.xori %c0_i32, %c0_i32 : i32
      %265 = tensor.empty(%73, %122, %77) : tensor<?x?x?xi64>
      vector.print %39 : vector<16xi1>
      %266 = arith.remsi %82, %82 : i64
      %267 = arith.floordivsi %82, %82 : i64
      %268 = arith.remf %cst_3, %extracted : f16
      %269 = math.fma %cst_5, %extracted, %cst_9 : f16
      %270 = arith.shli %c-32578_i16, %c-20596_i16 : i16
      %271 = arith.maxsi %128, %true : i1
      %272 = vector.broadcast %true : i1 to vector<i1>
      %273 = vector.transfer_write %272, %7[%87] : vector<i1>, tensor<5xi1>
      %274 = math.fpowi %6, %151 : tensor<16xf16>, tensor<16xi32>
      %275 = index.ceildivs %87, %c6
      %276 = vector.extract %193[3] : vector<5xi64>
      %277 = math.atan %0 : tensor<7x13x16xf32>
      %278 = index.ceildivu %120, %c3
      %279 = tensor.empty() : tensor<16xf32>
      scf.yield %279 : tensor<16xf32>
    }
    %201 = arith.shli %82, %82 : i64
    %202 = math.exp %cst_0 : f16
    %splat_36 = tensor.splat %cst_1 : tensor<5xf32>
    %203 = math.log %6 : tensor<16xf16>
    %204 = math.round %extracted : f16
    %205 = index.sub %168, %c8
    %206 = math.ctlz %8 : tensor<13x16xi1>
    %207 = arith.maxf %cst_7, %cst_4 : f32
    %208 = tensor.empty() : tensor<7xf16>
    %alloc_37 = memref.alloc() : memref<7x16x13xf16>
    %209 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%208, %alloc_37 : tensor<7xf16>, memref<7x16x13xf16>) outs(%13 : tensor<7x13x16xf16>) {
    ^bb0(%in: f16, %in_45: f16, %out: f16):
      %263 = vector.broadcast %c-32578_i16 : i16 to vector<7xi16>
      %264 = vector.transfer_write %263, %15[%183, %c11] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi16>, tensor<13x16xi16>
      %265 = bufferization.clone %150 : memref<7x13x16xi1> to memref<7x13x16xi1>
      %266 = math.absi %4 : tensor<16xi1>
      %267 = vector.reduction <mul>, %156 : vector<1xf16> into f16
      %268 = math.roundeven %cst_4 : f32
      %269 = tensor.empty() : tensor<16xi16>
      %inserted_46 = tensor.insert %cst_1 into %0[%c2, %c10, %c13] : tensor<7x13x16xf32>
      %270 = vector.broadcast %128 : i1 to vector<7xi1>
      vector.transfer_write %270, %alloc_15[%c11, %120] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi1>, memref<13x16xi1>
      %271 = arith.divsi %true, %128 : i1
      %272 = vector.extract %154[10] : vector<16xi1>
      %273 = math.round %cst_1 : f32
      %274 = arith.xori %c0_i32, %c0_i32 : i32
      %275 = arith.floordivsi %c-20596_i16, %c27109_i16 : i16
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%5 : tensor<7x13x16xi1>) {
      ^bb0(%out_47: i1):
        %294 = vector.matrix_multiply %40, %40 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xi32>, vector<16xi32>) -> vector<1xi32>
        %295 = vector.broadcast %c-22643_i16 : i16 to vector<16xi16>
        %296 = index.floordivs %c13, %59
        %297 = vector.broadcast %c-20596_i16 : i16 to vector<i16>
        vector.transfer_write %297, %alloc_10[%87] : vector<i16>, memref<5xi16>
        %298 = index.maxu %73, %c14
        %cast_48 = tensor.cast %5 : tensor<7x13x16xi1> to tensor<?x?x?xi1>
        %299 = arith.addi %c-22643_i16, %c-32578_i16 : i16
        %300 = math.copysign %in, %out : f16
        %301 = math.fpowi %cst_1, %c0_i32 : f32, i32
        %from_elements_49 = tensor.from_elements %c27109_i16, %c-20596_i16, %c27109_i16, %c-32578_i16, %c27109_i16, %c-32578_i16, %c-20596_i16, %c-22643_i16, %c-22643_i16, %c27109_i16, %c-22643_i16, %c-32578_i16, %c-20596_i16, %c27109_i16, %c-22643_i16, %c-32578_i16, %c-32578_i16, %c-32578_i16, %c-22643_i16, %c-22643_i16, %c-22643_i16, %c-22643_i16, %c-20596_i16, %c-20596_i16, %c27109_i16, %c-32578_i16, %c-20596_i16, %c-20596_i16, %c27109_i16, %c-22643_i16, %c-32578_i16, %c-22643_i16, %c-32578_i16, %c-32578_i16, %c-20596_i16, %c27109_i16, %c27109_i16, %c-32578_i16, %c27109_i16, %c-22643_i16, %c-32578_i16, %c27109_i16, %c-20596_i16, %c27109_i16, %c27109_i16, %c-20596_i16, %c-20596_i16, %c27109_i16, %c-22643_i16, %c-22643_i16, %c-22643_i16, %c27109_i16, %c-22643_i16, %c27109_i16, %c-22643_i16, %c27109_i16, %c-20596_i16, %c-32578_i16, %c-32578_i16, %c-20596_i16, %c27109_i16, %c-20596_i16, %c-22643_i16, %c-32578_i16, %c-20596_i16, %c-22643_i16, %c-20596_i16, %c-22643_i16, %c-32578_i16, %c-32578_i16, %c-22643_i16, %c27109_i16, %c-20596_i16, %c-32578_i16, %c27109_i16, %c-20596_i16, %c-32578_i16, %c-32578_i16, %c27109_i16, %c-32578_i16, %c27109_i16, %c-22643_i16, %c-20596_i16, %c-32578_i16, %c-20596_i16, %c-32578_i16, %c-32578_i16, %c27109_i16, %c-32578_i16, %c-20596_i16, %c27109_i16, %c-20596_i16, %c-22643_i16, %c-20596_i16, %c-32578_i16, %c-22643_i16, %c-32578_i16, %c-32578_i16, %c-22643_i16, %c-22643_i16, %c-20596_i16, %c27109_i16, %c-20596_i16, %c-20596_i16, %c27109_i16, %c-20596_i16, %c-32578_i16, %c27109_i16, %c27109_i16, %c-20596_i16, %c-32578_i16, %c-20596_i16, %c-20596_i16, %c27109_i16, %c-32578_i16, %c27109_i16, %c27109_i16, %c-22643_i16, %c-20596_i16, %c-32578_i16, %c-32578_i16, %c-22643_i16, %c27109_i16, %c-20596_i16, %c27109_i16, %c-22643_i16, %c-32578_i16, %c27109_i16, %c27109_i16, %c27109_i16, %c27109_i16, %c27109_i16, %c-20596_i16, %c-32578_i16, %c-32578_i16, %c27109_i16, %c-32578_i16, %c-22643_i16, %c-20596_i16, %c-22643_i16, %c-22643_i16, %c-32578_i16, %c27109_i16, %c-22643_i16, %c27109_i16, %c27109_i16, %c27109_i16, %c-22643_i16, %c27109_i16, %c-20596_i16, %c27109_i16, %c-22643_i16, %c-20596_i16, %c27109_i16, %c27109_i16, %c-22643_i16, %c-32578_i16, %c-20596_i16, %c-20596_i16, %c27109_i16, %c27109_i16, %c-32578_i16, %c-22643_i16, %c-32578_i16, %c-32578_i16, %c-22643_i16, %c27109_i16, %c-32578_i16, %c-22643_i16, %c-20596_i16, %c-32578_i16, %c-22643_i16, %c-20596_i16, %c-32578_i16, %c-20596_i16, %c-20596_i16, %c-20596_i16, %c-22643_i16, %c-22643_i16, %c-22643_i16, %c27109_i16, %c-20596_i16, %c-22643_i16, %c-22643_i16, %c-20596_i16, %c-32578_i16, %c27109_i16, %c-20596_i16, %c-32578_i16, %c-20596_i16, %c-20596_i16, %c-22643_i16, %c-32578_i16, %c-32578_i16, %c-32578_i16, %c-32578_i16, %c-32578_i16, %c27109_i16, %c-22643_i16, %c-22643_i16, %c27109_i16, %c-20596_i16, %c-20596_i16, %c-32578_i16, %c27109_i16, %c-20596_i16, %c27109_i16, %c-20596_i16 : tensor<13x16xi16>
        memref.assume_alignment %alloc_12, 1 : memref<5xi1>
        %extracted_50 = tensor.extract %6[%c3] : tensor<16xf16>
        %302 = arith.divsi %c-32578_i16, %c-22643_i16 : i16
        %303 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %263, %263, %c-32578_i16 : vector<7xi16>, vector<7xi16> into i16
        %304 = math.ipowi %15, %2 : tensor<13x16xi16>
        %305 = vector.broadcast %cst_6 : f32 to vector<13x16xf32>
        %306 = vector.fma %305, %50, %111 : vector<13x16xf32>
        %307 = math.ceil %cst_8 : f16
        %308 = index.floordivs %298, %122
        %309 = math.ctpop %1 : tensor<7x13x16xi32>
        memref.copy %150, %265 : memref<7x13x16xi1> to memref<7x13x16xi1>
        %310 = math.fpowi %cst_3, %c0_i32 : f16, i32
        %311 = math.ceil %extracted : f16
        %312 = arith.ori %out_47, %true : i1
        %313 = vector.broadcast %cst_1 : f32 to vector<16xf32>
        %314 = vector.fma %313, %110, %313 : vector<16xf32>
        %315 = vector.broadcast %cst : f32 to vector<13x16xf32>
        %316 = vector.fma %315, %50, %50 : vector<13x16xf32>
        %317 = math.cos %splat_34 : tensor<16xf16>
        %splat_51 = tensor.splat %extracted : tensor<7x13x16xf16>
        %318 = index.maxu %188, %168
        %319 = index.castu %168 : index to i32
        %320 = math.sqrt %splat_36 : tensor<5xf32>
        %321 = vector.broadcast %cst_2 : f32 to vector<7x13x16xf32>
        %322 = vector.fma %321, %321, %43 : vector<7x13x16xf32>
        %323 = vector.insertelement %82, %196[%168 : index] : vector<5xi64>
        linalg.yield %128 : i1
      } -> tensor<7x13x16xi1>
      %277 = arith.floordivsi %82, %82 : i64
      %278 = arith.shrsi %c-20596_i16, %c-20596_i16 : i16
      %279 = vector.bitcast %39 : vector<16xi1> to vector<16xi1>
      %280 = math.atan2 %splat, %splat : tensor<16xf16>
      %281 = index.add %c10, %c7
      %282 = vector.reduction <add>, %65 : vector<16xf16> into f16
      memref.assume_alignment %192, 8 : memref<5xi1>
      %283 = vector.broadcast %extracted : f16 to vector<f16>
      vector.transfer_write %283, %alloc_21[%122, %183, %c10] : vector<f16>, memref<7x13x16xf16>
      %284 = index.sub %c11, %190
      %285 = math.exp %0 : tensor<7x13x16xf32>
      %286 = tensor.empty() : tensor<16xi32>
      %287 = math.ctlz %1 : tensor<7x13x16xi32>
      %288 = scf.while (%arg3 = %38) : (vector<16xf16>) -> vector<16xf16> {
        %294 = vector.broadcast %cst : f32 to vector<13xf32>
        %295 = vector.transfer_write %294, %0[%c13, %c13, %176] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<13xf32>, tensor<7x13x16xf32>
        %296 = math.ipowi %10, %10 : tensor<5xi1>
        %297 = arith.ceildivsi %c-20596_i16, %c-22643_i16 : i16
        %298 = arith.maxui %c-20596_i16, %c-32578_i16 : i16
        %299 = arith.ori %128, %true : i1
        %300 = index.divu %26, %87
        %301 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 - 122, d3 - 122, d2 * 2)>(%136, %c2, %c9, %180)
        %302 = vector.create_mask %c6, %34, %c9 : vector<7x13x16xi1>
        scf.condition(%true) %65 : vector<16xf16>
      } do {
      ^bb0(%arg3: vector<16xf16>):
        %splat_47 = tensor.splat %true : tensor<13x16xi1>
        %294 = arith.floordivsi %true, %128 : i1
        %cst_48 = arith.constant 1.000000e+00 : f16
        %cst_49 = arith.constant 0.000000e+00 : f16
        %295 = vector.transfer_read %splat[%c4], %cst_49 : tensor<16xf16>, vector<f16>
        %296 = vector.broadcast %true : i1 to vector<13xi1>
        vector.transfer_write %296, %alloc_15[%94, %59] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<13xi1>, memref<13x16xi1>
        memref.assume_alignment %alloc_19, 2 : memref<5xf16>
        %297 = affine.min affine_map<(d0) -> ((-d0) mod 32 - d0)>(%163)
        memref.tensor_store %269, %112 : memref<16xi16>
        bufferization.dealloc_tensor %8 : tensor<13x16xi1>
        memref.copy %alloc_12, %100 : memref<5xi1> to memref<5xi1>
        %298 = arith.minui %true, %128 : i1
        %299 = index.sizeof
        %300 = vector.insert %110, %44 [1, 0] : vector<16xf32> into vector<7x13x16xf32>
        %inserted_50 = tensor.insert %128 into %8[%c10, %c3] : tensor<13x16xi1>
        %301 = arith.ceildivsi %c-22643_i16, %c-20596_i16 : i16
        %cst_51 = arith.constant 0x4D88A87D : f32
        %302 = arith.shli %true, %true : i1
        scf.yield %41 : vector<16xf16>
      }
      %289 = arith.divsi %128, %128 : i1
      %290 = vector.extract %193[0] : vector<5xi64>
      %291 = index.ceildivs %176, %c15
      %292 = math.absi %5 : tensor<7x13x16xi1>
      %293 = math.powf %0, %0 : tensor<7x13x16xf32>
      linalg.yield %cst_0 : f16
    } -> tensor<7x13x16xf16>
    %210 = index.mul %34, %c1
    %211 = math.atan %cst_8 : f16
    %212 = math.rsqrt %cst_9 : f16
    %213 = affine.load %112[%c7] : memref<16xi16>
    %214 = index.divu %26, %73
    %215 = arith.addi %128, %true : i1
    %216 = vector.shuffle %39, %39 [1, 3, 4, 5, 6, 8, 10, 12, 17, 19, 20, 22, 24, 26, 30] : vector<16xi1>, vector<16xi1>
    %217 = arith.minsi %82, %82 : i64
    %218 = math.atan %0 : tensor<7x13x16xf32>
    %219 = math.copysign %64, %3 : tensor<13x16xf32>
    %220 = math.rsqrt %13 : tensor<7x13x16xf16>
    %221 = arith.addi %c0_i32, %c0_i32 : i32
    %222 = math.round %cst_7 : f32
    %223 = bufferization.to_memref %1 : memref<7x13x16xi32>
    %224 = arith.ori %c-22643_i16, %c-22643_i16 : i16
    vector.print %23 : vector<13x16xf32>
    %225 = arith.shrui %82, %82 : i64
    %c0_i64 = arith.constant 0 : i64
    %c0_i64_38 = arith.constant 0 : i64
    %226 = vector.transfer_read %alloc[%120], %c0_i64_38 : memref<16xi64>, vector<i64>
    %generated_39 = tensor.generate %190 {
    ^bb0(%arg3: index):
      affine.store %82, %alloc_24[%c7, %c14] : memref<13x16xi64>
      %263 = arith.maxsi %c-32578_i16, %c-32578_i16 : i16
      %264 = index.maxu %56, %120
      %265 = vector.broadcast %cst_7 : f32 to vector<7x16xf32>
      %dest_45, %accumulated_value_46 = vector.scan <add>, %115, %265 {inclusive = false, reduction_dim = 1 : i64} : vector<7x13x16xf32>, vector<7x16xf32>
      tensor.yield %true : i1
    } : tensor<?xi1>
    memref.store %82, %alloc[%c7] : memref<16xi64>
    %227 = arith.ori %true, %128 : i1
    %228 = arith.addi %128, %128 : i1
    %229 = math.floor %cst_1 : f32
    %230 = arith.shrsi %c0_i32, %c0_i32 : i32
    %231 = vector.multi_reduction <add>, %156, %156 [] : vector<1xf16> to vector<1xf16>
    %232 = math.exp2 %cst_2 : f32
    %cast_40 = tensor.cast %5 : tensor<7x13x16xi1> to tensor<?x?x?xi1>
    %233 = math.exp2 %6 : tensor<16xf16>
    %234 = tensor.empty(%163) : tensor<?xi1>
    %235 = index.mul %56, %214
    %236 = index.sizeof
    %237 = vector.broadcast %cst_1 : f32 to vector<7x13x16xf32>
    %238 = vector.fma %237, %237, %186 : vector<7x13x16xf32>
    %cst_41 = arith.constant 5.292800e+04 : f16
    %239 = arith.maxf %cst_4, %cst_4 : f32
    %collapsed = tensor.collapse_shape %64 [[0, 1]] : tensor<13x16xf32> into tensor<208xf32>
    %c1_i64 = arith.constant 1 : i64
    %240 = vector.transfer_read %12[%122], %c1_i64 : tensor<5xi64>, vector<i64>
    %241 = math.exp %cst_8 : f16
    %242 = math.round %cst_4 : f32
    %243 = vector.insert %c1_i64, %193 [2] : i64 into vector<5xi64>
    %244 = index.castu %82 : i64 to index
    %245 = math.floor %cst : f32
    %246 = math.tan %cst_7 : f32
    %247 = index.maxs %c11, %c11
    %from_elements = tensor.from_elements %c0_i32, %c0_i32, %c0_i32, %c0_i32, %c0_i32 : tensor<5xi32>
    %248 = scf.index_switch %67 -> f32 
    case 1 {
      %263 = index.sizeof
      %264 = arith.floordivsi %c27109_i16, %c27109_i16 : i16
      %265 = bufferization.clone %144 : memref<13x16xf16> to memref<13x16xf16>
      %266 = math.exp2 %13 : tensor<7x13x16xf16>
      %267 = scf.while (%arg3 = %193) : (vector<5xi64>) -> vector<5xi64> {
        %278 = vector.broadcast %128 : i1 to vector<13x16xi1>
        %279 = vector.broadcast %c0_i32 : i32 to vector<13x16xi32>
        %280 = vector.gather %7[%190] [%279], %278, %278 : tensor<5xi1>, vector<13x16xi32>, vector<13x16xi1>, vector<13x16xi1> into vector<13x16xi1>
        %281 = arith.minui %c-32578_i16, %213 : i16
        %282 = math.copysign %splat_36, %splat_36 : tensor<5xf32>
        %283 = math.cos %cst_5 : f16
        %284 = memref.realloc %145 : memref<16xi64> to memref<13xi64>
        %285 = arith.maxui %c-32578_i16, %c-22643_i16 : i16
        %286 = index.divu %188, %214
        %287 = arith.muli %c27109_i16, %c-22643_i16 : i16
        scf.condition(%128) %193 : vector<5xi64>
      } do {
      ^bb0(%arg3: vector<5xi64>):
        %false = arith.constant false
        %false_47 = arith.constant false
        %278 = vector.transfer_read %86[%c13], %false_47 : memref<5xi1>, vector<i1>
        bufferization.dealloc_tensor %9 : tensor<5xi16>
        %cast_48 = tensor.cast %2 : tensor<13x16xi16> to tensor<?x?xi16>
        %279 = arith.ceildivsi %213, %213 : i16
        memref.store %cst_5, %alloc_17[%c4, %c6] : memref<13x16xf16>
        %splat_49 = tensor.splat %cst_0 : tensor<13x16xf16>
        %280 = tensor.empty() : tensor<13x16xi1>
        %281 = index.add %176, %244
        %282 = arith.ceildivsi %false, %true : i1
        %283 = arith.remf %extracted, %extracted : f16
        %alloc_50 = memref.alloc() : memref<i1>
        memref.tensor_store %20, %alloc_50 : memref<i1>
        %284 = math.cos %cst_3 : f16
        %285 = math.cos %splat_36 : tensor<5xf32>
        %286 = arith.muli %213, %c-20596_i16 : i16
        %287 = index.divu %122, %59
        %288 = math.log10 %6 : tensor<16xf16>
        scf.yield %193 : vector<5xi64>
      }
      %268 = arith.ori %213, %c27109_i16 : i16
      %269 = index.ceildivu %210, %183
      %270 = math.log1p %3 : tensor<13x16xf32>
      %271 = tensor.empty() : tensor<13x16xi16>
      %mapped_45 = linalg.map ins(%2 : tensor<13x16xi16>) outs(%271 : tensor<13x16xi16>)
        (%in: i16) {
          %278 = index.mul %56, %c11
          %279 = vector.bitcast %38 : vector<16xf16> to vector<16xf16>
          %280 = vector.insertelement %cst_9, %19[%c11 : index] : vector<7xf16>
          %splat_47 = tensor.splat %cst_3 : tensor<5xf16>
          %281 = bufferization.clone %alloc_12 : memref<5xi1> to memref<5xi1>
          %282 = math.exp2 %3 : tensor<13x16xf32>
          memref.copy %191, %alloc_23 : memref<16xf16> to memref<16xf16>
          %283 = bufferization.to_tensor %alloc_10 : memref<5xi16>
          %284 = arith.ceildivsi %213, %c27109_i16 : i16
          %285 = index.sizeof
          %286 = math.ipowi %271, %15 : tensor<13x16xi16>
          %287 = arith.remf %cst_8, %cst_8 : f16
          %288 = arith.xori %c1_i64, %82 : i64
          %289 = vector.broadcast %cst_0 : f16 to vector<f16>
          vector.transfer_write %289, %alloc_23[%69] : vector<f16>, memref<16xf16>
          %290 = bufferization.clone %alloc_24 : memref<13x16xi64> to memref<13x16xi64>
          %291 = vector.broadcast %cst_4 : f32 to vector<7x13x16xf32>
          %292 = vector.fma %291, %115, %187 : vector<7x13x16xf32>
          %splat_48 = tensor.splat %213 : tensor<7x13x16xi16>
          %293 = index.ceildivs %c13, %87
          %294 = arith.cmpf une, %cst_6, %cst_4 : f32
          %295 = index.divs %c1, %94
          bufferization.dealloc_tensor %13 : tensor<7x13x16xf16>
          %296 = bufferization.clone %alloc_25 : memref<16x13xf16> to memref<16x13xf16>
          %dest_49, %accumulated_value_50 = vector.scan <maxf>, %111, %173 {inclusive = false, reduction_dim = 0 : i64} : vector<13x16xf32>, vector<16xf32>
          %297 = math.expm1 %0 : tensor<7x13x16xf32>
          %298 = math.roundeven %splat : tensor<16xf16>
          %true_51 = arith.constant true
          %299 = vector.transfer_read %281[%163], %true_51 : memref<5xi1>, vector<i1>
          %300 = math.absi %4 : tensor<16xi1>
          %301 = arith.floordivsi %c-20596_i16, %c-22643_i16 : i16
          %302 = index.ceildivs %293, %214
          %303 = vector.bitcast %196 : vector<5xi64> to vector<5xi64>
          %304 = index.sub %122, %77
          %305 = math.ipowi %95, %95 : tensor<13x16xi32>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %272 = math.log10 %3 : tensor<13x16xf32>
      %273 = vector.reduction <mul>, %196 : vector<5xi64> into i64
      %inserted_46 = tensor.insert %cst_7 into %generated_31[%c0, %c4, %c7] : tensor<?x13x16xf32>
      %274 = index.ceildivu %c10, %180
      %275 = math.log1p %splat_34 : tensor<16xf16>
      %276 = math.round %extracted : f16
      %277 = math.powf %3, %64 : tensor<13x16xf32>
      scf.yield %cst_4 : f32
    }
    case 2 {
      %263 = arith.xori %c0_i64, %c1_i64 : i64
      %264 = index.maxs %136, %87
      %265 = arith.ceildivsi %c-22643_i16, %c-32578_i16 : i16
      %266 = math.expm1 %cst_4 : f32
      %alloc_45 = memref.alloc() : memref<5xi64>
      %267 = bufferization.to_tensor %alloc_25 : memref<16x13xf16>
      %268 = vector.reduction <minf>, %161 : vector<5xf32> into f32
      %269 = arith.divsi %82, %82 : i64
      %270 = math.fpowi %0, %1 : tensor<7x13x16xf32>, tensor<7x13x16xi32>
      %271 = arith.muli %c-32578_i16, %c-22643_i16 : i16
      %272 = vector.broadcast %c27109_i16 : i16 to vector<16xi16>
      %273 = vector.gather %2[%c3, %30] [%40], %154, %272 : tensor<13x16xi16>, vector<16xi32>, vector<16xi1>, vector<16xi16> into vector<16xi16>
      %alloca = memref.alloca() : memref<5xi1>
      %274 = index.divu %87, %214
      %275 = index.ceildivu %165, %c8
      %276 = vector.bitcast %164 : vector<16xi1> to vector<16xi1>
      %inserted_46 = tensor.insert %extracted into %splat[%c5] : tensor<16xf16>
      scf.yield %cst_2 : f32
    }
    default {
      %263 = arith.cmpi sge, %c0_i32, %c0_i32 : i32
      %264 = math.expm1 %3 : tensor<13x16xf32>
      %265 = vector.splat %extracted : vector<7x13x16xf16>
      %266 = vector.splat %120 : vector<16xindex>
      %267 = arith.shrsi %true, %128 : i1
      %268 = index.mul %c9, %165
      %alloc_45 = memref.alloc() : memref<5xi64>
      memref.copy %alloc_35, %alloc_45 : memref<5xi64> to memref<5xi64>
      %269 = arith.remf %cst_3, %cst_9 : f16
      %270 = arith.muli %c27109_i16, %213 : i16
      %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %41, %41, %cst_8 : vector<16xf16>, vector<16xf16> into f16
      %272 = arith.cmpi sle, %c-32578_i16, %213 : i16
      %273 = vector.broadcast %cst_1 : f32 to vector<7x13xf32>
      %274 = vector.multi_reduction <add>, %115, %273 [2] : vector<7x13x16xf32> to vector<7x13xf32>
      %275 = math.log %0 : tensor<7x13x16xf32>
      memref.assume_alignment %192, 2 : memref<5xi1>
      %276 = arith.remsi %c27109_i16, %c-22643_i16 : i16
      %277 = vector.insertelement %cst_0, %19[%168 : index] : vector<7xf16>
      scf.yield %cst_2 : f32
    }
    %249 = math.floor %cst_1 : f32
    memref.assume_alignment %alloc, 8 : memref<16xi64>
    %250 = vector.broadcast %cst_8 : f16 to vector<7x13x16xf16>
    bufferization.dealloc_tensor %cast : tensor<?xi64>
    %251 = arith.addi %c0_i64, %c0_i64 : i64
    %extracted_42 = tensor.extract %4[%c14] : tensor<16xi1>
    %252 = math.copysign %cst_6, %cst_2 : f32
    %253 = index.divu %136, %214
    %254 = math.exp %cst_9 : f16
    %255 = arith.ceildivsi %c0_i32, %c0_i32 : i32
    %256 = arith.ori %true, %true : i1
    %collapsed_43 = tensor.collapse_shape %15 [[0, 1]] : tensor<13x16xi16> into tensor<208xi16>
    %257 = math.fpowi %splat, %151 : tensor<16xf16>, tensor<16xi32>
    %258 = arith.minsi %c0_i32, %c0_i32 : i32
    %259 = tensor.empty() : tensor<5xi1>
    %260 = linalg.copy ins(%7 : tensor<5xi1>) outs(%259 : tensor<5xi1>) -> tensor<5xi1>
    %261 = tensor.empty() : tensor<5xi64>
    %transposed = linalg.transpose ins(%alloc_35 : memref<5xi64>) outs(%261 : tensor<5xi64>) permutation = [0] 
    %alloc_44 = memref.alloc() : memref<13xi16>
    linalg.reduce ins(%splat_33 : tensor<7x13x16xi16>) outs(%alloc_44 : memref<13xi16>) dimensions = [0, 2] 
      (%in: i16, %init: i16) {
        %263 = affine.load %191[%c6] : memref<16xf16>
        %264 = bufferization.clone %alloc_13 : memref<13x16xi32> to memref<13x16xi32>
        %265 = index.ceildivu %67, %c11
        %266 = math.fma %3, %64, %64 : tensor<13x16xf32>
        %267 = index.maxu %c14, %87
        %268 = arith.cmpf olt, %cst_3, %cst_9 : f16
        %269 = arith.ori %82, %c0_i64 : i64
        bufferization.dealloc_tensor %21 : tensor<i1>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    scf.parallel (%arg3) = (%c10) to (%236) step (%c10) {
      %263 = vector.broadcast %cst : f32 to vector<7x16xf32>
      %dest_45, %accumulated_value_46 = vector.scan <minf>, %237, %263 {inclusive = false, reduction_dim = 1 : i64} : vector<7x13x16xf32>, vector<7x16xf32>
      %264 = vector.create_mask %180 : vector<5xi1>
      %265 = bufferization.clone %alloc_26 : memref<5xi1> to memref<5xi1>
      %266 = arith.divsi %extracted_42, %extracted_42 : i1
      %267 = vector.bitcast %23 : vector<13x16xf32> to vector<13x16xf32>
      %268 = vector.matrix_multiply %40, %195 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 5 : i32} : (vector<16xi32>, vector<5xi32>) -> vector<80xi32>
      %269 = index.mul %214, %arg3
      scf.if %extracted_42 {
        %274 = arith.muli %c0_i64, %c1_i64 : i64
        %275 = bufferization.clone %alloc_25 : memref<16x13xf16> to memref<16x13xf16>
        %276 = math.ipowi %177, %95 : tensor<13x16xi32>
        bufferization.dealloc_tensor %11 : tensor<13x16xi32>
        memref.copy %alloc_12, %100 : memref<5xi1> to memref<5xi1>
        %277 = vector.multi_reduction <maxf>, %197, %cst_8 [0] : vector<5xf16> to f16
        %278 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c13, %183, %165)
        %279 = vector.reduction <minsi>, %196 : vector<5xi64> into i64
      } else {
        %274 = math.powf %cst_5, %extracted : f16
        %275 = arith.minsi %c0_i32, %c0_i32 : i32
        %276 = arith.ceildivsi %c-32578_i16, %c-32578_i16 : i16
        %277 = affine.min affine_map<(d0, d1) -> ((-d1) ceildiv 128, (-d1) mod 2)>(%c11, %c10)
        %278 = index.sub %277, %c15
        %279 = vector.matrix_multiply %197, %197 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf16>, vector<5xf16>) -> vector<1xf16>
        memref.store %c0_i64, %alloc[%c5] : memref<16xi64>
        %280 = vector.multi_reduction <mul>, %110, %cst [0] : vector<16xf32> to f32
      }
      %270 = math.ctlz %66 : tensor<16xi16>
      %271 = tensor.empty() : tensor<16xf16>
      %mapped_47 = linalg.map ins(%191, %6 : memref<16xf16>, tensor<16xf16>) outs(%271 : tensor<16xf16>)
        (%in: f16, %in_49: f16) {
          %274 = vector.extract %250[4] : vector<7x13x16xf16>
          %275 = arith.cmpi ult, %82, %c1_i64 : i64
          %276 = math.round %cst_1 : f32
          %277 = index.divu %59, %180
          %278 = vector.insert %110, %237 [5, 8] : vector<16xf32> into vector<7x13x16xf32>
          %279 = math.fpowi %13, %1 : tensor<7x13x16xf16>, tensor<7x13x16xi32>
          %280 = index.maxu %c9, %c9
          %281 = vector.reduction <minf>, %110 : vector<16xf32> into f32
          %282 = index.maxu %c1, %210
          %283 = vector.transpose %41, [0] : vector<16xf16> to vector<16xf16>
          %284 = memref.realloc %alloc_14 : memref<16xi64> to memref<7xi64>
          %285 = vector.extract %238[1, 4] : vector<7x13x16xf32>
          %286 = math.exp %0 : tensor<7x13x16xf32>
          %287 = math.expm1 %splat_36 : tensor<5xf32>
          %288 = vector.matrix_multiply %41, %65 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf16>, vector<16xf16>) -> vector<1xf16>
          memref.copy %alloc_10, %alloc_20 : memref<5xi16> to memref<5xi16>
          %c214053541_i64 = arith.constant 214053541 : i64
          %289 = math.round %in : f16
          %alloc_50 = memref.alloc() : memref<5xf16>
          memref.copy %alloc_19, %alloc_50 : memref<5xf16> to memref<5xf16>
          %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %193, %193, %82 : vector<5xi64>, vector<5xi64> into i64
          %291 = index.floordivs %165, %205
          %292 = vector.matrix_multiply %156, %197 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<1xf16>, vector<5xf16>) -> vector<5xf16>
          %293 = math.powf %13, %13 : tensor<7x13x16xf16>
          %294 = arith.divui %c1_i64, %c1_i64 : i64
          %295 = vector.broadcast %cst_4 : f32 to vector<13x16x13x16xf32>
          %296 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %187, %187, %295 : vector<7x13x16xf32>, vector<7x13x16xf32> into vector<13x16x13x16xf32>
          %297 = arith.minui %c1_i64, %c0_i64 : i64
          %298 = math.fpowi %13, %1 : tensor<7x13x16xf16>, tensor<7x13x16xi32>
          %299 = math.exp2 %in_49 : f16
          %300 = arith.shrui %c-22643_i16, %c27109_i16 : i16
          %301 = index.ceildivu %c13, %c5
          %302 = vector.bitcast %115 : vector<7x13x16xf32> to vector<7x13x16xf32>
          %303 = arith.ceildivsi %c-20596_i16, %c-22643_i16 : i16
          %cst_51 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_51 : f16
        }
      %alloc_48 = memref.alloc() : memref<13x16xi1>
      memref.assume_alignment %alloc_26, 8 : memref<5xi1>
      %272 = arith.floordivsi %82, %82 : i64
      memref.copy %alloc_10, %alloc_20 : memref<5xi16> to memref<5xi16>
      %273 = index.divu %214, %183
      memref.tensor_store %66, %112 : memref<16xi16>
      scf.yield
    }
    %262 = affine.vector_load %alloc_24[%30, %235] : memref<13x16xi64>, vector<16xi64>
    affine.vector_store %38, %alloc_25[%c9, %236] : memref<16x13xf16>, vector<16xf16>
    vector.print %19 : vector<7xf16>
    vector.print %23 : vector<13x16xf32>
    vector.print %24 : vector<13x16xf32>
    vector.print %29 : vector<7xi16>
    vector.print %38 : vector<16xf16>
    vector.print %39 : vector<16xi1>
    vector.print %40 : vector<16xi32>
    vector.print %41 : vector<16xf16>
    vector.print %43 : vector<7x13x16xf32>
    vector.print %44 : vector<7x13x16xf32>
    vector.print %47 : vector<i32>
    vector.print %50 : vector<13x16xf32>
    vector.print %51 : vector<13x16xf32>
    vector.print %65 : vector<16xf16>
    vector.print %103 : vector<16xf16>
    vector.print %110 : vector<16xf32>
    vector.print %111 : vector<13x16xf32>
    vector.print %115 : vector<7x13x16xf32>
    vector.print %116 : vector<7x13x16xf32>
    vector.print %154 : vector<16xi1>
    vector.print %156 : vector<1xf16>
    vector.print %157 : vector<i16>
    vector.print %161 : vector<5xf32>
    vector.print %164 : vector<16xi1>
    vector.print %173 : vector<16xf32>
    vector.print %186 : vector<7x13x16xf32>
    vector.print %187 : vector<7x13x16xf32>
    vector.print %193 : vector<5xi64>
    vector.print %194 : vector<5xi1>
    vector.print %195 : vector<5xi32>
    vector.print %196 : vector<5xi64>
    vector.print %197 : vector<5xf16>
    vector.print %237 : vector<7x13x16xf32>
    vector.print %238 : vector<7x13x16xf32>
    vector.print %250 : vector<7x13x16xf16>
    vector.print %262 : vector<16xi64>
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %cst_1 : f32
    vector.print %c-20596_i16 : i16
    vector.print %cst_2 : f32
    vector.print %true : i1
    vector.print %cst_3 : f16
    vector.print %cst_4 : f32
    vector.print %c-22643_i16 : i16
    vector.print %cst_5 : f16
    vector.print %cst_6 : f32
    vector.print %c-32578_i16 : i16
    vector.print %cst_7 : f32
    vector.print %cst_8 : f16
    vector.print %cst_9 : f16
    vector.print %c27109_i16 : i16
    vector.print %c0_i32 : i32
    vector.print %82 : i64
    vector.print %extracted : f16
    vector.print %128 : i1
    vector.print %213 : i16
    vector.print %c0_i64 : i64
    vector.print %c1_i64 : i64
    vector.print %extracted_42 : i1
    return %c0_i32 : i32
  }
}
