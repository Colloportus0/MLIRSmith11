module {
  func.func @func1(%arg0: index, %arg1: tensor<16x1xf32>, %arg2: i1) {
    %cst = arith.constant 1.586400e+04 : f16
    %true = arith.constant true
    %c19851_i16 = arith.constant 19851 : i16
    %c1768120928_i64 = arith.constant 1768120928 : i64
    %cst_0 = arith.constant 5.996800e+04 : f16
    %true_1 = arith.constant true
    %cst_2 = arith.constant 6.297600e+04 : f16
    %c474382834_i32 = arith.constant 474382834 : i32
    %c1775232228_i64 = arith.constant 1775232228 : i64
    %cst_3 = arith.constant 1.55835494E+9 : f32
    %c27255_i16 = arith.constant 27255 : i16
    %c1575039462_i32 = arith.constant 1575039462 : i32
    %cst_4 = arith.constant 5.948800e+04 : f16
    %c860729636_i64 = arith.constant 860729636 : i64
    %c985228557_i64 = arith.constant 985228557 : i64
    %c1939178552_i64 = arith.constant 1939178552 : i64
    %0 = tensor.empty() : tensor<1x5x5xi1>
    %1 = tensor.empty() : tensor<16x1xf16>
    %2 = tensor.empty() : tensor<1x5x5xf32>
    %3 = tensor.empty() : tensor<1x5x5xf32>
    %4 = tensor.empty() : tensor<16x1xi32>
    %5 = tensor.empty() : tensor<1x5x5xi64>
    %6 = tensor.empty() : tensor<1x16xi1>
    %7 = tensor.empty() : tensor<1xf16>
    %8 = tensor.empty() : tensor<1x5x5xf32>
    %9 = tensor.empty() : tensor<16x1xi1>
    %10 = tensor.empty() : tensor<1x5x5xi64>
    %11 = tensor.empty() : tensor<1x5x5xi16>
    %12 = tensor.empty() : tensor<1x5x5xf16>
    %13 = tensor.empty() : tensor<16x1xf32>
    %14 = tensor.empty() : tensor<1x16xi1>
    %15 = tensor.empty() : tensor<1x16xf16>
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
    %alloc = memref.alloc() : memref<1x16xi16>
    %alloc_5 = memref.alloc() : memref<1x5x5xi1>
    %alloc_6 = memref.alloc() : memref<1x5x5xi1>
    %alloc_7 = memref.alloc() : memref<1xi32>
    %alloc_8 = memref.alloc() : memref<1xf32>
    %alloc_9 = memref.alloc() : memref<1xi1>
    %alloc_10 = memref.alloc() : memref<1x5x5xi16>
    %alloc_11 = memref.alloc() : memref<1x5x5xi32>
    %alloc_12 = memref.alloc() : memref<16x1xi1>
    %alloc_13 = memref.alloc() : memref<16x1xi32>
    %alloc_14 = memref.alloc() : memref<16x1xi16>
    %alloc_15 = memref.alloc() : memref<1x5x5xf32>
    %alloc_16 = memref.alloc() : memref<1x16xi64>
    %alloc_17 = memref.alloc() : memref<1xi1>
    %alloc_18 = memref.alloc() : memref<1xf16>
    %alloc_19 = memref.alloc() : memref<1xf16>
    %16 = tensor.empty() : tensor<1x5x5xi16>
    %17 = linalg.copy ins(%11 : tensor<1x5x5xi16>) outs(%16 : tensor<1x5x5xi16>) -> tensor<1x5x5xi16>
    %18 = tensor.empty() : tensor<5x1x5xf32>
    %transposed = linalg.transpose ins(%3 : tensor<1x5x5xf32>) outs(%18 : tensor<5x1x5xf32>) permutation = [2, 0, 1] 
    %19 = tensor.empty() : tensor<1x5xi16>
    %reduced = linalg.reduce ins(%11 : tensor<1x5x5xi16>) outs(%19 : tensor<1x5xi16>) dimensions = [2] 
      (%in: i16, %init: i16) {
        %261 = math.rsqrt %cst_4 : f16
        %262 = affine.min affine_map<(d0, d1, d2, d3) -> (d0)>(%c10, %c9, %c11, %c2)
        %263 = affine.load %alloc_13[%c11, %c7] : memref<16x1xi32>
        %264 = math.atan2 %3, %8 : tensor<1x5x5xf32>
        %265 = math.absf %3 : tensor<1x5x5xf32>
        %266 = scf.index_switch %c15 -> vector<16x1xi64> 
        case 1 {
          %268 = arith.subi %true_1, %true : i1
          %269 = math.rsqrt %1 : tensor<16x1xf16>
          %alloc_46 = memref.alloc() : memref<1x5x5xi32>
          memref.copy %alloc_11, %alloc_46 : memref<1x5x5xi32> to memref<1x5x5xi32>
          %270 = index.maxs %c12, %c3
          %alloc_47 = memref.alloc() : memref<5x1x5xf32>
          memref.tensor_store %transposed, %alloc_47 : memref<5x1x5xf32>
          %271 = index.divu %c11, %c15
          %272 = math.exp %1 : tensor<16x1xf16>
          %273 = math.cos %cst_3 : f32
          %274 = math.copysign %cst_3, %cst_3 : f32
          %275 = vector.broadcast %c474382834_i32 : i32 to vector<16x1xi32>
          vector.print %275 : vector<16x1xi32>
          %276 = math.ctpop %11 : tensor<1x5x5xi16>
          %277 = math.exp %cst_4 : f16
          %278 = math.log %2 : tensor<1x5x5xf32>
          %279 = arith.andi %c860729636_i64, %c985228557_i64 : i64
          %280 = vector.broadcast %c1768120928_i64 : i64 to vector<1xi64>
          %281 = vector.broadcast %c860729636_i64 : i64 to vector<1x1xi64>
          %282 = vector.outerproduct %280, %280, %281 {kind = #vector.kind<minui>} : vector<1xi64>, vector<1xi64>
          %c-18073_i16 = arith.constant -18073 : i16
          %283 = vector.broadcast %c1768120928_i64 : i64 to vector<16x1xi64>
          scf.yield %283 : vector<16x1xi64>
        }
        default {
          %268 = math.sqrt %8 : tensor<1x5x5xf32>
          %collapsed_46 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<1x5x5xi64> into tensor<5x5xi64>
          %269 = vector.broadcast %c1775232228_i64 : i64 to vector<16x1xi64>
          %270 = vector.broadcast %cst_3 : f32 to vector<1x16xf32>
          %271 = vector.fma %270, %270, %270 : vector<1x16xf32>
          %272 = arith.addi %c1775232228_i64, %c1775232228_i64 : i64
          %273 = math.log %1 : tensor<16x1xf16>
          %274 = math.log %2 : tensor<1x5x5xf32>
          %inserted_47 = tensor.insert %true into %6[%c0, %c10] : tensor<1x16xi1>
          %275 = vector.extract %271[0] : vector<1x16xf32>
          %276 = arith.floordivsi %263, %263 : i32
          %277 = math.ctpop %9 : tensor<16x1xi1>
          %278 = arith.addi %in, %in : i16
          %279 = index.divu %c9, %c7
          %280 = index.mul %c0, %c12
          %alloc_48 = memref.alloc() : memref<16x1xf32>
          memref.tensor_store %13, %alloc_48 : memref<16x1xf32>
          %cast = tensor.cast %13 : tensor<16x1xf32> to tensor<?x?xf32>
          %281 = arith.mulf %cst_3, %cst_3 : f32
          scf.yield %269 : vector<16x1xi64>
        }
        %cst_45 = arith.constant 0x4E48D809 : f32
        %267 = index.divs %c5, %262
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    scf.parallel (%arg3) = (%c10) to (%c6) step (%c5) {
      %261 = affine.load %alloc_17[%c4] : memref<1xi1>
      %262 = index.casts %c985228557_i64 : i64 to index
      %263 = tensor.empty() : tensor<1x16xi32>
      %264 = math.fpowi %15, %263 : tensor<1x16xf16>, tensor<1x16xi32>
      %265 = vector.splat %c27255_i16 : vector<1xi16>
      %266 = vector.broadcast %cst_3 : f32 to vector<1xf32>
      %267 = vector.reduction <mul>, %266 : vector<1xf32> into f32
      %268 = index.casts %arg3 : index to i32
      %269 = index.maxu %c9, %c11
      %270 = math.atan2 %transposed, %18 : tensor<5x1x5xf32>
      %generated_45 = tensor.generate %c7 {
      ^bb0(%arg4: index):
        %alloc_47 = memref.alloc() : memref<1x16xi32>
        memref.tensor_store %263, %alloc_47 : memref<1x16xi32>
        %280 = math.copysign %3, %8 : tensor<1x5x5xf32>
        %281 = math.sqrt %transposed : tensor<5x1x5xf32>
        %282 = vector.broadcast %c1575039462_i32 : i32 to vector<16xi32>
        %283 = vector.broadcast %c474382834_i32 : i32 to vector<16x16xi32>
        %284 = vector.outerproduct %282, %282, %283 {kind = #vector.kind<minsi>} : vector<16xi32>, vector<16xi32>
        tensor.yield %cst_3 : f32
      } : tensor<?xf32>
      %271 = vector.broadcast %c1575039462_i32 : i32 to vector<1xi32>
      %272 = vector.insert %c474382834_i32, %271 [0] : i32 into vector<1xi32>
      %273 = vector.broadcast %c1575039462_i32 : i32 to vector<5xi32>
      %274 = vector.broadcast %true_1 : i1 to vector<5xi1>
      %275 = vector.maskedload %alloc_11[%c0, %c1, %c0], %274, %273 : memref<1x5x5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
      %276 = arith.shli %c27255_i16, %c19851_i16 : i16
      %277 = math.copysign %18, %transposed : tensor<5x1x5xf32>
      %278 = vector.broadcast %c474382834_i32 : i32 to vector<i32>
      vector.transfer_write %278, %alloc_13[%c9, %269] : vector<i32>, memref<16x1xi32>
      %collapsed_46 = tensor.collapse_shape %1 [[0, 1]] : tensor<16x1xf16> into tensor<16xf16>
      %279 = arith.shli %c860729636_i64, %c1775232228_i64 : i64
      scf.yield
    }
    %20 = affine.vector_load %alloc_6[%c0, %c4, %c15] : memref<1x5x5xi1>, vector<5xi1>
    affine.vector_store %20, %alloc_17[%c6] : memref<1xi1>, vector<5xi1>
    %alloc_20 = memref.alloc() : memref<1xf16>
    %21 = tensor.empty() : tensor<f16>
    %22 = linalg.dot ins(%alloc_18, %alloc_20 : memref<1xf16>, memref<1xf16>) outs(%21 : tensor<f16>) -> tensor<f16>
    affine.for %arg3 = 0 to 30 {
    }
    %false = index.bool.constant false
    vector.print %20 : vector<5xi1>
    %23 = arith.minui %false, %true : i1
    %24 = math.tanh %cst : f16
    %25 = vector.broadcast %c985228557_i64 : i64 to vector<1xi64>
    %26 = vector.transfer_write %25, %5[%c14, %c14, %c2] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xi64>, tensor<1x5x5xi64>
    %27 = index.sizeof
    %alloca = memref.alloca() : memref<1x16xi64>
    %from_elements = tensor.from_elements %cst, %cst_4, %cst_2, %cst_0, %cst_0, %cst_0, %cst_4, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst_2, %cst_0, %cst, %cst, %cst_4, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst_0 : tensor<1x5x5xf16>
    %28 = index.maxu %c8, %c10
    %29 = math.ctpop %0 : tensor<1x5x5xi1>
    %30 = scf.index_switch %c14 -> tensor<16x1xi32> 
    case 1 {
      %261 = memref.atomic_rmw addf %cst_4, %alloc_18[%c0] : (f16, memref<1xf16>) -> f16
      %262 = math.fpowi %cst_2, %c474382834_i32 : f16, i32
      %263 = index.divu %c14, %c4
      %264 = math.exp %8 : tensor<1x5x5xf32>
      %inserted_45 = tensor.insert %cst into %1[%c10, %c0] : tensor<16x1xf16>
      %265 = vector.broadcast %c1575039462_i32 : i32 to vector<i32>
      vector.transfer_write %265, %alloc_11[%c7, %c4, %c3] : vector<i32>, memref<1x5x5xi32>
      %266 = math.expm1 %cst_3 : f32
      %267 = arith.negf %cst_3 : f32
      %268 = math.powf %3, %2 : tensor<1x5x5xf32>
      %269 = vector.broadcast %c1775232228_i64 : i64 to vector<1x1xi64>
      %270 = vector.outerproduct %25, %25, %269 {kind = #vector.kind<mul>} : vector<1xi64>, vector<1xi64>
      %271 = bufferization.clone %alloc_13 : memref<16x1xi32> to memref<16x1xi32>
      %272 = index.divs %c10, %263
      %collapsed_46 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<1x5x5xi16> into tensor<5x5xi16>
      scf.if %true {
        %c1718848297_i64 = arith.constant 1718848297 : i64
        %276 = arith.remf %cst_4, %cst_0 : f16
        %277 = math.ipowi %6, %6 : tensor<1x16xi1>
        %278 = arith.maxsi %c985228557_i64, %c985228557_i64 : i64
        %279 = vector.broadcast %cst_3 : f32 to vector<1x16xf32>
        vector.transfer_write %279, %alloc_15[%c9, %c4, %c4] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<1x16xf32>, memref<1x5x5xf32>
        %280 = arith.remf %cst_3, %cst_3 : f32
        %281 = index.ceildivu %28, %c8
        %282 = arith.divsi %c474382834_i32, %c474382834_i32 : i32
      } else {
        %276 = arith.maxf %cst_4, %cst : f16
        %277 = tensor.empty() : tensor<1x16xf32>
        %278 = index.divs %c13, %c13
        %279 = vector.broadcast %cst_4 : f16 to vector<1xf16>
        %280 = vector.broadcast %false : i1 to vector<1xi1>
        %281 = vector.maskedload %alloc_19[%c0], %280, %279 : memref<1xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %expanded = tensor.expand_shape %6 [[0], [1, 2]] : tensor<1x16xi1> into tensor<1x16x1xi1>
        %282 = vector.broadcast %cst_3 : f32 to vector<1x16xf32>
        %283 = vector.fma %282, %282, %282 : vector<1x16xf32>
        %284 = arith.andi %false, %true_1 : i1
        %285 = memref.realloc %alloc_17 : memref<1xi1> to memref<1xi1>
      }
      %273 = vector.broadcast %true : i1 to vector<5x5xi1>
      %274 = vector.outerproduct %20, %20, %273 {kind = #vector.kind<minsi>} : vector<5xi1>, vector<5xi1>
      %275 = arith.xori %c27255_i16, %c27255_i16 : i16
      scf.yield %4 : tensor<16x1xi32>
    }
    default {
      %261 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d2 - 136) * 8)>(%c15, %c2, %c1, %c8)
      %262 = arith.shli %c1575039462_i32, %c474382834_i32 : i32
      %263 = vector.reduction <maxsi>, %25 : vector<1xi64> into i64
      %264 = tensor.empty() : tensor<16x16xi1>
      %265 = linalg.matmul ins(%9, %6 : tensor<16x1xi1>, tensor<1x16xi1>) outs(%264 : tensor<16x16xi1>) -> tensor<16x16xi1>
      %266 = index.maxs %c1, %c4
      %267 = affine.max affine_map<(d0) -> ((d0 floordiv 32 - 64) ceildiv 128 - 4)>(%c4)
      %268 = index.divu %c14, %c11
      %269 = index.ceildivs %c15, %268
      %270 = vector.splat %266 : vector<1x16xindex>
      %false_45 = index.bool.constant false
      %271 = vector.broadcast %c1939178552_i64 : i64 to vector<1x1xi64>
      %272 = vector.outerproduct %25, %25, %271 {kind = #vector.kind<maxsi>} : vector<1xi64>, vector<1xi64>
      %c2808_i16 = arith.constant 2808 : i16
      %273 = math.log10 %7 : tensor<1xf16>
      %274 = index.ceildivu %c7, %c5
      %275 = math.log1p %18 : tensor<5x1x5xf32>
      %c0_i64 = arith.constant 0 : i64
      %c0_i64_46 = arith.constant 0 : i64
      %276 = vector.transfer_read %5[%28, %27, %274], %c0_i64_46 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<1x5x5xi64>, vector<12xi64>
      scf.yield %4 : tensor<16x1xi32>
    }
    %31 = math.ctlz %9 : tensor<16x1xi1>
    %32 = math.exp %8 : tensor<1x5x5xf32>
    %33 = math.log %cst : f16
    %false_21 = index.bool.constant false
    %34 = math.cos %13 : tensor<16x1xf32>
    %35 = math.cttz %c1575039462_i32 : i32
    %cst_22 = arith.constant 1.745600e+04 : f16
    %36 = arith.remf %cst_0, %cst_2 : f16
    memref.store %cst_3, %alloc_8[%c0] : memref<1xf32>
    %true_23 = arith.constant true
    %false_24 = arith.constant false
    %37 = vector.transfer_read %alloc_6[%27, %c11, %c0], %false_24 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : memref<1x5x5xi1>, vector<16xi1>
    %38 = index.add %c5, %c3
    %collapsed = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<1x5x5xi64> into tensor<5x5xi64>
    %39 = math.atan2 %2, %2 : tensor<1x5x5xf32>
    %40 = arith.cmpf ugt, %cst_4, %cst_2 : f16
    %41 = arith.divui %c985228557_i64, %c860729636_i64 : i64
    %42 = arith.ceildivsi %c1939178552_i64, %c1768120928_i64 : i64
    %43 = math.ceil %1 : tensor<16x1xf16>
    %alloca_25 = memref.alloca() : memref<1xi64>
    %44 = memref.load %alloc[%c0, %c15] : memref<1x16xi16>
    %45 = math.log10 %8 : tensor<1x5x5xf32>
    %46 = arith.remf %cst_2, %cst : f16
    %47 = math.sqrt %21 : tensor<f16>
    %48 = arith.maxsi %false_21, %true_1 : i1
    %49 = vector.broadcast %c1768120928_i64 : i64 to vector<1x1xi64>
    %50 = vector.outerproduct %25, %25, %49 {kind = #vector.kind<minsi>} : vector<1xi64>, vector<1xi64>
    %51 = index.ceildivs %c9, %c1
    %52 = math.rsqrt %cst_0 : f16
    %53 = vector.broadcast %cst_3 : f32 to vector<12xf32>
    %54 = vector.transfer_write %53, %2[%c11, %c12, %38] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<12xf32>, tensor<1x5x5xf32>
    %true_26 = arith.constant true
    %55 = vector.transfer_read %0[%c13, %c9, %c11], %true_26 : tensor<1x5x5xi1>, vector<5xi1>
    %56 = arith.minui %c27255_i16, %c19851_i16 : i16
    %57 = math.expm1 %2 : tensor<1x5x5xf32>
    %alloc_27 = memref.alloc() : memref<1x16xi1>
    memref.tensor_store %14, %alloc_27 : memref<1x16xi1>
    %58 = tensor.empty() : tensor<1x1xi1>
    %59 = linalg.matmul ins(%6, %9 : tensor<1x16xi1>, tensor<16x1xi1>) outs(%58 : tensor<1x1xi1>) -> tensor<1x1xi1>
    %60 = arith.andi %c860729636_i64, %c985228557_i64 : i64
    %61 = vector.create_mask %c5, %c3 : vector<1x16xi1>
    %62 = vector.bitcast %61 : vector<1x16xi1> to vector<1x16xi1>
    %63 = index.maxu %c1, %c2
    %inserted = tensor.insert %cst_3 into %3[%c0, %c2, %c1] : tensor<1x5x5xf32>
    %64 = index.ceildivu %c6, %c0
    %65 = arith.ori %c860729636_i64, %c1939178552_i64 : i64
    vector.print %61 : vector<1x16xi1>
    %66 = math.expm1 %cst_4 : f16
    %67 = math.cos %1 : tensor<16x1xf16>
    %68 = math.log1p %cst_4 : f16
    %69 = math.ctlz %c27255_i16 : i16
    %70 = math.exp %1 : tensor<16x1xf16>
    %71 = arith.andi %c1939178552_i64, %c860729636_i64 : i64
    %72 = affine.load %alloc_6[%c6, %c9, %c8] : memref<1x5x5xi1>
    %73 = arith.remsi %c1939178552_i64, %c985228557_i64 : i64
    %74 = vector.broadcast %cst_3 : f32 to vector<1xf32>
    vector.transfer_write %74, %alloc_15[%c3, %c12, %c15] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xf32>, memref<1x5x5xf32>
    %75 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
    %76 = vector.outerproduct %74, %74, %75 {kind = #vector.kind<add>} : vector<1xf32>, vector<1xf32>
    %77 = math.log %8 : tensor<1x5x5xf32>
    %78 = affine.max affine_map<(d0, d1) -> (d0 + 64, d0)>(%c9, %c8)
    %splat = tensor.splat %cst_2 : tensor<1x16xf16>
    %79 = arith.shli %c1939178552_i64, %c1775232228_i64 : i64
    %80 = vector.broadcast %false : i1 to vector<1x5x5xi1>
    %81 = math.sqrt %22 : tensor<f16>
    %82 = arith.xori %false_21, %true_26 : i1
    %83 = arith.remf %cst_2, %cst_2 : f16
    %84 = vector.broadcast %cst_3 : f32 to vector<16x1xf32>
    %85 = vector.fma %84, %84, %84 : vector<16x1xf32>
    %86 = arith.maxsi %72, %true_23 : i1
    %alloc_28 = memref.alloc() : memref<1x5x5xi64>
    memref.tensor_store %5, %alloc_28 : memref<1x5x5xi64>
    %87 = arith.subi %c19851_i16, %c27255_i16 : i16
    %88 = vector.transpose %80, [2, 0, 1] : vector<1x5x5xi1> to vector<5x1x5xi1>
    %89 = math.ctpop %c27255_i16 : i16
    %90 = vector.extract %25[0] : vector<1xi64>
    %splat_29 = tensor.splat %c1775232228_i64 : tensor<1x16xi64>
    %91 = arith.mulf %cst, %cst_4 : f16
    %92 = vector.extract %53[1] : vector<12xf32>
    %93 = vector.extract %62[0] : vector<1x16xi1>
    %94 = math.log %2 : tensor<1x5x5xf32>
    %95 = vector.reduction <add>, %53 : vector<12xf32> into f32
    %96 = index.maxs %27, %c7
    %97 = arith.minui %c27255_i16, %c19851_i16 : i16
    %98 = vector.broadcast %cst_4 : f16 to vector<12xf16>
    %99 = vector.broadcast %true_23 : i1 to vector<12xi1>
    %100 = vector.maskedload %alloc_19[%c0], %99, %98 : memref<1xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
    %101 = math.tan %12 : tensor<1x5x5xf16>
    %102 = arith.minui %c19851_i16, %c19851_i16 : i16
    %103 = vector.broadcast %cst_4 : f16 to vector<1x5x5xf16>
    %104 = arith.mulf %cst_2, %cst : f16
    %105 = vector.splat %true_26 : vector<1x5x5xi1>
    %106 = arith.subi %true, %false_21 : i1
    %107 = affine.for %arg3 = 0 to 94 iter_args(%arg4 = %alloc_5) -> (memref<1x5x5xi1>) {
      affine.yield %alloc_5 : memref<1x5x5xi1>
    }
    %108 = arith.ceildivsi %c1939178552_i64, %c1768120928_i64 : i64
    %109 = index.maxs %27, %27
    %110 = math.log2 %cst_3 : f32
    %111 = math.log1p %22 : tensor<f16>
    %112 = arith.divf %cst_3, %cst_3 : f32
    %113 = vector.multi_reduction <and>, %61, %true_23 [0, 1] : vector<1x16xi1> to i1
    %114 = bufferization.clone %alloc_12 : memref<16x1xi1> to memref<16x1xi1>
    memref.alloca_scope  {
      %261 = math.absf %cst : f16
      %262 = arith.mulf %cst_2, %cst_2 : f16
      %263 = index.maxs %c5, %c14
      %264 = vector.bitcast %103 : vector<1x5x5xf16> to vector<1x5x5xf16>
      %265 = scf.index_switch %38 -> i16 
      case 1 {
        %294 = vector.flat_transpose %20 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        %295 = index.maxu %78, %263
        %296 = index.add %263, %38
        %297 = arith.ceildivsi %false, %false : i1
        %298 = arith.shrsi %c474382834_i32, %c474382834_i32 : i32
        %299 = vector.maskedload %alloc_18[%c0], %99, %98 : memref<1xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        %300 = arith.mulf %cst_4, %cst_4 : f16
        %301 = arith.xori %c1575039462_i32, %c1575039462_i32 : i32
        %302 = math.round %15 : tensor<1x16xf16>
        %303 = index.maxu %c8, %28
        %304 = math.tanh %8 : tensor<1x5x5xf32>
        %305 = memref.load %alloc_5[%c0, %c1, %c1] : memref<1x5x5xi1>
        %306 = math.ceil %8 : tensor<1x5x5xf32>
        %307 = math.ctpop %19 : tensor<1x5xi16>
        %cst_46 = arith.constant 0x4DE23598 : f32
        %308 = arith.mulf %cst_4, %cst_0 : f16
        scf.yield %c19851_i16 : i16
      }
      case 2 {
        %294 = math.exp %cst : f16
        %295 = math.log %18 : tensor<5x1x5xf32>
        %alloca_46 = memref.alloca() : memref<1x16xi64>
        %296 = math.sqrt %7 : tensor<1xf16>
        memref.store %cst_4, %alloc_20[%c0] : memref<1xf16>
        %297 = memref.load %alloc_15[%c0, %c3, %c2] : memref<1x5x5xf32>
        %298 = math.round %1 : tensor<16x1xf16>
        %299 = math.absf %8 : tensor<1x5x5xf32>
        %alloca_47 = memref.alloca() : memref<1xi16>
        %300 = math.log1p %15 : tensor<1x16xf16>
        %301 = affine.load %alloc_11[%c13, %c11, %c8] : memref<1x5x5xi32>
        %302 = index.maxu %c13, %c4
        %303 = tensor.empty() : tensor<1x1xi1>
        %304 = linalg.matmul ins(%14, %9 : tensor<1x16xi1>, tensor<16x1xi1>) outs(%303 : tensor<1x1xi1>) -> tensor<1x1xi1>
        %305 = index.maxu %27, %c3
        %306 = arith.ceildivsi %113, %true_23 : i1
        %307 = arith.divsi %c1939178552_i64, %c860729636_i64 : i64
        scf.yield %c27255_i16 : i16
      }
      case 3 {
        %294 = math.ctpop %16 : tensor<1x5x5xi16>
        %295 = index.maxu %c10, %c5
        %296 = vector.splat %c19851_i16 : vector<16x1xi16>
        %alloca_46 = memref.alloca() : memref<1x16xi32>
        %297 = index.maxu %c14, %c2
        %298 = math.ctpop %9 : tensor<16x1xi1>
        %alloc_47 = memref.alloc() : memref<1xf32>
        %299 = vector.transpose %80, [2, 1, 0] : vector<1x5x5xi1> to vector<5x5x1xi1>
        memref.store %true_26, %alloc_12[%c15, %c0] : memref<16x1xi1>
        %300 = affine.apply affine_map<(d0) -> (d0 floordiv 16 - 2)>(%38)
        %301 = arith.shli %c474382834_i32, %c474382834_i32 : i32
        %cst_48 = arith.constant 1.000000e+00 : f32
        %cst_49 = arith.constant 0.000000e+00 : f32
        %302 = vector.transfer_read %3[%c15, %c6, %297], %cst_49 : tensor<1x5x5xf32>, vector<f32>
        %303 = math.exp2 %15 : tensor<1x16xf16>
        %304 = math.expm1 %22 : tensor<f16>
        %305 = vector.shuffle %264, %103 [0] : vector<1x5x5xf16>, vector<1x5x5xf16>
        %306 = index.floordivs %295, %c15
        scf.yield %c27255_i16 : i16
      }
      case 4 {
        %294 = math.tan %3 : tensor<1x5x5xf32>
        %295 = affine.min affine_map<(d0) -> (d0 * -9, d0 * 8 + 128, d0 * 288, d0 * 9)>(%c5)
        %296 = math.copysign %22, %22 : tensor<f16>
        %297 = vector.flat_transpose %100 {columns = 3 : i32, rows = 4 : i32} : vector<12xf16> -> vector<12xf16>
        %298 = math.copysign %13, %13 : tensor<16x1xf32>
        %extracted_46 = tensor.extract %1[%c11, %c0] : tensor<16x1xf16>
        %299 = bufferization.clone %alloc_19 : memref<1xf16> to memref<1xf16>
        %300 = vector.multi_reduction <add>, %297, %98 [] : vector<12xf16> to vector<12xf16>
        %301 = vector.broadcast %cst_2 : f16 to vector<f16>
        vector.transfer_write %301, %alloc_19[%c11] : vector<f16>, memref<1xf16>
        %302 = math.log %2 : tensor<1x5x5xf32>
        %303 = index.maxu %c2, %109
        %304 = math.fma %transposed, %transposed, %transposed : tensor<5x1x5xf32>
        %305 = bufferization.clone %alloc_17 : memref<1xi1> to memref<1xi1>
        %inserted_47 = tensor.insert %extracted_46 into %1[%c2, %c0] : tensor<16x1xf16>
        %306 = arith.muli %false_21, %true_1 : i1
        %307 = arith.divsi %72, %true_1 : i1
        scf.yield %c19851_i16 : i16
      }
      default {
        %294 = index.divu %64, %c14
        %295 = index.maxu %64, %28
        %c799211382_i32 = arith.constant 799211382 : i32
        %296 = arith.andi %113, %true_1 : i1
        %297 = math.ctlz %58 : tensor<1x1xi1>
        %298 = arith.remf %cst_3, %cst_3 : f32
        %299 = arith.maxsi %c1768120928_i64, %c1775232228_i64 : i64
        %300 = vector.shuffle %85, %85 [0, 2, 4, 5, 7, 8, 13, 16, 20, 21, 22, 27, 29, 30, 31] : vector<16x1xf32>, vector<16x1xf32>
        %301 = math.tan %15 : tensor<1x16xf16>
        %302 = index.maxs %27, %109
        %303 = arith.subi %c1939178552_i64, %c985228557_i64 : i64
        %304 = arith.addi %c860729636_i64, %c1939178552_i64 : i64
        %305 = vector.broadcast %c1575039462_i32 : i32 to vector<16x1xi32>
        %306 = arith.maxf %cst_2, %cst_2 : f16
        %307 = vector.broadcast %c6 : index to vector<12xindex>
        vector.scatter %alloc_20[%c0] [%307], %99, %100 : memref<1xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
        %308 = math.sqrt %transposed : tensor<5x1x5xf32>
        scf.yield %c19851_i16 : i16
      }
      %266 = vector.transpose %74, [0] : vector<1xf32> to vector<1xf32>
      %267 = vector.broadcast %cst_3 : f32 to vector<f32>
      %268 = vector.transfer_write %267, %13[%c12, %c4] : vector<f32>, tensor<16x1xf32>
      %269 = arith.ori %c19851_i16, %c19851_i16 : i16
      %270 = memref.load %alloc_7[%c0] : memref<1xi32>
      %271 = vector.load %alloc_9[%c0] : memref<1xi1>, vector<1x5x5xi1>
      %272 = affine.min affine_map<(d0, d1, d2) -> (d0, (d2 - d0) ceildiv 64, ((d2 - d0) ceildiv 64) * 4 + 1, (d2 - d0) ceildiv 64)>(%64, %96, %c6)
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed : tensor<5x5xi64>) outs(%10 : tensor<1x5x5xi64>) {
      ^bb0(%in: i64, %out: i64):
        %294 = vector.flat_transpose %25 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %295 = math.copysign %cst_0, %cst_0 : f16
        %296 = arith.minui %false, %true : i1
        %297 = tensor.empty() : tensor<1x5x5xf32>
        %inserted_46 = tensor.insert %true into %9[%c3, %c0] : tensor<16x1xi1>
        %298 = math.log2 %splat : tensor<1x16xf16>
        %299 = vector.flat_transpose %100 {columns = 3 : i32, rows = 4 : i32} : vector<12xf16> -> vector<12xf16>
        %300 = math.ceil %2 : tensor<1x5x5xf32>
        %301 = vector.broadcast %c27255_i16 : i16 to vector<1xi16>
        %extracted_47 = tensor.extract %10[%c0, %c3, %c3] : tensor<1x5x5xi64>
        %302 = index.ceildivu %38, %38
        memref.tensor_store %2, %alloc_15 : memref<1x5x5xf32>
        %303 = arith.divsi %in, %c985228557_i64 : i64
        %304 = math.ctpop %9 : tensor<16x1xi1>
        %305 = math.cttz %0 : tensor<1x5x5xi1>
        memref.tensor_store %2, %alloc_15 : memref<1x5x5xf32>
        %306 = vector.bitcast %93 : vector<16xi1> to vector<16xi1>
        %307 = index.maxu %c12, %38
        %308 = index.ceildivs %272, %272
        %alloca_48 = memref.alloca() : memref<1x16xi16>
        %309 = arith.addf %cst_3, %cst_3 : f32
        %310 = vector.bitcast %99 : vector<12xi1> to vector<12xi1>
        %splat_49 = tensor.splat %in : tensor<16x1xi64>
        %311 = memref.load %alloc_5[%c0, %c3, %c3] : memref<1x5x5xi1>
        %312 = index.add %63, %c14
        %313 = arith.remui %false_21, %true_26 : i1
        %314 = math.sqrt %13 : tensor<16x1xf32>
        %c794252432_i64 = arith.constant 794252432 : i64
        %315 = tensor.empty() : tensor<1x5xf32>
        %316 = tensor.empty() : tensor<16x5xf32>
        %317 = linalg.matmul ins(%13, %315 : tensor<16x1xf32>, tensor<1x5xf32>) outs(%316 : tensor<16x5xf32>) -> tensor<16x5xf32>
        %318 = arith.addi %c1939178552_i64, %c1775232228_i64 : i64
        %319 = index.maxs %28, %c6
        %320 = vector.broadcast %true_23 : i1 to vector<1xi1>
        %321 = vector.maskedload %alloc_5[%c0, %c0, %c2], %320, %320 : memref<1x5x5xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        linalg.yield %c1768120928_i64 : i64
      } -> tensor<1x5x5xi64>
      %274 = vector.splat %c8 : vector<1x16xindex>
      %275 = arith.cmpf ogt, %cst_4, %cst_2 : f16
      %276 = index.add %c15, %c6
      %277 = arith.andi %72, %true_1 : i1
      %278 = vector.broadcast %cst_0 : f16 to vector<12x12xf16>
      %279 = vector.outerproduct %100, %100, %278 {kind = #vector.kind<mul>} : vector<12xf16>, vector<12xf16>
      %280 = arith.mulf %cst_0, %cst : f16
      %281 = math.ipowi %0, %0 : tensor<1x5x5xi1>
      %282 = math.sqrt %13 : tensor<16x1xf32>
      %283 = arith.xori %false_21, %true_1 : i1
      %284 = arith.divf %cst_2, %cst_0 : f16
      %285 = arith.maxsi %true_1, %72 : i1
      %286 = arith.remf %cst_3, %cst_3 : f32
      %inserted_45 = tensor.insert %c860729636_i64 into %10[%c0, %c2, %c4] : tensor<1x5x5xi64>
      %287 = vector.broadcast %c27255_i16 : i16 to vector<16xi16>
      %288 = vector.transfer_write %287, %reduced[%c3, %27] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi16>, tensor<1x5xi16>
      vector.print %85 : vector<16x1xf32>
      %289 = arith.negf %cst_0 : f16
      %290 = math.expm1 %2 : tensor<1x5x5xf32>
      %291 = vector.reduction <minf>, %98 : vector<12xf16> into f16
      %292 = scf.while (%arg3 = %99) : (vector<12xi1>) -> vector<12xi1> {
        %294 = memref.atomic_rmw addf %cst_0, %alloc_19[%c0] : (f16, memref<1xf16>) -> f16
        %295 = math.rsqrt %3 : tensor<1x5x5xf32>
        %296 = vector.create_mask %28, %c7 : vector<16x1xi1>
        %297 = arith.remf %cst_2, %cst_4 : f16
        %298 = index.maxs %51, %c2
        %299 = arith.andi %c860729636_i64, %c1939178552_i64 : i64
        %300 = arith.divui %c1775232228_i64, %c1768120928_i64 : i64
        %301 = index.add %78, %109
        scf.condition(%true_23) %99 : vector<12xi1>
      } do {
      ^bb0(%arg3: vector<12xi1>):
        %294 = math.cttz %c1939178552_i64 : i64
        %295 = vector.broadcast %true_26 : i1 to vector<16x1xi1>
        %296 = math.atan %transposed : tensor<5x1x5xf32>
        %297 = math.ceil %transposed : tensor<5x1x5xf32>
        %298 = vector.transpose %103, [1, 0, 2] : vector<1x5x5xf16> to vector<5x1x5xf16>
        %299 = index.divs %c5, %c7
        %300 = index.divs %c0, %c12
        %301 = arith.remf %cst_2, %cst_4 : f16
        %302 = vector.shuffle %80, %271 [0] : vector<1x5x5xi1>, vector<1x5x5xi1>
        memref.assume_alignment %114, 1 : memref<16x1xi1>
        %303 = arith.shli %c1575039462_i32, %c474382834_i32 : i32
        %304 = index.ceildivs %c10, %c3
        %305 = math.tanh %18 : tensor<5x1x5xf32>
        %306 = vector.reduction <maxui>, %93 : vector<16xi1> into i1
        %307 = arith.xori %true, %72 : i1
        %308 = affine.load %alloc_8[%c10] : memref<1xf32>
        scf.yield %99 : vector<12xi1>
      }
      %293 = math.atan2 %from_elements, %12 : tensor<1x5x5xf16>
    }
    %115 = arith.xori %false_21, %72 : i1
    %116 = arith.negf %cst_4 : f16
    memref.copy %alloc_20, %alloc_19 : memref<1xf16> to memref<1xf16>
    %117 = index.add %c4, %c14
    scf.index_switch %96 
    case 1 {
      %261 = math.ctpop %11 : tensor<1x5x5xi16>
      memref.store %72, %alloc_5[%c0, %c1, %c0] : memref<1x5x5xi1>
      %262 = tensor.empty() : tensor<1x1xf16>
      %263 = linalg.matmul ins(%splat, %1 : tensor<1x16xf16>, tensor<16x1xf16>) outs(%262 : tensor<1x1xf16>) -> tensor<1x1xf16>
      scf.execute_region {
        %275 = index.divs %63, %28
        %c0_i16 = arith.constant 0 : i16
        %276 = vector.transfer_read %alloc[%c11, %c3], %c0_i16 : memref<1x16xi16>, vector<1xi16>
        %277 = bufferization.clone %alloc_7 : memref<1xi32> to memref<1xi32>
        %278 = arith.minf %cst, %cst_2 : f16
        %279 = math.log10 %cst_3 : f32
        %280 = bufferization.clone %277 : memref<1xi32> to memref<1xi32>
        %281 = affine.apply affine_map<(d0, d1, d2) -> (d2 + d1 + d2)>(%38, %c13, %c1)
        %282 = arith.xori %c19851_i16, %c27255_i16 : i16
        %283 = vector.extract %93[12] : vector<16xi1>
        %284 = vector.broadcast %72 : i1 to vector<16x16xi1>
        %285 = vector.outerproduct %93, %93, %284 {kind = #vector.kind<minsi>} : vector<16xi1>, vector<16xi1>
        %286 = vector.broadcast %false : i1 to vector<5x5xi1>
        %287 = vector.outerproduct %20, %20, %286 {kind = #vector.kind<maxui>} : vector<5xi1>, vector<5xi1>
        %288 = arith.cmpf une, %cst, %cst_0 : f16
        %289 = tensor.empty() : tensor<16x1xf16>
        %290 = linalg.matmul ins(%1, %262 : tensor<16x1xf16>, tensor<1x1xf16>) outs(%289 : tensor<16x1xf16>) -> tensor<16x1xf16>
        %291 = math.sqrt %3 : tensor<1x5x5xf32>
        %292 = index.ceildivs %c4, %51
        %false_46 = index.bool.constant false
        scf.yield
      }
      %264 = index.add %109, %c6
      %265 = vector.shuffle %74, %53 [1, 3, 6, 7, 8, 9, 10, 12] : vector<1xf32>, vector<12xf32>
      %266 = memref.load %alloc[%c0, %c4] : memref<1x16xi16>
      %267 = math.round %262 : tensor<1x1xf16>
      %268 = math.atan2 %15, %splat : tensor<1x16xf16>
      %269 = vector.maskedload %alloc_5[%c0, %c1, %c3], %20, %20 : memref<1x5x5xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
      %270 = bufferization.clone %alloc_12 : memref<16x1xi1> to memref<16x1xi1>
      %271 = arith.remf %cst_3, %cst_3 : f32
      %cst_45 = arith.constant 3.430400e+04 : f16
      %272 = memref.load %alloc_7[%c0] : memref<1xi32>
      %273 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c7, %63, %c11, %96)
      %274 = arith.minui %false, %true : i1
      scf.yield
    }
    default {
      %261 = math.copysign %21, %22 : tensor<f16>
      %262 = vector.transpose %20, [0] : vector<5xi1> to vector<5xi1>
      %263 = math.log10 %transposed : tensor<5x1x5xf32>
      %264 = index.maxu %51, %63
      %265 = vector.broadcast %78 : index to vector<12xindex>
      vector.scatter %alloc_20[%c0] [%265], %99, %98 : memref<1xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
      %266 = index.maxu %c6, %c2
      %267 = arith.remf %cst_0, %cst_4 : f16
      %268 = math.absf %12 : tensor<1x5x5xf16>
      %269 = affine.load %alloc_13[%c7, %c7] : memref<16x1xi32>
      %270 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d3 - 8, d1 + 8)>(%c5, %96, %c11, %c13)
      %271 = tensor.empty() : tensor<i32>
      %272 = math.fpowi %21, %271 : tensor<f16>, tensor<i32>
      %273 = vector.broadcast %72 : i1 to vector<12x12xi1>
      %274 = vector.outerproduct %99, %99, %273 {kind = #vector.kind<and>} : vector<12xi1>, vector<12xi1>
      %275 = affine.load %alloc_19[%c11] : memref<1xf16>
      %276 = math.ipowi %c860729636_i64, %c860729636_i64 : i64
      %277 = arith.remsi %false, %true_1 : i1
      %278 = memref.load %alloc_10[%c0, %c1, %c0] : memref<1x5x5xi16>
    }
    %alloc_30 = memref.alloc() : memref<1x5x5xf32>
    memref.copy %alloc_15, %alloc_30 : memref<1x5x5xf32> to memref<1x5x5xf32>
    scf.execute_region {
      %261 = math.ctpop %6 : tensor<1x16xi1>
      %262 = arith.divsi %c474382834_i32, %c474382834_i32 : i32
      %263 = arith.ori %c1939178552_i64, %c860729636_i64 : i64
      %264 = index.add %c14, %c8
      %265 = arith.cmpf oge, %cst_2, %cst_0 : f16
      %266 = arith.addi %c1768120928_i64, %c985228557_i64 : i64
      %splat_45 = tensor.splat %c985228557_i64 : tensor<1xi64>
      %267 = affine.apply affine_map<(d0) -> (d0 floordiv 16 - 2)>(%c9)
      %268 = math.exp %1 : tensor<16x1xf16>
      %269 = vector.broadcast %c985228557_i64 : i64 to vector<1x1xi64>
      %270 = vector.outerproduct %25, %25, %269 {kind = #vector.kind<add>} : vector<1xi64>, vector<1xi64>
      %271 = arith.divsi %true_26, %true_26 : i1
      %272 = arith.cmpi uge, %true_1, %true_26 : i1
      %273 = vector.broadcast %true : i1 to vector<1xi1>
      %274 = index.maxu %51, %117
      %275 = arith.maxf %cst_2, %cst_4 : f16
      %276 = index.castu %113 : i1 to index
      scf.yield
    }
    %118 = arith.divsi %c19851_i16, %c19851_i16 : i16
    %119 = arith.cmpi uge, %c1939178552_i64, %c1768120928_i64 : i64
    %120 = math.cos %cst : f16
    %121 = arith.addi %c19851_i16, %c27255_i16 : i16
    %122 = math.copysign %cst_4, %cst_4 : f16
    %123 = arith.shrsi %true_23, %true_23 : i1
    %dest, %accumulated_value = vector.scan <mul>, %85, %74 {inclusive = true, reduction_dim = 0 : i64} : vector<16x1xf32>, vector<1xf32>
    %124 = index.maxu %c4, %c10
    %125 = arith.andi %false, %true : i1
    %126 = vector.insert %93, %61 [0] : vector<16xi1> into vector<1x16xi1>
    %dest_31, %accumulated_value_32 = vector.scan <add>, %85, %74 {inclusive = true, reduction_dim = 0 : i64} : vector<16x1xf32>, vector<1xf32>
    %127 = math.exp %3 : tensor<1x5x5xf32>
    %128 = arith.maxf %cst, %cst_4 : f16
    %129 = index.maxu %c0, %38
    %130 = index.add %c7, %28
    %131 = vector.flat_transpose %25 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
    %132 = vector.broadcast %c1575039462_i32 : i32 to vector<16x1xi32>
    %133 = vector.broadcast %false_21 : i1 to vector<16x1xi1>
    %134 = vector.gather %4[%78, %78] [%132], %133, %132 : tensor<16x1xi32>, vector<16x1xi32>, vector<16x1xi1>, vector<16x1xi32> into vector<16x1xi32>
    %135 = arith.xori %c1575039462_i32, %c474382834_i32 : i32
    %136 = memref.atomic_rmw maxf %cst, %alloc_18[%c0] : (f16, memref<1xf16>) -> f16
    %137 = index.sizeof
    %138 = vector.bitcast %80 : vector<1x5x5xi1> to vector<1x5x5xi1>
    %139 = scf.execute_region -> tensor<1xi64> {
      %261 = scf.execute_region -> f32 {
        %277 = arith.andi %c474382834_i32, %c474382834_i32 : i32
        %278 = arith.xori %c1775232228_i64, %c860729636_i64 : i64
        %279 = math.absf %7 : tensor<1xf16>
        %280 = math.ceil %cst_3 : f32
        %281 = arith.remsi %c860729636_i64, %c860729636_i64 : i64
        %282 = arith.subi %c1939178552_i64, %c1939178552_i64 : i64
        %c0_i32_45 = arith.constant 0 : i32
        %283 = vector.transfer_read %4[%51, %c7], %c0_i32_45 : tensor<16x1xi32>, vector<16xi32>
        %284 = affine.load %alloc_11[%c10, %c4, %c12] : memref<1x5x5xi32>
        %285 = vector.broadcast %cst_3 : f32 to vector<16x1xf32>
        %286 = vector.fma %285, %85, %285 : vector<16x1xf32>
        %287 = index.divs %51, %96
        %288 = vector.splat %c7 : vector<16x1xindex>
        %289 = arith.cmpf oeq, %cst_3, %cst_3 : f32
        %290 = math.log1p %cst_0 : f16
        %291 = memref.atomic_rmw maxu %c1575039462_i32, %alloc_11[%c0, %c3, %c1] : (i32, memref<1x5x5xi32>) -> i32
        %292 = arith.cmpi sle, %true, %true_1 : i1
        %extracted_46 = tensor.extract %11[%c0, %c1, %c3] : tensor<1x5x5xi16>
        scf.yield %cst_3 : f32
      }
      %262 = memref.realloc %alloc_18 : memref<1xf16> to memref<16xf16>
      %263 = arith.divf %cst_3, %261 : f32
      %264 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 + d1)>(%c1, %28, %c7, %c14)
      %265 = index.mul %c10, %78
      %266 = arith.xori %c19851_i16, %c19851_i16 : i16
      %267 = arith.divui %true_23, %true_1 : i1
      affine.for %arg3 = 0 to 7 {
      }
      %268 = arith.shli %c860729636_i64, %c1768120928_i64 : i64
      %269 = math.ctpop %c27255_i16 : i16
      %270 = arith.mulf %cst_2, %cst_0 : f16
      %271 = arith.cmpf olt, %cst_4, %cst_4 : f16
      %272 = affine.min affine_map<(d0) -> (-(d0 floordiv 32) + 8, -(d0 floordiv 32) + 128, d0 floordiv 32, -(d0 floordiv 32) + 128)>(%38)
      %273 = arith.maxf %cst, %cst : f16
      %274 = arith.ori %c19851_i16, %c27255_i16 : i16
      %275 = arith.remui %true, %false : i1
      %276 = tensor.empty() : tensor<1xi64>
      scf.yield %276 : tensor<1xi64>
    }
    %140 = scf.if %true_23 -> (memref<1xi32>) {
      %261 = arith.addf %cst, %cst_4 : f16
      %262 = arith.remf %cst_0, %cst_2 : f16
      %263 = math.sqrt %7 : tensor<1xf16>
      %264 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c2, %129, %38, %124)
      %265 = index.casts %c12 : index to i32
      %266 = math.ctlz %reduced : tensor<1x5xi16>
      %267 = arith.andi %true_1, %true_26 : i1
      %268 = arith.shli %true_1, %false : i1
      scf.yield %alloc_7 : memref<1xi32>
    } else {
      %261 = arith.divsi %true_26, %true_26 : i1
      %262 = math.ctpop %true_23 : i1
      %263 = vector.shuffle %84, %84 [1, 4, 6, 8, 15, 16, 18, 20, 21, 22, 23, 25, 26, 27, 28, 29, 30, 31] : vector<16x1xf32>, vector<16x1xf32>
      %264 = tensor.empty() : tensor<1x5x5xf16>
      %265 = tensor.empty() : tensor<16x16xf16>
      %266 = linalg.matmul ins(%1, %15 : tensor<16x1xf16>, tensor<1x16xf16>) outs(%265 : tensor<16x16xf16>) -> tensor<16x16xf16>
      %267 = arith.remsi %true_1, %true : i1
      %268 = math.log1p %12 : tensor<1x5x5xf16>
      %269 = vector.splat %c12 : vector<16x1xindex>
      scf.yield %alloc_7 : memref<1xi32>
    }
    %141 = bufferization.clone %alloc_12 : memref<16x1xi1> to memref<16x1xi1>
    %142 = math.ctpop %0 : tensor<1x5x5xi1>
    %143 = affine.load %alloc_7[%c14] : memref<1xi32>
    %alloca_33 = memref.alloca() : memref<1x16xi1>
    %144 = arith.mulf %cst_4, %cst_2 : f16
    %145 = vector.broadcast %true_1 : i1 to vector<16x16xi1>
    %146 = vector.outerproduct %93, %93, %145 {kind = #vector.kind<maxsi>} : vector<16xi1>, vector<16xi1>
    %147 = vector.broadcast %c985228557_i64 : i64 to vector<1x1xi64>
    %148 = vector.outerproduct %131, %131, %147 {kind = #vector.kind<xor>} : vector<1xi64>, vector<1xi64>
    %149 = tensor.empty() : tensor<16x1xf32>
    %150 = index.ceildivu %38, %c9
    %151 = arith.minui %true, %false_21 : i1
    %152 = tensor.empty() : tensor<1x5xi32>
    %153 = tensor.empty() : tensor<16x5xi32>
    %154 = linalg.matmul ins(%4, %152 : tensor<16x1xi32>, tensor<1x5xi32>) outs(%153 : tensor<16x5xi32>) -> tensor<16x5xi32>
    %155 = vector.broadcast %cst_3 : f32 to vector<16x1xf32>
    %156 = vector.fma %155, %155, %155 : vector<16x1xf32>
    %157 = index.maxu %109, %c7
    %158 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c6, %28, %109, %c7)
    %159 = arith.addi %c1939178552_i64, %c985228557_i64 : i64
    %160 = affine.min affine_map<(d0, d1) -> (d1 * 8, (d1 ceildiv 2) mod 16 - 64)>(%51, %c0)
    %161 = index.ceildivu %c5, %158
    %162 = math.round %18 : tensor<5x1x5xf32>
    %163 = math.exp %cst_4 : f16
    scf.execute_region {
      %261 = math.rsqrt %8 : tensor<1x5x5xf32>
      %262 = math.tanh %149 : tensor<16x1xf32>
      %263 = arith.remf %cst_4, %cst_4 : f16
      %264 = index.ceildivs %c12, %96
      %true_45 = index.bool.constant true
      %265 = vector.insert %93, %62 [0] : vector<16xi1> into vector<1x16xi1>
      %alloc_46 = memref.alloc() : memref<1x5xf32>
      %266 = tensor.empty() : tensor<16x5xf32>
      %267 = linalg.matmul ins(%13, %alloc_46 : tensor<16x1xf32>, memref<1x5xf32>) outs(%266 : tensor<16x5xf32>) -> tensor<16x5xf32>
      %268 = index.divs %c10, %161
      %269 = math.ipowi %splat_29, %splat_29 : tensor<1x16xi64>
      %270 = vector.shuffle %98, %100 [0, 1, 2, 5, 6, 7, 8, 9, 13, 14, 20, 21, 23] : vector<12xf16>, vector<12xf16>
      %271 = math.sqrt %transposed : tensor<5x1x5xf32>
      %272 = vector.broadcast %cst_3 : f32 to vector<16x1xf32>
      %273 = vector.fma %272, %84, %85 : vector<16x1xf32>
      %274 = affine.max affine_map<(d0) -> ((d0 * 4) floordiv 64)>(%150)
      %275 = math.ctpop %false : i1
      %276 = math.sqrt %13 : tensor<16x1xf32>
      %277 = math.cos %cst_2 : f16
      scf.yield
    }
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %164 = vector.transfer_read %4[%c10, %51], %c0_i32 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<16x1xi32>, vector<1xi32>
    %165 = math.ctpop %10 : tensor<1x5x5xi64>
    %166 = math.atan2 %3, %3 : tensor<1x5x5xf32>
    %167 = vector.shuffle %132, %134 [0, 1, 3, 4, 6, 7, 8, 12, 13, 16, 19, 20, 23, 25] : vector<16x1xi32>, vector<16x1xi32>
    %168 = index.maxu %c7, %c11
    %169 = arith.negf %cst_4 : f16
    %170 = arith.cmpi slt, %113, %true_26 : i1
    %inserted_34 = tensor.insert %cst_3 into %8[%c0, %c1, %c1] : tensor<1x5x5xf32>
    %171 = index.maxs %c4, %117
    %172 = arith.remsi %c27255_i16, %c27255_i16 : i16
    %173 = memref.load %alloc_5[%c0, %c2, %c3] : memref<1x5x5xi1>
    %174 = math.ipowi %true_26, %true_1 : i1
    %175 = affine.load %alloc_15[%c1, %c3, %c12] : memref<1x5x5xf32>
    %176 = vector.broadcast %c985228557_i64 : i64 to vector<1x1xi64>
    %177 = vector.outerproduct %131, %131, %176 {kind = #vector.kind<maxsi>} : vector<1xi64>, vector<1xi64>
    %178 = vector.broadcast %175 : f32 to vector<16x1xf32>
    %179 = vector.fma %178, %155, %155 : vector<16x1xf32>
    %180 = index.ceildivs %109, %28
    %181 = arith.minui %143, %143 : i32
    %182 = vector.broadcast %175 : f32 to vector<16x1xf32>
    %183 = vector.fma %182, %156, %155 : vector<16x1xf32>
    %184 = math.copysign %8, %8 : tensor<1x5x5xf32>
    %185 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c5, %129, %c13, %78)
    %186 = vector.insert %93, %61 [0] : vector<16xi1> into vector<1x16xi1>
    %187 = arith.remsi %72, %true_1 : i1
    %188 = math.ctlz %19 : tensor<1x5xi16>
    %189 = math.tanh %22 : tensor<f16>
    %collapsed_35 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<1x5x5xf32> into tensor<5x5xf32>
    memref.alloca_scope  {
      %261 = math.copysign %7, %7 : tensor<1xf16>
      %262 = tensor.empty() : tensor<1xf32>
      %263 = vector.shuffle %20, %99 [1, 2, 6, 10, 12, 15, 16] : vector<5xi1>, vector<12xi1>
      %264 = scf.execute_region -> memref<16x1xf16> {
        %287 = vector.flat_transpose %98 {columns = 3 : i32, rows = 4 : i32} : vector<12xf16> -> vector<12xf16>
        %288 = vector.transpose %182, [1, 0] : vector<16x1xf32> to vector<1x16xf32>
        %289 = math.ceil %7 : tensor<1xf16>
        %290 = arith.divsi %false_21, %true_23 : i1
        %291 = arith.addf %cst_3, %175 : f32
        memref.tensor_store %8, %alloc_15 : memref<1x5x5xf32>
        %from_elements_53 = tensor.from_elements %c27255_i16 : tensor<1xi16>
        %292 = index.ceildivs %160, %171
        %293 = arith.divsi %72, %false_21 : i1
        %294 = index.maxu %38, %171
        %295 = math.absf %7 : tensor<1xf16>
        %296 = math.exp %2 : tensor<1x5x5xf32>
        %297 = vector.reduction <maxf>, %100 : vector<12xf16> into f16
        %298 = index.floordivs %117, %c6
        %299 = math.log %cst_2 : f16
        %300 = arith.remsi %true_26, %113 : i1
        %alloc_54 = memref.alloc() : memref<16x1xf16>
        scf.yield %alloc_54 : memref<16x1xf16>
      }
      %splat_45 = tensor.splat %72 : tensor<1x16xi1>
      %265 = arith.maxsi %true_1, %true_23 : i1
      %266 = arith.remsi %false_21, %72 : i1
      %267 = arith.negf %cst_0 : f16
      %268 = affine.for %arg3 = 0 to 78 iter_args(%arg4 = %c11) -> (index) {
        affine.yield %c12 : index
      }
      %269 = math.round %175 : f32
      memref.store %true_23, %141[%c8, %c0] : memref<16x1xi1>
      %extracted_46 = tensor.extract %9[%c1, %c0] : tensor<16x1xi1>
      %270 = arith.subi %c860729636_i64, %c985228557_i64 : i64
      %271 = math.absf %8 : tensor<1x5x5xf32>
      %272 = math.cos %splat : tensor<1x16xf16>
      %false_47 = arith.constant false
      %false_48 = arith.constant false
      %273 = vector.transfer_read %114[%38, %c14], %false_48 : memref<16x1xi1>, vector<i1>
      %274 = arith.maxsi %c1575039462_i32, %c1575039462_i32 : i32
      %275 = arith.cmpi ugt, %72, %true_23 : i1
      %276 = vector.insert %extracted_46, %99 [3] : i1 into vector<12xi1>
      %false_49 = arith.constant false
      %false_50 = arith.constant false
      %277 = vector.transfer_read %alloc_5[%38, %137, %c7], %false_50 : memref<1x5x5xi1>, vector<i1>
      %278 = math.ctpop %true_1 : i1
      %279 = vector.broadcast %cst : f16 to vector<1xf16>
      %280 = index.divs %171, %c13
      %rank_51 = tensor.rank %12 : tensor<1x5x5xf16>
      scf.if %false {
        %287 = memref.realloc %alloc_20 : memref<1xf16> to memref<12xf16>
        %288 = index.divu %c7, %28
        %289 = math.cos %15 : tensor<1x16xf16>
        %290 = math.exp2 %13 : tensor<16x1xf32>
        %291 = vector.broadcast %cst_2 : f16 to vector<16x1xf16>
        %292 = vector.bitcast %53 : vector<12xf32> to vector<12xf32>
        %293 = math.powf %from_elements, %12 : tensor<1x5x5xf16>
        %294 = vector.broadcast %175 : f32 to vector<16x1xf32>
        %295 = vector.fma %294, %156, %182 : vector<16x1xf32>
      } else {
        %287 = vector.multi_reduction <and>, %93, %true_23 [0] : vector<16xi1> to i1
        %288 = arith.xori %false, %287 : i1
        %289 = math.ctpop %splat_29 : tensor<1x16xi64>
        %290 = index.mul %63, %27
        %291 = math.atan2 %22, %22 : tensor<f16>
        %dest_53, %accumulated_value_54 = vector.scan <maxf>, %84, %74 {inclusive = false, reduction_dim = 0 : i64} : vector<16x1xf32>, vector<1xf32>
        %292 = memref.load %alloc_12[%c14, %c0] : memref<16x1xi1>
        %293 = arith.negf %175 : f32
      }
      %281 = math.sqrt %cst : f16
      %282 = arith.maxf %cst_2, %cst_4 : f16
      %283 = arith.muli %true, %true_26 : i1
      %true_52 = index.bool.constant true
      %284 = vector.create_mask %c12, %96 : vector<1x16xi1>
      %285 = index.maxs %28, %c12
      %286 = math.copysign %from_elements, %12 : tensor<1x5x5xf16>
    }
    %generated = tensor.generate %124 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %261 = index.ceildivu %130, %c11
      %262 = arith.ori %c19851_i16, %c19851_i16 : i16
      %263 = math.ceil %7 : tensor<1xf16>
      %264 = arith.cmpf false, %cst_0, %cst_4 : f16
      tensor.yield %c474382834_i32 : i32
    } : tensor<?x5x5xi32>
    %190 = arith.remsi %113, %true_23 : i1
    %191 = vector.broadcast %false : i1 to vector<1xi1>
    %192 = math.sqrt %18 : tensor<5x1x5xf32>
    %193 = arith.negf %cst : f16
    %194 = vector.broadcast %109 : index to vector<16xindex>
    %195 = vector.broadcast %cst_0 : f16 to vector<16xf16>
    vector.scatter %alloc_20[%c0] [%194], %93, %195 : memref<1xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
    %196 = vector.broadcast %c1575039462_i32 : i32 to vector<1xi32>
    %197 = vector.insert %196, %132 [8] : vector<1xi32> into vector<16x1xi32>
    %198 = index.maxu %c1, %157
    %199 = math.ipowi %10, %5 : tensor<1x5x5xi64>
    %true_36 = index.bool.constant true
    %200 = math.atan %15 : tensor<1x16xf16>
    %201 = affine.load %alloc_13[%c8, %c12] : memref<16x1xi32>
    %202 = index.ceildivu %130, %c9
    %203 = arith.maxsi %c1939178552_i64, %c1768120928_i64 : i64
    affine.for %arg3 = 0 to 78 {
    }
    vector.print %74 : vector<1xf32>
    scf.index_switch %158 
    case 1 {
      %261 = vector.maskedload %141[%c13, %c0], %93, %93 : memref<16x1xi1>, vector<16xi1>, vector<16xi1> into vector<16xi1>
      %262 = vector.shuffle %155, %178 [0, 3, 4, 6, 7, 9, 10, 12, 13, 17, 18, 20, 22, 26, 29] : vector<16x1xf32>, vector<16x1xf32>
      %263 = arith.negf %cst_3 : f32
      %264 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
      %265 = vector.outerproduct %74, %74, %264 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
      %from_elements_45 = tensor.from_elements %true_36, %true_26, %true, %true_23, %true_23, %true, %false_21, %true_26, %false_21, %false, %true_26, %true_1, %true_36, %true_36, %false_21, %false, %true, %false, %true_36, %false_21, %true, %true_23, %72, %true, %false : tensor<1x5x5xi1>
      %266 = arith.addi %c19851_i16, %c19851_i16 : i16
      %267 = affine.max affine_map<(d0) -> (-(d0 - d0 ceildiv 2) + 16)>(%117)
      %rank_46 = tensor.rank %0 : tensor<1x5x5xi1>
      %268 = affine.max affine_map<(d0, d1, d2) -> (d0 floordiv 8 + 2, d0 - d1 ceildiv 16 + 1, (d2 floordiv 2) ceildiv 8)>(%c1, %180, %180)
      %269 = arith.shli %true_1, %72 : i1
      %270 = arith.remf %175, %175 : f32
      %271 = vector.bitcast %25 : vector<1xi64> to vector<1xi64>
      %272 = math.log1p %2 : tensor<1x5x5xf32>
      %273 = vector.create_mask %c14, %28, %158 : vector<1x5x5xi1>
      %alloc_47 = memref.alloc() : memref<1x1xi1>
      memref.tensor_store %58, %alloc_47 : memref<1x1xi1>
      %274 = arith.muli %c1_i32, %c1575039462_i32 : i32
      scf.yield
    }
    case 2 {
      %261 = vector.create_mask %96 : vector<1xi1>
      %262 = arith.negf %cst_3 : f32
      %263 = arith.shli %c1939178552_i64, %c985228557_i64 : i64
      %264 = math.fpowi %cst_3, %201 : f32, i32
      %265 = vector.insert %113, %261 [0] : i1 into vector<1xi1>
      scf.execute_region {
        %276 = index.ceildivs %c7, %158
        %277 = index.maxu %c10, %129
        %278 = vector.broadcast %c1768120928_i64 : i64 to vector<1x1xi64>
        %279 = vector.outerproduct %25, %25, %278 {kind = #vector.kind<add>} : vector<1xi64>, vector<1xi64>
        %from_elements_46 = tensor.from_elements %cst_3 : tensor<1xf32>
        %false_47 = arith.constant false
        %280 = index.maxs %c5, %185
        %281 = math.log10 %1 : tensor<16x1xf16>
        %splat_48 = tensor.splat %cst_4 : tensor<16x1xf16>
        %282 = arith.mulf %cst_0, %cst_0 : f16
        %283 = arith.cmpf uno, %cst_2, %cst_4 : f16
        %284 = vector.load %alloc_18[%c0] : memref<1xf16>, vector<1x5x5xf16>
        %285 = arith.minf %cst_2, %cst_0 : f16
        %c141450163_i64 = arith.constant 141450163 : i64
        %286 = math.powf %from_elements, %12 : tensor<1x5x5xf16>
        %287 = math.tanh %collapsed_35 : tensor<5x5xf32>
        %288 = affine.apply affine_map<(d0, d1) -> (0)>(%124, %c11)
        scf.yield
      }
      %266 = vector.broadcast %cst_4 : f16 to vector<16x1xf16>
      %267 = arith.remsi %true_1, %true_36 : i1
      %268 = math.log10 %7 : tensor<1xf16>
      %cst_45 = arith.constant 2.809600e+04 : f16
      %269 = tensor.empty() : tensor<16x1xf32>
      %270 = arith.remui %c19851_i16, %c19851_i16 : i16
      %271 = vector.broadcast %175 : f32 to vector<12x12xf32>
      %272 = vector.outerproduct %53, %53, %271 {kind = #vector.kind<maxf>} : vector<12xf32>, vector<12xf32>
      %273 = arith.divui %true_36, %true_26 : i1
      %274 = math.atan2 %1, %1 : tensor<16x1xf16>
      %275 = math.ipowi %true_26, %113 : i1
      scf.yield
    }
    default {
      %261 = vector.insert %196, %134 [12] : vector<1xi32> into vector<16x1xi32>
      %262 = arith.subi %false_21, %true_36 : i1
      %263 = index.maxs %161, %109
      %264 = arith.maxsi %c1775232228_i64, %c860729636_i64 : i64
      %265 = vector.load %alloc_18[%c0] : memref<1xf16>, vector<1x5x5xf16>
      %266 = vector.extract %62[0] : vector<1x16xi1>
      %267 = arith.remf %cst, %cst_2 : f16
      %268 = math.expm1 %3 : tensor<1x5x5xf32>
      %269 = index.divs %198, %168
      %270 = vector.broadcast %c7 : index to vector<12xindex>
      %271 = vector.broadcast %c1575039462_i32 : i32 to vector<12xi32>
      vector.scatter %alloc_7[%c0] [%270], %99, %271 : memref<1xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
      %272 = index.maxu %171, %c11
      %273 = arith.negf %cst : f16
      %274 = affine.min affine_map<(d0, d1, d2) -> (d2 - d0, d2 - d0, ((d2 - d0) mod 2) floordiv 8, d2 floordiv 4)>(%27, %c8, %137)
      %rank_45 = tensor.rank %16 : tensor<1x5x5xi16>
      %275 = math.atan2 %21, %21 : tensor<f16>
      %276 = index.maxu %c8, %c4
    }
    %cst_37 = arith.constant 1.000000e+00 : f32
    %cst_38 = arith.constant 0.000000e+00 : f32
    %204 = vector.transfer_read %149[%c2, %64], %cst_38 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<16x1xf32>, vector<12xf32>
    %205 = math.roundeven %3 : tensor<1x5x5xf32>
    %206 = arith.maxsi %true, %true : i1
    %cst_39 = arith.constant 5.392000e+04 : f16
    %207 = arith.muli %72, %true : i1
    %208 = arith.maxf %cst, %cst_2 : f16
    %209 = math.sqrt %12 : tensor<1x5x5xf16>
    %210 = arith.ori %c474382834_i32, %c1575039462_i32 : i32
    %211 = arith.minf %cst_4, %cst_0 : f16
    %212 = scf.if %true -> (memref<16x1xi64>) {
      %261 = math.log1p %1 : tensor<16x1xf16>
      %262 = index.maxu %c15, %c2
      %splat_45 = tensor.splat %cst : tensor<1xf16>
      %extracted_46 = tensor.extract %3[%c0, %c1, %c2] : tensor<1x5x5xf32>
      %263 = math.round %12 : tensor<1x5x5xf16>
      %c995564951_i32 = arith.constant 995564951 : i32
      %264 = tensor.empty(%198, %28) : tensor<?x?xi1>
      %265 = arith.cmpf oeq, %cst_0, %cst_2 : f16
      %alloc_47 = memref.alloc() : memref<16x1xi64>
      scf.yield %alloc_47 : memref<16x1xi64>
    } else {
      %261 = vector.reduction <mul>, %100 : vector<12xf16> into f16
      %262 = vector.broadcast %175 : f32 to vector<16x1xf32>
      %263 = vector.fma %262, %156, %178 : vector<16x1xf32>
      %264 = math.log2 %21 : tensor<f16>
      %265 = arith.remsi %c985228557_i64, %c1775232228_i64 : i64
      %266 = arith.divui %c474382834_i32, %201 : i32
      %267 = arith.addf %cst_2, %cst_4 : f16
      %268 = vector.flat_transpose %93 {columns = 4 : i32, rows = 4 : i32} : vector<16xi1> -> vector<16xi1>
      %269 = math.log2 %15 : tensor<1x16xf16>
      %alloc_45 = memref.alloc() : memref<16x1xi64>
      scf.yield %alloc_45 : memref<16x1xi64>
    }
    vector.print %62 : vector<1x16xi1>
    %213 = arith.floordivsi %c860729636_i64, %c1775232228_i64 : i64
    %214 = tensor.empty(%c8) : tensor<16x?xi64>
    %215 = math.round %15 : tensor<1x16xf16>
    vector.print %62 : vector<1x16xi1>
    %216 = math.roundeven %7 : tensor<1xf16>
    %217 = math.exp %21 : tensor<f16>
    %c1_i64 = arith.constant 1 : i64
    %218 = vector.transfer_read %212[%c9, %161], %c1_i64 : memref<16x1xi64>, vector<16xi64>
    %extracted = tensor.extract %18[%c2, %c0, %c2] : tensor<5x1x5xf32>
    %219 = vector.reduction <maxf>, %74 : vector<1xf32> into f32
    %220 = arith.muli %c474382834_i32, %c1_i32 : i32
    %221 = arith.negf %cst_37 : f32
    %222 = index.divu %c0, %168
    %223 = arith.remf %cst_0, %cst_4 : f16
    %rank = tensor.rank %12 : tensor<1x5x5xf16>
    %224 = arith.remsi %c1575039462_i32, %c1_i32 : i32
    %225 = vector.broadcast %c5 : index to vector<16xindex>
    %226 = vector.broadcast %c19851_i16 : i16 to vector<16xi16>
    vector.scatter %alloc_10[%c0, %c4, %c4] [%225], %93, %226 : memref<1x5x5xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
    %227 = tensor.empty() : tensor<16x1xi16>
    %228 = arith.divsi %false_21, %72 : i1
    %229 = vector.extract_strided_slice %134 {offsets = [5], sizes = [8], strides = [1]} : vector<16x1xi32> to vector<8x1xi32>
    %alloc_40 = memref.alloc() : memref<1x5x5xi1>
    %230 = arith.divui %c860729636_i64, %c1939178552_i64 : i64
    %231 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c11, %c1, %28, %c3)
    %232 = vector.reduction <maxui>, %99 : vector<12xi1> into i1
    %233 = arith.andi %c27255_i16, %c27255_i16 : i16
    %alloc_41 = memref.alloc() : memref<1xf16>
    %234 = math.sqrt %cst_37 : f32
    %235 = math.atan %12 : tensor<1x5x5xf16>
    %236 = index.add %c9, %64
    %237 = arith.subi %c1575039462_i32, %c1575039462_i32 : i32
    %238 = index.add %c2, %c4
    %239 = index.maxs %180, %c11
    %240 = math.cos %cst_37 : f32
    affine.for %arg3 = 0 to 35 {
    }
    %241 = arith.remsi %c985228557_i64, %c1768120928_i64 : i64
    %242 = arith.mulf %extracted, %cst_3 : f32
    %243 = vector.flat_transpose %98 {columns = 3 : i32, rows = 4 : i32} : vector<12xf16> -> vector<12xf16>
    scf.execute_region {
      %261 = arith.shli %c1_i32, %c1575039462_i32 : i32
      %extracted_45 = tensor.extract %9[%c10, %c0] : tensor<16x1xi1>
      %262 = math.ipowi %0, %0 : tensor<1x5x5xi1>
      %263 = arith.remf %cst_0, %cst_2 : f16
      %264 = arith.maxsi %c1939178552_i64, %c1_i64 : i64
      %265 = vector.broadcast %cst_4 : f16 to vector<12x12xf16>
      %266 = vector.outerproduct %100, %98, %265 {kind = #vector.kind<minf>} : vector<12xf16>, vector<12xf16>
      %collapsed_46 = tensor.collapse_shape %collapsed_35 [[0, 1]] : tensor<5x5xf32> into tensor<25xf32>
      %267 = vector.bitcast %85 : vector<16x1xf32> to vector<16x1xf32>
      %268 = vector.broadcast %cst_2 : f16 to vector<12x12xf16>
      %269 = vector.outerproduct %243, %100, %268 {kind = #vector.kind<add>} : vector<12xf16>, vector<12xf16>
      %270 = index.floordivs %78, %c4
      %271 = math.absf %13 : tensor<16x1xf32>
      %272 = arith.ceildivsi %c474382834_i32, %143 : i32
      %alloc_47 = memref.alloc() : memref<1x16xf16>
      %273 = arith.andi %false_21, %true_1 : i1
      %274 = vector.splat %c14 : vector<1x5x5xindex>
      %275 = vector.flat_transpose %53 {columns = 3 : i32, rows = 4 : i32} : vector<12xf32> -> vector<12xf32>
      scf.yield
    }
    %244 = math.log10 %8 : tensor<1x5x5xf32>
    %245 = index.ceildivs %27, %c5
    %246 = tensor.empty() : tensor<1x1xi1>
    %247 = linalg.matmul ins(%6, %9 : tensor<1x16xi1>, tensor<16x1xi1>) outs(%246 : tensor<1x1xi1>) -> tensor<1x1xi1>
    %248 = arith.mulf %175, %cst_37 : f32
    vector.print %61 : vector<1x16xi1>
    %249 = index.add %157, %109
    %250 = arith.ceildivsi %143, %201 : i32
    %251 = vector.extract %132[9] : vector<16x1xi32>
    %252 = arith.subi %c1775232228_i64, %c1768120928_i64 : i64
    %253 = index.ceildivs %222, %161
    %alloc_42 = memref.alloc() : memref<5x1xf32>
    %254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_42 : memref<5x1xf32>) outs(%2 : tensor<1x5x5xf32>) {
    ^bb0(%in: f32, %out: f32):
      %261 = vector.shuffle %80, %80 [0] : vector<1x5x5xi1>, vector<1x5x5xi1>
      %262 = math.log10 %cst : f16
      %263 = arith.divui %143, %201 : i32
      %264 = math.log10 %in : f32
      %265 = arith.andi %c474382834_i32, %c474382834_i32 : i32
      %266 = math.exp %13 : tensor<16x1xf32>
      %267 = tensor.empty() : tensor<16x1xf32>
      %268 = index.ceildivs %c13, %c4
      %269 = arith.addi %c19851_i16, %c19851_i16 : i16
      %270 = arith.addf %cst_3, %in : f32
      %271 = math.ctlz %16 : tensor<1x5x5xi16>
      %272 = vector.extract %100[11] : vector<12xf16>
      %273 = vector.load %alloc_17[%c0] : memref<1xi1>, vector<16x1xi1>
      %alloc_45 = memref.alloc() : memref<16x1xi64>
      memref.copy %212, %alloc_45 : memref<16x1xi64> to memref<16x1xi64>
      %274 = vector.transpose %134, [1, 0] : vector<16x1xi32> to vector<1x16xi32>
      %275 = vector.broadcast %true_26 : i1 to vector<1x5xi1>
      %dest_46, %accumulated_value_47 = vector.scan <mul>, %138, %275 {inclusive = false, reduction_dim = 2 : i64} : vector<1x5x5xi1>, vector<1x5xi1>
      %276 = tensor.empty(%c2) : tensor<1x?x5xf32>
      %277 = vector.maskedload %alloc_17[%c0], %99, %99 : memref<1xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
      %278 = vector.insert %false_21, %191 [0] : i1 into vector<1xi1>
      %279 = arith.shrui %c1_i32, %143 : i32
      %280 = arith.remsi %true_26, %113 : i1
      %collapsed_48 = tensor.collapse_shape %splat [[0, 1]] : tensor<1x16xf16> into tensor<16xf16>
      %281 = affine.apply affine_map<(d0, d1, d2) -> (d2 + d1 + d2)>(%c4, %245, %198)
      %282 = vector.broadcast %c1939178552_i64 : i64 to vector<16xi64>
      %283 = vector.transfer_write %282, %splat_29[%130, %168] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<16xi64>, tensor<1x16xi64>
      %284 = arith.minsi %c860729636_i64, %c1775232228_i64 : i64
      %rank_49 = tensor.rank %from_elements : tensor<1x5x5xf16>
      %collapsed_50 = tensor.collapse_shape %14 [[0, 1]] : tensor<1x16xi1> into tensor<16xi1>
      %285 = arith.xori %c1768120928_i64, %c985228557_i64 : i64
      %286 = index.divu %238, %c13
      %287 = arith.negf %cst_2 : f16
      %288 = arith.subi %false, %false : i1
      %289 = arith.minui %c1775232228_i64, %c1_i64 : i64
      linalg.yield %175 : f32
    } -> tensor<1x5x5xf32>
    %255 = arith.xori %c985228557_i64, %c1768120928_i64 : i64
    memref.store %cst_0, %alloc_19[%c0] : memref<1xf16>
    %256 = math.floor %2 : tensor<1x5x5xf32>
    %257 = tensor.empty() : tensor<1x5x5xi64>
    %258 = linalg.copy ins(%10 : tensor<1x5x5xi64>) outs(%257 : tensor<1x5x5xi64>) -> tensor<1x5x5xi64>
    %259 = tensor.empty() : tensor<5x1x5xf32>
    %transposed_43 = linalg.transpose ins(%8 : tensor<1x5x5xf32>) outs(%259 : tensor<5x1x5xf32>) permutation = [2, 0, 1] 
    %alloc_44 = memref.alloc() : memref<1x5xf32>
    linalg.reduce ins(%2 : tensor<1x5x5xf32>) outs(%alloc_44 : memref<1x5xf32>) dimensions = [1] 
      (%in: f32, %init: f32) {
        %261 = vector.broadcast %cst_4 : f16 to vector<1xf16>
        %262 = math.copysign %259, %259 : tensor<5x1x5xf32>
        %263 = index.mul %231, %180
        %alloca_45 = memref.alloca() : memref<1x16xf32>
        %c0_i64 = arith.constant 0 : i64
        %c0_i64_46 = arith.constant 0 : i64
        %264 = vector.transfer_read %212[%c0, %c15], %c0_i64_46 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<16x1xi64>, vector<16xi64>
        %265 = index.divu %249, %c1
        %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%transposed_43 : tensor<5x1x5xf32>) {
        ^bb0(%out: f32):
          %268 = math.log10 %8 : tensor<1x5x5xf32>
          %269 = math.tanh %cst_4 : f16
          %270 = math.ctlz %14 : tensor<1x16xi1>
          %271 = arith.shrsi %true, %true_26 : i1
          %272 = arith.mulf %cst_3, %out : f32
          %273 = vector.maskedload %alloc_6[%c0, %c3, %c3], %93, %93 : memref<1x5x5xi1>, vector<16xi1>, vector<16xi1> into vector<16xi1>
          %274 = arith.shrsi %c1939178552_i64, %c1_i64 : i64
          %collapsed_48 = tensor.collapse_shape %4 [[0, 1]] : tensor<16x1xi32> into tensor<16xi32>
          %275 = index.ceildivs %158, %c0
          %276 = arith.andi %c1_i32, %c1575039462_i32 : i32
          %277 = index.add %157, %157
          %278 = vector.broadcast %in : f32 to vector<16x12xf32>
          vector.transfer_write %278, %alloc_15[%c3, %c10, %124] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<16x12xf32>, memref<1x5x5xf32>
          %279 = arith.shli %c985228557_i64, %c985228557_i64 : i64
          %280 = math.ipowi %c1775232228_i64, %c0_i64 : i64
          %281 = index.add %222, %51
          %282 = index.ceildivs %124, %c11
          %283 = math.ipowi %c860729636_i64, %c860729636_i64 : i64
          %284 = index.casts %124 : index to i32
          %285 = math.exp %149 : tensor<16x1xf32>
          %286 = arith.ori %c0_i64, %c1768120928_i64 : i64
          %287 = vector.reduction <mul>, %251 : vector<1xi32> into i32
          %288 = index.add %c10, %239
          %289 = math.cos %259 : tensor<5x1x5xf32>
          %290 = math.cos %13 : tensor<16x1xf32>
          %291 = vector.transpose %183, [1, 0] : vector<16x1xf32> to vector<1x16xf32>
          %292 = arith.shli %72, %true_23 : i1
          %alloca_49 = memref.alloca() : memref<1xi16>
          affine.store %cst, %alloc_18[%c6] : memref<1xf16>
          %293 = arith.remsi %true, %true_26 : i1
          %294 = arith.minui %false, %72 : i1
          %collapsed_50 = tensor.collapse_shape %16 [[0, 1], [2]] : tensor<1x5x5xi16> into tensor<5x5xi16>
          %295 = arith.addi %true_26, %true_23 : i1
          linalg.yield %175 : f32
        } -> tensor<5x1x5xf32>
        %267 = arith.subi %c1_i32, %143 : i32
        %cst_47 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_47 : f32
      }
    scf.parallel (%arg3, %arg4) = (%129, %185) to (%249, %c8) step (%c1, %c4) {
      %261 = vector.maskedload %alloc_12[%c13, %c0], %93, %93 : memref<16x1xi1>, vector<16xi1>, vector<16xi1> into vector<16xi1>
      %true_45 = arith.constant true
      %262 = math.cttz %6 : tensor<1x16xi1>
      %263 = index.floordivs %161, %64
      %264 = vector.load %alloc_11[%c0, %c1, %c4] : memref<1x5x5xi32>, vector<1xi32>
      %265 = math.ipowi %0, %0 : tensor<1x5x5xi1>
      scf.index_switch %263 
      case 1 {
        %275 = index.divs %117, %180
        %276 = arith.remf %cst_4, %cst_2 : f16
        %277 = math.ceil %transposed : tensor<5x1x5xf32>
        %alloc_47 = memref.alloc() : memref<16x16xi64>
        %278 = tensor.empty() : tensor<1x16xi64>
        %279 = linalg.matmul ins(%splat_29, %alloc_47 : tensor<1x16xi64>, memref<16x16xi64>) outs(%278 : tensor<1x16xi64>) -> tensor<1x16xi64>
        %280 = vector.create_mask %63 : vector<1xi1>
        %281 = index.divs %c6, %171
        %282 = index.maxs %263, %c3
        %283 = vector.broadcast %cst : f16 to vector<16xf16>
        %284 = vector.maskedload %alloc_19[%c0], %261, %283 : memref<1xf16>, vector<16xi1>, vector<16xf16> into vector<16xf16>
        %285 = arith.floordivsi %c27255_i16, %c19851_i16 : i16
        memref.tensor_store %4, %alloc_13 : memref<16x1xi32>
        %286 = vector.broadcast %true_23 : i1 to vector<1x1xi1>
        %287 = vector.outerproduct %191, %280, %286 {kind = #vector.kind<maxsi>} : vector<1xi1>, vector<1xi1>
        %288 = math.log10 %7 : tensor<1xf16>
        %289 = vector.flat_transpose %280 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %290 = affine.load %alloc_5[%c6, %c14, %c9] : memref<1x5x5xi1>
        %291 = arith.ceildivsi %c474382834_i32, %c1_i32 : i32
        %292 = index.ceildivs %202, %245
        scf.yield
      }
      case 2 {
        %275 = index.maxs %161, %c2
        memref.store %c19851_i16, %alloc_14[%c3, %c0] : memref<16x1xi16>
        %276 = vector.broadcast %c1939178552_i64 : i64 to vector<5x5xi64>
        %277 = vector.transfer_write %276, %5[%198, %38, %63] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<5x5xi64>, tensor<1x5x5xi64>
        %278 = math.copysign %13, %13 : tensor<16x1xf32>
        %279 = arith.remsi %c19851_i16, %c27255_i16 : i16
        memref.store %cst, %alloc_20[%c0] : memref<1xf16>
        %rank_47 = tensor.rank %257 : tensor<1x5x5xi64>
        %false_48 = index.bool.constant false
        %splat_49 = tensor.splat %cst_0 : tensor<1x16xf16>
        %280 = affine.max affine_map<(d0, d1, d2) -> (d0 floordiv 2, d1 floordiv 32)>(%150, %117, %160)
        %281 = index.floordivs %168, %253
        %282 = index.divs %c1, %rank
        %inserted_50 = tensor.insert %cst_0 into %22[] : tensor<f16>
        %283 = affine.max affine_map<(d0, d1, d2, d3) -> ((-((d1 + d2) ceildiv 8)) floordiv 128, d0)>(%275, %c1, %c7, %238)
        %284 = arith.subi %c1768120928_i64, %c860729636_i64 : i64
        %285 = arith.minui %72, %true_36 : i1
        scf.yield
      }
      case 3 {
        %from_elements_47 = tensor.from_elements %113 : tensor<1xi1>
        %275 = math.round %8 : tensor<1x5x5xf32>
        vector.print %85 : vector<16x1xf32>
        %276 = math.roundeven %12 : tensor<1x5x5xf16>
        %277 = arith.maxf %cst_2, %cst_4 : f16
        %278 = arith.negf %cst_0 : f16
        %279 = arith.addi %c1768120928_i64, %c1775232228_i64 : i64
        %280 = arith.minui %c860729636_i64, %c1_i64 : i64
        %281 = math.ctlz %c860729636_i64 : i64
        %282 = affine.min affine_map<(d0, d1, d2, d3) -> (d0)>(%c15, %263, %249, %51)
        %283 = arith.remf %175, %175 : f32
        memref.store %72, %alloc_9[%c0] : memref<1xi1>
        %284 = math.round %3 : tensor<1x5x5xf32>
        %285 = math.ctlz %6 : tensor<1x16xi1>
        %286 = vector.flat_transpose %100 {columns = 3 : i32, rows = 4 : i32} : vector<12xf16> -> vector<12xf16>
        %287 = index.divu %c14, %arg4
        scf.yield
      }
      default {
        memref.tensor_store %8, %alloc_15 : memref<1x5x5xf32>
        %275 = arith.muli %201, %c1_i32 : i32
        %276 = arith.divsi %false_21, %true_26 : i1
        vector.print %179 : vector<16x1xf32>
        %277 = arith.negf %cst_4 : f16
        %278 = bufferization.clone %140 : memref<1xi32> to memref<1xi32>
        %splat_47 = tensor.splat %c1_i64 : tensor<1x16xi64>
        affine.store %c860729636_i64, %alloc_16[%c9, %c15] : memref<1x16xi64>
        %279 = index.add %rank, %c10
        %280 = vector.broadcast %c1768120928_i64 : i64 to vector<16x1xi64>
        %281 = affine.load %alloc_44[%c9, %c3] : memref<1x5xf32>
        %282 = arith.shli %true_26, %true_36 : i1
        %283 = vector.reduction <minf>, %100 : vector<12xf16> into f16
        %alloca_48 = memref.alloca() : memref<1x5x5xf16>
        %284 = vector.flat_transpose %100 {columns = 3 : i32, rows = 4 : i32} : vector<12xf16> -> vector<12xf16>
        %285 = arith.addf %cst_3, %cst_37 : f32
      }
      %266 = vector.splat %true : vector<1xi1>
      %267 = math.exp %cst_37 : f32
      %alloca_46 = memref.alloca() : memref<16x1xi1>
      %268 = math.copysign %7, %7 : tensor<1xf16>
      %269 = arith.maxf %cst_0, %cst : f16
      %270 = vector.broadcast %cst_0 : f16 to vector<f16>
      %271 = vector.transfer_write %270, %7[%236] : vector<f16>, tensor<1xf16>
      %272 = arith.remsi %true_26, %false : i1
      %273 = math.ipowi %9, %9 : tensor<16x1xi1>
      %274 = vector.broadcast %false : i1 to vector<1x16xi1>
      scf.yield
    }
    %260 = affine.vector_load %alloc_15[%160, %124, %180] : memref<1x5x5xf32>, vector<16xf32>
    affine.vector_store %53, %alloc_8[%236] : memref<1xf32>, vector<12xf32>
    vector.print %20 : vector<5xi1>
    vector.print %25 : vector<1xi64>
    vector.print %53 : vector<12xf32>
    vector.print %61 : vector<1x16xi1>
    vector.print %62 : vector<1x16xi1>
    vector.print %74 : vector<1xf32>
    vector.print %80 : vector<1x5x5xi1>
    vector.print %84 : vector<16x1xf32>
    vector.print %85 : vector<16x1xf32>
    vector.print %93 : vector<16xi1>
    vector.print %98 : vector<12xf16>
    vector.print %99 : vector<12xi1>
    vector.print %100 : vector<12xf16>
    vector.print %103 : vector<1x5x5xf16>
    vector.print %131 : vector<1xi64>
    vector.print %132 : vector<16x1xi32>
    vector.print %133 : vector<16x1xi1>
    vector.print %134 : vector<16x1xi32>
    vector.print %138 : vector<1x5x5xi1>
    vector.print %155 : vector<16x1xf32>
    vector.print %156 : vector<16x1xf32>
    vector.print %178 : vector<16x1xf32>
    vector.print %179 : vector<16x1xf32>
    vector.print %182 : vector<16x1xf32>
    vector.print %183 : vector<16x1xf32>
    vector.print %191 : vector<1xi1>
    vector.print %196 : vector<1xi32>
    vector.print %229 : vector<8x1xi32>
    vector.print %243 : vector<12xf16>
    vector.print %251 : vector<1xi32>
    vector.print %260 : vector<16xf32>
    vector.print %cst : f16
    vector.print %true : i1
    vector.print %c19851_i16 : i16
    vector.print %c1768120928_i64 : i64
    vector.print %cst_0 : f16
    vector.print %true_1 : i1
    vector.print %cst_2 : f16
    vector.print %c474382834_i32 : i32
    vector.print %c1775232228_i64 : i64
    vector.print %cst_3 : f32
    vector.print %c27255_i16 : i16
    vector.print %c1575039462_i32 : i32
    vector.print %cst_4 : f16
    vector.print %c860729636_i64 : i64
    vector.print %c985228557_i64 : i64
    vector.print %c1939178552_i64 : i64
    vector.print %false : i1
    vector.print %false_21 : i1
    vector.print %true_23 : i1
    vector.print %true_26 : i1
    vector.print %72 : i1
    vector.print %113 : i1
    vector.print %143 : i32
    vector.print %c1_i32 : i32
    vector.print %175 : f32
    vector.print %true_36 : i1
    vector.print %201 : i32
    vector.print %cst_37 : f32
    vector.print %c1_i64 : i64
    vector.print %extracted : f32
    return
  }
}
