module {
  func.func private @func1(%arg0: f32, %arg1: vector<5x11xi32>) -> index {
    %c74252398_i32 = arith.constant 74252398 : i32
    %cst = arith.constant 0x4C8AF115 : f32
    %false = arith.constant false
    %cst_0 = arith.constant 1.48773811E+9 : f32
    %c-6292_i16 = arith.constant -6292 : i16
    %cst_1 = arith.constant 2.11381952E+9 : f32
    %cst_2 = arith.constant 1.59749811E+9 : f32
    %c-25010_i16 = arith.constant -25010 : i16
    %cst_3 = arith.constant 1.18908659E+9 : f32
    %cst_4 = arith.constant 3.398400e+04 : f16
    %c2074895787_i32 = arith.constant 2074895787 : i32
    %c1015404764_i32 = arith.constant 1015404764 : i32
    %c1634351001_i64 = arith.constant 1634351001 : i64
    %cst_5 = arith.constant 1.501600e+04 : f16
    %cst_6 = arith.constant 8.400000e+03 : f16
    %c2968_i16 = arith.constant 2968 : i16
    %0 = tensor.empty() : tensor<5xi32>
    %1 = tensor.empty() : tensor<8x8xi16>
    %2 = tensor.empty() : tensor<11x5x8xi16>
    %3 = tensor.empty() : tensor<5xf16>
    %4 = tensor.empty() : tensor<5xi16>
    %5 = tensor.empty() : tensor<5xi1>
    %6 = tensor.empty() : tensor<8x8xi64>
    %7 = tensor.empty() : tensor<5x11xi16>
    %8 = tensor.empty() : tensor<5x11xf16>
    %9 = tensor.empty() : tensor<5xi16>
    %10 = tensor.empty() : tensor<5xf32>
    %11 = tensor.empty() : tensor<8x8xi32>
    %12 = tensor.empty() : tensor<5x11xf32>
    %13 = tensor.empty() : tensor<5xi64>
    %14 = tensor.empty() : tensor<5x11xi16>
    %15 = tensor.empty() : tensor<5x11xf32>
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
    %alloc = memref.alloc() : memref<5x11xf16>
    %alloc_7 = memref.alloc() : memref<5xi16>
    %alloc_8 = memref.alloc() : memref<8x8xf16>
    %alloc_9 = memref.alloc() : memref<5x11xf16>
    %alloc_10 = memref.alloc() : memref<5xi16>
    %alloc_11 = memref.alloc() : memref<5x11xi64>
    %alloc_12 = memref.alloc() : memref<11x5x8xf16>
    %alloc_13 = memref.alloc() : memref<11x5x8xi32>
    %alloc_14 = memref.alloc() : memref<8x8xf32>
    %alloc_15 = memref.alloc() : memref<5xi1>
    %alloc_16 = memref.alloc() : memref<5x11xi16>
    %alloc_17 = memref.alloc() : memref<5xi32>
    %alloc_18 = memref.alloc() : memref<8x8xf32>
    %alloc_19 = memref.alloc() : memref<8x8xi16>
    %alloc_20 = memref.alloc() : memref<5xf32>
    %alloc_21 = memref.alloc() : memref<8x8xf32>
    %16 = tensor.empty() : tensor<8x8xi64>
    %17 = linalg.copy ins(%6 : tensor<8x8xi64>) outs(%16 : tensor<8x8xi64>) -> tensor<8x8xi64>
    %alloc_22 = memref.alloc() : memref<8x8xi16>
    linalg.transpose ins(%1 : tensor<8x8xi16>) outs(%alloc_22 : memref<8x8xi16>) permutation = [1, 0] 
    %alloc_23 = memref.alloc() : memref<i32>
    linalg.reduce ins(%0 : tensor<5xi32>) outs(%alloc_23 : memref<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %255 = index.maxs %c1, %c11
        %256 = arith.shrsi %c-6292_i16, %c-6292_i16 : i16
        %257 = arith.shrsi %c-25010_i16, %c2968_i16 : i16
        %258 = index.maxu %c6, %c7
        %259 = arith.maxf %cst_2, %cst_3 : f32
        %260 = scf.index_switch %c0 -> index 
        case 1 {
          %262 = vector.broadcast %c-25010_i16 : i16 to vector<11x5x8xi16>
          %263 = vector.broadcast %false : i1 to vector<11x5x8xi1>
          %264 = vector.broadcast %c2074895787_i32 : i32 to vector<11x5x8xi32>
          %265 = vector.gather %2[%c10, %c10, %c1] [%264], %263, %262 : tensor<11x5x8xi16>, vector<11x5x8xi32>, vector<11x5x8xi1>, vector<11x5x8xi16> into vector<11x5x8xi16>
          %266 = arith.divf %cst_5, %cst_5 : f16
          %267 = math.rsqrt %cst_2 : f32
          %268 = arith.xori %c-6292_i16, %c-25010_i16 : i16
          %269 = math.exp2 %12 : tensor<5x11xf32>
          %270 = vector.broadcast %c2968_i16 : i16 to vector<5x8xi16>
          %271 = vector.insert %270, %262 [8] : vector<5x8xi16> into vector<11x5x8xi16>
          %alloc_46 = memref.alloc() : memref<5x11xf32>
          memref.tensor_store %15, %alloc_46 : memref<5x11xf32>
          %272 = arith.ori %c2968_i16, %c2968_i16 : i16
          %273 = vector.shuffle %262, %265 [0, 2, 3, 4, 5, 6, 7, 8, 9, 13, 15, 16, 17, 21] : vector<11x5x8xi16>, vector<11x5x8xi16>
          %274 = math.fma %cst_0, %cst_1, %cst : f32
          %275 = vector.broadcast %c1634351001_i64 : i64 to vector<11xi64>
          %276 = vector.broadcast %c1634351001_i64 : i64 to vector<11x11xi64>
          %277 = vector.outerproduct %275, %275, %276 {kind = #vector.kind<mul>} : vector<11xi64>, vector<11xi64>
          %278 = math.rsqrt %8 : tensor<5x11xf16>
          %279 = vector.create_mask %c6 : vector<5xi1>
          %280 = vector.insertelement %false, %279[%c15 : index] : vector<5xi1>
          %281 = math.absf %15 : tensor<5x11xf32>
          %282 = arith.maxf %cst_1, %cst : f32
          scf.yield %c3 : index
        }
        case 2 {
          %262 = arith.divsi %c-25010_i16, %c-25010_i16 : i16
          %263 = arith.shli %c-6292_i16, %c-25010_i16 : i16
          %264 = math.roundeven %8 : tensor<5x11xf16>
          %265 = vector.broadcast %c1634351001_i64 : i64 to vector<8x8xi64>
          %266 = vector.transpose %265, [0, 1] : vector<8x8xi64> to vector<8x8xi64>
          %267 = arith.shrui %c-25010_i16, %c-25010_i16 : i16
          %268 = arith.shrsi %c74252398_i32, %c2074895787_i32 : i32
          %269 = math.powf %cst_0, %cst_2 : f32
          memref.store %cst_4, %alloc_9[%c2, %c6] : memref<5x11xf16>
          %collapsed_46 = tensor.collapse_shape %7 [[0, 1]] : tensor<5x11xi16> into tensor<55xi16>
          %270 = tensor.empty(%c1) : tensor<?xi16>
          %271 = math.roundeven %cst_2 : f32
          %272 = math.absf %cst_5 : f16
          %273 = math.floor %cst_3 : f32
          %274 = vector.broadcast %false : i1 to vector<i1>
          %275 = vector.insertelement %false, %274[] : vector<i1>
          %276 = arith.shrsi %init, %c1015404764_i32 : i32
          %277 = math.rsqrt %12 : tensor<5x11xf32>
          scf.yield %c3 : index
        }
        case 3 {
          %262 = vector.broadcast %c1634351001_i64 : i64 to vector<8xi64>
          %263 = vector.insertelement %c1634351001_i64, %262[%258 : index] : vector<8xi64>
          %264 = vector.create_mask %255 : vector<5xi1>
          %265 = math.fma %cst_5, %cst_4, %cst_5 : f16
          %266 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %262, %262, %c1634351001_i64 : vector<8xi64>, vector<8xi64> into i64
          %267 = vector.insertelement %c1634351001_i64, %262[%258 : index] : vector<8xi64>
          %268 = arith.remf %cst_1, %cst_3 : f32
          %269 = arith.remf %cst_5, %cst_5 : f16
          %270 = vector.insertelement %false, %264[%c13 : index] : vector<5xi1>
          %271 = vector.broadcast %cst_3 : f32 to vector<5xf32>
          %272 = vector.fma %271, %271, %271 : vector<5xf32>
          affine.store %cst_5, %alloc_12[%c6, %c8, %c2] : memref<11x5x8xf16>
          %273 = arith.addi %c-25010_i16, %c2968_i16 : i16
          %274 = arith.shrui %c2074895787_i32, %in : i32
          %275 = arith.negf %cst_4 : f16
          bufferization.dealloc_tensor %10 : tensor<5xf32>
          %276 = arith.subi %c1634351001_i64, %c1634351001_i64 : i64
          vector.print %272 : vector<5xf32>
          scf.yield %c8 : index
        }
        default {
          %262 = arith.ori %c2968_i16, %c2968_i16 : i16
          %263 = vector.broadcast %false : i1 to vector<i1>
          %264 = vector.insertelement %false, %263[] : vector<i1>
          %265 = vector.broadcast %init : i32 to vector<1xi32>
          %266 = vector.extract_strided_slice %265 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi32> to vector<1xi32>
          %267 = arith.remf %cst_4, %cst_4 : f16
          %268 = vector.reduction <maxsi>, %265 : vector<1xi32> into i32
          %269 = index.maxu %255, %c10
          %270 = math.ctlz %13 : tensor<5xi64>
          %271 = math.log10 %cst_4 : f16
          %272 = arith.maxsi %c2074895787_i32, %init : i32
          %273 = arith.divf %cst_5, %cst_5 : f16
          %274 = vector.extract %265[0] : vector<1xi32>
          %275 = arith.negf %cst_0 : f32
          %276 = index.divu %c3, %c9
          %277 = vector.broadcast %c74252398_i32 : i32 to vector<1x1xi32>
          %278 = vector.outerproduct %266, %265, %277 {kind = #vector.kind<minui>} : vector<1xi32>, vector<1xi32>
          %279 = vector.transpose %265, [0] : vector<1xi32> to vector<1xi32>
          %280 = arith.divsi %c-6292_i16, %c-6292_i16 : i16
          scf.yield %c6 : index
        }
        %261 = math.ceil %15 : tensor<5x11xf32>
        %splat_45 = tensor.splat %c-25010_i16 : tensor<5xi16>
        %c1_i32 = arith.constant 1 : i32
        linalg.yield %c1_i32 : i32
      }
    scf.parallel (%arg2) = (%c7) to (%c12) step (%c6) {
      %255 = math.ipowi %9, %4 : tensor<5xi16>
      %256 = bufferization.clone %alloc_8 : memref<8x8xf16> to memref<8x8xf16>
      %257 = arith.maxf %cst_4, %cst_5 : f16
      %258 = arith.negf %cst_4 : f16
      %259 = index.sizeof
      %expanded = tensor.expand_shape %11 [[0], [1, 2]] : tensor<8x8xi32> into tensor<8x8x1xi32>
      %260 = arith.cmpi ne, %c-25010_i16, %c-6292_i16 : i16
      memref.assume_alignment %alloc_10, 1 : memref<5xi16>
      %261 = arith.shrsi %c-6292_i16, %c2968_i16 : i16
      %262 = math.log1p %8 : tensor<5x11xf16>
      %263 = arith.addi %false, %false : i1
      %264 = arith.minf %cst_5, %cst_5 : f16
      %265 = bufferization.to_tensor %alloc_23 : memref<i32>
      %266 = arith.addi %c2968_i16, %c-6292_i16 : i16
      %from_elements_45 = tensor.from_elements %false, %false, %false, %false, %false : tensor<5xi1>
      %267 = arith.muli %c-25010_i16, %c-6292_i16 : i16
      scf.yield
    }
    %18 = affine.vector_load %alloc_22[%c4, %c1] : memref<8x8xi16>, vector<8xi16>
    affine.vector_store %18, %alloc_16[%c10, %c4] : memref<5x11xi16>, vector<8xi16>
    %19 = tensor.empty() : tensor<5xi32>
    %20 = tensor.empty() : tensor<i32>
    %21 = linalg.dot ins(%0, %19 : tensor<5xi32>, tensor<5xi32>) outs(%20 : tensor<i32>) -> tensor<i32>
    %22 = math.ipowi %4, %4 : tensor<5xi16>
    %23 = math.floor %3 : tensor<5xf16>
    %24 = arith.divsi %false, %false : i1
    %25 = math.fma %cst_2, %cst_2, %cst_1 : f32
    %26 = vector.broadcast %cst_4 : f16 to vector<5x8xf16>
    %27 = vector.broadcast %cst_5 : f16 to vector<5xf16>
    %dest, %accumulated_value = vector.scan <minf>, %26, %27 {inclusive = true, reduction_dim = 1 : i64} : vector<5x8xf16>, vector<5xf16>
    %28 = memref.load %alloc_9[%c3, %c9] : memref<5x11xf16>
    vector.print %18 : vector<8xi16>
    %29 = math.ipowi %4, %9 : tensor<5xi16>
    %30 = arith.divf %cst_2, %cst_1 : f32
    %31 = vector.broadcast %cst_0 : f32 to vector<5x11xf32>
    %32 = vector.fma %31, %31, %31 : vector<5x11xf32>
    %33 = vector.create_mask %c8, %c7 : vector<5x11xi1>
    %34 = math.log10 %cst_1 : f32
    %35 = math.absf %12 : tensor<5x11xf32>
    %36 = bufferization.clone %alloc_21 : memref<8x8xf32> to memref<8x8xf32>
    %37 = bufferization.to_tensor %alloc : memref<5x11xf16>
    %38 = arith.remf %cst_6, %cst_4 : f16
    %39 = affine.load %alloc_10[%c4] : memref<5xi16>
    %40 = math.rsqrt %10 : tensor<5xf32>
    %41 = arith.shrui %c-6292_i16, %c-6292_i16 : i16
    %collapsed = tensor.collapse_shape %8 [[0, 1]] : tensor<5x11xf16> into tensor<55xf16>
    %rank = tensor.rank %7 : tensor<5x11xi16>
    %alloca = memref.alloca() : memref<5xf16>
    %42 = vector.insertelement %c2968_i16, %18[%c4 : index] : vector<8xi16>
    %43 = math.ceil %cst_4 : f16
    %44 = index.ceildivs %c0, %c10
    %45 = arith.floordivsi %c1015404764_i32, %c2074895787_i32 : i32
    %46 = vector.broadcast %cst_0 : f32 to vector<11xf32>
    %47 = vector.insert %46, %32 [2] : vector<11xf32> into vector<5x11xf32>
    %48 = math.ipowi %39, %c2968_i16 : i16
    %49 = vector.broadcast %cst_3 : f32 to vector<11x11xf32>
    %50 = vector.outerproduct %46, %46, %49 {kind = #vector.kind<add>} : vector<11xf32>, vector<11xf32>
    %51 = vector.shuffle %33, %33 [0, 1, 3, 4, 8] : vector<5x11xi1>, vector<5x11xi1>
    %52 = index.ceildivs %c4, %c6
    %53 = math.fma %cst_6, %cst_4, %cst_6 : f16
    %54 = tensor.empty() : tensor<8x5xi16>
    %alloc_24 = memref.alloc() : memref<5x11x8xi16>
    %55 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%54, %alloc_24 : tensor<8x5xi16>, memref<5x11x8xi16>) outs(%2 : tensor<11x5x8xi16>) {
    ^bb0(%in: i16, %in_45: i16, %out: i16):
      %255 = arith.negf %cst : f32
      %256 = math.powf %15, %15 : tensor<5x11xf32>
      %257 = index.ceildivu %c4, %c8
      %258 = index.sizeof
      %259 = math.expm1 %3 : tensor<5xf16>
      %260 = index.mul %c13, %257
      %261 = math.absf %12 : tensor<5x11xf32>
      %262 = tensor.empty() : tensor<5x11xf16>
      %mapped_46 = linalg.map ins(%alloc_9 : memref<5x11xf16>) outs(%262 : tensor<5x11xf16>)
        (%in_48: f16) {
          %from_elements_49 = tensor.from_elements %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c74252398_i32, %c1015404764_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c74252398_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c74252398_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32 : tensor<11x5x8xi32>
          %287 = arith.floordivsi %c-6292_i16, %out : i16
          %288 = vector.extract_strided_slice %33 {offsets = [2], sizes = [2], strides = [1]} : vector<5x11xi1> to vector<2x11xi1>
          %289 = arith.subi %c2074895787_i32, %c2074895787_i32 : i32
          %290 = index.divu %c14, %260
          %291 = math.exp2 %3 : tensor<5xf16>
          %292 = arith.shrsi %c2074895787_i32, %c74252398_i32 : i32
          %293 = math.ipowi %1, %1 : tensor<8x8xi16>
          %294 = arith.maxui %c2968_i16, %39 : i16
          %295 = index.maxu %44, %c10
          %alloc_50 = memref.alloc() : memref<5xi1>
          %296 = vector.transpose %18, [0] : vector<8xi16> to vector<8xi16>
          %297 = vector.insertelement %c-25010_i16, %18[%c3 : index] : vector<8xi16>
          %298 = math.tan %8 : tensor<5x11xf16>
          %cst_51 = arith.constant 1.000000e+00 : f32
          %cst_52 = arith.constant 0.000000e+00 : f32
          %299 = vector.transfer_read %12[%260, %c2], %cst_52 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<5x11xf32>, vector<8xf32>
          %300 = arith.floordivsi %c2074895787_i32, %c1015404764_i32 : i32
          %301 = arith.shli %39, %in : i16
          %302 = math.exp %15 : tensor<5x11xf32>
          %c1_i16 = arith.constant 1 : i16
          %c0_i16 = arith.constant 0 : i16
          %303 = vector.transfer_read %alloc_16[%c5, %c1], %c0_i16 : memref<5x11xi16>, vector<i16>
          %304 = vector.insert %46, %32 [2] : vector<11xf32> into vector<5x11xf32>
          %305 = arith.maxf %cst_0, %cst : f32
          %306 = vector.shuffle %33, %33 [0, 3, 5, 7, 8, 9] : vector<5x11xi1>, vector<5x11xi1>
          %307 = index.castu %c6 : index to i32
          %308 = math.exp2 %262 : tensor<5x11xf16>
          %309 = arith.ceildivsi %39, %c-6292_i16 : i16
          %expanded = tensor.expand_shape %12 [[0], [1, 2]] : tensor<5x11xf32> into tensor<5x11x1xf32>
          %310 = vector.reduction <maxf>, %46 : vector<11xf32> into f32
          %alloc_53 = memref.alloc() : memref<8x8xf16>
          %311 = arith.muli %c-6292_i16, %in_45 : i16
          %312 = vector.transpose %31, [0, 1] : vector<5x11xf32> to vector<5x11xf32>
          %313 = index.floordivs %c3, %c8
          %314 = math.log2 %cst_2 : f32
          %cst_54 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_54 : f16
        }
      %263 = memref.alloca_scope  -> (f16) {
        %287 = arith.cmpi slt, %c1634351001_i64, %c1634351001_i64 : i64
        %288 = index.divu %c1, %c13
        %289 = vector.load %alloc_17[%c3] : memref<5xi32>, vector<8x8xi32>
        %290 = index.sizeof
        %291 = index.ceildivu %c0, %c14
        %292 = vector.matrix_multiply %18, %18 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi16>, vector<8xi16>) -> vector<1xi16>
        %293 = tensor.empty() : tensor<8x8xi16>
        %294 = linalg.matmul ins(%1, %1 : tensor<8x8xi16>, tensor<8x8xi16>) outs(%293 : tensor<8x8xi16>) -> tensor<8x8xi16>
        %295 = math.tan %3 : tensor<5xf16>
        %296 = index.divu %c13, %258
        %297 = affine.load %alloc_8[%c13, %c7] : memref<8x8xf16>
        %298 = arith.shrsi %in_45, %c2968_i16 : i16
        %299 = math.cttz %293 : tensor<8x8xi16>
        %300 = arith.ori %c1634351001_i64, %c1634351001_i64 : i64
        %301 = arith.maxf %cst_6, %cst_4 : f16
        %302 = arith.cmpi uge, %c1015404764_i32, %c1015404764_i32 : i32
        %alloc_48 = memref.alloc() : memref<11x11xf16>
        %303 = tensor.empty() : tensor<5x11xf16>
        %304 = linalg.matmul ins(%37, %alloc_48 : tensor<5x11xf16>, memref<11x11xf16>) outs(%303 : tensor<5x11xf16>) -> tensor<5x11xf16>
        %305 = math.fma %15, %12, %12 : tensor<5x11xf32>
        %306 = arith.andi %c2074895787_i32, %c2074895787_i32 : i32
        %307 = vector.broadcast %cst_2 : f32 to vector<11x11xf32>
        %308 = vector.outerproduct %46, %46, %307 {kind = #vector.kind<maxf>} : vector<11xf32>, vector<11xf32>
        %309 = index.floordivs %c11, %c7
        %310 = vector.shuffle %32, %32 [0, 1, 3, 7, 8, 9] : vector<5x11xf32>, vector<5x11xf32>
        %311 = math.expm1 %cst_4 : f16
        %312 = arith.mulf %cst_2, %cst_3 : f32
        %313 = vector.splat %c10 : vector<8x8xindex>
        %314 = bufferization.clone %alloc : memref<5x11xf16> to memref<5x11xf16>
        %315 = tensor.empty(%c15) : tensor<5x?xi1>
        %316 = arith.divf %cst_0, %cst_0 : f32
        %317 = arith.remf %cst_2, %cst_2 : f32
        %318 = math.log %cst_1 : f32
        %319 = vector.create_mask %c4, %44, %52 : vector<11x5x8xi1>
        %320 = index.ceildivu %c3, %c0
        %321 = vector.transpose %292, [0] : vector<1xi16> to vector<1xi16>
        memref.alloca_scope.return %cst_5 : f16
      }
      %264 = vector.insertelement %cst_0, %46[%c1 : index] : vector<11xf32>
      %265 = math.ipowi %in, %39 : i16
      %266 = math.log10 %3 : tensor<5xf16>
      %267 = math.cttz %4 : tensor<5xi16>
      %268 = scf.execute_region -> index {
        %287 = math.absi %20 : tensor<i32>
        %288 = vector.bitcast %46 : vector<11xf32> to vector<11xf32>
        %289 = arith.mulf %cst_1, %cst_1 : f32
        %290 = bufferization.clone %alloc_14 : memref<8x8xf32> to memref<8x8xf32>
        %291 = math.log10 %15 : tensor<5x11xf32>
        %292 = math.cos %15 : tensor<5x11xf32>
        %293 = arith.minf %cst, %cst_1 : f32
        %294 = vector.broadcast %c-25010_i16 : i16 to vector<8x8xi16>
        %295 = vector.outerproduct %18, %18, %294 {kind = #vector.kind<add>} : vector<8xi16>, vector<8xi16>
        %296 = vector.insert %46, %32 [2] : vector<11xf32> into vector<5x11xf32>
        %297 = math.fma %10, %10, %10 : tensor<5xf32>
        %298 = arith.subi %c1015404764_i32, %c74252398_i32 : i32
        %299 = math.ceil %3 : tensor<5xf16>
        %300 = index.castu %c74252398_i32 : i32 to index
        %301 = arith.remf %263, %263 : f16
        %302 = math.ipowi %c74252398_i32, %c74252398_i32 : i32
        %303 = vector.broadcast %false : i1 to vector<11xi1>
        %304 = vector.maskedload %290[%c4, %c3], %303, %46 : memref<8x8xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
        scf.yield %c12 : index
      }
      %269 = arith.divsi %c2074895787_i32, %c1015404764_i32 : i32
      %270 = memref.alloca_scope  -> (memref<5x11xf32>) {
        %287 = arith.remf %cst_2, %cst_3 : f32
        bufferization.dealloc_tensor %1 : tensor<8x8xi16>
        %288 = arith.divf %cst_5, %cst_5 : f16
        %289 = math.log10 %12 : tensor<5x11xf32>
        %290 = vector.broadcast %cst_1 : f32 to vector<5x11xf32>
        %291 = vector.fma %290, %290, %31 : vector<5x11xf32>
        %292 = arith.remui %c-6292_i16, %out : i16
        %293 = affine.min affine_map<(d0, d1) -> (1, 0, d1, 0)>(%c1, %c7)
        %294 = arith.maxui %c74252398_i32, %c1015404764_i32 : i32
        %295 = math.round %8 : tensor<5x11xf16>
        %296 = math.absi %in_45 : i16
        %alloc_48 = memref.alloc() : memref<11x8xf32>
        %297 = tensor.empty() : tensor<5x8xf32>
        %298 = linalg.matmul ins(%12, %alloc_48 : tensor<5x11xf32>, memref<11x8xf32>) outs(%297 : tensor<5x8xf32>) -> tensor<5x8xf32>
        %299 = vector.insert %c2968_i16, %18 [5] : i16 into vector<8xi16>
        %300 = math.expm1 %3 : tensor<5xf16>
        %301 = math.floor %8 : tensor<5x11xf16>
        %302 = vector.broadcast %false : i1 to vector<11xi1>
        %dest_49, %accumulated_value_50 = vector.scan <minsi>, %33, %302 {inclusive = true, reduction_dim = 0 : i64} : vector<5x11xi1>, vector<11xi1>
        memref.store %cst_6, %alloc_8[%c4, %c0] : memref<8x8xf16>
        %303 = arith.cmpi eq, %c2968_i16, %c-6292_i16 : i16
        %304 = arith.addf %cst_0, %cst_3 : f32
        %305 = index.maxu %c6, %258
        %306 = arith.mulf %cst_3, %cst : f32
        %307 = math.ctpop %19 : tensor<5xi32>
        %308 = vector.flat_transpose %18 {columns = 4 : i32, rows = 2 : i32} : vector<8xi16> -> vector<8xi16>
        %309 = math.log10 %cst_0 : f32
        %310 = vector.insert %c2968_i16, %18 [7] : i16 into vector<8xi16>
        %311 = index.floordivs %c14, %c6
        %312 = math.round %cst_0 : f32
        %313 = arith.andi %c1015404764_i32, %c74252398_i32 : i32
        %alloca_51 = memref.alloca() : memref<5xi64>
        %314 = arith.negf %cst_0 : f32
        %315 = arith.cmpi uge, %c2074895787_i32, %c74252398_i32 : i32
        %316 = vector.broadcast %c74252398_i32 : i32 to vector<11xi32>
        %317 = vector.broadcast %false : i1 to vector<11xi1>
        %318 = vector.maskedload %alloc_13[%c8, %c3, %c1], %317, %316 : memref<11x5x8xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
        %319 = index.sub %c9, %c11
        %alloc_52 = memref.alloc() : memref<5x11xf32>
        memref.alloca_scope.return %alloc_52 : memref<5x11xf32>
      }
      %271 = arith.minf %cst, %cst_0 : f32
      %272 = math.atan %3 : tensor<5xf16>
      %273 = index.maxu %c1, %258
      %274 = math.absi %19 : tensor<5xi32>
      %275 = vector.load %alloc_11[%c4, %c5] : memref<5x11xi64>, vector<5xi64>
      %276 = index.castu %out : i16 to index
      %rank_47 = tensor.rank %12 : tensor<5x11xf32>
      %277 = scf.while (%arg2 = %alloc_10) : (memref<5xi16>) -> memref<5xi16> {
        %287 = math.ctpop %c1634351001_i64 : i64
        %288 = vector.broadcast %c1015404764_i32 : i32 to vector<11x5x8xi32>
        %289 = vector.broadcast %false : i1 to vector<11x5x8xi1>
        %290 = vector.gather %11[%c9, %rank] [%288], %289, %288 : tensor<8x8xi32>, vector<11x5x8xi32>, vector<11x5x8xi1>, vector<11x5x8xi32> into vector<11x5x8xi32>
        vector.print %290 : vector<11x5x8xi32>
        vector.print %288 : vector<11x5x8xi32>
        %291 = vector.extract_strided_slice %18 {offsets = [5], sizes = [3], strides = [1]} : vector<8xi16> to vector<3xi16>
        %292 = arith.addi %false, %false : i1
        %293 = index.maxs %c8, %52
        %from_elements_48 = tensor.from_elements %cst_4, %cst_6, %cst_4, %cst_4, %263, %263, %cst_6, %cst_5, %263, %263, %cst_6, %cst_5, %cst_5, %cst_6, %cst_4, %cst_4, %cst_6, %263, %263, %cst_6, %cst_4, %cst_4, %cst_5, %263, %cst_4, %cst_4, %cst_6, %cst_4, %cst_6, %cst_6, %263, %263, %cst_5, %cst_4, %cst_6, %263, %cst_4, %cst_5, %cst_4, %cst_5, %263, %cst_6, %cst_6, %cst_6, %cst_5, %cst_4, %cst_6, %cst_5, %cst_6, %cst_4, %cst_4, %cst_4, %cst_6, %cst_5, %cst_6 : tensor<5x11xf16>
        scf.condition(%false) %alloc_10 : memref<5xi16>
      } do {
      ^bb0(%arg2: memref<5xi16>):
        %287 = arith.floordivsi %c1015404764_i32, %c2074895787_i32 : i32
        %rank_48 = tensor.rank %15 : tensor<5x11xf32>
        %288 = arith.shrsi %c-25010_i16, %in : i16
        %289 = math.log %10 : tensor<5xf32>
        %290 = index.maxu %c14, %258
        %collapsed_49 = tensor.collapse_shape %1 [[0, 1]] : tensor<8x8xi16> into tensor<64xi16>
        %291 = vector.create_mask %258, %273 : vector<5x11xi1>
        %rank_50 = tensor.rank %11 : tensor<8x8xi32>
        %292 = math.log2 %cst_2 : f32
        %293 = bufferization.to_tensor %alloc_15 : memref<5xi1>
        %from_elements_51 = tensor.from_elements %cst_1, %cst_3, %cst, %cst_3, %cst_0, %cst_1, %cst, %cst_3, %cst_1, %cst, %cst_2, %cst_1, %cst_3, %cst_0, %cst_0, %cst_0, %cst_1, %cst_3, %cst_2, %cst_3, %cst_3, %cst_0, %cst, %cst_2, %cst, %cst_0, %cst_2, %cst_3, %cst, %cst_0, %cst_2, %cst_3, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst_1, %cst_0, %cst_2, %cst_1, %cst_3, %cst_3, %cst, %cst_3, %cst_2, %cst, %cst, %cst_1, %cst_3, %cst_0, %cst_3, %cst_1, %cst, %cst_1, %cst_2, %cst_3, %cst_1, %cst, %cst_0, %cst_1, %cst_1, %cst, %cst_0, %cst_3, %cst, %cst_1, %cst_2, %cst_1, %cst, %cst_0, %cst_3, %cst_3, %cst, %cst, %cst_1, %cst_2, %cst_2, %cst, %cst_2, %cst_3, %cst_3, %cst_0, %cst_0, %cst_3, %cst_2, %cst_2, %cst_2, %cst, %cst_0, %cst, %cst_0, %cst_1, %cst_2, %cst_1, %cst_2, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_2, %cst, %cst, %cst, %cst_3, %cst_2, %cst_0, %cst_0, %cst_1, %cst_1, %cst_2, %cst_0, %cst_3, %cst_1, %cst, %cst, %cst, %cst_2, %cst_1, %cst_3, %cst_1, %cst_2, %cst_2, %cst_3, %cst_2, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_0, %cst_0, %cst_2, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_0, %cst_3, %cst_1, %cst_2, %cst_1, %cst_0, %cst_3, %cst_3, %cst, %cst_2, %cst_3, %cst_0, %cst_3, %cst_2, %cst_3, %cst_1, %cst_2, %cst_2, %cst, %cst_3, %cst, %cst_0, %cst_0, %cst_0, %cst_3, %cst_1, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_3, %cst_3, %cst_0, %cst_0, %cst, %cst_3, %cst_1, %cst_2, %cst_3, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_0, %cst_1, %cst, %cst_0, %cst, %cst, %cst, %cst_1, %cst_2, %cst_3, %cst_2, %cst, %cst_2, %cst, %cst_3, %cst_0, %cst, %cst_1, %cst_0, %cst_3, %cst_2, %cst_3, %cst_3, %cst_3, %cst_0, %cst_1, %cst_0, %cst_2, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst, %cst_3, %cst_2, %cst_0, %cst, %cst_3, %cst_3, %cst_2, %cst_3, %cst_1, %cst_3, %cst_0, %cst_0, %cst_2, %cst_0, %cst_3, %cst_0, %cst_2, %cst_0, %cst_3, %cst_0, %cst_0, %cst_3, %cst_3, %cst_1, %cst_0, %cst_0, %cst_0, %cst_3, %cst, %cst_3, %cst_0, %cst_1, %cst_3, %cst_2, %cst_3, %cst_3, %cst_3, %cst_0, %cst_3, %cst_2, %cst_3, %cst_0, %cst, %cst_1, %cst_2, %cst_3, %cst_1, %cst_0, %cst, %cst_3, %cst_2, %cst_0, %cst_3, %cst_1, %cst_1, %cst_0, %cst, %cst_3, %cst_1, %cst_1, %cst_0, %cst_1, %cst_2, %cst_1, %cst_0, %cst_3, %cst, %cst_0, %cst_3, %cst_3, %cst_1, %cst_3, %cst, %cst_0, %cst_1, %cst, %cst_1, %cst_1, %cst_3, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_2, %cst_2, %cst_1, %cst_0, %cst_3, %cst_1, %cst_2, %cst, %cst_0, %cst_2, %cst_2, %cst_0, %cst_3, %cst, %cst_3, %cst_0, %cst_0, %cst, %cst_1, %cst_0, %cst, %cst_3, %cst_3, %cst_2, %cst_3, %cst_1, %cst_2, %cst, %cst_3, %cst, %cst_3, %cst_1, %cst_2, %cst_0, %cst_1, %cst, %cst_3, %cst_3, %cst_0, %cst_2, %cst, %cst_3, %cst_0, %cst_2, %cst_3, %cst_1, %cst_3, %cst_1, %cst_0, %cst_0, %cst_1, %cst, %cst_1, %cst, %cst, %cst_1, %cst_0, %cst_3, %cst_1, %cst_0, %cst_1, %cst_0, %cst_1, %cst_3, %cst_0, %cst_1, %cst_3, %cst, %cst_0, %cst_1, %cst_3, %cst_2, %cst_3, %cst_2, %cst_2, %cst_1, %cst_3, %cst_2, %cst_1, %cst_1, %cst_3, %cst_2, %cst_3, %cst_2, %cst, %cst_2, %cst_3, %cst, %cst_3, %cst_3, %cst_0, %cst, %cst_3, %cst_3, %cst, %cst_0, %cst_2, %cst_3, %cst_2, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_3, %cst_2, %cst_2, %cst, %cst_1, %cst_0, %cst_2, %cst_0, %cst_1, %cst_3, %cst_0, %cst_2, %cst_2, %cst, %cst_1, %cst_2, %cst_3, %cst_1, %cst, %cst_2, %cst_2, %cst_0, %cst_0 : tensor<11x5x8xf32>
        %294 = arith.subi %false, %false : i1
        %295 = math.log10 %cst : f32
        %296 = arith.negf %263 : f16
        %297 = index.sizeof
        %298 = index.maxu %c11, %44
        scf.yield %alloc_7 : memref<5xi16>
      }
      %278 = vector.flat_transpose %275 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
      bufferization.dealloc_tensor %1 : tensor<8x8xi16>
      %279 = math.tan %12 : tensor<5x11xf32>
      %280 = index.sizeof
      %281 = vector.broadcast %c-6292_i16 : i16 to vector<5xi16>
      %282 = vector.broadcast %false : i1 to vector<5xi1>
      %283 = vector.maskedload %alloc_22[%c5, %c0], %282, %281 : memref<8x8xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
      %284 = scf.while (%arg2 = %278) : (vector<5xi64>) -> vector<5xi64> {
        %cst_48 = arith.constant 1.000000e+00 : f16
        %cst_49 = arith.constant 0.000000e+00 : f16
        %287 = vector.transfer_read %8[%c1, %c4], %cst_49 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<5x11xf16>, vector<11xf16>
        vector.print %282 : vector<5xi1>
        %288 = math.log2 %8 : tensor<5x11xf16>
        %from_elements_50 = tensor.from_elements %cst_2, %cst_2, %cst_2, %cst_1, %cst_3 : tensor<5xf32>
        vector.print %282 : vector<5xi1>
        bufferization.dealloc_tensor %4 : tensor<5xi16>
        vector.print %278 : vector<5xi64>
        memref.tensor_store %8, %alloc : memref<5x11xf16>
        scf.condition(%false) %278 : vector<5xi64>
      } do {
      ^bb0(%arg2: vector<5xi64>):
        %287 = vector.matrix_multiply %282, %282 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
        %rank_48 = tensor.rank %7 : tensor<5x11xi16>
        %288 = arith.remf %cst_4, %cst_6 : f16
        %from_elements_49 = tensor.from_elements %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64 : tensor<8x8xi64>
        %289 = math.rsqrt %3 : tensor<5xf16>
        %290 = math.atan2 %cst_0, %cst_1 : f32
        %291 = bufferization.clone %alloc_15 : memref<5xi1> to memref<5xi1>
        %292 = arith.addi %in_45, %c2968_i16 : i16
        %293 = index.ceildivu %280, %c8
        %294 = index.sizeof
        %295 = arith.andi %c-25010_i16, %in_45 : i16
        %296 = math.log2 %3 : tensor<5xf16>
        %297 = arith.andi %out, %out : i16
        %extracted = tensor.extract %37[%c3, %c7] : tensor<5x11xf16>
        %298 = arith.negf %cst_3 : f32
        %299 = vector.broadcast %c74252398_i32 : i32 to vector<5xi32>
        %300 = vector.maskedload %alloc_17[%c0], %282, %299 : memref<5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
        scf.yield %275 : vector<5xi64>
      }
      %285 = arith.minsi %in_45, %in_45 : i16
      %286 = math.round %cst_1 : f32
      linalg.yield %c-25010_i16 : i16
    } -> tensor<11x5x8xi16>
    %56 = math.cttz %19 : tensor<5xi32>
    %57 = bufferization.to_tensor %alloc_15 : memref<5xi1>
    %58 = math.cttz %14 : tensor<5x11xi16>
    memref.alloca_scope  {
      %255 = arith.ceildivsi %c1015404764_i32, %c74252398_i32 : i32
      %256 = index.ceildivs %52, %52
      %257 = vector.transpose %18, [0] : vector<8xi16> to vector<8xi16>
      %258 = math.fma %collapsed, %collapsed, %collapsed : tensor<55xf16>
      %259 = math.log %10 : tensor<5xf32>
      %260 = vector.broadcast %c-25010_i16 : i16 to vector<8x8xi16>
      %261 = vector.outerproduct %18, %18, %260 {kind = #vector.kind<xor>} : vector<8xi16>, vector<8xi16>
      %262 = index.casts %c10 : index to i32
      %263 = index.mul %c7, %c10
      %264 = vector.broadcast %39 : i16 to vector<11xi16>
      %265 = vector.broadcast %false : i1 to vector<11xi1>
      %266 = vector.maskedload %alloc_7[%c4], %265, %264 : memref<5xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
      %alloc_45 = memref.alloc() : memref<8x8xf16>
      memref.copy %alloc_8, %alloc_45 : memref<8x8xf16> to memref<8x8xf16>
      %267 = vector.load %alloc[%c0, %c4] : memref<5x11xf16>, vector<5x11xf16>
      %268 = vector.shuffle %32, %32 [1, 3, 4, 5, 7, 9] : vector<5x11xf32>, vector<5x11xf32>
      %269 = arith.addi %c2074895787_i32, %c2074895787_i32 : i32
      bufferization.dealloc_tensor %13 : tensor<5xi64>
      %270 = math.sqrt %cst_5 : f16
      %271 = math.exp %8 : tensor<5x11xf16>
      %272 = arith.subi %false, %false : i1
      %273 = vector.broadcast %cst_6 : f16 to vector<11xf16>
      %dest_46, %accumulated_value_47 = vector.scan <minf>, %267, %273 {inclusive = true, reduction_dim = 0 : i64} : vector<5x11xf16>, vector<11xf16>
      %274 = vector.broadcast %cst_1 : f32 to vector<5x11xf32>
      %275 = vector.fma %274, %31, %32 : vector<5x11xf32>
      %276 = vector.extract_strided_slice %31 {offsets = [3], sizes = [2], strides = [1]} : vector<5x11xf32> to vector<2x11xf32>
      scf.index_switch %c3 
      case 1 {
        %282 = vector.extract_strided_slice %264 {offsets = [0], sizes = [10], strides = [1]} : vector<11xi16> to vector<10xi16>
        %283 = vector.flat_transpose %46 {columns = 11 : i32, rows = 1 : i32} : vector<11xf32> -> vector<11xf32>
        %284 = affine.min affine_map<(d0, d1, d2) -> (((d2 floordiv 8) mod 8) * -128, d0 floordiv 32)>(%c9, %c14, %52)
        %285 = index.add %c11, %c10
        %286 = affine.load %alloc_20[%c11] : memref<5xf32>
        %287 = vector.broadcast %39 : i16 to vector<10x10xi16>
        %288 = vector.outerproduct %282, %282, %287 {kind = #vector.kind<maxui>} : vector<10xi16>, vector<10xi16>
        %289 = vector.shuffle %31, %274 [0, 3, 4] : vector<5x11xf32>, vector<5x11xf32>
        %290 = index.maxu %c4, %c11
        %291 = vector.extract %282[0] : vector<10xi16>
        %292 = bufferization.clone %alloc_19 : memref<8x8xi16> to memref<8x8xi16>
        %293 = vector.shuffle %275, %274 [2, 4, 6, 7] : vector<5x11xf32>, vector<5x11xf32>
        %294 = arith.addf %cst, %cst : f32
        %295 = math.log %8 : tensor<5x11xf16>
        %296 = math.round %10 : tensor<5xf32>
        %297 = math.ctpop %0 : tensor<5xi32>
        %298 = vector.insert %c2968_i16, %266 [5] : i16 into vector<11xi16>
        scf.yield
      }
      case 2 {
        memref.assume_alignment %alloc_16, 8 : memref<5x11xi16>
        %282 = arith.mulf %cst_0, %cst_2 : f32
        %283 = index.castu %c-6292_i16 : i16 to index
        %284 = arith.shrui %c2968_i16, %c2968_i16 : i16
        %285 = index.maxu %c0, %44
        %286 = math.exp2 %12 : tensor<5x11xf32>
        %287 = arith.addi %false, %false : i1
        memref.assume_alignment %alloc_19, 16 : memref<8x8xi16>
        %288 = affine.min affine_map<(d0, d1, d2) -> (d0, -d0 - d1, -(d2 ceildiv 4))>(%c7, %c9, %44)
        %289 = vector.broadcast %cst_1 : f32 to vector<5xf32>
        %dest_54, %accumulated_value_55 = vector.scan <mul>, %275, %289 {inclusive = false, reduction_dim = 1 : i64} : vector<5x11xf32>, vector<5xf32>
        %290 = math.tan %cst_5 : f16
        %291 = vector.extract %18[6] : vector<8xi16>
        %292 = memref.realloc %alloc_7 : memref<5xi16> to memref<5xi16>
        %293 = math.tan %cst_3 : f32
        %c165802094_i32 = arith.constant 165802094 : i32
        %294 = arith.minf %cst_0, %cst_0 : f32
        scf.yield
      }
      default {
        %282 = index.divu %44, %256
        %283 = arith.floordivsi %c-25010_i16, %c-6292_i16 : i16
        %cast = tensor.cast %16 : tensor<8x8xi64> to tensor<?x?xi64>
        %284 = arith.floordivsi %c74252398_i32, %c1015404764_i32 : i32
        vector.print %46 : vector<11xf32>
        %285 = affine.max affine_map<(d0, d1) -> (0, (d0 mod 128) * 32, d0 * 2)>(%44, %c5)
        %286 = vector.broadcast %c-25010_i16 : i16 to vector<5xi16>
        %287 = vector.broadcast %false : i1 to vector<5xi1>
        %288 = vector.maskedload %alloc_7[%c1], %287, %286 : memref<5xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
        %289 = math.ctpop %2 : tensor<11x5x8xi16>
        %290 = index.sub %282, %c12
        %291 = arith.addi %c2968_i16, %c2968_i16 : i16
        %292 = affine.load %alloc_17[%c10] : memref<5xi32>
        %293 = arith.remf %cst_6, %cst_5 : f16
        %294 = math.cttz %14 : tensor<5x11xi16>
        %295 = arith.cmpf true, %cst_0, %cst : f32
        %296 = arith.divsi %c2968_i16, %c2968_i16 : i16
        %297 = affine.max affine_map<(d0, d1, d2) -> (d2, d1 - d0 + 2, d1, d1 - d0 + 2)>(%c6, %285, %c9)
      }
      %277 = arith.negf %cst_1 : f32
      memref.store %cst_0, %alloc_14[%c4, %c4] : memref<8x8xf32>
      %generated_48 = tensor.generate %c14 {
      ^bb0(%arg2: index, %arg3: index):
        %282 = arith.maxf %cst_2, %cst_0 : f32
        %cast = tensor.cast %0 : tensor<5xi32> to tensor<?xi32>
        %283 = arith.divf %cst_1, %cst_0 : f32
        %284 = arith.maxsi %c-25010_i16, %c2968_i16 : i16
        tensor.yield %cst_3 : f32
      } : tensor<?x11xf32>
      %dest_49, %accumulated_value_50 = vector.scan <mul>, %31, %46 {inclusive = false, reduction_dim = 0 : i64} : vector<5x11xf32>, vector<11xf32>
      %278 = math.roundeven %3 : tensor<5xf16>
      %279 = arith.addi %false, %false : i1
      vector.print %264 : vector<11xi16>
      %280 = vector.reduction <maxf>, %46 : vector<11xf32> into f32
      %alloca_51 = memref.alloca() : memref<8x8xi16>
      %dest_52, %accumulated_value_53 = vector.scan <minf>, %274, %46 {inclusive = true, reduction_dim = 0 : i64} : vector<5x11xf32>, vector<11xf32>
      %281 = arith.cmpf one, %cst_6, %cst_6 : f16
    }
    %generated = tensor.generate %c4 {
    ^bb0(%arg2: index, %arg3: index):
      %255 = arith.minsi %false, %false : i1
      %256 = arith.floordivsi %39, %39 : i16
      affine.store %cst_4, %alloc_9[%c1, %c12] : memref<5x11xf16>
      %257 = math.fma %10, %10, %10 : tensor<5xf32>
      tensor.yield %c1634351001_i64 : i64
    } : tensor<?x8xi64>
    vector.print %33 : vector<5x11xi1>
    %59 = vector.insertelement %cst, %46[%c10 : index] : vector<11xf32>
    %60 = vector.broadcast %false : i1 to vector<11x11xi1>
    %61 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %33, %33, %60 : vector<5x11xi1>, vector<5x11xi1> into vector<11x11xi1>
    %62 = tensor.empty() : tensor<5xf16>
    %mapped = linalg.map ins(%3, %3 : tensor<5xf16>, tensor<5xf16>) outs(%62 : tensor<5xf16>)
      (%in: f16, %in_45: f16) {
        %255 = index.maxu %c10, %c8
        %256 = arith.addi %false, %false : i1
        %257 = memref.alloca_scope  -> (memref<8x8xf32>) {
          %287 = math.absi %c-6292_i16 : i16
          %288 = index.sizeof
          %289 = bufferization.to_tensor %alloc_8 : memref<8x8xf16>
          %290 = arith.divf %cst_4, %cst_6 : f16
          %291 = math.absi %c1634351001_i64 : i64
          %true = index.bool.constant true
          vector.print %18 : vector<8xi16>
          %292 = arith.maxsi %c-6292_i16, %c-25010_i16 : i16
          %293 = math.expm1 %289 : tensor<8x8xf16>
          %294 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d3, d1 floordiv 4, (d1 floordiv 4) * 2)>(%c10, %c12, %44, %rank)
          %from_elements_48 = tensor.from_elements %cst_1, %cst_2, %cst_0, %cst_3, %cst_1 : tensor<5xf32>
          %295 = index.ceildivs %c11, %c6
          %296 = tensor.empty() : tensor<5x11xf16>
          %297 = math.ctpop %13 : tensor<5xi64>
          %298 = math.log %in : f16
          %299 = arith.subi %c1634351001_i64, %c1634351001_i64 : i64
          %300 = index.ceildivs %c6, %c0
          %301 = math.fma %15, %12, %12 : tensor<5x11xf32>
          %302 = math.floor %cst_0 : f32
          %303 = arith.shrsi %false, %false : i1
          %304 = index.add %44, %c9
          %305 = math.log10 %cst_4 : f16
          %306 = vector.extract_strided_slice %32 {offsets = [3], sizes = [1], strides = [1]} : vector<5x11xf32> to vector<1x11xf32>
          vector.print %18 : vector<8xi16>
          %307 = math.round %in_45 : f16
          %308 = math.ceil %12 : tensor<5x11xf32>
          %309 = arith.divf %cst_2, %cst_3 : f32
          %310 = vector.shuffle %18, %18 [2, 3, 6, 7, 11, 12, 13] : vector<8xi16>, vector<8xi16>
          %311 = arith.mulf %cst_4, %cst_5 : f16
          vector.print %306 : vector<1x11xf32>
          %312 = arith.remf %cst_2, %cst_1 : f32
          %313 = index.divu %rank, %c0
          memref.alloca_scope.return %alloc_14 : memref<8x8xf32>
        }
        %258 = arith.minf %cst_0, %cst : f32
        %259 = arith.andi %c-6292_i16, %c2968_i16 : i16
        memref.copy %alloc_7, %alloc_10 : memref<5xi16> to memref<5xi16>
        %260 = memref.atomic_rmw assign %c1015404764_i32, %alloc_23[] : (i32, memref<i32>) -> i32
        %alloc_46 = memref.alloc() : memref<11x5xf32>
        %261 = tensor.empty() : tensor<5x5xf32>
        %262 = linalg.matmul ins(%15, %alloc_46 : tensor<5x11xf32>, memref<11x5xf32>) outs(%261 : tensor<5x5xf32>) -> tensor<5x5xf32>
        %263 = bufferization.clone %alloc_12 : memref<11x5x8xf16> to memref<11x5x8xf16>
        %264 = arith.cmpi ugt, %c1015404764_i32, %c2074895787_i32 : i32
        %265 = math.round %15 : tensor<5x11xf32>
        %266 = vector.broadcast %false : i1 to vector<11x11xi1>
        %267 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %33, %33, %266 : vector<5x11xi1>, vector<5x11xi1> into vector<11x11xi1>
        %268 = math.tan %62 : tensor<5xf16>
        %269 = arith.remf %cst_3, %cst_3 : f32
        %270 = math.fma %3, %62, %62 : tensor<5xf16>
        %271 = index.maxs %c12, %c8
        %272 = arith.divui %39, %c-6292_i16 : i16
        %273 = affine.load %alloc_21[%c9, %c5] : memref<8x8xf32>
        %274 = math.absf %12 : tensor<5x11xf32>
        %275 = math.tanh %3 : tensor<5xf16>
        %276 = memref.load %263[%c7, %c0, %c7] : memref<11x5x8xf16>
        %277 = scf.while (%arg2 = %c1634351001_i64) : (i64) -> i64 {
          %287 = arith.remf %cst_3, %cst_3 : f32
          %288 = affine.load %alloc_9[%c6, %c1] : memref<5x11xf16>
          %289 = vector.broadcast %in_45 : f16 to vector<8xf16>
          %290 = vector.broadcast %false : i1 to vector<8xi1>
          %291 = vector.maskedload %alloc_8[%c6, %c4], %290, %289 : memref<8x8xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
          %292 = affine.min affine_map<(d0, d1) -> (d1 floordiv 64, d0 * 4, -4)>(%c15, %c2)
          %293 = math.exp2 %8 : tensor<5x11xf16>
          %294 = arith.minui %false, %false : i1
          %295 = arith.subi %c1634351001_i64, %arg2 : i64
          %296 = math.round %in : f16
          scf.condition(%false) %c1634351001_i64 : i64
        } do {
        ^bb0(%arg2: i64):
          %287 = affine.load %alloc_18[%c9, %c11] : memref<8x8xf32>
          %288 = arith.minf %cst_6, %cst_5 : f16
          %289 = vector.broadcast %271 : index to vector<5xindex>
          %290 = vector.broadcast %false : i1 to vector<5xi1>
          %291 = vector.broadcast %cst_4 : f16 to vector<5xf16>
          vector.scatter %alloc[%c2, %c10] [%289], %290, %291 : memref<5x11xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
          %292 = vector.transpose %46, [0] : vector<11xf32> to vector<11xf32>
          %293 = vector.broadcast %cst_1 : f32 to vector<5xf32>
          %dest_48, %accumulated_value_49 = vector.scan <mul>, %32, %293 {inclusive = true, reduction_dim = 1 : i64} : vector<5x11xf32>, vector<5xf32>
          %294 = affine.max affine_map<(d0) -> (d0 + 4, d0 + 1, (d0 + ((d0 mod 128) ceildiv 64) * 2 + 4) mod 128 + 32, ((d0 mod 128) ceildiv 64) * -2)>(%c10)
          %295 = arith.minf %cst_4, %cst_4 : f16
          %296 = arith.shrui %c2074895787_i32, %c1015404764_i32 : i32
          %297 = tensor.empty() : tensor<5x11xi32>
          %298 = math.fpowi %12, %297 : tensor<5x11xf32>, tensor<5x11xi32>
          %299 = arith.andi %c2968_i16, %39 : i16
          %300 = vector.shuffle %33, %33 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] : vector<5x11xi1>, vector<5x11xi1>
          %301 = arith.remf %in, %cst_5 : f16
          %302 = index.maxu %c1, %c2
          %303 = index.sub %302, %44
          %304 = vector.bitcast %32 : vector<5x11xf32> to vector<5x11xf32>
          %305 = vector.insertelement %cst, %46[%52 : index] : vector<11xf32>
          scf.yield %arg2 : i64
        }
        %278 = arith.negf %in : f16
        %279 = arith.floordivsi %c-25010_i16, %c-6292_i16 : i16
        %280 = arith.remf %cst, %cst_0 : f32
        %281 = math.atan2 %12, %15 : tensor<5x11xf32>
        %282 = math.roundeven %273 : f32
        %expanded = tensor.expand_shape %19 [[0, 1]] : tensor<5xi32> into tensor<5x1xi32>
        %283 = math.tan %cst_0 : f32
        %284 = math.absf %10 : tensor<5xf32>
        %285 = index.maxs %c10, %c0
        %286 = arith.maxui %39, %c-6292_i16 : i16
        %cst_47 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_47 : f16
      }
    %63 = affine.max affine_map<(d0, d1, d2) -> (-d0 + 4, d2, d2)>(%c11, %c1, %c4)
    %64 = bufferization.clone %alloc_14 : memref<8x8xf32> to memref<8x8xf32>
    %65 = math.log10 %cst_3 : f32
    %66 = index.sub %44, %c14
    %67 = math.log2 %62 : tensor<5xf16>
    %68 = index.sizeof
    %69 = scf.index_switch %66 -> memref<8x8xi1> 
    case 1 {
      %255 = math.fma %cst_4, %cst_6, %cst_4 : f16
      memref.store %c2968_i16, %alloc_19[%c4, %c1] : memref<8x8xi16>
      %256 = bufferization.clone %alloc_18 : memref<8x8xf32> to memref<8x8xf32>
      %257 = math.absf %8 : tensor<5x11xf16>
      %258 = index.add %c2, %c7
      %expanded = tensor.expand_shape %4 [[0, 1]] : tensor<5xi16> into tensor<5x1xi16>
      %259 = index.add %c8, %c9
      %260 = vector.load %alloc_17[%c0] : memref<5xi32>, vector<8x8xi32>
      %261 = math.rsqrt %10 : tensor<5xf32>
      %262 = math.fpowi %cst_5, %c1015404764_i32 : f16, i32
      memref.store %cst_1, %alloc_14[%c0, %c7] : memref<8x8xf32>
      %263 = arith.maxf %cst_1, %cst : f32
      %264 = arith.divui %c2074895787_i32, %c74252398_i32 : i32
      %expanded_45 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<5x11xf32> into tensor<5x11x1xf32>
      %265 = vector.load %alloc[%c1, %c3] : memref<5x11xf16>, vector<11x5x8xf16>
      %extracted = tensor.extract %8[%c2, %c5] : tensor<5x11xf16>
      %alloc_46 = memref.alloc() : memref<8x8xi1>
      scf.yield %alloc_46 : memref<8x8xi1>
    }
    case 2 {
      %generated_45 = tensor.generate %c2, %52 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %273 = arith.shli %39, %c-25010_i16 : i16
        %274 = vector.shuffle %33, %33 [2, 4, 6, 7] : vector<5x11xi1>, vector<5x11xi1>
        %275 = arith.andi %39, %c-25010_i16 : i16
        %276 = math.ctpop %5 : tensor<5xi1>
        tensor.yield %c74252398_i32 : i32
      } : tensor<?x?x8xi32>
      vector.print %46 : vector<11xf32>
      %255 = vector.broadcast %cst_3 : f32 to vector<8xf32>
      %256 = vector.broadcast %false : i1 to vector<8xi1>
      %257 = vector.maskedload %36[%c7, %c4], %256, %255 : memref<8x8xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
      %258 = index.add %c12, %c5
      %259 = arith.addi %c-6292_i16, %c2968_i16 : i16
      %260 = vector.bitcast %255 : vector<8xf32> to vector<8xf32>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2, %9 : tensor<11x5x8xi16>, tensor<5xi16>) outs(%2 : tensor<11x5x8xi16>) {
      ^bb0(%in: i16, %in_48: i16, %out: i16):
        %273 = vector.insert %cst_0, %46 [7] : f32 into vector<11xf32>
        %274 = math.tan %cst : f32
        %from_elements_49 = tensor.from_elements %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32 : tensor<8x8xi32>
        %expanded = tensor.expand_shape %0 [[0, 1]] : tensor<5xi32> into tensor<5x1xi32>
        %275 = vector.broadcast %cst_3 : f32 to vector<5xf32>
        %276 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %46, %32, %275 : vector<11xf32>, vector<5x11xf32> into vector<5xf32>
        %277 = vector.broadcast %false : i1 to vector<11x11xi1>
        %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %33, %33, %277 : vector<5x11xi1>, vector<5x11xi1> into vector<11x11xi1>
        %279 = arith.andi %c1015404764_i32, %c1015404764_i32 : i32
        %280 = index.ceildivu %c4, %c1
        %281 = vector.extract %46[2] : vector<11xf32>
        %282 = vector.extract %256[5] : vector<8xi1>
        %283 = math.copysign %10, %10 : tensor<5xf32>
        %284 = math.absi %57 : tensor<5xi1>
        %285 = index.add %c9, %c5
        %286 = vector.broadcast %cst_3 : f32 to vector<8x8xf32>
        %287 = vector.outerproduct %257, %260, %286 {kind = #vector.kind<mul>} : vector<8xf32>, vector<8xf32>
        %288 = affine.max affine_map<(d0, d1, d2) -> (d1, d0, d0 - d2 mod 4 - 8, -(d2 mod 4 - d2 * 2))>(%68, %c5, %280)
        %collapsed_50 = tensor.collapse_shape %1 [[0, 1]] : tensor<8x8xi16> into tensor<64xi16>
        bufferization.dealloc_tensor %17 : tensor<8x8xi64>
        %289 = arith.shrsi %c2968_i16, %out : i16
        %290 = arith.shrsi %c2074895787_i32, %c1015404764_i32 : i32
        %291 = math.cttz %11 : tensor<8x8xi32>
        %292 = math.log2 %10 : tensor<5xf32>
        %293 = arith.andi %c1015404764_i32, %c74252398_i32 : i32
        %294 = math.exp %10 : tensor<5xf32>
        %295 = math.log2 %cst_1 : f32
        %296 = arith.remf %cst_0, %cst_2 : f32
        %extracted = tensor.extract %7[%c3, %c8] : tensor<5x11xi16>
        %297 = math.round %cst_3 : f32
        %298 = arith.floordivsi %c1015404764_i32, %c2074895787_i32 : i32
        %299 = math.exp2 %cst_0 : f32
        %300 = vector.splat %cst_3 : vector<11x5x8xf32>
        %301 = vector.reduction <minui>, %256 : vector<8xi1> into i1
        %302 = math.exp %cst_0 : f32
        linalg.yield %c-6292_i16 : i16
      } -> tensor<11x5x8xi16>
      %alloc_46 = memref.alloc() : memref<5xi32>
      %262 = vector.insert %cst, %46 [0] : f32 into vector<11xf32>
      %263 = bufferization.clone %alloc_20 : memref<5xf32> to memref<5xf32>
      %264 = index.castu %c2968_i16 : i16 to index
      %265 = math.rsqrt %12 : tensor<5x11xf32>
      %266 = arith.maxsi %c1634351001_i64, %c1634351001_i64 : i64
      %267 = tensor.empty() : tensor<11x5x8xf16>
      %268 = vector.broadcast %cst_4 : f16 to vector<5x11xf16>
      %269 = vector.broadcast %c2074895787_i32 : i32 to vector<5x11xi32>
      %270 = vector.gather %267[%c2, %c6, %c11] [%269], %33, %268 : tensor<11x5x8xf16>, vector<5x11xi32>, vector<5x11xi1>, vector<5x11xf16> into vector<5x11xf16>
      %271 = index.maxu %c10, %c12
      %272 = index.add %c12, %258
      %alloc_47 = memref.alloc() : memref<8x8xi1>
      scf.yield %alloc_47 : memref<8x8xi1>
    }
    case 3 {
      %255 = index.add %66, %c14
      %256 = arith.shrui %c1015404764_i32, %c74252398_i32 : i32
      %257 = arith.andi %39, %c-6292_i16 : i16
      %258 = arith.remf %cst_1, %cst_0 : f32
      %259 = index.maxs %c7, %c11
      %inserted_45 = tensor.insert %c2968_i16 into %9[%c2] : tensor<5xi16>
      %260 = arith.minf %cst_1, %cst_3 : f32
      %261 = arith.remf %cst_4, %cst_4 : f16
      %262 = vector.insert %46, %31 [4] : vector<11xf32> into vector<5x11xf32>
      %263 = arith.maxf %cst_2, %cst : f32
      %264 = index.ceildivs %c0, %c0
      %265 = affine.load %alloc_22[%c7, %c1] : memref<8x8xi16>
      %266 = math.exp2 %62 : tensor<5xf16>
      %267 = memref.alloca_scope  -> (memref<5xi32>) {
        %270 = vector.reduction <maxsi>, %18 : vector<8xi16> into i16
        %271 = arith.maxui %c-6292_i16, %39 : i16
        %272 = vector.bitcast %31 : vector<5x11xf32> to vector<5x11xf32>
        %273 = arith.maxui %c-6292_i16, %c-6292_i16 : i16
        %274 = arith.divsi %c74252398_i32, %c1015404764_i32 : i32
        %275 = arith.muli %c2074895787_i32, %c1015404764_i32 : i32
        %276 = vector.insert %cst_3, %46 [6] : f32 into vector<11xf32>
        %277 = arith.floordivsi %c-25010_i16, %265 : i16
        %278 = math.roundeven %cst_1 : f32
        %279 = affine.min affine_map<(d0) -> ((d0 ceildiv 2) mod 16, -((d0 ceildiv 2) floordiv 8))>(%c0)
        %280 = arith.divf %cst_2, %cst : f32
        %from_elements_47 = tensor.from_elements %false, %false, %false, %false, %false : tensor<5xi1>
        %281 = vector.broadcast %false : i1 to vector<5xi1>
        %282 = vector.maskedload %alloc_15[%c0], %281, %281 : memref<5xi1>, vector<5xi1>, vector<5xi1> into vector<5xi1>
        %283 = math.powf %10, %10 : tensor<5xf32>
        %284 = math.log10 %62 : tensor<5xf16>
        %285 = index.sizeof
        %286 = math.expm1 %cst_6 : f16
        %287 = math.powf %cst_6, %cst_4 : f16
        %288 = arith.andi %c-25010_i16, %c-25010_i16 : i16
        memref.assume_alignment %alloc_16, 8 : memref<5x11xi16>
        %289 = affine.min affine_map<(d0, d1, d2) -> ((-d1 + d2) * 2 - (d1 + 16), d1 + 16, (-d1 + d2) * 2)>(%44, %c9, %c13)
        %290 = arith.divsi %c2968_i16, %c2968_i16 : i16
        %291 = index.divu %c9, %68
        affine.store %265, %alloc_16[%c0, %c1] : memref<5x11xi16>
        %292 = tensor.empty() : tensor<5xi32>
        %293 = vector.extract %32[3] : vector<5x11xf32>
        %294 = index.divu %c7, %c4
        %dest_48, %accumulated_value_49 = vector.scan <maxf>, %31, %293 {inclusive = true, reduction_dim = 0 : i64} : vector<5x11xf32>, vector<11xf32>
        %alloc_50 = memref.alloc() : memref<8x8xf16>
        memref.copy %alloc_8, %alloc_50 : memref<8x8xf16> to memref<8x8xf16>
        %295 = math.expm1 %cst_2 : f32
        %296 = math.log %8 : tensor<5x11xf16>
        %297 = arith.shrui %c2968_i16, %265 : i16
        memref.alloca_scope.return %alloc_17 : memref<5xi32>
      }
      %268 = tensor.empty() : tensor<5xi1>
      %269 = math.round %cst_3 : f32
      %alloc_46 = memref.alloc() : memref<8x8xi1>
      scf.yield %alloc_46 : memref<8x8xi1>
    }
    default {
      %255 = affine.min affine_map<(d0, d1) -> (d0, d1 - 8, d1 - 8)>(%c9, %c5)
      %256 = index.ceildivu %c12, %63
      %257 = arith.negf %cst_6 : f16
      %258 = bufferization.clone %alloc_18 : memref<8x8xf32> to memref<8x8xf32>
      %259 = arith.maxui %c2074895787_i32, %c1015404764_i32 : i32
      %260 = tensor.empty() : tensor<5xi64>
      %mapped_45 = linalg.map ins(%13, %13 : tensor<5xi64>, tensor<5xi64>) outs(%260 : tensor<5xi64>)
        (%in: i64, %in_50: i64) {
          %268 = arith.minui %c1634351001_i64, %c1634351001_i64 : i64
          %269 = index.ceildivu %c15, %c12
          %270 = vector.extract %46[4] : vector<11xf32>
          %271 = index.divu %c12, %c7
          %272 = arith.maxui %c74252398_i32, %c2074895787_i32 : i32
          %273 = affine.min affine_map<(d0, d1, d2, d3) -> (-d1, d3 - 32)>(%44, %c14, %c6, %271)
          %274 = affine.max affine_map<(d0, d1) -> (d1 - d0, d1 + d1 + 2 - 2, d1 + d1 + 2 - 2, (d0 ceildiv 8) ceildiv 128)>(%rank, %c0)
          %275 = arith.remf %cst_5, %cst_6 : f16
          %extracted = tensor.extract %20[] : tensor<i32>
          %276 = arith.remf %cst_1, %cst_0 : f32
          %277 = vector.shuffle %18, %18 [4, 5, 6, 7, 12, 14, 15] : vector<8xi16>, vector<8xi16>
          bufferization.dealloc_tensor %8 : tensor<5x11xf16>
          %278 = arith.addi %c-6292_i16, %c-6292_i16 : i16
          %collapsed_51 = tensor.collapse_shape %6 [[0, 1]] : tensor<8x8xi64> into tensor<64xi64>
          %279 = math.powf %cst_1, %cst : f32
          %280 = arith.shrui %extracted, %c1015404764_i32 : i32
          %281 = vector.insertelement %cst_3, %46[%c14 : index] : vector<11xf32>
          %282 = math.round %10 : tensor<5xf32>
          %extracted_52 = tensor.extract %9[%c1] : tensor<5xi16>
          %283 = arith.cmpi sge, %c74252398_i32, %extracted : i32
          %284 = arith.negf %cst_4 : f16
          %285 = math.cttz %14 : tensor<5x11xi16>
          %286 = vector.reduction <minf>, %46 : vector<11xf32> into f32
          %287 = math.ipowi %c1015404764_i32, %extracted : i32
          %alloc_53 = memref.alloc() : memref<8x8xi64>
          memref.tensor_store %16, %alloc_53 : memref<8x8xi64>
          %288 = index.add %66, %c2
          %289 = bufferization.clone %alloc_12 : memref<11x5x8xf16> to memref<11x5x8xf16>
          %290 = arith.muli %in, %c1634351001_i64 : i64
          %291 = math.exp2 %10 : tensor<5xf32>
          %292 = bufferization.clone %alloc_14 : memref<8x8xf32> to memref<8x8xf32>
          %inserted_54 = tensor.insert %extracted_52 into %14[%c4, %c1] : tensor<5x11xi16>
          %293 = math.log10 %62 : tensor<5xf16>
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %generated_46 = tensor.generate %c10 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %268 = memref.load %36[%c0, %c2] : memref<8x8xf32>
        %269 = index.maxs %c12, %c11
        %270 = arith.addi %c74252398_i32, %c2074895787_i32 : i32
        %cst_50 = arith.constant 1.000000e+00 : f32
        %271 = vector.transfer_read %12[%c4, %c3], %cst_50 : tensor<5x11xf32>, vector<f32>
        tensor.yield %c1634351001_i64 : i64
      } : tensor<?x5x8xi64>
      %261 = vector.matrix_multiply %46, %46 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
      %262 = scf.while (%arg2 = %alloc_13) : (memref<11x5x8xi32>) -> memref<11x5x8xi32> {
        %268 = vector.bitcast %32 : vector<5x11xf32> to vector<5x11xf32>
        %269 = arith.cmpi sge, %c1015404764_i32, %c1015404764_i32 : i32
        %270 = vector.bitcast %31 : vector<5x11xf32> to vector<5x11xf32>
        %271 = vector.splat %cst_6 : vector<8x8xf16>
        %272 = math.ipowi %0, %0 : tensor<5xi32>
        %273 = arith.cmpf ugt, %cst_5, %cst_4 : f16
        %274 = vector.broadcast %c1634351001_i64 : i64 to vector<i64>
        %275 = vector.transfer_write %274, %16[%c13, %c6] : vector<i64>, tensor<8x8xi64>
        %276 = bufferization.to_memref %2 : memref<11x5x8xi16>
        scf.condition(%false) %alloc_13 : memref<11x5x8xi32>
      } do {
      ^bb0(%arg2: memref<11x5x8xi32>):
        %extracted = tensor.extract %0[%c1] : tensor<5xi32>
        %268 = vector.matrix_multiply %46, %46 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
        %269 = arith.maxui %c1015404764_i32, %c1015404764_i32 : i32
        %270 = arith.remf %cst_5, %cst_5 : f16
        %271 = arith.cmpi ult, %39, %c-25010_i16 : i16
        %272 = affine.max affine_map<(d0) -> (d0 * 16 - d0 floordiv 4, d0 * 16 - d0 floordiv 4 + (-(d0 + 8)) floordiv 64, d0 ceildiv 4 + d0 * 16 - d0 floordiv 4 - 32, d0 ceildiv 4)>(%c9)
        %cst_50 = arith.constant 1.808000e+04 : f16
        %273 = math.tan %15 : tensor<5x11xf32>
        %274 = arith.maxui %c-6292_i16, %39 : i16
        %275 = arith.addi %c1015404764_i32, %c74252398_i32 : i32
        %276 = bufferization.to_tensor %64 : memref<8x8xf32>
        %277 = vector.create_mask %c14 : vector<5xi1>
        %cst_51 = arith.constant 1.000000e+00 : f16
        %278 = vector.transfer_read %collapsed[%63], %cst_51 : tensor<55xf16>, vector<f16>
        %expanded = tensor.expand_shape %12 [[0], [1, 2]] : tensor<5x11xf32> into tensor<5x11x1xf32>
        %extracted_52 = tensor.extract %9[%c1] : tensor<5xi16>
        %279 = arith.maxf %cst_5, %cst_5 : f16
        scf.yield %arg2 : memref<11x5x8xi32>
      }
      %263 = math.rsqrt %cst : f32
      %264 = vector.extract_strided_slice %18 {offsets = [2], sizes = [3], strides = [1]} : vector<8xi16> to vector<3xi16>
      %265 = arith.muli %c74252398_i32, %c2074895787_i32 : i32
      %from_elements_47 = tensor.from_elements %cst_1, %cst_2, %cst_1, %cst_3, %cst : tensor<5xf32>
      %266 = math.atan2 %cst_2, %cst_1 : f32
      %267 = arith.andi %false, %false : i1
      %collapsed_48 = tensor.collapse_shape %14 [[0, 1]] : tensor<5x11xi16> into tensor<55xi16>
      %alloc_49 = memref.alloc() : memref<8x8xi1>
      scf.yield %alloc_49 : memref<8x8xi1>
    }
    %70 = math.powf %cst_4, %cst_6 : f16
    %71 = arith.minsi %c2074895787_i32, %c1015404764_i32 : i32
    %72 = scf.if %false -> (i32) {
      %rank_45 = tensor.rank %9 : tensor<5xi16>
      %255 = memref.realloc %alloc_10 : memref<5xi16> to memref<11xi16>
      %256 = arith.maxui %c2074895787_i32, %c2074895787_i32 : i32
      %expanded = tensor.expand_shape %1 [[0], [1, 2]] : tensor<8x8xi16> into tensor<8x8x1xi16>
      %257 = index.sub %c13, %c1
      %258 = vector.reduction <and>, %18 : vector<8xi16> into i16
      %259 = arith.ceildivsi %c-25010_i16, %39 : i16
      %260 = math.ipowi %7, %14 : tensor<5x11xi16>
      scf.yield %c1015404764_i32 : i32
    } else {
      %255 = scf.execute_region -> i64 {
        %261 = math.fpowi %10, %0 : tensor<5xf32>, tensor<5xi32>
        %262 = index.maxs %c0, %c8
        %263 = affine.max affine_map<(d0, d1, d2) -> (d1, d2 * 2, (d1 + 64) mod 128)>(%c4, %c6, %c11)
        %264 = arith.maxui %c2074895787_i32, %c74252398_i32 : i32
        %265 = arith.mulf %cst_6, %cst_5 : f16
        %266 = arith.mulf %cst_3, %cst_3 : f32
        %267 = math.floor %62 : tensor<5xf16>
        %c0_i16 = arith.constant 0 : i16
        %268 = vector.transfer_read %7[%52, %c5], %c0_i16 : tensor<5x11xi16>, vector<5xi16>
        %269 = arith.floordivsi %c-6292_i16, %c2968_i16 : i16
        %270 = math.exp2 %cst_3 : f32
        %271 = affine.load %alloc_16[%c4, %c6] : memref<5x11xi16>
        %272 = arith.remf %cst_0, %cst : f32
        %273 = math.round %10 : tensor<5xf32>
        %274 = index.maxu %c5, %44
        %275 = index.ceildivu %c6, %66
        %276 = vector.broadcast %cst_3 : f32 to vector<5xf32>
        %dest_46, %accumulated_value_47 = vector.scan <mul>, %31, %276 {inclusive = false, reduction_dim = 1 : i64} : vector<5x11xf32>, vector<5xf32>
        scf.yield %c1634351001_i64 : i64
      }
      vector.print %18 : vector<8xi16>
      %256 = vector.transpose %46, [0] : vector<11xf32> to vector<11xf32>
      %257 = vector.broadcast %cst_1 : f32 to vector<5xf32>
      %258 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %46, %32, %257 : vector<11xf32>, vector<5x11xf32> into vector<5xf32>
      memref.copy %alloc_22, %alloc_19 : memref<8x8xi16> to memref<8x8xi16>
      %collapsed_45 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<11x5x8xi16> into tensor<55x8xi16>
      %259 = vector.create_mask %c14, %c5 : vector<8x8xi1>
      %260 = arith.minui %c1634351001_i64, %255 : i64
      scf.yield %c2074895787_i32 : i32
    }
    %73 = math.roundeven %8 : tensor<5x11xf16>
    %74 = arith.cmpf ole, %cst_5, %cst_4 : f16
    %alloca_25 = memref.alloca() : memref<5xf16>
    %alloc_26 = memref.alloc() : memref<11x5xf16>
    %75 = tensor.empty() : tensor<5x5xf16>
    %76 = linalg.matmul ins(%8, %alloc_26 : tensor<5x11xf16>, memref<11x5xf16>) outs(%75 : tensor<5x5xf16>) -> tensor<5x5xf16>
    %77 = math.log %cst_4 : f16
    memref.store %c-6292_i16, %alloc_7[%c4] : memref<5xi16>
    %78 = arith.divf %cst_1, %cst_2 : f32
    %79 = math.absi %11 : tensor<8x8xi32>
    %80 = math.ipowi %c-25010_i16, %c2968_i16 : i16
    bufferization.dealloc_tensor %5 : tensor<5xi1>
    %81 = math.exp %3 : tensor<5xf16>
    %82 = vector.shuffle %32, %32 [1, 2, 3, 4, 5, 8] : vector<5x11xf32>, vector<5x11xf32>
    %83 = index.divs %52, %c6
    %84 = math.round %10 : tensor<5xf32>
    %85 = vector.extract %33[1] : vector<5x11xi1>
    scf.index_switch %c3 
    case 1 {
      %255 = vector.broadcast %false : i1 to vector<5xi1>
      %dest_45, %accumulated_value_46 = vector.scan <xor>, %33, %255 {inclusive = true, reduction_dim = 1 : i64} : vector<5x11xi1>, vector<5xi1>
      %256 = memref.load %alloc_21[%c0, %c0] : memref<8x8xf32>
      %257 = math.ceil %75 : tensor<5x5xf16>
      memref.copy %alloc_18, %36 : memref<8x8xf32> to memref<8x8xf32>
      %258 = arith.mulf %cst_5, %cst_5 : f16
      %259 = math.absf %3 : tensor<5xf16>
      %260 = scf.execute_region -> index {
        %269 = arith.andi %c74252398_i32, %c74252398_i32 : i32
        %270 = math.sqrt %62 : tensor<5xf16>
        %271 = arith.maxf %cst_2, %cst_1 : f32
        %272 = arith.floordivsi %72, %72 : i32
        %273 = affine.min affine_map<(d0) -> ((d0 ceildiv 2 - d0 floordiv 32) * -4, d0 floordiv 32)>(%c4)
        %274 = vector.broadcast %c1015404764_i32 : i32 to vector<8xi32>
        %275 = vector.broadcast %false : i1 to vector<8xi1>
        %276 = vector.maskedload %alloc_13[%c7, %c0, %c1], %275, %274 : memref<11x5x8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
        %277 = index.add %c12, %273
        %278 = vector.insert %false, %275 [0] : i1 into vector<8xi1>
        %279 = affine.load %36[%c6, %c9] : memref<8x8xf32>
        %280 = index.ceildivu %c5, %63
        %281 = tensor.empty() : tensor<5x11xi1>
        %282 = vector.broadcast %false : i1 to vector<5xi1>
        %283 = vector.broadcast %c1015404764_i32 : i32 to vector<5xi32>
        %284 = vector.gather %281[%c3, %c12] [%283], %282, %282 : tensor<5x11xi1>, vector<5xi32>, vector<5xi1>, vector<5xi1> into vector<5xi1>
        %from_elements_47 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<8x8xi1>
        %285 = math.log2 %cst_5 : f16
        %286 = arith.divsi %c1634351001_i64, %c1634351001_i64 : i64
        %287 = math.log %3 : tensor<5xf16>
        %288 = arith.shrui %c2074895787_i32, %c1015404764_i32 : i32
        scf.yield %c8 : index
      }
      %261 = math.ipowi %13, %13 : tensor<5xi64>
      %262 = index.mul %c12, %c5
      %263 = math.fma %8, %8, %8 : tensor<5x11xf16>
      %264 = math.sqrt %cst_5 : f16
      %265 = math.roundeven %cst_4 : f16
      %266 = bufferization.clone %alloc_18 : memref<8x8xf32> to memref<8x8xf32>
      %267 = affine.for %arg2 = 0 to 79 iter_args(%arg3 = %66) -> (index) {
        affine.yield %c11 : index
      }
      %268 = arith.remf %cst_1, %cst_0 : f32
      vector.print %31 : vector<5x11xf32>
      scf.yield
    }
    case 2 {
      %255 = index.maxu %c2, %68
      %collapsed_45 = tensor.collapse_shape %17 [[0, 1]] : tensor<8x8xi64> into tensor<64xi64>
      %256 = memref.realloc %alloc_15 : memref<5xi1> to memref<8xi1>
      %c1141801295_i32 = arith.constant 1141801295 : i32
      %257 = math.powf %cst, %cst : f32
      %258 = math.absi %5 : tensor<5xi1>
      %259 = index.add %c5, %c1
      %260 = math.fma %cst, %cst_2, %cst_3 : f32
      %from_elements_46 = tensor.from_elements %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64 : tensor<8x8xi64>
      %261 = scf.while (%arg2 = %c-6292_i16) : (i16) -> i16 {
        %267 = math.powf %cst_2, %cst_3 : f32
        %from_elements_47 = tensor.from_elements %72, %c1015404764_i32, %c2074895787_i32, %72, %72, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %72, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c1015404764_i32, %72, %72, %72, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %72, %72, %c1015404764_i32, %c2074895787_i32, %72, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %72, %72, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %72, %c74252398_i32, %c1015404764_i32, %c1015404764_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %72, %c74252398_i32, %c2074895787_i32, %c74252398_i32, %72, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %72, %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %72 : tensor<8x8xi32>
        %268 = math.absf %37 : tensor<5x11xf16>
        %269 = index.ceildivs %255, %c7
        %c1104238164_i64 = arith.constant 1104238164 : i64
        %alloc_48 = memref.alloc() : memref<11x5x8xi16>
        %270 = vector.broadcast %arg2 : i16 to vector<8x8xi16>
        %271 = vector.broadcast %false : i1 to vector<8x8xi1>
        %272 = vector.broadcast %72 : i32 to vector<8x8xi32>
        %273 = vector.gather %alloc_48[%rank, %44, %83] [%272], %271, %270 : memref<11x5x8xi16>, vector<8x8xi32>, vector<8x8xi1>, vector<8x8xi16> into vector<8x8xi16>
        %274 = arith.cmpi slt, %c1634351001_i64, %c1634351001_i64 : i64
        %275 = vector.broadcast %c2968_i16 : i16 to vector<11xi16>
        %276 = vector.maskedload %alloc_10[%c1], %85, %275 : memref<5xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
        scf.condition(%false) %c2968_i16 : i16
      } do {
      ^bb0(%arg2: i16):
        %267 = index.add %52, %c15
        %268 = arith.minf %cst_4, %cst_5 : f16
        %269 = math.cttz %1 : tensor<8x8xi16>
        %270 = memref.realloc %alloc_20 : memref<5xf32> to memref<5xf32>
        %271 = arith.floordivsi %39, %c-6292_i16 : i16
        %272 = vector.bitcast %31 : vector<5x11xf32> to vector<5x11xf32>
        %273 = index.divu %259, %c15
        %274 = vector.transpose %272, [1, 0] : vector<5x11xf32> to vector<11x5xf32>
        %275 = arith.divf %cst, %cst_1 : f32
        %276 = index.ceildivu %c4, %44
        %277 = vector.extract %33[4] : vector<5x11xi1>
        %from_elements_47 = tensor.from_elements %cst_5, %cst_5, %cst_4, %cst_5, %cst_6, %cst_5, %cst_4, %cst_4, %cst_6, %cst_5, %cst_4, %cst_4, %cst_6, %cst_4, %cst_4, %cst_6, %cst_4, %cst_6, %cst_5, %cst_6, %cst_6, %cst_4, %cst_6, %cst_6, %cst_5, %cst_6, %cst_4, %cst_6, %cst_5, %cst_4, %cst_4, %cst_4, %cst_5, %cst_5, %cst_5, %cst_5, %cst_6, %cst_6, %cst_4, %cst_5, %cst_6, %cst_6, %cst_4, %cst_6, %cst_4, %cst_6, %cst_5, %cst_6, %cst_5, %cst_4, %cst_5, %cst_5, %cst_5, %cst_6, %cst_4, %cst_4, %cst_6, %cst_6, %cst_4, %cst_4, %cst_5, %cst_6, %cst_5, %cst_5, %cst_6, %cst_5, %cst_6, %cst_6, %cst_6, %cst_6, %cst_4, %cst_4, %cst_4, %cst_4, %cst_6, %cst_6, %cst_4, %cst_5, %cst_6, %cst_4, %cst_6, %cst_6, %cst_6, %cst_5, %cst_4, %cst_6, %cst_4, %cst_4, %cst_4, %cst_5, %cst_6, %cst_5, %cst_5, %cst_5, %cst_4, %cst_4, %cst_5, %cst_6, %cst_5, %cst_5, %cst_6, %cst_5, %cst_5, %cst_6, %cst_6, %cst_4, %cst_6, %cst_6, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_6, %cst_6, %cst_5, %cst_6, %cst_4, %cst_4, %cst_4, %cst_4, %cst_5, %cst_6, %cst_6, %cst_4, %cst_5, %cst_4, %cst_6, %cst_4, %cst_5, %cst_6, %cst_5, %cst_4, %cst_6, %cst_5, %cst_4, %cst_5, %cst_4, %cst_6, %cst_6, %cst_4, %cst_5, %cst_6, %cst_6, %cst_4, %cst_5, %cst_6, %cst_6, %cst_4, %cst_5, %cst_6, %cst_4, %cst_5, %cst_4, %cst_5, %cst_6, %cst_6, %cst_5, %cst_4, %cst_5, %cst_4, %cst_6, %cst_5, %cst_6, %cst_5, %cst_4, %cst_5, %cst_4, %cst_5, %cst_6, %cst_4, %cst_5, %cst_6, %cst_4, %cst_5, %cst_5, %cst_5, %cst_6, %cst_4, %cst_6, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_5, %cst_6, %cst_5, %cst_5, %cst_5, %cst_5, %cst_4, %cst_4, %cst_6, %cst_5, %cst_6, %cst_5, %cst_6, %cst_5, %cst_6, %cst_6, %cst_4, %cst_5, %cst_4, %cst_4, %cst_5, %cst_4, %cst_4, %cst_4, %cst_5, %cst_6, %cst_6, %cst_6, %cst_5, %cst_5, %cst_4, %cst_5, %cst_4, %cst_4, %cst_6, %cst_6, %cst_4, %cst_6, %cst_6, %cst_5, %cst_4, %cst_5, %cst_5, %cst_4, %cst_5, %cst_5, %cst_5, %cst_4, %cst_6, %cst_4, %cst_4, %cst_5, %cst_5, %cst_5, %cst_5, %cst_6, %cst_4, %cst_4, %cst_4, %cst_4, %cst_6, %cst_6, %cst_5, %cst_4, %cst_5, %cst_6, %cst_5, %cst_6, %cst_4, %cst_5, %cst_5, %cst_6, %cst_5, %cst_4, %cst_6, %cst_5, %cst_6, %cst_4, %cst_6, %cst_5, %cst_6, %cst_6, %cst_6, %cst_4, %cst_4, %cst_6, %cst_6, %cst_6, %cst_6, %cst_4, %cst_5, %cst_5, %cst_5, %cst_5, %cst_5, %cst_6, %cst_5, %cst_4, %cst_5, %cst_6, %cst_5, %cst_4, %cst_5, %cst_6, %cst_6, %cst_4, %cst_5, %cst_4, %cst_4, %cst_4, %cst_5, %cst_4, %cst_5, %cst_6, %cst_4, %cst_5, %cst_6, %cst_5, %cst_4, %cst_5, %cst_6, %cst_6, %cst_6, %cst_4, %cst_5, %cst_6, %cst_4, %cst_6, %cst_5, %cst_4, %cst_4, %cst_4, %cst_4, %cst_6, %cst_6, %cst_5, %cst_6, %cst_6, %cst_5, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_6, %cst_6, %cst_5, %cst_6, %cst_5, %cst_6, %cst_5, %cst_4, %cst_6, %cst_5, %cst_4, %cst_4, %cst_5, %cst_5, %cst_4, %cst_6, %cst_5, %cst_4, %cst_4, %cst_4, %cst_6, %cst_5, %cst_4, %cst_5, %cst_4, %cst_5, %cst_5, %cst_6, %cst_5, %cst_6, %cst_4, %cst_4, %cst_5, %cst_4, %cst_6, %cst_4, %cst_4, %cst_4, %cst_4, %cst_6, %cst_4, %cst_5, %cst_4, %cst_5, %cst_6, %cst_6, %cst_6, %cst_4, %cst_5, %cst_6, %cst_4, %cst_6, %cst_6, %cst_6, %cst_6, %cst_5, %cst_4, %cst_6, %cst_4, %cst_5, %cst_4, %cst_5, %cst_6, %cst_4, %cst_5, %cst_6, %cst_4, %cst_5, %cst_4, %cst_4, %cst_5, %cst_6, %cst_6, %cst_4, %cst_5, %cst_6, %cst_4, %cst_5, %cst_6, %cst_6, %cst_4, %cst_5, %cst_6, %cst_4, %cst_6, %cst_4, %cst_5, %cst_5, %cst_4, %cst_5, %cst_5, %cst_6, %cst_6, %cst_4, %cst_5, %cst_6, %cst_6, %cst_4, %cst_5, %cst_5, %cst_4, %cst_5, %cst_4, %cst_5, %cst_5, %cst_5, %cst_4 : tensor<11x5x8xf16>
        %278 = index.sizeof
        %279 = index.ceildivu %267, %66
        %280 = vector.insertelement %cst_1, %46[%c15 : index] : vector<11xf32>
        %inserted_48 = tensor.insert %c-25010_i16 into %14[%c1, %c10] : tensor<5x11xi16>
        scf.yield %c-25010_i16 : i16
      }
      %262 = arith.muli %c74252398_i32, %72 : i32
      scf.execute_region {
        %267 = arith.maxf %cst_5, %cst_4 : f16
        %c1_i32 = arith.constant 1 : i32
        %268 = vector.transfer_read %0[%c7], %c1_i32 : tensor<5xi32>, vector<i32>
        %269 = arith.remf %cst_1, %cst_3 : f32
        %270 = vector.shuffle %46, %46 [0, 2, 5, 6, 8, 11, 12, 15, 16, 17, 18, 21] : vector<11xf32>, vector<11xf32>
        %271 = memref.atomic_rmw minu %72, %alloc_17[%c2] : (i32, memref<5xi32>) -> i32
        %272 = arith.divsi %c1_i32, %c74252398_i32 : i32
        %273 = arith.cmpi sge, %72, %c1_i32 : i32
        %274 = vector.insertelement %cst_1, %46[%44 : index] : vector<11xf32>
        %expanded = tensor.expand_shape %12 [[0], [1, 2]] : tensor<5x11xf32> into tensor<5x11x1xf32>
        %275 = index.ceildivs %259, %c3
        %276 = bufferization.clone %alloc_20 : memref<5xf32> to memref<5xf32>
        %277 = vector.broadcast %c-25010_i16 : i16 to vector<8x8xi16>
        %278 = vector.outerproduct %18, %18, %277 {kind = #vector.kind<maxui>} : vector<8xi16>, vector<8xi16>
        %279 = index.divu %c12, %c11
        %280 = arith.maxui %c2968_i16, %c-6292_i16 : i16
        %281 = vector.transpose %32, [1, 0] : vector<5x11xf32> to vector<11x5xf32>
        %282 = index.ceildivu %c4, %259
        scf.yield
      }
      %263 = arith.divf %cst_0, %cst_0 : f32
      %264 = index.maxu %c12, %c9
      %265 = vector.shuffle %33, %33 [0, 1, 5, 8, 9] : vector<5x11xi1>, vector<5x11xi1>
      %266 = math.log10 %12 : tensor<5x11xf32>
      scf.yield
    }
    default {
      %255 = arith.maxf %cst_5, %cst_4 : f16
      %256 = math.absi %6 : tensor<8x8xi64>
      %257 = arith.negf %cst_2 : f32
      %258 = index.sizeof
      %259 = math.cos %3 : tensor<5xf16>
      %260 = affine.apply affine_map<(d0) -> (d0 * -8)>(%c5)
      %261 = math.floor %cst_3 : f32
      %262 = arith.negf %cst_1 : f32
      %263 = math.fma %8, %8, %37 : tensor<5x11xf16>
      %264 = vector.transpose %85, [0] : vector<11xi1> to vector<11xi1>
      %265 = index.divs %c11, %c13
      %266 = math.ipowi %7, %7 : tensor<5x11xi16>
      %267 = arith.negf %cst_1 : f32
      memref.assume_alignment %alloc_11, 16 : memref<5x11xi64>
      %268 = arith.divsi %c-6292_i16, %c-25010_i16 : i16
      %269 = vector.extract %46[10] : vector<11xf32>
    }
    %86 = index.ceildivu %c11, %c9
    %87 = index.maxu %c14, %c4
    %88 = math.roundeven %37 : tensor<5x11xf16>
    %89 = math.ceil %10 : tensor<5xf32>
    %collapsed_27 = tensor.collapse_shape %1 [[0, 1]] : tensor<8x8xi16> into tensor<64xi16>
    %90 = math.round %10 : tensor<5xf32>
    %collapsed_28 = tensor.collapse_shape %11 [[0, 1]] : tensor<8x8xi32> into tensor<64xi32>
    %91 = arith.ceildivsi %72, %c74252398_i32 : i32
    %92 = arith.maxui %c-6292_i16, %c-25010_i16 : i16
    %93 = index.sizeof
    %94 = math.ipowi %11, %11 : tensor<8x8xi32>
    %95 = arith.maxui %c2968_i16, %c-25010_i16 : i16
    %96 = bufferization.clone %alloc_10 : memref<5xi16> to memref<5xi16>
    memref.store %cst_5, %alloc[%c0, %c3] : memref<5x11xf16>
    %97 = arith.remf %cst_2, %cst_1 : f32
    %98 = arith.remf %cst, %cst_1 : f32
    %99 = arith.divf %cst_2, %cst_3 : f32
    %100 = affine.load %96[%c6] : memref<5xi16>
    %101 = math.log10 %10 : tensor<5xf32>
    %102 = arith.maxui %c2074895787_i32, %c2074895787_i32 : i32
    %103 = vector.load %64[%c5, %c4] : memref<8x8xf32>, vector<11x5x8xf32>
    %104 = arith.maxui %c2968_i16, %c-25010_i16 : i16
    %105 = vector.bitcast %85 : vector<11xi1> to vector<11xi1>
    %106 = index.sizeof
    %107 = vector.insertelement %cst_2, %46[%c6 : index] : vector<11xf32>
    %108 = vector.splat %c-6292_i16 : vector<11x5x8xi16>
    %109 = index.ceildivu %c14, %rank
    %110 = vector.insertelement %cst_3, %46[%c10 : index] : vector<11xf32>
    %111 = math.ceil %15 : tensor<5x11xf32>
    %112 = vector.extract_strided_slice %33 {offsets = [3], sizes = [1], strides = [1]} : vector<5x11xi1> to vector<1x11xi1>
    %113 = math.round %8 : tensor<5x11xf16>
    %114 = arith.negf %cst_0 : f32
    %collapsed_29 = tensor.collapse_shape %11 [[0, 1]] : tensor<8x8xi32> into tensor<64xi32>
    %115 = arith.remf %cst_0, %cst_3 : f32
    bufferization.dealloc_tensor %21 : tensor<i32>
    %116 = math.fma %10, %10, %10 : tensor<5xf32>
    %117 = arith.shrsi %false, %false : i1
    %118 = memref.atomic_rmw addf %cst_0, %alloc_20[%c1] : (f32, memref<5xf32>) -> f32
    %119 = arith.divf %cst_0, %cst_2 : f32
    scf.index_switch %87 
    case 1 {
      %255 = index.ceildivs %109, %c9
      %256 = scf.index_switch %c12 -> memref<8x8xi16> 
      case 1 {
        %from_elements_47 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<5x11xi1>
        %270 = arith.ori %c-25010_i16, %100 : i16
        %271 = index.sizeof
        %272 = arith.shrsi %72, %c2074895787_i32 : i32
        %273 = math.expm1 %62 : tensor<5xf16>
        %274 = arith.addi %c1015404764_i32, %c2074895787_i32 : i32
        %c1868588954_i64 = arith.constant 1868588954 : i64
        %275 = vector.splat %93 : vector<5x11xindex>
        %276 = math.ctlz %from_elements_47 : tensor<5x11xi1>
        %277 = math.tan %cst_4 : f16
        %278 = vector.insert %105, %33 [4] : vector<11xi1> into vector<5x11xi1>
        %279 = tensor.empty() : tensor<55xi32>
        %280 = math.fpowi %collapsed, %279 : tensor<55xf16>, tensor<55xi32>
        %281 = math.expm1 %12 : tensor<5x11xf32>
        %282 = arith.cmpi sge, %c1634351001_i64, %c1634351001_i64 : i64
        %283 = arith.addf %cst_1, %cst_0 : f32
        %284 = math.ipowi %14, %7 : tensor<5x11xi16>
        scf.yield %alloc_22 : memref<8x8xi16>
      }
      case 2 {
        %270 = vector.create_mask %52, %c7 : vector<8x8xi1>
        %271 = math.log2 %cst_0 : f32
        vector.print %46 : vector<11xf32>
        %rank_47 = tensor.rank %14 : tensor<5x11xi16>
        %272 = arith.floordivsi %c1015404764_i32, %72 : i32
        %273 = index.add %c4, %c2
        %274 = math.rsqrt %37 : tensor<5x11xf16>
        %275 = math.log2 %8 : tensor<5x11xf16>
        %276 = math.cos %62 : tensor<5xf16>
        %277 = index.sizeof
        %278 = math.sqrt %37 : tensor<5x11xf16>
        %279 = arith.divf %cst_6, %cst_5 : f16
        %280 = arith.andi %39, %c2968_i16 : i16
        %281 = math.rsqrt %cst_3 : f32
        %282 = math.ipowi %17, %6 : tensor<8x8xi64>
        %283 = arith.cmpi sge, %c1634351001_i64, %c1634351001_i64 : i64
        scf.yield %alloc_22 : memref<8x8xi16>
      }
      case 3 {
        %270 = vector.transpose %31, [0, 1] : vector<5x11xf32> to vector<5x11xf32>
        %271 = math.log %cst_2 : f32
        bufferization.dealloc_tensor %2 : tensor<11x5x8xi16>
        %272 = arith.maxui %39, %100 : i16
        %273 = memref.atomic_rmw mins %c1634351001_i64, %alloc_11[%c2, %c10] : (i64, memref<5x11xi64>) -> i64
        %274 = arith.negf %cst_3 : f32
        %cst_47 = arith.constant 0x4D146B66 : f32
        %275 = math.tanh %3 : tensor<5xf16>
        %276 = arith.divsi %100, %c-25010_i16 : i16
        %277 = index.ceildivu %c1, %c14
        %278 = math.fma %15, %12, %15 : tensor<5x11xf32>
        memref.tensor_store %57, %alloc_15 : memref<5xi1>
        %279 = vector.shuffle %18, %18 [0, 1, 3, 5, 6, 7, 8, 9, 12] : vector<8xi16>, vector<8xi16>
        %280 = vector.broadcast %cst_4 : f16 to vector<11x5x8xf16>
        %281 = vector.broadcast %false : i1 to vector<11x5x8xi1>
        %282 = vector.broadcast %72 : i32 to vector<11x5x8xi32>
        %283 = vector.gather %alloc_8[%106, %c2] [%282], %281, %280 : memref<8x8xf16>, vector<11x5x8xi32>, vector<11x5x8xi1>, vector<11x5x8xf16> into vector<11x5x8xf16>
        %284 = arith.floordivsi %c-25010_i16, %c2968_i16 : i16
        vector.print %282 : vector<11x5x8xi32>
        scf.yield %alloc_19 : memref<8x8xi16>
      }
      default {
        %270 = arith.shrsi %c2074895787_i32, %c2074895787_i32 : i32
        %271 = arith.minf %cst_2, %cst_2 : f32
        %272 = vector.extract %46[8] : vector<11xf32>
        bufferization.dealloc_tensor %collapsed : tensor<55xf16>
        memref.assume_alignment %alloc_7, 16 : memref<5xi16>
        %273 = math.log2 %cst : f32
        %extracted = tensor.extract %7[%c3, %c2] : tensor<5x11xi16>
        vector.print %105 : vector<11xi1>
        %274 = math.fma %cst_1, %cst, %cst_0 : f32
        %275 = arith.shrui %100, %c2968_i16 : i16
        %276 = arith.remf %cst_0, %cst_3 : f32
        %277 = arith.shrui %c2074895787_i32, %c2074895787_i32 : i32
        %278 = math.ipowi %1, %1 : tensor<8x8xi16>
        %279 = arith.divsi %extracted, %39 : i16
        %280 = arith.xori %c-6292_i16, %c2968_i16 : i16
        %281 = math.absf %8 : tensor<5x11xf16>
        scf.yield %alloc_19 : memref<8x8xi16>
      }
      %257 = arith.remf %cst_5, %cst_4 : f16
      %258 = arith.xori %c1015404764_i32, %72 : i32
      %259 = bufferization.clone %alloc : memref<5x11xf16> to memref<5x11xf16>
      %260 = vector.load %alloc_15[%c1] : memref<5xi1>, vector<5xi1>
      %261 = arith.maxf %cst, %cst_0 : f32
      %rank_45 = tensor.rank %12 : tensor<5x11xf32>
      %262 = math.absf %cst : f32
      %263 = vector.extract_strided_slice %103 {offsets = [5], sizes = [4], strides = [1]} : vector<11x5x8xf32> to vector<4x5x8xf32>
      %264 = arith.divsi %c2968_i16, %c2968_i16 : i16
      %265 = math.rsqrt %12 : tensor<5x11xf32>
      %alloc_46 = memref.alloc() : memref<5xf32>
      %266 = vector.broadcast %cst_0 : f32 to vector<11x11xf32>
      %267 = vector.outerproduct %46, %46, %266 {kind = #vector.kind<maxf>} : vector<11xf32>, vector<11xf32>
      %268 = arith.minsi %c1015404764_i32, %c74252398_i32 : i32
      %269 = arith.floordivsi %false, %false : i1
      scf.yield
    }
    case 2 {
      %255 = memref.load %alloc_14[%c4, %c2] : memref<8x8xf32>
      %256 = memref.atomic_rmw minu %39, %96[%c4] : (i16, memref<5xi16>) -> i16
      %from_elements_45 = tensor.from_elements %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %72, %72, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %72, %72, %72, %c74252398_i32, %c2074895787_i32, %c2074895787_i32, %72, %72, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32, %72, %72, %c2074895787_i32, %72, %c2074895787_i32, %c2074895787_i32, %c2074895787_i32, %c74252398_i32, %c2074895787_i32, %c74252398_i32, %c74252398_i32, %c74252398_i32, %c2074895787_i32, %c1015404764_i32, %c1015404764_i32, %72, %72, %c2074895787_i32, %72, %c2074895787_i32, %72, %c1015404764_i32, %72, %72, %72, %72, %72, %72, %c2074895787_i32, %c74252398_i32, %c1015404764_i32, %c74252398_i32, %c1015404764_i32, %c2074895787_i32, %c1015404764_i32 : tensor<5x11xi32>
      %257 = math.log2 %10 : tensor<5xf32>
      %258 = arith.ori %100, %39 : i16
      %259 = scf.if %false -> (memref<11x5x8xi64>) {
        %272 = vector.shuffle %33, %112 [3] : vector<5x11xi1>, vector<1x11xi1>
        %splat_46 = tensor.splat %c-6292_i16 : tensor<5x11xi16>
        %273 = math.fma %15, %12, %15 : tensor<5x11xf32>
        %274 = index.ceildivu %c6, %c5
        %275 = arith.maxui %c2074895787_i32, %c1015404764_i32 : i32
        %from_elements_47 = tensor.from_elements %c1015404764_i32, %c1015404764_i32, %c2074895787_i32, %c74252398_i32, %c1015404764_i32 : tensor<5xi32>
        %collapsed_48 = tensor.collapse_shape %splat_46 [[0, 1]] : tensor<5x11xi16> into tensor<55xi16>
        %276 = math.tan %37 : tensor<5x11xf16>
        %alloc_49 = memref.alloc() : memref<11x5x8xi64>
        scf.yield %alloc_49 : memref<11x5x8xi64>
      } else {
        %272 = vector.broadcast %c-6292_i16 : i16 to vector<8x8xi16>
        %273 = math.absi %13 : tensor<5xi64>
        %274 = arith.shrui %c1015404764_i32, %72 : i32
        %275 = index.add %68, %c1
        %276 = math.log10 %8 : tensor<5x11xf16>
        %277 = arith.minsi %c-25010_i16, %c-25010_i16 : i16
        %278 = arith.shli %72, %72 : i32
        %279 = math.log1p %10 : tensor<5xf32>
        %alloc_46 = memref.alloc() : memref<11x5x8xi64>
        scf.yield %alloc_46 : memref<11x5x8xi64>
      }
      %260 = math.log2 %8 : tensor<5x11xf16>
      %261 = arith.cmpf false, %cst_6, %cst_4 : f16
      %262 = arith.maxf %cst_3, %cst_1 : f32
      %263 = arith.maxsi %39, %100 : i16
      %264 = arith.maxui %c74252398_i32, %c2074895787_i32 : i32
      %265 = vector.broadcast %c2074895787_i32 : i32 to vector<11x5x8xi32>
      %266 = vector.broadcast %false : i1 to vector<11x5x8xi1>
      %267 = vector.gather %alloc_13[%c4, %c3, %68] [%265], %266, %265 : memref<11x5x8xi32>, vector<11x5x8xi32>, vector<11x5x8xi1>, vector<11x5x8xi32> into vector<11x5x8xi32>
      %268 = affine.load %259[%c2, %c2, %c2] : memref<11x5x8xi64>
      %269 = arith.negf %cst_3 : f32
      %270 = arith.floordivsi %39, %c2968_i16 : i16
      %271 = arith.maxf %cst_6, %cst_5 : f16
      scf.yield
    }
    case 3 {
      %255 = arith.cmpi eq, %c2074895787_i32, %72 : i32
      %256 = math.absi %c-25010_i16 : i16
      %collapsed_45 = tensor.collapse_shape %generated [[0, 1]] : tensor<?x8xi64> into tensor<?xi64>
      %257 = arith.maxf %cst, %cst : f32
      %258 = math.round %37 : tensor<5x11xf16>
      %259 = vector.extract_strided_slice %46 {offsets = [9], sizes = [1], strides = [1]} : vector<11xf32> to vector<1xf32>
      %260 = arith.xori %c-25010_i16, %c2968_i16 : i16
      %261 = math.exp %cst_5 : f16
      %262 = index.mul %106, %106
      %263 = vector.splat %cst_5 : vector<5x11xf16>
      %264 = vector.shuffle %46, %46 [2, 4, 5, 6, 7, 10, 11, 13, 14, 16, 18, 20, 21] : vector<11xf32>, vector<11xf32>
      %265 = arith.minf %cst, %cst_1 : f32
      %266 = math.fma %10, %10, %10 : tensor<5xf32>
      %extracted = tensor.extract %21[] : tensor<i32>
      %267 = math.round %cst_3 : f32
      %from_elements_46 = tensor.from_elements %c-25010_i16, %39, %c-6292_i16, %c-25010_i16, %c-25010_i16, %39, %c-25010_i16, %39, %100, %c-25010_i16, %c-25010_i16, %c-25010_i16, %c2968_i16, %c-6292_i16, %c-25010_i16, %c-6292_i16, %39, %c-25010_i16, %100, %39, %c-6292_i16, %c-25010_i16, %c-25010_i16, %c-25010_i16, %c-6292_i16, %c2968_i16, %c-25010_i16, %39, %c2968_i16, %39, %100, %c2968_i16, %100, %39, %c-6292_i16, %100, %100, %c-6292_i16, %39, %c-6292_i16, %c2968_i16, %c-25010_i16, %c-6292_i16, %100, %c2968_i16, %c-25010_i16, %c-25010_i16, %c-6292_i16, %39, %c-25010_i16, %100, %c-6292_i16, %c-25010_i16, %c2968_i16, %c-6292_i16 : tensor<5x11xi16>
      scf.yield
    }
    default {
      %255 = vector.insert %46, %31 [1] : vector<11xf32> into vector<5x11xf32>
      %256 = math.exp %collapsed : tensor<55xf16>
      %257 = tensor.empty() : tensor<5x11xi16>
      %258 = vector.broadcast %c2968_i16 : i16 to vector<11xi16>
      %259 = vector.maskedload %96[%c4], %105, %258 : memref<5xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
      %260 = arith.remui %100, %c-25010_i16 : i16
      %261 = vector.broadcast %cst_0 : f32 to vector<8x8xf32>
      %262 = vector.fma %261, %261, %261 : vector<8x8xf32>
      %263 = tensor.empty() : tensor<5xi16>
      %mapped_45 = linalg.map ins(%9, %96, %4 : tensor<5xi16>, memref<5xi16>, tensor<5xi16>) outs(%263 : tensor<5xi16>)
        (%in: i16, %in_46: i16, %in_47: i16) {
          %272 = math.tan %cst_1 : f32
          %273 = arith.addi %false, %false : i1
          %extracted = tensor.extract %5[%c1] : tensor<5xi1>
          %from_elements_48 = tensor.from_elements %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64 : tensor<8x8xi64>
          %274 = math.ctpop %4 : tensor<5xi16>
          %cst_49 = arith.constant 1.000000e+00 : f32
          %275 = vector.transfer_read %alloc_21[%c5, %87], %cst_49 : memref<8x8xf32>, vector<f32>
          %276 = arith.subi %c-6292_i16, %39 : i16
          %277 = index.add %c3, %c12
          %278 = index.maxu %93, %87
          %279 = math.cttz %72 : i32
          %280 = arith.addf %cst_5, %cst_5 : f16
          %281 = arith.divf %cst_3, %cst_0 : f32
          memref.store %cst_6, %alloc_9[%c4, %c5] : memref<5x11xf16>
          %282 = vector.extract_strided_slice %103 {offsets = [5, 0], sizes = [2, 5], strides = [1, 1]} : vector<11x5x8xf32> to vector<2x5x8xf32>
          %283 = arith.maxui %100, %c2968_i16 : i16
          %c-20205_i16 = arith.constant -20205 : i16
          %284 = arith.shrsi %c2074895787_i32, %c2074895787_i32 : i32
          %285 = math.roundeven %cst_3 : f32
          %286 = math.absi %57 : tensor<5xi1>
          %287 = arith.addi %c2074895787_i32, %72 : i32
          %288 = vector.splat %false : vector<11x5x8xi1>
          %289 = math.cttz %9 : tensor<5xi16>
          %290 = arith.shli %100, %c2968_i16 : i16
          %291 = math.ceil %62 : tensor<5xf16>
          %alloc_50 = memref.alloc() : memref<5xf16>
          memref.tensor_store %3, %alloc_50 : memref<5xf16>
          %292 = arith.divf %cst_5, %cst_4 : f16
          %alloc_51 = memref.alloc() : memref<11x8xf16>
          %293 = tensor.empty() : tensor<5x8xf16>
          %294 = linalg.matmul ins(%37, %alloc_51 : tensor<5x11xf16>, memref<11x8xf16>) outs(%293 : tensor<5x8xf16>) -> tensor<5x8xf16>
          %295 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 - (-d2 - 128), d3, d1 * 4, -d3 - d1)>(%c1, %c14, %c4, %rank)
          %296 = arith.minf %cst_3, %cst_49 : f32
          %297 = arith.ceildivsi %false, %extracted : i1
          %298 = arith.divsi %c2968_i16, %c-25010_i16 : i16
          %299 = arith.minsi %100, %c2968_i16 : i16
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %264 = vector.shuffle %32, %31 [0, 1, 2, 3, 4, 6, 7, 9] : vector<5x11xf32>, vector<5x11xf32>
      %265 = arith.shrui %c74252398_i32, %72 : i32
      %266 = vector.insertelement %false, %105[%c10 : index] : vector<11xi1>
      %267 = math.atan2 %8, %8 : tensor<5x11xf16>
      %268 = math.ipowi %collapsed_28, %collapsed_28 : tensor<64xi32>
      %269 = arith.minf %cst, %cst : f32
      scf.if %false {
        %272 = vector.insert %46, %32 [2] : vector<11xf32> into vector<5x11xf32>
        %273 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 * 4) mod 64, d0 + d3 + d0, -d2)>(%c13, %c4, %c7, %c10)
        %274 = index.casts %39 : i16 to index
        %275 = math.ceil %62 : tensor<5xf16>
        memref.copy %alloc_7, %96 : memref<5xi16> to memref<5xi16>
        %276 = vector.load %alloc_11[%c0, %c6] : memref<5x11xi64>, vector<5x11xi64>
        %277 = vector.broadcast %cst_2 : f32 to vector<5xf32>
        %278 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %46, %31, %277 : vector<11xf32>, vector<5x11xf32> into vector<5xf32>
        vector.print %105 : vector<11xi1>
      } else {
        %272 = math.ctlz %c1015404764_i32 : i32
        %extracted = tensor.extract %7[%c2, %c1] : tensor<5x11xi16>
        %273 = arith.subi %c74252398_i32, %72 : i32
        %274 = vector.matrix_multiply %85, %105 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xi1>, vector<11xi1>) -> vector<1xi1>
        %275 = index.maxu %106, %c2
        %276 = vector.extract_strided_slice %33 {offsets = [1], sizes = [4], strides = [1]} : vector<5x11xi1> to vector<4x11xi1>
        %277 = memref.load %alloc_8[%c2, %c0] : memref<8x8xf16>
        bufferization.dealloc_tensor %257 : tensor<5x11xi16>
      }
      %270 = vector.matrix_multiply %18, %258 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 11 : i32} : (vector<8xi16>, vector<11xi16>) -> vector<88xi16>
      %271 = index.maxu %52, %93
    }
    %120 = vector.load %alloc_10[%c0] : memref<5xi16>, vector<8x8xi16>
    %121 = math.cttz %7 : tensor<5x11xi16>
    %122 = arith.ori %c74252398_i32, %72 : i32
    %123 = arith.andi %c1015404764_i32, %72 : i32
    %124 = vector.bitcast %120 : vector<8x8xi16> to vector<8x8xi16>
    %125 = arith.minf %cst, %cst : f32
    affine.store %c-25010_i16, %alloc_7[%c3] : memref<5xi16>
    %126 = math.round %37 : tensor<5x11xf16>
    %127 = scf.while (%arg2 = %alloc_11) : (memref<5x11xi64>) -> memref<5x11xi64> {
      %255 = arith.ori %c2968_i16, %100 : i16
      %256 = vector.broadcast %false : i1 to vector<11x11xi1>
      %257 = vector.outerproduct %85, %105, %256 {kind = #vector.kind<maxsi>} : vector<11xi1>, vector<11xi1>
      %splat_45 = tensor.splat %c2968_i16 : tensor<5x11xi16>
      %258 = vector.broadcast %cst : f32 to vector<5xf32>
      %259 = vector.broadcast %false : i1 to vector<5xi1>
      %260 = vector.maskedload %36[%c5, %c5], %259, %258 : memref<8x8xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
      %261 = memref.realloc %alloc_7 : memref<5xi16> to memref<5xi16>
      %262 = index.sub %52, %66
      %263 = index.add %c7, %c7
      %264 = math.ipowi %0, %0 : tensor<5xi32>
      scf.condition(%false) %alloc_11 : memref<5x11xi64>
    } do {
    ^bb0(%arg2: memref<5x11xi64>):
      %255 = scf.while (%arg3 = %alloc_14) : (memref<8x8xf32>) -> memref<8x8xf32> {
        %269 = math.roundeven %cst_4 : f16
        bufferization.dealloc_tensor %collapsed_29 : tensor<64xi32>
        %270 = arith.addi %c-6292_i16, %39 : i16
        %271 = index.mul %93, %68
        %272 = arith.floordivsi %39, %c-25010_i16 : i16
        %273 = arith.muli %c-6292_i16, %100 : i16
        %274 = arith.andi %c1634351001_i64, %c1634351001_i64 : i64
        %splat_47 = tensor.splat %cst_1 : tensor<5xf32>
        scf.condition(%false) %36 : memref<8x8xf32>
      } do {
      ^bb0(%arg3: memref<8x8xf32>):
        %269 = index.sizeof
        %270 = affine.max affine_map<(d0, d1, d2, d3) -> ((d3 * 127) mod 8, -d3)>(%c13, %106, %68, %63)
        %271 = arith.divsi %100, %100 : i16
        %collapsed_47 = tensor.collapse_shape %14 [[0, 1]] : tensor<5x11xi16> into tensor<55xi16>
        %272 = math.absf %cst_1 : f32
        %273 = index.maxu %c15, %c4
        %274 = index.add %c14, %86
        %275 = vector.extract %31[1] : vector<5x11xf32>
        %splat_48 = tensor.splat %c2968_i16 : tensor<5xi16>
        %276 = affine.min affine_map<(d0) -> (d0 floordiv 16 - 32, d0 floordiv 16 - 32)>(%68)
        %277 = math.powf %cst_1, %cst_3 : f32
        %278 = math.fma %75, %75, %75 : tensor<5x5xf16>
        %279 = arith.maxui %c2968_i16, %100 : i16
        %alloc_49 = memref.alloc() : memref<5xi64>
        %280 = vector.broadcast %c1634351001_i64 : i64 to vector<5xi64>
        %281 = vector.broadcast %false : i1 to vector<5xi1>
        %282 = vector.broadcast %72 : i32 to vector<5xi32>
        %283 = vector.gather %alloc_49[%109] [%282], %281, %280 : memref<5xi64>, vector<5xi32>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %284 = index.maxu %c1, %106
        %c1478458856_i64 = arith.constant 1478458856 : i64
        scf.yield %alloc_18 : memref<8x8xf32>
      }
      %256 = arith.remui %c1015404764_i32, %c74252398_i32 : i32
      %257 = vector.transpose %46, [0] : vector<11xf32> to vector<11xf32>
      %258 = arith.divui %c-6292_i16, %c-6292_i16 : i16
      %259 = vector.broadcast %cst_1 : f32 to vector<5x8x5xf32>
      %260 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0, d1)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %103, %31, %259 : vector<11x5x8xf32>, vector<5x11xf32> into vector<5x8x5xf32>
      %261 = scf.execute_region -> f16 {
        %269 = vector.matrix_multiply %46, %46 {lhs_columns = 11 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<11xf32>, vector<11xf32>) -> vector<1xf32>
        %270 = vector.shuffle %33, %33 [1, 5, 6, 7, 8, 9] : vector<5x11xi1>, vector<5x11xi1>
        %271 = math.log %cst : f32
        %272 = math.ipowi %16, %16 : tensor<8x8xi64>
        %273 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%86, %c13, %63)
        %274 = vector.bitcast %105 : vector<11xi1> to vector<11xi1>
        memref.store %cst_4, %alloc_9[%c2, %c0] : memref<5x11xf16>
        %275 = vector.maskedload %alloc_21[%c0, %c7], %105, %46 : memref<8x8xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
        %276 = math.absf %3 : tensor<5xf16>
        %277 = vector.extract %275[4] : vector<11xf32>
        %278 = affine.min affine_map<(d0, d1) -> (d1 + 48, -d0, d1)>(%86, %c15)
        %from_elements_47 = tensor.from_elements %c-6292_i16, %100, %100, %c-6292_i16, %c2968_i16, %39, %c-25010_i16, %c2968_i16, %100, %c-6292_i16, %39, %c-25010_i16, %c-6292_i16, %c2968_i16, %39, %c-6292_i16, %100, %c2968_i16, %39, %c-25010_i16, %c-25010_i16, %c2968_i16, %c-6292_i16, %c-25010_i16, %c-25010_i16, %c2968_i16, %c-25010_i16, %100, %c-25010_i16, %c2968_i16, %c-6292_i16, %c-25010_i16, %100, %39, %39, %c2968_i16, %c2968_i16, %c-6292_i16, %39, %100, %c-25010_i16, %c-25010_i16, %39, %c2968_i16, %100, %c2968_i16, %c2968_i16, %c2968_i16, %100, %c2968_i16, %c-25010_i16, %39, %39, %100, %c-25010_i16 : tensor<5x11xi16>
        %rank_48 = tensor.rank %2 : tensor<11x5x8xi16>
        %279 = math.powf %15, %12 : tensor<5x11xf32>
        %280 = vector.broadcast %cst_1 : f32 to vector<11x11xf32>
        %281 = vector.outerproduct %46, %46, %280 {kind = #vector.kind<add>} : vector<11xf32>, vector<11xf32>
        %282 = arith.ceildivsi %39, %c-6292_i16 : i16
        scf.yield %cst_6 : f16
      }
      affine.store %c1634351001_i64, %arg2[%c3, %c14] : memref<5x11xi64>
      affine.store %c74252398_i32, %alloc_13[%c6, %c5, %c5] : memref<11x5x8xi32>
      %262 = math.rsqrt %cst : f32
      %inserted_45 = tensor.insert %false into %57[%c2] : tensor<5xi1>
      %263 = index.divs %66, %c0
      %264 = tensor.empty() : tensor<5x11xi16>
      %rank_46 = tensor.rank %57 : tensor<5xi1>
      %265 = vector.broadcast %cst_1 : f32 to vector<5x11xf32>
      %266 = vector.fma %265, %31, %31 : vector<5x11xf32>
      %267 = index.maxu %86, %263
      %268 = scf.while (%arg3 = %c-6292_i16) : (i16) -> i16 {
        %269 = math.exp %cst : f32
        %270 = memref.atomic_rmw mulf %cst_6, %alloc_8[%c0, %c1] : (f16, memref<8x8xf16>) -> f16
        %271 = index.divu %rank_46, %c0
        %272 = arith.divsi %c-25010_i16, %c-6292_i16 : i16
        %273 = index.maxu %c1, %271
        %274 = arith.minsi %false, %false : i1
        %275 = vector.insertelement %cst_1, %46[%87 : index] : vector<11xf32>
        %collapsed_47 = tensor.collapse_shape %12 [[0, 1]] : tensor<5x11xf32> into tensor<55xf32>
        scf.condition(%false) %c2968_i16 : i16
      } do {
      ^bb0(%arg3: i16):
        memref.assume_alignment %alloc_14, 8 : memref<8x8xf32>
        %269 = math.ipowi %21, %20 : tensor<i32>
        %270 = vector.insert %false, %105 [9] : i1 into vector<11xi1>
        %271 = vector.insert %46, %32 [0] : vector<11xf32> into vector<5x11xf32>
        %272 = arith.maxsi %c-6292_i16, %c-6292_i16 : i16
        %273 = math.absf %cst_1 : f32
        %false_47 = arith.constant false
        %274 = arith.divsi %c2968_i16, %c2968_i16 : i16
        %275 = math.round %12 : tensor<5x11xf32>
        %276 = arith.addi %c-25010_i16, %c2968_i16 : i16
        %277 = index.divu %c13, %86
        %278 = math.exp %cst_1 : f32
        %extracted = tensor.extract %2[%c10, %c1, %c1] : tensor<11x5x8xi16>
        %279 = vector.transpose %33, [0, 1] : vector<5x11xi1> to vector<5x11xi1>
        %280 = tensor.empty() : tensor<8x8xi16>
        %281 = linalg.matmul ins(%1, %1 : tensor<8x8xi16>, tensor<8x8xi16>) outs(%280 : tensor<8x8xi16>) -> tensor<8x8xi16>
        %282 = math.rsqrt %8 : tensor<5x11xf16>
        scf.yield %c-6292_i16 : i16
      }
      scf.yield %alloc_11 : memref<5x11xi64>
    }
    %128 = vector.create_mask %c10, %106 : vector<8x8xi1>
    %129 = arith.shli %c2968_i16, %c2968_i16 : i16
    %130 = arith.xori %false, %false : i1
    %131 = vector.broadcast %cst_2 : f32 to vector<5xf32>
    %132 = vector.fma %131, %131, %131 : vector<5xf32>
    %133 = arith.addi %false, %false : i1
    %134 = index.ceildivs %106, %rank
    %135 = math.fma %cst_2, %cst_3, %cst : f32
    %136 = index.ceildivs %c9, %c11
    %137 = arith.addi %c-6292_i16, %c2968_i16 : i16
    %138 = math.tan %3 : tensor<5xf16>
    %139 = vector.transpose %46, [0] : vector<11xf32> to vector<11xf32>
    %140 = vector.transpose %120, [1, 0] : vector<8x8xi16> to vector<8x8xi16>
    bufferization.dealloc_tensor %4 : tensor<5xi16>
    %141 = math.log2 %cst_0 : f32
    %142 = arith.shrui %100, %c2968_i16 : i16
    %143 = memref.atomic_rmw minu %c2968_i16, %alloc_19[%c4, %c7] : (i16, memref<8x8xi16>) -> i16
    %inserted = tensor.insert %c1634351001_i64 into %13[%c4] : tensor<5xi64>
    %rank_30 = tensor.rank %12 : tensor<5x11xf32>
    %144 = math.cttz %9 : tensor<5xi16>
    %generated_31 = tensor.generate %44 {
    ^bb0(%arg2: index, %arg3: index):
      %255 = index.maxs %c0, %c1
      %256 = arith.maxf %cst_0, %cst : f32
      %257 = arith.floordivsi %c-25010_i16, %39 : i16
      %258 = index.divu %c8, %c6
      tensor.yield %cst_1 : f32
    } : tensor<?x11xf32>
    %145 = math.round %12 : tensor<5x11xf32>
    %146 = arith.floordivsi %c-6292_i16, %c-6292_i16 : i16
    %from_elements = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<5x11xi1>
    %147 = affine.load %alloc_7[%c10] : memref<5xi16>
    %148 = tensor.empty() : tensor<5x11xi32>
    %149 = math.fpowi %8, %148 : tensor<5x11xf16>, tensor<5x11xi32>
    %150 = arith.shrsi %72, %c1015404764_i32 : i32
    %151 = math.floor %cst_3 : f32
    %152 = bufferization.clone %alloc_19 : memref<8x8xi16> to memref<8x8xi16>
    scf.index_switch %c5 
    case 1 {
      %255 = arith.remf %cst_2, %cst_2 : f32
      %256 = arith.divf %cst_2, %cst_0 : f32
      %generated_45 = tensor.generate %c10 {
      ^bb0(%arg2: index):
        %268 = arith.cmpi sgt, %c1015404764_i32, %72 : i32
        %269 = tensor.empty(%c10) : tensor<?x8xf32>
        %dest_48, %accumulated_value_49 = vector.scan <add>, %33, %85 {inclusive = true, reduction_dim = 0 : i64} : vector<5x11xi1>, vector<11xi1>
        %270 = memref.atomic_rmw maxf %cst_2, %alloc_18[%c7, %c5] : (f32, memref<8x8xf32>) -> f32
        tensor.yield %false : i1
      } : tensor<?xi1>
      %generated_46 = tensor.generate %c1 {
      ^bb0(%arg2: index):
        %268 = arith.shrsi %c-6292_i16, %100 : i16
        %269 = arith.cmpi sle, %c1015404764_i32, %c2074895787_i32 : i32
        %270 = arith.remui %c1015404764_i32, %72 : i32
        %271 = arith.remf %cst_1, %cst_3 : f32
        tensor.yield %cst_4 : f16
      } : tensor<?xf16>
      %257 = arith.divsi %147, %100 : i16
      %258 = arith.mulf %cst_4, %cst_4 : f16
      %259 = arith.negf %cst_6 : f16
      %260 = math.absf %10 : tensor<5xf32>
      %261 = arith.maxui %c1015404764_i32, %c74252398_i32 : i32
      %262 = arith.minf %cst_3, %cst_0 : f32
      %263 = math.floor %cst : f32
      %264 = math.fma %75, %75, %75 : tensor<5x5xf16>
      %from_elements_47 = tensor.from_elements %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64, %c1634351001_i64 : tensor<11x5x8xi64>
      %265 = math.absi %c1015404764_i32 : i32
      %266 = arith.maxui %c1634351001_i64, %c1634351001_i64 : i64
      %267 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %120, %120, %120 : vector<8x8xi16>, vector<8x8xi16> into vector<8x8xi16>
      scf.yield
    }
    case 2 {
      %255 = math.floor %12 : tensor<5x11xf32>
      memref.alloca_scope  {
        %270 = math.cttz %19 : tensor<5xi32>
        %271 = arith.shli %c1634351001_i64, %c1634351001_i64 : i64
        memref.assume_alignment %alloc_9, 8 : memref<5x11xf16>
        %272 = arith.negf %cst_5 : f16
        %273 = arith.shrsi %147, %c-25010_i16 : i16
        %274 = arith.divf %cst_1, %cst_1 : f32
        %275 = math.absf %37 : tensor<5x11xf16>
        %276 = math.round %8 : tensor<5x11xf16>
        %277 = arith.divsi %c2968_i16, %c2968_i16 : i16
        %278 = vector.transpose %105, [0] : vector<11xi1> to vector<11xi1>
        %279 = arith.andi %c-6292_i16, %c2968_i16 : i16
        %280 = math.powf %8, %8 : tensor<5x11xf16>
        %281 = vector.reduction <minf>, %131 : vector<5xf32> into f32
        %282 = arith.andi %c2968_i16, %c2968_i16 : i16
        %283 = vector.broadcast %cst_0 : f32 to vector<5x11xf32>
        %284 = vector.fma %283, %283, %31 : vector<5x11xf32>
        %splat_45 = tensor.splat %cst_2 : tensor<11x5x8xf32>
        %285 = math.copysign %3, %3 : tensor<5xf16>
        %286 = arith.cmpf uge, %cst, %cst_0 : f32
        %c364659369_i32 = arith.constant 364659369 : i32
        %287 = math.powf %8, %8 : tensor<5x11xf16>
        %288 = math.log %splat_45 : tensor<11x5x8xf32>
        %expanded = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<11x5x8xi16> into tensor<11x5x8x1xi16>
        %289 = arith.muli %100, %147 : i16
        %290 = arith.xori %false, %false : i1
        %from_elements_46 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<11x5x8xi1>
        %291 = math.cttz %5 : tensor<5xi1>
        %292 = index.divu %c0, %c15
        %collapsed_47 = tensor.collapse_shape %from_elements_46 [[0, 1], [2]] : tensor<11x5x8xi1> into tensor<55x8xi1>
        %collapsed_48 = tensor.collapse_shape %11 [[0, 1]] : tensor<8x8xi32> into tensor<64xi32>
        %293 = arith.remf %cst_0, %cst_2 : f32
        %294 = index.ceildivs %c3, %c5
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %295 = vector.transfer_read %2[%c2, %109, %rank], %c0_i16 : tensor<11x5x8xi16>, vector<i16>
      }
      %256 = affine.load %96[%c2] : memref<5xi16>
      %257 = math.tan %12 : tensor<5x11xf32>
      %258 = math.round %12 : tensor<5x11xf32>
      bufferization.dealloc_tensor %20 : tensor<i32>
      %259 = math.round %8 : tensor<5x11xf16>
      %260 = math.tanh %75 : tensor<5x5xf16>
      %261 = index.ceildivu %87, %c4
      %262 = math.round %cst_2 : f32
      %263 = vector.broadcast %cst_0 : f32 to vector<11x11xf32>
      %264 = vector.outerproduct %46, %46, %263 {kind = #vector.kind<maxf>} : vector<11xf32>, vector<11xf32>
      %265 = bufferization.clone %alloc_18 : memref<8x8xf32> to memref<8x8xf32>
      %266 = arith.maxui %72, %72 : i32
      %267 = vector.insert %c-6292_i16, %18 [2] : i16 into vector<8xi16>
      %268 = arith.subi %147, %c-6292_i16 : i16
      %269 = arith.remf %cst_1, %cst : f32
      scf.yield
    }
    default {
      %255 = arith.cmpi sgt, %c74252398_i32, %c2074895787_i32 : i32
      %256 = affine.max affine_map<(d0, d1, d2) -> (d0 * 63 + 128, 0, d0)>(%87, %136, %c1)
      %generated_45 = tensor.generate %86 {
      ^bb0(%arg2: index):
        %269 = arith.minui %c74252398_i32, %72 : i32
        %270 = math.powf %cst_6, %cst_5 : f16
        %271 = math.fma %3, %3, %3 : tensor<5xf16>
        %272 = arith.divui %c74252398_i32, %c2074895787_i32 : i32
        tensor.yield %false : i1
      } : tensor<?xi1>
      %257 = arith.subi %c-25010_i16, %39 : i16
      %258 = math.floor %12 : tensor<5x11xf32>
      %259 = math.cttz %c2074895787_i32 : i32
      %260 = arith.muli %c74252398_i32, %c2074895787_i32 : i32
      %261 = index.divu %c14, %c12
      %262 = arith.divui %72, %c74252398_i32 : i32
      %263 = arith.andi %c2074895787_i32, %72 : i32
      %generated_46 = tensor.generate %44, %c10 {
      ^bb0(%arg2: index, %arg3: index):
        %269 = arith.maxsi %c-25010_i16, %c-6292_i16 : i16
        %270 = math.roundeven %collapsed : tensor<55xf16>
        %271 = arith.muli %c2074895787_i32, %c74252398_i32 : i32
        %272 = arith.xori %72, %c2074895787_i32 : i32
        tensor.yield %cst_1 : f32
      } : tensor<?x?xf32>
      %264 = arith.subi %c-6292_i16, %39 : i16
      %265 = vector.bitcast %128 : vector<8x8xi1> to vector<8x8xi1>
      %266 = arith.subi %c1015404764_i32, %c2074895787_i32 : i32
      %splat_47 = tensor.splat %cst_6 : tensor<5x11xf16>
      %267 = tensor.empty() : tensor<55xi32>
      %268 = math.fpowi %collapsed, %267 : tensor<55xf16>, tensor<55xi32>
    }
    %153 = index.sub %c5, %86
    %154 = math.rsqrt %3 : tensor<5xf16>
    %splat = tensor.splat %100 : tensor<11x5x8xi16>
    %155 = vector.matrix_multiply %18, %18 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi16>, vector<8xi16>) -> vector<1xi16>
    %156 = tensor.empty() : tensor<11x11xf16>
    %157 = tensor.empty() : tensor<5x11xf16>
    %158 = linalg.matmul ins(%8, %156 : tensor<5x11xf16>, tensor<11x11xf16>) outs(%157 : tensor<5x11xf16>) -> tensor<5x11xf16>
    %159 = math.round %15 : tensor<5x11xf32>
    %160 = affine.load %64[%c5, %c15] : memref<8x8xf32>
    %161 = vector.broadcast %39 : i16 to vector<11xi16>
    %162 = vector.maskedload %alloc_7[%c1], %85, %161 : memref<5xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
    %163 = tensor.empty() : tensor<5xi32>
    %rank_32 = tensor.rank %0 : tensor<5xi32>
    %164 = memref.alloca_scope  -> (memref<11x5x8xf16>) {
      %255 = math.log10 %62 : tensor<5xf16>
      %256 = math.cttz %false : i1
      %257 = arith.ceildivsi %false, %false : i1
      %collapsed_45 = tensor.collapse_shape %generated_31 [[0, 1]] : tensor<?x11xf32> into tensor<?xf32>
      %alloc_46 = memref.alloc() : memref<11x8x5xi16>
      %258 = tensor.empty() : tensor<5x11x8xi16>
      %alloc_47 = memref.alloc() : memref<11x5xi16>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2, d1)>, affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46, %258, %alloc_47 : memref<11x8x5xi16>, tensor<5x11x8xi16>, memref<11x5xi16>) outs(%2 : tensor<11x5x8xi16>) {
      ^bb0(%in: i16, %in_48: i16, %in_49: i16, %out: i16):
        %286 = vector.splat %c11 : vector<5xindex>
        memref.assume_alignment %alloc_7, 8 : memref<5xi16>
        %287 = arith.remf %160, %cst_0 : f32
        %288 = arith.minf %160, %cst_2 : f32
        %289 = affine.max affine_map<(d0) -> (d0 mod 16 + 63)>(%109)
        %290 = index.ceildivu %63, %86
        %291 = math.tan %cst_3 : f32
        %292 = index.maxu %c5, %63
        %293 = arith.maxui %c1015404764_i32, %c1015404764_i32 : i32
        %cst_50 = arith.constant 3.020800e+04 : f16
        %294 = math.exp2 %cst_3 : f32
        %295 = arith.shrsi %39, %c2968_i16 : i16
        %296 = arith.divui %in_49, %out : i16
        %297 = index.maxu %52, %c15
        %collapsed_51 = tensor.collapse_shape %7 [[0, 1]] : tensor<5x11xi16> into tensor<55xi16>
        %298 = arith.cmpi slt, %in_49, %in_49 : i16
        %299 = math.tan %3 : tensor<5xf16>
        %300 = arith.maxf %cst_6, %cst_6 : f16
        %301 = arith.floordivsi %100, %c-25010_i16 : i16
        %302 = arith.maxui %in_48, %c-6292_i16 : i16
        %303 = index.maxu %93, %297
        %splat_52 = tensor.splat %c2968_i16 : tensor<5x11xi16>
        vector.print %131 : vector<5xf32>
        %304 = math.tan %15 : tensor<5x11xf32>
        %305 = affine.load %alloc_18[%c1, %c4] : memref<8x8xf32>
        %306 = math.ipowi %7, %14 : tensor<5x11xi16>
        %307 = index.ceildivs %83, %c4
        %308 = arith.xori %39, %in : i16
        %309 = index.divu %153, %153
        %310 = math.sqrt %15 : tensor<5x11xf32>
        %311 = math.ceil %collapsed : tensor<55xf16>
        %312 = arith.addf %cst_1, %cst : f32
        linalg.yield %in_48 : i16
      } -> tensor<11x5x8xi16>
      %260 = index.mul %c14, %68
      %261 = index.maxu %66, %83
      %262 = arith.floordivsi %100, %c-6292_i16 : i16
      %263 = arith.divf %cst_2, %cst : f32
      %264 = arith.floordivsi %100, %c-6292_i16 : i16
      %265 = arith.ceildivsi %c-6292_i16, %c2968_i16 : i16
      %266 = math.log10 %15 : tensor<5x11xf32>
      %267 = math.roundeven %3 : tensor<5xf16>
      %268 = arith.negf %cst_3 : f32
      %269 = vector.insertelement %false, %105[%c8 : index] : vector<11xi1>
      %270 = arith.maxui %c-6292_i16, %147 : i16
      %271 = scf.execute_region -> index {
        %286 = math.exp2 %3 : tensor<5xf16>
        bufferization.dealloc_tensor %0 : tensor<5xi32>
        %287 = math.ceil %62 : tensor<5xf16>
        %288 = math.rsqrt %160 : f32
        %289 = index.maxu %63, %c12
        %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxf>} %131, %132, %160 : vector<5xf32>, vector<5xf32> into f32
        %291 = index.sizeof
        %292 = affine.load %alloc_8[%c4, %c5] : memref<8x8xf16>
        %293 = math.absf %10 : tensor<5xf32>
        %294 = vector.insertelement %147, %155[%c2 : index] : vector<1xi16>
        %295 = bufferization.clone %36 : memref<8x8xf32> to memref<8x8xf32>
        %296 = vector.splat %c74252398_i32 : vector<5xi32>
        %297 = math.fpowi %12, %148 : tensor<5x11xf32>, tensor<5x11xi32>
        %298 = arith.maxsi %c2074895787_i32, %c1015404764_i32 : i32
        %299 = index.ceildivu %rank_32, %289
        %300 = arith.shrui %c1634351001_i64, %c1634351001_i64 : i64
        scf.yield %66 : index
      }
      %272 = arith.cmpi ne, %c74252398_i32, %c74252398_i32 : i32
      %273 = arith.negf %cst_5 : f16
      %274 = arith.remf %cst_0, %cst_1 : f32
      %275 = index.maxu %83, %87
      %276 = affine.load %alloc_19[%c12, %c5] : memref<8x8xi16>
      %277 = math.exp2 %75 : tensor<5x5xf16>
      %278 = arith.remf %cst, %160 : f32
      %279 = memref.atomic_rmw assign %c1015404764_i32, %alloc_17[%c4] : (i32, memref<5xi32>) -> i32
      %280 = math.absf %collapsed : tensor<55xf16>
      %281 = bufferization.to_memref %generated : memref<?x8xi64>
      memref.store %false, %alloc_15[%c2] : memref<5xi1>
      %282 = arith.negf %160 : f32
      %283 = arith.addi %100, %276 : i16
      %284 = arith.remf %cst_3, %160 : f32
      %285 = index.maxu %c2, %c11
      memref.alloca_scope.return %alloc_12 : memref<11x5x8xf16>
    }
    %165 = math.cttz %16 : tensor<8x8xi64>
    %166 = vector.create_mask %c1 : vector<5xi1>
    %167 = arith.shrui %c-25010_i16, %c-25010_i16 : i16
    %168 = math.log10 %10 : tensor<5xf32>
    %collapsed_33 = tensor.collapse_shape %7 [[0, 1]] : tensor<5x11xi16> into tensor<55xi16>
    %169 = vector.transpose %162, [0] : vector<11xi16> to vector<11xi16>
    %170 = arith.minui %c2074895787_i32, %c2074895787_i32 : i32
    %171 = bufferization.to_memref %5 : memref<5xi1>
    %172 = arith.maxf %cst_3, %cst_2 : f32
    %173 = vector.extract_strided_slice %112 {offsets = [0], sizes = [1], strides = [1]} : vector<1x11xi1> to vector<1x11xi1>
    %174 = arith.shli %100, %100 : i16
    %175 = index.maxu %c7, %87
    %176 = arith.addi %c2968_i16, %39 : i16
    %177 = arith.andi %c1634351001_i64, %c1634351001_i64 : i64
    %178 = math.roundeven %3 : tensor<5xf16>
    %179 = index.sizeof
    %180 = index.ceildivu %93, %c6
    %181 = arith.subi %c74252398_i32, %72 : i32
    %182 = arith.divui %c-6292_i16, %c-25010_i16 : i16
    %183 = math.absf %3 : tensor<5xf16>
    %184 = arith.xori %c-6292_i16, %c-6292_i16 : i16
    %185 = index.mul %63, %c2
    bufferization.dealloc_tensor %0 : tensor<5xi32>
    %186 = bufferization.clone %alloc_21 : memref<8x8xf32> to memref<8x8xf32>
    %187 = math.fma %10, %10, %10 : tensor<5xf32>
    vector.print %166 : vector<5xi1>
    %collapsed_34 = tensor.collapse_shape %2 [[0, 1], [2]] : tensor<11x5x8xi16> into tensor<55x8xi16>
    %188 = math.log2 %cst_5 : f16
    %189 = vector.create_mask %c2, %180, %c15 : vector<11x5x8xi1>
    %190 = math.powf %37, %8 : tensor<5x11xf16>
    %191 = math.cttz %4 : tensor<5xi16>
    %192 = vector.insertelement %false, %166[%c2 : index] : vector<5xi1>
    %generated_35 = tensor.generate %rank_32 {
    ^bb0(%arg2: index, %arg3: index):
      %255 = index.maxs %52, %c11
      %256 = index.ceildivu %44, %66
      %257 = arith.floordivsi %72, %c1015404764_i32 : i32
      bufferization.dealloc_tensor %148 : tensor<5x11xi32>
      tensor.yield %c1634351001_i64 : i64
    } : tensor<?x8xi64>
    %193 = arith.maxui %72, %c74252398_i32 : i32
    %194 = math.powf %37, %8 : tensor<5x11xf16>
    %195 = arith.maxui %false, %false : i1
    %196 = vector.shuffle %33, %33 [0, 1, 4, 5] : vector<5x11xi1>, vector<5x11xi1>
    %197 = math.round %62 : tensor<5xf16>
    %from_elements_36 = tensor.from_elements %cst_1, %cst_1, %cst_0, %cst_3, %cst_0, %cst_1, %cst_2, %cst_1, %cst, %cst_2, %cst_3, %160, %cst, %cst, %cst, %cst_3, %cst_3, %cst_0, %cst_0, %cst_3, %cst_3, %cst_0, %cst_0, %cst_0, %cst_3, %cst_2, %cst_2, %cst, %cst_0, %cst, %cst, %cst, %160, %cst, %160, %cst_0, %cst_3, %cst_3, %cst, %cst_1, %cst_3, %cst_0, %cst, %cst_0, %cst_1, %cst_1, %cst_1, %cst_3, %cst, %cst_2, %cst_2, %cst_0, %cst, %160, %cst_2, %cst_2, %cst_2, %cst_1, %cst_0, %cst, %160, %160, %160, %cst : tensor<8x8xf32>
    %198 = math.roundeven %cst_2 : f32
    %199 = vector.reduction <maxsi>, %105 : vector<11xi1> into i1
    %200 = arith.andi %c1634351001_i64, %c1634351001_i64 : i64
    %201 = math.roundeven %3 : tensor<5xf16>
    %202 = arith.remui %100, %147 : i16
    %203 = math.round %10 : tensor<5xf32>
    %204 = math.log10 %from_elements_36 : tensor<8x8xf32>
    %205 = vector.transpose %46, [0] : vector<11xf32> to vector<11xf32>
    memref.assume_alignment %alloc_8, 2 : memref<8x8xf16>
    %206 = vector.broadcast %cst_3 : f32 to vector<5xf32>
    %207 = vector.fma %206, %206, %131 : vector<5xf32>
    %208 = tensor.empty() : tensor<8x8xi64>
    %209 = math.tan %8 : tensor<5x11xf16>
    %210 = vector.insertelement %false, %166[%c11 : index] : vector<5xi1>
    %211 = math.round %10 : tensor<5xf32>
    %212 = index.add %c11, %83
    %213 = arith.remf %cst_4, %cst_5 : f16
    %214 = math.absf %cst_0 : f32
    %215 = bufferization.to_tensor %alloc_18 : memref<8x8xf32>
    %216 = affine.max affine_map<(d0) -> ((((d0 mod 128) floordiv 128) floordiv 64) floordiv 8, (((d0 mod 128) floordiv 128) floordiv 64) floordiv 8 - 32)>(%180)
    %217 = math.fma %15, %12, %15 : tensor<5x11xf32>
    %218 = arith.divf %cst, %cst_3 : f32
    %219 = arith.minui %false, %false : i1
    %220 = math.tan %8 : tensor<5x11xf16>
    %221 = index.floordivs %c8, %c14
    %dest_37, %accumulated_value_38 = vector.scan <maxui>, %112, %85 {inclusive = true, reduction_dim = 0 : i64} : vector<1x11xi1>, vector<11xi1>
    %222 = index.maxu %87, %52
    %223 = vector.create_mask %93, %c6 : vector<8x8xi1>
    %224 = index.divs %216, %136
    %225 = arith.divsi %72, %c1015404764_i32 : i32
    %226 = arith.shrui %147, %147 : i16
    memref.alloca_scope  {
      bufferization.dealloc_tensor %generated_31 : tensor<?x11xf32>
      %255 = arith.muli %c2968_i16, %147 : i16
      %256 = arith.muli %39, %c2968_i16 : i16
      %c22615_i16 = arith.constant 22615 : i16
      %257 = arith.floordivsi %72, %c74252398_i32 : i32
      %258 = arith.divf %cst_0, %160 : f32
      %generated_45 = tensor.generate %153, %c2 {
      ^bb0(%arg2: index, %arg3: index):
        %278 = arith.andi %c2968_i16, %147 : i16
        %279 = memref.load %64[%c7, %c6] : memref<8x8xf32>
        %280 = index.ceildivu %216, %179
        %rank_47 = tensor.rank %9 : tensor<5xi16>
        tensor.yield %72 : i32
      } : tensor<?x?xi32>
      %259 = math.exp2 %cst_0 : f32
      %generated_46 = tensor.generate %c6, %221 {
      ^bb0(%arg2: index, %arg3: index, %arg4: index):
        %278 = arith.shrsi %c1634351001_i64, %c1634351001_i64 : i64
        %279 = index.mul %c10, %arg2
        %280 = arith.shli %72, %c1015404764_i32 : i32
        %281 = arith.cmpi eq, %c1634351001_i64, %c1634351001_i64 : i64
        tensor.yield %false : i1
      } : tensor<?x?x8xi1>
      %260 = index.maxs %179, %c10
      %261 = arith.andi %147, %c-6292_i16 : i16
      %262 = tensor.empty(%c5) : tensor<8x?xi1>
      %263 = math.absi %0 : tensor<5xi32>
      %264 = arith.floordivsi %100, %100 : i16
      %265 = arith.shrui %72, %c1015404764_i32 : i32
      %266 = arith.muli %c74252398_i32, %72 : i32
      scf.execute_region {
        %278 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 - d0 * 65 + 2)>(%rank_32, %87, %c9, %c3)
        %279 = arith.remf %cst_2, %cst_1 : f32
        bufferization.dealloc_tensor %157 : tensor<5x11xf16>
        %280 = math.fma %collapsed, %collapsed, %collapsed : tensor<55xf16>
        %281 = affine.max affine_map<(d0) -> (0)>(%106)
        %282 = vector.load %96[%c3] : memref<5xi16>, vector<5xi16>
        %283 = arith.xori %c1015404764_i32, %72 : i32
        %284 = arith.divf %cst_2, %cst_2 : f32
        %285 = arith.divui %c1634351001_i64, %c1634351001_i64 : i64
        %286 = affine.min affine_map<(d0) -> (d0 ceildiv 2 - d0 + d0 ceildiv 2 - 1, (d0 ceildiv 2) ceildiv 128, d0 ceildiv 2 - d0 + d0 ceildiv 2, d0 ceildiv 2 - d0 + d0 ceildiv 2 - 1)>(%83)
        %287 = index.ceildivu %212, %rank_30
        %288 = bufferization.clone %alloc : memref<5x11xf16> to memref<5x11xf16>
        memref.copy %288, %alloc : memref<5x11xf16> to memref<5x11xf16>
        %289 = memref.load %alloc_20[%c3] : memref<5xf32>
        memref.tensor_store %9, %alloc_10 : memref<5xi16>
        %290 = memref.atomic_rmw maxf %cst_3, %alloc_20[%c4] : (f32, memref<5xf32>) -> f32
        scf.yield
      }
      %267 = vector.insert %cst_2, %206 [2] : f32 into vector<5xf32>
      memref.alloca_scope  {
        %278 = vector.broadcast %cst_0 : f32 to vector<5x11xf32>
        %279 = vector.fma %278, %278, %32 : vector<5x11xf32>
        vector.print %166 : vector<5xi1>
        %collapsed_47 = tensor.collapse_shape %generated_46 [[0, 1], [2]] : tensor<?x?x8xi1> into tensor<?x8xi1>
        %280 = arith.divsi %c1634351001_i64, %c1634351001_i64 : i64
        %281 = arith.cmpi ule, %147, %100 : i16
        %alloca_48 = memref.alloca() : memref<5x11xi64>
        %282 = math.tan %15 : tensor<5x11xf32>
        %283 = bufferization.to_memref %215 : memref<8x8xf32>
        %284 = vector.transpose %223, [0, 1] : vector<8x8xi1> to vector<8x8xi1>
        %285 = affine.load %alloc_20[%c11] : memref<5xf32>
        %286 = memref.load %alloc_14[%c7, %c1] : memref<8x8xf32>
        %287 = arith.negf %cst : f32
        %288 = arith.minf %285, %160 : f32
        %289 = arith.minf %cst_4, %cst_4 : f16
        %290 = arith.remf %cst_4, %cst_6 : f16
        memref.store %c1634351001_i64, %alloc_11[%c0, %c3] : memref<5x11xi64>
        %291 = index.castu %c74252398_i32 : i32 to index
        %292 = arith.negf %cst_3 : f32
        %293 = math.expm1 %15 : tensor<5x11xf32>
        %294 = affine.min affine_map<(d0, d1) -> (d1, d0 * 4, d0 * 8 - (d0 + 8))>(%c8, %106)
        %295 = index.maxs %c9, %175
        %296 = math.roundeven %collapsed : tensor<55xf16>
        %297 = vector.extract_strided_slice %223 {offsets = [5], sizes = [1], strides = [1]} : vector<8x8xi1> to vector<1x8xi1>
        %298 = math.ipowi %false, %false : i1
        %299 = vector.transpose %161, [0] : vector<11xi16> to vector<11xi16>
        %300 = math.floor %8 : tensor<5x11xf16>
        %301 = arith.floordivsi %c-6292_i16, %c-25010_i16 : i16
        %302 = arith.remf %160, %160 : f32
        %303 = bufferization.to_tensor %alloc_13 : memref<11x5x8xi32>
        %304 = index.maxu %134, %52
        %305 = math.absf %from_elements_36 : tensor<8x8xf32>
        %306 = vector.reduction <mul>, %207 : vector<5xf32> into f32
      }
      %268 = tensor.empty() : tensor<8x8xi32>
      %269 = vector.bitcast %189 : vector<11x5x8xi1> to vector<11x5x8xi1>
      %cast = tensor.cast %0 : tensor<5xi32> to tensor<?xi32>
      %270 = arith.remf %cst, %cst_1 : f32
      %271 = arith.divsi %c-6292_i16, %100 : i16
      %272 = index.maxu %52, %221
      %273 = bufferization.clone %alloc_21 : memref<8x8xf32> to memref<8x8xf32>
      %c1_i32 = arith.constant 1 : i32
      %c0_i32 = arith.constant 0 : i32
      %274 = vector.transfer_read %collapsed_29[%c9], %c0_i32 : tensor<64xi32>, vector<i32>
      %275 = bufferization.clone %alloc_12 : memref<11x5x8xf16> to memref<11x5x8xf16>
      %276 = arith.mulf %cst_2, %cst_1 : f32
      affine.store %cst_3, %alloc_18[%c15, %c9] : memref<8x8xf32>
      %277 = math.round %cst_2 : f32
      %expanded = tensor.expand_shape %4 [[0, 1]] : tensor<5xi16> into tensor<5x1xi16>
    }
    vector.print %31 : vector<5x11xf32>
    %227 = math.roundeven %12 : tensor<5x11xf32>
    %228 = vector.broadcast %100 : i16 to vector<11x11xi16>
    %229 = vector.outerproduct %162, %161, %228 {kind = #vector.kind<or>} : vector<11xi16>, vector<11xi16>
    %230 = vector.create_mask %c10, %rank, %86 : vector<11x5x8xi1>
    %231 = vector.insertelement %false, %105[%153 : index] : vector<11xi1>
    %232 = index.add %c4, %216
    %233 = affine.load %alloc_8[%c4, %c11] : memref<8x8xf16>
    %234 = arith.muli %39, %39 : i16
    %rank_39 = tensor.rank %20 : tensor<i32>
    %generated_40 = tensor.generate %86, %179 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %255 = index.maxu %216, %rank_32
      %256 = math.absf %12 : tensor<5x11xf32>
      %257 = math.fma %75, %75, %75 : tensor<5x5xf16>
      %258 = arith.divsi %c2968_i16, %147 : i16
      tensor.yield %cst_6 : f16
    } : tensor<?x?x8xf16>
    %235 = arith.cmpi ugt, %c2968_i16, %39 : i16
    %generated_41 = tensor.generate %c0 {
    ^bb0(%arg2: index):
      %c31723_i16 = arith.constant 31723 : i16
      %255 = affine.max affine_map<(d0) -> ((d0 - (d0 mod 8 + 16)) ceildiv 4, d0, (d0 - (d0 mod 8 + 16)) floordiv 4, d0 mod 8 + d0 - (d0 mod 8 + 16) + 16)>(%185)
      %256 = vector.broadcast %false : i1 to vector<5x8xi1>
      %dest_45, %accumulated_value_46 = vector.scan <xor>, %230, %256 {inclusive = true, reduction_dim = 0 : i64} : vector<11x5x8xi1>, vector<5x8xi1>
      %257 = arith.mulf %cst_1, %cst_1 : f32
      tensor.yield %false : i1
    } : tensor<?xi1>
    %236 = vector.insertelement %false, %166[%c2 : index] : vector<5xi1>
    %237 = memref.load %alloc_15[%c4] : memref<5xi1>
    %238 = arith.subi %false, %false : i1
    %239 = scf.execute_region -> f32 {
      %255 = memref.realloc %alloc_10 : memref<5xi16> to memref<11xi16>
      %256 = math.exp %37 : tensor<5x11xf16>
      %257 = vector.matrix_multiply %206, %206 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
      memref.alloca_scope  {
        %270 = arith.remf %233, %cst_4 : f16
        %271 = math.log10 %233 : f16
        %272 = index.divu %rank_32, %52
        %273 = arith.xori %39, %147 : i16
        %274 = arith.cmpi ne, %c74252398_i32, %c1015404764_i32 : i32
        %275 = arith.mulf %cst_4, %cst_5 : f16
        %276 = vector.matrix_multiply %131, %207 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
        %277 = vector.shuffle %166, %85 [0, 3, 4, 6, 8, 9, 11, 12, 14, 15] : vector<5xi1>, vector<11xi1>
        %278 = arith.cmpi ugt, %c2968_i16, %39 : i16
        %279 = arith.minsi %c1015404764_i32, %72 : i32
        %280 = index.add %c5, %c0
        %281 = affine.max affine_map<(d0, d1) -> (d1 + 16, (d0 ceildiv 64) * 8, (d1 + 16) * 4)>(%c5, %221)
        %282 = math.ipowi %72, %72 : i32
        %283 = math.floor %37 : tensor<5x11xf16>
        %284 = vector.extract_strided_slice %162 {offsets = [7], sizes = [3], strides = [1]} : vector<11xi16> to vector<3xi16>
        %285 = arith.divsi %false, %false : i1
        %286 = arith.floordivsi %c74252398_i32, %c2074895787_i32 : i32
        %true = arith.constant true
        %287 = vector.transfer_read %171[%c9], %true : memref<5xi1>, vector<i1>
        %288 = vector.broadcast %cst_0 : f32 to vector<11x5x8xf32>
        %289 = vector.fma %288, %288, %288 : vector<11x5x8xf32>
        %290 = math.roundeven %cst_5 : f16
        %291 = math.ctpop %6 : tensor<8x8xi64>
        %292 = index.maxs %272, %179
        %293 = index.maxs %c1, %134
        %294 = arith.shrsi %c1634351001_i64, %c1634351001_i64 : i64
        %295 = arith.remf %cst_4, %cst_6 : f16
        %296 = math.ipowi %0, %19 : tensor<5xi32>
        %297 = arith.cmpi ule, %100, %c-25010_i16 : i16
        %298 = index.divu %44, %272
        %299 = vector.broadcast %false : i1 to vector<11x8xi1>
        %dest_46, %accumulated_value_47 = vector.scan <xor>, %230, %299 {inclusive = false, reduction_dim = 1 : i64} : vector<11x5x8xi1>, vector<11x8xi1>
        %300 = vector.broadcast %cst_1 : f32 to vector<5xf32>
        %301 = vector.fma %300, %132, %300 : vector<5xf32>
        vector.print %32 : vector<5x11xf32>
        %302 = arith.muli %c1634351001_i64, %c1634351001_i64 : i64
      }
      %258 = math.rsqrt %10 : tensor<5xf32>
      %259 = arith.shrui %c74252398_i32, %c1015404764_i32 : i32
      %260 = math.log2 %12 : tensor<5x11xf32>
      %261 = bufferization.clone %alloc_14 : memref<8x8xf32> to memref<8x8xf32>
      %262 = math.log10 %233 : f16
      %263 = arith.addf %cst_1, %160 : f32
      %264 = vector.insertelement %c-25010_i16, %161[%rank : index] : vector<11xi16>
      %265 = arith.cmpf ole, %160, %cst : f32
      %266 = memref.realloc %alloc_20 : memref<5xf32> to memref<5xf32>
      %267 = math.floor %collapsed : tensor<55xf16>
      %268 = tensor.empty() : tensor<5x11xi16>
      %mapped_45 = linalg.map ins(%14 : tensor<5x11xi16>) outs(%268 : tensor<5x11xi16>)
        (%in: i16) {
          %dest_46, %accumulated_value_47 = vector.scan <xor>, %33, %166 {inclusive = false, reduction_dim = 1 : i64} : vector<5x11xi1>, vector<5xi1>
          %270 = math.fma %collapsed, %collapsed, %collapsed : tensor<55xf16>
          %271 = vector.create_mask %179 : vector<5xi1>
          %272 = memref.atomic_rmw muli %in, %alloc_7[%c3] : (i16, memref<5xi16>) -> i16
          %273 = math.powf %3, %3 : tensor<5xf16>
          %274 = arith.floordivsi %39, %147 : i16
          %275 = arith.minf %cst_4, %233 : f16
          %276 = arith.floordivsi %c74252398_i32, %c1015404764_i32 : i32
          %277 = vector.create_mask %c8 : vector<5xi1>
          %278 = index.sub %c7, %68
          %279 = arith.floordivsi %147, %c-25010_i16 : i16
          %dest_48, %accumulated_value_49 = vector.scan <minui>, %173, %105 {inclusive = false, reduction_dim = 0 : i64} : vector<1x11xi1>, vector<11xi1>
          %280 = arith.muli %in, %c-25010_i16 : i16
          %281 = arith.maxui %c74252398_i32, %c2074895787_i32 : i32
          %splat_50 = tensor.splat %c-25010_i16 : tensor<5xi16>
          %282 = math.floor %10 : tensor<5xf32>
          %283 = tensor.empty(%c3) : tensor<?xi64>
          %284 = math.absi %splat_50 : tensor<5xi16>
          %285 = math.exp %12 : tensor<5x11xf32>
          %286 = index.add %c13, %c15
          %287 = index.divs %224, %c15
          %288 = index.maxu %c6, %287
          %289 = math.expm1 %collapsed : tensor<55xf16>
          %290 = arith.negf %cst_5 : f16
          %291 = affine.load %alloc_16[%c13, %c6] : memref<5x11xi16>
          %292 = vector.extract_strided_slice %31 {offsets = [0], sizes = [5], strides = [1]} : vector<5x11xf32> to vector<5x11xf32>
          %293 = vector.extract %85[6] : vector<11xi1>
          %alloc_51 = memref.alloc() : memref<11x5x8xi16>
          memref.tensor_store %splat, %alloc_51 : memref<11x5x8xi16>
          %294 = math.fma %157, %8, %8 : tensor<5x11xf16>
          %295 = vector.insertelement %false, %277[%44 : index] : vector<5xi1>
          %296 = index.maxs %175, %rank
          %297 = index.maxu %c14, %c10
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %269 = math.fma %160, %cst_1, %160 : f32
      scf.yield %cst : f32
    }
    %240 = tensor.empty() : tensor<5xi16>
    %rank_42 = tensor.rank %9 : tensor<5xi16>
    %241 = arith.shrui %72, %72 : i32
    %242 = math.rsqrt %cst : f32
    %243 = vector.create_mask %222, %109, %c3 : vector<11x5x8xi1>
    %244 = math.absf %15 : tensor<5x11xf32>
    %collapsed_43 = tensor.collapse_shape %from_elements [[0, 1]] : tensor<5x11xi1> into tensor<55xi1>
    %245 = vector.bitcast %112 : vector<1x11xi1> to vector<1x11xi1>
    %246 = math.roundeven %75 : tensor<5x5xf16>
    %247 = memref.realloc %alloc_7 : memref<5xi16> to memref<11xi16>
    %248 = index.maxu %c1, %222
    %249 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %31, %132, %46 : vector<5x11xf32>, vector<5xf32> into vector<11xf32>
    %250 = tensor.empty() : tensor<5xf16>
    %251 = tensor.empty() : tensor<i32>
    %252 = linalg.copy ins(%21 : tensor<i32>) outs(%251 : tensor<i32>) -> tensor<i32>
    %alloc_44 = memref.alloc(%c14) : memref<?xi1>
    linalg.transpose ins(%generated_41 : tensor<?xi1>) outs(%alloc_44 : memref<?xi1>) permutation = [0] 
    %253 = tensor.empty() : tensor<8xf32>
    %reduced = linalg.reduce ins(%36 : memref<8x8xf32>) outs(%253 : tensor<8xf32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %255 = affine.load %alloc_12[%c2, %c9, %c2] : memref<11x5x8xf16>
        vector.print %173 : vector<1x11xi1>
        %256 = vector.insertelement %100, %161[%c5 : index] : vector<11xi16>
        %257 = index.ceildivs %c5, %87
        %258 = index.sizeof
        %259 = arith.xori %100, %147 : i16
        memref.assume_alignment %96, 1 : memref<5xi16>
        %collapsed_45 = tensor.collapse_shape %14 [[0, 1]] : tensor<5x11xi16> into tensor<55xi16>
        %cst_46 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_46 : f32
      }
    scf.parallel (%arg2) = (%153) to (%106) step (%c12) {
      %255 = tensor.empty() : tensor<5xi32>
      %256 = tensor.empty() : tensor<8x8xi64>
      %257 = math.log10 %10 : tensor<5xf32>
      %258 = arith.remsi %c1015404764_i32, %c2074895787_i32 : i32
      %259 = index.add %66, %c14
      %260 = tensor.empty() : tensor<8x8xf16>
      %261 = vector.broadcast %160 : f32 to vector<5x11xf32>
      %262 = vector.fma %261, %32, %261 : vector<5x11xf32>
      %263 = memref.alloca_scope  -> (memref<11x5x8xf16>) {
        %273 = vector.bitcast %85 : vector<11xi1> to vector<11xi1>
        %274 = index.add %179, %44
        %275 = vector.broadcast %cst_0 : f32 to vector<8x8xf32>
        %276 = vector.fma %275, %275, %275 : vector<8x8xf32>
        %277 = arith.minsi %39, %39 : i16
        %278 = math.round %cst_6 : f16
        %279 = affine.max affine_map<(d0, d1, d2) -> (d0 * 64, (d1 floordiv 128) floordiv 16 - 8, -(d2 - d1) + 1, d2 floordiv 32 + 4)>(%c14, %c7, %66)
        %280 = index.ceildivu %134, %212
        %281 = index.maxu %c2, %52
        %dest_46, %accumulated_value_47 = vector.scan <mul>, %262, %46 {inclusive = false, reduction_dim = 0 : i64} : vector<5x11xf32>, vector<11xf32>
        %282 = math.round %62 : tensor<5xf16>
        %283 = math.round %239 : f32
        %284 = affine.min affine_map<(d0) -> (d0, (d0 - 2) floordiv 64)>(%180)
        %285 = math.tan %253 : tensor<8xf32>
        %286 = vector.broadcast %false : i1 to vector<8xi1>
        %287 = vector.maskedload %alloc_10[%c0], %286, %18 : memref<5xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
        %288 = vector.flat_transpose %131 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
        %289 = vector.broadcast %false : i1 to vector<11x11xi1>
        %290 = vector.outerproduct %85, %85, %289 {kind = #vector.kind<maxsi>} : vector<11xi1>, vector<11xi1>
        %291 = arith.divf %239, %cst_0 : f32
        %292 = arith.shli %c-25010_i16, %39 : i16
        %293 = memref.realloc %alloc_17 : memref<5xi32> to memref<11xi32>
        %cst_48 = arith.constant 1.000000e+00 : f32
        %cst_49 = arith.constant 0.000000e+00 : f32
        %294 = vector.transfer_read %215[%106, %224], %cst_49 : tensor<8x8xf32>, vector<f32>
        %c155962856_i64 = arith.constant 155962856 : i64
        %295 = math.round %cst_6 : f16
        %296 = math.fma %10, %10, %10 : tensor<5xf32>
        %297 = arith.andi %72, %72 : i32
        %298 = arith.divsi %100, %147 : i16
        %299 = arith.andi %c2074895787_i32, %c1015404764_i32 : i32
        %300 = arith.minf %cst_48, %cst_2 : f32
        %301 = vector.extract %207[4] : vector<5xf32>
        %302 = arith.addf %233, %cst_5 : f16
        %303 = vector.extract_strided_slice %32 {offsets = [0], sizes = [3], strides = [1]} : vector<5x11xf32> to vector<3x11xf32>
        %rank_50 = tensor.rank %2 : tensor<11x5x8xi16>
        %304 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, (d1 ceildiv 128) floordiv 16, d0 * 2, (d1 ceildiv 128) floordiv 4)>(%c15, %52, %259, %c8)
        memref.alloca_scope.return %alloc_12 : memref<11x5x8xf16>
      }
      %264 = index.ceildivu %68, %179
      %265 = vector.broadcast %cst : f32 to vector<11x5x8xf32>
      %266 = vector.fma %265, %265, %103 : vector<11x5x8xf32>
      %267 = affine.max affine_map<(d0, d1) -> ((d0 * 31) ceildiv 128 - d0, d0 * 31, d1)>(%rank_42, %106)
      %268 = vector.broadcast %160 : f32 to vector<5xf32>
      %269 = vector.fma %268, %206, %207 : vector<5xf32>
      %270 = arith.cmpi sgt, %c74252398_i32, %c1015404764_i32 : i32
      %rank_45 = tensor.rank %collapsed_34 : tensor<55x8xi16>
      %271 = index.castu %false : i1 to index
      %272 = arith.divf %cst_4, %cst_4 : f16
      scf.yield
    }
    %254 = affine.vector_load %alloc_20[%136] : memref<5xf32>, vector<11xf32>
    affine.vector_store %162, %alloc_16[%c11, %136] : memref<5x11xi16>, vector<11xi16>
    vector.print %18 : vector<8xi16>
    vector.print %31 : vector<5x11xf32>
    vector.print %32 : vector<5x11xf32>
    vector.print %33 : vector<5x11xi1>
    vector.print %46 : vector<11xf32>
    vector.print %85 : vector<11xi1>
    vector.print %103 : vector<11x5x8xf32>
    vector.print %105 : vector<11xi1>
    vector.print %112 : vector<1x11xi1>
    vector.print %120 : vector<8x8xi16>
    vector.print %124 : vector<8x8xi16>
    vector.print %128 : vector<8x8xi1>
    vector.print %131 : vector<5xf32>
    vector.print %132 : vector<5xf32>
    vector.print %155 : vector<1xi16>
    vector.print %161 : vector<11xi16>
    vector.print %162 : vector<11xi16>
    vector.print %166 : vector<5xi1>
    vector.print %173 : vector<1x11xi1>
    vector.print %189 : vector<11x5x8xi1>
    vector.print %206 : vector<5xf32>
    vector.print %207 : vector<5xf32>
    vector.print %223 : vector<8x8xi1>
    vector.print %230 : vector<11x5x8xi1>
    vector.print %243 : vector<11x5x8xi1>
    vector.print %245 : vector<1x11xi1>
    vector.print %254 : vector<11xf32>
    vector.print %c74252398_i32 : i32
    vector.print %cst : f32
    vector.print %false : i1
    vector.print %cst_0 : f32
    vector.print %c-6292_i16 : i16
    vector.print %cst_1 : f32
    vector.print %cst_2 : f32
    vector.print %c-25010_i16 : i16
    vector.print %cst_3 : f32
    vector.print %cst_4 : f16
    vector.print %c2074895787_i32 : i32
    vector.print %c1015404764_i32 : i32
    vector.print %c1634351001_i64 : i64
    vector.print %cst_5 : f16
    vector.print %cst_6 : f16
    vector.print %c2968_i16 : i16
    vector.print %39 : i16
    vector.print %72 : i32
    vector.print %100 : i16
    vector.print %147 : i16
    vector.print %160 : f32
    vector.print %233 : f16
    vector.print %239 : f32
    return %68 : index
  }
}
