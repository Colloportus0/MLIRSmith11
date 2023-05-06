module {
  func.func private @func1() {
    %c1334599510_i64 = arith.constant 1334599510 : i64
    %c1968776031_i64 = arith.constant 1968776031 : i64
    %cst = arith.constant 4.601600e+04 : f16
    %c18931_i16 = arith.constant 18931 : i16
    %c552705139_i32 = arith.constant 552705139 : i32
    %cst_0 = arith.constant 2.14292864E+9 : f32
    %cst_1 = arith.constant 4.988800e+04 : f16
    %cst_2 = arith.constant 1.5472023E+9 : f32
    %c1072490189_i32 = arith.constant 1072490189 : i32
    %c1939646478_i64 = arith.constant 1939646478 : i64
    %false = arith.constant false
    %cst_3 = arith.constant 3.801600e+04 : f16
    %c-26765_i16 = arith.constant -26765 : i16
    %c1772678022_i64 = arith.constant 1772678022 : i64
    %c830216547_i32 = arith.constant 830216547 : i32
    %c1933866630_i32 = arith.constant 1933866630 : i32
    %0 = tensor.empty() : tensor<13x7xi64>
    %1 = tensor.empty() : tensor<13x4xi16>
    %2 = tensor.empty() : tensor<13xi16>
    %3 = tensor.empty() : tensor<13x4xf16>
    %4 = tensor.empty() : tensor<13x7xf32>
    %5 = tensor.empty() : tensor<7xi32>
    %6 = tensor.empty() : tensor<13xf16>
    %7 = tensor.empty() : tensor<7xf32>
    %8 = tensor.empty() : tensor<13xf32>
    %9 = tensor.empty() : tensor<13x7xf16>
    %10 = tensor.empty() : tensor<7xf32>
    %11 = tensor.empty() : tensor<13xi1>
    %12 = tensor.empty() : tensor<13x4xi32>
    %13 = tensor.empty() : tensor<7xf16>
    %14 = tensor.empty() : tensor<13x7xi32>
    %15 = tensor.empty() : tensor<13xf32>
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
    %alloc = memref.alloc() : memref<13x4xi16>
    %alloc_4 = memref.alloc() : memref<13xf32>
    %alloc_5 = memref.alloc() : memref<13xf32>
    %alloc_6 = memref.alloc() : memref<13xi32>
    %alloc_7 = memref.alloc() : memref<13xi64>
    %alloc_8 = memref.alloc() : memref<13x4xi1>
    %alloc_9 = memref.alloc() : memref<13x7xf32>
    %alloc_10 = memref.alloc() : memref<7xi32>
    %alloc_11 = memref.alloc() : memref<13x4xi1>
    %alloc_12 = memref.alloc() : memref<13x4xi16>
    %alloc_13 = memref.alloc() : memref<13x7xi1>
    %alloc_14 = memref.alloc() : memref<13x7xi64>
    %alloc_15 = memref.alloc() : memref<13x4xi1>
    %alloc_16 = memref.alloc() : memref<13xf32>
    %alloc_17 = memref.alloc() : memref<13xf16>
    %alloc_18 = memref.alloc() : memref<7xf32>
    %16 = tensor.empty() : tensor<13x7xf32>
    %17 = linalg.copy ins(%4 : tensor<13x7xf32>) outs(%16 : tensor<13x7xf32>) -> tensor<13x7xf32>
    %alloc_19 = memref.alloc() : memref<13xi16>
    linalg.transpose ins(%2 : tensor<13xi16>) outs(%alloc_19 : memref<13xi16>) permutation = [0] 
    %18 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%7 : tensor<7xf32>) outs(%18 : tensor<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %257 = arith.maxsi %c830216547_i32, %c830216547_i32 : i32
        %258 = arith.maxui %c1334599510_i64, %c1968776031_i64 : i64
        %259 = index.casts %c1968776031_i64 : i64 to index
        %alloc_41 = memref.alloc() : memref<7x4xf32>
        %260 = tensor.empty() : tensor<13x4xf32>
        %261 = linalg.matmul ins(%4, %alloc_41 : tensor<13x7xf32>, memref<7x4xf32>) outs(%260 : tensor<13x4xf32>) -> tensor<13x4xf32>
        %262 = vector.broadcast %cst_3 : f16 to vector<1xf16>
        %263 = vector.broadcast %cst : f16 to vector<1xf16>
        %264 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %262, %263, %cst : vector<1xf16>, vector<1xf16> into f16
        %265 = vector.broadcast %cst_1 : f16 to vector<7xf16>
        %266 = vector.broadcast %false : i1 to vector<7xi1>
        %267 = vector.broadcast %c552705139_i32 : i32 to vector<7xi32>
        %268 = vector.gather %13[%c10] [%267], %266, %265 : tensor<7xf16>, vector<7xi32>, vector<7xi1>, vector<7xf16> into vector<7xf16>
        %269 = math.sqrt %9 : tensor<13x7xf16>
        %270 = math.tanh %9 : tensor<13x7xf16>
        %cst_42 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_42 : f32
      }
    %19 = scf.parallel (%arg0, %arg1) = (%c2, %c9) to (%c7, %c15) step (%c7, %c14) init (%alloc_17) -> memref<13xf16> {
      %257 = bufferization.to_tensor %alloc_14 : memref<13x7xi64>
      %258 = memref.realloc %alloc_10 : memref<7xi32> to memref<6xi32>
      %259 = affine.if affine_set<(d0, d1, d2, d3) : (d1 floordiv 8 - 4 == 0)>(%c12, %c0, %c8, %c6) -> memref<13xf16> {
        %271 = arith.mulf %cst_3, %cst : f16
        memref.store %c-26765_i16, %alloc_12[%c11, %c0] : memref<13x4xi16>
        %272 = vector.broadcast %cst_2 : f32 to vector<4x4xf32>
        %273 = vector.broadcast %cst_0 : f32 to vector<4xf32>
        %dest_44, %accumulated_value_45 = vector.scan <mul>, %272, %273 {inclusive = true, reduction_dim = 0 : i64} : vector<4x4xf32>, vector<4xf32>
        %cast = tensor.cast %16 : tensor<13x7xf32> to tensor<?x?xf32>
        %274 = vector.broadcast %c18931_i16 : i16 to vector<13x4xi16>
        %275 = vector.broadcast %cst_2 : f32 to vector<13x4xf32>
        %276 = vector.fma %275, %275, %275 : vector<13x4xf32>
        %277 = math.atan2 %cst_0, %cst_0 : f32
        %278 = arith.remsi %false, %false : i1
        %279 = bufferization.to_tensor %alloc_8 : memref<13x4xi1>
        affine.yield %alloc_17 : memref<13xf16>
      } else {
        %271 = index.divu %c14, %c14
        %272 = arith.remsi %c830216547_i32, %c830216547_i32 : i32
        %273 = vector.broadcast %c1772678022_i64 : i64 to vector<6xi64>
        %274 = vector.reduction <add>, %273 : vector<6xi64> into i64
        %275 = arith.remsi %c1772678022_i64, %c1939646478_i64 : i64
        %276 = math.expm1 %6 : tensor<13xf16>
        %277 = arith.divui %c830216547_i32, %c830216547_i32 : i32
        %278 = arith.xori %c1968776031_i64, %c1939646478_i64 : i64
        %279 = memref.load %alloc[%c8, %c1] : memref<13x4xi16>
        affine.yield %alloc_17 : memref<13xf16>
      }
      %260 = vector.broadcast %c8 : index to vector<7xindex>
      %261 = vector.broadcast %false : i1 to vector<7xi1>
      %262 = vector.broadcast %c1968776031_i64 : i64 to vector<7xi64>
      vector.scatter %alloc_14[%c10, %c3] [%260], %261, %262 : memref<13x7xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
      %263 = index.sizeof
      memref.assume_alignment %alloc_8, 8 : memref<13x4xi1>
      %264 = math.tanh %3 : tensor<13x4xf16>
      %alloc_41 = memref.alloc() : memref<13x7xi64>
      %alloc_42 = memref.alloc() : memref<13x7xf32>
      memref.copy %alloc_9, %alloc_42 : memref<13x7xf32> to memref<13x7xf32>
      memref.assume_alignment %alloc_18, 1 : memref<7xf32>
      %265 = vector.splat %c-26765_i16 : vector<7xi16>
      %266 = vector.broadcast %cst_3 : f16 to vector<6xf16>
      %267 = vector.matrix_multiply %266, %266 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xf16>, vector<6xf16>) -> vector<1xf16>
      %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %267, %267, %cst_1 : vector<1xf16>, vector<1xf16> into f16
      %269 = math.exp2 %13 : tensor<7xf16>
      bufferization.dealloc_tensor %3 : tensor<13x4xf16>
      %270 = arith.xori %c1933866630_i32, %c552705139_i32 : i32
      %alloc_43 = memref.alloc() : memref<13xf16>
      scf.reduce(%alloc_43)  : memref<13xf16> {
      ^bb0(%arg2: memref<13xf16>, %arg3: memref<13xf16>):
        %271 = affine.load %alloc_12[%c13, %c6] : memref<13x4xi16>
        %272 = arith.negf %cst_0 : f32
        %273 = index.sub %c5, %c13
        %274 = arith.floordivsi %c552705139_i32, %c552705139_i32 : i32
        %275 = index.casts %c-26765_i16 : i16 to index
        %276 = index.casts %c14 : index to i32
        %277 = index.sizeof
        %278 = arith.floordivsi %c1968776031_i64, %c1939646478_i64 : i64
        %alloc_44 = memref.alloc() : memref<13xf16>
        scf.reduce.return %alloc_44 : memref<13xf16>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_15[%c4, %c13] : memref<13x4xi1>, vector<4xi1>
    affine.vector_store %20, %alloc_15[%c0, %c1] : memref<13x4xi1>, vector<4xi1>
    %21 = tensor.empty() : tensor<13xi32>
    %22 = tensor.empty() : tensor<i32>
    %23 = linalg.dot ins(%alloc_6, %21 : memref<13xi32>, tensor<13xi32>) outs(%22 : tensor<i32>) -> tensor<i32>
    %24 = math.cttz %false : i1
    %25 = arith.cmpi slt, %c1072490189_i32, %c552705139_i32 : i32
    %26 = vector.splat %cst_1 : vector<13x7xf16>
    %27 = math.expm1 %17 : tensor<13x7xf32>
    %28 = index.sub %c12, %c14
    %29 = vector.broadcast %cst_2 : f32 to vector<13x7xf32>
    %30 = vector.fma %29, %29, %29 : vector<13x7xf32>
    %31 = math.exp %reduced : tensor<f32>
    %32 = arith.remf %cst_0, %cst_2 : f32
    bufferization.dealloc_tensor %11 : tensor<13xi1>
    bufferization.dealloc_tensor %14 : tensor<13x7xi32>
    %33 = arith.remsi %c-26765_i16, %c-26765_i16 : i16
    %34 = arith.divf %cst_3, %cst_1 : f16
    %35 = vector.bitcast %30 : vector<13x7xf32> to vector<13x7xf32>
    %36 = vector.broadcast %cst_0 : f32 to vector<7xf32>
    %37 = vector.fma %36, %36, %36 : vector<7xf32>
    bufferization.dealloc_tensor %11 : tensor<13xi1>
    scf.if %false {
      %257 = math.absf %9 : tensor<13x7xf16>
      %expanded_41 = tensor.expand_shape %9 [[0], [1, 2]] : tensor<13x7xf16> into tensor<13x7x1xf16>
      %258 = vector.insertelement %cst_0, %37[%c1 : index] : vector<7xf32>
      %alloc_42 = memref.alloc() : memref<13x4xf16>
      %259 = vector.broadcast %cst : f16 to vector<13x7xf16>
      %260 = vector.broadcast %false : i1 to vector<13x7xi1>
      %261 = vector.broadcast %c1072490189_i32 : i32 to vector<13x7xi32>
      %262 = vector.gather %alloc_42[%c15, %c5] [%261], %260, %259 : memref<13x4xf16>, vector<13x7xi32>, vector<13x7xi1>, vector<13x7xf16> into vector<13x7xf16>
      %263 = vector.create_mask %c10 : vector<13xi1>
      %264 = vector.matrix_multiply %20, %263 {lhs_columns = 1 : i32, lhs_rows = 4 : i32, rhs_columns = 13 : i32} : (vector<4xi1>, vector<13xi1>) -> vector<52xi1>
      %265 = index.ceildivu %c10, %c9
      %266 = index.divu %265, %c11
    }
    %cst_20 = arith.constant 5.694720e+08 : f32
    %38 = math.powf %6, %6 : tensor<13xf16>
    scf.index_switch %c11 
    case 1 {
      %257 = math.ceil %13 : tensor<7xf16>
      %258 = math.absi %21 : tensor<13xi32>
      %259 = arith.addf %cst_1, %cst_3 : f16
      %260 = arith.remui %c830216547_i32, %c1933866630_i32 : i32
      %261 = vector.transpose %20, [0] : vector<4xi1> to vector<4xi1>
      %262 = memref.realloc %alloc_19 : memref<13xi16> to memref<7xi16>
      %263 = arith.addf %cst, %cst : f16
      %264 = index.floordivs %c10, %c15
      memref.store %cst_0, %alloc_4[%c10] : memref<13xf32>
      %265 = vector.bitcast %36 : vector<7xf32> to vector<7xf32>
      %266 = arith.maxui %c1939646478_i64, %c1939646478_i64 : i64
      %267 = index.floordivs %c12, %c5
      %268 = index.maxu %c5, %28
      %269 = math.log2 %7 : tensor<7xf32>
      %270 = arith.remsi %c552705139_i32, %c830216547_i32 : i32
      %271 = math.cos %cst_2 : f32
      scf.yield
    }
    case 2 {
      %257 = vector.reduction <mul>, %20 : vector<4xi1> into i1
      %258 = bufferization.to_tensor %alloc_14 : memref<13x7xi64>
      %259 = arith.maxf %cst_2, %cst_0 : f32
      %260 = math.exp %cst : f16
      %261 = index.maxs %c7, %c9
      vector.print %30 : vector<13x7xf32>
      %262 = tensor.empty() : tensor<13x7xi16>
      %263 = math.expm1 %10 : tensor<7xf32>
      %264 = arith.maxui %c830216547_i32, %c830216547_i32 : i32
      %265 = vector.reduction <maxui>, %20 : vector<4xi1> into i1
      %266 = math.log2 %8 : tensor<13xf32>
      %267 = math.tan %cst : f16
      %true = arith.constant true
      %cst_41 = arith.constant 4.166400e+04 : f16
      %268 = arith.xori %c1772678022_i64, %c1772678022_i64 : i64
      %269 = arith.shrsi %c1968776031_i64, %c1334599510_i64 : i64
      scf.yield
    }
    default {
      %257 = arith.shrsi %c-26765_i16, %c-26765_i16 : i16
      %258 = math.ceil %9 : tensor<13x7xf16>
      %259 = math.ctlz %2 : tensor<13xi16>
      %260 = vector.transpose %30, [0, 1] : vector<13x7xf32> to vector<13x7xf32>
      %261 = vector.reduction <add>, %20 : vector<4xi1> into i1
      %262 = math.tanh %cst_0 : f32
      %263 = math.exp2 %6 : tensor<13xf16>
      %264 = affine.load %alloc_16[%c0] : memref<13xf32>
      %265 = math.ipowi %21, %21 : tensor<13xi32>
      bufferization.dealloc_tensor %22 : tensor<i32>
      %266 = vector.flat_transpose %36 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
      %267 = math.atan2 %16, %4 : tensor<13x7xf32>
      %268 = math.log10 %7 : tensor<7xf32>
      %269 = arith.maxui %c1968776031_i64, %c1772678022_i64 : i64
      %270 = math.powf %cst_2, %cst_2 : f32
      %generated = tensor.generate %c14 {
      ^bb0(%arg0: index):
        %alloc_41 = memref.alloc() : memref<7xi16>
        %271 = arith.floordivsi %c552705139_i32, %c1933866630_i32 : i32
        %272 = math.rsqrt %15 : tensor<13xf32>
        %273 = index.maxu %c5, %c3
        tensor.yield %264 : f32
      } : tensor<?xf32>
    }
    %39 = index.sub %c1, %c8
    %40 = vector.load %alloc_14[%c10, %c4] : memref<13x7xi64>, vector<7xi64>
    %41 = arith.maxsi %c552705139_i32, %c552705139_i32 : i32
    %42 = arith.maxf %cst_3, %cst_1 : f16
    %43 = tensor.empty() : tensor<4x4x4xi64>
    %44 = tensor.empty() : tensor<4x4xi64>
    %45 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%44 : tensor<4x4xi64>) outs(%43 : tensor<4x4x4xi64>) {
    ^bb0(%in: i64, %out: i64):
      %257 = math.log %15 : tensor<13xf32>
      %258 = arith.andi %c18931_i16, %c-26765_i16 : i16
      %259 = memref.load %alloc_11[%c5, %c3] : memref<13x4xi1>
      %260 = index.divs %c8, %c1
      %261 = arith.divui %c1933866630_i32, %c552705139_i32 : i32
      %262 = vector.matrix_multiply %40, %40 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi64>, vector<7xi64>) -> vector<1xi64>
      %263 = math.absf %reduced : tensor<f32>
      %264 = index.ceildivu %c6, %c12
      %265 = tensor.empty() : tensor<4x4x4xi64>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%265 : tensor<4x4x4xi64>) {
      ^bb0(%out_41: i64):
        %294 = math.round %15 : tensor<13xf32>
        %295 = math.log10 %cst : f16
        %296 = index.maxs %c12, %c0
        %297 = bufferization.to_tensor %alloc : memref<13x4xi16>
        %298 = index.sub %c0, %c9
        %299 = arith.remsi %in, %c1772678022_i64 : i64
        %300 = arith.remsi %out, %c1939646478_i64 : i64
        memref.store %cst_2, %alloc_9[%c12, %c3] : memref<13x7xf32>
        %301 = arith.cmpi ult, %c1968776031_i64, %c1939646478_i64 : i64
        %302 = vector.bitcast %30 : vector<13x7xf32> to vector<13x7xf32>
        %303 = memref.realloc %alloc_19 : memref<13xi16> to memref<4xi16>
        %304 = arith.maxui %out, %c1939646478_i64 : i64
        %305 = math.atan %10 : tensor<7xf32>
        %306 = vector.insertelement %out_41, %40[%c14 : index] : vector<7xi64>
        %alloc_42 = memref.alloc() : memref<7xi1>
        %307 = arith.maxui %c-26765_i16, %c18931_i16 : i16
        %308 = index.sizeof
        %309 = math.ctlz %22 : tensor<i32>
        %310 = bufferization.to_tensor %alloc_12 : memref<13x4xi16>
        %311 = math.log10 %4 : tensor<13x7xf32>
        %312 = math.fpowi %7, %5 : tensor<7xf32>, tensor<7xi32>
        %313 = arith.addi %in, %c1334599510_i64 : i64
        %314 = arith.maxui %out_41, %c1334599510_i64 : i64
        %315 = index.casts %c13 : index to i32
        %316 = index.sub %c5, %c6
        %alloc_43 = memref.alloc() : memref<4x13xi32>
        %317 = tensor.empty() : tensor<13x13xi32>
        %318 = linalg.matmul ins(%12, %alloc_43 : tensor<13x4xi32>, memref<4x13xi32>) outs(%317 : tensor<13x13xi32>) -> tensor<13x13xi32>
        %319 = arith.ori %in, %out : i64
        %320 = math.round %reduced : tensor<f32>
        %321 = arith.andi %in, %out : i64
        %322 = arith.negf %cst : f16
        %323 = index.maxu %c3, %c6
        %324 = vector.splat %c6 : vector<13xindex>
        linalg.yield %in : i64
      } -> tensor<4x4x4xi64>
      %267 = tensor.empty() : tensor<4x4x4xi64>
      %268 = tensor.empty() : tensor<4xi64>
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%267, %268, %267 : tensor<4x4x4xi64>, tensor<4xi64>, tensor<4x4x4xi64>) outs(%267 : tensor<4x4x4xi64>) {
      ^bb0(%in_41: i64, %in_42: i64, %in_43: i64, %out_44: i64):
        %294 = vector.reduction <add>, %36 : vector<7xf32> into f32
        memref.tensor_store %1, %alloc : memref<13x4xi16>
        bufferization.dealloc_tensor %14 : tensor<13x7xi32>
        %alloc_45 = memref.alloc() : memref<7x4xf32>
        %295 = tensor.empty() : tensor<13x4xf32>
        %296 = linalg.matmul ins(%16, %alloc_45 : tensor<13x7xf32>, memref<7x4xf32>) outs(%295 : tensor<13x4xf32>) -> tensor<13x4xf32>
        %297 = math.floor %cst : f16
        %298 = math.copysign %16, %17 : tensor<13x7xf32>
        %299 = math.absf %cst_3 : f16
        %300 = arith.andi %out_44, %c1968776031_i64 : i64
        affine.store %c18931_i16, %alloc_12[%c14, %c7] : memref<13x4xi16>
        %301 = memref.atomic_rmw minf %cst_0, %alloc_4[%c9] : (f32, memref<13xf32>) -> f32
        %302 = math.atan2 %13, %13 : tensor<7xf16>
        %303 = tensor.empty() : tensor<4x13xi16>
        %304 = tensor.empty() : tensor<13x13xi16>
        %305 = linalg.matmul ins(%1, %303 : tensor<13x4xi16>, tensor<4x13xi16>) outs(%304 : tensor<13x13xi16>) -> tensor<13x13xi16>
        %306 = vector.splat %c18931_i16 : vector<13x7xi16>
        %307 = arith.remf %cst_3, %cst : f16
        %308 = index.casts %c5 : index to i32
        %309 = math.ctlz %2 : tensor<13xi16>
        memref.store %cst_2, %alloc_16[%c7] : memref<13xf32>
        %310 = index.sub %c1, %c6
        %311 = math.log2 %15 : tensor<13xf32>
        %312 = index.ceildivu %c0, %310
        %313 = vector.shuffle %20, %20 [0, 4, 7] : vector<4xi1>, vector<4xi1>
        %314 = math.ctpop %c1939646478_i64 : i64
        %315 = math.floor %4 : tensor<13x7xf32>
        memref.store %false, %alloc_11[%c7, %c3] : memref<13x4xi1>
        %316 = index.floordivs %c11, %c7
        %317 = vector.broadcast %in_42 : i64 to vector<7xi64>
        %318 = math.atan %7 : tensor<7xf32>
        %319 = math.ceil %cst_0 : f32
        %320 = affine.max affine_map<(d0, d1, d2) -> (d2 * 2, d2 ceildiv 4)>(%c12, %260, %c1)
        %321 = arith.floordivsi %in_41, %out : i64
        %alloc_46 = memref.alloc() : memref<13x4xf32>
        %322 = index.sizeof
        linalg.yield %c1939646478_i64 : i64
      } -> tensor<4x4x4xi64>
      %270 = index.floordivs %c4, %c15
      %271 = math.ctlz %2 : tensor<13xi16>
      %272 = math.rsqrt %15 : tensor<13xf32>
      %273 = arith.maxui %c1072490189_i32, %c552705139_i32 : i32
      %274 = vector.create_mask %c1, %c9 : vector<13x7xi1>
      %275 = math.expm1 %13 : tensor<7xf16>
      %276 = arith.ori %c830216547_i32, %c830216547_i32 : i32
      %277 = arith.divf %cst_0, %cst_2 : f32
      %278 = vector.broadcast %c18931_i16 : i16 to vector<6xi16>
      %279 = vector.transfer_write %278, %1[%c2, %c11] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi16>, tensor<13x4xi16>
      %280 = vector.broadcast %false : i1 to vector<6xi1>
      %281 = vector.maskedload %alloc[%c10, %c2], %280, %278 : memref<13x4xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
      %282 = arith.xori %c830216547_i32, %c1933866630_i32 : i32
      %283 = math.ctpop %c1939646478_i64 : i64
      %284 = math.expm1 %3 : tensor<13x4xf16>
      %285 = index.divu %c2, %c0
      %286 = arith.andi %c1772678022_i64, %in : i64
      %287 = math.log10 %15 : tensor<13xf32>
      %288 = vector.transpose %36, [0] : vector<7xf32> to vector<7xf32>
      %289 = math.ceil %reduced : tensor<f32>
      %290 = affine.min affine_map<(d0, d1) -> (d1 + 64, (d0 + 2) * 16, d1 ceildiv 8)>(%c8, %c6)
      %291 = affine.apply affine_map<(d0) -> ((d0 * 3) ceildiv 16 - 8)>(%290)
      %292 = math.ctlz %23 : tensor<i32>
      %293 = arith.addi %c1939646478_i64, %c1772678022_i64 : i64
      linalg.yield %out : i64
    } -> tensor<4x4x4xi64>
    %46 = arith.addi %c1933866630_i32, %c1072490189_i32 : i32
    %47 = arith.divui %c1072490189_i32, %c552705139_i32 : i32
    %48 = math.ipowi %14, %14 : tensor<13x7xi32>
    %49 = math.copysign %4, %4 : tensor<13x7xf32>
    %50 = arith.maxsi %c-26765_i16, %c-26765_i16 : i16
    %51 = index.floordivs %39, %28
    %52 = arith.shli %c1334599510_i64, %c1772678022_i64 : i64
    %dest, %accumulated_value = vector.scan <minf>, %35, %36 {inclusive = false, reduction_dim = 0 : i64} : vector<13x7xf32>, vector<7xf32>
    %53 = arith.xori %c830216547_i32, %c830216547_i32 : i32
    %54 = vector.create_mask %c15, %c13 : vector<13x7xi1>
    %55 = vector.broadcast %c1939646478_i64 : i64 to vector<13x4xi64>
    %56 = arith.muli %c1334599510_i64, %c1334599510_i64 : i64
    %57 = vector.create_mask %c2, %c10 : vector<13x7xi1>
    %58 = math.tanh %cst_1 : f16
    %59 = affine.for %arg0 = 0 to 112 iter_args(%arg1 = %alloc_19) -> (memref<13xi16>) {
      affine.yield %arg1 : memref<13xi16>
    }
    %60 = vector.broadcast %c552705139_i32 : i32 to vector<7xi32>
    %61 = vector.broadcast %c1334599510_i64 : i64 to vector<4x4xi64>
    %62 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %55, %55, %61 : vector<13x4xi64>, vector<13x4xi64> into vector<4x4xi64>
    scf.index_switch %28 
    case 1 {
      %alloc_41 = memref.alloc() : memref<13xi32>
      memref.copy %alloc_6, %alloc_41 : memref<13xi32> to memref<13xi32>
      %257 = arith.minui %c830216547_i32, %c830216547_i32 : i32
      %258 = arith.subi %c1968776031_i64, %c1772678022_i64 : i64
      %259 = math.round %6 : tensor<13xf16>
      %260 = math.ctlz %12 : tensor<13x4xi32>
      %rank = tensor.rank %14 : tensor<13x7xi32>
      %261 = math.log10 %9 : tensor<13x7xf16>
      %262 = vector.broadcast %false : i1 to vector<13xi1>
      %dest_42, %accumulated_value_43 = vector.scan <maxsi>, %57, %262 {inclusive = false, reduction_dim = 1 : i64} : vector<13x7xi1>, vector<13xi1>
      %263 = scf.index_switch %c10 -> f16 
      case 1 {
        %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %20, %20, %false : vector<4xi1>, vector<4xi1> into i1
        %272 = vector.bitcast %55 : vector<13x4xi64> to vector<13x4xi64>
        %273 = math.log10 %cst_1 : f16
        %274 = arith.minf %cst, %cst : f16
        memref.tensor_store %17, %alloc_9 : memref<13x7xf32>
        %275 = arith.addf %cst_3, %cst_3 : f16
        %276 = arith.floordivsi %c-26765_i16, %c-26765_i16 : i16
        %277 = arith.subi %false, %false : i1
        %278 = vector.bitcast %37 : vector<7xf32> to vector<7xf32>
        %alloc_44 = memref.alloc() : memref<13x4xf32>
        %279 = tensor.empty() : tensor<7x4xf16>
        %280 = tensor.empty() : tensor<13x4xf16>
        %281 = linalg.matmul ins(%9, %279 : tensor<13x7xf16>, tensor<7x4xf16>) outs(%280 : tensor<13x4xf16>) -> tensor<13x4xf16>
        %282 = tensor.empty() : tensor<4x13xf16>
        %283 = tensor.empty() : tensor<13x13xf16>
        %284 = linalg.matmul ins(%3, %282 : tensor<13x4xf16>, tensor<4x13xf16>) outs(%283 : tensor<13x13xf16>) -> tensor<13x13xf16>
        %285 = math.absf %6 : tensor<13xf16>
        %286 = math.ctpop %21 : tensor<13xi32>
        %287 = index.maxu %c6, %c7
        %288 = vector.bitcast %278 : vector<7xf32> to vector<7xf32>
        scf.yield %cst_1 : f16
      }
      case 2 {
        %alloca_44 = memref.alloca() : memref<7xf16>
        %271 = vector.insertelement %cst_2, %36[%c6 : index] : vector<7xf32>
        %272 = math.ipowi %c1933866630_i32, %c1933866630_i32 : i32
        %cst_45 = arith.constant 0x4E1C9605 : f32
        %273 = math.cttz %5 : tensor<7xi32>
        %274 = arith.remf %cst_2, %cst_2 : f32
        %275 = index.floordivs %c7, %c8
        %276 = arith.cmpi slt, %c830216547_i32, %c830216547_i32 : i32
        %277 = arith.floordivsi %c1933866630_i32, %c830216547_i32 : i32
        %278 = bufferization.to_tensor %alloc_19 : memref<13xi16>
        %279 = index.castu %c6 : index to i32
        %280 = index.sub %c12, %c12
        %281 = memref.atomic_rmw maxs %c-26765_i16, %alloc_19[%c1] : (i16, memref<13xi16>) -> i16
        %282 = arith.maxsi %c1933866630_i32, %c552705139_i32 : i32
        %283 = index.ceildivu %51, %c10
        %284 = arith.xori %c552705139_i32, %c1072490189_i32 : i32
        scf.yield %cst_1 : f16
      }
      case 3 {
        %271 = vector.broadcast %cst_0 : f32 to vector<13x4xf32>
        %272 = vector.fma %271, %271, %271 : vector<13x4xf32>
        bufferization.dealloc_tensor %0 : tensor<13x7xi64>
        %273 = vector.broadcast %cst_0 : f32 to vector<13xf32>
        %274 = vector.multi_reduction <maxf>, %271, %273 [1] : vector<13x4xf32> to vector<13xf32>
        %275 = arith.shli %c1933866630_i32, %c830216547_i32 : i32
        %276 = vector.insertelement %c1933866630_i32, %60[%c6 : index] : vector<7xi32>
        %inserted_44 = tensor.insert %cst_2 into %15[%c12] : tensor<13xf32>
        %277 = math.cttz %c18931_i16 : i16
        %278 = math.copysign %cst_3, %cst_3 : f16
        %279 = affine.max affine_map<(d0, d1, d2) -> (-(d2 + d1 - 128 + 2), d1 - (d1 - 128), d0)>(%39, %c4, %c0)
        %280 = arith.shli %c-26765_i16, %c-26765_i16 : i16
        %281 = index.floordivs %c0, %c7
        %alloca_45 = memref.alloca() : memref<13x7xi64>
        %282 = math.ceil %cst : f16
        %283 = arith.addi %false, %false : i1
        %284 = arith.remsi %c1072490189_i32, %c830216547_i32 : i32
        %285 = vector.reduction <maxf>, %37 : vector<7xf32> into f32
        scf.yield %cst_3 : f16
      }
      case 4 {
        %271 = memref.realloc %alloc_7 : memref<13xi64> to memref<7xi64>
        bufferization.dealloc_tensor %2 : tensor<13xi16>
        bufferization.dealloc_tensor %7 : tensor<7xf32>
        %272 = arith.ori %c18931_i16, %c-26765_i16 : i16
        %273 = affine.max affine_map<(d0) -> (d0, -d0)>(%c12)
        %274 = math.exp2 %10 : tensor<7xf32>
        %275 = vector.shuffle %35, %30 [0, 1, 2, 5, 6, 11, 12, 13, 16, 21] : vector<13x7xf32>, vector<13x7xf32>
        %276 = math.cos %cst : f16
        %277 = arith.remf %cst_2, %cst_2 : f32
        %278 = arith.remsi %c1772678022_i64, %c1772678022_i64 : i64
        %279 = arith.maxui %c1968776031_i64, %c1939646478_i64 : i64
        %280 = vector.splat %c1772678022_i64 : vector<7xi64>
        %281 = arith.addi %c1072490189_i32, %c1072490189_i32 : i32
        %rank_44 = tensor.rank %11 : tensor<13xi1>
        %282 = memref.realloc %alloc_10 : memref<7xi32> to memref<6xi32>
        %283 = index.divu %c3, %c8
        scf.yield %cst_1 : f16
      }
      default {
        %rank_44 = tensor.rank %6 : tensor<13xf16>
        %271 = affine.max affine_map<(d0) -> (-d0)>(%c11)
        %c195021894_i32 = arith.constant 195021894 : i32
        %272 = vector.load %alloc_5[%c0] : memref<13xf32>, vector<13xf32>
        %273 = arith.shli %false, %false : i1
        %c-29820_i16 = arith.constant -29820 : i16
        %274 = arith.mulf %cst_0, %cst_2 : f32
        %275 = arith.maxui %c1334599510_i64, %c1939646478_i64 : i64
        %276 = arith.remsi %c830216547_i32, %c1072490189_i32 : i32
        %277 = math.round %cst_0 : f32
        %278 = math.absf %4 : tensor<13x7xf32>
        %279 = vector.broadcast %c-26765_i16 : i16 to vector<13x4xi16>
        %280 = arith.remf %cst, %cst_3 : f16
        %281 = arith.maxui %c1072490189_i32, %c1072490189_i32 : i32
        %282 = math.ceil %cst_0 : f32
        %283 = index.ceildivu %rank, %c9
        scf.yield %cst_3 : f16
      }
      %264 = arith.andi %c1939646478_i64, %c1772678022_i64 : i64
      %265 = vector.multi_reduction <or>, %54, %57 [] : vector<13x7xi1> to vector<13x7xi1>
      %266 = affine.min affine_map<(d0, d1, d2, d3) -> ((d0 - d1) floordiv 128)>(%c8, %c8, %c4, %c10)
      %267 = index.casts %c1334599510_i64 : i64 to index
      %268 = memref.realloc %alloc_19 : memref<13xi16> to memref<7xi16>
      %269 = vector.reduction <mul>, %36 : vector<7xf32> into f32
      %270 = affine.if affine_set<(d0, d1, d2) : (d2 == 0, d1 * 2 == 0, d2 + 8 >= 0)>(%c14, %c13, %c0) -> i16 {
        %271 = math.log10 %8 : tensor<13xf32>
        %cst_44 = arith.constant 1.000000e+00 : f32
        %cst_45 = arith.constant 0.000000e+00 : f32
        %272 = vector.transfer_read %15[%c8], %cst_45 : tensor<13xf32>, vector<f32>
        %273 = arith.ori %c1939646478_i64, %c1968776031_i64 : i64
        %274 = arith.xori %c1772678022_i64, %c1939646478_i64 : i64
        %275 = arith.cmpi uge, %c1933866630_i32, %c830216547_i32 : i32
        %276 = bufferization.to_tensor %alloc_13 : memref<13x7xi1>
        %277 = math.tanh %cst_0 : f32
        %278 = arith.maxf %cst_2, %cst_2 : f32
        affine.yield %c18931_i16 : i16
      } else {
        %271 = vector.multi_reduction <add>, %54, %false [0, 1] : vector<13x7xi1> to i1
        %272 = arith.maxsi %false, %271 : i1
        %273 = vector.broadcast %cst_2 : f32 to vector<f32>
        %274 = vector.transfer_write %273, %10[%c6] : vector<f32>, tensor<7xf32>
        %275 = math.expm1 %8 : tensor<13xf32>
        %276 = arith.minui %c-26765_i16, %c18931_i16 : i16
        %alloc_44 = memref.alloc() : memref<13xi64>
        %277 = tensor.empty() : tensor<13xi64>
        %278 = math.ctlz %23 : tensor<i32>
        affine.yield %c-26765_i16 : i16
      }
      scf.yield
    }
    default {
      %257 = arith.mulf %cst, %cst : f16
      scf.index_switch %51 
      case 1 {
        %276 = affine.max affine_map<(d0) -> (d0 mod 32, d0, d0 mod 32, (d0 floordiv 64) ceildiv 2 - 16)>(%c3)
        %277 = math.absf %cst_2 : f32
        %278 = arith.andi %c1968776031_i64, %c1939646478_i64 : i64
        %279 = vector.create_mask %c4 : vector<13xi1>
        %280 = math.absf %cst_0 : f32
        %281 = math.cos %6 : tensor<13xf16>
        %cast = tensor.cast %reduced : tensor<f32> to tensor<f32>
        %true = arith.constant true
        %282 = arith.floordivsi %c552705139_i32, %c1933866630_i32 : i32
        %283 = math.round %cst_2 : f32
        %284 = memref.load %alloc[%c2, %c1] : memref<13x4xi16>
        %285 = arith.maxsi %c1334599510_i64, %c1772678022_i64 : i64
        %286 = index.maxs %c11, %c9
        %287 = vector.load %alloc_5[%c0] : memref<13xf32>, vector<13x7xf32>
        %288 = arith.subi %c-26765_i16, %c-26765_i16 : i16
        %c1135922683_i32 = arith.constant 1135922683 : i32
        scf.yield
      }
      case 2 {
        %276 = math.log10 %15 : tensor<13xf32>
        %277 = index.floordivs %c5, %c10
        %278 = index.ceildivu %28, %c13
        %alloc_42 = memref.alloc() : memref<7xi1>
        bufferization.dealloc_tensor %4 : tensor<13x7xf32>
        %279 = math.ceil %7 : tensor<7xf32>
        %280 = vector.multi_reduction <and>, %60, %60 [] : vector<7xi32> to vector<7xi32>
        %281 = index.mul %c8, %51
        %282 = math.copysign %cst_1, %cst : f16
        bufferization.dealloc_tensor %12 : tensor<13x4xi32>
        %283 = vector.bitcast %29 : vector<13x7xf32> to vector<13x7xf32>
        %284 = index.divs %c2, %c3
        %c1995487660_i32 = arith.constant 1995487660 : i32
        %285 = vector.extract_strided_slice %60 {offsets = [0], sizes = [3], strides = [1]} : vector<7xi32> to vector<3xi32>
        %286 = vector.extract_strided_slice %35 {offsets = [1], sizes = [11], strides = [1]} : vector<13x7xf32> to vector<11x7xf32>
        %287 = math.absf %7 : tensor<7xf32>
        scf.yield
      }
      case 3 {
        %276 = vector.insertelement %false, %20[%c5 : index] : vector<4xi1>
        %277 = math.cos %9 : tensor<13x7xf16>
        %278 = index.divu %c12, %c15
        %alloc_42 = memref.alloc() : memref<7x4xf32>
        %279 = tensor.empty() : tensor<13x4xf32>
        %280 = linalg.matmul ins(%16, %alloc_42 : tensor<13x7xf32>, memref<7x4xf32>) outs(%279 : tensor<13x4xf32>) -> tensor<13x4xf32>
        %281 = index.divs %c6, %28
        %282 = math.log2 %cst_2 : f32
        %283 = math.expm1 %8 : tensor<13xf32>
        %284 = math.absf %3 : tensor<13x4xf16>
        %285 = arith.minf %cst_3, %cst_3 : f16
        %286 = arith.maxui %c830216547_i32, %c552705139_i32 : i32
        %287 = memref.load %alloc_17[%c9] : memref<13xf16>
        %288 = math.tan %cst_2 : f32
        %289 = tensor.empty() : tensor<4x7xf16>
        %290 = tensor.empty() : tensor<13x7xf16>
        %291 = linalg.matmul ins(%3, %289 : tensor<13x4xf16>, tensor<4x7xf16>) outs(%290 : tensor<13x7xf16>) -> tensor<13x7xf16>
        %292 = arith.maxsi %c1772678022_i64, %c1772678022_i64 : i64
        %alloc_43 = memref.alloc() : memref<7x13xf16>
        %293 = tensor.empty() : tensor<13x13xf16>
        %294 = linalg.matmul ins(%9, %alloc_43 : tensor<13x7xf16>, memref<7x13xf16>) outs(%293 : tensor<13x13xf16>) -> tensor<13x13xf16>
        %295 = arith.ori %c1072490189_i32, %c552705139_i32 : i32
        scf.yield
      }
      case 4 {
        bufferization.dealloc_tensor %15 : tensor<13xf32>
        %276 = math.rsqrt %13 : tensor<7xf16>
        %277 = index.ceildivu %c1, %c15
        %278 = math.tanh %3 : tensor<13x4xf16>
        %279 = tensor.empty() : tensor<4x7xf16>
        %280 = tensor.empty() : tensor<13x7xf16>
        %281 = linalg.matmul ins(%3, %279 : tensor<13x4xf16>, tensor<4x7xf16>) outs(%280 : tensor<13x7xf16>) -> tensor<13x7xf16>
        %282 = math.rsqrt %4 : tensor<13x7xf32>
        %alloc_42 = memref.alloc() : memref<7x7xf32>
        %283 = tensor.empty() : tensor<13x7xf32>
        %284 = linalg.matmul ins(%17, %alloc_42 : tensor<13x7xf32>, memref<7x7xf32>) outs(%283 : tensor<13x7xf32>) -> tensor<13x7xf32>
        memref.store %c1933866630_i32, %alloc_10[%c4] : memref<7xi32>
        %285 = math.powf %cst_1, %cst_1 : f16
        %286 = math.ceil %reduced : tensor<f32>
        %rank = tensor.rank %13 : tensor<7xf16>
        %287 = math.log10 %16 : tensor<13x7xf32>
        %288 = memref.load %alloc_9[%c2, %c4] : memref<13x7xf32>
        %289 = arith.minf %cst_1, %cst : f16
        %290 = math.log2 %13 : tensor<7xf16>
        memref.store %c-26765_i16, %alloc_19[%c9] : memref<13xi16>
        scf.yield
      }
      default {
        %276 = math.log2 %9 : tensor<13x7xf16>
        %277 = math.ipowi %11, %11 : tensor<13xi1>
        %278 = vector.insertelement %c1072490189_i32, %60[%51 : index] : vector<7xi32>
        %279 = vector.matrix_multiply %37, %37 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
        %280 = memref.realloc %alloc_6 : memref<13xi32> to memref<7xi32>
        %281 = affine.apply affine_map<(d0, d1) -> (d0 * 64)>(%c14, %c2)
        %282 = index.add %51, %28
        %283 = math.exp2 %8 : tensor<13xf32>
        %284 = vector.insertelement %c1968776031_i64, %40[%c9 : index] : vector<7xi64>
        %285 = memref.atomic_rmw maxs %c-26765_i16, %alloc_19[%c0] : (i16, memref<13xi16>) -> i16
        %286 = vector.insertelement %c1939646478_i64, %40[%c15 : index] : vector<7xi64>
        %287 = math.log10 %9 : tensor<13x7xf16>
        %288 = arith.floordivsi %c552705139_i32, %c552705139_i32 : i32
        %289 = vector.broadcast %c1072490189_i32 : i32 to vector<i32>
        %290 = vector.transfer_write %289, %21[%c11] : vector<i32>, tensor<13xi32>
        %291 = vector.reduction <maxf>, %37 : vector<7xf32> into f32
        %292 = vector.broadcast %c1939646478_i64 : i64 to vector<4xi64>
        %dest_42, %accumulated_value_43 = vector.scan <or>, %55, %292 {inclusive = true, reduction_dim = 0 : i64} : vector<13x4xi64>, vector<4xi64>
      }
      %alloc_41 = memref.alloc() : memref<4x4xi32>
      %258 = tensor.empty() : tensor<13x4xi32>
      %259 = linalg.matmul ins(%12, %alloc_41 : tensor<13x4xi32>, memref<4x4xi32>) outs(%258 : tensor<13x4xi32>) -> tensor<13x4xi32>
      %260 = math.atan %7 : tensor<7xf32>
      %261 = math.fpowi %6, %21 : tensor<13xf16>, tensor<13xi32>
      %262 = affine.apply affine_map<(d0, d1, d2) -> (d2 mod 4 - 128)>(%39, %c15, %39)
      %263 = arith.addi %c-26765_i16, %c18931_i16 : i16
      %264 = arith.remf %cst_0, %cst_2 : f32
      %265 = math.absf %16 : tensor<13x7xf32>
      %266 = index.sub %c15, %c14
      %267 = index.castu %c1072490189_i32 : i32 to index
      %268 = vector.broadcast %cst_2 : f32 to vector<13xf32>
      %269 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %30, %36, %268 : vector<13x7xf32>, vector<7xf32> into vector<13xf32>
      %270 = math.ceil %8 : tensor<13xf32>
      %271 = tensor.empty() : tensor<7x7xf16>
      %272 = tensor.empty() : tensor<13x7xf16>
      %273 = linalg.matmul ins(%9, %271 : tensor<13x7xf16>, tensor<7x7xf16>) outs(%272 : tensor<13x7xf16>) -> tensor<13x7xf16>
      %274 = vector.broadcast %c1334599510_i64 : i64 to vector<7xi64>
      %275 = vector.create_mask %c6, %c4 : vector<13x7xi1>
    }
    %63 = index.ceildivu %c8, %c0
    %64 = index.floordivs %c14, %c14
    %65 = vector.multi_reduction <add>, %30, %37 [0] : vector<13x7xf32> to vector<7xf32>
    %66 = math.powf %10, %10 : tensor<7xf32>
    %67 = arith.cmpi sgt, %c18931_i16, %c-26765_i16 : i16
    %68 = math.ipowi %c1933866630_i32, %c830216547_i32 : i32
    %69 = math.absf %10 : tensor<7xf32>
    %70 = vector.extract_strided_slice %37 {offsets = [1], sizes = [2], strides = [1]} : vector<7xf32> to vector<2xf32>
    %71 = vector.bitcast %54 : vector<13x7xi1> to vector<13x7xi1>
    scf.if %false {
      %257 = math.log1p %15 : tensor<13xf32>
      %258 = arith.maxf %cst_0, %cst_2 : f32
      %259 = math.ctpop %c830216547_i32 : i32
      %260 = index.ceildivs %c10, %c11
      %261 = memref.load %alloc_19[%c10] : memref<13xi16>
      %262 = index.maxs %c13, %c5
      %inserted_41 = tensor.insert %cst_1 into %13[%c5] : tensor<7xf16>
      %263 = vector.create_mask %39, %c1 : vector<13x4xi1>
    } else {
      %257 = math.cttz %5 : tensor<7xi32>
      %258 = vector.flat_transpose %37 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
      %259 = vector.create_mask %c1, %c14 : vector<13x4xi1>
      %260 = index.maxu %63, %63
      %261 = index.divs %c11, %c15
      %262 = arith.minsi %false, %false : i1
      %263 = arith.divsi %c1334599510_i64, %c1968776031_i64 : i64
      %264 = arith.divui %c1939646478_i64, %c1772678022_i64 : i64
    }
    %72 = index.divu %51, %c1
    %73 = arith.maxui %c552705139_i32, %c1933866630_i32 : i32
    %74 = vector.broadcast %c-26765_i16 : i16 to vector<13x7xi16>
    %75 = vector.maskedload %alloc_13[%c1, %c5], %20, %20 : memref<13x7xi1>, vector<4xi1>, vector<4xi1> into vector<4xi1>
    %76 = memref.alloca_scope  -> (i64) {
      %rank = tensor.rank %0 : tensor<13x7xi64>
      %257 = affine.if affine_set<(d0, d1, d2, d3) : (d1 floordiv 8 - 4 == 0)>(%c13, %c11, %c8, %c6) -> i32 {
        %284 = arith.negf %cst_1 : f16
        %285 = vector.bitcast %40 : vector<7xi64> to vector<7xi64>
        %286 = index.ceildivu %rank, %c4
        %287 = index.divu %c2, %64
        %288 = vector.broadcast %c1072490189_i32 : i32 to vector<7xi32>
        %289 = index.sub %c15, %28
        %290 = arith.remf %cst, %cst : f16
        %291 = arith.divui %c1072490189_i32, %c830216547_i32 : i32
        affine.yield %c552705139_i32 : i32
      } else {
        %284 = index.divu %c15, %c2
        %285 = vector.matrix_multiply %70, %37 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 7 : i32} : (vector<2xf32>, vector<7xf32>) -> vector<14xf32>
        %286 = arith.subi %c830216547_i32, %c1933866630_i32 : i32
        %287 = math.ctlz %5 : tensor<7xi32>
        %288 = math.fpowi %4, %14 : tensor<13x7xf32>, tensor<13x7xi32>
        %289 = vector.broadcast %cst_2 : f32 to vector<13x7xf32>
        %290 = vector.fma %289, %289, %30 : vector<13x7xf32>
        %cst_47 = arith.constant 1.19223258E+9 : f32
        %291 = affine.load %alloc_5[%c9] : memref<13xf32>
        affine.yield %c1072490189_i32 : i32
      }
      %258 = math.exp2 %9 : tensor<13x7xf16>
      %259 = arith.cmpi slt, %c1939646478_i64, %c1334599510_i64 : i64
      %260 = arith.addi %c1072490189_i32, %c552705139_i32 : i32
      %261 = arith.negf %cst_3 : f16
      %262 = index.sub %c1, %63
      %263 = index.divu %c1, %c6
      %264 = tensor.empty() : tensor<4x4x4xi64>
      %alloc_41 = memref.alloc() : memref<4x4xi64>
      %alloc_42 = memref.alloc() : memref<4xi64>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_41, %alloc_42, %alloc_41 : memref<4x4xi64>, memref<4xi64>, memref<4x4xi64>) outs(%264 : tensor<4x4x4xi64>) {
      ^bb0(%in: i64, %in_47: i64, %in_48: i64, %out: i64):
        %284 = arith.shrsi %in, %c1334599510_i64 : i64
        %285 = tensor.empty() : tensor<13x7xi64>
        %286 = vector.splat %cst : vector<13x7xf16>
        %287 = math.log10 %6 : tensor<13xf16>
        %288 = index.divs %c15, %64
        memref.store %false, %alloc_13[%c9, %c3] : memref<13x7xi1>
        %289 = vector.splat %in_48 : vector<7xi64>
        %290 = math.ctlz %c-26765_i16 : i16
        %291 = vector.broadcast %false : i1 to vector<4xi1>
        vector.transfer_write %291, %alloc_8[%39, %c11] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<4xi1>, memref<13x4xi1>
        %292 = index.divu %63, %262
        %293 = arith.subi %c1939646478_i64, %in : i64
        memref.assume_alignment %alloc_13, 1 : memref<13x7xi1>
        %294 = math.copysign %16, %4 : tensor<13x7xf32>
        %295 = vector.broadcast %cst_2 : f32 to vector<13x4xf32>
        %296 = vector.fma %295, %295, %295 : vector<13x4xf32>
        %297 = math.absi %0 : tensor<13x7xi64>
        %298 = index.divu %72, %c5
        %299 = math.absf %16 : tensor<13x7xf32>
        memref.store %in, %alloc_7[%c8] : memref<13xi64>
        %300 = index.divs %c14, %c1
        %alloc_49 = memref.alloc() : memref<4x4xi32>
        %301 = tensor.empty() : tensor<13x4xi32>
        %302 = linalg.matmul ins(%12, %alloc_49 : tensor<13x4xi32>, memref<4x4xi32>) outs(%301 : tensor<13x4xi32>) -> tensor<13x4xi32>
        %303 = math.floor %6 : tensor<13xf16>
        %304 = vector.broadcast %cst_2 : f32 to vector<13xf32>
        %305 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %36, %29, %304 : vector<7xf32>, vector<13x7xf32> into vector<13xf32>
        %306 = index.divs %c11, %288
        %307 = vector.bitcast %70 : vector<2xf32> to vector<2xf32>
        %308 = index.divu %292, %c13
        %309 = arith.minsi %c1933866630_i32, %c830216547_i32 : i32
        %310 = arith.maxf %cst_2, %cst_2 : f32
        %311 = math.tanh %6 : tensor<13xf16>
        %312 = vector.broadcast %cst_0 : f32 to vector<13x4xf32>
        %313 = vector.fma %312, %295, %296 : vector<13x4xf32>
        %314 = arith.cmpi ule, %c1334599510_i64, %in_47 : i64
        %cst_50 = arith.constant 4.420000e+03 : f16
        %315 = index.casts %c14 : index to i32
        linalg.yield %c1772678022_i64 : i64
      } -> tensor<4x4x4xi64>
      %collapsed_43 = tensor.collapse_shape %3 [[0, 1]] : tensor<13x4xf16> into tensor<52xf16>
      %266 = memref.load %alloc_16[%c6] : memref<13xf32>
      %inserted_44 = tensor.insert %c1072490189_i32 into %14[%c4, %c5] : tensor<13x7xi32>
      %267 = math.ceil %9 : tensor<13x7xf16>
      %268 = vector.broadcast %cst_0 : f32 to vector<13xf32>
      %269 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %29, %37, %268 : vector<13x7xf32>, vector<7xf32> into vector<13xf32>
      scf.index_switch %c4 
      case 1 {
        %284 = vector.multi_reduction <mul>, %35, %37 [0] : vector<13x7xf32> to vector<7xf32>
        %285 = arith.minui %c18931_i16, %c18931_i16 : i16
        %286 = vector.broadcast %cst_2 : f32 to vector<13x7xf32>
        %287 = vector.fma %286, %35, %286 : vector<13x7xf32>
        %288 = math.log %13 : tensor<7xf16>
        memref.store %false, %alloc_11[%c2, %c3] : memref<13x4xi1>
        %289 = math.tanh %15 : tensor<13xf32>
        %290 = math.ctlz %14 : tensor<13x7xi32>
        %291 = memref.realloc %alloc_19 : memref<13xi16> to memref<4xi16>
        %292 = vector.matrix_multiply %20, %75 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %from_elements = tensor.from_elements %cst, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst_3 : tensor<7xf16>
        %293 = math.cos %18 : tensor<f32>
        %294 = index.divs %c10, %64
        %295 = vector.splat %28 : vector<13x4xindex>
        %296 = vector.matrix_multiply %60, %60 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
        %297 = math.fpowi %9, %14 : tensor<13x7xf16>, tensor<13x7xi32>
        %298 = index.maxs %72, %c7
        scf.yield
      }
      case 2 {
        %284 = vector.splat %false : vector<7xi1>
        %285 = math.atan2 %cst_3, %cst_1 : f16
        %286 = index.floordivs %c2, %c11
        bufferization.dealloc_tensor %0 : tensor<13x7xi64>
        %287 = affine.apply affine_map<(d0, d1, d2) -> (d1 floordiv 64)>(%72, %c14, %c5)
        %dest_47, %accumulated_value_48 = vector.scan <add>, %29, %36 {inclusive = true, reduction_dim = 0 : i64} : vector<13x7xf32>, vector<7xf32>
        %inserted_49 = tensor.insert %cst_2 into %4[%c10, %c0] : tensor<13x7xf32>
        %288 = vector.matrix_multiply %37, %70 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 2 : i32} : (vector<7xf32>, vector<2xf32>) -> vector<14xf32>
        %289 = math.absf %6 : tensor<13xf16>
        %290 = math.absi %12 : tensor<13x4xi32>
        %291 = math.sqrt %cst_0 : f32
        %292 = vector.multi_reduction <minui>, %20, %75 [] : vector<4xi1> to vector<4xi1>
        %293 = math.ceil %7 : tensor<7xf32>
        %294 = math.tanh %13 : tensor<7xf16>
        %295 = index.ceildivs %64, %c1
        %c1748259243_i32 = arith.constant 1748259243 : i32
        scf.yield
      }
      case 3 {
        %284 = index.sizeof
        %285 = math.absf %cst_3 : f16
        %286 = index.casts %c12 : index to i32
        %287 = vector.shuffle %36, %36 [0, 1, 3, 4, 8, 9, 10, 11] : vector<7xf32>, vector<7xf32>
        %288 = vector.extract %37[1] : vector<7xf32>
        %289 = arith.mulf %cst_2, %cst_2 : f32
        %290 = arith.mulf %cst_3, %cst : f16
        memref.store %false, %alloc_13[%c12, %c2] : memref<13x7xi1>
        %291 = arith.remsi %c-26765_i16, %c18931_i16 : i16
        %292 = math.log %collapsed_43 : tensor<52xf16>
        %293 = index.divu %c10, %c10
        %294 = index.casts %c18931_i16 : i16 to index
        %295 = math.floor %3 : tensor<13x4xf16>
        %alloc_47 = memref.alloc() : memref<13x7xf32>
        %296 = arith.remf %cst_0, %cst_2 : f32
        %297 = index.sub %64, %263
        scf.yield
      }
      case 4 {
        %284 = arith.minsi %c18931_i16, %c-26765_i16 : i16
        %285 = arith.cmpi sle, %false, %false : i1
        %286 = index.maxu %c12, %c4
        %287 = arith.ori %c1933866630_i32, %c830216547_i32 : i32
        %288 = vector.broadcast %false : i1 to vector<7xi1>
        %dest_47, %accumulated_value_48 = vector.scan <add>, %54, %288 {inclusive = true, reduction_dim = 0 : i64} : vector<13x7xi1>, vector<7xi1>
        %289 = vector.shuffle %29, %30 [0, 4, 5, 6, 8, 12, 13, 14, 15, 18, 22, 23, 24, 25] : vector<13x7xf32>, vector<13x7xf32>
        %290 = math.log10 %9 : tensor<13x7xf16>
        %291 = arith.cmpi sgt, %c1933866630_i32, %c552705139_i32 : i32
        %292 = index.divu %286, %c2
        %293 = math.rsqrt %4 : tensor<13x7xf32>
        %294 = arith.xori %c1939646478_i64, %c1772678022_i64 : i64
        %cst_49 = arith.constant 1.000000e+00 : f16
        %cst_50 = arith.constant 0.000000e+00 : f16
        %295 = vector.transfer_read %3[%c12, %64], %cst_50 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<13x4xf16>, vector<4xf16>
        bufferization.dealloc_tensor %6 : tensor<13xf16>
        %296 = arith.remf %cst_0, %cst_0 : f32
        %297 = arith.maxui %c552705139_i32, %c830216547_i32 : i32
        %298 = index.add %c14, %c8
        scf.yield
      }
      default {
        %284 = math.copysign %13, %13 : tensor<7xf16>
        %285 = index.casts %c7 : index to i32
        %286 = vector.create_mask %c0 : vector<13xi1>
        %287 = arith.maxf %cst_3, %cst : f16
        %288 = affine.apply affine_map<(d0) -> (-(d0 * 2 + 32))>(%c1)
        %289 = index.maxs %c13, %rank
        %290 = arith.floordivsi %c1968776031_i64, %c1334599510_i64 : i64
        %291 = index.floordivs %288, %262
        %292 = math.tanh %9 : tensor<13x7xf16>
        %293 = arith.floordivsi %c-26765_i16, %c-26765_i16 : i16
        %294 = math.copysign %collapsed_43, %collapsed_43 : tensor<52xf16>
        %inserted_47 = tensor.insert %c1072490189_i32 into %22[] : tensor<i32>
        %295 = arith.minf %cst_2, %cst_2 : f32
        %296 = bufferization.to_tensor %alloc_6 : memref<13xi32>
        %297 = math.fpowi %cst_1, %c552705139_i32 : f16, i32
        %298 = math.copysign %4, %17 : tensor<13x7xf32>
      }
      %270 = vector.splat %c0 : vector<13x4xindex>
      %271 = math.fpowi %10, %5 : tensor<7xf32>, tensor<7xi32>
      memref.store %cst_3, %alloc_17[%c11] : memref<13xf16>
      %272 = arith.divui %c18931_i16, %c18931_i16 : i16
      %273 = vector.broadcast %c18931_i16 : i16 to vector<13x7xi16>
      %274 = arith.ori %c1933866630_i32, %c552705139_i32 : i32
      %275 = arith.addf %cst_1, %cst_1 : f16
      %dest_45, %accumulated_value_46 = vector.scan <add>, %30, %37 {inclusive = true, reduction_dim = 0 : i64} : vector<13x7xf32>, vector<7xf32>
      %276 = arith.addf %cst_1, %cst_3 : f16
      %277 = vector.shuffle %60, %60 [5, 6, 10, 12, 13] : vector<7xi32>, vector<7xi32>
      %278 = math.log10 %cst_0 : f32
      %279 = index.floordivs %c4, %51
      %280 = index.divu %72, %28
      %281 = vector.load %alloc_15[%c12, %c2] : memref<13x4xi1>, vector<13x7xi1>
      %282 = math.absf %8 : tensor<13xf32>
      %283 = index.maxu %72, %c14
      vector.print %273 : vector<13x7xi16>
      memref.alloca_scope.return %c1334599510_i64 : i64
    }
    %77 = math.tan %15 : tensor<13xf32>
    %78 = affine.apply affine_map<(d0, d1, d2) -> (d2 floordiv 128 + 2)>(%c3, %c6, %c1)
    memref.assume_alignment %alloc, 4 : memref<13x4xi16>
    %79 = math.ctpop %0 : tensor<13x7xi64>
    %80 = math.fpowi %3, %12 : tensor<13x4xf16>, tensor<13x4xi32>
    %81 = index.casts %c1 : index to i32
    %82 = memref.load %alloc_15[%c9, %c3] : memref<13x4xi1>
    %83 = math.ctlz %22 : tensor<i32>
    %84 = tensor.empty() : tensor<4x4x4xi64>
    %85 = tensor.empty() : tensor<4x4xi64>
    %86 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%85 : tensor<4x4xi64>) outs(%84 : tensor<4x4x4xi64>) {
    ^bb0(%in: i64, %out: i64):
      %257 = scf.if %false -> (memref<13x4xi1>) {
        %true = arith.constant true
        %287 = arith.xori %c552705139_i32, %c552705139_i32 : i32
        %288 = index.maxs %c14, %c5
        %289 = arith.negf %cst_3 : f16
        %290 = vector.broadcast %cst_0 : f32 to vector<13xf32>
        %291 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %36, %35, %290 : vector<7xf32>, vector<13x7xf32> into vector<13xf32>
        %292 = vector.matrix_multiply %37, %37 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
        %293 = arith.remsi %c1939646478_i64, %c1968776031_i64 : i64
        %294 = math.fpowi %6, %21 : tensor<13xf16>, tensor<13xi32>
        scf.yield %alloc_15 : memref<13x4xi1>
      } else {
        %287 = affine.max affine_map<(d0, d1, d2) -> (d1 * 2 - d2)>(%c3, %28, %c11)
        %288 = vector.shuffle %54, %54 [1, 3, 4, 5, 7, 8, 9, 10, 12, 13, 15, 18, 21] : vector<13x7xi1>, vector<13x7xi1>
        %289 = bufferization.clone %alloc_10 : memref<7xi32> to memref<7xi32>
        %290 = vector.reduction <maxf>, %70 : vector<2xf32> into f32
        %inserted_44 = tensor.insert %cst_2 into %7[%c5] : tensor<7xf32>
        %291 = index.floordivs %c11, %c12
        %292 = arith.addi %c1072490189_i32, %c1072490189_i32 : i32
        %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %75, %75, %false : vector<4xi1>, vector<4xi1> into i1
        scf.yield %alloc_11 : memref<13x4xi1>
      }
      %258 = tensor.empty() : tensor<4x7xi16>
      %259 = tensor.empty() : tensor<13x7xi16>
      %260 = linalg.matmul ins(%1, %258 : tensor<13x4xi16>, tensor<4x7xi16>) outs(%259 : tensor<13x7xi16>) -> tensor<13x7xi16>
      %261 = math.atan2 %7, %10 : tensor<7xf32>
      %262 = math.cttz %22 : tensor<i32>
      %263 = math.log %cst_0 : f32
      scf.execute_region {
        %287 = index.maxu %28, %64
        %288 = arith.maxf %cst, %cst : f16
        %289 = math.expm1 %9 : tensor<13x7xf16>
        %290 = math.atan %cst_2 : f32
        %291 = arith.minui %c1772678022_i64, %c1968776031_i64 : i64
        affine.store %false, %257[%c15, %c10] : memref<13x4xi1>
        %292 = memref.realloc %alloc_18 : memref<7xf32> to memref<7xf32>
        %293 = arith.addi %c-26765_i16, %c-26765_i16 : i16
        %294 = math.cos %4 : tensor<13x7xf32>
        %cast = tensor.cast %7 : tensor<7xf32> to tensor<?xf32>
        %295 = arith.cmpi ugt, %c1939646478_i64, %c1939646478_i64 : i64
        %296 = memref.realloc %alloc_10 : memref<7xi32> to memref<13xi32>
        %297 = arith.remf %cst_0, %cst_0 : f32
        %298 = vector.extract_strided_slice %75 {offsets = [1], sizes = [1], strides = [1]} : vector<4xi1> to vector<1xi1>
        %299 = vector.matrix_multiply %40, %40 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi64>, vector<7xi64>) -> vector<1xi64>
        %300 = index.ceildivu %64, %c11
        scf.yield
      }
      %264 = math.powf %3, %3 : tensor<13x4xf16>
      %265 = math.ipowi %1, %1 : tensor<13x4xi16>
      %266 = math.atan2 %16, %17 : tensor<13x7xf32>
      %267 = index.floordivs %c2, %64
      %268 = tensor.empty() : tensor<4x4x4xi64>
      %269 = tensor.empty() : tensor<4x4xi64>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%269 : tensor<4x4xi64>) outs(%268 : tensor<4x4x4xi64>) {
      ^bb0(%in_44: i64, %out_45: i64):
        %287 = index.maxu %c8, %c6
        %288 = index.ceildivu %c11, %63
        %289 = math.log10 %10 : tensor<7xf32>
        %290 = vector.splat %c0 : vector<13x7xindex>
        %291 = affine.max affine_map<(d0) -> (((d0 floordiv 16) mod 32) * 2, (d0 floordiv 8) * 32, ((d0 floordiv 16) mod 32) * 2, d0 floordiv 8 - 2)>(%287)
        %292 = index.maxs %72, %c15
        %293 = vector.broadcast %cst_0 : f32 to vector<7x7xf32>
        %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %35, %29, %293 : vector<13x7xf32>, vector<13x7xf32> into vector<7x7xf32>
        %295 = arith.addi %c1968776031_i64, %76 : i64
        %296 = math.tanh %13 : tensor<7xf16>
        %297 = math.cos %15 : tensor<13xf32>
        %298 = index.maxs %c2, %c5
        %299 = index.maxs %c11, %c11
        %300 = math.exp2 %7 : tensor<7xf32>
        %301 = arith.subi %in, %in : i64
        %302 = vector.broadcast %c830216547_i32 : i32 to vector<7xi32>
        %303 = vector.matrix_multiply %302, %60 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
        %304 = vector.transpose %29, [0, 1] : vector<13x7xf32> to vector<13x7xf32>
        %305 = arith.andi %c1334599510_i64, %c1968776031_i64 : i64
        %306 = arith.remf %cst_1, %cst_3 : f16
        %307 = index.divs %39, %c13
        %308 = arith.divsi %c1072490189_i32, %c1933866630_i32 : i32
        %309 = math.ctlz %c1939646478_i64 : i64
        %310 = vector.broadcast %cst_0 : f32 to vector<7xf32>
        %311 = arith.mulf %cst, %cst_3 : f16
        %312 = math.expm1 %9 : tensor<13x7xf16>
        %313 = arith.addi %c830216547_i32, %c552705139_i32 : i32
        %314 = index.divu %c7, %39
        %315 = vector.transpose %35, [1, 0] : vector<13x7xf32> to vector<7x13xf32>
        %316 = index.divu %c7, %c11
        %317 = math.expm1 %cst : f16
        %318 = math.ceil %4 : tensor<13x7xf32>
        %319 = tensor.empty(%c13) : tensor<?xf32>
        linalg.yield %in : i64
      } -> tensor<4x4x4xi64>
      bufferization.dealloc_tensor %259 : tensor<13x7xi16>
      %271 = vector.flat_transpose %75 {columns = 2 : i32, rows = 2 : i32} : vector<4xi1> -> vector<4xi1>
      %272 = math.tanh %8 : tensor<13xf32>
      %273 = math.log10 %reduced : tensor<f32>
      bufferization.dealloc_tensor %8 : tensor<13xf32>
      %274 = vector.broadcast %false : i1 to vector<13xi1>
      %dest_41, %accumulated_value_42 = vector.scan <add>, %54, %274 {inclusive = false, reduction_dim = 1 : i64} : vector<13x7xi1>, vector<13xi1>
      %275 = index.divu %c8, %c2
      %276 = affine.apply affine_map<(d0, d1) -> (-(d1 - 64))>(%28, %64)
      %277 = math.tan %8 : tensor<13xf32>
      %278 = bufferization.to_tensor %alloc_12 : memref<13x4xi16>
      %279 = tensor.empty(%c3) : tensor<?xi32>
      affine.for %arg0 = 0 to 3 {
      }
      %280 = index.divu %51, %c10
      %281 = vector.extract_strided_slice %57 {offsets = [1], sizes = [4], strides = [1]} : vector<13x7xi1> to vector<4x7xi1>
      %alloc_43 = memref.alloc() : memref<13x4xf16>
      %282 = affine.if affine_set<(d0, d1, d2, d3) : (d2 + 14 == 0)>(%c10, %c8, %c9, %c7) -> i32 {
        memref.store %false, %alloc_15[%c8, %c3] : memref<13x4xi1>
        %287 = math.ctpop %2 : tensor<13xi16>
        %288 = math.tanh %15 : tensor<13xf32>
        %289 = arith.maxui %c1334599510_i64, %c1334599510_i64 : i64
        affine.store %out, %alloc_7[%c0] : memref<13xi64>
        memref.assume_alignment %alloc_8, 2 : memref<13x4xi1>
        %290 = arith.subi %c830216547_i32, %c830216547_i32 : i32
        %291 = math.ctpop %12 : tensor<13x4xi32>
        affine.yield %c1072490189_i32 : i32
      } else {
        %287 = index.ceildivu %c4, %c9
        %rank = tensor.rank %reduced : tensor<f32>
        %288 = vector.broadcast %false : i1 to vector<7xi1>
        %dest_44, %accumulated_value_45 = vector.scan <mul>, %281, %288 {inclusive = false, reduction_dim = 0 : i64} : vector<4x7xi1>, vector<7xi1>
        %289 = vector.broadcast %cst_0 : f32 to vector<f32>
        vector.transfer_write %289, %alloc_16[%63] : vector<f32>, memref<13xf32>
        %290 = vector.matrix_multiply %271, %20 {lhs_columns = 4 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<4xi1>, vector<4xi1>) -> vector<1xi1>
        %291 = math.log %8 : tensor<13xf32>
        %292 = vector.extract_strided_slice %29 {offsets = [0], sizes = [3], strides = [1]} : vector<13x7xf32> to vector<3x7xf32>
        %293 = math.absi %5 : tensor<7xi32>
        affine.yield %c552705139_i32 : i32
      }
      memref.tensor_store %10, %alloc_18 : memref<7xf32>
      %283 = arith.remf %cst_0, %cst_2 : f32
      %284 = index.add %c1, %c10
      %285 = math.log10 %8 : tensor<13xf32>
      %286 = affine.apply affine_map<(d0) -> (-(d0 floordiv 128))>(%c14)
      linalg.yield %c1334599510_i64 : i64
    } -> tensor<4x4x4xi64>
    %87 = index.ceildivu %c7, %c0
    %88 = arith.floordivsi %c1072490189_i32, %c1933866630_i32 : i32
    %alloc_21 = memref.alloc() : memref<13x7xf32>
    %89 = arith.floordivsi %c1933866630_i32, %c552705139_i32 : i32
    %alloc_22 = memref.alloc() : memref<f32>
    memref.tensor_store %reduced, %alloc_22 : memref<f32>
    %90 = math.copysign %6, %6 : tensor<13xf16>
    %91 = vector.insertelement %c1968776031_i64, %40[%c7 : index] : vector<7xi64>
    %92 = bufferization.clone %alloc_17 : memref<13xf16> to memref<13xf16>
    %93 = arith.addf %cst_3, %cst_3 : f16
    %94 = vector.bitcast %70 : vector<2xf32> to vector<2xf32>
    %95 = index.maxu %51, %c14
    %96 = math.ipowi %11, %11 : tensor<13xi1>
    %97 = bufferization.clone %alloc_6 : memref<13xi32> to memref<13xi32>
    %98 = arith.ori %c18931_i16, %c-26765_i16 : i16
    %99 = vector.shuffle %35, %35 [2, 4, 6, 10, 14, 15, 17, 19, 20, 22, 23, 25] : vector<13x7xf32>, vector<13x7xf32>
    %100 = scf.while (%arg0 = %alloc_14) : (memref<13x7xi64>) -> memref<13x7xi64> {
      %257 = arith.mulf %cst_0, %cst_2 : f32
      %258 = arith.addi %c552705139_i32, %c1933866630_i32 : i32
      %259 = index.divs %c7, %95
      %260 = memref.load %92[%c2] : memref<13xf16>
      %261 = arith.ori %c1072490189_i32, %c1933866630_i32 : i32
      %262 = math.exp2 %3 : tensor<13x4xf16>
      %263 = arith.floordivsi %c-26765_i16, %c18931_i16 : i16
      %264 = affine.load %alloc_12[%c13, %c15] : memref<13x4xi16>
      scf.condition(%false) %alloc_14 : memref<13x7xi64>
    } do {
    ^bb0(%arg0: memref<13x7xi64>):
      %257 = vector.flat_transpose %70 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
      %258 = arith.divui %c1939646478_i64, %c1334599510_i64 : i64
      %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %40, %40, %c1334599510_i64 : vector<7xi64>, vector<7xi64> into i64
      %260 = vector.broadcast %cst_3 : f16 to vector<7xf16>
      %261 = vector.broadcast %false : i1 to vector<7xi1>
      %262 = vector.maskedload %alloc_17[%c2], %261, %260 : memref<13xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
      %263 = bufferization.to_tensor %alloc_17 : memref<13xf16>
      %264 = index.maxu %c12, %c5
      %265 = vector.multi_reduction <or>, %261, %261 [] : vector<7xi1> to vector<7xi1>
      %266 = arith.maxf %cst_0, %cst_2 : f32
      %267 = math.expm1 %4 : tensor<13x7xf32>
      %268 = scf.if %false -> (f32) {
        %276 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 - 4) ceildiv 128)>(%c2, %c0, %c14, %95)
        %277 = vector.broadcast %c1933866630_i32 : i32 to vector<13x4xi32>
        %278 = vector.broadcast %false : i1 to vector<13x4xi1>
        %279 = vector.gather %5[%c3] [%277], %278, %277 : tensor<7xi32>, vector<13x4xi32>, vector<13x4xi1>, vector<13x4xi32> into vector<13x4xi32>
        %280 = math.exp2 %7 : tensor<7xf32>
        %281 = vector.broadcast %c1968776031_i64 : i64 to vector<6xi64>
        vector.transfer_write %281, %arg0[%78, %276] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi64>, memref<13x7xi64>
        memref.store %cst_3, %alloc_17[%c1] : memref<13xf16>
        %282 = index.divu %95, %c7
        %283 = arith.cmpi ne, %c1072490189_i32, %c1072490189_i32 : i32
        %284 = arith.subi %false, %false : i1
        scf.yield %cst_0 : f32
      } else {
        %276 = math.log10 %6 : tensor<13xf16>
        %277 = math.exp2 %13 : tensor<7xf16>
        %278 = vector.multi_reduction <minf>, %30, %35 [] : vector<13x7xf32> to vector<13x7xf32>
        %279 = vector.multi_reduction <and>, %60, %c1072490189_i32 [0] : vector<7xi32> to i32
        %280 = index.maxs %c8, %c9
        memref.assume_alignment %alloc_17, 2 : memref<13xf16>
        %281 = math.log2 %7 : tensor<7xf32>
        %282 = math.cttz %11 : tensor<13xi1>
        scf.yield %cst_0 : f32
      }
      %269 = arith.shli %c1072490189_i32, %c1933866630_i32 : i32
      %270 = index.sub %c5, %c13
      %271 = arith.minsi %c830216547_i32, %c552705139_i32 : i32
      %272 = math.log2 %8 : tensor<13xf32>
      %273 = vector.broadcast %cst_0 : f32 to vector<13x4xf32>
      %274 = vector.fma %273, %273, %273 : vector<13x4xf32>
      %275 = vector.reduction <mul>, %262 : vector<7xf16> into f16
      scf.yield %arg0 : memref<13x7xi64>
    }
    %101 = arith.remui %c1772678022_i64, %76 : i64
    %102 = vector.broadcast %c1334599510_i64 : i64 to vector<7xi64>
    %103 = index.sub %c12, %64
    %104 = math.ceil %cst_0 : f32
    %105 = vector.broadcast %false : i1 to vector<7x7xi1>
    %106 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %54, %54, %105 : vector<13x7xi1>, vector<13x7xi1> into vector<7x7xi1>
    %107 = math.ceil %cst_2 : f32
    %collapsed = tensor.collapse_shape %0 [[0, 1]] : tensor<13x7xi64> into tensor<91xi64>
    %108 = vector.broadcast %cst_0 : f32 to vector<13xf32>
    %109 = vector.fma %108, %108, %108 : vector<13xf32>
    %110 = index.divu %c14, %28
    memref.assume_alignment %alloc_4, 8 : memref<13xf32>
    %111 = math.fma %7, %7, %7 : tensor<7xf32>
    %112 = vector.splat %c830216547_i32 : vector<7xi32>
    %113 = index.ceildivu %c14, %72
    %114 = vector.matrix_multiply %109, %36 {lhs_columns = 1 : i32, lhs_rows = 13 : i32, rhs_columns = 7 : i32} : (vector<13xf32>, vector<7xf32>) -> vector<91xf32>
    %115 = vector.extract %29[11] : vector<13x7xf32>
    %116 = arith.shrsi %c1968776031_i64, %c1334599510_i64 : i64
    memref.assume_alignment %alloc_13, 1 : memref<13x7xi1>
    %117 = tensor.empty() : tensor<4x4x4xi64>
    %alloc_23 = memref.alloc() : memref<4x4xi64>
    %118 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_23, %alloc_23 : memref<4x4xi64>, memref<4x4xi64>) outs(%117 : tensor<4x4x4xi64>) {
    ^bb0(%in: i64, %in_41: i64, %out: i64):
      %alloc_42 = memref.alloc() : memref<7x6xf16>
      %257 = tensor.empty() : tensor<13x6xf16>
      %258 = linalg.matmul ins(%9, %alloc_42 : tensor<13x7xf16>, memref<7x6xf16>) outs(%257 : tensor<13x6xf16>) -> tensor<13x6xf16>
      %259 = vector.broadcast %false : i1 to vector<7x7xi1>
      %260 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %54, %71, %259 : vector<13x7xi1>, vector<13x7xi1> into vector<7x7xi1>
      %261 = vector.create_mask %c3 : vector<13xi1>
      %262 = affine.if affine_set<(d0, d1, d2, d3) : (d2 + 14 == 0)>(%c2, %c6, %c6, %c9) -> memref<13x7xf32> {
        %295 = math.ctpop %false : i1
        %296 = math.expm1 %cst : f16
        %297 = vector.multi_reduction <minui>, %102, %102 [] : vector<7xi64> to vector<7xi64>
        %298 = math.atan %9 : tensor<13x7xf16>
        %299 = memref.atomic_rmw maxu %in, %alloc_14[%c12, %c4] : (i64, memref<13x7xi64>) -> i64
        %300 = affine.apply affine_map<(d0, d1, d2) -> (d1 floordiv 64)>(%64, %c1, %87)
        %301 = math.tanh %4 : tensor<13x7xf32>
        %302 = arith.divui %c-26765_i16, %c-26765_i16 : i16
        affine.yield %alloc_9 : memref<13x7xf32>
      } else {
        %295 = arith.maxui %c18931_i16, %c-26765_i16 : i16
        %296 = vector.reduction <mul>, %37 : vector<7xf32> into f32
        %297 = math.tanh %10 : tensor<7xf32>
        %298 = bufferization.to_tensor %alloc : memref<13x4xi16>
        %299 = arith.cmpi sge, %in, %76 : i64
        %300 = math.ctpop %12 : tensor<13x4xi32>
        %alloc_44 = memref.alloc() : memref<13x7xi16>
        %301 = vector.bitcast %94 : vector<2xf32> to vector<2xf32>
        affine.yield %alloc_9 : memref<13x7xf32>
      }
      %263 = math.rsqrt %7 : tensor<7xf32>
      memref.assume_alignment %alloc, 16 : memref<13x4xi16>
      %264 = math.ceil %10 : tensor<7xf32>
      %265 = arith.addi %c830216547_i32, %c1933866630_i32 : i32
      %266 = math.tan %cst_0 : f32
      %267 = bufferization.clone %alloc_17 : memref<13xf16> to memref<13xf16>
      %268 = arith.ori %c-26765_i16, %c18931_i16 : i16
      bufferization.dealloc_tensor %2 : tensor<13xi16>
      %269 = tensor.empty() : tensor<7x4xf32>
      %270 = tensor.empty() : tensor<13x4xf32>
      %271 = linalg.matmul ins(%16, %269 : tensor<13x7xf32>, tensor<7x4xf32>) outs(%270 : tensor<13x4xf32>) -> tensor<13x4xf32>
      %272 = math.cttz %12 : tensor<13x4xi32>
      %rank = tensor.rank %collapsed : tensor<91xi64>
      %273 = math.ceil %18 : tensor<f32>
      %274 = bufferization.to_tensor %alloc_6 : memref<13xi32>
      %275 = scf.index_switch %c11 -> index 
      case 1 {
        memref.store %cst_0, %alloc_9[%c0, %c4] : memref<13x7xf32>
        %295 = index.divu %c5, %c9
        %296 = vector.reduction <minf>, %115 : vector<7xf32> into f32
        %297 = memref.load %alloc_17[%c9] : memref<13xf16>
        %298 = math.tanh %cst_1 : f16
        memref.store %false, %alloc_15[%c0, %c1] : memref<13x4xi1>
        %299 = arith.remf %cst_3, %cst_3 : f16
        %300 = math.tanh %3 : tensor<13x4xf16>
        %301 = math.expm1 %4 : tensor<13x7xf32>
        %302 = arith.mulf %cst_1, %cst_3 : f16
        %303 = bufferization.clone %alloc_6 : memref<13xi32> to memref<13xi32>
        %304 = arith.minf %cst, %cst : f16
        %305 = index.divu %63, %103
        %306 = index.sub %c9, %78
        %307 = index.castu %76 : i64 to index
        %308 = arith.divsi %false, %false : i1
        scf.yield %306 : index
      }
      default {
        %295 = tensor.empty() : tensor<7x6xf16>
        %296 = tensor.empty() : tensor<13x6xf16>
        %297 = linalg.matmul ins(%9, %295 : tensor<13x7xf16>, tensor<7x6xf16>) outs(%296 : tensor<13x6xf16>) -> tensor<13x6xf16>
        %298 = arith.remsi %c1072490189_i32, %c1072490189_i32 : i32
        %299 = arith.remf %cst_0, %cst_2 : f32
        %300 = index.divs %c5, %87
        %301 = index.divu %c10, %c11
        bufferization.dealloc_tensor %8 : tensor<13xf32>
        %302 = vector.broadcast %c1772678022_i64 : i64 to vector<13x4xi64>
        %303 = vector.matrix_multiply %109, %115 {lhs_columns = 1 : i32, lhs_rows = 13 : i32, rhs_columns = 7 : i32} : (vector<13xf32>, vector<7xf32>) -> vector<91xf32>
        %304 = math.atan2 %296, %296 : tensor<13x6xf16>
        %305 = math.log10 %15 : tensor<13xf32>
        %inserted_44 = tensor.insert %cst into %296[%c11, %c4] : tensor<13x6xf16>
        %306 = vector.insertelement %cst_2, %114[%72 : index] : vector<91xf32>
        %307 = arith.remsi %76, %c1939646478_i64 : i64
        %308 = arith.shrui %c552705139_i32, %c830216547_i32 : i32
        %309 = index.divs %c8, %c10
        %310 = memref.realloc %alloc_6 : memref<13xi32> to memref<13xi32>
        scf.yield %c10 : index
      }
      %276 = index.maxu %c7, %28
      %277 = vector.splat %276 : vector<13x7xindex>
      %278 = math.tan %3 : tensor<13x4xf16>
      %279 = math.absf %cst_0 : f32
      %280 = tensor.empty() : tensor<4x4xf16>
      %281 = tensor.empty() : tensor<13x4xf16>
      %282 = linalg.matmul ins(%3, %280 : tensor<13x4xf16>, tensor<4x4xf16>) outs(%281 : tensor<13x4xf16>) -> tensor<13x4xf16>
      %alloc_43 = memref.alloc() : memref<7x7xf32>
      %283 = tensor.empty() : tensor<13x7xf32>
      %284 = linalg.matmul ins(%16, %alloc_43 : tensor<13x7xf32>, memref<7x7xf32>) outs(%283 : tensor<13x7xf32>) -> tensor<13x7xf32>
      %285 = vector.broadcast %false : i1 to vector<7x7xi1>
      %286 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %54, %71, %285 : vector<13x7xi1>, vector<13x7xi1> into vector<7x7xi1>
      %287 = arith.maxui %c830216547_i32, %c552705139_i32 : i32
      %288 = arith.ori %c1933866630_i32, %c1933866630_i32 : i32
      %289 = vector.broadcast %c1933866630_i32 : i32 to vector<i32>
      %290 = vector.transfer_write %289, %21[%c9] : vector<i32>, tensor<13xi32>
      %291 = math.absf %cst_0 : f32
      %292 = math.exp %8 : tensor<13xf32>
      %293 = math.ceil %10 : tensor<7xf32>
      %294 = index.sub %64, %c11
      linalg.yield %in : i64
    } -> tensor<4x4x4xi64>
    %119 = math.ipowi %11, %11 : tensor<13xi1>
    %120 = math.log2 %6 : tensor<13xf16>
    %121 = math.tanh %10 : tensor<7xf32>
    bufferization.dealloc_tensor %15 : tensor<13xf32>
    %122 = math.log10 %6 : tensor<13xf16>
    %123 = affine.load %alloc_13[%c11, %c13] : memref<13x7xi1>
    %124 = memref.realloc %alloc_17 : memref<13xf16> to memref<7xf16>
    %125 = arith.divsi %false, %false : i1
    %126 = index.maxu %c12, %c7
    %127 = math.log %8 : tensor<13xf32>
    %dest_24, %accumulated_value_25 = vector.scan <mul>, %30, %108 {inclusive = false, reduction_dim = 1 : i64} : vector<13x7xf32>, vector<13xf32>
    %128 = math.exp %cst_2 : f32
    %129 = index.maxu %c0, %78
    memref.assume_alignment %alloc_12, 4 : memref<13x4xi16>
    %130 = math.fpowi %4, %14 : tensor<13x7xf32>, tensor<13x7xi32>
    %131 = tensor.empty() : tensor<13x7xi16>
    %132 = vector.broadcast %c-26765_i16 : i16 to vector<13xi16>
    %133 = vector.broadcast %false : i1 to vector<13xi1>
    %134 = vector.broadcast %c552705139_i32 : i32 to vector<13xi32>
    %135 = vector.gather %131[%72, %c9] [%134], %133, %132 : tensor<13x7xi16>, vector<13xi32>, vector<13xi1>, vector<13xi16> into vector<13xi16>
    %expanded = tensor.expand_shape %4 [[0], [1, 2]] : tensor<13x7xf32> into tensor<13x7x1xf32>
    %136 = vector.matrix_multiply %36, %108 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 13 : i32} : (vector<7xf32>, vector<13xf32>) -> vector<91xf32>
    %137 = vector.shuffle %60, %134 [4, 7, 13, 15, 18] : vector<7xi32>, vector<13xi32>
    %138 = index.ceildivs %c9, %c9
    %139 = arith.divf %cst_0, %cst_0 : f32
    %140 = memref.load %alloc_5[%c8] : memref<13xf32>
    %141 = arith.maxsi %c552705139_i32, %c1072490189_i32 : i32
    %142 = vector.multi_reduction <maxsi>, %55, %55 [] : vector<13x4xi64> to vector<13x4xi64>
    %143 = vector.broadcast %c1072490189_i32 : i32 to vector<13x7xi32>
    %144 = vector.reduction <xor>, %75 : vector<4xi1> into i1
    %collapsed_26 = tensor.collapse_shape %expanded [[0, 1], [2]] : tensor<13x7x1xf32> into tensor<91x1xf32>
    %145 = index.ceildivu %c10, %c2
    %146 = arith.negf %cst_1 : f16
    %147 = math.ceil %cst_0 : f32
    %148 = math.log %13 : tensor<7xf16>
    %149 = vector.splat %cst_1 : vector<7xf16>
    %150 = arith.remsi %c1334599510_i64, %76 : i64
    %151 = index.floordivs %95, %c13
    %152 = affine.if affine_set<(d0, d1, d2, d3) : (d2 + 14 == 0)>(%c12, %c9, %c5, %c5) -> i1 {
      %257 = bufferization.to_tensor %alloc_6 : memref<13xi32>
      %alloc_41 = memref.alloc() : memref<13xi32>
      %258 = vector.bitcast %134 : vector<13xi32> to vector<13xi32>
      %259 = arith.xori %c830216547_i32, %c1933866630_i32 : i32
      %260 = math.absf %7 : tensor<7xf32>
      %261 = math.atan %17 : tensor<13x7xf32>
      %262 = tensor.empty() : tensor<7x13xi32>
      %263 = tensor.empty() : tensor<13x13xi32>
      %264 = linalg.matmul ins(%14, %262 : tensor<13x7xi32>, tensor<7x13xi32>) outs(%263 : tensor<13x13xi32>) -> tensor<13x13xi32>
      %265 = index.ceildivu %129, %c9
      affine.yield %123 : i1
    } else {
      %257 = arith.ori %false, %false : i1
      %258 = arith.maxf %cst_3, %cst : f16
      %alloc_41 = memref.alloc() : memref<13x7xi32>
      memref.tensor_store %14, %alloc_41 : memref<13x7xi32>
      %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %136, %114, %cst_0 : vector<91xf32>, vector<91xf32> into f32
      %260 = bufferization.to_tensor %alloc_8 : memref<13x4xi1>
      memref.store %c18931_i16, %alloc[%c11, %c3] : memref<13x4xi16>
      memref.assume_alignment %alloc_9, 2 : memref<13x7xf32>
      %rank = tensor.rank %5 : tensor<7xi32>
      affine.yield %123 : i1
    }
    %153 = index.sub %c13, %c13
    %154 = affine.apply affine_map<(d0, d1, d2) -> (-32)>(%c7, %c10, %28)
    vector.print %102 : vector<7xi64>
    %155 = math.log10 %reduced : tensor<f32>
    %156 = arith.divui %c1334599510_i64, %c1334599510_i64 : i64
    %157 = index.divs %138, %129
    %158 = affine.apply affine_map<(d0) -> (d0 mod 16)>(%63)
    %159 = vector.splat %c1 : vector<13x4xindex>
    %160 = vector.flat_transpose %115 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
    %161 = arith.shli %c18931_i16, %c-26765_i16 : i16
    %162 = index.castu %76 : i64 to index
    %163 = vector.multi_reduction <add>, %94, %70 [] : vector<2xf32> to vector<2xf32>
    %164 = math.log10 %cst_2 : f32
    %165 = scf.if %123 -> (i16) {
      %257 = index.sub %72, %c12
      %cast = tensor.cast %10 : tensor<7xf32> to tensor<?xf32>
      %258 = math.log10 %collapsed_26 : tensor<91x1xf32>
      %cst_41 = arith.constant 1.78983232E+9 : f32
      %259 = vector.extract_strided_slice %57 {offsets = [4], sizes = [9], strides = [1]} : vector<13x7xi1> to vector<9x7xi1>
      %260 = math.exp %8 : tensor<13xf32>
      %cast_42 = tensor.cast %22 : tensor<i32> to tensor<i32>
      %261 = math.round %7 : tensor<7xf32>
      scf.yield %c18931_i16 : i16
    } else {
      %257 = arith.mulf %cst_2, %cst_0 : f32
      %258 = affine.max affine_map<(d0) -> (-(d0 floordiv 8 - 8), d0 * -17, d0 floordiv 8 - 8)>(%c2)
      %259 = vector.extract_strided_slice %94 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf32> to vector<1xf32>
      %260 = index.castu %95 : index to i32
      %cst_41 = arith.constant 3.414400e+04 : f16
      %261 = math.cttz %c1933866630_i32 : i32
      %262 = arith.maxsi %c-26765_i16, %c-26765_i16 : i16
      %263 = math.expm1 %10 : tensor<7xf32>
      scf.yield %c-26765_i16 : i16
    }
    %166 = arith.cmpi ult, %c18931_i16, %c-26765_i16 : i16
    %167 = math.log %cst_1 : f16
    %168 = scf.while (%arg0 = %false) : (i1) -> i1 {
      memref.store %cst, %92[%c5] : memref<13xf16>
      %expanded_41 = tensor.expand_shape %15 [[0, 1]] : tensor<13xf32> into tensor<13x1xf32>
      %257 = index.divu %c9, %113
      %258 = math.log %17 : tensor<13x7xf32>
      %259 = vector.extract_strided_slice %75 {offsets = [2], sizes = [1], strides = [1]} : vector<4xi1> to vector<1xi1>
      %260 = vector.bitcast %55 : vector<13x4xi64> to vector<13x4xi64>
      %261 = scf.while (%arg1 = %115) : (vector<7xf32>) -> vector<7xf32> {
        bufferization.dealloc_tensor %13 : tensor<7xf16>
        %263 = vector.splat %c830216547_i32 : vector<13xi32>
        %alloc_42 = memref.alloc() : memref<4x13xi16>
        %264 = tensor.empty() : tensor<13x13xi16>
        %265 = linalg.matmul ins(%1, %alloc_42 : tensor<13x4xi16>, memref<4x13xi16>) outs(%264 : tensor<13x13xi16>) -> tensor<13x13xi16>
        %266 = math.ceil %collapsed_26 : tensor<91x1xf32>
        %267 = arith.divui %c1968776031_i64, %c1939646478_i64 : i64
        %268 = math.cttz %c1933866630_i32 : i32
        %269 = vector.matrix_multiply %133, %133 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xi1>, vector<13xi1>) -> vector<1xi1>
        %270 = math.powf %4, %4 : tensor<13x7xf32>
        scf.condition(%arg0) %115 : vector<7xf32>
      } do {
      ^bb0(%arg1: vector<7xf32>):
        %263 = vector.broadcast %cst_2 : f32 to vector<f32>
        %264 = vector.transfer_write %263, %expanded[%51, %153, %c10] : vector<f32>, tensor<13x7x1xf32>
        memref.copy %alloc_5, %alloc_16 : memref<13xf32> to memref<13xf32>
        %265 = vector.extract_strided_slice %70 {offsets = [0], sizes = [2], strides = [1]} : vector<2xf32> to vector<2xf32>
        %266 = vector.insertelement %cst_0, %114[%138 : index] : vector<91xf32>
        %267 = bufferization.to_tensor %alloc_18 : memref<7xf32>
        %268 = math.exp %cst_2 : f32
        %269 = math.expm1 %13 : tensor<7xf16>
        %270 = arith.maxf %cst_1, %cst_1 : f16
        %271 = index.divs %95, %138
        %272 = index.ceildivu %c8, %c10
        %273 = bufferization.to_tensor %alloc_16 : memref<13xf32>
        %274 = index.casts %c1968776031_i64 : i64 to index
        memref.copy %alloc_6, %97 : memref<13xi32> to memref<13xi32>
        %275 = index.sub %87, %126
        %276 = math.tanh %15 : tensor<13xf32>
        %277 = arith.divui %arg0, %false : i1
        scf.yield %160 : vector<7xf32>
      }
      %262 = math.ctpop %0 : tensor<13x7xi64>
      scf.condition(%arg0) %123 : i1
    } do {
    ^bb0(%arg0: i1):
      %257 = math.fpowi %cst_3, %c1072490189_i32 : f16, i32
      %258 = math.atan2 %4, %4 : tensor<13x7xf32>
      %259 = scf.if %arg0 -> (memref<13x4xi1>) {
        %270 = arith.mulf %cst_3, %cst_1 : f16
        %271 = arith.remf %cst_3, %cst_1 : f16
        %272 = math.log10 %13 : tensor<7xf16>
        %273 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 64)>(%c9, %157, %113, %158)
        %274 = vector.bitcast %136 : vector<91xf32> to vector<91xf32>
        %275 = vector.matrix_multiply %70, %36 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 7 : i32} : (vector<2xf32>, vector<7xf32>) -> vector<14xf32>
        %276 = index.divu %64, %28
        %277 = index.divu %51, %138
        scf.yield %alloc_8 : memref<13x4xi1>
      } else {
        %270 = tensor.empty(%c5) : tensor<?xi16>
        %271 = memref.realloc %alloc_6 : memref<13xi32> to memref<4xi32>
        %272 = arith.minf %cst_3, %cst_3 : f16
        %273 = arith.shrsi %c1968776031_i64, %c1334599510_i64 : i64
        %274 = math.atan %7 : tensor<7xf32>
        memref.tensor_store %5, %alloc_10 : memref<7xi32>
        %275 = math.ceil %cst : f16
        %276 = index.casts %51 : index to i32
        scf.yield %alloc_11 : memref<13x4xi1>
      }
      %260 = math.ctpop %23 : tensor<i32>
      %261 = vector.reduction <maxui>, %20 : vector<4xi1> into i1
      scf.if %false {
        %270 = arith.cmpi sgt, %123, %false : i1
        memref.store %c1933866630_i32, %alloc_10[%c2] : memref<7xi32>
        %271 = index.sub %c1, %c2
        %272 = vector.broadcast %165 : i16 to vector<6xi16>
        %273 = vector.transfer_write %272, %131[%c7, %154] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi16>, tensor<13x7xi16>
        %274 = bufferization.to_tensor %alloc_8 : memref<13x4xi1>
        %275 = index.ceildivu %c11, %72
        %276 = math.exp %13 : tensor<7xf16>
        %277 = vector.extract %20[2] : vector<4xi1>
      } else {
        %270 = math.ctlz %23 : tensor<i32>
        memref.assume_alignment %alloc_14, 2 : memref<13x7xi64>
        %271 = arith.shrsi %165, %c18931_i16 : i16
        %272 = vector.broadcast %arg0 : i1 to vector<13xi1>
        %273 = index.maxs %28, %78
        memref.store %cst_2, %alloc_18[%c0] : memref<7xf32>
        %274 = index.divu %126, %c4
        %275 = affine.apply affine_map<(d0) -> ((d0 * 3) ceildiv 16 - 8)>(%154)
      }
      bufferization.dealloc_tensor %2 : tensor<13xi16>
      %262 = bufferization.to_tensor %alloc_8 : memref<13x4xi1>
      %263 = index.maxs %103, %63
      %264 = math.cos %8 : tensor<13xf32>
      %alloc_41 = memref.alloc() : memref<13xi1>
      %265 = vector.broadcast %c830216547_i32 : i32 to vector<13x7xi32>
      %266 = index.divu %103, %51
      %267 = arith.addi %c1072490189_i32, %c1072490189_i32 : i32
      %268 = math.sqrt %cst_1 : f16
      %269 = math.atan2 %8, %8 : tensor<13xf32>
      scf.yield %123 : i1
    }
    %169 = index.floordivs %129, %c6
    %170 = vector.extract_strided_slice %70 {offsets = [0], sizes = [1], strides = [1]} : vector<2xf32> to vector<1xf32>
    %171 = scf.index_switch %162 -> tensor<7xi16> 
    case 1 {
      %257 = index.sizeof
      %258 = tensor.empty() : tensor<7x4xf32>
      %259 = tensor.empty() : tensor<13x4xf32>
      %260 = linalg.matmul ins(%16, %258 : tensor<13x7xf32>, tensor<7x4xf32>) outs(%259 : tensor<13x4xf32>) -> tensor<13x4xf32>
      %261 = math.copysign %3, %3 : tensor<13x4xf16>
      affine.for %arg0 = 0 to 121 {
      }
      %262 = arith.mulf %cst_1, %cst_1 : f16
      %263 = arith.minf %cst_0, %cst_2 : f32
      %264 = arith.minsi %c1072490189_i32, %c1933866630_i32 : i32
      %265 = vector.create_mask %154, %c4 : vector<13x7xi1>
      scf.index_switch %c6 
      case 1 {
        %276 = arith.divf %cst, %cst : f16
        %277 = index.divs %51, %169
        %278 = math.fpowi %8, %21 : tensor<13xf32>, tensor<13xi32>
        %279 = bufferization.to_tensor %alloc_16 : memref<13xf32>
        %280 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d1 - 4) ceildiv 128)>(%c15, %72, %154, %257)
        %281 = affine.apply affine_map<(d0, d1, d2) -> (d1 floordiv 64)>(%c2, %138, %c6)
        %282 = math.absi %14 : tensor<13x7xi32>
        %alloc_41 = memref.alloc() : memref<7xi16>
        %collapsed_42 = tensor.collapse_shape %collapsed_26 [[0, 1]] : tensor<91x1xf32> into tensor<91xf32>
        %283 = index.maxs %103, %162
        %284 = bufferization.to_tensor %alloc_7 : memref<13xi64>
        %285 = math.ceil %6 : tensor<13xf16>
        %286 = index.maxu %129, %c9
        %287 = math.copysign %16, %4 : tensor<13x7xf32>
        %collapsed_43 = tensor.collapse_shape %9 [[0, 1]] : tensor<13x7xf16> into tensor<91xf16>
        %288 = vector.broadcast %cst_0 : f32 to vector<f32>
        %289 = vector.transfer_write %288, %7[%72] : vector<f32>, tensor<7xf32>
        scf.yield
      }
      default {
        %276 = math.atan %10 : tensor<7xf32>
        %277 = memref.load %alloc_9[%c2, %c6] : memref<13x7xf32>
        %278 = arith.floordivsi %c18931_i16, %165 : i16
        %279 = arith.remsi %c1939646478_i64, %c1968776031_i64 : i64
        memref.assume_alignment %alloc_19, 1 : memref<13xi16>
        memref.store %cst_2, %alloc_18[%c4] : memref<7xf32>
        %280 = vector.splat %c11 : vector<7xindex>
        %281 = arith.maxsi %165, %165 : i16
        %alloc_41 = memref.alloc() : memref<i32>
        memref.tensor_store %22, %alloc_41 : memref<i32>
        %282 = memref.load %97[%c6] : memref<13xi32>
        %283 = vector.broadcast %false : i1 to vector<7x7xi1>
        %284 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %54, %265, %283 : vector<13x7xi1>, vector<13x7xi1> into vector<7x7xi1>
        %285 = vector.matrix_multiply %60, %134 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 13 : i32} : (vector<7xi32>, vector<13xi32>) -> vector<91xi32>
        %alloc_42 = memref.alloc() : memref<13xi32>
        %286 = math.tanh %cst : f16
        %287 = math.round %3 : tensor<13x4xf16>
        %288 = math.ceil %reduced : tensor<f32>
      }
      %266 = vector.matrix_multiply %134, %60 {lhs_columns = 1 : i32, lhs_rows = 13 : i32, rhs_columns = 7 : i32} : (vector<13xi32>, vector<7xi32>) -> vector<91xi32>
      %267 = index.maxs %145, %158
      %268 = vector.matrix_multiply %134, %266 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 7 : i32} : (vector<13xi32>, vector<91xi32>) -> vector<7xi32>
      %269 = arith.ori %165, %c-26765_i16 : i16
      %270 = bufferization.to_tensor %alloc_9 : memref<13x7xf32>
      %271 = math.floor %cst_2 : f32
      %272 = vector.broadcast %123 : i1 to vector<13x4xi1>
      %273 = vector.broadcast %c1072490189_i32 : i32 to vector<13x4xi32>
      %274 = vector.gather %alloc_13[%c4, %64] [%273], %272, %272 : memref<13x7xi1>, vector<13x4xi32>, vector<13x4xi1>, vector<13x4xi1> into vector<13x4xi1>
      %275 = tensor.empty() : tensor<7xi16>
      scf.yield %275 : tensor<7xi16>
    }
    case 2 {
      %257 = vector.reduction <mul>, %36 : vector<7xf32> into f32
      %258 = math.floor %10 : tensor<7xf32>
      %259 = vector.extract %20[1] : vector<4xi1>
      %260 = math.rsqrt %expanded : tensor<13x7x1xf32>
      %261 = affine.apply affine_map<(d0, d1) -> (-(d1 - 64))>(%129, %87)
      bufferization.dealloc_tensor %1 : tensor<13x4xi16>
      %262 = vector.create_mask %154, %51 : vector<13x7xi1>
      %263 = math.log10 %10 : tensor<7xf32>
      %rank = tensor.rank %8 : tensor<13xf32>
      %264 = vector.flat_transpose %94 {columns = 1 : i32, rows = 2 : i32} : vector<2xf32> -> vector<2xf32>
      %265 = math.fpowi %10, %5 : tensor<7xf32>, tensor<7xi32>
      bufferization.dealloc_tensor %23 : tensor<i32>
      %266 = arith.addi %c1939646478_i64, %c1968776031_i64 : i64
      %267 = index.divs %95, %138
      %268 = math.log2 %13 : tensor<7xf16>
      %269 = memref.atomic_rmw minu %76, %alloc_14[%c4, %c0] : (i64, memref<13x7xi64>) -> i64
      %270 = tensor.empty() : tensor<7xi16>
      scf.yield %270 : tensor<7xi16>
    }
    default {
      %257 = math.ctlz %c1072490189_i32 : i32
      %258 = math.rsqrt %cst_1 : f16
      %259 = index.divu %138, %c10
      %260 = vector.broadcast %259 : index to vector<13xindex>
      vector.scatter %alloc_6[%c0] [%260], %133, %134 : memref<13xi32>, vector<13xindex>, vector<13xi1>, vector<13xi32>
      %261 = math.cos %9 : tensor<13x7xf16>
      %262 = math.atan %cst_0 : f32
      %263 = arith.subi %c-26765_i16, %c-26765_i16 : i16
      %264 = arith.cmpi eq, %123, %false : i1
      %265 = affine.max affine_map<(d0, d1) -> (d1 * 3, d1 floordiv 64)>(%c5, %63)
      %266 = math.tanh %cst_0 : f32
      %267 = arith.remf %cst, %cst_1 : f16
      %268 = vector.broadcast %c-26765_i16 : i16 to vector<13x7xi16>
      %269 = vector.create_mask %28 : vector<7xi1>
      %270 = arith.cmpi sge, %76, %c1939646478_i64 : i64
      %271 = math.log2 %reduced : tensor<f32>
      %272 = math.ctpop %c552705139_i32 : i32
      %273 = tensor.empty() : tensor<7xi16>
      scf.yield %273 : tensor<7xi16>
    }
    %172 = math.log10 %3 : tensor<13x4xf16>
    %173 = math.absf %expanded : tensor<13x7x1xf32>
    %174 = arith.divf %cst_2, %cst_0 : f32
    %175 = math.tanh %4 : tensor<13x7xf32>
    %alloc_27 = memref.alloc() : memref<7xi1>
    %176 = arith.maxui %c1968776031_i64, %c1772678022_i64 : i64
    %177 = index.maxu %63, %c0
    %178 = arith.minui %c1072490189_i32, %c1933866630_i32 : i32
    %cst_28 = arith.constant 1.82258778E+9 : f32
    %179 = math.ceil %15 : tensor<13xf32>
    %180 = arith.mulf %cst_3, %cst_1 : f16
    %181 = scf.if %123 -> (i32) {
      %257 = arith.cmpi ult, %76, %c1939646478_i64 : i64
      %258 = math.log %4 : tensor<13x7xf32>
      %259 = arith.addi %c552705139_i32, %c1072490189_i32 : i32
      %260 = math.exp %4 : tensor<13x7xf32>
      %261 = vector.broadcast %c-26765_i16 : i16 to vector<13xi16>
      %dest_41, %accumulated_value_42 = vector.scan <add>, %29, %115 {inclusive = false, reduction_dim = 0 : i64} : vector<13x7xf32>, vector<7xf32>
      bufferization.dealloc_tensor %1 : tensor<13x4xi16>
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<13x7x1xf32>) {
      ^bb0(%out: f32):
        %263 = vector.broadcast %c1772678022_i64 : i64 to vector<7xi64>
        %264 = vector.transfer_write %263, %0[%64, %51] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<7xi64>, tensor<13x7xi64>
        %alloc_43 = memref.alloc() : memref<7x6xf16>
        %265 = tensor.empty() : tensor<13x6xf16>
        %266 = linalg.matmul ins(%9, %alloc_43 : tensor<13x7xf16>, memref<7x6xf16>) outs(%265 : tensor<13x6xf16>) -> tensor<13x6xf16>
        %267 = math.tan %reduced : tensor<f32>
        %268 = index.casts %c1933866630_i32 : i32 to index
        memref.store %165, %alloc[%c5, %c3] : memref<13x4xi16>
        bufferization.dealloc_tensor %4 : tensor<13x7xf32>
        %269 = arith.ori %c1334599510_i64, %c1968776031_i64 : i64
        bufferization.dealloc_tensor %265 : tensor<13x6xf16>
        %270 = math.copysign %4, %4 : tensor<13x7xf32>
        %271 = math.expm1 %13 : tensor<7xf16>
        %272 = math.copysign %8, %15 : tensor<13xf32>
        %273 = vector.broadcast %c552705139_i32 : i32 to vector<6xi32>
        %274 = vector.transfer_write %273, %14[%110, %c7] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi32>, tensor<13x7xi32>
        %275 = tensor.empty() : tensor<7xf16>
        %inserted_44 = tensor.insert %165 into %131[%c7, %c6] : tensor<13x7xi16>
        %276 = vector.multi_reduction <minsi>, %102, %40 [] : vector<7xi64> to vector<7xi64>
        %277 = math.powf %3, %3 : tensor<13x4xf16>
        %278 = math.copysign %collapsed_26, %collapsed_26 : tensor<91x1xf32>
        %279 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 floordiv 4, -d1 + d3)>(%c10, %129, %78, %162)
        %280 = math.cttz %c552705139_i32 : i32
        %281 = vector.extract_strided_slice %54 {offsets = [0], sizes = [11], strides = [1]} : vector<13x7xi1> to vector<11x7xi1>
        %282 = index.divu %145, %154
        %283 = math.ceil %3 : tensor<13x4xf16>
        %284 = math.cttz %c1939646478_i64 : i64
        %285 = arith.ori %c-26765_i16, %165 : i16
        %286 = arith.remf %cst_2, %cst_2 : f32
        %alloc_45 = memref.alloc() : memref<13x4xf16>
        %287 = vector.broadcast %cst : f16 to vector<13xf16>
        %288 = vector.gather %alloc_45[%129, %153] [%134], %133, %287 : memref<13x4xf16>, vector<13xi32>, vector<13xi1>, vector<13xf16> into vector<13xf16>
        %289 = arith.remf %cst_0, %out : f32
        %290 = arith.xori %c1334599510_i64, %c1334599510_i64 : i64
        %291 = vector.bitcast %29 : vector<13x7xf32> to vector<13x7xf32>
        %292 = vector.bitcast %36 : vector<7xf32> to vector<7xf32>
        %293 = arith.maxui %false, %123 : i1
        %294 = vector.bitcast %132 : vector<13xi16> to vector<13xi16>
        linalg.yield %cst_0 : f32
      } -> tensor<13x7x1xf32>
      scf.yield %c552705139_i32 : i32
    } else {
      %257 = index.divs %64, %145
      scf.index_switch %39 
      case 1 {
        %264 = index.divu %c14, %c2
        memref.tensor_store %1, %alloc_12 : memref<13x4xi16>
        %265 = math.tan %6 : tensor<13xf16>
        %266 = arith.maxsi %c1939646478_i64, %76 : i64
        %267 = vector.broadcast %87 : index to vector<7xindex>
        %268 = vector.broadcast %false : i1 to vector<7xi1>
        %269 = vector.broadcast %cst_1 : f16 to vector<7xf16>
        vector.scatter %alloc_17[%c8] [%267], %268, %269 : memref<13xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
        %270 = arith.divf %cst, %cst_1 : f16
        %271 = index.maxs %72, %c13
        %272 = math.fpowi %3, %12 : tensor<13x4xf16>, tensor<13x4xi32>
        %273 = math.cos %cst : f16
        %274 = arith.minf %cst_2, %cst_2 : f32
        memref.assume_alignment %alloc_5, 1 : memref<13xf32>
        %275 = index.ceildivu %126, %c14
        %276 = vector.bitcast %74 : vector<13x7xi16> to vector<13x7xi16>
        %277 = tensor.empty() : tensor<4x13xi32>
        %278 = tensor.empty() : tensor<13x13xi32>
        %279 = linalg.matmul ins(%12, %277 : tensor<13x4xi32>, tensor<4x13xi32>) outs(%278 : tensor<13x13xi32>) -> tensor<13x13xi32>
        %280 = math.exp2 %6 : tensor<13xf16>
        %281 = arith.minf %cst, %cst_3 : f16
        scf.yield
      }
      case 2 {
        %264 = arith.minsi %123, %false : i1
        %265 = arith.cmpi sle, %123, %123 : i1
        %266 = vector.multi_reduction <minf>, %70, %cst_0 [0] : vector<2xf32> to f32
        %267 = index.divu %c2, %c14
        %268 = arith.negf %266 : f32
        %269 = bufferization.to_tensor %alloc_17 : memref<13xf16>
        %270 = arith.maxui %c1072490189_i32, %c1933866630_i32 : i32
        %271 = vector.broadcast %cst_0 : f32 to vector<7xf32>
        %272 = vector.fma %271, %115, %36 : vector<7xf32>
        %273 = arith.andi %165, %165 : i16
        %274 = math.powf %13, %13 : tensor<7xf16>
        %275 = arith.minf %cst, %cst_3 : f16
        %276 = math.ceil %9 : tensor<13x7xf16>
        %277 = index.divu %c4, %95
        %278 = vector.broadcast %cst_1 : f16 to vector<13xf16>
        %279 = arith.addi %c1933866630_i32, %c1072490189_i32 : i32
        %280 = math.tanh %cst_3 : f16
        scf.yield
      }
      case 3 {
        %264 = index.ceildivu %151, %c4
        memref.store %c-26765_i16, %alloc_19[%c0] : memref<13xi16>
        %alloc_41 = memref.alloc() : memref<7xf16>
        memref.tensor_store %13, %alloc_41 : memref<7xf16>
        %265 = arith.minf %cst_1, %cst_1 : f16
        %266 = arith.minf %cst_3, %cst_1 : f16
        %267 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 floordiv 4)>(%c4, %78, %153, %c13)
        %268 = tensor.empty(%c15) : tensor<?xi16>
        %269 = arith.subi %165, %165 : i16
        %270 = vector.broadcast %cst_0 : f32 to vector<7xf32>
        %271 = vector.fma %270, %37, %160 : vector<7xf32>
        %272 = math.ceil %cst_3 : f16
        %273 = arith.xori %c1933866630_i32, %c1072490189_i32 : i32
        %274 = arith.negf %cst_1 : f16
        %275 = arith.maxsi %c1334599510_i64, %76 : i64
        bufferization.dealloc_tensor %11 : tensor<13xi1>
        %276 = math.atan %reduced : tensor<f32>
        %277 = arith.cmpi ugt, %c552705139_i32, %c1933866630_i32 : i32
        scf.yield
      }
      default {
        %264 = arith.maxf %cst_2, %cst_0 : f32
        %265 = math.log10 %reduced : tensor<f32>
        %266 = vector.splat %28 : vector<13xindex>
        %267 = arith.divsi %c1772678022_i64, %c1968776031_i64 : i64
        %268 = tensor.empty() : tensor<7x7xi64>
        %269 = tensor.empty() : tensor<13x7xi64>
        %270 = linalg.matmul ins(%0, %268 : tensor<13x7xi64>, tensor<7x7xi64>) outs(%269 : tensor<13x7xi64>) -> tensor<13x7xi64>
        %271 = vector.splat %cst : vector<13x7xf16>
        %272 = vector.shuffle %134, %134 [1, 2, 3, 5, 7, 12, 15, 16, 18, 19, 20, 21, 23] : vector<13xi32>, vector<13xi32>
        %273 = arith.mulf %cst_3, %cst_1 : f16
        %274 = arith.floordivsi %c1939646478_i64, %c1939646478_i64 : i64
        %dest_41, %accumulated_value_42 = vector.scan <mul>, %143, %60 {inclusive = true, reduction_dim = 0 : i64} : vector<13x7xi32>, vector<7xi32>
        %275 = arith.addi %false, %123 : i1
        %276 = vector.splat %c11 : vector<13x4xindex>
        %277 = math.ceil %expanded : tensor<13x7x1xf32>
        %278 = arith.cmpi ugt, %c1772678022_i64, %c1334599510_i64 : i64
        %279 = math.log10 %15 : tensor<13xf32>
        %280 = bufferization.to_tensor %alloc : memref<13x4xi16>
      }
      %258 = arith.cmpi ugt, %c1939646478_i64, %c1968776031_i64 : i64
      %259 = math.absf %13 : tensor<7xf16>
      %260 = scf.while (%arg0 = %29) : (vector<13x7xf32>) -> vector<13x7xf32> {
        %264 = index.divs %87, %126
        %265 = bufferization.to_tensor %alloc_14 : memref<13x7xi64>
        %266 = arith.divui %165, %c18931_i16 : i16
        %267 = math.ceil %cst_1 : f16
        %268 = memref.load %alloc_10[%c2] : memref<7xi32>
        %alloc_41 = memref.alloc() : memref<13xi1>
        %269 = arith.shrsi %165, %c-26765_i16 : i16
        %rank = tensor.rank %3 : tensor<13x4xf16>
        scf.condition(%123) %29 : vector<13x7xf32>
      } do {
      ^bb0(%arg0: vector<13x7xf32>):
        %264 = math.atan %15 : tensor<13xf32>
        %dest_41, %accumulated_value_42 = vector.scan <minui>, %74, %135 {inclusive = true, reduction_dim = 1 : i64} : vector<13x7xi16>, vector<13xi16>
        %265 = index.floordivs %153, %257
        memref.assume_alignment %alloc_7, 8 : memref<13xi64>
        %266 = index.divs %c6, %c12
        %267 = arith.negf %cst_1 : f16
        %268 = arith.cmpi uge, %c-26765_i16, %c18931_i16 : i16
        %269 = math.atan2 %13, %13 : tensor<7xf16>
        %270 = vector.extract_strided_slice %60 {offsets = [1], sizes = [5], strides = [1]} : vector<7xi32> to vector<5xi32>
        %271 = math.ceil %cst_0 : f32
        %272 = arith.remui %c1772678022_i64, %c1968776031_i64 : i64
        %273 = math.round %15 : tensor<13xf32>
        %274 = vector.matrix_multiply %134, %60 {lhs_columns = 1 : i32, lhs_rows = 13 : i32, rhs_columns = 7 : i32} : (vector<13xi32>, vector<7xi32>) -> vector<91xi32>
        %275 = arith.addf %cst_3, %cst_1 : f16
        %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %40, %102, %c1334599510_i64 : vector<7xi64>, vector<7xi64> into i64
        %277 = arith.andi %76, %76 : i64
        scf.yield %30 : vector<13x7xf32>
      }
      %261 = math.log2 %7 : tensor<7xf32>
      %262 = vector.broadcast %cst_2 : f32 to vector<f32>
      %263 = vector.transfer_write %262, %10[%78] : vector<f32>, tensor<7xf32>
      scf.if %123 {
        %264 = math.expm1 %cst_3 : f16
        %265 = math.copysign %10, %7 : tensor<7xf32>
        %266 = vector.splat %165 : vector<7xi16>
        %267 = arith.mulf %cst_3, %cst_3 : f16
        %268 = arith.remsi %c1968776031_i64, %c1939646478_i64 : i64
        %269 = memref.realloc %alloc_5 : memref<13xf32> to memref<4xf32>
        %270 = bufferization.to_tensor %alloc_7 : memref<13xi64>
        %271 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, 0)>(%c4, %162, %257, %154)
      }
      scf.yield %c830216547_i32 : i32
    }
    %182 = vector.extract_strided_slice %94 {offsets = [0], sizes = [2], strides = [1]} : vector<2xf32> to vector<2xf32>
    %183 = math.expm1 %7 : tensor<7xf32>
    %c10168_i16 = arith.constant 10168 : i16
    %184 = math.fpowi %8, %21 : tensor<13xf32>, tensor<13xi32>
    %185 = arith.remui %c1772678022_i64, %c1939646478_i64 : i64
    %inserted = tensor.insert %cst_1 into %3[%c7, %c0] : tensor<13x4xf16>
    %186 = math.cos %13 : tensor<7xf16>
    scf.index_switch %39 
    case 1 {
      %257 = vector.create_mask %c15, %151 : vector<13x4xi1>
      %258 = memref.atomic_rmw minf %cst_3, %92[%c4] : (f16, memref<13xf16>) -> f16
      %259 = arith.maxsi %c1968776031_i64, %c1968776031_i64 : i64
      %260 = vector.shuffle %55, %55 [0, 1, 7, 9, 10, 11, 12, 13, 15, 18, 20, 22, 24] : vector<13x4xi64>, vector<13x4xi64>
      %261 = math.ipowi %c552705139_i32, %181 : i32
      %262 = bufferization.to_tensor %alloc_17 : memref<13xf16>
      %263 = vector.create_mask %c13, %c1 : vector<13x4xi1>
      %264 = scf.if %false -> (f32) {
        %269 = math.ctlz %14 : tensor<13x7xi32>
        %270 = index.maxs %c15, %153
        %271 = math.log10 %6 : tensor<13xf16>
        %272 = math.powf %reduced, %reduced : tensor<f32>
        %273 = math.copysign %9, %9 : tensor<13x7xf16>
        memref.assume_alignment %97, 2 : memref<13xi32>
        %274 = math.log10 %4 : tensor<13x7xf32>
        %alloc_43 = memref.alloc() : memref<7x6xf32>
        %275 = tensor.empty() : tensor<13x6xf32>
        %276 = linalg.matmul ins(%16, %alloc_43 : tensor<13x7xf32>, memref<7x6xf32>) outs(%275 : tensor<13x6xf32>) -> tensor<13x6xf32>
        scf.yield %cst_2 : f32
      } else {
        %269 = math.cttz %c18931_i16 : i16
        %270 = vector.multi_reduction <add>, %30, %30 [] : vector<13x7xf32> to vector<13x7xf32>
        %271 = arith.floordivsi %76, %c1334599510_i64 : i64
        %272 = vector.broadcast %123 : i1 to vector<7xi1>
        %273 = vector.multi_reduction <or>, %54, %272 [0] : vector<13x7xi1> to vector<7xi1>
        %274 = vector.extract %37[0] : vector<7xf32>
        %275 = arith.xori %c-26765_i16, %165 : i16
        %276 = affine.min affine_map<(d0) -> (d0 * 4, (-(d0 + 1)) floordiv 2, d0 * 4)>(%169)
        %277 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<xor>} %75, %257, %133 : vector<4xi1>, vector<13x4xi1> into vector<13xi1>
        scf.yield %cst_2 : f32
      }
      %265 = arith.minsi %c1772678022_i64, %c1968776031_i64 : i64
      %266 = math.atan %cst_2 : f32
      bufferization.dealloc_tensor %expanded : tensor<13x7x1xf32>
      %c1775004432_i64 = arith.constant 1775004432 : i64
      %267 = arith.ori %c1933866630_i32, %181 : i32
      %268 = arith.maxf %cst_2, %cst_2 : f32
      %dest_41, %accumulated_value_42 = vector.scan <and>, %54, %133 {inclusive = false, reduction_dim = 1 : i64} : vector<13x7xi1>, vector<13xi1>
      memref.assume_alignment %alloc_11, 8 : memref<13x4xi1>
      scf.yield
    }
    default {
      %257 = arith.andi %c1772678022_i64, %c1939646478_i64 : i64
      %258 = bufferization.to_tensor %alloc_16 : memref<13xf32>
      %259 = index.maxs %151, %177
      %260 = math.tanh %cst : f16
      %261 = vector.broadcast %c1334599510_i64 : i64 to vector<13xi64>
      %262 = arith.addi %c552705139_i32, %c830216547_i32 : i32
      %263 = arith.minf %cst_0, %cst_0 : f32
      %264 = vector.flat_transpose %60 {columns = 7 : i32, rows = 1 : i32} : vector<7xi32> -> vector<7xi32>
      %265 = vector.create_mask %c5 : vector<13xi1>
      memref.assume_alignment %alloc_9, 16 : memref<13x7xf32>
      %266 = vector.extract %133[2] : vector<13xi1>
      %267 = math.tanh %reduced : tensor<f32>
      %268 = arith.ori %c1334599510_i64, %c1939646478_i64 : i64
      %269 = math.expm1 %8 : tensor<13xf32>
      %270 = arith.floordivsi %c830216547_i32, %c1933866630_i32 : i32
      %271 = arith.mulf %cst_1, %cst_1 : f16
    }
    %187 = arith.subi %c1933866630_i32, %181 : i32
    %188 = vector.insertelement %cst_0, %170[%129 : index] : vector<1xf32>
    %189 = math.expm1 %6 : tensor<13xf16>
    %190 = memref.load %alloc_13[%c12, %c3] : memref<13x7xi1>
    %191 = affine.load %alloc_7[%c12] : memref<13xi64>
    %192 = math.absf %3 : tensor<13x4xf16>
    %193 = math.fpowi %16, %14 : tensor<13x7xf32>, tensor<13x7xi32>
    %194 = index.divs %c6, %157
    bufferization.dealloc_tensor %0 : tensor<13x7xi64>
    %195 = math.absf %7 : tensor<7xf32>
    %196 = vector.create_mask %c7, %c11 : vector<13x7xi1>
    %197 = math.copysign %4, %17 : tensor<13x7xf32>
    %198 = arith.ori %191, %c1334599510_i64 : i64
    %199 = index.divu %c10, %151
    %200 = math.rsqrt %7 : tensor<7xf32>
    %201 = index.floordivs %151, %c2
    %alloca = memref.alloca() : memref<7xf32>
    memref.store %cst_0, %alloc_5[%c4] : memref<13xf32>
    %202 = vector.broadcast %c-26765_i16 : i16 to vector<7xi16>
    %203 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %135, %74, %202 : vector<13xi16>, vector<13x7xi16> into vector<7xi16>
    %204 = math.copysign %15, %15 : tensor<13xf32>
    %205 = index.maxu %169, %c1
    %206 = arith.remsi %c1072490189_i32, %c1933866630_i32 : i32
    %207 = math.log2 %3 : tensor<13x4xf16>
    %dest_29, %accumulated_value_30 = vector.scan <and>, %143, %60 {inclusive = false, reduction_dim = 0 : i64} : vector<13x7xi32>, vector<7xi32>
    %208 = index.sub %c7, %199
    %209 = math.copysign %4, %17 : tensor<13x7xf32>
    %dest_31, %accumulated_value_32 = vector.scan <or>, %54, %133 {inclusive = true, reduction_dim = 1 : i64} : vector<13x7xi1>, vector<13xi1>
    %210 = index.divs %c12, %199
    %211 = memref.realloc %alloc_4 : memref<13xf32> to memref<13xf32>
    %inserted_33 = tensor.insert %cst_0 into %4[%c6, %c0] : tensor<13x7xf32>
    %212 = vector.extract_strided_slice %108 {offsets = [3], sizes = [7], strides = [1]} : vector<13xf32> to vector<7xf32>
    %213 = arith.floordivsi %c18931_i16, %c18931_i16 : i16
    %214 = arith.maxsi %c18931_i16, %c18931_i16 : i16
    %215 = math.expm1 %9 : tensor<13x7xf16>
    %216 = arith.maxf %cst_1, %cst_3 : f16
    %217 = vector.shuffle %60, %60 [0, 2, 3, 4, 5, 6, 8, 10, 11] : vector<7xi32>, vector<7xi32>
    scf.if %false {
      %257 = arith.remf %cst_1, %cst_3 : f16
      %258 = affine.max affine_map<(d0, d1, d2) -> (d2 + 128, d0, (d2 mod 4) * 2)>(%c0, %72, %208)
      %259 = vector.create_mask %153 : vector<7xi1>
      %260 = math.ctpop %c1933866630_i32 : i32
      %261 = scf.if %false -> (memref<13xi64>) {
        %264 = math.copysign %13, %13 : tensor<7xf16>
        %265 = vector.splat %c6 : vector<13x4xindex>
        %266 = arith.divui %c552705139_i32, %c1072490189_i32 : i32
        %267 = arith.minf %cst, %cst_1 : f16
        %268 = bufferization.to_tensor %alloc_14 : memref<13x7xi64>
        %269 = index.divu %c9, %158
        %270 = arith.shli %123, %123 : i1
        %271 = math.rsqrt %9 : tensor<13x7xf16>
        scf.yield %alloc_7 : memref<13xi64>
      } else {
        %264 = index.floordivs %c14, %258
        %inserted_42 = tensor.insert %cst_2 into %15[%c12] : tensor<13xf32>
        %265 = vector.multi_reduction <minf>, %36, %cst_2 [0] : vector<7xf32> to f32
        %266 = vector.splat %c8 : vector<13x7xindex>
        %true = arith.constant true
        %267 = math.floor %expanded : tensor<13x7x1xf32>
        %268 = index.sub %78, %c6
        %269 = arith.divf %cst, %cst_1 : f16
        scf.yield %alloc_7 : memref<13xi64>
      }
      %inserted_41 = tensor.insert %cst_0 into %reduced[] : tensor<f32>
      %262 = math.cos %cst_1 : f16
      %263 = vector.matrix_multiply %135, %135 {lhs_columns = 13 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<13xi16>, vector<13xi16>) -> vector<1xi16>
    } else {
      %257 = arith.maxf %cst_2, %cst_2 : f32
      %258 = vector.broadcast %c1772678022_i64 : i64 to vector<i64>
      %259 = vector.transfer_write %258, %collapsed[%153] : vector<i64>, tensor<91xi64>
      %260 = vector.create_mask %c9 : vector<7xi1>
      %261 = vector.multi_reduction <minf>, %30, %cst_2 [0, 1] : vector<13x7xf32> to f32
      %262 = math.ctlz %191 : i64
      %263 = math.powf %8, %8 : tensor<13xf32>
      %264 = index.sub %129, %110
      %265 = vector.broadcast %cst : f16 to vector<13x7xf16>
    }
    memref.assume_alignment %alloc_12, 16 : memref<13x4xi16>
    memref.copy %alloc_8, %alloc_15 : memref<13x4xi1> to memref<13x4xi1>
    %218 = math.log %13 : tensor<7xf16>
    %219 = arith.shrsi %c1939646478_i64, %c1939646478_i64 : i64
    %220 = arith.mulf %cst_0, %cst_2 : f32
    %221 = math.expm1 %6 : tensor<13xf16>
    %222 = vector.extract_strided_slice %74 {offsets = [1], sizes = [9], strides = [1]} : vector<13x7xi16> to vector<9x7xi16>
    %223 = math.copysign %8, %15 : tensor<13xf32>
    %224 = vector.matrix_multiply %160, %136 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 13 : i32} : (vector<7xf32>, vector<91xf32>) -> vector<13xf32>
    %225 = math.absf %cst_3 : f16
    %collapsed_34 = tensor.collapse_shape %1 [[0, 1]] : tensor<13x4xi16> into tensor<52xi16>
    %226 = arith.addf %cst_3, %cst_1 : f16
    %227 = arith.floordivsi %c18931_i16, %165 : i16
    scf.if %123 {
      %257 = math.cos %3 : tensor<13x4xf16>
      %258 = tensor.empty() : tensor<7xf16>
      %259 = bufferization.to_tensor %92 : memref<13xf16>
      %260 = math.round %cst : f16
      %261 = math.copysign %cst, %cst_1 : f16
      %262 = math.rsqrt %6 : tensor<13xf16>
      %263 = vector.broadcast %cst_0 : f32 to vector<13x4xf32>
      %264 = vector.fma %263, %263, %263 : vector<13x4xf32>
      %265 = arith.addi %false, %123 : i1
    }
    %228 = memref.load %alloc_4[%c8] : memref<13xf32>
    %alloc_35 = memref.alloc() : memref<13xi64>
    memref.copy %alloc_7, %alloc_35 : memref<13xi64> to memref<13xi64>
    %229 = vector.broadcast %158 : index to vector<13xindex>
    vector.scatter %alloc_5[%c7] [%229], %133, %109 : memref<13xf32>, vector<13xindex>, vector<13xi1>, vector<13xf32>
    memref.assume_alignment %alloc_15, 2 : memref<13x4xi1>
    %230 = affine.max affine_map<(d0, d1, d2) -> ((-d0) mod 32)>(%126, %c15, %c1)
    %231 = vector.broadcast %false : i1 to vector<7xi1>
    %dest_36, %accumulated_value_37 = vector.scan <maxui>, %71, %231 {inclusive = true, reduction_dim = 0 : i64} : vector<13x7xi1>, vector<7xi1>
    %232 = math.absi %14 : tensor<13x7xi32>
    %233 = vector.splat %c2 : vector<13x7xindex>
    %234 = affine.load %alloc_5[%c1] : memref<13xf32>
    %235 = math.ctlz %181 : i32
    %236 = arith.xori %c1072490189_i32, %c552705139_i32 : i32
    %237 = index.maxs %c11, %126
    %238 = arith.andi %c1072490189_i32, %c1072490189_i32 : i32
    %239 = math.exp %9 : tensor<13x7xf16>
    %240 = arith.andi %c1968776031_i64, %c1334599510_i64 : i64
    %241 = arith.mulf %cst_3, %cst_1 : f16
    %242 = memref.load %alloc_14[%c2, %c0] : memref<13x7xi64>
    %243 = math.log10 %4 : tensor<13x7xf32>
    %244 = math.exp2 %10 : tensor<7xf32>
    %245 = bufferization.to_tensor %alloc_17 : memref<13xf16>
    %246 = index.sizeof
    %alloc_38 = memref.alloc() : memref<13xi32>
    memref.store %76, %alloc_7[%c12] : memref<13xi64>
    %247 = math.atan2 %9, %9 : tensor<13x7xf16>
    %248 = math.expm1 %13 : tensor<7xf16>
    %249 = arith.subi %165, %165 : i16
    %250 = scf.index_switch %39 -> f16 
    case 1 {
      %257 = math.copysign %4, %17 : tensor<13x7xf32>
      %258 = bufferization.to_tensor %alloc_4 : memref<13xf32>
      %259 = arith.mulf %cst_0, %cst_2 : f32
      %260 = arith.mulf %cst, %cst_3 : f16
      memref.store %cst_0, %alloc_16[%c11] : memref<13xf32>
      memref.store %c1334599510_i64, %alloc_14[%c5, %c2] : memref<13x7xi64>
      %261 = math.atan %cst_0 : f32
      %262 = arith.maxf %cst_2, %cst_2 : f32
      vector.print %109 : vector<13xf32>
      %263 = memref.realloc %alloc_18 : memref<7xf32> to memref<4xf32>
      %264 = index.casts %165 : i16 to index
      %265 = index.maxs %c3, %c8
      %266 = math.expm1 %collapsed_26 : tensor<91x1xf32>
      %267 = index.casts %false : i1 to index
      %268 = math.copysign %6, %245 : tensor<13xf16>
      %alloca_41 = memref.alloca() : memref<13xi64>
      scf.yield %cst_1 : f16
    }
    case 2 {
      %257 = arith.remui %c18931_i16, %165 : i16
      %258 = math.cos %7 : tensor<7xf32>
      %259 = index.ceildivu %c2, %201
      %260 = vector.create_mask %237, %210 : vector<13x4xi1>
      %261 = math.floor %4 : tensor<13x7xf32>
      %alloc_41 = memref.alloc() : memref<4x13xi32>
      %262 = tensor.empty() : tensor<13x13xi32>
      %263 = linalg.matmul ins(%12, %alloc_41 : tensor<13x4xi32>, memref<4x13xi32>) outs(%262 : tensor<13x13xi32>) -> tensor<13x13xi32>
      %264 = math.atan2 %reduced, %18 : tensor<f32>
      %265 = math.ctlz %0 : tensor<13x7xi64>
      %266 = vector.broadcast %false : i1 to vector<7x7xi1>
      %267 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %71, %57, %266 : vector<13x7xi1>, vector<13x7xi1> into vector<7x7xi1>
      %268 = math.fpowi %3, %12 : tensor<13x4xf16>, tensor<13x4xi32>
      %269 = math.expm1 %cst : f16
      %270 = vector.broadcast %cst_2 : f32 to vector<13xf32>
      %271 = vector.fma %270, %224, %109 : vector<13xf32>
      %272 = arith.maxui %c18931_i16, %165 : i16
      %273 = vector.broadcast %cst_2 : f32 to vector<f32>
      %274 = vector.transfer_write %273, %expanded[%c14, %158, %138] : vector<f32>, tensor<13x7x1xf32>
      %275 = arith.addf %cst_2, %234 : f32
      %276 = math.rsqrt %cst_3 : f16
      scf.yield %cst_1 : f16
    }
    default {
      %257 = index.maxu %64, %c12
      memref.assume_alignment %alloc_7, 16 : memref<13xi64>
      %258 = index.divu %95, %246
      %259 = arith.shli %c1939646478_i64, %c1772678022_i64 : i64
      %260 = arith.minui %191, %76 : i64
      %alloc_41 = memref.alloc() : memref<4x13xi16>
      %261 = tensor.empty() : tensor<13x13xi16>
      %262 = linalg.matmul ins(%1, %alloc_41 : tensor<13x4xi16>, memref<4x13xi16>) outs(%261 : tensor<13x13xi16>) -> tensor<13x13xi16>
      %rank = tensor.rank %2 : tensor<13xi16>
      %263 = vector.broadcast %cst_0 : f32 to vector<13x7xf32>
      %264 = vector.fma %263, %30, %35 : vector<13x7xf32>
      %alloc_42 = memref.alloc() : memref<4x13xi32>
      %265 = tensor.empty() : tensor<13x13xi32>
      %266 = linalg.matmul ins(%12, %alloc_42 : tensor<13x4xi32>, memref<4x13xi32>) outs(%265 : tensor<13x13xi32>) -> tensor<13x13xi32>
      %c81289047_i64 = arith.constant 81289047 : i64
      %267 = arith.andi %c1968776031_i64, %191 : i64
      %268 = math.fpowi %cst_1, %c552705139_i32 : f16, i32
      %269 = arith.addi %c830216547_i32, %c830216547_i32 : i32
      %270 = index.divu %c4, %126
      %271 = index.mul %c2, %157
      %272 = vector.create_mask %126 : vector<13xi1>
      scf.yield %cst_3 : f16
    }
    %251 = math.ctpop %1 : tensor<13x4xi16>
    memref.copy %alloc_12, %alloc : memref<13x4xi16> to memref<13x4xi16>
    %252 = arith.andi %false, %false : i1
    %253 = tensor.empty() : tensor<52xi16>
    %254 = linalg.copy ins(%collapsed_34 : tensor<52xi16>) outs(%253 : tensor<52xi16>) -> tensor<52xi16>
    %alloc_39 = memref.alloc() : memref<7xf16>
    linalg.transpose ins(%13 : tensor<7xf16>) outs(%alloc_39 : memref<7xf16>) permutation = [0] 
    %255 = tensor.empty() : tensor<f32>
    %reduced_40 = linalg.reduce ins(%alloc_5 : memref<13xf32>) outs(%255 : tensor<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %257 = vector.broadcast %false : i1 to vector<7x7xi1>
        %258 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %196, %54, %257 : vector<13x7xi1>, vector<13x7xi1> into vector<7x7xi1>
        %alloc_41 = memref.alloc() : memref<13x7x1xf32>
        memref.tensor_store %expanded, %alloc_41 : memref<13x7x1xf32>
        %259 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 128, (d0 + 8) floordiv 16, d2 + d2 + 9 + 1, ((d0 + 8) floordiv 16) mod 4)>(%c10, %205, %c6, %246)
        %inserted_42 = tensor.insert %165 into %131[%c3, %c0] : tensor<13x7xi16>
        %260 = math.fpowi %10, %5 : tensor<7xf32>, tensor<7xi32>
        %261 = vector.splat %145 : vector<13xindex>
        %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%expanded : tensor<13x7x1xf32>) {
        ^bb0(%out: f32):
          %264 = index.floordivs %39, %169
          %265 = index.sub %194, %158
          %266 = math.log10 %cst_2 : f32
          %267 = arith.remsi %c1939646478_i64, %c1334599510_i64 : i64
          %268 = index.casts %c12 : index to i32
          %269 = index.floordivs %177, %259
          %270 = bufferization.clone %alloc_6 : memref<13xi32> to memref<13xi32>
          %271 = arith.minf %cst, %cst : f16
          %272 = arith.remsi %181, %c1933866630_i32 : i32
          %273 = tensor.empty() : tensor<7x7xf32>
          %274 = tensor.empty() : tensor<13x7xf32>
          %275 = linalg.matmul ins(%16, %273 : tensor<13x7xf32>, tensor<7x7xf32>) outs(%274 : tensor<13x7xf32>) -> tensor<13x7xf32>
          %276 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 ceildiv 16, d3 mod 64)>(%c13, %78, %237, %c10)
          %277 = index.divs %246, %28
          %278 = arith.shli %c1933866630_i32, %c552705139_i32 : i32
          %279 = math.fpowi %cst_0, %c830216547_i32 : f32, i32
          %280 = index.castu %76 : i64 to index
          memref.store %cst_0, %alloc_4[%c3] : memref<13xf32>
          %281 = arith.maxui %c830216547_i32, %c830216547_i32 : i32
          %282 = index.divu %51, %c7
          %283 = arith.floordivsi %76, %76 : i64
          %rank = tensor.rank %274 : tensor<13x7xf32>
          %alloc_44 = memref.alloc() : memref<13xi1>
          %284 = arith.ori %c552705139_i32, %c1933866630_i32 : i32
          %285 = vector.extract_strided_slice %135 {offsets = [9], sizes = [4], strides = [1]} : vector<13xi16> to vector<4xi16>
          %286 = vector.broadcast %cst_3 : f16 to vector<7xf16>
          %287 = index.divu %95, %c11
          %288 = math.atan %cst_1 : f16
          %289 = index.casts %154 : index to i32
          %290 = index.casts %210 : index to i32
          %291 = vector.multi_reduction <add>, %36, %cst_0 [0] : vector<7xf32> to f32
          %292 = vector.shuffle %285, %285 [0, 1, 4] : vector<4xi16>, vector<4xi16>
          %293 = vector.matrix_multiply %286, %286 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf16>, vector<7xf16>) -> vector<1xf16>
          %collapsed_45 = tensor.collapse_shape %expanded [[0, 1], [2]] : tensor<13x7x1xf32> into tensor<91x1xf32>
          linalg.yield %out : f32
        } -> tensor<13x7x1xf32>
        %263 = math.sqrt %234 : f32
        %cst_43 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_43 : f32
      }
    scf.parallel (%arg0) = (%c8) to (%c0) step (%c8) {
      %257 = math.cos %expanded : tensor<13x7x1xf32>
      %258 = math.ctlz %c552705139_i32 : i32
      %alloc_41 = memref.alloc() : memref<13x4xf16>
      %259 = index.casts %c1772678022_i64 : i64 to index
      %260 = scf.while (%arg1 = %alloc_6) : (memref<13xi32>) -> memref<13xi32> {
        %272 = math.tanh %15 : tensor<13xf32>
        %273 = affine.apply affine_map<(d0, d1, d2) -> (-32)>(%230, %154, %199)
        %274 = math.atan2 %4, %4 : tensor<13x7xf32>
        %275 = arith.cmpi ult, %191, %c1968776031_i64 : i64
        %276 = index.floordivs %c3, %126
        %277 = math.exp %7 : tensor<7xf32>
        %278 = math.log2 %cst_1 : f16
        %279 = memref.atomic_rmw maxf %cst_1, %alloc_39[%c5] : (f16, memref<7xf16>) -> f16
        scf.condition(%123) %alloc_6 : memref<13xi32>
      } do {
      ^bb0(%arg1: memref<13xi32>):
        %272 = arith.remui %c1968776031_i64, %c1772678022_i64 : i64
        %273 = vector.broadcast %234 : f32 to vector<13xf32>
        %274 = vector.fma %273, %273, %224 : vector<13xf32>
        %275 = index.ceildivu %153, %63
        %276 = math.ctpop %14 : tensor<13x7xi32>
        %277 = math.expm1 %13 : tensor<7xf16>
        %278 = arith.floordivsi %191, %c1939646478_i64 : i64
        %alloca_42 = memref.alloca() : memref<7xi16>
        %279 = vector.matrix_multiply %133, %75 {lhs_columns = 1 : i32, lhs_rows = 13 : i32, rhs_columns = 4 : i32} : (vector<13xi1>, vector<4xi1>) -> vector<52xi1>
        memref.store %c-26765_i16, %alloc_19[%c11] : memref<13xi16>
        %280 = vector.create_mask %72 : vector<13xi1>
        %281 = index.maxu %210, %158
        %282 = vector.extract_strided_slice %222 {offsets = [7], sizes = [1], strides = [1]} : vector<9x7xi16> to vector<1x7xi16>
        %283 = vector.bitcast %70 : vector<2xf32> to vector<2xf32>
        %284 = index.castu %126 : index to i32
        %285 = index.casts %126 : index to i32
        %286 = arith.divf %cst_2, %234 : f32
        scf.yield %arg1 : memref<13xi32>
      }
      %261 = vector.insertelement %c-26765_i16, %135[%151 : index] : vector<13xi16>
      %262 = arith.remsi %181, %c552705139_i32 : i32
      %263 = index.floordivs %162, %28
      %264 = bufferization.to_tensor %alloc : memref<13x4xi16>
      %265 = memref.realloc %alloc_6 : memref<13xi32> to memref<7xi32>
      %266 = vector.insertelement %c1072490189_i32, %134[%c13 : index] : vector<13xi32>
      %267 = arith.andi %c552705139_i32, %c830216547_i32 : i32
      %268 = math.copysign %9, %9 : tensor<13x7xf16>
      %269 = index.casts %c1939646478_i64 : i64 to index
      %270 = math.cttz %c1939646478_i64 : i64
      %271 = math.absf %15 : tensor<13xf32>
      scf.yield
    }
    %256 = affine.vector_load %92[%205] : memref<13xf16>, vector<13xf16>
    affine.vector_store %160, %alloc_16[%151] : memref<13xf32>, vector<7xf32>
    vector.print %20 : vector<4xi1>
    vector.print %29 : vector<13x7xf32>
    vector.print %30 : vector<13x7xf32>
    vector.print %35 : vector<13x7xf32>
    vector.print %36 : vector<7xf32>
    vector.print %37 : vector<7xf32>
    vector.print %40 : vector<7xi64>
    vector.print %54 : vector<13x7xi1>
    vector.print %55 : vector<13x4xi64>
    vector.print %57 : vector<13x7xi1>
    vector.print %60 : vector<7xi32>
    vector.print %70 : vector<2xf32>
    vector.print %71 : vector<13x7xi1>
    vector.print %74 : vector<13x7xi16>
    vector.print %75 : vector<4xi1>
    vector.print %94 : vector<2xf32>
    vector.print %102 : vector<7xi64>
    vector.print %108 : vector<13xf32>
    vector.print %109 : vector<13xf32>
    vector.print %114 : vector<91xf32>
    vector.print %115 : vector<7xf32>
    vector.print %132 : vector<13xi16>
    vector.print %133 : vector<13xi1>
    vector.print %134 : vector<13xi32>
    vector.print %135 : vector<13xi16>
    vector.print %136 : vector<91xf32>
    vector.print %143 : vector<13x7xi32>
    vector.print %160 : vector<7xf32>
    vector.print %170 : vector<1xf32>
    vector.print %182 : vector<2xf32>
    vector.print %196 : vector<13x7xi1>
    vector.print %212 : vector<7xf32>
    vector.print %222 : vector<9x7xi16>
    vector.print %224 : vector<13xf32>
    vector.print %256 : vector<13xf16>
    vector.print %c1334599510_i64 : i64
    vector.print %c1968776031_i64 : i64
    vector.print %cst : f16
    vector.print %c18931_i16 : i16
    vector.print %c552705139_i32 : i32
    vector.print %cst_0 : f32
    vector.print %cst_1 : f16
    vector.print %cst_2 : f32
    vector.print %c1072490189_i32 : i32
    vector.print %c1939646478_i64 : i64
    vector.print %false : i1
    vector.print %cst_3 : f16
    vector.print %c-26765_i16 : i16
    vector.print %c1772678022_i64 : i64
    vector.print %c830216547_i32 : i32
    vector.print %c1933866630_i32 : i32
    vector.print %76 : i64
    vector.print %123 : i1
    vector.print %165 : i16
    vector.print %181 : i32
    vector.print %191 : i64
    vector.print %234 : f32
    return
  }
}
