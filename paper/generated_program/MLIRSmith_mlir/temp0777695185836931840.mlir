module {
  func.func @func1(%arg0: f16) {
    %cst = arith.constant 0x4E051F65 : f32
    %c555395333_i64 = arith.constant 555395333 : i64
    %cst_0 = arith.constant 0x4DEC7316 : f32
    %cst_1 = arith.constant 6.444800e+04 : f16
    %c1311768620_i32 = arith.constant 1311768620 : i32
    %true = arith.constant true
    %c1387978778_i64 = arith.constant 1387978778 : i64
    %false = arith.constant false
    %cst_2 = arith.constant 2.432000e+04 : f16
    %cst_3 = arith.constant 6.195200e+04 : f16
    %c77743054_i64 = arith.constant 77743054 : i64
    %c1454261105_i64 = arith.constant 1454261105 : i64
    %cst_4 = arith.constant 0x4DC9D28E : f32
    %c1485976549_i64 = arith.constant 1485976549 : i64
    %cst_5 = arith.constant 7.984000e+03 : f16
    %c-19239_i16 = arith.constant -19239 : i16
    %0 = tensor.empty() : tensor<10xi16>
    %1 = tensor.empty() : tensor<10xi16>
    %2 = tensor.empty() : tensor<7xi16>
    %3 = tensor.empty() : tensor<10xf32>
    %4 = tensor.empty() : tensor<7xi32>
    %5 = tensor.empty() : tensor<10xf32>
    %6 = tensor.empty() : tensor<10x7x10xi16>
    %7 = tensor.empty() : tensor<7xi64>
    %8 = tensor.empty() : tensor<7x10xi16>
    %9 = tensor.empty() : tensor<7xi64>
    %10 = tensor.empty() : tensor<10xi16>
    %11 = tensor.empty() : tensor<10x7x10xf32>
    %12 = tensor.empty() : tensor<7x10xf32>
    %13 = tensor.empty() : tensor<7x10xi16>
    %14 = tensor.empty() : tensor<7x10xi1>
    %15 = tensor.empty() : tensor<7x10xi16>
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
    %alloc = memref.alloc() : memref<10x7x10xf16>
    %alloc_6 = memref.alloc() : memref<10xi64>
    %alloc_7 = memref.alloc() : memref<7x10xf16>
    %alloc_8 = memref.alloc() : memref<10xi16>
    %alloc_9 = memref.alloc() : memref<10xf32>
    %alloc_10 = memref.alloc() : memref<7x10xf16>
    %alloc_11 = memref.alloc() : memref<10x7x10xi1>
    %alloc_12 = memref.alloc() : memref<7xi64>
    %alloc_13 = memref.alloc() : memref<10x7x10xi1>
    %alloc_14 = memref.alloc() : memref<10x7x10xf32>
    %alloc_15 = memref.alloc() : memref<7xf32>
    %alloc_16 = memref.alloc() : memref<10xi1>
    %alloc_17 = memref.alloc() : memref<7xi32>
    %alloc_18 = memref.alloc() : memref<7xf32>
    %alloc_19 = memref.alloc() : memref<7xi64>
    %alloc_20 = memref.alloc() : memref<7x10xi16>
    %16 = tensor.empty() : tensor<7xi16>
    %17 = linalg.copy ins(%2 : tensor<7xi16>) outs(%16 : tensor<7xi16>) -> tensor<7xi16>
    %18 = tensor.empty() : tensor<10xf32>
    %transposed = linalg.transpose ins(%alloc_9 : memref<10xf32>) outs(%18 : tensor<10xf32>) permutation = [0] 
    %alloc_21 = memref.alloc() : memref<10xi16>
    linalg.reduce ins(%8 : tensor<7x10xi16>) outs(%alloc_21 : memref<10xi16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %251 = math.powf %18, %18 : tensor<10xf32>
        %252 = vector.broadcast %cst_1 : f16 to vector<1xf16>
        %253 = vector.bitcast %252 : vector<1xf16> to vector<1xf16>
        %254 = math.exp %transposed : tensor<10xf32>
        %255 = math.cos %5 : tensor<10xf32>
        %256 = bufferization.clone %alloc_21 : memref<10xi16> to memref<10xi16>
        %257 = vector.load %alloc_13[%c8, %c2, %c3] : memref<10x7x10xi1>, vector<7x10xi1>
        affine.store %cst_2, %alloc_10[%c0, %c9] : memref<7x10xf16>
        %258 = math.absf %5 : tensor<10xf32>
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %19 = scf.parallel (%arg1, %arg2) = (%c10, %c10) to (%c5, %c8) step (%c2, %c1) init (%15) -> tensor<7x10xi16> {
      %251 = arith.ori %c1454261105_i64, %c1454261105_i64 : i64
      %252 = math.log2 %11 : tensor<10x7x10xf32>
      %expanded_62 = tensor.expand_shape %5 [[0, 1]] : tensor<10xf32> into tensor<10x1xf32>
      %253 = arith.xori %false, %false : i1
      %254 = vector.broadcast %cst_1 : f16 to vector<7xf16>
      %255 = vector.broadcast %cst : f32 to vector<7xf32>
      %256 = vector.fma %255, %255, %255 : vector<7xf32>
      %257 = vector.transpose %254, [0] : vector<7xf16> to vector<7xf16>
      %generated_63 = tensor.generate %c8 {
      ^bb0(%arg3: index):
        %268 = arith.subi %c1454261105_i64, %c1485976549_i64 : i64
        %269 = arith.subi %c1387978778_i64, %c77743054_i64 : i64
        vector.print %254 : vector<7xf16>
        %270 = arith.muli %c1454261105_i64, %c1387978778_i64 : i64
        tensor.yield %cst_3 : f16
      } : tensor<?xf16>
      %258 = arith.shrsi %c1485976549_i64, %c77743054_i64 : i64
      %259 = arith.negf %cst_1 : f16
      %260 = math.copysign %3, %3 : tensor<10xf32>
      %261 = arith.shrui %false, %true : i1
      %262 = index.casts %c-19239_i16 : i16 to index
      %263 = math.roundeven %cst_0 : f32
      %264 = math.fpowi %cst_5, %c1311768620_i32 : f16, i32
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %265 = vector.transfer_read %alloc_12[%c11], %c0_i64 : memref<7xi64>, vector<i64>
      %266 = vector.broadcast %c1454261105_i64 : i64 to vector<7x10xi64>
      %267 = tensor.empty() : tensor<7x10xi16>
      scf.reduce(%267)  : tensor<7x10xi16> {
      ^bb0(%arg3: tensor<7x10xi16>, %arg4: tensor<7x10xi16>):
        %268 = index.maxs %c8, %c12
        %269 = vector.splat %c5 : vector<7x10xindex>
        %270 = math.tanh %cst_5 : f16
        %271 = math.cos %cst_1 : f16
        bufferization.dealloc_tensor %12 : tensor<7x10xf32>
        %272 = tensor.empty() : tensor<7x1xf32>
        %273 = linalg.matmul ins(%12, %expanded_62 : tensor<7x10xf32>, tensor<10x1xf32>) outs(%272 : tensor<7x1xf32>) -> tensor<7x1xf32>
        %274 = math.powf %cst_4, %cst : f32
        %275 = arith.muli %c1454261105_i64, %c1387978778_i64 : i64
        %276 = tensor.empty() : tensor<7x10xi16>
        scf.reduce.return %276 : tensor<7x10xi16>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_7[%c12, %c3] : memref<7x10xf16>, vector<10xf16>
    affine.vector_store %20, %alloc_7[%c6, %c13] : memref<7x10xf16>, vector<10xf16>
    %21 = tensor.empty() : tensor<10xf32>
    %22 = tensor.empty() : tensor<f32>
    %23 = linalg.dot ins(%transposed, %21 : tensor<10xf32>, tensor<10xf32>) outs(%22 : tensor<f32>) -> tensor<f32>
    %24 = arith.remui %c1485976549_i64, %c555395333_i64 : i64
    %25 = arith.shrsi %c-19239_i16, %c-19239_i16 : i16
    %26 = vector.broadcast %false : i1 to vector<7x2x10xi1>
    %27 = vector.broadcast %true : i1 to vector<7x10xi1>
    %dest, %accumulated_value = vector.scan <minsi>, %26, %27 {inclusive = false, reduction_dim = 1 : i64} : vector<7x2x10xi1>, vector<7x10xi1>
    %28 = math.round %12 : tensor<7x10xf32>
    %29 = arith.maxui %c1311768620_i32, %c1311768620_i32 : i32
    %30 = math.ctpop %17 : tensor<7xi16>
    %31 = vector.extract_strided_slice %20 {offsets = [5], sizes = [2], strides = [1]} : vector<10xf16> to vector<2xf16>
    %32 = vector.matrix_multiply %20, %31 {lhs_columns = 2 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<2xf16>) -> vector<5xf16>
    %33 = arith.maxsi %false, %true : i1
    %34 = arith.ori %c1387978778_i64, %c555395333_i64 : i64
    %35 = arith.subi %c1311768620_i32, %c1311768620_i32 : i32
    %36 = math.floor %5 : tensor<10xf32>
    %37 = arith.remf %cst_3, %cst_1 : f16
    %38 = arith.minf %cst_1, %cst_1 : f16
    %39 = math.cttz %c77743054_i64 : i64
    %40 = arith.xori %false, %false : i1
    %41 = affine.load %alloc_8[%c8] : memref<10xi16>
    memref.store %cst, %alloc_18[%c0] : memref<7xf32>
    %42 = math.log10 %12 : tensor<7x10xf32>
    %43 = vector.bitcast %31 : vector<2xf16> to vector<2xf16>
    %44 = arith.addf %cst_0, %cst_0 : f32
    %45 = vector.matrix_multiply %32, %43 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 2 : i32} : (vector<5xf16>, vector<2xf16>) -> vector<10xf16>
    memref.store %c-19239_i16, %alloc_20[%c4, %c5] : memref<7x10xi16>
    %rank = tensor.rank %9 : tensor<7xi64>
    %46 = math.round %22 : tensor<f32>
    %alloca = memref.alloca() : memref<10xf16>
    %47 = memref.alloca_scope  -> (memref<7x10xi1>) {
      %251 = bufferization.to_memref %15 : memref<7x10xi16>
      %252 = math.rsqrt %5 : tensor<10xf32>
      %253 = arith.addi %c77743054_i64, %c555395333_i64 : i64
      %254 = vector.load %alloc_14[%c2, %c2, %c0] : memref<10x7x10xf32>, vector<7xf32>
      %255 = vector.bitcast %254 : vector<7xf32> to vector<7xf32>
      %256 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %31, %31, %cst_3 : vector<2xf16>, vector<2xf16> into f16
      %257 = math.cttz %c77743054_i64 : i64
      %258 = vector.broadcast %cst_0 : f32 to vector<7xf32>
      %259 = vector.fma %258, %254, %254 : vector<7xf32>
      %260 = arith.remui %false, %true : i1
      %261 = vector.broadcast %41 : i16 to vector<10x2xi16>
      %262 = vector.broadcast %41 : i16 to vector<2xi16>
      %dest_62, %accumulated_value_63 = vector.scan <minui>, %261, %262 {inclusive = true, reduction_dim = 0 : i64} : vector<10x2xi16>, vector<2xi16>
      %true_64 = arith.constant true
      %263 = vector.transfer_read %alloc_13[%c9, %c15, %c2], %true_64 : memref<10x7x10xi1>, vector<i1>
      %264 = index.casts %c1311768620_i32 : i32 to index
      %265 = scf.while (%arg1 = %c1454261105_i64) : (i64) -> i64 {
        %false_70 = index.bool.constant false
        %284 = arith.remsi %c77743054_i64, %c555395333_i64 : i64
        %285 = math.exp %cst_1 : f16
        %286 = arith.mulf %cst_5, %cst_3 : f16
        %287 = arith.shrui %c77743054_i64, %c1485976549_i64 : i64
        %288 = vector.load %alloc_6[%c3] : memref<10xi64>, vector<7xi64>
        %289 = math.copysign %18, %5 : tensor<10xf32>
        %290 = tensor.empty() : tensor<7xi16>
        scf.condition(%false) %c555395333_i64 : i64
      } do {
      ^bb0(%arg1: i64):
        %284 = vector.create_mask %rank, %c4, %c9 : vector<10x7x10xi1>
        %285 = vector.create_mask %c12, %c10 : vector<7x10xi1>
        %286 = arith.muli %c-19239_i16, %41 : i16
        %cst_70 = arith.constant 2.508800e+04 : f16
        %c1611535750_i32 = arith.constant 1611535750 : i32
        %287 = arith.shrui %c555395333_i64, %c555395333_i64 : i64
        %288 = math.absf %cst_1 : f16
        %289 = index.mul %c6, %c7
        %290 = memref.load %alloc_7[%c5, %c8] : memref<7x10xf16>
        %291 = vector.insert %285, %284 [4] : vector<7x10xi1> into vector<10x7x10xi1>
        %292 = math.absi %6 : tensor<10x7x10xi16>
        %293 = math.log1p %cst_3 : f16
        %294 = math.round %22 : tensor<f32>
        %295 = vector.multi_reduction <mul>, %258, %cst_4 [0] : vector<7xf32> to f32
        %296 = vector.multi_reduction <minf>, %255, %259 [] : vector<7xf32> to vector<7xf32>
        %297 = vector.broadcast %cst_4 : f32 to vector<10x7x10xf32>
        %298 = vector.fma %297, %297, %297 : vector<10x7x10xf32>
        scf.yield %c1387978778_i64 : i64
      }
      %266 = tensor.empty() : tensor<10xi16>
      %mapped_65 = linalg.map ins(%0, %alloc_21, %alloc_8 : tensor<10xi16>, memref<10xi16>, memref<10xi16>) outs(%266 : tensor<10xi16>)
        (%in: i16, %in_70: i16, %in_71: i16) {
          %284 = vector.load %alloc_9[%c4] : memref<10xf32>, vector<10x7x10xf32>
          %285 = vector.load %alloc_6[%c1] : memref<10xi64>, vector<7x10xi64>
          %collapsed_72 = tensor.collapse_shape %14 [[0, 1]] : tensor<7x10xi1> into tensor<70xi1>
          %286 = math.absi %c1387978778_i64 : i64
          %c583531698_i64 = arith.constant 583531698 : i64
          memref.copy %alloc_11, %alloc_13 : memref<10x7x10xi1> to memref<10x7x10xi1>
          %287 = arith.minsi %true_64, %false : i1
          %288 = bufferization.to_memref %9 : memref<7xi64>
          %289 = vector.load %alloc_12[%c2] : memref<7xi64>, vector<10xi64>
          %290 = math.rsqrt %22 : tensor<f32>
          %291 = math.log2 %21 : tensor<10xf32>
          %collapsed_73 = tensor.collapse_shape %13 [[0, 1]] : tensor<7x10xi16> into tensor<70xi16>
          memref.copy %288, %alloc_19 : memref<7xi64> to memref<7xi64>
          %expanded_74 = tensor.expand_shape %18 [[0, 1]] : tensor<10xf32> into tensor<10x1xf32>
          %292 = math.copysign %5, %5 : tensor<10xf32>
          %293 = arith.maxsi %false, %true : i1
          %294 = math.cos %cst_5 : f16
          %295 = vector.transpose %255, [0] : vector<7xf32> to vector<7xf32>
          %296 = vector.create_mask %c9, %c4, %c1 : vector<10x7x10xi1>
          %c0_i16 = arith.constant 0 : i16
          %297 = vector.transfer_read %13[%c3, %c12], %c0_i16 : tensor<7x10xi16>, vector<7xi16>
          %298 = bufferization.to_tensor %alloc_17 : memref<7xi32>
          %299 = affine.max affine_map<(d0, d1) -> (32)>(%c5, %264)
          %300 = math.exp2 %expanded_74 : tensor<10x1xf32>
          %301 = tensor.empty(%299) : tensor<7x?xf32>
          %302 = math.absi %collapsed_73 : tensor<70xi16>
          %303 = arith.subi %c555395333_i64, %c77743054_i64 : i64
          %304 = arith.maxui %c1311768620_i32, %c1311768620_i32 : i32
          %305 = math.absf %cst_0 : f32
          %306 = memref.load %alloc[%c9, %c2, %c6] : memref<10x7x10xf16>
          %307 = vector.broadcast %cst : f32 to vector<10xf32>
          %308 = vector.fma %307, %307, %307 : vector<10xf32>
          %309 = vector.broadcast %true : i1 to vector<7x10x7x10xi1>
          %310 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %296, %296, %309 : vector<10x7x10xi1>, vector<10x7x10xi1> into vector<7x10x7x10xi1>
          %311 = arith.addi %c1485976549_i64, %c1387978778_i64 : i64
          %c1_i16_75 = arith.constant 1 : i16
          linalg.yield %c1_i16_75 : i16
        }
      %collapsed_66 = tensor.collapse_shape %13 [[0, 1]] : tensor<7x10xi16> into tensor<70xi16>
      %267 = affine.if affine_set<(d0, d1) : ((d1 + 8) * -2 == 0, -(d1 + 8) == 0, d1 + 8 >= 0)>(%c3, %c13) -> f32 {
        %284 = arith.mulf %cst_5, %cst_3 : f16
        %285 = affine.load %alloc_17[%c10] : memref<7xi32>
        %286 = arith.subi %true_64, %true_64 : i1
        %287 = arith.ori %c1311768620_i32, %c1311768620_i32 : i32
        %288 = index.ceildivs %c3, %c9
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %31, %31, %cst_3 : vector<2xf16>, vector<2xf16> into f16
        %290 = math.tanh %22 : tensor<f32>
        %291 = math.expm1 %cst_1 : f16
        affine.yield %cst_0 : f32
      } else {
        %284 = math.ctlz %c1387978778_i64 : i64
        %285 = arith.minui %c1387978778_i64, %c77743054_i64 : i64
        %286 = arith.remui %c1387978778_i64, %c1387978778_i64 : i64
        %287 = vector.broadcast %cst : f32 to vector<7xf32>
        %288 = vector.fma %287, %259, %255 : vector<7xf32>
        %289 = arith.divsi %true_64, %true : i1
        %290 = arith.negf %cst_0 : f32
        %291 = arith.shli %c555395333_i64, %c77743054_i64 : i64
        %292 = math.exp %cst_0 : f32
        affine.yield %cst : f32
      }
      %268 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
      %269 = vector.outerproduct %255, %258, %268 {kind = #vector.kind<minf>} : vector<7xf32>, vector<7xf32>
      %270 = vector.load %alloc_17[%c4] : memref<7xi32>, vector<7x10xi32>
      %271 = affine.for %arg1 = 0 to 127 iter_args(%arg2 = %alloc_13) -> (memref<10x7x10xi1>) {
        affine.yield %arg2 : memref<10x7x10xi1>
      }
      %272 = math.copysign %transposed, %3 : tensor<10xf32>
      %273 = tensor.empty() : tensor<10xi16>
      %mapped_67 = linalg.map ins(%alloc_21 : memref<10xi16>) outs(%273 : tensor<10xi16>)
        (%in: i16) {
          %collapsed_70 = tensor.collapse_shape %15 [[0, 1]] : tensor<7x10xi16> into tensor<70xi16>
          %284 = vector.transpose %255, [0] : vector<7xf32> to vector<7xf32>
          memref.assume_alignment %alloc_20, 16 : memref<7x10xi16>
          %285 = index.maxu %c15, %c1
          %286 = arith.maxui %c1485976549_i64, %c1485976549_i64 : i64
          %287 = affine.apply affine_map<(d0, d1) -> (d1 - 4)>(%rank, %c0)
          %288 = arith.muli %c555395333_i64, %c1454261105_i64 : i64
          vector.print %258 : vector<7xf32>
          %289 = arith.remf %cst, %cst_4 : f32
          %290 = math.rsqrt %5 : tensor<10xf32>
          %291 = vector.transpose %43, [0] : vector<2xf16> to vector<2xf16>
          %292 = vector.transpose %45, [0] : vector<10xf16> to vector<10xf16>
          %293 = arith.addf %cst_4, %cst_0 : f32
          %294 = vector.broadcast %c1387978778_i64 : i64 to vector<7x10xi64>
          %295 = index.ceildivs %c12, %c14
          %296 = math.floor %3 : tensor<10xf32>
          %c24261_i16 = arith.constant 24261 : i16
          %297 = math.log1p %21 : tensor<10xf32>
          memref.assume_alignment %alloc_14, 8 : memref<10x7x10xf32>
          %298 = vector.transpose %43, [0] : vector<2xf16> to vector<2xf16>
          vector.print %32 : vector<5xf16>
          %alloca_71 = memref.alloca() : memref<7xf16>
          %299 = arith.xori %true_64, %true : i1
          %300 = index.ceildivs %c2, %c9
          %301 = arith.muli %c1311768620_i32, %c1311768620_i32 : i32
          %302 = math.sqrt %cst_5 : f16
          %303 = arith.andi %c555395333_i64, %c555395333_i64 : i64
          %304 = index.add %c7, %300
          %305 = tensor.empty() : tensor<10x2xi16>
          %306 = tensor.empty() : tensor<7x2xi16>
          %307 = linalg.matmul ins(%13, %305 : tensor<7x10xi16>, tensor<10x2xi16>) outs(%306 : tensor<7x2xi16>) -> tensor<7x2xi16>
          %308 = vector.create_mask %rank, %287, %300 : vector<10x7x10xi1>
          %309 = vector.splat %41 : vector<7x10xi16>
          %310 = math.copysign %18, %3 : tensor<10xf32>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      memref.copy %alloc_7, %alloc_10 : memref<7x10xf16> to memref<7x10xf16>
      %274 = math.log %22 : tensor<f32>
      %275 = math.ctpop %41 : i16
      %276 = math.log %cst_2 : f16
      %277 = bufferization.clone %alloc_10 : memref<7x10xf16> to memref<7x10xf16>
      %rank_68 = tensor.rank %9 : tensor<7xi64>
      %278 = math.expm1 %cst : f32
      %279 = vector.broadcast %c-19239_i16 : i16 to vector<10x7x10xi16>
      %280 = arith.maxui %c1311768620_i32, %c1311768620_i32 : i32
      %281 = vector.broadcast %c-19239_i16 : i16 to vector<7x10xi16>
      %282 = vector.insert %281, %279 [2] : vector<7x10xi16> into vector<10x7x10xi16>
      %283 = vector.splat %false : vector<10x7x10xi1>
      %alloc_69 = memref.alloc() : memref<7x10xi1>
      memref.alloca_scope.return %alloc_69 : memref<7x10xi1>
    }
    %48 = arith.remf %cst_0, %cst_4 : f32
    %49 = tensor.empty(%c7) : tensor<7x?xi16>
    %50 = math.log2 %18 : tensor<10xf32>
    %51 = arith.subi %c1454261105_i64, %c1485976549_i64 : i64
    bufferization.dealloc_tensor %15 : tensor<7x10xi16>
    %52 = index.castu %c3 : index to i32
    %53 = vector.load %alloc_15[%c3] : memref<7xf32>, vector<7x10xf32>
    %expanded = tensor.expand_shape %7 [[0, 1]] : tensor<7xi64> into tensor<7x1xi64>
    %54 = arith.shrsi %true, %false : i1
    %55 = arith.andi %c1485976549_i64, %c1387978778_i64 : i64
    %56 = math.round %11 : tensor<10x7x10xf32>
    scf.if %false {
      %251 = math.rsqrt %cst_0 : f32
      %alloc_62 = memref.alloc() : memref<10xf32>
      memref.copy %alloc_9, %alloc_62 : memref<10xf32> to memref<10xf32>
      %252 = vector.transpose %32, [0] : vector<5xf16> to vector<5xf16>
      %253 = affine.if affine_set<(d0, d1, d2, d3) : (d1 mod 64 == 0, 66 >= 0)>(%c9, %c1, %c13, %c11) -> i64 {
        vector.print %53 : vector<7x10xf32>
        %257 = memref.realloc %alloc_16 : memref<10xi1> to memref<10xi1>
        %258 = math.log10 %cst_4 : f32
        %259 = vector.broadcast %cst : f32 to vector<10xf32>
        %260 = vector.fma %259, %259, %259 : vector<10xf32>
        %261 = arith.maxui %c-19239_i16, %41 : i16
        %262 = arith.shrui %c555395333_i64, %c1387978778_i64 : i64
        memref.store %cst_0, %alloc_14[%c1, %c3, %c1] : memref<10x7x10xf32>
        %alloc_63 = memref.alloc() : memref<7x10xi16>
        memref.copy %alloc_20, %alloc_63 : memref<7x10xi16> to memref<7x10xi16>
        affine.yield %c77743054_i64 : i64
      } else {
        %false_63 = index.bool.constant false
        %257 = math.log %5 : tensor<10xf32>
        %258 = arith.maxsi %false, %false_63 : i1
        %259 = arith.muli %c1387978778_i64, %c1454261105_i64 : i64
        %260 = arith.maxsi %c77743054_i64, %c555395333_i64 : i64
        %261 = arith.divsi %c-19239_i16, %c-19239_i16 : i16
        %cst_64 = arith.constant 0x4E358EB7 : f32
        %262 = math.cttz %10 : tensor<10xi16>
        affine.yield %c1454261105_i64 : i64
      }
      %254 = math.round %cst_1 : f16
      %255 = index.add %c7, %c1
      %c1411914940_i32 = arith.constant 1411914940 : i32
      %256 = bufferization.to_tensor %47 : memref<7x10xi1>
    }
    %alloc_22 = memref.alloc() : memref<10xf16>
    %57 = math.log1p %cst_4 : f32
    %58 = tensor.empty() : tensor<10xi16>
    %mapped = linalg.map ins(%alloc_21, %1 : memref<10xi16>, tensor<10xi16>) outs(%58 : tensor<10xi16>)
      (%in: i16, %in_62: i16) {
        %251 = math.expm1 %cst_3 : f16
        %252 = arith.subi %c77743054_i64, %c555395333_i64 : i64
        %253 = bufferization.clone %alloc_7 : memref<7x10xf16> to memref<7x10xf16>
        %254 = affine.max affine_map<(d0, d1, d2) -> ((-d2) floordiv 64, -d2 + d2 - 8 + 128, d1)>(%c1, %c2, %c6)
        %255 = math.round %cst_1 : f16
        bufferization.dealloc_tensor %0 : tensor<10xi16>
        %256 = arith.maxf %cst_0, %cst : f32
        %257 = math.tanh %transposed : tensor<10xf32>
        %extracted_63 = tensor.extract %5[%c8] : tensor<10xf32>
        %258 = bufferization.clone %alloc_6 : memref<10xi64> to memref<10xi64>
        %259 = vector.broadcast %cst_1 : f16 to vector<2x2xf16>
        %260 = vector.outerproduct %43, %31, %259 {kind = #vector.kind<mul>} : vector<2xf16>, vector<2xf16>
        %261 = bufferization.to_memref %12 : memref<7x10xf32>
        %262 = math.absi %in_62 : i16
        %263 = affine.load %253[%c12, %c7] : memref<7x10xf16>
        %264 = arith.subi %c1454261105_i64, %c1485976549_i64 : i64
        %collapsed_64 = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<10x7x10xi16> into tensor<70x10xi16>
        %265 = arith.maxf %cst_4, %cst_0 : f32
        %266 = vector.shuffle %31, %45 [2, 3, 5, 6, 7, 8, 9, 11] : vector<2xf16>, vector<10xf16>
        %expanded_65 = tensor.expand_shape %0 [[0, 1]] : tensor<10xi16> into tensor<10x1xi16>
        %267 = index.sub %c2, %254
        %268 = index.ceildivu %c14, %c2
        %269 = math.log1p %extracted_63 : f32
        %270 = vector.bitcast %31 : vector<2xf16> to vector<2xf16>
        %271 = index.casts %c6 : index to i32
        %272 = math.expm1 %extracted_63 : f32
        %273 = math.powf %cst_0, %cst_0 : f32
        %274 = arith.maxf %cst_1, %cst_3 : f16
        memref.store %cst_4, %alloc_15[%c4] : memref<7xf32>
        bufferization.dealloc_tensor %15 : tensor<7x10xi16>
        %275 = arith.muli %41, %41 : i16
        %276 = index.ceildivs %c15, %c12
        %277 = math.log1p %21 : tensor<10xf32>
        %c1_i16_66 = arith.constant 1 : i16
        linalg.yield %c1_i16_66 : i16
      }
    vector.print %53 : vector<7x10xf32>
    %rank_23 = tensor.rank %5 : tensor<10xf32>
    %59 = arith.remui %c555395333_i64, %c1485976549_i64 : i64
    %60 = vector.multi_reduction <minf>, %20, %45 [] : vector<10xf16> to vector<10xf16>
    %61 = math.cttz %6 : tensor<10x7x10xi16>
    %62 = math.sqrt %transposed : tensor<10xf32>
    %63 = vector.broadcast %cst : f32 to vector<10xf32>
    %dest_24, %accumulated_value_25 = vector.scan <minf>, %53, %63 {inclusive = true, reduction_dim = 0 : i64} : vector<7x10xf32>, vector<10xf32>
    %64 = arith.minf %cst_3, %cst_3 : f16
    %65 = affine.apply affine_map<(d0) -> ((d0 floordiv 2) mod 8)>(%c7)
    %66 = arith.mulf %cst_2, %cst_1 : f16
    %67 = index.maxu %c2, %c8
    %68 = vector.broadcast %false : i1 to vector<7x10xi1>
    %69 = index.ceildivs %c1, %c13
    %70 = math.log %12 : tensor<7x10xf32>
    %71 = arith.maxf %cst_0, %cst_4 : f32
    %expanded_26 = tensor.expand_shape %2 [[0, 1]] : tensor<7xi16> into tensor<7x1xi16>
    %72 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, d0 * 64)>(%rank, %c12, %69, %rank)
    %73 = math.log %11 : tensor<10x7x10xf32>
    %cast = tensor.cast %14 : tensor<7x10xi1> to tensor<?x?xi1>
    %74 = index.casts %69 : index to i32
    %75 = vector.broadcast %false : i1 to vector<10xi1>
    %dest_27, %accumulated_value_28 = vector.scan <or>, %68, %75 {inclusive = false, reduction_dim = 0 : i64} : vector<7x10xi1>, vector<10xi1>
    %76 = vector.broadcast %cst_0 : f32 to vector<10xf32>
    %dest_29, %accumulated_value_30 = vector.scan <mul>, %53, %76 {inclusive = false, reduction_dim = 0 : i64} : vector<7x10xf32>, vector<10xf32>
    %77 = affine.apply affine_map<(d0, d1) -> (((d0 * -129) floordiv 2) * 4)>(%c15, %65)
    %collapsed = tensor.collapse_shape %12 [[0, 1]] : tensor<7x10xf32> into tensor<70xf32>
    memref.assume_alignment %alloc_19, 8 : memref<7xi64>
    bufferization.dealloc_tensor %6 : tensor<10x7x10xi16>
    %cast_31 = tensor.cast %58 : tensor<10xi16> to tensor<?xi16>
    %78 = arith.shrsi %c555395333_i64, %c1485976549_i64 : i64
    %79 = index.ceildivu %c12, %65
    %80 = tensor.empty() : tensor<7x10xi16>
    %mapped_32 = linalg.map ins(%8, %13, %15 : tensor<7x10xi16>, tensor<7x10xi16>, tensor<7x10xi16>) outs(%80 : tensor<7x10xi16>)
      (%in: i16, %in_62: i16, %in_63: i16) {
        %251 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%72, %rank, %c0, %c3)
        %252 = arith.maxf %cst_2, %cst_5 : f16
        %253 = math.log1p %cst_3 : f16
        %254 = arith.shli %c77743054_i64, %c555395333_i64 : i64
        %255 = bufferization.to_memref %expanded_26 : memref<7x1xi16>
        %256 = arith.maxf %cst_3, %cst_1 : f16
        %257 = memref.atomic_rmw ori %c1485976549_i64, %alloc_12[%c1] : (i64, memref<7xi64>) -> i64
        %258 = vector.broadcast %in : i16 to vector<7xi16>
        %259 = vector.broadcast %true : i1 to vector<7xi1>
        %260 = vector.maskedload %alloc_21[%c5], %259, %258 : memref<10xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %261 = math.round %collapsed : tensor<70xf32>
        %cst_64 = arith.constant 5.232000e+04 : f16
        bufferization.dealloc_tensor %collapsed : tensor<70xf32>
        %262 = index.add %c6, %c9
        %263 = bufferization.to_memref %1 : memref<10xi16>
        %264 = tensor.empty() : tensor<7x1xi64>
        %mapped_65 = linalg.map ins(%expanded, %expanded : tensor<7x1xi64>, tensor<7x1xi64>) outs(%264 : tensor<7x1xi64>)
          (%in_68: i64, %in_69: i64) {
            %282 = index.add %c2, %c10
            %283 = math.fma %12, %12, %12 : tensor<7x10xf32>
            %284 = math.roundeven %cst_2 : f16
            %285 = arith.mulf %cst, %cst_4 : f32
            %286 = index.maxu %c3, %c4
            vector.print %258 : vector<7xi16>
            %287 = math.ipowi %false, %false : i1
            %288 = math.exp %cst_1 : f16
            %289 = math.round %collapsed : tensor<70xf32>
            %290 = bufferization.to_memref %23 : memref<f32>
            %291 = arith.remf %cst_1, %cst_1 : f16
            %292 = math.log %12 : tensor<7x10xf32>
            %alloca_70 = memref.alloca() : memref<7xi64>
            %293 = tensor.empty() : tensor<10xi32>
            %294 = math.fpowi %21, %293 : tensor<10xf32>, tensor<10xi32>
            %295 = math.ceil %18 : tensor<10xf32>
            %296 = index.castu %c2 : index to i32
            %297 = math.log %cst_3 : f16
            %dest_71, %accumulated_value_72 = vector.scan <xor>, %68, %259 {inclusive = false, reduction_dim = 1 : i64} : vector<7x10xi1>, vector<7xi1>
            %298 = vector.broadcast %c77743054_i64 : i64 to vector<7xi64>
            %299 = vector.maskedload %alloc_6[%c0], %259, %298 : memref<10xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
            %300 = vector.broadcast %cst : f32 to vector<10x7x10xf32>
            %301 = vector.fma %300, %300, %300 : vector<10x7x10xf32>
            %302 = math.rsqrt %5 : tensor<10xf32>
            %303 = bufferization.to_memref %2 : memref<7xi16>
            %304 = arith.maxsi %c1311768620_i32, %c1311768620_i32 : i32
            %305 = vector.insert %in_68, %299 [6] : i64 into vector<7xi64>
            %306 = vector.broadcast %cst : f32 to vector<10x7xf32>
            %dest_73, %accumulated_value_74 = vector.scan <minf>, %301, %306 {inclusive = true, reduction_dim = 2 : i64} : vector<10x7x10xf32>, vector<10x7xf32>
            %307 = arith.floordivsi %c1387978778_i64, %c1454261105_i64 : i64
            %308 = vector.shuffle %31, %43 [1, 3] : vector<2xf16>, vector<2xf16>
            %309 = math.cos %cst_2 : f16
            %310 = arith.negf %cst : f32
            %311 = math.log %cst_0 : f32
            %312 = math.log %collapsed : tensor<70xf32>
            %313 = math.expm1 %5 : tensor<10xf32>
            %c0_i64 = arith.constant 0 : i64
            linalg.yield %c0_i64 : i64
          }
        %265 = math.log1p %11 : tensor<10x7x10xf32>
        %266 = arith.addi %c1387978778_i64, %c1454261105_i64 : i64
        %267 = bufferization.clone %47 : memref<7x10xi1> to memref<7x10xi1>
        %268 = affine.load %alloc_15[%c8] : memref<7xf32>
        %269 = math.expm1 %11 : tensor<10x7x10xf32>
        %270 = arith.maxui %c1387978778_i64, %c77743054_i64 : i64
        %271 = vector.shuffle %68, %68 [0, 3, 5, 8, 9, 11, 12] : vector<7x10xi1>, vector<7x10xi1>
        memref.store %cst_1, %alloc_10[%c2, %c1] : memref<7x10xf16>
        %272 = bufferization.to_tensor %alloc_12 : memref<7xi64>
        %273 = index.ceildivs %c3, %rank
        %274 = math.exp %cst_3 : f16
        %275 = index.mul %c12, %72
        %276 = arith.maxsi %c-19239_i16, %c-19239_i16 : i16
        %277 = vector.broadcast %cst_0 : f32 to vector<7xf32>
        %dest_66, %accumulated_value_67 = vector.scan <minf>, %53, %277 {inclusive = false, reduction_dim = 1 : i64} : vector<7x10xf32>, vector<7xf32>
        %278 = tensor.empty() : tensor<i32>
        %279 = math.fpowi %22, %278 : tensor<f32>, tensor<i32>
        %280 = index.ceildivs %rank_23, %c0
        %281 = arith.maxsi %c1311768620_i32, %c1311768620_i32 : i32
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %81 = arith.shrsi %c1387978778_i64, %c555395333_i64 : i64
    %82 = arith.minf %cst_3, %cst_2 : f16
    %alloca_33 = memref.alloca() : memref<7x10xi16>
    %generated = tensor.generate %c12, %67 {
    ^bb0(%arg1: index, %arg2: index):
      %251 = arith.shli %c555395333_i64, %c1485976549_i64 : i64
      %252 = index.castu %c14 : index to i32
      %253 = arith.shrsi %c-19239_i16, %41 : i16
      %254 = math.atan2 %cst_0, %cst_0 : f32
      tensor.yield %c-19239_i16 : i16
    } : tensor<?x?xi16>
    %83 = vector.transpose %31, [0] : vector<2xf16> to vector<2xf16>
    %84 = bufferization.clone %alloc_7 : memref<7x10xf16> to memref<7x10xf16>
    %85 = arith.remui %c77743054_i64, %c1387978778_i64 : i64
    %86 = math.absf %22 : tensor<f32>
    %87 = math.tanh %11 : tensor<10x7x10xf32>
    %88 = math.cos %cst : f32
    %89 = tensor.empty() : tensor<7xi16>
    %90 = arith.floordivsi %c-19239_i16, %41 : i16
    %alloca_34 = memref.alloca() : memref<7xf32>
    %91 = vector.broadcast %cst_0 : f32 to vector<10xf32>
    %dest_35, %accumulated_value_36 = vector.scan <add>, %53, %91 {inclusive = true, reduction_dim = 0 : i64} : vector<7x10xf32>, vector<10xf32>
    %92 = affine.load %alloc_16[%c2] : memref<10xi1>
    bufferization.dealloc_tensor %22 : tensor<f32>
    %93 = bufferization.to_tensor %alloc_19 : memref<7xi64>
    %expanded_37 = tensor.expand_shape %7 [[0, 1]] : tensor<7xi64> into tensor<7x1xi64>
    %94 = arith.mulf %cst_3, %cst_1 : f16
    %95 = math.expm1 %cst_3 : f16
    %96 = vector.broadcast %cst : f32 to vector<10x10xf32>
    %97 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %53, %53, %96 : vector<7x10xf32>, vector<7x10xf32> into vector<10x10xf32>
    %98 = tensor.empty() : tensor<10x7x10xi1>
    %99 = vector.broadcast %c1311768620_i32 : i32 to vector<7x10xi32>
    %100 = vector.gather %98[%c7, %rank, %c3] [%99], %68, %68 : tensor<10x7x10xi1>, vector<7x10xi32>, vector<7x10xi1>, vector<7x10xi1> into vector<7x10xi1>
    bufferization.dealloc_tensor %11 : tensor<10x7x10xf32>
    %cast_38 = tensor.cast %15 : tensor<7x10xi16> to tensor<?x?xi16>
    %alloca_39 = memref.alloca() : memref<10x7x10xi64>
    %101 = arith.remf %cst_5, %cst_5 : f16
    memref.copy %alloc_13, %alloc_11 : memref<10x7x10xi1> to memref<10x7x10xi1>
    %102 = arith.maxui %41, %41 : i16
    %103 = index.maxu %c3, %c5
    %104 = arith.andi %true, %92 : i1
    memref.assume_alignment %alloc_16, 1 : memref<10xi1>
    %105 = math.round %23 : tensor<f32>
    %106 = vector.shuffle %31, %20 [4, 5, 7, 8, 9, 11] : vector<2xf16>, vector<10xf16>
    %107 = bufferization.to_tensor %84 : memref<7x10xf16>
    vector.print %20 : vector<10xf16>
    %108 = memref.load %alloc_15[%c3] : memref<7xf32>
    %109 = index.sizeof
    %110 = vector.splat %c-19239_i16 : vector<10xi16>
    %extracted = tensor.extract %14[%c1, %c0] : tensor<7x10xi1>
    %111 = arith.ceildivsi %false, %false : i1
    memref.store %cst, %alloc_18[%c3] : memref<7xf32>
    %112 = math.round %collapsed : tensor<70xf32>
    %113 = math.expm1 %transposed : tensor<10xf32>
    %114 = arith.remf %cst_1, %cst_3 : f16
    %cast_40 = tensor.cast %2 : tensor<7xi16> to tensor<?xi16>
    %115 = arith.shli %c1485976549_i64, %c1387978778_i64 : i64
    %116 = affine.max affine_map<(d0, d1, d2) -> (d2 * 16, d0 ceildiv 8 + d1 floordiv 4 - 1)>(%77, %rank_23, %c0)
    %117 = memref.atomic_rmw minf %cst_0, %alloc_18[%c6] : (f32, memref<7xf32>) -> f32
    %118 = bufferization.clone %alloc_18 : memref<7xf32> to memref<7xf32>
    %rank_41 = tensor.rank %2 : tensor<7xi16>
    %119 = bufferization.clone %alloc_20 : memref<7x10xi16> to memref<7x10xi16>
    %120 = index.add %c4, %72
    %121 = index.castu %116 : index to i32
    %122 = arith.remui %92, %true : i1
    %true_42 = index.bool.constant true
    %cast_43 = tensor.cast %1 : tensor<10xi16> to tensor<?xi16>
    %123 = index.castu %extracted : i1 to index
    %124 = arith.mulf %cst_2, %cst_3 : f16
    %125 = memref.realloc %alloc_12 : memref<7xi64> to memref<2xi64>
    %126 = math.exp %5 : tensor<10xf32>
    %127 = affine.load %alloc_8[%c7] : memref<10xi16>
    %128 = math.log %23 : tensor<f32>
    %129 = memref.realloc %alloc_21 : memref<10xi16> to memref<2xi16>
    %130 = bufferization.clone %alloc_21 : memref<10xi16> to memref<10xi16>
    %131 = vector.broadcast %cst_2 : f16 to vector<2x2xf16>
    %132 = vector.outerproduct %43, %43, %131 {kind = #vector.kind<mul>} : vector<2xf16>, vector<2xf16>
    %133 = vector.broadcast %c1311768620_i32 : i32 to vector<7xi32>
    %dest_44, %accumulated_value_45 = vector.scan <mul>, %99, %133 {inclusive = false, reduction_dim = 1 : i64} : vector<7x10xi32>, vector<7xi32>
    %134 = vector.broadcast %cst : f32 to vector<7xf32>
    %135 = vector.fma %134, %134, %134 : vector<7xf32>
    memref.alloca_scope  {
      %expanded_62 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<7x10xi1> into tensor<7x10x1xi1>
      %251 = math.round %5 : tensor<10xf32>
      %extracted_63 = tensor.extract %expanded_37[%c4, %c0] : tensor<7x1xi64>
      %252 = index.mul %c9, %c3
      %253 = math.round %cst_3 : f16
      %254 = bufferization.to_memref %6 : memref<10x7x10xi16>
      %255 = bufferization.to_tensor %alloc : memref<10x7x10xf16>
      %256 = vector.broadcast %true_42 : i1 to vector<7xi1>
      %dest_64, %accumulated_value_65 = vector.scan <add>, %68, %256 {inclusive = false, reduction_dim = 1 : i64} : vector<7x10xi1>, vector<7xi1>
      vector.print %100 : vector<7x10xi1>
      %cast_66 = tensor.cast %11 : tensor<10x7x10xf32> to tensor<?x?x?xf32>
      %257 = math.ctpop %extracted_63 : i64
      %258 = index.ceildivs %c0, %120
      %259 = math.log2 %cst_3 : f16
      %260 = math.ctpop %extracted : i1
      %261 = math.copysign %23, %23 : tensor<f32>
      %262 = arith.minf %cst_0, %cst : f32
      %263 = index.ceildivs %c10, %c12
      %264 = index.sizeof
      %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %31, %31, %cst_5 : vector<2xf16>, vector<2xf16> into f16
      vector.print %53 : vector<7x10xf32>
      %266 = vector.insertelement %cst_1, %43[%69 : index] : vector<2xf16>
      %267 = math.round %cst : f32
      %268 = math.log2 %collapsed : tensor<70xf32>
      %269 = bufferization.clone %alloc_17 : memref<7xi32> to memref<7xi32>
      %270 = vector.broadcast %true : i1 to vector<10x10xi1>
      %271 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %68, %68, %270 : vector<7x10xi1>, vector<7x10xi1> into vector<10x10xi1>
      %272 = math.log %21 : tensor<10xf32>
      %273 = affine.min affine_map<(d0, d1, d2) -> (d0 - d1 mod 8, -((d0 mod 32) floordiv 8), d1)>(%263, %c7, %252)
      %274 = arith.maxsi %c1311768620_i32, %c1311768620_i32 : i32
      %275 = arith.shli %true, %false : i1
      %276 = affine.load %47[%c5, %c11] : memref<7x10xi1>
      %277 = index.ceildivu %c7, %103
      %278 = index.casts %c0 : index to i32
    }
    %136 = vector.splat %c9 : vector<10x7x10xindex>
    %137 = math.powf %12, %12 : tensor<7x10xf32>
    %138 = arith.floordivsi %true_42, %92 : i1
    %139 = scf.execute_region -> index {
      %251 = affine.apply affine_map<(d0, d1) -> (d1 - 4)>(%c5, %77)
      %252 = arith.maxf %cst_0, %cst_0 : f32
      %alloca_62 = memref.alloca() : memref<10x7x10xi32>
      %253 = math.absf %18 : tensor<10xf32>
      %rank_63 = tensor.rank %cast_43 : tensor<?xi16>
      %254 = arith.floordivsi %c-19239_i16, %c-19239_i16 : i16
      %255 = vector.splat %c6 : vector<10xindex>
      %256 = arith.andi %92, %92 : i1
      %257 = vector.broadcast %extracted : i1 to vector<7xi1>
      %258 = vector.maskedload %alloc_9[%c2], %257, %134 : memref<10xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
      %259 = index.add %c10, %69
      %260 = index.maxu %c15, %c12
      %cast_64 = tensor.cast %7 : tensor<7xi64> to tensor<?xi64>
      %261 = index.sub %c13, %69
      %262 = bufferization.to_memref %5 : memref<10xf32>
      %263 = index.casts %103 : index to i32
      %264 = vector.broadcast %cst : f32 to vector<10xf32>
      %265 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %53, %258, %264 : vector<7x10xf32>, vector<7xf32> into vector<10xf32>
      scf.yield %rank_41 : index
    }
    %140 = arith.minsi %c1311768620_i32, %c1311768620_i32 : i32
    %141 = math.roundeven %11 : tensor<10x7x10xf32>
    %142 = index.ceildivu %c1, %67
    %143 = arith.minf %cst_0, %cst_4 : f32
    %144 = bufferization.to_tensor %alloc_11 : memref<10x7x10xi1>
    %145 = math.exp %5 : tensor<10xf32>
    %alloca_46 = memref.alloca() : memref<7x10xf16>
    %146 = index.ceildivs %c1, %c10
    %147 = vector.broadcast %true_42 : i1 to vector<7xi1>
    %dest_47, %accumulated_value_48 = vector.scan <add>, %68, %147 {inclusive = false, reduction_dim = 1 : i64} : vector<7x10xi1>, vector<7xi1>
    %148 = affine.max affine_map<(d0, d1, d2) -> ((d2 mod 8) ceildiv 2, (d2 mod 8) mod 64, d2 mod 8, d2 - d0)>(%77, %c7, %c13)
    %149 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %135, %135, %cst_0 : vector<7xf32>, vector<7xf32> into f32
    %150 = arith.mulf %cst_2, %cst_5 : f16
    %151 = math.cos %cst_3 : f16
    %cst_49 = arith.constant 1.80502016E+9 : f32
    memref.assume_alignment %alloc_16, 2 : memref<10xi1>
    %152 = index.divu %c11, %rank_23
    %153 = vector.broadcast %cst_2 : f16 to vector<10x10xf16>
    %154 = vector.outerproduct %20, %45, %153 {kind = #vector.kind<minf>} : vector<10xf16>, vector<10xf16>
    %155 = math.cos %cst_2 : f16
    %156 = index.sizeof
    %157 = math.cttz %41 : i16
    %158 = index.ceildivs %142, %rank_23
    %159 = math.powf %cst_2, %cst_3 : f16
    bufferization.dealloc_tensor %cast_40 : tensor<?xi16>
    %160 = memref.alloca_scope  -> (memref<10xi64>) {
      %251 = arith.maxsi %c77743054_i64, %c1485976549_i64 : i64
      %252 = arith.minf %cst_0, %cst : f32
      %253 = arith.addf %cst_0, %cst_4 : f32
      %254 = arith.minui %c1485976549_i64, %c555395333_i64 : i64
      %255 = bufferization.to_memref %11 : memref<10x7x10xf32>
      %256 = math.tanh %18 : tensor<10xf32>
      memref.tensor_store %4, %alloc_17 : memref<7xi32>
      %257 = arith.muli %c555395333_i64, %c1485976549_i64 : i64
      %258 = vector.load %130[%c5] : memref<10xi16>, vector<7x10xi16>
      %259 = math.tanh %11 : tensor<10x7x10xf32>
      %260 = vector.multi_reduction <and>, %100, %true [0, 1] : vector<7x10xi1> to i1
      %261 = arith.shli %false, %extracted : i1
      %262 = bufferization.to_tensor %alloc_12 : memref<7xi64>
      %263 = arith.subi %41, %127 : i16
      memref.copy %alloc_15, %118 : memref<7xf32> to memref<7xf32>
      %264 = vector.splat %c13 : vector<7x10xindex>
      %265 = arith.mulf %cst, %cst : f32
      %266 = math.log %11 : tensor<10x7x10xf32>
      %267 = affine.load %alloc_14[%c13, %c0, %c11] : memref<10x7x10xf32>
      %268 = scf.index_switch %139 -> vector<10xf32> 
      case 1 {
        %279 = index.sizeof
        %280 = vector.broadcast %true : i1 to vector<7xi1>
        %dest_63, %accumulated_value_64 = vector.scan <xor>, %100, %280 {inclusive = true, reduction_dim = 1 : i64} : vector<7x10xi1>, vector<7xi1>
        %281 = affine.load %255[%c2, %c1, %c12] : memref<10x7x10xf32>
        %282 = math.atan2 %11, %11 : tensor<10x7x10xf32>
        %283 = vector.broadcast %c1311768620_i32 : i32 to vector<10xi32>
        %284 = vector.insert %283, %99 [3] : vector<10xi32> into vector<7x10xi32>
        %285 = arith.subi %127, %c-19239_i16 : i16
        memref.store %cst_3, %alloc[%c5, %c1, %c1] : memref<10x7x10xf16>
        %286 = tensor.empty() : tensor<10xf32>
        %287 = index.maxs %142, %c1
        %288 = arith.mulf %cst_2, %cst_3 : f16
        %289 = arith.subi %92, %260 : i1
        %290 = math.exp %cst_5 : f16
        %291 = arith.muli %c77743054_i64, %c555395333_i64 : i64
        %cst_65 = arith.constant 1.77412416E+9 : f32
        %292 = arith.maxui %true, %false : i1
        %293 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 ceildiv 2 - d0)>(%158, %c3, %c1, %c13)
        %294 = vector.broadcast %267 : f32 to vector<10xf32>
        scf.yield %294 : vector<10xf32>
      }
      default {
        %279 = vector.transpose %68, [0, 1] : vector<7x10xi1> to vector<7x10xi1>
        %280 = arith.shrsi %false, %true : i1
        %281 = math.absi %false : i1
        %282 = math.cttz %13 : tensor<7x10xi16>
        %283 = bufferization.to_tensor %118 : memref<7xf32>
        %284 = vector.broadcast %92 : i1 to vector<10xi1>
        %285 = vector.multi_reduction <maxf>, %31, %31 [] : vector<2xf16> to vector<2xf16>
        %286 = memref.realloc %alloc_15 : memref<7xf32> to memref<2xf32>
        %cst_63 = arith.constant 1.47262144E+9 : f32
        %287 = math.rsqrt %11 : tensor<10x7x10xf32>
        %288 = math.exp %12 : tensor<7x10xf32>
        %289 = arith.shrsi %92, %extracted : i1
        %290 = arith.addi %92, %true_42 : i1
        %291 = arith.addf %cst_4, %cst : f32
        %292 = math.ctpop %15 : tensor<7x10xi16>
        %293 = arith.ceildivsi %true_42, %92 : i1
        %294 = vector.broadcast %cst_0 : f32 to vector<10xf32>
        scf.yield %294 : vector<10xf32>
      }
      memref.copy %84, %alloc_10 : memref<7x10xf16> to memref<7x10xf16>
      %269 = math.absf %3 : tensor<10xf32>
      %270 = arith.maxf %cst, %cst_0 : f32
      %271 = math.round %18 : tensor<10xf32>
      %alloc_62 = memref.alloc() : memref<7x10xi1>
      memref.copy %47, %alloc_62 : memref<7x10xi1> to memref<7x10xi1>
      %272 = vector.shuffle %20, %43 [3, 5, 7, 8, 10] : vector<10xf16>, vector<2xf16>
      %273 = affine.load %alloc_19[%c1] : memref<7xi64>
      %274 = vector.create_mask %120 : vector<7xi1>
      %275 = arith.remui %273, %c555395333_i64 : i64
      %276 = arith.floordivsi %true, %true_42 : i1
      %277 = math.log %5 : tensor<10xf32>
      %278 = arith.ori %c77743054_i64, %c1485976549_i64 : i64
      memref.alloca_scope.return %alloc_6 : memref<10xi64>
    }
    %alloca_50 = memref.alloca() : memref<10x7x10xi16>
    %161 = math.round %cst_1 : f16
    %162 = math.absi %127 : i16
    %163 = arith.remf %cst_0, %cst_4 : f32
    %cast_51 = tensor.cast %5 : tensor<10xf32> to tensor<?xf32>
    %164 = affine.if affine_set<(d0, d1) : (((d1 ceildiv 4) floordiv 8 + 8) * 32 >= 0, ((d1 ceildiv 4) floordiv 8 + 8) * 32 == 0, d1 ceildiv 4 + ((d1 ceildiv 4) floordiv 8 + 8) * 64 == 0)>(%c10, %c0) -> memref<7xi32> {
      %alloca_62 = memref.alloca() : memref<10x7x10xi16>
      memref.alloca_scope  {
        %259 = arith.remf %cst_1, %cst_3 : f16
        %260 = vector.load %alloc_13[%c0, %c6, %c3] : memref<10x7x10xi1>, vector<7x10xi1>
        %261 = index.sub %109, %103
        %262 = math.copysign %22, %23 : tensor<f32>
        %263 = affine.load %alloc_14[%c10, %c10, %c3] : memref<10x7x10xf32>
        %264 = tensor.empty() : tensor<10xi1>
        %265 = index.ceildivu %c14, %c1
        %266 = vector.multi_reduction <mul>, %135, %263 [0] : vector<7xf32> to f32
        %267 = index.sizeof
        %268 = math.ipowi %144, %144 : tensor<10x7x10xi1>
        %269 = vector.insert %cst_5, %31 [0] : f16 into vector<2xf16>
        %270 = arith.maxf %cst_0, %cst_4 : f32
        %271 = math.absf %cst_3 : f16
        memref.copy %alloc_21, %130 : memref<10xi16> to memref<10xi16>
        %272 = math.log %cst_5 : f16
        %273 = vector.insertelement %266, %134[%142 : index] : vector<7xf32>
        memref.copy %alloc_21, %130 : memref<10xi16> to memref<10xi16>
        %274 = vector.broadcast %true_42 : i1 to vector<7xi1>
        %dest_63, %accumulated_value_64 = vector.scan <minsi>, %100, %274 {inclusive = true, reduction_dim = 1 : i64} : vector<7x10xi1>, vector<7xi1>
        %275 = vector.broadcast %cst_4 : f32 to vector<10xf32>
        %276 = vector.insert %275, %53 [4] : vector<10xf32> into vector<7x10xf32>
        %277 = index.sub %c12, %109
        %278 = math.absi %1 : tensor<10xi16>
        %cst_65 = arith.constant 4.054400e+04 : f16
        %cst_66 = arith.constant 4.771200e+04 : f16
        %279 = index.sub %120, %261
        %280 = arith.maxsi %c555395333_i64, %c1485976549_i64 : i64
        %281 = arith.minsi %c77743054_i64, %c1485976549_i64 : i64
        %282 = index.sizeof
        %283 = arith.shrsi %true, %extracted : i1
        %284 = arith.negf %cst_0 : f32
        %285 = math.rsqrt %107 : tensor<7x10xf16>
        %286 = tensor.empty(%c4) : tensor<?xf16>
        %287 = math.round %cst_1 : f16
      }
      %251 = math.log1p %cst_3 : f16
      %252 = vector.broadcast %c1454261105_i64 : i64 to vector<7xi64>
      %253 = vector.broadcast %extracted : i1 to vector<7xi1>
      %254 = vector.maskedload %alloc_12[%c2], %253, %252 : memref<7xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
      %255 = bufferization.to_memref %7 : memref<7xi64>
      %256 = math.cos %cst_5 : f16
      %257 = math.log2 %12 : tensor<7x10xf32>
      %258 = vector.bitcast %254 : vector<7xi64> to vector<7xi64>
      affine.yield %alloc_17 : memref<7xi32>
    } else {
      %251 = arith.remf %cst_2, %cst_3 : f16
      %252 = arith.shli %extracted, %true_42 : i1
      %253 = index.ceildivu %c7, %156
      %254 = arith.mulf %cst_0, %cst_0 : f32
      %255 = math.exp %12 : tensor<7x10xf32>
      %256 = arith.maxsi %c1485976549_i64, %c77743054_i64 : i64
      %257 = index.add %65, %c8
      %258 = affine.load %alloc_16[%c7] : memref<10xi1>
      affine.yield %alloc_17 : memref<7xi32>
    }
    %165 = arith.mulf %cst_3, %cst_5 : f16
    %166 = bufferization.to_tensor %alloc_13 : memref<10x7x10xi1>
    %extracted_52 = tensor.extract %8[%c0, %c5] : tensor<7x10xi16>
    %167 = arith.maxf %cst_2, %cst_5 : f16
    %168 = arith.mulf %cst_4, %cst_4 : f32
    %169 = arith.maxf %cst_4, %cst_4 : f32
    %alloca_53 = memref.alloca() : memref<10x7x10xi16>
    %170 = index.castu %67 : index to i32
    %171 = math.log1p %cst_3 : f16
    %172 = arith.andi %c1485976549_i64, %c1454261105_i64 : i64
    %173 = math.tanh %transposed : tensor<10xf32>
    %174 = vector.multi_reduction <maxf>, %43, %31 [] : vector<2xf16> to vector<2xf16>
    %175 = math.log %3 : tensor<10xf32>
    %176 = vector.broadcast %c1311768620_i32 : i32 to vector<7xi32>
    %dest_54, %accumulated_value_55 = vector.scan <and>, %99, %176 {inclusive = true, reduction_dim = 1 : i64} : vector<7x10xi32>, vector<7xi32>
    %177 = affine.if affine_set<(d0, d1) : (d0 mod 8 - 128 >= 0)>(%c12, %c14) -> i32 {
      affine.store %cst_5, %alloc_7[%c11, %c7] : memref<7x10xf16>
      %251 = index.ceildivs %158, %139
      %252 = vector.broadcast %cst_0 : f32 to vector<10xf32>
      %253 = vector.fma %252, %252, %252 : vector<10xf32>
      %254 = memref.realloc %alloc_9 : memref<10xf32> to memref<2xf32>
      %255 = index.castu %158 : index to i32
      vector.print %99 : vector<7x10xi32>
      %alloca_62 = memref.alloca() : memref<7xi32>
      %256 = vector.broadcast %c1311768620_i32 : i32 to vector<7xi32>
      %257 = vector.multi_reduction <and>, %99, %256 [1] : vector<7x10xi32> to vector<7xi32>
      affine.yield %c1311768620_i32 : i32
    } else {
      %251 = index.ceildivu %152, %109
      %252 = memref.atomic_rmw minf %cst_0, %alloc_9[%c1] : (f32, memref<10xf32>) -> f32
      %253 = index.floordivs %c2, %c0
      %254 = vector.broadcast %c1485976549_i64 : i64 to vector<10x7x10xi64>
      %255 = vector.broadcast %92 : i1 to vector<10x7x10xi1>
      %256 = vector.broadcast %c1311768620_i32 : i32 to vector<10x7x10xi32>
      %257 = vector.gather %160[%c7] [%256], %255, %254 : memref<10xi64>, vector<10x7x10xi32>, vector<10x7x10xi1>, vector<10x7x10xi64> into vector<10x7x10xi64>
      %258 = index.add %72, %c0
      %c-10524_i16 = arith.constant -10524 : i16
      %259 = arith.mulf %cst_2, %cst_3 : f16
      %260 = affine.apply affine_map<(d0, d1, d2) -> (d0 + 64)>(%c10, %c10, %139)
      affine.yield %c1311768620_i32 : i32
    }
    %178 = arith.maxui %c1454261105_i64, %c77743054_i64 : i64
    %179 = scf.while (%arg1 = %alloc_6) : (memref<10xi64>) -> memref<10xi64> {
      %251 = math.cos %cst_3 : f16
      %252 = scf.execute_region -> index {
        bufferization.dealloc_tensor %58 : tensor<10xi16>
        %258 = vector.broadcast %cst_0 : f32 to vector<10xf32>
        %259 = vector.fma %258, %258, %258 : vector<10xf32>
        %260 = math.round %5 : tensor<10xf32>
        %261 = arith.remf %cst_1, %cst_3 : f16
        memref.tensor_store %14, %47 : memref<7x10xi1>
        %262 = math.fma %18, %3, %transposed : tensor<10xf32>
        %263 = math.log2 %collapsed : tensor<70xf32>
        %extracted_63 = tensor.extract %17[%c1] : tensor<7xi16>
        %264 = vector.multi_reduction <minf>, %43, %cst_5 [0] : vector<2xf16> to f16
        %265 = arith.addi %c1454261105_i64, %c555395333_i64 : i64
        %c490567297_i32 = arith.constant 490567297 : i32
        %266 = math.absf %21 : tensor<10xf32>
        %267 = arith.maxsi %extracted_52, %extracted_52 : i16
        %268 = arith.maxf %cst_0, %cst_0 : f32
        %269 = vector.broadcast %true : i1 to vector<10xi1>
        %270 = vector.insert %269, %68 [1] : vector<10xi1> into vector<7x10xi1>
        %271 = bufferization.to_tensor %160 : memref<10xi64>
        scf.yield %c8 : index
      }
      %253 = bufferization.to_memref %22 : memref<f32>
      %254 = arith.remf %cst_4, %cst : f32
      %255 = index.casts %c13 : index to i32
      %256 = tensor.empty(%65) : tensor<?x10xi16>
      %257 = math.absf %3 : tensor<10xf32>
      %alloca_62 = memref.alloca() : memref<10xi32>
      scf.condition(%92) %160 : memref<10xi64>
    } do {
    ^bb0(%arg1: memref<10xi64>):
      %251 = index.sizeof
      affine.store %cst_3, %alloc_7[%c8, %c0] : memref<7x10xf16>
      %252 = arith.addf %cst_5, %cst_3 : f16
      %253 = arith.divsi %c1485976549_i64, %c1387978778_i64 : i64
      %254 = math.cos %cst_4 : f32
      %expanded_62 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<7x10xi16> into tensor<7x10x1xi16>
      %c1823801703_i64 = arith.constant 1823801703 : i64
      %255 = math.expm1 %22 : tensor<f32>
      %256 = math.cos %11 : tensor<10x7x10xf32>
      %collapsed_63 = tensor.collapse_shape %13 [[0, 1]] : tensor<7x10xi16> into tensor<70xi16>
      %257 = vector.broadcast %92 : i1 to vector<7xi1>
      %dest_64, %accumulated_value_65 = vector.scan <and>, %100, %257 {inclusive = false, reduction_dim = 1 : i64} : vector<7x10xi1>, vector<7xi1>
      %258 = vector.splat %92 : vector<10x7x10xi1>
      %259 = vector.broadcast %c77743054_i64 : i64 to vector<7xi64>
      %260 = vector.broadcast %false : i1 to vector<7xi1>
      %261 = vector.broadcast %c1311768620_i32 : i32 to vector<7xi32>
      %262 = vector.gather %alloc_6[%158] [%261], %260, %259 : memref<10xi64>, vector<7xi32>, vector<7xi1>, vector<7xi64> into vector<7xi64>
      %263 = vector.broadcast %cst_4 : f32 to vector<10xf32>
      %264 = vector.fma %263, %263, %263 : vector<10xf32>
      %265 = vector.load %alloc_18[%c4] : memref<7xf32>, vector<7xf32>
      vector.print %135 : vector<7xf32>
      scf.yield %arg1 : memref<10xi64>
    }
    %180 = vector.broadcast %cst_0 : f32 to vector<7x10xf32>
    %181 = vector.fma %180, %180, %180 : vector<7x10xf32>
    %182 = vector.splat %rank : vector<7xindex>
    %183 = vector.broadcast %c1387978778_i64 : i64 to vector<10xi64>
    %184 = vector.broadcast %false : i1 to vector<10xi1>
    %185 = vector.broadcast %c1311768620_i32 : i32 to vector<10xi32>
    %186 = vector.gather %160[%rank_41] [%185], %184, %183 : memref<10xi64>, vector<10xi32>, vector<10xi1>, vector<10xi64> into vector<10xi64>
    %187 = affine.load %alloc_16[%c9] : memref<10xi1>
    %188 = arith.cmpi slt, %c1454261105_i64, %c77743054_i64 : i64
    %189 = vector.insert %cst_3, %32 [3] : f16 into vector<5xf16>
    %190 = memref.realloc %alloc_6 : memref<10xi64> to memref<7xi64>
    %191 = math.round %cst_5 : f16
    %alloc_56 = memref.alloc() : memref<10x7xi16>
    %192 = tensor.empty() : tensor<7x7xi16>
    %193 = linalg.matmul ins(%13, %alloc_56 : tensor<7x10xi16>, memref<10x7xi16>) outs(%192 : tensor<7x7xi16>) -> tensor<7x7xi16>
    %194 = affine.load %119[%c2, %c3] : memref<7x10xi16>
    %195 = math.expm1 %cst_2 : f16
    %196 = math.sqrt %11 : tensor<10x7x10xf32>
    %197 = memref.realloc %alloc_8 : memref<10xi16> to memref<10xi16>
    %198 = arith.muli %c77743054_i64, %c77743054_i64 : i64
    %199 = arith.mulf %cst, %cst_0 : f32
    %200 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%166 : tensor<10x7x10xi1>) {
    ^bb0(%out: i1):
      %251 = arith.minf %cst_3, %cst_3 : f16
      %252 = math.ctpop %9 : tensor<7xi64>
      %253 = tensor.empty() : tensor<10x7xi1>
      %254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%253 : tensor<10x7xi1>) outs(%166 : tensor<10x7x10xi1>) {
      ^bb0(%in: i1, %out_64: i1):
        %283 = arith.maxf %cst_4, %cst : f32
        %284 = arith.ceildivsi %187, %92 : i1
        %alloca_65 = memref.alloca() : memref<10xi32>
        %285 = vector.create_mask %c11 : vector<10xi1>
        %dest_66, %accumulated_value_67 = vector.scan <maxsi>, %99, %185 {inclusive = true, reduction_dim = 0 : i64} : vector<7x10xi32>, vector<10xi32>
        %286 = index.maxu %c4, %c5
        %287 = vector.matrix_multiply %20, %32 {lhs_columns = 5 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<5xf16>) -> vector<2xf16>
        %288 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 ceildiv 2 - d0)>(%67, %rank_41, %152, %142)
        %289 = vector.flat_transpose %20 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
        %290 = arith.shrsi %extracted, %false : i1
        %291 = arith.shrsi %c1387978778_i64, %c555395333_i64 : i64
        %292 = bufferization.to_tensor %130 : memref<10xi16>
        %293 = memref.realloc %alloc_19 : memref<7xi64> to memref<7xi64>
        %294 = index.mul %c6, %286
        %295 = arith.ori %194, %c-19239_i16 : i16
        %296 = tensor.empty(%c13) : tensor<?x10xi64>
        %297 = vector.insert %185, %99 [2] : vector<10xi32> into vector<7x10xi32>
        %298 = math.cos %21 : tensor<10xf32>
        %c19247_i16 = arith.constant 19247 : i16
        %rank_68 = tensor.rank %107 : tensor<7x10xf16>
        %299 = math.rsqrt %cst_3 : f16
        %300 = arith.maxf %cst_1, %cst_1 : f16
        %301 = bufferization.to_tensor %alloc_13 : memref<10x7x10xi1>
        %302 = math.powf %cst_1, %cst_5 : f16
        %303 = memref.realloc %160 : memref<10xi64> to memref<7xi64>
        %304 = math.sqrt %3 : tensor<10xf32>
        %305 = bufferization.to_memref %6 : memref<10x7x10xi16>
        %306 = vector.broadcast %cst : f32 to vector<10xf32>
        %307 = vector.insert %306, %53 [1] : vector<10xf32> into vector<7x10xf32>
        %cst_69 = arith.constant 1.000000e+00 : f16
        %cst_70 = arith.constant 0.000000e+00 : f16
        %308 = vector.transfer_read %alloc_10[%148, %c5], %cst_70 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<7x10xf16>, vector<7xf16>
        %309 = affine.apply affine_map<(d0, d1, d2) -> ((d0 floordiv 32) * 32)>(%146, %65, %c12)
        %310 = affine.load %alloc_17[%c3] : memref<7xi32>
        %311 = index.mul %65, %109
        linalg.yield %187 : i1
      } -> tensor<10x7x10xi1>
      %false_62 = arith.constant false
      %255 = index.ceildivs %c14, %109
      %256 = bufferization.to_tensor %alloc_8 : memref<10xi16>
      vector.print %180 : vector<7x10xf32>
      %257 = arith.shli %false, %92 : i1
      %258 = math.cos %collapsed : tensor<70xf32>
      %259 = bufferization.to_tensor %160 : memref<10xi64>
      %260 = vector.insert %out, %184 [0] : i1 into vector<10xi1>
      %261 = arith.minsi %c1485976549_i64, %c1485976549_i64 : i64
      %262 = math.tanh %12 : tensor<7x10xf32>
      %263 = math.sqrt %transposed : tensor<10xf32>
      %264 = arith.maxui %true_42, %extracted : i1
      %265 = math.cos %107 : tensor<7x10xf16>
      %266 = math.exp %cst_4 : f32
      %267 = math.sqrt %cst_2 : f16
      %268 = math.ipowi %expanded_26, %expanded_26 : tensor<7x1xi16>
      %269 = arith.subi %92, %out : i1
      %270 = math.round %5 : tensor<10xf32>
      %271 = math.tanh %22 : tensor<f32>
      %272 = scf.execute_region -> memref<10x7x10xf32> {
        %283 = vector.broadcast %cst_0 : f32 to vector<10xf32>
        %284 = vector.fma %283, %283, %283 : vector<10xf32>
        %285 = arith.maxui %c1454261105_i64, %c1454261105_i64 : i64
        %286 = memref.load %alloc_21[%c4] : memref<10xi16>
        %287 = vector.broadcast %cst_4 : f32 to vector<10x7x10xf32>
        %288 = vector.fma %287, %287, %287 : vector<10x7x10xf32>
        %289 = bufferization.to_memref %cast_43 : memref<?xi16>
        %290 = tensor.empty() : tensor<70xi32>
        %291 = math.fpowi %collapsed, %290 : tensor<70xf32>, tensor<70xi32>
        %cast_64 = tensor.cast %expanded_26 : tensor<7x1xi16> to tensor<?x?xi16>
        memref.copy %alloc_18, %alloc_15 : memref<7xf32> to memref<7xf32>
        %292 = arith.shli %187, %out : i1
        %293 = arith.remf %cst_3, %cst_5 : f16
        %294 = index.add %c15, %72
        %295 = arith.minf %cst_5, %cst_3 : f16
        %296 = math.copysign %3, %transposed : tensor<10xf32>
        %297 = arith.remf %cst_0, %cst_0 : f32
        %298 = arith.mulf %cst_4, %cst_4 : f32
        %299 = math.absi %41 : i16
        scf.yield %alloc_14 : memref<10x7x10xf32>
      }
      %273 = index.castu %c555395333_i64 : i64 to index
      %274 = index.add %120, %c8
      %275 = index.add %c6, %c0
      %276 = tensor.empty() : tensor<i32>
      %277 = math.fpowi %23, %276 : tensor<f32>, tensor<i32>
      %278 = vector.broadcast %c77743054_i64 : i64 to vector<i64>
      %279 = vector.transfer_write %278, %expanded_37[%139, %c6] : vector<i64>, tensor<7x1xi64>
      %expanded_63 = tensor.expand_shape %3 [[0, 1]] : tensor<10xf32> into tensor<10x1xf32>
      %280 = vector.shuffle %31, %20 [4, 5, 8, 9, 10, 11] : vector<2xf16>, vector<10xf16>
      %281 = index.castu %c6 : index to i32
      %282 = vector.create_mask %c10, %152 : vector<7x10xi1>
      linalg.yield %true_42 : i1
    } -> tensor<10x7x10xi1>
    %201 = index.add %139, %c11
    %202 = memref.load %160[%c6] : memref<10xi64>
    %203 = arith.remui %extracted_52, %extracted_52 : i16
    %c819416997_i32 = arith.constant 819416997 : i32
    %204 = math.round %22 : tensor<f32>
    %205 = vector.load %alloc_12[%c0] : memref<7xi64>, vector<7x10xi64>
    %206 = math.exp %23 : tensor<f32>
    %207 = math.round %cst_4 : f32
    %208 = math.ipowi %41, %194 : i16
    %209 = arith.mulf %cst, %cst : f32
    %210 = math.powf %18, %5 : tensor<10xf32>
    %211 = arith.muli %c1485976549_i64, %c555395333_i64 : i64
    bufferization.dealloc_tensor %14 : tensor<7x10xi1>
    %212 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
    %213 = vector.outerproduct %134, %134, %212 {kind = #vector.kind<maxf>} : vector<7xf32>, vector<7xf32>
    %214 = arith.ceildivsi %true, %187 : i1
    %215 = arith.addi %92, %187 : i1
    %216 = vector.transpose %43, [0] : vector<2xf16> to vector<2xf16>
    %217 = bufferization.clone %alloc : memref<10x7x10xf16> to memref<10x7x10xf16>
    %218 = bufferization.clone %alloc : memref<10x7x10xf16> to memref<10x7x10xf16>
    %219 = math.log1p %cst_3 : f16
    %220 = math.ctpop %c555395333_i64 : i64
    %221 = index.castu %41 : i16 to index
    %222 = affine.max affine_map<(d0, d1, d2) -> (d2, d2 mod 2, d1, -d1)>(%146, %79, %c12)
    %223 = math.expm1 %22 : tensor<f32>
    %224 = vector.insert %184, %100 [3] : vector<10xi1> into vector<7x10xi1>
    %225 = math.exp %collapsed : tensor<70xf32>
    %226 = math.sqrt %107 : tensor<7x10xf16>
    %collapsed_57 = tensor.collapse_shape %12 [[0, 1]] : tensor<7x10xf32> into tensor<70xf32>
    %227 = arith.addf %cst_0, %cst_4 : f32
    %228 = affine.if affine_set<(d0, d1, d2) : ((d1 * 2) ceildiv 4 == 0, (-d1) ceildiv 4 >= 0)>(%c10, %c5, %c8) -> f32 {
      %251 = math.log1p %12 : tensor<7x10xf32>
      %252 = index.mul %c4, %158
      %alloca_62 = memref.alloca() : memref<7x10xi64>
      %253 = affine.apply affine_map<(d0) -> (d0 - 32)>(%67)
      %254 = tensor.empty() : tensor<7x10xi1>
      memref.copy %alloc, %218 : memref<10x7x10xf16> to memref<10x7x10xf16>
      %255 = vector.shuffle %180, %180 [0, 2, 8, 9, 11, 12, 13] : vector<7x10xf32>, vector<7x10xf32>
      %256 = index.sub %253, %c15
      affine.yield %cst_4 : f32
    } else {
      %251 = arith.minf %cst_0, %cst_4 : f32
      %252 = arith.shrsi %c1311768620_i32, %c1311768620_i32 : i32
      %253 = arith.minf %cst, %cst : f32
      %254 = vector.broadcast %cst_3 : f16 to vector<5x5xf16>
      %255 = vector.outerproduct %32, %32, %254 {kind = #vector.kind<add>} : vector<5xf16>, vector<5xf16>
      %256 = index.divu %c15, %152
      %257 = memref.alloca_scope  -> (f16) {
        %259 = tensor.empty() : tensor<7xi32>
        %260 = bufferization.to_memref %22 : memref<f32>
        %261 = vector.create_mask %103, %67 : vector<7x10xi1>
        %262 = index.add %69, %c4
        %263 = vector.broadcast %c555395333_i64 : i64 to vector<7xi64>
        %264 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %186, %205, %263 : vector<10xi64>, vector<7x10xi64> into vector<7xi64>
        %265 = bufferization.clone %alloc_15 : memref<7xf32> to memref<7xf32>
        %266 = affine.load %119[%c9, %c15] : memref<7x10xi16>
        %267 = math.sqrt %11 : tensor<10x7x10xf32>
        %268 = math.ceil %3 : tensor<10xf32>
        %269 = vector.broadcast %cst : f32 to vector<10xf32>
        %dest_62, %accumulated_value_63 = vector.scan <mul>, %180, %269 {inclusive = false, reduction_dim = 0 : i64} : vector<7x10xf32>, vector<10xf32>
        %270 = vector.broadcast %cst_4 : f32 to vector<10xf32>
        %271 = vector.insert %270, %181 [3] : vector<10xf32> into vector<7x10xf32>
        %272 = arith.addi %41, %extracted_52 : i16
        memref.assume_alignment %160, 2 : memref<10xi64>
        %273 = arith.maxui %true, %92 : i1
        %274 = math.round %12 : tensor<7x10xf32>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %275 = vector.transfer_read %9[%103], %c0_i64 : tensor<7xi64>, vector<i64>
        %276 = affine.apply affine_map<(d0, d1) -> ((d1 ceildiv 8) floordiv 64)>(%142, %c15)
        %277 = arith.shrsi %true_42, %false : i1
        %cast_64 = tensor.cast %7 : tensor<7xi64> to tensor<?xi64>
        %278 = arith.maxf %cst_4, %cst_0 : f32
        %279 = index.ceildivs %152, %123
        %expanded_65 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<7x10xi16> into tensor<7x10x1xi16>
        %280 = tensor.empty() : tensor<7x10xf32>
        affine.store %cst_2, %alloc_7[%c15, %c13] : memref<7x10xf16>
        %281 = vector.insert %c555395333_i64, %183 [6] : i64 into vector<10xi64>
        %282 = math.log %cst_4 : f32
        %283 = math.absf %3 : tensor<10xf32>
        %284 = math.sqrt %22 : tensor<f32>
        %285 = vector.create_mask %rank : vector<7xi1>
        %expanded_66 = tensor.expand_shape %9 [[0, 1]] : tensor<7xi64> into tensor<7x1xi64>
        %286 = arith.shrui %extracted_52, %127 : i16
        %287 = index.floordivs %65, %148
        memref.alloca_scope.return %cst_1 : f16
      }
      memref.store %cst_5, %alloc_10[%c4, %c4] : memref<7x10xf16>
      %258 = memref.realloc %alloc_17 : memref<7xi32> to memref<7xi32>
      affine.yield %cst_0 : f32
    }
    %229 = math.sqrt %22 : tensor<f32>
    %dest_58, %accumulated_value_59 = vector.scan <mul>, %181, %134 {inclusive = false, reduction_dim = 1 : i64} : vector<7x10xf32>, vector<7xf32>
    %230 = memref.realloc %alloc_8 : memref<10xi16> to memref<10xi16>
    %231 = affine.apply affine_map<(d0, d1) -> ((d1 floordiv 8) * 32 + 4)>(%c10, %142)
    %c1_i16 = arith.constant 1 : i16
    %232 = vector.transfer_read %6[%65, %142, %77], %c1_i16 : tensor<10x7x10xi16>, vector<7x10xi16>
    %233 = tensor.empty() : tensor<10x7x10xi32>
    %234 = affine.apply affine_map<(d0) -> ((d0 + 16) * 64)>(%120)
    %generated_60 = tensor.generate %103, %c11, %c15 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %251 = index.ceildivs %c14, %109
      %252 = math.cos %cst_1 : f16
      %253 = math.exp %11 : tensor<10x7x10xf32>
      %254 = vector.multi_reduction <mul>, %183, %183 [] : vector<10xi64> to vector<10xi64>
      tensor.yield %cst_2 : f16
    } : tensor<?x?x?xf16>
    %235 = math.fpowi %cst_1, %c1311768620_i32 : f16, i32
    %236 = math.round %cst_0 : f32
    %237 = math.ctpop %9 : tensor<7xi64>
    %238 = math.log1p %23 : tensor<f32>
    %239 = scf.index_switch %c13 -> tensor<7x10xf16> 
    case 1 {
      %251 = arith.remf %cst_5, %cst_1 : f16
      %252 = index.maxs %c7, %109
      %253 = math.log %cst_1 : f16
      %254 = arith.addf %cst_2, %cst_5 : f16
      %255 = tensor.empty() : tensor<10x7x10xi32>
      %256 = index.ceildivu %c11, %77
      %257 = arith.ceildivsi %c1_i16, %c-19239_i16 : i16
      %258 = memref.alloca_scope  -> (f32) {
        %cast_64 = tensor.cast %166 : tensor<10x7x10xi1> to tensor<?x?x?xi1>
        %265 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 * 4, d1 * 32, (d3 * 32 + d2 * 4) * 2 + 32, d2 floordiv 128)>(%156, %201, %rank_41, %c0)
        %266 = vector.transpose %53, [0, 1] : vector<7x10xf32> to vector<7x10xf32>
        %267 = vector.extract_strided_slice %135 {offsets = [1], sizes = [1], strides = [1]} : vector<7xf32> to vector<1xf32>
        %268 = arith.remf %cst_3, %cst_5 : f16
        %269 = math.cos %collapsed_57 : tensor<70xf32>
        %270 = math.fma %23, %23, %23 : tensor<f32>
        %271 = arith.remf %cst, %cst_0 : f32
        %272 = math.log2 %12 : tensor<7x10xf32>
        %273 = math.sqrt %23 : tensor<f32>
        %274 = vector.transpose %45, [0] : vector<10xf16> to vector<10xf16>
        %275 = math.absf %cst : f32
        %276 = math.log %5 : tensor<10xf32>
        %277 = arith.ori %127, %c-19239_i16 : i16
        memref.copy %alloc_20, %119 : memref<7x10xi16> to memref<7x10xi16>
        %278 = affine.apply affine_map<(d0, d1) -> ((d1 floordiv 8) * 32 + 4)>(%rank_41, %109)
        %279 = bufferization.to_tensor %alloc_18 : memref<7xf32>
        %280 = vector.splat %cst_5 : vector<7x10xf16>
        %281 = math.powf %cst_2, %cst_1 : f16
        %282 = index.maxu %278, %148
        memref.copy %160, %alloc_6 : memref<10xi64> to memref<10xi64>
        %283 = arith.muli %c-19239_i16, %extracted_52 : i16
        %284 = math.sqrt %23 : tensor<f32>
        %285 = math.atan2 %cst_1, %cst_1 : f16
        %286 = math.floor %12 : tensor<7x10xf32>
        %287 = vector.insert %c1311768620_i32, %185 [7] : i32 into vector<10xi32>
        %288 = math.fma %18, %3, %3 : tensor<10xf32>
        %289 = vector.load %alloc_17[%c6] : memref<7xi32>, vector<7x10xi32>
        %290 = arith.minf %cst_2, %cst_2 : f16
        %291 = math.ipowi %false, %false : i1
        %292 = bufferization.to_tensor %alloc_19 : memref<7xi64>
        %293 = vector.broadcast %cst : f32 to vector<7x10xf32>
        %294 = vector.fma %293, %293, %181 : vector<7x10xf32>
        memref.alloca_scope.return %cst_4 : f32
      }
      %259 = index.maxs %c3, %72
      %260 = vector.broadcast %cst : f32 to vector<10xf32>
      %dest_62, %accumulated_value_63 = vector.scan <maxf>, %180, %260 {inclusive = true, reduction_dim = 0 : i64} : vector<7x10xf32>, vector<10xf32>
      %261 = math.absi %93 : tensor<7xi64>
      %262 = math.log2 %22 : tensor<f32>
      %263 = arith.shli %c1387978778_i64, %c1387978778_i64 : i64
      %264 = vector.insert %184, %100 [5] : vector<10xi1> into vector<7x10xi1>
      bufferization.dealloc_tensor %23 : tensor<f32>
      %c-13855_i16 = arith.constant -13855 : i16
      scf.yield %107 : tensor<7x10xf16>
    }
    default {
      %251 = math.expm1 %107 : tensor<7x10xf16>
      %252 = arith.minsi %194, %194 : i16
      %253 = arith.maxf %cst_0, %cst_4 : f32
      scf.execute_region {
        %263 = arith.maxsi %extracted_52, %41 : i16
        %inserted = tensor.insert %true into %14[%c4, %c3] : tensor<7x10xi1>
        %264 = arith.shrsi %c77743054_i64, %c1387978778_i64 : i64
        %rank_65 = tensor.rank %14 : tensor<7x10xi1>
        %265 = index.casts %c1 : index to i32
        %266 = memref.atomic_rmw assign %cst_5, %alloc_10[%c4, %c0] : (f16, memref<7x10xf16>) -> f16
        %267 = arith.maxui %92, %true : i1
        %268 = arith.xori %127, %194 : i16
        %269 = math.exp %3 : tensor<10xf32>
        %270 = arith.cmpf one, %cst_1, %cst_2 : f16
        %271 = index.ceildivs %c1, %c14
        %272 = index.ceildivu %146, %148
        %273 = vector.broadcast %cst_4 : f32 to vector<10xf32>
        %274 = vector.insert %273, %181 [4] : vector<10xf32> into vector<7x10xf32>
        memref.copy %118, %alloc_18 : memref<7xf32> to memref<7xf32>
        %275 = math.sqrt %21 : tensor<10xf32>
        %276 = vector.broadcast %cst_0 : f32 to vector<10x7x10xf32>
        %277 = vector.fma %276, %276, %276 : vector<10x7x10xf32>
        scf.yield
      }
      %254 = arith.ceildivsi %c1485976549_i64, %c1387978778_i64 : i64
      %255 = vector.load %alloc_13[%c0, %c2, %c1] : memref<10x7x10xi1>, vector<7x10xi1>
      %256 = arith.remf %cst_0, %cst : f32
      %257 = index.ceildivu %158, %231
      %collapsed_62 = tensor.collapse_shape %cast [[0, 1]] : tensor<?x?xi1> into tensor<?xi1>
      %258 = arith.floordivsi %extracted, %true_42 : i1
      %collapsed_63 = tensor.collapse_shape %14 [[0, 1]] : tensor<7x10xi1> into tensor<70xi1>
      %259 = index.castu %158 : index to i32
      %260 = arith.addf %cst_5, %cst_2 : f16
      %generated_64 = tensor.generate %79 {
      ^bb0(%arg1: index):
        %263 = index.castu %true : i1 to index
        %264 = bufferization.to_memref %9 : memref<7xi64>
        bufferization.dealloc_tensor %166 : tensor<10x7x10xi1>
        %265 = math.log2 %cst_1 : f16
        tensor.yield %c1311768620_i32 : i32
      } : tensor<?xi32>
      %261 = arith.remf %cst_0, %cst_0 : f32
      %262 = vector.create_mask %rank, %c7, %69 : vector<10x7x10xi1>
      scf.yield %107 : tensor<7x10xf16>
    }
    %240 = math.tanh %cst_5 : f16
    %241 = affine.apply affine_map<(d0, d1) -> (((d0 * -129) floordiv 2) * 4)>(%c8, %156)
    %242 = math.absf %22 : tensor<f32>
    %243 = arith.shrui %c555395333_i64, %c1485976549_i64 : i64
    %244 = index.divs %c2, %156
    %245 = bufferization.clone %alloc_16 : memref<10xi1> to memref<10xi1>
    %246 = tensor.empty() : tensor<7xi64>
    %247 = linalg.copy ins(%93 : tensor<7xi64>) outs(%246 : tensor<7xi64>) -> tensor<7xi64>
    %alloc_61 = memref.alloc() : memref<70xf32>
    linalg.transpose ins(%collapsed : tensor<70xf32>) outs(%alloc_61 : memref<70xf32>) permutation = [0] 
    %248 = tensor.empty() : tensor<i16>
    %reduced = linalg.reduce ins(%1 : tensor<10xi16>) outs(%248 : tensor<i16>) dimensions = [0] 
      (%in: i16, %init: i16) {
        %251 = arith.subi %true, %92 : i1
        %252 = vector.splat %244 : vector<7xindex>
        %253 = math.copysign %collapsed, %collapsed : tensor<70xf32>
        %254 = math.round %cst_1 : f16
        %255 = affine.max affine_map<(d0, d1) -> (0)>(%c15, %152)
        %256 = math.tan %transposed : tensor<10xf32>
        %257 = vector.create_mask %c15 : vector<7xi1>
        %258 = arith.minui %extracted, %187 : i1
        %c0_i16 = arith.constant 0 : i16
        linalg.yield %c0_i16 : i16
      }
    %249 = scf.parallel (%arg1, %arg2) = (%67, %67) to (%221, %c15) step (%c7, %c14) init (%c77743054_i64) -> i64 {
      %251 = index.sizeof
      %252 = affine.load %alloc_11[%c10, %c4, %c9] : memref<10x7x10xi1>
      %253 = math.round %12 : tensor<7x10xf32>
      affine.store %cst, %alloc_61[%c0] : memref<70xf32>
      %254 = arith.andi %c1387978778_i64, %c1485976549_i64 : i64
      %255 = math.log1p %23 : tensor<f32>
      %256 = index.add %c10, %c7
      %expanded_62 = tensor.expand_shape %7 [[0, 1]] : tensor<7xi64> into tensor<7x1xi64>
      %257 = vector.multi_reduction <mul>, %31, %cst_1 [0] : vector<2xf16> to f16
      %258 = bufferization.clone %245 : memref<10xi1> to memref<10xi1>
      %259 = vector.broadcast %cst_1 : f16 to vector<7xf16>
      %260 = vector.broadcast %252 : i1 to vector<7xi1>
      %261 = vector.maskedload %218[%c0, %c6, %c5], %260, %259 : memref<10x7x10xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
      %262 = vector.broadcast %c1311768620_i32 : i32 to vector<7xi32>
      %dest_63, %accumulated_value_64 = vector.scan <maxui>, %99, %262 {inclusive = true, reduction_dim = 1 : i64} : vector<7x10xi32>, vector<7xi32>
      %263 = vector.load %alloc_10[%c6, %c9] : memref<7x10xf16>, vector<10xf16>
      %264 = index.ceildivs %c11, %123
      memref.alloca_scope  {
        %267 = index.casts %c1_i16 : i16 to index
        %268 = index.maxs %123, %c15
        %269 = vector.multi_reduction <mul>, %43, %cst_1 [0] : vector<2xf16> to f16
        %cst_65 = arith.constant 1.128800e+04 : f16
        %270 = arith.mulf %cst, %cst_0 : f32
        %271 = math.absi %7 : tensor<7xi64>
        %272 = vector.create_mask %142 : vector<10xi1>
        %expanded_66 = tensor.expand_shape %8 [[0], [1, 2]] : tensor<7x10xi16> into tensor<7x10x1xi16>
        %273 = arith.shli %c1485976549_i64, %c1485976549_i64 : i64
        %274 = arith.ceildivsi %c-19239_i16, %extracted_52 : i16
        %275 = tensor.empty() : tensor<10xf16>
        %276 = bufferization.clone %245 : memref<10xi1> to memref<10xi1>
        %277 = memref.realloc %alloc_21 : memref<10xi16> to memref<2xi16>
        %278 = index.divs %221, %152
        %279 = index.maxs %156, %234
        %280 = arith.remui %c77743054_i64, %c1454261105_i64 : i64
        %281 = vector.create_mask %c14 : vector<10xi1>
        %282 = math.absf %cst_2 : f16
        %283 = bufferization.to_memref %14 : memref<7x10xi1>
        %284 = arith.ceildivsi %extracted_52, %extracted_52 : i16
        %285 = arith.maxui %252, %extracted : i1
        %286 = vector.transpose %181, [1, 0] : vector<7x10xf32> to vector<10x7xf32>
        memref.assume_alignment %alloc_10, 4 : memref<7x10xf16>
        %287 = math.copysign %22, %23 : tensor<f32>
        %288 = math.cttz %8 : tensor<7x10xi16>
        %289 = arith.addf %cst_0, %cst_0 : f32
        %290 = vector.broadcast %cst_0 : f32 to vector<7xf32>
        %291 = vector.fma %290, %135, %135 : vector<7xf32>
        %292 = arith.divui %194, %41 : i16
        memref.assume_alignment %alloc_19, 1 : memref<7xi64>
        %293 = arith.shrui %c1_i16, %extracted_52 : i16
        %294 = affine.load %alloc_20[%c10, %c13] : memref<7x10xi16>
        %cst_67 = arith.constant 1.000000e+00 : f32
        %295 = vector.transfer_read %11[%222, %222, %116], %cst_67 : tensor<10x7x10xf32>, vector<7x10xf32>
      }
      %265 = vector.broadcast %c-19239_i16 : i16 to vector<i16>
      %266 = vector.transfer_write %265, %1[%77] : vector<i16>, tensor<10xi16>
      %c0_i64 = arith.constant 0 : i64
      scf.reduce(%c0_i64)  : i64 {
      ^bb0(%arg3: i64, %arg4: i64):
        %267 = math.sqrt %collapsed_57 : tensor<70xf32>
        %268 = index.sub %231, %146
        %269 = math.fma %12, %12, %12 : tensor<7x10xf32>
        %270 = math.exp %cst_0 : f32
        %true_65 = index.bool.constant true
        %271 = tensor.empty() : tensor<10xf32>
        memref.tensor_store %14, %47 : memref<7x10xi1>
        %272 = arith.cmpi sgt, %arg3, %c555395333_i64 : i64
        %c0_i64_66 = arith.constant 0 : i64
        scf.reduce.return %c0_i64_66 : i64
      }
      scf.yield
    }
    %250 = affine.vector_load %alloc_7[%156, %72] : memref<7x10xf16>, vector<7xf16>
    affine.vector_store %185, %alloc_17[%69] : memref<7xi32>, vector<10xi32>
    vector.print %20 : vector<10xf16>
    vector.print %31 : vector<2xf16>
    vector.print %32 : vector<5xf16>
    vector.print %43 : vector<2xf16>
    vector.print %45 : vector<10xf16>
    vector.print %53 : vector<7x10xf32>
    vector.print %68 : vector<7x10xi1>
    vector.print %99 : vector<7x10xi32>
    vector.print %100 : vector<7x10xi1>
    vector.print %134 : vector<7xf32>
    vector.print %135 : vector<7xf32>
    vector.print %180 : vector<7x10xf32>
    vector.print %181 : vector<7x10xf32>
    vector.print %183 : vector<10xi64>
    vector.print %184 : vector<10xi1>
    vector.print %185 : vector<10xi32>
    vector.print %186 : vector<10xi64>
    vector.print %205 : vector<7x10xi64>
    vector.print %250 : vector<7xf16>
    vector.print %cst : f32
    vector.print %c555395333_i64 : i64
    vector.print %cst_0 : f32
    vector.print %cst_1 : f16
    vector.print %c1311768620_i32 : i32
    vector.print %true : i1
    vector.print %c1387978778_i64 : i64
    vector.print %false : i1
    vector.print %cst_2 : f16
    vector.print %cst_3 : f16
    vector.print %c77743054_i64 : i64
    vector.print %c1454261105_i64 : i64
    vector.print %cst_4 : f32
    vector.print %c1485976549_i64 : i64
    vector.print %cst_5 : f16
    vector.print %c-19239_i16 : i16
    vector.print %41 : i16
    vector.print %92 : i1
    vector.print %extracted : i1
    vector.print %true_42 : i1
    vector.print %127 : i16
    vector.print %extracted_52 : i16
    vector.print %187 : i1
    vector.print %194 : i16
    vector.print %c1_i16 : i16
    return
  }
}
