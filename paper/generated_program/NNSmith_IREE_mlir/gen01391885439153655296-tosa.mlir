module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<1x2xf32> {iree.identifier = "Identity"}, tensor<2x1x1xf32> {iree.identifier = "Identity_1"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.concat"(%arg1, %arg0) {axis = 1 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x2x1x1xf32>
    %1 = "tosa.reshape"(%0) {new_shape = [2, 1, 1, 1]} : (tensor<1x2x1x1xf32>) -> tensor<2x1x1x1xf32>
    %2 = "tosa.reshape"(%0) {new_shape = [2, 1, 1]} : (tensor<1x2x1x1xf32>) -> tensor<2x1x1xf32>
    %3 = "tosa.reshape"(%0) {new_shape = [1, 2]} : (tensor<1x2x1x1xf32>) -> tensor<1x2xf32>
    return %3, %2, %1 : tensor<1x2xf32>, tensor<2x1x1xf32>, tensor<2x1x1x1xf32>
  }
}

