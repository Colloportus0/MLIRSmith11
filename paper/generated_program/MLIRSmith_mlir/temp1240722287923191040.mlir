module {
  func.func nested @func1(%arg0: memref<7x7x3xi16>, %arg1: vector<8xf16>, %arg2: memref<8x8xi16>) -> index {
    %cst = arith.constant 1.66549939E+9 : f32
    %cst_0 = arith.constant 1.50996646E+9 : f32
    %cst_1 = arith.constant 2.500800e+04 : f16
    %c1177827053_i64 = arith.constant 1177827053 : i64
    %cst_2 = arith.constant 2.009600e+04 : f16
    %c220153356_i64 = arith.constant 220153356 : i64
    %true = arith.constant true
    %c789415997_i64 = arith.constant 789415997 : i64
    %true_3 = arith.constant true
    %cst_4 = arith.constant 0x4E6696F6 : f32
    %cst_5 = arith.constant 1.688000e+03 : f16
    %c1425_i16 = arith.constant 1425 : i16
    %false = arith.constant false
    %cst_6 = arith.constant 1.176800e+04 : f16
    %c1147522420_i32 = arith.constant 1147522420 : i32
    %c1373574094_i32 = arith.constant 1373574094 : i32
    %0 = tensor.empty() : tensor<7x7x3xf32>
    %1 = tensor.empty() : tensor<7x8xi16>
    %2 = tensor.empty() : tensor<7x7x3xi64>
    %3 = tensor.empty() : tensor<8xi64>
    %4 = tensor.empty() : tensor<7x7x3xi32>
    %5 = tensor.empty() : tensor<8xi16>
    %6 = tensor.empty() : tensor<8x8xi64>
    %7 = tensor.empty() : tensor<7x8xf16>
    %8 = tensor.empty() : tensor<8x8xf32>
    %9 = tensor.empty() : tensor<8x8xi64>
    %10 = tensor.empty() : tensor<8xi1>
    %11 = tensor.empty() : tensor<7x7x3xi16>
    %12 = tensor.empty() : tensor<8x8xi32>
    %13 = tensor.empty() : tensor<8x8xi16>
    %14 = tensor.empty() : tensor<7x8xi16>
    %15 = tensor.empty() : tensor<8xf32>
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
    %alloc_7 = memref.alloc() : memref<7x8xi32>
    %alloc_8 = memref.alloc() : memref<8xf32>
    %alloc_9 = memref.alloc() : memref<7x8xi1>
    %alloc_10 = memref.alloc() : memref<7x7x3xi64>
    %alloc_11 = memref.alloc() : memref<7x7x3xf16>
    %alloc_12 = memref.alloc() : memref<7x8xf16>
    %alloc_13 = memref.alloc() : memref<8xf32>
    %alloc_14 = memref.alloc() : memref<7x7x3xi16>
    %alloc_15 = memref.alloc() : memref<7x8xi64>
    %alloc_16 = memref.alloc() : memref<7x8xi1>
    %alloc_17 = memref.alloc() : memref<8xf32>
    %alloc_18 = memref.alloc() : memref<8xi32>
    %alloc_19 = memref.alloc() : memref<8x8xf16>
    %alloc_20 = memref.alloc() : memref<8x8xi32>
    %alloc_21 = memref.alloc() : memref<7x8xi16>
    %16 = tensor.empty() : tensor<8xi16>
    %17 = linalg.copy ins(%5 : tensor<8xi16>) outs(%16 : tensor<8xi16>) -> tensor<8xi16>
    %alloc_22 = memref.alloc() : memref<8xi32>
    linalg.transpose ins(%alloc_18 : memref<8xi32>) outs(%alloc_22 : memref<8xi32>) permutation = [0] 
    %alloc_23 = memref.alloc() : memref<7xf16>
    linalg.reduce ins(%alloc_12 : memref<7x8xf16>) outs(%alloc_23 : memref<7xf16>) dimensions = [1] 
      (%in: f16, %init: f16) {
        %254 = index.ceildivu %c6, %c9
        bufferization.dealloc_tensor %15 : tensor<8xf32>
        %255 = arith.addi %c789415997_i64, %c789415997_i64 : i64
        %256 = vector.broadcast %c1425_i16 : i16 to vector<5xi16>
        %257 = vector.broadcast %c1425_i16 : i16 to vector<5x5xi16>
        %258 = vector.outerproduct %256, %256, %257 {kind = #vector.kind<mul>} : vector<5xi16>, vector<5xi16>
        scf.execute_region {
          %262 = arith.divui %false, %true : i1
          %263 = math.ipowi %5, %16 : tensor<8xi16>
          %264 = index.divs %c1, %254
          bufferization.dealloc_tensor %8 : tensor<8x8xf32>
          %265 = arith.andi %true, %false : i1
          %266 = math.absf %in : f16
          %267 = arith.shrui %c220153356_i64, %c789415997_i64 : i64
          %268 = arith.divf %cst_6, %cst_2 : f16
          %269 = math.roundeven %init : f16
          %true_50 = index.bool.constant true
          bufferization.dealloc_tensor %13 : tensor<8x8xi16>
          %270 = arith.xori %true, %true_50 : i1
          %271 = index.ceildivs %c8, %c15
          %272 = math.rsqrt %cst : f32
          %273 = math.log %7 : tensor<7x8xf16>
          affine.store %cst, %alloc_8[%c14] : memref<8xf32>
          scf.yield
        }
        %259 = index.maxs %254, %c5
        %260 = math.round %cst : f32
        %261 = index.ceildivu %259, %c10
        %cst_49 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_49 : f16
      }
    %18 = scf.parallel (%arg3, %arg4) = (%c15, %c13) to (%c6, %c10) step (%c9, %c9) init (%4) -> tensor<7x7x3xi32> {
      %inserted_49 = tensor.insert %c220153356_i64 into %6[%c6, %c4] : tensor<8x8xi64>
      %254 = vector.broadcast %c1425_i16 : i16 to vector<8xi16>
      %255 = vector.matrix_multiply %254, %254 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi16>, vector<8xi16>) -> vector<1xi16>
      affine.for %arg5 = 0 to 11 {
      }
      %256 = vector.insert %c1425_i16, %254 [7] : i16 into vector<8xi16>
      %257 = vector.reduction <xor>, %255 : vector<1xi16> into i16
      memref.store %cst_6, %alloc_19[%c5, %c4] : memref<8x8xf16>
      %258 = tensor.empty() : tensor<8xf32>
      %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %255, %255, %c1425_i16 : vector<1xi16>, vector<1xi16> into i16
      %rank_50 = tensor.rank %11 : tensor<7x7x3xi16>
      %c464632399_i32 = arith.constant 464632399 : i32
      %260 = arith.ceildivsi %false, %false : i1
      %261 = math.tan %7 : tensor<7x8xf16>
      %inserted_51 = tensor.insert %cst into %8[%c7, %c3] : tensor<8x8xf32>
      %262 = arith.remsi %c1373574094_i32, %c1147522420_i32 : i32
      %263 = math.copysign %7, %7 : tensor<7x8xf16>
      %c11223_i16 = arith.constant 11223 : i16
      %264 = tensor.empty() : tensor<7x7x3xi32>
      scf.reduce(%264)  : tensor<7x7x3xi32> {
      ^bb0(%arg5: tensor<7x7x3xi32>, %arg6: tensor<7x7x3xi32>):
        %265 = tensor.empty() : tensor<8x8xi64>
        %266 = linalg.matmul ins(%9, %6 : tensor<8x8xi64>, tensor<8x8xi64>) outs(%265 : tensor<8x8xi64>) -> tensor<8x8xi64>
        %267 = math.fma %7, %7, %7 : tensor<7x8xf16>
        %268 = arith.remf %cst, %cst_4 : f32
        %269 = math.rsqrt %cst_2 : f16
        %c520520955_i64 = arith.constant 520520955 : i64
        %270 = math.atan2 %cst_4, %cst_4 : f32
        %271 = math.absi %true_3 : i1
        %272 = index.ceildivu %c15, %arg3
        %273 = tensor.empty() : tensor<7x7x3xi32>
        scf.reduce.return %273 : tensor<7x7x3xi32>
      }
      scf.yield
    }
    %19 = affine.vector_load %alloc_15[%c9, %c11] : memref<7x8xi64>, vector<8xi64>
    affine.vector_store %19, %alloc[%c4] : memref<8xi64>, vector<8xi64>
    %20 = tensor.empty() : tensor<8xi16>
    %21 = tensor.empty() : tensor<i16>
    %22 = linalg.dot ins(%16, %20 : tensor<8xi16>, tensor<8xi16>) outs(%21 : tensor<i16>) -> tensor<i16>
    %expanded = tensor.expand_shape %12 [[0], [1, 2]] : tensor<8x8xi32> into tensor<8x8x1xi32>
    %23 = tensor.empty() : tensor<8x8xf16>
    %mapped = linalg.map ins(%alloc_19 : memref<8x8xf16>) outs(%23 : tensor<8x8xf16>)
      (%in: f16) {
        %254 = math.log1p %7 : tensor<7x8xf16>
        bufferization.dealloc_tensor %3 : tensor<8xi64>
        %255 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %19, %19, %c220153356_i64 : vector<8xi64>, vector<8xi64> into i64
        %256 = math.sqrt %8 : tensor<8x8xf32>
        %257 = math.atan2 %cst, %cst_0 : f32
        %258 = math.round %0 : tensor<7x7x3xf32>
        %259 = affine.min affine_map<(d0) -> (d0 + 64)>(%c7)
        %260 = arith.shli %false, %true : i1
        %261 = arith.divui %c1373574094_i32, %c1373574094_i32 : i32
        %262 = arith.cmpf false, %cst_0, %cst : f32
        %263 = math.absi %21 : tensor<i16>
        %264 = vector.create_mask %c10 : vector<8xi1>
        %265 = math.cos %cst_0 : f32
        %266 = math.roundeven %in : f16
        %267 = math.cos %23 : tensor<8x8xf16>
        %268 = math.absf %7 : tensor<7x8xf16>
        %269 = vector.bitcast %19 : vector<8xi64> to vector<8xi64>
        %270 = index.maxs %c4, %c10
        %271 = affine.min affine_map<(d0, d1) -> ((d1 floordiv 128) mod 16, (d1 floordiv 128) floordiv 2)>(%259, %c4)
        %splat_49 = tensor.splat %c1147522420_i32 : tensor<7x7x3xi32>
        %272 = math.cos %7 : tensor<7x8xf16>
        %273 = tensor.empty() : tensor<7x7x3xf32>
        %mapped_50 = linalg.map ins(%0, %0 : tensor<7x7x3xf32>, tensor<7x7x3xf32>) outs(%273 : tensor<7x7x3xf32>)
          (%in_54: f32, %in_55: f32) {
            memref.copy %alloc_17, %alloc_13 : memref<8xf32> to memref<8xf32>
            %282 = math.fma %15, %15, %15 : tensor<8xf32>
            %283 = math.tanh %15 : tensor<8xf32>
            %284 = arith.ori %c789415997_i64, %c789415997_i64 : i64
            %285 = arith.negf %cst : f32
            %286 = arith.xori %c1147522420_i32, %c1373574094_i32 : i32
            %287 = arith.andi %c1373574094_i32, %c1147522420_i32 : i32
            %288 = index.casts %c1147522420_i32 : i32 to index
            %289 = math.sqrt %8 : tensor<8x8xf32>
            %290 = math.tan %8 : tensor<8x8xf32>
            affine.store %cst_2, %alloc_19[%c2, %c5] : memref<8x8xf16>
            memref.store %c1373574094_i32, %alloc_7[%c6, %c0] : memref<7x8xi32>
            %291 = math.atan2 %cst_5, %cst_2 : f16
            %292 = arith.divf %cst_0, %cst : f32
            %293 = math.tanh %23 : tensor<8x8xf16>
            %294 = arith.xori %true_3, %false : i1
            %295 = vector.shuffle %19, %19 [0, 2, 3, 4, 6, 8, 10, 13, 15] : vector<8xi64>, vector<8xi64>
            %296 = arith.minsi %c1373574094_i32, %c1373574094_i32 : i32
            %297 = arith.maxsi %c1177827053_i64, %c1177827053_i64 : i64
            %298 = math.fpowi %cst_4, %c1147522420_i32 : f32, i32
            %299 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minui>} %264, %264, %true : vector<8xi1>, vector<8xi1> into i1
            %300 = math.rsqrt %273 : tensor<7x7x3xf32>
            %301 = memref.atomic_rmw minf %in_55, %alloc_17[%c1] : (f32, memref<8xf32>) -> f32
            %302 = vector.broadcast %259 : index to vector<5xindex>
            %303 = vector.broadcast %true_3 : i1 to vector<5xi1>
            %304 = vector.broadcast %cst_5 : f16 to vector<5xf16>
            vector.scatter %alloc_23[%c4] [%302], %303, %304 : memref<7xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
            %305 = index.floordivs %c9, %c5
            %306 = vector.broadcast %c7 : index to vector<7xindex>
            %307 = vector.broadcast %true : i1 to vector<7xi1>
            %308 = vector.broadcast %cst_5 : f16 to vector<7xf16>
            vector.scatter %alloc_23[%c4] [%306], %307, %308 : memref<7xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
            %309 = index.ceildivu %270, %c6
            %310 = arith.remf %cst_5, %in : f16
            %311 = math.sqrt %23 : tensor<8x8xf16>
            %312 = vector.multi_reduction <mul>, %264, %264 [] : vector<8xi1> to vector<8xi1>
            %313 = math.sqrt %cst : f32
            %314 = math.fma %cst, %in_54, %cst_4 : f32
            %cst_56 = arith.constant 1.000000e+00 : f32
            linalg.yield %cst_56 : f32
          }
        %274 = arith.minsi %c1425_i16, %c1425_i16 : i16
        %extracted_51 = tensor.extract %14[%c2, %c3] : tensor<7x8xi16>
        %275 = math.log10 %273 : tensor<7x7x3xf32>
        %276 = index.ceildivu %c9, %c14
        %277 = index.mul %c2, %c11
        %278 = vector.shuffle %19, %269 [2, 3, 4, 5, 6, 11, 12] : vector<8xi64>, vector<8xi64>
        %279 = math.absi %1 : tensor<7x8xi16>
        %alloc_52 = memref.alloc() : memref<7x8xi64>
        memref.copy %alloc_15, %alloc_52 : memref<7x8xi64> to memref<7x8xi64>
        %280 = arith.floordivsi %c1147522420_i32, %c1147522420_i32 : i32
        %281 = math.copysign %7, %7 : tensor<7x8xf16>
        %cst_53 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_53 : f16
      }
    %24 = index.casts %c0 : index to i32
    %25 = vector.load %alloc_20[%c6, %c2] : memref<8x8xi32>, vector<7x7x3xi32>
    %26 = arith.remf %cst_0, %cst_0 : f32
    %27 = arith.subi %c789415997_i64, %c789415997_i64 : i64
    %28 = tensor.empty() : tensor<8xi32>
    %29 = math.fpowi %15, %28 : tensor<8xf32>, tensor<8xi32>
    scf.index_switch %c8 
    case 1 {
      %extracted_49 = tensor.extract %2[%c4, %c0, %c1] : tensor<7x7x3xi64>
      bufferization.dealloc_tensor %15 : tensor<8xf32>
      %254 = math.cos %8 : tensor<8x8xf32>
      %255 = arith.minf %cst_2, %cst_1 : f16
      %256 = index.mul %c14, %c2
      %257 = vector.broadcast %c1147522420_i32 : i32 to vector<7x3x7x3xi32>
      %258 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %25, %25, %257 : vector<7x7x3xi32>, vector<7x7x3xi32> into vector<7x3x7x3xi32>
      %259 = vector.broadcast %cst_0 : f32 to vector<7x7x3xf32>
      %260 = vector.matrix_multiply %19, %19 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
      %261 = affine.max affine_map<(d0, d1, d2, d3) -> (d0, (d2 + 1) * 16, d1, d1 * 64 + d3)>(%c3, %c11, %c8, %256)
      %262 = math.cttz %c1425_i16 : i16
      %263 = arith.cmpf une, %cst_0, %cst_0 : f32
      %264 = math.sqrt %15 : tensor<8xf32>
      %265 = math.fpowi %cst_6, %c1373574094_i32 : f16, i32
      %266 = vector.broadcast %cst : f32 to vector<8xf32>
      %267 = vector.fma %266, %266, %266 : vector<8xf32>
      %268 = vector.create_mask %c12, %c8 : vector<8x8xi1>
      memref.alloca_scope  {
        %269 = math.absi %9 : tensor<8x8xi64>
        %270 = arith.xori %c1373574094_i32, %c1147522420_i32 : i32
        %271 = math.sqrt %cst_0 : f32
        %272 = vector.broadcast %cst : f32 to vector<7x8xf32>
        %273 = vector.fma %272, %272, %272 : vector<7x8xf32>
        %274 = arith.subi %true_3, %true_3 : i1
        %expanded_50 = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<7x7x3xi64> into tensor<7x7x3x1xi64>
        %275 = arith.minui %c1373574094_i32, %c1373574094_i32 : i32
        %276 = arith.shli %c1425_i16, %c1425_i16 : i16
        %277 = math.fpowi %cst, %c1373574094_i32 : f32, i32
        %278 = vector.broadcast %c1147522420_i32 : i32 to vector<7x3xi32>
        %dest_51, %accumulated_value_52 = vector.scan <add>, %25, %278 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7x3xi32>, vector<7x3xi32>
        %279 = arith.addi %extracted_49, %c220153356_i64 : i64
        memref.assume_alignment %alloc_10, 8 : memref<7x7x3xi64>
        %280 = vector.load %alloc_20[%c6, %c7] : memref<8x8xi32>, vector<8x8xi32>
        %281 = math.floor %15 : tensor<8xf32>
        %282 = math.ceil %0 : tensor<7x7x3xf32>
        %283 = math.cttz %14 : tensor<7x8xi16>
        %284 = affine.max affine_map<(d0) -> (d0 mod 8, d0 mod 8, 128)>(%c10)
        %285 = vector.matrix_multiply %19, %19 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
        %286 = vector.broadcast %c1373574094_i32 : i32 to vector<7x7xi32>
        %dest_53, %accumulated_value_54 = vector.scan <minui>, %25, %286 {inclusive = true, reduction_dim = 2 : i64} : vector<7x7x3xi32>, vector<7x7xi32>
        %287 = vector.insertelement %cst_4, %267[%c10 : index] : vector<8xf32>
        %288 = index.casts %c1373574094_i32 : i32 to index
        %289 = arith.divui %true_3, %true : i1
        %290 = vector.insertelement %extracted_49, %285[%c0 : index] : vector<1xi64>
        %291 = math.log %cst : f32
        %292 = index.casts %c220153356_i64 : i64 to index
        %alloc_55 = memref.alloc() : memref<7x8xi32>
        memref.copy %alloc_7, %alloc_55 : memref<7x8xi32> to memref<7x8xi32>
        memref.assume_alignment %alloc_16, 4 : memref<7x8xi1>
        %293 = memref.realloc %alloc_17 : memref<8xf32> to memref<8xf32>
        %294 = index.casts %c5 : index to i32
        %295 = math.cttz %14 : tensor<7x8xi16>
        bufferization.dealloc_tensor %6 : tensor<8x8xi64>
        %296 = vector.load %alloc_8[%c5] : memref<8xf32>, vector<7x7x3xf32>
      }
      scf.yield
    }
    case 2 {
      %generated_49 = tensor.generate %c11 {
      ^bb0(%arg3: index, %arg4: index):
        %269 = index.maxs %c10, %arg4
        bufferization.dealloc_tensor %8 : tensor<8x8xf32>
        %cast_50 = tensor.cast %9 : tensor<8x8xi64> to tensor<?x?xi64>
        %270 = vector.splat %c9 : vector<8xindex>
        tensor.yield %cst_2 : f16
      } : tensor<?x8xf16>
      %254 = arith.mulf %cst_4, %cst_0 : f32
      %255 = vector.insert %c1177827053_i64, %19 [5] : i64 into vector<8xi64>
      %256 = vector.matrix_multiply %19, %19 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
      %257 = arith.xori %c1177827053_i64, %c220153356_i64 : i64
      %258 = arith.mulf %cst_4, %cst_4 : f32
      %259 = math.log10 %cst : f32
      %260 = arith.addi %c1147522420_i32, %c1373574094_i32 : i32
      %261 = vector.insertelement %c220153356_i64, %256[%c2 : index] : vector<1xi64>
      %262 = math.round %8 : tensor<8x8xf32>
      %263 = arith.cmpi ule, %false, %false : i1
      %264 = index.ceildivs %c0, %c8
      %265 = math.ctlz %10 : tensor<8xi1>
      %266 = math.round %8 : tensor<8x8xf32>
      %267 = math.rsqrt %cst_2 : f16
      %268 = math.log10 %23 : tensor<8x8xf16>
      scf.yield
    }
    default {
      %254 = bufferization.clone %alloc_16 : memref<7x8xi1> to memref<7x8xi1>
      %255 = index.ceildivu %c11, %c0
      %256 = vector.broadcast %cst_5 : f16 to vector<5xf16>
      %257 = vector.broadcast %true_3 : i1 to vector<5xi1>
      %258 = vector.maskedload %alloc_19[%c5, %c5], %257, %256 : memref<8x8xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
      %extracted_49 = tensor.extract %13[%c7, %c5] : tensor<8x8xi16>
      %259 = arith.muli %false, %false : i1
      %260 = math.fpowi %8, %12 : tensor<8x8xf32>, tensor<8x8xi32>
      %261 = tensor.empty(%c3, %c5) : tensor<?x7x?xf16>
      %262 = arith.negf %cst : f32
      %expanded_50 = tensor.expand_shape %1 [[0], [1, 2]] : tensor<7x8xi16> into tensor<7x8x1xi16>
      %263 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%c11, %c8, %c1, %c9)
      %264 = arith.divf %cst_5, %cst_5 : f16
      %265 = math.ctlz %1 : tensor<7x8xi16>
      %266 = math.cttz %13 : tensor<8x8xi16>
      %c1_i64 = arith.constant 1 : i64
      %267 = vector.transfer_read %alloc_15[%263, %c0], %c1_i64 : memref<7x8xi64>, vector<8xi64>
      %268 = index.maxs %c9, %c4
      %269 = arith.mulf %cst_1, %cst_2 : f16
    }
    %30 = math.exp2 %cst_5 : f16
    %31 = arith.addi %true, %true : i1
    %32 = arith.andi %c220153356_i64, %c789415997_i64 : i64
    %33 = arith.andi %c1425_i16, %c1425_i16 : i16
    %34 = index.sizeof
    %35 = math.absf %7 : tensor<7x8xf16>
    %36 = index.divs %c15, %c11
    %extracted = tensor.extract %7[%c4, %c1] : tensor<7x8xf16>
    %37 = bufferization.clone %alloc_14 : memref<7x7x3xi16> to memref<7x7x3xi16>
    %38 = vector.broadcast %c1147522420_i32 : i32 to vector<7x3xi32>
    %dest, %accumulated_value = vector.scan <mul>, %25, %38 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7x3xi32>, vector<7x3xi32>
    %39 = arith.muli %c1147522420_i32, %c1373574094_i32 : i32
    %false_24 = arith.constant false
    %40 = arith.maxsi %true, %true : i1
    %41 = vector.insert %c220153356_i64, %19 [0] : i64 into vector<8xi64>
    %42 = math.round %extracted : f16
    %43 = bufferization.to_memref %12 : memref<8x8xi32>
    %44 = affine.max affine_map<(d0, d1, d2, d3) -> ((d2 + 1) floordiv 4, d0, d3 - (d0 floordiv 32 - (d2 + 1)))>(%c1, %c2, %c3, %c12)
    %45 = arith.minf %cst_6, %cst_1 : f16
    %46 = index.divs %c5, %34
    %47 = math.cos %15 : tensor<8xf32>
    %48 = vector.shuffle %25, %25 [0, 1, 2, 4, 6, 7, 9, 10, 13] : vector<7x7x3xi32>, vector<7x7x3xi32>
    %49 = affine.min affine_map<(d0, d1) -> (d1 floordiv 4)>(%c6, %c6)
    %50 = arith.ceildivsi %true_3, %true : i1
    %51 = arith.shrui %c789415997_i64, %c1177827053_i64 : i64
    %52 = index.casts %c8 : index to i32
    affine.store %cst_4, %alloc_17[%c3] : memref<8xf32>
    %inserted = tensor.insert %cst into %8[%c0, %c4] : tensor<8x8xf32>
    memref.alloca_scope  {
      %254 = index.ceildivs %c13, %34
      %255 = index.castu %c1 : index to i32
      %256 = arith.addi %true, %true : i1
      %257 = vector.insert %c789415997_i64, %19 [3] : i64 into vector<8xi64>
      %258 = arith.divui %false, %true : i1
      memref.tensor_store %7, %alloc_12 : memref<7x8xf16>
      %259 = arith.ceildivsi %true_3, %true_3 : i1
      %260 = math.round %cst_2 : f16
      %261 = arith.addf %cst_4, %cst_0 : f32
      %262 = affine.load %37[%c3, %c15, %c7] : memref<7x7x3xi16>
      %263 = affine.apply affine_map<(d0, d1, d2, d3) -> (((d2 - (d3 - 4)) floordiv 4) ceildiv 16)>(%c11, %c14, %c3, %44)
      %264 = math.sqrt %15 : tensor<8xf32>
      %265 = arith.muli %c1147522420_i32, %c1147522420_i32 : i32
      %266 = math.tan %cst_0 : f32
      %267 = math.sqrt %0 : tensor<7x7x3xf32>
      %268 = vector.multi_reduction <add>, %19, %19 [] : vector<8xi64> to vector<8xi64>
      %269 = index.divu %c0, %c6
      memref.assume_alignment %alloc_22, 2 : memref<8xi32>
      %270 = index.ceildivu %263, %269
      %271 = math.cos %cst_6 : f16
      %272 = math.fpowi %cst_1, %c1147522420_i32 : f16, i32
      %273 = math.exp2 %15 : tensor<8xf32>
      %274 = math.rsqrt %cst : f32
      %275 = math.ctlz %3 : tensor<8xi64>
      %276 = tensor.empty() : tensor<7x8xi16>
      %alloc_49 = memref.alloc() : memref<3x7xi16>
      %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_49 : memref<3x7xi16>) outs(%11 : tensor<7x7x3xi16>) {
      ^bb0(%in: i16, %out: i16):
        %284 = memref.atomic_rmw mins %c1147522420_i32, %alloc_22[%c1] : (i32, memref<8xi32>) -> i32
        %285 = math.round %cst_6 : f16
        %286 = index.add %263, %c12
        %287 = arith.minsi %c789415997_i64, %c1177827053_i64 : i64
        %288 = index.ceildivs %263, %c7
        %289 = math.ctlz %14 : tensor<7x8xi16>
        %290 = math.log2 %0 : tensor<7x7x3xf32>
        bufferization.dealloc_tensor %8 : tensor<8x8xf32>
        %291 = index.casts %c1147522420_i32 : i32 to index
        %292 = arith.minsi %in, %out : i16
        %293 = vector.broadcast %c11 : index to vector<5xindex>
        %294 = vector.broadcast %false : i1 to vector<5xi1>
        %295 = vector.broadcast %c789415997_i64 : i64 to vector<5xi64>
        vector.scatter %alloc[%c6] [%293], %294, %295 : memref<8xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
        %alloc_50 = memref.alloc() : memref<7xf16>
        memref.copy %alloc_23, %alloc_50 : memref<7xf16> to memref<7xf16>
        %296 = math.floor %cst : f32
        %alloc_51 = memref.alloc() : memref<7x8xf16>
        memref.copy %alloc_12, %alloc_51 : memref<7x8xf16> to memref<7x8xf16>
        %297 = bufferization.to_tensor %alloc_21 : memref<7x8xi16>
        %298 = math.fpowi %cst_5, %c1147522420_i32 : f16, i32
        %299 = math.ctpop %11 : tensor<7x7x3xi16>
        %300 = math.absf %cst_1 : f16
        %301 = arith.shli %c220153356_i64, %c220153356_i64 : i64
        %302 = arith.subi %262, %out : i16
        %303 = math.fma %7, %7, %7 : tensor<7x8xf16>
        %304 = tensor.empty() : tensor<8x8xi16>
        %alloc_52 = memref.alloc() : memref<8xi1>
        memref.tensor_store %10, %alloc_52 : memref<8xi1>
        %305 = vector.matrix_multiply %19, %19 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
        %306 = memref.atomic_rmw muli %out, %37[%c0, %c6, %c0] : (i16, memref<7x7x3xi16>) -> i16
        %307 = arith.divui %false, %true_3 : i1
        %308 = vector.flat_transpose %305 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %309 = math.absf %cst_0 : f32
        %310 = affine.load %alloc[%c8] : memref<8xi64>
        %311 = math.absf %cst_2 : f16
        %312 = math.tanh %8 : tensor<8x8xf32>
        %313 = arith.ori %262, %c1425_i16 : i16
        linalg.yield %262 : i16
      } -> tensor<7x7x3xi16>
      %278 = math.ipowi %14, %14 : tensor<7x8xi16>
      %279 = arith.addf %cst_4, %cst_0 : f32
      %280 = math.ctlz %c1177827053_i64 : i64
      %281 = math.atan2 %23, %23 : tensor<8x8xf16>
      %282 = math.log10 %0 : tensor<7x7x3xf32>
      %283 = arith.shrui %c1425_i16, %c1425_i16 : i16
    }
    %53 = math.round %7 : tensor<7x8xf16>
    %54 = vector.splat %c13 : vector<7x8xindex>
    %55 = math.cttz %20 : tensor<8xi16>
    %56 = affine.for %arg3 = 0 to 18 iter_args(%arg4 = %cst_4) -> (f32) {
      affine.yield %arg4 : f32
    }
    memref.alloca_scope  {
      %254 = vector.splat %49 : vector<8x8xindex>
      %255 = math.round %15 : tensor<8xf32>
      %256 = math.sqrt %8 : tensor<8x8xf32>
      %257 = scf.index_switch %44 -> index 
      case 1 {
        %287 = affine.apply affine_map<(d0, d1) -> (d0 * -3)>(%c12, %c13)
        %288 = math.fma %7, %7, %7 : tensor<7x8xf16>
        %289 = vector.matrix_multiply %19, %19 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
        %290 = vector.flat_transpose %289 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
        %291 = vector.broadcast %44 : index to vector<5xindex>
        %292 = vector.broadcast %true : i1 to vector<5xi1>
        %293 = vector.broadcast %cst_0 : f32 to vector<5xf32>
        vector.scatter %alloc_13[%c0] [%291], %292, %293 : memref<8xf32>, vector<5xindex>, vector<5xi1>, vector<5xf32>
        vector.print %290 : vector<1xi64>
        %294 = index.sub %287, %c11
        memref.copy %alloc_16, %alloc_9 : memref<7x8xi1> to memref<7x8xi1>
        %295 = math.tan %7 : tensor<7x8xf16>
        %c457083996_i64 = arith.constant 457083996 : i64
        %296 = arith.ceildivsi %c1373574094_i32, %c1147522420_i32 : i32
        %297 = affine.load %alloc_10[%c10, %c7, %c5] : memref<7x7x3xi64>
        %298 = vector.shuffle %25, %25 [0, 1, 2, 4, 7, 8, 10, 11] : vector<7x7x3xi32>, vector<7x7x3xi32>
        %299 = memref.realloc %alloc_22 : memref<8xi32> to memref<3xi32>
        %300 = arith.remf %cst_2, %cst_5 : f16
        %301 = bufferization.to_tensor %43 : memref<8x8xi32>
        scf.yield %c5 : index
      }
      default {
        %287 = arith.muli %c1177827053_i64, %c789415997_i64 : i64
        %288 = math.log10 %cst_2 : f16
        %289 = arith.cmpi sgt, %true, %false : i1
        %inserted_49 = tensor.insert %c789415997_i64 into %2[%c0, %c3, %c1] : tensor<7x7x3xi64>
        %290 = math.rsqrt %7 : tensor<7x8xf16>
        %291 = affine.min affine_map<(d0, d1) -> (d0 floordiv 128, (d1 * 2) floordiv 32, d0, d1 mod 16)>(%c1, %44)
        %292 = arith.remsi %c1177827053_i64, %c1177827053_i64 : i64
        %293 = vector.bitcast %19 : vector<8xi64> to vector<8xi64>
        %alloc_50 = memref.alloc() : memref<8xi16>
        memref.tensor_store %17, %alloc_50 : memref<8xi16>
        %294 = math.absf %15 : tensor<8xf32>
        %295 = arith.negf %cst_2 : f16
        %296 = math.log %7 : tensor<7x8xf16>
        %297 = memref.realloc %alloc_17 : memref<8xf32> to memref<5xf32>
        %298 = arith.addi %c220153356_i64, %c220153356_i64 : i64
        %inserted_51 = tensor.insert %c220153356_i64 into %6[%c5, %c0] : tensor<8x8xi64>
        %299 = index.castu %false : i1 to index
        scf.yield %46 : index
      }
      %258 = arith.divui %false, %false : i1
      %259 = arith.muli %false, %false : i1
      %260 = index.maxs %c9, %c14
      %261 = arith.andi %c220153356_i64, %c789415997_i64 : i64
      %262 = arith.divf %extracted, %cst_2 : f16
      bufferization.dealloc_tensor %9 : tensor<8x8xi64>
      %263 = math.atan2 %extracted, %cst_1 : f16
      %264 = math.tan %0 : tensor<7x7x3xf32>
      %265 = arith.addi %true_3, %true_3 : i1
      %266 = arith.divsi %c1147522420_i32, %c1373574094_i32 : i32
      %267 = affine.load %alloc_22[%c13] : memref<8xi32>
      %268 = math.copysign %7, %7 : tensor<7x8xf16>
      %269 = vector.broadcast %267 : i32 to vector<7xi32>
      %270 = vector.multi_reduction <minui>, %25, %269 [1, 2] : vector<7x7x3xi32> to vector<7xi32>
      affine.store %cst_5, %alloc_19[%c2, %c2] : memref<8x8xf16>
      %271 = arith.remf %cst_4, %cst_4 : f32
      %272 = arith.minsi %c1425_i16, %c1425_i16 : i16
      %273 = vector.broadcast %c10 : index to vector<5xindex>
      %274 = vector.broadcast %true_3 : i1 to vector<5xi1>
      %275 = vector.broadcast %c220153356_i64 : i64 to vector<5xi64>
      vector.scatter %alloc_10[%c4, %c4, %c2] [%273], %274, %275 : memref<7x7x3xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
      %276 = arith.negf %extracted : f16
      %277 = vector.matrix_multiply %269, %269 {lhs_columns = 7 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<7xi32>, vector<7xi32>) -> vector<1xi32>
      %278 = math.ceil %7 : tensor<7x8xf16>
      %279 = index.casts %260 : index to i32
      %280 = affine.max affine_map<(d0, d1) -> (d1 + 1, d0 * 33 - 8)>(%c15, %c5)
      %281 = math.log %15 : tensor<8xf32>
      %282 = arith.muli %c789415997_i64, %c789415997_i64 : i64
      %283 = math.powf %cst_1, %extracted : f16
      %284 = index.divu %46, %c4
      %285 = affine.apply affine_map<(d0, d1, d2, d3) -> (0)>(%44, %c3, %c8, %c13)
      %286 = arith.subi %c1425_i16, %c1425_i16 : i16
    }
    %57 = vector.matrix_multiply %19, %19 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
    %58 = vector.flat_transpose %57 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
    %59 = math.exp2 %0 : tensor<7x7x3xf32>
    %60 = math.fma %8, %8, %8 : tensor<8x8xf32>
    %cst_25 = arith.constant 1.94485261E+9 : f32
    %61 = vector.matrix_multiply %57, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 8 : i32} : (vector<1xi64>, vector<8xi64>) -> vector<8xi64>
    %rank = tensor.rank %7 : tensor<7x8xf16>
    %62 = bufferization.to_memref %14 : memref<7x8xi16>
    memref.assume_alignment %62, 4 : memref<7x8xi16>
    %63 = math.absf %7 : tensor<7x8xf16>
    %alloc_26 = memref.alloc() : memref<7x7x3xf16>
    memref.copy %alloc_11, %alloc_26 : memref<7x7x3xf16> to memref<7x7x3xf16>
    %64 = scf.while (%arg3 = %19) : (vector<8xi64>) -> vector<8xi64> {
      %254 = vector.broadcast %c1373574094_i32 : i32 to vector<7x3xi32>
      %dest_49, %accumulated_value_50 = vector.scan <xor>, %25, %254 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7x3xi32>, vector<7x3xi32>
      %255 = affine.max affine_map<(d0) -> ((d0 ceildiv 64) mod 4, (-d0) ceildiv 8)>(%c0)
      %256 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxsi>} %61, %61, %c789415997_i64 : vector<8xi64>, vector<8xi64> into i64
      %257 = math.log %15 : tensor<8xf32>
      %alloc_51 = memref.alloc() : memref<8xi16>
      memref.tensor_store %5, %alloc_51 : memref<8xi16>
      %258 = bufferization.clone %alloc_21 : memref<7x8xi16> to memref<7x8xi16>
      memref.store %c1425_i16, %62[%c5, %c5] : memref<7x8xi16>
      %259 = tensor.empty() : tensor<7x8xf16>
      %260 = linalg.matmul ins(%7, %23 : tensor<7x8xf16>, tensor<8x8xf16>) outs(%259 : tensor<7x8xf16>) -> tensor<7x8xf16>
      scf.condition(%true_3) %61 : vector<8xi64>
    } do {
    ^bb0(%arg3: vector<8xi64>):
      %254 = arith.mulf %cst_5, %extracted : f16
      %255 = math.fma %7, %7, %7 : tensor<7x8xf16>
      %256 = arith.shli %true_3, %false : i1
      %257 = arith.ori %c220153356_i64, %c1177827053_i64 : i64
      %258 = vector.broadcast %cst_1 : f16 to vector<7x7x3xf16>
      memref.copy %alloc_21, %62 : memref<7x8xi16> to memref<7x8xi16>
      %259 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %61, %c789415997_i64 : vector<8xi64>, vector<8xi64> into i64
      %expanded_49 = tensor.expand_shape %2 [[0], [1], [2, 3]] : tensor<7x7x3xi64> into tensor<7x7x3x1xi64>
      %260 = arith.mulf %cst_1, %extracted : f16
      %261 = index.sizeof
      %262 = math.fpowi %15, %28 : tensor<8xf32>, tensor<8xi32>
      %263 = index.sub %c9, %c9
      %264 = vector.flat_transpose %57 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
      %265 = tensor.empty() : tensor<1x8xi32>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%265, %265, %alloc_18 : tensor<1x8xi32>, tensor<1x8xi32>, memref<8xi32>) outs(%expanded : tensor<8x8x1xi32>) {
      ^bb0(%in: i32, %in_50: i32, %in_51: i32, %out: i32):
        %268 = arith.mulf %extracted, %cst_1 : f16
        %269 = vector.broadcast %cst : f32 to vector<7x7x3xf32>
        %270 = vector.fma %269, %269, %269 : vector<7x7x3xf32>
        %271 = arith.minsi %c789415997_i64, %c220153356_i64 : i64
        %272 = vector.insertelement %c220153356_i64, %264[%c13 : index] : vector<1xi64>
        %273 = arith.maxsi %c789415997_i64, %c789415997_i64 : i64
        %274 = vector.broadcast %cst : f32 to vector<7x7xf32>
        %dest_52, %accumulated_value_53 = vector.scan <add>, %269, %274 {inclusive = false, reduction_dim = 2 : i64} : vector<7x7x3xf32>, vector<7x7xf32>
        %275 = vector.insertelement %c1177827053_i64, %264[%36 : index] : vector<1xi64>
        %276 = affine.apply affine_map<(d0, d1) -> (d0 * -3)>(%c10, %c12)
        %277 = arith.remsi %true_3, %true : i1
        %true_54 = index.bool.constant true
        %278 = math.ipowi %c1177827053_i64, %c789415997_i64 : i64
        %279 = math.fpowi %cst, %in_50 : f32, i32
        %280 = arith.negf %cst_1 : f16
        bufferization.dealloc_tensor %8 : tensor<8x8xf32>
        %281 = index.mul %c4, %c2
        %282 = arith.minf %cst, %cst_0 : f32
        %false_55 = arith.constant false
        %283 = math.log %8 : tensor<8x8xf32>
        %284 = affine.load %alloc_23[%c11] : memref<7xf16>
        %285 = math.fma %cst_4, %cst_4, %cst_0 : f32
        %286 = bufferization.to_memref %0 : memref<7x7x3xf32>
        %287 = arith.addf %cst, %cst_4 : f32
        memref.assume_alignment %286, 4 : memref<7x7x3xf32>
        %c1_i16 = arith.constant 1 : i16
        %288 = vector.transfer_read %11[%c7, %c6, %c3], %c1_i16 : tensor<7x7x3xi16>, vector<3x3xi16>
        %289 = arith.minui %c789415997_i64, %c789415997_i64 : i64
        %290 = vector.broadcast %cst : f32 to vector<7x7xf32>
        %291 = vector.multi_reduction <maxf>, %270, %290 [2] : vector<7x7x3xf32> to vector<7x7xf32>
        %292 = arith.divf %284, %284 : f16
        %293 = vector.broadcast %extracted : f16 to vector<7x7xf16>
        %dest_56, %accumulated_value_57 = vector.scan <maxf>, %258, %293 {inclusive = false, reduction_dim = 2 : i64} : vector<7x7x3xf16>, vector<7x7xf16>
        %294 = index.divs %276, %c6
        %295 = arith.divsi %in_51, %c1373574094_i32 : i32
        %296 = index.sizeof
        %297 = arith.subi %true_3, %false : i1
        linalg.yield %in : i32
      } -> tensor<8x8x1xi32>
      affine.store %cst_2, %alloc_23[%c0] : memref<7xf16>
      %267 = math.absf %cst_1 : f16
      scf.yield %61 : vector<8xi64>
    }
    %65 = arith.mulf %cst_2, %extracted : f16
    %66 = math.tan %cst_0 : f32
    %67 = vector.transpose %61, [0] : vector<8xi64> to vector<8xi64>
    %68 = index.sub %c9, %c4
    %69 = math.ipowi %28, %28 : tensor<8xi32>
    %70 = arith.shli %true, %false : i1
    %71 = arith.muli %c1373574094_i32, %c1373574094_i32 : i32
    %72 = math.absf %0 : tensor<7x7x3xf32>
    %73 = arith.divui %c1147522420_i32, %c1373574094_i32 : i32
    %74 = tensor.empty() : tensor<8xi64>
    %mapped_27 = linalg.map ins(%alloc : memref<8xi64>) outs(%74 : tensor<8xi64>)
      (%in: i64) {
        %true_49 = index.bool.constant true
        %254 = index.sizeof
        %255 = arith.ceildivsi %true_3, %true_49 : i1
        affine.store %c1147522420_i32, %43[%c10, %c12] : memref<8x8xi32>
        %256 = vector.insertelement %c220153356_i64, %57[%rank : index] : vector<1xi64>
        %257 = arith.xori %in, %c789415997_i64 : i64
        %258 = math.exp2 %8 : tensor<8x8xf32>
        %259 = math.exp %cst_2 : f16
        %expanded_50 = tensor.expand_shape %7 [[0], [1, 2]] : tensor<7x8xf16> into tensor<7x8x1xf16>
        %260 = index.ceildivs %c5, %c4
        memref.tensor_store %1, %alloc_21 : memref<7x8xi16>
        %261 = arith.cmpi uge, %c1373574094_i32, %c1373574094_i32 : i32
        %262 = tensor.empty() : tensor<8x8xi64>
        %mapped_51 = linalg.map ins(%9 : tensor<8x8xi64>) outs(%262 : tensor<8x8xi64>)
          (%in_52: i64) {
            %281 = arith.mulf %extracted, %cst_5 : f16
            %rank_53 = tensor.rank %7 : tensor<7x8xf16>
            %282 = vector.matrix_multiply %57, %61 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 8 : i32} : (vector<1xi64>, vector<8xi64>) -> vector<8xi64>
            %283 = math.log %cst_4 : f32
            memref.store %in_52, %alloc_10[%c6, %c5, %c1] : memref<7x7x3xi64>
            %extracted_54 = tensor.extract %17[%c7] : tensor<8xi16>
            %284 = arith.cmpi ult, %in, %in : i64
            %285 = arith.ori %c1177827053_i64, %c220153356_i64 : i64
            %286 = vector.insertelement %c789415997_i64, %282[%68 : index] : vector<8xi64>
            %inserted_55 = tensor.insert %c1177827053_i64 into %6[%c5, %c4] : tensor<8x8xi64>
            %287 = vector.splat %c5 : vector<7x7x3xindex>
            affine.store %cst_6, %alloc_12[%c5, %c12] : memref<7x8xf16>
            %288 = arith.remui %c789415997_i64, %in : i64
            %289 = affine.apply affine_map<(d0, d1, d2) -> (d1 * 32 + d1 - d2 - 1)>(%rank, %c6, %c2)
            %290 = arith.cmpi eq, %in_52, %c220153356_i64 : i64
            %291 = math.log %cst_1 : f16
            %292 = arith.divf %cst_0, %cst_0 : f32
            %293 = math.round %0 : tensor<7x7x3xf32>
            %extracted_56 = tensor.extract %0[%c1, %c1, %c0] : tensor<7x7x3xf32>
            %294 = math.log1p %expanded_50 : tensor<7x8x1xf16>
            %295 = math.log10 %cst_2 : f16
            %296 = arith.divsi %c1147522420_i32, %c1373574094_i32 : i32
            %297 = arith.shli %c1147522420_i32, %c1147522420_i32 : i32
            %298 = index.divs %c1, %c11
            %299 = math.rsqrt %8 : tensor<8x8xf32>
            %300 = index.sub %c11, %44
            %301 = affine.min affine_map<(d0) -> (-64)>(%c8)
            %302 = vector.matrix_multiply %58, %58 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
            bufferization.dealloc_tensor %10 : tensor<8xi1>
            memref.store %extracted_54, %37[%c1, %c6, %c0] : memref<7x7x3xi16>
            %303 = index.ceildivs %c13, %c11
            %304 = arith.remui %c789415997_i64, %in : i64
            %c0_i64 = arith.constant 0 : i64
            linalg.yield %c0_i64 : i64
          }
        %263 = math.round %cst_5 : f16
        %264 = math.ctlz %1 : tensor<7x8xi16>
        affine.store %true_3, %alloc_9[%c6, %c4] : memref<7x8xi1>
        %265 = math.round %cst_5 : f16
        %266 = memref.realloc %alloc_13 : memref<8xf32> to memref<3xf32>
        %267 = affine.min affine_map<(d0) -> (0)>(%34)
        %268 = arith.cmpf une, %cst, %cst_4 : f32
        %269 = math.rsqrt %0 : tensor<7x7x3xf32>
        %270 = vector.splat %260 : vector<8xindex>
        %271 = vector.insert %c1177827053_i64, %58 [0] : i64 into vector<1xi64>
        %272 = bufferization.to_tensor %alloc_7 : memref<7x8xi32>
        %273 = arith.addi %c1425_i16, %c1425_i16 : i16
        %274 = math.round %15 : tensor<8xf32>
        %275 = vector.broadcast %c1147522420_i32 : i32 to vector<7x3x7x3xi32>
        %276 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<add>} %25, %25, %275 : vector<7x7x3xi32>, vector<7x7x3xi32> into vector<7x3x7x3xi32>
        %277 = math.cos %cst_4 : f32
        %278 = arith.subi %true_49, %false : i1
        affine.store %cst_1, %alloc_11[%c6, %c7, %c9] : memref<7x7x3xf16>
        %279 = math.atan2 %15, %15 : tensor<8xf32>
        %280 = scf.index_switch %34 -> tensor<7x8xf32> 
        case 1 {
          %281 = math.tan %8 : tensor<8x8xf32>
          %282 = arith.mulf %cst_2, %cst_2 : f16
          %283 = arith.xori %true_3, %true_49 : i1
          %284 = index.sub %36, %36
          %285 = arith.muli %true_49, %true : i1
          %286 = vector.broadcast %c1373574094_i32 : i32 to vector<7x3x7x3xi32>
          %287 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<and>} %25, %25, %286 : vector<7x7x3xi32>, vector<7x7x3xi32> into vector<7x3x7x3xi32>
          %288 = arith.divf %extracted, %cst_6 : f16
          %289 = arith.ceildivsi %true_49, %true : i1
          %290 = math.log %15 : tensor<8xf32>
          %291 = vector.multi_reduction <add>, %58, %c789415997_i64 [0] : vector<1xi64> to i64
          %292 = arith.subi %c789415997_i64, %c1177827053_i64 : i64
          %inserted_52 = tensor.insert %c1425_i16 into %11[%c0, %c5, %c0] : tensor<7x7x3xi16>
          %293 = math.absf %0 : tensor<7x7x3xf32>
          %294 = math.cos %0 : tensor<7x7x3xf32>
          %295 = arith.cmpf ule, %cst_1, %extracted : f16
          bufferization.dealloc_tensor %3 : tensor<8xi64>
          %296 = tensor.empty() : tensor<7x8xf32>
          scf.yield %296 : tensor<7x8xf32>
        }
        case 2 {
          %281 = math.fma %23, %23, %23 : tensor<8x8xf16>
          %282 = vector.splat %c0 : vector<8xindex>
          %283 = vector.create_mask %49, %c0 : vector<8x8xi1>
          %284 = math.cos %cst_0 : f32
          %285 = memref.realloc %alloc_23 : memref<7xf16> to memref<7xf16>
          %286 = index.mul %36, %c14
          %287 = math.rsqrt %cst_4 : f32
          %288 = math.fma %cst_5, %cst_1, %cst_1 : f16
          %289 = arith.shli %c789415997_i64, %in : i64
          %290 = arith.mulf %cst_5, %cst_6 : f16
          %291 = math.copysign %cst_6, %cst_5 : f16
          %292 = affine.max affine_map<(d0, d1, d2) -> ((d0 - 2) floordiv 16, d1 floordiv 32 - 32, d2)>(%c1, %c6, %c12)
          %293 = math.powf %15, %15 : tensor<8xf32>
          %294 = vector.insertelement %c220153356_i64, %58[%c5 : index] : vector<1xi64>
          %295 = arith.xori %in, %in : i64
          %cst_52 = arith.constant 1.000000e+00 : f16
          %296 = vector.transfer_read %7[%36, %c2], %cst_52 : tensor<7x8xf16>, vector<7xf16>
          %297 = tensor.empty() : tensor<7x8xf32>
          scf.yield %297 : tensor<7x8xf32>
        }
        case 3 {
          %281 = arith.muli %true, %false : i1
          %282 = math.fpowi %8, %12 : tensor<8x8xf32>, tensor<8x8xi32>
          %283 = arith.cmpf une, %cst_2, %cst_2 : f16
          %extracted_52 = tensor.extract %3[%c5] : tensor<8xi64>
          %284 = vector.broadcast %cst : f32 to vector<8x8xf32>
          %285 = vector.fma %284, %284, %284 : vector<8x8xf32>
          %286 = math.round %7 : tensor<7x8xf16>
          %287 = arith.andi %true_49, %true : i1
          %288 = vector.shuffle %57, %58 [0] : vector<1xi64>, vector<1xi64>
          memref.copy %alloc_13, %alloc_17 : memref<8xf32> to memref<8xf32>
          %289 = math.copysign %cst_1, %cst_1 : f16
          %290 = math.cos %8 : tensor<8x8xf32>
          %291 = bufferization.clone %37 : memref<7x7x3xi16> to memref<7x7x3xi16>
          %292 = affine.min affine_map<(d0, d1) -> (d0, ((-d0) ceildiv 32) floordiv 128, d1 - ((d0 floordiv 64) mod 32 + 32))>(%c14, %c11)
          %293 = vector.reduction <minui>, %61 : vector<8xi64> into i64
          %294 = math.powf %extracted, %extracted : f16
          %295 = vector.splat %c1425_i16 : vector<8xi16>
          %296 = tensor.empty() : tensor<7x8xf32>
          scf.yield %296 : tensor<7x8xf32>
        }
        default {
          %281 = arith.minui %c1147522420_i32, %c1373574094_i32 : i32
          %282 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %57, %57, %in : vector<1xi64>, vector<1xi64> into i64
          %alloc_52 = memref.alloc() : memref<7xf16>
          memref.copy %alloc_23, %alloc_52 : memref<7xf16> to memref<7xf16>
          %283 = arith.minsi %c1425_i16, %c1425_i16 : i16
          memref.store %cst_6, %alloc_11[%c6, %c6, %c1] : memref<7x7x3xf16>
          %284 = arith.remui %false, %true_3 : i1
          %285 = arith.ori %c789415997_i64, %in : i64
          %286 = arith.ceildivsi %c1373574094_i32, %c1147522420_i32 : i32
          %287 = arith.addf %extracted, %cst_6 : f16
          %288 = arith.addi %true, %true_49 : i1
          %289 = arith.remui %c220153356_i64, %in : i64
          %290 = vector.matrix_multiply %19, %58 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<1xi64>) -> vector<8xi64>
          %291 = vector.splat %34 : vector<7x7x3xindex>
          %292 = arith.mulf %cst_6, %extracted : f16
          %293 = math.powf %cst_6, %cst_6 : f16
          %294 = vector.broadcast %c6 : index to vector<7xindex>
          %295 = vector.broadcast %true_3 : i1 to vector<7xi1>
          %296 = vector.broadcast %c1425_i16 : i16 to vector<7xi16>
          vector.scatter %alloc_21[%c1, %c7] [%294], %295, %296 : memref<7x8xi16>, vector<7xindex>, vector<7xi1>, vector<7xi16>
          %297 = tensor.empty() : tensor<7x8xf32>
          scf.yield %297 : tensor<7x8xf32>
        }
        %c1_i64 = arith.constant 1 : i64
        linalg.yield %c1_i64 : i64
      }
    %75 = math.log10 %cst_6 : f16
    %76 = math.ctlz %9 : tensor<8x8xi64>
    %77 = math.absf %15 : tensor<8xf32>
    %78 = arith.ori %c1373574094_i32, %c1373574094_i32 : i32
    %79 = math.atan2 %8, %8 : tensor<8x8xf32>
    %80 = vector.broadcast %c1177827053_i64 : i64 to vector<8x8xi64>
    %81 = vector.outerproduct %61, %19, %80 {kind = #vector.kind<xor>} : vector<8xi64>, vector<8xi64>
    %82 = vector.broadcast %c1 : index to vector<7xindex>
    %83 = vector.broadcast %true_3 : i1 to vector<7xi1>
    %84 = vector.broadcast %extracted : f16 to vector<7xf16>
    vector.scatter %alloc_23[%c2] [%82], %83, %84 : memref<7xf16>, vector<7xindex>, vector<7xi1>, vector<7xf16>
    %85 = arith.floordivsi %c220153356_i64, %c789415997_i64 : i64
    %generated = tensor.generate %c13, %c0 {
    ^bb0(%arg3: index, %arg4: index, %arg5: index):
      %254 = vector.flat_transpose %19 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
      %255 = bufferization.to_tensor %alloc_13 : memref<8xf32>
      %256 = arith.remsi %c1425_i16, %c1425_i16 : i16
      %257 = index.sub %c14, %c4
      tensor.yield %cst : f32
    } : tensor<?x?x3xf32>
    %86 = affine.min affine_map<(d0, d1, d2, d3) -> (d0 * 16, d3, ((d0 + 64) * 2) floordiv 8, d3)>(%rank, %36, %c1, %c15)
    %87 = vector.bitcast %25 : vector<7x7x3xi32> to vector<7x7x3xi32>
    %88 = math.sqrt %extracted : f16
    memref.copy %alloc_8, %alloc_13 : memref<8xf32> to memref<8xf32>
    %inserted_28 = tensor.insert %cst_4 into %8[%c3, %c4] : tensor<8x8xf32>
    %inserted_29 = tensor.insert %cst_5 into %7[%c6, %c2] : tensor<7x8xf16>
    %89 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%2 : tensor<7x7x3xi64>) {
    ^bb0(%out: i64):
      %254 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 * 2, d2)>(%46, %68, %86, %rank)
      %255 = vector.shuffle %61, %61 [0, 1, 3, 4, 6, 7, 9, 15] : vector<8xi64>, vector<8xi64>
      %256 = arith.ori %c789415997_i64, %c789415997_i64 : i64
      %257 = arith.andi %c1373574094_i32, %c1147522420_i32 : i32
      %258 = scf.index_switch %86 -> i32 
      case 1 {
        %284 = vector.broadcast %cst_4 : f32 to vector<7x8xf32>
        %285 = vector.fma %284, %284, %284 : vector<7x8xf32>
        %286 = arith.ori %true, %true_3 : i1
        memref.tensor_store %7, %alloc_12 : memref<7x8xf16>
        %287 = math.powf %23, %23 : tensor<8x8xf16>
        %288 = index.maxs %68, %c6
        affine.store %c220153356_i64, %alloc_10[%c1, %c7, %c10] : memref<7x7x3xi64>
        %alloc_51 = memref.alloc() : memref<8x8xf32>
        memref.tensor_store %8, %alloc_51 : memref<8x8xf32>
        %289 = math.rsqrt %15 : tensor<8xf32>
        %290 = arith.cmpi eq, %true, %false : i1
        %291 = vector.broadcast %c2 : index to vector<7xindex>
        %292 = vector.broadcast %true_3 : i1 to vector<7xi1>
        vector.scatter %alloc_16[%c0, %c6] [%291], %292, %292 : memref<7x8xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %rank_52 = tensor.rank %4 : tensor<7x7x3xi32>
        %alloc_53 = memref.alloc() : memref<8x8xi64>
        memref.tensor_store %6, %alloc_53 : memref<8x8xi64>
        %293 = index.casts %c7 : index to i32
        %294 = math.copysign %cst_2, %extracted : f16
        %295 = arith.addf %cst, %cst_0 : f32
        %296 = arith.shli %true, %false : i1
        scf.yield %c1373574094_i32 : i32
      }
      case 2 {
        %284 = arith.andi %c220153356_i64, %c220153356_i64 : i64
        %285 = arith.shrsi %c1147522420_i32, %c1147522420_i32 : i32
        %286 = math.copysign %0, %0 : tensor<7x7x3xf32>
        %287 = math.ipowi %22, %22 : tensor<i16>
        %288 = math.ctpop %2 : tensor<7x7x3xi64>
        %289 = affine.max affine_map<(d0, d1) -> (d0)>(%c3, %36)
        %290 = arith.divui %c1373574094_i32, %c1147522420_i32 : i32
        %291 = vector.broadcast %c15 : index to vector<3xindex>
        %292 = vector.broadcast %true : i1 to vector<3xi1>
        %293 = vector.broadcast %c1373574094_i32 : i32 to vector<3xi32>
        vector.scatter %alloc_20[%c2, %c4] [%291], %292, %293 : memref<8x8xi32>, vector<3xindex>, vector<3xi1>, vector<3xi32>
        %294 = math.cos %cst_2 : f16
        affine.store %cst_1, %alloc_19[%c12, %c12] : memref<8x8xf16>
        %295 = tensor.empty(%68) : tensor<8x?xi64>
        %296 = math.sqrt %23 : tensor<8x8xf16>
        %297 = vector.insertelement %c1177827053_i64, %19[%254 : index] : vector<8xi64>
        memref.store %c1147522420_i32, %alloc_7[%c5, %c1] : memref<7x8xi32>
        %298 = math.tan %7 : tensor<7x8xf16>
        %299 = vector.reduction <maxsi>, %19 : vector<8xi64> into i64
        scf.yield %c1147522420_i32 : i32
      }
      default {
        %284 = math.tan %cst_5 : f16
        %inserted_51 = tensor.insert %c1177827053_i64 into %9[%c0, %c0] : tensor<8x8xi64>
        %285 = math.exp2 %0 : tensor<7x7x3xf32>
        %rank_52 = tensor.rank %10 : tensor<8xi1>
        %286 = math.atan2 %0, %0 : tensor<7x7x3xf32>
        %287 = vector.matrix_multiply %58, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
        %288 = index.ceildivs %c12, %rank_52
        %289 = math.absf %cst : f32
        %290 = vector.reduction <xor>, %58 : vector<1xi64> into i64
        %291 = math.atan2 %cst_4, %cst_0 : f32
        %292 = math.exp2 %cst_4 : f32
        %293 = math.sqrt %cst_4 : f32
        %294 = arith.cmpi eq, %true, %false : i1
        bufferization.dealloc_tensor %7 : tensor<7x8xf16>
        %295 = vector.insertelement %out, %19[%46 : index] : vector<8xi64>
        %296 = math.exp2 %0 : tensor<7x7x3xf32>
        scf.yield %c1147522420_i32 : i32
      }
      %259 = math.absf %0 : tensor<7x7x3xf32>
      %260 = arith.andi %c789415997_i64, %out : i64
      %261 = math.absi %c1425_i16 : i16
      %262 = math.tan %cst_4 : f32
      %263 = arith.floordivsi %c1373574094_i32, %c1147522420_i32 : i32
      memref.assume_alignment %alloc_14, 4 : memref<7x7x3xi16>
      %264 = index.divu %44, %44
      %265 = vector.flat_transpose %61 {columns = 4 : i32, rows = 2 : i32} : vector<8xi64> -> vector<8xi64>
      %266 = math.rsqrt %cst_2 : f16
      bufferization.dealloc_tensor %3 : tensor<8xi64>
      %267 = tensor.empty() : tensor<7x3xf32>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0, %267 : tensor<7x7x3xf32>, tensor<7x3xf32>) outs(%0 : tensor<7x7x3xf32>) {
      ^bb0(%in: f32, %in_51: f32, %out_52: f32):
        %284 = index.sub %254, %c6
        %285 = tensor.empty() : tensor<8x8xi32>
        %286 = linalg.matmul ins(%12, %12 : tensor<8x8xi32>, tensor<8x8xi32>) outs(%285 : tensor<8x8xi32>) -> tensor<8x8xi32>
        %287 = vector.splat %extracted : vector<7x8xf16>
        %288 = arith.shli %c1425_i16, %c1425_i16 : i16
        %289 = affine.min affine_map<(d0, d1) -> (d0 * 128 + 16)>(%c13, %284)
        affine.store %c220153356_i64, %alloc_15[%c12, %c7] : memref<7x8xi64>
        %290 = math.floor %23 : tensor<8x8xf16>
        %291 = arith.remf %cst_5, %cst_2 : f16
        %292 = tensor.empty(%c8, %c9) : tensor<?x?xi32>
        %293 = index.castu %out : i64 to index
        %294 = math.cos %8 : tensor<8x8xf32>
        affine.store %c1147522420_i32, %43[%c2, %c1] : memref<8x8xi32>
        %295 = math.atan %cst_5 : f16
        %296 = memref.atomic_rmw assign %c1373574094_i32, %alloc_22[%c6] : (i32, memref<8xi32>) -> i32
        %297 = vector.reduction <or>, %19 : vector<8xi64> into i64
        %298 = bufferization.clone %alloc_13 : memref<8xf32> to memref<8xf32>
        %299 = index.ceildivs %46, %c15
        %extracted_53 = tensor.extract %11[%c4, %c4, %c0] : tensor<7x7x3xi16>
        %300 = memref.realloc %298 : memref<8xf32> to memref<5xf32>
        bufferization.dealloc_tensor %285 : tensor<8x8xi32>
        memref.copy %alloc_13, %alloc_8 : memref<8xf32> to memref<8xf32>
        %301 = arith.maxsi %true_3, %false : i1
        %302 = vector.broadcast %in : f32 to vector<3xf32>
        %303 = vector.transfer_write %302, %8[%289, %c4] {permutation_map = affine_map<(d0, d1) -> (d0)>} : vector<3xf32>, tensor<8x8xf32>
        %304 = math.exp2 %cst_2 : f16
        %305 = math.ipowi %4, %4 : tensor<7x7x3xi32>
        %306 = math.tan %cst_1 : f16
        %collapsed = tensor.collapse_shape %1 [[0, 1]] : tensor<7x8xi16> into tensor<56xi16>
        %307 = arith.subi %extracted_53, %extracted_53 : i16
        %308 = index.ceildivu %c3, %c8
        %309 = arith.muli %true_3, %false : i1
        %310 = memref.load %alloc_14[%c1, %c4, %c2] : memref<7x7x3xi16>
        %311 = arith.addf %cst_0, %cst_4 : f32
        linalg.yield %out_52 : f32
      } -> tensor<7x7x3xf32>
      %269 = arith.addi %true, %true : i1
      %270 = vector.extract_strided_slice %265 {offsets = [2], sizes = [2], strides = [1]} : vector<8xi64> to vector<2xi64>
      %271 = arith.remsi %c1373574094_i32, %c1147522420_i32 : i32
      %272 = arith.addf %cst_6, %cst_6 : f16
      %273 = index.casts %c13 : index to i32
      %274 = tensor.empty() : tensor<8xi16>
      %275 = vector.splat %true_3 : vector<8x8xi1>
      %extracted_49 = tensor.extract %21[] : tensor<i16>
      %276 = math.floor %0 : tensor<7x7x3xf32>
      %277 = arith.xori %c1147522420_i32, %c1147522420_i32 : i32
      %278 = math.atan2 %8, %8 : tensor<8x8xf32>
      %279 = vector.broadcast %cst_0 : f32 to vector<8x8xf32>
      %280 = vector.fma %279, %279, %279 : vector<8x8xf32>
      %281 = math.cttz %10 : tensor<8xi1>
      %282 = index.ceildivs %c10, %c8
      %splat_50 = tensor.splat %true_3 : tensor<7x7x3xi1>
      %283 = math.rsqrt %cst_0 : f32
      linalg.yield %out : i64
    } -> tensor<7x7x3xi64>
    %90 = arith.floordivsi %c220153356_i64, %c1177827053_i64 : i64
    %91 = math.exp2 %cst_5 : f16
    %92 = vector.broadcast %c1147522420_i32 : i32 to vector<7x7xi32>
    %dest_30, %accumulated_value_31 = vector.scan <minsi>, %87, %92 {inclusive = true, reduction_dim = 2 : i64} : vector<7x7x3xi32>, vector<7x7xi32>
    %rank_32 = tensor.rank %7 : tensor<7x8xf16>
    %93 = bufferization.to_tensor %alloc_17 : memref<8xf32>
    %rank_33 = tensor.rank %23 : tensor<8x8xf16>
    %94 = memref.realloc %alloc_23 : memref<7xf16> to memref<8xf16>
    %95 = vector.shuffle %57, %58 [0] : vector<1xi64>, vector<1xi64>
    %96 = vector.matrix_multiply %58, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
    %splat = tensor.splat %cst_1 : tensor<8xf16>
    %97 = math.cos %7 : tensor<7x8xf16>
    memref.assume_alignment %alloc_10, 16 : memref<7x7x3xi64>
    scf.index_switch %c11 
    case 1 {
      %254 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %96, %58, %c1177827053_i64 : vector<1xi64>, vector<1xi64> into i64
      %255 = math.copysign %cst_2, %extracted : f16
      %extracted_49 = tensor.extract %1[%c2, %c2] : tensor<7x8xi16>
      %256 = math.floor %0 : tensor<7x7x3xf32>
      %257 = affine.min affine_map<(d0, d1, d2) -> (-d0 + d2 * 2 - 4, -(-d0 + d2 * 2 - 4), d1 + 1)>(%c12, %c7, %c15)
      %258 = arith.divf %extracted, %cst_6 : f16
      %collapsed = tensor.collapse_shape %23 [[0, 1]] : tensor<8x8xf16> into tensor<64xf16>
      %alloc_50 = memref.alloc() : memref<7x7x3xf32>
      memref.tensor_store %0, %alloc_50 : memref<7x7x3xf32>
      %259 = affine.min affine_map<(d0, d1, d2, d3) -> (((d1 ceildiv 16) floordiv 4) mod 32, d0, d0)>(%rank_32, %257, %rank_33, %c11)
      %260 = arith.addf %cst_5, %cst_2 : f16
      %alloc_51 = memref.alloc() : memref<7xi64>
      %alloc_52 = memref.alloc() : memref<3x7xi64>
      %261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_51, %alloc_51, %alloc_52 : memref<7xi64>, memref<7xi64>, memref<3x7xi64>) outs(%2 : tensor<7x7x3xi64>) {
      ^bb0(%in: i64, %in_54: i64, %in_55: i64, %out: i64):
        %266 = math.cos %cst_1 : f16
        %267 = arith.ceildivsi %c1373574094_i32, %c1373574094_i32 : i32
        %268 = affine.apply affine_map<(d0, d1, d2) -> (d1 * 32 + d1 - d2 - 1)>(%46, %c3, %c10)
        %269 = arith.remf %cst_2, %cst_2 : f16
        %270 = math.tan %cst_2 : f16
        %271 = arith.divf %cst_2, %cst_1 : f16
        %272 = math.absf %23 : tensor<8x8xf16>
        %273 = arith.ori %false, %true : i1
        %274 = vector.multi_reduction <mul>, %58, %57 [] : vector<1xi64> to vector<1xi64>
        %275 = arith.addf %cst_4, %cst_0 : f32
        %276 = memref.realloc %alloc_22 : memref<8xi32> to memref<5xi32>
        %277 = arith.minf %cst_5, %extracted : f16
        memref.assume_alignment %alloc_17, 2 : memref<8xf32>
        %278 = arith.ori %c1425_i16, %extracted_49 : i16
        %279 = math.absf %93 : tensor<8xf32>
        %280 = math.absf %0 : tensor<7x7x3xf32>
        %281 = math.exp %cst_4 : f32
        %282 = math.log %cst_4 : f32
        %283 = math.absf %0 : tensor<7x7x3xf32>
        %284 = math.round %8 : tensor<8x8xf32>
        %285 = index.ceildivs %rank, %c5
        %286 = math.round %93 : tensor<8xf32>
        %alloc_56 = memref.alloc() : memref<7x7x3xf16>
        %287 = math.absi %17 : tensor<8xi16>
        %288 = math.absi %13 : tensor<8x8xi16>
        %289 = arith.shrsi %c220153356_i64, %out : i64
        %splat_57 = tensor.splat %cst_1 : tensor<8xf16>
        %290 = math.atan2 %15, %15 : tensor<8xf32>
        %291 = math.atan2 %splat_57, %splat : tensor<8xf16>
        %292 = vector.broadcast %c1373574094_i32 : i32 to vector<7x3x7x3xi32>
        %293 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %25, %25, %292 : vector<7x7x3xi32>, vector<7x7x3xi32> into vector<7x3x7x3xi32>
        %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %57, %58, %in_55 : vector<1xi64>, vector<1xi64> into i64
        affine.store %extracted, %alloc_23[%c9] : memref<7xf16>
        linalg.yield %out : i64
      } -> tensor<7x7x3xi64>
      %262 = math.tanh %cst_4 : f32
      %263 = index.sizeof
      %264 = affine.load %alloc_12[%c15, %c14] : memref<7x8xf16>
      %splat_53 = tensor.splat %c789415997_i64 : tensor<7x7x3xi64>
      %265 = math.copysign %cst_5, %extracted : f16
      scf.yield
    }
    default {
      %254 = math.log %93 : tensor<8xf32>
      %generated_49 = tensor.generate %c6, %c14 {
      ^bb0(%arg3: index, %arg4: index):
        %268 = math.absi %1 : tensor<7x8xi16>
        %c0_i64 = arith.constant 0 : i64
        %269 = vector.transfer_read %2[%c10, %34, %36], %c0_i64 : tensor<7x7x3xi64>, vector<i64>
        %270 = math.sqrt %cst_0 : f32
        memref.tensor_store %28, %alloc_22 : memref<8xi32>
        tensor.yield %cst_4 : f32
      } : tensor<?x?xf32>
      %255 = math.log10 %93 : tensor<8xf32>
      %256 = math.exp2 %splat : tensor<8xf16>
      %257 = arith.remf %cst_5, %extracted : f16
      %alloc_50 = memref.alloc() : memref<7x7x3xi32>
      memref.tensor_store %4, %alloc_50 : memref<7x7x3xi32>
      %c1_i16 = arith.constant 1 : i16
      %258 = vector.transfer_read %16[%c11], %c1_i16 : tensor<8xi16>, vector<i16>
      %259 = arith.remf %cst_5, %cst_2 : f16
      %260 = vector.bitcast %58 : vector<1xi64> to vector<1xi64>
      %261 = math.roundeven %23 : tensor<8x8xf16>
      %262 = bufferization.to_tensor %62 : memref<7x8xi16>
      %263 = tensor.empty(%rank) : tensor<?x8xf16>
      %264 = math.log %cst_5 : f16
      %265 = math.absf %cst_4 : f32
      %266 = vector.reduction <minsi>, %61 : vector<8xi64> into i64
      %267 = math.cttz %false : i1
    }
    %98 = tensor.empty() : tensor<7x7x3xf16>
    %mapped_34 = linalg.map ins(%alloc_11, %alloc_11, %alloc_11 : memref<7x7x3xf16>, memref<7x7x3xf16>, memref<7x7x3xf16>) outs(%98 : tensor<7x7x3xf16>)
      (%in: f16, %in_49: f16, %in_50: f16) {
        %254 = arith.shrui %c1373574094_i32, %c1147522420_i32 : i32
        %255 = arith.ceildivsi %c1147522420_i32, %c1373574094_i32 : i32
        %256 = vector.insertelement %c789415997_i64, %61[%c0 : index] : vector<8xi64>
        %257 = vector.broadcast %cst_0 : f32 to vector<7x7x3xf32>
        %258 = vector.fma %257, %257, %257 : vector<7x7x3xf32>
        %259 = math.powf %98, %98 : tensor<7x7x3xf16>
        %260 = arith.negf %cst_6 : f16
        %261 = arith.remf %cst_4, %cst_4 : f32
        %262 = index.ceildivs %c1, %rank_32
        %rank_51 = tensor.rank %5 : tensor<8xi16>
        %263 = arith.addf %in_50, %cst_5 : f16
        %264 = index.maxs %c11, %262
        vector.print %19 : vector<8xi64>
        %true_52 = index.bool.constant true
        %265 = vector.extract_strided_slice %258 {offsets = [1], sizes = [5], strides = [1]} : vector<7x7x3xf32> to vector<5x7x3xf32>
        %266 = scf.if %true_52 -> (memref<7x7x3xf16>) {
          %281 = vector.broadcast %cst_4 : f32 to vector<3xf32>
          %282 = vector.broadcast %true : i1 to vector<3xi1>
          %283 = vector.maskedload %alloc_17[%c0], %282, %281 : memref<8xf32>, vector<3xi1>, vector<3xf32> into vector<3xf32>
          %284 = arith.remf %cst_5, %cst_2 : f16
          %285 = index.castu %36 : index to i32
          %286 = arith.divf %in_50, %in : f16
          %287 = vector.matrix_multiply %96, %58 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
          %288 = arith.remf %cst_5, %cst_2 : f16
          %false_58 = index.bool.constant false
          %289 = math.ctlz %c1177827053_i64 : i64
          scf.yield %alloc_11 : memref<7x7x3xf16>
        } else {
          %281 = affine.max affine_map<(d0) -> (-(d0 floordiv 2), d0 * 128)>(%c12)
          %282 = vector.broadcast %cst_4 : f32 to vector<7x3xf32>
          %dest_58, %accumulated_value_59 = vector.scan <mul>, %258, %282 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7x3xf32>, vector<7x3xf32>
          %283 = arith.muli %c1147522420_i32, %c1147522420_i32 : i32
          %284 = math.fpowi %in_49, %c1147522420_i32 : f16, i32
          %285 = vector.insertelement %c789415997_i64, %19[%rank_51 : index] : vector<8xi64>
          %false_60 = index.bool.constant false
          memref.assume_alignment %alloc_19, 2 : memref<8x8xf16>
          %286 = index.casts %44 : index to i32
          scf.yield %alloc_11 : memref<7x7x3xf16>
        }
        %extracted_53 = tensor.extract %8[%c5, %c4] : tensor<8x8xf32>
        %alloc_54 = memref.alloc() : memref<7xf16>
        memref.copy %alloc_23, %alloc_54 : memref<7xf16> to memref<7xf16>
        %267 = vector.create_mask %c11 : vector<8xi1>
        %268 = math.roundeven %cst_1 : f16
        %extracted_55 = tensor.extract %expanded[%c2, %c4, %c0] : tensor<8x8x1xi32>
        %269 = arith.shrsi %c1147522420_i32, %extracted_55 : i32
        %270 = math.cttz %6 : tensor<8x8xi64>
        %271 = arith.divf %cst_2, %cst_1 : f16
        %272 = arith.floordivsi %true_52, %false : i1
        %273 = arith.subi %true_3, %true_3 : i1
        %rank_56 = tensor.rank %23 : tensor<8x8xf16>
        %c0_i32 = arith.constant 0 : i32
        %274 = vector.transfer_read %alloc_18[%262], %c0_i32 : memref<8xi32>, vector<i32>
        %275 = vector.broadcast %c4 : index to vector<8xindex>
        %276 = vector.broadcast %c1425_i16 : i16 to vector<8xi16>
        vector.scatter %alloc_14[%c0, %c0, %c1] [%275], %267, %276 : memref<7x7x3xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %277 = math.ipowi %c220153356_i64, %c789415997_i64 : i64
        %278 = affine.load %alloc_22[%c15] : memref<8xi32>
        %279 = scf.index_switch %c14 -> i32 
        case 1 {
          %281 = memref.realloc %alloc_13 : memref<8xf32> to memref<8xf32>
          %282 = bufferization.to_memref %22 : memref<i16>
          %283 = arith.divf %in_49, %cst_5 : f16
          %284 = math.round %cst_0 : f32
          %285 = math.floor %0 : tensor<7x7x3xf32>
          %286 = math.ctlz %4 : tensor<7x7x3xi32>
          %287 = vector.insertelement %c789415997_i64, %19[%264 : index] : vector<8xi64>
          memref.tensor_store %22, %282 : memref<i16>
          %288 = arith.remsi %c0_i32, %278 : i32
          %289 = index.divs %264, %c8
          %290 = arith.divsi %c0_i32, %extracted_55 : i32
          %291 = affine.max affine_map<(d0) -> (-(d0 ceildiv 2 + 32), ((d0 ceildiv 2) ceildiv 8) ceildiv 16, (((d0 ceildiv 2) ceildiv 8) ceildiv 16) floordiv 4, ((d0 ceildiv 2) ceildiv 8) ceildiv 16)>(%c13)
          memref.tensor_store %15, %alloc_8 : memref<8xf32>
          %292 = math.log %0 : tensor<7x7x3xf32>
          %rank_58 = tensor.rank %1 : tensor<7x8xi16>
          %293 = arith.mulf %cst_1, %extracted : f16
          scf.yield %c1147522420_i32 : i32
        }
        case 2 {
          %281 = index.ceildivu %c8, %262
          %282 = tensor.empty() : tensor<8x8xi64>
          %283 = linalg.matmul ins(%6, %9 : tensor<8x8xi64>, tensor<8x8xi64>) outs(%282 : tensor<8x8xi64>) -> tensor<8x8xi64>
          %284 = index.maxs %44, %rank_51
          %285 = index.divs %281, %rank_33
          %286 = arith.subi %c1373574094_i32, %c1373574094_i32 : i32
          %287 = affine.min affine_map<(d0, d1, d2, d3) -> (d1, -d0 + d2 floordiv 8 + (d0 * 3) floordiv 4, d2 floordiv 8 - 1)>(%c2, %c7, %c12, %36)
          %c1936430822_i32 = arith.constant 1936430822 : i32
          %collapsed = tensor.collapse_shape %13 [[0, 1]] : tensor<8x8xi16> into tensor<64xi16>
          %288 = arith.remsi %true_3, %true_3 : i1
          %289 = arith.remf %in, %in_49 : f16
          %290 = bufferization.to_tensor %alloc_17 : memref<8xf32>
          %291 = index.mul %c3, %c9
          %292 = vector.splat %c11 : vector<7x7x3xindex>
          affine.store %cst_5, %alloc_23[%c12] : memref<7xf16>
          %293 = affine.min affine_map<(d0, d1, d2) -> ((d2 floordiv 2) * 8, d0 - (d0 + 128), (d2 floordiv 2) mod 4, (d0 - d2 + 128) ceildiv 16)>(%rank_56, %rank, %291)
          %294 = vector.broadcast %cst_0 : f32 to vector<7x3xf32>
          %dest_58, %accumulated_value_59 = vector.scan <minf>, %257, %294 {inclusive = true, reduction_dim = 1 : i64} : vector<7x7x3xf32>, vector<7x3xf32>
          scf.yield %c1373574094_i32 : i32
        }
        case 3 {
          %281 = vector.multi_reduction <xor>, %61, %c1177827053_i64 [0] : vector<8xi64> to i64
          %282 = math.ipowi %1, %14 : tensor<7x8xi16>
          %283 = vector.broadcast %cst_0 : f32 to vector<7x3xf32>
          %dest_58, %accumulated_value_59 = vector.scan <minf>, %258, %283 {inclusive = false, reduction_dim = 0 : i64} : vector<7x7x3xf32>, vector<7x3xf32>
          %284 = index.sizeof
          %285 = arith.negf %cst : f32
          %expanded_60 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<8x8xi64> into tensor<8x8x1xi64>
          %286 = arith.minui %c220153356_i64, %c220153356_i64 : i64
          %287 = arith.maxsi %c1147522420_i32, %extracted_55 : i32
          %288 = math.ipowi %14, %1 : tensor<7x8xi16>
          %289 = math.absf %in_50 : f16
          %290 = arith.minui %extracted_55, %c0_i32 : i32
          %291 = arith.divf %cst_6, %in_50 : f16
          %alloc_61 = memref.alloc() : memref<7x8xi32>
          memref.copy %alloc_7, %alloc_61 : memref<7x8xi32> to memref<7x8xi32>
          %292 = vector.broadcast %262 : index to vector<8xindex>
          vector.scatter %alloc_9[%c4, %c5] [%292], %267, %267 : memref<7x8xi1>, vector<8xindex>, vector<8xi1>, vector<8xi1>
          %293 = math.cttz %true_52 : i1
          %294 = bufferization.to_memref %5 : memref<8xi16>
          scf.yield %c1147522420_i32 : i32
        }
        case 4 {
          %281 = bufferization.to_memref %6 : memref<8x8xi64>
          %282 = index.divu %44, %c2
          %283 = index.maxs %86, %c11
          %284 = arith.subi %c220153356_i64, %c220153356_i64 : i64
          %285 = bufferization.clone %266 : memref<7x7x3xf16> to memref<7x7x3xf16>
          %286 = bufferization.to_memref %generated : memref<?x?x3xf32>
          %287 = arith.ori %c1177827053_i64, %c220153356_i64 : i64
          %288 = arith.subi %true_52, %true_3 : i1
          %289 = math.ctlz %5 : tensor<8xi16>
          %290 = math.cttz %11 : tensor<7x7x3xi16>
          memref.assume_alignment %alloc_15, 1 : memref<7x8xi64>
          %291 = math.log %extracted : f16
          %292 = index.maxs %c15, %283
          %293 = vector.load %alloc_14[%c2, %c1, %c2] : memref<7x7x3xi16>, vector<8xi16>
          %294 = vector.matrix_multiply %57, %96 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
          %inserted_58 = tensor.insert %c1425_i16 into %21[] : tensor<i16>
          scf.yield %c0_i32 : i32
        }
        default {
          %281 = arith.divf %in, %cst_2 : f16
          %282 = affine.min affine_map<(d0, d1, d2) -> ((d2 floordiv 16) * 8, d2 floordiv 16 - d0 + 128, d2 floordiv 16 - d0, d0 * 3 - 1)>(%44, %46, %46)
          %collapsed = tensor.collapse_shape %7 [[0, 1]] : tensor<7x8xf16> into tensor<56xf16>
          %283 = math.round %7 : tensor<7x8xf16>
          %284 = math.tan %cst_5 : f16
          %285 = vector.broadcast %c789415997_i64 : i64 to vector<7x8xi64>
          %286 = arith.remui %c1147522420_i32, %c0_i32 : i32
          %287 = math.cos %cst_4 : f32
          %288 = arith.remf %cst_4, %cst_0 : f32
          %289 = vector.broadcast %cst_0 : f32 to vector<7x7x3xf32>
          %290 = vector.broadcast %cst_0 : f32 to vector<7x8xf32>
          %291 = vector.fma %290, %290, %290 : vector<7x8xf32>
          %292 = math.round %in_50 : f16
          %293 = arith.maxsi %c1425_i16, %c1425_i16 : i16
          %294 = arith.addf %cst_6, %in : f16
          %295 = vector.insertelement %c1177827053_i64, %19[%c4 : index] : vector<8xi64>
          %rank_58 = tensor.rank %14 : tensor<7x8xi16>
          scf.yield %c1147522420_i32 : i32
        }
        %280 = math.atan2 %cst_2, %cst_1 : f16
        %cst_57 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_57 : f16
      }
    %99 = index.maxs %rank_33, %49
    %100 = math.cttz %21 : tensor<i16>
    %101 = arith.addi %c1373574094_i32, %c1147522420_i32 : i32
    %102 = tensor.empty() : tensor<7x7x3xi16>
    %mapped_35 = linalg.map ins(%11, %alloc_14 : tensor<7x7x3xi16>, memref<7x7x3xi16>) outs(%102 : tensor<7x7x3xi16>)
      (%in: i16, %in_49: i16) {
        %254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%11 : tensor<7x7x3xi16>) {
        ^bb0(%out: i16):
          %alloc_52 = memref.alloc() : memref<7x7x3xi32>
          memref.tensor_store %4, %alloc_52 : memref<7x7x3xi32>
          %281 = math.ceil %cst_5 : f16
          %282 = math.round %7 : tensor<7x8xf16>
          %283 = arith.addi %c220153356_i64, %c220153356_i64 : i64
          %284 = vector.broadcast %c789415997_i64 : i64 to vector<1x1xi64>
          %285 = vector.outerproduct %57, %96, %284 {kind = #vector.kind<minui>} : vector<1xi64>, vector<1xi64>
          %286 = vector.reduction <mul>, %61 : vector<8xi64> into i64
          %287 = arith.addi %false, %true_3 : i1
          %288 = arith.muli %out, %in : i16
          vector.print %19 : vector<8xi64>
          %289 = arith.divui %false, %true_3 : i1
          %290 = math.ipowi %3, %3 : tensor<8xi64>
          %291 = affine.load %alloc_19[%c0, %c6] : memref<8x8xf16>
          %collapsed = tensor.collapse_shape %11 [[0, 1], [2]] : tensor<7x7x3xi16> into tensor<49x3xi16>
          %292 = arith.shrsi %c1147522420_i32, %c1373574094_i32 : i32
          %293 = math.ipowi %expanded, %expanded : tensor<8x8x1xi32>
          %294 = arith.subi %c1177827053_i64, %c1177827053_i64 : i64
          memref.copy %alloc_16, %alloc_9 : memref<7x8xi1> to memref<7x8xi1>
          %295 = index.mul %c10, %rank_32
          %296 = arith.addi %true_3, %true : i1
          %297 = index.casts %c220153356_i64 : i64 to index
          bufferization.dealloc_tensor %6 : tensor<8x8xi64>
          %298 = affine.apply affine_map<(d0, d1, d2, d3) -> (((d2 - (d3 - 4)) floordiv 4) ceildiv 16)>(%46, %c12, %c1, %rank)
          %299 = arith.shrui %c1177827053_i64, %c1177827053_i64 : i64
          %300 = math.fpowi %8, %12 : tensor<8x8xf32>, tensor<8x8xi32>
          %301 = vector.broadcast %c11 : index to vector<3xindex>
          %302 = vector.broadcast %true_3 : i1 to vector<3xi1>
          %303 = vector.broadcast %cst_4 : f32 to vector<3xf32>
          vector.scatter %alloc_8[%c4] [%301], %302, %303 : memref<8xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
          %304 = arith.subi %c1177827053_i64, %c789415997_i64 : i64
          memref.assume_alignment %alloc_16, 8 : memref<7x8xi1>
          %305 = affine.load %alloc_11[%c11, %c14, %c15] : memref<7x7x3xf16>
          %306 = vector.reduction <xor>, %19 : vector<8xi64> into i64
          %307 = arith.remsi %true, %false : i1
          %308 = vector.transpose %58, [0] : vector<1xi64> to vector<1xi64>
          %309 = arith.addi %c1177827053_i64, %c1177827053_i64 : i64
          linalg.yield %out : i16
        } -> tensor<7x7x3xi16>
        %255 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %58, %57, %c789415997_i64 : vector<1xi64>, vector<1xi64> into i64
        %256 = vector.splat %true_3 : vector<7x8xi1>
        %257 = math.round %cst_4 : f32
        %258 = index.casts %in_49 : i16 to index
        %259 = index.maxu %258, %c4
        %260 = math.rsqrt %8 : tensor<8x8xf32>
        %261 = math.copysign %8, %8 : tensor<8x8xf32>
        %262 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 + 64, -(d3 + 64))>(%258, %c1, %259, %c1)
        scf.execute_region {
          %281 = math.powf %0, %0 : tensor<7x7x3xf32>
          %282 = math.cttz %17 : tensor<8xi16>
          %extracted_52 = tensor.extract %3[%c2] : tensor<8xi64>
          %283 = math.absi %expanded : tensor<8x8x1xi32>
          memref.assume_alignment %alloc, 8 : memref<8xi64>
          %284 = index.ceildivu %c13, %c10
          %285 = vector.broadcast %c220153356_i64 : i64 to vector<i64>
          %286 = vector.transfer_write %285, %3[%c12] : vector<i64>, tensor<8xi64>
          memref.tensor_store %7, %alloc_12 : memref<7x8xf16>
          %287 = arith.remsi %c220153356_i64, %c789415997_i64 : i64
          %288 = affine.max affine_map<(d0, d1, d2) -> (d1 floordiv 128, d2 floordiv 32 + 1, d2, d1 floordiv 128 + d2 floordiv 32)>(%34, %c13, %c5)
          %289 = vector.shuffle %96, %19 [0, 1, 3, 5] : vector<1xi64>, vector<8xi64>
          %290 = affine.min affine_map<(d0) -> (d0 floordiv 128, 0, 0, (d0 + 1) * 16)>(%c7)
          %291 = math.ipowi %11, %102 : tensor<7x7x3xi16>
          %292 = tensor.empty() : tensor<7x8xi16>
          %293 = linalg.matmul ins(%1, %13 : tensor<7x8xi16>, tensor<8x8xi16>) outs(%292 : tensor<7x8xi16>) -> tensor<7x8xi16>
          %294 = memref.atomic_rmw maxf %cst_0, %alloc_8[%c3] : (f32, memref<8xf32>) -> f32
          %295 = arith.floordivsi %true, %false : i1
          scf.yield
        }
        %263 = math.sqrt %cst_1 : f16
        %c255923361_i32 = arith.constant 255923361 : i32
        %264 = arith.xori %true, %false : i1
        %265 = arith.shrsi %c789415997_i64, %c789415997_i64 : i64
        %266 = vector.load %alloc_23[%c5] : memref<7xf16>, vector<8xf16>
        scf.index_switch %c13 
        case 1 {
          %281 = arith.ori %false, %true_3 : i1
          %282 = math.absf %15 : tensor<8xf32>
          %283 = math.atan2 %0, %0 : tensor<7x7x3xf32>
          %284 = math.cos %8 : tensor<8x8xf32>
          %285 = math.exp2 %cst : f32
          %286 = arith.mulf %cst_5, %cst_5 : f16
          %287 = math.fpowi %8, %12 : tensor<8x8xf32>, tensor<8x8xi32>
          %alloc_52 = memref.alloc() : memref<7x7x3xi64>
          memref.copy %alloc_10, %alloc_52 : memref<7x7x3xi64> to memref<7x7x3xi64>
          vector.print %58 : vector<1xi64>
          affine.store %c220153356_i64, %alloc[%c13] : memref<8xi64>
          %288 = arith.subi %false, %true : i1
          %289 = vector.broadcast %c3 : index to vector<5xindex>
          %290 = vector.broadcast %true : i1 to vector<5xi1>
          %291 = vector.broadcast %cst_1 : f16 to vector<5xf16>
          vector.scatter %alloc_19[%c2, %c6] [%289], %290, %291 : memref<8x8xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
          %292 = tensor.empty() : tensor<8x8xi32>
          %293 = linalg.matmul ins(%12, %12 : tensor<8x8xi32>, tensor<8x8xi32>) outs(%292 : tensor<8x8xi32>) -> tensor<8x8xi32>
          %294 = vector.broadcast %c789415997_i64 : i64 to vector<1x1xi64>
          %295 = vector.outerproduct %58, %96, %294 {kind = #vector.kind<minui>} : vector<1xi64>, vector<1xi64>
          %c2930_i16 = arith.constant 2930 : i16
          %296 = arith.remf %cst_4, %cst : f32
          scf.yield
        }
        case 2 {
          %281 = math.powf %cst, %cst_4 : f32
          %282 = math.atan2 %cst, %cst_0 : f32
          %283 = math.absf %cst_2 : f16
          %284 = arith.addi %in, %in_49 : i16
          bufferization.dealloc_tensor %10 : tensor<8xi1>
          %285 = math.powf %extracted, %cst_2 : f16
          memref.tensor_store %102, %alloc_14 : memref<7x7x3xi16>
          %286 = math.ipowi %9, %6 : tensor<8x8xi64>
          %287 = arith.subi %c1373574094_i32, %c1147522420_i32 : i32
          %288 = arith.xori %false, %true_3 : i1
          %true_52 = index.bool.constant true
          %289 = math.exp2 %extracted : f16
          memref.assume_alignment %alloc_13, 16 : memref<8xf32>
          %true_53 = arith.constant true
          %290 = index.casts %in : i16 to index
          %291 = vector.broadcast %c1147522420_i32 : i32 to vector<7x8xi32>
          scf.yield
        }
        case 3 {
          %281 = affine.max affine_map<(d0) -> (d0 floordiv 4, d0 + -d0 - 4, 0)>(%99)
          %282 = math.ipowi %12, %12 : tensor<8x8xi32>
          %cst_52 = arith.constant 5.513600e+04 : f16
          %283 = bufferization.to_tensor %alloc_23 : memref<7xf16>
          %extracted_53 = tensor.extract %5[%c4] : tensor<8xi16>
          %284 = index.divs %c7, %c1
          %285 = index.sub %258, %c9
          %286 = vector.matrix_multiply %58, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 8 : i32} : (vector<1xi64>, vector<8xi64>) -> vector<8xi64>
          %287 = math.floor %7 : tensor<7x8xf16>
          %288 = arith.cmpf ult, %cst_6, %cst_5 : f16
          %289 = math.cos %23 : tensor<8x8xf16>
          %290 = arith.addi %c1425_i16, %in_49 : i16
          vector.print %286 : vector<8xi64>
          affine.store %c1177827053_i64, %alloc_10[%c3, %c8, %c5] : memref<7x7x3xi64>
          %291 = vector.broadcast %c10 : index to vector<5xindex>
          %292 = vector.broadcast %true : i1 to vector<5xi1>
          vector.scatter %alloc_16[%c5, %c1] [%291], %292, %292 : memref<7x8xi1>, vector<5xindex>, vector<5xi1>, vector<5xi1>
          %293 = index.casts %284 : index to i32
          scf.yield
        }
        case 4 {
          %extracted_52 = tensor.extract %8[%c2, %c1] : tensor<8x8xf32>
          %281 = vector.broadcast %in : i16 to vector<7xi16>
          %282 = vector.broadcast %true : i1 to vector<7xi1>
          %283 = vector.maskedload %37[%c2, %c0, %c2], %282, %281 : memref<7x7x3xi16>, vector<7xi1>, vector<7xi16> into vector<7xi16>
          %284 = math.cttz %in_49 : i16
          %285 = index.floordivs %rank_32, %rank_32
          %286 = math.tanh %cst_1 : f16
          %287 = index.mul %34, %c5
          %288 = index.floordivs %287, %c10
          %289 = index.maxs %c6, %258
          %290 = math.tan %8 : tensor<8x8xf32>
          %291 = math.tanh %8 : tensor<8x8xf32>
          memref.store %cst_5, %alloc_12[%c1, %c3] : memref<7x8xf16>
          %292 = vector.broadcast %c1177827053_i64 : i64 to vector<1x1xi64>
          %293 = vector.outerproduct %96, %58, %292 {kind = #vector.kind<or>} : vector<1xi64>, vector<1xi64>
          %294 = index.maxs %c14, %c9
          %295 = arith.remf %extracted_52, %extracted_52 : f32
          %296 = vector.multi_reduction <and>, %57, %c789415997_i64 [0] : vector<1xi64> to i64
          %297 = arith.divsi %296, %296 : i64
          scf.yield
        }
        default {
          %281 = vector.broadcast %c1147522420_i32 : i32 to vector<7xi32>
          %282 = vector.broadcast %true : i1 to vector<7xi1>
          %283 = vector.maskedload %alloc_7[%c4, %c1], %282, %281 : memref<7x8xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
          %284 = math.powf %8, %8 : tensor<8x8xf32>
          %285 = math.absi %c789415997_i64 : i64
          %286 = vector.reduction <maxui>, %283 : vector<7xi32> into i32
          %287 = index.divs %c15, %c1
          %288 = arith.remsi %true_3, %false : i1
          %289 = math.sqrt %7 : tensor<7x8xf16>
          %290 = math.tanh %7 : tensor<7x8xf16>
          affine.store %c1147522420_i32, %alloc_20[%c2, %c8] : memref<8x8xi32>
          %291 = index.floordivs %c9, %262
          %cst_52 = arith.constant 2.723200e+04 : f16
          %292 = vector.shuffle %281, %283 [1, 4, 6, 8, 12] : vector<7xi32>, vector<7xi32>
          %293 = arith.subi %in, %in : i16
          %294 = tensor.empty() : tensor<7x8xi32>
          %295 = math.fpowi %7, %294 : tensor<7x8xf16>, tensor<7x8xi32>
          %296 = vector.shuffle %266, %266 [0, 3, 5, 6, 7, 9, 10, 12, 13] : vector<8xf16>, vector<8xf16>
          %alloc_53 = memref.alloc() : memref<7x8xi64>
          memref.copy %alloc_15, %alloc_53 : memref<7x8xi64> to memref<7x8xi64>
        }
        %267 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %61, %61, %c789415997_i64 : vector<8xi64>, vector<8xi64> into i64
        %268 = index.ceildivs %c6, %c2
        %269 = math.cos %cst : f32
        %270 = math.log10 %cst_2 : f16
        %271 = arith.divsi %c1147522420_i32, %c1373574094_i32 : i32
        %272 = affine.apply affine_map<(d0, d1, d2) -> (d1 ceildiv 64)>(%c5, %86, %c1)
        %c1_i64 = arith.constant 1 : i64
        %c0_i64 = arith.constant 0 : i64
        %273 = vector.transfer_read %alloc_15[%rank_33, %34], %c0_i64 : memref<7x8xi64>, vector<i64>
        %274 = vector.reduction <maxui>, %19 : vector<8xi64> into i64
        %275 = vector.load %alloc_23[%c5] : memref<7xf16>, vector<7x8xf16>
        %276 = arith.minsi %c1147522420_i32, %c1373574094_i32 : i32
        %extracted_50 = tensor.extract %9[%c7, %c6] : tensor<8x8xi64>
        %277 = vector.broadcast %c1373574094_i32 : i32 to vector<7x8xi32>
        %278 = math.absf %cst_0 : f32
        %279 = arith.ceildivsi %true_3, %true_3 : i1
        %extracted_51 = tensor.extract %8[%c5, %c1] : tensor<8x8xf32>
        %280 = math.fma %8, %8, %8 : tensor<8x8xf32>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %103 = math.roundeven %splat : tensor<8xf16>
    %104 = arith.shli %c1373574094_i32, %c1147522420_i32 : i32
    memref.assume_alignment %alloc_15, 8 : memref<7x8xi64>
    %105 = math.round %93 : tensor<8xf32>
    %106 = math.ipowi %22, %22 : tensor<i16>
    %107 = math.ctlz %c1147522420_i32 : i32
    memref.copy %alloc_16, %alloc_9 : memref<7x8xi1> to memref<7x8xi1>
    %108 = arith.remsi %c789415997_i64, %c1177827053_i64 : i64
    bufferization.dealloc_tensor %12 : tensor<8x8xi32>
    %109 = vector.broadcast %c1373574094_i32 : i32 to vector<7x3x7x3xi32>
    %110 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<minsi>} %25, %87, %109 : vector<7x7x3xi32>, vector<7x7x3xi32> into vector<7x3x7x3xi32>
    %111 = affine.max affine_map<(d0, d1, d2) -> (d0, (d0 ceildiv 16) * -2, d0 - 128, 0)>(%c14, %68, %c15)
    %112 = math.log10 %23 : tensor<8x8xf16>
    %113 = vector.reduction <minui>, %57 : vector<1xi64> into i64
    %114 = math.round %0 : tensor<7x7x3xf32>
    %115 = math.absi %20 : tensor<8xi16>
    %116 = affine.for %arg3 = 0 to 18 iter_args(%arg4 = %c0) -> (index) {
      affine.yield %arg4 : index
    }
    %117 = index.casts %c1147522420_i32 : i32 to index
    %118 = vector.splat %cst : vector<7x8xf32>
    %119 = vector.insert %c789415997_i64, %58 [0] : i64 into vector<1xi64>
    %120 = arith.muli %true_3, %false : i1
    %121 = vector.splat %cst_6 : vector<7x8xf16>
    %122 = arith.mulf %cst_0, %cst_4 : f32
    %123 = index.ceildivs %46, %c1
    %124 = tensor.empty() : tensor<8x8xi16>
    %mapped_36 = linalg.map ins(%13 : tensor<8x8xi16>) outs(%124 : tensor<8x8xi16>)
      (%in: i16) {
        %254 = index.maxs %c10, %c0
        %255 = vector.broadcast %c1373574094_i32 : i32 to vector<7x3xi32>
        %dest_49, %accumulated_value_50 = vector.scan <xor>, %87, %255 {inclusive = true, reduction_dim = 0 : i64} : vector<7x7x3xi32>, vector<7x3xi32>
        %256 = math.absf %cst_6 : f16
        %257 = arith.xori %true, %true : i1
        %258 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %58, %58, %c789415997_i64 : vector<1xi64>, vector<1xi64> into i64
        %259 = arith.cmpf une, %cst_4, %cst_4 : f32
        memref.copy %alloc_18, %alloc_22 : memref<8xi32> to memref<8xi32>
        %260 = math.absi %28 : tensor<8xi32>
        %261 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<xor>} %61, %61, %c789415997_i64 : vector<8xi64>, vector<8xi64> into i64
        %262 = index.sizeof
        %263 = index.sizeof
        memref.tensor_store %11, %alloc_14 : memref<7x7x3xi16>
        %264 = vector.insertelement %c789415997_i64, %96[%49 : index] : vector<1xi64>
        bufferization.dealloc_tensor %124 : tensor<8x8xi16>
        %265 = arith.divsi %true_3, %true_3 : i1
        %266 = affine.apply affine_map<(d0, d1) -> (d0 * -3)>(%c13, %c3)
        %267 = math.fpowi %cst_5, %c1373574094_i32 : f16, i32
        %268 = math.floor %7 : tensor<7x8xf16>
        %269 = arith.remf %extracted, %cst_5 : f16
        %270 = math.exp2 %15 : tensor<8xf32>
        %271 = math.fma %splat, %splat, %splat : tensor<8xf16>
        %272 = vector.reduction <xor>, %19 : vector<8xi64> into i64
        %273 = arith.remsi %true, %false : i1
        %274 = vector.broadcast %c1147522420_i32 : i32 to vector<7x3x7x3xi32>
        %275 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<or>} %87, %87, %274 : vector<7x7x3xi32>, vector<7x7x3xi32> into vector<7x3x7x3xi32>
        %276 = vector.broadcast %cst_0 : f32 to vector<7x7x3xf32>
        %277 = vector.fma %276, %276, %276 : vector<7x7x3xf32>
        %extracted_51 = tensor.extract %13[%c3, %c0] : tensor<8x8xi16>
        %278 = affine.for %arg3 = 0 to 70 iter_args(%arg4 = %262) -> (index) {
          affine.yield %c0 : index
        }
        %generated_52 = tensor.generate %c15 {
        ^bb0(%arg3: index, %arg4: index, %arg5: index):
          %283 = math.fpowi %0, %4 : tensor<7x7x3xf32>, tensor<7x7x3xi32>
          %284 = memref.atomic_rmw assign %cst_6, %alloc_23[%c4] : (f16, memref<7xf16>) -> f16
          %285 = vector.insert %c1177827053_i64, %58 [0] : i64 into vector<1xi64>
          %286 = vector.broadcast %cst_2 : f16 to vector<7xf16>
          %287 = vector.broadcast %false : i1 to vector<7xi1>
          %288 = vector.maskedload %alloc_23[%c3], %287, %286 : memref<7xf16>, vector<7xi1>, vector<7xf16> into vector<7xf16>
          tensor.yield %c220153356_i64 : i64
        } : tensor<?x7x3xi64>
        %279 = index.sub %c12, %c9
        %280 = arith.remsi %extracted_51, %c1425_i16 : i16
        %281 = math.log10 %splat : tensor<8xf16>
        %282 = math.sqrt %0 : tensor<7x7x3xf32>
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %125 = vector.bitcast %19 : vector<8xi64> to vector<8xi64>
    %126 = vector.broadcast %cst : f32 to vector<8xf32>
    %127 = vector.fma %126, %126, %126 : vector<8xf32>
    %alloc_37 = memref.alloc() : memref<7x7x3xi32>
    memref.tensor_store %4, %alloc_37 : memref<7x7x3xi32>
    %128 = vector.broadcast %c220153356_i64 : i64 to vector<8x8xi64>
    %129 = vector.outerproduct %19, %61, %128 {kind = #vector.kind<or>} : vector<8xi64>, vector<8xi64>
    %130 = bufferization.clone %alloc_11 : memref<7x7x3xf16> to memref<7x7x3xf16>
    %131 = scf.index_switch %c5 -> memref<8x8xf32> 
    case 1 {
      memref.store %c1425_i16, %alloc_14[%c0, %c2, %c0] : memref<7x7x3xi16>
      scf.index_switch %c14 
      case 1 {
        %269 = index.ceildivs %117, %c15
        %270 = arith.minf %cst_4, %cst_0 : f32
        %271 = arith.minsi %c1425_i16, %c1425_i16 : i16
        %272 = math.powf %15, %15 : tensor<8xf32>
        %alloc_50 = memref.alloc() : memref<8x8xi64>
        memref.tensor_store %9, %alloc_50 : memref<8x8xi64>
        %false_51 = index.bool.constant false
        %273 = vector.broadcast %c1373574094_i32 : i32 to vector<3xi32>
        %274 = vector.insert %273, %25 [2, 5] : vector<3xi32> into vector<7x7x3xi32>
        %275 = bufferization.to_tensor %alloc_18 : memref<8xi32>
        memref.tensor_store %14, %alloc_21 : memref<7x8xi16>
        %276 = math.sqrt %93 : tensor<8xf32>
        %extracted_52 = tensor.extract %93[%c7] : tensor<8xf32>
        %277 = index.sizeof
        %278 = arith.remsi %c1177827053_i64, %c1177827053_i64 : i64
        %279 = math.fma %cst, %cst_4, %cst : f32
        %280 = vector.broadcast %cst_4 : f32 to vector<8xf32>
        %281 = vector.fma %280, %127, %126 : vector<8xf32>
        %282 = vector.broadcast %c2 : index to vector<3xindex>
        %283 = vector.broadcast %false_51 : i1 to vector<3xi1>
        %284 = vector.broadcast %cst_4 : f32 to vector<3xf32>
        vector.scatter %alloc_17[%c4] [%282], %283, %284 : memref<8xf32>, vector<3xindex>, vector<3xi1>, vector<3xf32>
        scf.yield
      }
      case 2 {
        %269 = affine.min affine_map<(d0, d1) -> ((d0 floordiv 32) * 32, d0 mod 2)>(%c12, %c7)
        %alloc_50 = memref.alloc() : memref<7xf16>
        memref.copy %alloc_23, %alloc_50 : memref<7xf16> to memref<7xf16>
        %270 = math.cos %extracted : f16
        %inserted_51 = tensor.insert %c220153356_i64 into %3[%c7] : tensor<8xi64>
        %271 = arith.remsi %true, %false : i1
        %272 = math.rsqrt %23 : tensor<8x8xf16>
        affine.store %c1177827053_i64, %alloc_15[%c3, %c13] : memref<7x8xi64>
        %273 = affine.max affine_map<(d0, d1, d2) -> (d2, d0 - (d2 - 1), d2 * 8)>(%68, %c15, %34)
        %274 = vector.broadcast %cst_4 : f32 to vector<7x8xf32>
        %275 = arith.remf %cst_6, %cst_6 : f16
        %276 = vector.broadcast %c1373574094_i32 : i32 to vector<7xi32>
        %277 = vector.broadcast %true : i1 to vector<7xi1>
        %278 = vector.maskedload %alloc_22[%c4], %277, %276 : memref<8xi32>, vector<7xi1>, vector<7xi32> into vector<7xi32>
        %279 = math.powf %98, %98 : tensor<7x7x3xf16>
        %280 = affine.min affine_map<(d0) -> (d0, d0 + 1, d0)>(%36)
        %281 = math.absi %11 : tensor<7x7x3xi16>
        %282 = affine.max affine_map<(d0, d1, d2) -> (d0 + 1, d0 ceildiv 64)>(%269, %117, %44)
        %283 = math.powf %7, %7 : tensor<7x8xf16>
        scf.yield
      }
      case 3 {
        %269 = vector.matrix_multiply %19, %19 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
        %false_50 = index.bool.constant false
        %270 = index.sub %c12, %c14
        %271 = math.round %cst_2 : f16
        %272 = arith.floordivsi %c220153356_i64, %c789415997_i64 : i64
        %273 = arith.mulf %cst_2, %extracted : f16
        %274 = memref.atomic_rmw addi %c789415997_i64, %alloc_10[%c4, %c5, %c2] : (i64, memref<7x7x3xi64>) -> i64
        %275 = arith.shli %false, %false_50 : i1
        %276 = vector.broadcast %c220153356_i64 : i64 to vector<8xi64>
        %277 = index.divu %rank, %123
        %278 = tensor.empty() : tensor<8x8xi32>
        %279 = linalg.matmul ins(%12, %12 : tensor<8x8xi32>, tensor<8x8xi32>) outs(%278 : tensor<8x8xi32>) -> tensor<8x8xi32>
        bufferization.dealloc_tensor %0 : tensor<7x7x3xf32>
        %280 = math.copysign %0, %0 : tensor<7x7x3xf32>
        %281 = math.floor %0 : tensor<7x7x3xf32>
        %282 = math.round %cst_4 : f32
        %283 = math.rsqrt %7 : tensor<7x8xf16>
        scf.yield
      }
      case 4 {
        %269 = arith.ceildivsi %c1147522420_i32, %c1373574094_i32 : i32
        %270 = affine.min affine_map<(d0, d1) -> (-d0, d1 - 60)>(%117, %111)
        %271 = arith.maxsi %c789415997_i64, %c220153356_i64 : i64
        %272 = math.round %cst_4 : f32
        %273 = math.tan %cst_2 : f16
        %274 = affine.max affine_map<(d0, d1, d2) -> (d1 - 2, d1 - 2, ((((d2 - d0) floordiv 32) floordiv 128) * 4) ceildiv 128, ((((d2 - d0) floordiv 32) floordiv 128) * 4) ceildiv 128)>(%34, %c3, %68)
        %275 = vector.multi_reduction <minf>, %126, %cst [0] : vector<8xf32> to f32
        %276 = math.tan %15 : tensor<8xf32>
        memref.assume_alignment %alloc_7, 8 : memref<7x8xi32>
        %277 = arith.andi %c1177827053_i64, %c789415997_i64 : i64
        %278 = math.log10 %cst : f32
        %279 = math.fma %8, %8, %8 : tensor<8x8xf32>
        %280 = arith.addi %false, %true_3 : i1
        %281 = arith.addf %cst_6, %cst_6 : f16
        %282 = arith.ori %false, %false : i1
        bufferization.dealloc_tensor %6 : tensor<8x8xi64>
        scf.yield
      }
      default {
        %269 = math.ipowi %c1147522420_i32, %c1373574094_i32 : i32
        %270 = vector.splat %99 : vector<8xindex>
        %271 = vector.broadcast %rank_32 : index to vector<5xindex>
        %272 = vector.broadcast %true_3 : i1 to vector<5xi1>
        %273 = vector.broadcast %c220153356_i64 : i64 to vector<5xi64>
        vector.scatter %alloc_15[%c6, %c1] [%271], %272, %273 : memref<7x8xi64>, vector<5xindex>, vector<5xi1>, vector<5xi64>
        affine.store %c1373574094_i32, %alloc_18[%c13] : memref<8xi32>
        %274 = math.tanh %0 : tensor<7x7x3xf32>
        %275 = vector.insert %c220153356_i64, %125 [6] : i64 into vector<8xi64>
        %276 = math.cttz %6 : tensor<8x8xi64>
        %277 = bufferization.clone %alloc_23 : memref<7xf16> to memref<7xf16>
        %278 = arith.muli %c1373574094_i32, %c1373574094_i32 : i32
        %279 = math.powf %cst_6, %cst_1 : f16
        affine.store %cst_5, %alloc_19[%c7, %c9] : memref<8x8xf16>
        %280 = math.copysign %cst_5, %cst_5 : f16
        %281 = arith.divsi %c1425_i16, %c1425_i16 : i16
        %282 = math.ctlz %12 : tensor<8x8xi32>
        %283 = arith.maxsi %c1425_i16, %c1425_i16 : i16
        %284 = arith.ceildivsi %true_3, %true_3 : i1
      }
      %254 = arith.shrsi %false, %false : i1
      %255 = math.atan2 %splat, %splat : tensor<8xf16>
      %256 = index.casts %c1177827053_i64 : i64 to index
      %257 = vector.splat %123 : vector<8xindex>
      %258 = math.log1p %cst_1 : f16
      affine.store %extracted, %alloc_11[%c8, %c10, %c11] : memref<7x7x3xf16>
      %259 = tensor.empty() : tensor<8x8xi64>
      %260 = linalg.matmul ins(%6, %9 : tensor<8x8xi64>, tensor<8x8xi64>) outs(%259 : tensor<8x8xi64>) -> tensor<8x8xi64>
      %261 = arith.ori %false, %true_3 : i1
      %262 = index.floordivs %49, %123
      %263 = affine.max affine_map<(d0, d1, d2) -> (0, (-(d0 - 4) - 16) * 2, d0 - 4, -((d0 - 4) floordiv 64))>(%c13, %34, %68)
      %264 = index.ceildivs %c14, %c9
      %265 = arith.subi %c1147522420_i32, %c1147522420_i32 : i32
      %266 = arith.shli %true, %false : i1
      %267 = vector.broadcast %c220153356_i64 : i64 to vector<8x8xi64>
      %268 = vector.outerproduct %125, %125, %267 {kind = #vector.kind<or>} : vector<8xi64>, vector<8xi64>
      %alloc_49 = memref.alloc() : memref<8x8xf32>
      scf.yield %alloc_49 : memref<8x8xf32>
    }
    case 2 {
      %254 = arith.remsi %c1373574094_i32, %c1147522420_i32 : i32
      %255 = affine.for %arg3 = 0 to 40 iter_args(%arg4 = %cst_0) -> (f32) {
        affine.yield %cst : f32
      }
      %256 = math.cttz %5 : tensor<8xi16>
      %257 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %58, %58, %c789415997_i64 : vector<1xi64>, vector<1xi64> into i64
      %258 = math.absi %28 : tensor<8xi32>
      %259 = index.ceildivu %36, %c8
      %260 = vector.reduction <xor>, %125 : vector<8xi64> into i64
      %261 = arith.remsi %c1147522420_i32, %c1373574094_i32 : i32
      %262 = math.cos %cst : f32
      affine.for %arg3 = 0 to 101 {
      }
      %263 = math.exp2 %8 : tensor<8x8xf32>
      %264 = math.ceil %cst : f32
      %265 = vector.insert %c789415997_i64, %58 [0] : i64 into vector<1xi64>
      %266 = scf.while (%arg3 = %c1425_i16) : (i16) -> i16 {
        %269 = math.tan %cst_5 : f16
        %270 = index.sizeof
        %271 = arith.addi %arg3, %c1425_i16 : i16
        %272 = arith.divui %c1147522420_i32, %c1373574094_i32 : i32
        bufferization.dealloc_tensor %12 : tensor<8x8xi32>
        %273 = math.exp2 %cst_6 : f16
        %274 = bufferization.to_tensor %alloc_15 : memref<7x8xi64>
        %275 = math.cos %extracted : f16
        scf.condition(%true_3) %arg3 : i16
      } do {
      ^bb0(%arg3: i16):
        %269 = bufferization.clone %alloc_22 : memref<8xi32> to memref<8xi32>
        %270 = vector.splat %36 : vector<8xindex>
        %271 = affine.load %alloc_23[%c6] : memref<7xf16>
        %272 = vector.create_mask %c11, %c3 : vector<7x8xi1>
        %273 = affine.max affine_map<(d0, d1, d2, d3) -> (d0 floordiv 64)>(%c8, %46, %c13, %46)
        %c0_i16 = arith.constant 0 : i16
        %c0_i16_50 = arith.constant 0 : i16
        %274 = vector.transfer_read %17[%c0], %c0_i16_50 : tensor<8xi16>, vector<i16>
        %275 = tensor.empty() : tensor<7x8xf16>
        %276 = linalg.matmul ins(%7, %23 : tensor<7x8xf16>, tensor<8x8xf16>) outs(%275 : tensor<7x8xf16>) -> tensor<7x8xf16>
        %277 = arith.cmpf oeq, %extracted, %cst_6 : f16
        %278 = arith.divsi %c789415997_i64, %c1177827053_i64 : i64
        memref.copy %alloc_13, %alloc_8 : memref<8xf32> to memref<8xf32>
        %279 = arith.xori %c0_i16, %arg3 : i16
        %280 = tensor.empty() : tensor<8x8xf32>
        %281 = linalg.matmul ins(%8, %8 : tensor<8x8xf32>, tensor<8x8xf32>) outs(%280 : tensor<8x8xf32>) -> tensor<8x8xf32>
        %282 = arith.xori %c1147522420_i32, %c1373574094_i32 : i32
        %283 = math.cos %93 : tensor<8xf32>
        %284 = math.tanh %93 : tensor<8xf32>
        %285 = math.cos %cst_5 : f16
        scf.yield %c1425_i16 : i16
      }
      %267 = math.sqrt %0 : tensor<7x7x3xf32>
      %268 = math.cttz %13 : tensor<8x8xi16>
      %alloc_49 = memref.alloc() : memref<8x8xf32>
      scf.yield %alloc_49 : memref<8x8xf32>
    }
    case 3 {
      %254 = arith.cmpf oge, %cst, %cst_4 : f32
      %255 = index.floordivs %68, %49
      %rank_49 = tensor.rank %15 : tensor<8xf32>
      memref.store %c1373574094_i32, %alloc_20[%c3, %c5] : memref<8x8xi32>
      %256 = index.mul %44, %34
      %257 = bufferization.clone %alloc_14 : memref<7x7x3xi16> to memref<7x7x3xi16>
      %258 = vector.splat %c13 : vector<7x7x3xindex>
      %259 = math.round %splat : tensor<8xf16>
      %260 = math.atan2 %8, %8 : tensor<8x8xf32>
      %261 = math.log %cst_6 : f16
      %262 = tensor.empty() : tensor<7x8xf32>
      %263 = vector.broadcast %cst_0 : f32 to vector<7x8xf32>
      %264 = vector.broadcast %true : i1 to vector<7x8xi1>
      %265 = vector.broadcast %c1373574094_i32 : i32 to vector<7x8xi32>
      %266 = vector.gather %262[%c13, %36] [%265], %264, %263 : tensor<7x8xf32>, vector<7x8xi32>, vector<7x8xi1>, vector<7x8xf32> into vector<7x8xf32>
      %267 = vector.load %62[%c1, %c5] : memref<7x8xi16>, vector<8x8xi16>
      bufferization.dealloc_tensor %13 : tensor<8x8xi16>
      %268 = arith.cmpi ne, %false, %false : i1
      %269 = math.powf %cst_4, %cst_0 : f32
      %270 = vector.splat %117 : vector<7x7x3xindex>
      %alloc_50 = memref.alloc() : memref<8x8xf32>
      scf.yield %alloc_50 : memref<8x8xf32>
    }
    case 4 {
      %254 = bufferization.clone %alloc_20 : memref<8x8xi32> to memref<8x8xi32>
      %255 = vector.insertelement %c789415997_i64, %61[%117 : index] : vector<8xi64>
      %256 = arith.muli %false, %true : i1
      %257 = math.fma %splat, %splat, %splat : tensor<8xf16>
      %258 = index.casts %c5 : index to i32
      %259 = math.tanh %7 : tensor<7x8xf16>
      %260 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3 + 8)>(%rank_33, %46, %rank_32, %c9)
      %261 = math.powf %cst_2, %cst_1 : f16
      %262 = vector.matrix_multiply %96, %96 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      %263 = math.cttz %4 : tensor<7x7x3xi32>
      %alloc_49 = memref.alloc() : memref<7x7x3xi32>
      memref.tensor_store %4, %alloc_49 : memref<7x7x3xi32>
      %264 = index.sub %44, %44
      %265 = math.log %8 : tensor<8x8xf32>
      %266 = math.fpowi %0, %4 : tensor<7x7x3xf32>, tensor<7x7x3xi32>
      %267 = math.floor %cst : f32
      %268 = math.cos %0 : tensor<7x7x3xf32>
      %alloc_50 = memref.alloc() : memref<8x8xf32>
      scf.yield %alloc_50 : memref<8x8xf32>
    }
    default {
      %254 = arith.cmpi sgt, %false, %false : i1
      memref.tensor_store %23, %alloc_19 : memref<8x8xf16>
      %255 = math.tanh %98 : tensor<7x7x3xf16>
      %256 = arith.andi %c1425_i16, %c1425_i16 : i16
      %257 = arith.divf %cst_6, %cst_2 : f16
      %258 = tensor.empty() : tensor<8xi16>
      %259 = affine.max affine_map<(d0, d1) -> (d0 + 8)>(%c2, %49)
      %260 = arith.cmpi slt, %true_3, %false : i1
      %261 = affine.min affine_map<(d0) -> (((d0 mod 2) ceildiv 32) * 64, ((d0 mod 2) ceildiv 32) * 64, d0 floordiv 64 + 32)>(%c14)
      %262 = arith.xori %c1425_i16, %c1425_i16 : i16
      %263 = bufferization.to_tensor %43 : memref<8x8xi32>
      %264 = index.ceildivu %c12, %c1
      %265 = vector.broadcast %c1425_i16 : i16 to vector<5xi16>
      %266 = vector.broadcast %true : i1 to vector<5xi1>
      %267 = vector.maskedload %62[%c1, %c6], %266, %265 : memref<7x8xi16>, vector<5xi1>, vector<5xi16> into vector<5xi16>
      %268 = index.maxs %c10, %c12
      scf.execute_region {
        %270 = math.roundeven %cst_0 : f32
        %271 = vector.broadcast %c3 : index to vector<7xindex>
        %272 = vector.broadcast %false : i1 to vector<7xi1>
        %273 = vector.broadcast %cst_0 : f32 to vector<7xf32>
        vector.scatter %alloc_13[%c0] [%271], %272, %273 : memref<8xf32>, vector<7xindex>, vector<7xi1>, vector<7xf32>
        %274 = arith.remf %cst_4, %cst : f32
        %275 = arith.ceildivsi %c789415997_i64, %c1177827053_i64 : i64
        %276 = index.casts %false : i1 to index
        %277 = arith.minf %cst, %cst : f32
        %278 = index.floordivs %46, %c12
        %279 = arith.minf %cst_2, %cst_5 : f16
        %280 = math.tan %cst_5 : f16
        memref.copy %alloc_14, %37 : memref<7x7x3xi16> to memref<7x7x3xi16>
        %281 = affine.min affine_map<(d0, d1, d2) -> (d0 mod 2)>(%c2, %261, %268)
        %282 = affine.max affine_map<(d0, d1, d2) -> (-d2)>(%c2, %c8, %rank)
        %283 = math.atan2 %15, %15 : tensor<8xf32>
        %284 = vector.broadcast %cst_0 : f32 to vector<8x8xf32>
        %285 = vector.fma %284, %284, %284 : vector<8x8xf32>
        %286 = math.ceil %cst_2 : f16
        %287 = arith.divsi %c220153356_i64, %c789415997_i64 : i64
        scf.yield
      }
      %269 = arith.mulf %cst_4, %cst_4 : f32
      %alloc_49 = memref.alloc() : memref<8x8xf32>
      scf.yield %alloc_49 : memref<8x8xf32>
    }
    %132 = arith.divsi %c1177827053_i64, %c1177827053_i64 : i64
    %133 = math.tanh %0 : tensor<7x7x3xf32>
    %134 = index.maxs %rank_32, %c13
    %135 = arith.shrsi %c220153356_i64, %c1177827053_i64 : i64
    %136 = arith.minf %cst, %cst_4 : f32
    memref.tensor_store %3, %alloc : memref<8xi64>
    %137 = math.ipowi %12, %12 : tensor<8x8xi32>
    %alloc_38 = memref.alloc() : memref<8xf16>
    memref.tensor_store %splat, %alloc_38 : memref<8xf16>
    memref.copy %37, %alloc_14 : memref<7x7x3xi16> to memref<7x7x3xi16>
    %138 = math.absi %c1373574094_i32 : i32
    %139 = vector.broadcast %c13 : index to vector<5xindex>
    %140 = vector.broadcast %true : i1 to vector<5xi1>
    %141 = vector.broadcast %cst_6 : f16 to vector<5xf16>
    vector.scatter %alloc_19[%c3, %c6] [%139], %140, %141 : memref<8x8xf16>, vector<5xindex>, vector<5xi1>, vector<5xf16>
    memref.assume_alignment %alloc_17, 1 : memref<8xf32>
    %142 = math.absf %splat : tensor<8xf16>
    %extracted_39 = tensor.extract %expanded[%c1, %c7, %c0] : tensor<8x8x1xi32>
    %143 = affine.max affine_map<(d0, d1, d2) -> ((d0 mod 8) ceildiv 32, (-d1 + (d0 mod 8) * 128) * 4, (-d1 - d0 mod 8) mod 2, d0 mod 8)>(%c11, %134, %86)
    %cast = tensor.cast %4 : tensor<7x7x3xi32> to tensor<?x?x?xi32>
    %144 = math.round %23 : tensor<8x8xf16>
    %145 = vector.shuffle %19, %61 [1, 3, 7, 8, 9, 10, 13] : vector<8xi64>, vector<8xi64>
    %146 = index.floordivs %c5, %134
    %147 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%0 : tensor<7x7x3xf32>) {
    ^bb0(%out: f32):
      %alloc_49 = memref.alloc() : memref<8x8xf32>
      memref.tensor_store %8, %alloc_49 : memref<8x8xf32>
      %254 = vector.extract %125[5] : vector<8xi64>
      %255 = arith.minsi %c1147522420_i32, %extracted_39 : i32
      %256 = vector.broadcast %cst_0 : f32 to vector<5xf32>
      %257 = vector.broadcast %true_3 : i1 to vector<5xi1>
      %258 = vector.maskedload %alloc_17[%c7], %257, %256 : memref<8xf32>, vector<5xi1>, vector<5xf32> into vector<5xf32>
      %259 = arith.xori %c1425_i16, %c1425_i16 : i16
      %260 = math.cttz %14 : tensor<7x8xi16>
      %261 = arith.shrui %c1373574094_i32, %c1147522420_i32 : i32
      %262 = math.fma %98, %98, %98 : tensor<7x7x3xf16>
      %263 = math.fpowi %cst_1, %extracted_39 : f16, i32
      %264 = bufferization.clone %alloc : memref<8xi64> to memref<8xi64>
      %265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%2 : tensor<7x7x3xi64>) {
      ^bb0(%out_55: i64):
        %282 = arith.remsi %c1177827053_i64, %c1177827053_i64 : i64
        %283 = math.cos %cst_5 : f16
        %284 = math.rsqrt %8 : tensor<8x8xf32>
        %285 = arith.muli %out_55, %c1177827053_i64 : i64
        %286 = index.ceildivu %c10, %rank_32
        %287 = index.maxs %c15, %143
        %288 = math.fpowi %extracted, %c1373574094_i32 : f16, i32
        %289 = arith.cmpf true, %cst_2, %cst_6 : f16
        %290 = arith.negf %out : f32
        %291 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %125, %125, %c220153356_i64 : vector<8xi64>, vector<8xi64> into i64
        %false_56 = index.bool.constant false
        %292 = arith.shli %out_55, %c789415997_i64 : i64
        %293 = arith.ori %c220153356_i64, %c220153356_i64 : i64
        %294 = math.cttz %74 : tensor<8xi64>
        %295 = vector.insert %cst_4, %258 [3] : f32 into vector<5xf32>
        %296 = vector.shuffle %256, %126 [1, 8, 9, 10, 11, 12] : vector<5xf32>, vector<8xf32>
        %297 = index.castu %c1373574094_i32 : i32 to index
        %298 = arith.maxsi %c1147522420_i32, %c1147522420_i32 : i32
        %299 = arith.addf %cst_0, %cst : f32
        %300 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 + d1 ceildiv 128, -d3)>(%c4, %c7, %c12, %34)
        %301 = affine.max affine_map<(d0, d1) -> (d0 * 2, d1 - 64, d0 * 2 - 4, ((d0 + 2) ceildiv 2) mod 8)>(%c8, %rank_32)
        %302 = math.cos %out : f32
        bufferization.dealloc_tensor %21 : tensor<i16>
        %303 = math.log10 %98 : tensor<7x7x3xf16>
        %304 = affine.apply affine_map<(d0, d1, d2, d3) -> (((d2 - (d3 - 4)) floordiv 4) ceildiv 16)>(%rank, %297, %46, %46)
        %305 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, (d2 * 4) mod 8, d3 - d1)>(%99, %286, %143, %36)
        %306 = index.maxu %c9, %300
        %307 = arith.maxf %cst_5, %cst_5 : f16
        %308 = math.atan2 %cst_5, %extracted : f16
        %309 = math.copysign %8, %8 : tensor<8x8xf32>
        %inserted_57 = tensor.insert %cst_0 into %15[%c5] : tensor<8xf32>
        %310 = vector.matrix_multiply %126, %126 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
        linalg.yield %c789415997_i64 : i64
      } -> tensor<7x7x3xi64>
      %266 = arith.negf %cst_1 : f16
      %false_50 = arith.constant false
      %267 = index.maxs %c10, %c5
      %268 = index.maxs %c13, %rank
      %269 = arith.ceildivsi %c1147522420_i32, %c1373574094_i32 : i32
      %270 = math.fma %23, %23, %23 : tensor<8x8xf16>
      memref.assume_alignment %alloc_7, 1 : memref<7x8xi32>
      %271 = tensor.empty() : tensor<8xi16>
      %mapped_51 = linalg.map ins(%16 : tensor<8xi16>) outs(%271 : tensor<8xi16>)
        (%in: i16) {
          %282 = vector.flat_transpose %256 {columns = 5 : i32, rows = 1 : i32} : vector<5xf32> -> vector<5xf32>
          %283 = math.fma %0, %0, %0 : tensor<7x7x3xf32>
          %284 = math.ipowi %16, %271 : tensor<8xi16>
          %285 = arith.cmpi eq, %c1177827053_i64, %c220153356_i64 : i64
          %286 = index.mul %c14, %34
          %287 = index.maxs %123, %c4
          %288 = index.casts %c1425_i16 : i16 to index
          %alloc_55 = memref.alloc() : memref<i16>
          memref.tensor_store %21, %alloc_55 : memref<i16>
          %289 = arith.subi %true, %false : i1
          vector.print %25 : vector<7x7x3xi32>
          %290 = index.divu %c7, %49
          %291 = arith.divsi %true, %true_3 : i1
          %292 = math.sqrt %out : f32
          %293 = vector.broadcast %c789415997_i64 : i64 to vector<8x8xi64>
          %294 = vector.outerproduct %125, %61, %293 {kind = #vector.kind<minsi>} : vector<8xi64>, vector<8xi64>
          %295 = index.sub %117, %143
          memref.assume_alignment %alloc_17, 16 : memref<8xf32>
          %296 = arith.xori %extracted_39, %c1373574094_i32 : i32
          %297 = math.rsqrt %8 : tensor<8x8xf32>
          %298 = math.ipowi %4, %4 : tensor<7x7x3xi32>
          %299 = arith.maxui %c1373574094_i32, %c1147522420_i32 : i32
          %rank_56 = tensor.rank %28 : tensor<8xi32>
          %300 = index.ceildivu %c1, %c9
          %alloc_57 = memref.alloc() : memref<8xi1>
          memref.tensor_store %10, %alloc_57 : memref<8xi1>
          %301 = arith.remf %cst_2, %cst_2 : f16
          %302 = arith.divui %c1373574094_i32, %c1373574094_i32 : i32
          %303 = index.floordivs %143, %c3
          %304 = index.divs %287, %286
          %305 = math.absi %13 : tensor<8x8xi16>
          memref.assume_alignment %alloc_8, 2 : memref<8xf32>
          %306 = bufferization.to_tensor %alloc_11 : memref<7x7x3xf16>
          %307 = math.round %23 : tensor<8x8xf16>
          %308 = math.exp2 %93 : tensor<8xf32>
          %c0_i16 = arith.constant 0 : i16
          linalg.yield %c0_i16 : i16
        }
      %272 = arith.minsi %c1177827053_i64, %c1177827053_i64 : i64
      %273 = math.log10 %cst_1 : f16
      %generated_52 = tensor.generate %c1 {
      ^bb0(%arg3: index, %arg4: index):
        %282 = math.absi %14 : tensor<7x8xi16>
        %283 = arith.subi %c789415997_i64, %c789415997_i64 : i64
        memref.store %extracted, %130[%c6, %c0, %c0] : memref<7x7x3xf16>
        %rank_55 = tensor.rank %9 : tensor<8x8xi64>
        tensor.yield %false : i1
      } : tensor<?x8xi1>
      %expanded_53 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<8x8xi32> into tensor<8x8x1xi32>
      %274 = index.sizeof
      %generated_54 = tensor.generate %146, %123 {
      ^bb0(%arg3: index, %arg4: index):
        %282 = math.ipowi %4, %4 : tensor<7x7x3xi32>
        %283 = arith.divsi %c220153356_i64, %c789415997_i64 : i64
        %284 = memref.realloc %alloc_13 : memref<8xf32> to memref<3xf32>
        %285 = math.exp2 %cst_5 : f16
        tensor.yield %cst : f32
      } : tensor<?x?xf32>
      %275 = index.mul %99, %49
      %276 = arith.ceildivsi %false, %true : i1
      %277 = affine.for %arg3 = 0 to 12 iter_args(%arg4 = %c11) -> (index) {
        affine.yield %c9 : index
      }
      %278 = math.fma %out, %cst_4, %cst_4 : f32
      %279 = vector.broadcast %cst_5 : f16 to vector<8x8xf16>
      %280 = arith.ceildivsi %c789415997_i64, %c1177827053_i64 : i64
      %281 = arith.maxsi %c1147522420_i32, %c1147522420_i32 : i32
      linalg.yield %cst_0 : f32
    } -> tensor<7x7x3xf32>
    %148 = index.maxu %c9, %c1
    %149 = affine.max affine_map<(d0, d1, d2) -> (d2 floordiv 2, d1 + d0 - d2 + d0 + 8 + d2)>(%c3, %rank, %49)
    %150 = math.exp %cst : f32
    %151 = arith.cmpf false, %cst_4, %cst_4 : f32
    %152 = scf.while (%arg3 = %alloc_20) : (memref<8x8xi32>) -> memref<8x8xi32> {
      %254 = index.sub %143, %36
      %255 = math.exp2 %cst_5 : f16
      %256 = vector.load %alloc_14[%c2, %c4, %c1] : memref<7x7x3xi16>, vector<7x7x3xi16>
      %257 = math.ctlz %11 : tensor<7x7x3xi16>
      %258 = arith.maxf %extracted, %extracted : f16
      %259 = index.sizeof
      %inserted_49 = tensor.insert %c789415997_i64 into %9[%c3, %c3] : tensor<8x8xi64>
      %rank_50 = tensor.rank %9 : tensor<8x8xi64>
      scf.condition(%true_3) %alloc_20 : memref<8x8xi32>
    } do {
    ^bb0(%arg3: memref<8x8xi32>):
      %254 = vector.broadcast %true_3 : i1 to vector<8x8xi1>
      %255 = index.sizeof
      %256 = vector.matrix_multiply %57, %58 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      %257 = arith.ceildivsi %c1147522420_i32, %extracted_39 : i32
      %alloc_49 = memref.alloc() : memref<8x8xi1>
      %258 = vector.broadcast %true_3 : i1 to vector<7x7x3xi1>
      %259 = vector.gather %alloc_49[%c3, %c15] [%25], %258, %258 : memref<8x8xi1>, vector<7x7x3xi32>, vector<7x7x3xi1>, vector<7x7x3xi1> into vector<7x7x3xi1>
      %260 = index.sub %c14, %46
      memref.assume_alignment %43, 2 : memref<8x8xi32>
      %261 = vector.broadcast %c11 : index to vector<7xindex>
      %262 = vector.broadcast %true_3 : i1 to vector<7xi1>
      %263 = vector.broadcast %c1147522420_i32 : i32 to vector<7xi32>
      vector.scatter %alloc_22[%c5] [%261], %262, %263 : memref<8xi32>, vector<7xindex>, vector<7xi1>, vector<7xi32>
      %264 = arith.remsi %extracted_39, %c1373574094_i32 : i32
      %265 = index.sizeof
      %266 = math.log %7 : tensor<7x8xf16>
      %267 = vector.broadcast %146 : index to vector<3xindex>
      %268 = vector.broadcast %false : i1 to vector<3xi1>
      %269 = vector.broadcast %c220153356_i64 : i64 to vector<3xi64>
      vector.scatter %alloc_10[%c1, %c3, %c2] [%267], %268, %269 : memref<7x7x3xi64>, vector<3xindex>, vector<3xi1>, vector<3xi64>
      memref.alloca_scope  {
        %273 = arith.remf %extracted, %cst_1 : f16
        %274 = index.sub %86, %c5
        %275 = arith.divf %cst, %cst_4 : f32
        %276 = arith.remsi %extracted_39, %c1147522420_i32 : i32
        %rank_50 = tensor.rank %12 : tensor<8x8xi32>
        %rank_51 = tensor.rank %14 : tensor<7x8xi16>
        %rank_52 = tensor.rank %21 : tensor<i16>
        %277 = math.sqrt %cst_2 : f16
        %278 = arith.addi %true_3, %true_3 : i1
        %279 = index.divs %rank_51, %255
        %280 = affine.min affine_map<(d0, d1, d2) -> (0, d2 ceildiv 32 + 2)>(%68, %c7, %c11)
        %281 = affine.max affine_map<(d0) -> (d0 * 2)>(%rank_33)
        %282 = math.fma %cst_6, %cst_2, %extracted : f16
        %283 = arith.xori %c1425_i16, %c1425_i16 : i16
        %284 = affine.min affine_map<(d0) -> (-d0, -d0 + 2)>(%149)
        %285 = vector.matrix_multiply %96, %125 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 8 : i32} : (vector<1xi64>, vector<8xi64>) -> vector<8xi64>
        %286 = math.tan %cst_4 : f32
        %287 = arith.divf %cst_2, %cst_1 : f16
        %288 = arith.remf %cst_2, %cst_5 : f16
        %289 = index.divs %149, %149
        %290 = index.divs %49, %c13
        %291 = math.ipowi %10, %10 : tensor<8xi1>
        %292 = math.ipowi %10, %10 : tensor<8xi1>
        %293 = math.log %8 : tensor<8x8xf32>
        %294 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %126, %127, %cst_4 : vector<8xf32>, vector<8xf32> into f32
        %295 = bufferization.clone %alloc_18 : memref<8xi32> to memref<8xi32>
        %296 = tensor.empty() : tensor<8x8xi1>
        %297 = math.copysign %15, %93 : tensor<8xf32>
        %298 = arith.divui %c1147522420_i32, %c1147522420_i32 : i32
        %299 = math.fma %8, %8, %8 : tensor<8x8xf32>
        %300 = arith.ori %c1373574094_i32, %c1373574094_i32 : i32
        %301 = vector.broadcast %true : i1 to vector<7x7xi1>
        %dest_53, %accumulated_value_54 = vector.scan <maxui>, %258, %301 {inclusive = true, reduction_dim = 2 : i64} : vector<7x7x3xi1>, vector<7x7xi1>
      }
      %270 = arith.cmpf ogt, %extracted, %extracted : f16
      %271 = bufferization.to_tensor %alloc_12 : memref<7x8xf16>
      %272 = index.sub %134, %c9
      scf.yield %43 : memref<8x8xi32>
    }
    memref.assume_alignment %alloc_8, 2 : memref<8xf32>
    %153 = vector.matrix_multiply %57, %125 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 8 : i32} : (vector<1xi64>, vector<8xi64>) -> vector<8xi64>
    %154 = math.ceil %extracted : f16
    %155 = math.tan %23 : tensor<8x8xf16>
    %156 = math.sqrt %0 : tensor<7x7x3xf32>
    %157 = arith.divsi %false, %true : i1
    %158 = index.sub %46, %c8
    %159 = affine.min affine_map<(d0) -> (d0 ceildiv 4)>(%44)
    %160 = arith.ori %c1425_i16, %c1425_i16 : i16
    %161 = math.tan %8 : tensor<8x8xf32>
    %162 = arith.maxsi %extracted_39, %c1147522420_i32 : i32
    %163 = bufferization.to_memref %1 : memref<7x8xi16>
    %from_elements = tensor.from_elements %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16 : tensor<7x7x3xi16>
    memref.store %c1425_i16, %alloc_14[%c5, %c1, %c2] : memref<7x7x3xi16>
    %164 = vector.insertelement %c789415997_i64, %125[%c15 : index] : vector<8xi64>
    %165 = vector.broadcast %c789415997_i64 : i64 to vector<8x8xi64>
    %166 = vector.outerproduct %61, %61, %165 {kind = #vector.kind<xor>} : vector<8xi64>, vector<8xi64>
    %167 = vector.splat %c3 : vector<7x8xindex>
    %168 = vector.broadcast %c1425_i16 : i16 to vector<i16>
    %169 = vector.transfer_write %168, %13[%c12, %c1] : vector<i16>, tensor<8x8xi16>
    %extracted_40 = tensor.extract %cast[%c0, %c0, %c0] : tensor<?x?x?xi32>
    %170 = math.ctlz %11 : tensor<7x7x3xi16>
    %171 = math.rsqrt %23 : tensor<8x8xf16>
    %172 = arith.minui %c1425_i16, %c1425_i16 : i16
    %173 = index.sub %c10, %rank_33
    %174 = math.absi %124 : tensor<8x8xi16>
    %175 = tensor.empty(%rank_32) : tensor<?x8xi1>
    %176 = math.sqrt %cst_0 : f32
    %177 = math.round %93 : tensor<8xf32>
    %178 = math.absi %c789415997_i64 : i64
    %179 = math.cttz %14 : tensor<7x8xi16>
    %180 = math.ipowi %3, %3 : tensor<8xi64>
    %181 = index.castu %false : i1 to index
    %182 = math.rsqrt %cst_2 : f16
    %alloc_41 = memref.alloc() : memref<7x8xi64>
    memref.copy %alloc_15, %alloc_41 : memref<7x8xi64> to memref<7x8xi64>
    %183 = arith.muli %c1373574094_i32, %c1147522420_i32 : i32
    %184 = arith.mulf %extracted, %cst_1 : f16
    %185 = arith.minf %cst_1, %cst_1 : f16
    %186 = index.divs %c12, %c6
    %187 = math.ipowi %c1373574094_i32, %extracted_39 : i32
    %188 = arith.remf %cst_6, %cst_2 : f16
    %189 = scf.execute_region -> memref<8x8xf32> {
      %254 = math.powf %23, %23 : tensor<8x8xf16>
      %255 = arith.andi %extracted_39, %extracted_40 : i32
      %256 = arith.xori %c1147522420_i32, %c1373574094_i32 : i32
      %257 = vector.insert %cst_4, %127 [3] : f32 into vector<8xf32>
      %258 = arith.maxsi %c1177827053_i64, %c789415997_i64 : i64
      %259 = arith.remf %cst_5, %cst_5 : f16
      affine.store %c1147522420_i32, %alloc_18[%c4] : memref<8xi32>
      %260 = arith.floordivsi %c1373574094_i32, %extracted_39 : i32
      memref.assume_alignment %163, 1 : memref<7x8xi16>
      %261 = index.casts %extracted_39 : i32 to index
      %262 = index.ceildivu %149, %c5
      %263 = vector.broadcast %c1177827053_i64 : i64 to vector<1x1xi64>
      %264 = vector.outerproduct %57, %58, %263 {kind = #vector.kind<xor>} : vector<1xi64>, vector<1xi64>
      %265 = arith.andi %false, %true_3 : i1
      affine.store %cst, %alloc_17[%c9] : memref<8xf32>
      %266 = vector.broadcast %c220153356_i64 : i64 to vector<7x8xi64>
      %267 = bufferization.to_memref %8 : memref<8x8xf32>
      scf.yield %267 : memref<8x8xf32>
    }
    %190 = vector.reduction <mul>, %153 : vector<8xi64> into i64
    %191 = arith.addf %cst_1, %extracted : f16
    %192 = vector.broadcast %cst : f32 to vector<8xf32>
    %193 = vector.fma %192, %127, %192 : vector<8xf32>
    %194 = math.ctlz %14 : tensor<7x8xi16>
    %rank_42 = tensor.rank %6 : tensor<8x8xi64>
    %195 = arith.floordivsi %true, %true : i1
    %196 = math.cttz %13 : tensor<8x8xi16>
    %alloc_43 = memref.alloc() : memref<7xi16>
    %197 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%11, %alloc_43 : tensor<7x7x3xi16>, memref<7xi16>) outs(%102 : tensor<7x7x3xi16>) {
    ^bb0(%in: i16, %in_49: i16, %out: i16):
      %254 = bufferization.clone %163 : memref<7x8xi16> to memref<7x8xi16>
      %cst_50 = arith.constant 2.059200e+04 : f16
      %255 = arith.divf %extracted, %cst_1 : f16
      %256 = vector.broadcast %cst : f32 to vector<7x7x3xf32>
      %257 = vector.fma %256, %256, %256 : vector<7x7x3xf32>
      %258 = bufferization.to_memref %22 : memref<i16>
      %259 = arith.remui %c1147522420_i32, %extracted_39 : i32
      %260 = math.cos %0 : tensor<7x7x3xf32>
      %261 = vector.matrix_multiply %96, %153 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 8 : i32} : (vector<1xi64>, vector<8xi64>) -> vector<8xi64>
      %262 = arith.andi %c1177827053_i64, %c1177827053_i64 : i64
      bufferization.dealloc_tensor %124 : tensor<8x8xi16>
      %263 = arith.remsi %true_3, %true : i1
      %264 = math.absf %0 : tensor<7x7x3xf32>
      %265 = affine.min affine_map<(d0, d1, d2, d3) -> (d2, 0, (-d1) floordiv 16, d3 + d0)>(%143, %c3, %148, %c13)
      %266 = arith.divsi %c1147522420_i32, %extracted_39 : i32
      %alloca = memref.alloca() : memref<8x8xi1>
      %267 = index.add %159, %159
      %268 = math.fma %8, %8, %8 : tensor<8x8xf32>
      %269 = vector.broadcast %c789415997_i64 : i64 to vector<1x1xi64>
      %270 = vector.outerproduct %96, %57, %269 {kind = #vector.kind<xor>} : vector<1xi64>, vector<1xi64>
      %271 = math.ceil %cst_2 : f16
      %collapsed = tensor.collapse_shape %13 [[0, 1]] : tensor<8x8xi16> into tensor<64xi16>
      %272 = bufferization.clone %254 : memref<7x8xi16> to memref<7x8xi16>
      %273 = vector.matrix_multiply %57, %57 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi64>, vector<1xi64>) -> vector<1xi64>
      %274 = arith.negf %cst_5 : f16
      %275 = vector.broadcast %cst : f32 to vector<7x8xf32>
      %276 = vector.fma %275, %275, %275 : vector<7x8xf32>
      %277 = arith.ori %c789415997_i64, %c789415997_i64 : i64
      %278 = math.round %93 : tensor<8xf32>
      %279 = math.log10 %8 : tensor<8x8xf32>
      %280 = index.sub %c4, %c1
      bufferization.dealloc_tensor %124 : tensor<8x8xi16>
      %281 = arith.muli %true_3, %false : i1
      %282 = math.ctlz %9 : tensor<8x8xi64>
      %283 = math.log %extracted : f16
      linalg.yield %in_49 : i16
    } -> tensor<7x7x3xi16>
    %198 = math.sqrt %7 : tensor<7x8xf16>
    %199 = math.round %cst_2 : f16
    %200 = vector.broadcast %cst_4 : f32 to vector<8x8xf32>
    %201 = vector.fma %200, %200, %200 : vector<8x8xf32>
    %202 = index.ceildivs %86, %148
    %203 = math.expm1 %7 : tensor<7x8xf16>
    %204 = arith.andi %extracted_40, %c1373574094_i32 : i32
    %205 = math.atan2 %cst_5, %extracted : f16
    %206 = math.cttz %c1177827053_i64 : i64
    %207 = math.rsqrt %7 : tensor<7x8xf16>
    %208 = vector.shuffle %126, %192 [0, 5, 11, 13] : vector<8xf32>, vector<8xf32>
    memref.assume_alignment %alloc_22, 1 : memref<8xi32>
    %209 = scf.while (%arg3 = %extracted_40) : (i32) -> i32 {
      %254 = math.ceil %15 : tensor<8xf32>
      %255 = arith.addf %cst_6, %cst_5 : f16
      scf.index_switch %rank_32 
      case 1 {
        %261 = vector.reduction <xor>, %58 : vector<1xi64> into i64
        %262 = math.absi %74 : tensor<8xi64>
        %263 = vector.reduction <mul>, %126 : vector<8xf32> into f32
        memref.copy %37, %alloc_14 : memref<7x7x3xi16> to memref<7x7x3xi16>
        %264 = arith.cmpf ogt, %cst_5, %extracted : f16
        %265 = vector.broadcast %c14 : index to vector<8xindex>
        %266 = vector.broadcast %true : i1 to vector<8xi1>
        %267 = vector.broadcast %c1425_i16 : i16 to vector<8xi16>
        vector.scatter %alloc_21[%c4, %c4] [%265], %266, %267 : memref<7x8xi16>, vector<8xindex>, vector<8xi1>, vector<8xi16>
        %268 = arith.ori %true_3, %true_3 : i1
        %269 = index.divs %159, %134
        %270 = vector.broadcast %cst_1 : f16 to vector<7x7x3xf16>
        %271 = index.sizeof
        %272 = arith.remui %true_3, %true : i1
        %273 = math.log10 %98 : tensor<7x7x3xf16>
        %274 = math.ctlz %5 : tensor<8xi16>
        %275 = index.ceildivs %c9, %rank
        %276 = arith.ori %c1425_i16, %c1425_i16 : i16
        %cst_49 = arith.constant 5.683200e+04 : f16
        scf.yield
      }
      default {
        %261 = math.round %7 : tensor<7x8xf16>
        %262 = index.sizeof
        memref.assume_alignment %alloc_16, 1 : memref<7x8xi1>
        %263 = index.sizeof
        bufferization.dealloc_tensor %0 : tensor<7x7x3xf32>
        %264 = math.absi %2 : tensor<7x7x3xi64>
        %265 = math.atan2 %15, %15 : tensor<8xf32>
        %266 = arith.addf %cst, %cst_4 : f32
        %267 = index.ceildivu %117, %143
        %268 = arith.mulf %cst_2, %cst_6 : f16
        %269 = affine.min affine_map<(d0, d1) -> ((d1 floordiv 4 - d0) * 16, d1 floordiv 4 - d0)>(%267, %c5)
        %270 = math.rsqrt %98 : tensor<7x7x3xf16>
        %271 = arith.maxsi %true, %true : i1
        %272 = arith.divui %c1425_i16, %c1425_i16 : i16
        %273 = vector.shuffle %153, %96 [1, 2, 5, 7] : vector<8xi64>, vector<1xi64>
        %274 = vector.splat %cst_6 : vector<8x8xf16>
      }
      %256 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<minf>} %192, %200, %126 : vector<8xf32>, vector<8x8xf32> into vector<8xf32>
      %257 = math.tanh %98 : tensor<7x7x3xf16>
      %258 = vector.shuffle %192, %192 [2, 3, 4, 5, 7, 8, 10, 11, 13] : vector<8xf32>, vector<8xf32>
      %259 = math.cttz %c1425_i16 : i16
      %260 = arith.divui %c1147522420_i32, %arg3 : i32
      scf.condition(%true) %extracted_39 : i32
    } do {
    ^bb0(%arg3: i32):
      %254 = math.absf %15 : tensor<8xf32>
      vector.print %57 : vector<1xi64>
      %255 = math.ceil %0 : tensor<7x7x3xf32>
      %256 = bufferization.to_tensor %alloc_19 : memref<8x8xf16>
      %257 = index.casts %99 : index to i32
      %258 = math.round %cst_6 : f16
      %259 = math.ctlz %17 : tensor<8xi16>
      %260 = index.floordivs %c5, %148
      %collapsed = tensor.collapse_shape %from_elements [[0, 1], [2]] : tensor<7x7x3xi16> into tensor<49x3xi16>
      %261 = math.fpowi %8, %12 : tensor<8x8xf32>, tensor<8x8xi32>
      %262 = vector.broadcast %c220153356_i64 : i64 to vector<8x8xi64>
      %263 = vector.outerproduct %61, %19, %262 {kind = #vector.kind<minsi>} : vector<8xi64>, vector<8xi64>
      %264 = arith.divf %extracted, %cst_1 : f16
      %265 = arith.divui %true_3, %true : i1
      %266 = affine.for %arg4 = 0 to 42 iter_args(%arg5 = %14) -> (tensor<7x8xi16>) {
        affine.yield %14 : tensor<7x8xi16>
      }
      affine.store %cst_1, %130[%c2, %c11, %c12] : memref<7x7x3xf16>
      %inserted_49 = tensor.insert %c1425_i16 into %21[] : tensor<i16>
      scf.yield %extracted_39 : i32
    }
    %210 = math.round %8 : tensor<8x8xf32>
    scf.index_switch %49 
    case 1 {
      %254 = memref.realloc %alloc_17 : memref<8xf32> to memref<8xf32>
      %255 = arith.subi %extracted_40, %extracted_40 : i32
      %256 = math.copysign %splat, %splat : tensor<8xf16>
      %alloc_49 = memref.alloc() : memref<8xi64>
      memref.copy %alloc, %alloc_49 : memref<8xi64> to memref<8xi64>
      %257 = arith.divsi %c220153356_i64, %c789415997_i64 : i64
      %258 = math.copysign %cst_5, %cst_2 : f16
      %cst_50 = arith.constant 1.000000e+00 : f32
      %259 = vector.transfer_read %alloc_8[%c8], %cst_50 : memref<8xf32>, vector<f32>
      %260 = vector.broadcast %111 : index to vector<7xindex>
      %261 = vector.broadcast %true_3 : i1 to vector<7xi1>
      %262 = vector.broadcast %c220153356_i64 : i64 to vector<7xi64>
      vector.scatter %alloc_10[%c5, %c2, %c1] [%260], %261, %262 : memref<7x7x3xi64>, vector<7xindex>, vector<7xi1>, vector<7xi64>
      memref.assume_alignment %alloc_15, 8 : memref<7x8xi64>
      %263 = index.ceildivu %c1, %173
      %264 = tensor.empty(%rank_32) : tensor<?x7x3xf32>
      %265 = index.ceildivs %rank_33, %36
      %266 = affine.load %alloc_17[%c1] : memref<8xf32>
      memref.copy %62, %alloc_21 : memref<7x8xi16> to memref<7x8xi16>
      %alloc_51 = memref.alloc() : memref<7x7x3xi64>
      memref.copy %alloc_10, %alloc_51 : memref<7x7x3xi64> to memref<7x7x3xi64>
      %267 = scf.index_switch %c1 -> index 
      case 1 {
        %268 = math.sqrt %cst_1 : f16
        %269 = math.floor %8 : tensor<8x8xf32>
        %270 = math.log10 %7 : tensor<7x8xf16>
        %271 = bufferization.to_tensor %alloc_7 : memref<7x8xi32>
        %272 = arith.remf %cst_1, %cst_6 : f16
        %273 = arith.divsi %c789415997_i64, %c220153356_i64 : i64
        %274 = vector.broadcast %c220153356_i64 : i64 to vector<1x1xi64>
        %275 = vector.outerproduct %96, %96, %274 {kind = #vector.kind<and>} : vector<1xi64>, vector<1xi64>
        %276 = arith.divf %cst_2, %cst_5 : f16
        %277 = memref.atomic_rmw maxf %cst_2, %130[%c6, %c4, %c0] : (f16, memref<7x7x3xf16>) -> f16
        %alloc_52 = memref.alloc() : memref<7x8xf16>
        memref.copy %alloc_12, %alloc_52 : memref<7x8xf16> to memref<7x8xf16>
        %278 = math.absi %extracted_40 : i32
        %alloc_53 = memref.alloc() : memref<8xi64>
        memref.copy %alloc, %alloc_53 : memref<8xi64> to memref<8xi64>
        %279 = arith.cmpi ugt, %extracted_39, %extracted_40 : i32
        %280 = vector.insertelement %c789415997_i64, %96[%46 : index] : vector<1xi64>
        %281 = tensor.empty() : tensor<7x8xf16>
        %282 = linalg.matmul ins(%7, %23 : tensor<7x8xf16>, tensor<8x8xf16>) outs(%281 : tensor<7x8xf16>) -> tensor<7x8xf16>
        %283 = index.sub %181, %c2
        scf.yield %173 : index
      }
      case 2 {
        %268 = bufferization.clone %alloc_15 : memref<7x8xi64> to memref<7x8xi64>
        %true_52 = index.bool.constant true
        %expanded_53 = tensor.expand_shape %5 [[0, 1]] : tensor<8xi16> into tensor<8x1xi16>
        %269 = arith.divui %true_3, %true : i1
        %270 = vector.insertelement %c220153356_i64, %125[%159 : index] : vector<8xi64>
        %271 = arith.remui %true_3, %true : i1
        %272 = math.ceil %cst_1 : f16
        %273 = math.cttz %from_elements : tensor<7x7x3xi16>
        %274 = arith.divui %false, %true : i1
        vector.print %153 : vector<8xi64>
        %275 = vector.broadcast %c789415997_i64 : i64 to vector<8x8xi64>
        %276 = vector.outerproduct %153, %19, %275 {kind = #vector.kind<mul>} : vector<8xi64>, vector<8xi64>
        %277 = affine.load %alloc_11[%c7, %c3, %c12] : memref<7x7x3xf16>
        %278 = math.cos %cst_0 : f32
        %279 = index.casts %148 : index to i32
        %280 = index.ceildivs %263, %rank_32
        %281 = math.log %cst_50 : f32
        scf.yield %158 : index
      }
      case 3 {
        %expanded_52 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<8x8xi32> into tensor<8x8x1xi32>
        %268 = vector.reduction <minf>, %193 : vector<8xf32> into f32
        %269 = index.casts %true_3 : i1 to index
        %270 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<and>} %58, %58, %c220153356_i64 : vector<1xi64>, vector<1xi64> into i64
        %271 = math.cos %7 : tensor<7x8xf16>
        %272 = index.casts %true_3 : i1 to index
        %273 = arith.cmpi sge, %false, %true_3 : i1
        %274 = vector.broadcast %c789415997_i64 : i64 to vector<1x1xi64>
        %275 = vector.outerproduct %57, %96, %274 {kind = #vector.kind<minui>} : vector<1xi64>, vector<1xi64>
        %276 = vector.broadcast %cst_2 : f16 to vector<3xf16>
        %277 = vector.broadcast %true_3 : i1 to vector<3xi1>
        %278 = vector.maskedload %alloc_11[%c2, %c4, %c2], %277, %276 : memref<7x7x3xf16>, vector<3xi1>, vector<3xf16> into vector<3xf16>
        %279 = affine.min affine_map<(d0, d1, d2, d3) -> (d1 * 128, d3)>(%123, %159, %c8, %c10)
        %280 = math.absi %12 : tensor<8x8xi32>
        %281 = arith.maxsi %c789415997_i64, %c789415997_i64 : i64
        %282 = math.floor %cst_1 : f16
        %283 = index.sub %123, %c13
        %284 = index.casts %c789415997_i64 : i64 to index
        %285 = math.powf %cst_2, %cst_6 : f16
        scf.yield %111 : index
      }
      case 4 {
        %268 = vector.broadcast %c1177827053_i64 : i64 to vector<i64>
        %269 = vector.transfer_write %268, %74[%173] : vector<i64>, tensor<8xi64>
        %270 = arith.ceildivsi %true, %false : i1
        %271 = math.absf %0 : tensor<7x7x3xf32>
        %272 = math.tanh %98 : tensor<7x7x3xf16>
        %273 = math.atan2 %0, %0 : tensor<7x7x3xf32>
        %274 = arith.divf %cst_1, %cst_2 : f16
        %inserted_52 = tensor.insert %c1425_i16 into %1[%c0, %c0] : tensor<7x8xi16>
        %275 = index.floordivs %c15, %c15
        %276 = math.ipowi %true_3, %false : i1
        %277 = math.sqrt %15 : tensor<8xf32>
        bufferization.dealloc_tensor %14 : tensor<7x8xi16>
        %278 = index.maxs %275, %148
        %279 = vector.matrix_multiply %125, %96 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<1xi64>) -> vector<8xi64>
        %280 = math.powf %266, %cst_4 : f32
        %281 = index.sizeof
        %282 = tensor.empty() : tensor<8xf32>
        scf.yield %146 : index
      }
      default {
        %268 = memref.realloc %alloc_17 : memref<8xf32> to memref<3xf32>
        %rank_52 = tensor.rank %20 : tensor<8xi16>
        %269 = math.fpowi %266, %extracted_39 : f32, i32
        %270 = arith.muli %c789415997_i64, %c789415997_i64 : i64
        %271 = math.cttz %c789415997_i64 : i64
        %272 = math.tanh %8 : tensor<8x8xf32>
        %273 = index.maxs %c6, %86
        %274 = vector.reduction <mul>, %192 : vector<8xf32> into f32
        %275 = arith.muli %extracted_39, %c1373574094_i32 : i32
        %276 = affine.max affine_map<(d0) -> (-d0, -d0 - (d0 mod 128) ceildiv 16)>(%rank_32)
        %277 = index.maxs %159, %c2
        %278 = math.tanh %93 : tensor<8xf32>
        %inserted_53 = tensor.insert %c1177827053_i64 into %2[%c3, %c6, %c0] : tensor<7x7x3xi64>
        %279 = vector.broadcast %extracted_40 : i32 to vector<7x3xi32>
        %dest_54, %accumulated_value_55 = vector.scan <or>, %25, %279 {inclusive = false, reduction_dim = 1 : i64} : vector<7x7x3xi32>, vector<7x3xi32>
        %280 = math.log %cst_2 : f16
        %281 = math.tan %93 : tensor<8xf32>
        scf.yield %148 : index
      }
      scf.yield
    }
    case 2 {
      %254 = math.log10 %7 : tensor<7x8xf16>
      %255 = memref.atomic_rmw addi %c1177827053_i64, %alloc_15[%c3, %c4] : (i64, memref<7x8xi64>) -> i64
      %256 = arith.divsi %c1177827053_i64, %c789415997_i64 : i64
      %257 = arith.remf %extracted, %cst_2 : f16
      %258 = math.absi %6 : tensor<8x8xi64>
      %259 = math.rsqrt %8 : tensor<8x8xf32>
      %260 = arith.shrui %c1147522420_i32, %c1373574094_i32 : i32
      %261 = index.sizeof
      %262 = index.sizeof
      %263 = math.tan %splat : tensor<8xf16>
      %264 = index.sizeof
      %265 = index.ceildivu %c6, %49
      %generated_49 = tensor.generate %c1, %rank_32, %158 {
      ^bb0(%arg3: index, %arg4: index, %arg5: index):
        %269 = math.atan2 %93, %93 : tensor<8xf32>
        %270 = vector.broadcast %cst : f32 to vector<7x7x3xf32>
        %271 = vector.fma %270, %270, %270 : vector<7x7x3xf32>
        %272 = math.atan2 %cst_6, %cst_2 : f16
        %273 = arith.mulf %cst_1, %cst_2 : f16
        tensor.yield %c1425_i16 : i16
      } : tensor<?x?x?xi16>
      %266 = vector.flat_transpose %192 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
      %267 = math.exp2 %8 : tensor<8x8xf32>
      %268 = arith.divf %cst_5, %cst_2 : f16
      scf.yield
    }
    default {
      memref.assume_alignment %alloc_12, 1 : memref<7x8xf16>
      %254 = arith.maxui %c789415997_i64, %c1177827053_i64 : i64
      %255 = memref.atomic_rmw mins %extracted_40, %alloc_22[%c5] : (i32, memref<8xi32>) -> i32
      %true_49 = index.bool.constant true
      %256 = arith.xori %extracted_39, %c1147522420_i32 : i32
      %alloc_50 = memref.alloc() : memref<8xi1>
      memref.tensor_store %10, %alloc_50 : memref<8xi1>
      %257 = vector.extract_strided_slice %87 {offsets = [4], sizes = [1], strides = [1]} : vector<7x7x3xi32> to vector<1x7x3xi32>
      %258 = arith.remf %cst_2, %cst_6 : f16
      %alloca = memref.alloca() : memref<8xf16>
      %259 = arith.remsi %c1177827053_i64, %c220153356_i64 : i64
      %260 = math.tanh %cst_5 : f16
      %261 = affine.min affine_map<(d0, d1, d2, d3) -> (d3 floordiv 32, d1 + 16, d1 - d3, d3 floordiv 32)>(%c6, %148, %34, %c10)
      %262 = arith.ori %true_3, %true : i1
      %263 = index.floordivs %173, %181
      %264 = vector.insertelement %c220153356_i64, %19[%99 : index] : vector<8xi64>
      %265 = vector.flat_transpose %96 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
    }
    %211 = math.tan %cst_1 : f16
    %212 = arith.maxsi %extracted_39, %c1373574094_i32 : i32
    %213 = arith.mulf %cst_2, %cst_5 : f16
    %rank_44 = tensor.rank %1 : tensor<7x8xi16>
    %214 = affine.for %arg3 = 0 to 73 iter_args(%arg4 = %alloc_13) -> (memref<8xf32>) {
      affine.yield %alloc_8 : memref<8xf32>
    }
    %215 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %153, %61, %c789415997_i64 : vector<8xi64>, vector<8xi64> into i64
    memref.store %c1373574094_i32, %alloc_22[%c1] : memref<8xi32>
    %216 = index.ceildivs %36, %123
    %inserted_45 = tensor.insert %extracted_39 into %28[%c1] : tensor<8xi32>
    %217 = scf.index_switch %rank_33 -> i64 
    case 1 {
      %254 = vector.broadcast %c1147522420_i32 : i32 to vector<7x7xi32>
      %dest_49, %accumulated_value_50 = vector.scan <minui>, %25, %254 {inclusive = true, reduction_dim = 2 : i64} : vector<7x7x3xi32>, vector<7x7xi32>
      %inserted_51 = tensor.insert %cst_5 into %7[%c2, %c6] : tensor<7x8xf16>
      %255 = math.exp2 %8 : tensor<8x8xf32>
      %256 = arith.minui %true_3, %false : i1
      %257 = arith.cmpi eq, %extracted_39, %extracted_39 : i32
      %258 = memref.atomic_rmw mulf %cst_5, %alloc_19[%c7, %c6] : (f16, memref<8x8xf16>) -> f16
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} outs(%2 : tensor<7x7x3xi64>) {
      ^bb0(%out: i64):
        %268 = arith.negf %cst : f32
        %269 = affine.load %alloc_23[%c10] : memref<7xf16>
        %270 = index.divu %c1, %c9
        %271 = vector.splat %rank_42 : vector<7x8xindex>
        %272 = arith.cmpi eq, %c1147522420_i32, %extracted_39 : i32
        %cst_53 = arith.constant 4.153600e+04 : f16
        %273 = vector.broadcast %extracted_40 : i32 to vector<7x3x7x3xi32>
        %274 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<maxsi>} %87, %87, %273 : vector<7x7x3xi32>, vector<7x7x3xi32> into vector<7x3x7x3xi32>
        %275 = arith.xori %extracted_40, %extracted_40 : i32
        memref.assume_alignment %130, 4 : memref<7x7x3xf16>
        %276 = math.fma %269, %269, %269 : f16
        %277 = math.exp2 %cst_1 : f16
        %278 = vector.splat %cst_4 : vector<8x8xf32>
        %collapsed = tensor.collapse_shape %6 [[0, 1]] : tensor<8x8xi64> into tensor<64xi64>
        %279 = bufferization.clone %163 : memref<7x8xi16> to memref<7x8xi16>
        %280 = vector.matrix_multiply %153, %19 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<8xi64>) -> vector<1xi64>
        affine.store %cst_0, %alloc_17[%c5] : memref<8xf32>
        %281 = vector.insertelement %cst, %127[%rank_44 : index] : vector<8xf32>
        %282 = arith.cmpi sge, %c1147522420_i32, %c1373574094_i32 : i32
        %283 = math.ipowi %17, %16 : tensor<8xi16>
        %c190841350_i64 = arith.constant 190841350 : i64
        %284 = arith.minui %out, %c220153356_i64 : i64
        %inserted_54 = tensor.insert %cst_0 into %15[%c4] : tensor<8xf32>
        %285 = vector.reduction <minui>, %19 : vector<8xi64> into i64
        %286 = vector.broadcast %c1425_i16 : i16 to vector<7x8xi16>
        %287 = math.cos %269 : f16
        %288 = math.ceil %7 : tensor<7x8xf16>
        bufferization.dealloc_tensor %0 : tensor<7x7x3xf32>
        %289 = arith.remf %cst, %cst_4 : f32
        memref.copy %alloc_18, %alloc_22 : memref<8xi32> to memref<8xi32>
        %290 = affine.min affine_map<(d0, d1, d2) -> (d0 + d0 - d1 - d2 - 30)>(%c2, %c1, %c15)
        %291 = math.sqrt %splat : tensor<8xf16>
        %292 = arith.xori %c1147522420_i32, %extracted_40 : i32
        linalg.yield %c220153356_i64 : i64
      } -> tensor<7x7x3xi64>
      %alloc_52 = memref.alloc() : memref<8xi16>
      memref.tensor_store %17, %alloc_52 : memref<8xi16>
      %260 = math.log10 %8 : tensor<8x8xf32>
      %261 = math.copysign %cst_1, %extracted : f16
      %262 = math.roundeven %7 : tensor<7x8xf16>
      %263 = arith.ceildivsi %c1147522420_i32, %extracted_39 : i32
      %264 = arith.minsi %extracted_39, %extracted_40 : i32
      %265 = index.ceildivu %c3, %36
      %266 = arith.muli %c789415997_i64, %c220153356_i64 : i64
      %267 = arith.xori %false, %true_3 : i1
      scf.yield %c220153356_i64 : i64
    }
    case 2 {
      %254 = memref.realloc %alloc_22 : memref<8xi32> to memref<7xi32>
      %255 = math.rsqrt %7 : tensor<7x8xf16>
      %256 = index.ceildivs %159, %c6
      %257 = arith.ori %extracted_39, %c1147522420_i32 : i32
      %258 = arith.subi %true, %true_3 : i1
      %259 = math.sqrt %cst_1 : f16
      %260 = vector.multi_reduction <add>, %127, %192 [] : vector<8xf32> to vector<8xf32>
      %261 = math.cttz %5 : tensor<8xi16>
      %262 = index.sub %rank_32, %149
      %263 = affine.load %alloc_10[%c0, %c6, %c0] : memref<7x7x3xi64>
      affine.store %c1425_i16, %62[%c3, %c13] : memref<7x8xi16>
      memref.store %c1373574094_i32, %43[%c6, %c4] : memref<8x8xi32>
      %264 = arith.cmpi slt, %c1373574094_i32, %c1373574094_i32 : i32
      %265 = tensor.empty() : tensor<7xi16>
      %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_14, %37, %265 : memref<7x7x3xi16>, memref<7x7x3xi16>, tensor<7xi16>) outs(%102 : tensor<7x7x3xi16>) {
      ^bb0(%in: i16, %in_49: i16, %in_50: i16, %out: i16):
        %270 = arith.ori %c1373574094_i32, %c1373574094_i32 : i32
        %271 = affine.min affine_map<(d0, d1, d2) -> (d2 + d1 + 32, -d1, d1 ceildiv 64)>(%c0, %rank, %c9)
        %272 = vector.broadcast %extracted : f16 to vector<5xf16>
        %273 = vector.broadcast %true : i1 to vector<5xi1>
        %274 = vector.maskedload %alloc_23[%c2], %273, %272 : memref<7xf16>, vector<5xi1>, vector<5xf16> into vector<5xf16>
        %275 = vector.broadcast %cst : f32 to vector<8x8xf32>
        %276 = vector.fma %275, %275, %275 : vector<8x8xf32>
        %277 = vector.reduction <mul>, %272 : vector<5xf16> into f16
        %278 = math.powf %splat, %splat : tensor<8xf16>
        %279 = arith.remsi %extracted_40, %extracted_40 : i32
        %280 = index.maxs %158, %111
        %281 = math.cos %cst_2 : f16
        %282 = bufferization.to_tensor %62 : memref<7x8xi16>
        %283 = math.fpowi %98, %4 : tensor<7x7x3xf16>, tensor<7x7x3xi32>
        %284 = math.roundeven %7 : tensor<7x8xf16>
        %285 = index.sizeof
        %286 = arith.shrui %false, %false : i1
        %rank_51 = tensor.rank %74 : tensor<8xi64>
        %287 = vector.insertelement %c789415997_i64, %125[%202 : index] : vector<8xi64>
        %288 = math.sqrt %15 : tensor<8xf32>
        %289 = vector.broadcast %cst_1 : f16 to vector<f16>
        vector.transfer_write %289, %alloc_11[%c13, %99, %186] : vector<f16>, memref<7x7x3xf16>
        %290 = math.ctlz %from_elements : tensor<7x7x3xi16>
        %291 = arith.maxui %extracted_40, %extracted_40 : i32
        %292 = index.sub %c1, %c13
        %293 = bufferization.to_tensor %43 : memref<8x8xi32>
        %294 = arith.remsi %c1147522420_i32, %c1147522420_i32 : i32
        %false_52 = arith.constant false
        %295 = vector.transfer_read %10[%111], %false_52 : tensor<8xi1>, vector<i1>
        %296 = index.casts %181 : index to i32
        %297 = arith.shli %c1373574094_i32, %extracted_39 : i32
        %298 = vector.bitcast %200 : vector<8x8xf32> to vector<8x8xf32>
        %299 = vector.load %43[%c7, %c1] : memref<8x8xi32>, vector<8xi32>
        affine.store %cst_6, %alloc_19[%c9, %c13] : memref<8x8xf16>
        %300 = arith.cmpi ugt, %c220153356_i64, %c789415997_i64 : i64
        %c1680615220_i32 = arith.constant 1680615220 : i32
        %301 = vector.splat %271 : vector<8x8xindex>
        linalg.yield %out : i16
      } -> tensor<7x7x3xi16>
      %267 = vector.matrix_multiply %96, %153 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 8 : i32} : (vector<1xi64>, vector<8xi64>) -> vector<8xi64>
      %268 = tensor.empty() : tensor<8x8xi16>
      %269 = linalg.matmul ins(%124, %13 : tensor<8x8xi16>, tensor<8x8xi16>) outs(%268 : tensor<8x8xi16>) -> tensor<8x8xi16>
      scf.yield %c789415997_i64 : i64
    }
    case 3 {
      %254 = arith.remsi %extracted_39, %extracted_39 : i32
      %255 = math.ceil %cst_6 : f16
      %256 = vector.reduction <minf>, %127 : vector<8xf32> into f32
      %257 = bufferization.clone %alloc_7 : memref<7x8xi32> to memref<7x8xi32>
      %258 = arith.ceildivsi %c1177827053_i64, %c1177827053_i64 : i64
      %259 = math.round %cst_1 : f16
      %260 = vector.broadcast %c1147522420_i32 : i32 to vector<3xi32>
      %261 = vector.multi_reduction <maxui>, %25, %260 [0, 1] : vector<7x7x3xi32> to vector<3xi32>
      %262 = arith.ceildivsi %true, %false : i1
      %263 = arith.shrsi %true, %true_3 : i1
      %264 = vector.splat %c5 : vector<7x7x3xindex>
      %265 = index.floordivs %68, %c9
      %266 = arith.addi %c1425_i16, %c1425_i16 : i16
      scf.if %false {
        %270 = math.tanh %cst_6 : f16
        %271 = vector.shuffle %126, %192 [0, 3, 4, 6, 8, 9, 10, 13, 14, 15] : vector<8xf32>, vector<8xf32>
        %272 = math.cos %cst_0 : f32
        %c1_i16 = arith.constant 1 : i16
        %c0_i16 = arith.constant 0 : i16
        %273 = vector.transfer_read %124[%c3, %117], %c0_i16 : tensor<8x8xi16>, vector<i16>
        memref.copy %alloc_18, %alloc_22 : memref<8xi32> to memref<8xi32>
        %274 = index.mul %c3, %c11
        %275 = index.sizeof
        %276 = memref.realloc %alloc_23 : memref<7xf16> to memref<7xf16>
      }
      %267 = arith.ceildivsi %false, %false : i1
      %268 = arith.minui %extracted_39, %extracted_40 : i32
      %269 = index.floordivs %c11, %46
      scf.yield %c220153356_i64 : i64
    }
    case 4 {
      %254 = affine.max affine_map<(d0) -> (0, d0 * 2)>(%c1)
      %255 = arith.shrsi %c1177827053_i64, %c789415997_i64 : i64
      %inserted_49 = tensor.insert %c220153356_i64 into %9[%c2, %c4] : tensor<8x8xi64>
      %256 = vector.broadcast %c1425_i16 : i16 to vector<8xi16>
      %257 = vector.broadcast %false : i1 to vector<8xi1>
      %258 = vector.maskedload %62[%c6, %c4], %257, %256 : memref<7x8xi16>, vector<8xi1>, vector<8xi16> into vector<8xi16>
      %259 = vector.flat_transpose %192 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
      affine.for %arg3 = 0 to 22 {
      }
      %rank_50 = tensor.rank %generated : tensor<?x?x3xf32>
      %260 = math.fpowi %cst_5, %extracted_39 : f16, i32
      %261 = vector.transpose %61, [0] : vector<8xi64> to vector<8xi64>
      %splat_51 = tensor.splat %c789415997_i64 : tensor<7x8xi64>
      %262 = tensor.empty() : tensor<8xf16>
      %mapped_52 = linalg.map ins(%splat : tensor<8xf16>) outs(%262 : tensor<8xf16>)
        (%in: f16) {
          memref.assume_alignment %alloc_11, 4 : memref<7x7x3xf16>
          %268 = index.ceildivu %rank_44, %148
          %269 = math.absi %false : i1
          %splat_53 = tensor.splat %true : tensor<8x8xi1>
          %270 = index.maxs %49, %86
          %271 = math.roundeven %in : f16
          %272 = math.fpowi %0, %4 : tensor<7x7x3xf32>, tensor<7x7x3xi32>
          %273 = math.ipowi %true_3, %true : i1
          %274 = index.sub %rank_50, %148
          %275 = math.tan %7 : tensor<7x8xf16>
          %276 = affine.load %alloc_10[%c11, %c5, %c14] : memref<7x7x3xi64>
          %277 = index.sizeof
          %collapsed = tensor.collapse_shape %13 [[0, 1]] : tensor<8x8xi16> into tensor<64xi16>
          %278 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d1 mod 2), (-(d1 mod 2)) ceildiv 8, d1 - 128)>(%46, %134, %c10, %268)
          %279 = arith.muli %c1147522420_i32, %c1147522420_i32 : i32
          %280 = math.atan2 %splat, %262 : tensor<8xf16>
          %281 = math.cttz %splat_53 : tensor<8x8xi1>
          %false_54 = index.bool.constant false
          %282 = arith.remsi %extracted_40, %extracted_40 : i32
          %283 = math.ipowi %extracted_39, %extracted_39 : i32
          %284 = math.ipowi %10, %10 : tensor<8xi1>
          %285 = vector.extract %200[2] : vector<8x8xf32>
          %286 = math.rsqrt %cst_6 : f16
          %287 = math.powf %cst_0, %cst : f32
          %288 = arith.subi %c1373574094_i32, %c1373574094_i32 : i32
          %289 = index.maxs %202, %117
          %290 = math.powf %cst_4, %cst_4 : f32
          %291 = index.sub %117, %c8
          %292 = vector.broadcast %extracted_40 : i32 to vector<7x7xi32>
          %dest_55, %accumulated_value_56 = vector.scan <or>, %87, %292 {inclusive = true, reduction_dim = 2 : i64} : vector<7x7x3xi32>, vector<7x7xi32>
          %293 = math.absf %98 : tensor<7x7x3xf16>
          %294 = arith.cmpf ugt, %extracted, %cst_2 : f16
          %295 = math.log10 %7 : tensor<7x8xf16>
          %cst_57 = arith.constant 1.000000e+00 : f16
          linalg.yield %cst_57 : f16
        }
      %263 = vector.create_mask %rank_44, %44 : vector<8x8xi1>
      %264 = math.fma %splat, %262, %262 : tensor<8xf16>
      %265 = arith.divui %c1373574094_i32, %extracted_40 : i32
      %266 = index.sizeof
      %267 = arith.subi %extracted_40, %extracted_40 : i32
      scf.yield %c220153356_i64 : i64
    }
    default {
      %254 = math.sqrt %23 : tensor<8x8xf16>
      %255 = tensor.empty() : tensor<8xi64>
      %mapped_49 = linalg.map ins(%alloc, %alloc : memref<8xi64>, memref<8xi64>) outs(%255 : tensor<8xi64>)
        (%in: i64, %in_54: i64) {
          %271 = index.maxu %36, %c12
          %alloc_55 = memref.alloc() : memref<8x8xi16>
          memref.tensor_store %124, %alloc_55 : memref<8x8xi16>
          %272 = bufferization.clone %alloc_16 : memref<7x8xi1> to memref<7x8xi1>
          %273 = arith.remf %cst_4, %cst_4 : f32
          %rank_56 = tensor.rank %1 : tensor<7x8xi16>
          %274 = arith.addi %false, %true : i1
          memref.store %c1147522420_i32, %alloc_22[%c1] : memref<8xi32>
          %275 = arith.andi %c1147522420_i32, %c1147522420_i32 : i32
          %276 = arith.shli %extracted_40, %extracted_40 : i32
          %277 = vector.insert %193, %200 [4] : vector<8xf32> into vector<8x8xf32>
          %278 = index.floordivs %99, %99
          %279 = vector.insertelement %c1425_i16, %168[] : vector<i16>
          %280 = math.tanh %cst_1 : f16
          %281 = vector.flat_transpose %96 {columns = 1 : i32, rows = 1 : i32} : vector<1xi64> -> vector<1xi64>
          %282 = arith.xori %extracted_39, %extracted_39 : i32
          %283 = math.cttz %21 : tensor<i16>
          %284 = arith.addi %true_3, %true : i1
          %285 = tensor.empty() : tensor<7x8xi16>
          %286 = linalg.matmul ins(%14, %13 : tensor<7x8xi16>, tensor<8x8xi16>) outs(%285 : tensor<7x8xi16>) -> tensor<7x8xi16>
          %287 = math.exp2 %98 : tensor<7x7x3xf16>
          %288 = index.maxs %149, %rank_56
          %289 = vector.matrix_multiply %193, %126 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
          %290 = memref.atomic_rmw maxf %cst_5, %alloc_23[%c6] : (f16, memref<7xf16>) -> f16
          %291 = vector.broadcast %cst : f32 to vector<7x7x3xf32>
          %292 = vector.fma %291, %291, %291 : vector<7x7x3xf32>
          %293 = affine.apply affine_map<(d0, d1, d2, d3) -> (d3)>(%68, %c4, %44, %123)
          %294 = math.powf %cst_2, %cst_1 : f16
          %295 = vector.broadcast %c220153356_i64 : i64 to vector<8x8xi64>
          %296 = vector.outerproduct %153, %125, %295 {kind = #vector.kind<minui>} : vector<8xi64>, vector<8xi64>
          %297 = math.tan %cst_2 : f16
          %298 = math.fma %cst_0, %cst_0, %cst_0 : f32
          %299 = vector.matrix_multiply %193, %126 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
          %300 = arith.cmpi sle, %extracted_39, %c1147522420_i32 : i32
          %301 = affine.min affine_map<(d0, d1) -> (((d0 floordiv 64) ceildiv 4) mod 32)>(%c4, %rank_42)
          %302 = index.sizeof
          %c0_i64 = arith.constant 0 : i64
          linalg.yield %c0_i64 : i64
        }
      %256 = tensor.empty() : tensor<8xi64>
      %257 = arith.subi %c1177827053_i64, %c1177827053_i64 : i64
      %258 = arith.xori %c789415997_i64, %c220153356_i64 : i64
      %259 = math.log10 %cst_1 : f16
      %cst_50 = arith.constant 1.000000e+00 : f16
      %cst_51 = arith.constant 0.000000e+00 : f16
      %260 = vector.transfer_read %alloc_23[%c9], %cst_51 : memref<7xf16>, vector<f16>
      %261 = bufferization.clone %alloc_16 : memref<7x8xi1> to memref<7x8xi1>
      %262 = memref.atomic_rmw maxu %extracted_39, %43[%c3, %c1] : (i32, memref<8x8xi32>) -> i32
      %263 = arith.minui %true, %true_3 : i1
      %264 = arith.xori %true_3, %true : i1
      %265 = index.ceildivu %rank_42, %123
      %266 = vector.extract %192[5] : vector<8xf32>
      %extracted_52 = tensor.extract %21[] : tensor<i16>
      %alloc_53 = memref.alloc() : memref<3x7xi16>
      %267 = tensor.empty() : tensor<3xi16>
      %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_53, %267 : memref<3x7xi16>, tensor<3xi16>) outs(%11 : tensor<7x7x3xi16>) {
      ^bb0(%in: i16, %in_54: i16, %out: i16):
        %271 = math.absf %0 : tensor<7x7x3xf32>
        %272 = math.ipowi %14, %1 : tensor<7x8xi16>
        %273 = arith.maxsi %c1425_i16, %c1425_i16 : i16
        %274 = vector.extract_strided_slice %96 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi64> to vector<1xi64>
        %275 = arith.divui %c220153356_i64, %c220153356_i64 : i64
        %276 = tensor.empty() : tensor<8x8xf32>
        %277 = linalg.matmul ins(%8, %8 : tensor<8x8xf32>, tensor<8x8xf32>) outs(%276 : tensor<8x8xf32>) -> tensor<8x8xf32>
        %false_55 = index.bool.constant false
        %278 = arith.divsi %false, %true_3 : i1
        %279 = math.log1p %15 : tensor<8xf32>
        %280 = index.casts %in : i16 to index
        %281 = index.add %rank_33, %c10
        %282 = math.absi %extracted_52 : i16
        %283 = affine.max affine_map<(d0) -> (d0, d0 ceildiv 128 + 1, (d0 ceildiv 128) * 128)>(%44)
        %284 = bufferization.to_memref %8 : memref<8x8xf32>
        %285 = math.sqrt %extracted : f16
        %286 = math.atan2 %splat, %splat : tensor<8xf16>
        %287 = tensor.empty() : tensor<8x8xi1>
        %288 = index.floordivs %c15, %173
        %289 = math.ipowi %16, %17 : tensor<8xi16>
        %290 = arith.subi %c1147522420_i32, %extracted_39 : i32
        %291 = vector.splat %extracted_52 : vector<7x8xi16>
        %292 = index.divs %181, %rank_42
        %293 = arith.shrui %c1373574094_i32, %extracted_40 : i32
        %294 = memref.realloc %alloc_22 : memref<8xi32> to memref<5xi32>
        %295 = bufferization.to_tensor %alloc_12 : memref<7x8xf16>
        %extracted_56 = tensor.extract %13[%c3, %c6] : tensor<8x8xi16>
        %296 = arith.maxsi %extracted_39, %c1373574094_i32 : i32
        %297 = math.exp2 %7 : tensor<7x8xf16>
        %298 = math.absf %cst : f32
        %299 = arith.xori %out, %extracted_56 : i16
        %300 = math.cttz %16 : tensor<8xi16>
        %301 = tensor.empty() : tensor<8x8xi64>
        %302 = linalg.matmul ins(%6, %6 : tensor<8x8xi64>, tensor<8x8xi64>) outs(%301 : tensor<8x8xi64>) -> tensor<8x8xi64>
        linalg.yield %extracted_56 : i16
      } -> tensor<7x7x3xi16>
      %269 = vector.broadcast %c789415997_i64 : i64 to vector<1x1xi64>
      %270 = vector.outerproduct %58, %57, %269 {kind = #vector.kind<minui>} : vector<1xi64>, vector<1xi64>
      scf.yield %c1177827053_i64 : i64
    }
    %218 = index.sizeof
    %219 = arith.andi %extracted_39, %c1147522420_i32 : i32
    %220 = vector.multi_reduction <mul>, %125, %153 [] : vector<8xi64> to vector<8xi64>
    %221 = affine.load %alloc_12[%c11, %c4] : memref<7x8xf16>
    %222 = affine.max affine_map<(d0, d1, d2) -> (d1 * 4, ((d0 - 128) * 4) floordiv 128, d1 * 64 - 12, d2 - 4)>(%rank, %149, %c12)
    %223 = arith.mulf %cst_2, %cst_6 : f16
    %224 = tensor.empty(%c13) : tensor<7x7x?xf16>
    %225 = affine.max affine_map<(d0, d1, d2) -> (-d0 - 16, -d0)>(%c11, %c6, %99)
    %rank_46 = tensor.rank %9 : tensor<8x8xi64>
    %226 = math.rsqrt %15 : tensor<8xf32>
    %227 = arith.addi %extracted_40, %c1373574094_i32 : i32
    %228 = arith.divsi %c1373574094_i32, %c1373574094_i32 : i32
    %229 = arith.remui %c789415997_i64, %c789415997_i64 : i64
    %230 = index.ceildivs %202, %rank_32
    %231 = math.log %cst_1 : f16
    %232 = math.exp2 %15 : tensor<8xf32>
    %233 = tensor.empty() : tensor<8xi64>
    %234 = vector.insert %c1177827053_i64, %19 [6] : i64 into vector<8xi64>
    %235 = bufferization.to_tensor %alloc_21 : memref<7x8xi16>
    %236 = scf.while (%arg3 = %58) : (vector<1xi64>) -> vector<1xi64> {
      %254 = math.sqrt %cst_1 : f16
      %255 = math.tan %cst_6 : f16
      memref.store %c1147522420_i32, %alloc_18[%c2] : memref<8xi32>
      %256 = arith.remsi %c1147522420_i32, %extracted_39 : i32
      %257 = vector.shuffle %96, %125 [5, 7, 8] : vector<1xi64>, vector<8xi64>
      %258 = arith.minsi %extracted_39, %c1373574094_i32 : i32
      %259 = affine.min affine_map<(d0, d1, d2) -> (d0 * 2)>(%186, %rank, %c5)
      scf.index_switch %181 
      case 1 {
        %alloc_49 = memref.alloc() : memref<8x8x1xi32>
        memref.tensor_store %expanded, %alloc_49 : memref<8x8x1xi32>
        %260 = math.round %0 : tensor<7x7x3xf32>
        memref.store %c1147522420_i32, %alloc_7[%c2, %c3] : memref<7x8xi32>
        %261 = vector.bitcast %57 : vector<1xi64> to vector<1xi64>
        %262 = math.atan2 %15, %15 : tensor<8xf32>
        %263 = arith.maxf %cst_4, %cst : f32
        %264 = vector.shuffle %61, %57 [0, 1, 2, 3, 4, 6, 7] : vector<8xi64>, vector<1xi64>
        %265 = affine.min affine_map<(d0, d1, d2, d3) -> ((d3 + 16) * 2)>(%149, %rank, %c15, %49)
        %266 = index.sizeof
        %267 = vector.create_mask %68 : vector<8xi1>
        %268 = vector.broadcast %c1373574094_i32 : i32 to vector<7x7xi32>
        %dest_50, %accumulated_value_51 = vector.scan <xor>, %87, %268 {inclusive = true, reduction_dim = 2 : i64} : vector<7x7x3xi32>, vector<7x7xi32>
        %269 = vector.splat %266 : vector<8xindex>
        %270 = arith.ori %true, %false : i1
        %271 = affine.apply affine_map<(d0, d1, d2, d3) -> ((((d0 * 32) ceildiv 64) mod 16) * 4)>(%265, %143, %44, %159)
        %272 = arith.ceildivsi %c1373574094_i32, %c1147522420_i32 : i32
        %273 = math.fma %cst_5, %cst_6, %cst_6 : f16
        scf.yield
      }
      case 2 {
        %260 = index.divs %c3, %222
        %261 = math.log2 %cst_0 : f32
        %262 = math.ctlz %13 : tensor<8x8xi16>
        %c-338_i16 = arith.constant -338 : i16
        %263 = affine.apply affine_map<(d0, d1, d2) -> (((d1 ceildiv 128) mod 32) * 8)>(%c12, %146, %230)
        %264 = arith.andi %c1425_i16, %c1425_i16 : i16
        %265 = arith.cmpf oeq, %cst_5, %cst_2 : f16
        %266 = arith.shrsi %c1425_i16, %c1425_i16 : i16
        %267 = math.round %cst_1 : f16
        %268 = vector.broadcast %cst_1 : f16 to vector<7x7x3xf16>
        %269 = math.absi %11 : tensor<7x7x3xi16>
        %270 = math.ctpop %14 : tensor<7x8xi16>
        bufferization.dealloc_tensor %16 : tensor<8xi16>
        %271 = math.rsqrt %0 : tensor<7x7x3xf32>
        %272 = arith.ori %true, %true_3 : i1
        %273 = index.sizeof
        scf.yield
      }
      case 3 {
        %260 = arith.addf %cst_5, %221 : f16
        memref.tensor_store %2, %alloc_10 : memref<7x7x3xi64>
        %261 = arith.floordivsi %extracted_39, %extracted_39 : i32
        %262 = tensor.empty() : tensor<8x8xi32>
        %263 = linalg.matmul ins(%12, %12 : tensor<8x8xi32>, tensor<8x8xi32>) outs(%262 : tensor<8x8xi32>) -> tensor<8x8xi32>
        %alloc_49 = memref.alloc() : memref<8x8xi16>
        memref.tensor_store %13, %alloc_49 : memref<8x8xi16>
        %264 = index.ceildivs %186, %225
        %265 = arith.subi %c1373574094_i32, %extracted_40 : i32
        %266 = index.ceildivu %173, %134
        %267 = vector.multi_reduction <maxui>, %61, %19 [] : vector<8xi64> to vector<8xi64>
        %268 = vector.broadcast %134 : index to vector<7xindex>
        %269 = vector.broadcast %true_3 : i1 to vector<7xi1>
        vector.scatter %alloc_16[%c3, %c7] [%268], %269, %269 : memref<7x8xi1>, vector<7xindex>, vector<7xi1>, vector<7xi1>
        %270 = arith.divui %c1177827053_i64, %c1177827053_i64 : i64
        bufferization.dealloc_tensor %8 : tensor<8x8xf32>
        %271 = index.maxs %rank_46, %c10
        %272 = arith.ceildivsi %c789415997_i64, %c220153356_i64 : i64
        %273 = math.absf %cst_1 : f16
        %274 = math.round %0 : tensor<7x7x3xf32>
        scf.yield
      }
      case 4 {
        %260 = affine.apply affine_map<(d0, d1, d2) -> (((d1 ceildiv 128) mod 32) * 8)>(%149, %111, %c6)
        %261 = arith.minf %cst_4, %cst : f32
        %262 = math.log10 %cst_0 : f32
        %263 = math.log10 %cst_2 : f16
        %c1_i16 = arith.constant 1 : i16
        %264 = vector.transfer_read %11[%260, %260, %rank_33], %c1_i16 : tensor<7x7x3xi16>, vector<i16>
        %265 = vector.outerproduct %193, %127, %200 {kind = #vector.kind<maxf>} : vector<8xf32>, vector<8xf32>
        %266 = math.fma %7, %7, %7 : tensor<7x8xf16>
        %267 = math.ctlz %1 : tensor<7x8xi16>
        %268 = index.ceildivs %c15, %c15
        %269 = arith.andi %extracted_40, %c1373574094_i32 : i32
        %270 = index.floordivs %c7, %149
        %271 = index.ceildivu %36, %270
        %272 = index.ceildivs %260, %c7
        %273 = vector.broadcast %c1373574094_i32 : i32 to vector<7xi32>
        %274 = vector.multi_reduction <maxsi>, %25, %273 [0, 2] : vector<7x7x3xi32> to vector<7xi32>
        %275 = arith.shrui %extracted_40, %c1147522420_i32 : i32
        %276 = arith.muli %c1177827053_i64, %c220153356_i64 : i64
        scf.yield
      }
      default {
        %260 = arith.negf %cst_0 : f32
        %261 = arith.subi %extracted_39, %extracted_39 : i32
        %262 = vector.insert %cst_0, %193 [1] : f32 into vector<8xf32>
        %263 = math.log10 %cst_2 : f16
        %264 = index.ceildivu %c14, %44
        %265 = index.maxs %49, %c13
        %266 = index.sub %c1, %c4
        %267 = math.log2 %cst_6 : f16
        %268 = arith.subi %false, %true : i1
        %269 = vector.shuffle %168, %168 [0, 1] : vector<i16>, vector<i16>
        vector.print %19 : vector<8xi64>
        %270 = math.fma %0, %0, %0 : tensor<7x7x3xf32>
        %rank_49 = tensor.rank %generated : tensor<?x?x3xf32>
        %271 = tensor.empty() : tensor<7x8xi16>
        %272 = linalg.matmul ins(%14, %124 : tensor<7x8xi16>, tensor<8x8xi16>) outs(%271 : tensor<7x8xi16>) -> tensor<7x8xi16>
        %273 = arith.divf %cst_0, %cst : f32
        %274 = math.round %8 : tensor<8x8xf32>
      }
      scf.condition(%false) %58 : vector<1xi64>
    } do {
    ^bb0(%arg3: vector<1xi64>):
      %alloc_49 = memref.alloc() : memref<3x7xf32>
      %254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0, %alloc_49 : tensor<7x7x3xf32>, memref<3x7xf32>) outs(%0 : tensor<7x7x3xf32>) {
      ^bb0(%in: f32, %in_52: f32, %out: f32):
        %268 = arith.cmpi uge, %c1177827053_i64, %c789415997_i64 : i64
        %269 = math.cttz %11 : tensor<7x7x3xi16>
        %270 = affine.min affine_map<(d0, d1, d2, d3) -> (d2)>(%c12, %c14, %173, %c12)
        %271 = math.exp2 %splat : tensor<8xf16>
        %272 = arith.remsi %c1177827053_i64, %c789415997_i64 : i64
        %273 = arith.divf %cst_0, %out : f32
        %274 = arith.muli %extracted_39, %c1147522420_i32 : i32
        %extracted_53 = tensor.extract %23[%c6, %c1] : tensor<8x8xf16>
        %275 = memref.realloc %alloc_22 : memref<8xi32> to memref<3xi32>
        %276 = memref.realloc %alloc_18 : memref<8xi32> to memref<8xi32>
        %277 = math.ceil %cst_4 : f32
        %278 = index.maxs %44, %36
        %279 = math.atan %8 : tensor<8x8xf32>
        %280 = memref.atomic_rmw addi %c789415997_i64, %alloc_10[%c0, %c0, %c0] : (i64, memref<7x7x3xi64>) -> i64
        %281 = arith.maxsi %c1373574094_i32, %c1373574094_i32 : i32
        %282 = arith.shli %c789415997_i64, %c789415997_i64 : i64
        %283 = math.fma %23, %23, %23 : tensor<8x8xf16>
        %284 = tensor.empty() : tensor<8x8xi1>
        %285 = math.round %15 : tensor<8xf32>
        %286 = vector.flat_transpose %126 {columns = 4 : i32, rows = 2 : i32} : vector<8xf32> -> vector<8xf32>
        %287 = math.exp2 %extracted : f16
        %288 = bufferization.to_tensor %alloc_8 : memref<8xf32>
        %289 = math.roundeven %out : f32
        %290 = tensor.empty(%rank_44) : tensor<?xi16>
        %291 = math.cos %cst : f32
        %extracted_54 = tensor.extract %0[%c0, %c1, %c0] : tensor<7x7x3xf32>
        %292 = vector.insertelement %c789415997_i64, %57[%202 : index] : vector<1xi64>
        %293 = math.exp2 %cst_6 : f16
        %294 = math.ceil %15 : tensor<8xf32>
        %295 = affine.load %alloc_9[%c11, %c13] : memref<7x8xi1>
        %296 = math.exp2 %extracted_54 : f32
        %rank_55 = tensor.rank %16 : tensor<8xi16>
        linalg.yield %in_52 : f32
      } -> tensor<7x7x3xf32>
      affine.store %c1425_i16, %163[%c14, %c1] : memref<7x8xi16>
      %255 = math.sqrt %extracted : f16
      %256 = math.atan2 %7, %7 : tensor<7x8xf16>
      %257 = vector.create_mask %143, %46 : vector<8x8xi1>
      %258 = tensor.empty() : tensor<3x7xf32>
      %alloc_50 = memref.alloc() : memref<7xf32>
      %259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%258, %alloc_50, %258 : tensor<3x7xf32>, memref<7xf32>, tensor<3x7xf32>) outs(%0 : tensor<7x7x3xf32>) {
      ^bb0(%in: f32, %in_52: f32, %in_53: f32, %out: f32):
        %from_elements_54 = tensor.from_elements %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16, %c1425_i16 : tensor<7x8xi16>
        %268 = vector.broadcast %225 : index to vector<5xindex>
        %269 = vector.broadcast %true_3 : i1 to vector<5xi1>
        %270 = vector.broadcast %extracted_40 : i32 to vector<5xi32>
        vector.scatter %43[%c7, %c0] [%268], %269, %270 : memref<8x8xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
        %271 = vector.reduction <minf>, %192 : vector<8xf32> into f32
        %272 = bufferization.to_tensor %62 : memref<7x8xi16>
        %273 = arith.divui %true, %true : i1
        %274 = tensor.empty() : tensor<8x8xf32>
        %275 = linalg.matmul ins(%8, %8 : tensor<8x8xf32>, tensor<8x8xf32>) outs(%274 : tensor<8x8xf32>) -> tensor<8x8xf32>
        %276 = math.ctlz %expanded : tensor<8x8x1xi32>
        %277 = math.exp2 %in : f32
        %278 = index.sizeof
        affine.store %c1373574094_i32, %alloc_22[%c8] : memref<8xi32>
        %279 = math.log %221 : f16
        %280 = index.maxs %c6, %c3
        %281 = vector.matrix_multiply %193, %127 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
        %282 = arith.remf %in_53, %cst_0 : f32
        %283 = arith.remsi %extracted_39, %c1373574094_i32 : i32
        %284 = index.divu %99, %c6
        %285 = math.absf %in_53 : f32
        %286 = arith.mulf %cst_2, %cst_2 : f16
        %287 = vector.broadcast %extracted_39 : i32 to vector<7x3x7x3xi32>
        %288 = vector.contract {indexing_maps = [affine_map<(d0, d1, d2, d3, d4) -> (d4, d0, d1)>, affine_map<(d0, d1, d2, d3, d4) -> (d4, d2, d3)>, affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction"], kind = #vector.kind<and>} %25, %87, %287 : vector<7x7x3xi32>, vector<7x7x3xi32> into vector<7x3x7x3xi32>
        %collapsed = tensor.collapse_shape %235 [[0, 1]] : tensor<7x8xi16> into tensor<56xi16>
        %289 = math.round %cst_4 : f32
        %290 = arith.remsi %c789415997_i64, %c1177827053_i64 : i64
        %alloc_55 = memref.alloc() : memref<8x8xi64>
        memref.tensor_store %6, %alloc_55 : memref<8x8xi64>
        %291 = math.tanh %98 : tensor<7x7x3xf16>
        %292 = math.absi %10 : tensor<8xi1>
        %293 = math.rsqrt %7 : tensor<7x8xf16>
        %294 = math.round %8 : tensor<8x8xf32>
        memref.tensor_store %235, %163 : memref<7x8xi16>
        %295 = math.log10 %in : f32
        %296 = arith.shli %extracted_40, %extracted_39 : i32
        %rank_56 = tensor.rank %13 : tensor<8x8xi16>
        %297 = math.cos %274 : tensor<8x8xf32>
        linalg.yield %out : f32
      } -> tensor<7x7x3xf32>
      %260 = arith.addf %cst_5, %cst_2 : f16
      %261 = index.sub %c3, %c9
      %262 = math.exp2 %8 : tensor<8x8xf32>
      %263 = arith.remui %c1147522420_i32, %c1373574094_i32 : i32
      %264 = math.fma %0, %0, %0 : tensor<7x7x3xf32>
      memref.copy %130, %alloc_11 : memref<7x7x3xf16> to memref<7x7x3xf16>
      %265 = math.tanh %cst_4 : f32
      %266 = math.powf %221, %cst_1 : f16
      %267 = vector.extract %96[0] : vector<1xi64>
      %inserted_51 = tensor.insert %c1425_i16 into %11[%c3, %c4, %c1] : tensor<7x7x3xi16>
      scf.yield %96 : vector<1xi64>
    }
    %237 = vector.multi_reduction <mul>, %153, %c1177827053_i64 [0] : vector<8xi64> to i64
    %238 = arith.divf %extracted, %cst_5 : f16
    %239 = bufferization.clone %130 : memref<7x7x3xf16> to memref<7x7x3xf16>
    %240 = math.ipowi %c789415997_i64, %c220153356_i64 : i64
    %241 = vector.load %62[%c2, %c7] : memref<7x8xi16>, vector<7x7x3xi16>
    %242 = arith.divui %c1373574094_i32, %c1373574094_i32 : i32
    %243 = tensor.empty() : tensor<7x8xf16>
    %mapped_47 = linalg.map ins(%7, %7 : tensor<7x8xf16>, tensor<7x8xf16>) outs(%243 : tensor<7x8xf16>)
      (%in: f16, %in_49: f16) {
        %254 = math.log10 %cst_0 : f32
        %c0_i32 = arith.constant 0 : i32
        %255 = vector.transfer_read %alloc_18[%c11], %c0_i32 : memref<8xi32>, vector<i32>
        %256 = math.ipowi %28, %28 : tensor<8xi32>
        %257 = math.ceil %cst_4 : f32
        memref.assume_alignment %alloc_9, 4 : memref<7x8xi1>
        %258 = affine.load %alloc_7[%c5, %c0] : memref<7x8xi32>
        scf.index_switch %c3 
        case 1 {
          %281 = arith.muli %c220153356_i64, %c1177827053_i64 : i64
          %282 = math.copysign %in_49, %cst_2 : f16
          %283 = arith.minsi %c1373574094_i32, %extracted_39 : i32
          %expanded_51 = tensor.expand_shape %235 [[0], [1, 2]] : tensor<7x8xi16> into tensor<7x8x1xi16>
          %284 = arith.andi %c0_i32, %258 : i32
          %285 = math.ipowi %true, %false : i1
          %286 = arith.subi %258, %extracted_40 : i32
          %extracted_52 = tensor.extract %3[%c0] : tensor<8xi64>
          %287 = index.sub %rank_46, %86
          memref.tensor_store %14, %163 : memref<7x8xi16>
          %288 = arith.negf %in : f16
          %289 = math.fpowi %98, %4 : tensor<7x7x3xf16>, tensor<7x7x3xi32>
          %290 = arith.minui %true_3, %true_3 : i1
          %291 = vector.broadcast %c1425_i16 : i16 to vector<i16>
          %292 = vector.transfer_write %291, %17[%173] : vector<i16>, tensor<8xi16>
          %293 = index.ceildivs %c14, %158
          %294 = math.powf %23, %23 : tensor<8x8xf16>
          scf.yield
        }
        default {
          %281 = index.divs %rank_33, %111
          %c0_i16 = arith.constant 0 : i16
          %282 = vector.transfer_read %1[%86, %86], %c0_i16 : tensor<7x8xi16>, vector<3xi16>
          %283 = math.exp2 %7 : tensor<7x8xf16>
          %284 = vector.outerproduct %193, %126, %200 {kind = #vector.kind<minf>} : vector<8xf32>, vector<8xf32>
          %285 = arith.divui %true, %true_3 : i1
          affine.store %237, %alloc[%c5] : memref<8xi64>
          %286 = arith.shli %true, %false : i1
          %287 = vector.matrix_multiply %61, %58 {lhs_columns = 1 : i32, lhs_rows = 8 : i32, rhs_columns = 1 : i32} : (vector<8xi64>, vector<1xi64>) -> vector<8xi64>
          %extracted_51 = tensor.extract %12[%c0, %c7] : tensor<8x8xi32>
          %c220574643_i32 = arith.constant 220574643 : i32
          %288 = memref.realloc %alloc_23 : memref<7xf16> to memref<8xf16>
          %289 = affine.min affine_map<(d0, d1) -> (d1 + d0, d0)>(%181, %146)
          %290 = math.exp2 %extracted : f16
          %291 = arith.subi %extracted_40, %extracted_40 : i32
          %292 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minsi>} %19, %19, %c1177827053_i64 : vector<8xi64>, vector<8xi64> into i64
          %293 = index.sizeof
        }
        %259 = index.maxs %rank_46, %34
        %260 = arith.divf %cst, %cst : f32
        memref.tensor_store %7, %alloc_12 : memref<7x8xf16>
        %261 = memref.realloc %alloc_13 : memref<8xf32> to memref<3xf32>
        %262 = math.sqrt %23 : tensor<8x8xf16>
        %263 = arith.muli %c1147522420_i32, %extracted_40 : i32
        %264 = math.round %8 : tensor<8x8xf32>
        %265 = arith.minui %c1177827053_i64, %c1177827053_i64 : i64
        %266 = index.maxs %117, %123
        %267 = arith.ori %true, %false : i1
        %268 = math.floor %7 : tensor<7x8xf16>
        %269 = math.absf %cst_2 : f16
        %alloca = memref.alloca() : memref<7x8xi16>
        affine.for %arg3 = 0 to 67 {
        }
        %270 = index.casts %rank_32 : index to i32
        %271 = affine.max affine_map<(d0, d1, d2, d3) -> (-(d0 + 1), d2 * 32)>(%123, %rank_42, %36, %rank_46)
        %272 = arith.xori %extracted_39, %extracted_40 : i32
        %273 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<maxui>} %61, %61, %237 : vector<8xi64>, vector<8xi64> into i64
        %274 = index.ceildivs %68, %222
        %275 = arith.muli %extracted_40, %extracted_39 : i32
        %276 = arith.andi %extracted_39, %258 : i32
        %277 = math.log %cst_2 : f16
        %278 = arith.minf %cst, %cst : f32
        %279 = arith.cmpf ord, %221, %cst_2 : f16
        %280 = arith.divsi %extracted_40, %c1147522420_i32 : i32
        %cst_50 = arith.constant 1.000000e+00 : f16
        linalg.yield %cst_50 : f16
      }
    %244 = math.cttz %5 : tensor<8xi16>
    %245 = index.ceildivu %c9, %34
    %246 = arith.remui %true_3, %true_3 : i1
    %247 = arith.subi %237, %c220153356_i64 : i64
    %248 = arith.divui %true_3, %false : i1
    %249 = tensor.empty() : tensor<7x8xi16>
    %250 = linalg.copy ins(%1 : tensor<7x8xi16>) outs(%249 : tensor<7x8xi16>) -> tensor<7x8xi16>
    %alloc_48 = memref.alloc() : memref<3x7x7xf32>
    linalg.transpose ins(%0 : tensor<7x7x3xf32>) outs(%alloc_48 : memref<3x7x7xf32>) permutation = [2, 0, 1] 
    %251 = tensor.empty() : tensor<7xi16>
    %reduced = linalg.reduce ins(%102 : tensor<7x7x3xi16>) outs(%251 : tensor<7xi16>) dimensions = [0, 2] 
      (%in: i16, %init: i16) {
        %254 = math.fma %8, %8, %8 : tensor<8x8xf32>
        %255 = arith.shrui %c1147522420_i32, %c1373574094_i32 : i32
        %256 = math.floor %extracted : f16
        %257 = math.fma %splat, %splat, %splat : tensor<8xf16>
        %258 = math.round %8 : tensor<8x8xf32>
        %259 = index.ceildivs %49, %c11
        %260 = arith.xori %c220153356_i64, %237 : i64
        %261 = arith.divui %false, %false : i1
        %c1_i16 = arith.constant 1 : i16
        linalg.yield %c1_i16 : i16
      }
    %252 = scf.parallel (%arg3, %arg4) = (%99, %c11) to (%c8, %218) step (%c1, %c5) init (%168) -> vector<i16> {
      %254 = arith.shli %c1425_i16, %c1425_i16 : i16
      %255 = vector.load %62[%c0, %c3] : memref<7x8xi16>, vector<8x8xi16>
      %256 = vector.broadcast %cst : f32 to vector<7x8xf32>
      %257 = vector.fma %256, %256, %256 : vector<7x8xf32>
      %258 = math.tanh %7 : tensor<7x8xf16>
      scf.index_switch %c5 
      case 1 {
        %268 = arith.xori %extracted_39, %c1147522420_i32 : i32
        %269 = vector.matrix_multiply %192, %127 {lhs_columns = 8 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<8xf32>, vector<8xf32>) -> vector<1xf32>
        %270 = math.atan %7 : tensor<7x8xf16>
        %271 = vector.reduction <or>, %61 : vector<8xi64> into i64
        %272 = math.cos %15 : tensor<8xf32>
        memref.assume_alignment %189, 16 : memref<8x8xf32>
        memref.copy %alloc_16, %alloc_9 : memref<7x8xi1> to memref<7x8xi1>
        %273 = vector.broadcast %46 : index to vector<8xindex>
        %274 = vector.broadcast %true : i1 to vector<8xi1>
        vector.scatter %alloc_15[%c6, %c0] [%273], %274, %61 : memref<7x8xi64>, vector<8xindex>, vector<8xi1>, vector<8xi64>
        %inserted_49 = tensor.insert %c789415997_i64 into %74[%c6] : tensor<8xi64>
        bufferization.dealloc_tensor %20 : tensor<8xi16>
        %275 = arith.remui %false, %true : i1
        %276 = index.maxs %181, %202
        %277 = math.exp %23 : tensor<8x8xf16>
        %278 = arith.minui %extracted_39, %extracted_40 : i32
        %279 = arith.xori %c789415997_i64, %c789415997_i64 : i64
        %cst_50 = arith.constant 1.4559008E+9 : f32
        scf.yield
      }
      default {
        %268 = math.log2 %extracted : f16
        %splat_49 = tensor.splat %c1177827053_i64 : tensor<8xi64>
        affine.store %cst_5, %alloc_19[%c7, %c4] : memref<8x8xf16>
        %269 = arith.remsi %c1177827053_i64, %237 : i64
        %270 = index.sub %c3, %c4
        %271 = index.ceildivs %c4, %36
        %rank_50 = tensor.rank %from_elements : tensor<7x7x3xi16>
        %272 = affine.min affine_map<(d0, d1) -> (d1, d0 * 8, d0 * 32)>(%44, %44)
        %273 = arith.divf %cst_4, %cst_0 : f32
        %274 = math.round %extracted : f16
        %275 = math.log10 %221 : f16
        %276 = math.floor %0 : tensor<7x7x3xf32>
        %277 = vector.contract {indexing_maps = [affine_map<(d0, d1) -> (d1)>, affine_map<(d0, d1) -> (d1, d0)>, affine_map<(d0, d1) -> (d0)>], iterator_types = ["parallel", "reduction"], kind = #vector.kind<maxf>} %193, %201, %126 : vector<8xf32>, vector<8x8xf32> into vector<8xf32>
        %278 = index.floordivs %123, %222
        %279 = vector.broadcast %rank_33 : index to vector<8xindex>
        %280 = vector.broadcast %true_3 : i1 to vector<8xi1>
        vector.scatter %alloc_13[%c4] [%279], %280, %193 : memref<8xf32>, vector<8xindex>, vector<8xi1>, vector<8xf32>
        %281 = math.powf %93, %15 : tensor<8xf32>
      }
      %259 = bufferization.to_memref %13 : memref<8x8xi16>
      %260 = vector.insert %193, %256 [1] : vector<8xf32> into vector<7x8xf32>
      affine.store %c1425_i16, %alloc_21[%c5, %c5] : memref<7x8xi16>
      %261 = arith.ori %c220153356_i64, %c789415997_i64 : i64
      %262 = arith.divf %extracted, %extracted : f16
      %263 = vector.load %239[%c2, %c1, %c0] : memref<7x7x3xf16>, vector<7x7x3xf16>
      vector.print %193 : vector<8xf32>
      %264 = math.tanh %0 : tensor<7x7x3xf32>
      %265 = math.tanh %8 : tensor<8x8xf32>
      %266 = vector.bitcast %256 : vector<7x8xf32> to vector<7x8xf32>
      affine.store %c1147522420_i32, %alloc_22[%c11] : memref<8xi32>
      %267 = vector.broadcast %c1425_i16 : i16 to vector<i16>
      scf.reduce(%267)  : vector<i16> {
      ^bb0(%arg5: vector<i16>, %arg6: vector<i16>):
        %268 = arith.mulf %cst, %cst_4 : f32
        %269 = index.floordivs %c3, %159
        %270 = math.cttz %14 : tensor<7x8xi16>
        %271 = vector.broadcast %c12 : index to vector<5xindex>
        %272 = vector.broadcast %true_3 : i1 to vector<5xi1>
        %273 = vector.broadcast %extracted_39 : i32 to vector<5xi32>
        vector.scatter %43[%c0, %c3] [%271], %272, %273 : memref<8x8xi32>, vector<5xindex>, vector<5xi1>, vector<5xi32>
        memref.tensor_store %3, %alloc : memref<8xi64>
        %274 = arith.subi %237, %c1177827053_i64 : i64
        %275 = arith.remsi %extracted_39, %c1373574094_i32 : i32
        %276 = arith.minui %true_3, %true_3 : i1
        %277 = vector.broadcast %c1425_i16 : i16 to vector<i16>
        scf.reduce.return %277 : vector<i16>
      }
      scf.yield
    }
    %253 = affine.vector_load %alloc_22[%181] : memref<8xi32>, vector<3xi32>
    affine.vector_store %153, %alloc_15[%68, %c2] : memref<7x8xi64>, vector<8xi64>
    vector.print %19 : vector<8xi64>
    vector.print %25 : vector<7x7x3xi32>
    vector.print %57 : vector<1xi64>
    vector.print %58 : vector<1xi64>
    vector.print %61 : vector<8xi64>
    vector.print %87 : vector<7x7x3xi32>
    vector.print %96 : vector<1xi64>
    vector.print %125 : vector<8xi64>
    vector.print %126 : vector<8xf32>
    vector.print %127 : vector<8xf32>
    vector.print %153 : vector<8xi64>
    vector.print %168 : vector<i16>
    vector.print %192 : vector<8xf32>
    vector.print %193 : vector<8xf32>
    vector.print %200 : vector<8x8xf32>
    vector.print %201 : vector<8x8xf32>
    vector.print %241 : vector<7x7x3xi16>
    vector.print %253 : vector<3xi32>
    vector.print %cst : f32
    vector.print %cst_0 : f32
    vector.print %cst_1 : f16
    vector.print %c1177827053_i64 : i64
    vector.print %cst_2 : f16
    vector.print %c220153356_i64 : i64
    vector.print %true : i1
    vector.print %c789415997_i64 : i64
    vector.print %true_3 : i1
    vector.print %cst_4 : f32
    vector.print %cst_5 : f16
    vector.print %c1425_i16 : i16
    vector.print %false : i1
    vector.print %cst_6 : f16
    vector.print %c1147522420_i32 : i32
    vector.print %c1373574094_i32 : i32
    vector.print %extracted : f16
    vector.print %extracted_39 : i32
    vector.print %extracted_40 : i32
    vector.print %221 : f16
    vector.print %237 : i64
    return %143 : index
  }
}
