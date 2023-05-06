module {
  func.func private @func1(%arg0: vector<7x15xi1>, %arg1: vector<7xf32>, %arg2: memref<7x16x7xf16>) {
    %true = arith.constant true
    %cst = arith.constant 2.14249024E+9 : f32
    %c1430998724_i64 = arith.constant 1430998724 : i64
    %c-24694_i16 = arith.constant -24694 : i16
    %c-625_i16 = arith.constant -625 : i16
    %c-8096_i16 = arith.constant -8096 : i16
    %false = arith.constant false
    %c1523413605_i32 = arith.constant 1523413605 : i32
    %c1830459008_i32 = arith.constant 1830459008 : i32
    %cst_0 = arith.constant 5.843200e+04 : f16
    %c1889544616_i64 = arith.constant 1889544616 : i64
    %true_1 = arith.constant true
    %c10966_i16 = arith.constant 10966 : i16
    %cst_2 = arith.constant 3.044800e+04 : f16
    %c859027372_i32 = arith.constant 859027372 : i32
    %cst_3 = arith.constant 6.336000e+04 : f16
    %0 = tensor.empty() : tensor<7xf16>
    %1 = tensor.empty() : tensor<7xf32>
    %2 = tensor.empty() : tensor<7x16x7xi64>
    %3 = tensor.empty() : tensor<7xf32>
    %4 = tensor.empty() : tensor<7x16x7xi16>
    %5 = tensor.empty() : tensor<7x16x7xi32>
    %6 = tensor.empty() : tensor<7xi32>
    %7 = tensor.empty() : tensor<7xf16>
    %8 = tensor.empty() : tensor<7x16x7xi64>
    %9 = tensor.empty() : tensor<7xi1>
    %10 = tensor.empty() : tensor<7x16x7xi32>
    %11 = tensor.empty() : tensor<7x15xf32>
    %12 = tensor.empty() : tensor<7xi16>
    %13 = tensor.empty() : tensor<7xi64>
    %14 = tensor.empty() : tensor<7x15xi16>
    %15 = tensor.empty() : tensor<7xf16>
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
    %alloc = memref.alloc() : memref<7x15xf32>
    %alloc_4 = memref.alloc() : memref<7xf16>
    %alloc_5 = memref.alloc() : memref<7x16x7xf16>
    %alloc_6 = memref.alloc() : memref<7x16x7xf32>
    %alloc_7 = memref.alloc() : memref<7xi64>
    %alloc_8 = memref.alloc() : memref<7xi32>
    %alloc_9 = memref.alloc() : memref<7xf16>
    %alloc_10 = memref.alloc() : memref<7xf32>
    %alloc_11 = memref.alloc() : memref<7x16x7xi16>
    %alloc_12 = memref.alloc() : memref<7x15xi16>
    %alloc_13 = memref.alloc() : memref<7xi16>
    %alloc_14 = memref.alloc() : memref<7xi16>
    %alloc_15 = memref.alloc() : memref<7xi16>
    %alloc_16 = memref.alloc() : memref<7x15xi16>
    %alloc_17 = memref.alloc() : memref<7x16x7xi16>
    %alloc_18 = memref.alloc() : memref<7x16x7xi32>
    %16 = tensor.empty() : tensor<7x16x7xi32>
    %17 = linalg.copy ins(%5 : tensor<7x16x7xi32>) outs(%16 : tensor<7x16x7xi32>) -> tensor<7x16x7xi32>
    %18 = tensor.empty() : tensor<7xi16>
    %transposed = linalg.transpose ins(%12 : tensor<7xi16>) outs(%18 : tensor<7xi16>) permutation = [0] 
    %19 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%1 : tensor<7xf32>) outs(%19 : tensor<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %248 = math.atan %1 : tensor<7xf32>
        %249 = arith.ceildivsi %false, %true_1 : i1
        %250 = math.ceil %cst_2 : f16
        %251 = arith.cmpi sle, %c1430998724_i64, %c1889544616_i64 : i64
        %252 = arith.subi %c1430998724_i64, %c1430998724_i64 : i64
        %253 = math.fma %in, %in, %cst : f32
        %254 = arith.maxsi %c-625_i16, %c10966_i16 : i16
        %255 = math.expm1 %7 : tensor<7xf16>
        %cst_39 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_39 : f32
      }
    %20 = scf.parallel (%arg3) = (%c15) to (%c13) step (%c3) init (%alloc_13) -> memref<7xi16> {
      %248 = memref.realloc %alloc_14 : memref<7xi16> to memref<7xi16>
      %249 = vector.broadcast %false : i1 to vector<7xi1>
      %250 = vector.shuffle %249, %249 [0, 1, 2, 3, 5] : vector<7xi1>, vector<7xi1>
      %251 = vector.broadcast %c1430998724_i64 : i64 to vector<1xi64>
      %252 = vector.extract_strided_slice %251 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
      %cst_39 = arith.constant 1.000000e+00 : f32
      %cst_40 = arith.constant 0.000000e+00 : f32
      %253 = vector.transfer_read %1[%c3], %cst_40 : tensor<7xf32>, vector<f32>
      %254 = math.atan %cst_0 : f16
      %255 = index.add %c1, %c7
      %256 = math.exp2 %1 : tensor<7xf32>
      %257 = arith.remsi %true, %true_1 : i1
      %258 = memref.load %alloc_12[%c4, %c8] : memref<7x15xi16>
      %259 = math.roundeven %7 : tensor<7xf16>
      %260 = arith.maxui %c859027372_i32, %c1830459008_i32 : i32
      %261 = arith.negf %cst_39 : f32
      %262 = math.sqrt %7 : tensor<7xf16>
      %263 = affine.for %arg4 = 0 to 116 iter_args(%arg5 = %true) -> (i1) {
        affine.yield %arg5 : i1
      }
      %264 = vector.load %alloc_17[%c6, %c4, %c2] : memref<7x16x7xi16>, vector<7xi16>
      memref.store %cst_39, %alloc_10[%c4] : memref<7xf32>
      %alloc_41 = memref.alloc() : memref<7xi16>
      scf.reduce(%alloc_41)  : memref<7xi16> {
      ^bb0(%arg4: memref<7xi16>, %arg5: memref<7xi16>):
        %265 = index.floordivs %c15, %c14
        %266 = vector.broadcast %cst_39 : f32 to vector<7x15xf32>
        %267 = vector.fma %266, %266, %266 : vector<7x15xf32>
        %268 = math.roundeven %cst_39 : f32
        %269 = math.cttz %c-24694_i16 : i16
        %270 = index.sub %c13, %255
        %271 = math.roundeven %cst_0 : f16
        %272 = math.fpowi %3, %6 : tensor<7xf32>, tensor<7xi32>
        %273 = math.round %cst : f32
        %alloc_42 = memref.alloc() : memref<7xi16>
        scf.reduce.return %alloc_42 : memref<7xi16>
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_4[%c5] : memref<7xf16>, vector<16xf16>
    affine.vector_store %21, %alloc_4[%c2] : memref<7xf16>, vector<16xf16>
    %alloc_19 = memref.alloc() : memref<7xf16>
    %22 = tensor.empty() : tensor<f16>
    %23 = linalg.dot ins(%15, %alloc_19 : tensor<7xf16>, memref<7xf16>) outs(%22 : tensor<f16>) -> tensor<f16>
    scf.execute_region {
      %248 = math.exp2 %7 : tensor<7xf16>
      %rank_39 = tensor.rank %5 : tensor<7x16x7xi32>
      %249 = vector.splat %c10 : vector<7x15xindex>
      %250 = index.ceildivu %c4, %c11
      %251 = vector.broadcast %cst : f32 to vector<7xf32>
      %252 = vector.fma %251, %251, %251 : vector<7xf32>
      %253 = vector.splat %cst_0 : vector<7x16x7xf16>
      %254 = arith.remsi %c10966_i16, %c-625_i16 : i16
      %255 = vector.bitcast %251 : vector<7xf32> to vector<7xf32>
      %256 = vector.broadcast %cst : f32 to vector<7x7xf32>
      %257 = vector.outerproduct %255, %255, %256 {kind = #vector.kind<minf>} : vector<7xf32>, vector<7xf32>
      %258 = index.sizeof
      %259 = arith.remsi %true, %true_1 : i1
      %260 = tensor.empty() : tensor<15x7xi16>
      %261 = tensor.empty() : tensor<7x7xi16>
      %262 = linalg.matmul ins(%14, %260 : tensor<7x15xi16>, tensor<15x7xi16>) outs(%261 : tensor<7x7xi16>) -> tensor<7x7xi16>
      %263 = vector.broadcast %cst : f32 to vector<7x7xf32>
      %264 = vector.outerproduct %251, %252, %263 {kind = #vector.kind<minf>} : vector<7xf32>, vector<7xf32>
      %265 = math.ctpop %c1889544616_i64 : i64
      %266 = arith.remui %c1830459008_i32, %c859027372_i32 : i32
      %267 = arith.negf %cst_3 : f16
      scf.yield
    }
    %24 = vector.multi_reduction <maxf>, %21, %21 [] : vector<16xf16> to vector<16xf16>
    %25 = math.ctpop %9 : tensor<7xi1>
    %26 = index.maxu %c12, %c9
    %27 = math.roundeven %reduced : tensor<f32>
    %28 = arith.addi %c-8096_i16, %c10966_i16 : i16
    %29 = arith.mulf %cst_2, %cst_0 : f16
    bufferization.dealloc_tensor %12 : tensor<7xi16>
    %30 = index.castu %c11 : index to i32
    %31 = math.log1p %cst_0 : f16
    %32 = memref.load %alloc_10[%c0] : memref<7xf32>
    %cast = tensor.cast %9 : tensor<7xi1> to tensor<?xi1>
    %rank = tensor.rank %23 : tensor<f16>
    %33 = arith.ceildivsi %c-24694_i16, %c-24694_i16 : i16
    %34 = arith.minui %c-24694_i16, %c-8096_i16 : i16
    %35 = arith.minui %c1523413605_i32, %c859027372_i32 : i32
    %collapsed = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<7x16x7xi64> into tensor<112x7xi64>
    %36 = arith.ceildivsi %true_1, %false : i1
    %37 = bufferization.to_memref %18 : memref<7xi16>
    %38 = memref.atomic_rmw maxs %c-8096_i16, %alloc_16[%c2, %c13] : (i16, memref<7x15xi16>) -> i16
    %39 = math.tan %11 : tensor<7x15xf32>
    %40 = index.castu %false : i1 to index
    %41 = arith.negf %cst_0 : f16
    %42 = index.divu %rank, %c13
    %43 = math.exp2 %1 : tensor<7xf32>
    %44 = math.sqrt %19 : tensor<f32>
    %45 = vector.splat %c1430998724_i64 : vector<7xi64>
    %46 = math.atan %15 : tensor<7xf16>
    %47 = arith.andi %true, %true : i1
    %48 = tensor.empty() : tensor<7xf16>
    memref.alloca_scope  {
      %c0_i16 = arith.constant 0 : i16
      %248 = vector.transfer_read %14[%c15, %c15], %c0_i16 : tensor<7x15xi16>, vector<15xi16>
      %249 = math.roundeven %19 : tensor<f32>
      %250 = vector.broadcast %c1830459008_i32 : i32 to vector<7x16x7xi32>
      %251 = arith.remf %cst_3, %cst_2 : f16
      %252 = index.sub %rank, %40
      %253 = arith.negf %cst_0 : f16
      %alloc_39 = memref.alloc() : memref<15x7xf32>
      %254 = tensor.empty() : tensor<7x7xf32>
      %255 = linalg.matmul ins(%11, %alloc_39 : tensor<7x15xf32>, memref<15x7xf32>) outs(%254 : tensor<7x7xf32>) -> tensor<7x7xf32>
      %256 = affine.load %alloc_12[%c4, %c8] : memref<7x15xi16>
      %257 = arith.mulf %cst, %cst : f32
      %258 = vector.bitcast %250 : vector<7x16x7xi32> to vector<7x16x7xf32>
      memref.tensor_store %10, %alloc_18 : memref<7x16x7xi32>
      %259 = vector.broadcast %cst : f32 to vector<16x7xf32>
      %260 = vector.multi_reduction <minf>, %258, %259 [0] : vector<7x16x7xf32> to vector<16x7xf32>
      %261 = vector.bitcast %259 : vector<16x7xf32> to vector<16x7xf32>
      %262 = math.log1p %0 : tensor<7xf16>
      %c0_i16_40 = arith.constant 0 : i16
      %c0_i16_41 = arith.constant 0 : i16
      %263 = vector.transfer_read %alloc_16[%c2, %252], %c0_i16_41 : memref<7x15xi16>, vector<i16>
      %264 = tensor.empty() : tensor<7x15xi32>
      %265 = math.fpowi %11, %264 : tensor<7x15xf32>, tensor<7x15xi32>
      %266 = math.atan %1 : tensor<7xf32>
      %267 = arith.remui %false, %true : i1
      %268 = math.atan %cst_2 : f16
      %269 = math.tan %7 : tensor<7xf16>
      %270 = arith.divf %cst, %cst : f32
      %271 = math.fpowi %3, %6 : tensor<7xf32>, tensor<7xi32>
      %272 = arith.shli %c1830459008_i32, %c1830459008_i32 : i32
      %273 = math.floor %7 : tensor<7xf16>
      %274 = index.ceildivs %rank, %40
      %275 = math.tan %cst_2 : f16
      %276 = index.ceildivu %c1, %rank
      %277 = index.floordivs %c14, %252
      %278 = arith.divsi %c-24694_i16, %c0_i16 : i16
      %279 = arith.maxui %c-24694_i16, %c10966_i16 : i16
      %280 = memref.atomic_rmw addf %cst_2, %alloc_19[%c1] : (f16, memref<7xf16>) -> f16
      %281 = memref.realloc %alloc_13 : memref<7xi16> to memref<7xi16>
    }
    %49 = index.sub %c10, %c11
    %alloc_20 = memref.alloc() : memref<7x15xi1>
    %50 = arith.subi %c10966_i16, %c-24694_i16 : i16
    %rank_21 = tensor.rank %0 : tensor<7xf16>
    memref.assume_alignment %37, 2 : memref<7xi16>
    %51 = vector.broadcast %cst_3 : f16 to vector<16x16xf16>
    %52 = vector.outerproduct %21, %21, %51 {kind = #vector.kind<minf>} : vector<16xf16>, vector<16xf16>
    %53 = index.add %c1, %c6
    %54 = arith.floordivsi %true, %true : i1
    %55 = index.floordivs %40, %c9
    %56 = arith.shli %c-625_i16, %c10966_i16 : i16
    %generated = tensor.generate %rank_21 {
    ^bb0(%arg3: index):
      bufferization.dealloc_tensor %12 : tensor<7xi16>
      %248 = arith.xori %c1430998724_i64, %c1430998724_i64 : i64
      %249 = vector.reduction <minf>, %21 : vector<16xf16> into f16
      %250 = math.exp %cst_3 : f16
      tensor.yield %c1889544616_i64 : i64
    } : tensor<?xi64>
    %57 = arith.xori %true, %true : i1
    %58 = arith.floordivsi %true, %true_1 : i1
    memref.assume_alignment %alloc_12, 1 : memref<7x15xi16>
    %59 = arith.maxf %cst_2, %cst_0 : f16
    %60 = math.cttz %18 : tensor<7xi16>
    %c1_i16 = arith.constant 1 : i16
    %61 = vector.transfer_read %alloc_14[%c15], %c1_i16 : memref<7xi16>, vector<i16>
    bufferization.dealloc_tensor %collapsed : tensor<112x7xi64>
    %62 = arith.divui %c859027372_i32, %c859027372_i32 : i32
    %63 = math.log1p %7 : tensor<7xf16>
    %64 = arith.remsi %true_1, %true : i1
    %65 = tensor.empty() : tensor<7x16x7xf16>
    %66 = arith.ceildivsi %c10966_i16, %c10966_i16 : i16
    %67 = index.ceildivu %53, %42
    %68 = bufferization.clone %alloc_11 : memref<7x16x7xi16> to memref<7x16x7xi16>
    %69 = vector.multi_reduction <mul>, %21, %cst_0 [0] : vector<16xf16> to f16
    %70 = index.castu %c1889544616_i64 : i64 to index
    %71 = math.expm1 %22 : tensor<f16>
    vector.print %21 : vector<16xf16>
    %rank_22 = tensor.rank %8 : tensor<7x16x7xi64>
    %72 = arith.shli %true, %true : i1
    %73 = vector.load %alloc_13[%c2] : memref<7xi16>, vector<7x15xi16>
    %74 = math.ceil %reduced : tensor<f32>
    %75 = arith.minsi %c-24694_i16, %c-24694_i16 : i16
    %76 = vector.broadcast %true_1 : i1 to vector<7x15xi1>
    %77 = vector.bitcast %76 : vector<7x15xi1> to vector<7x15xi1>
    memref.copy %68, %alloc_17 : memref<7x16x7xi16> to memref<7x16x7xi16>
    %78 = arith.cmpi ule, %c859027372_i32, %c1830459008_i32 : i32
    %79 = arith.addi %c1889544616_i64, %c1430998724_i64 : i64
    %alloc_23 = memref.alloc() : memref<15x7xi16>
    %80 = tensor.empty() : tensor<7x7xi16>
    %81 = linalg.matmul ins(%14, %alloc_23 : tensor<7x15xi16>, memref<15x7xi16>) outs(%80 : tensor<7x7xi16>) -> tensor<7x7xi16>
    %from_elements = tensor.from_elements %cst, %cst, %cst, %cst, %cst, %cst, %cst : tensor<7xf32>
    %82 = math.exp2 %cst_0 : f16
    memref.copy %alloc_19, %alloc_4 : memref<7xf16> to memref<7xf16>
    %83 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%10 : tensor<7x16x7xi32>) {
    ^bb0(%out: i32):
      %248 = arith.negf %cst_3 : f16
      memref.assume_alignment %37, 2 : memref<7xi16>
      %249 = arith.subi %c1830459008_i32, %c1523413605_i32 : i32
      %250 = arith.addi %c1523413605_i32, %c1523413605_i32 : i32
      %251 = vector.splat %26 : vector<7x16x7xindex>
      %252 = vector.extract_strided_slice %73 {offsets = [2], sizes = [3], strides = [1]} : vector<7x15xi16> to vector<3x15xi16>
      %253 = vector.splat %c2 : vector<7x16x7xindex>
      %254 = vector.broadcast %c-8096_i16 : i16 to vector<15xi16>
      %255 = vector.insert %254, %252 [2] : vector<15xi16> into vector<3x15xi16>
      %256 = math.expm1 %0 : tensor<7xf16>
      %257 = arith.remsi %c1830459008_i32, %c1830459008_i32 : i32
      %258 = bufferization.clone %alloc_19 : memref<7xf16> to memref<7xf16>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2, %8 : tensor<7x16x7xi64>, tensor<7x16x7xi64>) outs(%2 : tensor<7x16x7xi64>) {
      ^bb0(%in: i64, %in_40: i64, %out_41: i64):
        %279 = arith.shli %c859027372_i32, %out : i32
        %280 = vector.multi_reduction <mul>, %21, %21 [] : vector<16xf16> to vector<16xf16>
        %collapsed_42 = tensor.collapse_shape %11 [[0, 1]] : tensor<7x15xf32> into tensor<105xf32>
        %281 = math.fma %cst_3, %cst_2, %cst_3 : f16
        %282 = arith.ceildivsi %c1889544616_i64, %out_41 : i64
        %283 = index.ceildivs %c7, %c11
        %284 = index.divu %c13, %283
        %collapsed_43 = tensor.collapse_shape %11 [[0, 1]] : tensor<7x15xf32> into tensor<105xf32>
        %285 = tensor.empty() : tensor<i32>
        %286 = math.fpowi %22, %285 : tensor<f16>, tensor<i32>
        %rank_44 = tensor.rank %23 : tensor<f16>
        %287 = index.ceildivu %67, %rank
        memref.store %c-24694_i16, %alloc_12[%c5, %c13] : memref<7x15xi16>
        %288 = vector.transpose %76, [0, 1] : vector<7x15xi1> to vector<7x15xi1>
        %289 = arith.mulf %cst, %cst : f32
        %290 = arith.mulf %69, %69 : f16
        %291 = arith.minui %out, %c1830459008_i32 : i32
        %alloc_45 = memref.alloc() : memref<7xi64>
        memref.copy %alloc_7, %alloc_45 : memref<7xi64> to memref<7xi64>
        %292 = arith.shrsi %c1430998724_i64, %in_40 : i64
        memref.copy %alloc_12, %alloc_16 : memref<7x15xi16> to memref<7x15xi16>
        %293 = arith.minui %c-24694_i16, %c-8096_i16 : i16
        %294 = math.log2 %65 : tensor<7x16x7xf16>
        %295 = arith.addi %false, %true : i1
        %296 = arith.minsi %c1430998724_i64, %in : i64
        %297 = math.exp2 %reduced : tensor<f32>
        %298 = math.tan %collapsed_42 : tensor<105xf32>
        %299 = arith.maxsi %out, %c1830459008_i32 : i32
        %300 = vector.insert %c-24694_i16, %254 [8] : i16 into vector<15xi16>
        %301 = math.ctpop %14 : tensor<7x15xi16>
        %302 = math.atan %cst_0 : f16
        %rank_46 = tensor.rank %11 : tensor<7x15xf32>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_47 = arith.constant 0 : i32
        %303 = vector.transfer_read %6[%c3], %c0_i32_47 : tensor<7xi32>, vector<i32>
        %304 = vector.matrix_multiply %254, %254 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi16>, vector<15xi16>) -> vector<1xi16>
        linalg.yield %out_41 : i64
      } -> tensor<7x16x7xi64>
      %260 = arith.divsi %c859027372_i32, %c859027372_i32 : i32
      memref.store %c-625_i16, %alloc_15[%c3] : memref<7xi16>
      %261 = math.exp2 %0 : tensor<7xf16>
      %262 = tensor.empty() : tensor<7x7xi16>
      %263 = linalg.matmul ins(%80, %80 : tensor<7x7xi16>, tensor<7x7xi16>) outs(%262 : tensor<7x7xi16>) -> tensor<7x7xi16>
      bufferization.dealloc_tensor %11 : tensor<7x15xf32>
      %alloc_39 = memref.alloc() : memref<7x16x7xf32>
      %264 = math.rsqrt %from_elements : tensor<7xf32>
      %265 = memref.atomic_rmw muli %c-625_i16, %alloc_12[%c5, %c11] : (i16, memref<7x15xi16>) -> i16
      %266 = index.ceildivs %rank, %53
      %267 = affine.apply affine_map<(d0, d1) -> (d1)>(%rank, %c15)
      %268 = math.cos %15 : tensor<7xf16>
      %269 = bufferization.to_tensor %alloc_14 : memref<7xi16>
      memref.assume_alignment %alloc_17, 4 : memref<7x16x7xi16>
      %270 = tensor.empty() : tensor<15x7xi16>
      %271 = tensor.empty() : tensor<7x7xi16>
      %272 = linalg.matmul ins(%14, %270 : tensor<7x15xi16>, tensor<15x7xi16>) outs(%271 : tensor<7x7xi16>) -> tensor<7x7xi16>
      %273 = arith.negf %cst_0 : f16
      %274 = arith.addi %c1889544616_i64, %c1889544616_i64 : i64
      %275 = math.fma %0, %15, %7 : tensor<7xf16>
      %276 = arith.shrui %true_1, %true : i1
      %277 = scf.execute_region -> memref<7x16x7xf32> {
        memref.store %cst_0, %alloc_19[%c6] : memref<7xf16>
        %cast_40 = tensor.cast %7 : tensor<7xf16> to tensor<?xf16>
        %279 = arith.shli %c-24694_i16, %c10966_i16 : i16
        %cst_41 = arith.constant 1.52741747E+9 : f32
        %280 = arith.shrui %c1830459008_i32, %c1523413605_i32 : i32
        %alloc_42 = memref.alloc() : memref<15x7xf32>
        %281 = tensor.empty() : tensor<7x7xf32>
        %282 = linalg.matmul ins(%11, %alloc_42 : tensor<7x15xf32>, memref<15x7xf32>) outs(%281 : tensor<7x7xf32>) -> tensor<7x7xf32>
        %283 = arith.shli %c1430998724_i64, %c1430998724_i64 : i64
        %284 = arith.cmpf ule, %cst, %cst : f32
        %285 = vector.reduction <add>, %21 : vector<16xf16> into f16
        %286 = arith.addi %c1889544616_i64, %c1889544616_i64 : i64
        %287 = vector.broadcast %cst_3 : f16 to vector<7x15xf16>
        %288 = vector.flat_transpose %254 {columns = 5 : i32, rows = 3 : i32} : vector<15xi16> -> vector<15xi16>
        %289 = math.powf %reduced, %reduced : tensor<f32>
        %collapsed_43 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<7x16x7xi16> into tensor<112x7xi16>
        %290 = math.ceil %65 : tensor<7x16x7xf16>
        %291 = arith.mulf %cst_0, %cst_0 : f16
        scf.yield %alloc_6 : memref<7x16x7xf32>
      }
      %278 = arith.shli %c1523413605_i32, %c1523413605_i32 : i32
      linalg.yield %c1523413605_i32 : i32
    } -> tensor<7x16x7xi32>
    %84 = math.expm1 %11 : tensor<7x15xf32>
    %85 = math.exp %0 : tensor<7xf16>
    bufferization.dealloc_tensor %generated : tensor<?xi64>
    %86 = math.tan %from_elements : tensor<7xf32>
    %87 = vector.transpose %21, [0] : vector<16xf16> to vector<16xf16>
    scf.execute_region {
      %248 = arith.maxui %c1889544616_i64, %c1889544616_i64 : i64
      bufferization.dealloc_tensor %23 : tensor<f16>
      %249 = arith.addi %c-24694_i16, %c1_i16 : i16
      %250 = math.tan %7 : tensor<7xf16>
      %251 = arith.addf %cst_3, %69 : f16
      %252 = index.ceildivs %70, %49
      %253 = math.ctlz %c10966_i16 : i16
      memref.alloca_scope  {
        %alloca = memref.alloca() : memref<7xi1>
        %264 = arith.ceildivsi %c1_i16, %c10966_i16 : i16
        %265 = arith.cmpi uge, %c1830459008_i32, %c859027372_i32 : i32
        %266 = math.tan %1 : tensor<7xf32>
        %267 = tensor.empty() : tensor<15x7xi16>
        %268 = tensor.empty() : tensor<7x7xi16>
        %269 = linalg.matmul ins(%14, %267 : tensor<7x15xi16>, tensor<15x7xi16>) outs(%268 : tensor<7x7xi16>) -> tensor<7x7xi16>
        %270 = arith.remsi %c-24694_i16, %c1_i16 : i16
        %271 = math.exp2 %reduced : tensor<f32>
        %272 = index.ceildivs %67, %70
        %273 = arith.minui %true, %true : i1
        %274 = arith.shrsi %c1_i16, %c10966_i16 : i16
        %alloc_39 = memref.alloc() : memref<7x16x7xi64>
        %275 = arith.subi %c1430998724_i64, %c1430998724_i64 : i64
        %276 = arith.floordivsi %true, %false : i1
        %277 = tensor.empty() : tensor<7x15xf16>
        %278 = index.maxu %c13, %55
        %279 = bufferization.to_memref %7 : memref<7xf16>
        %280 = vector.transpose %21, [0] : vector<16xf16> to vector<16xf16>
        %splat_40 = tensor.splat %c1889544616_i64 : tensor<7x15xi64>
        %281 = math.powf %1, %3 : tensor<7xf32>
        %282 = arith.xori %c1830459008_i32, %c1523413605_i32 : i32
        %283 = arith.maxf %cst, %cst : f32
        %284 = vector.multi_reduction <add>, %21, %21 [] : vector<16xf16> to vector<16xf16>
        %285 = vector.broadcast %cst : f32 to vector<7xf32>
        %286 = vector.fma %285, %285, %285 : vector<7xf32>
        %287 = index.divu %278, %c7
        %288 = index.add %c1, %c7
        %289 = arith.minsi %c859027372_i32, %c1523413605_i32 : i32
        %290 = vector.broadcast %c1430998724_i64 : i64 to vector<i64>
        %291 = vector.transfer_write %290, %13[%278] : vector<i64>, tensor<7xi64>
        %292 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 + d0 + 8, d1 + 8, d1)>(%c7, %c15, %42, %c15)
        %293 = vector.broadcast %cst : f32 to vector<7x7xf32>
        %294 = vector.outerproduct %285, %285, %293 {kind = #vector.kind<minf>} : vector<7xf32>, vector<7xf32>
        %c1_i16_41 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %295 = vector.transfer_read %alloc_12[%26, %288], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<7x15xi16>, vector<15xi16>
        %296 = arith.remsi %c1889544616_i64, %c1889544616_i64 : i64
        %297 = arith.cmpi ne, %c1830459008_i32, %c859027372_i32 : i32
      }
      %254 = tensor.empty() : tensor<7x16xf16>
      %255 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%254 : tensor<7x16xf16>) outs(%65 : tensor<7x16x7xf16>) {
      ^bb0(%in: f16, %out: f16):
        %264 = arith.addi %c1_i16, %c-8096_i16 : i16
        %265 = tensor.empty(%55, %c11, %26) : tensor<?x?x?xi16>
        memref.tensor_store %6, %alloc_8 : memref<7xi32>
        %collapsed_39 = tensor.collapse_shape %80 [[0, 1]] : tensor<7x7xi16> into tensor<49xi16>
        %266 = affine.max affine_map<(d0, d1, d2) -> (-(d2 floordiv 16), d2 floordiv 16, -(d2 floordiv 16), d2 floordiv 16 + 32)>(%49, %c11, %40)
        %267 = arith.maxsi %c1430998724_i64, %c1889544616_i64 : i64
        vector.print %73 : vector<7x15xi16>
        %268 = arith.addi %c-625_i16, %c10966_i16 : i16
        %269 = arith.addi %c-24694_i16, %c-24694_i16 : i16
        %270 = arith.floordivsi %true, %false : i1
        %271 = math.ctlz %6 : tensor<7xi32>
        %272 = math.tan %15 : tensor<7xf16>
        %extracted = tensor.extract %9[%c1] : tensor<7xi1>
        %273 = arith.muli %extracted, %false : i1
        %274 = arith.xori %c859027372_i32, %c1830459008_i32 : i32
        %275 = math.cos %11 : tensor<7x15xf32>
        %rank_40 = tensor.rank %9 : tensor<7xi1>
        %276 = arith.cmpi ugt, %true, %false : i1
        memref.tensor_store %13, %alloc_7 : memref<7xi64>
        %277 = math.ctpop %9 : tensor<7xi1>
        %278 = bufferization.clone %68 : memref<7x16x7xi16> to memref<7x16x7xi16>
        %279 = index.divu %c12, %c13
        memref.store %cst, %alloc_6[%c4, %c6, %c6] : memref<7x16x7xf32>
        memref.assume_alignment %alloc_12, 8 : memref<7x15xi16>
        %280 = arith.floordivsi %c-625_i16, %c-24694_i16 : i16
        %281 = index.ceildivu %c15, %c10
        %282 = arith.minui %c-24694_i16, %c-625_i16 : i16
        %283 = math.sqrt %3 : tensor<7xf32>
        %284 = vector.bitcast %76 : vector<7x15xi1> to vector<7x15xi1>
        %285 = arith.floordivsi %extracted, %false : i1
        %c1_i16_41 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %286 = vector.transfer_read %80[%252, %c4], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<7x7xi16>, vector<16xi16>
        %287 = arith.floordivsi %false, %extracted : i1
        linalg.yield %cst_0 : f16
      } -> tensor<7x16x7xf16>
      %256 = index.sub %c2, %55
      memref.tensor_store %14, %alloc_16 : memref<7x15xi16>
      %257 = math.atan %19 : tensor<f32>
      %258 = math.ceil %3 : tensor<7xf32>
      %259 = vector.transpose %76, [0, 1] : vector<7x15xi1> to vector<7x15xi1>
      %260 = tensor.empty() : tensor<16xi32>
      %261 = tensor.empty() : tensor<16x7xi32>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%260, %260, %261 : tensor<16xi32>, tensor<16xi32>, tensor<16x7xi32>) outs(%16 : tensor<7x16x7xi32>) {
      ^bb0(%in: i32, %in_39: i32, %in_40: i32, %out: i32):
        %264 = memref.realloc %alloc_9 : memref<7xf16> to memref<7xf16>
        %265 = math.roundeven %0 : tensor<7xf16>
        %266 = math.sqrt %0 : tensor<7xf16>
        %267 = math.cos %0 : tensor<7xf16>
        bufferization.dealloc_tensor %14 : tensor<7x15xi16>
        %268 = math.cos %3 : tensor<7xf32>
        %269 = memref.atomic_rmw muli %c-8096_i16, %68[%c6, %c4, %c6] : (i16, memref<7x16x7xi16>) -> i16
        %270 = tensor.empty() : tensor<i32>
        %271 = math.fpowi %19, %270 : tensor<f32>, tensor<i32>
        %272 = vector.extract_strided_slice %77 {offsets = [0], sizes = [3], strides = [1]} : vector<7x15xi1> to vector<3x15xi1>
        %273 = memref.atomic_rmw assign %cst_3, %alloc_4[%c1] : (f16, memref<7xf16>) -> f16
        %274 = math.log1p %65 : tensor<7x16x7xf16>
        memref.store %c10966_i16, %alloc_12[%c6, %c6] : memref<7x15xi16>
        %275 = math.fpowi %7, %6 : tensor<7xf16>, tensor<7xi32>
        %276 = vector.broadcast %cst : f32 to vector<f32>
        %277 = vector.transfer_write %276, %11[%rank, %55] : vector<f32>, tensor<7x15xf32>
        %278 = index.ceildivs %rank_22, %c7
        %279 = vector.broadcast %cst : f32 to vector<7xf32>
        %280 = vector.fma %279, %279, %279 : vector<7xf32>
        %281 = math.log1p %48 : tensor<7xf16>
        %282 = arith.shli %out, %in_39 : i32
        %alloc_41 = memref.alloc() : memref<7xf16>
        %283 = vector.broadcast %cst : f32 to vector<7xf32>
        %284 = vector.fma %283, %283, %279 : vector<7xf32>
        %285 = tensor.empty() : tensor<15x7xi16>
        %286 = tensor.empty() : tensor<7x7xi16>
        %287 = linalg.matmul ins(%14, %285 : tensor<7x15xi16>, tensor<15x7xi16>) outs(%286 : tensor<7x7xi16>) -> tensor<7x7xi16>
        %288 = math.floor %65 : tensor<7x16x7xf16>
        %289 = arith.mulf %cst_2, %cst_0 : f16
        %collapsed_42 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<7x16x7xi32> into tensor<112x7xi32>
        %expanded = tensor.expand_shape %13 [[0, 1]] : tensor<7xi64> into tensor<7x1xi64>
        %alloc_43 = memref.alloc() : memref<112x7xi64>
        memref.tensor_store %collapsed, %alloc_43 : memref<112x7xi64>
        %290 = vector.broadcast %true : i1 to vector<15xi1>
        %291 = vector.insert %290, %77 [3] : vector<15xi1> into vector<7x15xi1>
        %292 = math.log %cst_0 : f16
        %293 = vector.broadcast %true : i1 to vector<15x15xi1>
        %294 = vector.outerproduct %290, %290, %293 {kind = #vector.kind<and>} : vector<15xi1>, vector<15xi1>
        %295 = math.roundeven %15 : tensor<7xf16>
        memref.store %cst, %alloc[%c2, %c9] : memref<7x15xf32>
        %296 = arith.minsi %c1830459008_i32, %c859027372_i32 : i32
        linalg.yield %c1523413605_i32 : i32
      } -> tensor<7x16x7xi32>
      %263 = arith.maxf %cst_0, %cst_0 : f16
      scf.yield
    }
    %88 = index.floordivs %rank_22, %c13
    %89 = math.rsqrt %11 : tensor<7x15xf32>
    %90 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<7x16x7xi16>) {
    ^bb0(%out: i16):
      %248 = index.add %c0, %c8
      %249 = arith.maxf %cst_3, %cst_0 : f16
      %250 = arith.remsi %c859027372_i32, %c859027372_i32 : i32
      %251 = scf.if %true_1 -> (i16) {
        %276 = math.tan %22 : tensor<f16>
        %cast_44 = tensor.cast %18 : tensor<7xi16> to tensor<?xi16>
        %277 = index.castu %26 : index to i32
        %278 = math.fpowi %cst, %c859027372_i32 : f32, i32
        %collapsed_45 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<7x16x7xi16> into tensor<112x7xi16>
        %279 = arith.remf %cst_0, %69 : f16
        %280 = arith.remf %cst, %cst : f32
        %281 = arith.ceildivsi %c859027372_i32, %c859027372_i32 : i32
        scf.yield %out : i16
      } else {
        %rank_44 = tensor.rank %14 : tensor<7x15xi16>
        %276 = vector.transpose %77, [1, 0] : vector<7x15xi1> to vector<15x7xi1>
        %277 = math.exp2 %from_elements : tensor<7xf32>
        %278 = index.add %c15, %c15
        %279 = index.ceildivs %c10, %c5
        %280 = arith.shli %c859027372_i32, %c1830459008_i32 : i32
        %281 = vector.matrix_multiply %21, %21 {lhs_columns = 16 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<16xf16>, vector<16xf16>) -> vector<1xf16>
        %282 = vector.splat %55 : vector<7xindex>
        scf.yield %c1_i16 : i16
      }
      %252 = index.sub %c11, %248
      %253 = arith.shli %c-24694_i16, %c-24694_i16 : i16
      %254 = math.log1p %7 : tensor<7xf16>
      memref.alloca_scope  {
        %276 = arith.remsi %true, %false : i1
        %277 = math.log2 %1 : tensor<7xf32>
        %278 = math.tan %0 : tensor<7xf16>
        %279 = arith.minui %false, %false : i1
        %280 = math.atan %cst_2 : f16
        %281 = arith.addi %true_1, %true : i1
        %282 = arith.remui %c10966_i16, %c10966_i16 : i16
        %283 = math.sqrt %48 : tensor<7xf16>
        %284 = math.log1p %0 : tensor<7xf16>
        %285 = math.atan %1 : tensor<7xf32>
        %286 = arith.addf %cst, %cst : f32
        %287 = arith.addi %c10966_i16, %c-625_i16 : i16
        %expanded_44 = tensor.expand_shape %65 [[0], [1], [2, 3]] : tensor<7x16x7xf16> into tensor<7x16x7x1xf16>
        %288 = index.sizeof
        %289 = index.ceildivs %rank, %248
        %collapsed_45 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<7x16x7xi64> into tensor<112x7xi64>
        %290 = vector.splat %c9 : vector<7xindex>
        %291 = arith.addi %c1889544616_i64, %c1430998724_i64 : i64
        affine.store %cst, %alloc_6[%c6, %c4, %c13] : memref<7x16x7xf32>
        %292 = math.ceil %cst_3 : f16
        %293 = arith.floordivsi %c1889544616_i64, %c1889544616_i64 : i64
        %294 = arith.floordivsi %c10966_i16, %c1_i16 : i16
        %295 = math.expm1 %from_elements : tensor<7xf32>
        %296 = index.divu %c11, %c11
        %297 = vector.broadcast %cst : f32 to vector<7xf32>
        %298 = vector.fma %297, %297, %297 : vector<7xf32>
        %extracted = tensor.extract %14[%c5, %c0] : tensor<7x15xi16>
        %299 = math.cos %11 : tensor<7x15xf32>
        %300 = arith.ori %true_1, %true : i1
        %301 = arith.remf %cst_0, %69 : f16
        %302 = tensor.empty() : tensor<7xi32>
        %303 = index.divu %70, %49
        %304 = arith.cmpf une, %cst_3, %cst_2 : f16
      }
      %255 = tensor.empty() : tensor<16x7xi32>
      %alloc_39 = memref.alloc() : memref<7x16xi32>
      %256 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%255, %255, %alloc_39 : tensor<16x7xi32>, tensor<16x7xi32>, memref<7x16xi32>) outs(%5 : tensor<7x16x7xi32>) {
      ^bb0(%in: i32, %in_44: i32, %in_45: i32, %out_46: i32):
        %276 = index.castu %248 : index to i32
        %277 = memref.realloc %alloc_15 : memref<7xi16> to memref<7xi16>
        %278 = arith.addi %c-625_i16, %c-24694_i16 : i16
        %279 = arith.remui %out_46, %in_44 : i32
        %280 = arith.minsi %c-24694_i16, %c-8096_i16 : i16
        %281 = index.ceildivu %252, %c9
        %282 = math.fpowi %cst_0, %c1523413605_i32 : f16, i32
        %283 = vector.load %alloc_13[%c6] : memref<7xi16>, vector<7xi16>
        %284 = math.tan %3 : tensor<7xf32>
        %285 = math.ceil %cst_0 : f16
        %286 = vector.multi_reduction <add>, %21, %cst_3 [0] : vector<16xf16> to f16
        %287 = memref.realloc %alloc_14 : memref<7xi16> to memref<7xi16>
        %alloc_47 = memref.alloc() : memref<7x16x7xi32>
        memref.copy %alloc_18, %alloc_47 : memref<7x16x7xi32> to memref<7x16x7xi32>
        %288 = math.cttz %8 : tensor<7x16x7xi64>
        %cst_48 = arith.constant 0x4D65A6A7 : f32
        %289 = arith.muli %true, %true : i1
        %alloca = memref.alloca() : memref<7x15xi1>
        %290 = arith.ceildivsi %out_46, %out_46 : i32
        %291 = math.absi %8 : tensor<7x16x7xi64>
        %292 = arith.remf %286, %cst_2 : f16
        %293 = arith.negf %286 : f16
        %294 = arith.cmpi ult, %c-8096_i16, %c-24694_i16 : i16
        %295 = math.log2 %22 : tensor<f16>
        %296 = math.round %1 : tensor<7xf32>
        %297 = math.roundeven %15 : tensor<7xf16>
        %298 = arith.shrsi %in, %out_46 : i32
        %299 = math.cttz %13 : tensor<7xi64>
        %300 = arith.remsi %c859027372_i32, %in_45 : i32
        %301 = index.sizeof
        %302 = memref.atomic_rmw addf %cst, %alloc_10[%c1] : (f32, memref<7xf32>) -> f32
        %alloc_49 = memref.alloc() : memref<15x16xf32>
        %303 = tensor.empty() : tensor<7x16xf32>
        %304 = linalg.matmul ins(%11, %alloc_49 : tensor<7x15xf32>, memref<15x16xf32>) outs(%303 : tensor<7x16xf32>) -> tensor<7x16xf32>
        %305 = arith.negf %cst_2 : f16
        linalg.yield %c859027372_i32 : i32
      } -> tensor<7x16x7xi32>
      %rank_40 = tensor.rank %2 : tensor<7x16x7xi64>
      %257 = index.divu %70, %252
      %258 = vector.broadcast %false : i1 to vector<15xi1>
      %259 = vector.insert %258, %76 [2] : vector<15xi1> into vector<7x15xi1>
      %alloc_41 = memref.alloc() : memref<7xi1>
      %260 = index.ceildivs %rank_22, %55
      %261 = vector.flat_transpose %21 {columns = 4 : i32, rows = 4 : i32} : vector<16xf16> -> vector<16xf16>
      %262 = math.cttz %c-24694_i16 : i16
      %263 = vector.insert %true_1, %258 [0] : i1 into vector<15xi1>
      %264 = index.add %88, %257
      %265 = math.exp2 %11 : tensor<7x15xf32>
      %generated_42 = tensor.generate %c1 {
      ^bb0(%arg3: index):
        %276 = math.log1p %23 : tensor<f16>
        %277 = arith.shrui %c1430998724_i64, %c1430998724_i64 : i64
        %278 = vector.broadcast %c-625_i16 : i16 to vector<7x16x7xi16>
        %279 = vector.broadcast %true : i1 to vector<7x16x7xi1>
        %280 = vector.broadcast %c1523413605_i32 : i32 to vector<7x16x7xi32>
        %281 = vector.gather %alloc_12[%c5, %c2] [%280], %279, %278 : memref<7x15xi16>, vector<7x16x7xi32>, vector<7x16x7xi1>, vector<7x16x7xi16> into vector<7x16x7xi16>
        %282 = vector.broadcast %251 : i16 to vector<7xi16>
        tensor.yield %c1889544616_i64 : i64
      } : tensor<?xi64>
      %266 = index.add %88, %c9
      %267 = bufferization.clone %alloc_4 : memref<7xf16> to memref<7xf16>
      %268 = vector.matrix_multiply %258, %258 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi1>, vector<15xi1>) -> vector<1xi1>
      %expanded = tensor.expand_shape %9 [[0, 1]] : tensor<7xi1> into tensor<7x1xi1>
      %269 = math.log2 %11 : tensor<7x15xf32>
      vector.print %73 : vector<7x15xi16>
      %270 = math.ctpop %false : i1
      %271 = vector.broadcast %69 : f16 to vector<16x16xf16>
      %272 = vector.outerproduct %21, %21, %271 {kind = #vector.kind<maxf>} : vector<16xf16>, vector<16xf16>
      %273 = math.ctpop %8 : tensor<7x16x7xi64>
      %274 = arith.subi %c859027372_i32, %c859027372_i32 : i32
      %rank_43 = tensor.rank %generated_42 : tensor<?xi64>
      %275 = index.maxu %c10, %c5
      linalg.yield %251 : i16
    } -> tensor<7x16x7xi16>
    %91 = arith.minui %c1830459008_i32, %c1523413605_i32 : i32
    %92 = math.cos %reduced : tensor<f32>
    %93 = math.exp %cst_2 : f16
    %94 = math.ceil %48 : tensor<7xf16>
    %rank_24 = tensor.rank %generated : tensor<?xi64>
    %95 = vector.broadcast %cst : f32 to vector<7x15xf32>
    %96 = vector.fma %95, %95, %95 : vector<7x15xf32>
    %97 = arith.minsi %c1430998724_i64, %c1430998724_i64 : i64
    %98 = affine.load %alloc_4[%c13] : memref<7xf16>
    %99 = math.cos %15 : tensor<7xf16>
    %100 = arith.maxui %c1523413605_i32, %c1830459008_i32 : i32
    %101 = vector.bitcast %21 : vector<16xf16> to vector<16xi16>
    %102 = math.fma %19, %reduced, %19 : tensor<f32>
    %103 = arith.remf %cst_0, %98 : f16
    memref.tensor_store %10, %alloc_18 : memref<7x16x7xi32>
    %104 = arith.shli %c1_i16, %c1_i16 : i16
    memref.store %c-8096_i16, %68[%c2, %c0, %c5] : memref<7x16x7xi16>
    %105 = arith.maxf %98, %cst_3 : f16
    %106 = math.floor %3 : tensor<7xf32>
    %107 = math.log2 %0 : tensor<7xf16>
    %108 = vector.multi_reduction <minsi>, %77, %77 [] : vector<7x15xi1> to vector<7x15xi1>
    %109 = arith.minui %true, %true : i1
    %110 = index.divu %49, %rank_24
    %111 = math.log1p %65 : tensor<7x16x7xf16>
    %112 = math.fma %3, %3, %1 : tensor<7xf32>
    %113 = math.round %1 : tensor<7xf32>
    %114 = arith.floordivsi %c859027372_i32, %c859027372_i32 : i32
    %115 = vector.broadcast %cst : f32 to vector<7xf32>
    %116 = vector.broadcast %true_1 : i1 to vector<7xi1>
    %117 = vector.broadcast %c1523413605_i32 : i32 to vector<7xi32>
    %118 = vector.gather %from_elements[%c2] [%117], %116, %115 : tensor<7xf32>, vector<7xi32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
    %119 = vector.reduction <add>, %117 : vector<7xi32> into i32
    %120 = vector.load %alloc_7[%c1] : memref<7xi64>, vector<7x15xi64>
    %121 = memref.atomic_rmw andi %c1430998724_i64, %alloc_7[%c4] : (i64, memref<7xi64>) -> i64
    %122 = arith.cmpi eq, %c1523413605_i32, %c1830459008_i32 : i32
    %alloc_25 = memref.alloc() : memref<7x7xi32>
    %123 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_25 : memref<7x7xi32>) outs(%16 : tensor<7x16x7xi32>) {
    ^bb0(%in: i32, %out: i32):
      memref.assume_alignment %alloc_7, 8 : memref<7xi64>
      %248 = arith.maxf %69, %69 : f16
      %249 = index.ceildivs %c4, %rank
      %250 = math.sqrt %19 : tensor<f32>
      %251 = math.tan %cst_0 : f16
      memref.assume_alignment %68, 2 : memref<7x16x7xi16>
      %252 = index.divu %c10, %rank_24
      %253 = math.fma %11, %11, %11 : tensor<7x15xf32>
      %254 = vector.broadcast %cst_3 : f16 to vector<7xf16>
      %255 = index.castu %c2 : index to i32
      %rank_39 = tensor.rank %23 : tensor<f16>
      %256 = vector.broadcast %c1430998724_i64 : i64 to vector<7xi64>
      %257 = vector.multi_reduction <add>, %120, %256 [1] : vector<7x15xi64> to vector<7xi64>
      %258 = index.sizeof
      %259 = arith.minui %c1430998724_i64, %c1889544616_i64 : i64
      %alloc_40 = memref.alloc() : memref<f32>
      memref.tensor_store %19, %alloc_40 : memref<f32>
      %260 = vector.broadcast %cst : f32 to vector<7x7xf32>
      %261 = vector.outerproduct %118, %115, %260 {kind = #vector.kind<add>} : vector<7xf32>, vector<7xf32>
      %262 = arith.mulf %cst_0, %69 : f16
      %cst_41 = arith.constant 1.000000e+00 : f32
      %263 = vector.transfer_read %11[%67, %c3], %cst_41 : tensor<7x15xf32>, vector<f32>
      %cast_42 = tensor.cast %14 : tensor<7x15xi16> to tensor<?x?xi16>
      %264 = memref.atomic_rmw mins %c1430998724_i64, %alloc_7[%c0] : (i64, memref<7xi64>) -> i64
      %265 = vector.shuffle %95, %95 [0, 3, 4, 9, 13] : vector<7x15xf32>, vector<7x15xf32>
      %266 = bufferization.to_memref %6 : memref<7xi32>
      %267 = math.atan %19 : tensor<f32>
      %268 = tensor.empty() : tensor<7x16x7xf32>
      %269 = math.roundeven %cst_3 : f16
      %270 = vector.matrix_multiply %115, %115 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
      %271 = memref.realloc %alloc_13 : memref<7xi16> to memref<15xi16>
      %272 = arith.floordivsi %true, %true_1 : i1
      %273 = arith.shrsi %out, %out : i32
      %274 = math.atan %7 : tensor<7xf16>
      %275 = math.absi %2 : tensor<7x16x7xi64>
      %276 = arith.floordivsi %c1830459008_i32, %c1830459008_i32 : i32
      linalg.yield %c1830459008_i32 : i32
    } -> tensor<7x16x7xi32>
    %from_elements_26 = tensor.from_elements %false, %true, %true, %true, %true_1, %true, %false : tensor<7xi1>
    memref.store %cst, %alloc_6[%c6, %c11, %c3] : memref<7x16x7xf32>
    %124 = arith.remsi %c1889544616_i64, %c1430998724_i64 : i64
    %125 = vector.extract %76[2] : vector<7x15xi1>
    %126 = arith.remsi %true_1, %true : i1
    %127 = index.castu %c12 : index to i32
    %128 = arith.maxf %cst_2, %cst_0 : f16
    %129 = index.castu %true : i1 to index
    %130 = math.atan %48 : tensor<7xf16>
    %131 = arith.ceildivsi %c1430998724_i64, %c1430998724_i64 : i64
    %132 = math.exp2 %cst : f32
    %133 = arith.mulf %cst, %cst : f32
    %134 = math.roundeven %cst_3 : f16
    %135 = arith.remf %cst, %cst : f32
    %136 = math.atan %7 : tensor<7xf16>
    %137 = math.exp %11 : tensor<7x15xf32>
    bufferization.dealloc_tensor %16 : tensor<7x16x7xi32>
    %138 = index.divu %c0, %c3
    %rank_27 = tensor.rank %3 : tensor<7xf32>
    memref.assume_alignment %alloc_8, 2 : memref<7xi32>
    %139 = math.expm1 %cst_0 : f16
    %140 = index.sizeof
    %141 = math.rsqrt %0 : tensor<7xf16>
    %142 = arith.minui %c-24694_i16, %c10966_i16 : i16
    %143 = arith.floordivsi %c10966_i16, %c-625_i16 : i16
    %144 = vector.matrix_multiply %115, %115 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
    %145 = arith.negf %cst : f32
    %146 = affine.min affine_map<(d0, d1) -> ((d0 mod 8) * 32, d1, d1 ceildiv 8)>(%c0, %c4)
    %splat = tensor.splat %c1889544616_i64 : tensor<7x15xi64>
    bufferization.dealloc_tensor %from_elements : tensor<7xf32>
    %147 = index.castu %c1_i16 : i16 to index
    %148 = tensor.empty() : tensor<112x15xi64>
    %149 = linalg.matmul ins(%collapsed, %splat : tensor<112x7xi64>, tensor<7x15xi64>) outs(%148 : tensor<112x15xi64>) -> tensor<112x15xi64>
    %true_28 = arith.constant true
    %150 = arith.divsi %c1830459008_i32, %c1830459008_i32 : i32
    %151 = scf.while (%arg3 = %alloc_7) : (memref<7xi64>) -> memref<7xi64> {
      %248 = memref.atomic_rmw maxs %c-8096_i16, %37[%c3] : (i16, memref<7xi16>) -> i16
      %249 = index.sizeof
      %250 = math.sqrt %cst_2 : f16
      %251 = vector.broadcast %c1430998724_i64 : i64 to vector<15xi64>
      %252 = vector.insert %251, %120 [5] : vector<15xi64> into vector<7x15xi64>
      %rank_39 = tensor.rank %11 : tensor<7x15xf32>
      %253 = bufferization.clone %alloc_8 : memref<7xi32> to memref<7xi32>
      %254 = arith.divf %98, %69 : f16
      %255 = vector.splat %129 : vector<7xindex>
      scf.condition(%true) %arg3 : memref<7xi64>
    } do {
    ^bb0(%arg3: memref<7xi64>):
      %248 = vector.transpose %125, [0] : vector<15xi1> to vector<15xi1>
      %249 = arith.minsi %true, %true : i1
      %250 = arith.shli %c1889544616_i64, %c1430998724_i64 : i64
      %251 = math.absf %reduced : tensor<f32>
      %252 = scf.while (%arg4 = %c-625_i16) : (i16) -> i16 {
        %263 = index.maxu %c15, %c2
        %264 = math.exp2 %69 : f16
        %265 = vector.flat_transpose %125 {columns = 5 : i32, rows = 3 : i32} : vector<15xi1> -> vector<15xi1>
        %266 = arith.shli %c-625_i16, %c10966_i16 : i16
        %267 = arith.ceildivsi %c859027372_i32, %c1523413605_i32 : i32
        %268 = math.ceil %11 : tensor<7x15xf32>
        %269 = affine.load %alloc_17[%c3, %c0, %c10] : memref<7x16x7xi16>
        %270 = math.rsqrt %1 : tensor<7xf32>
        scf.condition(%true) %c-24694_i16 : i16
      } do {
      ^bb0(%arg4: i16):
        %263 = tensor.empty() : tensor<7xf16>
        %264 = affine.load %alloc_15[%c9] : memref<7xi16>
        %265 = vector.insert %cst, %144 [0] : f32 into vector<1xf32>
        %rank_41 = tensor.rank %6 : tensor<7xi32>
        %rank_42 = tensor.rank %22 : tensor<f16>
        %alloc_43 = memref.alloc() : memref<7x16x7xi64>
        memref.tensor_store %2, %alloc_43 : memref<7x16x7xi64>
        %266 = arith.remsi %264, %c10966_i16 : i16
        %267 = tensor.empty() : tensor<15x15xi64>
        %268 = tensor.empty() : tensor<7x15xi64>
        %269 = linalg.matmul ins(%splat, %267 : tensor<7x15xi64>, tensor<15x15xi64>) outs(%268 : tensor<7x15xi64>) -> tensor<7x15xi64>
        %270 = math.ctpop %264 : i16
        vector.print %77 : vector<7x15xi1>
        %collapsed_44 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<7x16x7xi32> into tensor<112x7xi32>
        %271 = index.add %rank_24, %rank_41
        %inserted = tensor.insert %cst into %reduced[] : tensor<f32>
        %272 = vector.insert %cst, %115 [3] : f32 into vector<7xf32>
        %273 = tensor.empty() : tensor<7x7xi16>
        %274 = linalg.matmul ins(%80, %80 : tensor<7x7xi16>, tensor<7x7xi16>) outs(%273 : tensor<7x7xi16>) -> tensor<7x7xi16>
        %275 = arith.addi %c1830459008_i32, %c1830459008_i32 : i32
        scf.yield %c-24694_i16 : i16
      }
      %253 = bufferization.clone %alloc_6 : memref<7x16x7xf32> to memref<7x16x7xf32>
      %254 = arith.shrui %c-24694_i16, %c-8096_i16 : i16
      %255 = memref.realloc %alloc_7 : memref<7xi64> to memref<7xi64>
      %cst_39 = arith.constant 1.000000e+00 : f16
      %256 = vector.transfer_read %15[%c15], %cst_39 : tensor<7xf16>, vector<f16>
      %257 = arith.ori %c1523413605_i32, %c859027372_i32 : i32
      %258 = index.sub %c9, %110
      %259 = math.sqrt %1 : tensor<7xf32>
      %260 = arith.subi %false, %true_1 : i1
      %261 = math.atan %65 : tensor<7x16x7xf16>
      %from_elements_40 = tensor.from_elements %true_1, %true_1, %false, %true, %false, %true, %true_1 : tensor<7xi1>
      %262 = math.round %reduced : tensor<f32>
      scf.yield %alloc_7 : memref<7xi64>
    }
    %152 = math.powf %3, %1 : tensor<7xf32>
    %153 = tensor.empty() : tensor<7xf16>
    %mapped = linalg.map ins(%alloc_19, %0 : memref<7xf16>, tensor<7xf16>) outs(%153 : tensor<7xf16>)
      (%in: f16, %in_39: f16) {
        %248 = arith.addi %c859027372_i32, %c1523413605_i32 : i32
        %249 = math.atan %3 : tensor<7xf32>
        memref.tensor_store %13, %alloc_7 : memref<7xi64>
        %250 = index.sub %c1, %c3
        %251 = memref.realloc %alloc_15 : memref<7xi16> to memref<7xi16>
        %252 = vector.broadcast %cst : f32 to vector<7x15xf32>
        %253 = vector.fma %252, %96, %252 : vector<7x15xf32>
        %254 = arith.minsi %c859027372_i32, %c1523413605_i32 : i32
        %255 = arith.maxui %c10966_i16, %c1_i16 : i16
        %256 = arith.shrui %c-625_i16, %c1_i16 : i16
        %257 = vector.extract_strided_slice %76 {offsets = [3], sizes = [4], strides = [1]} : vector<7x15xi1> to vector<4x15xi1>
        %258 = index.sub %140, %c9
        %259 = arith.minsi %c1430998724_i64, %c1430998724_i64 : i64
        %260 = math.fpowi %cst_3, %c1830459008_i32 : f16, i32
        %261 = math.floor %153 : tensor<7xf16>
        memref.store %c-625_i16, %alloc_16[%c2, %c3] : memref<7x15xi16>
        %262 = scf.execute_region -> index {
          %extracted = tensor.extract %5[%c2, %c9, %c0] : tensor<7x16x7xi32>
          %279 = math.log1p %69 : f16
          %280 = arith.shrui %true_1, %true_1 : i1
          %281 = arith.shrui %c1830459008_i32, %c1830459008_i32 : i32
          %282 = vector.broadcast %cst : f32 to vector<15xf32>
          %283 = vector.insert %282, %252 [4] : vector<15xf32> into vector<7x15xf32>
          %284 = math.fpowi %1, %6 : tensor<7xf32>, tensor<7xi32>
          %collapsed_43 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<7x16x7xi32> into tensor<112x7xi32>
          %285 = math.fma %15, %15, %15 : tensor<7xf16>
          %286 = vector.reduction <maxf>, %144 : vector<1xf32> into f32
          %287 = vector.flat_transpose %101 {columns = 4 : i32, rows = 4 : i32} : vector<16xi16> -> vector<16xi16>
          %288 = vector.broadcast %c1_i16 : i16 to vector<16x16xi16>
          %289 = vector.outerproduct %101, %101, %288 {kind = #vector.kind<or>} : vector<16xi16>, vector<16xi16>
          %290 = arith.ori %false, %false : i1
          %291 = arith.mulf %in_39, %98 : f16
          %292 = arith.cmpi ugt, %false, %true : i1
          %293 = bufferization.clone %alloc_12 : memref<7x15xi16> to memref<7x15xi16>
          %294 = index.divu %53, %67
          scf.yield %c15 : index
        }
        %263 = vector.bitcast %144 : vector<1xf32> to vector<1xf32>
        %264 = arith.shrsi %c-8096_i16, %c-8096_i16 : i16
        %265 = arith.maxf %in, %cst_0 : f16
        %cast_40 = tensor.cast %14 : tensor<7x15xi16> to tensor<?x?xi16>
        %splat_41 = tensor.splat %in : tensor<7xf16>
        %266 = vector.extract_strided_slice %77 {offsets = [0], sizes = [5], strides = [1]} : vector<7x15xi1> to vector<5x15xi1>
        %267 = arith.minui %false, %false : i1
        %268 = arith.addi %c10966_i16, %c1_i16 : i16
        %269 = arith.minsi %c859027372_i32, %c1830459008_i32 : i32
        %270 = vector.bitcast %125 : vector<15xi1> to vector<15xi1>
        %271 = vector.broadcast %c10966_i16 : i16 to vector<i16>
        %272 = vector.transfer_write %271, %12[%138] : vector<i16>, tensor<7xi16>
        %273 = arith.minsi %c1_i16, %c-8096_i16 : i16
        %274 = arith.negf %cst : f32
        %275 = vector.broadcast %cst : f32 to vector<15xf32>
        %276 = vector.insert %275, %95 [3] : vector<15xf32> into vector<7x15xf32>
        %277 = arith.remsi %c10966_i16, %c-24694_i16 : i16
        %278 = memref.alloca_scope  -> (i32) {
          %279 = vector.multi_reduction <and>, %101, %c10966_i16 [0] : vector<16xi16> to i16
          %280 = vector.insert %c859027372_i32, %117 [3] : i32 into vector<7xi32>
          %281 = index.add %40, %c8
          memref.store %in_39, %alloc_4[%c3] : memref<7xf16>
          %282 = tensor.empty() : tensor<7xi64>
          %283 = vector.broadcast %c1889544616_i64 : i64 to vector<7xi64>
          %284 = vector.reduction <mul>, %283 : vector<7xi64> into i64
          %alloca = memref.alloca() : memref<7xf16>
          %285 = bufferization.to_tensor %alloc_16 : memref<7x15xi16>
          %286 = math.floor %splat_41 : tensor<7xf16>
          %287 = arith.floordivsi %c1430998724_i64, %c1889544616_i64 : i64
          %288 = math.fma %7, %0, %15 : tensor<7xf16>
          memref.assume_alignment %alloc_5, 1 : memref<7x16x7xf16>
          %289 = index.add %rank_24, %147
          %290 = math.cos %reduced : tensor<f32>
          %alloca_43 = memref.alloca() : memref<7x15xi32>
          %291 = arith.maxui %c1430998724_i64, %c1889544616_i64 : i64
          %292 = math.cttz %c1889544616_i64 : i64
          %293 = math.sqrt %23 : tensor<f16>
          %294 = math.absi %14 : tensor<7x15xi16>
          %295 = math.roundeven %from_elements : tensor<7xf32>
          %296 = arith.floordivsi %c1889544616_i64, %c1430998724_i64 : i64
          %expanded = tensor.expand_shape %12 [[0, 1]] : tensor<7xi16> into tensor<7x1xi16>
          %297 = arith.mulf %cst_3, %cst_3 : f16
          %298 = index.ceildivu %rank_24, %c0
          %299 = arith.floordivsi %c-8096_i16, %c-8096_i16 : i16
          %300 = bufferization.to_tensor %alloc_13 : memref<7xi16>
          %alloc_44 = memref.alloc() : memref<7x15xf32>
          memref.copy %alloc, %alloc_44 : memref<7x15xf32> to memref<7x15xf32>
          %301 = arith.divsi %c1830459008_i32, %c1830459008_i32 : i32
          %302 = vector.multi_reduction <mul>, %125, %true [0] : vector<15xi1> to i1
          %rank_45 = tensor.rank %13 : tensor<7xi64>
          %303 = vector.load %alloc_12[%c0, %c1] : memref<7x15xi16>, vector<7x16x7xi16>
          memref.alloca_scope.return %c859027372_i32 : i32
        }
        %cst_42 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_42 : f16
      }
    memref.assume_alignment %alloc_4, 4 : memref<7xf16>
    %154 = index.floordivs %c7, %40
    %155 = arith.floordivsi %c1830459008_i32, %c1830459008_i32 : i32
    %156 = arith.minui %true_1, %true_1 : i1
    %157 = arith.addi %c1830459008_i32, %c859027372_i32 : i32
    %158 = bufferization.to_tensor %alloc_4 : memref<7xf16>
    %159 = memref.atomic_rmw mulf %cst_0, %alloc_9[%c6] : (f16, memref<7xf16>) -> f16
    %160 = bufferization.clone %alloc_18 : memref<7x16x7xi32> to memref<7x16x7xi32>
    %161 = vector.reduction <minsi>, %125 : vector<15xi1> into i1
    %cst_29 = arith.constant 1.000000e+00 : f32
    %162 = vector.transfer_read %11[%c15, %42], %cst_29 : tensor<7x15xf32>, vector<f32>
    %163 = vector.flat_transpose %117 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
    scf.execute_region {
      %248 = arith.floordivsi %c10966_i16, %c10966_i16 : i16
      %249 = vector.broadcast %c1430998724_i64 : i64 to vector<15xi64>
      %250 = vector.multi_reduction <minsi>, %120, %249 [0] : vector<7x15xi64> to vector<15xi64>
      %251 = arith.mulf %cst_29, %cst : f32
      %252 = vector.broadcast %cst_0 : f16 to vector<16x16xf16>
      %253 = vector.outerproduct %21, %21, %252 {kind = #vector.kind<add>} : vector<16xf16>, vector<16xf16>
      %254 = arith.maxf %cst_3, %cst_3 : f16
      %rank_39 = tensor.rank %8 : tensor<7x16x7xi64>
      %c0_i16 = arith.constant 0 : i16
      %c0_i16_40 = arith.constant 0 : i16
      %255 = vector.transfer_read %alloc_13[%42], %c0_i16_40 : memref<7xi16>, vector<i16>
      %256 = arith.ceildivsi %c-8096_i16, %c10966_i16 : i16
      %257 = arith.negf %cst_2 : f16
      %258 = arith.subi %c1_i16, %c-24694_i16 : i16
      memref.tensor_store %1, %alloc_10 : memref<7xf32>
      %259 = math.atan %cst : f32
      %260 = arith.addi %c10966_i16, %c10966_i16 : i16
      %261 = arith.cmpi ult, %c-8096_i16, %c-8096_i16 : i16
      %262 = index.ceildivs %c10, %88
      %263 = index.divu %c8, %67
      scf.yield
    }
    %164 = arith.muli %true_1, %true_1 : i1
    %165 = vector.shuffle %117, %163 [0, 1, 7, 8, 10, 12] : vector<7xi32>, vector<7xi32>
    %166 = bufferization.to_tensor %alloc_5 : memref<7x16x7xf16>
    %167 = arith.floordivsi %c859027372_i32, %c1523413605_i32 : i32
    %168 = arith.subi %c1_i16, %c-625_i16 : i16
    %169 = math.rsqrt %158 : tensor<7xf16>
    %170 = math.cos %48 : tensor<7xf16>
    %171 = arith.addf %cst_0, %cst_2 : f16
    %from_elements_30 = tensor.from_elements %c1523413605_i32, %c1523413605_i32, %c1830459008_i32, %c859027372_i32, %c1523413605_i32, %c1830459008_i32, %c1523413605_i32 : tensor<7xi32>
    %172 = math.atan %98 : f16
    %173 = index.ceildivs %55, %c0
    %174 = arith.shli %c859027372_i32, %c1523413605_i32 : i32
    %175 = index.ceildivu %c0, %c12
    %176 = index.floordivs %c7, %70
    %177 = arith.divsi %true_1, %false : i1
    %178 = vector.insertelement %c10966_i16, %101[%40 : index] : vector<16xi16>
    memref.assume_alignment %alloc_13, 8 : memref<7xi16>
    %179 = tensor.empty(%c13) : tensor<?xi32>
    %180 = arith.addi %c1430998724_i64, %c1430998724_i64 : i64
    %181 = vector.load %alloc_10[%c3] : memref<7xf32>, vector<7x16x7xf32>
    %182 = arith.cmpi uge, %c1889544616_i64, %c1430998724_i64 : i64
    %183 = index.mul %c2, %c10
    %184 = math.expm1 %7 : tensor<7xf16>
    %185 = index.add %175, %c1
    %rank_31 = tensor.rank %0 : tensor<7xf16>
    %186 = math.round %cst_2 : f16
    %from_elements_32 = tensor.from_elements %true_1, %true_1, %true, %true_1, %true_1, %false, %true, %true_1, %true, %true_1, %true, %true_1, %true, %true, %false, %true, %true_1, %true_1, %true_1, %true, %true_1, %true_1, %false, %true, %true_1, %true, %false, %false, %true_1, %true_1, %true, %true_1, %true_1, %true_1, %true, %false, %false, %false, %false, %true, %false, %true_1, %true, %true_1, %true_1, %false, %true, %true, %true, %true, %false, %true, %true, %true, %false, %false, %true_1, %false, %true_1, %true_1, %true, %true, %true_1, %true_1, %true, %true, %true, %true, %true, %true, %true, %true, %false, %true_1, %false, %true, %true_1, %true, %true, %true, %true_1, %true, %true, %true, %false, %false, %true_1, %true, %true, %false, %false, %false, %true_1, %true, %true, %true_1, %false, %true, %true, %false, %false, %true, %true_1, %false, %false, %false, %true, %true, %true_1, %false, %false, %false, %true_1, %true, %true, %true_1, %true_1, %false, %false, %true, %true, %true_1, %true_1, %false, %false, %false, %true, %false, %true_1, %true, %true_1, %true, %true_1, %true, %true_1, %false, %false, %false, %false, %true, %true_1, %true, %true_1, %true, %true_1, %false, %true_1, %true, %true, %true, %false, %true_1, %true_1, %true, %true_1, %true, %true_1, %true_1, %true, %true_1, %true, %false, %false, %false, %false, %true, %true_1, %false, %true_1, %true_1, %false, %false, %true_1, %true_1, %false, %true_1, %false, %true, %false, %true_1, %true_1, %false, %false, %false, %true_1, %true, %true_1, %true_1, %false, %true, %true_1, %true_1, %true, %true, %true_1, %true_1, %true, %false, %true, %true_1, %true_1, %false, %true_1, %false, %false, %true, %true_1, %true, %false, %true_1, %false, %true_1, %true_1, %false, %true_1, %true, %false, %true, %true, %true_1, %true_1, %false, %true, %true_1, %false, %false, %true_1, %true_1, %false, %true_1, %true_1, %false, %false, %false, %true_1, %true_1, %false, %true, %true_1, %true, %true_1, %false, %true, %true_1, %false, %true_1, %true_1, %false, %true, %false, %true_1, %true, %true_1, %true, %true_1, %true_1, %false, %true_1, %true, %false, %true_1, %true_1, %false, %false, %true_1, %true_1, %true_1, %true, %true, %false, %false, %true_1, %true, %false, %true_1, %true, %true, %false, %true_1, %true, %true, %false, %true_1, %false, %true, %true, %true, %true, %false, %true_1, %true_1, %true, %true, %false, %true, %false, %false, %true_1, %true, %false, %true, %true_1, %false, %true_1, %true, %true_1, %false, %true, %true, %true, %true, %false, %true_1, %true, %true_1, %false, %true_1, %true_1, %true, %false, %false, %false, %true, %false, %false, %true, %true, %false, %false, %false, %true_1, %true_1, %true, %true, %false, %true, %true, %true, %false, %true, %false, %false, %true, %false, %true_1, %true, %true_1, %true_1, %true_1, %false, %true_1, %true_1, %true_1, %true, %true, %true, %false, %true_1, %false, %true_1, %true_1, %false, %false, %true, %true_1, %true, %true_1, %true, %true_1, %true, %false, %true, %true_1, %true_1, %false, %false, %true, %true_1, %true, %true, %true, %false, %true_1, %false, %true_1, %true, %false, %true, %false, %true_1, %false, %true_1, %false, %true, %true, %true, %true, %true_1, %true, %false, %true_1, %true, %false, %true, %true, %true_1, %true_1, %true_1, %true, %true_1, %false, %true_1, %false, %false, %false, %true_1, %true_1, %false, %false, %true_1, %false, %false, %true, %true, %true, %false, %true, %false, %true_1, %true, %true, %true, %true_1, %true, %true, %true, %false, %false, %true_1, %true, %true_1, %true_1, %true_1, %true_1, %false, %false, %false, %true, %false, %false, %false, %true_1, %true_1, %false, %false, %true_1, %true_1, %false, %true_1, %false, %true_1, %false, %false, %true_1, %true_1, %false, %true, %false, %true, %true_1, %true_1, %false, %true_1, %false, %false, %false, %true_1, %false, %false, %false, %true, %false, %true_1, %true, %false, %true, %true, %true_1, %false, %false, %true_1, %true, %true_1, %true_1, %true, %true, %false, %true, %false, %false, %false, %false, %true, %true_1, %true_1, %true_1, %true, %true_1, %true_1, %true_1, %true_1, %true, %true_1, %true_1, %true, %true, %true, %false, %true_1, %false, %true_1, %false, %false, %true, %true, %true, %false, %false, %true, %true_1, %true, %false, %false, %false, %true, %false, %false, %false, %true, %true, %false, %true_1, %true, %true_1, %true_1, %false, %false, %true_1, %false, %false, %false, %false, %true_1, %false, %true_1, %true, %true_1, %true_1, %true_1, %true_1, %true, %true, %true, %false, %true_1, %true, %true, %false, %false, %false, %true_1, %true, %false, %true, %true, %true, %true, %false, %true, %false, %false, %true, %true, %true_1, %true, %false, %true, %false, %true_1, %false, %true, %false, %false, %true_1, %false, %false, %true_1, %true_1, %false, %true, %true, %true, %true, %true, %true_1, %true_1, %false, %false, %true, %true_1, %false, %false, %true_1, %true, %true, %false, %true_1, %false, %true, %true, %true_1, %true, %true, %false, %true_1, %true_1, %true, %false, %false, %true_1, %true_1, %true_1, %false, %true, %true_1, %true_1, %true_1, %true, %true_1, %false, %false, %true, %false, %true, %true_1, %true_1, %true_1, %false, %true_1, %false, %true_1, %true_1, %false, %true_1, %true_1, %true, %false, %false, %true, %false, %false, %true, %true_1, %true_1, %true, %true_1, %true_1, %false, %false, %true_1, %true_1, %true_1, %false, %false, %true_1, %false, %true, %false, %true, %false, %false, %true, %true_1, %false, %true_1, %false, %true, %true, %true, %false, %true_1, %true, %true_1, %true_1, %false, %true, %true, %true_1, %true, %true_1, %false, %false, %true_1, %false, %true, %true, %true, %true_1, %false, %true, %false, %false, %true_1, %true, %true, %true, %true, %true_1, %false, %true_1, %false, %true, %false, %true, %false, %false, %true, %false, %false, %true, %false, %true_1, %true, %true_1, %true_1, %true_1, %false, %false, %true, %true, %false, %true_1, %true_1, %false, %true, %true, %true_1, %false, %true, %true_1, %false, %true, %true, %true_1, %false, %true_1, %true, %true, %true_1, %false, %false, %true, %true, %true_1, %true, %true, %true_1, %false, %true_1, %false, %true, %true_1, %false, %true, %false, %false, %true, %false, %false, %true, %false, %false, %true, %false : tensor<7x16x7xi1>
    %187 = math.ceil %166 : tensor<7x16x7xf16>
    %188 = arith.remsi %c1889544616_i64, %c1430998724_i64 : i64
    %189 = arith.divf %69, %98 : f16
    %190 = arith.muli %true_1, %true_1 : i1
    %191 = affine.load %alloc_12[%c8, %c15] : memref<7x15xi16>
    %dest, %accumulated_value = vector.scan <minsi>, %77, %116 {inclusive = true, reduction_dim = 1 : i64} : vector<7x15xi1>, vector<7xi1>
    %192 = arith.shrui %c-8096_i16, %c-8096_i16 : i16
    %193 = vector.reduction <maxui>, %116 : vector<7xi1> into i1
    %194 = arith.shrui %false, %false : i1
    memref.assume_alignment %160, 4 : memref<7x16x7xi32>
    %195 = index.castu %c-8096_i16 : i16 to index
    %196 = arith.shli %c-625_i16, %c-24694_i16 : i16
    %197 = arith.divsi %c1_i16, %c10966_i16 : i16
    %198 = vector.insertelement %c859027372_i32, %163[%140 : index] : vector<7xi32>
    %199 = arith.mulf %cst_2, %cst_2 : f16
    %200 = memref.realloc %alloc_9 : memref<7xf16> to memref<15xf16>
    %collapsed_33 = tensor.collapse_shape %5 [[0, 1], [2]] : tensor<7x16x7xi32> into tensor<112x7xi32>
    %201 = arith.floordivsi %c10966_i16, %c1_i16 : i16
    %202 = math.absi %c-8096_i16 : i16
    memref.tensor_store %14, %alloc_16 : memref<7x15xi16>
    %203 = math.log1p %cst_2 : f16
    %204 = arith.minui %true, %false : i1
    memref.tensor_store %16, %alloc_18 : memref<7x16x7xi32>
    %205 = math.cos %3 : tensor<7xf32>
    %206 = arith.maxsi %c-625_i16, %c1_i16 : i16
    %207 = vector.matrix_multiply %116, %116 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
    %208 = tensor.empty() : tensor<7xi64>
    affine.for %arg3 = 0 to 15 {
    }
    %209 = arith.shrui %c-625_i16, %c10966_i16 : i16
    %alloc_34 = memref.alloc() : memref<15x15xi64>
    %210 = tensor.empty() : tensor<112x15xi64>
    %211 = linalg.matmul ins(%148, %alloc_34 : tensor<112x15xi64>, memref<15x15xi64>) outs(%210 : tensor<112x15xi64>) -> tensor<112x15xi64>
    %212 = scf.while (%arg3 = %96) : (vector<7x15xf32>) -> vector<7x15xf32> {
      %248 = math.cos %23 : tensor<f16>
      %249 = scf.while (%arg4 = %181) : (vector<7x16x7xf32>) -> vector<7x16x7xf32> {
        %256 = math.absf %reduced : tensor<f32>
        %cst_39 = arith.constant 1.000000e+00 : f16
        %cst_40 = arith.constant 0.000000e+00 : f16
        %257 = vector.transfer_read %65[%c0, %138, %rank_27], %cst_40 {permutation_map = affine_map<(d0, d1, d2) -> (d0, 0)>} : tensor<7x16x7xf16>, vector<7x7xf16>
        %258 = arith.cmpf false, %cst_39, %98 : f16
        %259 = vector.matrix_multiply %125, %207 {lhs_columns = 1 : i32, lhs_rows = 15 : i32, rhs_columns = 1 : i32} : (vector<15xi1>, vector<1xi1>) -> vector<15xi1>
        %260 = math.roundeven %23 : tensor<f16>
        %261 = arith.minui %c1889544616_i64, %c1430998724_i64 : i64
        %262 = arith.maxf %cst_2, %cst_2 : f16
        %263 = vector.insert %c-625_i16, %101 [11] : i16 into vector<16xi16>
        scf.condition(%true_1) %181 : vector<7x16x7xf32>
      } do {
      ^bb0(%arg4: vector<7x16x7xf32>):
        %256 = memref.atomic_rmw ori %c-8096_i16, %alloc_16[%c2, %c0] : (i16, memref<7x15xi16>) -> i16
        vector.print %207 : vector<1xi1>
        %257 = bufferization.clone %160 : memref<7x16x7xi32> to memref<7x16x7xi32>
        %258 = math.floor %1 : tensor<7xf32>
        %259 = arith.floordivsi %c-8096_i16, %c-24694_i16 : i16
        %260 = arith.floordivsi %c1523413605_i32, %c1523413605_i32 : i32
        %261 = arith.maxf %cst_2, %cst_3 : f16
        bufferization.dealloc_tensor %9 : tensor<7xi1>
        %262 = arith.shrsi %c1430998724_i64, %c1430998724_i64 : i64
        %263 = index.divu %c12, %rank
        %264 = index.ceildivu %c11, %c5
        %265 = index.divu %rank_31, %70
        %collapsed_39 = tensor.collapse_shape %11 [[0, 1]] : tensor<7x15xf32> into tensor<105xf32>
        %266 = math.sqrt %from_elements : tensor<7xf32>
        %267 = affine.load %alloc_12[%c5, %c0] : memref<7x15xi16>
        %268 = index.sub %rank_22, %rank_27
        scf.yield %181 : vector<7x16x7xf32>
      }
      %250 = math.atan %7 : tensor<7xf16>
      %251 = index.sub %c9, %c15
      %252 = math.exp2 %0 : tensor<7xf16>
      %253 = arith.ceildivsi %c1889544616_i64, %c1889544616_i64 : i64
      %254 = arith.minsi %c1889544616_i64, %c1430998724_i64 : i64
      %255 = tensor.empty(%175, %147) : tensor<?x?xi64>
      scf.condition(%false) %95 : vector<7x15xf32>
    } do {
    ^bb0(%arg3: vector<7x15xf32>):
      %248 = math.rsqrt %reduced : tensor<f32>
      %rank_39 = tensor.rank %0 : tensor<7xf16>
      %rank_40 = tensor.rank %148 : tensor<112x15xi64>
      %249 = vector.insert %125, %76 [6] : vector<15xi1> into vector<7x15xi1>
      %250 = affine.min affine_map<(d0, d1) -> (0, d0 mod 64, d0 mod 64 - 16, (d1 floordiv 128) floordiv 16)>(%67, %c7)
      %251 = arith.shli %true, %false : i1
      %252 = arith.ori %c-24694_i16, %c1_i16 : i16
      %253 = math.cos %7 : tensor<7xf16>
      memref.tensor_store %6, %alloc_8 : memref<7xi32>
      %cast_41 = tensor.cast %19 : tensor<f32> to tensor<f32>
      %254 = vector.load %alloc_17[%c6, %c11, %c0] : memref<7x16x7xi16>, vector<7xi16>
      %255 = arith.floordivsi %false, %false : i1
      %256 = scf.if %true -> (memref<7x16x7xf16>) {
        %259 = arith.maxf %98, %cst_3 : f16
        memref.store %c1430998724_i64, %alloc_7[%c2] : memref<7xi64>
        %260 = index.floordivs %c14, %183
        %261 = index.add %rank_40, %c9
        %262 = arith.mulf %98, %cst_2 : f16
        %263 = affine.load %alloc[%c12, %c9] : memref<7x15xf32>
        %264 = arith.minui %c-625_i16, %c10966_i16 : i16
        %265 = vector.broadcast %191 : i16 to vector<7xi16>
        scf.yield %alloc_5 : memref<7x16x7xf16>
      } else {
        %259 = affine.load %alloc[%c14, %c5] : memref<7x15xf32>
        %260 = vector.insert %cst, %118 [4] : f32 into vector<7xf32>
        %261 = arith.shli %191, %c-8096_i16 : i16
        %expanded_42 = tensor.expand_shape %collapsed [[0], [1, 2]] : tensor<112x7xi64> into tensor<112x7x1xi64>
        %262 = index.ceildivu %rank, %c3
        %263 = tensor.empty(%c9, %rank_27) : tensor<7x?x?xi32>
        %264 = arith.shrsi %c859027372_i32, %c1523413605_i32 : i32
        %alloc_43 = memref.alloc() : memref<7xi1>
        memref.tensor_store %9, %alloc_43 : memref<7xi1>
        scf.yield %alloc_5 : memref<7x16x7xf16>
      }
      %257 = index.sub %250, %195
      %expanded = tensor.expand_shape %13 [[0, 1]] : tensor<7xi64> into tensor<7x1xi64>
      %258 = vector.bitcast %21 : vector<16xf16> to vector<16xi16>
      scf.yield %95 : vector<7x15xf32>
    }
    %213 = math.absi %8 : tensor<7x16x7xi64>
    %214 = math.exp2 %69 : f16
    %215 = vector.extract_strided_slice %95 {offsets = [2], sizes = [1], strides = [1]} : vector<7x15xf32> to vector<1x15xf32>
    %216 = math.sqrt %cst_2 : f16
    %217 = vector.load %alloc_14[%c4] : memref<7xi16>, vector<7x16x7xi16>
    %218 = index.ceildivs %175, %154
    %219 = memref.realloc %37 : memref<7xi16> to memref<16xi16>
    %cst_35 = arith.constant 1.000000e+00 : f16
    %220 = vector.transfer_read %0[%173], %cst_35 : tensor<7xf16>, vector<f16>
    %221 = math.fpowi %cst_2, %c1523413605_i32 : f16, i32
    %cast_36 = tensor.cast %collapsed_33 : tensor<112x7xi32> to tensor<?x?xi32>
    %222 = arith.negf %cst_0 : f16
    %223 = math.absi %9 : tensor<7xi1>
    %224 = vector.transpose %125, [0] : vector<15xi1> to vector<15xi1>
    %225 = math.floor %7 : tensor<7xf16>
    %226 = math.log1p %1 : tensor<7xf32>
    %227 = math.rsqrt %0 : tensor<7xf16>
    %228 = vector.flat_transpose %163 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
    %229 = index.add %173, %c2
    %230 = memref.atomic_rmw addf %69, %alloc_4[%c5] : (f16, memref<7xf16>) -> f16
    memref.store %cst_29, %alloc[%c4, %c12] : memref<7x15xf32>
    %231 = vector.bitcast %101 : vector<16xi16> to vector<16xi16>
    %232 = math.round %3 : tensor<7xf32>
    %233 = arith.remf %cst_29, %cst : f32
    %234 = vector.reduction <minf>, %118 : vector<7xf32> into f32
    %235 = index.maxu %c0, %173
    %236 = arith.remsi %c1_i16, %c-24694_i16 : i16
    %237 = index.sizeof
    %238 = arith.minui %false, %false : i1
    %239 = affine.load %alloc_11[%c12, %c3, %c15] : memref<7x16x7xi16>
    %240 = arith.remui %c-625_i16, %239 : i16
    %241 = arith.xori %c-625_i16, %c-8096_i16 : i16
    %242 = index.add %173, %rank_21
    %243 = arith.subi %c1830459008_i32, %c859027372_i32 : i32
    %244 = tensor.empty() : tensor<7xi16>
    %245 = linalg.copy ins(%18 : tensor<7xi16>) outs(%244 : tensor<7xi16>) -> tensor<7xi16>
    %246 = tensor.empty() : tensor<7xf16>
    %transposed_37 = linalg.transpose ins(%158 : tensor<7xf16>) outs(%246 : tensor<7xf16>) permutation = [0] 
    %alloc_38 = memref.alloc() : memref<f16>
    linalg.reduce ins(%alloc_9 : memref<7xf16>) outs(%alloc_38 : memref<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %248 = tensor.empty() : tensor<7xi32>
        %rank_39 = tensor.rank %208 : tensor<7xi64>
        %249 = scf.if %false -> (i64) {
          %253 = index.castu %55 : index to i32
          %254 = math.ceil %166 : tensor<7x16x7xf16>
          %255 = arith.remsi %c859027372_i32, %c859027372_i32 : i32
          %256 = arith.maxf %cst_0, %cst_0 : f16
          %257 = vector.matrix_multiply %118, %118 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
          %alloca = memref.alloca() : memref<7x15xi32>
          %258 = arith.remui %239, %c-8096_i16 : i16
          %259 = memref.atomic_rmw muli %239, %alloc_13[%c0] : (i16, memref<7xi16>) -> i16
          scf.yield %c1430998724_i64 : i64
        } else {
          %253 = arith.ceildivsi %c1430998724_i64, %c1430998724_i64 : i64
          %254 = arith.ceildivsi %c1523413605_i32, %c859027372_i32 : i32
          %255 = index.divu %42, %c9
          %256 = math.fpowi %158, %248 : tensor<7xf16>, tensor<7xi32>
          %257 = math.ctpop %2 : tensor<7x16x7xi64>
          %258 = arith.shrsi %c-24694_i16, %191 : i16
          %259 = arith.mulf %cst_3, %cst_35 : f16
          %260 = index.floordivs %rank, %185
          scf.yield %c1889544616_i64 : i64
        }
        %rank_40 = tensor.rank %6 : tensor<7xi32>
        %250 = math.log1p %15 : tensor<7xf16>
        %251 = vector.insertelement %false, %125[%237 : index] : vector<15xi1>
        %expanded = tensor.expand_shape %11 [[0], [1, 2]] : tensor<7x15xf32> into tensor<7x15x1xf32>
        %252 = math.absi %c1430998724_i64 : i64
        %cst_41 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_41 : f16
      }
    scf.parallel (%arg3) = (%rank_31) to (%218) step (%c5) {
      %248 = arith.shrsi %c-625_i16, %191 : i16
      %249 = vector.broadcast %true : i1 to vector<7x7xi1>
      %250 = vector.outerproduct %116, %116, %249 {kind = #vector.kind<xor>} : vector<7xi1>, vector<7xi1>
      %251 = vector.reduction <and>, %163 : vector<7xi32> into i32
      %252 = memref.realloc %alloc_14 : memref<7xi16> to memref<7xi16>
      %253 = arith.shli %true_1, %true : i1
      %254 = arith.shrsi %c10966_i16, %191 : i16
      %255 = tensor.empty() : tensor<7x7xi32>
      %256 = tensor.empty() : tensor<112x7xi32>
      %257 = linalg.matmul ins(%collapsed_33, %255 : tensor<112x7xi32>, tensor<7x7xi32>) outs(%256 : tensor<112x7xi32>) -> tensor<112x7xi32>
      %258 = bufferization.clone %alloc_10 : memref<7xf32> to memref<7xf32>
      %259 = arith.floordivsi %239, %c-625_i16 : i16
      %260 = vector.broadcast %c1889544616_i64 : i64 to vector<i64>
      %261 = vector.transfer_write %260, %208[%c9] : vector<i64>, tensor<7xi64>
      %262 = arith.remf %cst_2, %cst_35 : f16
      vector.print %117 : vector<7xi32>
      %263 = arith.shrui %true, %true : i1
      %264 = vector.load %alloc_10[%c2] : memref<7xf32>, vector<7xf32>
      %265 = arith.maxsi %c1523413605_i32, %c1830459008_i32 : i32
      %alloca = memref.alloca() : memref<7xi16>
      scf.yield
    }
    %247 = affine.vector_load %alloc_10[%173] : memref<7xf32>, vector<7xf32>
    affine.vector_store %228, %alloc_8[%173] : memref<7xi32>, vector<7xi32>
    vector.print %21 : vector<16xf16>
    vector.print %73 : vector<7x15xi16>
    vector.print %76 : vector<7x15xi1>
    vector.print %77 : vector<7x15xi1>
    vector.print %95 : vector<7x15xf32>
    vector.print %96 : vector<7x15xf32>
    vector.print %101 : vector<16xi16>
    vector.print %115 : vector<7xf32>
    vector.print %116 : vector<7xi1>
    vector.print %117 : vector<7xi32>
    vector.print %118 : vector<7xf32>
    vector.print %120 : vector<7x15xi64>
    vector.print %125 : vector<15xi1>
    vector.print %144 : vector<1xf32>
    vector.print %163 : vector<7xi32>
    vector.print %181 : vector<7x16x7xf32>
    vector.print %207 : vector<1xi1>
    vector.print %215 : vector<1x15xf32>
    vector.print %217 : vector<7x16x7xi16>
    vector.print %228 : vector<7xi32>
    vector.print %231 : vector<16xi16>
    vector.print %247 : vector<7xf32>
    vector.print %true : i1
    vector.print %cst : f32
    vector.print %c1430998724_i64 : i64
    vector.print %c-24694_i16 : i16
    vector.print %c-625_i16 : i16
    vector.print %c-8096_i16 : i16
    vector.print %false : i1
    vector.print %c1523413605_i32 : i32
    vector.print %c1830459008_i32 : i32
    vector.print %cst_0 : f16
    vector.print %c1889544616_i64 : i64
    vector.print %true_1 : i1
    vector.print %c10966_i16 : i16
    vector.print %cst_2 : f16
    vector.print %c859027372_i32 : i32
    vector.print %cst_3 : f16
    vector.print %c1_i16 : i16
    vector.print %69 : f16
    vector.print %98 : f16
    vector.print %cst_29 : f32
    vector.print %191 : i16
    vector.print %cst_35 : f16
    vector.print %239 : i16
    return
  }
}
