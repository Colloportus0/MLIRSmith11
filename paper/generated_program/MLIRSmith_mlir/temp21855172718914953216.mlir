module {
  func.func @func1() -> i1 {
    %cst = arith.constant 0x4DA2A0CD : f32
    %false = arith.constant false
    %c6246_i16 = arith.constant 6246 : i16
    %cst_0 = arith.constant 4.334240e+06 : f32
    %c923826954_i64 = arith.constant 923826954 : i64
    %c-2040_i16 = arith.constant -2040 : i16
    %true = arith.constant true
    %c1036678537_i64 = arith.constant 1036678537 : i64
    %cst_1 = arith.constant 1.78327514E+9 : f32
    %true_2 = arith.constant true
    %cst_3 = arith.constant 1.20296128E+9 : f32
    %cst_4 = arith.constant 5.836800e+04 : f16
    %c1425659306_i32 = arith.constant 1425659306 : i32
    %c678611975_i64 = arith.constant 678611975 : i64
    %c-15673_i16 = arith.constant -15673 : i16
    %c1220492835_i64 = arith.constant 1220492835 : i64
    %0 = tensor.empty() : tensor<1x1xf32>
    %1 = tensor.empty() : tensor<1x1xf32>
    %2 = tensor.empty() : tensor<1x1xi1>
    %3 = tensor.empty() : tensor<7x7x9xi1>
    %4 = tensor.empty() : tensor<7x7x9xi1>
    %5 = tensor.empty() : tensor<7x7x9xi64>
    %6 = tensor.empty() : tensor<1x9xf32>
    %7 = tensor.empty() : tensor<1x9xi64>
    %8 = tensor.empty() : tensor<1x9xf16>
    %9 = tensor.empty() : tensor<1x1xf16>
    %10 = tensor.empty() : tensor<7x7x9xi1>
    %11 = tensor.empty() : tensor<7x7x9xf16>
    %12 = tensor.empty() : tensor<1x9xi32>
    %13 = tensor.empty() : tensor<1x1xf32>
    %14 = tensor.empty() : tensor<1x9xi64>
    %15 = tensor.empty() : tensor<1x1xi1>
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
    %alloc = memref.alloc() : memref<7x7x9xi1>
    %alloc_5 = memref.alloc() : memref<1x9xi64>
    %alloc_6 = memref.alloc() : memref<7x7x9xi32>
    %alloc_7 = memref.alloc() : memref<1x1xi32>
    %alloc_8 = memref.alloc() : memref<1x9xi64>
    %alloc_9 = memref.alloc() : memref<7x7x9xf32>
    %alloc_10 = memref.alloc() : memref<1x9xi16>
    %alloc_11 = memref.alloc() : memref<1x9xi64>
    %alloc_12 = memref.alloc() : memref<7x7x9xi64>
    %alloc_13 = memref.alloc() : memref<7x7x9xi32>
    %alloc_14 = memref.alloc() : memref<1x1xi1>
    %alloc_15 = memref.alloc() : memref<1x1xi32>
    %alloc_16 = memref.alloc() : memref<1x9xf32>
    %alloc_17 = memref.alloc() : memref<1x9xf16>
    %alloc_18 = memref.alloc() : memref<1x9xi64>
    %alloc_19 = memref.alloc() : memref<1x9xi16>
    %16 = tensor.empty() : tensor<7x7x9xf16>
    %17 = linalg.copy ins(%11 : tensor<7x7x9xf16>) outs(%16 : tensor<7x7x9xf16>) -> tensor<7x7x9xf16>
    %alloc_20 = memref.alloc() : memref<1x1xi1>
    linalg.transpose ins(%alloc_14 : memref<1x1xi1>) outs(%alloc_20 : memref<1x1xi1>) permutation = [1, 0] 
    %18 = tensor.empty() : tensor<7xi64>
    %reduced = linalg.reduce ins(%alloc_12 : memref<7x7x9xi64>) outs(%18 : tensor<7xi64>) dimensions = [1, 2] 
      (%in: i64, %init: i64) {
        %263 = math.atan %cst_4 : f16
        %264 = arith.cmpf ogt, %cst_4, %cst_4 : f16
        %265 = vector.broadcast %c678611975_i64 : i64 to vector<7xi64>
        %266 = vector.broadcast %c678611975_i64 : i64 to vector<7x7xi64>
        %267 = vector.outerproduct %265, %265, %266 {kind = #vector.kind<maxui>} : vector<7xi64>, vector<7xi64>
        %alloc_48 = memref.alloc() : memref<9x7x7xf16>
        %268 = tensor.empty() : tensor<9xf16>
        %alloc_49 = memref.alloc() : memref<7x7xf16>
        %269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_48, %268, %alloc_49 : memref<9x7x7xf16>, tensor<9xf16>, memref<7x7xf16>) outs(%11 : tensor<7x7x9xf16>) {
        ^bb0(%in_51: f16, %in_52: f16, %in_53: f16, %out: f16):
          %273 = arith.floordivsi %c-15673_i16, %c-2040_i16 : i16
          %274 = math.log %in_52 : f16
          %inserted_54 = tensor.insert %cst_4 into %9[%c0, %c0] : tensor<1x1xf16>
          %275 = math.ipowi %c923826954_i64, %c1036678537_i64 : i64
          %276 = arith.addi %c678611975_i64, %c1036678537_i64 : i64
          %277 = vector.broadcast %c1036678537_i64 : i64 to vector<7xi64>
          %278 = vector.matrix_multiply %277, %277 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi64>, vector<7xi64>) -> vector<1xi64>
          %279 = arith.remsi %c1220492835_i64, %c1220492835_i64 : i64
          %280 = vector.create_mask %c15, %c8 : vector<1x9xi1>
          %281 = arith.ori %c923826954_i64, %c923826954_i64 : i64
          %282 = math.cttz %c6246_i16 : i16
          %283 = index.mul %c9, %c13
          %284 = bufferization.to_tensor %alloc_12 : memref<7x7x9xi64>
          %285 = bufferization.to_memref %8 : memref<1x9xf16>
          %286 = math.ipowi %c923826954_i64, %init : i64
          %287 = math.round %11 : tensor<7x7x9xf16>
          %288 = arith.andi %c-2040_i16, %c6246_i16 : i16
          %289 = arith.shli %c923826954_i64, %c1220492835_i64 : i64
          %extracted_55 = tensor.extract %284[%c1, %c6, %c4] : tensor<7x7x9xi64>
          %290 = vector.create_mask %c2, %c0 : vector<1x1xi1>
          %291 = arith.addi %c923826954_i64, %in : i64
          %292 = math.atan %1 : tensor<1x1xf32>
          %293 = math.tanh %9 : tensor<1x1xf16>
          %294 = arith.minf %cst_1, %cst_0 : f32
          %295 = arith.minsi %c1425659306_i32, %c1425659306_i32 : i32
          %296 = vector.shuffle %277, %278 [0, 1, 2, 3, 4, 5] : vector<7xi64>, vector<1xi64>
          %splat = tensor.splat %c6246_i16 : tensor<1x9xi16>
          affine.store %false, %alloc_20[%c1, %c14] : memref<1x1xi1>
          %297 = memref.load %alloc[%c6, %c3, %c3] : memref<7x7x9xi1>
          %298 = math.roundeven %13 : tensor<1x1xf32>
          %299 = arith.andi %false, %true : i1
          %300 = arith.remf %out, %in_52 : f16
          %301 = affine.load %285[%c11, %c7] : memref<1x9xf16>
          linalg.yield %out : f16
        } -> tensor<7x7x9xf16>
        %270 = math.round %cst_4 : f16
        %271 = memref.load %alloc_17[%c0, %c0] : memref<1x9xf16>
        %272 = vector.load %alloc[%c4, %c2, %c8] : memref<7x7x9xi1>, vector<7x7x9xi1>
        %rank_50 = tensor.rank %8 : tensor<1x9xf16>
        %c0_i64 = arith.constant 0 : i64
        linalg.yield %c0_i64 : i64
      }
    scf.parallel (%arg0) = (%c4) to (%c6) step (%c15) {
      %263 = scf.execute_region -> memref<1x9xi16> {
        %280 = vector.broadcast %c1220492835_i64 : i64 to vector<9xi64>
        %281 = vector.insertelement %c923826954_i64, %280[%arg0 : index] : vector<9xi64>
        %282 = vector.matrix_multiply %280, %280 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
        %283 = math.round %17 : tensor<7x7x9xf16>
        memref.copy %alloc_14, %alloc_20 : memref<1x1xi1> to memref<1x1xi1>
        %284 = vector.bitcast %282 : vector<1xi64> to vector<1xi64>
        %285 = arith.ori %c-15673_i16, %c6246_i16 : i16
        %286 = vector.insertelement %c1036678537_i64, %282[%c13 : index] : vector<1xi64>
        %287 = math.round %9 : tensor<1x1xf16>
        %288 = tensor.empty() : tensor<7x7x9xi32>
        %289 = math.fpowi %16, %288 : tensor<7x7x9xf16>, tensor<7x7x9xi32>
        %inserted_49 = tensor.insert %c1425659306_i32 into %12[%c0, %c4] : tensor<1x9xi32>
        %290 = math.expm1 %13 : tensor<1x1xf32>
        %291 = vector.bitcast %282 : vector<1xi64> to vector<1xi64>
        memref.copy %alloc_14, %alloc_20 : memref<1x1xi1> to memref<1x1xi1>
        %292 = index.maxu %c0, %c8
        %293 = math.atan %6 : tensor<1x9xf32>
        %294 = vector.transpose %280, [0] : vector<9xi64> to vector<9xi64>
        scf.yield %alloc_10 : memref<1x9xi16>
      }
      %264 = arith.minsi %c-15673_i16, %c6246_i16 : i16
      memref.assume_alignment %alloc_15, 1 : memref<1x1xi32>
      %265 = arith.cmpf uno, %cst, %cst_1 : f32
      %266 = bufferization.to_memref %4 : memref<7x7x9xi1>
      %267 = vector.broadcast %c678611975_i64 : i64 to vector<1x1xi64>
      %268 = tensor.empty() : tensor<1x1xi1>
      %269 = linalg.matmul ins(%15, %2 : tensor<1x1xi1>, tensor<1x1xi1>) outs(%268 : tensor<1x1xi1>) -> tensor<1x1xi1>
      %270 = index.divu %arg0, %c9
      %alloc_48 = memref.alloc() : memref<7xi1>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_48 : memref<7xi1>) outs(%3 : tensor<7x7x9xi1>) {
      ^bb0(%in: i1, %out: i1):
        %280 = math.round %cst_1 : f32
        %alloca_49 = memref.alloca() : memref<7x7x9xi32>
        %281 = math.exp %6 : tensor<1x9xf32>
        %282 = arith.maxsi %c1220492835_i64, %c1036678537_i64 : i64
        %false_50 = index.bool.constant false
        %283 = math.round %16 : tensor<7x7x9xf16>
        %284 = vector.broadcast %c-2040_i16 : i16 to vector<1x9xi16>
        %285 = math.sqrt %8 : tensor<1x9xf16>
        %cst_51 = arith.constant 1.000000e+00 : f32
        %cst_52 = arith.constant 0.000000e+00 : f32
        %286 = vector.transfer_read %6[%c1, %c8], %cst_52 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<1x9xf32>, vector<7xf32>
        %287 = index.mul %c3, %c1
        %288 = affine.load %alloc_8[%c12, %c11] : memref<1x9xi64>
        %289 = math.atan %11 : tensor<7x7x9xf16>
        %290 = arith.remsi %c6246_i16, %c6246_i16 : i16
        %291 = math.log %cst_4 : f16
        %292 = arith.minsi %out, %true_2 : i1
        %293 = math.round %cst_51 : f32
        %294 = index.sizeof
        %295 = tensor.empty() : tensor<9x16xi64>
        %296 = tensor.empty() : tensor<1x16xi64>
        %297 = linalg.matmul ins(%14, %295 : tensor<1x9xi64>, tensor<9x16xi64>) outs(%296 : tensor<1x16xi64>) -> tensor<1x16xi64>
        %298 = vector.extract_strided_slice %284 {offsets = [0], sizes = [1], strides = [1]} : vector<1x9xi16> to vector<1x9xi16>
        %alloc_53 = memref.alloc() : memref<9x9xi64>
        %299 = tensor.empty() : tensor<1x9xi64>
        %300 = linalg.matmul ins(%14, %alloc_53 : tensor<1x9xi64>, memref<9x9xi64>) outs(%299 : tensor<1x9xi64>) -> tensor<1x9xi64>
        %301 = vector.transpose %284, [0, 1] : vector<1x9xi16> to vector<1x9xi16>
        %302 = math.ceil %1 : tensor<1x1xf32>
        %303 = math.tan %17 : tensor<7x7x9xf16>
        %304 = vector.transpose %284, [0, 1] : vector<1x9xi16> to vector<1x9xi16>
        %rank_54 = tensor.rank %11 : tensor<7x7x9xf16>
        %305 = math.fpowi %cst_0, %c1425659306_i32 : f32, i32
        %306 = math.log10 %1 : tensor<1x1xf32>
        %307 = arith.addi %c678611975_i64, %288 : i64
        %308 = index.sub %270, %c4
        %from_elements_55 = tensor.from_elements %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32 : tensor<7x7x9xi32>
        %309 = tensor.empty() : tensor<1x1xf32>
        %310 = linalg.matmul ins(%13, %0 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%309 : tensor<1x1xf32>) -> tensor<1x1xf32>
        %311 = vector.broadcast %c6246_i16 : i16 to vector<16xi16>
        %312 = vector.reduction <mul>, %311 : vector<16xi16> into i16
        linalg.yield %false : i1
      } -> tensor<7x7x9xi1>
      %272 = math.exp %9 : tensor<1x1xf16>
      %273 = math.tanh %8 : tensor<1x9xf16>
      %274 = vector.broadcast %c1425659306_i32 : i32 to vector<9xi32>
      %275 = vector.insertelement %c1425659306_i32, %274[%c8 : index] : vector<9xi32>
      %c14236_i16 = arith.constant 14236 : i16
      %276 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
      %277 = vector.fma %276, %276, %276 : vector<1x1xf32>
      %278 = affine.load %alloc_14[%c5, %c15] : memref<1x1xi1>
      %279 = index.divu %c2, %c7
      scf.yield
    }
    %19 = affine.vector_load %alloc_8[%c11, %c0] : memref<1x9xi64>, vector<9xi64>
    affine.vector_store %19, %alloc_5[%c15, %c1] : memref<1x9xi64>, vector<9xi64>
    %20 = tensor.empty() : tensor<7xi64>
    %21 = tensor.empty() : tensor<i64>
    %22 = linalg.dot ins(%reduced, %20 : tensor<7xi64>, tensor<7xi64>) outs(%21 : tensor<i64>) -> tensor<i64>
    %23 = tensor.empty() : tensor<7x7x9xi1>
    %mapped = linalg.map ins(%4 : tensor<7x7x9xi1>) outs(%23 : tensor<7x7x9xi1>)
      (%in: i1) {
        %263 = math.log10 %0 : tensor<1x1xf32>
        %264 = arith.maxui %true, %true : i1
        %265 = arith.addi %c-15673_i16, %c-15673_i16 : i16
        %266 = math.round %9 : tensor<1x1xf16>
        %267 = index.ceildivs %c14, %c9
        %268 = arith.maxsi %c-2040_i16, %c-15673_i16 : i16
        memref.copy %alloc_11, %alloc_5 : memref<1x9xi64> to memref<1x9xi64>
        %alloca_48 = memref.alloca() : memref<1x1xi64>
        %269 = affine.max affine_map<(d0, d1) -> (0, -1, 0, 128)>(%c4, %c15)
        %270 = arith.floordivsi %c1036678537_i64, %c678611975_i64 : i64
        %271 = math.round %11 : tensor<7x7x9xf16>
        %272 = index.mul %c4, %c10
        %273 = math.atan %8 : tensor<1x9xf16>
        %274 = vector.transpose %19, [0] : vector<9xi64> to vector<9xi64>
        %275 = tensor.empty() : tensor<1x9xf32>
        %mapped_49 = linalg.map ins(%6, %6, %6 : tensor<1x9xf32>, tensor<1x9xf32>, tensor<1x9xf32>) outs(%275 : tensor<1x9xf32>)
          (%in_53: f32, %in_54: f32, %in_55: f32) {
            memref.assume_alignment %alloc_17, 8 : memref<1x9xf16>
            %alloca_56 = memref.alloca() : memref<7x7x9xf16>
            %289 = arith.shrui %true_2, %in : i1
            %290 = math.tanh %in_55 : f32
            %291 = arith.maxsi %true, %in : i1
            %292 = vector.matrix_multiply %19, %19 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
            %293 = index.casts %272 : index to i32
            %294 = arith.maxsi %false, %false : i1
            %295 = vector.broadcast %cst_1 : f32 to vector<7x7x9xf32>
            %296 = vector.fma %295, %295, %295 : vector<7x7x9xf32>
            %297 = math.log10 %275 : tensor<1x9xf32>
            %298 = vector.create_mask %c6, %c1 : vector<1x9xi1>
            %299 = math.fpowi %cst_1, %c1425659306_i32 : f32, i32
            %alloc_57 = memref.alloc() : memref<9xi32>
            %300 = memref.realloc %alloc_57 : memref<9xi32> to memref<7xi32>
            %301 = index.maxs %272, %c1
            %alloc_58 = memref.alloc() : memref<1x9xi1>
            %alloca_59 = memref.alloca() : memref<1x9xf16>
            %302 = index.ceildivs %c1, %c10
            %303 = index.ceildivs %c5, %c8
            %304 = math.rsqrt %275 : tensor<1x9xf32>
            %305 = tensor.empty() : tensor<9x9xf32>
            %306 = tensor.empty() : tensor<1x9xf32>
            %307 = linalg.matmul ins(%6, %305 : tensor<1x9xf32>, tensor<9x9xf32>) outs(%306 : tensor<1x9xf32>) -> tensor<1x9xf32>
            %308 = vector.shuffle %19, %19 [0, 1, 2, 3, 4, 5, 6, 9, 10, 12, 15, 17] : vector<9xi64>, vector<9xi64>
            %309 = arith.minsi %c1036678537_i64, %c1036678537_i64 : i64
            %310 = index.divu %c8, %c1
            %311 = index.divs %c11, %c13
            %312 = vector.transpose %296, [2, 0, 1] : vector<7x7x9xf32> to vector<9x7x7xf32>
            %313 = math.ipowi %c-2040_i16, %c-2040_i16 : i16
            %314 = vector.insertelement %c1220492835_i64, %19[%269 : index] : vector<9xi64>
            %315 = vector.load %alloc[%c2, %c5, %c5] : memref<7x7x9xi1>, vector<1x9xi1>
            %316 = vector.load %alloc_7[%c0, %c0] : memref<1x1xi32>, vector<1x9xi32>
            %alloc_60 = memref.alloc() : memref<1x1xf16>
            %317 = math.log %17 : tensor<7x7x9xf16>
            %318 = bufferization.clone %alloc_11 : memref<1x9xi64> to memref<1x9xi64>
            %cst_61 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_61 : f32
          }
        %276 = index.divu %c10, %c7
        %inserted_50 = tensor.insert %true into %15[%c0, %c0] : tensor<1x1xi1>
        %277 = math.ipowi %7, %7 : tensor<1x9xi64>
        %generated = tensor.generate %c1, %269 {
        ^bb0(%arg0: index, %arg1: index):
          %289 = bufferization.to_memref %14 : memref<1x9xi64>
          %290 = vector.broadcast %c5 : index to vector<7xindex>
          %291 = vector.broadcast %true_2 : i1 to vector<7xi1>
          %292 = vector.broadcast %c1425659306_i32 : i32 to vector<7xi32>
          vector.scatter %alloc_13[%c4, %c2, %c2] [%290], %291, %292 : memref<7x7x9xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
          %293 = math.exp %11 : tensor<7x7x9xf16>
          %294 = vector.broadcast %c1 : index to vector<1xindex>
          %295 = vector.broadcast %true : i1 to vector<1xi1>
          vector.scatter %alloc_14[%c0, %c0] [%294], %295, %295 : memref<1x1xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
          tensor.yield %c678611975_i64 : i64
        } : tensor<?x?xi64>
        %278 = math.absf %16 : tensor<7x7x9xf16>
        memref.copy %alloc_18, %alloc_11 : memref<1x9xi64> to memref<1x9xi64>
        %279 = arith.muli %c-2040_i16, %c-2040_i16 : i16
        %280 = math.atan %cst_0 : f32
        %281 = arith.andi %c678611975_i64, %c678611975_i64 : i64
        %282 = arith.minsi %true_2, %true_2 : i1
        %283 = math.atan %6 : tensor<1x9xf32>
        %alloca_51 = memref.alloca() : memref<7x7x9xf16>
        %284 = index.maxs %c4, %c12
        %285 = memref.load %alloc_5[%c0, %c3] : memref<1x9xi64>
        %286 = vector.broadcast %false : i1 to vector<1x9xi1>
        %287 = math.ipowi %c1220492835_i64, %c1220492835_i64 : i64
        %288 = math.tan %6 : tensor<1x9xf32>
        %true_52 = arith.constant true
        linalg.yield %true_52 : i1
      }
    %24 = arith.ori %c6246_i16, %c-2040_i16 : i16
    %25 = math.round %cst_1 : f32
    %26 = vector.splat %c14 : vector<1x9xindex>
    %27 = math.fpowi %cst_1, %c1425659306_i32 : f32, i32
    %28 = memref.load %alloc_6[%c1, %c3, %c2] : memref<7x7x9xi32>
    %29 = math.floor %cst_1 : f32
    %30 = vector.broadcast %cst_4 : f16 to vector<7x16xf16>
    %31 = vector.broadcast %cst_4 : f16 to vector<7xf16>
    %dest, %accumulated_value = vector.scan <minf>, %30, %31 {inclusive = false, reduction_dim = 1 : i64} : vector<7x16xf16>, vector<7xf16>
    %32 = vector.flat_transpose %19 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
    %33 = tensor.empty() : tensor<1x9xi64>
    %mapped_21 = linalg.map ins(%7, %14 : tensor<1x9xi64>, tensor<1x9xi64>) outs(%33 : tensor<1x9xi64>)
      (%in: i64, %in_48: i64) {
        %263 = tensor.empty() : tensor<9x7xi64>
        %264 = tensor.empty() : tensor<1x7xi64>
        %265 = linalg.matmul ins(%14, %263 : tensor<1x9xi64>, tensor<9x7xi64>) outs(%264 : tensor<1x7xi64>) -> tensor<1x7xi64>
        %rank_49 = tensor.rank %21 : tensor<i64>
        %266 = vector.flat_transpose %32 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %267 = arith.divf %cst, %cst : f32
        %from_elements_50 = tensor.from_elements %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c6246_i16 : tensor<1x9xi16>
        %268 = vector.insertelement %in, %266[%c7 : index] : vector<9xi64>
        %inserted_51 = tensor.insert %c923826954_i64 into %18[%c3] : tensor<7xi64>
        %269 = arith.shrsi %in_48, %c678611975_i64 : i64
        %270 = bufferization.to_memref %9 : memref<1x1xf16>
        %271 = vector.insert %c1220492835_i64, %19 [6] : i64 into vector<9xi64>
        %272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%3 : tensor<7x7x9xi1>) {
        ^bb0(%out: i1):
          %296 = tensor.empty() : tensor<1x9xf16>
          %297 = arith.divf %cst_1, %cst_3 : f32
          %cast = tensor.cast %15 : tensor<1x1xi1> to tensor<?x?xi1>
          %298 = math.log %6 : tensor<1x9xf32>
          %299 = math.atan %0 : tensor<1x1xf32>
          %300 = arith.minsi %c1425659306_i32, %c1425659306_i32 : i32
          %301 = math.log10 %11 : tensor<7x7x9xf16>
          %302 = index.floordivs %c2, %c4
          %303 = arith.addf %cst_0, %cst_1 : f32
          %304 = bufferization.to_memref %11 : memref<7x7x9xf16>
          %305 = math.exp %9 : tensor<1x1xf16>
          %306 = tensor.empty() : tensor<9x9xf32>
          %307 = tensor.empty() : tensor<1x9xf32>
          %308 = linalg.matmul ins(%6, %306 : tensor<1x9xf32>, tensor<9x9xf32>) outs(%307 : tensor<1x9xf32>) -> tensor<1x9xf32>
          %309 = math.ctlz %12 : tensor<1x9xi32>
          %310 = arith.remf %cst_3, %cst_3 : f32
          %311 = index.castu %in_48 : i64 to index
          %312 = index.sizeof
          %313 = memref.load %alloc_17[%c0, %c7] : memref<1x9xf16>
          %314 = arith.minsi %c-2040_i16, %c-15673_i16 : i16
          %315 = bufferization.clone %alloc_14 : memref<1x1xi1> to memref<1x1xi1>
          %false_55 = index.bool.constant false
          %316 = index.ceildivs %rank_49, %311
          %from_elements_56 = tensor.from_elements %c1036678537_i64 : tensor<1x1xi64>
          %317 = memref.load %315[%c0, %c0] : memref<1x1xi1>
          %318 = vector.broadcast %c13 : index to vector<1xindex>
          %319 = vector.broadcast %true_2 : i1 to vector<1xi1>
          %320 = vector.broadcast %c1425659306_i32 : i32 to vector<1xi32>
          vector.scatter %alloc_6[%c0, %c1, %c5] [%318], %319, %320 : memref<7x7x9xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
          %collapsed_57 = tensor.collapse_shape %16 [[0, 1], [2]] : tensor<7x7x9xf16> into tensor<49x9xf16>
          %321 = arith.maxsi %c1220492835_i64, %in : i64
          %322 = index.sizeof
          %323 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %266, %32, %c923826954_i64 : vector<9xi64>, vector<9xi64> into i64
          %324 = vector.splat %c5 : vector<1x9xindex>
          %true_58 = index.bool.constant true
          %from_elements_59 = tensor.from_elements %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-2040_i16 : tensor<1x9xi16>
          %325 = arith.addi %c923826954_i64, %in_48 : i64
          linalg.yield %false : i1
        } -> tensor<7x7x9xi1>
        %273 = math.log2 %0 : tensor<1x1xf32>
        %alloc_52 = memref.alloc() : memref<7x7xf16>
        %274 = tensor.empty() : tensor<9xf16>
        %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52, %alloc_52, %274 : memref<7x7xf16>, memref<7x7xf16>, tensor<9xf16>) outs(%11 : tensor<7x7x9xf16>) {
        ^bb0(%in_55: f16, %in_56: f16, %in_57: f16, %out: f16):
          %296 = math.tan %16 : tensor<7x7x9xf16>
          %297 = math.cttz %in_48 : i64
          %298 = arith.maxui %true, %true_2 : i1
          memref.assume_alignment %alloc_5, 8 : memref<1x9xi64>
          %299 = math.roundeven %cst_4 : f16
          %300 = index.ceildivs %c7, %c10
          %301 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c15, %c10, %c15)
          %302 = index.castu %c8 : index to i32
          %303 = arith.cmpf olt, %cst_0, %cst_3 : f32
          %304 = index.sizeof
          %305 = math.tan %9 : tensor<1x1xf16>
          %306 = vector.broadcast %c1425659306_i32 : i32 to vector<1x1xi32>
          %307 = math.ipowi %from_elements_50, %from_elements_50 : tensor<1x9xi16>
          %308 = arith.minsi %c678611975_i64, %in_48 : i64
          %309 = math.ctpop %c-2040_i16 : i16
          %310 = index.divs %rank_49, %c15
          %311 = index.divu %c5, %c0
          %312 = vector.transpose %32, [0] : vector<9xi64> to vector<9xi64>
          %313 = math.ceil %0 : tensor<1x1xf32>
          %314 = math.tan %17 : tensor<7x7x9xf16>
          %315 = vector.matrix_multiply %266, %32 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
          %from_elements_58 = tensor.from_elements %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32 : tensor<7x7x9xi32>
          %316 = arith.floordivsi %c-2040_i16, %c-15673_i16 : i16
          %317 = arith.remf %in_55, %out : f16
          %alloc_59 = memref.alloc() : memref<1x9xf16>
          memref.copy %alloc_17, %alloc_59 : memref<1x9xf16> to memref<1x9xf16>
          %318 = math.roundeven %0 : tensor<1x1xf32>
          %319 = arith.shrsi %true, %true : i1
          %320 = math.absf %11 : tensor<7x7x9xf16>
          %321 = math.copysign %out, %out : f16
          %322 = math.round %cst_1 : f32
          %323 = math.tanh %6 : tensor<1x9xf32>
          %324 = math.expm1 %11 : tensor<7x7x9xf16>
          linalg.yield %cst_4 : f16
        } -> tensor<7x7x9xf16>
        %276 = math.ctlz %18 : tensor<7xi64>
        %277 = math.log10 %cst_4 : f16
        %278 = tensor.empty() : tensor<1x1xi32>
        %279 = math.fpowi %0, %278 : tensor<1x1xf32>, tensor<1x1xi32>
        %c0_i64 = arith.constant 0 : i64
        %280 = vector.transfer_read %5[%c0, %c15, %c15], %c0_i64 : tensor<7x7x9xi64>, vector<i64>
        %281 = vector.broadcast %c1425659306_i32 : i32 to vector<7x7x9xi32>
        %282 = vector.transpose %281, [0, 2, 1] : vector<7x7x9xi32> to vector<7x9x7xi32>
        %inserted_53 = tensor.insert %in into %5[%c5, %c5, %c7] : tensor<7x7x9xi64>
        %283 = arith.maxui %c0_i64, %c1220492835_i64 : i64
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %266, %32, %c923826954_i64 : vector<9xi64>, vector<9xi64> into i64
        %285 = math.ctlz %5 : tensor<7x7x9xi64>
        %286 = bufferization.to_memref %15 : memref<1x1xi1>
        %287 = math.absf %cst : f32
        %288 = memref.atomic_rmw addf %cst_1, %alloc_9[%c0, %c1, %c1] : (f32, memref<7x7x9xf32>) -> f32
        %289 = index.ceildivs %c1, %c15
        %290 = math.tanh %0 : tensor<1x1xf32>
        %291 = arith.remsi %c0_i64, %c1220492835_i64 : i64
        %292 = tensor.empty() : tensor<7xi1>
        %293 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%4, %292 : tensor<7x7x9xi1>, tensor<7xi1>) outs(%3 : tensor<7x7x9xi1>) {
        ^bb0(%in_55: i1, %in_56: i1, %out: i1):
          %296 = vector.create_mask %c0, %c2 : vector<1x9xi1>
          %297 = vector.matrix_multiply %266, %266 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
          %298 = arith.maxsi %in, %in : i64
          %299 = math.roundeven %8 : tensor<1x9xf16>
          %300 = math.log2 %0 : tensor<1x1xf32>
          %collapsed_57 = tensor.collapse_shape %13 [[0, 1]] : tensor<1x1xf32> into tensor<1xf32>
          %301 = memref.load %270[%c0, %c0] : memref<1x1xf16>
          %302 = math.fma %1, %1, %1 : tensor<1x1xf32>
          %303 = index.mul %c0, %c2
          %304 = vector.insertelement %c923826954_i64, %19[%289 : index] : vector<9xi64>
          %305 = arith.maxui %true_2, %false : i1
          %306 = arith.andi %in_48, %c678611975_i64 : i64
          %307 = vector.broadcast %c11 : index to vector<9xindex>
          %308 = vector.broadcast %in_56 : i1 to vector<9xi1>
          vector.scatter %alloc_5[%c0, %c1] [%307], %308, %32 : memref<1x9xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
          %309 = vector.matrix_multiply %297, %297 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
          %310 = math.fma %13, %1, %0 : tensor<1x1xf32>
          %311 = affine.load %alloc_14[%c11, %c9] : memref<1x1xi1>
          %312 = math.ipowi %in, %c678611975_i64 : i64
          %313 = math.copysign %cst_0, %cst_1 : f32
          %splat = tensor.splat %cst_1 : tensor<1x9xf32>
          %314 = arith.maxui %in_48, %in_48 : i64
          %315 = index.divs %c13, %c5
          %316 = arith.maxsi %c1036678537_i64, %c0_i64 : i64
          %317 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %19, %32, %c1036678537_i64 : vector<9xi64>, vector<9xi64> into i64
          %318 = arith.floordivsi %true_2, %311 : i1
          %319 = arith.minsi %c1220492835_i64, %c923826954_i64 : i64
          %320 = bufferization.clone %270 : memref<1x1xf16> to memref<1x1xf16>
          %321 = math.round %1 : tensor<1x1xf32>
          %322 = memref.load %alloc_11[%c0, %c0] : memref<1x9xi64>
          %323 = math.sqrt %6 : tensor<1x9xf32>
          %324 = memref.load %alloc_16[%c0, %c5] : memref<1x9xf32>
          %325 = math.tan %11 : tensor<7x7x9xf16>
          %326 = math.tan %0 : tensor<1x1xf32>
          linalg.yield %true : i1
        } -> tensor<7x7x9xi1>
        %294 = memref.atomic_rmw maxf %cst_4, %270[%c0, %c0] : (f16, memref<1x1xf16>) -> f16
        %295 = vector.multi_reduction <xor>, %32, %266 [] : vector<9xi64> to vector<9xi64>
        %c0_i64_54 = arith.constant 0 : i64
        linalg.yield %c0_i64_54 : i64
      }
    %inserted = tensor.insert %cst_4 into %9[%c0, %c0] : tensor<1x1xf16>
    scf.index_switch %c5 
    case 1 {
      %splat = tensor.splat %cst : tensor<1x1xf32>
      %263 = tensor.empty() : tensor<1x9xi32>
      %264 = math.round %splat : tensor<1x1xf32>
      %265 = arith.shrsi %true_2, %true : i1
      %266 = arith.minf %cst_4, %cst_4 : f16
      %267 = memref.load %alloc_9[%c5, %c2, %c5] : memref<7x7x9xf32>
      %268 = arith.floordivsi %c6246_i16, %c-2040_i16 : i16
      %269 = math.tan %0 : tensor<1x1xf32>
      %270 = tensor.empty() : tensor<7x7x9xf32>
      %271 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
      %272 = vector.fma %271, %271, %271 : vector<1x1xf32>
      %273 = arith.remf %cst, %cst : f32
      memref.assume_alignment %alloc_10, 16 : memref<1x9xi16>
      scf.index_switch %c4 
      case 1 {
        %inserted_49 = tensor.insert %cst_4 into %8[%c0, %c8] : tensor<1x9xf16>
        %277 = vector.transpose %32, [0] : vector<9xi64> to vector<9xi64>
        %278 = arith.remui %true, %true_2 : i1
        %279 = index.sizeof
        %280 = arith.ori %true, %false : i1
        %alloca_50 = memref.alloca() : memref<7x7x9xi32>
        %281 = math.ctpop %4 : tensor<7x7x9xi1>
        %282 = vector.flat_transpose %19 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %283 = arith.mulf %cst_0, %cst_0 : f32
        %284 = vector.matrix_multiply %32, %282 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
        %285 = math.sqrt %8 : tensor<1x9xf16>
        %286 = arith.remsi %c1425659306_i32, %c1425659306_i32 : i32
        %287 = math.ceil %cst_0 : f32
        %288 = tensor.empty() : tensor<1x1xi32>
        %289 = math.fpowi %9, %288 : tensor<1x1xf16>, tensor<1x1xi32>
        %290 = tensor.empty() : tensor<9x7xi32>
        %291 = tensor.empty() : tensor<1x7xi32>
        %292 = linalg.matmul ins(%12, %290 : tensor<1x9xi32>, tensor<9x7xi32>) outs(%291 : tensor<1x7xi32>) -> tensor<1x7xi32>
        %293 = arith.addi %true, %true : i1
        scf.yield
      }
      case 2 {
        %277 = index.mul %c3, %c11
        %278 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %271, %271, %272 : vector<1x1xf32>, vector<1x1xf32> into vector<1x1xf32>
        %279 = math.atan %8 : tensor<1x9xf16>
        %280 = vector.broadcast %cst : f32 to vector<1xf32>
        %281 = vector.insert %280, %271 [0] : vector<1xf32> into vector<1x1xf32>
        %282 = arith.maxui %c6246_i16, %c6246_i16 : i16
        %283 = math.ipowi %c678611975_i64, %c1220492835_i64 : i64
        %284 = math.exp %cst_1 : f32
        %285 = affine.apply affine_map<(d0, d1, d2) -> ((d2 - d1 + d2 floordiv 16) ceildiv 2)>(%c12, %c4, %c15)
        %286 = bufferization.to_tensor %alloc_15 : memref<1x1xi32>
        %287 = vector.multi_reduction <maxsi>, %32, %19 [] : vector<9xi64> to vector<9xi64>
        %288 = math.atan %cst_0 : f32
        %289 = math.roundeven %270 : tensor<7x7x9xf32>
        %290 = math.tanh %270 : tensor<7x7x9xf32>
        %291 = math.tan %cst_4 : f16
        %292 = tensor.empty() : tensor<1x9xf32>
        %extracted_49 = tensor.extract %12[%c0, %c8] : tensor<1x9xi32>
        scf.yield
      }
      default {
        %splat_49 = tensor.splat %cst : tensor<7x7x9xf32>
        %277 = math.atan %16 : tensor<7x7x9xf16>
        %278 = arith.floordivsi %c678611975_i64, %c923826954_i64 : i64
        %279 = vector.flat_transpose %32 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %280 = arith.addi %c678611975_i64, %c1220492835_i64 : i64
        %281 = math.rsqrt %cst_1 : f32
        %282 = index.maxs %c8, %c9
        %283 = math.atan %16 : tensor<7x7x9xf16>
        %284 = index.maxs %c6, %c5
        %285 = index.sizeof
        %rank_50 = tensor.rank %17 : tensor<7x7x9xf16>
        %286 = arith.remsi %c1425659306_i32, %c1425659306_i32 : i32
        memref.copy %alloc_5, %alloc_8 : memref<1x9xi64> to memref<1x9xi64>
        %rank_51 = tensor.rank %9 : tensor<1x1xf16>
        %collapsed_52 = tensor.collapse_shape %splat_49 [[0, 1], [2]] : tensor<7x7x9xf32> into tensor<49x9xf32>
        %287 = index.ceildivs %c2, %285
      }
      %274 = tensor.empty() : tensor<1x1xf32>
      %mapped_48 = linalg.map ins(%splat, %13, %0 : tensor<1x1xf32>, tensor<1x1xf32>, tensor<1x1xf32>) outs(%274 : tensor<1x1xf32>)
        (%in: f32, %in_49: f32, %in_50: f32) {
          %277 = vector.shuffle %272, %271 [0] : vector<1x1xf32>, vector<1x1xf32>
          memref.copy %alloc_10, %alloc_19 : memref<1x9xi16> to memref<1x9xi16>
          %278 = vector.flat_transpose %32 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
          %279 = arith.divui %true, %true_2 : i1
          %280 = math.atan %16 : tensor<7x7x9xf16>
          %281 = arith.floordivsi %false, %false : i1
          %282 = tensor.empty() : tensor<1x1xf32>
          %283 = linalg.matmul ins(%0, %13 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%282 : tensor<1x1xf32>) -> tensor<1x1xf32>
          %284 = vector.extract_strided_slice %271 {offsets = [0], sizes = [1], strides = [1]} : vector<1x1xf32> to vector<1x1xf32>
          %285 = arith.remsi %c1036678537_i64, %c1036678537_i64 : i64
          %286 = arith.remsi %c-2040_i16, %c6246_i16 : i16
          %287 = math.ceil %0 : tensor<1x1xf32>
          %cst_51 = arith.constant 1.000000e+00 : f32
          %cst_52 = arith.constant 0.000000e+00 : f32
          %288 = vector.transfer_read %1[%c10, %c7], %cst_52 {permutation_map = affine_map<(d0, d1) -> (0)>} : tensor<1x1xf32>, vector<16xf32>
          %rank_53 = tensor.rank %13 : tensor<1x1xf32>
          %289 = arith.cmpf uge, %cst_3, %cst_1 : f32
          %290 = vector.broadcast %c7 : index to vector<16xindex>
          %291 = vector.broadcast %true_2 : i1 to vector<16xi1>
          %292 = vector.broadcast %c-15673_i16 : i16 to vector<16xi16>
          vector.scatter %alloc_19[%c0, %c3] [%290], %291, %292 : memref<1x9xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
          %293 = arith.minf %cst_1, %cst_1 : f32
          %294 = vector.create_mask %c15, %c1 : vector<1x1xi1>
          %295 = arith.addi %c-15673_i16, %c-2040_i16 : i16
          %296 = math.tan %8 : tensor<1x9xf16>
          %297 = arith.ceildivsi %c1425659306_i32, %c1425659306_i32 : i32
          %298 = tensor.empty() : tensor<7x7x9xf32>
          %299 = math.fma %6, %6, %6 : tensor<1x9xf32>
          %from_elements_54 = tensor.from_elements %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c6246_i16 : tensor<7x7x9xi16>
          %300 = bufferization.to_memref %11 : memref<7x7x9xf16>
          %301 = index.divs %c3, %c2
          %302 = vector.broadcast %cst : f32 to vector<1x9xf32>
          %303 = vector.fma %302, %302, %302 : vector<1x9xf32>
          %304 = arith.andi %c923826954_i64, %c1036678537_i64 : i64
          %305 = index.maxs %c2, %c8
          %306 = affine.apply affine_map<(d0) -> ((d0 * 2) mod 128)>(%c14)
          %307 = math.fpowi %6, %12 : tensor<1x9xf32>, tensor<1x9xi32>
          %308 = vector.broadcast %c7 : index to vector<16xindex>
          %309 = vector.broadcast %true : i1 to vector<16xi1>
          %310 = vector.broadcast %c1425659306_i32 : i32 to vector<16xi32>
          vector.scatter %alloc_15[%c0, %c0] [%308], %309, %310 : memref<1x1xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
          %311 = bufferization.to_memref %splat : memref<1x1xf32>
          %cst_55 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_55 : f32
        }
      %275 = math.fma %13, %13, %13 : tensor<1x1xf32>
      %276 = vector.load %alloc_17[%c0, %c3] : memref<1x9xf16>, vector<1x9xf16>
      scf.yield
    }
    case 2 {
      %263 = math.absi %10 : tensor<7x7x9xi1>
      %264 = index.casts %c6 : index to i32
      %265 = math.log2 %6 : tensor<1x9xf32>
      %266 = index.mul %c1, %c4
      %267 = arith.floordivsi %true, %true_2 : i1
      %268 = vector.extract %32[2] : vector<9xi64>
      %269 = vector.bitcast %19 : vector<9xi64> to vector<9xi64>
      %270 = vector.multi_reduction <minsi>, %269, %32 [] : vector<9xi64> to vector<9xi64>
      %271 = affine.if affine_set<(d0, d1, d2, d3) : (d3 == 0, d3 floordiv 2 == 0)>(%c9, %c1, %c8, %c9) -> memref<1x1xf32> {
        %278 = bufferization.to_memref %8 : memref<1x9xf16>
        %279 = math.copysign %cst_0, %cst_0 : f32
        %280 = arith.divf %cst_0, %cst_1 : f32
        %281 = math.log10 %8 : tensor<1x9xf16>
        %282 = vector.insertelement %c923826954_i64, %19[%c12 : index] : vector<9xi64>
        %283 = index.divu %c14, %c1
        %284 = vector.extract %269[7] : vector<9xi64>
        %285 = math.expm1 %6 : tensor<1x9xf32>
        %alloc_48 = memref.alloc() : memref<1x1xf32>
        affine.yield %alloc_48 : memref<1x1xf32>
      } else {
        %false_48 = index.bool.constant false
        %278 = math.expm1 %0 : tensor<1x1xf32>
        %279 = arith.remui %false_48, %false_48 : i1
        %280 = bufferization.to_tensor %alloc_12 : memref<7x7x9xi64>
        %281 = arith.cmpf false, %cst_0, %cst_1 : f32
        %282 = math.exp2 %6 : tensor<1x9xf32>
        %283 = math.ctpop %c1036678537_i64 : i64
        %284 = vector.broadcast %c6246_i16 : i16 to vector<16xi16>
        %285 = vector.broadcast %false_48 : i1 to vector<16xi1>
        %286 = vector.maskedload %alloc_19[%c0, %c3], %285, %284 : memref<1x9xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
        %alloc_49 = memref.alloc() : memref<1x1xf32>
        affine.yield %alloc_49 : memref<1x1xf32>
      }
      %272 = arith.divf %cst, %cst_1 : f32
      %splat = tensor.splat %cst_4 : tensor<1x1xf16>
      %273 = math.round %16 : tensor<7x7x9xf16>
      %274 = index.sizeof
      %275 = math.cttz %15 : tensor<1x1xi1>
      %276 = index.mul %c4, %c1
      %277 = affine.load %alloc_14[%c15, %c5] : memref<1x1xi1>
      scf.yield
    }
    default {
      %inserted_48 = tensor.insert %c923826954_i64 into %33[%c0, %c2] : tensor<1x9xi64>
      %263 = index.sizeof
      %264 = index.divs %c9, %c0
      %extracted_49 = tensor.extract %33[%c0, %c7] : tensor<1x9xi64>
      %265 = tensor.empty() : tensor<7x7x9xi1>
      %mapped_50 = linalg.map ins(%3, %4 : tensor<7x7x9xi1>, tensor<7x7x9xi1>) outs(%265 : tensor<7x7x9xi1>)
        (%in: i1, %in_54: i1) {
          %275 = math.tan %13 : tensor<1x1xf32>
          %276 = vector.transpose %32, [0] : vector<9xi64> to vector<9xi64>
          %277 = arith.andi %true, %in_54 : i1
          %from_elements_55 = tensor.from_elements %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32 : tensor<1x9xi32>
          %alloc_56 = memref.alloc() : memref<7x7x9xi64>
          memref.copy %alloc_12, %alloc_56 : memref<7x7x9xi64> to memref<7x7x9xi64>
          %278 = tensor.empty() : tensor<1x1xf16>
          %279 = linalg.matmul ins(%9, %9 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%278 : tensor<1x1xf16>) -> tensor<1x1xf16>
          %280 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 mod 4)>(%c7, %c4, %c13, %c12)
          %281 = math.fma %278, %278, %278 : tensor<1x1xf16>
          %alloc_57 = memref.alloc() : memref<7x7x9xi16>
          %282 = affine.apply affine_map<(d0) -> (d0)>(%c12)
          %283 = arith.maxsi %c923826954_i64, %c678611975_i64 : i64
          memref.copy %alloc_7, %alloc_15 : memref<1x1xi32> to memref<1x1xi32>
          %cast = tensor.cast %3 : tensor<7x7x9xi1> to tensor<?x?x?xi1>
          %284 = vector.splat %c5 : vector<1x1xindex>
          %285 = arith.minf %cst, %cst_0 : f32
          %286 = arith.andi %true, %in : i1
          %287 = arith.muli %in_54, %in_54 : i1
          %288 = affine.min affine_map<(d0) -> (0)>(%c12)
          %289 = vector.insert %c1220492835_i64, %19 [0] : i64 into vector<9xi64>
          %290 = tensor.empty() : tensor<1x9xi16>
          %291 = arith.shrui %c1425659306_i32, %c1425659306_i32 : i32
          %292 = math.exp %13 : tensor<1x1xf32>
          %293 = math.rsqrt %8 : tensor<1x9xf16>
          %294 = math.rsqrt %16 : tensor<7x7x9xf16>
          %295 = vector.broadcast %c8 : index to vector<16xindex>
          %296 = vector.broadcast %in : i1 to vector<16xi1>
          %297 = vector.broadcast %cst_3 : f32 to vector<16xf32>
          vector.scatter %alloc_16[%c0, %c6] [%295], %296, %297 : memref<1x9xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
          %298 = arith.divf %cst_3, %cst_3 : f32
          %inserted_58 = tensor.insert %cst_4 into %16[%c2, %c6, %c6] : tensor<7x7x9xf16>
          %299 = vector.broadcast %cst_1 : f32 to vector<1x9xf32>
          %300 = vector.fma %299, %299, %299 : vector<1x9xf32>
          %301 = index.divu %288, %c5
          %302 = index.sizeof
          %303 = math.tanh %cst_1 : f32
          %304 = math.ipowi %c-15673_i16, %c-2040_i16 : i16
          %true_59 = arith.constant true
          linalg.yield %true_59 : i1
        }
      %inserted_51 = tensor.insert %false into %2[%c0, %c0] : tensor<1x1xi1>
      %266 = arith.mulf %cst_4, %cst_4 : f16
      %267 = tensor.empty() : tensor<1x9xi32>
      %mapped_52 = linalg.map ins(%12, %12, %12 : tensor<1x9xi32>, tensor<1x9xi32>, tensor<1x9xi32>) outs(%267 : tensor<1x9xi32>)
        (%in: i32, %in_54: i32, %in_55: i32) {
          %275 = vector.load %alloc_14[%c0, %c0] : memref<1x1xi1>, vector<1x9xi1>
          %276 = vector.create_mask %c4, %c11, %c5 : vector<7x7x9xi1>
          %277 = arith.maxui %true, %true_2 : i1
          memref.tensor_store %5, %alloc_12 : memref<7x7x9xi64>
          %278 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c10, %263, %c9)
          %279 = arith.andi %in, %c1425659306_i32 : i32
          %280 = index.ceildivs %c3, %c13
          %281 = arith.ori %c678611975_i64, %c678611975_i64 : i64
          %282 = index.divu %c12, %c8
          %283 = bufferization.clone %alloc_12 : memref<7x7x9xi64> to memref<7x7x9xi64>
          %284 = math.powf %cst_3, %cst : f32
          %cast = tensor.cast %23 : tensor<7x7x9xi1> to tensor<?x?x?xi1>
          %rank_56 = tensor.rank %9 : tensor<1x1xf16>
          %rank_57 = tensor.rank %1 : tensor<1x1xf32>
          %285 = index.ceildivs %c2, %c11
          %false_58 = index.bool.constant false
          memref.assume_alignment %283, 16 : memref<7x7x9xi64>
          %286 = arith.cmpf ule, %cst_3, %cst : f32
          %287 = math.log2 %cst_3 : f32
          affine.store %cst_4, %alloc_17[%c1, %c9] : memref<1x9xf16>
          %288 = vector.matrix_multiply %32, %32 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
          %289 = index.maxs %c3, %278
          %290 = vector.multi_reduction <xor>, %275, %275 [] : vector<1x9xi1> to vector<1x9xi1>
          %291 = index.divu %278, %c8
          %292 = bufferization.to_memref %1 : memref<1x1xf32>
          %293 = math.round %6 : tensor<1x9xf32>
          %294 = index.divs %c4, %c1
          %295 = vector.transpose %19, [0] : vector<9xi64> to vector<9xi64>
          %296 = vector.matrix_multiply %32, %32 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
          %297 = math.fma %17, %11, %11 : tensor<7x7x9xf16>
          %298 = math.absf %0 : tensor<1x1xf32>
          %299 = index.divs %285, %rank_56
          %c1_i32 = arith.constant 1 : i32
          linalg.yield %c1_i32 : i32
        }
      %268 = vector.create_mask %c14, %c11 : vector<1x1xi1>
      %alloca_53 = memref.alloca() : memref<7x7x9xi16>
      %269 = vector.multi_reduction <maxsi>, %19, %19 [] : vector<9xi64> to vector<9xi64>
      %270 = math.ctlz %reduced : tensor<7xi64>
      %271 = arith.andi %c1036678537_i64, %c1036678537_i64 : i64
      %272 = vector.extract %268[0] : vector<1x1xi1>
      %273 = scf.index_switch %c14 -> memref<1x9xi64> 
      case 1 {
        %275 = index.divs %c0, %c3
        %alloc_54 = memref.alloc() : memref<7x7x9xi64>
        memref.copy %alloc_12, %alloc_54 : memref<7x7x9xi64> to memref<7x7x9xi64>
        %276 = math.log2 %cst_0 : f32
        %277 = vector.broadcast %true_2 : i1 to vector<1xi1>
        %278 = vector.transfer_write %277, %265[%c3, %c15, %275] {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : vector<1xi1>, tensor<7x7x9xi1>
        %279 = math.expm1 %cst_3 : f32
        %280 = index.mul %275, %c6
        %281 = vector.splat %false : vector<1x1xi1>
        %282 = arith.divf %cst_1, %cst_3 : f32
        %283 = vector.insert %extracted_49, %19 [4] : i64 into vector<9xi64>
        %284 = math.roundeven %0 : tensor<1x1xf32>
        %285 = vector.create_mask %c15, %c8, %c2 : vector<7x7x9xi1>
        %286 = index.divs %c5, %c7
        %287 = index.divu %275, %c12
        %288 = vector.outerproduct %277, %277, %268 {kind = #vector.kind<minsi>} : vector<1xi1>, vector<1xi1>
        %289 = vector.broadcast %c3 : index to vector<7xindex>
        %290 = vector.broadcast %true_2 : i1 to vector<7xi1>
        %291 = vector.broadcast %c1036678537_i64 : i64 to vector<7xi64>
        vector.scatter %alloc_12[%c1, %c3, %c3] [%289], %290, %291 : memref<7x7x9xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        %292 = math.expm1 %16 : tensor<7x7x9xf16>
        scf.yield %alloc_5 : memref<1x9xi64>
      }
      case 2 {
        %275 = affine.min affine_map<(d0, d1, d2, d3) -> (((d1 * 4 - 32) * 2 - 64) ceildiv 32)>(%c12, %c10, %c3, %c9)
        %276 = index.maxs %c8, %c14
        %277 = arith.ori %true, %true : i1
        %278 = vector.splat %true : vector<1x1xi1>
        %279 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minui>} %268, %272, %272 : vector<1x1xi1>, vector<1xi1> into vector<1xi1>
        %280 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 4 - (d1 ceildiv 4) mod 2)>(%c12, %c0)
        %281 = vector.create_mask %c0, %c2, %c7 : vector<7x7x9xi1>
        %282 = vector.flat_transpose %272 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %283 = math.ctlz %7 : tensor<1x9xi64>
        %284 = vector.multi_reduction <minsi>, %272, %272 [] : vector<1xi1> to vector<1xi1>
        %285 = arith.cmpf olt, %cst_4, %cst_4 : f16
        %alloc_54 = memref.alloc() : memref<7x7x9xi1>
        memref.copy %alloc, %alloc_54 : memref<7x7x9xi1> to memref<7x7x9xi1>
        %286 = math.ipowi %14, %7 : tensor<1x9xi64>
        %287 = math.tanh %6 : tensor<1x9xf32>
        %288 = math.tan %11 : tensor<7x7x9xf16>
        %289 = arith.remf %cst_3, %cst_0 : f32
        scf.yield %alloc_18 : memref<1x9xi64>
      }
      case 3 {
        %275 = memref.load %alloc_14[%c0, %c0] : memref<1x1xi1>
        %276 = arith.andi %true, %false : i1
        %277 = index.ceildivs %c6, %c13
        %alloc_54 = memref.alloc() : memref<9x1xi64>
        %278 = tensor.empty() : tensor<1x1xi64>
        %279 = linalg.matmul ins(%14, %alloc_54 : tensor<1x9xi64>, memref<9x1xi64>) outs(%278 : tensor<1x1xi64>) -> tensor<1x1xi64>
        %280 = vector.broadcast %cst_0 : f32 to vector<1x9xf32>
        %281 = vector.fma %280, %280, %280 : vector<1x9xf32>
        %282 = arith.maxui %true, %true : i1
        %283 = vector.broadcast %cst_1 : f32 to vector<1x9xf32>
        %284 = vector.fma %283, %281, %280 : vector<1x9xf32>
        %true_55 = index.bool.constant true
        %285 = index.divu %c12, %c0
        %286 = affine.max affine_map<(d0, d1, d2) -> (0, d2)>(%c1, %c15, %c4)
        %287 = vector.broadcast %cst_0 : f32 to vector<9xf32>
        %288 = vector.multi_reduction <maxf>, %280, %287 [0] : vector<1x9xf32> to vector<9xf32>
        %289 = arith.cmpf ule, %cst_1, %cst_1 : f32
        %290 = vector.broadcast %cst_1 : f32 to vector<1xf32>
        %291 = vector.multi_reduction <maxf>, %284, %290 [1] : vector<1x9xf32> to vector<1xf32>
        %292 = vector.multi_reduction <add>, %287, %287 [] : vector<9xf32> to vector<9xf32>
        %alloc_56 = memref.alloc() : memref<1x9xf16>
        memref.copy %alloc_17, %alloc_56 : memref<1x9xf16> to memref<1x9xf16>
        %293 = arith.maxui %c1220492835_i64, %c1036678537_i64 : i64
        scf.yield %alloc_5 : memref<1x9xi64>
      }
      case 4 {
        %275 = vector.matrix_multiply %19, %32 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
        affine.store %c1036678537_i64, %alloc_18[%c3, %c9] : memref<1x9xi64>
        %276 = math.floor %11 : tensor<7x7x9xf16>
        %277 = math.ctpop %21 : tensor<i64>
        %rank_54 = tensor.rank %8 : tensor<1x9xf16>
        %278 = index.floordivs %c5, %c13
        %279 = math.round %11 : tensor<7x7x9xf16>
        memref.copy %alloc_18, %alloc_11 : memref<1x9xi64> to memref<1x9xi64>
        %280 = arith.minsi %c678611975_i64, %c678611975_i64 : i64
        %281 = arith.floordivsi %false, %true_2 : i1
        %282 = bufferization.clone %alloc : memref<7x7x9xi1> to memref<7x7x9xi1>
        %283 = vector.broadcast %cst : f32 to vector<1x9xf32>
        %284 = vector.fma %283, %283, %283 : vector<1x9xf32>
        %285 = affine.load %alloc_8[%c0, %c12] : memref<1x9xi64>
        %286 = arith.shli %c678611975_i64, %c1036678537_i64 : i64
        %287 = arith.maxsi %false, %false : i1
        %288 = tensor.empty() : tensor<1x1xf32>
        %289 = linalg.matmul ins(%1, %0 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%288 : tensor<1x1xf32>) -> tensor<1x1xf32>
        scf.yield %alloc_11 : memref<1x9xi64>
      }
      default {
        %275 = math.floor %6 : tensor<1x9xf32>
        %rank_54 = tensor.rank %2 : tensor<1x1xi1>
        %276 = tensor.empty() : tensor<7x7x9xf16>
        %277 = math.log10 %1 : tensor<1x1xf32>
        %278 = math.tan %276 : tensor<7x7x9xf16>
        memref.assume_alignment %alloc_8, 1 : memref<1x9xi64>
        %279 = arith.cmpf true, %cst, %cst_0 : f32
        %280 = math.log10 %11 : tensor<7x7x9xf16>
        %281 = math.copysign %8, %8 : tensor<1x9xf16>
        %282 = arith.andi %extracted_49, %c1220492835_i64 : i64
        %283 = arith.floordivsi %c923826954_i64, %c1220492835_i64 : i64
        %284 = arith.maxsi %c1036678537_i64, %c1220492835_i64 : i64
        %dest_55, %accumulated_value_56 = vector.scan <minui>, %268, %272 {inclusive = true, reduction_dim = 0 : i64} : vector<1x1xi1>, vector<1xi1>
        %collapsed_57 = tensor.collapse_shape %1 [[0, 1]] : tensor<1x1xf32> into tensor<1xf32>
        %285 = math.roundeven %6 : tensor<1x9xf32>
        %true_58 = arith.constant true
        %286 = vector.transfer_read %alloc[%c0, %c0, %c12], %true_58 : memref<7x7x9xi1>, vector<i1>
        scf.yield %alloc_5 : memref<1x9xi64>
      }
      %274 = arith.maxui %true, %true : i1
    }
    %34 = arith.remsi %c-15673_i16, %c-2040_i16 : i16
    %35 = arith.andi %true, %true : i1
    memref.alloca_scope  {
      %263 = index.divu %c6, %c10
      %264 = affine.apply affine_map<(d0) -> ((d0 * 2) mod 128)>(%c2)
      %265 = arith.maxsi %c678611975_i64, %c923826954_i64 : i64
      %266 = math.fpowi %6, %12 : tensor<1x9xf32>, tensor<1x9xi32>
      %splat = tensor.splat %c-2040_i16 : tensor<7x7x9xi16>
      %267 = vector.broadcast %c1036678537_i64 : i64 to vector<1x7x16xi64>
      %268 = vector.broadcast %c678611975_i64 : i64 to vector<1x16xi64>
      %dest_48, %accumulated_value_49 = vector.scan <minsi>, %267, %268 {inclusive = true, reduction_dim = 1 : i64} : vector<1x7x16xi64>, vector<1x16xi64>
      %269 = arith.divui %c-2040_i16, %c-2040_i16 : i16
      %270 = index.divs %c14, %c8
      %271 = vector.broadcast %cst_0 : f32 to vector<1x9xf32>
      %272 = arith.ori %true_2, %true : i1
      %273 = arith.maxsi %true_2, %true : i1
      %274 = arith.cmpf une, %cst_3, %cst_1 : f32
      %275 = math.tan %17 : tensor<7x7x9xf16>
      %276 = vector.matrix_multiply %32, %19 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
      %277 = vector.splat %c14 : vector<1x1xindex>
      %278 = math.ctlz %c-2040_i16 : i16
      %279 = arith.maxsi %c1425659306_i32, %c1425659306_i32 : i32
      %280 = math.ipowi %c1036678537_i64, %c678611975_i64 : i64
      %281 = index.mul %c1, %c10
      %282 = vector.broadcast %cst_1 : f32 to vector<1x1xf32>
      %283 = vector.fma %282, %282, %282 : vector<1x1xf32>
      memref.copy %alloc_14, %alloc_20 : memref<1x1xi1> to memref<1x1xi1>
      %alloca_50 = memref.alloca() : memref<1x9xi64>
      %284 = memref.load %alloc_9[%c2, %c3, %c4] : memref<7x7x9xf32>
      %285 = vector.matrix_multiply %19, %32 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
      %286 = arith.remsi %true_2, %true : i1
      %287 = math.log10 %8 : tensor<1x9xf16>
      %cast = tensor.cast %4 : tensor<7x7x9xi1> to tensor<?x?x?xi1>
      %288 = vector.broadcast %c1425659306_i32 : i32 to vector<1xi32>
      %289 = vector.broadcast %true_2 : i1 to vector<1xi1>
      %290 = vector.maskedload %alloc_7[%c0, %c0], %289, %288 : memref<1x1xi32>, vector<1xi1>, vector<1xi32> into vector<1xi32>
      %291 = vector.insertelement %c923826954_i64, %32[%c10 : index] : vector<9xi64>
      %292 = arith.cmpf ole, %cst_4, %cst_4 : f16
      %293 = math.ctpop %18 : tensor<7xi64>
      %294 = arith.remui %c1220492835_i64, %c1220492835_i64 : i64
    }
    %rank = tensor.rank %5 : tensor<7x7x9xi64>
    %36 = index.mul %c0, %c2
    %37 = arith.minf %cst_0, %cst : f32
    %38 = tensor.empty(%rank, %c5) : tensor<?x?xi16>
    %39 = vector.broadcast %true_2 : i1 to vector<7xi1>
    %40 = vector.maskedload %alloc_14[%c0, %c0], %39, %39 : memref<1x1xi1>, vector<7xi1>, vector<7xi1> into vector<7xi1>
    %41 = index.mul %c10, %c11
    %42 = arith.minf %cst_4, %cst_4 : f16
    %43 = vector.transpose %39, [0] : vector<7xi1> to vector<7xi1>
    %44 = arith.minsi %true, %true_2 : i1
    %45 = arith.remf %cst_3, %cst_0 : f32
    %alloca = memref.alloca() : memref<7x7x9xf16>
    %46 = math.cttz %c-15673_i16 : i16
    %47 = affine.load %alloc_7[%c8, %c2] : memref<1x1xi32>
    %48 = math.ctlz %reduced : tensor<7xi64>
    %49 = affine.max affine_map<(d0) -> (d0, d0 * 16, (d0 ceildiv 2) ceildiv 2, (d0 ceildiv 2) * 512)>(%c14)
    %50 = arith.minsi %c-2040_i16, %c-15673_i16 : i16
    %51 = tensor.empty() : tensor<1x1xi64>
    %collapsed = tensor.collapse_shape %9 [[0, 1]] : tensor<1x1xf16> into tensor<1xf16>
    %52 = arith.maxsi %true_2, %false : i1
    %53 = math.absf %0 : tensor<1x1xf32>
    %54 = index.mul %c0, %c10
    %rank_22 = tensor.rank %5 : tensor<7x7x9xi64>
    %55 = vector.broadcast %c13 : index to vector<1xindex>
    %56 = vector.broadcast %true_2 : i1 to vector<1xi1>
    vector.scatter %alloc_14[%c0, %c0] [%55], %56, %56 : memref<1x1xi1>, vector<1xindex>, vector<1xi1>, vector<1xi1>
    %57 = arith.addi %c1425659306_i32, %c1425659306_i32 : i32
    %58 = math.ctpop %2 : tensor<1x1xi1>
    %59 = arith.minf %cst_1, %cst_3 : f32
    %extracted = tensor.extract %reduced[%c3] : tensor<7xi64>
    memref.copy %alloc_15, %alloc_7 : memref<1x1xi32> to memref<1x1xi32>
    %60 = memref.load %alloc_5[%c0, %c2] : memref<1x9xi64>
    %61 = vector.broadcast %cst : f32 to vector<1x9xf32>
    %62 = vector.fma %61, %61, %61 : vector<1x9xf32>
    %63 = arith.andi %c-15673_i16, %c6246_i16 : i16
    %64 = math.ctlz %c923826954_i64 : i64
    %65 = arith.cmpf false, %cst, %cst : f32
    %66 = math.tan %cst_0 : f32
    %67 = arith.remui %c1220492835_i64, %c1220492835_i64 : i64
    %68 = vector.create_mask %c11, %49, %c10 : vector<7x7x9xi1>
    %69 = math.floor %13 : tensor<1x1xf32>
    %70 = math.floor %1 : tensor<1x1xf32>
    %71 = vector.splat %c1425659306_i32 : vector<1x9xi32>
    %72 = vector.broadcast %cst_1 : f32 to vector<1x9xf32>
    %73 = vector.fma %72, %61, %61 : vector<1x9xf32>
    %74 = math.roundeven %13 : tensor<1x1xf32>
    %75 = math.exp2 %0 : tensor<1x1xf32>
    %76 = math.ceil %11 : tensor<7x7x9xf16>
    %77 = vector.transpose %62, [0, 1] : vector<1x9xf32> to vector<1x9xf32>
    %78 = arith.mulf %cst_3, %cst : f32
    %79 = math.copysign %11, %11 : tensor<7x7x9xf16>
    %80 = index.ceildivs %41, %c5
    %81 = arith.maxsi %true, %true : i1
    %82 = arith.floordivsi %c678611975_i64, %c923826954_i64 : i64
    %83 = index.divs %c0, %rank
    %84 = tensor.empty() : tensor<1x1xf16>
    %85 = arith.ori %47, %47 : i32
    %86 = arith.remsi %extracted, %extracted : i64
    %87 = vector.broadcast %cst_0 : f32 to vector<9xf32>
    %dest_23, %accumulated_value_24 = vector.scan <add>, %61, %87 {inclusive = true, reduction_dim = 0 : i64} : vector<1x9xf32>, vector<9xf32>
    %88 = vector.broadcast %c5 : index to vector<7xindex>
    %89 = vector.broadcast %cst_4 : f16 to vector<7xf16>
    vector.scatter %alloc_17[%c0, %c0] [%88], %39, %89 : memref<1x9xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
    %90 = tensor.empty() : tensor<7x7x9xi32>
    %91 = math.fpowi %11, %90 : tensor<7x7x9xf16>, tensor<7x7x9xi32>
    %92 = index.mul %rank_22, %c3
    %93 = index.divs %c3, %c10
    memref.copy %alloc_5, %alloc_18 : memref<1x9xi64> to memref<1x9xi64>
    %94 = math.log %8 : tensor<1x9xf16>
    %95 = bufferization.to_memref %10 : memref<7x7x9xi1>
    %96 = math.round %17 : tensor<7x7x9xf16>
    %97 = index.divs %rank, %c12
    %98 = math.expm1 %13 : tensor<1x1xf32>
    %99 = math.ctlz %4 : tensor<7x7x9xi1>
    %100 = math.round %6 : tensor<1x9xf32>
    %101 = index.ceildivs %c5, %c3
    %102 = arith.remui %false, %false : i1
    %103 = index.maxs %41, %80
    %104 = vector.matrix_multiply %32, %19 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
    %105 = bufferization.to_tensor %alloc_11 : memref<1x9xi64>
    %106 = vector.bitcast %68 : vector<7x7x9xi1> to vector<7x7x9xi1>
    %alloc_25 = memref.alloc() : memref<7x9xf16>
    %alloc_26 = memref.alloc() : memref<9x7xf16>
    %alloc_27 = memref.alloc() : memref<9xf16>
    %107 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_25, %alloc_26, %alloc_27 : memref<7x9xf16>, memref<9x7xf16>, memref<9xf16>) outs(%17 : tensor<7x7x9xf16>) {
    ^bb0(%in: f16, %in_48: f16, %in_49: f16, %out: f16):
      %263 = math.fpowi %8, %12 : tensor<1x9xf16>, tensor<1x9xi32>
      %collapsed_50 = tensor.collapse_shape %17 [[0, 1], [2]] : tensor<7x7x9xf16> into tensor<49x9xf16>
      %264 = math.expm1 %8 : tensor<1x9xf16>
      %cast = tensor.cast %33 : tensor<1x9xi64> to tensor<?x?xi64>
      %c-30937_i16 = arith.constant -30937 : i16
      %265 = vector.create_mask %c13, %c6 : vector<1x9xi1>
      %266 = index.sub %c7, %c12
      %267 = index.ceildivs %c5, %c13
      %268 = vector.extract_strided_slice %265 {offsets = [0], sizes = [1], strides = [1]} : vector<1x9xi1> to vector<1x9xi1>
      %269 = math.rsqrt %in_48 : f16
      %270 = math.log10 %8 : tensor<1x9xf16>
      vector.print %265 : vector<1x9xi1>
      %271 = vector.insertelement %extracted, %19[%36 : index] : vector<9xi64>
      %272 = math.exp2 %cst_4 : f16
      %273 = arith.remsi %c6246_i16, %c-2040_i16 : i16
      %274 = math.tan %9 : tensor<1x1xf16>
      %alloc_51 = memref.alloc() : memref<9x7x7xi1>
      %alloc_52 = memref.alloc() : memref<7x7xi1>
      %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_51, %alloc_52 : memref<9x7x7xi1>, memref<7x7xi1>) outs(%4 : tensor<7x7x9xi1>) {
      ^bb0(%in_55: i1, %in_56: i1, %out_57: i1):
        %290 = math.tanh %6 : tensor<1x9xf32>
        %291 = math.round %out : f16
        %292 = vector.splat %c678611975_i64 : vector<1x9xi64>
        %293 = vector.broadcast %cst_4 : f16 to vector<1x9xf16>
        %294 = vector.splat %c0 : vector<1x1xindex>
        %rank_58 = tensor.rank %14 : tensor<1x9xi64>
        %295 = math.exp %1 : tensor<1x1xf32>
        %296 = math.log %0 : tensor<1x1xf32>
        %297 = arith.muli %c923826954_i64, %c1220492835_i64 : i64
        %298 = vector.multi_reduction <minf>, %73, %62 [] : vector<1x9xf32> to vector<1x9xf32>
        %299 = vector.broadcast %cst_1 : f32 to vector<9x9xf32>
        %300 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %73, %61, %299 : vector<1x9xf32>, vector<1x9xf32> into vector<9x9xf32>
        %rank_59 = tensor.rank %33 : tensor<1x9xi64>
        %301 = vector.flat_transpose %40 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %302 = vector.load %alloc_8[%c0, %c8] : memref<1x9xi64>, vector<1x1xi64>
        %303 = index.castu %true_2 : i1 to index
        %304 = math.cttz %in_55 : i1
        %305 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - (d0 + 1))>(%c10, %c13, %c7, %49)
        %306 = arith.addi %true_2, %true : i1
        %from_elements_60 = tensor.from_elements %true, %in_55, %false, %false, %false, %true, %true_2, %in_56, %in_55 : tensor<1x9xi1>
        %307 = vector.multi_reduction <add>, %40, %301 [] : vector<7xi1> to vector<7xi1>
        %308 = index.divs %rank, %c12
        %309 = index.mul %c12, %c5
        %310 = math.ctlz %in_55 : i1
        %311 = index.ceildivs %308, %103
        %312 = math.powf %11, %11 : tensor<7x7x9xf16>
        %313 = math.tanh %collapsed : tensor<1xf16>
        %314 = vector.reduction <minsi>, %104 : vector<1xi64> into i64
        %315 = memref.load %alloc_19[%c0, %c3] : memref<1x9xi16>
        %316 = affine.min affine_map<(d0, d1) -> (d0 * 2, d1 mod 4, d0 mod 16, d1)>(%c9, %101)
        %inserted_61 = tensor.insert %47 into %12[%c0, %c8] : tensor<1x9xi32>
        %317 = arith.minf %in, %in : f16
        %318 = arith.floordivsi %c6246_i16, %c-15673_i16 : i16
        linalg.yield %in_55 : i1
      } -> tensor<7x7x9xi1>
      %extracted_53 = tensor.extract %90[%c0, %c2, %c8] : tensor<7x7x9xi32>
      %276 = arith.minsi %c-2040_i16, %c6246_i16 : i16
      %277 = vector.broadcast %c12 : index to vector<16xindex>
      %278 = vector.broadcast %false : i1 to vector<16xi1>
      vector.scatter %95[%c5, %c6, %c2] [%277], %278, %278 : memref<7x7x9xi1>, vector<16xindex>, vector<16xi1>, vector<16xi1>
      %279 = tensor.empty() : tensor<1x1xf32>
      %mapped_54 = linalg.map ins(%13 : tensor<1x1xf32>) outs(%279 : tensor<1x1xf32>)
        (%in_55: f32) {
          %290 = arith.muli %c678611975_i64, %extracted : i64
          %291 = vector.broadcast %36 : index to vector<16xindex>
          %292 = vector.broadcast %true_2 : i1 to vector<16xi1>
          %293 = vector.broadcast %c1425659306_i32 : i32 to vector<16xi32>
          vector.scatter %alloc_15[%c0, %c0] [%291], %292, %293 : memref<1x1xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
          %rank_56 = tensor.rank %0 : tensor<1x1xf32>
          %inserted_57 = tensor.insert %cst_4 into %84[%c0, %c0] : tensor<1x1xf16>
          %294 = vector.shuffle %68, %106 [0, 1, 4, 6, 7, 9, 10, 11, 12, 13] : vector<7x7x9xi1>, vector<7x7x9xi1>
          memref.assume_alignment %95, 1 : memref<7x7x9xi1>
          %295 = affine.max affine_map<(d0) -> (d0 * -2 - d0 floordiv 64)>(%101)
          %296 = vector.broadcast %c1036678537_i64 : i64 to vector<1x9xi64>
          %297 = index.casts %c923826954_i64 : i64 to index
          %298 = arith.mulf %cst_0, %cst : f32
          %299 = arith.maxui %c6246_i16, %c-2040_i16 : i16
          %300 = arith.remsi %true_2, %true : i1
          %301 = arith.addi %true, %true : i1
          %302 = math.log2 %84 : tensor<1x1xf16>
          %303 = vector.broadcast %47 : i32 to vector<1x9xi32>
          %304 = vector.gather %12[%295, %101] [%303], %268, %303 : tensor<1x9xi32>, vector<1x9xi32>, vector<1x9xi1>, vector<1x9xi32> into vector<1x9xi32>
          %305 = arith.addi %extracted_53, %extracted_53 : i32
          %306 = arith.andi %c1220492835_i64, %c1036678537_i64 : i64
          %307 = vector.insertelement %c678611975_i64, %19[%c12 : index] : vector<9xi64>
          %308 = arith.remui %extracted, %c1220492835_i64 : i64
          %309 = arith.andi %false, %false : i1
          %310 = math.exp2 %cst_1 : f32
          %311 = math.absf %1 : tensor<1x1xf32>
          %312 = index.mul %c0, %c9
          %313 = arith.floordivsi %true_2, %false : i1
          %314 = math.tan %9 : tensor<1x1xf16>
          %315 = math.atan %8 : tensor<1x9xf16>
          %316 = affine.load %alloc[%c13, %c15, %c2] : memref<7x7x9xi1>
          %317 = arith.maxsi %316, %false : i1
          %318 = vector.shuffle %265, %268 [0] : vector<1x9xi1>, vector<1x9xi1>
          %319 = math.rsqrt %9 : tensor<1x1xf16>
          %splat = tensor.splat %c-2040_i16 : tensor<1x9xi16>
          %320 = vector.load %alloc_16[%c0, %c2] : memref<1x9xf32>, vector<1x9xf32>
          %cst_58 = arith.constant 1.000000e+00 : f32
          linalg.yield %cst_58 : f32
        }
      %280 = math.ipowi %14, %7 : tensor<1x9xi64>
      %281 = index.maxs %267, %c15
      %282 = math.log1p %1 : tensor<1x1xf32>
      %283 = arith.remsi %c6246_i16, %c6246_i16 : i16
      %284 = arith.minsi %c923826954_i64, %extracted : i64
      %285 = arith.ori %c678611975_i64, %extracted : i64
      %286 = vector.flat_transpose %19 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
      %287 = arith.shli %true, %true : i1
      %288 = math.tan %collapsed : tensor<1xf16>
      %289 = math.ipowi %10, %3 : tensor<7x7x9xi1>
      memref.alloca_scope  {
        %290 = math.exp %cst_4 : f16
        %291 = index.sub %c13, %54
        %292 = math.log2 %collapsed_50 : tensor<49x9xf16>
        %splat = tensor.splat %false : tensor<7x7x9xi1>
        %293 = arith.subi %c678611975_i64, %c678611975_i64 : i64
        %splat_55 = tensor.splat %c923826954_i64 : tensor<7x7x9xi64>
        %294 = index.castu %c11 : index to i32
        %295 = vector.extract %104[0] : vector<1xi64>
        %296 = arith.ori %c-15673_i16, %c6246_i16 : i16
        %297 = arith.remui %c1425659306_i32, %47 : i32
        %298 = vector.broadcast %47 : i32 to vector<9xi32>
        %299 = vector.broadcast %true : i1 to vector<9xi1>
        %300 = vector.maskedload %alloc_7[%c0, %c0], %299, %298 : memref<1x1xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
        %301 = vector.insertelement %c678611975_i64, %32[%281 : index] : vector<9xi64>
        %302 = vector.insertelement %true_2, %39[%c8 : index] : vector<7xi1>
        %rank_56 = tensor.rank %13 : tensor<1x1xf32>
        %303 = vector.extract %268[0] : vector<1x9xi1>
        %304 = index.mul %rank, %93
        %305 = arith.andi %47, %c1425659306_i32 : i32
        %306 = vector.broadcast %cst_1 : f32 to vector<1x9xf32>
        %307 = vector.fma %306, %73, %62 : vector<1x9xf32>
        %308 = math.rsqrt %84 : tensor<1x1xf16>
        %309 = index.divs %c7, %83
        %310 = vector.insertelement %extracted_53, %300[%291 : index] : vector<9xi32>
        %311 = vector.multi_reduction <minf>, %307, %61 [] : vector<1x9xf32> to vector<1x9xf32>
        %312 = tensor.empty() : tensor<1x1xf32>
        %313 = linalg.matmul ins(%0, %0 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%312 : tensor<1x1xf32>) -> tensor<1x1xf32>
        %314 = math.tan %8 : tensor<1x9xf16>
        %315 = math.fma %84, %84, %9 : tensor<1x1xf16>
        %316 = arith.mulf %out, %in_49 : f16
        %317 = arith.minf %cst_1, %cst_3 : f32
        %318 = vector.shuffle %286, %104 [0, 1, 2, 4, 5, 6, 7, 9] : vector<9xi64>, vector<1xi64>
        %319 = vector.broadcast %true : i1 to vector<7x7xi1>
        %320 = vector.outerproduct %40, %39, %319 {kind = #vector.kind<mul>} : vector<7xi1>, vector<7xi1>
        %321 = arith.remui %c-15673_i16, %c-15673_i16 : i16
        %322 = tensor.empty() : tensor<1x9xi1>
        %false_57 = arith.constant false
      }
      linalg.yield %in_49 : f16
    } -> tensor<7x7x9xf16>
    %108 = index.mul %93, %103
    %109 = index.maxs %36, %103
    %110 = vector.broadcast %cst_3 : f32 to vector<7x7x9xf32>
    %111 = vector.fma %110, %110, %110 : vector<7x7x9xf32>
    %112 = arith.remui %c-15673_i16, %c-15673_i16 : i16
    %113 = arith.minsi %true, %false : i1
    %114 = index.sizeof
    %115 = vector.shuffle %62, %61 [0, 1] : vector<1x9xf32>, vector<1x9xf32>
    %expanded = tensor.expand_shape %13 [[0], [1, 2]] : tensor<1x1xf32> into tensor<1x1x1xf32>
    %116 = index.divu %c8, %109
    %inserted_28 = tensor.insert %false into %2[%c0, %c0] : tensor<1x1xi1>
    %117 = math.cttz %33 : tensor<1x9xi64>
    %118 = math.round %cst_1 : f32
    memref.alloca_scope  {
      %263 = arith.maxui %true_2, %true_2 : i1
      %264 = vector.insertelement %false, %39[%c2 : index] : vector<7xi1>
      %265 = vector.matrix_multiply %104, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 9 : i32} : (vector<1xi64>, vector<9xi64>) -> vector<9xi64>
      %266 = arith.minf %cst_0, %cst_0 : f32
      %alloc_48 = memref.alloc() : memref<1x9xi64>
      %267 = math.round %6 : tensor<1x9xf32>
      %268 = arith.maxsi %c-2040_i16, %c6246_i16 : i16
      %269 = math.absf %6 : tensor<1x9xf32>
      %270 = tensor.empty() : tensor<9xi1>
      %alloc_49 = memref.alloc() : memref<7x7xi1>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%270, %alloc_49 : tensor<9xi1>, memref<7x7xi1>) outs(%3 : tensor<7x7x9xi1>) {
      ^bb0(%in: i1, %in_51: i1, %out: i1):
        %296 = vector.broadcast %cst_3 : f32 to vector<1x9xf32>
        %297 = vector.fma %296, %73, %73 : vector<1x9xf32>
        %alloc_52 = memref.alloc() : memref<1x9xf16>
        memref.copy %alloc_17, %alloc_52 : memref<1x9xf16> to memref<1x9xf16>
        %298 = vector.flat_transpose %32 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %from_elements_53 = tensor.from_elements %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4, %cst_4 : tensor<7x7x9xf16>
        %299 = math.cttz %in_51 : i1
        %300 = math.exp %11 : tensor<7x7x9xf16>
        %301 = math.ctlz %c-2040_i16 : i16
        memref.assume_alignment %alloc_13, 1 : memref<7x7x9xi32>
        %302 = arith.ori %c1220492835_i64, %c678611975_i64 : i64
        %303 = index.maxs %c8, %49
        %304 = math.expm1 %13 : tensor<1x1xf32>
        %305 = index.floordivs %c8, %54
        %306 = arith.addi %c-2040_i16, %c-2040_i16 : i16
        vector.print %110 : vector<7x7x9xf32>
        vector.print %297 : vector<1x9xf32>
        %307 = arith.remsi %c1036678537_i64, %c923826954_i64 : i64
        %308 = vector.insertelement %c923826954_i64, %32[%c5 : index] : vector<9xi64>
        %309 = bufferization.to_memref %0 : memref<1x1xf32>
        %collapsed_54 = tensor.collapse_shape %16 [[0, 1], [2]] : tensor<7x7x9xf16> into tensor<49x9xf16>
        %310 = math.round %9 : tensor<1x1xf16>
        %311 = affine.apply affine_map<(d0, d1) -> ((((d0 - 128) * 2) ceildiv 128) mod 2)>(%101, %103)
        %312 = index.mul %83, %c1
        %313 = math.ctpop %true_2 : i1
        %314 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%305, %109, %41)
        %315 = arith.mulf %cst_4, %cst_4 : f16
        %316 = vector.broadcast %cst_1 : f32 to vector<7x9xf32>
        %dest_55, %accumulated_value_56 = vector.scan <add>, %110, %316 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7x9xf32>, vector<7x9xf32>
        %317 = vector.bitcast %265 : vector<9xi64> to vector<9xi64>
        %318 = index.mul %c8, %303
        %319 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %298, %298, %c678611975_i64 : vector<9xi64>, vector<9xi64> into i64
        %320 = index.divs %54, %83
        %321 = bufferization.to_tensor %alloc_10 : memref<1x9xi16>
        %322 = arith.maxui %c1036678537_i64, %c923826954_i64 : i64
        linalg.yield %in : i1
      } -> tensor<7x7x9xi1>
      %272 = index.divu %c9, %80
      %273 = vector.shuffle %40, %40 [0, 1, 3, 4, 5, 6, 7, 8, 9, 11, 13] : vector<7xi1>, vector<7xi1>
      %274 = index.ceildivs %c3, %93
      %275 = math.atan %cst_1 : f32
      %276 = arith.andi %c1036678537_i64, %c1220492835_i64 : i64
      %277 = affine.if affine_set<(d0, d1) : ((d0 floordiv 4 + d0 + 64) ceildiv 2 + (d0 floordiv 4) mod 128 + d0 >= 0, d0 == 0)>(%c9, %c3) -> i32 {
        %296 = affine.max affine_map<(d0) -> (-d0, -d0, (-d0) mod 16, -d0)>(%c14)
        %c-1714_i16 = arith.constant -1714 : i16
        %297 = arith.divf %cst, %cst_0 : f32
        %298 = memref.load %alloc_19[%c0, %c2] : memref<1x9xi16>
        %inserted_51 = tensor.insert %c923826954_i64 into %18[%c3] : tensor<7xi64>
        %299 = tensor.empty() : tensor<1x9xf32>
        %300 = linalg.matmul ins(%13, %6 : tensor<1x1xf32>, tensor<1x9xf32>) outs(%299 : tensor<1x9xf32>) -> tensor<1x9xf32>
        %301 = math.tanh %cst_3 : f32
        %302 = math.absf %cst : f32
        affine.yield %c1425659306_i32 : i32
      } else {
        %296 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %39, %39, %true : vector<7xi1>, vector<7xi1> into i1
        %297 = vector.flat_transpose %40 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %298 = vector.splat %36 : vector<1x9xindex>
        %299 = vector.broadcast %cst_1 : f32 to vector<7x7x9xf32>
        %300 = vector.fma %299, %299, %299 : vector<7x7x9xf32>
        %301 = affine.apply affine_map<(d0, d1, d2) -> (d0)>(%c13, %274, %41)
        %302 = math.expm1 %16 : tensor<7x7x9xf16>
        %303 = bufferization.to_memref %3 : memref<7x7x9xi1>
        %304 = tensor.empty() : tensor<1x1xi32>
        %305 = math.fpowi %0, %304 : tensor<1x1xf32>, tensor<1x1xi32>
        affine.yield %47 : i32
      }
      memref.assume_alignment %alloc_19, 16 : memref<1x9xi16>
      %278 = math.ipowi %21, %21 : tensor<i64>
      %279 = index.divs %c5, %93
      %280 = vector.broadcast %cst_3 : f32 to vector<9x9xf32>
      %281 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<add>} %73, %62, %280 : vector<1x9xf32>, vector<1x9xf32> into vector<9x9xf32>
      %cast = tensor.cast %1 : tensor<1x1xf32> to tensor<?x?xf32>
      %282 = vector.broadcast %101 : index to vector<9xindex>
      %283 = vector.broadcast %true_2 : i1 to vector<9xi1>
      vector.scatter %alloc_18[%c0, %c8] [%282], %283, %19 : memref<1x9xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
      %284 = vector.broadcast %92 : index to vector<16xindex>
      %285 = vector.broadcast %true_2 : i1 to vector<16xi1>
      %286 = vector.broadcast %47 : i32 to vector<16xi32>
      vector.scatter %alloc_6[%c6, %c3, %c4] [%284], %285, %286 : memref<7x7x9xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
      memref.assume_alignment %alloc_13, 8 : memref<7x7x9xi32>
      %287 = vector.splat %36 : vector<1x1xindex>
      %288 = index.sub %c4, %c10
      %289 = arith.maxui %false, %true_2 : i1
      %290 = vector.broadcast %c15 : index to vector<16xindex>
      %291 = vector.broadcast %true : i1 to vector<16xi1>
      %292 = vector.broadcast %c1425659306_i32 : i32 to vector<16xi32>
      vector.scatter %alloc_13[%c0, %c4, %c8] [%290], %291, %292 : memref<7x7x9xi32>, vector<16xindex>, vector<16xi1>, vector<16xi32>
      memref.copy %alloc_19, %alloc_10 : memref<1x9xi16> to memref<1x9xi16>
      %293 = arith.minf %cst_3, %cst_1 : f32
      %294 = index.ceildivs %101, %80
      %295 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 4 - (d1 ceildiv 4) mod 2)>(%c0, %c0)
      %from_elements_50 = tensor.from_elements %extracted, %extracted, %c923826954_i64, %c678611975_i64, %c923826954_i64, %c923826954_i64, %c923826954_i64, %c1036678537_i64, %extracted : tensor<1x9xi64>
    }
    %119 = vector.insertelement %c1036678537_i64, %104[%rank : index] : vector<1xi64>
    %120 = tensor.empty() : tensor<1x1xi32>
    %121 = math.fpowi %13, %120 : tensor<1x1xf32>, tensor<1x1xi32>
    %122 = memref.load %alloc_7[%c0, %c0] : memref<1x1xi32>
    %123 = math.log10 %6 : tensor<1x9xf32>
    %124 = math.ctpop %c-15673_i16 : i16
    %125 = math.roundeven %cst : f32
    %126 = math.absf %collapsed : tensor<1xf16>
    %127 = index.divu %36, %103
    %128 = bufferization.to_memref %7 : memref<1x9xi64>
    %129 = arith.ori %extracted, %extracted : i64
    %130 = math.ceil %cst : f32
    %131 = vector.broadcast %true_2 : i1 to vector<7x7xi1>
    %132 = vector.outerproduct %40, %39, %131 {kind = #vector.kind<and>} : vector<7xi1>, vector<7xi1>
    %133 = math.tanh %8 : tensor<1x9xf16>
    %rank_29 = tensor.rank %9 : tensor<1x1xf16>
    %134 = index.ceildivs %41, %108
    %135 = math.ipowi %12, %12 : tensor<1x9xi32>
    %136 = vector.broadcast %c-15673_i16 : i16 to vector<1x9xi16>
    %137 = tensor.empty(%114) : tensor<1x?xi64>
    %138 = arith.shrsi %true_2, %true_2 : i1
    %collapsed_30 = tensor.collapse_shape %0 [[0, 1]] : tensor<1x1xf32> into tensor<1xf32>
    %139 = index.ceildivs %c15, %c14
    %140 = arith.minf %cst_4, %cst_4 : f16
    memref.alloca_scope  {
      %263 = vector.broadcast %c-15673_i16 : i16 to vector<1x9xi16>
      %alloca_48 = memref.alloca() : memref<1x9xi16>
      %c32709_i16 = arith.constant 32709 : i16
      %264 = tensor.empty() : tensor<1x9xi1>
      %265 = vector.broadcast %true_2 : i1 to vector<1x1xi1>
      %266 = vector.broadcast %c1425659306_i32 : i32 to vector<1x1xi32>
      %267 = vector.gather %264[%49, %rank_22] [%266], %265, %265 : tensor<1x9xi1>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi1> into vector<1x1xi1>
      %268 = bufferization.to_memref %15 : memref<1x1xi1>
      %splat = tensor.splat %c678611975_i64 : tensor<1x9xi64>
      %269 = arith.muli %c-2040_i16, %c-15673_i16 : i16
      %270 = math.tanh %17 : tensor<7x7x9xf16>
      %alloc_49 = memref.alloc() : memref<9xi64>
      %271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_49 : memref<9xi64>) outs(%5 : tensor<7x7x9xi64>) {
      ^bb0(%in: i64, %out: i64):
        %297 = affine.apply affine_map<(d0) -> ((d0 * 2) ceildiv 64 - 4)>(%c7)
        %298 = bufferization.to_memref %90 : memref<7x7x9xi32>
        %alloca_51 = memref.alloca() : memref<1x9xf16>
        %299 = arith.minsi %c6246_i16, %c-2040_i16 : i16
        %300 = tensor.empty(%rank) : tensor<1x?xf32>
        %301 = arith.andi %c-15673_i16, %c-2040_i16 : i16
        %302 = vector.reduction <maxsi>, %32 : vector<9xi64> into i64
        %303 = arith.andi %extracted, %extracted : i64
        %304 = math.absf %8 : tensor<1x9xf16>
        %305 = arith.remsi %c1220492835_i64, %extracted : i64
        %306 = bufferization.to_memref %collapsed : memref<1xf16>
        %307 = arith.minsi %in, %extracted : i64
        %308 = vector.reduction <or>, %32 : vector<9xi64> into i64
        %309 = vector.matrix_multiply %19, %19 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xi64>, vector<9xi64>) -> vector<1xi64>
        %310 = vector.broadcast %cst_3 : f32 to vector<1x9xf32>
        %311 = vector.fma %310, %62, %62 : vector<1x9xf32>
        %312 = math.tan %13 : tensor<1x1xf32>
        memref.copy %alloc_5, %alloc_8 : memref<1x9xi64> to memref<1x9xi64>
        %313 = math.round %11 : tensor<7x7x9xf16>
        %314 = vector.broadcast %cst_3 : f32 to vector<7x9xf32>
        %315 = vector.multi_reduction <mul>, %110, %314 [1] : vector<7x7x9xf32> to vector<7x9xf32>
        %316 = vector.reduction <xor>, %104 : vector<1xi64> into i64
        %317 = math.round %cst_0 : f32
        %alloca_52 = memref.alloca() : memref<7x7x9xi32>
        %318 = index.maxs %109, %116
        %319 = math.exp2 %13 : tensor<1x1xf32>
        %320 = index.ceildivs %41, %c7
        %321 = math.round %cst_4 : f16
        %322 = arith.remui %extracted, %c1220492835_i64 : i64
        %323 = vector.broadcast %320 : index to vector<16xindex>
        %324 = vector.broadcast %true_2 : i1 to vector<16xi1>
        %325 = vector.broadcast %cst_4 : f16 to vector<16xf16>
        vector.scatter %306[%c0] [%323], %324, %325 : memref<1xf16>, vector<16xindex>, vector<16xi1>, vector<16xf16>
        %326 = vector.create_mask %c5, %127 : vector<1x9xi1>
        %327 = math.expm1 %collapsed : tensor<1xf16>
        %328 = arith.shrsi %extracted, %in : i64
        %rank_53 = tensor.rank %10 : tensor<7x7x9xi1>
        linalg.yield %c678611975_i64 : i64
      } -> tensor<7x7x9xi64>
      %alloc_50 = memref.alloc() : memref<9x16xf32>
      %272 = tensor.empty() : tensor<1x16xf32>
      %273 = linalg.matmul ins(%6, %alloc_50 : tensor<1x9xf32>, memref<9x16xf32>) outs(%272 : tensor<1x16xf32>) -> tensor<1x16xf32>
      %274 = arith.shrsi %c-2040_i16, %c-2040_i16 : i16
      %275 = vector.flat_transpose %40 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      %276 = math.atan %13 : tensor<1x1xf32>
      %277 = arith.maxsi %47, %47 : i32
      %278 = bufferization.to_memref %5 : memref<7x7x9xi64>
      %279 = memref.load %alloc_13[%c6, %c4, %c2] : memref<7x7x9xi32>
      %280 = arith.mulf %cst_1, %cst : f32
      %281 = math.sqrt %9 : tensor<1x1xf16>
      %282 = tensor.empty() : tensor<1x1xf32>
      %283 = linalg.matmul ins(%1, %13 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%282 : tensor<1x1xf32>) -> tensor<1x1xf32>
      %284 = index.ceildivs %97, %80
      %285 = vector.matrix_multiply %39, %40 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
      %286 = math.floor %272 : tensor<1x16xf32>
      %287 = arith.floordivsi %true, %true_2 : i1
      %288 = math.round %282 : tensor<1x1xf32>
      %289 = math.ctlz %51 : tensor<1x1xi64>
      %290 = bufferization.to_memref %272 : memref<1x16xf32>
      %291 = math.floor %expanded : tensor<1x1x1xf32>
      %292 = math.tan %0 : tensor<1x1xf32>
      %293 = affine.max affine_map<(d0, d1) -> (d1 + d0, d1 + 8, (d1 mod 2) floordiv 2 + 8)>(%c6, %92)
      %294 = index.divu %139, %c14
      %295 = affine.apply affine_map<(d0, d1, d2) -> ((d2 - d1 + d2 floordiv 16) ceildiv 2)>(%294, %rank, %c11)
      %296 = scf.index_switch %103 -> vector<1x1xf32> 
      case 1 {
        %297 = index.divu %103, %c8
        %inserted_51 = tensor.insert %c1220492835_i64 into %splat[%c0, %c3] : tensor<1x9xi64>
        %298 = arith.remsi %c-15673_i16, %c6246_i16 : i16
        %299 = index.divu %c6, %114
        %300 = math.atan %11 : tensor<7x7x9xf16>
        %301 = index.ceildivs %293, %rank_22
        %302 = math.fpowi %6, %12 : tensor<1x9xf32>, tensor<1x9xi32>
        %303 = index.divu %c13, %114
        %304 = index.divu %c14, %297
        %305 = math.fpowi %cst, %c1425659306_i32 : f32, i32
        %306 = vector.flat_transpose %39 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %307 = arith.maxui %c-15673_i16, %c-15673_i16 : i16
        %rank_52 = tensor.rank %0 : tensor<1x1xf32>
        %308 = math.ipowi %14, %7 : tensor<1x9xi64>
        %309 = arith.cmpf one, %cst_3, %cst_1 : f32
        %310 = vector.transpose %106, [0, 1, 2] : vector<7x7x9xi1> to vector<7x7x9xi1>
        %311 = vector.broadcast %cst : f32 to vector<1x1xf32>
        scf.yield %311 : vector<1x1xf32>
      }
      case 2 {
        %297 = arith.floordivsi %c923826954_i64, %c1220492835_i64 : i64
        %298 = arith.cmpf uno, %cst_4, %cst_4 : f16
        %299 = vector.extract %266[0] : vector<1x1xi32>
        %expanded_51 = tensor.expand_shape %11 [[0], [1], [2, 3]] : tensor<7x7x9xf16> into tensor<7x7x9x1xf16>
        %300 = arith.mulf %cst, %cst_1 : f32
        %301 = math.ctlz %c1425659306_i32 : i32
        %false_52 = index.bool.constant false
        %302 = arith.minsi %false_52, %false_52 : i1
        %303 = arith.cmpf ogt, %cst, %cst_0 : f32
        %304 = affine.load %alloc_11[%c14, %c13] : memref<1x9xi64>
        bufferization.dealloc_tensor %272 : tensor<1x16xf32>
        %305 = index.ceildivs %c8, %rank_29
        %inserted_53 = tensor.insert %cst_3 into %0[%c0, %c0] : tensor<1x1xf32>
        %306 = math.exp2 %84 : tensor<1x1xf16>
        %307 = vector.matrix_multiply %40, %285 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<1xi1>) -> vector<7xi1>
        %308 = arith.minsi %c1425659306_i32, %47 : i32
        %309 = vector.broadcast %cst : f32 to vector<1x1xf32>
        scf.yield %309 : vector<1x1xf32>
      }
      case 3 {
        %297 = arith.andi %c678611975_i64, %c1220492835_i64 : i64
        %298 = arith.remsi %c6246_i16, %c-2040_i16 : i16
        %299 = bufferization.to_memref %15 : memref<1x1xi1>
        %300 = tensor.empty() : tensor<1x1xf16>
        %301 = linalg.matmul ins(%9, %84 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%300 : tensor<1x1xf16>) -> tensor<1x1xf16>
        %302 = math.fpowi %9, %120 : tensor<1x1xf16>, tensor<1x1xi32>
        %303 = arith.andi %true_2, %false : i1
        %304 = math.roundeven %300 : tensor<1x1xf16>
        %305 = arith.shrsi %c678611975_i64, %extracted : i64
        %306 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %19, %19, %c1036678537_i64 : vector<9xi64>, vector<9xi64> into i64
        %307 = math.fpowi %9, %120 : tensor<1x1xf16>, tensor<1x1xi32>
        %308 = math.tanh %collapsed_30 : tensor<1xf32>
        %309 = tensor.empty() : tensor<1x1xi1>
        %310 = linalg.matmul ins(%15, %2 : tensor<1x1xi1>, tensor<1x1xi1>) outs(%309 : tensor<1x1xi1>) -> tensor<1x1xi1>
        %311 = arith.shrsi %c1220492835_i64, %extracted : i64
        %312 = index.divs %c1, %c2
        %313 = affine.min affine_map<(d0) -> (d0 ceildiv 128, -(d0 ceildiv 128 + d0), (-d0) mod 128)>(%c8)
        %314 = tensor.empty(%c9, %134) : tensor<?x?xf32>
        %315 = vector.broadcast %cst_0 : f32 to vector<1x1xf32>
        scf.yield %315 : vector<1x1xf32>
      }
      default {
        %297 = vector.create_mask %c3, %93 : vector<1x9xi1>
        %298 = vector.reduction <add>, %285 : vector<1xi1> into i1
        %299 = tensor.empty() : tensor<1x9xf32>
        %300 = arith.maxui %c-15673_i16, %c-2040_i16 : i16
        %301 = math.rsqrt %299 : tensor<1x9xf32>
        %302 = math.expm1 %13 : tensor<1x1xf32>
        %303 = vector.transpose %62, [1, 0] : vector<1x9xf32> to vector<9x1xf32>
        %collapsed_51 = tensor.collapse_shape %105 [[0, 1]] : tensor<1x9xi64> into tensor<9xi64>
        %304 = vector.shuffle %136, %263 [0] : vector<1x9xi16>, vector<1x9xi16>
        %305 = memref.atomic_rmw minu %c923826954_i64, %alloc_18[%c0, %c5] : (i64, memref<1x9xi64>) -> i64
        %306 = vector.shuffle %265, %265 [0] : vector<1x1xi1>, vector<1x1xi1>
        %307 = tensor.empty() : tensor<9x7xf16>
        %308 = tensor.empty() : tensor<1x7xf16>
        %309 = linalg.matmul ins(%8, %307 : tensor<1x9xf16>, tensor<9x7xf16>) outs(%308 : tensor<1x7xf16>) -> tensor<1x7xf16>
        %310 = index.divs %c6, %c13
        memref.assume_alignment %alloc_11, 16 : memref<1x9xi64>
        %311 = arith.minsi %c6246_i16, %c-15673_i16 : i16
        %312 = vector.broadcast %cst : f32 to vector<1x9xf32>
        %313 = vector.fma %312, %61, %312 : vector<1x9xf32>
        %314 = vector.broadcast %cst_1 : f32 to vector<1x1xf32>
        scf.yield %314 : vector<1x1xf32>
      }
    }
    %141 = math.copysign %6, %6 : tensor<1x9xf32>
    %142 = arith.mulf %cst_0, %cst : f32
    %143 = math.powf %8, %8 : tensor<1x9xf16>
    %144 = math.exp %cst : f32
    %145 = index.divs %101, %c13
    %146 = math.atan %cst_0 : f32
    %147 = math.round %0 : tensor<1x1xf32>
    %rank_31 = tensor.rank %18 : tensor<7xi64>
    %148 = vector.flat_transpose %40 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
    %149 = vector.create_mask %rank_31, %108 : vector<1x9xi1>
    %150 = math.absf %8 : tensor<1x9xf16>
    %151 = vector.matrix_multiply %148, %148 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
    %152 = vector.broadcast %cst_1 : f32 to vector<1x9xf32>
    %153 = vector.fma %152, %73, %152 : vector<1x9xf32>
    %154 = memref.alloca_scope  -> (memref<1x1xi16>) {
      %263 = vector.broadcast %cst_0 : f32 to vector<9xf32>
      %264 = vector.multi_reduction <maxf>, %111, %263 [0, 1] : vector<7x7x9xf32> to vector<9xf32>
      %inserted_48 = tensor.insert %false into %3[%c3, %c5, %c1] : tensor<7x7x9xi1>
      %265 = memref.load %alloc_16[%c0, %c6] : memref<1x9xf32>
      %266 = vector.broadcast %cst : f32 to vector<7xf32>
      %267 = vector.maskedload %alloc_16[%c0, %c8], %148, %266 : memref<1x9xf32>, vector<7xi1>, vector<7xf32> into vector<7xf32>
      %268 = arith.floordivsi %c1220492835_i64, %c1036678537_i64 : i64
      %269 = vector.flat_transpose %266 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
      %alloc_49 = memref.alloc() : memref<16xf16>
      %270 = memref.realloc %alloc_49 : memref<16xf16> to memref<16xf16>
      %271 = arith.ceildivsi %c678611975_i64, %c1220492835_i64 : i64
      %inserted_50 = tensor.insert %c1036678537_i64 into %20[%c5] : tensor<7xi64>
      %272 = vector.matrix_multiply %151, %151 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      %273 = vector.create_mask %rank, %103 : vector<1x9xi1>
      %274 = vector.flat_transpose %32 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
      %275 = tensor.empty() : tensor<7x7xi1>
      %276 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%275, %275 : tensor<7x7xi1>, tensor<7x7xi1>) outs(%10 : tensor<7x7x9xi1>) {
      ^bb0(%in: i1, %in_58: i1, %out: i1):
        %294 = arith.shrsi %c923826954_i64, %c923826954_i64 : i64
        %295 = vector.broadcast %cst : f32 to vector<1x9xf32>
        %296 = vector.fma %295, %153, %73 : vector<1x9xf32>
        %297 = math.log10 %16 : tensor<7x7x9xf16>
        %298 = arith.maxui %in, %true : i1
        %299 = math.round %6 : tensor<1x9xf32>
        %300 = vector.flat_transpose %40 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %collapsed_59 = tensor.collapse_shape %8 [[0, 1]] : tensor<1x9xf16> into tensor<9xf16>
        %301 = index.maxs %c0, %c0
        %302 = arith.maxui %47, %47 : i32
        %303 = index.mul %c10, %80
        %304 = vector.bitcast %300 : vector<7xi1> to vector<7xi1>
        %305 = math.round %expanded : tensor<1x1x1xf32>
        %306 = math.exp %11 : tensor<7x7x9xf16>
        %307 = vector.load %alloc[%c2, %c6, %c1] : memref<7x7x9xi1>, vector<7x7x9xi1>
        %308 = arith.divui %47, %47 : i32
        %309 = affine.apply affine_map<(d0) -> (d0)>(%49)
        %310 = arith.addi %c-2040_i16, %c6246_i16 : i16
        %311 = index.ceildivs %97, %93
        %312 = arith.ori %c-2040_i16, %c6246_i16 : i16
        memref.assume_alignment %alloc_12, 2 : memref<7x7x9xi64>
        %313 = math.round %0 : tensor<1x1xf32>
        %314 = math.absi %out : i1
        %315 = vector.matrix_multiply %267, %266 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
        %316 = index.floordivs %rank_22, %301
        %317 = vector.insertelement %true_2, %39[%rank : index] : vector<7xi1>
        %318 = affine.min affine_map<(d0, d1, d2) -> (((d1 - 1) floordiv 32) mod 2, d1 mod 8)>(%311, %c9, %c11)
        %319 = index.sizeof
        %320 = vector.load %alloc_19[%c0, %c4] : memref<1x9xi16>, vector<1x1xi16>
        %321 = index.maxs %316, %41
        %322 = tensor.empty() : tensor<1x1xi1>
        %323 = linalg.matmul ins(%15, %15 : tensor<1x1xi1>, tensor<1x1xi1>) outs(%322 : tensor<1x1xi1>) -> tensor<1x1xi1>
        %rank_60 = tensor.rank %5 : tensor<7x7x9xi64>
        %324 = math.roundeven %expanded : tensor<1x1x1xf32>
        linalg.yield %true : i1
      } -> tensor<7x7x9xi1>
      %277 = arith.minf %cst_4, %cst_4 : f16
      %dest_51, %accumulated_value_52 = vector.scan <add>, %152, %263 {inclusive = true, reduction_dim = 0 : i64} : vector<1x9xf32>, vector<9xf32>
      %278 = math.round %84 : tensor<1x1xf16>
      %279 = math.log10 %1 : tensor<1x1xf32>
      %280 = vector.broadcast %cst : f32 to vector<1x7x7xf32>
      %281 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3)>, affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minf>} %152, %110, %280 : vector<1x9xf32>, vector<7x7x9xf32> into vector<1x7x7xf32>
      %alloca_53 = memref.alloca() : memref<7x7x9xi16>
      %282 = arith.andi %extracted, %c678611975_i64 : i64
      affine.store %c1425659306_i32, %alloc_6[%c9, %c5, %c9] : memref<7x7x9xi32>
      scf.index_switch %c14 
      case 1 {
        %294 = math.roundeven %0 : tensor<1x1xf32>
        %295 = vector.broadcast %92 : index to vector<7xindex>
        %296 = vector.broadcast %c1425659306_i32 : i32 to vector<7xi32>
        vector.scatter %alloc_6[%c4, %c3, %c8] [%295], %39, %296 : memref<7x7x9xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
        %297 = arith.addi %c-15673_i16, %c6246_i16 : i16
        %298 = vector.multi_reduction <mul>, %104, %c678611975_i64 [0] : vector<1xi64> to i64
        %299 = math.log %1 : tensor<1x1xf32>
        %300 = vector.insertelement %cst_3, %267[%101 : index] : vector<7xf32>
        %301 = arith.addi %c1425659306_i32, %47 : i32
        %302 = vector.multi_reduction <maxsi>, %148, %false [0] : vector<7xi1> to i1
        %303 = vector.broadcast %92 : index to vector<16xindex>
        %304 = vector.broadcast %true_2 : i1 to vector<16xi1>
        %305 = vector.broadcast %c-2040_i16 : i16 to vector<16xi16>
        vector.scatter %alloc_10[%c0, %c4] [%303], %304, %305 : memref<1x9xi16>, vector<16xindex>, vector<16xi1>, vector<16xi16>
        %collapsed_58 = tensor.collapse_shape %105 [[0, 1]] : tensor<1x9xi64> into tensor<9xi64>
        %306 = math.ctpop %3 : tensor<7x7x9xi1>
        %307 = math.expm1 %1 : tensor<1x1xf32>
        %308 = arith.remui %extracted, %c923826954_i64 : i64
        %309 = memref.load %alloc_5[%c0, %c7] : memref<1x9xi64>
        %310 = index.sizeof
        %311 = vector.broadcast %c6 : index to vector<7xindex>
        %312 = vector.broadcast %298 : i64 to vector<7xi64>
        vector.scatter %alloc_5[%c0, %c3] [%311], %39, %312 : memref<1x9xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
        scf.yield
      }
      default {
        %294 = memref.load %alloc[%c3, %c5, %c8] : memref<7x7x9xi1>
        %expanded_58 = tensor.expand_shape %3 [[0], [1], [2, 3]] : tensor<7x7x9xi1> into tensor<7x7x9x1xi1>
        %295 = vector.shuffle %266, %266 [0, 2, 5, 10, 11, 12, 13] : vector<7xf32>, vector<7xf32>
        %296 = arith.maxui %c1036678537_i64, %c1036678537_i64 : i64
        %297 = memref.load %alloc[%c0, %c0, %c7] : memref<7x7x9xi1>
        %alloc_59 = memref.alloc() : memref<1x9xf32>
        memref.copy %alloc_16, %alloc_59 : memref<1x9xf32> to memref<1x9xf32>
        %298 = arith.ori %c-15673_i16, %c-2040_i16 : i16
        %299 = vector.matrix_multiply %266, %266 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xf32>, vector<7xf32>) -> vector<1xf32>
        %300 = index.maxs %rank_31, %c5
        %301 = tensor.empty() : tensor<9x9xi64>
        %302 = tensor.empty() : tensor<1x9xi64>
        %303 = linalg.matmul ins(%33, %301 : tensor<1x9xi64>, tensor<9x9xi64>) outs(%302 : tensor<1x9xi64>) -> tensor<1x9xi64>
        %304 = math.fma %13, %0, %13 : tensor<1x1xf32>
        %305 = math.fma %cst_4, %cst_4, %cst_4 : f16
        %306 = index.mul %101, %c6
        %307 = math.round %16 : tensor<7x7x9xf16>
        %308 = vector.broadcast %false : i1 to vector<7x9xi1>
        %dest_60, %accumulated_value_61 = vector.scan <mul>, %68, %308 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7x9xi1>, vector<7x9xi1>
        %from_elements_62 = tensor.from_elements %c923826954_i64, %extracted, %c923826954_i64, %c1036678537_i64, %c923826954_i64, %c923826954_i64, %c923826954_i64, %extracted, %c678611975_i64 : tensor<1x9xi64>
      }
      %283 = index.maxs %134, %83
      %alloc_54 = memref.alloc() : memref<9x7xi32>
      %284 = tensor.empty() : tensor<1x7xi32>
      %285 = linalg.matmul ins(%12, %alloc_54 : tensor<1x9xi32>, memref<9x7xi32>) outs(%284 : tensor<1x7xi32>) -> tensor<1x7xi32>
      %286 = arith.remui %c-15673_i16, %c6246_i16 : i16
      %287 = index.maxs %109, %108
      %288 = math.ctpop %2 : tensor<1x1xi1>
      %289 = vector.flat_transpose %269 {columns = 7 : i32, rows = 1 : i32} : vector<7xf32> -> vector<7xf32>
      %alloc_55 = memref.alloc() : memref<9x7xi1>
      %290 = tensor.empty() : tensor<9x7x7xi1>
      %291 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_55, %290, %290 : memref<9x7xi1>, tensor<9x7x7xi1>, tensor<9x7x7xi1>) outs(%3 : tensor<7x7x9xi1>) {
      ^bb0(%in: i1, %in_58: i1, %in_59: i1, %out: i1):
        bufferization.dealloc_tensor %15 : tensor<1x1xi1>
        %from_elements_60 = tensor.from_elements %extracted, %c923826954_i64, %c1036678537_i64, %c678611975_i64, %c1220492835_i64, %c678611975_i64, %c1036678537_i64, %c1220492835_i64, %extracted, %c1220492835_i64, %extracted, %c1036678537_i64, %c1220492835_i64, %extracted, %c923826954_i64, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %extracted, %c1036678537_i64, %c1220492835_i64, %c923826954_i64, %c678611975_i64, %c678611975_i64, %c678611975_i64, %c923826954_i64, %c678611975_i64, %c1220492835_i64, %c1036678537_i64, %c923826954_i64, %c1036678537_i64, %extracted, %extracted, %c923826954_i64, %extracted, %c1036678537_i64, %extracted, %c678611975_i64, %c923826954_i64, %c1220492835_i64, %extracted, %c923826954_i64, %c678611975_i64, %c1036678537_i64, %c1220492835_i64, %extracted, %c923826954_i64, %c1220492835_i64, %c1220492835_i64, %c1220492835_i64, %c1220492835_i64, %c1220492835_i64, %extracted, %c923826954_i64, %extracted, %c923826954_i64, %extracted, %c1036678537_i64, %c1220492835_i64, %c678611975_i64, %extracted, %c1220492835_i64, %c923826954_i64, %c678611975_i64, %c923826954_i64, %c1036678537_i64, %c923826954_i64, %extracted, %c1036678537_i64, %c1036678537_i64, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %c1036678537_i64, %extracted, %c1220492835_i64, %extracted, %c1036678537_i64, %c1036678537_i64, %extracted, %c1220492835_i64, %c923826954_i64, %c1036678537_i64, %extracted, %c678611975_i64, %c678611975_i64, %c678611975_i64, %c923826954_i64, %c1220492835_i64, %extracted, %extracted, %c1036678537_i64, %c923826954_i64, %c1036678537_i64, %c678611975_i64, %c678611975_i64, %extracted, %c678611975_i64, %c678611975_i64, %c678611975_i64, %c1036678537_i64, %c1036678537_i64, %c1220492835_i64, %c1220492835_i64, %extracted, %c923826954_i64, %c923826954_i64, %extracted, %c923826954_i64, %c1220492835_i64, %c1220492835_i64, %extracted, %c1220492835_i64, %c1036678537_i64, %c923826954_i64, %c923826954_i64, %c678611975_i64, %extracted, %extracted, %c1220492835_i64, %c923826954_i64, %c1036678537_i64, %extracted, %extracted, %c1220492835_i64, %c923826954_i64, %c1036678537_i64, %c1036678537_i64, %c678611975_i64, %c1036678537_i64, %c678611975_i64, %c1036678537_i64, %extracted, %c1220492835_i64, %c923826954_i64, %c1220492835_i64, %extracted, %c1036678537_i64, %c1220492835_i64, %c923826954_i64, %extracted, %c678611975_i64, %c678611975_i64, %c1220492835_i64, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %extracted, %c923826954_i64, %c923826954_i64, %extracted, %extracted, %c1036678537_i64, %c1220492835_i64, %c678611975_i64, %c923826954_i64, %extracted, %c678611975_i64, %c1220492835_i64, %c678611975_i64, %c923826954_i64, %c1220492835_i64, %c923826954_i64, %c678611975_i64, %c923826954_i64, %c923826954_i64, %c923826954_i64, %c1220492835_i64, %c923826954_i64, %c1220492835_i64, %c923826954_i64, %c1220492835_i64, %c678611975_i64, %c923826954_i64, %c1036678537_i64, %c1036678537_i64, %c678611975_i64, %c678611975_i64, %c923826954_i64, %c923826954_i64, %c923826954_i64, %c678611975_i64, %extracted, %extracted, %c1220492835_i64, %c1036678537_i64, %c678611975_i64, %c923826954_i64, %c1220492835_i64, %c923826954_i64, %c1036678537_i64, %c678611975_i64, %extracted, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %c1220492835_i64, %c1220492835_i64, %c1220492835_i64, %c923826954_i64, %c1036678537_i64, %c1036678537_i64, %c923826954_i64, %c1220492835_i64, %c923826954_i64, %extracted, %c1220492835_i64, %c923826954_i64, %c1036678537_i64, %c923826954_i64, %c1220492835_i64, %c1036678537_i64, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %c1220492835_i64, %c1220492835_i64, %extracted, %c678611975_i64, %extracted, %c1220492835_i64, %extracted, %extracted, %c678611975_i64, %extracted, %c923826954_i64, %c1220492835_i64, %c1220492835_i64, %c678611975_i64, %extracted, %c923826954_i64, %c923826954_i64, %c1036678537_i64, %c1220492835_i64, %c923826954_i64, %c923826954_i64, %c1220492835_i64, %c678611975_i64, %c1036678537_i64, %c678611975_i64, %c923826954_i64, %c923826954_i64, %c1220492835_i64, %c1036678537_i64, %c1220492835_i64, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %c1220492835_i64, %extracted, %extracted, %c1220492835_i64, %c923826954_i64, %c1220492835_i64, %c678611975_i64, %c923826954_i64, %c678611975_i64, %c1220492835_i64, %c1036678537_i64, %c1220492835_i64, %c678611975_i64, %extracted, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %c1036678537_i64, %c1036678537_i64, %c1036678537_i64, %c1220492835_i64, %c1036678537_i64, %c1220492835_i64, %c1036678537_i64, %c1036678537_i64, %c1220492835_i64, %c923826954_i64, %c678611975_i64, %c923826954_i64, %extracted, %c1036678537_i64, %c923826954_i64, %c678611975_i64, %extracted, %extracted, %c923826954_i64, %c1220492835_i64, %c923826954_i64, %extracted, %c923826954_i64, %extracted, %c923826954_i64, %c923826954_i64, %c1220492835_i64, %extracted, %extracted, %c1036678537_i64, %c1036678537_i64, %c1220492835_i64, %c678611975_i64, %c923826954_i64, %extracted, %extracted, %c1220492835_i64, %c678611975_i64, %c678611975_i64, %extracted, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %c1036678537_i64, %c1036678537_i64, %c678611975_i64, %c678611975_i64, %c1220492835_i64, %c1220492835_i64, %extracted, %c1036678537_i64, %c1220492835_i64, %c678611975_i64, %c678611975_i64, %extracted, %c923826954_i64, %extracted, %c678611975_i64, %c923826954_i64, %c678611975_i64, %c1036678537_i64, %c678611975_i64, %extracted, %extracted, %c1036678537_i64, %c678611975_i64, %extracted, %c1036678537_i64, %extracted, %extracted, %c1220492835_i64, %extracted, %c923826954_i64, %extracted, %c1220492835_i64, %c923826954_i64, %c923826954_i64, %extracted, %c1036678537_i64, %extracted, %c923826954_i64, %c1220492835_i64, %c1220492835_i64, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %c923826954_i64, %c923826954_i64, %c678611975_i64, %c1220492835_i64, %c678611975_i64, %c1036678537_i64, %extracted, %c678611975_i64, %extracted, %c1220492835_i64, %c1220492835_i64, %c1220492835_i64, %c923826954_i64, %c678611975_i64, %c1036678537_i64, %c678611975_i64, %c923826954_i64, %c1036678537_i64, %extracted, %c678611975_i64, %c923826954_i64, %extracted, %c1036678537_i64, %extracted, %c923826954_i64, %extracted, %extracted, %c923826954_i64, %c678611975_i64, %extracted, %extracted, %c1220492835_i64, %c1036678537_i64, %extracted, %extracted, %extracted, %c923826954_i64, %c1036678537_i64, %c1036678537_i64, %extracted, %c1220492835_i64, %c1220492835_i64, %c678611975_i64, %extracted, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %c1220492835_i64, %c678611975_i64, %c678611975_i64, %extracted, %c1036678537_i64, %c1036678537_i64, %c1036678537_i64, %extracted, %extracted, %c1220492835_i64, %c1220492835_i64, %c678611975_i64, %c1220492835_i64, %extracted, %c923826954_i64, %extracted, %c678611975_i64, %c923826954_i64, %c1220492835_i64, %extracted, %c923826954_i64, %c923826954_i64, %extracted, %extracted, %c678611975_i64, %c678611975_i64, %c1036678537_i64, %c1036678537_i64, %c1036678537_i64, %c678611975_i64, %c678611975_i64, %c1036678537_i64, %c678611975_i64, %extracted, %c1220492835_i64, %c1220492835_i64, %extracted, %extracted, %c678611975_i64, %c1220492835_i64 : tensor<7x7x9xi64>
        %294 = math.log2 %cst : f32
        %295 = arith.ori %in_58, %true_2 : i1
        %296 = math.log10 %13 : tensor<1x1xf32>
        %297 = vector.flat_transpose %19 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %inserted_61 = tensor.insert %cst into %13[%c0, %c0] : tensor<1x1xf32>
        %298 = vector.extract %274[3] : vector<9xi64>
        %299 = index.maxu %c12, %rank_22
        %300 = arith.maxui %true_2, %in_58 : i1
        %301 = math.floor %6 : tensor<1x9xf32>
        %302 = vector.broadcast %c1036678537_i64 : i64 to vector<16xi64>
        %303 = vector.broadcast %in_59 : i1 to vector<16xi1>
        %304 = vector.maskedload %128[%c0, %c8], %303, %302 : memref<1x9xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
        %305 = vector.transpose %106, [2, 1, 0] : vector<7x7x9xi1> to vector<9x7x7xi1>
        %306 = arith.maxsi %c923826954_i64, %extracted : i64
        %307 = vector.insertelement %in_58, %303[%287 : index] : vector<16xi1>
        %308 = index.floordivs %114, %c12
        %309 = vector.transpose %32, [0] : vector<9xi64> to vector<9xi64>
        %310 = index.casts %80 : index to i32
        memref.assume_alignment %alloc_9, 16 : memref<7x7x9xf32>
        %311 = arith.remui %false, %out : i1
        %312 = index.ceildivs %145, %c3
        %313 = math.atan %8 : tensor<1x9xf16>
        %314 = vector.insertelement %c1220492835_i64, %274[%287 : index] : vector<9xi64>
        %315 = affine.load %alloc_13[%c1, %c8, %c6] : memref<7x7x9xi32>
        %inserted_62 = tensor.insert %extracted into %from_elements_60[%c3, %c2, %c1] : tensor<7x7x9xi64>
        %316 = math.fma %13, %0, %1 : tensor<1x1xf32>
        %317 = vector.flat_transpose %32 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %318 = math.ctlz %c6246_i16 : i16
        %319 = arith.minsi %47, %47 : i32
        %320 = math.ctpop %2 : tensor<1x1xi1>
        %321 = index.divs %c8, %c13
        %322 = vector.insert %in, %39 [4] : i1 into vector<7xi1>
        linalg.yield %in_58 : i1
      } -> tensor<7x7x9xi1>
      %rank_56 = tensor.rank %9 : tensor<1x1xf16>
      %292 = affine.for %arg0 = 0 to 85 iter_args(%arg1 = %106) -> (vector<7x7x9xi1>) {
        affine.yield %106 : vector<7x7x9xi1>
      }
      %293 = arith.remui %c923826954_i64, %c1036678537_i64 : i64
      %alloc_57 = memref.alloc() : memref<1x1xi16>
      memref.alloca_scope.return %alloc_57 : memref<1x1xi16>
    }
    %155 = math.tan %cst : f32
    memref.assume_alignment %alloc_6, 2 : memref<7x7x9xi32>
    %156 = vector.matrix_multiply %39, %148 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
    %157 = arith.divui %c1036678537_i64, %extracted : i64
    %158 = math.fma %6, %6, %6 : tensor<1x9xf32>
    %159 = math.round %cst_4 : f16
    %160 = math.fpowi %6, %12 : tensor<1x9xf32>, tensor<1x9xi32>
    %161 = math.roundeven %9 : tensor<1x1xf16>
    %162 = index.divs %c11, %c12
    %163 = math.fpowi %6, %12 : tensor<1x9xf32>, tensor<1x9xi32>
    %164 = math.absf %6 : tensor<1x9xf32>
    %165 = arith.muli %c-15673_i16, %c-15673_i16 : i16
    %166 = math.ctlz %21 : tensor<i64>
    %167 = index.divu %127, %c9
    %168 = memref.atomic_rmw maxs %c678611975_i64, %128[%c0, %c2] : (i64, memref<1x9xi64>) -> i64
    %169 = arith.andi %47, %c1425659306_i32 : i32
    %170 = arith.mulf %cst, %cst_0 : f32
    %171 = vector.broadcast %49 : index to vector<7xindex>
    %172 = vector.broadcast %c923826954_i64 : i64 to vector<7xi64>
    vector.scatter %alloc_11[%c0, %c3] [%171], %40, %172 : memref<1x9xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
    %173 = math.tanh %1 : tensor<1x1xf32>
    %174 = vector.extract %152[0] : vector<1x9xf32>
    %175 = arith.addi %c678611975_i64, %c678611975_i64 : i64
    %176 = arith.addi %c923826954_i64, %extracted : i64
    %177 = math.ceil %1 : tensor<1x1xf32>
    %178 = arith.shli %true, %true : i1
    %179 = math.ctpop %4 : tensor<7x7x9xi1>
    %180 = vector.broadcast %cst_1 : f32 to vector<1x9xf32>
    %181 = vector.fma %180, %180, %61 : vector<1x9xf32>
    %182 = index.divu %c1, %93
    %rank_32 = tensor.rank %9 : tensor<1x1xf16>
    %rank_33 = tensor.rank %0 : tensor<1x1xf32>
    %183 = math.atan %84 : tensor<1x1xf16>
    %cst_34 = arith.constant 1.25041805E+9 : f32
    %184 = affine.max affine_map<(d0, d1, d2) -> (d1, d1)>(%c12, %c8, %c12)
    %185 = math.fpowi %1, %120 : tensor<1x1xf32>, tensor<1x1xi32>
    %186 = tensor.empty() : tensor<1x9xf32>
    %187 = linalg.matmul ins(%0, %6 : tensor<1x1xf32>, tensor<1x9xf32>) outs(%186 : tensor<1x9xf32>) -> tensor<1x9xf32>
    %188 = math.absf %1 : tensor<1x1xf32>
    %189 = arith.minsi %c-2040_i16, %c-15673_i16 : i16
    %190 = math.log2 %9 : tensor<1x1xf16>
    %191 = math.ipowi %22, %21 : tensor<i64>
    %192 = vector.flat_transpose %39 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
    %193 = vector.splat %c8 : vector<7x7x9xindex>
    %194 = vector.splat %cst : vector<1x9xf32>
    %195 = math.ipowi %3, %10 : tensor<7x7x9xi1>
    %196 = memref.atomic_rmw assign %cst_3, %alloc_16[%c0, %c8] : (f32, memref<1x9xf32>) -> f32
    memref.assume_alignment %alloc_15, 8 : memref<1x1xi32>
    %rank_35 = tensor.rank %reduced : tensor<7xi64>
    %197 = math.exp2 %cst_4 : f16
    memref.assume_alignment %alloc_17, 1 : memref<1x9xf16>
    %198 = vector.broadcast %cst_3 : f32 to vector<7x7xf32>
    %dest_36, %accumulated_value_37 = vector.scan <add>, %110, %198 {inclusive = false, reduction_dim = 2 : i64} : vector<7x7x9xf32>, vector<7x7xf32>
    %199 = math.rsqrt %1 : tensor<1x1xf32>
    %200 = index.maxs %97, %c15
    %201 = arith.remui %c923826954_i64, %c923826954_i64 : i64
    %202 = arith.divf %cst_1, %cst_3 : f32
    affine.store %c1220492835_i64, %alloc_12[%c13, %c5, %c14] : memref<7x7x9xi64>
    %203 = math.atan %16 : tensor<7x7x9xf16>
    %204 = index.sizeof
    %205 = memref.load %alloc_16[%c0, %c8] : memref<1x9xf32>
    %206 = math.atan %13 : tensor<1x1xf32>
    %207 = index.divs %134, %139
    %208 = arith.addi %false, %true_2 : i1
    %209 = scf.if %true_2 -> (memref<1x1xi64>) {
      %263 = math.cttz %7 : tensor<1x9xi64>
      %264 = arith.remui %true_2, %true_2 : i1
      %265 = vector.broadcast %36 : index to vector<7xindex>
      %266 = vector.broadcast %47 : i32 to vector<7xi32>
      vector.scatter %alloc_7[%c0, %c0] [%265], %40, %266 : memref<1x1xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
      memref.copy %alloc_10, %alloc_19 : memref<1x9xi16> to memref<1x9xi16>
      %267 = math.ctpop %4 : tensor<7x7x9xi1>
      %268 = math.ipowi %120, %120 : tensor<1x1xi32>
      %269 = arith.shrsi %c6246_i16, %c-2040_i16 : i16
      %270 = vector.bitcast %111 : vector<7x7x9xf32> to vector<7x7x9xf32>
      %alloc_48 = memref.alloc() : memref<1x1xi64>
      scf.yield %alloc_48 : memref<1x1xi64>
    } else {
      %263 = affine.load %alloc_12[%c9, %c15, %c10] : memref<7x7x9xi64>
      %264 = math.tan %cst_1 : f32
      %265 = math.log10 %1 : tensor<1x1xf32>
      %266 = math.log2 %cst_0 : f32
      %false_48 = index.bool.constant false
      %267 = arith.divui %c-15673_i16, %c-2040_i16 : i16
      %268 = arith.maxsi %c-15673_i16, %c6246_i16 : i16
      %269 = math.ceil %6 : tensor<1x9xf32>
      %alloc_49 = memref.alloc() : memref<1x1xi64>
      scf.yield %alloc_49 : memref<1x1xi64>
    }
    %210 = index.maxs %80, %c8
    %211 = vector.splat %c8 : vector<1x9xindex>
    %rank_38 = tensor.rank %90 : tensor<7x7x9xi32>
    %212 = arith.floordivsi %47, %c1425659306_i32 : i32
    %213 = arith.divui %false, %true_2 : i1
    %214 = vector.maskedload %alloc_11[%c0, %c2], %151, %104 : memref<1x9xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
    %rank_39 = tensor.rank %9 : tensor<1x1xf16>
    %215 = vector.broadcast %c1036678537_i64 : i64 to vector<9x9xi64>
    %216 = vector.outerproduct %32, %19, %215 {kind = #vector.kind<and>} : vector<9xi64>, vector<9xi64>
    %217 = math.absf %cst_1 : f32
    %alloca_40 = memref.alloca() : memref<7x7x9xi16>
    %218 = math.log10 %9 : tensor<1x1xf16>
    %219 = arith.maxui %true, %true_2 : i1
    %220 = math.rsqrt %8 : tensor<1x9xf16>
    %221 = arith.minsi %false, %true_2 : i1
    %222 = arith.cmpf ueq, %cst, %cst_0 : f32
    %223 = vector.transpose %180, [1, 0] : vector<1x9xf32> to vector<9x1xf32>
    %224 = affine.apply affine_map<(d0, d1, d2) -> ((d2 - d1 + d2 floordiv 16) ceildiv 2)>(%c3, %93, %116)
    %225 = arith.minui %c6246_i16, %c6246_i16 : i16
    %226 = memref.alloca_scope  -> (memref<7x7x9xf16>) {
      %263 = math.copysign %13, %13 : tensor<1x1xf32>
      %264 = vector.multi_reduction <xor>, %148, %148 [] : vector<7xi1> to vector<7xi1>
      %265 = arith.muli %true_2, %true_2 : i1
      %266 = tensor.empty() : tensor<1x9xi64>
      %mapped_48 = linalg.map ins(%alloc_18 : memref<1x9xi64>) outs(%266 : tensor<1x9xi64>)
        (%in: i64) {
          %expanded_55 = tensor.expand_shape %2 [[0], [1, 2]] : tensor<1x1xi1> into tensor<1x1x1xi1>
          %alloca_56 = memref.alloca() : memref<7x7x9xf32>
          %290 = arith.minsi %c1425659306_i32, %47 : i32
          %291 = vector.flat_transpose %104 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
          %292 = vector.load %alloc_6[%c0, %c5, %c7] : memref<7x7x9xi32>, vector<1x9xi32>
          %293 = math.roundeven %collapsed_30 : tensor<1xf32>
          %294 = math.log10 %13 : tensor<1x1xf32>
          %295 = vector.broadcast %c6246_i16 : i16 to vector<1xi16>
          %296 = vector.maskedload %alloc_10[%c0, %c8], %151, %295 : memref<1x9xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
          %297 = math.log2 %cst_1 : f32
          %298 = vector.broadcast %c1220492835_i64 : i64 to vector<16xi64>
          %299 = vector.broadcast %false : i1 to vector<16xi1>
          %300 = vector.maskedload %alloc_5[%c0, %c1], %299, %298 : memref<1x9xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
          %301 = math.tan %cst_0 : f32
          %302 = math.tanh %1 : tensor<1x1xf32>
          %303 = arith.remsi %false, %true : i1
          %304 = arith.mulf %cst_1, %cst_1 : f32
          %305 = index.divs %c14, %c6
          %306 = memref.atomic_rmw assign %cst_4, %alloc_17[%c0, %c5] : (f16, memref<1x9xf16>) -> f16
          %307 = affine.max affine_map<(d0) -> (-(d0 + 32))>(%c0)
          %308 = arith.floordivsi %c-15673_i16, %c6246_i16 : i16
          %309 = arith.maxsi %c1220492835_i64, %c1036678537_i64 : i64
          %310 = vector.bitcast %214 : vector<1xi64> to vector<1xi64>
          %splat = tensor.splat %cst_0 : tensor<1x1xf32>
          %311 = math.tanh %collapsed_30 : tensor<1xf32>
          %false_57 = index.bool.constant false
          %312 = tensor.empty(%167) : tensor<7x7x?xi64>
          %313 = arith.divf %cst_4, %cst_4 : f16
          %314 = arith.floordivsi %extracted, %c678611975_i64 : i64
          %315 = arith.addi %c923826954_i64, %c923826954_i64 : i64
          %316 = math.log2 %6 : tensor<1x9xf32>
          %317 = arith.minf %cst, %cst : f32
          %318 = arith.floordivsi %c678611975_i64, %extracted : i64
          %319 = vector.extract %152[0] : vector<1x9xf32>
          %320 = tensor.empty() : tensor<1x9xf16>
          %321 = linalg.matmul ins(%9, %8 : tensor<1x1xf16>, tensor<1x9xf16>) outs(%320 : tensor<1x9xf16>) -> tensor<1x9xf16>
          %c1_i64 = arith.constant 1 : i64
          linalg.yield %c1_i64 : i64
        }
      %267 = scf.index_switch %c8 -> memref<1x9xi64> 
      case 1 {
        %290 = vector.broadcast %c923826954_i64 : i64 to vector<16xi64>
        %291 = vector.broadcast %false : i1 to vector<16xi1>
        %292 = vector.maskedload %alloc_11[%c0, %c3], %291, %290 : memref<1x9xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
        %293 = arith.shrsi %c923826954_i64, %extracted : i64
        %294 = arith.minf %cst_4, %cst_4 : f16
        %295 = memref.load %alloc_15[%c0, %c0] : memref<1x1xi32>
        %296 = vector.extract %111[6] : vector<7x7x9xf32>
        %297 = math.ctlz %3 : tensor<7x7x9xi1>
        %298 = memref.load %alloc_20[%c0, %c0] : memref<1x1xi1>
        %299 = vector.matrix_multiply %192, %156 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<1xi1>) -> vector<7xi1>
        %300 = arith.maxsi %c678611975_i64, %c678611975_i64 : i64
        %301 = vector.broadcast %47 : i32 to vector<1x9xi32>
        %302 = math.copysign %0, %0 : tensor<1x1xf32>
        %303 = vector.broadcast %cst : f32 to vector<7x7x1xf32>
        %304 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %110, %180, %303 : vector<7x7x9xf32>, vector<1x9xf32> into vector<7x7x1xf32>
        %305 = vector.insertelement %cst_1, %174[%rank_22 : index] : vector<9xf32>
        %306 = index.mul %rank_22, %127
        %307 = math.expm1 %6 : tensor<1x9xf32>
        %308 = vector.flat_transpose %148 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        scf.yield %128 : memref<1x9xi64>
      }
      case 2 {
        %splat = tensor.splat %cst : tensor<1x9xf32>
        %290 = math.ipowi %true_2, %true : i1
        %291 = vector.bitcast %104 : vector<1xi64> to vector<1xi64>
        %292 = math.atan %17 : tensor<7x7x9xf16>
        %293 = math.atan %9 : tensor<1x1xf16>
        %294 = vector.broadcast %47 : i32 to vector<1x9xi32>
        %295 = math.round %8 : tensor<1x9xf16>
        %296 = vector.extract %32[0] : vector<9xi64>
        %297 = vector.insert %174, %180 [0] : vector<9xf32> into vector<1x9xf32>
        %298 = math.sqrt %13 : tensor<1x1xf32>
        %299 = math.exp %16 : tensor<7x7x9xf16>
        %300 = bufferization.to_tensor %alloc_12 : memref<7x7x9xi64>
        %301 = vector.shuffle %180, %72 [0] : vector<1x9xf32>, vector<1x9xf32>
        %302 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 4 - (d1 ceildiv 4) mod 2)>(%134, %162)
        %303 = affine.apply affine_map<(d0, d1, d2, d3) -> (d2 - (d0 + 1))>(%rank_29, %92, %c15, %167)
        %304 = index.casts %c6 : index to i32
        scf.yield %128 : memref<1x9xi64>
      }
      default {
        %290 = arith.maxsi %true_2, %true_2 : i1
        %291 = math.log10 %cst_4 : f16
        %292 = math.powf %9, %9 : tensor<1x1xf16>
        %293 = arith.andi %extracted, %c923826954_i64 : i64
        %c0_i64_55 = arith.constant 0 : i64
        %c0_i64_56 = arith.constant 0 : i64
        %294 = vector.transfer_read %33[%c1, %rank_38], %c0_i64_56 {permutation_map = affine_map<(d0, d1) -> (d0)>} : tensor<1x9xi64>, vector<16xi64>
        vector.print %32 : vector<9xi64>
        %295 = tensor.empty() : tensor<1x1x1xi32>
        %296 = math.fpowi %expanded, %295 : tensor<1x1x1xf32>, tensor<1x1x1xi32>
        %297 = memref.atomic_rmw mulf %cst_1, %alloc_9[%c1, %c3, %c0] : (f32, memref<7x7x9xf32>) -> f32
        %298 = arith.cmpf ole, %cst, %cst_0 : f32
        %299 = index.maxs %rank_22, %c3
        %300 = math.tan %13 : tensor<1x1xf32>
        %301 = math.tanh %186 : tensor<1x9xf32>
        %302 = math.round %11 : tensor<7x7x9xf16>
        %303 = math.log2 %8 : tensor<1x9xf16>
        %304 = tensor.empty() : tensor<7x7x9xi1>
        %305 = arith.ori %false, %false : i1
        scf.yield %alloc_11 : memref<1x9xi64>
      }
      %268 = arith.remf %cst_1, %cst_0 : f32
      %from_elements_49 = tensor.from_elements %c-2040_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c-15673_i16, %c-2040_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c6246_i16, %c-15673_i16, %c6246_i16, %c6246_i16, %c-2040_i16, %c6246_i16, %c-15673_i16, %c-2040_i16, %c-15673_i16, %c6246_i16, %c-2040_i16, %c-15673_i16, %c-2040_i16, %c6246_i16 : tensor<7x7x9xi16>
      %269 = index.ceildivs %c0, %184
      %270 = vector.extract %106[6] : vector<7x7x9xi1>
      %271 = affine.apply affine_map<(d0) -> (d0 - 8)>(%c13)
      %272 = arith.cmpf true, %cst_0, %cst : f32
      %273 = bufferization.clone %alloc_7 : memref<1x1xi32> to memref<1x1xi32>
      %274 = math.ctlz %22 : tensor<i64>
      %275 = math.expm1 %11 : tensor<7x7x9xf16>
      %dest_50, %accumulated_value_51 = vector.scan <xor>, %270, %39 {inclusive = true, reduction_dim = 1 : i64} : vector<7x9xi1>, vector<7xi1>
      %276 = arith.divf %cst_1, %cst : f32
      %277 = math.exp2 %1 : tensor<1x1xf32>
      %278 = arith.maxsi %c923826954_i64, %c1036678537_i64 : i64
      %rank_52 = tensor.rank %266 : tensor<1x9xi64>
      memref.alloca_scope  {
        %290 = index.maxs %204, %97
        %inserted_55 = tensor.insert %cst_3 into %collapsed_30[%c0] : tensor<1xf32>
        %291 = bufferization.to_tensor %128 : memref<1x9xi64>
        %292 = arith.minf %cst, %cst_3 : f32
        %293 = math.tan %cst_3 : f32
        %294 = vector.transpose %39, [0] : vector<7xi1> to vector<7xi1>
        %295 = math.ipowi %c1425659306_i32, %47 : i32
        memref.copy %128, %alloc_11 : memref<1x9xi64> to memref<1x9xi64>
        %296 = arith.shrsi %c1220492835_i64, %c1220492835_i64 : i64
        %297 = math.ceil %cst : f32
        %298 = math.copysign %9, %9 : tensor<1x1xf16>
        %rank_56 = tensor.rank %21 : tensor<i64>
        %299 = math.log %cst_0 : f32
        %300 = arith.addf %cst_0, %cst_0 : f32
        %301 = affine.max affine_map<(d0) -> (d0 + 192)>(%c14)
        %302 = arith.andi %c-2040_i16, %c-15673_i16 : i16
        %303 = vector.splat %c15 : vector<1x9xindex>
        %304 = index.castu %36 : index to i32
        vector.print %152 : vector<1x9xf32>
        %305 = affine.load %154[%c4, %c7] : memref<1x1xi16>
        %306 = math.rsqrt %0 : tensor<1x1xf32>
        %alloc_57 = memref.alloc() : memref<7x7x9xf32>
        memref.copy %alloc_9, %alloc_57 : memref<7x7x9xf32> to memref<7x7x9xf32>
        %307 = vector.extract_strided_slice %40 {offsets = [5], sizes = [1], strides = [1]} : vector<7xi1> to vector<1xi1>
        %collapsed_58 = tensor.collapse_shape %90 [[0, 1], [2]] : tensor<7x7x9xi32> into tensor<49x9xi32>
        %308 = math.powf %collapsed, %collapsed : tensor<1xf16>
        %309 = math.tan %0 : tensor<1x1xf32>
        %310 = vector.flat_transpose %148 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
        %311 = vector.insertelement %false, %307[%c14 : index] : vector<1xi1>
        %312 = vector.broadcast %cst_3 : f32 to vector<9x9xf32>
        %313 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"], kind = #vector.kind<maxf>} %73, %61, %312 : vector<1x9xf32>, vector<1x9xf32> into vector<9x9xf32>
        %314 = math.log2 %expanded : tensor<1x1x1xf32>
        %315 = memref.atomic_rmw muli %47, %alloc_6[%c0, %c2, %c1] : (i32, memref<7x7x9xi32>) -> i32
        %316 = math.sqrt %cst_3 : f32
      }
      %279 = vector.load %128[%c0, %c6] : memref<1x9xi64>, vector<1x9xi64>
      %280 = math.tanh %11 : tensor<7x7x9xf16>
      %281 = math.atan %1 : tensor<1x1xf32>
      %282 = arith.remui %c-15673_i16, %c-15673_i16 : i16
      %283 = vector.splat %182 : vector<1x9xindex>
      %284 = math.floor %6 : tensor<1x9xf32>
      %c0_i64 = arith.constant 0 : i64
      %c0_i64_53 = arith.constant 0 : i64
      %285 = vector.transfer_read %5[%97, %c7, %c12], %c0_i64_53 {permutation_map = affine_map<(d0, d1, d2) -> (d0)>} : tensor<7x7x9xi64>, vector<1xi64>
      %286 = affine.if affine_set<(d0, d1, d2, d3) : ((d1 + d0) * 2 == 0, d1 >= 0)>(%c3, %c7, %c4, %c8) -> i32 {
        %290 = arith.ori %c-2040_i16, %c-15673_i16 : i16
        %c1496299809_i32 = arith.constant 1496299809 : i32
        %291 = math.absf %11 : tensor<7x7x9xf16>
        %292 = math.round %8 : tensor<1x9xf16>
        %293 = math.exp %16 : tensor<7x7x9xf16>
        %294 = arith.minf %cst_0, %cst_0 : f32
        %295 = memref.atomic_rmw minu %47, %alloc_7[%c0, %c0] : (i32, memref<1x1xi32>) -> i32
        %296 = arith.addi %false, %false : i1
        affine.yield %c1425659306_i32 : i32
      } else {
        %290 = math.expm1 %collapsed : tensor<1xf16>
        %291 = index.divu %182, %97
        %292 = vector.matrix_multiply %39, %40 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
        %293 = vector.maskedload %alloc_20[%c0, %c0], %151, %292 : memref<1x1xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
        %294 = vector.create_mask %207, %204 : vector<1x9xi1>
        bufferization.dealloc_tensor %7 : tensor<1x9xi64>
        %295 = index.maxs %54, %210
        %296 = arith.addi %false, %false : i1
        affine.yield %c1425659306_i32 : i32
      }
      %287 = vector.transpose %72, [0, 1] : vector<1x9xf32> to vector<1x9xf32>
      %288 = index.ceildivs %c9, %c9
      %289 = vector.multi_reduction <minf>, %181, %174 [0] : vector<1x9xf32> to vector<9xf32>
      memref.copy %alloc_6, %alloc_13 : memref<7x7x9xi32> to memref<7x7x9xi32>
      %alloc_54 = memref.alloc() : memref<7x7x9xf16>
      memref.alloca_scope.return %alloc_54 : memref<7x7x9xf16>
    }
    %227 = vector.splat %rank_22 : vector<7x7x9xindex>
    %228 = math.fpowi %6, %12 : tensor<1x9xf32>, tensor<1x9xi32>
    %229 = arith.cmpf une, %cst_0, %cst : f32
    %230 = index.ceildivs %182, %c5
    memref.assume_alignment %alloc_9, 2 : memref<7x7x9xf32>
    %231 = tensor.empty() : tensor<1x1xf16>
    %232 = arith.maxui %true, %true : i1
    %233 = bufferization.to_memref %18 : memref<7xi64>
    memref.copy %95, %alloc : memref<7x7x9xi1> to memref<7x7x9xi1>
    %234 = math.tanh %collapsed_30 : tensor<1xf32>
    %235 = affine.min affine_map<(d0, d1) -> (d1 + 8, d0 - 4, d1 mod 32, d1 + 8)>(%210, %93)
    %236 = vector.transpose %148, [0] : vector<7xi1> to vector<7xi1>
    %237 = vector.matrix_multiply %151, %192 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 7 : i32} : (vector<1xi1>, vector<7xi1>) -> vector<7xi1>
    %238 = vector.broadcast %c1036678537_i64 : i64 to vector<1x9xi64>
    %rank_41 = tensor.rank %90 : tensor<7x7x9xi32>
    %239 = math.absf %186 : tensor<1x9xf32>
    %240 = math.tan %11 : tensor<7x7x9xf16>
    %241 = vector.broadcast %cst : f32 to vector<16xf32>
    %242 = vector.broadcast %true_2 : i1 to vector<16xi1>
    %243 = vector.maskedload %alloc_9[%c4, %c6, %c6], %242, %241 : memref<7x7x9xf32>, vector<16xi1>, vector<16xf32> into vector<16xf32>
    %244 = affine.apply affine_map<(d0) -> (d0 + 1)>(%36)
    %245 = vector.load %233[%c3] : memref<7xi64>, vector<7x7x9xi64>
    %alloca_42 = memref.alloca() : memref<7x7x9xi1>
    %246 = math.cttz %14 : tensor<1x9xi64>
    %247 = tensor.empty() : tensor<7x7x9xi64>
    %248 = index.castu %c4 : index to i32
    affine.store %c923826954_i64, %alloc_5[%c8, %c11] : memref<1x9xi64>
    scf.execute_region {
      %263 = vector.broadcast %cst : f32 to vector<1x9xf32>
      %264 = vector.fma %263, %180, %181 : vector<1x9xf32>
      %265 = vector.broadcast %true_2 : i1 to vector<9xi1>
      %266 = vector.maskedload %alloc_14[%c0, %c0], %265, %265 : memref<1x1xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
      %267 = vector.broadcast %c-15673_i16 : i16 to vector<1xi16>
      %268 = vector.maskedload %154[%c0, %c0], %151, %267 : memref<1x1xi16>, vector<1xi1>, vector<1xi16> into vector<1xi16>
      %269 = math.tanh %231 : tensor<1x1xf16>
      %270 = arith.minsi %c6246_i16, %c6246_i16 : i16
      %271 = vector.maskedload %233[%c6], %266, %19 : memref<7xi64>, vector<9xi1>, vector<9xi64> into vector<9xi64>
      %272 = math.rsqrt %collapsed_30 : tensor<1xf32>
      %273 = arith.shrsi %extracted, %extracted : i64
      %from_elements_48 = tensor.from_elements %47, %47, %c1425659306_i32, %47, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %c1425659306_i32, %47 : tensor<1x9xi32>
      %274 = affine.load %154[%c10, %c11] : memref<1x1xi16>
      %275 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 floordiv 64)>(%c1, %41, %230, %182)
      %276 = tensor.empty() : tensor<7x7xi64>
      %277 = tensor.empty() : tensor<9x7xi64>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d1, d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%276, %277, %reduced : tensor<7x7xi64>, tensor<9x7xi64>, tensor<7xi64>) outs(%5 : tensor<7x7x9xi64>) {
      ^bb0(%in: i64, %in_49: i64, %in_50: i64, %out: i64):
        %282 = index.casts %c1425659306_i32 : i32 to index
        %283 = bufferization.to_tensor %alloc_15 : memref<1x1xi32>
        %284 = arith.remsi %c-15673_i16, %c6246_i16 : i16
        %285 = math.log10 %9 : tensor<1x1xf16>
        %286 = math.rsqrt %cst_0 : f32
        %287 = arith.andi %false, %false : i1
        %inserted_51 = tensor.insert %true into %3[%c6, %c0, %c6] : tensor<7x7x9xi1>
        %288 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 floordiv 64)>(%rank_31, %c4, %116, %c9)
        %289 = arith.floordivsi %true, %true : i1
        %290 = math.ipowi %51, %51 : tensor<1x1xi64>
        %291 = arith.floordivsi %c1036678537_i64, %c923826954_i64 : i64
        %292 = math.copysign %8, %8 : tensor<1x9xf16>
        %293 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<add>} %271, %238, %104 : vector<9xi64>, vector<1x9xi64> into vector<1xi64>
        %294 = vector.broadcast %cst_1 : f32 to vector<7x7x9xf32>
        %295 = vector.fma %294, %111, %110 : vector<7x7x9xf32>
        %296 = vector.extract %19[7] : vector<9xi64>
        %297 = math.atan %17 : tensor<7x7x9xf16>
        %298 = index.divs %230, %49
        %299 = math.exp2 %1 : tensor<1x1xf32>
        %300 = math.ipowi %c1220492835_i64, %out : i64
        %301 = tensor.empty() : tensor<1x9xi32>
        %302 = linalg.matmul ins(%283, %12 : tensor<1x1xi32>, tensor<1x9xi32>) outs(%301 : tensor<1x9xi32>) -> tensor<1x9xi32>
        %303 = vector.flat_transpose %241 {columns = 4 : i32, rows = 4 : i32} : vector<16xf32> -> vector<16xf32>
        %304 = vector.bitcast %268 : vector<1xi16> to vector<1xf16>
        %305 = vector.matrix_multiply %156, %237 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 7 : i32} : (vector<1xi1>, vector<7xi1>) -> vector<7xi1>
        %306 = arith.muli %c923826954_i64, %in_50 : i64
        %307 = affine.load %alloc_11[%c6, %c15] : memref<1x9xi64>
        %308 = arith.andi %c923826954_i64, %extracted : i64
        %309 = math.ceil %11 : tensor<7x7x9xf16>
        %310 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d2 + d1 * 64, 0)>(%c8, %c8, %49, %210)
        %311 = arith.maxui %c-2040_i16, %c6246_i16 : i16
        %312 = tensor.empty() : tensor<1x9xf32>
        %313 = index.divu %c14, %c10
        %314 = math.round %1 : tensor<1x1xf32>
        linalg.yield %in : i64
      } -> tensor<7x7x9xi64>
      %279 = affine.load %alloc_18[%c8, %c15] : memref<1x9xi64>
      %280 = memref.load %alloc_8[%c0, %c3] : memref<1x9xi64>
      %281 = index.divs %83, %275
      %cast = tensor.cast %6 : tensor<1x9xf32> to tensor<?x?xf32>
      scf.yield
    }
    %249 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %40, %39, %false : vector<7xi1>, vector<7xi1> into i1
    %250 = math.cttz %12 : tensor<1x9xi32>
    %alloca_43 = memref.alloca() : memref<1x9xf32>
    %251 = math.tan %1 : tensor<1x1xf32>
    memref.assume_alignment %alloc_15, 16 : memref<1x1xi32>
    %252 = arith.minsi %c-15673_i16, %c6246_i16 : i16
    %253 = index.casts %c11 : index to i32
    %254 = vector.broadcast %false : i1 to vector<7x7xi1>
    %dest_44, %accumulated_value_45 = vector.scan <and>, %106, %254 {inclusive = true, reduction_dim = 2 : i64} : vector<7x7x9xi1>, vector<7x7xi1>
    %from_elements = tensor.from_elements %true_2 : tensor<1x1xi1>
    %255 = math.absf %cst_4 : f16
    scf.index_switch %116 
    case 1 {
      %263 = vector.broadcast %rank_32 : index to vector<16xindex>
      vector.scatter %alloc[%c5, %c3, %c1] [%263], %242, %242 : memref<7x7x9xi1>, vector<16xindex>, vector<16xi1>, vector<16xi1>
      %264 = vector.flat_transpose %214 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
      %265 = vector.transpose %180, [1, 0] : vector<1x9xf32> to vector<9x1xf32>
      %266 = arith.floordivsi %c1425659306_i32, %c1425659306_i32 : i32
      %267 = math.tan %1 : tensor<1x1xf32>
      %268 = math.tanh %cst_4 : f16
      %269 = index.divs %230, %224
      %270 = math.round %cst_0 : f32
      %271 = arith.ori %c6246_i16, %c-15673_i16 : i16
      %272 = arith.ori %false, %true : i1
      %273 = affine.apply affine_map<(d0) -> (d0 - 8)>(%41)
      %274 = vector.load %233[%c6] : memref<7xi64>, vector<1x1xi64>
      %275 = tensor.empty() : tensor<1x9xi64>
      %276 = vector.create_mask %204, %269 : vector<1x9xi1>
      %277 = tensor.empty() : tensor<9x7x7xi1>
      %alloc_48 = memref.alloc() : memref<9xi1>
      %278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%277, %alloc_48, %277 : tensor<9x7x7xi1>, memref<9xi1>, tensor<9x7x7xi1>) outs(%10 : tensor<7x7x9xi1>) {
      ^bb0(%in: i1, %in_49: i1, %in_50: i1, %out: i1):
        %279 = affine.apply affine_map<(d0, d1) -> ((((d0 - 128) * 2) ceildiv 128) mod 2)>(%116, %116)
        %280 = index.maxs %49, %c15
        %281 = vector.insertelement %true, %156[%c12 : index] : vector<1xi1>
        %282 = arith.addi %in_49, %false : i1
        %283 = arith.shrui %in, %in : i1
        %284 = vector.broadcast %47 : i32 to vector<7x7x9xi32>
        %285 = vector.gather %alloc_16[%rank_31, %167] [%284], %68, %111 : memref<1x9xf32>, vector<7x7x9xi32>, vector<7x7x9xi1>, vector<7x7x9xf32> into vector<7x7x9xf32>
        %286 = tensor.empty() : tensor<7x7x9xf32>
        %287 = memref.atomic_rmw assign %c1220492835_i64, %alloc_11[%c0, %c8] : (i64, memref<1x9xi64>) -> i64
        %288 = vector.insertelement %c1220492835_i64, %19[%c11 : index] : vector<9xi64>
        %289 = bufferization.clone %209 : memref<1x1xi64> to memref<1x1xi64>
        %290 = math.absf %8 : tensor<1x9xf16>
        %291 = vector.broadcast %cst_0 : f32 to vector<16x16xf32>
        %292 = vector.outerproduct %241, %243, %291 {kind = #vector.kind<minf>} : vector<16xf32>, vector<16xf32>
        %293 = math.log %13 : tensor<1x1xf32>
        memref.assume_alignment %alloc, 1 : memref<7x7x9xi1>
        %294 = tensor.empty() : tensor<1x1xf32>
        %295 = linalg.matmul ins(%1, %0 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%294 : tensor<1x1xf32>) -> tensor<1x1xf32>
        %296 = math.powf %cst_4, %cst_4 : f16
        %297 = arith.divui %c923826954_i64, %c923826954_i64 : i64
        %298 = arith.divf %cst_4, %cst_4 : f16
        %299 = arith.mulf %cst_4, %cst_4 : f16
        %300 = affine.max affine_map<(d0, d1) -> (d0 * 3 - 32, d1 mod 128 + d0)>(%184, %109)
        %301 = vector.broadcast %c923826954_i64 : i64 to vector<7xi64>
        %302 = vector.maskedload %alloc_8[%c0, %c0], %39, %301 : memref<1x9xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
        %303 = vector.multi_reduction <maxsi>, %264, %104 [] : vector<1xi64> to vector<1xi64>
        %304 = arith.minf %cst_1, %cst_0 : f32
        %305 = vector.shuffle %242, %242 [0, 1, 2, 4, 5, 6, 7, 8, 10, 11, 12, 13, 15, 16, 19, 21, 23, 24, 28] : vector<16xi1>, vector<16xi1>
        %306 = affine.apply affine_map<(d0) -> (d0 - 8)>(%269)
        %307 = vector.matrix_multiply %243, %174 {lhs_columns = 1 : i32, lhs_rows = 16 : i32, rhs_columns = 9 : i32} : (vector<16xf32>, vector<9xf32>) -> vector<144xf32>
        %308 = vector.insertelement %cst_3, %307[%184 : index] : vector<144xf32>
        %309 = math.absf %cst_3 : f32
        %310 = vector.matrix_multiply %39, %192 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi1>, vector<7xi1>) -> vector<1xi1>
        %311 = math.copysign %0, %294 : tensor<1x1xf32>
        %312 = index.mul %92, %116
        %inserted_51 = tensor.insert %cst_0 into %186[%c0, %c5] : tensor<1x9xf32>
        linalg.yield %true : i1
      } -> tensor<7x7x9xi1>
      memref.alloca_scope  {
        %279 = arith.maxsi %c-15673_i16, %c6246_i16 : i16
        %280 = affine.apply affine_map<(d0, d1, d2, d3) -> (d0 floordiv 64)>(%c0, %167, %93, %54)
        %281 = math.ctpop %true : i1
        %282 = vector.splat %134 : vector<1x1xindex>
        %283 = vector.broadcast %cst_3 : f32 to vector<7x7x9xf32>
        %284 = vector.broadcast %c-2040_i16 : i16 to vector<7x7x9xi16>
        %285 = memref.realloc %233 : memref<7xi64> to memref<1xi64>
        %286 = index.sizeof
        %287 = vector.broadcast %cst_1 : f32 to vector<1x9xf32>
        %288 = math.expm1 %84 : tensor<1x1xf16>
        %289 = arith.andi %c-15673_i16, %c-2040_i16 : i16
        %290 = math.atan %0 : tensor<1x1xf32>
        memref.store %false, %95[%c3, %c3, %c2] : memref<7x7x9xi1>
        %291 = math.exp2 %cst_4 : f16
        %292 = vector.broadcast %c-15673_i16 : i16 to vector<16xi16>
        %293 = vector.maskedload %alloc_10[%c0, %c3], %242, %292 : memref<1x9xi16>, vector<16xi1>, vector<16xi16> into vector<16xi16>
        %294 = math.rsqrt %9 : tensor<1x1xf16>
        %splat = tensor.splat %c1036678537_i64 : tensor<1x9xi64>
        %295 = math.fma %collapsed, %collapsed, %collapsed : tensor<1xf16>
        %296 = tensor.empty() : tensor<9x1xi64>
        %297 = tensor.empty() : tensor<1x1xi64>
        %298 = linalg.matmul ins(%33, %296 : tensor<1x9xi64>, tensor<9x1xi64>) outs(%297 : tensor<1x1xi64>) -> tensor<1x1xi64>
        memref.copy %alloc_15, %alloc_7 : memref<1x1xi32> to memref<1x1xi32>
        %299 = affine.apply affine_map<(d0) -> (d0 - 8)>(%c14)
        %300 = memref.load %alloc_7[%c0, %c0] : memref<1x1xi32>
        %301 = index.sizeof
        %302 = math.atan %0 : tensor<1x1xf32>
        %303 = vector.extract_strided_slice %192 {offsets = [0], sizes = [6], strides = [1]} : vector<7xi1> to vector<6xi1>
        %collapsed_49 = tensor.collapse_shape %105 [[0, 1]] : tensor<1x9xi64> into tensor<9xi64>
        %304 = arith.ori %true_2, %true : i1
        %305 = vector.flat_transpose %174 {columns = 3 : i32, rows = 3 : i32} : vector<9xf32> -> vector<9xf32>
        %306 = index.maxs %116, %299
        %307 = affine.apply affine_map<(d0, d1, d2, d3) -> ((d0 + 4) * 128)>(%rank_38, %127, %182, %54)
        %308 = math.round %cst_4 : f16
        %309 = math.round %9 : tensor<1x1xf16>
      }
      scf.yield
    }
    case 2 {
      %alloc_48 = memref.alloc() : memref<7x7x9xi64>
      memref.copy %alloc_12, %alloc_48 : memref<7x7x9xi64> to memref<7x7x9xi64>
      %263 = math.expm1 %cst_0 : f32
      %264 = vector.insertelement %extracted, %32[%rank_22 : index] : vector<9xi64>
      memref.copy %alloc_20, %alloc_14 : memref<1x1xi1> to memref<1x1xi1>
      %265 = index.casts %c-2040_i16 : i16 to index
      %extracted_49 = tensor.extract %6[%c0, %c7] : tensor<1x9xf32>
      %266 = vector.broadcast %rank_38 : index to vector<16xindex>
      vector.scatter %alloc_20[%c0, %c0] [%266], %242, %242 : memref<1x1xi1>, vector<16xindex>, vector<16xi1>, vector<16xi1>
      %267 = index.maxs %rank_38, %rank_29
      %268 = vector.extract %61[0] : vector<1x9xf32>
      %269 = vector.insertelement %true, %192[%80 : index] : vector<7xi1>
      %270 = vector.broadcast %cst : f32 to vector<1x1xf32>
      %271 = vector.fma %270, %270, %270 : vector<1x1xf32>
      %272 = affine.max affine_map<(d0) -> (0, d0 floordiv 128 + 1)>(%114)
      %273 = arith.minsi %c1220492835_i64, %c1036678537_i64 : i64
      %274 = arith.ori %c1425659306_i32, %47 : i32
      %275 = vector.flat_transpose %148 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      %276 = vector.matrix_multiply %268, %174 {lhs_columns = 9 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<9xf32>, vector<9xf32>) -> vector<1xf32>
      scf.yield
    }
    case 3 {
      bufferization.dealloc_tensor %4 : tensor<7x7x9xi1>
      %263 = math.log2 %6 : tensor<1x9xf32>
      %dest_48, %accumulated_value_49 = vector.scan <minf>, %72, %174 {inclusive = false, reduction_dim = 0 : i64} : vector<1x9xf32>, vector<9xf32>
      %264 = math.rsqrt %1 : tensor<1x1xf32>
      %265 = vector.load %226[%c0, %c3, %c1] : memref<7x7x9xf16>, vector<7x7x9xf16>
      %266 = vector.reduction <maxsi>, %40 : vector<7xi1> into i1
      %267 = tensor.empty() : tensor<1x9xi32>
      %268 = arith.addi %true, %true_2 : i1
      %269 = index.maxs %97, %244
      %270 = math.log %0 : tensor<1x1xf32>
      %inserted_50 = tensor.insert %cst_4 into %9[%c0, %c0] : tensor<1x1xf16>
      %271 = math.log10 %collapsed : tensor<1xf16>
      %from_elements_51 = tensor.from_elements %extracted, %c923826954_i64, %c1036678537_i64, %c678611975_i64, %c1220492835_i64, %c678611975_i64, %c923826954_i64, %c1036678537_i64, %c1220492835_i64, %c678611975_i64, %c1220492835_i64, %c678611975_i64, %c923826954_i64, %c678611975_i64, %c923826954_i64, %c923826954_i64, %extracted, %c1220492835_i64, %extracted, %extracted, %c923826954_i64, %c1036678537_i64, %extracted, %c1036678537_i64, %extracted, %c678611975_i64, %c678611975_i64, %c923826954_i64, %c678611975_i64, %c678611975_i64, %c1220492835_i64, %c923826954_i64, %c1220492835_i64, %c678611975_i64, %c923826954_i64, %c678611975_i64, %c678611975_i64, %c1220492835_i64, %c1036678537_i64, %c923826954_i64, %extracted, %c1220492835_i64, %extracted, %c923826954_i64, %c678611975_i64, %c923826954_i64, %c1220492835_i64, %extracted, %extracted, %c678611975_i64, %c678611975_i64, %c1036678537_i64, %c923826954_i64, %c1036678537_i64, %c678611975_i64, %c923826954_i64, %c923826954_i64, %c678611975_i64, %c1220492835_i64, %c923826954_i64, %extracted, %c923826954_i64, %extracted, %c1220492835_i64, %c923826954_i64, %c1036678537_i64, %c1220492835_i64, %c1220492835_i64, %extracted, %c1036678537_i64, %c678611975_i64, %c923826954_i64, %extracted, %c923826954_i64, %c1220492835_i64, %c678611975_i64, %c1036678537_i64, %extracted, %c1220492835_i64, %extracted, %c1036678537_i64, %c1036678537_i64, %extracted, %c1036678537_i64, %c1220492835_i64, %c923826954_i64, %c678611975_i64, %c1220492835_i64, %extracted, %extracted, %extracted, %extracted, %c678611975_i64, %c1220492835_i64, %extracted, %extracted, %c1036678537_i64, %c1036678537_i64, %extracted, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %c923826954_i64, %c1036678537_i64, %c1036678537_i64, %c1220492835_i64, %c1220492835_i64, %c923826954_i64, %c1036678537_i64, %c1036678537_i64, %c678611975_i64, %c923826954_i64, %c923826954_i64, %c1220492835_i64, %c678611975_i64, %c923826954_i64, %extracted, %extracted, %c1036678537_i64, %c1036678537_i64, %c678611975_i64, %c923826954_i64, %c923826954_i64, %c678611975_i64, %extracted, %c923826954_i64, %c923826954_i64, %c678611975_i64, %c923826954_i64, %c1220492835_i64, %c678611975_i64, %extracted, %c678611975_i64, %c1220492835_i64, %c1036678537_i64, %c923826954_i64, %c1220492835_i64, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %extracted, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %c678611975_i64, %c1036678537_i64, %c923826954_i64, %extracted, %c1036678537_i64, %c923826954_i64, %extracted, %c923826954_i64, %extracted, %c923826954_i64, %c923826954_i64, %c1220492835_i64, %c1220492835_i64, %c923826954_i64, %c1220492835_i64, %extracted, %c678611975_i64, %c678611975_i64, %c1220492835_i64, %c1036678537_i64, %extracted, %c1036678537_i64, %c923826954_i64, %c1036678537_i64, %c923826954_i64, %c678611975_i64, %c1220492835_i64, %c1036678537_i64, %c923826954_i64, %c923826954_i64, %c923826954_i64, %c923826954_i64, %extracted, %c1220492835_i64, %c1220492835_i64, %c678611975_i64, %c1220492835_i64, %extracted, %c678611975_i64, %c678611975_i64, %extracted, %extracted, %c678611975_i64, %extracted, %extracted, %c678611975_i64, %c923826954_i64, %c678611975_i64, %c678611975_i64, %c923826954_i64, %c1036678537_i64, %c1220492835_i64, %c678611975_i64, %c1220492835_i64, %c1036678537_i64, %c678611975_i64, %c1220492835_i64, %c1036678537_i64, %c923826954_i64, %c1220492835_i64, %c1036678537_i64, %c1220492835_i64, %c923826954_i64, %c1036678537_i64, %c678611975_i64, %c1220492835_i64, %c1036678537_i64, %c1036678537_i64, %c1220492835_i64, %c678611975_i64, %c1036678537_i64, %c678611975_i64, %c1036678537_i64, %c678611975_i64, %c1036678537_i64, %extracted, %c678611975_i64, %c1036678537_i64, %c678611975_i64, %c923826954_i64, %extracted, %c678611975_i64, %c1036678537_i64, %c678611975_i64, %c923826954_i64, %extracted, %c1036678537_i64, %extracted, %c678611975_i64, %c1220492835_i64, %c1220492835_i64, %c678611975_i64, %c923826954_i64, %c923826954_i64, %extracted, %extracted, %c678611975_i64, %c923826954_i64, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %c923826954_i64, %c678611975_i64, %c1036678537_i64, %extracted, %c923826954_i64, %c1036678537_i64, %c923826954_i64, %c923826954_i64, %c1036678537_i64, %c1036678537_i64, %c1036678537_i64, %c678611975_i64, %c923826954_i64, %c1036678537_i64, %c678611975_i64, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %c678611975_i64, %c923826954_i64, %extracted, %c1036678537_i64, %c678611975_i64, %c1220492835_i64, %extracted, %c1036678537_i64, %c1036678537_i64, %c678611975_i64, %extracted, %c923826954_i64, %c923826954_i64, %c1220492835_i64, %extracted, %c1220492835_i64, %c1220492835_i64, %c1220492835_i64, %c1220492835_i64, %c678611975_i64, %c1220492835_i64, %c678611975_i64, %c1036678537_i64, %extracted, %c1220492835_i64, %c1036678537_i64, %c1220492835_i64, %extracted, %c1036678537_i64, %c1220492835_i64, %extracted, %c1036678537_i64, %c678611975_i64, %c678611975_i64, %c1036678537_i64, %c1220492835_i64, %c678611975_i64, %c923826954_i64, %c1220492835_i64, %c1220492835_i64, %extracted, %c1036678537_i64, %c678611975_i64, %c1220492835_i64, %c678611975_i64, %c678611975_i64, %c1220492835_i64, %c1220492835_i64, %c1036678537_i64, %extracted, %c678611975_i64, %c1036678537_i64, %c678611975_i64, %c1036678537_i64, %c923826954_i64, %c1220492835_i64, %c1220492835_i64, %c678611975_i64, %c1036678537_i64, %c923826954_i64, %c678611975_i64, %c923826954_i64, %c1220492835_i64, %c923826954_i64, %c923826954_i64, %c678611975_i64, %extracted, %c1220492835_i64, %extracted, %extracted, %extracted, %c678611975_i64, %c1036678537_i64, %c1036678537_i64, %c1036678537_i64, %c1220492835_i64, %c678611975_i64, %c678611975_i64, %c678611975_i64, %c1220492835_i64, %c1036678537_i64, %c1036678537_i64, %c1036678537_i64, %c923826954_i64, %c923826954_i64, %c678611975_i64, %c678611975_i64, %c1220492835_i64, %extracted, %c1220492835_i64, %c1220492835_i64, %c678611975_i64, %c923826954_i64, %c678611975_i64, %c1036678537_i64, %extracted, %c678611975_i64, %extracted, %c1036678537_i64, %c923826954_i64, %c923826954_i64, %c1036678537_i64, %c923826954_i64, %c923826954_i64, %c1220492835_i64, %c1220492835_i64, %c678611975_i64, %c1220492835_i64, %c1220492835_i64, %c923826954_i64, %c923826954_i64, %c678611975_i64, %c923826954_i64, %c1036678537_i64, %c1036678537_i64, %extracted, %c1036678537_i64, %c1036678537_i64, %c678611975_i64, %extracted, %c923826954_i64, %c1220492835_i64, %c1036678537_i64, %c923826954_i64, %extracted, %extracted, %c1036678537_i64, %c678611975_i64, %c1036678537_i64, %c1036678537_i64, %extracted, %extracted, %extracted, %c923826954_i64, %c1036678537_i64, %c1220492835_i64, %extracted, %c923826954_i64, %c678611975_i64, %c678611975_i64, %c923826954_i64, %c923826954_i64, %extracted, %c1036678537_i64, %c1036678537_i64, %c1220492835_i64, %c1036678537_i64, %c1036678537_i64, %c678611975_i64, %c923826954_i64, %c1036678537_i64, %c923826954_i64, %c1220492835_i64, %extracted, %c1036678537_i64, %c1036678537_i64, %c923826954_i64, %extracted, %c678611975_i64, %c923826954_i64, %c678611975_i64, %extracted, %c1220492835_i64, %c1036678537_i64, %c678611975_i64, %c1036678537_i64, %c1220492835_i64, %extracted, %c678611975_i64, %c1220492835_i64, %c1036678537_i64, %c678611975_i64, %c1036678537_i64, %c678611975_i64, %c923826954_i64, %c1220492835_i64, %c1220492835_i64, %c923826954_i64 : tensor<7x7x9xi64>
      %272 = affine.apply affine_map<(d0) -> ((d0 * 2) ceildiv 64 - 4)>(%rank_31)
      %273 = vector.splat %rank_35 : vector<1x9xindex>
      %274 = math.floor %6 : tensor<1x9xf32>
      scf.yield
    }
    default {
      %263 = math.tan %8 : tensor<1x9xf16>
      %264 = arith.floordivsi %c6246_i16, %c-15673_i16 : i16
      %265 = vector.load %alloc_16[%c0, %c2] : memref<1x9xf32>, vector<7x7x9xf32>
      %266 = vector.bitcast %174 : vector<9xf32> to vector<9xf32>
      %267 = math.absi %7 : tensor<1x9xi64>
      %268 = arith.remsi %false, %false : i1
      %269 = vector.shuffle %110, %111 [0, 1, 2, 3, 4, 5, 6, 7, 9] : vector<7x7x9xf32>, vector<7x7x9xf32>
      %270 = math.exp %13 : tensor<1x1xf32>
      memref.assume_alignment %154, 4 : memref<1x1xi16>
      %rank_48 = tensor.rank %16 : tensor<7x7x9xf16>
      %271 = vector.broadcast %c678611975_i64 : i64 to vector<7xi64>
      %272 = vector.maskedload %alloc_8[%c0, %c7], %40, %271 : memref<1x9xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
      %273 = memref.alloca_scope  -> (memref<7x7x9xi32>) {
        %279 = arith.andi %true, %false : i1
        %280 = vector.broadcast %c4 : index to vector<9xindex>
        %281 = vector.broadcast %false : i1 to vector<9xi1>
        vector.scatter %alloc_5[%c0, %c2] [%280], %281, %19 : memref<1x9xi64>, vector<9xindex>, vector<9xi1>, vector<9xi64>
        %282 = arith.remf %cst_0, %cst : f32
        %283 = math.log2 %expanded : tensor<1x1x1xf32>
        %284 = vector.broadcast %false : i1 to vector<1x1xi1>
        %285 = vector.broadcast %c1425659306_i32 : i32 to vector<1x1xi32>
        %286 = vector.gather %alloc[%c6, %rank_33, %108] [%285], %284, %284 : memref<7x7x9xi1>, vector<1x1xi32>, vector<1x1xi1>, vector<1x1xi1> into vector<1x1xi1>
        %287 = arith.addi %47, %47 : i32
        %288 = arith.andi %c1036678537_i64, %extracted : i64
        %289 = vector.matrix_multiply %214, %214 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
        %cast = tensor.cast %7 : tensor<1x9xi64> to tensor<?x?xi64>
        %290 = math.ctlz %120 : tensor<1x1xi32>
        %291 = memref.load %226[%c1, %c1, %c5] : memref<7x7x9xf16>
        %292 = arith.minf %cst, %cst_1 : f32
        %293 = math.fma %cst, %cst_3, %cst_0 : f32
        %294 = math.cttz %true : i1
        %295 = arith.mulf %cst, %cst_3 : f32
        %296 = vector.broadcast %80 : index to vector<9xindex>
        %297 = vector.broadcast %true_2 : i1 to vector<9xi1>
        %298 = vector.broadcast %47 : i32 to vector<9xi32>
        vector.scatter %alloc_7[%c0, %c0] [%296], %297, %298 : memref<1x1xi32>, vector<9xindex>, vector<9xi1>, vector<9xi32>
        %299 = vector.broadcast %c6246_i16 : i16 to vector<7xi16>
        %300 = vector.maskedload %alloc_10[%c0, %c6], %192, %299 : memref<1x9xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
        %301 = arith.maxsi %c-2040_i16, %c-15673_i16 : i16
        %302 = math.exp2 %8 : tensor<1x9xf16>
        %303 = index.maxs %200, %rank_39
        %304 = math.absf %1 : tensor<1x1xf32>
        %305 = arith.addf %cst_4, %cst_4 : f16
        %306 = vector.load %alloc[%c6, %c5, %c0] : memref<7x7x9xi1>, vector<7x7x9xi1>
        %307 = math.cttz %c6246_i16 : i16
        %308 = arith.addi %false, %true : i1
        %309 = memref.load %alloc_5[%c0, %c6] : memref<1x9xi64>
        %310 = arith.maxsi %false, %false : i1
        %cast_49 = tensor.cast %1 : tensor<1x1xf32> to tensor<?x?xf32>
        %311 = math.absf %cst_3 : f32
        %312 = math.round %13 : tensor<1x1xf32>
        %313 = vector.broadcast %c1425659306_i32 : i32 to vector<7xi32>
        %314 = vector.maskedload %alloc_7[%c0, %c0], %192, %313 : memref<1x1xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %315 = math.fpowi %0, %120 : tensor<1x1xf32>, tensor<1x1xi32>
        memref.alloca_scope.return %alloc_13 : memref<7x7x9xi32>
      }
      %274 = affine.max affine_map<(d0) -> ((d0 mod 128 + 2) * 2)>(%184)
      %275 = vector.flat_transpose %40 {columns = 7 : i32, rows = 1 : i32} : vector<7xi1> -> vector<7xi1>
      %276 = vector.broadcast %cst_3 : f32 to vector<1x1xf32>
      %277 = vector.fma %276, %276, %276 : vector<1x1xf32>
      %278 = math.exp2 %84 : tensor<1x1xf16>
    }
    %256 = arith.maxui %c923826954_i64, %c1220492835_i64 : i64
    %alloc_46 = memref.alloc() : memref<9x7x7xi1>
    %257 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_46 : memref<9x7x7xi1>) outs(%10 : tensor<7x7x9xi1>) {
    ^bb0(%in: i1, %out: i1):
      %263 = math.ipowi %2, %15 : tensor<1x1xi1>
      %264 = arith.minf %cst_3, %cst : f32
      %265 = arith.maxui %in, %out : i1
      %266 = math.roundeven %collapsed_30 : tensor<1xf32>
      %267 = tensor.empty() : tensor<1x1xf16>
      %mapped_48 = linalg.map ins(%9, %84 : tensor<1x1xf16>, tensor<1x1xf16>) outs(%267 : tensor<1x1xf16>)
        (%in_53: f16, %in_54: f16) {
          %291 = arith.maxsi %false, %true_2 : i1
          %292 = vector.broadcast %47 : i32 to vector<9xi32>
          %293 = vector.broadcast %true : i1 to vector<9xi1>
          %294 = vector.maskedload %alloc_7[%c0, %c0], %293, %292 : memref<1x1xi32>, vector<9xi1>, vector<9xi32> into vector<9xi32>
          %295 = math.tan %cst_3 : f32
          %296 = math.powf %in_53, %cst_4 : f16
          %297 = math.ceil %1 : tensor<1x1xf32>
          %298 = vector.broadcast %c678611975_i64 : i64 to vector<7xi64>
          %299 = vector.maskedload %alloc_11[%c0, %c8], %39, %298 : memref<1x9xi64>, vector<7xi1>, vector<7xi64> into vector<7xi64>
          %300 = affine.apply affine_map<(d0, d1) -> (d1 ceildiv 4 - (d1 ceildiv 4) mod 2)>(%139, %145)
          %301 = index.mul %200, %c1
          %inserted_55 = tensor.insert %c1220492835_i64 into %reduced[%c1] : tensor<7xi64>
          %302 = math.cttz %3 : tensor<7x7x9xi1>
          %303 = memref.load %233[%c3] : memref<7xi64>
          %304 = arith.shli %c1036678537_i64, %c1036678537_i64 : i64
          %305 = arith.divf %cst_1, %cst : f32
          %306 = vector.matrix_multiply %298, %32 {lhs_columns = 1 : i32, lhs_rows = 7 : i32, rhs_columns = 9 : i32} : (vector<7xi64>, vector<9xi64>) -> vector<63xi64>
          %307 = vector.broadcast %54 : index to vector<16xindex>
          vector.scatter %alloc_9[%c0, %c1, %c4] [%307], %242, %243 : memref<7x7x9xf32>, vector<16xindex>, vector<16xi1>, vector<16xf32>
          %308 = affine.apply affine_map<(d0) -> (d0 - 4)>(%c5)
          %309 = math.fma %cst_4, %in_54, %in_54 : f16
          %310 = index.maxs %rank_38, %200
          %expanded_56 = tensor.expand_shape %13 [[0], [1, 2]] : tensor<1x1xf32> into tensor<1x1x1xf32>
          %311 = math.ctlz %7 : tensor<1x9xi64>
          %312 = vector.maskedload %alloc_12[%c0, %c3, %c6], %156, %214 : memref<7x7x9xi64>, vector<1xi1>, vector<1xi64> into vector<1xi64>
          %313 = memref.load %209[%c0, %c0] : memref<1x1xi64>
          %314 = math.rsqrt %expanded : tensor<1x1x1xf32>
          %315 = index.divs %182, %c6
          %316 = math.exp2 %collapsed : tensor<1xf16>
          %317 = affine.load %alloc_19[%c12, %c8] : memref<1x9xi16>
          %318 = arith.mulf %cst_1, %cst : f32
          %from_elements_57 = tensor.from_elements %c1425659306_i32 : tensor<1x1xi32>
          %319 = math.atan %cst : f32
          %inserted_58 = tensor.insert %in_53 into %267[%c0, %c0] : tensor<1x1xf16>
          %320 = arith.andi %c1036678537_i64, %c678611975_i64 : i64
          %321 = arith.andi %c-2040_i16, %317 : i16
          %cst_59 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_59 : f16
        }
      %268 = vector.load %alloc_8[%c0, %c2] : memref<1x9xi64>, vector<1x1xi64>
      %269 = arith.floordivsi %c923826954_i64, %c678611975_i64 : i64
      %270 = math.absf %9 : tensor<1x1xf16>
      %271 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %241, %243, %cst : vector<16xf32>, vector<16xf32> into f32
      vector.print %111 : vector<7x7x9xf32>
      %cast = tensor.cast %16 : tensor<7x7x9xf16> to tensor<?x?x?xf16>
      %272 = vector.broadcast %true : i1 to vector<9xi1>
      %273 = vector.maskedload %alloc_20[%c0, %c0], %272, %272 : memref<1x1xi1>, vector<9xi1>, vector<9xi1> into vector<9xi1>
      bufferization.dealloc_tensor %14 : tensor<1x9xi64>
      %274 = math.log10 %8 : tensor<1x9xf16>
      %275 = index.maxs %244, %167
      %276 = math.roundeven %cst : f32
      %alloca_49 = memref.alloca() : memref<7x7x9xf16>
      %277 = math.round %expanded : tensor<1x1x1xf32>
      %278 = vector.splat %134 : vector<1x9xindex>
      %279 = math.exp %0 : tensor<1x1xf32>
      %280 = vector.load %alloc_17[%c0, %c8] : memref<1x9xf16>, vector<1x9xf16>
      %true_50 = index.bool.constant true
      %281 = index.maxs %c11, %207
      %282 = math.cttz %extracted : i64
      %283 = vector.transpose %152, [1, 0] : vector<1x9xf32> to vector<9x1xf32>
      %284 = arith.remsi %extracted, %c1220492835_i64 : i64
      %from_elements_51 = tensor.from_elements %cst_4 : tensor<1x1xf16>
      %285 = math.log %9 : tensor<1x1xf16>
      %286 = affine.for %arg0 = 0 to 119 iter_args(%arg1 = %8) -> (tensor<1x9xf16>) {
        affine.yield %arg1 : tensor<1x9xf16>
      }
      %287 = vector.broadcast %cst_4 : f16 to vector<9xf16>
      %288 = vector.maskedload %226[%c0, %c0, %c6], %272, %287 : memref<7x7x9xf16>, vector<9xi1>, vector<9xf16> into vector<9xf16>
      %alloc_52 = memref.alloc() : memref<9x7xi1>
      %289 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_52 : memref<9x7xi1>) outs(%23 : tensor<7x7x9xi1>) {
      ^bb0(%in_53: i1, %out_54: i1):
        %291 = index.casts %109 : index to i32
        %292 = tensor.empty() : tensor<1x1xi1>
        %293 = linalg.matmul ins(%2, %15 : tensor<1x1xi1>, tensor<1x1xi1>) outs(%292 : tensor<1x1xi1>) -> tensor<1x1xi1>
        %294 = index.divu %c11, %rank_33
        %295 = vector.shuffle %148, %272 [1, 6, 9, 10, 12, 13, 15] : vector<7xi1>, vector<9xi1>
        %alloca_55 = memref.alloca() : memref<1x9xi1>
        %296 = vector.broadcast %true_50 : i1 to vector<7x7xi1>
        %297 = vector.outerproduct %40, %148, %296 {kind = #vector.kind<or>} : vector<7xi1>, vector<7xi1>
        %298 = vector.insertelement %in_53, %40[%101 : index] : vector<7xi1>
        %299 = arith.minf %cst_0, %cst : f32
        %splat = tensor.splat %cst_0 : tensor<1x9xf32>
        %300 = memref.load %alloc_20[%c0, %c0] : memref<1x1xi1>
        %301 = math.round %cst : f32
        %302 = index.ceildivs %162, %c2
        %alloc_56 = memref.alloc() : memref<1x9xf32>
        memref.copy %alloc_16, %alloc_56 : memref<1x9xf32> to memref<1x9xf32>
        %303 = math.atan %186 : tensor<1x9xf32>
        %304 = vector.splat %rank_29 : vector<1x9xindex>
        %305 = math.fpowi %9, %120 : tensor<1x1xf16>, tensor<1x1xi32>
        %306 = math.ipowi %5, %5 : tensor<7x7x9xi64>
        %307 = vector.load %226[%c6, %c3, %c0] : memref<7x7x9xf16>, vector<1x9xf16>
        %308 = vector.insertelement %true_50, %151[%rank_32 : index] : vector<1xi1>
        %309 = arith.divui %in_53, %true : i1
        %310 = index.divu %c14, %235
        %311 = arith.addi %out_54, %out : i1
        %312 = arith.remsi %in_53, %true_50 : i1
        %313 = vector.splat %184 : vector<7x7x9xindex>
        %314 = memref.atomic_rmw mins %c923826954_i64, %alloc_8[%c0, %c7] : (i64, memref<1x9xi64>) -> i64
        %315 = vector.broadcast %c923826954_i64 : i64 to vector<16xi64>
        %316 = vector.maskedload %alloc_8[%c0, %c7], %242, %315 : memref<1x9xi64>, vector<16xi1>, vector<16xi64> into vector<16xi64>
        affine.store %c678611975_i64, %233[%c8] : memref<7xi64>
        %317 = arith.shrsi %true_2, %true_50 : i1
        %318 = vector.multi_reduction <xor>, %106, %148 [0, 2] : vector<7x7x9xi1> to vector<7xi1>
        %splat_57 = tensor.splat %extracted : tensor<1x9xi64>
        %319 = vector.insertelement %c1036678537_i64, %104[%184 : index] : vector<1xi64>
        %320 = arith.minsi %c6246_i16, %c-2040_i16 : i16
        linalg.yield %out_54 : i1
      } -> tensor<7x7x9xi1>
      %290 = affine.min affine_map<(d0) -> (d0 ceildiv 128 + d0 mod 8, -d0)>(%93)
      linalg.yield %true_2 : i1
    } -> tensor<7x7x9xi1>
    %258 = tensor.empty() : tensor<7x7x9xi1>
    %259 = linalg.copy ins(%23 : tensor<7x7x9xi1>) outs(%258 : tensor<7x7x9xi1>) -> tensor<7x7x9xi1>
    %260 = tensor.empty() : tensor<1x1xf16>
    %transposed = linalg.transpose ins(%231 : tensor<1x1xf16>) outs(%260 : tensor<1x1xf16>) permutation = [1, 0] 
    %alloc_47 = memref.alloc() : memref<7x9xf16>
    linalg.reduce ins(%17 : tensor<7x7x9xf16>) outs(%alloc_47 : memref<7x9xf16>) dimensions = [0] 
      (%in: f16, %init: f16) {
        %263 = math.ctpop %105 : tensor<1x9xi64>
        %264 = math.fpowi %cst_3, %47 : f32, i32
        %265 = math.expm1 %13 : tensor<1x1xf32>
        %266 = math.ceil %cst_4 : f16
        %extracted_48 = tensor.extract %22[] : tensor<i64>
        %267 = math.floor %in : f16
        %268 = math.cttz %51 : tensor<1x1xi64>
        %269 = vector.broadcast %cst_3 : f32 to vector<7x7x9xf32>
        %270 = vector.fma %269, %111, %111 : vector<7x7x9xf32>
        %cst_49 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_49 : f16
      }
    %261 = scf.parallel (%arg0, %arg1) = (%92, %83) to (%c11, %c2) step (%c13, %c14) init (%alloc_7) -> memref<1x1xi32> {
      %263 = math.expm1 %expanded : tensor<1x1x1xf32>
      %264 = arith.andi %c1220492835_i64, %c678611975_i64 : i64
      %265 = math.cttz %7 : tensor<1x9xi64>
      %266 = index.sizeof
      memref.alloca_scope  {
        %277 = math.fpowi %cst, %c1425659306_i32 : f32, i32
        %278 = math.fma %9, %9, %231 : tensor<1x1xf16>
        %279 = affine.apply affine_map<(d0) -> (d0 - 4)>(%49)
        %280 = index.mul %36, %rank_39
        %281 = math.tan %186 : tensor<1x9xf32>
        %282 = arith.minf %cst_0, %cst_3 : f32
        %283 = arith.remsi %extracted, %c1220492835_i64 : i64
        %284 = vector.splat %280 : vector<1x1xindex>
        %inserted_49 = tensor.insert %47 into %12[%c0, %c1] : tensor<1x9xi32>
        %c786913422_i32 = arith.constant 786913422 : i32
        %285 = math.exp2 %8 : tensor<1x9xf16>
        %286 = vector.broadcast %cst : f32 to vector<1x9xf32>
        %287 = vector.fma %286, %286, %62 : vector<1x9xf32>
        %288 = vector.flat_transpose %19 {columns = 3 : i32, rows = 3 : i32} : vector<9xi64> -> vector<9xi64>
        %289 = tensor.empty() : tensor<1x9xi32>
        %290 = vector.broadcast %cst_4 : f16 to vector<1xf16>
        %291 = vector.maskedload %226[%c5, %c3, %c2], %151, %290 : memref<7x7x9xf16>, vector<1xi1>, vector<1xf16> into vector<1xf16>
        %cast = tensor.cast %transposed : tensor<1x1xf16> to tensor<?x?xf16>
        %292 = index.divu %184, %arg1
        %293 = vector.transpose %68, [2, 1, 0] : vector<7x7x9xi1> to vector<9x7x7xi1>
        %294 = bufferization.to_tensor %alloc_9 : memref<7x7x9xf32>
        %295 = vector.broadcast %c-15673_i16 : i16 to vector<9xi16>
        %296 = vector.insert %295, %136 [0] : vector<9xi16> into vector<1x9xi16>
        %297 = arith.andi %c1220492835_i64, %c1220492835_i64 : i64
        %298 = math.log %1 : tensor<1x1xf32>
        %299 = vector.broadcast %false : i1 to vector<9xi1>
        %300 = vector.maskedload %alloc_19[%c0, %c3], %299, %295 : memref<1x9xi16>, vector<9xi1>, vector<9xi16> into vector<9xi16>
        %alloc_50 = memref.alloc() : memref<9x7xi64>
        %301 = tensor.empty() : tensor<1x7xi64>
        %302 = linalg.matmul ins(%7, %alloc_50 : tensor<1x9xi64>, memref<9x7xi64>) outs(%301 : tensor<1x7xi64>) -> tensor<1x7xi64>
        %303 = index.maxs %162, %182
        memref.assume_alignment %alloc_9, 2 : memref<7x7x9xf32>
        %304 = math.round %8 : tensor<1x9xf16>
        memref.store %c923826954_i64, %128[%c0, %c5] : memref<1x9xi64>
        %alloc_51 = memref.alloc() : memref<1x1xi1>
        %305 = math.roundeven %11 : tensor<7x7x9xf16>
        %306 = vector.extract %149[0] : vector<1x9xi1>
        %307 = index.divs %49, %c11
      }
      %267 = scf.if %true_2 -> (f16) {
        %277 = math.round %17 : tensor<7x7x9xf16>
        %278 = arith.divf %cst_4, %cst_4 : f16
        vector.print %32 : vector<9xi64>
        %279 = arith.floordivsi %c923826954_i64, %c678611975_i64 : i64
        %280 = vector.splat %108 : vector<1x1xindex>
        %281 = math.fma %16, %17, %11 : tensor<7x7x9xf16>
        %282 = vector.insert %extracted, %32 [7] : i64 into vector<9xi64>
        %283 = index.maxu %49, %207
        scf.yield %cst_4 : f16
      } else {
        %277 = affine.load %alloc_5[%c10, %c6] : memref<1x9xi64>
        %278 = vector.reduction <minui>, %19 : vector<9xi64> into i64
        %279 = vector.broadcast %c1425659306_i32 : i32 to vector<16xi32>
        %280 = vector.maskedload %alloc_6[%c6, %c6, %c2], %242, %279 : memref<7x7x9xi32>, vector<16xi1>, vector<16xi32> into vector<16xi32>
        bufferization.dealloc_tensor %8 : tensor<1x9xf16>
        %281 = arith.minf %cst, %cst_1 : f32
        %282 = tensor.empty() : tensor<9x1xi64>
        %283 = tensor.empty() : tensor<1x1xi64>
        %284 = linalg.matmul ins(%14, %282 : tensor<1x9xi64>, tensor<9x1xi64>) outs(%283 : tensor<1x1xi64>) -> tensor<1x1xi64>
        %285 = math.exp2 %231 : tensor<1x1xf16>
        %286 = math.sqrt %0 : tensor<1x1xf32>
        scf.yield %cst_4 : f16
      }
      %268 = vector.extract %241[4] : vector<16xf32>
      %269 = memref.alloca_scope  -> (i64) {
        %c22480_i16 = arith.constant 22480 : i16
        %277 = math.exp %cst_0 : f32
        %278 = tensor.empty() : tensor<1x9xf16>
        %279 = arith.andi %true_2, %false : i1
        %280 = math.roundeven %267 : f16
        %alloca_49 = memref.alloca() : memref<7x7x9xi64>
        %281 = math.log2 %11 : tensor<7x7x9xf16>
        memref.copy %95, %alloc : memref<7x7x9xi1> to memref<7x7x9xi1>
        %collapsed_50 = tensor.collapse_shape %260 [[0, 1]] : tensor<1x1xf16> into tensor<1xf16>
        %282 = math.ceil %9 : tensor<1x1xf16>
        %283 = arith.cmpf ole, %267, %cst_4 : f16
        %284 = math.exp %1 : tensor<1x1xf32>
        %285 = arith.cmpf ult, %cst_1, %cst_1 : f32
        %286 = vector.load %alloc_15[%c0, %c0] : memref<1x1xi32>, vector<1x9xi32>
        %287 = vector.flat_transpose %151 {columns = 1 : i32, rows = 1 : i32} : vector<1xi1> -> vector<1xi1>
        %288 = memref.load %alloc_14[%c0, %c0] : memref<1x1xi1>
        %289 = arith.maxsi %c-2040_i16, %c-2040_i16 : i16
        %290 = vector.broadcast %extracted : i64 to vector<1x9xi64>
        %rank_51 = tensor.rank %6 : tensor<1x9xf32>
        %291 = vector.bitcast %148 : vector<7xi1> to vector<7xi1>
        %292 = vector.multi_reduction <add>, %104, %c1220492835_i64 [0] : vector<1xi64> to i64
        %293 = arith.andi %47, %c1425659306_i32 : i32
        %294 = arith.floordivsi %c1036678537_i64, %c1220492835_i64 : i64
        %295 = affine.load %128[%c1, %c12] : memref<1x9xi64>
        %296 = vector.broadcast %cst_0 : f32 to vector<7x7x9xf32>
        %297 = vector.fma %296, %296, %111 : vector<7x7x9xf32>
        %298 = memref.load %alloc_17[%c0, %c8] : memref<1x9xf16>
        %299 = math.absi %120 : tensor<1x1xi32>
        %300 = math.tan %260 : tensor<1x1xf16>
        %301 = vector.load %alloc_16[%c0, %c3] : memref<1x9xf32>, vector<1x9xf32>
        %302 = arith.shli %true, %false : i1
        %303 = math.fma %13, %13, %13 : tensor<1x1xf32>
        %304 = vector.transpose %237, [0] : vector<7xi1> to vector<7xi1>
        memref.alloca_scope.return %c678611975_i64 : i64
      }
      %270 = index.casts %200 : index to i32
      %271 = arith.shrsi %c923826954_i64, %c678611975_i64 : i64
      memref.copy %alloc_20, %alloc_14 : memref<1x1xi1> to memref<1x1xi1>
      %272 = math.tan %collapsed_30 : tensor<1xf32>
      %273 = vector.broadcast %cst_0 : f32 to vector<1xf32>
      %274 = vector.multi_reduction <add>, %181, %273 [1] : vector<1x9xf32> to vector<1xf32>
      memref.copy %alloc_7, %alloc_15 : memref<1x1xi32> to memref<1x1xi32>
      %275 = arith.maxsi %extracted, %c678611975_i64 : i64
      %276 = vector.broadcast %cst_1 : f32 to vector<7x7x9xf32>
      %alloc_48 = memref.alloc() : memref<1x1xi32>
      scf.reduce(%alloc_48)  : memref<1x1xi32> {
      ^bb0(%arg2: memref<1x1xi32>, %arg3: memref<1x1xi32>):
        %277 = memref.load %alloc_48[%c0, %c0] : memref<1x1xi32>
        %278 = index.maxs %200, %c1
        vector.print %148 : vector<7xi1>
        %279 = vector.insertelement %true_2, %151[%c9 : index] : vector<1xi1>
        %280 = arith.xori %false, %false : i1
        %281 = math.log2 %cst_0 : f32
        %282 = math.sqrt %17 : tensor<7x7x9xf16>
        %283 = tensor.empty() : tensor<1x1xi1>
        %alloc_49 = memref.alloc() : memref<1x1xi32>
        scf.reduce.return %alloc_49 : memref<1x1xi32>
      }
      scf.yield
    }
    %262 = affine.vector_load %alloc_18[%rank_22, %c12] : memref<1x9xi64>, vector<16xi64>
    affine.vector_store %237, %alloc_14[%182, %167] : memref<1x1xi1>, vector<7xi1>
    vector.print %19 : vector<9xi64>
    vector.print %32 : vector<9xi64>
    vector.print %39 : vector<7xi1>
    vector.print %40 : vector<7xi1>
    vector.print %61 : vector<1x9xf32>
    vector.print %62 : vector<1x9xf32>
    vector.print %68 : vector<7x7x9xi1>
    vector.print %72 : vector<1x9xf32>
    vector.print %73 : vector<1x9xf32>
    vector.print %104 : vector<1xi64>
    vector.print %106 : vector<7x7x9xi1>
    vector.print %110 : vector<7x7x9xf32>
    vector.print %111 : vector<7x7x9xf32>
    vector.print %136 : vector<1x9xi16>
    vector.print %148 : vector<7xi1>
    vector.print %149 : vector<1x9xi1>
    vector.print %151 : vector<1xi1>
    vector.print %152 : vector<1x9xf32>
    vector.print %153 : vector<1x9xf32>
    vector.print %156 : vector<1xi1>
    vector.print %174 : vector<9xf32>
    vector.print %180 : vector<1x9xf32>
    vector.print %181 : vector<1x9xf32>
    vector.print %192 : vector<7xi1>
    vector.print %214 : vector<1xi64>
    vector.print %237 : vector<7xi1>
    vector.print %238 : vector<1x9xi64>
    vector.print %241 : vector<16xf32>
    vector.print %242 : vector<16xi1>
    vector.print %243 : vector<16xf32>
    vector.print %245 : vector<7x7x9xi64>
    vector.print %262 : vector<16xi64>
    vector.print %cst : f32
    vector.print %false : i1
    vector.print %c6246_i16 : i16
    vector.print %cst_0 : f32
    vector.print %c923826954_i64 : i64
    vector.print %c-2040_i16 : i16
    vector.print %true : i1
    vector.print %c1036678537_i64 : i64
    vector.print %cst_1 : f32
    vector.print %true_2 : i1
    vector.print %cst_3 : f32
    vector.print %cst_4 : f16
    vector.print %c1425659306_i32 : i32
    vector.print %c678611975_i64 : i64
    vector.print %c-15673_i16 : i16
    vector.print %c1220492835_i64 : i64
    vector.print %47 : i32
    vector.print %extracted : i64
    return %true : i1
  }
}
