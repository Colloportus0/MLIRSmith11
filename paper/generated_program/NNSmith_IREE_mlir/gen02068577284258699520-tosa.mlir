module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2x1xf32> {iree.identifier = "Identity"}, tensor<1x1x2x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<4.9211278> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.concat"(%arg0, %0) {axis = 0 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %2 = "tosa.negate"(%1) : (tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 2, 1]} : (tensor<2x1x1x1xf32>) -> tensor<1x1x2x1xf32>
    %4 = "tosa.ceil"(%3) : (tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    return %3, %4 : tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>
  }
}

