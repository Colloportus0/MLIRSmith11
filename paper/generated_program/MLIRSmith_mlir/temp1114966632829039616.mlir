module {
  func.func nested @func1(%arg0: i1, %arg1: i32) -> tensor<9xf32> {
    %cst = arith.constant 0x4D962DD1 : f32
    %c11071_i16 = arith.constant 11071 : i16
    %c-8557_i16 = arith.constant -8557 : i16
    %c441531226_i64 = arith.constant 441531226 : i64
    %cst_0 = arith.constant 1.26402765E+9 : f32
    %cst_1 = arith.constant 1.29586227E+9 : f32
    %c1455576218_i32 = arith.constant 1455576218 : i32
    %cst_2 = arith.constant 2.283200e+04 : f16
    %cst_3 = arith.constant 0x4D1DEBAB : f32
    %false = arith.constant false
    %cst_4 = arith.constant 1.681600e+04 : f16
    %c331483689_i32 = arith.constant 331483689 : i32
    %true = arith.constant true
    %c724489780_i32 = arith.constant 724489780 : i32
    %cst_5 = arith.constant 1.57727718E+9 : f32
    %c573807638_i64 = arith.constant 573807638 : i64
    %0 = tensor.empty() : tensor<9xf16>
    %1 = tensor.empty() : tensor<7x15xi32>
    %2 = tensor.empty() : tensor<9xi16>
    %3 = tensor.empty() : tensor<9xf32>
    %4 = tensor.empty() : tensor<9xi16>
    %5 = tensor.empty() : tensor<9xf16>
    %6 = tensor.empty() : tensor<9xi1>
    %7 = tensor.empty() : tensor<9xi1>
    %8 = tensor.empty() : tensor<9xi16>
    %9 = tensor.empty() : tensor<7x15xi16>
    %10 = tensor.empty() : tensor<9xi64>
    %11 = tensor.empty() : tensor<9xi16>
    %12 = tensor.empty() : tensor<9xi1>
    %13 = tensor.empty() : tensor<7x15xi1>
    %14 = tensor.empty() : tensor<7x15xi1>
    %15 = tensor.empty() : tensor<9x15xf16>
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
    %alloc = memref.alloc() : memref<9xi64>
    %alloc_6 = memref.alloc() : memref<9x15xf16>
    %alloc_7 = memref.alloc() : memref<9xi32>
    %alloc_8 = memref.alloc() : memref<9xi16>
    %alloc_9 = memref.alloc() : memref<7x15xi32>
    %alloc_10 = memref.alloc() : memref<9x15xi32>
    %alloc_11 = memref.alloc() : memref<9xi1>
    %alloc_12 = memref.alloc() : memref<9xf16>
    %alloc_13 = memref.alloc() : memref<7x15xf32>
    %alloc_14 = memref.alloc() : memref<9x15xi32>
    %alloc_15 = memref.alloc() : memref<9xi32>
    %alloc_16 = memref.alloc() : memref<9x15xf32>
    %alloc_17 = memref.alloc() : memref<9xi16>
    %alloc_18 = memref.alloc() : memref<9xf32>
    %alloc_19 = memref.alloc() : memref<7x15xi1>
    %alloc_20 = memref.alloc() : memref<9xi32>
    %16 = tensor.empty() : tensor<7x15xi32>
    %17 = linalg.copy ins(%1 : tensor<7x15xi32>) outs(%16 : tensor<7x15xi32>) -> tensor<7x15xi32>
    %18 = tensor.empty() : tensor<9xi1>
    %transposed = linalg.transpose ins(%alloc_11 : memref<9xi1>) outs(%18 : tensor<9xi1>) permutation = [0] 
    %19 = tensor.empty() : tensor<f16>
    %reduced = linalg.reduce ins(%0 : tensor<9xf16>) outs(%19 : tensor<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %from_elements_42 = tensor.from_elements %in, %cst_2, %init, %init, %cst_4, %cst_4, %in, %init, %init, %cst_2, %cst_4, %in, %cst_2, %init, %init, %cst_4, %init, %cst_4, %cst_2, %cst_4, %init, %in, %cst_2, %in, %in, %in, %cst_4, %cst_2, %cst_4, %init, %init, %cst_2, %init, %cst_2, %cst_4, %init, %cst_4, %init, %in, %in, %cst_4, %cst_4, %in, %cst_4, %in, %in, %in, %init, %in, %init, %in, %cst_4, %in, %init, %init, %in, %cst_2, %cst_4, %init, %cst_2, %cst_4, %in, %in, %init, %in, %in, %init, %cst_4, %in, %cst_2, %cst_2, %cst_4, %cst_2, %cst_2, %init, %cst_2, %cst_2, %init, %cst_4, %in, %init, %cst_4, %in, %cst_4, %cst_4, %cst_4, %in, %init, %in, %cst_2, %in, %cst_4, %cst_2, %init, %cst_2, %in, %cst_2, %init, %cst_2, %cst_4, %cst_2, %cst_2, %in, %init, %cst_2, %cst_4, %in, %init, %cst_2, %in, %in, %in, %in, %in, %cst_2, %cst_4, %cst_2, %cst_4, %in, %in, %in, %init, %init, %cst_2, %in, %cst_4, %cst_4, %cst_2, %init, %init, %cst_4, %in, %init, %in, %in : tensor<9x15xf16>
        %248 = math.tanh %cst_5 : f32
        %249 = arith.minui %c1455576218_i32, %c724489780_i32 : i32
        %250 = math.atan2 %3, %3 : tensor<9xf32>
        %251 = affine.min affine_map<(d0, d1, d2) -> (d1 - 4)>(%c3, %c5, %c7)
        %252 = arith.andi %c573807638_i64, %c441531226_i64 : i64
        %253 = math.rsqrt %cst_4 : f16
        %254 = affine.min affine_map<(d0, d1) -> ((d1 mod 2) floordiv 32)>(%251, %c4)
        %cst_43 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_43 : f16
      }
    %20 = scf.parallel (%arg2, %arg3) = (%c6, %c8) to (%c10, %c12) step (%c11, %c7) init (%alloc_12) -> memref<9xf16> {
      scf.index_switch %arg3 
      case 1 {
        memref.assume_alignment %alloc_13, 1 : memref<7x15xf32>
        %261 = vector.broadcast %cst_2 : f16 to vector<9x15xf16>
        vector.print %261 : vector<9x15xf16>
        %262 = math.atan2 %cst_0, %cst_5 : f32
        %expanded_43 = tensor.expand_shape %17 [[0], [1, 2]] : tensor<7x15xi32> into tensor<7x15x1xi32>
        %263 = vector.multi_reduction <add>, %261, %261 [] : vector<9x15xf16> to vector<9x15xf16>
        %264 = vector.load %alloc_14[%c1, %c4] : memref<9x15xi32>, vector<9xi32>
        %265 = arith.ceildivsi %c573807638_i64, %c573807638_i64 : i64
        %266 = math.tanh %0 : tensor<9xf16>
        %267 = arith.andi %c724489780_i32, %c1455576218_i32 : i32
        %268 = bufferization.clone %alloc_17 : memref<9xi16> to memref<9xi16>
        %269 = vector.matrix_multiply %264, %264 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi32>, vector<9xi32>) -> vector<1xi32>
        bufferization.dealloc_tensor %9 : tensor<7x15xi16>
        %270 = math.atan2 %cst_4, %cst_4 : f16
        %271 = arith.andi %c573807638_i64, %c573807638_i64 : i64
        %272 = index.sub %c9, %c14
        %273 = math.round %3 : tensor<9xf32>
        scf.yield
      }
      case 2 {
        %261 = arith.floordivsi %c724489780_i32, %c724489780_i32 : i32
        %262 = vector.broadcast %cst_5 : f32 to vector<9xf32>
        %263 = vector.flat_transpose %262 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
        %264 = vector.broadcast %cst_1 : f32 to vector<15xf32>
        %265 = vector.broadcast %false : i1 to vector<15xi1>
        %266 = vector.maskedload %alloc_16[%c8, %c13], %265, %264 : memref<9x15xf32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
        %267 = math.expm1 %cst : f32
        %268 = arith.negf %cst : f32
        %269 = index.divs %arg2, %c13
        %270 = vector.splat %c13 : vector<7x15xindex>
        %from_elements_43 = tensor.from_elements %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64 : tensor<9x15xi64>
        %271 = affine.min affine_map<(d0, d1, d2) -> (d2 * 2, d0 ceildiv 16 - (d0 ceildiv 16 + 64), d0 ceildiv 16)>(%c14, %c8, %c14)
        %272 = vector.insert %true, %265 [7] : i1 into vector<15xi1>
        %273 = vector.bitcast %264 : vector<15xf32> to vector<15xf32>
        %274 = vector.extract_strided_slice %265 {offsets = [7], sizes = [5], strides = [1]} : vector<15xi1> to vector<5xi1>
        %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %263, %263, %cst_3 : vector<9xf32>, vector<9xf32> into f32
        %276 = vector.broadcast %c-8557_i16 : i16 to vector<15x15x2xi16>
        %277 = vector.broadcast %c-8557_i16 : i16 to vector<15x2xi16>
        %dest, %accumulated_value = vector.scan <add>, %276, %277 {inclusive = true, reduction_dim = 0 : i64} : vector<15x15x2xi16>, vector<15x2xi16>
        %alloc_44 = memref.alloc() : memref<7x15xf32>
        %278 = math.ipowi %10, %10 : tensor<9xi64>
        scf.yield
      }
      default {
        %261 = arith.divui %c-8557_i16, %c-8557_i16 : i16
        %expanded_43 = tensor.expand_shape %5 [[0, 1]] : tensor<9xf16> into tensor<9x1xf16>
        %262 = arith.minui %c1455576218_i32, %c1455576218_i32 : i32
        %263 = index.mul %arg2, %c9
        %264 = arith.remui %false, %true : i1
        %265 = math.log %expanded_43 : tensor<9x1xf16>
        %266 = vector.broadcast %c331483689_i32 : i32 to vector<9xi32>
        %267 = vector.transfer_write %266, %17[%c12, %c13] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi32>, tensor<7x15xi32>
        memref.copy %alloc_17, %alloc_8 : memref<9xi16> to memref<9xi16>
        %268 = math.exp2 %15 : tensor<9x15xf16>
        %269 = bufferization.clone %alloc_12 : memref<9xf16> to memref<9xf16>
        %270 = vector.broadcast %c1455576218_i32 : i32 to vector<i32>
        %271 = vector.transfer_write %270, %1[%c8, %c5] : vector<i32>, tensor<7x15xi32>
        %272 = index.ceildivs %c3, %c8
        %273 = arith.remsi %c724489780_i32, %c1455576218_i32 : i32
        %274 = index.ceildivu %263, %c0
        %275 = arith.addf %cst_3, %cst_5 : f32
        %276 = arith.remui %c-8557_i16, %c-8557_i16 : i16
      }
      %248 = vector.broadcast %false : i1 to vector<1xi1>
      %249 = vector.insert %false, %248 [0] : i1 into vector<1xi1>
      %250 = math.round %19 : tensor<f16>
      %generated = tensor.generate %c13, %c4 {
      ^bb0(%arg4: index, %arg5: index):
        %261 = arith.remui %c11071_i16, %c-8557_i16 : i16
        %262 = math.tan %cst_2 : f16
        %263 = vector.insert %false, %248 [0] : i1 into vector<1xi1>
        %264 = vector.broadcast %c1455576218_i32 : i32 to vector<9xi32>
        tensor.yield %c441531226_i64 : i64
      } : tensor<?x?xi64>
      affine.for %arg4 = 0 to 91 {
      }
      %251 = math.ctpop %12 : tensor<9xi1>
      %252 = vector.broadcast %cst_3 : f32 to vector<9xf32>
      %253 = arith.minui %c11071_i16, %c11071_i16 : i16
      %254 = math.expm1 %cst : f32
      %255 = bufferization.to_memref %1 : memref<7x15xi32>
      %256 = index.mul %c3, %arg2
      %257 = arith.andi %c11071_i16, %c-8557_i16 : i16
      scf.index_switch %arg2 
      case 1 {
        %cst_43 = arith.constant 1.242400e+04 : f16
        %261 = math.fma %3, %3, %3 : tensor<9xf32>
        %inserted_44 = tensor.insert %false into %14[%c5, %c11] : tensor<7x15xi1>
        %262 = arith.maxf %cst_3, %cst : f32
        %263 = vector.load %alloc_12[%c3] : memref<9xf16>, vector<7x15xf16>
        %264 = math.round %cst_3 : f32
        %265 = arith.maxsi %c-8557_i16, %c11071_i16 : i16
        %266 = arith.remui %false, %true : i1
        %267 = vector.broadcast %cst : f32 to vector<7x15xf32>
        %268 = vector.fma %267, %267, %267 : vector<7x15xf32>
        %269 = vector.splat %cst_2 : vector<9xf16>
        %270 = vector.transpose %263, [0, 1] : vector<7x15xf16> to vector<7x15xf16>
        %false_45 = index.bool.constant false
        %extracted = tensor.extract %17[%c4, %c2] : tensor<7x15xi32>
        %271 = vector.broadcast %cst_3 : f32 to vector<15xf32>
        %dest, %accumulated_value = vector.scan <maxf>, %267, %271 {inclusive = false, reduction_dim = 0 : i64} : vector<7x15xf32>, vector<15xf32>
        %272 = math.tan %0 : tensor<9xf16>
        %273 = arith.cmpi ule, %c-8557_i16, %c-8557_i16 : i16
        scf.yield
      }
      case 2 {
        %261 = vector.insert %false, %248 [0] : i1 into vector<1xi1>
        %262 = arith.floordivsi %c1455576218_i32, %c1455576218_i32 : i32
        %263 = arith.cmpi eq, %c724489780_i32, %c724489780_i32 : i32
        %264 = index.ceildivs %c10, %c5
        %265 = math.absf %15 : tensor<9x15xf16>
        %266 = math.atan2 %cst_0, %cst_1 : f32
        %267 = vector.flat_transpose %252 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
        %268 = index.mul %arg3, %c6
        %269 = math.tanh %19 : tensor<f16>
        %270 = math.round %0 : tensor<9xf16>
        %271 = affine.load %alloc_15[%c2] : memref<9xi32>
        %272 = arith.minui %c-8557_i16, %c-8557_i16 : i16
        %273 = vector.transpose %248, [0] : vector<1xi1> to vector<1xi1>
        %splat_43 = tensor.splat %271 : tensor<9x15xi32>
        %274 = arith.cmpi slt, %c331483689_i32, %c1455576218_i32 : i32
        %275 = index.castu %c10 : index to i32
        scf.yield
      }
      case 3 {
        %261 = math.absi %7 : tensor<9xi1>
        %262 = index.mul %arg3, %c1
        %alloc_43 = memref.alloc() : memref<15x9xi16>
        %263 = tensor.empty() : tensor<7x9xi16>
        %264 = linalg.matmul ins(%9, %alloc_43 : tensor<7x15xi16>, memref<15x9xi16>) outs(%263 : tensor<7x9xi16>) -> tensor<7x9xi16>
        %265 = vector.broadcast %true : i1 to vector<9x15xi1>
        %from_elements_44 = tensor.from_elements %cst_1, %cst_1, %cst_0, %cst, %cst_5, %cst_3, %cst_1, %cst_1, %cst : tensor<9xf32>
        %266 = math.floor %15 : tensor<9x15xf16>
        %267 = arith.remf %cst_5, %cst_0 : f32
        memref.assume_alignment %alloc_20, 4 : memref<9xi32>
        %268 = index.add %c5, %256
        %269 = vector.flat_transpose %252 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
        %270 = index.sub %c8, %c11
        %rank = tensor.rank %7 : tensor<9xi1>
        %271 = bufferization.clone %alloc_17 : memref<9xi16> to memref<9xi16>
        %272 = vector.load %alloc_7[%c5] : memref<9xi32>, vector<9xi32>
        %273 = arith.addi %c-8557_i16, %c-8557_i16 : i16
        %inserted_45 = tensor.insert %c441531226_i64 into %generated[%c0, %c0] : tensor<?x?xi64>
        scf.yield
      }
      case 4 {
        %261 = math.ipowi %9, %9 : tensor<7x15xi16>
        %262 = vector.flat_transpose %252 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
        %263 = math.log %reduced : tensor<f16>
        %264 = index.mul %c4, %c12
        %265 = vector.extract_strided_slice %248 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %266 = math.log %cst : f32
        %267 = math.ctpop %16 : tensor<7x15xi32>
        %268 = arith.negf %cst : f32
        affine.store %cst_1, %alloc_16[%c15, %c9] : memref<9x15xf32>
        %269 = vector.reduction <minf>, %252 : vector<9xf32> into f32
        %270 = vector.multi_reduction <maxsi>, %265, %true [0] : vector<1xi1> to i1
        %271 = vector.load %alloc_15[%c0] : memref<9xi32>, vector<9xi32>
        %272 = math.ceil %cst_2 : f16
        %273 = arith.xori %c1455576218_i32, %c724489780_i32 : i32
        %274 = math.expm1 %3 : tensor<9xf32>
        %275 = math.log10 %5 : tensor<9xf16>
        scf.yield
      }
      default {
        %261 = vector.insertelement %cst_0, %252[%c9 : index] : vector<9xf32>
        %262 = affine.max affine_map<(d0, d1) -> (((d1 - (d1 - 16)) ceildiv 8 + 2) * 4, d0 - 8, (d0 - 8) floordiv 64, d0 - 2)>(%c0, %c0)
        %263 = math.exp %reduced : tensor<f16>
        %264 = arith.remsi %c-8557_i16, %c-8557_i16 : i16
        memref.tensor_store %13, %alloc_19 : memref<7x15xi1>
        %265 = math.tanh %3 : tensor<9xf32>
        %266 = arith.addf %cst_5, %cst_0 : f32
        %267 = math.log2 %15 : tensor<9x15xf16>
        %from_elements_43 = tensor.from_elements %cst, %cst_5, %cst, %cst_3, %cst, %cst_5, %cst_3, %cst_3, %cst_0 : tensor<9xf32>
        %268 = index.castu %c1455576218_i32 : i32 to index
        %269 = vector.broadcast %true : i1 to vector<i1>
        %270 = vector.transfer_write %269, %7[%c2] : vector<i1>, tensor<9xi1>
        %271 = math.absi %c1455576218_i32 : i32
        %272 = index.divs %c0, %arg3
        %273 = math.log2 %reduced : tensor<f16>
        %274 = vector.broadcast %c1455576218_i32 : i32 to vector<i32>
        vector.transfer_write %274, %255[%c14, %c15] : vector<i32>, memref<7x15xi32>
        %275 = bufferization.to_memref %18 : memref<9xi1>
      }
      %258 = math.ipowi %6, %7 : tensor<9xi1>
      %259 = scf.execute_region -> f32 {
        %261 = math.floor %cst_3 : f32
        %262 = index.maxu %c5, %c3
        %263 = arith.muli %c331483689_i32, %c1455576218_i32 : i32
        %264 = arith.divsi %c724489780_i32, %c724489780_i32 : i32
        %265 = tensor.empty() : tensor<9xf16>
        %266 = math.round %3 : tensor<9xf32>
        %expanded_43 = tensor.expand_shape %8 [[0, 1]] : tensor<9xi16> into tensor<9x1xi16>
        %267 = arith.addf %cst_3, %cst : f32
        %268 = math.cttz %4 : tensor<9xi16>
        %from_elements_44 = tensor.from_elements %cst_0, %cst_0, %cst_1, %cst_5, %cst_1, %cst_5, %cst_1, %cst, %cst_0, %cst_1, %cst_1, %cst_5, %cst_5, %cst_1, %cst, %cst_0, %cst_5, %cst_0, %cst_1, %cst, %cst_5, %cst, %cst_5, %cst_1, %cst_5, %cst_5, %cst, %cst, %cst, %cst_0, %cst_3, %cst_3, %cst_1, %cst_0, %cst_3, %cst_3, %cst_3, %cst, %cst_0, %cst_1, %cst, %cst_3, %cst_0, %cst, %cst_5, %cst_0, %cst_1, %cst_5, %cst_5, %cst_3, %cst_5, %cst, %cst_1, %cst_0, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_5, %cst_1, %cst_0, %cst_0, %cst_5, %cst_3, %cst_3, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_3, %cst_3, %cst_0, %cst_5, %cst_3, %cst_5, %cst_0, %cst, %cst_1, %cst_0, %cst_0, %cst, %cst_0, %cst_3, %cst_5, %cst, %cst_1, %cst_3, %cst_3, %cst_0, %cst_0, %cst_3, %cst, %cst_0, %cst_0, %cst, %cst_1, %cst_3, %cst_3, %cst, %cst_5, %cst_3, %cst, %cst : tensor<7x15xf32>
        %269 = vector.broadcast %c11071_i16 : i16 to vector<7xi16>
        %270 = vector.broadcast %false : i1 to vector<7xi1>
        %271 = vector.maskedload %alloc_17[%c7], %270, %269 : memref<9xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %272 = index.maxs %c15, %262
        %273 = vector.matrix_multiply %270, %270 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
        %inserted_45 = tensor.insert %cst_1 into %3[%c0] : tensor<9xf32>
        %274 = math.powf %5, %0 : tensor<9xf16>
        %275 = math.log2 %0 : tensor<9xf16>
        scf.yield %cst_1 : f32
      }
      %260 = math.sqrt %15 : tensor<9x15xf16>
      %alloc_42 = memref.alloc() : memref<9xf16>
      scf.reduce(%alloc_42)  : memref<9xf16> {
      ^bb0(%arg4: memref<9xf16>, %arg5: memref<9xf16>):
        %261 = index.maxu %arg3, %c9
        %262 = index.castu %261 : index to i32
        %263 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * 2)>(%c15, %arg2, %c2, %c12)
        %rank = tensor.rank %0 : tensor<9xf16>
        bufferization.dealloc_tensor %2 : tensor<9xi16>
        %264 = arith.divui %c11071_i16, %c11071_i16 : i16
        %expanded_43 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<9x15xf16> into tensor<9x15x1xf16>
        %265 = math.fpowi %cst_0, %c1455576218_i32 : f32, i32
        %alloc_44 = memref.alloc() : memref<9xf16>
        scf.reduce.return %alloc_44 : memref<9xf16>
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_15[%c5] : memref<9xi32>, vector<15xi32>
    affine.vector_store %21, %alloc_10[%c13, %c4] : memref<9x15xi32>, vector<15xi32>
    %22 = tensor.empty() : tensor<9xf16>
    %23 = tensor.empty() : tensor<f16>
    %24 = linalg.dot ins(%5, %22 : tensor<9xf16>, tensor<9xf16>) outs(%23 : tensor<f16>) -> tensor<f16>
    %25 = vector.broadcast %c11071_i16 : i16 to vector<i16>
    %26 = vector.transfer_write %25, %2[%c5] : vector<i16>, tensor<9xi16>
    %alloc_21 = memref.alloc() : memref<9x15xi1>
    scf.index_switch %c0 
    case 1 {
      %248 = index.casts %c0 : index to i32
      %249 = index.divs %c11, %c12
      scf.execute_region {
        %262 = math.atan2 %cst_4, %cst_2 : f16
        %263 = vector.broadcast %cst_0 : f32 to vector<9xf32>
        %264 = vector.fma %263, %263, %263 : vector<9xf32>
        %rank = tensor.rank %16 : tensor<7x15xi32>
        %265 = index.add %c8, %c10
        %266 = vector.load %alloc_20[%c7] : memref<9xi32>, vector<9xi32>
        %267 = memref.load %alloc_10[%c7, %c4] : memref<9x15xi32>
        %268 = arith.xori %c1455576218_i32, %c1455576218_i32 : i32
        %269 = math.absi %true : i1
        %270 = arith.divf %cst_0, %cst_1 : f32
        %271 = vector.splat %rank : vector<7x15xindex>
        %272 = math.rsqrt %24 : tensor<f16>
        %273 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 + d0 * 8 + 2)>(%c12, %c5, %c8, %c9)
        %274 = math.ceil %cst_2 : f16
        %275 = math.fma %24, %reduced, %23 : tensor<f16>
        affine.store %c1455576218_i32, %alloc_14[%c5, %c11] : memref<9x15xi32>
        %276 = affine.load %alloc_20[%c14] : memref<9xi32>
        scf.yield
      }
      %250 = affine.apply affine_map<(d0, d1, d2) -> (d2 * 4 + d0 floordiv 16 - (d0 + 1))>(%c2, %c1, %c11)
      %251 = vector.broadcast %cst_0 : f32 to vector<9xf32>
      %252 = vector.fma %251, %251, %251 : vector<9xf32>
      %253 = vector.load %alloc_15[%c6] : memref<9xi32>, vector<9x15xi32>
      %254 = math.log10 %23 : tensor<f16>
      %255 = index.divs %c2, %c4
      %256 = affine.apply affine_map<(d0, d1, d2) -> ((d0 floordiv 16) mod 8)>(%250, %c6, %c1)
      %257 = index.mul %c0, %c9
      %from_elements_42 = tensor.from_elements %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64 : tensor<7x15xi64>
      %258 = index.casts %c5 : index to i32
      scf.index_switch %c10 
      case 1 {
        %262 = arith.negf %cst_2 : f16
        %263 = index.maxu %c6, %c1
        %264 = math.sqrt %cst_2 : f16
        memref.assume_alignment %alloc_10, 16 : memref<9x15xi32>
        %265 = arith.cmpi ult, %false, %false : i1
        %from_elements_43 = tensor.from_elements %cst_3, %cst_0, %cst_5, %cst_5, %cst_0, %cst, %cst, %cst_1, %cst_0, %cst_5, %cst_5, %cst_3, %cst_5, %cst_3, %cst_0, %cst_0, %cst_3, %cst_1, %cst_1, %cst_3, %cst_0, %cst_1, %cst_5, %cst_1, %cst, %cst_3, %cst_1, %cst, %cst, %cst_1, %cst_5, %cst_1, %cst_3, %cst_0, %cst_3, %cst_3, %cst, %cst_1, %cst_0, %cst_1, %cst_3, %cst_1, %cst_0, %cst_5, %cst, %cst_0, %cst_1, %cst_3, %cst_1, %cst_1, %cst_5, %cst_1, %cst_3, %cst_3, %cst, %cst_0, %cst_0, %cst, %cst_1, %cst_3, %cst, %cst_5, %cst_5, %cst_5, %cst_3, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst_3, %cst_1, %cst, %cst_5, %cst_3, %cst_0, %cst_3, %cst_0, %cst_1, %cst_0, %cst_3, %cst_3, %cst_0, %cst_5, %cst, %cst_3, %cst_3, %cst, %cst_5, %cst_1, %cst_1, %cst_1, %cst_3, %cst_5, %cst, %cst_5, %cst_0, %cst_1, %cst_3, %cst_3, %cst_3, %cst_3, %cst_5, %cst, %cst_1, %cst, %cst_1, %cst_3, %cst_3, %cst_0, %cst, %cst_3, %cst_0, %cst_0, %cst_3, %cst_3, %cst_0, %cst_3, %cst_5, %cst, %cst_0, %cst_1, %cst_5, %cst_5, %cst_5, %cst, %cst_0, %cst_5, %cst, %cst_5, %cst_5, %cst_3, %cst_3, %cst_0, %cst_0 : tensor<9x15xf32>
        %alloc_44 = memref.alloc() : memref<9xi16>
        %266 = index.casts %c12 : index to i32
        %267 = index.mul %c1, %c15
        %false_45 = index.bool.constant false
        %268 = math.tanh %reduced : tensor<f16>
        memref.assume_alignment %alloc_15, 8 : memref<9xi32>
        %269 = math.log2 %0 : tensor<9xf16>
        %270 = vector.broadcast %c441531226_i64 : i64 to vector<2xi64>
        %271 = vector.broadcast %false_45 : i1 to vector<2xi1>
        %272 = vector.maskedload %alloc[%c5], %271, %270 : memref<9xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %273 = index.ceildivs %c13, %c2
        %274 = affine.min affine_map<(d0, d1, d2) -> (d1 - 112, d1 - 128, -(d1 - 128) - d2 - 16, -(d1 - 128) - d2)>(%267, %c7, %c0)
        scf.yield
      }
      case 2 {
        %262 = index.divs %c14, %c5
        %263 = math.log %3 : tensor<9xf32>
        %264 = arith.muli %c1455576218_i32, %c331483689_i32 : i32
        %265 = math.copysign %0, %5 : tensor<9xf16>
        %266 = vector.reduction <mul>, %251 : vector<9xf32> into f32
        %267 = arith.maxsi %c724489780_i32, %c724489780_i32 : i32
        %268 = index.castu %true : i1 to index
        %269 = arith.remui %false, %false : i1
        %270 = math.log2 %reduced : tensor<f16>
        %271 = math.absf %3 : tensor<9xf32>
        %272 = math.absi %12 : tensor<9xi1>
        %273 = affine.min affine_map<(d0, d1, d2, d3) -> (d1)>(%c3, %c1, %c7, %c1)
        affine.store %c-8557_i16, %alloc_8[%c14] : memref<9xi16>
        %274 = arith.minsi %c441531226_i64, %c573807638_i64 : i64
        %275 = affine.min affine_map<(d0, d1, d2) -> (-(d0 + d1 - 32), d1)>(%c5, %c0, %249)
        %276 = arith.negf %cst_4 : f16
        scf.yield
      }
      default {
        %262 = arith.minui %false, %false : i1
        %263 = memref.atomic_rmw andi %c1455576218_i32, %alloc_10[%c1, %c12] : (i32, memref<9x15xi32>) -> i32
        %264 = index.castu %c0 : index to i32
        %c-25480_i16 = arith.constant -25480 : i16
        %265 = arith.remf %cst_4, %cst_4 : f16
        %266 = math.absi %c441531226_i64 : i64
        %267 = arith.minui %false, %false : i1
        %268 = index.ceildivs %c9, %257
        %from_elements_43 = tensor.from_elements %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4 : tensor<9xf16>
        %269 = bufferization.clone %alloc_16 : memref<9x15xf32> to memref<9x15xf32>
        %alloc_44 = memref.alloc() : memref<9xi32>
        %270 = vector.broadcast %cst_0 : f32 to vector<7xf32>
        %271 = vector.broadcast %false : i1 to vector<7xi1>
        %272 = vector.maskedload %alloc_16[%c5, %c11], %271, %270 : memref<9x15xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
        memref.assume_alignment %alloc, 1 : memref<9xi64>
        %273 = math.absf %cst_0 : f32
        bufferization.dealloc_tensor %4 : tensor<9xi16>
        memref.tensor_store %0, %alloc_12 : memref<9xf16>
      }
      %259 = arith.subi %c573807638_i64, %c441531226_i64 : i64
      %260 = index.mul %c14, %250
      %261 = arith.maxsi %c-8557_i16, %c11071_i16 : i16
      scf.yield
    }
    case 2 {
      memref.assume_alignment %alloc_20, 4 : memref<9xi32>
      %248 = arith.maxf %cst_3, %cst_1 : f32
      %alloc_42 = memref.alloc() : memref<9xi16>
      %249 = index.mul %c13, %c2
      %250 = index.ceildivs %c6, %c0
      %251 = arith.cmpi ult, %false, %true : i1
      %252 = arith.divsi %c441531226_i64, %c573807638_i64 : i64
      %253 = arith.floordivsi %true, %false : i1
      %254 = vector.bitcast %21 : vector<15xi32> to vector<15xi32>
      %255 = arith.ceildivsi %true, %false : i1
      %256 = vector.create_mask %c13 : vector<9xi1>
      scf.if %true {
        memref.assume_alignment %alloc_13, 8 : memref<7x15xf32>
        %260 = vector.broadcast %true : i1 to vector<i1>
        %261 = vector.transfer_write %260, %6[%c1] : vector<i1>, tensor<9xi1>
        %cast = tensor.cast %15 : tensor<9x15xf16> to tensor<?x?xf16>
        %262 = index.maxs %c5, %c6
        %263 = arith.addi %c724489780_i32, %c331483689_i32 : i32
        %264 = index.castu %c441531226_i64 : i64 to index
        %265 = bufferization.clone %alloc_11 : memref<9xi1> to memref<9xi1>
        %266 = arith.remf %cst_5, %cst_1 : f32
      } else {
        %260 = arith.maxsi %c1455576218_i32, %c1455576218_i32 : i32
        %261 = math.round %cst_3 : f32
        %262 = math.sqrt %22 : tensor<9xf16>
        %263 = index.maxu %c12, %c9
        %264 = vector.matrix_multiply %254, %254 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
        %265 = arith.ceildivsi %true, %true : i1
        %266 = math.log10 %3 : tensor<9xf32>
        %267 = vector.broadcast %cst_4 : f16 to vector<9xf16>
        %268 = vector.maskedload %alloc_12[%c6], %256, %267 : memref<9xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
      }
      %from_elements_43 = tensor.from_elements %true, %false, %true, %false, %true, %true, %true, %false, %true, %false, %true, %true, %true, %true, %true, %true, %false, %true, %true, %true, %false, %true, %true, %true, %false, %true, %true, %false, %true, %true, %false, %true, %true, %false, %true, %true, %false, %false, %false, %false, %true, %true, %false, %true, %false, %false, %true, %false, %true, %true, %false, %false, %false, %true, %false, %false, %true, %false, %false, %true, %true, %false, %true, %true, %true, %false, %false, %true, %true, %true, %false, %true, %true, %true, %false, %false, %false, %true, %false, %true, %true, %true, %true, %false, %true, %true, %false, %true, %false, %true, %true, %false, %true, %true, %false, %false, %true, %false, %false, %false, %true, %true, %true, %false, %true : tensor<7x15xi1>
      %257 = arith.andi %c11071_i16, %c11071_i16 : i16
      %258 = arith.xori %c1455576218_i32, %c1455576218_i32 : i32
      %259 = tensor.empty() : tensor<7x15xi16>
      %mapped_44 = linalg.map ins(%9, %9 : tensor<7x15xi16>, tensor<7x15xi16>) outs(%259 : tensor<7x15xi16>)
        (%in: i16, %in_45: i16) {
          %260 = arith.shrui %false, %false : i1
          %261 = math.log10 %15 : tensor<9x15xf16>
          %262 = index.add %c11, %c2
          %263 = index.add %c10, %c6
          %264 = affine.apply affine_map<(d0) -> (((d0 floordiv 16) * 2) floordiv 4 + 16)>(%c12)
          %265 = vector.matrix_multiply %254, %21 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
          %266 = memref.load %alloc_9[%c0, %c11] : memref<7x15xi32>
          %267 = math.round %15 : tensor<9x15xf16>
          %268 = index.floordivs %c2, %c15
          %269 = memref.load %alloc[%c1] : memref<9xi64>
          vector.print %254 : vector<15xi32>
          %270 = bufferization.clone %alloc_9 : memref<7x15xi32> to memref<7x15xi32>
          %271 = math.cttz %in_45 : i16
          %272 = arith.shli %c-8557_i16, %in : i16
          %273 = math.expm1 %24 : tensor<f16>
          %274 = math.rsqrt %5 : tensor<9xf16>
          %true_46 = arith.constant true
          bufferization.dealloc_tensor %5 : tensor<9xf16>
          %275 = arith.addf %cst_0, %cst : f32
          %276 = math.rsqrt %22 : tensor<9xf16>
          %expanded_47 = tensor.expand_shape %11 [[0, 1]] : tensor<9xi16> into tensor<9x1xi16>
          %277 = math.expm1 %0 : tensor<9xf16>
          %278 = vector.matrix_multiply %21, %21 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
          %279 = index.sub %263, %268
          %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %265, %278, %c724489780_i32 : vector<1xi32>, vector<1xi32> into i32
          %281 = vector.create_mask %c10, %c2 : vector<7x15xi1>
          %282 = arith.maxui %in_45, %c-8557_i16 : i16
          %283 = arith.maxsi %in_45, %in : i16
          %284 = vector.broadcast %cst_4 : f16 to vector<f16>
          %285 = vector.transfer_write %284, %22[%263] : vector<f16>, tensor<9xf16>
          %286 = index.divs %c15, %c14
          %287 = vector.create_mask %264 : vector<9xi1>
          %288 = math.expm1 %cst : f32
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      scf.yield
    }
    default {
      %248 = math.cos %3 : tensor<9xf32>
      %249 = arith.maxsi %c1455576218_i32, %c331483689_i32 : i32
      %250 = math.copysign %22, %5 : tensor<9xf16>
      %251 = math.ipowi %7, %6 : tensor<9xi1>
      %252 = math.fpowi %cst_1, %c1455576218_i32 : f32, i32
      %253 = vector.multi_reduction <minui>, %21, %c1455576218_i32 [0] : vector<15xi32> to i32
      %254 = arith.ceildivsi %c573807638_i64, %c441531226_i64 : i64
      %255 = arith.andi %false, %false : i1
      memref.assume_alignment %alloc_7, 16 : memref<9xi32>
      %cst_42 = arith.constant 2.768000e+04 : f16
      %256 = arith.shli %c573807638_i64, %c441531226_i64 : i64
      %257 = math.tanh %3 : tensor<9xf32>
      %258 = math.log2 %0 : tensor<9xf16>
      %259 = vector.flat_transpose %21 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
      %260 = math.cttz %12 : tensor<9xi1>
      %261 = math.absf %cst_0 : f32
    }
    %27 = affine.for %arg2 = 0 to 47 iter_args(%arg3 = %15) -> (tensor<9x15xf16>) {
      affine.yield %15 : tensor<9x15xf16>
    }
    %28 = math.log10 %0 : tensor<9xf16>
    %29 = index.ceildivu %c3, %c10
    %30 = scf.index_switch %c0 -> index 
    case 1 {
      %248 = memref.load %alloc_8[%c8] : memref<9xi16>
      %249 = arith.maxui %c724489780_i32, %c331483689_i32 : i32
      %250 = vector.broadcast %cst_2 : f16 to vector<f16>
      %251 = vector.transfer_write %250, %5[%29] : vector<f16>, tensor<9xf16>
      %inserted_42 = tensor.insert %c-8557_i16 into %11[%c6] : tensor<9xi16>
      %252 = vector.bitcast %21 : vector<15xi32> to vector<15xi32>
      vector.print %25 : vector<i16>
      %253 = vector.bitcast %252 : vector<15xi32> to vector<15xi32>
      %254 = vector.broadcast %cst_1 : f32 to vector<9xf32>
      %255 = vector.broadcast %false : i1 to vector<9xi1>
      %256 = vector.maskedload %alloc_13[%c0, %c2], %255, %254 : memref<7x15xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
      %257 = arith.remf %cst_1, %cst_0 : f32
      %258 = index.ceildivs %c0, %c14
      %259 = math.log1p %0 : tensor<9xf16>
      %from_elements_43 = tensor.from_elements %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16 : tensor<9xi16>
      %260 = vector.matrix_multiply %256, %256 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf32>, vector<9xf32>) -> vector<1xf32>
      %261 = scf.if %false -> (f16) {
        %263 = arith.remui %c1455576218_i32, %c331483689_i32 : i32
        %264 = index.sub %c8, %c7
        %265 = arith.minui %true, %false : i1
        %266 = math.ipowi %c1455576218_i32, %c1455576218_i32 : i32
        %267 = math.round %0 : tensor<9xf16>
        %alloca = memref.alloca() : memref<9xi16>
        %268 = math.round %cst_5 : f32
        %269 = math.ctpop %4 : tensor<9xi16>
        scf.yield %cst_4 : f16
      } else {
        %263 = vector.broadcast %cst_2 : f16 to vector<7x15xf16>
        %264 = vector.broadcast %cst_0 : f32 to vector<9xf32>
        %265 = vector.fma %264, %256, %264 : vector<9xf32>
        %266 = vector.bitcast %263 : vector<7x15xf16> to vector<7x15xi16>
        %267 = vector.broadcast %cst_4 : f16 to vector<9xf16>
        %268 = math.log10 %23 : tensor<f16>
        %269 = arith.minf %cst_0, %cst_5 : f32
        %inserted_46 = tensor.insert %c573807638_i64 into %10[%c5] : tensor<9xi64>
        %270 = arith.minui %c573807638_i64, %c573807638_i64 : i64
        scf.yield %cst_2 : f16
      }
      %262 = tensor.empty() : tensor<9xf16>
      %mapped_44 = linalg.map ins(%5 : tensor<9xf16>) outs(%262 : tensor<9xf16>)
        (%in: f16) {
          %263 = math.roundeven %cst_5 : f32
          %264 = index.casts %c0 : index to i32
          %265 = arith.divui %true, %false : i1
          %266 = arith.muli %c-8557_i16, %c-8557_i16 : i16
          %267 = arith.shrsi %false, %false : i1
          %268 = arith.remui %c441531226_i64, %c573807638_i64 : i64
          %269 = tensor.empty(%c1) : tensor<?xi16>
          %270 = index.ceildivs %c5, %258
          %271 = index.ceildivs %c6, %c13
          %272 = arith.negf %cst : f32
          %273 = math.ctpop %c11071_i16 : i16
          %from_elements_46 = tensor.from_elements %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64 : tensor<9xi64>
          %274 = arith.shrui %c441531226_i64, %c441531226_i64 : i64
          %275 = math.log2 %cst_3 : f32
          %276 = vector.broadcast %false : i1 to vector<i1>
          vector.transfer_write %276, %alloc_11[%270] : vector<i1>, memref<9xi1>
          %alloca = memref.alloca() : memref<9xf32>
          %277 = vector.flat_transpose %255 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
          %278 = arith.floordivsi %c11071_i16, %c11071_i16 : i16
          %279 = index.sub %c13, %271
          bufferization.dealloc_tensor %reduced : tensor<f16>
          %280 = math.expm1 %19 : tensor<f16>
          %281 = math.tanh %cst_4 : f16
          %282 = arith.subi %c-8557_i16, %c11071_i16 : i16
          %283 = vector.broadcast %c0 : index to vector<15xindex>
          %284 = vector.broadcast %true : i1 to vector<15xi1>
          %285 = vector.broadcast %c-8557_i16 : i16 to vector<15xi16>
          vector.scatter %alloc_17[%c5] [%283], %284, %285 : memref<9xi16>, vector<15xindex>, vector<15xi1>, vector<15xi16>
          %286 = arith.ori %c-8557_i16, %c11071_i16 : i16
          %287 = math.ipowi %7, %12 : tensor<9xi1>
          %288 = arith.minsi %c573807638_i64, %c573807638_i64 : i64
          %289 = math.exp %cst : f32
          %290 = math.tan %24 : tensor<f16>
          %alloc_47 = memref.alloc() : memref<9xi32>
          %291 = math.floor %cst_3 : f32
          %292 = math.copysign %5, %22 : tensor<9xf16>
          %cst_48 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_48 : f16
        }
      %false_45 = arith.constant false
      scf.yield %c3 : index
    }
    case 2 {
      %248 = math.rsqrt %cst_0 : f32
      %249 = math.cos %3 : tensor<9xf32>
      %250 = tensor.empty() : tensor<9xi32>
      %mapped_42 = linalg.map ins(%alloc_7, %alloc_7, %alloc_15 : memref<9xi32>, memref<9xi32>, memref<9xi32>) outs(%250 : tensor<9xi32>)
        (%in: i32, %in_45: i32, %in_46: i32) {
          %263 = arith.minsi %false, %false : i1
          %264 = math.log2 %5 : tensor<9xf16>
          %265 = bufferization.to_memref %10 : memref<9xi64>
          %266 = bufferization.to_memref %9 : memref<7x15xi16>
          %267 = arith.addi %in, %in : i32
          %268 = math.fpowi %cst_2, %c1455576218_i32 : f16, i32
          %269 = arith.minsi %c-8557_i16, %c11071_i16 : i16
          %270 = index.castu %c2 : index to i32
          %271 = vector.matrix_multiply %21, %21 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
          memref.tensor_store %14, %alloc_19 : memref<7x15xi1>
          %272 = math.rsqrt %cst_0 : f32
          %273 = vector.broadcast %c11071_i16 : i16 to vector<i16>
          vector.transfer_write %273, %alloc_17[%c2] : vector<i16>, memref<9xi16>
          %274 = index.add %29, %c13
          %275 = math.fma %cst_3, %cst_0, %cst : f32
          %276 = math.cos %cst_2 : f16
          %from_elements_47 = tensor.from_elements %c724489780_i32, %c724489780_i32, %in, %c1455576218_i32, %c724489780_i32, %in_45, %c724489780_i32, %in_45, %c331483689_i32, %c724489780_i32, %c724489780_i32, %c724489780_i32, %c331483689_i32, %c331483689_i32, %in, %c331483689_i32, %c331483689_i32, %in_46, %in_45, %c724489780_i32, %in, %c331483689_i32, %c724489780_i32, %in, %c331483689_i32, %in_46, %in_45, %c724489780_i32, %c1455576218_i32, %in, %in_45, %c331483689_i32, %in, %c331483689_i32, %in_46, %in, %in_46, %c724489780_i32, %c1455576218_i32, %c1455576218_i32, %c1455576218_i32, %in_45, %in, %in, %in, %in_46, %c1455576218_i32, %in_46, %in, %in_46, %c331483689_i32, %c331483689_i32, %c724489780_i32, %c724489780_i32, %in, %c331483689_i32, %c724489780_i32, %in, %c724489780_i32, %c331483689_i32, %c724489780_i32, %in_46, %in, %in, %in_46, %c331483689_i32, %in_45, %in_46, %c1455576218_i32, %in, %c331483689_i32, %in_45, %c724489780_i32, %in_45, %in_46, %c1455576218_i32, %in_46, %c331483689_i32, %in_45, %c331483689_i32, %in_45, %c331483689_i32, %in_46, %c331483689_i32, %c331483689_i32, %c331483689_i32, %in_45, %c724489780_i32, %c331483689_i32, %in_45, %in, %c331483689_i32, %in_45, %c331483689_i32, %in_46, %in_46, %in_46, %c724489780_i32, %in_46, %in_45, %in_46, %in_46, %c1455576218_i32, %c1455576218_i32, %in_45, %in, %in_45, %c1455576218_i32, %in, %c724489780_i32, %c724489780_i32, %c331483689_i32, %in_45, %c724489780_i32, %c724489780_i32, %c724489780_i32, %c1455576218_i32, %in_46, %in_46, %in_46, %c331483689_i32, %c1455576218_i32, %in, %c1455576218_i32, %c724489780_i32, %in_45, %in, %c1455576218_i32, %c331483689_i32, %c724489780_i32, %c331483689_i32, %in_46, %c1455576218_i32, %in_45, %c331483689_i32 : tensor<9x15xi32>
          %alloc_48 = memref.alloc() : memref<7x15xi64>
          %277 = vector.broadcast %c441531226_i64 : i64 to vector<9xi64>
          %278 = vector.broadcast %true : i1 to vector<9xi1>
          %279 = vector.broadcast %c724489780_i32 : i32 to vector<9xi32>
          %280 = vector.gather %alloc_48[%c3, %c1] [%279], %278, %277 : memref<7x15xi64>, vector<9xi32>, vector<9xi1>, vector<9xi64> into vector<9xi64>
          %from_elements_49 = tensor.from_elements %in, %in, %c331483689_i32, %c331483689_i32, %c331483689_i32, %c724489780_i32, %c1455576218_i32, %c331483689_i32, %c1455576218_i32 : tensor<9xi32>
          %281 = math.ceil %24 : tensor<f16>
          %inserted_50 = tensor.insert %in into %250[%c6] : tensor<9xi32>
          %282 = arith.remui %c441531226_i64, %c441531226_i64 : i64
          %283 = bufferization.to_tensor %alloc_8 : memref<9xi16>
          memref.store %c331483689_i32, %alloc_10[%c6, %c6] : memref<9x15xi32>
          %true_51 = index.bool.constant true
          %284 = arith.remf %cst_0, %cst_1 : f32
          %285 = arith.mulf %cst_0, %cst_0 : f32
          %286 = vector.transpose %273, [] : vector<i16> to vector<i16>
          %287 = math.atan %cst : f32
          %288 = vector.broadcast %false : i1 to vector<i1>
          %289 = vector.transfer_write %288, %14[%c4, %c9] : vector<i1>, tensor<7x15xi1>
          %290 = affine.apply affine_map<(d0, d1, d2) -> (d1 floordiv 128)>(%c14, %c3, %c3)
          %291 = vector.transpose %277, [0] : vector<9xi64> to vector<9xi64>
          %292 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 floordiv 16 - d1 - 2, d0 + 16)>(%c9, %29, %c14, %c8)
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %splat_43 = tensor.splat %cst_5 : tensor<9xf32>
      %251 = math.floor %0 : tensor<9xf16>
      %252 = vector.broadcast %c724489780_i32 : i32 to vector<i32>
      vector.transfer_write %252, %alloc_10[%c5, %c15] : vector<i32>, memref<9x15xi32>
      %253 = index.mul %c0, %c14
      %254 = vector.insert %c724489780_i32, %21 [11] : i32 into vector<15xi32>
      %255 = math.ipowi %1, %1 : tensor<7x15xi32>
      %256 = arith.negf %cst_3 : f32
      %alloc_44 = memref.alloc() : memref<9xi32>
      %257 = math.ctpop %6 : tensor<9xi1>
      %258 = vector.matrix_multiply %21, %21 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
      %259 = affine.min affine_map<(d0, d1, d2) -> ((d2 * 4 + d0 floordiv 32) * 4 + d2 * 128, (d2 * 128 + d0 + d2 * 128) ceildiv 64, d2 * 128 + d0 + d2 * 128, (d2 * 4 + d0 floordiv 32) floordiv 64)>(%c15, %c13, %c1)
      %260 = vector.broadcast %c331483689_i32 : i32 to vector<i32>
      %261 = vector.transfer_write %260, %250[%c4] : vector<i32>, tensor<9xi32>
      %262 = arith.maxsi %c11071_i16, %c11071_i16 : i16
      scf.yield %c7 : index
    }
    default {
      %248 = math.log10 %3 : tensor<9xf32>
      %249 = arith.negf %cst_1 : f32
      %250 = vector.reduction <maxsi>, %21 : vector<15xi32> into i32
      memref.store %cst_1, %alloc_16[%c2, %c14] : memref<9x15xf32>
      %251 = math.cttz %8 : tensor<9xi16>
      %252 = arith.remui %c11071_i16, %c11071_i16 : i16
      %253 = vector.create_mask %c12 : vector<9xi1>
      %254 = arith.xori %c-8557_i16, %c11071_i16 : i16
      %255 = math.ipowi %8, %11 : tensor<9xi16>
      vector.print %25 : vector<i16>
      %256 = math.absf %reduced : tensor<f16>
      %from_elements_42 = tensor.from_elements %cst_4, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2, %cst_4, %cst_2, %cst_2, %cst_2 : tensor<9x15xf16>
      %257 = math.ctlz %11 : tensor<9xi16>
      %258 = math.roundeven %15 : tensor<9x15xf16>
      %259 = math.log1p %23 : tensor<f16>
      %260 = vector.broadcast %c11071_i16 : i16 to vector<2xi16>
      %261 = vector.broadcast %false : i1 to vector<2xi1>
      %262 = vector.maskedload %alloc_8[%c7], %261, %260 : memref<9xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
      scf.yield %c4 : index
    }
    bufferization.dealloc_tensor %16 : tensor<7x15xi32>
    %31 = vector.broadcast %cst_0 : f32 to vector<f32>
    vector.transfer_write %31, %alloc_16[%c12, %c6] : vector<f32>, memref<9x15xf32>
    memref.assume_alignment %alloc_8, 1 : memref<9xi16>
    %32 = arith.floordivsi %true, %true : i1
    %33 = math.log %cst_2 : f16
    %alloc_22 = memref.alloc() : memref<9xi1>
    memref.copy %alloc_11, %alloc_22 : memref<9xi1> to memref<9xi1>
    memref.store %c-8557_i16, %alloc_8[%c7] : memref<9xi16>
    %34 = arith.xori %true, %true : i1
    %35 = arith.remf %cst_1, %cst_5 : f32
    %inserted = tensor.insert %c573807638_i64 into %10[%c7] : tensor<9xi64>
    %36 = index.ceildivs %c7, %c11
    scf.index_switch %c14 
    case 1 {
      %248 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %21, %21, %c1455576218_i32 : vector<15xi32>, vector<15xi32> into i32
      %249 = math.sqrt %0 : tensor<9xf16>
      %250 = math.expm1 %cst_5 : f32
      %251 = math.atan2 %22, %5 : tensor<9xf16>
      %252 = tensor.empty() : tensor<2x2x2xf16>
      %253 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%252 : tensor<2x2x2xf16>) {
      ^bb0(%out: f16):
        %alloc_43 = memref.alloc() : memref<7x15xf32>
        memref.copy %alloc_13, %alloc_43 : memref<7x15xf32> to memref<7x15xf32>
        %266 = math.expm1 %15 : tensor<9x15xf16>
        %267 = index.ceildivs %c8, %c12
        %268 = index.divs %c0, %c7
        %269 = index.ceildivu %c10, %c6
        %270 = arith.maxf %cst_2, %out : f16
        %cast = tensor.cast %15 : tensor<9x15xf16> to tensor<?x?xf16>
        %271 = math.rsqrt %cst_5 : f32
        %272 = math.log10 %cst_3 : f32
        %273 = math.cos %3 : tensor<9xf32>
        %274 = math.cos %cst_2 : f16
        %275 = math.ctpop %4 : tensor<9xi16>
        memref.store %c724489780_i32, %alloc_15[%c6] : memref<9xi32>
        %276 = vector.broadcast %cst : f32 to vector<7x15xf32>
        %277 = vector.fma %276, %276, %276 : vector<7x15xf32>
        %278 = math.log2 %cst_3 : f32
        %279 = arith.divsi %c1455576218_i32, %c331483689_i32 : i32
        memref.assume_alignment %alloc_16, 2 : memref<9x15xf32>
        %280 = bufferization.clone %alloc_12 : memref<9xf16> to memref<9xf16>
        %281 = vector.broadcast %cst_1 : f32 to vector<9xf32>
        %282 = vector.fma %281, %281, %281 : vector<9xf32>
        %283 = math.cos %5 : tensor<9xf16>
        %284 = math.absf %3 : tensor<9xf32>
        %285 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 ceildiv 4) * 4, (d1 + d3 floordiv 4) * 2, (d2 ceildiv 4) * 4)>(%c9, %c15, %c1, %c6)
        %286 = arith.minui %true, %true : i1
        %287 = vector.broadcast %c331483689_i32 : i32 to vector<7x15xi32>
        %288 = vector.broadcast %true : i1 to vector<7x15xi1>
        %289 = vector.gather %alloc_10[%c9, %29] [%287], %288, %287 : memref<9x15xi32>, vector<7x15xi32>, vector<7x15xi1>, vector<7x15xi32> into vector<7x15xi32>
        %290 = vector.bitcast %289 : vector<7x15xi32> to vector<7x15xi32>
        %291 = math.floor %reduced : tensor<f16>
        %292 = index.mul %c15, %c8
        %expanded_44 = tensor.expand_shape %18 [[0, 1]] : tensor<9xi1> into tensor<9x1xi1>
        %293 = memref.load %alloc_18[%c8] : memref<9xf32>
        %294 = math.atan2 %cst, %cst : f32
        %295 = arith.divf %cst_5, %cst_5 : f32
        %296 = vector.broadcast %cst_0 : f32 to vector<9xf32>
        %297 = vector.fma %296, %281, %281 : vector<9xf32>
        linalg.yield %cst_2 : f16
      } -> tensor<2x2x2xf16>
      %254 = math.ipowi %c724489780_i32, %c331483689_i32 : i32
      %255 = vector.load %alloc_20[%c2] : memref<9xi32>, vector<9xi32>
      %alloc_42 = memref.alloc() : memref<7x15xi64>
      %256 = math.ipowi %6, %6 : tensor<9xi1>
      %257 = memref.alloca_scope  -> (i1) {
        %266 = math.absf %5 : tensor<9xf16>
        %267 = math.ceil %cst_4 : f16
        %268 = arith.cmpi ule, %c1455576218_i32, %c724489780_i32 : i32
        %269 = math.log %22 : tensor<9xf16>
        %alloc_43 = memref.alloc() : memref<7x15xf32>
        %270 = vector.splat %cst_1 : vector<7x15xf32>
        %271 = math.cttz %1 : tensor<7x15xi32>
        %272 = arith.cmpi ne, %c-8557_i16, %c-8557_i16 : i16
        %273 = vector.broadcast %cst_3 : f32 to vector<9xf32>
        %274 = vector.fma %273, %273, %273 : vector<9xf32>
        %275 = math.rsqrt %3 : tensor<9xf32>
        %276 = index.maxu %c7, %c14
        %277 = index.mul %36, %c11
        %278 = index.mul %c8, %c1
        %279 = arith.andi %c331483689_i32, %c1455576218_i32 : i32
        %280 = math.cttz %8 : tensor<9xi16>
        %281 = vector.splat %c331483689_i32 : vector<9xi32>
        %from_elements_44 = tensor.from_elements %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16 : tensor<9xi16>
        %282 = math.sqrt %5 : tensor<9xf16>
        %283 = vector.transpose %255, [0] : vector<9xi32> to vector<9xi32>
        %284 = math.tanh %24 : tensor<f16>
        %285 = arith.shli %c331483689_i32, %c331483689_i32 : i32
        %286 = index.castu %c573807638_i64 : i64 to index
        %287 = arith.cmpi sge, %c-8557_i16, %c-8557_i16 : i16
        %288 = vector.load %alloc_7[%c5] : memref<9xi32>, vector<7x15xi32>
        %289 = arith.addf %cst_3, %cst_3 : f32
        %inserted_45 = tensor.insert %cst_4 into %0[%c2] : tensor<9xf16>
        %290 = arith.shli %c11071_i16, %c11071_i16 : i16
        %291 = memref.load %alloc_7[%c6] : memref<9xi32>
        %292 = memref.load %alloc_16[%c0, %c2] : memref<9x15xf32>
        %293 = arith.negf %cst_4 : f16
        %294 = arith.shli %c331483689_i32, %c1455576218_i32 : i32
        %295 = math.atan2 %cst_3, %cst_0 : f32
        memref.alloca_scope.return %false : i1
      }
      %258 = vector.broadcast %true : i1 to vector<i1>
      %259 = vector.transfer_write %258, %18[%c4] : vector<i1>, tensor<9xi1>
      %260 = math.expm1 %5 : tensor<9xf16>
      %261 = arith.divui %c11071_i16, %c-8557_i16 : i16
      %262 = math.absf %15 : tensor<9x15xf16>
      %263 = math.roundeven %3 : tensor<9xf32>
      %264 = vector.broadcast %cst_3 : f32 to vector<7x2x9xf32>
      %265 = vector.broadcast %cst_3 : f32 to vector<7x9xf32>
      %dest, %accumulated_value = vector.scan <minf>, %264, %265 {inclusive = false, reduction_dim = 1 : i64} : vector<7x2x9xf32>, vector<7x9xf32>
      scf.yield
    }
    case 2 {
      affine.store %c573807638_i64, %alloc[%c8] : memref<9xi64>
      scf.if %false {
        %261 = math.rsqrt %0 : tensor<9xf16>
        %262 = math.log10 %15 : tensor<9x15xf16>
        %263 = bufferization.to_memref %10 : memref<9xi64>
        %264 = math.expm1 %22 : tensor<9xf16>
        %265 = arith.ceildivsi %c724489780_i32, %c1455576218_i32 : i32
        %266 = math.powf %19, %23 : tensor<f16>
        %267 = math.fpowi %cst_2, %c724489780_i32 : f16, i32
        %268 = math.fma %5, %22, %22 : tensor<9xf16>
      }
      %248 = math.tan %cst_3 : f32
      %249 = math.atan2 %15, %15 : tensor<9x15xf16>
      %250 = math.fma %cst_0, %cst_5, %cst_0 : f32
      %251 = vector.broadcast %c331483689_i32 : i32 to vector<9xi32>
      %252 = arith.shli %c1455576218_i32, %c1455576218_i32 : i32
      %253 = math.round %cst_2 : f16
      %splat_42 = tensor.splat %true : tensor<9x15xi1>
      %254 = arith.remui %true, %true : i1
      %255 = index.maxu %c15, %c15
      %256 = math.round %cst_0 : f32
      %257 = math.ipowi %4, %4 : tensor<9xi16>
      %258 = scf.execute_region -> index {
        %261 = math.absi %c331483689_i32 : i32
        %262 = arith.cmpi sge, %c331483689_i32, %c331483689_i32 : i32
        %263 = index.sub %c12, %c1
        %264 = tensor.empty() : tensor<i32>
        %265 = math.fpowi %reduced, %264 : tensor<f16>, tensor<i32>
        %266 = index.divs %c0, %c15
        %267 = vector.flat_transpose %251 {columns = 3 : i32, rows = 3 : i32} : vector<9xi32> -> vector<9xi32>
        %268 = math.expm1 %cst_1 : f32
        %269 = math.round %5 : tensor<9xf16>
        %270 = math.exp2 %reduced : tensor<f16>
        %271 = vector.create_mask %c0, %c6 : vector<9x15xi1>
        %272 = index.divs %c3, %c11
        %expanded_43 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<7x15xi16> into tensor<7x15x1xi16>
        %273 = vector.bitcast %21 : vector<15xi32> to vector<15xi32>
        %274 = math.tan %19 : tensor<f16>
        %275 = vector.splat %c331483689_i32 : vector<9xi32>
        %276 = math.expm1 %24 : tensor<f16>
        scf.yield %c2 : index
      }
      %259 = arith.minui %c573807638_i64, %c441531226_i64 : i64
      %260 = math.log10 %cst_0 : f32
      scf.yield
    }
    case 3 {
      %248 = vector.matrix_multiply %21, %21 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
      %249 = arith.remui %c441531226_i64, %c441531226_i64 : i64
      %250 = arith.andi %c441531226_i64, %c441531226_i64 : i64
      %251 = vector.broadcast %cst_3 : f32 to vector<9xf32>
      %252 = vector.fma %251, %251, %251 : vector<9xf32>
      %253 = vector.multi_reduction <mul>, %21, %c1455576218_i32 [0] : vector<15xi32> to i32
      %254 = arith.maxsi %c-8557_i16, %c-8557_i16 : i16
      %255 = arith.minui %c441531226_i64, %c441531226_i64 : i64
      %256 = math.round %24 : tensor<f16>
      %from_elements_42 = tensor.from_elements %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64 : tensor<9x15xi64>
      %257 = index.ceildivu %c3, %c4
      %258 = arith.divsi %c441531226_i64, %c573807638_i64 : i64
      %259 = vector.broadcast %true : i1 to vector<i1>
      %260 = vector.transfer_write %259, %12[%c5] : vector<i1>, tensor<9xi1>
      %261 = index.add %c9, %c6
      %262 = arith.andi %true, %true : i1
      %alloc_43 = memref.alloc() : memref<9xi16>
      %from_elements_44 = tensor.from_elements %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16 : tensor<9x15xi16>
      scf.yield
    }
    default {
      %248 = arith.remui %c441531226_i64, %c441531226_i64 : i64
      %249 = arith.remui %c11071_i16, %c11071_i16 : i16
      %250 = math.atan2 %15, %15 : tensor<9x15xf16>
      %251 = math.ipowi %9, %9 : tensor<7x15xi16>
      %252 = math.rsqrt %0 : tensor<9xf16>
      %253 = math.round %5 : tensor<9xf16>
      scf.if %false {
        %260 = arith.ori %c11071_i16, %c-8557_i16 : i16
        %261 = vector.shuffle %21, %21 [0, 2, 3, 5, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 21, 23, 25, 27, 28, 29] : vector<15xi32>, vector<15xi32>
        %262 = math.log10 %15 : tensor<9x15xf16>
        %false_43 = index.bool.constant false
        %263 = vector.broadcast %c1455576218_i32 : i32 to vector<15x15xi32>
        %264 = vector.outerproduct %21, %21, %263 {kind = #vector.kind<minui>} : vector<15xi32>, vector<15xi32>
        %265 = vector.transpose %25, [] : vector<i16> to vector<i16>
        %266 = index.castu %c5 : index to i32
        %267 = index.castu %c573807638_i64 : i64 to index
      } else {
        %260 = index.castu %c573807638_i64 : i64 to index
        %261 = index.castu %c331483689_i32 : i32 to index
        %262 = arith.cmpi ne, %c11071_i16, %c-8557_i16 : i16
        %from_elements_43 = tensor.from_elements %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_2, %cst_4 : tensor<9xf16>
        %263 = index.add %c14, %c12
        %264 = math.tanh %cst_1 : f32
        %265 = index.casts %c1455576218_i32 : i32 to index
        %266 = arith.remsi %c724489780_i32, %c1455576218_i32 : i32
      }
      %254 = bufferization.clone %alloc_13 : memref<7x15xf32> to memref<7x15xf32>
      %255 = arith.shli %c441531226_i64, %c441531226_i64 : i64
      %expanded_42 = tensor.expand_shape %22 [[0, 1]] : tensor<9xf16> into tensor<9x1xf16>
      %256 = math.rsqrt %cst : f32
      bufferization.dealloc_tensor %0 : tensor<9xf16>
      scf.if %false {
        %260 = vector.broadcast %c724489780_i32 : i32 to vector<7x2xi32>
        %261 = vector.broadcast %c1455576218_i32 : i32 to vector<7xi32>
        %dest, %accumulated_value = vector.scan <minsi>, %260, %261 {inclusive = false, reduction_dim = 1 : i64} : vector<7x2xi32>, vector<7xi32>
        %c18562_i16 = arith.constant 18562 : i16
        %cst_43 = arith.constant 1.881568E+9 : f32
        %262 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d1 * 2, ((d3 ceildiv 128) ceildiv 32) * 16)>(%c13, %c10, %c15, %c9)
        %263 = bufferization.clone %alloc_12 : memref<9xf16> to memref<9xf16>
        %264 = arith.shli %c331483689_i32, %c331483689_i32 : i32
        %265 = math.roundeven %3 : tensor<9xf32>
        %266 = arith.xori %c573807638_i64, %c573807638_i64 : i64
      } else {
        %260 = arith.remsi %false, %false : i1
        %alloc_43 = memref.alloc() : memref<15x2xi16>
        %261 = tensor.empty() : tensor<7x2xi16>
        %262 = linalg.matmul ins(%9, %alloc_43 : tensor<7x15xi16>, memref<15x2xi16>) outs(%261 : tensor<7x2xi16>) -> tensor<7x2xi16>
        %263 = affine.min affine_map<(d0, d1, d2) -> (((d1 floordiv 4) mod 4) ceildiv 2, ((d1 floordiv 4) mod 4) ceildiv 2 + ((d1 floordiv 4) mod 4) * 8)>(%c5, %c7, %c9)
        %264 = arith.maxf %cst_3, %cst_0 : f32
        %265 = vector.matrix_multiply %21, %21 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
        memref.tensor_store %14, %alloc_19 : memref<7x15xi1>
        %266 = arith.mulf %cst_0, %cst_5 : f32
        %267 = arith.andi %c573807638_i64, %c573807638_i64 : i64
      }
      %257 = math.expm1 %15 : tensor<9x15xf16>
      %258 = vector.matrix_multiply %21, %21 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
      %259 = vector.create_mask %c15 : vector<9xi1>
    }
    %37 = vector.matrix_multiply %21, %21 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
    %38 = bufferization.clone %alloc_8 : memref<9xi16> to memref<9xi16>
    affine.store %cst_2, %alloc_6[%c1, %c13] : memref<9x15xf16>
    %expanded = tensor.expand_shape %10 [[0, 1]] : tensor<9xi64> into tensor<9x1xi64>
    scf.index_switch %c12 
    case 1 {
      %248 = math.cttz %16 : tensor<7x15xi32>
      %alloc_42 = memref.alloc() : memref<9x15xi1>
      %249 = vector.broadcast %cst_4 : f16 to vector<f16>
      %250 = vector.transfer_write %249, %0[%c3] : vector<f16>, tensor<9xf16>
      %251 = arith.mulf %cst_4, %cst_2 : f16
      %from_elements_43 = tensor.from_elements %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64 : tensor<9x15xi64>
      scf.if %false {
        %258 = arith.remf %cst_2, %cst_4 : f16
        %259 = math.log1p %cst_3 : f32
        %alloc_44 = memref.alloc() : memref<9xf16>
        memref.copy %alloc_12, %alloc_44 : memref<9xf16> to memref<9xf16>
        %260 = math.log %cst_0 : f32
        %261 = vector.broadcast %false : i1 to vector<9xi1>
        %262 = arith.remf %cst_0, %cst_3 : f32
        %263 = index.maxu %c14, %36
        %264 = math.atan2 %24, %19 : tensor<f16>
      } else {
        %258 = vector.broadcast %cst_5 : f32 to vector<9xf32>
        %259 = vector.fma %258, %258, %258 : vector<9xf32>
        %260 = math.round %cst : f32
        %261 = vector.broadcast %false : i1 to vector<9xi1>
        %262 = vector.broadcast %c1455576218_i32 : i32 to vector<9xi32>
        %263 = vector.gather %13[%c1, %c14] [%262], %261, %261 : tensor<7x15xi1>, vector<9xi32>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %264 = vector.broadcast %cst_3 : f32 to vector<7x15xf32>
        %265 = vector.fma %264, %264, %264 : vector<7x15xf32>
        %266 = vector.broadcast %c11071_i16 : i16 to vector<15xi16>
        %267 = vector.broadcast %false : i1 to vector<15xi1>
        %268 = vector.maskedload %38[%c4], %267, %266 : memref<9xi16>, vector<15xi1>, vector<15xi16> into vector<15xi16>
        %alloc_44 = memref.alloc() : memref<9xi1>
        memref.copy %alloc_11, %alloc_44 : memref<9xi1> to memref<9xi1>
        %269 = vector.broadcast %cst : f32 to vector<9x15xf32>
        %270 = vector.broadcast %true : i1 to vector<9x15xi1>
        %271 = vector.broadcast %c331483689_i32 : i32 to vector<9x15xi32>
        %272 = vector.gather %3[%c3] [%271], %270, %269 : tensor<9xf32>, vector<9x15xi32>, vector<9x15xi1>, vector<9x15xf32> into vector<9x15xf32>
        %273 = math.ipowi %from_elements_43, %from_elements_43 : tensor<9x15xi64>
      }
      memref.assume_alignment %alloc_15, 16 : memref<9xi32>
      %252 = scf.while (%arg2 = %cst_3) : (f32) -> f32 {
        %258 = arith.subi %c11071_i16, %c11071_i16 : i16
        %259 = vector.shuffle %249, %249 [0, 1] : vector<f16>, vector<f16>
        %260 = index.castu %c5 : index to i32
        %261 = math.absi %6 : tensor<9xi1>
        %262 = arith.xori %c573807638_i64, %c573807638_i64 : i64
        %263 = vector.broadcast %false : i1 to vector<i1>
        %264 = vector.transfer_write %263, %7[%c12] : vector<i1>, tensor<9xi1>
        %265 = math.log10 %arg2 : f32
        %266 = index.ceildivs %c7, %c1
        scf.condition(%true) %cst_3 : f32
      } do {
      ^bb0(%arg2: f32):
        %258 = math.ipowi %c331483689_i32, %c331483689_i32 : i32
        %259 = math.fma %15, %15, %15 : tensor<9x15xf16>
        memref.assume_alignment %alloc_17, 4 : memref<9xi16>
        bufferization.dealloc_tensor %12 : tensor<9xi1>
        %260 = math.log %15 : tensor<9x15xf16>
        %261 = index.ceildivs %c5, %c14
        %262 = math.absi %11 : tensor<9xi16>
        %263 = vector.broadcast %cst_0 : f32 to vector<f32>
        vector.transfer_write %263, %alloc_18[%c8] : vector<f32>, memref<9xf32>
        %264 = math.absf %3 : tensor<9xf32>
        %265 = index.sub %c10, %c0
        %rank = tensor.rank %7 : tensor<9xi1>
        %266 = vector.transpose %37, [0] : vector<1xi32> to vector<1xi32>
        %267 = vector.broadcast %c331483689_i32 : i32 to vector<7xi32>
        %268 = vector.broadcast %true : i1 to vector<7xi1>
        %269 = vector.maskedload %alloc_9[%c4, %c0], %268, %267 : memref<7x15xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %alloc_44 = memref.alloc() : memref<15x7xf16>
        %270 = tensor.empty() : tensor<9x7xf16>
        %271 = linalg.matmul ins(%15, %alloc_44 : tensor<9x15xf16>, memref<15x7xf16>) outs(%270 : tensor<9x7xf16>) -> tensor<9x7xf16>
        %272 = math.copysign %24, %reduced : tensor<f16>
        %alloc_45 = memref.alloc() : memref<7x15xi16>
        memref.tensor_store %9, %alloc_45 : memref<7x15xi16>
        scf.yield %cst : f32
      }
      %253 = vector.matrix_multiply %37, %37 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
      %254 = math.powf %cst_5, %cst_3 : f32
      %255 = arith.minui %c-8557_i16, %c-8557_i16 : i16
      scf.execute_region {
        %258 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 mod 8 - (d2 - 64)) * 64)>(%c11, %c3, %29, %36)
        %259 = index.casts %true : i1 to index
        %260 = math.roundeven %5 : tensor<9xf16>
        affine.store %c724489780_i32, %alloc_9[%c14, %c0] : memref<7x15xi32>
        %261 = math.ctlz %16 : tensor<7x15xi32>
        %262 = math.log2 %3 : tensor<9xf32>
        %263 = bufferization.clone %38 : memref<9xi16> to memref<9xi16>
        %264 = math.roundeven %15 : tensor<9x15xf16>
        %265 = arith.ceildivsi %c331483689_i32, %c331483689_i32 : i32
        %266 = arith.remf %cst_4, %cst_2 : f16
        %inserted_44 = tensor.insert %true into %7[%c0] : tensor<9xi1>
        %267 = arith.maxui %c11071_i16, %c-8557_i16 : i16
        %268 = math.exp2 %5 : tensor<9xf16>
        %269 = math.cos %5 : tensor<9xf16>
        %270 = arith.subi %c441531226_i64, %c441531226_i64 : i64
        %271 = math.roundeven %5 : tensor<9xf16>
        scf.yield
      }
      bufferization.dealloc_tensor %2 : tensor<9xi16>
      %256 = vector.transpose %37, [0] : vector<1xi32> to vector<1xi32>
      bufferization.dealloc_tensor %24 : tensor<f16>
      %257 = index.sub %c10, %c13
      scf.yield
    }
    case 2 {
      %248 = math.log10 %22 : tensor<9xf16>
      %249 = tensor.empty() : tensor<9xi64>
      %mapped_42 = linalg.map ins(%alloc, %alloc : memref<9xi64>, memref<9xi64>) outs(%249 : tensor<9xi64>)
        (%in: i64, %in_44: i64) {
          %262 = math.fma %23, %23, %19 : tensor<f16>
          %263 = math.ipowi %2, %11 : tensor<9xi16>
          bufferization.dealloc_tensor %2 : tensor<9xi16>
          %alloca = memref.alloca() : memref<9xi1>
          %264 = vector.broadcast %cst_4 : f16 to vector<f16>
          %265 = vector.transfer_write %264, %22[%36] : vector<f16>, tensor<9xf16>
          %266 = math.log10 %cst : f32
          %alloc_45 = memref.alloc() : memref<9x15xi32>
          %267 = index.divs %c13, %c6
          %268 = index.sub %c5, %c1
          memref.assume_alignment %alloc_11, 8 : memref<9xi1>
          %269 = arith.mulf %cst_1, %cst_0 : f32
          memref.store %true, %alloc_19[%c3, %c8] : memref<7x15xi1>
          %270 = math.floor %15 : tensor<9x15xf16>
          %271 = math.copysign %15, %15 : tensor<9x15xf16>
          %272 = vector.broadcast %c6 : index to vector<9xindex>
          %273 = vector.broadcast %true : i1 to vector<9xi1>
          vector.scatter %alloc_11[%c3] [%272], %273, %273 : memref<9xi1>, vector<9xindex>, vector<9xi1>, vector<9xi1>
          %274 = math.exp %5 : tensor<9xf16>
          %275 = vector.matrix_multiply %37, %21 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 15 : i32} : (vector<1xi32>, vector<15xi32>) -> vector<15xi32>
          %276 = arith.addf %cst_5, %cst : f32
          %277 = math.exp2 %5 : tensor<9xf16>
          %278 = math.round %3 : tensor<9xf32>
          %279 = vector.matrix_multiply %275, %21 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
          %alloc_46 = memref.alloc() : memref<7x15xi1>
          memref.copy %alloc_19, %alloc_46 : memref<7x15xi1> to memref<7x15xi1>
          %280 = vector.bitcast %37 : vector<1xi32> to vector<1xi32>
          memref.assume_alignment %alloc_6, 2 : memref<9x15xf16>
          %281 = math.ipowi %in_44, %in_44 : i64
          %282 = bufferization.clone %alloc_9 : memref<7x15xi32> to memref<7x15xi32>
          %283 = index.ceildivs %c13, %c6
          %284 = arith.ceildivsi %in, %c573807638_i64 : i64
          %285 = index.sub %29, %c8
          %286 = math.log1p %cst_4 : f16
          %287 = math.copysign %cst_3, %cst : f32
          %288 = arith.divui %false, %false : i1
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %250 = math.round %3 : tensor<9xf32>
      %251 = index.ceildivu %c14, %c5
      %252 = vector.transpose %25, [] : vector<i16> to vector<i16>
      %253 = arith.addf %cst_0, %cst_5 : f32
      %254 = arith.divsi %c11071_i16, %c11071_i16 : i16
      %255 = math.log2 %cst_2 : f16
      %256 = vector.create_mask %c4, %c13 : vector<7x15xi1>
      memref.store %c-8557_i16, %alloc_17[%c3] : memref<9xi16>
      %true_43 = index.bool.constant true
      %257 = index.mul %c3, %c11
      %258 = math.roundeven %24 : tensor<f16>
      %259 = math.tanh %24 : tensor<f16>
      %260 = math.atan %cst_2 : f16
      %261 = affine.min affine_map<(d0, d1) -> (-d1)>(%c3, %c2)
      scf.yield
    }
    case 3 {
      %splat_42 = tensor.splat %false : tensor<9x15xi1>
      %248 = math.ctlz %c11071_i16 : i16
      %249 = math.absf %reduced : tensor<f16>
      %250 = vector.extract %21[5] : vector<15xi32>
      %251 = math.round %cst_3 : f32
      %252 = vector.bitcast %21 : vector<15xi32> to vector<15xi32>
      %253 = math.rsqrt %22 : tensor<9xf16>
      %from_elements_43 = tensor.from_elements %cst_1, %cst, %cst_1, %cst_5, %cst_5, %cst_0, %cst_0, %cst_0, %cst_1 : tensor<9xf32>
      %254 = math.absi %true : i1
      %255 = math.floor %from_elements_43 : tensor<9xf32>
      %256 = arith.maxsi %c573807638_i64, %c573807638_i64 : i64
      %257 = index.add %c12, %c14
      %258 = arith.cmpi ne, %true, %false : i1
      %259 = math.exp %23 : tensor<f16>
      %260 = math.expm1 %3 : tensor<9xf32>
      %261 = math.sqrt %cst_0 : f32
      scf.yield
    }
    case 4 {
      %248 = math.powf %cst, %cst_5 : f32
      %splat_42 = tensor.splat %c573807638_i64 : tensor<9x15xi64>
      %249 = arith.divui %c573807638_i64, %c441531226_i64 : i64
      %250 = arith.minui %c441531226_i64, %c441531226_i64 : i64
      %alloc_43 = memref.alloc() : memref<7x15xi16>
      %251 = tensor.empty() : tensor<9xi16>
      %252 = math.cttz %6 : tensor<9xi1>
      %253 = vector.broadcast %true : i1 to vector<7x7xi1>
      %254 = vector.broadcast %false : i1 to vector<7xi1>
      %dest, %accumulated_value = vector.scan <minsi>, %253, %254 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7xi1>, vector<7xi1>
      %255 = vector.broadcast %cst_5 : f32 to vector<9x15xf32>
      %256 = vector.fma %255, %255, %255 : vector<9x15xf32>
      %257 = arith.muli %c11071_i16, %c-8557_i16 : i16
      %258 = scf.execute_region -> memref<9x15xi16> {
        %264 = math.round %15 : tensor<9x15xf16>
        %265 = vector.broadcast %c331483689_i32 : i32 to vector<7x15xi32>
        %266 = math.absf %22 : tensor<9xf16>
        %267 = index.castu %c11071_i16 : i16 to index
        %268 = arith.remui %c573807638_i64, %c441531226_i64 : i64
        %269 = vector.broadcast %true : i1 to vector<i1>
        %270 = vector.transfer_write %269, %6[%c3] : vector<i1>, tensor<9xi1>
        %271 = memref.load %alloc_7[%c8] : memref<9xi32>
        %272 = math.fma %cst_1, %cst_0, %cst_5 : f32
        %273 = math.log2 %15 : tensor<9x15xf16>
        %274 = vector.flat_transpose %21 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
        %275 = math.atan2 %cst_1, %cst_5 : f32
        %276 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d3 + d0 - 132), d3 - 130)>(%c6, %c9, %29, %c14)
        %277 = index.mul %c4, %c3
        %278 = math.roundeven %15 : tensor<9x15xf16>
        %279 = math.log10 %cst : f32
        %280 = math.roundeven %22 : tensor<9xf16>
        %alloc_44 = memref.alloc() : memref<9x15xi16>
        scf.yield %alloc_44 : memref<9x15xi16>
      }
      %259 = arith.divsi %c441531226_i64, %c573807638_i64 : i64
      %260 = math.log2 %0 : tensor<9xf16>
      %261 = math.rsqrt %cst_1 : f32
      %262 = math.cos %3 : tensor<9xf32>
      %263 = vector.bitcast %21 : vector<15xi32> to vector<15xi32>
      scf.yield
    }
    default {
      %248 = math.ceil %5 : tensor<9xf16>
      %249 = vector.splat %c7 : vector<9xindex>
      %alloc_42 = memref.alloc() : memref<7x15xi32>
      %250 = vector.transpose %37, [0] : vector<1xi32> to vector<1xi32>
      %251 = arith.muli %c724489780_i32, %c331483689_i32 : i32
      %252 = arith.remf %cst_2, %cst_4 : f16
      %253 = math.ceil %23 : tensor<f16>
      %254 = vector.bitcast %37 : vector<1xi32> to vector<1xi32>
      %expanded_43 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<7x15xi1> into tensor<7x15x1xi1>
      %255 = arith.shrsi %c441531226_i64, %c441531226_i64 : i64
      %256 = scf.if %false -> (memref<9xf16>) {
        %splat_44 = tensor.splat %cst : tensor<7x15xf32>
        %262 = arith.maxsi %c1455576218_i32, %c331483689_i32 : i32
        memref.store %true, %alloc_19[%c5, %c14] : memref<7x15xi1>
        %263 = arith.minui %c441531226_i64, %c441531226_i64 : i64
        %264 = math.powf %reduced, %23 : tensor<f16>
        memref.assume_alignment %alloc_12, 1 : memref<9xf16>
        %265 = math.cos %19 : tensor<f16>
        %266 = math.ceil %cst : f32
        scf.yield %alloc_12 : memref<9xf16>
      } else {
        %alloc_44 = memref.alloc() : memref<7x15xi16>
        %262 = math.absf %cst : f32
        %263 = arith.xori %false, %true : i1
        %264 = memref.atomic_rmw assign %c11071_i16, %38[%c1] : (i16, memref<9xi16>) -> i16
        %265 = arith.xori %c441531226_i64, %c441531226_i64 : i64
        %266 = vector.broadcast %c2 : index to vector<2xindex>
        %267 = vector.broadcast %true : i1 to vector<2xi1>
        %268 = vector.broadcast %c11071_i16 : i16 to vector<2xi16>
        vector.scatter %38[%c0] [%266], %267, %268 : memref<9xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        %269 = index.add %c6, %c1
        %270 = math.rsqrt %15 : tensor<9x15xf16>
        scf.yield %alloc_12 : memref<9xf16>
      }
      %257 = vector.load %alloc_15[%c5] : memref<9xi32>, vector<9xi32>
      %258 = arith.cmpi ule, %c1455576218_i32, %c331483689_i32 : i32
      %259 = math.ceil %cst_2 : f16
      %260 = math.floor %19 : tensor<f16>
      %261 = math.exp %24 : tensor<f16>
    }
    %39 = arith.mulf %cst_3, %cst_3 : f32
    %40 = math.cos %24 : tensor<f16>
    %41 = affine.if affine_set<(d0) : ((d0 floordiv 4 - (d0 + 1) + 32) ceildiv 4 == 0, d0 + 1 >= 0)>(%c12) -> memref<9xi1> {
      %248 = math.ceil %cst_2 : f16
      scf.if %false {
        %252 = arith.addf %cst_3, %cst : f32
        %253 = vector.create_mask %c8 : vector<9xi1>
        %254 = tensor.empty() : tensor<9xi32>
        %255 = math.fpowi %0, %254 : tensor<9xf16>, tensor<9xi32>
        %256 = math.rsqrt %5 : tensor<9xf16>
        %257 = bufferization.clone %alloc : memref<9xi64> to memref<9xi64>
        %258 = arith.divsi %c331483689_i32, %c331483689_i32 : i32
        %259 = index.castu %c0 : index to i32
        %260 = math.exp2 %5 : tensor<9xf16>
      } else {
        %252 = arith.xori %true, %false : i1
        %inserted_42 = tensor.insert %c724489780_i32 into %16[%c3, %c10] : tensor<7x15xi32>
        %253 = math.tanh %0 : tensor<9xf16>
        %254 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + 16, d0 + 16)>(%c7, %c15, %c10, %c11)
        %255 = math.log %15 : tensor<9x15xf16>
        %c214624051_i64 = arith.constant 214624051 : i64
        %256 = index.mul %c8, %c10
        affine.store %c11071_i16, %alloc_17[%c0] : memref<9xi16>
      }
      %249 = index.maxu %c6, %c15
      %250 = vector.flat_transpose %21 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
      %251 = arith.remui %c441531226_i64, %c573807638_i64 : i64
      memref.assume_alignment %alloc_15, 16 : memref<9xi32>
      %rank = tensor.rank %12 : tensor<9xi1>
      affine.store %c441531226_i64, %alloc[%c12] : memref<9xi64>
      affine.yield %alloc_11 : memref<9xi1>
    } else {
      affine.store %c1455576218_i32, %alloc_10[%c2, %c4] : memref<9x15xi32>
      %expanded_42 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<7x15xi32> into tensor<7x15x1xi32>
      %248 = math.tan %22 : tensor<9xf16>
      %249 = arith.cmpi sge, %false, %false : i1
      %250 = memref.atomic_rmw minu %c724489780_i32, %alloc_20[%c2] : (i32, memref<9xi32>) -> i32
      %251 = vector.broadcast %c724489780_i32 : i32 to vector<7xi32>
      %252 = vector.broadcast %false : i1 to vector<7xi1>
      %253 = vector.maskedload %alloc_10[%c4, %c7], %252, %251 : memref<9x15xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
      %254 = math.ceil %cst : f32
      %255 = index.maxs %c4, %c13
      affine.yield %alloc_11 : memref<9xi1>
    }
    scf.index_switch %c3 
    case 1 {
      %248 = math.cos %cst : f32
      %249 = arith.minui %true, %true : i1
      %250 = math.copysign %cst, %cst : f32
      %251 = math.sqrt %cst_1 : f32
      %252 = vector.load %alloc_19[%c3, %c7] : memref<7x15xi1>, vector<9xi1>
      %253 = vector.splat %c6 : vector<9x15xindex>
      %254 = vector.broadcast %cst_1 : f32 to vector<7xf32>
      %255 = vector.broadcast %true : i1 to vector<7xi1>
      %256 = vector.maskedload %alloc_13[%c5, %c13], %255, %254 : memref<7x15xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
      %257 = tensor.empty() : tensor<i32>
      %258 = math.fpowi %24, %257 : tensor<f16>, tensor<i32>
      %259 = math.cttz %8 : tensor<9xi16>
      %260 = vector.shuffle %31, %31 [0, 1] : vector<f32>, vector<f32>
      %261 = vector.bitcast %37 : vector<1xi32> to vector<1xi32>
      %262 = arith.minf %cst_3, %cst_1 : f32
      %263 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 - 16, 0, d3 * 32)>(%c6, %c7, %c14, %c7)
      %264 = bufferization.clone %alloc_14 : memref<9x15xi32> to memref<9x15xi32>
      %265 = vector.broadcast %true : i1 to vector<15xi1>
      %266 = vector.maskedload %alloc_15[%c8], %265, %21 : memref<9xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
      %267 = arith.subi %c724489780_i32, %c1455576218_i32 : i32
      scf.yield
    }
    case 2 {
      %248 = vector.load %alloc_12[%c0] : memref<9xf16>, vector<9x15xf16>
      %249 = bufferization.to_tensor %alloc_8 : memref<9xi16>
      %250 = vector.matrix_multiply %21, %21 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
      %251 = math.rsqrt %3 : tensor<9xf32>
      %252 = affine.max affine_map<(d0) -> (d0, 0, 1)>(%c6)
      memref.store %c573807638_i64, %alloc[%c7] : memref<9xi64>
      %253 = vector.broadcast %cst_1 : f32 to vector<7x15xf32>
      %254 = vector.fma %253, %253, %253 : vector<7x15xf32>
      %255 = math.atan2 %23, %24 : tensor<f16>
      %256 = math.atan %24 : tensor<f16>
      %257 = arith.mulf %cst_4, %cst_2 : f16
      %258 = math.ipowi %1, %16 : tensor<7x15xi32>
      %259 = arith.addf %cst_2, %cst_4 : f16
      %from_elements_42 = tensor.from_elements %cst_4, %cst_4, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2 : tensor<9xf16>
      %260 = math.absf %cst_0 : f32
      %261 = arith.remui %c1455576218_i32, %c1455576218_i32 : i32
      %262 = arith.shli %c573807638_i64, %c441531226_i64 : i64
      scf.yield
    }
    case 3 {
      %248 = index.maxs %c11, %c3
      %249 = arith.floordivsi %c573807638_i64, %c573807638_i64 : i64
      %250 = arith.remf %cst_5, %cst_1 : f32
      %251 = math.copysign %5, %5 : tensor<9xf16>
      %252 = math.log %cst_1 : f32
      %253 = math.absf %5 : tensor<9xf16>
      %254 = index.ceildivu %c9, %c14
      bufferization.dealloc_tensor %reduced : tensor<f16>
      %255 = math.log %cst_0 : f32
      %256 = vector.transpose %31, [] : vector<f32> to vector<f32>
      %true_42 = index.bool.constant true
      %257 = math.roundeven %5 : tensor<9xf16>
      %alloc_43 = memref.alloc() : memref<7x15xf16>
      %alloc_44 = memref.alloc() : memref<9x15xf32>
      %258 = math.cos %5 : tensor<9xf16>
      %259 = arith.mulf %cst_3, %cst : f32
      scf.yield
    }
    case 4 {
      %248 = memref.load %alloc_7[%c8] : memref<9xi32>
      %249 = math.absf %15 : tensor<9x15xf16>
      %250 = math.tanh %5 : tensor<9xf16>
      %splat_42 = tensor.splat %c441531226_i64 : tensor<7x15xi64>
      %251 = index.ceildivs %c4, %36
      %252 = affine.for %arg2 = 0 to 38 iter_args(%arg3 = %false) -> (i1) {
        affine.yield %arg3 : i1
      }
      %253 = vector.flat_transpose %37 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
      %cst_43 = arith.constant 4.886400e+04 : f16
      %254 = math.ipowi %18, %6 : tensor<9xi1>
      %255 = scf.while (%arg2 = %c573807638_i64) : (i64) -> i64 {
        %263 = vector.broadcast %cst_3 : f32 to vector<9x15xf32>
        %264 = vector.broadcast %true : i1 to vector<9x15xi1>
        %265 = vector.broadcast %c724489780_i32 : i32 to vector<9x15xi32>
        %266 = vector.gather %alloc_16[%29, %c1] [%265], %264, %263 : memref<9x15xf32>, vector<9x15xi32>, vector<9x15xi1>, vector<9x15xf32> into vector<9x15xf32>
        %267 = math.fpowi %cst_1, %c331483689_i32 : f32, i32
        %268 = math.cos %3 : tensor<9xf32>
        %269 = math.exp %reduced : tensor<f16>
        %270 = math.round %0 : tensor<9xf16>
        %271 = arith.floordivsi %c1455576218_i32, %c724489780_i32 : i32
        %272 = math.expm1 %cst_0 : f32
        memref.store %cst_4, %alloc_12[%c3] : memref<9xf16>
        scf.condition(%false) %c441531226_i64 : i64
      } do {
      ^bb0(%arg2: i64):
        %from_elements_45 = tensor.from_elements %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16 : tensor<9x15xi16>
        %263 = vector.flat_transpose %37 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %264 = index.sub %c1, %c14
        %265 = math.round %3 : tensor<9xf32>
        %266 = arith.minui %c1455576218_i32, %c1455576218_i32 : i32
        %267 = math.copysign %24, %23 : tensor<f16>
        %268 = index.sub %c1, %c14
        memref.assume_alignment %alloc_14, 4 : memref<9x15xi32>
        %269 = arith.negf %cst_5 : f32
        %270 = arith.andi %false, %false : i1
        %271 = math.round %cst_5 : f32
        %272 = arith.shli %c724489780_i32, %c724489780_i32 : i32
        %from_elements_46 = tensor.from_elements %cst_1, %cst_5, %cst_5, %cst_3, %cst_0, %cst_5, %cst_5, %cst_5, %cst : tensor<9xf32>
        %273 = math.floor %5 : tensor<9xf16>
        %274 = vector.bitcast %253 : vector<1xi32> to vector<1xi32>
        %275 = math.atan2 %24, %24 : tensor<f16>
        scf.yield %arg2 : i64
      }
      %256 = math.exp %15 : tensor<9x15xf16>
      %257 = math.tanh %3 : tensor<9xf32>
      %258 = arith.andi %false, %true : i1
      %259 = tensor.empty() : tensor<2x2x2xf16>
      %alloc_44 = memref.alloc() : memref<2x2xf16>
      %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_44 : memref<2x2xf16>) outs(%259 : tensor<2x2x2xf16>) {
      ^bb0(%in: f16, %out: f16):
        %263 = math.exp %3 : tensor<9xf32>
        %true_45 = index.bool.constant true
        %264 = arith.maxf %out, %cst_2 : f16
        %265 = tensor.empty() : tensor<9xf16>
        %266 = arith.muli %true, %false : i1
        %inserted_46 = tensor.insert %c441531226_i64 into %splat_42[%c5, %c14] : tensor<7x15xi64>
        %splat_47 = tensor.splat %in : tensor<9x15xf16>
        %alloc_48 = memref.alloc() : memref<9x15xi16>
        %267 = math.log1p %22 : tensor<9xf16>
        %268 = memref.load %alloc_19[%c1, %c11] : memref<7x15xi1>
        %269 = math.round %5 : tensor<9xf16>
        %270 = arith.remui %c-8557_i16, %c-8557_i16 : i16
        memref.store %c331483689_i32, %alloc_10[%c7, %c3] : memref<9x15xi32>
        %271 = vector.multi_reduction <and>, %37, %c1455576218_i32 [0] : vector<1xi32> to i32
        %expanded_49 = tensor.expand_shape %2 [[0, 1]] : tensor<9xi16> into tensor<9x1xi16>
        %272 = arith.maxui %c331483689_i32, %c1455576218_i32 : i32
        %273 = math.powf %23, %23 : tensor<f16>
        %274 = arith.mulf %cst_5, %cst_5 : f32
        %275 = math.absi %271 : i32
        %276 = arith.floordivsi %271, %271 : i32
        %277 = arith.divf %cst_2, %cst_2 : f16
        %inserted_50 = tensor.insert %cst_4 into %22[%c1] : tensor<9xf16>
        memref.store %c1455576218_i32, %alloc_20[%c8] : memref<9xi32>
        %278 = index.ceildivu %c0, %29
        %279 = arith.negf %cst_3 : f32
        %280 = arith.subi %false, %false : i1
        %281 = math.atan2 %0, %5 : tensor<9xf16>
        %alloc_51 = memref.alloc() : memref<9x15xf32>
        %282 = tensor.empty() : tensor<i32>
        %283 = math.fpowi %23, %282 : tensor<f16>, tensor<i32>
        %284 = arith.shli %false, %true : i1
        %285 = vector.broadcast %true_45 : i1 to vector<9xi1>
        %286 = vector.maskedload %alloc_11[%c3], %285, %285 : memref<9xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %287 = vector.broadcast %cst : f32 to vector<7x15xf32>
        %288 = vector.fma %287, %287, %287 : vector<7x15xf32>
        linalg.yield %cst_4 : f16
      } -> tensor<2x2x2xf16>
      %261 = arith.shli %c441531226_i64, %c441531226_i64 : i64
      %262 = memref.load %alloc_20[%c0] : memref<9xi32>
      scf.yield
    }
    default {
      %248 = math.round %cst_5 : f32
      %249 = index.ceildivs %c4, %36
      %250 = vector.splat %c8 : vector<9x15xindex>
      %251 = math.rsqrt %5 : tensor<9xf16>
      %252 = math.cttz %1 : tensor<7x15xi32>
      %253 = math.fma %24, %reduced, %23 : tensor<f16>
      memref.assume_alignment %alloc_19, 16 : memref<7x15xi1>
      %254 = arith.mulf %cst_3, %cst_5 : f32
      %from_elements_42 = tensor.from_elements %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16 : tensor<9xi16>
      %inserted_43 = tensor.insert %c1455576218_i32 into %16[%c0, %c12] : tensor<7x15xi32>
      %255 = math.fma %15, %15, %15 : tensor<9x15xf16>
      memref.copy %alloc_14, %alloc_10 : memref<9x15xi32> to memref<9x15xi32>
      %256 = math.tan %22 : tensor<9xf16>
      %257 = arith.addf %cst_2, %cst_4 : f16
      %258 = math.copysign %24, %reduced : tensor<f16>
      scf.index_switch %36 
      case 1 {
        %259 = math.log10 %3 : tensor<9xf32>
        %260 = index.sub %c6, %c15
        %261 = index.maxs %c14, %c0
        %262 = index.ceildivu %c7, %c2
        memref.assume_alignment %alloc_13, 1 : memref<7x15xf32>
        %expanded_44 = tensor.expand_shape %8 [[0, 1]] : tensor<9xi16> into tensor<9x1xi16>
        %263 = math.ceil %3 : tensor<9xf32>
        %264 = math.atan2 %cst, %cst : f32
        %265 = arith.addf %cst_3, %cst_0 : f32
        %266 = arith.remsi %c331483689_i32, %c331483689_i32 : i32
        memref.assume_alignment %alloc_9, 16 : memref<7x15xi32>
        %267 = memref.load %alloc_12[%c8] : memref<9xf16>
        %268 = vector.multi_reduction <xor>, %37, %37 [] : vector<1xi32> to vector<1xi32>
        %269 = arith.remui %c1455576218_i32, %c724489780_i32 : i32
        %270 = math.roundeven %cst_0 : f32
        %271 = math.floor %22 : tensor<9xf16>
        scf.yield
      }
      case 2 {
        bufferization.dealloc_tensor %expanded : tensor<9x1xi64>
        memref.assume_alignment %alloc_13, 2 : memref<7x15xf32>
        %259 = vector.broadcast %false : i1 to vector<i1>
        %260 = vector.transfer_write %259, %7[%29] : vector<i1>, tensor<9xi1>
        %261 = arith.maxui %true, %false : i1
        %262 = arith.divsi %c11071_i16, %c-8557_i16 : i16
        %alloc_44 = memref.alloc() : memref<7x15xi32>
        %263 = math.ipowi %13, %14 : tensor<7x15xi1>
        %264 = vector.shuffle %21, %37 [4, 6, 8, 9, 10, 11, 14, 15] : vector<15xi32>, vector<1xi32>
        %265 = math.ipowi %13, %13 : tensor<7x15xi1>
        %266 = arith.ori %c-8557_i16, %c-8557_i16 : i16
        %cst_45 = arith.constant 3.024000e+04 : f16
        %267 = math.tan %19 : tensor<f16>
        %268 = math.log2 %15 : tensor<9x15xf16>
        %alloc_46 = memref.alloc() : memref<7x15xi1>
        %269 = vector.broadcast %cst : f32 to vector<7x15xf32>
        %270 = vector.fma %269, %269, %269 : vector<7x15xf32>
        %271 = bufferization.clone %alloc_6 : memref<9x15xf16> to memref<9x15xf16>
        scf.yield
      }
      case 3 {
        %alloc_44 = memref.alloc() : memref<9xi1>
        memref.copy %alloc_11, %alloc_44 : memref<9xi1> to memref<9xi1>
        %259 = math.cos %0 : tensor<9xf16>
        %260 = memref.atomic_rmw addi %c-8557_i16, %alloc_17[%c0] : (i16, memref<9xi16>) -> i16
        %261 = arith.ceildivsi %false, %true : i1
        %262 = vector.shuffle %37, %21 [0, 1, 2, 3, 5, 8, 11, 13, 14, 15] : vector<1xi32>, vector<15xi32>
        memref.store %c11071_i16, %alloc_8[%c2] : memref<9xi16>
        memref.assume_alignment %alloc_16, 4 : memref<9x15xf32>
        memref.assume_alignment %alloc_14, 2 : memref<9x15xi32>
        %263 = index.sub %c12, %c11
        %264 = arith.xori %c-8557_i16, %c-8557_i16 : i16
        %265 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %37, %37, %c724489780_i32 : vector<1xi32>, vector<1xi32> into i32
        %266 = vector.flat_transpose %37 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %267 = vector.load %alloc_14[%c2, %c4] : memref<9x15xi32>, vector<9xi32>
        %268 = math.copysign %0, %5 : tensor<9xf16>
        %269 = vector.transpose %37, [0] : vector<1xi32> to vector<1xi32>
        %270 = math.rsqrt %cst_2 : f16
        scf.yield
      }
      default {
        %259 = vector.broadcast %c724489780_i32 : i32 to vector<2xi32>
        %260 = vector.broadcast %false : i1 to vector<2xi1>
        %261 = vector.maskedload %alloc_15[%c8], %260, %259 : memref<9xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        bufferization.dealloc_tensor %13 : tensor<7x15xi1>
        %262 = math.log2 %cst_1 : f32
        %263 = arith.mulf %cst_5, %cst_0 : f32
        %264 = bufferization.clone %alloc : memref<9xi64> to memref<9xi64>
        %265 = math.absi %10 : tensor<9xi64>
        %alloc_44 = memref.alloc() : memref<9x15xi1>
        %266 = math.round %22 : tensor<9xf16>
        %267 = math.absf %15 : tensor<9x15xf16>
        %inserted_45 = tensor.insert %c-8557_i16 into %11[%c2] : tensor<9xi16>
        %268 = vector.broadcast %cst_4 : f16 to vector<9xf16>
        %269 = vector.transfer_write %268, %15[%c8, %c4] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xf16>, tensor<9x15xf16>
        %270 = vector.multi_reduction <mul>, %268, %cst_4 [0] : vector<9xf16> to f16
        memref.tensor_store %3, %alloc_18 : memref<9xf32>
        %271 = vector.reduction <or>, %21 : vector<15xi32> into i32
        %272 = math.cttz %c-8557_i16 : i16
        %273 = math.log2 %0 : tensor<9xf16>
      }
    }
    %42 = math.round %cst : f32
    %43 = math.cttz %1 : tensor<7x15xi32>
    %44 = scf.while (%arg2 = %alloc_14) : (memref<9x15xi32>) -> memref<9x15xi32> {
      %248 = vector.matrix_multiply %21, %21 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
      %249 = bufferization.clone %alloc_6 : memref<9x15xf16> to memref<9x15xf16>
      memref.alloca_scope  {
        memref.copy %alloc_8, %alloc_17 : memref<9xi16> to memref<9xi16>
        %from_elements_43 = tensor.from_elements %cst_0, %cst_3, %cst_1, %cst_1, %cst_0, %cst_3, %cst_5, %cst_3, %cst_0, %cst_3, %cst_0, %cst_5, %cst, %cst_5, %cst_0, %cst, %cst_5, %cst_0, %cst_5, %cst_5, %cst_3, %cst_1, %cst_0, %cst_3, %cst_3, %cst_0, %cst_0, %cst_0, %cst_3, %cst_5, %cst_1, %cst_1, %cst_5, %cst_0, %cst_3, %cst_0, %cst, %cst_1, %cst_3, %cst_1, %cst_0, %cst, %cst_5, %cst_3, %cst, %cst_1, %cst_3, %cst_5, %cst_3, %cst_0, %cst_0, %cst, %cst_5, %cst_0, %cst_1, %cst_0, %cst_0, %cst_5, %cst_3, %cst_1, %cst_5, %cst_0, %cst_3, %cst, %cst_1, %cst, %cst_5, %cst, %cst_3, %cst_5, %cst_1, %cst_0, %cst_1, %cst_3, %cst_5, %cst_5, %cst_1, %cst, %cst_5, %cst_3, %cst_1, %cst_5, %cst_5, %cst, %cst_5, %cst_3, %cst_0, %cst, %cst_3, %cst_1, %cst_1, %cst_1, %cst_0, %cst, %cst_5, %cst_5, %cst, %cst_1, %cst_5, %cst_1, %cst_1, %cst_3, %cst_5, %cst_5, %cst_3 : tensor<7x15xf32>
        %254 = bufferization.clone %alloc_16 : memref<9x15xf32> to memref<9x15xf32>
        %255 = index.divu %c10, %c7
        %256 = math.atan2 %22, %5 : tensor<9xf16>
        %257 = vector.flat_transpose %37 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %258 = vector.bitcast %248 : vector<1xi32> to vector<1xi32>
        %259 = math.expm1 %cst_2 : f16
        %260 = vector.splat %255 : vector<7x15xindex>
        %261 = arith.mulf %cst, %cst_1 : f32
        bufferization.dealloc_tensor %12 : tensor<9xi1>
        %expanded_44 = tensor.expand_shape %2 [[0, 1]] : tensor<9xi16> into tensor<9x1xi16>
        %262 = vector.splat %c1 : vector<7x15xindex>
        %263 = vector.load %alloc_15[%c7] : memref<9xi32>, vector<9xi32>
        %264 = math.log %0 : tensor<9xf16>
        %265 = arith.cmpi slt, %c331483689_i32, %c1455576218_i32 : i32
        %266 = arith.shli %false, %false : i1
        %267 = arith.remui %true, %true : i1
        %splat_45 = tensor.splat %cst_1 : tensor<7x15xf32>
        %268 = math.sqrt %cst_0 : f32
        %269 = math.round %0 : tensor<9xf16>
        %270 = vector.broadcast %c331483689_i32 : i32 to vector<i32>
        vector.transfer_write %270, %alloc_7[%255] : vector<i32>, memref<9xi32>
        %271 = math.atan2 %5, %0 : tensor<9xf16>
        %272 = arith.divf %cst_0, %cst_1 : f32
        %273 = vector.bitcast %258 : vector<1xi32> to vector<1xi32>
        %274 = affine.min affine_map<(d0, d1, d2) -> (d0, -(d1 + d0 + 4))>(%c8, %c8, %c10)
        %275 = affine.max affine_map<(d0, d1) -> (d1 ceildiv 8, d1 + d1 ceildiv 8, d0)>(%36, %29)
        %276 = vector.flat_transpose %21 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 * 16) ceildiv 64, d0 - 4, d2, d3 mod 4 + d3)>(%c15, %c11, %c2, %c11)
        %278 = vector.broadcast %c331483689_i32 : i32 to vector<9x15xi32>
        %279 = bufferization.to_tensor %alloc_13 : memref<7x15xf32>
        bufferization.dealloc_tensor %3 : tensor<9xf32>
      }
      %250 = vector.splat %cst_3 : vector<9xf32>
      %251 = index.ceildivs %c4, %c13
      %expanded_42 = tensor.expand_shape %5 [[0, 1]] : tensor<9xf16> into tensor<9x1xf16>
      %252 = index.casts %c-8557_i16 : i16 to index
      %253 = index.ceildivu %251, %c7
      scf.condition(%true) %alloc_14 : memref<9x15xi32>
    } do {
    ^bb0(%arg2: memref<9x15xi32>):
      %splat_42 = tensor.splat %cst_2 : tensor<9xf16>
      %248 = memref.atomic_rmw andi %c11071_i16, %38[%c4] : (i16, memref<9xi16>) -> i16
      %249 = index.castu %c1455576218_i32 : i32 to index
      memref.store %c-8557_i16, %alloc_17[%c5] : memref<9xi16>
      bufferization.dealloc_tensor %expanded : tensor<9x1xi64>
      %250 = math.cos %5 : tensor<9xf16>
      %251 = math.round %5 : tensor<9xf16>
      %from_elements_43 = tensor.from_elements %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64 : tensor<9xi64>
      %252 = arith.xori %c-8557_i16, %c11071_i16 : i16
      %253 = math.atan2 %cst_3, %cst_0 : f32
      %254 = arith.remui %c573807638_i64, %c573807638_i64 : i64
      affine.for %arg3 = 0 to 106 {
      }
      %255 = math.log1p %23 : tensor<f16>
      %256 = vector.flat_transpose %21 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
      %257 = math.cttz %c-8557_i16 : i16
      %258 = arith.subi %c11071_i16, %c11071_i16 : i16
      scf.yield %arg2 : memref<9x15xi32>
    }
    %45 = math.expm1 %cst_3 : f32
    %c505443309_i64 = arith.constant 505443309 : i64
    %46 = math.absf %24 : tensor<f16>
    %47 = math.exp2 %cst_4 : f16
    %48 = index.sub %c5, %c8
    %49 = math.log10 %cst : f32
    %50 = index.sub %c14, %c5
    %51 = math.tanh %3 : tensor<9xf32>
    %52 = vector.broadcast %c12 : index to vector<9xindex>
    %53 = vector.broadcast %true : i1 to vector<9xi1>
    %54 = vector.broadcast %c331483689_i32 : i32 to vector<9xi32>
    vector.scatter %alloc_14[%c4, %c6] [%52], %53, %54 : memref<9x15xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
    memref.assume_alignment %alloc_9, 1 : memref<7x15xi32>
    memref.store %c1455576218_i32, %alloc_7[%c6] : memref<9xi32>
    %55 = arith.ori %true, %true : i1
    bufferization.dealloc_tensor %11 : tensor<9xi16>
    %56 = arith.mulf %cst_2, %cst_4 : f16
    %57 = arith.remui %c11071_i16, %c11071_i16 : i16
    %58 = math.exp %cst_4 : f16
    %59 = math.absi %11 : tensor<9xi16>
    %60 = math.round %cst_3 : f32
    %61 = math.round %cst_4 : f16
    %62 = math.exp2 %cst_1 : f32
    %63 = vector.transpose %21, [0] : vector<15xi32> to vector<15xi32>
    %from_elements = tensor.from_elements %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16 : tensor<7x15xi16>
    %64 = index.sub %c10, %c0
    %65 = vector.multi_reduction <maxsi>, %37, %37 [] : vector<1xi32> to vector<1xi32>
    %66 = vector.broadcast %c11 : index to vector<15xindex>
    %67 = vector.broadcast %true : i1 to vector<15xi1>
    %68 = vector.broadcast %cst : f32 to vector<15xf32>
    vector.scatter %alloc_18[%c8] [%66], %67, %68 : memref<9xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
    %69 = math.exp2 %3 : tensor<9xf32>
    %70 = scf.if %true -> (memref<9xi32>) {
      %248 = math.log2 %23 : tensor<f16>
      %249 = arith.maxui %c11071_i16, %c11071_i16 : i16
      %250 = arith.addi %c441531226_i64, %c441531226_i64 : i64
      %251 = vector.extract %37[0] : vector<1xi32>
      %252 = math.exp2 %cst_3 : f32
      %253 = index.mul %50, %c0
      memref.store %true, %alloc_11[%c1] : memref<9xi1>
      %254 = vector.load %alloc_20[%c1] : memref<9xi32>, vector<9x15xi32>
      scf.yield %alloc_7 : memref<9xi32>
    } else {
      %248 = index.castu %true : i1 to index
      %249 = math.log10 %reduced : tensor<f16>
      %250 = vector.broadcast %cst_1 : f32 to vector<9xf32>
      %251 = vector.fma %250, %250, %250 : vector<9xf32>
      scf.index_switch %50 
      case 1 {
        %256 = arith.ceildivsi %c1455576218_i32, %c724489780_i32 : i32
        %257 = index.divs %c12, %c2
        %258 = arith.maxui %false, %true : i1
        %259 = index.mul %c0, %29
        %260 = bufferization.to_memref %19 : memref<f16>
        %alloc_42 = memref.alloc() : memref<9xf32>
        memref.copy %alloc_18, %alloc_42 : memref<9xf32> to memref<9xf32>
        %261 = index.mul %248, %259
        %262 = arith.divui %c1455576218_i32, %c1455576218_i32 : i32
        %263 = math.roundeven %19 : tensor<f16>
        %264 = vector.transpose %21, [0] : vector<15xi32> to vector<15xi32>
        %265 = math.ceil %reduced : tensor<f16>
        %266 = vector.extract %21[6] : vector<15xi32>
        %267 = vector.bitcast %251 : vector<9xf32> to vector<9xf32>
        %inserted_43 = tensor.insert %cst_2 into %5[%c7] : tensor<9xf16>
        %268 = arith.divui %c724489780_i32, %c724489780_i32 : i32
        %269 = index.castu %false : i1 to index
        scf.yield
      }
      case 2 {
        %256 = index.divs %c7, %c8
        %alloc_42 = memref.alloc() : memref<7x15xi16>
        memref.assume_alignment %alloc_8, 2 : memref<9xi16>
        %257 = index.castu %c1 : index to i32
        %258 = math.absf %cst_0 : f32
        %259 = math.tan %19 : tensor<f16>
        %260 = math.absi %6 : tensor<9xi1>
        %261 = math.cttz %16 : tensor<7x15xi32>
        %262 = bufferization.clone %alloc_6 : memref<9x15xf16> to memref<9x15xf16>
        %263 = vector.insert %c1455576218_i32, %37 [0] : i32 into vector<1xi32>
        %264 = arith.xori %false, %true : i1
        %265 = math.ipowi %13, %14 : tensor<7x15xi1>
        %266 = arith.minui %c441531226_i64, %c573807638_i64 : i64
        %267 = vector.extract %21[12] : vector<15xi32>
        %268 = vector.bitcast %251 : vector<9xf32> to vector<9xf32>
        %269 = vector.splat %256 : vector<9x15xindex>
        scf.yield
      }
      case 3 {
        %expanded_42 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<7x15xi1> into tensor<7x15x1xi1>
        %256 = arith.divui %true, %false : i1
        %257 = math.log %22 : tensor<9xf16>
        %258 = math.rsqrt %24 : tensor<f16>
        %259 = bufferization.clone %alloc_14 : memref<9x15xi32> to memref<9x15xi32>
        %260 = index.mul %c10, %36
        %261 = affine.min affine_map<(d0, d1) -> (d1 + (d1 + 1) floordiv 2 + 2, d0, d1 + 1)>(%48, %c10)
        %262 = math.copysign %15, %15 : tensor<9x15xf16>
        %263 = vector.transpose %31, [] : vector<f32> to vector<f32>
        %264 = math.log1p %24 : tensor<f16>
        %265 = index.maxu %c4, %50
        %266 = bufferization.to_memref %14 : memref<7x15xi1>
        %267 = arith.xori %c-8557_i16, %c11071_i16 : i16
        %268 = arith.muli %c-8557_i16, %c-8557_i16 : i16
        %269 = arith.shli %c1455576218_i32, %c331483689_i32 : i32
        %270 = arith.floordivsi %c573807638_i64, %c573807638_i64 : i64
        scf.yield
      }
      default {
        %256 = arith.remui %c331483689_i32, %c1455576218_i32 : i32
        %257 = vector.splat %cst_3 : vector<7x15xf32>
        %258 = arith.remui %c724489780_i32, %c1455576218_i32 : i32
        %259 = math.tanh %23 : tensor<f16>
        %260 = arith.mulf %cst_2, %cst_2 : f16
        %261 = vector.insertelement %cst_1, %251[%c5 : index] : vector<9xf32>
        %262 = index.ceildivs %c14, %c10
        %263 = index.divs %29, %c0
        %264 = index.mul %c11, %c11
        %265 = index.add %262, %36
        %266 = math.cos %cst_3 : f32
        %267 = arith.cmpi sgt, %false, %true : i1
        %268 = math.powf %reduced, %reduced : tensor<f16>
        %269 = vector.broadcast %cst : f32 to vector<9x15xf32>
        %270 = vector.fma %269, %269, %269 : vector<9x15xf32>
        %271 = index.divs %248, %c4
        %272 = math.floor %5 : tensor<9xf16>
      }
      %252 = math.round %23 : tensor<f16>
      %253 = math.expm1 %15 : tensor<9x15xf16>
      %254 = index.casts %c1455576218_i32 : i32 to index
      %255 = arith.subi %c-8557_i16, %c-8557_i16 : i16
      scf.yield %alloc_15 : memref<9xi32>
    }
    %71 = math.sqrt %cst_5 : f32
    memref.alloca_scope  {
      %alloc_42 = memref.alloc() : memref<9x15xf32>
      %248 = arith.subi %c331483689_i32, %c1455576218_i32 : i32
      %249 = math.atan %cst_1 : f32
      %250 = arith.floordivsi %c441531226_i64, %c573807638_i64 : i64
      %251 = math.round %19 : tensor<f16>
      %252 = math.fma %5, %0, %5 : tensor<9xf16>
      affine.store %cst_3, %alloc_13[%c7, %c10] : memref<7x15xf32>
      %253 = vector.bitcast %21 : vector<15xi32> to vector<15xi32>
      %254 = affine.apply affine_map<(d0, d1) -> (d0)>(%c15, %c14)
      %255 = tensor.empty(%64) : tensor<?x15xi32>
      %256 = vector.bitcast %37 : vector<1xi32> to vector<1xi32>
      %257 = vector.insert %c1455576218_i32, %253 [1] : i32 into vector<15xi32>
      %258 = math.expm1 %5 : tensor<9xf16>
      %259 = math.round %3 : tensor<9xf32>
      %260 = vector.matrix_multiply %256, %37 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
      scf.execute_region {
        %275 = arith.remf %cst_5, %cst_5 : f32
        %from_elements_45 = tensor.from_elements %c724489780_i32, %c331483689_i32, %c1455576218_i32, %c724489780_i32, %c331483689_i32, %c1455576218_i32, %c331483689_i32, %c1455576218_i32, %c331483689_i32 : tensor<9xi32>
        %276 = math.cos %24 : tensor<f16>
        %277 = arith.remui %c11071_i16, %c-8557_i16 : i16
        %278 = arith.cmpi ugt, %c573807638_i64, %c573807638_i64 : i64
        %279 = math.tan %cst_1 : f32
        %280 = index.mul %c0, %c8
        %281 = vector.matrix_multiply %260, %253 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 15 : i32} : (vector<1xi32>, vector<15xi32>) -> vector<15xi32>
        %282 = vector.reduction <maxsi>, %256 : vector<1xi32> into i32
        %from_elements_46 = tensor.from_elements %cst_5, %cst, %cst_5, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_5 : tensor<9xf32>
        %283 = math.powf %19, %reduced : tensor<f16>
        %284 = arith.maxsi %c331483689_i32, %c1455576218_i32 : i32
        %285 = math.copysign %0, %0 : tensor<9xf16>
        memref.assume_alignment %38, 4 : memref<9xi16>
        %286 = math.cttz %14 : tensor<7x15xi1>
        %cst_47 = arith.constant 2.01498842E+9 : f32
        scf.yield
      }
      %261 = index.ceildivs %c15, %36
      %262 = index.sub %c5, %64
      %263 = arith.shli %c573807638_i64, %c441531226_i64 : i64
      %264 = vector.extract %21[1] : vector<15xi32>
      %265 = arith.remsi %c1455576218_i32, %c724489780_i32 : i32
      %266 = index.castu %48 : index to i32
      %267 = math.copysign %cst, %cst : f32
      %cast = tensor.cast %23 : tensor<f16> to tensor<f16>
      %268 = math.sqrt %5 : tensor<9xf16>
      %269 = tensor.empty() : tensor<9xi16>
      %mapped_43 = linalg.map ins(%8, %11, %11 : tensor<9xi16>, tensor<9xi16>, tensor<9xi16>) outs(%269 : tensor<9xi16>)
        (%in: i16, %in_45: i16, %in_46: i16) {
          %275 = arith.remui %c11071_i16, %c-8557_i16 : i16
          %276 = math.copysign %24, %23 : tensor<f16>
          %277 = math.copysign %0, %22 : tensor<9xf16>
          %from_elements_47 = tensor.from_elements %in_45, %c-8557_i16, %c-8557_i16, %in_46, %in_46, %in, %in_46, %c11071_i16, %c-8557_i16, %in_46, %in_46, %in, %c-8557_i16, %in_46, %in_45, %in, %in_45, %in_45, %in_46, %c-8557_i16, %c11071_i16, %in_45, %in, %c11071_i16, %in, %in, %in_45, %c11071_i16, %in_45, %c11071_i16, %in, %in, %in_45, %in, %in_45, %in_45, %in, %c11071_i16, %c-8557_i16, %c-8557_i16, %in_46, %c11071_i16, %c-8557_i16, %in, %in_45, %c-8557_i16, %in_45, %c11071_i16, %in_45, %in_46, %in, %in_46, %c11071_i16, %in_46, %c-8557_i16, %c-8557_i16, %in_46, %in_45, %in_46, %c-8557_i16, %in, %in_46, %in_45, %in, %c-8557_i16, %c11071_i16, %in, %in_45, %in, %in_45, %in, %in_46, %c11071_i16, %in, %in, %in, %in, %in_46, %in_45, %c-8557_i16, %in, %c-8557_i16, %c-8557_i16, %in_45, %in, %c-8557_i16, %c11071_i16, %c-8557_i16, %in_46, %in_46, %in_45, %in_46, %in_45, %in_46, %in, %in_45, %c-8557_i16, %c-8557_i16, %c-8557_i16, %in_46, %in, %in_46, %c-8557_i16, %c11071_i16, %in_45 : tensor<7x15xi16>
          %splat_48 = tensor.splat %c11071_i16 : tensor<9xi16>
          %278 = math.cos %cst_2 : f16
          %279 = arith.remui %c724489780_i32, %c724489780_i32 : i32
          %280 = math.absf %19 : tensor<f16>
          %281 = math.atan2 %15, %15 : tensor<9x15xf16>
          %282 = arith.shli %in_45, %c-8557_i16 : i16
          %283 = math.log2 %3 : tensor<9xf32>
          %284 = arith.remui %c724489780_i32, %c331483689_i32 : i32
          %285 = math.ceil %15 : tensor<9x15xf16>
          %286 = index.castu %false : i1 to index
          %287 = vector.broadcast %cst_1 : f32 to vector<7x15xf32>
          %288 = vector.fma %287, %287, %287 : vector<7x15xf32>
          %289 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 + d1 - 2)>(%261, %254, %c3, %48)
          %alloc_49 = memref.alloc() : memref<9xf16>
          memref.copy %alloc_12, %alloc_49 : memref<9xf16> to memref<9xf16>
          %290 = vector.load %alloc_6[%c6, %c4] : memref<9x15xf16>, vector<9xf16>
          %291 = math.atan2 %5, %0 : tensor<9xf16>
          %292 = math.log10 %3 : tensor<9xf32>
          %293 = index.add %261, %262
          %294 = vector.multi_reduction <minui>, %37, %260 [] : vector<1xi32> to vector<1xi32>
          %295 = vector.bitcast %21 : vector<15xi32> to vector<15xi32>
          %296 = vector.broadcast %false : i1 to vector<i1>
          %297 = vector.transfer_write %296, %transposed[%c11] : vector<i1>, tensor<9xi1>
          %from_elements_50 = tensor.from_elements %c331483689_i32, %c331483689_i32, %c1455576218_i32, %c331483689_i32, %c724489780_i32, %c1455576218_i32, %c1455576218_i32, %c331483689_i32, %c1455576218_i32, %c724489780_i32, %c1455576218_i32, %c331483689_i32, %c724489780_i32, %c331483689_i32, %c724489780_i32, %c331483689_i32, %c1455576218_i32, %c724489780_i32, %c331483689_i32, %c724489780_i32, %c724489780_i32, %c331483689_i32, %c724489780_i32, %c331483689_i32, %c331483689_i32, %c1455576218_i32, %c331483689_i32, %c1455576218_i32, %c1455576218_i32, %c1455576218_i32, %c724489780_i32, %c724489780_i32, %c724489780_i32, %c724489780_i32, %c331483689_i32, %c331483689_i32, %c1455576218_i32, %c1455576218_i32, %c724489780_i32, %c1455576218_i32, %c724489780_i32, %c331483689_i32, %c1455576218_i32, %c724489780_i32, %c1455576218_i32, %c1455576218_i32, %c1455576218_i32, %c724489780_i32, %c724489780_i32, %c331483689_i32, %c331483689_i32, %c724489780_i32, %c331483689_i32, %c1455576218_i32, %c331483689_i32, %c724489780_i32, %c724489780_i32, %c1455576218_i32, %c331483689_i32, %c331483689_i32, %c331483689_i32, %c331483689_i32, %c724489780_i32, %c331483689_i32, %c1455576218_i32, %c724489780_i32, %c331483689_i32, %c724489780_i32, %c331483689_i32, %c331483689_i32, %c1455576218_i32, %c1455576218_i32, %c1455576218_i32, %c331483689_i32, %c1455576218_i32, %c331483689_i32, %c331483689_i32, %c1455576218_i32, %c724489780_i32, %c331483689_i32, %c331483689_i32, %c1455576218_i32, %c1455576218_i32, %c331483689_i32, %c724489780_i32, %c331483689_i32, %c331483689_i32, %c331483689_i32, %c1455576218_i32, %c724489780_i32, %c724489780_i32, %c1455576218_i32, %c724489780_i32, %c1455576218_i32, %c331483689_i32, %c724489780_i32, %c724489780_i32, %c331483689_i32, %c1455576218_i32, %c1455576218_i32, %c1455576218_i32, %c331483689_i32, %c724489780_i32, %c724489780_i32, %c1455576218_i32 : tensor<7x15xi32>
          %298 = arith.cmpi ule, %c331483689_i32, %c331483689_i32 : i32
          %299 = math.expm1 %5 : tensor<9xf16>
          memref.assume_alignment %alloc_17, 16 : memref<9xi16>
          memref.assume_alignment %70, 16 : memref<9xi32>
          %from_elements_51 = tensor.from_elements %in, %in_45, %c-8557_i16, %in, %c-8557_i16, %in_46, %in_46, %in_45, %c11071_i16, %c-8557_i16, %in_45, %c-8557_i16, %in, %c11071_i16, %in_46, %in_45, %c11071_i16, %in, %c-8557_i16, %c-8557_i16, %c11071_i16, %in_46, %c-8557_i16, %c11071_i16, %c11071_i16, %in, %in_45, %in, %in_46, %in_45, %c-8557_i16, %in_46, %c11071_i16, %c-8557_i16, %in_46, %in, %c-8557_i16, %in_46, %c11071_i16, %in, %in_45, %in_45, %c11071_i16, %in_45, %c11071_i16, %in_46, %c-8557_i16, %c-8557_i16, %in_45, %in, %in, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %in_46, %in_46, %c-8557_i16, %in_46, %in, %in_46, %in, %in_45, %in_46, %in_45, %in_45, %in_45, %c11071_i16, %in_46, %in_45, %in_45, %c-8557_i16, %in_45, %in, %in_46, %c11071_i16, %c11071_i16, %in_46, %in, %in_46, %in_46, %in, %in_45, %in, %in_45, %in_45, %c-8557_i16, %in_46, %in_46, %in_45, %in, %in_46, %c11071_i16, %in, %c-8557_i16, %in_46, %in_45, %in_46, %in, %in, %in, %in, %in_45, %c-8557_i16, %in_45 : tensor<7x15xi16>
          %300 = arith.floordivsi %in_45, %in : i16
          %301 = memref.atomic_rmw maxf %cst_3, %alloc_13[%c2, %c4] : (f32, memref<7x15xf32>) -> f32
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      memref.tensor_store %7, %alloc_11 : memref<9xi1>
      %270 = arith.subi %c573807638_i64, %c573807638_i64 : i64
      %271 = tensor.empty() : tensor<9xi1>
      %mapped_44 = linalg.map ins(%7 : tensor<9xi1>) outs(%271 : tensor<9xi1>)
        (%in: i1) {
          %275 = math.log10 %0 : tensor<9xf16>
          %alloca = memref.alloca() : memref<9xi64>
          %276 = bufferization.to_memref %6 : memref<9xi1>
          %splat_45 = tensor.splat %c11071_i16 : tensor<9x15xi16>
          %277 = math.sqrt %5 : tensor<9xf16>
          %278 = math.ipowi %2, %8 : tensor<9xi16>
          %279 = arith.xori %c11071_i16, %c11071_i16 : i16
          %280 = arith.divsi %c-8557_i16, %c11071_i16 : i16
          %281 = vector.create_mask %29, %64 : vector<9x15xi1>
          %282 = math.ipowi %expanded, %expanded : tensor<9x1xi64>
          %283 = index.sub %c14, %262
          %284 = math.absi %c1455576218_i32 : i32
          %285 = math.roundeven %reduced : tensor<f16>
          %286 = memref.load %alloc_16[%c6, %c14] : memref<9x15xf32>
          %287 = index.ceildivs %c6, %36
          memref.store %c1455576218_i32, %70[%c0] : memref<9xi32>
          %288 = arith.remui %c-8557_i16, %c-8557_i16 : i16
          memref.store %c11071_i16, %alloc_17[%c4] : memref<9xi16>
          %289 = math.round %24 : tensor<f16>
          %290 = arith.cmpi sle, %in, %true : i1
          %291 = arith.addf %cst_2, %cst_4 : f16
          %292 = arith.negf %cst_2 : f16
          %293 = arith.shli %c441531226_i64, %c573807638_i64 : i64
          %294 = index.casts %c573807638_i64 : i64 to index
          %295 = vector.broadcast %cst_1 : f32 to vector<9xf32>
          %296 = arith.remf %cst_4, %cst_4 : f16
          %297 = vector.broadcast %false : i1 to vector<9x15xi1>
          %298 = arith.divui %false, %false : i1
          %299 = math.tan %5 : tensor<9xf16>
          memref.store %c-8557_i16, %alloc_17[%c1] : memref<9xi16>
          %300 = arith.xori %true, %true : i1
          %301 = math.log1p %cst_0 : f32
          %false_46 = arith.constant false
          linalg.yield %false_46 : i1
        }
      %272 = arith.remf %cst_4, %cst_4 : f16
      %273 = math.copysign %0, %0 : tensor<9xf16>
      %274 = vector.splat %false : vector<9xi1>
    }
    %72 = math.copysign %5, %22 : tensor<9xf16>
    %73 = math.log2 %15 : tensor<9x15xf16>
    %expanded_23 = tensor.expand_shape %14 [[0], [1, 2]] : tensor<7x15xi1> into tensor<7x15x1xi1>
    %74 = math.floor %0 : tensor<9xf16>
    %75 = vector.broadcast %true : i1 to vector<7x15xi1>
    %76 = bufferization.to_memref %19 : memref<f16>
    %77 = vector.broadcast %cst_0 : f32 to vector<9x15xf32>
    %78 = vector.fma %77, %77, %77 : vector<9x15xf32>
    %79 = affine.if affine_set<(d0, d1) : (0 == 0, d0 * 32 - 16 >= 0, d0 * 33 - 128 == 0)>(%c2, %c9) -> memref<7x15xi1> {
      %248 = arith.shrsi %true, %true : i1
      %249 = math.atan2 %24, %23 : tensor<f16>
      %250 = arith.remui %false, %true : i1
      %251 = vector.broadcast %false : i1 to vector<15xi1>
      %252 = vector.maskedload %alloc_7[%c5], %251, %21 : memref<9xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
      %253 = affine.load %76[] : memref<f16>
      %inserted_42 = tensor.insert %c573807638_i64 into %expanded[%c4, %c0] : tensor<9x1xi64>
      scf.execute_region {
        %256 = arith.subi %c573807638_i64, %c441531226_i64 : i64
        %257 = arith.shrsi %c11071_i16, %c11071_i16 : i16
        %258 = math.floor %3 : tensor<9xf32>
        %259 = math.copysign %3, %3 : tensor<9xf32>
        %260 = arith.minui %c-8557_i16, %c11071_i16 : i16
        %261 = vector.matrix_multiply %252, %252 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
        %262 = math.fpowi %253, %c331483689_i32 : f16, i32
        %263 = math.exp2 %cst_5 : f32
        bufferization.dealloc_tensor %1 : tensor<7x15xi32>
        %264 = math.exp %0 : tensor<9xf16>
        %265 = tensor.empty() : tensor<1x15xi64>
        %266 = tensor.empty() : tensor<9x15xi64>
        %267 = linalg.matmul ins(%expanded, %265 : tensor<9x1xi64>, tensor<1x15xi64>) outs(%266 : tensor<9x15xi64>) -> tensor<9x15xi64>
        %268 = index.sub %c9, %c11
        %inserted_43 = tensor.insert %253 into %15[%c1, %c13] : tensor<9x15xf16>
        %269 = vector.splat %c15 : vector<9x15xindex>
        %270 = index.divs %c3, %c13
        %271 = vector.flat_transpose %21 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
        scf.yield
      }
      %254 = vector.broadcast %c-8557_i16 : i16 to vector<i16>
      %255 = vector.transfer_write %254, %11[%50] : vector<i16>, tensor<9xi16>
      affine.yield %alloc_19 : memref<7x15xi1>
    } else {
      %248 = memref.load %alloc_15[%c3] : memref<9xi32>
      %249 = arith.divui %false, %false : i1
      %splat_42 = tensor.splat %cst_4 : tensor<9xf16>
      %250 = vector.matrix_multiply %37, %37 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi32>, vector<1xi32>) -> vector<1xi32>
      %generated = tensor.generate %c13, %48 {
      ^bb0(%arg2: index, %arg3: index):
        %254 = math.cttz %6 : tensor<9xi1>
        %255 = math.log %0 : tensor<9xf16>
        %256 = math.cttz %9 : tensor<7x15xi16>
        bufferization.dealloc_tensor %11 : tensor<9xi16>
        tensor.yield %cst_3 : f32
      } : tensor<?x?xf32>
      %251 = math.absf %3 : tensor<9xf32>
      %252 = index.ceildivu %c4, %c0
      %253 = arith.divui %c-8557_i16, %c11071_i16 : i16
      affine.yield %alloc_19 : memref<7x15xi1>
    }
    %80 = vector.matrix_multiply %21, %21 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
    %81 = math.cttz %13 : tensor<7x15xi1>
    %82 = affine.for %arg2 = 0 to 62 iter_args(%arg3 = %7) -> (tensor<9xi1>) {
      affine.yield %12 : tensor<9xi1>
    }
    %83 = math.absf %24 : tensor<f16>
    %84 = vector.transpose %37, [0] : vector<1xi32> to vector<1xi32>
    %85 = arith.divsi %false, %false : i1
    %c1955411479_i32 = arith.constant 1955411479 : i32
    %86 = math.tanh %cst : f32
    %87 = arith.mulf %cst_1, %cst_0 : f32
    %88 = arith.remsi %c441531226_i64, %c573807638_i64 : i64
    %89 = arith.cmpi sle, %c331483689_i32, %c331483689_i32 : i32
    %90 = arith.floordivsi %false, %true : i1
    %91 = scf.index_switch %c5 -> tensor<9xi32> 
    case 1 {
      %248 = arith.remf %cst_2, %cst_2 : f16
      %249 = math.round %cst : f32
      %250 = affine.for %arg2 = 0 to 44 iter_args(%arg3 = %38) -> (memref<9xi16>) {
        affine.yield %alloc_8 : memref<9xi16>
      }
      %251 = math.floor %reduced : tensor<f16>
      %252 = arith.maxsi %c573807638_i64, %c573807638_i64 : i64
      %253 = math.cttz %7 : tensor<9xi1>
      scf.index_switch %c8 
      case 1 {
        %266 = vector.broadcast %false : i1 to vector<15xi1>
        %dest, %accumulated_value = vector.scan <and>, %75, %266 {inclusive = true, reduction_dim = 0 : i64} : vector<7x15xi1>, vector<15xi1>
        %267 = math.floor %3 : tensor<9xf32>
        %268 = arith.minui %false, %true : i1
        memref.store %c331483689_i32, %alloc_7[%c0] : memref<9xi32>
        %269 = index.floordivs %c2, %64
        %270 = arith.remf %cst_0, %cst_0 : f32
        memref.store %cst_4, %alloc_6[%c2, %c14] : memref<9x15xf16>
        memref.store %c724489780_i32, %alloc_15[%c8] : memref<9xi32>
        %271 = vector.broadcast %c0 : index to vector<2xindex>
        %272 = vector.broadcast %false : i1 to vector<2xi1>
        %273 = vector.broadcast %c331483689_i32 : i32 to vector<2xi32>
        vector.scatter %70[%c5] [%271], %272, %273 : memref<9xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
        %alloc_42 = memref.alloc() : memref<9xf16>
        %274 = math.log2 %cst_3 : f32
        %275 = vector.broadcast %c331483689_i32 : i32 to vector<9xi32>
        %276 = vector.broadcast %true : i1 to vector<9xi1>
        %277 = vector.maskedload %alloc_14[%c8, %c6], %276, %275 : memref<9x15xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
        %278 = vector.broadcast %c724489780_i32 : i32 to vector<9x15xi32>
        %279 = index.sub %c15, %c2
        %280 = memref.load %alloc_20[%c2] : memref<9xi32>
        %281 = math.rsqrt %0 : tensor<9xf16>
        scf.yield
      }
      default {
        %266 = arith.shrsi %c573807638_i64, %c573807638_i64 : i64
        %267 = arith.maxui %c-8557_i16, %c-8557_i16 : i16
        %268 = vector.broadcast %c331483689_i32 : i32 to vector<i32>
        vector.transfer_write %268, %alloc_7[%c7] : vector<i32>, memref<9xi32>
        %269 = arith.cmpi eq, %c331483689_i32, %c724489780_i32 : i32
        %270 = memref.load %alloc_17[%c0] : memref<9xi16>
        %271 = index.mul %50, %c3
        %272 = index.divs %29, %c4
        %273 = affine.min affine_map<(d0, d1) -> (d1 + 16, d1 + 32)>(%c9, %c1)
        %274 = vector.matrix_multiply %21, %21 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xi32>, vector<15xi32>) -> vector<1xi32>
        %275 = index.castu %c441531226_i64 : i64 to index
        %276 = math.tanh %cst_1 : f32
        %277 = arith.cmpi sle, %c441531226_i64, %c573807638_i64 : i64
        %278 = vector.load %alloc_12[%c8] : memref<9xf16>, vector<9x15xf16>
        %279 = math.round %5 : tensor<9xf16>
        %280 = math.absi %1 : tensor<7x15xi32>
        %from_elements_42 = tensor.from_elements %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_4, %cst_4, %cst_4, %cst_2 : tensor<9xf16>
      }
      %254 = math.expm1 %23 : tensor<f16>
      %255 = vector.broadcast %cst_5 : f32 to vector<15xf32>
      %256 = vector.insert %255, %77 [2] : vector<15xf32> into vector<9x15xf32>
      %257 = math.copysign %cst_2, %cst_2 : f16
      %258 = math.round %cst_0 : f32
      %259 = vector.broadcast %c11071_i16 : i16 to vector<2xi16>
      %260 = vector.broadcast %true : i1 to vector<2xi1>
      %261 = vector.maskedload %alloc_8[%c2], %260, %259 : memref<9xi16>, vector<2xi1>, vector<2xi16> into vector<2xi16>
      memref.store %c724489780_i32, %alloc_9[%c2, %c14] : memref<7x15xi32>
      %262 = vector.reduction <mul>, %261 : vector<2xi16> into i16
      %263 = index.castu %c1455576218_i32 : i32 to index
      %264 = math.ctpop %c1455576218_i32 : i32
      %265 = tensor.empty() : tensor<9xi32>
      scf.yield %265 : tensor<9xi32>
    }
    default {
      %248 = index.ceildivu %48, %c7
      %c14119_i16 = arith.constant 14119 : i16
      %249 = tensor.empty() : tensor<9x15xi16>
      %250 = vector.broadcast %c-8557_i16 : i16 to vector<9xi16>
      %251 = vector.broadcast %false : i1 to vector<9xi1>
      %252 = vector.broadcast %c724489780_i32 : i32 to vector<9xi32>
      %253 = vector.gather %249[%c0, %c10] [%252], %251, %250 : tensor<9x15xi16>, vector<9xi32>, vector<9xi1>, vector<9xi16> into vector<9xi16>
      %254 = vector.broadcast %false : i1 to vector<i1>
      %255 = vector.transfer_write %254, %12[%c1] : vector<i1>, tensor<9xi1>
      %256 = math.cos %reduced : tensor<f16>
      %257 = vector.reduction <maxsi>, %251 : vector<9xi1> into i1
      %258 = vector.broadcast %cst_5 : f32 to vector<2xf32>
      %259 = vector.broadcast %false : i1 to vector<2xi1>
      %260 = vector.maskedload %alloc_16[%c1, %c9], %259, %258 : memref<9x15xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      %261 = math.copysign %15, %15 : tensor<9x15xf16>
      %262 = math.cttz %c1455576218_i32 : i32
      %from_elements_42 = tensor.from_elements %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16 : tensor<9xi16>
      %263 = arith.mulf %cst_0, %cst_5 : f32
      %264 = arith.xori %c-8557_i16, %c11071_i16 : i16
      %265 = scf.while (%arg2 = %25) : (vector<i16>) -> vector<i16> {
        %270 = vector.broadcast %cst_0 : f32 to vector<7x15xf32>
        %271 = vector.fma %270, %270, %270 : vector<7x15xf32>
        %272 = vector.multi_reduction <or>, %252, %c331483689_i32 [0] : vector<9xi32> to i32
        %273 = index.sub %c2, %c5
        %274 = math.rsqrt %cst_3 : f32
        %275 = math.ceil %3 : tensor<9xf32>
        %from_elements_43 = tensor.from_elements %c331483689_i32, %c1455576218_i32, %c724489780_i32, %c724489780_i32, %272, %c1455576218_i32, %c1455576218_i32, %c331483689_i32, %c1455576218_i32 : tensor<9xi32>
        %276 = math.copysign %15, %15 : tensor<9x15xf16>
        %277 = index.castu %c1455576218_i32 : i32 to index
        scf.condition(%true) %25 : vector<i16>
      } do {
      ^bb0(%arg2: vector<i16>):
        %270 = vector.load %alloc_19[%c5, %c11] : memref<7x15xi1>, vector<9x15xi1>
        %271 = math.round %cst_2 : f16
        %272 = memref.atomic_rmw mulf %cst_2, %alloc_12[%c1] : (f16, memref<9xf16>) -> f16
        %273 = math.absf %cst : f32
        %274 = index.maxu %c13, %248
        %275 = arith.subi %false, %false : i1
        %276 = index.ceildivs %c13, %c10
        %277 = vector.extract_strided_slice %260 {offsets = [0], sizes = [2], strides = [1]} : vector<2xf32> to vector<2xf32>
        %278 = arith.addf %cst_2, %cst_4 : f16
        bufferization.dealloc_tensor %4 : tensor<9xi16>
        %279 = vector.broadcast %cst_3 : f32 to vector<9xf32>
        %280 = vector.fma %279, %279, %279 : vector<9xf32>
        %281 = vector.extract_strided_slice %251 {offsets = [6], sizes = [2], strides = [1]} : vector<9xi1> to vector<2xi1>
        %false_43 = index.bool.constant false
        memref.store %c724489780_i32, %alloc_20[%c6] : memref<9xi32>
        %282 = math.ipowi %11, %2 : tensor<9xi16>
        %283 = vector.broadcast %c1455576218_i32 : i32 to vector<7x15xi32>
        scf.yield %25 : vector<i16>
      }
      %266 = arith.remui %c331483689_i32, %c331483689_i32 : i32
      %267 = index.mul %c13, %c4
      %268 = arith.cmpi ule, %true, %false : i1
      %269 = tensor.empty() : tensor<9xi32>
      scf.yield %269 : tensor<9xi32>
    }
    %92 = index.divs %36, %c11
    %93 = math.cttz %17 : tensor<7x15xi32>
    %94 = arith.xori %c11071_i16, %c-8557_i16 : i16
    %95 = vector.shuffle %25, %25 [0, 1] : vector<i16>, vector<i16>
    %96 = arith.floordivsi %true, %false : i1
    %97 = arith.xori %c11071_i16, %c-8557_i16 : i16
    %98 = vector.broadcast %cst_5 : f32 to vector<15xf32>
    %99 = vector.insert %98, %78 [5] : vector<15xf32> into vector<9x15xf32>
    %100 = arith.shrsi %false, %true : i1
    %expanded_24 = tensor.expand_shape %10 [[0, 1]] : tensor<9xi64> into tensor<9x1xi64>
    %101 = affine.for %arg2 = 0 to 23 iter_args(%arg3 = %alloc_10) -> (memref<9x15xi32>) {
      affine.yield %alloc_14 : memref<9x15xi32>
    }
    %102 = vector.broadcast %true : i1 to vector<9xi1>
    scf.execute_region {
      %248 = vector.broadcast %cst_3 : f32 to vector<9xf32>
      %249 = bufferization.to_memref %12 : memref<9xi1>
      %250 = vector.broadcast %c724489780_i32 : i32 to vector<i32>
      vector.transfer_write %250, %alloc_15[%48] : vector<i32>, memref<9xi32>
      %251 = arith.shli %c11071_i16, %c-8557_i16 : i16
      %252 = math.cos %0 : tensor<9xf16>
      %253 = vector.flat_transpose %102 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
      %254 = vector.splat %c1 : vector<7x15xindex>
      %255 = index.sub %c7, %c6
      %256 = math.atan %0 : tensor<9xf16>
      %257 = scf.while (%arg2 = %cst_0) : (f32) -> f32 {
        %264 = bufferization.clone %alloc_7 : memref<9xi32> to memref<9xi32>
        memref.store %cst_2, %alloc_6[%c5, %c14] : memref<9x15xf16>
        %265 = index.sub %c11, %c14
        %266 = math.tanh %3 : tensor<9xf32>
        %expanded_42 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<7x15xi1> into tensor<7x15x1xi1>
        %inserted_43 = tensor.insert %cst_2 into %24[] : tensor<f16>
        %267 = arith.mulf %cst_3, %cst : f32
        vector.print %248 : vector<9xf32>
        scf.condition(%true) %cst_5 : f32
      } do {
      ^bb0(%arg2: f32):
        %inserted_42 = tensor.insert %c-8557_i16 into %11[%c5] : tensor<9xi16>
        %264 = index.add %c5, %48
        %265 = math.atan %24 : tensor<f16>
        %266 = math.atan2 %5, %5 : tensor<9xf16>
        %267 = math.expm1 %19 : tensor<f16>
        %268 = memref.load %alloc_13[%c1, %c11] : memref<7x15xf32>
        %269 = math.tanh %reduced : tensor<f16>
        %270 = affine.min affine_map<(d0, d1, d2) -> ((d2 + d1 ceildiv 2 - d1) ceildiv 128)>(%92, %c15, %c3)
        %271 = vector.load %alloc_15[%c4] : memref<9xi32>, vector<9xi32>
        %272 = arith.cmpi ne, %c331483689_i32, %c1455576218_i32 : i32
        %c238491676_i32 = arith.constant 238491676 : i32
        %273 = math.cos %reduced : tensor<f16>
        %274 = index.castu %c0 : index to i32
        %275 = math.ipowi %c573807638_i64, %c441531226_i64 : i64
        %276 = arith.ori %c441531226_i64, %c441531226_i64 : i64
        %277 = math.fpowi %cst_0, %c1455576218_i32 : f32, i32
        scf.yield %cst_1 : f32
      }
      %258 = arith.cmpi ne, %c11071_i16, %c11071_i16 : i16
      %259 = affine.min affine_map<(d0, d1, d2, d3) -> (d2)>(%36, %36, %29, %255)
      %260 = arith.shrsi %c-8557_i16, %c-8557_i16 : i16
      %261 = math.tan %cst_0 : f32
      %262 = math.round %5 : tensor<9xf16>
      %263 = arith.cmpi eq, %c573807638_i64, %c573807638_i64 : i64
      scf.yield
    }
    %103 = math.roundeven %15 : tensor<9x15xf16>
    %104 = math.ceil %5 : tensor<9xf16>
    %105 = math.cos %3 : tensor<9xf32>
    %106 = arith.shli %c1455576218_i32, %c724489780_i32 : i32
    %107 = arith.remui %c11071_i16, %c-8557_i16 : i16
    %108 = arith.remui %c331483689_i32, %c724489780_i32 : i32
    %109 = index.maxu %c1, %c11
    %110 = arith.floordivsi %c11071_i16, %c11071_i16 : i16
    %111 = math.floor %0 : tensor<9xf16>
    %112 = affine.load %alloc_6[%c6, %c9] : memref<9x15xf16>
    %113 = arith.cmpi ugt, %c11071_i16, %c11071_i16 : i16
    %114 = index.sub %50, %36
    %115 = math.round %5 : tensor<9xf16>
    %116 = vector.bitcast %102 : vector<9xi1> to vector<9xi1>
    memref.assume_alignment %alloc, 16 : memref<9xi64>
    %117 = index.divs %c7, %c4
    %118 = arith.divsi %c724489780_i32, %c1455576218_i32 : i32
    %119 = math.copysign %reduced, %reduced : tensor<f16>
    %alloc_25 = memref.alloc() : memref<9xi16>
    %120 = index.casts %c11071_i16 : i16 to index
    %false_26 = index.bool.constant false
    %121 = arith.ori %false, %false : i1
    %122 = arith.andi %false_26, %true : i1
    %123 = math.ctpop %8 : tensor<9xi16>
    %c26960_i16 = arith.constant 26960 : i16
    %124 = index.sub %c0, %c15
    %125 = tensor.empty() : tensor<9xf16>
    %mapped = linalg.map ins(%5, %22 : tensor<9xf16>, tensor<9xf16>) outs(%125 : tensor<9xf16>)
      (%in: f16, %in_42: f16) {
        %248 = math.log %0 : tensor<9xf16>
        memref.assume_alignment %alloc_13, 16 : memref<7x15xf32>
        %249 = vector.broadcast %c331483689_i32 : i32 to vector<9xi32>
        %250 = vector.maskedload %alloc_10[%c6, %c10], %116, %249 : memref<9x15xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
        %251 = index.sub %124, %48
        %252 = tensor.empty() : tensor<9x1xi64>
        %mapped_43 = linalg.map ins(%expanded_24, %expanded_24, %expanded_24 : tensor<9x1xi64>, tensor<9x1xi64>, tensor<9x1xi64>) outs(%252 : tensor<9x1xi64>)
          (%in_47: i64, %in_48: i64, %in_49: i64) {
            %275 = arith.remsi %false_26, %true : i1
            memref.store %cst_0, %alloc_16[%c6, %c11] : memref<9x15xf32>
            %276 = memref.load %alloc_13[%c5, %c6] : memref<7x15xf32>
            %277 = arith.xori %in_47, %in_49 : i64
            %278 = vector.splat %c573807638_i64 : vector<9x15xi64>
            %279 = arith.xori %in_48, %in_48 : i64
            %280 = arith.minui %c441531226_i64, %in_48 : i64
            %281 = arith.divui %in_47, %in_47 : i64
            %282 = index.casts %c0 : index to i32
            memref.copy %alloc_8, %38 : memref<9xi16> to memref<9xi16>
            %283 = math.exp2 %24 : tensor<f16>
            %284 = math.ipowi %7, %7 : tensor<9xi1>
            %285 = arith.mulf %cst_1, %cst_5 : f32
            %286 = math.floor %15 : tensor<9x15xf16>
            %287 = vector.broadcast %c-8557_i16 : i16 to vector<9xi16>
            %288 = vector.transfer_write %287, %9[%c3, %c3] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi16>, tensor<7x15xi16>
            %289 = math.exp %24 : tensor<f16>
            %inserted_50 = tensor.insert %in_48 into %10[%c0] : tensor<9xi64>
            %290 = math.round %cst_4 : f16
            %291 = math.cos %cst : f32
            %292 = math.round %23 : tensor<f16>
            %dest, %accumulated_value = vector.scan <add>, %77, %98 {inclusive = true, reduction_dim = 0 : i64} : vector<9x15xf32>, vector<15xf32>
            %293 = math.sqrt %15 : tensor<9x15xf16>
            %expanded_51 = tensor.expand_shape %125 [[0, 1]] : tensor<9xf16> into tensor<9x1xf16>
            %294 = math.roundeven %3 : tensor<9xf32>
            %295 = arith.remsi %c11071_i16, %c11071_i16 : i16
            %cst_52 = arith.constant 4.278400e+04 : f16
            %296 = bufferization.to_memref %15 : memref<9x15xf16>
            %297 = vector.load %alloc_7[%c6] : memref<9xi32>, vector<9x15xi32>
            %298 = index.mul %109, %109
            %alloc_53 = memref.alloc() : memref<9x15xi32>
            %299 = math.ipowi %in_48, %c441531226_i64 : i64
            %300 = math.exp2 %24 : tensor<f16>
            %c1_i64 = arith.constant 1 : i64
            linalg.yield %c1_i64 : i64
          }
        %253 = vector.splat %cst_1 : vector<9x15xf32>
        %254 = index.castu %c1455576218_i32 : i32 to index
        %255 = vector.multi_reduction <xor>, %75, %false [0, 1] : vector<7x15xi1> to i1
        %splat_44 = tensor.splat %c441531226_i64 : tensor<7x15xi64>
        %256 = math.fma %cst, %cst_5, %cst_3 : f32
        memref.store %c11071_i16, %38[%c1] : memref<9xi16>
        memref.copy %alloc_20, %70 : memref<9xi32> to memref<9xi32>
        %257 = vector.bitcast %75 : vector<7x15xi1> to vector<7x15xi1>
        %258 = math.copysign %cst_5, %cst_5 : f32
        %259 = index.floordivs %c6, %c13
        %260 = math.log10 %cst_5 : f32
        %261 = arith.remsi %c-8557_i16, %c11071_i16 : i16
        %alloc_45 = memref.alloc() : memref<7x15xf32>
        %262 = affine.apply affine_map<(d0, d1, d2, d3) -> (((d1 ceildiv 2 - d3 * 8) floordiv 64) ceildiv 4)>(%c10, %c5, %114, %114)
        %263 = arith.andi %true, %false_26 : i1
        %264 = math.round %125 : tensor<9xf16>
        %265 = affine.load %alloc_11[%c10] : memref<9xi1>
        %266 = affine.apply affine_map<(d0) -> ((d0 * 8) floordiv 64 - (d0 floordiv 32 - d0 mod 2 - 1))>(%c13)
        %267 = arith.subi %c11071_i16, %c11071_i16 : i16
        %268 = arith.remui %false, %true : i1
        %269 = arith.andi %255, %false : i1
        %270 = math.powf %in_42, %112 : f16
        %271 = arith.remui %255, %265 : i1
        affine.for %arg2 = 0 to 16 {
        }
        %272 = vector.shuffle %249, %249 [3, 4, 5, 6, 7, 9, 11, 12, 16, 17] : vector<9xi32>, vector<9xi32>
        %273 = scf.if %265 -> (memref<7x15xi32>) {
          memref.store %in_42, %alloc_6[%c7, %c2] : memref<9x15xf16>
          %275 = vector.transpose %249, [0] : vector<9xi32> to vector<9xi32>
          %276 = math.log %23 : tensor<f16>
          %277 = math.exp2 %3 : tensor<9xf32>
          %278 = vector.create_mask %c6, %259 : vector<7x15xi1>
          memref.tensor_store %5, %alloc_12 : memref<9xf16>
          %279 = arith.xori %255, %false_26 : i1
          %280 = arith.addi %265, %255 : i1
          scf.yield %alloc_9 : memref<7x15xi32>
        } else {
          %275 = math.log10 %22 : tensor<9xf16>
          vector.print %75 : vector<7x15xi1>
          %276 = math.expm1 %0 : tensor<9xf16>
          %277 = math.atan2 %cst_2, %cst_4 : f16
          %278 = math.log %cst_1 : f32
          %279 = index.castu %false_26 : i1 to index
          %280 = math.ctpop %true : i1
          %281 = math.atan2 %reduced, %23 : tensor<f16>
          scf.yield %alloc_9 : memref<7x15xi32>
        }
        %274 = arith.divsi %false, %true : i1
        %cst_46 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_46 : f16
      }
    %126 = arith.ceildivsi %c-8557_i16, %c-8557_i16 : i16
    %127 = vector.insertelement %cst, %98[%48 : index] : vector<15xf32>
    %128 = memref.load %alloc_18[%c4] : memref<9xf32>
    %129 = arith.divui %false_26, %false_26 : i1
    %130 = math.tan %cst_3 : f32
    %131 = math.ipowi %2, %8 : tensor<9xi16>
    memref.copy %38, %alloc_17 : memref<9xi16> to memref<9xi16>
    %132 = math.cos %24 : tensor<f16>
    %133 = math.rsqrt %24 : tensor<f16>
    %134 = arith.xori %true, %false_26 : i1
    %splat = tensor.splat %c331483689_i32 : tensor<7x15xi32>
    %135 = index.floordivs %114, %92
    %from_elements_27 = tensor.from_elements %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64 : tensor<9x15xi64>
    %136 = math.log2 %cst_2 : f16
    %true_28 = index.bool.constant true
    %137 = arith.minui %c573807638_i64, %c441531226_i64 : i64
    %138 = math.exp2 %3 : tensor<9xf32>
    %from_elements_29 = tensor.from_elements %c11071_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16 : tensor<9xi16>
    %139 = arith.maxsi %c-8557_i16, %c-8557_i16 : i16
    %140 = arith.remsi %false_26, %true : i1
    %141 = memref.load %alloc_15[%c7] : memref<9xi32>
    %142 = vector.insertelement %cst_3, %98[%c1 : index] : vector<15xf32>
    %143 = memref.alloca_scope  -> (memref<9x15xi64>) {
      %248 = math.rsqrt %3 : tensor<9xf32>
      %249 = index.mul %c13, %c14
      %250 = arith.maxsi %c573807638_i64, %c441531226_i64 : i64
      %251 = math.log2 %15 : tensor<9x15xf16>
      %alloc_42 = memref.alloc() : memref<7x15xi16>
      %252 = arith.remf %cst_5, %cst : f32
      %253 = index.sub %109, %c11
      %254 = arith.maxsi %c724489780_i32, %c331483689_i32 : i32
      %dest, %accumulated_value = vector.scan <minf>, %78, %98 {inclusive = true, reduction_dim = 0 : i64} : vector<9x15xf32>, vector<15xf32>
      %255 = arith.ori %c-8557_i16, %c-8557_i16 : i16
      %256 = math.log10 %cst_2 : f16
      %257 = math.round %22 : tensor<9xf16>
      %258 = vector.broadcast %92 : index to vector<9xindex>
      %259 = vector.broadcast %c-8557_i16 : i16 to vector<9xi16>
      vector.scatter %alloc_8[%c6] [%258], %102, %259 : memref<9xi16>, vector<9xindex>, vector<9xi1>, vector<9xi16>
      %260 = vector.broadcast %cst_0 : f32 to vector<2xf32>
      %261 = vector.broadcast %true_28 : i1 to vector<2xi1>
      %262 = vector.maskedload %alloc_13[%c1, %c4], %261, %260 : memref<7x15xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      %263 = index.castu %c2 : index to i32
      %264 = math.atan2 %22, %22 : tensor<9xf16>
      %265 = vector.broadcast %cst_0 : f32 to vector<9xf32>
      %266 = vector.fma %265, %265, %265 : vector<9xf32>
      %267 = arith.maxsi %true_28, %true_28 : i1
      %268 = affine.for %arg2 = 0 to 17 iter_args(%arg3 = %cst_3) -> (f32) {
        affine.yield %cst : f32
      }
      %269 = math.log10 %cst_4 : f16
      %270 = math.exp2 %112 : f16
      %271 = math.powf %cst_0, %cst_0 : f32
      %272 = affine.min affine_map<(d0, d1, d2) -> (((d2 ceildiv 2) mod 4) * 128)>(%253, %c7, %c6)
      %273 = arith.remui %c11071_i16, %c-8557_i16 : i16
      %274 = affine.min affine_map<(d0, d1, d2) -> ((-d1) mod 64, -d1)>(%c11, %c9, %c2)
      memref.assume_alignment %alloc_18, 16 : memref<9xf32>
      memref.store %c1455576218_i32, %alloc_14[%c2, %c10] : memref<9x15xi32>
      %275 = vector.flat_transpose %265 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
      memref.tensor_store %14, %alloc_19 : memref<7x15xi1>
      %276 = math.rsqrt %15 : tensor<9x15xf16>
      %277 = arith.maxf %cst_2, %cst_2 : f16
      %278 = index.ceildivu %117, %253
      %alloc_43 = memref.alloc() : memref<9x15xi64>
      memref.alloca_scope.return %alloc_43 : memref<9x15xi64>
    }
    affine.store %c-8557_i16, %alloc_17[%c1] : memref<9xi16>
    %144 = index.sub %c13, %c14
    memref.store %c724489780_i32, %alloc_20[%c5] : memref<9xi32>
    %145 = math.log %cst_0 : f32
    %146 = arith.ceildivsi %c331483689_i32, %c331483689_i32 : i32
    %alloc_30 = memref.alloc() : memref<9xi32>
    %147 = math.fpowi %cst_5, %c331483689_i32 : f32, i32
    %148 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, d2 * 16, d2 * 16, d3 + d2 + d0)>(%92, %64, %135, %48)
    %149 = affine.if affine_set<(d0, d1, d2, d3) : (d0 floordiv 2 >= 0)>(%c1, %c2, %c7, %c7) -> memref<9xf32> {
      %248 = math.rsqrt %19 : tensor<f16>
      %249 = scf.execute_region -> index {
        %256 = math.powf %23, %23 : tensor<f16>
        %expanded_43 = tensor.expand_shape %8 [[0, 1]] : tensor<9xi16> into tensor<9x1xi16>
        %257 = affine.max affine_map<(d0) -> (d0 mod 128, d0 mod 128 - (d0 + d0 * 2 + 129 + 64), d0 * 2 + 1)>(%135)
        %258 = vector.load %38[%c7] : memref<9xi16>, vector<7x15xi16>
        %259 = arith.mulf %cst_1, %cst_1 : f32
        %260 = vector.splat %64 : vector<9xindex>
        %261 = math.cttz %14 : tensor<7x15xi1>
        %262 = math.roundeven %0 : tensor<9xf16>
        %inserted_44 = tensor.insert %c724489780_i32 into %17[%c1, %c10] : tensor<7x15xi32>
        %263 = math.cos %0 : tensor<9xf16>
        %264 = arith.minui %c573807638_i64, %c441531226_i64 : i64
        %265 = math.fma %23, %23, %24 : tensor<f16>
        %266 = arith.shli %c11071_i16, %c11071_i16 : i16
        %267 = arith.xori %c11071_i16, %c-8557_i16 : i16
        memref.assume_alignment %alloc_11, 8 : memref<9xi1>
        memref.tensor_store %10, %alloc : memref<9xi64>
        scf.yield %257 : index
      }
      %splat_42 = tensor.splat %cst_4 : tensor<9xf16>
      %250 = vector.broadcast %c441531226_i64 : i64 to vector<i64>
      %251 = vector.transfer_write %250, %10[%c9] : vector<i64>, tensor<9xi64>
      %252 = arith.minf %cst_5, %cst_0 : f32
      %253 = math.log10 %0 : tensor<9xf16>
      %254 = math.exp2 %15 : tensor<9x15xf16>
      %255 = arith.minf %cst_0, %cst_3 : f32
      affine.yield %alloc_18 : memref<9xf32>
    } else {
      %248 = vector.load %alloc_11[%c4] : memref<9xi1>, vector<9xi1>
      %249 = index.castu %c-8557_i16 : i16 to index
      %250 = index.castu %c441531226_i64 : i64 to index
      %251 = math.ipowi %1, %1 : tensor<7x15xi32>
      %252 = vector.broadcast %cst_5 : f32 to vector<9xf32>
      %253 = vector.fma %252, %252, %252 : vector<9xf32>
      %254 = arith.xori %c724489780_i32, %c1455576218_i32 : i32
      %255 = arith.xori %c-8557_i16, %c11071_i16 : i16
      affine.store %c724489780_i32, %alloc_20[%c13] : memref<9xi32>
      affine.yield %alloc_18 : memref<9xf32>
    }
    %150 = vector.flat_transpose %21 {columns = 5 : i32, rows = 3 : i32} : vector<15xi32> -> vector<15xi32>
    %151 = arith.cmpi ne, %c441531226_i64, %c573807638_i64 : i64
    affine.store %cst_2, %alloc_6[%c6, %c8] : memref<9x15xf16>
    scf.index_switch %29 
    case 1 {
      %248 = vector.broadcast %true_28 : i1 to vector<15xi1>
      %249 = vector.maskedload %alloc_11[%c0], %248, %248 : memref<9xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
      %250 = scf.execute_region -> memref<9xf32> {
        %266 = arith.ceildivsi %c-8557_i16, %c11071_i16 : i16
        %267 = vector.create_mask %c1 : vector<9xi1>
        %268 = arith.divui %c441531226_i64, %c573807638_i64 : i64
        %269 = vector.transpose %31, [] : vector<f32> to vector<f32>
        %cst_43 = arith.constant 1.37022797E+9 : f32
        %alloca = memref.alloca() : memref<9xi64>
        %270 = arith.mulf %cst, %cst_1 : f32
        %271 = vector.broadcast %c724489780_i32 : i32 to vector<7x15xi32>
        %272 = arith.addf %cst_3, %cst_0 : f32
        affine.store %c573807638_i64, %143[%c6, %c7] : memref<9x15xi64>
        %273 = vector.shuffle %98, %98 [0, 1, 5, 6, 7, 8, 10, 12, 13, 14, 17, 21, 24, 26, 27, 29] : vector<15xf32>, vector<15xf32>
        %274 = vector.broadcast %true_28 : i1 to vector<i1>
        %275 = vector.transfer_write %274, %expanded_23[%c13, %c15, %50] : vector<i1>, tensor<7x15x1xi1>
        memref.store %c724489780_i32, %alloc_10[%c6, %c7] : memref<9x15xi32>
        %276 = math.exp %22 : tensor<9xf16>
        %277 = vector.transpose %98, [0] : vector<15xf32> to vector<15xf32>
        %278 = arith.cmpi eq, %c441531226_i64, %c441531226_i64 : i64
        scf.yield %alloc_18 : memref<9xf32>
      }
      %251 = arith.mulf %cst_0, %cst_5 : f32
      %252 = index.mul %c10, %120
      %253 = vector.broadcast %cst_0 : f32 to vector<9xf32>
      %254 = vector.fma %253, %253, %253 : vector<9xf32>
      %255 = arith.shrsi %c-8557_i16, %c11071_i16 : i16
      %256 = vector.broadcast %true : i1 to vector<7xi1>
      %257 = vector.maskedload %alloc_19[%c6, %c7], %256, %256 : memref<7x15xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
      %258 = math.atan %0 : tensor<9xf16>
      %259 = arith.divui %c11071_i16, %c-8557_i16 : i16
      %260 = memref.alloca_scope  -> (memref<9x15xi32>) {
        %266 = math.copysign %15, %15 : tensor<9x15xf16>
        %267 = arith.cmpi ne, %true, %true : i1
        %268 = math.cttz %c441531226_i64 : i64
        %expanded_43 = tensor.expand_shape %12 [[0, 1]] : tensor<9xi1> into tensor<9x1xi1>
        %269 = arith.ceildivsi %c-8557_i16, %c11071_i16 : i16
        %270 = index.sub %c10, %c3
        memref.assume_alignment %alloc_12, 1 : memref<9xf16>
        bufferization.dealloc_tensor %23 : tensor<f16>
        %271 = index.castu %120 : index to i32
        %272 = math.absi %2 : tensor<9xi16>
        %273 = arith.divf %cst_4, %cst_4 : f16
        %274 = math.round %15 : tensor<9x15xf16>
        %275 = index.ceildivs %148, %c0
        %c25958_i16 = arith.constant 25958 : i16
        %276 = math.expm1 %cst_0 : f32
        %277 = arith.addi %true, %true_28 : i1
        %alloc_44 = memref.alloc() : memref<9xi1>
        memref.copy %alloc_11, %alloc_44 : memref<9xi1> to memref<9xi1>
        affine.store %cst, %alloc_16[%c0, %c6] : memref<9x15xf32>
        %278 = math.expm1 %cst : f32
        %279 = vector.load %alloc_10[%c4, %c13] : memref<9x15xi32>, vector<7x15xi32>
        %280 = math.ipowi %expanded_43, %expanded_43 : tensor<9x1xi1>
        %281 = math.tan %22 : tensor<9xf16>
        %282 = math.atan2 %0, %5 : tensor<9xf16>
        %283 = arith.divf %cst_4, %cst_2 : f16
        %284 = tensor.empty() : tensor<9xi32>
        %285 = math.fpowi %0, %284 : tensor<9xf16>, tensor<9xi32>
        %286 = affine.min affine_map<(d0, d1, d2) -> (((d2 mod 128) * 8) mod 16, d1 - 1)>(%29, %50, %252)
        %287 = math.floor %cst_3 : f32
        %288 = vector.bitcast %248 : vector<15xi1> to vector<15xi1>
        memref.assume_alignment %76, 16 : memref<f16>
        %289 = vector.broadcast %cst_0 : f32 to vector<9xf32>
        %290 = vector.fma %289, %254, %289 : vector<9xf32>
        %291 = vector.matrix_multiply %116, %248 {lhs_columns = 3 : i32, lhs_rows = 3 : i32, rhs_columns = 5 : i32} : (vector<9xi1>, vector<15xi1>) -> vector<15xi1>
        %292 = vector.matrix_multiply %291, %256 {lhs_columns = 1 : i32, lhs_rows = 15 : i32, rhs_columns = 7 : i32} : (vector<15xi1>, vector<7xi1>) -> vector<105xi1>
        memref.alloca_scope.return %alloc_14 : memref<9x15xi32>
      }
      %true_42 = index.bool.constant true
      %261 = math.floor %112 : f16
      %262 = index.castu %c6 : index to i32
      %263 = vector.insertelement %cst, %254[%120 : index] : vector<9xf32>
      %264 = index.casts %c724489780_i32 : i32 to index
      %265 = math.fma %cst_1, %cst_5, %cst : f32
      scf.yield
    }
    case 2 {
      %248 = arith.remsi %true, %true : i1
      %249 = vector.broadcast %c11071_i16 : i16 to vector<15xi16>
      %250 = vector.broadcast %true_28 : i1 to vector<15xi1>
      %251 = vector.maskedload %alloc_17[%c3], %250, %249 : memref<9xi16>, vector<15xi1>, vector<15xi16> into vector<15xi16>
      %252 = arith.remui %c1455576218_i32, %c331483689_i32 : i32
      %cast = tensor.cast %6 : tensor<9xi1> to tensor<?xi1>
      %253 = index.sub %c8, %144
      %254 = math.fpowi %cst_4, %c724489780_i32 : f16, i32
      %255 = arith.divsi %c11071_i16, %c11071_i16 : i16
      %256 = bufferization.clone %alloc_6 : memref<9x15xf16> to memref<9x15xf16>
      %257 = arith.remf %cst_1, %cst_3 : f32
      %false_42 = index.bool.constant false
      memref.copy %70, %alloc_7 : memref<9xi32> to memref<9xi32>
      %258 = arith.shrsi %false_26, %true_28 : i1
      %from_elements_43 = tensor.from_elements %cst_0, %cst, %cst_1, %cst_0, %cst_1, %cst_5, %cst_5, %cst_5, %cst_3, %cst_1, %cst, %cst_1, %cst_1, %cst_3, %cst_3, %cst, %cst_5, %cst, %cst_5, %cst_1, %cst, %cst_1, %cst_3, %cst, %cst_5, %cst_5, %cst_0, %cst_0, %cst, %cst, %cst_3, %cst_0, %cst_1, %cst, %cst, %cst, %cst_1, %cst_0, %cst_0, %cst_3, %cst, %cst, %cst_5, %cst_5, %cst_3, %cst_0, %cst_3, %cst_5, %cst_5, %cst_3, %cst_1, %cst, %cst_1, %cst, %cst_3, %cst_1, %cst, %cst_0, %cst_5, %cst_3, %cst, %cst_5, %cst_3, %cst_3, %cst_1, %cst, %cst_0, %cst_1, %cst, %cst_5, %cst_1, %cst_5, %cst_5, %cst_1, %cst, %cst, %cst_5, %cst_3, %cst, %cst_5, %cst, %cst_5, %cst_3, %cst_5, %cst_1, %cst_0, %cst_0, %cst_1, %cst, %cst_0, %cst_0, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_0, %cst_1, %cst_0, %cst_5, %cst_1, %cst_5 : tensor<7x15xf32>
      %dest, %accumulated_value = vector.scan <maxf>, %78, %98 {inclusive = false, reduction_dim = 0 : i64} : vector<9x15xf32>, vector<15xf32>
      %inserted_44 = tensor.insert %c-8557_i16 into %8[%c7] : tensor<9xi16>
      %259 = math.round %15 : tensor<9x15xf16>
      scf.yield
    }
    default {
      %248 = index.divs %148, %c2
      %249 = scf.while (%arg2 = %37) : (vector<1xi32>) -> vector<1xi32> {
        %265 = arith.remf %cst, %cst_1 : f32
        %dest, %accumulated_value = vector.scan <minf>, %77, %98 {inclusive = false, reduction_dim = 0 : i64} : vector<9x15xf32>, vector<15xf32>
        %266 = arith.andi %true_28, %true : i1
        %267 = arith.divsi %c-8557_i16, %c-8557_i16 : i16
        %268 = arith.mulf %cst_4, %112 : f16
        %269 = vector.broadcast %cst_0 : f32 to vector<7x15xf32>
        %270 = vector.fma %269, %269, %269 : vector<7x15xf32>
        %271 = math.cttz %true_28 : i1
        %272 = index.add %c3, %c1
        scf.condition(%false) %37 : vector<1xi32>
      } do {
      ^bb0(%arg2: vector<1xi32>):
        %265 = index.maxs %144, %c0
        %266 = index.mul %c8, %124
        %expanded_43 = tensor.expand_shape %3 [[0, 1]] : tensor<9xf32> into tensor<9x1xf32>
        %267 = math.atan2 %19, %reduced : tensor<f16>
        %268 = index.castu %114 : index to i32
        %269 = arith.remf %112, %cst_4 : f16
        %270 = math.tan %cst : f32
        %271 = vector.broadcast %c1455576218_i32 : i32 to vector<2xi32>
        %272 = vector.broadcast %false : i1 to vector<2xi1>
        %273 = vector.maskedload %70[%c8], %272, %271 : memref<9xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %274 = math.cos %reduced : tensor<f16>
        %275 = vector.load %143[%c2, %c4] : memref<9x15xi64>, vector<7x15xi64>
        %276 = arith.remui %c441531226_i64, %c441531226_i64 : i64
        %277 = math.log10 %125 : tensor<9xf16>
        %278 = math.expm1 %15 : tensor<9x15xf16>
        %splat_44 = tensor.splat %c-8557_i16 : tensor<7x15xi16>
        %279 = vector.extract %21[10] : vector<15xi32>
        %280 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - 4, d2 * 32, d2 * 128 + 16)>(%135, %c9, %c1, %248)
        scf.yield %80 : vector<1xi32>
      }
      %250 = vector.broadcast %148 : index to vector<2xindex>
      %251 = vector.broadcast %false : i1 to vector<2xi1>
      %252 = vector.broadcast %cst_3 : f32 to vector<2xf32>
      vector.scatter %alloc_18[%c7] [%250], %251, %252 : memref<9xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
      %253 = arith.mulf %cst_5, %cst : f32
      %254 = arith.addf %112, %112 : f16
      bufferization.dealloc_tensor %7 : tensor<9xi1>
      %255 = arith.shli %false_26, %false : i1
      %256 = vector.broadcast %cst_2 : f16 to vector<2xf16>
      %257 = vector.broadcast %true_28 : i1 to vector<2xi1>
      %258 = vector.maskedload %alloc_6[%c1, %c12], %257, %256 : memref<9x15xf16>, vector<2xi1>, vector<2xf16> into vector<2xf16>
      memref.store %c-8557_i16, %alloc_17[%c4] : memref<9xi16>
      %259 = math.atan2 %3, %3 : tensor<9xf32>
      %260 = vector.broadcast %cst_1 : f32 to vector<9x15xf32>
      %261 = vector.fma %260, %77, %260 : vector<9x15xf32>
      bufferization.dealloc_tensor %reduced : tensor<f16>
      %true_42 = arith.constant true
      %262 = arith.negf %cst_3 : f32
      %263 = vector.bitcast %98 : vector<15xf32> to vector<15xf32>
      %264 = math.absi %c724489780_i32 : i32
    }
    %152 = vector.insertelement %cst_5, %98[%117 : index] : vector<15xf32>
    bufferization.dealloc_tensor %expanded : tensor<9x1xi64>
    %153 = vector.load %alloc_6[%c4, %c12] : memref<9x15xf16>, vector<7x15xf16>
    %154 = arith.addf %cst_5, %cst_5 : f32
    memref.store %c724489780_i32, %alloc_9[%c2, %c3] : memref<7x15xi32>
    %155 = tensor.empty() : tensor<f16>
    %mapped_31 = linalg.map ins(%reduced : tensor<f16>) outs(%155 : tensor<f16>)
      (%in: f16) {
        %rank = tensor.rank %7 : tensor<9xi1>
        %248 = math.roundeven %cst_0 : f32
        %249 = math.ctpop %4 : tensor<9xi16>
        %250 = math.log2 %15 : tensor<9x15xf16>
        %251 = vector.broadcast %cst_2 : f16 to vector<15xf16>
        %252 = vector.broadcast %false : i1 to vector<15xi1>
        %253 = vector.maskedload %alloc_6[%c0, %c4], %252, %251 : memref<9x15xf16>, vector<15xi1>, vector<15xf16> into vector<15xf16>
        %254 = arith.divsi %c724489780_i32, %c724489780_i32 : i32
        %255 = math.powf %19, %155 : tensor<f16>
        %256 = vector.extract %252[12] : vector<15xi1>
        %257 = index.ceildivu %48, %c12
        %258 = math.sqrt %cst : f32
        memref.assume_alignment %alloc_20, 4 : memref<9xi32>
        %259 = vector.broadcast %c11071_i16 : i16 to vector<i16>
        %260 = vector.transfer_write %259, %2[%c5] : vector<i16>, tensor<9xi16>
        %261 = arith.xori %true_28, %true_28 : i1
        %262 = math.sqrt %3 : tensor<9xf32>
        %263 = scf.execute_region -> i1 {
          %279 = arith.floordivsi %c11071_i16, %c-8557_i16 : i16
          %280 = math.round %cst_1 : f32
          %281 = index.sub %114, %117
          %282 = arith.remui %false, %true : i1
          %283 = vector.broadcast %cst_5 : f32 to vector<7x15xf32>
          %284 = vector.fma %283, %283, %283 : vector<7x15xf32>
          memref.tensor_store %from_elements_27, %143 : memref<9x15xi64>
          %c1713996570_i64 = arith.constant 1713996570 : i64
          %285 = vector.broadcast %c1455576218_i32 : i32 to vector<15x15xi32>
          %286 = vector.outerproduct %150, %21, %285 {kind = #vector.kind<minsi>} : vector<15xi32>, vector<15xi32>
          %287 = arith.shli %c-8557_i16, %c-8557_i16 : i16
          %from_elements_45 = tensor.from_elements %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16 : tensor<9xi16>
          %288 = index.mul %29, %144
          %289 = math.ceil %24 : tensor<f16>
          %290 = arith.muli %true_28, %true : i1
          %291 = arith.shli %c331483689_i32, %c1455576218_i32 : i32
          %292 = index.divs %c5, %281
          %293 = vector.insert %251, %153 [0] : vector<15xf16> into vector<7x15xf16>
          scf.yield %true_28 : i1
        }
        %264 = arith.remf %cst, %cst_0 : f32
        %265 = arith.andi %false_26, %263 : i1
        %266 = vector.broadcast %c1455576218_i32 : i32 to vector<2xi32>
        %267 = vector.transfer_write %266, %1[%c3, %c2] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xi32>, tensor<7x15xi32>
        %268 = math.cos %cst_5 : f32
        %269 = arith.andi %c-8557_i16, %c-8557_i16 : i16
        %270 = math.ctpop %13 : tensor<7x15xi1>
        %271 = vector.load %alloc_14[%c2, %c7] : memref<9x15xi32>, vector<9xi32>
        %272 = math.log2 %3 : tensor<9xf32>
        %splat_42 = tensor.splat %cst_2 : tensor<7x15xf16>
        %273 = memref.atomic_rmw minu %c1455576218_i32, %alloc_7[%c6] : (i32, memref<9xi32>) -> i32
        %274 = vector.matrix_multiply %266, %150 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 15 : i32} : (vector<2xi32>, vector<15xi32>) -> vector<30xi32>
        %275 = vector.multi_reduction <add>, %271, %271 [] : vector<9xi32> to vector<9xi32>
        %276 = index.casts %c6 : index to i32
        %277 = bufferization.to_memref %from_elements_29 : memref<9xi16>
        %inserted_43 = tensor.insert %true_28 into %7[%c0] : tensor<9xi1>
        memref.store %c724489780_i32, %70[%c0] : memref<9xi32>
        %278 = arith.xori %c1455576218_i32, %c331483689_i32 : i32
        %cst_44 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_44 : f16
      }
    %156 = arith.floordivsi %c1455576218_i32, %c331483689_i32 : i32
    %157 = math.floor %5 : tensor<9xf16>
    %158 = vector.bitcast %116 : vector<9xi1> to vector<9xi1>
    %159 = arith.divsi %c331483689_i32, %c331483689_i32 : i32
    %160 = memref.load %alloc_7[%c6] : memref<9xi32>
    %161 = arith.divsi %true_28, %false : i1
    %162 = math.log10 %3 : tensor<9xf32>
    %163 = math.expm1 %112 : f16
    %164 = vector.bitcast %158 : vector<9xi1> to vector<9xi1>
    affine.for %arg2 = 0 to 22 {
    }
    %165 = math.log2 %24 : tensor<f16>
    %166 = index.mul %c6, %c1
    %167 = math.fma %19, %24, %23 : tensor<f16>
    %168 = math.fma %3, %3, %3 : tensor<9xf32>
    %alloc_32 = memref.alloc() : memref<9x15xi1>
    %169 = math.expm1 %0 : tensor<9xf16>
    %170 = vector.broadcast %cst_0 : f32 to vector<9xf32>
    %171 = vector.fma %170, %170, %170 : vector<9xf32>
    %172 = math.atan2 %reduced, %19 : tensor<f16>
    %alloc_33 = memref.alloc() : memref<9xi1>
    %173 = index.casts %c12 : index to i32
    %inserted_34 = tensor.insert %false_26 into %13[%c4, %c9] : tensor<7x15xi1>
    %174 = index.mul %64, %c7
    %175 = math.atan2 %24, %reduced : tensor<f16>
    %176 = math.absi %11 : tensor<9xi16>
    %177 = vector.load %38[%c8] : memref<9xi16>, vector<7x15xi16>
    %from_elements_35 = tensor.from_elements %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64, %c573807638_i64, %c573807638_i64, %c573807638_i64, %c441531226_i64 : tensor<7x15xi64>
    %178 = index.mul %c13, %117
    %179 = index.ceildivs %c7, %135
    %180 = math.absf %125 : tensor<9xf16>
    %181 = scf.while (%arg2 = %76) : (memref<f16>) -> memref<f16> {
      %248 = arith.remsi %c331483689_i32, %c1455576218_i32 : i32
      %249 = math.roundeven %3 : tensor<9xf32>
      %250 = math.rsqrt %reduced : tensor<f16>
      %251 = math.log1p %24 : tensor<f16>
      %splat_42 = tensor.splat %cst_2 : tensor<9xf16>
      %252 = math.roundeven %19 : tensor<f16>
      %253 = arith.maxsi %c441531226_i64, %c573807638_i64 : i64
      %254 = bufferization.clone %70 : memref<9xi32> to memref<9xi32>
      scf.condition(%false_26) %76 : memref<f16>
    } do {
    ^bb0(%arg2: memref<f16>):
      %248 = math.absi %c441531226_i64 : i64
      %249 = math.expm1 %cst_4 : f16
      %250 = arith.minui %c1455576218_i32, %c1455576218_i32 : i32
      %251 = math.expm1 %125 : tensor<9xf16>
      %252 = arith.maxsi %false, %true_28 : i1
      %253 = math.log10 %23 : tensor<f16>
      %splat_42 = tensor.splat %false : tensor<9xi1>
      %254 = math.tan %cst_4 : f16
      %255 = arith.remui %c724489780_i32, %c331483689_i32 : i32
      %256 = math.round %cst : f32
      %257 = vector.broadcast %cst_1 : f32 to vector<9xf32>
      %258 = vector.fma %257, %171, %257 : vector<9xf32>
      %inserted_43 = tensor.insert %true into %12[%c7] : tensor<9xi1>
      %259 = math.floor %5 : tensor<9xf16>
      %alloc_44 = memref.alloc() : memref<9x15xi32>
      %260 = arith.andi %true, %false_26 : i1
      %261 = math.tanh %112 : f16
      scf.yield %76 : memref<f16>
    }
    %182 = index.sub %c1, %135
    %183 = vector.broadcast %true : i1 to vector<15xi1>
    %184 = vector.transfer_write %183, %13[%c2, %92] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<15xi1>, tensor<7x15xi1>
    memref.assume_alignment %alloc_20, 1 : memref<9xi32>
    %185 = vector.broadcast %cst_5 : f32 to vector<2xf32>
    vector.transfer_write %185, %alloc_16[%48, %c15] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<2xf32>, memref<9x15xf32>
    %186 = arith.floordivsi %false_26, %false : i1
    %187 = tensor.empty() : tensor<7x15xi1>
    %mapped_36 = linalg.map ins(%13, %13, %14 : tensor<7x15xi1>, tensor<7x15xi1>, tensor<7x15xi1>) outs(%187 : tensor<7x15xi1>)
      (%in: i1, %in_42: i1, %in_43: i1) {
        %248 = vector.maskedload %alloc_19[%c2, %c3], %164, %164 : memref<7x15xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %249 = affine.for %arg2 = 0 to 6 iter_args(%arg3 = %false_26) -> (i1) {
          affine.yield %false_26 : i1
        }
        %from_elements_44 = tensor.from_elements %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16 : tensor<9xi16>
        %250 = arith.shli %c331483689_i32, %c1455576218_i32 : i32
        %251 = arith.remui %in_42, %true : i1
        %252 = vector.insert %183, %75 [1] : vector<15xi1> into vector<7x15xi1>
        %253 = math.rsqrt %3 : tensor<9xf32>
        %254 = index.maxu %c5, %92
        %255 = arith.divui %c724489780_i32, %c724489780_i32 : i32
        %256 = tensor.empty() : tensor<i32>
        %257 = math.fpowi %24, %256 : tensor<f16>, tensor<i32>
        %258 = arith.negf %cst_5 : f32
        %259 = vector.shuffle %77, %77 [2, 3, 4, 5, 6, 9, 10, 11, 12, 16, 17] : vector<9x15xf32>, vector<9x15xf32>
        %260 = vector.insertelement %cst_3, %98[%c12 : index] : vector<15xf32>
        %261 = vector.load %70[%c5] : memref<9xi32>, vector<9xi32>
        %splat_45 = tensor.splat %c441531226_i64 : tensor<9x15xi64>
        %262 = vector.insertelement %c11071_i16, %25[] : vector<i16>
        %263 = affine.for %arg2 = 0 to 0 iter_args(%arg3 = %c7) -> (index) {
          affine.yield %29 : index
        }
        %264 = vector.broadcast %c441531226_i64 : i64 to vector<9xi64>
        %265 = vector.maskedload %alloc[%c3], %164, %264 : memref<9xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
        %266 = scf.if %false_26 -> (i16) {
          %280 = arith.maxsi %in_42, %false : i1
          %cst_47 = arith.constant 1.46879117E+9 : f32
          %281 = bufferization.clone %alloc_11 : memref<9xi1> to memref<9xi1>
          %282 = arith.subi %false_26, %true_28 : i1
          %283 = index.divs %c11, %148
          %284 = memref.load %76[] : memref<f16>
          %285 = bufferization.clone %alloc_17 : memref<9xi16> to memref<9xi16>
          %286 = vector.insert %false_26, %116 [2] : i1 into vector<9xi1>
          scf.yield %c-8557_i16 : i16
        } else {
          memref.tensor_store %22, %alloc_12 : memref<9xf16>
          %280 = arith.minui %c331483689_i32, %c1455576218_i32 : i32
          %281 = vector.flat_transpose %80 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
          %282 = arith.minui %c1455576218_i32, %c1455576218_i32 : i32
          %283 = math.absf %3 : tensor<9xf32>
          %284 = math.copysign %5, %0 : tensor<9xf16>
          memref.tensor_store %12, %alloc_11 : memref<9xi1>
          %285 = math.absf %22 : tensor<9xf16>
          scf.yield %c11071_i16 : i16
        }
        memref.assume_alignment %alloc_11, 16 : memref<9xi1>
        %267 = math.tanh %24 : tensor<f16>
        %268 = math.expm1 %15 : tensor<9x15xf16>
        %269 = math.ipowi %10, %10 : tensor<9xi64>
        %270 = vector.bitcast %98 : vector<15xf32> to vector<15xf32>
        %271 = vector.broadcast %c1455576218_i32 : i32 to vector<i32>
        vector.transfer_write %271, %alloc_9[%254, %109] : vector<i32>, memref<7x15xi32>
        %272 = math.expm1 %125 : tensor<9xf16>
        %273 = vector.broadcast %c1455576218_i32 : i32 to vector<2xi32>
        %274 = vector.broadcast %in_42 : i1 to vector<2xi1>
        %275 = vector.maskedload %alloc_20[%c3], %274, %273 : memref<9xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %276 = math.cos %5 : tensor<9xf16>
        %c413079669_i64 = arith.constant 413079669 : i64
        %277 = affine.apply affine_map<(d0, d1, d2) -> (-(d2 ceildiv 16 - d2) + 4)>(%166, %182, %c12)
        %278 = arith.ceildivsi %c573807638_i64, %c441531226_i64 : i64
        %279 = math.rsqrt %23 : tensor<f16>
        %true_46 = arith.constant true
        linalg.yield %true_46 : i1
      }
    %188 = math.log2 %cst_0 : f32
    %189 = vector.bitcast %21 : vector<15xi32> to vector<15xi32>
    %190 = math.tanh %5 : tensor<9xf16>
    %191 = arith.xori %false, %false_26 : i1
    %192 = vector.broadcast %c1455576218_i32 : i32 to vector<2xi32>
    %193 = vector.broadcast %true_28 : i1 to vector<2xi1>
    %194 = vector.maskedload %alloc_15[%c3], %193, %192 : memref<9xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
    %195 = arith.remui %c441531226_i64, %c441531226_i64 : i64
    %splat_37 = tensor.splat %true : tensor<9xi1>
    %196 = math.ipowi %c331483689_i32, %c331483689_i32 : i32
    %197 = index.ceildivs %29, %48
    %198 = arith.shli %false_26, %true : i1
    %199 = math.floor %5 : tensor<9xf16>
    memref.tensor_store %15, %alloc_6 : memref<9x15xf16>
    %200 = math.cos %22 : tensor<9xf16>
    %201 = math.cos %cst_1 : f32
    %202 = arith.addf %cst_1, %cst_0 : f32
    %203 = math.exp2 %155 : tensor<f16>
    bufferization.dealloc_tensor %5 : tensor<9xf16>
    %204 = vector.broadcast %false_26 : i1 to vector<9x15xi1>
    %205 = math.cttz %11 : tensor<9xi16>
    %206 = math.sqrt %cst_5 : f32
    %207 = vector.broadcast %cst : f32 to vector<9xf32>
    %208 = vector.fma %207, %171, %171 : vector<9xf32>
    %209 = affine.for %arg2 = 0 to 69 iter_args(%arg3 = %12) -> (tensor<9xi1>) {
      affine.yield %arg3 : tensor<9xi1>
    }
    %210 = scf.if %false_26 -> (memref<9x15xi64>) {
      %248 = math.absi %from_elements_27 : tensor<9x15xi64>
      %249 = math.round %15 : tensor<9x15xf16>
      %250 = arith.xori %false_26, %false : i1
      %251 = math.atan %24 : tensor<f16>
      %252 = math.expm1 %23 : tensor<f16>
      %253 = index.mul %c1, %29
      %254 = scf.while (%arg2 = %193) : (vector<2xi1>) -> vector<2xi1> {
        %256 = arith.minui %c724489780_i32, %c331483689_i32 : i32
        %257 = math.log10 %23 : tensor<f16>
        %258 = math.log10 %cst : f32
        affine.store %c573807638_i64, %143[%c13, %c3] : memref<9x15xi64>
        memref.store %false_26, %alloc_11[%c0] : memref<9xi1>
        %259 = vector.insertelement %cst_0, %31[] : vector<f32>
        %260 = vector.broadcast %c724489780_i32 : i32 to vector<9xi32>
        %261 = vector.maskedload %alloc_10[%c1, %c9], %164, %260 : memref<9x15xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
        %262 = math.absf %0 : tensor<9xf16>
        scf.condition(%false) %193 : vector<2xi1>
      } do {
      ^bb0(%arg2: vector<2xi1>):
        %256 = math.fma %24, %155, %24 : tensor<f16>
        %257 = bufferization.clone %143 : memref<9x15xi64> to memref<9x15xi64>
        %false_42 = arith.constant false
        %258 = vector.transfer_read %alloc_11[%182], %false_42 : memref<9xi1>, vector<i1>
        %259 = arith.xori %c1455576218_i32, %c331483689_i32 : i32
        %260 = arith.addf %cst_3, %cst_5 : f32
        memref.assume_alignment %alloc_19, 8 : memref<7x15xi1>
        %261 = arith.shrui %false_26, %false_26 : i1
        %262 = arith.remf %cst, %cst_5 : f32
        %263 = math.ipowi %14, %14 : tensor<7x15xi1>
        %264 = math.roundeven %cst_0 : f32
        %265 = tensor.empty() : tensor<i32>
        %266 = math.fpowi %reduced, %265 : tensor<f16>, tensor<i32>
        %267 = math.fpowi %19, %265 : tensor<f16>, tensor<i32>
        %268 = math.log10 %cst_4 : f16
        %269 = arith.minui %c-8557_i16, %c-8557_i16 : i16
        %270 = arith.shli %false_42, %true : i1
        affine.store %c724489780_i32, %alloc_7[%c2] : memref<9xi32>
        scf.yield %193 : vector<2xi1>
      }
      %255 = math.atan2 %5, %5 : tensor<9xf16>
      scf.yield %143 : memref<9x15xi64>
    } else {
      %248 = math.ipowi %1, %17 : tensor<7x15xi32>
      %249 = math.fma %19, %155, %155 : tensor<f16>
      %250 = vector.insert %cst_3, %207 [7] : f32 into vector<9xf32>
      %251 = affine.if affine_set<(d0, d1, d2, d3) : ((d1 - d2) ceildiv 8 >= 0)>(%c15, %c5, %c13, %c11) -> i32 {
        %256 = arith.xori %c-8557_i16, %c11071_i16 : i16
        %257 = index.mul %c1, %c1
        %258 = math.rsqrt %cst_3 : f32
        %259 = math.cos %22 : tensor<9xf16>
        %260 = bufferization.to_memref %6 : memref<9xi1>
        %261 = index.divs %182, %c7
        %262 = bufferization.clone %alloc_6 : memref<9x15xf16> to memref<9x15xf16>
        %263 = arith.divsi %c1455576218_i32, %c331483689_i32 : i32
        affine.yield %c1455576218_i32 : i32
      } else {
        %256 = vector.bitcast %153 : vector<7x15xf16> to vector<7x15xf16>
        %257 = math.round %15 : tensor<9x15xf16>
        memref.store %cst_4, %76[] : memref<f16>
        %258 = vector.broadcast %112 : f16 to vector<7x15xf16>
        %259 = affine.min affine_map<(d0, d1) -> (d0 + 16, d0 * 128, (-d0 + d0 * 128 - 32) mod 64)>(%c6, %c9)
        %expanded_42 = tensor.expand_shape %from_elements_29 [[0, 1]] : tensor<9xi16> into tensor<9x1xi16>
        affine.store %112, %alloc_6[%c15, %c15] : memref<9x15xf16>
        %260 = index.sub %c15, %c15
        affine.yield %c724489780_i32 : i32
      }
      %252 = arith.shrui %c441531226_i64, %c573807638_i64 : i64
      %253 = math.cttz %2 : tensor<9xi16>
      %254 = vector.reduction <minui>, %164 : vector<9xi1> into i1
      %255 = vector.transpose %116, [0] : vector<9xi1> to vector<9xi1>
      scf.yield %143 : memref<9x15xi64>
    }
    %211 = math.log2 %112 : f16
    %212 = memref.load %alloc_20[%c2] : memref<9xi32>
    %213 = index.casts %c11071_i16 : i16 to index
    %214 = index.divs %c7, %c8
    %215 = scf.while (%arg2 = %194) : (vector<2xi32>) -> vector<2xi32> {
      %248 = arith.xori %true_28, %false_26 : i1
      %249 = memref.load %alloc_9[%c1, %c8] : memref<7x15xi32>
      %250 = arith.xori %c331483689_i32, %c1455576218_i32 : i32
      %251 = math.log10 %0 : tensor<9xf16>
      %252 = vector.bitcast %37 : vector<1xi32> to vector<1xf32>
      %253 = vector.matrix_multiply %171, %185 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 2 : i32} : (vector<9xf32>, vector<2xf32>) -> vector<18xf32>
      %254 = vector.broadcast %cst_5 : f32 to vector<9xf32>
      %255 = vector.fma %254, %208, %207 : vector<9xf32>
      %256 = arith.xori %c11071_i16, %c11071_i16 : i16
      scf.condition(%false) %194 : vector<2xi32>
    } do {
    ^bb0(%arg2: vector<2xi32>):
      %248 = math.tan %15 : tensor<9x15xf16>
      %249 = index.castu %c441531226_i64 : i64 to index
      %250 = math.fma %3, %3, %3 : tensor<9xf32>
      %251 = arith.minui %false_26, %true_28 : i1
      %252 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 mod 64)>(%36, %124, %114, %117)
      %253 = arith.muli %c441531226_i64, %c441531226_i64 : i64
      %254 = vector.broadcast %cst_0 : f32 to vector<9x15xf32>
      %255 = vector.fma %254, %78, %254 : vector<9x15xf32>
      %256 = vector.transpose %183, [0] : vector<15xi1> to vector<15xi1>
      %257 = math.copysign %15, %15 : tensor<9x15xf16>
      %258 = arith.cmpi ugt, %c331483689_i32, %c1455576218_i32 : i32
      %259 = bufferization.to_memref %8 : memref<9xi16>
      %260 = affine.min affine_map<(d0, d1) -> (d0 * 2 - 8)>(%114, %174)
      %261 = vector.load %alloc_17[%c6] : memref<9xi16>, vector<9xi16>
      %expanded_42 = tensor.expand_shape %3 [[0, 1]] : tensor<9xf32> into tensor<9x1xf32>
      %262 = math.floor %0 : tensor<9xf16>
      %263 = index.maxs %c4, %197
      scf.yield %194 : vector<2xi32>
    }
    %216 = math.powf %cst_4, %cst_4 : f16
    %217 = vector.load %210[%c6, %c14] : memref<9x15xi64>, vector<9x15xi64>
    %218 = vector.load %alloc_6[%c2, %c3] : memref<9x15xf16>, vector<9x15xf16>
    %219 = arith.subi %false, %false : i1
    %220 = scf.while (%arg2 = %alloc_6) : (memref<9x15xf16>) -> memref<9x15xf16> {
      %248 = math.atan2 %112, %cst_4 : f16
      %249 = vector.flat_transpose %170 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
      %250 = math.atan2 %3, %3 : tensor<9xf32>
      affine.store %true, %alloc_11[%c15] : memref<9xi1>
      %251 = vector.maskedload %alloc_11[%c6], %183, %183 : memref<9xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
      %252 = bufferization.clone %alloc_10 : memref<9x15xi32> to memref<9x15xi32>
      %253 = math.cos %0 : tensor<9xf16>
      %254 = arith.shli %c11071_i16, %c11071_i16 : i16
      scf.condition(%false_26) %alloc_6 : memref<9x15xf16>
    } do {
    ^bb0(%arg2: memref<9x15xf16>):
      %248 = arith.ceildivsi %c573807638_i64, %c573807638_i64 : i64
      %249 = vector.broadcast %cst_4 : f16 to vector<15xf16>
      %250 = vector.maskedload %arg2[%c4, %c3], %183, %249 : memref<9x15xf16>, vector<15xi1>, vector<15xf16> into vector<15xf16>
      %251 = bufferization.clone %alloc_19 : memref<7x15xi1> to memref<7x15xi1>
      %252 = math.log2 %22 : tensor<9xf16>
      %253 = vector.broadcast %c1 : index to vector<15xindex>
      vector.scatter %alloc_11[%c2] [%253], %183, %183 : memref<9xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
      %254 = math.tanh %reduced : tensor<f16>
      %255 = math.fpowi %cst_1, %c331483689_i32 : f32, i32
      %256 = arith.negf %cst_1 : f32
      %257 = arith.andi %c724489780_i32, %c331483689_i32 : i32
      %258 = arith.shli %c-8557_i16, %c-8557_i16 : i16
      %259 = arith.remf %cst_5, %cst_1 : f32
      %260 = math.atan2 %cst_5, %cst_5 : f32
      %261 = tensor.empty() : tensor<9x15xi32>
      %mapped_42 = linalg.map ins(%alloc_14, %alloc_10 : memref<9x15xi32>, memref<9x15xi32>) outs(%261 : tensor<9x15xi32>)
        (%in: i32, %in_44: i32) {
          %264 = arith.minsi %false, %true_28 : i1
          %265 = arith.minui %c-8557_i16, %c11071_i16 : i16
          memref.tensor_store %6, %alloc_11 : memref<9xi1>
          %266 = math.fma %15, %15, %15 : tensor<9x15xf16>
          %267 = vector.insert %c331483689_i32, %192 [0] : i32 into vector<2xi32>
          %268 = arith.maxsi %c11071_i16, %c11071_i16 : i16
          %269 = math.log %3 : tensor<9xf32>
          %270 = bufferization.clone %alloc_13 : memref<7x15xf32> to memref<7x15xf32>
          %inserted_45 = tensor.insert %false_26 into %6[%c2] : tensor<9xi1>
          %271 = arith.xori %c441531226_i64, %c573807638_i64 : i64
          %272 = vector.bitcast %177 : vector<7x15xi16> to vector<7x15xi16>
          %alloc_46 = memref.alloc() : memref<9xi1>
          memref.store %c-8557_i16, %alloc_17[%c4] : memref<9xi16>
          %273 = math.powf %cst_0, %cst_0 : f32
          %274 = vector.broadcast %cst_3 : f32 to vector<9x15xf32>
          %275 = vector.fma %274, %77, %274 : vector<9x15xf32>
          %276 = arith.maxsi %true_28, %true : i1
          %277 = vector.broadcast %cst_3 : f32 to vector<9x15xf32>
          %278 = vector.fma %277, %274, %77 : vector<9x15xf32>
          %279 = vector.multi_reduction <minf>, %78, %274 [] : vector<9x15xf32> to vector<9x15xf32>
          %280 = arith.negf %cst_0 : f32
          %281 = arith.andi %in_44, %c1455576218_i32 : i32
          %282 = math.exp %cst_4 : f16
          %283 = index.castu %214 : index to i32
          %284 = math.rsqrt %cst : f32
          %285 = arith.negf %cst_3 : f32
          %286 = math.ipowi %transposed, %18 : tensor<9xi1>
          %287 = math.round %15 : tensor<9x15xf16>
          %288 = vector.broadcast %c441531226_i64 : i64 to vector<15xi64>
          %289 = vector.maskedload %alloc[%c4], %183, %288 : memref<9xi64>, vector<15xi1>, vector<15xi64> into vector<15xi64>
          %290 = index.maxu %114, %92
          %splat_47 = tensor.splat %false_26 : tensor<9xi1>
          %from_elements_48 = tensor.from_elements %cst_2, %cst_2, %cst_4, %cst_2, %cst_2, %cst_4, %cst_2, %112, %cst_2 : tensor<9xf16>
          %291 = arith.mulf %cst_1, %cst : f32
          %292 = vector.splat %c1 : vector<9x15xindex>
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %262 = math.round %24 : tensor<f16>
      %263 = math.log1p %cst_0 : f32
      %alloc_43 = memref.alloc() : memref<9xi1>
      scf.yield %alloc_6 : memref<9x15xf16>
    }
    %221 = index.mul %213, %174
    %222 = math.absf %3 : tensor<9xf32>
    %223 = arith.addf %cst_1, %cst_1 : f32
    %224 = scf.execute_region -> index {
      %248 = vector.broadcast %cst_1 : f32 to vector<9xf32>
      %249 = vector.fma %248, %208, %248 : vector<9xf32>
      %250 = affine.for %arg2 = 0 to 98 iter_args(%arg3 = %112) -> (f16) {
        affine.yield %arg3 : f16
      }
      scf.execute_region {
        %260 = math.roundeven %22 : tensor<9xf16>
        %261 = math.expm1 %0 : tensor<9xf16>
        %expanded_45 = tensor.expand_shape %transposed [[0, 1]] : tensor<9xi1> into tensor<9x1xi1>
        %262 = math.atan2 %155, %19 : tensor<f16>
        %263 = vector.broadcast %c441531226_i64 : i64 to vector<i64>
        vector.transfer_write %263, %alloc[%29] : vector<i64>, memref<9xi64>
        %264 = math.atan2 %5, %125 : tensor<9xf16>
        %alloc_46 = memref.alloc() : memref<7x15xi1>
        memref.copy %alloc_19, %alloc_46 : memref<7x15xi1> to memref<7x15xi1>
        %265 = vector.broadcast %c724489780_i32 : i32 to vector<7xi32>
        %266 = vector.broadcast %false : i1 to vector<7xi1>
        %267 = vector.maskedload %alloc_9[%c5, %c7], %266, %265 : memref<7x15xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %inserted_47 = tensor.insert %c573807638_i64 into %expanded[%c2, %c0] : tensor<9x1xi64>
        %268 = index.divs %135, %50
        %269 = bufferization.to_memref %18 : memref<9xi1>
        %270 = math.fma %cst_5, %cst_3, %cst_1 : f32
        memref.store %c573807638_i64, %210[%c1, %c5] : memref<9x15xi64>
        %271 = index.castu %c1455576218_i32 : i32 to index
        %from_elements_48 = tensor.from_elements %c11071_i16, %c11071_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16, %c11071_i16, %c-8557_i16, %c-8557_i16 : tensor<9xi16>
        %alloca = memref.alloca() : memref<7x15xi64>
        scf.yield
      }
      %251 = math.atan2 %cst_0, %cst_5 : f32
      %from_elements_42 = tensor.from_elements %false, %true, %false, %false_26, %true, %false, %true_28, %true_28, %true : tensor<9xi1>
      %252 = math.ctpop %14 : tensor<7x15xi1>
      %inserted_43 = tensor.insert %false into %14[%c1, %c0] : tensor<7x15xi1>
      memref.assume_alignment %alloc_16, 2 : memref<9x15xf32>
      %253 = math.copysign %22, %125 : tensor<9xf16>
      %254 = math.exp2 %cst : f32
      %255 = arith.remf %cst_5, %cst : f32
      %256 = vector.flat_transpose %158 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
      %257 = index.maxu %197, %179
      %258 = index.ceildivs %166, %29
      %alloc_44 = memref.alloc() : memref<9xi32>
      %259 = index.divs %c4, %144
      scf.yield %179 : index
    }
    %225 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 - 16, d1 + 24, d1 - (d1 + 4) + 8)>(%174, %c1, %c4, %c2)
    %226 = vector.broadcast %c-8557_i16 : i16 to vector<9xi16>
    %227 = vector.load %alloc_13[%c0, %c14] : memref<7x15xf32>, vector<9xf32>
    affine.for %arg2 = 0 to 85 {
    }
    %228 = arith.cmpf true, %112, %cst_2 : f16
    %alloc_38 = memref.alloc() : memref<9x15xf32>
    %229 = vector.bitcast %153 : vector<7x15xf16> to vector<7x15xi16>
    %230 = math.log2 %reduced : tensor<f16>
    %231 = math.expm1 %23 : tensor<f16>
    %232 = arith.mulf %cst_2, %cst_4 : f16
    %233 = vector.splat %c14 : vector<9xindex>
    %234 = affine.max affine_map<(d0, d1, d2) -> (d0, (d2 ceildiv 2) mod 64, d1, d2 * 16)>(%c14, %135, %29)
    %235 = vector.matrix_multiply %170, %208 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf32>, vector<9xf32>) -> vector<1xf32>
    %236 = vector.splat %114 : vector<9xindex>
    %237 = math.log10 %15 : tensor<9x15xf16>
    %238 = math.cos %15 : tensor<9x15xf16>
    %239 = index.maxu %166, %c2
    affine.for %arg2 = 0 to 99 {
    }
    %240 = index.sub %166, %225
    %241 = vector.broadcast %cst_0 : f32 to vector<9xf32>
    %242 = vector.fma %241, %171, %171 : vector<9xf32>
    %cst_39 = arith.constant 0x4BB8C54F : f32
    %243 = tensor.empty() : tensor<9x1xi64>
    %244 = linalg.copy ins(%expanded : tensor<9x1xi64>) outs(%243 : tensor<9x1xi64>) -> tensor<9x1xi64>
    %245 = tensor.empty() : tensor<9xi32>
    %transposed_40 = linalg.transpose ins(%70 : memref<9xi32>) outs(%245 : tensor<9xi32>) permutation = [0] 
    %alloc_41 = memref.alloc() : memref<i1>
    linalg.reduce ins(%7 : tensor<9xi1>) outs(%alloc_41 : memref<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %248 = arith.ceildivsi %c441531226_i64, %c573807638_i64 : i64
        %249 = arith.remf %cst_4, %cst_4 : f16
        %250 = math.copysign %0, %0 : tensor<9xf16>
        %251 = math.fma %155, %155, %24 : tensor<f16>
        %252 = vector.broadcast %c573807638_i64 : i64 to vector<i64>
        %253 = vector.transfer_write %252, %expanded[%182, %29] : vector<i64>, tensor<9x1xi64>
        %254 = index.castu %init : i1 to index
        %255 = index.mul %213, %224
        %256 = math.floor %15 : tensor<9x15xf16>
        %false_42 = arith.constant false
        linalg.yield %false_42 : i1
      }
    %246 = scf.parallel (%arg2, %arg3) = (%240, %114) to (%234, %c4) step (%c10, %c3) init (%12) -> tensor<9xi1> {
      %248 = math.absi %11 : tensor<9xi16>
      %249 = arith.ceildivsi %c441531226_i64, %c573807638_i64 : i64
      %250 = index.sub %240, %221
      %alloca = memref.alloca() : memref<9xf32>
      %251 = math.absf %0 : tensor<9xf16>
      %252 = arith.cmpi ult, %false_26, %true : i1
      bufferization.dealloc_tensor %244 : tensor<9x1xi64>
      %253 = math.log1p %112 : f16
      %254 = arith.floordivsi %c441531226_i64, %c441531226_i64 : i64
      %false_42 = index.bool.constant false
      %255 = arith.addf %cst_2, %112 : f16
      %splat_43 = tensor.splat %cst_1 : tensor<7x15xf32>
      %256 = scf.if %true_28 -> (i32) {
        %261 = index.sub %250, %144
        bufferization.dealloc_tensor %5 : tensor<9xf16>
        %262 = math.sqrt %cst_5 : f32
        %263 = arith.remsi %c441531226_i64, %c441531226_i64 : i64
        %264 = arith.minui %c441531226_i64, %c441531226_i64 : i64
        %265 = math.round %0 : tensor<9xf16>
        %266 = math.absi %c724489780_i32 : i32
        %267 = math.tanh %112 : f16
        scf.yield %c1455576218_i32 : i32
      } else {
        %261 = index.sub %124, %29
        %from_elements_44 = tensor.from_elements %c573807638_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64, %c441531226_i64, %c441531226_i64, %c573807638_i64 : tensor<9xi64>
        %262 = math.absi %13 : tensor<7x15xi1>
        %263 = math.absf %5 : tensor<9xf16>
        %264 = memref.load %70[%c6] : memref<9xi32>
        %265 = math.expm1 %19 : tensor<f16>
        %266 = index.ceildivs %c14, %250
        %267 = math.atan2 %0, %0 : tensor<9xf16>
        scf.yield %c724489780_i32 : i32
      }
      %257 = math.expm1 %112 : f16
      %258 = math.fma %splat_43, %splat_43, %splat_43 : tensor<7x15xf32>
      %259 = scf.execute_region -> tensor<7x15xf16> {
        bufferization.dealloc_tensor %transposed_40 : tensor<9xi32>
        %261 = vector.broadcast %cst_1 : f32 to vector<9x15xf32>
        %262 = vector.fma %261, %78, %78 : vector<9x15xf32>
        %263 = vector.extract_strided_slice %177 {offsets = [3], sizes = [3], strides = [1]} : vector<7x15xi16> to vector<3x15xi16>
        %264 = arith.cmpi ult, %c441531226_i64, %c573807638_i64 : i64
        %265 = vector.broadcast %true_28 : i1 to vector<i1>
        %266 = vector.transfer_write %265, %13[%arg3, %250] : vector<i1>, tensor<7x15xi1>
        %267 = memref.atomic_rmw addf %cst_1, %alloc_16[%c2, %c9] : (f32, memref<9x15xf32>) -> f32
        %268 = math.round %cst_5 : f32
        %269 = vector.broadcast %178 : index to vector<7xindex>
        %270 = vector.broadcast %true : i1 to vector<7xi1>
        %271 = vector.broadcast %256 : i32 to vector<7xi32>
        vector.scatter %alloc_20[%c7] [%269], %270, %271 : memref<9xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %alloc_44 = memref.alloc() : memref<9x15xi64>
        %alloca_45 = memref.alloca() : memref<9x15xi16>
        %272 = bufferization.clone %alloc_17 : memref<9xi16> to memref<9xi16>
        %273 = vector.create_mask %c8, %c0 : vector<9x15xi1>
        %274 = arith.divf %cst_2, %cst_2 : f16
        %275 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 floordiv 64 + d2 * 2, d0, d3, d1 - d0 * 16 - 2)>(%92, %c13, %64, %c14)
        %276 = arith.divf %cst_5, %cst_3 : f32
        %277 = math.rsqrt %cst : f32
        %278 = tensor.empty() : tensor<7x15xf16>
        scf.yield %278 : tensor<7x15xf16>
      }
      %260 = tensor.empty() : tensor<9xi1>
      scf.reduce(%260)  : tensor<9xi1> {
      ^bb0(%arg4: tensor<9xi1>, %arg5: tensor<9xi1>):
        %from_elements_44 = tensor.from_elements %false_42, %true, %false_42, %true, %true, %true_28, %false_42, %true, %false, %false_42, %false, %false, %true, %true, %true_28, %false, %true, %true_28, %true, %false_26, %false_26, %false_26, %true, %false_42, %true_28, %false, %false, %true_28, %false_42, %true, %false_42, %true_28, %true_28, %false_26, %false_42, %true, %false_42, %false_42, %false, %false_26, %false_42, %true, %true, %false_42, %false, %false_26, %false_26, %false, %true, %true_28, %true_28, %false, %true, %false, %false_42, %true, %true_28, %true, %false_26, %false_26, %true_28, %false_26, %false, %true_28, %true_28, %true, %false_42, %false_26, %false_42, %false_42, %false_42, %true, %true_28, %false_42, %true, %true, %true, %false_26, %false_26, %false, %true, %true, %false_26, %false_26, %false_26, %true_28, %false_42, %false, %false_26, %true, %false_42, %true, %true_28, %true_28, %true_28, %false_42, %false_26, %true, %false_42, %true_28, %false_26, %false_42, %false_26, %true, %false_26 : tensor<7x15xi1>
        %261 = vector.flat_transpose %208 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
        %262 = arith.addf %cst_3, %cst_0 : f32
        %263 = math.exp2 %259 : tensor<7x15xf16>
        %inserted_45 = tensor.insert %c441531226_i64 into %from_elements_27[%c7, %c9] : tensor<9x15xi64>
        %264 = index.divs %114, %c12
        %265 = math.copysign %24, %24 : tensor<f16>
        %from_elements_46 = tensor.from_elements %c724489780_i32, %c331483689_i32, %c724489780_i32, %c1455576218_i32, %c1455576218_i32, %c724489780_i32, %256, %c1455576218_i32, %c724489780_i32, %c1455576218_i32, %c331483689_i32, %256, %256, %c331483689_i32, %c331483689_i32, %c724489780_i32, %c331483689_i32, %c724489780_i32, %256, %256, %c724489780_i32, %c724489780_i32, %c331483689_i32, %c1455576218_i32, %c331483689_i32, %256, %256, %c1455576218_i32, %c1455576218_i32, %c331483689_i32, %c724489780_i32, %c724489780_i32, %c1455576218_i32, %256, %256, %256, %c1455576218_i32, %256, %c331483689_i32, %c1455576218_i32, %c331483689_i32, %c1455576218_i32, %c724489780_i32, %c724489780_i32, %c331483689_i32, %c1455576218_i32, %256, %c724489780_i32, %256, %256, %c1455576218_i32, %256, %c1455576218_i32, %c331483689_i32, %256, %256, %c331483689_i32, %c1455576218_i32, %256, %c331483689_i32, %c331483689_i32, %256, %c1455576218_i32, %c1455576218_i32, %c1455576218_i32, %c331483689_i32, %c724489780_i32, %c331483689_i32, %c1455576218_i32, %c1455576218_i32, %c1455576218_i32, %256, %256, %c1455576218_i32, %c331483689_i32, %256, %256, %256, %c1455576218_i32, %256, %256, %c331483689_i32, %c724489780_i32, %c1455576218_i32, %c1455576218_i32, %c331483689_i32, %256, %c331483689_i32, %256, %c331483689_i32, %256, %c724489780_i32, %c724489780_i32, %c724489780_i32, %c724489780_i32, %256, %256, %256, %c724489780_i32, %256, %256, %256, %c1455576218_i32, %c331483689_i32, %c724489780_i32 : tensor<7x15xi32>
        %266 = tensor.empty() : tensor<9xi1>
        scf.reduce.return %266 : tensor<9xi1>
      }
      scf.yield
    }
    %247 = affine.vector_load %alloc_20[%c7] : memref<9xi32>, vector<2xi32>
    affine.vector_store %241, %alloc_13[%c12, %c13] : memref<7x15xf32>, vector<9xf32>
    vector.print %21 : vector<15xi32>
    vector.print %25 : vector<i16>
    vector.print %31 : vector<f32>
    vector.print %37 : vector<1xi32>
    vector.print %75 : vector<7x15xi1>
    vector.print %77 : vector<9x15xf32>
    vector.print %78 : vector<9x15xf32>
    vector.print %80 : vector<1xi32>
    vector.print %98 : vector<15xf32>
    vector.print %102 : vector<9xi1>
    vector.print %116 : vector<9xi1>
    vector.print %150 : vector<15xi32>
    vector.print %153 : vector<7x15xf16>
    vector.print %158 : vector<9xi1>
    vector.print %164 : vector<9xi1>
    vector.print %170 : vector<9xf32>
    vector.print %171 : vector<9xf32>
    vector.print %177 : vector<7x15xi16>
    vector.print %183 : vector<15xi1>
    vector.print %185 : vector<2xf32>
    vector.print %189 : vector<15xi32>
    vector.print %192 : vector<2xi32>
    vector.print %193 : vector<2xi1>
    vector.print %194 : vector<2xi32>
    vector.print %204 : vector<9x15xi1>
    vector.print %207 : vector<9xf32>
    vector.print %208 : vector<9xf32>
    vector.print %217 : vector<9x15xi64>
    vector.print %218 : vector<9x15xf16>
    vector.print %226 : vector<9xi16>
    vector.print %227 : vector<9xf32>
    vector.print %229 : vector<7x15xi16>
    vector.print %235 : vector<1xf32>
    vector.print %241 : vector<9xf32>
    vector.print %242 : vector<9xf32>
    vector.print %247 : vector<2xi32>
    vector.print %cst : f32
    vector.print %c11071_i16 : i16
    vector.print %c-8557_i16 : i16
    vector.print %c441531226_i64 : i64
    vector.print %cst_0 : f32
    vector.print %cst_1 : f32
    vector.print %c1455576218_i32 : i32
    vector.print %cst_2 : f16
    vector.print %cst_3 : f32
    vector.print %false : i1
    vector.print %cst_4 : f16
    vector.print %c331483689_i32 : i32
    vector.print %true : i1
    vector.print %c724489780_i32 : i32
    vector.print %cst_5 : f32
    vector.print %c573807638_i64 : i64
    vector.print %112 : f16
    vector.print %false_26 : i1
    vector.print %true_28 : i1
    return %3 : tensor<9xf32>
  }
}
