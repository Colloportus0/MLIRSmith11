module {
  func.func @func1() {
    %c540967278_i64 = arith.constant 540967278 : i64
    %false = arith.constant false
    %cst = arith.constant 2.496000e+04 : f16
    %cst_0 = arith.constant 6.486400e+04 : f16
    %c1491804838_i64 = arith.constant 1491804838 : i64
    %cst_1 = arith.constant 1.286400e+04 : f16
    %c404776214_i32 = arith.constant 404776214 : i32
    %cst_2 = arith.constant 5.014400e+04 : f16
    %false_3 = arith.constant false
    %true = arith.constant true
    %c1199528644_i64 = arith.constant 1199528644 : i64
    %c401653752_i32 = arith.constant 401653752 : i32
    %false_4 = arith.constant false
    %c1343683170_i32 = arith.constant 1343683170 : i32
    %c-3927_i16 = arith.constant -3927 : i16
    %cst_5 = arith.constant 3.064000e+04 : f16
    %0 = tensor.empty() : tensor<10x10x10xi1>
    %1 = tensor.empty() : tensor<10x10x10xi1>
    %2 = tensor.empty() : tensor<10xi64>
    %3 = tensor.empty() : tensor<2xi16>
    %4 = tensor.empty() : tensor<10xf16>
    %5 = tensor.empty() : tensor<5xf32>
    %6 = tensor.empty() : tensor<2xf32>
    %7 = tensor.empty() : tensor<10xf32>
    %8 = tensor.empty() : tensor<10xi16>
    %9 = tensor.empty() : tensor<5xi1>
    %10 = tensor.empty() : tensor<5xi64>
    %11 = tensor.empty() : tensor<5xf32>
    %12 = tensor.empty() : tensor<2xi64>
    %13 = tensor.empty() : tensor<10x10x10xf16>
    %14 = tensor.empty() : tensor<5xi1>
    %15 = tensor.empty() : tensor<5xf16>
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
    %alloc = memref.alloc() : memref<10x10x10xi32>
    %alloc_6 = memref.alloc() : memref<10x10x10xi1>
    %alloc_7 = memref.alloc() : memref<2xf32>
    %alloc_8 = memref.alloc() : memref<5xi32>
    %alloc_9 = memref.alloc() : memref<10x10x10xi64>
    %alloc_10 = memref.alloc() : memref<5xi64>
    %alloc_11 = memref.alloc() : memref<10xi32>
    %alloc_12 = memref.alloc() : memref<5xi64>
    %alloc_13 = memref.alloc() : memref<2xf16>
    %alloc_14 = memref.alloc() : memref<2xi64>
    %alloc_15 = memref.alloc() : memref<10xi1>
    %alloc_16 = memref.alloc() : memref<10x10x10xi64>
    %alloc_17 = memref.alloc() : memref<5xi32>
    %alloc_18 = memref.alloc() : memref<2xf16>
    %alloc_19 = memref.alloc() : memref<10xi1>
    %alloc_20 = memref.alloc() : memref<5xf16>
    %16 = tensor.empty() : tensor<10xf16>
    %17 = linalg.copy ins(%4 : tensor<10xf16>) outs(%16 : tensor<10xf16>) -> tensor<10xf16>
    %18 = tensor.empty() : tensor<5xi64>
    %transposed = linalg.transpose ins(%alloc_10 : memref<5xi64>) outs(%18 : tensor<5xi64>) permutation = [0] 
    %19 = tensor.empty() : tensor<f32>
    %reduced = linalg.reduce ins(%alloc_7 : memref<2xf32>) outs(%19 : tensor<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        memref.assume_alignment %alloc_8, 1 : memref<5xi32>
        %generated_47 = tensor.generate %c12 {
        ^bb0(%arg0: index):
          %267 = index.floordivs %c2, %c5
          %268 = math.fma %cst_1, %cst_2, %cst_0 : f16
          %269 = bufferization.clone %alloc_19 : memref<10xi1> to memref<10xi1>
          %270 = vector.broadcast %false_3 : i1 to vector<2xi1>
          %271 = vector.transpose %270, [0] : vector<2xi1> to vector<2xi1>
          tensor.yield %false_4 : i1
        } : tensor<?xi1>
        %261 = math.fma %15, %15, %15 : tensor<5xf16>
        %262 = arith.ceildivsi %c1491804838_i64, %c1199528644_i64 : i64
        %263 = arith.maxui %c404776214_i32, %c1343683170_i32 : i32
        %264 = memref.atomic_rmw mulf %cst, %alloc_20[%c0] : (f16, memref<5xf16>) -> f16
        %265 = arith.shli %c-3927_i16, %c-3927_i16 : i16
        %266 = math.floor %11 : tensor<5xf32>
        %cst_48 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_48 : f32
      }
    %20 = scf.parallel (%arg0, %arg1) = (%c8, %c12) to (%c9, %c6) step (%c10, %c1) init (%cst_0) -> f16 {
      %261 = arith.remui %false, %true : i1
      %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%13 : tensor<10x10x10xf16>) {
      ^bb0(%out: f16):
        %275 = index.ceildivs %arg0, %c3
        %276 = affine.max affine_map<(d0, d1) -> (-d1 + 2, -(d1 + 2))>(%275, %c13)
        %277 = vector.broadcast %c-3927_i16 : i16 to vector<2x2xi16>
        %278 = vector.broadcast %c-3927_i16 : i16 to vector<2xi16>
        %dest_49, %accumulated_value_50 = vector.scan <maxsi>, %277, %278 {inclusive = true, reduction_dim = 0 : i64} : vector<2x2xi16>, vector<2xi16>
        %279 = arith.maxui %c-3927_i16, %c-3927_i16 : i16
        %280 = vector.broadcast %c1343683170_i32 : i32 to vector<5xi32>
        %281 = vector.broadcast %c1343683170_i32 : i32 to vector<5x5xi32>
        %282 = vector.outerproduct %280, %280, %281 {kind = #vector.kind<add>} : vector<5xi32>, vector<5xi32>
        %283 = arith.maxui %c-3927_i16, %c-3927_i16 : i16
        %cst_51 = arith.constant 1.000000e+00 : f32
        %284 = vector.broadcast %cst_51 : f32 to vector<5xf32>
        %285 = vector.flat_transpose %284 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
        %286 = math.exp2 %4 : tensor<10xf16>
        %287 = arith.remui %false_4, %false_3 : i1
        %288 = math.ctlz %false_3 : i1
        %289 = vector.broadcast %c-3927_i16 : i16 to vector<5x2xi16>
        %290 = vector.broadcast %c-3927_i16 : i16 to vector<2xi16>
        %dest_52, %accumulated_value_53 = vector.scan <xor>, %289, %290 {inclusive = true, reduction_dim = 0 : i64} : vector<5x2xi16>, vector<2xi16>
        %291 = arith.mulf %cst_51, %cst_51 : f32
        %292 = vector.extract %284[2] : vector<5xf32>
        %293 = index.sub %c0, %c11
        %294 = arith.divf %cst_0, %cst_2 : f16
        %295 = math.tan %7 : tensor<10xf32>
        %296 = vector.matrix_multiply %284, %285 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
        %297 = vector.broadcast %c1491804838_i64 : i64 to vector<2xi64>
        %298 = vector.broadcast %false_3 : i1 to vector<2xi1>
        %299 = vector.maskedload %alloc_12[%c3], %298, %297 : memref<5xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %300 = vector.broadcast %cst_51 : f32 to vector<5xf32>
        %301 = arith.andi %c401653752_i32, %c404776214_i32 : i32
        %302 = vector.shuffle %285, %284 [3, 5, 7, 9] : vector<5xf32>, vector<5xf32>
        %303 = vector.shuffle %298, %298 [0] : vector<2xi1>, vector<2xi1>
        %304 = index.casts %c11 : index to i32
        %305 = arith.shli %c1343683170_i32, %c1343683170_i32 : i32
        %306 = vector.extract %298[0] : vector<2xi1>
        %307 = vector.transpose %297, [0] : vector<2xi64> to vector<2xi64>
        %308 = arith.divui %false_4, %false_3 : i1
        %309 = vector.load %alloc_6[%c7, %c3, %c4] : memref<10x10x10xi1>, vector<10x10x10xi1>
        %310 = math.sqrt %15 : tensor<5xf16>
        %311 = vector.load %alloc[%c0, %c1, %c3] : memref<10x10x10xi32>, vector<2xi32>
        %312 = math.fma %11, %11, %11 : tensor<5xf32>
        %313 = arith.shrsi %c-3927_i16, %c-3927_i16 : i16
        linalg.yield %cst_1 : f16
      } -> tensor<10x10x10xf16>
      %263 = bufferization.to_tensor %alloc_19 : memref<10xi1>
      %264 = vector.create_mask %c0, %c2, %c7 : vector<10x10x10xi1>
      %265 = vector.extract %264[9] : vector<10x10x10xi1>
      %266 = arith.minf %cst_0, %cst : f16
      %267 = math.cttz %8 : tensor<10xi16>
      %268 = arith.maxf %cst_2, %cst_1 : f16
      %269 = math.tan %7 : tensor<10xf32>
      %270 = math.cttz %c404776214_i32 : i32
      %generated_47 = tensor.generate %c12 {
      ^bb0(%arg2: index):
        %275 = arith.maxui %c540967278_i64, %c1491804838_i64 : i64
        memref.copy %alloc_18, %alloc_13 : memref<2xf16> to memref<2xf16>
        %276 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 mod 32, d0, d0 * 16)>(%c13, %c6, %c4, %arg0)
        %277 = math.log1p %6 : tensor<2xf32>
        tensor.yield %false_4 : i1
      } : tensor<?xi1>
      %271 = math.fma %17, %4, %17 : tensor<10xf16>
      %272 = math.roundeven %19 : tensor<f32>
      %273 = memref.load %alloc_10[%c3] : memref<5xi64>
      scf.index_switch %c3 
      case 1 {
        %275 = bufferization.to_memref %2 : memref<10xi64>
        %276 = vector.load %alloc[%c3, %c4, %c9] : memref<10x10x10xi32>, vector<5xi32>
        %277 = bufferization.to_tensor %alloc_14 : memref<2xi64>
        %278 = arith.divsi %c1491804838_i64, %c1491804838_i64 : i64
        %279 = index.maxu %c6, %c15
        %280 = vector.broadcast %c14 : index to vector<10xindex>
        %281 = vector.broadcast %false_3 : i1 to vector<10xi1>
        %282 = vector.broadcast %c540967278_i64 : i64 to vector<10xi64>
        vector.scatter %alloc_16[%c0, %c7, %c8] [%280], %281, %282 : memref<10x10x10xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %283 = vector.broadcast %cst : f16 to vector<f16>
        %284 = vector.transfer_write %283, %13[%c7, %c4, %c7] : vector<f16>, tensor<10x10x10xf16>
        %285 = math.log %5 : tensor<5xf32>
        %286 = arith.maxf %cst_0, %cst_1 : f16
        %287 = vector.reduction <mul>, %276 : vector<5xi32> into i32
        %288 = vector.flat_transpose %276 {columns = 5 : i32, rows = 1 : i32} : vector<5xi32> -> vector<5xi32>
        %289 = index.divu %c7, %c10
        %290 = vector.shuffle %265, %265 [1, 2, 4, 8, 9, 10, 12, 13, 16, 19] : vector<10x10xi1>, vector<10x10xi1>
        %291 = math.cttz %false_3 : i1
        %292 = math.log %13 : tensor<10x10x10xf16>
        %293 = index.ceildivs %c14, %c12
        scf.yield
      }
      case 2 {
        %275 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 floordiv 16, d1 + d2 mod 16)>(%c0, %c3, %c9, %c4)
        %276 = arith.divui %c1199528644_i64, %c540967278_i64 : i64
        %277 = vector.broadcast %false : i1 to vector<10xi1>
        %278 = vector.reduction <mul>, %277 : vector<10xi1> into i1
        %279 = vector.load %alloc[%c0, %c4, %c9] : memref<10x10x10xi32>, vector<2xi32>
        %280 = vector.multi_reduction <maxsi>, %264, %265 [1] : vector<10x10x10xi1> to vector<10x10xi1>
        %inserted_49 = tensor.insert %c-3927_i16 into %8[%c9] : tensor<10xi16>
        %281 = arith.maxsi %c401653752_i32, %c1343683170_i32 : i32
        %282 = arith.maxui %c1199528644_i64, %c1491804838_i64 : i64
        %283 = bufferization.clone %alloc_8 : memref<5xi32> to memref<5xi32>
        %284 = vector.reduction <mul>, %279 : vector<2xi32> into i32
        %285 = arith.ceildivsi %c-3927_i16, %c-3927_i16 : i16
        %286 = vector.shuffle %265, %265 [0, 1, 2, 4, 6, 8, 11, 12, 15, 17, 18, 19] : vector<10x10xi1>, vector<10x10xi1>
        %287 = arith.shli %c401653752_i32, %c1343683170_i32 : i32
        %288 = bufferization.to_tensor %alloc_17 : memref<5xi32>
        %splat = tensor.splat %c1343683170_i32 : tensor<2xi32>
        %289 = vector.flat_transpose %279 {columns = 1 : i32, rows = 2 : i32} : vector<2xi32> -> vector<2xi32>
        scf.yield
      }
      default {
        %275 = arith.maxf %cst_2, %cst_1 : f16
        %276 = math.ctlz %0 : tensor<10x10x10xi1>
        %alloc_49 = memref.alloc() : memref<10xi32>
        %277 = arith.subi %false, %false : i1
        %278 = affine.max affine_map<(d0, d1, d2) -> (d2, d1 mod 128 + d0 + 2 - d0, 0, 0)>(%c2, %c14, %c13)
        %279 = math.rsqrt %19 : tensor<f32>
        %280 = arith.maxf %cst_1, %cst_1 : f16
        %281 = vector.broadcast %false_3 : i1 to vector<10xi1>
        %dest_50, %accumulated_value_51 = vector.scan <add>, %265, %281 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10xi1>, vector<10xi1>
        %282 = arith.shli %false_3, %false : i1
        %283 = affine.min affine_map<(d0) -> (d0 - 128, d0 floordiv 64, (d0 - 128) * 5 - 1)>(%c14)
        %from_elements_52 = tensor.from_elements %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64 : tensor<10x10x10xi64>
        %284 = bufferization.clone %alloc_15 : memref<10xi1> to memref<10xi1>
        %285 = math.cos %13 : tensor<10x10x10xf16>
        %from_elements_53 = tensor.from_elements %cst_1, %cst_0, %cst_5, %cst_1, %cst, %cst, %cst_2, %cst_2, %cst_5, %cst_5, %cst_2, %cst_2, %cst_1, %cst_5, %cst, %cst_1, %cst_1, %cst_1, %cst, %cst_0, %cst_1, %cst_1, %cst_1, %cst_5, %cst_1, %cst, %cst_2, %cst_2, %cst_5, %cst_1, %cst, %cst_0, %cst, %cst_5, %cst_2, %cst_1, %cst_5, %cst_5, %cst_0, %cst, %cst, %cst_0, %cst_0, %cst_5, %cst_5, %cst_1, %cst, %cst, %cst_0, %cst_5, %cst_1, %cst_5, %cst_1, %cst_1, %cst_2, %cst_5, %cst_5, %cst, %cst_0, %cst_2, %cst, %cst_0, %cst, %cst_1, %cst_0, %cst_2, %cst_0, %cst, %cst_1, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_5, %cst_1, %cst_0, %cst_5, %cst_2, %cst_0, %cst_1, %cst_5, %cst, %cst_1, %cst, %cst_0, %cst, %cst_0, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_0, %cst_1, %cst_2, %cst, %cst_2, %cst_1, %cst_5, %cst, %cst, %cst_2, %cst_2, %cst, %cst_5, %cst_1, %cst_1, %cst, %cst_2, %cst_0, %cst_2, %cst_5, %cst_2, %cst, %cst_5, %cst_1, %cst_2, %cst_5, %cst_5, %cst_5, %cst_1, %cst_5, %cst_2, %cst_2, %cst_0, %cst_1, %cst_1, %cst_2, %cst_2, %cst_1, %cst, %cst_1, %cst_2, %cst_1, %cst, %cst_0, %cst, %cst_2, %cst_5, %cst_2, %cst_2, %cst, %cst_1, %cst, %cst, %cst, %cst_0, %cst_1, %cst_5, %cst_0, %cst, %cst, %cst_1, %cst_2, %cst_5, %cst_5, %cst_0, %cst_2, %cst_5, %cst_1, %cst_1, %cst_0, %cst, %cst_0, %cst_0, %cst, %cst_1, %cst_5, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_1, %cst, %cst, %cst_5, %cst_5, %cst, %cst_5, %cst_0, %cst_5, %cst, %cst_1, %cst_5, %cst_0, %cst_0, %cst_2, %cst, %cst_5, %cst_5, %cst_5, %cst, %cst, %cst_2, %cst_1, %cst_5, %cst, %cst_5, %cst_1, %cst, %cst, %cst_0, %cst_0, %cst_1, %cst_2, %cst_1, %cst_5, %cst_1, %cst_5, %cst_2, %cst_5, %cst_0, %cst_1, %cst_5, %cst_1, %cst_5, %cst_2, %cst_0, %cst_1, %cst, %cst_0, %cst_0, %cst_5, %cst_1, %cst_2, %cst_0, %cst_5, %cst, %cst_1, %cst_2, %cst, %cst, %cst_5, %cst_1, %cst_1, %cst_0, %cst_5, %cst, %cst_5, %cst_1, %cst_0, %cst, %cst_1, %cst, %cst, %cst_5, %cst_5, %cst_1, %cst_1, %cst_5, %cst_1, %cst, %cst_5, %cst_5, %cst_5, %cst, %cst_5, %cst_1, %cst_1, %cst_5, %cst, %cst_0, %cst_0, %cst, %cst_2, %cst_0, %cst_2, %cst_1, %cst_5, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_5, %cst_1, %cst_5, %cst_2, %cst_0, %cst_1, %cst, %cst_5, %cst_5, %cst_2, %cst_1, %cst_1, %cst, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_0, %cst_1, %cst_0, %cst_2, %cst_2, %cst_0, %cst_1, %cst_1, %cst_2, %cst_0, %cst, %cst_0, %cst_5, %cst_1, %cst_5, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_1, %cst_5, %cst_0, %cst, %cst_1, %cst_1, %cst, %cst_2, %cst_5, %cst_5, %cst_0, %cst_2, %cst_5, %cst_1, %cst, %cst_2, %cst_1, %cst_0, %cst_1, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst_0, %cst_0, %cst_2, %cst_2, %cst_2, %cst_0, %cst, %cst_0, %cst_2, %cst_2, %cst, %cst_5, %cst_5, %cst_1, %cst_2, %cst, %cst, %cst_2, %cst_5, %cst_1, %cst_2, %cst_2, %cst_5, %cst_0, %cst_5, %cst_5, %cst_0, %cst_0, %cst_1, %cst_2, %cst_2, %cst_5, %cst_0, %cst_0, %cst, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_0, %cst_2, %cst, %cst_1, %cst, %cst_1, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst_0, %cst_0, %cst_5, %cst_0, %cst, %cst_5, %cst_2, %cst_2, %cst_1, %cst_0, %cst_2, %cst_0, %cst_0, %cst_2, %cst_1, %cst_5, %cst_2, %cst_1, %cst_1, %cst, %cst_1, %cst_0, %cst_5, %cst_1, %cst_2, %cst_2, %cst, %cst, %cst_2, %cst_5, %cst_0, %cst_0, %cst_0, %cst_1, %cst_5, %cst_0, %cst, %cst, %cst_1, %cst, %cst_1, %cst_2, %cst_0, %cst_2, %cst_1, %cst_0, %cst_5, %cst_1, %cst_5, %cst_5, %cst_1, %cst_0, %cst_0, %cst_5, %cst, %cst, %cst, %cst_5, %cst, %cst_5, %cst_5, %cst_1, %cst_0, %cst_0, %cst_2, %cst_0, %cst_1, %cst, %cst_1, %cst_1, %cst, %cst, %cst, %cst, %cst_0, %cst, %cst_2, %cst_2, %cst_5, %cst_0, %cst_5, %cst_0, %cst_2, %cst, %cst_2, %cst_1, %cst_2, %cst_5, %cst, %cst_0, %cst_0, %cst_1, %cst_2, %cst_2, %cst_5, %cst, %cst_2, %cst_5, %cst_1, %cst_2, %cst_2, %cst_0, %cst_2, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst_0, %cst, %cst_1, %cst_0, %cst, %cst_0, %cst_0, %cst_2, %cst_5, %cst_2, %cst_2, %cst, %cst_5, %cst_5, %cst_2, %cst_2, %cst_5, %cst_2, %cst_1, %cst, %cst, %cst_1, %cst_5, %cst_5, %cst_5, %cst_5, %cst_2, %cst, %cst_1, %cst, %cst, %cst_0, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_5, %cst_1, %cst_5, %cst, %cst_5, %cst, %cst_5, %cst, %cst_2, %cst_0, %cst_0, %cst_0, %cst_1, %cst, %cst_1, %cst_0, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_1, %cst_0, %cst_1, %cst, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst_5, %cst, %cst, %cst_2, %cst, %cst_1, %cst, %cst_5, %cst_1, %cst_0, %cst_1, %cst_0, %cst_2, %cst_2, %cst_0, %cst_1, %cst_5, %cst_5, %cst, %cst_2, %cst_0, %cst, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst_2, %cst, %cst_1, %cst_2, %cst_1, %cst_0, %cst_2, %cst, %cst_0, %cst_0, %cst_0, %cst, %cst, %cst_5, %cst_1, %cst, %cst_2, %cst_2, %cst_2, %cst_0, %cst, %cst_5, %cst, %cst_0, %cst_2, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_2, %cst_0, %cst, %cst_2, %cst_1, %cst_1, %cst, %cst_5, %cst_1, %cst_5, %cst_2, %cst_1, %cst_2, %cst, %cst_5, %cst_5, %cst_1, %cst_2, %cst_1, %cst_5, %cst_2, %cst, %cst_5, %cst, %cst_0, %cst_2, %cst, %cst_0, %cst_5, %cst_2, %cst_1, %cst_0, %cst_1, %cst, %cst, %cst_2, %cst_0, %cst_0, %cst, %cst, %cst_2, %cst, %cst_2, %cst_0, %cst_0, %cst, %cst, %cst, %cst_0, %cst_1, %cst_5, %cst_2, %cst_5, %cst_5, %cst_1, %cst_5, %cst_0, %cst_5, %cst_2, %cst_0, %cst_2, %cst_5, %cst, %cst, %cst, %cst_5, %cst_5, %cst_2, %cst_2, %cst_0, %cst_1, %cst_5, %cst_1, %cst_0, %cst, %cst_0, %cst_5, %cst_0, %cst, %cst_1, %cst_0, %cst_2, %cst, %cst, %cst_1, %cst_1, %cst_5, %cst_5, %cst_2, %cst_0, %cst_0, %cst_5, %cst_1, %cst_1, %cst, %cst_5, %cst_1, %cst, %cst, %cst_2, %cst_1, %cst_2, %cst_0, %cst_1, %cst_5, %cst_1, %cst_0, %cst_2, %cst, %cst_2, %cst, %cst, %cst, %cst_1, %cst_0, %cst_0, %cst_2, %cst_1, %cst, %cst, %cst_2, %cst, %cst_2, %cst_0, %cst_2, %cst_5, %cst_2, %cst, %cst_2, %cst, %cst_1, %cst, %cst_5, %cst_0, %cst_1, %cst_2, %cst_5, %cst_2, %cst_0, %cst_1, %cst, %cst_1, %cst_5, %cst_5, %cst, %cst_5, %cst_1, %cst_2, %cst_5, %cst_2, %cst_5, %cst_2, %cst, %cst_2, %cst_5, %cst_2, %cst, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_5, %cst_0, %cst, %cst_1, %cst_0, %cst_2, %cst_5, %cst_2, %cst_0, %cst, %cst_5, %cst, %cst_5, %cst_1, %cst_0, %cst_2, %cst_0, %cst_2, %cst, %cst, %cst_2, %cst, %cst_1, %cst_0, %cst_1, %cst_2, %cst, %cst_5, %cst_0, %cst, %cst, %cst_5, %cst, %cst_5, %cst, %cst, %cst_2, %cst_5, %cst_0, %cst_2, %cst_2, %cst_1, %cst_5, %cst_5, %cst_2, %cst_1, %cst_0, %cst_1, %cst_0, %cst_2, %cst_5, %cst_0, %cst_5, %cst_1, %cst_2, %cst_1, %cst_1, %cst_5, %cst, %cst, %cst_5, %cst, %cst_1, %cst_1, %cst_1, %cst_2, %cst_5, %cst_5, %cst, %cst_2, %cst_0, %cst_2, %cst_0, %cst_2, %cst_1, %cst_5, %cst_5, %cst, %cst_0, %cst_1, %cst_5, %cst, %cst_2, %cst, %cst_0, %cst_0, %cst_1, %cst, %cst_1, %cst_5, %cst_2, %cst_0, %cst_0, %cst_5, %cst, %cst, %cst, %cst_2, %cst, %cst_0, %cst_2, %cst_2, %cst_2, %cst_2, %cst, %cst_1, %cst, %cst_1, %cst_2, %cst_0, %cst_2, %cst_1, %cst_2, %cst_2, %cst_5, %cst_0, %cst, %cst, %cst_2, %cst_1, %cst_2, %cst_2, %cst_2, %cst_5, %cst_1, %cst_1, %cst_2, %cst_1, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst, %cst_5, %cst, %cst_0, %cst_2, %cst_1, %cst_2, %cst_1, %cst_2, %cst, %cst_2, %cst_1, %cst_1, %cst, %cst_1, %cst_2, %cst_2, %cst, %cst_5, %cst, %cst_1, %cst_2, %cst, %cst, %cst_5, %cst, %cst_0, %cst_0, %cst, %cst, %cst_1, %cst_1, %cst, %cst, %cst, %cst, %cst_0, %cst_0, %cst, %cst_0, %cst_1, %cst_5, %cst_2, %cst, %cst, %cst_1, %cst, %cst_0, %cst_5, %cst_2, %cst, %cst_0, %cst_1, %cst_0, %cst_0, %cst_0, %cst_2, %cst_1, %cst_0, %cst_5, %cst_5, %cst_2, %cst_1, %cst_0, %cst, %cst_5, %cst_5, %cst_0, %cst_1, %cst_5, %cst, %cst_0, %cst_1, %cst_0 : tensor<10x10x10xf16>
        %286 = vector.broadcast %false : i1 to vector<5xi1>
        vector.transfer_write %286, %alloc_6[%c6, %c1, %c11] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<5xi1>, memref<10x10x10xi1>
        %287 = arith.ceildivsi %c1199528644_i64, %c1199528644_i64 : i64
      }
      %274 = arith.ori %false_4, %false_3 : i1
      %cst_48 = arith.constant 1.000000e+00 : f16
      scf.reduce(%cst_48)  : f16 {
      ^bb0(%arg2: f16, %arg3: f16):
        %275 = vector.broadcast %c540967278_i64 : i64 to vector<2xi64>
        %276 = vector.broadcast %false_4 : i1 to vector<2xi1>
        %277 = vector.maskedload %alloc_16[%c3, %c4, %c9], %276, %275 : memref<10x10x10xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        %278 = math.sqrt %reduced : tensor<f32>
        %279 = arith.minsi %true, %false_3 : i1
        memref.store %c1199528644_i64, %alloc_9[%c2, %c9, %c0] : memref<10x10x10xi64>
        %cst_49 = arith.constant 1.000000e+00 : f32
        %280 = vector.broadcast %cst_49 : f32 to vector<2xf32>
        %281 = vector.fma %280, %280, %280 : vector<2xf32>
        %282 = index.floordivs %c3, %arg1
        %283 = index.add %c5, %c4
        %284 = arith.shrui %c1491804838_i64, %c1199528644_i64 : i64
        %cst_50 = arith.constant 1.000000e+00 : f16
        scf.reduce.return %cst_50 : f16
      }
      scf.yield
    }
    %21 = affine.vector_load %alloc_15[%c3] : memref<10xi1>, vector<5xi1>
    affine.vector_store %21, %alloc_15[%c2] : memref<10xi1>, vector<5xi1>
    %22 = tensor.empty() : tensor<2xi16>
    %23 = tensor.empty() : tensor<i16>
    %24 = linalg.dot ins(%3, %22 : tensor<2xi16>, tensor<2xi16>) outs(%23 : tensor<i16>) -> tensor<i16>
    %25 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 * -64)>(%c7, %c13, %c12, %c4)
    %26 = bufferization.clone %alloc_17 : memref<5xi32> to memref<5xi32>
    memref.assume_alignment %alloc_12, 2 : memref<5xi64>
    %27 = affine.max affine_map<(d0, d1, d2, d3) -> (0, d3 - 2, 0)>(%c8, %c10, %c6, %c9)
    %28 = math.absf %16 : tensor<10xf16>
    %cst_21 = arith.constant 1.000000e+00 : f32
    %inserted = tensor.insert %cst_21 into %6[%c0] : tensor<2xf32>
    %29 = math.sqrt %11 : tensor<5xf32>
    %30 = arith.remui %c1491804838_i64, %c1491804838_i64 : i64
    affine.store %c1343683170_i32, %26[%c5] : memref<5xi32>
    %31 = index.ceildivs %c8, %c11
    %32 = scf.index_switch %c2 -> vector<2xi32> 
    case 1 {
      %261 = scf.while (%arg0 = %c1199528644_i64) : (i64) -> i64 {
        %275 = arith.remf %cst, %cst : f16
        %276 = arith.remsi %c1491804838_i64, %c1199528644_i64 : i64
        %277 = index.sizeof
        %278 = arith.minf %cst_5, %cst_1 : f16
        %279 = arith.minf %cst_21, %cst_21 : f32
        %280 = vector.extract %21[4] : vector<5xi1>
        %281 = vector.multi_reduction <maxui>, %21, %false_3 [0] : vector<5xi1> to i1
        %282 = vector.broadcast %c540967278_i64 : i64 to vector<2xi64>
        %283 = vector.broadcast %281 : i1 to vector<2xi1>
        %284 = vector.maskedload %alloc_14[%c1], %283, %282 : memref<2xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
        scf.condition(%281) %arg0 : i64
      } do {
      ^bb0(%arg0: i64):
        %275 = math.atan2 %13, %13 : tensor<10x10x10xf16>
        %from_elements_47 = tensor.from_elements %cst_21, %cst_21 : tensor<2xf32>
        %276 = vector.transpose %21, [0] : vector<5xi1> to vector<5xi1>
        %277 = math.sqrt %cst_21 : f32
        %278 = affine.min affine_map<(d0) -> (-d0 + d0 mod 128 - (-d0) floordiv 64 + 8, -d0 + d0 mod 128 + 137, -d0 + d0 mod 128 + 8, -(-d0 + 8))>(%31)
        %279 = arith.minsi %false_4, %true : i1
        %from_elements_48 = tensor.from_elements %false, %false, %false, %false_3, %true : tensor<5xi1>
        %280 = vector.reduction <minsi>, %21 : vector<5xi1> into i1
        %281 = index.ceildivu %25, %c6
        %282 = math.ctlz %12 : tensor<2xi64>
        %283 = math.powf %5, %11 : tensor<5xf32>
        %284 = index.floordivs %c9, %31
        %285 = vector.reduction <maxsi>, %21 : vector<5xi1> into i1
        %286 = index.sub %c11, %c8
        %287 = vector.broadcast %c1491804838_i64 : i64 to vector<i64>
        %288 = vector.transfer_write %287, %2[%278] : vector<i64>, tensor<10xi64>
        %289 = index.add %c7, %c7
        scf.yield %c1199528644_i64 : i64
      }
      %262 = vector.create_mask %c5 : vector<5xi1>
      %263 = vector.broadcast %c540967278_i64 : i64 to vector<5xi64>
      %264 = affine.max affine_map<(d0, d1, d2) -> (d2 - d0, -(d2 - d0), d0 + d2 - d0 - 64, (-(d2 - d0) + 2) mod 16)>(%c1, %25, %25)
      %265 = index.floordivs %c0, %c7
      %266 = index.add %c3, %c10
      memref.assume_alignment %alloc_20, 2 : memref<5xf16>
      memref.tensor_store %15, %alloc_20 : memref<5xf16>
      %267 = affine.if affine_set<(d0, d1) : (d1 == 0, 0 == 0, -64 >= 0, d0 mod 64 + d0 * 32 + 32 >= 0)>(%c13, %c15) -> memref<5xi16> {
        %275 = arith.shrsi %c1343683170_i32, %c1343683170_i32 : i32
        %276 = arith.remui %c1343683170_i32, %c1343683170_i32 : i32
        %277 = vector.extract_strided_slice %21 {offsets = [0], sizes = [2], strides = [1]} : vector<5xi1> to vector<2xi1>
        %278 = index.ceildivs %c15, %c3
        %279 = arith.minf %cst_2, %cst : f16
        %280 = vector.reduction <xor>, %263 : vector<5xi64> into i64
        %281 = index.divs %c6, %c9
        %282 = math.cttz %c401653752_i32 : i32
        %alloc_47 = memref.alloc() : memref<5xi16>
        affine.yield %alloc_47 : memref<5xi16>
      } else {
        %275 = arith.floordivsi %c-3927_i16, %c-3927_i16 : i16
        %276 = math.atan2 %16, %16 : tensor<10xf16>
        %277 = affine.min affine_map<(d0, d1, d2, d3) -> (0, -d3, d3 mod 16)>(%c13, %25, %27, %c2)
        %278 = vector.broadcast %false_3 : i1 to vector<i1>
        %279 = vector.transfer_write %278, %0[%c8, %31, %c11] : vector<i1>, tensor<10x10x10xi1>
        %280 = index.ceildivu %c3, %c3
        %281 = arith.maxui %c1343683170_i32, %c1343683170_i32 : i32
        %282 = arith.muli %false, %true : i1
        %283 = index.ceildivs %264, %c5
        %alloc_47 = memref.alloc() : memref<5xi16>
        affine.yield %alloc_47 : memref<5xi16>
      }
      %268 = arith.shrsi %false, %false : i1
      %269 = arith.shrsi %c401653752_i32, %c404776214_i32 : i32
      %270 = math.ctlz %23 : tensor<i16>
      memref.assume_alignment %alloc_8, 4 : memref<5xi32>
      %271 = arith.ori %c-3927_i16, %c-3927_i16 : i16
      %272 = arith.muli %c1343683170_i32, %c404776214_i32 : i32
      %273 = index.add %c6, %c5
      %274 = vector.broadcast %c401653752_i32 : i32 to vector<2xi32>
      scf.yield %274 : vector<2xi32>
    }
    case 2 {
      %261 = bufferization.clone %alloc_11 : memref<10xi32> to memref<10xi32>
      %262 = vector.insertelement %false_4, %21[%c9 : index] : vector<5xi1>
      %263 = arith.shrui %false_4, %false : i1
      %264 = affine.if affine_set<(d0, d1) : ((d0 * 4) floordiv 16 + d0 + d1 - d1 + d0 >= 0, (d0 * 4) floordiv 128 == 0, ((d0 * 4) floordiv 16 + d0 + d1 - d1 + d0) * 8 >= 0, d0 * 4 == 0)>(%c6, %c14) -> i64 {
        %alloc_49 = memref.alloc() : memref<10xi64>
        memref.tensor_store %2, %alloc_49 : memref<10xi64>
        %280 = vector.broadcast %cst_0 : f16 to vector<2xf16>
        %281 = arith.muli %c-3927_i16, %c-3927_i16 : i16
        %282 = arith.shrui %c540967278_i64, %c1491804838_i64 : i64
        %283 = arith.minsi %c540967278_i64, %c540967278_i64 : i64
        %284 = math.absi %14 : tensor<5xi1>
        %285 = arith.minf %cst_0, %cst_1 : f16
        %286 = math.atan %5 : tensor<5xf32>
        affine.yield %c1199528644_i64 : i64
      } else {
        %280 = arith.maxf %cst_5, %cst : f16
        %281 = vector.broadcast %false : i1 to vector<10x2xi1>
        %282 = vector.broadcast %true : i1 to vector<10xi1>
        %dest_49, %accumulated_value_50 = vector.scan <minui>, %281, %282 {inclusive = false, reduction_dim = 1 : i64} : vector<10x2xi1>, vector<10xi1>
        %283 = arith.maxf %cst_1, %cst_5 : f16
        %284 = math.exp2 %5 : tensor<5xf32>
        %285 = index.add %c13, %c3
        %286 = arith.maxui %true, %false_4 : i1
        %287 = math.tanh %16 : tensor<10xf16>
        %288 = vector.flat_transpose %21 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
        affine.yield %c1199528644_i64 : i64
      }
      %from_elements_47 = tensor.from_elements %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16 : tensor<10xi16>
      %265 = vector.extract %21[4] : vector<5xi1>
      %266 = arith.shrsi %c1343683170_i32, %c401653752_i32 : i32
      %267 = arith.shli %false_3, %true : i1
      %268 = tensor.empty() : tensor<10xi1>
      %mapped_48 = linalg.map ins(%alloc_15, %alloc_19 : memref<10xi1>, memref<10xi1>) outs(%268 : tensor<10xi1>)
        (%in: i1, %in_49: i1) {
          %280 = arith.floordivsi %c1491804838_i64, %c540967278_i64 : i64
          %281 = arith.ceildivsi %c1343683170_i32, %c404776214_i32 : i32
          %282 = index.add %c9, %c1
          %283 = math.log %cst_21 : f32
          %284 = math.cos %cst_2 : f16
          %285 = math.cttz %c401653752_i32 : i32
          %286 = vector.broadcast %cst_2 : f16 to vector<5xf16>
          %287 = vector.broadcast %cst_21 : f32 to vector<10x10x10xf32>
          %288 = vector.fma %287, %287, %287 : vector<10x10x10xf32>
          %289 = math.powf %7, %7 : tensor<10xf32>
          %290 = math.log %cst_5 : f16
          %cast_50 = tensor.cast %0 : tensor<10x10x10xi1> to tensor<?x?x?xi1>
          %291 = index.floordivs %c14, %c14
          %292 = math.log10 %16 : tensor<10xf16>
          %293 = index.floordivs %c15, %c4
          %294 = index.divs %c6, %c15
          %expanded_51 = tensor.expand_shape %14 [[0, 1]] : tensor<5xi1> into tensor<5x1xi1>
          %295 = arith.remsi %c401653752_i32, %c401653752_i32 : i32
          %296 = memref.realloc %alloc_11 : memref<10xi32> to memref<10xi32>
          %297 = index.add %c4, %c0
          %298 = arith.maxf %cst_2, %cst_2 : f16
          %299 = vector.broadcast %c6 : index to vector<5xindex>
          %300 = vector.broadcast %c1343683170_i32 : i32 to vector<5xi32>
          vector.scatter %alloc[%c8, %c5, %c8] [%299], %21, %300 : memref<10x10x10xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
          %301 = arith.remui %in_49, %true : i1
          %alloc_52 = memref.alloc() : memref<10x10x10xi32>
          %302 = arith.divsi %c404776214_i32, %c1343683170_i32 : i32
          %303 = arith.negf %cst_21 : f32
          %304 = index.maxs %c7, %c15
          %305 = math.atan2 %7, %7 : tensor<10xf32>
          %306 = math.absi %from_elements_47 : tensor<10xi16>
          %307 = arith.remf %cst_21, %cst_21 : f32
          %308 = math.powf %4, %17 : tensor<10xf16>
          %309 = arith.minsi %c1343683170_i32, %c404776214_i32 : i32
          %310 = arith.shrui %c-3927_i16, %c-3927_i16 : i16
          %false_53 = arith.constant false
          linalg.yield %false_53 : i1
        }
      %269 = math.absi %14 : tensor<5xi1>
      %270 = math.log10 %7 : tensor<10xf32>
      %271 = tensor.empty() : tensor<5x10xf16>
      %272 = tensor.empty() : tensor<10x2xf16>
      %273 = tensor.empty() : tensor<5x2xf16>
      %274 = linalg.matmul ins(%271, %272 : tensor<5x10xf16>, tensor<10x2xf16>) outs(%273 : tensor<5x2xf16>) -> tensor<5x2xf16>
      %275 = math.absi %c540967278_i64 : i64
      %c0_i64 = arith.constant 0 : i64
      %276 = vector.transfer_read %12[%31], %c0_i64 : tensor<2xi64>, vector<i64>
      %277 = arith.ceildivsi %c-3927_i16, %c-3927_i16 : i16
      %278 = vector.multi_reduction <add>, %21, %false [0] : vector<5xi1> to i1
      %279 = vector.broadcast %c1343683170_i32 : i32 to vector<2xi32>
      scf.yield %279 : vector<2xi32>
    }
    case 3 {
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_47 = arith.constant 0 : i32
      %261 = vector.transfer_read %alloc_11[%31], %c0_i32_47 : memref<10xi32>, vector<i32>
      memref.copy %alloc_15, %alloc_19 : memref<10xi1> to memref<10xi1>
      %262 = vector.shuffle %21, %21 [0, 1, 4, 8] : vector<5xi1>, vector<5xi1>
      %263 = math.cos %cst_21 : f32
      %alloc_48 = memref.alloc() : memref<10xi64>
      memref.tensor_store %2, %alloc_48 : memref<10xi64>
      %264 = arith.maxf %cst_21, %cst_21 : f32
      %265 = vector.broadcast %cst : f16 to vector<5xf16>
      %266 = arith.subi %c540967278_i64, %c540967278_i64 : i64
      %267 = index.add %c6, %c14
      %268 = arith.remui %false, %false_4 : i1
      %269 = index.floordivs %c4, %31
      %270 = math.atan2 %5, %11 : tensor<5xf32>
      %from_elements_49 = tensor.from_elements %cst_1, %cst_2 : tensor<2xf16>
      %collapsed_50 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<10x10x10xi1> into tensor<100x10xi1>
      %271 = math.log %reduced : tensor<f32>
      %272 = math.log10 %reduced : tensor<f32>
      %273 = vector.broadcast %c401653752_i32 : i32 to vector<2xi32>
      scf.yield %273 : vector<2xi32>
    }
    case 4 {
      %261 = math.atan2 %15, %15 : tensor<5xf16>
      %262 = tensor.empty(%c15) : tensor<?xf32>
      %generated_47 = tensor.generate %c11 {
      ^bb0(%arg0: index):
        %from_elements_49 = tensor.from_elements %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64 : tensor<10x10x10xi64>
        %274 = vector.reduction <minui>, %21 : vector<5xi1> into i1
        %275 = arith.maxui %c1199528644_i64, %c1491804838_i64 : i64
        %alloc_50 = memref.alloc() : memref<10x10x10xi32>
        memref.copy %alloc, %alloc_50 : memref<10x10x10xi32> to memref<10x10x10xi32>
        tensor.yield %c401653752_i32 : i32
      } : tensor<?xi32>
      %263 = arith.ori %c1343683170_i32, %c404776214_i32 : i32
      memref.tensor_store %6, %alloc_7 : memref<2xf32>
      %264 = vector.shuffle %21, %21 [0, 1, 2, 3, 4, 5, 6, 8] : vector<5xi1>, vector<5xi1>
      %265 = math.absi %24 : tensor<i16>
      %expanded_48 = tensor.expand_shape %11 [[0, 1]] : tensor<5xf32> into tensor<5x1xf32>
      %266 = math.atan2 %cst_0, %cst_2 : f16
      %267 = vector.flat_transpose %21 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_15, %0, %0 : memref<10xi1>, tensor<10x10x10xi1>, tensor<10x10x10xi1>) outs(%0 : tensor<10x10x10xi1>) {
      ^bb0(%in: i1, %in_49: i1, %in_50: i1, %out: i1):
        %274 = arith.divf %cst_21, %cst_21 : f32
        %275 = arith.remf %cst_0, %cst_0 : f16
        %276 = math.rsqrt %cst_1 : f16
        %277 = arith.remsi %false_4, %false_3 : i1
        %278 = vector.reduction <xor>, %267 : vector<5xi1> into i1
        %279 = math.round %5 : tensor<5xf32>
        %280 = math.rsqrt %cst_0 : f16
        %281 = arith.shrui %false_4, %false : i1
        %282 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 + d1, d1 - (d0 floordiv 4) ceildiv 64, d3)>(%c9, %c5, %c11, %c13)
        %283 = bufferization.clone %alloc : memref<10x10x10xi32> to memref<10x10x10xi32>
        %284 = arith.remui %c1343683170_i32, %c401653752_i32 : i32
        %285 = math.sqrt %cst_21 : f32
        %286 = arith.mulf %cst, %cst_5 : f16
        affine.store %c1199528644_i64, %alloc_14[%c15] : memref<2xi64>
        %287 = math.absf %6 : tensor<2xf32>
        %288 = bufferization.to_memref %generated_47 : memref<?xi32>
        %289 = index.mul %c8, %c10
        %290 = math.ctlz %1 : tensor<10x10x10xi1>
        %291 = math.roundeven %15 : tensor<5xf16>
        %expanded_51 = tensor.expand_shape %10 [[0, 1]] : tensor<5xi64> into tensor<5x1xi64>
        %292 = math.rsqrt %5 : tensor<5xf32>
        %293 = arith.negf %cst_5 : f16
        %294 = math.fma %6, %6, %6 : tensor<2xf32>
        %295 = arith.shli %out, %in : i1
        %296 = vector.broadcast %c1343683170_i32 : i32 to vector<2x2xi32>
        %297 = vector.broadcast %c1343683170_i32 : i32 to vector<2xi32>
        %dest_52, %accumulated_value_53 = vector.scan <xor>, %296, %297 {inclusive = true, reduction_dim = 0 : i64} : vector<2x2xi32>, vector<2xi32>
        %298 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 64)>(%c15, %c7, %c9)
        %299 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 mod 32, d1 floordiv 32, -(d2 mod 8), (d2 mod 8) mod 64)>(%c7, %31, %c10, %282)
        %300 = arith.ori %out, %false : i1
        %301 = vector.broadcast %cst_21 : f32 to vector<2xf32>
        %302 = vector.fma %301, %301, %301 : vector<2xf32>
        %303 = arith.andi %false, %false : i1
        %alloc_54 = memref.alloc() : memref<i16>
        memref.tensor_store %23, %alloc_54 : memref<i16>
        %304 = tensor.empty(%299) : tensor<10x?x10xf32>
        linalg.yield %in_50 : i1
      } -> tensor<10x10x10xi1>
      %269 = math.ctlz %c1343683170_i32 : i32
      %270 = arith.muli %c1199528644_i64, %c540967278_i64 : i64
      %271 = arith.floordivsi %c1199528644_i64, %c1491804838_i64 : i64
      %272 = affine.apply affine_map<(d0, d1) -> ((-d0) mod 128 + d0)>(%c15, %c15)
      memref.tensor_store %1, %alloc_6 : memref<10x10x10xi1>
      %273 = vector.broadcast %c404776214_i32 : i32 to vector<2xi32>
      scf.yield %273 : vector<2xi32>
    }
    default {
      %261 = math.log1p %cst : f16
      %262 = tensor.empty() : tensor<10x10xi1>
      %263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%262, %alloc_19 : tensor<10x10xi1>, memref<10xi1>) outs(%0 : tensor<10x10x10xi1>) {
      ^bb0(%in: i1, %in_48: i1, %out: i1):
        %277 = math.fma %cst_2, %cst, %cst_1 : f16
        %278 = arith.shrui %false, %in : i1
        %279 = math.ctlz %18 : tensor<5xi64>
        %280 = arith.divui %c-3927_i16, %c-3927_i16 : i16
        %281 = arith.shrui %in, %false : i1
        %rank_49 = tensor.rank %15 : tensor<5xf16>
        %282 = index.ceildivs %c8, %c11
        %283 = memref.load %alloc_9[%c2, %c0, %c8] : memref<10x10x10xi64>
        %284 = affine.apply affine_map<(d0, d1, d2) -> ((d1 ceildiv 4) mod 2)>(%c1, %282, %c0)
        %285 = vector.broadcast %out : i1 to vector<5x5xi1>
        %286 = vector.outerproduct %21, %21, %285 {kind = #vector.kind<or>} : vector<5xi1>, vector<5xi1>
        %287 = arith.ori %out, %false : i1
        %288 = arith.shrui %c1343683170_i32, %c401653752_i32 : i32
        %289 = bufferization.clone %alloc_14 : memref<2xi64> to memref<2xi64>
        %290 = vector.insertelement %out, %21[%c12 : index] : vector<5xi1>
        bufferization.dealloc_tensor %6 : tensor<2xf32>
        %291 = math.powf %cst_1, %cst_0 : f16
        %from_elements_50 = tensor.from_elements %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21 : tensor<10xf32>
        %alloc_51 = memref.alloc() : memref<10xi16>
        memref.tensor_store %8, %alloc_51 : memref<10xi16>
        %292 = index.ceildivu %c2, %c0
        %293 = vector.reduction <and>, %21 : vector<5xi1> into i1
        %294 = index.ceildivs %c9, %c15
        %295 = index.divs %c10, %c9
        %296 = affine.apply affine_map<(d0) -> ((d0 mod 16) * 2)>(%284)
        %297 = vector.broadcast %false_4 : i1 to vector<5x5xi1>
        %298 = vector.outerproduct %21, %21, %297 {kind = #vector.kind<maxsi>} : vector<5xi1>, vector<5xi1>
        %299 = math.log10 %16 : tensor<10xf16>
        %300 = tensor.empty() : tensor<10x10x10xi32>
        %301 = vector.reduction <maxsi>, %21 : vector<5xi1> into i1
        %302 = arith.ori %false_3, %false_3 : i1
        %303 = vector.insertelement %in_48, %21[%c12 : index] : vector<5xi1>
        %304 = arith.muli %false, %false_3 : i1
        memref.copy %alloc_19, %alloc_15 : memref<10xi1> to memref<10xi1>
        %305 = vector.create_mask %282 : vector<5xi1>
        linalg.yield %true : i1
      } -> tensor<10x10x10xi1>
      %264 = vector.flat_transpose %21 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
      %265 = math.roundeven %6 : tensor<2xf32>
      %266 = affine.apply affine_map<(d0, d1) -> (((d0 ceildiv 16) * 8) mod 64)>(%c0, %c14)
      %267 = index.castu %c8 : index to i32
      %268 = math.fma %reduced, %19, %reduced : tensor<f32>
      %269 = math.atan2 %15, %15 : tensor<5xf16>
      %270 = affine.min affine_map<(d0, d1, d2) -> ((d1 ceildiv 8) * -4, (d1 ceildiv 8) * 2)>(%27, %c3, %c10)
      %generated_47 = tensor.generate %25 {
      ^bb0(%arg0: index):
        %277 = math.log1p %cst_21 : f32
        %alloc_48 = memref.alloc() : memref<5xf32>
        %278 = vector.reduction <minsi>, %264 : vector<5xi1> into i1
        %279 = arith.divsi %false_4, %false_3 : i1
        tensor.yield %cst_21 : f32
      } : tensor<?xf32>
      %271 = arith.shrsi %false_3, %false : i1
      %272 = index.floordivs %c8, %c15
      %273 = math.atan2 %17, %17 : tensor<10xf16>
      %274 = vector.shuffle %264, %21 [0, 3, 6, 7, 8] : vector<5xi1>, vector<5xi1>
      %275 = arith.minsi %c1491804838_i64, %c1199528644_i64 : i64
      %rank = tensor.rank %reduced : tensor<f32>
      %276 = vector.broadcast %c401653752_i32 : i32 to vector<2xi32>
      scf.yield %276 : vector<2xi32>
    }
    %33 = math.exp2 %7 : tensor<10xf32>
    %34 = arith.minsi %false, %false : i1
    %35 = vector.multi_reduction <and>, %21, %false_3 [0] : vector<5xi1> to i1
    %36 = arith.shrsi %c404776214_i32, %c1343683170_i32 : i32
    %37 = vector.create_mask %c7, %c11, %c15 : vector<10x10x10xi1>
    %38 = arith.ori %c404776214_i32, %c401653752_i32 : i32
    scf.index_switch %c2 
    case 1 {
      %261 = bufferization.to_memref %17 : memref<10xf16>
      %262 = arith.subi %c-3927_i16, %c-3927_i16 : i16
      %263 = math.powf %reduced, %reduced : tensor<f32>
      bufferization.dealloc_tensor %19 : tensor<f32>
      %264 = arith.minsi %false, %false_3 : i1
      %265 = bufferization.clone %alloc_8 : memref<5xi32> to memref<5xi32>
      %from_elements_47 = tensor.from_elements %true, %35, %false_3, %35, %true, %false, %35, %false_4, %true, %true, %35, %false_3, %false, %false_3, %35, %false_3, %35, %false, %false_4, %false_3, %false, %false, %false, %false, %false_3, %false_3, %true, %false, %false_3, %false, %false_3, %false_4, %false_3, %false_4, %false_4, %false_4, %false_4, %35, %false_4, %true, %true, %false, %false_3, %false, %false_3, %false, %false_4, %35, %false_3, %false_3, %false, %false_3, %false, %false_4, %false, %true, %true, %false, %false, %false_3, %35, %false_3, %false_4, %true, %35, %35, %false_4, %false_3, %false_4, %false_3, %false_3, %false, %false, %false_4, %false, %35, %false, %35, %35, %false_3, %true, %35, %false_3, %true, %false_3, %35, %false_4, %35, %false, %false_4, %true, %true, %false, %false_3, %true, %false_3, %false, %false_3, %35, %false_4, %false_3, %false_3, %false_4, %false_3, %false_3, %false_4, %false_3, %false, %false, %false_3, %false_4, %35, %false, %35, %false_3, %true, %35, %true, %false, %false_4, %false, %35, %false, %false_4, %35, %true, %false_4, %false, %false, %false_4, %35, %35, %false_3, %false, %true, %false_3, %false_4, %35, %true, %true, %false, %false_4, %true, %false, %true, %true, %false_4, %false_4, %false_4, %35, %false, %false_4, %false, %false, %35, %false_3, %false, %false_4, %false, %false, %true, %false_3, %false_4, %false_3, %35, %35, %true, %35, %true, %false_4, %35, %true, %false_3, %false_3, %35, %false_4, %false, %false_4, %false_4, %35, %false_3, %35, %false, %false_4, %35, %true, %true, %true, %true, %true, %false_3, %false, %false, %false, %false, %true, %false, %true, %35, %35, %false_4, %false_3, %false, %false_4, %false_4, %false_4, %35, %true, %false, %false_3, %true, %35, %true, %false, %false_3, %false_3, %true, %false_4, %true, %true, %35, %true, %true, %false, %false, %true, %false_4, %false, %false_3, %false_3, %false, %false_3, %false, %false_3, %true, %35, %false_3, %35, %35, %false, %false_3, %false_3, %false, %false_3, %false, %false_3, %true, %false, %true, %35, %true, %true, %false_3, %false_4, %false_3, %35, %false_3, %false_3, %false_4, %false, %true, %false_3, %false_4, %35, %35, %false_3, %false_4, %true, %false_4, %false_4, %false_3, %false_4, %false, %false_4, %35, %false, %false_3, %false, %true, %false_4, %false_4, %true, %35, %false, %true, %false_4, %35, %false, %false, %false, %false_4, %false_4, %false_3, %false_4, %35, %false_4, %false_4, %false_4, %true, %true, %false_4, %false_4, %false, %false_4, %35, %35, %false, %false_3, %35, %35, %false_4, %35, %false, %false, %false, %false_4, %false_4, %35, %35, %true, %false_3, %false_4, %false_3, %false_3, %false_3, %true, %false_4, %false_3, %false_4, %false_3, %false_4, %false, %false, %35, %true, %false, %false, %false, %false, %35, %false_3, %false, %false, %false_4, %35, %false, %true, %false, %35, %false_4, %false_4, %true, %false_4, %true, %false_4, %false_3, %false, %false_4, %false, %false, %false_4, %true, %false, %true, %true, %true, %false_3, %false, %false_4, %true, %false_3, %false_3, %true, %false_4, %35, %false_3, %false_4, %false, %35, %false_4, %false_3, %false, %false, %false, %false, %true, %false_4, %false_3, %35, %false_4, %35, %false, %false_3, %false, %false_4, %35, %true, %false_4, %35, %false, %35, %true, %35, %true, %true, %false, %true, %false, %false, %false_4, %false_3, %true, %false, %false_4, %false_4, %false, %false_4, %false_4, %true, %false_3, %false, %35, %35, %true, %false_4, %true, %false_3, %35, %true, %true, %false_4, %false_3, %false_4, %true, %35, %35, %false, %35, %false_3, %35, %35, %false_3, %false_4, %35, %false, %35, %35, %false, %true, %false_3, %35, %35, %false, %false, %true, %35, %false_4, %35, %true, %false, %35, %false_3, %35, %35, %false, %true, %false_3, %false_4, %true, %false, %false, %false_4, %true, %true, %true, %false, %false_3, %false_3, %false_3, %false, %false_4, %true, %false_3, %false, %35, %true, %35, %35, %false_4, %false_4, %true, %false_4, %false_3, %false_3, %true, %true, %35, %false_4, %false_3, %false, %true, %false, %false_3, %35, %false_4, %false, %false_4, %35, %false, %false_4, %35, %false_3, %35, %false, %35, %false, %35, %35, %35, %35, %true, %true, %true, %true, %false, %35, %false, %false_3, %35, %false_3, %false_3, %false_4, %false, %false_3, %true, %false, %35, %false, %false_3, %false_3, %35, %false_3, %false, %false_4, %true, %false_4, %true, %false_4, %35, %false_4, %false, %true, %false_3, %true, %false_4, %35, %false_4, %false_4, %false, %35, %false, %false, %false_3, %35, %false_3, %false_4, %35, %35, %false_4, %true, %false_3, %35, %35, %false_3, %35, %false_3, %false, %false_3, %35, %false_3, %false_3, %35, %false, %true, %false_3, %35, %false_3, %true, %false_4, %false_4, %false_3, %35, %false_3, %false_3, %true, %35, %false_4, %true, %true, %false_4, %true, %true, %true, %false_3, %false, %true, %35, %false, %false_3, %true, %false_4, %false_3, %false, %false, %true, %false_4, %false_3, %false, %false, %false, %35, %false_4, %false_4, %false_3, %false, %false_4, %false, %35, %false_3, %false_3, %false_3, %true, %false_3, %false_3, %false_3, %false_4, %false, %false_4, %false, %false_4, %true, %35, %true, %false_3, %false_4, %false_4, %false_4, %true, %true, %true, %false_4, %35, %false, %false, %false_3, %true, %false_4, %false_4, %true, %false, %false_3, %false_3, %false_4, %false, %false_4, %true, %35, %35, %false_3, %true, %true, %35, %35, %false, %false_4, %false, %35, %false_3, %false_4, %true, %false_4, %35, %false, %true, %35, %true, %true, %false_3, %false, %false_3, %true, %false, %35, %true, %35, %35, %true, %true, %35, %true, %false, %35, %true, %35, %false_4, %true, %true, %false, %false, %false, %true, %false_3, %false_3, %false_4, %false_3, %35, %false_3, %false_4, %35, %false_4, %true, %false_3, %35, %true, %false, %true, %false_4, %false_3, %false_4, %false, %false_4, %false, %false_3, %false_4, %35, %false, %true, %false_3, %false, %true, %false_3, %false, %false, %false_3, %false_4, %false, %false_3, %false, %false, %false, %false, %35, %35, %false_4, %false_4, %false_3, %35, %false, %false_3, %false_3, %false_4, %35, %false, %35, %false, %35, %false_4, %true, %35, %true, %false_4, %false_4, %false_4, %35, %true, %true, %false_3, %35, %true, %false_4, %false_4, %false, %35, %35, %false, %false_4, %false_3, %false, %true, %false, %35, %false, %35, %false_3, %false, %false, %false_3, %false, %false_3, %false_3, %false, %true, %true, %true, %35, %true, %true, %false, %true, %false_4, %35, %true, %true, %true, %false, %false_4, %false_3, %35, %false_3, %false_4, %false_4, %false_4, %true, %false_4, %false_4, %false, %true, %true, %false_4, %35, %true, %35, %false, %false, %35, %false, %true, %true, %false_4, %false, %false_4, %false_4, %false_4, %35, %false, %true, %false, %false_3, %true, %true, %true, %false_3, %true, %false_3, %false, %35, %35, %false_3, %false_3, %false_4, %false, %false_3, %35, %false_4, %false_3, %false_3, %false_4, %false, %false, %false_4, %false_3, %false_3, %false_4, %false, %35, %35, %true, %true, %35, %false_4, %35, %true, %true, %false_4, %false_3, %false, %false_3, %true, %false_4, %false, %35, %false_4, %35, %35, %false_3, %true, %false_4, %35, %false_3, %false_4, %false, %35, %false, %false_4, %false, %false_3, %35, %true, %35, %false_3, %35, %false_3, %true, %false, %35, %false_3, %true, %false_4, %false_3, %35, %true, %true, %false, %false_3, %false_3, %false_3, %35, %false, %35, %35, %35, %false, %false_4, %true, %false, %false_4, %false_4, %true, %false_3, %true, %false_3, %false, %35, %false_4, %false_3, %false, %false_4, %false_4, %false_3, %false_3, %false_3, %false_4, %false, %35, %false_3, %false_3, %35, %35, %35, %false, %35, %false, %35, %true, %true, %false_3, %false_4, %false_4, %35, %false, %false_4, %false_3, %false_4, %false_4, %false_3, %false_4, %false_3, %false_3, %false_4, %false, %35, %false_4, %false, %35, %false_3, %35, %true, %false_4, %35, %true, %false_4, %35, %false_4, %35, %false_3, %false_3, %false_4, %true, %false_3, %35 : tensor<10x10x10xi1>
      %266 = arith.addf %cst, %cst_2 : f16
      %267 = arith.shli %c-3927_i16, %c-3927_i16 : i16
      %268 = bufferization.to_tensor %alloc_16 : memref<10x10x10xi64>
      %269 = math.tanh %6 : tensor<2xf32>
      %270 = arith.divf %cst_0, %cst_5 : f16
      %271 = bufferization.to_memref %12 : memref<2xi64>
      %272 = index.sizeof
      %273 = bufferization.clone %alloc_9 : memref<10x10x10xi64> to memref<10x10x10xi64>
      %274 = vector.flat_transpose %21 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
      scf.yield
    }
    case 2 {
      %261 = arith.muli %false_4, %false_4 : i1
      %262 = math.roundeven %13 : tensor<10x10x10xf16>
      %263 = math.exp %cst_0 : f16
      %264 = vector.multi_reduction <and>, %21, %true [0] : vector<5xi1> to i1
      scf.execute_region {
        %277 = index.casts %c401653752_i32 : i32 to index
        %278 = vector.shuffle %21, %21 [2, 4, 6, 7, 8, 9] : vector<5xi1>, vector<5xi1>
        %279 = arith.ori %false, %true : i1
        %280 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 + 8, d3 - 16, d2 - (d3 + 8))>(%c4, %c9, %c9, %31)
        %281 = tensor.empty() : tensor<10xf32>
        %282 = arith.maxui %c1491804838_i64, %c540967278_i64 : i64
        %283 = vector.insertelement %true, %21[%c11 : index] : vector<5xi1>
        %284 = arith.maxui %35, %false_4 : i1
        %285 = index.castu %264 : i1 to index
        %286 = vector.transpose %37, [0, 1, 2] : vector<10x10x10xi1> to vector<10x10x10xi1>
        %287 = arith.remsi %c540967278_i64, %c540967278_i64 : i64
        %288 = arith.remsi %c-3927_i16, %c-3927_i16 : i16
        %289 = arith.minsi %264, %false_3 : i1
        %290 = math.cos %7 : tensor<10xf32>
        %inserted_50 = tensor.insert %c540967278_i64 into %transposed[%c1] : tensor<5xi64>
        %291 = arith.shli %false_4, %true : i1
        scf.yield
      }
      %265 = vector.broadcast %false : i1 to vector<10x10xi1>
      %dest_47, %accumulated_value_48 = vector.scan <add>, %37, %265 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
      %inserted_49 = tensor.insert %cst_21 into %11[%c1] : tensor<5xf32>
      %266 = vector.broadcast %c1491804838_i64 : i64 to vector<2xi64>
      %267 = vector.broadcast %35 : i1 to vector<2xi1>
      %268 = vector.maskedload %alloc_10[%c4], %267, %266 : memref<5xi64>, vector<2xi1>, vector<2xi64> into vector<2xi64>
      %269 = vector.flat_transpose %266 {columns = 1 : i32, rows = 2 : i32} : vector<2xi64> -> vector<2xi64>
      %270 = math.rsqrt %13 : tensor<10x10x10xf16>
      %271 = vector.broadcast %35 : i1 to vector<10xi1>
      %272 = vector.insert %271, %37 [2, 6] : vector<10xi1> into vector<10x10x10xi1>
      %273 = index.divs %c7, %31
      %274 = arith.remsi %false, %false_4 : i1
      %275 = arith.subi %c1199528644_i64, %c540967278_i64 : i64
      %276 = arith.shrui %c-3927_i16, %c-3927_i16 : i16
      scf.execute_region {
        %277 = affine.max affine_map<(d0) -> (((d0 floordiv 128) * -16) floordiv 64, ((d0 floordiv 128) * -16) floordiv 64)>(%273)
        %278 = vector.broadcast %35 : i1 to vector<10x10xi1>
        %dest_50, %accumulated_value_51 = vector.scan <and>, %37, %278 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
        %279 = math.roundeven %reduced : tensor<f32>
        %280 = arith.divf %cst, %cst_5 : f16
        %281 = math.expm1 %6 : tensor<2xf32>
        %282 = index.ceildivs %c12, %c8
        %283 = vector.create_mask %c2 : vector<10xi1>
        memref.assume_alignment %alloc_17, 1 : memref<5xi32>
        %284 = arith.minui %c1343683170_i32, %c401653752_i32 : i32
        %285 = arith.remsi %c540967278_i64, %c540967278_i64 : i64
        %286 = math.fma %7, %7, %7 : tensor<10xf32>
        %alloc_52 = memref.alloc() : memref<10xi1>
        %287 = arith.xori %35, %true : i1
        %288 = vector.shuffle %37, %37 [0, 1, 2, 4, 6, 8, 11, 13, 14, 19] : vector<10x10x10xi1>, vector<10x10x10xi1>
        %289 = arith.maxui %c1491804838_i64, %c1491804838_i64 : i64
        %290 = index.sizeof
        scf.yield
      }
      scf.yield
    }
    default {
      %261 = bufferization.to_memref %15 : memref<5xf16>
      %262 = arith.divf %cst, %cst_2 : f16
      %263 = vector.matrix_multiply %21, %21 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xi1>, vector<5xi1>) -> vector<1xi1>
      %264 = math.absf %6 : tensor<2xf32>
      %265 = tensor.empty() : tensor<10x10x10xi1>
      %mapped_47 = linalg.map ins(%1, %0, %1 : tensor<10x10x10xi1>, tensor<10x10x10xi1>, tensor<10x10x10xi1>) outs(%265 : tensor<10x10x10xi1>)
        (%in: i1, %in_50: i1, %in_51: i1) {
          vector.print %37 : vector<10x10x10xi1>
          %281 = arith.ori %false_3, %35 : i1
          %282 = arith.remsi %false, %in_51 : i1
          %283 = arith.ori %false_4, %in_51 : i1
          %284 = affine.max affine_map<(d0) -> (((-d0) mod 64) * 16, (-d0) mod 128 + 32, (-d0) ceildiv 16)>(%c10)
          %285 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 ceildiv 4)>(%c2, %c0, %c6, %c13)
          %286 = arith.cmpf ole, %cst_21, %cst_21 : f32
          %287 = arith.maxui %c1199528644_i64, %c1199528644_i64 : i64
          %288 = math.cos %13 : tensor<10x10x10xf16>
          %289 = memref.load %alloc_16[%c1, %c4, %c0] : memref<10x10x10xi64>
          %290 = math.log1p %5 : tensor<5xf32>
          %291 = affine.max affine_map<(d0, d1, d2, d3) -> ((d0 + 2) ceildiv 8)>(%285, %c13, %c5, %c4)
          %292 = bufferization.to_memref %7 : memref<10xf32>
          %293 = arith.minf %cst_0, %cst_5 : f16
          %294 = vector.create_mask %c1 : vector<10xi1>
          %295 = arith.ceildivsi %c1343683170_i32, %c404776214_i32 : i32
          %collapsed_52 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<10x10x10xi1> into tensor<100x10xi1>
          %296 = vector.insert %false, %263 [0] : i1 into vector<1xi1>
          %297 = arith.shli %c1199528644_i64, %c1199528644_i64 : i64
          vector.print %37 : vector<10x10x10xi1>
          %298 = vector.transpose %263, [0] : vector<1xi1> to vector<1xi1>
          %299 = vector.insert %false_3, %294 [7] : i1 into vector<10xi1>
          %300 = bufferization.clone %292 : memref<10xf32> to memref<10xf32>
          %301 = arith.muli %false_4, %false : i1
          %302 = vector.broadcast %false_4 : i1 to vector<10x10xi1>
          %dest_53, %accumulated_value_54 = vector.scan <add>, %37, %302 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
          %303 = vector.extract %37[8, 2] : vector<10x10x10xi1>
          %304 = math.log1p %19 : tensor<f32>
          %305 = math.ctlz %c1199528644_i64 : i64
          memref.copy %alloc_19, %alloc_15 : memref<10xi1> to memref<10xi1>
          %306 = arith.ori %c401653752_i32, %c404776214_i32 : i32
          %307 = vector.shuffle %294, %21 [0, 1, 4, 6, 8, 11, 14] : vector<10xi1>, vector<5xi1>
          %from_elements_55 = tensor.from_elements %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21 : tensor<10x10x10xf32>
          %false_56 = arith.constant false
          linalg.yield %false_56 : i1
        }
      %266 = vector.broadcast %false_4 : i1 to vector<10x10xi1>
      %dest_48, %accumulated_value_49 = vector.scan <minsi>, %37, %266 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
      %267 = vector.bitcast %21 : vector<5xi1> to vector<5xi1>
      %268 = tensor.empty() : tensor<10xf16>
      %269 = index.divs %c13, %c6
      %270 = vector.shuffle %263, %267 [3] : vector<1xi1>, vector<5xi1>
      %271 = vector.insertelement %35, %21[%c6 : index] : vector<5xi1>
      %272 = tensor.empty() : tensor<10x10xi1>
      %273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_19, %272 : memref<10xi1>, tensor<10x10xi1>) outs(%1 : tensor<10x10x10xi1>) {
      ^bb0(%in: i1, %in_50: i1, %out: i1):
        %collapsed_51 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<10x10x10xi1> into tensor<100x10xi1>
        %281 = vector.create_mask %c4 : vector<10xi1>
        %282 = bufferization.clone %alloc_8 : memref<5xi32> to memref<5xi32>
        %283 = index.mul %c3, %c8
        %284 = arith.andi %c1491804838_i64, %c540967278_i64 : i64
        %285 = vector.broadcast %cst_21 : f32 to vector<10x10x10xf32>
        %286 = vector.fma %285, %285, %285 : vector<10x10x10xf32>
        %287 = affine.apply affine_map<(d0, d1) -> (((d0 ceildiv 16) * 8) mod 64)>(%c8, %c13)
        %288 = arith.divui %false_3, %false_4 : i1
        %289 = arith.maxf %cst, %cst_0 : f16
        %290 = arith.remsi %c1343683170_i32, %c1343683170_i32 : i32
        %291 = math.roundeven %11 : tensor<5xf32>
        %292 = math.fma %15, %15, %15 : tensor<5xf16>
        %293 = arith.negf %cst_1 : f16
        %from_elements_52 = tensor.from_elements %35, %in, %false_4, %in, %in_50, %false_3, %false, %in, %false_3, %true : tensor<10xi1>
        %294 = index.floordivs %c7, %c3
        %295 = vector.shuffle %37, %37 [1, 2, 3, 4, 6, 8, 11, 12, 14, 16] : vector<10x10x10xi1>, vector<10x10x10xi1>
        %296 = vector.broadcast %c540967278_i64 : i64 to vector<10x10x10xi64>
        %297 = math.log1p %13 : tensor<10x10x10xf16>
        %298 = arith.mulf %cst_5, %cst_5 : f16
        %299 = arith.muli %false_4, %out : i1
        %300 = index.sizeof
        %301 = vector.flat_transpose %281 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %302 = arith.minsi %in, %false_4 : i1
        %303 = vector.flat_transpose %281 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %304 = arith.maxui %true, %in : i1
        %305 = index.mul %287, %c7
        %306 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, d3 * -8, d1 - 4)>(%c15, %c8, %c12, %c3)
        %307 = arith.mulf %cst_5, %cst_0 : f16
        %308 = vector.reduction <and>, %267 : vector<5xi1> into i1
        %309 = math.fma %6, %6, %6 : tensor<2xf32>
        %310 = vector.extract %267[4] : vector<5xi1>
        %311 = math.cos %6 : tensor<2xf32>
        linalg.yield %35 : i1
      } -> tensor<10x10x10xi1>
      %274 = tensor.empty() : tensor<10x2xi16>
      %275 = tensor.empty() : tensor<2x2xi16>
      %276 = tensor.empty() : tensor<10x2xi16>
      %277 = linalg.matmul ins(%274, %275 : tensor<10x2xi16>, tensor<2x2xi16>) outs(%276 : tensor<10x2xi16>) -> tensor<10x2xi16>
      %278 = affine.if affine_set<(d0) : (d0 mod 64 == 0)>(%c4) -> memref<10x10x10xf32> {
        %281 = bufferization.clone %alloc : memref<10x10x10xi32> to memref<10x10x10xi32>
        %282 = affine.max affine_map<(d0, d1) -> (-(-d0 - 8), d0 - (-d0 - 8))>(%25, %c13)
        %283 = arith.cmpi ult, %35, %false_3 : i1
        %284 = vector.flat_transpose %263 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %285 = math.round %6 : tensor<2xf32>
        %286 = vector.broadcast %cst_1 : f16 to vector<5xf16>
        bufferization.dealloc_tensor %22 : tensor<2xi16>
        %287 = vector.broadcast %c5 : index to vector<10xindex>
        %288 = vector.broadcast %false_3 : i1 to vector<10xi1>
        %289 = vector.broadcast %c540967278_i64 : i64 to vector<10xi64>
        vector.scatter %alloc_12[%c0] [%287], %288, %289 : memref<5xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
        %alloc_50 = memref.alloc() : memref<10x10x10xf32>
        affine.yield %alloc_50 : memref<10x10x10xf32>
      } else {
        memref.assume_alignment %alloc, 4 : memref<10x10x10xi32>
        %alloca_50 = memref.alloca() : memref<2xi1>
        %281 = arith.cmpf uge, %cst_2, %cst_5 : f16
        %282 = affine.max affine_map<(d0, d1) -> (d0, d1 * 2048 + d1 + d0 - 8, (d1 + d0 - 8) ceildiv 64, d1 + d0 - 8)>(%c2, %c7)
        %283 = arith.subi %35, %true : i1
        %284 = index.maxu %c7, %c1
        %285 = math.powf %15, %15 : tensor<5xf16>
        %286 = vector.shuffle %21, %267 [2, 6, 8, 9] : vector<5xi1>, vector<5xi1>
        %alloc_51 = memref.alloc() : memref<10x10x10xf32>
        affine.yield %alloc_51 : memref<10x10x10xf32>
      }
      %279 = vector.load %alloc_8[%c0] : memref<5xi32>, vector<5xi32>
      %280 = arith.muli %false_4, %false : i1
    }
    %39 = arith.shli %false_4, %true : i1
    %40 = tensor.empty() : tensor<10x10x10xf16>
    %41 = memref.realloc %26 : memref<5xi32> to memref<5xi32>
    scf.execute_region {
      %261 = math.roundeven %6 : tensor<2xf32>
      %262 = index.add %c15, %c9
      %263 = index.mul %c7, %c2
      memref.assume_alignment %alloc_10, 8 : memref<5xi64>
      %264 = math.roundeven %6 : tensor<2xf32>
      %265 = arith.divui %c-3927_i16, %c-3927_i16 : i16
      %266 = vector.broadcast %c1199528644_i64 : i64 to vector<5xi64>
      %267 = vector.maskedload %alloc_9[%c5, %c8, %c8], %21, %266 : memref<10x10x10xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
      %268 = arith.ceildivsi %c1491804838_i64, %c540967278_i64 : i64
      %269 = math.cos %6 : tensor<2xf32>
      %270 = vector.transpose %266, [0] : vector<5xi64> to vector<5xi64>
      %271 = bufferization.to_memref %14 : memref<5xi1>
      %272 = vector.transpose %266, [0] : vector<5xi64> to vector<5xi64>
      %273 = math.log %cst_2 : f16
      %274 = tensor.empty() : tensor<10x10xf16>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%274 : tensor<10x10xf16>) outs(%13 : tensor<10x10x10xf16>) {
      ^bb0(%in: f16, %out: f16):
        %278 = arith.cmpi slt, %c404776214_i32, %c1343683170_i32 : i32
        %279 = arith.negf %cst_21 : f32
        %280 = arith.maxui %c404776214_i32, %c401653752_i32 : i32
        %281 = vector.insertelement %c1199528644_i64, %267[%c2 : index] : vector<5xi64>
        %282 = math.round %in : f16
        %283 = affine.min affine_map<(d0) -> (-(d0 - 64), (d0 ceildiv 16) * -32, d0 mod 8, -(d0 - 64))>(%27)
        vector.print %266 : vector<5xi64>
        %284 = arith.cmpf ogt, %out, %cst_2 : f16
        %285 = math.cos %11 : tensor<5xf32>
        %286 = math.cos %15 : tensor<5xf16>
        %287 = vector.insertelement %c540967278_i64, %266[%c10 : index] : vector<5xi64>
        memref.tensor_store %15, %alloc_20 : memref<5xf16>
        %288 = vector.load %alloc[%c8, %c5, %c1] : memref<10x10x10xi32>, vector<2xi32>
        %289 = arith.ori %false_4, %false : i1
        %290 = math.log10 %in : f16
        %291 = arith.minsi %35, %true : i1
        %292 = arith.shli %true, %false_4 : i1
        %alloc_47 = memref.alloc() : memref<10x10xi16>
        %293 = tensor.empty() : tensor<10x2xi16>
        %294 = tensor.empty() : tensor<10x2xi16>
        %295 = linalg.matmul ins(%alloc_47, %293 : memref<10x10xi16>, tensor<10x2xi16>) outs(%294 : tensor<10x2xi16>) -> tensor<10x2xi16>
        %296 = vector.flat_transpose %288 {columns = 1 : i32, rows = 2 : i32} : vector<2xi32> -> vector<2xi32>
        %297 = vector.create_mask %25 : vector<5xi1>
        %298 = arith.cmpi ugt, %false_4, %false : i1
        %299 = arith.remf %cst_1, %cst_5 : f16
        %300 = vector.broadcast %cst_21 : f32 to vector<f32>
        %301 = vector.transfer_write %300, %5[%c14] : vector<f32>, tensor<5xf32>
        %302 = arith.minf %cst_0, %cst : f16
        %expanded_48 = tensor.expand_shape %16 [[0, 1]] : tensor<10xf16> into tensor<10x1xf16>
        memref.assume_alignment %alloc_6, 2 : memref<10x10x10xi1>
        %303 = arith.mulf %cst_5, %cst_1 : f16
        %304 = index.add %263, %c1
        %305 = math.absi %12 : tensor<2xi64>
        %306 = vector.broadcast %cst_21 : f32 to vector<10xf32>
        %307 = vector.fma %306, %306, %306 : vector<10xf32>
        %308 = vector.bitcast %288 : vector<2xi32> to vector<2xi32>
        %309 = vector.splat %c7 : vector<2xindex>
        linalg.yield %cst_0 : f16
      } -> tensor<10x10x10xf16>
      %276 = math.cos %19 : tensor<f32>
      %277 = arith.subi %false_4, %false : i1
      scf.yield
    }
    %42 = affine.max affine_map<(d0, d1, d2) -> (d0 mod 16, d2 + d1 * 32 + 2, d0)>(%31, %c2, %c6)
    %generated = tensor.generate %c2 {
    ^bb0(%arg0: index):
      scf.index_switch %c15 
      case 1 {
        %263 = math.log1p %cst_1 : f16
        %264 = arith.andi %true, %false_4 : i1
        %265 = vector.load %alloc_17[%c3] : memref<5xi32>, vector<10xi32>
        %266 = vector.create_mask %c14 : vector<5xi1>
        vector.print %21 : vector<5xi1>
        %267 = math.roundeven %cst_1 : f16
        %268 = vector.reduction <mul>, %21 : vector<5xi1> into i1
        %269 = arith.maxf %cst_21, %cst_21 : f32
        %270 = arith.maxui %c1199528644_i64, %c540967278_i64 : i64
        %271 = arith.shrsi %c1343683170_i32, %c404776214_i32 : i32
        %272 = vector.insertelement %false, %21[%c12 : index] : vector<5xi1>
        %273 = math.floor %15 : tensor<5xf16>
        %274 = vector.extract %266[2] : vector<5xi1>
        %275 = math.tanh %7 : tensor<10xf32>
        %276 = arith.ceildivsi %false_4, %35 : i1
        %277 = bufferization.clone %alloc_17 : memref<5xi32> to memref<5xi32>
        scf.yield
      }
      case 2 {
        %263 = arith.minsi %false_3, %false_4 : i1
        %264 = vector.load %alloc_12[%c1] : memref<5xi64>, vector<10x10x10xi64>
        %265 = vector.extract %21[1] : vector<5xi1>
        %266 = vector.extract %37[4] : vector<10x10x10xi1>
        %267 = vector.shuffle %266, %266 [3, 7, 8, 14, 15, 17, 18, 19] : vector<10x10xi1>, vector<10x10xi1>
        %268 = vector.broadcast %true : i1 to vector<5x5xi1>
        %269 = vector.outerproduct %21, %21, %268 {kind = #vector.kind<xor>} : vector<5xi1>, vector<5xi1>
        %270 = affine.max affine_map<(d0, d1, d2, d3) -> (-d0, d2 ceildiv 8 + 2)>(%c1, %c5, %c7, %c10)
        %271 = arith.mulf %cst_21, %cst_21 : f32
        %272 = vector.broadcast %c9 : index to vector<2xindex>
        %273 = vector.broadcast %true : i1 to vector<2xi1>
        vector.scatter %alloc_19[%c8] [%272], %273, %273 : memref<10xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
        %274 = arith.ceildivsi %false_3, %false : i1
        %275 = vector.insert %266, %37 [6] : vector<10x10xi1> into vector<10x10x10xi1>
        %276 = affine.min affine_map<(d0, d1, d2, d3) -> (d2)>(%c5, %c5, %c7, %c9)
        %277 = arith.maxui %c401653752_i32, %c401653752_i32 : i32
        %278 = arith.shrui %true, %false_4 : i1
        %279 = affine.min affine_map<(d0, d1, d2) -> (d2 ceildiv 2, -(d0 mod 128), (d2 ceildiv 2) mod 64, d2)>(%c4, %31, %c7)
        %expanded_47 = tensor.expand_shape %4 [[0, 1]] : tensor<10xf16> into tensor<10x1xf16>
        scf.yield
      }
      case 3 {
        %263 = affine.max affine_map<(d0) -> (d0)>(%arg0)
        %264 = affine.min affine_map<(d0) -> (0, (d0 floordiv 64) * -4)>(%42)
        %265 = vector.shuffle %37, %37 [1, 3, 4, 5, 6, 7, 8, 10, 15, 16, 18, 19] : vector<10x10x10xi1>, vector<10x10x10xi1>
        %266 = vector.broadcast %false : i1 to vector<10x10x10x10xi1>
        %267 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %37, %37, %266 : vector<10x10x10xi1>, vector<10x10x10xi1> into vector<10x10x10x10xi1>
        %268 = arith.remsi %c1491804838_i64, %c1491804838_i64 : i64
        %269 = math.absi %9 : tensor<5xi1>
        %270 = vector.broadcast %cst_21 : f32 to vector<5xf32>
        %271 = vector.fma %270, %270, %270 : vector<5xf32>
        %272 = bufferization.clone %alloc_15 : memref<10xi1> to memref<10xi1>
        %collapsed_47 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<10x10x10xi1> into tensor<100x10xi1>
        %273 = arith.shrsi %c1199528644_i64, %c1199528644_i64 : i64
        %274 = bufferization.to_memref %17 : memref<10xf16>
        %275 = index.sizeof
        %276 = math.cttz %23 : tensor<i16>
        %inserted_48 = tensor.insert %cst_21 into %11[%c0] : tensor<5xf32>
        %277 = bufferization.clone %alloc_10 : memref<5xi64> to memref<5xi64>
        %278 = math.fma %19, %reduced, %reduced : tensor<f32>
        scf.yield
      }
      case 4 {
        %263 = arith.ori %c1343683170_i32, %c401653752_i32 : i32
        %264 = math.log10 %5 : tensor<5xf32>
        %265 = vector.broadcast %35 : i1 to vector<5x5xi1>
        %266 = vector.outerproduct %21, %21, %265 {kind = #vector.kind<maxsi>} : vector<5xi1>, vector<5xi1>
        %267 = math.absi %0 : tensor<10x10x10xi1>
        memref.copy %alloc_8, %alloc_17 : memref<5xi32> to memref<5xi32>
        %268 = affine.min affine_map<(d0, d1) -> (-(d0 + 4), d0 + 16, d0 floordiv 32)>(%c14, %c6)
        %269 = bufferization.to_memref %12 : memref<2xi64>
        %270 = tensor.empty() : tensor<2xi64>
        %271 = index.ceildivs %c8, %c14
        %272 = arith.shrsi %false_4, %false_3 : i1
        %273 = arith.maxsi %c1199528644_i64, %c540967278_i64 : i64
        %274 = vector.broadcast %false_3 : i1 to vector<10x10xi1>
        %dest_47, %accumulated_value_48 = vector.scan <and>, %37, %274 {inclusive = false, reduction_dim = 2 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
        %275 = math.absf %11 : tensor<5xf32>
        %276 = arith.cmpf ole, %cst_21, %cst_21 : f32
        %277 = math.fma %15, %15, %15 : tensor<5xf16>
        %278 = affine.max affine_map<(d0) -> (d0 - 2, d0 * 33 - 16, (d0 - 2) floordiv 128, d0 + (((d0 - 2) floordiv 128) mod 16) floordiv 64 - 1)>(%c12)
        scf.yield
      }
      default {
        %263 = arith.ceildivsi %false, %false : i1
        %264 = math.tan %40 : tensor<10x10x10xf16>
        %265 = vector.broadcast %cst_21 : f32 to vector<10x10x10xf32>
        %266 = vector.fma %265, %265, %265 : vector<10x10x10xf32>
        %alloc_47 = memref.alloc() : memref<2x2xi1>
        %alloc_48 = memref.alloc() : memref<2x10xi1>
        %267 = tensor.empty() : tensor<2x10xi1>
        %268 = linalg.matmul ins(%alloc_47, %alloc_48 : memref<2x2xi1>, memref<2x10xi1>) outs(%267 : tensor<2x10xi1>) -> tensor<2x10xi1>
        %269 = math.absf %15 : tensor<5xf16>
        %270 = vector.shuffle %265, %266 [0, 3, 6, 8, 10, 18, 19] : vector<10x10x10xf32>, vector<10x10x10xf32>
        %271 = math.fma %19, %19, %reduced : tensor<f32>
        %272 = math.atan2 %cst_0, %cst_5 : f16
        %273 = vector.create_mask %c0, %c10, %c4 : vector<10x10x10xi1>
        %274 = math.exp2 %cst : f16
        %275 = tensor.empty(%c15, %c11) : tensor<?x?x10xi1>
        %276 = arith.remf %cst_1, %cst_2 : f16
        %277 = arith.maxf %cst_1, %cst : f16
        %278 = index.divs %c7, %25
        %279 = arith.shrsi %c1199528644_i64, %c540967278_i64 : i64
        bufferization.dealloc_tensor %24 : tensor<i16>
      }
      %261 = vector.broadcast %c6 : index to vector<5xindex>
      vector.scatter %alloc_15[%c8] [%261], %21, %21 : memref<10xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
      bufferization.dealloc_tensor %7 : tensor<10xf32>
      %262 = vector.broadcast %c1343683170_i32 : i32 to vector<i32>
      vector.transfer_write %262, %26[%c10] : vector<i32>, memref<5xi32>
      tensor.yield %cst_21 : f32
    } : tensor<?xf32>
    %43 = memref.load %alloc_20[%c2] : memref<5xf16>
    %44 = math.sqrt %16 : tensor<10xf16>
    %45 = math.fma %cst_5, %cst_0, %cst_2 : f16
    %46 = math.roundeven %cst_1 : f16
    %47 = math.tanh %11 : tensor<5xf32>
    %48 = index.ceildivs %c13, %c6
    %49 = bufferization.clone %alloc_19 : memref<10xi1> to memref<10xi1>
    %from_elements = tensor.from_elements %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64 : tensor<10x10x10xi64>
    %50 = bufferization.clone %alloc_15 : memref<10xi1> to memref<10xi1>
    %alloc_22 = memref.alloc() : memref<f32>
    memref.tensor_store %reduced, %alloc_22 : memref<f32>
    %51 = arith.minf %cst_2, %cst_2 : f16
    affine.store %c1343683170_i32, %alloc_8[%c15] : memref<5xi32>
    %52 = vector.extract %21[3] : vector<5xi1>
    %53 = vector.broadcast %cst_21 : f32 to vector<5xf32>
    %54 = vector.fma %53, %53, %53 : vector<5xf32>
    %55 = affine.max affine_map<(d0, d1) -> (((d1 + d0) * 3) mod 32, d1 - d0 - (d1 + d0))>(%48, %c13)
    %56 = tensor.empty() : tensor<5xi16>
    %57 = arith.maxf %cst, %cst : f16
    %58 = arith.remui %false, %true : i1
    %59 = math.exp2 %cst_21 : f32
    %collapsed = tensor.collapse_shape %13 [[0, 1], [2]] : tensor<10x10x10xf16> into tensor<100x10xf16>
    %60 = math.powf %11, %5 : tensor<5xf32>
    %61 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c15, %c2, %c4)
    %62 = arith.divsi %c1343683170_i32, %c404776214_i32 : i32
    memref.assume_alignment %alloc_18, 2 : memref<2xf16>
    %63 = vector.broadcast %c404776214_i32 : i32 to vector<2xi32>
    %64 = vector.broadcast %false : i1 to vector<2xi1>
    %65 = vector.maskedload %26[%c4], %64, %63 : memref<5xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
    %alloc_23 = memref.alloc() : memref<10x10xf16>
    %66 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_23 : memref<10x10xf16>) outs(%13 : tensor<10x10x10xf16>) {
    ^bb0(%in: f16, %out: f16):
      %261 = index.floordivs %42, %42
      %262 = index.sub %27, %c10
      %263 = arith.minf %out, %in : f16
      %264 = vector.insert %false, %21 [0] : i1 into vector<5xi1>
      %265 = tensor.empty() : tensor<10x10x10xi1>
      %266 = arith.shrsi %c404776214_i32, %c1343683170_i32 : i32
      %alloc_47 = memref.alloc() : memref<5xf32>
      memref.tensor_store %11, %alloc_47 : memref<5xf32>
      %267 = memref.alloca_scope  -> (memref<2xf16>) {
        %289 = math.floor %13 : tensor<10x10x10xf16>
        %290 = index.castu %false_4 : i1 to index
        memref.assume_alignment %50, 4 : memref<10xi1>
        %291 = math.fma %6, %6, %6 : tensor<2xf32>
        %292 = vector.shuffle %64, %64 [0] : vector<2xi1>, vector<2xi1>
        %293 = arith.ori %c404776214_i32, %c401653752_i32 : i32
        %294 = math.sqrt %40 : tensor<10x10x10xf16>
        %295 = vector.broadcast %c1199528644_i64 : i64 to vector<10xi64>
        %296 = vector.broadcast %false_4 : i1 to vector<10xi1>
        %297 = vector.maskedload %alloc_14[%c1], %296, %295 : memref<2xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
        %collapsed_51 = tensor.collapse_shape %265 [[0, 1], [2]] : tensor<10x10x10xi1> into tensor<100x10xi1>
        %298 = tensor.empty(%c6) : tensor<?xi64>
        %299 = affine.min affine_map<(d0, d1, d2, d3) -> (-d2, 0, ((d2 floordiv 32 - d2 floordiv 16) ceildiv 8) mod 2)>(%c4, %c14, %c13, %c2)
        %300 = math.fma %6, %6, %6 : tensor<2xf32>
        %301 = arith.divsi %false, %35 : i1
        %302 = math.absf %40 : tensor<10x10x10xf16>
        %303 = math.cttz %23 : tensor<i16>
        %304 = arith.remui %c1491804838_i64, %c540967278_i64 : i64
        %305 = vector.broadcast %c404776214_i32 : i32 to vector<5xi32>
        %306 = vector.gather %7[%299] [%305], %21, %53 : tensor<10xf32>, vector<5xi32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
        %307 = vector.reduction <maxf>, %306 : vector<5xf32> into f32
        %308 = arith.ceildivsi %c540967278_i64, %c1491804838_i64 : i64
        %309 = vector.broadcast %c401653752_i32 : i32 to vector<2x2xi32>
        %310 = vector.outerproduct %63, %65, %309 {kind = #vector.kind<minsi>} : vector<2xi32>, vector<2xi32>
        %311 = math.roundeven %11 : tensor<5xf32>
        %312 = math.round %4 : tensor<10xf16>
        %313 = math.powf %4, %16 : tensor<10xf16>
        %314 = arith.ceildivsi %35, %35 : i1
        memref.assume_alignment %26, 2 : memref<5xi32>
        %alloc_52 = memref.alloc() : memref<10xi64>
        memref.tensor_store %2, %alloc_52 : memref<10xi64>
        %315 = arith.shrsi %35, %true : i1
        %316 = math.atan2 %cst_5, %cst_1 : f16
        %317 = math.cttz %24 : tensor<i16>
        %318 = memref.realloc %alloc_13 : memref<2xf16> to memref<10xf16>
        %319 = index.ceildivs %c7, %25
        %320 = vector.broadcast %out : f16 to vector<2xf16>
        memref.alloca_scope.return %alloc_13 : memref<2xf16>
      }
      %generated_48 = tensor.generate %42 {
      ^bb0(%arg0: index):
        %289 = index.floordivs %c2, %c10
        %290 = vector.multi_reduction <xor>, %63, %c404776214_i32 [0] : vector<2xi32> to i32
        %291 = index.maxu %289, %c15
        %292 = tensor.empty() : tensor<2xf16>
        tensor.yield %cst_21 : f32
      } : tensor<?xf32>
      %268 = vector.flat_transpose %21 {columns = 5 : i32, rows = 1 : i32} : vector<5xi1> -> vector<5xi1>
      %269 = index.ceildivs %31, %55
      %270 = arith.subi %c401653752_i32, %c404776214_i32 : i32
      %271 = arith.minsi %35, %false : i1
      %272 = vector.broadcast %false_4 : i1 to vector<10x10xi1>
      %dest_49, %accumulated_value_50 = vector.scan <mul>, %37, %272 {inclusive = true, reduction_dim = 2 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
      %273 = index.ceildivs %c4, %c10
      %274 = vector.flat_transpose %54 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
      %275 = vector.multi_reduction <maxf>, %274, %cst_21 [0] : vector<5xf32> to f32
      %276 = arith.shrui %false, %false_3 : i1
      %277 = math.powf %13, %40 : tensor<10x10x10xf16>
      %278 = vector.splat %c-3927_i16 : vector<2xi16>
      memref.tensor_store %12, %alloc_14 : memref<2xi64>
      %279 = math.absf %7 : tensor<10xf32>
      %280 = arith.ceildivsi %c-3927_i16, %c-3927_i16 : i16
      %281 = vector.shuffle %274, %54 [0, 1, 3, 4, 5, 8, 9] : vector<5xf32>, vector<5xf32>
      %282 = arith.ceildivsi %true, %false : i1
      %283 = vector.reduction <add>, %54 : vector<5xf32> into f32
      %284 = vector.broadcast %c13 : index to vector<2xindex>
      vector.scatter %alloc_15[%c9] [%284], %64, %64 : memref<10xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
      memref.copy %alloc_18, %267 : memref<2xf16> to memref<2xf16>
      %285 = arith.floordivsi %c401653752_i32, %c401653752_i32 : i32
      %286 = vector.transpose %268, [0] : vector<5xi1> to vector<5xi1>
      %287 = arith.shrsi %c1199528644_i64, %c1491804838_i64 : i64
      %288 = math.cttz %8 : tensor<10xi16>
      linalg.yield %cst : f16
    } -> tensor<10x10x10xf16>
    %67 = math.absi %3 : tensor<2xi16>
    %68 = bufferization.to_memref %56 : memref<5xi16>
    %69 = arith.shli %c1199528644_i64, %c540967278_i64 : i64
    %70 = math.roundeven %5 : tensor<5xf32>
    %71 = index.maxs %55, %c2
    %72 = arith.shrui %c404776214_i32, %c401653752_i32 : i32
    %73 = math.log %15 : tensor<5xf16>
    %from_elements_24 = tensor.from_elements %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64 : tensor<5xi64>
    %74 = math.exp2 %5 : tensor<5xf32>
    %75 = vector.extract %21[3] : vector<5xi1>
    %76 = affine.apply affine_map<(d0, d1, d2) -> ((d1 ceildiv 4) mod 2)>(%42, %c5, %c8)
    %77 = bufferization.to_tensor %alloc_12 : memref<5xi64>
    %78 = affine.max affine_map<(d0, d1) -> (d1 * -2 - 2, d1 * -2, (d1 * 2) ceildiv 4, 0)>(%c6, %c13)
    memref.assume_alignment %alloc_16, 16 : memref<10x10x10xi64>
    %79 = vector.broadcast %cst : f16 to vector<10xf16>
    %80 = vector.broadcast %false_4 : i1 to vector<10xi1>
    %81 = vector.broadcast %c1343683170_i32 : i32 to vector<10xi32>
    %82 = vector.gather %4[%c12] [%81], %80, %79 : tensor<10xf16>, vector<10xi32>, vector<10xi1>, vector<10xf16> into vector<10xf16>
    %expanded = tensor.expand_shape %8 [[0, 1]] : tensor<10xi16> into tensor<10x1xi16>
    %83 = arith.minsi %35, %false_3 : i1
    %84 = vector.bitcast %37 : vector<10x10x10xi1> to vector<10x10x10xi1>
    %85 = math.roundeven %17 : tensor<10xf16>
    %86 = math.absi %35 : i1
    %87 = math.ctlz %c404776214_i32 : i32
    %88 = arith.cmpi ult, %false_4, %false_3 : i1
    %89 = arith.remui %true, %false : i1
    %90 = index.divs %71, %c3
    %91 = math.absi %9 : tensor<5xi1>
    %92 = arith.minf %cst_5, %cst_2 : f16
    %93 = math.floor %7 : tensor<10xf32>
    %94 = index.mul %c2, %71
    %95 = arith.maxf %cst_5, %cst : f16
    scf.index_switch %31 
    case 1 {
      %alloc_47 = memref.alloc() : memref<10x10x10xi32>
      memref.copy %alloc, %alloc_47 : memref<10x10x10xi32> to memref<10x10x10xi32>
      %261 = math.tanh %collapsed : tensor<100x10xf16>
      %262 = math.ctlz %12 : tensor<2xi64>
      %generated_48 = tensor.generate %c2 {
      ^bb0(%arg0: index):
        %275 = arith.minsi %c-3927_i16, %c-3927_i16 : i16
        %276 = math.round %cst_1 : f16
        %277 = vector.broadcast %c1491804838_i64 : i64 to vector<10xi64>
        %278 = arith.remui %c-3927_i16, %c-3927_i16 : i16
        tensor.yield %cst_1 : f16
      } : tensor<?xf16>
      %263 = math.fma %11, %5, %11 : tensor<5xf32>
      %264 = scf.while (%arg0 = %alloc_9) : (memref<10x10x10xi64>) -> memref<10x10x10xi64> {
        %275 = affine.apply affine_map<(d0, d1) -> (d1 - d0 - d1)>(%c9, %c15)
        %276 = vector.shuffle %79, %79 [2, 3, 7, 8, 9, 13, 16, 17, 18, 19] : vector<10xf16>, vector<10xf16>
        %277 = vector.reduction <add>, %53 : vector<5xf32> into f32
        %278 = vector.transpose %63, [0] : vector<2xi32> to vector<2xi32>
        %279 = tensor.empty() : tensor<10xi64>
        %280 = math.fma %5, %11, %5 : tensor<5xf32>
        %281 = arith.floordivsi %c404776214_i32, %c401653752_i32 : i32
        %282 = index.floordivs %71, %c1
        scf.condition(%false) %arg0 : memref<10x10x10xi64>
      } do {
      ^bb0(%arg0: memref<10x10x10xi64>):
        %275 = arith.shrui %false_4, %true : i1
        %276 = vector.broadcast %c401653752_i32 : i32 to vector<2x2xi32>
        %277 = vector.outerproduct %65, %63, %276 {kind = #vector.kind<and>} : vector<2xi32>, vector<2xi32>
        %278 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, -(d1 + d2 floordiv 16), (d1 + d2 floordiv 16) mod 32, -(d1 mod 16))>(%c1, %c2, %c10, %c6)
        %279 = affine.min affine_map<(d0) -> (0)>(%25)
        %280 = math.absf %11 : tensor<5xf32>
        %281 = arith.divui %c404776214_i32, %c404776214_i32 : i32
        %282 = index.floordivs %94, %90
        %283 = arith.shrui %c-3927_i16, %c-3927_i16 : i16
        %284 = index.mul %55, %c14
        %285 = arith.maxui %c404776214_i32, %c404776214_i32 : i32
        %286 = math.ctlz %1 : tensor<10x10x10xi1>
        %287 = index.casts %false_4 : i1 to index
        %288 = math.floor %40 : tensor<10x10x10xf16>
        %289 = arith.shli %c1343683170_i32, %c401653752_i32 : i32
        %290 = arith.remsi %c540967278_i64, %c1491804838_i64 : i64
        %291 = affine.apply affine_map<(d0) -> (d0 * 16)>(%31)
        scf.yield %arg0 : memref<10x10x10xi64>
      }
      %265 = arith.minf %cst_2, %cst_1 : f16
      %266 = bufferization.clone %alloc_14 : memref<2xi64> to memref<2xi64>
      %267 = math.atan2 %11, %11 : tensor<5xf32>
      %268 = arith.cmpf olt, %cst, %cst : f16
      %269 = arith.muli %false_3, %false : i1
      %270 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 mod 2, d1 mod 2, (-d0) ceildiv 2 - d1)>(%c14, %c4, %c10, %c3)
      %271 = arith.muli %35, %false_4 : i1
      %272 = arith.shli %false, %35 : i1
      %273 = scf.while (%arg0 = %64) : (vector<2xi1>) -> vector<2xi1> {
        %275 = index.maxs %90, %61
        %276 = arith.negf %cst_21 : f32
        %277 = math.roundeven %6 : tensor<2xf32>
        %278 = math.log1p %cst_0 : f16
        %279 = vector.multi_reduction <maxf>, %53, %53 [] : vector<5xf32> to vector<5xf32>
        %280 = vector.broadcast %c401653752_i32 : i32 to vector<10x10xi32>
        %281 = vector.outerproduct %81, %81, %280 {kind = #vector.kind<and>} : vector<10xi32>, vector<10xi32>
        %282 = math.powf %cst_5, %cst_0 : f16
        %283 = vector.insertelement %false_4, %64[%c0 : index] : vector<2xi1>
        scf.condition(%false_4) %64 : vector<2xi1>
      } do {
      ^bb0(%arg0: vector<2xi1>):
        %275 = vector.broadcast %35 : i1 to vector<10x10xi1>
        %dest_49, %accumulated_value_50 = vector.scan <or>, %84, %275 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
        %276 = arith.subi %35, %35 : i1
        %277 = vector.transpose %84, [2, 1, 0] : vector<10x10x10xi1> to vector<10x10x10xi1>
        %278 = arith.ceildivsi %false_3, %35 : i1
        %279 = arith.cmpf ord, %cst_2, %cst_1 : f16
        %280 = vector.broadcast %cst_21 : f32 to vector<5x5xf32>
        %281 = vector.outerproduct %53, %54, %280 {kind = #vector.kind<minf>} : vector<5xf32>, vector<5xf32>
        affine.store %cst_2, %alloc_13[%c4] : memref<2xf16>
        %282 = math.absf %cst_5 : f16
        %283 = math.tan %reduced : tensor<f32>
        %284 = arith.minsi %c540967278_i64, %c1491804838_i64 : i64
        %285 = index.floordivs %94, %c4
        %286 = vector.reduction <mul>, %53 : vector<5xf32> into f32
        %287 = vector.reduction <add>, %80 : vector<10xi1> into i1
        %288 = arith.shrui %false_4, %35 : i1
        %289 = vector.maskedload %alloc_19[%c1], %80, %80 : memref<10xi1>, vector<10xi1>, vector<10xi1> into vector<10xi1>
        %290 = vector.broadcast %cst_21 : f32 to vector<5x5xf32>
        %291 = vector.outerproduct %53, %53, %290 {kind = #vector.kind<minf>} : vector<5xf32>, vector<5xf32>
        scf.yield %64 : vector<2xi1>
      }
      %274 = math.floor %5 : tensor<5xf32>
      scf.yield
    }
    default {
      %261 = scf.while (%arg0 = %80) : (vector<10xi1>) -> vector<10xi1> {
        %273 = bufferization.to_tensor %alloc : memref<10x10x10xi32>
        %274 = tensor.empty() : tensor<5xi1>
        %275 = arith.remsi %false, %true : i1
        %276 = index.add %c5, %c7
        %277 = arith.maxf %cst_2, %cst_0 : f16
        %278 = index.floordivs %c5, %48
        %279 = math.floor %16 : tensor<10xf16>
        %280 = arith.maxui %c-3927_i16, %c-3927_i16 : i16
        scf.condition(%false) %80 : vector<10xi1>
      } do {
      ^bb0(%arg0: vector<10xi1>):
        %alloc_49 = memref.alloc() : memref<10xi16>
        %273 = vector.broadcast %true : i1 to vector<10x10xi1>
        %dest_50, %accumulated_value_51 = vector.scan <mul>, %37, %273 {inclusive = false, reduction_dim = 2 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
        %274 = math.fma %cst_5, %cst_5, %cst_1 : f16
        %275 = math.ctlz %18 : tensor<5xi64>
        %276 = index.floordivs %27, %c5
        %277 = math.log1p %reduced : tensor<f32>
        %278 = vector.extract %63[1] : vector<2xi32>
        %279 = math.absf %cst_5 : f16
        %280 = math.tanh %cst : f16
        %281 = vector.broadcast %cst_5 : f16 to vector<5xf16>
        %282 = vector.maskedload %alloc_13[%c1], %21, %281 : memref<2xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %283 = vector.insert %c401653752_i32, %65 [1] : i32 into vector<2xi32>
        %284 = vector.reduction <maxf>, %79 : vector<10xf16> into f16
        %285 = vector.load %alloc_10[%c3] : memref<5xi64>, vector<2xi64>
        %286 = arith.floordivsi %false_4, %false : i1
        %287 = vector.extract %21[3] : vector<5xi1>
        %288 = arith.ceildivsi %c1491804838_i64, %c1199528644_i64 : i64
        scf.yield %80 : vector<10xi1>
      }
      %generated_47 = tensor.generate %48 {
      ^bb0(%arg0: index):
        %273 = math.absi %true : i1
        %274 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 32, (d3 ceildiv 4) * 32, d3)>(%c5, %c6, %c5, %c7)
        %275 = index.mul %71, %c13
        %276 = arith.cmpf ult, %cst_21, %cst_21 : f32
        tensor.yield %c-3927_i16 : i16
      } : tensor<?xi16>
      %262 = arith.floordivsi %false, %true : i1
      memref.tensor_store %15, %alloc_20 : memref<5xf16>
      %263 = vector.broadcast %cst_5 : f16 to vector<2xf16>
      %264 = math.floor %cst_1 : f16
      %265 = arith.divf %cst_0, %cst_5 : f16
      %266 = vector.transpose %263, [0] : vector<2xf16> to vector<2xf16>
      %267 = arith.andi %false, %35 : i1
      %268 = index.sizeof
      %269 = vector.multi_reduction <and>, %81, %c401653752_i32 [0] : vector<10xi32> to i32
      %270 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%c3, %c13, %c4, %c3)
      %271 = arith.divf %cst_1, %cst_5 : f16
      %expanded_48 = tensor.expand_shape %4 [[0, 1]] : tensor<10xf16> into tensor<10x1xf16>
      memref.copy %26, %alloc_8 : memref<5xi32> to memref<5xi32>
      %272 = math.cttz %35 : i1
    }
    scf.execute_region {
      %261 = math.exp2 %15 : tensor<5xf16>
      %262 = math.atan2 %7, %7 : tensor<10xf32>
      %263 = arith.shrsi %c401653752_i32, %c401653752_i32 : i32
      %264 = scf.while (%arg0 = %c-3927_i16) : (i16) -> i16 {
        %279 = vector.broadcast %cst_1 : f16 to vector<2xf16>
        %280 = vector.gather %15[%78] [%63], %64, %279 : tensor<5xf16>, vector<2xi32>, vector<2xi1>, vector<2xf16> into vector<2xf16>
        %281 = arith.maxui %false_4, %false_3 : i1
        %282 = memref.load %alloc[%c3, %c8, %c0] : memref<10x10x10xi32>
        %283 = math.absi %10 : tensor<5xi64>
        %284 = math.log1p %40 : tensor<10x10x10xf16>
        %285 = vector.create_mask %90 : vector<5xi1>
        %286 = arith.remui %false_3, %false : i1
        %287 = math.exp2 %17 : tensor<10xf16>
        scf.condition(%35) %arg0 : i16
      } do {
      ^bb0(%arg0: i16):
        %279 = math.atan2 %6, %6 : tensor<2xf32>
        %false_49 = index.bool.constant false
        %280 = tensor.empty() : tensor<2xf16>
        %281 = arith.remf %cst_21, %cst_21 : f32
        %alloc_50 = memref.alloc() : memref<2xf32>
        memref.copy %alloc_7, %alloc_50 : memref<2xf32> to memref<2xf32>
        %282 = bufferization.clone %alloc_7 : memref<2xf32> to memref<2xf32>
        %283 = arith.divf %cst_5, %cst_0 : f16
        %284 = vector.insert %80, %84 [2, 6] : vector<10xi1> into vector<10x10x10xi1>
        %285 = arith.addi %true, %false_3 : i1
        %286 = vector.insertelement %cst_21, %53[%94 : index] : vector<5xf32>
        %287 = arith.negf %cst_0 : f16
        affine.store %c1491804838_i64, %alloc_16[%c9, %c15, %c10] : memref<10x10x10xi64>
        %288 = arith.minsi %arg0, %c-3927_i16 : i16
        %289 = math.atan2 %cst_21, %cst_21 : f32
        %290 = vector.extract %63[0] : vector<2xi32>
        %291 = index.divs %c3, %c11
        scf.yield %c-3927_i16 : i16
      }
      %265 = tensor.empty() : tensor<10x10xi64>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%265, %alloc_16, %alloc_16 : tensor<10x10xi64>, memref<10x10x10xi64>, memref<10x10x10xi64>) outs(%from_elements : tensor<10x10x10xi64>) {
      ^bb0(%in: i64, %in_49: i64, %in_50: i64, %out: i64):
        %279 = math.fma %cst, %cst_2, %cst_1 : f16
        %280 = index.ceildivs %c13, %c12
        affine.store %cst_0, %alloc_13[%c14] : memref<2xf16>
        %281 = bufferization.to_tensor %alloc_7 : memref<2xf32>
        %282 = vector.matrix_multiply %54, %54 {lhs_columns = 5 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<5xf32>, vector<5xf32>) -> vector<1xf32>
        %283 = vector.bitcast %54 : vector<5xf32> to vector<5xf32>
        %284 = bufferization.to_memref %18 : memref<5xi64>
        %285 = index.floordivs %c2, %31
        %286 = vector.broadcast %cst_21 : f32 to vector<1x1xf32>
        %287 = vector.outerproduct %282, %282, %286 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
        %288 = tensor.empty() : tensor<10xf32>
        %289 = index.castu %27 : index to i32
        %290 = arith.muli %c540967278_i64, %in_49 : i64
        %291 = vector.broadcast %in : i64 to vector<10xi64>
        %292 = index.mul %c8, %c8
        %293 = arith.ceildivsi %c540967278_i64, %out : i64
        %294 = index.floordivs %c15, %c10
        %295 = index.sub %42, %94
        %296 = math.round %5 : tensor<5xf32>
        %297 = index.casts %c404776214_i32 : i32 to index
        %298 = index.ceildivs %292, %90
        %299 = index.divs %c6, %c6
        %300 = arith.maxf %cst_0, %cst_1 : f16
        %301 = math.log1p %13 : tensor<10x10x10xf16>
        %302 = math.round %6 : tensor<2xf32>
        %303 = vector.reduction <xor>, %64 : vector<2xi1> into i1
        %304 = vector.broadcast %cst_0 : f16 to vector<10x10xf16>
        %305 = vector.outerproduct %82, %82, %304 {kind = #vector.kind<mul>} : vector<10xf16>, vector<10xf16>
        %306 = arith.cmpi sge, %true, %false_4 : i1
        %307 = arith.shrsi %out, %c1491804838_i64 : i64
        memref.tensor_store %15, %alloc_20 : memref<5xf16>
        %308 = index.floordivs %76, %c6
        %309 = bufferization.to_memref %18 : memref<5xi64>
        %310 = arith.cmpf true, %cst_21, %cst_21 : f32
        linalg.yield %c1491804838_i64 : i64
      } -> tensor<10x10x10xi64>
      %267 = vector.extract %82[2] : vector<10xf16>
      %268 = tensor.empty() : tensor<10x10xf16>
      %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%17, %13, %268 : tensor<10xf16>, tensor<10x10x10xf16>, tensor<10x10xf16>) outs(%40 : tensor<10x10x10xf16>) {
      ^bb0(%in: f16, %in_49: f16, %in_50: f16, %out: f16):
        %279 = bufferization.clone %alloc_9 : memref<10x10x10xi64> to memref<10x10x10xi64>
        %expanded_51 = tensor.expand_shape %16 [[0, 1]] : tensor<10xf16> into tensor<10x1xf16>
        %280 = arith.muli %35, %35 : i1
        %281 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 ceildiv 2 + 1)>(%c12, %94, %25, %76)
        %282 = math.fma %16, %16, %4 : tensor<10xf16>
        %283 = math.log %19 : tensor<f32>
        %284 = index.maxu %25, %71
        %285 = vector.bitcast %53 : vector<5xf32> to vector<5xf32>
        %286 = index.divs %42, %27
        %287 = math.roundeven %cst : f16
        %288 = math.atan2 %cst, %cst : f16
        affine.store %c540967278_i64, %alloc_10[%c3] : memref<5xi64>
        %289 = math.atan2 %in_50, %cst_2 : f16
        affine.store %c404776214_i32, %alloc_17[%c11] : memref<5xi32>
        %collapsed_52 = tensor.collapse_shape %expanded_51 [[0, 1]] : tensor<10x1xf16> into tensor<10xf16>
        %290 = affine.min affine_map<(d0, d1, d2) -> (((d2 + d1 floordiv 4 - d0) mod 32) floordiv 64)>(%55, %48, %c13)
        %291 = vector.broadcast %cst_21 : f32 to vector<5xf32>
        %292 = vector.fma %291, %54, %54 : vector<5xf32>
        %293 = index.add %c8, %90
        %294 = vector.transpose %21, [0] : vector<5xi1> to vector<5xi1>
        memref.store %c1491804838_i64, %alloc_10[%c2] : memref<5xi64>
        %295 = math.ctlz %c404776214_i32 : i32
        %296 = math.fma %collapsed_52, %17, %4 : tensor<10xf16>
        %297 = tensor.empty(%c6) : tensor<?xf16>
        %298 = vector.reduction <mul>, %81 : vector<10xi32> into i32
        %299 = vector.maskedload %alloc_17[%c4], %64, %63 : memref<5xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        memref.copy %alloc_15, %alloc_19 : memref<10xi1> to memref<10xi1>
        %300 = vector.create_mask %c3 : vector<10xi1>
        %301 = math.rsqrt %11 : tensor<5xf32>
        %302 = arith.maxui %c1199528644_i64, %c1199528644_i64 : i64
        %303 = arith.maxf %cst_0, %cst_2 : f16
        %304 = affine.max affine_map<(d0) -> (d0 * 33 - (d0 - 8) - d0 * 32, (d0 - 8) mod 64, d0 * 132)>(%c4)
        %305 = vector.broadcast %true : i1 to vector<10xi1>
        linalg.yield %cst_5 : f16
      } -> tensor<10x10x10xf16>
      %270 = vector.transpose %64, [0] : vector<2xi1> to vector<2xi1>
      %271 = index.ceildivs %c2, %c5
      %272 = vector.broadcast %35 : i1 to vector<10x10xi1>
      %dest_47, %accumulated_value_48 = vector.scan <maxui>, %84, %272 {inclusive = true, reduction_dim = 2 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
      %273 = affine.apply affine_map<(d0, d1, d2) -> ((d1 ceildiv 4) mod 2)>(%c7, %c8, %27)
      %274 = vector.maskedload %alloc[%c7, %c7, %c0], %64, %65 : memref<10x10x10xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
      %275 = math.tanh %6 : tensor<2xf32>
      %276 = math.cttz %10 : tensor<5xi64>
      %277 = index.mul %42, %c6
      %278 = math.floor %reduced : tensor<f32>
      scf.yield
    }
    %96 = math.atan2 %15, %15 : tensor<5xf16>
    %97 = index.mul %c8, %25
    %98 = vector.shuffle %80, %21 [1, 2, 3, 4, 5, 7, 8, 9, 10, 12, 13, 14] : vector<10xi1>, vector<5xi1>
    %99 = arith.muli %false, %false_4 : i1
    %100 = math.roundeven %5 : tensor<5xf32>
    %101 = vector.broadcast %c-3927_i16 : i16 to vector<10xi16>
    %102 = math.log %cst_1 : f16
    %103 = bufferization.to_tensor %alloc_6 : memref<10x10x10xi1>
    %104 = vector.broadcast %cst : f16 to vector<10x10xf16>
    %105 = vector.outerproduct %79, %79, %104 {kind = #vector.kind<mul>} : vector<10xf16>, vector<10xf16>
    %106 = arith.maxui %c404776214_i32, %c401653752_i32 : i32
    %107 = vector.transpose %53, [0] : vector<5xf32> to vector<5xf32>
    %108 = arith.andi %c-3927_i16, %c-3927_i16 : i16
    %109 = math.log10 %collapsed : tensor<100x10xf16>
    %110 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%c8, %c1, %c8, %76)
    vector.print %37 : vector<10x10x10xi1>
    %111 = vector.broadcast %c1491804838_i64 : i64 to vector<10x10x10xi64>
    %112 = vector.broadcast %false : i1 to vector<10x10xi1>
    %dest, %accumulated_value = vector.scan <maxsi>, %37, %112 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
    %113 = vector.transpose %101, [0] : vector<10xi16> to vector<10xi16>
    %114 = arith.shli %c1491804838_i64, %c1491804838_i64 : i64
    %115 = math.tanh %5 : tensor<5xf32>
    %116 = tensor.empty() : tensor<10x5xf16>
    %117 = tensor.empty() : tensor<100x5xf16>
    %118 = linalg.matmul ins(%collapsed, %116 : tensor<100x10xf16>, tensor<10x5xf16>) outs(%117 : tensor<100x5xf16>) -> tensor<100x5xf16>
    %119 = bufferization.to_tensor %50 : memref<10xi1>
    %120 = math.log1p %5 : tensor<5xf32>
    scf.index_switch %c11 
    case 1 {
      %alloc_47 = memref.alloc() : memref<10xf16>
      memref.tensor_store %4, %alloc_47 : memref<10xf16>
      %261 = scf.while (%arg0 = %alloc_16) : (memref<10x10x10xi64>) -> memref<10x10x10xi64> {
        %273 = arith.maxf %cst_5, %cst_0 : f16
        %274 = arith.ceildivsi %c401653752_i32, %c1343683170_i32 : i32
        %275 = vector.broadcast %25 : index to vector<2xindex>
        %276 = vector.broadcast %cst_21 : f32 to vector<2xf32>
        vector.scatter %alloc_7[%c0] [%275], %64, %276 : memref<2xf32>, vector<2xindex>, vector<2xi1>, vector<2xf32>
        %277 = bufferization.clone %alloc_14 : memref<2xi64> to memref<2xi64>
        %278 = math.log %11 : tensor<5xf32>
        %279 = math.absi %18 : tensor<5xi64>
        %280 = arith.remsi %c1199528644_i64, %c540967278_i64 : i64
        memref.store %cst, %alloc_13[%c0] : memref<2xf16>
        scf.condition(%35) %alloc_16 : memref<10x10x10xi64>
      } do {
      ^bb0(%arg0: memref<10x10x10xi64>):
        %273 = arith.maxui %c1491804838_i64, %c540967278_i64 : i64
        %274 = vector.broadcast %false_3 : i1 to vector<10x10x10xi1>
        %alloc_50 = memref.alloc() : memref<2xf32>
        memref.copy %alloc_7, %alloc_50 : memref<2xf32> to memref<2xf32>
        %275 = vector.broadcast %cst_21 : f32 to vector<5x5xf32>
        %276 = vector.outerproduct %54, %53, %275 {kind = #vector.kind<maxf>} : vector<5xf32>, vector<5xf32>
        %277 = arith.subi %c401653752_i32, %c404776214_i32 : i32
        %278 = arith.andi %c1343683170_i32, %c404776214_i32 : i32
        %279 = memref.load %alloc_12[%c3] : memref<5xi64>
        %280 = arith.remsi %c404776214_i32, %c401653752_i32 : i32
        %281 = index.maxu %c7, %c7
        %282 = vector.broadcast %25 : index to vector<2xindex>
        %283 = vector.broadcast %c-3927_i16 : i16 to vector<2xi16>
        vector.scatter %68[%c3] [%282], %64, %283 : memref<5xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
        memref.assume_alignment %alloc_13, 1 : memref<2xf16>
        %284 = arith.subi %c401653752_i32, %c401653752_i32 : i32
        %285 = arith.shli %c1343683170_i32, %c401653752_i32 : i32
        %286 = vector.transpose %65, [0] : vector<2xi32> to vector<2xi32>
        %287 = arith.muli %c1199528644_i64, %c1199528644_i64 : i64
        %288 = vector.broadcast %c401653752_i32 : i32 to vector<2x2xi32>
        %289 = vector.outerproduct %65, %63, %288 {kind = #vector.kind<maxsi>} : vector<2xi32>, vector<2xi32>
        scf.yield %arg0 : memref<10x10x10xi64>
      }
      %262 = math.fma %5, %11, %5 : tensor<5xf32>
      %263 = vector.broadcast %false_4 : i1 to vector<10xi1>
      %264 = math.atan2 %5, %5 : tensor<5xf32>
      %265 = arith.negf %cst_2 : f16
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%13 : tensor<10x10x10xf16>) {
      ^bb0(%out: f16):
        %273 = tensor.empty(%c8, %c6) : tensor<?x10x?xi64>
        %274 = bufferization.clone %alloc_18 : memref<2xf16> to memref<2xf16>
        %275 = arith.cmpi uge, %true, %35 : i1
        %276 = math.exp2 %15 : tensor<5xf16>
        %277 = arith.subi %c1343683170_i32, %c401653752_i32 : i32
        %278 = arith.subi %false, %false_4 : i1
        %279 = arith.divsi %c1491804838_i64, %c1491804838_i64 : i64
        %280 = arith.maxf %cst_1, %out : f16
        %alloc_50 = memref.alloc() : memref<1x2xi16>
        %281 = tensor.empty() : tensor<10x2xi16>
        %282 = linalg.matmul ins(%expanded, %alloc_50 : tensor<10x1xi16>, memref<1x2xi16>) outs(%281 : tensor<10x2xi16>) -> tensor<10x2xi16>
        %283 = index.castu %42 : index to i32
        %284 = vector.flat_transpose %53 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
        %285 = vector.insertelement %35, %80[%c11 : index] : vector<10xi1>
        %286 = vector.reduction <maxui>, %21 : vector<5xi1> into i1
        %287 = arith.remsi %c1343683170_i32, %c1343683170_i32 : i32
        %288 = vector.transpose %37, [2, 1, 0] : vector<10x10x10xi1> to vector<10x10x10xi1>
        %289 = math.absf %7 : tensor<10xf32>
        %290 = math.powf %17, %4 : tensor<10xf16>
        %from_elements_51 = tensor.from_elements %false_3, %false, %false_4, %false_3, %false, %false_4, %true, %false, %false_3, %false_4 : tensor<10xi1>
        %291 = arith.negf %cst_5 : f16
        %292 = math.roundeven %117 : tensor<100x5xf16>
        %293 = arith.maxf %cst, %out : f16
        %294 = affine.apply affine_map<(d0, d1) -> (((d0 ceildiv 16) * 8) mod 64)>(%97, %c15)
        %295 = index.ceildivu %c7, %c14
        %296 = vector.multi_reduction <add>, %21, %false [0] : vector<5xi1> to i1
        %297 = math.absi %8 : tensor<10xi16>
        %298 = vector.transpose %53, [0] : vector<5xf32> to vector<5xf32>
        %299 = arith.remsi %false_4, %296 : i1
        %300 = math.round %cst : f16
        %301 = arith.remui %c1491804838_i64, %c1199528644_i64 : i64
        %302 = bufferization.to_memref %3 : memref<2xi16>
        %303 = vector.create_mask %97 : vector<10xi1>
        %304 = arith.divsi %false_4, %296 : i1
        linalg.yield %cst_2 : f16
      } -> tensor<10x10x10xf16>
      %267 = vector.shuffle %101, %101 [1, 2, 7, 8, 9, 11, 12, 13, 15, 19] : vector<10xi16>, vector<10xi16>
      %generated_48 = tensor.generate %25 {
      ^bb0(%arg0: index):
        %273 = math.exp2 %7 : tensor<10xf32>
        %collapsed_50 = tensor.collapse_shape %40 [[0, 1], [2]] : tensor<10x10x10xf16> into tensor<100x10xf16>
        %274 = arith.divf %cst_2, %cst_5 : f16
        %from_elements_51 = tensor.from_elements %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16 : tensor<10xi16>
        tensor.yield %c540967278_i64 : i64
      } : tensor<?xi64>
      %268 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%25, %c7, %c9)
      scf.index_switch %268 
      case 1 {
        %273 = math.cos %cst_5 : f16
        %274 = bufferization.to_tensor %alloc_19 : memref<10xi1>
        %275 = arith.divf %cst_5, %cst : f16
        %276 = vector.shuffle %81, %81 [3, 5, 6, 7, 8, 11, 13, 14, 15, 17, 18] : vector<10xi32>, vector<10xi32>
        %277 = index.sub %c14, %94
        %278 = arith.subi %true, %false_4 : i1
        %279 = tensor.empty() : tensor<10xf32>
        %280 = arith.negf %cst_2 : f16
        %281 = vector.broadcast %false_3 : i1 to vector<2xi1>
        %282 = index.maxu %97, %c3
        %283 = math.cos %cst : f16
        %284 = math.cos %15 : tensor<5xf16>
        %285 = arith.cmpf uno, %cst_0, %cst_1 : f16
        %286 = math.roundeven %6 : tensor<2xf32>
        %287 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c10, %c9, %c11)
        %288 = arith.remsi %false_4, %false_3 : i1
        scf.yield
      }
      case 2 {
        %273 = math.floor %cst_2 : f16
        %274 = math.floor %cst_0 : f16
        %275 = bufferization.clone %alloc_11 : memref<10xi32> to memref<10xi32>
        %276 = vector.insertelement %c404776214_i32, %63[%c13 : index] : vector<2xi32>
        %277 = arith.shli %c401653752_i32, %c404776214_i32 : i32
        %278 = arith.maxf %cst_0, %cst_0 : f16
        %279 = arith.cmpf ugt, %cst_1, %cst_5 : f16
        %280 = arith.remui %false_4, %35 : i1
        %281 = affine.apply affine_map<(d0) -> (-d0 - 132)>(%61)
        %282 = math.absi %14 : tensor<5xi1>
        %283 = arith.muli %c1343683170_i32, %c1343683170_i32 : i32
        %284 = math.floor %11 : tensor<5xf32>
        %285 = arith.shrui %c1199528644_i64, %c1199528644_i64 : i64
        %286 = bufferization.to_memref %15 : memref<5xf16>
        %287 = arith.shrui %c1343683170_i32, %c1343683170_i32 : i32
        %288 = math.tan %reduced : tensor<f32>
        scf.yield
      }
      default {
        %273 = affine.min affine_map<(d0, d1) -> ((d0 ceildiv 4) mod 2 - (d0 + 1) - ((d0 ceildiv 4) mod 2 - 64), (d0 ceildiv 4) * -2)>(%c10, %48)
        %274 = tensor.empty(%c14) : tensor<?xi1>
        %275 = arith.negf %cst : f16
        %276 = arith.shli %false, %true : i1
        %277 = arith.shrui %false, %false : i1
        %278 = math.tanh %collapsed : tensor<100x10xf16>
        %279 = math.powf %7, %7 : tensor<10xf32>
        %280 = vector.broadcast %cst_1 : f16 to vector<f16>
        %281 = vector.transfer_write %280, %15[%c10] : vector<f16>, tensor<5xf16>
        %282 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 - 7)>(%c12, %268, %c15, %c2)
        %283 = math.floor %117 : tensor<100x5xf16>
        %284 = vector.insert %true, %80 [8] : i1 into vector<10xi1>
        %285 = vector.maskedload %alloc_17[%c4], %64, %65 : memref<5xi32>, vector<2xi1>, vector<2xi32> into vector<2xi32>
        %286 = vector.load %50[%c2] : memref<10xi1>, vector<10x10x10xi1>
        %287 = arith.shli %c401653752_i32, %c401653752_i32 : i32
        %288 = arith.cmpf ult, %cst_2, %cst_2 : f16
        memref.assume_alignment %alloc_9, 8 : memref<10x10x10xi64>
      }
      %269 = scf.index_switch %48 -> memref<10xf32> 
      case 1 {
        %273 = vector.reduction <maxui>, %80 : vector<10xi1> into i1
        %274 = math.powf %16, %4 : tensor<10xf16>
        %275 = index.add %c0, %94
        %276 = math.absi %transposed : tensor<5xi64>
        %277 = vector.shuffle %79, %79 [1, 2, 6, 11, 14, 16, 19] : vector<10xf16>, vector<10xf16>
        %278 = affine.max affine_map<(d0, d1, d2) -> (d1 mod 16, d1 mod 16 - d2 mod 8, (d1 + d0) ceildiv 128)>(%268, %c9, %c6)
        %279 = index.divs %275, %c9
        %280 = vector.broadcast %cst_2 : f16 to vector<10x10xf16>
        %281 = vector.outerproduct %82, %79, %280 {kind = #vector.kind<minf>} : vector<10xf16>, vector<10xf16>
        %282 = bufferization.to_memref %2 : memref<10xi64>
        %283 = tensor.empty() : tensor<5xi1>
        %284 = vector.maskedload %68[%c1], %80, %101 : memref<5xi16>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %285 = arith.minf %cst_21, %cst_21 : f32
        %286 = index.castu %false_3 : i1 to index
        %287 = math.roundeven %117 : tensor<100x5xf16>
        %288 = affine.min affine_map<(d0, d1) -> ((d0 ceildiv 4) * 2, -(d0 ceildiv 4))>(%55, %c6)
        %289 = math.absf %cst : f16
        %alloc_50 = memref.alloc() : memref<10xf32>
        scf.yield %alloc_50 : memref<10xf32>
      }
      case 2 {
        %273 = math.roundeven %cst_21 : f32
        %274 = vector.load %49[%c7] : memref<10xi1>, vector<2xi1>
        %275 = vector.multi_reduction <maxui>, %37, %263 [1, 2] : vector<10x10x10xi1> to vector<10xi1>
        %276 = arith.muli %false_4, %false : i1
        %277 = vector.reduction <add>, %54 : vector<5xf32> into f32
        %278 = arith.shrsi %false_3, %false_4 : i1
        %from_elements_50 = tensor.from_elements %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64 : tensor<10xi64>
        %279 = index.divs %c3, %97
        %280 = index.maxs %71, %c8
        %281 = vector.shuffle %65, %65 [1] : vector<2xi32>, vector<2xi32>
        %282 = vector.broadcast %false_3 : i1 to vector<10x10xi1>
        %dest_51, %accumulated_value_52 = vector.scan <maxsi>, %84, %282 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
        %283 = vector.load %50[%c0] : memref<10xi1>, vector<5xi1>
        %284 = vector.broadcast %35 : i1 to vector<10x10xi1>
        %dest_53, %accumulated_value_54 = vector.scan <mul>, %84, %284 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
        %expanded_55 = tensor.expand_shape %from_elements [[0], [1], [2, 3]] : tensor<10x10x10xi64> into tensor<10x10x10x1xi64>
        %285 = math.absi %0 : tensor<10x10x10xi1>
        %286 = vector.shuffle %111, %111 [0, 1, 2, 5, 6, 8, 9, 10, 12, 16] : vector<10x10x10xi64>, vector<10x10x10xi64>
        %alloc_56 = memref.alloc() : memref<10xf32>
        scf.yield %alloc_56 : memref<10xf32>
      }
      case 3 {
        %273 = affine.max affine_map<(d0, d1, d2) -> (-d2, d2 * -2, d2 * -2 + 1)>(%c10, %c1, %c8)
        %274 = math.rsqrt %11 : tensor<5xf32>
        %275 = bufferization.clone %68 : memref<5xi16> to memref<5xi16>
        %276 = math.cos %5 : tensor<5xf32>
        memref.assume_alignment %alloc_13, 1 : memref<2xf16>
        %277 = index.divs %90, %273
        %278 = math.roundeven %cst_21 : f32
        %279 = arith.shrui %c540967278_i64, %c1491804838_i64 : i64
        %280 = arith.shli %false_4, %35 : i1
        %281 = bufferization.to_tensor %alloc_7 : memref<2xf32>
        %282 = arith.minui %35, %false : i1
        %283 = vector.shuffle %81, %81 [0, 3, 5, 6, 7, 13, 14, 15, 17, 19] : vector<10xi32>, vector<10xi32>
        %expanded_50 = tensor.expand_shape %from_elements_24 [[0, 1]] : tensor<5xi64> into tensor<5x1xi64>
        %284 = vector.transpose %263, [0] : vector<10xi1> to vector<10xi1>
        %285 = math.fma %281, %6, %6 : tensor<2xf32>
        memref.copy %alloc_15, %49 : memref<10xi1> to memref<10xi1>
        %alloc_51 = memref.alloc() : memref<10xf32>
        scf.yield %alloc_51 : memref<10xf32>
      }
      default {
        %273 = vector.flat_transpose %263 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
        %274 = index.sub %42, %c4
        %275 = math.atan2 %5, %5 : tensor<5xf32>
        %276 = arith.shli %c1343683170_i32, %c401653752_i32 : i32
        %277 = vector.insertelement %false, %64[%c9 : index] : vector<2xi1>
        %278 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%78, %76, %42)
        %279 = math.roundeven %19 : tensor<f32>
        memref.store %c1343683170_i32, %alloc_8[%c3] : memref<5xi32>
        %280 = vector.create_mask %97, %c4, %268 : vector<10x10x10xi1>
        %281 = arith.shli %c1491804838_i64, %c540967278_i64 : i64
        %282 = math.absf %16 : tensor<10xf16>
        %283 = math.tanh %13 : tensor<10x10x10xf16>
        %284 = arith.ceildivsi %c1491804838_i64, %c1199528644_i64 : i64
        %285 = arith.minf %cst_21, %cst_21 : f32
        %286 = math.log2 %cst_2 : f16
        %287 = math.exp %17 : tensor<10xf16>
        %alloc_50 = memref.alloc() : memref<10xf32>
        scf.yield %alloc_50 : memref<10xf32>
      }
      %270 = arith.negf %cst_2 : f16
      %271 = arith.remf %cst_1, %cst_0 : f16
      %from_elements_49 = tensor.from_elements %c404776214_i32, %c404776214_i32 : tensor<2xi32>
      %272 = arith.minsi %c1491804838_i64, %c540967278_i64 : i64
      scf.yield
    }
    case 2 {
      %261 = index.sub %76, %71
      %262 = math.round %4 : tensor<10xf16>
      %263 = arith.divui %false_3, %35 : i1
      %264 = vector.shuffle %80, %21 [0, 2, 7, 8, 9, 10, 13, 14] : vector<10xi1>, vector<5xi1>
      %265 = affine.max affine_map<(d0) -> ((d0 floordiv 4) floordiv 16 - d0, -(((d0 floordiv 4) floordiv 16) floordiv 64), d0 floordiv 4)>(%c2)
      %266 = arith.maxsi %c401653752_i32, %c401653752_i32 : i32
      %267 = arith.shli %false_3, %false_4 : i1
      %268 = arith.andi %c540967278_i64, %c1491804838_i64 : i64
      %269 = vector.broadcast %cst_5 : f16 to vector<10x10xf16>
      %270 = vector.outerproduct %82, %79, %269 {kind = #vector.kind<maxf>} : vector<10xf16>, vector<10xf16>
      %271 = math.absi %2 : tensor<10xi64>
      %272 = math.tan %16 : tensor<10xf16>
      %273 = math.tan %19 : tensor<f32>
      %alloca_47 = memref.alloca() : memref<2xi1>
      %274 = vector.shuffle %64, %64 [0, 2, 3] : vector<2xi1>, vector<2xi1>
      memref.store %cst_2, %alloc_20[%c3] : memref<5xf16>
      %275 = vector.transpose %111, [0, 2, 1] : vector<10x10x10xi64> to vector<10x10x10xi64>
      scf.yield
    }
    case 3 {
      %261 = index.castu %c-3927_i16 : i16 to index
      %262 = memref.load %alloc_19[%c6] : memref<10xi1>
      %263 = arith.remsi %false_4, %false : i1
      %264 = index.floordivs %97, %61
      %265 = memref.load %49[%c3] : memref<10xi1>
      memref.assume_alignment %alloc_13, 1 : memref<2xf16>
      %266 = index.divs %78, %c4
      %267 = memref.load %alloc_9[%c6, %c9, %c6] : memref<10x10x10xi64>
      %268 = arith.minf %cst_5, %cst_2 : f16
      %269 = arith.divui %c-3927_i16, %c-3927_i16 : i16
      %270 = math.rsqrt %5 : tensor<5xf32>
      %271 = affine.for %arg0 = 0 to 52 iter_args(%arg1 = %78) -> (index) {
        affine.yield %110 : index
      }
      %272 = index.ceildivs %c4, %c5
      %273 = vector.broadcast %false_4 : i1 to vector<10x10x10xi1>
      %274 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 - (d0 - 4) - (d2 - (d0 - 4) + d3))>(%c9, %c6, %48, %c8)
      %275 = math.log10 %40 : tensor<10x10x10xf16>
      scf.yield
    }
    default {
      %261 = arith.ori %c401653752_i32, %c1343683170_i32 : i32
      %262 = vector.reduction <minsi>, %65 : vector<2xi32> into i32
      %263 = vector.transpose %64, [0] : vector<2xi1> to vector<2xi1>
      %264 = bufferization.clone %50 : memref<10xi1> to memref<10xi1>
      %265 = arith.andi %false, %35 : i1
      %266 = arith.remsi %false_4, %35 : i1
      %267 = affine.if affine_set<(d0, d1, d2, d3) : (d2 mod 16 == 0, 0 >= 0, d0 >= 0)>(%c13, %c14, %c4, %c10) -> memref<10xf16> {
        %276 = math.ctpop %24 : tensor<i16>
        %277 = math.round %reduced : tensor<f32>
        %278 = vector.transpose %82, [0] : vector<10xf16> to vector<10xf16>
        memref.assume_alignment %alloc_19, 8 : memref<10xi1>
        %279 = arith.muli %35, %false : i1
        %280 = arith.cmpf oge, %cst, %cst_1 : f16
        %281 = index.sizeof
        %282 = index.floordivs %c4, %55
        %alloc_48 = memref.alloc() : memref<10xf16>
        affine.yield %alloc_48 : memref<10xf16>
      } else {
        %276 = arith.subi %false, %35 : i1
        %277 = math.log %7 : tensor<10xf32>
        %278 = vector.transpose %79, [0] : vector<10xf16> to vector<10xf16>
        %279 = math.ctpop %35 : i1
        %280 = arith.andi %false, %35 : i1
        %281 = math.absf %13 : tensor<10x10x10xf16>
        %282 = affine.min affine_map<(d0, d1, d2) -> ((-d1 - 4) mod 32 + 32)>(%76, %27, %c2)
        %283 = vector.transpose %79, [0] : vector<10xf16> to vector<10xf16>
        %alloc_48 = memref.alloc() : memref<10xf16>
        affine.yield %alloc_48 : memref<10xf16>
      }
      %268 = vector.reduction <minui>, %101 : vector<10xi16> into i16
      %269 = arith.cmpi sge, %c-3927_i16, %c-3927_i16 : i16
      %270 = vector.multi_reduction <mul>, %53, %54 [] : vector<5xf32> to vector<5xf32>
      %271 = memref.load %alloc_9[%c8, %c6, %c1] : memref<10x10x10xi64>
      %272 = math.powf %13, %40 : tensor<10x10x10xf16>
      %273 = math.sqrt %collapsed : tensor<100x10xf16>
      %274 = vector.insertelement %c-3927_i16, %101[%c9 : index] : vector<10xi16>
      %275 = math.exp %cst_1 : f16
      %expanded_47 = tensor.expand_shape %14 [[0, 1]] : tensor<5xi1> into tensor<5x1xi1>
    }
    %121 = arith.muli %c-3927_i16, %c-3927_i16 : i16
    %122 = arith.shli %c1199528644_i64, %c540967278_i64 : i64
    %123 = math.sqrt %cst_21 : f32
    %124 = arith.divf %cst_0, %cst_1 : f16
    %125 = bufferization.clone %alloc_13 : memref<2xf16> to memref<2xf16>
    %126 = vector.broadcast %c12 : index to vector<5xindex>
    %127 = vector.broadcast %c404776214_i32 : i32 to vector<5xi32>
    vector.scatter %alloc_8[%c0] [%126], %21, %127 : memref<5xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
    %128 = bufferization.clone %alloc_15 : memref<10xi1> to memref<10xi1>
    %129 = vector.flat_transpose %101 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
    %130 = math.fma %5, %11, %5 : tensor<5xf32>
    %alloc_25 = memref.alloc() : memref<5xf32>
    memref.tensor_store %11, %alloc_25 : memref<5xf32>
    %131 = arith.minsi %c1491804838_i64, %c1491804838_i64 : i64
    %132 = affine.min affine_map<(d0) -> (d0 floordiv 8)>(%c0)
    %133 = arith.minui %c540967278_i64, %c540967278_i64 : i64
    %134 = math.exp2 %17 : tensor<10xf16>
    %135 = math.log %6 : tensor<2xf32>
    %136 = bufferization.to_memref %1 : memref<10x10x10xi1>
    %137 = math.log1p %reduced : tensor<f32>
    %138 = math.log %cst_1 : f16
    %139 = math.cttz %true : i1
    %140 = vector.broadcast %c1491804838_i64 : i64 to vector<10xi64>
    %141 = math.ctlz %24 : tensor<i16>
    %142 = arith.subi %c1343683170_i32, %c1343683170_i32 : i32
    %143 = math.expm1 %7 : tensor<10xf32>
    %144 = scf.while (%arg0 = %alloc_19) : (memref<10xi1>) -> memref<10xi1> {
      %261 = vector.create_mask %c14 : vector<10xi1>
      %262 = arith.addi %35, %false : i1
      %alloc_47 = memref.alloc() : memref<10x1xi16>
      memref.tensor_store %expanded, %alloc_47 : memref<10x1xi16>
      %263 = arith.cmpf false, %cst, %cst_5 : f16
      %264 = vector.broadcast %c540967278_i64 : i64 to vector<10x10xi64>
      %dest_48, %accumulated_value_49 = vector.scan <xor>, %111, %264 {inclusive = true, reduction_dim = 0 : i64} : vector<10x10x10xi64>, vector<10x10xi64>
      %265 = arith.maxui %true, %false_4 : i1
      %266 = vector.transpose %81, [0] : vector<10xi32> to vector<10xi32>
      %267 = bufferization.clone %alloc_12 : memref<5xi64> to memref<5xi64>
      scf.condition(%false) %arg0 : memref<10xi1>
    } do {
    ^bb0(%arg0: memref<10xi1>):
      %261 = arith.minf %cst_1, %cst : f16
      %262 = vector.broadcast %false : i1 to vector<10x10xi1>
      %dest_47, %accumulated_value_48 = vector.scan <minsi>, %84, %262 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
      %263 = arith.remui %35, %true : i1
      %264 = index.sub %c10, %71
      %265 = math.exp2 %15 : tensor<5xf16>
      memref.tensor_store %103, %136 : memref<10x10x10xi1>
      %266 = memref.atomic_rmw andi %c540967278_i64, %alloc_9[%c9, %c3, %c8] : (i64, memref<10x10x10xi64>) -> i64
      %267 = vector.transpose %63, [0] : vector<2xi32> to vector<2xi32>
      %268 = bufferization.clone %alloc : memref<10x10x10xi32> to memref<10x10x10xi32>
      %269 = scf.while (%arg1 = %c1491804838_i64) : (i64) -> i64 {
        %275 = arith.remui %c1491804838_i64, %arg1 : i64
        %276 = arith.subi %c1491804838_i64, %c540967278_i64 : i64
        %277 = arith.divui %c1491804838_i64, %c1491804838_i64 : i64
        %278 = vector.transpose %82, [0] : vector<10xf16> to vector<10xf16>
        %279 = arith.divf %cst, %cst : f16
        %280 = arith.divf %cst_1, %cst : f16
        %281 = math.log10 %7 : tensor<10xf32>
        %282 = math.round %reduced : tensor<f32>
        scf.condition(%true) %arg1 : i64
      } do {
      ^bb0(%arg1: i64):
        %275 = arith.ceildivsi %c404776214_i32, %c401653752_i32 : i32
        %276 = math.tan %5 : tensor<5xf32>
        %277 = affine.max affine_map<(d0, d1) -> (d1 + 32, (d0 - 1) ceildiv 2)>(%71, %264)
        %278 = arith.divsi %true, %false_3 : i1
        %279 = bufferization.clone %alloc_14 : memref<2xi64> to memref<2xi64>
        %280 = bufferization.clone %49 : memref<10xi1> to memref<10xi1>
        %281 = vector.reduction <maxf>, %53 : vector<5xf32> into f32
        %282 = math.powf %15, %15 : tensor<5xf16>
        %283 = arith.muli %true, %true : i1
        %284 = vector.insert %false, %21 [0] : i1 into vector<5xi1>
        %285 = affine.min affine_map<(d0, d1) -> ((d1 mod 16) * 2 - 128, d0 * -128, (d1 mod 16) * 2 - 128, d1)>(%c3, %90)
        %286 = arith.ori %c1199528644_i64, %c1491804838_i64 : i64
        %287 = index.floordivs %27, %c0
        %288 = arith.mulf %cst_0, %cst_2 : f16
        %289 = index.mul %287, %285
        %290 = math.cos %15 : tensor<5xf16>
        scf.yield %c1199528644_i64 : i64
      }
      %270 = arith.subi %c540967278_i64, %c540967278_i64 : i64
      memref.copy %alloc_15, %49 : memref<10xi1> to memref<10xi1>
      %271 = arith.maxf %cst_1, %cst_2 : f16
      %c1_i64 = arith.constant 1 : i64
      %272 = vector.transfer_read %2[%c11], %c1_i64 : tensor<10xi64>, vector<i64>
      %273 = index.sub %c8, %c5
      %274 = arith.remsi %false_4, %35 : i1
      scf.yield %alloc_19 : memref<10xi1>
    }
    %145 = index.mul %78, %c8
    %146 = math.floor %16 : tensor<10xf16>
    scf.index_switch %78 
    case 1 {
      %261 = vector.extract %82[7] : vector<10xf16>
      %262 = math.log %13 : tensor<10x10x10xf16>
      %263 = math.powf %19, %19 : tensor<f32>
      %from_elements_47 = tensor.from_elements %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16 : tensor<10xi16>
      %264 = math.absi %transposed : tensor<5xi64>
      %265 = arith.divf %cst_21, %cst_21 : f32
      %266 = arith.maxf %cst_21, %cst_21 : f32
      %267 = index.floordivs %27, %145
      %268 = arith.muli %false, %true : i1
      %269 = vector.load %alloc_15[%c3] : memref<10xi1>, vector<5xi1>
      %270 = tensor.empty() : tensor<10x10xi1>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%270, %alloc_19, %alloc_6 : tensor<10x10xi1>, memref<10xi1>, memref<10x10x10xi1>) outs(%103 : tensor<10x10x10xi1>) {
      ^bb0(%in: i1, %in_48: i1, %in_49: i1, %out: i1):
        %expanded_50 = tensor.expand_shape %9 [[0, 1]] : tensor<5xi1> into tensor<5x1xi1>
        %276 = vector.bitcast %84 : vector<10x10x10xi1> to vector<10x10x10xi1>
        %277 = math.fma %6, %6, %6 : tensor<2xf32>
        %278 = arith.remf %cst_1, %cst_2 : f16
        %expanded_51 = tensor.expand_shape %5 [[0, 1]] : tensor<5xf32> into tensor<5x1xf32>
        %279 = arith.divf %cst_1, %cst_2 : f16
        %280 = index.add %110, %94
        %281 = arith.remsi %c1491804838_i64, %c540967278_i64 : i64
        %282 = arith.remsi %false, %false_4 : i1
        %alloca_52 = memref.alloca() : memref<10xi64>
        %283 = vector.broadcast %false : i1 to vector<i1>
        vector.transfer_write %283, %49[%c11] : vector<i1>, memref<10xi1>
        %284 = memref.load %alloc_19[%c0] : memref<10xi1>
        %285 = math.absf %cst_2 : f16
        %286 = math.powf %11, %5 : tensor<5xf32>
        %287 = vector.broadcast %cst_21 : f32 to vector<10xf32>
        %288 = vector.fma %287, %287, %287 : vector<10xf32>
        %289 = math.absf %5 : tensor<5xf32>
        %290 = tensor.empty() : tensor<10x10x10xi32>
        %291 = vector.reduction <maxui>, %140 : vector<10xi64> into i64
        %292 = math.exp2 %11 : tensor<5xf32>
        %293 = arith.ceildivsi %false_3, %false_4 : i1
        %alloc_53 = memref.alloc() : memref<1x10xi1>
        %294 = tensor.empty() : tensor<5x10xi1>
        %295 = linalg.matmul ins(%expanded_50, %alloc_53 : tensor<5x1xi1>, memref<1x10xi1>) outs(%294 : tensor<5x10xi1>) -> tensor<5x10xi1>
        %296 = vector.shuffle %21, %269 [0, 5, 7] : vector<5xi1>, vector<5xi1>
        %297 = vector.insertelement %cst, %82[%c3 : index] : vector<10xf16>
        %298 = math.atan %4 : tensor<10xf16>
        memref.copy %alloc_8, %alloc_17 : memref<5xi32> to memref<5xi32>
        %299 = arith.ori %c1343683170_i32, %c404776214_i32 : i32
        %300 = arith.divui %false_4, %out : i1
        %301 = arith.remf %cst, %cst : f16
        %302 = vector.broadcast %cst_21 : f32 to vector<2xf32>
        %303 = vector.fma %302, %302, %302 : vector<2xf32>
        memref.copy %alloc_9, %alloc_16 : memref<10x10x10xi64> to memref<10x10x10xi64>
        %304 = vector.broadcast %in : i1 to vector<2xi1>
        %305 = affine.min affine_map<(d0, d1) -> (0, d0 * 16, 0)>(%280, %c11)
        linalg.yield %out : i1
      } -> tensor<10x10x10xi1>
      %272 = vector.load %50[%c9] : memref<10xi1>, vector<10xi1>
      %273 = math.absf %4 : tensor<10xf16>
      scf.index_switch %267 
      case 1 {
        %276 = index.floordivs %c10, %61
        %277 = math.absi %9 : tensor<5xi1>
        %278 = arith.minsi %false_3, %false_3 : i1
        %279 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %269, %269, %true : vector<5xi1>, vector<5xi1> into i1
        %280 = math.fma %7, %7, %7 : tensor<10xf32>
        %281 = arith.remui %c401653752_i32, %c1343683170_i32 : i32
        %282 = arith.shrui %c-3927_i16, %c-3927_i16 : i16
        %283 = vector.reduction <maxf>, %53 : vector<5xf32> into f32
        bufferization.dealloc_tensor %0 : tensor<10x10x10xi1>
        %284 = vector.bitcast %21 : vector<5xi1> to vector<5xi1>
        %285 = index.ceildivs %27, %267
        %286 = vector.extract %63[1] : vector<2xi32>
        %287 = vector.broadcast %c1199528644_i64 : i64 to vector<10x10xi64>
        %dest_48, %accumulated_value_49 = vector.scan <maxui>, %111, %287 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10x10xi64>, vector<10x10xi64>
        %288 = arith.minui %false_4, %false_4 : i1
        %289 = vector.insert %c401653752_i32, %81 [8] : i32 into vector<10xi32>
        %290 = arith.maxf %cst_0, %cst_2 : f16
        scf.yield
      }
      default {
        %276 = arith.shrui %false_4, %true : i1
        %277 = math.roundeven %16 : tensor<10xf16>
        %278 = math.atan2 %7, %7 : tensor<10xf32>
        %279 = bufferization.clone %alloc : memref<10x10x10xi32> to memref<10x10x10xi32>
        %280 = vector.flat_transpose %79 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
        %281 = memref.load %alloc_18[%c0] : memref<2xf16>
        %282 = arith.divui %false_3, %35 : i1
        %283 = index.floordivs %27, %48
        %284 = math.floor %cst_5 : f16
        %285 = math.floor %19 : tensor<f32>
        %286 = math.fma %13, %13, %13 : tensor<10x10x10xf16>
        %287 = vector.shuffle %80, %269 [0, 3, 4, 5, 6, 7, 8, 14] : vector<10xi1>, vector<5xi1>
        %288 = arith.ori %c1199528644_i64, %c540967278_i64 : i64
        %289 = math.roundeven %15 : tensor<5xf16>
        %290 = vector.broadcast %35 : i1 to vector<10x2xi1>
        vector.transfer_write %290, %alloc_6[%90, %c6, %78] {permutation_map = affine_map<(d0, d1, d2) -> (d0, d1)>} : vector<10x2xi1>, memref<10x10x10xi1>
        %291 = arith.minui %true, %true : i1
      }
      %274 = arith.maxui %c-3927_i16, %c-3927_i16 : i16
      %275 = index.floordivs %76, %c5
      scf.yield
    }
    case 2 {
      %261 = index.castu %c401653752_i32 : i32 to index
      %262 = vector.broadcast %25 : index to vector<5xindex>
      %263 = vector.broadcast %cst_2 : f16 to vector<5xf16>
      vector.scatter %125[%c1] [%262], %21, %263 : memref<2xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
      %264 = arith.ceildivsi %c1199528644_i64, %c540967278_i64 : i64
      %265 = math.log10 %reduced : tensor<f32>
      %266 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 64)>(%c10, %c12, %71)
      %267 = arith.remsi %false_3, %35 : i1
      %268 = index.divs %78, %27
      %269 = math.atan2 %7, %7 : tensor<10xf32>
      %270 = vector.insert %c-3927_i16, %129 [9] : i16 into vector<10xi16>
      %271 = vector.reduction <add>, %54 : vector<5xf32> into f32
      %272 = vector.broadcast %false_4 : i1 to vector<10x10xi1>
      %dest_47, %accumulated_value_48 = vector.scan <or>, %37, %272 {inclusive = true, reduction_dim = 2 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
      %273 = vector.insertelement %cst_5, %82[%97 : index] : vector<10xf16>
      %274 = index.floordivs %97, %76
      affine.store %c404776214_i32, %alloc_17[%c6] : memref<5xi32>
      %275 = tensor.empty() : tensor<10x10xi64>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1, d2, d0)>, affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2, %from_elements, %275 : tensor<10xi64>, tensor<10x10x10xi64>, tensor<10x10xi64>) outs(%from_elements : tensor<10x10x10xi64>) {
      ^bb0(%in: i64, %in_49: i64, %in_50: i64, %out: i64):
        %277 = vector.extract %79[8] : vector<10xf16>
        %278 = arith.subi %in_50, %c1491804838_i64 : i64
        %279 = arith.shli %true, %35 : i1
        %280 = math.fma %cst_1, %cst_2, %cst_0 : f16
        memref.assume_alignment %50, 16 : memref<10xi1>
        %281 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 + d3 - (d3 + d0) * 4)>(%c1, %c8, %55, %27)
        %282 = affine.min affine_map<(d0, d1) -> (d1 mod 8 + d0, d1 * 32, d0 + 2, d1 mod 8 + d0)>(%145, %76)
        %alloc_51 = memref.alloc() : memref<2xi16>
        memref.tensor_store %22, %alloc_51 : memref<2xi16>
        %283 = arith.shrsi %c1491804838_i64, %in_49 : i64
        %284 = vector.reduction <mul>, %82 : vector<10xf16> into f16
        %285 = math.atan2 %4, %4 : tensor<10xf16>
        %286 = arith.minf %cst_21, %cst_21 : f32
        %287 = affine.max affine_map<(d0, d1, d2) -> (d0 + d1 - 64 + -(d0 - 16) - d0 + 48, (d0 + d1 - 64 - 16) * 128)>(%c13, %c3, %c14)
        %288 = index.ceildivs %110, %c11
        %289 = affine.max affine_map<(d0) -> (-d0)>(%c0)
        %290 = index.floordivs %61, %c3
        %291 = vector.broadcast %145 : index to vector<2xindex>
        %292 = vector.broadcast %c1491804838_i64 : i64 to vector<2xi64>
        vector.scatter %alloc_16[%c9, %c5, %c6] [%291], %64, %292 : memref<10x10x10xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %293 = math.ctlz %103 : tensor<10x10x10xi1>
        %expanded_52 = tensor.expand_shape %0 [[0], [1], [2, 3]] : tensor<10x10x10xi1> into tensor<10x10x10x1xi1>
        %294 = vector.flat_transpose %64 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
        %295 = vector.load %128[%c4] : memref<10xi1>, vector<10x10x10xi1>
        %296 = arith.ori %false_3, %true : i1
        %297 = vector.multi_reduction <xor>, %80, %false_3 [0] : vector<10xi1> to i1
        %298 = affine.max affine_map<(d0) -> ((d0 - (d0 mod 2 - d0 ceildiv 2)) floordiv 32, d0 mod 2, d0 mod 128, ((d0 - (d0 mod 2 - d0 ceildiv 2)) floordiv 32) * 2)>(%289)
        %299 = index.add %94, %c0
        %300 = math.fma %6, %6, %6 : tensor<2xf32>
        %301 = index.mul %c9, %c7
        %302 = vector.broadcast %c540967278_i64 : i64 to vector<2xi64>
        %303 = math.round %5 : tensor<5xf32>
        %304 = vector.broadcast %true : i1 to vector<5xi1>
        %305 = math.absf %19 : tensor<f32>
        %306 = vector.transpose %80, [0] : vector<10xi1> to vector<10xi1>
        linalg.yield %c540967278_i64 : i64
      } -> tensor<10x10x10xi64>
      bufferization.dealloc_tensor %119 : tensor<10xi1>
      scf.yield
    }
    default {
      %261 = vector.broadcast %cst_21 : f32 to vector<5x5xf32>
      %262 = vector.outerproduct %53, %54, %261 {kind = #vector.kind<maxf>} : vector<5xf32>, vector<5xf32>
      %263 = vector.insertelement %c404776214_i32, %65[%c4 : index] : vector<2xi32>
      %264 = index.sizeof
      %265 = vector.broadcast %c-3927_i16 : i16 to vector<10x10xi16>
      %266 = vector.outerproduct %129, %101, %265 {kind = #vector.kind<maxsi>} : vector<10xi16>, vector<10xi16>
      %267 = arith.shrsi %c1491804838_i64, %c1491804838_i64 : i64
      memref.store %c-3927_i16, %68[%c3] : memref<5xi16>
      %268 = arith.divsi %c1199528644_i64, %c540967278_i64 : i64
      %269 = math.absi %3 : tensor<2xi16>
      %270 = arith.cmpi ult, %c1491804838_i64, %c1491804838_i64 : i64
      %271 = arith.muli %true, %false_3 : i1
      %272 = memref.alloca_scope  -> (i1) {
        %278 = bufferization.clone %alloc_17 : memref<5xi32> to memref<5xi32>
        bufferization.dealloc_tensor %10 : tensor<5xi64>
        %279 = vector.insertelement %cst_1, %82[%31 : index] : vector<10xf16>
        %280 = index.mul %c3, %42
        %from_elements_47 = tensor.from_elements %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64 : tensor<10xi64>
        %281 = arith.minsi %c404776214_i32, %c401653752_i32 : i32
        %282 = math.absi %0 : tensor<10x10x10xi1>
        %283 = math.atan2 %19, %reduced : tensor<f32>
        %284 = affine.min affine_map<(d0, d1, d2, d3) -> ((d2 + d3 ceildiv 32) * 64)>(%145, %c11, %c8, %c10)
        %285 = index.add %76, %110
        %from_elements_48 = tensor.from_elements %cst_21, %cst_21, %cst_21, %cst_21, %cst_21 : tensor<5xf32>
        %286 = arith.shrui %c1199528644_i64, %c540967278_i64 : i64
        %287 = index.sizeof
        %288 = arith.cmpi ult, %c1199528644_i64, %c540967278_i64 : i64
        %289 = arith.remsi %c401653752_i32, %c401653752_i32 : i32
        %290 = math.log1p %16 : tensor<10xf16>
        %291 = math.cos %cst_2 : f16
        %292 = index.sizeof
        %293 = index.divs %110, %61
        %294 = index.divs %c13, %293
        %295 = math.floor %cst_0 : f16
        %296 = math.expm1 %7 : tensor<10xf32>
        %297 = math.ctlz %c1491804838_i64 : i64
        %alloc_49 = memref.alloc() : memref<5x2xf16>
        %298 = tensor.empty() : tensor<100x2xf16>
        %299 = linalg.matmul ins(%117, %alloc_49 : tensor<100x5xf16>, memref<5x2xf16>) outs(%298 : tensor<100x2xf16>) -> tensor<100x2xf16>
        %300 = arith.divui %c540967278_i64, %c1491804838_i64 : i64
        %301 = math.exp2 %16 : tensor<10xf16>
        %302 = affine.apply affine_map<(d0, d1) -> (d1 - d0 - d1)>(%c7, %c1)
        %303 = index.add %76, %c1
        %alloc_50 = memref.alloc() : memref<10x10x10xi32>
        memref.copy %alloc, %alloc_50 : memref<10x10x10xi32> to memref<10x10x10xi32>
        %304 = index.ceildivs %c14, %31
        %305 = arith.shrsi %35, %false_3 : i1
        %306 = arith.subi %false_4, %true : i1
        memref.alloca_scope.return %false : i1
      }
      %273 = scf.execute_region -> i1 {
        %278 = math.powf %11, %5 : tensor<5xf32>
        %279 = vector.broadcast %c5 : index to vector<2xindex>
        %280 = vector.broadcast %cst_1 : f16 to vector<2xf16>
        vector.scatter %alloc_20[%c4] [%279], %64, %280 : memref<5xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
        %281 = index.divs %55, %c12
        %282 = vector.extract %54[2] : vector<5xf32>
        %283 = math.cos %17 : tensor<10xf16>
        %284 = math.expm1 %11 : tensor<5xf32>
        %285 = vector.flat_transpose %63 {columns = 1 : i32, rows = 2 : i32} : vector<2xi32> -> vector<2xi32>
        %286 = vector.flat_transpose %140 {columns = 5 : i32, rows = 2 : i32} : vector<10xi64> -> vector<10xi64>
        %287 = math.round %4 : tensor<10xf16>
        %288 = math.cos %15 : tensor<5xf16>
        %289 = index.divs %c14, %25
        %290 = index.castu %c10 : index to i32
        %291 = arith.maxf %cst_21, %cst_21 : f32
        %292 = index.mul %42, %c12
        %293 = arith.subi %c1343683170_i32, %c404776214_i32 : i32
        %294 = arith.ori %c1343683170_i32, %c1343683170_i32 : i32
        scf.yield %false_3 : i1
      }
      %274 = arith.maxf %cst_21, %cst_21 : f32
      %275 = vector.reduction <add>, %54 : vector<5xf32> into f32
      %276 = arith.maxf %cst_0, %cst_2 : f16
      %277 = arith.maxui %c1199528644_i64, %c540967278_i64 : i64
    }
    %147 = arith.muli %c401653752_i32, %c404776214_i32 : i32
    %148 = affine.apply affine_map<(d0) -> ((d0 mod 16) * 2)>(%c10)
    %149 = memref.load %alloc_20[%c4] : memref<5xf16>
    %150 = math.log1p %16 : tensor<10xf16>
    %cast = tensor.cast %16 : tensor<10xf16> to tensor<?xf16>
    %151 = arith.shli %c1343683170_i32, %c1343683170_i32 : i32
    %152 = vector.broadcast %c1491804838_i64 : i64 to vector<10x10xi64>
    %153 = vector.outerproduct %140, %140, %152 {kind = #vector.kind<add>} : vector<10xi64>, vector<10xi64>
    %154 = math.exp2 %cst_1 : f16
    %155 = vector.reduction <and>, %101 : vector<10xi16> into i16
    %156 = arith.muli %false_4, %false_3 : i1
    vector.print %111 : vector<10x10x10xi64>
    %157 = affine.max affine_map<(d0, d1) -> (d1, (d0 mod 32 - d1 floordiv 64) * 8, d0 mod 32 - d1 floordiv 64)>(%c6, %c10)
    %158 = index.ceildivu %31, %c9
    %159 = math.rsqrt %cst_1 : f16
    %160 = vector.create_mask %42 : vector<2xi1>
    %cast_26 = tensor.cast %11 : tensor<5xf32> to tensor<?xf32>
    %161 = scf.while (%arg0 = %alloc_15) : (memref<10xi1>) -> memref<10xi1> {
      %261 = math.log %cst_5 : f16
      %262 = bufferization.to_memref %from_elements : memref<10x10x10xi64>
      %263 = index.sizeof
      %264 = scf.execute_region -> tensor<2xf32> {
        %collapsed_47 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<100x10xf16> into tensor<1000xf16>
        %269 = math.atan2 %cst, %cst_0 : f16
        %270 = vector.extract %79[4] : vector<10xf16>
        %271 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 ceildiv 4)>(%94, %c10, %27, %55)
        %272 = arith.andi %c1343683170_i32, %c401653752_i32 : i32
        %273 = arith.divsi %35, %35 : i1
        %274 = arith.maxui %35, %false_4 : i1
        %275 = math.round %cst_0 : f16
        %276 = math.expm1 %4 : tensor<10xf16>
        %277 = vector.extract %21[3] : vector<5xi1>
        %278 = arith.addi %false_4, %true : i1
        %279 = arith.shrsi %35, %true : i1
        %280 = tensor.empty(%c12, %27) : tensor<?x10x?xi64>
        %281 = math.absf %4 : tensor<10xf16>
        %282 = arith.ceildivsi %c401653752_i32, %c404776214_i32 : i32
        %283 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 + d3 - (d3 + d0) * 4)>(%c6, %c14, %90, %157)
        scf.yield %6 : tensor<2xf32>
      }
      %265 = affine.apply affine_map<(d0, d1) -> (d1 - d0 - d1)>(%48, %71)
      %266 = arith.divsi %35, %false_4 : i1
      %267 = arith.maxf %cst_21, %cst_21 : f32
      %268 = affine.min affine_map<(d0, d1, d2) -> (d2 * 2, (d2 + d1) * 4, d2 - d1 + d2 * 2 - 4)>(%c13, %97, %c0)
      scf.condition(%false_4) %50 : memref<10xi1>
    } do {
    ^bb0(%arg0: memref<10xi1>):
      %261 = arith.divf %cst_0, %cst : f16
      %262 = math.rsqrt %cst_5 : f16
      %263 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 + d1 + d2 + 8, (d0 - 4) floordiv 32, d0 + d1 + d2 + 8, -d3)>(%c2, %48, %145, %c14)
      %264 = arith.remui %c401653752_i32, %c1343683170_i32 : i32
      %265 = math.ctlz %1 : tensor<10x10x10xi1>
      %266 = math.powf %40, %13 : tensor<10x10x10xf16>
      %267 = arith.subi %c1199528644_i64, %c1199528644_i64 : i64
      %268 = index.mul %42, %c4
      %269 = arith.divf %cst_0, %cst_1 : f16
      %270 = math.round %13 : tensor<10x10x10xf16>
      %271 = tensor.empty() : tensor<10xi1>
      %272 = math.expm1 %reduced : tensor<f32>
      %273 = arith.subi %false_3, %false : i1
      %274 = vector.insert %c1199528644_i64, %140 [4] : i64 into vector<10xi64>
      %275 = index.maxu %c7, %94
      %276 = math.fma %7, %7, %7 : tensor<10xf32>
      scf.yield %alloc_19 : memref<10xi1>
    }
    %alloc_27 = memref.alloc() : memref<5xi1>
    memref.tensor_store %14, %alloc_27 : memref<5xi1>
    %162 = math.absi %103 : tensor<10x10x10xi1>
    %163 = tensor.empty() : tensor<10xf16>
    %164 = arith.subi %c401653752_i32, %c401653752_i32 : i32
    %165 = math.log10 %15 : tensor<5xf16>
    %166 = vector.create_mask %42 : vector<2xi1>
    %167 = tensor.empty() : tensor<10x5xf16>
    %168 = tensor.empty() : tensor<100x5xf16>
    %169 = linalg.matmul ins(%collapsed, %167 : tensor<100x10xf16>, tensor<10x5xf16>) outs(%168 : tensor<100x5xf16>) -> tensor<100x5xf16>
    %170 = arith.remsi %c404776214_i32, %c401653752_i32 : i32
    %171 = index.divs %25, %55
    %alloc_28 = memref.alloc() : memref<10x2xf16>
    %172 = tensor.empty() : tensor<100x2xf16>
    %173 = linalg.matmul ins(%collapsed, %alloc_28 : tensor<100x10xf16>, memref<10x2xf16>) outs(%172 : tensor<100x2xf16>) -> tensor<100x2xf16>
    %174 = memref.realloc %alloc_12 : memref<5xi64> to memref<5xi64>
    %generated_29 = tensor.generate %c3 {
    ^bb0(%arg0: index):
      %261 = vector.shuffle %53, %53 [0, 1, 2, 4, 5, 6] : vector<5xf32>, vector<5xf32>
      %262 = math.expm1 %168 : tensor<100x5xf16>
      %263 = vector.flat_transpose %160 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
      %264 = vector.extract %140[3] : vector<10xi64>
      tensor.yield %cst_21 : f32
    } : tensor<?xf32>
    %175 = vector.broadcast %35 : i1 to vector<5xi1>
    %176 = vector.transpose %81, [0] : vector<10xi32> to vector<10xi32>
    %false_30 = index.bool.constant false
    %177 = arith.ceildivsi %true, %35 : i1
    %178 = bufferization.to_memref %8 : memref<10xi16>
    %179 = tensor.empty() : tensor<10x10x10xi64>
    %mapped = linalg.map ins(%from_elements : tensor<10x10x10xi64>) outs(%179 : tensor<10x10x10xi64>)
      (%in: i64) {
        %261 = arith.minf %cst_21, %cst_21 : f32
        %262 = arith.maxui %c401653752_i32, %c1343683170_i32 : i32
        %263 = index.divs %48, %76
        %264 = math.fma %4, %16, %4 : tensor<10xf16>
        %265 = math.ctlz %3 : tensor<2xi16>
        %266 = math.floor %13 : tensor<10x10x10xf16>
        %267 = vector.broadcast %c401653752_i32 : i32 to vector<2x2xi32>
        %268 = vector.outerproduct %65, %65, %267 {kind = #vector.kind<maxui>} : vector<2xi32>, vector<2xi32>
        %269 = vector.broadcast %cst : f16 to vector<10x10xf16>
        %270 = vector.outerproduct %79, %82, %269 {kind = #vector.kind<mul>} : vector<10xf16>, vector<10xf16>
        %271 = arith.maxui %c1491804838_i64, %c1491804838_i64 : i64
        %272 = scf.index_switch %48 -> memref<10x10x10xf32> 
        case 1 {
          %292 = vector.broadcast %cst_21 : f32 to vector<2xf32>
          %293 = vector.maskedload %alloc_7[%c0], %160, %292 : memref<2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
          %294 = arith.divsi %c1491804838_i64, %c1199528644_i64 : i64
          %295 = vector.transpose %54, [0] : vector<5xf32> to vector<5xf32>
          memref.assume_alignment %49, 4 : memref<10xi1>
          %296 = index.sub %71, %90
          %297 = vector.insert %false_4, %160 [0] : i1 into vector<2xi1>
          %298 = arith.shli %true, %false_4 : i1
          %299 = arith.maxf %cst_2, %cst_2 : f16
          %300 = vector.flat_transpose %53 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
          %splat = tensor.splat %false_30 : tensor<2xi1>
          %301 = index.mul %c10, %78
          %302 = arith.shrui %c404776214_i32, %c1343683170_i32 : i32
          %303 = affine.apply affine_map<(d0) -> (d0 * 16)>(%110)
          %304 = math.round %5 : tensor<5xf32>
          %alloc_51 = memref.alloc() : memref<10xi32>
          memref.copy %alloc_11, %alloc_51 : memref<10xi32> to memref<10xi32>
          %305 = arith.remf %cst_0, %cst_1 : f16
          %alloc_52 = memref.alloc() : memref<10x10x10xf32>
          scf.yield %alloc_52 : memref<10x10x10xf32>
        }
        case 2 {
          %292 = index.sub %c8, %c11
          %293 = arith.shrui %c-3927_i16, %c-3927_i16 : i16
          %294 = affine.min affine_map<(d0, d1, d2) -> (d2 mod 128)>(%55, %78, %90)
          memref.tensor_store %0, %alloc_6 : memref<10x10x10xi1>
          %295 = vector.reduction <xor>, %140 : vector<10xi64> into i64
          %296 = arith.minf %cst_5, %cst_1 : f16
          %297 = bufferization.to_memref %10 : memref<5xi64>
          %298 = vector.broadcast %cst_0 : f16 to vector<5xf16>
          %299 = vector.broadcast %c404776214_i32 : i32 to vector<5xi32>
          %300 = vector.gather %alloc_13[%48] [%299], %175, %298 : memref<2xf16>, vector<5xi32>, vector<5xi1>, vector<5xf16> into vector<5xf16>
          %301 = math.tan %6 : tensor<2xf32>
          %302 = vector.broadcast %cst_21 : f32 to vector<10x10x10xf32>
          %303 = vector.fma %302, %302, %302 : vector<10x10x10xf32>
          %304 = arith.shrui %c1491804838_i64, %c540967278_i64 : i64
          %splat = tensor.splat %c540967278_i64 : tensor<5xi64>
          %305 = math.copysign %collapsed, %collapsed : tensor<100x10xf16>
          %306 = vector.broadcast %c540967278_i64 : i64 to vector<5xi64>
          %307 = math.ctlz %12 : tensor<2xi64>
          %308 = math.absi %true : i1
          %alloc_51 = memref.alloc() : memref<10x10x10xf32>
          scf.yield %alloc_51 : memref<10x10x10xf32>
        }
        case 3 {
          %292 = math.expm1 %19 : tensor<f32>
          %293 = index.castu %c6 : index to i32
          %294 = math.ctlz %1 : tensor<10x10x10xi1>
          %295 = index.castu %false : i1 to index
          %296 = vector.flat_transpose %79 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
          %expanded_51 = tensor.expand_shape %10 [[0, 1]] : tensor<5xi64> into tensor<5x1xi64>
          %297 = arith.ceildivsi %c401653752_i32, %c404776214_i32 : i32
          %298 = vector.broadcast %35 : i1 to vector<10x10xi1>
          %dest_52, %accumulated_value_53 = vector.scan <mul>, %37, %298 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
          %299 = index.sub %158, %157
          %300 = vector.broadcast %false_30 : i1 to vector<2x2xi1>
          %301 = vector.outerproduct %166, %64, %300 {kind = #vector.kind<maxui>} : vector<2xi1>, vector<2xi1>
          %302 = bufferization.clone %alloc_16 : memref<10x10x10xi64> to memref<10x10x10xi64>
          %303 = math.expm1 %19 : tensor<f32>
          %304 = index.sizeof
          memref.tensor_store %18, %alloc_10 : memref<5xi64>
          %305 = index.maxs %263, %145
          %alloc_54 = memref.alloc() : memref<1x5xi16>
          %306 = tensor.empty() : tensor<10x5xi16>
          %307 = linalg.matmul ins(%expanded, %alloc_54 : tensor<10x1xi16>, memref<1x5xi16>) outs(%306 : tensor<10x5xi16>) -> tensor<10x5xi16>
          %alloc_55 = memref.alloc() : memref<10x10x10xf32>
          scf.yield %alloc_55 : memref<10x10x10xf32>
        }
        case 4 {
          %292 = vector.broadcast %cst_21 : f32 to vector<2xf32>
          %293 = vector.fma %292, %292, %292 : vector<2xf32>
          %294 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%157, %c5, %c8)
          %295 = math.log1p %168 : tensor<100x5xf16>
          %296 = math.expm1 %7 : tensor<10xf32>
          %297 = index.floordivs %294, %55
          %298 = bufferization.to_tensor %alloc_6 : memref<10x10x10xi1>
          %from_elements_51 = tensor.from_elements %cst_1, %cst_5, %cst_5, %cst_5, %cst_5, %cst_1, %cst_5, %cst_0, %cst_5, %cst_0 : tensor<10xf16>
          %299 = vector.reduction <add>, %81 : vector<10xi32> into i32
          %300 = arith.muli %c1491804838_i64, %c540967278_i64 : i64
          %301 = bufferization.clone %alloc : memref<10x10x10xi32> to memref<10x10x10xi32>
          %302 = index.divs %97, %c0
          %303 = arith.remui %false_4, %false_30 : i1
          %304 = affine.apply affine_map<(d0) -> ((d0 mod 16) * 2)>(%110)
          %305 = index.floordivs %c11, %c5
          %inserted_52 = tensor.insert %c540967278_i64 into %from_elements[%c6, %c2, %c5] : tensor<10x10x10xi64>
          %306 = affine.max affine_map<(d0, d1, d2) -> (d1, (d2 * 2) mod 128)>(%157, %c6, %55)
          %alloc_53 = memref.alloc() : memref<10x10x10xf32>
          scf.yield %alloc_53 : memref<10x10x10xf32>
        }
        default {
          %292 = vector.transpose %140, [0] : vector<10xi64> to vector<10xi64>
          %293 = index.maxu %132, %263
          %294 = bufferization.to_memref %16 : memref<10xf16>
          %295 = math.absi %10 : tensor<5xi64>
          %296 = math.log1p %40 : tensor<10x10x10xf16>
          %297 = arith.shli %c1343683170_i32, %c401653752_i32 : i32
          %298 = math.atan2 %4, %17 : tensor<10xf16>
          %299 = arith.subi %false, %true : i1
          %300 = arith.maxui %in, %c1491804838_i64 : i64
          %301 = arith.remf %cst, %cst_5 : f16
          %302 = arith.ceildivsi %in, %c540967278_i64 : i64
          %303 = arith.divui %true, %false_4 : i1
          %304 = index.floordivs %42, %145
          %305 = arith.minf %cst_5, %cst_0 : f16
          %306 = index.casts %c3 : index to i32
          %307 = index.ceildivs %148, %c7
          %alloc_51 = memref.alloc() : memref<10x10x10xf32>
          scf.yield %alloc_51 : memref<10x10x10xf32>
        }
        %273 = arith.ceildivsi %false_30, %false_3 : i1
        %274 = index.mul %31, %c13
        %275 = math.round %6 : tensor<2xf32>
        %alloc_47 = memref.alloc() : memref<10x10x10xf16>
        memref.tensor_store %40, %alloc_47 : memref<10x10x10xf16>
        %276 = math.exp2 %cst_0 : f16
        %277 = arith.shrui %false_30, %false : i1
        %278 = math.exp2 %15 : tensor<5xf16>
        %279 = arith.maxf %cst, %cst_2 : f16
        %alloc_48 = memref.alloc() : memref<5xi1>
        memref.tensor_store %14, %alloc_48 : memref<5xi1>
        %280 = math.atan2 %collapsed, %collapsed : tensor<100x10xf16>
        %281 = arith.shrsi %in, %in : i64
        %alloc_49 = memref.alloc() : memref<10x10xf16>
        %282 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_49, %4, %13 : memref<10x10xf16>, tensor<10xf16>, tensor<10x10x10xf16>) outs(%13 : tensor<10x10x10xf16>) {
        ^bb0(%in_51: f16, %in_52: f16, %in_53: f16, %out: f16):
          %292 = affine.min affine_map<(d0) -> (-(d0 ceildiv 4 + 2), d0 ceildiv 4 - (d0 ceildiv 4 + 1), (d0 ceildiv 4 + 1) floordiv 2)>(%94)
          %293 = vector.create_mask %97 : vector<10xi1>
          %294 = math.atan2 %6, %6 : tensor<2xf32>
          %295 = vector.transpose %82, [0] : vector<10xf16> to vector<10xf16>
          %296 = math.fma %cst_21, %cst_21, %cst_21 : f32
          %297 = math.atan2 %15, %15 : tensor<5xf16>
          %298 = math.round %out : f16
          %299 = vector.create_mask %c14 : vector<10xi1>
          %300 = vector.broadcast %false : i1 to vector<10x10xi1>
          %dest_54, %accumulated_value_55 = vector.scan <maxsi>, %84, %300 {inclusive = true, reduction_dim = 0 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
          %301 = bufferization.clone %alloc_9 : memref<10x10x10xi64> to memref<10x10x10xi64>
          %302 = math.absi %35 : i1
          %303 = math.fma %7, %7, %7 : tensor<10xf32>
          %304 = vector.reduction <mul>, %79 : vector<10xf16> into f16
          %collapsed_56 = tensor.collapse_shape %168 [[0, 1]] : tensor<100x5xf16> into tensor<500xf16>
          %305 = math.roundeven %6 : tensor<2xf32>
          %306 = arith.divui %false, %false : i1
          affine.store %cst_2, %alloc_20[%c6] : memref<5xf16>
          %307 = math.fma %in_52, %in_53, %cst_0 : f16
          %308 = vector.transpose %64, [0] : vector<2xi1> to vector<2xi1>
          %309 = index.sizeof
          %310 = arith.maxf %out, %out : f16
          %311 = index.divs %25, %c9
          %312 = affine.min affine_map<(d0) -> (d0)>(%c10)
          %313 = math.floor %11 : tensor<5xf32>
          %314 = math.cos %cst_1 : f16
          %315 = math.log %7 : tensor<10xf32>
          %316 = vector.broadcast %in_51 : f16 to vector<10x10x10xf16>
          %317 = arith.ori %c1199528644_i64, %c1199528644_i64 : i64
          %318 = index.ceildivs %c0, %c4
          %319 = math.fma %6, %6, %6 : tensor<2xf32>
          %320 = index.maxu %27, %c13
          %321 = index.divs %c5, %94
          linalg.yield %cst : f16
        } -> tensor<10x10x10xf16>
        %283 = math.cos %15 : tensor<5xf16>
        %284 = arith.andi %c401653752_i32, %c404776214_i32 : i32
        %285 = index.sub %25, %c12
        %286 = vector.broadcast %false_3 : i1 to vector<10x10x10xi1>
        %287 = index.casts %132 : index to i32
        %cast_50 = tensor.cast %15 : tensor<5xf16> to tensor<?xf16>
        %288 = vector.broadcast %c1343683170_i32 : i32 to vector<5xi32>
        %289 = arith.remf %cst_0, %cst_1 : f16
        %290 = math.log10 %collapsed : tensor<100x10xf16>
        %291 = index.sizeof
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %180 = arith.divf %cst_1, %cst_2 : f16
    %from_elements_31 = tensor.from_elements %false_30, %35, %false_3, %false_4, %false_4, %false_30, %false_30, %35, %true, %true : tensor<10xi1>
    %181 = affine.min affine_map<(d0, d1, d2, d3) -> (d2 floordiv 128, d0 ceildiv 8, d1)>(%148, %c10, %94, %171)
    %182 = vector.shuffle %129, %101 [0, 1, 2, 3, 4, 7, 9, 12, 14, 15, 16, 17] : vector<10xi16>, vector<10xi16>
    %183 = vector.reduction <minsi>, %65 : vector<2xi32> into i32
    %184 = math.atan2 %7, %7 : tensor<10xf32>
    %185 = math.floor %6 : tensor<2xf32>
    %186 = index.castu %c401653752_i32 : i32 to index
    %187 = vector.broadcast %35 : i1 to vector<10x10xi1>
    %dest_32, %accumulated_value_33 = vector.scan <xor>, %37, %187 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
    %188 = arith.shrsi %false_30, %true : i1
    %189 = arith.minsi %35, %true : i1
    %190 = math.floor %cst_5 : f16
    %191 = arith.andi %c1343683170_i32, %c401653752_i32 : i32
    %192 = arith.minsi %false, %false_3 : i1
    %193 = vector.broadcast %c1199528644_i64 : i64 to vector<5xi64>
    %194 = vector.maskedload %alloc_9[%c2, %c8, %c7], %21, %193 : memref<10x10x10xi64>, vector<5xi1>, vector<5xi64> into vector<5xi64>
    %195 = arith.remsi %c404776214_i32, %c1343683170_i32 : i32
    %196 = math.round %11 : tensor<5xf32>
    %197 = scf.index_switch %c12 -> i16 
    case 1 {
      %261 = index.divu %c14, %25
      %262 = affine.min affine_map<(d0, d1, d2) -> ((d1 ceildiv 128) * 2 + 8, (d1 ceildiv 128) * 2 + 8, d2 + 32)>(%27, %61, %c3)
      %263 = arith.ori %c1491804838_i64, %c1199528644_i64 : i64
      %264 = vector.broadcast %c401653752_i32 : i32 to vector<5xi32>
      %265 = arith.shrui %c540967278_i64, %c1491804838_i64 : i64
      %266 = bufferization.to_memref %13 : memref<10x10x10xf16>
      %267 = math.tanh %11 : tensor<5xf32>
      %268 = arith.ori %c-3927_i16, %c-3927_i16 : i16
      %269 = arith.maxsi %false_4, %false : i1
      %270 = arith.divf %cst_0, %cst_2 : f16
      %271 = vector.reduction <add>, %166 : vector<2xi1> into i1
      %272 = index.floordivs %c15, %71
      %273 = math.log1p %11 : tensor<5xf32>
      %expanded_47 = tensor.expand_shape %117 [[0], [1, 2]] : tensor<100x5xf16> into tensor<100x5x1xf16>
      bufferization.dealloc_tensor %from_elements_24 : tensor<5xi64>
      %generated_48 = tensor.generate %171 {
      ^bb0(%arg0: index):
        %274 = math.absf %7 : tensor<10xf32>
        memref.store %c-3927_i16, %68[%c2] : memref<5xi16>
        %275 = math.atan2 %cst, %cst_2 : f16
        %276 = arith.cmpf ult, %cst_1, %cst_1 : f16
        tensor.yield %c404776214_i32 : i32
      } : tensor<?xi32>
      scf.yield %c-3927_i16 : i16
    }
    case 2 {
      %261 = math.log %117 : tensor<100x5xf16>
      %262 = bufferization.to_memref %10 : memref<5xi64>
      %263 = index.maxu %48, %71
      %264 = index.add %145, %158
      scf.execute_region {
        %274 = vector.insertelement %cst_2, %79[%78 : index] : vector<10xf16>
        %275 = math.expm1 %6 : tensor<2xf32>
        %276 = arith.maxf %cst_1, %cst_1 : f16
        %277 = index.mul %158, %110
        %278 = arith.minsi %c1491804838_i64, %c540967278_i64 : i64
        %279 = bufferization.clone %alloc_13 : memref<2xf16> to memref<2xf16>
        %280 = arith.andi %c-3927_i16, %c-3927_i16 : i16
        %281 = arith.minui %false_3, %false_3 : i1
        %282 = math.fma %11, %11, %5 : tensor<5xf32>
        %283 = bufferization.clone %alloc_11 : memref<10xi32> to memref<10xi32>
        %284 = math.atan2 %15, %15 : tensor<5xf16>
        %285 = math.absf %168 : tensor<100x5xf16>
        %286 = vector.broadcast %c1343683170_i32 : i32 to vector<10xi32>
        %287 = vector.create_mask %c0 : vector<2xi1>
        %288 = arith.divui %c1199528644_i64, %c1199528644_i64 : i64
        %289 = arith.minf %cst_1, %cst : f16
        scf.yield
      }
      scf.execute_region {
        %from_elements_47 = tensor.from_elements %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16 : tensor<10x10x10xi16>
        %274 = arith.maxui %false_30, %false_4 : i1
        memref.assume_alignment %alloc_14, 2 : memref<2xi64>
        %275 = arith.divui %c1491804838_i64, %c1491804838_i64 : i64
        %276 = bufferization.to_memref %12 : memref<2xi64>
        %277 = index.ceildivs %c10, %c2
        %278 = arith.maxui %c1199528644_i64, %c1491804838_i64 : i64
        %279 = affine.max affine_map<(d0, d1, d2, d3) -> (((d2 - 2) ceildiv 64) mod 4, d1 mod 4, (d2 - 2) ceildiv 64)>(%c12, %c13, %c5, %c9)
        %280 = index.ceildivs %c3, %c6
        %281 = vector.broadcast %c1199528644_i64 : i64 to vector<10x10xi64>
        %dest_48, %accumulated_value_49 = vector.scan <and>, %111, %281 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10x10xi64>, vector<10x10xi64>
        %282 = arith.divui %c1199528644_i64, %c1491804838_i64 : i64
        %283 = index.maxs %48, %186
        %284 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%c1, %264, %148)
        %285 = arith.remf %cst_21, %cst_21 : f32
        %286 = affine.max affine_map<(d0) -> (((d0 * 2) ceildiv 32) mod 64, (d0 * 2) ceildiv 32)>(%c1)
        %287 = math.log10 %6 : tensor<2xf32>
        scf.yield
      }
      %265 = vector.maskedload %alloc_19[%c8], %160, %166 : memref<10xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
      %266 = arith.divsi %c1343683170_i32, %c404776214_i32 : i32
      %267 = vector.shuffle %65, %63 [2, 3] : vector<2xi32>, vector<2xi32>
      %268 = arith.remsi %c540967278_i64, %c540967278_i64 : i64
      vector.print %82 : vector<10xf16>
      %269 = arith.shli %c1199528644_i64, %c540967278_i64 : i64
      %270 = arith.muli %true, %false_3 : i1
      %271 = vector.broadcast %c13 : index to vector<2xindex>
      vector.scatter %alloc_19[%c2] [%271], %265, %166 : memref<10xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
      %272 = math.floor %19 : tensor<f32>
      %273 = index.castu %c540967278_i64 : i64 to index
      scf.yield %c-3927_i16 : i16
    }
    case 3 {
      %261 = memref.load %50[%c1] : memref<10xi1>
      %262 = bufferization.to_memref %15 : memref<5xf16>
      %263 = arith.shli %c1199528644_i64, %c1199528644_i64 : i64
      %264 = tensor.empty(%25) : tensor<?xf16>
      %265 = arith.maxf %cst_0, %cst_2 : f16
      %generated_47 = tensor.generate %94 {
      ^bb0(%arg0: index):
        %276 = arith.maxui %c401653752_i32, %c401653752_i32 : i32
        %277 = math.tanh %4 : tensor<10xf16>
        %278 = index.castu %48 : index to i32
        %279 = arith.muli %false_4, %false_3 : i1
        tensor.yield %cst_21 : f32
      } : tensor<?xf32>
      %266 = vector.shuffle %194, %193 [0, 2, 4, 6, 7, 9] : vector<5xi64>, vector<5xi64>
      %267 = vector.broadcast %false : i1 to vector<2x2xi1>
      %268 = vector.outerproduct %160, %160, %267 {kind = #vector.kind<minui>} : vector<2xi1>, vector<2xi1>
      %269 = index.sizeof
      affine.store %cst, %262[%c10] : memref<5xf16>
      %270 = index.ceildivs %110, %c10
      %271 = bufferization.to_memref %2 : memref<10xi64>
      %272 = memref.load %136[%c9, %c2, %c2] : memref<10x10x10xi1>
      %273 = arith.subi %c404776214_i32, %c401653752_i32 : i32
      %274 = arith.andi %false_30, %false_4 : i1
      %alloc_48 = memref.alloc() : memref<10x10xf16>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_48, %40 : memref<10x10xf16>, tensor<10x10x10xf16>) outs(%13 : tensor<10x10x10xf16>) {
      ^bb0(%in: f16, %in_49: f16, %out: f16):
        %276 = index.mul %31, %94
        %277 = arith.shrsi %false, %false_3 : i1
        %278 = vector.broadcast %c5 : index to vector<5xindex>
        %279 = vector.broadcast %c401653752_i32 : i32 to vector<5xi32>
        vector.scatter %alloc_11[%c6] [%278], %21, %279 : memref<10xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
        %280 = arith.remsi %c404776214_i32, %c1343683170_i32 : i32
        %281 = arith.remf %cst, %cst_2 : f16
        %282 = vector.broadcast %cst_21 : f32 to vector<10xf32>
        %283 = vector.fma %282, %282, %282 : vector<10xf32>
        %rank = tensor.rank %0 : tensor<10x10x10xi1>
        %expanded_50 = tensor.expand_shape %7 [[0, 1]] : tensor<10xf32> into tensor<10x1xf32>
        %284 = arith.ori %c540967278_i64, %c540967278_i64 : i64
        %285 = index.add %276, %c11
        %286 = arith.subi %c1491804838_i64, %c1199528644_i64 : i64
        %287 = math.log1p %15 : tensor<5xf16>
        %288 = arith.ceildivsi %c404776214_i32, %c401653752_i32 : i32
        %289 = arith.ceildivsi %true, %false_3 : i1
        %290 = vector.reduction <add>, %194 : vector<5xi64> into i64
        %291 = math.atan2 %172, %172 : tensor<100x2xf16>
        %292 = arith.addf %cst_2, %in : f16
        %293 = vector.broadcast %35 : i1 to vector<10x10xi1>
        %dest_51, %accumulated_value_52 = vector.scan <minsi>, %84, %293 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
        %294 = arith.minsi %c404776214_i32, %c1343683170_i32 : i32
        memref.copy %alloc_9, %alloc_16 : memref<10x10x10xi64> to memref<10x10x10xi64>
        %295 = math.cos %172 : tensor<100x2xf16>
        %296 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, -((d0 floordiv 128) mod 16) - d0, -((d0 floordiv 128) mod 16) - d0)>(%158, %c8, %285, %c5)
        %297 = math.powf %expanded_50, %expanded_50 : tensor<10x1xf32>
        %298 = arith.shrsi %35, %false_4 : i1
        memref.store %in, %alloc_18[%c0] : memref<2xf16>
        %299 = affine.max affine_map<(d0, d1, d2) -> (-2, -(d1 - 4), d1 + d2 ceildiv 128, -(d1 - 4))>(%171, %c15, %c7)
        %300 = arith.remui %true, %false_4 : i1
        %301 = math.tanh %40 : tensor<10x10x10xf16>
        %302 = arith.negf %cst_0 : f16
        %alloca_53 = memref.alloca() : memref<10xf16>
        %alloc_54 = memref.alloc() : memref<1x5xi16>
        %303 = tensor.empty() : tensor<10x5xi16>
        %304 = linalg.matmul ins(%expanded, %alloc_54 : tensor<10x1xi16>, memref<1x5xi16>) outs(%303 : tensor<10x5xi16>) -> tensor<10x5xi16>
        %305 = arith.muli %35, %35 : i1
        linalg.yield %cst_0 : f16
      } -> tensor<10x10x10xf16>
      scf.yield %c-3927_i16 : i16
    }
    default {
      %261 = vector.extract %160[1] : vector<2xi1>
      %262 = arith.shrsi %c-3927_i16, %c-3927_i16 : i16
      %263 = math.floor %reduced : tensor<f32>
      %264 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%97, %90, %c13)
      %265 = arith.ori %c540967278_i64, %c1199528644_i64 : i64
      %266 = arith.cmpf ogt, %cst, %cst_1 : f16
      %267 = arith.shli %true, %35 : i1
      memref.tensor_store %119, %50 : memref<10xi1>
      %268 = arith.negf %cst_21 : f32
      %false_47 = arith.constant false
      %269 = vector.transfer_read %0[%c12, %90, %c4], %false_47 : tensor<10x10x10xi1>, vector<i1>
      %270 = vector.broadcast %false_4 : i1 to vector<2x2xi1>
      %271 = vector.outerproduct %64, %160, %270 {kind = #vector.kind<maxui>} : vector<2xi1>, vector<2xi1>
      %272 = index.sizeof
      %inserted_48 = tensor.insert %c-3927_i16 into %8[%c0] : tensor<10xi16>
      %273 = arith.shrsi %false_47, %false_30 : i1
      %expanded_49 = tensor.expand_shape %119 [[0, 1]] : tensor<10xi1> into tensor<10x1xi1>
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2, d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0, %0, %1 : tensor<10x10x10xi1>, tensor<10x10x10xi1>, tensor<10x10x10xi1>) outs(%1 : tensor<10x10x10xi1>) {
      ^bb0(%in: i1, %in_50: i1, %in_51: i1, %out: i1):
        %from_elements_52 = tensor.from_elements %c1491804838_i64, %c540967278_i64 : tensor<2xi64>
        memref.store %c1343683170_i32, %alloc_17[%c3] : memref<5xi32>
        %275 = math.log %6 : tensor<2xf32>
        %276 = math.roundeven %7 : tensor<10xf32>
        %277 = arith.minui %false_47, %out : i1
        memref.assume_alignment %alloc_19, 1 : memref<10xi1>
        affine.store %false_30, %136[%c1, %c12, %c15] : memref<10x10x10xi1>
        %expanded_53 = tensor.expand_shape %4 [[0, 1]] : tensor<10xf16> into tensor<10x1xf16>
        %278 = bufferization.to_memref %23 : memref<i16>
        %279 = math.roundeven %15 : tensor<5xf16>
        %280 = arith.maxui %false_47, %false_4 : i1
        %281 = math.exp2 %117 : tensor<100x5xf16>
        %282 = vector.create_mask %c5 : vector<10xi1>
        %283 = arith.divf %cst_1, %cst_1 : f16
        %284 = index.maxs %78, %c0
        %285 = index.add %157, %c13
        %286 = vector.extract %129[7] : vector<10xi16>
        memref.copy %26, %alloc_17 : memref<5xi32> to memref<5xi32>
        %287 = arith.remsi %in_50, %in : i1
        %from_elements_54 = tensor.from_elements %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32 : tensor<10xi32>
        %288 = arith.maxf %cst_2, %cst_5 : f16
        %289 = bufferization.to_memref %3 : memref<2xi16>
        %290 = index.sizeof
        %291 = math.log %117 : tensor<100x5xf16>
        %292 = bufferization.clone %alloc_11 : memref<10xi32> to memref<10xi32>
        %293 = index.add %42, %c6
        %294 = vector.broadcast %false_4 : i1 to vector<10x10xi1>
        %dest_55, %accumulated_value_56 = vector.scan <minui>, %37, %294 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
        memref.store %c1491804838_i64, %alloc_16[%c1, %c8, %c3] : memref<10x10x10xi64>
        %from_elements_57 = tensor.from_elements %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16 : tensor<10x10x10xi16>
        %295 = vector.create_mask %c0 : vector<10xi1>
        %296 = math.absf %7 : tensor<10xf32>
        %297 = memref.realloc %292 : memref<10xi32> to memref<10xi32>
        linalg.yield %false_4 : i1
      } -> tensor<10x10x10xi1>
      scf.yield %c-3927_i16 : i16
    }
    %198 = arith.floordivsi %35, %false_30 : i1
    %199 = arith.remf %cst_21, %cst_21 : f32
    %200 = vector.insertelement %cst_2, %82[%94 : index] : vector<10xf16>
    %201 = arith.minsi %false_3, %true : i1
    %generated_34 = tensor.generate %c8 {
    ^bb0(%arg0: index):
      %261 = scf.while (%arg1 = %21) : (vector<5xi1>) -> vector<5xi1> {
        %264 = math.atan2 %7, %7 : tensor<10xf32>
        %265 = math.rsqrt %19 : tensor<f32>
        %266 = math.atan2 %15, %15 : tensor<5xf16>
        %267 = arith.remui %c1343683170_i32, %c1343683170_i32 : i32
        %268 = math.absf %7 : tensor<10xf32>
        %269 = math.log %6 : tensor<2xf32>
        %270 = math.roundeven %cst_2 : f16
        %expanded_47 = tensor.expand_shape %3 [[0, 1]] : tensor<2xi16> into tensor<2x1xi16>
        scf.condition(%35) %21 : vector<5xi1>
      } do {
      ^bb0(%arg1: vector<5xi1>):
        %264 = math.absi %false_3 : i1
        %265 = index.ceildivs %c10, %arg0
        %266 = arith.shli %c1491804838_i64, %c540967278_i64 : i64
        %267 = arith.divf %cst_1, %cst_2 : f16
        %268 = vector.broadcast %c1491804838_i64 : i64 to vector<5x5xi64>
        %269 = vector.outerproduct %193, %193, %268 {kind = #vector.kind<add>} : vector<5xi64>, vector<5xi64>
        %270 = arith.muli %c404776214_i32, %c404776214_i32 : i32
        %271 = math.atan2 %7, %7 : tensor<10xf32>
        affine.store %cst_21, %alloc_7[%c5] : memref<2xf32>
        %272 = arith.shrsi %false, %false_4 : i1
        %cast_47 = tensor.cast %172 : tensor<100x2xf16> to tensor<?x?xf16>
        %273 = bufferization.clone %50 : memref<10xi1> to memref<10xi1>
        %from_elements_48 = tensor.from_elements %cst_1, %cst_2, %cst, %cst, %cst, %cst_2, %cst_5, %cst_5, %cst_0, %cst_1 : tensor<10xf16>
        %274 = arith.muli %true, %false_3 : i1
        %275 = vector.flat_transpose %194 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
        %276 = vector.broadcast %27 : index to vector<5xindex>
        vector.scatter %128[%c9] [%276], %175, %175 : memref<10xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
        %277 = index.ceildivs %265, %arg0
        scf.yield %21 : vector<5xi1>
      }
      %262 = arith.shrsi %35, %false_3 : i1
      bufferization.dealloc_tensor %reduced : tensor<f32>
      %263 = math.rsqrt %cst_21 : f32
      tensor.yield %false_4 : i1
    } : tensor<?xi1>
    %202 = math.floor %16 : tensor<10xf16>
    %from_elements_35 = tensor.from_elements %c1491804838_i64, %c1199528644_i64 : tensor<2xi64>
    %203 = vector.broadcast %false_3 : i1 to vector<10x10xi1>
    %dest_36, %accumulated_value_37 = vector.scan <add>, %37, %203 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
    vector.print %21 : vector<5xi1>
    %204 = math.absf %11 : tensor<5xf32>
    %205 = vector.bitcast %84 : vector<10x10x10xi1> to vector<10x10x10xi1>
    %206 = index.maxu %c14, %78
    %207 = arith.shli %false_3, %false_4 : i1
    %208 = arith.shrui %c540967278_i64, %c540967278_i64 : i64
    %209 = bufferization.clone %128 : memref<10xi1> to memref<10xi1>
    %210 = index.divs %76, %97
    %211 = arith.cmpi ule, %false, %false_30 : i1
    %212 = math.ctlz %9 : tensor<5xi1>
    %213 = arith.subi %c540967278_i64, %c1491804838_i64 : i64
    %214 = arith.minf %cst_0, %cst : f16
    %215 = arith.minsi %false, %35 : i1
    %alloca = memref.alloca() : memref<10x10x10xi16>
    %216 = tensor.empty() : tensor<2xi16>
    %217 = arith.shli %false, %false_4 : i1
    %218 = vector.insertelement %cst_2, %82[%c6 : index] : vector<10xf16>
    %219 = math.cos %15 : tensor<5xf16>
    %generated_38 = tensor.generate %171 {
    ^bb0(%arg0: index):
      %261 = arith.remui %c404776214_i32, %c1343683170_i32 : i32
      %262 = index.divs %c15, %55
      %263 = vector.insertelement %true, %160[%25 : index] : vector<2xi1>
      %generated_47 = tensor.generate %171 {
      ^bb0(%arg1: index):
        %264 = tensor.empty() : tensor<2xi64>
        %265 = math.round %19 : tensor<f32>
        %266 = vector.insert %false_30, %175 [1] : i1 into vector<5xi1>
        %267 = arith.muli %c1491804838_i64, %c540967278_i64 : i64
        tensor.yield %c1343683170_i32 : i32
      } : tensor<?xi32>
      tensor.yield %c-3927_i16 : i16
    } : tensor<?xi16>
    %220 = arith.ori %false, %35 : i1
    %221 = math.ctlz %103 : tensor<10x10x10xi1>
    %222 = math.tanh %4 : tensor<10xf16>
    %223 = math.ctlz %from_elements_35 : tensor<2xi64>
    %224 = arith.divf %cst_5, %cst : f16
    %225 = arith.ceildivsi %false_4, %35 : i1
    %226 = index.ceildivs %78, %c5
    %227 = vector.flat_transpose %80 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
    %228 = scf.execute_region -> tensor<5xf16> {
      %261 = bufferization.to_memref %11 : memref<5xf32>
      %262 = affine.max affine_map<(d0, d1, d2, d3) -> (d1 - (d3 mod 32) floordiv 4, d3, d3 - d1)>(%c5, %c6, %210, %145)
      %263 = affine.min affine_map<(d0) -> (d0 floordiv 128 - (d0 floordiv 128) ceildiv 2, d0 floordiv 128, (-(d0 - 16) - 16) * 32)>(%186)
      %264 = vector.insertelement %c-3927_i16, %129[%94 : index] : vector<10xi16>
      %265 = vector.broadcast %false : i1 to vector<10x10x10xi1>
      %266 = index.castu %c4 : index to i32
      %267 = vector.broadcast %c1199528644_i64 : i64 to vector<10x10xi64>
      %dest_47, %accumulated_value_48 = vector.scan <mul>, %111, %267 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10x10xi64>, vector<10x10xi64>
      %268 = vector.load %alloc_19[%c4] : memref<10xi1>, vector<10x10x10xi1>
      %269 = vector.broadcast %cst_21 : f32 to vector<f32>
      %270 = vector.transfer_write %269, %11[%c15] : vector<f32>, tensor<5xf32>
      memref.store %true, %50[%c5] : memref<10xi1>
      %271 = scf.execute_region -> i1 {
        %277 = arith.divui %c-3927_i16, %c-3927_i16 : i16
        %278 = affine.max affine_map<(d0, d1) -> (d0 + d1 - d0 + 32, d0, d0 + d1 - 60, (d0 + d1) ceildiv 4)>(%c10, %206)
        %279 = vector.broadcast %false_3 : i1 to vector<10x10xi1>
        %280 = vector.insert %279, %268 [1] : vector<10x10xi1> into vector<10x10x10xi1>
        memref.store %c1343683170_i32, %alloc[%c0, %c7, %c6] : memref<10x10x10xi32>
        %281 = math.round %cst_5 : f16
        %282 = bufferization.to_memref %1 : memref<10x10x10xi1>
        %283 = vector.broadcast %cst_21 : f32 to vector<10xf32>
        %284 = vector.fma %283, %283, %283 : vector<10xf32>
        memref.assume_alignment %alloc_7, 2 : memref<2xf32>
        %285 = memref.realloc %261 : memref<5xf32> to memref<2xf32>
        %286 = arith.remsi %c401653752_i32, %c401653752_i32 : i32
        %287 = vector.reduction <minf>, %284 : vector<10xf32> into f32
        %288 = index.maxu %97, %226
        %from_elements_49 = tensor.from_elements %cst_0, %cst_0, %cst_2, %cst_1, %cst_2, %cst_5, %cst_5, %cst_5, %cst, %cst_0, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst_2, %cst_5, %cst_1, %cst_0, %cst_2, %cst_0, %cst_1, %cst_0, %cst_5, %cst, %cst_2, %cst_0, %cst, %cst_1, %cst_2, %cst, %cst_2, %cst_0, %cst_5, %cst_1, %cst_0, %cst, %cst_5, %cst_1, %cst_2, %cst_1, %cst_1, %cst_5, %cst_5, %cst, %cst_2, %cst_5, %cst, %cst_0, %cst_0, %cst, %cst_1, %cst_5, %cst_1, %cst_2, %cst_1, %cst_0, %cst_1, %cst, %cst_2, %cst_5, %cst_0, %cst_2, %cst, %cst_0, %cst_1, %cst, %cst_1, %cst_2, %cst_5, %cst_0, %cst_2, %cst, %cst_2, %cst_1, %cst, %cst, %cst, %cst_1, %cst, %cst_2, %cst_2, %cst_5, %cst_5, %cst_0, %cst_5, %cst, %cst_2, %cst, %cst, %cst_2, %cst, %cst_5, %cst_5, %cst_5, %cst_2, %cst_0, %cst_2, %cst_5, %cst_2, %cst_0, %cst_2, %cst, %cst_2, %cst, %cst_5, %cst_2, %cst_2, %cst_1, %cst_2, %cst_5, %cst_5, %cst_5, %cst_0, %cst, %cst_2, %cst_1, %cst_5, %cst, %cst, %cst_5, %cst_0, %cst_1, %cst, %cst, %cst_2, %cst_0, %cst_0, %cst_5, %cst_2, %cst_1, %cst_2, %cst_0, %cst_1, %cst, %cst_1, %cst_5, %cst, %cst_1, %cst, %cst, %cst_2, %cst_2, %cst_0, %cst_2, %cst, %cst, %cst, %cst_1, %cst_0, %cst_5, %cst_5, %cst_2, %cst_0, %cst_0, %cst_5, %cst_2, %cst_1, %cst_0, %cst_5, %cst_5, %cst_5, %cst_5, %cst, %cst, %cst_0, %cst_1, %cst_5, %cst_0, %cst, %cst_0, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst, %cst_2, %cst_0, %cst, %cst, %cst_2, %cst_2, %cst_1, %cst_5, %cst, %cst_5, %cst_1, %cst_0, %cst_5, %cst_0, %cst, %cst_1, %cst_1, %cst_1, %cst_2, %cst_2, %cst_5, %cst_1, %cst, %cst_5, %cst_0, %cst, %cst_2, %cst_5, %cst_0, %cst, %cst_0, %cst_1, %cst_5, %cst_1, %cst, %cst_1, %cst, %cst_5, %cst_1, %cst_0, %cst_2, %cst_1, %cst_5, %cst_2, %cst_0, %cst_0, %cst_2, %cst, %cst_5, %cst_1, %cst_0, %cst, %cst_1, %cst, %cst_5, %cst_2, %cst_2, %cst_5, %cst_0, %cst, %cst_1, %cst_2, %cst_1, %cst_0, %cst_0, %cst_5, %cst_2, %cst_5, %cst_2, %cst_1, %cst_0, %cst_2, %cst_2, %cst, %cst_1, %cst_0, %cst, %cst_5, %cst_0, %cst, %cst_1, %cst_2, %cst_1, %cst_0, %cst_0, %cst, %cst, %cst_5, %cst, %cst_2, %cst_0, %cst, %cst_1, %cst_0, %cst_1, %cst, %cst_1, %cst, %cst_2, %cst_1, %cst_1, %cst_1, %cst_5, %cst, %cst_1, %cst_1, %cst_2, %cst_1, %cst_5, %cst_5, %cst_1, %cst_0, %cst, %cst_2, %cst, %cst, %cst_2, %cst, %cst_0, %cst, %cst_5, %cst_5, %cst_5, %cst, %cst_2, %cst_0, %cst_1, %cst_5, %cst, %cst_2, %cst_5, %cst_5, %cst, %cst, %cst, %cst, %cst, %cst_1, %cst, %cst_2, %cst, %cst_0, %cst_5, %cst_0, %cst_0, %cst, %cst_1, %cst, %cst_5, %cst_0, %cst_2, %cst_5, %cst_5, %cst_1, %cst_2, %cst_2, %cst_1, %cst, %cst, %cst_1, %cst_1, %cst_0, %cst_5, %cst, %cst_0, %cst_0, %cst_5, %cst_5, %cst_1, %cst_2, %cst_0, %cst_0, %cst_2, %cst_1, %cst_5, %cst_5, %cst_5, %cst, %cst_0, %cst_5, %cst, %cst_0, %cst_0, %cst_5, %cst_0, %cst_2, %cst_2, %cst_5, %cst_1, %cst_5, %cst_1, %cst_0, %cst_0, %cst, %cst_0, %cst, %cst, %cst, %cst_2, %cst_1, %cst_0, %cst_2, %cst_2, %cst, %cst_1, %cst_2, %cst_5, %cst_1, %cst_1, %cst_5, %cst_5, %cst_5, %cst_2, %cst, %cst_0, %cst_2, %cst_5, %cst_2, %cst_5, %cst_5, %cst_0, %cst_2, %cst_5, %cst_0, %cst_1, %cst_5, %cst_0, %cst, %cst_1, %cst_1, %cst, %cst, %cst, %cst_0, %cst_5, %cst, %cst_2, %cst_5, %cst_1, %cst_1, %cst, %cst_5, %cst, %cst_1, %cst, %cst_0, %cst_1, %cst_5, %cst, %cst_2, %cst_2, %cst_5, %cst, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst, %cst, %cst_5, %cst_0, %cst_2, %cst_0, %cst_0, %cst_1, %cst_5, %cst_5, %cst_1, %cst_2, %cst_2, %cst_1, %cst_2, %cst, %cst_0, %cst_0, %cst_1, %cst_0, %cst_2, %cst_1, %cst_2, %cst_5, %cst_0, %cst_2, %cst_5, %cst, %cst_2, %cst_5, %cst, %cst_2, %cst_5, %cst_2, %cst_1, %cst, %cst_0, %cst_2, %cst, %cst_0, %cst_1, %cst_5, %cst_0, %cst_0, %cst_5, %cst_1, %cst_0, %cst_5, %cst_0, %cst_2, %cst_5, %cst_0, %cst_5, %cst_5, %cst_1, %cst_2, %cst_2, %cst_1, %cst_1, %cst_2, %cst_0, %cst, %cst_1, %cst_5, %cst_2, %cst_5, %cst, %cst_2, %cst_5, %cst_1, %cst_1, %cst_1, %cst, %cst_0, %cst_2, %cst_5, %cst_1, %cst_1, %cst_2, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_1, %cst, %cst_2, %cst_5, %cst_0, %cst_1, %cst_2, %cst, %cst_2, %cst_5, %cst_2, %cst_2, %cst, %cst_5, %cst_0, %cst, %cst_1, %cst, %cst_5, %cst, %cst_1, %cst, %cst_0, %cst_2, %cst_1, %cst, %cst_5, %cst_5, %cst_0, %cst_2, %cst_0, %cst_2, %cst_5, %cst_5, %cst_5, %cst_1, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_5, %cst_1, %cst_5, %cst, %cst_2, %cst_1, %cst_2, %cst_5, %cst_0, %cst, %cst, %cst_1, %cst_0, %cst_2, %cst_5, %cst, %cst_5, %cst, %cst_2, %cst, %cst_1, %cst_5, %cst, %cst_5, %cst_2, %cst_0, %cst, %cst_2, %cst_1, %cst_2, %cst_5, %cst_2, %cst_2, %cst_1, %cst_0, %cst_2, %cst_2, %cst, %cst, %cst, %cst_2, %cst, %cst_5, %cst_1, %cst_2, %cst_0, %cst_1, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_5, %cst_1, %cst_2, %cst_1, %cst_5, %cst_1, %cst_2, %cst_2, %cst, %cst_2, %cst, %cst_5, %cst_0, %cst_0, %cst_2, %cst_0, %cst_5, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_5, %cst_0, %cst, %cst_0, %cst, %cst, %cst_1, %cst_5, %cst_0, %cst_5, %cst, %cst_1, %cst_2, %cst_2, %cst_0, %cst_0, %cst, %cst_5, %cst_1, %cst_0, %cst_2, %cst_5, %cst, %cst, %cst, %cst_1, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_1, %cst_1, %cst_5, %cst_2, %cst_5, %cst, %cst_0, %cst_2, %cst, %cst, %cst_0, %cst_5, %cst, %cst_0, %cst_0, %cst_5, %cst_0, %cst_2, %cst_1, %cst_5, %cst, %cst_1, %cst_0, %cst_1, %cst_2, %cst, %cst_1, %cst_0, %cst_5, %cst, %cst_0, %cst_1, %cst_5, %cst_0, %cst_0, %cst_5, %cst_1, %cst_2, %cst_1, %cst_0, %cst_0, %cst_1, %cst_2, %cst, %cst_1, %cst_1, %cst_0, %cst_5, %cst, %cst_2, %cst_5, %cst_0, %cst_1, %cst, %cst_0, %cst_1, %cst, %cst_1, %cst_0, %cst_1, %cst, %cst, %cst_0, %cst_5, %cst_0, %cst_1, %cst_2, %cst_0, %cst_1, %cst_5, %cst_1, %cst_0, %cst_5, %cst_5, %cst_1, %cst_2, %cst_2, %cst, %cst, %cst, %cst_0, %cst_0, %cst_5, %cst_5, %cst_5, %cst_1, %cst_0, %cst_1, %cst, %cst_0, %cst_1, %cst_1, %cst_5, %cst_1, %cst_0, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_0, %cst, %cst_5, %cst_0, %cst, %cst_1, %cst_1, %cst_5, %cst_1, %cst_5, %cst_5, %cst, %cst_1, %cst_5, %cst, %cst_5, %cst, %cst_1, %cst_5, %cst_0, %cst_5, %cst_5, %cst_0, %cst_2, %cst, %cst_2, %cst_5, %cst_5, %cst_1, %cst_1, %cst_1, %cst_2, %cst, %cst_0, %cst, %cst_1, %cst_0, %cst, %cst_0, %cst_2, %cst_0, %cst_0, %cst_5, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_5, %cst_1, %cst, %cst_2, %cst_1, %cst_0, %cst, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_0, %cst_1, %cst_1, %cst, %cst_0, %cst_5, %cst_2, %cst, %cst_0, %cst_5, %cst_0, %cst_2, %cst_5, %cst_5, %cst_2, %cst_0, %cst_0, %cst_5, %cst_2, %cst_2, %cst_2, %cst_0, %cst_0, %cst, %cst, %cst_5, %cst_2, %cst, %cst_2, %cst_1, %cst, %cst_5, %cst_1, %cst_0, %cst_1, %cst_1, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_1, %cst_5, %cst_5, %cst_2, %cst_2, %cst_1, %cst, %cst, %cst, %cst_2, %cst_0, %cst_1, %cst_0, %cst_0, %cst_5, %cst, %cst_0, %cst_1, %cst_0, %cst_5, %cst_5, %cst_1, %cst_0, %cst_2, %cst_2, %cst_2, %cst, %cst_5, %cst_0, %cst_2, %cst_5, %cst, %cst_5, %cst_1, %cst_1, %cst_0, %cst_2, %cst_2, %cst_2, %cst, %cst_0, %cst_2, %cst_5, %cst, %cst_0, %cst_0, %cst_0, %cst_5, %cst_0, %cst, %cst_0, %cst_0, %cst_0, %cst_5, %cst_0, %cst_2, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst_0, %cst_1, %cst_1, %cst, %cst_1, %cst_0, %cst, %cst_0, %cst_1, %cst_0, %cst_2, %cst, %cst_0, %cst, %cst_1, %cst_0, %cst_5, %cst_1, %cst_2, %cst_2, %cst_0, %cst_1, %cst_2, %cst_0, %cst_0, %cst_5, %cst_0, %cst, %cst_1, %cst_1, %cst_5, %cst_1, %cst_1, %cst_5, %cst_5, %cst_1, %cst, %cst_5, %cst_1, %cst_0, %cst_5, %cst, %cst_0, %cst_1, %cst_5, %cst_0, %cst_2, %cst_5, %cst_0, %cst, %cst_1, %cst_0, %cst_2, %cst_2, %cst_1, %cst_1, %cst_5, %cst, %cst_1, %cst_2, %cst_5, %cst_1, %cst, %cst_2, %cst, %cst_5, %cst_2, %cst_5, %cst, %cst, %cst_2 : tensor<10x10x10xf16>
        %289 = index.ceildivs %263, %c12
        %290 = math.atan2 %cst_1, %cst : f16
        %291 = math.fma %11, %11, %11 : tensor<5xf32>
        scf.yield %true : i1
      }
      %272 = arith.remui %35, %false_4 : i1
      %273 = tensor.empty() : tensor<5xi64>
      %274 = math.atan2 %7, %7 : tensor<10xf32>
      %275 = arith.shrui %false, %true : i1
      %276 = vector.shuffle %84, %37 [0, 2, 5, 7, 8, 13, 14, 16, 18, 19] : vector<10x10x10xi1>, vector<10x10x10xi1>
      scf.yield %15 : tensor<5xf16>
    }
    %229 = math.absi %18 : tensor<5xi64>
    %cst_39 = arith.constant 1.25332813E+9 : f32
    %230 = math.fma %11, %11, %5 : tensor<5xf32>
    %231 = math.ctlz %0 : tensor<10x10x10xi1>
    %232 = vector.broadcast %157 : index to vector<2xindex>
    %233 = vector.broadcast %c540967278_i64 : i64 to vector<2xi64>
    vector.scatter %alloc_14[%c0] [%232], %166, %233 : memref<2xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
    %234 = arith.cmpi ne, %true, %false_30 : i1
    memref.copy %alloc_16, %alloc_9 : memref<10x10x10xi64> to memref<10x10x10xi64>
    %235 = math.log %19 : tensor<f32>
    %236 = arith.ori %true, %false_30 : i1
    %237 = math.exp %13 : tensor<10x10x10xf16>
    %238 = index.mul %94, %c3
    %239 = math.powf %cst_21, %cst_21 : f32
    %240 = math.roundeven %4 : tensor<10xf16>
    %241 = tensor.empty() : tensor<5xi16>
    %242 = arith.cmpi ule, %true, %false_4 : i1
    %243 = index.ceildivs %78, %61
    %244 = bufferization.clone %26 : memref<5xi32> to memref<5xi32>
    %245 = arith.mulf %cst_2, %cst_1 : f16
    %246 = arith.shli %false, %false_30 : i1
    %from_elements_40 = tensor.from_elements %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16, %c-3927_i16 : tensor<10xi16>
    %247 = math.atan2 %11, %5 : tensor<5xf32>
    %248 = scf.index_switch %31 -> index 
    case 1 {
      %261 = bufferization.to_memref %19 : memref<f32>
      %262 = index.castu %c404776214_i32 : i32 to index
      %263 = arith.floordivsi %false, %35 : i1
      %264 = vector.insertelement %cst, %79[%c13 : index] : vector<10xf16>
      %265 = arith.ori %c401653752_i32, %c1343683170_i32 : i32
      %266 = bufferization.clone %26 : memref<5xi32> to memref<5xi32>
      %267 = math.absi %9 : tensor<5xi1>
      %268 = affine.min affine_map<(d0) -> (-(d0 * 16 + 1) + 1, d0 * 16 + 1, (d0 * 16 + 1) mod 64, -(d0 * 16 + 1))>(%145)
      %269 = scf.execute_region -> vector<10x10x10xf16> {
        %from_elements_47 = tensor.from_elements %false_4, %false_3 : tensor<2xi1>
        affine.store %cst_5, %alloc_13[%c8] : memref<2xf16>
        %277 = math.exp2 %40 : tensor<10x10x10xf16>
        %278 = math.sqrt %40 : tensor<10x10x10xf16>
        %279 = arith.cmpi slt, %c401653752_i32, %c1343683170_i32 : i32
        %280 = math.absi %179 : tensor<10x10x10xi64>
        %281 = vector.reduction <mul>, %227 : vector<10xi1> into i1
        %282 = arith.muli %35, %true : i1
        %283 = arith.shli %35, %false_3 : i1
        %284 = arith.mulf %cst_0, %cst : f16
        %285 = math.round %228 : tensor<5xf16>
        %286 = arith.shrui %false_3, %false : i1
        %287 = math.floor %172 : tensor<100x2xf16>
        %288 = bufferization.to_tensor %178 : memref<10xi16>
        %289 = index.castu %c1199528644_i64 : i64 to index
        %290 = math.cos %cst_1 : f16
        %291 = vector.broadcast %cst_1 : f16 to vector<10x10x10xf16>
        scf.yield %291 : vector<10x10x10xf16>
      }
      %270 = math.log %19 : tensor<f32>
      %271 = affine.max affine_map<(d0) -> ((d0 - 1) floordiv 32 + 32, (((d0 - 1) mod 16) mod 64 + d0 mod 8) * 32, ((d0 - 1) mod 16) mod 64 + d0 mod 8 + 2)>(%c1)
      %272 = index.add %94, %97
      %273 = index.divs %c8, %25
      %274 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%0 : tensor<10x10x10xi1>) {
      ^bb0(%out: i1):
        %277 = math.rsqrt %11 : tensor<5xf32>
        %278 = vector.flat_transpose %194 {columns = 5 : i32, rows = 1 : i32} : vector<5xi64> -> vector<5xi64>
        %279 = index.add %27, %c15
        %alloca_47 = memref.alloca() : memref<5xi1>
        %280 = arith.maxui %true, %false_30 : i1
        %281 = index.sub %90, %c8
        %alloca_48 = memref.alloca() : memref<10xi64>
        %282 = affine.apply affine_map<(d0, d1, d2) -> (0)>(%148, %42, %238)
        %283 = index.maxs %31, %268
        memref.assume_alignment %alloc_10, 8 : memref<5xi64>
        %284 = math.cos %4 : tensor<10xf16>
        %285 = index.ceildivs %181, %145
        %286 = arith.minsi %true, %false_3 : i1
        %alloca_49 = memref.alloca() : memref<10x10x10xf16>
        %287 = arith.shli %false_30, %out : i1
        %288 = math.exp2 %11 : tensor<5xf32>
        %289 = vector.insertelement %35, %80[%71 : index] : vector<10xi1>
        %290 = math.cos %5 : tensor<5xf32>
        %291 = arith.remsi %c1343683170_i32, %c401653752_i32 : i32
        %292 = bufferization.clone %alloc_12 : memref<5xi64> to memref<5xi64>
        %293 = math.cttz %10 : tensor<5xi64>
        bufferization.dealloc_tensor %14 : tensor<5xi1>
        %294 = vector.bitcast %205 : vector<10x10x10xi1> to vector<10x10x10xi1>
        %295 = index.divs %c12, %27
        %collapsed_50 = tensor.collapse_shape %172 [[0, 1]] : tensor<100x2xf16> into tensor<200xf16>
        %296 = index.floordivs %71, %238
        %297 = arith.minsi %c1199528644_i64, %c1199528644_i64 : i64
        %298 = arith.remsi %c-3927_i16, %c-3927_i16 : i16
        %299 = vector.broadcast %295 : index to vector<2xindex>
        vector.scatter %alloc_8[%c3] [%299], %160, %63 : memref<5xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
        %300 = math.absf %collapsed_50 : tensor<200xf16>
        %301 = vector.broadcast %false_3 : i1 to vector<10x10xi1>
        %dest_51, %accumulated_value_52 = vector.scan <minui>, %205, %301 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
        %302 = math.tanh %5 : tensor<5xf32>
        linalg.yield %35 : i1
      } -> tensor<10x10x10xi1>
      %275 = scf.while (%arg0 = %alloc_10) : (memref<5xi64>) -> memref<5xi64> {
        %277 = arith.muli %true, %false : i1
        memref.assume_alignment %alloc_18, 16 : memref<2xf16>
        %278 = vector.transpose %160, [0] : vector<2xi1> to vector<2xi1>
        %279 = bufferization.to_tensor %209 : memref<10xi1>
        %280 = arith.minf %cst_0, %cst : f16
        %281 = bufferization.to_memref %4 : memref<10xf16>
        %282 = index.divs %132, %90
        %from_elements_47 = tensor.from_elements %cst_21, %cst_21, %cst_21, %cst_21, %cst_21 : tensor<5xf32>
        scf.condition(%false_4) %alloc_12 : memref<5xi64>
      } do {
      ^bb0(%arg0: memref<5xi64>):
        %277 = index.ceildivu %c6, %c10
        %278 = affine.max affine_map<(d0) -> (-(d0 ceildiv 32) - 64)>(%90)
        %279 = vector.broadcast %271 : index to vector<2xindex>
        %280 = vector.broadcast %c1199528644_i64 : i64 to vector<2xi64>
        vector.scatter %arg0[%c3] [%279], %166, %280 : memref<5xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
        %281 = index.divs %c4, %c9
        memref.assume_alignment %alloc_20, 16 : memref<5xf16>
        %282 = math.roundeven %40 : tensor<10x10x10xf16>
        %283 = tensor.empty(%206) : tensor<?xi64>
        %284 = vector.create_mask %c11 : vector<2xi1>
        %285 = vector.insert %true, %80 [1] : i1 into vector<10xi1>
        %286 = arith.muli %false_3, %35 : i1
        %287 = math.log1p %168 : tensor<100x5xf16>
        %from_elements_47 = tensor.from_elements %true, %false_30, %false_30, %false_30, %false_4, %false, %true, %false_30, %false, %false : tensor<10xi1>
        affine.store %cst_0, %alloc_20[%c0] : memref<5xf16>
        %288 = bufferization.clone %arg0 : memref<5xi64> to memref<5xi64>
        %289 = vector.reduction <minui>, %166 : vector<2xi1> into i1
        %290 = vector.reduction <minui>, %166 : vector<2xi1> into i1
        scf.yield %arg0 : memref<5xi64>
      }
      %276 = vector.insertelement %true, %80[%c14 : index] : vector<10xi1>
      scf.yield %48 : index
    }
    case 2 {
      %261 = math.round %17 : tensor<10xf16>
      %262 = vector.splat %cst_21 : vector<10xf32>
      %263 = vector.insert %c1199528644_i64, %193 [3] : i64 into vector<5xi64>
      %264 = arith.addf %cst_0, %cst_5 : f16
      %265 = math.fma %117, %117, %168 : tensor<100x5xf16>
      %266 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d0 - (d2 + d3) mod 4) mod 128)>(%c6, %132, %90, %c12)
      %267 = math.copysign %6, %6 : tensor<2xf32>
      %268 = math.log1p %7 : tensor<10xf32>
      %269 = arith.ori %c1199528644_i64, %c540967278_i64 : i64
      %270 = vector.reduction <maxui>, %101 : vector<10xi16> into i16
      %271 = scf.while (%arg0 = %84) : (vector<10x10x10xi1>) -> vector<10x10x10xi1> {
        %274 = arith.remf %cst_21, %cst_21 : f32
        %275 = arith.subi %35, %false : i1
        %276 = index.sizeof
        %alloca_49 = memref.alloca() : memref<10xi64>
        vector.print %111 : vector<10x10x10xi64>
        %277 = vector.transpose %227, [0] : vector<10xi1> to vector<10xi1>
        memref.assume_alignment %244, 8 : memref<5xi32>
        %278 = affine.apply affine_map<(d0) -> ((d0 mod 16) * 2)>(%76)
        scf.condition(%false_3) %84 : vector<10x10x10xi1>
      } do {
      ^bb0(%arg0: vector<10x10x10xi1>):
        %274 = math.expm1 %5 : tensor<5xf32>
        %275 = arith.ceildivsi %c404776214_i32, %c404776214_i32 : i32
        %276 = math.sqrt %6 : tensor<2xf32>
        %277 = vector.shuffle %54, %54 [2, 3, 5, 7, 8] : vector<5xf32>, vector<5xf32>
        %278 = math.roundeven %reduced : tensor<f32>
        %279 = vector.broadcast %cst_21 : f32 to vector<2xf32>
        %280 = vector.maskedload %alloc_7[%c1], %64, %279 : memref<2xf32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
        %281 = arith.andi %false_3, %true : i1
        %282 = index.sub %c15, %266
        %283 = arith.divf %cst_5, %cst_1 : f16
        %284 = vector.extract %175[1] : vector<5xi1>
        %285 = math.cos %17 : tensor<10xf16>
        %286 = math.expm1 %19 : tensor<f32>
        %287 = vector.insertelement %cst_21, %280[%c6 : index] : vector<2xf32>
        %288 = vector.broadcast %false_4 : i1 to vector<10x10xi1>
        %289 = vector.outerproduct %80, %227, %288 {kind = #vector.kind<or>} : vector<10xi1>, vector<10xi1>
        %alloc_49 = memref.alloc() : memref<2x5xf16>
        %290 = tensor.empty() : tensor<100x5xf16>
        %291 = linalg.matmul ins(%172, %alloc_49 : tensor<100x2xf16>, memref<2x5xf16>) outs(%290 : tensor<100x5xf16>) -> tensor<100x5xf16>
        %collapsed_50 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<10x10x10xi1> into tensor<100x10xi1>
        scf.yield %37 : vector<10x10x10xi1>
      }
      %from_elements_47 = tensor.from_elements %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c540967278_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c1491804838_i64, %c1491804838_i64, %c1199528644_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64, %c1491804838_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c540967278_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c1199528644_i64, %c540967278_i64, %c540967278_i64, %c1491804838_i64 : tensor<10x10x10xi64>
      %cast_48 = tensor.cast %12 : tensor<2xi64> to tensor<?xi64>
      %272 = scf.while (%arg0 = %54) : (vector<5xf32>) -> vector<5xf32> {
        %274 = index.ceildivs %110, %148
        %275 = vector.multi_reduction <or>, %140, %140 [] : vector<10xi64> to vector<10xi64>
        %276 = math.tanh %11 : tensor<5xf32>
        %277 = arith.shrsi %c404776214_i32, %c404776214_i32 : i32
        %278 = math.log1p %5 : tensor<5xf32>
        %279 = affine.apply affine_map<(d0, d1, d2) -> ((d1 ceildiv 4) mod 2)>(%55, %90, %55)
        %280 = arith.minsi %c1199528644_i64, %c540967278_i64 : i64
        %expanded_49 = tensor.expand_shape %from_elements_35 [[0, 1]] : tensor<2xi64> into tensor<2x1xi64>
        scf.condition(%true) %54 : vector<5xf32>
      } do {
      ^bb0(%arg0: vector<5xf32>):
        %274 = bufferization.clone %68 : memref<5xi16> to memref<5xi16>
        %275 = tensor.empty() : tensor<2x2xf16>
        %276 = tensor.empty() : tensor<100x2xf16>
        %277 = linalg.matmul ins(%172, %275 : tensor<100x2xf16>, tensor<2x2xf16>) outs(%276 : tensor<100x2xf16>) -> tensor<100x2xf16>
        %alloc_49 = memref.alloc() : memref<f32>
        memref.tensor_store %reduced, %alloc_49 : memref<f32>
        %278 = vector.broadcast %cst_21 : f32 to vector<10xf32>
        %279 = vector.fma %278, %278, %278 : vector<10xf32>
        %280 = arith.minsi %c540967278_i64, %c540967278_i64 : i64
        %281 = vector.multi_reduction <mul>, %227, %false_3 [0] : vector<10xi1> to i1
        %282 = arith.andi %c1343683170_i32, %c401653752_i32 : i32
        %283 = math.expm1 %cst_21 : f32
        memref.tensor_store %241, %68 : memref<5xi16>
        %284 = math.absf %19 : tensor<f32>
        %from_elements_50 = tensor.from_elements %false, %false_3, %35, %false_3, %false, %false_4, %true, %35, %false_3, %false_30, %true, %false_30, %281, %false, %false_4, %281, %35, %true, %false_4, %false_4, %false, %false_30, %false, %false_4, %35, %true, %false, %false_30, %false_3, %false_3, %35, %false_30, %false_4, %35, %false_3, %35, %false, %false_30, %false_4, %false_4, %281, %false, %false_4, %false_30, %false_30, %false_4, %281, %281, %false_4, %false, %true, %false, %35, %false_4, %false, %true, %false, %281, %281, %35, %35, %false_3, %false_30, %false_3, %false_4, %false_4, %35, %35, %35, %false_4, %false_4, %true, %false_30, %281, %281, %281, %false, %35, %281, %false_4, %true, %true, %true, %false_30, %false_3, %35, %35, %false_30, %281, %false_30, %281, %true, %35, %false_3, %false_3, %false_3, %false_4, %false_30, %35, %281, %true, %false_3, %35, %281, %true, %35, %false_4, %false_3, %false_3, %281, %35, %281, %false_3, %false, %false_4, %false, %false_30, %false_4, %false_3, %35, %false_30, %false, %281, %281, %281, %false, %false_3, %false_30, %281, %false, %false, %false_4, %false, %35, %false, %false, %true, %281, %true, %false, %35, %false, %true, %281, %false, %true, %281, %false_4, %false_4, %true, %false_3, %false, %false_4, %false, %35, %false, %false_4, %false_4, %281, %true, %281, %35, %false, %false_4, %35, %281, %281, %35, %false_3, %true, %false_4, %false_4, %35, %true, %false_30, %false_3, %281, %false, %false_3, %false_4, %true, %true, %281, %false, %false, %false, %false_4, %true, %281, %false_3, %281, %35, %281, %35, %true, %false_4, %35, %false, %35, %false_3, %true, %false_3, %281, %35, %35, %false_30, %35, %false_3, %true, %true, %false, %false_4, %281, %false, %281, %false_3, %false, %false_30, %false, %true, %true, %false, %false_30, %false_4, %false_3, %false_4, %false_3, %false, %false, %false_4, %false_30, %false, %35, %35, %false_4, %false_4, %35, %false_30, %false, %false_4, %true, %281, %true, %false, %false_4, %true, %false_30, %false_30, %false_3, %false_30, %false_4, %false_30, %false_30, %35, %false, %false_30, %false_3, %true, %35, %35, %true, %false_30, %false_3, %false_3, %true, %true, %281, %35, %false_30, %false_3, %false_3, %35, %35, %35, %false, %true, %true, %false_4, %281, %35, %true, %false_4, %false, %35, %281, %true, %false_30, %false_4, %false, %false, %true, %35, %35, %true, %true, %true, %false_4, %281, %281, %35, %true, %35, %281, %281, %281, %281, %35, %true, %35, %false_4, %35, %true, %false_30, %false_4, %false, %false_3, %false, %35, %false_4, %false_4, %false_30, %false, %false_3, %false_30, %true, %false_4, %false_4, %false_3, %false_4, %false_3, %false_4, %false, %false_30, %281, %true, %35, %false_3, %35, %true, %false, %35, %281, %false, %281, %true, %false_4, %false, %281, %35, %281, %false_4, %true, %false_30, %false_3, %true, %false_4, %false_4, %281, %35, %false_3, %35, %false_4, %false_4, %35, %281, %false_3, %false_4, %true, %false, %false, %true, %false_3, %35, %281, %35, %false_30, %false_3, %false, %false_30, %281, %false_4, %false, %false_4, %false, %true, %35, %281, %false, %281, %false_4, %true, %false_4, %false_30, %false_3, %true, %true, %false_3, %35, %false_30, %false_30, %false_3, %false, %false_3, %false, %false_4, %true, %35, %35, %false_3, %false, %false_3, %false_30, %false_4, %281, %true, %false_4, %false_30, %false_4, %true, %281, %false, %false_30, %false_3, %true, %false_3, %35, %false_4, %35, %false_3, %false_30, %false_4, %false, %true, %281, %281, %false, %false_3, %35, %281, %false_3, %false, %false_4, %35, %false_3, %true, %false, %false_3, %35, %false_30, %true, %true, %281, %281, %false, %false_4, %false_4, %false_4, %false_3, %281, %281, %true, %false_30, %true, %281, %281, %false_3, %false_30, %false_3, %true, %false_30, %false_30, %false_4, %true, %false_3, %false_30, %false_3, %true, %false, %281, %false_30, %false, %false, %false, %true, %false_4, %true, %true, %35, %true, %true, %false, %false_4, %281, %35, %false_3, %35, %281, %false_4, %false_4, %false, %false_30, %false, %false_4, %false, %false_4, %false, %35, %false_4, %false_30, %false_3, %false_30, %false, %281, %false, %false, %false_30, %true, %35, %35, %false_30, %35, %false_30, %false_30, %false, %false_4, %true, %true, %false_3, %true, %false_4, %false_4, %35, %281, %false, %false_4, %true, %true, %false, %35, %false_30, %false_30, %true, %false, %281, %false, %false_30, %false_4, %35, %true, %false, %35, %true, %false, %false_3, %false_4, %false_4, %false_30, %false, %false_3, %false_30, %false_3, %true, %281, %false_3, %false_30, %false_30, %false_4, %false_3, %true, %false, %false, %false_4, %281, %false_3, %false, %35, %true, %true, %false_30, %false_4, %281, %false_4, %281, %281, %false_30, %false_3, %false, %false_30, %false_4, %false_4, %281, %false_3, %false, %281, %35, %false, %281, %281, %false_3, %false_4, %false_30, %false, %false, %false_30, %false_3, %false_30, %true, %35, %false, %35, %false_4, %false_3, %false, %35, %false_4, %true, %false_30, %281, %false_30, %false, %false_4, %false_4, %false, %281, %281, %false_3, %281, %false_4, %false_30, %true, %false_3, %false, %281, %false_4, %false_30, %true, %35, %true, %35, %false_3, %false_4, %true, %true, %35, %281, %281, %true, %false_3, %false_4, %true, %true, %281, %false_4, %false_4, %false_3, %false, %false_30, %true, %false, %false_30, %35, %false_4, %false, %35, %281, %false_30, %false_3, %35, %281, %false, %281, %35, %false_4, %281, %true, %true, %281, %281, %35, %false_4, %281, %true, %true, %false_30, %false_3, %35, %false, %35, %35, %false_4, %false, %false_4, %35, %false, %false_4, %false_4, %false_4, %false_4, %false, %281, %true, %false_4, %false_4, %false, %false, %false, %281, %false_4, %281, %35, %false_30, %false_30, %false_4, %false_4, %false_4, %false, %false_4, %false_3, %false, %true, %false_3, %35, %281, %true, %false_3, %true, %35, %true, %false_4, %false_30, %281, %35, %true, %false_30, %false_4, %true, %false_4, %false_30, %false, %false, %35, %false_4, %false_4, %false_4, %false_4, %281, %false_4, %true, %false_30, %false, %true, %false_30, %false_3, %281, %281, %false_4, %true, %true, %false_3, %false, %true, %false_3, %true, %false_3, %35, %true, %false_3, %false_30, %false_3, %35, %false_4, %false, %281, %false_3, %true, %35, %false_4, %false, %35, %true, %true, %281, %true, %35, %false, %false_30, %true, %false, %false_4, %281, %false, %35, %false_4, %false_30, %false_30, %false, %35, %false, %281, %false, %false, %true, %true, %false_30, %35, %false_3, %false_4, %false, %false_4, %false_3, %281, %false, %281, %false_3, %false, %false, %false_30, %281, %false_4, %false_3, %35, %false_3, %false_3, %false_4, %281, %false, %false_4, %false_3, %false, %true, %false_3, %35, %281, %false_30, %false, %false_30, %true, %false, %281, %true, %false, %false_3, %false_3, %false_3, %35, %false_4, %true, %false, %false, %false_30, %false, %281, %281, %false_3, %true, %false_4, %false, %false_3, %false_3, %false, %35, %false_30, %false_30, %false_3, %35, %false_30, %true, %281, %35, %false_3, %281, %false_3, %false_3, %35, %false_3, %false, %true, %false_4, %false_3, %35, %281, %false_30, %false, %false_4, %false_3, %false_4, %281, %35, %35, %false, %false_3, %35, %true, %281, %true, %281, %false_30, %false_3, %false_3, %true, %281, %281, %281, %false_30, %false_30, %false_3, %false_30, %281, %true, %35, %false_4, %35, %false, %false, %false_3, %false_3, %35, %true, %281, %281, %false_3, %false_3, %false, %35, %35, %false, %false, %false, %true, %281, %false_30, %281, %false_3, %false_30, %35, %false_3, %false_30, %true, %281, %false_3, %true, %true, %false, %281, %true, %true, %281, %35, %35, %true, %false, %false_30, %false_3, %false_30, %false_30, %false_30, %false_3, %false_30, %281, %false_30, %281, %false_4, %false_4, %true, %false, %false, %281, %false_30, %35, %false, %false, %false, %false_4, %false_4, %false, %false_30, %false_30, %false, %281, %false, %35, %true, %true, %false_30, %false_3, %false_4, %false_4, %false_4, %false_4, %true, %false_30, %false_4, %false_4, %false, %false, %35, %true, %true, %true, %281 : tensor<10x10x10xi1>
        %285 = vector.broadcast %35 : i1 to vector<10x10xi1>
        %dest_51, %accumulated_value_52 = vector.scan <minui>, %84, %285 {inclusive = true, reduction_dim = 1 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
        %286 = vector.broadcast %c540967278_i64 : i64 to vector<10x10xi64>
        %287 = vector.insert %286, %111 [3] : vector<10x10xi64> into vector<10x10x10xi64>
        %288 = bufferization.clone %alloc : memref<10x10x10xi32> to memref<10x10x10xi32>
        %289 = arith.remsi %c-3927_i16, %c-3927_i16 : i16
        %290 = arith.minui %false, %true : i1
        scf.yield %54 : vector<5xf32>
      }
      scf.execute_region {
        %274 = vector.broadcast %false_30 : i1 to vector<10x10xi1>
        %dest_49, %accumulated_value_50 = vector.scan <minui>, %84, %274 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
        %275 = math.rsqrt %11 : tensor<5xf32>
        %276 = index.sub %c13, %31
        memref.copy %26, %alloc_8 : memref<5xi32> to memref<5xi32>
        %277 = math.exp2 %reduced : tensor<f32>
        %278 = bufferization.to_memref %1 : memref<10x10x10xi1>
        %279 = affine.max affine_map<(d0, d1, d2) -> (d2 + d0, d2 * 32 - d0 floordiv 4 - 32, ((d2 + d0) floordiv 2) floordiv 16, (d2 + d0) floordiv 2)>(%97, %276, %186)
        %280 = vector.reduction <minsi>, %63 : vector<2xi32> into i32
        %281 = arith.remui %35, %false_4 : i1
        %282 = arith.divf %cst, %cst_5 : f16
        %283 = math.roundeven %cst_2 : f16
        %284 = math.tanh %collapsed : tensor<100x10xf16>
        %285 = vector.broadcast %c13 : index to vector<2xindex>
        vector.scatter %alloc_6[%c9, %c9, %c3] [%285], %160, %64 : memref<10x10x10xi1>, vector<2xindex>, vector<2xi1>, vector<2xi1>
        %286 = math.sqrt %cst_1 : f16
        %287 = arith.maxui %true, %false_3 : i1
        %288 = arith.shli %c1491804838_i64, %c1199528644_i64 : i64
        scf.yield
      }
      %273 = bufferization.clone %alloc_18 : memref<2xf16> to memref<2xf16>
      scf.yield %132 : index
    }
    case 3 {
      %261 = index.add %97, %148
      %262 = affine.max affine_map<(d0, d1, d2, d3) -> (d1, d3, d1, d3)>(%132, %71, %132, %78)
      %263 = arith.subi %false_4, %35 : i1
      memref.copy %49, %209 : memref<10xi1> to memref<10xi1>
      %264 = index.castu %c1343683170_i32 : i32 to index
      %265 = arith.ceildivsi %c540967278_i64, %c1199528644_i64 : i64
      %266 = math.atan2 %117, %117 : tensor<100x5xf16>
      %267 = math.tanh %13 : tensor<10x10x10xf16>
      %268 = vector.extract %129[6] : vector<10xi16>
      %269 = index.divs %226, %206
      %270 = math.cos %cst_2 : f16
      %271 = arith.divui %false, %35 : i1
      %272 = math.roundeven %6 : tensor<2xf32>
      scf.index_switch %78 
      case 1 {
        %274 = math.sqrt %cst_0 : f16
        %275 = bufferization.to_memref %228 : memref<5xf16>
        %276 = math.log %15 : tensor<5xf16>
        %277 = vector.broadcast %false_30 : i1 to vector<10x10xi1>
        %278 = vector.insert %277, %205 [8] : vector<10x10xi1> into vector<10x10x10xi1>
        %279 = arith.cmpf true, %cst, %cst_5 : f16
        %280 = vector.flat_transpose %79 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
        %281 = vector.reduction <add>, %166 : vector<2xi1> into i1
        %282 = math.rsqrt %19 : tensor<f32>
        %283 = vector.transpose %101, [0] : vector<10xi16> to vector<10xi16>
        %284 = vector.broadcast %c1199528644_i64 : i64 to vector<10x10x10xi64>
        %285 = arith.divui %c1343683170_i32, %c1343683170_i32 : i32
        %alloc_48 = memref.alloc() : memref<5x2xf16>
        %286 = tensor.empty() : tensor<100x2xf16>
        %287 = linalg.matmul ins(%168, %alloc_48 : tensor<100x5xf16>, memref<5x2xf16>) outs(%286 : tensor<100x2xf16>) -> tensor<100x2xf16>
        %288 = vector.reduction <add>, %53 : vector<5xf32> into f32
        %289 = affine.max affine_map<(d0, d1, d2, d3) -> ((d2 - d1 - d2 + 1) mod 32, d2 - d1 - d2 - 16, d2)>(%269, %c9, %c12, %c8)
        %290 = math.exp2 %5 : tensor<5xf32>
        %291 = vector.create_mask %c7, %262, %48 : vector<10x10x10xi1>
        scf.yield
      }
      case 2 {
        %274 = math.fma %6, %6, %6 : tensor<2xf32>
        %275 = arith.divui %c1491804838_i64, %c1199528644_i64 : i64
        %276 = arith.divsi %false_3, %false : i1
        %from_elements_48 = tensor.from_elements %false, %35, %false_30, %true, %35 : tensor<5xi1>
        %277 = math.log1p %4 : tensor<10xf16>
        %278 = math.powf %reduced, %reduced : tensor<f32>
        %279 = math.sqrt %40 : tensor<10x10x10xf16>
        %280 = arith.shrui %35, %35 : i1
        %281 = arith.muli %c1491804838_i64, %c1199528644_i64 : i64
        memref.copy %136, %alloc_6 : memref<10x10x10xi1> to memref<10x10x10xi1>
        %282 = vector.insertelement %35, %227[%27 : index] : vector<10xi1>
        %collapsed_49 = tensor.collapse_shape %from_elements [[0, 1], [2]] : tensor<10x10x10xi64> into tensor<100x10xi64>
        %283 = arith.cmpi sle, %c1343683170_i32, %c1343683170_i32 : i32
        %284 = arith.divf %cst_2, %cst_2 : f16
        %285 = arith.divf %cst_21, %cst_21 : f32
        %286 = vector.broadcast %35 : i1 to vector<5x5xi1>
        %287 = vector.outerproduct %21, %175, %286 {kind = #vector.kind<minsi>} : vector<5xi1>, vector<5xi1>
        scf.yield
      }
      default {
        %274 = arith.divui %false_3, %false_4 : i1
        %275 = affine.load %49[%c13] : memref<10xi1>
        %276 = memref.realloc %alloc_20 : memref<5xf16> to memref<5xf16>
        %277 = vector.insertelement %false_4, %21[%181 : index] : vector<5xi1>
        %278 = arith.maxsi %false_4, %true : i1
        %279 = vector.extract %111[3] : vector<10x10x10xi64>
        %280 = math.cos %117 : tensor<100x5xf16>
        %281 = vector.create_mask %c4 : vector<10xi1>
        %282 = affine.max affine_map<(d0, d1) -> (-(d0 floordiv 128), d0)>(%145, %243)
        %283 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %54, %54, %cst_21 : vector<5xf32>, vector<5xf32> into f32
        memref.assume_alignment %alloc_6, 4 : memref<10x10x10xi1>
        %284 = memref.load %209[%c9] : memref<10xi1>
        %285 = index.divs %181, %226
        %286 = arith.cmpi slt, %c540967278_i64, %c1199528644_i64 : i64
        %287 = math.fma %168, %117, %168 : tensor<100x5xf16>
        memref.assume_alignment %alloc_18, 1 : memref<2xf16>
      }
      %273 = math.roundeven %cst : f16
      %from_elements_47 = tensor.from_elements %35, %35, %false_30, %false_4, %false, %false_4, %true, %false_4, %false, %false_30 : tensor<10xi1>
      scf.yield %c9 : index
    }
    case 4 {
      %261 = vector.shuffle %101, %101 [2, 8, 9, 10, 13, 14, 19] : vector<10xi16>, vector<10xi16>
      %262 = vector.broadcast %c5 : index to vector<2xindex>
      vector.scatter %26[%c2] [%262], %166, %63 : memref<5xi32>, vector<2xindex>, vector<2xi1>, vector<2xi32>
      %263 = arith.minsi %c1199528644_i64, %c1199528644_i64 : i64
      %264 = arith.divui %35, %false : i1
      %265 = math.absf %228 : tensor<5xf16>
      %266 = index.add %78, %c10
      memref.copy %125, %alloc_13 : memref<2xf16> to memref<2xf16>
      %267 = arith.muli %c404776214_i32, %c404776214_i32 : i32
      %268 = arith.shli %false_3, %true : i1
      %269 = arith.ori %c1491804838_i64, %c540967278_i64 : i64
      %270 = arith.minf %cst_21, %cst_21 : f32
      scf.index_switch %42 
      case 1 {
        %275 = arith.remsi %35, %35 : i1
        %276 = math.log10 %11 : tensor<5xf32>
        %277 = math.exp2 %cst_0 : f16
        %278 = math.round %16 : tensor<10xf16>
        %alloc_47 = memref.alloc() : memref<10xi64>
        memref.tensor_store %2, %alloc_47 : memref<10xi64>
        %279 = math.fma %11, %5, %11 : tensor<5xf32>
        %280 = vector.shuffle %111, %111 [2, 4, 6, 8, 9, 10, 12, 16] : vector<10x10x10xi64>, vector<10x10x10xi64>
        %281 = arith.ceildivsi %c-3927_i16, %c-3927_i16 : i16
        %inserted_48 = tensor.insert %cst_5 into %13[%c7, %c3, %c4] : tensor<10x10x10xf16>
        %282 = math.cos %228 : tensor<5xf16>
        %alloc_49 = memref.alloc() : memref<i16>
        memref.tensor_store %24, %alloc_49 : memref<i16>
        %283 = math.tanh %6 : tensor<2xf32>
        memref.tensor_store %56, %68 : memref<5xi16>
        %284 = math.floor %6 : tensor<2xf32>
        %285 = vector.extract %175[4] : vector<5xi1>
        %286 = arith.mulf %cst_2, %cst_2 : f16
        scf.yield
      }
      case 2 {
        %from_elements_47 = tensor.from_elements %false_4, %false_4, %true, %true, %false_3, %false_30, %false_3, %false_3, %false_3, %false_4, %false_4, %false_30, %false_30, %true, %false_30, %35, %35, %false_30, %false_3, %false, %false_30, %false_30, %false, %35, %false_4, %false_3, %true, %false_30, %false_30, %35, %false, %35, %true, %35, %false_3, %false_30, %35, %35, %35, %false, %false_30, %false, %true, %false, %true, %false_3, %false_3, %false_3, %true, %true, %true, %false_30, %35, %false_30, %false_3, %false, %35, %35, %35, %false_30, %false_30, %false_4, %false_3, %false_3, %false, %false_4, %false_30, %35, %35, %35, %false, %true, %true, %35, %false, %false_3, %false_4, %35, %false_30, %false_4, %false_30, %false_4, %false_30, %false_4, %false_30, %false, %false_30, %false, %35, %false_30, %false_3, %false_4, %false_4, %true, %false_30, %false_30, %35, %35, %false_30, %35, %false_3, %true, %false, %35, %false_4, %false, %false, %false_3, %false_3, %false_30, %false_3, %false, %true, %false_3, %false_30, %false, %false_3, %false_3, %true, %false_3, %false_3, %true, %35, %true, %35, %false_30, %false_4, %35, %false_3, %35, %false_3, %false_4, %false, %false_30, %35, %false, %false_3, %false, %false_4, %false_30, %false_4, %true, %35, %false_30, %false_30, %false_4, %true, %false_3, %false_3, %false_3, %false_4, %true, %true, %false_30, %true, %35, %false_4, %false_4, %false, %true, %false_3, %35, %false_3, %35, %false_3, %false_4, %false_4, %false_3, %false_4, %35, %false_3, %true, %true, %false, %false_4, %false_4, %false_30, %true, %false, %false_4, %false, %false_30, %true, %false_30, %false_30, %false_30, %false_30, %false_4, %false_4, %false_30, %35, %35, %false_3, %false, %false_4, %true, %false_30, %true, %true, %false_4, %false_4, %true, %false_4, %false, %false_4, %false_4, %false_3, %false, %false, %false_3, %false_30, %true, %35, %false_3, %false, %false_3, %true, %false_4, %false_3, %false_4, %false_4, %false_4, %true, %true, %true, %false_4, %false, %false_30, %true, %true, %35, %true, %true, %false_4, %false_4, %false_3, %false_30, %false_4, %35, %35, %false_30, %false, %false_3, %false, %true, %false, %false_4, %false, %35, %false_30, %true, %false_3, %false_3, %false_4, %false, %false, %true, %true, %false_30, %false_4, %false_30, %35, %false_4, %false_4, %false, %true, %false_4, %false, %35, %35, %false_4, %false_3, %true, %false_4, %false_30, %true, %false_30, %false_3, %false_30, %35, %false_3, %true, %false, %false_30, %false, %false_30, %true, %false_3, %false_3, %false_4, %false, %35, %false_4, %false_4, %true, %false_4, %35, %true, %false, %false_30, %false_4, %false_30, %false, %false_3, %true, %false_3, %false_4, %false_4, %false_30, %false_4, %true, %false_3, %35, %false_4, %false_3, %true, %false_3, %35, %true, %true, %false_30, %false_3, %false_4, %false_4, %false_30, %false, %false_4, %35, %false_4, %false_30, %35, %false_3, %false, %false_30, %false_30, %false_4, %false_30, %false_3, %true, %true, %true, %35, %false_30, %true, %35, %false_30, %true, %false_4, %false_30, %false_4, %true, %false_4, %false, %false_4, %false, %false_4, %true, %true, %false_3, %true, %35, %false_4, %false_3, %false_3, %false_30, %false_3, %false_3, %35, %true, %false_30, %false_3, %true, %false_30, %false_4, %false_3, %true, %false, %false_4, %false, %false_30, %false, %false_30, %false, %false_3, %false_30, %false, %35, %true, %false_3, %true, %true, %false_4, %false_30, %false_3, %35, %false, %false_3, %false_3, %false_3, %35, %false_30, %false_30, %false_3, %false_3, %35, %false_3, %false_4, %false, %false, %false_4, %true, %false, %35, %true, %true, %false_30, %false_30, %true, %true, %false_4, %false_4, %false_30, %true, %false_30, %false_30, %35, %false_4, %35, %false_4, %true, %false_3, %false, %false_3, %35, %false_4, %35, %false_4, %false_4, %false, %false_30, %false_4, %true, %false_30, %false, %false_3, %35, %false_30, %35, %false, %false, %false, %true, %false_4, %false, %true, %false_30, %35, %false_4, %true, %true, %true, %false_30, %false_3, %false_3, %false, %false_30, %false, %false, %false_4, %false_30, %true, %false, %false_30, %false, %false, %false_4, %false, %35, %false, %false_3, %false_4, %true, %false, %35, %false_30, %false_3, %false_4, %false_4, %false, %false_3, %false_4, %false, %false_30, %false_4, %35, %false_3, %false_30, %false, %false, %false_30, %false_3, %true, %false_30, %true, %false_30, %false_30, %35, %false, %false, %false, %35, %true, %true, %false_30, %true, %false_4, %false_30, %false_30, %false_30, %false_4, %false, %true, %35, %false_3, %false_30, %false_30, %35, %false_30, %false_3, %false_4, %true, %false, %true, %false, %35, %false_3, %true, %false_4, %false_4, %false_3, %35, %false_30, %true, %false_30, %true, %35, %false, %false_30, %false_30, %35, %false_3, %false, %false_3, %true, %false_30, %35, %true, %false, %false, %false, %false, %35, %false_3, %false_30, %true, %35, %35, %false, %false_3, %35, %35, %true, %false_4, %35, %false_4, %false, %false_30, %false, %false_3, %false, %35, %false, %35, %false_4, %35, %false, %true, %false, %35, %false_30, %false_30, %false_30, %35, %false, %false_30, %false_30, %false_3, %false_4, %false_30, %false_3, %false_4, %true, %false_30, %false_3, %true, %false_4, %35, %false, %false, %false_30, %false_30, %true, %35, %false_3, %false_3, %true, %true, %false, %false_3, %false_30, %false, %false_4, %true, %true, %false_4, %false_3, %false_30, %false, %35, %false_4, %false_4, %false_4, %true, %false_4, %35, %false_4, %35, %false_30, %false_3, %false_4, %false_30, %false_30, %false_4, %35, %35, %35, %false_30, %false_4, %false, %true, %true, %35, %false_30, %false_3, %false_30, %false_4, %false_30, %false_3, %35, %true, %true, %true, %true, %false, %false, %true, %false, %false_4, %true, %true, %false_30, %true, %35, %false, %true, %true, %false_30, %35, %false_3, %35, %false_30, %true, %false_3, %true, %false, %false_3, %true, %false_3, %false, %false, %35, %false_30, %false_30, %false_3, %false_3, %true, %false_30, %false_4, %true, %false_4, %false_3, %false, %false, %false_3, %35, %false_30, %35, %true, %false_30, %35, %false, %false_4, %35, %true, %false_4, %false, %true, %true, %true, %false, %false_4, %false_30, %false_3, %false_3, %true, %false_4, %false_4, %false_4, %false_3, %false, %false_30, %false_30, %false_4, %false_30, %true, %false, %false_30, %false_30, %true, %false_4, %false_30, %35, %false_4, %false_4, %false_3, %true, %false, %35, %false, %false_4, %35, %false_30, %false, %true, %true, %false, %true, %false_4, %false_30, %false_3, %false_30, %false, %35, %false_4, %true, %false, %false_3, %35, %false, %false_4, %true, %35, %false_30, %false, %false, %false_30, %35, %false_4, %35, %35, %35, %false_30, %false_4, %true, %false_4, %35, %false, %false_4, %false_30, %false_4, %false_30, %false_3, %true, %false_3, %false, %false_4, %false_4, %false_30, %false_3, %35, %false, %false, %35, %false_3, %false_4, %35, %35, %false, %true, %false_4, %false_3, %false_30, %false, %false_30, %false, %false_30, %35, %false_4, %false_4, %false_4, %false_30, %false_30, %true, %false, %true, %false_4, %false_30, %false, %35, %false, %false_3, %false_3, %false_4, %false_30, %true, %false_30, %false_30, %false_3, %false_30, %true, %true, %false_30, %false_3, %false, %false_3, %false, %35, %false, %false_3, %35, %false_3, %false_30, %35, %true, %35, %true, %false_4, %35, %false_4, %false_3, %false_3, %35, %true, %false_30, %true, %false_30, %false_3, %false, %false_4, %false, %true, %false_30, %false_3, %false_4, %false, %35, %35, %false_4, %35, %true, %true, %false, %35, %false_30, %false_4, %false_3, %false_30, %false_4, %false, %false_4, %false, %true, %false_4, %false_3, %true, %false_30, %false_3, %35, %false_30, %false_3, %false_4, %false, %false_3, %false_3, %false_4, %false_4, %false_3, %false_4, %true, %false_4, %false_30, %false_3, %true, %true, %35, %35, %false_3, %false, %true, %false_30, %35, %35, %false_30, %false_4, %false_4, %false_4, %false_4, %false, %false_3, %false_4, %false_4, %false_4, %false_3, %false_4, %false_4, %false_4, %35, %false_3, %35, %35, %false_3, %false_3, %true, %false_4, %true, %false_30, %false_30, %false, %false, %false_4, %false_30, %false_3, %false, %false, %false, %false_4, %false_4, %false_4, %false, %false_4, %false_3, %false_3, %false_3, %true, %false, %false_30, %false_4, %35, %false, %true, %35, %true, %true, %false_4, %false_4, %false, %true, %false_3, %true, %35, %true, %false_3, %35, %35, %false_4, %false_4, %true, %true, %true, %false_4, %false_4, %false_4, %35, %true, %true, %35, %false_4, %false_4, %true, %true : tensor<10x10x10xi1>
        %275 = index.divs %171, %c2
        %276 = arith.minf %cst_21, %cst_21 : f32
        %277 = index.castu %157 : index to i32
        %expanded_48 = tensor.expand_shape %4 [[0, 1]] : tensor<10xf16> into tensor<10x1xf16>
        vector.print %79 : vector<10xf16>
        %278 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%c11, %210, %266, %c2)
        %279 = math.ctlz %2 : tensor<10xi64>
        %rank = tensor.rank %22 : tensor<2xi16>
        %280 = vector.load %178[%c8] : memref<10xi16>, vector<10xi16>
        memref.copy %136, %alloc_6 : memref<10x10x10xi1> to memref<10x10x10xi1>
        %281 = vector.reduction <maxsi>, %140 : vector<10xi64> into i64
        %282 = arith.minui %c1491804838_i64, %c1491804838_i64 : i64
        %collapsed_49 = tensor.collapse_shape %0 [[0, 1], [2]] : tensor<10x10x10xi1> into tensor<100x10xi1>
        %283 = affine.max affine_map<(d0, d1, d2) -> (d2, d2)>(%c10, %rank, %c9)
        bufferization.dealloc_tensor %117 : tensor<100x5xf16>
        scf.yield
      }
      case 3 {
        %275 = math.powf %168, %168 : tensor<100x5xf16>
        bufferization.dealloc_tensor %expanded : tensor<10x1xi16>
        affine.store %c1199528644_i64, %alloc_14[%c11] : memref<2xi64>
        %276 = vector.broadcast %c1491804838_i64 : i64 to vector<10x10xi64>
        %dest_47, %accumulated_value_48 = vector.scan <xor>, %111, %276 {inclusive = true, reduction_dim = 2 : i64} : vector<10x10x10xi64>, vector<10x10xi64>
        %277 = index.sizeof
        affine.store %c-3927_i16, %178[%c6] : memref<10xi16>
        %278 = arith.shli %false_4, %35 : i1
        %279 = math.log %cst_21 : f32
        %280 = math.floor %13 : tensor<10x10x10xf16>
        %281 = arith.maxf %cst_2, %cst : f16
        %282 = arith.remf %cst_0, %cst_5 : f16
        %283 = vector.shuffle %111, %111 [0, 1, 4, 7, 13, 14, 15, 19] : vector<10x10x10xi64>, vector<10x10x10xi64>
        %284 = vector.insert %c-3927_i16, %129 [5] : i16 into vector<10xi16>
        %285 = index.floordivs %c2, %c9
        %286 = vector.broadcast %false_3 : i1 to vector<2xi1>
        %287 = affine.apply affine_map<(d0, d1, d2) -> (d2)>(%c4, %210, %27)
        scf.yield
      }
      default {
        %275 = vector.reduction <or>, %63 : vector<2xi32> into i32
        %276 = index.ceildivs %55, %110
        %277 = index.floordivs %25, %181
        %278 = index.floordivs %238, %71
        %279 = vector.flat_transpose %101 {columns = 5 : i32, rows = 2 : i32} : vector<10xi16> -> vector<10xi16>
        %280 = arith.cmpf ord, %cst_5, %cst_1 : f16
        %281 = memref.load %alloc_13[%c0] : memref<2xf16>
        %282 = vector.create_mask %110 : vector<5xi1>
        %283 = vector.broadcast %c404776214_i32 : i32 to vector<5xi32>
        %284 = vector.gather %transposed[%c13] [%283], %175, %194 : tensor<5xi64>, vector<5xi32>, vector<5xi1>, vector<5xi64> into vector<5xi64>
        %285 = arith.minui %true, %false_30 : i1
        %286 = index.add %243, %171
        %287 = math.tan %cst_5 : f16
        %288 = memref.realloc %244 : memref<5xi32> to memref<2xi32>
        %289 = vector.multi_reduction <mul>, %54, %cst_21 [0] : vector<5xf32> to f32
        %290 = bufferization.to_tensor %alloc_9 : memref<10x10x10xi64>
        %alloc_47 = memref.alloc() : memref<10xi16>
      }
      %271 = affine.max affine_map<(d0, d1, d2) -> (d2, ((d1 * 16) mod 64) ceildiv 16, (d2 mod 2) ceildiv 8)>(%148, %97, %42)
      %272 = arith.divf %cst_21, %cst_21 : f32
      %273 = arith.cmpi sgt, %c1491804838_i64, %c1199528644_i64 : i64
      %274 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 ceildiv 64 + 8, d2 floordiv 4, d1, d0)>(%61, %271, %55, %181)
      scf.yield %243 : index
    }
    default {
      %261 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1)>(%c0, %48, %c9, %25)
      %262 = math.log10 %7 : tensor<10xf32>
      %263 = math.absi %3 : tensor<2xi16>
      scf.index_switch %42 
      case 1 {
        %277 = arith.shli %true, %false_30 : i1
        %278 = bufferization.clone %125 : memref<2xf16> to memref<2xf16>
        %279 = arith.divf %cst, %cst_1 : f16
        %alloc_49 = memref.alloc() : memref<i16>
        memref.tensor_store %24, %alloc_49 : memref<i16>
        %280 = arith.shrsi %false_4, %false : i1
        %281 = math.absi %false : i1
        %282 = arith.remf %cst, %cst_5 : f16
        %from_elements_50 = tensor.from_elements %35, %false_3 : tensor<2xi1>
        %283 = index.floordivs %27, %148
        %284 = math.copysign %5, %5 : tensor<5xf32>
        %285 = index.floordivs %97, %157
        %286 = vector.shuffle %54, %53 [3, 4, 5, 7, 8, 9] : vector<5xf32>, vector<5xf32>
        %287 = vector.extract %193[1] : vector<5xi64>
        %288 = vector.broadcast %c1491804838_i64 : i64 to vector<10x10xi64>
        %dest_51, %accumulated_value_52 = vector.scan <maxui>, %111, %288 {inclusive = true, reduction_dim = 0 : i64} : vector<10x10x10xi64>, vector<10x10xi64>
        %289 = math.ctlz %from_elements_40 : tensor<10xi16>
        %290 = arith.floordivsi %false, %false_3 : i1
        scf.yield
      }
      case 2 {
        %277 = vector.maskedload %alloc_14[%c1], %80, %140 : memref<2xi64>, vector<10xi1>, vector<10xi64> into vector<10xi64>
        %278 = vector.transpose %175, [0] : vector<5xi1> to vector<5xi1>
        %279 = bufferization.to_memref %14 : memref<5xi1>
        %280 = affine.max affine_map<(d0, d1, d2) -> (-(d1 + d2), ((d1 + d2) * 8) ceildiv 32 - 1, d2)>(%78, %76, %110)
        %281 = arith.ori %false_30, %false_4 : i1
        bufferization.dealloc_tensor %15 : tensor<5xf16>
        %true_49 = arith.constant true
        %false_50 = arith.constant false
        %282 = vector.transfer_read %alloc_6[%186, %206, %158], %false_50 : memref<10x10x10xi1>, vector<i1>
        %283 = math.fma %13, %13, %40 : tensor<10x10x10xf16>
        %284 = math.powf %cst, %cst_1 : f16
        %285 = arith.subi %false_4, %true_49 : i1
        %286 = arith.ori %35, %false_4 : i1
        %alloc_51 = memref.alloc() : memref<10x10x10xf16>
        memref.tensor_store %13, %alloc_51 : memref<10x10x10xf16>
        %287 = affine.max affine_map<(d0) -> (d0 * 2, (d0 + 8) floordiv 32, d0 - 96)>(%226)
        %288 = arith.remsi %true, %false_3 : i1
        %289 = arith.minui %c1491804838_i64, %c1491804838_i64 : i64
        %290 = vector.broadcast %true : i1 to vector<10x10xi1>
        %dest_52, %accumulated_value_53 = vector.scan <maxui>, %84, %290 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
        scf.yield
      }
      default {
        %277 = affine.max affine_map<(d0, d1, d2) -> (-((-d0) floordiv 2), d0 + 3, -d1, d0 * 2)>(%c11, %c1, %206)
        %278 = bufferization.clone %49 : memref<10xi1> to memref<10xi1>
        %inserted_49 = tensor.insert %cst_21 into %19[] : tensor<f32>
        memref.assume_alignment %244, 2 : memref<5xi32>
        %279 = arith.minui %35, %false : i1
        %280 = vector.transpose %81, [0] : vector<10xi32> to vector<10xi32>
        %281 = arith.remsi %c-3927_i16, %c-3927_i16 : i16
        %collapsed_50 = tensor.collapse_shape %179 [[0, 1], [2]] : tensor<10x10x10xi64> into tensor<100x10xi64>
        %282 = vector.gather %56[%c5] [%81], %227, %129 : tensor<5xi16>, vector<10xi32>, vector<10xi1>, vector<10xi16> into vector<10xi16>
        %283 = vector.broadcast %35 : i1 to vector<2x2xi1>
        %284 = vector.outerproduct %166, %64, %283 {kind = #vector.kind<or>} : vector<2xi1>, vector<2xi1>
        memref.assume_alignment %alloc_16, 4 : memref<10x10x10xi64>
        %285 = index.mul %97, %110
        %286 = bufferization.to_memref %15 : memref<5xf16>
        %287 = arith.remsi %c404776214_i32, %c1343683170_i32 : i32
        %288 = index.add %94, %55
        %289 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 + d3 - (d3 + d0) * 4)>(%148, %132, %157, %c8)
      }
      %264 = vector.broadcast %false_30 : i1 to vector<10x10xi1>
      %dest_47, %accumulated_value_48 = vector.scan <or>, %84, %264 {inclusive = true, reduction_dim = 2 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
      %265 = arith.subi %35, %35 : i1
      %266 = bufferization.clone %50 : memref<10xi1> to memref<10xi1>
      %267 = vector.broadcast %cst_21 : f32 to vector<2xf32>
      %268 = vector.fma %267, %267, %267 : vector<2xf32>
      %269 = index.ceildivu %c5, %94
      %270 = memref.load %244[%c3] : memref<5xi32>
      %271 = math.roundeven %7 : tensor<10xf32>
      %272 = arith.remsi %true, %true : i1
      %273 = math.fma %40, %13, %13 : tensor<10x10x10xf16>
      %274 = arith.shli %true, %false_4 : i1
      %275 = math.atan2 %17, %4 : tensor<10xf16>
      %276 = scf.execute_region -> memref<10x10x10xi32> {
        %c1072220193_i64 = arith.constant 1072220193 : i64
        %277 = arith.maxui %false, %35 : i1
        %278 = math.powf %7, %7 : tensor<10xf32>
        %279 = math.absi %23 : tensor<i16>
        %280 = arith.muli %35, %false : i1
        %281 = vector.insert %c1343683170_i32, %63 [0] : i32 into vector<2xi32>
        %282 = vector.create_mask %c14 : vector<5xi1>
        %283 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 * 4)>(%c11, %c2, %238, %181)
        %284 = arith.cmpi ugt, %c401653752_i32, %c401653752_i32 : i32
        %285 = vector.transpose %65, [0] : vector<2xi32> to vector<2xi32>
        %expanded_49 = tensor.expand_shape %2 [[0, 1]] : tensor<10xi64> into tensor<10x1xi64>
        %286 = index.ceildivs %c11, %27
        %287 = arith.shrui %35, %false : i1
        %288 = arith.negf %cst_0 : f16
        %289 = math.ctlz %from_elements_24 : tensor<5xi64>
        %290 = math.absf %cst_1 : f16
        scf.yield %alloc : memref<10x10x10xi32>
      }
      scf.yield %145 : index
    }
    %249 = scf.index_switch %c0 -> index 
    case 1 {
      %261 = math.powf %15, %228 : tensor<5xf16>
      %rank = tensor.rank %generated_34 : tensor<?xi1>
      %262 = index.sub %c2, %c5
      memref.assume_alignment %50, 4 : memref<10xi1>
      memref.store %cst_2, %125[%c0] : memref<2xf16>
      %263 = arith.divf %cst_5, %cst_0 : f16
      %264 = vector.bitcast %160 : vector<2xi1> to vector<2xi1>
      %265 = arith.ceildivsi %false_4, %false : i1
      %266 = index.sizeof
      %267 = math.log10 %4 : tensor<10xf16>
      %268 = index.maxu %148, %158
      %269 = math.roundeven %6 : tensor<2xf32>
      %270 = math.rsqrt %228 : tensor<5xf16>
      %271 = arith.maxsi %c-3927_i16, %c-3927_i16 : i16
      %272 = bufferization.to_tensor %125 : memref<2xf16>
      %273 = vector.flat_transpose %81 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
      scf.yield %243 : index
    }
    case 2 {
      %261 = math.fma %40, %13, %13 : tensor<10x10x10xf16>
      %262 = arith.maxui %false_4, %true : i1
      %263 = arith.divf %cst_1, %cst_2 : f16
      %264 = vector.transpose %175, [0] : vector<5xi1> to vector<5xi1>
      %265 = scf.execute_region -> memref<10xi32> {
        %276 = vector.shuffle %80, %21 [1, 2, 3, 6, 7, 8, 10, 11, 12, 13, 14] : vector<10xi1>, vector<5xi1>
        %277 = index.mul %c8, %186
        %278 = arith.remsi %c540967278_i64, %c1491804838_i64 : i64
        %279 = math.powf %117, %117 : tensor<100x5xf16>
        %280 = vector.broadcast %false : i1 to vector<10x10xi1>
        %dest_48, %accumulated_value_49 = vector.scan <minsi>, %37, %280 {inclusive = false, reduction_dim = 0 : i64} : vector<10x10x10xi1>, vector<10x10xi1>
        %281 = arith.shrui %c1199528644_i64, %c1199528644_i64 : i64
        %282 = index.sub %c4, %c10
        %283 = arith.remui %true, %true : i1
        %284 = vector.multi_reduction <minsi>, %21, %21 [] : vector<5xi1> to vector<5xi1>
        %285 = vector.insert %false_3, %227 [1] : i1 into vector<10xi1>
        %286 = math.copysign %16, %4 : tensor<10xf16>
        %287 = math.cos %11 : tensor<5xf32>
        %288 = index.floordivs %c3, %c10
        %289 = index.ceildivs %c10, %243
        %290 = arith.subi %true, %false_4 : i1
        memref.assume_alignment %alloc_20, 2 : memref<5xf16>
        scf.yield %alloc_11 : memref<10xi32>
      }
      %266 = vector.flat_transpose %81 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
      %267 = math.floor %17 : tensor<10xf16>
      %268 = bufferization.to_memref %228 : memref<5xf16>
      %269 = scf.index_switch %186 -> f32 
      case 1 {
        %276 = index.casts %false_4 : i1 to index
        %collapsed_48 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<10x10x10xi1> into tensor<100x10xi1>
        %277 = math.rsqrt %172 : tensor<100x2xf16>
        %278 = arith.shli %false_30, %false : i1
        %279 = arith.cmpi sge, %c1343683170_i32, %c1343683170_i32 : i32
        %280 = tensor.empty(%c15) : tensor<?xi1>
        %281 = math.roundeven %cst_21 : f32
        %282 = math.round %collapsed : tensor<100x10xf16>
        %283 = arith.shli %c-3927_i16, %c-3927_i16 : i16
        %284 = vector.broadcast %cst_21 : f32 to vector<10xf32>
        %285 = vector.fma %284, %284, %284 : vector<10xf32>
        bufferization.dealloc_tensor %3 : tensor<2xi16>
        %286 = math.sqrt %5 : tensor<5xf32>
        %287 = bufferization.to_tensor %alloc_14 : memref<2xi64>
        %288 = arith.subi %c401653752_i32, %c401653752_i32 : i32
        %289 = tensor.empty() : tensor<1x10xi16>
        %290 = tensor.empty() : tensor<10x10xi16>
        %291 = linalg.matmul ins(%expanded, %289 : tensor<10x1xi16>, tensor<1x10xi16>) outs(%290 : tensor<10x10xi16>) -> tensor<10x10xi16>
        %292 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 64)>(%243, %243, %c6)
        scf.yield %cst_21 : f32
      }
      case 2 {
        %276 = arith.muli %false_4, %false_30 : i1
        %277 = math.absf %collapsed : tensor<100x10xf16>
        %278 = memref.load %alloc_9[%c9, %c0, %c4] : memref<10x10x10xi64>
        %279 = arith.shli %c401653752_i32, %c404776214_i32 : i32
        %280 = arith.remf %cst, %cst : f16
        %281 = vector.multi_reduction <and>, %63, %65 [] : vector<2xi32> to vector<2xi32>
        %282 = vector.insertelement %cst, %79[%226 : index] : vector<10xf16>
        %283 = vector.broadcast %c14 : index to vector<2xindex>
        %284 = vector.broadcast %cst_0 : f16 to vector<2xf16>
        vector.scatter %268[%c4] [%283], %64, %284 : memref<5xf16>, vector<2xindex>, vector<2xi1>, vector<2xf16>
        %285 = arith.subi %c1343683170_i32, %c401653752_i32 : i32
        %286 = vector.flat_transpose %82 {columns = 5 : i32, rows = 2 : i32} : vector<10xf16> -> vector<10xf16>
        %287 = arith.shrsi %c404776214_i32, %c401653752_i32 : i32
        %288 = arith.minui %c-3927_i16, %c-3927_i16 : i16
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %140, %140, %c540967278_i64 : vector<10xi64>, vector<10xi64> into i64
        %290 = arith.divsi %c-3927_i16, %c-3927_i16 : i16
        %291 = arith.remf %cst_2, %cst : f16
        %292 = math.cos %cst : f16
        scf.yield %cst_21 : f32
      }
      default {
        %276 = math.cttz %transposed : tensor<5xi64>
        %277 = index.ceildivu %71, %210
        %278 = math.fma %13, %13, %13 : tensor<10x10x10xf16>
        vector.print %54 : vector<5xf32>
        %279 = vector.load %alloc_14[%c1] : memref<2xi64>, vector<10x10x10xi64>
        %280 = arith.divf %cst, %cst_2 : f16
        %281 = arith.shli %true, %false : i1
        %282 = vector.flat_transpose %63 {columns = 1 : i32, rows = 2 : i32} : vector<2xi32> -> vector<2xi32>
        %283 = index.mul %132, %c15
        %284 = affine.max affine_map<(d0) -> (((d0 - 2) mod 4) floordiv 128, d0 - (d0 ceildiv 64 - 2) - 4, d0 ceildiv 64 - (d0 ceildiv 64 - d0), d0 ceildiv 64 - d0 - 2)>(%c13)
        %285 = arith.shli %c1491804838_i64, %c1199528644_i64 : i64
        %286 = affine.apply affine_map<(d0) -> (d0 * 16)>(%c9)
        %287 = bufferization.clone %alloc : memref<10x10x10xi32> to memref<10x10x10xi32>
        %288 = arith.divsi %c-3927_i16, %c-3927_i16 : i16
        %289 = bufferization.clone %alloc_16 : memref<10x10x10xi64> to memref<10x10x10xi64>
        %290 = math.tanh %15 : tensor<5xf16>
        scf.yield %cst_21 : f32
      }
      %270 = math.expm1 %cst_1 : f16
      %271 = math.powf %168, %168 : tensor<100x5xf16>
      %272 = index.sizeof
      %273 = vector.insert %c404776214_i32, %81 [0] : i32 into vector<10xi32>
      %expanded_47 = tensor.expand_shape %1 [[0], [1], [2, 3]] : tensor<10x10x10xi1> into tensor<10x10x10x1xi1>
      %274 = arith.floordivsi %false_4, %false_3 : i1
      %275 = math.cos %228 : tensor<5xf16>
      scf.yield %76 : index
    }
    default {
      %261 = arith.mulf %cst, %cst_0 : f16
      %262 = math.tanh %7 : tensor<10xf32>
      %263 = math.absi %false_4 : i1
      %264 = arith.maxf %cst_21, %cst_21 : f32
      %265 = index.castu %171 : index to i32
      %cast_47 = tensor.cast %13 : tensor<10x10x10xf16> to tensor<?x?x?xf16>
      %266 = vector.broadcast %c540967278_i64 : i64 to vector<10x10xi64>
      %dest_48, %accumulated_value_49 = vector.scan <add>, %111, %266 {inclusive = false, reduction_dim = 1 : i64} : vector<10x10x10xi64>, vector<10x10xi64>
      %267 = arith.shli %c401653752_i32, %c401653752_i32 : i32
      %268 = arith.minui %35, %false_30 : i1
      %269 = vector.flat_transpose %227 {columns = 5 : i32, rows = 2 : i32} : vector<10xi1> -> vector<10xi1>
      %from_elements_50 = tensor.from_elements %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21, %cst_21 : tensor<10xf32>
      %270 = arith.shli %c1343683170_i32, %c404776214_i32 : i32
      %271 = vector.matrix_multiply %227, %166 {lhs_columns = 2 : i32, lhs_rows = 5 : i32, rhs_columns = 1 : i32} : (vector<10xi1>, vector<2xi1>) -> vector<5xi1>
      %272 = vector.reduction <minf>, %82 : vector<10xf16> into f16
      %generated_51 = tensor.generate %31 {
      ^bb0(%arg0: index):
        %275 = arith.shrui %35, %true : i1
        %276 = bufferization.to_memref %14 : memref<5xi1>
        %277 = arith.shrsi %false_4, %false_3 : i1
        %278 = vector.shuffle %166, %269 [6, 7, 8, 9, 11] : vector<2xi1>, vector<10xi1>
        tensor.yield %false_4 : i1
      } : tensor<?xi1>
      %273 = vector.broadcast %c404776214_i32 : i32 to vector<2x2xi32>
      %274 = vector.outerproduct %63, %63, %273 {kind = #vector.kind<minsi>} : vector<2xi32>, vector<2xi32>
      scf.yield %110 : index
    }
    %alloc_41 = memref.alloc() : memref<5xf32>
    memref.tensor_store %11, %alloc_41 : memref<5xf32>
    %250 = math.floor %15 : tensor<5xf16>
    %251 = math.fma %5, %11, %11 : tensor<5xf32>
    %expanded_42 = tensor.expand_shape %16 [[0, 1]] : tensor<10xf16> into tensor<10x1xf16>
    %252 = vector.matrix_multiply %129, %101 {lhs_columns = 10 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<10xi16>, vector<10xi16>) -> vector<1xi16>
    %253 = arith.andi %c-3927_i16, %c-3927_i16 : i16
    %254 = math.exp %117 : tensor<100x5xf16>
    %255 = affine.apply affine_map<(d0, d1) -> ((-d0) mod 128 + d0)>(%c4, %90)
    %from_elements_43 = tensor.from_elements %false_4, %false_4 : tensor<2xi1>
    %from_elements_44 = tensor.from_elements %cst_0, %cst_0, %cst_0, %cst_5, %cst_1, %cst_2, %cst_2, %cst_2, %cst_0, %cst, %cst, %cst, %cst_1, %cst_0, %cst_2, %cst_5, %cst_0, %cst_2, %cst_1, %cst_2, %cst_2, %cst_0, %cst, %cst_5, %cst_2, %cst_1, %cst_0, %cst_1, %cst_5, %cst_5, %cst_5, %cst, %cst, %cst_2, %cst_1, %cst_5, %cst, %cst_1, %cst_5, %cst_2, %cst_2, %cst_2, %cst_2, %cst_5, %cst_1, %cst_5, %cst_5, %cst_2, %cst_1, %cst_5, %cst_0, %cst_5, %cst, %cst_2, %cst_0, %cst_5, %cst_5, %cst_5, %cst_1, %cst_2, %cst, %cst_5, %cst_0, %cst_1, %cst_1, %cst_5, %cst_5, %cst_2, %cst_1, %cst_5, %cst_1, %cst_1, %cst_1, %cst_0, %cst_0, %cst_5, %cst, %cst_2, %cst_2, %cst_1, %cst_5, %cst_0, %cst_2, %cst_5, %cst_2, %cst_1, %cst_0, %cst_2, %cst_5, %cst_5, %cst_5, %cst_2, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_5, %cst, %cst, %cst_5, %cst_0, %cst, %cst, %cst_5, %cst_0, %cst, %cst_5, %cst_0, %cst_1, %cst_1, %cst_1, %cst, %cst_5, %cst_2, %cst, %cst_0, %cst_1, %cst_2, %cst, %cst_2, %cst_2, %cst, %cst_0, %cst_5, %cst, %cst, %cst_5, %cst_5, %cst_1, %cst_2, %cst, %cst, %cst_2, %cst_0, %cst_0, %cst, %cst_2, %cst_0, %cst_5, %cst_1, %cst, %cst, %cst_0, %cst_2, %cst_0, %cst_1, %cst_2, %cst_0, %cst_5, %cst_1, %cst_0, %cst_5, %cst_0, %cst_5, %cst_5, %cst, %cst_1, %cst, %cst_1, %cst_2, %cst_1, %cst_5, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst_5, %cst_0, %cst_1, %cst_0, %cst_5, %cst_2, %cst_2, %cst_0, %cst_1, %cst_1, %cst_0, %cst_1, %cst_5, %cst_5, %cst_1, %cst_5, %cst_2, %cst, %cst_1, %cst_0, %cst_5, %cst_0, %cst_1, %cst_1, %cst_1, %cst_1, %cst_2, %cst_5, %cst_5, %cst_5, %cst_1, %cst_5, %cst_2, %cst_1, %cst_1, %cst_0, %cst_1, %cst_1, %cst_2, %cst_1, %cst_1, %cst_5, %cst_0, %cst_5, %cst_2, %cst_0, %cst_0, %cst_2, %cst_2, %cst, %cst, %cst, %cst_1, %cst_0, %cst_5, %cst_0, %cst, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_1, %cst, %cst_1, %cst_2, %cst_0, %cst, %cst_2, %cst_0, %cst_2, %cst_2, %cst_5, %cst_0, %cst_2, %cst, %cst_1, %cst_0, %cst, %cst_1, %cst, %cst_0, %cst_5, %cst, %cst, %cst_1, %cst_2, %cst_0, %cst_5, %cst_2, %cst_5, %cst_0, %cst, %cst_5, %cst_0, %cst_2, %cst_5, %cst_0, %cst_1, %cst_0, %cst_1, %cst_2, %cst_2, %cst_0, %cst_5, %cst_0, %cst_5, %cst_2, %cst_5, %cst_2, %cst_2, %cst_2, %cst_1, %cst_2, %cst_2, %cst_0, %cst_0, %cst_1, %cst_0, %cst_0, %cst_1, %cst, %cst_2, %cst, %cst_5, %cst_1, %cst_5, %cst_5, %cst, %cst_5, %cst_2, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst_5, %cst_2, %cst_2, %cst_5, %cst_5, %cst_5, %cst, %cst_5, %cst, %cst_0, %cst, %cst_0, %cst, %cst_0, %cst_1, %cst_0, %cst_0, %cst, %cst_1, %cst_1, %cst_0, %cst_0, %cst_0, %cst_2, %cst_2, %cst_5, %cst_1, %cst_2, %cst_2, %cst_0, %cst_1, %cst_5, %cst_5, %cst_5, %cst, %cst, %cst_0, %cst_5, %cst_1, %cst_1, %cst_5, %cst_2, %cst_1, %cst_0, %cst_0, %cst_2, %cst_0, %cst_5, %cst_0, %cst, %cst_2, %cst_1, %cst_2, %cst_0, %cst_1, %cst_1, %cst_2, %cst_5, %cst_1, %cst_0, %cst_2, %cst, %cst_5, %cst, %cst_0, %cst_2, %cst, %cst, %cst_5, %cst, %cst, %cst_0, %cst_0, %cst_5, %cst, %cst_1, %cst_0, %cst_1, %cst_2, %cst_2, %cst_5, %cst_5, %cst, %cst_0, %cst, %cst_2, %cst_1, %cst_0, %cst_0, %cst_5, %cst, %cst_0, %cst_5, %cst_0, %cst_0, %cst_1, %cst_1, %cst_0, %cst_5, %cst, %cst_0, %cst_1, %cst_0, %cst_0, %cst_2, %cst, %cst_1, %cst_0, %cst_1, %cst_2, %cst_5, %cst_2, %cst, %cst, %cst, %cst, %cst_2, %cst_2, %cst_1, %cst_5, %cst_0, %cst_0, %cst_1, %cst_0, %cst_5, %cst_2, %cst_2, %cst_1, %cst_2, %cst_1, %cst_0, %cst, %cst_0, %cst_5, %cst_5, %cst_2, %cst, %cst_2, %cst_5, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst, %cst_1, %cst_0, %cst_0, %cst, %cst_2, %cst, %cst_2, %cst_2, %cst_2, %cst_2, %cst_1, %cst_1, %cst_0, %cst_5, %cst_1, %cst_1, %cst_5, %cst_1, %cst, %cst_1, %cst, %cst_1, %cst, %cst, %cst_1, %cst_2, %cst_1, %cst_2, %cst_0, %cst_0, %cst_5, %cst_0, %cst, %cst_0, %cst_5, %cst_5, %cst_0, %cst_1, %cst_2, %cst_5, %cst_2, %cst, %cst_5, %cst_0, %cst_0, %cst, %cst_5, %cst_5, %cst_2, %cst_0, %cst_2, %cst_0, %cst_1, %cst, %cst_0, %cst_5, %cst_0, %cst_2, %cst, %cst_0, %cst, %cst, %cst_5, %cst_2, %cst_2, %cst, %cst_5, %cst, %cst_5, %cst_0, %cst_2, %cst, %cst_1, %cst, %cst, %cst_0, %cst_0, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_0, %cst_2, %cst_5, %cst_2, %cst_2, %cst_0, %cst_0, %cst_0, %cst_0, %cst_2, %cst_5, %cst_5, %cst_0, %cst_1, %cst_1, %cst, %cst_2, %cst_0, %cst_1, %cst_1, %cst_2, %cst_1, %cst_5, %cst, %cst_1, %cst_1, %cst, %cst_2, %cst, %cst_5, %cst_2, %cst_0, %cst, %cst_0, %cst, %cst_1, %cst, %cst, %cst, %cst, %cst_1, %cst, %cst_2, %cst_1, %cst_5, %cst_2, %cst_2, %cst, %cst_2, %cst_0, %cst_1, %cst_5, %cst_2, %cst_5, %cst_1, %cst_5, %cst_0, %cst_5, %cst_5, %cst, %cst_2, %cst_5, %cst_0, %cst_1, %cst_5, %cst, %cst_1, %cst_5, %cst_5, %cst_1, %cst_2, %cst_2, %cst_2, %cst, %cst_0, %cst_5, %cst_2, %cst_0, %cst_1, %cst_2, %cst_1, %cst_5, %cst_2, %cst_0, %cst_0, %cst_5, %cst_5, %cst, %cst_5, %cst_1, %cst_2, %cst_0, %cst_2, %cst, %cst_5, %cst_5, %cst_5, %cst_0, %cst_2, %cst_2, %cst, %cst, %cst_5, %cst, %cst_1, %cst_0, %cst_5, %cst_5, %cst_2, %cst_0, %cst_1, %cst, %cst_1, %cst_5, %cst, %cst_2, %cst_0, %cst_2, %cst, %cst, %cst_2, %cst_1, %cst_5, %cst_5, %cst_0, %cst_5, %cst_0, %cst, %cst_2, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst, %cst, %cst_2, %cst_1, %cst_1, %cst_5, %cst_2, %cst_5, %cst_1, %cst_5, %cst, %cst_5, %cst_1, %cst, %cst_5, %cst_1, %cst_0, %cst_5, %cst_0, %cst_5, %cst_0, %cst_5, %cst, %cst, %cst, %cst_1, %cst_2, %cst_1, %cst_5, %cst_0, %cst_2, %cst_2, %cst_1, %cst, %cst_2, %cst_2, %cst_0, %cst_5, %cst_2, %cst_0, %cst_1, %cst_1, %cst_2, %cst_5, %cst, %cst_2, %cst_0, %cst_1, %cst_1, %cst, %cst_2, %cst, %cst_1, %cst_0, %cst_0, %cst_5, %cst_1, %cst_5, %cst_0, %cst, %cst, %cst_5, %cst_1, %cst_5, %cst_5, %cst, %cst_2, %cst_0, %cst_1, %cst, %cst_2, %cst_1, %cst, %cst_2, %cst_5, %cst_5, %cst_0, %cst, %cst_2, %cst_1, %cst_2, %cst_0, %cst_5, %cst_0, %cst_0, %cst, %cst, %cst_1, %cst_1, %cst_1, %cst_2, %cst_1, %cst, %cst_0, %cst_5, %cst_2, %cst_0, %cst_5, %cst_0, %cst_0, %cst_0, %cst_5, %cst_5, %cst_0, %cst_0, %cst_2, %cst_0, %cst_2, %cst_2, %cst_0, %cst, %cst, %cst_5, %cst_2, %cst_0, %cst_5, %cst_5, %cst, %cst_1, %cst_0, %cst_0, %cst_2, %cst_2, %cst, %cst_2, %cst_5, %cst, %cst_1, %cst_0, %cst_1, %cst, %cst_2, %cst_1, %cst_1, %cst_5, %cst, %cst_2, %cst_1, %cst_1, %cst_1, %cst_2, %cst_0, %cst_2, %cst_0, %cst_0, %cst_0, %cst_2, %cst_1, %cst_1, %cst_5, %cst, %cst_0, %cst_2, %cst_1, %cst, %cst, %cst_0, %cst_1, %cst_5, %cst_1, %cst, %cst_0, %cst, %cst_0, %cst_1, %cst, %cst_1, %cst_1, %cst_1, %cst_2, %cst_5, %cst_0, %cst_5, %cst_5, %cst_5, %cst_1, %cst_1, %cst_2, %cst_2, %cst, %cst_2, %cst, %cst_2, %cst_5, %cst_1, %cst_2, %cst_1, %cst, %cst_5, %cst_5, %cst_0, %cst, %cst_5, %cst_0, %cst_1, %cst_0, %cst, %cst, %cst_2, %cst, %cst, %cst, %cst_0, %cst, %cst_2, %cst_1, %cst, %cst_2, %cst_5, %cst, %cst_5, %cst_5, %cst_5, %cst_1, %cst, %cst_5, %cst_5, %cst_0, %cst_5, %cst_1, %cst_2, %cst_2, %cst, %cst, %cst_2, %cst, %cst_2, %cst_5, %cst_2, %cst_1, %cst_1, %cst_0, %cst_0, %cst, %cst_5, %cst_5, %cst_2, %cst, %cst_5, %cst_0, %cst_0, %cst_1, %cst_2, %cst_5, %cst_1, %cst_0, %cst_2, %cst_5, %cst, %cst_0, %cst, %cst_2, %cst_2, %cst_5, %cst_2, %cst_1, %cst_2, %cst_2, %cst_5, %cst_1, %cst_0, %cst_0, %cst_2, %cst_1, %cst_1, %cst, %cst_1, %cst_1, %cst_0, %cst_5, %cst, %cst, %cst_0, %cst_1, %cst_1, %cst, %cst_5, %cst_1, %cst_0, %cst_2, %cst_1, %cst, %cst_0, %cst_5, %cst_1, %cst_0, %cst_0, %cst, %cst_0, %cst_5, %cst_1, %cst_2, %cst, %cst_2, %cst, %cst_5, %cst_1, %cst_0, %cst, %cst_2, %cst, %cst_5, %cst, %cst_5, %cst, %cst_1, %cst_2, %cst, %cst_1, %cst_0, %cst, %cst_2, %cst_0, %cst_2, %cst_0, %cst, %cst, %cst_1, %cst, %cst, %cst_0, %cst_2, %cst, %cst_5, %cst_1, %cst, %cst_5, %cst_2, %cst_2, %cst, %cst_2 : tensor<10x10x10xf16>
    %256 = bufferization.clone %alloc_14 : memref<2xi64> to memref<2xi64>
    %257 = memref.alloca_scope  -> (memref<10x10x10xi64>) {
      %261 = vector.shuffle %252, %101 [2, 4, 5, 6, 7, 9, 10] : vector<1xi16>, vector<10xi16>
      %262 = arith.cmpi sgt, %c401653752_i32, %c401653752_i32 : i32
      %263 = index.maxu %145, %c12
      %264 = index.add %27, %c1
      %265 = arith.divf %cst_0, %cst_0 : f16
      %266 = bufferization.clone %209 : memref<10xi1> to memref<10xi1>
      %267 = scf.while (%arg0 = %cst_1) : (f16) -> f16 {
        %294 = index.mul %132, %97
        %295 = arith.minui %true, %35 : i1
        memref.tensor_store %119, %49 : memref<10xi1>
        %296 = arith.maxf %cst_1, %cst_2 : f16
        %297 = arith.divf %cst_21, %cst_21 : f32
        %298 = vector.insertelement %false, %64[%c8 : index] : vector<2xi1>
        %299 = arith.ceildivsi %c540967278_i64, %c1199528644_i64 : i64
        %300 = math.fma %15, %15, %15 : tensor<5xf16>
        scf.condition(%35) %cst_5 : f16
      } do {
      ^bb0(%arg0: f16):
        %294 = math.floor %cst_5 : f16
        %295 = math.rsqrt %7 : tensor<10xf32>
        %296 = vector.broadcast %false_3 : i1 to vector<2x2xi1>
        %297 = vector.outerproduct %64, %160, %296 {kind = #vector.kind<maxsi>} : vector<2xi1>, vector<2xi1>
        %298 = math.cttz %23 : tensor<i16>
        memref.copy %266, %209 : memref<10xi1> to memref<10xi1>
        %299 = arith.maxf %cst_5, %cst_2 : f16
        %300 = arith.divf %cst_5, %cst_5 : f16
        %301 = arith.ceildivsi %false, %false_4 : i1
        %302 = arith.andi %c540967278_i64, %c1199528644_i64 : i64
        %303 = affine.min affine_map<(d0, d1, d2) -> (d0 ceildiv 4, 0)>(%206, %61, %132)
        %304 = math.floor %15 : tensor<5xf16>
        %305 = vector.maskedload %26[%c0], %80, %81 : memref<5xi32>, vector<10xi1>, vector<10xi32> into vector<10xi32>
        %306 = bufferization.to_tensor %alloc_12 : memref<5xi64>
        %307 = vector.flat_transpose %81 {columns = 5 : i32, rows = 2 : i32} : vector<10xi32> -> vector<10xi32>
        %308 = bufferization.clone %alloc_9 : memref<10x10x10xi64> to memref<10x10x10xi64>
        %309 = tensor.empty() : tensor<i32>
        %310 = math.fpowi %19, %309 : tensor<f32>, tensor<i32>
        scf.yield %cst_1 : f16
      }
      %268 = vector.broadcast %c404776214_i32 : i32 to vector<5xi32>
      %269 = vector.maskedload %alloc_8[%c0], %21, %268 : memref<5xi32>, vector<5xi1>, vector<5xi32> into vector<5xi32>
      %270 = tensor.empty() : tensor<5xi1>
      %mapped_47 = linalg.map ins(%9, %14, %9 : tensor<5xi1>, tensor<5xi1>, tensor<5xi1>) outs(%270 : tensor<5xi1>)
        (%in: i1, %in_49: i1, %in_50: i1) {
          %expanded_51 = tensor.expand_shape %103 [[0], [1], [2, 3]] : tensor<10x10x10xi1> into tensor<10x10x10x1xi1>
          %294 = vector.insert %in, %227 [7] : i1 into vector<10xi1>
          %295 = arith.remsi %c1199528644_i64, %c1199528644_i64 : i64
          %expanded_52 = tensor.expand_shape %9 [[0, 1]] : tensor<5xi1> into tensor<5x1xi1>
          %296 = math.cos %expanded_42 : tensor<10x1xf16>
          %297 = arith.minui %c404776214_i32, %c404776214_i32 : i32
          %298 = arith.shrsi %c1343683170_i32, %c401653752_i32 : i32
          %299 = math.absi %false_30 : i1
          %300 = bufferization.clone %alloc : memref<10x10x10xi32> to memref<10x10x10xi32>
          %301 = arith.muli %c540967278_i64, %c1199528644_i64 : i64
          %302 = bufferization.to_memref %expanded : memref<10x1xi16>
          %303 = arith.ceildivsi %c1343683170_i32, %c401653752_i32 : i32
          bufferization.dealloc_tensor %5 : tensor<5xf32>
          %304 = arith.cmpi ugt, %false, %in : i1
          %305 = arith.shrui %35, %in_49 : i1
          %306 = math.exp2 %collapsed : tensor<100x10xf16>
          %c1_i16 = arith.constant 1 : i16
          %307 = vector.transfer_read %8[%c2], %c1_i16 : tensor<10xi16>, vector<i16>
          %308 = math.cttz %2 : tensor<10xi64>
          %309 = arith.shli %false, %false : i1
          %310 = vector.broadcast %c1199528644_i64 : i64 to vector<10x10xi64>
          %dest_53, %accumulated_value_54 = vector.scan <mul>, %111, %310 {inclusive = true, reduction_dim = 0 : i64} : vector<10x10x10xi64>, vector<10x10xi64>
          %311 = index.add %76, %158
          %312 = math.exp2 %6 : tensor<2xf32>
          %313 = math.atan2 %13, %from_elements_44 : tensor<10x10x10xf16>
          %314 = affine.min affine_map<(d0, d1, d2, d3) -> (d3, d0 - 8, d3, d1 floordiv 8)>(%206, %171, %255, %61)
          %315 = math.log1p %11 : tensor<5xf32>
          %316 = arith.shrsi %c1491804838_i64, %c1491804838_i64 : i64
          %317 = vector.broadcast %264 : index to vector<10xindex>
          vector.scatter %256[%c1] [%317], %227, %140 : memref<2xi64>, vector<10xindex>, vector<10xi1>, vector<10xi64>
          %318 = math.atan2 %expanded_42, %expanded_42 : tensor<10x1xf16>
          %319 = arith.xori %c404776214_i32, %c1343683170_i32 : i32
          %320 = index.maxu %55, %c14
          %321 = arith.remui %c540967278_i64, %c1199528644_i64 : i64
          %322 = index.maxu %78, %243
          %false_55 = arith.constant false
          linalg.yield %false_55 : i1
        }
      %alloc_48 = memref.alloc() : memref<2xi16>
      memref.tensor_store %3, %alloc_48 : memref<2xi16>
      %271 = math.absi %true : i1
      %272 = arith.divf %cst_2, %cst_0 : f16
      %273 = vector.broadcast %c540967278_i64 : i64 to vector<10x10xi64>
      %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<mul>} %140, %111, %273 : vector<10xi64>, vector<10x10x10xi64> into vector<10x10xi64>
      %275 = arith.divf %cst_21, %cst_21 : f32
      %276 = affine.max affine_map<(d0, d1) -> (d1 floordiv 16)>(%27, %42)
      %277 = math.cos %5 : tensor<5xf32>
      %278 = math.exp2 %228 : tensor<5xf16>
      %279 = arith.shrsi %false, %false_30 : i1
      %280 = math.cos %13 : tensor<10x10x10xf16>
      %281 = arith.remsi %false_4, %true : i1
      %282 = math.cos %6 : tensor<2xf32>
      %283 = math.cttz %14 : tensor<5xi1>
      %284 = arith.shrui %false_30, %false_30 : i1
      %285 = bufferization.clone %128 : memref<10xi1> to memref<10xi1>
      %286 = index.mul %55, %c2
      %287 = memref.realloc %26 : memref<5xi32> to memref<10xi32>
      %288 = vector.create_mask %c0, %c12, %c10 : vector<10x10x10xi1>
      %289 = arith.xori %c401653752_i32, %c401653752_i32 : i32
      %290 = math.fma %4, %17, %16 : tensor<10xf16>
      %291 = arith.ori %c1199528644_i64, %c1199528644_i64 : i64
      %292 = affine.max affine_map<(d0, d1) -> (d0 - (d0 + d1) mod 16, -((d0 + d1) ceildiv 128), ((-((d0 + d1) ceildiv 128)) mod 16) floordiv 16, d1)>(%c3, %94)
      %293 = arith.subi %c404776214_i32, %c1343683170_i32 : i32
      memref.alloca_scope.return %alloc_9 : memref<10x10x10xi64>
    }
    %258 = tensor.empty() : tensor<10x10x10xi1>
    %259 = linalg.copy ins(%1 : tensor<10x10x10xi1>) outs(%258 : tensor<10x10x10xi1>) -> tensor<10x10x10xi1>
    %alloc_45 = memref.alloc() : memref<5xi64>
    linalg.transpose ins(%18 : tensor<5xi64>) outs(%alloc_45 : memref<5xi64>) permutation = [0] 
    %alloc_46 = memref.alloc() : memref<f32>
    linalg.reduce ins(%7 : tensor<10xf32>) outs(%alloc_46 : memref<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        %261 = arith.shrsi %c1199528644_i64, %c1199528644_i64 : i64
        %262 = vector.broadcast %97 : index to vector<5xindex>
        %263 = vector.broadcast %c401653752_i32 : i32 to vector<5xi32>
        vector.scatter %alloc[%c0, %c8, %c2] [%262], %21, %263 : memref<10x10x10xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
        %264 = math.powf %7, %7 : tensor<10xf32>
        %265 = math.cos %11 : tensor<5xf32>
        %266 = bufferization.to_tensor %alloc_10 : memref<5xi64>
        %267 = arith.cmpi ugt, %c1199528644_i64, %c1199528644_i64 : i64
        %from_elements_47 = tensor.from_elements %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c404776214_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c404776214_i32, %c401653752_i32, %c1343683170_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c404776214_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32, %c401653752_i32, %c401653752_i32, %c1343683170_i32, %c1343683170_i32, %c401653752_i32 : tensor<10x10x10xi32>
        %alloc_48 = memref.alloc() : memref<10x1xf16>
        memref.tensor_store %expanded_42, %alloc_48 : memref<10x1xf16>
        %cst_49 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_49 : f32
      }
    scf.parallel (%arg0) = (%c5) to (%243) step (%c10) {
      %261 = bufferization.clone %49 : memref<10xi1> to memref<10xi1>
      %262 = arith.remsi %false, %false : i1
      %263 = vector.bitcast %129 : vector<10xi16> to vector<10xf16>
      %264 = vector.reduction <xor>, %80 : vector<10xi1> into i1
      %265 = vector.insertelement %true, %64[%255 : index] : vector<2xi1>
      %266 = vector.shuffle %53, %53 [2, 4, 5, 7] : vector<5xf32>, vector<5xf32>
      %267 = math.tan %11 : tensor<5xf32>
      %cast_47 = tensor.cast %from_elements_44 : tensor<10x10x10xf16> to tensor<?x?x?xf16>
      %268 = vector.flat_transpose %160 {columns = 1 : i32, rows = 2 : i32} : vector<2xi1> -> vector<2xi1>
      %alloc_48 = memref.alloc() : memref<10xi64>
      memref.tensor_store %2, %alloc_48 : memref<10xi64>
      %269 = arith.andi %false, %false_4 : i1
      %collapsed_49 = tensor.collapse_shape %1 [[0, 1], [2]] : tensor<10x10x10xi1> into tensor<100x10xi1>
      %270 = math.atan2 %cst_1, %cst_5 : f16
      %271 = math.absi %23 : tensor<i16>
      %from_elements_50 = tensor.from_elements %c-3927_i16, %c-3927_i16 : tensor<2xi16>
      %272 = arith.andi %c540967278_i64, %c1491804838_i64 : i64
      scf.yield
    }
    %260 = affine.vector_load %alloc_8[%157] : memref<5xi32>, vector<2xi32>
    affine.vector_store %53, %alloc_46[] : memref<f32>, vector<5xf32>
    vector.print %21 : vector<5xi1>
    vector.print %37 : vector<10x10x10xi1>
    vector.print %53 : vector<5xf32>
    vector.print %54 : vector<5xf32>
    vector.print %63 : vector<2xi32>
    vector.print %64 : vector<2xi1>
    vector.print %65 : vector<2xi32>
    vector.print %79 : vector<10xf16>
    vector.print %80 : vector<10xi1>
    vector.print %81 : vector<10xi32>
    vector.print %82 : vector<10xf16>
    vector.print %84 : vector<10x10x10xi1>
    vector.print %101 : vector<10xi16>
    vector.print %111 : vector<10x10x10xi64>
    vector.print %129 : vector<10xi16>
    vector.print %140 : vector<10xi64>
    vector.print %160 : vector<2xi1>
    vector.print %166 : vector<2xi1>
    vector.print %175 : vector<5xi1>
    vector.print %193 : vector<5xi64>
    vector.print %194 : vector<5xi64>
    vector.print %205 : vector<10x10x10xi1>
    vector.print %227 : vector<10xi1>
    vector.print %252 : vector<1xi16>
    vector.print %260 : vector<2xi32>
    vector.print %c540967278_i64 : i64
    vector.print %false : i1
    vector.print %cst : f16
    vector.print %cst_0 : f16
    vector.print %c1491804838_i64 : i64
    vector.print %cst_1 : f16
    vector.print %c404776214_i32 : i32
    vector.print %cst_2 : f16
    vector.print %false_3 : i1
    vector.print %true : i1
    vector.print %c1199528644_i64 : i64
    vector.print %c401653752_i32 : i32
    vector.print %false_4 : i1
    vector.print %c1343683170_i32 : i32
    vector.print %c-3927_i16 : i16
    vector.print %cst_5 : f16
    vector.print %cst_21 : f32
    vector.print %35 : i1
    vector.print %false_30 : i1
    return
  }
}
