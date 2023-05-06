module {
  func.func @func1(%arg0: i32) {
    %c18241_i16 = arith.constant 18241 : i16
    %true = arith.constant true
    %cst = arith.constant 4.102400e+04 : f16
    %true_0 = arith.constant true
    %c1897752162_i32 = arith.constant 1897752162 : i32
    %false = arith.constant false
    %c1912367194_i64 = arith.constant 1912367194 : i64
    %c1028838234_i64 = arith.constant 1028838234 : i64
    %c754390120_i64 = arith.constant 754390120 : i64
    %false_1 = arith.constant false
    %cst_2 = arith.constant 0x4E3C06BC : f32
    %c828314368_i32 = arith.constant 828314368 : i32
    %true_3 = arith.constant true
    %cst_4 = arith.constant 0x4C70124E : f32
    %c-13670_i16 = arith.constant -13670 : i16
    %c1116139000_i32 = arith.constant 1116139000 : i32
    %0 = tensor.empty() : tensor<10x9xi64>
    %1 = tensor.empty() : tensor<10x9xi64>
    %2 = tensor.empty() : tensor<10x9xi16>
    %3 = tensor.empty() : tensor<10x9xi32>
    %4 = tensor.empty() : tensor<12x15x12xi64>
    %5 = tensor.empty() : tensor<12x10xf32>
    %6 = tensor.empty() : tensor<12x15x12xi32>
    %7 = tensor.empty() : tensor<12x15x12xf16>
    %8 = tensor.empty() : tensor<12x10xi1>
    %9 = tensor.empty() : tensor<12x10xi16>
    %10 = tensor.empty() : tensor<10x9xi16>
    %11 = tensor.empty() : tensor<12x10xi16>
    %12 = tensor.empty() : tensor<12x10xi16>
    %13 = tensor.empty() : tensor<10x9xf32>
    %14 = tensor.empty() : tensor<12x15x12xi1>
    %15 = tensor.empty() : tensor<10x10xi16>
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
    %alloc = memref.alloc() : memref<12x10xi16>
    %alloc_5 = memref.alloc() : memref<12x15x12xi1>
    %alloc_6 = memref.alloc() : memref<10x10xi16>
    %alloc_7 = memref.alloc() : memref<10x9xf32>
    %alloc_8 = memref.alloc() : memref<12x15x12xf16>
    %alloc_9 = memref.alloc() : memref<12x15x12xi1>
    %alloc_10 = memref.alloc() : memref<12x10xi16>
    %alloc_11 = memref.alloc() : memref<10x9xf32>
    %alloc_12 = memref.alloc() : memref<10x10xi1>
    %alloc_13 = memref.alloc() : memref<10x9xi64>
    %alloc_14 = memref.alloc() : memref<10x9xf32>
    %alloc_15 = memref.alloc() : memref<10x9xi32>
    %alloc_16 = memref.alloc() : memref<12x10xf16>
    %alloc_17 = memref.alloc() : memref<12x10xf32>
    %alloc_18 = memref.alloc() : memref<12x15x12xf32>
    %alloc_19 = memref.alloc() : memref<10x10xf32>
    %16 = tensor.empty() : tensor<12x10xi1>
    %17 = linalg.copy ins(%8 : tensor<12x10xi1>) outs(%16 : tensor<12x10xi1>) -> tensor<12x10xi1>
    %18 = tensor.empty() : tensor<12x12x15xi64>
    %transposed = linalg.transpose ins(%4 : tensor<12x15x12xi64>) outs(%18 : tensor<12x12x15xi64>) permutation = [2, 0, 1] 
    %19 = tensor.empty() : tensor<9xf32>
    %reduced = linalg.reduce ins(%13 : tensor<10x9xf32>) outs(%19 : tensor<9xf32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %268 = tensor.empty() : tensor<10x9xi16>
        %269 = linalg.matmul ins(%15, %10 : tensor<10x10xi16>, tensor<10x9xi16>) outs(%268 : tensor<10x9xi16>) -> tensor<10x9xi16>
        %270 = math.exp2 %cst_2 : f32
        %271 = vector.broadcast %false_1 : i1 to vector<9xi1>
        %272 = vector.maskedload %alloc_12[%c4, %c2], %271, %271 : memref<10x10xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %273 = arith.andi %c754390120_i64, %c1028838234_i64 : i64
        %274 = scf.execute_region -> index {
          %278 = math.log %init : f32
          memref.store %true, %alloc_12[%c1, %c5] : memref<10x10xi1>
          %279 = math.exp %5 : tensor<12x10xf32>
          %280 = arith.remui %false, %true : i1
          %c1394081393_i64 = arith.constant 1394081393 : i64
          %281 = memref.atomic_rmw assign %init, %alloc_18[%c0, %c8, %c3] : (f32, memref<12x15x12xf32>) -> f32
          affine.store %true_0, %alloc_12[%c9, %c8] : memref<10x10xi1>
          %282 = math.round %cst_4 : f32
          %283 = vector.flat_transpose %271 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
          %284 = arith.maxf %cst_4, %cst_4 : f32
          %285 = math.powf %13, %13 : tensor<10x9xf32>
          %286 = bufferization.to_memref %15 : memref<10x10xi16>
          %287 = math.rsqrt %7 : tensor<12x15x12xf16>
          %288 = math.ctpop %4 : tensor<12x15x12xi64>
          %289 = vector.matrix_multiply %271, %283 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi1>, vector<9xi1>) -> vector<1xi1>
          %290 = arith.negf %cst_2 : f32
          scf.yield %c4 : index
        }
        %275 = arith.minui %false, %false_1 : i1
        %276 = math.absf %5 : tensor<12x10xf32>
        %277 = index.ceildivu %c5, %274
        %cst_44 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_44 : f32
      }
    %20 = scf.parallel (%arg1, %arg2) = (%c14, %c13) to (%c2, %c14) step (%c12, %c10) init (%c-13670_i16) -> i16 {
      %268 = math.ctpop %c1897752162_i32 : i32
      memref.store %true_0, %alloc_5[%c8, %c8, %c2] : memref<12x15x12xi1>
      %269 = vector.broadcast %c-13670_i16 : i16 to vector<1xi16>
      %270 = vector.extract %269[0] : vector<1xi16>
      %271 = vector.splat %c18241_i16 : vector<12x10xi16>
      %272 = bufferization.to_memref %3 : memref<10x9xi32>
      %273 = vector.insert %c18241_i16, %269 [0] : i16 into vector<1xi16>
      %274 = math.ceil %cst : f16
      %275 = vector.insertelement %c18241_i16, %269[%c3 : index] : vector<1xi16>
      %276 = memref.alloca_scope  -> (f32) {
        %281 = math.ipowi %9, %9 : tensor<12x10xi16>
        %282 = math.rsqrt %cst_4 : f32
        %283 = bufferization.clone %alloc_6 : memref<10x10xi16> to memref<10x10xi16>
        %284 = index.floordivs %c9, %c4
        %285 = arith.shrui %c-13670_i16, %c18241_i16 : i16
        %286 = vector.transpose %269, [0] : vector<1xi16> to vector<1xi16>
        %287 = affine.load %alloc_10[%c10, %c8] : memref<12x10xi16>
        %splat = tensor.splat %true_3 : tensor<12x15x12xi1>
        %288 = math.tan %cst_2 : f32
        %extracted_45 = tensor.extract %0[%c1, %c7] : tensor<10x9xi64>
        %289 = index.maxu %c6, %c4
        %290 = math.log1p %7 : tensor<12x15x12xf16>
        %291 = vector.transpose %269, [0] : vector<1xi16> to vector<1xi16>
        %292 = arith.floordivsi %c1912367194_i64, %extracted_45 : i64
        %alloc_46 = memref.alloc() : memref<12x12x15xi64>
        memref.tensor_store %transposed, %alloc_46 : memref<12x12x15xi64>
        %293 = vector.extract %269[0] : vector<1xi16>
        %294 = vector.splat %c12 : vector<10x10xindex>
        %295 = math.sqrt %5 : tensor<12x10xf32>
        %splat_47 = tensor.splat %false_1 : tensor<10x9xi1>
        %296 = vector.transpose %269, [0] : vector<1xi16> to vector<1xi16>
        %297 = arith.andi %false_1, %true_3 : i1
        memref.store %cst_2, %alloc_11[%c2, %c3] : memref<10x9xf32>
        %298 = math.fma %cst_4, %cst_2, %cst_4 : f32
        %299 = index.add %c7, %c12
        %300 = math.absf %13 : tensor<10x9xf32>
        memref.copy %alloc_9, %alloc_5 : memref<12x15x12xi1> to memref<12x15x12xi1>
        %301 = arith.ceildivsi %c754390120_i64, %c1912367194_i64 : i64
        vector.print %269 : vector<1xi16>
        %302 = math.log %5 : tensor<12x10xf32>
        %alloc_48 = memref.alloc() : memref<12x15x12xf16>
        %303 = index.floordivs %c12, %c1
        %304 = math.ctlz %16 : tensor<12x10xi1>
        memref.alloca_scope.return %cst_4 : f32
      }
      affine.store %c754390120_i64, %alloc_13[%c14, %c8] : memref<10x9xi64>
      %277 = math.fma %reduced, %reduced, %reduced : tensor<9xf32>
      vector.print %269 : vector<1xi16>
      %278 = math.exp %5 : tensor<12x10xf32>
      %rank_44 = tensor.rank %14 : tensor<12x15x12xi1>
      %279 = vector.splat %arg2 : vector<12x15x12xindex>
      %280 = math.powf %5, %5 : tensor<12x10xf32>
      %c0_i16 = arith.constant 0 : i16
      scf.reduce(%c0_i16)  : i16 {
      ^bb0(%arg3: i16, %arg4: i16):
        %281 = index.add %c0, %c3
        %282 = math.fma %5, %5, %5 : tensor<12x10xf32>
        %283 = vector.broadcast %c0_i16 : i16 to vector<1x1xi16>
        %284 = vector.outerproduct %269, %269, %283 {kind = #vector.kind<minui>} : vector<1xi16>, vector<1xi16>
        %285 = arith.divsi %c1912367194_i64, %c754390120_i64 : i64
        %alloca = memref.alloca() : memref<10x10xi32>
        %286 = arith.minf %276, %cst_4 : f32
        %287 = bufferization.clone %alloc_16 : memref<12x10xf16> to memref<12x10xf16>
        %288 = memref.load %alloc_16[%c11, %c1] : memref<12x10xf16>
        %c1_i16 = arith.constant 1 : i16
        scf.reduce.return %c1_i16 : i16
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_8[%c1, %c11, %c2] : memref<12x15x12xf16>, vector<10xf16>
    affine.vector_store %21, %alloc_8[%c7, %c5, %c7] : memref<12x15x12xf16>, vector<10xf16>
    %22 = tensor.empty() : tensor<9xf32>
    %23 = tensor.empty() : tensor<f32>
    %24 = linalg.dot ins(%19, %22 : tensor<9xf32>, tensor<9xf32>) outs(%23 : tensor<f32>) -> tensor<f32>
    %25 = vector.bitcast %21 : vector<10xf16> to vector<10xf16>
    %26 = arith.divui %c1897752162_i32, %c1116139000_i32 : i32
    %27 = vector.splat %true_0 : vector<10x9xi1>
    %28 = vector.multi_reduction <maxf>, %25, %21 [] : vector<10xf16> to vector<10xf16>
    %rank = tensor.rank %8 : tensor<12x10xi1>
    %alloc_20 = memref.alloc() : memref<12x15x12xi1>
    %29 = index.castu %false : i1 to index
    %30 = arith.addf %cst_4, %cst_2 : f32
    scf.execute_region {
      %268 = math.cttz %1 : tensor<10x9xi64>
      %269 = vector.insertelement %cst, %25[%c14 : index] : vector<10xf16>
      %inserted = tensor.insert %cst into %7[%c4, %c6, %c3] : tensor<12x15x12xf16>
      %270 = math.ctlz %false_1 : i1
      %271 = arith.andi %c754390120_i64, %c754390120_i64 : i64
      %272 = affine.for %arg1 = 0 to 116 iter_args(%arg2 = %13) -> (tensor<10x9xf32>) {
        affine.yield %arg2 : tensor<10x9xf32>
      }
      %273 = math.sqrt %19 : tensor<9xf32>
      %274 = vector.splat %c9 : vector<10x9xindex>
      %275 = math.rsqrt %23 : tensor<f32>
      %276 = vector.load %alloc_6[%c3, %c9] : memref<10x10xi16>, vector<10x9xi16>
      %277 = tensor.empty() : tensor<12x9xi16>
      %278 = linalg.matmul ins(%9, %2 : tensor<12x10xi16>, tensor<10x9xi16>) outs(%277 : tensor<12x9xi16>) -> tensor<12x9xi16>
      %279 = math.ceil %5 : tensor<12x10xf32>
      %280 = vector.broadcast %c-13670_i16 : i16 to vector<i16>
      %281 = vector.transfer_write %280, %2[%c4, %c1] : vector<i16>, tensor<10x9xi16>
      vector.print %25 : vector<10xf16>
      %282 = affine.apply affine_map<(d0, d1, d2) -> (d2 + d1)>(%c10, %c7, %c8)
      %283 = affine.min affine_map<(d0, d1, d2) -> ((d2 - 4) * 64, (-d0) floordiv 2)>(%c4, %c3, %c9)
      scf.yield
    }
    %31 = vector.extract %25[9] : vector<10xf16>
    %32 = math.cttz %c-13670_i16 : i16
    %33 = index.mul %c1, %c15
    %alloc_21 = memref.alloc() : memref<12x12x15xi64>
    memref.tensor_store %transposed, %alloc_21 : memref<12x12x15xi64>
    affine.store %cst, %alloc_16[%c2, %c6] : memref<12x10xf16>
    %34 = arith.shli %c1912367194_i64, %c1912367194_i64 : i64
    %35 = index.add %33, %c3
    %36 = affine.load %alloc_16[%c4, %c13] : memref<12x10xf16>
    %37 = math.round %5 : tensor<12x10xf32>
    %false_22 = index.bool.constant false
    %38 = math.cttz %0 : tensor<10x9xi64>
    %39 = arith.subi %c1028838234_i64, %c1912367194_i64 : i64
    %40 = memref.atomic_rmw ori %c-13670_i16, %alloc_6[%c7, %c5] : (i16, memref<10x10xi16>) -> i16
    %41 = math.ctpop %9 : tensor<12x10xi16>
    %alloc_23 = memref.alloc() : memref<15x12xf16>
    %42 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_23 : memref<15x12xf16>) outs(%7 : tensor<12x15x12xf16>) {
    ^bb0(%in: f16, %out: f16):
      affine.for %arg1 = 0 to 82 {
      }
      %268 = bufferization.to_tensor %alloc_5 : memref<12x15x12xi1>
      %collapsed = tensor.collapse_shape %3 [[0, 1]] : tensor<10x9xi32> into tensor<90xi32>
      scf.index_switch %c7 
      case 1 {
        %294 = vector.extract_strided_slice %21 {offsets = [6], sizes = [3], strides = [1]} : vector<10xf16> to vector<3xf16>
        %295 = math.powf %24, %24 : tensor<f32>
        %296 = affine.apply affine_map<(d0, d1) -> (((((d0 - d1) ceildiv 16) * 2) floordiv 128) * 32)>(%c14, %c2)
        %297 = bufferization.to_memref %3 : memref<10x9xi32>
        %298 = arith.divui %c1116139000_i32, %c1116139000_i32 : i32
        %299 = math.log %cst_2 : f32
        %cast_45 = tensor.cast %6 : tensor<12x15x12xi32> to tensor<?x?x?xi32>
        %300 = arith.remf %in, %cst : f16
        %301 = memref.atomic_rmw minf %cst_4, %alloc_19[%c9, %c7] : (f32, memref<10x10xf32>) -> f32
        %302 = arith.negf %cst_2 : f32
        %303 = arith.shli %c1028838234_i64, %c1912367194_i64 : i64
        %304 = arith.divui %c1116139000_i32, %c1897752162_i32 : i32
        %305 = arith.negf %36 : f16
        %306 = math.sqrt %23 : tensor<f32>
        %307 = index.divu %rank, %35
        %308 = vector.load %alloc_10[%c6, %c9] : memref<12x10xi16>, vector<12x10xi16>
        scf.yield
      }
      default {
        %294 = arith.cmpi sge, %c-13670_i16, %c18241_i16 : i16
        %295 = index.maxu %c13, %29
        %296 = arith.ori %c1028838234_i64, %c1028838234_i64 : i64
        %297 = math.ceil %5 : tensor<12x10xf32>
        affine.store %36, %alloc_8[%c14, %c6, %c6] : memref<12x15x12xf16>
        %298 = arith.divui %true_3, %false_22 : i1
        %299 = bufferization.to_tensor %alloc_16 : memref<12x10xf16>
        %300 = math.cttz %9 : tensor<12x10xi16>
        %301 = vector.broadcast %36 : f16 to vector<10x9xf16>
        %inserted = tensor.insert %c1028838234_i64 into %1[%c6, %c5] : tensor<10x9xi64>
        %302 = math.cos %5 : tensor<12x10xf32>
        %303 = index.mul %rank, %c4
        %304 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c8, %c2, %c11, %c10)
        %305 = arith.cmpf ogt, %cst_2, %cst_4 : f32
        %306 = arith.minui %c1897752162_i32, %c828314368_i32 : i32
        %alloca = memref.alloca() : memref<12x10xi1>
      }
      %269 = vector.extract %25[8] : vector<10xf16>
      %270 = math.log %23 : tensor<f32>
      %271 = math.cos %out : f16
      %272 = math.log1p %23 : tensor<f32>
      memref.assume_alignment %alloc, 8 : memref<12x10xi16>
      %273 = math.cos %7 : tensor<12x15x12xf16>
      %274 = tensor.empty(%c13, %c15) : tensor<?x?x12xi64>
      %cst_44 = arith.constant 2.457600e+04 : f16
      %275 = math.absi %10 : tensor<10x9xi16>
      %276 = vector.multi_reduction <minf>, %21, %21 [] : vector<10xf16> to vector<10xf16>
      %277 = index.add %c11, %c0
      %278 = math.ctpop %9 : tensor<12x10xi16>
      %279 = arith.floordivsi %false_22, %true : i1
      %280 = math.log1p %in : f16
      %281 = arith.floordivsi %c1912367194_i64, %c1028838234_i64 : i64
      %282 = math.ceil %cst_2 : f32
      memref.store %true_3, %alloc_5[%c1, %c5, %c2] : memref<12x15x12xi1>
      %283 = vector.broadcast %c3 : index to vector<10xindex>
      %284 = vector.broadcast %false_1 : i1 to vector<10xi1>
      %285 = vector.broadcast %cst_4 : f32 to vector<10xf32>
      vector.scatter %alloc_7[%c7, %c7] [%283], %284, %285 : memref<10x9xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
      %286 = math.absf %7 : tensor<12x15x12xf16>
      %287 = math.ctpop %268 : tensor<12x15x12xi1>
      %288 = index.sub %c1, %c10
      %289 = vector.create_mask %33, %c2 : vector<12x10xi1>
      vector.print %25 : vector<10xf16>
      %290 = vector.reduction <minf>, %21 : vector<10xf16> into f16
      %c959422507_i64 = arith.constant 959422507 : i64
      %291 = math.powf %cst_4, %cst_2 : f32
      %292 = vector.flat_transpose %25 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
      %293 = bufferization.to_tensor %alloc_14 : memref<10x9xf32>
      linalg.yield %out : f16
    } -> tensor<12x15x12xf16>
    %43 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c8, %c1, %35, %c13)
    %44 = vector.broadcast %c-13670_i16 : i16 to vector<10x15xi16>
    %45 = vector.broadcast %c18241_i16 : i16 to vector<15xi16>
    %dest, %accumulated_value = vector.scan <maxsi>, %44, %45 {inclusive = false, reduction_dim = 0 : i64} : vector<10x15xi16>, vector<15xi16>
    %46 = arith.maxsi %c-13670_i16, %c-13670_i16 : i16
    %47 = tensor.empty(%c9) : tensor<?x10xi64>
    %48 = math.ipowi %true_3, %false_1 : i1
    %cst_24 = arith.constant 0x4E2CA6DF : f32
    %49 = scf.if %true -> (i64) {
      %268 = arith.divui %false, %false : i1
      %alloc_44 = memref.alloc() : memref<10x9xi64>
      memref.copy %alloc_13, %alloc_44 : memref<10x9xi64> to memref<10x9xi64>
      %269 = math.exp2 %cst : f16
      %270 = arith.shrui %c754390120_i64, %c1912367194_i64 : i64
      %extracted_45 = tensor.extract %4[%c9, %c13, %c5] : tensor<12x15x12xi64>
      %271 = vector.insertelement %36, %25[%rank : index] : vector<10xf16>
      %272 = math.log10 %5 : tensor<12x10xf32>
      %273 = math.exp %13 : tensor<10x9xf32>
      scf.yield %extracted_45 : i64
    } else {
      %268 = arith.cmpi sle, %true_0, %true : i1
      %269 = arith.minsi %c1897752162_i32, %c1897752162_i32 : i32
      %270 = index.mul %33, %c4
      %271 = math.tanh %36 : f16
      %272 = math.exp %22 : tensor<9xf32>
      %273 = scf.index_switch %c11 -> vector<12x15x12xi16> 
      case 1 {
        memref.store %cst_2, %alloc_19[%c7, %c9] : memref<10x10xf32>
        %276 = math.ctlz %6 : tensor<12x15x12xi32>
        %277 = bufferization.to_memref %11 : memref<12x10xi16>
        %278 = vector.broadcast %c18241_i16 : i16 to vector<i16>
        %279 = vector.transfer_write %278, %15[%c13, %c12] : vector<i16>, tensor<10x10xi16>
        %280 = math.cttz %2 : tensor<10x9xi16>
        %281 = memref.atomic_rmw maxf %36, %alloc_8[%c4, %c4, %c7] : (f16, memref<12x15x12xf16>) -> f16
        %false_44 = arith.constant false
        memref.assume_alignment %alloc_10, 1 : memref<12x10xi16>
        %282 = affine.apply affine_map<(d0, d1) -> (d1)>(%270, %rank)
        %alloca = memref.alloca() : memref<10x10xi1>
        %283 = arith.subi %true_3, %false_22 : i1
        %284 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 - 1, d3 mod 128, (-d1) mod 64)>(%c3, %rank, %43, %c9)
        %285 = math.cos %24 : tensor<f32>
        %inserted = tensor.insert %cst_4 into %reduced[%c7] : tensor<9xf32>
        %286 = vector.broadcast %cst_2 : f32 to vector<10x10xf32>
        %287 = vector.fma %286, %286, %286 : vector<10x10xf32>
        %288 = math.ctpop %false_22 : i1
        %289 = vector.broadcast %c18241_i16 : i16 to vector<12x15x12xi16>
        scf.yield %289 : vector<12x15x12xi16>
      }
      case 2 {
        %276 = math.expm1 %24 : tensor<f32>
        %277 = arith.minsi %false, %false : i1
        %278 = math.absi %2 : tensor<10x9xi16>
        %279 = vector.splat %c14 : vector<12x10xindex>
        %280 = affine.apply affine_map<(d0, d1) -> (((((d0 - d1) ceildiv 16) * 2) floordiv 128) * 32)>(%33, %c1)
        %281 = arith.shli %c1912367194_i64, %c1028838234_i64 : i64
        %282 = arith.minui %false_1, %false : i1
        %283 = bufferization.clone %alloc_7 : memref<10x9xf32> to memref<10x9xf32>
        %284 = index.divu %c3, %c8
        %285 = arith.minui %c1912367194_i64, %c1028838234_i64 : i64
        %286 = affine.load %alloc_12[%c15, %c15] : memref<10x10xi1>
        vector.print %25 : vector<10xf16>
        %287 = vector.splat %c8 : vector<10x9xindex>
        %288 = vector.splat %c1116139000_i32 : vector<12x15x12xi32>
        %289 = arith.cmpi eq, %c754390120_i64, %c1912367194_i64 : i64
        %290 = arith.shrui %false, %true : i1
        %291 = vector.broadcast %c18241_i16 : i16 to vector<12x15x12xi16>
        scf.yield %291 : vector<12x15x12xi16>
      }
      case 3 {
        %276 = bufferization.clone %alloc_6 : memref<10x10xi16> to memref<10x10xi16>
        %277 = arith.cmpf true, %cst_4, %cst_2 : f32
        %278 = bufferization.to_tensor %alloc_12 : memref<10x10xi1>
        %279 = bufferization.to_tensor %alloc_5 : memref<12x15x12xi1>
        vector.print %25 : vector<10xf16>
        %280 = math.rsqrt %reduced : tensor<9xf32>
        %281 = vector.broadcast %cst : f16 to vector<9x10x12xf16>
        %282 = vector.broadcast %36 : f16 to vector<9x12xf16>
        %dest_44, %accumulated_value_45 = vector.scan <mul>, %281, %282 {inclusive = true, reduction_dim = 1 : i64} : vector<9x10x12xf16>, vector<9x12xf16>
        %alloc_46 = memref.alloc() : memref<12x10xi32>
        %alloc_47 = memref.alloc() : memref<10x9xi32>
        memref.copy %alloc_15, %alloc_47 : memref<10x9xi32> to memref<10x9xi32>
        %283 = index.ceildivu %c14, %c15
        %284 = arith.shli %c1897752162_i32, %c1897752162_i32 : i32
        %285 = index.ceildivu %c14, %c1
        %286 = affine.min affine_map<(d0, d1) -> (d0 + (d1 + d0 + 128) floordiv 8 - 2 + 128)>(%283, %29)
        %287 = index.ceildivu %c2, %270
        %288 = arith.minsi %c1028838234_i64, %c1028838234_i64 : i64
        %289 = bufferization.to_memref %13 : memref<10x9xf32>
        %290 = vector.broadcast %c18241_i16 : i16 to vector<12x15x12xi16>
        scf.yield %290 : vector<12x15x12xi16>
      }
      case 4 {
        %276 = index.floordivs %c13, %c7
        %277 = index.ceildivu %276, %c13
        %278 = arith.negf %cst_2 : f32
        %279 = vector.broadcast %36 : f16 to vector<10x10xf16>
        %280 = vector.outerproduct %25, %25, %279 {kind = #vector.kind<add>} : vector<10xf16>, vector<10xf16>
        %281 = math.log1p %36 : f16
        %282 = arith.floordivsi %false, %false : i1
        %283 = affine.load %alloc_8[%c0, %c7, %c3] : memref<12x15x12xf16>
        memref.copy %alloc_10, %alloc : memref<12x10xi16> to memref<12x10xi16>
        %from_elements = tensor.from_elements %false_1, %false_1, %true, %true, %true_0, %true, %false, %false_1, %false_1, %false_22, %true, %true, %false_1, %true_0, %true_0, %false_22, %false_22, %true_0, %false_22, %true_0, %false_1, %false_22, %false_22, %true_3, %true_3, %false, %true_0, %false_1, %true, %false, %true_3, %true, %false_22, %false_1, %false, %true_3, %false_1, %true_0, %true, %false, %false_1, %true_3, %false_22, %true_0, %true, %false, %true, %true, %false, %false, %false, %true, %false, %true, %true_0, %true, %false_1, %true_3, %false_1, %false_22, %true, %false, %false_1, %true_3, %true, %true_3, %false, %false_22, %false, %false, %true, %false_22, %true, %false, %false_22, %true_0, %true, %false, %false_22, %false, %true_3, %false_22, %true_3, %false, %true_0, %false, %false, %false, %false_1, %false_22, %false, %true_0, %false_1, %false_1, %false, %false_22, %true_0, %true_0, %true, %true_0 : tensor<10x10xi1>
        %cast_44 = tensor.cast %0 : tensor<10x9xi64> to tensor<?x?xi64>
        %284 = index.maxu %c7, %c8
        %285 = index.casts %c1912367194_i64 : i64 to index
        %286 = math.expm1 %5 : tensor<12x10xf32>
        %287 = bufferization.clone %alloc_14 : memref<10x9xf32> to memref<10x9xf32>
        %alloc_45 = memref.alloc() : memref<12x15x12xf32>
        memref.copy %alloc_18, %alloc_45 : memref<12x15x12xf32> to memref<12x15x12xf32>
        %288 = index.casts %true_3 : i1 to index
        %289 = vector.broadcast %c-13670_i16 : i16 to vector<12x15x12xi16>
        scf.yield %289 : vector<12x15x12xi16>
      }
      default {
        %276 = math.ctlz %4 : tensor<12x15x12xi64>
        %277 = index.add %c13, %c0
        %278 = math.cttz %0 : tensor<10x9xi64>
        %279 = arith.remui %c1912367194_i64, %c754390120_i64 : i64
        %280 = math.log %cst : f16
        %281 = math.cos %cst_2 : f32
        %282 = arith.shrui %c18241_i16, %c18241_i16 : i16
        %alloca = memref.alloca() : memref<10x9xf32>
        %283 = arith.minsi %c1028838234_i64, %c1028838234_i64 : i64
        %284 = vector.flat_transpose %25 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
        %285 = affine.min affine_map<(d0) -> (1, 0, (-d0) mod 16, 0)>(%c11)
        %286 = vector.broadcast %cst_2 : f32 to vector<15xf32>
        %287 = vector.broadcast %true_3 : i1 to vector<15xi1>
        %288 = vector.maskedload %alloc_18[%c8, %c5, %c0], %287, %286 : memref<12x15x12xf32>, vector<15xi1>, vector<15xf32> into vector<15xf32>
        %289 = math.log1p %24 : tensor<f32>
        %290 = arith.maxf %cst_4, %cst_4 : f32
        %291 = math.rsqrt %5 : tensor<12x10xf32>
        %292 = arith.cmpi ugt, %false_1, %true_0 : i1
        %293 = vector.broadcast %c18241_i16 : i16 to vector<12x15x12xi16>
        scf.yield %293 : vector<12x15x12xi16>
      }
      %274 = math.tanh %23 : tensor<f32>
      %275 = vector.bitcast %25 : vector<10xf16> to vector<10xf16>
      scf.yield %c754390120_i64 : i64
    }
    %50 = tensor.empty() : tensor<12x12xi1>
    %alloc_25 = memref.alloc() : memref<15xi1>
    %51 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%50, %alloc_9, %alloc_25 : tensor<12x12xi1>, memref<12x15x12xi1>, memref<15xi1>) outs(%14 : tensor<12x15x12xi1>) {
    ^bb0(%in: i1, %in_44: i1, %in_45: i1, %out: i1):
      %alloc_46 = memref.alloc() : memref<10x9xi64>
      %splat = tensor.splat %c828314368_i32 : tensor<10x9xi32>
      %268 = index.divs %29, %29
      %269 = arith.ori %49, %c1912367194_i64 : i64
      %270 = affine.load %alloc_18[%c0, %c6, %c9] : memref<12x15x12xf32>
      %271 = vector.transpose %21, [0] : vector<10xf16> to vector<10xf16>
      %272 = index.maxu %268, %c9
      %273 = math.expm1 %cst_2 : f32
      %274 = math.tanh %13 : tensor<10x9xf32>
      %275 = vector.create_mask %c7, %268 : vector<12x10xi1>
      %276 = memref.atomic_rmw andi %c-13670_i16, %alloc[%c8, %c9] : (i16, memref<12x10xi16>) -> i16
      vector.print %21 : vector<10xf16>
      %277 = arith.remf %cst_4, %cst_2 : f32
      %278 = math.exp %cst_4 : f32
      %279 = arith.muli %c754390120_i64, %c1912367194_i64 : i64
      %280 = index.castu %c6 : index to i32
      %281 = index.add %268, %35
      %282 = vector.flat_transpose %21 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
      %283 = vector.broadcast %false : i1 to vector<10xi1>
      %dest_47, %accumulated_value_48 = vector.scan <add>, %275, %283 {inclusive = true, reduction_dim = 0 : i64} : vector<12x10xi1>, vector<10xi1>
      %284 = math.cttz %14 : tensor<12x15x12xi1>
      %rank_49 = tensor.rank %transposed : tensor<12x12x15xi64>
      %285 = vector.broadcast %cst : f16 to vector<10x10xf16>
      %286 = vector.outerproduct %282, %21, %285 {kind = #vector.kind<mul>} : vector<10xf16>, vector<10xf16>
      vector.print %282 : vector<10xf16>
      affine.store %cst_2, %alloc_14[%c9, %c8] : memref<10x9xf32>
      %cst_50 = arith.constant 1.6087479E+9 : f32
      %alloca = memref.alloca() : memref<12x10xi16>
      %287 = tensor.empty() : tensor<12x10xi16>
      %288 = linalg.matmul ins(%12, %15 : tensor<12x10xi16>, tensor<10x10xi16>) outs(%287 : tensor<12x10xi16>) -> tensor<12x10xi16>
      %289 = math.ctlz %12 : tensor<12x10xi16>
      %290 = arith.minf %cst_4, %cst_2 : f32
      %291 = arith.minsi %c18241_i16, %c18241_i16 : i16
      %292 = arith.remf %36, %36 : f16
      %extracted_51 = tensor.extract %reduced[%c0] : tensor<9xf32>
      linalg.yield %in : i1
    } -> tensor<12x15x12xi1>
    %52 = arith.muli %true, %true : i1
    %53 = affine.apply affine_map<(d0) -> (0)>(%c6)
    %cast = tensor.cast %16 : tensor<12x10xi1> to tensor<?x?xi1>
    %54 = tensor.empty() : tensor<12x10xi16>
    %55 = linalg.matmul ins(%9, %15 : tensor<12x10xi16>, tensor<10x10xi16>) outs(%54 : tensor<12x10xi16>) -> tensor<12x10xi16>
    %56 = math.ceil %24 : tensor<f32>
    %cast_26 = tensor.cast %14 : tensor<12x15x12xi1> to tensor<?x?x?xi1>
    %57 = index.ceildivu %c4, %c5
    %58 = math.round %cst_4 : f32
    %alloc_27 = memref.alloc() : memref<10x9xf16>
    %59 = vector.broadcast %36 : f16 to vector<10x10xf16>
    %60 = vector.broadcast %false_1 : i1 to vector<10x10xi1>
    %61 = vector.broadcast %c1116139000_i32 : i32 to vector<10x10xi32>
    %62 = vector.gather %alloc_27[%c15, %c2] [%61], %60, %59 : memref<10x9xf16>, vector<10x10xi32>, vector<10x10xi1>, vector<10x10xf16> into vector<10x10xf16>
    scf.index_switch %c15 
    case 1 {
      %268 = index.divu %rank, %c0
      affine.store %49, %alloc_13[%c14, %c13] : memref<10x9xi64>
      %269 = vector.create_mask %c2, %c9, %c2 : vector<12x15x12xi1>
      %270 = math.cttz %false_22 : i1
      %271 = index.floordivs %c7, %c4
      %272 = math.fma %13, %13, %13 : tensor<10x9xf32>
      %273 = math.expm1 %5 : tensor<12x10xf32>
      %cast_44 = tensor.cast %0 : tensor<10x9xi64> to tensor<?x?xi64>
      %274 = arith.maxui %true, %true : i1
      %275 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c15, %271, %57, %c6)
      %276 = index.divu %33, %c7
      %277 = vector.matrix_multiply %21, %25 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<10xf16>) -> vector<1xf16>
      %278 = math.cttz %10 : tensor<10x9xi16>
      %279 = arith.minf %36, %cst : f16
      %280 = vector.insertelement %cst, %25[%c4 : index] : vector<10xf16>
      %281 = affine.for %arg1 = 0 to 21 iter_args(%arg2 = %c8) -> (index) {
        affine.yield %43 : index
      }
      scf.yield
    }
    case 2 {
      %alloc_44 = memref.alloc() : memref<12x15x12xi32>
      %268 = vector.broadcast %c18241_i16 : i16 to vector<12x15x12xi16>
      %269 = index.ceildivu %c12, %c6
      %270 = math.fma %22, %22, %reduced : tensor<9xf32>
      %271 = math.ceil %22 : tensor<9xf32>
      %dest_45, %accumulated_value_46 = vector.scan <mul>, %59, %21 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10xf16>, vector<10xf16>
      %272 = affine.apply affine_map<(d0, d1, d2) -> (d1)>(%43, %c14, %57)
      %273 = vector.splat %true_0 : vector<10x10xi1>
      %274 = bufferization.to_tensor %alloc : memref<12x10xi16>
      %275 = math.log %36 : f16
      %276 = vector.load %alloc_7[%c7, %c7] : memref<10x9xf32>, vector<12x10xf32>
      %277 = arith.maxf %cst, %36 : f16
      %278 = arith.negf %cst : f16
      %alloc_47 = memref.alloc() : memref<12xf16>
      %alloc_48 = memref.alloc() : memref<15x12xf16>
      %279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_47, %alloc_48 : memref<12xf16>, memref<15x12xf16>) outs(%7 : tensor<12x15x12xf16>) {
      ^bb0(%in: f16, %in_50: f16, %out: f16):
        %281 = index.divu %c6, %c10
        %extracted_51 = tensor.extract %reduced[%c5] : tensor<9xf32>
        %282 = vector.broadcast %false_22 : i1 to vector<10xi1>
        %283 = vector.insert %282, %60 [1] : vector<10xi1> into vector<10x10xi1>
        %284 = index.divu %57, %c10
        %285 = math.ceil %cst : f16
        %286 = vector.broadcast %cst_2 : f32 to vector<9xf32>
        %287 = vector.broadcast %false_1 : i1 to vector<9xi1>
        %288 = vector.maskedload %alloc_14[%c2, %c0], %287, %286 : memref<10x9xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %289 = bufferization.clone %alloc_17 : memref<12x10xf32> to memref<12x10xf32>
        %290 = math.ceil %13 : tensor<10x9xf32>
        %cst_52 = arith.constant 3.220800e+04 : f16
        %291 = tensor.empty() : tensor<12x9xf32>
        %292 = linalg.matmul ins(%5, %13 : tensor<12x10xf32>, tensor<10x9xf32>) outs(%291 : tensor<12x9xf32>) -> tensor<12x9xf32>
        %293 = affine.min affine_map<(d0, d1, d2) -> (((d2 - d0) ceildiv 64) mod 4, 0, 17)>(%c15, %c2, %c6)
        %294 = index.sub %281, %c4
        %dest_53, %accumulated_value_54 = vector.scan <minsi>, %60, %282 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10xi1>, vector<10xi1>
        %295 = math.ctpop %11 : tensor<12x10xi16>
        %296 = bufferization.to_tensor %alloc_15 : memref<10x9xi32>
        %297 = vector.transpose %25, [0] : vector<10xf16> to vector<10xf16>
        %298 = arith.shrsi %c828314368_i32, %c1116139000_i32 : i32
        %299 = affine.apply affine_map<(d0, d1) -> (d1 floordiv 128 - d0)>(%53, %43)
        %300 = affine.load %alloc_16[%c0, %c2] : memref<12x10xf16>
        %301 = index.add %c0, %c2
        %302 = arith.shrui %false_1, %true : i1
        %303 = math.expm1 %19 : tensor<9xf32>
        %rank_55 = tensor.rank %6 : tensor<12x15x12xi32>
        %304 = vector.insertelement %false_1, %282[%c4 : index] : vector<10xi1>
        %305 = math.ipowi %true_3, %false_1 : i1
        %306 = vector.maskedload %alloc_19[%c2, %c2], %287, %288 : memref<10x10xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %307 = bufferization.clone %alloc_11 : memref<10x9xf32> to memref<10x9xf32>
        %308 = math.log %23 : tensor<f32>
        %309 = vector.outerproduct %282, %282, %60 {kind = #vector.kind<mul>} : vector<10xi1>, vector<10xi1>
        memref.tensor_store %3, %alloc_15 : memref<10x9xi32>
        %310 = math.tan %13 : tensor<10x9xf32>
        %311 = arith.minsi %c1116139000_i32, %c1116139000_i32 : i32
        linalg.yield %cst : f16
      } -> tensor<12x15x12xf16>
      %280 = affine.load %alloc_16[%c15, %c0] : memref<12x10xf16>
      %cast_49 = tensor.cast %19 : tensor<9xf32> to tensor<?xf32>
      scf.yield
    }
    default {
      %268 = math.log1p %5 : tensor<12x10xf32>
      %269 = arith.maxui %c1912367194_i64, %c754390120_i64 : i64
      %270 = tensor.empty() : tensor<10x9xi16>
      %271 = linalg.matmul ins(%15, %10 : tensor<10x10xi16>, tensor<10x9xi16>) outs(%270 : tensor<10x9xi16>) -> tensor<10x9xi16>
      %272 = arith.negf %cst_4 : f32
      %inserted = tensor.insert %36 into %7[%c11, %c3, %c3] : tensor<12x15x12xf16>
      %273 = tensor.empty() : tensor<10x9xf16>
      %274 = vector.broadcast %36 : f16 to vector<12x15x12xf16>
      %275 = vector.broadcast %true_3 : i1 to vector<12x15x12xi1>
      %276 = vector.broadcast %c1116139000_i32 : i32 to vector<12x15x12xi32>
      %277 = vector.gather %273[%c4, %c10] [%276], %275, %274 : tensor<10x9xf16>, vector<12x15x12xi32>, vector<12x15x12xi1>, vector<12x15x12xf16> into vector<12x15x12xf16>
      %278 = math.log1p %cst_2 : f32
      %279 = arith.negf %36 : f16
      %280 = index.sub %c6, %29
      %rank_44 = tensor.rank %12 : tensor<12x10xi16>
      %281 = math.cos %13 : tensor<10x9xf32>
      %282 = arith.divsi %c1897752162_i32, %c1897752162_i32 : i32
      %283 = math.rsqrt %5 : tensor<12x10xf32>
      %284 = arith.andi %true_3, %true_0 : i1
      scf.if %true_0 {
        %286 = math.ceil %22 : tensor<9xf32>
        %287 = math.ctlz %false : i1
        %288 = vector.matrix_multiply %25, %25 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<10xf16>) -> vector<1xf16>
        %289 = vector.insertelement %36, %288[%c0 : index] : vector<1xf16>
        %290 = arith.minui %true_0, %true_3 : i1
        %291 = math.fma %19, %19, %22 : tensor<9xf32>
        affine.store %36, %alloc_27[%c0, %c9] : memref<10x9xf16>
        %292 = vector.splat %true : vector<12x10xi1>
      } else {
        %286 = index.divu %c6, %c9
        %c28305_i16 = arith.constant 28305 : i16
        %287 = math.ctpop %11 : tensor<12x10xi16>
        %288 = math.atan %5 : tensor<12x10xf32>
        %alloca = memref.alloca() : memref<10x10xf16>
        %289 = math.ctlz %11 : tensor<12x10xi16>
        %290 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - (d0 + 128) + 8)>(%c14, %43, %c15, %286)
        %291 = index.add %rank, %rank
      }
      %285 = math.cos %5 : tensor<12x10xf32>
    }
    %63 = arith.minui %c828314368_i32, %c828314368_i32 : i32
    %64 = vector.outerproduct %21, %21, %59 {kind = #vector.kind<mul>} : vector<10xf16>, vector<10xf16>
    %65 = index.divu %rank, %33
    %66 = math.ctpop %10 : tensor<10x9xi16>
    %67 = arith.divf %cst_2, %cst_4 : f32
    %68 = arith.negf %cst_4 : f32
    %69 = math.absi %true : i1
    %70 = tensor.empty() : tensor<15x12xi64>
    %71 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%70 : tensor<15x12xi64>) outs(%4 : tensor<12x15x12xi64>) {
    ^bb0(%in: i64, %out: i64):
      %rank_44 = tensor.rank %10 : tensor<10x9xi16>
      %268 = bufferization.to_memref %3 : memref<10x9xi32>
      %269 = math.cttz %c1028838234_i64 : i64
      %collapsed = tensor.collapse_shape %2 [[0, 1]] : tensor<10x9xi16> into tensor<90xi16>
      %270 = index.ceildivu %c15, %c13
      %alloca = memref.alloca() : memref<10x10xf16>
      %271 = math.ipowi %c1897752162_i32, %c828314368_i32 : i32
      %272 = vector.broadcast %true_3 : i1 to vector<10x10xi1>
      %273 = math.exp %7 : tensor<12x15x12xf16>
      %274 = math.log10 %19 : tensor<9xf32>
      %cst_45 = arith.constant 1.7137664E+9 : f32
      %275 = arith.shli %in, %49 : i64
      %276 = vector.extract %272[8] : vector<10x10xi1>
      %277 = arith.minui %c1116139000_i32, %c828314368_i32 : i32
      %278 = math.log1p %cst_2 : f32
      %279 = arith.ceildivsi %out, %c1028838234_i64 : i64
      %280 = math.ipowi %0, %0 : tensor<10x9xi64>
      %281 = affine.load %alloc_8[%c5, %c0, %c1] : memref<12x15x12xf16>
      %282 = math.atan %22 : tensor<9xf32>
      %283 = arith.remf %36, %281 : f16
      %284 = vector.extract_strided_slice %272 {offsets = [4], sizes = [6], strides = [1]} : vector<10x10xi1> to vector<6x10xi1>
      %collapsed_46 = tensor.collapse_shape %10 [[0, 1]] : tensor<10x9xi16> into tensor<90xi16>
      %285 = index.divu %c0, %c2
      %286 = math.log1p %13 : tensor<10x9xf32>
      %287 = index.sub %c9, %rank
      %288 = index.maxu %c7, %270
      %289 = vector.broadcast %cst_2 : f32 to vector<12x15x12xf32>
      %290 = vector.fma %289, %289, %289 : vector<12x15x12xf32>
      %291 = arith.remui %true_0, %true_3 : i1
      %292 = affine.for %arg1 = 0 to 56 iter_args(%arg2 = %272) -> (vector<10x10xi1>) {
        affine.yield %60 : vector<10x10xi1>
      }
      %alloc_47 = memref.alloc() : memref<12x10xf16>
      memref.copy %alloc_16, %alloc_47 : memref<12x10xf16> to memref<12x10xf16>
      %293 = math.expm1 %5 : tensor<12x10xf32>
      %alloca_48 = memref.alloca() : memref<12x15x12xi64>
      linalg.yield %c1028838234_i64 : i64
    } -> tensor<12x15x12xi64>
    %72 = affine.apply affine_map<(d0, d1) -> (d1)>(%33, %65)
    %73 = scf.index_switch %65 -> index 
    case 1 {
      %268 = vector.flat_transpose %25 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
      %269 = memref.alloca_scope  -> (f32) {
        %280 = math.cos %24 : tensor<f32>
        %281 = bufferization.to_tensor %alloc_9 : memref<12x15x12xi1>
        %282 = bufferization.clone %alloc : memref<12x10xi16> to memref<12x10xi16>
        %283 = vector.insertelement %36, %21[%c4 : index] : vector<10xf16>
        %284 = bufferization.to_tensor %alloc_8 : memref<12x15x12xf16>
        %285 = index.ceildivs %c10, %c4
        %286 = vector.extract_strided_slice %60 {offsets = [0], sizes = [3], strides = [1]} : vector<10x10xi1> to vector<3x10xi1>
        %287 = index.divu %c6, %35
        %288 = index.divu %285, %c3
        %289 = arith.divf %36, %36 : f16
        %290 = arith.cmpi uge, %c754390120_i64, %49 : i64
        %291 = arith.cmpi uge, %false_1, %true : i1
        %false_47 = index.bool.constant false
        memref.tensor_store %12, %alloc_10 : memref<12x10xi16>
        %292 = arith.minui %c1028838234_i64, %c754390120_i64 : i64
        %293 = bufferization.to_tensor %alloc_16 : memref<12x10xf16>
        %294 = math.ipowi %15, %15 : tensor<10x10xi16>
        %cast_48 = tensor.cast %0 : tensor<10x9xi64> to tensor<?x?xi64>
        %295 = math.rsqrt %cst : f16
        %false_49 = index.bool.constant false
        %296 = math.ctlz %true : i1
        %297 = math.cttz %transposed : tensor<12x12x15xi64>
        %alloc_50 = memref.alloc() : memref<10x9xi16>
        %298 = index.maxu %288, %c6
        %299 = vector.shuffle %21, %25 [4, 5, 10, 11, 14, 16, 17, 19] : vector<10xf16>, vector<10xf16>
        %300 = vector.multi_reduction <add>, %59, %25 [0] : vector<10x10xf16> to vector<10xf16>
        %301 = arith.minsi %c1028838234_i64, %c754390120_i64 : i64
        %302 = arith.cmpi ne, %c828314368_i32, %c1116139000_i32 : i32
        %303 = vector.matrix_multiply %268, %21 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<10xf16>) -> vector<1xf16>
        %304 = math.rsqrt %13 : tensor<10x9xf32>
        %305 = math.sqrt %7 : tensor<12x15x12xf16>
        %alloca = memref.alloca() : memref<10x10xi64>
        memref.alloca_scope.return %cst_2 : f32
      }
      %rank_44 = tensor.rank %17 : tensor<12x10xi1>
      %270 = math.ceil %24 : tensor<f32>
      %271 = arith.cmpi eq, %c1116139000_i32, %c828314368_i32 : i32
      %272 = scf.index_switch %rank_44 -> f16 
      case 1 {
        %280 = math.log %cst_4 : f32
        %c1104898453_i32 = arith.constant 1104898453 : i32
        %281 = math.round %cst_4 : f32
        %282 = tensor.empty() : tensor<10x9xf32>
        %283 = vector.bitcast %21 : vector<10xf16> to vector<10xf16>
        %284 = arith.floordivsi %49, %49 : i64
        %285 = arith.cmpi ugt, %c1912367194_i64, %c754390120_i64 : i64
        %alloca = memref.alloca() : memref<10x9xf32>
        %286 = math.exp %7 : tensor<12x15x12xf16>
        %dest_47, %accumulated_value_48 = vector.scan <add>, %62, %283 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10xf16>, vector<10xf16>
        %287 = vector.outerproduct %25, %268, %59 {kind = #vector.kind<minf>} : vector<10xf16>, vector<10xf16>
        %dest_49, %accumulated_value_50 = vector.scan <mul>, %59, %283 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10xf16>, vector<10xf16>
        %288 = math.ctpop %15 : tensor<10x10xi16>
        %289 = arith.divui %c-13670_i16, %c18241_i16 : i16
        %290 = arith.divsi %true_0, %true_3 : i1
        %291 = arith.remui %false_1, %false : i1
        scf.yield %36 : f16
      }
      case 2 {
        %280 = arith.remui %c1912367194_i64, %c754390120_i64 : i64
        %281 = index.floordivs %57, %c13
        %282 = memref.atomic_rmw maxu %49, %alloc_13[%c3, %c5] : (i64, memref<10x9xi64>) -> i64
        vector.print %61 : vector<10x10xi32>
        %283 = math.fma %23, %24, %23 : tensor<f32>
        %284 = memref.atomic_rmw maxf %36, %alloc_8[%c11, %c10, %c1] : (f16, memref<12x15x12xf16>) -> f16
        %285 = arith.negf %36 : f16
        %alloc_47 = memref.alloc() : memref<12x12x15xi64>
        memref.tensor_store %transposed, %alloc_47 : memref<12x12x15xi64>
        %286 = arith.cmpi sgt, %c1116139000_i32, %c1897752162_i32 : i32
        %287 = arith.floordivsi %true, %true : i1
        %alloc_48 = memref.alloc() : memref<9x15xi16>
        %288 = tensor.empty() : tensor<10x15xi16>
        %289 = linalg.matmul ins(%2, %alloc_48 : tensor<10x9xi16>, memref<9x15xi16>) outs(%288 : tensor<10x15xi16>) -> tensor<10x15xi16>
        %290 = arith.remui %false, %false : i1
        memref.store %36, %alloc_16[%c0, %c5] : memref<12x10xf16>
        %291 = index.ceildivu %c5, %c4
        %292 = index.mul %c10, %57
        %293 = math.cos %19 : tensor<9xf32>
        scf.yield %36 : f16
      }
      case 3 {
        %cst_47 = arith.constant 6.304000e+04 : f16
        %280 = vector.broadcast %true_3 : i1 to vector<15xi1>
        %281 = vector.maskedload %alloc_9[%c2, %c3, %c7], %280, %280 : memref<12x15x12xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
        %282 = bufferization.to_tensor %alloc_9 : memref<12x15x12xi1>
        %283 = bufferization.to_tensor %alloc_6 : memref<10x10xi16>
        %284 = math.cos %reduced : tensor<9xf32>
        %285 = math.expm1 %36 : f16
        %from_elements = tensor.from_elements %c1897752162_i32, %c1897752162_i32, %c1897752162_i32, %c1116139000_i32, %c828314368_i32, %c1116139000_i32, %c1897752162_i32, %c1116139000_i32, %c1897752162_i32, %c1116139000_i32, %c1116139000_i32, %c828314368_i32, %c1897752162_i32, %c1116139000_i32, %c1897752162_i32, %c1116139000_i32, %c1116139000_i32, %c1116139000_i32, %c828314368_i32, %c828314368_i32, %c828314368_i32, %c1897752162_i32, %c1116139000_i32, %c1116139000_i32, %c828314368_i32, %c828314368_i32, %c1897752162_i32, %c1116139000_i32, %c828314368_i32, %c828314368_i32, %c828314368_i32, %c1116139000_i32, %c1897752162_i32, %c1897752162_i32, %c1897752162_i32, %c1897752162_i32, %c1116139000_i32, %c1116139000_i32, %c1897752162_i32, %c828314368_i32, %c828314368_i32, %c1897752162_i32, %c828314368_i32, %c1897752162_i32, %c828314368_i32, %c1897752162_i32, %c1897752162_i32, %c1116139000_i32, %c1116139000_i32, %c1116139000_i32, %c1116139000_i32, %c1897752162_i32, %c828314368_i32, %c1897752162_i32, %c1897752162_i32, %c828314368_i32, %c1897752162_i32, %c1116139000_i32, %c828314368_i32, %c828314368_i32, %c828314368_i32, %c1116139000_i32, %c1897752162_i32, %c1897752162_i32, %c828314368_i32, %c1116139000_i32, %c1897752162_i32, %c828314368_i32, %c1897752162_i32, %c1116139000_i32, %c1116139000_i32, %c828314368_i32, %c1116139000_i32, %c828314368_i32, %c1116139000_i32, %c1897752162_i32, %c1116139000_i32, %c1116139000_i32, %c1116139000_i32, %c1897752162_i32, %c828314368_i32, %c1116139000_i32, %c1897752162_i32, %c828314368_i32, %c828314368_i32, %c1897752162_i32, %c1116139000_i32, %c1116139000_i32, %c1897752162_i32, %c828314368_i32, %c1897752162_i32, %c828314368_i32, %c1116139000_i32, %c1116139000_i32, %c828314368_i32, %c1897752162_i32, %c828314368_i32, %c1897752162_i32, %c828314368_i32, %c1897752162_i32 : tensor<10x10xi32>
        %286 = vector.outerproduct %21, %25, %59 {kind = #vector.kind<mul>} : vector<10xf16>, vector<10xf16>
        %287 = index.divu %c9, %35
        %288 = index.casts %c10 : index to i32
        %289 = affine.min affine_map<(d0, d1, d2) -> (d2 * -2 - 128)>(%53, %rank_44, %c5)
        %290 = vector.broadcast %false : i1 to vector<15x15xi1>
        %291 = vector.outerproduct %281, %280, %290 {kind = #vector.kind<maxui>} : vector<15xi1>, vector<15xi1>
        %292 = vector.broadcast %c1116139000_i32 : i32 to vector<12x15x12xi32>
        %293 = index.add %c13, %29
        %294 = bufferization.clone %alloc_13 : memref<10x9xi64> to memref<10x9xi64>
        %295 = arith.cmpi ne, %c828314368_i32, %c1116139000_i32 : i32
        scf.yield %cst : f16
      }
      default {
        %280 = vector.extract %25[4] : vector<10xf16>
        %281 = math.expm1 %reduced : tensor<9xf32>
        %282 = vector.splat %true_0 : vector<12x10xi1>
        %283 = arith.shrsi %c1897752162_i32, %c1897752162_i32 : i32
        %284 = math.round %5 : tensor<12x10xf32>
        vector.print %268 : vector<10xf16>
        %285 = arith.muli %49, %c1028838234_i64 : i64
        %collapsed = tensor.collapse_shape %0 [[0, 1]] : tensor<10x9xi64> into tensor<90xi64>
        %286 = vector.transpose %25, [0] : vector<10xf16> to vector<10xf16>
        %287 = math.ipowi %17, %8 : tensor<12x10xi1>
        %288 = bufferization.to_memref %23 : memref<f32>
        %289 = vector.broadcast %false : i1 to vector<i1>
        %290 = vector.transfer_write %289, %8[%c15, %c7] : vector<i1>, tensor<12x10xi1>
        %291 = bufferization.to_tensor %alloc_19 : memref<10x10xf32>
        %292 = math.expm1 %269 : f32
        %293 = index.maxu %c4, %c2
        %294 = math.ctlz %11 : tensor<12x10xi16>
        scf.yield %36 : f16
      }
      scf.index_switch %57 
      case 1 {
        %280 = index.floordivs %c14, %c12
        %281 = math.cos %24 : tensor<f32>
        %282 = index.floordivs %53, %43
        %283 = arith.shrsi %false_22, %false_1 : i1
        %284 = vector.broadcast %cst_4 : f32 to vector<10x9xf32>
        %285 = vector.fma %284, %284, %284 : vector<10x9xf32>
        %286 = math.cttz %c1912367194_i64 : i64
        %287 = arith.ceildivsi %c1897752162_i32, %c1116139000_i32 : i32
        %288 = bufferization.to_tensor %alloc_9 : memref<12x15x12xi1>
        %289 = affine.load %alloc_6[%c12, %c7] : memref<10x10xi16>
        %290 = tensor.empty() : tensor<10x9xi16>
        %291 = linalg.matmul ins(%15, %10 : tensor<10x10xi16>, tensor<10x9xi16>) outs(%290 : tensor<10x9xi16>) -> tensor<10x9xi16>
        %292 = vector.broadcast %289 : i16 to vector<i16>
        %293 = vector.transfer_write %292, %10[%280, %c7] : vector<i16>, tensor<10x9xi16>
        %294 = vector.create_mask %c2, %c2 : vector<10x10xi1>
        %295 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%53, %c13, %53)
        %296 = math.ctpop %15 : tensor<10x10xi16>
        %297 = arith.muli %289, %c18241_i16 : i16
        %298 = affine.load %alloc_12[%c13, %c9] : memref<10x10xi1>
        scf.yield
      }
      case 2 {
        %280 = index.floordivs %rank, %c13
        %extracted_47 = tensor.extract %9[%c11, %c3] : tensor<12x10xi16>
        %alloca = memref.alloca() : memref<12x15x12xi32>
        %281 = arith.minui %false, %true : i1
        affine.store %cst, %alloc_16[%c0, %c3] : memref<12x10xf16>
        %282 = math.atan %cst : f16
        %283 = memref.atomic_rmw addf %cst, %alloc_27[%c5, %c0] : (f16, memref<10x9xf16>) -> f16
        %284 = math.expm1 %24 : tensor<f32>
        memref.tensor_store %3, %alloc_15 : memref<10x9xi32>
        %285 = arith.divui %false_1, %false_1 : i1
        %cst_48 = arith.constant 2.696000e+04 : f16
        %286 = vector.broadcast %c828314368_i32 : i32 to vector<10xi32>
        %dest_49, %accumulated_value_50 = vector.scan <minsi>, %61, %286 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10xi32>, vector<10xi32>
        %287 = arith.remui %c1116139000_i32, %c1116139000_i32 : i32
        %288 = index.castu %extracted_47 : i16 to index
        %289 = bufferization.to_memref %transposed : memref<12x12x15xi64>
        %extracted_51 = tensor.extract %0[%c6, %c8] : tensor<10x9xi64>
        scf.yield
      }
      case 3 {
        %280 = math.ceil %reduced : tensor<9xf32>
        %281 = math.ctpop %transposed : tensor<12x12x15xi64>
        %splat = tensor.splat %cst_2 : tensor<10x10xf32>
        %282 = vector.load %alloc_18[%c7, %c6, %c4] : memref<12x15x12xf32>, vector<12x10xf32>
        %283 = math.atan %13 : tensor<10x9xf32>
        %284 = math.ceil %269 : f32
        %285 = vector.insertelement %cst, %25[%65 : index] : vector<10xf16>
        %286 = index.add %c9, %c5
        %287 = arith.andi %false, %false : i1
        %288 = math.rsqrt %5 : tensor<12x10xf32>
        %289 = math.absi %c1116139000_i32 : i32
        %290 = math.cos %23 : tensor<f32>
        %291 = vector.extract %60[4] : vector<10x10xi1>
        %292 = math.log10 %269 : f32
        %293 = math.ipowi %1, %0 : tensor<10x9xi64>
        %294 = vector.broadcast %c9 : index to vector<12xindex>
        %295 = vector.broadcast %false_1 : i1 to vector<12xi1>
        %296 = vector.broadcast %c18241_i16 : i16 to vector<12xi16>
        vector.scatter %alloc_6[%c9, %c4] [%294], %295, %296 : memref<10x10xi16>, vector<12xindex>, vector<12xi1>, vector<12xi16>
        scf.yield
      }
      case 4 {
        %rank_47 = tensor.rank %17 : tensor<12x10xi1>
        %280 = index.ceildivu %c3, %33
        %281 = vector.outerproduct %25, %268, %62 {kind = #vector.kind<mul>} : vector<10xf16>, vector<10xf16>
        %282 = arith.maxui %true, %true_0 : i1
        %cast_48 = tensor.cast %0 : tensor<10x9xi64> to tensor<?x?xi64>
        %283 = math.powf %13, %13 : tensor<10x9xf32>
        %284 = math.log10 %cst_2 : f32
        %285 = arith.divui %49, %c754390120_i64 : i64
        %286 = arith.divsi %false_22, %true_3 : i1
        %287 = vector.insertelement %cst, %25[%29 : index] : vector<10xf16>
        %288 = vector.extract_strided_slice %21 {offsets = [1], sizes = [3], strides = [1]} : vector<10xf16> to vector<3xf16>
        %289 = vector.transpose %62, [0, 1] : vector<10x10xf16> to vector<10x10xf16>
        %290 = vector.flat_transpose %268 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
        %291 = math.expm1 %19 : tensor<9xf32>
        %292 = math.ctpop %1 : tensor<10x9xi64>
        %293 = vector.broadcast %c1 : index to vector<10xindex>
        %294 = vector.broadcast %false : i1 to vector<10xi1>
        vector.scatter %alloc_9[%c5, %c12, %c8] [%293], %294, %294 : memref<12x15x12xi1>, vector<10xindex>, vector<10xi1>, vector<10xi1>
        scf.yield
      }
      default {
        %280 = bufferization.to_tensor %alloc_13 : memref<10x9xi64>
        %281 = vector.flat_transpose %21 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
        %282 = vector.extract %60[4] : vector<10x10xi1>
        %283 = index.floordivs %c11, %c13
        %284 = arith.maxui %true_0, %false_1 : i1
        %285 = bufferization.to_tensor %alloc_5 : memref<12x15x12xi1>
        %286 = arith.divf %cst_4, %cst_4 : f32
        %287 = bufferization.clone %alloc_17 : memref<12x10xf32> to memref<12x10xf32>
        %288 = arith.shrsi %c754390120_i64, %c754390120_i64 : i64
        %289 = tensor.empty() : tensor<12x9xf32>
        %290 = linalg.matmul ins(%5, %13 : tensor<12x10xf32>, tensor<10x9xf32>) outs(%289 : tensor<12x9xf32>) -> tensor<12x9xf32>
        %alloca = memref.alloca() : memref<10x10xi16>
        %rank_47 = tensor.rank %cast : tensor<?x?xi1>
        %291 = arith.divsi %c1912367194_i64, %c1912367194_i64 : i64
        %292 = bufferization.to_memref %4 : memref<12x15x12xi64>
        %293 = index.ceildivs %c9, %72
        %294 = vector.broadcast %c1116139000_i32 : i32 to vector<10x10xi32>
      }
      %273 = math.sqrt %269 : f32
      %274 = arith.remf %cst_2, %cst_2 : f32
      %275 = index.maxu %c15, %c13
      %276 = math.ceil %7 : tensor<12x15x12xf16>
      %false_45 = arith.constant false
      %cast_46 = tensor.cast %24 : tensor<f32> to tensor<f32>
      %277 = scf.if %true -> (i32) {
        %extracted_47 = tensor.extract %1[%c5, %c2] : tensor<10x9xi64>
        %280 = index.divu %rank_44, %c7
        %281 = arith.divsi %c1912367194_i64, %extracted_47 : i64
        %282 = index.maxu %c9, %c15
        %283 = index.casts %c1116139000_i32 : i32 to index
        %284 = arith.xori %extracted_47, %c1912367194_i64 : i64
        %285 = arith.minsi %true, %false : i1
        %286 = math.sqrt %cst_4 : f32
        scf.yield %c1116139000_i32 : i32
      } else {
        %280 = math.tan %36 : f16
        %281 = math.log1p %23 : tensor<f32>
        %282 = vector.outerproduct %268, %25, %59 {kind = #vector.kind<minf>} : vector<10xf16>, vector<10xf16>
        %283 = vector.broadcast %false_22 : i1 to vector<12x15x12xi1>
        %284 = index.floordivs %c4, %c11
        %285 = vector.broadcast %c1897752162_i32 : i32 to vector<12xi32>
        %286 = vector.broadcast %true_0 : i1 to vector<12xi1>
        %287 = vector.maskedload %alloc_15[%c1, %c5], %286, %285 : memref<10x9xi32>, vector<12xi1>, vector<12xi32> into vector<12xi32>
        %alloca = memref.alloca() : memref<10x10xf32>
        %288 = arith.ori %false, %true_3 : i1
        scf.yield %c828314368_i32 : i32
      }
      %278 = index.ceildivu %57, %65
      %279 = math.absi %2 : tensor<10x9xi16>
      scf.yield %rank : index
    }
    case 2 {
      %268 = vector.broadcast %cst_4 : f32 to vector<12x10xf32>
      %269 = vector.fma %268, %268, %268 : vector<12x10xf32>
      %270 = index.add %c15, %33
      affine.store %false_22, %alloc_5[%c8, %c12, %c11] : memref<12x15x12xi1>
      %271 = vector.insertelement %36, %25[%rank : index] : vector<10xf16>
      %272 = affine.min affine_map<(d0) -> ((d0 ceildiv 4) mod 2, ((d0 ceildiv 4) floordiv 128) floordiv 8, 0)>(%43)
      %273 = vector.create_mask %43, %c0 : vector<12x10xi1>
      %alloca = memref.alloca() : memref<10x10xf16>
      %274 = math.ctpop %1 : tensor<10x9xi64>
      scf.if %false {
        %279 = arith.subi %c-13670_i16, %c-13670_i16 : i16
        %280 = vector.broadcast %cst_2 : f32 to vector<10xf32>
        %281 = vector.multi_reduction <maxf>, %269, %280 [0] : vector<12x10xf32> to vector<10xf32>
        memref.assume_alignment %alloc_10, 1 : memref<12x10xi16>
        %282 = arith.maxsi %49, %c754390120_i64 : i64
        %283 = math.round %23 : tensor<f32>
        %284 = index.add %33, %c13
        %285 = math.round %reduced : tensor<9xf32>
        %286 = affine.apply affine_map<(d0, d1) -> (d1)>(%c0, %35)
      } else {
        %279 = affine.min affine_map<(d0, d1) -> (-((-d0) mod 32), d0, (-d0) ceildiv 4)>(%c14, %c3)
        %280 = bufferization.to_memref %3 : memref<10x9xi32>
        %281 = math.powf %7, %7 : tensor<12x15x12xf16>
        %282 = math.ceil %5 : tensor<12x10xf32>
        %splat = tensor.splat %c-13670_i16 : tensor<10x10xi16>
        memref.store %36, %alloc_16[%c6, %c3] : memref<12x10xf16>
        %283 = arith.negf %cst_4 : f32
        %284 = math.atan2 %23, %24 : tensor<f32>
      }
      %alloc_44 = memref.alloc() : memref<12x15x12xi1>
      %275 = bufferization.to_tensor %alloc_8 : memref<12x15x12xf16>
      %rank_45 = tensor.rank %0 : tensor<10x9xi64>
      %276 = math.log1p %cst_2 : f32
      %277 = arith.cmpf olt, %cst, %cst : f16
      %278 = scf.index_switch %53 -> tensor<10x10xf32> 
      case 1 {
        %279 = arith.remui %c754390120_i64, %c754390120_i64 : i64
        %280 = bufferization.to_memref %10 : memref<10x9xi16>
        %281 = arith.minsi %true_3, %true_3 : i1
        %282 = math.ceil %cst_2 : f32
        %283 = math.ipowi %17, %8 : tensor<12x10xi1>
        %284 = index.ceildivs %65, %c11
        %285 = math.powf %cst_2, %cst_4 : f32
        %286 = arith.ori %c828314368_i32, %c828314368_i32 : i32
        %287 = arith.cmpi slt, %c1912367194_i64, %c1028838234_i64 : i64
        %288 = bufferization.to_tensor %alloc_12 : memref<10x10xi1>
        %289 = math.ceil %23 : tensor<f32>
        %290 = math.cos %275 : tensor<12x15x12xf16>
        %291 = bufferization.to_memref %13 : memref<10x9xf32>
        %292 = index.maxu %c2, %65
        %293 = vector.load %alloc_12[%c2, %c0] : memref<10x10xi1>, vector<10x9xi1>
        %294 = affine.apply affine_map<(d0, d1) -> (d1)>(%c15, %c7)
        %295 = tensor.empty() : tensor<10x10xf32>
        scf.yield %295 : tensor<10x10xf32>
      }
      case 2 {
        %279 = index.ceildivu %33, %c14
        memref.store %c18241_i16, %alloc_6[%c7, %c0] : memref<10x10xi16>
        %alloc_47 = memref.alloc() : memref<10x10xf32>
        memref.copy %alloc_19, %alloc_47 : memref<10x10xf32> to memref<10x10xf32>
        %280 = math.rsqrt %5 : tensor<12x10xf32>
        %281 = math.rsqrt %13 : tensor<10x9xf32>
        %expanded = tensor.expand_shape %6 [[0], [1], [2, 3]] : tensor<12x15x12xi32> into tensor<12x15x12x1xi32>
        %alloc_48 = memref.alloc() : memref<12x15x12xi64>
        %282 = math.sqrt %reduced : tensor<9xf32>
        %283 = math.ceil %23 : tensor<f32>
        %284 = vector.insertelement %cst, %21[%33 : index] : vector<10xf16>
        %285 = math.log1p %5 : tensor<12x10xf32>
        %286 = vector.extract %25[4] : vector<10xf16>
        %287 = math.rsqrt %13 : tensor<10x9xf32>
        %288 = arith.addf %cst_2, %cst_4 : f32
        %289 = arith.cmpi eq, %c754390120_i64, %c754390120_i64 : i64
        %290 = arith.minsi %c1028838234_i64, %49 : i64
        %291 = tensor.empty() : tensor<10x10xf32>
        scf.yield %291 : tensor<10x10xf32>
      }
      case 3 {
        %279 = math.round %7 : tensor<12x15x12xf16>
        %cast_47 = tensor.cast %12 : tensor<12x10xi16> to tensor<?x?xi16>
        %280 = arith.ceildivsi %c1897752162_i32, %c1897752162_i32 : i32
        %281 = bufferization.to_tensor %alloc_16 : memref<12x10xf16>
        %282 = math.ipowi %9, %54 : tensor<12x10xi16>
        %283 = arith.floordivsi %c1897752162_i32, %c828314368_i32 : i32
        %284 = vector.extract_strided_slice %25 {offsets = [7], sizes = [2], strides = [1]} : vector<10xf16> to vector<2xf16>
        %285 = math.cos %281 : tensor<12x10xf16>
        %286 = vector.splat %c11 : vector<12x15x12xindex>
        %287 = vector.broadcast %cst_4 : f32 to vector<10x10xf32>
        %288 = math.log %19 : tensor<9xf32>
        memref.store %cst, %alloc_8[%c4, %c7, %c1] : memref<12x15x12xf16>
        %289 = index.ceildivu %c3, %c6
        %290 = vector.broadcast %cst : f16 to vector<2x2xf16>
        %291 = vector.outerproduct %284, %284, %290 {kind = #vector.kind<add>} : vector<2xf16>, vector<2xf16>
        %292 = index.ceildivu %rank, %c8
        %293 = math.cttz %49 : i64
        %294 = tensor.empty() : tensor<10x10xf32>
        scf.yield %294 : tensor<10x10xf32>
      }
      case 4 {
        %279 = math.ctpop %0 : tensor<10x9xi64>
        %280 = index.castu %43 : index to i32
        %281 = arith.addf %36, %cst : f16
        %282 = vector.transpose %25, [0] : vector<10xf16> to vector<10xf16>
        %283 = math.tanh %19 : tensor<9xf32>
        %284 = arith.cmpf uno, %36, %cst : f16
        %rank_47 = tensor.rank %1 : tensor<10x9xi64>
        %c1485878591_i64 = arith.constant 1485878591 : i64
        %285 = math.ctlz %0 : tensor<10x9xi64>
        %286 = arith.cmpf oeq, %cst_2, %cst_4 : f32
        %287 = vector.splat %c12 : vector<10x9xindex>
        memref.store %cst_2, %alloc_14[%c2, %c0] : memref<10x9xf32>
        %288 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 mod 64)>(%c6, %29, %c1, %c1)
        %289 = bufferization.to_memref %10 : memref<10x9xi16>
        %290 = vector.flat_transpose %25 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
        %291 = arith.shrui %c1116139000_i32, %c1897752162_i32 : i32
        %292 = tensor.empty() : tensor<10x10xf32>
        scf.yield %292 : tensor<10x10xf32>
      }
      default {
        %279 = vector.insertelement %cst, %21[%c8 : index] : vector<10xf16>
        %280 = math.ipowi %1, %0 : tensor<10x9xi64>
        %281 = index.add %c14, %c2
        %alloca_47 = memref.alloca() : memref<10x9xi16>
        vector.print %62 : vector<10x10xf16>
        %282 = math.log1p %22 : tensor<9xf32>
        %283 = arith.minui %c-13670_i16, %c18241_i16 : i16
        %284 = bufferization.to_tensor %alloc_11 : memref<10x9xf32>
        %splat = tensor.splat %false_22 : tensor<10x10xi1>
        %285 = vector.insertelement %cst, %21[%270 : index] : vector<10xf16>
        memref.assume_alignment %alloc_11, 4 : memref<10x9xf32>
        %286 = vector.extract %59[9] : vector<10x10xf16>
        %287 = math.atan %22 : tensor<9xf32>
        %288 = index.add %c2, %c7
        affine.store %cst_4, %alloc_18[%c11, %c1, %c10] : memref<12x15x12xf32>
        %289 = arith.maxsi %c18241_i16, %c18241_i16 : i16
        %290 = tensor.empty() : tensor<10x10xf32>
        scf.yield %290 : tensor<10x10xf32>
      }
      %generated_46 = tensor.generate %c14 {
      ^bb0(%arg1: index, %arg2: index):
        %279 = math.fma %5, %5, %5 : tensor<12x10xf32>
        %280 = arith.cmpi sgt, %49, %49 : i64
        %281 = vector.extract %273[3] : vector<12x10xi1>
        %282 = arith.remui %c-13670_i16, %c18241_i16 : i16
        tensor.yield %c18241_i16 : i16
      } : tensor<?x10xi16>
      scf.yield %29 : index
    }
    default {
      memref.copy %alloc_11, %alloc_7 : memref<10x9xf32> to memref<10x9xf32>
      %268 = arith.shrsi %c754390120_i64, %c1028838234_i64 : i64
      %269 = index.castu %c15 : index to i32
      %270 = vector.flat_transpose %25 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
      %271 = arith.divsi %true, %false_22 : i1
      %272 = bufferization.clone %alloc_16 : memref<12x10xf16> to memref<12x10xf16>
      %273 = affine.load %alloc_16[%c10, %c13] : memref<12x10xf16>
      %274 = arith.floordivsi %true, %false : i1
      vector.print %62 : vector<10x10xf16>
      %275 = math.sqrt %cst : f16
      %276 = vector.broadcast %true_3 : i1 to vector<15xi1>
      vector.transfer_write %276, %alloc_5[%c9, %57, %29] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<15xi1>, memref<12x15x12xi1>
      %277 = arith.subi %c1912367194_i64, %c754390120_i64 : i64
      %expanded = tensor.expand_shape %17 [[0], [1, 2]] : tensor<12x10xi1> into tensor<12x10x1xi1>
      %278 = tensor.empty() : tensor<15x12xi32>
      %279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%278, %6 : tensor<15x12xi32>, tensor<12x15x12xi32>) outs(%6 : tensor<12x15x12xi32>) {
      ^bb0(%in: i32, %in_44: i32, %out: i32):
        %282 = arith.negf %36 : f16
        %283 = arith.remui %c1897752162_i32, %in_44 : i32
        %284 = tensor.empty() : tensor<12x10xi16>
        %285 = linalg.matmul ins(%12, %15 : tensor<12x10xi16>, tensor<10x10xi16>) outs(%284 : tensor<12x10xi16>) -> tensor<12x10xi16>
        %true_45 = arith.constant true
        %alloc_46 = memref.alloc() : memref<10x9xf16>
        memref.copy %alloc_27, %alloc_46 : memref<10x9xf16> to memref<10x9xf16>
        %286 = math.ceil %23 : tensor<f32>
        memref.assume_alignment %alloc_13, 2 : memref<10x9xi64>
        %extracted_47 = tensor.extract %15[%c5, %c7] : tensor<10x10xi16>
        %287 = bufferization.to_tensor %alloc_14 : memref<10x9xf32>
        %288 = memref.atomic_rmw maxf %cst, %alloc_8[%c10, %c2, %c2] : (f16, memref<12x15x12xf16>) -> f16
        %289 = arith.addf %cst_2, %cst_4 : f32
        %rank_48 = tensor.rank %3 : tensor<10x9xi32>
        %290 = arith.addf %cst, %36 : f16
        %291 = arith.subi %false, %false_1 : i1
        %292 = math.sqrt %5 : tensor<12x10xf32>
        %splat = tensor.splat %cst : tensor<12x10xf16>
        affine.store %cst_2, %alloc_19[%c0, %c0] : memref<10x10xf32>
        %293 = math.round %287 : tensor<10x9xf32>
        %294 = index.add %c9, %c10
        %295 = math.exp %5 : tensor<12x10xf32>
        %rank_49 = tensor.rank %transposed : tensor<12x12x15xi64>
        %296 = math.cttz %c18241_i16 : i16
        %297 = arith.muli %in, %c1897752162_i32 : i32
        %298 = math.ipowi %9, %9 : tensor<12x10xi16>
        %299 = index.floordivs %rank_49, %c15
        vector.print %59 : vector<10x10xf16>
        %300 = math.absi %false_22 : i1
        %dest_50, %accumulated_value_51 = vector.scan <maxf>, %59, %270 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10xf16>, vector<10xf16>
        %301 = vector.broadcast %false_22 : i1 to vector<10xi1>
        %302 = vector.multi_reduction <minui>, %60, %301 [1] : vector<10x10xi1> to vector<10xi1>
        %303 = arith.minui %true_3, %false_22 : i1
        %304 = bufferization.to_tensor %alloc_6 : memref<10x10xi16>
        %305 = memref.atomic_rmw maxs %c754390120_i64, %alloc_13[%c1, %c5] : (i64, memref<10x9xi64>) -> i64
        linalg.yield %c1116139000_i32 : i32
      } -> tensor<12x15x12xi32>
      %280 = arith.minsi %false_22, %true_0 : i1
      %281 = index.mul %c13, %65
      scf.yield %c9 : index
    }
    memref.store %true_3, %alloc_9[%c2, %c0, %c6] : memref<12x15x12xi1>
    %74 = math.rsqrt %cst_2 : f32
    %75 = vector.outerproduct %21, %25, %62 {kind = #vector.kind<maxf>} : vector<10xf16>, vector<10xf16>
    scf.if %false_22 {
      %268 = math.ctlz %14 : tensor<12x15x12xi1>
      %269 = vector.broadcast %c9 : index to vector<15xindex>
      %270 = vector.broadcast %false : i1 to vector<15xi1>
      %271 = vector.broadcast %c828314368_i32 : i32 to vector<15xi32>
      vector.scatter %alloc_15[%c5, %c2] [%269], %270, %271 : memref<10x9xi32>, vector<15xindex>, vector<15xi1>, vector<15xi32>
      %272 = affine.min affine_map<(d0) -> (0, 0, 0)>(%57)
      %c1_i64 = arith.constant 1 : i64
      %273 = vector.transfer_read %18[%53, %c5, %c10], %c1_i64 : tensor<12x12x15xi64>, vector<15x10xi64>
      %274 = index.maxu %29, %c10
      %275 = vector.load %alloc_6[%c3, %c1] : memref<10x10xi16>, vector<12x15x12xi16>
      %c29393_i16 = arith.constant 29393 : i16
      %cst_44 = arith.constant 1.000000e+00 : f32
      %cst_45 = arith.constant 0.000000e+00 : f32
      %276 = vector.transfer_read %alloc_17[%c11, %rank], %cst_45 : memref<12x10xf32>, vector<f32>
    } else {
      %268 = math.rsqrt %5 : tensor<12x10xf32>
      affine.store %cst, %alloc_27[%c15, %c1] : memref<10x9xf16>
      %269 = vector.broadcast %c1897752162_i32 : i32 to vector<10xi32>
      %dest_44, %accumulated_value_45 = vector.scan <xor>, %61, %269 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10xi32>, vector<10xi32>
      %270 = vector.broadcast %c7 : index to vector<12xindex>
      %271 = vector.broadcast %false_22 : i1 to vector<12xi1>
      vector.scatter %alloc_9[%c0, %c1, %c8] [%270], %271, %271 : memref<12x15x12xi1>, vector<12xindex>, vector<12xi1>, vector<12xi1>
      %272 = index.maxu %c15, %c8
      %273 = vector.flat_transpose %25 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
      %rank_46 = tensor.rank %54 : tensor<12x10xi16>
      %274 = math.log %13 : tensor<10x9xf32>
    }
    %76 = vector.flat_transpose %25 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
    %77 = vector.bitcast %25 : vector<10xf16> to vector<10xi16>
    %78 = math.log1p %19 : tensor<9xf32>
    %79 = math.rsqrt %5 : tensor<12x10xf32>
    %80 = vector.load %alloc_19[%c2, %c8] : memref<10x10xf32>, vector<12x10xf32>
    %extracted = tensor.extract %5[%c1, %c2] : tensor<12x10xf32>
    %81 = arith.divsi %c1028838234_i64, %c754390120_i64 : i64
    memref.assume_alignment %alloc_6, 2 : memref<10x10xi16>
    %82 = arith.floordivsi %true_3, %false : i1
    %83 = arith.cmpi ugt, %c1912367194_i64, %c1028838234_i64 : i64
    %84 = math.cttz %c828314368_i32 : i32
    %85 = index.add %c12, %c14
    %86 = arith.mulf %cst_2, %cst_4 : f32
    %87 = math.cos %extracted : f32
    %88 = arith.floordivsi %c1028838234_i64, %c754390120_i64 : i64
    %89 = math.absi %11 : tensor<12x10xi16>
    %90 = affine.load %alloc_16[%c11, %c11] : memref<12x10xf16>
    %91 = affine.load %alloc[%c2, %c11] : memref<12x10xi16>
    %92 = index.castu %c14 : index to i32
    %93 = vector.broadcast %true_0 : i1 to vector<10x9xi1>
    memref.store %c-13670_i16, %alloc_10[%c10, %c2] : memref<12x10xi16>
    %94 = math.ctlz %c1028838234_i64 : i64
    %false_28 = arith.constant false
    %95 = vector.matrix_multiply %76, %76 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<10xf16>) -> vector<1xf16>
    %96 = math.tanh %23 : tensor<f32>
    %97 = vector.multi_reduction <add>, %59, %76 [0] : vector<10x10xf16> to vector<10xf16>
    memref.alloca_scope  {
      %268 = arith.minui %c-13670_i16, %91 : i16
      %269 = index.maxs %53, %c7
      %270 = index.divu %c1, %c10
      %271 = vector.matrix_multiply %76, %25 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<10xf16>) -> vector<1xf16>
      %extracted_44 = tensor.extract %2[%c7, %c5] : tensor<10x9xi16>
      %272 = arith.divui %c1912367194_i64, %49 : i64
      %273 = vector.broadcast %49 : i64 to vector<i64>
      %274 = vector.transfer_write %273, %transposed[%29, %c2, %c0] : vector<i64>, tensor<12x12x15xi64>
      %275 = math.atan2 %19, %22 : tensor<9xf32>
      %276 = arith.muli %49, %49 : i64
      %277 = arith.floordivsi %true, %false : i1
      %generated_45 = tensor.generate %c13, %57, %c2 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %297 = arith.minsi %false_22, %true : i1
        %298 = bufferization.to_tensor %alloc_8 : memref<12x15x12xf16>
        %alloc_46 = memref.alloc() : memref<9x10xi64>
        %299 = tensor.empty() : tensor<10x10xi64>
        %300 = linalg.matmul ins(%1, %alloc_46 : tensor<10x9xi64>, memref<9x10xi64>) outs(%299 : tensor<10x10xi64>) -> tensor<10x10xi64>
        %301 = arith.maxui %c1116139000_i32, %c1116139000_i32 : i32
        tensor.yield %c1028838234_i64 : i64
      } : tensor<?x?x?xi64>
      %278 = affine.load %alloc_6[%c10, %c7] : memref<10x10xi16>
      %279 = vector.insertelement %90, %76[%270 : index] : vector<10xf16>
      %280 = vector.load %alloc_16[%c1, %c0] : memref<12x10xf16>, vector<12x10xf16>
      %281 = affine.load %alloc[%c1, %c5] : memref<12x10xi16>
      %282 = index.ceildivu %c8, %35
      %283 = math.ipowi %c828314368_i32, %c1116139000_i32 : i32
      %284 = vector.broadcast %extracted : f32 to vector<10xf32>
      %285 = vector.broadcast %true_0 : i1 to vector<10xi1>
      %286 = vector.maskedload %alloc_17[%c9, %c7], %285, %284 : memref<12x10xf32>, vector<10xi1>, vector<10xf32> into vector<10xf32>
      %287 = math.tan %36 : f16
      %collapsed = tensor.collapse_shape %2 [[0, 1]] : tensor<10x9xi16> into tensor<90xi16>
      %288 = math.floor %7 : tensor<12x15x12xf16>
      %289 = math.cos %reduced : tensor<9xf32>
      vector.print %61 : vector<10x10xi32>
      %290 = index.divu %c3, %57
      %291 = index.maxs %c2, %85
      scf.index_switch %c7 
      case 1 {
        %alloc_46 = memref.alloc() : memref<12x10xi32>
        %297 = vector.broadcast %49 : i64 to vector<12xi64>
        %298 = vector.broadcast %true_0 : i1 to vector<12xi1>
        %299 = vector.maskedload %alloc_13[%c3, %c7], %298, %297 : memref<10x9xi64>, vector<12xi1>, vector<12xi64> into vector<12xi64>
        %300 = vector.load %alloc_10[%c10, %c2] : memref<12x10xi16>, vector<10x10xi16>
        %301 = index.add %c8, %29
        %302 = bufferization.to_memref %collapsed : memref<90xi16>
        %alloca = memref.alloca() : memref<12x15x12xi1>
        %alloca_47 = memref.alloca() : memref<10x10xf16>
        %303 = vector.broadcast %extracted_44 : i16 to vector<i16>
        %304 = vector.transfer_write %303, %2[%c5, %269] : vector<i16>, tensor<10x9xi16>
        %305 = vector.transpose %297, [0] : vector<12xi64> to vector<12xi64>
        %306 = vector.splat %c14 : vector<12x15x12xindex>
        %307 = arith.shrui %false_22, %false : i1
        %308 = math.ctlz %c1028838234_i64 : i64
        %309 = vector.extract_strided_slice %62 {offsets = [6], sizes = [3], strides = [1]} : vector<10x10xf16> to vector<3x10xf16>
        %310 = arith.remui %false, %false : i1
        %311 = arith.divui %false_22, %true_3 : i1
        %312 = vector.multi_reduction <minsi>, %77, %77 [] : vector<10xi16> to vector<10xi16>
        scf.yield
      }
      case 2 {
        %splat = tensor.splat %false_1 : tensor<10x10xi1>
        %297 = math.ctpop %10 : tensor<10x9xi16>
        %298 = bufferization.to_tensor %alloc : memref<12x10xi16>
        %299 = vector.flat_transpose %286 {columns = 5 : i32, rows = 2 : i32} : vector<10xf32> -> vector<10xf32>
        %300 = index.add %33, %c12
        %301 = arith.shrui %c18241_i16, %278 : i16
        %302 = math.rsqrt %cst_2 : f32
        %303 = arith.maxui %c754390120_i64, %c754390120_i64 : i64
        %304 = index.add %290, %c5
        %305 = math.rsqrt %5 : tensor<12x10xf32>
        %306 = arith.shrsi %true, %true : i1
        %307 = tensor.empty() : tensor<12x10xf16>
        %308 = vector.broadcast %90 : f16 to vector<12x15x12xf16>
        %309 = vector.broadcast %false_22 : i1 to vector<12x15x12xi1>
        %310 = vector.broadcast %c1116139000_i32 : i32 to vector<12x15x12xi32>
        %311 = vector.gather %307[%304, %72] [%310], %309, %308 : tensor<12x10xf16>, vector<12x15x12xi32>, vector<12x15x12xi1>, vector<12x15x12xf16> into vector<12x15x12xf16>
        %splat_46 = tensor.splat %false_22 : tensor<12x10xi1>
        %312 = affine.load %alloc_12[%c1, %c2] : memref<10x10xi1>
        %313 = arith.minui %c18241_i16, %281 : i16
        %314 = vector.matrix_multiply %76, %95 {lhs_columns = 1 : i32, lhs_rows = 10 : i32, rhs_columns = 1 : i32} : (vector<10xf16>, vector<1xf16>) -> vector<10xf16>
        scf.yield
      }
      case 3 {
        %297 = memref.atomic_rmw minf %extracted, %alloc_11[%c7, %c8] : (f32, memref<10x9xf32>) -> f32
        vector.print %271 : vector<1xf16>
        %298 = math.tanh %22 : tensor<9xf32>
        %299 = math.cttz %12 : tensor<12x10xi16>
        %300 = arith.divsi %c1912367194_i64, %49 : i64
        %301 = bufferization.to_memref %18 : memref<12x12x15xi64>
        %302 = arith.shrsi %true_3, %true_0 : i1
        %303 = index.castu %91 : i16 to index
        %304 = index.sub %290, %c12
        %expanded = tensor.expand_shape %5 [[0], [1, 2]] : tensor<12x10xf32> into tensor<12x10x1xf32>
        %305 = math.fma %expanded, %expanded, %expanded : tensor<12x10x1xf32>
        %306 = vector.reduction <mul>, %285 : vector<10xi1> into i1
        %307 = math.log %5 : tensor<12x10xf32>
        %308 = arith.divsi %false, %true_3 : i1
        %c22296_i16 = arith.constant 22296 : i16
        %309 = math.round %reduced : tensor<9xf32>
        scf.yield
      }
      default {
        %297 = arith.shrsi %281, %278 : i16
        %298 = math.fma %90, %36, %cst : f16
        %299 = bufferization.to_tensor %alloc_5 : memref<12x15x12xi1>
        affine.store %278, %alloc_10[%c14, %c11] : memref<12x10xi16>
        %300 = math.sqrt %7 : tensor<12x15x12xf16>
        %301 = arith.cmpf ule, %cst_4, %cst_4 : f32
        %302 = index.floordivs %c15, %290
        %303 = index.ceildivs %c11, %33
        %304 = index.ceildivu %c4, %c4
        %305 = vector.multi_reduction <maxf>, %286, %cst_4 [0] : vector<10xf32> to f32
        %306 = index.ceildivu %c6, %304
        %rank_46 = tensor.rank %5 : tensor<12x10xf32>
        %rank_47 = tensor.rank %6 : tensor<12x15x12xi32>
        %alloc_48 = memref.alloc() : memref<10x10xf32>
        memref.copy %alloc_19, %alloc_48 : memref<10x10xf32> to memref<10x10xf32>
        %307 = bufferization.to_memref %collapsed : memref<90xi16>
        %collapsed_49 = tensor.collapse_shape %10 [[0, 1]] : tensor<10x9xi16> into tensor<90xi16>
      }
      %292 = math.round %reduced : tensor<9xf32>
      %293 = index.casts %65 : index to i32
      scf.if %true_0 {
        %297 = math.exp %7 : tensor<12x15x12xf16>
        %298 = arith.maxf %cst, %cst : f16
        %extracted_46 = tensor.extract %19[%c3] : tensor<9xf32>
        %299 = math.ceil %24 : tensor<f32>
        %300 = math.round %5 : tensor<12x10xf32>
        %301 = math.ctpop %11 : tensor<12x10xi16>
        %302 = index.ceildivu %c2, %53
        %303 = math.log %extracted_46 : f32
      }
      %294 = math.log %reduced : tensor<9xf32>
      %295 = math.log10 %13 : tensor<10x9xf32>
      %296 = arith.addi %c828314368_i32, %c1897752162_i32 : i32
    }
    %98 = arith.shrsi %c1028838234_i64, %c754390120_i64 : i64
    %99 = bufferization.clone %alloc_6 : memref<10x10xi16> to memref<10x10xi16>
    %alloc_29 = memref.alloc() : memref<12x15x12xf16>
    %100 = index.castu %c1897752162_i32 : i32 to index
    %101 = math.rsqrt %reduced : tensor<9xf32>
    %102 = vector.flat_transpose %95 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
    %cst_30 = arith.constant 1.69044147E+9 : f32
    %103 = vector.create_mask %c12, %65 : vector<12x10xi1>
    %104 = math.absi %17 : tensor<12x10xi1>
    %105 = vector.flat_transpose %77 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
    %c11287_i16 = arith.constant 11287 : i16
    %106 = math.atan %7 : tensor<12x15x12xf16>
    %alloc_31 = memref.alloc() : memref<10x9xi64>
    memref.copy %alloc_13, %alloc_31 : memref<10x9xi64> to memref<10x9xi64>
    %107 = vector.load %99[%c2, %c2] : memref<10x10xi16>, vector<10x9xi16>
    %108 = arith.remui %false, %false : i1
    %109 = vector.outerproduct %25, %25, %62 {kind = #vector.kind<maxf>} : vector<10xf16>, vector<10xf16>
    %110 = vector.splat %c1028838234_i64 : vector<12x15x12xi64>
    %111 = arith.negf %extracted : f32
    %112 = math.expm1 %7 : tensor<12x15x12xf16>
    %113 = arith.cmpi sle, %91, %c-13670_i16 : i16
    %114 = arith.negf %cst_4 : f32
    %115 = vector.broadcast %false : i1 to vector<10x10xi1>
    %116 = arith.andi %true_3, %true_3 : i1
    %117 = vector.broadcast %extracted : f32 to vector<9xf32>
    %118 = vector.broadcast %true_0 : i1 to vector<9xi1>
    %119 = vector.maskedload %alloc_18[%c10, %c13, %c10], %118, %117 : memref<12x15x12xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
    %120 = bufferization.to_tensor %alloc_6 : memref<10x10xi16>
    %121 = math.sqrt %cst : f16
    %122 = vector.broadcast %36 : f16 to vector<12x15x12xf16>
    %123 = index.divu %c1, %c15
    %124 = math.log1p %19 : tensor<9xf32>
    %125 = vector.broadcast %cst_2 : f32 to vector<9x9xf32>
    %126 = vector.outerproduct %117, %117, %125 {kind = #vector.kind<minf>} : vector<9xf32>, vector<9xf32>
    %127 = vector.insertelement %90, %21[%c8 : index] : vector<10xf16>
    memref.copy %alloc_5, %alloc_9 : memref<12x15x12xi1> to memref<12x15x12xi1>
    %128 = tensor.empty() : tensor<15x12xi1>
    %129 = tensor.empty() : tensor<12xi1>
    %130 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%128, %129, %128 : tensor<15x12xi1>, tensor<12xi1>, tensor<15x12xi1>) outs(%14 : tensor<12x15x12xi1>) {
    ^bb0(%in: i1, %in_44: i1, %in_45: i1, %out: i1):
      %268 = index.ceildivu %c15, %c1
      affine.for %arg1 = 0 to 126 {
      }
      %269 = index.sub %c1, %c5
      %270 = index.divu %29, %269
      %271 = vector.extract %61[2] : vector<10x10xi32>
      %272 = arith.shrui %false, %out : i1
      %273 = arith.remsi %in_44, %true_3 : i1
      %274 = arith.minui %false_22, %true_3 : i1
      %275 = index.ceildivs %43, %43
      %alloca = memref.alloca() : memref<12x10xi16>
      %276 = vector.broadcast %false_22 : i1 to vector<10xi1>
      %dest_46, %accumulated_value_47 = vector.scan <minsi>, %60, %276 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10xi1>, vector<10xi1>
      %cast_48 = tensor.cast %transposed : tensor<12x12x15xi64> to tensor<?x?x?xi64>
      %277 = math.round %22 : tensor<9xf32>
      %278 = tensor.empty(%c6) : tensor<?x9xi1>
      %279 = vector.insertelement %c828314368_i32, %271[%57 : index] : vector<10xi32>
      %280 = math.atan %90 : f16
      %281 = index.floordivs %c0, %c11
      %282 = vector.flat_transpose %25 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
      %283 = arith.minsi %49, %49 : i64
      %generated_49 = tensor.generate %c10 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %292 = math.ctlz %c1897752162_i32 : i32
        %293 = math.copysign %36, %90 : f16
        %294 = arith.negf %cst_2 : f32
        %295 = arith.floordivsi %c1116139000_i32, %c1116139000_i32 : i32
        tensor.yield %cst : f16
      } : tensor<?x15x12xf16>
      %284 = vector.extract %62[0] : vector<10x10xf16>
      %285 = scf.execute_region -> f16 {
        %292 = math.absi %in_45 : i1
        %alloc_52 = memref.alloc() : memref<10x10xi1>
        memref.copy %alloc_12, %alloc_52 : memref<10x10xi1> to memref<10x10xi1>
        %293 = vector.broadcast %36 : f16 to vector<12x15x12xf16>
        %294 = vector.extract %21[1] : vector<10xf16>
        %295 = vector.transpose %62, [0, 1] : vector<10x10xf16> to vector<10x10xf16>
        memref.store %true, %alloc_12[%c8, %c5] : memref<10x10xi1>
        %296 = math.exp %reduced : tensor<9xf32>
        %297 = math.sqrt %90 : f16
        %298 = vector.load %alloc_5[%c11, %c12, %c4] : memref<12x15x12xi1>, vector<10x9xi1>
        %299 = index.floordivs %270, %c3
        %300 = arith.negf %90 : f16
        %splat = tensor.splat %91 : tensor<10x10xi16>
        %301 = vector.bitcast %298 : vector<10x9xi1> to vector<10x9xi1>
        %302 = math.ipowi %15, %15 : tensor<10x10xi16>
        %303 = bufferization.to_memref %6 : memref<12x15x12xi32>
        %304 = math.tanh %cst_2 : f32
        scf.yield %36 : f16
      }
      %286 = math.fma %36, %36, %36 : f16
      %287 = math.ctlz %12 : tensor<12x10xi16>
      %288 = bufferization.to_memref %4 : memref<12x15x12xi64>
      %rank_50 = tensor.rank %1 : tensor<10x9xi64>
      %alloca_51 = memref.alloca() : memref<12x10xf32>
      vector.print %118 : vector<9xi1>
      %from_elements = tensor.from_elements %cst_4, %extracted, %extracted, %extracted, %extracted, %extracted, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %extracted, %extracted, %extracted, %extracted, %cst_4, %extracted, %cst_2, %cst_2, %cst_4, %cst_2, %extracted, %cst_2, %cst_2, %extracted, %cst_4, %cst_2, %cst_2, %cst_2, %cst_2, %extracted, %extracted, %cst_2, %extracted, %cst_4, %cst_2, %cst_2, %extracted, %cst_4, %extracted, %cst_4, %cst_2, %cst_4, %cst_4, %cst_2, %cst_4, %cst_2, %cst_4, %cst_4, %extracted, %cst_2, %cst_2, %extracted, %extracted, %cst_2, %cst_4, %cst_4, %extracted, %cst_4, %extracted, %extracted, %cst_4, %extracted, %extracted, %cst_4, %extracted, %cst_4, %extracted, %extracted, %cst_4, %extracted, %cst_4, %cst_2, %cst_2, %extracted, %cst_2, %extracted, %cst_4, %extracted, %extracted, %cst_4, %cst_2, %extracted, %cst_2, %cst_4, %extracted, %cst_4, %extracted, %cst_4, %extracted, %extracted, %cst_4, %cst_2, %cst_2, %cst_4, %cst_2, %cst_2, %extracted, %cst_2, %cst_4, %cst_2, %extracted, %extracted, %cst_2, %extracted, %extracted, %cst_2, %cst_4, %cst_2, %extracted, %extracted, %cst_4, %extracted, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4 : tensor<12x10xf32>
      %289 = arith.remf %36, %285 : f16
      %290 = vector.extract %282[0] : vector<10xf16>
      %291 = index.add %43, %c3
      linalg.yield %in_44 : i1
    } -> tensor<12x15x12xi1>
    %131 = index.castu %c11 : index to i32
    %132 = math.ctlz %6 : tensor<12x15x12xi32>
    memref.copy %alloc_5, %alloc_9 : memref<12x15x12xi1> to memref<12x15x12xi1>
    %133 = arith.remui %true_3, %true_3 : i1
    %134 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%123, %c4, %c5)
    %135 = arith.floordivsi %c1912367194_i64, %c754390120_i64 : i64
    %136 = arith.shrsi %c1028838234_i64, %c754390120_i64 : i64
    %extracted_32 = tensor.extract %19[%c0] : tensor<9xf32>
    %137 = bufferization.to_memref %cast : memref<?x?xi1>
    %138 = arith.minsi %c1897752162_i32, %c1897752162_i32 : i32
    %139 = vector.flat_transpose %105 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
    %140 = scf.execute_region -> memref<10x9xf32> {
      %268 = math.floor %90 : f16
      %c-20369_i16 = arith.constant -20369 : i16
      %269 = arith.remui %91, %c18241_i16 : i16
      %270 = arith.minsi %false, %true_0 : i1
      %cst_44 = arith.constant 1.525600e+04 : f16
      %271 = math.ctlz %c1897752162_i32 : i32
      %272 = affine.apply affine_map<(d0, d1) -> (d1 floordiv 128 - d0)>(%c7, %57)
      %273 = math.rsqrt %19 : tensor<9xf32>
      %274 = arith.floordivsi %c1116139000_i32, %c828314368_i32 : i32
      %275 = arith.minf %extracted, %extracted_32 : f32
      %276 = index.castu %c754390120_i64 : i64 to index
      %277 = arith.muli %c1116139000_i32, %c1116139000_i32 : i32
      %278 = vector.insertelement %cst, %76[%85 : index] : vector<10xf16>
      %279 = vector.create_mask %c5, %c3 : vector<12x10xi1>
      %280 = vector.create_mask %c4, %276, %c12 : vector<12x15x12xi1>
      %281 = math.fma %5, %5, %5 : tensor<12x10xf32>
      scf.yield %alloc_11 : memref<10x9xf32>
    }
    %141 = memref.atomic_rmw andi %c-13670_i16, %99[%c5, %c2] : (i16, memref<10x10xi16>) -> i16
    %142 = vector.transpose %21, [0] : vector<10xf16> to vector<10xf16>
    %143 = math.fma %reduced, %22, %19 : tensor<9xf32>
    %144 = math.fma %7, %7, %7 : tensor<12x15x12xf16>
    %145 = arith.remui %c1897752162_i32, %c1897752162_i32 : i32
    %146 = arith.divui %true_0, %true : i1
    %147 = affine.apply affine_map<(d0, d1, d2) -> (d2 + d1)>(%134, %33, %c0)
    %148 = index.floordivs %c9, %c8
    %149 = vector.broadcast %cst : f16 to vector<12xf16>
    %150 = vector.broadcast %true_0 : i1 to vector<12xi1>
    %151 = vector.maskedload %alloc_8[%c7, %c2, %c3], %150, %149 : memref<12x15x12xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
    %152 = arith.cmpf one, %cst_2, %cst_4 : f32
    vector.print %62 : vector<10x10xf16>
    %153 = vector.splat %49 : vector<10x9xi64>
    %154 = math.log1p %extracted : f32
    %155 = arith.ori %c1116139000_i32, %c828314368_i32 : i32
    %156 = arith.divui %c1028838234_i64, %c1912367194_i64 : i64
    %157 = arith.remsi %49, %49 : i64
    %158 = math.log %extracted : f32
    affine.for %arg1 = 0 to 8 {
    }
    %159 = affine.min affine_map<(d0, d1, d2) -> (d1 * 8, -(d0 + d2), d1 * 128 - (d2 - 16))>(%35, %c13, %c14)
    %160 = arith.shrsi %49, %c1912367194_i64 : i64
    %161 = math.ipowi %true_0, %true : i1
    %162 = math.copysign %23, %23 : tensor<f32>
    %163 = arith.negf %90 : f16
    %164 = index.divu %c12, %c2
    %165 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %150, %150, %false_1 : vector<12xi1>, vector<12xi1> into i1
    %166 = math.ipowi %c754390120_i64, %c754390120_i64 : i64
    %167 = index.ceildivu %43, %c9
    %168 = vector.broadcast %extracted_32 : f32 to vector<10x9xf32>
    %169 = vector.fma %168, %168, %168 : vector<10x9xf32>
    %170 = math.sqrt %13 : tensor<10x9xf32>
    %171 = math.log %extracted_32 : f32
    %172 = vector.broadcast %cst : f16 to vector<12x15x12xf16>
    %173 = math.expm1 %extracted : f32
    %174 = vector.load %alloc_5[%c11, %c8, %c0] : memref<12x15x12xi1>, vector<10x10xi1>
    %175 = vector.splat %cst_2 : vector<10x9xf32>
    %176 = vector.matrix_multiply %139, %77 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi16>, vector<10xi16>) -> vector<1xi16>
    %177 = bufferization.clone %alloc_27 : memref<10x9xf16> to memref<10x9xf16>
    %178 = affine.load %alloc_17[%c2, %c13] : memref<12x10xf32>
    vector.print %174 : vector<10x10xi1>
    %179 = arith.shrui %c1028838234_i64, %49 : i64
    %180 = bufferization.to_memref %15 : memref<10x10xi16>
    %181 = vector.splat %134 : vector<10x10xindex>
    %182 = math.tanh %36 : f16
    vector.print %102 : vector<1xf16>
    %183 = math.ceil %13 : tensor<10x9xf32>
    %184 = math.tanh %13 : tensor<10x9xf32>
    %185 = index.castu %c6 : index to i32
    %186 = scf.if %false -> (i64) {
      %268 = math.ceil %cst_4 : f32
      %269 = scf.index_switch %rank -> i16 
      case 1 {
        %276 = vector.reduction <mul>, %149 : vector<12xf16> into f16
        %277 = math.round %cst : f16
        %278 = bufferization.to_tensor %alloc_10 : memref<12x10xi16>
        %279 = arith.maxsi %c1116139000_i32, %c1897752162_i32 : i32
        %280 = index.ceildivs %29, %c7
        %281 = math.fpowi %13, %3 : tensor<10x9xf32>, tensor<10x9xi32>
        %282 = math.cos %cst_4 : f32
        %283 = arith.shrui %c1897752162_i32, %c828314368_i32 : i32
        %284 = vector.insertelement %36, %76[%c1 : index] : vector<10xf16>
        %alloc_44 = memref.alloc() : memref<10x9xi64>
        memref.copy %alloc_13, %alloc_44 : memref<10x9xi64> to memref<10x9xi64>
        %285 = math.cttz %0 : tensor<10x9xi64>
        %286 = vector.insert %cst, %95 [0] : f16 into vector<1xf16>
        %287 = arith.andi %true, %false_1 : i1
        %288 = arith.minui %true_0, %false_1 : i1
        %289 = arith.subi %c1912367194_i64, %49 : i64
        %inserted = tensor.insert %c18241_i16 into %12[%c7, %c9] : tensor<12x10xi16>
        scf.yield %c18241_i16 : i16
      }
      case 2 {
        %276 = math.log1p %cst_2 : f32
        %rank_44 = tensor.rank %13 : tensor<10x9xf32>
        %277 = arith.muli %c1116139000_i32, %c1116139000_i32 : i32
        %278 = arith.minf %90, %36 : f16
        %279 = arith.mulf %90, %cst : f16
        %280 = vector.broadcast %c2 : index to vector<15xindex>
        %281 = vector.broadcast %true_3 : i1 to vector<15xi1>
        %282 = vector.broadcast %cst_2 : f32 to vector<15xf32>
        vector.scatter %alloc_7[%c4, %c4] [%280], %281, %282 : memref<10x9xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
        %283 = math.ctpop %3 : tensor<10x9xi32>
        vector.print %107 : vector<10x9xi16>
        %284 = arith.negf %cst_4 : f32
        %285 = arith.maxsi %false_22, %false_1 : i1
        %286 = arith.shrui %49, %c1028838234_i64 : i64
        %287 = index.add %c6, %c2
        %288 = arith.addf %178, %cst_2 : f32
        %289 = vector.insertelement %extracted_32, %117[%57 : index] : vector<9xf32>
        %290 = math.ctlz %1 : tensor<10x9xi64>
        %291 = vector.splat %72 : vector<12x15x12xindex>
        scf.yield %c-13670_i16 : i16
      }
      case 3 {
        %276 = index.ceildivu %c15, %53
        %277 = vector.broadcast %91 : i16 to vector<9xi16>
        %dest_44, %accumulated_value_45 = vector.scan <maxui>, %107, %277 {inclusive = false, reduction_dim = 0 : i64} : vector<10x9xi16>, vector<9xi16>
        %alloca = memref.alloca() : memref<10x9xi16>
        affine.store %extracted_32, %alloc_19[%c14, %c15] : memref<10x10xf32>
        %278 = math.exp %23 : tensor<f32>
        %279 = vector.load %alloc[%c7, %c5] : memref<12x10xi16>, vector<10x9xi16>
        %280 = arith.shli %true, %true_0 : i1
        %281 = arith.remsi %false, %true_3 : i1
        %282 = math.ctlz %false : i1
        %283 = bufferization.to_tensor %alloc_10 : memref<12x10xi16>
        %collapsed = tensor.collapse_shape %8 [[0, 1]] : tensor<12x10xi1> into tensor<120xi1>
        %rank_46 = tensor.rank %12 : tensor<12x10xi16>
        %alloca_47 = memref.alloca() : memref<12x15x12xf32>
        %284 = index.mul %134, %rank_46
        %285 = tensor.empty() : tensor<10x9xi16>
        %286 = linalg.matmul ins(%120, %2 : tensor<10x10xi16>, tensor<10x9xi16>) outs(%285 : tensor<10x9xi16>) -> tensor<10x9xi16>
        %287 = vector.broadcast %178 : f32 to vector<12x15x12xf32>
        %288 = vector.fma %287, %287, %287 : vector<12x15x12xf32>
        scf.yield %c18241_i16 : i16
      }
      case 4 {
        %inserted = tensor.insert %49 into %4[%c11, %c3, %c6] : tensor<12x15x12xi64>
        %276 = vector.extract_strided_slice %107 {offsets = [6], sizes = [1], strides = [1]} : vector<10x9xi16> to vector<1x9xi16>
        %277 = arith.cmpi uge, %c1912367194_i64, %c1028838234_i64 : i64
        %278 = math.atan %90 : f16
        memref.store %91, %alloc_6[%c4, %c8] : memref<10x10xi16>
        %279 = vector.multi_reduction <minf>, %59, %62 [] : vector<10x10xf16> to vector<10x10xf16>
        %280 = index.divu %c6, %35
        %281 = vector.extract %105[9] : vector<10xi16>
        %282 = affine.load %alloc_9[%c11, %c10, %c0] : memref<12x15x12xi1>
        %283 = vector.bitcast %115 : vector<10x10xi1> to vector<10x10xi1>
        %284 = vector.bitcast %103 : vector<12x10xi1> to vector<12x10xi1>
        %c-24954_i16 = arith.constant -24954 : i16
        %285 = vector.broadcast %extracted_32 : f32 to vector<10x10xf32>
        %286 = vector.fma %285, %285, %285 : vector<10x10xf32>
        %287 = bufferization.to_memref %19 : memref<9xf32>
        %288 = vector.broadcast %c1897752162_i32 : i32 to vector<12x10xi32>
        %alloc_44 = memref.alloc() : memref<10x10xi1>
        memref.copy %alloc_12, %alloc_44 : memref<10x10xi1> to memref<10x10xi1>
        scf.yield %c-13670_i16 : i16
      }
      default {
        %276 = vector.maskedload %alloc_17[%c8, %c2], %118, %117 : memref<12x10xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
        %277 = memref.atomic_rmw assign %cst, %alloc_8[%c1, %c4, %c9] : (f16, memref<12x15x12xf16>) -> f16
        %278 = arith.maxui %c1116139000_i32, %c1116139000_i32 : i32
        %279 = vector.splat %c6 : vector<12x15x12xindex>
        %280 = math.log10 %5 : tensor<12x10xf32>
        %281 = math.exp2 %extracted_32 : f32
        %282 = math.cos %extracted_32 : f32
        %283 = math.absi %49 : i64
        %284 = arith.divsi %c1116139000_i32, %c1897752162_i32 : i32
        %collapsed = tensor.collapse_shape %11 [[0, 1]] : tensor<12x10xi16> into tensor<120xi16>
        %285 = vector.extract %169[8] : vector<10x9xf32>
        %286 = arith.addf %extracted_32, %extracted : f32
        %287 = math.ceil %19 : tensor<9xf32>
        %288 = math.absi %9 : tensor<12x10xi16>
        %289 = bufferization.to_tensor %180 : memref<10x10xi16>
        %290 = math.rsqrt %178 : f32
        scf.yield %c18241_i16 : i16
      }
      %270 = arith.andi %c18241_i16, %c18241_i16 : i16
      %271 = index.maxu %164, %c11
      %c0_i16 = arith.constant 0 : i16
      %272 = vector.transfer_read %9[%c6, %43], %c0_i16 : tensor<12x10xi16>, vector<i16>
      %273 = scf.execute_region -> tensor<12x15x12xi16> {
        %276 = bufferization.clone %180 : memref<10x10xi16> to memref<10x10xi16>
        memref.tensor_store %14, %alloc_5 : memref<12x15x12xi1>
        %277 = arith.muli %91, %c-13670_i16 : i16
        %278 = math.atan %reduced : tensor<9xf32>
        %279 = vector.broadcast %cst : f16 to vector<12x12xf16>
        %dest_44, %accumulated_value_45 = vector.scan <mul>, %122, %279 {inclusive = true, reduction_dim = 1 : i64} : vector<12x15x12xf16>, vector<12x12xf16>
        %280 = vector.broadcast %cst : f16 to vector<15x12xf16>
        %281 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %149, %172, %280 : vector<12xf16>, vector<12x15x12xf16> into vector<15x12xf16>
        %282 = index.add %271, %c11
        %alloca = memref.alloca() : memref<10x9xi64>
        %283 = math.ctpop %15 : tensor<10x10xi16>
        %alloc_46 = memref.alloc() : memref<10x9xi32>
        memref.copy %alloc_15, %alloc_46 : memref<10x9xi32> to memref<10x9xi32>
        %284 = tensor.empty() : tensor<10x10xi16>
        %285 = linalg.matmul ins(%15, %15 : tensor<10x10xi16>, tensor<10x10xi16>) outs(%284 : tensor<10x10xi16>) -> tensor<10x10xi16>
        %286 = vector.insertelement %91, %105[%35 : index] : vector<10xi16>
        %287 = arith.maxui %91, %c0_i16 : i16
        %288 = arith.remf %178, %extracted_32 : f32
        %289 = arith.shli %false_22, %true_3 : i1
        %290 = vector.splat %true_3 : vector<10x10xi1>
        %291 = tensor.empty() : tensor<12x15x12xi16>
        scf.yield %291 : tensor<12x15x12xi16>
      }
      %274 = index.maxu %271, %c9
      %275 = math.cos %23 : tensor<f32>
      scf.yield %c1912367194_i64 : i64
    } else {
      %268 = math.log1p %13 : tensor<10x9xf32>
      vector.print %102 : vector<1xf16>
      %269 = math.ctpop %14 : tensor<12x15x12xi1>
      %270 = vector.extract_strided_slice %102 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
      %271 = vector.transpose %107, [0, 1] : vector<10x9xi16> to vector<10x9xi16>
      %272 = math.sqrt %23 : tensor<f32>
      %273 = index.ceildivs %c15, %c1
      %274 = affine.load %alloc_10[%c12, %c5] : memref<12x10xi16>
      scf.yield %c1912367194_i64 : i64
    }
    %187 = scf.if %false_1 -> (i64) {
      %268 = arith.cmpi ule, %c1028838234_i64, %c1912367194_i64 : i64
      %269 = bufferization.to_memref %4 : memref<12x15x12xi64>
      %270 = math.cttz %18 : tensor<12x12x15xi64>
      %271 = tensor.empty() : tensor<12x9xf32>
      %272 = linalg.matmul ins(%5, %13 : tensor<12x10xf32>, tensor<10x9xf32>) outs(%271 : tensor<12x9xf32>) -> tensor<12x9xf32>
      %273 = index.ceildivu %72, %c4
      %c16827_i16 = arith.constant 16827 : i16
      %274 = math.round %cst_4 : f32
      %275 = math.fma %13, %13, %13 : tensor<10x9xf32>
      scf.yield %c754390120_i64 : i64
    } else {
      %268 = arith.maxui %186, %49 : i64
      %269 = math.log1p %extracted : f32
      %270 = arith.negf %cst_4 : f32
      %271 = math.round %reduced : tensor<9xf32>
      %272 = index.ceildivs %c2, %c4
      vector.print %105 : vector<10xi16>
      %273 = index.maxs %c5, %167
      %274 = vector.insertelement %c-13670_i16, %176[%c7 : index] : vector<1xi16>
      scf.yield %186 : i64
    }
    %188 = index.ceildivu %c2, %167
    %189 = bufferization.to_memref %0 : memref<10x9xi64>
    %190 = arith.negf %extracted_32 : f32
    %191 = math.ipowi %3, %3 : tensor<10x9xi32>
    %192 = math.floor %5 : tensor<12x10xf32>
    %193 = vector.flat_transpose %119 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
    %194 = vector.broadcast %c-13670_i16 : i16 to vector<10xi16>
    %195 = vector.transfer_write %194, %120[%c11, %rank] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<10xi16>, tensor<10x10xi16>
    %196 = vector.broadcast %cst_4 : f32 to vector<12x10xf32>
    %197 = vector.fma %196, %80, %196 : vector<12x10xf32>
    %198 = math.log10 %reduced : tensor<9xf32>
    scf.execute_region {
      %268 = arith.cmpi uge, %c1028838234_i64, %c754390120_i64 : i64
      %269 = index.divu %123, %65
      %270 = vector.create_mask %c15, %29 : vector<10x9xi1>
      %271 = math.ceil %extracted : f32
      %272 = arith.maxsi %c1028838234_i64, %186 : i64
      %extracted_44 = tensor.extract %7[%c8, %c5, %c4] : tensor<12x15x12xf16>
      %273 = memref.atomic_rmw assign %cst_4, %alloc_7[%c3, %c7] : (f32, memref<10x9xf32>) -> f32
      %274 = affine.for %arg1 = 0 to 121 iter_args(%arg2 = %196) -> (vector<12x10xf32>) {
        affine.yield %80 : vector<12x10xf32>
      }
      %275 = scf.index_switch %164 -> tensor<10x9xi64> 
      case 1 {
        %282 = vector.broadcast %true : i1 to vector<12x15x12xi1>
        %283 = arith.shli %false_22, %true_0 : i1
        %284 = vector.insertelement %true_3, %118[%134 : index] : vector<9xi1>
        %alloca = memref.alloca() : memref<10x10xi16>
        %285 = vector.extract_strided_slice %102 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %286 = vector.flat_transpose %118 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
        memref.copy %alloc_9, %alloc_5 : memref<12x15x12xi1> to memref<12x15x12xi1>
        %287 = math.powf %extracted, %cst_2 : f32
        %288 = bufferization.to_memref %14 : memref<12x15x12xi1>
        %289 = arith.ori %c1116139000_i32, %c1897752162_i32 : i32
        %290 = arith.minsi %c-13670_i16, %c18241_i16 : i16
        %dest_46, %accumulated_value_47 = vector.scan <minf>, %59, %76 {inclusive = true, reduction_dim = 0 : i64} : vector<10x10xf16>, vector<10xf16>
        %291 = bufferization.clone %alloc_9 : memref<12x15x12xi1> to memref<12x15x12xi1>
        %alloc_48 = memref.alloc() : memref<10x10xf16>
        %rank_49 = tensor.rank %2 : tensor<10x9xi16>
        %292 = arith.remui %c-13670_i16, %c-13670_i16 : i16
        scf.yield %1 : tensor<10x9xi64>
      }
      case 2 {
        %282 = arith.negf %90 : f16
        %splat = tensor.splat %false_22 : tensor<12x15x12xi1>
        %283 = math.powf %178, %extracted_32 : f32
        %284 = arith.minui %c18241_i16, %c-13670_i16 : i16
        %285 = arith.ceildivsi %187, %49 : i64
        memref.tensor_store %7, %alloc_8 : memref<12x15x12xf16>
        memref.store %false_1, %alloc_9[%c5, %c1, %c9] : memref<12x15x12xi1>
        %286 = vector.flat_transpose %118 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
        %287 = math.tanh %7 : tensor<12x15x12xf16>
        %cst_46 = arith.constant 1.15422451E+9 : f32
        %288 = math.tanh %reduced : tensor<9xf32>
        %289 = bufferization.to_tensor %alloc_15 : memref<10x9xi32>
        %290 = affine.apply affine_map<(d0, d1) -> (((((d0 - d1) ceildiv 16) * 2) floordiv 128) * 32)>(%167, %29)
        %291 = arith.ori %c828314368_i32, %c1897752162_i32 : i32
        %292 = arith.shrui %true_0, %true_0 : i1
        memref.store %91, %alloc_6[%c8, %c2] : memref<10x10xi16>
        scf.yield %1 : tensor<10x9xi64>
      }
      default {
        affine.store %c828314368_i32, %alloc_15[%c9, %c9] : memref<10x9xi32>
        %282 = affine.min affine_map<(d0) -> ((d0 mod 2) * 64, d0 - (d0 mod 2) * 16 + 16, (d0 - (d0 mod 2) * 16) * 32)>(%c8)
        %283 = arith.minsi %false_1, %false : i1
        %284 = vector.insertelement %cst_4, %119[%147 : index] : vector<9xf32>
        %extracted_46 = tensor.extract %9[%c7, %c7] : tensor<12x10xi16>
        %285 = math.cttz %true_3 : i1
        %286 = index.divs %c15, %123
        %287 = arith.floordivsi %c1028838234_i64, %c1028838234_i64 : i64
        %288 = vector.broadcast %extracted_44 : f16 to vector<15xf16>
        %289 = vector.multi_reduction <minf>, %172, %288 [0, 2] : vector<12x15x12xf16> to vector<15xf16>
        %290 = index.add %123, %c0
        %291 = math.log1p %178 : f32
        %292 = vector.maskedload %alloc_9[%c7, %c1, %c9], %118, %118 : memref<12x15x12xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
        %293 = arith.shrui %c1028838234_i64, %c754390120_i64 : i64
        %294 = bufferization.clone %alloc_15 : memref<10x9xi32> to memref<10x9xi32>
        %295 = math.rsqrt %19 : tensor<9xf32>
        %296 = vector.matrix_multiply %150, %118 {lhs_columns = 3 : i32, lhs_rows = 4 : i32, rhs_columns = 3 : i32} : (vector<12xi1>, vector<9xi1>) -> vector<12xi1>
        scf.yield %1 : tensor<10x9xi64>
      }
      %276 = arith.divui %c828314368_i32, %c1116139000_i32 : i32
      %277 = math.ceil %178 : f32
      %alloc_45 = memref.alloc() : memref<12x12x15xi64>
      memref.tensor_store %18, %alloc_45 : memref<12x12x15xi64>
      %278 = math.log %19 : tensor<9xf32>
      %279 = arith.minui %false, %true : i1
      %280 = math.cttz %c828314368_i32 : i32
      %281 = math.fma %178, %cst_4, %extracted : f32
      scf.yield
    }
    %199 = scf.execute_region -> i32 {
      %268 = vector.insertelement %extracted, %119[%c1 : index] : vector<9xf32>
      %269 = vector.broadcast %c0 : index to vector<15xindex>
      %270 = vector.broadcast %false_1 : i1 to vector<15xi1>
      %271 = vector.broadcast %36 : f16 to vector<15xf16>
      vector.scatter %alloc_16[%c1, %c9] [%269], %270, %271 : memref<12x10xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
      %272 = math.ctlz %8 : tensor<12x10xi1>
      %273 = vector.insertelement %91, %176[%c5 : index] : vector<1xi16>
      affine.store %90, %alloc_16[%c6, %c9] : memref<12x10xf16>
      %c1_i16 = arith.constant 1 : i16
      %274 = vector.transfer_read %12[%c15, %c6], %c1_i16 : tensor<12x10xi16>, vector<12xi16>
      memref.copy %alloc_6, %99 : memref<10x10xi16> to memref<10x10xi16>
      %275 = vector.extract %60[7] : vector<10x10xi1>
      %276 = arith.andi %49, %c1912367194_i64 : i64
      %277 = index.sub %134, %85
      %alloca = memref.alloca() : memref<12x10xi64>
      memref.copy %alloc_6, %180 : memref<10x10xi16> to memref<10x10xi16>
      %278 = arith.minsi %186, %49 : i64
      %279 = math.ctlz %15 : tensor<10x10xi16>
      %alloc_44 = memref.alloc() : memref<10x10xi64>
      %280 = bufferization.to_tensor %alloc_27 : memref<10x9xf16>
      scf.yield %c1116139000_i32 : i32
    }
    %200 = vector.extract %60[5] : vector<10x10xi1>
    %201 = index.floordivs %c9, %100
    %generated = tensor.generate %188 {
    ^bb0(%arg1: index, %arg2: index):
      %cst_44 = arith.constant 1.5141504E+9 : f32
      %268 = arith.floordivsi %c754390120_i64, %49 : i64
      %269 = vector.insert %90, %149 [5] : f16 into vector<12xf16>
      %extracted_45 = tensor.extract %8[%c5, %c2] : tensor<12x10xi1>
      tensor.yield %199 : i32
    } : tensor<?x10xi32>
    %202 = vector.load %alloc_14[%c3, %c1] : memref<10x9xf32>, vector<10x9xf32>
    %203 = vector.transpose %25, [0] : vector<10xf16> to vector<10xf16>
    %204 = arith.remui %199, %c1116139000_i32 : i32
    %205 = arith.remf %36, %cst : f16
    %206 = math.cos %13 : tensor<10x9xf32>
    %207 = math.fma %extracted_32, %cst_4, %cst_2 : f32
    %dest_33, %accumulated_value_34 = vector.scan <minsi>, %93, %118 {inclusive = true, reduction_dim = 0 : i64} : vector<10x9xi1>, vector<9xi1>
    %208 = scf.execute_region -> vector<12x15x12xf32> {
      %268 = bufferization.to_tensor %alloc_9 : memref<12x15x12xi1>
      %269 = math.ctlz %c1116139000_i32 : i32
      %270 = arith.addf %90, %90 : f16
      %rank_44 = tensor.rank %12 : tensor<12x10xi16>
      %271 = math.cos %extracted : f32
      %272 = vector.extract %117[7] : vector<9xf32>
      %273 = vector.insertelement %36, %76[%57 : index] : vector<10xf16>
      %274 = arith.remui %c754390120_i64, %c1912367194_i64 : i64
      %275 = vector.broadcast %extracted : f32 to vector<12xf32>
      %dest_45, %accumulated_value_46 = vector.scan <add>, %197, %275 {inclusive = false, reduction_dim = 1 : i64} : vector<12x10xf32>, vector<12xf32>
      %cst_47 = arith.constant 1.86305715E+9 : f32
      %276 = bufferization.to_tensor %alloc : memref<12x10xi16>
      %277 = arith.subi %49, %49 : i64
      %278 = arith.minsi %false_1, %false : i1
      %279 = vector.load %alloc_17[%c9, %c5] : memref<12x10xf32>, vector<10x10xf32>
      %splat = tensor.splat %extracted : tensor<12x15x12xf32>
      %280 = index.sizeof
      %281 = vector.broadcast %178 : f32 to vector<12x15x12xf32>
      scf.yield %281 : vector<12x15x12xf32>
    }
    %209 = vector.flat_transpose %151 {columns = 3 : i32, rows = 4 : i32} : vector<12xf16> -> vector<12xf16>
    %210 = arith.floordivsi %c18241_i16, %91 : i16
    %211 = arith.shrsi %91, %c18241_i16 : i16
    memref.copy %alloc_6, %180 : memref<10x10xi16> to memref<10x10xi16>
    vector.print %202 : vector<10x9xf32>
    %212 = vector.broadcast %178 : f32 to vector<10x9xf32>
    %213 = vector.fma %212, %169, %168 : vector<10x9xf32>
    %214 = math.expm1 %cst : f16
    %215 = index.mul %c11, %rank
    %216 = bufferization.clone %180 : memref<10x10xi16> to memref<10x10xi16>
    %extracted_35 = tensor.extract %7[%c11, %c13, %c9] : tensor<12x15x12xf16>
    %217 = math.log %cst_4 : f32
    %218 = scf.if %true_0 -> (i1) {
      %268 = arith.remui %c754390120_i64, %187 : i64
      scf.if %true_0 {
        %274 = arith.negf %extracted_32 : f32
        %275 = math.expm1 %cst_4 : f32
        %276 = bufferization.to_tensor %99 : memref<10x10xi16>
        %277 = affine.apply affine_map<(d0, d1, d2) -> (d2 * 16)>(%c14, %33, %rank)
        memref.copy %177, %alloc_27 : memref<10x9xf16> to memref<10x9xf16>
        %278 = vector.broadcast %cst : f16 to vector<12x12xf16>
        %279 = vector.outerproduct %149, %151, %278 {kind = #vector.kind<mul>} : vector<12xf16>, vector<12xf16>
        %280 = vector.multi_reduction <and>, %118, %118 [] : vector<9xi1> to vector<9xi1>
        %281 = math.expm1 %36 : f16
      }
      %269 = vector.broadcast %148 : index to vector<10xindex>
      vector.scatter %alloc[%c6, %c7] [%269], %200, %139 : memref<12x10xi16>, vector<10xindex>, vector<10xi1>, vector<10xi16>
      %270 = bufferization.to_memref %1 : memref<10x9xi64>
      %alloca = memref.alloca() : memref<10x10xf32>
      %271 = bufferization.to_tensor %alloc_18 : memref<12x15x12xf32>
      %272 = math.ceil %22 : tensor<9xf32>
      %273 = vector.create_mask %c3, %164 : vector<10x10xi1>
      scf.yield %true_0 : i1
    } else {
      %268 = math.ctlz %9 : tensor<12x10xi16>
      %269 = index.maxu %201, %29
      %270 = math.cos %23 : tensor<f32>
      %271 = affine.min affine_map<(d0, d1, d2) -> (0, d1 * 8 - 64, d2 mod 32, d2)>(%c2, %rank, %c6)
      %272 = index.sub %c8, %72
      %273 = math.ctpop %14 : tensor<12x15x12xi1>
      %274 = vector.broadcast %c-13670_i16 : i16 to vector<9xi16>
      %275 = vector.maskedload %alloc[%c4, %c2], %118, %274 : memref<12x10xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
      %276 = arith.divui %true, %false_1 : i1
      scf.yield %true_0 : i1
    }
    %219 = math.log1p %extracted_32 : f32
    %rank_36 = tensor.rank %cast : tensor<?x?xi1>
    %generated_37 = tensor.generate %29 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %268 = arith.minui %91, %91 : i16
      %rank_44 = tensor.rank %24 : tensor<f32>
      %269 = tensor.empty() : tensor<15x12xf16>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%269 : tensor<15x12xf16>) outs(%7 : tensor<12x15x12xf16>) {
      ^bb0(%in: f16, %out: f16):
        %272 = vector.create_mask %arg2, %c3, %c5 : vector<12x15x12xi1>
        %273 = index.divu %123, %c10
        %274 = vector.transpose %196, [1, 0] : vector<12x10xf32> to vector<10x12xf32>
        %275 = index.divu %201, %c13
        %276 = memref.atomic_rmw assign %extracted_35, %alloc_8[%c6, %c6, %c6] : (f16, memref<12x15x12xf16>) -> f16
        %277 = math.ctpop %10 : tensor<10x9xi16>
        %278 = vector.load %alloc_9[%c2, %c13, %c0] : memref<12x15x12xi1>, vector<12x15x12xi1>
        %279 = index.sub %275, %c13
        %280 = tensor.empty(%279) : tensor<10x?xi1>
        %281 = index.ceildivu %85, %c9
        %282 = arith.shli %187, %c1912367194_i64 : i64
        %283 = math.ctpop %15 : tensor<10x10xi16>
        %284 = vector.bitcast %118 : vector<9xi1> to vector<9xi1>
        %285 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 * 2) floordiv 128, d2 * 2)>(%53, %100, %c13, %rank_36)
        %286 = vector.flat_transpose %209 {columns = 3 : i32, rows = 4 : i32} : vector<12xf16> -> vector<12xf16>
        %collapsed = tensor.collapse_shape %0 [[0, 1]] : tensor<10x9xi64> into tensor<90xi64>
        %287 = math.round %out : f16
        %288 = math.absi %187 : i64
        %289 = arith.minf %cst_4, %cst_2 : f32
        %290 = vector.create_mask %134, %281 : vector<10x9xi1>
        %291 = memref.atomic_rmw addf %36, %alloc_8[%c11, %c9, %c2] : (f16, memref<12x15x12xf16>) -> f16
        %292 = index.add %c11, %c2
        %cst_45 = arith.constant 0x4DA94977 : f32
        %293 = arith.shrsi %49, %49 : i64
        %294 = math.exp %out : f16
        %295 = arith.remf %36, %cst : f16
        %296 = vector.splat %90 : vector<12x10xf16>
        %297 = arith.minf %90, %out : f16
        %298 = memref.atomic_rmw muli %c-13670_i16, %99[%c1, %c0] : (i16, memref<10x10xi16>) -> i16
        %299 = math.ctpop %54 : tensor<12x10xi16>
        %300 = math.tanh %cst_2 : f32
        %301 = arith.subi %true_3, %false : i1
        linalg.yield %36 : f16
      } -> tensor<12x15x12xf16>
      %271 = vector.load %180[%c6, %c0] : memref<10x10xi16>, vector<12x15x12xi16>
      tensor.yield %false : i1
    } : tensor<?x15x12xi1>
    %220 = vector.broadcast %extracted : f32 to vector<9x9xf32>
    %221 = vector.outerproduct %119, %193, %220 {kind = #vector.kind<add>} : vector<9xf32>, vector<9xf32>
    %222 = vector.load %alloc_15[%c2, %c3] : memref<10x9xi32>, vector<12x15x12xi32>
    %223 = bufferization.to_tensor %alloc_19 : memref<10x10xf32>
    %extracted_38 = tensor.extract %12[%c5, %c3] : tensor<12x10xi16>
    %224 = math.tan %5 : tensor<12x10xf32>
    %225 = vector.create_mask %43, %c13 : vector<10x10xi1>
    %226 = vector.broadcast %extracted : f32 to vector<12xf32>
    %227 = vector.multi_reduction <add>, %197, %226 [1] : vector<12x10xf32> to vector<12xf32>
    %228 = arith.shrui %true_3, %false_22 : i1
    %generated_39 = tensor.generate %33 {
    ^bb0(%arg1: index, %arg2: index):
      scf.index_switch %123 
      case 1 {
        %269 = math.fma %7, %7, %7 : tensor<12x15x12xf16>
        %rank_44 = tensor.rank %22 : tensor<9xf32>
        %270 = arith.floordivsi %extracted_38, %extracted_38 : i16
        %271 = index.ceildivu %c9, %c12
        %272 = bufferization.clone %177 : memref<10x9xf16> to memref<10x9xf16>
        %273 = arith.divsi %91, %c-13670_i16 : i16
        %274 = vector.create_mask %147, %c8 : vector<12x10xi1>
        %275 = tensor.empty() : tensor<9x9xi16>
        %276 = tensor.empty() : tensor<10x9xi16>
        %277 = linalg.matmul ins(%10, %275 : tensor<10x9xi16>, tensor<9x9xi16>) outs(%276 : tensor<10x9xi16>) -> tensor<10x9xi16>
        %false_45 = arith.constant false
        %278 = index.floordivs %c8, %c1
        vector.print %25 : vector<10xf16>
        %279 = math.absi %14 : tensor<12x15x12xi1>
        %280 = bufferization.to_tensor %180 : memref<10x10xi16>
        %281 = vector.splat %false_1 : vector<12x10xi1>
        %282 = vector.extract_strided_slice %169 {offsets = [7], sizes = [1], strides = [1]} : vector<10x9xf32> to vector<1x9xf32>
        %283 = vector.broadcast %extracted_35 : f16 to vector<15x12xf16>
        %284 = vector.insert %283, %172 [4] : vector<15x12xf16> into vector<12x15x12xf16>
        scf.yield
      }
      default {
        %269 = math.ctlz %true : i1
        %270 = affine.apply affine_map<(d0, d1) -> (((((d0 - d1) ceildiv 16) * 2) floordiv 128) * 32)>(%29, %148)
        %271 = math.ceil %13 : tensor<10x9xf32>
        %272 = arith.muli %c18241_i16, %91 : i16
        %273 = arith.minui %218, %true_3 : i1
        vector.print %118 : vector<9xi1>
        %274 = arith.ori %true, %false_22 : i1
        memref.copy %189, %alloc_13 : memref<10x9xi64> to memref<10x9xi64>
        %275 = vector.broadcast %c-13670_i16 : i16 to vector<12x15x12xi16>
        %276 = vector.broadcast %extracted_32 : f32 to vector<10x9xf32>
        %277 = vector.insert %25, %59 [9] : vector<10xf16> into vector<10x10xf16>
        %278 = vector.transpose %174, [1, 0] : vector<10x10xi1> to vector<10x10xi1>
        %279 = arith.maxui %218, %true_3 : i1
        %280 = affine.apply affine_map<(d0) -> (d0)>(%215)
        %281 = vector.splat %c2 : vector<12x15x12xindex>
        %282 = vector.transpose %80, [0, 1] : vector<12x10xf32> to vector<12x10xf32>
      }
      %268 = arith.minsi %extracted_38, %c-13670_i16 : i16
      affine.store %true_3, %alloc_9[%c3, %c8, %c9] : memref<12x15x12xi1>
      %alloca = memref.alloca() : memref<10x9xi16>
      tensor.yield %extracted : f32
    } : tensor<?x9xf32>
    %229 = scf.index_switch %c6 -> vector<12x10xi16> 
    case 1 {
      %268 = index.floordivs %c11, %c3
      %269 = vector.splat %c1028838234_i64 : vector<12x15x12xi64>
      %270 = bufferization.to_memref %9 : memref<12x10xi16>
      %271 = math.powf %cst_4, %178 : f32
      vector.print %168 : vector<10x9xf32>
      %272 = scf.execute_region -> i32 {
        %282 = vector.splat %188 : vector<12x15x12xindex>
        %inserted = tensor.insert %187 into %1[%c8, %c8] : tensor<10x9xi64>
        %283 = arith.shrsi %false, %false_1 : i1
        %expanded = tensor.expand_shape %12 [[0], [1, 2]] : tensor<12x10xi16> into tensor<12x10x1xi16>
        %284 = arith.minui %c1897752162_i32, %c828314368_i32 : i32
        %285 = memref.atomic_rmw mins %c18241_i16, %alloc[%c7, %c0] : (i16, memref<12x10xi16>) -> i16
        %286 = arith.minui %c18241_i16, %91 : i16
        %287 = index.ceildivu %215, %134
        %288 = math.atan %extracted_32 : f32
        %289 = vector.extract %119[0] : vector<9xf32>
        %290 = math.cttz %15 : tensor<10x10xi16>
        %291 = math.cttz %1 : tensor<10x9xi64>
        %292 = arith.andi %218, %false : i1
        %293 = vector.extract_strided_slice %213 {offsets = [2], sizes = [2], strides = [1]} : vector<10x9xf32> to vector<2x9xf32>
        %294 = affine.load %alloc_15[%c3, %c5] : memref<10x9xi32>
        %295 = arith.addf %extracted, %cst_2 : f32
        scf.yield %c1897752162_i32 : i32
      }
      %273 = bufferization.to_tensor %189 : memref<10x9xi64>
      %extracted_44 = tensor.extract %transposed[%c1, %c11, %c4] : tensor<12x12x15xi64>
      %274 = math.round %7 : tensor<12x15x12xf16>
      %275 = arith.cmpi ult, %187, %187 : i64
      %276 = index.add %c13, %29
      %277 = vector.create_mask %164, %c8, %c5 : vector<12x15x12xi1>
      %278 = arith.minf %cst_2, %extracted_32 : f32
      %rank_45 = tensor.rank %17 : tensor<12x10xi1>
      %279 = arith.subi %199, %c1116139000_i32 : i32
      %280 = index.maxu %c7, %148
      %281 = vector.broadcast %c18241_i16 : i16 to vector<12x10xi16>
      scf.yield %281 : vector<12x10xi16>
    }
    case 2 {
      %268 = scf.while (%arg1 = %202) : (vector<10x9xf32>) -> vector<10x9xf32> {
        %283 = math.round %extracted_35 : f16
        %284 = math.sqrt %5 : tensor<12x10xf32>
        %true_47 = arith.constant true
        %285 = arith.remui %187, %c1912367194_i64 : i64
        %286 = math.fma %cst, %90, %cst : f16
        %287 = memref.atomic_rmw ori %c18241_i16, %99[%c4, %c2] : (i16, memref<10x10xi16>) -> i16
        %288 = vector.flat_transpose %95 {columns = 1 : i32, rows = 1 : i32} : vector<1xf16> -> vector<1xf16>
        %289 = arith.minui %c828314368_i32, %199 : i32
        scf.condition(%false_1) %213 : vector<10x9xf32>
      } do {
      ^bb0(%arg1: vector<10x9xf32>):
        %283 = arith.subi %false_1, %false : i1
        %284 = arith.mulf %36, %36 : f16
        vector.print %119 : vector<9xf32>
        %285 = arith.xori %false_1, %false_1 : i1
        %286 = math.ctlz %10 : tensor<10x9xi16>
        %287 = math.exp %cst_4 : f32
        %collapsed = tensor.collapse_shape %generated [[0, 1]] : tensor<?x10xi32> into tensor<?xi32>
        %288 = math.sqrt %5 : tensor<12x10xf32>
        %alloc_47 = memref.alloc() : memref<12x15x12xi32>
        %289 = index.mul %c14, %c1
        %290 = arith.floordivsi %c754390120_i64, %186 : i64
        %291 = arith.andi %c1116139000_i32, %c828314368_i32 : i32
        memref.tensor_store %120, %alloc_6 : memref<10x10xi16>
        %292 = arith.shrui %c754390120_i64, %186 : i64
        %293 = math.ctpop %c1897752162_i32 : i32
        %cst_48 = arith.constant 6.377600e+04 : f16
        scf.yield %212 : vector<10x9xf32>
      }
      %269 = index.sub %c5, %164
      %270 = vector.splat %false_1 : vector<10x10xi1>
      %alloc_44 = memref.alloc() : memref<12x15x12xf16>
      memref.copy %alloc_8, %alloc_44 : memref<12x15x12xf16> to memref<12x15x12xf16>
      %271 = vector.matrix_multiply %151, %25 {lhs_columns = 2 : i32, lhs_rows = 6 : i32, rhs_columns = 5 : i32} : (vector<12xf16>, vector<10xf16>) -> vector<30xf16>
      %272 = math.rsqrt %90 : f16
      %273 = bufferization.clone %alloc_13 : memref<10x9xi64> to memref<10x9xi64>
      %274 = bufferization.clone %alloc_9 : memref<12x15x12xi1> to memref<12x15x12xi1>
      %275 = tensor.empty() : tensor<12x10xi16>
      %276 = linalg.matmul ins(%12, %15 : tensor<12x10xi16>, tensor<10x10xi16>) outs(%275 : tensor<12x10xi16>) -> tensor<12x10xi16>
      %277 = vector.flat_transpose %118 {columns = 3 : i32, rows = 3 : i32} : vector<9xi1> -> vector<9xi1>
      %278 = arith.xori %c18241_i16, %c18241_i16 : i16
      %279 = vector.transpose %118, [0] : vector<9xi1> to vector<9xi1>
      memref.alloca_scope  {
        memref.tensor_store %11, %alloc_10 : memref<12x10xi16>
        memref.store %extracted, %alloc_17[%c3, %c7] : memref<12x10xf32>
        %283 = vector.insertelement %cst, %76[%c6 : index] : vector<10xf16>
        %284 = bufferization.to_tensor %alloc_19 : memref<10x10xf32>
        %285 = arith.cmpi ule, %extracted_38, %91 : i16
        %286 = tensor.empty() : tensor<9x10xi64>
        %287 = tensor.empty() : tensor<10x10xi64>
        %288 = linalg.matmul ins(%1, %286 : tensor<10x9xi64>, tensor<9x10xi64>) outs(%287 : tensor<10x10xi64>) -> tensor<10x10xi64>
        %extracted_47 = tensor.extract %7[%c8, %c10, %c7] : tensor<12x15x12xf16>
        %289 = vector.maskedload %alloc_27[%c6, %c8], %150, %151 : memref<10x9xf16>, vector<12xi1>, vector<12xf16> into vector<12xf16>
        %rank_48 = tensor.rank %5 : tensor<12x10xf32>
        %290 = vector.bitcast %139 : vector<10xi16> to vector<10xi16>
        %291 = arith.andi %false_1, %false_22 : i1
        %292 = vector.transpose %174, [0, 1] : vector<10x10xi1> to vector<10x10xi1>
        %c-17828_i16 = arith.constant -17828 : i16
        %293 = memref.atomic_rmw assign %extracted_47, %177[%c0, %c3] : (f16, memref<10x9xf16>) -> f16
        vector.print %197 : vector<12x10xf32>
        %294 = vector.extract_strided_slice %115 {offsets = [3], sizes = [1], strides = [1]} : vector<10x10xi1> to vector<1x10xi1>
        %cast_49 = tensor.cast %3 : tensor<10x9xi32> to tensor<?x?xi32>
        %295 = index.add %c15, %164
        %296 = vector.bitcast %222 : vector<12x15x12xi32> to vector<12x15x12xi32>
        %297 = math.expm1 %5 : tensor<12x10xf32>
        %from_elements = tensor.from_elements %91, %extracted_38, %extracted_38, %91, %c-13670_i16, %91, %c-13670_i16, %extracted_38, %c-13670_i16, %c18241_i16, %c18241_i16, %91, %c-13670_i16, %91, %c18241_i16, %91, %c18241_i16, %91, %91, %extracted_38, %c-13670_i16, %c18241_i16, %extracted_38, %extracted_38, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %c18241_i16, %c-13670_i16, %91, %extracted_38, %91, %91, %c-13670_i16, %c18241_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %c18241_i16, %c-13670_i16, %extracted_38, %c18241_i16, %c18241_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %extracted_38, %extracted_38, %c-13670_i16, %91, %91, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %91, %c18241_i16, %91, %extracted_38, %c18241_i16, %c-13670_i16, %extracted_38, %c-13670_i16, %extracted_38, %91, %91, %extracted_38, %c-13670_i16, %extracted_38, %c-13670_i16, %c-13670_i16, %c18241_i16, %91, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %91, %c-13670_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %extracted_38, %91, %c18241_i16, %91, %extracted_38, %91, %extracted_38, %91, %91, %extracted_38, %91, %c-13670_i16, %c18241_i16, %c-13670_i16, %91, %91, %c-13670_i16, %91, %c-13670_i16, %91, %c-13670_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %extracted_38, %extracted_38, %91, %c18241_i16, %c-13670_i16, %c18241_i16, %91, %91, %91, %c-13670_i16, %c18241_i16, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %c18241_i16, %c-13670_i16, %extracted_38, %c-13670_i16, %extracted_38, %c18241_i16, %c18241_i16, %c-13670_i16, %91, %91, %c-13670_i16, %extracted_38, %91, %extracted_38, %91, %91, %91, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %91, %c18241_i16, %c-13670_i16, %91, %c18241_i16, %91, %extracted_38, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %extracted_38, %91, %c18241_i16, %extracted_38, %91, %c18241_i16, %91, %c-13670_i16, %91, %c-13670_i16, %c18241_i16, %c-13670_i16, %91, %91, %c-13670_i16, %91, %c-13670_i16, %c18241_i16, %c-13670_i16, %extracted_38, %91, %91, %c18241_i16, %c-13670_i16, %c18241_i16, %extracted_38, %91, %91, %c-13670_i16, %c-13670_i16, %extracted_38, %extracted_38, %c18241_i16, %extracted_38, %c18241_i16, %c-13670_i16, %c-13670_i16, %91, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %c-13670_i16, %extracted_38, %c18241_i16, %c-13670_i16, %extracted_38, %extracted_38, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %extracted_38, %extracted_38, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %91, %c-13670_i16, %extracted_38, %c18241_i16, %c18241_i16, %extracted_38, %91, %c-13670_i16, %91, %c-13670_i16, %91, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %extracted_38, %91, %c-13670_i16, %c-13670_i16, %c-13670_i16, %91, %91, %c18241_i16, %91, %c-13670_i16, %extracted_38, %c18241_i16, %91, %extracted_38, %91, %c18241_i16, %extracted_38, %91, %c18241_i16, %c-13670_i16, %c18241_i16, %91, %c-13670_i16, %extracted_38, %c18241_i16, %extracted_38, %extracted_38, %extracted_38, %extracted_38, %c18241_i16, %91, %c18241_i16, %91, %c-13670_i16, %91, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %extracted_38, %c18241_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %91, %extracted_38, %c18241_i16, %91, %c-13670_i16, %91, %extracted_38, %91, %c-13670_i16, %91, %c18241_i16, %91, %c18241_i16, %c18241_i16, %extracted_38, %91, %c-13670_i16, %extracted_38, %c18241_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %91, %extracted_38, %extracted_38, %91, %extracted_38, %c-13670_i16, %extracted_38, %c18241_i16, %extracted_38, %extracted_38, %91, %extracted_38, %91, %c-13670_i16, %c-13670_i16, %extracted_38, %c18241_i16, %c18241_i16, %c-13670_i16, %91, %c18241_i16, %c18241_i16, %c18241_i16, %91, %c-13670_i16, %c-13670_i16, %c-13670_i16, %91, %91, %extracted_38, %91, %extracted_38, %c18241_i16, %extracted_38, %91, %c-13670_i16, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %91, %91, %extracted_38, %extracted_38, %c18241_i16, %c18241_i16, %c18241_i16, %91, %c18241_i16, %c-13670_i16, %91, %c-13670_i16, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %91, %c18241_i16, %extracted_38, %91, %91, %91, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %extracted_38, %91, %extracted_38, %91, %c-13670_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %91, %91, %c18241_i16, %extracted_38, %c-13670_i16, %extracted_38, %extracted_38, %c-13670_i16, %c18241_i16, %c18241_i16, %91, %c-13670_i16, %extracted_38, %c18241_i16, %91, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %extracted_38, %91, %91, %c18241_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %91, %c-13670_i16, %extracted_38, %c-13670_i16, %c-13670_i16, %91, %91, %c-13670_i16, %c18241_i16, %c18241_i16, %c18241_i16, %extracted_38, %91, %c-13670_i16, %91, %91, %c-13670_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %91, %extracted_38, %extracted_38, %extracted_38, %91, %c-13670_i16, %91, %91, %c-13670_i16, %c18241_i16, %91, %extracted_38, %91, %extracted_38, %91, %c-13670_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %extracted_38, %c-13670_i16, %c-13670_i16, %extracted_38, %extracted_38, %c-13670_i16, %91, %c18241_i16, %c18241_i16, %c18241_i16, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %c18241_i16, %91, %c-13670_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %extracted_38, %extracted_38, %c-13670_i16, %91, %c18241_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %91, %c18241_i16, %extracted_38, %c-13670_i16, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %c18241_i16, %extracted_38, %91, %91, %extracted_38, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %91, %c18241_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %91, %91, %c-13670_i16, %c18241_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %91, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %c-13670_i16, %91, %c-13670_i16, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %91, %91, %c18241_i16, %c18241_i16, %91, %91, %c-13670_i16, %91, %extracted_38, %91, %c18241_i16, %c18241_i16, %91, %c-13670_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %c18241_i16, %91, %91, %c18241_i16, %extracted_38, %91, %c18241_i16, %c18241_i16, %c18241_i16, %extracted_38, %c-13670_i16, %extracted_38, %c-13670_i16, %extracted_38, %c18241_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %extracted_38, %c-13670_i16, %91, %c-13670_i16, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %extracted_38, %c-13670_i16, %c18241_i16, %91, %c18241_i16, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %91, %extracted_38, %c18241_i16, %c18241_i16, %c18241_i16, %c18241_i16, %91, %91, %extracted_38, %extracted_38, %extracted_38, %91, %extracted_38, %c18241_i16, %c-13670_i16, %91, %c18241_i16, %c-13670_i16, %c18241_i16, %extracted_38, %c-13670_i16, %91, %c-13670_i16, %c18241_i16, %extracted_38, %c-13670_i16, %91, %91, %extracted_38, %91, %extracted_38, %c18241_i16, %c-13670_i16, %extracted_38, %c18241_i16, %91, %91, %c-13670_i16, %c18241_i16, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %extracted_38, %extracted_38, %c18241_i16, %c-13670_i16, %91, %extracted_38, %91, %extracted_38, %c-13670_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %91, %extracted_38, %c-13670_i16, %extracted_38, %extracted_38, %extracted_38, %c18241_i16, %extracted_38, %extracted_38, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %91, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %extracted_38, %91, %c18241_i16, %extracted_38, %c-13670_i16, %extracted_38, %c-13670_i16, %91, %c-13670_i16, %c18241_i16, %c18241_i16, %c-13670_i16, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %extracted_38, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %91, %extracted_38, %c-13670_i16, %91, %c-13670_i16, %91, %c-13670_i16, %extracted_38, %91, %extracted_38, %extracted_38, %c-13670_i16, %c18241_i16, %extracted_38, %91, %91, %c18241_i16, %c18241_i16, %91, %c18241_i16, %extracted_38, %91, %c-13670_i16, %91, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %c-13670_i16, %c-13670_i16, %c18241_i16, %extracted_38, %extracted_38, %91, %91, %extracted_38, %extracted_38, %c-13670_i16, %c-13670_i16, %91, %extracted_38, %91, %c18241_i16, %c18241_i16, %c-13670_i16, %91, %c18241_i16, %91, %extracted_38, %91, %c18241_i16, %c-13670_i16, %91, %extracted_38, %c18241_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %c18241_i16, %91, %c18241_i16, %extracted_38, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %c-13670_i16, %c18241_i16, %91, %extracted_38, %extracted_38, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %91, %c-13670_i16, %extracted_38, %91, %91, %extracted_38, %91, %c18241_i16, %91, %c18241_i16, %91, %c18241_i16, %c18241_i16, %extracted_38, %c-13670_i16, %extracted_38, %extracted_38, %91, %91, %extracted_38, %c18241_i16, %c-13670_i16, %91, %c18241_i16, %c-13670_i16, %extracted_38, %c18241_i16, %c-13670_i16, %extracted_38, %c-13670_i16, %extracted_38, %c18241_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %extracted_38, %91, %91, %extracted_38, %c-13670_i16, %c18241_i16, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %extracted_38, %c-13670_i16, %91, %c18241_i16, %91, %91, %c-13670_i16, %c-13670_i16, %extracted_38, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %91, %extracted_38, %91, %91, %c18241_i16, %91, %extracted_38, %c18241_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %c18241_i16, %91, %c-13670_i16, %91, %extracted_38, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %91, %extracted_38, %91, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %91, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %91, %c-13670_i16, %91, %extracted_38, %91, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %91, %c18241_i16, %c-13670_i16, %c-13670_i16, %91, %extracted_38, %extracted_38, %extracted_38, %extracted_38, %c-13670_i16, %91, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %91, %c18241_i16, %extracted_38, %91, %extracted_38, %extracted_38, %extracted_38, %91, %c18241_i16, %c18241_i16, %extracted_38, %c-13670_i16, %c-13670_i16, %91, %extracted_38, %c-13670_i16, %c18241_i16, %91, %91, %c18241_i16, %91, %extracted_38, %91, %extracted_38, %c18241_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %c18241_i16, %91, %91, %91, %c-13670_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %91, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %extracted_38, %extracted_38, %c-13670_i16, %c-13670_i16, %91, %extracted_38, %c18241_i16, %c18241_i16, %91, %91, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %91, %extracted_38, %c-13670_i16, %extracted_38, %c18241_i16, %c-13670_i16, %extracted_38, %extracted_38, %c-13670_i16, %extracted_38, %c-13670_i16, %91, %91, %extracted_38, %c-13670_i16, %extracted_38, %91, %91, %c18241_i16, %91, %91, %c18241_i16, %c-13670_i16, %c-13670_i16, %91, %c-13670_i16, %91, %c-13670_i16, %91, %extracted_38, %c-13670_i16, %c18241_i16, %c18241_i16, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %extracted_38, %c18241_i16, %c18241_i16, %c-13670_i16, %extracted_38, %c-13670_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %91, %91, %c-13670_i16, %extracted_38, %c-13670_i16, %c18241_i16, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %c18241_i16, %extracted_38, %extracted_38, %c-13670_i16, %91, %c18241_i16, %c18241_i16, %c-13670_i16, %extracted_38, %c18241_i16, %c-13670_i16, %extracted_38, %c-13670_i16, %c-13670_i16, %c18241_i16, %extracted_38, %extracted_38, %91, %extracted_38, %extracted_38, %91, %extracted_38, %c-13670_i16, %extracted_38, %c-13670_i16, %extracted_38, %c-13670_i16, %extracted_38, %c-13670_i16, %91, %91, %91, %extracted_38, %extracted_38, %c18241_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %91, %extracted_38, %extracted_38, %c18241_i16, %extracted_38, %91, %c18241_i16, %extracted_38, %c-13670_i16, %extracted_38, %c-13670_i16, %91, %c-13670_i16, %c18241_i16, %91, %c-13670_i16, %c-13670_i16, %extracted_38, %c18241_i16, %91, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %91, %extracted_38, %91, %c18241_i16, %91, %c18241_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %c18241_i16, %c-13670_i16, %extracted_38, %extracted_38, %91, %extracted_38, %91, %c18241_i16, %c-13670_i16, %extracted_38, %91, %extracted_38, %c-13670_i16, %91, %c-13670_i16, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %91, %extracted_38, %c-13670_i16, %91, %c-13670_i16, %extracted_38, %91, %c-13670_i16, %extracted_38, %c-13670_i16, %extracted_38, %91, %91, %extracted_38, %c-13670_i16, %91, %extracted_38, %91, %extracted_38, %c18241_i16, %c-13670_i16, %extracted_38, %c-13670_i16, %c18241_i16, %91, %c18241_i16, %91, %c-13670_i16, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %c18241_i16, %c18241_i16, %91, %c18241_i16, %c18241_i16, %c18241_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %c18241_i16, %91, %91, %91, %c18241_i16, %c-13670_i16, %91, %c-13670_i16, %extracted_38, %91, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %91, %91, %c-13670_i16, %extracted_38, %91, %91, %c-13670_i16, %c-13670_i16, %extracted_38, %extracted_38, %91, %91, %c-13670_i16, %extracted_38, %91, %91, %91, %c18241_i16, %extracted_38, %extracted_38, %c18241_i16, %extracted_38, %91, %c-13670_i16, %91, %91, %c18241_i16, %91, %91, %extracted_38, %c-13670_i16, %91, %c-13670_i16, %extracted_38, %c-13670_i16, %91, %c18241_i16, %extracted_38, %91, %c18241_i16, %c18241_i16, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %extracted_38, %91, %c-13670_i16, %extracted_38, %c18241_i16, %extracted_38, %91, %extracted_38, %91, %c-13670_i16, %91, %c-13670_i16, %c-13670_i16, %91, %91, %91, %c18241_i16, %91, %c18241_i16, %c-13670_i16, %91, %91, %c-13670_i16, %c-13670_i16, %extracted_38, %91, %extracted_38, %c-13670_i16, %extracted_38, %91, %c-13670_i16, %extracted_38, %c-13670_i16, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %91, %91, %extracted_38, %91, %c18241_i16, %91, %c-13670_i16, %c-13670_i16, %c18241_i16, %extracted_38, %91, %c18241_i16, %91, %91, %c18241_i16, %extracted_38, %91, %c-13670_i16, %c18241_i16, %extracted_38, %extracted_38, %extracted_38, %c18241_i16, %extracted_38, %91, %c-13670_i16, %extracted_38, %c18241_i16, %91, %91, %91, %c-13670_i16, %extracted_38, %91, %91, %extracted_38, %extracted_38, %c-13670_i16, %c18241_i16, %c18241_i16, %extracted_38, %91, %extracted_38, %c-13670_i16, %91, %c18241_i16, %c18241_i16, %c18241_i16, %extracted_38, %extracted_38, %c-13670_i16, %91, %91, %c18241_i16, %c18241_i16, %c18241_i16, %extracted_38, %91, %c-13670_i16, %c18241_i16, %91, %extracted_38, %c-13670_i16, %extracted_38, %extracted_38, %91, %c-13670_i16, %c18241_i16, %c18241_i16, %c-13670_i16, %91, %extracted_38, %c18241_i16, %extracted_38, %c-13670_i16, %c-13670_i16, %extracted_38, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %extracted_38, %extracted_38, %c-13670_i16, %c-13670_i16, %extracted_38, %c18241_i16, %c18241_i16, %c-13670_i16, %91, %extracted_38, %91, %extracted_38, %extracted_38, %extracted_38, %extracted_38, %extracted_38, %91, %extracted_38, %91, %91, %extracted_38, %c18241_i16, %extracted_38, %91, %c18241_i16, %c18241_i16, %c18241_i16, %c18241_i16, %c18241_i16, %extracted_38, %extracted_38, %91, %c18241_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %91, %extracted_38, %91, %extracted_38, %extracted_38, %c18241_i16, %c18241_i16, %91, %c18241_i16, %extracted_38, %extracted_38, %c-13670_i16, %extracted_38, %91, %c-13670_i16, %c-13670_i16, %extracted_38, %91, %extracted_38, %extracted_38, %c-13670_i16, %91, %c18241_i16, %c-13670_i16, %91, %extracted_38, %extracted_38, %c-13670_i16, %91, %extracted_38, %91, %c18241_i16, %91, %91, %extracted_38, %extracted_38, %c-13670_i16, %91, %91, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %91, %extracted_38, %extracted_38, %extracted_38, %extracted_38, %c-13670_i16, %91, %extracted_38, %91, %extracted_38, %c-13670_i16, %c18241_i16, %c-13670_i16, %91, %c-13670_i16, %c-13670_i16, %extracted_38, %91, %91, %91, %91, %91, %c18241_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %c-13670_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %91, %91, %extracted_38, %c18241_i16, %c-13670_i16, %91, %c-13670_i16, %extracted_38, %91, %c18241_i16, %c-13670_i16, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %91, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %91, %extracted_38, %extracted_38, %extracted_38, %c-13670_i16, %extracted_38, %extracted_38, %c-13670_i16, %91, %extracted_38, %extracted_38, %c-13670_i16, %c18241_i16, %91, %91, %c18241_i16, %91, %91, %c-13670_i16, %c-13670_i16, %91, %c-13670_i16, %91, %91, %91, %c18241_i16, %91, %c-13670_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %extracted_38, %c-13670_i16, %c-13670_i16, %extracted_38, %c-13670_i16, %91, %extracted_38, %c-13670_i16, %c18241_i16, %extracted_38, %c18241_i16, %91, %c-13670_i16, %c-13670_i16, %91, %91, %91, %c18241_i16, %91, %c-13670_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %c-13670_i16, %91, %extracted_38, %extracted_38, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %91, %extracted_38, %91, %c-13670_i16, %c18241_i16, %91, %91, %c-13670_i16, %c18241_i16, %c-13670_i16, %91, %c-13670_i16, %c18241_i16, %91, %extracted_38, %c-13670_i16, %91, %extracted_38, %91, %extracted_38, %extracted_38, %c-13670_i16, %91, %c-13670_i16, %c-13670_i16, %c-13670_i16, %91, %extracted_38, %91, %c18241_i16, %c18241_i16, %91, %91, %91, %c-13670_i16, %c18241_i16, %91, %91, %extracted_38, %91, %91, %c18241_i16, %extracted_38, %extracted_38, %c-13670_i16, %91, %c18241_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %extracted_38, %c-13670_i16, %extracted_38, %c18241_i16, %c18241_i16, %91, %extracted_38, %c-13670_i16, %91, %c-13670_i16, %c18241_i16, %c18241_i16, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %extracted_38, %c-13670_i16, %c-13670_i16, %91, %extracted_38, %c18241_i16, %extracted_38, %91, %91, %91, %c18241_i16, %extracted_38, %extracted_38, %c18241_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %c-13670_i16, %91, %extracted_38, %c-13670_i16, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %extracted_38, %91, %c18241_i16, %c18241_i16, %91, %extracted_38, %91, %extracted_38, %c18241_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %extracted_38, %91, %91, %extracted_38, %c-13670_i16, %c18241_i16, %c-13670_i16, %91, %91, %extracted_38, %c-13670_i16, %c18241_i16, %c18241_i16, %c18241_i16, %extracted_38, %extracted_38, %extracted_38, %91, %extracted_38, %extracted_38, %91, %91, %c18241_i16, %extracted_38, %c-13670_i16, %91, %c18241_i16, %extracted_38, %extracted_38, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %extracted_38, %c18241_i16, %91, %c-13670_i16, %91, %extracted_38, %c18241_i16, %extracted_38, %c-13670_i16, %extracted_38, %91, %91, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %91, %91, %91, %91, %91, %c-13670_i16, %91, %91, %c18241_i16, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %extracted_38, %c18241_i16, %91, %c-13670_i16, %extracted_38, %c-13670_i16, %c18241_i16, %c18241_i16, %91, %91, %c-13670_i16, %91, %c18241_i16, %c-13670_i16, %91, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %91, %91, %91, %extracted_38, %extracted_38, %c18241_i16, %91, %c18241_i16, %c-13670_i16, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %c18241_i16, %c-13670_i16, %91, %c-13670_i16, %extracted_38, %91, %91, %extracted_38, %c18241_i16, %c18241_i16, %extracted_38, %c-13670_i16, %c-13670_i16, %c-13670_i16, %91, %c-13670_i16, %c18241_i16, %extracted_38, %c-13670_i16, %extracted_38, %c18241_i16, %91, %extracted_38, %91, %c18241_i16, %c18241_i16, %c18241_i16, %91, %91, %extracted_38, %extracted_38, %91, %91, %c-13670_i16, %c-13670_i16, %c18241_i16, %91, %c-13670_i16, %c18241_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %91, %extracted_38, %c18241_i16, %c18241_i16, %91, %91, %extracted_38, %c18241_i16, %c18241_i16, %extracted_38, %91, %c18241_i16, %extracted_38, %extracted_38, %91, %91, %c18241_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %c18241_i16, %extracted_38, %extracted_38, %c18241_i16, %extracted_38, %91, %extracted_38, %c-13670_i16, %extracted_38, %extracted_38, %extracted_38, %c-13670_i16, %extracted_38, %c-13670_i16, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %91, %extracted_38, %extracted_38, %extracted_38, %extracted_38, %c-13670_i16, %c-13670_i16, %extracted_38, %91, %c18241_i16, %extracted_38, %c-13670_i16, %extracted_38, %extracted_38, %extracted_38, %extracted_38, %91, %91, %extracted_38, %c-13670_i16, %91, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %91, %91, %c-13670_i16, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %c-13670_i16, %extracted_38, %c-13670_i16, %91, %extracted_38, %extracted_38, %c-13670_i16, %extracted_38, %extracted_38, %extracted_38, %c-13670_i16, %91, %c-13670_i16, %c-13670_i16, %91, %91, %c-13670_i16, %c18241_i16, %91, %c-13670_i16, %c-13670_i16, %extracted_38, %extracted_38, %c18241_i16, %extracted_38, %c18241_i16, %c18241_i16, %extracted_38, %91, %91, %91, %c18241_i16, %91, %c-13670_i16, %c18241_i16, %c-13670_i16, %extracted_38, %c18241_i16, %91, %91, %c18241_i16, %91, %c-13670_i16, %91, %91, %c18241_i16, %c-13670_i16, %c18241_i16, %c-13670_i16, %extracted_38, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %c18241_i16, %c18241_i16, %c18241_i16, %91, %c-13670_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %c-13670_i16, %c18241_i16, %91, %c18241_i16, %c18241_i16, %91, %91, %c-13670_i16, %91, %c18241_i16, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %c-13670_i16, %91, %c18241_i16, %extracted_38, %91, %c-13670_i16, %extracted_38, %91, %extracted_38, %c18241_i16, %c-13670_i16, %extracted_38, %c18241_i16, %91, %extracted_38, %extracted_38, %c-13670_i16, %91, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %91, %91, %91, %91, %c18241_i16, %91, %extracted_38, %c-13670_i16, %extracted_38, %91, %c-13670_i16, %91, %91, %91, %c18241_i16, %extracted_38, %c-13670_i16, %extracted_38, %c-13670_i16, %91, %91, %c-13670_i16, %c18241_i16, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %c-13670_i16, %c18241_i16, %c18241_i16, %91, %extracted_38, %91, %91, %c18241_i16, %c18241_i16, %c18241_i16, %c-13670_i16, %extracted_38, %c18241_i16, %c18241_i16, %extracted_38, %91, %c-13670_i16, %c18241_i16, %extracted_38, %91, %91, %91, %extracted_38, %c-13670_i16, %c-13670_i16, %c18241_i16, %91, %c18241_i16, %91, %91, %c18241_i16, %c-13670_i16, %extracted_38, %c18241_i16, %c-13670_i16, %c-13670_i16, %91, %c18241_i16, %91, %c18241_i16, %c18241_i16, %91, %extracted_38, %c-13670_i16, %91, %91, %c18241_i16, %c-13670_i16, %91, %c-13670_i16, %extracted_38, %91, %91, %91, %c-13670_i16, %c18241_i16, %91, %extracted_38, %c18241_i16, %extracted_38, %c18241_i16, %c-13670_i16, %c-13670_i16, %extracted_38, %extracted_38, %91, %extracted_38, %extracted_38, %c18241_i16, %91, %extracted_38, %91, %c18241_i16, %extracted_38, %91, %extracted_38, %extracted_38, %91, %extracted_38, %c18241_i16, %c-13670_i16, %c-13670_i16, %c18241_i16, %extracted_38, %91, %c-13670_i16, %c18241_i16, %extracted_38, %c18241_i16, %c-13670_i16, %c18241_i16, %c18241_i16, %c18241_i16, %c18241_i16, %extracted_38, %91, %c18241_i16, %91, %extracted_38, %c18241_i16, %91, %extracted_38, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %c18241_i16, %extracted_38, %91, %c18241_i16, %c-13670_i16, %91, %c-13670_i16, %c-13670_i16, %c-13670_i16, %91, %91, %91, %extracted_38, %91, %c-13670_i16, %extracted_38, %c-13670_i16, %91, %91, %c18241_i16, %c18241_i16, %c18241_i16, %extracted_38, %c-13670_i16, %91, %c-13670_i16, %c18241_i16, %91, %c-13670_i16, %91, %91, %c18241_i16, %c18241_i16, %91, %c18241_i16, %91, %91, %c-13670_i16, %c18241_i16, %91, %91, %extracted_38, %extracted_38, %91, %91, %91, %91, %c18241_i16, %c18241_i16 : tensor<12x15x12xi16>
        %298 = arith.divui %c1116139000_i32, %c1116139000_i32 : i32
        memref.assume_alignment %alloc, 16 : memref<12x10xi16>
        %299 = affine.min affine_map<(d0, d1) -> ((-d0) mod 64, d0 - d0 ceildiv 64 + 16, d0 - d0 ceildiv 64 + 16, (d0 - d0 ceildiv 64) * 64 + 128)>(%148, %57)
        %300 = math.log1p %7 : tensor<12x15x12xf16>
        %301 = affine.min affine_map<(d0, d1) -> ((d1 - 8) floordiv 16, d1 + 64, d1, d1 * -16)>(%201, %215)
        %302 = math.tan %5 : tensor<12x10xf32>
        %alloca = memref.alloca() : memref<12x10xi32>
        %303 = memref.atomic_rmw addf %extracted_32, %alloc_19[%c7, %c2] : (f32, memref<10x10xf32>) -> f32
        %cst_50 = arith.constant 1.46798746E+9 : f32
        memref.store %178, %alloc_14[%c7, %c4] : memref<10x9xf32>
        %304 = vector.shuffle %193, %117 [2, 6, 8, 9, 11, 14, 16, 17] : vector<9xf32>, vector<9xf32>
      }
      %280 = math.round %223 : tensor<10x10xf32>
      %281 = arith.minui %c18241_i16, %c18241_i16 : i16
      %dest_45, %accumulated_value_46 = vector.scan <maxsi>, %115, %200 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10xi1>, vector<10xi1>
      %282 = vector.broadcast %c18241_i16 : i16 to vector<12x10xi16>
      scf.yield %282 : vector<12x10xi16>
    }
    default {
      %alloc_44 = memref.alloc() : memref<12xf16>
      %alloc_45 = memref.alloc() : memref<15x12x12xf16>
      %alloc_46 = memref.alloc() : memref<12x12xf16>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_44, %alloc_45, %alloc_46 : memref<12xf16>, memref<15x12x12xf16>, memref<12x12xf16>) outs(%7 : tensor<12x15x12xf16>) {
      ^bb0(%in: f16, %in_48: f16, %in_49: f16, %out: f16):
        %284 = memref.atomic_rmw mins %c18241_i16, %216[%c2, %c9] : (i16, memref<10x10xi16>) -> i16
        %285 = math.ipowi %15, %120 : tensor<10x10xi16>
        %286 = memref.atomic_rmw maxs %187, %alloc_13[%c8, %c2] : (i64, memref<10x9xi64>) -> i64
        %287 = vector.multi_reduction <minui>, %139, %77 [] : vector<10xi16> to vector<10xi16>
        %288 = arith.maxui %true, %true : i1
        %289 = bufferization.clone %alloc_5 : memref<12x15x12xi1> to memref<12x15x12xi1>
        %290 = index.maxu %43, %c11
        vector.print %25 : vector<10xf16>
        %291 = math.cos %extracted_32 : f32
        %292 = arith.cmpi sle, %c754390120_i64, %186 : i64
        %293 = bufferization.clone %216 : memref<10x10xi16> to memref<10x10xi16>
        %294 = math.ceil %7 : tensor<12x15x12xf16>
        affine.store %true_3, %alloc_12[%c15, %c13] : memref<10x10xi1>
        %295 = arith.subi %218, %true_0 : i1
        %296 = arith.ceildivsi %c1028838234_i64, %c1912367194_i64 : i64
        %c902998632_i32 = arith.constant 902998632 : i32
        %297 = vector.transpose %25, [0] : vector<10xf16> to vector<10xf16>
        %298 = bufferization.to_tensor %289 : memref<12x15x12xi1>
        %299 = math.ctpop %186 : i64
        %300 = math.sqrt %19 : tensor<9xf32>
        %301 = arith.cmpf ogt, %extracted_32, %cst_4 : f32
        %302 = index.maxu %c8, %148
        %303 = index.floordivs %c3, %c0
        affine.store %out, %177[%c5, %c11] : memref<10x9xf16>
        %304 = math.fma %in_48, %in_49, %cst : f16
        %305 = math.powf %extracted, %cst_4 : f32
        %306 = index.maxs %164, %c1
        %307 = math.expm1 %in : f16
        %308 = arith.remui %false, %false_22 : i1
        %309 = arith.minui %91, %c-13670_i16 : i16
        %310 = vector.multi_reduction <mul>, %118, %118 [] : vector<9xi1> to vector<9xi1>
        %311 = math.round %in_49 : f16
        linalg.yield %in_48 : f16
      } -> tensor<12x15x12xf16>
      %269 = bufferization.to_tensor %99 : memref<10x10xi16>
      %270 = math.log10 %cst : f16
      %271 = index.ceildivu %134, %134
      memref.store %c18241_i16, %99[%c9, %c7] : memref<10x10xi16>
      %272 = arith.floordivsi %187, %187 : i64
      %273 = arith.addf %90, %extracted_35 : f16
      %274 = bufferization.to_memref %17 : memref<12x10xi1>
      %275 = arith.shrui %c18241_i16, %91 : i16
      %276 = arith.minsi %199, %c828314368_i32 : i32
      %277 = math.expm1 %24 : tensor<f32>
      %278 = arith.remsi %c-13670_i16, %c18241_i16 : i16
      %279 = vector.extract %212[7] : vector<10x9xf32>
      %alloc_47 = memref.alloc() : memref<f32>
      memref.tensor_store %24, %alloc_47 : memref<f32>
      %280 = index.ceildivu %c12, %c11
      %281 = vector.broadcast %extracted_32 : f32 to vector<9x9xf32>
      %282 = vector.outerproduct %193, %119, %281 {kind = #vector.kind<mul>} : vector<9xf32>, vector<9xf32>
      %283 = vector.broadcast %c18241_i16 : i16 to vector<12x10xi16>
      scf.yield %283 : vector<12x10xi16>
    }
    %230 = tensor.empty() : tensor<9x10xi16>
    %231 = tensor.empty() : tensor<10x10xi16>
    %232 = linalg.matmul ins(%2, %230 : tensor<10x9xi16>, tensor<9x10xi16>) outs(%231 : tensor<10x10xi16>) -> tensor<10x10xi16>
    %233 = vector.broadcast %178 : f32 to vector<10xf32>
    %234 = vector.multi_reduction <minf>, %80, %233 [0] : vector<12x10xf32> to vector<10xf32>
    %235 = arith.shrui %false_1, %true : i1
    %236 = index.sub %159, %c6
    %237 = math.exp %cst_4 : f32
    %238 = arith.divui %c1897752162_i32, %c1897752162_i32 : i32
    %239 = math.cttz %16 : tensor<12x10xi1>
    %240 = arith.minsi %186, %c754390120_i64 : i64
    %241 = arith.subi %c828314368_i32, %c1897752162_i32 : i32
    %242 = math.ceil %90 : f16
    %243 = bufferization.to_memref %22 : memref<9xf32>
    %244 = vector.transpose %77, [0] : vector<10xi16> to vector<10xi16>
    %245 = vector.broadcast %199 : i32 to vector<10x9xi32>
    %246 = vector.broadcast %c6 : index to vector<10xindex>
    vector.scatter %alloc_19[%c3, %c2] [%246], %200, %233 : memref<10x10xf32>, vector<10xindex>, vector<10xi1>, vector<10xf32>
    %247 = tensor.empty() : tensor<15x12xi32>
    %248 = tensor.empty() : tensor<15xi32>
    %249 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%247, %247, %248 : tensor<15x12xi32>, tensor<15x12xi32>, tensor<15xi32>) outs(%6 : tensor<12x15x12xi32>) {
    ^bb0(%in: i32, %in_44: i32, %in_45: i32, %out: i32):
      %alloc_46 = memref.alloc() : memref<10x10xf32>
      memref.copy %alloc_19, %alloc_46 : memref<10x10xf32> to memref<10x10xf32>
      %268 = vector.broadcast %cst : f16 to vector<12x10xf16>
      %269 = vector.extract %77[4] : vector<10xi16>
      vector.print %169 : vector<10x9xf32>
      %270 = vector.shuffle %122, %122 [0, 1, 3, 4, 5, 7, 14, 17, 20, 23] : vector<12x15x12xf16>, vector<12x15x12xf16>
      %271 = tensor.empty() : tensor<10x10xi16>
      %272 = linalg.matmul ins(%231, %231 : tensor<10x10xi16>, tensor<10x10xi16>) outs(%271 : tensor<10x10xi16>) -> tensor<10x10xi16>
      %273 = math.ctlz %6 : tensor<12x15x12xi32>
      %274 = bufferization.to_tensor %alloc_19 : memref<10x10xf32>
      %275 = index.add %rank_36, %33
      %276 = index.divu %57, %29
      scf.index_switch %c3 
      case 1 {
        %297 = math.fma %extracted_32, %178, %cst_4 : f32
        %298 = vector.splat %57 : vector<12x10xindex>
        %299 = math.expm1 %223 : tensor<10x10xf32>
        %300 = vector.splat %extracted : vector<12x10xf32>
        %301 = arith.remui %c18241_i16, %91 : i16
        %302 = vector.extract %59[5] : vector<10x10xf16>
        %303 = arith.addf %extracted_35, %90 : f16
        %cst_47 = arith.constant 1.44390758E+9 : f32
        %304 = vector.splat %in_44 : vector<10x9xi32>
        %305 = vector.flat_transpose %200 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %306 = math.ctlz %c1116139000_i32 : i32
        %307 = math.tanh %cst_4 : f32
        %308 = vector.transpose %103, [1, 0] : vector<12x10xi1> to vector<10x12xi1>
        %309 = math.round %13 : tensor<10x9xf32>
        %310 = math.tanh %extracted_32 : f32
        %311 = math.log1p %cst : f16
        scf.yield
      }
      case 2 {
        %297 = math.round %cst : f16
        %298 = vector.transpose %194, [0] : vector<10xi16> to vector<10xi16>
        %collapsed = tensor.collapse_shape %8 [[0, 1]] : tensor<12x10xi1> into tensor<120xi1>
        %299 = vector.transpose %150, [0] : vector<12xi1> to vector<12xi1>
        vector.print %139 : vector<10xi16>
        %300 = math.ceil %extracted_32 : f32
        %301 = math.exp %22 : tensor<9xf32>
        %302 = math.rsqrt %19 : tensor<9xf32>
        %303 = math.round %extracted_35 : f16
        %304 = index.add %35, %c10
        %305 = affine.apply affine_map<(d0, d1) -> (d1 floordiv 128 - d0)>(%43, %201)
        %c648886598_i32 = arith.constant 648886598 : i32
        %306 = math.fpowi %13, %3 : tensor<10x9xf32>, tensor<10x9xi32>
        %307 = vector.matrix_multiply %117, %117 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf32>, vector<9xf32>) -> vector<1xf32>
        affine.store %cst_2, %alloc_7[%c9, %c5] : memref<10x9xf32>
        %308 = arith.remui %c1028838234_i64, %c1912367194_i64 : i64
        scf.yield
      }
      case 3 {
        %false_47 = arith.constant false
        %dest_48, %accumulated_value_49 = vector.scan <maxf>, %80, %226 {inclusive = true, reduction_dim = 1 : i64} : vector<12x10xf32>, vector<12xf32>
        %297 = memref.load %alloc_14[%c1, %c5] : memref<10x9xf32>
        %298 = arith.minsi %out, %c1116139000_i32 : i32
        %299 = math.absi %transposed : tensor<12x12x15xi64>
        %300 = arith.minsi %c1028838234_i64, %186 : i64
        %301 = math.cos %extracted_35 : f16
        %302 = math.ipowi %6, %6 : tensor<12x15x12xi32>
        %303 = math.ipowi %15, %231 : tensor<10x10xi16>
        %rank_50 = tensor.rank %10 : tensor<10x9xi16>
        %304 = arith.muli %false, %true_0 : i1
        %305 = arith.shrsi %true_0, %true : i1
        %306 = math.ipowi %2, %2 : tensor<10x9xi16>
        %307 = arith.divf %cst_4, %cst_4 : f32
        %308 = arith.remui %in, %in_44 : i32
        %309 = index.floordivs %201, %c4
        scf.yield
      }
      case 4 {
        %297 = vector.broadcast %extracted_38 : i16 to vector<10x9xi16>
        %298 = arith.cmpi slt, %true_0, %true_0 : i1
        %299 = memref.atomic_rmw mulf %cst_4, %alloc_17[%c0, %c1] : (f32, memref<12x10xf32>) -> f32
        memref.copy %alloc, %alloc_10 : memref<12x10xi16> to memref<12x10xi16>
        %300 = arith.divui %187, %186 : i64
        %cast_47 = tensor.cast %274 : tensor<10x10xf32> to tensor<?x?xf32>
        %301 = arith.shrui %out, %in_45 : i32
        %302 = math.rsqrt %13 : tensor<10x9xf32>
        %303 = arith.muli %false, %218 : i1
        %304 = math.fma %cst, %cst, %90 : f16
        %305 = math.log %cst_2 : f32
        %306 = memref.atomic_rmw minu %c18241_i16, %180[%c5, %c1] : (i16, memref<10x10xi16>) -> i16
        %cast_48 = tensor.cast %12 : tensor<12x10xi16> to tensor<?x?xi16>
        %307 = arith.divsi %c754390120_i64, %186 : i64
        %308 = math.cttz %11 : tensor<12x10xi16>
        %rank_49 = tensor.rank %cast_47 : tensor<?x?xf32>
        scf.yield
      }
      default {
        %297 = bufferization.clone %alloc_27 : memref<10x9xf16> to memref<10x9xf16>
        %298 = math.ceil %5 : tensor<12x10xf32>
        %299 = arith.shli %c-13670_i16, %91 : i16
        %300 = math.ipowi %15, %120 : tensor<10x10xi16>
        %301 = math.cos %extracted_35 : f16
        %302 = index.castu %in_44 : i32 to index
        %303 = vector.broadcast %178 : f32 to vector<12x15x12xf32>
        %alloca = memref.alloca() : memref<12x15x12xf32>
        %304 = index.ceildivu %rank, %164
        %305 = affine.load %189[%c3, %c0] : memref<10x9xi64>
        %306 = vector.flat_transpose %139 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
        %307 = math.expm1 %5 : tensor<12x10xf32>
        %308 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c7, %276, %c3, %276)
        %309 = math.log10 %7 : tensor<12x15x12xf16>
        %310 = math.log1p %reduced : tensor<9xf32>
        vector.print %117 : vector<9xf32>
      }
      %277 = math.powf %223, %223 : tensor<10x10xf32>
      %278 = index.floordivs %43, %164
      %279 = arith.minsi %c18241_i16, %c18241_i16 : i16
      %splat = tensor.splat %218 : tensor<10x9xi1>
      %280 = index.sub %33, %c14
      %281 = vector.create_mask %c14, %134 : vector<12x10xi1>
      %282 = index.ceildivu %43, %c0
      %283 = index.divu %275, %c4
      %284 = math.ceil %cst_4 : f32
      vector.print %95 : vector<1xf16>
      %285 = vector.broadcast %91 : i16 to vector<10x10xi16>
      %286 = vector.outerproduct %194, %77, %285 {kind = #vector.kind<maxui>} : vector<10xi16>, vector<10xi16>
      %287 = vector.broadcast %false_1 : i1 to vector<9x9xi1>
      %288 = vector.outerproduct %118, %118, %287 {kind = #vector.kind<or>} : vector<9xi1>, vector<9xi1>
      %289 = vector.flat_transpose %139 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
      %290 = arith.shrsi %c18241_i16, %c18241_i16 : i16
      %291 = bufferization.to_memref %1 : memref<10x9xi64>
      %292 = vector.create_mask %43, %c4 : vector<12x10xi1>
      %293 = scf.index_switch %147 -> vector<12x10xi16> 
      case 1 {
        %297 = vector.broadcast %false : i1 to vector<15xi1>
        %298 = vector.maskedload %alloc_9[%c10, %c4, %c5], %297, %297 : memref<12x15x12xi1>, vector<15xi1>, vector<15xi1> into vector<15xi1>
        %299 = arith.minsi %187, %187 : i64
        %300 = arith.remui %in, %in : i32
        %301 = vector.insertelement %178, %119[%72 : index] : vector<9xf32>
        memref.copy %alloc_5, %alloc_9 : memref<12x15x12xi1> to memref<12x15x12xi1>
        %302 = index.maxu %rank_36, %65
        %303 = arith.mulf %extracted_35, %extracted_35 : f16
        memref.copy %alloc_9, %alloc_5 : memref<12x15x12xi1> to memref<12x15x12xi1>
        %304 = arith.shli %in_44, %in_45 : i32
        %305 = arith.minsi %c-13670_i16, %91 : i16
        %306 = math.sqrt %19 : tensor<9xf32>
        %307 = index.divs %c7, %33
        %dest_47, %accumulated_value_48 = vector.scan <minf>, %62, %21 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10xf16>, vector<10xf16>
        %308 = math.ceil %extracted_32 : f32
        %309 = index.maxu %33, %164
        %310 = affine.load %99[%c5, %c1] : memref<10x10xi16>
        %311 = vector.broadcast %c-13670_i16 : i16 to vector<12x10xi16>
        scf.yield %311 : vector<12x10xi16>
      }
      case 2 {
        %from_elements = tensor.from_elements %false, %218, %false, %true_0, %true_0, %false, %218, %true, %false_22, %false_22, %true_3, %false_1, %false_1, %true_0, %true_3, %true, %true, %true, %true, %true_3, %true_0, %false_1, %true_0, %true_3, %true_3, %218, %false_22, %218, %true_3, %false, %false_1, %false, %true_3, %true_0, %false_22, %true_0, %218, %true_3, %218, %false, %false_1, %false, %false_1, %218, %true, %false, %218, %true_3, %true_0, %true, %218, %false_1, %false_1, %true, %false, %true_3, %218, %false, %true_3, %false_1, %false_22, %218, %false_22, %true_3, %218, %false_1, %false, %218, %false_22, %false, %218, %false_22, %false_22, %true, %218, %218, %true_0, %false, %218, %false_1, %false_1, %false_1, %true_0, %218, %false_22, %218, %true, %218, %true_0, %false_1 : tensor<10x9xi1>
        %297 = vector.transpose %119, [0] : vector<9xf32> to vector<9xf32>
        memref.store %c1912367194_i64, %291[%c8, %c7] : memref<10x9xi64>
        %dest_47, %accumulated_value_48 = vector.scan <minsi>, %93, %118 {inclusive = false, reduction_dim = 0 : i64} : vector<10x9xi1>, vector<9xi1>
        %dest_49, %accumulated_value_50 = vector.scan <add>, %80, %233 {inclusive = false, reduction_dim = 0 : i64} : vector<12x10xf32>, vector<10xf32>
        %rank_51 = tensor.rank %13 : tensor<10x9xf32>
        %298 = vector.broadcast %extracted_38 : i16 to vector<9xi16>
        %299 = vector.maskedload %alloc_10[%c6, %c8], %118, %298 : memref<12x10xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        %300 = vector.broadcast %extracted_32 : f32 to vector<12x15x12xf32>
        %301 = vector.fma %300, %300, %300 : vector<12x15x12xf32>
        %302 = math.expm1 %cst_2 : f32
        %303 = index.divu %rank_36, %280
        affine.store %extracted_32, %alloc_7[%c11, %c3] : memref<10x9xf32>
        %304 = math.sqrt %13 : tensor<10x9xf32>
        %305 = memref.atomic_rmw minf %extracted_35, %177[%c8, %c8] : (f16, memref<10x9xf16>) -> f16
        %306 = vector.multi_reduction <minui>, %281, %false [0, 1] : vector<12x10xi1> to i1
        %307 = arith.divui %c1912367194_i64, %c1912367194_i64 : i64
        %308 = math.ipowi %true, %false_22 : i1
        %309 = vector.broadcast %c18241_i16 : i16 to vector<12x10xi16>
        scf.yield %309 : vector<12x10xi16>
      }
      default {
        %297 = math.ctpop %2 : tensor<10x9xi16>
        %298 = math.cos %90 : f16
        %299 = arith.negf %90 : f16
        %300 = vector.broadcast %c754390120_i64 : i64 to vector<15xi64>
        %301 = vector.broadcast %true_0 : i1 to vector<15xi1>
        %302 = vector.maskedload %291[%c3, %c6], %301, %300 : memref<10x9xi64>, vector<15xi1>, vector<15xi64> into vector<15xi64>
        %alloca = memref.alloca() : memref<12x10xi16>
        %303 = bufferization.clone %alloc_11 : memref<10x9xf32> to memref<10x9xf32>
        %304 = index.maxs %c10, %c0
        %305 = math.floor %13 : tensor<10x9xf32>
        %306 = vector.broadcast %c5 : index to vector<15xindex>
        %307 = vector.broadcast %cst : f16 to vector<15xf16>
        vector.scatter %alloc_27[%c7, %c5] [%306], %301, %307 : memref<10x9xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
        vector.print %174 : vector<10x10xi1>
        %308 = vector.broadcast %c1116139000_i32 : i32 to vector<10xi32>
        %309 = vector.maskedload %alloc_15[%c3, %c6], %200, %308 : memref<10x9xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %310 = vector.maskedload %alloc_16[%c4, %c7], %200, %21 : memref<12x10xf16>, vector<10xi1>, vector<10xf16> into vector<10xf16>
        %311 = math.tan %274 : tensor<10x10xf32>
        %312 = arith.minui %out, %c1116139000_i32 : i32
        %313 = math.log1p %reduced : tensor<9xf32>
        %314 = math.ctpop %in : i32
        %315 = vector.broadcast %c-13670_i16 : i16 to vector<12x10xi16>
        scf.yield %315 : vector<12x10xi16>
      }
      %expanded = tensor.expand_shape %14 [[0], [1], [2, 3]] : tensor<12x15x12xi1> into tensor<12x15x12x1xi1>
      %294 = arith.floordivsi %false_22, %false_22 : i1
      %295 = arith.shrui %out, %c1116139000_i32 : i32
      %296 = index.ceildivs %c7, %29
      linalg.yield %c1897752162_i32 : i32
    } -> tensor<12x15x12xi32>
    vector.print %172 : vector<12x15x12xf16>
    %250 = memref.atomic_rmw assign %extracted_32, %alloc_18[%c1, %c11, %c0] : (f32, memref<12x15x12xf32>) -> f32
    %251 = bufferization.clone %alloc_6 : memref<10x10xi16> to memref<10x10xi16>
    %252 = math.exp2 %36 : f16
    %alloc_40 = memref.alloc() : memref<12x15x12xf16>
    memref.copy %alloc_8, %alloc_40 : memref<12x15x12xf16> to memref<12x15x12xf16>
    %253 = arith.remsi %91, %c-13670_i16 : i16
    %254 = index.maxu %43, %c12
    %255 = arith.minui %c1912367194_i64, %187 : i64
    %256 = index.floordivs %167, %35
    %257 = vector.extract_strided_slice %197 {offsets = [2], sizes = [6], strides = [1]} : vector<12x10xf32> to vector<6x10xf32>
    scf.if %false {
      %268 = scf.index_switch %c10 -> vector<12x15x12xf16> 
      case 1 {
        %275 = math.log2 %90 : f16
        %276 = math.round %extracted : f32
        %277 = vector.splat %c12 : vector<10x9xindex>
        memref.copy %99, %251 : memref<10x10xi16> to memref<10x10xi16>
        %278 = math.powf %22, %19 : tensor<9xf32>
        %279 = math.ctlz %true_0 : i1
        %cast_46 = tensor.cast %15 : tensor<10x10xi16> to tensor<?x?xi16>
        affine.store %91, %216[%c14, %c13] : memref<10x10xi16>
        %280 = vector.extract %93[3] : vector<10x9xi1>
        memref.tensor_store %0, %189 : memref<10x9xi64>
        %alloca = memref.alloca() : memref<12x10xi16>
        %from_elements = tensor.from_elements %178, %extracted_32, %178, %cst_2, %178, %cst_2, %cst_2, %extracted, %extracted, %178, %extracted_32, %cst_4, %cst_4, %extracted, %extracted_32, %178, %extracted, %178, %cst_4, %extracted_32, %178, %cst_2, %178, %extracted_32, %cst_2, %178, %cst_2, %cst_2, %extracted_32, %extracted, %cst_2, %cst_4, %178, %extracted_32, %extracted, %178, %extracted, %extracted_32, %cst_2, %178, %extracted, %178, %178, %extracted_32, %extracted_32, %extracted, %extracted, %cst_4, %extracted_32, %extracted, %cst_4, %178, %extracted, %cst_4, %extracted_32, %178, %extracted_32, %cst_2, %extracted, %extracted_32, %extracted, %178, %extracted, %cst_4, %cst_2, %178, %extracted_32, %extracted, %extracted, %cst_4, %cst_2, %178, %cst_4, %extracted, %cst_4, %cst_2, %extracted_32, %cst_2, %cst_2, %178, %extracted, %cst_4, %cst_4, %extracted, %cst_4, %cst_2, %178, %cst_4, %178, %extracted_32 : tensor<10x9xf32>
        %alloc_47 = memref.alloc() : memref<9x12xi16>
        %281 = tensor.empty() : tensor<10x12xi16>
        %282 = linalg.matmul ins(%2, %alloc_47 : tensor<10x9xi16>, memref<9x12xi16>) outs(%281 : tensor<10x12xi16>) -> tensor<10x12xi16>
        %283 = math.powf %from_elements, %13 : tensor<10x9xf32>
        %284 = math.cos %22 : tensor<9xf32>
        %285 = vector.splat %100 : vector<10x10xindex>
        scf.yield %122 : vector<12x15x12xf16>
      }
      default {
        %275 = arith.cmpi slt, %c1897752162_i32, %c828314368_i32 : i32
        %276 = index.castu %186 : i64 to index
        %277 = vector.multi_reduction <minf>, %102, %90 [0] : vector<1xf16> to f16
        %278 = index.divu %c13, %29
        %279 = arith.cmpi sle, %199, %199 : i32
        %280 = math.log1p %24 : tensor<f32>
        %281 = arith.floordivsi %false, %false_1 : i1
        %282 = math.ctpop %14 : tensor<12x15x12xi1>
        %283 = bufferization.to_memref %223 : memref<10x10xf32>
        %alloc_46 = memref.alloc() : memref<12x12x15xi64>
        memref.tensor_store %transposed, %alloc_46 : memref<12x12x15xi64>
        %284 = affine.load %243[%c10] : memref<9xf32>
        %cast_47 = tensor.cast %8 : tensor<12x10xi1> to tensor<?x?xi1>
        memref.tensor_store %54, %alloc_10 : memref<12x10xi16>
        %285 = vector.transpose %200, [0] : vector<10xi1> to vector<10xi1>
        %286 = affine.apply affine_map<(d0, d1, d2) -> (d2 - 2)>(%53, %rank_36, %35)
        %287 = math.cttz %transposed : tensor<12x12x15xi64>
        scf.yield %172 : vector<12x15x12xf16>
      }
      %269 = index.add %147, %65
      %270 = arith.divsi %false_22, %true : i1
      %collapsed = tensor.collapse_shape %12 [[0, 1]] : tensor<12x10xi16> into tensor<120xi16>
      %271 = vector.broadcast %c828314368_i32 : i32 to vector<15x12xi32>
      %dest_44, %accumulated_value_45 = vector.scan <add>, %222, %271 {inclusive = false, reduction_dim = 0 : i64} : vector<12x15x12xi32>, vector<15x12xi32>
      %272 = index.floordivs %c11, %c13
      %273 = math.ctlz %1 : tensor<10x9xi64>
      %274 = affine.apply affine_map<(d0) -> (((d0 mod 32 + 1) ceildiv 2) ceildiv 32 - 128)>(%c12)
    } else {
      %268 = math.absi %187 : i64
      %269 = math.atan %cst : f16
      %270 = math.log1p %5 : tensor<12x10xf32>
      %rank_44 = tensor.rank %0 : tensor<10x9xi64>
      %generated_45 = tensor.generate %164, %43 {
      ^bb0(%arg1: index, %arg2: index):
        %alloc_46 = memref.alloc() : memref<12x10xi16>
        %274 = arith.shrui %218, %true_3 : i1
        %275 = arith.remui %extracted_38, %c18241_i16 : i16
        %276 = math.round %extracted_32 : f32
        tensor.yield %c-13670_i16 : i16
      } : tensor<?x?xi16>
      %271 = index.floordivs %c3, %236
      %272 = math.absi %15 : tensor<10x10xi16>
      %273 = vector.splat %true : vector<10x9xi1>
    }
    %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%14 : tensor<12x15x12xi1>) {
    ^bb0(%out: i1):
      %268 = math.ipowi %11, %9 : tensor<12x10xi16>
      affine.store %c18241_i16, %alloc_6[%c10, %c5] : memref<10x10xi16>
      %rank_44 = tensor.rank %24 : tensor<f32>
      memref.copy %alloc_13, %189 : memref<10x9xi64> to memref<10x9xi64>
      %269 = math.log %extracted_32 : f32
      %270 = bufferization.to_memref %10 : memref<10x9xi16>
      %271 = vector.broadcast %extracted_32 : f32 to vector<12x12xf32>
      %272 = vector.outerproduct %226, %226, %271 {kind = #vector.kind<add>} : vector<12xf32>, vector<12xf32>
      %273 = math.expm1 %5 : tensor<12x10xf32>
      %alloc_45 = memref.alloc() : memref<10x9xf16>
      %274 = arith.divui %true_3, %false_1 : i1
      %275 = math.ctpop %2 : tensor<10x9xi16>
      %alloca = memref.alloca() : memref<12x15x12xi64>
      %276 = vector.load %99[%c1, %c9] : memref<10x10xi16>, vector<10x10xi16>
      %277 = vector.load %alloc_9[%c5, %c4, %c1] : memref<12x15x12xi1>, vector<10x9xi1>
      %278 = math.sqrt %22 : tensor<9xf32>
      %279 = arith.subi %extracted_38, %extracted_38 : i16
      %280 = affine.min affine_map<(d0, d1, d2, d3) -> ((-d3) ceildiv 64, d2 + d3 + 16, d2 + d3 + 16, d3 + 16)>(%rank_36, %c3, %c4, %148)
      %281 = arith.shrui %186, %c1028838234_i64 : i64
      %282 = bufferization.clone %alloc_13 : memref<10x9xi64> to memref<10x9xi64>
      %alloca_46 = memref.alloca() : memref<12x15x12xi1>
      %283 = bufferization.to_memref %1 : memref<10x9xi64>
      %284 = math.cttz %c1912367194_i64 : i64
      %285 = index.casts %164 : index to i32
      %286 = affine.for %arg1 = 0 to 121 iter_args(%arg2 = %59) -> (vector<10x10xf16>) {
        affine.yield %59 : vector<10x10xf16>
      }
      %extracted_47 = tensor.extract %0[%c2, %c6] : tensor<10x9xi64>
      %287 = index.add %rank_44, %65
      %288 = arith.negf %90 : f16
      %289 = bufferization.to_memref %16 : memref<12x10xi1>
      %290 = affine.min affine_map<(d0) -> (-(d0 floordiv 16))>(%c2)
      %from_elements = tensor.from_elements %false_22, %218, %true_3, %218, %true_3, %218, %true_3, %true_3, %true_3, %218, %out, %false_22, %false_22, %false_1, %false, %false, %out, %true_3, %218, %false_1, %true_0, %out, %218, %true_3, %true_3, %false, %true_0, %false_1, %true, %false_22, %true_0, %true_3, %false_1, %out, %218, %218, %true, %true, %true_3, %false_1, %false, %true, %true, %218, %false_22, %218, %false_22, %false_1, %218, %true_3, %true, %out, %true_3, %true_0, %out, %true_3, %218, %true_0, %false_1, %false, %false_22, %false, %out, %218, %false_1, %false_22, %true, %out, %218, %true, %true, %false_1, %true_3, %true, %218, %false, %218, %true, %false_22, %218, %true_3, %out, %false, %true_3, %true_0, %true_0, %false_1, %false_1, %false_1, %true_0, %true_0, %out, %true_3, %true, %true_0, %false_22, %true_3, %false_22, %false_22, %true_0, %true, %false_1, %false, %218, %false_22, %false, %218, %true_0, %false_22, %out, %false, %out, %false_1, %out, %true, %true_0, %218, %218, %out, %false, %out, %218, %true_0, %false_1, %false_1, %true, %true_0, %218, %218, %out, %true, %true_0, %true, %false_1, %out, %out, %true_3, %218, %out, %out, %218, %false, %true_0, %218, %true, %true, %true_0, %false, %true_3, %true_3, %false_22, %true_3, %false_1, %false_1, %out, %out, %false_22, %true, %true_3, %true_0, %out, %out, %218, %true_3, %false, %true, %218, %false_22, %true_0, %218, %false_22, %true_0, %true_0, %true_3, %false, %true_3, %true_0, %true_3, %true_0, %true_3, %true_3, %218, %false_1, %out, %218, %true, %218, %true_0, %false_22, %true, %false_22, %true_3, %true_3, %true_0, %false_22, %false_1, %false_22, %out, %true, %true_0, %true, %218, %218, %true_0, %true, %218, %false, %out, %out, %218, %false, %true, %218, %false_1, %false, %true_0, %true_0, %false_1, %true_0, %false_22, %false, %false, %false, %false_22, %false_22, %true, %out, %false, %false_1, %true, %false_22, %false, %false_1, %true, %218, %true_0, %true_3, %out, %out, %false, %false, %out, %218, %false, %false, %false, %218, %true, %false_22, %true_0, %true, %218, %true, %218, %true_3, %out, %218, %false_1, %false_1, %true_0, %false_1, %out, %false, %218, %false, %218, %true_3, %false_1, %false_22, %218, %false_22, %false_1, %true, %false_1, %out, %true_3, %false, %218, %218, %true, %218, %218, %218, %true_0, %218, %true_0, %true_0, %false, %218, %out, %false_22, %false, %false, %true, %true, %false_1, %true_0, %true_3, %218, %out, %true, %false_1, %out, %false_22, %218, %false_22, %false_1, %out, %false_1, %true, %false, %true_3, %true_0, %218, %true_0, %out, %true, %218, %false, %true, %false_1, %true, %true, %out, %true_0, %true_0, %out, %true_0, %true_0, %false, %true, %out, %218, %true_3, %false_1, %false_22, %false_22, %true_0, %out, %true_3, %false_1, %218, %out, %false_22, %false, %218, %true_3, %out, %false_22, %out, %false, %false, %true_3, %true_0, %out, %218, %218, %true, %218, %true_0, %true, %out, %out, %false_1, %true_3, %out, %true_0, %true_0, %true, %false_1, %false_1, %false_22, %true, %false, %false_22, %false, %false_22, %218, %false, %false_1, %218, %true, %out, %out, %out, %false, %218, %218, %out, %out, %218, %218, %218, %false, %true, %false, %false_1, %true, %out, %false_22, %true_3, %false_1, %false, %false_1, %false_22, %false, %out, %false, %out, %false, %false_22, %true, %false, %false_22, %false, %false, %218, %false_1, %true_0, %false_22, %false_1, %false_22, %false, %true_3, %218, %false_1, %false_22, %218, %218, %false_1, %false, %true_0, %false_22, %false_1, %false_22, %true, %false_1, %out, %out, %false, %true_3, %true_3, %true_3, %true_3, %false, %218, %true, %out, %out, %out, %218, %true_0, %true, %false_1, %218, %true_0, %218, %218, %false_1, %true_0, %false_22, %true_3, %false, %false_22, %true_0, %false, %true, %true_3, %218, %false_1, %true, %true_0, %false_22, %true_3, %false_22, %true_0, %true, %false, %true_3, %out, %out, %out, %out, %false_1, %218, %true_3, %218, %true, %true, %218, %false_22, %false, %true, %false, %218, %true_3, %218, %true, %false, %218, %false_22, %false, %false_1, %true_0, %false, %false_1, %false, %out, %true_3, %true_0, %218, %true_3, %false_1, %218, %false_1, %false, %false, %218, %false, %true_3, %true_0, %218, %true, %true, %true_0, %false_1, %true_0, %true, %218, %218, %false_22, %true_3, %out, %true_0, %true_3, %true, %true, %true_3, %218, %true_0, %true_0, %false_1, %218, %false_1, %true_3, %true_0, %true_3, %true_3, %false_1, %true, %218, %true, %false, %false, %false_22, %false_1, %false, %true_3, %true_3, %true, %false_1, %false_22, %true_0, %218, %false, %out, %true_0, %true_0, %out, %out, %false, %218, %true_3, %true, %false_22, %true_3, %true_3, %false_1, %false_22, %false_22, %false, %false, %out, %false, %false_1, %218, %218, %false_22, %true_0, %218, %true_0, %false, %218, %out, %true_0, %218, %true_3, %true_0, %out, %true_3, %out, %false_1, %true_0, %false_1, %true_0, %true_3, %218, %true_3, %218, %false_1, %false, %false_22, %true_3, %true_3, %false_22, %true_0, %218, %218, %true, %218, %218, %out, %true_3, %true_3, %true_0, %false_22, %false_1, %false_22, %true_3, %218, %218, %false, %out, %out, %true_3, %true_3, %false_1, %false, %false, %true_3, %true, %false, %out, %false_22, %false_22, %true, %out, %false, %false_22, %true_0, %false, %out, %false_1, %out, %false, %true_3, %true, %true, %true_0, %218, %false_22, %true_3, %true_3, %false_22, %true_3, %218, %218, %out, %false, %false, %false_22, %false, %true, %true, %true_3, %false_1, %true, %true, %true_0, %true, %out, %out, %true, %false, %out, %false, %218, %218, %false_1, %false_1, %true, %false_1, %true, %out, %false_1, %false, %true_0, %false_1, %false, %out, %false_22, %false, %true_0, %false_22, %true_0, %218, %true_0, %true_3, %out, %out, %218, %true, %218, %true_3, %true_3, %false_22, %out, %true, %false, %true, %true_0, %true, %false_1, %true, %false_1, %true_0, %false_1, %true_3, %true, %false_22, %218, %true, %false_22, %true_0, %false, %218, %true_3, %true_0, %out, %false_22, %false_1, %out, %false_1, %false_1, %218, %false, %218, %true_3, %218, %false_22, %false_1, %out, %218, %true_0, %false_22, %false, %true, %false, %out, %true_0, %true_0, %true_3, %true_0, %false_22, %false, %false_1, %false, %out, %false_22, %true, %false, %218, %out, %true_0, %true_0, %out, %true_0, %false_22, %out, %false_22, %true_0, %true_0, %false_22, %218, %true_3, %true, %false_1, %true_3, %true_0, %true_3, %true_3, %true_0, %true_0, %false_1, %true_3, %false_22, %false_1, %false_1, %false, %false_22, %false, %true, %218, %false_1, %false_22, %218, %false_22, %false, %true, %false_1, %true, %false_22, %false, %218, %false_22, %218, %true_3, %true_0, %218, %false_22, %out, %true, %false_22, %218, %false, %218, %false_22, %true, %out, %out, %true_3, %true, %out, %218, %true, %true_3, %false, %out, %true_0, %true, %false, %true, %false_22, %true_0, %true_0, %true_3, %false, %true_0, %true, %false, %false_22, %false_1, %false_22, %false, %false_1, %true_3, %true_3, %out, %out, %true, %true_3, %true, %true_3, %false_1, %false_1, %true_0, %218, %false_1, %false, %true_3, %false_1, %false_22, %out, %false_1, %out, %true_0, %false_1, %false_22, %218, %true, %true, %false_22, %true, %true_3, %true_0, %false, %false_1, %218, %218, %false_1, %true, %false_22, %true_0, %218, %218, %false_1, %false, %true, %false_22, %true, %true, %218, %false_22, %true_0, %true_0, %false_22, %true_3, %out, %out, %out, %out, %out, %218, %true, %218, %false_22, %218, %false_22, %false, %false_1, %false_22, %out, %false_22, %true_0, %true, %false_22, %218, %true_3, %218, %false_1, %true, %218, %218, %false_22, %true_3, %out, %false_1, %218, %true, %true, %false_1, %false_1, %true_3, %true, %out, %true_0, %218, %true, %false_22, %true, %true_0, %218, %true, %true, %218, %true_3, %true, %false_22, %false, %true_0, %true_3, %false_1, %false_22, %false, %true_3, %out, %true_3, %218, %true_3, %true_0, %false, %out, %true, %false, %218, %218, %true_0, %true, %out, %false_22, %true, %false_22, %false_22, %false_22, %true_3, %out, %218, %true_3, %out, %false_1, %true_3, %false, %false_22, %true, %true_0, %true_3, %true_3, %true_0, %out, %218, %out, %false_22, %out, %out, %false, %218, %out, %out, %out, %false_22, %out, %true_3, %false_22, %true, %out, %false, %out, %true, %false_1, %true, %false_22, %out, %false, %false_22, %true_0, %true_3, %218, %out, %false, %false, %true_0, %false_1, %out, %false, %218, %false_1, %false_1, %false_1, %false_1, %false, %false_22, %true, %false_1, %true_0, %false, %true_0, %false_1, %out, %false_1, %out, %218, %true, %out, %false_1, %out, %false, %out, %false_1, %false_22, %false, %false_1, %218, %true_3, %false_1, %false, %true_3, %true, %218, %false, %false_22, %true_0, %true_0, %false_22, %218, %false_1, %false_22, %true, %out, %true_3, %218, %true, %false_1, %true_0, %false, %false_22, %true, %false_1, %false, %true, %218, %false_22, %false_22, %true_0, %true_3, %false, %true, %true, %false_22, %out, %true, %false_1, %false_22, %false_22, %true_0, %true_3, %false_22, %false_22, %true_0, %false, %true, %false, %false, %218, %out, %false_1, %true_3, %false_1, %out, %true_3, %false, %false_1, %true_3, %true_3, %false, %false_22, %out, %false_22, %false_22, %true_3, %false_1, %out, %true, %true_3, %218, %false_1, %true_3, %false, %true_0, %true_0, %true_0, %true_0, %true_0, %true_3, %false_22, %218, %false_1, %false_1, %false_1, %218, %false_1, %false_22, %false, %false, %true_0, %false_1, %false_22, %false_22, %218, %true, %218, %true, %out, %true, %218, %out, %false_1, %false_1, %218, %false_22, %true_3, %false_22, %out, %false, %true, %false_22, %false_22, %false, %false_1, %false, %false_22, %false_22, %true, %true_0, %true_0, %true_0, %true_0, %true_0, %false_22, %false, %true_0, %218, %out, %218, %218, %out, %true_3, %out, %true, %false_22, %false, %true_0, %true_0, %out, %true, %218, %false_1, %false_1, %out, %true, %true_3, %true_3, %218, %out, %out, %false, %out, %out, %true, %true_0, %false_1, %218, %218, %true_3, %218, %218, %218, %218, %true_0, %218, %false_22, %true_3, %out, %out, %218, %true_3, %false, %false_1, %218, %true_0, %out, %false, %false_22, %218, %true, %false, %true, %false_22, %218, %false_1, %true, %true, %true_3, %218, %out, %false, %false, %out, %out, %true_0, %false_22, %true, %218, %true, %218, %false_1, %false_22, %true_3, %false, %out, %false_22, %false_1, %true, %false, %false_1, %true_0, %false, %true, %false_1, %out, %out, %false, %true_0, %true_0, %false_22, %true, %true_3, %false_22, %true, %218, %false_22, %218, %false_22, %false_1, %false_1, %true_3, %true, %false, %true, %true, %out, %false_1, %218, %false_1, %false, %false_22, %false_22, %false, %false_22, %false_22, %true_3, %218, %false, %true_0, %out, %false_1, %true_3, %218, %true_0, %false_1, %218, %218, %out, %true, %true_0, %true, %true_0, %false_22, %true_0, %false, %false, %false_1, %out, %false_1, %false_22, %out, %false, %false, %true, %true, %false_1, %false, %true_0, %true_3, %true, %out, %218, %false_1, %218, %true_0, %true, %false, %true, %218, %false_1, %false_22, %false, %218, %false, %true_0, %false_1, %true, %false_22, %false, %false_22, %false, %218, %false, %true_3, %false, %false, %true_0, %false, %false, %false_22, %false_1, %out, %false_22, %false, %false_1, %218, %true, %false_22, %218, %218, %true_3, %false_1, %out, %out, %false_22, %true_0, %true, %out, %true, %true, %true_3, %true_3, %out, %false_1, %218, %true_0, %false_22, %false, %true_3, %true_0, %true_0, %false_22, %218, %true_0, %true_0, %false_22, %true_3, %false_22, %218, %false_1, %false_22, %true_0, %false_1, %true_0, %true, %false_22, %true, %false_22, %false, %true, %false_1, %false_1, %false, %false_22, %true_3, %true, %true, %218, %true, %out, %218, %true_3, %true_0, %true, %false_1, %true_0, %true, %true_0, %true_0, %out, %false, %false, %true_3, %false, %false_1, %true, %true, %false_1, %true_0, %true, %218, %218, %true_0, %true_3, %true, %false_1, %218, %true_0, %true, %false, %out, %true, %false_1, %false_1, %true_0, %true_3, %true, %true_0, %true_3, %out, %true_3, %false, %false, %out, %true_0, %true_0, %true, %false, %true, %false, %true_3, %true_3, %false_1, %true_0, %218, %out, %false_22, %out, %true, %true_3, %false_1, %false_22, %false_1, %true_0, %true, %true, %false_22, %true_3, %false_22, %false_1, %true, %true, %out, %out, %true_0, %false_1, %false_22, %false_1, %false_1, %218, %false_1, %false_1, %out, %false_22, %true, %false_1, %218, %true_0, %218, %out, %true, %218, %218, %true, %true_0, %out, %true, %true, %218, %out, %true_0, %false, %true, %out, %true, %true, %false_1, %true, %false_1, %false_22, %true_0, %true_3, %false_1, %true_3, %false_22, %false, %true, %true, %true_3, %false, %true, %out, %false_22, %true, %false, %true, %false_22, %true, %false_1, %true_3, %false_1, %true_0, %out, %true, %false_1, %false, %true, %false, %false_1, %true_0, %false, %false_1, %true, %false_1, %true_3, %out, %false, %218, %false_22, %out, %true_3, %out, %false_22, %false_22, %218, %true, %false, %false_1, %false, %true, %false, %true_0, %false_1, %true, %true_0, %false_1, %false_1, %true_3, %218, %false_1, %false, %true, %true_0, %true_0, %false_22, %false_22, %true_3, %218, %true_0, %false, %true, %false, %false_1, %218, %false_1, %true_0, %out, %false_22, %true, %true, %false_1, %true, %out, %false, %true, %false_22, %218, %out, %true, %218, %false, %true_3, %true_3, %false_22, %false, %false_22, %218, %true_0, %218, %true, %false_1, %false, %out, %218, %true_0, %218, %out, %true, %218, %false_1, %218, %true_0, %true, %true_3, %true_0, %true, %true_3, %true_0, %218, %false_22, %218, %218, %true, %false_22, %out, %false, %true_3, %true_3, %true_0, %218, %out, %true_0, %true_3, %true_0, %true_3, %218, %false_22, %true_3, %218, %out, %true_3, %false_22, %out, %true, %true_3, %false_22, %true, %true_0, %true_3, %false_1, %false_1, %out, %true, %true_0, %out, %218, %true_3, %out, %out, %out, %true, %true_0, %218, %true_0, %out, %out, %true, %218, %true_3, %false, %false, %true_0, %out, %false_22, %false, %false_22, %false_1, %out, %true_3, %true, %out, %true_0, %true, %false, %false, %false, %true, %218, %out, %true, %false, %out, %out, %false_1, %true_0, %true_0, %false_22, %false, %218, %true_3, %true_3, %true, %true_3, %218, %false_22, %true, %out, %true_0, %true_0, %true_3, %false, %218, %true_3, %out, %true, %false_22, %true_3, %true_3, %true, %out, %false_22, %true, %true_0, %218, %true, %true, %false_1, %true_3, %true_0, %true_3, %true_0, %false, %false_1, %true_0, %true_3, %false_1, %false, %true_0, %true, %true_0, %true_3, %218, %false, %false, %true_0, %true, %true_3, %false_1, %true_3, %false_22, %out, %false_22, %out, %true, %true, %true_3, %false_22, %out, %true, %false_22, %true_3, %true, %false_1, %false, %false_1, %false_1, %false, %out, %true_0, %false_22, %false_1, %true, %218, %false, %false_22, %true_3, %true, %true_3, %false, %218, %true, %false_1, %true_3, %out, %true_3, %true_0, %true, %false, %false_22, %true_0, %218, %218, %true_3, %218, %false_1, %out, %true_0, %true, %out, %218, %out, %false_22, %true_3, %false, %218, %218, %false_1, %218, %true_0, %true, %true_3, %false, %true_3, %false_22, %218, %true_0, %218, %true, %true, %out, %true, %218, %false_22, %false_22, %true_3, %218, %true, %true, %218, %false_1, %true_3, %false_22, %218, %out, %false_1, %true, %out, %false, %218, %false_22, %true, %false_22, %out, %true_0, %false_22, %false_22, %true_3, %218, %false, %false_22, %out, %true_3, %out, %false_22, %true, %false, %true_0, %false_22, %out, %true_0, %false_22, %true_0, %false_1, %true, %true, %218, %false_22, %true_0, %false_1, %true_3, %false_22, %out, %true, %false, %false_22, %out, %true_3, %true, %false, %out, %true, %218, %false, %false_22, %true_0, %true_3, %false_1, %true, %false_1, %218, %true, %218, %true, %218, %true_0, %true, %218, %false, %true_0, %true_0, %false_1, %true_3, %false_1, %false_22, %true_0, %false, %false_1, %true, %false, %true, %218, %true, %false, %true, %true_3, %true_0, %true_0, %true_0, %true_3, %218, %true_3, %true_0, %false_1, %false_22, %false, %true_3, %true_0, %true, %true_0, %false, %true_3, %out, %false_1, %true_3, %true_0, %out, %false_22, %out, %true_3, %true_0, %false_22, %false, %true_3, %false_22, %false_22, %false_22, %218, %true_0, %true, %true_3, %false_1, %false, %out, %true_3, %true_0, %false_22, %218, %true, %true_3, %false_1, %true, %false_22, %true_0, %true_3, %out, %218, %out, %false_22, %218, %218, %false_1, %true_0, %218, %out, %true_0, %out, %out, %true_3, %218, %true_3, %false_1, %false, %out, %false_22, %true_3, %out, %true_0, %true_3, %true_3, %false_22, %true_0, %false_1, %false_1, %false_1, %false, %true_0, %218, %false_1, %218, %false_22, %218, %false_22, %true, %false, %out, %false_22, %218, %true_3, %false, %218, %false_1, %false_22, %218, %true_0, %true_3, %false, %false_22, %false_22, %false_1, %false_22, %false, %218, %218, %218, %218, %true, %out, %false_22, %true, %false_22, %out, %false, %true_0, %false_22, %false, %false, %out, %true_0, %218, %true_0, %218, %true, %true_0, %out, %218, %true_0, %out, %false_22, %false_22, %true, %out, %true, %false_22, %out, %false_1, %false_1, %true_3, %false, %true_3, %true_0, %true_0, %false_1, %true, %false_1, %false_22, %true_0, %true, %218, %false_22, %false_22, %true, %true_3, %out, %true_3, %false_1, %false, %false_1, %out, %true_0, %true_3, %true_0, %218, %true_0, %false_1, %true_3, %true_0, %false_1, %false_1, %true, %false, %out, %false_1, %true_3, %true_0, %true, %out, %218, %out, %true_3, %true_0, %false_22, %out, %false_1, %218, %true_3, %false, %out, %true_0, %false, %true_3, %false, %true, %false_1, %false_1, %true_3, %false : tensor<12x15x12xi1>
      %291 = math.log10 %cst_4 : f32
      %alloc_48 = memref.alloc() : memref<15x12xi1>
      %292 = tensor.empty() : tensor<12x12xi1>
      %293 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_48, %14, %292 : memref<15x12xi1>, tensor<12x15x12xi1>, tensor<12x12xi1>) outs(%from_elements : tensor<12x15x12xi1>) {
      ^bb0(%in: i1, %in_49: i1, %in_50: i1, %out_51: i1):
        %294 = math.log %extracted : f32
        %295 = arith.subi %extracted_38, %c-13670_i16 : i16
        %296 = index.ceildivs %33, %65
        %297 = math.expm1 %13 : tensor<10x9xf32>
        %298 = index.sub %287, %c13
        %299 = arith.minsi %extracted_47, %c754390120_i64 : i64
        %300 = affine.min affine_map<(d0) -> (0, (d0 - 16) * 32)>(%134)
        %301 = arith.floordivsi %true_3, %false_1 : i1
        %302 = arith.divui %186, %c1912367194_i64 : i64
        %303 = affine.min affine_map<(d0, d1) -> ((d1 * 2 + 32) ceildiv 16, (d1 * 2 + 32) ceildiv 16, -(d1 + d1 * 2 + 30 + 32))>(%164, %147)
        %rank_52 = tensor.rank %2 : tensor<10x9xi16>
        %304 = vector.broadcast %cst : f16 to vector<15x12xf16>
        %dest_53, %accumulated_value_54 = vector.scan <minf>, %122, %304 {inclusive = true, reduction_dim = 0 : i64} : vector<12x15x12xf16>, vector<15x12xf16>
        %305 = arith.minsi %true, %in : i1
        %306 = arith.minui %c1116139000_i32, %c828314368_i32 : i32
        %307 = vector.flat_transpose %117 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
        %308 = bufferization.to_memref %10 : memref<10x9xi16>
        %309 = index.sizeof
        %310 = math.log10 %7 : tensor<12x15x12xf16>
        %311 = arith.remf %90, %extracted_35 : f16
        %312 = math.ctpop %c1116139000_i32 : i32
        %313 = vector.broadcast %cst_4 : f32 to vector<12x10xf32>
        %314 = vector.fma %313, %197, %196 : vector<12x10xf32>
        %315 = memref.load %alloc_18[%c4, %c11, %c3] : memref<12x15x12xf32>
        %316 = vector.broadcast %201 : index to vector<9xindex>
        vector.scatter %alloc_11[%c0, %c8] [%316], %118, %119 : memref<10x9xf32>, vector<9xindex>, vector<9xi1>, vector<9xf32>
        vector.print %122 : vector<12x15x12xf16>
        %317 = index.floordivs %309, %236
        %318 = arith.divui %out_51, %false_22 : i1
        %319 = arith.minsi %91, %c18241_i16 : i16
        bufferization.dealloc_tensor %4 : tensor<12x15x12xi64>
        %320 = bufferization.to_tensor %alloc_10 : memref<12x10xi16>
        %321 = arith.minsi %91, %91 : i16
        %322 = bufferization.to_memref %6 : memref<12x15x12xi32>
        %323 = arith.minsi %out, %out : i1
        linalg.yield %in_50 : i1
      } -> tensor<12x15x12xi1>
      linalg.yield %false : i1
    } -> tensor<12x15x12xi1>
    %259 = arith.muli %true_3, %true_3 : i1
    %260 = scf.if %false -> (memref<10x10xi1>) {
      %268 = arith.subi %c-13670_i16, %c18241_i16 : i16
      %269 = tensor.empty() : tensor<15x12xi32>
      %270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%269 : tensor<15x12xi32>) outs(%6 : tensor<12x15x12xi32>) {
      ^bb0(%in: i32, %out: i32):
        affine.store %49, %189[%c2, %c5] : memref<10x9xi64>
        vector.print %95 : vector<1xf16>
        %276 = math.ipowi %11, %12 : tensor<12x10xi16>
        %277 = vector.flat_transpose %139 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
        %278 = math.ctpop %c828314368_i32 : i32
        %279 = arith.cmpi sgt, %c-13670_i16, %c-13670_i16 : i16
        %280 = arith.maxsi %extracted_38, %extracted_38 : i16
        %281 = arith.remui %false_1, %218 : i1
        %282 = math.powf %24, %24 : tensor<f32>
        %283 = math.powf %extracted, %extracted : f32
        %284 = vector.multi_reduction <minui>, %139, %139 [] : vector<10xi16> to vector<10xi16>
        %285 = math.fma %extracted_35, %36, %cst : f16
        %286 = math.ceil %5 : tensor<12x10xf32>
        %expanded = tensor.expand_shape %transposed [[0], [1], [2, 3]] : tensor<12x12x15xi64> into tensor<12x12x15x1xi64>
        %287 = memref.atomic_rmw mulf %cst_2, %alloc_17[%c1, %c2] : (f32, memref<12x10xf32>) -> f32
        memref.assume_alignment %alloc_5, 4 : memref<12x15x12xi1>
        %288 = affine.apply affine_map<(d0, d1) -> (d1)>(%c10, %72)
        %289 = arith.subi %218, %218 : i1
        %290 = math.cttz %8 : tensor<12x10xi1>
        %291 = math.fma %extracted, %cst_2, %cst_4 : f32
        %292 = math.ctpop %6 : tensor<12x15x12xi32>
        %293 = arith.xori %true_0, %false : i1
        %alloc_45 = memref.alloc() : memref<12x10xf16>
        memref.copy %alloc_16, %alloc_45 : memref<12x10xf16> to memref<12x10xf16>
        %294 = arith.divsi %187, %c1028838234_i64 : i64
        %295 = math.expm1 %23 : tensor<f32>
        %296 = arith.remui %91, %extracted_38 : i16
        %297 = memref.atomic_rmw ori %c1912367194_i64, %alloc_13[%c7, %c4] : (i64, memref<10x9xi64>) -> i64
        %298 = arith.minf %extracted_32, %178 : f32
        %299 = arith.maxui %c-13670_i16, %c-13670_i16 : i16
        %300 = math.tanh %5 : tensor<12x10xf32>
        %301 = vector.transpose %172, [1, 0, 2] : vector<12x15x12xf16> to vector<15x12x12xf16>
        %302 = arith.shrsi %49, %187 : i64
        linalg.yield %c1116139000_i32 : i32
      } -> tensor<12x15x12xi32>
      %271 = arith.floordivsi %186, %49 : i64
      %272 = bufferization.to_memref %11 : memref<12x10xi16>
      %273 = scf.while (%arg1 = %218) : (i1) -> i1 {
        %276 = vector.maskedload %alloc_17[%c6, %c7], %150, %226 : memref<12x10xf32>, vector<12xi1>, vector<12xf32> into vector<12xf32>
        %277 = math.round %5 : tensor<12x10xf32>
        %278 = index.ceildivu %164, %148
        %279 = math.cttz %199 : i32
        %280 = index.ceildivu %c5, %215
        %281 = affine.apply affine_map<(d0) -> (-d0)>(%159)
        %282 = arith.xori %186, %c754390120_i64 : i64
        %283 = math.exp %19 : tensor<9xf32>
        scf.condition(%true_3) %true_0 : i1
      } do {
      ^bb0(%arg1: i1):
        %276 = affine.load %216[%c8, %c5] : memref<10x10xi16>
        %277 = vector.splat %148 : vector<12x10xindex>
        %278 = arith.floordivsi %true_3, %218 : i1
        %279 = index.maxu %57, %c11
        %280 = bufferization.to_memref %generated_39 : memref<?x9xf32>
        %alloca = memref.alloca() : memref<10x9xi1>
        %281 = index.divu %147, %279
        %282 = math.ctlz %10 : tensor<10x9xi16>
        %283 = arith.subi %true_3, %false_22 : i1
        %284 = math.ctpop %c18241_i16 : i16
        %285 = bufferization.to_memref %1 : memref<10x9xi64>
        %false_45 = arith.constant false
        %286 = index.ceildivu %c10, %100
        %287 = arith.shrui %49, %49 : i64
        %288 = vector.transpose %118, [0] : vector<9xi1> to vector<9xi1>
        %289 = math.powf %reduced, %19 : tensor<9xf32>
        scf.yield %true_3 : i1
      }
      %rank_44 = tensor.rank %16 : tensor<12x10xi1>
      %274 = arith.remui %extracted_38, %c-13670_i16 : i16
      %275 = math.tanh %7 : tensor<12x15x12xf16>
      scf.yield %alloc_12 : memref<10x10xi1>
    } else {
      %268 = index.castu %c828314368_i32 : i32 to index
      %269 = index.add %35, %256
      %270 = math.ctlz %c1028838234_i64 : i64
      %271 = arith.minsi %186, %187 : i64
      %272 = arith.minsi %c1028838234_i64, %c1028838234_i64 : i64
      %273 = arith.minsi %false, %false_22 : i1
      %274 = math.cos %extracted_35 : f16
      %275 = math.ctlz %0 : tensor<10x9xi64>
      scf.yield %alloc_12 : memref<10x10xi1>
    }
    scf.index_switch %53 
    case 1 {
      %268 = arith.cmpf uge, %extracted_35, %36 : f16
      memref.assume_alignment %alloc_5, 1 : memref<12x15x12xi1>
      %269 = bufferization.clone %251 : memref<10x10xi16> to memref<10x10xi16>
      %270 = math.tanh %extracted_32 : f32
      memref.tensor_store %223, %alloc_19 : memref<10x10xf32>
      %271 = arith.minsi %218, %true_3 : i1
      %272 = index.castu %c1 : index to i32
      %273 = math.log1p %13 : tensor<10x9xf32>
      %274 = index.sub %29, %147
      %275 = vector.broadcast %c1897752162_i32 : i32 to vector<10x10xi32>
      %276 = math.sqrt %reduced : tensor<9xf32>
      %277 = vector.broadcast %c1116139000_i32 : i32 to vector<15x12xi32>
      %dest_44, %accumulated_value_45 = vector.scan <mul>, %222, %277 {inclusive = false, reduction_dim = 0 : i64} : vector<12x15x12xi32>, vector<15x12xi32>
      %278 = math.fma %22, %19, %19 : tensor<9xf32>
      %279 = vector.insertelement %218, %118[%159 : index] : vector<9xi1>
      %alloc_46 = memref.alloc() : memref<12x15x12xf16>
      %alloc_47 = memref.alloc() : memref<15x12xf16>
      %280 = tensor.empty() : tensor<12x12xf16>
      %281 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_47, %280 : memref<15x12xf16>, tensor<12x12xf16>) outs(%7 : tensor<12x15x12xf16>) {
      ^bb0(%in: f16, %in_48: f16, %out: f16):
        %282 = vector.bitcast %226 : vector<12xf32> to vector<12xf32>
        %cast_49 = tensor.cast %2 : tensor<10x9xi16> to tensor<?x?xi16>
        %283 = vector.broadcast %199 : i32 to vector<10xi32>
        %dest_50, %accumulated_value_51 = vector.scan <xor>, %61, %283 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10xi32>, vector<10xi32>
        %284 = arith.floordivsi %c18241_i16, %extracted_38 : i16
        %285 = math.expm1 %223 : tensor<10x10xf32>
        %286 = vector.transpose %200, [0] : vector<10xi1> to vector<10xi1>
        %287 = math.cttz %c18241_i16 : i16
        %288 = math.round %out : f16
        vector.print %193 : vector<9xf32>
        %289 = math.ctpop %14 : tensor<12x15x12xi1>
        %290 = affine.apply affine_map<(d0, d1, d2) -> (d2 * 16)>(%c4, %188, %33)
        %291 = affine.apply affine_map<(d0, d1, d2) -> (d2 + d1)>(%c15, %53, %236)
        %292 = arith.shrsi %c1897752162_i32, %199 : i32
        %293 = math.powf %178, %extracted_32 : f32
        %294 = math.ipowi %15, %120 : tensor<10x10xi16>
        %alloca = memref.alloca() : memref<10x9xi32>
        %295 = arith.divui %c18241_i16, %c18241_i16 : i16
        %296 = index.ceildivu %274, %c5
        %297 = affine.load %99[%c2, %c2] : memref<10x10xi16>
        %298 = arith.shrui %extracted_38, %91 : i16
        %299 = math.ipowi %12, %11 : tensor<12x10xi16>
        %300 = math.round %23 : tensor<f32>
        %301 = math.ipowi %c754390120_i64, %187 : i64
        %302 = math.exp2 %cst : f16
        memref.store %extracted_32, %alloc_18[%c10, %c5, %c8] : memref<12x15x12xf32>
        %303 = math.ceil %5 : tensor<12x10xf32>
        %304 = arith.maxui %false, %true : i1
        %305 = math.expm1 %223 : tensor<10x10xf32>
        memref.assume_alignment %alloc_10, 8 : memref<12x10xi16>
        %306 = bufferization.to_tensor %alloc_17 : memref<12x10xf32>
        %307 = affine.load %alloc_18[%c14, %c15, %c7] : memref<12x15x12xf32>
        %rank_52 = tensor.rank %transposed : tensor<12x12x15xi64>
        linalg.yield %90 : f16
      } -> tensor<12x15x12xf16>
      scf.yield
    }
    case 2 {
      %268 = index.ceildivu %c1, %201
      %269 = affine.max affine_map<(d0, d1) -> (-(d0 - (d1 + 64) * 2))>(%256, %201)
      %270 = bufferization.to_tensor %243 : memref<9xf32>
      %271 = affine.min affine_map<(d0, d1) -> (-d1, -d0)>(%c12, %269)
      %272 = arith.remf %90, %cst : f16
      %273 = vector.insertelement %c18241_i16, %194[%236 : index] : vector<10xi16>
      %274 = vector.extract_strided_slice %107 {offsets = [2], sizes = [2], strides = [1]} : vector<10x9xi16> to vector<2x9xi16>
      %275 = arith.muli %false_22, %true : i1
      %276 = math.cttz %14 : tensor<12x15x12xi1>
      %alloc_44 = memref.alloc() : memref<12x15x12xi32>
      memref.tensor_store %6, %alloc_44 : memref<12x15x12xi32>
      %277 = math.cos %extracted_32 : f32
      %278 = math.cttz %c1912367194_i64 : i64
      %279 = arith.cmpi sge, %199, %c1897752162_i32 : i32
      %280 = math.log2 %223 : tensor<10x10xf32>
      %281 = index.add %269, %167
      %282 = index.castu %43 : index to i32
      scf.yield
    }
    case 3 {
      %alloc_44 = memref.alloc() : memref<12x15x12xi64>
      affine.store %c1897752162_i32, %alloc_15[%c15, %c14] : memref<10x9xi32>
      %268 = bufferization.to_tensor %243 : memref<9xf32>
      %269 = arith.maxui %extracted_38, %91 : i16
      %270 = arith.floordivsi %199, %c1116139000_i32 : i32
      %extracted_45 = tensor.extract %11[%c11, %c8] : tensor<12x10xi16>
      %271 = arith.cmpi ult, %c18241_i16, %extracted_45 : i16
      memref.assume_alignment %alloc_12, 2 : memref<10x10xi1>
      %272 = math.sqrt %223 : tensor<10x10xf32>
      %alloca = memref.alloca() : memref<12x15x12xi32>
      %273 = index.floordivs %201, %53
      %274 = scf.index_switch %c7 -> tensor<10x9xf32> 
      case 1 {
        %281 = math.log1p %extracted_35 : f16
        %inserted = tensor.insert %91 into %11[%c6, %c8] : tensor<12x10xi16>
        %cast_46 = tensor.cast %0 : tensor<10x9xi64> to tensor<?x?xi64>
        %282 = math.cos %cst_4 : f32
        %283 = index.casts %true : i1 to index
        %284 = vector.extract_strided_slice %174 {offsets = [7], sizes = [3], strides = [1]} : vector<10x10xi1> to vector<3x10xi1>
        %285 = arith.minui %true_3, %true : i1
        %alloca_47 = memref.alloca() : memref<10x10xi64>
        %286 = index.add %c2, %57
        %287 = arith.floordivsi %187, %186 : i64
        %288 = vector.flat_transpose %119 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
        %289 = math.cttz %4 : tensor<12x15x12xi64>
        %290 = vector.insertelement %true, %200[%c1 : index] : vector<10xi1>
        %291 = bufferization.clone %alloc_16 : memref<12x10xf16> to memref<12x10xf16>
        %292 = math.expm1 %23 : tensor<f32>
        %dest_48, %accumulated_value_49 = vector.scan <and>, %225, %200 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10xi1>, vector<10xi1>
        scf.yield %13 : tensor<10x9xf32>
      }
      case 2 {
        %281 = math.cos %24 : tensor<f32>
        %alloca_46 = memref.alloca() : memref<10x10xi32>
        %282 = vector.create_mask %188, %256 : vector<12x10xi1>
        %283 = math.ctpop %11 : tensor<12x10xi16>
        %284 = arith.remui %extracted_38, %91 : i16
        %285 = vector.extract_strided_slice %257 {offsets = [4], sizes = [2], strides = [1]} : vector<6x10xf32> to vector<2x10xf32>
        %286 = memref.atomic_rmw maxu %91, %alloc_6[%c5, %c0] : (i16, memref<10x10xi16>) -> i16
        %287 = index.divu %c5, %c2
        %288 = vector.insertelement %cst, %76[%53 : index] : vector<10xf16>
        %289 = math.ctpop %4 : tensor<12x15x12xi64>
        %290 = math.powf %13, %13 : tensor<10x9xf32>
        %291 = math.cos %extracted_35 : f16
        %292 = vector.broadcast %c18241_i16 : i16 to vector<12xi16>
        %293 = vector.maskedload %alloc[%c0, %c6], %150, %292 : memref<12x10xi16>, vector<12xi1>, vector<12xi16> into vector<12xi16>
        %294 = tensor.empty(%188, %33) : tensor<?x?x12xi16>
        %splat = tensor.splat %c828314368_i32 : tensor<10x10xi32>
        %295 = arith.shrsi %c1116139000_i32, %c828314368_i32 : i32
        scf.yield %13 : tensor<10x9xf32>
      }
      case 3 {
        %281 = bufferization.to_memref %9 : memref<12x10xi16>
        %282 = index.mul %215, %c3
        memref.copy %189, %alloc_13 : memref<10x9xi64> to memref<10x9xi64>
        vector.print %80 : vector<12x10xf32>
        %283 = arith.maxsi %true, %true_3 : i1
        %284 = math.ctpop %true_0 : i1
        %285 = arith.maxui %true_0, %false : i1
        %286 = bufferization.to_tensor %alloc_6 : memref<10x10xi16>
        %287 = index.floordivs %c11, %159
        %288 = vector.shuffle %194, %176 [0, 1, 3, 5, 9, 10] : vector<10xi16>, vector<1xi16>
        %289 = index.divu %282, %c4
        %290 = bufferization.to_memref %transposed : memref<12x12x15xi64>
        %291 = arith.andi %c1116139000_i32, %c1116139000_i32 : i32
        %292 = affine.load %alloc_12[%c6, %c12] : memref<10x10xi1>
        %293 = math.atan %5 : tensor<12x10xf32>
        %294 = math.sqrt %36 : f16
        scf.yield %13 : tensor<10x9xf32>
      }
      case 4 {
        %281 = math.exp2 %13 : tensor<10x9xf32>
        %282 = arith.andi %true, %true_3 : i1
        %283 = arith.subi %extracted_38, %c18241_i16 : i16
        %284 = vector.broadcast %c-13670_i16 : i16 to vector<15xi16>
        %285 = vector.broadcast %true : i1 to vector<15xi1>
        %286 = vector.maskedload %alloc_6[%c3, %c3], %285, %284 : memref<10x10xi16>, vector<15xi1>, vector<15xi16> into vector<15xi16>
        %287 = index.floordivs %164, %72
        %288 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%c6, %85, %c14, %rank)
        %289 = vector.maskedload %alloc_9[%c3, %c4, %c0], %200, %200 : memref<12x15x12xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %inserted = tensor.insert %extracted into %5[%c6, %c3] : tensor<12x10xf32>
        %c10739_i16 = arith.constant 10739 : i16
        %290 = vector.matrix_multiply %209, %21 {lhs_columns = 2 : i32, lhs_rows = 6 : i32, rhs_columns = 5 : i32} : (vector<12xf16>, vector<10xf16>) -> vector<30xf16>
        %291 = vector.transpose %200, [0] : vector<10xi1> to vector<10xi1>
        vector.print %233 : vector<10xf32>
        %cst_46 = arith.constant 6.342400e+04 : f16
        %292 = arith.subi %91, %extracted_38 : i16
        %293 = index.mul %159, %201
        %294 = math.log1p %36 : f16
        scf.yield %13 : tensor<10x9xf32>
      }
      default {
        %281 = vector.splat %164 : vector<12x10xindex>
        %282 = vector.splat %c754390120_i64 : vector<10x9xi64>
        %283 = math.ctlz %3 : tensor<10x9xi32>
        %284 = math.expm1 %13 : tensor<10x9xf32>
        %dest_46, %accumulated_value_47 = vector.scan <maxf>, %62, %76 {inclusive = true, reduction_dim = 0 : i64} : vector<10x10xf16>, vector<10xf16>
        %285 = arith.cmpf une, %cst_2, %extracted : f32
        %286 = vector.insert %200, %60 [9] : vector<10xi1> into vector<10x10xi1>
        %287 = vector.splat %c14 : vector<10x9xindex>
        %288 = vector.multi_reduction <maxf>, %102, %cst [0] : vector<1xf16> to f16
        %289 = arith.ceildivsi %218, %true : i1
        %290 = vector.splat %167 : vector<10x9xindex>
        %291 = vector.multi_reduction <mul>, %226, %extracted [0] : vector<12xf32> to f32
        %292 = arith.shrui %c1897752162_i32, %199 : i32
        %293 = bufferization.to_tensor %alloc : memref<12x10xi16>
        %294 = math.sqrt %178 : f32
        %295 = vector.transpose %226, [0] : vector<12xf32> to vector<12xf32>
        scf.yield %13 : tensor<10x9xf32>
      }
      %275 = arith.subi %c1116139000_i32, %199 : i32
      %276 = index.divu %201, %c11
      %277 = vector.broadcast %extracted : f32 to vector<9x9xf32>
      %278 = vector.outerproduct %117, %193, %277 {kind = #vector.kind<maxf>} : vector<9xf32>, vector<9xf32>
      %279 = tensor.empty() : tensor<12x9xf32>
      %280 = linalg.matmul ins(%5, %13 : tensor<12x10xf32>, tensor<10x9xf32>) outs(%279 : tensor<12x9xf32>) -> tensor<12x9xf32>
      scf.yield
    }
    default {
      %268 = vector.broadcast %true_3 : i1 to vector<12x9xi1>
      %269 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %103, %93, %268 : vector<12x10xi1>, vector<10x9xi1> into vector<12x9xi1>
      %270 = math.fma %extracted_35, %extracted_35, %36 : f16
      %271 = vector.outerproduct %25, %25, %59 {kind = #vector.kind<add>} : vector<10xf16>, vector<10xf16>
      %splat = tensor.splat %199 : tensor<12x10xi32>
      %rank_44 = tensor.rank %8 : tensor<12x10xi1>
      %extracted_45 = tensor.extract %15[%c2, %c3] : tensor<10x10xi16>
      %272 = math.tan %13 : tensor<10x9xf32>
      %273 = math.ctpop %11 : tensor<12x10xi16>
      %274 = arith.minsi %c1897752162_i32, %199 : i32
      %generated_46 = tensor.generate %c13 {
      ^bb0(%arg1: index, %arg2: index):
        %281 = vector.transpose %95, [0] : vector<1xf16> to vector<1xf16>
        %282 = math.log1p %extracted_32 : f32
        %283 = arith.maxf %cst, %extracted_35 : f16
        %284 = math.log1p %extracted : f32
        tensor.yield %extracted_45 : i16
      } : tensor<?x9xi16>
      %275 = arith.maxsi %c-13670_i16, %c-13670_i16 : i16
      %276 = scf.execute_region -> index {
        %281 = arith.xori %49, %187 : i64
        %282 = arith.cmpi sge, %false_22, %true_3 : i1
        %283 = bufferization.clone %alloc : memref<12x10xi16> to memref<12x10xi16>
        %284 = math.expm1 %223 : tensor<10x10xf32>
        %285 = vector.flat_transpose %25 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
        %286 = arith.subi %c1028838234_i64, %c1028838234_i64 : i64
        %287 = math.expm1 %reduced : tensor<9xf32>
        %288 = arith.remui %extracted_45, %c-13670_i16 : i16
        %289 = math.fma %13, %13, %13 : tensor<10x9xf32>
        %290 = arith.floordivsi %extracted_38, %extracted_45 : i16
        %291 = math.log10 %223 : tensor<10x10xf32>
        %292 = math.copysign %178, %extracted : f32
        %293 = vector.splat %c4 : vector<10x9xindex>
        %294 = arith.subi %c1116139000_i32, %c1116139000_i32 : i32
        %295 = affine.load %alloc_14[%c0, %c5] : memref<10x9xf32>
        %296 = bufferization.to_memref %12 : memref<12x10xi16>
        scf.yield %147 : index
      }
      %277 = arith.ori %49, %c1912367194_i64 : i64
      %278 = math.round %22 : tensor<9xf32>
      %279 = math.log1p %cst : f16
      %280 = memref.atomic_rmw minf %extracted, %243[%c7] : (f32, memref<9xf32>) -> f32
    }
    %261 = scf.execute_region -> tensor<10x10xi1> {
      %c6825_i16 = arith.constant 6825 : i16
      %268 = vector.maskedload %alloc_14[%c9, %c0], %118, %193 : memref<10x9xf32>, vector<9xi1>, vector<9xf32> into vector<9xf32>
      %269 = index.castu %c12 : index to i32
      %270 = arith.minui %186, %49 : i64
      %271 = bufferization.clone %alloc_13 : memref<10x9xi64> to memref<10x9xi64>
      %272 = vector.matrix_multiply %176, %176 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi16>, vector<1xi16>) -> vector<1xi16>
      %inserted = tensor.insert %extracted_32 into %22[%c3] : tensor<9xf32>
      %collapsed = tensor.collapse_shape %9 [[0, 1]] : tensor<12x10xi16> into tensor<120xi16>
      %273 = arith.muli %extracted_38, %91 : i16
      vector.print %245 : vector<10x9xi32>
      %274 = math.ctlz %3 : tensor<10x9xi32>
      memref.copy %alloc_9, %alloc_5 : memref<12x15x12xi1> to memref<12x15x12xi1>
      %275 = memref.atomic_rmw ori %49, %271[%c2, %c4] : (i64, memref<10x9xi64>) -> i64
      %276 = index.floordivs %53, %159
      %277 = math.cos %extracted : f32
      %expanded = tensor.expand_shape %9 [[0], [1, 2]] : tensor<12x10xi16> into tensor<12x10x1xi16>
      %278 = tensor.empty() : tensor<10x10xi1>
      scf.yield %278 : tensor<10x10xi1>
    }
    %cast_41 = tensor.cast %13 : tensor<10x9xf32> to tensor<?x?xf32>
    %262 = arith.shrsi %true_0, %true_0 : i1
    %263 = tensor.empty() : tensor<10x10xi1>
    %264 = linalg.copy ins(%261 : tensor<10x10xi1>) outs(%263 : tensor<10x10xi1>) -> tensor<10x10xi1>
    %265 = tensor.empty() : tensor<10x12xf16>
    %transposed_42 = linalg.transpose ins(%alloc_16 : memref<12x10xf16>) outs(%265 : tensor<10x12xf16>) permutation = [1, 0] 
    %alloc_43 = memref.alloc() : memref<f32>
    linalg.reduce ins(%alloc_18 : memref<12x15x12xf32>) outs(%alloc_43 : memref<f32>) dimensions = [0, 1, 2] 
      (%in: f32, %init: f32) {
        vector.print %76 : vector<10xf16>
        %268 = index.ceildivu %254, %164
        %true_44 = index.bool.constant true
        %alloc_45 = memref.alloc() : memref<12x15x12xi1>
        %269 = bufferization.to_memref %11 : memref<12x10xi16>
        %270 = math.ctlz %218 : i1
        %271 = math.sqrt %19 : tensor<9xf32>
        %272 = bufferization.to_tensor %251 : memref<10x10xi16>
        %cst_46 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_46 : f32
      }
    %266 = scf.parallel (%arg1, %arg2) = (%c10, %159) to (%c7, %148) step (%c15, %c8) init (%251) -> memref<10x10xi16> {
      %268 = scf.if %false_1 -> (i32) {
        %280 = index.add %c14, %c3
        %281 = vector.broadcast %cst_2 : f32 to vector<12x10xf32>
        %282 = vector.fma %281, %197, %281 : vector<12x10xf32>
        %dest_48, %accumulated_value_49 = vector.scan <minf>, %169, %233 {inclusive = true, reduction_dim = 1 : i64} : vector<10x9xf32>, vector<10xf32>
        %283 = arith.remui %91, %91 : i16
        %284 = math.log1p %36 : f16
        %285 = arith.divsi %c1028838234_i64, %49 : i64
        %286 = index.castu %true : i1 to index
        %287 = arith.remui %c754390120_i64, %c754390120_i64 : i64
        scf.yield %c828314368_i32 : i32
      } else {
        %280 = arith.minui %187, %49 : i64
        %281 = vector.load %alloc_15[%c3, %c7] : memref<10x9xi32>, vector<12x10xi32>
        %282 = math.log1p %90 : f16
        %283 = arith.andi %187, %c1028838234_i64 : i64
        %284 = vector.broadcast %cst : f16 to vector<12x15x12xf16>
        %285 = arith.divsi %false, %true_0 : i1
        %286 = vector.transpose %21, [0] : vector<10xf16> to vector<10xf16>
        %287 = math.absf %extracted : f32
        scf.yield %c1116139000_i32 : i32
      }
      %269 = arith.divf %extracted, %cst_2 : f32
      %270 = vector.broadcast %c828314368_i32 : i32 to vector<12xi32>
      %271 = vector.multi_reduction <and>, %222, %270 [1, 2] : vector<12x15x12xi32> to vector<12xi32>
      %alloc_44 = memref.alloc() : memref<12x15x12xi64>
      %272 = vector.extract %61[0] : vector<10x10xi32>
      %273 = arith.minsi %true_0, %true : i1
      %274 = vector.multi_reduction <minsi>, %194, %extracted_38 [0] : vector<10xi16> to i16
      %275 = math.sqrt %extracted_32 : f32
      affine.store %extracted_35, %alloc_27[%c1, %c3] : memref<10x9xf16>
      %276 = math.fma %13, %13, %13 : tensor<10x9xf32>
      scf.if %true_0 {
        %280 = vector.bitcast %225 : vector<10x10xi1> to vector<10x10xi1>
        %281 = arith.addf %36, %90 : f16
        affine.store %true_0, %alloc_9[%c11, %c15, %c14] : memref<12x15x12xi1>
        %282 = vector.broadcast %91 : i16 to vector<15xi16>
        %283 = vector.transfer_write %282, %15[%c12, %c8] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<15xi16>, tensor<10x10xi16>
        %284 = vector.broadcast %178 : f32 to vector<9x9xf32>
        %285 = vector.outerproduct %117, %193, %284 {kind = #vector.kind<add>} : vector<9xf32>, vector<9xf32>
        %286 = memref.atomic_rmw mulf %178, %alloc_17[%c11, %c6] : (f32, memref<12x10xf32>) -> f32
        %287 = math.atan %5 : tensor<12x10xf32>
        %288 = vector.broadcast %178 : f32 to vector<9x9xf32>
        %289 = vector.outerproduct %119, %119, %288 {kind = #vector.kind<mul>} : vector<9xf32>, vector<9xf32>
      } else {
        %280 = math.ctpop %true_3 : i1
        %dest_48, %accumulated_value_49 = vector.scan <add>, %60, %200 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10xi1>, vector<10xi1>
        %inserted = tensor.insert %extracted_35 into %265[%c3, %c0] : tensor<10x12xf16>
        %281 = vector.extract_strided_slice %102 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
        %282 = math.rsqrt %cst_2 : f32
        %283 = arith.floordivsi %218, %218 : i1
        %284 = math.ctlz %true : i1
        %285 = math.exp %13 : tensor<10x9xf32>
      }
      %true_45 = index.bool.constant true
      %277 = affine.load %140[%c6, %c7] : memref<10x9xf32>
      %alloc_46 = memref.alloc() : memref<10x10xi1>
      %278 = math.ceil %19 : tensor<9xf32>
      %279 = math.expm1 %19 : tensor<9xf32>
      %alloc_47 = memref.alloc() : memref<10x10xi16>
      scf.reduce(%alloc_47)  : memref<10x10xi16> {
      ^bb0(%arg3: memref<10x10xi16>, %arg4: memref<10x10xi16>):
        %280 = math.ctlz %c1116139000_i32 : i32
        %281 = math.cttz %false_22 : i1
        %282 = arith.addf %178, %extracted : f32
        %283 = arith.shrui %268, %199 : i32
        %284 = math.ceil %23 : tensor<f32>
        %285 = math.round %13 : tensor<10x9xf32>
        %286 = vector.extract_strided_slice %245 {offsets = [5], sizes = [3], strides = [1]} : vector<10x9xi32> to vector<3x9xi32>
        %287 = math.ceil %265 : tensor<10x12xf16>
        %alloc_48 = memref.alloc() : memref<10x10xi16>
        scf.reduce.return %alloc_48 : memref<10x10xi16>
      }
      scf.yield
    }
    %267 = affine.vector_load %alloc_9[%164, %c13, %29] : memref<12x15x12xi1>, vector<12xi1>
    affine.vector_store %226, %243[%c10] : memref<9xf32>, vector<12xf32>
    vector.print %21 : vector<10xf16>
    vector.print %25 : vector<10xf16>
    vector.print %59 : vector<10x10xf16>
    vector.print %60 : vector<10x10xi1>
    vector.print %61 : vector<10x10xi32>
    vector.print %62 : vector<10x10xf16>
    vector.print %76 : vector<10xf16>
    vector.print %77 : vector<10xi16>
    vector.print %80 : vector<12x10xf32>
    vector.print %93 : vector<10x9xi1>
    vector.print %95 : vector<1xf16>
    vector.print %102 : vector<1xf16>
    vector.print %103 : vector<12x10xi1>
    vector.print %105 : vector<10xi16>
    vector.print %107 : vector<10x9xi16>
    vector.print %115 : vector<10x10xi1>
    vector.print %117 : vector<9xf32>
    vector.print %118 : vector<9xi1>
    vector.print %119 : vector<9xf32>
    vector.print %122 : vector<12x15x12xf16>
    vector.print %139 : vector<10xi16>
    vector.print %149 : vector<12xf16>
    vector.print %150 : vector<12xi1>
    vector.print %151 : vector<12xf16>
    vector.print %168 : vector<10x9xf32>
    vector.print %169 : vector<10x9xf32>
    vector.print %172 : vector<12x15x12xf16>
    vector.print %174 : vector<10x10xi1>
    vector.print %176 : vector<1xi16>
    vector.print %193 : vector<9xf32>
    vector.print %194 : vector<10xi16>
    vector.print %196 : vector<12x10xf32>
    vector.print %197 : vector<12x10xf32>
    vector.print %200 : vector<10xi1>
    vector.print %202 : vector<10x9xf32>
    vector.print %209 : vector<12xf16>
    vector.print %212 : vector<10x9xf32>
    vector.print %213 : vector<10x9xf32>
    vector.print %222 : vector<12x15x12xi32>
    vector.print %225 : vector<10x10xi1>
    vector.print %226 : vector<12xf32>
    vector.print %233 : vector<10xf32>
    vector.print %245 : vector<10x9xi32>
    vector.print %257 : vector<6x10xf32>
    vector.print %267 : vector<12xi1>
    vector.print %c18241_i16 : i16
    vector.print %true : i1
    vector.print %cst : f16
    vector.print %true_0 : i1
    vector.print %c1897752162_i32 : i32
    vector.print %false : i1
    vector.print %c1912367194_i64 : i64
    vector.print %c1028838234_i64 : i64
    vector.print %c754390120_i64 : i64
    vector.print %false_1 : i1
    vector.print %cst_2 : f32
    vector.print %c828314368_i32 : i32
    vector.print %true_3 : i1
    vector.print %cst_4 : f32
    vector.print %c-13670_i16 : i16
    vector.print %c1116139000_i32 : i32
    vector.print %36 : f16
    vector.print %false_22 : i1
    vector.print %49 : i64
    vector.print %extracted : f32
    vector.print %90 : f16
    vector.print %91 : i16
    vector.print %extracted_32 : f32
    vector.print %178 : f32
    vector.print %186 : i64
    vector.print %187 : i64
    vector.print %199 : i32
    vector.print %extracted_35 : f16
    vector.print %218 : i1
    vector.print %extracted_38 : i16
    return
  }
}
