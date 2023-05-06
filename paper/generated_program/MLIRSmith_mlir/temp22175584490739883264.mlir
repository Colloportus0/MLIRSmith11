module {
  func.func nested @func1(%arg0: index, %arg1: index) -> vector<15xi32> {
    %c1830721698_i64 = arith.constant 1830721698 : i64
    %cst = arith.constant 1.6271959E+9 : f32
    %cst_0 = arith.constant 2.675200e+04 : f16
    %c957911893_i32 = arith.constant 957911893 : i32
    %c1060786097_i32 = arith.constant 1060786097 : i32
    %c1003249353_i64 = arith.constant 1003249353 : i64
    %cst_1 = arith.constant 4.182400e+04 : f16
    %true = arith.constant true
    %cst_2 = arith.constant 0x4E150D0E : f32
    %cst_3 = arith.constant 6.444800e+04 : f16
    %c22150_i16 = arith.constant 22150 : i16
    %c722420078_i32 = arith.constant 722420078 : i32
    %true_4 = arith.constant true
    %c1111448644_i32 = arith.constant 1111448644 : i32
    %cst_5 = arith.constant 4.060800e+04 : f16
    %cst_6 = arith.constant 2.678400e+04 : f16
    %0 = tensor.empty() : tensor<1xi64>
    %1 = tensor.empty() : tensor<15xf32>
    %2 = tensor.empty() : tensor<15xf16>
    %3 = tensor.empty() : tensor<1xi1>
    %4 = tensor.empty() : tensor<2xi32>
    %5 = tensor.empty() : tensor<15xi32>
    %6 = tensor.empty() : tensor<2x6xf16>
    %7 = tensor.empty() : tensor<1xf32>
    %8 = tensor.empty() : tensor<15xf16>
    %9 = tensor.empty() : tensor<2xi32>
    %10 = tensor.empty() : tensor<1xi16>
    %11 = tensor.empty() : tensor<2x6xi64>
    %12 = tensor.empty() : tensor<2x6xi1>
    %13 = tensor.empty() : tensor<2x6xi1>
    %14 = tensor.empty() : tensor<15xi16>
    %15 = tensor.empty() : tensor<1xf32>
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
    %alloc = memref.alloc() : memref<15xi64>
    %alloc_7 = memref.alloc() : memref<2x6xi16>
    %alloc_8 = memref.alloc() : memref<2xi16>
    %alloc_9 = memref.alloc() : memref<2x6xf16>
    %alloc_10 = memref.alloc() : memref<15xi64>
    %alloc_11 = memref.alloc() : memref<15xf16>
    %alloc_12 = memref.alloc() : memref<2xi32>
    %alloc_13 = memref.alloc() : memref<15xi1>
    %alloc_14 = memref.alloc() : memref<15xi32>
    %alloc_15 = memref.alloc() : memref<2xf16>
    %alloc_16 = memref.alloc() : memref<2x6xi64>
    %alloc_17 = memref.alloc() : memref<2xi1>
    %alloc_18 = memref.alloc() : memref<1xf32>
    %alloc_19 = memref.alloc() : memref<2x6xf16>
    %alloc_20 = memref.alloc() : memref<15xi16>
    %alloc_21 = memref.alloc() : memref<15xi1>
    %16 = tensor.empty() : tensor<15xi16>
    %17 = linalg.copy ins(%14 : tensor<15xi16>) outs(%16 : tensor<15xi16>) -> tensor<15xi16>
    %alloc_22 = memref.alloc() : memref<1xi1>
    linalg.transpose ins(%3 : tensor<1xi1>) outs(%alloc_22 : memref<1xi1>) permutation = [0] 
    %18 = tensor.empty() : tensor<i32>
    %reduced = linalg.reduce ins(%alloc_14 : memref<15xi32>) outs(%18 : tensor<i32>) dimensions = [0] 
      (%in: i32, %init: i32) {
        %267 = arith.minsi %c1003249353_i64, %c1003249353_i64 : i64
        %268 = vector.broadcast %c22150_i16 : i16 to vector<1xi16>
        %269 = vector.bitcast %268 : vector<1xi16> to vector<1xi16>
        %270 = memref.load %alloc_20[%c3] : memref<15xi16>
        %271 = arith.xori %c1060786097_i32, %c1060786097_i32 : i32
        %inserted_46 = tensor.insert %true into %12[%c1, %c5] : tensor<2x6xi1>
        %272 = math.round %8 : tensor<15xf16>
        %273 = index.floordivs %c13, %c13
        %c894035376_i32 = arith.constant 894035376 : i32
        %c0_i32 = arith.constant 0 : i32
        linalg.yield %c0_i32 : i32
      }
    scf.parallel (%arg2) = (%c3) to (%c12) step (%c6) {
      %267 = math.absi %0 : tensor<1xi64>
      %268 = index.ceildivu %c13, %c8
      %extracted_46 = tensor.extract %3[%c0] : tensor<1xi1>
      %269 = memref.alloca_scope  -> (i64) {
        %282 = affine.load %alloc_12[%c13] : memref<2xi32>
        %inserted_48 = tensor.insert %c22150_i16 into %16[%c13] : tensor<15xi16>
        %283 = index.castu %c3 : index to i32
        %284 = vector.broadcast %true : i1 to vector<1xi1>
        %285 = vector.extract_strided_slice %284 {offsets = [0], sizes = [1], strides = [1]} : vector<1xi1> to vector<1xi1>
        %286 = vector.insertelement %extracted_46, %285[%c12 : index] : vector<1xi1>
        %287 = index.castu %c2 : index to i32
        %288 = tensor.empty() : tensor<2xf16>
        %289 = arith.divf %cst_5, %cst_5 : f16
        %290 = math.atan2 %cst_0, %cst_1 : f16
        %291 = index.sizeof
        %292 = vector.multi_reduction <minsi>, %285, %284 [] : vector<1xi1> to vector<1xi1>
        %293 = arith.cmpi ule, %c722420078_i32, %c1060786097_i32 : i32
        %294 = vector.broadcast %c1830721698_i64 : i64 to vector<15xi64>
        %295 = vector.broadcast %true_4 : i1 to vector<15xi1>
        %296 = vector.maskedload %alloc_10[%c6], %295, %294 : memref<15xi64>, vector<15xi1>, vector<15xi64> into vector<15xi64>
        %297 = vector.bitcast %295 : vector<15xi1> to vector<15xi1>
        memref.store %282, %alloc_12[%c1] : memref<2xi32>
        %alloc_49 = memref.alloc() : memref<6x6xi1>
        %298 = tensor.empty() : tensor<2x6xi1>
        %299 = linalg.matmul ins(%13, %alloc_49 : tensor<2x6xi1>, memref<6x6xi1>) outs(%298 : tensor<2x6xi1>) -> tensor<2x6xi1>
        %300 = vector.broadcast %cst_2 : f32 to vector<1xf32>
        %301 = vector.fma %300, %300, %300 : vector<1xf32>
        %302 = index.sizeof
        affine.store %cst_1, %alloc_15[%c12] : memref<2xf16>
        %303 = tensor.empty() : tensor<6x1xi1>
        %304 = tensor.empty() : tensor<2x1xi1>
        %305 = linalg.matmul ins(%12, %303 : tensor<2x6xi1>, tensor<6x1xi1>) outs(%304 : tensor<2x1xi1>) -> tensor<2x1xi1>
        %306 = vector.extract %284[0] : vector<1xi1>
        %307 = math.log2 %6 : tensor<2x6xf16>
        %308 = math.fma %2, %8, %2 : tensor<15xf16>
        %309 = math.log2 %7 : tensor<1xf32>
        %310 = math.log2 %cst_5 : f16
        %collapsed_50 = tensor.collapse_shape %6 [[0, 1]] : tensor<2x6xf16> into tensor<12xf16>
        %311 = math.round %cst_3 : f16
        %312 = arith.divsi %c1111448644_i32, %c957911893_i32 : i32
        %313 = arith.minui %c1830721698_i64, %c1003249353_i64 : i64
        %314 = arith.minui %c22150_i16, %c22150_i16 : i16
        %315 = index.floordivs %c8, %c11
        %316 = bufferization.clone %alloc_18 : memref<1xf32> to memref<1xf32>
        memref.alloca_scope.return %c1830721698_i64 : i64
      }
      %rank_47 = tensor.rank %17 : tensor<15xi16>
      %270 = affine.max affine_map<(d0) -> (0, d0 ceildiv 32, d0 * 16)>(%c2)
      %271 = bufferization.to_memref %9 : memref<2xi32>
      %272 = math.exp %6 : tensor<2x6xf16>
      %273 = vector.create_mask %c14, %c9 : vector<2x6xi1>
      %274 = index.ceildivu %268, %270
      %c-26934_i16 = arith.constant -26934 : i16
      %275 = vector.broadcast %arg2 : index to vector<15xindex>
      %276 = vector.broadcast %true_4 : i1 to vector<15xi1>
      %277 = vector.broadcast %c22150_i16 : i16 to vector<15xi16>
      vector.scatter %alloc_20[%c2] [%275], %276, %277 : memref<15xi16>, vector<15xindex>, vector<15xi1>, vector<15xi16>
      %278 = math.copysign %cst_3, %cst_6 : f16
      %279 = math.exp %cst_5 : f16
      %280 = arith.cmpi ne, %c1830721698_i64, %269 : i64
      %281 = arith.divsi %c1003249353_i64, %c1003249353_i64 : i64
      scf.yield
    }
    %19 = affine.vector_load %alloc_11[%c15] : memref<15xf16>, vector<15xf16>
    affine.vector_store %19, %alloc_15[%c13] : memref<2xf16>, vector<15xf16>
    %20 = tensor.empty() : tensor<15xf16>
    %21 = tensor.empty() : tensor<f16>
    %22 = linalg.dot ins(%2, %20 : tensor<15xf16>, tensor<15xf16>) outs(%21 : tensor<f16>) -> tensor<f16>
    %23 = index.divu %c13, %c0
    %24 = affine.max affine_map<(d0, d1) -> (d0 ceildiv 64 - (d0 ceildiv 8) * 2 - (d0 ceildiv 64 + 128) + 2)>(%c14, %c5)
    memref.store %cst_1, %alloc_11[%c10] : memref<15xf16>
    %25 = index.divu %c0, %23
    %26 = tensor.empty() : tensor<6x6xi1>
    %27 = tensor.empty() : tensor<2x6xi1>
    %28 = linalg.matmul ins(%12, %26 : tensor<2x6xi1>, tensor<6x6xi1>) outs(%27 : tensor<2x6xi1>) -> tensor<2x6xi1>
    %29 = vector.matrix_multiply %19, %19 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xf16>, vector<15xf16>) -> vector<1xf16>
    %30 = arith.minui %c1111448644_i32, %c1060786097_i32 : i32
    %31 = arith.divui %true_4, %true : i1
    %32 = arith.divf %cst_6, %cst_3 : f16
    %33 = math.copysign %2, %8 : tensor<15xf16>
    %34 = bufferization.to_tensor %alloc_20 : memref<15xi16>
    %35 = vector.matrix_multiply %19, %19 {lhs_columns = 15 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<15xf16>, vector<15xf16>) -> vector<1xf16>
    %36 = vector.matrix_multiply %29, %35 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
    %extracted = tensor.extract %13[%c1, %c5] : tensor<2x6xi1>
    %37 = math.absf %22 : tensor<f16>
    %38 = arith.subi %c957911893_i32, %c722420078_i32 : i32
    %39 = vector.extract %35[0] : vector<1xf16>
    %40 = math.fma %cst_6, %cst_6, %cst_5 : f16
    scf.index_switch %c7 
    case 1 {
      %inserted_46 = tensor.insert %cst into %1[%c10] : tensor<15xf32>
      %false = arith.constant false
      %cast_47 = tensor.cast %15 : tensor<1xf32> to tensor<?xf32>
      %267 = tensor.empty(%c5) : tensor<?xi64>
      %268 = index.castu %c12 : index to i32
      affine.store %cst_1, %alloc_11[%c12] : memref<15xf16>
      %269 = arith.maxf %cst_3, %cst_1 : f16
      %270 = tensor.empty() : tensor<2x6xi16>
      %collapsed_48 = tensor.collapse_shape %12 [[0, 1]] : tensor<2x6xi1> into tensor<12xi1>
      %collapsed_49 = tensor.collapse_shape %270 [[0, 1]] : tensor<2x6xi16> into tensor<12xi16>
      %271 = vector.broadcast %c6 : index to vector<6xindex>
      %272 = vector.broadcast %true : i1 to vector<6xi1>
      %273 = vector.broadcast %c1003249353_i64 : i64 to vector<6xi64>
      vector.scatter %alloc_16[%c1, %c4] [%271], %272, %273 : memref<2x6xi64>, vector<6xindex>, vector<6xi1>, vector<6xi64>
      %274 = math.copysign %6, %6 : tensor<2x6xf16>
      %275 = vector.broadcast %cst_2 : f32 to vector<15xf32>
      %276 = vector.fma %275, %275, %275 : vector<15xf32>
      %extracted_50 = tensor.extract %2[%c10] : tensor<15xf16>
      %277 = vector.multi_reduction <maxf>, %275, %276 [] : vector<15xf32> to vector<15xf32>
      %278 = bufferization.clone %alloc_17 : memref<2xi1> to memref<2xi1>
      scf.yield
    }
    case 2 {
      %267 = math.powf %2, %8 : tensor<15xf16>
      %268 = math.floor %22 : tensor<f16>
      %269 = memref.load %alloc_19[%c0, %c1] : memref<2x6xf16>
      %270 = bufferization.clone %alloc_20 : memref<15xi16> to memref<15xi16>
      %271 = affine.if affine_set<(d0, d1) : (0 == 0, -d0 == 0)>(%c15, %c9) -> f32 {
        %281 = index.ceildivs %c3, %c11
        %282 = index.mul %c15, %c3
        %283 = vector.extract_strided_slice %19 {offsets = [0], sizes = [5], strides = [1]} : vector<15xf16> to vector<5xf16>
        %284 = math.round %7 : tensor<1xf32>
        %285 = vector.insert %cst_6, %36 [0] : f16 into vector<1xf16>
        %286 = arith.xori %true, %true : i1
        %287 = math.exp %6 : tensor<2x6xf16>
        %288 = arith.xori %c1830721698_i64, %c1830721698_i64 : i64
        affine.yield %cst : f32
      } else {
        %inserted_48 = tensor.insert %cst into %1[%c10] : tensor<15xf32>
        %281 = arith.xori %c957911893_i32, %c1060786097_i32 : i32
        %282 = arith.divf %cst, %cst : f32
        %283 = index.ceildivu %c5, %c15
        %284 = arith.shrsi %c957911893_i32, %c1111448644_i32 : i32
        %285 = arith.remsi %extracted, %true : i1
        %286 = memref.atomic_rmw andi %c957911893_i32, %alloc_14[%c4] : (i32, memref<15xi32>) -> i32
        %287 = index.divu %c10, %c8
        affine.yield %cst : f32
      }
      %272 = math.log2 %15 : tensor<1xf32>
      %273 = index.casts %true : i1 to index
      %274 = math.fma %6, %6, %6 : tensor<2x6xf16>
      %275 = bufferization.clone %alloc_11 : memref<15xf16> to memref<15xf16>
      memref.store %c22150_i16, %270[%c14] : memref<15xi16>
      %276 = arith.shrsi %c722420078_i32, %c722420078_i32 : i32
      %277 = arith.minsi %c1003249353_i64, %c1830721698_i64 : i64
      %cast_46 = tensor.cast %14 : tensor<15xi16> to tensor<?xi16>
      %278 = index.floordivs %24, %c5
      %rank_47 = tensor.rank %6 : tensor<2x6xf16>
      %279 = vector.broadcast %true : i1 to vector<1xi1>
      %280 = vector.maskedload %alloc_17[%c0], %279, %279 : memref<2xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
      scf.yield
    }
    default {
      %267 = affine.apply affine_map<(d0) -> (-(d0 mod 2))>(%c1)
      memref.assume_alignment %alloc_11, 2 : memref<15xf16>
      %268 = vector.broadcast %cst : f32 to vector<15xf32>
      %269 = vector.fma %268, %268, %268 : vector<15xf32>
      %alloc_46 = memref.alloc() : memref<6x1xi64>
      %270 = tensor.empty() : tensor<2x1xi64>
      %271 = linalg.matmul ins(%11, %alloc_46 : tensor<2x6xi64>, memref<6x1xi64>) outs(%270 : tensor<2x1xi64>) -> tensor<2x1xi64>
      %272 = math.ceil %20 : tensor<15xf16>
      %273 = bufferization.to_tensor %alloc_17 : memref<2xi1>
      %274 = arith.subi %extracted, %true_4 : i1
      %275 = math.ceil %cst_2 : f32
      %276 = vector.extract_strided_slice %36 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
      %277 = vector.insert %cst_0, %29 [0] : f16 into vector<1xf16>
      %278 = arith.shli %c1060786097_i32, %c1111448644_i32 : i32
      %279 = vector.insertelement %cst_1, %29[%c5 : index] : vector<1xf16>
      %280 = arith.minf %cst_2, %cst_2 : f32
      %281 = math.ctlz %c1003249353_i64 : i64
      bufferization.dealloc_tensor %0 : tensor<1xi64>
      %282 = math.cttz %13 : tensor<2x6xi1>
    }
    %41 = math.atan %cst_6 : f16
    %42 = vector.broadcast %cst_2 : f32 to vector<2xf32>
    %43 = vector.fma %42, %42, %42 : vector<2xf32>
    %44 = arith.remf %cst_0, %cst_3 : f16
    %45 = arith.remsi %extracted, %extracted : i1
    %46 = arith.remf %cst_5, %cst_3 : f16
    %expanded = tensor.expand_shape %15 [[0, 1]] : tensor<1xf32> into tensor<1x1xf32>
    %47 = vector.extract %19[14] : vector<15xf16>
    memref.store %c22150_i16, %alloc_20[%c5] : memref<15xi16>
    %48 = math.powf %2, %2 : tensor<15xf16>
    %49 = arith.ori %c1060786097_i32, %c722420078_i32 : i32
    memref.tensor_store %2, %alloc_11 : memref<15xf16>
    %50 = vector.insert %cst_1, %29 [0] : f16 into vector<1xf16>
    %51 = arith.remf %cst_3, %cst_5 : f16
    %52 = bufferization.clone %alloc_14 : memref<15xi32> to memref<15xi32>
    %53 = index.ceildivu %c5, %c1
    %54 = math.absf %2 : tensor<15xf16>
    %55 = vector.insert %cst_5, %36 [0] : f16 into vector<1xf16>
    %56 = arith.maxsi %c1830721698_i64, %c1003249353_i64 : i64
    %57 = vector.broadcast %cst : f32 to vector<1xf32>
    %58 = vector.fma %57, %57, %57 : vector<1xf32>
    %59 = vector.reduction <minf>, %43 : vector<2xf32> into f32
    %60 = tensor.empty(%c10) : tensor<?xi1>
    %61 = math.roundeven %1 : tensor<15xf32>
    %62 = bufferization.clone %alloc_8 : memref<2xi16> to memref<2xi16>
    %63 = tensor.empty() : tensor<2xf32>
    %64 = vector.broadcast %true_4 : i1 to vector<1xi1>
    %65 = vector.maskedload %alloc_22[%c0], %64, %64 : memref<1xi1>, vector<1xi1>, vector<1xi1> into vector<1xi1>
    %66 = math.exp %cst : f32
    %67 = bufferization.clone %alloc_13 : memref<15xi1> to memref<15xi1>
    %68 = arith.shli %true_4, %extracted : i1
    %69 = arith.minf %cst_5, %cst_0 : f16
    %70 = arith.remsi %c1830721698_i64, %c1003249353_i64 : i64
    %71 = math.ctlz %9 : tensor<2xi32>
    %72 = vector.reduction <xor>, %65 : vector<1xi1> into i1
    %73 = vector.multi_reduction <add>, %57, %cst [0] : vector<1xf32> to f32
    %74 = index.casts %c722420078_i32 : i32 to index
    %75 = index.ceildivu %c9, %24
    %76 = math.round %expanded : tensor<1x1xf32>
    %77 = math.copysign %cst_3, %cst_6 : f16
    %78 = vector.splat %c10 : vector<1xindex>
    %79 = vector.extract %42[0] : vector<2xf32>
    %80 = vector.insertelement %73, %57[%c5 : index] : vector<1xf32>
    %81 = arith.cmpi uge, %c1003249353_i64, %c1003249353_i64 : i64
    %82 = vector.matrix_multiply %64, %64 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
    %83 = math.ctpop %true : i1
    %84 = math.atan %8 : tensor<15xf16>
    %85 = affine.apply affine_map<(d0, d1, d2) -> ((d0 floordiv 16) mod 16)>(%c3, %c0, %c7)
    %86 = math.sqrt %cst : f32
    %87 = arith.remsi %c1111448644_i32, %c722420078_i32 : i32
    %88 = math.round %73 : f32
    %c0_i16 = arith.constant 0 : i16
    %c0_i16_23 = arith.constant 0 : i16
    %89 = vector.transfer_read %alloc_20[%23], %c0_i16_23 : memref<15xi16>, vector<i16>
    %90 = arith.maxsi %extracted, %extracted : i1
    %91 = arith.divsi %true_4, %true_4 : i1
    memref.store %true_4, %alloc_17[%c1] : memref<2xi1>
    %92 = arith.xori %c957911893_i32, %c722420078_i32 : i32
    %93 = memref.atomic_rmw ori %c22150_i16, %alloc_8[%c1] : (i16, memref<2xi16>) -> i16
    %94 = math.copysign %73, %73 : f32
    %95 = arith.divui %c1111448644_i32, %c957911893_i32 : i32
    %96 = arith.minui %true, %true : i1
    %97 = index.sizeof
    %98 = arith.divsi %c1830721698_i64, %c1830721698_i64 : i64
    %99 = math.expm1 %6 : tensor<2x6xf16>
    %100 = math.floor %6 : tensor<2x6xf16>
    %101 = arith.xori %c957911893_i32, %c957911893_i32 : i32
    %alloc_24 = memref.alloc() : memref<2x6xi1>
    memref.tensor_store %13, %alloc_24 : memref<2x6xi1>
    %102 = arith.shrsi %c0_i16, %c22150_i16 : i16
    %103 = math.log2 %7 : tensor<1xf32>
    %104 = bufferization.to_memref %12 : memref<2x6xi1>
    %105 = arith.divui %true_4, %true : i1
    %106 = vector.extract %36[0] : vector<1xf16>
    %107 = tensor.empty() : tensor<2x2x2xi64>
    %108 = tensor.empty() : tensor<2x2xi64>
    %109 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%108, %108, %108 : tensor<2x2xi64>, tensor<2x2xi64>, tensor<2x2xi64>) outs(%107 : tensor<2x2x2xi64>) {
    ^bb0(%in: i64, %in_46: i64, %in_47: i64, %out: i64):
      %267 = arith.divsi %c722420078_i32, %c957911893_i32 : i32
      %268 = tensor.empty(%c0) : tensor<?xi16>
      %269 = arith.muli %c0_i16, %c22150_i16 : i16
      %270 = tensor.empty() : tensor<2xi64>
      %271 = math.absf %cst_0 : f16
      %272 = arith.minui %c0_i16, %c0_i16 : i16
      memref.tensor_store %14, %alloc_20 : memref<15xi16>
      %extracted_48 = tensor.extract %270[%c1] : tensor<2xi64>
      %273 = memref.atomic_rmw maxs %c1111448644_i32, %52[%c13] : (i32, memref<15xi32>) -> i32
      %274 = vector.matrix_multiply %65, %82 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      %275 = arith.negf %cst_6 : f16
      %c1_i64 = arith.constant 1 : i64
      %c0_i64 = arith.constant 0 : i64
      %276 = vector.transfer_read %alloc_10[%75], %c0_i64 : memref<15xi64>, vector<i64>
      %277 = vector.broadcast %cst_1 : f16 to vector<1x1xf16>
      %278 = vector.outerproduct %35, %29, %277 {kind = #vector.kind<mul>} : vector<1xf16>, vector<1xf16>
      %279 = arith.negf %cst_6 : f16
      %280 = vector.extract_strided_slice %29 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf16> to vector<1xf16>
      %collapsed_49 = tensor.collapse_shape %11 [[0, 1]] : tensor<2x6xi64> into tensor<12xi64>
      %281 = index.sub %c1, %85
      %282 = index.sub %c5, %53
      %cst_50 = arith.constant 3.987200e+04 : f16
      %283 = arith.minui %in_47, %in_46 : i64
      %284 = memref.atomic_rmw andi %c0_i16, %alloc_20[%c3] : (i16, memref<15xi16>) -> i16
      %285 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<mul>} %82, %64, %extracted : vector<1xi1>, vector<1xi1> into i1
      %inserted_51 = tensor.insert %c1060786097_i32 into %5[%c9] : tensor<15xi32>
      %286 = bufferization.clone %alloc_8 : memref<2xi16> to memref<2xi16>
      %287 = arith.maxsi %in, %in : i64
      %288 = math.exp %cst_6 : f16
      %289 = arith.minsi %true, %true_4 : i1
      %290 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %cst_1 : vector<15xf16>, vector<15xf16> into f16
      memref.tensor_store %5, %alloc_14 : memref<15xi32>
      %291 = math.copysign %7, %15 : tensor<1xf32>
      %292 = arith.divf %cst_3, %cst_6 : f16
      %c0_i32 = arith.constant 0 : i32
      %293 = vector.transfer_read %9[%c12], %c0_i32 : tensor<2xi32>, vector<i32>
      linalg.yield %in : i64
    } -> tensor<2x2x2xi64>
    %110 = vector.broadcast %cst_1 : f16 to vector<1x1xf16>
    %111 = vector.outerproduct %36, %35, %110 {kind = #vector.kind<add>} : vector<1xf16>, vector<1xf16>
    %112 = vector.broadcast %c2 : index to vector<2xindex>
    %113 = vector.broadcast %true : i1 to vector<2xi1>
    %114 = vector.broadcast %c1003249353_i64 : i64 to vector<2xi64>
    vector.scatter %alloc[%c2] [%112], %113, %114 : memref<15xi64>, vector<2xindex>, vector<2xi1>, vector<2xi64>
    %115 = index.add %c14, %c2
    %116 = vector.extract_strided_slice %57 {offsets = [0], sizes = [1], strides = [1]} : vector<1xf32> to vector<1xf32>
    %expanded_25 = tensor.expand_shape %7 [[0, 1]] : tensor<1xf32> into tensor<1x1xf32>
    %117 = affine.load %alloc_17[%c11] : memref<2xi1>
    %118 = memref.atomic_rmw assign %c22150_i16, %62[%c1] : (i16, memref<2xi16>) -> i16
    %119 = arith.addf %cst_0, %cst_1 : f16
    %120 = vector.broadcast %cst_5 : f16 to vector<6x1x15xf16>
    %121 = vector.broadcast %cst_0 : f16 to vector<1x15xf16>
    %dest, %accumulated_value = vector.scan <add>, %120, %121 {inclusive = false, reduction_dim = 0 : i64} : vector<6x1x15xf16>, vector<1x15xf16>
    %122 = vector.broadcast %25 : index to vector<2xindex>
    %123 = vector.broadcast %true_4 : i1 to vector<2xi1>
    %124 = vector.broadcast %c22150_i16 : i16 to vector<2xi16>
    vector.scatter %alloc_7[%c1, %c2] [%122], %123, %124 : memref<2x6xi16>, vector<2xindex>, vector<2xi1>, vector<2xi16>
    %125 = index.add %53, %c3
    %extracted_26 = tensor.extract %12[%c0, %c0] : tensor<2x6xi1>
    %126 = memref.load %alloc_12[%c0] : memref<2xi32>
    %127 = math.ipowi %true, %true : i1
    %128 = math.copysign %15, %15 : tensor<1xf32>
    %129 = math.roundeven %1 : tensor<15xf32>
    %130 = math.log2 %6 : tensor<2x6xf16>
    %131 = arith.divui %true, %117 : i1
    memref.assume_alignment %alloc_10, 2 : memref<15xi64>
    %132 = arith.minsi %117, %extracted : i1
    %133 = index.casts %c1830721698_i64 : i64 to index
    affine.store %extracted_26, %alloc_21[%c2] : memref<15xi1>
    %134 = tensor.empty() : tensor<2x6xi16>
    %135 = affine.for %arg2 = 0 to 19 iter_args(%arg3 = %20) -> (tensor<15xf16>) {
      affine.yield %8 : tensor<15xf16>
    }
    %collapsed = tensor.collapse_shape %134 [[0, 1]] : tensor<2x6xi16> into tensor<12xi16>
    %136 = arith.maxui %extracted_26, %true_4 : i1
    %137 = math.cttz %16 : tensor<15xi16>
    %138 = index.sub %c2, %c8
    %139 = index.sizeof
    %140 = arith.andi %c957911893_i32, %c1060786097_i32 : i32
    scf.execute_region {
      %267 = vector.broadcast %c14 : index to vector<1xindex>
      %268 = vector.broadcast %c22150_i16 : i16 to vector<1xi16>
      vector.scatter %alloc_8[%c1] [%267], %64, %268 : memref<2xi16>, vector<1xindex>, vector<1xi1>, vector<1xi16>
      %expanded_46 = tensor.expand_shape %12 [[0], [1, 2]] : tensor<2x6xi1> into tensor<2x6x1xi1>
      %269 = index.floordivs %23, %c12
      %270 = math.powf %cst_5, %cst_5 : f16
      %271 = vector.broadcast %73 : f32 to vector<2xf32>
      %272 = vector.fma %271, %271, %42 : vector<2xf32>
      %alloc_47 = memref.alloc() : memref<2x6xf32>
      bufferization.dealloc_tensor %4 : tensor<2xi32>
      %c25415782_i64 = arith.constant 25415782 : i64
      %273 = vector.broadcast %c22150_i16 : i16 to vector<15xi16>
      %274 = vector.broadcast %117 : i1 to vector<15xi1>
      %275 = vector.maskedload %62[%c0], %274, %273 : memref<2xi16>, vector<15xi1>, vector<15xi16> into vector<15xi16>
      %276 = vector.matrix_multiply %82, %82 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      %277 = index.divs %115, %133
      %278 = math.expm1 %expanded : tensor<1x1xf32>
      %279 = memref.atomic_rmw maxf %cst_1, %alloc_15[%c0] : (f16, memref<2xf16>) -> f16
      %280 = vector.broadcast %73 : f32 to vector<1xf32>
      %281 = vector.fma %280, %58, %116 : vector<1xf32>
      %282 = arith.shrsi %extracted_26, %117 : i1
      %283 = tensor.empty() : tensor<6x2xi1>
      %284 = tensor.empty() : tensor<2x2xi1>
      %285 = linalg.matmul ins(%13, %283 : tensor<2x6xi1>, tensor<6x2xi1>) outs(%284 : tensor<2x2xi1>) -> tensor<2x2xi1>
      scf.yield
    }
    %141 = index.floordivs %25, %c12
    %142 = arith.remui %117, %extracted_26 : i1
    %143 = bufferization.clone %alloc_19 : memref<2x6xf16> to memref<2x6xf16>
    %144 = index.ceildivu %138, %c14
    %145 = index.floordivs %139, %138
    %146 = math.atan %20 : tensor<15xf16>
    %147 = memref.load %alloc_9[%c0, %c4] : memref<2x6xf16>
    %148 = bufferization.clone %alloc_18 : memref<1xf32> to memref<1xf32>
    %149 = math.ceil %1 : tensor<15xf32>
    %150 = math.ipowi %extracted, %117 : i1
    %151 = vector.broadcast %extracted : i1 to vector<2x1xi1>
    %dest_27, %accumulated_value_28 = vector.scan <minui>, %151, %64 {inclusive = false, reduction_dim = 0 : i64} : vector<2x1xi1>, vector<1xi1>
    bufferization.dealloc_tensor %13 : tensor<2x6xi1>
    %expanded_29 = tensor.expand_shape %2 [[0, 1]] : tensor<15xf16> into tensor<15x1xf16>
    %152 = arith.remf %73, %cst : f32
    %153 = vector.broadcast %extracted : i1 to vector<1x1xi1>
    %dest_30, %accumulated_value_31 = vector.scan <minui>, %153, %65 {inclusive = true, reduction_dim = 0 : i64} : vector<1x1xi1>, vector<1xi1>
    %154 = arith.cmpi ult, %c957911893_i32, %c957911893_i32 : i32
    memref.tensor_store %11, %alloc_16 : memref<2x6xi64>
    %155 = vector.load %alloc_19[%c0, %c4] : memref<2x6xf16>, vector<15xf16>
    %156 = math.fma %73, %cst, %73 : f32
    %157 = scf.execute_region -> tensor<1xi1> {
      %267 = index.sizeof
      %268 = index.ceildivu %25, %139
      %269 = arith.ceildivsi %c1830721698_i64, %c1830721698_i64 : i64
      %alloc_46 = memref.alloc() : memref<1x15xf16>
      %270 = tensor.empty() : tensor<15x15xf16>
      %271 = linalg.matmul ins(%expanded_29, %alloc_46 : tensor<15x1xf16>, memref<1x15xf16>) outs(%270 : tensor<15x15xf16>) -> tensor<15x15xf16>
      %rank_47 = tensor.rank %collapsed : tensor<12xi16>
      %272 = arith.divsi %c1003249353_i64, %c1003249353_i64 : i64
      %273 = index.ceildivu %75, %c5
      %274 = bufferization.clone %alloc_7 : memref<2x6xi16> to memref<2x6xi16>
      %275 = arith.shli %c0_i16, %c0_i16 : i16
      %rank_48 = tensor.rank %14 : tensor<15xi16>
      %276 = affine.load %alloc_22[%c10] : memref<1xi1>
      %277 = arith.cmpf oeq, %cst_1, %cst_1 : f16
      %278 = vector.broadcast %276 : i1 to vector<2xi1>
      %279 = vector.broadcast %c722420078_i32 : i32 to vector<2xi32>
      %280 = vector.gather %1[%74] [%279], %278, %42 : tensor<15xf32>, vector<2xi32>, vector<2xi1>, vector<2xf32> into vector<2xf32>
      %281 = vector.insert %73, %58 [0] : f32 into vector<1xf32>
      %282 = vector.bitcast %155 : vector<15xf16> to vector<15xf16>
      %283 = vector.create_mask %c0, %85 : vector<2x6xi1>
      scf.yield %3 : tensor<1xi1>
    }
    %cst_32 = arith.constant 1.000000e+00 : f32
    %158 = vector.transfer_read %alloc_18[%125], %cst_32 : memref<1xf32>, vector<f32>
    %159 = math.round %63 : tensor<2xf32>
    %160 = math.tanh %15 : tensor<1xf32>
    %161 = math.exp2 %cst_3 : f16
    %162 = index.maxu %24, %c13
    %163 = math.log %8 : tensor<15xf16>
    %164 = tensor.empty() : tensor<2x2x2xi64>
    %alloc_33 = memref.alloc() : memref<2x2xi64>
    %165 = tensor.empty() : tensor<2xi64>
    %166 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloc_33, %alloc_33, %165 : memref<2x2xi64>, memref<2x2xi64>, tensor<2xi64>) outs(%164 : tensor<2x2x2xi64>) {
    ^bb0(%in: i64, %in_46: i64, %in_47: i64, %out: i64):
      %267 = math.sqrt %expanded_29 : tensor<15x1xf16>
      %268 = arith.floordivsi %extracted_26, %extracted_26 : i1
      %alloc_48 = memref.alloc() : memref<2x6xf16>
      bufferization.dealloc_tensor %22 : tensor<f16>
      %269 = index.castu %c8 : index to i32
      %270 = vector.reduction <add>, %43 : vector<2xf32> into f32
      %271 = math.tan %21 : tensor<f16>
      %272 = arith.addi %c1060786097_i32, %c1111448644_i32 : i32
      %273 = arith.remf %cst_32, %cst : f32
      %274 = math.absf %21 : tensor<f16>
      %275 = index.ceildivu %144, %139
      memref.assume_alignment %alloc_15, 16 : memref<2xf16>
      %276 = vector.extract %155[14] : vector<15xf16>
      %277 = arith.cmpf ueq, %cst_0, %cst_0 : f16
      %278 = math.copysign %cst_6, %cst_0 : f16
      %279 = memref.load %alloc_10[%c6] : memref<15xi64>
      %280 = memref.atomic_rmw maxu %c0_i16, %alloc_20[%c2] : (i16, memref<15xi16>) -> i16
      %281 = bufferization.clone %alloc_16 : memref<2x6xi64> to memref<2x6xi64>
      %282 = vector.broadcast %cst_32 : f32 to vector<1x1xf32>
      %283 = vector.outerproduct %57, %58, %282 {kind = #vector.kind<mul>} : vector<1xf32>, vector<1xf32>
      %284 = math.ipowi %13, %12 : tensor<2x6xi1>
      %285 = math.powf %cst_6, %cst_1 : f16
      %286 = index.sub %c3, %144
      %rank_49 = tensor.rank %17 : tensor<15xi16>
      %287 = math.expm1 %2 : tensor<15xf16>
      %288 = vector.bitcast %64 : vector<1xi1> to vector<1xi1>
      %289 = arith.negf %cst_6 : f16
      %290 = arith.maxf %73, %cst_32 : f32
      %291 = math.rsqrt %cst_32 : f32
      memref.assume_alignment %104, 8 : memref<2x6xi1>
      %collapsed_50 = tensor.collapse_shape %11 [[0, 1]] : tensor<2x6xi64> into tensor<12xi64>
      %292 = vector.broadcast %cst : f32 to vector<1xf32>
      %293 = vector.fma %292, %292, %116 : vector<1xf32>
      %294 = math.cttz %17 : tensor<15xi16>
      linalg.yield %in_47 : i64
    } -> tensor<2x2x2xi64>
    %167 = vector.extract %42[0] : vector<2xf32>
    %168 = vector.bitcast %155 : vector<15xf16> to vector<15xi16>
    %169 = bufferization.to_memref %7 : memref<1xf32>
    %170 = arith.mulf %cst_1, %cst_6 : f16
    %171 = arith.negf %cst_1 : f16
    %172 = math.cttz %18 : tensor<i32>
    %inserted = tensor.insert %c0_i16 into %collapsed[%c2] : tensor<12xi16>
    %173 = scf.index_switch %138 -> vector<2x6xi32> 
    case 1 {
      %267 = affine.for %arg2 = 0 to 59 iter_args(%arg3 = %cst_5) -> (f16) {
        affine.yield %cst_0 : f16
      }
      %268 = vector.extract_strided_slice %155 {offsets = [8], sizes = [5], strides = [1]} : vector<15xf16> to vector<5xf16>
      %269 = vector.create_mask %c0, %53 : vector<2x6xi1>
      %270 = arith.remui %c22150_i16, %c22150_i16 : i16
      %271 = index.castu %c1830721698_i64 : i64 to index
      %272 = index.sizeof
      %273 = vector.extract %57[0] : vector<1xf32>
      %extracted_46 = tensor.extract %9[%c0] : tensor<2xi32>
      %cast_47 = tensor.cast %13 : tensor<2x6xi1> to tensor<?x?xi1>
      %expanded_48 = tensor.expand_shape %63 [[0, 1]] : tensor<2xf32> into tensor<2x1xf32>
      %274 = tensor.empty() : tensor<2xi32>
      %275 = math.copysign %15, %15 : tensor<1xf32>
      %cast_49 = tensor.cast %157 : tensor<1xi1> to tensor<?xi1>
      %276 = vector.extract_strided_slice %19 {offsets = [13], sizes = [1], strides = [1]} : vector<15xf16> to vector<1xf16>
      %277 = math.log2 %8 : tensor<15xf16>
      scf.if %true {
        %279 = arith.minui %c22150_i16, %c0_i16 : i16
        vector.print %43 : vector<2xf32>
        %280 = memref.atomic_rmw maxf %cst, %169[%c0] : (f32, memref<1xf32>) -> f32
        %281 = math.roundeven %cst_3 : f16
        %282 = arith.subi %c0_i16, %c0_i16 : i16
        %283 = math.ctpop %13 : tensor<2x6xi1>
        %284 = vector.insertelement %cst_0, %35[%125 : index] : vector<1xf16>
        %285 = math.ceil %cst : f32
      } else {
        %279 = math.cttz %c1830721698_i64 : i64
        %280 = vector.insert %cst, %43 [1] : f32 into vector<2xf32>
        %281 = tensor.empty() : tensor<2x6xf16>
        %282 = arith.shrui %c1003249353_i64, %c1003249353_i64 : i64
        %283 = arith.minui %c0_i16, %c0_i16 : i16
        %284 = arith.divsi %c957911893_i32, %c1111448644_i32 : i32
        %cast_50 = tensor.cast %1 : tensor<15xf32> to tensor<?xf32>
        %285 = vector.multi_reduction <add>, %268, %268 [] : vector<5xf16> to vector<5xf16>
      }
      %278 = vector.broadcast %c1060786097_i32 : i32 to vector<2x6xi32>
      scf.yield %278 : vector<2x6xi32>
    }
    case 2 {
      %267 = math.powf %cst_5, %cst_5 : f16
      %268 = math.tan %21 : tensor<f16>
      %269 = memref.realloc %alloc_22 : memref<1xi1> to memref<15xi1>
      memref.assume_alignment %52, 8 : memref<15xi32>
      %270 = math.log10 %cst_0 : f16
      %271 = bufferization.to_memref %12 : memref<2x6xi1>
      %272 = math.fma %63, %63, %63 : tensor<2xf32>
      %273 = arith.divf %cst_32, %cst : f32
      memref.assume_alignment %169, 8 : memref<1xf32>
      %274 = vector.broadcast %cst_5 : f16 to vector<1x1xf16>
      %275 = vector.outerproduct %29, %29, %274 {kind = #vector.kind<maxf>} : vector<1xf16>, vector<1xf16>
      %276 = bufferization.clone %52 : memref<15xi32> to memref<15xi32>
      %277 = math.absf %8 : tensor<15xf16>
      %278 = arith.muli %117, %extracted : i1
      %279 = vector.broadcast %true : i1 to vector<15xi1>
      %280 = vector.broadcast %c1111448644_i32 : i32 to vector<15xi32>
      %281 = vector.gather %8[%c5] [%280], %279, %155 : tensor<15xf16>, vector<15xi32>, vector<15xi1>, vector<15xf16> into vector<15xf16>
      %282 = memref.alloca_scope  -> (i16) {
        %285 = vector.broadcast %c1003249353_i64 : i64 to vector<6xi64>
        %286 = vector.broadcast %117 : i1 to vector<6xi1>
        %287 = vector.maskedload %alloc[%c0], %286, %285 : memref<15xi64>, vector<6xi1>, vector<6xi64> into vector<6xi64>
        %288 = vector.broadcast %cst_3 : f16 to vector<1x2xf16>
        %289 = vector.broadcast %cst_6 : f16 to vector<2xf16>
        %dest_46, %accumulated_value_47 = vector.scan <mul>, %288, %289 {inclusive = false, reduction_dim = 0 : i64} : vector<1x2xf16>, vector<2xf16>
        %290 = arith.floordivsi %c22150_i16, %c0_i16 : i16
        %291 = affine.load %alloc_7[%c1, %c0] : memref<2x6xi16>
        %292 = arith.subi %117, %true : i1
        %293 = index.ceildivs %c4, %c3
        %from_elements_48 = tensor.from_elements %c1003249353_i64, %c1830721698_i64, %c1830721698_i64, %c1830721698_i64, %c1830721698_i64, %c1003249353_i64, %c1003249353_i64, %c1003249353_i64, %c1830721698_i64, %c1830721698_i64, %c1830721698_i64, %c1003249353_i64, %c1830721698_i64, %c1830721698_i64, %c1830721698_i64 : tensor<15xi64>
        %294 = vector.insertelement %extracted_26, %65[%c11 : index] : vector<1xi1>
        %295 = affine.apply affine_map<(d0) -> ((d0 + (d0 mod 64) * 2) floordiv 128)>(%c2)
        %296 = bufferization.clone %143 : memref<2x6xf16> to memref<2x6xf16>
        %297 = math.roundeven %22 : tensor<f16>
        %298 = math.log2 %8 : tensor<15xf16>
        %299 = affine.apply affine_map<(d0, d1, d2, d3) -> (d1 - 32)>(%53, %c14, %53, %75)
        %alloc_49 = memref.alloc() : memref<1xi16>
        %300 = vector.broadcast %c22150_i16 : i16 to vector<2xi16>
        %301 = vector.broadcast %extracted_26 : i1 to vector<2xi1>
        %302 = vector.broadcast %c722420078_i32 : i32 to vector<2xi32>
        %303 = vector.gather %alloc_49[%133] [%302], %301, %300 : memref<1xi16>, vector<2xi32>, vector<2xi1>, vector<2xi16> into vector<2xi16>
        %304 = index.add %c8, %c4
        %305 = arith.muli %c1111448644_i32, %c722420078_i32 : i32
        %306 = math.exp2 %21 : tensor<f16>
        %307 = arith.shli %c22150_i16, %c0_i16 : i16
        %308 = math.absi %157 : tensor<1xi1>
        %309 = math.copysign %20, %8 : tensor<15xf16>
        %310 = math.round %6 : tensor<2x6xf16>
        %311 = math.roundeven %2 : tensor<15xf16>
        %cst_50 = arith.constant 3.270400e+04 : f16
        %inserted_51 = tensor.insert %291 into %34[%c14] : tensor<15xi16>
        %312 = arith.floordivsi %c22150_i16, %291 : i16
        %313 = index.divs %24, %c7
        %314 = math.ceil %cst_0 : f16
        %315 = vector.gather %62[%c13] [%280], %279, %168 : memref<2xi16>, vector<15xi32>, vector<15xi1>, vector<15xi16> into vector<15xi16>
        %316 = arith.negf %cst_2 : f32
        %317 = arith.maxsi %c957911893_i32, %c722420078_i32 : i32
        %rank_52 = tensor.rank %from_elements_48 : tensor<15xi64>
        %inserted_53 = tensor.insert %c0_i16 into %134[%c0, %c3] : tensor<2x6xi16>
        memref.alloca_scope.return %291 : i16
      }
      %283 = arith.maxf %cst_3, %cst_1 : f16
      %284 = vector.broadcast %c1060786097_i32 : i32 to vector<2x6xi32>
      scf.yield %284 : vector<2x6xi32>
    }
    case 3 {
      affine.store %extracted_26, %104[%c4, %c5] : memref<2x6xi1>
      %267 = arith.shrui %true_4, %extracted_26 : i1
      %268 = math.ceil %22 : tensor<f16>
      %269 = vector.matrix_multiply %29, %155 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 15 : i32} : (vector<1xf16>, vector<15xf16>) -> vector<15xf16>
      %270 = index.casts %true_4 : i1 to index
      %271 = arith.minsi %c1060786097_i32, %c957911893_i32 : i32
      %272 = vector.bitcast %35 : vector<1xf16> to vector<1xf16>
      %273 = scf.if %extracted -> (i16) {
        %282 = index.floordivs %75, %c4
        %283 = memref.load %alloc_22[%c0] : memref<1xi1>
        %extracted_47 = tensor.extract %10[%c0] : tensor<1xi16>
        %284 = math.floor %cst_32 : f32
        %285 = arith.remui %c0_i16, %extracted_47 : i16
        %extracted_48 = tensor.extract %8[%c12] : tensor<15xf16>
        %286 = vector.broadcast %cst : f32 to vector<1xf32>
        %287 = vector.fma %286, %286, %57 : vector<1xf32>
        %288 = math.ceil %1 : tensor<15xf32>
        scf.yield %c22150_i16 : i16
      } else {
        %282 = memref.load %alloc_21[%c6] : memref<15xi1>
        %283 = tensor.empty() : tensor<2xi1>
        %284 = vector.broadcast %cst_32 : f32 to vector<2xf32>
        %285 = vector.fma %284, %43, %43 : vector<2xf32>
        %alloc_47 = memref.alloc() : memref<6x15xf16>
        %286 = tensor.empty() : tensor<2x15xf16>
        %287 = linalg.matmul ins(%6, %alloc_47 : tensor<2x6xf16>, memref<6x15xf16>) outs(%286 : tensor<2x15xf16>) -> tensor<2x15xf16>
        %288 = vector.matrix_multiply %284, %57 {lhs_columns = 1 : i32, lhs_rows = 2 : i32, rhs_columns = 1 : i32} : (vector<2xf32>, vector<1xf32>) -> vector<2xf32>
        %289 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<minf>} %35, %36, %cst_5 : vector<1xf16>, vector<1xf16> into f16
        %alloc_48 = memref.alloc() : memref<6x6xf16>
        %290 = tensor.empty() : tensor<2x6xf16>
        %291 = linalg.matmul ins(%6, %alloc_48 : tensor<2x6xf16>, memref<6x6xf16>) outs(%290 : tensor<2x6xf16>) -> tensor<2x6xf16>
        %292 = math.absi %reduced : tensor<i32>
        scf.yield %c0_i16 : i16
      }
      %expanded_46 = tensor.expand_shape %5 [[0, 1]] : tensor<15xi32> into tensor<15x1xi32>
      %274 = arith.floordivsi %true, %extracted : i1
      %275 = math.atan %expanded : tensor<1x1xf32>
      %276 = arith.maxui %c722420078_i32, %c957911893_i32 : i32
      %277 = math.atan %cst_2 : f32
      %278 = bufferization.to_memref %15 : memref<1xf32>
      %279 = vector.insertelement %cst_6, %29[%139 : index] : vector<1xf16>
      %280 = index.ceildivu %53, %141
      %281 = vector.broadcast %c722420078_i32 : i32 to vector<2x6xi32>
      scf.yield %281 : vector<2x6xi32>
    }
    default {
      %267 = arith.ori %extracted, %extracted_26 : i1
      %268 = memref.load %104[%c0, %c5] : memref<2x6xi1>
      %269 = math.rsqrt %21 : tensor<f16>
      %270 = arith.divui %c722420078_i32, %c957911893_i32 : i32
      %271 = arith.remsi %true_4, %true : i1
      %272 = bufferization.clone %alloc_18 : memref<1xf32> to memref<1xf32>
      %273 = math.ctlz %true_4 : i1
      %274 = arith.cmpi ugt, %c1060786097_i32, %c1060786097_i32 : i32
      %275 = bufferization.to_tensor %alloc_11 : memref<15xf16>
      %276 = index.casts %c22150_i16 : i16 to index
      %277 = memref.atomic_rmw mulf %cst, %alloc_18[%c0] : (f32, memref<1xf32>) -> f32
      %inserted_46 = tensor.insert %true_4 into %13[%c1, %c0] : tensor<2x6xi1>
      %278 = tensor.empty() : tensor<15xi64>
      %279 = index.casts %extracted : i1 to index
      %280 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %36, %36, %cst_5 : vector<1xf16>, vector<1xf16> into f16
      %281 = math.log2 %expanded : tensor<1x1xf32>
      %282 = vector.broadcast %c957911893_i32 : i32 to vector<2x6xi32>
      scf.yield %282 : vector<2x6xi32>
    }
    %174 = tensor.empty() : tensor<2x6xf16>
    %175 = math.exp2 %15 : tensor<1xf32>
    %176 = index.ceildivu %c7, %c0
    scf.if %117 {
      %267 = arith.shli %c957911893_i32, %c1111448644_i32 : i32
      %268 = math.sqrt %7 : tensor<1xf32>
      %269 = bufferization.clone %alloc_8 : memref<2xi16> to memref<2xi16>
      memref.store %c0_i16, %alloc_20[%c8] : memref<15xi16>
      %270 = vector.create_mask %24 : vector<2xi1>
      %collapsed_46 = tensor.collapse_shape %13 [[0, 1]] : tensor<2x6xi1> into tensor<12xi1>
      %271 = math.roundeven %cst_2 : f32
      %272 = math.fma %73, %cst_2, %cst_2 : f32
    }
    %177 = index.ceildivu %c1, %138
    %178 = index.ceildivu %53, %133
    %179 = arith.negf %cst_6 : f16
    %180 = math.tan %1 : tensor<15xf32>
    %181 = index.mul %24, %c5
    %182 = arith.subi %true_4, %true_4 : i1
    %expanded_34 = tensor.expand_shape %9 [[0, 1]] : tensor<2xi32> into tensor<2x1xi32>
    %183 = index.floordivs %c1, %144
    %184 = arith.minui %c722420078_i32, %c1111448644_i32 : i32
    %185 = index.add %c9, %181
    %186 = math.sqrt %15 : tensor<1xf32>
    %splat = tensor.splat %c957911893_i32 : tensor<2x6xi32>
    %187 = vector.create_mask %c13 : vector<15xi1>
    affine.store %c957911893_i32, %alloc_14[%c9] : memref<15xi32>
    %188 = math.ceil %1 : tensor<15xf32>
    %189 = math.exp %2 : tensor<15xf16>
    %190 = arith.shrui %c1060786097_i32, %c957911893_i32 : i32
    %191 = arith.shrsi %c1060786097_i32, %c722420078_i32 : i32
    %192 = math.atan %cst_0 : f16
    %193 = index.sizeof
    %194 = tensor.empty() : tensor<6x2xi1>
    %195 = tensor.empty() : tensor<2x2xi1>
    %196 = linalg.matmul ins(%27, %194 : tensor<2x6xi1>, tensor<6x2xi1>) outs(%195 : tensor<2x2xi1>) -> tensor<2x2xi1>
    %197 = vector.create_mask %23 : vector<15xi1>
    %198 = bufferization.to_memref %22 : memref<f16>
    %199 = vector.broadcast %cst_5 : f16 to vector<15x15xf16>
    %200 = vector.outerproduct %155, %155, %199 {kind = #vector.kind<maxf>} : vector<15xf16>, vector<15xf16>
    %201 = vector.bitcast %116 : vector<1xf32> to vector<1xf32>
    %202 = arith.xori %c1003249353_i64, %c1830721698_i64 : i64
    %expanded_35 = tensor.expand_shape %157 [[0, 1]] : tensor<1xi1> into tensor<1x1xi1>
    %extracted_36 = tensor.extract %15[%c0] : tensor<1xf32>
    %alloc_37 = memref.alloc() : memref<15xf16>
    %203 = tensor.empty() : tensor<2xf32>
    %204 = memref.atomic_rmw mulf %cst_3, %alloc_9[%c0, %c5] : (f16, memref<2x6xf16>) -> f16
    %205 = math.powf %7, %7 : tensor<1xf32>
    %206 = index.divu %183, %115
    %207 = math.fma %6, %174, %174 : tensor<2x6xf16>
    %208 = arith.shli %c957911893_i32, %c957911893_i32 : i32
    %209 = bufferization.to_tensor %alloc_19 : memref<2x6xf16>
    %from_elements = tensor.from_elements %c1060786097_i32 : tensor<1xi32>
    %210 = bufferization.clone %alloc_7 : memref<2x6xi16> to memref<2x6xi16>
    %211 = math.floor %15 : tensor<1xf32>
    %212 = affine.max affine_map<(d0, d1, d2, d3) -> (d2 floordiv 16 + 1, (d3 + d3 + 16) * 8)>(%75, %97, %125, %c2)
    %213 = math.rsqrt %7 : tensor<1xf32>
    %214 = arith.minsi %c1060786097_i32, %c722420078_i32 : i32
    %215 = arith.remsi %c22150_i16, %c0_i16 : i16
    %216 = arith.minf %73, %cst_32 : f32
    %cast = tensor.cast %1 : tensor<15xf32> to tensor<?xf32>
    %217 = arith.minui %c0_i16, %c22150_i16 : i16
    %218 = vector.broadcast %cst_2 : f32 to vector<1x1xf32>
    %219 = vector.outerproduct %57, %116, %218 {kind = #vector.kind<maxf>} : vector<1xf32>, vector<1xf32>
    %220 = math.exp2 %2 : tensor<15xf16>
    %221 = arith.divsi %true_4, %true : i1
    %rank = tensor.rank %expanded : tensor<1x1xf32>
    %extracted_38 = tensor.extract %0[%c0] : tensor<1xi64>
    %222 = index.add %178, %c13
    %223 = arith.minsi %117, %extracted : i1
    %224 = index.mul %c6, %145
    %225 = math.rsqrt %7 : tensor<1xf32>
    %226 = index.ceildivs %24, %125
    %227 = math.tan %8 : tensor<15xf16>
    %228 = math.tan %cst_2 : f32
    %229 = arith.cmpi uge, %c1060786097_i32, %c1111448644_i32 : i32
    %230 = arith.cmpi slt, %c1111448644_i32, %c957911893_i32 : i32
    %231 = arith.remf %extracted_36, %cst_2 : f32
    %232 = math.tanh %expanded_25 : tensor<1x1xf32>
    %233 = math.copysign %cst_3, %cst_1 : f16
    vector.print %36 : vector<1xf16>
    %234 = math.sqrt %22 : tensor<f16>
    %235 = arith.maxsi %c1830721698_i64, %c1003249353_i64 : i64
    %236 = vector.multi_reduction <mul>, %58, %cst_32 [0] : vector<1xf32> to f32
    %237 = vector.broadcast %c0_i16 : i16 to vector<i16>
    %238 = vector.transfer_write %237, %14[%rank] : vector<i16>, tensor<15xi16>
    %239 = arith.divf %cst_32, %extracted_36 : f32
    %240 = index.add %141, %rank
    %241 = arith.xori %c1111448644_i32, %c1111448644_i32 : i32
    affine.for %arg2 = 0 to 75 {
    }
    %242 = affine.if affine_set<(d0) : (-(d0 - d0 mod 16) - (d0 * 2) ceildiv 64 + 16 >= 0)>(%c5) -> i16 {
      %267 = scf.execute_region -> index {
        %273 = vector.insertelement %cst_3, %35[%240 : index] : vector<1xf16>
        %274 = arith.muli %extracted_38, %c1830721698_i64 : i64
        %275 = bufferization.clone %alloc_9 : memref<2x6xf16> to memref<2x6xf16>
        %expanded_46 = tensor.expand_shape %6 [[0], [1, 2]] : tensor<2x6xf16> into tensor<2x6x1xf16>
        %276 = tensor.empty() : tensor<15xi1>
        %277 = vector.broadcast %extracted : i1 to vector<2x6xi1>
        %278 = vector.broadcast %c1060786097_i32 : i32 to vector<2x6xi32>
        %279 = vector.gather %276[%178] [%278], %277, %277 : tensor<15xi1>, vector<2x6xi32>, vector<2x6xi1>, vector<2x6xi1> into vector<2x6xi1>
        %280 = arith.divsi %extracted_26, %true : i1
        %281 = arith.maxf %73, %cst_2 : f32
        %282 = affine.max affine_map<(d0, d1, d2, d3) -> (d3 floordiv 16, (d0 + d1) * 64)>(%178, %139, %133, %c13)
        %283 = vector.insert %cst_3, %35 [0] : f16 into vector<1xf16>
        %284 = math.powf %73, %cst_2 : f32
        %inserted_47 = tensor.insert %cst_1 into %22[] : tensor<f16>
        %alloc_48 = memref.alloc() : memref<1xi32>
        %285 = vector.matrix_multiply %82, %82 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
        %286 = arith.minui %c1003249353_i64, %c1003249353_i64 : i64
        %287 = arith.remui %c722420078_i32, %c957911893_i32 : i32
        %288 = arith.shli %extracted_26, %extracted_26 : i1
        scf.yield %185 : index
      }
      %268 = memref.alloca_scope  -> (memref<1xf32>) {
        %273 = bufferization.clone %210 : memref<2x6xi16> to memref<2x6xi16>
        %extracted_46 = tensor.extract %174[%c0, %c0] : tensor<2x6xf16>
        %274 = math.copysign %cst_3, %cst_3 : f16
        %275 = math.ceil %cst_0 : f16
        %276 = vector.reduction <maxui>, %197 : vector<15xi1> into i1
        %277 = memref.atomic_rmw minf %cst_3, %143[%c1, %c5] : (f16, memref<2x6xf16>) -> f16
        memref.assume_alignment %alloc_18, 1 : memref<1xf32>
        %278 = vector.bitcast %187 : vector<15xi1> to vector<15xi1>
        %279 = memref.atomic_rmw minu %c1003249353_i64, %alloc[%c9] : (i64, memref<15xi64>) -> i64
        memref.store %true, %alloc_17[%c0] : memref<2xi1>
        %280 = index.sub %c3, %85
        %281 = arith.shli %117, %extracted_26 : i1
        %alloc_47 = memref.alloc() : memref<1xi64>
        %282 = arith.cmpi ne, %c1003249353_i64, %c1003249353_i64 : i64
        %283 = arith.remui %c0_i16, %c22150_i16 : i16
        %expanded_48 = tensor.expand_shape %209 [[0], [1, 2]] : tensor<2x6xf16> into tensor<2x6x1xf16>
        %284 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<add>} %19, %19, %cst_5 : vector<15xf16>, vector<15xf16> into f16
        %285 = math.copysign %cst_0, %cst_6 : f16
        %286 = index.sizeof
        %287 = index.add %c10, %125
        %288 = tensor.empty(%c0) : tensor<?xi1>
        %cst_49 = arith.constant 3.241600e+04 : f16
        %289 = index.sub %280, %240
        %290 = memref.atomic_rmw andi %c0_i16, %alloc_7[%c0, %c0] : (i16, memref<2x6xi16>) -> i16
        %291 = affine.load %148[%c0] : memref<1xf32>
        %292 = bufferization.clone %273 : memref<2x6xi16> to memref<2x6xi16>
        %293 = vector.multi_reduction <mul>, %82, %extracted [0] : vector<1xi1> to i1
        %294 = index.maxs %rank, %138
        %295 = math.log10 %6 : tensor<2x6xf16>
        affine.store %c0_i16, %alloc_8[%c13] : memref<2xi16>
        %cst_50 = arith.constant 4.444800e+04 : f16
        %296 = math.rsqrt %15 : tensor<1xf32>
        memref.alloca_scope.return %alloc_18 : memref<1xf32>
      }
      affine.store %c0_i16, %alloc_8[%c3] : memref<2xi16>
      affine.store %extracted_38, %alloc_16[%c6, %c2] : memref<2x6xi64>
      %269 = vector.contract {indexing_maps = [affine_map<(d0) -> (d0)>, affine_map<(d0) -> (d0)>, affine_map<(d0) -> ()>], iterator_types = ["reduction"], kind = #vector.kind<or>} %64, %82, %true : vector<1xi1>, vector<1xi1> into i1
      %270 = vector.multi_reduction <maxf>, %57, %116 [] : vector<1xf32> to vector<1xf32>
      %271 = affine.max affine_map<(d0, d1, d2) -> (d2 * 2, d1 mod 4, -d2)>(%177, %177, %193)
      %272 = arith.minsi %extracted_26, %117 : i1
      affine.yield %c0_i16 : i16
    } else {
      %267 = affine.max affine_map<(d0, d1, d2) -> (-d2 - 32, d2, d1 + 1, d0 + 16)>(%c12, %53, %c10)
      %268 = tensor.empty() : tensor<1x1xf32>
      %269 = linalg.matmul ins(%expanded, %expanded_25 : tensor<1x1xf32>, tensor<1x1xf32>) outs(%268 : tensor<1x1xf32>) -> tensor<1x1xf32>
      %270 = arith.remsi %c957911893_i32, %c1111448644_i32 : i32
      %271 = tensor.empty(%c4) : tensor<?x6xi64>
      %272 = math.copysign %cst_2, %cst_32 : f32
      %273 = arith.shrsi %extracted_26, %extracted_26 : i1
      %extracted_46 = tensor.extract %12[%c0, %c0] : tensor<2x6xi1>
      %274 = arith.xori %c722420078_i32, %c1111448644_i32 : i32
      affine.yield %c22150_i16 : i16
    }
    %243 = scf.if %extracted -> (i32) {
      %267 = arith.divsi %c1060786097_i32, %c1111448644_i32 : i32
      %268 = affine.max affine_map<(d0, d1, d2) -> (d2 ceildiv 8, d0 mod 4)>(%75, %rank, %177)
      %269 = bufferization.clone %alloc_16 : memref<2x6xi64> to memref<2x6xi64>
      %270 = math.powf %6, %174 : tensor<2x6xf16>
      %271 = arith.minsi %c1003249353_i64, %c1003249353_i64 : i64
      %272 = memref.atomic_rmw minf %cst_1, %143[%c1, %c0] : (f16, memref<2x6xf16>) -> f16
      %273 = arith.subi %c1830721698_i64, %extracted_38 : i64
      %274 = bufferization.clone %alloc_10 : memref<15xi64> to memref<15xi64>
      scf.yield %c1111448644_i32 : i32
    } else {
      %alloc_46 = memref.alloc() : memref<15xi64>
      %267 = math.log10 %6 : tensor<2x6xf16>
      %268 = affine.load %alloc_19[%c5, %c8] : memref<2x6xf16>
      %269 = math.copysign %cst_32, %73 : f32
      %270 = vector.matrix_multiply %29, %35 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xf16>, vector<1xf16>) -> vector<1xf16>
      %271 = math.absf %1 : tensor<15xf32>
      %272 = arith.maxsi %c0_i16, %c0_i16 : i16
      %273 = vector.broadcast %117 : i1 to vector<2xi1>
      %274 = vector.maskedload %67[%c5], %273, %273 : memref<15xi1>, vector<2xi1>, vector<2xi1> into vector<2xi1>
      scf.yield %c957911893_i32 : i32
    }
    affine.for %arg2 = 0 to 40 {
    }
    %244 = arith.minf %cst_0, %cst_0 : f16
    %245 = bufferization.clone %67 : memref<15xi1> to memref<15xi1>
    bufferization.dealloc_tensor %cast : tensor<?xf32>
    %expanded_39 = tensor.expand_shape %7 [[0, 1]] : tensor<1xf32> into tensor<1x1xf32>
    %246 = arith.minsi %true, %117 : i1
    %247 = bufferization.to_tensor %245 : memref<15xi1>
    %248 = index.mul %c2, %c0
    %249 = math.powf %1, %1 : tensor<15xf32>
    affine.store %extracted, %104[%c9, %c12] : memref<2x6xi1>
    %250 = arith.ori %c1060786097_i32, %c957911893_i32 : i32
    %251 = math.tan %7 : tensor<1xf32>
    %from_elements_40 = tensor.from_elements %c957911893_i32, %c1060786097_i32 : tensor<2xi32>
    %252 = vector.bitcast %197 : vector<15xi1> to vector<15xi1>
    %collapsed_41 = tensor.collapse_shape %27 [[0, 1]] : tensor<2x6xi1> into tensor<12xi1>
    %253 = arith.remsi %true_4, %true : i1
    %254 = arith.remf %cst_5, %cst_3 : f16
    %255 = tensor.empty() : tensor<2x2x2xi64>
    %alloc_42 = memref.alloc() : memref<2xi64>
    %256 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2, d0, d1)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%255, %alloc_42, %alloc_42 : tensor<2x2x2xi64>, memref<2xi64>, memref<2xi64>) outs(%255 : tensor<2x2x2xi64>) {
    ^bb0(%in: i64, %in_46: i64, %in_47: i64, %out: i64):
      %267 = memref.atomic_rmw ori %c0_i16, %210[%c1, %c1] : (i16, memref<2x6xi16>) -> i16
      %268 = index.casts %c1111448644_i32 : i32 to index
      %269 = vector.broadcast %extracted : i1 to vector<6x15xi1>
      %270 = vector.broadcast %extracted : i1 to vector<6xi1>
      %dest_48, %accumulated_value_49 = vector.scan <add>, %269, %270 {inclusive = true, reduction_dim = 1 : i64} : vector<6x15xi1>, vector<6xi1>
      memref.store %c1111448644_i32, %alloc_14[%c5] : memref<15xi32>
      %271 = arith.maxf %236, %cst_32 : f32
      %c1709728772_i64 = arith.constant 1709728772 : i64
      %272 = bufferization.to_memref %5 : memref<15xi32>
      %273 = vector.bitcast %64 : vector<1xi1> to vector<1xi1>
      %274 = memref.realloc %alloc_17 : memref<2xi1> to memref<6xi1>
      %275 = vector.insertelement %extracted, %82[%c2 : index] : vector<1xi1>
      %276 = vector.matrix_multiply %29, %19 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 15 : i32} : (vector<1xf16>, vector<15xf16>) -> vector<15xf16>
      %rank_50 = tensor.rank %cast : tensor<?xf32>
      %277 = vector.reduction <and>, %197 : vector<15xi1> into i1
      %278 = arith.xori %c1060786097_i32, %243 : i32
      %279 = memref.realloc %alloc : memref<15xi64> to memref<15xi64>
      %280 = vector.broadcast %176 : index to vector<15xindex>
      vector.scatter %245[%c13] [%280], %197, %197 : memref<15xi1>, vector<15xindex>, vector<15xi1>, vector<15xi1>
      %281 = math.atan %20 : tensor<15xf16>
      %282 = index.sizeof
      %283 = arith.negf %cst_5 : f16
      %284 = vector.matrix_multiply %65, %64 {lhs_columns = 1 : i32, lhs_rows = 1 : i32, rhs_columns = 1 : i32} : (vector<1xi1>, vector<1xi1>) -> vector<1xi1>
      %285 = arith.remui %in, %c1003249353_i64 : i64
      affine.for %arg2 = 0 to 66 {
      }
      affine.for %arg2 = 0 to 74 {
      }
      affine.for %arg2 = 0 to 26 {
      }
      %286 = index.floordivs %c0, %240
      %287 = math.ipowi %collapsed_41, %collapsed_41 : tensor<12xi1>
      %288 = math.fpowi %cst_5, %243 : f16, i32
      %rank_51 = tensor.rank %7 : tensor<1xf32>
      %289 = math.exp %63 : tensor<2xf32>
      %290 = arith.remui %243, %c957911893_i32 : i32
      %291 = bufferization.clone %245 : memref<15xi1> to memref<15xi1>
      %292 = vector.create_mask %c6 : vector<2xi1>
      linalg.yield %in : i64
    } -> tensor<2x2x2xi64>
    %257 = math.sqrt %22 : tensor<f16>
    %258 = arith.maxsi %extracted_38, %c1003249353_i64 : i64
    %259 = math.log2 %expanded_39 : tensor<1x1xf32>
    %260 = affine.max affine_map<(d0, d1, d2, d3) -> (d2, d3 + 32, d3 mod 32 - 8, d2 + 128)>(%224, %212, %c11, %c4)
    %261 = bufferization.to_memref %20 : memref<15xf16>
    %extracted_43 = tensor.extract %12[%c1, %c2] : tensor<2x6xi1>
    %262 = tensor.empty() : tensor<2x6xf16>
    %263 = linalg.copy ins(%174 : tensor<2x6xf16>) outs(%262 : tensor<2x6xf16>) -> tensor<2x6xf16>
    %alloc_44 = memref.alloc() : memref<15xi64>
    linalg.transpose ins(%alloc_10 : memref<15xi64>) outs(%alloc_44 : memref<15xi64>) permutation = [0] 
    %264 = tensor.empty() : tensor<f32>
    %reduced_45 = linalg.reduce ins(%alloc_18 : memref<1xf32>) outs(%264 : tensor<f32>) dimensions = [0] 
      (%in: f32, %init: f32) {
        scf.if %117 {
          %272 = math.ipowi %c957911893_i32, %c1060786097_i32 : i32
          affine.store %243, %alloc_12[%c3] : memref<2xi32>
          %273 = bufferization.to_memref %from_elements : memref<1xi32>
          %c1301343459_i64 = arith.constant 1301343459 : i64
          %274 = index.sizeof
          %275 = math.expm1 %6 : tensor<2x6xf16>
          %276 = math.ceil %6 : tensor<2x6xf16>
          %from_elements_50 = tensor.from_elements %extracted_38, %c1830721698_i64, %c1003249353_i64, %extracted_38, %c1830721698_i64, %c1003249353_i64, %c1830721698_i64, %c1830721698_i64, %extracted_38, %extracted_38, %c1003249353_i64, %c1003249353_i64 : tensor<2x6xi64>
        }
        %267 = math.sqrt %cst_2 : f32
        %268 = vector.broadcast %24 : index to vector<1xindex>
        %269 = vector.broadcast %c722420078_i32 : i32 to vector<1xi32>
        vector.scatter %52[%c10] [%268], %64, %269 : memref<15xi32>, vector<1xindex>, vector<1xi1>, vector<1xi32>
        %expanded_46 = tensor.expand_shape %5 [[0, 1]] : tensor<15xi32> into tensor<15x1xi32>
        %270 = index.casts %181 : index to i32
        %extracted_47 = tensor.extract %1[%c1] : tensor<15xf32>
        %271 = affine.if affine_set<(d0, d1, d2) : (-d1 - (d0 + d2 + d1 - d1) == 0)>(%c10, %c11, %c1) -> i1 {
          %from_elements_50 = tensor.from_elements %extracted_26, %extracted_43, %true, %extracted, %extracted_26, %true_4, %true_4, %117, %117, %117, %extracted_26, %true_4, %true_4, %true, %extracted_26 : tensor<15xi1>
          %272 = memref.load %261[%c9] : memref<15xf16>
          %cast_51 = tensor.cast %7 : tensor<1xf32> to tensor<?xf32>
          %273 = math.atan %7 : tensor<1xf32>
          %274 = math.absf %cst_2 : f32
          %275 = index.ceildivu %c7, %115
          %276 = arith.negf %cst : f32
          %collapsed_52 = tensor.collapse_shape %splat [[0, 1]] : tensor<2x6xi32> into tensor<12xi32>
          affine.yield %true_4 : i1
        } else {
          %272 = vector.insert %init, %201 [0] : f32 into vector<1xf32>
          %alloc_50 = memref.alloc() : memref<2xf32>
          memref.tensor_store %63, %alloc_50 : memref<2xf32>
          %273 = arith.shli %true_4, %extracted_26 : i1
          %274 = index.sizeof
          %275 = arith.ori %c1111448644_i32, %c1060786097_i32 : i32
          %276 = math.exp %6 : tensor<2x6xf16>
          %false = arith.constant false
          %false_51 = arith.constant false
          %277 = vector.transfer_read %104[%75, %c2], %false_51 {permutation_map = affine_map<(d0, d1) -> (0)>} : memref<2x6xi1>, vector<1xi1>
          %278 = math.copysign %expanded_39, %expanded : tensor<1x1xf32>
          affine.yield %extracted : i1
        }
        %expanded_48 = tensor.expand_shape %16 [[0, 1]] : tensor<15xi16> into tensor<15x1xi16>
        %cst_49 = arith.constant 1.000000e+00 : f32
        linalg.yield %cst_49 : f32
      }
    scf.parallel (%arg2, %arg3) = (%c8, %c8) to (%183, %74) step (%c7, %c2) {
      %267 = tensor.empty() : tensor<6x15xf16>
      %268 = tensor.empty() : tensor<2x15xf16>
      %269 = linalg.matmul ins(%6, %267 : tensor<2x6xf16>, tensor<6x15xf16>) outs(%268 : tensor<2x15xf16>) -> tensor<2x15xf16>
      %270 = math.cttz %c1060786097_i32 : i32
      %collapsed_46 = tensor.collapse_shape %12 [[0, 1]] : tensor<2x6xi1> into tensor<12xi1>
      %271 = math.cttz %collapsed_41 : tensor<12xi1>
      %272 = index.castu %145 : index to i32
      %273 = math.expm1 %174 : tensor<2x6xf16>
      %cst_47 = arith.constant 1.000000e+00 : f16
      %274 = vector.transfer_read %268[%183, %c11], %cst_47 : tensor<2x15xf16>, vector<1xf16>
      %275 = arith.minsi %243, %c1060786097_i32 : i32
      %c0_i16_48 = arith.constant 0 : i16
      %276 = vector.transfer_read %14[%240], %c0_i16_48 : tensor<15xi16>, vector<i16>
      %277 = index.castu %226 : index to i32
      affine.for %arg4 = 0 to 44 {
      }
      %expanded_49 = tensor.expand_shape %20 [[0, 1]] : tensor<15xf16> into tensor<15x1xf16>
      %278 = scf.execute_region -> i32 {
        %282 = index.ceildivu %arg2, %23
        %283 = vector.broadcast %true : i1 to vector<6x15x2xi1>
        %284 = vector.broadcast %extracted_26 : i1 to vector<15x2xi1>
        %dest_50, %accumulated_value_51 = vector.scan <xor>, %283, %284 {inclusive = false, reduction_dim = 0 : i64} : vector<6x15x2xi1>, vector<15x2xi1>
        bufferization.dealloc_tensor %cast : tensor<?xf32>
        %285 = arith.remf %cst_6, %cst_3 : f16
        %286 = arith.cmpf true, %cst_0, %cst_0 : f16
        %287 = memref.atomic_rmw maxf %cst_3, %alloc_11[%c6] : (f16, memref<15xf16>) -> f16
        %288 = arith.cmpi ult, %c0_i16_48, %c22150_i16 : i16
        %289 = index.sizeof
        %290 = index.casts %c9 : index to i32
        %291 = math.copysign %63, %203 : tensor<2xf32>
        %292 = math.ipowi %extracted_43, %true : i1
        %293 = index.add %c9, %c9
        %294 = vector.insert %extracted, %252 [9] : i1 into vector<15xi1>
        %295 = vector.broadcast %117 : i1 to vector<15x2xi1>
        %296 = vector.broadcast %117 : i1 to vector<2xi1>
        %dest_52, %accumulated_value_53 = vector.scan <mul>, %295, %296 {inclusive = true, reduction_dim = 0 : i64} : vector<15x2xi1>, vector<2xi1>
        %297 = vector.insertelement %cst_0, %29[%53 : index] : vector<1xf16>
        %298 = arith.shrsi %extracted_26, %extracted_26 : i1
        scf.yield %c957911893_i32 : i32
      }
      %279 = arith.minsi %extracted_38, %extracted_38 : i64
      %280 = math.atan %extracted_36 : f32
      %281 = index.ceildivu %125, %222
      scf.yield
    }
    %265 = affine.vector_load %alloc[%206] : memref<15xi64>, vector<15xi64>
    affine.vector_store %187, %104[%181, %125] : memref<2x6xi1>, vector<15xi1>
    vector.print %19 : vector<15xf16>
    vector.print %29 : vector<1xf16>
    vector.print %35 : vector<1xf16>
    vector.print %36 : vector<1xf16>
    vector.print %42 : vector<2xf32>
    vector.print %43 : vector<2xf32>
    vector.print %57 : vector<1xf32>
    vector.print %58 : vector<1xf32>
    vector.print %64 : vector<1xi1>
    vector.print %65 : vector<1xi1>
    vector.print %82 : vector<1xi1>
    vector.print %116 : vector<1xf32>
    vector.print %155 : vector<15xf16>
    vector.print %168 : vector<15xi16>
    vector.print %187 : vector<15xi1>
    vector.print %197 : vector<15xi1>
    vector.print %201 : vector<1xf32>
    vector.print %237 : vector<i16>
    vector.print %252 : vector<15xi1>
    vector.print %265 : vector<15xi64>
    vector.print %c1830721698_i64 : i64
    vector.print %cst : f32
    vector.print %cst_0 : f16
    vector.print %c957911893_i32 : i32
    vector.print %c1060786097_i32 : i32
    vector.print %c1003249353_i64 : i64
    vector.print %cst_1 : f16
    vector.print %true : i1
    vector.print %cst_2 : f32
    vector.print %cst_3 : f16
    vector.print %c22150_i16 : i16
    vector.print %c722420078_i32 : i32
    vector.print %true_4 : i1
    vector.print %c1111448644_i32 : i32
    vector.print %cst_5 : f16
    vector.print %cst_6 : f16
    vector.print %extracted : i1
    vector.print %73 : f32
    vector.print %c0_i16 : i16
    vector.print %117 : i1
    vector.print %extracted_26 : i1
    vector.print %cst_32 : f32
    vector.print %extracted_36 : f32
    vector.print %extracted_38 : i64
    vector.print %236 : f32
    vector.print %243 : i32
    vector.print %extracted_43 : i1
    %266 = vector.broadcast %c1060786097_i32 : i32 to vector<15xi32>
    return %266 : vector<15xi32>
  }
}
