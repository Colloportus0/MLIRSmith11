module {
  func.func @func1(%arg0: i64, %arg1: index) {
    %false = arith.constant false
    %cst = arith.constant 2.08245466E+9 : f32
    %c1126433994_i32 = arith.constant 1126433994 : i32
    %cst_0 = arith.constant 6.054400e+04 : f16
    %cst_1 = arith.constant 1.63782106E+9 : f32
    %cst_2 = arith.constant 4.841600e+04 : f16
    %false_3 = arith.constant false
    %c-6178_i16 = arith.constant -6178 : i16
    %cst_4 = arith.constant 0x4E6686FB : f32
    %false_5 = arith.constant false
    %c994058116_i64 = arith.constant 994058116 : i64
    %c299138035_i64 = arith.constant 299138035 : i64
    %cst_6 = arith.constant 2.468800e+04 : f16
    %c1314739036_i64 = arith.constant 1314739036 : i64
    %true = arith.constant true
    %c605225388_i32 = arith.constant 605225388 : i32
    %0 = tensor.empty() : tensor<5x5x10xi32>
    %1 = tensor.empty() : tensor<5x5x10xi1>
    %2 = tensor.empty() : tensor<10xf32>
    %3 = tensor.empty() : tensor<5x5x10xi1>
    %4 = tensor.empty() : tensor<5x11x10xi32>
    %5 = tensor.empty() : tensor<5x11x10xi16>
    %6 = tensor.empty() : tensor<5x11x10xi16>
    %7 = tensor.empty() : tensor<10xi1>
    %8 = tensor.empty() : tensor<15xi32>
    %9 = tensor.empty() : tensor<5x11x10xi32>
    %10 = tensor.empty() : tensor<10xi32>
    %11 = tensor.empty() : tensor<5x11x10xf16>
    %12 = tensor.empty() : tensor<5x5x10xf16>
    %13 = tensor.empty() : tensor<15xf16>
    %14 = tensor.empty() : tensor<5x5x10xi32>
    %15 = tensor.empty() : tensor<5x5x10xi32>
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
    %alloc = memref.alloc() : memref<5x5x10xf32>
    %alloc_7 = memref.alloc() : memref<15xf16>
    %alloc_8 = memref.alloc() : memref<5x5x10xi16>
    %alloc_9 = memref.alloc() : memref<15xi32>
    %alloc_10 = memref.alloc() : memref<15xi16>
    %alloc_11 = memref.alloc() : memref<5x11x10xf32>
    %alloc_12 = memref.alloc() : memref<10xi32>
    %alloc_13 = memref.alloc() : memref<5x5x10xf32>
    %alloc_14 = memref.alloc() : memref<15xf32>
    %alloc_15 = memref.alloc() : memref<10xi16>
    %alloc_16 = memref.alloc() : memref<10xi64>
    %alloc_17 = memref.alloc() : memref<15xf16>
    %alloc_18 = memref.alloc() : memref<10xf16>
    %alloc_19 = memref.alloc() : memref<15xi1>
    %alloc_20 = memref.alloc() : memref<10xi32>
    %alloc_21 = memref.alloc() : memref<15xf16>
    %16 = tensor.empty() : tensor<5x5x10xi32>
    %17 = linalg.copy ins(%15 : tensor<5x5x10xi32>) outs(%16 : tensor<5x5x10xi32>) -> tensor<5x5x10xi32>
    %18 = tensor.empty() : tensor<10x5x5xi1>
    %transposed = linalg.transpose ins(%3 : tensor<5x5x10xi1>) outs(%18 : tensor<10x5x5xi1>) permutation = [2, 0, 1] 
    %alloc_22 = memref.alloc() : memref<i1>
    linalg.reduce ins(%7 : tensor<10xi1>) outs(%alloc_22 : memref<i1>) dimensions = [0] 
      (%in: i1, %init: i1) {
        %255 = math.tanh %cst_6 : f16
        bufferization.dealloc_tensor %3 : tensor<5x5x10xi1>
        %256 = affine.load %alloc[%c3, %c0, %c1] : memref<5x5x10xf32>
        %257 = arith.andi %c1126433994_i32, %c1126433994_i32 : i32
        %258 = vector.create_mask %c12 : vector<15xi1>
        %cst_52 = arith.constant 1.000000e+00 : f32
        %259 = vector.transfer_read %alloc_13[%c1, %c3, %c10], %cst_52 : memref<5x5x10xf32>, vector<10xf32>
        %260 = arith.andi %c1126433994_i32, %c1126433994_i32 : i32
        %261 = arith.shrui %c1126433994_i32, %c605225388_i32 : i32
        %false_53 = arith.constant false
        linalg.yield %false_53 : i1
      }
    scf.parallel (%arg2) = (%c15) to (%c7) step (%c1) {
      %255 = index.divu %c0, %c5
      %256 = index.divs %c13, %c12
      %257 = math.rsqrt %cst_4 : f32
      %258 = math.powf %13, %13 : tensor<15xf16>
      %259 = tensor.empty(%c10) : tensor<?xi64>
      %260 = arith.andi %false_3, %false_5 : i1
      %extracted = tensor.extract %1[%c3, %c3, %c4] : tensor<5x5x10xi1>
      %261 = index.casts %c12 : index to i32
      bufferization.dealloc_tensor %0 : tensor<5x5x10xi32>
      %262 = vector.broadcast %false : i1 to vector<5x5x10xi1>
      %263 = index.casts %c1314739036_i64 : i64 to index
      %264 = memref.realloc %alloc_9 : memref<15xi32> to memref<15xi32>
      %265 = vector.broadcast %false_3 : i1 to vector<5x10x5x10xi1>
      %266 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %262, %262, %265 : vector<5x5x10xi1>, vector<5x5x10xi1> into vector<5x10x5x10xi1>
      %267 = bufferization.to_tensor %alloc_10 : memref<15xi16>
      %268 = arith.cmpf oge, %cst_6, %cst_6 : f16
      %269 = index.ceildivu %c12, %c13
      scf.yield
    }
    %19 = affine.vector_load %alloc_22[] : memref<i1>, vector<5xi1>
    affine.vector_store %19, %alloc_19[%c2] : memref<15xi1>, vector<5xi1>
    %20 = tensor.empty() : tensor<15xf16>
    %21 = tensor.empty() : tensor<f16>
    %22 = linalg.dot ins(%alloc_17, %20 : memref<15xf16>, tensor<15xf16>) outs(%21 : tensor<f16>) -> tensor<f16>
    %23 = arith.minsi %c1314739036_i64, %c1314739036_i64 : i64
    %c14859_i16 = arith.constant 14859 : i16
    %24 = vector.reduction <minui>, %19 : vector<5xi1> into i1
    %25 = arith.divsi %false_5, %false_3 : i1
    %cst_23 = arith.constant 1.000000e+00 : f32
    %26 = vector.transfer_read %alloc_14[%c7], %cst_23 : memref<15xf32>, vector<f32>
    %27 = math.ipowi %c299138035_i64, %c299138035_i64 : i64
    %28 = vector.shuffle %19, %19 [0, 1, 2, 7, 8, 9] : vector<5xi1>, vector<5xi1>
    %29 = arith.remsi %c1126433994_i32, %c1126433994_i32 : i32
    %30 = math.sqrt %cst_4 : f32
    %31 = math.tan %13 : tensor<15xf16>
    %32 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<5xi1> to vector<1xi1>
    %33 = math.log2 %11 : tensor<5x11x10xf16>
    %34 = math.powf %13, %13 : tensor<15xf16>
    %35 = vector.transpose %32, [0] : vector<1xi1> to vector<1xi1>
    %36 = index.divu %c1, %c2
    %cast = tensor.cast %12 : tensor<5x5x10xf16> to tensor<?x?x?xf16>
    %alloc_24 = memref.alloc() : memref<5x11x10xi16>
    memref.tensor_store %5, %alloc_24 : memref<5x11x10xi16>
    %37 = math.ceil %21 : tensor<f16>
    %38 = arith.remf %cst_1, %cst_4 : f32
    %rank = tensor.rank %13 : tensor<15xf16>
    %39 = affine.if affine_set<(d0) : ((d0 ceildiv 128 - d0) ceildiv 2 == 0, d0 ceildiv 128 - (d0 ceildiv 128) ceildiv 64 >= 0, 0 >= 0, ((d0 ceildiv 128) ceildiv 64) ceildiv 128 == 0)>(%c15) -> memref<15xf32> {
      %c0_i32_52 = arith.constant 0 : i32
      %c0_i32_53 = arith.constant 0 : i32
      %255 = vector.transfer_read %15[%c0, %c0, %36], %c0_i32_53 : tensor<5x5x10xi32>, vector<i32>
      scf.index_switch %c7 
      case 1 {
        %inserted_54 = tensor.insert %true into %1[%c4, %c1, %c0] : tensor<5x5x10xi1>
        %c1_i32 = arith.constant 1 : i32
        %261 = vector.transfer_read %15[%c1, %c5, %rank], %c1_i32 : tensor<5x5x10xi32>, vector<i32>
        %rank_55 = tensor.rank %15 : tensor<5x5x10xi32>
        %262 = bufferization.to_tensor %alloc_7 : memref<15xf16>
        %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %19, %false_3 : vector<5xi1>, vector<5xi1> into i1
        %expanded = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<5x5x10xi32> into tensor<5x5x10x1xi32>
        %264 = vector.splat %c1126433994_i32 : vector<10xi32>
        %265 = math.exp2 %13 : tensor<15xf16>
        %266 = arith.minsi %c299138035_i64, %c994058116_i64 : i64
        %267 = memref.atomic_rmw assign %cst_6, %alloc_17[%c0] : (f16, memref<15xf16>) -> f16
        %268 = index.sizeof
        %269 = math.cttz %true : i1
        %270 = vector.create_mask %c4, %c1, %c14 : vector<5x5x10xi1>
        %271 = math.log2 %13 : tensor<15xf16>
        %272 = arith.andi %c605225388_i32, %c1_i32 : i32
        %273 = vector.transpose %32, [0] : vector<1xi1> to vector<1xi1>
        scf.yield
      }
      case 2 {
        %261 = math.atan2 %20, %20 : tensor<15xf16>
        %true_54 = index.bool.constant true
        %262 = arith.andi %false_3, %false : i1
        %263 = arith.remui %true, %false_3 : i1
        %264 = arith.floordivsi %c0_i32_52, %c1126433994_i32 : i32
        %265 = math.cttz %false_3 : i1
        %266 = index.castu %c0_i32_52 : i32 to index
        %267 = bufferization.to_tensor %alloc_7 : memref<15xf16>
        %268 = arith.cmpf true, %cst_2, %cst_6 : f16
        %inserted_55 = tensor.insert %cst_0 into %12[%c1, %c4, %c4] : tensor<5x5x10xf16>
        %expanded = tensor.expand_shape %267 [[0, 1]] : tensor<15xf16> into tensor<15x1xf16>
        %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %19, %19, %false : vector<5xi1>, vector<5xi1> into i1
        %270 = index.maxs %c1, %c2
        %271 = index.divs %c11, %c15
        bufferization.dealloc_tensor %12 : tensor<5x5x10xf16>
        %alloc_56 = memref.alloc() : memref<5x5x10xf16>
        scf.yield
      }
      case 3 {
        %261 = vector.create_mask %c2 : vector<15xi1>
        %262 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 128)>(%c13, %c0, %c0, %c7)
        %263 = arith.cmpf ole, %cst, %cst_1 : f32
        %264 = arith.cmpi ugt, %false_5, %false_5 : i1
        %265 = arith.remui %c299138035_i64, %c994058116_i64 : i64
        %266 = math.sqrt %13 : tensor<15xf16>
        %267 = index.casts %c1126433994_i32 : i32 to index
        %268 = math.sqrt %cst_0 : f16
        %269 = math.powf %2, %2 : tensor<10xf32>
        %270 = arith.remf %cst_0, %cst_2 : f16
        memref.assume_alignment %alloc, 2 : memref<5x5x10xf32>
        %c1407835551_i64 = arith.constant 1407835551 : i64
        %271 = arith.cmpf false, %cst_1, %cst_23 : f32
        %272 = memref.atomic_rmw ori %c-6178_i16, %alloc_15[%c0] : (i16, memref<10xi16>) -> i16
        %273 = math.floor %cst_2 : f16
        %274 = arith.remsi %c0_i32_52, %c1126433994_i32 : i32
        scf.yield
      }
      case 4 {
        %261 = affine.max affine_map<(d0, d1) -> ((-(d0 mod 8)) mod 16, (-d1) floordiv 4, d0 mod 8)>(%c5, %36)
        %262 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %32, %32, %true : vector<1xi1>, vector<1xi1> into i1
        %263 = index.floordivs %c14, %c7
        %264 = math.powf %cst_23, %cst_23 : f32
        %265 = math.ctpop %9 : tensor<5x11x10xi32>
        %266 = vector.transpose %19, [0] : vector<5xi1> to vector<5xi1>
        %267 = memref.atomic_rmw mins %c1314739036_i64, %alloc_16[%c5] : (i64, memref<10xi64>) -> i64
        %268 = vector.broadcast %c605225388_i32 : i32 to vector<5xi32>
        %269 = vector.maskedload %alloc_12[%c9], %19, %268 : memref<10xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
        %270 = vector.bitcast %32 : vector<1xi1> to vector<1xi1>
        %271 = math.sqrt %11 : tensor<5x11x10xf16>
        %272 = math.exp2 %cst_2 : f16
        %273 = index.maxs %c6, %c7
        %274 = math.log10 %13 : tensor<15xf16>
        %275 = affine.min affine_map<(d0) -> ((d0 * 2 + 64) mod 128 - ((d0 * 2) floordiv 16 + 4), d0)>(%c10)
        %276 = vector.broadcast %c14 : index to vector<10xindex>
        %277 = vector.broadcast %false : i1 to vector<10xi1>
        vector.scatter %alloc_19[%c3] [%276], %277, %277 : memref<15xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
        %278 = arith.minsi %false_5, %true : i1
        scf.yield
      }
      default {
        %261 = vector.transpose %19, [0] : vector<5xi1> to vector<5xi1>
        %262 = math.round %cst_4 : f32
        %263 = vector.transpose %32, [0] : vector<1xi1> to vector<1xi1>
        %264 = arith.shli %c994058116_i64, %c1314739036_i64 : i64
        %265 = math.atan2 %cst_6, %cst_6 : f16
        %266 = index.maxu %c10, %c6
        %267 = math.ctlz %4 : tensor<5x11x10xi32>
        %268 = index.add %c14, %c6
        memref.copy %alloc_21, %alloc_7 : memref<15xf16> to memref<15xf16>
        %269 = arith.ceildivsi %c-6178_i16, %c-6178_i16 : i16
        %270 = bufferization.to_tensor %alloc_14 : memref<15xf32>
        %cast_54 = tensor.cast %3 : tensor<5x5x10xi1> to tensor<?x?x?xi1>
        %271 = math.exp2 %cst_23 : f32
        %272 = index.floordivs %c11, %c14
        %273 = index.maxs %c5, %c8
        %274 = arith.minsi %false, %false_5 : i1
      }
      %extracted = tensor.extract %18[%c8, %c2, %c2] : tensor<10x5x5xi1>
      %256 = arith.maxui %c299138035_i64, %c994058116_i64 : i64
      %257 = index.maxu %c1, %c3
      %258 = index.floordivs %c9, %rank
      %259 = vector.insertelement %extracted, %32[%36 : index] : vector<1xi1>
      %260 = arith.addi %c605225388_i32, %c0_i32_52 : i32
      affine.yield %alloc_14 : memref<15xf32>
    } else {
      %255 = math.roundeven %12 : tensor<5x5x10xf16>
      %256 = index.sub %c13, %c3
      %257 = arith.remf %cst, %cst : f32
      %258 = vector.create_mask %c13, %c15, %c15 : vector<5x11x10xi1>
      %259 = vector.broadcast %false : i1 to vector<10xi1>
      %260 = math.cttz %8 : tensor<15xi32>
      %261 = math.log2 %cst_4 : f32
      %262 = index.sub %c8, %c12
      affine.yield %alloc_14 : memref<15xf32>
    }
    %40 = index.sizeof
    %41 = arith.andi %c605225388_i32, %c1126433994_i32 : i32
    %42 = math.cttz %15 : tensor<5x5x10xi32>
    %alloc_25 = memref.alloc() : memref<5x5x10xi16>
    memref.copy %alloc_8, %alloc_25 : memref<5x5x10xi16> to memref<5x5x10xi16>
    %43 = arith.floordivsi %c-6178_i16, %c-6178_i16 : i16
    %44 = math.ceil %12 : tensor<5x5x10xf16>
    %45 = tensor.empty() : tensor<5x5x10xi16>
    %mapped = linalg.map ins(%alloc_8, %alloc_8 : memref<5x5x10xi16>, memref<5x5x10xi16>) outs(%45 : tensor<5x5x10xi16>)
      (%in: i16, %in_52: i16) {
        %255 = arith.maxui %false, %false_3 : i1
        %256 = arith.remui %c1314739036_i64, %c299138035_i64 : i64
        %257 = arith.xori %true, %false_5 : i1
        %from_elements_53 = tensor.from_elements %c994058116_i64, %c1314739036_i64, %c1314739036_i64, %c299138035_i64, %c994058116_i64, %c1314739036_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c994058116_i64, %c1314739036_i64, %c1314739036_i64, %c994058116_i64, %c994058116_i64, %c1314739036_i64, %c1314739036_i64, %c1314739036_i64, %c1314739036_i64, %c994058116_i64, %c1314739036_i64, %c1314739036_i64, %c994058116_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c1314739036_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c299138035_i64, %c299138035_i64, %c299138035_i64, %c994058116_i64, %c994058116_i64, %c994058116_i64, %c1314739036_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c299138035_i64, %c1314739036_i64, %c994058116_i64, %c299138035_i64, %c299138035_i64, %c1314739036_i64, %c299138035_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c299138035_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c994058116_i64, %c1314739036_i64, %c994058116_i64, %c1314739036_i64, %c299138035_i64, %c1314739036_i64, %c299138035_i64, %c1314739036_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c994058116_i64, %c1314739036_i64, %c994058116_i64, %c1314739036_i64, %c994058116_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c1314739036_i64, %c994058116_i64, %c1314739036_i64, %c994058116_i64, %c994058116_i64, %c994058116_i64, %c994058116_i64, %c1314739036_i64, %c299138035_i64, %c994058116_i64, %c994058116_i64, %c994058116_i64, %c994058116_i64, %c1314739036_i64, %c994058116_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c299138035_i64, %c1314739036_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c299138035_i64, %c1314739036_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c1314739036_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c994058116_i64, %c1314739036_i64, %c994058116_i64, %c299138035_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c994058116_i64, %c994058116_i64, %c1314739036_i64, %c299138035_i64, %c299138035_i64, %c994058116_i64, %c1314739036_i64, %c994058116_i64, %c1314739036_i64, %c1314739036_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c1314739036_i64, %c299138035_i64, %c1314739036_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c994058116_i64, %c1314739036_i64, %c299138035_i64, %c299138035_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c299138035_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c299138035_i64, %c994058116_i64, %c994058116_i64, %c1314739036_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c994058116_i64, %c994058116_i64, %c299138035_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c299138035_i64, %c994058116_i64, %c1314739036_i64, %c1314739036_i64, %c994058116_i64, %c1314739036_i64, %c1314739036_i64, %c1314739036_i64, %c1314739036_i64, %c994058116_i64, %c1314739036_i64, %c299138035_i64, %c299138035_i64, %c1314739036_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c1314739036_i64, %c299138035_i64, %c299138035_i64, %c1314739036_i64, %c299138035_i64, %c299138035_i64, %c299138035_i64, %c1314739036_i64, %c299138035_i64, %c299138035_i64, %c994058116_i64, %c1314739036_i64, %c1314739036_i64, %c994058116_i64, %c994058116_i64, %c994058116_i64, %c299138035_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c299138035_i64, %c299138035_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c299138035_i64, %c299138035_i64, %c299138035_i64, %c299138035_i64, %c1314739036_i64, %c299138035_i64, %c1314739036_i64, %c299138035_i64, %c994058116_i64, %c299138035_i64, %c994058116_i64, %c994058116_i64, %c994058116_i64, %c994058116_i64, %c1314739036_i64, %c1314739036_i64, %c299138035_i64, %c1314739036_i64, %c1314739036_i64, %c994058116_i64, %c299138035_i64, %c1314739036_i64, %c994058116_i64, %c994058116_i64 : tensor<5x5x10xi64>
        memref.assume_alignment %alloc_9, 1 : memref<15xi32>
        %258 = bufferization.to_memref %22 : memref<f16>
        %alloc_54 = memref.alloc() : memref<11xi32>
        %259 = tensor.empty() : tensor<5x10xi32>
        %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_54, %259, %9 : memref<11xi32>, tensor<5x10xi32>, tensor<5x11x10xi32>) outs(%9 : tensor<5x11x10xi32>) {
        ^bb0(%in_60: i32, %in_61: i32, %in_62: i32, %out: i32):
          %282 = arith.addi %c299138035_i64, %c1314739036_i64 : i64
          %283 = index.castu %c605225388_i32 : i32 to index
          %284 = vector.bitcast %32 : vector<1xi1> to vector<1xi1>
          %285 = index.sub %283, %36
          %286 = index.sizeof
          %287 = math.log1p %11 : tensor<5x11x10xf16>
          bufferization.dealloc_tensor %14 : tensor<5x5x10xi32>
          %288 = arith.andi %out, %in_62 : i32
          %289 = math.log2 %2 : tensor<10xf32>
          %290 = index.maxu %285, %rank
          %291 = math.tan %21 : tensor<f16>
          %292 = memref.load %alloc_22[] : memref<i1>
          %293 = vector.transpose %19, [0] : vector<5xi1> to vector<5xi1>
          %294 = math.log10 %11 : tensor<5x11x10xf16>
          bufferization.dealloc_tensor %12 : tensor<5x5x10xf16>
          %295 = arith.muli %c1314739036_i64, %c994058116_i64 : i64
          %296 = math.log2 %11 : tensor<5x11x10xf16>
          %297 = math.fma %cst_6, %cst_6, %cst_0 : f16
          %298 = arith.remui %in_62, %in_62 : i32
          %alloc_63 = memref.alloc() : memref<5x5xf32>
          %alloc_64 = memref.alloc() : memref<5x15xf32>
          %299 = tensor.empty() : tensor<5x15xf32>
          %300 = linalg.matmul ins(%alloc_63, %alloc_64 : memref<5x5xf32>, memref<5x15xf32>) outs(%299 : tensor<5x15xf32>) -> tensor<5x15xf32>
          %301 = index.add %c9, %36
          %302 = arith.cmpf uno, %cst_0, %cst_2 : f16
          %303 = math.round %cst_6 : f16
          %alloc_65 = memref.alloc() : memref<5x11x10xi1>
          %304 = arith.shli %out, %out : i32
          %305 = math.log %22 : tensor<f16>
          %306 = index.ceildivu %c15, %c3
          %307 = arith.remf %cst_4, %cst : f32
          %308 = vector.bitcast %19 : vector<5xi1> to vector<5xi1>
          %309 = arith.remf %cst_23, %cst_23 : f32
          %310 = vector.shuffle %284, %308 [1, 3, 5] : vector<1xi1>, vector<5xi1>
          %311 = math.tanh %cst : f32
          linalg.yield %in_62 : i32
        } -> tensor<5x11x10xi32>
        %261 = arith.shli %true, %false_3 : i1
        %splat_55 = tensor.splat %cst_1 : tensor<10xf32>
        affine.store %c1126433994_i32, %alloc_9[%c13] : memref<15xi32>
        %262 = index.sub %c0, %c13
        %c111036616_i64 = arith.constant 111036616 : i64
        %263 = math.exp2 %12 : tensor<5x5x10xf16>
        %264 = index.sizeof
        %265 = vector.shuffle %19, %19 [0, 5, 6, 9] : vector<5xi1>, vector<5xi1>
        %266 = arith.addi %in, %in : i16
        %267 = index.maxu %c11, %c2
        %rank_56 = tensor.rank %18 : tensor<10x5x5xi1>
        %268 = arith.shrsi %false, %false_5 : i1
        %269 = vector.shuffle %32, %19 [0, 1, 2, 3, 4, 5] : vector<1xi1>, vector<5xi1>
        %270 = math.floor %12 : tensor<5x5x10xf16>
        %271 = vector.broadcast %true : i1 to vector<15xi1>
        %272 = vector.splat %true : vector<5x11x10xi1>
        %273 = vector.extract %32[0] : vector<1xi1>
        %274 = index.casts %c299138035_i64 : i64 to index
        %275 = arith.divsi %true, %false_3 : i1
        %276 = vector.broadcast %c605225388_i32 : i32 to vector<11x11xi32>
        %277 = vector.broadcast %c1126433994_i32 : i32 to vector<11xi32>
        %dest_57, %accumulated_value_58 = vector.scan <mul>, %276, %277 {inclusive = false, reduction_dim = 0 : i64} : vector<11x11xi32>, vector<11xi32>
        %rank_59 = tensor.rank %11 : tensor<5x11x10xf16>
        %278 = math.floor %cst_23 : f32
        %279 = memref.atomic_rmw andi %in_52, %alloc_15[%c0] : (i16, memref<10xi16>) -> i16
        %280 = arith.minf %cst_2, %cst_6 : f16
        %281 = arith.negf %cst_23 : f32
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %46 = index.casts %c1126433994_i32 : i32 to index
    %47 = arith.negf %cst_0 : f16
    %48 = vector.create_mask %c0, %c12, %c7 : vector<5x11x10xi1>
    %49 = arith.cmpi ugt, %false_3, %false_5 : i1
    %50 = index.add %36, %c7
    %51 = vector.insertelement %false_5, %19[%c4 : index] : vector<5xi1>
    %cst_26 = arith.constant 6.297600e+04 : f16
    memref.tensor_store %20, %alloc_7 : memref<15xf16>
    %52 = math.sqrt %cst_1 : f32
    %53 = vector.broadcast %true : i1 to vector<11x10xi1>
    %54 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %48, %19, %53 : vector<5x11x10xi1>, vector<5xi1> into vector<11x10xi1>
    %55 = math.log %13 : tensor<15xf16>
    %56 = math.copysign %cst, %cst : f32
    %57 = vector.extract %32[0] : vector<1xi1>
    %splat = tensor.splat %cst_2 : tensor<5x5x10xf16>
    %alloc_27 = memref.alloc() : memref<f16>
    memref.tensor_store %22, %alloc_27 : memref<f16>
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_28 = arith.constant 0 : i32
    %58 = vector.transfer_read %15[%46, %c12, %50], %c0_i32_28 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<5x5x10xi32>, vector<5xi32>
    %59 = math.ceil %21 : tensor<f16>
    %60 = index.mul %c8, %c13
    %61 = math.expm1 %cst_1 : f32
    %62 = math.rsqrt %11 : tensor<5x11x10xf16>
    %63 = arith.remsi %c1314739036_i64, %c299138035_i64 : i64
    %64 = index.maxu %c11, %36
    %65 = math.absf %splat : tensor<5x5x10xf16>
    %66 = vector.create_mask %c12 : vector<10xi1>
    memref.store %cst_1, %alloc_13[%c1, %c0, %c2] : memref<5x5x10xf32>
    %67 = vector.extract %48[1] : vector<5x11x10xi1>
    %68 = vector.create_mask %c7 : vector<10xi1>
    memref.alloca_scope  {
      %255 = arith.muli %c1126433994_i32, %c605225388_i32 : i32
      %256 = index.mul %c10, %40
      %257 = bufferization.to_tensor %alloc_21 : memref<15xf16>
      %258 = index.sizeof
      %259 = tensor.empty() : tensor<15xf16>
      %mapped_52 = linalg.map ins(%13 : tensor<15xf16>) outs(%259 : tensor<15xf16>)
        (%in: f16) {
          %285 = math.absf %11 : tensor<5x11x10xf16>
          %286 = arith.remf %cst_0, %cst_6 : f16
          %287 = math.log1p %2 : tensor<10xf32>
          %288 = bufferization.to_tensor %alloc_12 : memref<10xi32>
          %289 = vector.extract %66[6] : vector<10xi1>
          %290 = index.casts %40 : index to i32
          %291 = math.roundeven %13 : tensor<15xf16>
          %c-8885_i16 = arith.constant -8885 : i16
          %292 = arith.maxf %cst_4, %cst_23 : f32
          %cast_55 = tensor.cast %13 : tensor<15xf16> to tensor<?xf16>
          memref.assume_alignment %alloc_7, 1 : memref<15xf16>
          %293 = math.sqrt %22 : tensor<f16>
          %294 = arith.shli %c-6178_i16, %c-6178_i16 : i16
          %295 = math.sqrt %2 : tensor<10xf32>
          %296 = math.floor %13 : tensor<15xf16>
          %297 = memref.atomic_rmw mulf %cst_4, %alloc_13[%c1, %c1, %c9] : (f32, memref<5x5x10xf32>) -> f32
          %298 = index.add %46, %c8
          %299 = index.casts %c8 : index to i32
          %300 = affine.max affine_map<(d0) -> ((d0 floordiv 64) mod 8, d0 + 9)>(%rank)
          %301 = arith.divui %false, %false_5 : i1
          %302 = arith.maxui %c1126433994_i32, %c1126433994_i32 : i32
          %303 = index.add %36, %256
          %304 = vector.bitcast %48 : vector<5x11x10xi1> to vector<5x11x10xi1>
          %305 = vector.broadcast %cst_1 : f32 to vector<5x11x10xf32>
          %306 = vector.create_mask %c6, %c4, %40 : vector<5x5x10xi1>
          %307 = arith.andi %false_5, %false_3 : i1
          %308 = math.tanh %cst : f32
          %309 = index.casts %c1126433994_i32 : i32 to index
          %310 = math.exp2 %12 : tensor<5x5x10xf16>
          %311 = vector.matrix_multiply %32, %66 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xi1>, vector<10xi1>) -> vector<10xi1>
          %312 = vector.create_mask %c15, %60, %300 : vector<5x5x10xi1>
          %313 = arith.cmpf false, %cst_6, %cst_2 : f16
          %cst_56 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_56 : f16
        }
      %260 = arith.divui %c0_i32, %c1126433994_i32 : i32
      scf.index_switch %c14 
      case 1 {
        %285 = index.divs %c9, %46
        %286 = bufferization.to_tensor %alloc : memref<5x5x10xf32>
        %287 = vector.splat %c1126433994_i32 : vector<5x11x10xi32>
        %288 = index.sizeof
        %289 = arith.ceildivsi %c1314739036_i64, %c299138035_i64 : i64
        %290 = arith.addi %false, %true : i1
        %291 = index.add %c12, %256
        %292 = index.divu %291, %c10
        %293 = vector.extract_strided_slice %19 {offsets = [2], sizes = [2], strides = [1]} : vector<5xi1> to vector<2xi1>
        %294 = vector.transpose %67, [1, 0] : vector<11x10xi1> to vector<10x11xi1>
        %295 = memref.atomic_rmw mins %c-6178_i16, %alloc_8[%c0, %c3, %c2] : (i16, memref<5x5x10xi16>) -> i16
        %296 = arith.muli %c1126433994_i32, %c605225388_i32 : i32
        %297 = vector.broadcast %false_3 : i1 to vector<11xi1>
        %298 = vector.multi_reduction <maxsi>, %67, %297 [1] : vector<11x10xi1> to vector<11xi1>
        %299 = vector.multi_reduction <minui>, %48, %19 [1, 2] : vector<5x11x10xi1> to vector<5xi1>
        %cst_55 = arith.constant 0x4E574301 : f32
        %300 = math.fpowi %13, %8 : tensor<15xf16>, tensor<15xi32>
        scf.yield
      }
      case 2 {
        %285 = arith.cmpf une, %cst_1, %cst_4 : f32
        %286 = arith.divsi %c1126433994_i32, %c605225388_i32 : i32
        %287 = affine.load %alloc_15[%c3] : memref<10xi16>
        %288 = index.maxu %c9, %c12
        %rank_55 = tensor.rank %21 : tensor<f16>
        %289 = arith.remf %cst_1, %cst_4 : f32
        %290 = vector.broadcast %false_3 : i1 to vector<15xi1>
        %291 = vector.maskedload %alloc_19[%c7], %290, %290 : memref<15xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
        %292 = math.cos %cst_2 : f16
        %293 = vector.shuffle %66, %291 [0, 1, 3, 4, 5, 8, 10, 12, 15, 17, 23, 24] : vector<10xi1>, vector<15xi1>
        %294 = math.exp2 %cst_2 : f16
        %alloc_56 = memref.alloc() : memref<10x5xi64>
        %295 = tensor.empty() : tensor<5x15xi64>
        %296 = tensor.empty() : tensor<10x15xi64>
        %297 = linalg.matmul ins(%alloc_56, %295 : memref<10x5xi64>, tensor<5x15xi64>) outs(%296 : tensor<10x15xi64>) -> tensor<10x15xi64>
        %298 = memref.atomic_rmw assign %cst_6, %alloc_17[%c12] : (f16, memref<15xf16>) -> f16
        %299 = arith.cmpf ugt, %cst_0, %cst_6 : f16
        %300 = arith.addi %c0_i32, %c605225388_i32 : i32
        %301 = vector.broadcast %cst_6 : f16 to vector<5x11x10xf16>
        %302 = vector.broadcast %c1126433994_i32 : i32 to vector<5x11x10xi32>
        %303 = vector.gather %splat[%c5, %c13, %c2] [%302], %48, %301 : tensor<5x5x10xf16>, vector<5x11x10xi32>, vector<5x11x10xi1>, vector<5x11x10xf16> into vector<5x11x10xf16>
        %304 = arith.remsi %c0_i32, %c605225388_i32 : i32
        scf.yield
      }
      default {
        %285 = arith.minsi %c-6178_i16, %c-6178_i16 : i16
        %286 = vector.transpose %66, [0] : vector<10xi1> to vector<10xi1>
        %splat_55 = tensor.splat %false_5 : tensor<5x11x10xi1>
        %287 = affine.apply affine_map<(d0, d1, d2) -> ((d1 * -2) ceildiv 64)>(%36, %40, %60)
        %288 = arith.divsi %false_3, %false_3 : i1
        %289 = math.expm1 %13 : tensor<15xf16>
        %290 = arith.xori %c994058116_i64, %c994058116_i64 : i64
        %291 = math.sqrt %2 : tensor<10xf32>
        memref.assume_alignment %alloc_16, 4 : memref<10xi64>
        %292 = math.sqrt %20 : tensor<15xf16>
        %expanded = tensor.expand_shape %2 [[0, 1]] : tensor<10xf32> into tensor<10x1xf32>
        %293 = index.sub %258, %c11
        %294 = vector.load %alloc_8[%c1, %c3, %c6] : memref<5x5x10xi16>, vector<15xi16>
        %alloc_56 = memref.alloc() : memref<15xi1>
        memref.copy %alloc_19, %alloc_56 : memref<15xi1> to memref<15xi1>
        %295 = memref.realloc %alloc_17 : memref<15xf16> to memref<15xf16>
        %296 = math.log2 %cst_4 : f32
      }
      %261 = vector.broadcast %256 : index to vector<10xindex>
      %262 = vector.broadcast %c-6178_i16 : i16 to vector<10xi16>
      vector.scatter %alloc_8[%c1, %c2, %c4] [%261], %68, %262 : memref<5x5x10xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
      %alloc_53 = memref.alloc() : memref<5xi32>
      %263 = tensor.empty() : tensor<5x5xi32>
      %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_53, %263 : memref<5xi32>, tensor<5x5xi32>) outs(%0 : tensor<5x5x10xi32>) {
      ^bb0(%in: i32, %in_55: i32, %out: i32):
        %285 = arith.remsi %in_55, %out : i32
        %286 = tensor.empty() : tensor<5x5x10xi32>
        %287 = math.absi %c994058116_i64 : i64
        %288 = math.sqrt %13 : tensor<15xf16>
        %289 = vector.shuffle %66, %32 [4, 5, 7, 8] : vector<10xi1>, vector<1xi1>
        %290 = vector.broadcast %in : i32 to vector<15xi32>
        %291 = vector.broadcast %false : i1 to vector<15xi1>
        %292 = vector.gather %15[%c12, %c15, %c14] [%290], %291, %290 : tensor<5x5x10xi32>, vector<15xi32>, vector<15xi1>, vector<15xi32> into vector<15xi32>
        %293 = arith.xori %in_55, %c0_i32 : i32
        %294 = index.maxu %c14, %c12
        %295 = vector.transpose %290, [0] : vector<15xi32> to vector<15xi32>
        %296 = arith.xori %false_3, %true : i1
        %297 = arith.divui %in, %c0_i32 : i32
        %298 = math.rsqrt %21 : tensor<f16>
        %299 = arith.shrsi %c0_i32, %c0_i32 : i32
        %300 = arith.andi %true, %true : i1
        %301 = math.fma %12, %splat, %splat : tensor<5x5x10xf16>
        %302 = arith.maxui %c994058116_i64, %c1314739036_i64 : i64
        %303 = arith.maxui %c994058116_i64, %c299138035_i64 : i64
        %304 = vector.matrix_multiply %32, %66 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xi1>, vector<10xi1>) -> vector<10xi1>
        %305 = math.exp2 %257 : tensor<15xf16>
        %306 = vector.flat_transpose %291 {columns = 5 : i32, rows = 3 : i32} : vector<15xi1> -> vector<15xi1>
        %307 = math.atan2 %cst, %cst_4 : f32
        %308 = math.log10 %cst_2 : f16
        %splat_56 = tensor.splat %cst : tensor<5x11x10xf32>
        %309 = arith.remf %cst, %cst : f32
        %alloc_57 = memref.alloc() : memref<11x15xi32>
        %310 = tensor.empty() : tensor<15x5xi32>
        %311 = tensor.empty() : tensor<11x5xi32>
        %312 = linalg.matmul ins(%alloc_57, %310 : memref<11x15xi32>, tensor<15x5xi32>) outs(%311 : tensor<11x5xi32>) -> tensor<11x5xi32>
        %alloc_58 = memref.alloc() : memref<5x11x10xf16>
        %c893255650_i32 = arith.constant 893255650 : i32
        %313 = math.ipowi %9, %9 : tensor<5x11x10xi32>
        %314 = arith.addi %c994058116_i64, %c994058116_i64 : i64
        memref.assume_alignment %alloc_19, 8 : memref<15xi1>
        %315 = tensor.empty() : tensor<5x15xi32>
        %316 = tensor.empty() : tensor<11x15xi32>
        %317 = linalg.matmul ins(%311, %315 : tensor<11x5xi32>, tensor<5x15xi32>) outs(%316 : tensor<11x15xi32>) -> tensor<11x15xi32>
        %318 = index.mul %36, %c5
        linalg.yield %out : i32
      } -> tensor<5x5x10xi32>
      %265 = math.rsqrt %11 : tensor<5x11x10xf16>
      %266 = arith.remf %cst, %cst_23 : f32
      memref.assume_alignment %alloc_11, 2 : memref<5x11x10xf32>
      %extracted = tensor.extract %0[%c0, %c3, %c1] : tensor<5x5x10xi32>
      %267 = arith.shrui %c1126433994_i32, %c605225388_i32 : i32
      bufferization.dealloc_tensor %13 : tensor<15xf16>
      %268 = vector.reduction <maxsi>, %68 : vector<10xi1> into i1
      %269 = vector.broadcast %c5 : index to vector<11xindex>
      %270 = vector.broadcast %false_3 : i1 to vector<11xi1>
      %271 = vector.broadcast %cst_4 : f32 to vector<11xf32>
      vector.scatter %alloc_13[%c1, %c1, %c3] [%269], %270, %271 : memref<5x5x10xf32>, vector<11xindex>, vector<11xi1>, vector<11xf32>
      %272 = tensor.empty() : tensor<10xi32>
      %273 = affine.load %alloc_14[%c0] : memref<15xf32>
      %274 = math.powf %2, %2 : tensor<10xf32>
      %275 = vector.matrix_multiply %19, %66 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<5xi1>, vector<10xi1>) -> vector<2xi1>
      %276 = math.expm1 %20 : tensor<15xf16>
      %277 = arith.minsi %c299138035_i64, %c1314739036_i64 : i64
      %inserted_54 = tensor.insert %c0_i32 into %9[%c1, %c10, %c1] : tensor<5x11x10xi32>
      %278 = math.cos %cst_0 : f16
      %279 = math.log2 %cst_0 : f16
      %280 = index.divu %36, %c12
      memref.assume_alignment %alloc_20, 8 : memref<10xi32>
      %281 = math.log2 %13 : tensor<15xf16>
      %282 = math.powf %21, %22 : tensor<f16>
      %283 = arith.floordivsi %false_5, %false_3 : i1
      %284 = bufferization.to_memref %0 : memref<5x5x10xi32>
    }
    %69 = vector.extract %48[1] : vector<5x11x10xi1>
    %70 = vector.broadcast %false_5 : i1 to vector<11xi1>
    %71 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxsi>} %68, %69, %70 : vector<10xi1>, vector<11x10xi1> into vector<11xi1>
    %72 = arith.negf %cst : f32
    %73 = math.rsqrt %21 : tensor<f16>
    %74 = bufferization.to_memref %21 : memref<f16>
    %75 = math.ctpop %10 : tensor<10xi32>
    %76 = vector.broadcast %false : i1 to vector<11xi1>
    %77 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %67, %68, %76 : vector<11x10xi1>, vector<10xi1> into vector<11xi1>
    affine.store %cst_1, %alloc_14[%c5] : memref<15xf32>
    %78 = arith.minui %false_3, %true : i1
    %79 = affine.load %alloc_11[%c3, %c3, %c3] : memref<5x11x10xf32>
    %80 = affine.max affine_map<(d0) -> (-32)>(%c9)
    %81 = vector.broadcast %c299138035_i64 : i64 to vector<5x5x10xi64>
    %82 = math.sqrt %11 : tensor<5x11x10xf16>
    %83 = affine.min affine_map<(d0, d1) -> (d0 - 16, d0 - 16)>(%46, %60)
    %84 = index.sub %c5, %c6
    %85 = vector.create_mask %c13, %c3, %c11 : vector<5x11x10xi1>
    %inserted = tensor.insert %c1126433994_i32 into %9[%c0, %c7, %c4] : tensor<5x11x10xi32>
    %86 = memref.realloc %alloc_9 : memref<15xi32> to memref<5xi32>
    %87 = vector.transpose %19, [0] : vector<5xi1> to vector<5xi1>
    %88 = math.exp2 %cst_1 : f32
    %89 = arith.addi %c1314739036_i64, %c994058116_i64 : i64
    %90 = affine.max affine_map<(d0, d1, d2) -> (d1 - d0 mod 128)>(%c5, %c10, %c15)
    %91 = affine.load %alloc_17[%c12] : memref<15xf16>
    %92 = vector.create_mask %c5, %83, %c13 : vector<5x5x10xi1>
    %cast_29 = tensor.cast %18 : tensor<10x5x5xi1> to tensor<?x?x?xi1>
    %alloc_30 = memref.alloc() : memref<10x15xf32>
    %alloc_31 = memref.alloc() : memref<15x10xf32>
    %93 = tensor.empty() : tensor<10x10xf32>
    %94 = linalg.matmul ins(%alloc_30, %alloc_31 : memref<10x15xf32>, memref<15x10xf32>) outs(%93 : tensor<10x10xf32>) -> tensor<10x10xf32>
    %95 = vector.splat %cst_4 : vector<5x11x10xf32>
    %96 = math.log2 %cst_0 : f16
    %97 = arith.shrui %false_3, %false_5 : i1
    %98 = affine.if affine_set<(d0) : (d0 + 4 == 0, d0 * 2 >= 0, 0 == 0)>(%c0) -> f32 {
      %255 = affine.apply affine_map<(d0, d1) -> (d0 + d1 - d1)>(%60, %c5)
      %256 = index.sub %c4, %c13
      %257 = math.round %2 : tensor<10xf32>
      %cst_52 = arith.constant 1.000000e+00 : f16
      %258 = vector.transfer_read %splat[%c7, %c3, %c6], %cst_52 : tensor<5x5x10xf16>, vector<f16>
      %259 = tensor.empty() : tensor<10xi1>
      %mapped_53 = linalg.map ins(%7 : tensor<10xi1>) outs(%259 : tensor<10xi1>)
        (%in: i1) {
          %262 = arith.cmpf ord, %cst_52, %cst_0 : f16
          %263 = tensor.empty(%c15, %50, %83) : tensor<?x?x?xi16>
          %264 = vector.bitcast %66 : vector<10xi1> to vector<10xi1>
          %265 = bufferization.to_memref %18 : memref<10x5x5xi1>
          %266 = math.exp2 %12 : tensor<5x5x10xf16>
          %267 = index.sub %c12, %84
          %268 = index.sub %c14, %36
          %269 = math.copysign %93, %93 : tensor<10x10xf32>
          %270 = index.maxs %267, %c3
          %271 = bufferization.to_tensor %74 : memref<f16>
          %272 = index.sub %84, %c11
          %273 = arith.remui %c605225388_i32, %c605225388_i32 : i32
          %274 = vector.extract %68[2] : vector<10xi1>
          %275 = vector.bitcast %67 : vector<11x10xi1> to vector<11x10xi1>
          %276 = index.add %64, %36
          %277 = vector.insertelement %false_5, %68[%c13 : index] : vector<10xi1>
          %278 = arith.subi %false_5, %false_5 : i1
          %279 = index.floordivs %84, %60
          %280 = vector.broadcast %c994058116_i64 : i64 to vector<10xi64>
          affine.store %c1126433994_i32, %alloc_9[%c0] : memref<15xi32>
          %281 = math.tan %21 : tensor<f16>
          %282 = arith.cmpf ole, %cst_0, %cst_2 : f16
          %283 = bufferization.to_memref %10 : memref<10xi32>
          %284 = arith.remf %cst_23, %cst : f32
          %285 = arith.remsi %c299138035_i64, %c994058116_i64 : i64
          %286 = arith.addf %cst_6, %cst_6 : f16
          %287 = index.sub %272, %c9
          %288 = arith.addi %c299138035_i64, %c1314739036_i64 : i64
          %extracted = tensor.extract %15[%c4, %c0, %c2] : tensor<5x5x10xi32>
          %extracted_54 = tensor.extract %cast_29[%c0, %c0, %c0] : tensor<?x?x?xi1>
          %289 = math.sqrt %2 : tensor<10xf32>
          %290 = vector.broadcast %extracted_54 : i1 to vector<10x5x10xi1>
          %291 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %69, %85, %290 : vector<11x10xi1>, vector<5x11x10xi1> into vector<10x5x10xi1>
          %false_55 = arith.constant false
          linalg.yield %false_55 : i1
        }
      %260 = memref.realloc %alloc_19 : memref<15xi1> to memref<10xi1>
      bufferization.dealloc_tensor %14 : tensor<5x5x10xi32>
      %261 = vector.extract_strided_slice %66 {offsets = [7], sizes = [1], strides = [1]} : vector<10xi1> to vector<1xi1>
      affine.yield %79 : f32
    } else {
      %255 = vector.insertelement %false_3, %68[%c9 : index] : vector<10xi1>
      %256 = math.roundeven %cst_23 : f32
      %257 = vector.matrix_multiply %32, %68 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 10 : i32} : (vector<1xi1>, vector<10xi1>) -> vector<10xi1>
      %258 = arith.subi %c1126433994_i32, %c0_i32 : i32
      %259 = index.sizeof
      %260 = math.expm1 %12 : tensor<5x5x10xf16>
      %261 = arith.divui %c1314739036_i64, %c299138035_i64 : i64
      %cst_52 = arith.constant 1.000000e+00 : f16
      %262 = vector.transfer_read %13[%c6], %cst_52 : tensor<15xf16>, vector<f16>
      affine.yield %cst_23 : f32
    }
    %99 = math.log10 %13 : tensor<15xf16>
    %100 = math.rsqrt %22 : tensor<f16>
    %101 = vector.insert %68, %67 [3] : vector<10xi1> into vector<11x10xi1>
    %inserted_32 = tensor.insert %cst_0 into %13[%c14] : tensor<15xf16>
    %cast_33 = tensor.cast %0 : tensor<5x5x10xi32> to tensor<?x?x?xi32>
    %102 = math.log %2 : tensor<10xf32>
    %103 = vector.load %alloc_10[%c5] : memref<15xi16>, vector<5x5x10xi16>
    %104 = arith.shli %c-6178_i16, %c-6178_i16 : i16
    %105 = math.ctpop %false_3 : i1
    %106 = vector.broadcast %cst_4 : f32 to vector<10xf32>
    %107 = arith.xori %c1314739036_i64, %c1314739036_i64 : i64
    %alloc_34 = memref.alloc() : memref<11xi16>
    %108 = tensor.empty() : tensor<5x11xi16>
    %109 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_34, %108 : memref<11xi16>, tensor<5x11xi16>) outs(%5 : tensor<5x11x10xi16>) {
    ^bb0(%in: i16, %in_52: i16, %out: i16):
      %255 = vector.broadcast %79 : f32 to vector<5x11x10xf32>
      %256 = vector.fma %255, %255, %255 : vector<5x11x10xf32>
      %257 = vector.broadcast %false_3 : i1 to vector<10xi1>
      %258 = tensor.empty() : tensor<10x10xf32>
      %259 = linalg.matmul ins(%93, %93 : tensor<10x10xf32>, tensor<10x10xf32>) outs(%258 : tensor<10x10xf32>) -> tensor<10x10xf32>
      %260 = math.log %12 : tensor<5x5x10xf16>
      %261 = memref.atomic_rmw minf %cst_0, %74[] : (f16, memref<f16>) -> f16
      %262 = bufferization.to_memref %6 : memref<5x11x10xi16>
      %263 = index.add %c14, %c1
      %264 = arith.remf %cst_23, %cst_4 : f32
      %265 = vector.load %alloc_10[%c12] : memref<15xi16>, vector<15xi16>
      %266 = arith.divui %true, %false : i1
      %267 = bufferization.to_memref %13 : memref<15xf16>
      %268 = affine.load %alloc_17[%c10] : memref<15xf16>
      %269 = arith.remui %c299138035_i64, %c1314739036_i64 : i64
      %cast_53 = tensor.cast %93 : tensor<10x10xf32> to tensor<?x?xf32>
      %270 = scf.if %false_3 -> (memref<5x5x10xi16>) {
        %alloc_59 = memref.alloc() : memref<5x11x10xi64>
        %285 = math.absi %6 : tensor<5x11x10xi16>
        %286 = arith.minsi %out, %c-6178_i16 : i16
        %287 = index.mul %c1, %263
        %288 = memref.atomic_rmw addf %cst, %alloc_11[%c3, %c10, %c4] : (f32, memref<5x11x10xf32>) -> f32
        %289 = vector.splat %c2 : vector<5x5x10xindex>
        memref.assume_alignment %alloc_18, 4 : memref<10xf16>
        %extracted = tensor.extract %13[%c12] : tensor<15xf16>
        scf.yield %alloc_8 : memref<5x5x10xi16>
      } else {
        %285 = index.ceildivs %84, %c2
        %286 = vector.shuffle %103, %103 [0, 3, 5] : vector<5x5x10xi16>, vector<5x5x10xi16>
        %287 = bufferization.to_memref %8 : memref<15xi32>
        %288 = vector.splat %false : vector<5x5x10xi1>
        %289 = math.floor %21 : tensor<f16>
        %290 = arith.remui %out, %in_52 : i16
        %291 = vector.extract_strided_slice %66 {offsets = [5], sizes = [4], strides = [1]} : vector<10xi1> to vector<4xi1>
        %292 = math.log10 %cst : f32
        scf.yield %alloc_8 : memref<5x5x10xi16>
      }
      %cast_54 = tensor.cast %7 : tensor<10xi1> to tensor<?xi1>
      %271 = math.tanh %13 : tensor<15xf16>
      %272 = arith.shrui %c-6178_i16, %c-6178_i16 : i16
      %273 = affine.apply affine_map<(d0, d1, d2) -> ((d1 * -2) ceildiv 64)>(%c3, %c3, %80)
      %274 = vector.broadcast %true : i1 to vector<5x10xi1>
      %dest_55, %accumulated_value_56 = vector.scan <and>, %48, %274 {inclusive = true, reduction_dim = 1 : i64} : vector<5x11x10xi1>, vector<5x10xi1>
      %275 = arith.andi %in, %c-6178_i16 : i16
      %276 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 floordiv 32, d1 floordiv 32, d0 floordiv 4 + d1 floordiv 32 + 16)>(%c2, %c15, %60, %90)
      %277 = vector.splat %c15 : vector<10xindex>
      %278 = math.log %12 : tensor<5x5x10xf16>
      %279 = affine.load %alloc_18[%c13] : memref<10xf16>
      %280 = math.rsqrt %cst : f32
      %281 = arith.shrsi %c-6178_i16, %c-6178_i16 : i16
      %282 = memref.atomic_rmw mulf %cst_23, %alloc_11[%c1, %c6, %c2] : (f32, memref<5x11x10xf32>) -> f32
      %283 = memref.alloca_scope  -> (i64) {
        %285 = vector.transpose %19, [0] : vector<5xi1> to vector<5xi1>
        %286 = vector.flat_transpose %66 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %287 = arith.shrui %false_5, %false : i1
        %from_elements_59 = tensor.from_elements %cst_2, %cst_2, %91, %cst_6, %279, %268, %91, %cst_0, %cst_2, %279 : tensor<10xf16>
        %288 = arith.shrsi %c-6178_i16, %c-6178_i16 : i16
        %289 = index.maxu %c14, %276
        %290 = vector.bitcast %286 : vector<10xi1> to vector<10xi1>
        %rank_60 = tensor.rank %3 : tensor<5x5x10xi1>
        %291 = index.floordivs %90, %c0
        %292 = arith.andi %c1314739036_i64, %c299138035_i64 : i64
        %293 = index.ceildivu %40, %46
        %294 = arith.andi %false, %false_3 : i1
        %295 = arith.floordivsi %in, %in_52 : i16
        %296 = index.castu %40 : index to i32
        %297 = vector.multi_reduction <or>, %32, %32 [] : vector<1xi1> to vector<1xi1>
        %298 = math.absi %1 : tensor<5x5x10xi1>
        %299 = index.sizeof
        %300 = affine.load %alloc_12[%c14] : memref<10xi32>
        %cst_61 = arith.constant 1.000000e+00 : f16
        %cst_62 = arith.constant 0.000000e+00 : f16
        %301 = vector.transfer_read %267[%273], %cst_62 : memref<15xf16>, vector<f16>
        %302 = memref.realloc %alloc_12 : memref<10xi32> to memref<10xi32>
        %303 = math.atan2 %93, %93 : tensor<10x10xf32>
        %304 = vector.create_mask %c12, %273, %84 : vector<5x5x10xi1>
        %rank_63 = tensor.rank %15 : tensor<5x5x10xi32>
        %305 = arith.addi %c-6178_i16, %in : i16
        %306 = vector.load %alloc_13[%c1, %c1, %c9] : memref<5x5x10xf32>, vector<5x5x10xf32>
        %307 = math.expm1 %279 : f16
        %308 = math.log %12 : tensor<5x5x10xf16>
        %309 = arith.addf %cst_1, %cst_1 : f32
        %310 = vector.bitcast %304 : vector<5x5x10xi1> to vector<5x5x10xi1>
        %rank_64 = tensor.rank %11 : tensor<5x11x10xf16>
        %311 = index.ceildivu %c15, %c3
        %312 = index.floordivs %84, %c3
        memref.alloca_scope.return %c994058116_i64 : i64
      }
      %284 = vector.extract %19[2] : vector<5xi1>
      %true_57 = index.bool.constant true
      %cast_58 = tensor.cast %12 : tensor<5x5x10xf16> to tensor<?x?x?xf16>
      linalg.yield %in : i16
    } -> tensor<5x11x10xi16>
    %110 = arith.remui %false_5, %false_5 : i1
    %111 = vector.broadcast %c-6178_i16 : i16 to vector<5x10xi16>
    %dest, %accumulated_value = vector.scan <and>, %103, %111 {inclusive = false, reduction_dim = 1 : i64} : vector<5x5x10xi16>, vector<5x10xi16>
    %112 = affine.load %alloc_10[%c11] : memref<15xi16>
    %113 = index.add %40, %c5
    %collapsed = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<5x5x10xf16> into tensor<25x10xf16>
    %114 = math.cttz %c1314739036_i64 : i64
    %115 = arith.cmpi slt, %c994058116_i64, %c1314739036_i64 : i64
    %116 = arith.remf %cst_1, %cst_1 : f32
    %alloc_35 = memref.alloc() : memref<10xf32>
    %117 = vector.broadcast %c1126433994_i32 : i32 to vector<10xi32>
    %118 = vector.gather %alloc_35[%rank] [%117], %68, %106 : memref<10xf32>, vector<10xi32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
    %119 = index.mul %113, %84
    %120 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %19, %85, %67 : vector<5xi1>, vector<5x11x10xi1> into vector<11x10xi1>
    %121 = arith.remsi %c1126433994_i32, %c1126433994_i32 : i32
    %alloc_36 = memref.alloc() : memref<15xi1>
    memref.copy %alloc_19, %alloc_36 : memref<15xi1> to memref<15xi1>
    %alloc_37 = memref.alloc() : memref<5x11x10xf32>
    memref.copy %alloc_11, %alloc_37 : memref<5x11x10xf32> to memref<5x11x10xf32>
    %122 = vector.flat_transpose %106 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
    %123 = vector.bitcast %117 : vector<10xi32> to vector<10xi32>
    %124 = arith.floordivsi %112, %112 : i16
    %125 = math.ctpop %1 : tensor<5x5x10xi1>
    %126 = bufferization.to_memref %11 : memref<5x11x10xf16>
    %127 = arith.remui %c1126433994_i32, %c0_i32 : i32
    %128 = arith.remf %cst_0, %cst_2 : f16
    %129 = arith.floordivsi %c-6178_i16, %112 : i16
    %130 = vector.transpose %117, [0] : vector<10xi32> to vector<10xi32>
    scf.index_switch %c2 
    case 1 {
      %255 = arith.shli %c605225388_i32, %c0_i32 : i32
      %256 = tensor.empty() : tensor<10x10xf32>
      %257 = linalg.matmul ins(%93, %93 : tensor<10x10xf32>, tensor<10x10xf32>) outs(%256 : tensor<10x10xf32>) -> tensor<10x10xf32>
      %alloc_52 = memref.alloc() : memref<10x5xi32>
      %258 = tensor.empty() : tensor<5x10xi32>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52, %258 : memref<10x5xi32>, tensor<5x10xi32>) outs(%15 : tensor<5x5x10xi32>) {
      ^bb0(%in: i32, %in_56: i32, %out: i32):
        %269 = memref.realloc %alloc_15 : memref<10xi16> to memref<10xi16>
        %270 = arith.remf %cst_6, %cst_6 : f16
        %true_57 = index.bool.constant true
        %271 = tensor.empty() : tensor<15xf16>
        %272 = math.sqrt %271 : tensor<15xf16>
        %c0_i32_58 = arith.constant 0 : i32
        %273 = vector.transfer_read %17[%c0, %64, %c13], %c0_i32_58 : tensor<5x5x10xi32>, vector<5xi32>
        %274 = vector.matrix_multiply %66, %66 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
        %275 = math.ceil %11 : tensor<5x11x10xf16>
        memref.assume_alignment %alloc, 1 : memref<5x5x10xf32>
        %276 = arith.xori %c1126433994_i32, %c0_i32 : i32
        %277 = math.absi %3 : tensor<5x5x10xi1>
        %278 = arith.floordivsi %false, %true_57 : i1
        %rank_59 = tensor.rank %93 : tensor<10x10xf32>
        %279 = memref.realloc %alloc_35 : memref<10xf32> to memref<10xf32>
        %280 = index.casts %c1126433994_i32 : i32 to index
        %281 = vector.broadcast %false_3 : i1 to vector<5x10xi1>
        %282 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %19, %92, %281 : vector<5xi1>, vector<5x5x10xi1> into vector<5x10xi1>
        %splat_60 = tensor.splat %true : tensor<10xi1>
        %283 = math.expm1 %21 : tensor<f16>
        %extracted = tensor.extract %9[%c3, %c8, %c3] : tensor<5x11x10xi32>
        %284 = vector.extract_strided_slice %48 {offsets = [1, 1], sizes = [4, 9], strides = [1, 1]} : vector<5x11x10xi1> to vector<4x9x10xi1>
        %285 = math.tan %22 : tensor<f16>
        %286 = bufferization.to_tensor %alloc_35 : memref<10xf32>
        %true_61 = index.bool.constant true
        %287 = memref.realloc %alloc_19 : memref<15xi1> to memref<11xi1>
        %288 = vector.shuffle %66, %19 [0, 1, 2, 4, 7, 8, 9, 10, 11, 12, 13] : vector<10xi1>, vector<5xi1>
        %289 = math.ctlz %in : i32
        %290 = index.casts %c1314739036_i64 : i64 to index
        %291 = math.log2 %271 : tensor<15xf16>
        %292 = arith.floordivsi %out, %in_56 : i32
        %293 = memref.atomic_rmw maxu %112, %alloc_8[%c4, %c1, %c3] : (i16, memref<5x5x10xi16>) -> i16
        memref.assume_alignment %alloc_20, 8 : memref<10xi32>
        affine.store %cst_6, %alloc_7[%c14] : memref<15xf16>
        linalg.yield %c0_i32_58 : i32
      } -> tensor<5x5x10xi32>
      %260 = math.copysign %13, %13 : tensor<15xf16>
      %261 = math.log %22 : tensor<f16>
      %262 = math.cttz %9 : tensor<5x11x10xi32>
      %rank_53 = tensor.rank %14 : tensor<5x5x10xi32>
      %263 = arith.negf %cst_1 : f32
      %264 = math.log1p %91 : f16
      %alloca = memref.alloca() : memref<10xi16>
      %265 = tensor.empty() : tensor<15xi32>
      %mapped_54 = linalg.map ins(%alloc_9, %8, %8 : memref<15xi32>, tensor<15xi32>, tensor<15xi32>) outs(%265 : tensor<15xi32>)
        (%in: i32, %in_56: i32, %in_57: i32) {
          %269 = vector.extract %103[0] : vector<5x5x10xi16>
          affine.store %in_56, %alloc_20[%c6] : memref<10xi32>
          %270 = index.ceildivu %60, %c14
          %271 = arith.remf %cst, %cst_1 : f32
          %272 = math.atan2 %79, %cst_4 : f32
          %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %68, %68, %false_3 : vector<10xi1>, vector<10xi1> into i1
          %274 = vector.broadcast %cst_4 : f32 to vector<f32>
          %275 = vector.transfer_write %274, %2[%c4] : vector<f32>, tensor<10xf32>
          %276 = index.add %c13, %c14
          memref.copy %alloc_7, %alloc_21 : memref<15xf16> to memref<15xf16>
          %277 = arith.andi %c994058116_i64, %c994058116_i64 : i64
          %278 = math.powf %93, %256 : tensor<10x10xf32>
          %279 = arith.floordivsi %in_56, %in_57 : i32
          %280 = arith.shrui %c-6178_i16, %112 : i16
          %281 = arith.remsi %c-6178_i16, %c-6178_i16 : i16
          %282 = arith.divf %79, %cst_23 : f32
          %283 = arith.cmpi ule, %in_56, %c605225388_i32 : i32
          %284 = math.cos %21 : tensor<f16>
          %285 = affine.min affine_map<(d0) -> (-d0, -d0 + d0 mod 2 - 32, -d0 - (-d0 + d0 mod 2 - 32) - 32)>(%c4)
          %286 = math.atan2 %21, %21 : tensor<f16>
          %287 = math.exp2 %12 : tensor<5x5x10xf16>
          %288 = arith.cmpf oeq, %cst_2, %cst_0 : f16
          %inserted_58 = tensor.insert %cst_2 into %13[%c14] : tensor<15xf16>
          %289 = math.expm1 %cst_1 : f32
          %290 = math.fma %cst, %cst_1, %cst : f32
          %291 = arith.divui %c605225388_i32, %c0_i32 : i32
          %splat_59 = tensor.splat %cst_23 : tensor<15xf32>
          %292 = math.fma %splat_59, %splat_59, %splat_59 : tensor<15xf32>
          %293 = math.powf %splat_59, %splat_59 : tensor<15xf32>
          %294 = math.cttz %c-6178_i16 : i16
          %true_60 = index.bool.constant true
          %295 = math.log10 %13 : tensor<15xf16>
          %296 = arith.cmpf false, %cst_6, %cst_0 : f16
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %266 = arith.divsi %c0_i32, %c605225388_i32 : i32
      %267 = index.maxu %c4, %c13
      %268 = math.sqrt %cst_23 : f32
      affine.for %arg2 = 0 to 121 {
      }
      %inserted_55 = tensor.insert %c1126433994_i32 into %4[%c3, %c0, %c4] : tensor<5x11x10xi32>
      scf.yield
    }
    case 2 {
      %255 = vector.create_mask %c4 : vector<10xi1>
      %256 = arith.remf %cst_1, %79 : f32
      %257 = affine.min affine_map<(d0, d1, d2) -> ((d1 + 16) * -2, d0 mod 16)>(%60, %36, %36)
      %258 = vector.create_mask %c13, %40, %c9 : vector<5x11x10xi1>
      %259 = affine.load %alloc_19[%c0] : memref<15xi1>
      %260 = index.casts %false_3 : i1 to index
      %cst_52 = arith.constant 0x4D1FAF5F : f32
      %261 = math.fma %collapsed, %collapsed, %collapsed : tensor<25x10xf16>
      %262 = arith.remsi %c994058116_i64, %c994058116_i64 : i64
      %263 = affine.max affine_map<(d0, d1) -> ((d0 ceildiv 32) ceildiv 128, d0 ceildiv 4, d0 ceildiv 32 + (d0 ceildiv 32) ceildiv 128)>(%113, %c14)
      %alloc_53 = memref.alloc() : memref<5x5x10xi32>
      memref.tensor_store %14, %alloc_53 : memref<5x5x10xi32>
      %264 = index.sizeof
      %265 = memref.realloc %alloc_15 : memref<10xi16> to memref<11xi16>
      %c1_i32 = arith.constant 1 : i32
      %266 = vector.transfer_read %15[%c1, %84, %264], %c1_i32 : tensor<5x5x10xi32>, vector<15xi32>
      %cst_54 = arith.constant 1.000000e+00 : f16
      %cst_55 = arith.constant 0.000000e+00 : f16
      %267 = vector.transfer_read %splat[%113, %c6, %c6], %cst_55 : tensor<5x5x10xf16>, vector<f16>
      %268 = arith.andi %c-6178_i16, %c-6178_i16 : i16
      scf.yield
    }
    default {
      %false_52 = arith.constant false
      %255 = index.mul %c3, %113
      %256 = arith.subi %false_3, %false : i1
      %257 = arith.muli %false_5, %true : i1
      %258 = arith.minsi %true, %false : i1
      bufferization.dealloc_tensor %15 : tensor<5x5x10xi32>
      %259 = index.sub %c7, %36
      %260 = math.powf %cst_1, %cst_1 : f32
      %261 = math.cos %2 : tensor<10xf32>
      %262 = vector.transpose %123, [0] : vector<10xi32> to vector<10xi32>
      %263 = arith.andi %c605225388_i32, %c605225388_i32 : i32
      %264 = affine.apply affine_map<(d0, d1, d2) -> (d0 * -16)>(%c3, %c15, %64)
      %265 = math.fma %12, %splat, %splat : tensor<5x5x10xf16>
      %266 = arith.remf %cst_2, %cst_2 : f16
      %267 = vector.create_mask %259, %50, %c2 : vector<5x5x10xi1>
      %268 = math.log1p %splat : tensor<5x5x10xf16>
    }
    %131 = index.casts %c15 : index to i32
    %132 = math.log1p %11 : tensor<5x11x10xf16>
    scf.index_switch %c5 
    case 1 {
      vector.print %122 : vector<10xf32>
      %255 = vector.splat %c7 : vector<5x11x10xindex>
      scf.if %false_5 {
        %269 = arith.divsi %c0_i32, %c1126433994_i32 : i32
        %270 = arith.negf %cst_1 : f32
        %271 = vector.broadcast %true : i1 to vector<11xi1>
        %272 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %69, %66, %271 : vector<11x10xi1>, vector<10xi1> into vector<11xi1>
        %273 = math.log10 %20 : tensor<15xf16>
        %274 = math.atan2 %12, %splat : tensor<5x5x10xf16>
        %275 = vector.flat_transpose %117 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
        %276 = math.log10 %2 : tensor<10xf32>
        %277 = math.sqrt %cst_2 : f16
      } else {
        %cast_54 = tensor.cast %10 : tensor<10xi32> to tensor<?xi32>
        memref.tensor_store %8, %alloc_9 : memref<15xi32>
        %269 = index.ceildivu %rank, %83
        %270 = math.tanh %2 : tensor<10xf32>
        %271 = vector.shuffle %81, %81 [0, 2, 6] : vector<5x5x10xi64>, vector<5x5x10xi64>
        %272 = vector.matrix_multiply %66, %66 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<10xi1>) -> vector<1xi1>
        vector.print %48 : vector<5x11x10xi1>
        %273 = arith.remf %91, %cst_6 : f16
      }
      %256 = arith.minsi %c0_i32, %c605225388_i32 : i32
      %257 = index.maxs %c5, %c1
      %258 = math.expm1 %11 : tensor<5x11x10xf16>
      %259 = bufferization.to_memref %splat : memref<5x5x10xf16>
      %260 = bufferization.to_tensor %126 : memref<5x11x10xf16>
      %261 = math.log %cst_2 : f16
      %cst_52 = arith.constant 1.000000e+00 : f16
      %262 = vector.transfer_read %13[%c1], %cst_52 : tensor<15xf16>, vector<f16>
      %263 = math.log2 %21 : tensor<f16>
      %264 = vector.broadcast %false_3 : i1 to vector<11xi1>
      %265 = vector.maskedload %alloc_22[], %264, %264 : memref<i1>, vector<11xi1>, vector<11xi1> into vector<11xi1>
      %266 = math.copysign %2, %2 : tensor<10xf32>
      %cast_53 = tensor.cast %15 : tensor<5x5x10xi32> to tensor<?x?x?xi32>
      %267 = index.divs %c4, %80
      %268 = index.maxu %113, %c2
      scf.yield
    }
    default {
      %splat_52 = tensor.splat %cst_2 : tensor<5x11x10xf16>
      %255 = math.log1p %cst : f32
      %alloc_53 = memref.alloc() : memref<15xf16>
      %256 = memref.atomic_rmw maxs %112, %alloc_15[%c6] : (i16, memref<10xi16>) -> i16
      %257 = math.atan2 %12, %splat : tensor<5x5x10xf16>
      %258 = arith.floordivsi %c-6178_i16, %c-6178_i16 : i16
      %rank_54 = tensor.rank %transposed : tensor<10x5x5xi1>
      %259 = vector.shuffle %66, %19 [2, 4, 8, 11, 13] : vector<10xi1>, vector<5xi1>
      %260 = scf.execute_region -> index {
        %rank_57 = tensor.rank %15 : tensor<5x5x10xi32>
        bufferization.dealloc_tensor %10 : tensor<10xi32>
        %267 = arith.divf %cst_6, %cst_0 : f16
        %extracted = tensor.extract %3[%c0, %c3, %c3] : tensor<5x5x10xi1>
        %268 = arith.divui %false_3, %false : i1
        %269 = vector.extract_strided_slice %81 {offsets = [0, 0], sizes = [2, 3], strides = [1, 1]} : vector<5x5x10xi64> to vector<2x3x10xi64>
        %270 = vector.broadcast %c-6178_i16 : i16 to vector<10xi16>
        %271 = math.copysign %20, %13 : tensor<15xf16>
        %272 = vector.shuffle %32, %32 [0] : vector<1xi1>, vector<1xi1>
        %273 = vector.create_mask %84 : vector<10xi1>
        %274 = arith.addi %c605225388_i32, %c1126433994_i32 : i32
        %275 = vector.flat_transpose %270 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
        %276 = index.sizeof
        %rank_58 = tensor.rank %93 : tensor<10x10xf32>
        %277 = math.absi %6 : tensor<5x11x10xi16>
        %278 = bufferization.to_tensor %alloc : memref<5x5x10xf32>
        scf.yield %276 : index
      }
      %261 = arith.minui %112, %112 : i16
      %262 = vector.bitcast %106 : vector<10xf32> to vector<10xf32>
      %263 = math.log2 %13 : tensor<15xf16>
      %264 = index.divu %c3, %90
      %265 = tensor.empty() : tensor<5x11x10xi16>
      %mapped_55 = linalg.map ins(%5, %6 : tensor<5x11x10xi16>, tensor<5x11x10xi16>) outs(%265 : tensor<5x11x10xi16>)
        (%in: i16, %in_57: i16) {
          %267 = arith.negf %91 : f16
          %268 = arith.maxui %c994058116_i64, %c1314739036_i64 : i64
          %269 = math.cos %2 : tensor<10xf32>
          %270 = arith.addf %cst, %cst_1 : f32
          %271 = arith.divui %c0_i32, %c0_i32 : i32
          %extracted = tensor.extract %45[%c4, %c2, %c2] : tensor<5x5x10xi16>
          %alloc_58 = memref.alloc() : memref<10xi64>
          %272 = math.cttz %c605225388_i32 : i32
          %273 = math.log10 %cst_1 : f32
          %274 = math.ctlz %transposed : tensor<10x5x5xi1>
          %275 = vector.broadcast %cst_0 : f16 to vector<11xf16>
          %276 = vector.broadcast %false_3 : i1 to vector<11xi1>
          %277 = vector.maskedload %alloc_17[%c9], %276, %275 : memref<15xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
          %278 = math.fma %2, %2, %2 : tensor<10xf32>
          vector.print %123 : vector<10xi32>
          %alloca = memref.alloca() : memref<10xf32>
          %279 = math.tanh %11 : tensor<5x11x10xf16>
          %280 = math.rsqrt %21 : tensor<f16>
          %281 = vector.shuffle %262, %118 [1, 5, 6, 7, 8, 9, 14, 17, 18] : vector<10xf32>, vector<10xf32>
          %282 = math.log2 %79 : f32
          %283 = vector.bitcast %81 : vector<5x5x10xi64> to vector<5x5x10xi64>
          %284 = math.cttz %c0_i32 : i32
          %285 = vector.bitcast %262 : vector<10xf32> to vector<10xf32>
          %inserted_59 = tensor.insert %cst_6 into %13[%c4] : tensor<15xf16>
          %286 = index.divu %113, %260
          %287 = arith.addf %cst_6, %91 : f16
          %288 = math.fma %cst_2, %cst_6, %cst_6 : f16
          %289 = math.cos %13 : tensor<15xf16>
          %290 = memref.realloc %alloc_14 : memref<15xf32> to memref<11xf32>
          %291 = arith.shrui %c0_i32, %c1126433994_i32 : i32
          %292 = arith.remsi %c1314739036_i64, %c994058116_i64 : i64
          %293 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %275, %275, %cst_6 : vector<11xf16>, vector<11xf16> into f16
          %294 = affine.apply affine_map<(d0, d1, d2) -> (d0 * -16)>(%60, %46, %c10)
          %295 = vector.broadcast %84 : index to vector<10xindex>
          %296 = vector.broadcast %cst_6 : f16 to vector<10xf16>
          vector.scatter %74[] [%295], %66, %296 : memref<f16>, vector<10xindex>, vector<10xi1>, vector<10xf16>
          %c1_i16 = arith.constant 1 : i16
          linalg.yield %c1_i16 : i16
        }
      %266 = memref.realloc %alloc_17 : memref<15xf16> to memref<5xf16>
      %true_56 = index.bool.constant true
    }
    %133 = vector.broadcast %79 : f32 to vector<f32>
    %134 = vector.transfer_write %133, %2[%90] : vector<f32>, tensor<10xf32>
    %135 = arith.cmpf olt, %cst_2, %91 : f16
    %136 = vector.transpose %68, [0] : vector<10xi1> to vector<10xi1>
    %137 = arith.shli %false_5, %false_5 : i1
    %138 = arith.mulf %cst_1, %cst_1 : f32
    %139 = math.floor %91 : f16
    %140 = index.sizeof
    %141 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%84, %c2, %c0, %80)
    %142 = vector.extract %68[8] : vector<10xi1>
    %rank_38 = tensor.rank %1 : tensor<5x5x10xi1>
    %143 = memref.atomic_rmw mulf %91, %alloc_17[%c9] : (f16, memref<15xf16>) -> f16
    %144 = arith.maxf %cst_23, %cst_4 : f32
    %145 = vector.extract %69[4] : vector<11x10xi1>
    %146 = arith.cmpf one, %cst_0, %cst_6 : f16
    %147 = index.maxu %c2, %c13
    %148 = arith.addf %cst_2, %cst_2 : f16
    %149 = math.powf %12, %12 : tensor<5x5x10xf16>
    %150 = memref.realloc %alloc_9 : memref<15xi32> to memref<10xi32>
    %151 = memref.alloca_scope  -> (f16) {
      %255 = arith.cmpf uno, %cst_6, %91 : f16
      %256 = math.tanh %cst : f32
      %257 = vector.splat %60 : vector<10xindex>
      %258 = bufferization.clone %alloc_13 : memref<5x5x10xf32> to memref<5x5x10xf32>
      %259 = vector.broadcast %cst_2 : f16 to vector<f16>
      %260 = vector.transfer_write %259, %11[%c2, %140, %119] : vector<f16>, tensor<5x11x10xf16>
      %261 = vector.splat %c8 : vector<15xindex>
      %262 = vector.create_mask %c9 : vector<15xi1>
      affine.store %cst_1, %alloc_11[%c15, %c0, %c0] : memref<5x11x10xf32>
      %rank_52 = tensor.rank %cast_33 : tensor<?x?x?xi32>
      %263 = index.add %83, %141
      %264 = arith.minf %cst_23, %79 : f32
      %265 = scf.if %false_5 -> (f16) {
        %286 = math.absi %45 : tensor<5x5x10xi16>
        %287 = bufferization.to_tensor %258 : memref<5x5x10xf32>
        %288 = arith.addi %true, %false_3 : i1
        %289 = index.divu %c7, %c13
        memref.assume_alignment %126, 4 : memref<5x11x10xf16>
        %290 = arith.addf %79, %79 : f32
        %291 = arith.shli %c-6178_i16, %112 : i16
        %292 = arith.remf %cst_2, %cst_0 : f16
        scf.yield %cst_2 : f16
      } else {
        %cast_53 = tensor.cast %17 : tensor<5x5x10xi32> to tensor<?x?x?xi32>
        %286 = math.ctpop %0 : tensor<5x5x10xi32>
        %287 = math.log %12 : tensor<5x5x10xf16>
        %288 = arith.divui %112, %c-6178_i16 : i16
        %289 = vector.create_mask %rank_52, %rank_38, %rank_52 : vector<5x5x10xi1>
        %290 = tensor.empty() : tensor<10x10xf32>
        %291 = linalg.matmul ins(%93, %93 : tensor<10x10xf32>, tensor<10x10xf32>) outs(%290 : tensor<10x10xf32>) -> tensor<10x10xf32>
        %292 = index.maxs %rank_38, %80
        %293 = math.tanh %cst_2 : f16
        scf.yield %cst_2 : f16
      }
      %266 = vector.create_mask %113 : vector<10xi1>
      %267 = arith.maxui %c0_i32, %c1126433994_i32 : i32
      %268 = arith.remui %true, %false_5 : i1
      %269 = index.sizeof
      %270 = tensor.empty() : tensor<10x10xf32>
      %271 = linalg.matmul ins(%93, %93 : tensor<10x10xf32>, tensor<10x10xf32>) outs(%270 : tensor<10x10xf32>) -> tensor<10x10xf32>
      %272 = arith.andi %112, %c-6178_i16 : i16
      memref.assume_alignment %alloc_22, 2 : memref<i1>
      %273 = math.cttz %c-6178_i16 : i16
      %274 = arith.addf %79, %cst : f32
      %275 = vector.broadcast %cst_0 : f16 to vector<5x5x10xf16>
      %276 = arith.addi %false, %false : i1
      %277 = arith.remsi %c299138035_i64, %c299138035_i64 : i64
      %278 = math.expm1 %cst : f32
      %279 = vector.splat %c11 : vector<5x5x10xindex>
      %280 = math.exp %13 : tensor<15xf16>
      %281 = memref.realloc %alloc_20 : memref<10xi32> to memref<15xi32>
      %282 = arith.ceildivsi %c994058116_i64, %c1314739036_i64 : i64
      %283 = math.tanh %11 : tensor<5x11x10xf16>
      %284 = arith.andi %c299138035_i64, %c1314739036_i64 : i64
      %285 = math.fma %12, %12, %splat : tensor<5x5x10xf16>
      memref.alloca_scope.return %cst_0 : f16
    }
    %inserted_39 = tensor.insert %true into %3[%c3, %c1, %c0] : tensor<5x5x10xi1>
    memref.assume_alignment %alloc_10, 4 : memref<15xi16>
    %152 = math.cos %13 : tensor<15xf16>
    %153 = vector.broadcast %false_3 : i1 to vector<11xi1>
    %dest_40, %accumulated_value_41 = vector.scan <minsi>, %67, %153 {inclusive = true, reduction_dim = 1 : i64} : vector<11x10xi1>, vector<11xi1>
    %154 = index.floordivs %c1, %c7
    %155 = index.divu %c13, %147
    %156 = math.ctlz %5 : tensor<5x11x10xi16>
    %157 = arith.minsi %c-6178_i16, %c-6178_i16 : i16
    %158 = arith.addi %false_3, %false_3 : i1
    %159 = index.add %c10, %83
    %160 = affine.load %alloc_21[%c2] : memref<15xf16>
    %161 = memref.alloca_scope  -> (memref<5x11x10xf32>) {
      %255 = arith.subi %true, %true : i1
      %256 = arith.xori %c-6178_i16, %c-6178_i16 : i16
      %257 = math.copysign %151, %91 : f16
      %258 = bufferization.to_memref %5 : memref<5x11x10xi16>
      %259 = index.maxs %c8, %90
      %260 = arith.shrui %c-6178_i16, %c-6178_i16 : i16
      %261 = math.rsqrt %cst : f32
      %262 = memref.alloca_scope  -> (memref<5x11x10xi1>) {
        %cst_56 = arith.constant 1.000000e+00 : f16
        %cst_57 = arith.constant 0.000000e+00 : f16
        %285 = vector.transfer_read %alloc_18[%140], %cst_57 : memref<10xf16>, vector<f16>
        %286 = arith.remui %true, %false_3 : i1
        %287 = arith.remui %c1314739036_i64, %c299138035_i64 : i64
        %288 = math.fma %13, %20, %13 : tensor<15xf16>
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %68, %66, %true : vector<10xi1>, vector<10xi1> into i1
        %290 = arith.divsi %false, %false : i1
        %291 = math.tan %13 : tensor<15xf16>
        %292 = affine.max affine_map<(d0, d1) -> (d0, d1 - 127, d1 + 1)>(%119, %83)
        %293 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %19, %85, %69 : vector<5xi1>, vector<5x11x10xi1> into vector<11x10xi1>
        %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %106, %106, %cst_4 : vector<10xf32>, vector<10xf32> into f32
        %295 = arith.addi %false, %true : i1
        %296 = vector.broadcast %91 : f16 to vector<5xf16>
        %297 = vector.maskedload %alloc_17[%c12], %19, %296 : memref<15xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %298 = bufferization.to_memref %13 : memref<15xf16>
        %299 = vector.shuffle %69, %67 [0, 2, 3, 9, 11, 12, 13, 14, 18, 19, 21] : vector<11x10xi1>, vector<11x10xi1>
        %300 = index.maxs %40, %40
        %301 = arith.remf %91, %160 : f16
        %302 = affine.load %alloc_21[%c10] : memref<15xf16>
        %303 = math.ctpop %4 : tensor<5x11x10xi32>
        %304 = math.cos %21 : tensor<f16>
        affine.store %c1126433994_i32, %alloc_9[%c2] : memref<15xi32>
        %305 = math.copysign %22, %22 : tensor<f16>
        %306 = index.ceildivu %154, %259
        %307 = vector.broadcast %true : i1 to vector<15xi1>
        %308 = vector.maskedload %alloc_19[%c6], %307, %307 : memref<15xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
        %cst_58 = arith.constant 1.000000e+00 : f32
        %cst_59 = arith.constant 0.000000e+00 : f32
        %309 = vector.transfer_read %alloc_13[%84, %80, %300], %cst_59 {permutation_map = affine_map<(d0, d1, d2) -> (0)>} : memref<5x5x10xf32>, vector<11xf32>
        %310 = index.floordivs %rank_38, %c8
        %311 = affine.min affine_map<(d0, d1, d2, d3) -> (0, d3 - d2)>(%306, %113, %140, %c2)
        %312 = arith.xori %true, %false_3 : i1
        %313 = bufferization.to_memref %13 : memref<15xf16>
        %314 = arith.andi %c1126433994_i32, %c605225388_i32 : i32
        %315 = affine.min affine_map<(d0, d1) -> ((d1 floordiv 16) floordiv 32, -((d1 floordiv 16 + 1) floordiv 16), d0)>(%83, %90)
        %316 = math.powf %cst, %cst_1 : f32
        %317 = vector.bitcast %85 : vector<5x11x10xi1> to vector<5x11x10xi1>
        %alloc_60 = memref.alloc() : memref<5x11x10xi1>
        memref.alloca_scope.return %alloc_60 : memref<5x11x10xi1>
      }
      %263 = vector.extract %117[3] : vector<10xi32>
      %264 = arith.divui %c1126433994_i32, %c0_i32 : i32
      %265 = vector.insertelement %false, %145[%154 : index] : vector<10xi1>
      %cast_52 = tensor.cast %7 : tensor<10xi1> to tensor<?xi1>
      %266 = vector.transpose %122, [0] : vector<10xf32> to vector<10xf32>
      %267 = vector.broadcast %false_3 : i1 to vector<5x10xi1>
      %dest_53, %accumulated_value_54 = vector.scan <add>, %48, %267 {inclusive = false, reduction_dim = 1 : i64} : vector<5x11x10xi1>, vector<5x10xi1>
      %268 = arith.floordivsi %c994058116_i64, %c299138035_i64 : i64
      %269 = math.powf %cst_0, %151 : f16
      %270 = math.fpowi %11, %4 : tensor<5x11x10xf16>, tensor<5x11x10xi32>
      %271 = math.log10 %93 : tensor<10x10xf32>
      %272 = vector.broadcast %c1314739036_i64 : i64 to vector<5xi64>
      %273 = vector.multi_reduction <and>, %81, %272 [1, 2] : vector<5x5x10xi64> to vector<5xi64>
      %274 = vector.extract_strided_slice %103 {offsets = [3, 1], sizes = [1, 2], strides = [1, 1]} : vector<5x5x10xi16> to vector<1x2x10xi16>
      %275 = arith.xori %c994058116_i64, %c299138035_i64 : i64
      %276 = math.log10 %11 : tensor<5x11x10xf16>
      %277 = math.log2 %160 : f16
      memref.copy %alloc_7, %alloc_21 : memref<15xf16> to memref<15xf16>
      %278 = arith.cmpf ord, %cst_0, %151 : f16
      %279 = arith.addi %c-6178_i16, %112 : i16
      %280 = math.ctlz %false_5 : i1
      %281 = index.sub %141, %c11
      %282 = vector.broadcast %c605225388_i32 : i32 to vector<5x11x10xi32>
      %alloc_55 = memref.alloc() : memref<15xi16>
      %283 = arith.cmpf false, %cst_0, %cst_0 : f16
      %284 = vector.insertelement %c0_i32, %123[%c14 : index] : vector<10xi32>
      memref.alloca_scope.return %alloc_11 : memref<5x11x10xf32>
    }
    %162 = index.castu %c0_i32 : i32 to index
    %163 = vector.create_mask %rank_38 : vector<10xi1>
    %164 = affine.for %arg2 = 0 to 70 iter_args(%arg3 = %3) -> (tensor<5x5x10xi1>) {
      affine.yield %1 : tensor<5x5x10xi1>
    }
    bufferization.dealloc_tensor %3 : tensor<5x5x10xi1>
    %165 = affine.if affine_set<(d0, d1, d2, d3) : (d3 * 4 + d1 - 2 >= 0, d2 >= 0, (d3 * 4) floordiv 16 >= 0, d3 * -4 == 0)>(%c9, %c11, %c9, %c8) -> memref<15xf32> {
      %255 = index.sizeof
      %inserted_52 = tensor.insert %c0_i32 into %10[%c4] : tensor<10xi32>
      %256 = vector.insertelement %cst_1, %106[%90 : index] : vector<10xf32>
      %257 = memref.atomic_rmw andi %c-6178_i16, %alloc_15[%c0] : (i16, memref<10xi16>) -> i16
      %258 = math.cttz %c994058116_i64 : i64
      %259 = arith.floordivsi %c-6178_i16, %c-6178_i16 : i16
      %260 = arith.shrui %c994058116_i64, %c1314739036_i64 : i64
      %261 = arith.remf %cst, %cst : f32
      affine.yield %alloc_14 : memref<15xf32>
    } else {
      %255 = memref.realloc %alloc_9 : memref<15xi32> to memref<11xi32>
      %256 = affine.load %alloc_17[%c1] : memref<15xf16>
      %257 = affine.max affine_map<(d0, d1) -> (d1 * 32)>(%80, %147)
      %258 = index.add %155, %119
      bufferization.dealloc_tensor %4 : tensor<5x11x10xi32>
      %259 = arith.cmpf ueq, %151, %cst_2 : f16
      %cast_52 = tensor.cast %11 : tensor<5x11x10xf16> to tensor<?x?x?xf16>
      %260 = index.divu %84, %rank
      affine.yield %alloc_14 : memref<15xf32>
    }
    %166 = math.fma %splat, %splat, %splat : tensor<5x5x10xf16>
    %167 = affine.min affine_map<(d0) -> ((d0 - 48) * -8 + 16, (d0 - 48) * 8)>(%84)
    %168 = bufferization.clone %alloc_7 : memref<15xf16> to memref<15xf16>
    %169 = vector.extract %32[0] : vector<1xi1>
    %170 = scf.index_switch %c13 -> tensor<5x5x10xi16> 
    case 1 {
      %255 = math.powf %cst_4, %cst_4 : f32
      %256 = index.add %c1, %141
      %257 = math.log %91 : f16
      %258 = arith.remui %c1314739036_i64, %c994058116_i64 : i64
      %259 = arith.cmpf true, %79, %cst_4 : f32
      %cast_52 = tensor.cast %13 : tensor<15xf16> to tensor<?xf16>
      %260 = arith.addi %false_5, %false_5 : i1
      %261 = arith.subi %c605225388_i32, %c1126433994_i32 : i32
      %262 = vector.extract %145[7] : vector<10xi1>
      %263 = index.castu %c994058116_i64 : i64 to index
      %264 = bufferization.clone %alloc_18 : memref<10xf16> to memref<10xf16>
      %265 = affine.max affine_map<(d0, d1, d2) -> (d0 + 64, d1 mod 8)>(%rank, %c2, %c2)
      %expanded = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<5x5x10xi1> into tensor<5x5x10x1xi1>
      %266 = index.maxu %119, %c10
      %267 = math.ceil %91 : f16
      %268 = math.powf %collapsed, %collapsed : tensor<25x10xf16>
      scf.yield %45 : tensor<5x5x10xi16>
    }
    case 2 {
      %255 = bufferization.to_memref %4 : memref<5x11x10xi32>
      %256 = memref.realloc %alloc_18 : memref<10xf16> to memref<5xf16>
      %257 = vector.broadcast %c7 : index to vector<11xindex>
      %258 = vector.broadcast %false : i1 to vector<11xi1>
      %259 = vector.broadcast %c-6178_i16 : i16 to vector<11xi16>
      vector.scatter %alloc_10[%c5] [%257], %258, %259 : memref<15xi16>, vector<11xindex>, vector<11xi1>, vector<11xi16>
      %260 = index.sizeof
      %261 = index.add %50, %c12
      %262 = bufferization.clone %alloc_16 : memref<10xi64> to memref<10xi64>
      %263 = math.copysign %cst_2, %cst_0 : f16
      %264 = tensor.empty() : tensor<5x11x10xi64>
      %265 = affine.min affine_map<(d0, d1) -> ((d1 mod 32) mod 64, d1 mod 32, d0 * 64 - d1 mod 32 + 4)>(%c6, %c11)
      %266 = arith.shrui %c299138035_i64, %c299138035_i64 : i64
      %267 = vector.splat %50 : vector<10xindex>
      %268 = math.atan %collapsed : tensor<25x10xf16>
      %extracted = tensor.extract %15[%c4, %c4, %c9] : tensor<5x5x10xi32>
      scf.index_switch %c9 
      case 1 {
        %270 = bufferization.to_memref %1 : memref<5x5x10xi1>
        %271 = vector.create_mask %c11, %154, %83 : vector<5x5x10xi1>
        %272 = math.exp2 %13 : tensor<15xf16>
        %273 = math.tanh %20 : tensor<15xf16>
        %274 = arith.addf %cst_2, %cst_2 : f16
        %275 = arith.divui %112, %112 : i16
        %276 = arith.divsi %c299138035_i64, %c299138035_i64 : i64
        %277 = math.sqrt %22 : tensor<f16>
        %278 = index.maxs %80, %c5
        %279 = index.divu %c5, %147
        %280 = index.mul %c2, %155
        %281 = arith.ceildivsi %c1314739036_i64, %c994058116_i64 : i64
        %282 = vector.splat %36 : vector<10xindex>
        %283 = arith.addf %cst_4, %cst_1 : f32
        %284 = vector.splat %84 : vector<5x11x10xindex>
        %285 = index.mul %141, %c8
        scf.yield
      }
      case 2 {
        %270 = arith.cmpf uno, %cst_4, %79 : f32
        %271 = bufferization.to_memref %12 : memref<5x5x10xf16>
        %272 = index.divs %c3, %c10
        %273 = index.castu %141 : index to i32
        %expanded = tensor.expand_shape %20 [[0, 1]] : tensor<15xf16> into tensor<15x1xf16>
        %274 = arith.cmpf oeq, %151, %151 : f16
        %inserted_53 = tensor.insert %cst_1 into %2[%c0] : tensor<10xf32>
        %275 = math.cttz %17 : tensor<5x5x10xi32>
        %276 = arith.minsi %c605225388_i32, %c0_i32 : i32
        bufferization.dealloc_tensor %4 : tensor<5x11x10xi32>
        %277 = math.fma %collapsed, %collapsed, %collapsed : tensor<25x10xf16>
        %278 = bufferization.to_memref %13 : memref<15xf16>
        %cst_54 = arith.constant 1.000000e+00 : f32
        %cst_55 = arith.constant 0.000000e+00 : f32
        %279 = vector.transfer_read %93[%60, %50], %cst_55 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<10x10xf32>, vector<15xf32>
        %280 = arith.remui %false, %false_5 : i1
        %281 = affine.max affine_map<(d0) -> (((d0 ceildiv 32) * 4) ceildiv 32, (d0 ceildiv 32) * 4, (d0 ceildiv 32) * 64)>(%c9)
        bufferization.dealloc_tensor %5 : tensor<5x11x10xi16>
        scf.yield
      }
      default {
        %270 = vector.extract_strided_slice %48 {offsets = [0], sizes = [5], strides = [1]} : vector<5x11x10xi1> to vector<5x11x10xi1>
        vector.print %270 : vector<5x11x10xi1>
        %271 = vector.broadcast %cst : f32 to vector<5x11x10xf32>
        %272 = vector.broadcast %c1126433994_i32 : i32 to vector<5x11x10xi32>
        %273 = vector.gather %alloc_14[%c5] [%272], %85, %271 : memref<15xf32>, vector<5x11x10xi32>, vector<5x11x10xi1>, vector<5x11x10xf32> into vector<5x11x10xf32>
        %274 = math.powf %cst_2, %151 : f16
        %275 = vector.extract %273[0, 6] : vector<5x11x10xf32>
        %276 = math.floor %2 : tensor<10xf32>
        %277 = math.atan2 %cst_6, %160 : f16
        %278 = tensor.empty() : tensor<10xi32>
        %279 = bufferization.to_memref %11 : memref<5x11x10xf16>
        %alloc_53 = memref.alloc() : memref<10x10xf16>
        %280 = tensor.empty() : tensor<25x10xf16>
        %281 = linalg.matmul ins(%collapsed, %alloc_53 : tensor<25x10xf16>, memref<10x10xf16>) outs(%280 : tensor<25x10xf16>) -> tensor<25x10xf16>
        %282 = math.log2 %280 : tensor<25x10xf16>
        %283 = vector.broadcast %false : i1 to vector<5x10xi1>
        %284 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %19, %92, %283 : vector<5xi1>, vector<5x5x10xi1> into vector<5x10xi1>
        %285 = math.cttz %14 : tensor<5x5x10xi32>
        %286 = index.casts %c2 : index to i32
        %287 = arith.minui %c-6178_i16, %112 : i16
        %288 = bufferization.to_tensor %alloc_20 : memref<10xi32>
      }
      %269 = memref.atomic_rmw minf %cst_1, %alloc_14[%c5] : (f32, memref<15xf32>) -> f32
      %inserted_52 = tensor.insert %cst_23 into %2[%c4] : tensor<10xf32>
      scf.yield %45 : tensor<5x5x10xi16>
    }
    case 3 {
      %255 = index.mul %159, %c6
      %256 = index.ceildivu %rank, %50
      %257 = vector.create_mask %40, %141, %rank : vector<5x5x10xi1>
      %258 = arith.remui %c299138035_i64, %c299138035_i64 : i64
      %259 = math.tan %13 : tensor<15xf16>
      bufferization.dealloc_tensor %cast_29 : tensor<?x?x?xi1>
      %260 = math.sqrt %160 : f16
      %261 = math.cttz %c605225388_i32 : i32
      %262 = vector.broadcast %c-6178_i16 : i16 to vector<11xi16>
      %263 = vector.broadcast %false_5 : i1 to vector<11xi1>
      %264 = vector.maskedload %alloc_15[%c6], %263, %262 : memref<10xi16>, vector<11xi1>, vector<11xi16> into vector<11xi16>
      %265 = arith.addi %c605225388_i32, %c0_i32 : i32
      %266 = arith.floordivsi %c0_i32, %c1126433994_i32 : i32
      %false_52 = arith.constant false
      %267 = vector.bitcast %48 : vector<5x11x10xi1> to vector<5x11x10xi1>
      %268 = arith.remf %91, %cst_6 : f16
      %269 = memref.realloc %alloc_12 : memref<10xi32> to memref<5xi32>
      %270 = arith.ceildivsi %c-6178_i16, %c-6178_i16 : i16
      scf.yield %45 : tensor<5x5x10xi16>
    }
    case 4 {
      %255 = vector.extract_strided_slice %69 {offsets = [6], sizes = [2], strides = [1]} : vector<11x10xi1> to vector<2x10xi1>
      %256 = affine.load %alloc_20[%c2] : memref<10xi32>
      affine.store %cst_23, %alloc[%c15, %c13, %c11] : memref<5x5x10xf32>
      %257 = math.ctlz %0 : tensor<5x5x10xi32>
      %258 = vector.extract %117[5] : vector<10xi32>
      %259 = arith.maxui %c0_i32, %c0_i32 : i32
      %260 = arith.remf %cst_23, %cst_4 : f32
      %261 = memref.load %alloc_17[%c13] : memref<15xf16>
      %262 = math.powf %cst_4, %cst_23 : f32
      %263 = memref.realloc %alloc_18 : memref<10xf16> to memref<15xf16>
      %264 = math.ctlz %6 : tensor<5x11x10xi16>
      %splat_52 = tensor.splat %c1314739036_i64 : tensor<5x5x10xi64>
      %265 = index.floordivs %rank_38, %36
      %266 = vector.create_mask %c7, %167, %84 : vector<5x5x10xi1>
      %267 = math.cos %cst_2 : f16
      %268 = arith.remf %cst_1, %cst_4 : f32
      scf.yield %45 : tensor<5x5x10xi16>
    }
    default {
      %255 = index.maxu %155, %rank_38
      %256 = vector.multi_reduction <add>, %81, %81 [] : vector<5x5x10xi64> to vector<5x5x10xi64>
      %257 = math.copysign %151, %151 : f16
      %258 = scf.execute_region -> i32 {
        %270 = memref.atomic_rmw andi %c0_i32, %alloc_12[%c1] : (i32, memref<10xi32>) -> i32
        %271 = vector.broadcast %c1314739036_i64 : i64 to vector<5x10x5x10xi64>
        %272 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %81, %81, %271 : vector<5x5x10xi64>, vector<5x5x10xi64> into vector<5x10x5x10xi64>
        %splat_53 = tensor.splat %c994058116_i64 : tensor<5x5x10xi64>
        %273 = math.tanh %22 : tensor<f16>
        %rank_54 = tensor.rank %cast_29 : tensor<?x?x?xi1>
        %274 = arith.maxui %false, %false_5 : i1
        %275 = affine.min affine_map<(d0, d1, d2, d3) -> (-d2, d2 mod 4 - 2)>(%c0, %c15, %159, %36)
        %c1_i32 = arith.constant 1 : i32
        %c0_i32_55 = arith.constant 0 : i32
        %276 = vector.transfer_read %alloc_9[%159], %c0_i32_55 : memref<15xi32>, vector<i32>
        %277 = arith.remf %cst_6, %151 : f16
        %278 = arith.minsi %c994058116_i64, %c299138035_i64 : i64
        %279 = arith.andi %c605225388_i32, %c1126433994_i32 : i32
        memref.tensor_store %10, %alloc_20 : memref<10xi32>
        %280 = arith.addf %79, %cst_1 : f32
        %281 = affine.load %alloc_7[%c3] : memref<15xf16>
        %282 = index.maxs %c12, %rank
        %283 = index.add %275, %rank
        scf.yield %c0_i32 : i32
      }
      %259 = math.sqrt %21 : tensor<f16>
      %260 = affine.if affine_set<(d0, d1, d2) : (-d2 == 0, -d2 - 64 == 0)>(%c4, %c11, %c13) -> memref<15xi64> {
        %270 = vector.matrix_multiply %122, %118 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf32>, vector<10xf32>) -> vector<1xf32>
        %271 = math.cttz %14 : tensor<5x5x10xi32>
        memref.copy %alloc_12, %alloc_20 : memref<10xi32> to memref<10xi32>
        %272 = arith.andi %c1126433994_i32, %c1126433994_i32 : i32
        affine.store %cst_0, %alloc_17[%c0] : memref<15xf16>
        affine.store %91, %alloc_21[%c2] : memref<15xf16>
        %splat_53 = tensor.splat %91 : tensor<5x5x10xf16>
        %true_54 = arith.constant true
        %alloc_55 = memref.alloc() : memref<15xi64>
        affine.yield %alloc_55 : memref<15xi64>
      } else {
        %270 = math.atan2 %cst_6, %91 : f16
        %271 = math.fma %cst_23, %cst_23, %cst_4 : f32
        %272 = vector.load %74[] : memref<f16>, vector<10xf16>
        %273 = math.ctlz %4 : tensor<5x11x10xi32>
        %274 = math.floor %151 : f16
        %275 = math.tan %91 : f16
        %inserted_53 = tensor.insert %160 into %11[%c0, %c8, %c5] : tensor<5x11x10xf16>
        %276 = index.sub %c5, %113
        %alloc_54 = memref.alloc() : memref<15xi64>
        affine.yield %alloc_54 : memref<15xi64>
      }
      %261 = math.log2 %12 : tensor<5x5x10xf16>
      %262 = arith.remf %cst_0, %cst_0 : f16
      %263 = vector.multi_reduction <xor>, %69, %true [0, 1] : vector<11x10xi1> to i1
      %false_52 = index.bool.constant false
      %264 = arith.minf %cst_4, %cst_1 : f32
      %265 = affine.max affine_map<(d0, d1, d2) -> ((-d0) floordiv 16 - (d0 - d2), d0 * 4, d0 + 8)>(%80, %84, %36)
      %266 = vector.create_mask %80 : vector<10xi1>
      %267 = arith.remf %cst_23, %cst_1 : f32
      %268 = scf.execute_region -> memref<10xf32> {
        %270 = arith.remui %false_3, %false_3 : i1
        %271 = arith.remui %c0_i32, %c1126433994_i32 : i32
        %272 = vector.shuffle %32, %145 [1, 3, 4, 6, 7, 9, 10] : vector<1xi1>, vector<10xi1>
        %273 = tensor.empty() : tensor<10x10xf32>
        %274 = linalg.matmul ins(%93, %93 : tensor<10x10xf32>, tensor<10x10xf32>) outs(%273 : tensor<10x10xf32>) -> tensor<10x10xf32>
        bufferization.dealloc_tensor %12 : tensor<5x5x10xf16>
        %275 = tensor.empty(%c0, %c6) : tensor<5x?x?xf32>
        %276 = math.powf %22, %22 : tensor<f16>
        %277 = arith.minui %false, %false : i1
        %278 = index.sizeof
        %279 = vector.insertelement %false_52, %145[%255 : index] : vector<10xi1>
        %280 = math.exp2 %cst_1 : f32
        %281 = arith.divui %false_52, %false_5 : i1
        %282 = memref.realloc %alloc_7 : memref<15xf16> to memref<10xf16>
        %283 = affine.min affine_map<(d0, d1) -> ((-(d1 floordiv 128) + d1) floordiv 2, -(d1 floordiv 128) + d1, (d1 floordiv 128) * 32)>(%c15, %c4)
        %284 = index.add %265, %c15
        %285 = math.absf %2 : tensor<10xf32>
        scf.yield %alloc_35 : memref<10xf32>
      }
      %269 = math.powf %cst, %cst_4 : f32
      scf.yield %45 : tensor<5x5x10xi16>
    }
    %171 = memref.atomic_rmw mulf %cst, %161[%c2, %c8, %c7] : (f32, memref<5x11x10xf32>) -> f32
    %from_elements = tensor.from_elements %c605225388_i32, %c1126433994_i32, %c605225388_i32, %c605225388_i32, %c605225388_i32, %c1126433994_i32, %c1126433994_i32, %c1126433994_i32, %c605225388_i32, %c605225388_i32 : tensor<10xi32>
    %172 = memref.atomic_rmw addf %79, %161[%c1, %c8, %c5] : (f32, memref<5x11x10xf32>) -> f32
    memref.assume_alignment %alloc_12, 4 : memref<10xi32>
    %173 = affine.max affine_map<(d0, d1) -> ((d0 + d1 - (d0 + d1 - d1) * 4 - d1) ceildiv 4, (d0 + d1 - d1) mod 32, d0 + d1, d1)>(%159, %c9)
    %174 = index.casts %80 : index to i32
    %175 = arith.andi %c1314739036_i64, %c299138035_i64 : i64
    %cst_42 = arith.constant 1.000000e+00 : f16
    %176 = vector.transfer_read %alloc_18[%119], %cst_42 : memref<10xf16>, vector<f16>
    %177 = math.cttz %18 : tensor<10x5x5xi1>
    %178 = vector.insertelement %true, %145[%rank_38 : index] : vector<10xi1>
    memref.assume_alignment %alloc_11, 4 : memref<5x11x10xf32>
    %179 = math.log10 %160 : f16
    %180 = memref.realloc %alloc_19 : memref<15xi1> to memref<5xi1>
    %181 = index.maxs %162, %c12
    %182 = math.log %cst_2 : f16
    %183 = math.fma %93, %93, %93 : tensor<10x10xf32>
    %184 = arith.minui %c0_i32, %c1126433994_i32 : i32
    %185 = vector.matrix_multiply %19, %163 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 2 : i32} : (vector<5xi1>, vector<10xi1>) -> vector<2xi1>
    %186 = math.powf %cst_42, %cst_6 : f16
    %187 = index.maxu %rank, %167
    memref.copy %alloc_12, %alloc_20 : memref<10xi32> to memref<10xi32>
    %188 = math.ceil %91 : f16
    %alloc_43 = memref.alloc() : memref<5xi32>
    %189 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_43 : memref<5xi32>) outs(%0 : tensor<5x5x10xi32>) {
    ^bb0(%in: i32, %out: i32):
      %255 = vector.broadcast %159 : index to vector<5xindex>
      %256 = vector.broadcast %cst_23 : f32 to vector<5xf32>
      vector.scatter %alloc_13[%c2, %c0, %c0] [%255], %19, %256 : memref<5x5x10xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
      %257 = affine.if affine_set<(d0) : ((d0 ceildiv 128 - d0) ceildiv 2 == 0, d0 ceildiv 128 - (d0 ceildiv 128) ceildiv 64 >= 0, 0 >= 0, ((d0 ceildiv 128) ceildiv 64) ceildiv 128 == 0)>(%c0) -> i64 {
        %288 = arith.addi %false_3, %false : i1
        %289 = index.sizeof
        %290 = math.cttz %transposed : tensor<10x5x5xi1>
        %291 = arith.addf %cst_2, %91 : f16
        %292 = arith.ceildivsi %in, %c0_i32 : i32
        %293 = vector.broadcast %false : i1 to vector<5x5xi1>
        %294 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<and>} %145, %92, %293 : vector<10xi1>, vector<5x5x10xi1> into vector<5x5xi1>
        %cast_55 = tensor.cast %7 : tensor<10xi1> to tensor<?xi1>
        %295 = index.ceildivs %c4, %c1
        affine.yield %c299138035_i64 : i64
      } else {
        %288 = vector.load %alloc_13[%c1, %c1, %c3] : memref<5x5x10xf32>, vector<5x5x10xf32>
        %289 = arith.minui %c0_i32, %out : i32
        %290 = vector.create_mask %c2 : vector<10xi1>
        %291 = index.maxs %c6, %46
        %292 = arith.remsi %c605225388_i32, %c605225388_i32 : i32
        %293 = math.expm1 %93 : tensor<10x10xf32>
        %294 = math.cttz %7 : tensor<10xi1>
        %295 = vector.matrix_multiply %106, %118 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf32>, vector<10xf32>) -> vector<1xf32>
        affine.yield %c1314739036_i64 : i64
      }
      %258 = math.cttz %c1126433994_i32 : i32
      %259 = tensor.empty() : tensor<5x11x10xi16>
      %mapped_52 = linalg.map ins(%6 : tensor<5x11x10xi16>) outs(%259 : tensor<5x11x10xi16>)
        (%in_55: i16) {
          %288 = bufferization.to_tensor %alloc_16 : memref<10xi64>
          %289 = math.log2 %collapsed : tensor<25x10xf16>
          %c1449044139_i64 = arith.constant 1449044139 : i64
          %290 = bufferization.to_memref %cast_33 : memref<?x?x?xi32>
          %291 = memref.atomic_rmw addf %cst_42, %126[%c0, %c6, %c9] : (f16, memref<5x11x10xf16>) -> f16
          %292 = memref.realloc %alloc_9 : memref<15xi32> to memref<11xi32>
          %293 = arith.remui %112, %in_55 : i16
          %294 = memref.realloc %alloc_19 : memref<15xi1> to memref<11xi1>
          %295 = index.add %154, %140
          %296 = vector.shuffle %92, %92 [0, 5, 8, 9] : vector<5x5x10xi1>, vector<5x5x10xi1>
          %297 = index.maxu %c12, %162
          %298 = math.sqrt %cst_4 : f32
          %c357812821_i32 = arith.constant 357812821 : i32
          %299 = math.fpowi %2, %10 : tensor<10xf32>, tensor<10xi32>
          %300 = vector.matrix_multiply %19, %32 {lhs_columns = 1 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<1xi1>) -> vector<5xi1>
          bufferization.dealloc_tensor %20 : tensor<15xf16>
          %301 = index.maxu %rank_38, %181
          %302 = arith.remui %c-6178_i16, %in_55 : i16
          %303 = vector.extract_strided_slice %123 {offsets = [5], sizes = [2], strides = [1]} : vector<10xi32> to vector<2xi32>
          affine.store %cst_4, %alloc_13[%c10, %c14, %c12] : memref<5x5x10xf32>
          %304 = index.divs %c2, %187
          %305 = affine.apply affine_map<(d0) -> (-4)>(%60)
          %306 = math.sqrt %20 : tensor<15xf16>
          %307 = arith.floordivsi %true, %false : i1
          affine.store %in, %alloc_20[%c9] : memref<10xi32>
          %308 = vector.shuffle %69, %69 [2, 6, 10, 11, 15, 16, 21] : vector<11x10xi1>, vector<11x10xi1>
          %309 = tensor.empty() : tensor<15xi16>
          %310 = vector.broadcast %c605225388_i32 : i32 to vector<5x5x10xi32>
          %311 = vector.gather %309[%113] [%310], %92, %103 : tensor<15xi16>, vector<5x5x10xi32>, vector<5x5x10xi1>, vector<5x5x10xi16> into vector<5x5x10xi16>
          %rank_56 = tensor.rank %17 : tensor<5x5x10xi32>
          %312 = arith.cmpi uge, %in_55, %112 : i16
          %313 = arith.remf %cst_0, %cst_42 : f16
          %314 = vector.multi_reduction <maxui>, %48, %67 [0] : vector<5x11x10xi1> to vector<11x10xi1>
          %315 = bufferization.clone %alloc_7 : memref<15xf16> to memref<15xf16>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      bufferization.dealloc_tensor %93 : tensor<10x10xf32>
      %260 = index.divu %140, %c14
      %261 = math.exp %11 : tensor<5x11x10xf16>
      %262 = math.exp2 %cst_2 : f16
      %263 = vector.flat_transpose %32 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
      %264 = tensor.empty() : tensor<f16>
      %mapped_53 = linalg.map ins(%21, %74, %21 : tensor<f16>, memref<f16>, tensor<f16>) outs(%264 : tensor<f16>)
        (%in_55: f16, %in_56: f16, %in_57: f16) {
          %alloc_58 = memref.alloc() : memref<10x10xf16>
          %288 = tensor.empty() : tensor<25x10xf16>
          %289 = linalg.matmul ins(%collapsed, %alloc_58 : tensor<25x10xf16>, memref<10x10xf16>) outs(%288 : tensor<25x10xf16>) -> tensor<25x10xf16>
          %290 = arith.floordivsi %112, %c-6178_i16 : i16
          %291 = math.fma %79, %cst_4, %cst_23 : f32
          %292 = arith.divui %in, %out : i32
          %293 = index.castu %c1314739036_i64 : i64 to index
          %294 = arith.xori %false_5, %false_5 : i1
          %c1_i32 = arith.constant 1 : i32
          %295 = vector.transfer_read %4[%119, %155, %167], %c1_i32 : tensor<5x11x10xi32>, vector<5x11xi32>
          %296 = vector.flat_transpose %19 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
          %297 = math.log2 %13 : tensor<15xf16>
          %298 = math.log1p %13 : tensor<15xf16>
          %cast_59 = tensor.cast %14 : tensor<5x5x10xi32> to tensor<?x?x?xi32>
          %299 = bufferization.to_tensor %alloc_10 : memref<15xi16>
          %300 = index.mul %113, %141
          %301 = math.tanh %cst_2 : f16
          %alloc_60 = memref.alloc() : memref<10xi1>
          memref.tensor_store %7, %alloc_60 : memref<10xi1>
          %302 = arith.shrui %in, %c1_i32 : i32
          %303 = vector.bitcast %81 : vector<5x5x10xi64> to vector<5x5x10xi64>
          %304 = memref.atomic_rmw mulf %cst_6, %alloc_21[%c3] : (f16, memref<15xf16>) -> f16
          %305 = math.log10 %79 : f32
          %306 = math.log2 %264 : tensor<f16>
          %307 = arith.floordivsi %c1_i32, %c0_i32 : i32
          %308 = math.round %cst_2 : f16
          %309 = arith.minsi %c299138035_i64, %c994058116_i64 : i64
          %310 = bufferization.to_tensor %126 : memref<5x11x10xf16>
          %311 = math.cttz %c299138035_i64 : i64
          %312 = arith.minf %cst_2, %in_55 : f16
          %313 = arith.cmpf uno, %79, %cst : f32
          memref.store %in_57, %74[] : memref<f16>
          %314 = arith.xori %false, %false : i1
          %315 = index.divs %154, %c6
          %316 = math.cttz %14 : tensor<5x5x10xi32>
          %317 = index.divu %c1, %84
          %cst_61 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_61 : f16
        }
      %265 = tensor.empty() : tensor<5x5x10xi1>
      %mapped_54 = linalg.map ins(%3, %3 : tensor<5x5x10xi1>, tensor<5x5x10xi1>) outs(%265 : tensor<5x5x10xi1>)
        (%in_55: i1, %in_56: i1) {
          memref.assume_alignment %alloc_19, 8 : memref<15xi1>
          %288 = arith.subi %false_3, %in_55 : i1
          %289 = math.sqrt %2 : tensor<10xf32>
          memref.tensor_store %13, %alloc_7 : memref<15xf16>
          %290 = index.add %181, %c10
          %291 = vector.load %alloc_14[%c9] : memref<15xf32>, vector<10xf32>
          %292 = vector.insertelement %79, %291[%141 : index] : vector<10xf32>
          %293 = arith.divsi %c1126433994_i32, %in : i32
          %294 = index.floordivs %60, %c8
          %295 = math.rsqrt %cst_23 : f32
          %collapsed_57 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<5x5x10xi32> into tensor<25x10xi32>
          %296 = vector.reduction <mul>, %123 : vector<10xi32> into i32
          %297 = vector.flat_transpose %163 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
          %298 = index.add %c7, %c12
          %cast_58 = tensor.cast %259 : tensor<5x11x10xi16> to tensor<?x?x?xi16>
          %299 = math.ipowi %3, %1 : tensor<5x5x10xi1>
          %300 = bufferization.to_memref %splat : memref<5x5x10xf16>
          %301 = math.exp2 %cst_1 : f32
          %302 = index.maxu %c4, %141
          %303 = math.fma %collapsed, %collapsed, %collapsed : tensor<25x10xf16>
          %304 = index.floordivs %c3, %36
          %305 = memref.realloc %alloc_14 : memref<15xf32> to memref<10xf32>
          %306 = vector.broadcast %160 : f16 to vector<10xf16>
          %307 = index.sizeof
          %308 = arith.addf %cst_1, %cst_1 : f32
          %309 = arith.subi %c605225388_i32, %out : i32
          %310 = arith.xori %false_3, %false_5 : i1
          %cast_59 = tensor.cast %18 : tensor<10x5x5xi1> to tensor<?x?x?xi1>
          %311 = affine.apply affine_map<(d0, d1) -> (d0 + d1 - d1)>(%90, %187)
          %312 = arith.remf %cst, %79 : f32
          %313 = affine.load %161[%c7, %c10, %c9] : memref<5x11x10xf32>
          %inserted_60 = tensor.insert %160 into %splat[%c1, %c2, %c3] : tensor<5x5x10xf16>
          %false_61 = arith.constant false
          linalg.yield %false_61 : i1
        }
      %266 = memref.realloc %alloc_15 : memref<10xi16> to memref<5xi16>
      %267 = index.divs %141, %260
      %268 = arith.xori %false, %false : i1
      %269 = arith.remf %cst_42, %cst_0 : f16
      %270 = math.fma %cst_0, %cst_0, %160 : f16
      %271 = math.absi %9 : tensor<5x11x10xi32>
      %272 = arith.divf %160, %cst_2 : f16
      %273 = vector.broadcast %c2 : index to vector<11xindex>
      %274 = vector.broadcast %false_3 : i1 to vector<11xi1>
      vector.scatter %alloc_19[%c6] [%273], %274, %274 : memref<15xi1>, vector<11xindex>, vector<11xi1>, vector<11xi1>
      %275 = index.maxs %80, %c5
      %c1673619818_i64 = arith.constant 1673619818 : i64
      %276 = vector.broadcast %false_3 : i1 to vector<1x1xi1>
      %277 = vector.outerproduct %32, %263, %276 {kind = #vector.kind<or>} : vector<1xi1>, vector<1xi1>
      %278 = math.absf %cst_0 : f16
      %279 = math.cttz %c-6178_i16 : i16
      %280 = math.log %11 : tensor<5x11x10xf16>
      %281 = index.casts %c9 : index to i32
      %c2019727737_i32 = arith.constant 2019727737 : i32
      %282 = index.divs %46, %64
      %283 = vector.broadcast %c1126433994_i32 : i32 to vector<i32>
      %284 = vector.transfer_write %283, %9[%119, %80, %282] : vector<i32>, tensor<5x11x10xi32>
      %285 = arith.andi %false_3, %false : i1
      %286 = affine.max affine_map<(d0, d1) -> (d1 mod 32, d0, 0)>(%c3, %140)
      %287 = math.cos %cst_1 : f32
      linalg.yield %out : i32
    } -> tensor<5x5x10xi32>
    %190 = arith.addf %79, %cst_1 : f32
    %191 = math.copysign %13, %13 : tensor<15xf16>
    %192 = vector.broadcast %true : i1 to vector<5x11xi1>
    %193 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minui>} %48, %68, %192 : vector<5x11x10xi1>, vector<10xi1> into vector<5x11xi1>
    %194 = math.exp %12 : tensor<5x5x10xf16>
    %195 = tensor.empty() : tensor<15xi32>
    %196 = index.ceildivu %c10, %46
    %197 = index.sizeof
    %198 = index.castu %c1126433994_i32 : i32 to index
    %199 = affine.max affine_map<(d0, d1) -> (d1 - 64, d1 * 64, d0 + 2, d1 - 64)>(%113, %46)
    bufferization.dealloc_tensor %14 : tensor<5x5x10xi32>
    %200 = math.tan %cst_1 : f32
    %201 = arith.divsi %c0_i32, %c0_i32 : i32
    memref.store %cst_6, %alloc_7[%c1] : memref<15xf16>
    %202 = math.fma %cst_1, %cst_4, %cst_4 : f32
    %203 = math.exp %22 : tensor<f16>
    %rank_44 = tensor.rank %9 : tensor<5x11x10xi32>
    %204 = math.log %cst : f32
    %205 = affine.apply affine_map<(d0, d1, d2) -> (-d0)>(%c6, %159, %c0)
    %206 = arith.remf %cst_1, %cst_4 : f32
    %207 = memref.atomic_rmw addf %151, %126[%c2, %c2, %c5] : (f16, memref<5x11x10xf16>) -> f16
    %208 = vector.insertelement %c605225388_i32, %117[%187 : index] : vector<10xi32>
    %inserted_45 = tensor.insert %c605225388_i32 into %4[%c0, %c4, %c9] : tensor<5x11x10xi32>
    %209 = arith.ceildivsi %false_5, %false_5 : i1
    %210 = index.divs %154, %84
    %211 = arith.xori %false_5, %false_3 : i1
    %212 = index.mul %119, %80
    %213 = vector.splat %c15 : vector<10xindex>
    %214 = vector.matrix_multiply %185, %32 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<2xi1>, vector<1xi1>) -> vector<2xi1>
    %215 = index.add %c13, %36
    %216 = math.tanh %cst_0 : f16
    %217 = arith.maxui %c-6178_i16, %112 : i16
    %218 = arith.cmpi ne, %c0_i32, %c605225388_i32 : i32
    %219 = vector.broadcast %cst_0 : f16 to vector<5x5x10xf16>
    %220 = arith.ceildivsi %c605225388_i32, %c1126433994_i32 : i32
    %221 = vector.matrix_multiply %185, %66 {lhs_columns = 2 : i32, lhs_rows = 1 : i32, rhs_columns = 5 : i32} : (vector<2xi1>, vector<10xi1>) -> vector<5xi1>
    %222 = vector.shuffle %163, %214 [2, 3, 5, 6, 8, 9, 10, 11] : vector<10xi1>, vector<2xi1>
    %223 = math.exp2 %cst_6 : f16
    %224 = affine.load %161[%c11, %c14, %c6] : memref<5x11x10xf32>
    %inserted_46 = tensor.insert %false_3 into %transposed[%c5, %c3, %c1] : tensor<10x5x5xi1>
    %225 = arith.cmpf false, %cst_42, %151 : f16
    %226 = index.castu %true : i1 to index
    %227 = math.log %cst_2 : f16
    %228 = index.sizeof
    %229 = math.rsqrt %cst_6 : f16
    %230 = math.fpowi %13, %8 : tensor<15xf16>, tensor<15xi32>
    %231 = math.rsqrt %13 : tensor<15xf16>
    %alloc_47 = memref.alloc() : memref<10x5xf16>
    %232 = tensor.empty() : tensor<25x5xf16>
    %233 = linalg.matmul ins(%collapsed, %alloc_47 : tensor<25x10xf16>, memref<10x5xf16>) outs(%232 : tensor<25x5xf16>) -> tensor<25x5xf16>
    %alloc_48 = memref.alloc() : memref<10xf32>
    memref.copy %alloc_35, %alloc_48 : memref<10xf32> to memref<10xf32>
    %234 = bufferization.to_memref %2 : memref<10xf32>
    %235 = vector.extract_strided_slice %106 {offsets = [5], sizes = [2], strides = [1]} : vector<10xf32> to vector<2xf32>
    %alloc_49 = memref.alloc() : memref<5x5x10xi16>
    memref.copy %alloc_8, %alloc_49 : memref<5x5x10xi16> to memref<5x5x10xi16>
    affine.store %cst_42, %74[] : memref<f16>
    %236 = math.absi %8 : tensor<15xi32>
    %237 = index.mul %167, %c6
    %238 = arith.floordivsi %c605225388_i32, %c0_i32 : i32
    %239 = arith.negf %cst_6 : f16
    memref.assume_alignment %alloc_20, 1 : memref<10xi32>
    %240 = index.divu %c15, %141
    %241 = vector.broadcast %c299138035_i64 : i64 to vector<15xi64>
    %242 = vector.shuffle %66, %214 [3, 6, 9] : vector<10xi1>, vector<2xi1>
    %243 = arith.divui %c1314739036_i64, %c1314739036_i64 : i64
    %244 = vector.broadcast %c1126433994_i32 : i32 to vector<5x5x10xi32>
    %245 = arith.remf %cst, %cst_23 : f32
    %246 = arith.divui %c1126433994_i32, %c0_i32 : i32
    %247 = affine.min affine_map<(d0, d1, d2) -> ((d1 - (d0 + 2)) floordiv 4, d1 * 2 - d0, (d1 * 2) floordiv 8, d1 mod 4 - (d2 - d0 - 2))>(%36, %237, %36)
    %248 = vector.multi_reduction <add>, %106, %118 [] : vector<10xf32> to vector<10xf32>
    %249 = tensor.empty() : tensor<10xi1>
    %mapped_50 = linalg.map ins(%7, %7, %7 : tensor<10xi1>, tensor<10xi1>, tensor<10xi1>) outs(%249 : tensor<10xi1>)
      (%in: i1, %in_52: i1, %in_53: i1) {
        %255 = arith.divui %c0_i32, %c1126433994_i32 : i32
        %alloc_54 = memref.alloc() : memref<10x10xf32>
        memref.tensor_store %93, %alloc_54 : memref<10x10xf32>
        %256 = math.absf %12 : tensor<5x5x10xf16>
        bufferization.dealloc_tensor %4 : tensor<5x11x10xi32>
        %257 = index.sub %c3, %197
        %258 = vector.broadcast %79 : f32 to vector<15xf32>
        %259 = vector.broadcast %true : i1 to vector<15xi1>
        %260 = vector.maskedload %alloc_11[%c1, %c3, %c1], %259, %258 : memref<5x11x10xf32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
        %261 = math.atan2 %12, %12 : tensor<5x5x10xf16>
        %262 = math.rsqrt %22 : tensor<f16>
        %263 = vector.multi_reduction <maxui>, %185, %in_53 [0] : vector<2xi1> to i1
        %264 = vector.load %161[%c3, %c0, %c1] : memref<5x11x10xf32>, vector<15xf32>
        %265 = vector.splat %c4 : vector<5x11x10xindex>
        %266 = index.sub %173, %rank_38
        %267 = index.maxu %rank, %c15
        %268 = vector.reduction <minf>, %118 : vector<10xf32> into f32
        %269 = vector.broadcast %in_52 : i1 to vector<11xi1>
        %270 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %68, %67, %269 : vector<10xi1>, vector<11x10xi1> into vector<11xi1>
        affine.store %cst, %alloc_11[%c1, %c2, %c6] : memref<5x11x10xf32>
        %271 = arith.remf %91, %160 : f16
        %272 = arith.andi %c1126433994_i32, %c0_i32 : i32
        %273 = arith.cmpf ult, %79, %cst_23 : f32
        %rank_55 = tensor.rank %195 : tensor<15xi32>
        %274 = arith.remsi %263, %false : i1
        %275 = arith.subi %c605225388_i32, %c605225388_i32 : i32
        %276 = bufferization.to_memref %93 : memref<10x10xf32>
        %277 = math.absi %6 : tensor<5x11x10xi16>
        %278 = arith.cmpf ole, %160, %cst_42 : f16
        %279 = arith.shrui %false, %in_53 : i1
        %280 = arith.floordivsi %false_3, %true : i1
        %cast_56 = tensor.cast %5 : tensor<5x11x10xi16> to tensor<?x?x?xi16>
        %281 = memref.realloc %alloc_17 : memref<15xf16> to memref<15xf16>
        %alloc_57 = memref.alloc() : memref<10x10xf32>
        memref.copy %276, %alloc_57 : memref<10x10xf32> to memref<10x10xf32>
        memref.alloca_scope  {
          %283 = math.rsqrt %cst_0 : f16
          %284 = vector.broadcast %cst_6 : f16 to vector<10xf16>
          %cast_59 = tensor.cast %11 : tensor<5x11x10xf16> to tensor<?x?x?xf16>
          %285 = index.castu %84 : index to i32
          %286 = index.divs %187, %64
          %287 = index.maxu %36, %247
          %288 = math.exp2 %12 : tensor<5x5x10xf16>
          %289 = arith.shrsi %in, %false_5 : i1
          %290 = arith.cmpf one, %cst_42, %151 : f16
          %291 = vector.matrix_multiply %117, %117 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi32>, vector<10xi32>) -> vector<1xi32>
          %from_elements_60 = tensor.from_elements %112, %112, %c-6178_i16, %c-6178_i16, %112, %112, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %112, %112, %112, %c-6178_i16, %112, %112, %112, %c-6178_i16, %112, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %c-6178_i16, %112, %112, %112, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %112, %112, %c-6178_i16, %112, %112, %112, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %112, %c-6178_i16, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %112, %112, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %c-6178_i16, %112, %112, %112, %112, %c-6178_i16, %112, %112, %112, %c-6178_i16, %112, %112, %c-6178_i16, %112, %c-6178_i16, %c-6178_i16, %112, %112, %c-6178_i16, %112, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %112, %112, %112, %112, %112, %c-6178_i16, %112, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %112, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %112, %c-6178_i16, %c-6178_i16, %112, %112, %112, %112, %c-6178_i16, %c-6178_i16, %112, %112, %112, %112, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %112, %112, %112, %112, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %112, %112, %c-6178_i16, %112, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %112, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %112, %112, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %112, %c-6178_i16, %112, %c-6178_i16, %c-6178_i16, %112, %112, %112, %112, %112, %112, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %112, %c-6178_i16, %112, %112, %112, %112, %c-6178_i16, %112, %c-6178_i16, %112, %c-6178_i16, %112, %c-6178_i16, %112, %c-6178_i16, %112, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %c-6178_i16, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %112, %c-6178_i16, %112, %112, %c-6178_i16, %c-6178_i16, %112, %112, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %112, %112, %c-6178_i16, %112, %c-6178_i16, %c-6178_i16, %112, %c-6178_i16, %112, %112, %112, %112, %c-6178_i16, %c-6178_i16, %112, %112, %c-6178_i16 : tensor<5x5x10xi16>
          %c1340350170_i64 = arith.constant 1340350170 : i64
          %292 = vector.broadcast %cst_23 : f32 to vector<10xf32>
          %293 = vector.fma %292, %106, %106 : vector<10xf32>
          %294 = math.fma %224, %cst_4, %79 : f32
          %295 = index.castu %c994058116_i64 : i64 to index
          affine.store %c0_i32, %alloc_12[%c8] : memref<10xi32>
          %296 = index.casts %c7 : index to i32
          %297 = math.log10 %splat : tensor<5x5x10xf16>
          %298 = index.ceildivu %83, %c13
          %299 = arith.shrui %in_52, %in_53 : i1
          %300 = index.add %181, %c14
          %301 = arith.remui %263, %in_52 : i1
          bufferization.dealloc_tensor %16 : tensor<5x5x10xi32>
          %302 = math.exp2 %2 : tensor<10xf32>
          %303 = index.maxs %rank, %141
          %304 = index.divs %226, %199
          %305 = math.absf %13 : tensor<15xf16>
          %306 = math.log2 %224 : f32
          %c0_i32_61 = arith.constant 0 : i32
          %307 = vector.transfer_read %17[%141, %113, %c5], %c0_i32_61 : tensor<5x5x10xi32>, vector<10xi32>
          %308 = math.rsqrt %151 : f16
          %309 = vector.broadcast %79 : f32 to vector<15xf32>
          %310 = vector.fma %309, %264, %264 : vector<15xf32>
          %311 = index.castu %rank_55 : index to i32
        }
        %282 = arith.divui %112, %112 : i16
        %false_58 = arith.constant false
        linalg.yield %false_58 : i1
      }
    %250 = tensor.empty() : tensor<5x11x10xf16>
    %251 = linalg.copy ins(%11 : tensor<5x11x10xf16>) outs(%250 : tensor<5x11x10xf16>) -> tensor<5x11x10xf16>
    %252 = tensor.empty(%c12, %228, %84) : tensor<?x?x?xf16>
    %transposed_51 = linalg.transpose ins(%cast : tensor<?x?x?xf16>) outs(%252 : tensor<?x?x?xf16>) permutation = [2, 0, 1] 
    %253 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%alloc_35 : memref<10xf32>) outs(%253 : tensor<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %c0_i32_52 = arith.constant 0 : i32
        %255 = vector.transfer_read %9[%162, %113, %c6], %c0_i32_52 : tensor<5x11x10xi32>, vector<15x5xi32>
        %256 = vector.shuffle %214, %221 [2, 4, 5] : vector<2xi1>, vector<5xi1>
        %257 = arith.divsi %c605225388_i32, %c605225388_i32 : i32
        %258 = arith.floordivsi %c0_i32, %c1126433994_i32 : i32
        %259 = bufferization.to_memref %22 : memref<f16>
        %260 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, -(d3 ceildiv 4))>(%c15, %198, %141, %199)
        %261 = index.castu %80 : index to i32
        %262 = index.sizeof
        %cst_53 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_53 : f32
      }
    scf.parallel (%arg2) = (%205) to (%240) step (%c5) {
      %alloc_52 = memref.alloc() : memref<5x11x10xi64>
      %255 = math.sqrt %cst_1 : f32
      %256 = vector.splat %rank_38 : vector<15xindex>
      %257 = vector.broadcast %c299138035_i64 : i64 to vector<5xi64>
      %258 = vector.maskedload %alloc_16[%c7], %19, %257 : memref<10xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
      %cst_53 = arith.constant 1.000000e+00 : f32
      %259 = vector.transfer_read %2[%119], %cst_53 : tensor<10xf32>, vector<f32>
      %260 = arith.shrui %c0_i32, %c1126433994_i32 : i32
      %261 = index.mul %154, %181
      %c2002007207_i64 = arith.constant 2002007207 : i64
      %262 = memref.realloc %alloc_9 : memref<15xi32> to memref<15xi32>
      %extracted = tensor.extract %2[%c3] : tensor<10xf32>
      %inserted_54 = tensor.insert %c1126433994_i32 into %9[%c4, %c3, %c0] : tensor<5x11x10xi32>
      %263 = vector.broadcast %cst_23 : f32 to vector<5xf32>
      %264 = vector.maskedload %alloc_13[%c0, %c4, %c6], %221, %263 : memref<5x5x10xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
      %265 = arith.addf %cst_2, %cst_2 : f16
      %266 = index.floordivs %83, %c4
      %alloc_55 = memref.alloc() : memref<5x11xf16>
      %267 = tensor.empty() : tensor<25x11xf16>
      %268 = linalg.matmul ins(%232, %alloc_55 : tensor<25x5xf16>, memref<5x11xf16>) outs(%267 : tensor<25x11xf16>) -> tensor<25x11xf16>
      %alloc_56 = memref.alloc() : memref<10xi1>
      memref.tensor_store %7, %alloc_56 : memref<10xi1>
      scf.yield
    }
    %254 = affine.vector_load %alloc_18[%rank_44] : memref<10xf16>, vector<5xf16>
    affine.vector_store %185, %alloc_22[] : memref<i1>, vector<2xi1>
    vector.print %19 : vector<5xi1>
    vector.print %32 : vector<1xi1>
    vector.print %48 : vector<5x11x10xi1>
    vector.print %66 : vector<10xi1>
    vector.print %67 : vector<11x10xi1>
    vector.print %68 : vector<10xi1>
    vector.print %69 : vector<11x10xi1>
    vector.print %81 : vector<5x5x10xi64>
    vector.print %85 : vector<5x11x10xi1>
    vector.print %92 : vector<5x5x10xi1>
    vector.print %103 : vector<5x5x10xi16>
    vector.print %106 : vector<10xf32>
    vector.print %117 : vector<10xi32>
    vector.print %118 : vector<10xf32>
    vector.print %122 : vector<10xf32>
    vector.print %123 : vector<10xi32>
    vector.print %133 : vector<f32>
    vector.print %145 : vector<10xi1>
    vector.print %163 : vector<10xi1>
    vector.print %185 : vector<2xi1>
    vector.print %214 : vector<2xi1>
    vector.print %219 : vector<5x5x10xf16>
    vector.print %221 : vector<5xi1>
    vector.print %235 : vector<2xf32>
    vector.print %241 : vector<15xi64>
    vector.print %244 : vector<5x5x10xi32>
    vector.print %254 : vector<5xf16>
    vector.print %false : i1
    vector.print %cst : f32
    vector.print %c1126433994_i32 : i32
    vector.print %cst_0 : f16
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %false_3 : i1
    vector.print %c-6178_i16 : i16
    vector.print %cst_4 : f32
    vector.print %false_5 : i1
    vector.print %c994058116_i64 : i64
    vector.print %c299138035_i64 : i64
    vector.print %cst_6 : f16
    vector.print %c1314739036_i64 : i64
    vector.print %true : i1
    vector.print %c605225388_i32 : i32
    vector.print %cst_23 : f32
    vector.print %c0_i32 : i32
    vector.print %79 : f32
    vector.print %91 : f16
    vector.print %112 : i16
    vector.print %151 : f16
    vector.print %160 : f16
    vector.print %cst_42 : f16
    vector.print %224 : f32
    return
  }
}
