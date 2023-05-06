module {
  func.func @func1(%arg0: index) -> index {
    %c-23908_i16 = arith.constant -23908 : i16
    %cst = arith.constant 3.430400e+04 : f16
    %c15044_i16 = arith.constant 15044 : i16
    %cst_0 = arith.constant 0x4E21F2DF : f32
    %c661411533_i32 = arith.constant 661411533 : i32
    %cst_1 = arith.constant 0x4DDA5159 : f32
    %cst_2 = arith.constant 4.729600e+04 : f16
    %c289678454_i64 = arith.constant 289678454 : i64
    %cst_3 = arith.constant 4.992000e+04 : f16
    %cst_4 = arith.constant 1.81893235E+9 : f32
    %c1434678407_i32 = arith.constant 1434678407 : i32
    %c443491996_i32 = arith.constant 443491996 : i32
    %c291508864_i32 = arith.constant 291508864 : i32
    %c1171249303_i64 = arith.constant 1171249303 : i64
    %cst_5 = arith.constant 0x4E1B3756 : f32
    %c401404571_i32 = arith.constant 401404571 : i32
    %0 = tensor.empty() : tensor<16x16xf32>
    %1 = tensor.empty() : tensor<9xi32>
    %2 = tensor.empty() : tensor<16x16xi1>
    %3 = tensor.empty() : tensor<9xi64>
    %4 = tensor.empty() : tensor<3xf32>
    %5 = tensor.empty() : tensor<9xi16>
    %6 = tensor.empty() : tensor<16x16xi1>
    %7 = tensor.empty() : tensor<16x16xf32>
    %8 = tensor.empty() : tensor<9xi1>
    %9 = tensor.empty() : tensor<16x16xi32>
    %10 = tensor.empty() : tensor<9xi1>
    %11 = tensor.empty() : tensor<16x16xi16>
    %12 = tensor.empty() : tensor<3xi64>
    %13 = tensor.empty() : tensor<9xi1>
    %14 = tensor.empty() : tensor<16x16xi64>
    %15 = tensor.empty() : tensor<3xi32>
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
    %alloc = memref.alloc() : memref<9xi32>
    %alloc_6 = memref.alloc() : memref<16x16xf16>
    %alloc_7 = memref.alloc() : memref<3xf32>
    %alloc_8 = memref.alloc() : memref<16x16xf16>
    %alloc_9 = memref.alloc() : memref<3xf16>
    %alloc_10 = memref.alloc() : memref<3xf32>
    %alloc_11 = memref.alloc() : memref<9xf16>
    %alloc_12 = memref.alloc() : memref<16x16xi1>
    %alloc_13 = memref.alloc() : memref<3xf32>
    %alloc_14 = memref.alloc() : memref<9xi32>
    %alloc_15 = memref.alloc() : memref<9xi64>
    %alloc_16 = memref.alloc() : memref<9xi1>
    %alloc_17 = memref.alloc() : memref<16x16xf16>
    %alloc_18 = memref.alloc() : memref<9xf16>
    %alloc_19 = memref.alloc() : memref<16x16xf32>
    %alloc_20 = memref.alloc() : memref<3xf32>
    %16 = tensor.empty() : tensor<9xi1>
    %17 = linalg.copy ins(%13 : tensor<9xi1>) outs(%16 : tensor<9xi1>) -> tensor<9xi1>
    %alloc_21 = memref.alloc() : memref<9xi64>
    linalg.transpose ins(%alloc_15 : memref<9xi64>) outs(%alloc_21 : memref<9xi64>) permutation = [0] 
    %alloc_22 = memref.alloc() : memref<i64>
    linalg.reduce ins(%12 : tensor<3xi64>) outs(%alloc_22 : memref<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %251 = affine.max affine_map<(d0, d1) -> ((d0 + 4) * 32 - 64, d0 mod 4)>(%c3, %c8)
        %true_44 = index.bool.constant true
        memref.store %c1434678407_i32, %alloc_14[%c5] : memref<9xi32>
        %252 = vector.broadcast %cst_1 : f32 to vector<3xf32>
        %253 = vector.broadcast %cst_5 : f32 to vector<3x3xf32>
        %254 = vector.outerproduct %252, %252, %253 {kind = #vector.kind<add>} : vector<3xf32>, vector<3xf32>
        %255 = arith.floordivsi %c-23908_i16, %c15044_i16 : i16
        %256 = arith.divsi %init, %c1171249303_i64 : i64
        memref.store %c289678454_i64, %alloc_22[] : memref<i64>
        %257 = vector.broadcast %c-23908_i16 : i16 to vector<1xi16>
        %258 = vector.insert %c-23908_i16, %257 [0] : i16 into vector<1xi16>
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %18 = scf.parallel (%arg1, %arg2) = (%c6, %c8) to (%c14, %c1) step (%c3, %c7) init (%1) -> tensor<9xi32> {
      %251 = affine.max affine_map<(d0, d1, d2) -> (d0 + 1, d0 mod 4, 0)>(%arg1, %c5, %c8)
      %252 = arith.subi %c1171249303_i64, %c1171249303_i64 : i64
      %253 = math.exp2 %cst : f16
      %254 = arith.addf %cst_1, %cst_0 : f32
      %extracted_44 = tensor.extract %10[%c1] : tensor<9xi1>
      %255 = bufferization.to_tensor %alloc_17 : memref<16x16xf16>
      %256 = math.log %7 : tensor<16x16xf32>
      %inserted = tensor.insert %extracted_44 into %6[%c10, %c7] : tensor<16x16xi1>
      bufferization.dealloc_tensor %13 : tensor<9xi1>
      %257 = math.log1p %4 : tensor<3xf32>
      %258 = affine.apply affine_map<(d0, d1) -> (d1 floordiv 4 - 128)>(%c9, %c12)
      %259 = math.ipowi %5, %5 : tensor<9xi16>
      %260 = math.ctpop %8 : tensor<9xi1>
      %261 = arith.shli %c401404571_i32, %c443491996_i32 : i32
      %262 = vector.broadcast %c-23908_i16 : i16 to vector<9xi16>
      %263 = vector.broadcast %extracted_44 : i1 to vector<9xi1>
      %264 = vector.broadcast %c401404571_i32 : i32 to vector<9xi32>
      %265 = vector.gather %5[%c10] [%264], %263, %262 : tensor<9xi16>, vector<9xi32>, vector<9xi1>, vector<9xi16> into vector<9xi16>
      affine.store %cst_3, %alloc_11[%c8] : memref<9xf16>
      %266 = tensor.empty() : tensor<9xi32>
      scf.reduce(%266)  : tensor<9xi32> {
      ^bb0(%arg3: tensor<9xi32>, %arg4: tensor<9xi32>):
        %267 = affine.min affine_map<(d0, d1, d2, d3) -> (d0, d0, d2 * 4)>(%c4, %258, %c1, %c6)
        %268 = arith.andi %extracted_44, %extracted_44 : i1
        %269 = arith.xori %c1171249303_i64, %c289678454_i64 : i64
        %270 = arith.cmpi eq, %c1434678407_i32, %c443491996_i32 : i32
        %271 = index.ceildivu %c8, %c7
        %272 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * 16, (d0 * 16 - d3) * 8, d0 * 16 - d3, d0 * 16 - d3 - d0 * 16)>(%c3, %267, %c4, %c10)
        %273 = vector.shuffle %264, %264 [0, 1, 2, 3, 7, 9, 10, 11, 12, 13, 14, 16, 17] : vector<9xi32>, vector<9xi32>
        %274 = bufferization.to_memref %11 : memref<16x16xi16>
        %275 = tensor.empty() : tensor<9xi32>
        scf.reduce.return %275 : tensor<9xi32>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_9[%c6] : memref<3xf16>, vector<16xf16>
    affine.vector_store %19, %alloc_17[%c10, %c2] : memref<16x16xf16>, vector<16xf16>
    %20 = tensor.empty() : tensor<3xf32>
    %21 = tensor.empty() : tensor<f32>
    %22 = linalg.dot ins(%alloc_10, %20 : memref<3xf32>, tensor<3xf32>) outs(%21 : tensor<f32>) -> tensor<f32>
    %23 = index.add %c6, %c10
    %24 = arith.minf %cst_1, %cst_5 : f32
    %25 = arith.minui %c401404571_i32, %c401404571_i32 : i32
    %26 = math.log2 %cst_4 : f32
    %27 = math.tan %cst_0 : f32
    %28 = arith.addi %c291508864_i32, %c661411533_i32 : i32
    %29 = math.powf %4, %4 : tensor<3xf32>
    %30 = math.fpowi %cst_5, %c1434678407_i32 : f32, i32
    %31 = arith.xori %c401404571_i32, %c661411533_i32 : i32
    %32 = index.sizeof
    %33 = vector.bitcast %19 : vector<16xf16> to vector<16xf16>
    %34 = math.ipowi %2, %6 : tensor<16x16xi1>
    %35 = math.rsqrt %cst : f16
    %c1961966990_i32 = arith.constant 1961966990 : i32
    %36 = arith.shrsi %c401404571_i32, %c661411533_i32 : i32
    %37 = math.absf %cst : f16
    %38 = math.ceil %22 : tensor<f32>
    %39 = affine.if affine_set<(d0, d1, d2, d3) : ((d3 * -4) ceildiv 8 >= 0)>(%c10, %c1, %c10, %c13) -> memref<16x16xi64> {
      %251 = vector.multi_reduction <maxf>, %19, %cst_3 [0] : vector<16xf16> to f16
      %cst_44 = arith.constant 1.000000e+00 : f32
      %252 = vector.transfer_read %0[%c7, %c1], %cst_44 : tensor<16x16xf32>, vector<f32>
      %253 = index.divu %c8, %c14
      %254 = index.ceildivu %c9, %23
      %inserted = tensor.insert %c401404571_i32 into %15[%c2] : tensor<3xi32>
      %255 = math.sqrt %cst_44 : f32
      %false_45 = arith.constant false
      %256 = vector.bitcast %33 : vector<16xf16> to vector<16xf16>
      %alloc_46 = memref.alloc() : memref<16x16xi64>
      affine.yield %alloc_46 : memref<16x16xi64>
    } else {
      %251 = vector.multi_reduction <maxf>, %19, %19 [] : vector<16xf16> to vector<16xf16>
      %252 = math.ipowi %c289678454_i64, %c289678454_i64 : i64
      %253 = arith.divui %c15044_i16, %c15044_i16 : i16
      %extracted_44 = tensor.extract %0[%c6, %c6] : tensor<16x16xf32>
      %254 = math.expm1 %4 : tensor<3xf32>
      %255 = bufferization.clone %alloc_20 : memref<3xf32> to memref<3xf32>
      %256 = math.rsqrt %0 : tensor<16x16xf32>
      %inserted = tensor.insert %cst_0 into %0[%c1, %c3] : tensor<16x16xf32>
      %alloc_45 = memref.alloc() : memref<16x16xi64>
      affine.yield %alloc_45 : memref<16x16xi64>
    }
    %40 = arith.remsi %c1434678407_i32, %c1434678407_i32 : i32
    %41 = vector.load %alloc_6[%c12, %c4] : memref<16x16xf16>, vector<9xf16>
    %true = index.bool.constant true
    %42 = affine.min affine_map<(d0) -> (d0 + 2)>(%c11)
    %43 = math.exp %cst : f16
    %true_23 = index.bool.constant true
    %collapsed = tensor.collapse_shape %14 [[0, 1]] : tensor<16x16xi64> into tensor<256xi64>
    %44 = math.tanh %7 : tensor<16x16xf32>
    %45 = arith.muli %c401404571_i32, %c443491996_i32 : i32
    %46 = arith.maxui %c-23908_i16, %c15044_i16 : i16
    %47 = arith.divui %c-23908_i16, %c-23908_i16 : i16
    %true_24 = index.bool.constant true
    %48 = math.ipowi %true, %true : i1
    %49 = math.exp2 %cst : f16
    %50 = vector.broadcast %c1434678407_i32 : i32 to vector<9xi32>
    %51 = vector.broadcast %true : i1 to vector<9xi1>
    %52 = vector.gather %1[%42] [%50], %51, %50 : tensor<9xi32>, vector<9xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
    %53 = math.rsqrt %0 : tensor<16x16xf32>
    bufferization.dealloc_tensor %5 : tensor<9xi16>
    %54 = arith.andi %true_24, %true_24 : i1
    %55 = tensor.empty() : tensor<9xf32>
    %56 = math.exp %4 : tensor<3xf32>
    %57 = index.maxu %c14, %c0
    %58 = arith.divsi %true_23, %true_24 : i1
    %59 = index.add %c10, %c5
    %60 = arith.floordivsi %true_24, %true_23 : i1
    %61 = memref.load %alloc_19[%c9, %c1] : memref<16x16xf32>
    %62 = math.rsqrt %cst_5 : f32
    %63 = affine.min affine_map<(d0) -> (d0 - 6, d0 floordiv 2 - 2, d0, d0 * 2)>(%c0)
    %64 = affine.min affine_map<(d0, d1) -> (d1 - 32, d0 mod 64, ((d0 + 64) * 32 - ((d0 + 64) * 32 - 2)) ceildiv 8, d0 - 2)>(%c5, %c11)
    %65 = memref.realloc %alloc_21 : memref<9xi64> to memref<9xi64>
    %from_elements = tensor.from_elements %cst_1, %cst_1, %cst_0, %cst_0, %cst_4, %cst_5, %cst_0, %cst_0, %cst_4 : tensor<9xf32>
    %66 = memref.atomic_rmw maxs %c289678454_i64, %alloc_15[%c2] : (i64, memref<9xi64>) -> i64
    %from_elements_25 = tensor.from_elements %c-23908_i16, %c15044_i16, %c-23908_i16, %c15044_i16, %c15044_i16, %c-23908_i16, %c15044_i16, %c15044_i16, %c-23908_i16 : tensor<9xi16>
    %67 = arith.divsi %c291508864_i32, %c291508864_i32 : i32
    affine.store %cst, %alloc_18[%c6] : memref<9xf16>
    %c309572001_i32 = arith.constant 309572001 : i32
    %68 = arith.cmpf une, %cst_3, %cst_2 : f16
    %69 = affine.load %alloc_21[%c11] : memref<9xi64>
    %collapsed_26 = tensor.collapse_shape %9 [[0, 1]] : tensor<16x16xi32> into tensor<256xi32>
    %70 = vector.extract %41[4] : vector<9xf16>
    %71 = arith.floordivsi %c443491996_i32, %c661411533_i32 : i32
    %72 = arith.divui %true_24, %true_23 : i1
    %73 = arith.shli %true_24, %true_23 : i1
    %74 = arith.shli %69, %c289678454_i64 : i64
    %75 = arith.shli %c289678454_i64, %c1171249303_i64 : i64
    %extracted = tensor.extract %1[%c7] : tensor<9xi32>
    %76 = index.floordivs %23, %c4
    %from_elements_27 = tensor.from_elements %c15044_i16, %c15044_i16, %c-23908_i16, %c15044_i16, %c15044_i16, %c15044_i16, %c-23908_i16, %c-23908_i16, %c15044_i16 : tensor<9xi16>
    %77 = math.round %cst_3 : f16
    %78 = vector.bitcast %51 : vector<9xi1> to vector<9xi1>
    %79 = arith.ori %true_23, %true : i1
    %80 = math.log1p %cst_5 : f32
    %81 = arith.cmpi sge, %c-23908_i16, %c15044_i16 : i16
    %82 = arith.remf %cst_0, %cst_4 : f32
    scf.index_switch %c0 
    case 1 {
      %251 = vector.reduction <minf>, %19 : vector<16xf16> into f16
      %252 = math.round %20 : tensor<3xf32>
      %253 = arith.floordivsi %c443491996_i32, %c401404571_i32 : i32
      %254 = vector.multi_reduction <maxui>, %51, %51 [] : vector<9xi1> to vector<9xi1>
      affine.store %c661411533_i32, %alloc[%c5] : memref<9xi32>
      %255 = math.round %from_elements : tensor<9xf32>
      %256 = math.rsqrt %7 : tensor<16x16xf32>
      %257 = scf.index_switch %c5 -> memref<3xi16> 
      case 1 {
        %265 = arith.subi %true_24, %true : i1
        %266 = vector.reduction <minsi>, %50 : vector<9xi32> into i32
        %267 = vector.shuffle %51, %78 [2, 3, 4, 8, 9, 10, 13, 15, 16] : vector<9xi1>, vector<9xi1>
        %268 = arith.muli %c-23908_i16, %c15044_i16 : i16
        %269 = math.tan %0 : tensor<16x16xf32>
        %270 = index.ceildivu %c11, %32
        %271 = arith.minsi %true_23, %true : i1
        %272 = math.rsqrt %from_elements : tensor<9xf32>
        %273 = math.exp2 %4 : tensor<3xf32>
        %274 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %33, %19, %cst : vector<16xf16>, vector<16xf16> into f16
        %275 = memref.load %alloc_12[%c9, %c8] : memref<16x16xi1>
        %276 = vector.extract %51[1] : vector<9xi1>
        %277 = math.powf %22, %21 : tensor<f32>
        %from_elements_45 = tensor.from_elements %cst, %cst, %cst_2, %cst, %cst, %cst, %cst_2, %cst_2, %cst, %cst_3, %cst_2, %cst_3, %cst_3, %cst_2, %cst_3, %cst_3, %cst_2, %cst, %cst_3, %cst_2, %cst_3, %cst, %cst, %cst_3, %cst, %cst_2, %cst_2, %cst_3, %cst_2, %cst, %cst_3, %cst_3, %cst_3, %cst_2, %cst_3, %cst_2, %cst_3, %cst, %cst, %cst_2, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst, %cst_3, %cst, %cst_2, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_3, %cst_3, %cst_2, %cst_2, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst_2, %cst, %cst_3, %cst_3, %cst_3, %cst_2, %cst_3, %cst_3, %cst_3, %cst, %cst_2, %cst, %cst, %cst_3, %cst_2, %cst_3, %cst_3, %cst_2, %cst, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst, %cst_3, %cst_3, %cst_3, %cst_2, %cst, %cst, %cst_2, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst_3, %cst_2, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_2, %cst_3, %cst_2, %cst, %cst_2, %cst_3, %cst, %cst, %cst, %cst_2, %cst, %cst_3, %cst_3, %cst, %cst_2, %cst, %cst, %cst_2, %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst, %cst, %cst_3, %cst_3, %cst, %cst_2, %cst_2, %cst, %cst_3, %cst_3, %cst_2, %cst_3, %cst, %cst, %cst_2, %cst_3, %cst_3, %cst_2, %cst_3, %cst, %cst_3, %cst_2, %cst, %cst, %cst_3, %cst, %cst_2, %cst_3, %cst_3, %cst, %cst_2, %cst_3, %cst_2, %cst, %cst, %cst_3, %cst_3, %cst_2, %cst_2, %cst_3, %cst_2, %cst_3, %cst_3, %cst, %cst_3, %cst_3, %cst_2, %cst, %cst_3, %cst_2, %cst_3, %cst_3, %cst, %cst, %cst_2, %cst, %cst, %cst_3, %cst_2, %cst_2, %cst, %cst, %cst, %cst, %cst_2, %cst_2, %cst, %cst, %cst, %cst_2, %cst, %cst_3, %cst_3, %cst_3, %cst_2, %cst_2, %cst, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_3, %cst_3, %cst_3, %cst_2, %cst_3, %cst, %cst_3, %cst, %cst_2, %cst_3, %cst_3, %cst_2, %cst, %cst_3, %cst, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_3, %cst, %cst, %cst, %cst_3, %cst, %cst_3, %cst_3, %cst_2, %cst, %cst_2, %cst_2, %cst_3, %cst, %cst_2, %cst_2 : tensor<16x16xf16>
        %278 = arith.minui %true_23, %true : i1
        %279 = math.atan %cst_0 : f32
        %alloc_46 = memref.alloc() : memref<3xi16>
        scf.yield %alloc_46 : memref<3xi16>
      }
      case 2 {
        %c0_i16 = arith.constant 0 : i16
        %265 = vector.transfer_read %from_elements_27[%c12], %c0_i16 : tensor<9xi16>, vector<i16>
        %266 = math.round %cst_0 : f32
        %267 = arith.ceildivsi %c15044_i16, %c15044_i16 : i16
        %268 = arith.minf %cst_5, %cst_0 : f32
        %269 = arith.remf %cst, %cst_3 : f16
        %270 = arith.minf %cst_2, %cst : f16
        %271 = arith.divf %cst_4, %cst_4 : f32
        %272 = math.exp2 %55 : tensor<9xf32>
        affine.store %cst_3, %alloc_9[%c4] : memref<3xf16>
        memref.store %cst, %alloc_6[%c8, %c15] : memref<16x16xf16>
        %273 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c12, %42, %c1, %c10)
        %274 = vector.bitcast %41 : vector<9xf16> to vector<9xf16>
        %275 = arith.shli %true, %true_23 : i1
        %extracted_45 = tensor.extract %8[%c4] : tensor<9xi1>
        %276 = math.powf %22, %21 : tensor<f32>
        %277 = memref.realloc %alloc_7 : memref<3xf32> to memref<16xf32>
        %alloc_46 = memref.alloc() : memref<3xi16>
        scf.yield %alloc_46 : memref<3xi16>
      }
      case 3 {
        %inserted = tensor.insert %true into %16[%c1] : tensor<9xi1>
        %265 = memref.realloc %alloc_11 : memref<9xf16> to memref<3xf16>
        %266 = math.copysign %cst_3, %cst_3 : f16
        %from_elements_45 = tensor.from_elements %cst_5, %cst_0, %cst_4, %cst_4, %cst_5, %cst_1, %cst_0, %cst_4, %cst_0 : tensor<9xf32>
        %267 = math.atan %7 : tensor<16x16xf32>
        %268 = bufferization.clone %alloc_17 : memref<16x16xf16> to memref<16x16xf16>
        %269 = bufferization.clone %alloc_8 : memref<16x16xf16> to memref<16x16xf16>
        %from_elements_46 = tensor.from_elements %c291508864_i32, %c401404571_i32, %c1434678407_i32, %c291508864_i32, %c443491996_i32, %c443491996_i32, %c1434678407_i32, %c661411533_i32, %c291508864_i32 : tensor<9xi32>
        %270 = math.ipowi %15, %15 : tensor<3xi32>
        %271 = arith.divui %true_23, %true_23 : i1
        %272 = math.round %cst : f16
        affine.store %cst_2, %alloc_11[%c4] : memref<9xf16>
        %273 = memref.load %alloc_12[%c2, %c0] : memref<16x16xi1>
        %274 = math.atan %cst_0 : f32
        %cst_47 = arith.constant 2.10724774E+9 : f32
        %275 = arith.cmpi uge, %extracted, %c401404571_i32 : i32
        %alloc_48 = memref.alloc() : memref<3xi16>
        scf.yield %alloc_48 : memref<3xi16>
      }
      case 4 {
        %265 = arith.cmpf ole, %cst_2, %cst_3 : f16
        %266 = arith.cmpf uno, %cst_3, %cst_3 : f16
        %267 = arith.maxsi %c291508864_i32, %extracted : i32
        memref.assume_alignment %alloc_18, 16 : memref<9xf16>
        %268 = math.ipowi %from_elements_25, %from_elements_25 : tensor<9xi16>
        %269 = math.tan %from_elements : tensor<9xf32>
        memref.assume_alignment %alloc_15, 1 : memref<9xi64>
        %270 = vector.reduction <maxsi>, %52 : vector<9xi32> into i32
        %271 = bufferization.to_memref %10 : memref<9xi1>
        %272 = tensor.empty() : tensor<16x16xf32>
        %273 = vector.shuffle %33, %33 [0, 5, 6, 7, 9, 10, 13, 14, 15, 16, 17, 18, 19, 20, 23, 27, 28, 29, 30] : vector<16xf16>, vector<16xf16>
        %274 = arith.divf %cst_4, %cst_0 : f32
        %275 = arith.maxf %cst_2, %cst_2 : f16
        %276 = math.log10 %cst_0 : f32
        memref.copy %alloc_13, %alloc_7 : memref<3xf32> to memref<3xf32>
        %277 = index.casts %c661411533_i32 : i32 to index
        %alloc_45 = memref.alloc() : memref<3xi16>
        scf.yield %alloc_45 : memref<3xi16>
      }
      default {
        %false_45 = arith.constant false
        %265 = vector.transfer_read %6[%c0, %c9], %false_45 : tensor<16x16xi1>, vector<3xi1>
        %266 = index.ceildivs %c2, %c8
        %alloc_46 = memref.alloc() : memref<9xf32>
        memref.tensor_store %from_elements, %alloc_46 : memref<9xf32>
        affine.store %cst_4, %alloc_10[%c10] : memref<3xf32>
        %267 = arith.divsi %c291508864_i32, %c401404571_i32 : i32
        %false_47 = index.bool.constant false
        memref.store %c1171249303_i64, %alloc_21[%c6] : memref<9xi64>
        %cst_48 = arith.constant 1.000000e+00 : f32
        %268 = vector.transfer_read %0[%c15, %c10], %cst_48 : tensor<16x16xf32>, vector<f32>
        %269 = affine.load %alloc_15[%c12] : memref<9xi64>
        %c0_i16 = arith.constant 0 : i16
        %270 = vector.transfer_read %11[%c13, %266], %c0_i16 : tensor<16x16xi16>, vector<9xi16>
        %271 = vector.broadcast %69 : i64 to vector<9xi64>
        %272 = vector.gather %alloc_21[%266] [%50], %51, %271 : memref<9xi64>, vector<9xi32>, vector<9xi1>, vector<9xi64> into vector<9xi64>
        %273 = vector.broadcast %cst_1 : f32 to vector<9xf32>
        %274 = vector.fma %273, %273, %273 : vector<9xf32>
        %275 = index.ceildivu %c14, %c13
        %276 = index.ceildivu %c6, %c10
        %277 = math.log2 %cst_3 : f16
        %278 = vector.reduction <mul>, %274 : vector<9xf32> into f32
        %alloc_49 = memref.alloc() : memref<3xi16>
        scf.yield %alloc_49 : memref<3xi16>
      }
      %258 = arith.shrsi %c443491996_i32, %c401404571_i32 : i32
      %259 = arith.minui %true_23, %true_24 : i1
      %260 = arith.divsi %c661411533_i32, %c401404571_i32 : i32
      %261 = math.exp %22 : tensor<f32>
      %262 = vector.extract %51[5] : vector<9xi1>
      %263 = scf.while (%arg1 = %alloc_7) : (memref<3xf32>) -> memref<3xf32> {
        %265 = arith.maxui %c1434678407_i32, %c1434678407_i32 : i32
        %266 = math.ctpop %13 : tensor<9xi1>
        %267 = bufferization.to_tensor %alloc_7 : memref<3xf32>
        memref.copy %arg1, %alloc_13 : memref<3xf32> to memref<3xf32>
        %268 = math.ctpop %15 : tensor<3xi32>
        %269 = math.ctpop %c1434678407_i32 : i32
        %270 = math.log2 %cst_2 : f16
        %271 = index.sizeof
        scf.condition(%true) %alloc_20 : memref<3xf32>
      } do {
      ^bb0(%arg1: memref<3xf32>):
        %265 = arith.minui %true, %true_24 : i1
        %266 = vector.insert %cst, %19 [14] : f16 into vector<16xf16>
        %267 = bufferization.to_memref %14 : memref<16x16xi64>
        %268 = math.ipowi %15, %15 : tensor<3xi32>
        %269 = vector.reduction <add>, %41 : vector<9xf16> into f16
        %270 = arith.xori %c401404571_i32, %c1434678407_i32 : i32
        %from_elements_45 = tensor.from_elements %c661411533_i32, %c1434678407_i32, %extracted, %c1434678407_i32, %c291508864_i32, %c401404571_i32, %c291508864_i32, %c401404571_i32, %c443491996_i32 : tensor<9xi32>
        %271 = vector.insert %cst_3, %33 [14] : f16 into vector<16xf16>
        %272 = vector.insert %true, %78 [5] : i1 into vector<9xi1>
        %273 = arith.cmpf uno, %cst_4, %cst_1 : f32
        %274 = vector.bitcast %52 : vector<9xi32> to vector<9xi32>
        %275 = vector.broadcast %c9 : index to vector<9xindex>
        vector.scatter %alloc_16[%c8] [%275], %51, %78 : memref<9xi1>, vector<9xindex>, vector<9xi1>, vector<9xi1>
        %false_46 = index.bool.constant false
        %276 = arith.shrsi %69, %69 : i64
        %277 = arith.remf %cst_2, %cst : f16
        %278 = math.sqrt %4 : tensor<3xf32>
        scf.yield %alloc_10 : memref<3xf32>
      }
      %rank_44 = tensor.rank %11 : tensor<16x16xi16>
      %264 = math.tanh %0 : tensor<16x16xf32>
      scf.yield
    }
    case 2 {
      %251 = math.tan %cst : f16
      %252 = math.exp %cst_4 : f32
      %253 = vector.reduction <maxf>, %19 : vector<16xf16> into f16
      %254 = math.log10 %4 : tensor<3xf32>
      %255 = arith.cmpi ugt, %true, %true : i1
      %256 = math.ceil %0 : tensor<16x16xf32>
      %257 = bufferization.to_memref %0 : memref<16x16xf32>
      %258 = math.atan %from_elements : tensor<9xf32>
      %259 = math.cttz %8 : tensor<9xi1>
      %260 = arith.shli %extracted, %extracted : i32
      %261 = math.atan %cst_0 : f32
      %262 = math.ctpop %10 : tensor<9xi1>
      %263 = math.exp %4 : tensor<3xf32>
      %264 = math.floor %cst_0 : f32
      %265 = arith.cmpf ueq, %cst_4, %cst_5 : f32
      %266 = arith.shli %true, %true_23 : i1
      scf.yield
    }
    case 3 {
      %false_44 = index.bool.constant false
      %251 = bufferization.to_tensor %alloc_10 : memref<3xf32>
      memref.tensor_store %0, %alloc_19 : memref<16x16xf32>
      %252 = vector.broadcast %cst_3 : f16 to vector<16x16xf16>
      %253 = vector.outerproduct %33, %19, %252 {kind = #vector.kind<add>} : vector<16xf16>, vector<16xf16>
      %254 = vector.bitcast %50 : vector<9xi32> to vector<9xi32>
      %255 = vector.bitcast %52 : vector<9xi32> to vector<9xi32>
      memref.copy %alloc_17, %alloc_8 : memref<16x16xf16> to memref<16x16xf16>
      %256 = math.tan %cst_5 : f32
      %257 = vector.bitcast %33 : vector<16xf16> to vector<16xi16>
      %258 = arith.negf %cst_3 : f16
      %259 = math.sqrt %cst_5 : f32
      %extracted_45 = tensor.extract %5[%c2] : tensor<9xi16>
      %260 = math.ceil %cst_2 : f16
      %261 = arith.shli %c1434678407_i32, %c1434678407_i32 : i32
      %262 = index.casts %57 : index to i32
      %from_elements_46 = tensor.from_elements %c661411533_i32, %c1434678407_i32, %extracted, %extracted, %c661411533_i32, %c401404571_i32, %c1434678407_i32, %c401404571_i32, %extracted, %c401404571_i32, %c291508864_i32, %extracted, %c661411533_i32, %c661411533_i32, %c661411533_i32, %c1434678407_i32, %c1434678407_i32, %extracted, %extracted, %c401404571_i32, %extracted, %c1434678407_i32, %c401404571_i32, %c1434678407_i32, %extracted, %c443491996_i32, %c291508864_i32, %c291508864_i32, %extracted, %c443491996_i32, %c291508864_i32, %c1434678407_i32, %extracted, %c443491996_i32, %c1434678407_i32, %c401404571_i32, %extracted, %c291508864_i32, %c401404571_i32, %c1434678407_i32, %c443491996_i32, %c291508864_i32, %c1434678407_i32, %c401404571_i32, %c291508864_i32, %c661411533_i32, %c401404571_i32, %extracted, %c401404571_i32, %c291508864_i32, %c401404571_i32, %c401404571_i32, %extracted, %c1434678407_i32, %c661411533_i32, %c401404571_i32, %c1434678407_i32, %c1434678407_i32, %c1434678407_i32, %c1434678407_i32, %c661411533_i32, %c291508864_i32, %c661411533_i32, %c1434678407_i32, %c443491996_i32, %c661411533_i32, %extracted, %c1434678407_i32, %extracted, %c661411533_i32, %c401404571_i32, %c291508864_i32, %c443491996_i32, %c1434678407_i32, %c443491996_i32, %c443491996_i32, %c1434678407_i32, %extracted, %c401404571_i32, %extracted, %c401404571_i32, %c401404571_i32, %c1434678407_i32, %c291508864_i32, %c401404571_i32, %c401404571_i32, %c443491996_i32, %c1434678407_i32, %c401404571_i32, %c1434678407_i32, %c661411533_i32, %c291508864_i32, %extracted, %c443491996_i32, %extracted, %c1434678407_i32, %c291508864_i32, %c1434678407_i32, %c661411533_i32, %c1434678407_i32, %c401404571_i32, %c1434678407_i32, %c401404571_i32, %c291508864_i32, %c401404571_i32, %c291508864_i32, %c401404571_i32, %c1434678407_i32, %c443491996_i32, %c661411533_i32, %c443491996_i32, %c291508864_i32, %c443491996_i32, %c443491996_i32, %c291508864_i32, %c1434678407_i32, %extracted, %extracted, %c443491996_i32, %c401404571_i32, %c291508864_i32, %c401404571_i32, %extracted, %c661411533_i32, %c443491996_i32, %c1434678407_i32, %c1434678407_i32, %c401404571_i32, %c661411533_i32, %c661411533_i32, %c291508864_i32, %c661411533_i32, %c443491996_i32, %c661411533_i32, %c291508864_i32, %c443491996_i32, %c1434678407_i32, %c443491996_i32, %extracted, %c401404571_i32, %c291508864_i32, %c443491996_i32, %extracted, %c661411533_i32, %c443491996_i32, %c1434678407_i32, %c1434678407_i32, %c661411533_i32, %c291508864_i32, %c661411533_i32, %c291508864_i32, %extracted, %c1434678407_i32, %extracted, %c1434678407_i32, %c401404571_i32, %c443491996_i32, %c1434678407_i32, %c661411533_i32, %c1434678407_i32, %c291508864_i32, %c661411533_i32, %c1434678407_i32, %c661411533_i32, %c291508864_i32, %c291508864_i32, %c661411533_i32, %c443491996_i32, %c1434678407_i32, %c401404571_i32, %c1434678407_i32, %c291508864_i32, %extracted, %extracted, %c1434678407_i32, %c661411533_i32, %c443491996_i32, %extracted, %c1434678407_i32, %c443491996_i32, %c401404571_i32, %c291508864_i32, %c443491996_i32, %c661411533_i32, %c291508864_i32, %extracted, %c291508864_i32, %c291508864_i32, %c1434678407_i32, %c291508864_i32, %c401404571_i32, %c291508864_i32, %c401404571_i32, %c443491996_i32, %c1434678407_i32, %c291508864_i32, %c443491996_i32, %c443491996_i32, %c661411533_i32, %extracted, %c1434678407_i32, %c1434678407_i32, %c401404571_i32, %c291508864_i32, %c1434678407_i32, %c443491996_i32, %c401404571_i32, %c443491996_i32, %c1434678407_i32, %c291508864_i32, %c291508864_i32, %c443491996_i32, %extracted, %c443491996_i32, %extracted, %c1434678407_i32, %c291508864_i32, %c1434678407_i32, %c661411533_i32, %extracted, %c1434678407_i32, %c1434678407_i32, %c443491996_i32, %c1434678407_i32, %c443491996_i32, %c401404571_i32, %c401404571_i32, %c291508864_i32, %c1434678407_i32, %c401404571_i32, %extracted, %extracted, %c443491996_i32, %c661411533_i32, %extracted, %c661411533_i32, %c291508864_i32, %c291508864_i32, %c1434678407_i32, %extracted, %c401404571_i32, %c1434678407_i32, %c443491996_i32, %c443491996_i32, %c661411533_i32, %c661411533_i32, %c401404571_i32, %c291508864_i32, %c443491996_i32, %c291508864_i32, %c661411533_i32, %extracted, %c443491996_i32, %c291508864_i32, %c661411533_i32, %c661411533_i32 : tensor<16x16xi32>
      scf.yield
    }
    case 4 {
      %251 = arith.minsi %c401404571_i32, %c1434678407_i32 : i32
      %252 = math.exp %cst_1 : f32
      %inserted = tensor.insert %cst_1 into %0[%c8, %c6] : tensor<16x16xf32>
      %false_44 = index.bool.constant false
      %253 = arith.subi %c289678454_i64, %c289678454_i64 : i64
      %254 = vector.multi_reduction <minui>, %78, %78 [] : vector<9xi1> to vector<9xi1>
      %255 = math.log2 %4 : tensor<3xf32>
      %256 = arith.remsi %c291508864_i32, %c401404571_i32 : i32
      scf.index_switch %c2 
      case 1 {
        %263 = arith.cmpf oeq, %cst_3, %cst_3 : f16
        %264 = arith.cmpf ule, %cst_4, %cst_4 : f32
        %265 = vector.reduction <minui>, %78 : vector<9xi1> into i1
        %266 = arith.ceildivsi %c443491996_i32, %c661411533_i32 : i32
        %267 = math.ctpop %c661411533_i32 : i32
        %268 = math.cos %0 : tensor<16x16xf32>
        %269 = index.sizeof
        %270 = arith.shrsi %c-23908_i16, %c15044_i16 : i16
        %271 = index.sizeof
        %272 = index.sizeof
        %273 = math.log2 %4 : tensor<3xf32>
        %274 = tensor.empty() : tensor<9xi1>
        %275 = affine.max affine_map<(d0, d1) -> (d1 + d0 - d0, d0 - 64, d0 floordiv 4)>(%271, %c2)
        %276 = vector.broadcast %true_24 : i1 to vector<9x9xi1>
        %277 = vector.outerproduct %51, %51, %276 {kind = #vector.kind<or>} : vector<9xi1>, vector<9xi1>
        %cast_46 = tensor.cast %11 : tensor<16x16xi16> to tensor<?x?xi16>
        %278 = arith.ceildivsi %69, %c289678454_i64 : i64
        scf.yield
      }
      case 2 {
        %263 = math.round %4 : tensor<3xf32>
        memref.store %c1171249303_i64, %alloc_22[] : memref<i64>
        %264 = memref.realloc %alloc_9 : memref<3xf16> to memref<16xf16>
        %265 = math.ipowi %c1171249303_i64, %c289678454_i64 : i64
        %266 = math.log2 %7 : tensor<16x16xf32>
        %267 = math.log %cst_0 : f32
        affine.store %cst_0, %alloc_7[%c0] : memref<3xf32>
        %268 = arith.shrsi %extracted, %c1434678407_i32 : i32
        %269 = arith.shli %false_44, %true_23 : i1
        %270 = memref.atomic_rmw minf %cst_3, %alloc_11[%c0] : (f16, memref<9xf16>) -> f16
        %collapsed_46 = tensor.collapse_shape %14 [[0, 1]] : tensor<16x16xi64> into tensor<256xi64>
        %inserted_47 = tensor.insert %cst_1 into %55[%c4] : tensor<9xf32>
        %271 = arith.minf %cst_5, %cst_1 : f32
        %272 = math.exp %cst_0 : f32
        affine.store %cst_4, %alloc_20[%c14] : memref<3xf32>
        %273 = vector.multi_reduction <minf>, %41, %cst_2 [0] : vector<9xf16> to f16
        scf.yield
      }
      case 3 {
        %263 = vector.multi_reduction <maxsi>, %52, %c401404571_i32 [0] : vector<9xi32> to i32
        %264 = memref.realloc %alloc_18 : memref<9xf16> to memref<16xf16>
        %265 = arith.shrsi %true_23, %true : i1
        %266 = arith.divui %true, %true : i1
        %267 = index.sub %c14, %c7
        %268 = math.log %0 : tensor<16x16xf32>
        %expanded_46 = tensor.expand_shape %12 [[0, 1]] : tensor<3xi64> into tensor<3x1xi64>
        %269 = index.sizeof
        %270 = arith.andi %c1171249303_i64, %c289678454_i64 : i64
        %alloc_47 = memref.alloc() : memref<3xf32>
        %271 = arith.minf %cst_5, %cst_1 : f32
        %272 = math.sqrt %cst_3 : f16
        %273 = vector.splat %true_24 : vector<16x16xi1>
        %274 = arith.ceildivsi %true_24, %true : i1
        %275 = index.casts %c3 : index to i32
        %276 = math.powf %cst_3, %cst_3 : f16
        scf.yield
      }
      default {
        %263 = arith.remsi %c289678454_i64, %69 : i64
        %cst_46 = arith.constant 8.232000e+03 : f16
        %264 = index.sizeof
        %265 = arith.minsi %69, %c1171249303_i64 : i64
        %266 = math.cttz %14 : tensor<16x16xi64>
        %267 = math.rsqrt %7 : tensor<16x16xf32>
        %268 = index.maxu %c15, %c0
        %269 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - 16, d0, (d0 floordiv 64) * 4)>(%c4, %c2, %268, %c0)
        %rank_47 = tensor.rank %21 : tensor<f32>
        %270 = index.ceildivu %c1, %c11
        %271 = arith.shli %false_44, %true : i1
        %272 = arith.remsi %c1171249303_i64, %69 : i64
        %c431783125_i32 = arith.constant 431783125 : i32
        %273 = arith.divsi %true_24, %true_23 : i1
        %274 = math.sqrt %55 : tensor<9xf32>
        %275 = math.cos %4 : tensor<3xf32>
      }
      %257 = arith.subi %c1434678407_i32, %c443491996_i32 : i32
      %258 = math.rsqrt %0 : tensor<16x16xf32>
      %259 = math.atan %22 : tensor<f32>
      %alloc_45 = memref.alloc() : memref<9xi1>
      %260 = math.sqrt %cst_1 : f32
      %261 = arith.xori %c443491996_i32, %c1434678407_i32 : i32
      %262 = affine.load %alloc_17[%c13, %c0] : memref<16x16xf16>
      scf.yield
    }
    default {
      %251 = math.powf %55, %from_elements : tensor<9xf32>
      %252 = tensor.empty() : tensor<16x16xi1>
      %253 = linalg.matmul ins(%6, %6 : tensor<16x16xi1>, tensor<16x16xi1>) outs(%252 : tensor<16x16xi1>) -> tensor<16x16xi1>
      %254 = arith.cmpf true, %cst_5, %cst_1 : f32
      %255 = math.rsqrt %cst_3 : f16
      %256 = math.exp2 %from_elements : tensor<9xf32>
      %257 = arith.maxf %cst_2, %cst_2 : f16
      %258 = math.log2 %4 : tensor<3xf32>
      %259 = affine.min affine_map<(d0, d1) -> (((d1 + 64) ceildiv 8) mod 64 + 4)>(%c10, %57)
      %260 = index.sub %59, %c2
      %261 = bufferization.clone %alloc_16 : memref<9xi1> to memref<9xi1>
      %262 = math.tanh %cst : f16
      %263 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 * 2 - 1, (d0 + d1) ceildiv 128, d3)>(%32, %63, %c3, %c13)
      %264 = arith.shrsi %c443491996_i32, %c401404571_i32 : i32
      %265 = index.maxs %42, %32
      %266 = arith.remsi %c289678454_i64, %c1171249303_i64 : i64
      %267 = bufferization.clone %alloc_10 : memref<3xf32> to memref<3xf32>
    }
    %83 = arith.maxsi %true_24, %true : i1
    %84 = arith.muli %c1434678407_i32, %c443491996_i32 : i32
    %expanded = tensor.expand_shape %5 [[0, 1]] : tensor<9xi16> into tensor<9x1xi16>
    %85 = math.rsqrt %cst : f16
    memref.tensor_store %4, %alloc_10 : memref<3xf32>
    %86 = math.exp %4 : tensor<3xf32>
    %87 = arith.remsi %c-23908_i16, %c-23908_i16 : i16
    %88 = arith.remf %cst, %cst_3 : f16
    %89 = math.rsqrt %cst_2 : f16
    %90 = vector.shuffle %19, %19 [4, 5, 8, 9, 10, 13, 14, 15, 16, 19, 21, 23, 25] : vector<16xf16>, vector<16xf16>
    %91 = arith.remf %cst, %cst_3 : f16
    %92 = math.ipowi %12, %12 : tensor<3xi64>
    %93 = vector.shuffle %33, %33 [0, 2, 3, 4, 7, 8, 11, 12, 15, 16, 18, 19, 20, 21, 22, 24, 26, 30, 31] : vector<16xf16>, vector<16xf16>
    %94 = math.ipowi %11, %11 : tensor<16x16xi16>
    %95 = scf.index_switch %23 -> f16 
    case 1 {
      %extracted_44 = tensor.extract %13[%c5] : tensor<9xi1>
      %251 = arith.floordivsi %extracted, %c291508864_i32 : i32
      %252 = bufferization.to_tensor %alloc_9 : memref<3xf16>
      %253 = arith.minsi %true, %true_23 : i1
      %254 = math.roundeven %4 : tensor<3xf32>
      %alloc_45 = memref.alloc() : memref<9xi16>
      %255 = math.expm1 %7 : tensor<16x16xf32>
      %256 = arith.shrsi %c661411533_i32, %c661411533_i32 : i32
      %alloc_46 = memref.alloc() : memref<3xi32>
      memref.tensor_store %15, %alloc_46 : memref<3xi32>
      %257 = math.ipowi %c661411533_i32, %c443491996_i32 : i32
      affine.store %cst, %alloc_18[%c13] : memref<9xf16>
      %258 = math.log2 %cst_3 : f16
      %259 = memref.atomic_rmw assign %cst_2, %alloc_8[%c15, %c13] : (f16, memref<16x16xf16>) -> f16
      %260 = math.log10 %21 : tensor<f32>
      %261 = math.expm1 %7 : tensor<16x16xf32>
      %262 = math.ipowi %1, %1 : tensor<9xi32>
      scf.yield %cst_2 : f16
    }
    case 2 {
      %251 = bufferization.clone %alloc_12 : memref<16x16xi1> to memref<16x16xi1>
      %252 = math.cos %cst_2 : f16
      %253 = tensor.empty() : tensor<16x16xi1>
      %254 = index.ceildivu %c5, %c4
      %255 = math.rsqrt %4 : tensor<3xf32>
      %256 = math.log1p %0 : tensor<16x16xf32>
      %257 = arith.remf %cst_0, %cst_4 : f32
      %258 = arith.ceildivsi %69, %c1171249303_i64 : i64
      %259 = affine.if affine_set<(d0, d1, d2) : (d2 + d0 >= 0, -d1 == 0, (d0 - 4) ceildiv 4 == 0, d2 - (-d1) ceildiv 16 == 0)>(%c15, %c7, %c13) -> memref<9xf16> {
        %266 = math.log %cst_1 : f32
        %extracted_44 = tensor.extract %6[%c9, %c3] : tensor<16x16xi1>
        %267 = arith.divf %cst_4, %cst_1 : f32
        %268 = arith.remsi %true_24, %extracted_44 : i1
        %269 = vector.extract %19[2] : vector<16xf16>
        %270 = arith.ceildivsi %true_24, %true_23 : i1
        %271 = index.maxu %c13, %42
        %272 = math.ipowi %c291508864_i32, %extracted : i32
        affine.yield %alloc_18 : memref<9xf16>
      } else {
        %266 = math.powf %cst_5, %cst_5 : f32
        %267 = math.sqrt %21 : tensor<f32>
        %268 = math.exp2 %cst_3 : f16
        %269 = math.ceil %22 : tensor<f32>
        %270 = vector.insert %cst_3, %41 [6] : f16 into vector<9xf16>
        %271 = affine.load %alloc_9[%c2] : memref<3xf16>
        %272 = math.expm1 %cst_4 : f32
        %expanded_44 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<16x16xf32> into tensor<16x16x1xf32>
        affine.yield %alloc_18 : memref<9xf16>
      }
      %260 = math.expm1 %0 : tensor<16x16xf32>
      %261 = index.maxu %c9, %254
      %262 = vector.shuffle %50, %50 [3, 4, 5, 6, 9, 12, 15, 16] : vector<9xi32>, vector<9xi32>
      %263 = bufferization.to_memref %8 : memref<9xi1>
      memref.copy %alloc, %alloc_14 : memref<9xi32> to memref<9xi32>
      %264 = math.expm1 %from_elements : tensor<9xf32>
      %265 = affine.if affine_set<(d0, d1, d2) : (d0 - (d1 - 4) + d0 - 2 == 0)>(%c14, %c11, %c2) -> i16 {
        %266 = arith.cmpf uge, %cst_1, %cst_4 : f32
        %267 = arith.remf %cst_3, %cst_3 : f16
        %268 = arith.maxsi %c-23908_i16, %c-23908_i16 : i16
        %269 = math.log1p %cst_3 : f16
        %true_44 = arith.constant true
        %false_45 = arith.constant false
        %270 = vector.transfer_read %6[%32, %c0], %false_45 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<16x16xi1>, vector<9xi1>
        %271 = arith.minf %cst_3, %cst_3 : f16
        %272 = math.rsqrt %22 : tensor<f32>
        %273 = vector.shuffle %19, %19 [0, 1, 2, 4, 5, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 26, 28, 30, 31] : vector<16xf16>, vector<16xf16>
        affine.yield %c-23908_i16 : i16
      } else {
        %266 = bufferization.to_memref %6 : memref<16x16xi1>
        %267 = arith.cmpi ugt, %extracted, %c1434678407_i32 : i32
        %268 = arith.minui %true_24, %true_23 : i1
        %269 = vector.broadcast %cst_2 : f16 to vector<9xf16>
        %270 = arith.subi %c289678454_i64, %69 : i64
        %271 = arith.divsi %69, %c1171249303_i64 : i64
        %272 = math.ceil %21 : tensor<f32>
        %extracted_44 = tensor.extract %9[%c1, %c11] : tensor<16x16xi32>
        affine.yield %c-23908_i16 : i16
      }
      scf.yield %cst : f16
    }
    case 3 {
      %251 = math.tanh %4 : tensor<3xf32>
      %252 = tensor.empty() : tensor<9xf16>
      %253 = math.atan %4 : tensor<3xf32>
      %254 = math.sqrt %0 : tensor<16x16xf32>
      %255 = vector.shuffle %78, %51 [2, 4, 5, 6, 8, 9, 11, 13, 14, 15] : vector<9xi1>, vector<9xi1>
      %256 = scf.while (%arg1 = %true) : (i1) -> i1 {
        %265 = index.maxs %c7, %c5
        %266 = vector.bitcast %19 : vector<16xf16> to vector<16xf16>
        %267 = bufferization.to_tensor %alloc_8 : memref<16x16xf16>
        %268 = math.log %cst_3 : f16
        %269 = math.rsqrt %cst_4 : f32
        %270 = math.cos %0 : tensor<16x16xf32>
        %271 = math.expm1 %55 : tensor<9xf32>
        memref.copy %alloc_13, %alloc_7 : memref<3xf32> to memref<3xf32>
        scf.condition(%arg1) %arg1 : i1
      } do {
      ^bb0(%arg1: i1):
        %alloc_46 = memref.alloc() : memref<9xf32>
        %265 = vector.broadcast %cst_4 : f32 to vector<9xf32>
        %266 = vector.gather %alloc_46[%c2] [%52], %51, %265 : memref<9xf32>, vector<9xi32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %267 = arith.subi %69, %c289678454_i64 : i64
        %268 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %266, %266, %cst_4 : vector<9xf32>, vector<9xf32> into f32
        %269 = vector.bitcast %266 : vector<9xf32> to vector<9xi32>
        %270 = memref.atomic_rmw mulf %cst_0, %alloc_10[%c0] : (f32, memref<3xf32>) -> f32
        %271 = arith.minui %arg1, %true_23 : i1
        %272 = math.fpowi %7, %9 : tensor<16x16xf32>, tensor<16x16xi32>
        %273 = arith.floordivsi %c1434678407_i32, %c1434678407_i32 : i32
        %274 = math.sqrt %4 : tensor<3xf32>
        %extracted_47 = tensor.extract %4[%c1] : tensor<3xf32>
        %275 = math.log %4 : tensor<3xf32>
        %276 = arith.subi %true_23, %true : i1
        %277 = index.maxu %c10, %59
        %278 = arith.remf %cst, %cst_3 : f16
        %alloc_48 = memref.alloc() : memref<9x1xi16>
        memref.tensor_store %expanded, %alloc_48 : memref<9x1xi16>
        %cst_49 = arith.constant 1.15031578E+9 : f32
        scf.yield %true_23 : i1
      }
      %257 = affine.if affine_set<(d0, d1, d2, d3) : ((d3 * -4) ceildiv 8 >= 0)>(%c11, %c15, %c10, %c0) -> i16 {
        %265 = math.log %cst_1 : f32
        %266 = vector.gather %alloc_11[%c14] [%52], %51, %41 : memref<9xf16>, vector<9xi32>, vector<9xi1>, vector<9xf16> into vector<9xf16>
        %alloc_46 = memref.alloc() : memref<16x16xi64>
        memref.tensor_store %14, %alloc_46 : memref<16x16xi64>
        %267 = math.log %cst_5 : f32
        affine.store %c289678454_i64, %alloc_22[] : memref<i64>
        %false_47 = index.bool.constant false
        %268 = index.casts %c1171249303_i64 : i64 to index
        %269 = arith.xori %c291508864_i32, %c661411533_i32 : i32
        affine.yield %c15044_i16 : i16
      } else {
        %265 = math.log2 %7 : tensor<16x16xf32>
        %266 = math.exp %55 : tensor<9xf32>
        %267 = arith.cmpf false, %cst, %cst_3 : f16
        %268 = arith.xori %69, %c289678454_i64 : i64
        %269 = arith.cmpf ole, %cst_2, %cst : f16
        %270 = vector.reduction <minsi>, %51 : vector<9xi1> into i1
        %271 = math.fpowi %cst_4, %c401404571_i32 : f32, i32
        %272 = affine.max affine_map<(d0, d1) -> ((d0 + 48) * 2, d0 floordiv 32 + 2, d0 + 48)>(%c12, %c6)
        affine.yield %c-23908_i16 : i16
      }
      %258 = arith.ceildivsi %c289678454_i64, %69 : i64
      %259 = bufferization.to_memref %252 : memref<9xf16>
      %260 = memref.atomic_rmw mulf %cst_5, %alloc_19[%c2, %c11] : (f32, memref<16x16xf32>) -> f32
      %261 = arith.xori %c291508864_i32, %c661411533_i32 : i32
      %cast_44 = tensor.cast %3 : tensor<9xi64> to tensor<?xi64>
      %262 = arith.ceildivsi %c1434678407_i32, %c401404571_i32 : i32
      %rank_45 = tensor.rank %from_elements : tensor<9xf32>
      %263 = math.ceil %0 : tensor<16x16xf32>
      %264 = arith.mulf %cst_2, %cst_3 : f16
      scf.yield %cst_2 : f16
    }
    case 4 {
      %251 = arith.divui %c-23908_i16, %c-23908_i16 : i16
      %252 = arith.floordivsi %69, %c1171249303_i64 : i64
      %253 = arith.muli %true, %true_24 : i1
      %254 = math.sqrt %4 : tensor<3xf32>
      %255 = math.exp %0 : tensor<16x16xf32>
      %256 = index.divs %32, %c6
      %257 = arith.remf %cst_0, %cst_0 : f32
      %258 = vector.broadcast %c14 : index to vector<3xindex>
      %259 = vector.broadcast %true : i1 to vector<3xi1>
      %260 = vector.broadcast %cst_5 : f32 to vector<3xf32>
      vector.scatter %alloc_13[%c2] [%258], %259, %260 : memref<3xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
      %261 = index.maxu %76, %c15
      %262 = arith.addi %c289678454_i64, %69 : i64
      %263 = vector.broadcast %c-23908_i16 : i16 to vector<9x16x3xi16>
      %264 = vector.broadcast %c-23908_i16 : i16 to vector<16x3xi16>
      %dest, %accumulated_value = vector.scan <xor>, %263, %264 {inclusive = false, reduction_dim = 0 : i64} : vector<9x16x3xi16>, vector<16x3xi16>
      scf.index_switch %63 
      case 1 {
        memref.assume_alignment %alloc_6, 16 : memref<16x16xf16>
        %269 = math.ipowi %2, %6 : tensor<16x16xi1>
        %270 = index.sub %256, %59
        %271 = vector.shuffle %19, %41 [0, 4, 5, 6, 9, 10, 12, 13, 14, 18, 19, 21] : vector<16xf16>, vector<9xf16>
        %272 = arith.ceildivsi %true, %true_24 : i1
        %273 = vector.broadcast %c661411533_i32 : i32 to vector<3xi32>
        %274 = vector.broadcast %true : i1 to vector<3xi1>
        %275 = vector.gather %alloc_14[%c4] [%273], %274, %273 : memref<9xi32>, vector<3xi32>, vector<3xi1>, vector<3xi32> into vector<3xi32>
        %276 = arith.minui %c1171249303_i64, %c1171249303_i64 : i64
        %277 = index.sub %c6, %c13
        %278 = bufferization.to_tensor %alloc_15 : memref<9xi64>
        %279 = arith.maxui %69, %c1171249303_i64 : i64
        %280 = bufferization.to_tensor %alloc_7 : memref<3xf32>
        %281 = math.expm1 %0 : tensor<16x16xf32>
        %282 = arith.minf %cst_2, %cst : f16
        %283 = math.ipowi %14, %14 : tensor<16x16xi64>
        %284 = math.log10 %55 : tensor<9xf32>
        %285 = arith.xori %c1171249303_i64, %c289678454_i64 : i64
        scf.yield
      }
      case 2 {
        %269 = arith.andi %c291508864_i32, %c401404571_i32 : i32
        %270 = bufferization.to_tensor %alloc_7 : memref<3xf32>
        %271 = math.log2 %cst_3 : f16
        %272 = math.log2 %cst_4 : f32
        %273 = vector.extract %78[6] : vector<9xi1>
        %274 = arith.maxf %cst, %cst_2 : f16
        %275 = arith.muli %69, %69 : i64
        %276 = tensor.empty() : tensor<9xf16>
        %277 = math.floor %cst_0 : f32
        %278 = math.copysign %cst_4, %cst_1 : f32
        %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %41, %41, %cst_3 : vector<9xf16>, vector<9xf16> into f16
        %280 = vector.reduction <maxf>, %41 : vector<9xf16> into f16
        %281 = math.powf %4, %4 : tensor<3xf32>
        %282 = arith.addi %69, %c1171249303_i64 : i64
        %283 = index.ceildivu %63, %c5
        %284 = math.cttz %2 : tensor<16x16xi1>
        scf.yield
      }
      case 3 {
        %269 = math.ctpop %2 : tensor<16x16xi1>
        %270 = arith.ceildivsi %c-23908_i16, %c-23908_i16 : i16
        %271 = math.round %cst_2 : f16
        %272 = index.maxs %c0, %c5
        %273 = index.sub %c15, %42
        %274 = arith.remsi %true_24, %true_23 : i1
        %275 = arith.minui %true_24, %true : i1
        %276 = bufferization.to_memref %55 : memref<9xf32>
        %277 = math.exp %55 : tensor<9xf32>
        %278 = math.powf %22, %21 : tensor<f32>
        %279 = arith.shli %true_24, %true_24 : i1
        %280 = math.exp %cst_5 : f32
        %281 = index.maxu %261, %c8
        %282 = index.add %c15, %59
        %283 = arith.remf %cst, %cst_3 : f16
        %284 = math.ceil %20 : tensor<3xf32>
        scf.yield
      }
      case 4 {
        %269 = index.casts %c661411533_i32 : i32 to index
        %270 = index.divu %269, %c12
        %271 = math.roundeven %cst_0 : f32
        %272 = arith.divsi %c15044_i16, %c15044_i16 : i16
        %273 = math.log %7 : tensor<16x16xf32>
        %274 = math.round %cst_5 : f32
        %275 = arith.floordivsi %c443491996_i32, %c291508864_i32 : i32
        %c1286832853_i64 = arith.constant 1286832853 : i64
        %276 = tensor.empty() : tensor<3xi16>
        %277 = vector.broadcast %c15044_i16 : i16 to vector<9xi16>
        %278 = vector.gather %276[%c15] [%50], %78, %277 : tensor<3xi16>, vector<9xi32>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        %279 = math.atan %55 : tensor<9xf32>
        %inserted = tensor.insert %cst_5 into %4[%c0] : tensor<3xf32>
        %280 = vector.multi_reduction <minsi>, %278, %c-23908_i16 [0] : vector<9xi16> to i16
        %281 = arith.shli %c661411533_i32, %c443491996_i32 : i32
        %282 = math.ctpop %true : i1
        %283 = arith.minui %c-23908_i16, %280 : i16
        %284 = math.log2 %from_elements : tensor<9xf32>
        scf.yield
      }
      default {
        %269 = math.exp %4 : tensor<3xf32>
        %270 = math.log %0 : tensor<16x16xf32>
        %271 = affine.max affine_map<(d0, d1, d2) -> (-(d1 mod 2 + d0))>(%c0, %c9, %261)
        %272 = arith.cmpf ugt, %cst_0, %cst_4 : f32
        %273 = arith.shli %c1171249303_i64, %c289678454_i64 : i64
        %274 = arith.cmpf uge, %cst, %cst : f16
        %275 = bufferization.to_tensor %alloc_8 : memref<16x16xf16>
        %276 = index.ceildivu %c4, %c5
        %277 = math.log %cst_5 : f32
        %278 = math.ctpop %true_24 : i1
        %279 = math.tanh %20 : tensor<3xf32>
        %280 = arith.cmpf uge, %cst_4, %cst_4 : f32
        %281 = vector.extract %50[8] : vector<9xi32>
        %282 = index.maxu %276, %63
        %true_45 = index.bool.constant true
        %283 = arith.remui %c-23908_i16, %c-23908_i16 : i16
      }
      %265 = arith.subi %c1171249303_i64, %69 : i64
      %true_44 = arith.constant true
      %266 = vector.transfer_read %10[%c9], %true_44 : tensor<9xi1>, vector<i1>
      %267 = math.log2 %20 : tensor<3xf32>
      %268 = math.log2 %7 : tensor<16x16xf32>
      scf.yield %cst : f16
    }
    default {
      scf.index_switch %c0 
      case 1 {
        %265 = arith.ceildivsi %c15044_i16, %c-23908_i16 : i16
        %266 = math.cos %from_elements : tensor<9xf32>
        %267 = index.ceildivs %c7, %c13
        %268 = arith.maxui %c-23908_i16, %c-23908_i16 : i16
        %269 = memref.atomic_rmw mulf %cst_0, %alloc_20[%c0] : (f32, memref<3xf32>) -> f32
        %270 = vector.broadcast %cst_2 : f16 to vector<16x16xf16>
        %271 = vector.outerproduct %19, %19, %270 {kind = #vector.kind<mul>} : vector<16xf16>, vector<16xf16>
        %272 = math.floor %55 : tensor<9xf32>
        memref.store %cst_0, %alloc_20[%c1] : memref<3xf32>
        %273 = math.round %22 : tensor<f32>
        %274 = math.ipowi %9, %9 : tensor<16x16xi32>
        %275 = arith.remf %cst_1, %cst_4 : f32
        %276 = vector.bitcast %51 : vector<9xi1> to vector<9xi1>
        %277 = bufferization.to_memref %15 : memref<3xi32>
        %278 = arith.subi %true, %true_24 : i1
        %279 = vector.reduction <mul>, %41 : vector<9xf16> into f16
        %280 = memref.atomic_rmw minf %cst_0, %alloc_20[%c0] : (f32, memref<3xf32>) -> f32
        scf.yield
      }
      default {
        %265 = vector.broadcast %69 : i64 to vector<9xi64>
        %266 = vector.gather %alloc_15[%c5] [%50], %51, %265 : memref<9xi64>, vector<9xi32>, vector<9xi1>, vector<9xi64> into vector<9xi64>
        %267 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, d2 mod 4, d3 mod 8)>(%c1, %76, %76, %c9)
        %268 = math.log %0 : tensor<16x16xf32>
        %269 = arith.floordivsi %c401404571_i32, %c401404571_i32 : i32
        %270 = math.expm1 %cst : f16
        %271 = math.log10 %4 : tensor<3xf32>
        %272 = math.log10 %cst_1 : f32
        %273 = math.log1p %4 : tensor<3xf32>
        %274 = arith.remf %cst_2, %cst : f16
        %275 = math.cos %20 : tensor<3xf32>
        %276 = bufferization.to_tensor %alloc_9 : memref<3xf16>
        %collapsed_44 = tensor.collapse_shape %7 [[0, 1]] : tensor<16x16xf32> into tensor<256xf32>
        affine.store %cst_1, %alloc_10[%c13] : memref<3xf32>
        %277 = tensor.empty() : tensor<3xi16>
        %278 = index.sub %267, %c4
        %279 = arith.remsi %extracted, %c1434678407_i32 : i32
      }
      %251 = arith.remf %cst_1, %cst_0 : f32
      %252 = affine.if affine_set<(d0, d1, d2, d3) : ((d3 * -4) ceildiv 8 >= 0)>(%c15, %c2, %c9, %c15) -> i64 {
        %265 = math.exp2 %cst_4 : f32
        %266 = math.log10 %cst : f16
        %267 = bufferization.to_memref %14 : memref<16x16xi64>
        %extracted_44 = tensor.extract %0[%c4, %c14] : tensor<16x16xf32>
        %268 = affine.load %alloc_20[%c2] : memref<3xf32>
        %269 = arith.xori %true, %true : i1
        %270 = arith.maxsi %69, %c1171249303_i64 : i64
        %271 = arith.negf %cst_1 : f32
        affine.yield %c289678454_i64 : i64
      } else {
        %265 = arith.divui %c661411533_i32, %c661411533_i32 : i32
        memref.store %true_23, %alloc_12[%c1, %c5] : memref<16x16xi1>
        %266 = arith.divf %cst_1, %cst_0 : f32
        %267 = math.rsqrt %cst : f16
        %268 = vector.insert %true, %51 [6] : i1 into vector<9xi1>
        %269 = arith.ceildivsi %c15044_i16, %c-23908_i16 : i16
        %270 = index.casts %69 : i64 to index
        %271 = arith.divui %true, %true : i1
        affine.yield %c289678454_i64 : i64
      }
      %253 = math.cos %22 : tensor<f32>
      %254 = math.round %55 : tensor<9xf32>
      memref.assume_alignment %alloc_15, 8 : memref<9xi64>
      %255 = math.floor %22 : tensor<f32>
      %256 = bufferization.clone %alloc_12 : memref<16x16xi1> to memref<16x16xi1>
      %257 = math.fpowi %4, %15 : tensor<3xf32>, tensor<3xi32>
      %258 = index.ceildivu %76, %59
      %259 = arith.remf %cst_4, %cst_1 : f32
      %260 = arith.maxui %c1171249303_i64, %69 : i64
      %261 = memref.load %alloc_22[] : memref<i64>
      %262 = arith.ceildivsi %true_24, %true_23 : i1
      %263 = vector.shuffle %52, %52 [0, 1, 6, 7, 9, 14, 17] : vector<9xi32>, vector<9xi32>
      %264 = math.rsqrt %cst : f16
      scf.yield %cst_3 : f16
    }
    %rank = tensor.rank %14 : tensor<16x16xi64>
    %96 = math.cos %20 : tensor<3xf32>
    %97 = index.ceildivu %63, %76
    %alloc_28 = memref.alloc() : memref<3xi64>
    %98 = vector.broadcast %c1171249303_i64 : i64 to vector<3xi64>
    %99 = vector.broadcast %true : i1 to vector<3xi1>
    %100 = vector.broadcast %c1434678407_i32 : i32 to vector<3xi32>
    %101 = vector.gather %alloc_28[%c4] [%100], %99, %98 : memref<3xi64>, vector<3xi32>, vector<3xi1>, vector<3xi64> into vector<3xi64>
    %extracted_29 = tensor.extract %14[%c7, %c6] : tensor<16x16xi64>
    %102 = vector.shuffle %33, %19 [0, 3, 4, 6, 7, 10, 11, 15, 17, 19, 20, 21, 22, 23, 24, 27, 29] : vector<16xf16>, vector<16xf16>
    memref.assume_alignment %alloc_22, 4 : memref<i64>
    %false = index.bool.constant false
    %103 = math.log10 %7 : tensor<16x16xf32>
    memref.assume_alignment %alloc_20, 1 : memref<3xf32>
    %104 = arith.ceildivsi %69, %extracted_29 : i64
    %105 = math.exp %0 : tensor<16x16xf32>
    %106 = arith.ceildivsi %69, %c289678454_i64 : i64
    %107 = arith.ceildivsi %extracted, %c1434678407_i32 : i32
    %alloc_30 = memref.alloc() : memref<3xi16>
    %108 = arith.maxsi %c15044_i16, %c-23908_i16 : i16
    %109 = affine.max affine_map<(d0) -> (d0 mod 32 + (d0 mod 32) floordiv 4 - 2, (d0 mod 32) ceildiv 2, (d0 mod 32) floordiv 4)>(%c15)
    %from_elements_31 = tensor.from_elements %true, %true, %true_23 : tensor<3xi1>
    %110 = arith.minui %c661411533_i32, %extracted : i32
    %111 = affine.if affine_set<(d0) : ((d0 * 4 + 32) * 2 + d0 * 32 == 0, (d0 * 4 + 32) * 2 >= 0, d0 == 0)>(%c1) -> i64 {
      %251 = vector.transpose %33, [0] : vector<16xf16> to vector<16xf16>
      %252 = arith.ori %extracted, %c443491996_i32 : i32
      %253 = arith.divsi %c661411533_i32, %extracted : i32
      affine.store %cst_2, %alloc_11[%c12] : memref<9xf16>
      %254 = vector.broadcast %c0 : index to vector<16xindex>
      %255 = vector.broadcast %true : i1 to vector<16xi1>
      vector.scatter %alloc_6[%c2, %c14] [%254], %255, %33 : memref<16x16xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
      %256 = tensor.empty() : tensor<9x9x9xf32>
      %257 = tensor.empty() : tensor<9x9xf32>
      %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%257, %55, %257 : tensor<9x9xf32>, tensor<9xf32>, tensor<9x9xf32>) outs(%256 : tensor<9x9x9xf32>) {
      ^bb0(%in: f32, %in_44: f32, %in_45: f32, %out: f32):
        affine.store %true_24, %alloc_12[%c12, %c8] : memref<16x16xi1>
        %260 = vector.bitcast %19 : vector<16xf16> to vector<16xf16>
        %261 = memref.atomic_rmw addf %cst_2, %alloc_17[%c4, %c13] : (f16, memref<16x16xf16>) -> f16
        %262 = index.ceildivs %c10, %c14
        %263 = memref.atomic_rmw maxs %c1171249303_i64, %alloc_28[%c1] : (i64, memref<3xi64>) -> i64
        %from_elements_46 = tensor.from_elements %cst_3, %cst_2, %cst_2, %cst_2, %cst_2, %cst, %cst_3, %cst_2, %cst_2 : tensor<9xf16>
        %264 = math.log2 %7 : tensor<16x16xf32>
        %265 = index.ceildivu %c4, %c15
        %266 = index.sizeof
        %267 = math.rsqrt %55 : tensor<9xf32>
        %268 = affine.max affine_map<(d0, d1) -> (d1 - (d0 ceildiv 2) * 128, d0 mod 8, (d0 ceildiv 2) * 4096)>(%rank, %c10)
        %269 = vector.insert %cst, %19 [6] : f16 into vector<16xf16>
        %rank_47 = tensor.rank %from_elements_27 : tensor<9xi16>
        %270 = math.cttz %c15044_i16 : i16
        %271 = memref.realloc %alloc_15 : memref<9xi64> to memref<16xi64>
        %272 = vector.broadcast %cst_1 : f32 to vector<9xf32>
        %273 = vector.fma %272, %272, %272 : vector<9xf32>
        %274 = arith.xori %true, %false : i1
        %275 = index.ceildivu %265, %rank
        %276 = math.sqrt %7 : tensor<16x16xf32>
        %277 = arith.remf %cst, %cst_2 : f16
        %278 = tensor.empty() : tensor<3xi64>
        %279 = vector.broadcast %true_24 : i1 to vector<9x9xi1>
        %dest, %accumulated_value = vector.scan <maxui>, %279, %51 {inclusive = true, reduction_dim = 0 : i64} : vector<9x9xi1>, vector<9xi1>
        %280 = arith.xori %c291508864_i32, %c1434678407_i32 : i32
        %281 = bufferization.clone %alloc_28 : memref<3xi64> to memref<3xi64>
        %282 = arith.minf %in_44, %in_44 : f32
        %283 = index.ceildivu %64, %c11
        %284 = vector.insert %cst_3, %19 [8] : f16 into vector<16xf16>
        %285 = index.maxs %c0, %c14
        %286 = arith.shrsi %true_23, %true : i1
        %rank_48 = tensor.rank %collapsed_26 : tensor<256xi32>
        bufferization.dealloc_tensor %expanded : tensor<9x1xi16>
        %287 = affine.min affine_map<(d0, d1, d2) -> (d0 + d2 + 64, d1)>(%c5, %266, %c4)
        linalg.yield %cst_0 : f32
      } -> tensor<9x9x9xf32>
      %259 = affine.max affine_map<(d0) -> (d0 mod 64, ((d0 * 2 + 32) ceildiv 32) ceildiv 8)>(%c11)
      scf.if %false {
        %260 = math.cttz %expanded : tensor<9x1xi16>
        %261 = index.sub %59, %c5
        %262 = affine.apply affine_map<(d0, d1, d2) -> ((d0 * 32) ceildiv 128)>(%261, %c2, %23)
        %263 = index.sub %c4, %59
        %264 = vector.bitcast %50 : vector<9xi32> to vector<9xi32>
        %inserted = tensor.insert %cst_5 into %20[%c1] : tensor<3xf32>
        memref.copy %alloc, %alloc_14 : memref<9xi32> to memref<9xi32>
        %265 = index.sizeof
      }
      affine.yield %c1171249303_i64 : i64
    } else {
      %251 = index.casts %true_23 : i1 to index
      %alloc_44 = memref.alloc() : memref<16x16xi1>
      %252 = memref.realloc %alloc_15 : memref<9xi64> to memref<9xi64>
      %253 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 + d0 + 4)>(%c10, %c2, %c8, %64)
      %254 = index.ceildivu %109, %253
      %255 = arith.minui %c401404571_i32, %c291508864_i32 : i32
      %256 = arith.maxsi %c443491996_i32, %c1434678407_i32 : i32
      %257 = arith.minsi %c291508864_i32, %c401404571_i32 : i32
      affine.yield %69 : i64
    }
    %112 = bufferization.clone %alloc_12 : memref<16x16xi1> to memref<16x16xi1>
    %113 = scf.while (%arg1 = %19) : (vector<16xf16>) -> vector<16xf16> {
      memref.tensor_store %16, %alloc_16 : memref<9xi1>
      %251 = vector.insert %c291508864_i32, %52 [6] : i32 into vector<9xi32>
      %false_44 = index.bool.constant false
      %252 = math.powf %cst_4, %cst_5 : f32
      %false_45 = index.bool.constant false
      affine.store %cst_4, %alloc_7[%c14] : memref<3xf32>
      %253 = math.expm1 %21 : tensor<f32>
      %254 = math.rsqrt %cst_5 : f32
      scf.condition(%false_45) %33 : vector<16xf16>
    } do {
    ^bb0(%arg1: vector<16xf16>):
      %251 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 ceildiv 16) floordiv 16, -(d0 - d0 ceildiv 16))>(%c14, %c12, %c4, %c5)
      %252 = memref.realloc %alloc_21 : memref<9xi64> to memref<3xi64>
      %253 = index.sub %c7, %c13
      %254 = vector.bitcast %33 : vector<16xf16> to vector<16xf16>
      %255 = scf.while (%arg2 = %c1434678407_i32) : (i32) -> i32 {
        %265 = arith.andi %c15044_i16, %c15044_i16 : i16
        %266 = index.add %c13, %109
        affine.store %cst_3, %alloc_6[%c6, %c13] : memref<16x16xf16>
        bufferization.dealloc_tensor %7 : tensor<16x16xf32>
        %267 = bufferization.clone %112 : memref<16x16xi1> to memref<16x16xi1>
        %268 = bufferization.to_memref %5 : memref<9xi16>
        %269 = memref.atomic_rmw addf %cst_2, %alloc_9[%c0] : (f16, memref<3xf16>) -> f16
        %270 = arith.muli %69, %extracted_29 : i64
        scf.condition(%false) %extracted : i32
      } do {
      ^bb0(%arg2: i32):
        %265 = memref.load %alloc_16[%c8] : memref<9xi1>
        %266 = math.round %7 : tensor<16x16xf32>
        %267 = math.log1p %21 : tensor<f32>
        %268 = math.log10 %0 : tensor<16x16xf32>
        %269 = arith.divf %cst_0, %cst_0 : f32
        %270 = arith.muli %extracted_29, %extracted_29 : i64
        %271 = affine.max affine_map<(d0) -> (-d0 + 1, d0 * -8 - 64, -((-d0) ceildiv 64))>(%57)
        %272 = math.exp2 %cst_4 : f32
        %273 = bufferization.clone %alloc_22 : memref<i64> to memref<i64>
        %274 = bufferization.clone %112 : memref<16x16xi1> to memref<16x16xi1>
        %275 = arith.addi %c401404571_i32, %extracted : i32
        %276 = math.exp %20 : tensor<3xf32>
        %277 = math.log1p %cst_2 : f16
        %278 = arith.subi %c401404571_i32, %c401404571_i32 : i32
        %279 = arith.floordivsi %c-23908_i16, %c15044_i16 : i16
        %280 = math.log2 %0 : tensor<16x16xf32>
        scf.yield %c1434678407_i32 : i32
      }
      bufferization.dealloc_tensor %3 : tensor<9xi64>
      %256 = bufferization.to_tensor %alloc_18 : memref<9xf16>
      %false_44 = index.bool.constant false
      %257 = vector.transpose %78, [0] : vector<9xi1> to vector<9xi1>
      %258 = arith.divui %false, %true_23 : i1
      %259 = math.tan %55 : tensor<9xf32>
      scf.execute_region {
        %265 = math.cos %4 : tensor<3xf32>
        %266 = math.rsqrt %cst_5 : f32
        %267 = math.floor %4 : tensor<3xf32>
        %268 = math.round %7 : tensor<16x16xf32>
        %269 = math.roundeven %cst_0 : f32
        %270 = affine.load %alloc_22[] : memref<i64>
        %271 = arith.xori %c443491996_i32, %c291508864_i32 : i32
        %272 = math.cttz %c1171249303_i64 : i64
        %273 = math.log2 %cst_4 : f32
        %274 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 * 2)>(%57, %c8, %c1, %c2)
        %275 = arith.shrsi %c291508864_i32, %c401404571_i32 : i32
        %true_45 = index.bool.constant true
        %276 = arith.maxf %cst, %cst : f16
        %277 = math.ipowi %12, %12 : tensor<3xi64>
        %278 = arith.shli %c15044_i16, %c-23908_i16 : i16
        %279 = vector.splat %cst_4 : vector<3xf32>
        scf.yield
      }
      %260 = vector.broadcast %cst_0 : f32 to vector<9xf32>
      %261 = vector.fma %260, %260, %260 : vector<9xf32>
      %262 = math.ctpop %c401404571_i32 : i32
      %263 = affine.max affine_map<(d0) -> (d0 * 2 - ((d0 * 2) mod 8) * 2 - (d0 * 2) mod 8, ((d0 * 2) mod 8) * 2, d0 * 2 - ((d0 * 2) mod 8) * 2)>(%32)
      %264 = arith.addi %true_23, %true_23 : i1
      scf.yield %254 : vector<16xf16>
    }
    %114 = arith.shli %c289678454_i64, %c1171249303_i64 : i64
    %115 = vector.bitcast %50 : vector<9xi32> to vector<9xi32>
    %116 = vector.shuffle %115, %115 [0, 1, 3, 6, 7, 10, 12, 13, 14, 15, 16, 17] : vector<9xi32>, vector<9xi32>
    %117 = arith.mulf %cst_2, %cst_3 : f16
    %118 = math.round %21 : tensor<f32>
    scf.index_switch %64 
    case 1 {
      %251 = index.sizeof
      %252 = index.add %251, %c6
      %alloc_44 = memref.alloc() : memref<16x16xi1>
      %253 = tensor.empty() : tensor<9x9x9xf32>
      %254 = tensor.empty() : tensor<9x9xf32>
      %255 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%254, %254, %from_elements : tensor<9x9xf32>, tensor<9x9xf32>, tensor<9xf32>) outs(%253 : tensor<9x9x9xf32>) {
      ^bb0(%in: f32, %in_46: f32, %in_47: f32, %out: f32):
        %266 = arith.divsi %c289678454_i64, %69 : i64
        %267 = index.sub %c12, %64
        %268 = math.powf %4, %4 : tensor<3xf32>
        %269 = index.maxs %c9, %32
        %270 = math.rsqrt %cst_5 : f32
        %271 = vector.bitcast %41 : vector<9xf16> to vector<9xf16>
        %extracted_48 = tensor.extract %from_elements[%c4] : tensor<9xf32>
        %272 = bufferization.to_memref %from_elements_25 : memref<9xi16>
        %273 = math.roundeven %4 : tensor<3xf32>
        %274 = bufferization.to_tensor %alloc_9 : memref<3xf16>
        %275 = index.ceildivs %rank, %109
        %276 = math.round %cst_1 : f32
        %277 = math.ctpop %14 : tensor<16x16xi64>
        %278 = memref.atomic_rmw maxu %c291508864_i32, %alloc[%c5] : (i32, memref<9xi32>) -> i32
        %279 = math.round %cst_5 : f32
        %280 = arith.remf %in_47, %in : f32
        %281 = math.log1p %cst_2 : f16
        %282 = arith.maxui %c661411533_i32, %extracted : i32
        %283 = math.round %cst_0 : f32
        %expanded_49 = tensor.expand_shape %12 [[0, 1]] : tensor<3xi64> into tensor<3x1xi64>
        %284 = bufferization.to_tensor %alloc_28 : memref<3xi64>
        %285 = vector.bitcast %271 : vector<9xf16> to vector<9xf16>
        %286 = index.divs %275, %c3
        %287 = math.cttz %5 : tensor<9xi16>
        %288 = vector.broadcast %cst_3 : f16 to vector<9x9xf16>
        %289 = vector.outerproduct %271, %285, %288 {kind = #vector.kind<minf>} : vector<9xf16>, vector<9xf16>
        %290 = math.log %cst : f16
        %291 = arith.divsi %true_24, %false : i1
        %292 = math.exp2 %extracted_48 : f32
        %293 = index.divs %42, %c14
        %294 = math.powf %4, %4 : tensor<3xf32>
        %295 = arith.remf %cst, %cst_2 : f16
        %rank_50 = tensor.rank %from_elements : tensor<9xf32>
        linalg.yield %extracted_48 : f32
      } -> tensor<9x9x9xf32>
      %256 = math.ceil %4 : tensor<3xf32>
      %257 = arith.floordivsi %c1434678407_i32, %c1434678407_i32 : i32
      %258 = index.maxs %c6, %c8
      %259 = math.cttz %2 : tensor<16x16xi1>
      %260 = arith.remf %cst_0, %cst_0 : f32
      %261 = arith.divf %cst_0, %cst_5 : f32
      %262 = vector.broadcast %cst_5 : f32 to vector<9xf32>
      %263 = vector.gather %alloc_20[%c7] [%115], %78, %262 : memref<3xf32>, vector<9xi32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
      %alloc_45 = memref.alloc() : memref<16x16xf32>
      memref.copy %alloc_19, %alloc_45 : memref<16x16xf32> to memref<16x16xf32>
      %264 = math.rsqrt %4 : tensor<3xf32>
      memref.tensor_store %2, %112 : memref<16x16xi1>
      %265 = math.ctpop %10 : tensor<9xi1>
      memref.assume_alignment %112, 1 : memref<16x16xi1>
      scf.yield
    }
    case 2 {
      %251 = math.log2 %cst_0 : f32
      %252 = math.log1p %4 : tensor<3xf32>
      %253 = math.roundeven %cst_2 : f16
      %254 = math.ctpop %expanded : tensor<9x1xi16>
      %255 = math.exp %cst_2 : f16
      %256 = index.sizeof
      %257 = math.tan %21 : tensor<f32>
      %258 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %98, %101, %c1171249303_i64 : vector<3xi64>, vector<3xi64> into i64
      %259 = arith.floordivsi %extracted_29, %69 : i64
      %260 = index.add %42, %c15
      scf.index_switch %260 
      case 1 {
        %266 = math.exp2 %0 : tensor<16x16xf32>
        %267 = math.floor %7 : tensor<16x16xf32>
        %268 = vector.multi_reduction <or>, %52, %c443491996_i32 [0] : vector<9xi32> to i32
        %269 = bufferization.to_memref %6 : memref<16x16xi1>
        %270 = math.log1p %0 : tensor<16x16xf32>
        %271 = bufferization.to_memref %5 : memref<9xi16>
        %272 = math.floor %cst_1 : f32
        %273 = vector.insert %cst_2, %33 [14] : f16 into vector<16xf16>
        %274 = arith.cmpf ogt, %cst_0, %cst_4 : f32
        %275 = math.rsqrt %cst_1 : f32
        %276 = arith.mulf %cst_0, %cst_0 : f32
        %277 = vector.shuffle %78, %99 [1, 2, 3, 5, 8, 10] : vector<9xi1>, vector<3xi1>
        %alloc_44 = memref.alloc() : memref<3xi32>
        %278 = vector.gather %alloc_44[%64] [%115], %51, %52 : memref<3xi32>, vector<9xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
        %extracted_45 = tensor.extract %55[%c8] : tensor<9xf32>
        %279 = math.ceil %0 : tensor<16x16xf32>
        %280 = affine.max affine_map<(d0) -> (0, (d0 ceildiv 4) * 64)>(%c7)
        scf.yield
      }
      default {
        %266 = arith.minui %true_23, %true_24 : i1
        %false_44 = index.bool.constant false
        %inserted = tensor.insert %false into %16[%c2] : tensor<9xi1>
        affine.store %cst, %alloc_18[%c7] : memref<9xf16>
        %267 = vector.broadcast %extracted_29 : i64 to vector<3x3xi64>
        %268 = vector.outerproduct %101, %98, %267 {kind = #vector.kind<maxui>} : vector<3xi64>, vector<3xi64>
        %269 = arith.cmpf uge, %cst_0, %cst_4 : f32
        %270 = math.cos %22 : tensor<f32>
        %271 = math.atan %0 : tensor<16x16xf32>
        %272 = math.log1p %7 : tensor<16x16xf32>
        %273 = math.sqrt %from_elements : tensor<9xf32>
        %274 = math.cos %20 : tensor<3xf32>
        %275 = arith.shrsi %c-23908_i16, %c-23908_i16 : i16
        %276 = math.sqrt %20 : tensor<3xf32>
        %277 = memref.atomic_rmw assign %cst_3, %alloc_18[%c7] : (f16, memref<9xf16>) -> f16
        %278 = arith.addi %c443491996_i32, %c661411533_i32 : i32
        %279 = arith.remf %cst_3, %cst_2 : f16
      }
      %261 = vector.bitcast %50 : vector<9xi32> to vector<9xi32>
      %262 = affine.load %alloc_20[%c12] : memref<3xf32>
      %263 = math.ipowi %true_23, %true : i1
      %264 = arith.remui %true_23, %false : i1
      %265 = bufferization.clone %alloc_9 : memref<3xf16> to memref<3xf16>
      scf.yield
    }
    default {
      %251 = vector.broadcast %c15044_i16 : i16 to vector<3xi16>
      %252 = vector.gather %from_elements_25[%57] [%100], %99, %251 : tensor<9xi16>, vector<3xi32>, vector<3xi1>, vector<3xi16> into vector<3xi16>
      %253 = math.powf %cst_1, %cst_1 : f32
      %254 = index.maxs %c15, %c7
      %255 = math.log10 %4 : tensor<3xf32>
      %256 = math.tan %7 : tensor<16x16xf32>
      %257 = index.maxs %c14, %42
      %258 = math.roundeven %cst_0 : f32
      %259 = arith.minf %cst, %cst : f16
      %260 = math.ceil %cst : f16
      %261 = bufferization.to_tensor %alloc_9 : memref<3xf16>
      %262 = index.divu %59, %c8
      %263 = arith.divui %c1171249303_i64, %c289678454_i64 : i64
      memref.tensor_store %17, %alloc_16 : memref<9xi1>
      %264 = index.maxu %254, %c4
      %265 = arith.shli %c291508864_i32, %c291508864_i32 : i32
      %266 = index.sizeof
    }
    bufferization.dealloc_tensor %2 : tensor<16x16xi1>
    %119 = arith.ceildivsi %c289678454_i64, %69 : i64
    %120 = math.log10 %cst_0 : f32
    %121 = bufferization.clone %alloc_16 : memref<9xi1> to memref<9xi1>
    %122 = bufferization.to_tensor %alloc_14 : memref<9xi32>
    %123 = bufferization.clone %alloc_15 : memref<9xi64> to memref<9xi64>
    %124 = arith.ceildivsi %extracted_29, %c1171249303_i64 : i64
    %125 = math.log10 %cst_0 : f32
    %126 = math.log10 %4 : tensor<3xf32>
    %127 = index.ceildivu %c12, %23
    %128 = math.atan %cst : f16
    %129 = math.log %21 : tensor<f32>
    %130 = math.log %4 : tensor<3xf32>
    %131 = arith.divsi %c443491996_i32, %c1434678407_i32 : i32
    %from_elements_32 = tensor.from_elements %extracted, %c661411533_i32, %c401404571_i32, %c443491996_i32, %c443491996_i32, %c401404571_i32, %c291508864_i32, %c661411533_i32, %extracted : tensor<9xi32>
    %132 = bufferization.clone %alloc_8 : memref<16x16xf16> to memref<16x16xf16>
    %133 = math.exp2 %4 : tensor<3xf32>
    %134 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2)>(%c5, %64, %c7, %c14)
    %true_33 = index.bool.constant true
    %135 = index.castu %c13 : index to i32
    memref.assume_alignment %121, 2 : memref<9xi1>
    memref.copy %alloc_10, %alloc_7 : memref<3xf32> to memref<3xf32>
    %136 = index.ceildivs %127, %76
    %expanded_34 = tensor.expand_shape %3 [[0, 1]] : tensor<9xi64> into tensor<9x1xi64>
    %alloc_35 = memref.alloc() : memref<16x16xi32>
    %137 = vector.gather %alloc_35[%57, %c7] [%50], %78, %115 : memref<16x16xi32>, vector<9xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
    %138 = math.log2 %cst_0 : f32
    %139 = math.sqrt %20 : tensor<3xf32>
    %140 = memref.atomic_rmw assign %cst, %alloc_8[%c10, %c3] : (f16, memref<16x16xf16>) -> f16
    %141 = vector.broadcast %69 : i64 to vector<9xi64>
    %142 = vector.gather %alloc_21[%c14] [%52], %78, %141 : memref<9xi64>, vector<9xi32>, vector<9xi1>, vector<9xi64> into vector<9xi64>
    memref.store %cst_2, %alloc_18[%c7] : memref<9xf16>
    %143 = arith.remf %cst_2, %cst_2 : f16
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %144 = vector.transfer_read %alloc_35[%c15, %23], %c0_i32 : memref<16x16xi32>, vector<i32>
    %145 = arith.divui %extracted, %c401404571_i32 : i32
    %146 = vector.bitcast %99 : vector<3xi1> to vector<3xi1>
    affine.store %c291508864_i32, %alloc_35[%c1, %c15] : memref<16x16xi32>
    %147 = math.round %cst_1 : f32
    %148 = arith.maxsi %true_24, %true : i1
    %149 = arith.ceildivsi %69, %extracted_29 : i64
    %150 = arith.maxsi %c1_i32, %c661411533_i32 : i32
    %151 = math.expm1 %7 : tensor<16x16xf32>
    %152 = vector.shuffle %51, %99 [0, 1, 3, 5, 8, 9] : vector<9xi1>, vector<3xi1>
    %153 = arith.cmpi uge, %c15044_i16, %c15044_i16 : i16
    %154 = vector.multi_reduction <or>, %99, %false [0] : vector<3xi1> to i1
    %155 = arith.ceildivsi %extracted, %extracted : i32
    %156 = arith.cmpf une, %cst_3, %cst_3 : f16
    %157 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %101, %101, %c289678454_i64 : vector<3xi64>, vector<3xi64> into i64
    %158 = index.maxu %c8, %c3
    %159 = arith.divsi %extracted, %c443491996_i32 : i32
    %160 = math.ipowi %c661411533_i32, %c443491996_i32 : i32
    %161 = arith.ceildivsi %true_24, %true_24 : i1
    %162 = vector.multi_reduction <and>, %50, %115 [] : vector<9xi32> to vector<9xi32>
    %163 = index.maxu %158, %c10
    %164 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0)>(%134, %163, %c1, %c10)
    %165 = index.mul %c14, %c10
    %166 = arith.minui %c1171249303_i64, %c1171249303_i64 : i64
    %167 = index.casts %154 : i1 to index
    %168 = index.divu %c8, %c5
    %169 = math.rsqrt %from_elements : tensor<9xf32>
    %170 = math.ceil %20 : tensor<3xf32>
    %171 = math.log %7 : tensor<16x16xf32>
    %172 = arith.subi %true_33, %true_23 : i1
    %173 = arith.shrui %c1_i32, %c1_i32 : i32
    %174 = index.sizeof
    %175 = memref.atomic_rmw assign %c661411533_i32, %alloc[%c0] : (i32, memref<9xi32>) -> i32
    %176 = math.ceil %cst_2 : f16
    %177 = arith.divsi %true_24, %true_33 : i1
    %178 = vector.reduction <minsi>, %100 : vector<3xi32> into i32
    %179 = bufferization.to_tensor %alloc_8 : memref<16x16xf16>
    %180 = affine.max affine_map<(d0, d1) -> (d1 - d0, d1 + 132, (d1 + d0) mod 32, (d1 - 4) floordiv 8)>(%c8, %c11)
    %181 = math.atan %cst_2 : f16
    %182 = math.log1p %55 : tensor<9xf32>
    %183 = arith.ori %true_33, %true : i1
    %184 = affine.load %alloc_9[%c12] : memref<3xf16>
    %185 = arith.minui %69, %c1171249303_i64 : i64
    %186 = arith.maxui %true_23, %true_33 : i1
    %rank_36 = tensor.rank %15 : tensor<3xi32>
    %cst_37 = arith.constant 1.000000e+00 : f32
    %187 = vector.transfer_read %20[%174], %cst_37 : tensor<3xf32>, vector<f32>
    %188 = scf.while (%arg1 = %cst_3) : (f16) -> f16 {
      scf.if %154 {
        affine.store %cst_4, %alloc_19[%c15, %c13] : memref<16x16xf32>
        %258 = math.ctpop %154 : i1
        %259 = math.exp %cst_4 : f32
        %260 = arith.ceildivsi %69, %69 : i64
        %261 = arith.divf %cst_1, %cst_1 : f32
        %262 = math.ipowi %c443491996_i32, %c443491996_i32 : i32
        %263 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %50, %50, %c1_i32 : vector<9xi32>, vector<9xi32> into i32
        %264 = index.ceildivu %127, %c7
      }
      %251 = arith.shrsi %true_23, %true_24 : i1
      %252 = affine.load %alloc_11[%c14] : memref<9xf16>
      %253 = math.tan %cst_1 : f32
      %254 = arith.divui %c-23908_i16, %c15044_i16 : i16
      %255 = math.fpowi %from_elements, %1 : tensor<9xf32>, tensor<9xi32>
      %256 = math.exp2 %cst : f16
      %257 = index.ceildivu %59, %c11
      scf.condition(%false) %arg1 : f16
    } do {
    ^bb0(%arg1: f16):
      %251 = arith.shli %true_23, %true_24 : i1
      %252 = math.log1p %cst : f16
      %253 = math.log10 %0 : tensor<16x16xf32>
      memref.assume_alignment %alloc_15, 2 : memref<9xi64>
      %254 = math.ceil %55 : tensor<9xf32>
      %255 = math.log2 %55 : tensor<9xf32>
      %256 = math.atan %cst : f16
      %257 = arith.ori %c1434678407_i32, %c291508864_i32 : i32
      %258 = math.floor %4 : tensor<3xf32>
      memref.copy %alloc_11, %alloc_18 : memref<9xf16> to memref<9xf16>
      %259 = math.powf %cst_3, %cst_2 : f16
      %260 = math.ipowi %true_23, %true_33 : i1
      %rank_44 = tensor.rank %5 : tensor<9xi16>
      %261 = arith.muli %true, %true_33 : i1
      %expanded_45 = tensor.expand_shape %11 [[0], [1, 2]] : tensor<16x16xi16> into tensor<16x16x1xi16>
      %262 = arith.divui %true_23, %true : i1
      scf.yield %cst : f16
    }
    %189 = vector.broadcast %154 : i1 to vector<3x3xi1>
    %190 = vector.outerproduct %146, %99, %189 {kind = #vector.kind<xor>} : vector<3xi1>, vector<3xi1>
    %191 = math.tanh %179 : tensor<16x16xf16>
    %cast = tensor.cast %10 : tensor<9xi1> to tensor<?xi1>
    %192 = index.maxu %64, %c12
    %193 = bufferization.clone %alloc_8 : memref<16x16xf16> to memref<16x16xf16>
    %194 = math.atan %7 : tensor<16x16xf32>
    memref.store %cst_37, %alloc_7[%c1] : memref<3xf32>
    %195 = arith.divui %true, %false : i1
    %196 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %142, %141, %c1171249303_i64 : vector<9xi64>, vector<9xi64> into i64
    %197 = math.rsqrt %cst_2 : f16
    %198 = math.log1p %cst_0 : f32
    %199 = arith.ori %extracted, %c661411533_i32 : i32
    %200 = math.rsqrt %0 : tensor<16x16xf32>
    %201 = arith.remsi %c443491996_i32, %c291508864_i32 : i32
    %202 = index.ceildivu %c3, %63
    %203 = memref.atomic_rmw addf %cst_2, %alloc_8[%c0, %c15] : (f16, memref<16x16xf16>) -> f16
    %204 = arith.minui %true, %true_24 : i1
    %205 = arith.muli %c1171249303_i64, %c1171249303_i64 : i64
    %206 = affine.apply affine_map<(d0, d1) -> (0)>(%167, %c7)
    %207 = index.ceildivs %c5, %c3
    %208 = affine.load %alloc_6[%c2, %c8] : memref<16x16xf16>
    %209 = arith.remf %184, %cst_2 : f16
    %210 = tensor.empty(%23) : tensor<?xi1>
    %211 = math.ctpop %true_23 : i1
    %212 = index.casts %c5 : index to i32
    %213 = memref.load %alloc_10[%c0] : memref<3xf32>
    %214 = math.powf %0, %0 : tensor<16x16xf32>
    %215 = arith.remf %cst_5, %cst_5 : f32
    %from_elements_38 = tensor.from_elements %cst_2, %cst_3, %cst, %184, %208, %cst_2, %cst_3, %208, %208 : tensor<9xf16>
    %216 = scf.while (%arg1 = %cst_4) : (f32) -> f32 {
      %251 = math.tan %cst_37 : f32
      %252 = math.atan %20 : tensor<3xf32>
      %253 = math.log2 %7 : tensor<16x16xf32>
      %true_44 = index.bool.constant true
      %254 = index.sizeof
      %255 = vector.gather %from_elements_38[%76] [%50], %51, %41 : tensor<9xf16>, vector<9xi32>, vector<9xi1>, vector<9xf16> into vector<9xf16>
      %256 = arith.muli %c1171249303_i64, %69 : i64
      %257 = math.log2 %cst_37 : f32
      scf.condition(%154) %cst_1 : f32
    } do {
    ^bb0(%arg1: f32):
      memref.copy %alloc_17, %193 : memref<16x16xf16> to memref<16x16xf16>
      %251 = bufferization.to_tensor %alloc_7 : memref<3xf32>
      bufferization.dealloc_tensor %15 : tensor<3xi32>
      %252 = math.ipowi %from_elements_32, %1 : tensor<9xi32>
      %253 = arith.shli %c-23908_i16, %c15044_i16 : i16
      %254 = affine.load %alloc_22[] : memref<i64>
      %255 = arith.remsi %254, %254 : i64
      scf.if %true {
        %263 = arith.muli %true_24, %154 : i1
        %alloc_45 = memref.alloc() : memref<3xi64>
        memref.copy %alloc_28, %alloc_45 : memref<3xi64> to memref<3xi64>
        %264 = arith.ceildivsi %false, %false : i1
        %265 = math.ceil %7 : tensor<16x16xf32>
        %266 = math.log2 %21 : tensor<f32>
        %267 = vector.broadcast %208 : f16 to vector<9x9xf16>
        %268 = vector.outerproduct %41, %41, %267 {kind = #vector.kind<minf>} : vector<9xf16>, vector<9xf16>
        %269 = index.sizeof
        %270 = arith.ceildivsi %c1434678407_i32, %c401404571_i32 : i32
      }
      %256 = math.tanh %7 : tensor<16x16xf32>
      %257 = arith.divsi %69, %254 : i64
      %258 = math.round %cst_1 : f32
      %259 = vector.shuffle %141, %141 [2, 3, 4, 5, 8, 11, 17] : vector<9xi64>, vector<9xi64>
      %rank_44 = tensor.rank %15 : tensor<3xi32>
      %260 = math.expm1 %208 : f16
      %261 = index.maxu %64, %76
      %262 = math.log10 %cst_37 : f32
      scf.yield %cst_4 : f32
    }
    %217 = math.log10 %4 : tensor<3xf32>
    %218 = arith.maxf %184, %cst : f16
    %219 = math.log1p %0 : tensor<16x16xf32>
    %220 = arith.remf %cst_5, %cst_4 : f32
    %from_elements_39 = tensor.from_elements %cst_3, %cst_2, %cst_2, %208, %184, %cst, %184, %208, %cst_2, %184, %208, %cst, %cst, %cst_3, %184, %cst, %cst, %cst_3, %cst, %184, %208, %cst_3, %cst, %184, %cst_3, %cst_2, %208, %cst_2, %184, %208, %cst, %184, %208, %cst_3, %cst_3, %cst, %cst_2, %cst_2, %cst, %cst_3, %cst_3, %cst_3, %cst, %cst, %184, %cst_2, %cst_2, %208, %cst_3, %cst_3, %cst, %cst_3, %cst, %cst, %cst_2, %184, %cst_3, %cst_2, %cst_3, %208, %184, %cst, %cst_3, %184, %cst, %cst, %cst_2, %208, %184, %184, %cst_2, %184, %208, %cst, %cst, %cst_3, %cst, %cst_3, %208, %cst_2, %cst_3, %cst, %cst_2, %cst, %cst_2, %cst, %208, %184, %208, %cst_3, %cst_3, %184, %cst, %208, %cst, %cst_3, %208, %cst_2, %cst_3, %cst, %cst_2, %cst_3, %cst_2, %184, %208, %cst_2, %184, %cst, %184, %184, %208, %cst_2, %184, %cst_3, %cst, %cst, %cst_2, %184, %184, %cst_2, %cst, %184, %cst_2, %184, %208, %cst_3, %184, %cst, %208, %cst_2, %cst_3, %cst, %208, %cst_3, %cst, %cst_3, %cst_3, %cst_3, %184, %cst_2, %cst, %208, %184, %cst_2, %208, %cst_2, %cst, %184, %208, %cst_3, %cst, %cst, %184, %cst_2, %cst_2, %cst_3, %cst_3, %cst, %184, %cst_2, %cst_3, %cst, %184, %208, %cst, %cst, %208, %cst, %cst_3, %208, %cst, %cst_2, %cst_3, %cst_3, %cst_3, %184, %cst_2, %cst_2, %cst_2, %cst_2, %184, %184, %cst_2, %208, %208, %cst, %cst_3, %208, %cst_2, %184, %cst, %cst_2, %cst, %208, %208, %cst_3, %cst_3, %cst_2, %208, %184, %cst_3, %cst, %cst_2, %208, %184, %cst_3, %cst_2, %208, %cst, %184, %cst_3, %cst_3, %cst, %184, %cst_3, %184, %184, %cst_3, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %208, %cst, %cst_2, %184, %cst_2, %cst_2, %cst_2, %cst_3, %cst_3, %cst_2, %cst_2, %cst, %208, %cst_2, %cst_2, %cst_2, %208, %cst, %cst, %cst_3, %cst, %cst_3, %cst, %208, %cst_2, %cst, %184, %184, %184, %184, %cst, %184, %cst_3 : tensor<16x16xf16>
    %221 = math.sqrt %179 : tensor<16x16xf16>
    %222 = affine.min affine_map<(d0, d1) -> ((d0 + 2) floordiv 16, 0, d0, d0 + 2)>(%c14, %167)
    %223 = arith.cmpi slt, %true_33, %true_23 : i1
    %expanded_40 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<16x16xf32> into tensor<16x16x1xf32>
    %224 = arith.remsi %c401404571_i32, %c661411533_i32 : i32
    %225 = math.tanh %cst_0 : f32
    %226 = arith.divui %false, %true_33 : i1
    %227 = math.log10 %from_elements_39 : tensor<16x16xf16>
    %228 = affine.if affine_set<(d0) : (d0 - ((d0 floordiv 128) ceildiv 128 + 32) - ((d0 floordiv 128) ceildiv 128 + 32) * 4 == 0, (d0 floordiv 128) ceildiv 128 + 32 >= 0)>(%c13) -> i1 {
      %c1492570569_i64 = arith.constant 1492570569 : i64
      %251 = arith.cmpf une, %cst, %cst_2 : f16
      memref.assume_alignment %alloc_9, 8 : memref<3xf16>
      %252 = vector.broadcast %true_23 : i1 to vector<9x9xi1>
      %253 = vector.outerproduct %78, %51, %252 {kind = #vector.kind<minui>} : vector<9xi1>, vector<9xi1>
      %254 = math.ipowi %2, %2 : tensor<16x16xi1>
      %255 = math.log2 %55 : tensor<9xf32>
      scf.execute_region {
        %257 = arith.shrsi %false, %true_33 : i1
        %258 = arith.shrui %extracted, %c443491996_i32 : i32
        %259 = tensor.empty(%c0) : tensor<?xi64>
        %260 = arith.divui %69, %extracted_29 : i64
        %261 = arith.ceildivsi %154, %154 : i1
        %alloc_44 = memref.alloc() : memref<16x16xi32>
        memref.copy %alloc_35, %alloc_44 : memref<16x16xi32> to memref<16x16xi32>
        %262 = math.log10 %21 : tensor<f32>
        memref.copy %alloc_6, %alloc_8 : memref<16x16xf16> to memref<16x16xf16>
        %263 = index.ceildivu %c3, %167
        %264 = arith.maxsi %extracted, %c291508864_i32 : i32
        %265 = index.sub %192, %c14
        %266 = math.ctpop %c1171249303_i64 : i64
        %267 = affine.max affine_map<(d0, d1) -> ((d0 + 8) * 8, d1, d0 + 8)>(%c15, %c9)
        affine.store %c1434678407_i32, %alloc_14[%c6] : memref<9xi32>
        %268 = math.log2 %4 : tensor<3xf32>
        %269 = math.rsqrt %184 : f16
        scf.yield
      }
      %256 = arith.remf %cst_37, %cst_37 : f32
      affine.yield %false : i1
    } else {
      %251 = index.maxu %32, %c14
      %252 = math.sqrt %cst_3 : f16
      %rank_44 = tensor.rank %expanded_40 : tensor<16x16x1xf32>
      %253 = index.sizeof
      %254 = arith.ceildivsi %c15044_i16, %c-23908_i16 : i16
      %255 = math.fpowi %cst_3, %c1_i32 : f16, i32
      %256 = math.rsqrt %cst_2 : f16
      %257 = math.sqrt %4 : tensor<3xf32>
      affine.yield %true_23 : i1
    }
    %229 = affine.max affine_map<(d0, d1) -> (d1 floordiv 32, d1 floordiv 32, 0, (d1 * 2 + 8) mod 64)>(%c15, %59)
    %230 = arith.shrsi %154, %true_23 : i1
    %231 = math.log1p %cst_3 : f16
    %232 = math.ctpop %14 : tensor<16x16xi64>
    %extracted_41 = tensor.extract %13[%c2] : tensor<9xi1>
    %233 = arith.cmpf true, %cst_0, %cst_1 : f32
    %234 = arith.ceildivsi %c291508864_i32, %c291508864_i32 : i32
    %235 = vector.bitcast %50 : vector<9xi32> to vector<9xi32>
    %236 = vector.insert %184, %41 [4] : f16 into vector<9xf16>
    %237 = math.atan %cst : f16
    %238 = affine.load %193[%c14, %c1] : memref<16x16xf16>
    %splat = tensor.splat %extracted_29 : tensor<9xi64>
    %239 = bufferization.clone %alloc_13 : memref<3xf32> to memref<3xf32>
    %alloc_42 = memref.alloc() : memref<9xi16>
    %240 = vector.broadcast %c15044_i16 : i16 to vector<3xi16>
    %241 = vector.gather %alloc_42[%c3] [%100], %146, %240 : memref<9xi16>, vector<3xi32>, vector<3xi1>, vector<3xi16> into vector<3xi16>
    %expanded_43 = tensor.expand_shape %55 [[0, 1]] : tensor<9xf32> into tensor<9x1xf32>
    %242 = arith.divui %154, %true_24 : i1
    %243 = scf.while (%arg1 = %141) : (vector<9xi64>) -> vector<9xi64> {
      %251 = memref.atomic_rmw minf %208, %alloc_8[%c5, %c15] : (f16, memref<16x16xf16>) -> f16
      %252 = math.log %55 : tensor<9xf32>
      %253 = affine.load %alloc_8[%c12, %c11] : memref<16x16xf16>
      %collapsed_44 = tensor.collapse_shape %0 [[0, 1]] : tensor<16x16xf32> into tensor<256xf32>
      %254 = math.tan %20 : tensor<3xf32>
      bufferization.dealloc_tensor %8 : tensor<9xi1>
      %255 = arith.remsi %extracted, %extracted : i32
      %256 = arith.shli %c1_i32, %c291508864_i32 : i32
      scf.condition(%154) %141 : vector<9xi64>
    } do {
    ^bb0(%arg1: vector<9xi64>):
      %251 = math.log1p %7 : tensor<16x16xf32>
      %252 = bufferization.to_tensor %alloc_35 : memref<16x16xi32>
      %253 = vector.broadcast %cst_1 : f32 to vector<9xf32>
      %254 = vector.fma %253, %253, %253 : vector<9xf32>
      %255 = math.expm1 %from_elements : tensor<9xf32>
      %256 = affine.load %alloc[%c6] : memref<9xi32>
      %257 = index.maxs %202, %174
      %258 = arith.shli %c661411533_i32, %c661411533_i32 : i32
      %rank_44 = tensor.rank %5 : tensor<9xi16>
      %259 = math.rsqrt %from_elements_39 : tensor<16x16xf16>
      %260 = math.log1p %20 : tensor<3xf32>
      %collapsed_45 = tensor.collapse_shape %2 [[0, 1]] : tensor<16x16xi1> into tensor<256xi1>
      %261 = math.fpowi %0, %9 : tensor<16x16xf32>, tensor<16x16xi32>
      %c1_i16 = arith.constant 1 : i16
      %262 = vector.transfer_read %from_elements_25[%rank_44], %c1_i16 : tensor<9xi16>, vector<i16>
      %263 = math.ipowi %c661411533_i32, %c291508864_i32 : i32
      %cst_46 = arith.constant 1.000000e+00 : f16
      %cst_47 = arith.constant 0.000000e+00 : f16
      %264 = vector.transfer_read %alloc_6[%207, %127], %cst_47 : memref<16x16xf16>, vector<f16>
      %265 = bufferization.clone %alloc_20 : memref<3xf32> to memref<3xf32>
      scf.yield %142 : vector<9xi64>
    }
    %244 = arith.xori %154, %true_23 : i1
    %245 = math.ceil %cst_0 : f32
    %246 = tensor.empty() : tensor<9xi32>
    %247 = linalg.copy ins(%1 : tensor<9xi32>) outs(%246 : tensor<9xi32>) -> tensor<9xi32>
    %248 = tensor.empty() : tensor<16x16xf16>
    %transposed = linalg.transpose ins(%alloc_6 : memref<16x16xf16>) outs(%248 : tensor<16x16xf16>) permutation = [1, 0] 
    %249 = tensor.empty() : tensor<i64>
    %reduced = linalg.reduce ins(%splat : tensor<9xi64>) outs(%249 : tensor<i64>) dimensions = [0] 
      (%in: i64, %init: i64) {
        %251 = arith.cmpf ult, %cst, %cst_2 : f16
        %252 = memref.load %alloc_15[%c0] : memref<9xi64>
        %253 = math.ctpop %247 : tensor<9xi32>
        %extracted_44 = tensor.extract %7[%c6, %c3] : tensor<16x16xf32>
        %254 = arith.divsi %extracted, %c291508864_i32 : i32
        %255 = affine.apply affine_map<(d0) -> (-(((d0 ceildiv 8) ceildiv 4) * 4 + d0 ceildiv 8))>(%23)
        affine.store %c1434678407_i32, %alloc_35[%c12, %c3] : memref<16x16xi32>
        %256 = arith.mulf %cst_5, %extracted_44 : f32
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    scf.parallel (%arg1, %arg2) = (%c12, %64) to (%192, %c3) step (%c3, %c9) {
      %251 = math.sqrt %cst_3 : f16
      %252 = math.expm1 %0 : tensor<16x16xf32>
      %253 = math.roundeven %cst : f16
      %254 = math.ceil %208 : f16
      %255 = arith.divsi %c289678454_i64, %c1171249303_i64 : i64
      %256 = index.maxs %158, %109
      %257 = math.cttz %9 : tensor<16x16xi32>
      %258 = vector.gather %alloc_9[%174] [%137], %51, %41 : memref<3xf16>, vector<9xi32>, vector<9xi1>, vector<9xf16> into vector<9xf16>
      %259 = bufferization.to_tensor %alloc : memref<9xi32>
      %260 = math.atan %expanded_43 : tensor<9x1xf32>
      %261 = math.sqrt %4 : tensor<3xf32>
      %262 = math.powf %7, %0 : tensor<16x16xf32>
      %263 = math.log2 %248 : tensor<16x16xf16>
      %264 = memref.load %239[%c2] : memref<3xf32>
      %265 = math.log2 %transposed : tensor<16x16xf16>
      scf.index_switch %63 
      case 1 {
        %266 = vector.shuffle %101, %98 [0] : vector<3xi64>, vector<3xi64>
        %267 = arith.divui %true_23, %true : i1
        %268 = math.atan %208 : f16
        %269 = index.mul %c11, %c11
        %270 = vector.multi_reduction <minui>, %141, %extracted_29 [0] : vector<9xi64> to i64
        %271 = index.maxs %174, %c12
        %272 = math.atan %7 : tensor<16x16xf32>
        %273 = vector.multi_reduction <or>, %50, %c443491996_i32 [0] : vector<9xi32> to i32
        %274 = index.maxu %c13, %c6
        %275 = math.log1p %expanded_43 : tensor<9x1xf32>
        %extracted_44 = tensor.extract %15[%c0] : tensor<3xi32>
        %276 = index.sizeof
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (-(d0 * 16 + 64), d0 * 16 + 128, d3 - (d0 * 16 + 128), 0)>(%rank, %c2, %136, %174)
        bufferization.dealloc_tensor %11 : tensor<16x16xi16>
        affine.store %c1171249303_i64, %alloc_15[%c1] : memref<9xi64>
        %278 = math.exp2 %4 : tensor<3xf32>
        scf.yield
      }
      case 2 {
        %266 = affine.load %alloc_11[%c6] : memref<9xf16>
        %267 = index.ceildivu %57, %165
        %268 = arith.minf %cst_1, %cst_5 : f32
        %269 = math.cttz %16 : tensor<9xi1>
        %270 = arith.remsi %true_24, %extracted_41 : i1
        %271 = math.rsqrt %4 : tensor<3xf32>
        %272 = tensor.empty(%c15) : tensor<?xf16>
        %rank_44 = tensor.rank %expanded_34 : tensor<9x1xi64>
        %273 = index.maxs %222, %c6
        %274 = math.rsqrt %cst_3 : f16
        %275 = vector.bitcast %33 : vector<16xf16> to vector<16xf16>
        %276 = vector.shuffle %33, %41 [2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 22] : vector<16xf16>, vector<9xf16>
        %c1_i32_45 = arith.constant 1 : i32
        %c0_i32_46 = arith.constant 0 : i32
        %277 = vector.transfer_read %246[%134], %c0_i32_46 : tensor<9xi32>, vector<i32>
        %278 = bufferization.to_tensor %193 : memref<16x16xf16>
        %279 = arith.remf %266, %184 : f16
        %280 = arith.minf %cst_2, %cst_3 : f16
        scf.yield
      }
      case 3 {
        %266 = index.sizeof
        %267 = vector.multi_reduction <and>, %240, %c15044_i16 [0] : vector<3xi16> to i16
        %268 = math.powf %208, %238 : f16
        %269 = tensor.empty() : tensor<9xi16>
        %270 = index.ceildivu %arg1, %136
        %271 = arith.divsi %true, %true_33 : i1
        %272 = arith.minsi %c661411533_i32, %c1434678407_i32 : i32
        %273 = vector.create_mask %c3, %59 : vector<16x16xi1>
        %274 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d0 + 14) * 2 + d2)>(%57, %c5, %167, %c5)
        %275 = arith.divui %c443491996_i32, %c443491996_i32 : i32
        %276 = memref.load %alloc_15[%c4] : memref<9xi64>
        %277 = index.maxu %180, %c4
        %278 = math.round %cst_37 : f32
        %279 = arith.minsi %c-23908_i16, %c15044_i16 : i16
        %280 = arith.divsi %154, %154 : i1
        %281 = arith.cmpi ugt, %267, %c15044_i16 : i16
        scf.yield
      }
      case 4 {
        %266 = arith.andi %extracted_41, %true : i1
        %true_44 = index.bool.constant true
        %from_elements_45 = tensor.from_elements %cst_3, %cst_3, %cst_2, %cst_2, %cst_2, %184, %208, %cst_3, %cst, %cst_2, %cst_2, %208, %cst_2, %cst, %cst, %238, %184, %238, %238, %cst_3, %cst_3, %cst, %cst_2, %184, %cst_3, %238, %cst, %208, %cst_3, %184, %cst_2, %cst, %238, %cst_2, %cst, %184, %cst_3, %208, %cst, %cst, %184, %cst_2, %cst, %cst_3, %184, %cst, %cst_3, %cst_2, %cst_3, %cst_3, %208, %cst_2, %238, %cst, %cst_3, %cst_3, %cst, %cst, %184, %cst_2, %238, %238, %208, %184, %238, %238, %184, %184, %cst_3, %cst, %cst_3, %cst, %184, %cst, %cst_2, %184, %cst_2, %cst, %238, %208, %184, %cst, %cst, %238, %184, %208, %184, %cst_3, %cst_2, %cst_3, %cst, %cst_2, %cst, %cst_2, %208, %184, %cst_2, %238, %238, %238, %cst, %cst_3, %cst, %cst_3, %238, %cst_3, %cst_3, %cst, %208, %238, %cst_3, %cst, %208, %238, %208, %cst, %cst_3, %238, %238, %cst, %208, %cst_2, %cst_2, %cst_3, %184, %cst_3, %cst_3, %cst_2, %cst_3, %208, %208, %cst_3, %238, %cst, %184, %cst, %184, %cst_3, %184, %cst, %cst, %cst_3, %cst_3, %184, %238, %208, %cst, %cst, %208, %cst_3, %238, %184, %208, %cst, %238, %cst, %cst_3, %208, %238, %184, %cst_3, %238, %208, %184, %cst_3, %208, %cst, %184, %184, %cst, %cst, %208, %cst_3, %cst_3, %cst_2, %cst_2, %238, %cst, %cst_2, %cst, %cst_2, %184, %208, %208, %cst_3, %cst, %238, %208, %208, %cst_2, %184, %cst_3, %cst_3, %cst_2, %cst, %cst, %208, %184, %208, %cst_2, %cst_3, %184, %184, %cst_3, %238, %cst_3, %cst, %cst, %208, %184, %208, %cst, %cst_2, %cst, %208, %cst, %cst_2, %238, %cst_2, %cst_3, %cst_3, %cst_2, %cst, %cst_2, %208, %cst_3, %184, %cst_2, %cst_2, %208, %cst, %238, %238, %cst, %238, %184, %208, %cst, %cst_3, %cst, %238, %184, %238, %cst_3, %184, %cst, %cst_3, %208, %cst_2, %cst, %cst_3, %208, %cst, %cst_3, %cst, %208 : tensor<16x16xf16>
        %267 = index.ceildivu %109, %c15
        %268 = math.rsqrt %cst_37 : f32
        %269 = math.absf %22 : tensor<f32>
        %270 = math.round %4 : tensor<3xf32>
        %inserted = tensor.insert %69 into %splat[%c4] : tensor<9xi64>
        %271 = vector.broadcast %true_23 : i1 to vector<16x16xi1>
        %272 = vector.broadcast %c1434678407_i32 : i32 to vector<16x16xi32>
        %273 = vector.gather %16[%97] [%272], %271, %271 : tensor<9xi1>, vector<16x16xi32>, vector<16x16xi1>, vector<16x16xi1> into vector<16x16xi1>
        %274 = vector.gather %alloc_21[%63] [%50], %78, %141 : memref<9xi64>, vector<9xi32>, vector<9xi1>, vector<9xi64> into vector<9xi64>
        %275 = math.tanh %4 : tensor<3xf32>
        %276 = arith.remf %cst_37, %cst_1 : f32
        memref.tensor_store %from_elements_45, %193 : memref<16x16xf16>
        %277 = arith.ceildivsi %c1_i32, %c1_i32 : i32
        %278 = math.log1p %from_elements_38 : tensor<9xf16>
        %279 = arith.maxf %184, %184 : f16
        scf.yield
      }
      default {
        %266 = arith.cmpf ueq, %cst, %cst : f16
        %267 = arith.shli %true_24, %true_24 : i1
        %268 = math.exp %4 : tensor<3xf32>
        %269 = arith.minf %cst_0, %cst_37 : f32
        %270 = bufferization.clone %alloc_10 : memref<3xf32> to memref<3xf32>
        %271 = math.cos %cst : f16
        %272 = math.log2 %184 : f16
        %273 = bufferization.to_memref %expanded_40 : memref<16x16x1xf32>
        %274 = arith.cmpi uge, %c289678454_i64, %69 : i64
        %275 = arith.divsi %extracted_29, %c289678454_i64 : i64
        %true_44 = index.bool.constant true
        %alloc_45 = memref.alloc() : memref<16x16xi32>
        memref.copy %alloc_35, %alloc_45 : memref<16x16xi32> to memref<16x16xi32>
        %276 = vector.broadcast %true : i1 to vector<16x16xi1>
        %277 = vector.broadcast %c443491996_i32 : i32 to vector<16x16xi32>
        %278 = vector.gather %from_elements_31[%127] [%277], %276, %276 : tensor<3xi1>, vector<16x16xi32>, vector<16x16xi1>, vector<16x16xi1> into vector<16x16xi1>
        %279 = index.maxu %136, %42
        %280 = affine.load %alloc_6[%c13, %c6] : memref<16x16xf16>
        %281 = vector.shuffle %99, %99 [1, 2, 5] : vector<3xi1>, vector<3xi1>
      }
      scf.yield
    }
    %250 = affine.vector_load %alloc_19[%167, %109] : memref<16x16xf32>, vector<16xf32>
    affine.vector_store %241, %alloc_42[%c9] : memref<9xi16>, vector<3xi16>
    vector.print %19 : vector<16xf16>
    vector.print %33 : vector<16xf16>
    vector.print %41 : vector<9xf16>
    vector.print %50 : vector<9xi32>
    vector.print %51 : vector<9xi1>
    vector.print %52 : vector<9xi32>
    vector.print %78 : vector<9xi1>
    vector.print %98 : vector<3xi64>
    vector.print %99 : vector<3xi1>
    vector.print %100 : vector<3xi32>
    vector.print %101 : vector<3xi64>
    vector.print %115 : vector<9xi32>
    vector.print %137 : vector<9xi32>
    vector.print %141 : vector<9xi64>
    vector.print %142 : vector<9xi64>
    vector.print %146 : vector<3xi1>
    vector.print %235 : vector<9xi32>
    vector.print %240 : vector<3xi16>
    vector.print %241 : vector<3xi16>
    vector.print %250 : vector<16xf32>
    vector.print %c-23908_i16 : i16
    vector.print %cst : f16
    vector.print %c15044_i16 : i16
    vector.print %cst_0 : f32
    vector.print %c661411533_i32 : i32
    vector.print %cst_1 : f32
    vector.print %cst_2 : f16
    vector.print %c289678454_i64 : i64
    vector.print %cst_3 : f16
    vector.print %cst_4 : f32
    vector.print %c1434678407_i32 : i32
    vector.print %c443491996_i32 : i32
    vector.print %c291508864_i32 : i32
    vector.print %c1171249303_i64 : i64
    vector.print %cst_5 : f32
    vector.print %c401404571_i32 : i32
    vector.print %true : i1
    vector.print %true_23 : i1
    vector.print %true_24 : i1
    vector.print %69 : i64
    vector.print %extracted : i32
    vector.print %extracted_29 : i64
    vector.print %false : i1
    vector.print %true_33 : i1
    vector.print %c1_i32 : i32
    vector.print %154 : i1
    vector.print %184 : f16
    vector.print %cst_37 : f32
    vector.print %208 : f16
    vector.print %extracted_41 : i1
    vector.print %238 : f16
    return %c7 : index
  }
}
