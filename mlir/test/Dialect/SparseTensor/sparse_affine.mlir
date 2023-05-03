// NOTE: Assertions have been autogenerated by utils/generate-test-checks.py
// RUN: mlir-opt %s -sparsification | FileCheck %s

#SpVec = #sparse_tensor.encoding<{ dimLevelType = [ "compressed" ] }>
#CSR   = #sparse_tensor.encoding<{ dimLevelType = [ "dense", "compressed" ] }>
#Row   = #sparse_tensor.encoding<{ dimLevelType = [ "compressed", "dense" ] }>
#EncDenseVec = #sparse_tensor.encoding<{ dimLevelType = [ "dense" ] }>

#trait1 = {
  indexing_maps = [
    affine_map<(i) -> (i)>,  // a
    affine_map<(i) -> (3)>,  // b
    affine_map<(i) -> (i)>   // x (out)
  ],
  iterator_types = ["parallel"],
  doc = "x(i) += a(i) * b(3)"
}

// CHECK-LABEL:   func @mul_inv_dense1d(
// CHECK-SAME:                          %[[VAL_0:.*]]: tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>,
// CHECK-SAME:                          %[[VAL_1:.*]]: tensor<4xf32>,
// CHECK-SAME:                          %[[VAL_2:.*]]: tensor<32xf32>) -> tensor<32xf32> {
// CHECK-DAG:       %[[VAL_3:.*]] = arith.constant 0 : index
// CHECK-DAG:       %[[VAL_4:.*]] = arith.constant 3 : index
// CHECK-DAG:       %[[VAL_5:.*]] = arith.constant 1 : index
// CHECK-DAG:       %[[VAL_6:.*]] = sparse_tensor.pointers %[[VAL_0]] {dimension = 0 : index} : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK-DAG:       %[[VAL_7:.*]] = sparse_tensor.indices %[[VAL_0]] {dimension = 0 : index} : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK-DAG:       %[[VAL_8:.*]] = sparse_tensor.values %[[VAL_0]] : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK-DAG:       %[[VAL_9:.*]] = bufferization.to_memref %[[VAL_1]] : memref<4xf32>
// CHECK-DAG:       %[[VAL_11:.*]] = bufferization.to_memref %[[VAL_2]] : memref<32xf32>
// CHECK:           %[[VAL_12:.*]] = memref.load %[[VAL_9]]{{\[}}%[[VAL_4]]] : memref<4xf32>
// CHECK:           %[[VAL_13:.*]] = memref.load %[[VAL_6]]{{\[}}%[[VAL_3]]] : memref<?xindex>
// CHECK:           %[[VAL_14:.*]] = memref.load %[[VAL_6]]{{\[}}%[[VAL_5]]] : memref<?xindex>
// CHECK:           scf.for %[[VAL_15:.*]] = %[[VAL_13]] to %[[VAL_14]] step %[[VAL_5]] {
// CHECK:             %[[VAL_16:.*]] = memref.load %[[VAL_7]]{{\[}}%[[VAL_15]]] : memref<?xindex>
// CHECK:             %[[VAL_17:.*]] = memref.load %[[VAL_11]]{{\[}}%[[VAL_16]]] : memref<32xf32>
// CHECK:             %[[VAL_18:.*]] = memref.load %[[VAL_8]]{{\[}}%[[VAL_15]]] : memref<?xf32>
// CHECK:             %[[VAL_19:.*]] = arith.mulf %[[VAL_18]], %[[VAL_12]] : f32
// CHECK:             %[[VAL_20:.*]] = arith.addf %[[VAL_17]], %[[VAL_19]] : f32
// CHECK:             memref.store %[[VAL_20]], %[[VAL_11]]{{\[}}%[[VAL_16]]] : memref<32xf32>
// CHECK:           }
// CHECK:           %[[VAL_21:.*]] = bufferization.to_tensor %[[VAL_11]] : memref<32xf32>
// CHECK:           return %[[VAL_21]] : tensor<32xf32>
// CHECK:         }
func.func @mul_inv_dense1d(%arga: tensor<32xf32, #SpVec>,
                      %argb: tensor<4xf32>,
                      %argx: tensor<32xf32>) -> tensor<32xf32> {
  %0 = linalg.generic #trait1
     ins(%arga, %argb: tensor<32xf32, #SpVec>, tensor<4xf32>)
    outs(%argx: tensor<32xf32>) {
      ^bb(%a: f32, %b: f32, %x: f32):
        %0 = arith.mulf %a, %b : f32
        %1 = arith.addf %x, %0 : f32
        linalg.yield %1 : f32
  } -> tensor<32xf32>
  return %0 : tensor<32xf32>
}

// CHECK-LABEL:   func.func @mul_inv_sparse1d(
// CHECK-SAME:                                %[[VAL_0:.*]]: tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>,
// CHECK-SAME:                                %[[VAL_1:.*]]: tensor<4xf32, #sparse_tensor.encoding<{{{.*}}}>>)
// CHECK:           %[[VAL_2:.*]] = arith.constant 0 : index
// CHECK:           %[[VAL_3:.*]] = arith.constant 1 : index
// CHECK:           %[[VAL_4:.*]] = arith.constant 3 : index
// CHECK:           %[[VAL_5:.*]] = arith.constant 0.000000e+00 : f32
// CHECK:           %[[VAL_6:.*]] = bufferization.alloc_tensor() : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:           %[[VAL_7:.*]] = sparse_tensor.pointers %[[VAL_0]] {dimension = 0 : index} : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_8:.*]] = sparse_tensor.values %[[VAL_0]] : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xf32>
// CHECK:           %[[VAL_9:.*]] = sparse_tensor.pointers %[[VAL_1]] {dimension = 0 : index} : tensor<4xf32, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_10:.*]] = sparse_tensor.indices %[[VAL_1]] {dimension = 0 : index} : tensor<4xf32, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_11:.*]] = sparse_tensor.values %[[VAL_1]] : tensor<4xf32, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xf32>
// CHECK:           %[[VAL_12:.*]] = memref.load %[[VAL_9]]{{\[}}%[[VAL_2]]] : memref<?xindex>
// CHECK:           %[[VAL_13:.*]] = memref.load %[[VAL_9]]{{\[}}%[[VAL_3]]] : memref<?xindex>
// CHECK:           %[[VAL_14:.*]] = scf.for %[[VAL_15:.*]] = %[[VAL_12]] to %[[VAL_13]] step %[[VAL_3]] iter_args(%[[VAL_16:.*]] = %[[VAL_6]]) -> (tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>) {
// CHECK:             %[[VAL_17:.*]] = memref.load %[[VAL_10]]{{\[}}%[[VAL_15]]] : memref<?xindex>
// CHECK:             %[[VAL_18:.*]] = arith.cmpi eq, %[[VAL_17]], %[[VAL_4]] : index
// CHECK:             %[[VAL_19:.*]] = scf.if %[[VAL_18]] -> (tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>) {
// CHECK:               %[[VAL_20:.*]] = memref.load %[[VAL_11]]{{\[}}%[[VAL_15]]] : memref<?xf32>
// CHECK:               %[[VAL_21:.*]] = memref.load %[[VAL_7]]{{\[}}%[[VAL_2]]] : memref<?xindex>
// CHECK:               %[[VAL_22:.*]] = memref.load %[[VAL_7]]{{\[}}%[[VAL_3]]] : memref<?xindex>
// CHECK:               %[[VAL_23:.*]] = scf.for %[[VAL_24:.*]] = %[[VAL_21]] to %[[VAL_22]] step %[[VAL_3]] iter_args(%[[VAL_25:.*]] = %[[VAL_16]]) -> (tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>) {
// CHECK:                 %[[VAL_26:.*]] = memref.load %[[VAL_8]]{{\[}}%[[VAL_24]]] : memref<?xf32>
// CHECK:                 %[[VAL_27:.*]] = arith.mulf %[[VAL_26]], %[[VAL_20]] : f32
// CHECK:                 %[[VAL_28:.*]] = arith.addf %[[VAL_27]], %[[VAL_5]] : f32
// CHECK:                 %[[VAL_29:.*]] = sparse_tensor.insert %[[VAL_28]] into %[[VAL_25]]{{\[}}%[[VAL_17]]] : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:                 scf.yield %[[VAL_29]] : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:               }
// CHECK:               scf.yield %[[VAL_30:.*]] : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:             } else {
// CHECK:               scf.yield %[[VAL_16]] : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:             }
// CHECK:             scf.yield %[[VAL_31:.*]] : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:           }
// CHECK:           %[[VAL_32:.*]] = sparse_tensor.load %[[VAL_33:.*]] hasInserts : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:           return %[[VAL_32]] : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>
func.func @mul_inv_sparse1d(%arga: tensor<32xf32, #SpVec>,
                            %argb: tensor<4xf32, #SpVec>) -> tensor<32xf32, #SpVec> {
  %argx = bufferization.alloc_tensor() : tensor<32xf32, #SpVec>
  %0 = linalg.generic #trait1
     ins(%arga, %argb: tensor<32xf32, #SpVec>, tensor<4xf32, #SpVec>)
    outs(%argx: tensor<32xf32, #SpVec>) {
      ^bb(%a: f32, %b: f32, %x: f32):
        %0 = arith.mulf %a, %b : f32
        %1 = arith.addf %x, %0 : f32
        linalg.yield %1 : f32
  } -> tensor<32xf32, #SpVec>
  return %0 : tensor<32xf32, #SpVec>
}


// CHECK-LABEL:   func.func @mul_inv_enc_dense1d(
// CHECK-SAME:                                   %[[VAL_0:.*]]: tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>,
// CHECK-SAME:                                   %[[VAL_1:.*]]: tensor<4xf32, #sparse_tensor.encoding<{{{.*}}}>>) -> tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>> {
// CHECK:           %[[VAL_2:.*]] = arith.constant 32 : index
// CHECK:           %[[VAL_3:.*]] = arith.constant 3 : index
// CHECK:           %[[VAL_4:.*]] = arith.constant 0 : index
// CHECK:           %[[VAL_5:.*]] = arith.constant 1 : index
// CHECK:           %[[VAL_6:.*]] = bufferization.alloc_tensor() : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:           %[[VAL_7:.*]] = sparse_tensor.values %[[VAL_0]] : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xf32>
// CHECK:           %[[VAL_8:.*]] = sparse_tensor.values %[[VAL_1]] : tensor<4xf32, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xf32>
// CHECK:           %[[VAL_9:.*]] = sparse_tensor.values %[[VAL_6]] : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xf32>
// CHECK:           %[[VAL_10:.*]] = memref.load %[[VAL_8]]{{\[}}%[[VAL_3]]] : memref<?xf32>
// CHECK:           scf.for %[[VAL_11:.*]] = %[[VAL_4]] to %[[VAL_2]] step %[[VAL_5]] {
// CHECK:             %[[VAL_12:.*]] = memref.load %[[VAL_9]]{{\[}}%[[VAL_11]]] : memref<?xf32>
// CHECK:             %[[VAL_13:.*]] = memref.load %[[VAL_7]]{{\[}}%[[VAL_11]]] : memref<?xf32>
// CHECK:             %[[VAL_14:.*]] = arith.mulf %[[VAL_13]], %[[VAL_10]] : f32
// CHECK:             %[[VAL_15:.*]] = arith.addf %[[VAL_12]], %[[VAL_14]] : f32
// CHECK:             memref.store %[[VAL_15]], %[[VAL_9]]{{\[}}%[[VAL_11]]] : memref<?xf32>
// CHECK:           }
// CHECK:           %[[VAL_16:.*]] = sparse_tensor.load %[[VAL_6]] : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:           return %[[VAL_16]] : tensor<32xf32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:         }
func.func @mul_inv_enc_dense1d(%arga: tensor<32xf32, #EncDenseVec>,
                            %argb: tensor<4xf32, #EncDenseVec>) -> tensor<32xf32, #EncDenseVec> {
  %argx = bufferization.alloc_tensor() : tensor<32xf32, #EncDenseVec>
  %0 = linalg.generic #trait1
     ins(%arga, %argb: tensor<32xf32, #EncDenseVec>, tensor<4xf32, #EncDenseVec>)
    outs(%argx: tensor<32xf32, #EncDenseVec>) {
      ^bb(%a: f32, %b: f32, %x: f32):
        %0 = arith.mulf %a, %b : f32
        %1 = arith.addf %x, %0 : f32
        linalg.yield %1 : f32
  } -> tensor<32xf32, #EncDenseVec>
  return %0 : tensor<32xf32, #EncDenseVec>
}

#trait2 = {
  indexing_maps = [
    affine_map<(i) -> (i)>,  // a
    affine_map<(i) -> (i+2)>,  // b
    affine_map<(i) -> (i)>   // x (out)
  ],
  iterator_types = ["parallel"],
  doc = "x(i) = a(i) & b(i+2)"
}

// CHECK-LABEL:   func @and_affine_dense1d(
// CHECK-SAME:                             %[[VAL_0:.*]]: tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>,
// CHECK-SAME:                             %[[VAL_1:.*]]: tensor<34xi32>,
// CHECK-SAME:                             %[[VAL_2:.*]]: tensor<32xi32>) -> tensor<32xi32> {
// CHECK-DAG:       %[[ZERO:.*]] = arith.constant 0 : i32
// CHECK-DAG:       %[[VAL_3:.*]] = arith.constant 0 : index
// CHECK-DAG:       %[[VAL_4:.*]] = arith.constant 1 : index
// CHECK-DAG:       %[[VAL_5:.*]] = arith.constant 2 : index
// CHECK-DAG:       %[[VAL_6:.*]] = sparse_tensor.pointers %[[VAL_0]] {dimension = 0 : index} : tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK-DAG:       %[[VAL_7:.*]] = sparse_tensor.indices %[[VAL_0]] {dimension = 0 : index} : tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK-DAG:       %[[VAL_8:.*]] = sparse_tensor.values %[[VAL_0]] : tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK-DAG:       %[[VAL_9:.*]] = bufferization.to_memref %[[VAL_1]] : memref<34xi32>
// CHECK-DAG:       %[[VAL_11:.*]] = bufferization.to_memref %[[VAL_2]] : memref<32xi32>
// CHECK:           linalg.fill ins(%[[ZERO]] : i32) outs(%[[VAL_11]] : memref<32xi32>)
// CHECK:           %[[VAL_12:.*]] = memref.load %[[VAL_6]]{{\[}}%[[VAL_3]]] : memref<?xindex>
// CHECK:           %[[VAL_13:.*]] = memref.load %[[VAL_6]]{{\[}}%[[VAL_4]]] : memref<?xindex>
// CHECK:           scf.for %[[VAL_14:.*]] = %[[VAL_12]] to %[[VAL_13]] step %[[VAL_4]] {
// CHECK:             %[[VAL_15:.*]] = memref.load %[[VAL_7]]{{\[}}%[[VAL_14]]] : memref<?xindex>
// CHECK:             %[[VAL_16:.*]] = memref.load %[[VAL_8]]{{\[}}%[[VAL_14]]] : memref<?xi32>
// CHECK:             %[[VAL_17:.*]] = arith.addi %[[VAL_15]], %[[VAL_5]] : index
// CHECK:             %[[VAL_18:.*]] = memref.load %[[VAL_9]]{{\[}}%[[VAL_17]]] : memref<34xi32>
// CHECK:             %[[VAL_19:.*]] = arith.andi %[[VAL_16]], %[[VAL_18]] : i32
// CHECK:             memref.store %[[VAL_19]], %[[VAL_11]]{{\[}}%[[VAL_15]]] : memref<32xi32>
// CHECK:           }
// CHECK:           %[[VAL_20:.*]] = bufferization.to_tensor %[[VAL_11]] : memref<32xi32>
// CHECK:           return %[[VAL_20]] : tensor<32xi32>
// CHECK:         }
func.func @and_affine_dense1d(%arga: tensor<32xi32, #SpVec>,
                         %argb: tensor<34xi32>,
                         %argx: tensor<32xi32>) -> tensor<32xi32> {
  %0 = linalg.generic #trait2
     ins(%arga, %argb: tensor<32xi32, #SpVec>, tensor<34xi32>)
    outs(%argx: tensor<32xi32>) {
      ^bb(%a: i32, %b: i32, %x: i32):
        %0 = arith.andi %a, %b : i32
        linalg.yield %0 : i32
  } -> tensor<32xi32>
  return %0 : tensor<32xi32>
}

// CHECK-LABEL:   func.func @and_affine_sparse1d(
// CHECK-SAME:                                   %[[VAL_0:.*]]: tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>,
// CHECK-SAME:                                   %[[VAL_1:.*]]: tensor<34xi32, #sparse_tensor.encoding<{{{.*}}}>>)
// CHECK:           %[[VAL_2:.*]] = arith.constant 0 : index
// CHECK:           %[[VAL_3:.*]] = arith.constant 1 : index
// CHECK:           %[[VAL_4:.*]] = arith.constant 2 : index
// CHECK:           %[[VAL_5:.*]] = bufferization.alloc_tensor() : tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:           %[[VAL_6:.*]] = sparse_tensor.pointers %[[VAL_0]] {dimension = 0 : index} : tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_7:.*]] = sparse_tensor.indices %[[VAL_0]] {dimension = 0 : index} : tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_8:.*]] = sparse_tensor.values %[[VAL_0]] : tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xi32>
// CHECK:           %[[VAL_9:.*]] = sparse_tensor.pointers %[[VAL_1]] {dimension = 0 : index} : tensor<34xi32, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_10:.*]] = sparse_tensor.indices %[[VAL_1]] {dimension = 0 : index} : tensor<34xi32, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_11:.*]] = sparse_tensor.values %[[VAL_1]] : tensor<34xi32, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xi32>
// CHECK:           %[[VAL_12:.*]] = memref.load %[[VAL_6]]{{\[}}%[[VAL_2]]] : memref<?xindex>
// CHECK:           %[[VAL_13:.*]] = memref.load %[[VAL_6]]{{\[}}%[[VAL_3]]] : memref<?xindex>
// CHECK:           %[[VAL_14:.*]] = scf.for %[[VAL_15:.*]] = %[[VAL_12]] to %[[VAL_13]] step %[[VAL_3]] iter_args(%[[VAL_16:.*]] = %[[VAL_5]]) -> (tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>) {
// CHECK:             %[[VAL_17:.*]] = memref.load %[[VAL_7]]{{\[}}%[[VAL_15]]] : memref<?xindex>
// CHECK:             %[[VAL_18:.*]] = memref.load %[[VAL_8]]{{\[}}%[[VAL_15]]] : memref<?xi32>
// CHECK:             %[[VAL_19:.*]] = memref.load %[[VAL_9]]{{\[}}%[[VAL_2]]] : memref<?xindex>
// CHECK:             %[[VAL_20:.*]] = memref.load %[[VAL_9]]{{\[}}%[[VAL_3]]] : memref<?xindex>
// CHECK:             %[[VAL_21:.*]] = scf.for %[[VAL_22:.*]] = %[[VAL_19]] to %[[VAL_20]] step %[[VAL_3]] iter_args(%[[VAL_23:.*]] = %[[VAL_16]]) -> (tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>) {
// CHECK:               %[[VAL_24:.*]] = memref.load %[[VAL_10]]{{\[}}%[[VAL_22]]] : memref<?xindex>
// CHECK:               %[[VAL_25:.*]] = arith.addi %[[VAL_17]], %[[VAL_4]] : index
// CHECK:               %[[VAL_26:.*]] = arith.cmpi eq, %[[VAL_24]], %[[VAL_25]] : index
// CHECK:               %[[VAL_27:.*]] = scf.if %[[VAL_26]] -> (tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>) {
// CHECK:                 %[[VAL_28:.*]] = memref.load %[[VAL_11]]{{\[}}%[[VAL_22]]] : memref<?xi32>
// CHECK:                 %[[VAL_29:.*]] = arith.andi %[[VAL_18]], %[[VAL_28]] : i32
// CHECK:                 %[[VAL_30:.*]] = sparse_tensor.insert %[[VAL_29]] into %[[VAL_23]]{{\[}}%[[VAL_17]]] : tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:                 scf.yield %[[VAL_30]] : tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:               } else {
// CHECK:                 scf.yield %[[VAL_23]] : tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:               }
// CHECK:               scf.yield %[[VAL_31:.*]] : tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:             }
// CHECK:             scf.yield %[[VAL_32:.*]] : tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:           }
// CHECK:           %[[VAL_33:.*]] = sparse_tensor.load %[[VAL_34:.*]] hasInserts : tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:           return %[[VAL_33]] : tensor<32xi32, #sparse_tensor.encoding<{{{.*}}}>>
func.func @and_affine_sparse1d(%arga: tensor<32xi32, #SpVec>,
                               %argb: tensor<34xi32, #SpVec>) -> tensor<32xi32, #SpVec> {
  %argx = bufferization.alloc_tensor() : tensor<32xi32, #SpVec>
  %0 = linalg.generic #trait2
     ins(%arga, %argb: tensor<32xi32, #SpVec>, tensor<34xi32, #SpVec>)
    outs(%argx: tensor<32xi32, #SpVec>) {
      ^bb(%a: i32, %b: i32, %x: i32):
        %0 = arith.andi %a, %b : i32
        linalg.yield %0 : i32
  } -> tensor<32xi32, #SpVec>
  return %0 : tensor<32xi32, #SpVec>
}

#trait3 = {
  indexing_maps = [
    affine_map<(i,j) -> (i,j)>,      // a
    affine_map<(i,j) -> (i+2,j+3)>,  // b
    affine_map<(i,j) -> (i,j)>       // x (out)
  ],
  iterator_types = ["parallel","parallel"],
  doc = "x(i,j) += a(i,j) * b(i+2,j+3)"
}

// CHECK-LABEL:   func @mul_affine_dense2d(
// CHECK-SAME:                             %[[VAL_0:.*]]: tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>,
// CHECK-SAME:                             %[[VAL_1:.*]]: tensor<34x19xf64>,
// CHECK-SAME:                             %[[VAL_2:.*]]: tensor<32x16xf64>) -> tensor<32x16xf64> {
// CHECK-DAG:       %[[VAL_3:.*]] = arith.constant 1 : index
// CHECK-DAG:       %[[VAL_4:.*]] = arith.constant 32 : index
// CHECK-DAG:       %[[VAL_5:.*]] = arith.constant 0 : index
// CHECK-DAG:       %[[VAL_6:.*]] = arith.constant 2 : index
// CHECK-DAG:       %[[VAL_7:.*]] = arith.constant 3 : index
// CHECK-DAG:       %[[VAL_8:.*]] = sparse_tensor.pointers %[[VAL_0]] {dimension = 1 : index} : tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK-DAG:       %[[VAL_9:.*]] = sparse_tensor.indices %[[VAL_0]] {dimension = 1 : index} : tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK-DAG:       %[[VAL_10:.*]] = sparse_tensor.values %[[VAL_0]] : tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK-DAG:       %[[VAL_11:.*]] = bufferization.to_memref %[[VAL_1]] : memref<34x19xf64>
// CHECK-DAG:       %[[VAL_13:.*]] = bufferization.to_memref %[[VAL_2]] : memref<32x16xf64>
// CHECK:           scf.for %[[VAL_14:.*]] = %[[VAL_5]] to %[[VAL_4]] step %[[VAL_3]] {
// CHECK:             %[[VAL_15:.*]] = memref.load %[[VAL_8]]{{\[}}%[[VAL_14]]] : memref<?xindex>
// CHECK:             %[[VAL_16:.*]] = arith.addi %[[VAL_14]], %[[VAL_3]] : index
// CHECK:             %[[VAL_17:.*]] = memref.load %[[VAL_8]]{{\[}}%[[VAL_16]]] : memref<?xindex>
// CHECK:             scf.for %[[VAL_18:.*]] = %[[VAL_15]] to %[[VAL_17]] step %[[VAL_3]] {
// CHECK:               %[[VAL_19:.*]] = memref.load %[[VAL_9]]{{\[}}%[[VAL_18]]] : memref<?xindex>
// CHECK:               %[[VAL_20:.*]] = memref.load %[[VAL_13]]{{\[}}%[[VAL_14]], %[[VAL_19]]] : memref<32x16xf64>
// CHECK:               %[[VAL_21:.*]] = memref.load %[[VAL_10]]{{\[}}%[[VAL_18]]] : memref<?xf64>
// CHECK:               %[[VAL_22:.*]] = arith.addi %[[VAL_14]], %[[VAL_6]] : index
// CHECK:               %[[VAL_23:.*]] = arith.addi %[[VAL_19]], %[[VAL_7]] : index
// CHECK:               %[[VAL_24:.*]] = memref.load %[[VAL_11]]{{\[}}%[[VAL_22]], %[[VAL_23]]] : memref<34x19xf64>
// CHECK:               %[[VAL_25:.*]] = arith.mulf %[[VAL_21]], %[[VAL_24]] : f64
// CHECK:               %[[VAL_26:.*]] = arith.addf %[[VAL_20]], %[[VAL_25]] : f64
// CHECK:               memref.store %[[VAL_26]], %[[VAL_13]]{{\[}}%[[VAL_14]], %[[VAL_19]]] : memref<32x16xf64>
// CHECK:             }
// CHECK:           }
// CHECK:           %[[VAL_27:.*]] = bufferization.to_tensor %[[VAL_13]] : memref<32x16xf64>
// CHECK:           return %[[VAL_27]] : tensor<32x16xf64>
// CHECK:         }
func.func @mul_affine_dense2d(%arga: tensor<32x16xf64, #CSR>,
                         %argb: tensor<34x19xf64>,
                         %argx: tensor<32x16xf64>) -> tensor<32x16xf64> {
  %0 = linalg.generic #trait3
     ins(%arga, %argb: tensor<32x16xf64, #CSR>, tensor<34x19xf64>)
    outs(%argx: tensor<32x16xf64>) {
      ^bb(%a: f64, %b: f64, %x: f64):
        %0 = arith.mulf %a, %b : f64
        %1 = arith.addf %x, %0 : f64
        linalg.yield %1 : f64
  } -> tensor<32x16xf64>
  return %0 : tensor<32x16xf64>
}


// CHECK-LABEL:   func.func @mul_affine_sparse2d(
// CHECK-SAME:                                   %[[VAL_0:.*]]: tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>,
// CHECK-SAME:                                   %[[VAL_1:.*]]: tensor<34x19xf64, #sparse_tensor.encoding<{{{.*}}}>>) -> tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>> {
// CHECK-DAG:       %[[VAL_2:.*]] = arith.constant 32 : index
// CHECK-DAG:       %[[VAL_3:.*]] = arith.constant 0 : index
// CHECK-DAG:       %[[VAL_4:.*]] = arith.constant 1 : index
// CHECK-DAG:       %[[VAL_5:.*]] = arith.constant 2 : index
// CHECK-DAG:       %[[VAL_6:.*]] = arith.constant 0.000000e+00 : f64
// CHECK-DAG:       %[[VAL_7:.*]] = arith.constant 3 : index
// CHECK-DAG:       %[[VAL_TRUE:.*]] = arith.constant true
// CHECK-DAG:       %[[VAL_FALSE:.*]] = arith.constant false
// CHECK:           %[[VAL_8:.*]] = bufferization.alloc_tensor() : tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:           %[[VAL_9:.*]] = sparse_tensor.pointers %[[VAL_0]] {dimension = 1 : index} : tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_10:.*]] = sparse_tensor.indices %[[VAL_0]] {dimension = 1 : index} : tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_11:.*]] = sparse_tensor.values %[[VAL_0]] : tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xf64>
// CHECK:           %[[VAL_12:.*]] = sparse_tensor.pointers %[[VAL_1]] {dimension = 1 : index} : tensor<34x19xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_13:.*]] = sparse_tensor.indices %[[VAL_1]] {dimension = 1 : index} : tensor<34x19xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_14:.*]] = sparse_tensor.values %[[VAL_1]] : tensor<34x19xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xf64>
// CHECK:           %[[VAL_15:.*]] = scf.for %[[VAL_16:.*]] = %[[VAL_3]] to %[[VAL_2]] step %[[VAL_4]] iter_args(%[[VAL_17:.*]] = %[[VAL_8]]) -> (tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>) {
// CHECK:             %[[VAL_18:.*]] = arith.addi %[[VAL_16]], %[[VAL_5]] : index
// CHECK:             %[[VAL_19:.*]] = memref.load %[[VAL_9]]{{\[}}%[[VAL_16]]] : memref<?xindex>
// CHECK:             %[[VAL_20:.*]] = arith.addi %[[VAL_16]], %[[VAL_4]] : index
// CHECK:             %[[VAL_21:.*]] = memref.load %[[VAL_9]]{{\[}}%[[VAL_20]]] : memref<?xindex>
// CHECK:             %[[VAL_22:.*]] = scf.for %[[VAL_23:.*]] = %[[VAL_19]] to %[[VAL_21]] step %[[VAL_4]] iter_args(%[[VAL_24:.*]] = %[[VAL_17]]) -> (tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>) {
// CHECK:               %[[VAL_25:.*]] = memref.load %[[VAL_10]]{{\[}}%[[VAL_23]]] : memref<?xindex>
// CHECK:               %[[VAL_26:.*]] = memref.load %[[VAL_11]]{{\[}}%[[VAL_23]]] : memref<?xf64>
// CHECK:               %[[VAL_27:.*]] = memref.load %[[VAL_12]]{{\[}}%[[VAL_18]]] : memref<?xindex>
// CHECK:               %[[VAL_28:.*]] = arith.addi %[[VAL_18]], %[[VAL_4]] : index
// CHECK:               %[[VAL_29:.*]] = memref.load %[[VAL_12]]{{\[}}%[[VAL_28]]] : memref<?xindex>
// CHECK:               %[[VAL_30:.*]]:3 = scf.for %[[VAL_31:.*]] = %[[VAL_27]] to %[[VAL_29]] step %[[VAL_4]] iter_args(%[[VAL_32:.*]] = %[[VAL_6]], %[[VAL_200:.*]] = %[[VAL_FALSE]], %[[VAL_33:.*]] = %[[VAL_24]]) -> (f64, i1, tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>) {
// CHECK:                 %[[VAL_34:.*]] = memref.load %[[VAL_13]]{{\[}}%[[VAL_31]]] : memref<?xindex>
// CHECK:                 %[[VAL_35:.*]] = arith.addi %[[VAL_25]], %[[VAL_7]] : index
// CHECK:                 %[[VAL_36:.*]] = arith.cmpi eq, %[[VAL_34]], %[[VAL_35]] : index
// CHECK:                 %[[VAL_37:.*]]:3 = scf.if %[[VAL_36]] -> (f64, i1, tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>) {
// CHECK:                   %[[VAL_38:.*]] = memref.load %[[VAL_14]]{{\[}}%[[VAL_31]]] : memref<?xf64>
// CHECK:                   %[[VAL_39:.*]] = arith.mulf %[[VAL_26]], %[[VAL_38]] : f64
// CHECK:                   %[[VAL_40:.*]] = arith.addf %[[VAL_32]], %[[VAL_39]] : f64
// CHECK:                   scf.yield %[[VAL_40]], %[[VAL_TRUE]], %[[VAL_33]] : f64, i1, tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:                 } else {
// CHECK:                   scf.yield %[[VAL_32]], %[[VAL_200]], %[[VAL_33]] : f64, i1, tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:                 }
// CHECK:                 scf.yield %[[VAL_41:.*]]#0, %[[VAL_41]]#1, %[[VAL_41]]#2 : f64, i1, tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:               }
// CHECK:               %[[VAL_201:.*]] = scf.if %[[VAL_30]]#1 -> (tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>) {
// CHECK:                 %[[VAL_42:.*]] = sparse_tensor.insert %[[VAL_30]]#0 into %[[VAL_30]]#2{{\[}}%[[VAL_16]], %[[VAL_25]]] : tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:                 scf.yield %[[VAL_42]] : tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:               } else {
// CHECK:                 scf.yield %[[VAL_30]]#2 : tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:               }
// CHECK:               scf.yield %[[VAL_201]] : tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:             }
// CHECK:             scf.yield %[[VAL_44:.*]] : tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:           }
// CHECK:           %[[VAL_45:.*]] = sparse_tensor.load %[[VAL_46:.*]] hasInserts : tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>
// CHECK:           return %[[VAL_45]] : tensor<32x16xf64, #sparse_tensor.encoding<{{{.*}}}>>
func.func @mul_affine_sparse2d(%arga: tensor<32x16xf64, #CSR>,
                              %argb: tensor<34x19xf64, #CSR>) -> tensor<32x16xf64, #CSR> {
  %argx = bufferization.alloc_tensor() : tensor<32x16xf64, #CSR>
  %0 = linalg.generic #trait3
     ins(%arga, %argb: tensor<32x16xf64, #CSR>, tensor<34x19xf64, #CSR>)
    outs(%argx: tensor<32x16xf64, #CSR>) {
      ^bb(%a: f64, %b: f64, %x: f64):
        %0 = arith.mulf %a, %b : f64
        %1 = arith.addf %x, %0 : f64
        linalg.yield %1 : f64
  } -> tensor<32x16xf64, #CSR>
  return %0 : tensor<32x16xf64, #CSR>
}

#trait4 = {
  indexing_maps = [
    affine_map<(i,j) -> (i+2,j)>,  // a
    affine_map<(i,j) -> (i,j+3)>,  // b
    affine_map<(i,j) -> (i,j)>     // x (out)
  ],
  iterator_types = ["parallel","parallel"],
  doc = "x(i,j) += a(i+2,j) * b(i,j+3)"
}

// CHECK-LABEL:   func.func @mul_affine_dense_dim_2d(
// CHECK-SAME:                                       %[[VAL_0:.*]]: tensor<34x16xf64, #sparse_tensor.encoding
// CHECK-SAME:                                       %[[VAL_1:.*]]: tensor<32x19xf64, #sparse_tensor.encoding<{{{.*}}}>>,
// CHECK-SAME:                                       %[[VAL_2:.*]]: tensor<32x16xf64>) -> tensor<32x16xf64> {
// CHECK-DAG:       %[[VAL_3:.*]] = arith.constant 19 : index
// CHECK-DAG:       %[[VAL_4:.*]] = arith.constant 0 : index
// CHECK-DAG:       %[[VAL_5:.*]] = arith.constant 1 : index
// CHECK-DAG:       %[[VAL_6:.*]] = arith.constant 2 : index
// CHECK-DAG:       %[[VAL_7:.*]] = arith.constant 3 : index
// CHECK:           %[[VAL_8:.*]] = sparse_tensor.pointers %[[VAL_0]] {dimension = 1 : index} : tensor<34x16xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_9:.*]] = sparse_tensor.indices %[[VAL_0]] {dimension = 1 : index} : tensor<34x16xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_10:.*]] = sparse_tensor.values %[[VAL_0]] : tensor<34x16xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xf64>
// CHECK:           %[[VAL_11:.*]] = sparse_tensor.pointers %[[VAL_1]] {dimension = 0 : index} : tensor<32x19xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_12:.*]] = sparse_tensor.indices %[[VAL_1]] {dimension = 0 : index} : tensor<32x19xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_13:.*]] = sparse_tensor.values %[[VAL_1]] : tensor<32x19xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xf64>
// CHECK:           %[[VAL_14:.*]] = bufferization.to_memref %[[VAL_2]] : memref<32x16xf64>
// CHECK:           %[[VAL_15:.*]] = memref.load %[[VAL_11]]{{\[}}%[[VAL_4]]] : memref<?xindex>
// CHECK:           %[[VAL_16:.*]] = memref.load %[[VAL_11]]{{\[}}%[[VAL_5]]] : memref<?xindex>
// CHECK:           scf.for %[[VAL_17:.*]] = %[[VAL_15]] to %[[VAL_16]] step %[[VAL_5]] {
// CHECK:             %[[VAL_18:.*]] = memref.load %[[VAL_12]]{{\[}}%[[VAL_17]]] : memref<?xindex>
// CHECK:             %[[VAL_19:.*]] = arith.addi %[[VAL_18]], %[[VAL_6]] : index
// CHECK:             %[[VAL_20:.*]] = memref.load %[[VAL_8]]{{\[}}%[[VAL_19]]] : memref<?xindex>
// CHECK:             %[[VAL_21:.*]] = arith.addi %[[VAL_19]], %[[VAL_5]] : index
// CHECK:             %[[VAL_22:.*]] = memref.load %[[VAL_8]]{{\[}}%[[VAL_21]]] : memref<?xindex>
// CHECK:             scf.for %[[VAL_23:.*]] = %[[VAL_20]] to %[[VAL_22]] step %[[VAL_5]] {
// CHECK:               %[[VAL_24:.*]] = memref.load %[[VAL_9]]{{\[}}%[[VAL_23]]] : memref<?xindex>
// CHECK:               %[[VAL_25:.*]] = arith.addi %[[VAL_24]], %[[VAL_7]] : index
// CHECK:               %[[VAL_26:.*]] = arith.muli %[[VAL_17]], %[[VAL_3]] : index
// CHECK:               %[[VAL_27:.*]] = arith.addi %[[VAL_26]], %[[VAL_25]] : index
// CHECK:               %[[VAL_28:.*]] = memref.load %[[VAL_14]]{{\[}}%[[VAL_18]], %[[VAL_24]]] : memref<32x16xf64>
// CHECK:               %[[VAL_29:.*]] = memref.load %[[VAL_10]]{{\[}}%[[VAL_23]]] : memref<?xf64>
// CHECK:               %[[VAL_30:.*]] = memref.load %[[VAL_13]]{{\[}}%[[VAL_27]]] : memref<?xf64>
// CHECK:               %[[VAL_31:.*]] = arith.mulf %[[VAL_29]], %[[VAL_30]] : f64
// CHECK:               %[[VAL_32:.*]] = arith.addf %[[VAL_28]], %[[VAL_31]] : f64
// CHECK:               memref.store %[[VAL_32]], %[[VAL_14]]{{\[}}%[[VAL_18]], %[[VAL_24]]] : memref<32x16xf64>
// CHECK:             }
// CHECK:           }
// CHECK:           %[[VAL_33:.*]] = bufferization.to_tensor %[[VAL_14]] : memref<32x16xf64>
// CHECK:           return %[[VAL_33]] : tensor<32x16xf64>
// CHECK:         }
func.func @mul_affine_dense_dim_2d(%arga: tensor<34x16xf64, #CSR>,
                                   %argb: tensor<32x19xf64, #Row>,
                                   %argx: tensor<32x16xf64>) -> tensor<32x16xf64> {
  %0 = linalg.generic #trait4
     ins(%arga, %argb: tensor<34x16xf64, #CSR>, tensor<32x19xf64, #Row>)
    outs(%argx: tensor<32x16xf64>) {
      ^bb(%a: f64, %b: f64, %x: f64):
        %0 = arith.mulf %a, %b : f64
        %1 = arith.addf %x, %0 : f64
        linalg.yield %1 : f64
  } -> tensor<32x16xf64>
  return %0 : tensor<32x16xf64>
}

#trait5 = {
  indexing_maps = [
    affine_map<(i,j) -> (2,j)>,  // a
    affine_map<(i,j) -> (i,3)>,  // b
    affine_map<(i,j) -> (i,j)>     // x (out)
  ],
  iterator_types = ["parallel","parallel"],
  doc = "x(i,j) += a(2,j) * b(i,3)"
}

// CHECK-LABEL:   func.func @mul_const_affine_dense_dim_2d(
// CHECK-SAME:                                             %[[VAL_0:.*]]: tensor<34x16xf64,
// CHECK-SAME:                                             %[[VAL_1:.*]]: tensor<32x19xf64, #sparse_tensor.encoding<{{{.*}}}>>,
// CHECK-SAME:                                             %[[VAL_2:.*]]: tensor<32x16xf64>) -> tensor<32x16xf64> {
// CHECK-DAG:       %[[VAL_3:.*]] = arith.constant 19 : index
// CHECK-DAG:       %[[VAL_4:.*]] = arith.constant 2 : index
// CHECK-DAG:       %[[VAL_5:.*]] = arith.constant 0 : index
// CHECK-DAG:       %[[VAL_6:.*]] = arith.constant 1 : index
// CHECK-DAG:       %[[VAL_7:.*]] = arith.constant 3 : index
// CHECK:           %[[VAL_8:.*]] = sparse_tensor.pointers %[[VAL_0]] {dimension = 1 : index} : tensor<34x16xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_9:.*]] = sparse_tensor.indices %[[VAL_0]] {dimension = 1 : index} : tensor<34x16xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_10:.*]] = sparse_tensor.values %[[VAL_0]] : tensor<34x16xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xf64>
// CHECK:           %[[VAL_11:.*]] = sparse_tensor.pointers %[[VAL_1]] {dimension = 0 : index} : tensor<32x19xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_12:.*]] = sparse_tensor.indices %[[VAL_1]] {dimension = 0 : index} : tensor<32x19xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xindex>
// CHECK:           %[[VAL_13:.*]] = sparse_tensor.values %[[VAL_1]] : tensor<32x19xf64, #sparse_tensor.encoding<{{{.*}}}>> to memref<?xf64>
// CHECK:           %[[VAL_14:.*]] = bufferization.to_memref %[[VAL_2]] : memref<32x16xf64>
// CHECK:           %[[VAL_15:.*]] = memref.load %[[VAL_11]]{{\[}}%[[VAL_5]]] : memref<?xindex>
// CHECK:           %[[VAL_16:.*]] = memref.load %[[VAL_11]]{{\[}}%[[VAL_6]]] : memref<?xindex>
// CHECK:           scf.for %[[VAL_17:.*]] = %[[VAL_15]] to %[[VAL_16]] step %[[VAL_6]] {
// CHECK:             %[[VAL_18:.*]] = memref.load %[[VAL_12]]{{\[}}%[[VAL_17]]] : memref<?xindex>
// CHECK:             %[[VAL_19:.*]] = arith.muli %[[VAL_17]], %[[VAL_3]] : index
// CHECK:             %[[VAL_20:.*]] = arith.addi %[[VAL_19]], %[[VAL_7]] : index
// CHECK:             %[[VAL_21:.*]] = memref.load %[[VAL_13]]{{\[}}%[[VAL_20]]] : memref<?xf64>
// CHECK:             %[[VAL_22:.*]] = memref.load %[[VAL_8]]{{\[}}%[[VAL_4]]] : memref<?xindex>
// CHECK:             %[[VAL_23:.*]] = memref.load %[[VAL_8]]{{\[}}%[[VAL_7]]] : memref<?xindex>
// CHECK:             scf.for %[[VAL_24:.*]] = %[[VAL_22]] to %[[VAL_23]] step %[[VAL_6]] {
// CHECK:               %[[VAL_25:.*]] = memref.load %[[VAL_9]]{{\[}}%[[VAL_24]]] : memref<?xindex>
// CHECK:               %[[VAL_26:.*]] = memref.load %[[VAL_14]]{{\[}}%[[VAL_18]], %[[VAL_25]]] : memref<32x16xf64>
// CHECK:               %[[VAL_27:.*]] = memref.load %[[VAL_10]]{{\[}}%[[VAL_24]]] : memref<?xf64>
// CHECK:               %[[VAL_28:.*]] = arith.mulf %[[VAL_27]], %[[VAL_21]] : f64
// CHECK:               %[[VAL_29:.*]] = arith.addf %[[VAL_26]], %[[VAL_28]] : f64
// CHECK:               memref.store %[[VAL_29]], %[[VAL_14]]{{\[}}%[[VAL_18]], %[[VAL_25]]] : memref<32x16xf64>
// CHECK:             }
// CHECK:           }
// CHECK:           %[[VAL_30:.*]] = bufferization.to_tensor %[[VAL_14]] : memref<32x16xf64>
// CHECK:           return %[[VAL_30]] : tensor<32x16xf64>
// CHECK:         }
func.func @mul_const_affine_dense_dim_2d(%arga: tensor<34x16xf64, #CSR>,
                                         %argb: tensor<32x19xf64, #Row>,
                                         %argx: tensor<32x16xf64>) -> tensor<32x16xf64> {
  %0 = linalg.generic #trait5
     ins(%arga, %argb: tensor<34x16xf64, #CSR>, tensor<32x19xf64, #Row>)
    outs(%argx: tensor<32x16xf64>) {
      ^bb(%a: f64, %b: f64, %x: f64):
        %0 = arith.mulf %a, %b : f64
        %1 = arith.addf %x, %0 : f64
        linalg.yield %1 : f64
  } -> tensor<32x16xf64>
  return %0 : tensor<32x16xf64>
}
