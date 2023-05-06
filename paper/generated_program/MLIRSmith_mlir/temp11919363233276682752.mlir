module {
  func.func @func1(%arg0: tensor<8x15x9xi1>) -> f16 {
    %cst = arith.constant 0x4E529D4F : f32
    %c1908153259_i64 = arith.constant 1908153259 : i64
    %cst_0 = arith.constant 1.035200e+04 : f16
    %cst_1 = arith.constant 2.05520102E+9 : f32
    %c564459480_i64 = arith.constant 564459480 : i64
    %cst_2 = arith.constant 1.23726362E+9 : f32
    %false = arith.constant false
    %c1647736072_i64 = arith.constant 1647736072 : i64
    %c27427_i16 = arith.constant 27427 : i16
    %c23984_i16 = arith.constant 23984 : i16
    %cst_3 = arith.constant 2.835200e+04 : f16
    %c606377018_i32 = arith.constant 606377018 : i32
    %cst_4 = arith.constant 5.568000e+04 : f16
    %c1284375718_i64 = arith.constant 1284375718 : i64
    %true = arith.constant true
    %c1069903657_i32 = arith.constant 1069903657 : i32
    %0 = tensor.empty() : tensor<9x15x8xi32>
    %1 = tensor.empty() : tensor<8x15x9xi32>
    %2 = tensor.empty() : tensor<15x1xf32>
    %3 = tensor.empty() : tensor<9x15x8xi16>
    %4 = tensor.empty() : tensor<9x15x8xi32>
    %5 = tensor.empty() : tensor<8x15x9xf32>
    %6 = tensor.empty() : tensor<8x1x15xf16>
    %7 = tensor.empty() : tensor<8x15x9xi64>
    %8 = tensor.empty() : tensor<8x15x9xi16>
    %9 = tensor.empty() : tensor<8x1x15xi16>
    %10 = tensor.empty() : tensor<8x1x15xf32>
    %11 = tensor.empty() : tensor<8x15x9xf16>
    %12 = tensor.empty() : tensor<8x1x15xf32>
    %13 = tensor.empty() : tensor<15x1xi64>
    %14 = tensor.empty() : tensor<15x1xi64>
    %15 = tensor.empty() : tensor<15x1xf16>
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
    %alloc = memref.alloc() : memref<15x1xi64>
    %alloc_5 = memref.alloc() : memref<8x15x9xf32>
    %alloc_6 = memref.alloc() : memref<8x1x15xi64>
    %alloc_7 = memref.alloc() : memref<8x1x15xf32>
    %alloc_8 = memref.alloc() : memref<15x1xi1>
    %alloc_9 = memref.alloc() : memref<9x15x8xf16>
    %alloc_10 = memref.alloc() : memref<8x1x15xf32>
    %alloc_11 = memref.alloc() : memref<15x1xi16>
    %alloc_12 = memref.alloc() : memref<9x15x8xi16>
    %alloc_13 = memref.alloc() : memref<8x1x15xi1>
    %alloc_14 = memref.alloc() : memref<9x15x8xf32>
    %alloc_15 = memref.alloc() : memref<15x1xi32>
    %alloc_16 = memref.alloc() : memref<15x1xi1>
    %alloc_17 = memref.alloc() : memref<9x15x8xi32>
    %alloc_18 = memref.alloc() : memref<8x1x15xi1>
    %alloc_19 = memref.alloc() : memref<15x1xi1>
    %16 = tensor.empty() : tensor<8x15x9xi32>
    %17 = linalg.copy ins(%1 : tensor<8x15x9xi32>) outs(%16 : tensor<8x15x9xi32>) -> tensor<8x15x9xi32>
    %alloc_20 = memref.alloc() : memref<1x15xi32>
    linalg.transpose ins(%alloc_15 : memref<15x1xi32>) outs(%alloc_20 : memref<1x15xi32>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<8xf32>
    %reduced = linalg.reduce ins(%5 : tensor<8x15x9xf32>) outs(%18 : tensor<8xf32>) dimensions = [1, 2] 
      (%in: f32, %init: f32) {
        %273 = index.maxs %c12, %c0
        %274 = math.log2 %2 : tensor<15x1xf32>
        %275 = math.powf %15, %15 : tensor<15x1xf16>
        %276 = math.absf %6 : tensor<8x1x15xf16>
        %277 = vector.broadcast %c1069903657_i32 : i32 to vector<15x1xi32>
        %278 = vector.broadcast %cst_1 : f32 to vector<8x15x9xf32>
        %279 = vector.fma %278, %278, %278 : vector<8x15x9xf32>
        %280 = index.ceildivs %c8, %c2
        %281 = vector.broadcast %in : f32 to vector<8x9xf32>
        %282 = vector.multi_reduction <maxf>, %279, %281 [1] : vector<8x15x9xf32> to vector<8x9xf32>
        %283 = arith.maxsi %c1908153259_i64, %c564459480_i64 : i64
        %cst_41 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_41 : f32
      }
    scf.parallel (%arg1, %arg2) = (%c8, %c4) to (%c8, %c10) step (%c13, %c15) {
      %cst_41 = arith.constant 5.894400e+04 : f16
      %collapsed_42 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<9x15x8xi16> into tensor<135x8xi16>
      %273 = math.absf %10 : tensor<8x1x15xf32>
      %274 = vector.broadcast %true : i1 to vector<1xi1>
      %275 = vector.broadcast %true : i1 to vector<1xi1>
      %276 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %274, %275, %true : vector<1xi1>, vector<1xi1> into i1
      %collapsed_43 = tensor.collapse_shape %collapsed_42 [[0, 1]] : tensor<135x8xi16> into tensor<1080xi16>
      %alloc_44 = memref.alloc() : memref<1x9xi64>
      %277 = tensor.empty() : tensor<15x9xi64>
      %278 = linalg.matmul ins(%14, %alloc_44 : tensor<15x1xi64>, memref<1x9xi64>) outs(%277 : tensor<15x9xi64>) -> tensor<15x9xi64>
      %279 = math.tanh %cst : f32
      vector.print %274 : vector<1xi1>
      %280 = math.copysign %2, %2 : tensor<15x1xf32>
      %281 = vector.insertelement %true, %274[%c11 : index] : vector<1xi1>
      %282 = math.absf %6 : tensor<8x1x15xf16>
      %283 = math.copysign %18, %18 : tensor<8xf32>
      %284 = index.mul %c8, %arg2
      %285 = math.cos %10 : tensor<8x1x15xf32>
      %286 = vector.reduction <maxsi>, %274 : vector<1xi1> into i1
      %287 = arith.addf %cst_2, %cst : f32
      scf.yield
    }
    %19 = affine.vector_load %alloc[%c2, %c5] : memref<15x1xi64>, vector<1xi64>
    affine.vector_store %19, %alloc[%c12, %c3] : memref<15x1xi64>, vector<1xi64>
    %20 = tensor.empty() : tensor<8xf32>
    %21 = tensor.empty() : tensor<f32>
    %22 = linalg.dot ins(%18, %20 : tensor<8xf32>, tensor<8xf32>) outs(%21 : tensor<f32>) -> tensor<f32>
    %23 = math.powf %22, %22 : tensor<f32>
    %24 = math.tan %6 : tensor<8x1x15xf16>
    %25 = math.fma %5, %5, %5 : tensor<8x15x9xf32>
    %26 = arith.maxui %c1647736072_i64, %c1908153259_i64 : i64
    %27 = math.exp2 %6 : tensor<8x1x15xf16>
    %28 = arith.shli %true, %false : i1
    %29 = arith.shli %c27427_i16, %c23984_i16 : i16
    %30 = arith.maxf %cst_2, %cst : f32
    %31 = arith.addf %cst_2, %cst_2 : f32
    %32 = math.rsqrt %5 : tensor<8x15x9xf32>
    %33 = math.absf %5 : tensor<8x15x9xf32>
    scf.execute_region {
      %expanded = tensor.expand_shape %14 [[0], [1, 2]] : tensor<15x1xi64> into tensor<15x1x1xi64>
      %273 = arith.shrui %c1647736072_i64, %c1647736072_i64 : i64
      %274 = vector.shuffle %19, %19 [0] : vector<1xi64>, vector<1xi64>
      %275 = math.round %6 : tensor<8x1x15xf16>
      %276 = arith.maxui %c23984_i16, %c23984_i16 : i16
      %277 = math.exp2 %12 : tensor<8x1x15xf32>
      %278 = vector.create_mask %c14, %c1 : vector<15x1xi1>
      %279 = arith.minsi %c1069903657_i32, %c606377018_i32 : i32
      %280 = affine.min affine_map<(d0, d1, d2) -> (d1 * 32, d0, 0)>(%c7, %c3, %c4)
      %inserted_41 = tensor.insert %cst_2 into %12[%c4, %c0, %c13] : tensor<8x1x15xf32>
      %alloc_42 = memref.alloc() : memref<8x15x9xf16>
      %281 = bufferization.to_memref %10 : memref<8x1x15xf32>
      %282 = scf.if %true -> (i16) {
        %286 = arith.cmpi ule, %c1647736072_i64, %c1284375718_i64 : i64
        %alloc_43 = memref.alloc() : memref<15x1xi64>
        %287 = math.powf %cst, %cst_1 : f32
        memref.store %c23984_i16, %alloc_11[%c7, %c0] : memref<15x1xi16>
        %288 = vector.broadcast %true : i1 to vector<8x15x9xi1>
        %289 = math.sqrt %11 : tensor<8x15x9xf16>
        %290 = tensor.empty() : tensor<1x15xf16>
        %291 = tensor.empty() : tensor<15x15xf16>
        %292 = linalg.matmul ins(%15, %290 : tensor<15x1xf16>, tensor<1x15xf16>) outs(%291 : tensor<15x15xf16>) -> tensor<15x15xf16>
        %293 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 + 64) ceildiv 2, d1)>(%c13, %c1, %c6, %c13)
        scf.yield %c23984_i16 : i16
      } else {
        %286 = vector.broadcast %false : i1 to vector<1x1xi1>
        %287 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %278, %278, %286 : vector<15x1xi1>, vector<15x1xi1> into vector<1x1xi1>
        %288 = arith.muli %c1069903657_i32, %c1069903657_i32 : i32
        %alloc_43 = memref.alloc() : memref<9x15x8xi64>
        %289 = vector.broadcast %c1908153259_i64 : i64 to vector<8x1x15xi64>
        %290 = vector.broadcast %true : i1 to vector<8x1x15xi1>
        %291 = vector.broadcast %c606377018_i32 : i32 to vector<8x1x15xi32>
        %292 = vector.gather %alloc_43[%c6, %c11, %c8] [%291], %290, %289 : memref<9x15x8xi64>, vector<8x1x15xi32>, vector<8x1x15xi1>, vector<8x1x15xi64> into vector<8x1x15xi64>
        %293 = math.absf %21 : tensor<f32>
        %294 = arith.maxui %c1908153259_i64, %c564459480_i64 : i64
        %295 = math.absf %10 : tensor<8x1x15xf32>
        %296 = vector.matrix_multiply %19, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
        %297 = vector.matrix_multiply %296, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
        scf.yield %c27427_i16 : i16
      }
      %283 = arith.shrsi %c27427_i16, %c27427_i16 : i16
      %284 = math.log10 %12 : tensor<8x1x15xf32>
      %285 = arith.ori %c1647736072_i64, %c564459480_i64 : i64
      scf.yield
    }
    %34 = arith.shrsi %c23984_i16, %c23984_i16 : i16
    %35 = vector.matrix_multiply %19, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
    memref.store %c1647736072_i64, %alloc[%c13, %c0] : memref<15x1xi64>
    %36 = vector.bitcast %35 : vector<1xi64> to vector<1xi64>
    %37 = math.powf %cst_2, %cst_1 : f32
    %38 = tensor.empty() : tensor<9x15x8xi16>
    %39 = vector.create_mask %c15, %c11, %c10 : vector<8x15x9xi1>
    %40 = vector.bitcast %36 : vector<1xi64> to vector<1xi64>
    %generated = tensor.generate %c14, %c7 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %273 = vector.broadcast %c606377018_i32 : i32 to vector<8xi32>
      %274 = vector.transfer_write %273, %17[%c8, %c14, %c7] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<8xi32>, tensor<8x15x9xi32>
      %275 = math.log10 %cst : f32
      %276 = arith.maxf %cst_2, %cst_2 : f32
      %277 = vector.broadcast %cst_3 : f16 to vector<9x15x8xf16>
      tensor.yield %c1908153259_i64 : i64
    } : tensor<?x?x9xi64>
    %41 = math.rsqrt %2 : tensor<15x1xf32>
    %42 = arith.subi %c27427_i16, %c27427_i16 : i16
    %43 = memref.load %alloc_19[%c12, %c0] : memref<15x1xi1>
    %44 = math.log1p %cst_0 : f16
    %45 = vector.broadcast %c1647736072_i64 : i64 to vector<8x1x15xi64>
    %46 = vector.broadcast %false : i1 to vector<8x1x15xi1>
    %47 = vector.broadcast %c606377018_i32 : i32 to vector<8x1x15xi32>
    %48 = vector.gather %7[%c4, %c6, %c10] [%47], %46, %45 : tensor<8x15x9xi64>, vector<8x1x15xi32>, vector<8x1x15xi1>, vector<8x1x15xi64> into vector<8x1x15xi64>
    %49 = math.round %10 : tensor<8x1x15xf32>
    %50 = arith.divf %cst_1, %cst_2 : f32
    %51 = arith.shli %c27427_i16, %c27427_i16 : i16
    %52 = vector.reduction <minsi>, %36 : vector<1xi64> into i64
    %53 = vector.insertelement %c564459480_i64, %35[%c1 : index] : vector<1xi64>
    %54 = math.atan %21 : tensor<f32>
    %55 = math.atan2 %22, %22 : tensor<f32>
    %56 = math.log2 %11 : tensor<8x15x9xf16>
    %57 = arith.negf %cst_4 : f16
    %58 = math.roundeven %cst : f32
    %59 = tensor.empty() : tensor<9x15x8xf16>
    %60 = vector.broadcast %cst_0 : f16 to vector<15x1xf16>
    %61 = vector.broadcast %true : i1 to vector<15x1xi1>
    %62 = vector.broadcast %c606377018_i32 : i32 to vector<15x1xi32>
    %63 = vector.gather %59[%c5, %c13, %c6] [%62], %61, %60 : tensor<9x15x8xf16>, vector<15x1xi32>, vector<15x1xi1>, vector<15x1xf16> into vector<15x1xf16>
    %64 = math.atan %15 : tensor<15x1xf16>
    %65 = arith.minsi %c1284375718_i64, %c1647736072_i64 : i64
    %66 = math.fma %10, %10, %12 : tensor<8x1x15xf32>
    %67 = arith.addf %cst_0, %cst_0 : f16
    %68 = tensor.empty() : tensor<8x15x9xi32>
    %mapped = linalg.map ins(%17 : tensor<8x15x9xi32>) outs(%68 : tensor<8x15x9xi32>)
      (%in: i32) {
        %273 = bufferization.clone %alloc_16 : memref<15x1xi1> to memref<15x1xi1>
        %274 = index.add %c12, %c10
        %275 = math.absi %c1069903657_i32 : i32
        %276 = math.tan %5 : tensor<8x15x9xf32>
        %277 = memref.atomic_rmw maxf %cst_2, %alloc_5[%c7, %c8, %c3] : (f32, memref<8x15x9xf32>) -> f32
        %278 = vector.splat %c606377018_i32 : vector<9x15x8xi32>
        %279 = index.add %c6, %c4
        %280 = arith.shrsi %c27427_i16, %c23984_i16 : i16
        affine.for %arg1 = 0 to 46 {
        }
        %281 = arith.ori %true, %false : i1
        %282 = math.powf %cst_4, %cst_0 : f16
        %cst_41 = arith.constant 1.70526298E+9 : f32
        %283 = math.log1p %cst_0 : f16
        %284 = math.tanh %5 : tensor<8x15x9xf32>
        %285 = math.exp2 %2 : tensor<15x1xf32>
        %286 = tensor.empty() : tensor<15x1xi1>
        %287 = vector.broadcast %c564459480_i64 : i64 to vector<8x1xi64>
        %288 = vector.multi_reduction <mul>, %48, %287 [2] : vector<8x1x15xi64> to vector<8x1xi64>
        %289 = index.divu %c2, %c15
        %290 = math.exp %11 : tensor<8x15x9xf16>
        %291 = math.exp2 %10 : tensor<8x1x15xf32>
        %292 = math.powf %cst_2, %cst_2 : f32
        %293 = bufferization.to_tensor %alloc_19 : memref<15x1xi1>
        %294 = vector.reduction <xor>, %19 : vector<1xi64> into i64
        %295 = math.exp %6 : tensor<8x1x15xf16>
        %296 = scf.while (%arg1 = %48) : (vector<8x1x15xi64>) -> vector<8x1x15xi64> {
          %c366612574_i64 = arith.constant 366612574 : i64
          %303 = math.absi %13 : tensor<15x1xi64>
          %304 = tensor.empty(%c5, %c3) : tensor<?x15x?xi1>
          %305 = index.floordivs %c11, %c14
          %306 = arith.subi %c1069903657_i32, %c606377018_i32 : i32
          vector.print %36 : vector<1xi64>
          %307 = index.sub %c6, %c9
          %308 = affine.apply affine_map<(d0, d1) -> (((d1 - d0 + 4) * 2) floordiv 32 + 128)>(%c5, %305)
          scf.condition(%false) %48 : vector<8x1x15xi64>
        } do {
        ^bb0(%arg1: vector<8x1x15xi64>):
          %cast_42 = tensor.cast %12 : tensor<8x1x15xf32> to tensor<?x?x?xf32>
          %303 = tensor.empty(%c1, %c11) : tensor<?x15x?xf16>
          %304 = index.maxs %c0, %279
          %305 = math.powf %12, %12 : tensor<8x1x15xf32>
          %306 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %35, %35, %c564459480_i64 : vector<1xi64>, vector<1xi64> into i64
          %307 = arith.addf %cst_0, %cst_4 : f16
          %308 = index.add %c6, %c2
          %309 = bufferization.to_tensor %alloc_9 : memref<9x15x8xf16>
          %310 = arith.remsi %c1284375718_i64, %c1647736072_i64 : i64
          %311 = math.powf %21, %22 : tensor<f32>
          %312 = index.sub %c7, %c3
          %313 = vector.matrix_multiply %35, %36 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
          %314 = math.sqrt %6 : tensor<8x1x15xf16>
          %315 = arith.ori %in, %c606377018_i32 : i32
          %316 = index.sub %c5, %c4
          %317 = arith.addf %cst_3, %cst_3 : f16
          scf.yield %45 : vector<8x1x15xi64>
        }
        %297 = arith.muli %c1284375718_i64, %c1908153259_i64 : i64
        %298 = arith.addi %c606377018_i32, %c1069903657_i32 : i32
        %299 = arith.ori %c564459480_i64, %c1284375718_i64 : i64
        %300 = arith.divsi %true, %true : i1
        %301 = arith.maxf %cst_2, %cst_2 : f32
        affine.for %arg1 = 0 to 36 {
        }
        %302 = math.absi %1 : tensor<8x15x9xi32>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    %69 = vector.broadcast %cst_1 : f32 to vector<15x1xf32>
    %70 = vector.flat_transpose %35 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
    %alloc_21 = memref.alloc() : memref<8x1x15xi64>
    %71 = arith.addf %cst_1, %cst : f32
    %72 = vector.broadcast %c1284375718_i64 : i64 to vector<15x1xi64>
    %73 = vector.gather %alloc_6[%c8, %c2, %c8] [%62], %61, %72 : memref<8x1x15xi64>, vector<15x1xi32>, vector<15x1xi1>, vector<15x1xi64> into vector<15x1xi64>
    %74 = math.atan2 %6, %6 : tensor<8x1x15xf16>
    %75 = memref.load %alloc_14[%c7, %c3, %c7] : memref<9x15x8xf32>
    %from_elements = tensor.from_elements %false, %true, %false, %true, %true, %true, %false, %false, %false, %true, %false, %true, %true, %false, %true, %false, %true, %true, %false, %true, %true, %false, %true, %true, %true, %false, %false, %false, %false, %true, %false, %true, %false, %false, %false, %true, %false, %false, %true, %true, %true, %false, %false, %true, %false, %false, %false, %true, %false, %true, %true, %false, %true, %false, %true, %false, %false, %false, %true, %true, %false, %false, %true, %false, %true, %true, %false, %true, %false, %true, %true, %true, %true, %false, %true, %false, %true, %true, %true, %true, %true, %false, %true, %false, %true, %true, %false, %true, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %true, %true, %true, %true, %false, %false, %false, %false, %false, %true, %false, %true, %true, %false, %true, %true, %true, %true, %true, %true, %true : tensor<8x1x15xi1>
    %76 = math.log2 %22 : tensor<f32>
    %77 = arith.subi %c1069903657_i32, %c1069903657_i32 : i32
    %78 = arith.muli %c27427_i16, %c23984_i16 : i16
    %79 = arith.muli %c1284375718_i64, %c564459480_i64 : i64
    %80 = vector.shuffle %70, %70 [0] : vector<1xi64>, vector<1xi64>
    bufferization.dealloc_tensor %6 : tensor<8x1x15xf16>
    %81 = memref.load %alloc_14[%c1, %c3, %c0] : memref<9x15x8xf32>
    %alloc_22 = memref.alloc() : memref<15x1xf16>
    %82 = vector.gather %alloc_22[%c8, %c5] [%62], %61, %60 : memref<15x1xf16>, vector<15x1xi32>, vector<15x1xi1>, vector<15x1xf16> into vector<15x1xf16>
    %83 = math.log10 %11 : tensor<8x15x9xf16>
    %84 = arith.shrui %c23984_i16, %c27427_i16 : i16
    %85 = arith.addf %cst, %cst : f32
    %86 = arith.addf %cst_3, %cst_4 : f16
    %87 = math.absf %21 : tensor<f32>
    %88 = vector.bitcast %48 : vector<8x1x15xi64> to vector<8x1x15xi64>
    %89 = affine.apply affine_map<(d0, d1) -> (d1 + 16)>(%c1, %c5)
    %90 = arith.minui %c606377018_i32, %c1069903657_i32 : i32
    %91 = vector.reduction <maxui>, %70 : vector<1xi64> into i64
    %92 = math.powf %15, %15 : tensor<15x1xf16>
    %93 = affine.apply affine_map<(d0) -> (-d0 + 32)>(%c2)
    %true_23 = index.bool.constant true
    %94 = vector.create_mask %c0, %c9, %c8 : vector<8x1x15xi1>
    %95 = vector.shuffle %60, %63 [1, 3, 5, 6, 10, 11, 16, 17, 18, 21, 25, 28] : vector<15x1xf16>, vector<15x1xf16>
    %96 = math.tan %20 : tensor<8xf32>
    %97 = affine.load %alloc[%c8, %c12] : memref<15x1xi64>
    %98 = vector.multi_reduction <xor>, %40, %97 [0] : vector<1xi64> to i64
    %99 = math.floor %21 : tensor<f32>
    %100 = math.tanh %cst : f32
    %alloc_24 = memref.alloc() : memref<1x15xi16>
    %101 = tensor.empty() : tensor<15xi16>
    %102 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_24, %101 : memref<1x15xi16>, tensor<15xi16>) outs(%9 : tensor<8x1x15xi16>) {
    ^bb0(%in: i16, %in_41: i16, %out: i16):
      %273 = vector.load %alloc_22[%c7, %c0] : memref<15x1xf16>, vector<8x1x15xf16>
      %274 = vector.multi_reduction <xor>, %35, %40 [] : vector<1xi64> to vector<1xi64>
      %275 = arith.divsi %c1647736072_i64, %c1647736072_i64 : i64
      %276 = arith.cmpf ueq, %cst_3, %cst_3 : f16
      %277 = index.maxs %c4, %c4
      %278 = index.add %c15, %c10
      %279 = arith.addi %in_41, %out : i16
      %280 = arith.muli %c1908153259_i64, %c1647736072_i64 : i64
      %281 = index.divu %c1, %c2
      %282 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d0 - 8)>(%c11, %c6, %c1, %c6)
      %283 = index.castu %true_23 : i1 to index
      %284 = vector.create_mask %c3, %283 : vector<15x1xi1>
      %285 = tensor.empty() : tensor<1x8xi64>
      %286 = tensor.empty() : tensor<15x8xi64>
      %287 = linalg.matmul ins(%13, %285 : tensor<15x1xi64>, tensor<1x8xi64>) outs(%286 : tensor<15x8xi64>) -> tensor<15x8xi64>
      %288 = index.divu %c14, %277
      %289 = bufferization.to_memref %9 : memref<8x1x15xi16>
      %290 = vector.flat_transpose %19 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
      %291 = math.tanh %12 : tensor<8x1x15xf32>
      bufferization.dealloc_tensor %14 : tensor<15x1xi64>
      %292 = math.exp2 %20 : tensor<8xf32>
      %293 = vector.shuffle %63, %82 [0, 3, 4, 5, 8, 9, 10, 11, 12, 13, 15, 17, 18, 22, 24, 26] : vector<15x1xf16>, vector<15x1xf16>
      %294 = math.log1p %18 : tensor<8xf32>
      %295 = vector.broadcast %true : i1 to vector<8x15x9xi1>
      %296 = math.cos %10 : tensor<8x1x15xf32>
      %alloc_42 = memref.alloc() : memref<1x9xf32>
      %297 = tensor.empty() : tensor<15x9xf32>
      %298 = linalg.matmul ins(%2, %alloc_42 : tensor<15x1xf32>, memref<1x9xf32>) outs(%297 : tensor<15x9xf32>) -> tensor<15x9xf32>
      %299 = arith.divui %true, %true_23 : i1
      %300 = arith.addi %c27427_i16, %c27427_i16 : i16
      %301 = vector.broadcast %c1647736072_i64 : i64 to vector<8x1x15xi64>
      %302 = vector.shuffle %69, %69 [3, 4, 6, 10, 14, 17, 24, 28, 29] : vector<15x1xf32>, vector<15x1xf32>
      %303 = vector.extract_strided_slice %301 {offsets = [3], sizes = [3], strides = [1]} : vector<8x1x15xi64> to vector<3x1x15xi64>
      %304 = math.absf %cst_0 : f16
      %alloc_43 = memref.alloc() : memref<1x15xi64>
      %305 = tensor.empty() : tensor<15x15xi64>
      %306 = linalg.matmul ins(%14, %alloc_43 : tensor<15x1xi64>, memref<1x15xi64>) outs(%305 : tensor<15x15xi64>) -> tensor<15x15xi64>
      %307 = vector.shuffle %94, %94 [1, 3, 5, 10, 12, 13, 14] : vector<8x1x15xi1>, vector<8x1x15xi1>
      linalg.yield %c27427_i16 : i16
    } -> tensor<8x1x15xi16>
    %103 = memref.alloca_scope  -> (memref<8x15x9xi32>) {
      %273 = vector.broadcast %cst_0 : f16 to vector<1x1xf16>
      %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %63, %82, %273 : vector<15x1xf16>, vector<15x1xf16> into vector<1x1xf16>
      %275 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d0 - 8)>(%c10, %c4, %c13, %89)
      %c-32066_i16 = arith.constant -32066 : i16
      %cast_41 = tensor.cast %11 : tensor<8x15x9xf16> to tensor<?x?x?xf16>
      %276 = math.floor %20 : tensor<8xf32>
      %277 = bufferization.to_memref %18 : memref<8xf32>
      %alloc_42 = memref.alloc() : memref<9x15x8xf16>
      %278 = bufferization.to_memref %5 : memref<8x15x9xf32>
      %279 = math.absf %11 : tensor<8x15x9xf16>
      %280 = bufferization.to_tensor %alloc_7 : memref<8x1x15xf32>
      %expanded = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<8x15x9xf32> into tensor<8x15x9x1xf32>
      %281 = arith.divsi %c1647736072_i64, %c1908153259_i64 : i64
      %282 = math.log2 %11 : tensor<8x15x9xf16>
      %283 = arith.xori %98, %98 : i64
      %284 = index.divu %c14, %275
      %285 = arith.shli %c564459480_i64, %c1647736072_i64 : i64
      %286 = vector.broadcast %97 : i64 to vector<1x1xi64>
      %287 = vector.outerproduct %35, %19, %286 {kind = #vector.kind<minsi>} : vector<1xi64>, vector<1xi64>
      %288 = math.ctpop %7 : tensor<8x15x9xi64>
      bufferization.dealloc_tensor %13 : tensor<15x1xi64>
      %289 = arith.minsi %true_23, %false : i1
      %290 = index.divu %284, %c7
      %291 = math.roundeven %10 : tensor<8x1x15xf32>
      %292 = vector.broadcast %cst_4 : f16 to vector<8x15x9xf16>
      %293 = math.log1p %11 : tensor<8x15x9xf16>
      affine.store %cst_3, %alloc_22[%c8, %c3] : memref<15x1xf16>
      vector.print %63 : vector<15x1xf16>
      %294 = math.log %cst : f32
      affine.store %true_23, %alloc_19[%c0, %c10] : memref<15x1xi1>
      %295 = arith.remsi %c1908153259_i64, %c1647736072_i64 : i64
      %296 = arith.divf %cst, %cst_1 : f32
      %297 = vector.broadcast %c27427_i16 : i16 to vector<15x1xi16>
      %298 = vector.extract %82[11] : vector<15x1xf16>
      %alloc_43 = memref.alloc() : memref<8x15x9xi32>
      memref.alloca_scope.return %alloc_43 : memref<8x15x9xi32>
    }
    %104 = affine.if affine_set<(d0, d1, d2, d3) : (d3 floordiv 16 == 0, d1 >= 0, d0 >= 0)>(%c13, %c11, %c3, %c7) -> f32 {
      %273 = affine.for %arg1 = 0 to 5 iter_args(%arg2 = %from_elements) -> (tensor<8x1x15xi1>) {
        affine.yield %arg2 : tensor<8x1x15xi1>
      }
      %274 = index.sub %c9, %c10
      %275 = affine.apply affine_map<(d0) -> (-d0 + 32)>(%c2)
      %276 = arith.subi %true_23, %true_23 : i1
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_41 = arith.constant 0 : i32
      %277 = vector.transfer_read %103[%c10, %274, %c2], %c0_i32_41 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : memref<8x15x9xi32>, vector<9xi32>
      %278 = math.ipowi %0, %0 : tensor<9x15x8xi32>
      %collapsed_42 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<8x1x15xf32> into tensor<8x15xf32>
      %279 = arith.maxui %c27427_i16, %c27427_i16 : i16
      affine.yield %cst_2 : f32
    } else {
      %273 = vector.broadcast %97 : i64 to vector<15xi64>
      %274 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<and>} %35, %72, %273 : vector<1xi64>, vector<15x1xi64> into vector<15xi64>
      %275 = bufferization.clone %alloc_22 : memref<15x1xf16> to memref<15x1xf16>
      %276 = arith.shli %98, %c1284375718_i64 : i64
      %277 = affine.min affine_map<(d0, d1, d2) -> ((d0 + d2) ceildiv 8, d1, d2 + d2 + d0, d2 + d2 + d0)>(%c5, %c10, %c7)
      %278 = math.cos %18 : tensor<8xf32>
      %279 = vector.flat_transpose %40 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
      %280 = arith.muli %false, %true : i1
      %281 = scf.while (%arg1 = %alloc_18) : (memref<8x1x15xi1>) -> memref<8x1x15xi1> {
        %282 = math.fma %11, %11, %11 : tensor<8x15x9xf16>
        %283 = math.exp %cst_4 : f16
        %284 = math.cos %20 : tensor<8xf32>
        %285 = arith.subi %c1284375718_i64, %98 : i64
        %286 = arith.maxsi %true, %false : i1
        %287 = arith.shli %98, %c1908153259_i64 : i64
        %288 = vector.load %alloc_9[%c5, %c12, %c0] : memref<9x15x8xf16>, vector<8x1x15xf16>
        %289 = vector.matrix_multiply %40, %70 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
        scf.condition(%true_23) %alloc_18 : memref<8x1x15xi1>
      } do {
      ^bb0(%arg1: memref<8x1x15xi1>):
        %282 = math.fma %20, %18, %18 : tensor<8xf32>
        %283 = vector.load %alloc_12[%c5, %c14, %c6] : memref<9x15x8xi16>, vector<8x1x15xi16>
        vector.print %46 : vector<8x1x15xi1>
        %284 = math.atan2 %cst_4, %cst_0 : f16
        %285 = index.casts %c5 : index to i32
        %286 = index.casts %c606377018_i32 : i32 to index
        %287 = bufferization.clone %alloc_19 : memref<15x1xi1> to memref<15x1xi1>
        %288 = vector.splat %cst_3 : vector<8x1x15xf16>
        %289 = arith.shrsi %c1908153259_i64, %c564459480_i64 : i64
        %290 = index.divu %c6, %c14
        %291 = vector.load %alloc_12[%c3, %c9, %c6] : memref<9x15x8xi16>, vector<9x15x8xi16>
        %expanded = tensor.expand_shape %18 [[0, 1]] : tensor<8xf32> into tensor<8x1xf32>
        %292 = bufferization.clone %alloc_20 : memref<1x15xi32> to memref<1x15xi32>
        %293 = vector.create_mask %c0, %c9, %c11 : vector<8x15x9xi1>
        %294 = math.log1p %59 : tensor<9x15x8xf16>
        %295 = math.absf %11 : tensor<8x15x9xf16>
        scf.yield %alloc_13 : memref<8x1x15xi1>
      }
      affine.yield %cst : f32
    }
    %105 = math.fma %18, %20, %18 : tensor<8xf32>
    %106 = math.fpowi %5, %1 : tensor<8x15x9xf32>, tensor<8x15x9xi32>
    %107 = arith.cmpi ule, %97, %c1647736072_i64 : i64
    %cast = tensor.cast %11 : tensor<8x15x9xf16> to tensor<?x?x?xf16>
    %108 = math.absi %c564459480_i64 : i64
    affine.for %arg1 = 0 to 54 {
    }
    %109 = arith.cmpf ord, %cst_0, %cst_4 : f16
    %110 = vector.shuffle %60, %82 [0, 3, 4, 5, 9, 11, 12, 13, 16, 17, 18, 20, 22, 24, 25, 26, 27, 29] : vector<15x1xf16>, vector<15x1xf16>
    %111 = arith.divsi %c23984_i16, %c23984_i16 : i16
    %112 = bufferization.clone %alloc_15 : memref<15x1xi32> to memref<15x1xi32>
    %113 = memref.alloca_scope  -> (memref<15x1xi1>) {
      %273 = math.powf %cst_4, %cst_0 : f16
      %274 = index.casts %98 : i64 to index
      %true_41 = arith.constant true
      %false_42 = arith.constant false
      %275 = vector.transfer_read %alloc_8[%c14, %c10], %false_42 {permutation_map = affine_map<(d0, d1) -> (d0)>} : memref<15x1xi1>, vector<1xi1>
      %276 = arith.shli %97, %c1908153259_i64 : i64
      %277 = math.atan2 %reduced, %reduced : tensor<8xf32>
      %278 = math.fpowi %cst_0, %c1069903657_i32 : f16, i32
      %279 = tensor.empty() : tensor<8x1x15xi1>
      %false_43 = index.bool.constant false
      %280 = math.log2 %cst_4 : f16
      %281 = math.fma %cst_2, %cst, %cst_1 : f32
      %282 = vector.splat %97 : vector<9x15x8xi64>
      %283 = memref.alloca_scope  -> (memref<9x15x8xi1>) {
        %alloc_44 = memref.alloc() : memref<1x9xf32>
        %304 = tensor.empty() : tensor<15x9xf32>
        %305 = linalg.matmul ins(%2, %alloc_44 : tensor<15x1xf32>, memref<1x9xf32>) outs(%304 : tensor<15x9xf32>) -> tensor<15x9xf32>
        %306 = math.log1p %2 : tensor<15x1xf32>
        %307 = math.exp %10 : tensor<8x1x15xf32>
        %c1093934280_i64 = arith.constant 1093934280 : i64
        %alloca_45 = memref.alloca() : memref<8x1x15xi32>
        %308 = index.divu %c12, %c6
        %309 = arith.ceildivsi %false_43, %true_23 : i1
        %310 = vector.insertelement %c1647736072_i64, %36[%c10 : index] : vector<1xi64>
        %311 = index.sizeof
        %312 = math.round %21 : tensor<f32>
        %313 = tensor.empty() : tensor<1x15xf16>
        %314 = tensor.empty() : tensor<15x15xf16>
        %315 = linalg.matmul ins(%15, %313 : tensor<15x1xf16>, tensor<1x15xf16>) outs(%314 : tensor<15x15xf16>) -> tensor<15x15xf16>
        %316 = tensor.empty() : tensor<1x8xf16>
        %317 = tensor.empty() : tensor<15x8xf16>
        %318 = linalg.matmul ins(%15, %316 : tensor<15x1xf16>, tensor<1x8xf16>) outs(%317 : tensor<15x8xf16>) -> tensor<15x8xf16>
        %319 = vector.create_mask %c12, %c2 : vector<15x1xi1>
        %320 = arith.addf %cst, %cst : f32
        %321 = bufferization.clone %alloc_8 : memref<15x1xi1> to memref<15x1xi1>
        %322 = index.casts %c0 : index to i32
        %323 = math.log2 %314 : tensor<15x15xf16>
        %324 = arith.shrsi %true_23, %true_23 : i1
        %325 = math.exp %304 : tensor<15x9xf32>
        %326 = math.log1p %11 : tensor<8x15x9xf16>
        %alloc_46 = memref.alloc() : memref<15x1xi64>
        memref.copy %alloc, %alloc_46 : memref<15x1xi64> to memref<15x1xi64>
        %327 = index.casts %c1069903657_i32 : i32 to index
        %328 = index.mul %c13, %c0
        %329 = bufferization.clone %alloc_22 : memref<15x1xf16> to memref<15x1xf16>
        %330 = bufferization.to_tensor %alloc_9 : memref<9x15x8xf16>
        %331 = vector.broadcast %c6 : index to vector<8xindex>
        %332 = vector.broadcast %true_23 : i1 to vector<8xi1>
        %333 = vector.broadcast %c1647736072_i64 : i64 to vector<8xi64>
        vector.scatter %alloc_6[%c4, %c0, %c2] [%331], %332, %333 : memref<8x1x15xi64>, vector<8xindex>, vector<8xi1>, vector<8xi64>
        %334 = vector.insertelement %c1284375718_i64, %36[%c13 : index] : vector<1xi64>
        %expanded = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<9x15x8xi32> into tensor<9x15x8x1xi32>
        %335 = vector.bitcast %47 : vector<8x1x15xi32> to vector<8x1x15xi32>
        %336 = vector.shuffle %19, %36 [0] : vector<1xi64>, vector<1xi64>
        %337 = bufferization.clone %alloc_20 : memref<1x15xi32> to memref<1x15xi32>
        %338 = arith.subi %c23984_i16, %c27427_i16 : i16
        %alloc_47 = memref.alloc() : memref<9x15x8xi1>
        memref.alloca_scope.return %alloc_47 : memref<9x15x8xi1>
      }
      %284 = arith.divsi %true, %true_23 : i1
      vector.print %73 : vector<15x1xi64>
      %285 = vector.insertelement %c564459480_i64, %70[%c5 : index] : vector<1xi64>
      %286 = vector.reduction <add>, %36 : vector<1xi64> into i64
      %287 = arith.shli %true, %true_41 : i1
      %288 = math.exp2 %cst_0 : f16
      %c1_i16 = arith.constant 1 : i16
      %c0_i16 = arith.constant 0 : i16
      %289 = vector.transfer_read %9[%89, %89, %c15], %c0_i16 : tensor<8x1x15xi16>, vector<i16>
      %290 = vector.transpose %40, [0] : vector<1xi64> to vector<1xi64>
      %c1_i32 = arith.constant 1 : i32
      %291 = vector.transfer_read %alloc_15[%c12, %274], %c1_i32 : memref<15x1xi32>, vector<i32>
      %292 = math.atan %cst_1 : f32
      %293 = arith.maxui %c1284375718_i64, %c1908153259_i64 : i64
      %294 = vector.extract %47[6, 0] : vector<8x1x15xi32>
      %295 = arith.shrui %c23984_i16, %c23984_i16 : i16
      %296 = bufferization.clone %alloc_18 : memref<8x1x15xi1> to memref<8x1x15xi1>
      %297 = vector.bitcast %48 : vector<8x1x15xi64> to vector<8x1x15xi64>
      %298 = vector.broadcast %cst_2 : f32 to vector<9x15x8xf32>
      %299 = vector.fma %298, %298, %298 : vector<9x15x8xf32>
      %300 = arith.addi %true_41, %true : i1
      %301 = math.log10 %cst_4 : f16
      %302 = arith.remf %cst_2, %cst_2 : f32
      %303 = index.floordivs %89, %89
      memref.alloca_scope.return %alloc_19 : memref<15x1xi1>
    }
    %114 = index.maxs %c11, %c2
    %115 = math.log2 %12 : tensor<8x1x15xf32>
    %116 = tensor.empty() : tensor<15x1xi32>
    %117 = vector.gather %116[%c1, %c15] [%47], %94, %47 : tensor<15x1xi32>, vector<8x1x15xi32>, vector<8x1x15xi1>, vector<8x1x15xi32> into vector<8x1x15xi32>
    %118 = math.round %2 : tensor<15x1xf32>
    %119 = bufferization.clone %alloc_5 : memref<8x15x9xf32> to memref<8x15x9xf32>
    %120 = vector.matrix_multiply %70, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
    %121 = math.fpowi %cst, %c606377018_i32 : f32, i32
    %collapsed = tensor.collapse_shape %from_elements [[0, 1], [2]] : tensor<8x1x15xi1> into tensor<8x15xi1>
    vector.print %46 : vector<8x1x15xi1>
    %122 = math.tanh %2 : tensor<15x1xf32>
    %123 = math.sqrt %20 : tensor<8xf32>
    %cast_25 = tensor.cast %6 : tensor<8x1x15xf16> to tensor<?x?x?xf16>
    %124 = math.round %12 : tensor<8x1x15xf32>
    memref.store %false, %alloc_16[%c14, %c0] : memref<15x1xi1>
    %125 = math.absi %true_23 : i1
    %126 = vector.create_mask %c14, %93, %89 : vector<9x15x8xi1>
    %127 = math.absi %38 : tensor<9x15x8xi16>
    %128 = arith.negf %cst : f32
    vector.print %47 : vector<8x1x15xi32>
    %129 = math.exp %cst_0 : f16
    %alloc_26 = memref.alloc() : memref<15x1xi16>
    %130 = math.log %cst_2 : f32
    %131 = index.add %c0, %c4
    %false_27 = arith.constant false
    %132 = vector.insertelement %c1647736072_i64, %40[%131 : index] : vector<1xi64>
    %133 = arith.remf %cst_3, %cst_0 : f16
    %134 = math.log10 %2 : tensor<15x1xf32>
    %135 = index.maxs %114, %c6
    %136 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3, %8 : tensor<9x15x8xi16>, tensor<8x15x9xi16>) outs(%3 : tensor<9x15x8xi16>) {
    ^bb0(%in: i16, %in_41: i16, %out: i16):
      %273 = affine.apply affine_map<(d0, d1) -> ((d0 - 128) * 2)>(%c8, %135)
      %274 = arith.divsi %c1908153259_i64, %c564459480_i64 : i64
      %275 = math.log10 %reduced : tensor<8xf32>
      %276 = math.rsqrt %6 : tensor<8x1x15xf16>
      %277 = arith.remsi %98, %c1908153259_i64 : i64
      %278 = math.copysign %2, %2 : tensor<15x1xf32>
      %alloc_42 = memref.alloc() : memref<8x15x9xf16>
      memref.tensor_store %11, %alloc_42 : memref<8x15x9xf16>
      %279 = vector.broadcast %in_41 : i16 to vector<15x1xi16>
      memref.store %true, %alloc_8[%c8, %c0] : memref<15x1xi1>
      %280 = index.floordivs %c8, %c8
      %281 = index.maxs %c7, %c0
      %282 = math.log1p %cst_2 : f32
      %283 = vector.transpose %72, [1, 0] : vector<15x1xi64> to vector<1x15xi64>
      %284 = affine.for %arg1 = 0 to 58 iter_args(%arg2 = %5) -> (tensor<8x15x9xf32>) {
        affine.yield %5 : tensor<8x15x9xf32>
      }
      %expanded = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<8x15x9xf16> into tensor<8x15x9x1xf16>
      %285 = arith.shli %c1284375718_i64, %c1284375718_i64 : i64
      %286 = arith.floordivsi %c1647736072_i64, %c564459480_i64 : i64
      %287 = arith.negf %cst_3 : f16
      %288 = arith.xori %98, %c1647736072_i64 : i64
      vector.print %40 : vector<1xi64>
      %289 = index.maxs %c1, %c2
      %290 = vector.matrix_multiply %35, %40 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      %291 = arith.addi %c1647736072_i64, %c1908153259_i64 : i64
      %292 = vector.create_mask %c2, %281, %c8 : vector<8x1x15xi1>
      %293 = vector.splat %c13 : vector<8x15x9xindex>
      %294 = vector.broadcast %c4 : index to vector<8xindex>
      %295 = vector.broadcast %true : i1 to vector<8xi1>
      %296 = vector.broadcast %c564459480_i64 : i64 to vector<8xi64>
      vector.scatter %alloc[%c9, %c0] [%294], %295, %296 : memref<15x1xi64>, vector<8xindex>, vector<8xi1>, vector<8xi64>
      %297 = vector.broadcast %131 : index to vector<15xindex>
      %298 = vector.broadcast %true : i1 to vector<15xi1>
      vector.scatter %alloc_16[%c13, %c0] [%297], %298, %298 : memref<15x1xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
      %alloc_43 = memref.alloc() : memref<1x9xf16>
      %299 = tensor.empty() : tensor<15x9xf16>
      %300 = linalg.matmul ins(%15, %alloc_43 : tensor<15x1xf16>, memref<1x9xf16>) outs(%299 : tensor<15x9xf16>) -> tensor<15x9xf16>
      %301 = index.casts %c9 : index to i32
      %302 = vector.extract %45[6] : vector<8x1x15xi64>
      %303 = tensor.empty(%c13, %c3) : tensor<8x?x?xi32>
      %304 = bufferization.clone %103 : memref<8x15x9xi32> to memref<8x15x9xi32>
      linalg.yield %c23984_i16 : i16
    } -> tensor<9x15x8xi16>
    %137 = index.castu %c4 : index to i32
    %138 = vector.create_mask %c6, %c15, %c0 : vector<8x1x15xi1>
    %139 = affine.if affine_set<(d0, d1, d2, d3) : (-((d1 + d2) mod 32) == 0, d1 - d0 == 0, d2 * 2 >= 0, d3 mod 32 == 0)>(%c7, %c4, %c8, %c0) -> memref<8x1x15xi1> {
      %273 = math.copysign %2, %2 : tensor<15x1xf32>
      %274 = math.absf %5 : tensor<8x15x9xf32>
      %275 = arith.addi %true, %true : i1
      %276 = math.rsqrt %cst_4 : f16
      %277 = arith.xori %c1647736072_i64, %98 : i64
      %278 = arith.cmpf ogt, %cst_2, %cst_1 : f32
      %279 = affine.apply affine_map<(d0, d1) -> ((d0 - 128) * 2)>(%c2, %c4)
      %alloc_41 = memref.alloc() : memref<1xi16>
      %alloc_42 = memref.alloc() : memref<8xi16>
      %280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_41, %alloc_42 : memref<1xi16>, memref<8xi16>) outs(%9 : tensor<8x1x15xi16>) {
      ^bb0(%in: i16, %in_43: i16, %out: i16):
        bufferization.dealloc_tensor %generated : tensor<?x?x9xi64>
        %281 = bufferization.clone %alloc : memref<15x1xi64> to memref<15x1xi64>
        %282 = index.casts %c14 : index to i32
        %283 = vector.flat_transpose %36 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %284 = vector.reduction <and>, %40 : vector<1xi64> into i64
        %285 = affine.load %113[%c1, %c7] : memref<15x1xi1>
        %286 = index.divu %c11, %131
        %287 = math.powf %cst, %cst : f32
        %288 = arith.cmpf ogt, %cst_1, %cst_2 : f32
        %289 = bufferization.clone %alloc_20 : memref<1x15xi32> to memref<1x15xi32>
        %290 = math.powf %5, %5 : tensor<8x15x9xf32>
        %rank = tensor.rank %14 : tensor<15x1xi64>
        %291 = vector.broadcast %c2 : index to vector<15xindex>
        %292 = vector.broadcast %285 : i1 to vector<15xi1>
        %293 = vector.broadcast %cst_1 : f32 to vector<15xf32>
        vector.scatter %119[%c4, %c10, %c0] [%291], %292, %293 : memref<8x15x9xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
        %294 = memref.load %alloc_5[%c7, %c0, %c7] : memref<8x15x9xf32>
        %295 = arith.andi %c27427_i16, %out : i16
        %expanded = tensor.expand_shape %20 [[0, 1]] : tensor<8xf32> into tensor<8x1xf32>
        %296 = math.exp %6 : tensor<8x1x15xf16>
        %297 = arith.maxui %c1647736072_i64, %c1647736072_i64 : i64
        %298 = bufferization.to_tensor %alloc_7 : memref<8x1x15xf32>
        %299 = math.rsqrt %cst_1 : f32
        %300 = arith.shrsi %98, %c1908153259_i64 : i64
        %301 = bufferization.clone %112 : memref<15x1xi32> to memref<15x1xi32>
        %302 = vector.create_mask %c14, %c6, %c3 : vector<9x15x8xi1>
        %303 = vector.multi_reduction <maxui>, %40, %70 [] : vector<1xi64> to vector<1xi64>
        %304 = math.atan %cst : f32
        %false_44 = index.bool.constant false
        %305 = arith.shli %c27427_i16, %c27427_i16 : i16
        %306 = vector.broadcast %cst : f32 to vector<8x15x9xf32>
        %307 = vector.fma %306, %306, %306 : vector<8x15x9xf32>
        %308 = vector.bitcast %73 : vector<15x1xi64> to vector<15x1xi64>
        %309 = vector.splat %c1069903657_i32 : vector<8x15x9xi32>
        %310 = math.absf %12 : tensor<8x1x15xf32>
        %311 = arith.cmpf uno, %cst, %cst_1 : f32
        linalg.yield %out : i16
      } -> tensor<8x1x15xi16>
      affine.yield %alloc_18 : memref<8x1x15xi1>
    } else {
      %273 = vector.broadcast %97 : i64 to vector<8x15x9xi64>
      %274 = math.absf %6 : tensor<8x1x15xf16>
      %275 = vector.load %alloc_9[%c4, %c1, %c4] : memref<9x15x8xf16>, vector<8x1x15xf16>
      %276 = index.add %c7, %c11
      memref.store %true, %alloc_16[%c13, %c0] : memref<15x1xi1>
      %generated_41 = tensor.generate %131, %c11 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %279 = math.round %10 : tensor<8x1x15xf32>
        %280 = vector.create_mask %c11, %c1, %c2 : vector<8x15x9xi1>
        %expanded = tensor.expand_shape %8 [[0], [1], [2, 3]] : tensor<8x15x9xi16> into tensor<8x15x9x1xi16>
        %281 = math.log10 %6 : tensor<8x1x15xf16>
        tensor.yield %cst_4 : f16
      } : tensor<?x?x9xf16>
      %277 = bufferization.clone %alloc_17 : memref<9x15x8xi32> to memref<9x15x8xi32>
      %278 = index.casts %c11 : index to i32
      affine.yield %alloc_18 : memref<8x1x15xi1>
    }
    %140 = index.casts %c0 : index to i32
    %141 = arith.shli %true_23, %false : i1
    %142 = arith.remsi %true, %true : i1
    scf.index_switch %93 
    case 1 {
      vector.print %61 : vector<15x1xi1>
      %273 = affine.for %arg1 = 0 to 65 iter_args(%arg2 = %c15) -> (index) {
        affine.yield %c12 : index
      }
      %274 = vector.splat %97 : vector<15x1xi64>
      %275 = arith.maxui %c27427_i16, %c23984_i16 : i16
      %276 = math.tan %10 : tensor<8x1x15xf32>
      %277 = math.copysign %12, %12 : tensor<8x1x15xf32>
      %278 = vector.broadcast %cst : f32 to vector<9x15x8xf32>
      %279 = vector.broadcast %c1069903657_i32 : i32 to vector<9x15x8xi32>
      %280 = vector.gather %10[%c2, %c11, %c12] [%279], %126, %278 : tensor<8x1x15xf32>, vector<9x15x8xi32>, vector<9x15x8xi1>, vector<9x15x8xf32> into vector<9x15x8xf32>
      %281 = index.divu %c15, %c14
      %282 = vector.broadcast %c1284375718_i64 : i64 to vector<1x1xi64>
      %283 = vector.outerproduct %120, %70, %282 {kind = #vector.kind<and>} : vector<1xi64>, vector<1xi64>
      %splat = tensor.splat %cst_1 : tensor<15x1xf32>
      %rank = tensor.rank %11 : tensor<8x15x9xf16>
      %284 = tensor.empty(%c9) : tensor<?x15x8xi64>
      %cast_41 = tensor.cast %59 : tensor<9x15x8xf16> to tensor<?x?x?xf16>
      %285 = vector.bitcast %73 : vector<15x1xi64> to vector<15x1xi64>
      %286 = arith.subi %false, %false : i1
      %287 = math.cos %2 : tensor<15x1xf32>
      scf.yield
    }
    case 2 {
      %273 = arith.shli %97, %c564459480_i64 : i64
      %274 = math.exp %10 : tensor<8x1x15xf32>
      %275 = vector.splat %c9 : vector<9x15x8xindex>
      %276 = vector.reduction <xor>, %19 : vector<1xi64> into i64
      %277 = arith.remsi %98, %c1647736072_i64 : i64
      %generated_41 = tensor.generate %c14 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %287 = arith.addf %cst_3, %cst_4 : f16
        vector.print %117 : vector<8x1x15xi32>
        memref.store %c606377018_i32, %alloc_15[%c12, %c0] : memref<15x1xi32>
        %288 = index.add %c0, %c6
        tensor.yield %cst : f32
      } : tensor<?x1x15xf32>
      %278 = vector.create_mask %c14, %c14 : vector<15x1xi1>
      %279 = vector.broadcast %cst_2 : f32 to vector<f32>
      vector.transfer_write %279, %119[%c12, %c8, %131] : vector<f32>, memref<8x15x9xf32>
      %280 = index.maxu %93, %c15
      %281 = affine.min affine_map<(d0, d1) -> (d1 + d0, -(d1 + 2))>(%c5, %c2)
      %generated_42 = tensor.generate %93, %c10 {
      ^bb0(%arg1: index, %arg2: index):
        %287 = tensor.empty() : tensor<15x1xi1>
        %288 = vector.broadcast %c1069903657_i32 : i32 to vector<9x15x8xi32>
        %289 = vector.gather %287[%280, %280] [%288], %126, %126 : tensor<15x1xi1>, vector<9x15x8xi32>, vector<9x15x8xi1>, vector<9x15x8xi1> into vector<9x15x8xi1>
        %290 = math.log10 %cst : f32
        %291 = arith.addf %cst_3, %cst_0 : f16
        %alloc_44 = memref.alloc() : memref<1x9xf16>
        %292 = tensor.empty() : tensor<15x9xf16>
        %293 = linalg.matmul ins(%15, %alloc_44 : tensor<15x1xf16>, memref<1x9xf16>) outs(%292 : tensor<15x9xf16>) -> tensor<15x9xf16>
        tensor.yield %c1908153259_i64 : i64
      } : tensor<?x?xi64>
      %282 = math.ctlz %c606377018_i32 : i32
      %alloc_43 = memref.alloc() : memref<8xi16>
      %283 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_43 : memref<8xi16>) outs(%3 : tensor<9x15x8xi16>) {
      ^bb0(%in: i16, %out: i16):
        %287 = arith.minf %cst_3, %cst_3 : f16
        %288 = math.exp %cst_2 : f32
        %289 = arith.shli %98, %c1284375718_i64 : i64
        %290 = math.log2 %11 : tensor<8x15x9xf16>
        %291 = index.floordivs %135, %c4
        %292 = math.exp2 %59 : tensor<9x15x8xf16>
        %293 = bufferization.to_tensor %112 : memref<15x1xi32>
        %294 = math.log2 %6 : tensor<8x1x15xf16>
        %295 = arith.shli %c1069903657_i32, %c606377018_i32 : i32
        %296 = math.exp2 %cst_1 : f32
        affine.store %98, %alloc[%c7, %c4] : memref<15x1xi64>
        %297 = tensor.empty() : tensor<8xi32>
        %298 = math.fpowi %reduced, %297 : tensor<8xf32>, tensor<8xi32>
        %299 = math.floor %2 : tensor<15x1xf32>
        %300 = vector.gather %1[%c1, %89, %135] [%117], %138, %117 : tensor<8x15x9xi32>, vector<8x1x15xi32>, vector<8x1x15xi1>, vector<8x1x15xi32> into vector<8x1x15xi32>
        %301 = vector.broadcast %c11 : index to vector<15xindex>
        %302 = vector.broadcast %true_23 : i1 to vector<15xi1>
        %303 = vector.broadcast %cst_3 : f16 to vector<15xf16>
        vector.scatter %alloc_9[%c0, %c3, %c0] [%301], %302, %303 : memref<9x15x8xf16>, vector<15xindex>, vector<15xi1>, vector<15xf16>
        %304 = arith.shli %c606377018_i32, %c606377018_i32 : i32
        %305 = vector.multi_reduction <xor>, %126, %126 [] : vector<9x15x8xi1> to vector<9x15x8xi1>
        %306 = arith.shli %false, %false : i1
        %cast_44 = tensor.cast %22 : tensor<f32> to tensor<f32>
        %307 = bufferization.to_tensor %alloc_6 : memref<8x1x15xi64>
        %308 = affine.apply affine_map<(d0) -> (d0 - 20)>(%131)
        %309 = math.absi %c564459480_i64 : i64
        %310 = index.maxu %c15, %114
        %cast_45 = tensor.cast %11 : tensor<8x15x9xf16> to tensor<?x?x?xf16>
        %311 = index.maxu %c0, %c10
        affine.store %in, %alloc_11[%c0, %c0] : memref<15x1xi16>
        %312 = vector.insertelement %c1647736072_i64, %40[%c6 : index] : vector<1xi64>
        %313 = math.round %20 : tensor<8xf32>
        %314 = math.atan2 %10, %10 : tensor<8x1x15xf32>
        %315 = arith.maxui %c564459480_i64, %c1908153259_i64 : i64
        %alloc_46 = memref.alloc() : memref<8x15x9xi1>
        %alloca_47 = memref.alloca() : memref<8x1x15xf32>
        linalg.yield %c27427_i16 : i16
      } -> tensor<9x15x8xi16>
      %284 = vector.shuffle %40, %19 [0, 1] : vector<1xi64>, vector<1xi64>
      %285 = vector.matrix_multiply %36, %70 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      %286 = math.round %12 : tensor<8x1x15xf32>
      scf.yield
    }
    default {
      %273 = index.add %c7, %c0
      %274 = arith.divui %c1284375718_i64, %97 : i64
      %275 = arith.maxui %c606377018_i32, %c1069903657_i32 : i32
      %276 = vector.create_mask %c15, %c6, %114 : vector<9x15x8xi1>
      %277 = vector.broadcast %c606377018_i32 : i32 to vector<9x15x8xi32>
      %278 = vector.gather %17[%c15, %c11, %c11] [%277], %276, %277 : tensor<8x15x9xi32>, vector<9x15x8xi32>, vector<9x15x8xi1>, vector<9x15x8xi32> into vector<9x15x8xi32>
      affine.for %arg1 = 0 to 80 {
      }
      %279 = scf.while (%arg1 = %62) : (vector<15x1xi32>) -> vector<15x1xi32> {
        %291 = vector.broadcast %false : i1 to vector<9x8xi1>
        %292 = vector.multi_reduction <minui>, %276, %291 [1] : vector<9x15x8xi1> to vector<9x8xi1>
        %293 = tensor.empty() : tensor<1x9xf32>
        %294 = tensor.empty() : tensor<15x9xf32>
        %295 = linalg.matmul ins(%2, %293 : tensor<15x1xf32>, tensor<1x9xf32>) outs(%294 : tensor<15x9xf32>) -> tensor<15x9xf32>
        %296 = bufferization.to_memref %17 : memref<8x15x9xi32>
        %297 = vector.shuffle %72, %73 [2, 4, 6, 7, 8, 9, 10, 11, 13, 15, 16, 17, 22, 24, 25, 26, 28] : vector<15x1xi64>, vector<15x1xi64>
        %true_42 = index.bool.constant true
        %298 = arith.divsi %c1069903657_i32, %c1069903657_i32 : i32
        %299 = arith.divf %cst_2, %cst_1 : f32
        %300 = arith.divsi %c606377018_i32, %c1069903657_i32 : i32
        scf.condition(%true) %62 : vector<15x1xi32>
      } do {
      ^bb0(%arg1: vector<15x1xi32>):
        %291 = vector.extract_strided_slice %19 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        %292 = vector.bitcast %117 : vector<8x1x15xi32> to vector<8x1x15xi32>
        %293 = vector.broadcast %c1284375718_i64 : i64 to vector<1x1xi64>
        %294 = vector.outerproduct %19, %19, %293 {kind = #vector.kind<minsi>} : vector<1xi64>, vector<1xi64>
        bufferization.dealloc_tensor %68 : tensor<8x15x9xi32>
        %295 = vector.broadcast %cst_1 : f32 to vector<8x1x15xf32>
        %296 = vector.fma %295, %295, %295 : vector<8x1x15xf32>
        %297 = math.sqrt %10 : tensor<8x1x15xf32>
        %298 = arith.divf %cst_4, %cst_3 : f16
        %299 = index.add %c2, %c1
        %300 = arith.maxsi %98, %c1908153259_i64 : i64
        %extracted = tensor.extract %collapsed[%c3, %c12] : tensor<8x15xi1>
        %301 = vector.create_mask %131, %c1, %c6 : vector<9x15x8xi1>
        %302 = memref.load %alloc_19[%c8, %c0] : memref<15x1xi1>
        %303 = arith.andi %c1069903657_i32, %c606377018_i32 : i32
        %304 = vector.broadcast %cst_4 : f16 to vector<8x1x15xf16>
        %305 = math.exp %cst_4 : f16
        %306 = vector.matrix_multiply %35, %40 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
        scf.yield %62 : vector<15x1xi32>
      }
      %alloc_41 = memref.alloc() : memref<9x15x8xi64>
      %280 = vector.broadcast %c1284375718_i64 : i64 to vector<8x15x9xi64>
      %281 = vector.broadcast %c1069903657_i32 : i32 to vector<8x15x9xi32>
      %282 = vector.gather %alloc_41[%c3, %89, %c12] [%281], %39, %280 : memref<9x15x8xi64>, vector<8x15x9xi32>, vector<8x15x9xi1>, vector<8x15x9xi64> into vector<8x15x9xi64>
      %283 = vector.insertelement %97, %36[%114 : index] : vector<1xi64>
      %284 = math.fpowi %cst_3, %c606377018_i32 : f16, i32
      %285 = arith.negf %cst_4 : f16
      %286 = index.sub %93, %c14
      %287 = vector.reduction <and>, %36 : vector<1xi64> into i64
      %288 = vector.load %119[%c6, %c11, %c4] : memref<8x15x9xf32>, vector<9x15x8xf32>
      %289 = tensor.empty() : tensor<9x15x8xi1>
      %290 = index.add %135, %c9
    }
    %143 = math.powf %11, %11 : tensor<8x15x9xf16>
    %from_elements_28 = tensor.from_elements %cst_0, %cst_0, %cst_4, %cst_0, %cst_4, %cst_3, %cst_3, %cst_0, %cst_0, %cst_0, %cst_3, %cst_4, %cst_0, %cst_3, %cst_4, %cst_4, %cst_4, %cst_0, %cst_3, %cst_4, %cst_4, %cst_3, %cst_3, %cst_0, %cst_4, %cst_4, %cst_3, %cst_4, %cst_4, %cst_4, %cst_4, %cst_0, %cst_4, %cst_4, %cst_3, %cst_0, %cst_4, %cst_4, %cst_3, %cst_4, %cst_4, %cst_4, %cst_3, %cst_0, %cst_4, %cst_4, %cst_0, %cst_4, %cst_3, %cst_0, %cst_0, %cst_4, %cst_4, %cst_0, %cst_3, %cst_4, %cst_3, %cst_3, %cst_0, %cst_4, %cst_0, %cst_3, %cst_0, %cst_4, %cst_3, %cst_3, %cst_3, %cst_4, %cst_4, %cst_3, %cst_4, %cst_0, %cst_0, %cst_4, %cst_0, %cst_4, %cst_4, %cst_3, %cst_4, %cst_3, %cst_0, %cst_3, %cst_3, %cst_4, %cst_0, %cst_3, %cst_0, %cst_3, %cst_3, %cst_0, %cst_0, %cst_3, %cst_3, %cst_4, %cst_0, %cst_3, %cst_4, %cst_3, %cst_4, %cst_3, %cst_0, %cst_4, %cst_3, %cst_3, %cst_0, %cst_3, %cst_0, %cst_0, %cst_4, %cst_4, %cst_0, %cst_4, %cst_4, %cst_3, %cst_4, %cst_0, %cst_3, %cst_4, %cst_0, %cst_3 : tensor<8x1x15xf16>
    %144 = tensor.empty() : tensor<9x15x8xf16>
    %145 = index.sizeof
    %146 = vector.broadcast %false : i1 to vector<8x1x15xi1>
    %147 = math.floor %reduced : tensor<8xf32>
    %collapsed_29 = tensor.collapse_shape %3 [[0, 1], [2]] : tensor<9x15x8xi16> into tensor<135x8xi16>
    %148 = math.exp %144 : tensor<9x15x8xf16>
    memref.alloca_scope  {
      %273 = bufferization.to_tensor %112 : memref<15x1xi32>
      %274 = arith.shrui %true_23, %true_23 : i1
      %275 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %36, %40, %97 : vector<1xi64>, vector<1xi64> into i64
      %276 = index.casts %c15 : index to i32
      %277 = affine.if affine_set<(d0, d1) : (d0 + d1 - 4 == 0, d0 >= 0)>(%c14, %c0) -> f32 {
        %305 = vector.transpose %70, [0] : vector<1xi64> to vector<1xi64>
        %306 = bufferization.to_memref %13 : memref<15x1xi64>
        %307 = math.exp2 %2 : tensor<15x1xf32>
        %308 = arith.muli %true_23, %true_23 : i1
        %309 = vector.broadcast %c1069903657_i32 : i32 to vector<15xi32>
        %dest_46, %accumulated_value_47 = vector.scan <minsi>, %62, %309 {inclusive = true, reduction_dim = 1 : i64} : vector<15x1xi32>, vector<15xi32>
        %310 = vector.broadcast %145 : index to vector<15xindex>
        %311 = vector.broadcast %true_23 : i1 to vector<15xi1>
        %312 = vector.broadcast %c564459480_i64 : i64 to vector<15xi64>
        vector.scatter %306[%c14, %c0] [%310], %311, %312 : memref<15x1xi64>, vector<15xindex>, vector<15xi1>, vector<15xi64>
        %alloc_48 = memref.alloc() : memref<8x8xi16>
        %313 = tensor.empty() : tensor<135x8xi16>
        %314 = linalg.matmul ins(%collapsed_29, %alloc_48 : tensor<135x8xi16>, memref<8x8xi16>) outs(%313 : tensor<135x8xi16>) -> tensor<135x8xi16>
        %alloc_49 = memref.alloc() : memref<15x1xf16>
        affine.yield %cst_2 : f32
      } else {
        %305 = index.maxs %c13, %93
        %306 = math.round %21 : tensor<f32>
        %307 = arith.maxui %true, %false : i1
        %collapsed_46 = tensor.collapse_shape %8 [[0, 1], [2]] : tensor<8x15x9xi16> into tensor<120x9xi16>
        %308 = arith.negf %cst_0 : f16
        %309 = arith.maxsi %c564459480_i64, %97 : i64
        %310 = bufferization.to_tensor %alloc_5 : memref<8x15x9xf32>
        %311 = math.exp %cst_2 : f32
        affine.yield %cst_2 : f32
      }
      %278 = math.floor %6 : tensor<8x1x15xf16>
      %279 = math.floor %cst_1 : f32
      %280 = arith.muli %c1284375718_i64, %97 : i64
      %281 = math.log1p %cst_3 : f16
      %282 = arith.shli %c606377018_i32, %c1069903657_i32 : i32
      %from_elements_41 = tensor.from_elements %cst_4, %cst_3, %cst_3, %cst_0, %cst_3, %cst_3, %cst_4, %cst_3, %cst_0, %cst_3, %cst_4, %cst_0, %cst_4, %cst_3, %cst_0, %cst_0, %cst_3, %cst_0, %cst_4, %cst_3, %cst_3, %cst_0, %cst_3, %cst_3, %cst_4, %cst_0, %cst_3, %cst_4, %cst_3, %cst_4, %cst_4, %cst_4, %cst_0, %cst_3, %cst_0, %cst_4, %cst_0, %cst_3, %cst_4, %cst_4, %cst_3, %cst_3, %cst_3, %cst_3, %cst_0, %cst_4, %cst_3, %cst_0, %cst_3, %cst_0, %cst_4, %cst_0, %cst_0, %cst_3, %cst_4, %cst_0, %cst_0, %cst_3, %cst_3, %cst_4, %cst_0, %cst_0, %cst_0, %cst_0, %cst_3, %cst_0, %cst_4, %cst_0, %cst_0, %cst_3, %cst_0, %cst_0, %cst_4, %cst_4, %cst_4, %cst_3, %cst_0, %cst_3, %cst_3, %cst_4, %cst_3, %cst_0, %cst_3, %cst_3, %cst_0, %cst_3, %cst_0, %cst_0, %cst_0, %cst_4, %cst_4, %cst_3, %cst_0, %cst_0, %cst_3, %cst_4, %cst_4, %cst_3, %cst_0, %cst_0, %cst_4, %cst_0, %cst_4, %cst_3, %cst_0, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_0, %cst_0, %cst_0, %cst_4, %cst_4, %cst_0, %cst_4, %cst_3, %cst_4 : tensor<8x1x15xf16>
      %283 = index.mul %c5, %c4
      %284 = index.floordivs %c10, %c1
      %285 = bufferization.clone %113 : memref<15x1xi1> to memref<15x1xi1>
      %286 = vector.broadcast %97 : i64 to vector<8x15x9xi64>
      %287 = math.round %144 : tensor<9x15x8xf16>
      %288 = arith.remsi %c606377018_i32, %c1069903657_i32 : i32
      %289 = arith.shli %true, %true_23 : i1
      %290 = tensor.empty() : tensor<1x9xi64>
      %291 = tensor.empty() : tensor<15x9xi64>
      %292 = linalg.matmul ins(%13, %290 : tensor<15x1xi64>, tensor<1x9xi64>) outs(%291 : tensor<15x9xi64>) -> tensor<15x9xi64>
      %alloca_42 = memref.alloca() : memref<8x1x15xi64>
      %293 = scf.while (%arg1 = %126) : (vector<9x15x8xi1>) -> vector<9x15x8xi1> {
        %305 = arith.cmpf ogt, %cst_0, %cst_4 : f16
        %306 = math.fma %cst_0, %cst_3, %cst_0 : f16
        %307 = arith.addf %cst_4, %cst_4 : f16
        %308 = arith.divsi %c1284375718_i64, %c564459480_i64 : i64
        %309 = vector.broadcast %c2 : index to vector<1xindex>
        %310 = vector.broadcast %true : i1 to vector<1xi1>
        %311 = vector.broadcast %cst_2 : f32 to vector<1xf32>
        vector.scatter %alloc_7[%c7, %c0, %c5] [%309], %310, %311 : memref<8x1x15xf32>, vector<1xindex>, vector<1xi1>, vector<1xf32>
        %312 = arith.cmpf ogt, %cst_4, %cst_0 : f16
        %expanded = tensor.expand_shape %generated [[0], [1], [2, 3]] : tensor<?x?x9xi64> into tensor<?x?x9x1xi64>
        %expanded_46 = tensor.expand_shape %10 [[0], [1], [2, 3]] : tensor<8x1x15xf32> into tensor<8x1x15x1xf32>
        scf.condition(%true_23) %126 : vector<9x15x8xi1>
      } do {
      ^bb0(%arg1: vector<9x15x8xi1>):
        %alloc_46 = memref.alloc() : memref<8x1x15xi32>
        %from_elements_47 = tensor.from_elements %false, %true_23, %false, %false, %true, %true_23, %true_23, %true_23, %true_23, %false, %false, %true_23, %false, %true, %true, %true, %true, %true, %false, %true, %true, %true_23, %true, %false, %false, %true, %true_23, %true_23, %true, %true_23, %true, %true_23, %false, %true_23, %true, %true, %true_23, %false, %false, %true_23, %true_23, %true, %true_23, %false, %false, %true, %false, %true_23, %true_23, %false, %true_23, %false, %true, %true_23, %true, %false, %true, %true_23, %true, %true_23, %false, %true, %true, %true, %true, %true_23, %true_23, %false, %false, %false, %true, %true, %true, %false, %true, %false, %true, %true, %true, %true, %true, %true_23, %false, %false, %false, %false, %false, %true, %true_23, %false, %true, %true, %true_23, %false, %true, %false, %true_23, %false, %true, %false, %true_23, %true_23, %true_23, %true, %true, %true_23, %true, %true, %true_23, %false, %true_23, %true, %true, %true_23, %true_23, %true, %false, %true_23, %false, %true, %true, %false, %true, %true_23, %true_23, %true, %false, %true, %true, %true, %true_23, %true, %true, %true_23, %true, %true_23, %false, %true, %false, %true, %true, %true, %false, %true_23, %false, %false, %false, %true, %true_23, %true, %true, %true, %true_23, %true, %true_23, %true_23, %true_23, %false, %true_23, %true_23, %true, %false, %false, %true_23, %true, %false, %true_23, %false, %true, %false, %false, %true_23, %false, %true_23, %true, %true, %false, %false, %false, %true_23, %true, %true, %false, %true, %false, %true, %true, %false, %true_23, %true_23, %true_23, %true_23, %true_23, %true_23, %false, %true, %true_23, %true, %true, %true, %false, %true_23, %true, %true, %true_23, %true, %false, %true_23, %true, %true, %true, %true_23, %true, %true, %true_23, %true_23, %true_23, %true_23, %true_23, %true_23, %true, %true_23, %false, %true, %true_23, %true, %false, %true_23, %false, %true, %true_23, %true, %false, %true_23, %false, %true_23, %false, %true, %false, %true, %true_23, %false, %false, %true_23, %true, %true, %true, %true_23, %true, %true, %true, %false, %true_23, %true_23, %true_23, %true_23, %true_23, %true_23, %true, %true, %false, %true, %true_23, %false, %true_23, %true_23, %false, %false, %true, %true, %true_23, %true, %false, %true_23, %true_23, %false, %true, %true_23, %false, %true, %true, %true_23, %true_23, %false, %true_23, %true_23, %true, %false, %false, %true, %false, %true, %true_23, %false, %true, %true, %true_23, %false, %true_23, %true_23, %false, %true, %true, %true_23, %true_23, %true_23, %true, %true_23, %false, %true_23, %false, %false, %true, %true_23, %true_23, %false, %false, %true_23, %true_23, %true, %true, %false, %true_23, %false, %true_23, %true_23, %true, %true, %true_23, %true, %false, %false, %true, %false, %true, %true_23, %false, %true_23, %true, %true_23, %true_23, %true_23, %false, %false, %true_23, %true_23, %true_23, %true_23, %false, %false, %true, %true, %true_23, %true_23, %true, %false, %true_23, %false, %true_23, %false, %true_23, %true, %true_23, %true_23, %false, %true, %false, %false, %true_23, %true_23, %true, %true_23, %true, %true, %true, %true_23, %true_23, %false, %true, %false, %true, %true_23, %true_23, %true_23, %true_23, %true, %false, %false, %false, %true_23, %true, %true_23, %true, %true, %true, %false, %true, %true_23, %true, %true, %false, %true, %true, %true, %false, %true, %true_23, %false, %false, %false, %true, %true, %true, %true_23, %true, %true, %true, %true, %false, %true, %true, %false, %true_23, %true, %true_23, %false, %true, %false, %true_23, %true_23, %false, %true, %true, %true_23, %true, %false, %true_23, %false, %false, %false, %true_23, %true_23, %true_23, %true_23, %true_23, %false, %false, %false, %true_23, %true, %true_23, %true, %true, %false, %false, %true, %true_23, %false, %true, %false, %true, %false, %true, %true, %false, %true_23, %false, %false, %false, %false, %true_23, %true_23, %true, %true_23, %false, %false, %false, %false, %true, %true, %true_23, %true, %false, %false, %true_23, %true, %true, %true_23, %true, %true_23, %true_23, %true_23, %true_23, %true_23, %true, %true_23, %false, %true_23, %false, %true, %true_23, %true, %true, %true, %true, %true, %true, %false, %true, %true_23, %true_23, %true, %true_23, %true, %false, %true_23, %false, %false, %true, %true_23, %true_23, %true_23, %true, %true_23, %true_23, %true, %false, %true, %false, %false, %false, %true_23, %true, %true, %true, %true_23, %true_23, %true_23, %true_23, %true, %true, %false, %true, %true_23, %true_23, %true, %true, %true_23, %true, %true, %true_23, %true_23, %true_23, %true, %true, %true_23, %false, %true, %true, %true, %false, %true, %true_23, %true_23, %true_23, %true_23, %false, %false, %true, %true_23, %true_23, %false, %false, %true, %true_23, %true, %true, %false, %true_23, %true_23, %true_23, %false, %false, %true_23, %true, %false, %true, %false, %true, %false, %true, %true_23, %true_23, %true_23, %false, %false, %true_23, %true, %false, %true_23, %false, %true_23, %true_23, %true_23, %true_23, %false, %true_23, %true_23, %true, %false, %true, %true_23, %true_23, %true, %true, %true_23, %false, %true_23, %true_23, %true_23, %true_23, %true_23, %true_23, %true, %false, %true_23, %true, %false, %true, %true_23, %true, %true_23, %false, %true, %true, %true_23, %true, %true_23, %true_23, %true, %false, %true, %true, %true_23, %true, %true_23, %true_23, %true, %true_23, %false, %true_23, %false, %false, %false, %true_23, %true_23, %false, %true_23, %true_23, %true_23, %true, %false, %true_23, %true_23, %true, %false, %true_23, %true, %true, %true_23, %true, %true, %false, %true, %false, %false, %false, %true, %true, %true, %true, %false, %true, %true_23, %true_23, %true, %true, %false, %true, %false, %true, %true, %true, %false, %true, %true, %true_23, %true_23, %true, %true_23, %false, %true_23, %true_23, %true_23, %false, %true_23, %false, %true_23, %false, %true_23, %true_23, %true, %true, %true, %true, %false, %true_23, %false, %true_23, %true_23, %true_23, %false, %false, %true, %false, %true, %true_23, %false, %true_23, %true, %true_23, %false, %true, %true, %true, %false, %true_23, %true, %false, %false, %true_23, %false, %false, %true_23, %true_23, %true, %true, %false, %false, %false, %true_23, %false, %true_23, %true, %false, %false, %true_23, %true_23, %false, %false, %false, %false, %true, %true, %true, %true, %true, %false, %true, %true, %true_23, %false, %true_23, %true, %false, %true, %true, %true_23, %true, %true_23, %true, %true_23, %true, %false, %true_23, %true_23, %false, %true_23, %false, %true, %false, %false, %true, %true, %true_23, %true, %true, %false, %true, %true_23, %false, %false, %true_23, %true, %true_23, %true, %false, %false, %false, %false, %true_23, %true_23, %true_23, %false, %true, %true_23, %false, %true_23, %true_23, %true, %true_23, %true_23, %true_23, %true_23, %true, %true, %true_23, %true_23, %false, %true, %true, %true, %true, %false, %true, %false, %true, %true_23, %true_23, %false, %false, %true_23, %false, %true, %true_23, %false, %true, %true, %true_23, %true, %true_23, %false, %true, %true_23, %true, %true_23, %false, %true_23, %false, %true_23, %false, %false, %true_23, %false, %true_23, %true, %false, %false, %true, %true, %false, %true_23, %true, %true_23, %true_23, %true, %true_23, %true_23, %true_23, %false, %true_23, %false, %false, %true_23, %true_23, %true_23, %true, %false, %true_23, %true, %false, %true_23, %true, %true, %true, %false, %false, %true_23, %false, %true_23, %true_23, %true, %true, %true, %true, %true_23, %false, %true, %true, %false, %false, %false, %false, %true, %true, %true, %true_23, %true_23, %true_23, %true_23, %true_23, %true, %true_23, %true, %false, %false, %false, %true_23, %true, %false, %true, %true_23, %true_23, %true, %false, %true, %false, %false, %false, %false, %true, %false, %false, %false, %true_23, %true_23, %false, %true, %false, %false, %true_23, %true_23, %true, %false, %true_23, %true, %false, %true_23, %false, %false, %false, %false, %false, %false, %true_23, %true_23, %false, %true, %true_23, %true, %true, %true_23, %true_23, %true, %true, %false, %true, %true, %true_23, %true_23, %false, %true, %false, %true, %false, %true_23, %true, %false, %false, %false, %false, %false, %true_23, %true, %false, %true, %false, %true, %true_23, %true, %true_23, %true_23, %false, %true_23, %true, %false, %true_23, %true_23, %false, %false, %true, %true_23, %true_23, %true, %true_23, %false, %true, %false, %true_23, %true_23, %true, %true, %true, %true, %false, %false, %true, %true_23, %true_23, %true, %false, %true, %false, %false, %false, %true, %true, %true_23, %false, %false, %true_23, %true_23, %true, %true_23, %true_23, %false, %true, %false, %true_23, %true_23, %true, %true, %true_23, %true, %true, %false, %true, %false, %true, %true, %false, %false, %false, %true, %false, %true_23, %true, %true, %false, %true_23, %false, %true_23, %true_23, %true_23, %false, %true_23, %true, %true, %true_23, %true : tensor<9x15x8xi1>
        %305 = index.add %c13, %c1
        %306 = vector.broadcast %cst_0 : f16 to vector<9x15x8xf16>
        %307 = vector.broadcast %c1069903657_i32 : i32 to vector<9x15x8xi32>
        %308 = vector.gather %alloc_9[%c10, %c13, %c2] [%307], %126, %306 : memref<9x15x8xf16>, vector<9x15x8xi32>, vector<9x15x8xi1>, vector<9x15x8xf16> into vector<9x15x8xf16>
        %309 = arith.cmpf one, %cst_2, %cst : f32
        %310 = arith.remsi %c1284375718_i64, %c564459480_i64 : i64
        %311 = arith.shli %c1284375718_i64, %c1908153259_i64 : i64
        %312 = index.divu %c0, %305
        %313 = vector.bitcast %138 : vector<8x1x15xi1> to vector<8x1x15xi1>
        %314 = tensor.empty() : tensor<8x1x15xi1>
        %315 = tensor.empty(%c1, %c10) : tensor<?x1x?xi32>
        %316 = vector.bitcast %46 : vector<8x1x15xi1> to vector<8x1x15xi1>
        affine.store %false, %alloc_18[%c13, %c6, %c10] : memref<8x1x15xi1>
        %317 = vector.broadcast %true : i1 to vector<8x15xi1>
        %318 = vector.multi_reduction <or>, %146, %317 [1] : vector<8x1x15xi1> to vector<8x15xi1>
        %319 = arith.remf %cst_4, %cst_3 : f16
        %320 = math.tanh %18 : tensor<8xf32>
        scf.yield %126 : vector<9x15x8xi1>
      }
      %294 = vector.broadcast %c9 : index to vector<1xindex>
      %295 = vector.broadcast %true_23 : i1 to vector<1xi1>
      %296 = vector.broadcast %c1069903657_i32 : i32 to vector<1xi32>
      vector.scatter %alloc_15[%c7, %c0] [%294], %295, %296 : memref<15x1xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
      %297 = vector.extract %63[0] : vector<15x1xf16>
      %298 = math.log1p %cst_3 : f16
      %299 = affine.max affine_map<(d0, d1) -> (d0 mod 2 - 16, d0 - 1, d1 * 2 + 64)>(%c14, %283)
      %300 = vector.broadcast %false : i1 to vector<8x1x15xi1>
      %generated_43 = tensor.generate %c4, %89 {
      ^bb0(%arg1: index, %arg2: index, %arg3: index):
        %305 = math.exp %2 : tensor<15x1xf32>
        %collapsed_46 = tensor.collapse_shape %10 [[0, 1], [2]] : tensor<8x1x15xf32> into tensor<8x15xf32>
        %306 = arith.maxsi %c606377018_i32, %c1069903657_i32 : i32
        %307 = math.exp %from_elements_28 : tensor<8x1x15xf16>
        tensor.yield %cst : f32
      } : tensor<?x?x9xf32>
      %301 = math.exp2 %from_elements_28 : tensor<8x1x15xf16>
      %alloc_44 = memref.alloc() : memref<8x1x15xf32>
      %302 = index.castu %135 : index to i32
      affine.store %cst_0, %alloc_9[%c0, %c1, %c1] : memref<9x15x8xf16>
      %alloc_45 = memref.alloc() : memref<1x8xi64>
      %303 = tensor.empty() : tensor<15x8xi64>
      %304 = linalg.matmul ins(%14, %alloc_45 : tensor<15x1xi64>, memref<1x8xi64>) outs(%303 : tensor<15x8xi64>) -> tensor<15x8xi64>
    }
    %149 = math.log10 %12 : tensor<8x1x15xf32>
    %150 = math.absi %8 : tensor<8x15x9xi16>
    %151 = vector.broadcast %135 : index to vector<15xindex>
    %152 = vector.broadcast %true : i1 to vector<15xi1>
    %153 = vector.broadcast %c1069903657_i32 : i32 to vector<15xi32>
    vector.scatter %alloc_20[%c0, %c11] [%151], %152, %153 : memref<1x15xi32>, vector<15xindex>, vector<15xi1>, vector<15xi32>
    %154 = math.tanh %22 : tensor<f32>
    %155 = memref.load %alloc_9[%c1, %c5, %c5] : memref<9x15x8xf16>
    %c-24908_i16 = arith.constant -24908 : i16
    %cst_30 = arith.constant 2.01953613E+9 : f32
    %alloc_31 = memref.alloc() : memref<8x1x15xi32>
    %156 = math.tanh %cst : f32
    %157 = math.tanh %15 : tensor<15x1xf16>
    %158 = index.floordivs %c2, %c15
    %159 = vector.broadcast %c606377018_i32 : i32 to vector<8x15xi32>
    %dest, %accumulated_value = vector.scan <maxui>, %47, %159 {inclusive = true, reduction_dim = 1 : i64} : vector<8x1x15xi32>, vector<8x15xi32>
    %160 = math.log1p %from_elements_28 : tensor<8x1x15xf16>
    %161 = bufferization.clone %alloc_22 : memref<15x1xf16> to memref<15x1xf16>
    %162 = vector.broadcast %cst : f32 to vector<8x1x15xf32>
    %163 = vector.fma %162, %162, %162 : vector<8x1x15xf32>
    %164 = arith.remsi %c27427_i16, %c27427_i16 : i16
    %165 = vector.broadcast %true : i1 to vector<1x15x15x9xi1>
    %166 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %94, %39, %165 : vector<8x1x15xi1>, vector<8x15x9xi1> into vector<1x15x15x9xi1>
    %167 = vector.transpose %48, [2, 0, 1] : vector<8x1x15xi64> to vector<15x8x1xi64>
    %168 = vector.flat_transpose %70 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
    %169 = math.roundeven %5 : tensor<8x15x9xf32>
    %from_elements_32 = tensor.from_elements %cst_1, %cst, %cst_2, %cst_2, %cst_2, %cst, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst, %cst_2, %cst_1, %cst_2, %cst, %cst, %cst, %cst_1, %cst, %cst_2, %cst, %cst, %cst_2, %cst, %cst, %cst, %cst_1, %cst, %cst_2, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_2, %cst_2, %cst, %cst_2, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst, %cst_2, %cst_2, %cst, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst, %cst_2, %cst_2, %cst, %cst_2, %cst_1, %cst, %cst_2, %cst_2, %cst_2, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_2, %cst_2, %cst_2, %cst, %cst, %cst, %cst_2, %cst_2, %cst_2, %cst, %cst_1, %cst, %cst, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst, %cst, %cst, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %cst_1, %cst_2, %cst_1, %cst, %cst, %cst_1, %cst_2, %cst_2, %cst_2, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_2, %cst, %cst, %cst_2, %cst, %cst, %cst, %cst, %cst, %cst_1, %cst_2, %cst, %cst_2, %cst_1, %cst_1, %cst, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst_1, %cst_2, %cst_1, %cst, %cst, %cst, %cst_1, %cst_2, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst, %cst_2, %cst, %cst_1, %cst, %cst_1, %cst_2, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst_2, %cst_2, %cst_1, %cst, %cst, %cst, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst_1, %cst_1, %cst, %cst, %cst, %cst_2, %cst, %cst_1, %cst_2, %cst, %cst_2, %cst_1, %cst_2, %cst, %cst, %cst_1, %cst, %cst, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst, %cst, %cst_2, %cst_2, %cst, %cst, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_2, %cst, %cst, %cst_1, %cst_2, %cst_2, %cst_1, %cst, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst_2, %cst, %cst_1, %cst_2, %cst, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst, %cst, %cst_2, %cst_2, %cst, %cst_2, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst_1, %cst_1, %cst, %cst_2, %cst, %cst_1, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst, %cst, %cst, %cst_2, %cst_2, %cst, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst, %cst, %cst_1, %cst_2, %cst, %cst, %cst_1, %cst_1, %cst_2, %cst, %cst, %cst, %cst_2, %cst, %cst_1, %cst_2, %cst, %cst_1, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst_1, %cst_1, %cst, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %cst_2, %cst, %cst, %cst, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_1, %cst, %cst, %cst_2, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst_2, %cst_1, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_2, %cst_1, %cst, %cst, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_1, %cst, %cst_1, %cst, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst_1, %cst, %cst_1, %cst_2, %cst, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst, %cst_2, %cst_1, %cst_1, %cst, %cst, %cst_2, %cst, %cst, %cst, %cst, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst, %cst_1, %cst_2, %cst, %cst_2, %cst_1, %cst, %cst, %cst, %cst_1, %cst, %cst_2, %cst, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst, %cst, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_2, %cst_1, %cst, %cst_2, %cst_2, %cst_2, %cst, %cst, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst, %cst_1, %cst, %cst, %cst, %cst, %cst_2, %cst, %cst, %cst, %cst_1, %cst_2, %cst_2, %cst, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst, %cst, %cst_2, %cst, %cst_2, %cst, %cst, %cst_1, %cst_1, %cst, %cst_2, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst_2, %cst, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst, %cst_2, %cst_2, %cst, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %cst_2, %cst_1, %cst, %cst, %cst_2, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst, %cst_2, %cst, %cst, %cst, %cst, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst, %cst, %cst, %cst_2, %cst_2, %cst_2, %cst_1, %cst, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst, %cst_1, %cst, %cst_2, %cst_1, %cst_2, %cst, %cst_2, %cst_1, %cst_1, %cst_1, %cst, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst_2, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst, %cst, %cst, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst_1, %cst_1, %cst, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %cst_2, %cst, %cst, %cst_2, %cst, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_1, %cst, %cst_1, %cst_1, %cst_2, %cst, %cst_2, %cst_2, %cst_1, %cst, %cst_2, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst_2, %cst_1, %cst, %cst, %cst_2, %cst, %cst, %cst_1, %cst, %cst_1, %cst, %cst, %cst, %cst, %cst, %cst_1, %cst_1, %cst_2, %cst, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst_1, %cst, %cst_2, %cst_1, %cst_2, %cst, %cst, %cst_2, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst, %cst, %cst, %cst, %cst_2, %cst_2, %cst, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %cst, %cst_2, %cst_2, %cst_1, %cst_2, %cst, %cst_1, %cst, %cst_2, %cst, %cst_1, %cst_2, %cst, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst, %cst_1, %cst_2, %cst, %cst_2, %cst, %cst, %cst_2, %cst, %cst, %cst_1, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst, %cst_2, %cst_1, %cst_2, %cst_1, %cst, %cst_2, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst, %cst_2, %cst, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst_1, %cst_2, %cst_2, %cst, %cst, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst_1, %cst, %cst, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst_1, %cst_2, %cst, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst_2, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst, %cst, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst, %cst_1, %cst, %cst, %cst_1, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst_2, %cst, %cst, %cst_1, %cst_2, %cst, %cst, %cst, %cst, %cst_1, %cst, %cst, %cst_1, %cst_2, %cst, %cst_2, %cst_2, %cst_1, %cst, %cst, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst, %cst_1, %cst_2, %cst, %cst, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_1, %cst_2, %cst, %cst_1, %cst_1, %cst, %cst_1, %cst_1 : tensor<8x15x9xf32>
    %170 = scf.while (%arg1 = %true) : (i1) -> i1 {
      affine.store %cst_2, %alloc_14[%c1, %c13, %c4] : memref<9x15x8xf32>
      %273 = vector.shuffle %146, %138 [1, 4, 5, 6, 8, 9, 11] : vector<8x1x15xi1>, vector<8x1x15xi1>
      %274 = arith.addf %cst_1, %cst_2 : f32
      memref.store %true, %alloc_19[%c13, %c0] : memref<15x1xi1>
      %275 = vector.bitcast %94 : vector<8x1x15xi1> to vector<8x1x15xi1>
      %276 = math.round %59 : tensor<9x15x8xf16>
      affine.for %arg2 = 0 to 104 {
      }
      %277 = index.divu %145, %89
      scf.condition(%true_23) %true : i1
    } do {
    ^bb0(%arg1: i1):
      %273 = tensor.empty() : tensor<1x8xf16>
      %274 = tensor.empty() : tensor<15x8xf16>
      %275 = linalg.matmul ins(%15, %273 : tensor<15x1xf16>, tensor<1x8xf16>) outs(%274 : tensor<15x8xf16>) -> tensor<15x8xf16>
      %276 = vector.reduction <maxsi>, %70 : vector<1xi64> into i64
      %277 = arith.addf %cst_2, %cst_1 : f32
      %278 = math.expm1 %from_elements_32 : tensor<8x15x9xf32>
      %alloc_41 = memref.alloc() : memref<1x8xf16>
      %279 = tensor.empty() : tensor<15x8xf16>
      %280 = linalg.matmul ins(%15, %alloc_41 : tensor<15x1xf16>, memref<1x8xf16>) outs(%279 : tensor<15x8xf16>) -> tensor<15x8xf16>
      %cst_42 = arith.constant 1.000000e+00 : f32
      %281 = vector.transfer_read %119[%c13, %c1, %c8], %cst_42 : memref<8x15x9xf32>, vector<9x15xf32>
      %282 = arith.addi %c606377018_i32, %c1069903657_i32 : i32
      %283 = vector.broadcast %97 : i64 to vector<8x15x15xi64>
      %284 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %48, %73, %283 : vector<8x1x15xi64>, vector<15x1xi64> into vector<8x15x15xi64>
      %285 = vector.insertelement %c1647736072_i64, %40[%c5 : index] : vector<1xi64>
      %286 = vector.extract %36[0] : vector<1xi64>
      %287 = math.atan2 %18, %reduced : tensor<8xf32>
      %288 = index.add %c2, %c15
      %289 = arith.andi %c1069903657_i32, %c606377018_i32 : i32
      %290 = vector.broadcast %c4 : index to vector<9xindex>
      %291 = vector.broadcast %true : i1 to vector<9xi1>
      vector.scatter %alloc_16[%c12, %c0] [%290], %291, %291 : memref<15x1xi1>, vector<9xindex>, vector<9xi1>, vector<9xi1>
      %292 = math.log10 %11 : tensor<8x15x9xf16>
      %293 = vector.broadcast %98 : i64 to vector<8x1x15xi64>
      scf.yield %true_23 : i1
    }
    %171 = arith.shrui %c1284375718_i64, %c1647736072_i64 : i64
    %172 = arith.addf %cst_1, %cst : f32
    %173 = arith.maxui %c27427_i16, %c27427_i16 : i16
    %174 = math.log10 %cst_3 : f16
    %175 = index.maxs %c6, %93
    %176 = index.floordivs %c13, %c10
    %177 = math.rsqrt %from_elements_32 : tensor<8x15x9xf32>
    vector.print %46 : vector<8x1x15xi1>
    %178 = arith.mulf %cst_4, %cst_3 : f16
    %179 = math.fpowi %2, %116 : tensor<15x1xf32>, tensor<15x1xi32>
    %180 = index.maxu %c8, %c14
    %181 = vector.bitcast %69 : vector<15x1xf32> to vector<15x1xf32>
    %182 = arith.remsi %false, %true_23 : i1
    %183 = vector.broadcast %97 : i64 to vector<1x1xi64>
    %184 = vector.outerproduct %70, %36, %183 {kind = #vector.kind<mul>} : vector<1xi64>, vector<1xi64>
    %alloc_33 = memref.alloc() : memref<8xf32>
    %185 = memref.realloc %alloc_33 : memref<8xf32> to memref<9xf32>
    %186 = index.floordivs %c10, %c4
    %187 = arith.ori %c564459480_i64, %c564459480_i64 : i64
    scf.execute_region {
      %273 = affine.if affine_set<(d0, d1, d2) : (d0 ceildiv 16 == 0, (d1 + 4) * 8 == 0, (d1 + 4) * 8 == 0)>(%c1, %c0, %c7) -> memref<8x1x15xi64> {
        %287 = math.exp %20 : tensor<8xf32>
        %288 = arith.divsi %97, %98 : i64
        %alloc_43 = memref.alloc() : memref<9x15x8xi1>
        %289 = vector.broadcast %c606377018_i32 : i32 to vector<8x15x9xi32>
        %290 = vector.gather %alloc_43[%c7, %c7, %c9] [%289], %39, %39 : memref<9x15x8xi1>, vector<8x15x9xi32>, vector<8x15x9xi1>, vector<8x15x9xi1> into vector<8x15x9xi1>
        affine.store %cst_1, %alloc_14[%c4, %c3, %c15] : memref<9x15x8xf32>
        %291 = math.tanh %10 : tensor<8x1x15xf32>
        %292 = arith.muli %true_23, %true_23 : i1
        %293 = arith.maxsi %c1647736072_i64, %98 : i64
        %294 = bufferization.clone %alloc_7 : memref<8x1x15xf32> to memref<8x1x15xf32>
        affine.yield %alloc_6 : memref<8x1x15xi64>
      } else {
        %287 = math.expm1 %12 : tensor<8x1x15xf32>
        %288 = arith.divsi %c1284375718_i64, %c1284375718_i64 : i64
        affine.store %c1069903657_i32, %103[%c13, %c14, %c9] : memref<8x15x9xi32>
        %289 = math.fpowi %5, %17 : tensor<8x15x9xf32>, tensor<8x15x9xi32>
        %290 = index.casts %false : i1 to index
        %291 = bufferization.clone %alloc_16 : memref<15x1xi1> to memref<15x1xi1>
        %292 = arith.remsi %false, %true_23 : i1
        %293 = math.log10 %6 : tensor<8x1x15xf16>
        affine.yield %alloc_6 : memref<8x1x15xi64>
      }
      %alloc_41 = memref.alloc() : memref<9x15x8xi64>
      %274 = arith.addf %cst_1, %cst : f32
      %275 = arith.shli %c1284375718_i64, %97 : i64
      %276 = arith.shrui %c564459480_i64, %c1647736072_i64 : i64
      %277 = math.tanh %cst_4 : f16
      %278 = arith.muli %c1284375718_i64, %c1647736072_i64 : i64
      %inserted_42 = tensor.insert %c1647736072_i64 into %7[%c2, %c0, %c6] : tensor<8x15x9xi64>
      %279 = arith.subi %c1908153259_i64, %97 : i64
      %280 = vector.broadcast %cst_1 : f32 to vector<8x1x15xf32>
      %281 = vector.fma %280, %280, %163 : vector<8x1x15xf32>
      %expanded = tensor.expand_shape %9 [[0], [1], [2, 3]] : tensor<8x1x15xi16> into tensor<8x1x15x1xi16>
      %282 = arith.maxf %cst_4, %cst_3 : f16
      %283 = vector.matrix_multiply %120, %168 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      %284 = vector.extract %73[11] : vector<15x1xi64>
      %285 = vector.insertelement %98, %168[%c11 : index] : vector<1xi64>
      %286 = vector.broadcast %c606377018_i32 : i32 to vector<9x15x8xi32>
      scf.yield
    }
    %generated_34 = tensor.generate %c7 {
    ^bb0(%arg1: index, %arg2: index, %arg3: index):
      %273 = arith.andi %c1069903657_i32, %c606377018_i32 : i32
      %274 = vector.shuffle %82, %60 [4, 6, 7, 8, 10, 11, 13, 16, 18, 22, 25] : vector<15x1xf16>, vector<15x1xf16>
      bufferization.dealloc_tensor %8 : tensor<8x15x9xi16>
      %275 = vector.multi_reduction <minsi>, %138, %146 [] : vector<8x1x15xi1> to vector<8x1x15xi1>
      tensor.yield %c1284375718_i64 : i64
    } : tensor<?x15x9xi64>
    %188 = vector.bitcast %36 : vector<1xi64> to vector<1xi64>
    %189 = math.exp %from_elements_32 : tensor<8x15x9xf32>
    %190 = arith.divf %cst_0, %cst_3 : f16
    %191 = vector.broadcast %cst_1 : f32 to vector<8x1xf32>
    %192 = vector.multi_reduction <mul>, %162, %191 [2] : vector<8x1x15xf32> to vector<8x1xf32>
    %193 = index.sub %c0, %c13
    %194 = vector.broadcast %c564459480_i64 : i64 to vector<1x1xi64>
    %195 = vector.outerproduct %35, %120, %194 {kind = #vector.kind<maxui>} : vector<1xi64>, vector<1xi64>
    %196 = vector.splat %c0 : vector<8x1x15xindex>
    %197 = vector.transpose %70, [0] : vector<1xi64> to vector<1xi64>
    %inserted = tensor.insert %c606377018_i32 into %4[%c7, %c1, %c3] : tensor<9x15x8xi32>
    %alloc_35 = memref.alloc() : memref<8x15xi16>
    %198 = tensor.empty() : tensor<135x15xi16>
    %199 = linalg.matmul ins(%collapsed_29, %alloc_35 : tensor<135x8xi16>, memref<8x15xi16>) outs(%198 : tensor<135x15xi16>) -> tensor<135x15xi16>
    %200 = affine.min affine_map<(d0, d1) -> (d1 + d1 - (-d1) mod 128, d1 mod 16, -d1 - (-d1) mod 128)>(%c1, %c9)
    %201 = arith.maxui %false, %false : i1
    %202 = vector.load %alloc_18[%c3, %c0, %c5] : memref<8x1x15xi1>, vector<8x15x9xi1>
    %203 = math.ctpop %13 : tensor<15x1xi64>
    %204 = math.rsqrt %cst_3 : f16
    %205 = vector.broadcast %98 : i64 to vector<15xi64>
    %206 = vector.multi_reduction <or>, %88, %205 [0, 1] : vector<8x1x15xi64> to vector<15xi64>
    %207 = vector.broadcast %true : i1 to vector<1x8x9xi1>
    %208 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d3, d0)>, affine_map<(d0, d1, d2, d3) -> (d1, d3, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %61, %202, %207 : vector<15x1xi1>, vector<8x15x9xi1> into vector<1x8x9xi1>
    %209 = vector.broadcast %cst_4 : f16 to vector<8x1x15xf16>
    %210 = vector.gather %alloc_9[%176, %180, %158] [%47], %94, %209 : memref<9x15x8xf16>, vector<8x1x15xi32>, vector<8x1x15xi1>, vector<8x1x15xf16> into vector<8x1x15xf16>
    %211 = arith.maxsi %98, %c1908153259_i64 : i64
    %212 = bufferization.to_tensor %112 : memref<15x1xi32>
    %213 = bufferization.to_tensor %alloc_17 : memref<9x15x8xi32>
    %214 = vector.multi_reduction <mul>, %72, %188 [0] : vector<15x1xi64> to vector<1xi64>
    %215 = vector.broadcast %c23984_i16 : i16 to vector<15x1xi16>
    %216 = math.absf %21 : tensor<f32>
    %217 = vector.shuffle %162, %163 [0, 1, 2, 4, 7, 8, 10, 11, 12, 13] : vector<8x1x15xf32>, vector<8x1x15xf32>
    %218 = math.absi %3 : tensor<9x15x8xi16>
    %219 = math.cos %reduced : tensor<8xf32>
    %220 = index.add %200, %c14
    %221 = vector.extract %209[3] : vector<8x1x15xf16>
    %222 = arith.remui %c1069903657_i32, %c1069903657_i32 : i32
    %223 = vector.matrix_multiply %36, %188 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
    %224 = math.sqrt %from_elements_32 : tensor<8x15x9xf32>
    memref.store %true_23, %alloc_16[%c4, %c0] : memref<15x1xi1>
    %225 = arith.minsi %c1069903657_i32, %c606377018_i32 : i32
    %226 = math.ctpop %c1284375718_i64 : i64
    %227 = vector.shuffle %163, %162 [0, 1, 2, 4, 6, 8, 10, 11, 12, 15] : vector<8x1x15xf32>, vector<8x1x15xf32>
    %228 = bufferization.clone %alloc_20 : memref<1x15xi32> to memref<1x15xi32>
    %229 = math.ceil %10 : tensor<8x1x15xf32>
    %230 = index.sub %c13, %c0
    %231 = vector.extract_strided_slice %46 {offsets = [4], sizes = [2], strides = [1]} : vector<8x1x15xi1> to vector<2x1x15xi1>
    %232 = tensor.empty() : tensor<8xi32>
    %233 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%4, %232 : tensor<9x15x8xi32>, tensor<8xi32>) outs(%0 : tensor<9x15x8xi32>) {
    ^bb0(%in: i32, %in_41: i32, %out: i32):
      %cast_42 = tensor.cast %212 : tensor<15x1xi32> to tensor<?x?xi32>
      %273 = arith.addf %cst_1, %cst_2 : f32
      %274 = math.exp2 %20 : tensor<8xf32>
      %275 = arith.divsi %c1647736072_i64, %c1284375718_i64 : i64
      %276 = math.log %from_elements_32 : tensor<8x15x9xf32>
      %277 = vector.reduction <add>, %40 : vector<1xi64> into i64
      %278 = tensor.empty() : tensor<8x1x15xi32>
      %279 = math.fpowi %12, %278 : tensor<8x1x15xf32>, tensor<8x1x15xi32>
      %280 = bufferization.to_tensor %alloc_13 : memref<8x1x15xi1>
      %281 = arith.divsi %c1284375718_i64, %c564459480_i64 : i64
      %282 = affine.apply affine_map<(d0, d1) -> (d1 + 16)>(%186, %230)
      %283 = arith.remf %cst, %cst_1 : f32
      %284 = math.rsqrt %from_elements_28 : tensor<8x1x15xf16>
      %285 = arith.addi %98, %c564459480_i64 : i64
      %286 = vector.matrix_multiply %188, %188 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      %287 = arith.addi %in_41, %c606377018_i32 : i32
      %288 = arith.divui %c27427_i16, %c23984_i16 : i16
      %alloc_43 = memref.alloc() : memref<8x15x9xf16>
      memref.tensor_store %11, %alloc_43 : memref<8x15x9xf16>
      %289 = arith.maxui %c564459480_i64, %97 : i64
      %290 = tensor.empty() : tensor<9x15x8xi64>
      %291 = vector.broadcast %97 : i64 to vector<8x15x9xi64>
      %292 = vector.broadcast %in_41 : i32 to vector<8x15x9xi32>
      %293 = vector.gather %290[%131, %193, %c14] [%292], %39, %291 : tensor<9x15x8xi64>, vector<8x15x9xi32>, vector<8x15x9xi1>, vector<8x15x9xi64> into vector<8x15x9xi64>
      %294 = math.copysign %144, %59 : tensor<9x15x8xf16>
      %295 = arith.divsi %97, %c1908153259_i64 : i64
      %296 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<mul>} %188, %72, %205 : vector<1xi64>, vector<15x1xi64> into vector<15xi64>
      %297 = arith.muli %in_41, %in : i32
      %298 = scf.while (%arg1 = %alloc_8) : (memref<15x1xi1>) -> memref<15x1xi1> {
        %307 = math.cos %2 : tensor<15x1xf32>
        %alloca_45 = memref.alloca() : memref<15x1xf32>
        %308 = math.exp2 %cst_1 : f32
        %309 = index.castu %in : i32 to index
        %310 = vector.splat %true_23 : vector<9x15x8xi1>
        %311 = math.exp2 %10 : tensor<8x1x15xf32>
        %312 = tensor.empty(%200, %309) : tensor<?x?x9xi16>
        %313 = math.exp2 %5 : tensor<8x15x9xf32>
        scf.condition(%true) %alloc_16 : memref<15x1xi1>
      } do {
      ^bb0(%arg1: memref<15x1xi1>):
        %307 = vector.extract %221[0] : vector<1x15xf16>
        %308 = vector.broadcast %c564459480_i64 : i64 to vector<1x1xi64>
        %309 = vector.outerproduct %223, %36, %308 {kind = #vector.kind<and>} : vector<1xi64>, vector<1xi64>
        %310 = math.floor %2 : tensor<15x1xf32>
        %311 = index.castu %c1 : index to i32
        %312 = math.tan %2 : tensor<15x1xf32>
        %313 = math.log2 %11 : tensor<8x15x9xf16>
        %314 = math.absf %cst_0 : f16
        %315 = math.log10 %21 : tensor<f32>
        %316 = vector.broadcast %out : i32 to vector<1x15x1x15xi32>
        %317 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<xor>} %117, %117, %316 : vector<8x1x15xi32>, vector<8x1x15xi32> into vector<1x15x1x15xi32>
        %318 = vector.broadcast %in : i32 to vector<15x1xi32>
        %319 = math.tanh %22 : tensor<f32>
        %320 = math.absf %12 : tensor<8x1x15xf32>
        %321 = math.exp %11 : tensor<8x15x9xf16>
        %322 = vector.broadcast %cst_1 : f32 to vector<15x1xf32>
        %323 = vector.fma %322, %322, %69 : vector<15x1xf32>
        %324 = math.round %from_elements_32 : tensor<8x15x9xf32>
        %325 = index.maxs %c1, %89
        scf.yield %arg1 : memref<15x1xi1>
      }
      %299 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%8, %8 : tensor<8x15x9xi16>, tensor<8x15x9xi16>) outs(%8 : tensor<8x15x9xi16>) {
      ^bb0(%in_45: i16, %in_46: i16, %out_47: i16):
        %307 = arith.negf %cst_0 : f16
        %308 = index.sizeof
        %309 = math.round %from_elements_28 : tensor<8x1x15xf16>
        %310 = vector.broadcast %cst_4 : f16 to vector<8x1xf16>
        %311 = vector.multi_reduction <minf>, %209, %310 [2] : vector<8x1x15xf16> to vector<8x1xf16>
        %312 = math.atan2 %11, %11 : tensor<8x15x9xf16>
        %313 = vector.splat %c2 : vector<9x15x8xindex>
        %314 = math.exp %12 : tensor<8x1x15xf32>
        %315 = vector.reduction <maxsi>, %223 : vector<1xi64> into i64
        %316 = vector.broadcast %cst_1 : f32 to vector<15x1xf32>
        %317 = vector.fma %316, %316, %316 : vector<15x1xf32>
        %318 = vector.gather %12[%131, %308, %c13] [%62], %61, %181 : tensor<8x1x15xf32>, vector<15x1xi32>, vector<15x1xi1>, vector<15x1xf32> into vector<15x1xf32>
        %alloc_48 = memref.alloc() : memref<9x15x8xi16>
        memref.copy %alloc_12, %alloc_48 : memref<9x15x8xi16> to memref<9x15x8xi16>
        %319 = math.cos %2 : tensor<15x1xf32>
        %320 = index.casts %in_46 : i16 to index
        %321 = math.log %5 : tensor<8x15x9xf32>
        %322 = arith.remsi %true, %true : i1
        %323 = index.add %89, %c12
        %324 = vector.broadcast %c1908153259_i64 : i64 to vector<1x1xi64>
        %325 = vector.outerproduct %35, %168, %324 {kind = #vector.kind<mul>} : vector<1xi64>, vector<1xi64>
        %326 = vector.gather %11[%c10, %c15, %175] [%62], %61, %60 : tensor<8x15x9xf16>, vector<15x1xi32>, vector<15x1xi1>, vector<15x1xf16> into vector<15x1xf16>
        %327 = vector.broadcast %in_41 : i32 to vector<8x1x15xi32>
        %328 = vector.broadcast %c27427_i16 : i16 to vector<8x15x9xi16>
        %329 = math.exp2 %15 : tensor<15x1xf16>
        %330 = arith.maxf %cst_1, %cst_1 : f32
        %331 = arith.maxsi %out_47, %in_45 : i16
        %332 = arith.shrui %c1647736072_i64, %c1284375718_i64 : i64
        %333 = vector.gather %alloc_5[%220, %308, %135] [%62], %61, %318 : memref<8x15x9xf32>, vector<15x1xi32>, vector<15x1xi1>, vector<15x1xf32> into vector<15x1xf32>
        %334 = math.absf %15 : tensor<15x1xf16>
        %335 = affine.load %alloc_10[%c9, %c5, %c11] : memref<8x1x15xf32>
        %336 = vector.matrix_multiply %70, %40 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
        memref.tensor_store %12, %alloc_10 : memref<8x1x15xf32>
        %337 = arith.shrsi %c27427_i16, %out_47 : i16
        bufferization.dealloc_tensor %213 : tensor<9x15x8xi32>
        %338 = vector.load %112[%c10, %c0] : memref<15x1xi32>, vector<8x15x9xi32>
        linalg.yield %c27427_i16 : i16
      } -> tensor<8x15x9xi16>
      %300 = arith.addi %c27427_i16, %c23984_i16 : i16
      %301 = vector.reduction <mul>, %168 : vector<1xi64> into i64
      %302 = index.add %193, %c12
      %cst_44 = arith.constant 1.24310246E+9 : f32
      %303 = tensor.empty() : tensor<15x1xi16>
      %304 = vector.gather %303[%c10, %c14] [%62], %61, %215 : tensor<15x1xi16>, vector<15x1xi32>, vector<15x1xi1>, vector<15x1xi16> into vector<15x1xi16>
      %305 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d0 - 8)>(%c0, %302, %c7, %c13)
      %306 = math.log %21 : tensor<f32>
      linalg.yield %in : i32
    } -> tensor<9x15x8xi32>
    %234 = vector.reduction <minui>, %223 : vector<1xi64> into i64
    %235 = bufferization.clone %161 : memref<15x1xf16> to memref<15x1xf16>
    %from_elements_36 = tensor.from_elements %c1284375718_i64, %c1908153259_i64, %c1284375718_i64, %c564459480_i64, %c1284375718_i64, %c1284375718_i64, %c1647736072_i64, %97, %98, %c1647736072_i64, %c1647736072_i64, %c1647736072_i64, %c1908153259_i64, %c1908153259_i64, %98, %98, %c564459480_i64, %c564459480_i64, %97, %c1647736072_i64, %c1284375718_i64, %97, %c1908153259_i64, %c1908153259_i64, %c1284375718_i64, %97, %97, %c1908153259_i64, %c1647736072_i64, %c564459480_i64, %c564459480_i64, %98, %97, %97, %c1284375718_i64, %98, %97, %c564459480_i64, %97, %97, %c1284375718_i64, %98, %97, %c1284375718_i64, %c564459480_i64, %98, %97, %c564459480_i64, %97, %c564459480_i64, %97, %c1908153259_i64, %97, %c1908153259_i64, %c1908153259_i64, %98, %98, %c564459480_i64, %c1284375718_i64, %c1647736072_i64, %c1908153259_i64, %c1284375718_i64, %98, %c1647736072_i64, %c1284375718_i64, %c1908153259_i64, %c1908153259_i64, %c564459480_i64, %c1908153259_i64, %c1908153259_i64, %c564459480_i64, %98, %c1908153259_i64, %c1908153259_i64, %c564459480_i64, %c1908153259_i64, %c564459480_i64, %c564459480_i64, %c564459480_i64, %98, %c1908153259_i64, %c1647736072_i64, %97, %98, %c1908153259_i64, %c1647736072_i64, %c1284375718_i64, %c564459480_i64, %c564459480_i64, %97, %c564459480_i64, %c1647736072_i64, %97, %c1908153259_i64, %c1908153259_i64, %c1647736072_i64, %97, %c1908153259_i64, %c564459480_i64, %c1908153259_i64, %98, %c1647736072_i64, %c1284375718_i64, %c1647736072_i64, %c564459480_i64, %c1284375718_i64, %c564459480_i64, %c1908153259_i64, %97, %c1647736072_i64, %c564459480_i64, %c1647736072_i64, %c1908153259_i64, %98, %c1647736072_i64, %c1647736072_i64, %98, %c1284375718_i64, %c564459480_i64, %c1908153259_i64, %c1908153259_i64, %c1284375718_i64, %c1908153259_i64, %c1647736072_i64, %97, %c1908153259_i64, %97, %97, %97, %98, %c1908153259_i64, %c1284375718_i64, %98, %c564459480_i64, %98, %c564459480_i64, %98, %c564459480_i64, %c564459480_i64, %c564459480_i64, %c1647736072_i64, %98, %c1284375718_i64, %c1647736072_i64, %97, %c1908153259_i64, %c1908153259_i64, %98, %98, %c1908153259_i64, %c1647736072_i64, %98, %c1647736072_i64, %98, %97, %c564459480_i64, %c1647736072_i64, %98, %c1647736072_i64, %c564459480_i64, %c564459480_i64, %c564459480_i64, %c1908153259_i64, %98, %c1284375718_i64, %c564459480_i64, %c1647736072_i64, %c1908153259_i64, %c1284375718_i64, %c1908153259_i64, %c1647736072_i64, %98, %97, %c564459480_i64, %c1908153259_i64, %97, %c1284375718_i64, %97, %c1647736072_i64, %c1908153259_i64, %c1647736072_i64, %97, %c1284375718_i64, %97, %97, %c564459480_i64, %c1647736072_i64, %c1908153259_i64, %c1284375718_i64, %c1908153259_i64, %97, %c1908153259_i64, %c1908153259_i64, %c1647736072_i64, %c1908153259_i64, %c564459480_i64, %c564459480_i64, %c1647736072_i64, %c1284375718_i64, %98, %c1647736072_i64, %c564459480_i64, %c1647736072_i64, %c1908153259_i64, %c564459480_i64, %98, %c1284375718_i64, %98, %97, %c1284375718_i64, %97, %c1647736072_i64, %c1284375718_i64, %c1908153259_i64, %c1908153259_i64, %97, %98, %98, %98, %97, %c1647736072_i64, %c564459480_i64, %c1284375718_i64, %c1908153259_i64, %97, %97, %98, %c1284375718_i64, %c1908153259_i64, %97, %c1908153259_i64, %c564459480_i64, %97, %c1647736072_i64, %c564459480_i64, %c564459480_i64, %97, %c1647736072_i64, %c1284375718_i64, %97, %c1284375718_i64, %98, %c1284375718_i64, %97, %c1647736072_i64, %c1647736072_i64, %98, %c1284375718_i64, %98, %97, %c1647736072_i64, %c1647736072_i64, %c1647736072_i64, %c1284375718_i64, %98, %c1647736072_i64, %c1908153259_i64, %c564459480_i64, %c564459480_i64, %c1647736072_i64, %98, %97, %c1908153259_i64, %c1908153259_i64, %98, %97, %c1908153259_i64, %c1284375718_i64, %c1647736072_i64, %c564459480_i64, %c1908153259_i64, %97, %c1647736072_i64, %97, %c1647736072_i64, %98, %c1284375718_i64, %c564459480_i64, %97, %c1647736072_i64, %c1647736072_i64, %98, %97, %c1647736072_i64, %c564459480_i64, %c564459480_i64, %c1647736072_i64, %c564459480_i64, %c1647736072_i64, %98, %97, %c1284375718_i64, %c1284375718_i64, %c1647736072_i64, %c1647736072_i64, %c1647736072_i64, %c1647736072_i64, %c1647736072_i64, %c1647736072_i64, %97, %98, %c1908153259_i64, %c564459480_i64, %98, %c1284375718_i64, %c564459480_i64, %c564459480_i64, %98, %c1284375718_i64, %c1284375718_i64, %c564459480_i64, %c1284375718_i64, %c1284375718_i64, %c1284375718_i64, %c564459480_i64, %c1647736072_i64, %97, %98, %c1908153259_i64, %c564459480_i64, %c1908153259_i64, %98, %c1284375718_i64, %c1908153259_i64, %c1284375718_i64, %98, %c1647736072_i64, %98, %c1284375718_i64, %98, %98, %c1908153259_i64, %97, %c1284375718_i64, %c564459480_i64, %c1284375718_i64, %97, %c1908153259_i64, %c1908153259_i64, %c1647736072_i64, %97, %c564459480_i64, %c1908153259_i64, %97, %c1647736072_i64, %c1647736072_i64, %c1908153259_i64, %97, %c1908153259_i64, %c1647736072_i64, %c1284375718_i64, %c1284375718_i64, %c1284375718_i64, %97, %97, %c1908153259_i64, %c1647736072_i64, %c564459480_i64, %c1284375718_i64, %c564459480_i64, %97, %c1908153259_i64, %97, %c564459480_i64, %c1908153259_i64, %c564459480_i64, %c1284375718_i64, %97, %c1647736072_i64, %98, %c564459480_i64, %c564459480_i64, %c1908153259_i64, %c1284375718_i64, %c564459480_i64, %97, %c1647736072_i64, %c1284375718_i64, %c564459480_i64, %c1647736072_i64, %97, %c1284375718_i64, %c564459480_i64, %c1908153259_i64, %97, %c1908153259_i64, %c1284375718_i64, %c1284375718_i64, %c564459480_i64, %c564459480_i64, %c1647736072_i64, %c564459480_i64, %c1647736072_i64, %c1284375718_i64, %98, %97, %98, %c1908153259_i64, %98, %c1908153259_i64, %c1647736072_i64, %c564459480_i64, %c1284375718_i64, %c1647736072_i64, %c1647736072_i64, %97, %c564459480_i64, %c1908153259_i64, %c1284375718_i64, %c1908153259_i64, %c1284375718_i64, %98, %c1908153259_i64, %c564459480_i64, %c1647736072_i64, %c1647736072_i64, %c1284375718_i64, %98, %98, %c1908153259_i64, %c1284375718_i64, %98, %c564459480_i64, %c1284375718_i64, %98, %c564459480_i64, %c1647736072_i64, %c1908153259_i64, %c1908153259_i64, %98, %c1647736072_i64, %c1284375718_i64, %c564459480_i64, %c564459480_i64, %c1284375718_i64, %c1284375718_i64, %98, %c564459480_i64, %c1647736072_i64, %c1284375718_i64, %c1647736072_i64, %c1284375718_i64, %c1908153259_i64, %c1908153259_i64, %98, %c1647736072_i64, %97, %c1284375718_i64, %97, %c1908153259_i64, %c1647736072_i64, %c1647736072_i64, %97, %97, %c564459480_i64, %98, %c1284375718_i64, %c564459480_i64, %97, %c1647736072_i64, %c1647736072_i64, %c1647736072_i64, %c1908153259_i64, %98, %c1908153259_i64, %c1647736072_i64, %98, %c1284375718_i64, %c564459480_i64, %c1647736072_i64, %c1647736072_i64, %97, %97, %c564459480_i64, %98, %98, %c1908153259_i64, %c1908153259_i64, %98, %c1908153259_i64, %c564459480_i64, %c1284375718_i64, %97, %c1647736072_i64, %c1647736072_i64, %c1908153259_i64, %c1284375718_i64, %c1908153259_i64, %c1284375718_i64, %97, %98, %97, %c564459480_i64, %c1284375718_i64, %c1647736072_i64, %c1647736072_i64, %c1647736072_i64, %c1284375718_i64, %c1284375718_i64, %97, %c1284375718_i64, %c1647736072_i64, %c1908153259_i64, %c1284375718_i64, %c1908153259_i64, %c1908153259_i64, %c1284375718_i64, %c1647736072_i64, %c1647736072_i64, %c1284375718_i64, %c1284375718_i64, %98, %c1647736072_i64, %c564459480_i64, %c1284375718_i64, %97, %c564459480_i64, %c1647736072_i64, %c1908153259_i64, %c564459480_i64, %c564459480_i64, %97, %c564459480_i64, %97, %c1647736072_i64, %97, %97, %c1647736072_i64, %c1647736072_i64, %c564459480_i64, %c1284375718_i64, %c564459480_i64, %97, %c1908153259_i64, %98, %98, %97, %97, %c564459480_i64, %c1647736072_i64, %97, %c1647736072_i64, %c1908153259_i64, %c1647736072_i64, %97, %c1647736072_i64, %c564459480_i64, %c1284375718_i64, %c1284375718_i64, %c1908153259_i64, %c1647736072_i64, %c1647736072_i64, %c1647736072_i64, %98, %c1647736072_i64, %98, %c1647736072_i64, %98, %c1647736072_i64, %98, %c1284375718_i64, %98, %c1647736072_i64, %c1647736072_i64, %c1647736072_i64, %c564459480_i64, %c564459480_i64, %c1284375718_i64, %c564459480_i64, %97, %c1908153259_i64, %c564459480_i64, %98, %98, %97, %98, %98, %97, %c1908153259_i64, %c564459480_i64, %c1647736072_i64, %c1284375718_i64, %c1908153259_i64, %c1647736072_i64, %c1647736072_i64, %97, %c1647736072_i64, %c1908153259_i64, %c564459480_i64, %c1647736072_i64, %97, %c1647736072_i64, %98, %c564459480_i64, %c564459480_i64, %97, %c1908153259_i64, %c564459480_i64, %c564459480_i64, %c1908153259_i64, %c1647736072_i64, %98, %c564459480_i64, %c1647736072_i64, %c1908153259_i64, %c564459480_i64, %c1647736072_i64, %c1647736072_i64, %98, %97, %c1908153259_i64, %c1908153259_i64, %97, %c1284375718_i64, %c1647736072_i64, %c564459480_i64, %c1647736072_i64, %97, %c564459480_i64, %97, %c564459480_i64, %c1647736072_i64, %c1647736072_i64, %97, %97, %97, %c1908153259_i64, %c564459480_i64, %98, %c1647736072_i64, %c564459480_i64, %98, %c1908153259_i64, %c564459480_i64, %98, %c1284375718_i64, %98, %c1284375718_i64, %97, %98, %c1284375718_i64, %c1284375718_i64, %c1647736072_i64, %97, %c1908153259_i64, %c1647736072_i64, %98, %98, %c1908153259_i64, %c1284375718_i64, %98, %c1908153259_i64, %c1908153259_i64, %c1908153259_i64, %97, %98, %c1284375718_i64, %c1284375718_i64, %c1647736072_i64, %c1908153259_i64, %98, %c1647736072_i64, %c1284375718_i64, %c1647736072_i64, %c564459480_i64, %c1908153259_i64, %c1284375718_i64, %c564459480_i64, %c1908153259_i64, %c564459480_i64, %c1908153259_i64, %c1908153259_i64, %c564459480_i64, %97, %c1647736072_i64, %c1647736072_i64, %c1908153259_i64, %97, %c564459480_i64, %c1647736072_i64, %c564459480_i64, %c1647736072_i64, %c564459480_i64, %c1647736072_i64, %97, %c564459480_i64, %97, %98, %c564459480_i64, %c1647736072_i64, %98, %c1284375718_i64, %c1647736072_i64, %97, %98, %c1284375718_i64, %97, %c1908153259_i64, %c564459480_i64, %c1647736072_i64, %c1647736072_i64, %c1284375718_i64, %c1908153259_i64, %c1284375718_i64, %c564459480_i64, %c1284375718_i64, %c1647736072_i64, %c564459480_i64, %98, %97, %c564459480_i64, %c1647736072_i64, %c1908153259_i64, %c564459480_i64, %c1284375718_i64, %c564459480_i64, %c1647736072_i64, %97, %c1647736072_i64, %c1647736072_i64, %c1647736072_i64, %98, %c564459480_i64, %c564459480_i64, %c564459480_i64, %c1908153259_i64, %c1647736072_i64, %97, %c1284375718_i64, %c1284375718_i64, %c1284375718_i64, %c1908153259_i64, %c1284375718_i64, %97, %c1284375718_i64, %98, %c1647736072_i64, %c564459480_i64, %c564459480_i64, %c1908153259_i64, %98, %c1284375718_i64, %98, %c1284375718_i64, %98, %c1284375718_i64, %c564459480_i64, %c564459480_i64, %97, %c564459480_i64, %c564459480_i64, %c1908153259_i64, %c564459480_i64, %98, %c1284375718_i64, %97, %98, %c1284375718_i64, %c1284375718_i64, %c1284375718_i64, %c1908153259_i64, %97, %c564459480_i64, %c564459480_i64, %c1284375718_i64, %c564459480_i64, %c1908153259_i64, %97, %c1647736072_i64, %c1284375718_i64, %c1284375718_i64, %c1284375718_i64, %c1908153259_i64, %98, %c1908153259_i64, %c564459480_i64, %c1908153259_i64, %c1908153259_i64, %98, %c1284375718_i64, %c564459480_i64, %98, %98, %c1908153259_i64, %c1647736072_i64, %c1647736072_i64, %c1647736072_i64, %97, %c564459480_i64, %c1908153259_i64, %c1284375718_i64, %c564459480_i64, %98, %98, %98, %c1647736072_i64, %98, %c564459480_i64, %97, %98, %c1647736072_i64, %c564459480_i64, %c1908153259_i64, %c1908153259_i64, %c564459480_i64, %97, %97, %c1647736072_i64, %97, %c564459480_i64, %98, %97, %98, %c564459480_i64, %97, %97, %c1647736072_i64, %97, %c1284375718_i64, %c1647736072_i64, %98, %c1647736072_i64, %c564459480_i64, %c1908153259_i64, %c564459480_i64, %c1908153259_i64, %98, %c1647736072_i64, %c1647736072_i64, %98, %97, %c564459480_i64, %c564459480_i64, %97, %c564459480_i64, %c1647736072_i64, %c564459480_i64, %c1647736072_i64, %c564459480_i64, %c564459480_i64, %c1647736072_i64, %c1647736072_i64, %98, %c564459480_i64, %c1284375718_i64, %c1647736072_i64, %c1908153259_i64, %c564459480_i64, %c1647736072_i64, %97, %c1284375718_i64, %98, %c1647736072_i64, %98, %97, %97, %98, %98, %c1908153259_i64, %98, %c1647736072_i64, %c1908153259_i64, %c1908153259_i64, %98, %97, %c1284375718_i64, %c1647736072_i64, %97, %c1908153259_i64, %97, %c1284375718_i64, %97, %c1284375718_i64, %c1908153259_i64, %c564459480_i64, %98, %c1284375718_i64, %97, %97, %c1284375718_i64, %c564459480_i64, %c1647736072_i64, %c1284375718_i64, %97, %c1647736072_i64, %c1284375718_i64, %97, %98, %97, %c564459480_i64, %c564459480_i64, %97, %c1908153259_i64, %97, %c1908153259_i64, %c1284375718_i64, %c1908153259_i64, %c1284375718_i64, %c564459480_i64, %c1647736072_i64, %c1284375718_i64, %c1284375718_i64, %c1647736072_i64, %98, %c1647736072_i64, %c564459480_i64, %c1908153259_i64, %c1647736072_i64, %c1908153259_i64, %c564459480_i64, %98, %c1908153259_i64, %c1284375718_i64, %97, %c1647736072_i64, %97, %98, %c1284375718_i64, %c1284375718_i64, %c1284375718_i64, %c1647736072_i64, %c564459480_i64, %97, %98, %98, %c1284375718_i64, %c1908153259_i64, %97, %98, %c1284375718_i64, %c1284375718_i64, %98, %c1647736072_i64, %c1647736072_i64, %c1908153259_i64, %c1908153259_i64, %c1908153259_i64, %c564459480_i64, %97, %c1908153259_i64, %c1908153259_i64, %c1647736072_i64, %c1908153259_i64, %c1284375718_i64, %97, %c564459480_i64, %c1908153259_i64, %c1908153259_i64, %98, %c1284375718_i64, %98, %c1647736072_i64, %c564459480_i64, %c564459480_i64, %c1284375718_i64, %c564459480_i64, %97, %98, %98, %c1284375718_i64, %c1284375718_i64, %c564459480_i64, %97, %c1908153259_i64, %c1284375718_i64, %c1284375718_i64, %98, %c1908153259_i64, %c1284375718_i64, %c564459480_i64, %c1647736072_i64, %c1647736072_i64, %c1647736072_i64, %c1908153259_i64, %c1908153259_i64, %98, %c1908153259_i64, %c564459480_i64, %c1647736072_i64, %97, %97, %c1284375718_i64, %98, %c1284375718_i64, %98, %c1647736072_i64, %97, %98, %c1908153259_i64, %c1908153259_i64, %c564459480_i64, %97, %97, %c1908153259_i64, %c1908153259_i64, %c1284375718_i64, %c564459480_i64, %98, %c1284375718_i64, %c1647736072_i64, %97, %c1908153259_i64, %c1908153259_i64, %98, %c1284375718_i64, %c1647736072_i64, %97, %c1908153259_i64, %c1908153259_i64, %c1908153259_i64, %c1908153259_i64, %98, %c1284375718_i64, %c1647736072_i64, %c1908153259_i64, %c564459480_i64, %c1908153259_i64, %98, %97, %97, %c564459480_i64, %97, %c1647736072_i64, %c1647736072_i64, %c1647736072_i64, %c564459480_i64, %c564459480_i64, %c564459480_i64, %c1284375718_i64, %c1284375718_i64, %c1647736072_i64, %97, %c1908153259_i64, %c1908153259_i64, %c564459480_i64, %c1647736072_i64, %97, %c564459480_i64, %c1908153259_i64, %c564459480_i64, %97, %97, %c1908153259_i64, %97, %c1284375718_i64, %98, %97, %c564459480_i64, %97, %c564459480_i64, %c564459480_i64, %98, %98, %c564459480_i64, %97, %c1284375718_i64, %97, %c1284375718_i64, %c1647736072_i64, %c1647736072_i64, %c1284375718_i64, %c1908153259_i64, %c1908153259_i64, %c564459480_i64, %c1647736072_i64, %c564459480_i64, %98, %c1908153259_i64, %c564459480_i64, %98, %97, %c1908153259_i64, %c1284375718_i64, %c564459480_i64, %c1284375718_i64, %97, %98, %c564459480_i64, %98, %97 : tensor<8x15x9xi64>
    %236 = math.powf %reduced, %reduced : tensor<8xf32>
    %237 = scf.while (%arg1 = %cst_1) : (f32) -> f32 {
      %273 = math.log1p %2 : tensor<15x1xf32>
      %274 = scf.index_switch %c10 -> memref<15x1xi64> 
      case 1 {
        %279 = arith.divf %cst_0, %cst_4 : f16
        %280 = math.cos %59 : tensor<9x15x8xf16>
        %281 = vector.broadcast %158 : index to vector<8xindex>
        %282 = vector.broadcast %true_23 : i1 to vector<8xi1>
        %283 = vector.broadcast %c27427_i16 : i16 to vector<8xi16>
        vector.scatter %alloc_11[%c7, %c0] [%281], %282, %283 : memref<15x1xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %284 = arith.maxf %cst_0, %cst_0 : f16
        %285 = vector.bitcast %48 : vector<8x1x15xi64> to vector<8x1x15xi64>
        %286 = arith.xori %97, %c564459480_i64 : i64
        %287 = bufferization.clone %alloc_10 : memref<8x1x15xf32> to memref<8x1x15xf32>
        memref.assume_alignment %alloc_12, 4 : memref<9x15x8xi16>
        %288 = math.exp2 %144 : tensor<9x15x8xf16>
        %289 = vector.broadcast %cst_4 : f16 to vector<9x15x8xf16>
        %290 = math.atan %15 : tensor<15x1xf16>
        %291 = arith.negf %cst_0 : f16
        %292 = vector.load %alloc_15[%c5, %c0] : memref<15x1xi32>, vector<9x15x8xi32>
        %293 = arith.maxsi %c1284375718_i64, %c564459480_i64 : i64
        %294 = math.absf %from_elements_28 : tensor<8x1x15xf16>
        %295 = math.exp2 %cst_0 : f16
        scf.yield %alloc : memref<15x1xi64>
      }
      case 2 {
        %279 = tensor.empty(%c10) : tensor<?x1xf32>
        %280 = math.fma %5, %5, %5 : tensor<8x15x9xf32>
        %281 = vector.multi_reduction <minsi>, %168, %40 [] : vector<1xi64> to vector<1xi64>
        %282 = math.atan2 %from_elements_32, %5 : tensor<8x15x9xf32>
        %283 = index.maxs %200, %186
        %284 = math.copysign %10, %12 : tensor<8x1x15xf32>
        %285 = vector.load %alloc_8[%c12, %c0] : memref<15x1xi1>, vector<8x15x9xi1>
        %286 = tensor.empty() : tensor<8x1x15xf32>
        %287 = vector.insertelement %c564459480_i64, %40[%220 : index] : vector<1xi64>
        %288 = vector.create_mask %93, %c1, %176 : vector<8x1x15xi1>
        %expanded = tensor.expand_shape %7 [[0], [1], [2, 3]] : tensor<8x15x9xi64> into tensor<8x15x9x1xi64>
        %alloc_42 = memref.alloc() : memref<8x15x9xi64>
        %289 = math.fpowi %arg1, %c606377018_i32 : f32, i32
        %290 = vector.bitcast %19 : vector<1xi64> to vector<1xi64>
        %291 = vector.broadcast %c6 : index to vector<9xindex>
        %292 = vector.broadcast %false : i1 to vector<9xi1>
        %293 = vector.broadcast %cst_0 : f16 to vector<9xf16>
        vector.scatter %235[%c10, %c0] [%291], %292, %293 : memref<15x1xf16>, vector<9xindex>, vector<9xi1>, vector<9xf16>
        %294 = tensor.empty() : tensor<9x15x8xi64>
        scf.yield %alloc : memref<15x1xi64>
      }
      default {
        %279 = math.log10 %2 : tensor<15x1xf32>
        %280 = index.sub %c11, %c4
        %281 = arith.minsi %97, %97 : i64
        %282 = bufferization.clone %alloc_10 : memref<8x1x15xf32> to memref<8x1x15xf32>
        %283 = vector.extract_strided_slice %47 {offsets = [3], sizes = [4], strides = [1]} : vector<8x1x15xi32> to vector<4x1x15xi32>
        %284 = arith.divui %98, %c1908153259_i64 : i64
        %285 = vector.extract %181[7] : vector<15x1xf32>
        %286 = vector.create_mask %c5, %c1 : vector<15x1xi1>
        %287 = vector.bitcast %48 : vector<8x1x15xi64> to vector<8x1x15xi64>
        %288 = index.maxs %c10, %158
        %289 = index.divu %280, %c4
        %290 = bufferization.to_memref %20 : memref<8xf32>
        %291 = math.copysign %2, %2 : tensor<15x1xf32>
        %292 = math.expm1 %21 : tensor<f32>
        %293 = arith.minf %cst, %cst_1 : f32
        %294 = tensor.empty() : tensor<9x15x8xi16>
        scf.yield %alloc : memref<15x1xi64>
      }
      %rank = tensor.rank %15 : tensor<15x1xf16>
      %275 = affine.for %arg2 = 0 to 109 iter_args(%arg3 = %113) -> (memref<15x1xi1>) {
        affine.yield %alloc_19 : memref<15x1xi1>
      }
      %cst_41 = arith.constant 0x4CD5FF70 : f32
      %276 = bufferization.to_memref %10 : memref<8x1x15xf32>
      %277 = affine.if affine_set<(d0, d1, d2, d3) : (-d3 >= 0, d1 floordiv 4 >= 0)>(%c11, %c2, %c3, %c15) -> i16 {
        %279 = vector.load %alloc_18[%c1, %c0, %c7] : memref<8x1x15xi1>, vector<8x15x9xi1>
        %280 = arith.divsi %c1908153259_i64, %c1284375718_i64 : i64
        %281 = arith.xori %c27427_i16, %c23984_i16 : i16
        %c1675905707_i64 = arith.constant 1675905707 : i64
        %282 = vector.broadcast %c13 : index to vector<1xindex>
        %283 = vector.broadcast %true : i1 to vector<1xi1>
        vector.scatter %alloc_18[%c0, %c0, %c2] [%282], %283, %283 : memref<8x1x15xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
        %284 = math.copysign %2, %2 : tensor<15x1xf32>
        %from_elements_42 = tensor.from_elements %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c1069903657_i32, %c1069903657_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c1069903657_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c1069903657_i32, %c1069903657_i32, %c606377018_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c1069903657_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c1069903657_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c1069903657_i32, %c1069903657_i32, %c1069903657_i32, %c1069903657_i32, %c1069903657_i32, %c1069903657_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c1069903657_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c1069903657_i32, %c1069903657_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c1069903657_i32, %c1069903657_i32, %c1069903657_i32, %c1069903657_i32, %c606377018_i32, %c1069903657_i32, %c1069903657_i32, %c1069903657_i32 : tensor<8x1x15xi32>
        %285 = tensor.empty() : tensor<1x8xi32>
        %286 = tensor.empty() : tensor<15x8xi32>
        %287 = linalg.matmul ins(%116, %285 : tensor<15x1xi32>, tensor<1x8xi32>) outs(%286 : tensor<15x8xi32>) -> tensor<15x8xi32>
        affine.yield %c23984_i16 : i16
      } else {
        %279 = vector.broadcast %c606377018_i32 : i32 to vector<8x15x9xi32>
        %280 = vector.gather %116[%c8, %rank] [%279], %202, %279 : tensor<15x1xi32>, vector<8x15x9xi32>, vector<8x15x9xi1>, vector<8x15x9xi32> into vector<8x15x9xi32>
        %281 = vector.broadcast %cst_2 : f32 to vector<8x15x9xf32>
        %282 = vector.fma %281, %281, %281 : vector<8x15x9xf32>
        %283 = arith.addf %cst_2, %cst : f32
        %284 = arith.xori %c1647736072_i64, %c564459480_i64 : i64
        %285 = vector.multi_reduction <or>, %88, %45 [] : vector<8x1x15xi64> to vector<8x1x15xi64>
        %286 = math.tan %59 : tensor<9x15x8xf16>
        %287 = vector.create_mask %c5, %c15, %93 : vector<8x1x15xi1>
        %288 = arith.minsi %97, %c564459480_i64 : i64
        affine.yield %c23984_i16 : i16
      }
      %278 = index.divu %c14, %176
      scf.condition(%true_23) %arg1 : f32
    } do {
    ^bb0(%arg1: f32):
      %273 = tensor.empty() : tensor<15xf16>
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%144, %273, %273 : tensor<9x15x8xf16>, tensor<15xf16>, tensor<15xf16>) outs(%11 : tensor<8x15x9xf16>) {
      ^bb0(%in: f16, %in_43: f16, %in_44: f16, %out: f16):
        %286 = math.log2 %cst_2 : f32
        %287 = math.absf %20 : tensor<8xf32>
        %288 = math.log1p %cst_3 : f16
        %289 = index.casts %c13 : index to i32
        %290 = vector.create_mask %158, %220, %c10 : vector<8x15x9xi1>
        %291 = math.copysign %cst_4, %cst_4 : f16
        %292 = math.log10 %6 : tensor<8x1x15xf16>
        %293 = math.log10 %10 : tensor<8x1x15xf32>
        memref.copy %112, %alloc_15 : memref<15x1xi32> to memref<15x1xi32>
        %true_45 = index.bool.constant true
        %294 = vector.broadcast %cst_1 : f32 to vector<8x1x15xf32>
        %295 = vector.fma %294, %163, %162 : vector<8x1x15xf32>
        bufferization.dealloc_tensor %cast_25 : tensor<?x?x?xf16>
        %296 = vector.shuffle %202, %290 [0, 2, 3, 5, 6, 9, 10, 11, 12, 14] : vector<8x15x9xi1>, vector<8x15x9xi1>
        %297 = arith.ori %98, %c1284375718_i64 : i64
        %298 = math.exp2 %cst_1 : f32
        %299 = arith.remf %in_44, %cst_3 : f16
        %300 = vector.splat %in_44 : vector<8x15x9xf16>
        %301 = vector.broadcast %cst_4 : f16 to vector<9x15x8xf16>
        %302 = vector.broadcast %c1069903657_i32 : i32 to vector<9x15x8xi32>
        %303 = vector.gather %6[%158, %c4, %c3] [%302], %126, %301 : tensor<8x1x15xf16>, vector<9x15x8xi32>, vector<9x15x8xi1>, vector<9x15x8xf16> into vector<9x15x8xf16>
        %alloc_46 = memref.alloc() : memref<8x15x9xi32>
        %304 = math.floor %cst_3 : f16
        %305 = arith.maxsi %c606377018_i32, %c606377018_i32 : i32
        %306 = arith.cmpf ugt, %cst_4, %cst_0 : f16
        %307 = affine.apply affine_map<(d0, d1) -> (((d1 - d0 + 4) * 2) floordiv 32 + 128)>(%c8, %c10)
        %308 = arith.shli %c1284375718_i64, %c564459480_i64 : i64
        %cst_47 = arith.constant 1.90239322E+9 : f32
        %309 = vector.bitcast %61 : vector<15x1xi1> to vector<15x1xi1>
        %310 = vector.load %alloc_14[%c2, %c6, %c2] : memref<9x15x8xf32>, vector<8x1x15xf32>
        %311 = vector.broadcast %true_45 : i1 to vector<2x1x8x9xi1>
        %312 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d4)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d4, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %231, %290, %311 : vector<2x1x15xi1>, vector<8x15x9xi1> into vector<2x1x8x9xi1>
        %313 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %120, %223, %98 : vector<1xi64>, vector<1xi64> into i64
        %314 = vector.extract_strided_slice %73 {offsets = [8], sizes = [5], strides = [1]} : vector<15x1xi64> to vector<5x1xi64>
        %315 = math.atan2 %arg1, %arg1 : f32
        %316 = vector.reduction <minsi>, %205 : vector<15xi64> into i64
        linalg.yield %in : f16
      } -> tensor<8x15x9xf16>
      %275 = math.absf %reduced : tensor<8xf32>
      %276 = math.log10 %cst_0 : f16
      %false_41 = index.bool.constant false
      %277 = arith.maxui %c23984_i16, %c27427_i16 : i16
      %278 = affine.apply affine_map<(d0, d1) -> ((-(d1 mod 8)) floordiv 16 + d1 * 2)>(%200, %220)
      %279 = arith.subi %c606377018_i32, %c606377018_i32 : i32
      %expanded = tensor.expand_shape %9 [[0], [1], [2, 3]] : tensor<8x1x15xi16> into tensor<8x1x15x1xi16>
      %cast_42 = tensor.cast %7 : tensor<8x15x9xi64> to tensor<?x?x?xi64>
      bufferization.dealloc_tensor %11 : tensor<8x15x9xf16>
      %280 = arith.maxui %c1069903657_i32, %c1069903657_i32 : i32
      %281 = vector.bitcast %126 : vector<9x15x8xi1> to vector<9x15x8xi1>
      %282 = vector.broadcast %true : i1 to vector<15x1xi1>
      %283 = math.rsqrt %22 : tensor<f32>
      %284 = math.atan %59 : tensor<9x15x8xf16>
      %285 = math.exp %arg1 : f32
      scf.yield %arg1 : f32
    }
    %238 = vector.insertelement %c1647736072_i64, %120[%176 : index] : vector<1xi64>
    %239 = index.floordivs %c8, %c5
    %240 = arith.shli %c606377018_i32, %c1069903657_i32 : i32
    %241 = vector.shuffle %39, %202 [0, 2, 4, 9, 12, 15] : vector<8x15x9xi1>, vector<8x15x9xi1>
    %242 = math.absf %cst : f32
    %alloca = memref.alloca() : memref<15x1xf16>
    %243 = math.rsqrt %cst : f32
    %244 = vector.shuffle %231, %231 [0, 1, 2] : vector<2x1x15xi1>, vector<2x1x15xi1>
    %245 = index.divu %145, %c0
    %246 = math.copysign %cst_4, %cst_3 : f16
    %247 = math.round %12 : tensor<8x1x15xf32>
    %248 = arith.cmpf one, %cst_0, %cst_0 : f16
    scf.index_switch %c1 
    case 1 {
      %generated_41 = tensor.generate %c15, %180 {
      ^bb0(%arg1: index, %arg2: index):
        %290 = math.sqrt %cst_2 : f32
        %291 = math.absf %5 : tensor<8x15x9xf32>
        %292 = math.tan %59 : tensor<9x15x8xf16>
        %293 = index.maxu %145, %c3
        tensor.yield %c606377018_i32 : i32
      } : tensor<?x?xi32>
      %273 = vector.broadcast %c606377018_i32 : i32 to vector<8x15x9xi32>
      %274 = vector.gather %alloc_17[%c5, %145, %193] [%273], %202, %273 : memref<9x15x8xi32>, vector<8x15x9xi32>, vector<8x15x9xi1>, vector<8x15x9xi32> into vector<8x15x9xi32>
      %275 = vector.broadcast %c5 : index to vector<9xindex>
      %276 = vector.broadcast %true : i1 to vector<9xi1>
      %277 = vector.broadcast %c1069903657_i32 : i32 to vector<9xi32>
      vector.scatter %alloc_20[%c0, %c2] [%275], %276, %277 : memref<1x15xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
      %278 = tensor.empty() : tensor<15x15xi1>
      %279 = tensor.empty() : tensor<8x15xi1>
      %280 = linalg.matmul ins(%collapsed, %278 : tensor<8x15xi1>, tensor<15x15xi1>) outs(%279 : tensor<8x15xi1>) -> tensor<8x15xi1>
      %281 = math.sqrt %20 : tensor<8xf32>
      %true_42 = index.bool.constant true
      %282 = scf.while (%arg1 = %126) : (vector<9x15x8xi1>) -> vector<9x15x8xi1> {
        %290 = arith.mulf %cst_2, %cst_1 : f32
        %291 = vector.insertelement %c1908153259_i64, %36[%135 : index] : vector<1xi64>
        %292 = math.round %6 : tensor<8x1x15xf16>
        %c1_i32 = arith.constant 1 : i32
        %c0_i32 = arith.constant 0 : i32
        %293 = vector.transfer_read %alloc_17[%193, %c3, %c11], %c0_i32 {permutation_map = affine_map<(d0, d1, d2) -> (d0, 0)>} : memref<9x15x8xi32>, vector<9x9xi32>
        %294 = arith.divsi %97, %c1647736072_i64 : i64
        %295 = arith.muli %true_42, %false : i1
        %296 = math.powf %from_elements_32, %5 : tensor<8x15x9xf32>
        %297 = affine.min affine_map<(d0, d1) -> ((d0 floordiv 8) floordiv 64, d0 + 64, (d0 mod 32) * 2, (d0 floordiv 8) * 64)>(%145, %158)
        scf.condition(%true) %126 : vector<9x15x8xi1>
      } do {
      ^bb0(%arg1: vector<9x15x8xi1>):
        %290 = affine.load %103[%c3, %c10, %c10] : memref<8x15x9xi32>
        %291 = math.exp2 %59 : tensor<9x15x8xf16>
        %292 = tensor.empty(%c3, %200) : tensor<?x?xf32>
        %from_elements_43 = tensor.from_elements %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c27427_i16, %c23984_i16, %c23984_i16, %c23984_i16, %c27427_i16, %c23984_i16, %c23984_i16 : tensor<8x15x9xi16>
        %collapsed_44 = tensor.collapse_shape %generated_41 [[0, 1]] : tensor<?x?xi32> into tensor<?xi32>
        %alloc_45 = memref.alloc() : memref<9x15x8xf16>
        memref.copy %alloc_9, %alloc_45 : memref<9x15x8xf16> to memref<9x15x8xf16>
        %293 = arith.shli %true_42, %false : i1
        %collapsed_46 = tensor.collapse_shape %generated [[0, 1], [2]] : tensor<?x?x9xi64> into tensor<?x9xi64>
        %294 = vector.reduction <minui>, %205 : vector<15xi64> into i64
        %295 = arith.xori %c564459480_i64, %c1908153259_i64 : i64
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %223, %70, %c1284375718_i64 : vector<1xi64>, vector<1xi64> into i64
        %297 = math.log1p %cst_4 : f16
        %true_47 = index.bool.constant true
        %298 = vector.reduction <add>, %223 : vector<1xi64> into i64
        %alloc_48 = memref.alloc() : memref<9x15x8xf32>
        %299 = vector.create_mask %239, %230 : vector<15x1xi1>
        scf.yield %126 : vector<9x15x8xi1>
      }
      %283 = math.cttz %198 : tensor<135x15xi16>
      %284 = arith.maxui %true_42, %true : i1
      %285 = index.maxs %145, %175
      %286 = bufferization.to_memref %5 : memref<8x15x9xf32>
      %287 = arith.negf %cst_3 : f16
      %288 = memref.atomic_rmw assign %c606377018_i32, %alloc_20[%c0, %c11] : (i32, memref<1x15xi32>) -> i32
      %289 = math.floor %2 : tensor<15x1xf32>
      scf.execute_region {
        %290 = vector.broadcast %true : i1 to vector<2x15x8x15xi1>
        %291 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d0, d4, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d2, d4, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxui>} %231, %138, %290 : vector<2x1x15xi1>, vector<8x1x15xi1> into vector<2x15x8x15xi1>
        %rank = tensor.rank %14 : tensor<15x1xi64>
        %292 = vector.shuffle %138, %46 [1, 2, 3, 4, 6, 7, 9, 13, 15] : vector<8x1x15xi1>, vector<8x1x15xi1>
        %293 = arith.floordivsi %c1284375718_i64, %c1908153259_i64 : i64
        %294 = arith.maxui %98, %98 : i64
        %collapsed_43 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<8x15x9xi32> into tensor<120x9xi32>
        %295 = arith.muli %c1908153259_i64, %c1908153259_i64 : i64
        %296 = index.add %193, %180
        %297 = vector.extract %221[0] : vector<1x15xf16>
        %298 = math.exp2 %from_elements_32 : tensor<8x15x9xf32>
        %299 = math.round %144 : tensor<9x15x8xf16>
        %300 = index.divu %c5, %114
        %301 = math.log1p %2 : tensor<15x1xf32>
        %302 = vector.load %alloc_9[%c1, %c9, %c3] : memref<9x15x8xf16>, vector<8x15x9xf16>
        %303 = affine.min affine_map<(d0, d1) -> ((d1 mod 64) floordiv 4, d0 mod 32)>(%239, %131)
        %304 = math.exp %cst_3 : f16
        scf.yield
      }
      %c1046669752_i64 = arith.constant 1046669752 : i64
      scf.yield
    }
    case 2 {
      %alloc_41 = memref.alloc() : memref<8x15x9xi64>
      %273 = math.atan2 %18, %reduced : tensor<8xf32>
      %274 = arith.xori %true_23, %false : i1
      %275 = math.copysign %2, %2 : tensor<15x1xf32>
      %276 = index.divu %89, %c11
      %277 = math.powf %15, %15 : tensor<15x1xf16>
      %278 = vector.extract_strided_slice %47 {offsets = [3, 0], sizes = [5, 1], strides = [1, 1]} : vector<8x1x15xi32> to vector<5x1x15xi32>
      bufferization.dealloc_tensor %14 : tensor<15x1xi64>
      %279 = arith.shrui %false, %true : i1
      %alloca_42 = memref.alloca() : memref<15x1xi32>
      %280 = bufferization.clone %alloc_16 : memref<15x1xi1> to memref<15x1xi1>
      %281 = arith.shrsi %c606377018_i32, %c606377018_i32 : i32
      %282 = vector.extract %231[1, 0] : vector<2x1x15xi1>
      %283 = vector.gather %212[%220, %c5] [%62], %61, %62 : tensor<15x1xi32>, vector<15x1xi32>, vector<15x1xi1>, vector<15x1xi32> into vector<15x1xi32>
      %284 = math.ceil %5 : tensor<8x15x9xf32>
      affine.store %true, %alloc_19[%c3, %c10] : memref<15x1xi1>
      scf.yield
    }
    case 3 {
      %273 = affine.for %arg1 = 0 to 43 iter_args(%arg2 = %163) -> (vector<8x1x15xf32>) {
        affine.yield %163 : vector<8x1x15xf32>
      }
      %rank = tensor.rank %1 : tensor<8x15x9xi32>
      %274 = math.tan %10 : tensor<8x1x15xf32>
      %275 = math.atan2 %2, %2 : tensor<15x1xf32>
      %276 = scf.index_switch %c2 -> tensor<8x1x15xi64> 
      case 1 {
        %290 = affine.min affine_map<(d0, d1) -> ((d0 + 32) * 32, d0 + 32, (d0 + 32) * 32, -(d0 + 32))>(%c10, %180)
        %291 = vector.shuffle %40, %168 [0] : vector<1xi64>, vector<1xi64>
        %292 = index.floordivs %c12, %220
        %293 = math.exp %from_elements_28 : tensor<8x1x15xf16>
        %294 = arith.ceildivsi %true, %false : i1
        %295 = arith.mulf %cst_4, %cst_4 : f16
        %296 = arith.ceildivsi %c27427_i16, %c27427_i16 : i16
        %297 = tensor.empty() : tensor<8x1x15xi32>
        %298 = math.fpowi %6, %297 : tensor<8x1x15xf16>, tensor<8x1x15xi32>
        %299 = arith.xori %c1284375718_i64, %c564459480_i64 : i64
        %c0_i16 = arith.constant 0 : i16
        %300 = vector.transfer_read %3[%rank, %c7, %rank], %c0_i16 : tensor<9x15x8xi16>, vector<15xi16>
        %301 = arith.maxui %c1647736072_i64, %c1284375718_i64 : i64
        %302 = arith.shli %c1908153259_i64, %98 : i64
        %303 = math.exp2 %cst_1 : f32
        %304 = arith.remf %cst, %cst_1 : f32
        %305 = vector.extract %126[8] : vector<9x15x8xi1>
        %306 = vector.broadcast %cst_2 : f32 to vector<15xf32>
        %307 = vector.insert %306, %162 [3, 0] : vector<15xf32> into vector<8x1x15xf32>
        %308 = tensor.empty() : tensor<8x1x15xi64>
        scf.yield %308 : tensor<8x1x15xi64>
      }
      case 2 {
        %290 = index.sizeof
        %291 = math.absf %12 : tensor<8x1x15xf32>
        %292 = vector.multi_reduction <and>, %36, %40 [] : vector<1xi64> to vector<1xi64>
        %293 = math.absi %true : i1
        %294 = index.sub %180, %c13
        %295 = math.log2 %cst_1 : f32
        %296 = affine.apply affine_map<(d0) -> (d0 ceildiv 2)>(%c2)
        %297 = math.fma %reduced, %20, %reduced : tensor<8xf32>
        %298 = math.copysign %5, %5 : tensor<8x15x9xf32>
        %299 = index.casts %c11 : index to i32
        %300 = math.exp %20 : tensor<8xf32>
        %301 = vector.bitcast %46 : vector<8x1x15xi1> to vector<8x1x15xi1>
        %302 = math.copysign %15, %15 : tensor<15x1xf16>
        %303 = math.round %cst_3 : f16
        affine.store %c1069903657_i32, %112[%c13, %c3] : memref<15x1xi32>
        %304 = vector.broadcast %cst_1 : f32 to vector<15x1xf32>
        %305 = vector.fma %304, %69, %181 : vector<15x1xf32>
        %306 = tensor.empty() : tensor<8x1x15xi64>
        scf.yield %306 : tensor<8x1x15xi64>
      }
      default {
        %290 = vector.shuffle %47, %47 [1, 2, 6, 9, 10, 15] : vector<8x1x15xi32>, vector<8x1x15xi32>
        %inserted_41 = tensor.insert %97 into %generated_34[%c0, %c0, %c8] : tensor<?x15x9xi64>
        %291 = math.rsqrt %from_elements_32 : tensor<8x15x9xf32>
        %292 = vector.broadcast %c564459480_i64 : i64 to vector<15x1xi64>
        %293 = math.roundeven %cst_3 : f16
        %alloca_42 = memref.alloca() : memref<15x1xi16>
        %294 = index.floordivs %230, %c13
        %295 = arith.shli %97, %98 : i64
        %296 = vector.broadcast %c5 : index to vector<1xindex>
        %297 = vector.broadcast %true_23 : i1 to vector<1xi1>
        %298 = vector.broadcast %c1069903657_i32 : i32 to vector<1xi32>
        vector.scatter %alloc_20[%c0, %c1] [%296], %297, %298 : memref<1x15xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
        %299 = vector.broadcast %93 : index to vector<15xindex>
        %300 = vector.broadcast %false : i1 to vector<15xi1>
        %301 = vector.broadcast %c1069903657_i32 : i32 to vector<15xi32>
        vector.scatter %228[%c0, %c14] [%299], %300, %301 : memref<1x15xi32>, vector<15xindex>, vector<15xi1>, vector<15xi32>
        %alloca_43 = memref.alloca() : memref<9x15x8xi32>
        %302 = vector.bitcast %202 : vector<8x15x9xi1> to vector<8x15x9xi1>
        %303 = math.log2 %11 : tensor<8x15x9xf16>
        %304 = math.copysign %144, %59 : tensor<9x15x8xf16>
        %305 = math.round %5 : tensor<8x15x9xf32>
        %306 = vector.multi_reduction <xor>, %120, %c1284375718_i64 [0] : vector<1xi64> to i64
        %307 = tensor.empty() : tensor<8x1x15xi64>
        scf.yield %307 : tensor<8x1x15xi64>
      }
      %277 = arith.cmpf ult, %cst_0, %cst_4 : f16
      %278 = arith.subi %97, %c564459480_i64 : i64
      %279 = arith.shli %c1069903657_i32, %c606377018_i32 : i32
      %280 = math.round %144 : tensor<9x15x8xf16>
      %281 = arith.minsi %c1908153259_i64, %c1284375718_i64 : i64
      %282 = arith.xori %c27427_i16, %c23984_i16 : i16
      %283 = arith.shrui %c27427_i16, %c27427_i16 : i16
      %284 = vector.broadcast %c12 : index to vector<15xindex>
      %285 = vector.broadcast %true : i1 to vector<15xi1>
      %286 = vector.broadcast %cst_2 : f32 to vector<15xf32>
      vector.scatter %119[%c2, %c5, %c8] [%284], %285, %286 : memref<8x15x9xf32>, vector<15xindex>, vector<15xi1>, vector<15xf32>
      %287 = vector.shuffle %168, %223 [1] : vector<1xi64>, vector<1xi64>
      vector.print %72 : vector<15x1xi64>
      %288 = vector.broadcast %c27427_i16 : i16 to vector<15xi16>
      %289 = vector.multi_reduction <or>, %215, %288 [1] : vector<15x1xi16> to vector<15xi16>
      scf.yield
    }
    case 4 {
      %273 = arith.remf %cst_1, %cst_1 : f32
      vector.print %19 : vector<1xi64>
      %274 = index.maxs %c4, %93
      %275 = arith.xori %c23984_i16, %c27427_i16 : i16
      %276 = arith.addi %98, %c1284375718_i64 : i64
      %277 = arith.divsi %c1908153259_i64, %c1647736072_i64 : i64
      %278 = arith.shrui %c23984_i16, %c27427_i16 : i16
      %279 = arith.minsi %c27427_i16, %c27427_i16 : i16
      %280 = arith.maxui %c606377018_i32, %c1069903657_i32 : i32
      %281 = index.floordivs %193, %131
      %282 = vector.broadcast %c2 : index to vector<1xindex>
      %283 = vector.broadcast %true_23 : i1 to vector<1xi1>
      %284 = vector.broadcast %cst_3 : f16 to vector<1xf16>
      vector.scatter %161[%c5, %c0] [%282], %283, %284 : memref<15x1xf16>, vector<1xindex>, vector<1xi1>, vector<1xf16>
      %285 = math.absf %cst_0 : f16
      %286 = arith.cmpf ule, %cst_1, %cst : f32
      %287 = vector.broadcast %c27427_i16 : i16 to vector<8x15x9xi16>
      %288 = index.ceildivs %220, %274
      %expanded = tensor.expand_shape %15 [[0], [1, 2]] : tensor<15x1xf16> into tensor<15x1x1xf16>
      scf.yield
    }
    default {
      %collapsed_41 = tensor.collapse_shape %from_elements [[0, 1], [2]] : tensor<8x1x15xi1> into tensor<8x15xi1>
      %273 = vector.bitcast %209 : vector<8x1x15xf16> to vector<8x1x15xf16>
      %274 = arith.mulf %cst_4, %cst_3 : f16
      %275 = math.exp2 %cst_2 : f32
      %expanded = tensor.expand_shape %from_elements [[0], [1], [2, 3]] : tensor<8x1x15xi1> into tensor<8x1x15x1xi1>
      %276 = arith.shli %false, %false : i1
      %277 = vector.bitcast %191 : vector<8x1xf32> to vector<8x1xf32>
      %278 = math.log1p %cst : f32
      %279 = math.fpowi %59, %0 : tensor<9x15x8xf16>, tensor<9x15x8xi32>
      %cst_42 = arith.constant 1.000000e+00 : f32
      %280 = vector.transfer_read %alloc_7[%c5, %c13, %239], %cst_42 : memref<8x1x15xf32>, vector<8x1xf32>
      memref.store %c1647736072_i64, %alloc[%c1, %c0] : memref<15x1xi64>
      %281 = vector.load %alloc_20[%c0, %c10] : memref<1x15xi32>, vector<9x15x8xi32>
      %282 = index.divu %c14, %131
      %extracted = tensor.extract %4[%c6, %c2, %c3] : tensor<9x15x8xi32>
      %283 = index.floordivs %c8, %230
      %284 = math.ceil %cst_3 : f16
    }
    %249 = math.tanh %11 : tensor<8x15x9xf16>
    %250 = bufferization.clone %alloc_7 : memref<8x1x15xf32> to memref<8x1x15xf32>
    %251 = vector.broadcast %false : i1 to vector<9x15x8xi1>
    %252 = arith.divf %cst_4, %cst_3 : f16
    %253 = math.log10 %22 : tensor<f32>
    %254 = math.cos %cst_4 : f16
    %255 = arith.remf %cst_3, %cst_3 : f16
    %256 = affine.apply affine_map<(d0, d1, d2, d3) -> (-d0 - 8)>(%131, %245, %239, %200)
    %257 = index.sizeof
    %258 = index.maxu %c10, %c3
    %259 = math.log1p %cst_1 : f32
    %260 = bufferization.clone %alloc_10 : memref<8x1x15xf32> to memref<8x1x15xf32>
    %alloc_37 = memref.alloc() : memref<9x15x8xi1>
    %261 = vector.gather %alloc_37[%c6, %176, %131] [%47], %94, %146 : memref<9x15x8xi1>, vector<8x1x15xi32>, vector<8x1x15xi1>, vector<8x1x15xi1> into vector<8x1x15xi1>
    %262 = vector.shuffle %82, %63 [0, 2, 4, 5, 7, 8, 9, 11, 12, 13, 16, 22, 25, 27, 29] : vector<15x1xf16>, vector<15x1xf16>
    %263 = math.absi %14 : tensor<15x1xi64>
    %alloc_38 = memref.alloc() : memref<1x8xf32>
    %264 = tensor.empty() : tensor<15x8xf32>
    %265 = linalg.matmul ins(%2, %alloc_38 : tensor<15x1xf32>, memref<1x8xf32>) outs(%264 : tensor<15x8xf32>) -> tensor<15x8xf32>
    %266 = math.ceil %11 : tensor<8x15x9xf16>
    %267 = arith.negf %cst_0 : f16
    %268 = arith.maxui %c1069903657_i32, %c606377018_i32 : i32
    %269 = vector.insertelement %c564459480_i64, %223[%135 : index] : vector<1xi64>
    %270 = tensor.empty() : tensor<9x15x8xf16>
    %271 = linalg.copy ins(%59 : tensor<9x15x8xf16>) outs(%270 : tensor<9x15x8xf16>) -> tensor<9x15x8xf16>
    %alloc_39 = memref.alloc() : memref<8x9x15xf16>
    linalg.transpose ins(%271 : tensor<9x15x8xf16>) outs(%alloc_39 : memref<8x9x15xf16>) permutation = [2, 0, 1] 
    %alloc_40 = memref.alloc() : memref<8x15xi32>
    linalg.reduce ins(%68 : tensor<8x15x9xi32>) outs(%alloc_40 : memref<8x15xi32>) dimensions = [2] 
      (%in: i32, %init: i32) {
        %273 = vector.splat %256 : vector<8x15x9xindex>
        %274 = math.tanh %cst_0 : f16
        %275 = arith.maxui %c564459480_i64, %c1284375718_i64 : i64
        %276 = math.log10 %18 : tensor<8xf32>
        %277 = vector.broadcast %c1908153259_i64 : i64 to vector<9x15x8xi64>
        %278 = tensor.empty(%180, %c6) : tensor<9x?x?xf16>
        %279 = scf.while (%arg1 = %103) : (memref<8x15x9xi32>) -> memref<8x15x9xi32> {
          %alloc_41 = memref.alloc() : memref<8x1x15xf16>
          %282 = arith.negf %cst_3 : f16
          %283 = math.expm1 %11 : tensor<8x15x9xf16>
          %284 = memref.load %alloc_40[%c2, %c10] : memref<8x15xi32>
          %285 = math.tanh %20 : tensor<8xf32>
          %286 = arith.maxui %98, %97 : i64
          %287 = arith.maxui %c1908153259_i64, %c1284375718_i64 : i64
          %288 = math.floor %59 : tensor<9x15x8xf16>
          scf.condition(%false) %arg1 : memref<8x15x9xi32>
        } do {
        ^bb0(%arg1: memref<8x15x9xi32>):
          %282 = arith.remui %true_23, %false : i1
          %283 = vector.reduction <minui>, %168 : vector<1xi64> into i64
          %284 = math.round %cst_3 : f16
          %285 = math.ctpop %false : i1
          %rank = tensor.rank %collapsed_29 : tensor<135x8xi16>
          %286 = vector.transpose %209, [2, 0, 1] : vector<8x1x15xf16> to vector<15x8x1xf16>
          %collapsed_41 = tensor.collapse_shape %59 [[0, 1], [2]] : tensor<9x15x8xf16> into tensor<135x8xf16>
          %extracted = tensor.extract %1[%c3, %c11, %c0] : tensor<8x15x9xi32>
          %287 = index.casts %true_23 : i1 to index
          %collapsed_42 = tensor.collapse_shape %generated [[0, 1], [2]] : tensor<?x?x9xi64> into tensor<?x9xi64>
          %288 = arith.addf %cst_3, %cst_3 : f16
          %289 = index.add %c2, %c0
          %290 = math.log1p %2 : tensor<15x1xf32>
          %291 = arith.remsi %true, %true_23 : i1
          %292 = arith.minui %extracted, %init : i32
          %true_43 = index.bool.constant true
          scf.yield %arg1 : memref<8x15x9xi32>
        }
        %280 = vector.broadcast %cst_0 : f16 to vector<1xf16>
        %281 = vector.multi_reduction <add>, %82, %280 [0] : vector<15x1xf16> to vector<1xf16>
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    scf.parallel (%arg1, %arg2) = (%158, %c4) to (%186, %c2) step (%c1, %c5) {
      %273 = math.exp %6 : tensor<8x1x15xf16>
      %274 = index.floordivs %arg1, %c5
      %cast_41 = tensor.cast %22 : tensor<f32> to tensor<f32>
      %275 = tensor.empty() : tensor<8x1x15xf16>
      vector.print %168 : vector<1xi64>
      affine.for %arg3 = 0 to 92 {
      }
      %276 = arith.remf %cst_4, %cst_3 : f16
      %277 = vector.splat %98 : vector<8x1x15xi64>
      %278 = vector.extract %47[7, 0] : vector<8x1x15xi32>
      %inserted_42 = tensor.insert %c1908153259_i64 into %generated_34[%c0, %c7, %c5] : tensor<?x15x9xi64>
      %279 = math.rsqrt %2 : tensor<15x1xf32>
      %280 = arith.shli %c1284375718_i64, %97 : i64
      %281 = index.floordivs %c9, %131
      %expanded = tensor.expand_shape %5 [[0], [1], [2, 3]] : tensor<8x15x9xf32> into tensor<8x15x9x1xf32>
      %282 = index.sub %131, %114
      %283 = vector.broadcast %cst_1 : f32 to vector<9x15x8xf32>
      scf.yield
    }
    %272 = affine.vector_load %alloc_40[%c9, %135] : memref<8x15xi32>, vector<9xi32>
    affine.vector_store %205, %alloc[%c7, %186] : memref<15x1xi64>, vector<15xi64>
    vector.print %19 : vector<1xi64>
    vector.print %35 : vector<1xi64>
    vector.print %36 : vector<1xi64>
    vector.print %39 : vector<8x15x9xi1>
    vector.print %40 : vector<1xi64>
    vector.print %45 : vector<8x1x15xi64>
    vector.print %46 : vector<8x1x15xi1>
    vector.print %47 : vector<8x1x15xi32>
    vector.print %48 : vector<8x1x15xi64>
    vector.print %60 : vector<15x1xf16>
    vector.print %61 : vector<15x1xi1>
    vector.print %62 : vector<15x1xi32>
    vector.print %63 : vector<15x1xf16>
    vector.print %69 : vector<15x1xf32>
    vector.print %70 : vector<1xi64>
    vector.print %72 : vector<15x1xi64>
    vector.print %73 : vector<15x1xi64>
    vector.print %82 : vector<15x1xf16>
    vector.print %88 : vector<8x1x15xi64>
    vector.print %94 : vector<8x1x15xi1>
    vector.print %117 : vector<8x1x15xi32>
    vector.print %120 : vector<1xi64>
    vector.print %126 : vector<9x15x8xi1>
    vector.print %138 : vector<8x1x15xi1>
    vector.print %146 : vector<8x1x15xi1>
    vector.print %162 : vector<8x1x15xf32>
    vector.print %163 : vector<8x1x15xf32>
    vector.print %168 : vector<1xi64>
    vector.print %181 : vector<15x1xf32>
    vector.print %188 : vector<1xi64>
    vector.print %191 : vector<8x1xf32>
    vector.print %202 : vector<8x15x9xi1>
    vector.print %205 : vector<15xi64>
    vector.print %209 : vector<8x1x15xf16>
    vector.print %210 : vector<8x1x15xf16>
    vector.print %215 : vector<15x1xi16>
    vector.print %221 : vector<1x15xf16>
    vector.print %223 : vector<1xi64>
    vector.print %231 : vector<2x1x15xi1>
    vector.print %251 : vector<9x15x8xi1>
    vector.print %261 : vector<8x1x15xi1>
    vector.print %272 : vector<9xi32>
    vector.print %cst : f32
    vector.print %c1908153259_i64 : i64
    vector.print %cst_0 : f16
    vector.print %cst_1 : f32
    vector.print %c564459480_i64 : i64
    vector.print %cst_2 : f32
    vector.print %false : i1
    vector.print %c1647736072_i64 : i64
    vector.print %c27427_i16 : i16
    vector.print %c23984_i16 : i16
    vector.print %cst_3 : f16
    vector.print %c606377018_i32 : i32
    vector.print %cst_4 : f16
    vector.print %c1284375718_i64 : i64
    vector.print %true : i1
    vector.print %c1069903657_i32 : i32
    vector.print %true_23 : i1
    vector.print %97 : i64
    vector.print %98 : i64
    return %cst_3 : f16
  }
}
