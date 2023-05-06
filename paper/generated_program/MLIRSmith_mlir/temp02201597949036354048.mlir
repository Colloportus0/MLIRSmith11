module {
  func.func nested @func1(%arg0: tensor<8xi1>) -> vector<9x9xf16> {
    %c2141809103_i32 = arith.constant 2141809103 : i32
    %false = arith.constant false
    %cst = arith.constant 2.768000e+04 : f16
    %c31671818_i64 = arith.constant 31671818 : i64
    %c12921_i16 = arith.constant 12921 : i16
    %c18588081_i32 = arith.constant 18588081 : i32
    %c1432919559_i32 = arith.constant 1432919559 : i32
    %c609405922_i64 = arith.constant 609405922 : i64
    %cst_0 = arith.constant 3.942400e+04 : f16
    %cst_1 = arith.constant 1.53436416E+9 : f32
    %cst_2 = arith.constant 0x4C93355E : f32
    %c809_i16 = arith.constant 809 : i16
    %c72559683_i32 = arith.constant 72559683 : i32
    %c256786492_i64 = arith.constant 256786492 : i64
    %cst_3 = arith.constant 1.2502071E+9 : f32
    %cst_4 = arith.constant 0x4C3C0B53 : f32
    %0 = tensor.empty() : tensor<6x6x6xf32>
    %1 = tensor.empty() : tensor<8xi1>
    %2 = tensor.empty() : tensor<9x9xi16>
    %3 = tensor.empty() : tensor<8xi32>
    %4 = tensor.empty() : tensor<6x8xi16>
    %5 = tensor.empty() : tensor<6x8xf32>
    %6 = tensor.empty() : tensor<9x9xi16>
    %7 = tensor.empty() : tensor<8xf32>
    %8 = tensor.empty() : tensor<6x6x6xf32>
    %9 = tensor.empty() : tensor<8xi16>
    %10 = tensor.empty() : tensor<6x8xi16>
    %11 = tensor.empty() : tensor<6x6x6xi16>
    %12 = tensor.empty() : tensor<6x6x6xf16>
    %13 = tensor.empty() : tensor<8xi1>
    %14 = tensor.empty() : tensor<8xi16>
    %15 = tensor.empty() : tensor<9x9xi1>
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
    %alloc = memref.alloc() : memref<8xi64>
    %alloc_5 = memref.alloc() : memref<8xi32>
    %alloc_6 = memref.alloc() : memref<6x8xf32>
    %alloc_7 = memref.alloc() : memref<9x9xf16>
    %alloc_8 = memref.alloc() : memref<6x8xi64>
    %alloc_9 = memref.alloc() : memref<8xi16>
    %alloc_10 = memref.alloc() : memref<9x9xi32>
    %alloc_11 = memref.alloc() : memref<9x9xf16>
    %alloc_12 = memref.alloc() : memref<6x6x6xi32>
    %alloc_13 = memref.alloc() : memref<8xi16>
    %alloc_14 = memref.alloc() : memref<6x8xi64>
    %alloc_15 = memref.alloc() : memref<8xi1>
    %alloc_16 = memref.alloc() : memref<6x8xf32>
    %alloc_17 = memref.alloc() : memref<9x9xf32>
    %alloc_18 = memref.alloc() : memref<6x6x6xi1>
    %alloc_19 = memref.alloc() : memref<9x9xi32>
    %16 = tensor.empty() : tensor<8xi16>
    %17 = linalg.copy ins(%9 : tensor<8xi16>) outs(%16 : tensor<8xi16>) -> tensor<8xi16>
    %alloc_20 = memref.alloc() : memref<6x6x6xi32>
    linalg.transpose ins(%alloc_12 : memref<6x6x6xi32>) outs(%alloc_20 : memref<6x6x6xi32>) permutation = [2, 0, 1] 
    %alloc_21 = memref.alloc() : memref<f32>
    linalg.reduce ins(%7 : tensor<8xf32>) outs(%alloc_21 : memref<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %248 = vector.broadcast %false : i1 to vector<6xi1>
        %249 = vector.flat_transpose %248 {columns = 2 : i32, rows = 3 : i32} : vector<6xi1> -> vector<6xi1>
        %250 = math.log10 %cst_3 : f32
        %251 = math.roundeven %7 : tensor<8xf32>
        %252 = index.castu %c5 : index to i32
        %253 = tensor.empty() : tensor<6x6x6xi16>
        %254 = arith.divui %c12921_i16, %c12921_i16 : i16
        %255 = arith.negf %cst_3 : f32
        %256 = math.log10 %7 : tensor<8xf32>
        %cst_51 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_51 : f32
      }
    %18 = scf.parallel (%arg1, %arg2) = (%c0, %c12) to (%c10, %c4) step (%c9, %c3) init (%17) -> tensor<8xi16> {
      %248 = math.atan2 %5, %5 : tensor<6x8xf32>
      %rank_51 = tensor.rank %8 : tensor<6x6x6xf32>
      %249 = math.floor %cst : f16
      %250 = vector.broadcast %c1432919559_i32 : i32 to vector<8xi32>
      vector.print %250 : vector<8xi32>
      memref.store %cst_1, %alloc_17[%c8, %c4] : memref<9x9xf32>
      %251 = arith.maxsi %false, %false : i1
      %252 = arith.muli %c2141809103_i32, %c72559683_i32 : i32
      %253 = vector.transpose %250, [0] : vector<8xi32> to vector<8xi32>
      %254 = vector.broadcast %cst_4 : f32 to vector<9x9xf32>
      %255 = vector.fma %254, %254, %254 : vector<9x9xf32>
      %256 = math.rsqrt %cst_1 : f32
      %257 = arith.negf %cst_2 : f32
      %rank_52 = tensor.rank %13 : tensor<8xi1>
      %258 = vector.broadcast %cst_2 : f32 to vector<9xf32>
      %259 = vector.insert %258, %255 [3] : vector<9xf32> into vector<9x9xf32>
      scf.execute_region {
        %263 = arith.cmpi ugt, %c31671818_i64, %c256786492_i64 : i64
        %from_elements_53 = tensor.from_elements %c72559683_i32, %c72559683_i32, %c72559683_i32, %c2141809103_i32, %c2141809103_i32, %c18588081_i32, %c2141809103_i32, %c2141809103_i32, %c2141809103_i32, %c72559683_i32, %c72559683_i32, %c1432919559_i32, %c1432919559_i32, %c1432919559_i32, %c2141809103_i32, %c2141809103_i32, %c18588081_i32, %c2141809103_i32, %c18588081_i32, %c72559683_i32, %c1432919559_i32, %c1432919559_i32, %c1432919559_i32, %c2141809103_i32, %c18588081_i32, %c72559683_i32, %c72559683_i32, %c18588081_i32, %c2141809103_i32, %c1432919559_i32, %c72559683_i32, %c72559683_i32, %c1432919559_i32, %c18588081_i32, %c2141809103_i32, %c18588081_i32, %c18588081_i32, %c18588081_i32, %c1432919559_i32, %c18588081_i32, %c2141809103_i32, %c2141809103_i32, %c72559683_i32, %c18588081_i32, %c18588081_i32, %c2141809103_i32, %c18588081_i32, %c18588081_i32 : tensor<6x8xi32>
        %264 = arith.remsi %c12921_i16, %c809_i16 : i16
        %265 = vector.broadcast %cst_2 : f32 to vector<6xf32>
        vector.transfer_write %265, %alloc_16[%c0, %c5] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<6xf32>, memref<6x8xf32>
        %266 = math.ctpop %from_elements_53 : tensor<6x8xi32>
        %267 = index.add %c10, %c2
        %from_elements_54 = tensor.from_elements %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false : tensor<6x6x6xi1>
        %268 = index.ceildivs %arg2, %rank_52
        %269 = vector.shuffle %258, %265 [1, 3, 5, 7, 9, 10, 11] : vector<9xf32>, vector<6xf32>
        %270 = index.add %c6, %arg1
        %271 = index.ceildivu %c9, %268
        %272 = math.roundeven %cst_4 : f32
        %273 = vector.insert %cst_4, %265 [3] : f32 into vector<6xf32>
        %274 = vector.extract_strided_slice %254 {offsets = [2], sizes = [5], strides = [1]} : vector<9x9xf32> to vector<5x9xf32>
        %275 = arith.minf %cst, %cst : f16
        %extracted_55 = tensor.extract %15[%c2, %c5] : tensor<9x9xi1>
        scf.yield
      }
      %260 = scf.index_switch %c2 -> index 
      case 1 {
        %263 = math.absi %c1432919559_i32 : i32
        %264 = arith.muli %c256786492_i64, %c31671818_i64 : i64
        memref.store %c12921_i16, %alloc_13[%c6] : memref<8xi16>
        %265 = index.ceildivu %arg1, %c8
        %266 = arith.minf %cst_2, %cst_1 : f32
        %267 = arith.minf %cst_4, %cst_3 : f32
        memref.assume_alignment %alloc_16, 2 : memref<6x8xf32>
        %cst_53 = arith.constant 0x4E3CE390 : f32
        %268 = arith.andi %c609405922_i64, %c31671818_i64 : i64
        %269 = vector.multi_reduction <add>, %255, %258 [1] : vector<9x9xf32> to vector<9xf32>
        %270 = vector.reduction <add>, %258 : vector<9xf32> into f32
        %from_elements_54 = tensor.from_elements %c809_i16, %c12921_i16, %c809_i16, %c12921_i16, %c12921_i16, %c809_i16, %c809_i16, %c12921_i16, %c12921_i16, %c809_i16, %c12921_i16, %c12921_i16, %c12921_i16, %c12921_i16, %c809_i16, %c12921_i16, %c809_i16, %c12921_i16, %c12921_i16, %c12921_i16, %c809_i16, %c809_i16, %c809_i16, %c12921_i16, %c12921_i16, %c809_i16, %c809_i16, %c12921_i16, %c12921_i16, %c809_i16, %c12921_i16, %c12921_i16, %c12921_i16, %c809_i16, %c12921_i16, %c809_i16, %c809_i16, %c809_i16, %c809_i16, %c809_i16, %c809_i16, %c809_i16, %c12921_i16, %c809_i16, %c12921_i16, %c12921_i16, %c12921_i16, %c809_i16, %c12921_i16, %c809_i16, %c12921_i16, %c12921_i16, %c12921_i16, %c12921_i16, %c809_i16, %c12921_i16, %c12921_i16, %c809_i16, %c809_i16, %c809_i16, %c809_i16, %c809_i16, %c809_i16, %c12921_i16, %c809_i16, %c809_i16, %c12921_i16, %c809_i16, %c809_i16, %c12921_i16, %c12921_i16, %c809_i16, %c809_i16, %c809_i16, %c809_i16, %c12921_i16, %c809_i16, %c809_i16, %c12921_i16, %c809_i16, %c12921_i16 : tensor<9x9xi16>
        %271 = math.atan2 %0, %8 : tensor<6x6x6xf32>
        %272 = vector.create_mask %c5, %c15 : vector<6x8xi1>
        %273 = arith.shrui %c31671818_i64, %c31671818_i64 : i64
        %274 = vector.reduction <maxsi>, %250 : vector<8xi32> into i32
        scf.yield %rank_52 : index
      }
      case 2 {
        %expanded_53 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<9x9xi16> into tensor<9x9x1xi16>
        %263 = math.absf %cst : f16
        affine.store %c809_i16, %alloc_9[%c14] : memref<8xi16>
        %264 = math.round %12 : tensor<6x6x6xf16>
        %265 = vector.broadcast %cst_0 : f16 to vector<6x8xf16>
        %266 = vector.broadcast %false : i1 to vector<6x8xi1>
        %267 = vector.broadcast %c1432919559_i32 : i32 to vector<6x8xi32>
        %268 = vector.gather %12[%arg1, %rank_52, %c0] [%267], %266, %265 : tensor<6x6x6xf16>, vector<6x8xi32>, vector<6x8xi1>, vector<6x8xf16> into vector<6x8xf16>
        %269 = vector.broadcast %c18588081_i32 : i32 to vector<6x6x6xi32>
        %rank_54 = tensor.rank %2 : tensor<9x9xi16>
        %270 = vector.splat %cst_3 : vector<8xf32>
        %271 = index.ceildivs %c6, %c3
        %272 = math.expm1 %0 : tensor<6x6x6xf32>
        %273 = bufferization.to_tensor %alloc_16 : memref<6x8xf32>
        %274 = affine.apply affine_map<(d0, d1, d2) -> (d2 floordiv 8 + d2)>(%c3, %271, %c13)
        %275 = arith.shrui %c31671818_i64, %c31671818_i64 : i64
        vector.print %255 : vector<9x9xf32>
        %276 = math.rsqrt %cst : f16
        %277 = math.exp %8 : tensor<6x6x6xf32>
        scf.yield %c6 : index
      }
      case 3 {
        %263 = vector.reduction <minui>, %250 : vector<8xi32> into i32
        %264 = math.ctpop %10 : tensor<6x8xi16>
        %265 = vector.broadcast %cst_2 : f32 to vector<6x8xf32>
        %266 = vector.fma %265, %265, %265 : vector<6x8xf32>
        %alloca_53 = memref.alloca() : memref<6x6x6xf32>
        %267 = vector.splat %c18588081_i32 : vector<6x6x6xi32>
        %268 = index.add %c8, %c15
        %269 = affine.apply affine_map<(d0, d1) -> (((d1 - d0) floordiv 16) * 16)>(%c6, %c1)
        %270 = math.exp %cst_0 : f16
        %271 = bufferization.to_memref %7 : memref<8xf32>
        %272 = math.atan2 %12, %12 : tensor<6x6x6xf16>
        %273 = affine.load %alloc_16[%c15, %c11] : memref<6x8xf32>
        %274 = arith.shrui %c12921_i16, %c809_i16 : i16
        %275 = math.absi %6 : tensor<9x9xi16>
        %276 = arith.maxf %273, %cst_3 : f32
        %277 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %250, %250, %c72559683_i32 : vector<8xi32>, vector<8xi32> into i32
        %278 = vector.shuffle %255, %254 [0, 1, 2, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17] : vector<9x9xf32>, vector<9x9xf32>
        scf.yield %rank_51 : index
      }
      default {
        %263 = math.tanh %cst_2 : f32
        %264 = bufferization.to_tensor %alloc_14 : memref<6x8xi64>
        %265 = index.divs %c3, %c4
        %alloc_53 = memref.alloc() : memref<9x9xi64>
        %266 = vector.broadcast %c609405922_i64 : i64 to vector<9x9xi64>
        %267 = vector.broadcast %false : i1 to vector<9x9xi1>
        %268 = vector.broadcast %c2141809103_i32 : i32 to vector<9x9xi32>
        %269 = vector.gather %alloc_53[%c10, %c3] [%268], %267, %266 : memref<9x9xi64>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xi64> into vector<9x9xi64>
        %270 = vector.extract %258[5] : vector<9xf32>
        %271 = affine.max affine_map<(d0) -> ((-((d0 ceildiv 16) ceildiv 64)) mod 2 + 16)>(%c10)
        %from_elements_54 = tensor.from_elements %c31671818_i64, %c31671818_i64, %c256786492_i64, %c31671818_i64, %c256786492_i64, %c609405922_i64, %c609405922_i64, %c256786492_i64 : tensor<8xi64>
        %272 = math.floor %12 : tensor<6x6x6xf16>
        %273 = math.powf %cst_0, %cst : f16
        %274 = vector.splat %c7 : vector<8xindex>
        %275 = tensor.empty(%271) : tensor<9x?xi32>
        %276 = arith.addf %cst_1, %cst_4 : f32
        %277 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %254, %254, %255 : vector<9x9xf32>, vector<9x9xf32> into vector<9x9xf32>
        %278 = vector.create_mask %arg2 : vector<8xi1>
        memref.store %cst_3, %alloc_16[%c4, %c1] : memref<6x8xf32>
        %rank_55 = tensor.rank %7 : tensor<8xf32>
        scf.yield %c8 : index
      }
      %261 = index.ceildivu %c15, %arg1
      %262 = tensor.empty() : tensor<8xi16>
      scf.reduce(%262)  : tensor<8xi16> {
      ^bb0(%arg3: tensor<8xi16>, %arg4: tensor<8xi16>):
        %263 = arith.mulf %cst_3, %cst_1 : f32
        %264 = vector.broadcast %cst_1 : f32 to vector<6x6x6xf32>
        %265 = vector.fma %264, %264, %264 : vector<6x6x6xf32>
        %266 = math.ctlz %arg3 : tensor<8xi16>
        %alloca_53 = memref.alloca() : memref<6x8xi16>
        %267 = index.divu %c11, %c5
        %268 = math.ctpop %c18588081_i32 : i32
        %collapsed_54 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<6x6x6xf16> into tensor<36x6xf16>
        %269 = affine.apply affine_map<(d0) -> (d0 - (d0 - 16) + d0 + 16)>(%c15)
        %270 = tensor.empty() : tensor<8xi16>
        scf.reduce.return %270 : tensor<8xi16>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_11[%c15, %c10] : memref<9x9xf16>, vector<9xf16>
    affine.vector_store %19, %alloc_7[%c5, %c0] : memref<9x9xf16>, vector<9xf16>
    %alloc_22 = memref.alloc() : memref<8xi64>
    %20 = tensor.empty() : tensor<i64>
    %21 = linalg.dot ins(%alloc, %alloc_22 : memref<8xi64>, memref<8xi64>) outs(%20 : tensor<i64>) -> tensor<i64>
    %22 = vector.broadcast %c609405922_i64 : i64 to vector<9x9xi64>
    %23 = math.roundeven %7 : tensor<8xf32>
    %24 = math.ctpop %3 : tensor<8xi32>
    %25 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %cst : vector<9xf16>, vector<9xf16> into f16
    %26 = tensor.empty() : tensor<6x8xi64>
    %27 = vector.broadcast %false : i1 to vector<9x9xi1>
    %28 = vector.broadcast %c2141809103_i32 : i32 to vector<9x9xi32>
    %29 = vector.gather %26[%c12, %c7] [%28], %27, %22 : tensor<6x8xi64>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xi64> into vector<9x9xi64>
    %30 = vector.create_mask %c0 : vector<8xi1>
    %31 = vector.broadcast %c72559683_i32 : i32 to vector<9xi32>
    %32 = vector.insert %31, %28 [8] : vector<9xi32> into vector<9x9xi32>
    %33 = arith.muli %c12921_i16, %c12921_i16 : i16
    %extracted = tensor.extract %21[] : tensor<i64>
    memref.assume_alignment %alloc_17, 8 : memref<9x9xf32>
    %34 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 2, d2 floordiv 64, d2)>(%c0, %c1, %c5, %c4)
    %35 = vector.create_mask %34, %c2, %c13 : vector<6x6x6xi1>
    %c1_i16 = arith.constant 1 : i16
    %c0_i16 = arith.constant 0 : i16
    %36 = vector.transfer_read %10[%34, %c12], %c0_i16 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<6x8xi16>, vector<9xi16>
    %37 = index.divu %c4, %c11
    %38 = index.add %c12, %c8
    %39 = vector.bitcast %28 : vector<9x9xi32> to vector<9x9xi32>
    memref.assume_alignment %alloc_8, 8 : memref<6x8xi64>
    %40 = arith.divsi %extracted, %c609405922_i64 : i64
    %expanded = tensor.expand_shape %13 [[0, 1]] : tensor<8xi1> into tensor<8x1xi1>
    %41 = math.round %12 : tensor<6x6x6xf16>
    %42 = math.absi %c72559683_i32 : i32
    memref.assume_alignment %alloc_14, 8 : memref<6x8xi64>
    %43 = index.add %c5, %c6
    memref.copy %alloc_6, %alloc_16 : memref<6x8xf32> to memref<6x8xf32>
    %44 = vector.broadcast %false : i1 to vector<9xi1>
    %45 = vector.insert %44, %27 [7] : vector<9xi1> into vector<9x9xi1>
    %46 = affine.for %arg1 = 0 to 8 iter_args(%arg2 = %14) -> (tensor<8xi16>) {
      affine.yield %17 : tensor<8xi16>
    }
    %true = index.bool.constant true
    %47 = vector.broadcast %c31671818_i64 : i64 to vector<9xi64>
    %dest, %accumulated_value = vector.scan <xor>, %29, %47 {inclusive = true, reduction_dim = 0 : i64} : vector<9x9xi64>, vector<9xi64>
    %48 = arith.remui %c1432919559_i32, %c72559683_i32 : i32
    %alloc_23 = memref.alloc() : memref<6xf16>
    %49 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_23 : memref<6xf16>) outs(%12 : tensor<6x6x6xf16>) {
    ^bb0(%in: f16, %out: f16):
      %collapsed_51 = tensor.collapse_shape %4 [[0, 1]] : tensor<6x8xi16> into tensor<48xi16>
      %248 = math.roundeven %5 : tensor<6x8xf32>
      %249 = arith.subi %c12921_i16, %c12921_i16 : i16
      %250 = math.atan2 %cst_0, %in : f16
      %alloc_52 = memref.alloc() : memref<f32>
      memref.copy %alloc_21, %alloc_52 : memref<f32> to memref<f32>
      %251 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %44, %44, %false : vector<9xi1>, vector<9xi1> into i1
      memref.copy %alloc_12, %alloc_20 : memref<6x6x6xi32> to memref<6x6x6xi32>
      scf.index_switch %c6 
      case 1 {
        %272 = math.fpowi %out, %c72559683_i32 : f16, i32
        %273 = vector.transpose %44, [0] : vector<9xi1> to vector<9xi1>
        %cast_57 = tensor.cast %5 : tensor<6x8xf32> to tensor<?x?xf32>
        %274 = index.sub %c6, %c3
        %275 = vector.reduction <minf>, %19 : vector<9xf16> into f16
        %from_elements_58 = tensor.from_elements %c809_i16, %c12921_i16, %c1_i16, %c809_i16, %c12921_i16, %c1_i16, %c12921_i16, %c12921_i16, %c809_i16, %c12921_i16, %c809_i16, %c809_i16, %c1_i16, %c1_i16, %c809_i16, %c809_i16, %c1_i16, %c1_i16, %c12921_i16, %c1_i16, %c12921_i16, %c809_i16, %c12921_i16, %c809_i16, %c1_i16, %c1_i16, %c12921_i16, %c12921_i16, %c1_i16, %c1_i16, %c809_i16, %c809_i16, %c809_i16, %c809_i16, %c1_i16, %c809_i16, %c1_i16, %c809_i16, %c809_i16, %c12921_i16, %c12921_i16, %c809_i16, %c12921_i16, %c12921_i16, %c12921_i16, %c12921_i16, %c12921_i16, %c809_i16, %c1_i16, %c809_i16, %c12921_i16, %c12921_i16, %c1_i16, %c1_i16, %c1_i16, %c809_i16, %c12921_i16, %c809_i16, %c12921_i16, %c809_i16, %c809_i16, %c809_i16, %c1_i16, %c809_i16, %c1_i16, %c809_i16, %c809_i16, %c12921_i16, %c1_i16, %c809_i16, %c809_i16, %c1_i16, %c1_i16, %c12921_i16, %c12921_i16, %c12921_i16, %c1_i16, %c12921_i16, %c809_i16, %c12921_i16, %c809_i16 : tensor<9x9xi16>
        %276 = vector.matrix_multiply %31, %31 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi32>, vector<9xi32>) -> vector<1xi32>
        %dest_59, %accumulated_value_60 = vector.scan <add>, %39, %31 {inclusive = true, reduction_dim = 0 : i64} : vector<9x9xi32>, vector<9xi32>
        %277 = arith.shli %c809_i16, %c809_i16 : i16
        %278 = math.expm1 %0 : tensor<6x6x6xf32>
        %279 = index.sub %34, %c4
        memref.assume_alignment %alloc_12, 16 : memref<6x6x6xi32>
        %expanded_61 = tensor.expand_shape %collapsed_51 [[0, 1]] : tensor<48xi16> into tensor<48x1xi16>
        %280 = arith.remf %cst, %out : f16
        %281 = math.log10 %0 : tensor<6x6x6xf32>
        %282 = affine.max affine_map<(d0, d1, d2, d3) -> ((-d2 - 16) ceildiv 16)>(%c1, %c4, %c5, %c14)
        scf.yield
      }
      case 2 {
        %272 = arith.mulf %cst_3, %cst_4 : f32
        %273 = math.atan2 %8, %0 : tensor<6x6x6xf32>
        %274 = arith.negf %out : f16
        %275 = arith.maxsi %c72559683_i32, %c2141809103_i32 : i32
        %276 = tensor.empty(%c4, %37) : tensor<?x?x6xf32>
        %277 = math.tanh %8 : tensor<6x6x6xf32>
        %278 = vector.broadcast %out : f16 to vector<9x9xf16>
        %279 = vector.outerproduct %19, %19, %278 {kind = #vector.kind<add>} : vector<9xf16>, vector<9xf16>
        %280 = vector.create_mask %c3 : vector<8xi1>
        %expanded_57 = tensor.expand_shape %5 [[0], [1, 2]] : tensor<6x8xf32> into tensor<6x8x1xf32>
        %281 = arith.ori %c31671818_i64, %c256786492_i64 : i64
        %282 = arith.mulf %cst, %cst : f16
        %283 = vector.splat %c1_i16 : vector<9x9xi16>
        %284 = math.atan %0 : tensor<6x6x6xf32>
        %285 = index.ceildivu %c0, %c13
        %286 = arith.maxsi %false, %false : i1
        %cast_58 = tensor.cast %0 : tensor<6x6x6xf32> to tensor<?x?x?xf32>
        scf.yield
      }
      case 3 {
        %272 = arith.shrui %false, %true : i1
        memref.copy %alloc_7, %alloc_11 : memref<9x9xf16> to memref<9x9xf16>
        %273 = tensor.empty() : tensor<6x6x6xi16>
        %274 = tensor.empty() : tensor<9x9xi16>
        %275 = linalg.matmul ins(%6, %2 : tensor<9x9xi16>, tensor<9x9xi16>) outs(%274 : tensor<9x9xi16>) -> tensor<9x9xi16>
        %276 = vector.transpose %30, [0] : vector<8xi1> to vector<8xi1>
        %277 = math.ctpop %15 : tensor<9x9xi1>
        %278 = index.castu %extracted : i64 to index
        %279 = index.ceildivs %c8, %c1
        %280 = math.atan2 %in, %cst : f16
        %281 = arith.maxf %in, %out : f16
        %282 = arith.remsi %c18588081_i32, %c1432919559_i32 : i32
        affine.store %cst_1, %alloc_17[%c3, %c4] : memref<9x9xf32>
        memref.tensor_store %17, %alloc_9 : memref<8xi16>
        %283 = arith.remui %c256786492_i64, %c256786492_i64 : i64
        %284 = vector.transpose %28, [0, 1] : vector<9x9xi32> to vector<9x9xi32>
        %285 = arith.ceildivsi %c1_i16, %c12921_i16 : i16
        scf.yield
      }
      default {
        %272 = arith.minf %out, %cst : f16
        %273 = arith.shli %c72559683_i32, %c72559683_i32 : i32
        %274 = vector.broadcast %false : i1 to vector<6xi1>
        %275 = vector.maskedload %alloc_18[%c3, %c2, %c1], %274, %274 : memref<6x6x6xi1>, vector<6xi1>, vector<6xi1> into vector<6xi1>
        %276 = arith.muli %c12921_i16, %c809_i16 : i16
        %277 = index.castu %c14 : index to i32
        %rank_57 = tensor.rank %12 : tensor<6x6x6xf16>
        %278 = index.divu %c11, %43
        %279 = vector.broadcast %cst_4 : f32 to vector<8xf32>
        %280 = vector.fma %279, %279, %279 : vector<8xf32>
        %281 = math.atan2 %cst, %cst_0 : f16
        %282 = math.cos %cst_3 : f32
        %283 = math.expm1 %cst_2 : f32
        memref.assume_alignment %alloc_14, 2 : memref<6x8xi64>
        %284 = math.log10 %7 : tensor<8xf32>
        %285 = affine.max affine_map<(d0, d1) -> (d1 - d0 - d1)>(%c1, %c6)
        %286 = arith.subi %c12921_i16, %c1_i16 : i16
        %287 = arith.cmpf true, %cst_4, %cst_1 : f32
      }
      %collapsed_53 = tensor.collapse_shape %5 [[0, 1]] : tensor<6x8xf32> into tensor<48xf32>
      %generated_54 = tensor.generate %c3 {
      ^bb0(%arg1: index):
        %272 = math.round %0 : tensor<6x6x6xf32>
        %273 = vector.broadcast %c1_i16 : i16 to vector<i16>
        %274 = vector.transfer_write %273, %14[%c4] : vector<i16>, tensor<8xi16>
        %275 = memref.atomic_rmw maxs %c2141809103_i32, %alloc_20[%c4, %c1, %c1] : (i32, memref<6x6x6xi32>) -> i32
        %276 = vector.insertelement %in, %19[%c15 : index] : vector<9xf16>
        tensor.yield %in : f16
      } : tensor<?xf16>
      %252 = affine.apply affine_map<(d0, d1, d2) -> (((d0 + d2) mod 4) ceildiv 8)>(%c5, %c10, %c14)
      %253 = bufferization.to_tensor %alloc_12 : memref<6x6x6xi32>
      %254 = math.cos %in : f16
      %255 = math.log10 %12 : tensor<6x6x6xf16>
      memref.copy %alloc_6, %alloc_16 : memref<6x8xf32> to memref<6x8xf32>
      memref.copy %alloc_6, %alloc_16 : memref<6x8xf32> to memref<6x8xf32>
      %256 = vector.broadcast %cst_4 : f32 to vector<8xf32>
      %257 = vector.fma %256, %256, %256 : vector<8xf32>
      %258 = vector.reduction <maxui>, %44 : vector<9xi1> into i1
      %expanded_55 = tensor.expand_shape %13 [[0, 1]] : tensor<8xi1> into tensor<8x1xi1>
      %259 = index.castu %c256786492_i64 : i64 to index
      %260 = arith.mulf %cst_3, %cst_4 : f32
      %261 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 mod 2)>(%c7, %c13, %37, %c6)
      %262 = math.copysign %7, %7 : tensor<8xf32>
      %false_56 = index.bool.constant false
      %263 = vector.flat_transpose %30 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
      %264 = index.castu %c15 : index to i32
      %265 = vector.broadcast %false : i1 to vector<6x6xi1>
      %266 = vector.multi_reduction <mul>, %35, %265 [1] : vector<6x6x6xi1> to vector<6x6xi1>
      %267 = vector.outerproduct %31, %31, %28 {kind = #vector.kind<maxui>} : vector<9xi32>, vector<9xi32>
      %268 = bufferization.to_memref %11 : memref<6x6x6xi16>
      %269 = math.floor %7 : tensor<8xf32>
      %270 = vector.create_mask %c5, %c11, %c15 : vector<6x6x6xi1>
      %271 = arith.maxf %out, %cst : f16
      linalg.yield %cst : f16
    } -> tensor<6x6x6xf16>
    %50 = math.expm1 %5 : tensor<6x8xf32>
    %51 = bufferization.to_tensor %alloc_5 : memref<8xi32>
    %52 = vector.transpose %31, [0] : vector<9xi32> to vector<9xi32>
    %53 = vector.transpose %22, [1, 0] : vector<9x9xi64> to vector<9x9xi64>
    %54 = math.atan2 %5, %5 : tensor<6x8xf32>
    %55 = arith.maxf %cst, %cst : f16
    %56 = index.divs %38, %c13
    %57 = math.copysign %7, %7 : tensor<8xf32>
    memref.copy %alloc_8, %alloc_14 : memref<6x8xi64> to memref<6x8xi64>
    %58 = arith.cmpi sle, %c1_i16, %c12921_i16 : i16
    %59 = arith.minsi %c809_i16, %c809_i16 : i16
    %extracted_24 = tensor.extract %4[%c2, %c0] : tensor<6x8xi16>
    %60 = arith.mulf %cst_2, %cst_2 : f32
    %61 = math.ipowi %14, %17 : tensor<8xi16>
    %62 = vector.broadcast %extracted : i64 to vector<9xi64>
    %dest_25, %accumulated_value_26 = vector.scan <xor>, %29, %62 {inclusive = true, reduction_dim = 1 : i64} : vector<9x9xi64>, vector<9xi64>
    %63 = arith.maxf %cst_4, %cst_1 : f32
    vector.print %27 : vector<9x9xi1>
    %64 = arith.maxsi %extracted, %c609405922_i64 : i64
    %65 = math.cos %cst_2 : f32
    %66 = vector.reduction <mul>, %19 : vector<9xf16> into f16
    %67 = arith.remf %cst_4, %cst_4 : f32
    %68 = vector.insertelement %false, %30[%56 : index] : vector<8xi1>
    %69 = arith.remf %cst_0, %cst : f16
    %70 = math.ctpop %c1_i16 : i16
    %71 = arith.muli %c18588081_i32, %c18588081_i32 : i32
    %72 = arith.ceildivsi %c31671818_i64, %c609405922_i64 : i64
    memref.assume_alignment %alloc_6, 1 : memref<6x8xf32>
    %73 = vector.create_mask %c15, %c2, %c15 : vector<6x6x6xi1>
    %74 = vector.shuffle %22, %29 [0, 1, 5, 6, 8, 9, 10, 12, 13, 15, 16, 17] : vector<9x9xi64>, vector<9x9xi64>
    %75 = math.round %cst_2 : f32
    %alloca = memref.alloca() : memref<6x8xf32>
    %collapsed = tensor.collapse_shape %6 [[0, 1]] : tensor<9x9xi16> into tensor<81xi16>
    %76 = arith.maxf %cst_2, %cst_4 : f32
    %77 = affine.for %arg1 = 0 to 27 iter_args(%arg2 = %4) -> (tensor<6x8xi16>) {
      affine.yield %10 : tensor<6x8xi16>
    }
    affine.for %arg1 = 0 to 30 {
    }
    %from_elements = tensor.from_elements %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_4, %cst_3, %cst_4 : tensor<8xf32>
    %78 = scf.execute_region -> index {
      %248 = vector.splat %c18588081_i32 : vector<6x8xi32>
      %249 = arith.minf %cst_2, %cst_4 : f32
      %250 = math.absf %8 : tensor<6x6x6xf32>
      %251 = math.ctpop %11 : tensor<6x6x6xi16>
      %expanded_51 = tensor.expand_shape %9 [[0, 1]] : tensor<8xi16> into tensor<8x1xi16>
      %252 = math.round %from_elements : tensor<8xf32>
      %253 = math.round %from_elements : tensor<8xf32>
      %254 = affine.apply affine_map<(d0, d1, d2) -> (((d0 + d2) mod 4) ceildiv 8)>(%c8, %c15, %c12)
      %255 = index.ceildivu %43, %34
      %256 = math.ipowi %3, %51 : tensor<8xi32>
      %257 = index.castu %c1 : index to i32
      %258 = vector.broadcast %cst_3 : f32 to vector<6x8xf32>
      %259 = vector.fma %258, %258, %258 : vector<6x8xf32>
      %260 = math.exp2 %7 : tensor<8xf32>
      %261 = math.round %cst_0 : f16
      %262 = affine.max affine_map<(d0, d1, d2, d3) -> ((-d0) mod 2, d3 * 32 + 8)>(%c7, %c14, %c13, %38)
      %263 = math.absi %11 : tensor<6x6x6xi16>
      scf.yield %c10 : index
    }
    %79 = arith.maxui %false, %true : i1
    %80 = arith.maxui %c609405922_i64, %c31671818_i64 : i64
    %81 = math.tanh %cst_0 : f16
    %82 = arith.remf %cst_4, %cst_3 : f32
    %83 = vector.insertelement %cst, %19[%c6 : index] : vector<9xf16>
    %84 = arith.minsi %c18588081_i32, %c2141809103_i32 : i32
    %85 = arith.maxf %cst_2, %cst_1 : f32
    %generated = tensor.generate %c13 {
    ^bb0(%arg1: index):
      %248 = vector.splat %extracted_24 : vector<8xi16>
      %249 = arith.maxsi %false, %true : i1
      %250 = math.log10 %0 : tensor<6x6x6xf32>
      %251 = arith.negf %cst_4 : f32
      tensor.yield %c2141809103_i32 : i32
    } : tensor<?xi32>
    %generated_27 = tensor.generate %78, %c0 {
    ^bb0(%arg1: index, %arg2: index):
      memref.store %c609405922_i64, %alloc_22[%c0] : memref<8xi64>
      %248 = arith.ceildivsi %extracted_24, %c1_i16 : i16
      %from_elements_51 = tensor.from_elements %c256786492_i64, %extracted, %c609405922_i64, %c256786492_i64, %c31671818_i64, %extracted, %c31671818_i64, %c31671818_i64 : tensor<8xi64>
      %249 = arith.floordivsi %c1_i16, %c1_i16 : i16
      tensor.yield %cst_0 : f16
    } : tensor<?x?xf16>
    %86 = arith.negf %cst_0 : f16
    %c46933524_i32 = arith.constant 46933524 : i32
    %87 = index.ceildivs %34, %43
    %88 = arith.maxf %cst, %cst_0 : f16
    %89 = arith.shrsi %c18588081_i32, %c1432919559_i32 : i32
    %90 = arith.mulf %cst_2, %cst_3 : f32
    %91 = math.atan2 %cst_2, %cst_1 : f32
    %92 = vector.load %alloc[%c6] : memref<8xi64>, vector<6x8xi64>
    %93 = arith.muli %c609405922_i64, %c31671818_i64 : i64
    %94 = arith.negf %cst_4 : f32
    %95 = arith.remf %cst_2, %cst_3 : f32
    %96 = bufferization.to_tensor %alloc_14 : memref<6x8xi64>
    %97 = vector.broadcast %c1_i16 : i16 to vector<i16>
    vector.transfer_write %97, %alloc_9[%c0] : vector<i16>, memref<8xi16>
    %98 = vector.flat_transpose %19 {columns = 3 : i32, rows = 3 : i32} : vector<9xf16> -> vector<9xf16>
    %99 = math.round %cst_1 : f32
    %100 = arith.remsi %c12921_i16, %c12921_i16 : i16
    bufferization.dealloc_tensor %3 : tensor<8xi32>
    %101 = arith.addf %cst, %cst_0 : f16
    %102 = index.ceildivu %78, %c14
    %103 = vector.broadcast %false : i1 to vector<6x6xi1>
    %104 = vector.multi_reduction <xor>, %73, %103 [0] : vector<6x6x6xi1> to vector<6x6xi1>
    %105 = index.mul %34, %37
    %106 = math.atan %12 : tensor<6x6x6xf16>
    %107 = arith.minf %cst_4, %cst_4 : f32
    %108 = memref.load %alloc_6[%c4, %c0] : memref<6x8xf32>
    %109 = index.mul %102, %c12
    %110 = math.floor %7 : tensor<8xf32>
    %111 = arith.minf %cst, %cst : f16
    %alloc_28 = memref.alloc() : memref<6x6xf16>
    %alloc_29 = memref.alloc() : memref<6xf16>
    %112 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_28, %alloc_29 : memref<6x6xf16>, memref<6xf16>) outs(%12 : tensor<6x6x6xf16>) {
    ^bb0(%in: f16, %in_51: f16, %out: f16):
      %248 = index.castu %extracted_24 : i16 to index
      %249 = vector.broadcast %false : i1 to vector<i1>
      %250 = vector.transfer_write %249, %1[%c7] : vector<i1>, tensor<8xi1>
      %251 = tensor.empty() : tensor<6x8xf32>
      %mapped_52 = linalg.map ins(%alloc_6, %alloc_16 : memref<6x8xf32>, memref<6x8xf32>) outs(%251 : tensor<6x8xf32>)
        (%in_59: f32, %in_60: f32) {
          %cast_61 = tensor.cast %4 : tensor<6x8xi16> to tensor<?x?xi16>
          %279 = index.add %248, %78
          %280 = math.exp2 %in : f16
          %281 = math.ipowi %17, %14 : tensor<8xi16>
          %282 = arith.shrsi %c1432919559_i32, %c2141809103_i32 : i32
          %283 = math.atan2 %7, %7 : tensor<8xf32>
          %284 = arith.remf %in_51, %cst : f16
          %285 = vector.broadcast %c72559683_i32 : i32 to vector<8xi32>
          %286 = vector.maskedload %alloc_5[%c6], %30, %285 : memref<8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
          %287 = math.rsqrt %12 : tensor<6x6x6xf16>
          %288 = vector.create_mask %c8 : vector<8xi1>
          %289 = math.exp %5 : tensor<6x8xf32>
          %290 = vector.splat %c6 : vector<6x6x6xindex>
          %291 = arith.mulf %in_60, %cst_3 : f32
          %292 = index.divs %c15, %c11
          %293 = arith.minf %in_60, %in_59 : f32
          %294 = bufferization.to_tensor %alloc_15 : memref<8xi1>
          %295 = arith.maxf %cst_0, %out : f16
          %296 = arith.remf %in_60, %cst_3 : f32
          %rank_62 = tensor.rank %9 : tensor<8xi16>
          %297 = arith.negf %in_59 : f32
          %true_63 = index.bool.constant true
          %rank_64 = tensor.rank %2 : tensor<9x9xi16>
          %298 = arith.shrui %extracted, %c609405922_i64 : i64
          %299 = index.ceildivs %c10, %279
          %300 = arith.shrsi %c31671818_i64, %c256786492_i64 : i64
          memref.assume_alignment %alloc_10, 4 : memref<9x9xi32>
          %301 = math.log10 %in : f16
          %302 = math.powf %in, %out : f16
          %303 = math.fma %5, %251, %251 : tensor<6x8xf32>
          %304 = vector.splat %c14 : vector<6x8xindex>
          %collapsed_65 = tensor.collapse_shape %96 [[0, 1]] : tensor<6x8xi64> into tensor<48xi64>
          %from_elements_66 = tensor.from_elements %c72559683_i32, %c72559683_i32, %c72559683_i32, %c2141809103_i32, %c72559683_i32, %c72559683_i32, %c2141809103_i32, %c1432919559_i32, %c18588081_i32, %c72559683_i32, %c72559683_i32, %c1432919559_i32, %c2141809103_i32, %c2141809103_i32, %c1432919559_i32, %c18588081_i32, %c1432919559_i32, %c72559683_i32, %c18588081_i32, %c18588081_i32, %c2141809103_i32, %c72559683_i32, %c2141809103_i32, %c18588081_i32, %c72559683_i32, %c72559683_i32, %c2141809103_i32, %c2141809103_i32, %c18588081_i32, %c72559683_i32, %c72559683_i32, %c2141809103_i32, %c18588081_i32, %c1432919559_i32, %c2141809103_i32, %c1432919559_i32, %c2141809103_i32, %c2141809103_i32, %c1432919559_i32, %c1432919559_i32, %c72559683_i32, %c2141809103_i32, %c72559683_i32, %c2141809103_i32, %c18588081_i32, %c72559683_i32, %c72559683_i32, %c18588081_i32, %c2141809103_i32, %c72559683_i32, %c72559683_i32, %c2141809103_i32, %c72559683_i32, %c2141809103_i32, %c1432919559_i32, %c72559683_i32, %c72559683_i32, %c18588081_i32, %c2141809103_i32, %c72559683_i32, %c2141809103_i32, %c1432919559_i32, %c72559683_i32, %c2141809103_i32, %c72559683_i32, %c72559683_i32, %c1432919559_i32, %c18588081_i32, %c72559683_i32, %c72559683_i32, %c72559683_i32, %c72559683_i32, %c1432919559_i32, %c1432919559_i32, %c18588081_i32, %c2141809103_i32, %c2141809103_i32, %c18588081_i32, %c18588081_i32, %c1432919559_i32, %c18588081_i32 : tensor<9x9xi32>
          %cst_67 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_67 : f32
        }
      %252 = vector.multi_reduction <and>, %39, %c1432919559_i32 [0, 1] : vector<9x9xi32> to i32
      %rank_53 = tensor.rank %0 : tensor<6x6x6xf32>
      %253 = tensor.empty(%c5) : tensor<?xi1>
      %254 = arith.muli %c12921_i16, %extracted_24 : i16
      %255 = index.divs %105, %c15
      %256 = math.roundeven %cst_2 : f32
      %257 = affine.max affine_map<(d0) -> (((d0 mod 128) ceildiv 16 + d0 mod 128) ceildiv 8 - 16, d0 * 64)>(%c8)
      %dest_54, %accumulated_value_55 = vector.scan <mul>, %28, %31 {inclusive = true, reduction_dim = 1 : i64} : vector<9x9xi32>, vector<9xi32>
      %c1_i16_56 = arith.constant 1 : i16
      %c0_i16_57 = arith.constant 0 : i16
      %258 = vector.transfer_read %4[%c5, %c15], %c0_i16_57 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<6x8xi16>, vector<8xi16>
      %259 = math.fpowi %cst_3, %c2141809103_i32 : f32, i32
      %260 = arith.floordivsi %c12921_i16, %c1_i16_56 : i16
      %261 = math.expm1 %cst_4 : f32
      %262 = tensor.empty() : tensor<6x8xi16>
      %mapped_58 = linalg.map ins(%10, %10, %10 : tensor<6x8xi16>, tensor<6x8xi16>, tensor<6x8xi16>) outs(%262 : tensor<6x8xi16>)
        (%in_59: i16, %in_60: i16, %in_61: i16) {
          %279 = index.sizeof
          %280 = math.tanh %7 : tensor<8xf32>
          %cst_62 = arith.constant 1.000000e+00 : f32
          %281 = vector.transfer_read %251[%78, %257], %cst_62 : tensor<6x8xf32>, vector<9xf32>
          %282 = vector.broadcast %cst_4 : f32 to vector<9x9xf32>
          %283 = vector.fma %282, %282, %282 : vector<9x9xf32>
          %284 = bufferization.to_tensor %alloc_20 : memref<6x6x6xi32>
          %285 = arith.remf %cst_62, %cst_3 : f32
          %286 = arith.maxf %in, %cst : f16
          %287 = arith.maxf %in, %cst : f16
          %288 = math.ctpop %in_59 : i16
          %289 = arith.remf %cst_1, %cst_4 : f32
          %290 = math.round %0 : tensor<6x6x6xf32>
          %291 = arith.minsi %c609405922_i64, %extracted : i64
          %292 = arith.shli %c2141809103_i32, %c2141809103_i32 : i32
          %293 = math.round %0 : tensor<6x6x6xf32>
          %294 = math.absf %cst_3 : f32
          %295 = arith.minsi %in_60, %extracted_24 : i16
          memref.copy %alloc_9, %alloc_13 : memref<8xi16> to memref<8xi16>
          %296 = vector.broadcast %c1_i16_56 : i16 to vector<6x6x6xi16>
          %297 = math.round %out : f16
          %298 = vector.splat %c11 : vector<9x9xindex>
          %299 = math.exp2 %cst : f16
          %300 = math.floor %7 : tensor<8xf32>
          %301 = vector.matrix_multiply %31, %31 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi32>, vector<9xi32>) -> vector<1xi32>
          %302 = math.log1p %251 : tensor<6x8xf32>
          %303 = arith.ceildivsi %extracted, %c609405922_i64 : i64
          %true_63 = arith.constant true
          %304 = arith.shrsi %false, %false : i1
          %alloc_64 = memref.alloc() : memref<6x8xf16>
          %305 = vector.broadcast %out : f16 to vector<9x9xf16>
          %306 = vector.gather %alloc_64[%c10, %38] [%28], %27, %305 : memref<6x8xf16>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xf16> into vector<9x9xf16>
          %307 = arith.shrsi %c1_i16_56, %c809_i16 : i16
          %308 = vector.shuffle %44, %44 [1, 3, 4, 10, 14, 15, 17] : vector<9xi1>, vector<9xi1>
          %309 = math.log10 %5 : tensor<6x8xf32>
          %310 = math.log10 %out : f16
          %c1_i16_65 = arith.constant 1 : i16
          linalg.yield %c1_i16_65 : i16
        }
      %263 = arith.ceildivsi %c31671818_i64, %c31671818_i64 : i64
      %264 = math.ceil %out : f16
      %265 = arith.shrsi %c609405922_i64, %c609405922_i64 : i64
      %266 = vector.broadcast %c256786492_i64 : i64 to vector<9xi64>
      vector.transfer_write %266, %alloc_14[%87, %38] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<9xi64>, memref<6x8xi64>
      %267 = affine.min affine_map<(d0, d1) -> (0, d0, 0, 2)>(%56, %c5)
      %268 = arith.maxf %cst_3, %cst_3 : f32
      %269 = vector.broadcast %c1_i16 : i16 to vector<i16>
      vector.transfer_write %269, %alloc_9[%c12] : vector<i16>, memref<8xi16>
      %270 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 - 1, d3 - (d0 + d1 - d2 + 64) - 1, 0)>(%c10, %34, %43, %c10)
      %271 = arith.maxui %c1_i16_56, %c1_i16 : i16
      %272 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d2)>(%38, %34, %c11, %c2)
      %273 = index.castu %c256786492_i64 : i64 to index
      %274 = arith.cmpf oge, %cst_0, %in : f16
      %275 = vector.reduction <minf>, %19 : vector<9xf16> into f16
      %276 = vector.splat %c5 : vector<9x9xindex>
      %277 = arith.ceildivsi %true, %false : i1
      %278 = index.sub %c7, %38
      linalg.yield %in : f16
    } -> tensor<6x6x6xf16>
    %113 = vector.broadcast %cst_2 : f32 to vector<6x8xf32>
    %114 = vector.fma %113, %113, %113 : vector<6x8xf32>
    %generated_30 = tensor.generate %c15, %105 {
    ^bb0(%arg1: index, %arg2: index):
      %248 = vector.broadcast %c31671818_i64 : i64 to vector<8xi64>
      %rank_51 = tensor.rank %generated : tensor<?xi32>
      %249 = vector.matrix_multiply %248, %248 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
      %250 = affine.load %alloc_5[%c11] : memref<8xi32>
      tensor.yield %extracted_24 : i16
    } : tensor<?x?xi16>
    scf.execute_region {
      %248 = math.ctpop %11 : tensor<6x6x6xi16>
      %249 = index.add %38, %c13
      %250 = arith.maxf %cst_1, %cst_3 : f32
      %251 = math.fma %8, %8, %8 : tensor<6x6x6xf32>
      %252 = math.exp2 %cst : f16
      memref.assume_alignment %alloc_21, 4 : memref<f32>
      %253 = arith.maxui %extracted, %extracted : i64
      %254 = vector.flat_transpose %44 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
      %255 = index.mul %c2, %87
      %256 = vector.transpose %29, [0, 1] : vector<9x9xi64> to vector<9x9xi64>
      %257 = vector.insert %103, %73 [4] : vector<6x6xi1> into vector<6x6x6xi1>
      %258 = vector.broadcast %c2141809103_i32 : i32 to vector<6x8xi32>
      %259 = bufferization.to_memref %13 : memref<8xi1>
      %260 = memref.atomic_rmw ori %c609405922_i64, %alloc_22[%c7] : (i64, memref<8xi64>) -> i64
      %261 = tensor.empty() : tensor<6x6x6xi32>
      %262 = math.fpowi %12, %261 : tensor<6x6x6xf16>, tensor<6x6x6xi32>
      affine.for %arg1 = 0 to 5 {
      }
      scf.yield
    }
    %115 = math.log10 %12 : tensor<6x6x6xf16>
    %116 = vector.broadcast %cst_2 : f32 to vector<6x6x6xf32>
    %117 = vector.fma %116, %116, %116 : vector<6x6x6xf32>
    %118 = arith.maxsi %false, %true : i1
    %119 = tensor.empty() : tensor<8xf16>
    %120 = math.round %12 : tensor<6x6x6xf16>
    %121 = math.fpowi %7, %51 : tensor<8xf32>, tensor<8xi32>
    %122 = math.floor %cst_3 : f32
    %123 = arith.ceildivsi %c609405922_i64, %extracted : i64
    memref.assume_alignment %alloc_8, 4 : memref<6x8xi64>
    %124 = arith.maxf %cst, %cst_0 : f16
    %125 = vector.flat_transpose %30 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
    %126 = index.divs %c6, %c10
    %127 = arith.maxf %cst, %cst : f16
    %128 = tensor.empty(%c14) : tensor<?xf16>
    %129 = math.rsqrt %8 : tensor<6x6x6xf32>
    %130 = vector.reduction <mul>, %98 : vector<9xf16> into f16
    %131 = math.expm1 %cst_2 : f32
    memref.tensor_store %3, %alloc_5 : memref<8xi32>
    %132 = vector.create_mask %102 : vector<8xi1>
    %133 = arith.shrui %c1_i16, %c12921_i16 : i16
    %134 = vector.transpose %35, [2, 1, 0] : vector<6x6x6xi1> to vector<6x6x6xi1>
    %135 = affine.for %arg1 = 0 to 26 iter_args(%arg2 = %cst_4) -> (f32) {
      affine.yield %cst_2 : f32
    }
    %136 = math.atan %8 : tensor<6x6x6xf32>
    %137 = index.add %c13, %105
    %138 = arith.shrui %true, %false : i1
    %139 = arith.shrsi %c72559683_i32, %c72559683_i32 : i32
    %140 = vector.load %alloc_17[%c4, %c8] : memref<9x9xf32>, vector<9x9xf32>
    %141 = math.cttz %4 : tensor<6x8xi16>
    %142 = bufferization.to_memref %14 : memref<8xi16>
    affine.for %arg1 = 0 to 78 {
    }
    %143 = arith.remf %cst_3, %cst_1 : f32
    %144 = arith.ori %c609405922_i64, %c31671818_i64 : i64
    %145 = math.log10 %0 : tensor<6x6x6xf32>
    %collapsed_31 = tensor.collapse_shape %expanded [[0, 1]] : tensor<8x1xi1> into tensor<8xi1>
    memref.copy %alloc_12, %alloc_20 : memref<6x6x6xi32> to memref<6x6x6xi32>
    %alloc_32 = memref.alloc() : memref<i64>
    memref.tensor_store %20, %alloc_32 : memref<i64>
    %146 = vector.load %alloc_5[%c5] : memref<8xi32>, vector<6x8xi32>
    %147 = vector.create_mask %c2, %43 : vector<9x9xi1>
    %148 = vector.shuffle %30, %132 [1, 6, 8, 9, 10, 11, 14] : vector<8xi1>, vector<8xi1>
    %149 = arith.subi %c1_i16, %c12921_i16 : i16
    scf.index_switch %c15 
    case 1 {
      %248 = math.log10 %8 : tensor<6x6x6xf32>
      %249 = arith.negf %cst_1 : f32
      %250 = vector.insert %103, %73 [0] : vector<6x6xi1> into vector<6x6x6xi1>
      %251 = tensor.empty() : tensor<8xi1>
      %mapped_51 = linalg.map ins(%alloc_15 : memref<8xi1>) outs(%251 : tensor<8xi1>)
        (%in: i1) {
          %262 = index.castu %c256786492_i64 : i64 to index
          %263 = math.ctlz %c809_i16 : i16
          %264 = affine.min affine_map<(d0, d1, d2) -> ((d2 ceildiv 16) floordiv 32)>(%c13, %c14, %c2)
          %265 = vector.outerproduct %31, %31, %39 {kind = #vector.kind<xor>} : vector<9xi32>, vector<9xi32>
          %266 = index.ceildivs %264, %87
          %alloca_54 = memref.alloca() : memref<9x9xi1>
          %267 = bufferization.to_tensor %alloc_19 : memref<9x9xi32>
          %268 = arith.shrsi %c256786492_i64, %c31671818_i64 : i64
          %from_elements_55 = tensor.from_elements %c1_i16, %c1_i16, %extracted_24, %c12921_i16, %c12921_i16, %c1_i16, %c809_i16, %c809_i16, %extracted_24, %extracted_24, %c809_i16, %c809_i16, %c12921_i16, %c1_i16, %c809_i16, %c1_i16, %c1_i16, %extracted_24, %extracted_24, %c809_i16, %c12921_i16, %c12921_i16, %extracted_24, %c12921_i16, %c1_i16, %c1_i16, %c1_i16, %c809_i16, %c12921_i16, %c1_i16, %c12921_i16, %c12921_i16, %c809_i16, %extracted_24, %c1_i16, %c12921_i16, %extracted_24, %c809_i16, %c1_i16, %c809_i16, %c809_i16, %extracted_24, %c1_i16, %c1_i16, %extracted_24, %extracted_24, %c809_i16, %c809_i16 : tensor<6x8xi16>
          %269 = vector.broadcast %extracted : i64 to vector<6xi64>
          %270 = vector.broadcast %true : i1 to vector<6xi1>
          %271 = vector.maskedload %alloc_8[%c2, %c3], %270, %269 : memref<6x8xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
          %collapsed_56 = tensor.collapse_shape %96 [[0, 1]] : tensor<6x8xi64> into tensor<48xi64>
          %272 = vector.insert %44, %147 [3] : vector<9xi1> into vector<9x9xi1>
          %273 = math.powf %cst_4, %cst_2 : f32
          %274 = arith.mulf %cst_0, %cst_0 : f16
          %275 = math.absi %26 : tensor<6x8xi64>
          %276 = arith.remf %cst_1, %cst_3 : f32
          %277 = bufferization.to_tensor %alloc_6 : memref<6x8xf32>
          %278 = math.cttz %10 : tensor<6x8xi16>
          %279 = index.ceildivu %87, %37
          %280 = vector.shuffle %97, %97 [0, 1] : vector<i16>, vector<i16>
          %281 = affine.max affine_map<(d0) -> (-d0 + 4, (-d0 + 4) ceildiv 2, (-d0 + 4) ceildiv 2, d0 * -8 - (-d0 + 4) ceildiv 2)>(%c13)
          %282 = math.tanh %5 : tensor<6x8xf32>
          %expanded_57 = tensor.expand_shape %7 [[0, 1]] : tensor<8xf32> into tensor<8x1xf32>
          %283 = arith.maxsi %extracted, %c31671818_i64 : i64
          %284 = vector.transpose %103, [0, 1] : vector<6x6xi1> to vector<6x6xi1>
          %collapsed_58 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x6x6xi16> into tensor<36x6xi16>
          %285 = arith.maxf %cst_4, %cst_4 : f32
          %286 = bufferization.clone %alloc_9 : memref<8xi16> to memref<8xi16>
          %287 = arith.shrui %c256786492_i64, %extracted : i64
          %288 = vector.reduction <xor>, %44 : vector<9xi1> into i1
          %289 = arith.negf %cst_0 : f16
          %290 = math.tanh %8 : tensor<6x6x6xf32>
          %false_59 = arith.constant false
          linalg.yield %false_59 : i1
        }
      %252 = affine.max affine_map<(d0, d1, d2, d3) -> (((-d3) mod 16) * -2, d3 + 128)>(%87, %43, %c1, %c9)
      %splat = tensor.splat %c256786492_i64 : tensor<8xi64>
      %253 = math.atan2 %from_elements, %from_elements : tensor<8xf32>
      %254 = arith.minsi %extracted_24, %extracted_24 : i16
      %255 = affine.min affine_map<(d0, d1, d2) -> (d0 floordiv 16 - 16)>(%c5, %126, %c1)
      %256 = vector.broadcast %c31671818_i64 : i64 to vector<9xi64>
      %257 = vector.insert %256, %29 [6] : vector<9xi64> into vector<9x9xi64>
      %258 = tensor.empty() : tensor<6x8xi64>
      %259 = arith.floordivsi %c1432919559_i32, %c2141809103_i32 : i32
      %alloca_52 = memref.alloca() : memref<6x8xi16>
      %260 = math.log10 %12 : tensor<6x6x6xf16>
      %collapsed_53 = tensor.collapse_shape %expanded [[0, 1]] : tensor<8x1xi1> into tensor<8xi1>
      %261 = index.mul %126, %252
      scf.yield
    }
    default {
      %248 = math.tanh %cst_0 : f16
      %c1135027798_i32 = arith.constant 1135027798 : i32
      %249 = vector.broadcast %c2141809103_i32 : i32 to vector<6x8xi32>
      %250 = math.fma %from_elements, %7, %from_elements : tensor<8xf32>
      %251 = math.copysign %5, %5 : tensor<6x8xf32>
      %252 = bufferization.clone %alloc_20 : memref<6x6x6xi32> to memref<6x6x6xi32>
      %253 = arith.addf %cst_3, %cst_3 : f32
      %254 = arith.shrsi %c2141809103_i32, %c2141809103_i32 : i32
      %255 = bufferization.to_memref %10 : memref<6x8xi16>
      %256 = math.round %5 : tensor<6x8xf32>
      %cst_51 = arith.constant 1.000000e+00 : f32
      %cst_52 = arith.constant 0.000000e+00 : f32
      %257 = vector.transfer_read %5[%c14, %34], %cst_52 : tensor<6x8xf32>, vector<f32>
      scf.execute_region {
        %261 = vector.shuffle %113, %114 [1, 2, 3, 4, 5, 6, 8, 10] : vector<6x8xf32>, vector<6x8xf32>
        memref.store %c72559683_i32, %alloc_20[%c0, %c0, %c3] : memref<6x6x6xi32>
        %true_53 = index.bool.constant true
        %262 = arith.cmpi uge, %c609405922_i64, %c609405922_i64 : i64
        %263 = math.powf %cst_0, %cst_0 : f16
        %264 = vector.broadcast %cst_2 : f32 to vector<6x6x6xf32>
        %265 = vector.fma %264, %264, %117 : vector<6x6x6xf32>
        %266 = index.add %c12, %c1
        %267 = math.atan2 %5, %5 : tensor<6x8xf32>
        %rank_54 = tensor.rank %5 : tensor<6x8xf32>
        %268 = vector.broadcast %true_53 : i1 to vector<6x8xi1>
        %269 = vector.gather %alloc[%43] [%249], %268, %92 : memref<8xi64>, vector<6x8xi32>, vector<6x8xi1>, vector<6x8xi64> into vector<6x8xi64>
        %collapsed_55 = tensor.collapse_shape %generated_30 [[0, 1]] : tensor<?x?xi16> into tensor<?xi16>
        %270 = arith.remf %cst_3, %cst_4 : f32
        %271 = index.ceildivs %c10, %c1
        %272 = arith.remf %cst_1, %cst_51 : f32
        %273 = math.floor %cst : f16
        %from_elements_56 = tensor.from_elements %extracted, %c609405922_i64, %c256786492_i64, %c609405922_i64, %c609405922_i64, %c256786492_i64, %extracted, %c609405922_i64, %c31671818_i64, %c609405922_i64, %c609405922_i64, %c609405922_i64, %c256786492_i64, %c609405922_i64, %extracted, %c256786492_i64, %extracted, %c31671818_i64, %c609405922_i64, %extracted, %c31671818_i64, %c256786492_i64, %c609405922_i64, %c256786492_i64, %c609405922_i64, %c256786492_i64, %c609405922_i64, %extracted, %c609405922_i64, %c609405922_i64, %c31671818_i64, %c256786492_i64, %c31671818_i64, %c256786492_i64, %extracted, %extracted, %extracted, %extracted, %c609405922_i64, %c609405922_i64, %c609405922_i64, %c609405922_i64, %c31671818_i64, %c256786492_i64, %c31671818_i64, %c609405922_i64, %extracted, %c609405922_i64 : tensor<6x8xi64>
        scf.yield
      }
      %258 = vector.shuffle %116, %116 [0, 1, 3, 4, 8, 9] : vector<6x6x6xf32>, vector<6x6x6xf32>
      %259 = index.sizeof
      %260 = math.fpowi %cst_3, %c1432919559_i32 : f32, i32
      vector.print %22 : vector<9x9xi64>
    }
    %150 = arith.minsi %c31671818_i64, %c609405922_i64 : i64
    scf.if %true {
      %248 = arith.floordivsi %c1432919559_i32, %c72559683_i32 : i32
      %249 = math.atan2 %cst_2, %cst_1 : f32
      memref.copy %alloc_7, %alloc_11 : memref<9x9xf16> to memref<9x9xf16>
      %true_51 = index.bool.constant true
      %250 = vector.create_mask %43, %37 : vector<9x9xi1>
      %251 = vector.load %alloc_14[%c0, %c2] : memref<6x8xi64>, vector<9x9xi64>
      %252 = vector.transpose %251, [1, 0] : vector<9x9xi64> to vector<9x9xi64>
      %253 = arith.minf %cst_0, %cst_0 : f16
    } else {
      %248 = arith.negf %cst_2 : f32
      %249 = vector.broadcast %false : i1 to vector<i1>
      %250 = vector.transfer_write %249, %13[%c0] : vector<i1>, tensor<8xi1>
      %251 = arith.cmpi ule, %extracted, %c256786492_i64 : i64
      %252 = vector.broadcast %cst_1 : f32 to vector<8xf32>
      %253 = vector.fma %252, %252, %252 : vector<8xf32>
      %254 = arith.negf %cst_0 : f16
      %255 = index.ceildivu %c7, %c14
      %256 = memref.realloc %alloc : memref<8xi64> to memref<6xi64>
      %257 = math.round %7 : tensor<8xf32>
    }
    %151 = vector.broadcast %extracted_24 : i16 to vector<6x8xi16>
    %152 = vector.broadcast %true : i1 to vector<6x8xi1>
    %153 = vector.gather %11[%c6, %87, %c2] [%146], %152, %151 : tensor<6x6x6xi16>, vector<6x8xi32>, vector<6x8xi1>, vector<6x8xi16> into vector<6x8xi16>
    %154 = math.cttz %c1_i16 : i16
    %from_elements_33 = tensor.from_elements %cst, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst_0 : tensor<9x9xf16>
    %155 = math.atan %cst_1 : f32
    %156 = arith.maxui %c12921_i16, %c1_i16 : i16
    %157 = vector.broadcast %cst_4 : f32 to vector<8xf32>
    %158 = vector.broadcast %c72559683_i32 : i32 to vector<8xi32>
    %159 = vector.gather %alloc_6[%c12, %109] [%158], %125, %157 : memref<6x8xf32>, vector<8xi32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
    %from_elements_34 = tensor.from_elements %cst, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst : tensor<8xf16>
    %160 = vector.flat_transpose %125 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
    %161 = arith.shrui %false, %false : i1
    %162 = index.maxs %c5, %c11
    %163 = arith.maxui %true, %true : i1
    %164 = arith.remf %cst_1, %cst_1 : f32
    %165 = bufferization.to_memref %0 : memref<6x6x6xf32>
    %false_35 = index.bool.constant false
    %166 = index.castu %c809_i16 : i16 to index
    %167 = vector.gather %14[%102] [%146], %152, %153 : tensor<8xi16>, vector<6x8xi32>, vector<6x8xi1>, vector<6x8xi16> into vector<6x8xi16>
    %168 = math.atan %12 : tensor<6x6x6xf16>
    %169 = vector.broadcast %cst_0 : f16 to vector<6x8xf16>
    %170 = vector.bitcast %73 : vector<6x6x6xi1> to vector<6x6x6xi1>
    %171 = vector.insert %31, %39 [2] : vector<9xi32> into vector<9x9xi32>
    %172 = math.absf %7 : tensor<8xf32>
    affine.for %arg1 = 0 to 75 {
    }
    %173 = vector.broadcast %cst_1 : f32 to vector<6x6x6xf32>
    %174 = vector.fma %173, %116, %173 : vector<6x6x6xf32>
    %175 = math.log10 %0 : tensor<6x6x6xf32>
    %rank = tensor.rank %12 : tensor<6x6x6xf16>
    %176 = bufferization.to_tensor %alloc_11 : memref<9x9xf16>
    %177 = index.add %162, %162
    %alloc_36 = memref.alloc() : memref<6x8xi16>
    memref.tensor_store %10, %alloc_36 : memref<6x8xi16>
    %178 = math.absf %5 : tensor<6x8xf32>
    %179 = arith.shrui %c18588081_i32, %c2141809103_i32 : i32
    %180 = math.round %cst_0 : f16
    %181 = vector.broadcast %cst_0 : f16 to vector<8xf16>
    %182 = arith.minf %cst_4, %cst_3 : f32
    memref.copy %alloc_6, %alloc_16 : memref<6x8xf32> to memref<6x8xf32>
    %183 = arith.remui %c72559683_i32, %c72559683_i32 : i32
    %184 = arith.maxui %c18588081_i32, %c18588081_i32 : i32
    %185 = bufferization.to_tensor %alloc_20 : memref<6x6x6xi32>
    %186 = math.absi %14 : tensor<8xi16>
    %187 = tensor.empty() : tensor<8xi16>
    %mapped = linalg.map ins(%14 : tensor<8xi16>) outs(%187 : tensor<8xi16>)
      (%in: i16) {
        vector.print %29 : vector<9x9xi64>
        %248 = arith.remf %cst_3, %cst_1 : f32
        %collapsed_51 = tensor.collapse_shape %generated_27 [[0, 1]] : tensor<?x?xf16> into tensor<?xf16>
        memref.assume_alignment %alloc_7, 1 : memref<9x9xf16>
        %249 = index.divs %78, %c11
        memref.store %c2141809103_i32, %alloc_10[%c8, %c6] : memref<9x9xi32>
        %250 = tensor.empty() : tensor<6x8xf16>
        %251 = math.ctpop %4 : tensor<6x8xi16>
        %252 = arith.mulf %cst, %cst_0 : f16
        %253 = arith.divsi %c72559683_i32, %c2141809103_i32 : i32
        %254 = arith.remf %cst_4, %cst_4 : f32
        %255 = arith.maxsi %extracted_24, %c12921_i16 : i16
        %256 = math.ctlz %c18588081_i32 : i32
        %257 = tensor.empty() : tensor<6x8xf32>
        %mapped_52 = linalg.map ins(%5, %alloc_16, %5 : tensor<6x8xf32>, memref<6x8xf32>, tensor<6x8xf32>) outs(%257 : tensor<6x8xf32>)
          (%in_56: f32, %in_57: f32, %in_58: f32) {
            %275 = vector.extract %170[1] : vector<6x6x6xi1>
            %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %30, %30, %false : vector<8xi1>, vector<8xi1> into i1
            %277 = vector.broadcast %false_35 : i1 to vector<9x9xi1>
            %278 = math.copysign %7, %7 : tensor<8xf32>
            %279 = arith.ori %c12921_i16, %c809_i16 : i16
            %280 = math.rsqrt %from_elements_34 : tensor<8xf16>
            %281 = math.exp2 %cst_1 : f32
            %282 = arith.addf %in_58, %cst_3 : f32
            %283 = arith.mulf %cst_0, %cst : f16
            %284 = vector.transpose %275, [0, 1] : vector<6x6xi1> to vector<6x6xi1>
            %285 = math.round %cst_0 : f16
            %286 = arith.maxui %c18588081_i32, %c18588081_i32 : i32
            %287 = bufferization.to_tensor %alloc_14 : memref<6x8xi64>
            %288 = affine.min affine_map<(d0) -> (d0 mod 2, (-d0) mod 64, d0 * 2)>(%137)
            %alloca_59 = memref.alloca() : memref<8xi16>
            %289 = math.fpowi %8, %185 : tensor<6x6x6xf32>, tensor<6x6x6xi32>
            %collapsed_60 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<6x6x6xf16> into tensor<36x6xf16>
            %290 = arith.ori %false_35, %false_35 : i1
            %291 = arith.muli %extracted_24, %c12921_i16 : i16
            %292 = math.absi %13 : tensor<8xi1>
            %293 = math.atan2 %in_58, %cst_4 : f32
            %294 = math.exp2 %from_elements_33 : tensor<9x9xf16>
            %295 = arith.cmpf oeq, %in_58, %cst_4 : f32
            %296 = math.tanh %0 : tensor<6x6x6xf32>
            %297 = index.castu %56 : index to i32
            %298 = vector.broadcast %cst_0 : f16 to vector<8xf16>
            %299 = arith.maxsi %false_35, %false : i1
            %300 = arith.remf %in_57, %cst_3 : f32
            %301 = vector.load %alloc_8[%c4, %c3] : memref<6x8xi64>, vector<6x6x6xi64>
            %302 = arith.minsi %extracted, %c256786492_i64 : i64
            %303 = arith.shrui %extracted_24, %in : i16
            %304 = arith.shli %c2141809103_i32, %c1432919559_i32 : i32
            %cst_61 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_61 : f32
          }
        %258 = math.log %5 : tensor<6x8xf32>
        %259 = math.rsqrt %cst_1 : f32
        %260 = arith.subi %true, %false : i1
        memref.copy %alloc_20, %alloc_12 : memref<6x6x6xi32> to memref<6x6x6xi32>
        %261 = affine.apply affine_map<(d0) -> (d0 floordiv 64)>(%c5)
        %262 = arith.maxf %cst_2, %cst_2 : f32
        %263 = math.roundeven %0 : tensor<6x6x6xf32>
        %264 = arith.mulf %cst, %cst_0 : f16
        %265 = arith.remf %cst_3, %cst_4 : f32
        %266 = math.atan2 %0, %8 : tensor<6x6x6xf32>
        %collapsed_53 = tensor.collapse_shape %4 [[0, 1]] : tensor<6x8xi16> into tensor<48xi16>
        %267 = vector.extract %19[2] : vector<9xf16>
        %268 = arith.muli %c72559683_i32, %c18588081_i32 : i32
        %269 = math.expm1 %0 : tensor<6x6x6xf32>
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %270 = vector.transfer_read %96[%c1, %177], %c0_i64 : tensor<6x8xi64>, vector<i64>
        %alloc_54 = memref.alloc() : memref<8x6xf32>
        %271 = tensor.empty() : tensor<6x6xf32>
        %272 = linalg.matmul ins(%257, %alloc_54 : tensor<6x8xf32>, memref<8x6xf32>) outs(%271 : tensor<6x6xf32>) -> tensor<6x6xf32>
        %273 = arith.minsi %c609405922_i64, %c31671818_i64 : i64
        %274 = arith.maxui %c1_i64, %c1_i64 : i64
        %c1_i16_55 = arith.constant 1 : i16
        linalg.yield %c1_i16_55 : i16
      }
    %188 = tensor.empty() : tensor<8xf16>
    %189 = arith.remui %extracted_24, %extracted_24 : i16
    %190 = vector.insert %false_35, %160 [4] : i1 into vector<8xi1>
    %alloc_37 = memref.alloc() : memref<9x9xi16>
    memref.tensor_store %2, %alloc_37 : memref<9x9xi16>
    %191 = arith.minui %extracted_24, %extracted_24 : i16
    %192 = arith.xori %c609405922_i64, %c609405922_i64 : i64
    %193 = index.ceildivs %137, %56
    %194 = scf.if %false -> (i64) {
      %248 = vector.broadcast %c31671818_i64 : i64 to vector<6x6x6xi64>
      %249 = arith.shrsi %c809_i16, %c809_i16 : i16
      %250 = arith.remsi %c18588081_i32, %c18588081_i32 : i32
      %251 = scf.if %true -> (memref<8xi32>) {
        %256 = arith.shrui %c12921_i16, %extracted_24 : i16
        %257 = vector.matrix_multiply %160, %30 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
        %258 = vector.insert %158, %146 [1] : vector<8xi32> into vector<6x8xi32>
        %259 = vector.gather %0[%38, %c12, %105] [%158], %30, %157 : tensor<6x6x6xf32>, vector<8xi32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
        %260 = vector.transpose %181, [0] : vector<8xf16> to vector<8xf16>
        %261 = vector.broadcast %c1_i16 : i16 to vector<8x8xi16>
        %262 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %153, %167, %261 : vector<6x8xi16>, vector<6x8xi16> into vector<8x8xi16>
        %263 = tensor.empty() : tensor<8xi16>
        %264 = arith.muli %c809_i16, %c809_i16 : i16
        scf.yield %alloc_5 : memref<8xi32>
      } else {
        %256 = tensor.empty() : tensor<9x9xf16>
        %257 = linalg.matmul ins(%176, %from_elements_33 : tensor<9x9xf16>, tensor<9x9xf16>) outs(%256 : tensor<9x9xf16>) -> tensor<9x9xf16>
        %258 = arith.minsi %c256786492_i64, %extracted : i64
        %259 = vector.flat_transpose %132 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
        %260 = affine.min affine_map<(d0) -> (d0 - d0 mod 16 - 64, d0 - 64)>(%105)
        %261 = arith.mulf %cst_4, %cst_2 : f32
        %262 = affine.max affine_map<(d0) -> (d0 * -64, -1, d0 * 64 + 8, d0 * 64 + 8)>(%43)
        %263 = math.absi %c31671818_i64 : i64
        %264 = vector.matrix_multiply %30, %259 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi1>, vector<8xi1>) -> vector<1xi1>
        scf.yield %alloc_5 : memref<8xi32>
      }
      %252 = arith.minsi %extracted, %c609405922_i64 : i64
      %253 = index.ceildivs %c15, %c3
      %254 = math.tanh %7 : tensor<8xf32>
      %255 = vector.reduction <and>, %125 : vector<8xi1> into i1
      scf.yield %c609405922_i64 : i64
    } else {
      %248 = scf.index_switch %c13 -> memref<6x8xi1> 
      case 1 {
        %260 = affine.apply affine_map<(d0) -> (0)>(%c6)
        %261 = vector.flat_transpose %31 {columns = 3 : i32, rows = 3 : i32} : vector<9xi32> -> vector<9xi32>
        memref.assume_alignment %alloc_6, 8 : memref<6x8xf32>
        %262 = vector.insert %c1432919559_i32, %158 [7] : i32 into vector<8xi32>
        %263 = math.ctpop %26 : tensor<6x8xi64>
        memref.store %cst_2, %165[%c0, %c0, %c3] : memref<6x6x6xf32>
        %264 = math.expm1 %0 : tensor<6x6x6xf32>
        %265 = arith.ori %extracted_24, %c12921_i16 : i16
        %collapsed_51 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<6x6x6xf32> into tensor<36x6xf32>
        %266 = vector.matrix_multiply %157, %159 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
        %267 = math.atan %176 : tensor<9x9xf16>
        %false_52 = index.bool.constant false
        %from_elements_53 = tensor.from_elements %cst_3, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_4, %cst_1, %cst_2, %cst_3, %cst_4, %cst_1, %cst_3, %cst_2, %cst_3, %cst_2, %cst_4, %cst_4, %cst_3, %cst_1, %cst_4, %cst_4, %cst_1, %cst_1, %cst_2, %cst_4, %cst_3, %cst_3, %cst_3, %cst_2, %cst_4, %cst_1, %cst_2, %cst_3, %cst_4, %cst_3, %cst_2, %cst_2, %cst_1, %cst_3, %cst_4, %cst_2, %cst_2, %cst_2, %cst_3, %cst_1, %cst_3, %cst_4, %cst_1, %cst_3, %cst_1, %cst_3, %cst_2, %cst_3, %cst_2, %cst_3, %cst_3, %cst_3, %cst_3, %cst_4, %cst_3, %cst_2, %cst_2, %cst_4, %cst_3, %cst_2, %cst_3, %cst_1, %cst_3, %cst_2, %cst_4, %cst_1, %cst_4, %cst_1, %cst_2, %cst_3, %cst_1, %cst_1, %cst_1, %cst_3, %cst_3, %cst_2, %cst_3, %cst_1, %cst_4, %cst_1, %cst_3, %cst_4, %cst_3, %cst_4, %cst_1, %cst_1, %cst_3, %cst_2, %cst_1, %cst_2, %cst_4, %cst_4, %cst_4, %cst_3, %cst_2, %cst_2, %cst_4, %cst_2, %cst_1, %cst_3, %cst_3, %cst_1, %cst_3, %cst_4, %cst_2, %cst_2, %cst_3, %cst_2, %cst_1, %cst_4, %cst_4, %cst_2, %cst_2, %cst_1, %cst_3, %cst_3, %cst_1, %cst_2, %cst_1, %cst_3, %cst_1, %cst_2, %cst_1, %cst_4, %cst_3, %cst_2, %cst_4, %cst_1, %cst_1, %cst_3, %cst_4, %cst_1, %cst_3, %cst_3, %cst_3, %cst_4, %cst_1, %cst_2, %cst_4, %cst_1, %cst_4, %cst_4, %cst_1, %cst_4, %cst_4, %cst_4, %cst_2, %cst_3, %cst_2, %cst_3, %cst_2, %cst_2, %cst_3, %cst_2, %cst_4, %cst_4, %cst_3, %cst_2, %cst_2, %cst_4, %cst_3, %cst_4, %cst_3, %cst_1, %cst_2, %cst_3, %cst_1, %cst_4, %cst_3, %cst_1, %cst_2, %cst_4, %cst_2, %cst_3, %cst_3, %cst_4, %cst_1, %cst_1, %cst_4, %cst_2, %cst_4, %cst_4, %cst_3, %cst_3, %cst_4, %cst_2, %cst_3, %cst_1, %cst_3, %cst_3, %cst_1, %cst_1, %cst_4, %cst_3, %cst_2, %cst_4, %cst_3, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_4, %cst_3, %cst_1, %cst_1, %cst_4, %cst_3 : tensor<6x6x6xf32>
        memref.store %cst_3, %alloc_6[%c4, %c7] : memref<6x8xf32>
        %268 = vector.splat %c4 : vector<9x9xindex>
        %269 = vector.flat_transpose %159 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        %alloc_54 = memref.alloc() : memref<6x8xi1>
        scf.yield %alloc_54 : memref<6x8xi1>
      }
      default {
        %260 = math.cttz %16 : tensor<8xi16>
        %261 = math.ipowi %14, %14 : tensor<8xi16>
        %262 = tensor.empty() : tensor<6x8xf16>
        %263 = vector.broadcast %cst_4 : f32 to vector<6xf32>
        %264 = vector.multi_reduction <mul>, %116, %263 [0, 1] : vector<6x6x6xf32> to vector<6xf32>
        %265 = affine.min affine_map<(d0, d1) -> ((d0 floordiv 128) floordiv 128)>(%c10, %102)
        memref.store %false, %alloc_18[%c2, %c2, %c0] : memref<6x6x6xi1>
        %266 = arith.maxf %cst_0, %cst : f16
        %267 = arith.muli %c12921_i16, %extracted_24 : i16
        %268 = vector.extract_strided_slice %174 {offsets = [2, 0], sizes = [3, 5], strides = [1, 1]} : vector<6x6x6xf32> to vector<3x5x6xf32>
        %269 = vector.broadcast %cst_3 : f32 to vector<9x9xf32>
        %270 = vector.fma %269, %140, %269 : vector<9x9xf32>
        %271 = vector.create_mask %78, %c7, %87 : vector<6x6x6xi1>
        %272 = math.exp2 %5 : tensor<6x8xf32>
        %273 = arith.andi %extracted, %c31671818_i64 : i64
        %c1435523635_i64 = arith.constant 1435523635 : i64
        %274 = vector.extract_strided_slice %159 {offsets = [5], sizes = [1], strides = [1]} : vector<8xf32> to vector<1xf32>
        %alloca_51 = memref.alloca() : memref<6x8xf32>
        %alloc_52 = memref.alloc() : memref<6x8xi1>
        scf.yield %alloc_52 : memref<6x8xi1>
      }
      %249 = tensor.empty() : tensor<8xi64>
      %250 = vector.broadcast %c256786492_i64 : i64 to vector<6x6x6xi64>
      %251 = vector.broadcast %c2141809103_i32 : i32 to vector<6x6x6xi32>
      %252 = vector.gather %249[%c4] [%251], %170, %250 : tensor<8xi64>, vector<6x6x6xi32>, vector<6x6x6xi1>, vector<6x6x6xi64> into vector<6x6x6xi64>
      %253 = math.round %cst_4 : f32
      %254 = vector.broadcast %c12921_i16 : i16 to vector<8xi16>
      %255 = vector.gather %11[%126, %c10, %c10] [%158], %160, %254 : tensor<6x6x6xi16>, vector<8xi32>, vector<8xi1>, vector<8xi16> into vector<8xi16>
      %256 = arith.remf %cst_3, %cst_1 : f32
      %257 = affine.for %arg1 = 0 to 70 iter_args(%arg2 = %38) -> (index) {
        affine.yield %109 : index
      }
      %258 = arith.mulf %cst_4, %cst_1 : f32
      %259 = vector.extract_strided_slice %132 {offsets = [4], sizes = [2], strides = [1]} : vector<8xi1> to vector<2xi1>
      scf.yield %extracted : i64
    }
    %alloca_38 = memref.alloca() : memref<6x6x6xf16>
    %195 = arith.ceildivsi %c72559683_i32, %c2141809103_i32 : i32
    %196 = affine.min affine_map<(d0, d1, d2) -> (d2 ceildiv 4 - 24)>(%37, %38, %c12)
    %197 = math.round %cst_3 : f32
    %cast = tensor.cast %9 : tensor<8xi16> to tensor<?xi16>
    %198 = vector.reduction <maxf>, %181 : vector<8xf16> into f16
    %199 = vector.insert %true, %132 [6] : i1 into vector<8xi1>
    %200 = vector.broadcast %false_35 : i1 to vector<8x8xi1>
    %201 = vector.outerproduct %30, %30, %200 {kind = #vector.kind<xor>} : vector<8xi1>, vector<8xi1>
    %202 = math.atan2 %from_elements_34, %188 : tensor<8xf16>
    %203 = arith.shrsi %extracted, %c31671818_i64 : i64
    %rank_39 = tensor.rank %176 : tensor<9x9xf16>
    %204 = math.cttz %1 : tensor<8xi1>
    %205 = math.atan2 %cst_4, %cst_3 : f32
    %206 = vector.shuffle %170, %170 [0, 3, 4, 7, 11] : vector<6x6x6xi1>, vector<6x6x6xi1>
    %207 = arith.maxf %cst, %cst : f16
    memref.copy %alloc_7, %alloc_11 : memref<9x9xf16> to memref<9x9xf16>
    %208 = math.absf %cst_4 : f32
    %209 = math.ctlz %51 : tensor<8xi32>
    %210 = index.ceildivu %c10, %c8
    %true_40 = index.bool.constant true
    %cast_41 = tensor.cast %10 : tensor<6x8xi16> to tensor<?x?xi16>
    %211 = math.tanh %8 : tensor<6x6x6xf32>
    %212 = affine.if affine_set<(d0, d1) : (d0 * 2 >= 0, (d0 ceildiv 4) * 2 + d0 * 2 - 128 >= 0, d0 ceildiv 4 == 0, d0 * 2 >= 0)>(%c1, %c5) -> f16 {
      %248 = index.mul %177, %c9
      %249 = tensor.empty() : tensor<8xi16>
      %mapped_51 = linalg.map ins(%17, %alloc_9, %17 : tensor<8xi16>, memref<8xi16>, tensor<8xi16>) outs(%249 : tensor<8xi16>)
        (%in: i16, %in_54: i16, %in_55: i16) {
          %255 = index.divs %166, %c6
          %256 = bufferization.to_memref %5 : memref<6x8xf32>
          %257 = index.ceildivs %87, %248
          %258 = math.floor %cst_1 : f32
          %259 = index.ceildivs %c2, %c12
          %260 = vector.insert %c2141809103_i32, %31 [6] : i32 into vector<9xi32>
          %261 = arith.shrui %extracted, %c609405922_i64 : i64
          %262 = index.divs %c0, %78
          %263 = index.ceildivs %109, %126
          %264 = math.tanh %0 : tensor<6x6x6xf32>
          %265 = math.atan %188 : tensor<8xf16>
          %dest_56, %accumulated_value_57 = vector.scan <minui>, %27, %44 {inclusive = true, reduction_dim = 0 : i64} : vector<9x9xi1>, vector<9xi1>
          %266 = arith.negf %cst : f16
          %267 = vector.broadcast %c31671818_i64 : i64 to vector<8x8xi64>
          %268 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %92, %92, %267 : vector<6x8xi64>, vector<6x8xi64> into vector<8x8xi64>
          %269 = tensor.empty(%102, %263) : tensor<?x?x6xf16>
          %270 = arith.cmpi slt, %c609405922_i64, %c609405922_i64 : i64
          %271 = vector.load %alloc_10[%c6, %c7] : memref<9x9xi32>, vector<6x6x6xi32>
          %272 = math.cttz %14 : tensor<8xi16>
          %from_elements_58 = tensor.from_elements %extracted_24, %extracted_24, %in, %c809_i16, %extracted_24, %c12921_i16, %in, %c1_i16 : tensor<8xi16>
          %273 = math.atan %5 : tensor<6x8xf32>
          %274 = arith.maxf %cst_4, %cst_2 : f32
          %275 = arith.maxf %cst_0, %cst : f16
          %276 = vector.multi_reduction <minsi>, %271, %c2141809103_i32 [0, 1, 2] : vector<6x6x6xi32> to i32
          %277 = vector.broadcast %cst_4 : f32 to vector<9x9xf32>
          %278 = math.cttz %3 : tensor<8xi32>
          %279 = index.ceildivs %c3, %263
          %280 = vector.multi_reduction <and>, %125, %true_40 [0] : vector<8xi1> to i1
          %true_59 = index.bool.constant true
          %281 = vector.flat_transpose %181 {columns = 4 : i32, rows = 2 : i32} : vector<8xf16> -> vector<8xf16>
          %true_60 = index.bool.constant true
          %282 = arith.remf %cst, %cst_0 : f16
          %283 = vector.extract_strided_slice %158 {offsets = [5], sizes = [1], strides = [1]} : vector<8xi32> to vector<1xi32>
          %c0_i16_61 = arith.constant 0 : i16
          linalg.yield %c0_i16_61 : i16
        }
      %250 = math.fpowi %8, %185 : tensor<6x6x6xf32>, tensor<6x6x6xi32>
      %251 = math.ceil %0 : tensor<6x6x6xf32>
      %c0_i16_52 = arith.constant 0 : i16
      %c0_i16_53 = arith.constant 0 : i16
      %252 = vector.transfer_read %collapsed[%109], %c0_i16_53 : tensor<81xi16>, vector<i16>
      %253 = vector.reduction <maxf>, %98 : vector<9xf16> into f16
      memref.store %cst_4, %alloc_16[%c4, %c7] : memref<6x8xf32>
      %254 = vector.broadcast %c2141809103_i32 : i32 to vector<6x6x6xi32>
      affine.yield %cst : f16
    } else {
      %248 = tensor.empty() : tensor<8xi1>
      %mapped_51 = linalg.map ins(%alloc_15, %alloc_15, %1 : memref<8xi1>, memref<8xi1>, tensor<8xi1>) outs(%248 : tensor<8xi1>)
        (%in: i1, %in_54: i1, %in_55: i1) {
          %253 = math.exp %7 : tensor<8xf32>
          %254 = vector.broadcast %c18588081_i32 : i32 to vector<6xi32>
          %255 = vector.broadcast %false : i1 to vector<6xi1>
          %256 = vector.maskedload %alloc_20[%c2, %c3, %c2], %255, %254 : memref<6x6x6xi32>, vector<6xi1>, vector<6xi32> into vector<6xi32>
          %257 = arith.maxf %cst_0, %cst : f16
          %258 = index.castu %c9 : index to i32
          %259 = math.powf %8, %0 : tensor<6x6x6xf32>
          %expanded_56 = tensor.expand_shape %14 [[0, 1]] : tensor<8xi16> into tensor<8x1xi16>
          %260 = math.roundeven %12 : tensor<6x6x6xf16>
          %261 = index.ceildivs %38, %c14
          %262 = arith.remf %cst_3, %cst_4 : f32
          %263 = arith.shrsi %in_54, %true : i1
          %264 = math.exp2 %7 : tensor<8xf32>
          %265 = vector.broadcast %in : i1 to vector<6x8xi1>
          %266 = math.powf %cst_4, %cst_3 : f32
          %267 = vector.shuffle %167, %153 [0, 1, 3, 4, 6, 9, 11] : vector<6x8xi16>, vector<6x8xi16>
          bufferization.dealloc_tensor %1 : tensor<8xi1>
          %true_57 = index.bool.constant true
          %268 = vector.multi_reduction <xor>, %146, %146 [] : vector<6x8xi32> to vector<6x8xi32>
          %269 = arith.mulf %cst_1, %cst_3 : f32
          %270 = arith.shrui %c31671818_i64, %c31671818_i64 : i64
          %271 = vector.insertelement %true_57, %160[%37 : index] : vector<8xi1>
          bufferization.dealloc_tensor %0 : tensor<6x6x6xf32>
          %272 = math.atan2 %cst_2, %cst_1 : f32
          %273 = math.log %from_elements_33 : tensor<9x9xf16>
          %274 = vector.shuffle %181, %19 [0, 1, 3, 7, 11, 14] : vector<8xf16>, vector<9xf16>
          %275 = vector.reduction <add>, %254 : vector<6xi32> into i32
          %276 = arith.minf %cst_2, %cst_2 : f32
          %277 = index.ceildivs %177, %162
          %278 = math.powf %cst_2, %cst_3 : f32
          %279 = memref.atomic_rmw assign %c72559683_i32, %alloc_5[%c0] : (i32, memref<8xi32>) -> i32
          %from_elements_58 = tensor.from_elements %in_55, %false_35, %true_57, %in_54, %true, %false_35, %in, %in, %true_57, %true_40, %in_54, %true_40, %false, %in, %true, %false_35, %true_57, %in_55, %true_57, %true, %in_55, %true_57, %true, %false, %false, %in_55, %in_55, %false, %in, %in, %in, %in_55, %true_57, %true_57, %in_54, %false, %true, %true_40, %in_55, %false, %in_55, %in_54, %true_57, %false, %true_57, %false, %in, %in, %in_55, %true_40, %in_55, %true_57, %true, %true_40, %true_57, %true, %true_57, %true_40, %in_55, %false_35, %true, %in_54, %true_40, %true, %in, %true, %true, %in, %in, %true_40, %in, %in_54, %in, %true_40, %in_54, %false, %true, %in_55, %true_40, %in_55, %in : tensor<9x9xi1>
          %expanded_59 = tensor.expand_shape %expanded [[0], [1, 2]] : tensor<8x1xi1> into tensor<8x1x1xi1>
          %280 = vector.broadcast %c12921_i16 : i16 to vector<9x9xi16>
          %281 = vector.gather %alloc_13[%c0] [%39], %147, %280 : memref<8xi16>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xi16> into vector<9x9xi16>
          %false_60 = arith.constant false
          linalg.yield %false_60 : i1
        }
      %249 = arith.negf %cst : f16
      %250 = arith.remsi %c18588081_i32, %c2141809103_i32 : i32
      %251 = index.add %c5, %166
      memref.assume_alignment %alloc_7, 16 : memref<9x9xf16>
      %252 = math.log10 %12 : tensor<6x6x6xf16>
      %alloca_52 = memref.alloca() : memref<8xi32>
      %alloc_53 = memref.alloc() : memref<6x6x6xi16>
      memref.tensor_store %11, %alloc_53 : memref<6x6x6xi16>
      affine.yield %cst_0 : f16
    }
    memref.store %extracted, %alloc_22[%c1] : memref<8xi64>
    %213 = vector.reduction <add>, %98 : vector<9xf16> into f16
    %214 = tensor.empty() : tensor<9x9xf32>
    %mapped_42 = linalg.map ins(%alloc_17, %alloc_17, %alloc_17 : memref<9x9xf32>, memref<9x9xf32>, memref<9x9xf32>) outs(%214 : tensor<9x9xf32>)
      (%in: f32, %in_51: f32, %in_52: f32) {
        %248 = arith.shrsi %c18588081_i32, %c18588081_i32 : i32
        %249 = tensor.empty() : tensor<8xi1>
        %mapped_53 = linalg.map ins(%alloc_15, %1, %1 : memref<8xi1>, tensor<8xi1>, tensor<8xi1>) outs(%249 : tensor<8xi1>)
          (%in_59: i1, %in_60: i1, %in_61: i1) {
            %278 = vector.shuffle %113, %113 [0, 2, 5, 8, 9, 10] : vector<6x8xf32>, vector<6x8xf32>
            %alloc_62 = memref.alloc() : memref<6x6x6xf16>
            memref.tensor_store %12, %alloc_62 : memref<6x6x6xf16>
            %279 = vector.broadcast %in_61 : i1 to vector<8xi1>
            %280 = vector.multi_reduction <mul>, %146, %158 [0] : vector<6x8xi32> to vector<8xi32>
            %281 = vector.flat_transpose %30 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
            %282 = affine.max affine_map<(d0, d1, d2) -> (d0 ceildiv 16, 0)>(%196, %196, %c4)
            %283 = vector.insertelement %false, %30[%210 : index] : vector<8xi1>
            %284 = arith.remf %cst_3, %in_51 : f32
            %285 = math.ctpop %9 : tensor<8xi16>
            %286 = tensor.empty() : tensor<6x8xi32>
            %287 = vector.gather %286[%c2, %38] [%28], %27, %28 : tensor<6x8xi32>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xi32> into vector<9x9xi32>
            %c-22948_i16 = arith.constant -22948 : i16
            %288 = arith.negf %cst_0 : f16
            %extracted_63 = tensor.extract %15[%c8, %c1] : tensor<9x9xi1>
            %289 = index.sizeof
            %290 = math.expm1 %from_elements : tensor<8xf32>
            %false_64 = index.bool.constant false
            %291 = arith.shrsi %false, %false_35 : i1
            %292 = memref.load %165[%c5, %c4, %c1] : memref<6x6x6xf32>
            %293 = vector.load %alloc[%c2] : memref<8xi64>, vector<9x9xi64>
            %294 = vector.broadcast %extracted_63 : i1 to vector<8x8xi1>
            %295 = vector.outerproduct %30, %281, %294 {kind = #vector.kind<and>} : vector<8xi1>, vector<8xi1>
            %296 = index.ceildivs %162, %rank_39
            %297 = arith.shli %in_61, %true : i1
            %298 = math.floor %0 : tensor<6x6x6xf32>
            %299 = vector.gather %26[%c15, %56] [%146], %152, %92 : tensor<6x8xi64>, vector<6x8xi32>, vector<6x8xi1>, vector<6x8xi64> into vector<6x8xi64>
            %300 = index.add %rank, %87
            memref.store %c18588081_i32, %alloc_10[%c3, %c4] : memref<9x9xi32>
            %301 = arith.muli %c1432919559_i32, %c18588081_i32 : i32
            %302 = math.ipowi %11, %11 : tensor<6x6x6xi16>
            %303 = index.castu %c12921_i16 : i16 to index
            %304 = arith.negf %cst : f16
            %305 = index.sizeof
            %306 = vector.create_mask %c13, %303, %43 : vector<6x6x6xi1>
            %false_65 = arith.constant false
            linalg.yield %false_65 : i1
          }
        %250 = arith.cmpi ne, %true, %false_35 : i1
        %251 = arith.mulf %cst, %cst : f16
        %252 = arith.minsi %c809_i16, %c12921_i16 : i16
        %253 = math.floor %0 : tensor<6x6x6xf32>
        %254 = vector.reduction <xor>, %160 : vector<8xi1> into i1
        %255 = arith.shli %true_40, %true : i1
        %256 = math.ctlz %187 : tensor<8xi16>
        %alloca_54 = memref.alloca() : memref<6x6x6xi16>
        %257 = index.ceildivu %c5, %162
        %258 = math.round %cst_2 : f32
        %259 = index.divu %c7, %56
        %260 = vector.matrix_multiply %98, %98 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf16>, vector<9xf16>) -> vector<1xf16>
        %261 = math.powf %7, %from_elements : tensor<8xf32>
        %262 = arith.mulf %cst_3, %in : f32
        %263 = bufferization.to_tensor %alloc_13 : memref<8xi16>
        %264 = vector.shuffle %31, %31 [0, 2, 4, 6, 9, 10, 11, 14, 16, 17] : vector<9xi32>, vector<9xi32>
        %alloc_55 = memref.alloc() : memref<8xf16>
        memref.tensor_store %188, %alloc_55 : memref<8xf16>
        %265 = arith.remui %c609405922_i64, %extracted : i64
        %266 = index.ceildivs %34, %56
        %267 = vector.flat_transpose %260 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %268 = vector.splat %rank_39 : vector<9x9xindex>
        %269 = arith.ceildivsi %194, %c256786492_i64 : i64
        %270 = scf.if %false -> (i32) {
          %278 = arith.minsi %c31671818_i64, %c256786492_i64 : i64
          %279 = vector.broadcast %cst_1 : f32 to vector<6x8xf32>
          %280 = vector.maskedload %alloc_15[%c1], %125, %125 : memref<8xi1>, vector<8xi1>, vector<8xi1> into vector<8xi1>
          %281 = vector.gather %96[%c6, %c13] [%28], %27, %22 : tensor<6x8xi64>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xi64> into vector<9x9xi64>
          %282 = arith.maxsi %c2141809103_i32, %c18588081_i32 : i32
          %283 = math.floor %in_52 : f32
          %284 = arith.ori %c18588081_i32, %c2141809103_i32 : i32
          %285 = math.fma %5, %5, %5 : tensor<6x8xf32>
          scf.yield %c2141809103_i32 : i32
        } else {
          %278 = arith.subi %c18588081_i32, %c72559683_i32 : i32
          %false_59 = index.bool.constant false
          memref.store %c2141809103_i32, %alloc_10[%c6, %c2] : memref<9x9xi32>
          %279 = arith.minsi %false_35, %false : i1
          %280 = math.expm1 %in_51 : f32
          %281 = vector.broadcast %c609405922_i64 : i64 to vector<8xi64>
          %282 = math.tanh %7 : tensor<8xf32>
          %283 = arith.muli %c809_i16, %c12921_i16 : i16
          scf.yield %c18588081_i32 : i32
        }
        %expanded_56 = tensor.expand_shape %187 [[0, 1]] : tensor<8xi16> into tensor<8x1xi16>
        %271 = tensor.empty() : tensor<9x9xi1>
        %272 = linalg.matmul ins(%15, %15 : tensor<9x9xi1>, tensor<9x9xi1>) outs(%271 : tensor<9x9xi1>) -> tensor<9x9xi1>
        %273 = arith.cmpf ole, %cst_1, %in_51 : f32
        %274 = vector.shuffle %140, %140 [2, 4, 5, 7, 8, 11, 12] : vector<9x9xf32>, vector<9x9xf32>
        %275 = math.exp2 %from_elements_33 : tensor<9x9xf16>
        %276 = math.atan2 %0, %8 : tensor<6x6x6xf32>
        %277 = tensor.empty() : tensor<f32>
        %mapped_57 = linalg.map ins(%alloc_21, %alloc_21, %alloc_21 : memref<f32>, memref<f32>, memref<f32>) outs(%277 : tensor<f32>)
          (%in_59: f32, %in_60: f32, %in_61: f32) {
            %278 = math.absf %214 : tensor<9x9xf32>
            %279 = vector.extract %28[7] : vector<9x9xi32>
            %280 = vector.multi_reduction <add>, %39, %39 [] : vector<9x9xi32> to vector<9x9xi32>
            %281 = math.atan %in_52 : f32
            %282 = math.atan %from_elements_34 : tensor<8xf16>
            %283 = affine.max affine_map<(d0, d1, d2, d3) -> (-d2 - 64)>(%c14, %37, %c0, %c2)
            %284 = math.fma %cst_0, %cst, %cst_0 : f16
            %285 = arith.remf %in_60, %cst_2 : f32
            %286 = vector.flat_transpose %158 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
            %287 = math.expm1 %7 : tensor<8xf32>
            %288 = index.divs %c9, %c12
            %289 = math.absf %cst_1 : f32
            %290 = vector.broadcast %in_59 : f32 to vector<9x9xf32>
            %291 = vector.fma %290, %290, %290 : vector<9x9xf32>
            %292 = math.atan2 %in, %cst_2 : f32
            %293 = math.fpowi %7, %3 : tensor<8xf32>, tensor<8xi32>
            %294 = vector.broadcast %true : i1 to vector<8xi1>
            %295 = arith.maxf %cst_2, %cst_4 : f32
            %rank_62 = tensor.rank %6 : tensor<9x9xi16>
            %296 = index.divs %162, %177
            %297 = arith.shrsi %c1_i16, %extracted_24 : i16
            %298 = vector.create_mask %c11, %c9, %193 : vector<6x6x6xi1>
            %299 = arith.minsi %false_35, %false : i1
            %300 = math.absi %15 : tensor<9x9xi1>
            %rank_63 = tensor.rank %13 : tensor<8xi1>
            %301 = arith.shli %true, %false_35 : i1
            %302 = vector.create_mask %210 : vector<8xi1>
            %303 = arith.subi %c609405922_i64, %194 : i64
            %304 = bufferization.to_memref %cast : memref<?xi16>
            %305 = arith.muli %c809_i16, %c809_i16 : i16
            %306 = index.ceildivs %38, %56
            %307 = math.round %in_59 : f32
            %308 = arith.ceildivsi %c12921_i16, %c1_i16 : i16
            %cst_64 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_64 : f32
          }
        %cst_58 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_58 : f32
      }
    %215 = vector.broadcast %cst_4 : f32 to vector<9x9xf32>
    %216 = vector.fma %215, %140, %140 : vector<9x9xf32>
    %217 = memref.alloca_scope  -> (i1) {
      %true_51 = index.bool.constant true
      %248 = arith.minf %cst, %cst_0 : f16
      %249 = vector.load %alloc_17[%c5, %c0] : memref<9x9xf32>, vector<9x9xf32>
      %cst_52 = arith.constant 1.000000e+00 : f32
      %cst_53 = arith.constant 0.000000e+00 : f32
      %250 = vector.transfer_read %5[%rank, %105], %cst_53 : tensor<6x8xf32>, vector<f32>
      %alloc_54 = memref.alloc() : memref<1x6xi1>
      %251 = tensor.empty() : tensor<8x6xi1>
      %252 = linalg.matmul ins(%expanded, %alloc_54 : tensor<8x1xi1>, memref<1x6xi1>) outs(%251 : tensor<8x6xi1>) -> tensor<8x6xi1>
      affine.for %arg1 = 0 to 100 {
      }
      bufferization.dealloc_tensor %collapsed : tensor<81xi16>
      %253 = index.divs %c12, %c4
      %alloc_55 = memref.alloc() : memref<8xf16>
      %254 = vector.gather %alloc_55[%126] [%146], %152, %169 : memref<8xf16>, vector<6x8xi32>, vector<6x8xi1>, vector<6x8xf16> into vector<6x8xf16>
      %255 = index.add %43, %109
      %256 = index.sizeof
      %257 = math.floor %cst_3 : f32
      %generated_56 = tensor.generate %43 {
      ^bb0(%arg1: index, %arg2: index):
        %275 = vector.multi_reduction <maxf>, %114, %114 [] : vector<6x8xf32> to vector<6x8xf32>
        %276 = math.ctpop %11 : tensor<6x6x6xi16>
        %277 = vector.multi_reduction <maxf>, %254, %169 [] : vector<6x8xf16> to vector<6x8xf16>
        %278 = vector.transpose %19, [0] : vector<9xf16> to vector<9xf16>
        tensor.yield %cst : f16
      } : tensor<?x9xf16>
      %c0_i16_57 = arith.constant 0 : i16
      %258 = vector.transfer_read %4[%rank_39, %137], %c0_i16_57 : tensor<6x8xi16>, vector<9xi16>
      %259 = arith.remsi %extracted, %c256786492_i64 : i64
      %260 = math.log10 %214 : tensor<9x9xf32>
      %261 = arith.minf %cst_1, %cst_4 : f32
      %262 = index.ceildivu %193, %196
      %263 = vector.gather %188[%c7] [%146], %152, %169 : tensor<8xf16>, vector<6x8xi32>, vector<6x8xi1>, vector<6x8xf16> into vector<6x8xf16>
      %264 = vector.maskedload %alloc_16[%c5, %c4], %132, %157 : memref<6x8xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
      %265 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 mod 8) ceildiv 64 + d0 mod 8, d0, d0 mod 16, -((d0 mod 8) ceildiv 64 + d0 mod 8))>(%c10, %196, %c14, %c3)
      %266 = bufferization.to_memref %generated_27 : memref<?x?xf16>
      %267 = scf.if %false -> (memref<9x9xi16>) {
        %275 = arith.maxui %c1_i16, %c12921_i16 : i16
        %276 = math.atan2 %12, %12 : tensor<6x6x6xf16>
        %277 = vector.reduction <minf>, %159 : vector<8xf32> into f32
        %from_elements_59 = tensor.from_elements %true_40, %true, %true_51, %true_40, %true_51, %true_40, %true_40, %true_51, %false, %false_35, %true, %true_40, %true_51, %false_35, %false, %true_40, %true, %true_51, %true, %true_40, %false_35, %true, %true, %true, %true, %false_35, %true_51, %false, %true, %true_40, %false_35, %false_35, %true_40, %true_51, %true_40, %true, %true_40, %false_35, %false_35, %false, %true, %true_40, %true_51, %false, %false_35, %true_51, %true, %true_51 : tensor<6x8xi1>
        %true_60 = index.bool.constant true
        %278 = vector.reduction <add>, %264 : vector<8xf32> into f32
        %279 = arith.shli %false, %true_40 : i1
        %280 = arith.remsi %true_40, %true_51 : i1
        %alloc_61 = memref.alloc() : memref<9x9xi16>
        scf.yield %alloc_61 : memref<9x9xi16>
      } else {
        %275 = tensor.empty(%rank) : tensor<?xf16>
        %276 = arith.maxui %c0_i16_57, %c809_i16 : i16
        %277 = vector.extract_strided_slice %167 {offsets = [2], sizes = [2], strides = [1]} : vector<6x8xi16> to vector<2x8xi16>
        %278 = affine.min affine_map<(d0, d1) -> (((-d0) ceildiv 2) * -2 + (-d1 + (-d0) ceildiv 2) mod 8, -d1 + (-d0) ceildiv 2, (-d0) ceildiv 2)>(%c2, %196)
        memref.assume_alignment %alloc_6, 4 : memref<6x8xf32>
        memref.copy %alloc_12, %alloc_20 : memref<6x6x6xi32> to memref<6x6x6xi32>
        %279 = vector.shuffle %263, %263 [0, 1, 6, 8, 9] : vector<6x8xf16>, vector<6x8xf16>
        %280 = arith.maxui %c72559683_i32, %c2141809103_i32 : i32
        %alloc_59 = memref.alloc() : memref<9x9xi16>
        scf.yield %alloc_59 : memref<9x9xi16>
      }
      %extracted_58 = tensor.extract %10[%c0, %c2] : tensor<6x8xi16>
      memref.store %c12921_i16, %267[%c7, %c2] : memref<9x9xi16>
      %268 = index.ceildivu %256, %87
      %269 = math.powf %from_elements, %7 : tensor<8xf32>
      %270 = arith.shrsi %extracted_58, %c0_i16_57 : i16
      %271 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + 144)>(%43, %c12, %c6, %137)
      %272 = math.exp2 %cst_3 : f32
      %273 = index.mul %255, %105
      %274 = arith.maxf %cst_2, %cst_2 : f32
      memref.alloca_scope.return %true_40 : i1
    }
    %218 = math.floor %cst_1 : f32
    %219 = math.cttz %21 : tensor<i64>
    %220 = math.ipowi %194, %extracted : i64
    %collapsed_43 = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<6x6x6xi16> into tensor<36x6xi16>
    %221 = arith.addf %cst_1, %cst_2 : f32
    %222 = scf.if %false_35 -> (memref<9x9xi32>) {
      %248 = arith.ori %194, %194 : i64
      %249 = vector.extract %146[0] : vector<6x8xi32>
      %250 = memref.alloca_scope  -> (memref<6x8xi16>) {
        %256 = arith.shrsi %extracted_24, %c809_i16 : i16
        %257 = vector.reduction <or>, %30 : vector<8xi1> into i1
        memref.assume_alignment %alloc_12, 2 : memref<6x6x6xi32>
        %258 = vector.broadcast %c72559683_i32 : i32 to vector<6x6x6xi32>
        %259 = index.add %rank, %c4
        %260 = math.floor %cst_4 : f32
        %261 = vector.broadcast %cst_2 : f32 to vector<8xf32>
        %262 = vector.fma %261, %261, %157 : vector<8xf32>
        %263 = index.add %87, %c14
        %264 = vector.broadcast %cst_2 : f32 to vector<6x6x6xf32>
        %265 = vector.fma %264, %173, %264 : vector<6x6x6xf32>
        %266 = math.log10 %cst_0 : f16
        %267 = index.divu %c14, %177
        %268 = vector.matrix_multiply %132, %44 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 9 : i32} : (vector<8xi1>, vector<9xi1>) -> vector<72xi1>
        %alloc_54 = memref.alloc() : memref<81xi16>
        memref.tensor_store %collapsed, %alloc_54 : memref<81xi16>
        %269 = vector.matrix_multiply %44, %125 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 8 : i32} : (vector<9xi1>, vector<8xi1>) -> vector<72xi1>
        %270 = arith.maxsi %c12921_i16, %extracted_24 : i16
        %rank_55 = tensor.rank %collapsed_43 : tensor<36x6xi16>
        %271 = index.maxu %166, %37
        %272 = math.atan2 %0, %8 : tensor<6x6x6xf32>
        %false_56 = index.bool.constant false
        %273 = math.exp %7 : tensor<8xf32>
        %274 = arith.remf %cst, %cst : f16
        %275 = math.floor %from_elements_34 : tensor<8xf16>
        %276 = arith.maxsi %c12921_i16, %c1_i16 : i16
        %277 = vector.flat_transpose %158 {columns = 4 : i32, rows = 2 : i32} : vector<8xi32> -> vector<8xi32>
        %278 = tensor.empty(%166, %109) : tensor<?x?x6xi32>
        %279 = arith.minsi %true_40, %true : i1
        %280 = vector.reduction <minf>, %157 : vector<8xf32> into f32
        %rank_57 = tensor.rank %from_elements_33 : tensor<9x9xf16>
        %281 = math.floor %cst_3 : f32
        %282 = memref.load %alloc_22[%c1] : memref<8xi64>
        %false_58 = arith.constant false
        %283 = vector.transfer_read %alloc_15[%rank], %false_58 : memref<8xi1>, vector<i1>
        %expanded_59 = tensor.expand_shape %from_elements_34 [[0, 1]] : tensor<8xf16> into tensor<8x1xf16>
        %alloc_60 = memref.alloc() : memref<6x8xi16>
        memref.alloca_scope.return %alloc_60 : memref<6x8xi16>
      }
      %cst_51 = arith.constant 1.000000e+00 : f16
      %cst_52 = arith.constant 0.000000e+00 : f16
      %251 = vector.transfer_read %alloc_11[%c2, %c14], %cst_52 : memref<9x9xf16>, vector<f16>
      %252 = arith.muli %194, %194 : i64
      %253 = math.cttz %217 : i1
      %254 = math.expm1 %8 : tensor<6x6x6xf32>
      %255 = tensor.empty() : tensor<6x8xf32>
      %mapped_53 = linalg.map ins(%alloc_6, %5, %alloc_6 : memref<6x8xf32>, tensor<6x8xf32>, memref<6x8xf32>) outs(%255 : tensor<6x8xf32>)
        (%in: f32, %in_54: f32, %in_55: f32) {
          %256 = math.exp %cst : f16
          %257 = math.expm1 %188 : tensor<8xf16>
          %258 = arith.negf %cst_2 : f32
          %alloc_56 = memref.alloc() : memref<f32>
          memref.copy %alloc_21, %alloc_56 : memref<f32> to memref<f32>
          vector.print %22 : vector<9x9xi64>
          %259 = vector.broadcast %c12921_i16 : i16 to vector<9x9xi16>
          %260 = vector.gather %250[%196, %c9] [%28], %147, %259 : memref<6x8xi16>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xi16> into vector<9x9xi16>
          %261 = tensor.empty(%43) : tensor<?xi64>
          %262 = bufferization.to_tensor %alloc_10 : memref<9x9xi32>
          %263 = vector.broadcast %cst_4 : f32 to vector<6x8xf32>
          %264 = vector.fma %263, %263, %263 : vector<6x8xf32>
          %collapsed_57 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<6x6x6xf32> into tensor<36x6xf32>
          %265 = math.ctpop %194 : i64
          %266 = arith.shrsi %c1_i16, %c809_i16 : i16
          %267 = arith.ori %c18588081_i32, %c18588081_i32 : i32
          memref.copy %alloc_19, %alloc_10 : memref<9x9xi32> to memref<9x9xi32>
          %268 = tensor.empty() : tensor<6x8xi16>
          %269 = vector.splat %c7 : vector<6x6x6xindex>
          %270 = math.round %5 : tensor<6x8xf32>
          memref.assume_alignment %alloc_11, 8 : memref<9x9xf16>
          %271 = math.atan %7 : tensor<8xf32>
          %272 = arith.maxf %in_55, %in : f32
          %273 = arith.shrui %true, %217 : i1
          %274 = vector.insert %44, %27 [8] : vector<9xi1> into vector<9x9xi1>
          %275 = math.absi %13 : tensor<8xi1>
          %276 = tensor.empty(%rank) : tensor<?x9xf16>
          %277 = arith.ori %194, %c31671818_i64 : i64
          %278 = tensor.empty() : tensor<6x8xf32>
          %279 = vector.transpose %113, [1, 0] : vector<6x8xf32> to vector<8x6xf32>
          %280 = vector.broadcast %in_55 : f32 to vector<6x8xf32>
          %281 = vector.fma %280, %263, %280 : vector<6x8xf32>
          %282 = vector.splat %cst_4 : vector<6x6x6xf32>
          %283 = vector.shuffle %103, %103 [3, 4, 6, 7, 10, 11] : vector<6x6xi1>, vector<6x6xi1>
          %284 = vector.broadcast %c31671818_i64 : i64 to vector<9xi64>
          %285 = vector.insert %284, %22 [3] : vector<9xi64> into vector<9x9xi64>
          %286 = math.cttz %collapsed_31 : tensor<8xi1>
          %cst_58 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_58 : f32
        }
      scf.yield %alloc_19 : memref<9x9xi32>
    } else {
      %collapsed_51 = tensor.collapse_shape %176 [[0, 1]] : tensor<9x9xf16> into tensor<81xf16>
      %collapsed_52 = tensor.collapse_shape %10 [[0, 1]] : tensor<6x8xi16> into tensor<48xi16>
      %248 = index.ceildivu %c15, %c14
      memref.alloca_scope  {
        %253 = arith.cmpf une, %cst_3, %cst_2 : f32
        %254 = vector.splat %c2 : vector<9x9xindex>
        %255 = index.ceildivs %c5, %162
        memref.copy %alloc_19, %alloc_10 : memref<9x9xi32> to memref<9x9xi32>
        %256 = vector.insertelement %c18588081_i32, %31[%109 : index] : vector<9xi32>
        %257 = vector.extract_strided_slice %98 {offsets = [6], sizes = [1], strides = [1]} : vector<9xf16> to vector<1xf16>
        %258 = vector.insertelement %cst_2, %157[%37 : index] : vector<8xf32>
        %259 = tensor.empty() : tensor<6x8xi64>
        %260 = affine.max affine_map<(d0) -> (d0 - 4, -d0 + 4)>(%c5)
        %261 = arith.ori %c256786492_i64, %extracted : i64
        %262 = vector.flat_transpose %132 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
        %263 = math.expm1 %0 : tensor<6x6x6xf32>
        %264 = arith.remf %cst_3, %cst_1 : f32
        %265 = math.absi %9 : tensor<8xi16>
        %266 = arith.maxf %cst_2, %cst_3 : f32
        %267 = math.atan2 %8, %0 : tensor<6x6x6xf32>
        %268 = vector.splat %126 : vector<8xindex>
        %269 = bufferization.to_tensor %alloc : memref<8xi64>
        %270 = math.log1p %5 : tensor<6x8xf32>
        %271 = bufferization.to_tensor %alloc_14 : memref<6x8xi64>
        %272 = vector.shuffle %140, %216 [3, 5, 7, 8, 9, 10, 13, 14, 15, 16, 17] : vector<9x9xf32>, vector<9x9xf32>
        %273 = math.roundeven %8 : tensor<6x6x6xf32>
        memref.copy %alloc_12, %alloc_20 : memref<6x6x6xi32> to memref<6x6x6xi32>
        %274 = math.round %0 : tensor<6x6x6xf32>
        %275 = tensor.empty() : tensor<9x9xi32>
        %276 = vector.gather %275[%rank, %38] [%158], %125, %158 : tensor<9x9xi32>, vector<8xi32>, vector<8xi1>, vector<8xi32> into vector<8xi32>
        %277 = affine.min affine_map<(d0) -> (d0 + d0 mod 32 + 128, 0, d0, 0)>(%c13)
        %278 = affine.load %alloc_11[%c15, %c2] : memref<9x9xf16>
        %279 = tensor.empty() : tensor<9x9xi1>
        %280 = arith.minsi %c31671818_i64, %c31671818_i64 : i64
        %281 = bufferization.to_memref %generated_27 : memref<?x?xf16>
        %cast_53 = tensor.cast %expanded : tensor<8x1xi1> to tensor<?x?xi1>
        %282 = vector.matrix_multiply %31, %31 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi32>, vector<9xi32>) -> vector<1xi32>
      }
      %249 = math.atan %5 : tensor<6x8xf32>
      %250 = bufferization.to_tensor %alloc_11 : memref<9x9xf16>
      %251 = math.cttz %collapsed_43 : tensor<36x6xi16>
      %252 = math.absi %17 : tensor<8xi16>
      scf.yield %alloc_19 : memref<9x9xi32>
    }
    %223 = math.log10 %cst_0 : f16
    %224 = math.absi %6 : tensor<9x9xi16>
    %225 = arith.subi %c1_i16, %c1_i16 : i16
    %alloc_44 = memref.alloc() : memref<8xi16>
    scf.index_switch %c7 
    case 1 {
      %248 = vector.flat_transpose %30 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
      %249 = arith.maxsi %194, %extracted : i64
      %250 = math.fpowi %7, %3 : tensor<8xf32>, tensor<8xi32>
      %251 = arith.minf %cst_2, %cst_2 : f32
      %252 = arith.muli %true_40, %false : i1
      %253 = math.powf %8, %0 : tensor<6x6x6xf32>
      %254 = vector.create_mask %38, %c15, %c10 : vector<6x6x6xi1>
      %255 = index.sizeof
      %256 = vector.reduction <add>, %181 : vector<8xf16> into f16
      %257 = vector.bitcast %31 : vector<9xi32> to vector<9xi32>
      %258 = index.ceildivu %rank_39, %87
      %259 = math.absi %21 : tensor<i64>
      %260 = math.log10 %cst_3 : f32
      %261 = bufferization.to_tensor %alloc_21 : memref<f32>
      %262 = arith.remf %cst_4, %cst_1 : f32
      %263 = vector.load %alloc_13[%c5] : memref<8xi16>, vector<6x8xi16>
      scf.yield
    }
    case 2 {
      %248 = vector.matrix_multiply %157, %157 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
      %249 = bufferization.to_memref %4 : memref<6x8xi16>
      %250 = arith.divsi %c809_i16, %extracted_24 : i16
      %251 = vector.splat %102 : vector<8xindex>
      %c9464_i16 = arith.constant 9464 : i16
      %252 = index.add %38, %43
      %253 = index.castu %c256786492_i64 : i64 to index
      %254 = memref.load %alloc_22[%c0] : memref<8xi64>
      %255 = vector.shuffle %44, %160 [0, 1, 2, 3, 4, 6, 13, 14, 16] : vector<9xi1>, vector<8xi1>
      %256 = index.ceildivu %c8, %56
      %257 = arith.maxsi %c18588081_i32, %c2141809103_i32 : i32
      %258 = tensor.empty() : tensor<9x9xf32>
      %mapped_51 = linalg.map ins(%214 : tensor<9x9xf32>) outs(%258 : tensor<9x9xf32>)
        (%in: f32) {
          %263 = arith.negf %cst_1 : f32
          %264 = index.divs %193, %c8
          %265 = arith.remf %cst, %cst : f16
          %266 = math.cttz %187 : tensor<8xi16>
          %rank_52 = tensor.rank %from_elements : tensor<8xf32>
          %267 = vector.splat %c9 : vector<9x9xindex>
          %268 = arith.shrsi %c809_i16, %c1_i16 : i16
          %269 = vector.load %142[%c3] : memref<8xi16>, vector<9x9xi16>
          %270 = vector.broadcast %c12921_i16 : i16 to vector<8xi16>
          %271 = vector.insert %270, %151 [2] : vector<8xi16> into vector<6x8xi16>
          %272 = index.castu %true : i1 to index
          %273 = math.exp2 %188 : tensor<8xf16>
          %274 = vector.broadcast %c18588081_i32 : i32 to vector<6x6x6xi32>
          %275 = vector.gather %alloc_15[%102] [%274], %35, %73 : memref<8xi1>, vector<6x6x6xi32>, vector<6x6x6xi1>, vector<6x6x6xi1> into vector<6x6x6xi1>
          %276 = index.castu %c1_i16 : i16 to index
          %277 = tensor.empty() : tensor<8xi64>
          %collapsed_53 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<6x6x6xf32> into tensor<36x6xf32>
          %278 = index.castu %c31671818_i64 : i64 to index
          %279 = affine.max affine_map<(d0, d1) -> (-(d1 mod 2), -(d0 mod 128))>(%87, %34)
          %collapsed_54 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<6x6x6xf32> into tensor<36x6xf32>
          %280 = affine.max affine_map<(d0) -> ((d0 + 64) ceildiv 32, d0 * 2 - 64)>(%193)
          %281 = vector.transpose %28, [1, 0] : vector<9x9xi32> to vector<9x9xi32>
          %282 = vector.load %alloc_5[%c3] : memref<8xi32>, vector<8xi32>
          %283 = math.exp2 %cst_4 : f32
          %284 = math.expm1 %119 : tensor<8xf16>
          %285 = vector.shuffle %73, %35 [4, 6, 8, 9, 10, 11] : vector<6x6x6xi1>, vector<6x6x6xi1>
          %286 = math.expm1 %5 : tensor<6x8xf32>
          %rank_55 = tensor.rank %5 : tensor<6x8xf32>
          %287 = index.divs %272, %87
          %288 = vector.transpose %160, [0] : vector<8xi1> to vector<8xi1>
          %289 = vector.splat %137 : vector<6x8xindex>
          %alloca_56 = memref.alloca() : memref<6x8xi32>
          %rank_57 = tensor.rank %15 : tensor<9x9xi1>
          %290 = vector.broadcast %cst_1 : f32 to vector<9xf32>
          %291 = vector.insert %290, %215 [0] : vector<9xf32> into vector<9x9xf32>
          %cst_58 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_58 : f32
        }
      %259 = bufferization.to_tensor %alloc_5 : memref<8xi32>
      %260 = index.sub %c2, %rank
      %261 = math.atan %cst_4 : f32
      %262 = vector.splat %c7 : vector<6x8xindex>
      scf.yield
    }
    case 3 {
      %248 = tensor.empty() : tensor<6x6x6xi32>
      %mapped_51 = linalg.map ins(%alloc_12, %alloc_20, %alloc_12 : memref<6x6x6xi32>, memref<6x6x6xi32>, memref<6x6x6xi32>) outs(%248 : tensor<6x6x6xi32>)
        (%in: i32, %in_53: i32, %in_54: i32) {
          %264 = arith.maxsi %c1_i16, %c809_i16 : i16
          %265 = math.exp2 %0 : tensor<6x6x6xf32>
          %266 = math.round %5 : tensor<6x8xf32>
          %267 = arith.shli %c609405922_i64, %194 : i64
          %268 = math.absf %119 : tensor<8xf16>
          %269 = arith.minsi %false_35, %true : i1
          %270 = bufferization.to_memref %176 : memref<9x9xf16>
          %cast_55 = tensor.cast %2 : tensor<9x9xi16> to tensor<?x?xi16>
          %271 = math.exp2 %214 : tensor<9x9xf32>
          %272 = math.absf %from_elements_33 : tensor<9x9xf16>
          %273 = vector.insertelement %cst_0, %98[%c10 : index] : vector<9xf16>
          %dest_56, %accumulated_value_57 = vector.scan <minui>, %146, %158 {inclusive = true, reduction_dim = 0 : i64} : vector<6x8xi32>, vector<8xi32>
          %274 = arith.addf %cst_1, %cst_3 : f32
          %275 = bufferization.to_memref %7 : memref<8xf32>
          %276 = affine.min affine_map<(d0, d1, d2) -> (d0, -(d0 - 192))>(%c9, %210, %126)
          %277 = math.round %0 : tensor<6x6x6xf32>
          %278 = vector.matrix_multiply %19, %181 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 8 : i32} : (vector<9xf16>, vector<8xf16>) -> vector<72xf16>
          %279 = math.tanh %119 : tensor<8xf16>
          %280 = vector.insert %103, %73 [1] : vector<6x6xi1> into vector<6x6x6xi1>
          %281 = affine.max affine_map<(d0, d1) -> ((-(d0 + d1 - 64)) ceildiv 2)>(%c3, %c9)
          %282 = vector.broadcast %c18588081_i32 : i32 to vector<6x8xi32>
          %283 = math.round %0 : tensor<6x6x6xf32>
          %c0_i16_58 = arith.constant 0 : i16
          %c0_i16_59 = arith.constant 0 : i16
          %284 = vector.transfer_read %2[%276, %c5], %c0_i16_59 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<9x9xi16>, vector<8xi16>
          %285 = math.atan2 %0, %0 : tensor<6x6x6xf32>
          %286 = arith.minf %cst_0, %cst : f16
          %287 = arith.minsi %false, %217 : i1
          %288 = vector.reduction <add>, %157 : vector<8xf32> into f32
          %289 = vector.extract %174[4, 2] : vector<6x6x6xf32>
          %290 = math.absf %176 : tensor<9x9xf16>
          %expanded_60 = tensor.expand_shape %214 [[0], [1, 2]] : tensor<9x9xf32> into tensor<9x9x1xf32>
          %291 = vector.splat %c2141809103_i32 : vector<8xi32>
          %292 = math.powf %12, %12 : tensor<6x6x6xf16>
          %c0_i32 = arith.constant 0 : i32
          linalg.yield %c0_i32 : i32
        }
      %249 = math.absf %from_elements_34 : tensor<8xf16>
      %250 = math.tanh %cst_3 : f32
      %251 = arith.maxui %c31671818_i64, %extracted : i64
      %252 = vector.load %alloc_16[%c1, %c6] : memref<6x8xf32>, vector<6x8xf32>
      %253 = index.castu %false_35 : i1 to index
      %254 = tensor.empty() : tensor<6xi32>
      %255 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%254, %254 : tensor<6xi32>, tensor<6xi32>) outs(%185 : tensor<6x6x6xi32>) {
      ^bb0(%in: i32, %in_53: i32, %out: i32):
        %264 = tensor.empty() : tensor<6x8xi32>
        %265 = math.fpowi %5, %264 : tensor<6x8xf32>, tensor<6x8xi32>
        %266 = affine.max affine_map<(d0, d1, d2, d3) -> (d3, d3 + 17, (d3 + 1) floordiv 4)>(%c12, %177, %c11, %c4)
        %267 = bufferization.to_tensor %alloc_16 : memref<6x8xf32>
        %268 = arith.subi %true_40, %217 : i1
        %false_54 = index.bool.constant false
        %269 = affine.min affine_map<(d0, d1) -> (d0 ceildiv 32, (d1 - (d1 + d0)) ceildiv 128 + 64)>(%c14, %137)
        memref.assume_alignment %alloc_7, 1 : memref<9x9xf16>
        %270 = vector.create_mask %109, %87, %c1 : vector<6x6x6xi1>
        %271 = tensor.empty() : tensor<6x8xf16>
        %expanded_55 = tensor.expand_shape %from_elements_34 [[0, 1]] : tensor<8xf16> into tensor<8x1xf16>
        %272 = index.mul %c7, %37
        %273 = arith.andi %c31671818_i64, %extracted : i64
        %274 = arith.andi %c2141809103_i32, %in : i32
        %275 = arith.remf %cst_1, %cst_4 : f32
        %276 = math.atan2 %cst_2, %cst_3 : f32
        %277 = index.divs %193, %c7
        %278 = bufferization.to_memref %4 : memref<6x8xi16>
        %expanded_56 = tensor.expand_shape %12 [[0], [1], [2, 3]] : tensor<6x6x6xf16> into tensor<6x6x6x1xf16>
        %279 = arith.maxf %cst_1, %cst_3 : f32
        %alloc_57 = memref.alloc() : memref<8xf32>
        memref.tensor_store %7, %alloc_57 : memref<8xf32>
        %alloca_58 = memref.alloca() : memref<6x6x6xf16>
        %280 = vector.load %165[%c3, %c3, %c0] : memref<6x6x6xf32>, vector<9x9xf32>
        %281 = arith.minsi %in_53, %c72559683_i32 : i32
        %expanded_59 = tensor.expand_shape %15 [[0], [1, 2]] : tensor<9x9xi1> into tensor<9x9x1xi1>
        %282 = vector.flat_transpose %132 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
        %283 = math.atan2 %expanded_56, %expanded_56 : tensor<6x6x6x1xf16>
        %284 = arith.remf %cst_4, %cst_1 : f32
        %285 = arith.shli %false, %false : i1
        %286 = index.castu %177 : index to i32
        %287 = index.divs %105, %56
        %288 = arith.maxsi %c809_i16, %c809_i16 : i16
        %289 = vector.transpose %29, [0, 1] : vector<9x9xi64> to vector<9x9xi64>
        linalg.yield %c2141809103_i32 : i32
      } -> tensor<6x6x6xi32>
      %256 = arith.divsi %false, %false : i1
      %257 = vector.transpose %132, [0] : vector<8xi1> to vector<8xi1>
      %258 = index.sizeof
      %259 = tensor.empty() : tensor<9x9xi32>
      %260 = math.fpowi %from_elements_33, %259 : tensor<9x9xf16>, tensor<9x9xi32>
      %cast_52 = tensor.cast %3 : tensor<8xi32> to tensor<?xi32>
      scf.index_switch %78 
      case 1 {
        %264 = math.cttz %6 : tensor<9x9xi16>
        %265 = index.ceildivu %38, %193
        %266 = vector.multi_reduction <minui>, %153, %167 [] : vector<6x8xi16> to vector<6x8xi16>
        %267 = math.powf %188, %119 : tensor<8xf16>
        %268 = index.ceildivs %c0, %c5
        %from_elements_53 = tensor.from_elements %false, %false, %false, %false, %217, %false, %false_35, %true_40, %false, %false, %true, %false, %true, %false, %true_40, %true_40, %true_40, %true, %217, %217, %true, %217, %false, %false, %false, %false_35, %false_35, %false, %true_40, %false, %217, %false, %217, %false_35, %false_35, %false_35, %false_35, %217, %true_40, %217, %false, %true_40, %true_40, %true_40, %false_35, %false, %true_40, %true_40 : tensor<6x8xi1>
        %269 = arith.maxui %c1_i16, %c12921_i16 : i16
        %270 = math.roundeven %188 : tensor<8xf16>
        %271 = vector.shuffle %153, %167 [0, 5, 8, 10, 11] : vector<6x8xi16>, vector<6x8xi16>
        memref.assume_alignment %alloc_8, 1 : memref<6x8xi64>
        %272 = math.round %cst_4 : f32
        %273 = arith.ori %c1_i16, %c1_i16 : i16
        %splat = tensor.splat %c609405922_i64 : tensor<6x8xi64>
        %274 = math.copysign %214, %214 : tensor<9x9xf32>
        %275 = index.castu %c4 : index to i32
        %276 = vector.reduction <mul>, %157 : vector<8xf32> into f32
        scf.yield
      }
      case 2 {
        %264 = math.powf %176, %176 : tensor<9x9xf16>
        %265 = index.ceildivs %253, %c1
        %266 = index.ceildivs %c15, %166
        %267 = arith.shrui %c31671818_i64, %c31671818_i64 : i64
        %268 = vector.broadcast %cst_1 : f32 to vector<9x9xf32>
        %269 = vector.fma %268, %215, %268 : vector<9x9xf32>
        %expanded_53 = tensor.expand_shape %13 [[0, 1]] : tensor<8xi1> into tensor<8x1xi1>
        %270 = index.sub %105, %258
        %271 = index.sizeof
        vector.print %173 : vector<6x6x6xf32>
        %272 = math.fpowi %cst_2, %c72559683_i32 : f32, i32
        %273 = tensor.empty(%c9) : tensor<?xf16>
        %274 = math.rsqrt %7 : tensor<8xf32>
        %275 = arith.muli %false_35, %false : i1
        %276 = arith.cmpf one, %cst_0, %cst : f16
        %277 = math.tanh %188 : tensor<8xf16>
        %278 = math.expm1 %from_elements_33 : tensor<9x9xf16>
        scf.yield
      }
      default {
        %264 = vector.load %alloc_19[%c8, %c2] : memref<9x9xi32>, vector<8xi32>
        %265 = math.rsqrt %0 : tensor<6x6x6xf32>
        %266 = arith.minsi %c2141809103_i32, %c72559683_i32 : i32
        %267 = arith.subi %c809_i16, %c12921_i16 : i16
        %268 = arith.minsi %c12921_i16, %c1_i16 : i16
        %269 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d1, d3, (-(d3 - 16)) ceildiv 128)>(%rank, %162, %210, %c0)
        %splat = tensor.splat %extracted : tensor<6x8xi64>
        %270 = math.atan2 %from_elements_33, %176 : tensor<9x9xf16>
        %rank_53 = tensor.rank %185 : tensor<6x6x6xi32>
        %alloc_54 = memref.alloc() : memref<1x8xi1>
        %271 = tensor.empty() : tensor<8x8xi1>
        %272 = linalg.matmul ins(%expanded, %alloc_54 : tensor<8x1xi1>, memref<1x8xi1>) outs(%271 : tensor<8x8xi1>) -> tensor<8x8xi1>
        %273 = arith.remsi %194, %c256786492_i64 : i64
        %274 = arith.remf %cst_2, %cst_4 : f32
        %275 = arith.maxf %cst_0, %cst : f16
        %276 = math.atan2 %cst_4, %cst_1 : f32
        %277 = bufferization.to_tensor %alloc_15 : memref<8xi1>
        %278 = arith.maxf %cst_2, %cst_2 : f32
      }
      %261 = vector.flat_transpose %132 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
      %262 = arith.maxui %c609405922_i64, %c609405922_i64 : i64
      %263 = math.ctpop %194 : i64
      scf.yield
    }
    default {
      %248 = arith.shrui %true, %217 : i1
      %249 = tensor.empty() : tensor<9x9xi32>
      %250 = math.fpowi %176, %249 : tensor<9x9xf16>, tensor<9x9xi32>
      %251 = vector.shuffle %35, %170 [0, 2, 3, 4, 6, 9, 10] : vector<6x6x6xi1>, vector<6x6x6xi1>
      %collapsed_51 = tensor.collapse_shape %6 [[0, 1]] : tensor<9x9xi16> into tensor<81xi16>
      %252 = scf.index_switch %rank -> memref<6x8xf32> 
      case 1 {
        %263 = index.divs %210, %193
        %splat = tensor.splat %c31671818_i64 : tensor<6x6x6xi64>
        %264 = tensor.empty() : tensor<6x6x6xf16>
        %265 = arith.andi %c1432919559_i32, %c1432919559_i32 : i32
        %266 = arith.shrui %c18588081_i32, %c2141809103_i32 : i32
        %267 = math.rsqrt %188 : tensor<8xf16>
        %268 = bufferization.to_memref %6 : memref<9x9xi16>
        %269 = arith.muli %c609405922_i64, %c256786492_i64 : i64
        %from_elements_53 = tensor.from_elements %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst_0 : tensor<6x8xf16>
        %270 = arith.remsi %c2141809103_i32, %c18588081_i32 : i32
        %cst_54 = arith.constant 3.214400e+04 : f16
        %271 = vector.insert %103, %35 [1] : vector<6x6xi1> into vector<6x6x6xi1>
        %272 = arith.minf %cst_1, %cst_4 : f32
        %dest_55, %accumulated_value_56 = vector.scan <or>, %152, %125 {inclusive = false, reduction_dim = 0 : i64} : vector<6x8xi1>, vector<8xi1>
        %273 = math.atan %214 : tensor<9x9xf32>
        %274 = arith.minf %cst_1, %cst_4 : f32
        scf.yield %alloc_6 : memref<6x8xf32>
      }
      case 2 {
        memref.store %cst, %alloc_7[%c7, %c7] : memref<9x9xf16>
        %263 = arith.cmpf ogt, %cst_2, %cst_3 : f32
        %264 = arith.minsi %c2141809103_i32, %c2141809103_i32 : i32
        %265 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %22, %22, %22 : vector<9x9xi64>, vector<9x9xi64> into vector<9x9xi64>
        %cst_53 = arith.constant 1.000000e+00 : f32
        %266 = vector.transfer_read %alloc_16[%43, %c3], %cst_53 : memref<6x8xf32>, vector<9xf32>
        %267 = math.ceil %12 : tensor<6x6x6xf16>
        %268 = math.cttz %false : i1
        %269 = affine.max affine_map<(d0, d1) -> (-d1 - 12, (-d1 - 4) ceildiv 128)>(%c3, %c11)
        %270 = arith.minf %cst_1, %cst_4 : f32
        %271 = vector.broadcast %true_40 : i1 to vector<9x9xi1>
        %272 = arith.minsi %c1_i16, %c1_i16 : i16
        %273 = bufferization.to_tensor %alloc_13 : memref<8xi16>
        %274 = bufferization.to_memref %from_elements : memref<8xf32>
        %275 = math.expm1 %cst_0 : f16
        %276 = math.expm1 %cst_0 : f16
        %277 = index.maxs %193, %c15
        scf.yield %alloc_6 : memref<6x8xf32>
      }
      case 3 {
        %263 = math.powf %cst_0, %cst : f16
        %264 = index.sub %c4, %c4
        %265 = arith.minf %cst, %cst_0 : f16
        %266 = affine.apply affine_map<(d0) -> (d0 - (d0 - 16) + d0 + 16)>(%38)
        %267 = arith.shrsi %c72559683_i32, %c18588081_i32 : i32
        %268 = math.fpowi %12, %185 : tensor<6x6x6xf16>, tensor<6x6x6xi32>
        %269 = math.exp2 %188 : tensor<8xf16>
        %dest_53, %accumulated_value_54 = vector.scan <maxsi>, %73, %103 {inclusive = false, reduction_dim = 2 : i64} : vector<6x6x6xi1>, vector<6x6xi1>
        %270 = math.atan %119 : tensor<8xf16>
        %271 = bufferization.clone %alloc_15 : memref<8xi1> to memref<8xi1>
        %272 = arith.minf %cst, %cst : f16
        memref.assume_alignment %271, 8 : memref<8xi1>
        %273 = vector.flat_transpose %125 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
        %274 = arith.remf %cst_4, %cst_3 : f32
        %275 = math.floor %214 : tensor<9x9xf32>
        %276 = math.atan %from_elements_33 : tensor<9x9xf16>
        scf.yield %alloc_6 : memref<6x8xf32>
      }
      case 4 {
        %263 = arith.muli %c72559683_i32, %c2141809103_i32 : i32
        %264 = vector.multi_reduction <add>, %27, %false_35 [0, 1] : vector<9x9xi1> to i1
        %265 = tensor.empty() : tensor<8xi64>
        %266 = vector.broadcast %c256786492_i64 : i64 to vector<8xi64>
        %267 = vector.gather %265[%c11] [%158], %125, %266 : tensor<8xi64>, vector<8xi32>, vector<8xi1>, vector<8xi64> into vector<8xi64>
        %268 = affine.max affine_map<(d0) -> (d0 floordiv 128 - 32, -(d0 floordiv 4 + 1))>(%c0)
        %269 = affine.min affine_map<(d0, d1, d2) -> (-d2, d0)>(%c7, %rank_39, %166)
        %270 = math.powf %cst_2, %cst_3 : f32
        %271 = arith.shrui %false, %217 : i1
        %272 = vector.insert %false_35, %132 [0] : i1 into vector<8xi1>
        %273 = math.round %7 : tensor<8xf32>
        %274 = arith.maxsi %true, %false : i1
        %275 = arith.remsi %264, %264 : i1
        %276 = math.absf %cst_4 : f32
        %277 = vector.bitcast %27 : vector<9x9xi1> to vector<9x9xi1>
        %278 = affine.min affine_map<(d0, d1) -> (d0 + d1 ceildiv 2 - 32)>(%c5, %c14)
        %expanded_53 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<9x9xi16> into tensor<9x9x1xi16>
        %279 = math.roundeven %cst_3 : f32
        scf.yield %alloc_6 : memref<6x8xf32>
      }
      default {
        %263 = math.floor %119 : tensor<8xf16>
        %264 = arith.shli %c12921_i16, %c1_i16 : i16
        %265 = arith.subi %false, %true : i1
        %266 = arith.cmpf uno, %cst_1, %cst_3 : f32
        memref.copy %alloc_16, %alloc_6 : memref<6x8xf32> to memref<6x8xf32>
        %267 = arith.minf %cst, %cst : f16
        %268 = index.divs %rank, %rank
        %269 = arith.muli %c256786492_i64, %extracted : i64
        memref.assume_alignment %alloc_10, 8 : memref<9x9xi32>
        %270 = vector.flat_transpose %160 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
        %alloc_53 = memref.alloc() : memref<6x6x6xi16>
        %271 = vector.broadcast %c809_i16 : i16 to vector<8xi16>
        %272 = vector.gather %alloc_53[%126, %rank, %rank_39] [%158], %132, %271 : memref<6x6x6xi16>, vector<8xi32>, vector<8xi1>, vector<8xi16> into vector<8xi16>
        %273 = arith.maxui %c12921_i16, %c12921_i16 : i16
        %274 = index.divs %162, %c13
        %collapsed_54 = tensor.collapse_shape %4 [[0, 1]] : tensor<6x8xi16> into tensor<48xi16>
        %275 = arith.muli %extracted, %extracted : i64
        %276 = arith.remf %cst_4, %cst_2 : f32
        scf.yield %alloc_16 : memref<6x8xf32>
      }
      %from_elements_52 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst : tensor<9x9xf16>
      %253 = math.round %5 : tensor<6x8xf32>
      %254 = math.absi %c2141809103_i32 : i32
      %255 = arith.cmpf ult, %cst_4, %cst_1 : f32
      %256 = memref.alloca_scope  -> (i32) {
        %263 = arith.floordivsi %false, %false : i1
        %264 = vector.bitcast %147 : vector<9x9xi1> to vector<9x9xi1>
        %265 = math.rsqrt %7 : tensor<8xf32>
        %266 = index.divs %c6, %rank_39
        %267 = tensor.empty() : tensor<6x6x6xi64>
        %268 = math.log1p %cst_3 : f32
        %269 = arith.shli %c809_i16, %c12921_i16 : i16
        %270 = index.divu %37, %c1
        %271 = arith.maxsi %217, %false_35 : i1
        %272 = math.absf %12 : tensor<6x6x6xf16>
        %273 = index.divu %34, %c13
        %274 = index.castu %43 : index to i32
        %from_elements_53 = tensor.from_elements %cst_2, %cst_2, %cst_3, %cst_1, %cst_4, %cst_4, %cst_3, %cst_1, %cst_3, %cst_2, %cst_3, %cst_2, %cst_4, %cst_2, %cst_1, %cst_1, %cst_4, %cst_2, %cst_4, %cst_3, %cst_1, %cst_4, %cst_4, %cst_4, %cst_2, %cst_3, %cst_3, %cst_1, %cst_1, %cst_3, %cst_2, %cst_2, %cst_1, %cst_3, %cst_1, %cst_3, %cst_4, %cst_1, %cst_1, %cst_1, %cst_4, %cst_1, %cst_2, %cst_4, %cst_3, %cst_3, %cst_2, %cst_2, %cst_4, %cst_2, %cst_1, %cst_1, %cst_1, %cst_3, %cst_4, %cst_2, %cst_1, %cst_1, %cst_3, %cst_4, %cst_2, %cst_2, %cst_3, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_4, %cst_3, %cst_4, %cst_4, %cst_3, %cst_1, %cst_4, %cst_2, %cst_4, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_4, %cst_2, %cst_1, %cst_3, %cst_1, %cst_3, %cst_3, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_4, %cst_1, %cst_1, %cst_1, %cst_3, %cst_1, %cst_1, %cst_3, %cst_4, %cst_1, %cst_2, %cst_4, %cst_3, %cst_2, %cst_3, %cst_1, %cst_2, %cst_3, %cst_4, %cst_3, %cst_4, %cst_4, %cst_1, %cst_2, %cst_3, %cst_1, %cst_4, %cst_2, %cst_1, %cst_4, %cst_1, %cst_1, %cst_4, %cst_4, %cst_2, %cst_2, %cst_1, %cst_4, %cst_2, %cst_1, %cst_2, %cst_4, %cst_1, %cst_2, %cst_3, %cst_4, %cst_1, %cst_1, %cst_3, %cst_4, %cst_1, %cst_4, %cst_1, %cst_2, %cst_3, %cst_2, %cst_3, %cst_1, %cst_1, %cst_4, %cst_3, %cst_2, %cst_3, %cst_4, %cst_1, %cst_4, %cst_3, %cst_2, %cst_1, %cst_4, %cst_1, %cst_3, %cst_1, %cst_2, %cst_4, %cst_4, %cst_4, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_1, %cst_3, %cst_3, %cst_4, %cst_3, %cst_2, %cst_4, %cst_4, %cst_3, %cst_2, %cst_3, %cst_1, %cst_3, %cst_1, %cst_1, %cst_1, %cst_1, %cst_3, %cst_4, %cst_2, %cst_4, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_3, %cst_4, %cst_3, %cst_4, %cst_1, %cst_1, %cst_3, %cst_1, %cst_2 : tensor<6x6x6xf32>
        %275 = vector.broadcast %194 : i64 to vector<9xi64>
        %276 = vector.insert %275, %22 [2] : vector<9xi64> into vector<9x9xi64>
        %277 = vector.flat_transpose %31 {columns = 3 : i32, rows = 3 : i32} : vector<9xi32> -> vector<9xi32>
        %expanded_54 = tensor.expand_shape %9 [[0, 1]] : tensor<8xi16> into tensor<8x1xi16>
        memref.store %c18588081_i32, %alloc_19[%c5, %c4] : memref<9x9xi32>
        memref.assume_alignment %alloc_10, 1 : memref<9x9xi32>
        %278 = affine.min affine_map<(d0, d1) -> (d0, 0, (-d1) floordiv 64)>(%34, %126)
        %279 = vector.splat %c3 : vector<8xindex>
        %280 = math.rsqrt %cst_4 : f32
        %281 = math.powf %5, %5 : tensor<6x8xf32>
        %282 = math.round %12 : tensor<6x6x6xf16>
        %283 = affine.load %alloc_6[%c11, %c7] : memref<6x8xf32>
        %284 = memref.atomic_rmw addi %c18588081_i32, %alloc_10[%c8, %c5] : (i32, memref<9x9xi32>) -> i32
        %285 = vector.broadcast %cst_3 : f32 to vector<6x6xf32>
        %dest_55, %accumulated_value_56 = vector.scan <minf>, %117, %285 {inclusive = false, reduction_dim = 2 : i64} : vector<6x6x6xf32>, vector<6x6xf32>
        %286 = arith.remf %cst_3, %cst_1 : f32
        memref.copy %alloc_8, %alloc_14 : memref<6x8xi64> to memref<6x8xi64>
        %287 = math.absf %5 : tensor<6x8xf32>
        %288 = vector.splat %cst : vector<6x8xf16>
        %289 = math.absf %cst : f16
        %290 = vector.shuffle %157, %157 [2, 3, 4, 6, 8, 10, 11, 13] : vector<8xf32>, vector<8xf32>
        memref.alloca_scope.return %c18588081_i32 : i32
      }
      %257 = math.fma %5, %5, %5 : tensor<6x8xf32>
      %258 = arith.minsi %c1_i16, %c12921_i16 : i16
      %259 = index.ceildivu %c3, %43
      %260 = arith.minsi %c2141809103_i32, %c1432919559_i32 : i32
      %261 = vector.transpose %31, [0] : vector<9xi32> to vector<9xi32>
      %262 = index.mul %c11, %196
    }
    %226 = math.log10 %176 : tensor<9x9xf16>
    %227 = index.mul %126, %c3
    %cst_45 = arith.constant 1.000000e+00 : f32
    %228 = vector.transfer_read %5[%210, %102], %cst_45 : tensor<6x8xf32>, vector<f32>
    %229 = math.absi %51 : tensor<8xi32>
    %230 = arith.shrui %false, %false : i1
    %231 = scf.while (%arg1 = %c18588081_i32) : (i32) -> i32 {
      %248 = math.expm1 %from_elements : tensor<8xf32>
      %249 = math.rsqrt %7 : tensor<8xf32>
      %250 = arith.divsi %c31671818_i64, %c256786492_i64 : i64
      %251 = index.sizeof
      %252 = arith.remsi %c18588081_i32, %arg1 : i32
      %253 = arith.cmpf ult, %cst_2, %cst_2 : f32
      %254 = vector.broadcast %cst_4 : f32 to vector<6x8xf32>
      %255 = vector.fma %254, %113, %114 : vector<6x8xf32>
      %rank_51 = tensor.rank %8 : tensor<6x6x6xf32>
      scf.condition(%false) %arg1 : i32
    } do {
    ^bb0(%arg1: i32):
      %248 = index.sub %87, %102
      %249 = arith.divsi %arg1, %c2141809103_i32 : i32
      %250 = vector.shuffle %29, %22 [1, 15] : vector<9x9xi64>, vector<9x9xi64>
      %251 = vector.shuffle %157, %157 [0, 2, 4, 5, 6, 8, 10, 11, 12, 13, 14] : vector<8xf32>, vector<8xf32>
      %rank_51 = tensor.rank %cast_41 : tensor<?x?xi16>
      %252 = math.exp %12 : tensor<6x6x6xf16>
      %253 = arith.shrui %c2141809103_i32, %c2141809103_i32 : i32
      %254 = math.ctpop %1 : tensor<8xi1>
      %255 = vector.splat %c3 : vector<8xindex>
      %256 = arith.cmpi ne, %194, %extracted : i64
      %257 = scf.execute_region -> tensor<6x8xf16> {
        %262 = math.absi %true : i1
        %263 = tensor.empty(%162) : tensor<6x?xi32>
        %264 = arith.maxui %c256786492_i64, %extracted : i64
        %265 = math.roundeven %7 : tensor<8xf32>
        %266 = vector.matrix_multiply %19, %181 {lhs_columns = 1 : i32, lhs_rows = 9 : i32, rhs_columns = 8 : i32} : (vector<9xf16>, vector<8xf16>) -> vector<72xf16>
        %267 = vector.flat_transpose %160 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
        %268 = math.atan2 %from_elements_33, %176 : tensor<9x9xf16>
        %269 = arith.divui %c1432919559_i32, %c1432919559_i32 : i32
        %alloc_53 = memref.alloc() : memref<9x9xi1>
        %270 = vector.broadcast %c2141809103_i32 : i32 to vector<6x6x6xi32>
        %271 = vector.gather %alloc_53[%248, %c9] [%270], %35, %170 : memref<9x9xi1>, vector<6x6x6xi32>, vector<6x6x6xi1>, vector<6x6x6xi1> into vector<6x6x6xi1>
        %272 = index.sizeof
        %273 = math.cttz %c31671818_i64 : i64
        %274 = arith.maxf %cst_4, %cst_4 : f32
        %275 = vector.transpose %98, [0] : vector<9xf16> to vector<9xf16>
        %276 = math.expm1 %5 : tensor<6x8xf32>
        %277 = math.round %176 : tensor<9x9xf16>
        %278 = arith.mulf %cst_1, %cst_4 : f32
        %279 = tensor.empty() : tensor<6x8xf16>
        scf.yield %279 : tensor<6x8xf16>
      }
      %258 = math.atan2 %12, %12 : tensor<6x6x6xf16>
      %259 = arith.minsi %c1_i16, %c12921_i16 : i16
      %260 = math.exp2 %8 : tensor<6x6x6xf32>
      %261 = math.exp2 %188 : tensor<8xf16>
      %alloca_52 = memref.alloca() : memref<9x9xi32>
      scf.yield %c18588081_i32 : i32
    }
    scf.index_switch %34 
    case 1 {
      %248 = index.divs %137, %c12
      %249 = vector.splat %87 : vector<6x6x6xindex>
      %false_51 = index.bool.constant false
      %250 = vector.transpose %113, [0, 1] : vector<6x8xf32> to vector<6x8xf32>
      %251 = arith.remf %cst_2, %cst_3 : f32
      %252 = math.ctlz %c12921_i16 : i16
      %alloc_52 = memref.alloc() : memref<8xf16>
      memref.tensor_store %188, %alloc_52 : memref<8xf16>
      %253 = arith.remsi %c2141809103_i32, %c18588081_i32 : i32
      memref.assume_alignment %alloc_9, 2 : memref<8xi16>
      %collapsed_53 = tensor.collapse_shape %5 [[0, 1]] : tensor<6x8xf32> into tensor<48xf32>
      %254 = arith.mulf %cst_2, %cst_4 : f32
      %255 = arith.addf %cst, %cst : f16
      %256 = vector.create_mask %210 : vector<8xi1>
      %257 = vector.broadcast %194 : i64 to vector<8xi64>
      %258 = affine.max affine_map<(d0, d1, d2) -> (d1 - d0 * 32)>(%137, %38, %c7)
      %259 = arith.remf %cst_4, %cst_45 : f32
      scf.yield
    }
    case 2 {
      %248 = arith.shrsi %c2141809103_i32, %c18588081_i32 : i32
      %249 = vector.insert %true, %160 [5] : i1 into vector<8xi1>
      %250 = vector.multi_reduction <add>, %125, %132 [] : vector<8xi1> to vector<8xi1>
      %251 = index.castu %c72559683_i32 : i32 to index
      %252 = arith.maxf %cst_2, %cst_1 : f32
      %253 = vector.broadcast %extracted_24 : i16 to vector<8x8xi16>
      %254 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<or>} %151, %153, %253 : vector<6x8xi16>, vector<6x8xi16> into vector<8x8xi16>
      %255 = vector.transpose %29, [0, 1] : vector<9x9xi64> to vector<9x9xi64>
      %256 = arith.floordivsi %c72559683_i32, %c72559683_i32 : i32
      %257 = index.add %109, %37
      %258 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d2 - d0))>(%c12, %105, %251, %c4)
      %collapsed_51 = tensor.collapse_shape %15 [[0, 1]] : tensor<9x9xi1> into tensor<81xi1>
      %259 = math.ctpop %14 : tensor<8xi16>
      %260 = index.add %rank, %177
      %261 = math.roundeven %8 : tensor<6x6x6xf32>
      %c877841989_i64 = arith.constant 877841989 : i64
      %262 = arith.shrsi %extracted, %c256786492_i64 : i64
      scf.yield
    }
    case 3 {
      %248 = tensor.empty() : tensor<9x9xi16>
      %mapped_51 = linalg.map ins(%6 : tensor<9x9xi16>) outs(%248 : tensor<9x9xi16>)
        (%in: i16) {
          %261 = arith.shrui %c256786492_i64, %c31671818_i64 : i64
          %262 = vector.reduction <add>, %132 : vector<8xi1> into i1
          %263 = arith.maxui %in, %c809_i16 : i16
          %264 = affine.max affine_map<(d0) -> (d0 * 64, d0 * 65)>(%38)
          %265 = bufferization.clone %alloc_22 : memref<8xi64> to memref<8xi64>
          %266 = math.atan2 %119, %188 : tensor<8xf16>
          %267 = bufferization.to_tensor %165 : memref<6x6x6xf32>
          %268 = vector.broadcast %194 : i64 to vector<9xi64>
          %269 = vector.insert %268, %29 [4] : vector<9xi64> into vector<9x9xi64>
          %extracted_57 = tensor.extract %cast_41[%c0, %c0] : tensor<?x?xi16>
          %270 = index.ceildivs %c9, %c7
          %271 = vector.create_mask %78, %105 : vector<9x9xi1>
          %272 = bufferization.to_tensor %142 : memref<8xi16>
          %rank_58 = tensor.rank %9 : tensor<8xi16>
          %273 = arith.maxf %cst_2, %cst_4 : f32
          %274 = arith.minf %cst_3, %cst_45 : f32
          %275 = math.round %7 : tensor<8xf32>
          %276 = math.expm1 %267 : tensor<6x6x6xf32>
          %277 = math.tanh %cst_2 : f32
          %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %215, %215, %140 : vector<9x9xf32>, vector<9x9xf32> into vector<9x9xf32>
          %279 = arith.addf %cst_4, %cst_2 : f32
          %280 = math.expm1 %214 : tensor<9x9xf32>
          %281 = arith.maxui %c609405922_i64, %c31671818_i64 : i64
          memref.assume_alignment %alloc_18, 1 : memref<6x6x6xi1>
          %282 = index.add %78, %c1
          bufferization.dealloc_tensor %188 : tensor<8xf16>
          %alloc_59 = memref.alloc() : memref<6x6x6xi16>
          %283 = vector.broadcast %extracted_24 : i16 to vector<8xi16>
          %284 = vector.gather %alloc_59[%102, %c11, %c3] [%158], %160, %283 : memref<6x6x6xi16>, vector<8xi32>, vector<8xi1>, vector<8xi16> into vector<8xi16>
          %285 = vector.create_mask %137, %87 : vector<6x8xi1>
          %286 = vector.flat_transpose %125 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
          %287 = index.casts %rank : index to i32
          %288 = arith.shrui %217, %217 : i1
          %289 = math.round %cst_4 : f32
          %290 = arith.cmpf one, %cst, %cst_0 : f16
          %c0_i16_60 = arith.constant 0 : i16
          linalg.yield %c0_i16_60 : i16
        }
      %extracted_52 = tensor.extract %generated_30[%c0, %c0] : tensor<?x?xi16>
      %249 = affine.max affine_map<(d0, d1) -> ((d0 - 32) ceildiv 2, (d0 - 32) mod 64 + 2)>(%rank, %c11)
      %rank_53 = tensor.rank %12 : tensor<6x6x6xf16>
      %dest_54, %accumulated_value_55 = vector.scan <add>, %169, %181 {inclusive = false, reduction_dim = 0 : i64} : vector<6x8xf16>, vector<8xf16>
      %alloc_56 = memref.alloc() : memref<6x8xi32>
      %250 = vector.gather %alloc_56[%87, %137] [%28], %147, %39 : memref<6x8xi32>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xi32> into vector<9x9xi32>
      %251 = vector.broadcast %cst_45 : f32 to vector<8xf32>
      %252 = vector.fma %251, %251, %159 : vector<8xf32>
      %253 = vector.flat_transpose %132 {columns = 4 : i32, rows = 2 : i32} : vector<8xi1> -> vector<8xi1>
      %254 = math.ctlz %c256786492_i64 : i64
      %255 = affine.load %alloc_15[%c9] : memref<8xi1>
      %256 = vector.splat %38 : vector<6x8xindex>
      %257 = vector.broadcast %217 : i1 to vector<6x6x6xi1>
      %258 = vector.reduction <minsi>, %253 : vector<8xi1> into i1
      bufferization.dealloc_tensor %9 : tensor<8xi16>
      %259 = index.sizeof
      %260 = arith.maxui %c12921_i16, %c1_i16 : i16
      scf.yield
    }
    case 4 {
      %248 = tensor.empty() : tensor<6x8xi64>
      %mapped_51 = linalg.map ins(%26 : tensor<6x8xi64>) outs(%248 : tensor<6x8xi64>)
        (%in: i64) {
          %260 = arith.addf %cst_4, %cst_3 : f32
          %261 = index.ceildivs %c13, %227
          %262 = math.powf %7, %7 : tensor<8xf32>
          %false_55 = index.bool.constant false
          %263 = math.cttz %13 : tensor<8xi1>
          %rank_56 = tensor.rank %8 : tensor<6x6x6xf32>
          %264 = arith.mulf %cst_3, %cst_45 : f32
          %265 = arith.addf %cst, %cst_0 : f16
          %266 = vector.broadcast %c12921_i16 : i16 to vector<6xi16>
          %dest_57, %accumulated_value_58 = vector.scan <maxui>, %151, %266 {inclusive = false, reduction_dim = 1 : i64} : vector<6x8xi16>, vector<6xi16>
          %267 = affine.min affine_map<(d0, d1) -> (d0 - 4, (d0 - 4) floordiv 8 + d0)>(%c8, %c14)
          %alloc_59 = memref.alloc() : memref<8xi32>
          memref.copy %alloc_5, %alloc_59 : memref<8xi32> to memref<8xi32>
          %268 = vector.multi_reduction <minsi>, %35, %35 [] : vector<6x6x6xi1> to vector<6x6x6xi1>
          %269 = arith.ori %true_40, %true_40 : i1
          %270 = index.castu %c31671818_i64 : i64 to index
          %271 = vector.insert %44, %147 [7] : vector<9xi1> into vector<9x9xi1>
          %272 = vector.broadcast %extracted_24 : i16 to vector<8xi16>
          %273 = vector.insert %272, %167 [5] : vector<8xi16> into vector<6x8xi16>
          %274 = vector.create_mask %c12, %43 : vector<9x9xi1>
          %275 = vector.broadcast %in : i64 to vector<8x8xi64>
          %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %92, %92, %275 : vector<6x8xi64>, vector<6x8xi64> into vector<8x8xi64>
          %alloc_60 = memref.alloc() : memref<6x6x6xi1>
          memref.copy %alloc_18, %alloc_60 : memref<6x6x6xi1> to memref<6x6x6xi1>
          %277 = math.ipowi %false, %false_35 : i1
          %278 = math.log %from_elements_34 : tensor<8xf16>
          memref.store %c18588081_i32, %alloc_19[%c5, %c5] : memref<9x9xi32>
          %rank_61 = tensor.rank %expanded : tensor<8x1xi1>
          %collapsed_62 = tensor.collapse_shape %26 [[0, 1]] : tensor<6x8xi64> into tensor<48xi64>
          %279 = index.ceildivs %56, %c11
          %collapsed_63 = tensor.collapse_shape %96 [[0, 1]] : tensor<6x8xi64> into tensor<48xi64>
          %280 = vector.broadcast %cst_3 : f32 to vector<9x9xf32>
          %281 = vector.fma %280, %216, %140 : vector<9x9xf32>
          %282 = tensor.empty() : tensor<9x9xi32>
          %283 = vector.broadcast %cst_4 : f32 to vector<6x6x6xf32>
          %284 = index.add %c8, %rank
          %285 = math.absf %8 : tensor<6x6x6xf32>
          %286 = math.round %188 : tensor<8xf16>
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %249 = arith.remf %cst_2, %cst_45 : f32
      %250 = math.cttz %1 : tensor<8xi1>
      %251 = scf.index_switch %37 -> vector<6x8xi16> 
      case 1 {
        %260 = bufferization.to_tensor %alloc_6 : memref<6x8xf32>
        %261 = arith.negf %cst_2 : f32
        %262 = vector.outerproduct %31, %31, %28 {kind = #vector.kind<minui>} : vector<9xi32>, vector<9xi32>
        %263 = arith.negf %cst_4 : f32
        %264 = arith.maxsi %c809_i16, %extracted_24 : i16
        %265 = math.round %from_elements_33 : tensor<9x9xf16>
        %266 = vector.broadcast %cst_0 : f16 to vector<6xf16>
        %267 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %169, %181, %266 : vector<6x8xf16>, vector<8xf16> into vector<6xf16>
        %268 = math.atan2 %214, %214 : tensor<9x9xf32>
        %269 = bufferization.to_tensor %alloc_10 : memref<9x9xi32>
        %rank_55 = tensor.rank %generated_30 : tensor<?x?xi16>
        %270 = index.ceildivs %38, %rank_55
        %271 = vector.splat %c9 : vector<8xindex>
        %272 = vector.load %alloc_19[%c1, %c8] : memref<9x9xi32>, vector<9x9xi32>
        %273 = math.ctlz %c2141809103_i32 : i32
        %274 = vector.broadcast %false : i1 to vector<6xi1>
        %dest_56, %accumulated_value_57 = vector.scan <add>, %152, %274 {inclusive = false, reduction_dim = 1 : i64} : vector<6x8xi1>, vector<6xi1>
        %275 = arith.muli %c1_i16, %c1_i16 : i16
        scf.yield %167 : vector<6x8xi16>
      }
      default {
        %260 = vector.transpose %132, [0] : vector<8xi1> to vector<8xi1>
        %261 = affine.max affine_map<(d0, d1, d2) -> (d2 * 8, d1 mod 32 + 4)>(%c3, %37, %105)
        %262 = math.exp2 %119 : tensor<8xf16>
        %263 = vector.broadcast %cst_2 : f32 to vector<6x8xf32>
        %264 = arith.maxf %cst_45, %cst_4 : f32
        %265 = arith.remsi %194, %194 : i64
        %266 = arith.ori %true, %true : i1
        %267 = index.ceildivs %137, %c1
        %collapsed_55 = tensor.collapse_shape %collapsed_43 [[0, 1]] : tensor<36x6xi16> into tensor<216xi16>
        %268 = math.powf %cst, %cst : f16
        %269 = affine.max affine_map<(d0, d1, d2) -> (56, 0)>(%43, %87, %rank)
        %270 = arith.remf %cst_0, %cst : f16
        %271 = vector.shuffle %22, %22 [2, 3, 5, 6, 7, 9, 11, 15] : vector<9x9xi64>, vector<9x9xi64>
        %272 = math.exp2 %12 : tensor<6x6x6xf16>
        %273 = arith.shrui %true, %false_35 : i1
        %274 = math.tanh %cst : f16
        scf.yield %167 : vector<6x8xi16>
      }
      %252 = arith.ori %c609405922_i64, %c256786492_i64 : i64
      %253 = vector.flat_transpose %98 {columns = 3 : i32, rows = 3 : i32} : vector<9xf16> -> vector<9xf16>
      %254 = arith.cmpf false, %cst_3, %cst_1 : f32
      %255 = math.absf %5 : tensor<6x8xf32>
      affine.store %c1_i16, %alloc_9[%c5] : memref<8xi16>
      %c0_i64 = arith.constant 0 : i64
      %c0_i64_52 = arith.constant 0 : i64
      %256 = vector.transfer_read %alloc_22[%210], %c0_i64_52 : memref<8xi64>, vector<i64>
      %257 = tensor.empty() : tensor<8xf16>
      %mapped_53 = linalg.map ins(%188, %119, %188 : tensor<8xf16>, tensor<8xf16>, tensor<8xf16>) outs(%257 : tensor<8xf16>)
        (%in: f16, %in_55: f16, %in_56: f16) {
          %260 = vector.broadcast %c72559683_i32 : i32 to vector<i32>
          vector.transfer_write %260, %alloc_10[%rank, %c13] : vector<i32>, memref<9x9xi32>
          %261 = arith.andi %c2141809103_i32, %c72559683_i32 : i32
          %262 = arith.muli %false_35, %false_35 : i1
          %263 = tensor.empty() : tensor<8xf32>
          %264 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %cst_0 : vector<9xf16>, vector<9xf16> into f16
          memref.store %217, %alloc_18[%c3, %c3, %c3] : memref<6x6x6xi1>
          %265 = math.fpowi %7, %3 : tensor<8xf32>, tensor<8xi32>
          %rank_57 = tensor.rank %7 : tensor<8xf32>
          %rank_58 = tensor.rank %176 : tensor<9x9xf16>
          %266 = arith.shli %false, %false_35 : i1
          %267 = vector.gather %8[%c11, %196, %56] [%158], %125, %157 : tensor<6x6x6xf32>, vector<8xi32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
          %268 = vector.flat_transpose %19 {columns = 3 : i32, rows = 3 : i32} : vector<9xf16> -> vector<9xf16>
          %from_elements_59 = tensor.from_elements %c72559683_i32, %c1432919559_i32, %c1432919559_i32, %c72559683_i32, %c18588081_i32, %c72559683_i32, %c1432919559_i32, %c2141809103_i32 : tensor<8xi32>
          %269 = bufferization.to_tensor %222 : memref<9x9xi32>
          %270 = vector.shuffle %31, %158 [0, 2, 3, 4, 6, 7, 8, 9, 11, 16] : vector<9xi32>, vector<8xi32>
          %271 = arith.maxui %c31671818_i64, %c256786492_i64 : i64
          %272 = arith.minf %in_55, %in_56 : f16
          %273 = math.log2 %in_56 : f16
          %274 = vector.shuffle %267, %267 [2, 3, 4, 5, 6, 7, 8, 10, 12, 13, 14] : vector<8xf32>, vector<8xf32>
          %275 = math.log10 %in : f16
          %276 = vector.splat %rank_39 : vector<6x6x6xindex>
          %277 = math.ctpop %248 : tensor<6x8xi64>
          %278 = math.floor %in_56 : f16
          %279 = arith.mulf %in_55, %cst_0 : f16
          %280 = vector.reduction <minf>, %267 : vector<8xf32> into f32
          %splat = tensor.splat %extracted_24 : tensor<9x9xi16>
          %281 = math.roundeven %cst_45 : f32
          %282 = arith.remf %cst_2, %cst_1 : f32
          %283 = vector.broadcast %c0_i64 : i64 to vector<9xi64>
          %dest_60, %accumulated_value_61 = vector.scan <and>, %29, %283 {inclusive = true, reduction_dim = 0 : i64} : vector<9x9xi64>, vector<9xi64>
          %284 = vector.maskedload %165[%c5, %c4, %c1], %160, %267 : memref<6x6x6xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
          %285 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d2)>(%105, %193, %109, %c1)
          %286 = math.log10 %188 : tensor<8xf16>
          %cst_62 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_62 : f16
        }
      scf.index_switch %38 
      case 1 {
        %expanded_55 = tensor.expand_shape %from_elements [[0, 1]] : tensor<8xf32> into tensor<8x1xf32>
        %260 = vector.insert %c18588081_i32, %31 [1] : i32 into vector<9xi32>
        %extracted_56 = tensor.extract %11[%c0, %c5, %c5] : tensor<6x6x6xi16>
        memref.assume_alignment %165, 2 : memref<6x6x6xf32>
        %261 = tensor.empty() : tensor<6x8xf32>
        %262 = arith.subi %c256786492_i64, %c256786492_i64 : i64
        %263 = vector.broadcast %cst_3 : f32 to vector<6x8xf32>
        %264 = vector.fma %263, %113, %113 : vector<6x8xf32>
        %265 = math.ctlz %collapsed_43 : tensor<36x6xi16>
        %266 = math.ctlz %3 : tensor<8xi32>
        %267 = index.divs %137, %rank
        %cst_57 = arith.constant 1.000000e+00 : f16
        %268 = vector.transfer_read %alloc_7[%193, %166], %cst_57 : memref<9x9xf16>, vector<8xf16>
        %269 = math.powf %0, %8 : tensor<6x6x6xf32>
        %270 = arith.minsi %c809_i16, %c12921_i16 : i16
        %false_58 = index.bool.constant false
        %271 = index.sizeof
        %272 = vector.transpose %174, [1, 2, 0] : vector<6x6x6xf32> to vector<6x6x6xf32>
        scf.yield
      }
      default {
        %260 = arith.subi %c809_i16, %c1_i16 : i16
        %261 = math.absi %9 : tensor<8xi16>
        %262 = arith.muli %c256786492_i64, %c609405922_i64 : i64
        %263 = arith.negf %cst_45 : f32
        %264 = vector.broadcast %cst_45 : f32 to vector<6x8xf32>
        %265 = vector.fma %264, %114, %264 : vector<6x8xf32>
        %266 = math.absi %extracted_24 : i16
        %267 = bufferization.to_tensor %alloc_5 : memref<8xi32>
        %268 = index.ceildivs %c13, %126
        %269 = vector.create_mask %162 : vector<8xi1>
        %270 = math.log10 %188 : tensor<8xf16>
        vector.print %30 : vector<8xi1>
        %271 = arith.remui %c609405922_i64, %194 : i64
        %272 = math.log10 %188 : tensor<8xf16>
        %273 = math.round %cst_2 : f32
        %274 = arith.shli %217, %true_40 : i1
        %275 = arith.mulf %cst_3, %cst_3 : f32
      }
      %258 = math.sqrt %cst_0 : f16
      %expanded_54 = tensor.expand_shape %9 [[0, 1]] : tensor<8xi16> into tensor<8x1xi16>
      %259 = arith.minsi %c0_i64, %c609405922_i64 : i64
      memref.store %c1432919559_i32, %alloc_20[%c4, %c3, %c3] : memref<6x6x6xi32>
      scf.yield
    }
    default {
      %248 = arith.maxui %c31671818_i64, %194 : i64
      %alloca_51 = memref.alloca() : memref<6x6x6xi32>
      %249 = vector.broadcast %c1_i16 : i16 to vector<8xi16>
      %250 = vector.insert %249, %153 [1] : vector<8xi16> into vector<6x8xi16>
      %251 = arith.ceildivsi %extracted_24, %extracted_24 : i16
      %252 = math.atan %cst : f16
      %253 = arith.maxf %cst_1, %cst_3 : f32
      %254 = math.exp2 %from_elements : tensor<8xf32>
      %alloca_52 = memref.alloca() : memref<6x6x6xf16>
      %255 = tensor.empty() : tensor<8xi16>
      %mapped_53 = linalg.map ins(%9 : tensor<8xi16>) outs(%255 : tensor<8xi16>)
        (%in: i16) {
          %cast_54 = tensor.cast %2 : tensor<9x9xi16> to tensor<?x?xi16>
          %263 = math.ctlz %false : i1
          %264 = vector.broadcast %c809_i16 : i16 to vector<6x8xi16>
          %265 = arith.floordivsi %false, %false : i1
          %266 = affine.min affine_map<(d0) -> (d0 mod 2, -(d0 + 2), (d0 floordiv 4) mod 32 - d0)>(%c13)
          %267 = math.rsqrt %188 : tensor<8xf16>
          %from_elements_55 = tensor.from_elements %c31671818_i64, %c256786492_i64, %c609405922_i64, %c256786492_i64, %c609405922_i64, %c609405922_i64, %extracted, %c609405922_i64, %c609405922_i64, %c256786492_i64, %extracted, %c256786492_i64, %extracted, %c31671818_i64, %c256786492_i64, %c609405922_i64, %c609405922_i64, %c609405922_i64, %c256786492_i64, %194, %194, %194, %c256786492_i64, %194, %c256786492_i64, %c31671818_i64, %194, %c31671818_i64, %c31671818_i64, %extracted, %c31671818_i64, %c31671818_i64, %extracted, %c609405922_i64, %extracted, %c31671818_i64, %c609405922_i64, %c31671818_i64, %extracted, %c256786492_i64, %c256786492_i64, %extracted, %c31671818_i64, %c256786492_i64, %extracted, %extracted, %extracted, %c256786492_i64, %extracted, %194, %c256786492_i64, %c256786492_i64, %c31671818_i64, %c609405922_i64, %194, %c609405922_i64, %c256786492_i64, %194, %194, %extracted, %c609405922_i64, %194, %c256786492_i64, %c609405922_i64, %c256786492_i64, %c31671818_i64, %c609405922_i64, %c256786492_i64, %c256786492_i64, %194, %extracted, %c256786492_i64, %c609405922_i64, %extracted, %194, %extracted, %extracted, %c256786492_i64, %c31671818_i64, %194, %c31671818_i64 : tensor<9x9xi64>
          %268 = math.fpowi %8, %185 : tensor<6x6x6xf32>, tensor<6x6x6xi32>
          %269 = math.absi %17 : tensor<8xi16>
          %270 = math.roundeven %cst_1 : f32
          %271 = arith.muli %c72559683_i32, %c1432919559_i32 : i32
          %272 = vector.insert %44, %147 [5] : vector<9xi1> into vector<9x9xi1>
          %273 = arith.maxui %c2141809103_i32, %c2141809103_i32 : i32
          %274 = vector.gather %from_elements[%c0] [%28], %147, %216 : tensor<8xf32>, vector<9x9xi32>, vector<9x9xi1>, vector<9x9xf32> into vector<9x9xf32>
          %275 = affine.min affine_map<(d0, d1, d2) -> (d1)>(%266, %c0, %c9)
          %276 = arith.mulf %cst_4, %cst_45 : f32
          %splat = tensor.splat %cst_1 : tensor<9x9xf32>
          %277 = arith.ceildivsi %true, %false : i1
          %278 = arith.cmpf ogt, %cst_4, %cst_2 : f32
          %279 = math.powf %from_elements_33, %176 : tensor<9x9xf16>
          %expanded_56 = tensor.expand_shape %1 [[0, 1]] : tensor<8xi1> into tensor<8x1xi1>
          %expanded_57 = tensor.expand_shape %10 [[0], [1, 2]] : tensor<6x8xi16> into tensor<6x8x1xi16>
          %280 = math.copysign %cst_1, %cst_4 : f32
          %281 = math.atan %12 : tensor<6x6x6xf16>
          %282 = arith.minf %cst, %cst_0 : f16
          %283 = math.copysign %splat, %splat : tensor<9x9xf32>
          %284 = math.absf %5 : tensor<6x8xf32>
          %285 = vector.transpose %170, [2, 0, 1] : vector<6x6x6xi1> to vector<6x6x6xi1>
          affine.store %cst_2, %alloc_21[] : memref<f32>
          %286 = index.add %78, %193
          %287 = math.cttz %c31671818_i64 : i64
          %expanded_58 = tensor.expand_shape %expanded [[0], [1, 2]] : tensor<8x1xi1> into tensor<8x1x1xi1>
          %c1_i16_59 = arith.constant 1 : i16
          linalg.yield %c1_i16_59 : i16
        }
      %256 = vector.flat_transpose %157 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
      %257 = vector.extract %169[0] : vector<6x8xf16>
      %258 = math.absi %c1432919559_i32 : i32
      memref.copy %222, %alloc_10 : memref<9x9xi32> to memref<9x9xi32>
      %259 = scf.if %true -> (i32) {
        %splat = tensor.splat %extracted : tensor<6x8xi64>
        %263 = arith.muli %c72559683_i32, %c1432919559_i32 : i32
        memref.store %cst, %alloc_11[%c1, %c7] : memref<9x9xf16>
        %264 = math.log10 %cst_1 : f32
        %265 = arith.negf %cst : f16
        %266 = index.ceildivs %210, %c4
        %cast_54 = tensor.cast %1 : tensor<8xi1> to tensor<?xi1>
        %267 = arith.maxui %217, %true : i1
        scf.yield %c18588081_i32 : i32
      } else {
        %collapsed_54 = tensor.collapse_shape %6 [[0, 1]] : tensor<9x9xi16> into tensor<81xi16>
        %263 = arith.remf %cst_3, %cst_45 : f32
        %264 = index.ceildivu %196, %162
        %265 = math.ctpop %1 : tensor<8xi1>
        %266 = math.exp %7 : tensor<8xf32>
        %267 = arith.maxsi %c1432919559_i32, %c18588081_i32 : i32
        %268 = arith.remsi %c72559683_i32, %c2141809103_i32 : i32
        %269 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 + 128, d0 + (d1 * 2 + 128) ceildiv 4 - 16)>(%c5, %196, %162, %rank)
        scf.yield %c18588081_i32 : i32
      }
      %260 = arith.shli %c2141809103_i32, %c72559683_i32 : i32
      %261 = vector.broadcast %cst_4 : f32 to vector<9x9xf32>
      %262 = vector.fma %261, %140, %140 : vector<9x9xf32>
    }
    %232 = affine.load %alloc_21[] : memref<f32>
    %cst_46 = arith.constant 1.000000e+00 : f32
    %233 = vector.transfer_read %8[%c8, %c11, %166], %cst_46 : tensor<6x6x6xf32>, vector<6x6xf32>
    %alloca_47 = memref.alloca() : memref<9x9xi1>
    %rank_48 = tensor.rank %187 : tensor<8xi16>
    %234 = arith.remf %232, %cst_2 : f32
    %235 = math.exp2 %5 : tensor<6x8xf32>
    %236 = arith.maxf %cst_46, %232 : f32
    %cast_49 = tensor.cast %21 : tensor<i64> to tensor<i64>
    %237 = arith.shli %194, %c256786492_i64 : i64
    %238 = arith.shrsi %c809_i16, %c12921_i16 : i16
    %239 = index.ceildivs %193, %c1
    %240 = arith.muli %c256786492_i64, %extracted : i64
    %241 = index.sub %c7, %c7
    %242 = tensor.empty() : tensor<6x6x6xf16>
    %243 = linalg.copy ins(%12 : tensor<6x6x6xf16>) outs(%242 : tensor<6x6x6xf16>) -> tensor<6x6x6xf16>
    %alloc_50 = memref.alloc(%c7, %210) : memref<?x?xf16>
    linalg.transpose ins(%generated_27 : tensor<?x?xf16>) outs(%alloc_50 : memref<?x?xf16>) permutation = [1, 0] 
    %244 = tensor.empty() : tensor<6x6xi16>
    %reduced = linalg.reduce ins(%11 : tensor<6x6x6xi16>) outs(%244 : tensor<6x6xi16>) dimensions = [2] 
      (%in: i16, %init: i16) {
        %248 = scf.execute_region -> tensor<6x8xi1> {
          %255 = math.ctpop %9 : tensor<8xi16>
          %alloc_53 = memref.alloc() : memref<8xf32>
          memref.tensor_store %7, %alloc_53 : memref<8xf32>
          %256 = vector.maskedload %alloc_17[%c2, %c5], %125, %157 : memref<9x9xf32>, vector<8xi1>, vector<8xf32> into vector<8xf32>
          %257 = vector.extract_strided_slice %44 {offsets = [1], sizes = [7], strides = [1]} : vector<9xi1> to vector<7xi1>
          %258 = affine.max affine_map<(d0, d1, d2, d3) -> (0, (d2 + 3) * 32, d0 - 16, 0)>(%c7, %c3, %rank_48, %c2)
          %259 = index.divu %34, %193
          memref.assume_alignment %165, 8 : memref<6x6x6xf32>
          %260 = math.ctpop %14 : tensor<8xi16>
          %261 = math.log10 %5 : tensor<6x8xf32>
          %262 = math.atan2 %cst_46, %cst_1 : f32
          memref.copy %alloc_7, %alloc_11 : memref<9x9xf16> to memref<9x9xf16>
          %263 = vector.shuffle %125, %125 [1, 2, 3, 4, 5, 6, 7, 10, 13, 14] : vector<8xi1>, vector<8xi1>
          %264 = arith.subi %194, %extracted : i64
          %265 = arith.mulf %cst_3, %cst_1 : f32
          memref.store %c72559683_i32, %alloc_10[%c2, %c4] : memref<9x9xi32>
          %266 = math.absf %cst_0 : f16
          %267 = tensor.empty() : tensor<6x8xi1>
          scf.yield %267 : tensor<6x8xi1>
        }
        %249 = arith.subi %c72559683_i32, %c18588081_i32 : i32
        %250 = math.absf %12 : tensor<6x6x6xf16>
        %251 = math.cttz %16 : tensor<8xi16>
        %from_elements_51 = tensor.from_elements %c12921_i16, %c809_i16, %c1_i16, %init, %init, %in, %c12921_i16, %c809_i16 : tensor<8xi16>
        %252 = math.tanh %from_elements_33 : tensor<9x9xf16>
        %253 = vector.broadcast %in : i16 to vector<i16>
        %254 = vector.transfer_write %253, %16[%196] : vector<i16>, tensor<8xi16>
        vector.print %151 : vector<6x8xi16>
        %c0_i16_52 = arith.constant 0 : i16
        linalg.yield %c0_i16_52 : i16
      }
    %245 = scf.parallel (%arg1, %arg2) = (%241, %43) to (%193, %78) step (%c9, %c5) init (%96) -> tensor<6x8xi64> {
      %248 = vector.load %alloc_17[%c5, %c3] : memref<9x9xf32>, vector<9x9xf32>
      %from_elements_51 = tensor.from_elements %c256786492_i64, %extracted, %194, %c256786492_i64, %extracted, %194, %extracted, %194 : tensor<8xi64>
      %249 = math.exp2 %from_elements : tensor<8xf32>
      %250 = arith.remf %232, %cst_2 : f32
      %251 = bufferization.to_memref %reduced : memref<6x6xi16>
      memref.assume_alignment %142, 8 : memref<8xi16>
      %252 = arith.remui %c72559683_i32, %c18588081_i32 : i32
      %253 = index.sub %c15, %196
      %254 = arith.negf %cst_46 : f32
      %255 = math.powf %from_elements, %from_elements : tensor<8xf32>
      %256 = math.atan2 %232, %cst_1 : f32
      %257 = scf.if %true -> (memref<6x8xf16>) {
        %262 = index.divu %56, %43
        %263 = vector.extract %92[1] : vector<6x8xi64>
        %rank_53 = tensor.rank %generated_27 : tensor<?x?xf16>
        %264 = vector.load %alloc_15[%c0] : memref<8xi1>, vector<6x8xi1>
        %265 = math.rsqrt %from_elements : tensor<8xf32>
        %266 = index.ceildivu %78, %c5
        %alloc_54 = memref.alloc() : memref<6x6xi16>
        memref.copy %251, %alloc_54 : memref<6x6xi16> to memref<6x6xi16>
        %267 = bufferization.to_memref %5 : memref<6x8xf32>
        %alloc_55 = memref.alloc() : memref<6x8xf16>
        scf.yield %alloc_55 : memref<6x8xf16>
      } else {
        %262 = math.ctpop %c809_i16 : i16
        %263 = affine.min affine_map<(d0, d1) -> (d1 - 8, (d1 floordiv 2) * 2, d0 + d1 + 8 - 124, d0 + d1 + 8 - 124)>(%241, %177)
        %264 = index.ceildivs %c1, %253
        %collapsed_53 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<6x6x6xf32> into tensor<36x6xf32>
        %265 = arith.divui %194, %extracted : i64
        %266 = math.log2 %from_elements : tensor<8xf32>
        %267 = arith.maxf %cst_45, %cst_46 : f32
        %268 = vector.extract_strided_slice %248 {offsets = [0], sizes = [4], strides = [1]} : vector<9x9xf32> to vector<4x9xf32>
        %alloc_54 = memref.alloc() : memref<6x8xf16>
        scf.yield %alloc_54 : memref<6x8xf16>
      }
      %expanded_52 = tensor.expand_shape %14 [[0, 1]] : tensor<8xi16> into tensor<8x1xi16>
      %258 = arith.subi %194, %194 : i64
      %259 = math.absi %20 : tensor<i64>
      %260 = math.expm1 %cst : f16
      %261 = tensor.empty() : tensor<6x8xi64>
      scf.reduce(%261)  : tensor<6x8xi64> {
      ^bb0(%arg3: tensor<6x8xi64>, %arg4: tensor<6x8xi64>):
        %262 = arith.muli %c12921_i16, %c809_i16 : i16
        %263 = vector.transpose %125, [0] : vector<8xi1> to vector<8xi1>
        %264 = math.ctpop %false_35 : i1
        %265 = vector.create_mask %c6 : vector<8xi1>
        %266 = arith.ceildivsi %c256786492_i64, %c256786492_i64 : i64
        %267 = vector.bitcast %98 : vector<9xf16> to vector<9xf16>
        %268 = index.castu %166 : index to i32
        %269 = arith.shrui %c809_i16, %c809_i16 : i16
        %270 = tensor.empty() : tensor<6x8xi64>
        scf.reduce.return %270 : tensor<6x8xi64>
      }
      scf.yield
    }
    %246 = affine.vector_load %alloc_13[%162] : memref<8xi16>, vector<6xi16>
    affine.vector_store %30, %alloc_15[%c10] : memref<8xi1>, vector<8xi1>
    vector.print %19 : vector<9xf16>
    vector.print %22 : vector<9x9xi64>
    vector.print %27 : vector<9x9xi1>
    vector.print %28 : vector<9x9xi32>
    vector.print %29 : vector<9x9xi64>
    vector.print %30 : vector<8xi1>
    vector.print %31 : vector<9xi32>
    vector.print %35 : vector<6x6x6xi1>
    vector.print %39 : vector<9x9xi32>
    vector.print %44 : vector<9xi1>
    vector.print %73 : vector<6x6x6xi1>
    vector.print %92 : vector<6x8xi64>
    vector.print %97 : vector<i16>
    vector.print %98 : vector<9xf16>
    vector.print %103 : vector<6x6xi1>
    vector.print %113 : vector<6x8xf32>
    vector.print %114 : vector<6x8xf32>
    vector.print %116 : vector<6x6x6xf32>
    vector.print %117 : vector<6x6x6xf32>
    vector.print %125 : vector<8xi1>
    vector.print %132 : vector<8xi1>
    vector.print %140 : vector<9x9xf32>
    vector.print %146 : vector<6x8xi32>
    vector.print %147 : vector<9x9xi1>
    vector.print %151 : vector<6x8xi16>
    vector.print %152 : vector<6x8xi1>
    vector.print %153 : vector<6x8xi16>
    vector.print %157 : vector<8xf32>
    vector.print %158 : vector<8xi32>
    vector.print %159 : vector<8xf32>
    vector.print %160 : vector<8xi1>
    vector.print %167 : vector<6x8xi16>
    vector.print %169 : vector<6x8xf16>
    vector.print %170 : vector<6x6x6xi1>
    vector.print %173 : vector<6x6x6xf32>
    vector.print %174 : vector<6x6x6xf32>
    vector.print %181 : vector<8xf16>
    vector.print %215 : vector<9x9xf32>
    vector.print %216 : vector<9x9xf32>
    vector.print %246 : vector<6xi16>
    vector.print %c2141809103_i32 : i32
    vector.print %false : i1
    vector.print %cst : f16
    vector.print %c31671818_i64 : i64
    vector.print %c12921_i16 : i16
    vector.print %c18588081_i32 : i32
    vector.print %c1432919559_i32 : i32
    vector.print %c609405922_i64 : i64
    vector.print %cst_0 : f16
    vector.print %cst_1 : f32
    vector.print %cst_2 : f32
    vector.print %c809_i16 : i16
    vector.print %c72559683_i32 : i32
    vector.print %c256786492_i64 : i64
    vector.print %cst_3 : f32
    vector.print %cst_4 : f32
    vector.print %extracted : i64
    vector.print %c1_i16 : i16
    vector.print %true : i1
    vector.print %extracted_24 : i16
    vector.print %false_35 : i1
    vector.print %194 : i64
    vector.print %true_40 : i1
    vector.print %217 : i1
    vector.print %cst_45 : f32
    vector.print %232 : f32
    vector.print %cst_46 : f32
    %247 = vector.broadcast %cst : f16 to vector<9x9xf16>
    return %247 : vector<9x9xf16>
  }
}
