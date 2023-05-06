module {
  func.func nested @func1(%arg0: f32, %arg1: tensor<9x4xi16>) {
    %c590134966_i64 = arith.constant 590134966 : i64
    %c1630030684_i64 = arith.constant 1630030684 : i64
    %true = arith.constant true
    %c-1969_i16 = arith.constant -1969 : i16
    %cst = arith.constant 1.00868019E+9 : f32
    %cst_0 = arith.constant 1.45209792E+9 : f32
    %cst_1 = arith.constant 0x4D4B7796 : f32
    %c-6647_i16 = arith.constant -6647 : i16
    %cst_2 = arith.constant 1.8064567E+9 : f32
    %c1581076836_i64 = arith.constant 1581076836 : i64
    %cst_3 = arith.constant 0x4DAEFBF0 : f32
    %c1603201462_i64 = arith.constant 1603201462 : i64
    %c382875512_i64 = arith.constant 382875512 : i64
    %cst_4 = arith.constant 4.249600e+04 : f16
    %c276538512_i64 = arith.constant 276538512 : i64
    %cst_5 = arith.constant 5.884800e+04 : f16
    %0 = tensor.empty() : tensor<12x9xi16>
    %1 = tensor.empty() : tensor<12x9xf32>
    %2 = tensor.empty() : tensor<12x9xi16>
    %3 = tensor.empty() : tensor<12x9xi1>
    %4 = tensor.empty() : tensor<12xi64>
    %5 = tensor.empty() : tensor<6xi64>
    %6 = tensor.empty() : tensor<9x4xi16>
    %7 = tensor.empty() : tensor<12x9xi64>
    %8 = tensor.empty() : tensor<9x4xf32>
    %9 = tensor.empty() : tensor<12x9xi32>
    %10 = tensor.empty() : tensor<12x9xi64>
    %11 = tensor.empty() : tensor<9x4xi1>
    %12 = tensor.empty() : tensor<6xi1>
    %13 = tensor.empty() : tensor<6xi32>
    %14 = tensor.empty() : tensor<9x4xf16>
    %15 = tensor.empty() : tensor<6xf16>
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
    %alloc = memref.alloc() : memref<9x4xi1>
    %alloc_6 = memref.alloc() : memref<12xi1>
    %alloc_7 = memref.alloc() : memref<6xf16>
    %alloc_8 = memref.alloc() : memref<9x4xf32>
    %alloc_9 = memref.alloc() : memref<6xi64>
    %alloc_10 = memref.alloc() : memref<9x4xi64>
    %alloc_11 = memref.alloc() : memref<12x9xi64>
    %alloc_12 = memref.alloc() : memref<6xi32>
    %alloc_13 = memref.alloc() : memref<6xi16>
    %alloc_14 = memref.alloc() : memref<12xf16>
    %alloc_15 = memref.alloc() : memref<6xi64>
    %alloc_16 = memref.alloc() : memref<12x9xi64>
    %alloc_17 = memref.alloc() : memref<12xi16>
    %alloc_18 = memref.alloc() : memref<12xi16>
    %alloc_19 = memref.alloc() : memref<9x4xf16>
    %alloc_20 = memref.alloc() : memref<9x4xi16>
    %16 = tensor.empty() : tensor<12x9xi32>
    %17 = linalg.copy ins(%9 : tensor<12x9xi32>) outs(%16 : tensor<12x9xi32>) -> tensor<12x9xi32>
    %alloc_21 = memref.alloc() : memref<9x12xi32>
    linalg.transpose ins(%17 : tensor<12x9xi32>) outs(%alloc_21 : memref<9x12xi32>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<i32>
    %reduced = linalg.reduce ins(%9 : tensor<12x9xi32>) outs(%18 : tensor<i32>) dimensions = [0, 1] 
      (%in: i32, %init: i32) {
        %260 = vector.broadcast %true : i1 to vector<12xi1>
        %261 = vector.broadcast %in : i32 to vector<12xi32>
        %262 = vector.gather %alloc_6[%c7] [%261], %260, %260 : memref<12xi1>, vector<12xi32>, vector<12xi1>, vector<12xi1> into vector<12xi1>
        %263 = arith.divsi %true, %true : i1
        scf.index_switch %c13 
        case 1 {
          %266 = math.sqrt %cst_5 : f16
          %267 = arith.remf %cst_5, %cst_4 : f16
          %268 = arith.remf %cst_1, %cst : f32
          %269 = arith.xori %c590134966_i64, %c1630030684_i64 : i64
          %270 = math.cos %15 : tensor<6xf16>
          %alloc_48 = memref.alloc() : memref<12x9xi32>
          memref.tensor_store %9, %alloc_48 : memref<12x9xi32>
          %271 = vector.broadcast %c1630030684_i64 : i64 to vector<6xi64>
          %272 = vector.broadcast %true : i1 to vector<6xi1>
          %273 = vector.maskedload %alloc_16[%c4, %c3], %272, %271 : memref<12x9xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
          bufferization.dealloc_tensor %13 : tensor<6xi32>
          %274 = arith.shrsi %c-6647_i16, %c-6647_i16 : i16
          %275 = math.expm1 %cst_3 : f32
          %276 = arith.mulf %cst_1, %cst_2 : f32
          %277 = arith.divui %c-1969_i16, %c-1969_i16 : i16
          %278 = vector.extract_strided_slice %272 {offsets = [2], sizes = [1], strides = [1]} : vector<6xi1> to vector<1xi1>
          %279 = bufferization.clone %alloc_19 : memref<9x4xf16> to memref<9x4xf16>
          %280 = math.cos %cst_5 : f16
          %281 = arith.remui %c-6647_i16, %c-6647_i16 : i16
          scf.yield
        }
        case 2 {
          %266 = math.atan %cst_3 : f32
          %cast_48 = tensor.cast %0 : tensor<12x9xi16> to tensor<?x?xi16>
          %267 = arith.remsi %c590134966_i64, %c590134966_i64 : i64
          %268 = arith.shrsi %c276538512_i64, %c1603201462_i64 : i64
          %269 = arith.floordivsi %c1630030684_i64, %c1581076836_i64 : i64
          %270 = vector.extract %262[9] : vector<12xi1>
          %271 = arith.negf %cst_2 : f32
          %alloc_49 = memref.alloc() : memref<6xi32>
          memref.copy %alloc_12, %alloc_49 : memref<6xi32> to memref<6xi32>
          %272 = arith.subi %c-6647_i16, %c-6647_i16 : i16
          %273 = arith.shrui %in, %in : i32
          %274 = math.atan %cst : f32
          %275 = vector.insert %true, %262 [3] : i1 into vector<12xi1>
          memref.store %c-1969_i16, %alloc_17[%c9] : memref<12xi16>
          %276 = index.ceildivs %c7, %c6
          %277 = bufferization.clone %alloc_16 : memref<12x9xi64> to memref<12x9xi64>
          %278 = vector.extract_strided_slice %260 {offsets = [3], sizes = [5], strides = [1]} : vector<12xi1> to vector<5xi1>
          scf.yield
        }
        default {
          %266 = arith.shrsi %c276538512_i64, %c590134966_i64 : i64
          %267 = arith.muli %c382875512_i64, %c276538512_i64 : i64
          %268 = arith.maxui %c382875512_i64, %c1581076836_i64 : i64
          %269 = arith.subi %c590134966_i64, %c1630030684_i64 : i64
          %270 = math.tan %cst_0 : f32
          %splat_48 = tensor.splat %c1581076836_i64 : tensor<6xi64>
          %271 = math.round %cst_4 : f16
          %272 = tensor.empty() : tensor<9x4xi32>
          %273 = math.fpowi %14, %272 : tensor<9x4xf16>, tensor<9x4xi32>
          %274 = arith.shrui %init, %init : i32
          %275 = arith.muli %true, %true : i1
          %276 = arith.andi %c-1969_i16, %c-1969_i16 : i16
          %277 = math.exp2 %15 : tensor<6xf16>
          %278 = arith.floordivsi %c590134966_i64, %c1603201462_i64 : i64
          %279 = arith.addi %c-6647_i16, %c-6647_i16 : i16
          %280 = math.floor %cst_3 : f32
          %281 = arith.cmpi sge, %c590134966_i64, %c276538512_i64 : i64
        }
        memref.assume_alignment %alloc_8, 1 : memref<9x4xf32>
        %extracted_46 = tensor.extract %18[] : tensor<i32>
        affine.store %cst, %alloc_8[%c6, %c12] : memref<9x4xf32>
        %264 = math.ctlz %6 : tensor<9x4xi16>
        %265 = vector.broadcast %cst_4 : f16 to vector<12x9xf16>
        %c0_i32_47 = arith.constant 0 : i32
        linalg.yield %c0_i32_47 : i32
      }
    %19 = scf.parallel (%arg2, %arg3) = (%c10, %c5) to (%c6, %c13) step (%c6, %c6) init (%cst_4) -> f16 {
      %260 = arith.floordivsi %c1630030684_i64, %c382875512_i64 : i64
      %261 = vector.broadcast %cst_5 : f16 to vector<6xf16>
      %262 = vector.reduction <add>, %261 : vector<6xf16> into f16
      %263 = arith.remui %c1603201462_i64, %c276538512_i64 : i64
      %264 = vector.broadcast %c1603201462_i64 : i64 to vector<12xi64>
      vector.transfer_write %264, %alloc_11[%c7, %c7] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi64>, memref<12x9xi64>
      %265 = math.round %8 : tensor<9x4xf32>
      %266 = math.log %8 : tensor<9x4xf32>
      %267 = index.sizeof
      bufferization.dealloc_tensor %5 : tensor<6xi64>
      %268 = vector.load %alloc_10[%c5, %c2] : memref<9x4xi64>, vector<6xi64>
      %269 = arith.cmpf one, %cst_0, %cst_1 : f32
      %270 = vector.broadcast %c-1969_i16 : i16 to vector<i16>
      vector.transfer_write %270, %alloc_18[%c5] : vector<i16>, memref<12xi16>
      %expanded_46 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<12x9xi32> into tensor<12x9x1xi32>
      %271 = vector.extract %268[2] : vector<6xi64>
      affine.store %cst_5, %alloc_7[%c8] : memref<6xf16>
      %272 = arith.floordivsi %c590134966_i64, %c382875512_i64 : i64
      %273 = math.absf %14 : tensor<9x4xf16>
      %cst_47 = arith.constant 1.000000e+00 : f16
      scf.reduce(%cst_47)  : f16 {
      ^bb0(%arg4: f16, %arg5: f16):
        %274 = index.ceildivs %c14, %c11
        %275 = index.casts %c12 : index to i32
        %276 = vector.multi_reduction <maxsi>, %264, %c1603201462_i64 [0] : vector<12xi64> to i64
        %277 = arith.remsi %c276538512_i64, %276 : i64
        %278 = arith.remsi %c1630030684_i64, %c1630030684_i64 : i64
        memref.tensor_store %7, %alloc_11 : memref<12x9xi64>
        %279 = arith.remui %c-6647_i16, %c-6647_i16 : i16
        %280 = arith.ori %c1581076836_i64, %c382875512_i64 : i64
        %cst_48 = arith.constant 1.000000e+00 : f16
        scf.reduce.return %cst_48 : f16
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_12[%c3] : memref<6xi32>, vector<4xi32>
    affine.vector_store %20, %alloc_21[%c5, %c7] : memref<9x12xi32>, vector<4xi32>
    %21 = tensor.empty() : tensor<6xi64>
    %22 = tensor.empty() : tensor<i64>
    %23 = linalg.dot ins(%5, %21 : tensor<6xi64>, tensor<6xi64>) outs(%22 : tensor<i64>) -> tensor<i64>
    %24 = math.log2 %1 : tensor<12x9xf32>
    %25 = arith.floordivsi %c590134966_i64, %c382875512_i64 : i64
    %26 = arith.addf %cst_4, %cst_4 : f16
    %27 = math.atan2 %cst_4, %cst_5 : f16
    %expanded = tensor.expand_shape %1 [[0], [1, 2]] : tensor<12x9xf32> into tensor<12x9x1xf32>
    %cast = tensor.cast %12 : tensor<6xi1> to tensor<?xi1>
    %28 = math.expm1 %cst_3 : f32
    affine.store %c1581076836_i64, %alloc_16[%c2, %c7] : memref<12x9xi64>
    %29 = math.round %14 : tensor<9x4xf16>
    %30 = arith.mulf %cst_0, %cst_3 : f32
    %31 = vector.splat %c3 : vector<9x4xindex>
    %32 = vector.flat_transpose %20 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
    %33 = vector.broadcast %c276538512_i64 : i64 to vector<12xi64>
    %34 = vector.broadcast %true : i1 to vector<12xi1>
    %35 = vector.maskedload %alloc_10[%c2, %c0], %34, %33 : memref<9x4xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
    %c0_i32 = arith.constant 0 : i32
    %36 = vector.multi_reduction <or>, %20, %c0_i32 [0] : vector<4xi32> to i32
    %37 = affine.apply affine_map<(d0, d1) -> (d1 + d1 ceildiv 64)>(%c3, %c8)
    %from_elements = tensor.from_elements %cst_0, %cst_1, %cst_3, %cst_0, %cst_0, %cst_0, %cst_0, %cst_1, %cst, %cst_2, %cst_0, %cst_1, %cst_2, %cst_3, %cst, %cst_0, %cst_0, %cst_1, %cst_3, %cst_0, %cst_0, %cst_1, %cst_2, %cst, %cst_3, %cst, %cst_3, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst, %cst_0, %cst, %cst_0 : tensor<9x4xf32>
    %38 = scf.execute_region -> memref<12xi1> {
      %260 = vector.extract_strided_slice %33 {offsets = [8], sizes = [4], strides = [1]} : vector<12xi64> to vector<4xi64>
      %261 = arith.remf %cst_5, %cst_4 : f16
      bufferization.dealloc_tensor %2 : tensor<12x9xi16>
      %262 = index.ceildivs %c8, %37
      %generated_46 = tensor.generate %c6 {
      ^bb0(%arg2: index):
        %271 = vector.broadcast %c-6647_i16 : i16 to vector<i16>
        vector.transfer_write %271, %alloc_13[%37] : vector<i16>, memref<6xi16>
        %272 = arith.andi %c1603201462_i64, %c1581076836_i64 : i64
        %273 = index.ceildivs %c0, %37
        %274 = math.copysign %cst_0, %cst_3 : f32
        tensor.yield %c0_i32 : i32
      } : tensor<?xi32>
      %263 = arith.divui %c1581076836_i64, %c276538512_i64 : i64
      %264 = math.log10 %from_elements : tensor<9x4xf32>
      %265 = index.casts %c0 : index to i32
      %266 = vector.load %alloc_14[%c10] : memref<12xf16>, vector<9x4xf16>
      %267 = math.exp2 %cst_3 : f32
      %cst_47 = arith.constant 1.000000e+00 : f32
      %268 = vector.transfer_read %alloc_8[%37, %37], %cst_47 : memref<9x4xf32>, vector<4xf32>
      %splat_48 = tensor.splat %c-6647_i16 : tensor<9x4xi16>
      %generated_49 = tensor.generate %37 {
      ^bb0(%arg2: index):
        %271 = vector.multi_reduction <maxsi>, %35, %33 [] : vector<12xi64> to vector<12xi64>
        %272 = index.ceildivs %c12, %c3
        %273 = arith.remf %cst_3, %cst : f32
        %274 = arith.remui %c0_i32, %c0_i32 : i32
        tensor.yield %cst_5 : f16
      } : tensor<?xf16>
      %269 = math.floor %14 : tensor<9x4xf16>
      %270 = arith.remui %c276538512_i64, %c382875512_i64 : i64
      scf.if %true {
        %271 = math.sqrt %15 : tensor<6xf16>
        %272 = affine.min affine_map<(d0, d1) -> (d0 + 24, (d0 ceildiv 64) ceildiv 128)>(%c5, %c12)
        %273 = arith.cmpf ogt, %cst_1, %cst_3 : f32
        %274 = arith.xori %c1581076836_i64, %c276538512_i64 : i64
        %275 = arith.cmpf oge, %cst_3, %cst_2 : f32
        %276 = math.ceil %15 : tensor<6xf16>
        %277 = vector.broadcast %c15 : index to vector<4xindex>
        %278 = vector.broadcast %true : i1 to vector<4xi1>
        %279 = vector.broadcast %cst_47 : f32 to vector<4xf32>
        vector.scatter %alloc_8[%c5, %c0] [%277], %278, %279 : memref<9x4xf32>, vector<4xindex>, vector<4xi1>, vector<4xf32>
        %280 = vector.extract_strided_slice %20 {offsets = [1], sizes = [1], strides = [1]} : vector<4xi32> to vector<1xi32>
      }
      scf.yield %alloc_6 : memref<12xi1>
    }
    %39 = affine.if affine_set<(d0) : (d0 mod 4 + (d0 floordiv 4) * 65 == 0, d0 mod 4 + (d0 floordiv 4) * 65 + d0 mod 4 + d0 floordiv 4 >= 0, -(d0 floordiv 4) == 0)>(%c12) -> i32 {
      %260 = index.sizeof
      %261 = math.atan %cst : f32
      %262 = index.casts %c-1969_i16 : i16 to index
      %263 = math.log2 %cst_5 : f16
      bufferization.dealloc_tensor %from_elements : tensor<9x4xf32>
      %264 = math.log1p %1 : tensor<12x9xf32>
      %265 = math.cos %1 : tensor<12x9xf32>
      %266 = arith.subi %true, %true : i1
      affine.yield %36 : i32
    } else {
      %260 = math.ctlz %22 : tensor<i64>
      %261 = math.log10 %cst_3 : f32
      %262 = index.casts %c2 : index to i32
      %263 = math.round %cst_1 : f32
      %264 = index.divs %c3, %c13
      %265 = math.expm1 %14 : tensor<9x4xf16>
      %266 = math.round %cst_2 : f32
      %splat_46 = tensor.splat %cst_1 : tensor<12x9xf32>
      affine.yield %c0_i32 : i32
    }
    %40 = bufferization.clone %alloc_14 : memref<12xf16> to memref<12xf16>
    %41 = bufferization.clone %alloc_8 : memref<9x4xf32> to memref<9x4xf32>
    %42 = bufferization.clone %alloc_10 : memref<9x4xi64> to memref<9x4xi64>
    %43 = math.exp2 %14 : tensor<9x4xf16>
    %44 = index.sizeof
    %45 = bufferization.clone %alloc_11 : memref<12x9xi64> to memref<12x9xi64>
    %46 = scf.index_switch %c5 -> index 
    case 1 {
      %alloc_46 = memref.alloc() : memref<9x9xi32>
      %260 = tensor.empty() : tensor<12x9xi32>
      %261 = linalg.matmul ins(%9, %alloc_46 : tensor<12x9xi32>, memref<9x9xi32>) outs(%260 : tensor<12x9xi32>) -> tensor<12x9xi32>
      %262 = math.fma %cst_3, %cst_1, %cst_0 : f32
      %263 = index.divs %c9, %c10
      %264 = math.ipowi %c1603201462_i64, %c382875512_i64 : i64
      %265 = vector.broadcast %c1603201462_i64 : i64 to vector<12x12xi64>
      %266 = vector.outerproduct %33, %33, %265 {kind = #vector.kind<xor>} : vector<12xi64>, vector<12xi64>
      %267 = tensor.empty() : tensor<9x9xi32>
      %268 = tensor.empty() : tensor<12x9xi32>
      %269 = linalg.matmul ins(%16, %267 : tensor<12x9xi32>, tensor<9x9xi32>) outs(%268 : tensor<12x9xi32>) -> tensor<12x9xi32>
      %270 = arith.ori %c1603201462_i64, %c1581076836_i64 : i64
      %271 = affine.max affine_map<(d0, d1, d2) -> (d2, d2 floordiv 64 - d0, d1, -(d0 + 1))>(%c6, %c14, %44)
      %272 = vector.splat %c12 : vector<6xindex>
      %273 = index.ceildivu %c6, %c11
      %274 = arith.shli %c1581076836_i64, %c382875512_i64 : i64
      %275 = math.expm1 %cst_3 : f32
      %276 = math.log10 %cst_5 : f16
      %277 = arith.remsi %c1603201462_i64, %c276538512_i64 : i64
      %278 = math.exp2 %cst_4 : f16
      %279 = arith.andi %c1603201462_i64, %c382875512_i64 : i64
      scf.yield %273 : index
    }
    case 2 {
      %true_46 = arith.constant true
      %false_47 = arith.constant false
      %260 = vector.transfer_read %38[%c4], %false_47 : memref<12xi1>, vector<i1>
      %261 = arith.remui %c1630030684_i64, %c1630030684_i64 : i64
      %262 = memref.alloca_scope  -> (memref<9x4xi1>) {
        %269 = math.expm1 %cst_1 : f32
        %270 = arith.cmpi ule, %c590134966_i64, %c1630030684_i64 : i64
        %271 = vector.broadcast %c1603201462_i64 : i64 to vector<6xi64>
        %272 = vector.broadcast %true_46 : i1 to vector<6xi1>
        %273 = vector.broadcast %36 : i32 to vector<6xi32>
        %274 = vector.gather %5[%c2] [%273], %272, %271 : tensor<6xi64>, vector<6xi32>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        %275 = math.ctlz %11 : tensor<9x4xi1>
        %276 = arith.floordivsi %c-6647_i16, %c-1969_i16 : i16
        %277 = tensor.empty() : tensor<4x12xf16>
        %278 = tensor.empty() : tensor<9x12xf16>
        %279 = linalg.matmul ins(%14, %277 : tensor<9x4xf16>, tensor<4x12xf16>) outs(%278 : tensor<9x12xf16>) -> tensor<9x12xf16>
        %280 = math.ctlz %c1603201462_i64 : i64
        %281 = arith.cmpi slt, %c1581076836_i64, %c276538512_i64 : i64
        %282 = arith.andi %c0_i32, %36 : i32
        %alloc_52 = memref.alloc() : memref<9x4xi16>
        memref.copy %alloc_20, %alloc_52 : memref<9x4xi16> to memref<9x4xi16>
        %true_53 = index.bool.constant true
        %283 = tensor.empty() : tensor<12x6xf16>
        %284 = tensor.empty() : tensor<9x6xf16>
        %285 = linalg.matmul ins(%278, %283 : tensor<9x12xf16>, tensor<12x6xf16>) outs(%284 : tensor<9x6xf16>) -> tensor<9x6xf16>
        %286 = arith.addi %true_53, %true_53 : i1
        %287 = vector.splat %cst_0 : vector<9x4xf32>
        %288 = arith.maxui %c0_i32, %36 : i32
        %289 = vector.extract %272[5] : vector<6xi1>
        %290 = math.atan2 %8, %from_elements : tensor<9x4xf32>
        %cast_54 = tensor.cast %21 : tensor<6xi64> to tensor<?xi64>
        %291 = affine.apply affine_map<(d0) -> (d0 floordiv 16 - 4)>(%c8)
        %292 = vector.matrix_multiply %34, %272 {lhs_columns = 6 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<6xi1>) -> vector<2xi1>
        %293 = math.expm1 %cst_0 : f32
        memref.store %c590134966_i64, %alloc_16[%c8, %c3] : memref<12x9xi64>
        %294 = math.fma %15, %15, %15 : tensor<6xf16>
        %295 = arith.remui %c382875512_i64, %c590134966_i64 : i64
        %296 = index.ceildivs %c3, %c1
        %297 = vector.shuffle %273, %32 [1, 2, 3, 4, 6, 8] : vector<6xi32>, vector<4xi32>
        %298 = arith.minsi %c-1969_i16, %c-1969_i16 : i16
        %299 = index.ceildivu %c14, %291
        %300 = vector.reduction <xor>, %34 : vector<12xi1> into i1
        %301 = index.ceildivu %c14, %291
        memref.assume_alignment %38, 2 : memref<12xi1>
        %cast_55 = tensor.cast %17 : tensor<12x9xi32> to tensor<?x?xi32>
        memref.alloca_scope.return %alloc : memref<9x4xi1>
      }
      bufferization.dealloc_tensor %5 : tensor<6xi64>
      %263 = arith.divsi %c0_i32, %36 : i32
      %264 = vector.broadcast %cst_2 : f32 to vector<12xf32>
      %265 = vector.fma %264, %264, %264 : vector<12xf32>
      memref.store %c-1969_i16, %alloc_17[%c0] : memref<12xi16>
      %extracted_48 = tensor.extract %cast[%c0] : tensor<?xi1>
      vector.print %264 : vector<12xf32>
      %266 = math.round %1 : tensor<12x9xf32>
      %267 = math.log10 %1 : tensor<12x9xf32>
      %extracted_49 = tensor.extract %2[%c7, %c7] : tensor<12x9xi16>
      %alloc_50 = memref.alloc() : memref<6xf16>
      memref.copy %alloc_7, %alloc_50 : memref<6xf16> to memref<6xf16>
      %268 = arith.maxui %c1581076836_i64, %c276538512_i64 : i64
      %from_elements_51 = tensor.from_elements %36, %c0_i32, %c0_i32, %c0_i32, %c0_i32, %36, %36, %c0_i32, %36, %36, %c0_i32, %c0_i32 : tensor<12xi32>
      memref.tensor_store %13, %alloc_12 : memref<6xi32>
      scf.yield %c5 : index
    }
    default {
      %cast_46 = tensor.cast %15 : tensor<6xf16> to tensor<?xf16>
      %260 = math.powf %cst_1, %cst_0 : f32
      %261 = math.log %15 : tensor<6xf16>
      %from_elements_47 = tensor.from_elements %c0_i32, %c0_i32, %c0_i32, %36, %c0_i32, %36, %36, %36, %36, %c0_i32, %36, %36, %36, %c0_i32, %36, %c0_i32, %c0_i32, %36, %36, %c0_i32, %36, %c0_i32, %36, %36, %36, %36, %c0_i32, %c0_i32, %36, %c0_i32, %c0_i32, %36, %c0_i32, %c0_i32, %36, %c0_i32 : tensor<9x4xi32>
      %262 = arith.addf %cst_1, %cst_1 : f32
      memref.assume_alignment %45, 8 : memref<12x9xi64>
      %263 = vector.multi_reduction <minsi>, %33, %35 [] : vector<12xi64> to vector<12xi64>
      %264 = index.ceildivu %c1, %c4
      %265 = math.ctlz %22 : tensor<i64>
      %266 = memref.atomic_rmw assign %c1603201462_i64, %alloc_11[%c7, %c4] : (i64, memref<12x9xi64>) -> i64
      %267 = arith.addf %cst_1, %cst_1 : f32
      affine.for %arg2 = 0 to 99 {
      }
      %268 = math.roundeven %expanded : tensor<12x9x1xf32>
      %269 = math.floor %8 : tensor<9x4xf32>
      %270 = vector.insert %c1630030684_i64, %33 [0] : i64 into vector<12xi64>
      %271 = bufferization.clone %alloc_6 : memref<12xi1> to memref<12xi1>
      scf.yield %c6 : index
    }
    %47 = arith.shli %c-6647_i16, %c-1969_i16 : i16
    %48 = math.atan2 %8, %8 : tensor<9x4xf32>
    affine.for %arg2 = 0 to 7 {
    }
    %49 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%44, %c10, %c10, %c14)
    %50 = math.copysign %15, %15 : tensor<6xf16>
    %51 = arith.muli %c590134966_i64, %c276538512_i64 : i64
    %extracted = tensor.extract %expanded[%c8, %c4, %c0] : tensor<12x9x1xf32>
    %52 = math.fma %8, %8, %8 : tensor<9x4xf32>
    %alloc_22 = memref.alloc() : memref<1xf32>
    %53 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_22 : memref<1xf32>) outs(%expanded : tensor<12x9x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %260 = math.fma %1, %1, %1 : tensor<12x9xf32>
      %261 = math.ctlz %c1581076836_i64 : i64
      %262 = vector.insert %c1581076836_i64, %33 [5] : i64 into vector<12xi64>
      %263 = index.casts %c590134966_i64 : i64 to index
      %264 = vector.flat_transpose %34 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
      %265 = memref.atomic_rmw maxu %36, %alloc_12[%c2] : (i32, memref<6xi32>) -> i32
      %266 = math.round %in : f32
      %267 = scf.while (%arg2 = %45) : (memref<12x9xi64>) -> memref<12x9xi64> {
        %287 = arith.subi %c-1969_i16, %c-6647_i16 : i16
        %288 = arith.shli %c-1969_i16, %c-6647_i16 : i16
        %alloc_55 = memref.alloc() : memref<12x9x1xf32>
        memref.tensor_store %expanded, %alloc_55 : memref<12x9x1xf32>
        %289 = math.atan2 %cst_3, %in : f32
        %290 = arith.shrsi %c276538512_i64, %c382875512_i64 : i64
        %291 = math.cos %8 : tensor<9x4xf32>
        %292 = math.exp2 %8 : tensor<9x4xf32>
        %293 = math.ceil %cst_4 : f16
        scf.condition(%true) %arg2 : memref<12x9xi64>
      } do {
      ^bb0(%arg2: memref<12x9xi64>):
        %287 = arith.minf %extracted, %in : f32
        %extracted_55 = tensor.extract %7[%c10, %c3] : tensor<12x9xi64>
        vector.print %33 : vector<12xi64>
        %288 = math.log2 %1 : tensor<12x9xf32>
        %289 = arith.subi %c0_i32, %c0_i32 : i32
        affine.store %c382875512_i64, %alloc_15[%c10] : memref<6xi64>
        %290 = vector.flat_transpose %32 {columns = 2 : i32, rows = 2 : i32} : vector<4xi32> -> vector<4xi32>
        %291 = index.ceildivs %c15, %c4
        %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %35, %35, %c1603201462_i64 : vector<12xi64>, vector<12xi64> into i64
        %293 = math.log2 %in : f32
        %294 = index.divu %c15, %44
        %295 = math.log10 %expanded : tensor<12x9x1xf32>
        %296 = arith.floordivsi %c1603201462_i64, %c590134966_i64 : i64
        %297 = math.fma %cst_3, %cst, %cst_3 : f32
        %298 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c0, %294, %291)
        %299 = vector.splat %c382875512_i64 : vector<6xi64>
        scf.yield %alloc_16 : memref<12x9xi64>
      }
      %268 = vector.insertelement %true, %264[%c12 : index] : vector<12xi1>
      %269 = math.copysign %14, %14 : tensor<9x4xf16>
      %generated_46 = tensor.generate %c1, %c2 {
      ^bb0(%arg2: index, %arg3: index):
        %287 = math.exp %extracted : f32
        %288 = vector.shuffle %33, %33 [4, 5, 9, 12, 14, 15, 18, 20, 23] : vector<12xi64>, vector<12xi64>
        %289 = bufferization.clone %alloc_8 : memref<9x4xf32> to memref<9x4xf32>
        %290 = math.ctlz %21 : tensor<6xi64>
        tensor.yield %cst_3 : f32
      } : tensor<?x?xf32>
      %cast_47 = tensor.cast %15 : tensor<6xf16> to tensor<?xf16>
      %270 = vector.broadcast %in : f32 to vector<6xf32>
      %expanded_48 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<12x9xi64> into tensor<12x9x1xi64>
      %271 = vector.broadcast %cst_5 : f16 to vector<9x9x9xf16>
      %272 = vector.broadcast %cst_5 : f16 to vector<9x9xf16>
      %dest_49, %accumulated_value_50 = vector.scan <maxf>, %271, %272 {inclusive = false, reduction_dim = 1 : i64} : vector<9x9x9xf16>, vector<9x9xf16>
      %273 = arith.xori %36, %36 : i32
      %274 = vector.extract %270[1] : vector<6xf32>
      %275 = math.log2 %from_elements : tensor<9x4xf32>
      %276 = arith.addi %c276538512_i64, %c590134966_i64 : i64
      %277 = vector.splat %c1581076836_i64 : vector<12x9xi64>
      bufferization.dealloc_tensor %0 : tensor<12x9xi16>
      %278 = math.fma %cst_1, %cst, %cst_0 : f32
      %279 = vector.broadcast %true : i1 to vector<12x4x6xi1>
      %280 = vector.broadcast %true : i1 to vector<4x6xi1>
      %dest_51, %accumulated_value_52 = vector.scan <mul>, %279, %280 {inclusive = true, reduction_dim = 0 : i64} : vector<12x4x6xi1>, vector<4x6xi1>
      %281 = vector.insert %c0_i32, %32 [1] : i32 into vector<4xi32>
      %generated_53 = tensor.generate %c12, %c13 {
      ^bb0(%arg2: index, %arg3: index):
        %287 = math.atan %expanded : tensor<12x9x1xf32>
        %288 = vector.splat %c14 : vector<9x4xindex>
        %289 = affine.max affine_map<(d0) -> (d0 * 16, d0 * 16, -(-(d0 mod 4) + 4))>(%c7)
        %290 = vector.shuffle %270, %270 [5, 6, 7, 10, 11] : vector<6xf32>, vector<6xf32>
        tensor.yield %c-1969_i16 : i16
      } : tensor<?x?xi16>
      %282 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<12x9x1xf32>) {
      ^bb0(%out_55: f32):
        %287 = vector.multi_reduction <add>, %34, %34 [] : vector<12xi1> to vector<12xi1>
        %288 = math.sqrt %14 : tensor<9x4xf16>
        %alloc_56 = memref.alloc() : memref<6xf16>
        memref.copy %alloc_7, %alloc_56 : memref<6xf16> to memref<6xf16>
        %289 = vector.broadcast %cst_5 : f16 to vector<6x6xf16>
        %290 = vector.broadcast %cst_5 : f16 to vector<6xf16>
        %dest_57, %accumulated_value_58 = vector.scan <minf>, %289, %290 {inclusive = false, reduction_dim = 0 : i64} : vector<6x6xf16>, vector<6xf16>
        %291 = arith.remsi %c-6647_i16, %c-6647_i16 : i16
        %292 = math.absf %extracted : f32
        %293 = vector.broadcast %36 : i32 to vector<12xi32>
        %294 = vector.gather %3[%44, %c5] [%293], %264, %34 : tensor<12x9xi1>, vector<12xi32>, vector<12xi1>, vector<12xi1> into vector<12xi1>
        vector.print %294 : vector<12xi1>
        %295 = math.ctlz %c-1969_i16 : i16
        %296 = math.atan %cst_4 : f16
        %297 = vector.broadcast %cst_1 : f32 to vector<9x4xf32>
        %298 = vector.fma %297, %297, %297 : vector<9x4xf32>
        %299 = arith.shrsi %true, %true : i1
        %300 = index.castu %c1581076836_i64 : i64 to index
        %alloc_59 = memref.alloc() : memref<9x6xi32>
        %301 = tensor.empty() : tensor<12x6xi32>
        %302 = linalg.matmul ins(%9, %alloc_59 : tensor<12x9xi32>, memref<9x6xi32>) outs(%301 : tensor<12x6xi32>) -> tensor<12x6xi32>
        %303 = math.fma %1, %1, %1 : tensor<12x9xf32>
        %304 = arith.andi %36, %36 : i32
        %305 = vector.broadcast %true : i1 to vector<i1>
        %306 = vector.transfer_write %305, %12[%c2] : vector<i1>, tensor<6xi1>
        %307 = math.log10 %cst_0 : f32
        %from_elements_60 = tensor.from_elements %c-1969_i16, %c-6647_i16, %c-1969_i16, %c-6647_i16, %c-6647_i16, %c-6647_i16, %c-1969_i16, %c-6647_i16, %c-6647_i16, %c-1969_i16, %c-6647_i16, %c-1969_i16, %c-1969_i16, %c-6647_i16, %c-1969_i16, %c-6647_i16, %c-6647_i16, %c-1969_i16, %c-1969_i16, %c-1969_i16, %c-1969_i16, %c-6647_i16, %c-6647_i16, %c-1969_i16, %c-1969_i16, %c-1969_i16, %c-6647_i16, %c-6647_i16, %c-1969_i16, %c-1969_i16, %c-6647_i16, %c-1969_i16, %c-6647_i16, %c-1969_i16, %c-6647_i16, %c-1969_i16 : tensor<9x4xi16>
        %308 = arith.ori %c382875512_i64, %c590134966_i64 : i64
        %309 = vector.splat %300 : vector<6xindex>
        %310 = arith.addi %c1581076836_i64, %c1581076836_i64 : i64
        %cast_61 = tensor.cast %reduced : tensor<i32> to tensor<i32>
        %311 = arith.remui %c1581076836_i64, %c382875512_i64 : i64
        %312 = arith.remf %cst_5, %cst_5 : f16
        %313 = memref.atomic_rmw mins %36, %alloc_12[%c5] : (i32, memref<6xi32>) -> i32
        %314 = index.ceildivu %44, %c6
        %315 = vector.splat %37 : vector<12x9xindex>
        %316 = index.sizeof
        %317 = index.sub %49, %314
        %318 = index.ceildivs %314, %c7
        memref.tensor_store %11, %alloc : memref<9x4xi1>
        linalg.yield %out_55 : f32
      } -> tensor<12x9x1xf32>
      %283 = math.absi %c1581076836_i64 : i64
      %284 = arith.remui %c0_i32, %36 : i32
      %alloc_54 = memref.alloc() : memref<12x9xi16>
      memref.tensor_store %2, %alloc_54 : memref<12x9xi16>
      %285 = math.log2 %14 : tensor<9x4xf16>
      memref.tensor_store %8, %alloc_8 : memref<9x4xf32>
      %286 = vector.shuffle %35, %33 [3, 4, 9, 14, 15, 17, 19, 20, 21, 23] : vector<12xi64>, vector<12xi64>
      linalg.yield %cst_3 : f32
    } -> tensor<12x9x1xf32>
    %54 = math.round %cst_4 : f16
    memref.store %cst_4, %alloc_19[%c7, %c1] : memref<9x4xf16>
    %55 = math.sqrt %from_elements : tensor<9x4xf32>
    %splat = tensor.splat %c-6647_i16 : tensor<9x4xi16>
    %56 = memref.atomic_rmw mins %c382875512_i64, %alloc_10[%c4, %c3] : (i64, memref<9x4xi64>) -> i64
    %generated = tensor.generate %c13, %c9 {
    ^bb0(%arg2: index, %arg3: index):
      %260 = math.ceil %15 : tensor<6xf16>
      %261 = arith.minf %cst_2, %cst : f32
      %262 = index.castu %c4 : index to i32
      %263 = vector.broadcast %c1581076836_i64 : i64 to vector<12x12xi64>
      %264 = vector.outerproduct %33, %35, %263 {kind = #vector.kind<or>} : vector<12xi64>, vector<12xi64>
      tensor.yield %cst_5 : f16
    } : tensor<?x?xf16>
    %57 = arith.divui %36, %c0_i32 : i32
    %58 = math.log2 %cst_0 : f32
    %59 = vector.broadcast %cst_4 : f16 to vector<9x4xf16>
    %60 = vector.broadcast %extracted : f32 to vector<12xf32>
    %61 = vector.fma %60, %60, %60 : vector<12xf32>
    %62 = arith.cmpi slt, %36, %36 : i32
    %63 = arith.mulf %cst, %cst_1 : f32
    %64 = index.ceildivu %37, %c7
    memref.assume_alignment %alloc_20, 2 : memref<9x4xi16>
    %65 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %32, %20, %36 : vector<4xi32>, vector<4xi32> into i32
    %66 = index.divs %c5, %c4
    %67 = affine.apply affine_map<(d0, d1) -> (d1 + d1 ceildiv 64)>(%c8, %c5)
    memref.store %c-6647_i16, %alloc_20[%c0, %c1] : memref<9x4xi16>
    affine.store %36, %alloc_12[%c14] : memref<6xi32>
    %68 = arith.remui %c590134966_i64, %c382875512_i64 : i64
    affine.store %cst_4, %alloc_7[%c11] : memref<6xf16>
    %69 = math.atan %15 : tensor<6xf16>
    %expanded_23 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<12x9xf32> into tensor<12x9x1xf32>
    %70 = math.round %extracted : f32
    %71 = arith.divui %36, %36 : i32
    %72 = vector.broadcast %cst : f32 to vector<12x9xf32>
    %73 = vector.fma %72, %72, %72 : vector<12x9xf32>
    %74 = index.sizeof
    %cst_24 = arith.constant 1.000000e+00 : f32
    %cst_25 = arith.constant 0.000000e+00 : f32
    %75 = vector.transfer_read %1[%c15, %c12], %cst_25 : tensor<12x9xf32>, vector<f32>
    %76 = math.powf %8, %8 : tensor<9x4xf32>
    %77 = math.floor %cst_0 : f32
    %false = index.bool.constant false
    %78 = index.ceildivs %c8, %74
    %79 = index.sizeof
    %80 = affine.for %arg2 = 0 to 116 iter_args(%arg3 = %alloc_20) -> (memref<9x4xi16>) {
      affine.yield %arg3 : memref<9x4xi16>
    }
    %81 = math.expm1 %cst_1 : f32
    %82 = vector.broadcast %true : i1 to vector<9x4xi1>
    %83 = vector.broadcast %36 : i32 to vector<9x4xi32>
    %84 = vector.gather %14[%78, %c3] [%83], %82, %59 : tensor<9x4xf16>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xf16> into vector<9x4xf16>
    %false_26 = index.bool.constant false
    %85 = index.ceildivu %c3, %64
    %86 = math.sqrt %cst_2 : f32
    %false_27 = index.bool.constant false
    %87 = index.maxs %85, %c14
    %88 = vector.flat_transpose %35 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
    %89 = index.casts %c1630030684_i64 : i64 to index
    %90 = scf.if %false -> (i16) {
      affine.store %c-1969_i16, %alloc_18[%c4] : memref<12xi16>
      %260 = math.log2 %cst_5 : f16
      %261 = affine.max affine_map<(d0) -> (d0, ((d0 - 1) floordiv 2) floordiv 8)>(%c6)
      %262 = math.atan %8 : tensor<9x4xf32>
      %263 = math.fma %cst, %cst_3, %extracted : f32
      %264 = vector.broadcast %cst_5 : f16 to vector<12xf16>
      vector.transfer_write %264, %alloc_19[%c11, %c9] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xf16>, memref<9x4xf16>
      %265 = vector.load %alloc_18[%c4] : memref<12xi16>, vector<6xi16>
      %266 = index.castu %c3 : index to i32
      scf.yield %c-1969_i16 : i16
    } else {
      %260 = arith.maxui %false, %false_26 : i1
      %261 = arith.cmpi sle, %c590134966_i64, %c1630030684_i64 : i64
      %extracted_46 = tensor.extract %13[%c5] : tensor<6xi32>
      %262 = vector.shuffle %59, %59 [4, 5, 6, 8, 10, 13, 15, 16, 17] : vector<9x4xf16>, vector<9x4xf16>
      %263 = arith.muli %extracted_46, %36 : i32
      %264 = arith.andi %false_26, %false_26 : i1
      %265 = arith.remf %cst_4, %cst_5 : f16
      %266 = arith.mulf %cst_0, %cst_2 : f32
      scf.yield %c-6647_i16 : i16
    }
    %91 = index.sub %c8, %c12
    bufferization.dealloc_tensor %expanded : tensor<12x9x1xf32>
    %92 = math.atan2 %14, %14 : tensor<9x4xf16>
    memref.store %c1581076836_i64, %42[%c2, %c0] : memref<9x4xi64>
    %93 = math.round %cst_0 : f32
    %94 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d2 - 1, d0)>(%c8, %64, %c3, %c13)
    %95 = math.fma %8, %8, %8 : tensor<9x4xf32>
    vector.print %83 : vector<9x4xi32>
    %extracted_28 = tensor.extract %7[%c3, %c0] : tensor<12x9xi64>
    %96 = tensor.empty() : tensor<9x4xi32>
    %97 = math.fpowi %14, %96 : tensor<9x4xf16>, tensor<9x4xi32>
    %98 = math.tan %1 : tensor<12x9xf32>
    %99 = memref.alloca_scope  -> (i32) {
      %260 = math.copysign %cst_0, %cst : f32
      %261 = math.log1p %15 : tensor<6xf16>
      %262 = vector.multi_reduction <xor>, %33, %88 [] : vector<12xi64> to vector<12xi64>
      %263 = math.log %cst_5 : f16
      %264 = math.tan %expanded : tensor<12x9x1xf32>
      %265 = arith.minf %cst, %cst : f32
      %extracted_46 = tensor.extract %13[%c2] : tensor<6xi32>
      %266 = math.ctlz %16 : tensor<12x9xi32>
      %267 = vector.broadcast %c0_i32 : i32 to vector<i32>
      %268 = vector.transfer_write %267, %9[%79, %c10] : vector<i32>, tensor<12x9xi32>
      %269 = arith.divui %c382875512_i64, %c276538512_i64 : i64
      %270 = memref.atomic_rmw muli %c-6647_i16, %alloc_18[%c5] : (i16, memref<12xi16>) -> i16
      %271 = index.divs %c7, %c10
      %272 = arith.divsi %extracted_28, %c1581076836_i64 : i64
      %273 = index.maxs %87, %271
      memref.assume_alignment %alloc_8, 4 : memref<9x4xf32>
      %274 = math.cos %1 : tensor<12x9xf32>
      %275 = arith.cmpf une, %cst_24, %cst_3 : f32
      %276 = math.fma %1, %1, %1 : tensor<12x9xf32>
      %277 = bufferization.clone %alloc_10 : memref<9x4xi64> to memref<9x4xi64>
      %278 = arith.cmpf ugt, %cst_0, %cst_24 : f32
      %alloc_47 = memref.alloc() : memref<6xf32>
      %279 = vector.broadcast %cst_2 : f32 to vector<6xf32>
      %280 = vector.broadcast %false_27 : i1 to vector<6xi1>
      %281 = vector.broadcast %36 : i32 to vector<6xi32>
      %282 = vector.gather %alloc_47[%85] [%281], %280, %279 : memref<6xf32>, vector<6xi32>, vector<6xi1>, vector<6xf32> into vector<6xf32>
      %283 = arith.divui %c1630030684_i64, %c1603201462_i64 : i64
      %284 = math.powf %15, %15 : tensor<6xf16>
      %285 = memref.load %alloc[%c5, %c2] : memref<9x4xi1>
      affine.store %c382875512_i64, %45[%c12, %c6] : memref<12x9xi64>
      %286 = vector.create_mask %91 : vector<12xi1>
      %287 = math.ceil %extracted : f32
      %288 = vector.broadcast %c590134966_i64 : i64 to vector<i64>
      vector.transfer_write %288, %alloc_11[%85, %87] : vector<i64>, memref<12x9xi64>
      %289 = arith.remsi %extracted_46, %c0_i32 : i32
      %from_elements_48 = tensor.from_elements %cst_5, %cst_4, %cst_5, %cst_5, %cst_4, %cst_4, %cst_5, %cst_5, %cst_5, %cst_5, %cst_4, %cst_5, %cst_4, %cst_5, %cst_5, %cst_5, %cst_4, %cst_5, %cst_4, %cst_5, %cst_4, %cst_5, %cst_4, %cst_5, %cst_5, %cst_5, %cst_5, %cst_4, %cst_5, %cst_4, %cst_5, %cst_5, %cst_5, %cst_4, %cst_5, %cst_5 : tensor<9x4xf16>
      %290 = math.sqrt %expanded_23 : tensor<12x9x1xf32>
      %291 = arith.remui %c1581076836_i64, %c276538512_i64 : i64
      memref.alloca_scope.return %c0_i32 : i32
    }
    %100 = vector.matrix_multiply %35, %33 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi64>, vector<12xi64>) -> vector<1xi64>
    %101 = arith.shrsi %90, %c-1969_i16 : i16
    %102 = arith.remsi %c276538512_i64, %extracted_28 : i64
    %103 = vector.broadcast %90 : i16 to vector<9x4xi16>
    %104 = vector.gather %6[%89, %c11] [%83], %82, %103 : tensor<9x4xi16>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xi16> into vector<9x4xi16>
    %105 = arith.cmpf uno, %cst, %cst_0 : f32
    %106 = math.roundeven %expanded_23 : tensor<12x9x1xf32>
    scf.execute_region {
      %from_elements_46 = tensor.from_elements %false_27, %false, %false_27, %false_27, %false_26, %false_26, %true, %false, %false, %false, %false_26, %false_27 : tensor<12xi1>
      %260 = vector.splat %c11 : vector<12xindex>
      %261 = affine.apply affine_map<(d0, d1) -> ((d1 + d0) * 128)>(%c9, %c0)
      %262 = bufferization.clone %42 : memref<9x4xi64> to memref<9x4xi64>
      affine.for %arg2 = 0 to 104 {
      }
      %263 = math.round %cst_4 : f16
      %264 = math.log2 %14 : tensor<9x4xf16>
      %265 = arith.cmpi sge, %c382875512_i64, %c276538512_i64 : i64
      scf.index_switch %c12 
      case 1 {
        memref.tensor_store %6, %alloc_20 : memref<9x4xi16>
        %272 = arith.remf %cst, %cst : f32
        %273 = arith.shrui %99, %36 : i32
        %274 = index.ceildivu %87, %c9
        %275 = index.ceildivs %91, %c5
        %true_48 = index.bool.constant true
        %276 = arith.remui %true, %false_27 : i1
        %277 = index.castu %c12 : index to i32
        %278 = index.sizeof
        %279 = arith.divui %c1581076836_i64, %c1603201462_i64 : i64
        bufferization.dealloc_tensor %14 : tensor<9x4xf16>
        %280 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 floordiv 8 - d1 + 1, 0)>(%87, %c8, %78, %49)
        %281 = arith.xori %true, %true : i1
        affine.store %c1603201462_i64, %alloc_15[%c15] : memref<6xi64>
        %282 = arith.cmpi ule, %c0_i32, %99 : i32
        %283 = arith.shrui %false, %true : i1
        scf.yield
      }
      case 2 {
        %272 = index.sizeof
        %273 = vector.shuffle %73, %72 [0, 1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 17, 20, 22, 23] : vector<12x9xf32>, vector<12x9xf32>
        %274 = math.ipowi %from_elements_46, %from_elements_46 : tensor<12xi1>
        %cast_48 = tensor.cast %9 : tensor<12x9xi32> to tensor<?x?xi32>
        %275 = affine.min affine_map<(d0, d1) -> ((d1 ceildiv 8) * 2 + (d1 ceildiv 8) mod 16, (d1 ceildiv 8) * 2, d1 ceildiv 8, d1)>(%c10, %78)
        %276 = vector.shuffle %72, %73 [2, 4, 5, 6, 10, 11, 13, 14, 15, 21] : vector<12x9xf32>, vector<12x9xf32>
        %277 = vector.broadcast %c-6647_i16 : i16 to vector<9xi16>
        %dest_49, %accumulated_value_50 = vector.scan <maxui>, %103, %277 {inclusive = false, reduction_dim = 1 : i64} : vector<9x4xi16>, vector<9xi16>
        %278 = vector.shuffle %83, %83 [1, 2, 4, 7, 8, 10, 12, 14, 15, 16, 17] : vector<9x4xi32>, vector<9x4xi32>
        %279 = arith.divsi %false_27, %true : i1
        %280 = math.fpowi %cst_3, %c0_i32 : f32, i32
        %281 = math.fpowi %cst_1, %99 : f32, i32
        %282 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, d2 * 4 - 4, d2, d3 floordiv 8)>(%c13, %87, %c14, %c6)
        %283 = arith.subi %true, %true : i1
        %284 = math.log %8 : tensor<9x4xf32>
        %285 = math.cos %14 : tensor<9x4xf16>
        %286 = arith.floordivsi %99, %36 : i32
        scf.yield
      }
      case 3 {
        %272 = vector.shuffle %59, %59 [0, 1, 2, 3, 4, 8, 11, 15, 16] : vector<9x4xf16>, vector<9x4xf16>
        %273 = arith.cmpi sgt, %c1630030684_i64, %c1603201462_i64 : i64
        %274 = math.floor %cst_24 : f32
        %alloc_48 = memref.alloc() : memref<4x6xi32>
        %275 = tensor.empty() : tensor<9x6xi32>
        %276 = linalg.matmul ins(%96, %alloc_48 : tensor<9x4xi32>, memref<4x6xi32>) outs(%275 : tensor<9x6xi32>) -> tensor<9x6xi32>
        %277 = math.atan %14 : tensor<9x4xf16>
        %splat_49 = tensor.splat %90 : tensor<9x4xi16>
        %278 = index.casts %c0_i32 : i32 to index
        %279 = math.ceil %cst_1 : f32
        %280 = math.ipowi %7, %10 : tensor<12x9xi64>
        %281 = arith.divsi %c1581076836_i64, %c1581076836_i64 : i64
        %282 = index.ceildivs %c8, %c2
        %283 = math.log10 %1 : tensor<12x9xf32>
        %284 = index.sizeof
        %285 = affine.apply affine_map<(d0, d1) -> ((d1 + d0) * 128)>(%c5, %c15)
        %286 = arith.maxf %cst_0, %cst_1 : f32
        %expanded_50 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<9x4xf32> into tensor<9x4x1xf32>
        scf.yield
      }
      case 4 {
        %272 = vector.broadcast %99 : i32 to vector<12xi32>
        %273 = vector.transfer_write %272, %9[%c13, %64] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi32>, tensor<12x9xi32>
        %274 = vector.flat_transpose %34 {columns = 3 : i32, rows = 4 : i32} : vector<12xi1> -> vector<12xi1>
        %275 = index.ceildivs %c11, %85
        %276 = arith.minf %cst_0, %cst_3 : f32
        %277 = math.log10 %from_elements : tensor<9x4xf32>
        %278 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 - (d2 + 1) - d3 ceildiv 32, (d2 + 1) floordiv 64, ((d2 + 1) floordiv 64 + (d2 + 1) ceildiv 64 - 32) * 2, d3 ceildiv 32)>(%66, %85, %67, %c5)
        %279 = index.add %85, %c14
        %280 = math.powf %15, %15 : tensor<6xf16>
        %281 = index.sub %c9, %c7
        %282 = index.divu %c4, %67
        %283 = math.fma %expanded_23, %expanded, %expanded : tensor<12x9x1xf32>
        %284 = math.floor %cst_5 : f16
        %285 = math.round %cst_4 : f16
        %286 = math.atan %extracted : f32
        %287 = math.copysign %extracted, %cst_24 : f32
        %288 = math.floor %expanded : tensor<12x9x1xf32>
        scf.yield
      }
      default {
        %272 = arith.andi %c1630030684_i64, %c276538512_i64 : i64
        %273 = arith.addf %extracted, %cst_24 : f32
        %274 = math.log2 %8 : tensor<9x4xf32>
        %275 = math.fpowi %cst_24, %36 : f32, i32
        %cast_48 = tensor.cast %12 : tensor<6xi1> to tensor<?xi1>
        %276 = vector.broadcast %c-6647_i16 : i16 to vector<12xi16>
        %277 = vector.broadcast %c0_i32 : i32 to vector<12xi32>
        %278 = vector.gather %alloc_13[%c8] [%277], %34, %276 : memref<6xi16>, vector<12xi32>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %279 = arith.maxui %c-1969_i16, %c-1969_i16 : i16
        %280 = math.exp2 %cst_1 : f32
        %281 = vector.broadcast %cst_1 : f32 to vector<9xf32>
        %282 = vector.broadcast %false_26 : i1 to vector<9xi1>
        %283 = vector.maskedload %alloc_8[%c5, %c2], %282, %281 : memref<9x4xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %284 = vector.reduction <xor>, %282 : vector<9xi1> into i1
        %285 = math.round %1 : tensor<12x9xf32>
        %286 = math.atan2 %cst_0, %cst_1 : f32
        %287 = arith.shrui %c1630030684_i64, %extracted_28 : i64
        %288 = index.sub %c9, %c8
        %289 = memref.atomic_rmw maxs %c0_i32, %alloc_12[%c2] : (i32, memref<6xi32>) -> i32
        %290 = memref.atomic_rmw assign %cst_5, %40[%c3] : (f16, memref<12xf16>) -> f16
      }
      %266 = affine.for %arg2 = 0 to 71 iter_args(%arg3 = %reduced) -> (tensor<i32>) {
        affine.yield %18 : tensor<i32>
      }
      %267 = arith.divf %extracted, %extracted : f32
      %268 = math.round %cst_3 : f32
      %269 = memref.alloca_scope  -> (i64) {
        %272 = math.ceil %1 : tensor<12x9xf32>
        %273 = math.absf %from_elements : tensor<9x4xf32>
        %274 = math.sqrt %8 : tensor<9x4xf32>
        %275 = arith.mulf %cst_1, %extracted : f32
        %276 = arith.maxf %extracted, %cst_24 : f32
        %alloc_48 = memref.alloc() : memref<9x4xi32>
        %277 = vector.broadcast %c0_i32 : i32 to vector<12xi32>
        %278 = vector.gather %alloc_48[%c13, %261] [%277], %34, %277 : memref<9x4xi32>, vector<12xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
        %279 = vector.reduction <mul>, %61 : vector<12xf32> into f32
        %280 = arith.divsi %c1581076836_i64, %c1630030684_i64 : i64
        %281 = math.atan2 %1, %1 : tensor<12x9xf32>
        %282 = vector.broadcast %90 : i16 to vector<9xi16>
        %dest_49, %accumulated_value_50 = vector.scan <minui>, %104, %282 {inclusive = false, reduction_dim = 1 : i64} : vector<9x4xi16>, vector<9xi16>
        vector.print %60 : vector<12xf32>
        %283 = math.log2 %cst : f32
        %284 = math.round %14 : tensor<9x4xf16>
        %285 = arith.shrui %c1630030684_i64, %c1581076836_i64 : i64
        %286 = index.ceildivs %c2, %c7
        %287 = arith.addi %false_26, %false_27 : i1
        %288 = tensor.empty() : tensor<9x9xi64>
        %289 = tensor.empty() : tensor<12x9xi64>
        %290 = linalg.matmul ins(%7, %288 : tensor<12x9xi64>, tensor<9x9xi64>) outs(%289 : tensor<12x9xi64>) -> tensor<12x9xi64>
        %cast_51 = tensor.cast %7 : tensor<12x9xi64> to tensor<?x?xi64>
        %291 = math.atan %from_elements : tensor<9x4xf32>
        %292 = vector.splat %c1 : vector<12x9xindex>
        %293 = math.ceil %cst_2 : f32
        %294 = arith.ori %false_26, %false_27 : i1
        %295 = arith.xori %c590134966_i64, %c276538512_i64 : i64
        %296 = arith.remui %c276538512_i64, %c1581076836_i64 : i64
        %297 = math.cos %1 : tensor<12x9xf32>
        %298 = index.maxs %261, %37
        %splat_52 = tensor.splat %99 : tensor<12xi32>
        %299 = arith.addi %c-6647_i16, %90 : i16
        %300 = arith.cmpi ugt, %c276538512_i64, %c382875512_i64 : i64
        %301 = vector.broadcast %cst_1 : f32 to vector<9x4xf32>
        %302 = vector.fma %301, %301, %301 : vector<9x4xf32>
        %303 = vector.insert %cst_3, %60 [5] : f32 into vector<12xf32>
        %cast_53 = tensor.cast %expanded_23 : tensor<12x9x1xf32> to tensor<?x?x?xf32>
        memref.alloca_scope.return %c1581076836_i64 : i64
      }
      %270 = arith.cmpf ult, %cst, %cst_1 : f32
      %cast_47 = tensor.cast %0 : tensor<12x9xi16> to tensor<?x?xi16>
      %271 = math.expm1 %cst_0 : f32
      scf.yield
    }
    %107 = math.log2 %1 : tensor<12x9xf32>
    %108 = vector.broadcast %36 : i32 to vector<i32>
    %109 = vector.transfer_write %108, %17[%c10, %66] : vector<i32>, tensor<12x9xi32>
    %110 = bufferization.clone %40 : memref<12xf16> to memref<12xf16>
    affine.store %cst_4, %alloc_14[%c2] : memref<12xf16>
    %111 = vector.broadcast %c4 : index to vector<9xindex>
    %112 = vector.broadcast %true : i1 to vector<9xi1>
    %113 = vector.broadcast %36 : i32 to vector<9xi32>
    vector.scatter %alloc_12[%c0] [%111], %112, %113 : memref<6xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
    vector.print %100 : vector<1xi64>
    %114 = affine.load %alloc[%c5, %c15] : memref<9x4xi1>
    %115 = vector.gather %40[%c6] [%83], %82, %59 : memref<12xf16>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xf16> into vector<9x4xf16>
    %116 = math.floor %cst_3 : f32
    %117 = vector.shuffle %88, %35 [0, 1, 2, 3, 5, 7, 8, 10, 13, 14, 20, 21, 22, 23] : vector<12xi64>, vector<12xi64>
    %118 = affine.max affine_map<(d0, d1) -> (-(d0 + 64) + 2, 130, 130)>(%67, %c8)
    %119 = arith.cmpf uno, %cst_1, %cst_3 : f32
    %extracted_29 = tensor.extract %12[%c5] : tensor<6xi1>
    %120 = math.absi %7 : tensor<12x9xi64>
    memref.tensor_store %10, %alloc_16 : memref<12x9xi64>
    %121 = math.tan %from_elements : tensor<9x4xf32>
    %122 = arith.subi %false_26, %false_26 : i1
    scf.if %false {
      %260 = math.atan2 %14, %14 : tensor<9x4xf16>
      %261 = vector.broadcast %36 : i32 to vector<9xi32>
      %dest_46, %accumulated_value_47 = vector.scan <maxsi>, %83, %261 {inclusive = false, reduction_dim = 1 : i64} : vector<9x4xi32>, vector<9xi32>
      %262 = math.floor %cst_3 : f32
      %263 = arith.remsi %90, %90 : i16
      %264 = vector.extract %115[6] : vector<9x4xf16>
      affine.store %extracted_29, %38[%c7] : memref<12xi1>
      %265 = math.absi %0 : tensor<12x9xi16>
      %266 = math.expm1 %1 : tensor<12x9xf32>
    } else {
      %260 = arith.floordivsi %false_26, %false_27 : i1
      %extracted_46 = tensor.extract %9[%c8, %c5] : tensor<12x9xi32>
      %261 = bufferization.clone %alloc_17 : memref<12xi16> to memref<12xi16>
      %262 = arith.addi %true, %true : i1
      %263 = vector.splat %false : vector<9x4xi1>
      %264 = arith.shrui %36, %c0_i32 : i32
      %265 = math.ceil %cst_3 : f32
      %266 = arith.cmpf ole, %cst_3, %cst_24 : f32
    }
    %123 = vector.broadcast %extracted : f32 to vector<6xf32>
    %124 = math.atan %15 : tensor<6xf16>
    %125 = math.floor %14 : tensor<9x4xf16>
    %126 = math.rsqrt %cst_3 : f32
    %127 = vector.broadcast %c-1969_i16 : i16 to vector<4xi16>
    %dest, %accumulated_value = vector.scan <add>, %103, %127 {inclusive = false, reduction_dim = 0 : i64} : vector<9x4xi16>, vector<4xi16>
    %128 = math.round %cst_4 : f16
    %129 = arith.subi %c0_i32, %c0_i32 : i32
    %130 = arith.addi %c276538512_i64, %c590134966_i64 : i64
    %inserted = tensor.insert %c276538512_i64 into %7[%c9, %c8] : tensor<12x9xi64>
    memref.alloca_scope  {
      %260 = affine.for %arg2 = 0 to 43 iter_args(%arg3 = %45) -> (memref<12x9xi64>) {
        affine.yield %45 : memref<12x9xi64>
      }
      %261 = arith.shli %c-1969_i16, %c-6647_i16 : i16
      %262 = math.tan %cst_4 : f16
      %263 = math.absf %cst : f32
      %264 = arith.remf %cst, %cst_2 : f32
      bufferization.dealloc_tensor %6 : tensor<9x4xi16>
      %265 = vector.broadcast %extracted : f32 to vector<9x4xf32>
      scf.index_switch %c6 
      case 1 {
        %false_49 = index.bool.constant false
        %292 = index.mul %79, %c4
        %293 = arith.andi %false_27, %114 : i1
        %294 = math.cttz %12 : tensor<6xi1>
        %295 = math.atan %cst_24 : f32
        %296 = math.ceil %8 : tensor<9x4xf32>
        %297 = math.ipowi %12, %12 : tensor<6xi1>
        %298 = vector.broadcast %c1603201462_i64 : i64 to vector<12xi64>
        %splat_50 = tensor.splat %36 : tensor<6xi32>
        %299 = math.round %expanded_23 : tensor<12x9x1xf32>
        %300 = math.ipowi %7, %7 : tensor<12x9xi64>
        %301 = arith.cmpf ogt, %cst, %cst_2 : f32
        %302 = index.ceildivs %91, %c1
        %303 = bufferization.clone %110 : memref<12xf16> to memref<12xf16>
        %304 = vector.multi_reduction <maxsi>, %34, %34 [] : vector<12xi1> to vector<12xi1>
        %305 = vector.broadcast %c382875512_i64 : i64 to vector<12x9xi64>
        scf.yield
      }
      case 2 {
        %292 = vector.broadcast %cst_0 : f32 to vector<12x12xf32>
        %293 = vector.outerproduct %61, %60, %292 {kind = #vector.kind<maxf>} : vector<12xf32>, vector<12xf32>
        %294 = arith.shrsi %114, %114 : i1
        %295 = math.atan2 %cst_0, %cst_2 : f32
        %296 = index.mul %118, %78
        %297 = arith.cmpi sle, %36, %99 : i32
        %298 = index.divs %87, %64
        %299 = math.atan %8 : tensor<9x4xf32>
        %300 = arith.divsi %c276538512_i64, %c1603201462_i64 : i64
        %301 = index.mul %c9, %296
        %302 = math.log2 %cst_2 : f32
        %303 = math.floor %cst_0 : f32
        %304 = arith.cmpi uge, %99, %c0_i32 : i32
        memref.tensor_store %14, %alloc_19 : memref<9x4xf16>
        %305 = math.log %8 : tensor<9x4xf32>
        %306 = index.mul %85, %298
        %307 = math.atan2 %expanded, %expanded_23 : tensor<12x9x1xf32>
        scf.yield
      }
      case 3 {
        %292 = arith.remui %c0_i32, %99 : i32
        %alloc_49 = memref.alloc() : memref<4x4xf32>
        %293 = tensor.empty() : tensor<9x4xf32>
        %294 = linalg.matmul ins(%from_elements, %alloc_49 : tensor<9x4xf32>, memref<4x4xf32>) outs(%293 : tensor<9x4xf32>) -> tensor<9x4xf32>
        %295 = vector.broadcast %66 : index to vector<12xindex>
        vector.scatter %alloc[%c3, %c0] [%295], %34, %34 : memref<9x4xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
        %296 = vector.broadcast %true : i1 to vector<6xi1>
        %297 = tensor.empty() : tensor<4x9xf32>
        %298 = tensor.empty() : tensor<9x9xf32>
        %299 = linalg.matmul ins(%293, %297 : tensor<9x4xf32>, tensor<4x9xf32>) outs(%298 : tensor<9x9xf32>) -> tensor<9x9xf32>
        %300 = arith.cmpi slt, %true, %extracted_29 : i1
        %301 = math.fma %15, %15, %15 : tensor<6xf16>
        %false_50 = index.bool.constant false
        %302 = math.log1p %cst_2 : f32
        %303 = arith.ceildivsi %c0_i32, %99 : i32
        %304 = arith.minf %cst_2, %cst_1 : f32
        %alloca = memref.alloca() : memref<9x4xi32>
        %splat_51 = tensor.splat %c1581076836_i64 : tensor<12x9xi64>
        %305 = bufferization.clone %alloc_20 : memref<9x4xi16> to memref<9x4xi16>
        %306 = vector.broadcast %37 : index to vector<4xindex>
        %307 = vector.broadcast %false : i1 to vector<4xi1>
        %308 = vector.broadcast %c-6647_i16 : i16 to vector<4xi16>
        vector.scatter %305[%c5, %c3] [%306], %307, %308 : memref<9x4xi16>, vector<4xindex>, vector<4xi1>, vector<4xi16>
        %309 = arith.mulf %cst_3, %cst : f32
        scf.yield
      }
      default {
        %292 = vector.splat %c10 : vector<6xindex>
        %293 = arith.remf %extracted, %cst_0 : f32
        %294 = affine.max affine_map<(d0) -> ((d0 * 2) ceildiv 64, -d0, ((-d0) ceildiv 8) ceildiv 4, (d0 * 2) ceildiv 64)>(%c8)
        %295 = arith.mulf %cst_0, %cst : f32
        %extracted_49 = tensor.extract %5[%c4] : tensor<6xi64>
        %296 = math.powf %cst_3, %cst_1 : f32
        %297 = arith.cmpf true, %cst_0, %cst_0 : f32
        %298 = arith.shrui %114, %true : i1
        %299 = index.sub %78, %294
        %300 = vector.insertelement %cst_2, %60[%c1 : index] : vector<12xf32>
        affine.store %c-1969_i16, %alloc_17[%c10] : memref<12xi16>
        %301 = math.tan %expanded_23 : tensor<12x9x1xf32>
        %302 = vector.broadcast %false_26 : i1 to vector<9xi1>
        %dest_50, %accumulated_value_51 = vector.scan <mul>, %82, %302 {inclusive = false, reduction_dim = 1 : i64} : vector<9x4xi1>, vector<9xi1>
        %303 = vector.transpose %34, [0] : vector<12xi1> to vector<12xi1>
        %304 = arith.divsi %extracted_29, %true : i1
        %305 = arith.negf %cst_4 : f16
      }
      %266 = vector.broadcast %c6 : index to vector<12xindex>
      %267 = vector.broadcast %c-1969_i16 : i16 to vector<12xi16>
      vector.scatter %alloc_17[%c10] [%266], %34, %267 : memref<12xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
      %268 = math.log2 %cst_4 : f16
      affine.store %cst_4, %110[%c4] : memref<12xf16>
      %269 = vector.broadcast %c-1969_i16 : i16 to vector<6xi16>
      %270 = vector.broadcast %true : i1 to vector<6xi1>
      %271 = vector.broadcast %c0_i32 : i32 to vector<6xi32>
      %272 = vector.gather %0[%44, %c4] [%271], %270, %269 : tensor<12x9xi16>, vector<6xi32>, vector<6xi1>, vector<6xi16> into vector<6xi16>
      %273 = arith.remui %extracted_29, %extracted_29 : i1
      memref.assume_alignment %42, 2 : memref<9x4xi64>
      %generated_46 = tensor.generate %c13 {
      ^bb0(%arg2: index, %arg3: index):
        %292 = arith.addi %false_26, %114 : i1
        %293 = arith.divsi %false_27, %114 : i1
        %294 = bufferization.clone %alloc_11 : memref<12x9xi64> to memref<12x9xi64>
        %295 = vector.broadcast %c-1969_i16 : i16 to vector<12xi16>
        %296 = vector.transfer_write %295, %splat[%c3, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi16>, tensor<9x4xi16>
        tensor.yield %cst_4 : f16
      } : tensor<?x4xf16>
      %274 = math.log2 %cst_1 : f32
      vector.print %20 : vector<4xi32>
      %275 = affine.load %alloc_6[%c3] : memref<12xi1>
      %276 = arith.remui %99, %99 : i32
      %dest_47, %accumulated_value_48 = vector.scan <add>, %73, %60 {inclusive = false, reduction_dim = 1 : i64} : vector<12x9xf32>, vector<12xf32>
      %277 = scf.index_switch %37 -> index 
      case 1 {
        %from_elements_49 = tensor.from_elements %cst_24, %cst_1, %extracted, %extracted, %cst, %cst_1, %cst_3, %cst, %cst, %cst_3, %extracted, %cst_3, %cst, %cst_1, %cst_3, %cst_1, %cst_2, %cst_0, %cst_2, %cst, %cst_2, %extracted, %cst, %cst_0, %extracted, %cst, %cst_1, %cst, %cst_2, %extracted, %cst_0, %cst_1, %cst, %cst_2, %cst_3, %extracted : tensor<9x4xf32>
        %292 = arith.andi %c1581076836_i64, %c1630030684_i64 : i64
        %293 = index.add %91, %c5
        %294 = bufferization.clone %alloc_7 : memref<6xf16> to memref<6xf16>
        %295 = math.atan %cst_4 : f16
        %296 = arith.shrui %c0_i32, %99 : i32
        %297 = math.round %15 : tensor<6xf16>
        vector.print %115 : vector<9x4xf16>
        %298 = affine.load %alloc_10[%c0, %c10] : memref<9x4xi64>
        %299 = math.atan %cst_0 : f32
        %300 = arith.divsi %298, %298 : i64
        %301 = arith.andi %c-1969_i16, %c-6647_i16 : i16
        %302 = vector.flat_transpose %61 {columns = 3 : i32, rows = 4 : i32} : vector<12xf32> -> vector<12xf32>
        %303 = vector.broadcast %298 : i64 to vector<6xi64>
        %304 = vector.create_mask %49 : vector<12xi1>
        %305 = vector.matrix_multiply %35, %33 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi64>, vector<12xi64>) -> vector<1xi64>
        scf.yield %44 : index
      }
      case 2 {
        %292 = math.cttz %114 : i1
        %293 = math.ctlz %c-1969_i16 : i16
        %294 = math.powf %cst, %cst_0 : f32
        %295 = arith.shrui %c1581076836_i64, %c1630030684_i64 : i64
        %296 = vector.broadcast %false_26 : i1 to vector<12x9xi1>
        %cast_49 = tensor.cast %4 : tensor<12xi64> to tensor<?xi64>
        %297 = arith.cmpf oeq, %cst_1, %cst_3 : f32
        %298 = math.ctlz %12 : tensor<6xi1>
        memref.assume_alignment %alloc_11, 8 : memref<12x9xi64>
        %299 = affine.apply affine_map<(d0) -> (d0 * 2 - 128)>(%85)
        %300 = index.maxs %c6, %74
        %301 = vector.gather %alloc_12[%c13] [%271], %270, %271 : memref<6xi32>, vector<6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %302 = arith.cmpi ne, %c276538512_i64, %c382875512_i64 : i64
        %303 = index.ceildivs %c7, %c6
        %expanded_50 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<12x9xi16> into tensor<12x9x1xi16>
        %304 = arith.shrsi %c1603201462_i64, %c382875512_i64 : i64
        scf.yield %c4 : index
      }
      case 3 {
        %292 = math.fma %cst_2, %cst, %cst_24 : f32
        %293 = arith.andi %90, %c-1969_i16 : i16
        %294 = arith.subi %114, %114 : i1
        %295 = vector.flat_transpose %271 {columns = 2 : i32, rows = 3 : i32} : vector<6xi32> -> vector<6xi32>
        %296 = math.ctlz %5 : tensor<6xi64>
        %297 = vector.broadcast %extracted : f32 to vector<9xf32>
        %298 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %60, %72, %297 : vector<12xf32>, vector<12x9xf32> into vector<9xf32>
        %299 = vector.reduction <minsi>, %272 : vector<6xi16> into i16
        %300 = arith.minui %c1581076836_i64, %c590134966_i64 : i64
        %301 = math.log1p %14 : tensor<9x4xf16>
        %302 = index.sizeof
        %303 = math.log1p %14 : tensor<9x4xf16>
        %304 = vector.extract_strided_slice %61 {offsets = [1], sizes = [5], strides = [1]} : vector<12xf32> to vector<5xf32>
        %305 = index.divu %66, %c2
        %306 = arith.divui %c0_i32, %99 : i32
        %alloc_49 = memref.alloc() : memref<6xf32>
        %307 = vector.broadcast %99 : i32 to vector<12xi32>
        %308 = vector.gather %alloc_49[%c0] [%307], %34, %61 : memref<6xf32>, vector<12xi32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
        %309 = vector.insert %extracted_29, %270 [0] : i1 into vector<6xi1>
        scf.yield %302 : index
      }
      case 4 {
        %292 = vector.multi_reduction <mul>, %84, %cst_5 [0, 1] : vector<9x4xf16> to f16
        %293 = math.fpowi %cst_3, %99 : f32, i32
        %expanded_49 = tensor.expand_shape %96 [[0], [1, 2]] : tensor<9x4xi32> into tensor<9x4x1xi32>
        %294 = vector.broadcast %c15 : index to vector<9xindex>
        %295 = vector.broadcast %114 : i1 to vector<9xi1>
        %296 = vector.broadcast %cst_4 : f16 to vector<9xf16>
        vector.scatter %alloc_14[%c6] [%294], %295, %296 : memref<12xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
        %297 = arith.cmpf oge, %cst_3, %cst_3 : f32
        %true_50 = index.bool.constant true
        %298 = math.floor %1 : tensor<12x9xf32>
        %299 = index.ceildivs %118, %c8
        %300 = memref.load %42[%c1, %c3] : memref<9x4xi64>
        %301 = index.sizeof
        %302 = vector.extract %33[6] : vector<12xi64>
        %303 = math.roundeven %cst_24 : f32
        %304 = vector.load %alloc_7[%c3] : memref<6xf16>, vector<6xf16>
        %305 = arith.negf %cst_4 : f16
        %306 = arith.minui %114, %false : i1
        %307 = math.powf %cst_4, %cst_5 : f16
        scf.yield %49 : index
      }
      default {
        %292 = vector.broadcast %cst_3 : f32 to vector<9xf32>
        %dest_49, %accumulated_value_50 = vector.scan <minf>, %73, %292 {inclusive = false, reduction_dim = 0 : i64} : vector<12x9xf32>, vector<9xf32>
        %293 = vector.broadcast %275 : i1 to vector<6x6xi1>
        %294 = vector.outerproduct %270, %270, %293 {kind = #vector.kind<maxui>} : vector<6xi1>, vector<6xi1>
        %295 = arith.maxui %false_26, %114 : i1
        %296 = arith.remui %false_26, %false_27 : i1
        %297 = vector.broadcast %cst_4 : f16 to vector<9xf16>
        %dest_51, %accumulated_value_52 = vector.scan <add>, %115, %297 {inclusive = false, reduction_dim = 1 : i64} : vector<9x4xf16>, vector<9xf16>
        %298 = affine.apply affine_map<(d0) -> (d0)>(%c9)
        %299 = index.divs %c2, %c9
        %300 = vector.broadcast %c382875512_i64 : i64 to vector<1x1xi64>
        %301 = vector.outerproduct %100, %100, %300 {kind = #vector.kind<maxsi>} : vector<1xi64>, vector<1xi64>
        %302 = bufferization.clone %40 : memref<12xf16> to memref<12xf16>
        %303 = vector.splat %extracted_29 : vector<9x4xi1>
        %304 = memref.load %42[%c6, %c3] : memref<9x4xi64>
        %305 = math.ctlz %c382875512_i64 : i64
        %306 = index.mul %c9, %c9
        %307 = index.ceildivs %89, %87
        %true_53 = index.bool.constant true
        %308 = math.exp %expanded_23 : tensor<12x9x1xf32>
        scf.yield %66 : index
      }
      affine.for %arg2 = 0 to 20 {
      }
      %278 = index.sizeof
      %279 = math.round %extracted : f32
      %280 = vector.broadcast %99 : i32 to vector<12xi32>
      %281 = vector.gather %16[%89, %c14] [%280], %34, %280 : tensor<12x9xi32>, vector<12xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
      %282 = index.divs %c13, %c0
      %283 = vector.extract %104[4] : vector<9x4xi16>
      %284 = arith.cmpf oge, %cst_3, %cst_3 : f32
      %285 = tensor.empty() : tensor<12xi1>
      %286 = vector.gather %285[%44] [%83], %82, %82 : tensor<12xi1>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xi1> into vector<9x4xi1>
      %287 = vector.broadcast %99 : i32 to vector<12x12xi32>
      %288 = vector.outerproduct %280, %281, %287 {kind = #vector.kind<minsi>} : vector<12xi32>, vector<12xi32>
      %289 = vector.broadcast %99 : i32 to vector<9xi32>
      %290 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %83, %32, %289 : vector<9x4xi32>, vector<4xi32> into vector<9xi32>
      %291 = memref.alloca_scope  -> (i16) {
        %292 = math.fpowi %cst_2, %c0_i32 : f32, i32
        %293 = math.atan %1 : tensor<12x9xf32>
        %294 = index.add %c0, %282
        %295 = arith.maxf %cst, %cst_1 : f32
        %296 = math.sqrt %8 : tensor<9x4xf32>
        %297 = memref.atomic_rmw minf %cst_5, %alloc_7[%c4] : (f16, memref<6xf16>) -> f16
        %298 = index.maxs %278, %74
        %299 = math.absf %cst_4 : f16
        %extracted_49 = tensor.extract %5[%c5] : tensor<6xi64>
        %300 = vector.multi_reduction <xor>, %103, %283 [0] : vector<9x4xi16> to vector<4xi16>
        %inserted_50 = tensor.insert %cst_4 into %14[%c3, %c2] : tensor<9x4xf16>
        %301 = vector.flat_transpose %100 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %302 = math.atan %1 : tensor<12x9xf32>
        %303 = arith.floordivsi %c590134966_i64, %extracted_28 : i64
        %304 = arith.addi %true, %114 : i1
        %alloc_51 = memref.alloc() : memref<4x12xf32>
        %305 = tensor.empty() : tensor<9x12xf32>
        %306 = linalg.matmul ins(%from_elements, %alloc_51 : tensor<9x4xf32>, memref<4x12xf32>) outs(%305 : tensor<9x12xf32>) -> tensor<9x12xf32>
        %true_52 = index.bool.constant true
        %307 = arith.cmpf true, %extracted, %cst_0 : f32
        %308 = math.log %cst_0 : f32
        %309 = arith.shrui %c-1969_i16, %90 : i16
        %true_53 = arith.constant true
        %310 = vector.flat_transpose %100 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %311 = vector.flat_transpose %281 {columns = 3 : i32, rows = 4 : i32} : vector<12xi32> -> vector<12xi32>
        %312 = affine.load %alloc_16[%c12, %c6] : memref<12x9xi64>
        %313 = vector.load %110[%c11] : memref<12xf16>, vector<9x4xf16>
        %314 = arith.remf %cst_24, %cst_24 : f32
        %cst_54 = arith.constant 1.000000e+00 : f32
        %cst_55 = arith.constant 0.000000e+00 : f32
        %315 = vector.transfer_read %8[%79, %c9], %cst_55 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<9x4xf32>, vector<4xf32>
        %316 = arith.remsi %c-6647_i16, %c-6647_i16 : i16
        %317 = arith.addi %true_52, %true : i1
        %318 = affine.load %alloc_17[%c1] : memref<12xi16>
        vector.print %265 : vector<9x4xf32>
        %319 = arith.xori %c-6647_i16, %318 : i16
        memref.alloca_scope.return %90 : i16
      }
    }
    %131 = arith.cmpf uge, %cst_24, %cst_1 : f32
    %132 = arith.floordivsi %extracted_28, %extracted_28 : i64
    %133 = math.ctlz %90 : i16
    %134 = affine.max affine_map<(d0) -> (2, -64)>(%78)
    %135 = vector.load %alloc_11[%c10, %c6] : memref<12x9xi64>, vector<12xi64>
    %136 = affine.if affine_set<(d0, d1) : ((d0 - d1) mod 8 == 0, d0 >= 0, -d1 == 0, (d1 + (d0 - d1) mod 8 + 64) * 32 == 0)>(%c14, %c14) -> memref<9x4xi64> {
      %260 = math.rsqrt %15 : tensor<6xf16>
      %261 = vector.broadcast %c276538512_i64 : i64 to vector<9xi64>
      %262 = vector.broadcast %true : i1 to vector<9xi1>
      %263 = vector.maskedload %alloc_9[%c3], %262, %261 : memref<6xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
      %264 = affine.for %arg2 = 0 to 119 iter_args(%arg3 = %3) -> (tensor<12x9xi1>) {
        affine.yield %3 : tensor<12x9xi1>
      }
      %265 = bufferization.clone %alloc : memref<9x4xi1> to memref<9x4xi1>
      %266 = tensor.empty() : tensor<12xi64>
      %267 = vector.broadcast %c-1969_i16 : i16 to vector<4xi16>
      %268 = vector.broadcast %false_27 : i1 to vector<4xi1>
      %269 = vector.maskedload %alloc_20[%c2, %c0], %268, %267 : memref<9x4xi16>, vector<4xi1>, vector<4xi16> into vector<4xi16>
      %270 = arith.xori %114, %extracted_29 : i1
      memref.alloca_scope  {
        %cast_46 = tensor.cast %10 : tensor<12x9xi64> to tensor<?x?xi64>
        %271 = math.floor %14 : tensor<9x4xf16>
        %272 = math.absi %36 : i32
        %273 = arith.remf %cst, %cst_3 : f32
        %274 = vector.shuffle %33, %33 [2, 3, 4, 5, 7, 8, 9, 10, 13, 15, 18, 22] : vector<12xi64>, vector<12xi64>
        %275 = math.ceil %cst_1 : f32
        %276 = math.expm1 %from_elements : tensor<9x4xf32>
        %277 = math.absi %extracted_28 : i64
        %278 = arith.subi %c1603201462_i64, %c1603201462_i64 : i64
        %279 = math.floor %cst_5 : f16
        %280 = math.log10 %14 : tensor<9x4xf16>
        %281 = arith.remsi %36, %36 : i32
        %282 = tensor.empty() : tensor<12x4xi32>
        %283 = linalg.matmul ins(%17, %96 : tensor<12x9xi32>, tensor<9x4xi32>) outs(%282 : tensor<12x4xi32>) -> tensor<12x4xi32>
        %284 = arith.xori %c1581076836_i64, %c1581076836_i64 : i64
        %285 = arith.floordivsi %c1603201462_i64, %c1603201462_i64 : i64
        %286 = index.divu %c6, %74
        %287 = arith.shrui %c1581076836_i64, %c590134966_i64 : i64
        %288 = arith.remf %cst, %cst_2 : f32
        %289 = index.ceildivs %c10, %c11
        %290 = index.ceildivu %78, %c9
        %cast_47 = tensor.cast %14 : tensor<9x4xf16> to tensor<?x?xf16>
        %291 = affine.min affine_map<(d0, d1, d2) -> (d2, (d2 + (-d0) floordiv 64) floordiv 32)>(%78, %c11, %85)
        memref.store %99, %alloc_21[%c3, %c0] : memref<9x12xi32>
        %292 = vector.flat_transpose %123 {columns = 2 : i32, rows = 3 : i32} : vector<6xf32> -> vector<6xf32>
        %293 = arith.shrsi %false, %114 : i1
        %294 = arith.remui %36, %36 : i32
        %295 = affine.max affine_map<(d0, d1, d2) -> (d0 - 32)>(%44, %286, %134)
        %296 = arith.divui %c-6647_i16, %90 : i16
        affine.store %c590134966_i64, %alloc_11[%c9, %c12] : memref<12x9xi64>
        %297 = math.round %1 : tensor<12x9xf32>
        %expanded_48 = tensor.expand_shape %4 [[0, 1]] : tensor<12xi64> into tensor<12x1xi64>
        %298 = vector.broadcast %c0_i32 : i32 to vector<6xi32>
      }
      affine.yield %alloc_10 : memref<9x4xi64>
    } else {
      %260 = affine.load %alloc_20[%c9, %c7] : memref<9x4xi16>
      %261 = math.log1p %15 : tensor<6xf16>
      %262 = arith.subi %true, %true : i1
      %263 = arith.remui %false_26, %false : i1
      memref.tensor_store %21, %alloc_9 : memref<6xi64>
      %264 = scf.if %true -> (i1) {
        %267 = arith.ori %c590134966_i64, %c1630030684_i64 : i64
        %268 = affine.min affine_map<(d0, d1, d2) -> (d0, d0, d0 * 16)>(%44, %91, %c3)
        %269 = index.maxs %89, %85
        %270 = bufferization.clone %alloc_6 : memref<12xi1> to memref<12xi1>
        %from_elements_46 = tensor.from_elements %c0_i32, %99, %c0_i32, %36, %36, %99, %99, %c0_i32, %99, %c0_i32, %c0_i32, %99, %36, %36, %99, %99, %99, %99, %c0_i32, %99, %36, %99, %c0_i32, %99, %36, %36, %99, %99, %99, %99, %99, %36, %99, %99, %99, %36, %99, %36, %36, %c0_i32, %36, %36, %99, %99, %36, %36, %36, %99, %c0_i32, %99, %99, %36, %36, %c0_i32, %c0_i32, %36, %99, %99, %99, %c0_i32, %c0_i32, %99, %c0_i32, %99, %36, %99, %36, %36, %36, %c0_i32, %99, %99, %99, %36, %99, %99, %36, %99, %c0_i32, %c0_i32, %c0_i32, %99, %36, %99, %c0_i32, %c0_i32, %c0_i32, %99, %99, %99, %99, %36, %99, %99, %99, %99, %99, %99, %c0_i32, %c0_i32, %36, %c0_i32, %c0_i32, %99, %99, %36, %36, %36 : tensor<12x9xi32>
        %271 = math.ceil %1 : tensor<12x9xf32>
        %272 = index.sizeof
        %273 = math.ctlz %extracted_29 : i1
        scf.yield %false : i1
      } else {
        %267 = index.divu %49, %c12
        %268 = memref.atomic_rmw minu %260, %alloc_18[%c1] : (i16, memref<12xi16>) -> i16
        %269 = math.roundeven %cst_4 : f16
        %270 = math.log1p %cst_1 : f32
        %271 = bufferization.clone %alloc_6 : memref<12xi1> to memref<12xi1>
        %272 = math.round %expanded_23 : tensor<12x9x1xf32>
        %273 = affine.load %alloc_6[%c15] : memref<12xi1>
        %274 = vector.bitcast %59 : vector<9x4xf16> to vector<9x4xi16>
        scf.yield %false_26 : i1
      }
      %265 = arith.xori %false, %true : i1
      %266 = memref.atomic_rmw assign %cst_5, %alloc_14[%c7] : (f16, memref<12xf16>) -> f16
      affine.yield %42 : memref<9x4xi64>
    }
    %137 = arith.negf %cst_4 : f16
    %138 = index.ceildivs %94, %37
    affine.store %c590134966_i64, %alloc_10[%c6, %c9] : memref<9x4xi64>
    %139 = index.divu %c11, %85
    %140 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 floordiv 4, d2)>(%c0, %79, %c7, %c1)
    %141 = affine.apply affine_map<(d0, d1) -> (d0 mod 4 - 124)>(%118, %139)
    %142 = arith.addi %c1581076836_i64, %c276538512_i64 : i64
    %143 = vector.load %41[%c4, %c0] : memref<9x4xf32>, vector<9x4xf32>
    %144 = arith.cmpi slt, %c1630030684_i64, %c590134966_i64 : i64
    %expanded_30 = tensor.expand_shape %expanded [[0], [1], [2, 3]] : tensor<12x9x1xf32> into tensor<12x9x1x1xf32>
    %145 = arith.xori %114, %extracted_29 : i1
    %146 = math.expm1 %8 : tensor<9x4xf32>
    %147 = arith.remf %cst_1, %cst_2 : f32
    %148 = index.sub %c9, %118
    %149 = arith.negf %cst_2 : f32
    %extracted_31 = tensor.extract %reduced[] : tensor<i32>
    %150 = vector.flat_transpose %88 {columns = 3 : i32, rows = 4 : i32} : vector<12xi64> -> vector<12xi64>
    %151 = math.roundeven %cst_2 : f32
    %152 = index.maxs %67, %c7
    %153 = vector.broadcast %false : i1 to vector<4xi1>
    %154 = vector.maskedload %alloc_6[%c2], %153, %153 : memref<12xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
    %155 = index.divs %91, %c0
    %156 = math.expm1 %expanded : tensor<12x9x1xf32>
    %alloc_32 = memref.alloc() : memref<1xf32>
    %157 = tensor.empty() : tensor<1x12xf32>
    %158 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_32, %157 : memref<1xf32>, tensor<1x12xf32>) outs(%expanded_23 : tensor<12x9x1xf32>) {
    ^bb0(%in: f32, %in_46: f32, %out: f32):
      %260 = math.cos %cst_0 : f32
      %261 = vector.insertelement %cst_24, %123[%152 : index] : vector<6xf32>
      %262 = arith.divui %extracted_28, %c590134966_i64 : i64
      %alloc_47 = memref.alloc() : memref<12xi64>
      memref.tensor_store %4, %alloc_47 : memref<12xi64>
      %263 = arith.remf %cst_24, %cst_24 : f32
      %alloc_48 = memref.alloc() : memref<4x6xf16>
      %264 = tensor.empty() : tensor<9x6xf16>
      %265 = linalg.matmul ins(%14, %alloc_48 : tensor<9x4xf16>, memref<4x6xf16>) outs(%264 : tensor<9x6xf16>) -> tensor<9x6xf16>
      %266 = vector.broadcast %false_27 : i1 to vector<4x4xi1>
      %267 = vector.outerproduct %153, %154, %266 {kind = #vector.kind<or>} : vector<4xi1>, vector<4xi1>
      %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %20, %20, %36 : vector<4xi32>, vector<4xi32> into i32
      %269 = vector.broadcast %cst_2 : f32 to vector<9x9xf32>
      %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %73, %72, %269 : vector<12x9xf32>, vector<12x9xf32> into vector<9x9xf32>
      %271 = arith.mulf %cst_4, %cst_5 : f16
      %272 = index.ceildivu %c12, %141
      %273 = arith.shrsi %c0_i32, %36 : i32
      affine.store %c1603201462_i64, %45[%c15, %c10] : memref<12x9xi64>
      %274 = index.castu %90 : i16 to index
      %275 = index.divu %155, %66
      %276 = math.cos %8 : tensor<9x4xf32>
      %277 = index.ceildivs %c7, %139
      %278 = math.cttz %99 : i32
      %279 = math.round %extracted : f32
      affine.for %arg2 = 0 to 3 {
      }
      %280 = arith.maxf %out, %cst_3 : f32
      %281 = arith.maxui %c1603201462_i64, %c382875512_i64 : i64
      %282 = arith.remui %c1603201462_i64, %c382875512_i64 : i64
      %283 = vector.broadcast %cst : f32 to vector<12x9xf32>
      %284 = vector.fma %283, %72, %72 : vector<12x9xf32>
      %from_elements_49 = tensor.from_elements %36, %99, %extracted_31, %99, %c0_i32, %c0_i32, %c0_i32, %36, %extracted_31, %99, %36, %99, %extracted_31, %99, %c0_i32, %extracted_31, %36, %c0_i32, %36, %c0_i32, %99, %c0_i32, %36, %extracted_31, %99, %extracted_31, %extracted_31, %c0_i32, %99, %99, %36, %c0_i32, %99, %extracted_31, %99, %c0_i32 : tensor<9x4xi32>
      %inserted_50 = tensor.insert %cst_4 into %14[%c6, %c1] : tensor<9x4xf16>
      %285 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 - 128) ceildiv 128, d2 + 33, (d0 ceildiv 16) * 64, d2 * 2 + 32)>(%c4, %c7, %c6, %74)
      %286 = math.exp %in_46 : f32
      %287 = arith.remui %extracted_29, %extracted_29 : i1
      %288 = math.exp2 %cst : f32
      %inserted_51 = tensor.insert %c0_i32 into %from_elements_49[%c6, %c0] : tensor<9x4xi32>
      %289 = index.maxs %87, %139
      linalg.yield %in : f32
    } -> tensor<12x9x1xf32>
    %159 = tensor.empty() : tensor<9x6xi64>
    %160 = tensor.empty() : tensor<12x6xi64>
    %161 = linalg.matmul ins(%10, %159 : tensor<12x9xi64>, tensor<9x6xi64>) outs(%160 : tensor<12x6xi64>) -> tensor<12x6xi64>
    %162 = arith.subi %c1581076836_i64, %extracted_28 : i64
    %163 = arith.divui %true, %false : i1
    %164 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%139, %c11, %c11, %78)
    %165 = arith.muli %c382875512_i64, %c276538512_i64 : i64
    %166 = vector.shuffle %154, %154 [0, 2, 3, 4, 5, 7] : vector<4xi1>, vector<4xi1>
    %167 = arith.cmpi ult, %extracted_29, %false_26 : i1
    %168 = affine.min affine_map<(d0, d1, d2) -> ((d2 * 16) floordiv 64, d1 * 32, d1 - d0)>(%49, %c2, %c3)
    %169 = affine.load %alloc_13[%c10] : memref<6xi16>
    %cast_33 = tensor.cast %0 : tensor<12x9xi16> to tensor<?x?xi16>
    %alloc_34 = memref.alloc() : memref<9x4xi32>
    %170 = vector.gather %alloc_34[%c5, %141] [%83], %82, %83 : memref<9x4xi32>, vector<9x4xi32>, vector<9x4xi1>, vector<9x4xi32> into vector<9x4xi32>
    %171 = math.fpowi %cst_2, %c0_i32 : f32, i32
    affine.store %cst_5, %110[%c13] : memref<12xf16>
    %172 = math.fma %8, %8, %8 : tensor<9x4xf32>
    %173 = math.fma %cst_1, %cst_3, %extracted : f32
    %174 = index.ceildivu %c11, %139
    %175 = arith.remsi %false_26, %true : i1
    %176 = math.atan2 %expanded, %expanded_23 : tensor<12x9x1xf32>
    %177 = arith.xori %c-6647_i16, %c-1969_i16 : i16
    %178 = index.sizeof
    %179 = index.maxs %155, %c0
    %180 = vector.splat %c590134966_i64 : vector<12x9xi64>
    %181 = arith.xori %c1603201462_i64, %c1581076836_i64 : i64
    %182 = vector.multi_reduction <maxsi>, %20, %20 [] : vector<4xi32> to vector<4xi32>
    %183 = bufferization.clone %alloc_13 : memref<6xi16> to memref<6xi16>
    %184 = arith.subi %extracted_29, %114 : i1
    %185 = math.expm1 %cst_3 : f32
    %186 = math.log2 %15 : tensor<6xf16>
    %187 = math.powf %1, %1 : tensor<12x9xf32>
    %188 = arith.xori %c382875512_i64, %c590134966_i64 : i64
    %189 = arith.shrsi %false_27, %true : i1
    %190 = math.copysign %cst_24, %cst : f32
    %191 = index.ceildivs %138, %49
    %192 = math.round %cst_3 : f32
    %expanded_35 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<9x4xf16> into tensor<9x4x1xf16>
    %193 = arith.addi %c1630030684_i64, %c590134966_i64 : i64
    %194 = arith.shrui %c276538512_i64, %c1581076836_i64 : i64
    %195 = arith.remui %true, %false : i1
    %196 = arith.maxui %99, %extracted_31 : i32
    %197 = arith.shli %c590134966_i64, %extracted_28 : i64
    %198 = index.sizeof
    %199 = vector.broadcast %cst_5 : f16 to vector<4x4xf16>
    %200 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %59, %115, %199 : vector<9x4xf16>, vector<9x4xf16> into vector<4x4xf16>
    %201 = arith.subi %extracted_29, %114 : i1
    %dest_36, %accumulated_value_37 = vector.scan <minsi>, %82, %153 {inclusive = false, reduction_dim = 0 : i64} : vector<9x4xi1>, vector<4xi1>
    %202 = arith.subi %c-1969_i16, %169 : i16
    %203 = index.maxs %c6, %c9
    %204 = arith.minf %cst_2, %cst : f32
    %205 = affine.max affine_map<(d0) -> (d0 * 2 - 4, (-d0) ceildiv 128 + 128, d0 * 2, ((-d0) ceildiv 128) * 2)>(%64)
    %206 = index.divu %134, %164
    %207 = index.casts %36 : i32 to index
    %208 = math.tan %8 : tensor<9x4xf32>
    %209 = math.exp2 %cst_5 : f16
    %210 = index.sizeof
    %211 = math.tan %15 : tensor<6xf16>
    %212 = tensor.empty() : tensor<9x6xi64>
    %213 = tensor.empty() : tensor<12x6xi64>
    %214 = linalg.matmul ins(%10, %212 : tensor<12x9xi64>, tensor<9x6xi64>) outs(%213 : tensor<12x6xi64>) -> tensor<12x6xi64>
    %215 = vector.broadcast %false_27 : i1 to vector<12x9xi1>
    %216 = arith.shrui %c-1969_i16, %169 : i16
    %217 = arith.floordivsi %c1603201462_i64, %c382875512_i64 : i64
    %218 = math.atan %15 : tensor<6xf16>
    %219 = arith.maxf %cst_0, %cst_0 : f32
    %220 = affine.load %alloc_19[%c6, %c0] : memref<9x4xf16>
    %221 = index.sub %c8, %c1
    %222 = arith.subi %114, %114 : i1
    %223 = arith.addi %c-6647_i16, %90 : i16
    %224 = tensor.empty() : tensor<4xf16>
    %225 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%224 : tensor<4xf16>) outs(%expanded_35 : tensor<9x4x1xf16>) {
    ^bb0(%in: f16, %out: f16):
      %260 = math.expm1 %cst_1 : f32
      %261 = arith.ori %c1581076836_i64, %c1630030684_i64 : i64
      %262 = vector.splat %c-6647_i16 : vector<12x9xi16>
      %collapsed = tensor.collapse_shape %10 [[0, 1]] : tensor<12x9xi64> into tensor<108xi64>
      %263 = arith.divsi %c-1969_i16, %c-1969_i16 : i16
      %264 = vector.multi_reduction <minf>, %123, %cst_3 [0] : vector<6xf32> to f32
      %265 = vector.shuffle %100, %100 [0] : vector<1xi64>, vector<1xi64>
      %266 = math.atan2 %264, %cst_1 : f32
      %267 = vector.splat %64 : vector<6xindex>
      %268 = math.sqrt %expanded_30 : tensor<12x9x1x1xf32>
      %269 = scf.if %false -> (memref<12x9xi32>) {
        %289 = vector.broadcast %264 : f32 to vector<12xf32>
        %290 = vector.fma %289, %60, %289 : vector<12xf32>
        %291 = index.sub %c15, %c5
        %292 = math.cos %8 : tensor<9x4xf32>
        %extracted_49 = tensor.extract %11[%c2, %c3] : tensor<9x4xi1>
        %293 = vector.splat %134 : vector<12xindex>
        %294 = vector.broadcast %141 : index to vector<12xindex>
        %295 = vector.broadcast %cst_4 : f16 to vector<12xf16>
        vector.scatter %110[%c5] [%294], %34, %295 : memref<12xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
        %296 = bufferization.clone %alloc_18 : memref<12xi16> to memref<12xi16>
        %297 = index.sub %221, %174
        %alloc_50 = memref.alloc() : memref<12x9xi32>
        scf.yield %alloc_50 : memref<12x9xi32>
      } else {
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %289 = vector.transfer_read %6[%c12, %164], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<9x4xi16>, vector<9xi16>
        %290 = arith.shrsi %false_26, %false_26 : i1
        %291 = vector.broadcast %99 : i32 to vector<i32>
        %292 = vector.transfer_write %291, %13[%66] : vector<i32>, tensor<6xi32>
        %293 = vector.extract %33[0] : vector<12xi64>
        %294 = vector.broadcast %90 : i16 to vector<i16>
        vector.transfer_write %294, %alloc_13[%168] : vector<i16>, memref<6xi16>
        %alloc_49 = memref.alloc() : memref<9x4xi16>
        %295 = math.floor %from_elements : tensor<9x4xf32>
        %296 = vector.insertelement %cst_24, %61[%139 : index] : vector<12xf32>
        %alloc_50 = memref.alloc() : memref<12x9xi32>
        scf.yield %alloc_50 : memref<12x9xi32>
      }
      %alloc_46 = memref.alloc() : memref<1xf32>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46 : memref<1xf32>) outs(%expanded_23 : tensor<12x9x1xf32>) {
      ^bb0(%in_49: f32, %out_50: f32):
        %289 = arith.addi %c1581076836_i64, %c276538512_i64 : i64
        %290 = arith.andi %extracted_31, %36 : i32
        %291 = math.fpowi %cst_4, %extracted_31 : f16, i32
        %292 = bufferization.clone %alloc_14 : memref<12xf16> to memref<12xf16>
        %293 = vector.broadcast %c1630030684_i64 : i64 to vector<12x9xi64>
        %294 = vector.extract %82[4] : vector<9x4xi1>
        bufferization.dealloc_tensor %96 : tensor<9x4xi32>
        %295 = arith.subi %c382875512_i64, %c382875512_i64 : i64
        %296 = vector.extract_strided_slice %170 {offsets = [1], sizes = [6], strides = [1]} : vector<9x4xi32> to vector<6x4xi32>
        %297 = arith.remf %cst, %out_50 : f32
        %298 = vector.extract_strided_slice %61 {offsets = [7], sizes = [3], strides = [1]} : vector<12xf32> to vector<3xf32>
        %299 = math.cos %out : f16
        %300 = arith.shrsi %true, %false_26 : i1
        bufferization.dealloc_tensor %13 : tensor<6xi32>
        %301 = vector.broadcast %74 : index to vector<9xindex>
        %302 = vector.broadcast %false : i1 to vector<9xi1>
        %303 = vector.broadcast %c-6647_i16 : i16 to vector<9xi16>
        vector.scatter %183[%c0] [%301], %302, %303 : memref<6xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
        %304 = arith.cmpi sle, %c0_i32, %c0_i32 : i32
        %305 = vector.bitcast %60 : vector<12xf32> to vector<12xi32>
        %306 = arith.maxf %out_50, %cst : f32
        %307 = math.ctlz %7 : tensor<12x9xi64>
        %308 = vector.shuffle %34, %153 [2, 3, 4, 7, 12] : vector<12xi1>, vector<4xi1>
        %309 = math.expm1 %15 : tensor<6xf16>
        %310 = arith.cmpf olt, %cst_2, %extracted : f32
        %311 = math.atan %220 : f16
        %312 = math.ctlz %5 : tensor<6xi64>
        %313 = math.log10 %expanded_30 : tensor<12x9x1x1xf32>
        %314 = vector.broadcast %in_49 : f32 to vector<9xf32>
        %dest_51, %accumulated_value_52 = vector.scan <minf>, %73, %314 {inclusive = true, reduction_dim = 0 : i64} : vector<12x9xf32>, vector<9xf32>
        %315 = vector.maskedload %269[%c3, %c4], %34, %305 : memref<12x9xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
        %316 = vector.broadcast %in_49 : f32 to vector<f32>
        %317 = vector.transfer_write %316, %8[%221, %c12] : vector<f32>, tensor<9x4xf32>
        %false_53 = index.bool.constant false
        %318 = math.log1p %expanded_35 : tensor<9x4x1xf16>
        %319 = arith.shrsi %false_53, %true : i1
        %320 = bufferization.clone %alloc_20 : memref<9x4xi16> to memref<9x4xi16>
        linalg.yield %cst : f32
      } -> tensor<12x9x1xf32>
      %271 = arith.addi %36, %99 : i32
      %272 = bufferization.to_memref %4 : memref<12xi64>
      %273 = arith.remsi %36, %extracted_31 : i32
      %alloc_47 = memref.alloc() : memref<9x4xi64>
      %274 = tensor.empty() : tensor<12x4xi64>
      %275 = linalg.matmul ins(%7, %alloc_47 : tensor<12x9xi64>, memref<9x4xi64>) outs(%274 : tensor<12x4xi64>) -> tensor<12x4xi64>
      bufferization.dealloc_tensor %1 : tensor<12x9xf32>
      scf.index_switch %134 
      case 1 {
        %289 = memref.atomic_rmw minu %c1630030684_i64, %272[%c0] : (i64, memref<12xi64>) -> i64
        %290 = vector.shuffle %170, %83 [1, 2, 3, 6, 9, 11, 14, 16] : vector<9x4xi32>, vector<9x4xi32>
        %291 = arith.xori %c1581076836_i64, %c276538512_i64 : i64
        %292 = arith.remui %false_26, %false : i1
        %293 = affine.max affine_map<(d0) -> (d0 * 4, 0, 0, d0)>(%148)
        %294 = bufferization.to_memref %7 : memref<12x9xi64>
        %295 = math.log2 %15 : tensor<6xf16>
        %296 = index.ceildivs %148, %210
        %297 = math.log1p %15 : tensor<6xf16>
        %298 = vector.broadcast %true : i1 to vector<i1>
        %299 = vector.transfer_write %298, %12[%139] : vector<i1>, tensor<6xi1>
        %splat_49 = tensor.splat %90 : tensor<9x4xi16>
        %300 = vector.broadcast %99 : i32 to vector<4x4xi32>
        %301 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %83, %83, %300 : vector<9x4xi32>, vector<9x4xi32> into vector<4x4xi32>
        memref.store %c1581076836_i64, %alloc_10[%c5, %c2] : memref<9x4xi64>
        %302 = arith.shrui %c1581076836_i64, %c590134966_i64 : i64
        %303 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %135, %35, %c1630030684_i64 : vector<12xi64>, vector<12xi64> into i64
        %304 = arith.andi %c1603201462_i64, %c1581076836_i64 : i64
        scf.yield
      }
      case 2 {
        %289 = arith.cmpf one, %cst_1, %cst_2 : f32
        %290 = vector.broadcast %cst_0 : f32 to vector<12xf32>
        %291 = vector.fma %290, %290, %60 : vector<12xf32>
        %292 = arith.divsi %c1630030684_i64, %c1581076836_i64 : i64
        %from_elements_49 = tensor.from_elements %169, %c-6647_i16, %c-6647_i16, %90, %c-6647_i16, %c-1969_i16, %169, %90, %c-1969_i16, %c-6647_i16, %c-6647_i16, %c-6647_i16, %90, %169, %169, %c-6647_i16, %90, %c-6647_i16, %90, %169, %c-1969_i16, %90, %c-6647_i16, %169, %90, %c-6647_i16, %c-1969_i16, %c-6647_i16, %c-6647_i16, %c-1969_i16, %169, %169, %169, %c-1969_i16, %c-1969_i16, %c-6647_i16, %169, %169, %169, %c-6647_i16, %90, %c-1969_i16, %c-6647_i16, %c-6647_i16, %90, %90, %90, %169, %90, %90, %169, %90, %90, %90, %169, %90, %90, %c-1969_i16, %c-1969_i16, %c-6647_i16, %90, %c-1969_i16, %90, %c-6647_i16, %c-1969_i16, %169, %169, %90, %169, %169, %c-1969_i16, %c-1969_i16, %c-1969_i16, %90, %90, %169, %c-1969_i16, %c-6647_i16, %169, %90, %169, %169, %169, %c-1969_i16, %c-6647_i16, %c-1969_i16, %90, %c-6647_i16, %90, %169, %169, %c-6647_i16, %c-6647_i16, %c-6647_i16, %90, %c-1969_i16, %c-6647_i16, %169, %c-1969_i16, %90, %c-1969_i16, %c-1969_i16, %c-1969_i16, %c-1969_i16, %c-1969_i16, %90, %c-6647_i16, %169 : tensor<12x9xi16>
        memref.copy %alloc_15, %alloc_9 : memref<6xi64> to memref<6xi64>
        bufferization.dealloc_tensor %splat : tensor<9x4xi16>
        %293 = index.maxs %87, %c4
        %294 = math.ceil %1 : tensor<12x9xf32>
        %295 = vector.broadcast %false : i1 to vector<4x4xi1>
        %296 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %82, %82, %295 : vector<9x4xi1>, vector<9x4xi1> into vector<4x4xi1>
        %297 = math.atan %cst_3 : f32
        %cast_50 = tensor.cast %23 : tensor<i64> to tensor<i64>
        %298 = math.fpowi %cst_5, %c0_i32 : f16, i32
        %299 = vector.shuffle %290, %290 [1, 2, 3, 4, 5, 6, 8, 9, 14, 15, 16, 18, 20, 22] : vector<12xf32>, vector<12xf32>
        %300 = arith.remui %true, %false_27 : i1
        %301 = math.sqrt %14 : tensor<9x4xf16>
        %302 = affine.apply affine_map<(d0, d1, d2) -> (d2 - (d1 - d2))>(%210, %44, %164)
        scf.yield
      }
      default {
        %289 = arith.cmpi sge, %169, %169 : i16
        %290 = math.cttz %c-1969_i16 : i16
        %291 = bufferization.clone %alloc_19 : memref<9x4xf16> to memref<9x4xf16>
        %292 = math.floor %in : f16
        %293 = vector.shuffle %104, %104 [0, 4, 7, 8, 9, 15, 17] : vector<9x4xi16>, vector<9x4xi16>
        %294 = index.divu %205, %118
        %295 = arith.divui %c1581076836_i64, %extracted_28 : i64
        %296 = math.ctlz %2 : tensor<12x9xi16>
        %297 = math.cos %14 : tensor<9x4xf16>
        %298 = math.ceil %1 : tensor<12x9xf32>
        %299 = math.fma %14, %14, %14 : tensor<9x4xf16>
        %300 = math.log1p %cst_4 : f16
        %301 = index.maxu %210, %89
        %302 = arith.shrui %false_27, %true : i1
        %expanded_49 = tensor.expand_shape %13 [[0, 1]] : tensor<6xi32> into tensor<6x1xi32>
        %collapsed_50 = tensor.collapse_shape %expanded_23 [[0, 1], [2]] : tensor<12x9x1xf32> into tensor<108x1xf32>
      }
      %276 = index.ceildivs %c1, %c12
      %277 = arith.shrsi %c1603201462_i64, %c382875512_i64 : i64
      scf.if %extracted_29 {
        bufferization.dealloc_tensor %0 : tensor<12x9xi16>
        %289 = math.exp2 %15 : tensor<6xf16>
        %290 = arith.remui %false_27, %false : i1
        %291 = affine.load %alloc_12[%c5] : memref<6xi32>
        %292 = bufferization.clone %alloc_17 : memref<12xi16> to memref<12xi16>
        %293 = math.exp2 %cst_1 : f32
        %294 = vector.insert %99, %32 [2] : i32 into vector<4xi32>
        memref.assume_alignment %alloc_10, 16 : memref<9x4xi64>
      } else {
        %289 = arith.shli %extracted_29, %true : i1
        %290 = arith.remui %c1603201462_i64, %c276538512_i64 : i64
        bufferization.dealloc_tensor %10 : tensor<12x9xi64>
        %291 = vector.extract %59[6] : vector<9x4xf16>
        %292 = math.fma %cst_4, %220, %cst_5 : f16
        affine.store %c-6647_i16, %183[%c11] : memref<6xi16>
        %293 = vector.broadcast %220 : f16 to vector<9xf16>
        %dest_49, %accumulated_value_50 = vector.scan <add>, %84, %293 {inclusive = false, reduction_dim = 1 : i64} : vector<9x4xf16>, vector<9xf16>
        %alloc_51 = memref.alloc() : memref<12x9xi1>
        memref.tensor_store %3, %alloc_51 : memref<12x9xi1>
      }
      %278 = index.sizeof
      %279 = math.ctlz %18 : tensor<i32>
      %280 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 * 64 - 128)>(%164, %c10, %c12, %191)
      %281 = bufferization.clone %45 : memref<12x9xi64> to memref<12x9xi64>
      %282 = vector.create_mask %c1 : vector<6xi1>
      %283 = arith.mulf %220, %out : f16
      %284 = math.atan2 %cst_3, %extracted : f32
      %285 = bufferization.clone %alloc_17 : memref<12xi16> to memref<12xi16>
      %collapsed_48 = tensor.collapse_shape %generated [[0, 1]] : tensor<?x?xf16> into tensor<?xf16>
      %286 = vector.broadcast %cst_0 : f32 to vector<12x9xf32>
      %287 = vector.fma %286, %73, %73 : vector<12x9xf32>
      %288 = affine.min affine_map<(d0, d1) -> (d0 * 32 - d1 floordiv 4)>(%138, %44)
      linalg.yield %220 : f16
    } -> tensor<9x4x1xf16>
    %226 = index.divs %203, %c0
    %expanded_38 = tensor.expand_shape %15 [[0, 1]] : tensor<6xf16> into tensor<6x1xf16>
    %227 = arith.subi %c-1969_i16, %90 : i16
    %228 = arith.ori %36, %c0_i32 : i32
    %alloc_39 = memref.alloc() : memref<6xi32>
    memref.copy %alloc_12, %alloc_39 : memref<6xi32> to memref<6xi32>
    %229 = math.log10 %cst_4 : f16
    %230 = affine.apply affine_map<(d0, d1, d2) -> (d2 - (d1 - d2))>(%c0, %168, %207)
    %generated_40 = tensor.generate %c1 {
    ^bb0(%arg2: index):
      %cast_46 = tensor.cast %15 : tensor<6xf16> to tensor<?xf16>
      %260 = vector.multi_reduction <xor>, %100, %c590134966_i64 [0] : vector<1xi64> to i64
      %261 = index.ceildivs %205, %c14
      %262 = math.log2 %15 : tensor<6xf16>
      tensor.yield %c1603201462_i64 : i64
    } : tensor<?xi64>
    %231 = math.log10 %extracted : f32
    %232 = math.ctlz %true : i1
    %233 = arith.cmpi ne, %169, %169 : i16
    %234 = affine.min affine_map<(d0, d1) -> (d1 + 64, (-(d1 + 64)) mod 2, (-(d1 + 64)) mod 2)>(%221, %141)
    %true_41 = index.bool.constant true
    %alloc_42 = memref.alloc() : memref<12x9x1xf32>
    memref.tensor_store %expanded_23, %alloc_42 : memref<12x9x1xf32>
    memref.assume_alignment %110, 16 : memref<12xf16>
    %235 = math.rsqrt %14 : tensor<9x4xf16>
    %236 = arith.shli %false_26, %false_27 : i1
    %237 = vector.multi_reduction <add>, %35, %c1581076836_i64 [0] : vector<12xi64> to i64
    %238 = arith.remsi %c1581076836_i64, %c276538512_i64 : i64
    %splat_43 = tensor.splat %false : tensor<12xi1>
    %239 = arith.floordivsi %extracted_31, %c0_i32 : i32
    %240 = math.floor %cst_24 : f32
    %241 = vector.reduction <minf>, %123 : vector<6xf32> into f32
    %242 = math.ceil %expanded_30 : tensor<12x9x1x1xf32>
    %243 = scf.while (%arg2 = %100) : (vector<1xi64>) -> vector<1xi64> {
      %260 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %150, %135, %c1630030684_i64 : vector<12xi64>, vector<12xi64> into i64
      %extracted_46 = tensor.extract %15[%c3] : tensor<6xf16>
      %261 = math.ceil %extracted_46 : f16
      %262 = arith.subi %36, %36 : i32
      %263 = arith.subi %extracted_28, %c1630030684_i64 : i64
      %extracted_47 = tensor.extract %0[%c11, %c1] : tensor<12x9xi16>
      bufferization.dealloc_tensor %12 : tensor<6xi1>
      %264 = arith.cmpf uge, %220, %cst_5 : f16
      scf.condition(%false) %100 : vector<1xi64>
    } do {
    ^bb0(%arg2: vector<1xi64>):
      %260 = affine.min affine_map<(d0, d1, d2) -> ((d2 - d0) ceildiv 128, d1 floordiv 64 + d0, d2, d1 floordiv 64 + 8)>(%89, %179, %37)
      %cast_46 = tensor.cast %18 : tensor<i32> to tensor<i32>
      %261 = vector.broadcast %c-6647_i16 : i16 to vector<i16>
      %262 = vector.transfer_write %261, %2[%c5, %49] : vector<i16>, tensor<12x9xi16>
      %263 = arith.remui %extracted_31, %99 : i32
      %264 = vector.shuffle %261, %261 [0, 1] : vector<i16>, vector<i16>
      %265 = affine.min affine_map<(d0, d1) -> ((-d0) mod 8 - 24, -((-d0) mod 8 - 8))>(%44, %221)
      %266 = math.atan2 %15, %15 : tensor<6xf16>
      %267 = arith.mulf %cst_0, %cst_1 : f32
      %268 = index.ceildivs %66, %221
      affine.store %237, %45[%c8, %c3] : memref<12x9xi64>
      %269 = vector.broadcast %220 : f16 to vector<4x4xf16>
      %270 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %84, %84, %269 : vector<9x4xf16>, vector<9x4xf16> into vector<4x4xf16>
      %271 = affine.if affine_set<(d0, d1) : (d0 * 8 == 0, d1 + 4 == 0, d1 + 128 == 0)>(%c7, %c11) -> f16 {
        %275 = arith.maxf %cst, %cst_2 : f32
        %276 = index.add %c5, %c0
        %277 = arith.addi %c0_i32, %36 : i32
        %278 = vector.broadcast %220 : f16 to vector<4xf16>
        %279 = vector.multi_reduction <maxf>, %115, %278 [0] : vector<9x4xf16> to vector<4xf16>
        %cast_48 = tensor.cast %6 : tensor<9x4xi16> to tensor<?x?xi16>
        %280 = arith.cmpi ne, %c1581076836_i64, %c1630030684_i64 : i64
        %281 = arith.cmpi ult, %true_41, %114 : i1
        %282 = math.absi %16 : tensor<12x9xi32>
        affine.yield %220 : f16
      } else {
        %275 = arith.cmpf ugt, %cst_5, %cst_5 : f16
        %276 = math.expm1 %220 : f16
        %277 = bufferization.to_memref %generated_40 : memref<?xi64>
        %278 = vector.broadcast %c382875512_i64 : i64 to vector<i64>
        %279 = vector.transfer_write %278, %21[%118] : vector<i64>, tensor<6xi64>
        %280 = arith.minui %extracted_29, %extracted_29 : i1
        %281 = math.fma %14, %14, %14 : tensor<9x4xf16>
        %282 = arith.ori %237, %c276538512_i64 : i64
        %c20353_i16 = arith.constant 20353 : i16
        affine.yield %220 : f16
      }
      %inserted_47 = tensor.insert %c276538512_i64 into %7[%c0, %c0] : tensor<12x9xi64>
      %272 = arith.subi %false_27, %true_41 : i1
      %273 = scf.while (%arg3 = %c0_i32) : (i32) -> i32 {
        memref.tensor_store %5, %alloc_9 : memref<6xi64>
        %275 = arith.minsi %90, %c-1969_i16 : i16
        %276 = vector.insertelement %c0_i32, %108[] : vector<i32>
        %277 = math.round %expanded_35 : tensor<9x4x1xf16>
        %278 = math.atan2 %expanded, %expanded_23 : tensor<12x9x1xf32>
        %279 = math.log10 %cst_5 : f16
        %280 = vector.shuffle %154, %153 [0, 1, 3, 4, 5, 7] : vector<4xi1>, vector<4xi1>
        %281 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 * 2) floordiv 16 + d2 - 1)>(%67, %49, %c5, %49)
        scf.condition(%false_27) %36 : i32
      } do {
      ^bb0(%arg3: i32):
        %from_elements_48 = tensor.from_elements %c-6647_i16, %90, %169, %c-6647_i16, %c-1969_i16, %c-1969_i16, %c-1969_i16, %169, %c-6647_i16, %c-6647_i16, %90, %90, %c-6647_i16, %90, %c-6647_i16, %169, %c-6647_i16, %c-6647_i16, %90, %169, %90, %c-1969_i16, %c-1969_i16, %c-1969_i16, %169, %c-6647_i16, %169, %c-6647_i16, %90, %169, %90, %169, %c-1969_i16, %c-1969_i16, %90, %c-6647_i16, %169, %c-1969_i16, %c-6647_i16, %c-6647_i16, %c-6647_i16, %169, %90, %c-1969_i16, %c-1969_i16, %c-1969_i16, %90, %90, %169, %c-6647_i16, %c-6647_i16, %169, %169, %c-1969_i16, %169, %90, %169, %c-1969_i16, %c-6647_i16, %90, %c-1969_i16, %c-1969_i16, %90, %c-1969_i16, %c-1969_i16, %169, %169, %90, %c-6647_i16, %c-1969_i16, %169, %c-1969_i16, %169, %c-1969_i16, %c-6647_i16, %90, %c-6647_i16, %169, %c-6647_i16, %c-1969_i16, %c-6647_i16, %c-1969_i16, %90, %169, %c-6647_i16, %c-1969_i16, %c-6647_i16, %169, %c-6647_i16, %c-6647_i16, %90, %169, %90, %90, %90, %90, %169, %169, %c-1969_i16, %c-6647_i16, %90, %90, %169, %c-1969_i16, %c-6647_i16, %169, %c-6647_i16, %169 : tensor<12x9xi16>
        %275 = vector.extract %150[9] : vector<12xi64>
        %276 = vector.broadcast %c1581076836_i64 : i64 to vector<12xi64>
        %collapsed = tensor.collapse_shape %expanded_38 [[0, 1]] : tensor<6x1xf16> into tensor<6xf16>
        %277 = math.round %expanded_38 : tensor<6x1xf16>
        %278 = index.ceildivu %c9, %94
        %279 = arith.cmpf une, %cst_1, %cst : f32
        %280 = math.log10 %14 : tensor<9x4xf16>
        %extracted_49 = tensor.extract %15[%c0] : tensor<6xf16>
        %281 = index.divs %168, %268
        %282 = arith.andi %false_27, %true_41 : i1
        %283 = vector.broadcast %210 : index to vector<12xindex>
        vector.scatter %45[%c6, %c2] [%283], %34, %276 : memref<12x9xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
        %284 = index.castu %169 : i16 to index
        %285 = arith.muli %c1581076836_i64, %c276538512_i64 : i64
        %286 = index.maxs %91, %205
        %287 = math.fma %14, %14, %14 : tensor<9x4xf16>
        scf.yield %36 : i32
      }
      %274 = math.fma %expanded_30, %expanded_30, %expanded_30 : tensor<12x9x1x1xf32>
      scf.yield %100 : vector<1xi64>
    }
    %244 = arith.mulf %extracted, %cst : f32
    %245 = vector.load %alloc_13[%c5] : memref<6xi16>, vector<9x4xi16>
    %246 = math.absi %c1630030684_i64 : i64
    %247 = arith.shrsi %c1603201462_i64, %c276538512_i64 : i64
    %248 = vector.extract_strided_slice %60 {offsets = [4], sizes = [7], strides = [1]} : vector<12xf32> to vector<7xf32>
    %249 = vector.broadcast %99 : i32 to vector<12x9xi32>
    %250 = vector.gather %alloc_12[%c8] [%249], %215, %249 : memref<6xi32>, vector<12x9xi32>, vector<12x9xi1>, vector<12x9xi32> into vector<12x9xi32>
    %251 = math.absf %cst_2 : f32
    %252 = memref.alloca_scope  -> (f16) {
      %260 = arith.addi %36, %extracted_31 : i32
      %261 = math.fpowi %15, %13 : tensor<6xf16>, tensor<6xi32>
      %262 = index.sub %37, %c5
      %263 = vector.broadcast %c1630030684_i64 : i64 to vector<12x12xi64>
      %264 = vector.outerproduct %88, %35, %263 {kind = #vector.kind<mul>} : vector<12xi64>, vector<12xi64>
      %265 = arith.cmpf ult, %cst_2, %extracted : f32
      %extracted_46 = tensor.extract %expanded_23[%c0, %c5, %c0] : tensor<12x9x1xf32>
      %266 = arith.cmpf ueq, %extracted_46, %extracted : f32
      %267 = arith.shli %false_26, %false_27 : i1
      %268 = index.add %226, %206
      %269 = vector.broadcast %true : i1 to vector<12x9xi1>
      bufferization.dealloc_tensor %14 : tensor<9x4xf16>
      %270 = arith.divui %c-1969_i16, %90 : i16
      %271 = memref.atomic_rmw assign %c1603201462_i64, %alloc_16[%c8, %c1] : (i64, memref<12x9xi64>) -> i64
      bufferization.dealloc_tensor %0 : tensor<12x9xi16>
      %272 = vector.broadcast %false : i1 to vector<i1>
      vector.transfer_write %272, %alloc_6[%c6] : vector<i1>, memref<12xi1>
      %273 = affine.min affine_map<(d0) -> ((d0 - 32) mod 128, (d0 - 32) mod 128, (d0 - 32) mod 128)>(%c1)
      %274 = vector.broadcast %c1603201462_i64 : i64 to vector<9xi64>
      %275 = vector.broadcast %extracted_29 : i1 to vector<9xi1>
      %276 = vector.maskedload %alloc_11[%c7, %c1], %275, %274 : memref<12x9xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
      %277 = vector.insertelement %c1630030684_i64, %88[%67 : index] : vector<12xi64>
      %278 = vector.maskedload %alloc_6[%c10], %34, %34 : memref<12xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
      %279 = math.tan %expanded_23 : tensor<12x9x1xf32>
      %280 = vector.multi_reduction <minf>, %115, %115 [] : vector<9x4xf16> to vector<9x4xf16>
      %281 = vector.extract_strided_slice %245 {offsets = [5], sizes = [2], strides = [1]} : vector<9x4xi16> to vector<2x4xi16>
      %282 = bufferization.clone %alloc_13 : memref<6xi16> to memref<6xi16>
      %283 = arith.subi %237, %c1630030684_i64 : i64
      %284 = index.ceildivu %c1, %273
      %285 = index.divu %c13, %37
      %286 = math.floor %1 : tensor<12x9xf32>
      %287 = index.ceildivu %262, %118
      affine.store %cst_0, %alloc_8[%c8, %c12] : memref<9x4xf32>
      %288 = math.cttz %96 : tensor<9x4xi32>
      %289 = math.log10 %expanded : tensor<12x9x1xf32>
      %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %88, %33, %c1581076836_i64 : vector<12xi64>, vector<12xi64> into i64
      memref.alloca_scope.return %cst_5 : f16
    }
    %253 = vector.splat %114 : vector<12xi1>
    %254 = math.roundeven %cst : f32
    %255 = scf.while (%arg2 = %false) : (i1) -> i1 {
      %260 = affine.max affine_map<(d0, d1, d2) -> (d0, d2, d1 - d0)>(%164, %49, %140)
      %261 = arith.andi %false_26, %false : i1
      %dest_46, %accumulated_value_47 = vector.scan <or>, %82, %154 {inclusive = false, reduction_dim = 0 : i64} : vector<9x4xi1>, vector<4xi1>
      %262 = arith.minf %cst, %cst_2 : f32
      %263 = vector.matrix_multiply %35, %35 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi64>, vector<12xi64>) -> vector<1xi64>
      %264 = math.tan %cst_4 : f16
      %265 = arith.xori %false, %false_26 : i1
      %266 = math.absf %8 : tensor<9x4xf32>
      scf.condition(%arg2) %extracted_29 : i1
    } do {
    ^bb0(%arg2: i1):
      %260 = math.log2 %cst_2 : f32
      %261 = scf.while (%arg3 = %35) : (vector<12xi64>) -> vector<12xi64> {
        %276 = index.divu %207, %c2
        %277 = index.ceildivs %c14, %64
        %278 = arith.divsi %false, %arg2 : i1
        %279 = index.maxs %79, %226
        %280 = arith.addf %cst_5, %220 : f16
        %281 = arith.remsi %c-6647_i16, %169 : i16
        %282 = bufferization.clone %alloc_11 : memref<12x9xi64> to memref<12x9xi64>
        %283 = arith.divui %c-6647_i16, %c-6647_i16 : i16
        scf.condition(%arg2) %135 : vector<12xi64>
      } do {
      ^bb0(%arg3: vector<12xi64>):
        %276 = index.maxs %85, %44
        %277 = index.sub %c10, %138
        %278 = vector.broadcast %c590134966_i64 : i64 to vector<12xi64>
        %279 = math.cos %cst_1 : f32
        %280 = vector.reduction <minsi>, %33 : vector<12xi64> into i64
        %281 = math.ctlz %c1603201462_i64 : i64
        %282 = math.ipowi %arg2, %false_27 : i1
        %283 = math.log1p %extracted : f32
        %284 = math.log10 %15 : tensor<6xf16>
        %285 = arith.remf %cst_5, %cst_5 : f16
        %286 = vector.broadcast %99 : i32 to vector<12xi32>
        %287 = vector.transfer_write %286, %9[%c11, %c10] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<12xi32>, tensor<12x9xi32>
        %288 = index.maxs %206, %94
        %289 = affine.apply affine_map<(d0, d1) -> (d0)>(%148, %c7)
        %290 = arith.shrui %c276538512_i64, %c382875512_i64 : i64
        %291 = vector.shuffle %245, %104 [0, 1, 2, 3, 6, 7, 8, 10, 11, 13, 15, 16, 17] : vector<9x4xi16>, vector<9x4xi16>
        %292 = vector.broadcast %90 : i16 to vector<9xi16>
        %293 = vector.multi_reduction <or>, %245, %292 [1] : vector<9x4xi16> to vector<9xi16>
        scf.yield %278 : vector<12xi64>
      }
      %262 = index.ceildivu %c3, %94
      %263 = vector.flat_transpose %60 {columns = 3 : i32, rows = 4 : i32} : vector<12xf32> -> vector<12xf32>
      %264 = math.exp2 %1 : tensor<12x9xf32>
      %265 = math.powf %1, %1 : tensor<12x9xf32>
      %266 = vector.broadcast %cst : f32 to vector<12x9xf32>
      %267 = vector.fma %266, %266, %72 : vector<12x9xf32>
      %268 = arith.shrsi %extracted_31, %99 : i32
      %269 = scf.while (%arg3 = %c-1969_i16) : (i16) -> i16 {
        %276 = arith.addf %cst_2, %cst_2 : f32
        %277 = vector.extract %153[1] : vector<4xi1>
        %extracted_47 = tensor.extract %expanded_35[%c8, %c0, %c0] : tensor<9x4x1xf16>
        %278 = index.divu %c9, %c7
        %279 = math.exp2 %220 : f16
        %from_elements_48 = tensor.from_elements %99, %99, %extracted_31, %36, %c0_i32, %99, %c0_i32, %c0_i32, %c0_i32, %99, %c0_i32, %36 : tensor<12xi32>
        %280 = arith.remsi %extracted_28, %c1603201462_i64 : i64
        %281 = bufferization.clone %41 : memref<9x4xf32> to memref<9x4xf32>
        scf.condition(%114) %c-6647_i16 : i16
      } do {
      ^bb0(%arg3: i16):
        %276 = arith.addf %cst_3, %cst : f32
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 - 8, (-(d1 + 64)) ceildiv 8)>(%152, %85, %c4, %134)
        %278 = vector.broadcast %cst_1 : f32 to vector<6xf32>
        %279 = vector.fma %278, %123, %123 : vector<6xf32>
        %280 = math.sqrt %cst_5 : f16
        memref.tensor_store %5, %alloc_15 : memref<6xi64>
        %281 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %123, %278, %cst_24 : vector<6xf32>, vector<6xf32> into f32
        %282 = math.ctlz %c590134966_i64 : i64
        %283 = math.powf %cst_3, %extracted : f32
        %cast_47 = tensor.cast %expanded_35 : tensor<9x4x1xf16> to tensor<?x?x?xf16>
        bufferization.dealloc_tensor %3 : tensor<12x9xi1>
        %284 = index.mul %203, %87
        %285 = vector.multi_reduction <mul>, %100, %100 [] : vector<1xi64> to vector<1xi64>
        %286 = math.atan %14 : tensor<9x4xf16>
        %287 = vector.flat_transpose %100 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %from_elements_48 = tensor.from_elements %c-6647_i16, %arg3, %c-1969_i16, %c-6647_i16, %169, %c-6647_i16 : tensor<6xi16>
        %288 = arith.shrsi %169, %arg3 : i16
        scf.yield %169 : i16
      }
      %270 = arith.cmpi slt, %false, %true_41 : i1
      %271 = vector.load %alloc_17[%c3] : memref<12xi16>, vector<9x4xi16>
      %272 = index.mul %198, %94
      %273 = math.expm1 %8 : tensor<9x4xf32>
      %false_46 = index.bool.constant false
      %274 = arith.maxui %c0_i32, %extracted_31 : i32
      %275 = arith.shrsi %c1581076836_i64, %c382875512_i64 : i64
      scf.yield %false_26 : i1
    }
    %256 = vector.extract %115[7] : vector<9x4xf16>
    %257 = tensor.empty() : tensor<6xi64>
    %258 = linalg.copy ins(%21 : tensor<6xi64>) outs(%257 : tensor<6xi64>) -> tensor<6xi64>
    %alloc_44 = memref.alloc() : memref<9x12xi1>
    linalg.transpose ins(%3 : tensor<12x9xi1>) outs(%alloc_44 : memref<9x12xi1>) permutation = [1, 0] 
    %alloc_45 = memref.alloc() : memref<4xf16>
    linalg.reduce ins(%expanded_35 : tensor<9x4x1xf16>) outs(%alloc_45 : memref<4xf16>) dimensions = [0, 2] 
      (%in: f16, %init: f16) {
        %260 = math.log2 %expanded_23 : tensor<12x9x1xf32>
        %261 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%206, %164, %c0)
        memref.store %90, %alloc_17[%c6] : memref<12xi16>
        %262 = arith.ori %c-6647_i16, %90 : i16
        %263 = arith.shrui %36, %extracted_31 : i32
        %264 = vector.splat %140 : vector<6xindex>
        %265 = vector.splat %148 : vector<6xindex>
        %266 = arith.cmpf ole, %in, %in : f16
        %cst_46 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_46 : f16
      }
    scf.parallel (%arg2, %arg3) = (%c0, %c10) to (%c12, %49) step (%c8, %c8) {
      %260 = bufferization.clone %38 : memref<12xi1> to memref<12xi1>
      %261 = arith.remui %c-6647_i16, %169 : i16
      %262 = vector.shuffle %84, %59 [10, 11, 14, 16] : vector<9x4xf16>, vector<9x4xf16>
      %263 = index.maxs %c7, %79
      bufferization.dealloc_tensor %5 : tensor<6xi64>
      %264 = math.atan %14 : tensor<9x4xf16>
      %265 = affine.max affine_map<(d0, d1, d2) -> ((d0 - d1 + 2) * 64, d1, d2 * 128, -d0)>(%c12, %c13, %139)
      %266 = index.maxs %210, %139
      %267 = vector.splat %87 : vector<12x9xindex>
      %268 = arith.minsi %c1630030684_i64, %extracted_28 : i64
      %cst_46 = arith.constant 6.984000e+03 : f16
      %269 = vector.shuffle %72, %72 [4, 5, 6, 8, 9, 11, 12, 14, 15, 16, 18, 20, 22] : vector<12x9xf32>, vector<12x9xf32>
      %270 = arith.cmpf ogt, %cst_5, %220 : f16
      %271 = index.sizeof
      %dest_47, %accumulated_value_48 = vector.scan <maxf>, %59, %256 {inclusive = false, reduction_dim = 0 : i64} : vector<9x4xf16>, vector<4xf16>
      %272 = arith.addi %237, %extracted_28 : i64
      scf.yield
    }
    %259 = affine.vector_load %alloc_34[%207, %c13] : memref<9x4xi32>, vector<4xi32>
    affine.vector_store %153, %alloc_6[%89] : memref<12xi1>, vector<4xi1>
    vector.print %20 : vector<4xi32>
    vector.print %32 : vector<4xi32>
    vector.print %33 : vector<12xi64>
    vector.print %34 : vector<12xi1>
    vector.print %35 : vector<12xi64>
    vector.print %59 : vector<9x4xf16>
    vector.print %60 : vector<12xf32>
    vector.print %61 : vector<12xf32>
    vector.print %72 : vector<12x9xf32>
    vector.print %73 : vector<12x9xf32>
    vector.print %82 : vector<9x4xi1>
    vector.print %83 : vector<9x4xi32>
    vector.print %84 : vector<9x4xf16>
    vector.print %88 : vector<12xi64>
    vector.print %100 : vector<1xi64>
    vector.print %103 : vector<9x4xi16>
    vector.print %104 : vector<9x4xi16>
    vector.print %108 : vector<i32>
    vector.print %115 : vector<9x4xf16>
    vector.print %123 : vector<6xf32>
    vector.print %135 : vector<12xi64>
    vector.print %143 : vector<9x4xf32>
    vector.print %150 : vector<12xi64>
    vector.print %153 : vector<4xi1>
    vector.print %154 : vector<4xi1>
    vector.print %170 : vector<9x4xi32>
    vector.print %215 : vector<12x9xi1>
    vector.print %245 : vector<9x4xi16>
    vector.print %248 : vector<7xf32>
    vector.print %249 : vector<12x9xi32>
    vector.print %250 : vector<12x9xi32>
    vector.print %256 : vector<4xf16>
    vector.print %259 : vector<4xi32>
    vector.print %c590134966_i64 : i64
    vector.print %c1630030684_i64 : i64
    vector.print %true : i1
    vector.print %c-1969_i16 : i16
    vector.print %cst : f32
    vector.print %cst_0 : f32
    vector.print %cst_1 : f32
    vector.print %c-6647_i16 : i16
    vector.print %cst_2 : f32
    vector.print %c1581076836_i64 : i64
    vector.print %cst_3 : f32
    vector.print %c1603201462_i64 : i64
    vector.print %c382875512_i64 : i64
    vector.print %cst_4 : f16
    vector.print %c276538512_i64 : i64
    vector.print %cst_5 : f16
    vector.print %c0_i32 : i32
    vector.print %36 : i32
    vector.print %extracted : f32
    vector.print %cst_24 : f32
    vector.print %false : i1
    vector.print %false_26 : i1
    vector.print %false_27 : i1
    vector.print %90 : i16
    vector.print %extracted_28 : i64
    vector.print %99 : i32
    vector.print %114 : i1
    vector.print %extracted_29 : i1
    vector.print %extracted_31 : i32
    vector.print %169 : i16
    vector.print %220 : f16
    vector.print %true_41 : i1
    vector.print %237 : i64
    vector.print %252 : f16
    return
  }
}
