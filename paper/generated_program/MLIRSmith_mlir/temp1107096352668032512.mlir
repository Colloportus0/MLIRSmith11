module {
  func.func private @func1() {
    %c1001199181_i32 = arith.constant 1001199181 : i32
    %cst = arith.constant 1.54769536E+9 : f32
    %true = arith.constant true
    %c27041_i16 = arith.constant 27041 : i16
    %c637764511_i64 = arith.constant 637764511 : i64
    %c1241933340_i32 = arith.constant 1241933340 : i32
    %c1540828751_i64 = arith.constant 1540828751 : i64
    %c-23333_i16 = arith.constant -23333 : i16
    %c8047_i16 = arith.constant 8047 : i16
    %cst_0 = arith.constant 3.526400e+04 : f16
    %c23004_i16 = arith.constant 23004 : i16
    %c494475913_i64 = arith.constant 494475913 : i64
    %cst_1 = arith.constant 1.718400e+04 : f16
    %cst_2 = arith.constant 4.604800e+04 : f16
    %cst_3 = arith.constant 6.313390e+08 : f32
    %cst_4 = arith.constant 4.739200e+04 : f16
    %0 = tensor.empty() : tensor<11xf16>
    %1 = tensor.empty() : tensor<8xf32>
    %2 = tensor.empty() : tensor<8x10x11xi16>
    %3 = tensor.empty() : tensor<8xi32>
    %4 = tensor.empty() : tensor<11xf32>
    %5 = tensor.empty() : tensor<10x8xi16>
    %6 = tensor.empty() : tensor<10x8xf16>
    %7 = tensor.empty() : tensor<8x10x11xi1>
    %8 = tensor.empty() : tensor<8x10x11xi32>
    %9 = tensor.empty() : tensor<10x8xi64>
    %10 = tensor.empty() : tensor<10x8xi32>
    %11 = tensor.empty() : tensor<11xi1>
    %12 = tensor.empty() : tensor<10x8xi16>
    %13 = tensor.empty() : tensor<8xf32>
    %14 = tensor.empty() : tensor<11xi64>
    %15 = tensor.empty() : tensor<11xf16>
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
    %alloc = memref.alloc() : memref<10x8xi32>
    %alloc_5 = memref.alloc() : memref<10x8xi32>
    %alloc_6 = memref.alloc() : memref<8x10x11xi32>
    %alloc_7 = memref.alloc() : memref<11xi32>
    %alloc_8 = memref.alloc() : memref<8xf32>
    %alloc_9 = memref.alloc() : memref<11xf16>
    %alloc_10 = memref.alloc() : memref<10x8xi1>
    %alloc_11 = memref.alloc() : memref<10x8xf16>
    %alloc_12 = memref.alloc() : memref<8x10x11xi32>
    %alloc_13 = memref.alloc() : memref<8x10x11xf16>
    %alloc_14 = memref.alloc() : memref<8x10x11xi32>
    %alloc_15 = memref.alloc() : memref<11xi16>
    %alloc_16 = memref.alloc() : memref<11xf16>
    %alloc_17 = memref.alloc() : memref<11xf16>
    %alloc_18 = memref.alloc() : memref<8xi32>
    %alloc_19 = memref.alloc() : memref<10x8xf16>
    %16 = tensor.empty() : tensor<11xi1>
    %17 = linalg.copy ins(%11 : tensor<11xi1>) outs(%16 : tensor<11xi1>) -> tensor<11xi1>
    %alloc_20 = memref.alloc() : memref<11xf32>
    linalg.transpose ins(%4 : tensor<11xf32>) outs(%alloc_20 : memref<11xf32>) permutation = [0] 
    %18 = tensor.empty() : tensor<f16>
    %reduced = linalg.reduce ins(%0 : tensor<11xf16>) outs(%18 : tensor<f16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %268 = affine.load %alloc_16[%c4] : memref<11xf16>
        %269 = vector.create_mask %c10 : vector<11xi1>
        %270 = vector.broadcast %c0 : index to vector<11xindex>
        %271 = vector.broadcast %c1001199181_i32 : i32 to vector<11xi32>
        vector.scatter %alloc_12[%c7, %c5, %c8] [%270], %269, %271 : memref<8x10x11xi32>, vector<11xindex>, vector<11xi1>, vector<11xi32>
        %272 = bufferization.clone %alloc_20 : memref<11xf32> to memref<11xf32>
        %273 = arith.maxsi %c1001199181_i32, %c1001199181_i32 : i32
        %274 = math.absi %3 : tensor<8xi32>
        %275 = arith.maxui %c23004_i16, %c27041_i16 : i16
        %alloc_34 = memref.alloc() : memref<8xf32>
        %cst_35 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_35 : f16
      }
    %19 = scf.parallel (%arg0, %arg1) = (%c12, %c13) to (%c2, %c3) step (%c4, %c13) init (%15) -> tensor<11xf16> {
      %268 = arith.remsi %c637764511_i64, %c1540828751_i64 : i64
      %269 = memref.realloc %alloc_15 : memref<11xi16> to memref<10xi16>
      affine.store %cst_1, %alloc_13[%c13, %c9, %c3] : memref<8x10x11xf16>
      memref.store %cst_0, %alloc_13[%c3, %c4, %c1] : memref<8x10x11xf16>
      %270 = arith.maxui %c637764511_i64, %c1540828751_i64 : i64
      %271 = math.atan %cst_4 : f16
      %272 = vector.broadcast %true : i1 to vector<8xi1>
      %273 = vector.broadcast %cst : f32 to vector<11xf32>
      %274 = vector.fma %273, %273, %273 : vector<11xf32>
      %275 = math.log2 %15 : tensor<11xf16>
      %276 = vector.insert %cst, %274 [9] : f32 into vector<11xf32>
      %277 = vector.extract %272[5] : vector<8xi1>
      %278 = math.exp2 %18 : tensor<f16>
      %279 = vector.multi_reduction <mul>, %273, %cst_3 [0] : vector<11xf32> to f32
      %280 = arith.subi %c23004_i16, %c8047_i16 : i16
      %281 = arith.addi %c1540828751_i64, %c637764511_i64 : i64
      %282 = tensor.empty() : tensor<11xi32>
      %283 = math.fpowi %0, %282 : tensor<11xf16>, tensor<11xi32>
      %284 = affine.if affine_set<(d0, d1) : (d1 * 2 == 0)>(%c7, %c3) -> i16 {
        %286 = math.sqrt %0 : tensor<11xf16>
        %287 = math.log10 %cst_0 : f16
        %288 = vector.multi_reduction <add>, %274, %274 [] : vector<11xf32> to vector<11xf32>
        %289 = math.atan %cst_2 : f16
        %290 = bufferization.clone %alloc_5 : memref<10x8xi32> to memref<10x8xi32>
        %291 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 floordiv 64, -d3, d1 - 128, d2 - (d0 + d2) + 64)>(%arg1, %c8, %c9, %c6)
        %c1594371264_i32 = arith.constant 1594371264 : i32
        %rank_34 = tensor.rank %8 : tensor<8x10x11xi32>
        affine.yield %c8047_i16 : i16
      } else {
        %286 = arith.maxui %c494475913_i64, %c494475913_i64 : i64
        %287 = math.copysign %6, %6 : tensor<10x8xf16>
        %288 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%c13, %c8, %c6)
        %289 = math.fma %0, %15, %0 : tensor<11xf16>
        %290 = math.tan %4 : tensor<11xf32>
        %291 = vector.broadcast %c5 : index to vector<10xindex>
        %292 = vector.broadcast %true : i1 to vector<10xi1>
        vector.scatter %alloc_10[%c3, %c2] [%291], %292, %292 : memref<10x8xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
        %293 = index.ceildivs %c6, %c12
        %294 = index.add %c1, %c14
        affine.yield %c27041_i16 : i16
      }
      %285 = tensor.empty() : tensor<11xf16>
      scf.reduce(%285)  : tensor<11xf16> {
      ^bb0(%arg2: tensor<11xf16>, %arg3: tensor<11xf16>):
        %286 = index.divs %c1, %c7
        %extracted_34 = tensor.extract %0[%c10] : tensor<11xf16>
        %287 = arith.maxui %c8047_i16, %c8047_i16 : i16
        %288 = math.round %cst_1 : f16
        %289 = vector.broadcast %c-23333_i16 : i16 to vector<8x10x11xi16>
        %290 = vector.broadcast %true : i1 to vector<8x10x11xi1>
        %291 = vector.broadcast %c1241933340_i32 : i32 to vector<8x10x11xi32>
        %292 = vector.gather %2[%c8, %c11, %286] [%291], %290, %289 : tensor<8x10x11xi16>, vector<8x10x11xi32>, vector<8x10x11xi1>, vector<8x10x11xi16> into vector<8x10x11xi16>
        %293 = math.cttz %2 : tensor<8x10x11xi16>
        %294 = vector.extract_strided_slice %290 {offsets = [3, 8], sizes = [2, 1], strides = [1, 1]} : vector<8x10x11xi1> to vector<2x1x11xi1>
        %295 = math.cttz %12 : tensor<10x8xi16>
        %296 = tensor.empty() : tensor<11xf16>
        scf.reduce.return %296 : tensor<11xf16>
      }
      scf.yield
    }
    %20 = affine.vector_load %alloc_10[%c4, %c4] : memref<10x8xi1>, vector<11xi1>
    affine.vector_store %20, %alloc_10[%c0, %c8] : memref<10x8xi1>, vector<11xi1>
    %21 = tensor.empty() : tensor<8xf32>
    %22 = tensor.empty() : tensor<f32>
    %23 = linalg.dot ins(%13, %21 : tensor<8xf32>, tensor<8xf32>) outs(%22 : tensor<f32>) -> tensor<f32>
    %24 = arith.muli %c637764511_i64, %c637764511_i64 : i64
    %25 = vector.flat_transpose %20 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
    %26 = arith.addf %cst_3, %cst_3 : f32
    %27 = arith.minf %cst_4, %cst_4 : f16
    %28 = arith.shli %c1241933340_i32, %c1001199181_i32 : i32
    %generated = tensor.generate %c10 {
    ^bb0(%arg0: index):
      %268 = math.tanh %21 : tensor<8xf32>
      %269 = math.rsqrt %15 : tensor<11xf16>
      %270 = scf.index_switch %c2 -> tensor<8x10x11xi1> 
      case 1 {
        %272 = math.ipowi %14, %14 : tensor<11xi64>
        memref.store %cst_4, %alloc_19[%c0, %c2] : memref<10x8xf16>
        %273 = memref.realloc %alloc_7 : memref<11xi32> to memref<10xi32>
        %274 = arith.shrsi %c637764511_i64, %c1540828751_i64 : i64
        %275 = math.exp2 %0 : tensor<11xf16>
        %276 = index.divs %c10, %c3
        %277 = bufferization.to_tensor %alloc_14 : memref<8x10x11xi32>
        %278 = index.sub %c6, %arg0
        %279 = vector.broadcast %cst_3 : f32 to vector<11xf32>
        %280 = vector.maskedload %alloc_20[%c9], %25, %279 : memref<11xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
        %281 = affine.apply affine_map<(d0, d1) -> (-(d0 floordiv 16))>(%c13, %c10)
        %282 = arith.shli %c1540828751_i64, %c637764511_i64 : i64
        %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %279, %279, %cst : vector<11xf32>, vector<11xf32> into f32
        %284 = math.tan %13 : tensor<8xf32>
        affine.store %cst_2, %alloc_16[%c2] : memref<11xf16>
        %285 = math.cttz %5 : tensor<10x8xi16>
        %286 = arith.remui %c23004_i16, %c27041_i16 : i16
        scf.yield %7 : tensor<8x10x11xi1>
      }
      default {
        memref.store %cst_2, %alloc_11[%c2, %c6] : memref<10x8xf16>
        %272 = bufferization.to_tensor %alloc_10 : memref<10x8xi1>
        %273 = vector.extract_strided_slice %20 {offsets = [3], sizes = [3], strides = [1]} : vector<11xi1> to vector<3xi1>
        %274 = math.absi %7 : tensor<8x10x11xi1>
        %275 = vector.broadcast %c1 : index to vector<8xindex>
        %276 = vector.broadcast %true : i1 to vector<8xi1>
        %277 = vector.broadcast %c23004_i16 : i16 to vector<8xi16>
        vector.scatter %alloc_15[%c1] [%275], %276, %277 : memref<11xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %278 = affine.load %alloc_6[%c8, %c13, %c7] : memref<8x10x11xi32>
        %279 = vector.broadcast %c23004_i16 : i16 to vector<8xi16>
        %280 = arith.cmpi sge, %c8047_i16, %c23004_i16 : i16
        %281 = arith.addf %cst_4, %cst_0 : f16
        %282 = math.fpowi %1, %3 : tensor<8xf32>, tensor<8xi32>
        %283 = arith.cmpf uge, %cst_2, %cst_4 : f16
        %284 = math.atan %13 : tensor<8xf32>
        %285 = index.floordivs %c1, %c1
        %286 = vector.splat %c5 : vector<10x8xindex>
        %287 = index.floordivs %c8, %c9
        %288 = tensor.empty() : tensor<8x10x11xf16>
        %289 = vector.broadcast %cst_0 : f16 to vector<11xf16>
        %290 = vector.broadcast %c1241933340_i32 : i32 to vector<11xi32>
        %291 = vector.gather %288[%c5, %c9, %c13] [%290], %20, %289 : tensor<8x10x11xf16>, vector<11xi32>, vector<11xi1>, vector<11xf16> into vector<11xf16>
        scf.yield %7 : tensor<8x10x11xi1>
      }
      %271 = vector.shuffle %25, %25 [0, 1, 3, 4, 5, 6, 8, 10, 12, 14, 16, 17, 19, 20, 21] : vector<11xi1>, vector<11xi1>
      tensor.yield %cst_1 : f16
    } : tensor<?xf16>
    %29 = index.ceildivs %c4, %c10
    %30 = math.log10 %15 : tensor<11xf16>
    %31 = vector.reduction <minsi>, %20 : vector<11xi1> into i1
    %32 = math.powf %4, %4 : tensor<11xf32>
    %33 = vector.extract_strided_slice %20 {offsets = [9], sizes = [1], strides = [1]} : vector<11xi1> to vector<1xi1>
    %34 = index.maxu %c7, %c8
    affine.store %cst_4, %alloc_19[%c1, %c8] : memref<10x8xf16>
    %35 = index.sub %c0, %c0
    %36 = vector.create_mask %c11, %34, %c5 : vector<8x10x11xi1>
    %37 = vector.insert %true, %20 [9] : i1 into vector<11xi1>
    affine.for %arg0 = 0 to 108 {
    }
    %38 = bufferization.clone %alloc_11 : memref<10x8xf16> to memref<10x8xf16>
    %39 = tensor.empty() : tensor<8xi64>
    %40 = vector.broadcast %c1540828751_i64 : i64 to vector<8xi64>
    %41 = vector.broadcast %true : i1 to vector<8xi1>
    %42 = vector.broadcast %c1001199181_i32 : i32 to vector<8xi32>
    %43 = vector.gather %39[%c8] [%42], %41, %40 : tensor<8xi64>, vector<8xi32>, vector<8xi1>, vector<8xi64> into vector<8xi64>
    %44 = index.maxs %c9, %c14
    %45 = vector.splat %cst_1 : vector<11xf16>
    %46 = vector.extract_strided_slice %25 {offsets = [0], sizes = [6], strides = [1]} : vector<11xi1> to vector<6xi1>
    %47 = math.tan %21 : tensor<8xf32>
    %48 = math.absi %c23004_i16 : i16
    %49 = math.ctlz %c8047_i16 : i16
    %50 = math.expm1 %cst_3 : f32
    %51 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%8 : tensor<8x10x11xi32>) {
    ^bb0(%out: i32):
      %268 = arith.shrui %c1540828751_i64, %c1540828751_i64 : i64
      %269 = arith.minui %c494475913_i64, %c494475913_i64 : i64
      %270 = vector.broadcast %true : i1 to vector<8x11xi1>
      %dest_34, %accumulated_value_35 = vector.scan <and>, %36, %270 {inclusive = false, reduction_dim = 1 : i64} : vector<8x10x11xi1>, vector<8x11xi1>
      %271 = math.powf %cst_3, %cst : f32
      %272 = vector.broadcast %true : i1 to vector<8x10xi1>
      %dest_36, %accumulated_value_37 = vector.scan <xor>, %36, %272 {inclusive = true, reduction_dim = 2 : i64} : vector<8x10x11xi1>, vector<8x10xi1>
      %273 = arith.addf %cst_1, %cst_4 : f16
      %274 = vector.extract %33[0] : vector<1xi1>
      %275 = arith.remf %cst, %cst : f32
      %inserted_38 = tensor.insert %c8047_i16 into %12[%c8, %c3] : tensor<10x8xi16>
      %276 = index.ceildivs %44, %c12
      %from_elements = tensor.from_elements %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %cst_3, %cst, %cst, %cst_3, %cst_3, %cst : tensor<8x10x11xf32>
      %277 = math.log1p %cst_3 : f32
      %278 = vector.broadcast %c27041_i16 : i16 to vector<8x10x11xi16>
      %279 = bufferization.clone %alloc_17 : memref<11xf16> to memref<11xf16>
      %from_elements_39 = tensor.from_elements %c1540828751_i64, %c494475913_i64, %c637764511_i64, %c637764511_i64, %c1540828751_i64, %c1540828751_i64, %c1540828751_i64, %c1540828751_i64, %c637764511_i64, %c1540828751_i64, %c494475913_i64, %c637764511_i64, %c494475913_i64, %c1540828751_i64, %c1540828751_i64, %c494475913_i64, %c637764511_i64, %c637764511_i64, %c637764511_i64, %c494475913_i64, %c1540828751_i64, %c637764511_i64, %c637764511_i64, %c494475913_i64, %c637764511_i64, %c1540828751_i64, %c637764511_i64, %c637764511_i64, %c1540828751_i64, %c637764511_i64, %c637764511_i64, %c1540828751_i64, %c494475913_i64, %c1540828751_i64, %c1540828751_i64, %c637764511_i64, %c1540828751_i64, %c494475913_i64, %c637764511_i64, %c1540828751_i64, %c637764511_i64, %c637764511_i64, %c1540828751_i64, %c1540828751_i64, %c494475913_i64, %c1540828751_i64, %c494475913_i64, %c494475913_i64, %c494475913_i64, %c494475913_i64, %c1540828751_i64, %c637764511_i64, %c1540828751_i64, %c1540828751_i64, %c637764511_i64, %c637764511_i64, %c1540828751_i64, %c1540828751_i64, %c1540828751_i64, %c494475913_i64, %c494475913_i64, %c494475913_i64, %c1540828751_i64, %c637764511_i64, %c1540828751_i64, %c637764511_i64, %c1540828751_i64, %c494475913_i64, %c494475913_i64, %c494475913_i64, %c1540828751_i64, %c494475913_i64, %c1540828751_i64, %c494475913_i64, %c494475913_i64, %c637764511_i64, %c494475913_i64, %c637764511_i64, %c1540828751_i64, %c494475913_i64 : tensor<10x8xi64>
      %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %46, %46, %true : vector<6xi1>, vector<6xi1> into i1
      %281 = tensor.empty() : tensor<8x11xf16>
      %282 = tensor.empty() : tensor<10x11xf16>
      %283 = linalg.matmul ins(%6, %281 : tensor<10x8xf16>, tensor<8x11xf16>) outs(%282 : tensor<10x11xf16>) -> tensor<10x11xf16>
      %284 = arith.divsi %c494475913_i64, %c1540828751_i64 : i64
      %285 = arith.floordivsi %c1241933340_i32, %c1241933340_i32 : i32
      %286 = arith.remf %cst_0, %cst_0 : f16
      %287 = vector.broadcast %c1001199181_i32 : i32 to vector<8x8xi32>
      %288 = vector.outerproduct %42, %42, %287 {kind = #vector.kind<minsi>} : vector<8xi32>, vector<8xi32>
      %289 = arith.addf %cst_1, %cst_2 : f16
      %alloc_40 = memref.alloc() : memref<8x8xi64>
      %290 = tensor.empty() : tensor<10x8xi64>
      %291 = linalg.matmul ins(%9, %alloc_40 : tensor<10x8xi64>, memref<8x8xi64>) outs(%290 : tensor<10x8xi64>) -> tensor<10x8xi64>
      %292 = math.round %cst : f32
      %293 = index.divu %c7, %c12
      %294 = affine.if affine_set<(d0, d1, d2, d3) : (d3 ceildiv 64 == 0, d1 + d3 == 0, d1 mod 128 >= 0)>(%c8, %c12, %c0, %c6) -> i16 {
        %300 = arith.divsi %c8047_i16, %c-23333_i16 : i16
        %301 = math.log2 %reduced : tensor<f16>
        %302 = vector.extract_strided_slice %20 {offsets = [6], sizes = [5], strides = [1]} : vector<11xi1> to vector<5xi1>
        %303 = vector.broadcast %c1001199181_i32 : i32 to vector<6xi32>
        %304 = vector.maskedload %alloc_6[%c1, %c5, %c9], %46, %303 : memref<8x10x11xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
        %305 = math.log10 %4 : tensor<11xf32>
        %306 = math.round %0 : tensor<11xf16>
        %alloc_41 = memref.alloc() : memref<8x11xi64>
        %307 = tensor.empty() : tensor<10x11xi64>
        %308 = linalg.matmul ins(%from_elements_39, %alloc_41 : tensor<10x8xi64>, memref<8x11xi64>) outs(%307 : tensor<10x11xi64>) -> tensor<10x11xi64>
        memref.assume_alignment %alloc_18, 1 : memref<8xi32>
        affine.yield %c23004_i16 : i16
      } else {
        %300 = index.mul %c8, %c12
        %301 = index.maxs %c15, %293
        %302 = arith.minf %cst_2, %cst_2 : f16
        %303 = arith.maxsi %c494475913_i64, %c637764511_i64 : i64
        %304 = bufferization.to_tensor %alloc_19 : memref<10x8xf16>
        %305 = tensor.empty() : tensor<10x8xf32>
        %306 = arith.minui %c494475913_i64, %c1540828751_i64 : i64
        %307 = vector.reduction <minui>, %46 : vector<6xi1> into i1
        affine.yield %c23004_i16 : i16
      }
      %295 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%7 : tensor<8x10x11xi1>) {
      ^bb0(%out_41: i1):
        %300 = math.tanh %cst_2 : f16
        vector.print %20 : vector<11xi1>
        %301 = arith.maxsi %true, %out_41 : i1
        %302 = index.sizeof
        %303 = bufferization.to_memref %8 : memref<8x10x11xi32>
        %304 = memref.atomic_rmw mins %c1001199181_i32, %alloc_7[%c5] : (i32, memref<11xi32>) -> i32
        %inserted_42 = tensor.insert %cst_1 into %15[%c6] : tensor<11xf16>
        %305 = math.atan2 %1, %21 : tensor<8xf32>
        %306 = index.floordivs %c13, %c1
        %307 = vector.splat %c8047_i16 : vector<10x8xi16>
        %rank_43 = tensor.rank %7 : tensor<8x10x11xi1>
        %308 = index.maxs %c15, %c0
        %309 = arith.divsi %out_41, %true : i1
        %310 = vector.splat %c1 : vector<8x10x11xindex>
        memref.assume_alignment %alloc_8, 1 : memref<8xf32>
        %311 = math.ctlz %8 : tensor<8x10x11xi32>
        %312 = math.log2 %cst : f32
        %rank_44 = tensor.rank %11 : tensor<11xi1>
        %313 = arith.cmpi sgt, %out, %c1241933340_i32 : i32
        %314 = vector.broadcast %cst_0 : f16 to vector<10xf16>
        %315 = vector.broadcast %true : i1 to vector<10xi1>
        %316 = vector.maskedload %alloc_16[%c4], %315, %314 : memref<11xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
        %rank_45 = tensor.rank %18 : tensor<f16>
        %317 = math.absf %cst_2 : f16
        %318 = index.ceildivs %276, %44
        %319 = arith.muli %out, %c1241933340_i32 : i32
        %320 = vector.splat %34 : vector<8xindex>
        %321 = math.absi %c637764511_i64 : i64
        %322 = arith.cmpf oge, %cst, %cst_3 : f32
        %323 = arith.shli %c637764511_i64, %c1540828751_i64 : i64
        %324 = math.ipowi %c1001199181_i32, %out : i32
        %325 = math.ipowi %16, %16 : tensor<11xi1>
        %326 = math.ctlz %12 : tensor<10x8xi16>
        %alloc_46 = memref.alloc() : memref<8x10x11xf16>
        memref.copy %alloc_13, %alloc_46 : memref<8x10x11xf16> to memref<8x10x11xf16>
        linalg.yield %true : i1
      } -> tensor<8x10x11xi1>
      memref.store %c1241933340_i32, %alloc_5[%c7, %c2] : memref<10x8xi32>
      %296 = math.round %0 : tensor<11xf16>
      %297 = math.floor %13 : tensor<8xf32>
      %298 = vector.insertelement %true, %20[%c9 : index] : vector<11xi1>
      %299 = math.exp %4 : tensor<11xf32>
      linalg.yield %c1001199181_i32 : i32
    } -> tensor<8x10x11xi32>
    %52 = arith.shli %c23004_i16, %c23004_i16 : i16
    %53 = arith.floordivsi %c1540828751_i64, %c1540828751_i64 : i64
    %54 = index.mul %44, %c3
    %55 = math.ipowi %c1540828751_i64, %c494475913_i64 : i64
    %56 = vector.reduction <or>, %42 : vector<8xi32> into i32
    %extracted = tensor.extract %11[%c8] : tensor<11xi1>
    %57 = arith.remsi %c8047_i16, %c-23333_i16 : i16
    %58 = vector.broadcast %cst : f32 to vector<8xf32>
    %59 = vector.fma %58, %58, %58 : vector<8xf32>
    %60 = memref.load %alloc_12[%c2, %c9, %c0] : memref<8x10x11xi32>
    %61 = memref.realloc %alloc_15 : memref<11xi16> to memref<11xi16>
    %62 = arith.remsi %c27041_i16, %c-23333_i16 : i16
    %63 = index.sub %c14, %c14
    %64 = math.round %22 : tensor<f32>
    %65 = arith.addi %c1001199181_i32, %c1241933340_i32 : i32
    %66 = vector.insertelement %extracted, %46[%29 : index] : vector<6xi1>
    %67 = memref.realloc %alloc_9 : memref<11xf16> to memref<11xf16>
    %68 = arith.subi %true, %true : i1
    %69 = arith.shrui %c23004_i16, %c-23333_i16 : i16
    %70 = vector.flat_transpose %25 {columns = 11 : i32, rows = 1 : i32} : vector<11xi1> -> vector<11xi1>
    %71 = arith.maxsi %c1540828751_i64, %c494475913_i64 : i64
    %72 = arith.shrui %true, %true : i1
    %73 = bufferization.to_memref %1 : memref<8xf32>
    %74 = bufferization.clone %alloc_18 : memref<8xi32> to memref<8xi32>
    %extracted_21 = tensor.extract %22[] : tensor<f32>
    %75 = arith.cmpi ult, %extracted, %true : i1
    %76 = affine.for %arg0 = 0 to 127 iter_args(%arg1 = %c8) -> (index) {
      affine.yield %c7 : index
    }
    %77 = bufferization.clone %73 : memref<8xf32> to memref<8xf32>
    %78 = arith.remf %cst_1, %cst_4 : f16
    memref.store %cst_4, %alloc_11[%c7, %c0] : memref<10x8xf16>
    %79 = math.log10 %cst : f32
    %80 = bufferization.to_tensor %alloc_5 : memref<10x8xi32>
    %81 = vector.create_mask %c4 : vector<11xi1>
    %82 = arith.addf %cst_3, %cst_3 : f32
    memref.assume_alignment %73, 4 : memref<8xf32>
    %83 = arith.shli %c1241933340_i32, %c1241933340_i32 : i32
    %84 = arith.remsi %extracted, %true : i1
    %85 = memref.realloc %alloc_18 : memref<8xi32> to memref<10xi32>
    %86 = math.tanh %15 : tensor<11xf16>
    %87 = tensor.empty() : tensor<11x10xi1>
    %alloc_22 = memref.alloc() : memref<11x8xi1>
    %88 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%87, %alloc_22 : tensor<11x10xi1>, memref<11x8xi1>) outs(%7 : tensor<8x10x11xi1>) {
    ^bb0(%in: i1, %in_34: i1, %out: i1):
      %268 = index.ceildivs %c0, %34
      %269 = math.cttz %3 : tensor<8xi32>
      %270 = arith.maxf %cst_1, %cst_1 : f16
      %generated_35 = tensor.generate %c14 {
      ^bb0(%arg0: index):
        %297 = math.tan %23 : tensor<f32>
        %298 = arith.remf %extracted_21, %cst_3 : f32
        %299 = math.round %1 : tensor<8xf32>
        %300 = arith.muli %c1001199181_i32, %c1241933340_i32 : i32
        tensor.yield %c637764511_i64 : i64
      } : tensor<?xi64>
      %271 = math.ipowi %c637764511_i64, %c637764511_i64 : i64
      %272 = math.tanh %21 : tensor<8xf32>
      %273 = vector.load %alloc_17[%c9] : memref<11xf16>, vector<11xf16>
      %274 = math.round %cst : f32
      %275 = bufferization.clone %alloc_6 : memref<8x10x11xi32> to memref<8x10x11xi32>
      %276 = math.cttz %out : i1
      %277 = arith.maxsi %c1540828751_i64, %c1540828751_i64 : i64
      %278 = vector.broadcast %cst : f32 to vector<10x8xf32>
      %279 = vector.fma %278, %278, %278 : vector<10x8xf32>
      memref.store %c1241933340_i32, %74[%c6] : memref<8xi32>
      %280 = vector.extract %20[9] : vector<11xi1>
      %281 = tensor.empty() : tensor<10x8xi16>
      %rank_36 = tensor.rank %6 : tensor<10x8xf16>
      memref.tensor_store %15, %alloc_16 : memref<11xf16>
      %282 = math.powf %13, %13 : tensor<8xf32>
      %283 = arith.addi %c494475913_i64, %c494475913_i64 : i64
      %284 = math.round %15 : tensor<11xf16>
      %285 = arith.shrui %in, %out : i1
      %286 = math.ctlz %c1241933340_i32 : i32
      %287 = math.exp %4 : tensor<11xf32>
      %288 = arith.shli %true, %in : i1
      memref.store %c1241933340_i32, %alloc_5[%c9, %c4] : memref<10x8xi32>
      %289 = vector.reduction <maxf>, %59 : vector<8xf32> into f32
      %290 = arith.cmpf false, %cst_1, %cst_1 : f16
      %291 = affine.apply affine_map<(d0) -> (d0 ceildiv 16)>(%c12)
      %292 = math.ipowi %8, %8 : tensor<8x10x11xi32>
      %dest_37, %accumulated_value_38 = vector.scan <add>, %278, %59 {inclusive = true, reduction_dim = 0 : i64} : vector<10x8xf32>, vector<8xf32>
      %293 = tensor.empty() : tensor<8x8xi16>
      %294 = tensor.empty() : tensor<10x8xi16>
      %295 = linalg.matmul ins(%5, %293 : tensor<10x8xi16>, tensor<8x8xi16>) outs(%294 : tensor<10x8xi16>) -> tensor<10x8xi16>
      %296 = index.maxs %c9, %c2
      linalg.yield %extracted : i1
    } -> tensor<8x10x11xi1>
    %89 = arith.cmpf ult, %cst_4, %cst_2 : f16
    %90 = math.exp2 %4 : tensor<11xf32>
    %91 = vector.broadcast %c23004_i16 : i16 to vector<6xi16>
    %92 = vector.transfer_write %91, %5[%c15, %c5] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xi16>, tensor<10x8xi16>
    %93 = index.divs %54, %c2
    %94 = vector.broadcast %extracted_21 : f32 to vector<8x10x11xf32>
    %95 = vector.fma %94, %94, %94 : vector<8x10x11xf32>
    %96 = math.tanh %cst_1 : f16
    %97 = vector.create_mask %c6, %c8 : vector<10x8xi1>
    %98 = math.sqrt %cst : f32
    %99 = math.round %15 : tensor<11xf16>
    %100 = affine.apply affine_map<(d0, d1) -> (-(-(d0 - 128) - (-(d0 - 128)) ceildiv 128 - 16))>(%c1, %c7)
    %101 = math.log2 %0 : tensor<11xf16>
    %102 = math.powf %18, %reduced : tensor<f16>
    %103 = arith.remf %cst_2, %cst_2 : f16
    memref.alloca_scope  {
      %268 = affine.if affine_set<(d0, d1, d2) : ((d0 + 2) floordiv 4 >= 0, (d0 + 2) floordiv 4 == 0, d0 + 34 >= 0, d1 + 64 == 0)>(%c14, %c1, %c9) -> memref<8xi64> {
        %296 = math.tan %cst_1 : f16
        bufferization.dealloc_tensor %15 : tensor<11xf16>
        %extracted_38 = tensor.extract %4[%c10] : tensor<11xf32>
        %297 = index.divs %c10, %c3
        %298 = arith.addf %extracted_21, %extracted_38 : f32
        %299 = affine.apply affine_map<(d0, d1) -> (-(d0 floordiv 16))>(%297, %c2)
        %300 = math.rsqrt %4 : tensor<11xf32>
        %301 = arith.maxf %cst_1, %cst_4 : f16
        %alloc_39 = memref.alloc() : memref<8xi64>
        affine.yield %alloc_39 : memref<8xi64>
      } else {
        %296 = vector.flat_transpose %33 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %297 = math.powf %cst_1, %cst_4 : f16
        %298 = vector.insert %extracted, %20 [7] : i1 into vector<11xi1>
        %299 = arith.cmpi sge, %c27041_i16, %c27041_i16 : i16
        %300 = vector.broadcast %93 : index to vector<10xindex>
        %301 = vector.broadcast %true : i1 to vector<10xi1>
        %302 = vector.broadcast %c1241933340_i32 : i32 to vector<10xi32>
        vector.scatter %alloc_7[%c9] [%300], %301, %302 : memref<11xi32>, vector<10xindex>, vector<10xi1>, vector<10xi32>
        %alloc_38 = memref.alloc() : memref<10x8xi16>
        memref.tensor_store %5, %alloc_38 : memref<10x8xi16>
        %303 = vector.extract_strided_slice %41 {offsets = [2], sizes = [4], strides = [1]} : vector<8xi1> to vector<4xi1>
        %304 = index.maxu %c7, %63
        %alloc_39 = memref.alloc() : memref<8xi64>
        affine.yield %alloc_39 : memref<8xi64>
      }
      %269 = arith.maxsi %c1241933340_i32, %c1241933340_i32 : i32
      %alloc_34 = memref.alloc() : memref<10x8xf16>
      %270 = arith.shrui %c494475913_i64, %c1540828751_i64 : i64
      %271 = arith.cmpf ogt, %cst_3, %cst_3 : f32
      %272 = math.fma %6, %6, %6 : tensor<10x8xf16>
      %273 = math.fpowi %1, %3 : tensor<8xf32>, tensor<8xi32>
      %274 = bufferization.clone %74 : memref<8xi32> to memref<8xi32>
      %alloc_35 = memref.alloc() : memref<10x8xi16>
      memref.tensor_store %12, %alloc_35 : memref<10x8xi16>
      %from_elements = tensor.from_elements %c1001199181_i32, %c1241933340_i32, %c1241933340_i32, %c1001199181_i32, %c1001199181_i32, %c1241933340_i32, %c1241933340_i32, %c1241933340_i32 : tensor<8xi32>
      %275 = arith.addf %cst_0, %cst_4 : f16
      %alloc_36 = memref.alloc() : memref<8x10x11xi32>
      %276 = math.tanh %0 : tensor<11xf16>
      %277 = vector.multi_reduction <mul>, %58, %59 [] : vector<8xf32> to vector<8xf32>
      %278 = index.divs %c3, %c1
      %279 = tensor.empty() : tensor<10xi32>
      %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_14, %279, %8 : memref<8x10x11xi32>, tensor<10xi32>, tensor<8x10x11xi32>) outs(%8 : tensor<8x10x11xi32>) {
      ^bb0(%in: i32, %in_38: i32, %in_39: i32, %out: i32):
        %296 = memref.load %274[%c3] : memref<8xi32>
        %297 = math.absi %11 : tensor<11xi1>
        %298 = math.ipowi %16, %17 : tensor<11xi1>
        %299 = index.add %c5, %c11
        %300 = arith.addi %true, %extracted : i1
        %301 = math.ctlz %c8047_i16 : i16
        %alloc_40 = memref.alloc() : memref<8x8xf16>
        %302 = tensor.empty() : tensor<10x8xf16>
        %303 = linalg.matmul ins(%6, %alloc_40 : tensor<10x8xf16>, memref<8x8xf16>) outs(%302 : tensor<10x8xf16>) -> tensor<10x8xf16>
        memref.assume_alignment %alloc_19, 4 : memref<10x8xf16>
        %304 = math.ipowi %9, %9 : tensor<10x8xi64>
        %305 = arith.shrui %c494475913_i64, %c494475913_i64 : i64
        %306 = arith.subi %c27041_i16, %c23004_i16 : i16
        memref.tensor_store %10, %alloc : memref<10x8xi32>
        %307 = vector.bitcast %58 : vector<8xf32> to vector<8xi32>
        %308 = index.maxu %29, %63
        %309 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %46, %46, %true : vector<6xi1>, vector<6xi1> into i1
        %310 = arith.minf %cst_3, %cst_3 : f32
        %311 = index.mul %34, %c8
        %alloca = memref.alloca() : memref<8x10x11xi32>
        memref.tensor_store %13, %77 : memref<8xf32>
        affine.store %out, %alloc_5[%c4, %c12] : memref<10x8xi32>
        %312 = math.sqrt %13 : tensor<8xf32>
        %313 = vector.insert %c494475913_i64, %43 [4] : i64 into vector<8xi64>
        %314 = vector.transpose %43, [0] : vector<8xi64> to vector<8xi64>
        %315 = math.exp %1 : tensor<8xf32>
        %316 = math.cttz %16 : tensor<11xi1>
        %317 = vector.create_mask %c13 : vector<8xi1>
        %318 = arith.shrui %c1540828751_i64, %c494475913_i64 : i64
        %319 = math.round %15 : tensor<11xf16>
        %320 = memref.realloc %alloc_18 : memref<8xi32> to memref<11xi32>
        %321 = math.atan %extracted_21 : f32
        %322 = arith.cmpf oge, %cst_1, %cst_1 : f16
        %323 = tensor.empty() : tensor<10x8xf16>
        linalg.yield %c1241933340_i32 : i32
      } -> tensor<8x10x11xi32>
      %281 = math.atan2 %cst_0, %cst_0 : f16
      %false = index.bool.constant false
      %alloc_37 = memref.alloc() : memref<8xi32>
      %282 = index.maxu %c13, %c8
      %283 = bufferization.to_tensor %alloc_16 : memref<11xf16>
      %284 = arith.cmpi sle, %c27041_i16, %c23004_i16 : i16
      %285 = math.sqrt %6 : tensor<10x8xf16>
      %286 = math.exp2 %cst_0 : f16
      %287 = arith.minui %c1241933340_i32, %c1241933340_i32 : i32
      %288 = vector.maskedload %alloc_20[%c6], %41, %59 : memref<11xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
      %289 = vector.reduction <minf>, %59 : vector<8xf32> into f32
      %290 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%8 : tensor<8x10x11xi32>) {
      ^bb0(%out: i32):
        %296 = index.floordivs %278, %c8
        %rank_38 = tensor.rank %11 : tensor<11xi1>
        %297 = vector.broadcast %c12 : index to vector<6xindex>
        %298 = vector.broadcast %cst_4 : f16 to vector<6xf16>
        vector.scatter %alloc_13[%c0, %c8, %c2] [%297], %46, %298 : memref<8x10x11xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
        %cast_39 = tensor.cast %15 : tensor<11xf16> to tensor<?xf16>
        %299 = math.ipowi %c27041_i16, %c8047_i16 : i16
        %300 = index.divs %c4, %29
        %301 = index.ceildivs %29, %c8
        %302 = math.rsqrt %15 : tensor<11xf16>
        %303 = memref.atomic_rmw maxf %cst_1, %alloc_11[%c2, %c0] : (f16, memref<10x8xf16>) -> f16
        %304 = arith.shrui %out, %c1241933340_i32 : i32
        %305 = math.expm1 %13 : tensor<8xf32>
        %306 = index.ceildivs %c12, %c9
        %cast_40 = tensor.cast %10 : tensor<10x8xi32> to tensor<?x?xi32>
        %307 = affine.apply affine_map<(d0, d1) -> (d0 mod 16)>(%c9, %93)
        %alloc_41 = memref.alloc() : memref<10x8xi1>
        memref.copy %alloc_10, %alloc_41 : memref<10x8xi1> to memref<10x8xi1>
        %308 = math.round %cst_1 : f16
        %309 = math.log2 %13 : tensor<8xf32>
        %alloc_42 = memref.alloc() : memref<8x6xi64>
        %310 = tensor.empty() : tensor<10x6xi64>
        %311 = linalg.matmul ins(%9, %alloc_42 : tensor<10x8xi64>, memref<8x6xi64>) outs(%310 : tensor<10x6xi64>) -> tensor<10x6xi64>
        %312 = tensor.empty() : tensor<i32>
        %313 = math.fpowi %23, %312 : tensor<f32>, tensor<i32>
        memref.tensor_store %0, %alloc_16 : memref<11xf16>
        %314 = arith.cmpi sle, %false, %extracted : i1
        %315 = math.absf %18 : tensor<f16>
        %316 = bufferization.clone %alloc_16 : memref<11xf16> to memref<11xf16>
        %317 = math.rsqrt %22 : tensor<f32>
        %318 = math.fma %cst, %cst, %cst : f32
        %319 = math.tan %1 : tensor<8xf32>
        %320 = math.tan %283 : tensor<11xf16>
        %321 = tensor.empty(%63, %c4) : tensor<?x?x11xf16>
        memref.tensor_store %13, %alloc_8 : memref<8xf32>
        %322 = vector.broadcast %c-23333_i16 : i16 to vector<i16>
        %323 = vector.transfer_write %322, %5[%c4, %c10] : vector<i16>, tensor<10x8xi16>
        %324 = math.atan %cst : f32
        %325 = vector.broadcast %cst_3 : f32 to vector<10x8xf32>
        %326 = vector.fma %325, %325, %325 : vector<10x8xf32>
        linalg.yield %c1241933340_i32 : i32
      } -> tensor<8x10x11xi32>
      %291 = vector.broadcast %c1540828751_i64 : i64 to vector<8x8xi64>
      %292 = vector.outerproduct %43, %40, %291 {kind = #vector.kind<minui>} : vector<8xi64>, vector<8xi64>
      %293 = math.round %4 : tensor<11xf32>
      %294 = arith.minui %c637764511_i64, %c1540828751_i64 : i64
      %295 = math.ctpop %2 : tensor<8x10x11xi16>
    }
    %104 = bufferization.clone %73 : memref<8xf32> to memref<8xf32>
    %105 = arith.divui %extracted, %true : i1
    %106 = affine.max affine_map<(d0, d1) -> (d0, 0)>(%c13, %c10)
    %107 = vector.broadcast %c5 : index to vector<11xindex>
    %108 = vector.broadcast %c1241933340_i32 : i32 to vector<11xi32>
    vector.scatter %alloc_12[%c2, %c8, %c7] [%107], %70, %108 : memref<8x10x11xi32>, vector<11xindex>, vector<11xi1>, vector<11xi32>
    %109 = bufferization.clone %alloc_19 : memref<10x8xf16> to memref<10x8xf16>
    %110 = math.copysign %1, %1 : tensor<8xf32>
    %111 = math.round %6 : tensor<10x8xf16>
    %112 = vector.reduction <add>, %43 : vector<8xi64> into i64
    %113 = arith.remf %extracted_21, %extracted_21 : f32
    %114 = math.floor %1 : tensor<8xf32>
    %115 = math.tan %21 : tensor<8xf32>
    %116 = arith.shrui %c1241933340_i32, %c1241933340_i32 : i32
    %117 = vector.insert %c1241933340_i32, %42 [0] : i32 into vector<8xi32>
    %118 = vector.matrix_multiply %33, %20 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 11 : i32} : (vector<1xi1>, vector<11xi1>) -> vector<11xi1>
    %119 = bufferization.to_memref %6 : memref<10x8xf16>
    %120 = math.powf %23, %22 : tensor<f32>
    %121 = math.absf %cst_2 : f16
    %rank = tensor.rank %9 : tensor<10x8xi64>
    %122 = tensor.empty() : tensor<10x8xi64>
    %123 = vector.create_mask %63 : vector<8xi1>
    bufferization.dealloc_tensor %4 : tensor<11xf32>
    %124 = math.exp2 %0 : tensor<11xf16>
    %125 = bufferization.to_memref %reduced : memref<f16>
    %126 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c11, %100, %34)
    %127 = math.round %cst_1 : f16
    %128 = vector.create_mask %35 : vector<8xi1>
    %129 = arith.shli %c1540828751_i64, %c494475913_i64 : i64
    %130 = arith.cmpf ule, %cst_0, %cst_4 : f16
    %131 = arith.minui %c27041_i16, %c27041_i16 : i16
    %132 = math.fma %15, %15, %15 : tensor<11xf16>
    %133 = index.ceildivs %c2, %c2
    %rank_23 = tensor.rank %22 : tensor<f32>
    %134 = arith.remsi %extracted, %extracted : i1
    %135 = vector.reduction <minui>, %123 : vector<8xi1> into i1
    %136 = index.divs %c2, %rank_23
    %137 = vector.maskedload %alloc_15[%c5], %46, %91 : memref<11xi16>, vector<6xi1>, vector<6xi16> into vector<6xi16>
    %138 = vector.flat_transpose %59 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
    %139 = vector.broadcast %c1001199181_i32 : i32 to vector<6xi32>
    %140 = vector.maskedload %alloc_12[%c3, %c9, %c10], %46, %139 : memref<8x10x11xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
    %141 = vector.gather %10[%c7, %34] [%42], %128, %42 : tensor<10x8xi32>, vector<8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
    %142 = math.log %cst_2 : f16
    %143 = vector.matrix_multiply %81, %46 {lhs_columns = 1 : i32, lhs_rows = 11 : i32, rhs_columns = 6 : i32} : (vector<11xi1>, vector<6xi1>) -> vector<66xi1>
    %144 = math.atan %1 : tensor<8xf32>
    %145 = vector.gather %alloc_5[%c1, %c4] [%42], %123, %42 : memref<10x8xi32>, vector<8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
    %146 = vector.load %125[] : memref<f16>, vector<8x10x11xf16>
    %147 = vector.flat_transpose %139 {columns = 2 : i32, rows = 3 : i32} : vector<6xi32> -> vector<6xi32>
    %148 = index.sub %c11, %54
    %149 = memref.realloc %73 : memref<8xf32> to memref<10xf32>
    %alloc_24 = memref.alloc() : memref<8x10x11xi64>
    %150 = arith.cmpi slt, %c23004_i16, %c8047_i16 : i16
    %151 = vector.broadcast %c1241933340_i32 : i32 to vector<8x10x11xi32>
    %152 = arith.shrui %c8047_i16, %c23004_i16 : i16
    memref.store %extracted_21, %73[%c0] : memref<8xf32>
    %153 = arith.maxf %cst_1, %cst_4 : f16
    %154 = arith.addf %cst_0, %cst_2 : f16
    %155 = math.log2 %cst_1 : f16
    %156 = arith.addf %cst_4, %cst_1 : f16
    %157 = index.maxs %c10, %c8
    %158 = vector.broadcast %cst : f32 to vector<10x11xf32>
    %dest, %accumulated_value = vector.scan <mul>, %94, %158 {inclusive = false, reduction_dim = 0 : i64} : vector<8x10x11xf32>, vector<10x11xf32>
    %159 = bufferization.clone %alloc_20 : memref<11xf32> to memref<11xf32>
    %160 = math.absi %3 : tensor<8xi32>
    %161 = arith.floordivsi %c1241933340_i32, %c1241933340_i32 : i32
    %generated_25 = tensor.generate %44 {
    ^bb0(%arg0: index):
      %268 = math.copysign %extracted_21, %cst : f32
      %269 = memref.realloc %alloc_16 : memref<11xf16> to memref<10xf16>
      %from_elements = tensor.from_elements %extracted, %extracted, %true, %extracted, %true, %extracted, %extracted, %true, %true, %true, %true : tensor<11xi1>
      %270 = index.maxs %c2, %126
      tensor.yield %c1540828751_i64 : i64
    } : tensor<?xi64>
    %162 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%2 : tensor<8x10x11xi16>) {
    ^bb0(%out: i16):
      %expanded = tensor.expand_shape %11 [[0, 1]] : tensor<11xi1> into tensor<11x1xi1>
      %268 = vector.load %alloc_12[%c1, %c8, %c6] : memref<8x10x11xi32>, vector<10x8xi32>
      scf.if %extracted {
        %290 = math.log10 %4 : tensor<11xf32>
        %extracted_39 = tensor.extract %14[%c10] : tensor<11xi64>
        %291 = arith.remsi %c1001199181_i32, %c1001199181_i32 : i32
        %292 = math.fma %1, %13, %21 : tensor<8xf32>
        %293 = index.casts %c15 : index to i32
        affine.store %cst_0, %38[%c9, %c6] : memref<10x8xf16>
        %294 = math.absi %80 : tensor<10x8xi32>
        %295 = arith.ceildivsi %extracted_39, %c1540828751_i64 : i64
      } else {
        %290 = affine.max affine_map<(d0, d1) -> (-(d1 - d0 * 4), d0 mod 16 + -d0 + d1 - d0 * 4 + 4)>(%c12, %93)
        %291 = bufferization.clone %109 : memref<10x8xf16> to memref<10x8xf16>
        %292 = math.ctlz %c23004_i16 : i16
        %293 = math.round %18 : tensor<f16>
        %294 = bufferization.to_tensor %38 : memref<10x8xf16>
        %295 = arith.remf %cst_3, %cst_3 : f32
        %296 = memref.load %73[%c0] : memref<8xf32>
        %297 = math.ctpop %9 : tensor<10x8xi64>
      }
      %269 = memref.realloc %104 : memref<8xf32> to memref<10xf32>
      %270 = vector.bitcast %94 : vector<8x10x11xf32> to vector<8x10x11xf32>
      %alloc_34 = memref.alloc() : memref<11xi1>
      memref.tensor_store %11, %alloc_34 : memref<11xi1>
      %271 = arith.minf %cst, %cst : f32
      %272 = vector.create_mask %148 : vector<8xi1>
      %273 = math.atan %cst_1 : f16
      memref.copy %alloc_18, %74 : memref<8xi32> to memref<8xi32>
      %cast_35 = tensor.cast %10 : tensor<10x8xi32> to tensor<?x?xi32>
      %rank_36 = tensor.rank %13 : tensor<8xf32>
      %274 = vector.broadcast %cst_1 : f16 to vector<11xf16>
      %275 = arith.ceildivsi %true, %extracted : i1
      %276 = math.copysign %cst_4, %cst_1 : f16
      %277 = vector.multi_reduction <minsi>, %46, %46 [] : vector<6xi1> to vector<6xi1>
      %278 = index.floordivs %157, %c14
      %279 = math.tan %1 : tensor<8xf32>
      %280 = math.tanh %cst_0 : f16
      %281 = bufferization.to_memref %6 : memref<10x8xf16>
      %282 = vector.extract %42[4] : vector<8xi32>
      %283 = memref.load %alloc_18[%c5] : memref<8xi32>
      %284 = index.add %c12, %278
      memref.tensor_store %4, %159 : memref<11xf32>
      %true_37 = index.bool.constant true
      %285 = memref.load %77[%c3] : memref<8xf32>
      %false = index.bool.constant false
      %collapsed = tensor.collapse_shape %7 [[0, 1], [2]] : tensor<8x10x11xi1> into tensor<80x11xi1>
      %286 = vector.insert %c1001199181_i32, %145 [6] : i32 into vector<8xi32>
      %287 = tensor.empty() : tensor<11xi32>
      %288 = math.fpowi %0, %287 : tensor<11xf16>, tensor<11xi32>
      %extracted_38 = tensor.extract %cast_35[%c0, %c0] : tensor<?x?xi32>
      %289 = math.tan %extracted_21 : f32
      linalg.yield %out : i16
    } -> tensor<8x10x11xi16>
    %163 = math.roundeven %4 : tensor<11xf32>
    memref.assume_alignment %125, 2 : memref<f16>
    %164 = math.sqrt %15 : tensor<11xf16>
    %165 = math.absf %0 : tensor<11xf16>
    %166 = math.atan %6 : tensor<10x8xf16>
    %167 = math.ipowi %8, %8 : tensor<8x10x11xi32>
    %168 = math.ipowi %9, %9 : tensor<10x8xi64>
    %169 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %143, %143, %true : vector<66xi1>, vector<66xi1> into i1
    %170 = arith.addi %c494475913_i64, %c494475913_i64 : i64
    %171 = math.exp %15 : tensor<11xf16>
    %172 = math.absi %3 : tensor<8xi32>
    %173 = math.powf %1, %1 : tensor<8xf32>
    %174 = math.ctpop %c27041_i16 : i16
    %alloc_26 = memref.alloc() : memref<8xi1>
    %alloc_27 = memref.alloc() : memref<8x11xi1>
    %175 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_26, %alloc_27 : memref<8xi1>, memref<8x11xi1>) outs(%7 : tensor<8x10x11xi1>) {
    ^bb0(%in: i1, %in_34: i1, %out: i1):
      %268 = index.ceildivs %133, %34
      %269 = index.add %c15, %c15
      %270 = arith.maxsi %c1241933340_i32, %c1241933340_i32 : i32
      %271 = vector.create_mask %c2 : vector<11xi1>
      %expanded = tensor.expand_shape %4 [[0, 1]] : tensor<11xf32> into tensor<11x1xf32>
      %272 = math.powf %1, %1 : tensor<8xf32>
      %273 = math.expm1 %cst : f32
      %274 = arith.mulf %cst_2, %cst_2 : f16
      %275 = vector.broadcast %c1241933340_i32 : i32 to vector<8x11xi32>
      %dest_35, %accumulated_value_36 = vector.scan <maxui>, %151, %275 {inclusive = true, reduction_dim = 1 : i64} : vector<8x10x11xi32>, vector<8x11xi32>
      affine.store %c1001199181_i32, %alloc_5[%c0, %c12] : memref<10x8xi32>
      %276 = math.exp2 %18 : tensor<f16>
      %277 = math.rsqrt %6 : tensor<10x8xf16>
      %inserted_37 = tensor.insert %cst_2 into %reduced[] : tensor<f16>
      %278 = math.expm1 %0 : tensor<11xf16>
      %alloc_38 = memref.alloc() : memref<10x8x11xi16>
      %279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_38 : memref<10x8x11xi16>) outs(%2 : tensor<8x10x11xi16>) {
      ^bb0(%in_42: i16, %out_43: i16):
        %294 = vector.create_mask %c8 : vector<11xi1>
        %295 = math.copysign %4, %4 : tensor<11xf32>
        %296 = index.divs %c2, %136
        %297 = vector.extract_strided_slice %33 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %298 = arith.floordivsi %c1540828751_i64, %c1540828751_i64 : i64
        %299 = math.tan %expanded : tensor<11x1xf32>
        %300 = bufferization.clone %159 : memref<11xf32> to memref<11xf32>
        %301 = math.log %6 : tensor<10x8xf16>
        %302 = vector.extract_strided_slice %81 {offsets = [6], sizes = [1], strides = [1]} : vector<11xi1> to vector<1xi1>
        %303 = math.exp %1 : tensor<8xf32>
        %304 = arith.cmpf ueq, %cst, %cst_3 : f32
        %305 = arith.maxsi %c-23333_i16, %c27041_i16 : i16
        %306 = vector.multi_reduction <maxf>, %59, %58 [] : vector<8xf32> to vector<8xf32>
        %307 = arith.minsi %c-23333_i16, %c27041_i16 : i16
        %308 = vector.reduction <maxui>, %42 : vector<8xi32> into i32
        %309 = math.exp %13 : tensor<8xf32>
        %310 = vector.reduction <xor>, %123 : vector<8xi1> into i1
        %collapsed = tensor.collapse_shape %122 [[0, 1]] : tensor<10x8xi64> into tensor<80xi64>
        %cast_44 = tensor.cast %13 : tensor<8xf32> to tensor<?xf32>
        %alloc_45 = memref.alloc() : memref<8x11xi32>
        %311 = tensor.empty() : tensor<10x11xi32>
        %312 = linalg.matmul ins(%10, %alloc_45 : tensor<10x8xi32>, memref<8x11xi32>) outs(%311 : tensor<10x11xi32>) -> tensor<10x11xi32>
        %313 = bufferization.to_tensor %alloc_13 : memref<8x10x11xf16>
        %314 = index.divs %c6, %c12
        %315 = math.fma %21, %13, %13 : tensor<8xf32>
        %316 = arith.floordivsi %c23004_i16, %c-23333_i16 : i16
        %317 = math.ipowi %80, %10 : tensor<10x8xi32>
        %318 = arith.addf %cst_2, %cst_1 : f16
        %rank_46 = tensor.rank %23 : tensor<f32>
        %319 = math.copysign %6, %6 : tensor<10x8xf16>
        %320 = vector.broadcast %cst_4 : f16 to vector<11xf16>
        %321 = vector.maskedload %119[%c6, %c7], %271, %320 : memref<10x8xf16>, vector<11xi1>, vector<11xf16> into vector<11xf16>
        %322 = vector.create_mask %c5, %c7 : vector<10x8xi1>
        memref.assume_alignment %alloc, 4 : memref<10x8xi32>
        %323 = math.expm1 %13 : tensor<8xf32>
        linalg.yield %in_42 : i16
      } -> tensor<8x10x11xi16>
      %280 = vector.multi_reduction <minui>, %43, %c494475913_i64 [0] : vector<8xi64> to i64
      %rank_39 = tensor.rank %21 : tensor<8xf32>
      %281 = math.log2 %22 : tensor<f32>
      %282 = arith.shrsi %c637764511_i64, %c637764511_i64 : i64
      %283 = math.absf %cst_1 : f16
      %284 = arith.negf %cst_0 : f16
      %285 = math.atan %13 : tensor<8xf32>
      %rank_40 = tensor.rank %16 : tensor<11xi1>
      %286 = vector.create_mask %c7, %c10 : vector<10x8xi1>
      %287 = vector.matrix_multiply %139, %139 {lhs_columns = 6 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<6xi32>, vector<6xi32>) -> vector<1xi32>
      %288 = affine.load %alloc_7[%c14] : memref<11xi32>
      %289 = arith.remf %cst_1, %cst_2 : f16
      %rank_41 = tensor.rank %12 : tensor<10x8xi16>
      %290 = affine.if affine_set<(d0, d1) : ((d0 - d1) floordiv 32 == 0, d0 mod 32 - (d0 - d1) floordiv 32 >= 0)>(%c2, %c3) -> f32 {
        memref.assume_alignment %73, 1 : memref<8xf32>
        %294 = arith.minui %c-23333_i16, %c8047_i16 : i16
        %295 = arith.addf %cst, %cst_3 : f32
        %296 = index.maxs %29, %157
        %297 = math.expm1 %cst : f32
        %298 = math.exp %reduced : tensor<f16>
        %299 = bufferization.clone %alloc_11 : memref<10x8xf16> to memref<10x8xf16>
        %300 = arith.shrui %extracted, %in_34 : i1
        affine.yield %cst_3 : f32
      } else {
        %cast_42 = tensor.cast %80 : tensor<10x8xi32> to tensor<?x?xi32>
        %294 = bufferization.to_memref %7 : memref<8x10x11xi1>
        %295 = math.exp2 %13 : tensor<8xf32>
        %296 = tensor.empty() : tensor<8xi16>
        memref.copy %alloc_11, %38 : memref<10x8xf16> to memref<10x8xf16>
        %297 = tensor.empty() : tensor<10x8xf16>
        %298 = vector.flat_transpose %287 {columns = 1 : i32, rows = 1 : i32} : vector<1xi32> -> vector<1xi32>
        %299 = arith.minf %cst_3, %cst_3 : f32
        affine.yield %cst_3 : f32
      }
      %291 = arith.divsi %c1001199181_i32, %c1241933340_i32 : i32
      %292 = vector.flat_transpose %137 {columns = 2 : i32, rows = 3 : i32} : vector<6xi16> -> vector<6xi16>
      %293 = arith.maxsi %in_34, %extracted : i1
      linalg.yield %true : i1
    } -> tensor<8x10x11xi1>
    %176 = arith.remf %cst_3, %extracted_21 : f32
    %177 = arith.ori %c23004_i16, %c8047_i16 : i16
    affine.store %extracted_21, %73[%c9] : memref<8xf32>
    %178 = vector.multi_reduction <maxf>, %58, %59 [] : vector<8xf32> to vector<8xf32>
    %179 = arith.cmpi ugt, %c1540828751_i64, %c637764511_i64 : i64
    %180 = vector.transpose %20, [0] : vector<11xi1> to vector<11xi1>
    %181 = arith.muli %c-23333_i16, %c8047_i16 : i16
    %182 = index.sizeof
    %183 = math.tanh %15 : tensor<11xf16>
    %184 = arith.cmpf one, %extracted_21, %extracted_21 : f32
    %185 = index.ceildivu %c11, %182
    %186 = math.fpowi %13, %3 : tensor<8xf32>, tensor<8xi32>
    %187 = vector.broadcast %100 : index to vector<6xindex>
    %188 = vector.broadcast %cst_2 : f16 to vector<6xf16>
    vector.scatter %alloc_11[%c3, %c7] [%187], %46, %188 : memref<10x8xf16>, vector<6xindex>, vector<6xi1>, vector<6xf16>
    %189 = arith.subi %c1540828751_i64, %c637764511_i64 : i64
    %cst_28 = arith.constant 1.000000e+00 : f32
    %190 = vector.transfer_read %104[%c7], %cst_28 : memref<8xf32>, vector<f32>
    %191 = arith.addf %cst_2, %cst_2 : f16
    %cast = tensor.cast %39 : tensor<8xi64> to tensor<?xi64>
    %192 = index.divs %rank, %148
    %193 = vector.flat_transpose %141 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
    %194 = memref.load %119[%c5, %c7] : memref<10x8xf16>
    %195 = vector.broadcast %c1241933340_i32 : i32 to vector<11xi32>
    %196 = vector.gather %alloc_14[%35, %c4, %c9] [%195], %25, %195 : memref<8x10x11xi32>, vector<11xi32>, vector<11xi1>, vector<11xi32> into vector<11xi32>
    %197 = math.atan %cst : f32
    %198 = affine.if affine_set<(d0) : (d0 - 64 == 0, d0 floordiv 16 - 4 >= 0, 0 >= 0)>(%c4) -> f32 {
      %268 = math.log10 %cst_4 : f16
      %269 = arith.addf %cst_0, %cst_0 : f16
      %270 = vector.broadcast %cst_1 : f16 to vector<8x10xf16>
      %dest_34, %accumulated_value_35 = vector.scan <mul>, %146, %270 {inclusive = true, reduction_dim = 2 : i64} : vector<8x10x11xf16>, vector<8x10xf16>
      %271 = math.fpowi %cst, %c1001199181_i32 : f32, i32
      %272 = math.tanh %cst_0 : f16
      %273 = index.floordivs %182, %c11
      %274 = index.casts %c494475913_i64 : i64 to index
      %275 = tensor.empty() : tensor<11xf16>
      affine.yield %cst_28 : f32
    } else {
      %268 = math.absi %c8047_i16 : i16
      %269 = vector.extract %193[1] : vector<8xi32>
      %270 = math.atan2 %18, %18 : tensor<f16>
      %271 = arith.floordivsi %c494475913_i64, %c494475913_i64 : i64
      %272 = math.atan %13 : tensor<8xf32>
      %273 = index.divs %35, %c0
      memref.store %c1241933340_i32, %alloc_5[%c1, %c2] : memref<10x8xi32>
      %274 = index.maxu %54, %c0
      affine.yield %extracted_21 : f32
    }
    %199 = vector.broadcast %c27041_i16 : i16 to vector<11xi16>
    %200 = affine.if affine_set<(d0, d1) : ((d0 - d1) floordiv 32 == 0, d0 mod 32 - (d0 - d1) floordiv 32 >= 0)>(%c5, %c12) -> memref<8xf32> {
      %268 = vector.broadcast %cst_3 : f32 to vector<8x10x11xf32>
      %269 = math.fma %4, %4, %4 : tensor<11xf32>
      %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %46, %46, %extracted : vector<6xi1>, vector<6xi1> into i1
      %271 = math.log10 %cst : f32
      %272 = arith.remsi %c27041_i16, %c23004_i16 : i16
      %273 = vector.bitcast %145 : vector<8xi32> to vector<8xi32>
      %extracted_34 = tensor.extract %6[%c8, %c3] : tensor<10x8xf16>
      %274 = vector.extract %195[3] : vector<11xi32>
      affine.yield %73 : memref<8xf32>
    } else {
      %268 = math.log2 %15 : tensor<11xf16>
      %269 = math.atan %cst_0 : f16
      %270 = math.rsqrt %cst : f32
      %271 = vector.reduction <maxsi>, %118 : vector<11xi1> into i1
      %extracted_34 = tensor.extract %23[] : tensor<f32>
      %272 = arith.remf %extracted_21, %cst : f32
      %extracted_35 = tensor.extract %12[%c7, %c7] : tensor<10x8xi16>
      %273 = bufferization.clone %alloc_8 : memref<8xf32> to memref<8xf32>
      affine.yield %273 : memref<8xf32>
    }
    %201 = vector.extract %137[0] : vector<6xi16>
    %202 = arith.addf %cst_3, %cst : f32
    %203 = vector.broadcast %c494475913_i64 : i64 to vector<11xi64>
    %204 = vector.gather %14[%c14] [%196], %25, %203 : tensor<11xi64>, vector<11xi32>, vector<11xi1>, vector<11xi64> into vector<11xi64>
    %205 = math.absf %6 : tensor<10x8xf16>
    %206 = arith.divsi %c1001199181_i32, %c1241933340_i32 : i32
    %207 = arith.floordivsi %c23004_i16, %c27041_i16 : i16
    %rank_29 = tensor.rank %2 : tensor<8x10x11xi16>
    %208 = index.floordivs %rank_23, %rank_29
    affine.store %c1001199181_i32, %alloc_6[%c5, %c11, %c1] : memref<8x10x11xi32>
    %209 = vector.extract %70[7] : vector<11xi1>
    %210 = arith.addi %c-23333_i16, %c8047_i16 : i16
    %extracted_30 = tensor.extract %1[%c6] : tensor<8xf32>
    %211 = vector.extract_strided_slice %36 {offsets = [5], sizes = [2], strides = [1]} : vector<8x10x11xi1> to vector<2x10x11xi1>
    %212 = vector.create_mask %133 : vector<8xi1>
    %213 = math.ctlz %c1540828751_i64 : i64
    %214 = index.divs %c10, %93
    %215 = math.exp %23 : tensor<f32>
    memref.assume_alignment %alloc_14, 16 : memref<8x10x11xi32>
    %216 = index.floordivs %126, %106
    %217 = index.mul %c9, %c7
    %218 = vector.insert %c8047_i16, %91 [5] : i16 into vector<6xi16>
    %219 = math.log2 %reduced : tensor<f16>
    %220 = arith.addf %cst_28, %cst_3 : f32
    %221 = math.powf %cst_4, %cst_1 : f16
    %222 = arith.cmpi eq, %c1540828751_i64, %c1540828751_i64 : i64
    %223 = math.tanh %13 : tensor<8xf32>
    %224 = vector.broadcast %cst_28 : f32 to vector<8xf32>
    %225 = vector.fma %224, %138, %138 : vector<8xf32>
    %226 = math.log2 %4 : tensor<11xf32>
    affine.for %arg0 = 0 to 127 {
    }
    %227 = tensor.empty() : tensor<8x10x11xi32>
    %228 = index.ceildivu %c5, %217
    %229 = arith.mulf %cst_28, %cst : f32
    %230 = arith.muli %c27041_i16, %c8047_i16 : i16
    %231 = memref.atomic_rmw minf %cst, %73[%c7] : (f32, memref<8xf32>) -> f32
    %232 = arith.mulf %cst_0, %cst_1 : f16
    %233 = math.atan2 %23, %23 : tensor<f32>
    vector.print %138 : vector<8xf32>
    memref.store %cst_3, %73[%c1] : memref<8xf32>
    %234 = index.ceildivs %214, %192
    %235 = arith.minf %cst_0, %cst_1 : f16
    %236 = math.ipowi %c637764511_i64, %c1540828751_i64 : i64
    %237 = math.atan %cst_2 : f16
    %238 = tensor.empty() : tensor<10x8xf16>
    %mapped = linalg.map ins(%109, %6 : memref<10x8xf16>, tensor<10x8xf16>) outs(%238 : tensor<10x8xf16>)
      (%in: f16, %in_34: f16) {
        %268 = vector.extract_strided_slice %25 {offsets = [6], sizes = [5], strides = [1]} : vector<11xi1> to vector<5xi1>
        %cst_35 = arith.constant 1.000000e+00 : f16
        %269 = vector.transfer_read %15[%34], %cst_35 : tensor<11xf16>, vector<f16>
        %c1_i32 = arith.constant 1 : i32
        %270 = vector.transfer_read %alloc_14[%100, %216, %rank_29], %c1_i32 : memref<8x10x11xi32>, vector<11xi32>
        %alloc_36 = memref.alloc() : memref<11xi1>
        memref.tensor_store %17, %alloc_36 : memref<11xi1>
        %alloc_37 = memref.alloc() : memref<8xf16>
        %271 = vector.broadcast %cst_1 : f16 to vector<10x8xf16>
        %272 = vector.broadcast %c1_i32 : i32 to vector<10x8xi32>
        %273 = vector.gather %alloc_37[%44] [%272], %97, %271 : memref<8xf16>, vector<10x8xi32>, vector<10x8xi1>, vector<10x8xf16> into vector<10x8xf16>
        %274 = arith.minf %in, %cst_1 : f16
        %275 = affine.if affine_set<(d0, d1) : (d0 floordiv 64 - 8 == 0, (d0 floordiv 64 - 8) * 8 == 0)>(%c15, %c9) -> i64 {
          %303 = vector.create_mask %c7 : vector<8xi1>
          %304 = math.round %15 : tensor<11xf16>
          %305 = arith.remui %c494475913_i64, %c494475913_i64 : i64
          %306 = index.add %c3, %157
          %307 = arith.maxsi %c1001199181_i32, %c1001199181_i32 : i32
          %308 = math.exp2 %cst_28 : f32
          %309 = index.floordivs %228, %c9
          %310 = bufferization.to_memref %5 : memref<10x8xi16>
          affine.yield %c1540828751_i64 : i64
        } else {
          %303 = math.atan %in_34 : f16
          %304 = arith.cmpf oge, %cst_35, %in : f16
          %305 = vector.broadcast %extracted : i1 to vector<8x8xi1>
          %306 = vector.outerproduct %123, %212, %305 {kind = #vector.kind<xor>} : vector<8xi1>, vector<8xi1>
          %307 = math.round %238 : tensor<10x8xf16>
          %alloc_43 = memref.alloc() : memref<11xf16>
          %308 = index.divs %216, %148
          %309 = vector.broadcast %c1001199181_i32 : i32 to vector<10xi32>
          %dest_44, %accumulated_value_45 = vector.scan <xor>, %272, %309 {inclusive = false, reduction_dim = 1 : i64} : vector<10x8xi32>, vector<10xi32>
          %310 = math.powf %6, %238 : tensor<10x8xf16>
          affine.yield %c1540828751_i64 : i64
        }
        %276 = arith.minsi %c8047_i16, %c-23333_i16 : i16
        %277 = math.round %6 : tensor<10x8xf16>
        %278 = math.atan2 %cst_35, %cst_0 : f16
        %279 = vector.broadcast %cst_28 : f32 to vector<8xf32>
        %280 = vector.fma %279, %59, %225 : vector<8xf32>
        %281 = math.atan2 %4, %4 : tensor<11xf32>
        %282 = vector.extract_strided_slice %81 {offsets = [8], sizes = [2], strides = [1]} : vector<11xi1> to vector<2xi1>
        %283 = vector.extract_strided_slice %271 {offsets = [1], sizes = [5], strides = [1]} : vector<10x8xf16> to vector<5x8xf16>
        %284 = vector.insert %extracted, %268 [4] : i1 into vector<5xi1>
        %285 = vector.broadcast %in : f16 to vector<8xf16>
        %dest_38, %accumulated_value_39 = vector.scan <minf>, %273, %285 {inclusive = false, reduction_dim = 0 : i64} : vector<10x8xf16>, vector<8xf16>
        %generated_40 = tensor.generate %136, %93 {
        ^bb0(%arg0: index, %arg1: index):
          %303 = arith.subi %c23004_i16, %c-23333_i16 : i16
          %304 = math.ceil %0 : tensor<11xf16>
          %305 = index.divs %106, %rank
          %306 = index.divs %148, %44
          tensor.yield %extracted : i1
        } : tensor<?x?xi1>
        %286 = vector.broadcast %cst_35 : f16 to vector<8xf16>
        %287 = vector.maskedload %109[%c5, %c4], %123, %286 : memref<10x8xf16>, vector<8xi1>, vector<8xf16> into vector<8xf16>
        %288 = vector.insert %287, %271 [8] : vector<8xf16> into vector<10x8xf16>
        %289 = index.add %126, %44
        %290 = arith.divsi %c1001199181_i32, %c1241933340_i32 : i32
        %291 = math.round %15 : tensor<11xf16>
        %292 = memref.load %119[%c5, %c5] : memref<10x8xf16>
        %293 = vector.create_mask %29, %185, %c6 : vector<8x10x11xi1>
        %294 = tensor.empty() : tensor<8x6xi64>
        %295 = tensor.empty() : tensor<10x6xi64>
        %296 = linalg.matmul ins(%9, %294 : tensor<10x8xi64>, tensor<8x6xi64>) outs(%295 : tensor<10x6xi64>) -> tensor<10x6xi64>
        %297 = vector.broadcast %rank : index to vector<11xindex>
        vector.scatter %74[%c7] [%297], %70, %196 : memref<8xi32>, vector<11xindex>, vector<11xi1>, vector<11xi32>
        %298 = vector.load %74[%c4] : memref<8xi32>, vector<8xi32>
        %299 = math.exp2 %1 : tensor<8xf32>
        %300 = bufferization.to_memref %6 : memref<10x8xf16>
        vector.print %81 : vector<11xi1>
        %301 = vector.broadcast %cst_28 : f32 to vector<10x8xf32>
        %302 = vector.fma %301, %301, %301 : vector<10x8xf32>
        %alloc_41 = memref.alloc() : memref<11xi1>
        memref.tensor_store %11, %alloc_41 : memref<11xi1>
        %cst_42 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_42 : f16
      }
    %239 = vector.flat_transpose %212 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
    %240 = math.log %cst_28 : f32
    %241 = vector.reduction <minf>, %58 : vector<8xf32> into f32
    %242 = vector.matrix_multiply %42, %147 {lhs_columns = 2 : i32, lhs_rows = 4 : i32, rhs_columns = 3 : i32} : (vector<8xi32>, vector<6xi32>) -> vector<12xi32>
    memref.assume_alignment %alloc_5, 2 : memref<10x8xi32>
    memref.assume_alignment %alloc_16, 4 : memref<11xf16>
    %243 = vector.extract_strided_slice %95 {offsets = [2, 4], sizes = [2, 2], strides = [1, 1]} : vector<8x10x11xf32> to vector<2x2x11xf32>
    %inserted = tensor.insert %cst_0 into %0[%c9] : tensor<11xf16>
    %244 = math.sqrt %23 : tensor<f32>
    %245 = math.exp %6 : tensor<10x8xf16>
    %246 = arith.divui %c23004_i16, %c23004_i16 : i16
    %247 = arith.andi %c27041_i16, %c8047_i16 : i16
    %generated_31 = tensor.generate %34 {
    ^bb0(%arg0: index):
      %268 = index.add %c6, %c14
      %269 = math.rsqrt %23 : tensor<f32>
      %270 = vector.create_mask %228 : vector<8xi1>
      %271 = bufferization.clone %alloc_11 : memref<10x8xf16> to memref<10x8xf16>
      tensor.yield %c-23333_i16 : i16
    } : tensor<?xi16>
    %248 = memref.realloc %alloc_16 : memref<11xf16> to memref<6xf16>
    %249 = arith.floordivsi %c27041_i16, %c-23333_i16 : i16
    %250 = math.absi %c8047_i16 : i16
    %251 = math.ctlz %c-23333_i16 : i16
    %252 = vector.create_mask %c13, %182, %rank_29 : vector<8x10x11xi1>
    %253 = vector.reduction <xor>, %25 : vector<11xi1> into i1
    %254 = vector.splat %126 : vector<8x10x11xindex>
    %255 = vector.insert %c1241933340_i32, %42 [2] : i32 into vector<8xi32>
    %256 = math.tan %0 : tensor<11xf16>
    %257 = math.tanh %cst_2 : f16
    memref.tensor_store %238, %alloc_19 : memref<10x8xf16>
    memref.assume_alignment %73, 4 : memref<8xf32>
    %258 = affine.for %arg0 = 0 to 105 iter_args(%arg1 = %extracted) -> (i1) {
      affine.yield %arg1 : i1
    }
    %259 = math.absi %5 : tensor<10x8xi16>
    %260 = vector.insertelement %true, %46[%208 : index] : vector<6xi1>
    %261 = math.copysign %cst_0, %cst_4 : f16
    %262 = arith.cmpi eq, %true, %extracted : i1
    %263 = vector.reduction <mul>, %43 : vector<8xi64> into i64
    %264 = tensor.empty(%rank_23) : tensor<?xf16>
    %265 = linalg.copy ins(%generated : tensor<?xf16>) outs(%264 : tensor<?xf16>) -> tensor<?xf16>
    %alloc_32 = memref.alloc() : memref<11xi32>
    linalg.transpose ins(%alloc_7 : memref<11xi32>) outs(%alloc_32 : memref<11xi32>) permutation = [0] 
    %alloc_33 = memref.alloc() : memref<10xi64>
    linalg.reduce ins(%9 : tensor<10x8xi64>) outs(%alloc_33 : memref<10xi64>) dimensions = [1] 
      (%in: i64, %init: i64) {
        %268 = vector.broadcast %cst : f32 to vector<8xf32>
        %269 = vector.fma %268, %58, %225 : vector<8xf32>
        %270 = arith.minui %extracted, %extracted : i1
        %271 = vector.insertelement %cst, %59[%c7 : index] : vector<8xf32>
        %272 = index.ceildivs %c15, %c11
        %273 = math.expm1 %cst_2 : f16
        %274 = arith.minui %c8047_i16, %c27041_i16 : i16
        %275 = math.copysign %cst_28, %cst_3 : f32
        %276 = affine.load %alloc_10[%c2, %c1] : memref<10x8xi1>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %266 = scf.parallel (%arg0) = (%133) to (%100) step (%c7) init (%7) -> tensor<8x10x11xi1> {
      %268 = index.maxs %c3, %182
      %269 = arith.maxsi %extracted, %extracted : i1
      %270 = arith.remf %cst_0, %cst_2 : f16
      %271 = math.log1p %238 : tensor<10x8xf16>
      memref.copy %alloc_20, %159 : memref<11xf32> to memref<11xf32>
      %272 = vector.create_mask %c6 : vector<8xi1>
      %c-8077_i16 = arith.constant -8077 : i16
      %273 = math.absi %227 : tensor<8x10x11xi32>
      %274 = vector.broadcast %cst_3 : f32 to vector<11xf32>
      %275 = vector.maskedload %73[%c1], %70, %274 : memref<8xf32>, vector<11xi1>, vector<11xf32> into vector<11xf32>
      %276 = affine.max affine_map<(d0, d1, d2) -> (d0 - (d2 - 16) - (d2 - 16), -(d2 + d0 - (d2 - 16) + 4 - 16), d2 + d0 - (d2 - 16) + 4 - 16)>(%208, %c5, %136)
      %277 = vector.insert %cst_28, %225 [2] : f32 into vector<8xf32>
      %278 = vector.flat_transpose %123 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
      %279 = vector.create_mask %c1 : vector<8xi1>
      %280 = math.rsqrt %23 : tensor<f32>
      %281 = vector.flat_transpose %195 {columns = 11 : i32, rows = 1 : i32} : vector<11xi32> -> vector<11xi32>
      %282 = math.round %6 : tensor<10x8xf16>
      %283 = tensor.empty() : tensor<8x10x11xi1>
      scf.reduce(%283)  : tensor<8x10x11xi1> {
      ^bb0(%arg1: tensor<8x10x11xi1>, %arg2: tensor<8x10x11xi1>):
        %284 = tensor.empty() : tensor<8x11xi16>
        %285 = tensor.empty() : tensor<10x11xi16>
        %286 = linalg.matmul ins(%12, %284 : tensor<10x8xi16>, tensor<8x11xi16>) outs(%285 : tensor<10x11xi16>) -> tensor<10x11xi16>
        %287 = vector.broadcast %cst : f32 to vector<11xf32>
        %288 = vector.fma %287, %275, %274 : vector<11xf32>
        %false = index.bool.constant false
        %289 = index.maxs %157, %100
        %290 = index.sizeof
        %291 = math.fma %21, %13, %1 : tensor<8xf32>
        %292 = tensor.empty(%c11) : tensor<?x8xi16>
        %293 = vector.broadcast %136 : index to vector<10xindex>
        %294 = vector.broadcast %extracted : i1 to vector<10xi1>
        %295 = vector.broadcast %extracted_30 : f32 to vector<10xf32>
        vector.scatter %159[%c7] [%293], %294, %295 : memref<11xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
        %296 = tensor.empty() : tensor<8x10x11xi1>
        scf.reduce.return %296 : tensor<8x10x11xi1>
      }
      scf.yield
    }
    %267 = affine.vector_load %alloc_33[%136] : memref<10xi64>, vector<11xi64>
    affine.vector_store %196, %alloc_32[%c8] : memref<11xi32>, vector<11xi32>
    vector.print %20 : vector<11xi1>
    vector.print %25 : vector<11xi1>
    vector.print %33 : vector<1xi1>
    vector.print %36 : vector<8x10x11xi1>
    vector.print %40 : vector<8xi64>
    vector.print %41 : vector<8xi1>
    vector.print %42 : vector<8xi32>
    vector.print %43 : vector<8xi64>
    vector.print %46 : vector<6xi1>
    vector.print %58 : vector<8xf32>
    vector.print %59 : vector<8xf32>
    vector.print %70 : vector<11xi1>
    vector.print %81 : vector<11xi1>
    vector.print %91 : vector<6xi16>
    vector.print %94 : vector<8x10x11xf32>
    vector.print %95 : vector<8x10x11xf32>
    vector.print %97 : vector<10x8xi1>
    vector.print %118 : vector<11xi1>
    vector.print %123 : vector<8xi1>
    vector.print %128 : vector<8xi1>
    vector.print %137 : vector<6xi16>
    vector.print %138 : vector<8xf32>
    vector.print %139 : vector<6xi32>
    vector.print %140 : vector<6xi32>
    vector.print %141 : vector<8xi32>
    vector.print %143 : vector<66xi1>
    vector.print %145 : vector<8xi32>
    vector.print %146 : vector<8x10x11xf16>
    vector.print %147 : vector<6xi32>
    vector.print %151 : vector<8x10x11xi32>
    vector.print %193 : vector<8xi32>
    vector.print %195 : vector<11xi32>
    vector.print %196 : vector<11xi32>
    vector.print %199 : vector<11xi16>
    vector.print %203 : vector<11xi64>
    vector.print %204 : vector<11xi64>
    vector.print %211 : vector<2x10x11xi1>
    vector.print %212 : vector<8xi1>
    vector.print %224 : vector<8xf32>
    vector.print %225 : vector<8xf32>
    vector.print %239 : vector<8xi1>
    vector.print %242 : vector<12xi32>
    vector.print %243 : vector<2x2x11xf32>
    vector.print %252 : vector<8x10x11xi1>
    vector.print %267 : vector<11xi64>
    vector.print %c1001199181_i32 : i32
    vector.print %cst : f32
    vector.print %true : i1
    vector.print %c27041_i16 : i16
    vector.print %c637764511_i64 : i64
    vector.print %c1241933340_i32 : i32
    vector.print %c1540828751_i64 : i64
    vector.print %c-23333_i16 : i16
    vector.print %c8047_i16 : i16
    vector.print %cst_0 : f16
    vector.print %c23004_i16 : i16
    vector.print %c494475913_i64 : i64
    vector.print %cst_1 : f16
    vector.print %cst_2 : f16
    vector.print %cst_3 : f32
    vector.print %cst_4 : f16
    vector.print %extracted : i1
    vector.print %extracted_21 : f32
    vector.print %cst_28 : f32
    vector.print %extracted_30 : f32
    return
  }
}
