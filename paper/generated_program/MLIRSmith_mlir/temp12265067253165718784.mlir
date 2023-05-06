module {
  func.func @func1(%arg0: memref<5x12x9xi32>, %arg1: vector<12xi64>, %arg2: f16) {
    %cst = arith.constant 1.48165606E+9 : f32
    %c11230_i16 = arith.constant 11230 : i16
    %cst_0 = arith.constant 1.92137126E+9 : f32
    %c1776638744_i64 = arith.constant 1776638744 : i64
    %true = arith.constant true
    %c630031197_i64 = arith.constant 630031197 : i64
    %c-31995_i16 = arith.constant -31995 : i16
    %c1187419239_i64 = arith.constant 1187419239 : i64
    %c1688055617_i64 = arith.constant 1688055617 : i64
    %c637244042_i64 = arith.constant 637244042 : i64
    %false = arith.constant false
    %c175706005_i64 = arith.constant 175706005 : i64
    %true_1 = arith.constant true
    %c1152786613_i32 = arith.constant 1152786613 : i32
    %cst_2 = arith.constant 5.801600e+04 : f16
    %c298900548_i64 = arith.constant 298900548 : i64
    %0 = tensor.empty() : tensor<5x5x5xi16>
    %1 = tensor.empty() : tensor<5x5x5xf32>
    %2 = tensor.empty() : tensor<10xi64>
    %3 = tensor.empty() : tensor<10xi32>
    %4 = tensor.empty() : tensor<10xf16>
    %5 = tensor.empty() : tensor<5x5x5xi16>
    %6 = tensor.empty() : tensor<5x12x9xi64>
    %7 = tensor.empty() : tensor<5x5x5xi16>
    %8 = tensor.empty() : tensor<5x5x5xi1>
    %9 = tensor.empty() : tensor<5x5x5xi1>
    %10 = tensor.empty() : tensor<10xi1>
    %11 = tensor.empty() : tensor<10xi1>
    %12 = tensor.empty() : tensor<5x12x9xf16>
    %13 = tensor.empty() : tensor<5x12x9xi16>
    %14 = tensor.empty() : tensor<10xi16>
    %15 = tensor.empty() : tensor<5x12x9xi64>
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
    %alloc = memref.alloc() : memref<5x5x5xf32>
    %alloc_3 = memref.alloc() : memref<5x12x9xi32>
    %alloc_4 = memref.alloc() : memref<12xf32>
    %alloc_5 = memref.alloc() : memref<5x12x9xf32>
    %alloc_6 = memref.alloc() : memref<12xi16>
    %alloc_7 = memref.alloc() : memref<5x12x9xi64>
    %alloc_8 = memref.alloc() : memref<12xi64>
    %alloc_9 = memref.alloc() : memref<5x12x9xf32>
    %alloc_10 = memref.alloc() : memref<5x12x9xi1>
    %alloc_11 = memref.alloc() : memref<12xf32>
    %alloc_12 = memref.alloc() : memref<5x12x9xf16>
    %alloc_13 = memref.alloc() : memref<5x5x5xf16>
    %alloc_14 = memref.alloc() : memref<10xi64>
    %alloc_15 = memref.alloc() : memref<5x5x5xf32>
    %alloc_16 = memref.alloc() : memref<12xi1>
    %alloc_17 = memref.alloc() : memref<5x12x9xi16>
    %16 = tensor.empty() : tensor<5x5x5xf32>
    %17 = linalg.copy ins(%1 : tensor<5x5x5xf32>) outs(%16 : tensor<5x5x5xf32>) -> tensor<5x5x5xf32>
    %alloc_18 = memref.alloc() : memref<9x5x12xf16>
    linalg.transpose ins(%alloc_12 : memref<5x12x9xf16>) outs(%alloc_18 : memref<9x5x12xf16>) permutation = [2, 0, 1] 
    %alloc_19 = memref.alloc() : memref<9xi16>
    linalg.reduce ins(%13 : tensor<5x12x9xi16>) outs(%alloc_19 : memref<9xi16>) dimensions = [0, 1] 
      (%in: i16, %init: i16) {
        %268 = math.roundeven %cst : f32
        %269 = index.sub %c11, %c0
        %270 = arith.remf %cst_2, %cst_2 : f16
        %271 = memref.atomic_rmw muli %c175706005_i64, %alloc_8[%c10] : (i64, memref<12xi64>) -> i64
        %272 = arith.addf %cst_0, %cst : f32
        %collapsed_48 = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<5x12x9xi16> into tensor<60x9xi16>
        %273 = math.ceil %12 : tensor<5x12x9xf16>
        %274 = arith.mulf %cst, %cst_0 : f32
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %18 = scf.parallel (%arg3, %arg4) = (%c15, %c6) to (%c4, %c15) step (%c2, %c6) init (%c630031197_i64) -> i64 {
      %268 = math.fma %cst_2, %cst_2, %cst_2 : f16
      %269 = memref.load %alloc_15[%c2, %c0, %c1] : memref<5x5x5xf32>
      memref.copy %alloc_5, %alloc_9 : memref<5x12x9xf32> to memref<5x12x9xf32>
      %270 = math.roundeven %4 : tensor<10xf16>
      %271 = vector.broadcast %cst : f32 to vector<9xf32>
      %272 = vector.flat_transpose %271 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
      %273 = index.ceildivs %arg3, %c2
      %274 = arith.maxsi %c637244042_i64, %c298900548_i64 : i64
      bufferization.dealloc_tensor %15 : tensor<5x12x9xi64>
      %275 = arith.maxui %c11230_i16, %c11230_i16 : i16
      %276 = vector.extract_strided_slice %271 {offsets = [5], sizes = [4], strides = [1]} : vector<9xf32> to vector<4xf32>
      %277 = math.round %1 : tensor<5x5x5xf32>
      %278 = arith.remf %cst_2, %cst_2 : f16
      %cst_48 = arith.constant 8.180000e+03 : f16
      %279 = math.log10 %12 : tensor<5x12x9xf16>
      %280 = vector.multi_reduction <mul>, %272, %272 [] : vector<9xf32> to vector<9xf32>
      %281 = math.exp2 %1 : tensor<5x5x5xf32>
      %c0_i64 = arith.constant 0 : i64
      scf.reduce(%c0_i64)  : i64 {
      ^bb0(%arg5: i64, %arg6: i64):
        %282 = arith.remui %c1776638744_i64, %c0_i64 : i64
        %283 = vector.transpose %272, [0] : vector<9xf32> to vector<9xf32>
        %284 = arith.cmpi sle, %arg5, %arg5 : i64
        %285 = vector.broadcast %true_1 : i1 to vector<i1>
        %286 = vector.transfer_write %285, %10[%c7] : vector<i1>, tensor<10xi1>
        %287 = math.log10 %1 : tensor<5x5x5xf32>
        %288 = vector.broadcast %cst_0 : f32 to vector<10xf32>
        %289 = index.ceildivu %c3, %c2
        %290 = arith.maxsi %c-31995_i16, %c11230_i16 : i16
        %c0_i64_49 = arith.constant 0 : i64
        scf.reduce.return %c0_i64_49 : i64
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_7[%c10, %c8, %c10] : memref<5x12x9xi64>, vector<9xi64>
    affine.vector_store %19, %alloc_14[%c12] : memref<10xi64>, vector<9xi64>
    %alloc_20 = memref.alloc() : memref<12xi64>
    %20 = tensor.empty() : tensor<i64>
    %21 = linalg.dot ins(%alloc_8, %alloc_20 : memref<12xi64>, memref<12xi64>) outs(%20 : tensor<i64>) -> tensor<i64>
    %22 = vector.broadcast %c637244042_i64 : i64 to vector<9x9xi64>
    %23 = vector.outerproduct %19, %19, %22 {kind = #vector.kind<add>} : vector<9xi64>, vector<9xi64>
    %24 = index.maxs %c2, %c13
    %25 = tensor.empty() : tensor<5x5x5xf16>
    %26 = index.ceildivu %c7, %c15
    %27 = arith.mulf %cst, %cst_0 : f32
    %28 = arith.divsi %c-31995_i16, %c-31995_i16 : i16
    %29 = vector.broadcast %c1688055617_i64 : i64 to vector<9x9xi64>
    %30 = vector.outerproduct %19, %19, %29 {kind = #vector.kind<or>} : vector<9xi64>, vector<9xi64>
    %31 = arith.minui %c630031197_i64, %c1187419239_i64 : i64
    %32 = index.floordivs %c15, %c12
    %33 = memref.atomic_rmw ori %c637244042_i64, %alloc_8[%c9] : (i64, memref<12xi64>) -> i64
    %34 = vector.load %alloc_15[%c3, %c1, %c4] : memref<5x5x5xf32>, vector<10xf32>
    %35 = index.floordivs %c1, %c10
    %36 = index.add %c14, %c2
    %37 = index.ceildivu %c11, %35
    %38 = math.exp2 %cst_0 : f32
    %39 = vector.multi_reduction <minsi>, %19, %19 [] : vector<9xi64> to vector<9xi64>
    %40 = arith.minui %c637244042_i64, %c175706005_i64 : i64
    %41 = math.sqrt %25 : tensor<5x5x5xf16>
    %42 = arith.divsi %c637244042_i64, %c630031197_i64 : i64
    %43 = vector.reduction <add>, %34 : vector<10xf32> into f32
    %44 = affine.min affine_map<(d0, d1, d2) -> ((d2 floordiv 64) mod 64, d2 floordiv 64, d2 - 16, (d2 floordiv 64) mod 64)>(%c3, %26, %35)
    %45 = vector.broadcast %c3 : index to vector<12xindex>
    %46 = vector.broadcast %true_1 : i1 to vector<12xi1>
    %47 = vector.broadcast %c-31995_i16 : i16 to vector<12xi16>
    vector.scatter %alloc_19[%c5] [%45], %46, %47 : memref<9xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
    %48 = math.atan2 %1, %16 : tensor<5x5x5xf32>
    %alloc_21 = memref.alloc() : memref<5x12x9xi16>
    memref.copy %alloc_17, %alloc_21 : memref<5x12x9xi16> to memref<5x12x9xi16>
    %49 = arith.remf %cst_0, %cst_0 : f32
    %50 = math.atan %17 : tensor<5x5x5xf32>
    %extracted = tensor.extract %16[%c4, %c1, %c2] : tensor<5x5x5xf32>
    %51 = math.log10 %25 : tensor<5x5x5xf16>
    %52 = scf.while (%arg3 = %alloc_14) : (memref<10xi64>) -> memref<10xi64> {
      %268 = arith.minui %true_1, %false : i1
      %expanded_48 = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<5x12x9xi64> into tensor<5x12x9x1xi64>
      %269 = index.divs %c0, %c6
      affine.store %c-31995_i16, %alloc_17[%c6, %c11, %c6] : memref<5x12x9xi16>
      %270 = arith.minui %c1152786613_i32, %c1152786613_i32 : i32
      %271 = arith.shli %c11230_i16, %c11230_i16 : i16
      %272 = math.roundeven %1 : tensor<5x5x5xf32>
      %273 = math.tanh %4 : tensor<10xf16>
      scf.condition(%true) %alloc_14 : memref<10xi64>
    } do {
    ^bb0(%arg3: memref<10xi64>):
      %268 = arith.addf %cst_2, %cst_2 : f16
      %cast_48 = tensor.cast %20 : tensor<i64> to tensor<i64>
      %269 = arith.remui %true_1, %true : i1
      %270 = arith.remui %c11230_i16, %c11230_i16 : i16
      %271 = index.divs %c9, %35
      %272 = tensor.empty() : tensor<5x12x9xf16>
      %273 = arith.shli %c-31995_i16, %c-31995_i16 : i16
      %274 = arith.muli %c11230_i16, %c-31995_i16 : i16
      %275 = memref.realloc %alloc_19 : memref<9xi16> to memref<9xi16>
      %rank_49 = tensor.rank %9 : tensor<5x5x5xi1>
      %276 = vector.load %alloc_10[%c4, %c2, %c1] : memref<5x12x9xi1>, vector<10xi1>
      %277 = arith.remf %cst_2, %cst_2 : f16
      %extracted_50 = tensor.extract %8[%c4, %c1, %c1] : tensor<5x5x5xi1>
      %278 = arith.remf %cst_0, %extracted : f32
      %alloc_51 = memref.alloc() : memref<10x9xf16>
      %279 = tensor.empty() : tensor<9x5xf16>
      %280 = tensor.empty() : tensor<10x5xf16>
      %281 = linalg.matmul ins(%alloc_51, %279 : memref<10x9xf16>, tensor<9x5xf16>) outs(%280 : tensor<10x5xf16>) -> tensor<10x5xf16>
      %282 = vector.multi_reduction <maxf>, %34, %extracted [0] : vector<10xf32> to f32
      scf.yield %arg3 : memref<10xi64>
    }
    %alloc_22 = memref.alloc() : memref<10xi16>
    %53 = vector.broadcast %c11230_i16 : i16 to vector<5x12x9xi16>
    %54 = vector.broadcast %true : i1 to vector<5x12x9xi1>
    %55 = vector.broadcast %c1152786613_i32 : i32 to vector<5x12x9xi32>
    %56 = vector.gather %alloc_22[%c10] [%55], %54, %53 : memref<10xi16>, vector<5x12x9xi32>, vector<5x12x9xi1>, vector<5x12x9xi16> into vector<5x12x9xi16>
    %57 = index.maxu %c8, %c12
    %58 = tensor.empty() : tensor<5x5x5xi16>
    %59 = arith.minsi %c175706005_i64, %c1688055617_i64 : i64
    %60 = math.exp2 %12 : tensor<5x12x9xf16>
    %61 = arith.remsi %c637244042_i64, %c1776638744_i64 : i64
    %62 = affine.load %alloc_22[%c5] : memref<10xi16>
    %63 = math.exp %cst_2 : f16
    %64 = index.floordivs %37, %c3
    %65 = vector.broadcast %c11230_i16 : i16 to vector<5xi16>
    %66 = vector.multi_reduction <maxsi>, %56, %65 [1, 2] : vector<5x12x9xi16> to vector<5xi16>
    %67 = scf.execute_region -> f32 {
      %268 = arith.remf %cst, %cst : f32
      %269 = arith.addi %true_1, %false : i1
      %270 = arith.floordivsi %c637244042_i64, %c298900548_i64 : i64
      %271 = math.atan %cst : f32
      %272 = math.absi %14 : tensor<10xi16>
      %generated = tensor.generate %c12 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %cst_49 = arith.constant 4.790400e+04 : f16
        %281 = vector.splat %cst_2 : vector<5x5x5xf16>
        %282 = math.rsqrt %cst : f32
        %283 = arith.cmpf true, %cst, %extracted : f32
        tensor.yield %c-31995_i16 : i16
      } : tensor<?x5x5xi16>
      %extracted_48 = tensor.extract %11[%c7] : tensor<10xi1>
      %273 = index.divs %26, %64
      %274 = index.add %c14, %35
      %275 = arith.muli %extracted_48, %true : i1
      %276 = bufferization.to_memref %4 : memref<10xf16>
      scf.if %false {
        %281 = index.ceildivu %c12, %c1
        %282 = vector.broadcast %extracted : f32 to vector<5x5x5xf32>
        %283 = vector.fma %282, %282, %282 : vector<5x5x5xf32>
        %284 = arith.remf %cst, %cst : f32
        %alloc_49 = memref.alloc() : memref<9x5xi16>
        %285 = tensor.empty() : tensor<5x9xi16>
        %286 = tensor.empty() : tensor<9x9xi16>
        %287 = linalg.matmul ins(%alloc_49, %285 : memref<9x5xi16>, tensor<5x9xi16>) outs(%286 : tensor<9x9xi16>) -> tensor<9x9xi16>
        %false_50 = index.bool.constant false
        %alloca_51 = memref.alloca() : memref<5x5x5xi16>
        %288 = math.tan %1 : tensor<5x5x5xf32>
        %289 = affine.min affine_map<(d0) -> (d0 ceildiv 16 + d0 + 5, -d0 + d0 ceildiv 16 - (d0 + 5))>(%36)
      } else {
        %281 = index.ceildivu %c0, %24
        %282 = math.atan2 %cst_0, %cst : f32
        %283 = math.atan %17 : tensor<5x5x5xf32>
        %284 = vector.broadcast %c11230_i16 : i16 to vector<10xi16>
        %285 = vector.transfer_write %284, %58[%c12, %c11, %c12] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<10xi16>, tensor<5x5x5xi16>
        %286 = memref.realloc %alloc_20 : memref<12xi64> to memref<9xi64>
        %287 = math.ceil %12 : tensor<5x12x9xf16>
        %288 = math.copysign %cst, %cst_0 : f32
        %289 = index.maxu %36, %c1
      }
      %277 = arith.cmpi ule, %c1688055617_i64, %c298900548_i64 : i64
      %278 = arith.remf %cst_0, %extracted : f32
      %279 = arith.remf %cst, %extracted : f32
      %280 = affine.max affine_map<(d0, d1) -> (d0)>(%c7, %c6)
      scf.yield %extracted : f32
    }
    %68 = arith.ori %c298900548_i64, %c298900548_i64 : i64
    %69 = math.ctpop %5 : tensor<5x5x5xi16>
    %70 = index.divs %36, %c1
    bufferization.dealloc_tensor %14 : tensor<10xi16>
    %71 = scf.index_switch %c1 -> memref<12xi64> 
    case 1 {
      %268 = arith.xori %62, %c11230_i16 : i16
      %269 = vector.reduction <or>, %65 : vector<5xi16> into i16
      %270 = vector.extract_strided_slice %56 {offsets = [1], sizes = [4], strides = [1]} : vector<5x12x9xi16> to vector<4x12x9xi16>
      %271 = arith.remsi %62, %c-31995_i16 : i16
      %272 = arith.remf %cst_2, %cst_2 : f16
      %273 = index.add %35, %c7
      %274 = vector.load %alloc_5[%c1, %c10, %c5] : memref<5x12x9xf32>, vector<12xf32>
      %collapsed_48 = tensor.collapse_shape %9 [[0, 1], [2]] : tensor<5x5x5xi1> into tensor<25x5xi1>
      %275 = arith.remf %extracted, %cst_0 : f32
      %276 = bufferization.to_tensor %alloc_14 : memref<10xi64>
      %277 = vector.load %alloc_11[%c6] : memref<12xf32>, vector<10xf32>
      %278 = math.exp %25 : tensor<5x5x5xf16>
      %279 = math.roundeven %25 : tensor<5x5x5xf16>
      %280 = arith.ori %c1688055617_i64, %c1187419239_i64 : i64
      %281 = math.absf %extracted : f32
      %282 = vector.broadcast %c637244042_i64 : i64 to vector<12xi64>
      %283 = vector.broadcast %false : i1 to vector<12xi1>
      %284 = vector.broadcast %c1152786613_i32 : i32 to vector<12xi32>
      %285 = vector.gather %6[%35, %c5, %c9] [%284], %283, %282 : tensor<5x12x9xi64>, vector<12xi32>, vector<12xi1>, vector<12xi64> into vector<12xi64>
      scf.yield %alloc_20 : memref<12xi64>
    }
    case 2 {
      %268 = affine.max affine_map<(d0) -> (-d0, d0 * 2, d0 * 2)>(%c6)
      %269 = math.log10 %4 : tensor<10xf16>
      %270 = math.copysign %1, %1 : tensor<5x5x5xf32>
      %271 = memref.realloc %alloc_14 : memref<10xi64> to memref<5xi64>
      %272 = vector.extract %65[1] : vector<5xi16>
      %false_48 = index.bool.constant false
      %273 = arith.xori %c630031197_i64, %c630031197_i64 : i64
      %274 = index.add %36, %c5
      %275 = math.roundeven %1 : tensor<5x5x5xf32>
      %276 = vector.transpose %56, [1, 2, 0] : vector<5x12x9xi16> to vector<12x9x5xi16>
      %277 = bufferization.to_memref %1 : memref<5x5x5xf32>
      bufferization.dealloc_tensor %7 : tensor<5x5x5xi16>
      %278 = arith.divsi %false_48, %false_48 : i1
      scf.if %false_48 {
        %281 = arith.maxf %cst_0, %cst_0 : f32
        bufferization.dealloc_tensor %10 : tensor<10xi1>
        %282 = math.round %12 : tensor<5x12x9xf16>
        %283 = math.floor %17 : tensor<5x5x5xf32>
        %collapsed_49 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<5x5x5xf32> into tensor<25x5xf32>
        %284 = arith.muli %false_48, %false : i1
        %285 = arith.shrsi %c1187419239_i64, %c637244042_i64 : i64
        bufferization.dealloc_tensor %10 : tensor<10xi1>
      }
      %279 = math.powf %25, %25 : tensor<5x5x5xf16>
      %280 = math.round %25 : tensor<5x5x5xf16>
      scf.yield %alloc_8 : memref<12xi64>
    }
    case 3 {
      %from_elements_48 = tensor.from_elements %c11230_i16, %62, %62, %c11230_i16, %c11230_i16, %62, %c-31995_i16, %62, %62, %62, %c11230_i16, %62, %c-31995_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %62, %c-31995_i16, %c-31995_i16, %62, %c-31995_i16, %62, %c-31995_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %62, %62, %62, %62, %62, %c11230_i16, %c-31995_i16, %62, %c-31995_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %62, %c-31995_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %c-31995_i16, %62, %62, %c11230_i16, %62, %c11230_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %62, %62, %c11230_i16, %c-31995_i16, %62, %62, %c-31995_i16, %c11230_i16, %62, %62, %62, %c-31995_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %62, %62, %62, %c-31995_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %62, %c11230_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %62, %62, %62, %c11230_i16, %c11230_i16, %62, %c11230_i16, %c11230_i16, %62, %c11230_i16, %c-31995_i16, %62, %c11230_i16, %c-31995_i16, %62, %c-31995_i16, %c11230_i16, %c11230_i16, %62, %c11230_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %c-31995_i16, %62, %62, %62, %62, %62, %c-31995_i16, %62, %62, %c11230_i16, %c11230_i16, %62, %c11230_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %c11230_i16, %62, %c11230_i16, %c11230_i16, %62, %c-31995_i16, %c11230_i16, %62, %c11230_i16, %62, %62, %c11230_i16, %62, %c-31995_i16, %c-31995_i16, %c11230_i16, %62, %c11230_i16, %c-31995_i16, %62, %62, %62, %c11230_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %62, %c-31995_i16, %62, %62, %62, %c-31995_i16, %62, %62, %c11230_i16, %62, %c-31995_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %62, %c-31995_i16, %c11230_i16, %62, %c11230_i16, %c-31995_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %62, %62, %c-31995_i16, %62, %c-31995_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %62, %c11230_i16, %62, %c11230_i16, %62, %c11230_i16, %c-31995_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %62, %62, %c-31995_i16, %c11230_i16, %62, %c-31995_i16, %62, %62, %c11230_i16, %c-31995_i16, %62, %c11230_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %c-31995_i16, %62, %62, %62, %c11230_i16, %62, %c-31995_i16, %62, %c11230_i16, %62, %c-31995_i16, %62, %c-31995_i16, %c11230_i16, %c11230_i16, %c11230_i16, %c11230_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %62, %62, %c11230_i16, %c11230_i16, %62, %c11230_i16, %c11230_i16, %62, %c-31995_i16, %62, %c-31995_i16, %c-31995_i16, %c-31995_i16, %62, %62, %c-31995_i16, %c11230_i16, %c11230_i16, %62, %c11230_i16, %62, %c-31995_i16, %62, %62, %c-31995_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %62, %c-31995_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %62, %62, %c-31995_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %62, %62, %62, %c11230_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %62, %c-31995_i16, %62, %c11230_i16, %c11230_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %62, %c11230_i16, %c-31995_i16, %62, %c-31995_i16, %c11230_i16, %62, %c11230_i16, %c11230_i16, %c11230_i16, %62, %62, %62, %62, %c-31995_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %62, %c-31995_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %c11230_i16, %c11230_i16, %62, %62, %62, %62, %c-31995_i16, %c11230_i16, %62, %c11230_i16, %62, %c-31995_i16, %62, %c11230_i16, %c11230_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %c11230_i16, %62, %62, %c-31995_i16, %c-31995_i16, %62, %c11230_i16, %62, %62, %62, %c-31995_i16, %c11230_i16, %62, %c11230_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %c11230_i16, %c-31995_i16, %62, %62, %c11230_i16, %c-31995_i16, %c-31995_i16, %c-31995_i16, %62, %c-31995_i16, %62, %62, %62, %c11230_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %62, %c-31995_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %62, %c11230_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %c11230_i16, %c11230_i16, %62, %c-31995_i16, %c11230_i16, %62, %62, %c-31995_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %62, %62, %62, %c11230_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %62, %c-31995_i16, %c-31995_i16, %62, %c-31995_i16, %62, %c11230_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %62, %c-31995_i16, %c11230_i16, %c11230_i16, %c-31995_i16, %62, %c11230_i16, %62, %c-31995_i16, %62, %c-31995_i16, %62, %c11230_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %c-31995_i16, %c-31995_i16, %62, %c11230_i16, %62, %c-31995_i16, %62, %c-31995_i16, %c-31995_i16, %c11230_i16, %62, %c11230_i16, %62, %c-31995_i16, %62, %c-31995_i16, %62, %c11230_i16, %c11230_i16, %c-31995_i16, %62, %c-31995_i16, %62, %c-31995_i16, %c11230_i16, %62, %c11230_i16, %62, %62, %62, %c11230_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %62, %c11230_i16, %62, %c11230_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %62, %c11230_i16, %c-31995_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c-31995_i16, %c-31995_i16, %c-31995_i16, %c-31995_i16, %62, %62, %62, %c11230_i16, %c-31995_i16, %62, %c-31995_i16, %c11230_i16, %c-31995_i16, %c11230_i16, %c11230_i16, %62, %c11230_i16, %62, %c-31995_i16, %c-31995_i16, %62, %62, %62, %62, %c11230_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %62, %c11230_i16, %c-31995_i16, %c11230_i16, %c-31995_i16, %c11230_i16 : tensor<5x12x9xi16>
      %268 = memref.realloc %alloc_6 : memref<12xi16> to memref<10xi16>
      %269 = math.ctpop %c630031197_i64 : i64
      %270 = index.maxu %c1, %32
      %271 = arith.addf %cst_0, %67 : f32
      %272 = vector.broadcast %false : i1 to vector<5x12x9xi1>
      %273 = arith.divf %cst_2, %cst_2 : f16
      %274 = vector.broadcast %cst_0 : f32 to vector<5x12x9xf32>
      %275 = vector.fma %274, %274, %274 : vector<5x12x9xf32>
      %276 = arith.maxf %cst_0, %cst_0 : f32
      %277 = math.copysign %4, %4 : tensor<10xf16>
      %278 = vector.shuffle %19, %19 [0, 1, 3, 4, 5, 7, 13, 16] : vector<9xi64>, vector<9xi64>
      %279 = index.sizeof
      %280 = math.sqrt %16 : tensor<5x5x5xf32>
      %281 = math.exp2 %cst : f32
      %282 = arith.remf %cst_0, %67 : f32
      %283 = tensor.empty() : tensor<10xf16>
      scf.yield %alloc_20 : memref<12xi64>
    }
    case 4 {
      %extracted_48 = tensor.extract %3[%c2] : tensor<10xi32>
      %268 = tensor.empty() : tensor<12x9xi16>
      %alloc_49 = memref.alloc() : memref<9x12xi16>
      %269 = tensor.empty() : tensor<12x12xi16>
      %270 = linalg.matmul ins(%268, %alloc_49 : tensor<12x9xi16>, memref<9x12xi16>) outs(%269 : tensor<12x12xi16>) -> tensor<12x12xi16>
      affine.store %false, %alloc_16[%c9] : memref<12xi1>
      %271 = vector.broadcast %c-31995_i16 : i16 to vector<12x9x12x9xi16>
      %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %53, %56, %271 : vector<5x12x9xi16>, vector<5x12x9xi16> into vector<12x9x12x9xi16>
      %273 = arith.cmpf ule, %cst_2, %cst_2 : f16
      %274 = vector.broadcast %extracted_48 : i32 to vector<12x9x12x9xi32>
      %275 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %55, %55, %274 : vector<5x12x9xi32>, vector<5x12x9xi32> into vector<12x9x12x9xi32>
      %276 = arith.divf %67, %cst_0 : f32
      %alloc_50 = memref.alloc() : memref<12xf32>
      %277 = arith.remf %extracted, %cst : f32
      %278 = index.castu %c1776638744_i64 : i64 to index
      %279 = index.ceildivu %26, %57
      %280 = arith.floordivsi %false, %true_1 : i1
      %281 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, d0 + (d2 * 8) floordiv 16, (d0 + (d2 * 8) floordiv 16) * 128)>(%37, %c6, %279, %70)
      memref.store %62, %alloc_19[%c0] : memref<9xi16>
      %282 = bufferization.to_tensor %alloc_11 : memref<12xf32>
      %283 = memref.realloc %alloc_11 : memref<12xf32> to memref<9xf32>
      scf.yield %alloc_8 : memref<12xi64>
    }
    default {
      %268 = arith.minf %cst_0, %cst : f32
      %269 = scf.if %false -> (i1) {
        %288 = math.tanh %17 : tensor<5x5x5xf32>
        %289 = math.atan2 %4, %4 : tensor<10xf16>
        %expanded_48 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<5x5x5xi1> into tensor<5x5x5x1xi1>
        %290 = vector.shuffle %55, %55 [0, 2, 3, 4, 6, 7] : vector<5x12x9xi32>, vector<5x12x9xi32>
        %291 = arith.remf %67, %cst : f32
        %292 = bufferization.clone %alloc_22 : memref<10xi16> to memref<10xi16>
        %293 = math.ctpop %13 : tensor<5x12x9xi16>
        %alloc_49 = memref.alloc() : memref<10xf16>
        memref.tensor_store %4, %alloc_49 : memref<10xf16>
        scf.yield %true_1 : i1
      } else {
        %288 = affine.max affine_map<(d0, d1, d2, d3) -> (-d3, d3 - d1 * 32 + 1)>(%c13, %c3, %26, %c1)
        %289 = math.tan %4 : tensor<10xf16>
        %290 = bufferization.to_tensor %alloc_22 : memref<10xi16>
        %291 = index.divu %c1, %64
        %292 = math.atan %16 : tensor<5x5x5xf32>
        %293 = math.expm1 %extracted : f32
        %294 = vector.load %alloc_12[%c3, %c9, %c0] : memref<5x12x9xf16>, vector<12xf16>
        %extracted_48 = tensor.extract %9[%c4, %c1, %c0] : tensor<5x5x5xi1>
        scf.yield %false : i1
      }
      %270 = vector.extract %54[1] : vector<5x12x9xi1>
      %271 = math.log10 %extracted : f32
      %272 = math.roundeven %cst_2 : f16
      %273 = arith.divsi %c298900548_i64, %c1688055617_i64 : i64
      %274 = vector.broadcast %c1152786613_i32 : i32 to vector<5x9xi32>
      %dest, %accumulated_value = vector.scan <minui>, %55, %274 {inclusive = true, reduction_dim = 1 : i64} : vector<5x12x9xi32>, vector<5x9xi32>
      %275 = arith.xori %c1187419239_i64, %c298900548_i64 : i64
      %276 = arith.addf %extracted, %67 : f32
      %277 = arith.maxsi %true, %false : i1
      %278 = arith.mulf %cst_2, %cst_2 : f16
      %279 = arith.remui %269, %269 : i1
      %280 = vector.broadcast %c6 : index to vector<5xindex>
      %281 = vector.broadcast %true : i1 to vector<5xi1>
      %282 = vector.broadcast %cst : f32 to vector<5xf32>
      vector.scatter %alloc_15[%c1, %c3, %c2] [%280], %281, %282 : memref<5x5x5xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
      %283 = vector.broadcast %37 : index to vector<12xindex>
      %284 = vector.broadcast %false : i1 to vector<12xi1>
      %285 = vector.broadcast %c1688055617_i64 : i64 to vector<12xi64>
      vector.scatter %alloc_7[%c4, %c5, %c0] [%283], %284, %285 : memref<5x12x9xi64>, vector<12xindex>, vector<12xi1>, vector<12xi64>
      %286 = math.expm1 %cst : f32
      %287 = memref.atomic_rmw addf %cst, %alloc[%c0, %c3, %c1] : (f32, memref<5x5x5xf32>) -> f32
      scf.yield %alloc_8 : memref<12xi64>
    }
    %72 = math.sqrt %67 : f32
    %73 = vector.multi_reduction <xor>, %19, %19 [] : vector<9xi64> to vector<9xi64>
    %74 = index.castu %false : i1 to index
    %75 = arith.ori %62, %c11230_i16 : i16
    %76 = arith.remf %cst_2, %cst_2 : f16
    %77 = math.exp %cst : f32
    %78 = math.log10 %4 : tensor<10xf16>
    %79 = arith.floordivsi %true_1, %true : i1
    %80 = index.mul %c0, %c14
    %81 = index.ceildivu %c15, %c9
    memref.tensor_store %6, %alloc_7 : memref<5x12x9xi64>
    %82 = math.absi %14 : tensor<10xi16>
    %83 = vector.broadcast %c1776638744_i64 : i64 to vector<5x12x9xi64>
    %84 = vector.broadcast %c1152786613_i32 : i32 to vector<12x9x12x9xi32>
    %85 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %55, %55, %84 : vector<5x12x9xi32>, vector<5x12x9xi32> into vector<12x9x12x9xi32>
    %86 = arith.ori %c298900548_i64, %c1187419239_i64 : i64
    %87 = math.fma %cst_2, %cst_2, %cst_2 : f16
    %88 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c2, %80, %c13, %26)
    bufferization.dealloc_tensor %25 : tensor<5x5x5xf16>
    %89 = arith.divsi %false, %true_1 : i1
    %90 = math.absi %3 : tensor<10xi32>
    %false_23 = index.bool.constant false
    %91 = vector.broadcast %80 : index to vector<9xindex>
    %92 = vector.broadcast %false : i1 to vector<9xi1>
    %93 = vector.broadcast %c11230_i16 : i16 to vector<9xi16>
    vector.scatter %alloc_17[%c1, %c10, %c6] [%91], %92, %93 : memref<5x12x9xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
    %94 = math.ctpop %true_1 : i1
    %95 = index.ceildivs %c13, %24
    %collapsed = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<5x5x5xi16> into tensor<25x5xi16>
    %96 = memref.atomic_rmw maxu %62, %alloc_19[%c2] : (i16, memref<9xi16>) -> i16
    %97 = index.maxu %80, %70
    %alloca = memref.alloca() : memref<5x5x5xi32>
    %98 = math.sqrt %4 : tensor<10xf16>
    %99 = arith.remui %c175706005_i64, %c630031197_i64 : i64
    memref.store %extracted, %alloc[%c3, %c0, %c2] : memref<5x5x5xf32>
    %100 = vector.flat_transpose %34 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
    %101 = index.divu %c1, %44
    %102 = vector.broadcast %c637244042_i64 : i64 to vector<10xi64>
    %103 = arith.shli %false, %true_1 : i1
    %alloc_24 = memref.alloc() : memref<9x5x12xf16>
    memref.copy %alloc_18, %alloc_24 : memref<9x5x12xf16> to memref<9x5x12xf16>
    %104 = arith.xori %c637244042_i64, %c1776638744_i64 : i64
    %from_elements = tensor.from_elements %false, %false_23, %true_1, %true_1, %true_1, %true, %true, %false_23, %false_23, %true_1 : tensor<10xi1>
    %true_25 = index.bool.constant true
    %105 = memref.atomic_rmw assign %cst, %alloc_15[%c3, %c1, %c0] : (f32, memref<5x5x5xf32>) -> f32
    %106 = arith.minsi %c1688055617_i64, %c298900548_i64 : i64
    %107 = index.sizeof
    %alloc_26 = memref.alloc() : memref<5x10xi16>
    %108 = tensor.empty() : tensor<25x10xi16>
    %109 = linalg.matmul ins(%collapsed, %alloc_26 : tensor<25x5xi16>, memref<5x10xi16>) outs(%108 : tensor<25x10xi16>) -> tensor<25x10xi16>
    %expanded = tensor.expand_shape %25 [[0], [1], [2, 3]] : tensor<5x5x5xf16> into tensor<5x5x5x1xf16>
    %110 = affine.apply affine_map<(d0) -> (d0 * -2)>(%88)
    %111 = affine.max affine_map<(d0, d1) -> (((d1 + 8) ceildiv 8) floordiv 8 - (d1 + 8))>(%c1, %26)
    scf.if %true {
      %268 = math.round %extracted : f32
      %269 = arith.remui %c11230_i16, %c-31995_i16 : i16
      %270 = math.atan %cst_0 : f32
      %271 = arith.maxui %c1688055617_i64, %c175706005_i64 : i64
      %272 = vector.insertelement %extracted, %34[%32 : index] : vector<10xf32>
      %273 = vector.broadcast %c14 : index to vector<12xindex>
      %274 = vector.broadcast %false_23 : i1 to vector<12xi1>
      %275 = vector.broadcast %cst : f32 to vector<12xf32>
      vector.scatter %alloc_11[%c10] [%273], %274, %275 : memref<12xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
      %276 = index.casts %57 : index to i32
      %277 = math.atan2 %12, %12 : tensor<5x12x9xf16>
    }
    %112 = vector.broadcast %107 : index to vector<5xindex>
    %113 = vector.broadcast %true : i1 to vector<5xi1>
    vector.scatter %alloc_19[%c6] [%112], %113, %65 : memref<9xi16>, vector<5xindex>, vector<5xi1>, vector<5xi16>
    %114 = arith.maxf %cst, %67 : f32
    %115 = arith.maxui %c1152786613_i32, %c1152786613_i32 : i32
    %116 = index.divs %c12, %c11
    %117 = vector.load %alloc_11[%c10] : memref<12xf32>, vector<5x12x9xf32>
    %true_27 = index.bool.constant true
    bufferization.dealloc_tensor %13 : tensor<5x12x9xi16>
    %collapsed_28 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<25x5xi16> into tensor<125xi16>
    %118 = index.sub %35, %74
    %119 = math.round %cst_0 : f32
    %120 = math.atan %4 : tensor<10xf16>
    %from_elements_29 = tensor.from_elements %c1152786613_i32, %c1152786613_i32, %c1152786613_i32, %c1152786613_i32, %c1152786613_i32, %c1152786613_i32, %c1152786613_i32, %c1152786613_i32, %c1152786613_i32, %c1152786613_i32 : tensor<10xi32>
    %splat = tensor.splat %cst_0 : tensor<10xf32>
    %121 = math.atan2 %67, %extracted : f32
    %122 = index.ceildivu %c12, %116
    %123 = index.castu %107 : index to i32
    %124 = tensor.empty() : tensor<5x12x9xf32>
    scf.if %true_1 {
      %268 = index.sub %c8, %111
      %269 = math.tan %cst_0 : f32
      %cst_48 = arith.constant 0x4E66FE21 : f32
      %270 = math.rsqrt %124 : tensor<5x12x9xf32>
      %271 = arith.divsi %c630031197_i64, %c1688055617_i64 : i64
      %272 = math.rsqrt %cst_0 : f32
      affine.store %true_25, %alloc_16[%c2] : memref<12xi1>
      %273 = math.fpowi %4, %3 : tensor<10xf16>, tensor<10xi32>
    }
    %125 = arith.maxsi %c175706005_i64, %c1776638744_i64 : i64
    %126 = vector.reduction <add>, %19 : vector<9xi64> into i64
    %127 = bufferization.to_tensor %alloc_22 : memref<10xi16>
    %128 = vector.broadcast %cst_0 : f32 to vector<12xf32>
    %129 = vector.fma %128, %128, %128 : vector<12xf32>
    %130 = arith.remui %true_1, %true_1 : i1
    %131 = math.atan %17 : tensor<5x5x5xf32>
    %132 = math.round %1 : tensor<5x5x5xf32>
    %133 = vector.broadcast %116 : index to vector<12xindex>
    %134 = vector.broadcast %false : i1 to vector<12xi1>
    %135 = vector.broadcast %cst_2 : f16 to vector<12xf16>
    vector.scatter %alloc_18[%c8, %c4, %c0] [%133], %134, %135 : memref<9x5x12xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
    bufferization.dealloc_tensor %58 : tensor<5x5x5xi16>
    %136 = arith.minf %cst_0, %cst_0 : f32
    %137 = index.mul %c10, %88
    %138 = memref.atomic_rmw muli %c-31995_i16, %alloc_22[%c1] : (i16, memref<10xi16>) -> i16
    %inserted = tensor.insert %c11230_i16 into %127[%c1] : tensor<10xi16>
    %139 = index.castu %c1 : index to i32
    %140 = arith.remf %cst, %67 : f32
    %141 = math.copysign %67, %67 : f32
    %142 = math.round %4 : tensor<10xf16>
    %143 = bufferization.to_tensor %alloc_13 : memref<5x5x5xf16>
    %extracted_30 = tensor.extract %13[%c1, %c8, %c1] : tensor<5x12x9xi16>
    %144 = memref.load %alloc_22[%c3] : memref<10xi16>
    %145 = math.absi %collapsed_28 : tensor<125xi16>
    %146 = arith.muli %c175706005_i64, %c1688055617_i64 : i64
    %alloc_31 = memref.alloc() : memref<5x5x5xf16>
    %147 = index.sizeof
    %rank = tensor.rank %25 : tensor<5x5x5xf16>
    %148 = math.log10 %12 : tensor<5x12x9xf16>
    %149 = math.expm1 %124 : tensor<5x12x9xf32>
    %150 = math.round %12 : tensor<5x12x9xf16>
    %151 = index.mul %24, %c3
    %152 = scf.execute_region -> i1 {
      %268 = arith.maxui %c-31995_i16, %c-31995_i16 : i16
      %269 = bufferization.to_memref %3 : memref<10xi32>
      %270 = vector.flat_transpose %65 {columns = 5 : i32, rows = 1 : i32} : vector<5xi16> -> vector<5xi16>
      %271 = math.log1p %1 : tensor<5x5x5xf32>
      %272 = arith.cmpi ule, %c1187419239_i64, %c1187419239_i64 : i64
      %273 = vector.broadcast %cst_2 : f16 to vector<12xf16>
      %274 = vector.broadcast %false_23 : i1 to vector<12xi1>
      %275 = vector.maskedload %alloc_18[%c4, %c3, %c9], %274, %273 : memref<9x5x12xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
      %276 = index.maxs %95, %36
      %277 = index.casts %c2 : index to i32
      %278 = arith.cmpi sgt, %true_25, %true_1 : i1
      %279 = math.copysign %67, %67 : f32
      %280 = vector.matrix_multiply %273, %273 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xf16>, vector<12xf16>) -> vector<1xf16>
      %281 = vector.load %alloc_7[%c3, %c11, %c2] : memref<5x12x9xi64>, vector<5x5x5xi64>
      %282 = vector.broadcast %c1152786613_i32 : i32 to vector<5x5x5xi32>
      %from_elements_48 = tensor.from_elements %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2 : tensor<5x5x5xf16>
      %283 = arith.minui %c630031197_i64, %c1776638744_i64 : i64
      %284 = vector.flat_transpose %102 {columns = 5 : i32, rows = 2 : i32} : vector<10xi64> -> vector<10xi64>
      scf.yield %false_23 : i1
    }
    %cast = tensor.cast %8 : tensor<5x5x5xi1> to tensor<?x?x?xi1>
    %153 = arith.mulf %67, %cst_0 : f32
    %154 = math.exp2 %1 : tensor<5x5x5xf32>
    %155 = arith.shli %false_23, %true_1 : i1
    %156 = arith.maxf %extracted, %extracted : f32
    %157 = vector.broadcast %95 : index to vector<12xindex>
    %158 = vector.broadcast %false : i1 to vector<12xi1>
    vector.scatter %alloc_11[%c6] [%157], %158, %129 : memref<12xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
    %159 = arith.maxsi %c298900548_i64, %c1688055617_i64 : i64
    %160 = vector.broadcast %c630031197_i64 : i64 to vector<10x10xi64>
    %161 = vector.outerproduct %102, %102, %160 {kind = #vector.kind<xor>} : vector<10xi64>, vector<10xi64>
    %162 = index.divs %74, %57
    %163 = index.add %88, %c4
    %164 = arith.minsi %c175706005_i64, %c1776638744_i64 : i64
    %165 = vector.broadcast %62 : i16 to vector<i16>
    vector.transfer_write %165, %alloc_6[%57] : vector<i16>, memref<12xi16>
    %166 = index.divs %80, %111
    %alloca_32 = memref.alloca() : memref<5x12x9xi16>
    %167 = affine.max affine_map<(d0, d1, d2) -> (-(d2 + 128), d2, d2 + 128)>(%101, %36, %111)
    %168 = math.ctpop %21 : tensor<i64>
    %169 = vector.broadcast %c637244042_i64 : i64 to vector<5x12xi64>
    %170 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %83, %19, %169 : vector<5x12x9xi64>, vector<9xi64> into vector<5x12xi64>
    %171 = arith.addf %extracted, %extracted : f32
    %172 = math.exp2 %4 : tensor<10xf16>
    %alloca_33 = memref.alloca() : memref<5x5x5xf32>
    scf.if %false {
      %alloc_48 = memref.alloc() : memref<10xi32>
      %268 = arith.xori %extracted_30, %c11230_i16 : i16
      %269 = arith.mulf %67, %cst : f32
      %270 = affine.if affine_set<(d0, d1, d2) : (-d1 == 0, (d1 * 2 - 64) ceildiv 64 == 0, (d1 * 2 - 64) ceildiv 64 >= 0, -d1 >= 0)>(%c9, %c3, %c2) -> i64 {
        %274 = math.tanh %25 : tensor<5x5x5xf16>
        %275 = index.sizeof
        bufferization.dealloc_tensor %6 : tensor<5x12x9xi64>
        %276 = math.log1p %cst_0 : f32
        %277 = arith.minf %cst_2, %cst_2 : f16
        %278 = math.floor %67 : f32
        %279 = memref.realloc %alloc_20 : memref<12xi64> to memref<10xi64>
        %280 = math.rsqrt %16 : tensor<5x5x5xf32>
        affine.yield %c175706005_i64 : i64
      } else {
        %274 = index.sub %c1, %122
        %275 = arith.xori %true_25, %false : i1
        %276 = memref.realloc %alloc_19 : memref<9xi16> to memref<5xi16>
        %277 = math.exp %67 : f32
        %extracted_50 = tensor.extract %124[%c4, %c6, %c6] : tensor<5x12x9xf32>
        %278 = arith.addf %extracted, %cst : f32
        %279 = arith.remui %extracted_30, %extracted_30 : i16
        %280 = vector.reduction <minf>, %129 : vector<12xf32> into f32
        affine.yield %c1776638744_i64 : i64
      }
      %from_elements_49 = tensor.from_elements %c637244042_i64, %c1776638744_i64, %c1688055617_i64, %c637244042_i64, %c1688055617_i64, %c630031197_i64, %c1187419239_i64, %c298900548_i64, %c1776638744_i64, %c1187419239_i64, %c1187419239_i64, %c298900548_i64, %c637244042_i64, %c630031197_i64, %c1688055617_i64, %c1776638744_i64, %c637244042_i64, %c298900548_i64, %c637244042_i64, %c1688055617_i64, %c637244042_i64, %c1688055617_i64, %c1187419239_i64, %c298900548_i64, %c630031197_i64, %c1776638744_i64, %c175706005_i64, %c175706005_i64, %c1688055617_i64, %c1187419239_i64, %c1776638744_i64, %c1187419239_i64, %c1776638744_i64, %c298900548_i64, %c1688055617_i64, %c1688055617_i64, %c1187419239_i64, %c1688055617_i64, %c637244042_i64, %c1776638744_i64, %c1776638744_i64, %c1187419239_i64, %c1187419239_i64, %c298900548_i64, %c1187419239_i64, %c630031197_i64, %c637244042_i64, %c1776638744_i64, %c637244042_i64, %c1688055617_i64, %c1688055617_i64, %c1187419239_i64, %c175706005_i64, %c1187419239_i64, %c637244042_i64, %c630031197_i64, %c298900548_i64, %c298900548_i64, %c637244042_i64, %c1688055617_i64, %c298900548_i64, %c175706005_i64, %c630031197_i64, %c630031197_i64, %c637244042_i64, %c637244042_i64, %c298900548_i64, %c1187419239_i64, %c637244042_i64, %c1688055617_i64, %c630031197_i64, %c175706005_i64, %c1776638744_i64, %c175706005_i64, %c1187419239_i64, %c1776638744_i64, %c1776638744_i64, %c637244042_i64, %c1776638744_i64, %c1688055617_i64, %c298900548_i64, %c298900548_i64, %c637244042_i64, %c175706005_i64, %c630031197_i64, %c175706005_i64, %c298900548_i64, %c637244042_i64, %c1187419239_i64, %c1776638744_i64, %c1688055617_i64, %c637244042_i64, %c1688055617_i64, %c1776638744_i64, %c630031197_i64, %c1187419239_i64, %c175706005_i64, %c630031197_i64, %c1688055617_i64, %c1688055617_i64, %c637244042_i64, %c1776638744_i64, %c298900548_i64, %c1688055617_i64, %c630031197_i64, %c175706005_i64, %c1776638744_i64, %c298900548_i64, %c1187419239_i64, %c630031197_i64, %c1776638744_i64, %c637244042_i64, %c1688055617_i64, %c1776638744_i64, %c1776638744_i64, %c1776638744_i64, %c298900548_i64, %c175706005_i64, %c630031197_i64, %c298900548_i64, %c175706005_i64, %c1187419239_i64, %c175706005_i64, %c1187419239_i64, %c630031197_i64 : tensor<5x5x5xi64>
      %271 = affine.if affine_set<(d0, d1, d2, d3) : (d1 == 0, d2 - d1 + 16 == 0, d0 * -16 >= 0, d0 == 0)>(%c5, %c4, %c5, %c15) -> memref<5x5x5xi64> {
        %splat_50 = tensor.splat %c298900548_i64 : tensor<12xi64>
        %274 = arith.cmpf ord, %extracted, %cst : f32
        %275 = arith.maxf %cst, %extracted : f32
        %276 = vector.extract %54[0, 0] : vector<5x12x9xi1>
        %alloca_51 = memref.alloca() : memref<5x12x9xi64>
        %277 = arith.remf %cst_2, %cst_2 : f16
        %278 = index.castu %true : i1 to index
        %279 = index.add %c7, %118
        %alloc_52 = memref.alloc() : memref<5x5x5xi64>
        affine.yield %alloc_52 : memref<5x5x5xi64>
      } else {
        %274 = memref.realloc %alloc_4 : memref<12xf32> to memref<12xf32>
        %275 = memref.realloc %alloc_22 : memref<10xi16> to memref<10xi16>
        %276 = arith.minsi %true_1, %true_27 : i1
        %277 = arith.xori %c1776638744_i64, %c1776638744_i64 : i64
        %278 = arith.mulf %cst_2, %cst_2 : f16
        %279 = index.mul %c12, %97
        %280 = arith.remui %c1187419239_i64, %c1187419239_i64 : i64
        %281 = math.log10 %1 : tensor<5x5x5xf32>
        %alloc_50 = memref.alloc() : memref<5x5x5xi64>
        affine.yield %alloc_50 : memref<5x5x5xi64>
      }
      %272 = math.atan %1 : tensor<5x5x5xf32>
      %273 = arith.remsi %c1776638744_i64, %c1776638744_i64 : i64
    } else {
      %splat_48 = tensor.splat %c1776638744_i64 : tensor<5x5x5xi64>
      %268 = scf.index_switch %c10 -> vector<5x12x9xf32> 
      case 1 {
        %275 = vector.broadcast %c-31995_i16 : i16 to vector<12x9xi16>
        %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %65, %53, %275 : vector<5xi16>, vector<5x12x9xi16> into vector<12x9xi16>
        %c432727567_i32 = arith.constant 432727567 : i32
        %277 = arith.divsi %c1152786613_i32, %c1152786613_i32 : i32
        %278 = index.divs %c14, %95
        %alloc_49 = memref.alloc() : memref<5x12x9xi64>
        memref.copy %alloc_7, %alloc_49 : memref<5x12x9xi64> to memref<5x12x9xi64>
        %279 = index.maxu %35, %116
        %inserted_50 = tensor.insert %cst_2 into %143[%c2, %c4, %c4] : tensor<5x5x5xf16>
        %extracted_51 = tensor.extract %4[%c2] : tensor<10xf16>
        %280 = arith.cmpi ule, %true, %152 : i1
        %281 = vector.broadcast %true_1 : i1 to vector<12x5xi1>
        %282 = vector.transfer_write %281, %8[%151, %c6, %c4] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<12x5xi1>, tensor<5x5x5xi1>
        %283 = arith.xori %c637244042_i64, %c175706005_i64 : i64
        %284 = arith.maxsi %62, %extracted_30 : i16
        %extracted_52 = tensor.extract %6[%c3, %c8, %c2] : tensor<5x12x9xi64>
        memref.tensor_store %25, %alloc_13 : memref<5x5x5xf16>
        %alloca_53 = memref.alloca() : memref<12xi32>
        %285 = math.exp %cst_0 : f32
        scf.yield %117 : vector<5x12x9xf32>
      }
      case 2 {
        %275 = math.exp %cst_2 : f16
        %276 = math.round %67 : f32
        %277 = arith.maxui %c630031197_i64, %c175706005_i64 : i64
        %278 = arith.muli %c1688055617_i64, %c637244042_i64 : i64
        %279 = index.divu %111, %c9
        %280 = index.ceildivs %163, %24
        %281 = bufferization.to_memref %from_elements : memref<10xi1>
        %282 = math.fpowi %extracted, %c1152786613_i32 : f32, i32
        %283 = arith.maxf %67, %cst_0 : f32
        %284 = index.castu %111 : index to i32
        %285 = arith.minsi %c1152786613_i32, %c1152786613_i32 : i32
        %286 = math.atan2 %extracted, %cst_0 : f32
        %287 = index.ceildivu %110, %137
        %288 = arith.minsi %extracted_30, %extracted_30 : i16
        %289 = bufferization.to_memref %11 : memref<10xi1>
        %290 = math.atan2 %cst_2, %cst_2 : f16
        scf.yield %117 : vector<5x12x9xf32>
      }
      default {
        %expanded_49 = tensor.expand_shape %11 [[0, 1]] : tensor<10xi1> into tensor<10x1xi1>
        %275 = math.ipowi %6, %6 : tensor<5x12x9xi64>
        %276 = arith.mulf %cst_0, %cst : f32
        %277 = arith.remsi %extracted_30, %62 : i16
        %278 = math.sqrt %12 : tensor<5x12x9xf16>
        %279 = vector.transpose %100, [0] : vector<10xf32> to vector<10xf32>
        %280 = math.fma %cst_2, %cst_2, %cst_2 : f16
        %281 = arith.addf %cst, %extracted : f32
        %282 = math.sqrt %1 : tensor<5x5x5xf32>
        %283 = math.expm1 %143 : tensor<5x5x5xf16>
        bufferization.dealloc_tensor %15 : tensor<5x12x9xi64>
        %284 = index.sub %101, %162
        %285 = vector.reduction <maxui>, %102 : vector<10xi64> into i64
        %cast_50 = tensor.cast %1 : tensor<5x5x5xf32> to tensor<?x?x?xf32>
        %286 = vector.splat %88 : vector<10xindex>
        %287 = index.sizeof
        scf.yield %117 : vector<5x12x9xf32>
      }
      %269 = math.exp2 %1 : tensor<5x5x5xf32>
      %270 = vector.load %alloc_16[%c3] : memref<12xi1>, vector<12xi1>
      %271 = arith.remsi %c1152786613_i32, %c1152786613_i32 : i32
      %272 = math.atan %cst_2 : f16
      %273 = index.add %95, %64
      %274 = bufferization.to_memref %8 : memref<5x5x5xi1>
    }
    %173 = arith.remf %67, %cst : f32
    vector.print %56 : vector<5x12x9xi16>
    %174 = vector.extract %19[4] : vector<9xi64>
    %175 = math.exp2 %124 : tensor<5x12x9xf32>
    %176 = math.atan2 %16, %16 : tensor<5x5x5xf32>
    %177 = index.maxu %c3, %24
    %178 = math.log1p %17 : tensor<5x5x5xf32>
    %from_elements_34 = tensor.from_elements %c1776638744_i64, %c637244042_i64, %c1187419239_i64, %c630031197_i64, %c630031197_i64, %c630031197_i64, %c637244042_i64, %c630031197_i64, %c630031197_i64, %c630031197_i64, %c630031197_i64, %c1776638744_i64, %c1187419239_i64, %c1187419239_i64, %c175706005_i64, %c637244042_i64, %c637244042_i64, %c630031197_i64, %c298900548_i64, %c1688055617_i64, %c1688055617_i64, %c175706005_i64, %c175706005_i64, %c1187419239_i64, %c1187419239_i64, %c298900548_i64, %c1776638744_i64, %c175706005_i64, %c1688055617_i64, %c630031197_i64, %c1187419239_i64, %c1776638744_i64, %c175706005_i64, %c630031197_i64, %c1776638744_i64, %c1776638744_i64, %c1688055617_i64, %c175706005_i64, %c1776638744_i64, %c637244042_i64, %c1776638744_i64, %c175706005_i64, %c1688055617_i64, %c298900548_i64, %c637244042_i64, %c630031197_i64, %c637244042_i64, %c1776638744_i64, %c630031197_i64, %c637244042_i64, %c175706005_i64, %c1187419239_i64, %c175706005_i64, %c1776638744_i64, %c1776638744_i64, %c1187419239_i64, %c630031197_i64, %c630031197_i64, %c630031197_i64, %c175706005_i64, %c298900548_i64, %c1187419239_i64, %c298900548_i64, %c1776638744_i64, %c175706005_i64, %c298900548_i64, %c298900548_i64, %c1776638744_i64, %c637244042_i64, %c1688055617_i64, %c1688055617_i64, %c637244042_i64, %c1688055617_i64, %c1187419239_i64, %c298900548_i64, %c298900548_i64, %c630031197_i64, %c298900548_i64, %c1688055617_i64, %c637244042_i64, %c1187419239_i64, %c298900548_i64, %c298900548_i64, %c1688055617_i64, %c1187419239_i64, %c175706005_i64, %c630031197_i64, %c1688055617_i64, %c1776638744_i64, %c175706005_i64, %c1776638744_i64, %c175706005_i64, %c637244042_i64, %c1776638744_i64, %c1688055617_i64, %c298900548_i64, %c1688055617_i64, %c175706005_i64, %c630031197_i64, %c637244042_i64, %c637244042_i64, %c298900548_i64, %c175706005_i64, %c175706005_i64, %c630031197_i64, %c1187419239_i64, %c1187419239_i64, %c1776638744_i64, %c175706005_i64, %c298900548_i64, %c175706005_i64, %c637244042_i64, %c637244042_i64, %c637244042_i64, %c1187419239_i64, %c1688055617_i64, %c630031197_i64, %c630031197_i64, %c1187419239_i64, %c1187419239_i64, %c298900548_i64, %c1688055617_i64, %c630031197_i64, %c1187419239_i64, %c1776638744_i64, %c175706005_i64, %c637244042_i64, %c298900548_i64, %c298900548_i64, %c1187419239_i64, %c1688055617_i64, %c637244042_i64, %c1688055617_i64, %c298900548_i64, %c637244042_i64, %c1187419239_i64, %c630031197_i64, %c298900548_i64, %c298900548_i64, %c1688055617_i64, %c1776638744_i64, %c1688055617_i64, %c298900548_i64, %c298900548_i64, %c630031197_i64, %c637244042_i64, %c1187419239_i64, %c175706005_i64, %c175706005_i64, %c1776638744_i64, %c175706005_i64, %c1688055617_i64, %c637244042_i64, %c1688055617_i64, %c298900548_i64, %c1187419239_i64, %c175706005_i64, %c175706005_i64, %c637244042_i64, %c175706005_i64, %c175706005_i64, %c630031197_i64, %c175706005_i64, %c298900548_i64, %c630031197_i64, %c637244042_i64, %c1688055617_i64, %c298900548_i64, %c175706005_i64, %c1187419239_i64, %c637244042_i64, %c298900548_i64, %c1187419239_i64, %c637244042_i64, %c1187419239_i64, %c175706005_i64, %c630031197_i64, %c175706005_i64, %c1776638744_i64, %c175706005_i64, %c630031197_i64, %c630031197_i64, %c1776638744_i64, %c630031197_i64, %c1776638744_i64, %c637244042_i64, %c1187419239_i64, %c175706005_i64, %c630031197_i64, %c175706005_i64, %c298900548_i64, %c1187419239_i64, %c630031197_i64, %c298900548_i64, %c1187419239_i64, %c1776638744_i64, %c1187419239_i64, %c175706005_i64, %c175706005_i64, %c175706005_i64, %c298900548_i64, %c298900548_i64, %c630031197_i64, %c637244042_i64, %c175706005_i64, %c1776638744_i64, %c175706005_i64, %c1688055617_i64, %c630031197_i64, %c1187419239_i64, %c1187419239_i64, %c1688055617_i64, %c1776638744_i64, %c1776638744_i64, %c1776638744_i64, %c1776638744_i64, %c175706005_i64, %c1688055617_i64, %c298900548_i64, %c1688055617_i64, %c1187419239_i64, %c1776638744_i64, %c637244042_i64, %c1776638744_i64, %c298900548_i64, %c175706005_i64, %c1776638744_i64, %c1776638744_i64, %c298900548_i64, %c1776638744_i64, %c1688055617_i64, %c298900548_i64, %c298900548_i64, %c298900548_i64, %c1776638744_i64, %c1187419239_i64, %c637244042_i64, %c1187419239_i64, %c298900548_i64, %c175706005_i64, %c630031197_i64, %c298900548_i64, %c1776638744_i64, %c175706005_i64, %c175706005_i64, %c298900548_i64, %c630031197_i64, %c1776638744_i64, %c1776638744_i64, %c1688055617_i64, %c1187419239_i64, %c298900548_i64, %c630031197_i64, %c175706005_i64, %c298900548_i64, %c1776638744_i64, %c630031197_i64, %c175706005_i64, %c637244042_i64, %c630031197_i64, %c1776638744_i64, %c630031197_i64, %c298900548_i64, %c1688055617_i64, %c1776638744_i64, %c1688055617_i64, %c1187419239_i64, %c630031197_i64, %c175706005_i64, %c637244042_i64, %c630031197_i64, %c1688055617_i64, %c175706005_i64, %c175706005_i64, %c1688055617_i64, %c1187419239_i64, %c1187419239_i64, %c1688055617_i64, %c1776638744_i64, %c1776638744_i64, %c630031197_i64, %c630031197_i64, %c175706005_i64, %c1187419239_i64, %c1187419239_i64, %c1688055617_i64, %c637244042_i64, %c1776638744_i64, %c298900548_i64, %c630031197_i64, %c1688055617_i64, %c637244042_i64, %c1187419239_i64, %c630031197_i64, %c1187419239_i64, %c637244042_i64, %c175706005_i64, %c630031197_i64, %c1776638744_i64, %c1688055617_i64, %c637244042_i64, %c1187419239_i64, %c1776638744_i64, %c175706005_i64, %c1187419239_i64, %c1776638744_i64, %c637244042_i64, %c1776638744_i64, %c298900548_i64, %c637244042_i64, %c630031197_i64, %c637244042_i64, %c1688055617_i64, %c637244042_i64, %c298900548_i64, %c1187419239_i64, %c630031197_i64, %c630031197_i64, %c630031197_i64, %c637244042_i64, %c1776638744_i64, %c630031197_i64, %c1187419239_i64, %c1187419239_i64, %c1776638744_i64, %c298900548_i64, %c1187419239_i64, %c175706005_i64, %c298900548_i64, %c298900548_i64, %c1776638744_i64, %c637244042_i64, %c637244042_i64, %c1688055617_i64, %c1776638744_i64, %c298900548_i64, %c1776638744_i64, %c1187419239_i64, %c1688055617_i64, %c637244042_i64, %c298900548_i64, %c1187419239_i64, %c298900548_i64, %c637244042_i64, %c1688055617_i64, %c175706005_i64, %c1688055617_i64, %c1776638744_i64, %c1688055617_i64, %c1688055617_i64, %c1776638744_i64, %c175706005_i64, %c1688055617_i64, %c298900548_i64, %c1776638744_i64, %c175706005_i64, %c1776638744_i64, %c298900548_i64, %c175706005_i64, %c1776638744_i64, %c175706005_i64, %c1688055617_i64, %c298900548_i64, %c637244042_i64, %c630031197_i64, %c1776638744_i64, %c630031197_i64, %c630031197_i64, %c1187419239_i64, %c630031197_i64, %c637244042_i64, %c1688055617_i64, %c1688055617_i64, %c630031197_i64, %c298900548_i64, %c1187419239_i64, %c175706005_i64, %c630031197_i64, %c630031197_i64, %c637244042_i64, %c1187419239_i64, %c175706005_i64, %c175706005_i64, %c1776638744_i64, %c298900548_i64, %c637244042_i64, %c637244042_i64, %c175706005_i64, %c175706005_i64, %c298900548_i64, %c175706005_i64, %c630031197_i64, %c298900548_i64, %c175706005_i64, %c298900548_i64, %c637244042_i64, %c1187419239_i64, %c1776638744_i64, %c175706005_i64, %c1688055617_i64, %c175706005_i64, %c630031197_i64, %c1187419239_i64, %c298900548_i64, %c175706005_i64, %c175706005_i64, %c630031197_i64, %c298900548_i64, %c1187419239_i64, %c1776638744_i64, %c637244042_i64, %c298900548_i64, %c1688055617_i64, %c637244042_i64, %c1776638744_i64, %c1688055617_i64, %c298900548_i64, %c630031197_i64, %c637244042_i64, %c1688055617_i64, %c1187419239_i64, %c630031197_i64, %c1776638744_i64, %c1688055617_i64, %c637244042_i64, %c1187419239_i64, %c298900548_i64, %c1187419239_i64, %c637244042_i64, %c630031197_i64, %c637244042_i64, %c1688055617_i64, %c637244042_i64, %c298900548_i64, %c175706005_i64, %c1688055617_i64, %c1187419239_i64, %c637244042_i64, %c1776638744_i64, %c1688055617_i64, %c630031197_i64, %c630031197_i64, %c637244042_i64, %c175706005_i64, %c637244042_i64, %c1688055617_i64, %c175706005_i64, %c637244042_i64, %c630031197_i64, %c1187419239_i64, %c175706005_i64, %c1776638744_i64, %c175706005_i64, %c637244042_i64, %c175706005_i64, %c1187419239_i64, %c1187419239_i64, %c1776638744_i64, %c175706005_i64, %c1688055617_i64, %c1187419239_i64, %c630031197_i64, %c175706005_i64, %c1776638744_i64, %c637244042_i64, %c175706005_i64, %c1688055617_i64, %c637244042_i64, %c637244042_i64, %c637244042_i64, %c1688055617_i64, %c175706005_i64, %c637244042_i64, %c1187419239_i64, %c1187419239_i64, %c1776638744_i64, %c630031197_i64, %c1688055617_i64, %c1776638744_i64, %c298900548_i64, %c1187419239_i64, %c637244042_i64, %c1688055617_i64, %c637244042_i64, %c1776638744_i64, %c1776638744_i64, %c1688055617_i64, %c1776638744_i64, %c1187419239_i64, %c1688055617_i64, %c175706005_i64, %c630031197_i64, %c1776638744_i64, %c637244042_i64, %c1688055617_i64, %c1776638744_i64, %c1776638744_i64, %c1187419239_i64, %c1688055617_i64, %c630031197_i64, %c1187419239_i64, %c1187419239_i64, %c630031197_i64, %c637244042_i64, %c1688055617_i64, %c298900548_i64, %c1187419239_i64, %c1187419239_i64, %c637244042_i64, %c298900548_i64, %c637244042_i64, %c175706005_i64, %c1187419239_i64, %c175706005_i64, %c630031197_i64, %c637244042_i64, %c630031197_i64, %c298900548_i64, %c1187419239_i64, %c637244042_i64, %c175706005_i64, %c630031197_i64, %c637244042_i64, %c298900548_i64, %c1688055617_i64, %c637244042_i64, %c630031197_i64, %c298900548_i64, %c1187419239_i64, %c1776638744_i64, %c1776638744_i64, %c637244042_i64, %c1187419239_i64, %c1776638744_i64, %c637244042_i64, %c1688055617_i64, %c1776638744_i64, %c637244042_i64, %c630031197_i64, %c630031197_i64 : tensor<5x12x9xi64>
    %179 = index.mul %c10, %116
    %180 = affine.max affine_map<(d0, d1, d2) -> (d0, d1 floordiv 32, -d0, (d1 floordiv 32) floordiv 32 + 2)>(%c8, %88, %37)
    %181 = vector.load %alloc_3[%c0, %c11, %c7] : memref<5x12x9xi32>, vector<5x12x9xi32>
    %182 = vector.extract %56[4, 4] : vector<5x12x9xi16>
    %alloca_35 = memref.alloca() : memref<12xi32>
    %183 = vector.load %alloc_19[%c0] : memref<9xi16>, vector<5x12x9xi16>
    %184 = math.atan %cst_2 : f16
    %185 = vector.broadcast %62 : i16 to vector<5xi16>
    %186 = vector.transfer_write %185, %13[%36, %c1, %c4] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xi16>, tensor<5x12x9xi16>
    %187 = vector.broadcast %cst_2 : f16 to vector<9xf16>
    %188 = vector.broadcast %true_25 : i1 to vector<9xi1>
    %189 = vector.maskedload %alloc_13[%c4, %c2, %c2], %188, %187 : memref<5x5x5xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
    %190 = memref.realloc %alloc_14 : memref<10xi64> to memref<5xi64>
    %191 = arith.remf %extracted, %extracted : f32
    %inserted_36 = tensor.insert %c298900548_i64 into %2[%c6] : tensor<10xi64>
    %192 = vector.transpose %117, [2, 1, 0] : vector<5x12x9xf32> to vector<9x12x5xf32>
    %193 = math.absf %17 : tensor<5x5x5xf32>
    %194 = math.log10 %cst_2 : f16
    %cast_37 = tensor.cast %0 : tensor<5x5x5xi16> to tensor<?x?x?xi16>
    %195 = vector.broadcast %c1152786613_i32 : i32 to vector<12x9x12x9xi32>
    %196 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %55, %181, %195 : vector<5x12x9xi32>, vector<5x12x9xi32> into vector<12x9x12x9xi32>
    %197 = arith.addi %true_25, %true_25 : i1
    %198 = arith.shli %c175706005_i64, %c298900548_i64 : i64
    %199 = vector.transpose %55, [0, 1, 2] : vector<5x12x9xi32> to vector<5x12x9xi32>
    %200 = arith.shrsi %c298900548_i64, %c630031197_i64 : i64
    %rank_38 = tensor.rank %9 : tensor<5x5x5xi1>
    %201 = vector.broadcast %62 : i16 to vector<i16>
    %202 = vector.transfer_write %201, %13[%177, %147, %166] : vector<i16>, tensor<5x12x9xi16>
    %203 = index.add %c8, %81
    %204 = arith.remsi %true_27, %true_25 : i1
    %205 = vector.load %alloc_18[%c8, %c4, %c11] : memref<9x5x12xf16>, vector<12xf16>
    %206 = arith.muli %c175706005_i64, %c1688055617_i64 : i64
    %207 = affine.apply affine_map<(d0) -> ((d0 ceildiv 4 - d0) * 2)>(%24)
    %splat_39 = tensor.splat %cst_0 : tensor<5x5x5xf32>
    %208 = math.round %splat : tensor<10xf32>
    %209 = index.floordivs %107, %64
    %210 = math.tanh %expanded : tensor<5x5x5x1xf16>
    %211 = vector.broadcast %cst_0 : f32 to vector<10xf32>
    %212 = vector.fma %211, %34, %34 : vector<10xf32>
    %213 = arith.minsi %c630031197_i64, %c1688055617_i64 : i64
    %214 = affine.max affine_map<(d0) -> (-2, d0 floordiv 16, d0 floordiv 32 - d0 + d0, d0 floordiv 32 + d0 floordiv 32 - d0 + d0)>(%c7)
    %215 = vector.broadcast %67 : f32 to vector<5xf32>
    %216 = vector.broadcast %false : i1 to vector<5xi1>
    %217 = vector.maskedload %alloc_15[%c2, %c1, %c0], %216, %215 : memref<5x5x5xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
    %218 = math.roundeven %1 : tensor<5x5x5xf32>
    %219 = math.atan %splat_39 : tensor<5x5x5xf32>
    %220 = index.ceildivs %151, %c13
    %221 = arith.xori %true_25, %true : i1
    %222 = arith.cmpf oeq, %cst_0, %67 : f32
    %223 = math.log1p %expanded : tensor<5x5x5x1xf16>
    %224 = vector.broadcast %extracted_30 : i16 to vector<12x9x12x9xi16>
    %225 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %56, %53, %224 : vector<5x12x9xi16>, vector<5x12x9xi16> into vector<12x9x12x9xi16>
    %226 = arith.shli %c1187419239_i64, %c630031197_i64 : i64
    %227 = arith.remui %c-31995_i16, %extracted_30 : i16
    %228 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %217, %215, %67 : vector<5xf32>, vector<5xf32> into f32
    %229 = memref.load %alloc_6[%c4] : memref<12xi16>
    %cast_40 = tensor.cast %9 : tensor<5x5x5xi1> to tensor<?x?x?xi1>
    %230 = arith.maxui %c298900548_i64, %c637244042_i64 : i64
    %231 = arith.cmpf ogt, %67, %cst_0 : f32
    %232 = affine.apply affine_map<(d0) -> (d0)>(%95)
    %233 = math.exp %124 : tensor<5x12x9xf32>
    %234 = arith.minsi %true_27, %true : i1
    %235 = arith.minui %c637244042_i64, %c630031197_i64 : i64
    %236 = math.expm1 %124 : tensor<5x12x9xf32>
    %alloc_41 = memref.alloc() : memref<9x5x12xf16>
    memref.copy %alloc_18, %alloc_41 : memref<9x5x12xf16> to memref<9x5x12xf16>
    %237 = arith.remf %cst_0, %cst_0 : f32
    %238 = math.exp %12 : tensor<5x12x9xf16>
    %239 = vector.broadcast %extracted_30 : i16 to vector<5x5xi16>
    %240 = vector.outerproduct %65, %185, %239 {kind = #vector.kind<or>} : vector<5xi16>, vector<5xi16>
    %collapsed_42 = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<5x5x5xi16> into tensor<25x5xi16>
    %from_elements_43 = tensor.from_elements %false_23, %true_1, %true_25, %false_23, %true_1, %true_1, %152, %152, %true_25, %152, %true_27, %152, %false, %true_27, %false, %true, %true_1, %152, %true_25, %true_1, %false, %152, %true_27, %true_27, %false, %152, %152, %true_27, %152, %true_25, %true, %true, %false, %152, %true_1, %true_1, %true, %false_23, %false_23, %false, %152, %false, %true_1, %true, %true_27, %true_1, %true_27, %true_1, %false_23, %true_1, %false_23, %false_23, %false_23, %true_1, %true_25, %true_25, %false_23, %false, %false_23, %true_1, %152, %true, %152, %true_1, %152, %true_25, %false_23, %true, %true_25, %false, %152, %false, %true_25, %true_25, %false, %false, %false_23, %152, %true_1, %false, %true, %false, %true, %false_23, %true_1, %true, %true_1, %true, %true_1, %152, %true_27, %false_23, %true_27, %true, %152, %false, %false, %false_23, %false, %true_27, %true, %true_1, %true_27, %152, %true_1, %false_23, %true_27, %true_1, %true_27, %false_23, %152, %152, %true_27, %true, %true_27, %false, %true, %true, %false, %true_1, %152, %true_1, %152, %152, %true_27, %false_23, %true, %true_1, %true_1, %true_27, %true, %false_23, %true, %true_27, %false_23, %true_25, %true_25, %true_1, %152, %true_27, %true_27, %true_25, %true_27, %true, %false, %true_25, %true_1, %false, %true_25, %true, %true_27, %true_27, %false, %true_1, %true, %true_25, %true, %true_1, %true_27, %true_25, %false_23, %true_25, %true_25, %true_25, %false_23, %true_1, %false_23, %152, %false, %true_25, %true_1, %false_23, %false, %false, %false_23, %false, %true_1, %false, %true_27, %152, %true, %true, %false, %152, %152, %true_1, %152, %true_25, %true_27, %false_23, %true_27, %true_27, %false_23, %false_23, %true_25, %true, %false, %true, %152, %false, %true_27, %false_23, %false, %152, %152, %152, %152, %152, %false_23, %true_1, %true_1, %true, %true, %false_23, %false_23, %false_23, %false_23, %true, %true_1, %true_1, %false, %true, %true_27, %152, %true_1, %true_25, %true, %false_23, %true, %false_23, %true, %false_23, %true_27, %true, %true_25, %false, %false_23, %false_23, %false, %true_1, %true, %false_23, %false_23, %true_27, %true_25, %false, %true, %false, %false_23, %false, %true_1, %false, %true, %false, %152, %true_25, %false_23, %false_23, %true, %true_1, %true_25, %false, %false, %true_25, %152, %true_25, %true_1, %false, %true_27, %true_25, %152, %true_25, %true_1, %false, %false_23, %true_25, %true_27, %true_1, %true, %false, %true_25, %true_27, %true_27, %false, %true_25, %true_25, %true_25, %false, %true, %true_1, %152, %true, %false, %152, %152, %false, %true_1, %true_1, %true, %false, %152, %true_25, %false_23, %true_25, %true_25, %true_1, %true_1, %false_23, %true, %true_27, %false, %true_25, %true_1, %false, %true, %true_27, %true, %true_1, %false_23, %false, %true_25, %false_23, %true, %true_25, %true, %false_23, %true_25, %true_1, %152, %false, %true, %152, %true, %true_25, %true_1, %152, %false, %true, %true, %true_1, %true, %true_25, %false_23, %true, %true_25, %true_1, %false, %false_23, %true_25, %false, %152, %true_25, %true_27, %true_1, %true_25, %true, %true_27, %true_27, %false, %true, %true_25, %false, %true_1, %true_25, %true_27, %true_25, %true_25, %true_25, %false_23, %true, %152, %152, %152, %false, %152, %true_27, %false, %true_1, %true_1, %true_25, %false_23, %false, %true_27, %true_1, %true_1, %152, %true_1, %true_1, %true_25, %false, %true_25, %true_27, %true_27, %152, %true_1, %true, %true_25, %152, %false_23, %true_1, %false_23, %152, %false, %true_1, %152, %false, %true_25, %false_23, %152, %false, %true_27, %true_25, %true_27, %false, %true_1, %true_1, %true_1, %true_1, %true_1, %false, %true_27, %false_23, %false_23, %true_1, %false, %false, %152, %false, %true_25, %false_23, %false_23, %true_27, %false, %152, %152, %true_1, %true_27, %false, %true_1, %true_1, %true_1, %true_27, %true_25, %true, %152, %152, %true_1, %true_27, %true_25, %true_25, %true_27, %true_1, %false_23, %false_23, %true_1, %true_25, %true_27, %true_1, %true_1, %true_27, %true_1, %false, %true_1, %true_27, %152, %152, %true_1, %false_23, %false, %false_23, %false, %true_27, %true_27, %false_23, %true_25, %true, %152, %true_27, %false_23, %true_27, %true_25, %152, %152, %true, %true, %152, %152, %152, %true_25, %false, %false, %true, %true, %152, %true_27, %true_25, %true_1, %false_23, %true_25, %true, %true_1, %false_23, %true_27, %false_23, %true_25, %false, %true, %true_25, %152, %true_1, %true, %true, %false, %true, %true, %true_1, %true_1, %true_25, %false, %false, %true, %false_23, %true_25, %true_27, %true_27, %152, %true_27, %true_27, %true_25, %152, %false_23, %true, %152, %152, %false, %152, %false_23, %152, %true_27, %true_1 : tensor<5x12x9xi1>
    %241 = arith.remf %cst, %cst : f32
    %242 = arith.remf %extracted, %67 : f32
    %inserted_44 = tensor.insert %extracted into %1[%c2, %c4, %c1] : tensor<5x5x5xf32>
    %243 = math.log2 %splat : tensor<10xf32>
    %244 = memref.realloc %alloc_6 : memref<12xi16> to memref<9xi16>
    %245 = scf.while (%arg3 = %129) : (vector<12xf32>) -> vector<12xf32> {
      %extracted_48 = tensor.extract %14[%c6] : tensor<10xi16>
      %generated = tensor.generate %166 {
      ^bb0(%arg4: index):
        %alloca_50 = memref.alloca() : memref<12xf16>
        %273 = bufferization.to_memref %5 : memref<5x5x5xi16>
        %274 = arith.remf %extracted, %cst : f32
        %275 = math.copysign %16, %16 : tensor<5x5x5xf32>
        tensor.yield %c-31995_i16 : i16
      } : tensor<?xi16>
      %268 = index.divs %44, %37
      %269 = vector.broadcast %cst : f32 to vector<5x9xf32>
      vector.transfer_write %269, %alloc_15[%c11, %214, %35] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<5x9xf32>, memref<5x5x5xf32>
      %270 = index.ceildivu %37, %163
      %271 = math.log10 %67 : f32
      %rank_49 = tensor.rank %from_elements_34 : tensor<5x12x9xi64>
      %272 = arith.maxui %true_1, %152 : i1
      scf.condition(%152) %128 : vector<12xf32>
    } do {
    ^bb0(%arg3: vector<12xf32>):
      %268 = arith.ori %c637244042_i64, %c1688055617_i64 : i64
      %269 = arith.cmpf ugt, %67, %extracted : f32
      %270 = math.ctlz %8 : tensor<5x5x5xi1>
      %271 = vector.broadcast %97 : index to vector<10xindex>
      %272 = vector.broadcast %152 : i1 to vector<10xi1>
      vector.scatter %alloc_14[%c1] [%271], %272, %102 : memref<10xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
      %273 = math.log1p %expanded : tensor<5x5x5x1xf16>
      %274 = scf.while (%arg4 = %217) : (vector<5xf32>) -> vector<5xf32> {
        %expanded_48 = tensor.expand_shape %11 [[0, 1]] : tensor<10xi1> into tensor<10x1xi1>
        %283 = vector.broadcast %152 : i1 to vector<10xi1>
        %284 = memref.realloc %alloc_19 : memref<9xi16> to memref<10xi16>
        %285 = math.tan %4 : tensor<10xf16>
        %286 = vector.broadcast %extracted : f32 to vector<5x12x9xf32>
        %287 = vector.fma %286, %286, %117 : vector<5x12x9xf32>
        %288 = memref.load %alloc_10[%c1, %c11, %c7] : memref<5x12x9xi1>
        %289 = arith.shli %c298900548_i64, %c298900548_i64 : i64
        %290 = vector.broadcast %c1688055617_i64 : i64 to vector<5x9xi64>
        %291 = vector.multi_reduction <or>, %83, %290 [1] : vector<5x12x9xi64> to vector<5x9xi64>
        scf.condition(%false_23) %215 : vector<5xf32>
      } do {
      ^bb0(%arg4: vector<5xf32>):
        %283 = index.castu %false_23 : i1 to index
        memref.store %c637244042_i64, %alloc_8[%c10] : memref<12xi64>
        %284 = vector.broadcast %cst_2 : f16 to vector<9x9xf16>
        %285 = vector.outerproduct %189, %189, %284 {kind = #vector.kind<add>} : vector<9xf16>, vector<9xf16>
        %286 = vector.broadcast %cst_0 : f32 to vector<12xf32>
        %287 = vector.fma %286, %129, %286 : vector<12xf32>
        %288 = arith.maxsi %true_27, %false_23 : i1
        %289 = arith.remsi %c637244042_i64, %c1187419239_i64 : i64
        %290 = math.rsqrt %4 : tensor<10xf16>
        %291 = vector.load %alloc_11[%c5] : memref<12xf32>, vector<12xf32>
        %292 = index.maxu %167, %166
        %293 = arith.remsi %true_1, %true : i1
        %294 = math.ceil %expanded : tensor<5x5x5x1xf16>
        %expanded_48 = tensor.expand_shape %14 [[0, 1]] : tensor<10xi16> into tensor<10x1xi16>
        %295 = math.log10 %25 : tensor<5x5x5xf16>
        %296 = arith.remsi %c175706005_i64, %c298900548_i64 : i64
        %297 = math.ctpop %true_25 : i1
        %298 = vector.load %alloc_22[%c5] : memref<10xi16>, vector<5x5x5xi16>
        scf.yield %217 : vector<5xf32>
      }
      %275 = math.ceil %extracted : f32
      scf.execute_region {
        %283 = arith.maxui %c1152786613_i32, %c1152786613_i32 : i32
        %284 = arith.muli %c630031197_i64, %c298900548_i64 : i64
        %285 = arith.remui %c630031197_i64, %c1688055617_i64 : i64
        %286 = math.atan %1 : tensor<5x5x5xf32>
        %287 = arith.divui %false, %true_25 : i1
        %288 = arith.mulf %cst_2, %cst_2 : f16
        %289 = math.absi %c1776638744_i64 : i64
        %290 = index.casts %c1688055617_i64 : i64 to index
        %291 = arith.mulf %cst_2, %cst_2 : f16
        %292 = math.rsqrt %67 : f32
        %293 = arith.shrsi %62, %c11230_i16 : i16
        %extracted_48 = tensor.extract %4[%c0] : tensor<10xf16>
        %294 = math.exp2 %124 : tensor<5x12x9xf32>
        %295 = arith.maxf %cst_0, %extracted : f32
        %296 = math.tanh %67 : f32
        %297 = arith.xori %c1688055617_i64, %c298900548_i64 : i64
        scf.yield
      }
      %276 = arith.ori %c637244042_i64, %c1187419239_i64 : i64
      scf.if %true_27 {
        %283 = vector.transpose %100, [0] : vector<10xf32> to vector<10xf32>
        %alloca_48 = memref.alloca() : memref<5x12x9xi16>
        %284 = vector.broadcast %c1688055617_i64 : i64 to vector<i64>
        vector.transfer_write %284, %alloc_7[%151, %70, %c3] : vector<i64>, memref<5x12x9xi64>
        %285 = vector.broadcast %c637244042_i64 : i64 to vector<i64>
        vector.transfer_write %285, %alloc_14[%177] : vector<i64>, memref<10xi64>
        %286 = arith.ori %true_27, %true_1 : i1
        %287 = vector.broadcast %cst : f32 to vector<12x12xf32>
        %288 = vector.outerproduct %129, %129, %287 {kind = #vector.kind<maxf>} : vector<12xf32>, vector<12xf32>
        %289 = math.absi %9 : tensor<5x5x5xi1>
        %alloc_49 = memref.alloc() : memref<5x5x5xi16>
        memref.tensor_store %7, %alloc_49 : memref<5x5x5xi16>
      }
      %277 = arith.remf %cst_0, %extracted : f32
      %278 = index.ceildivu %24, %97
      %279 = index.sizeof
      %280 = arith.divui %c1688055617_i64, %c298900548_i64 : i64
      %281 = index.maxs %24, %97
      %282 = math.log2 %1 : tensor<5x5x5xf32>
      scf.yield %128 : vector<12xf32>
    }
    %246 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%15 : tensor<5x12x9xi64>) {
    ^bb0(%out: i64):
      %alloc_48 = memref.alloc() : memref<10x12xi16>
      %268 = tensor.empty() : tensor<25x12xi16>
      %269 = linalg.matmul ins(%108, %alloc_48 : tensor<25x10xi16>, memref<10x12xi16>) outs(%268 : tensor<25x12xi16>) -> tensor<25x12xi16>
      %270 = arith.remf %extracted, %cst_0 : f32
      %271 = arith.minui %out, %c637244042_i64 : i64
      %272 = math.ceil %cst : f32
      %273 = math.exp %cst_2 : f16
      %274 = math.atan2 %16, %splat_39 : tensor<5x5x5xf32>
      %275 = arith.floordivsi %out, %c175706005_i64 : i64
      %276 = arith.minui %c1187419239_i64, %c298900548_i64 : i64
      %277 = affine.max affine_map<(d0, d1) -> ((d0 ceildiv 32) mod 16)>(%c3, %151)
      %278 = index.castu %true_25 : i1 to index
      %279 = index.maxu %c14, %110
      %280 = math.tanh %splat : tensor<10xf32>
      %281 = index.ceildivu %279, %c4
      scf.if %true_25 {
        %295 = math.exp2 %cst_0 : f32
        %296 = arith.minsi %c630031197_i64, %c637244042_i64 : i64
        %false_54 = index.bool.constant false
        %297 = index.sizeof
        %298 = math.copysign %143, %25 : tensor<5x5x5xf16>
        %299 = arith.ori %false_54, %true : i1
        %300 = arith.remf %cst, %67 : f32
        %301 = math.log2 %124 : tensor<5x12x9xf32>
      }
      %282 = index.divs %57, %80
      %283 = vector.broadcast %c11230_i16 : i16 to vector<12xi16>
      %284 = arith.xori %out, %c637244042_i64 : i64
      %285 = arith.remui %152, %152 : i1
      %286 = vector.broadcast %c-31995_i16 : i16 to vector<12x9x12x9xi16>
      %287 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %53, %53, %286 : vector<5x12x9xi16>, vector<5x12x9xi16> into vector<12x9x12x9xi16>
      %cst_49 = arith.constant 3.308800e+04 : f16
      %288 = scf.while (%arg3 = %true_27) : (i1) -> i1 {
        %295 = math.powf %extracted, %cst_0 : f32
        %296 = affine.max affine_map<(d0, d1, d2, d3) -> (-d1, d1, d2 * 32 + 8, d2 * 32)>(%c6, %c10, %116, %57)
        %297 = math.exp2 %expanded : tensor<5x5x5x1xf16>
        %298 = math.roundeven %cst_0 : f32
        memref.store %extracted_30, %alloc_6[%c9] : memref<12xi16>
        %299 = math.roundeven %25 : tensor<5x5x5xf16>
        %300 = index.casts %118 : index to i32
        %301 = index.maxu %282, %180
        scf.condition(%true_27) %arg3 : i1
      } do {
      ^bb0(%arg3: i1):
        %295 = math.tan %1 : tensor<5x5x5xf32>
        %296 = vector.broadcast %out : i64 to vector<10xi64>
        %297 = math.roundeven %17 : tensor<5x5x5xf32>
        vector.print %188 : vector<9xi1>
        %298 = arith.xori %c1152786613_i32, %c1152786613_i32 : i32
        %299 = math.log1p %1 : tensor<5x5x5xf32>
        %300 = math.round %25 : tensor<5x5x5xf16>
        %301 = arith.muli %false, %true_1 : i1
        %302 = vector.broadcast %c1776638744_i64 : i64 to vector<12x12xi64>
        %303 = vector.transfer_write %302, %6[%111, %220, %24] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<12x12xi64>, tensor<5x12x9xi64>
        %304 = math.log10 %4 : tensor<10xf16>
        %305 = arith.cmpf uno, %cst_2, %cst_2 : f16
        %306 = arith.shrsi %c175706005_i64, %c175706005_i64 : i64
        %307 = arith.floordivsi %c630031197_i64, %c175706005_i64 : i64
        %308 = math.atan2 %cst_0, %extracted : f32
        %309 = index.sub %166, %c1
        bufferization.dealloc_tensor %from_elements_29 : tensor<10xi32>
        scf.yield %false : i1
      }
      %generated = tensor.generate %167 {
      ^bb0(%arg3: index):
        %295 = math.fpowi %cst, %c1152786613_i32 : f32, i32
        %296 = math.log2 %1 : tensor<5x5x5xf32>
        %297 = math.ceil %4 : tensor<10xf16>
        %298 = arith.maxf %cst, %67 : f32
        tensor.yield %extracted_30 : i16
      } : tensor<?xi16>
      %true_50 = index.bool.constant true
      %289 = arith.remf %extracted, %67 : f32
      %collapsed_51 = tensor.collapse_shape %from_elements_34 [[0, 1], [2]] : tensor<5x12x9xi64> into tensor<60x9xi64>
      %290 = math.copysign %17, %1 : tensor<5x5x5xf32>
      %expanded_52 = tensor.expand_shape %13 [[0], [1], [2, 3]] : tensor<5x12x9xi16> into tensor<5x12x9x1xi16>
      %291 = math.roundeven %4 : tensor<10xf16>
      %alloc_53 = memref.alloc() : memref<i64>
      memref.tensor_store %20, %alloc_53 : memref<i64>
      %292 = math.tanh %4 : tensor<10xf16>
      %293 = scf.index_switch %279 -> f16 
      case 1 {
        %295 = index.castu %true_25 : i1 to index
        %296 = vector.transpose %211, [0] : vector<10xf32> to vector<10xf32>
        %297 = arith.muli %62, %62 : i16
        %298 = vector.extract %189[6] : vector<9xf16>
        %299 = math.atan %143 : tensor<5x5x5xf16>
        %300 = arith.muli %false_23, %152 : i1
        %301 = vector.broadcast %c-31995_i16 : i16 to vector<12xi16>
        %302 = math.roundeven %expanded : tensor<5x5x5x1xf16>
        %303 = vector.load %alloc_11[%c2] : memref<12xf32>, vector<5x5x5xf32>
        %304 = arith.floordivsi %true, %true_27 : i1
        %cst_54 = arith.constant 5.817600e+04 : f16
        %extracted_55 = tensor.extract %3[%c6] : tensor<10xi32>
        %c196621716_i32 = arith.constant 196621716 : i32
        %305 = math.tanh %splat : tensor<10xf32>
        %306 = vector.load %alloc_12[%c4, %c3, %c4] : memref<5x12x9xf16>, vector<5x12x9xf16>
        %307 = arith.remf %extracted, %cst_0 : f32
        scf.yield %cst_2 : f16
      }
      case 2 {
        %295 = math.tanh %splat_39 : tensor<5x5x5xf32>
        %296 = arith.remui %c1688055617_i64, %c1688055617_i64 : i64
        %297 = arith.divsi %c630031197_i64, %c630031197_i64 : i64
        %true_54 = index.bool.constant true
        %298 = arith.minui %out, %c1187419239_i64 : i64
        %c22 = arith.constant 22 : index
        %extracted_55 = tensor.extract %268[%c22, %c5] : tensor<25x12xi16>
        %299 = vector.broadcast %67 : f32 to vector<5x5x5xf32>
        %300 = vector.fma %299, %299, %299 : vector<5x5x5xf32>
        %301 = math.tanh %cst_0 : f32
        %302 = arith.remf %cst, %extracted : f32
        %303 = arith.minf %67, %cst : f32
        %304 = memref.realloc %alloc_20 : memref<12xi64> to memref<5xi64>
        %305 = arith.remf %cst, %extracted : f32
        %306 = affine.max affine_map<(d0, d1, d2) -> (d2 * 64, d1 - d2 * 64 - 8, d2 * 64, d2 * 16 + d1 - d2 * 64 - 8)>(%179, %162, %57)
        %307 = math.atan2 %cst_2, %cst_2 : f16
        %inserted_56 = tensor.insert %62 into %cast_37[%c0, %c0, %c0] : tensor<?x?x?xi16>
        %308 = memref.realloc %alloc_8 : memref<12xi64> to memref<10xi64>
        scf.yield %cst_2 : f16
      }
      default {
        %295 = arith.divsi %true_1, %true_1 : i1
        %296 = arith.xori %false_23, %true_50 : i1
        %alloc_54 = memref.alloc() : memref<10xi1>
        %297 = arith.shrsi %c175706005_i64, %c630031197_i64 : i64
        %true_55 = index.bool.constant true
        %298 = vector.transpose %100, [0] : vector<10xf32> to vector<10xf32>
        %299 = math.log10 %4 : tensor<10xf16>
        %300 = bufferization.clone %alloc_19 : memref<9xi16> to memref<9xi16>
        %301 = vector.broadcast %extracted : f32 to vector<10xf32>
        %302 = vector.fma %301, %211, %212 : vector<10xf32>
        %303 = vector.load %alloc_11[%c9] : memref<12xf32>, vector<12xf32>
        %304 = arith.minsi %62, %extracted_30 : i16
        %alloca_56 = memref.alloca() : memref<12xi1>
        %305 = arith.mulf %extracted, %cst : f32
        %306 = math.ctlz %collapsed_51 : tensor<60x9xi64>
        %307 = math.tan %1 : tensor<5x5x5xf32>
        %308 = vector.insertelement %extracted_30, %283[%57 : index] : vector<12xi16>
        scf.yield %cst_2 : f16
      }
      %294 = index.casts %26 : index to i32
      linalg.yield %c1776638744_i64 : i64
    } -> tensor<5x12x9xi64>
    %247 = arith.minui %false_23, %true_1 : i1
    %248 = arith.addi %true, %true_27 : i1
    %collapsed_45 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<5x5x5xi1> into tensor<25x5xi1>
    %249 = math.absi %9 : tensor<5x5x5xi1>
    %250 = arith.remf %cst, %67 : f32
    memref.alloca_scope  {
      %268 = index.sizeof
      %269 = arith.remf %extracted, %67 : f32
      %270 = arith.addi %c1152786613_i32, %c1152786613_i32 : i32
      %271 = math.tanh %25 : tensor<5x5x5xf16>
      scf.execute_region {
        %293 = vector.broadcast %c11230_i16 : i16 to vector<5xi16>
        %294 = vector.transfer_write %293, %7[%179, %97, %167] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xi16>, tensor<5x5x5xi16>
        %cast_53 = tensor.cast %from_elements_29 : tensor<10xi32> to tensor<?xi32>
        %295 = arith.maxsi %extracted_30, %62 : i16
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %187, %187, %cst_2 : vector<9xf16>, vector<9xf16> into f16
        %collapsed_54 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<5x5x5xf32> into tensor<25x5xf32>
        %alloc_55 = memref.alloc() : memref<10xi1>
        memref.tensor_store %11, %alloc_55 : memref<10xi1>
        %297 = vector.load %alloc_14[%c8] : memref<10xi64>, vector<5x5x5xi64>
        %298 = affine.max affine_map<(d0, d1) -> (d1 * 2 + d1 - d0 floordiv 128, (d0 - 1) floordiv 128)>(%209, %88)
        %299 = arith.maxsi %c11230_i16, %c11230_i16 : i16
        %300 = arith.minui %152, %true : i1
        %301 = index.divs %107, %c11
        %302 = arith.addi %true_1, %true_27 : i1
        %303 = math.exp2 %extracted : f32
        %304 = affine.apply affine_map<(d0, d1, d2) -> (-d1)>(%c2, %97, %179)
        %305 = math.exp2 %4 : tensor<10xf16>
        %306 = index.maxs %232, %179
        scf.yield
      }
      %272 = index.maxu %95, %24
      %273 = arith.addf %67, %67 : f32
      %274 = arith.addi %false_23, %152 : i1
      %275 = index.castu %c1187419239_i64 : i64 to index
      %276 = math.atan2 %124, %124 : tensor<5x12x9xf32>
      %277 = vector.reduction <mul>, %19 : vector<9xi64> into i64
      %278 = arith.divf %cst, %67 : f32
      %true_48 = index.bool.constant true
      %collapsed_49 = tensor.collapse_shape %143 [[0, 1], [2]] : tensor<5x5x5xf16> into tensor<25x5xf16>
      %279 = math.tanh %124 : tensor<5x12x9xf32>
      %280 = math.expm1 %12 : tensor<5x12x9xf16>
      %alloc_50 = memref.alloc() : memref<10xi1>
      memref.tensor_store %from_elements, %alloc_50 : memref<10xi1>
      %281 = math.absi %152 : i1
      %282 = arith.shrsi %c630031197_i64, %c1776638744_i64 : i64
      %283 = tensor.empty() : tensor<12xi64>
      %284 = vector.reduction <maxsi>, %185 : vector<5xi16> into i16
      %cast_51 = tensor.cast %3 : tensor<10xi32> to tensor<?xi32>
      %285 = scf.index_switch %c10 -> vector<10xf32> 
      case 1 {
        %293 = math.powf %splat_39, %1 : tensor<5x5x5xf32>
        %alloc_53 = memref.alloc() : memref<12xi16>
        memref.copy %alloc_6, %alloc_53 : memref<12xi16> to memref<12xi16>
        %294 = math.atan2 %splat, %splat : tensor<10xf32>
        %295 = vector.maskedload %alloc_16[%c1], %188, %188 : memref<12xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %296 = arith.remf %cst_0, %extracted : f32
        %297 = math.sqrt %16 : tensor<5x5x5xf32>
        bufferization.dealloc_tensor %3 : tensor<10xi32>
        %298 = math.rsqrt %4 : tensor<10xf16>
        %299 = vector.broadcast %67 : f32 to vector<5x12x9xf32>
        %300 = vector.fma %299, %299, %299 : vector<5x12x9xf32>
        %301 = vector.broadcast %220 : index to vector<12xindex>
        %302 = vector.broadcast %false_23 : i1 to vector<12xi1>
        vector.scatter %alloc_4[%c3] [%301], %302, %129 : memref<12xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
        %303 = index.divs %203, %c7
        %304 = arith.shli %c637244042_i64, %c1187419239_i64 : i64
        %rank_54 = tensor.rank %15 : tensor<5x12x9xi64>
        %305 = vector.flat_transpose %189 {columns = 3 : i32, rows = 3 : i32} : vector<9xf16> -> vector<9xf16>
        %306 = math.round %67 : f32
        %307 = arith.floordivsi %false_23, %152 : i1
        scf.yield %211 : vector<10xf32>
      }
      case 2 {
        %293 = vector.broadcast %c1152786613_i32 : i32 to vector<12x9x12x9xi32>
        %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %55, %55, %293 : vector<5x12x9xi32>, vector<5x12x9xi32> into vector<12x9x12x9xi32>
        %295 = math.exp2 %4 : tensor<10xf16>
        %296 = arith.xori %c630031197_i64, %c630031197_i64 : i64
        %297 = math.sqrt %extracted : f32
        %298 = math.absf %cst_2 : f16
        %299 = index.add %203, %97
        %expanded_53 = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<5x5x5xi1> into tensor<5x5x5x1xi1>
        %alloc_54 = memref.alloc() : memref<5x12x9xf16>
        memref.copy %alloc_12, %alloc_54 : memref<5x12x9xf16> to memref<5x12x9xf16>
        %300 = arith.shli %c1776638744_i64, %c630031197_i64 : i64
        %301 = arith.cmpi ule, %true_25, %true_1 : i1
        %302 = vector.broadcast %cst_0 : f32 to vector<f32>
        %303 = vector.transfer_write %302, %1[%220, %80, %c2] : vector<f32>, tensor<5x5x5xf32>
        %304 = arith.minf %cst_2, %cst_2 : f16
        %305 = math.ctpop %false_23 : i1
        %306 = arith.minsi %c298900548_i64, %c1776638744_i64 : i64
        %307 = math.powf %cst_2, %cst_2 : f16
        %308 = arith.mulf %cst, %cst : f32
        scf.yield %212 : vector<10xf32>
      }
      case 3 {
        %splat_53 = tensor.splat %c1152786613_i32 : tensor<5x5x5xi32>
        %extracted_54 = tensor.extract %2[%c5] : tensor<10xi64>
        %293 = vector.broadcast %extracted : f32 to vector<12xf32>
        %294 = vector.fma %293, %293, %293 : vector<12xf32>
        %295 = index.add %97, %35
        %296 = vector.insertelement %67, %294[%70 : index] : vector<12xf32>
        %297 = vector.splat %c1152786613_i32 : vector<12xi32>
        %true_55 = index.bool.constant true
        %298 = math.absi %collapsed_28 : tensor<125xi16>
        %true_56 = index.bool.constant true
        %splat_57 = tensor.splat %c1776638744_i64 : tensor<5x5x5xi64>
        %299 = math.tan %cst_0 : f32
        %300 = bufferization.to_memref %splat : memref<10xf32>
        %301 = math.exp %collapsed_49 : tensor<25x5xf16>
        %302 = memref.realloc %alloc_19 : memref<9xi16> to memref<5xi16>
        %splat_58 = tensor.splat %false : tensor<12xi1>
        %303 = index.castu %214 : index to i32
        scf.yield %100 : vector<10xf32>
      }
      default {
        %293 = math.atan %25 : tensor<5x5x5xf16>
        %294 = index.sizeof
        %295 = tensor.empty(%162) : tensor<?xf32>
        %expanded_53 = tensor.expand_shape %collapsed_49 [[0], [1, 2]] : tensor<25x5xf16> into tensor<25x5x1xf16>
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %205, %205, %cst_2 : vector<12xf16>, vector<12xf16> into f16
        %alloca_54 = memref.alloca() : memref<12xi1>
        %297 = bufferization.clone %alloc_17 : memref<5x12x9xi16> to memref<5x12x9xi16>
        %298 = arith.mulf %cst, %extracted : f32
        %299 = vector.broadcast %88 : index to vector<5xindex>
        %300 = vector.broadcast %c637244042_i64 : i64 to vector<5xi64>
        vector.scatter %alloc_8[%c0] [%299], %216, %300 : memref<12xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
        %301 = math.tanh %12 : tensor<5x12x9xf16>
        %302 = vector.broadcast %167 : index to vector<5xindex>
        vector.scatter %alloc_10[%c2, %c7, %c7] [%302], %216, %216 : memref<5x12x9xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
        %303 = math.ctpop %2 : tensor<10xi64>
        %304 = arith.muli %c637244042_i64, %c630031197_i64 : i64
        %305 = arith.divsi %c1776638744_i64, %c630031197_i64 : i64
        %306 = math.round %1 : tensor<5x5x5xf32>
        %307 = index.add %c9, %118
        scf.yield %100 : vector<10xf32>
      }
      %true_52 = index.bool.constant true
      %286 = index.ceildivu %110, %81
      %287 = math.expm1 %67 : f32
      %288 = arith.xori %c1688055617_i64, %c298900548_i64 : i64
      memref.copy %alloc_5, %alloc_9 : memref<5x12x9xf32> to memref<5x12x9xf32>
      %289 = index.maxu %c14, %137
      %290 = arith.remf %cst_2, %cst_2 : f16
      %291 = vector.broadcast %true_52 : i1 to vector<10xi1>
      %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %212, %100, %cst_0 : vector<10xf32>, vector<10xf32> into f32
    }
    %251 = index.add %147, %c11
    %252 = index.divs %57, %74
    %253 = index.sub %c8, %220
    %254 = vector.broadcast %true_25 : i1 to vector<5x12x9xi1>
    %255 = math.roundeven %17 : tensor<5x5x5xf32>
    %256 = index.castu %c11230_i16 : i16 to index
    %257 = index.casts %c1688055617_i64 : i64 to index
    %258 = arith.xori %c1776638744_i64, %c1688055617_i64 : i64
    %259 = vector.extract %205[8] : vector<12xf16>
    %rank_46 = tensor.rank %21 : tensor<i64>
    %260 = vector.transpose %185, [0] : vector<5xi16> to vector<5xi16>
    %261 = math.ipowi %108, %108 : tensor<25x10xi16>
    %262 = math.exp2 %1 : tensor<5x5x5xf32>
    %263 = tensor.empty() : tensor<5x5x5xi16>
    %264 = linalg.copy ins(%7 : tensor<5x5x5xi16>) outs(%263 : tensor<5x5x5xi16>) -> tensor<5x5x5xi16>
    %alloc_47 = memref.alloc() : memref<5x5x5xi1>
    linalg.transpose ins(%9 : tensor<5x5x5xi1>) outs(%alloc_47 : memref<5x5x5xi1>) permutation = [2, 0, 1] 
    %265 = tensor.empty() : tensor<i16>
    %reduced = linalg.reduce ins(%alloc_22 : memref<10xi16>) outs(%265 : tensor<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %268 = arith.addi %true_1, %152 : i1
        %269 = math.round %splat_39 : tensor<5x5x5xf32>
        %270 = index.divu %37, %rank_38
        %271 = math.sqrt %cst_2 : f16
        %272 = vector.insertelement %extracted, %100[%c10 : index] : vector<10xf32>
        %273 = vector.shuffle %254, %54 [0, 2, 4, 5, 6, 9] : vector<5x12x9xi1>, vector<5x12x9xi1>
        %274 = math.tanh %1 : tensor<5x5x5xf32>
        %275 = math.absi %11 : tensor<10xi1>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %266 = scf.parallel (%arg3, %arg4) = (%c3, %c2) to (%147, %c5) step (%c1, %c1) init (%0) -> tensor<5x5x5xi16> {
      %268 = arith.cmpi slt, %c-31995_i16, %c-31995_i16 : i16
      %269 = memref.atomic_rmw assign %c637244042_i64, %alloc_14[%c6] : (i64, memref<10xi64>) -> i64
      %270 = arith.minui %c637244042_i64, %c1187419239_i64 : i64
      %271 = memref.load %alloc[%c2, %c2, %c0] : memref<5x5x5xf32>
      %272 = math.atan %4 : tensor<10xf16>
      %273 = vector.flat_transpose %216 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
      %274 = arith.divsi %c1776638744_i64, %c298900548_i64 : i64
      %275 = arith.addf %cst_2, %cst_2 : f16
      %276 = vector.broadcast %false_23 : i1 to vector<5x5x5xi1>
      %277 = math.log10 %1 : tensor<5x5x5xf32>
      %278 = arith.divsi %c-31995_i16, %62 : i16
      %279 = bufferization.to_memref %20 : memref<i64>
      %280 = math.copysign %extracted, %cst : f32
      %inserted_48 = tensor.insert %cst_2 into %4[%c6] : tensor<10xf16>
      %generated = tensor.generate %256, %36, %c4 {
      ^bb0(%arg5: index, %arg6: index, %arg7: index):
        %alloc_49 = memref.alloc() : memref<5x9xi16>
        %283 = tensor.empty() : tensor<25x9xi16>
        %284 = linalg.matmul ins(%collapsed_42, %alloc_49 : tensor<25x5xi16>, memref<5x9xi16>) outs(%283 : tensor<25x9xi16>) -> tensor<25x9xi16>
        %285 = math.tanh %4 : tensor<10xf16>
        %collapsed_50 = tensor.collapse_shape %143 [[0, 1], [2]] : tensor<5x5x5xf16> into tensor<25x5xf16>
        bufferization.dealloc_tensor %collapsed : tensor<25x5xi16>
        tensor.yield %67 : f32
      } : tensor<?x?x?xf32>
      %281 = arith.xori %true_27, %true : i1
      %282 = tensor.empty() : tensor<5x5x5xi16>
      scf.reduce(%282)  : tensor<5x5x5xi16> {
      ^bb0(%arg5: tensor<5x5x5xi16>, %arg6: tensor<5x5x5xi16>):
        %283 = index.sub %162, %rank_38
        bufferization.dealloc_tensor %265 : tensor<i16>
        %284 = memref.atomic_rmw andi %c298900548_i64, %alloc_20[%c9] : (i64, memref<12xi64>) -> i64
        %285 = math.expm1 %extracted : f32
        %286 = arith.mulf %cst, %extracted : f32
        %287 = math.ceil %12 : tensor<5x12x9xf16>
        %288 = vector.broadcast %cst : f32 to vector<12xf32>
        %289 = vector.fma %288, %128, %288 : vector<12xf32>
        %290 = vector.broadcast %true_1 : i1 to vector<12xi1>
        %291 = vector.maskedload %alloc_12[%c3, %c4, %c2], %290, %205 : memref<5x12x9xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        %292 = tensor.empty() : tensor<5x5x5xi16>
        scf.reduce.return %292 : tensor<5x5x5xi16>
      }
      scf.yield
    }
    %267 = affine.vector_load %alloc_22[%177] : memref<10xi16>, vector<12xi16>
    affine.vector_store %129, %alloc_4[%166] : memref<12xf32>, vector<12xf32>
    vector.print %19 : vector<9xi64>
    vector.print %34 : vector<10xf32>
    vector.print %53 : vector<5x12x9xi16>
    vector.print %54 : vector<5x12x9xi1>
    vector.print %55 : vector<5x12x9xi32>
    vector.print %56 : vector<5x12x9xi16>
    vector.print %65 : vector<5xi16>
    vector.print %83 : vector<5x12x9xi64>
    vector.print %100 : vector<10xf32>
    vector.print %102 : vector<10xi64>
    vector.print %117 : vector<5x12x9xf32>
    vector.print %128 : vector<12xf32>
    vector.print %129 : vector<12xf32>
    vector.print %165 : vector<i16>
    vector.print %181 : vector<5x12x9xi32>
    vector.print %182 : vector<9xi16>
    vector.print %183 : vector<5x12x9xi16>
    vector.print %185 : vector<5xi16>
    vector.print %187 : vector<9xf16>
    vector.print %188 : vector<9xi1>
    vector.print %189 : vector<9xf16>
    vector.print %201 : vector<i16>
    vector.print %205 : vector<12xf16>
    vector.print %211 : vector<10xf32>
    vector.print %212 : vector<10xf32>
    vector.print %215 : vector<5xf32>
    vector.print %216 : vector<5xi1>
    vector.print %217 : vector<5xf32>
    vector.print %254 : vector<5x12x9xi1>
    vector.print %267 : vector<12xi16>
    vector.print %cst : f32
    vector.print %c11230_i16 : i16
    vector.print %cst_0 : f32
    vector.print %c1776638744_i64 : i64
    vector.print %true : i1
    vector.print %c630031197_i64 : i64
    vector.print %c-31995_i16 : i16
    vector.print %c1187419239_i64 : i64
    vector.print %c1688055617_i64 : i64
    vector.print %c637244042_i64 : i64
    vector.print %false : i1
    vector.print %c175706005_i64 : i64
    vector.print %true_1 : i1
    vector.print %c1152786613_i32 : i32
    vector.print %cst_2 : f16
    vector.print %c298900548_i64 : i64
    vector.print %extracted : f32
    vector.print %62 : i16
    vector.print %67 : f32
    vector.print %false_23 : i1
    vector.print %true_25 : i1
    vector.print %true_27 : i1
    vector.print %extracted_30 : i16
    vector.print %152 : i1
    return
  }
}
