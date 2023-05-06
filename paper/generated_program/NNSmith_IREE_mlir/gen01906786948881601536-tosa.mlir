module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<1x1x2x1xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %1 = "tosa.concat"(%arg1, %0) {axis = 2 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x2x1xf32>
    %2 = "tosa.exp"(%1) : (tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    %3 = "tosa.reciprocal"(%2) : (tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    %4 = "tosa.mul"(%2, %3) {shift = 0 : i32} : (tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    %5 = "tosa.maximum"(%4, %arg1) : (tensor<1x1x2x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x2x1xf32>
    %6 = "tosa.minimum"(%5, %1) : (tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    return %6 : tensor<1x1x2x1xf32>
  }
}

