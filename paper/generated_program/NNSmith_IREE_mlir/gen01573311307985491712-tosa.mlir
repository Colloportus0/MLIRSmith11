module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x5x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %1 = "tosa.add"(%0, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.ceil"(%1) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %3 = "tosa.reciprocal"(%1) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.mul"(%2, %3) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.concat"(%2, %0, %2, %1, %2) {axis = 1 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x5x1x1xf32>
    return %4, %5 : tensor<1x1x1x1xf32>, tensor<1x5x1x1xf32>
  }
}

