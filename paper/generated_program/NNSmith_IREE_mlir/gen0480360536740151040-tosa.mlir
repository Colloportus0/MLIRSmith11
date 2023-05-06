module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<3xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<4.43691063> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.abs"(%arg0) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.concat"(%1, %arg1, %0) {axis = 0 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<3x1x1x1xf32>
    %3 = "tosa.floor"(%2) : (tensor<3x1x1x1xf32>) -> tensor<3x1x1x1xf32>
    %4 = "tosa.reshape"(%3) {new_shape = [3]} : (tensor<3x1x1x1xf32>) -> tensor<3xf32>
    return %4 : tensor<3xf32>
  }
}

