module {
  func.func @func1(%arg0: i16) -> memref<10xi1> {
    %false = arith.constant false
    %cst = arith.constant 0x4DCF0880 : f32
    %cst_0 = arith.constant 5.609600e+04 : f16
    %c1778710078_i64 = arith.constant 1778710078 : i64
    %cst_1 = arith.constant 0x4DED786B : f32
    %cst_2 = arith.constant 1.435760e+09 : f32
    %true = arith.constant true
    %c821862697_i32 = arith.constant 821862697 : i32
    %cst_3 = arith.constant 1.48889549E+9 : f32
    %cst_4 = arith.constant 6.265600e+04 : f16
    %cst_5 = arith.constant 4.332800e+04 : f16
    %cst_6 = arith.constant 1.74557798E+9 : f32
    %c1084003347_i32 = arith.constant 1084003347 : i32
    %cst_7 = arith.constant 0x4DF8374B : f32
    %cst_8 = arith.constant 0x4D748555 : f32
    %c1828549564_i64 = arith.constant 1828549564 : i64
    %0 = tensor.empty() : tensor<10xi32>
    %1 = tensor.empty() : tensor<12xi16>
    %2 = tensor.empty() : tensor<10xi32>
    %3 = tensor.empty() : tensor<12xi16>
    %4 = tensor.empty() : tensor<10x6x10xf16>
    %5 = tensor.empty() : tensor<10xf16>
    %6 = tensor.empty() : tensor<12xf16>
    %7 = tensor.empty() : tensor<10xf16>
    %8 = tensor.empty() : tensor<10x6x10xi16>
    %9 = tensor.empty() : tensor<10xi1>
    %10 = tensor.empty() : tensor<10xi64>
    %11 = tensor.empty() : tensor<10x6x10xi64>
    %12 = tensor.empty() : tensor<10xf32>
    %13 = tensor.empty() : tensor<12xi1>
    %14 = tensor.empty() : tensor<12xi16>
    %15 = tensor.empty() : tensor<12xi32>
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
    %alloc = memref.alloc() : memref<10xi32>
    %alloc_9 = memref.alloc() : memref<10xi32>
    %alloc_10 = memref.alloc() : memref<10xi32>
    %alloc_11 = memref.alloc() : memref<10x6x10xi16>
    %alloc_12 = memref.alloc() : memref<10x6x10xf32>
    %alloc_13 = memref.alloc() : memref<12xi1>
    %alloc_14 = memref.alloc() : memref<10x6x10xi1>
    %alloc_15 = memref.alloc() : memref<10xi32>
    %alloc_16 = memref.alloc() : memref<12xf16>
    %alloc_17 = memref.alloc() : memref<10x6x10xi32>
    %alloc_18 = memref.alloc() : memref<12xi32>
    %alloc_19 = memref.alloc() : memref<10xf16>
    %alloc_20 = memref.alloc() : memref<10xf16>
    %alloc_21 = memref.alloc() : memref<10xi16>
    %alloc_22 = memref.alloc() : memref<12xf16>
    %alloc_23 = memref.alloc() : memref<12xf32>
    %16 = tensor.empty() : tensor<10xf32>
    %17 = linalg.copy ins(%12 : tensor<10xf32>) outs(%16 : tensor<10xf32>) -> tensor<10xf32>
    %alloc_24 = memref.alloc() : memref<10xi32>
    linalg.transpose ins(%2 : tensor<10xi32>) outs(%alloc_24 : memref<10xi32>) permutation = [0] 
    %alloc_25 = memref.alloc() : memref<i32>
    linalg.reduce ins(%alloc_18 : memref<12xi32>) outs(%alloc_25 : memref<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %255 = vector.broadcast %c1828549564_i64 : i64 to vector<1xi64>
        %256 = vector.extract %255[0] : vector<1xi64>
        %257 = vector.insertelement %c1828549564_i64, %255[%c3 : index] : vector<1xi64>
        %258 = math.log %cst_3 : f32
        %259 = vector.load %alloc_19[%c1] : memref<10xf16>, vector<10xf16>
        %260 = vector.broadcast %init : i32 to vector<12xi32>
        %261 = vector.broadcast %true : i1 to vector<12xi1>
        %262 = vector.maskedload %alloc_18[%c11], %261, %260 : memref<12xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
        %263 = affine.max affine_map<(d0) -> (-d0 - 1, d0, (-d0) ceildiv 8, d0 + d0 mod 16)>(%c12)
        %264 = vector.matrix_multiply %255, %255 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
        %265 = index.ceildivs %c5, %c15
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %18 = scf.parallel (%arg1) = (%c12) to (%c4) step (%c2) init (%alloc_22) -> memref<12xf16> {
      %255 = vector.create_mask %c12 : vector<12xi1>
      %256 = memref.load %alloc_9[%c8] : memref<10xi32>
      %257 = arith.shrsi %true, %false : i1
      %258 = arith.divui %c1828549564_i64, %c1828549564_i64 : i64
      bufferization.dealloc_tensor %11 : tensor<10x6x10xi64>
      %259 = vector.matrix_multiply %255, %255 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi1>, vector<12xi1>) -> vector<1xi1>
      %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%8 : tensor<10x6x10xi16>) {
      ^bb0(%out: i16):
        %270 = arith.addi %c1778710078_i64, %c1828549564_i64 : i64
        %271 = arith.minui %c1084003347_i32, %c821862697_i32 : i32
        %272 = math.absf %cst_8 : f32
        %273 = arith.maxsi %c1778710078_i64, %c1778710078_i64 : i64
        %274 = vector.broadcast %cst_2 : f32 to vector<10x12x10xf32>
        %275 = vector.broadcast %cst_6 : f32 to vector<12x10xf32>
        %dest_59, %accumulated_value_60 = vector.scan <add>, %274, %275 {inclusive = false, reduction_dim = 0 : i64} : vector<10x12x10xf32>, vector<12x10xf32>
        %276 = index.divu %c2, %arg1
        %alloc_61 = memref.alloc() : memref<12xf32>
        memref.copy %alloc_23, %alloc_61 : memref<12xf32> to memref<12xf32>
        %277 = math.round %7 : tensor<10xf16>
        %278 = arith.ceildivsi %c1084003347_i32, %c1084003347_i32 : i32
        %279 = arith.cmpf olt, %cst_1, %cst_7 : f32
        %280 = math.tan %4 : tensor<10x6x10xf16>
        %281 = index.mul %c14, %c1
        %282 = vector.broadcast %cst : f32 to vector<10xf32>
        %283 = vector.fma %282, %282, %282 : vector<10xf32>
        %from_elements = tensor.from_elements %cst_4, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_4, %cst_4, %cst_4, %cst_5, %cst_0, %cst_5, %cst_4, %cst_5, %cst_4, %cst_5, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_5, %cst_5, %cst_4, %cst_5, %cst_4, %cst_5, %cst_5, %cst_4, %cst_0, %cst_5, %cst_4, %cst_4, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_4, %cst_4, %cst_5, %cst_5, %cst_4, %cst_4, %cst_4, %cst_5, %cst_0, %cst_4, %cst_4, %cst_4, %cst_5, %cst_4, %cst_5, %cst_0, %cst_4, %cst_5, %cst_0, %cst_0, %cst_4, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_4, %cst_5, %cst_4, %cst_0, %cst_4, %cst_4, %cst_0, %cst_0, %cst_0, %cst_4, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_4, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_4, %cst_5, %cst_4, %cst_0, %cst_0, %cst_4, %cst_5, %cst_4, %cst_5, %cst_5, %cst_5, %cst_0, %cst_5, %cst_4, %cst_0, %cst_5, %cst_4, %cst_4, %cst_4, %cst_4, %cst_5, %cst_0, %cst_0, %cst_4, %cst_4, %cst_5, %cst_0, %cst_4, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst_4, %cst_4, %cst_5, %cst_5, %cst_4, %cst_5, %cst_4, %cst_4, %cst_5, %cst_4, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_5, %cst_4, %cst_0, %cst_4, %cst_0, %cst_4, %cst_4, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst_5, %cst_5, %cst_5, %cst_0, %cst_0, %cst_4, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_4, %cst_0, %cst_4, %cst_4, %cst_4, %cst_4, %cst_5, %cst_4, %cst_5, %cst_4, %cst_4, %cst_0, %cst_5, %cst_4, %cst_5, %cst_5, %cst_4, %cst_0, %cst_4, %cst_4, %cst_0, %cst_4, %cst_4, %cst_0, %cst_4, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_4, %cst_4, %cst_5, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_4, %cst_5, %cst_5, %cst_4, %cst_5, %cst_4, %cst_5, %cst_5, %cst_0, %cst_0, %cst_0, %cst_4, %cst_4, %cst_5, %cst_4, %cst_4, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_0, %cst_5, %cst_0, %cst_5, %cst_5, %cst_0, %cst_5, %cst_5, %cst_0, %cst_4, %cst_0, %cst_0, %cst_0, %cst_4, %cst_5, %cst_0, %cst_5, %cst_5, %cst_0, %cst_4, %cst_5, %cst_4, %cst_5, %cst_5, %cst_0, %cst_4, %cst_0, %cst_4, %cst_5, %cst_0, %cst_4, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_4, %cst_5, %cst_5, %cst_5, %cst_4, %cst_4, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst_5, %cst_4, %cst_4, %cst_5, %cst_4, %cst_5, %cst_5, %cst_0, %cst_0, %cst_4, %cst_0, %cst_4, %cst_0, %cst_4, %cst_4, %cst_4, %cst_4, %cst_5, %cst_0, %cst_5, %cst_0, %cst_0, %cst_5, %cst_0, %cst_4, %cst_5, %cst_0, %cst_5, %cst_5, %cst_4, %cst_0, %cst_0, %cst_4, %cst_4, %cst_5, %cst_5, %cst_0, %cst_5, %cst_4, %cst_4, %cst_4, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_4, %cst_5, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_5, %cst_4, %cst_4, %cst_0, %cst_4, %cst_4, %cst_4, %cst_4, %cst_5, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_4, %cst_0, %cst_0, %cst_4, %cst_4, %cst_0, %cst_5, %cst_4, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_0, %cst_5, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_0, %cst_4, %cst_4, %cst_0, %cst_0, %cst_4, %cst_4, %cst_0, %cst_4, %cst_4, %cst_5, %cst_4, %cst_0, %cst_0, %cst_4, %cst_4, %cst_4, %cst_0, %cst_0, %cst_5, %cst_5, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_0, %cst_5, %cst_5, %cst_0, %cst_0, %cst_4, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_5, %cst_4, %cst_4, %cst_0, %cst_5, %cst_5, %cst_4, %cst_4, %cst_0, %cst_5, %cst_5, %cst_4, %cst_0, %cst_4, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_0, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_4, %cst_5, %cst_4, %cst_0, %cst_5, %cst_0, %cst_0, %cst_4, %cst_4, %cst_5, %cst_0, %cst_4, %cst_0, %cst_0, %cst_4, %cst_4, %cst_0, %cst_5, %cst_5, %cst_5, %cst_4, %cst_5, %cst_0, %cst_4, %cst_5, %cst_0, %cst_0, %cst_5, %cst_4, %cst_0, %cst_0, %cst_5, %cst_0, %cst_0, %cst_4, %cst_0, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_5, %cst_4, %cst_5, %cst_5, %cst_0, %cst_4, %cst_5, %cst_0, %cst_0, %cst_5, %cst_4, %cst_0, %cst_0, %cst_5, %cst_4, %cst_4, %cst_0, %cst_0, %cst_5, %cst_4, %cst_0, %cst_4, %cst_0, %cst_4, %cst_5, %cst_4, %cst_5, %cst_4, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_4, %cst_4, %cst_4, %cst_4, %cst_5, %cst_5, %cst_4, %cst_5, %cst_0, %cst_5, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_4, %cst_4, %cst_5, %cst_0, %cst_5, %cst_5, %cst_0, %cst_4, %cst_4, %cst_0, %cst_4, %cst_5, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_4, %cst_5, %cst_0, %cst_0, %cst_0, %cst_4, %cst_0, %cst_4, %cst_5, %cst_4, %cst_5, %cst_0, %cst_4, %cst_4, %cst_4, %cst_0, %cst_0, %cst_4, %cst_4, %cst_5, %cst_4, %cst_5, %cst_5, %cst_5, %cst_4, %cst_5, %cst_5, %cst_5, %cst_5, %cst_4, %cst_5, %cst_0, %cst_4, %cst_0, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_4, %cst_5, %cst_5, %cst_0, %cst_0, %cst_4, %cst_0, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_5, %cst_5 : tensor<10x6x10xf16>
        %284 = memref.load %alloc_18[%c8] : memref<12xi32>
        %285 = arith.remsi %c821862697_i32, %c1084003347_i32 : i32
        %286 = vector.create_mask %281, %c12, %281 : vector<10x6x10xi1>
        %287 = arith.remui %false, %true : i1
        %288 = arith.floordivsi %out, %out : i16
        %289 = math.ceil %5 : tensor<10xf16>
        %290 = arith.divsi %c821862697_i32, %c1084003347_i32 : i32
        %291 = arith.remf %cst, %cst_8 : f32
        %splat_62 = tensor.splat %cst_5 : tensor<10xf16>
        %292 = affine.min affine_map<(d0) -> (d0, (d0 - 2) * 64)>(%c0)
        %293 = math.ctlz %2 : tensor<10xi32>
        %294 = index.casts %c821862697_i32 : i32 to index
        %295 = index.ceildivs %c10, %c4
        %expanded = tensor.expand_shape %9 [[0, 1]] : tensor<10xi1> into tensor<10x1xi1>
        %296 = math.rsqrt %cst_3 : f32
        %297 = math.fpowi %cst_8, %c1084003347_i32 : f32, i32
        %c3319_i16 = arith.constant 3319 : i16
        %cast_63 = tensor.cast %1 : tensor<12xi16> to tensor<?xi16>
        linalg.yield %out : i16
      } -> tensor<10x6x10xi16>
      %261 = math.absf %7 : tensor<10xf16>
      %262 = index.casts %false : i1 to index
      %263 = memref.load %alloc_19[%c3] : memref<10xf16>
      %264 = math.rsqrt %6 : tensor<12xf16>
      %265 = arith.floordivsi %c821862697_i32, %c821862697_i32 : i32
      %266 = arith.maxui %true, %false : i1
      %267 = vector.create_mask %c4, %c13, %c9 : vector<10x6x10xi1>
      %268 = memref.realloc %alloc_16 : memref<12xf16> to memref<10xf16>
      %269 = scf.if %true -> (memref<10xf16>) {
        %cast_59 = tensor.cast %7 : tensor<10xf16> to tensor<?xf16>
        %270 = math.fma %17, %12, %12 : tensor<10xf32>
        %271 = math.ceil %16 : tensor<10xf32>
        %expanded = tensor.expand_shape %9 [[0, 1]] : tensor<10xi1> into tensor<10x1xi1>
        %272 = bufferization.to_tensor %alloc_22 : memref<12xf16>
        %273 = index.sub %c9, %c7
        %274 = arith.ceildivsi %c1828549564_i64, %c1828549564_i64 : i64
        %275 = vector.broadcast %273 : index to vector<12xindex>
        %276 = vector.broadcast %c821862697_i32 : i32 to vector<12xi32>
        vector.scatter %alloc_10[%c5] [%275], %255, %276 : memref<10xi32>, vector<12xindex>, vector<12xi1>, vector<12xi32>
        scf.yield %alloc_19 : memref<10xf16>
      } else {
        %270 = arith.andi %c1778710078_i64, %c1778710078_i64 : i64
        %271 = vector.create_mask %c6, %c7, %c6 : vector<10x6x10xi1>
        %272 = arith.andi %c1778710078_i64, %c1778710078_i64 : i64
        %c-17290_i16 = arith.constant -17290 : i16
        %273 = vector.shuffle %267, %271 [0, 1, 3, 5, 6, 7, 11, 13, 14, 16, 17, 18] : vector<10x6x10xi1>, vector<10x6x10xi1>
        %274 = vector.broadcast %true : i1 to vector<10x6xi1>
        %275 = vector.multi_reduction <or>, %271, %274 [2] : vector<10x6x10xi1> to vector<10x6xi1>
        %276 = arith.minui %c1828549564_i64, %c1778710078_i64 : i64
        %277 = arith.remsi %c1828549564_i64, %c1828549564_i64 : i64
        scf.yield %alloc_19 : memref<10xf16>
      }
      %alloc_58 = memref.alloc() : memref<12xf16>
      scf.reduce(%alloc_58)  : memref<12xf16> {
      ^bb0(%arg2: memref<12xf16>, %arg3: memref<12xf16>):
        %cast_59 = tensor.cast %6 : tensor<12xf16> to tensor<?xf16>
        %270 = bufferization.to_tensor %alloc_20 : memref<10xf16>
        %271 = arith.addf %cst_8, %cst_7 : f32
        %cast_60 = tensor.cast %17 : tensor<10xf32> to tensor<?xf32>
        %272 = arith.remf %cst_4, %cst_5 : f16
        %273 = math.tanh %cst_7 : f32
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %255, %255, %true : vector<12xi1>, vector<12xi1> into i1
        %275 = math.roundeven %cst_2 : f32
        %alloc_61 = memref.alloc() : memref<12xf16>
        scf.reduce.return %alloc_61 : memref<12xf16>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_17[%c9, %c0, %c7] : memref<10x6x10xi32>, vector<12xi32>
    affine.vector_store %19, %alloc_9[%c1] : memref<10xi32>, vector<12xi32>
    %alloc_26 = memref.alloc() : memref<12xf16>
    %20 = tensor.empty() : tensor<f16>
    %21 = linalg.dot ins(%alloc_16, %alloc_26 : memref<12xf16>, memref<12xf16>) outs(%20 : tensor<f16>) -> tensor<f16>
    %22 = vector.broadcast %c1 : index to vector<10xindex>
    %23 = vector.broadcast %true : i1 to vector<10xi1>
    %24 = vector.broadcast %c1084003347_i32 : i32 to vector<10xi32>
    vector.scatter %alloc_18[%c10] [%22], %23, %24 : memref<12xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
    %25 = vector.broadcast %c1084003347_i32 : i32 to vector<6xi32>
    %26 = vector.broadcast %false : i1 to vector<6xi1>
    %27 = vector.maskedload %alloc_10[%c9], %26, %25 : memref<10xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
    %28 = math.floor %12 : tensor<10xf32>
    %29 = arith.minui %false, %true : i1
    %30 = math.ceil %cst_0 : f16
    %31 = arith.subi %c1828549564_i64, %c1778710078_i64 : i64
    %32 = math.roundeven %cst : f32
    %rank = tensor.rank %17 : tensor<10xf32>
    %33 = tensor.empty() : tensor<6xf16>
    %34 = tensor.empty() : tensor<10x10x6xf16>
    %35 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %33, %34 : tensor<10xf16>, tensor<6xf16>, tensor<10x10x6xf16>) outs(%4 : tensor<10x6x10xf16>) {
    ^bb0(%in: f16, %in_58: f16, %in_59: f16, %out: f16):
      %255 = math.tan %cst : f32
      %256 = index.divu %c12, %c12
      %257 = memref.alloca_scope  -> (i1) {
        %true_66 = index.bool.constant true
        %285 = math.log %cst_4 : f16
        memref.store %cst_5, %alloc_26[%c1] : memref<12xf16>
        %286 = math.ceil %cst_8 : f32
        %287 = math.copysign %in, %in : f16
        %288 = affine.apply affine_map<(d0, d1, d2) -> (-(d0 * 32 - d1 + d0))>(%rank, %c2, %c15)
        %289 = math.fma %cst_2, %cst, %cst_2 : f32
        %collapsed_67 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<10x6x10xi16> into tensor<60x10xi16>
        %290 = arith.mulf %cst_4, %cst_5 : f16
        %from_elements = tensor.from_elements %false, %false, %true_66, %true, %true, %true, %true_66, %true_66, %false, %true : tensor<10xi1>
        %291 = math.log2 %6 : tensor<12xf16>
        %292 = vector.broadcast %cst_6 : f32 to vector<10x10x10xf32>
        %293 = vector.broadcast %cst_8 : f32 to vector<10x10xf32>
        %dest_68, %accumulated_value_69 = vector.scan <minf>, %292, %293 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10x10xf32>, vector<10x10xf32>
        %294 = math.exp %6 : tensor<12xf16>
        %295 = math.fma %17, %12, %17 : tensor<10xf32>
        %296 = arith.divsi %c1828549564_i64, %c1828549564_i64 : i64
        %297 = arith.divf %cst_3, %cst_8 : f32
        %298 = arith.remsi %true_66, %true : i1
        %299 = math.sqrt %cst_2 : f32
        %alloca_70 = memref.alloca() : memref<10xi32>
        %300 = math.log10 %in_58 : f16
        %301 = math.cttz %15 : tensor<12xi32>
        %302 = arith.andi %c1084003347_i32, %c821862697_i32 : i32
        %303 = math.ceil %17 : tensor<10xf32>
        %inserted_71 = tensor.insert %c821862697_i32 into %2[%c5] : tensor<10xi32>
        %304 = arith.shrsi %c821862697_i32, %c1084003347_i32 : i32
        %alloc_72 = memref.alloc() : memref<10x6x10xf16>
        affine.store %cst_8, %alloc_23[%c2] : memref<12xf32>
        %305 = index.sub %c11, %256
        bufferization.dealloc_tensor %2 : tensor<10xi32>
        %306 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %19, %19, %c821862697_i32 : vector<12xi32>, vector<12xi32> into i32
        %307 = index.ceildivu %256, %c3
        %cast_73 = tensor.cast %9 : tensor<10xi1> to tensor<?xi1>
        memref.alloca_scope.return %true_66 : i1
      }
      %258 = index.maxu %c8, %c1
      %259 = vector.create_mask %c0 : vector<10xi1>
      %260 = index.casts %c821862697_i32 : i32 to index
      %261 = vector.broadcast %false : i1 to vector<6x12xi1>
      %262 = vector.broadcast %257 : i1 to vector<12xi1>
      %dest_60, %accumulated_value_61 = vector.scan <minsi>, %261, %262 {inclusive = true, reduction_dim = 0 : i64} : vector<6x12xi1>, vector<12xi1>
      %263 = arith.negf %cst_4 : f16
      %264 = affine.max affine_map<(d0, d1, d2) -> (((-d0) ceildiv 32) * 32)>(%c11, %c12, %c9)
      %265 = index.ceildivs %c11, %c8
      %alloca_62 = memref.alloca() : memref<10xf16>
      %266 = arith.divf %cst_5, %cst_5 : f16
      scf.if %257 {
        %285 = vector.broadcast %cst_8 : f32 to vector<10x6x10xf32>
        %286 = vector.fma %285, %285, %285 : vector<10x6x10xf32>
        %287 = math.fma %cst, %cst_1, %cst_7 : f32
        %288 = arith.shrui %true, %true : i1
        %289 = index.ceildivs %c9, %c13
        %290 = math.fpowi %out, %c821862697_i32 : f16, i32
        %291 = index.divs %c8, %c3
        %292 = bufferization.to_tensor %alloc_25 : memref<i32>
        %293 = vector.broadcast %cst : f32 to vector<10x6x10xf32>
      } else {
        %285 = arith.remui %c1828549564_i64, %c1778710078_i64 : i64
        %286 = arith.shli %c1778710078_i64, %c1778710078_i64 : i64
        %287 = arith.shrsi %257, %257 : i1
        %288 = math.absf %cst_8 : f32
        %289 = affine.max affine_map<(d0, d1) -> (d1 + d0 * 64 - 128, d1 - 2)>(%c12, %c8)
        %c1_i16_66 = arith.constant 1 : i16
        memref.store %c1_i16_66, %alloc_21[%c3] : memref<10xi16>
        %splat_67 = tensor.splat %cst_3 : tensor<10x6x10xf32>
        %290 = arith.remf %cst, %cst_1 : f32
      }
      %267 = math.absf %6 : tensor<12xf16>
      %true_63 = index.bool.constant true
      %268 = arith.minui %true_63, %true : i1
      %269 = math.tanh %4 : tensor<10x6x10xf16>
      %270 = math.ctlz %9 : tensor<10xi1>
      %splat_64 = tensor.splat %cst_1 : tensor<12xf32>
      %271 = math.roundeven %12 : tensor<10xf32>
      %272 = index.maxu %c3, %c4
      %273 = vector.broadcast %c2 : index to vector<12xindex>
      %274 = vector.broadcast %257 : i1 to vector<12xi1>
      %275 = vector.broadcast %cst : f32 to vector<12xf32>
      vector.scatter %alloc_23[%c2] [%273], %274, %275 : memref<12xf32>, vector<12xindex>, vector<12xi1>, vector<12xf32>
      %276 = arith.floordivsi %true, %false : i1
      %277 = math.atan2 %splat_64, %splat_64 : tensor<12xf32>
      %278 = vector.create_mask %c7 : vector<10xi1>
      %279 = index.divu %258, %c2
      %280 = bufferization.clone %alloc_14 : memref<10x6x10xi1> to memref<10x6x10xi1>
      %281 = math.fma %16, %12, %16 : tensor<10xf32>
      %extracted_65 = tensor.extract %0[%c6] : tensor<10xi32>
      %282 = index.mul %265, %c8
      %283 = math.log10 %splat_64 : tensor<12xf32>
      %284 = arith.minf %cst_3, %cst_6 : f32
      linalg.yield %in : f16
    } -> tensor<10x6x10xf16>
    %36 = arith.shrui %c1828549564_i64, %c1828549564_i64 : i64
    %37 = math.cttz %c1778710078_i64 : i64
    %38 = memref.realloc %alloc_20 : memref<10xf16> to memref<12xf16>
    %splat = tensor.splat %cst_0 : tensor<10x6x10xf16>
    %39 = arith.andi %c1828549564_i64, %c1828549564_i64 : i64
    %40 = vector.matrix_multiply %19, %19 {lhs_columns = 12 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<12xi32>, vector<12xi32>) -> vector<1xi32>
    %41 = math.tanh %4 : tensor<10x6x10xf16>
    %42 = memref.load %alloc_14[%c3, %c1, %c0] : memref<10x6x10xi1>
    %43 = arith.xori %false, %false : i1
    %44 = arith.divsi %c821862697_i32, %c1084003347_i32 : i32
    %45 = index.ceildivs %c4, %c3
    %46 = memref.load %alloc_11[%c6, %c4, %c9] : memref<10x6x10xi16>
    %47 = math.ipowi %15, %15 : tensor<12xi32>
    %48 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_21 : memref<10xi16>) outs(%8 : tensor<10x6x10xi16>) {
    ^bb0(%in: i16, %out: i16):
      %255 = math.fpowi %cst_8, %c1084003347_i32 : f32, i32
      %256 = math.ceil %5 : tensor<10xf16>
      %257 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%rank, %c10, %c9, %c10)
      %258 = tensor.empty() : tensor<10xf16>
      %259 = affine.apply affine_map<(d0, d1) -> ((d1 ceildiv 8) * 2 + 16)>(%c14, %c11)
      %260 = bufferization.clone %alloc_10 : memref<10xi32> to memref<10xi32>
      %261 = index.divu %45, %c14
      %262 = bufferization.clone %alloc_21 : memref<10xi16> to memref<10xi16>
      %263 = bufferization.clone %alloc_12 : memref<10x6x10xf32> to memref<10x6x10xf32>
      %264 = arith.remf %cst_1, %cst_7 : f32
      %265 = math.fma %7, %7, %258 : tensor<10xf16>
      %266 = math.rsqrt %4 : tensor<10x6x10xf16>
      %267 = math.ceil %cst_6 : f32
      %268 = affine.apply affine_map<(d0, d1) -> (d0 + 31)>(%c12, %259)
      %269 = math.cos %12 : tensor<10xf32>
      %false_58 = index.bool.constant false
      %270 = math.fma %5, %5, %5 : tensor<10xf16>
      %271 = arith.shrsi %in, %in : i16
      %272 = math.absf %5 : tensor<10xf16>
      %collapsed_59 = tensor.collapse_shape %splat [[0, 1], [2]] : tensor<10x6x10xf16> into tensor<60x10xf16>
      %273 = arith.maxsi %c1084003347_i32, %c1084003347_i32 : i32
      %274 = memref.load %alloc_14[%c2, %c3, %c6] : memref<10x6x10xi1>
      %275 = math.tanh %collapsed_59 : tensor<60x10xf16>
      %true_60 = index.bool.constant true
      %276 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 floordiv 64, d3, -d2 - (d0 - (-d2) mod 4), -d2 - (d0 - (-d2) mod 4))>(%c0, %c6, %c4, %c9)
      %277 = math.exp %cst_2 : f32
      %278 = arith.remf %cst_7, %cst_7 : f32
      %279 = arith.remf %cst_8, %cst_6 : f32
      scf.if %true_60 {
        %283 = arith.remsi %c1828549564_i64, %c1828549564_i64 : i64
        %284 = affine.max affine_map<(d0, d1, d2) -> (d2 - 2, d0, d1 - 8)>(%c6, %c4, %c13)
        %285 = math.ctlz %8 : tensor<10x6x10xi16>
        %286 = arith.negf %cst_5 : f16
        %287 = vector.broadcast %c821862697_i32 : i32 to vector<6x10x12xi32>
        %288 = vector.broadcast %c1084003347_i32 : i32 to vector<6x12xi32>
        %dest_61, %accumulated_value_62 = vector.scan <maxui>, %287, %288 {inclusive = true, reduction_dim = 1 : i64} : vector<6x10x12xi32>, vector<6x12xi32>
        %289 = arith.cmpi sgt, %false_58, %true : i1
        %290 = vector.load %alloc_26[%c4] : memref<12xf16>, vector<10x6x10xf16>
        %291 = math.absf %cst_4 : f16
      } else {
        %283 = vector.broadcast %cst_0 : f16 to vector<12x12xf16>
        %284 = vector.broadcast %cst_5 : f16 to vector<12xf16>
        %dest_61, %accumulated_value_62 = vector.scan <maxf>, %283, %284 {inclusive = true, reduction_dim = 0 : i64} : vector<12x12xf16>, vector<12xf16>
        %285 = math.ctlz %c821862697_i32 : i32
        %286 = index.sub %c14, %c0
        %287 = math.sqrt %collapsed_59 : tensor<60x10xf16>
        %288 = memref.realloc %alloc_13 : memref<12xi1> to memref<6xi1>
        %289 = math.absi %8 : tensor<10x6x10xi16>
        %c0_i16_63 = arith.constant 0 : i16
        %290 = vector.transfer_read %14[%c10], %c0_i16_63 : tensor<12xi16>, vector<i16>
        %291 = arith.cmpf ueq, %cst_4, %cst_4 : f16
      }
      %280 = arith.andi %true, %true : i1
      %281 = affine.apply affine_map<(d0, d1) -> (((d0 floordiv 4) mod 64 + 8) ceildiv 128)>(%c7, %rank)
      %282 = arith.remf %cst_5, %cst_0 : f16
      linalg.yield %in : i16
    } -> tensor<10x6x10xi16>
    %49 = math.tan %5 : tensor<10xf16>
    %50 = bufferization.clone %alloc_13 : memref<12xi1> to memref<12xi1>
    %51 = vector.create_mask %c14 : vector<12xi1>
    %52 = math.exp %7 : tensor<10xf16>
    %53 = math.roundeven %cst_4 : f16
    %54 = math.ctlz %2 : tensor<10xi32>
    %55 = math.tanh %20 : tensor<f16>
    %56 = math.ipowi %14, %3 : tensor<12xi16>
    %cast = tensor.cast %3 : tensor<12xi16> to tensor<?xi16>
    %57 = arith.divf %cst_4, %cst_4 : f16
    %58 = math.cos %cst_2 : f32
    %59 = math.absi %11 : tensor<10x6x10xi64>
    bufferization.dealloc_tensor %5 : tensor<10xf16>
    %60 = math.absf %7 : tensor<10xf16>
    %61 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %40, %40, %c1084003347_i32 : vector<1xi32>, vector<1xi32> into i32
    %62 = affine.load %alloc_25[] : memref<i32>
    %63 = math.atan %cst : f32
    %64 = arith.ceildivsi %c1778710078_i64, %c1828549564_i64 : i64
    %65 = math.fpowi %cst_5, %c821862697_i32 : f16, i32
    %66 = vector.transpose %26, [0] : vector<6xi1> to vector<6xi1>
    %67 = vector.broadcast %c4 : index to vector<12xindex>
    vector.scatter %alloc_14[%c5, %c5, %c4] [%67], %51, %51 : memref<10x6x10xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
    %68 = arith.ori %true, %true : i1
    %69 = scf.if %true -> (memref<12xi32>) {
      %255 = arith.divf %cst_8, %cst : f32
      %256 = vector.insert %true, %51 [9] : i1 into vector<12xi1>
      %257 = math.round %cst_3 : f32
      %258 = arith.remsi %c1084003347_i32, %c821862697_i32 : i32
      %259 = affine.for %arg1 = 0 to 117 iter_args(%arg2 = %c10) -> (index) {
        affine.yield %c3 : index
      }
      %260 = math.rsqrt %21 : tensor<f16>
      %extracted_58 = tensor.extract %4[%c8, %c5, %c5] : tensor<10x6x10xf16>
      vector.print %40 : vector<1xi32>
      scf.yield %alloc_18 : memref<12xi32>
    } else {
      %255 = math.log1p %12 : tensor<10xf32>
      %false_58 = index.bool.constant false
      %256 = math.log2 %cst_0 : f16
      %257 = math.log %4 : tensor<10x6x10xf16>
      %258 = math.tanh %12 : tensor<10xf32>
      %259 = math.rsqrt %17 : tensor<10xf32>
      %260 = vector.multi_reduction <maxsi>, %26, %26 [] : vector<6xi1> to vector<6xi1>
      %261 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 floordiv 8)>(%c9, %c1, %c3, %c7)
      scf.yield %alloc_18 : memref<12xi32>
    }
    %70 = memref.alloca_scope  -> (i32) {
      %cast_58 = tensor.cast %4 : tensor<10x6x10xf16> to tensor<?x?x?xf16>
      %255 = arith.andi %c1778710078_i64, %c1778710078_i64 : i64
      %extracted_59 = tensor.extract %7[%c2] : tensor<10xf16>
      %256 = math.sqrt %4 : tensor<10x6x10xf16>
      %257 = scf.index_switch %c6 -> tensor<10xi32> 
      case 1 {
        %281 = arith.andi %c1084003347_i32, %62 : i32
        %282 = math.roundeven %16 : tensor<10xf32>
        %cst_61 = arith.constant 1.33855296E+9 : f32
        %c1_i16_62 = arith.constant 1 : i16
        %283 = vector.broadcast %c1_i16_62 : i16 to vector<12xi16>
        %284 = vector.maskedload %alloc_21[%c2], %51, %283 : memref<10xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %285 = arith.remsi %c1828549564_i64, %c1778710078_i64 : i64
        %cast_63 = tensor.cast %4 : tensor<10x6x10xf16> to tensor<?x?x?xf16>
        %286 = arith.minf %cst_5, %cst_5 : f16
        %287 = math.ipowi %62, %62 : i32
        %288 = math.tan %cst_2 : f32
        %289 = math.tanh %20 : tensor<f16>
        %290 = vector.broadcast %cst : f32 to vector<10x6x10xf32>
        %alloca_64 = memref.alloca() : memref<12xi1>
        %inserted_65 = tensor.insert %extracted_59 into %cast_58[%c0, %c0, %c0] : tensor<?x?x?xf16>
        %291 = math.tan %cst_5 : f16
        %292 = arith.remf %cst_0, %cst_4 : f16
        %293 = math.roundeven %20 : tensor<f16>
        scf.yield %2 : tensor<10xi32>
      }
      case 2 {
        %alloca_61 = memref.alloca() : memref<10xi16>
        %c1_i16_62 = arith.constant 1 : i16
        %281 = memref.atomic_rmw minu %c1_i16_62, %alloc_21[%c9] : (i16, memref<10xi16>) -> i16
        %282 = math.ceil %cst_8 : f32
        %283 = arith.negf %cst_2 : f32
        %284 = arith.remf %cst_0, %cst_4 : f16
        %285 = arith.shrsi %c1778710078_i64, %c1778710078_i64 : i64
        %286 = math.sqrt %12 : tensor<10xf32>
        %287 = arith.divsi %false, %true : i1
        %288 = arith.ceildivsi %c821862697_i32, %c821862697_i32 : i32
        memref.store %cst_4, %alloc_22[%c2] : memref<12xf16>
        %289 = arith.shrui %false, %false : i1
        %290 = affine.max affine_map<(d0, d1, d2) -> (d2 * -128, d2 ceildiv 16, d2)>(%c9, %c3, %c15)
        %291 = arith.andi %c1778710078_i64, %c1828549564_i64 : i64
        %292 = vector.broadcast %c1084003347_i32 : i32 to vector<6x6xi32>
        %293 = vector.outerproduct %27, %27, %292 {kind = #vector.kind<xor>} : vector<6xi32>, vector<6xi32>
        %cst_63 = arith.constant 1.000000e+00 : f16
        %cst_64 = arith.constant 0.000000e+00 : f16
        %294 = vector.transfer_read %4[%c12, %c12, %c15], %cst_64 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<10x6x10xf16>, vector<12xf16>
        %295 = vector.load %alloc_26[%c3] : memref<12xf16>, vector<10xf16>
        scf.yield %2 : tensor<10xi32>
      }
      case 3 {
        %281 = arith.maxui %false, %false : i1
        %extracted_61 = tensor.extract %8[%c0, %c4, %c7] : tensor<10x6x10xi16>
        %282 = math.roundeven %4 : tensor<10x6x10xf16>
        %283 = arith.divui %62, %c821862697_i32 : i32
        %284 = arith.cmpi sle, %62, %62 : i32
        %285 = vector.broadcast %c1828549564_i64 : i64 to vector<12x12xi64>
        %286 = vector.broadcast %c1828549564_i64 : i64 to vector<12xi64>
        %dest_62, %accumulated_value_63 = vector.scan <maxsi>, %285, %286 {inclusive = true, reduction_dim = 1 : i64} : vector<12x12xi64>, vector<12xi64>
        %287 = arith.divsi %c1828549564_i64, %c1828549564_i64 : i64
        %cst_64 = arith.constant 0x4E6B291A : f32
        %288 = math.log %cst_2 : f32
        %289 = math.copysign %16, %16 : tensor<10xf32>
        %extracted_65 = tensor.extract %6[%c1] : tensor<12xf16>
        %290 = vector.load %alloc_16[%c2] : memref<12xf16>, vector<12xf16>
        %291 = vector.matrix_multiply %19, %40 {lhs_columns = 1 : i32, lhs_rows = 12 : i32, rhs_columns = 1 : i32} : (vector<12xi32>, vector<1xi32>) -> vector<12xi32>
        %292 = index.ceildivs %c14, %c7
        %293 = arith.divf %cst_8, %cst_6 : f32
        %294 = arith.ori %c1778710078_i64, %c1778710078_i64 : i64
        scf.yield %2 : tensor<10xi32>
      }
      case 4 {
        %281 = arith.remsi %c1778710078_i64, %c1778710078_i64 : i64
        %282 = math.sqrt %cst_1 : f32
        %283 = math.sqrt %cst_7 : f32
        %284 = math.cttz %62 : i32
        %285 = tensor.empty() : tensor<10x6x10xi32>
        %286 = math.fpowi %splat, %285 : tensor<10x6x10xf16>, tensor<10x6x10xi32>
        %287 = math.ipowi %3, %3 : tensor<12xi16>
        %288 = arith.shrui %c1778710078_i64, %c1828549564_i64 : i64
        %289 = math.roundeven %cst : f32
        bufferization.dealloc_tensor %12 : tensor<10xf32>
        %290 = math.floor %20 : tensor<f16>
        %291 = arith.remsi %c821862697_i32, %62 : i32
        %rank_61 = tensor.rank %1 : tensor<12xi16>
        %alloca_62 = memref.alloca() : memref<10xi16>
        %292 = arith.remsi %c1828549564_i64, %c1828549564_i64 : i64
        %293 = math.log1p %7 : tensor<10xf16>
        %true_63 = index.bool.constant true
        scf.yield %2 : tensor<10xi32>
      }
      default {
        %281 = affine.apply affine_map<(d0, d1) -> (d0 + (-d1) ceildiv 64 + 1)>(%c13, %c1)
        %cast_61 = tensor.cast %11 : tensor<10x6x10xi64> to tensor<?x?x?xi64>
        %282 = memref.atomic_rmw muli %c1084003347_i32, %alloc_9[%c2] : (i32, memref<10xi32>) -> i32
        %283 = arith.addf %cst_4, %cst_4 : f16
        %c1537785057_i32 = arith.constant 1537785057 : i32
        %alloca_62 = memref.alloca() : memref<12xi32>
        %284 = math.roundeven %extracted_59 : f16
        %285 = arith.divf %cst_5, %cst_0 : f16
        %286 = arith.remui %false, %false : i1
        %287 = index.maxu %rank, %c9
        %288 = math.fma %extracted_59, %cst_0, %extracted_59 : f16
        %289 = arith.divf %cst_2, %cst_6 : f32
        %290 = vector.multi_reduction <minui>, %26, %26 [] : vector<6xi1> to vector<6xi1>
        %291 = arith.divf %cst_4, %cst_4 : f16
        %292 = math.cos %6 : tensor<12xf16>
        %293 = math.log2 %17 : tensor<10xf32>
        scf.yield %0 : tensor<10xi32>
      }
      bufferization.dealloc_tensor %cast : tensor<?xi16>
      %258 = memref.load %alloc_23[%c8] : memref<12xf32>
      %splat_60 = tensor.splat %62 : tensor<10x6x10xi32>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%8 : tensor<10x6x10xi16>) {
      ^bb0(%out: i16):
        %cast_61 = tensor.cast %4 : tensor<10x6x10xf16> to tensor<?x?x?xf16>
        %281 = math.ctlz %3 : tensor<12xi16>
        %282 = index.mul %c9, %c7
        %283 = arith.minui %c821862697_i32, %c821862697_i32 : i32
        %inserted_62 = tensor.insert %c1778710078_i64 into %10[%c4] : tensor<10xi64>
        %284 = math.round %cst_4 : f16
        %285 = arith.remf %cst_1, %cst_6 : f32
        %286 = math.absi %true : i1
        %287 = arith.remf %cst_3, %cst_7 : f32
        %288 = arith.negf %cst_7 : f32
        %289 = math.sqrt %cst_8 : f32
        vector.print %51 : vector<12xi1>
        %290 = arith.ori %c821862697_i32, %c1084003347_i32 : i32
        %291 = arith.cmpi ne, %c1828549564_i64, %c1828549564_i64 : i64
        %292 = arith.divui %true, %false : i1
        %293 = vector.broadcast %cst_5 : f16 to vector<10x6x6xf16>
        %294 = vector.broadcast %cst_5 : f16 to vector<10x6xf16>
        %dest_63, %accumulated_value_64 = vector.scan <mul>, %293, %294 {inclusive = false, reduction_dim = 2 : i64} : vector<10x6x6xf16>, vector<10x6xf16>
        %inserted_65 = tensor.insert %out into %3[%c3] : tensor<12xi16>
        %295 = vector.create_mask %c12 : vector<12xi1>
        %296 = math.round %cst : f32
        %297 = math.round %cst_3 : f32
        memref.store %out, %alloc_11[%c6, %c1, %c2] : memref<10x6x10xi16>
        %collapsed_66 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<10x6x10xi64> into tensor<60x10xi64>
        %298 = math.powf %cst_6, %cst_2 : f32
        affine.store %c821862697_i32, %alloc_18[%c4] : memref<12xi32>
        %299 = index.ceildivu %c3, %c2
        %300 = bufferization.clone %alloc_23 : memref<12xf32> to memref<12xf32>
        %301 = math.floor %cst_1 : f32
        %302 = math.ipowi %10, %10 : tensor<10xi64>
        %collapsed_67 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<10x6x10xf16> into tensor<60x10xf16>
        %303 = math.tan %cst_2 : f32
        %rank_68 = tensor.rank %2 : tensor<10xi32>
        %304 = arith.ori %out, %out : i16
        linalg.yield %out : i16
      } -> tensor<10x6x10xi16>
      bufferization.dealloc_tensor %14 : tensor<12xi16>
      %260 = math.absf %7 : tensor<10xf16>
      %261 = math.exp %cst_6 : f32
      %262 = math.absf %extracted_59 : f16
      %263 = math.roundeven %4 : tensor<10x6x10xf16>
      %264 = arith.cmpf false, %cst_1, %cst_1 : f32
      bufferization.dealloc_tensor %5 : tensor<10xf16>
      %265 = tensor.empty(%c15) : tensor<10x6x?xi1>
      %266 = vector.load %alloc_14[%c6, %c1, %c8] : memref<10x6x10xi1>, vector<10xi1>
      %267 = arith.minui %c821862697_i32, %62 : i32
      %268 = math.floor %extracted_59 : f16
      %269 = index.sub %c2, %c6
      %270 = math.roundeven %splat : tensor<10x6x10xf16>
      %271 = arith.cmpi sgt, %c1778710078_i64, %c1778710078_i64 : i64
      %272 = arith.cmpf une, %extracted_59, %cst_0 : f16
      %273 = math.log1p %4 : tensor<10x6x10xf16>
      %274 = math.cttz %9 : tensor<10xi1>
      %275 = math.floor %cst_1 : f32
      %276 = arith.remui %c1084003347_i32, %c821862697_i32 : i32
      %277 = vector.extract %25[4] : vector<6xi32>
      %278 = index.divu %c6, %c10
      %279 = arith.addf %cst_2, %cst_3 : f32
      %280 = bufferization.to_tensor %alloc_13 : memref<12xi1>
      memref.alloca_scope.return %c821862697_i32 : i32
    }
    %71 = vector.load %alloc_13[%c6] : memref<12xi1>, vector<10xi1>
    %72 = vector.extract %71[0] : vector<10xi1>
    %73 = math.floor %6 : tensor<12xf16>
    %74 = math.rsqrt %5 : tensor<10xf16>
    %75 = tensor.empty() : tensor<10xi16>
    %76 = arith.shli %70, %70 : i32
    %77 = math.tan %cst : f32
    %78 = arith.remf %cst_0, %cst_4 : f16
    %79 = math.atan %17 : tensor<10xf32>
    %80 = arith.remui %false, %true : i1
    %81 = index.sub %rank, %c10
    %82 = vector.maskedload %50[%c11], %51, %51 : memref<12xi1>, vector<12xi1>, vector<12xi1> into vector<12xi1>
    %83 = vector.matrix_multiply %40, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xi32>, vector<12xi32>) -> vector<12xi32>
    %84 = arith.divui %c1828549564_i64, %c1778710078_i64 : i64
    %85 = math.ceil %splat : tensor<10x6x10xf16>
    %86 = bufferization.clone %alloc_20 : memref<10xf16> to memref<10xf16>
    %87 = affine.apply affine_map<(d0) -> ((((d0 + 32) ceildiv 32) * 2) floordiv 16)>(%c8)
    %88 = tensor.empty() : tensor<12xi16>
    %89 = arith.remui %70, %c821862697_i32 : i32
    affine.for %arg1 = 0 to 51 {
    }
    %90 = arith.remsi %false, %true : i1
    %91 = arith.shrui %70, %70 : i32
    %92 = arith.maxsi %c1084003347_i32, %c821862697_i32 : i32
    %93 = arith.minui %c821862697_i32, %62 : i32
    %false_27 = index.bool.constant false
    %94 = math.absf %12 : tensor<10xf32>
    %extracted = tensor.extract %9[%c4] : tensor<10xi1>
    %95 = vector.load %50[%c6] : memref<12xi1>, vector<10xi1>
    %96 = affine.apply affine_map<(d0, d1) -> ((d1 ceildiv 8) * 2 + 16)>(%c15, %c8)
    memref.store %70, %alloc_15[%c5] : memref<10xi32>
    %97 = index.maxs %81, %c10
    %98 = arith.cmpf uno, %cst_5, %cst_0 : f16
    %99 = arith.subi %c1828549564_i64, %c1828549564_i64 : i64
    %100 = index.divu %97, %c5
    %c0_i16 = arith.constant 0 : i16
    %c0_i16_28 = arith.constant 0 : i16
    %101 = vector.transfer_read %1[%c6], %c0_i16_28 : tensor<12xi16>, vector<i16>
    %102 = arith.ori %c821862697_i32, %70 : i32
    %103 = tensor.empty() : tensor<10xf32>
    %mapped = linalg.map ins(%12, %12 : tensor<10xf32>, tensor<10xf32>) outs(%103 : tensor<10xf32>)
      (%in: f32, %in_58: f32) {
        %255 = vector.broadcast %cst_2 : f32 to vector<10xf32>
        %256 = vector.fma %255, %255, %255 : vector<10xf32>
        %collapsed_59 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<10x6x10xi16> into tensor<60x10xi16>
        %257 = arith.maxsi %true, %extracted : i1
        %258 = math.absi %1 : tensor<12xi16>
        %from_elements = tensor.from_elements %false, %extracted, %false_27, %true, %false, %true, %false, %true, %false, %false_27, %true, %extracted : tensor<12xi1>
        %259 = math.tanh %cst_5 : f16
        %260 = vector.broadcast %cst_0 : f16 to vector<6xf16>
        %261 = vector.maskedload %86[%c5], %26, %260 : memref<10xf16>, vector<6xi1>, vector<6xf16> into vector<6xf16>
        %alloca_60 = memref.alloca() : memref<12xi64>
        %262 = math.log2 %5 : tensor<10xf16>
        %263 = bufferization.to_tensor %alloc_15 : memref<10xi32>
        %264 = math.cttz %8 : tensor<10x6x10xi16>
        %265 = vector.create_mask %c4 : vector<10xi1>
        %266 = arith.remf %in, %in_58 : f32
        %267 = math.absi %263 : tensor<10xi32>
        %268 = arith.minui %c1828549564_i64, %c1778710078_i64 : i64
        %269 = index.casts %c14 : index to i32
        %270 = arith.remui %c1084003347_i32, %c821862697_i32 : i32
        %271 = scf.if %true -> (memref<10x6x10xf16>) {
          %285 = math.log10 %21 : tensor<f16>
          %286 = vector.broadcast %cst_1 : f32 to vector<6x6xf32>
          %287 = vector.broadcast %cst_8 : f32 to vector<6xf32>
          %dest_65, %accumulated_value_66 = vector.scan <add>, %286, %287 {inclusive = true, reduction_dim = 0 : i64} : vector<6x6xf32>, vector<6xf32>
          %cst_67 = arith.constant 1.000000e+00 : f16
          %288 = vector.transfer_read %6[%100], %cst_67 : tensor<12xf16>, vector<f16>
          %289 = affine.min affine_map<(d0, d1, d2) -> (d1 + d2 * 2 - 1, (d1 + d2 * 2 - 1) * 2, d0 floordiv 32 - d0, -(d0 floordiv 32))>(%c7, %c9, %c8)
          %cst_68 = arith.constant 1.91974541E+9 : f32
          %290 = arith.remf %cst_7, %cst_7 : f32
          %291 = vector.broadcast %45 : index to vector<10xindex>
          vector.scatter %50[%c2] [%291], %265, %95 : memref<12xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
          %292 = math.cttz %14 : tensor<12xi16>
          %alloc_69 = memref.alloc() : memref<10x6x10xf16>
          scf.yield %alloc_69 : memref<10x6x10xf16>
        } else {
          %alloc_65 = memref.alloc() : memref<10x6x10xi16>
          %285 = arith.ceildivsi %c0_i16, %c0_i16 : i16
          %c408050594_i32 = arith.constant 408050594 : i32
          %286 = arith.minf %cst_8, %cst_7 : f32
          %287 = math.cttz %1 : tensor<12xi16>
          %c1_i32 = arith.constant 1 : i32
          %c0_i32 = arith.constant 0 : i32
          %288 = vector.transfer_read %alloc_24[%c5], %c0_i32 : memref<10xi32>, vector<i32>
          %289 = arith.addf %cst_7, %cst_8 : f32
          %290 = arith.addf %cst_0, %cst_5 : f16
          %alloc_66 = memref.alloc() : memref<10x6x10xf16>
          scf.yield %alloc_66 : memref<10x6x10xf16>
        }
        %272 = arith.cmpi sge, %c1084003347_i32, %c1084003347_i32 : i32
        %273 = math.ceil %21 : tensor<f16>
        %274 = math.copysign %6, %6 : tensor<12xf16>
        %275 = vector.extract %27[0] : vector<6xi32>
        %276 = vector.create_mask %97, %c11, %45 : vector<10x6x10xi1>
        %277 = arith.divf %cst, %cst_2 : f32
        %278 = math.log10 %in : f32
        %279 = math.roundeven %16 : tensor<10xf32>
        %280 = index.casts %c9 : index to i32
        %281 = math.roundeven %103 : tensor<10xf32>
        %282 = vector.broadcast %true : i1 to vector<6x10xi1>
        %dest_61, %accumulated_value_62 = vector.scan <or>, %276, %282 {inclusive = true, reduction_dim = 0 : i64} : vector<10x6x10xi1>, vector<6x10xi1>
        %alloca_63 = memref.alloca() : memref<10xi16>
        %283 = arith.remf %in_58, %in_58 : f32
        %284 = math.cttz %263 : tensor<10xi32>
        %cst_64 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_64 : f32
      }
    %alloc_29 = memref.alloc() : memref<10x10x6xf16>
    %104 = tensor.empty() : tensor<10x10xf16>
    %105 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_29, %104, %7 : memref<10x10x6xf16>, tensor<10x10xf16>, tensor<10xf16>) outs(%4 : tensor<10x6x10xf16>) {
    ^bb0(%in: f16, %in_58: f16, %in_59: f16, %out: f16):
      %255 = scf.while (%arg1 = %c1828549564_i64) : (i64) -> i64 {
        %282 = math.absi %8 : tensor<10x6x10xi16>
        %283 = arith.remf %cst_8, %cst_8 : f32
        %284 = memref.load %alloc_26[%c0] : memref<12xf16>
        %285 = arith.shrsi %62, %70 : i32
        %286 = vector.load %alloc_16[%c3] : memref<12xf16>, vector<10xf16>
        %287 = math.ipowi %15, %15 : tensor<12xi32>
        %288 = math.ipowi %c1084003347_i32, %70 : i32
        %splat_64 = tensor.splat %c0_i16 : tensor<12xi16>
        scf.condition(%false_27) %c1778710078_i64 : i64
      } do {
      ^bb0(%arg1: i64):
        %collapsed_64 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<10x6x10xi16> into tensor<60x10xi16>
        %282 = index.divu %c13, %c14
        %283 = vector.broadcast %62 : i32 to vector<10x6xi32>
        %dest_65, %accumulated_value_66 = vector.scan <minsi>, %283, %27 {inclusive = false, reduction_dim = 0 : i64} : vector<10x6xi32>, vector<6xi32>
        %expanded = tensor.expand_shape %6 [[0, 1]] : tensor<12xf16> into tensor<12x1xf16>
        %284 = index.sub %c14, %c9
        %285 = arith.remf %in_58, %cst_4 : f16
        %286 = vector.broadcast %cst_5 : f16 to vector<10xf16>
        %287 = memref.atomic_rmw maxs %62, %69[%c5] : (i32, memref<12xi32>) -> i32
        %from_elements = tensor.from_elements %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16, %c0_i16 : tensor<10x6x10xi16>
        %extracted_67 = tensor.extract %13[%c2] : tensor<12xi1>
        %288 = index.ceildivs %c10, %c4
        %289 = math.copysign %cst_8, %cst : f32
        %290 = math.sqrt %cst : f32
        %291 = bufferization.clone %alloc_23 : memref<12xf32> to memref<12xf32>
        %292 = math.tan %7 : tensor<10xf16>
        %293 = bufferization.to_memref %11 : memref<10x6x10xi64>
        scf.yield %c1828549564_i64 : i64
      }
      %256 = arith.ori %c1778710078_i64, %c1778710078_i64 : i64
      %257 = arith.remsi %c0_i16, %c0_i16 : i16
      %258 = arith.minf %in_58, %cst_0 : f16
      %259 = math.fpowi %12, %2 : tensor<10xf32>, tensor<10xi32>
      %260 = math.ipowi %c1828549564_i64, %c1778710078_i64 : i64
      %261 = arith.minui %c1828549564_i64, %c1828549564_i64 : i64
      %262 = math.exp2 %cst_2 : f32
      %false_60 = index.bool.constant false
      %c-19423_i16 = arith.constant -19423 : i16
      %263 = affine.max affine_map<(d0, d1) -> (d0 floordiv 16, d1 - d0 floordiv 2)>(%c13, %c6)
      %264 = arith.cmpi ult, %c1084003347_i32, %c1084003347_i32 : i32
      %265 = arith.shli %false, %false_27 : i1
      %266 = math.ceil %12 : tensor<10xf32>
      %267 = arith.mulf %cst_8, %cst_1 : f32
      %268 = index.maxs %96, %c14
      %cast_61 = tensor.cast %2 : tensor<10xi32> to tensor<?xi32>
      %cast_62 = tensor.cast %21 : tensor<f16> to tensor<f16>
      %269 = math.absi %15 : tensor<12xi32>
      %270 = arith.minf %cst_6, %cst_2 : f32
      %271 = affine.if affine_set<(d0, d1) : (d1 floordiv 16 >= 0, d0 ceildiv 4 - d1 floordiv 16 == 0, -(d0 ceildiv 4 - d1 floordiv 16) == 0)>(%c7, %c5) -> f16 {
        %282 = arith.addf %cst_5, %in_59 : f16
        %283 = math.roundeven %103 : tensor<10xf32>
        %284 = index.maxs %87, %rank
        %285 = arith.ori %70, %c1084003347_i32 : i32
        %286 = memref.atomic_rmw assign %in_59, %alloc_26[%c8] : (f16, memref<12xf16>) -> f16
        %from_elements = tensor.from_elements %cst_8, %cst_8, %cst_1, %cst, %cst_1, %cst_7, %cst_6, %cst_2, %cst, %cst_1, %cst, %cst_3 : tensor<12xf32>
        %287 = vector.shuffle %95, %71 [0, 1, 4, 6, 11, 12, 16] : vector<10xi1>, vector<10xi1>
        %288 = math.exp2 %7 : tensor<10xf16>
        affine.yield %cst_0 : f16
      } else {
        %282 = memref.atomic_rmw ori %c0_i16, %alloc_21[%c0] : (i16, memref<10xi16>) -> i16
        %283 = index.casts %c1778710078_i64 : i64 to index
        bufferization.dealloc_tensor %12 : tensor<10xf32>
        %284 = arith.maxf %cst_6, %cst_2 : f32
        bufferization.dealloc_tensor %7 : tensor<10xf16>
        %285 = bufferization.clone %alloc_16 : memref<12xf16> to memref<12xf16>
        %286 = arith.divf %in, %in_58 : f16
        %splat_64 = tensor.splat %c1084003347_i32 : tensor<12xi32>
        affine.yield %cst_4 : f16
      }
      %272 = vector.insert %c1084003347_i32, %25 [5] : i32 into vector<6xi32>
      %273 = arith.ori %c1828549564_i64, %c1828549564_i64 : i64
      %cst_63 = arith.constant 0x4E0E4200 : f32
      %274 = memref.load %alloc[%c5] : memref<10xi32>
      %275 = math.ceil %splat : tensor<10x6x10xf16>
      %276 = math.absi %c0_i16 : i16
      %277 = vector.load %alloc_25[] : memref<i32>, vector<12xi32>
      %278 = math.rsqrt %4 : tensor<10x6x10xf16>
      %279 = arith.remsi %c1778710078_i64, %c1778710078_i64 : i64
      %280 = arith.cmpf true, %cst_6, %cst_1 : f32
      %281 = vector.create_mask %c13 : vector<12xi1>
      linalg.yield %cst_0 : f16
    } -> tensor<10x6x10xf16>
    %c-11216_i16 = arith.constant -11216 : i16
    %106 = math.absf %6 : tensor<12xf16>
    %107 = math.floor %cst_7 : f32
    %108 = vector.matrix_multiply %95, %95 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
    %false_30 = index.bool.constant false
    %c17066_i16 = arith.constant 17066 : i16
    %alloca = memref.alloca() : memref<10xi64>
    %109 = bufferization.clone %alloc_22 : memref<12xf16> to memref<12xf16>
    %110 = math.absi %15 : tensor<12xi32>
    %splat_31 = tensor.splat %false : tensor<12xi1>
    %111 = math.log1p %4 : tensor<10x6x10xf16>
    %112 = math.tan %5 : tensor<10xf16>
    %113 = math.log10 %21 : tensor<f16>
    %alloc_32 = memref.alloc() : memref<10x6x10xf16>
    memref.tensor_store %4, %alloc_32 : memref<10x6x10xf16>
    %114 = arith.maxsi %70, %c821862697_i32 : i32
    %115 = math.roundeven %12 : tensor<10xf32>
    %116 = vector.multi_reduction <maxui>, %82, %51 [] : vector<12xi1> to vector<12xi1>
    %117 = arith.remsi %false_27, %false_27 : i1
    %118 = scf.if %extracted -> (i64) {
      %255 = vector.multi_reduction <add>, %95, %71 [] : vector<10xi1> to vector<10xi1>
      %256 = arith.divsi %false_27, %false : i1
      %257 = math.sqrt %cst : f32
      %false_58 = arith.constant false
      %258 = vector.transfer_read %13[%c10], %false_58 : tensor<12xi1>, vector<i1>
      %259 = arith.remui %false, %false : i1
      bufferization.dealloc_tensor %splat_31 : tensor<12xi1>
      %260 = math.fpowi %cst_8, %70 : f32, i32
      %261 = affine.apply affine_map<(d0, d1) -> (d0 + (-d1) ceildiv 64 + 1)>(%97, %c14)
      scf.yield %c1828549564_i64 : i64
    } else {
      scf.if %false {
        %260 = math.absi %c0_i16 : i16
        %261 = vector.broadcast %70 : i32 to vector<10xi32>
        %262 = vector.maskedload %69[%c6], %95, %261 : memref<12xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %263 = arith.shrsi %false, %false_27 : i1
        %264 = math.powf %cst_2, %cst_1 : f32
        %alloca_60 = memref.alloca() : memref<10xf16>
        bufferization.dealloc_tensor %9 : tensor<10xi1>
        %c1173171685_i64 = arith.constant 1173171685 : i64
        %265 = memref.atomic_rmw mulf %cst_0, %86[%c9] : (f16, memref<10xf16>) -> f16
      } else {
        %260 = arith.cmpi uge, %c0_i16, %c0_i16 : i16
        %261 = vector.multi_reduction <maxsi>, %19, %c1084003347_i32 [0] : vector<12xi32> to i32
        %262 = arith.shrsi %extracted, %false : i1
        %263 = arith.maxui %62, %c821862697_i32 : i32
        %264 = vector.bitcast %108 : vector<1xi1> to vector<1xi1>
        %265 = math.log10 %5 : tensor<10xf16>
        %alloc_60 = memref.alloc() : memref<12xi64>
        %266 = memref.load %alloc_16[%c9] : memref<12xf16>
      }
      %255 = scf.while (%arg1 = %alloc_13) : (memref<12xi1>) -> memref<12xi1> {
        %260 = math.tan %20 : tensor<f16>
        %261 = math.roundeven %7 : tensor<10xf16>
        %262 = arith.shrsi %false, %extracted : i1
        %cast_60 = tensor.cast %3 : tensor<12xi16> to tensor<?xi16>
        %263 = math.log2 %cst : f32
        %collapsed_61 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<10x6x10xi16> into tensor<60x10xi16>
        %alloc_62 = memref.alloc() : memref<10x6x10xi32>
        memref.copy %alloc_17, %alloc_62 : memref<10x6x10xi32> to memref<10x6x10xi32>
        %264 = arith.mulf %cst_8, %cst_7 : f32
        scf.condition(%false_30) %alloc_13 : memref<12xi1>
      } do {
      ^bb0(%arg1: memref<12xi1>):
        %260 = math.copysign %cst_4, %cst_0 : f16
        %261 = vector.flat_transpose %83 {columns = 3 : i32, rows = 4 : i32} : vector<12xi32> -> vector<12xi32>
        %262 = math.log10 %20 : tensor<f16>
        %263 = math.fpowi %7, %0 : tensor<10xf16>, tensor<10xi32>
        %264 = arith.addf %cst_8, %cst_8 : f32
        %265 = arith.cmpi slt, %62, %c1084003347_i32 : i32
        %266 = vector.create_mask %c1 : vector<10xi1>
        %267 = math.fma %cst_0, %cst_5, %cst_5 : f16
        %268 = arith.remf %cst_1, %cst_8 : f32
        %269 = tensor.empty(%c10) : tensor<?xi16>
        %alloca_60 = memref.alloca() : memref<10xi1>
        %270 = index.casts %87 : index to i32
        %271 = vector.broadcast %c9 : index to vector<6xindex>
        %272 = vector.broadcast %cst_2 : f32 to vector<6xf32>
        vector.scatter %alloc_12[%c3, %c3, %c2] [%271], %26, %272 : memref<10x6x10xf32>, vector<6xindex>, vector<6xi1>, vector<6xf32>
        %273 = arith.remf %cst_3, %cst : f32
        %274 = tensor.empty() : tensor<10xi32>
        %275 = vector.multi_reduction <mul>, %83, %c1084003347_i32 [0] : vector<12xi32> to i32
        scf.yield %alloc_13 : memref<12xi1>
      }
      %256 = math.atan2 %12, %16 : tensor<10xf32>
      %alloca_58 = memref.alloca() : memref<10xf32>
      %alloc_59 = memref.alloc() : memref<10x6x10xi1>
      %257 = vector.create_mask %c15, %c13, %c7 : vector<10x6x10xi1>
      %258 = arith.divf %cst_4, %cst_0 : f16
      %259 = arith.cmpi sgt, %c821862697_i32, %62 : i32
      scf.yield %c1828549564_i64 : i64
    }
    %119 = arith.divsi %c0_i16, %c0_i16 : i16
    %c1_i16 = arith.constant 1 : i16
    %c0_i16_33 = arith.constant 0 : i16
    %120 = vector.transfer_read %8[%c15, %c4, %c5], %c0_i16_33 {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : tensor<10x6x10xi16>, vector<6x12xi16>
    %121 = vector.matrix_multiply %108, %26 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 6 : i32} : (vector<1xi1>, vector<6xi1>) -> vector<6xi1>
    bufferization.dealloc_tensor %6 : tensor<12xf16>
    %122 = arith.cmpf ugt, %cst_7, %cst_8 : f32
    %collapsed = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<10x6x10xi64> into tensor<60x10xi64>
    %alloc_34 = memref.alloc() : memref<10xf32>
    %123 = arith.remsi %false, %extracted : i1
    %alloc_35 = memref.alloc() : memref<10xi1>
    %124 = index.sub %c12, %c15
    %125 = memref.atomic_rmw addi %c821862697_i32, %alloc_18[%c11] : (i32, memref<12xi32>) -> i32
    %126 = affine.if affine_set<(d0, d1) : ((d1 mod 64) floordiv 32 - d0 >= 0, d0 * -16 == 0)>(%c7, %c8) -> i1 {
      %255 = affine.if affine_set<(d0) : (-d0 == 0, d0 + 30 == 0, d0 + 30 == 0, (d0 + 64) ceildiv 64 >= 0)>(%c12) -> memref<12xf32> {
        %262 = arith.remsi %c821862697_i32, %70 : i32
        %alloc_59 = memref.alloc() : memref<10xi16>
        %263 = arith.remsi %c1778710078_i64, %c1778710078_i64 : i64
        %264 = arith.shrui %c1084003347_i32, %c821862697_i32 : i32
        %265 = math.sqrt %cst_0 : f16
        %266 = math.roundeven %20 : tensor<f16>
        %267 = math.floor %16 : tensor<10xf32>
        %268 = arith.remsi %c1778710078_i64, %c1828549564_i64 : i64
        affine.yield %alloc_23 : memref<12xf32>
      } else {
        %262 = math.ctlz %10 : tensor<10xi64>
        memref.store %c1084003347_i32, %alloc_25[] : memref<i32>
        %263 = arith.floordivsi %true, %false_30 : i1
        %264 = math.roundeven %6 : tensor<12xf16>
        %265 = bufferization.to_memref %6 : memref<12xf16>
        %266 = index.casts %c5 : index to i32
        %inserted_59 = tensor.insert %cst_1 into %103[%c2] : tensor<10xf32>
        %267 = arith.remf %cst_8, %cst_1 : f32
        affine.yield %alloc_23 : memref<12xf32>
      }
      %256 = vector.flat_transpose %26 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
      %inserted_58 = tensor.insert %cst_4 into %4[%c7, %c1, %c6] : tensor<10x6x10xf16>
      %257 = arith.ceildivsi %c821862697_i32, %c1084003347_i32 : i32
      %258 = memref.load %alloc_24[%c5] : memref<10xi32>
      %259 = arith.divf %cst_2, %cst : f32
      %260 = arith.maxsi %true, %true : i1
      %261 = arith.minui %c1828549564_i64, %c1828549564_i64 : i64
      affine.yield %false : i1
    } else {
      %255 = vector.reduction <mul>, %121 : vector<6xi1> into i1
      %256 = memref.realloc %alloc_18 : memref<12xi32> to memref<6xi32>
      %cast_58 = tensor.cast %1 : tensor<12xi16> to tensor<?xi16>
      %257 = arith.andi %false_30, %false : i1
      %258 = math.floor %cst : f32
      %259 = arith.cmpi ne, %c1084003347_i32, %c821862697_i32 : i32
      %expanded = tensor.expand_shape %6 [[0, 1]] : tensor<12xf16> into tensor<12x1xf16>
      %260 = affine.min affine_map<(d0) -> (0, ((d0 - 2) * 2) floordiv 128, ((d0 - 2) * 2) floordiv 128)>(%c10)
      affine.yield %extracted : i1
    }
    memref.store %c1084003347_i32, %alloc_24[%c8] : memref<10xi32>
    %127 = math.cos %5 : tensor<10xf16>
    %128 = math.absi %false_27 : i1
    %129 = arith.maxui %118, %c1778710078_i64 : i64
    %130 = arith.ceildivsi %c1828549564_i64, %c1828549564_i64 : i64
    %131 = math.roundeven %103 : tensor<10xf32>
    %132 = math.cos %7 : tensor<10xf16>
    %133 = memref.load %alloc[%c2] : memref<10xi32>
    %134 = math.tan %cst_4 : f16
    %135 = math.round %12 : tensor<10xf32>
    memref.copy %alloc_24, %alloc_9 : memref<10xi32> to memref<10xi32>
    %136 = arith.shli %extracted, %false_27 : i1
    %137 = arith.shrui %false_30, %false : i1
    %collapsed_36 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<60x10xi64> into tensor<600xi64>
    %138 = arith.divf %cst_7, %cst_3 : f32
    %139 = math.ceil %cst_4 : f16
    %140 = math.round %cst_6 : f32
    %141 = math.sqrt %splat : tensor<10x6x10xf16>
    %142 = vector.maskedload %alloc_17[%c8, %c0, %c8], %82, %83 : memref<10x6x10xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
    %143 = arith.divf %cst_3, %cst_3 : f32
    %144 = arith.ori %extracted, %false_27 : i1
    %145 = vector.extract %83[4] : vector<12xi32>
    %146 = arith.cmpi sge, %c1778710078_i64, %c1828549564_i64 : i64
    %alloc_37 = memref.alloc() : memref<12xi64>
    %147 = arith.divsi %62, %c821862697_i32 : i32
    %148 = affine.load %alloc_14[%c7, %c4, %c12] : memref<10x6x10xi1>
    %149 = math.round %6 : tensor<12xf16>
    %150 = math.ctlz %9 : tensor<10xi1>
    %151 = arith.maxsi %false, %148 : i1
    %152 = arith.shrsi %62, %c821862697_i32 : i32
    %153 = affine.max affine_map<(d0, d1) -> (-(d1 + d0))>(%87, %c11)
    %c776401029_i64 = arith.constant 776401029 : i64
    %154 = arith.divf %cst_8, %cst_8 : f32
    %155 = arith.shli %extracted, %false_30 : i1
    %alloc_38 = memref.alloc() : memref<i32>
    memref.copy %alloc_25, %alloc_38 : memref<i32> to memref<i32>
    %156 = arith.remsi %c821862697_i32, %62 : i32
    %157 = scf.index_switch %c5 -> i64 
    case 1 {
      %255 = arith.cmpf ueq, %cst_2, %cst_8 : f32
      %alloc_58 = memref.alloc() : memref<10xf16>
      %256 = math.sqrt %12 : tensor<10xf32>
      memref.store %true, %50[%c2] : memref<12xi1>
      %257 = arith.divf %cst_1, %cst_2 : f32
      bufferization.dealloc_tensor %2 : tensor<10xi32>
      %258 = math.ctlz %extracted : i1
      %259 = index.divu %124, %c15
      %260 = math.round %20 : tensor<f16>
      %c390288506_i32 = arith.constant 390288506 : i32
      %collapsed_59 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<60x10xi64> into tensor<600xi64>
      %261 = math.roundeven %cst_0 : f16
      %262 = arith.shli %c1828549564_i64, %c1828549564_i64 : i64
      %263 = index.divs %96, %81
      %264 = index.maxs %97, %c15
      %265 = memref.load %alloc_22[%c9] : memref<12xf16>
      scf.yield %118 : i64
    }
    case 2 {
      %255 = arith.maxui %c1828549564_i64, %118 : i64
      %splat_58 = tensor.splat %false : tensor<10x6x10xi1>
      %256 = arith.xori %c821862697_i32, %c1084003347_i32 : i32
      %257 = math.cttz %collapsed_36 : tensor<600xi64>
      %cst_59 = arith.constant 5.112000e+03 : f16
      %collapsed_60 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<10x6x10xf16> into tensor<60x10xf16>
      %258 = scf.if %false -> (i16) {
        %expanded = tensor.expand_shape %14 [[0, 1]] : tensor<12xi16> into tensor<12x1xi16>
        %c1_i32 = arith.constant 1 : i32
        %267 = vector.transfer_read %alloc_17[%124, %c12, %81], %c1_i32 : memref<10x6x10xi32>, vector<i32>
        %alloca_61 = memref.alloca() : memref<10x6x10xi1>
        %268 = arith.ori %c0_i16, %c1_i16 : i16
        %269 = arith.cmpi sgt, %70, %c821862697_i32 : i32
        %collapsed_62 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<10x6x10xi64> into tensor<60x10xi64>
        %270 = arith.ori %62, %70 : i32
        %271 = arith.minui %c1828549564_i64, %c1778710078_i64 : i64
        scf.yield %c1_i16 : i16
      } else {
        %267 = arith.remf %cst_1, %cst_7 : f32
        %268 = math.fma %6, %6, %6 : tensor<12xf16>
        %269 = vector.bitcast %108 : vector<1xi1> to vector<1xi1>
        %270 = math.ipowi %false_27, %false_30 : i1
        %271 = index.maxs %c4, %c4
        %272 = arith.maxsi %c1828549564_i64, %c1828549564_i64 : i64
        %inserted_61 = tensor.insert %c1_i16 into %14[%c6] : tensor<12xi16>
        %alloc_62 = memref.alloc() : memref<10x6x10xf32>
        scf.yield %c0_i16 : i16
      }
      affine.for %arg1 = 0 to 84 {
      }
      %259 = math.rsqrt %cst_8 : f32
      %260 = math.sqrt %21 : tensor<f16>
      %261 = math.tanh %cst_6 : f32
      %262 = math.floor %5 : tensor<10xf16>
      %263 = math.ipowi %1, %3 : tensor<12xi16>
      %264 = arith.shrsi %false, %148 : i1
      %265 = tensor.empty() : tensor<12xf16>
      %266 = affine.load %alloc[%c5] : memref<10xi32>
      scf.yield %c1778710078_i64 : i64
    }
    default {
      %255 = math.log %4 : tensor<10x6x10xf16>
      %256 = arith.cmpi ugt, %false, %extracted : i1
      %collapsed_58 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<10x6x10xi64> into tensor<60x10xi64>
      %257 = vector.maskedload %69[%c2], %51, %19 : memref<12xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
      %258 = vector.transpose %95, [0] : vector<10xi1> to vector<10xi1>
      %259 = arith.remf %cst_3, %cst_6 : f32
      %260 = arith.ceildivsi %false_27, %false_30 : i1
      %261 = math.round %6 : tensor<12xf16>
      %false_59 = index.bool.constant false
      memref.copy %86, %alloc_19 : memref<10xf16> to memref<10xf16>
      %262 = vector.insert %true, %82 [3] : i1 into vector<12xi1>
      %263 = vector.multi_reduction <add>, %51, %51 [] : vector<12xi1> to vector<12xi1>
      %264 = math.sqrt %6 : tensor<12xf16>
      %alloca_60 = memref.alloca() : memref<10xf32>
      %265 = math.fpowi %103, %0 : tensor<10xf32>, tensor<10xi32>
      %266 = affine.min affine_map<(d0) -> ((-d0 + -d0 + 8) floordiv 8 + 32, 0)>(%c13)
      scf.yield %c1778710078_i64 : i64
    }
    %158 = arith.remf %cst, %cst : f32
    %159 = arith.remf %cst_1, %cst : f32
    %160 = vector.splat %c0_i16 : vector<12xi16>
    %161 = math.round %cst_7 : f32
    %162 = math.sqrt %5 : tensor<10xf16>
    %163 = vector.broadcast %c1084003347_i32 : i32 to vector<12x12xi32>
    %dest, %accumulated_value = vector.scan <or>, %163, %19 {inclusive = false, reduction_dim = 0 : i64} : vector<12x12xi32>, vector<12xi32>
    %164 = arith.remf %cst_2, %cst_2 : f32
    %165 = math.exp %cst_2 : f32
    %collapsed_39 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<10x6x10xi64> into tensor<60x10xi64>
    %166 = arith.remf %cst_0, %cst_0 : f16
    %167 = affine.if affine_set<(d0, d1, d2) : ((d1 floordiv 32 - 2) * 2 + d2 == 0)>(%c12, %c8, %c0) -> memref<10xi16> {
      %255 = tensor.empty(%c14, %c7, %97) : tensor<?x?x?xi64>
      %256 = index.casts %45 : index to i32
      %257 = arith.remf %cst_2, %cst_8 : f32
      %258 = arith.ori %62, %c821862697_i32 : i32
      %259 = math.ipowi %c1084003347_i32, %c821862697_i32 : i32
      %260 = arith.andi %70, %62 : i32
      %261 = arith.minf %cst_4, %cst_4 : f16
      %262 = math.exp2 %cst_2 : f32
      affine.yield %alloc_21 : memref<10xi16>
    } else {
      %255 = arith.maxsi %true, %extracted : i1
      %256 = arith.negf %cst_5 : f16
      %257 = index.maxs %124, %c1
      %258 = arith.remsi %c1828549564_i64, %118 : i64
      %cast_58 = tensor.cast %6 : tensor<12xf16> to tensor<?xf16>
      %259 = tensor.empty() : tensor<10x6xi16>
      %260 = tensor.empty() : tensor<6xi16>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%259, %260 : tensor<10x6xi16>, tensor<6xi16>) outs(%8 : tensor<10x6x10xi16>) {
      ^bb0(%in: i16, %in_59: i16, %out: i16):
        %265 = index.add %153, %c5
        %266 = math.powf %7, %5 : tensor<10xf16>
        %collapsed_60 = tensor.collapse_shape %splat [[0, 1], [2]] : tensor<10x6x10xf16> into tensor<60x10xf16>
        %267 = arith.floordivsi %extracted, %extracted : i1
        %268 = arith.ori %c821862697_i32, %c1084003347_i32 : i32
        %269 = arith.maxsi %in, %in_59 : i16
        %270 = arith.remf %cst_6, %cst_3 : f32
        %271 = arith.cmpf false, %cst_3, %cst_8 : f32
        %272 = arith.cmpf ord, %cst_1, %cst_7 : f32
        %273 = arith.remsi %false_27, %true : i1
        %274 = math.roundeven %cst_0 : f16
        %275 = memref.atomic_rmw mulf %cst_5, %86[%c7] : (f16, memref<10xf16>) -> f16
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %276 = vector.transfer_read %69[%96], %c0_i32 : memref<12xi32>, vector<i32>
        %277 = vector.load %alloc_10[%c4] : memref<10xi32>, vector<10xi32>
        %278 = index.maxs %c8, %c14
        %279 = math.sqrt %cst_3 : f32
        %280 = math.log2 %cst_0 : f16
        %281 = math.ctlz %3 : tensor<12xi16>
        %282 = math.absf %5 : tensor<10xf16>
        %283 = arith.maxsi %c0_i16, %in : i16
        %284 = bufferization.to_tensor %alloc_16 : memref<12xf16>
        %285 = math.sqrt %cst_0 : f16
        %286 = vector.broadcast %true : i1 to vector<12xi1>
        %287 = vector.multi_reduction <or>, %51, %false_27 [0] : vector<12xi1> to i1
        %288 = arith.remf %cst_7, %cst_6 : f32
        memref.tensor_store %0, %alloc_15 : memref<10xi32>
        %alloca_61 = memref.alloca() : memref<10xf32>
        %289 = arith.remsi %false, %extracted : i1
        %extracted_62 = tensor.extract %8[%c6, %c1, %c5] : tensor<10x6x10xi16>
        %290 = arith.ceildivsi %c821862697_i32, %c1_i32 : i32
        %291 = arith.divf %cst_4, %cst_5 : f16
        %292 = vector.broadcast %287 : i1 to vector<6x6xi1>
        %293 = vector.outerproduct %26, %121, %292 {kind = #vector.kind<or>} : vector<6xi1>, vector<6xi1>
        linalg.yield %in : i16
      } -> tensor<10x6x10xi16>
      %262 = vector.broadcast %62 : i32 to vector<1x1xi32>
      %263 = vector.outerproduct %40, %40, %262 {kind = #vector.kind<or>} : vector<1xi32>, vector<1xi32>
      %264 = math.ceil %6 : tensor<12xf16>
      affine.yield %alloc_21 : memref<10xi16>
    }
    scf.execute_region {
      %generated_58 = tensor.generate %c2 {
      ^bb0(%arg1: index):
        %267 = math.tan %cst_0 : f16
        %268 = bufferization.clone %alloc_26 : memref<12xf16> to memref<12xf16>
        %alloc_63 = memref.alloc() : memref<12xi1>
        %269 = math.absf %7 : tensor<10xf16>
        tensor.yield %cst_4 : f16
      } : tensor<?xf16>
      %c1_i16_59 = arith.constant 1 : i16
      %255 = vector.transfer_read %14[%81], %c1_i16_59 : tensor<12xi16>, vector<i16>
      %cast_60 = tensor.cast %12 : tensor<10xf32> to tensor<?xf32>
      %256 = math.copysign %splat, %4 : tensor<10x6x10xf16>
      %257 = bufferization.clone %alloc_11 : memref<10x6x10xi16> to memref<10x6x10xi16>
      %258 = math.rsqrt %7 : tensor<10xf16>
      %259 = arith.divsi %62, %70 : i32
      %collapsed_61 = tensor.collapse_shape %splat [[0, 1], [2]] : tensor<10x6x10xf16> into tensor<60x10xf16>
      %260 = arith.floordivsi %c1778710078_i64, %c1778710078_i64 : i64
      %261 = arith.shrsi %extracted, %false : i1
      %262 = scf.if %true -> (f32) {
        %267 = arith.ceildivsi %extracted, %extracted : i1
        %268 = memref.load %alloc_16[%c4] : memref<12xf16>
        %269 = memref.atomic_rmw maxu %62, %alloc_24[%c0] : (i32, memref<10xi32>) -> i32
        %alloc_63 = memref.alloc() : memref<12xf32>
        %270 = vector.create_mask %c6, %c5, %c13 : vector<10x6x10xi1>
        %271 = index.ceildivs %c8, %c4
        %272 = arith.andi %118, %118 : i64
        %273 = arith.mulf %cst_5, %cst_5 : f16
        scf.yield %cst_8 : f32
      } else {
        %false_63 = index.bool.constant false
        %267 = vector.insert %148, %51 [3] : i1 into vector<12xi1>
        %268 = math.log %16 : tensor<10xf32>
        %expanded = tensor.expand_shape %1 [[0, 1]] : tensor<12xi16> into tensor<12x1xi16>
        %269 = arith.remf %cst_4, %cst_0 : f16
        %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %83, %83, %c1084003347_i32 : vector<12xi32>, vector<12xi32> into i32
        %false_64 = index.bool.constant false
        %271 = math.tan %12 : tensor<10xf32>
        scf.yield %cst_7 : f32
      }
      %263 = math.round %cst_4 : f16
      %inserted_62 = tensor.insert %c1828549564_i64 into %10[%c2] : tensor<10xi64>
      %264 = index.maxu %c9, %97
      %265 = math.atan2 %7, %7 : tensor<10xf16>
      %266 = arith.remui %c1828549564_i64, %118 : i64
      scf.yield
    }
    %168 = arith.remf %cst_7, %cst_6 : f32
    %169 = arith.shrui %c1828549564_i64, %c1778710078_i64 : i64
    %c0_i16_40 = arith.constant 0 : i16
    %170 = vector.transfer_read %3[%c11], %c0_i16_40 : tensor<12xi16>, vector<i16>
    %171 = arith.remui %false, %148 : i1
    %172 = math.exp %cst_7 : f32
    %173 = arith.cmpi sgt, %c1778710078_i64, %c1778710078_i64 : i64
    %174 = arith.ori %c0_i16, %c0_i16_40 : i16
    %false_41 = index.bool.constant false
    %175 = arith.remsi %c1828549564_i64, %c1828549564_i64 : i64
    %176 = vector.broadcast %c1084003347_i32 : i32 to vector<12x12x12xi32>
    %177 = vector.broadcast %c821862697_i32 : i32 to vector<12x12xi32>
    %dest_42, %accumulated_value_43 = vector.scan <mul>, %176, %177 {inclusive = false, reduction_dim = 2 : i64} : vector<12x12x12xi32>, vector<12x12xi32>
    %178 = math.fpowi %cst_3, %c821862697_i32 : f32, i32
    %179 = arith.cmpi sle, %false_41, %false_41 : i1
    %collapsed_44 = tensor.collapse_shape %collapsed_39 [[0, 1]] : tensor<60x10xi64> into tensor<600xi64>
    %true_45 = arith.constant true
    %false_46 = arith.constant false
    %180 = vector.transfer_read %13[%c5], %false_46 : tensor<12xi1>, vector<i1>
    %181 = scf.while (%arg1 = %27) : (vector<6xi32>) -> vector<6xi32> {
      %alloc_58 = memref.alloc() : memref<12xi32>
      %255 = affine.load %86[%c7] : memref<10xf16>
      %256 = arith.subi %false_41, %true : i1
      %257 = arith.minui %c1_i16, %c0_i16_40 : i16
      %258 = arith.ori %62, %70 : i32
      %259 = vector.create_mask %c8 : vector<10xi1>
      %260 = arith.remsi %false_30, %false_41 : i1
      %261 = arith.divsi %false_27, %true : i1
      scf.condition(%extracted) %25 : vector<6xi32>
    } do {
    ^bb0(%arg1: vector<6xi32>):
      %c468504343_i64 = arith.constant 468504343 : i64
      %255 = vector.broadcast %true_45 : i1 to vector<12x12xi1>
      %dest_58, %accumulated_value_59 = vector.scan <and>, %255, %51 {inclusive = true, reduction_dim = 0 : i64} : vector<12x12xi1>, vector<12xi1>
      %256 = math.fpowi %5, %2 : tensor<10xf16>, tensor<10xi32>
      %257 = arith.maxsi %true, %extracted : i1
      %258 = vector.flat_transpose %142 {columns = 3 : i32, rows = 4 : i32} : vector<12xi32> -> vector<12xi32>
      %259 = vector.reduction <minsi>, %25 : vector<6xi32> into i32
      %260 = memref.alloca_scope  -> (memref<10xi16>) {
        %270 = vector.multi_reduction <or>, %95, %95 [] : vector<10xi1> to vector<10xi1>
        %alloc_61 = memref.alloc() : memref<10xi64>
        %271 = vector.broadcast %118 : i64 to vector<10xi64>
        %272 = vector.broadcast %62 : i32 to vector<10xi32>
        %273 = vector.gather %alloc_61[%c9] [%272], %71, %271 : memref<10xi64>, vector<10xi32>, vector<10xi1>, vector<10xi64> into vector<10xi64>
        %274 = math.ipowi %false_27, %false : i1
        %275 = math.cttz %true : i1
        %276 = math.ipowi %c1778710078_i64, %c1828549564_i64 : i64
        %277 = arith.maxsi %false_41, %true : i1
        %alloc_62 = memref.alloc() : memref<12xi64>
        memref.store %c1084003347_i32, %alloc_18[%c8] : memref<12xi32>
        %278 = arith.minf %cst_0, %cst_4 : f16
        %279 = arith.minui %c1828549564_i64, %c1778710078_i64 : i64
        %280 = math.ceil %7 : tensor<10xf16>
        %281 = math.cttz %extracted : i1
        %282 = math.absf %17 : tensor<10xf32>
        %283 = math.cos %21 : tensor<f16>
        %284 = math.copysign %12, %17 : tensor<10xf32>
        %285 = math.fpowi %cst_4, %70 : f16, i32
        %286 = math.round %5 : tensor<10xf16>
        %287 = math.rsqrt %7 : tensor<10xf16>
        %288 = bufferization.clone %86 : memref<10xf16> to memref<10xf16>
        %289 = arith.minui %false_27, %false_27 : i1
        %290 = vector.reduction <xor>, %108 : vector<1xi1> into i1
        %291 = vector.broadcast %c0_i16_40 : i16 to vector<6x6xi16>
        %292 = vector.broadcast %c0_i16 : i16 to vector<6xi16>
        %dest_63, %accumulated_value_64 = vector.scan <add>, %291, %292 {inclusive = true, reduction_dim = 0 : i64} : vector<6x6xi16>, vector<6xi16>
        %293 = arith.shrui %false, %extracted : i1
        %294 = affine.load %alloc_18[%c10] : memref<12xi32>
        %295 = math.log %cst_8 : f32
        %296 = arith.ceildivsi %c1084003347_i32, %62 : i32
        %297 = math.floor %cst : f32
        %298 = math.log10 %17 : tensor<10xf32>
        %299 = arith.remui %c1_i16, %c0_i16_40 : i16
        %300 = arith.floordivsi %true_45, %148 : i1
        %301 = arith.remf %cst_4, %cst_4 : f16
        %inserted_65 = tensor.insert %cst_2 into %103[%c3] : tensor<10xf32>
        memref.alloca_scope.return %alloc_21 : memref<10xi16>
      }
      %261 = arith.shrsi %c0_i16, %c1_i16 : i16
      %262 = math.cttz %62 : i32
      %263 = memref.load %alloc_12[%c1, %c0, %c7] : memref<10x6x10xf32>
      %from_elements = tensor.from_elements %extracted, %false, %true_45, %true_45, %false, %false_41, %148, %148, %false_30, %true_45, %false_30, %true, %false, %false, %true, %true_45, %false_30, %true, %true, %false, %false, %148, %false_27, %extracted, %false_41, %true_45, %false, %true, %true_45, %false_30, %false_27, %148, %false_27, %false_27, %false_41, %false_30, %false_27, %false_30, %false_30, %false_27, %extracted, %false_30, %false_27, %extracted, %false, %false_27, %false_27, %true, %148, %true_45, %true_45, %false_27, %148, %148, %true_45, %extracted, %true, %148, %148, %148, %true_45, %false, %false_41, %148, %148, %true_45, %true_45, %148, %false, %148, %false_27, %true, %false, %true_45, %false_41, %extracted, %false_30, %false_41, %false_30, %false_41, %true_45, %false_41, %true_45, %extracted, %false_41, %true_45, %true, %false_30, %true_45, %true_45, %false, %extracted, %148, %false, %148, %extracted, %false_30, %extracted, %false_41, %false_27, %false, %148, %false_27, %extracted, %false_30, %false_41, %false_30, %false_27, %extracted, %false_27, %false, %false_30, %false, %true_45, %true_45, %false_27, %extracted, %false, %false, %false_41, %148, %false_27, %false_41, %false_27, %false_41, %true, %extracted, %extracted, %false_41, %true, %false_30, %false_30, %extracted, %148, %false, %false, %true, %true_45, %false_41, %true, %false_41, %extracted, %false, %false_30, %false, %extracted, %true, %148, %false_30, %true_45, %false_41, %true, %false_27, %true_45, %false_27, %148, %false_27, %false_27, %false_41, %true, %false_30, %false_30, %false_30, %true, %extracted, %false_30, %false, %true, %false_41, %false_30, %false, %true, %false_27, %false_41, %true, %true_45, %false_30, %false_27, %false_30, %true, %false_30, %false_27, %false_30, %true_45, %false_30, %extracted, %148, %true_45, %true_45, %true_45, %148, %false_41, %false_27, %false_27, %false_30, %true_45, %false_27, %false_30, %false_30, %false, %true_45, %148, %true_45, %extracted, %false_27, %true_45, %false_27, %false, %148, %extracted, %true_45, %true, %extracted, %true_45, %false_27, %false, %extracted, %false_41, %false_27, %true, %false_30, %extracted, %148, %extracted, %false_41, %false_30, %true, %false_41, %extracted, %false_30, %148, %true_45, %false_27, %false_27, %false_41, %false, %extracted, %true, %true_45, %extracted, %extracted, %extracted, %false_30, %false, %true_45, %148, %false_27, %false_30, %true, %true, %false_27, %extracted, %148, %false_41, %true, %true, %false, %false, %false_41, %false_30, %148, %true, %false_41, %false_30, %extracted, %false, %false_41, %extracted, %true_45, %true_45, %false_27, %false_30, %148, %false_41, %148, %false, %148, %false_27, %false_41, %extracted, %extracted, %true_45, %false_41, %148, %extracted, %false_41, %148, %true_45, %true_45, %false_41, %true, %true_45, %false, %true, %true_45, %true, %false, %extracted, %extracted, %148, %148, %false_30, %false_41, %148, %true, %false_27, %extracted, %false, %false_27, %false_27, %true_45, %extracted, %false_30, %false_41, %true_45, %148, %true_45, %true_45, %148, %extracted, %false, %true, %true_45, %true_45, %extracted, %extracted, %148, %false_27, %false_41, %false, %false_30, %false_27, %true_45, %false, %148, %false_27, %false_27, %true, %148, %extracted, %false_27, %extracted, %false_41, %false, %148, %true, %148, %false_30, %false_30, %false, %true, %false, %false_41, %false_30, %false_27, %false_30, %true_45, %extracted, %false_30, %true, %extracted, %extracted, %false_41, %148, %false_30, %false_30, %false, %false, %false_41, %false_27, %148, %false_30, %148, %true, %false_27, %extracted, %false_30, %148, %148, %148, %false, %true_45, %false_41, %true_45, %148, %false_30, %false, %false_41, %true_45, %true_45, %true, %false_41, %false, %false, %false_41, %false, %false_41, %false_41, %true_45, %false, %false, %false_41, %false_30, %false_41, %extracted, %false_30, %false, %false_27, %false_41, %true_45, %true_45, %false_27, %false_41, %false_27, %false_41, %false_27, %true_45, %true_45, %148, %true_45, %extracted, %148, %false_41, %148, %true, %false, %extracted, %false_41, %false_27, %true_45, %false_27, %true_45, %extracted, %148, %false_30, %true, %true_45, %extracted, %false_41, %true, %false_30, %false, %extracted, %true, %false_41, %true_45, %false_27, %false_27, %148, %false_41, %extracted, %false, %false_41, %false, %false_30, %148, %extracted, %false, %false_30, %148, %false_27, %extracted, %false_27, %false_27, %148, %false, %true_45, %false_30, %148, %extracted, %false_41, %false_27, %148, %true, %false_30, %false_30, %false_27, %extracted, %148, %false_30, %148, %false_30, %148, %false_27, %false_30, %false_30, %148, %148, %true, %false_30, %false_30, %false_30, %false, %false_27, %false_30, %false, %extracted, %false_41, %false_30, %extracted, %false_41, %false_30, %148, %false_41, %true_45, %148, %extracted, %true, %true, %true, %false_27, %true_45, %false_41, %148, %148, %extracted, %true_45, %true_45, %false, %false_30, %false, %false_27, %false_27, %true_45, %true_45, %true, %false_27, %false_41, %148, %false_27, %false_30, %false_41, %148, %false, %false_27, %148, %148, %true_45, %extracted, %extracted, %true_45, %extracted, %false_30, %true, %148, %false_30, %true, %false_30, %true_45, %148, %true, %false_30, %false_27, %true_45, %false_27, %false, %true_45, %false_27, %148, %148, %false_41, %extracted, %extracted, %true_45, %148, %extracted, %false_41, %148, %extracted, %true_45, %true_45, %false_41, %extracted, %true, %extracted, %extracted, %true_45, %false_27, %true_45, %false_30, %148, %false_27, %false, %false_30, %false_30, %true, %extracted, %true, %false, %true_45, %true, %148, %false_27, %extracted, %false, %148, %false, %true, %true_45, %extracted : tensor<10x6x10xi1>
      %264 = index.ceildivs %c10, %c14
      %265 = index.casts %rank : index to i32
      %from_elements_60 = tensor.from_elements %c1084003347_i32, %62, %c821862697_i32, %c821862697_i32, %62, %62, %c821862697_i32, %62, %c1084003347_i32, %c821862697_i32, %62, %62 : tensor<12xi32>
      %266 = vector.broadcast %cst_0 : f16 to vector<10xf16>
      %267 = vector.broadcast %70 : i32 to vector<10xi32>
      %268 = vector.gather %alloc_20[%100] [%267], %71, %266 : memref<10xf16>, vector<10xi32>, vector<10xi1>, vector<10xf16> into vector<10xf16>
      %269 = math.fpowi %12, %0 : tensor<10xf32>, tensor<10xi32>
      scf.yield %27 : vector<6xi32>
    }
    %rank_47 = tensor.rank %10 : tensor<10xi64>
    %182 = tensor.empty() : tensor<10xf16>
    %mapped_48 = linalg.map ins(%86 : memref<10xf16>) outs(%182 : tensor<10xf16>)
      (%in: f16) {
        %255 = arith.floordivsi %extracted, %true : i1
        %256 = arith.remf %cst_3, %cst : f32
        %257 = math.ipowi %collapsed_39, %collapsed_39 : tensor<60x10xi64>
        %258 = tensor.empty() : tensor<10xi32>
        %259 = arith.shli %c1828549564_i64, %c1778710078_i64 : i64
        %260 = arith.shli %c1778710078_i64, %c1778710078_i64 : i64
        %261 = tensor.empty() : tensor<10x6x10xi32>
        %262 = math.fpowi %4, %261 : tensor<10x6x10xf16>, tensor<10x6x10xi32>
        %263 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 floordiv 8)>(%c13, %81, %rank, %c3)
        %264 = math.atan2 %cst_4, %cst_5 : f16
        %265 = arith.minui %c1778710078_i64, %118 : i64
        memref.copy %alloc_22, %alloc_26 : memref<12xf16> to memref<12xf16>
        %266 = arith.remf %cst_6, %cst_6 : f32
        %267 = arith.maxsi %c1828549564_i64, %c1778710078_i64 : i64
        %268 = affine.if affine_set<(d0, d1) : (d1 floordiv 16 >= 0, d0 ceildiv 4 - d1 floordiv 16 == 0, -(d0 ceildiv 4 - d1 floordiv 16) == 0)>(%c11, %c9) -> memref<10xi64> {
          %285 = vector.load %alloc_14[%c1, %c1, %c8] : memref<10x6x10xi1>, vector<10xi1>
          %286 = vector.insertelement %c1084003347_i32, %25[%rank : index] : vector<6xi32>
          %alloc_60 = memref.alloc() : memref<10xi16>
          memref.copy %alloc_21, %alloc_60 : memref<10xi16> to memref<10xi16>
          %287 = vector.matrix_multiply %40, %83 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 12 : i32} : (vector<1xi32>, vector<12xi32>) -> vector<12xi32>
          %288 = arith.ceildivsi %c0_i16_40, %c0_i16 : i16
          memref.store %c0_i16, %alloc_11[%c2, %c2, %c3] : memref<10x6x10xi16>
          %289 = arith.andi %extracted, %false : i1
          %290 = arith.minf %cst_5, %in : f16
          %alloc_61 = memref.alloc() : memref<10xi64>
          affine.yield %alloc_61 : memref<10xi64>
        } else {
          %285 = arith.ceildivsi %c1828549564_i64, %c1828549564_i64 : i64
          %286 = math.tanh %cst_2 : f32
          %287 = math.ceil %7 : tensor<10xf16>
          %288 = index.casts %c1828549564_i64 : i64 to index
          %289 = math.cos %6 : tensor<12xf16>
          %290 = math.round %5 : tensor<10xf16>
          %291 = vector.bitcast %83 : vector<12xi32> to vector<12xi32>
          %292 = index.sub %c3, %c3
          %alloc_60 = memref.alloc() : memref<10xi64>
          affine.yield %alloc_60 : memref<10xi64>
        }
        %269 = vector.matrix_multiply %19, %27 {lhs_columns = 6 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<12xi32>, vector<6xi32>) -> vector<2xi32>
        %cast_58 = tensor.cast %3 : tensor<12xi16> to tensor<?xi16>
        %270 = memref.alloca_scope  -> (i16) {
          %285 = bufferization.clone %alloc_11 : memref<10x6x10xi16> to memref<10x6x10xi16>
          %286 = affine.apply affine_map<(d0, d1) -> (d0 + 31)>(%rank, %c13)
          %inserted_60 = tensor.insert %cst_5 into %7[%c9] : tensor<10xf16>
          %alloca_61 = memref.alloca() : memref<10xi64>
          %287 = vector.broadcast %in : f16 to vector<12x12x12xf16>
          %288 = vector.broadcast %in : f16 to vector<12x12xf16>
          %dest_62, %accumulated_value_63 = vector.scan <minf>, %287, %288 {inclusive = true, reduction_dim = 0 : i64} : vector<12x12x12xf16>, vector<12x12xf16>
          %289 = arith.cmpi eq, %c0_i16_40, %c0_i16 : i16
          %inserted_64 = tensor.insert %cst_0 into %20[] : tensor<f16>
          %290 = math.roundeven %12 : tensor<10xf32>
          %inserted_65 = tensor.insert %in into %20[] : tensor<f16>
          %291 = bufferization.to_memref %collapsed : memref<60x10xi64>
          %292 = arith.negf %cst_1 : f32
          %293 = arith.shrui %false_27, %false_27 : i1
          %294 = index.casts %true : i1 to index
          %295 = math.ceil %cst_3 : f32
          %296 = index.mul %100, %96
          %297 = math.powf %7, %7 : tensor<10xf16>
          %298 = affine.apply affine_map<(d0, d1) -> (0)>(%c12, %c1)
          %299 = vector.multi_reduction <minsi>, %71, %71 [] : vector<10xi1> to vector<10xi1>
          %300 = arith.shrsi %62, %c821862697_i32 : i32
          %301 = math.absf %4 : tensor<10x6x10xf16>
          %alloc_66 = memref.alloc() : memref<12xi1>
          %302 = arith.maxui %c1_i16, %c1_i16 : i16
          %303 = memref.atomic_rmw muli %62, %69[%c4] : (i32, memref<12xi32>) -> i32
          %304 = arith.ceildivsi %extracted, %false : i1
          %305 = math.exp2 %cst : f32
          %306 = index.mul %153, %c2
          %307 = math.tanh %cst_0 : f16
          %308 = math.fma %21, %20, %21 : tensor<f16>
          %309 = arith.mulf %cst_8, %cst_2 : f32
          %310 = vector.create_mask %c6 : vector<10xi1>
          %311 = math.atan2 %17, %16 : tensor<10xf32>
          %312 = math.cos %7 : tensor<10xf16>
          memref.alloca_scope.return %c0_i16_40 : i16
        }
        %271 = math.cos %cst_5 : f16
        %272 = vector.multi_reduction <maxsi>, %26, %26 [] : vector<6xi1> to vector<6xi1>
        %273 = math.floor %6 : tensor<12xf16>
        %274 = math.ceil %12 : tensor<10xf32>
        %275 = vector.broadcast %c1_i16 : i16 to vector<12xi16>
        %276 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 - d0 mod 4, d2, d2 * 128)>(%c15, %87, %87, %87)
        %277 = bufferization.to_memref %collapsed_39 : memref<60x10xi64>
        %278 = arith.remui %62, %c821862697_i32 : i32
        %279 = vector.bitcast %121 : vector<6xi1> to vector<6xi1>
        %280 = arith.remf %cst_8, %cst_7 : f32
        %281 = math.ipowi %false, %true : i1
        %282 = arith.cmpf ord, %cst_8, %cst_8 : f32
        %283 = math.ceil %17 : tensor<10xf32>
        %284 = math.sqrt %12 : tensor<10xf32>
        memref.store %c821862697_i32, %alloc_10[%c5] : memref<10xi32>
        %cst_59 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_59 : f16
      }
    %183 = vector.extract_strided_slice %121 {offsets = [4], sizes = [1], strides = [1]} : vector<6xi1> to vector<1xi1>
    %184 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %121, %121, %false_30 : vector<6xi1>, vector<6xi1> into i1
    %185 = math.absf %cst_3 : f32
    %186 = math.tanh %cst_8 : f32
    %187 = math.sqrt %21 : tensor<f16>
    %188 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %121, %26, %true : vector<6xi1>, vector<6xi1> into i1
    %189 = math.log %4 : tensor<10x6x10xf16>
    %collapsed_49 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<10x6x10xf16> into tensor<60x10xf16>
    %190 = arith.remsi %false_41, %false_41 : i1
    %191 = arith.minui %c0_i16, %c0_i16_40 : i16
    %192 = arith.divui %c1_i16, %c0_i16_40 : i16
    %193 = tensor.empty() : tensor<12xf16>
    affine.for %arg1 = 0 to 25 {
    }
    %collapsed_50 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<10x6x10xi64> into tensor<60x10xi64>
    %194 = arith.mulf %cst_0, %cst_0 : f16
    %195 = arith.andi %c1828549564_i64, %c1828549564_i64 : i64
    %196 = vector.broadcast %cst_4 : f16 to vector<10xf16>
    %197 = vector.maskedload %alloc_16[%c11], %71, %196 : memref<12xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
    %198 = arith.subi %false_41, %false_30 : i1
    %199 = math.exp %16 : tensor<10xf32>
    %200 = index.ceildivs %124, %c1
    %201 = memref.atomic_rmw minu %c821862697_i32, %alloc[%c6] : (i32, memref<10xi32>) -> i32
    %202 = math.absi %13 : tensor<12xi1>
    bufferization.dealloc_tensor %collapsed_36 : tensor<600xi64>
    %203 = arith.maxsi %extracted, %false_27 : i1
    %204 = math.log10 %12 : tensor<10xf32>
    %205 = vector.reduction <maxui>, %25 : vector<6xi32> into i32
    %206 = arith.remf %cst_3, %cst_3 : f32
    %207 = vector.broadcast %c1 : index to vector<6xindex>
    %208 = vector.broadcast %cst_4 : f16 to vector<6xf16>
    vector.scatter %alloc_26[%c3] [%207], %26, %208 : memref<12xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
    %true_51 = index.bool.constant true
    %209 = vector.multi_reduction <minui>, %108, %108 [] : vector<1xi1> to vector<1xi1>
    %210 = memref.atomic_rmw andi %62, %alloc_9[%c1] : (i32, memref<10xi32>) -> i32
    %211 = arith.minf %cst_3, %cst_6 : f32
    %212 = vector.multi_reduction <maxui>, %108, %148 [0] : vector<1xi1> to i1
    %213 = arith.andi %c1_i16, %c0_i16_40 : i16
    %214 = index.ceildivu %c0, %c5
    %215 = tensor.empty(%124) : tensor<?xi1>
    %216 = affine.max affine_map<(d0, d1, d2) -> (-d1)>(%c3, %c4, %96)
    %217 = bufferization.to_memref %2 : memref<10xi32>
    %218 = index.add %214, %100
    %generated = tensor.generate %153 {
    ^bb0(%arg1: index):
      %true_58 = index.bool.constant true
      %255 = memref.atomic_rmw minf %cst_8, %alloc_12[%c6, %c4, %c5] : (f32, memref<10x6x10xf32>) -> f32
      %256 = math.fpowi %7, %0 : tensor<10xf16>, tensor<10xi32>
      %257 = vector.broadcast %c1_i16 : i16 to vector<i16>
      %258 = vector.transfer_write %257, %3[%c0] : vector<i16>, tensor<12xi16>
      tensor.yield %cst_5 : f16
    } : tensor<?xf16>
    %219 = memref.load %alloc_13[%c1] : memref<12xi1>
    %220 = vector.broadcast %cst_0 : f16 to vector<12xf16>
    %221 = vector.maskedload %109[%c11], %82, %220 : memref<12xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
    %extracted_52 = tensor.extract %9[%c1] : tensor<10xi1>
    %inserted = tensor.insert %cst_0 into %7[%c2] : tensor<10xf16>
    %222 = memref.atomic_rmw minf %cst_4, %alloc_26[%c7] : (f16, memref<12xf16>) -> f16
    %223 = math.tan %7 : tensor<10xf16>
    %224 = vector.broadcast %cst_3 : f32 to vector<6x6xf32>
    %225 = vector.broadcast %cst_2 : f32 to vector<6xf32>
    %dest_53, %accumulated_value_54 = vector.scan <maxf>, %224, %225 {inclusive = false, reduction_dim = 1 : i64} : vector<6x6xf32>, vector<6xf32>
    %226 = math.sqrt %103 : tensor<10xf32>
    %227 = math.exp %12 : tensor<10xf32>
    %generated_55 = tensor.generate %c3, %c13, %c8 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %255 = math.tanh %cst : f32
      %256 = arith.divf %cst, %cst_7 : f32
      %257 = arith.remui %true_51, %extracted_52 : i1
      %258 = scf.while (%arg4 = %109) : (memref<12xf16>) -> memref<12xf16> {
        %259 = arith.divsi %118, %118 : i64
        %260 = arith.ori %212, %false_27 : i1
        %261 = arith.maxsi %extracted_52, %148 : i1
        %262 = vector.create_mask %c0, %rank_47, %rank_47 : vector<10x6x10xi1>
        %263 = affine.apply affine_map<(d0, d1) -> (0)>(%216, %c3)
        %264 = arith.cmpi ne, %false_41, %false : i1
        %cast_58 = tensor.cast %0 : tensor<10xi32> to tensor<?xi32>
        %265 = arith.floordivsi %70, %62 : i32
        scf.condition(%true_45) %109 : memref<12xf16>
      } do {
      ^bb0(%arg4: memref<12xf16>):
        %true_58 = index.bool.constant true
        %259 = arith.andi %c0_i16, %c0_i16 : i16
        bufferization.dealloc_tensor %12 : tensor<10xf32>
        %260 = math.ceil %splat : tensor<10x6x10xf16>
        %splat_59 = tensor.splat %extracted : tensor<10xi1>
        %261 = index.ceildivs %c8, %c2
        %262 = memref.atomic_rmw assign %cst_4, %109[%c4] : (f16, memref<12xf16>) -> f16
        %263 = math.tan %12 : tensor<10xf32>
        %264 = vector.broadcast %c11 : index to vector<12xindex>
        vector.scatter %alloc_13[%c9] [%264], %51, %51 : memref<12xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
        %265 = arith.shrui %62, %70 : i32
        %cst_60 = arith.constant 1.000000e+00 : f32
        %cst_61 = arith.constant 0.000000e+00 : f32
        %266 = vector.transfer_read %16[%c8], %cst_61 : tensor<10xf32>, vector<f32>
        %267 = index.mul %218, %c5
        %268 = arith.cmpf one, %cst_2, %cst_1 : f32
        %269 = index.casts %c0_i16 : i16 to index
        bufferization.dealloc_tensor %1 : tensor<12xi16>
        %270 = arith.minui %true_45, %true : i1
        scf.yield %alloc_22 : memref<12xf16>
      }
      tensor.yield %false : i1
    } : tensor<?x?x?xi1>
    memref.store %212, %50[%c9] : memref<12xi1>
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %228 = vector.transfer_read %collapsed[%200, %c4], %c0_i64 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<60x10xi64>, vector<12xi64>
    %229 = math.log2 %cst_7 : f32
    %alloca_56 = memref.alloca() : memref<10xi32>
    %230 = vector.broadcast %45 : index to vector<12xindex>
    vector.scatter %86[%c6] [%230], %82, %221 : memref<10xf16>, vector<12xindex>, vector<12xi1>, vector<12xf16>
    bufferization.dealloc_tensor %15 : tensor<12xi32>
    %231 = math.tan %12 : tensor<10xf32>
    %232 = math.fma %cst_2, %cst_3, %cst_7 : f32
    %233 = math.exp %collapsed_49 : tensor<60x10xf16>
    %234 = math.rsqrt %6 : tensor<12xf16>
    %235 = memref.load %alloc_16[%c7] : memref<12xf16>
    %236 = index.mul %81, %c15
    %237 = math.cos %cst_7 : f32
    %238 = vector.multi_reduction <mul>, %82, %51 [] : vector<12xi1> to vector<12xi1>
    %239 = vector.maskedload %alloc[%c4], %82, %83 : memref<10xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
    %240 = bufferization.clone %alloc : memref<10xi32> to memref<10xi32>
    %241 = arith.remf %cst_1, %cst_3 : f32
    %242 = vector.maskedload %109[%c10], %82, %220 : memref<12xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
    %243 = math.copysign %6, %6 : tensor<12xf16>
    %244 = math.cttz %15 : tensor<12xi32>
    %245 = index.ceildivu %c15, %c3
    %246 = math.sqrt %cst_4 : f16
    %247 = arith.cmpf ole, %cst_0, %cst_5 : f16
    %248 = arith.maxsi %62, %70 : i32
    %249 = tensor.empty() : tensor<10xi1>
    %250 = linalg.copy ins(%9 : tensor<10xi1>) outs(%249 : tensor<10xi1>) -> tensor<10xi1>
    %251 = tensor.empty() : tensor<10xi32>
    %transposed = linalg.transpose ins(%0 : tensor<10xi32>) outs(%251 : tensor<10xi32>) permutation = [0] 
    %252 = tensor.empty() : tensor<i1>
    %reduced = linalg.reduce ins(%9 : tensor<10xi1>) outs(%252 : tensor<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %255 = index.ceildivu %245, %218
        %256 = bufferization.clone %alloc_26 : memref<12xf16> to memref<12xf16>
        %257 = arith.subi %62, %70 : i32
        %258 = arith.maxsi %false_30, %false_30 : i1
        %259 = scf.index_switch %c9 -> f16 
        case 1 {
          %263 = math.absf %7 : tensor<10xf16>
          %264 = math.cos %12 : tensor<10xf32>
          %265 = math.powf %7, %5 : tensor<10xf16>
          %collapsed_59 = tensor.collapse_shape %4 [[0, 1], [2]] : tensor<10x6x10xf16> into tensor<60x10xf16>
          %266 = arith.shli %false, %false_41 : i1
          %267 = arith.minui %118, %118 : i64
          %268 = vector.insert %in, %71 [8] : i1 into vector<10xi1>
          %269 = index.maxs %c14, %100
          %270 = vector.maskedload %240[%c0], %51, %19 : memref<10xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
          %271 = affine.apply affine_map<(d0) -> ((d0 + 4) * 2)>(%c11)
          %alloc_60 = memref.alloc() : memref<600xi64>
          memref.tensor_store %collapsed_36, %alloc_60 : memref<600xi64>
          %272 = arith.remui %c1828549564_i64, %118 : i64
          %273 = arith.subi %false_41, %true_45 : i1
          %274 = math.ipowi %250, %9 : tensor<10xi1>
          %275 = vector.create_mask %100, %c2, %rank : vector<10x6x10xi1>
          %276 = index.maxs %214, %87
          scf.yield %cst_0 : f16
        }
        default {
          %263 = math.log2 %103 : tensor<10xf32>
          %264 = arith.subi %false_27, %true_45 : i1
          %265 = math.atan2 %5, %5 : tensor<10xf16>
          %266 = vector.broadcast %false : i1 to vector<12xi1>
          %267 = memref.load %86[%c2] : memref<10xf16>
          %268 = arith.shrsi %62, %70 : i32
          %269 = arith.shrui %70, %c1084003347_i32 : i32
          %270 = math.ipowi %62, %c821862697_i32 : i32
          %271 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%rank_47, %c8, %c15, %81)
          %272 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c4, %45, %81, %c0)
          %273 = index.maxs %272, %81
          %alloca_59 = memref.alloca() : memref<10xi64>
          memref.copy %alloc_10, %217 : memref<10xi32> to memref<10xi32>
          %274 = arith.remf %cst_8, %cst_8 : f32
          %alloc_60 = memref.alloc() : memref<10xi32>
          %collapsed_61 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<10x6x10xi64> into tensor<60x10xi64>
          scf.yield %cst_5 : f16
        }
        %260 = math.log2 %cst_7 : f32
        %261 = math.ceil %4 : tensor<10x6x10xf16>
        %262 = math.fpowi %16, %251 : tensor<10xf32>, tensor<10xi32>
        %false_58 = arith.constant false
        linalg.yield %false_58 : i1
      }
    %253 = scf.parallel (%arg1, %arg2) = (%c0, %96) to (%c0, %153) step (%c13, %c14) init (%cst_6) -> f32 {
      %255 = math.exp %7 : tensor<10xf16>
      %256 = vector.broadcast %c1828549564_i64 : i64 to vector<10xi64>
      %257 = math.exp2 %7 : tensor<10xf16>
      %258 = math.floor %5 : tensor<10xf16>
      %259 = math.round %6 : tensor<12xf16>
      %260 = arith.divsi %false_30, %extracted : i1
      %false_58 = index.bool.constant false
      %cst_59 = arith.constant 1.000000e+00 : f16
      %261 = vector.transfer_read %7[%arg1], %cst_59 : tensor<10xf16>, vector<f16>
      %262 = vector.broadcast %cst : f32 to vector<10xf32>
      %263 = vector.fma %262, %262, %262 : vector<10xf32>
      %264 = math.tan %20 : tensor<f16>
      %265 = math.cos %12 : tensor<10xf32>
      %266 = index.mul %200, %c11
      %267 = math.log10 %cst : f32
      %268 = arith.mulf %cst_1, %cst_2 : f32
      %alloc_60 = memref.alloc() : memref<10xf16>
      %269 = arith.minui %false_58, %extracted_52 : i1
      %cst_61 = arith.constant 1.000000e+00 : f32
      scf.reduce(%cst_61)  : f32 {
      ^bb0(%arg3: f32, %arg4: f32):
        %270 = arith.remsi %118, %c1_i64 : i64
        %271 = index.casts %true_45 : i1 to index
        %inserted_62 = tensor.insert %212 into %250[%c2] : tensor<10xi1>
        %272 = math.exp %cst_7 : f32
        %273 = arith.andi %false_30, %extracted : i1
        %274 = vector.load %alloc[%c9] : memref<10xi32>, vector<12xi32>
        %275 = index.add %c12, %c5
        %276 = vector.shuffle %239, %239 [0, 7, 8, 10, 11, 12, 13, 16, 19, 23] : vector<12xi32>, vector<12xi32>
        %cst_63 = arith.constant 1.000000e+00 : f32
        scf.reduce.return %cst_63 : f32
      }
      scf.yield
    }
    %254 = affine.vector_load %alloc_26[%c7] : memref<12xf16>, vector<10xf16>
    affine.vector_store %108, %alloc_14[%c14, %c3, %c13] : memref<10x6x10xi1>, vector<1xi1>
    vector.print %19 : vector<12xi32>
    vector.print %25 : vector<6xi32>
    vector.print %26 : vector<6xi1>
    vector.print %27 : vector<6xi32>
    vector.print %40 : vector<1xi32>
    vector.print %51 : vector<12xi1>
    vector.print %71 : vector<10xi1>
    vector.print %82 : vector<12xi1>
    vector.print %83 : vector<12xi32>
    vector.print %95 : vector<10xi1>
    vector.print %108 : vector<1xi1>
    vector.print %121 : vector<6xi1>
    vector.print %142 : vector<12xi32>
    vector.print %183 : vector<1xi1>
    vector.print %196 : vector<10xf16>
    vector.print %197 : vector<10xf16>
    vector.print %220 : vector<12xf16>
    vector.print %221 : vector<12xf16>
    vector.print %239 : vector<12xi32>
    vector.print %242 : vector<12xf16>
    vector.print %254 : vector<10xf16>
    vector.print %false : i1
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %c1778710078_i64 : i64
    vector.print %cst_1 : f32
    vector.print %cst_2 : f32
    vector.print %true : i1
    vector.print %c821862697_i32 : i32
    vector.print %cst_3 : f32
    vector.print %cst_4 : f16
    vector.print %cst_5 : f16
    vector.print %cst_6 : f32
    vector.print %c1084003347_i32 : i32
    vector.print %cst_7 : f32
    vector.print %cst_8 : f32
    vector.print %c1828549564_i64 : i64
    vector.print %62 : i32
    vector.print %70 : i32
    vector.print %false_27 : i1
    vector.print %extracted : i1
    vector.print %c0_i16 : i16
    vector.print %false_30 : i1
    vector.print %118 : i64
    vector.print %c1_i16 : i16
    vector.print %148 : i1
    vector.print %c0_i16_40 : i16
    vector.print %false_41 : i1
    vector.print %true_45 : i1
    vector.print %true_51 : i1
    vector.print %212 : i1
    vector.print %extracted_52 : i1
    vector.print %c1_i64 : i64
    %alloc_57 = memref.alloc() : memref<10xi1>
    return %alloc_57 : memref<10xi1>
  }
}
