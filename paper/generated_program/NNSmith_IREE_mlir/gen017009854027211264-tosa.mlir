module {
  func.func @main(%arg0: tensor<1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1xf32> {iree.identifier = "inputs_0"}, tensor<1x2x1x1xf32> {iree.identifier = "Identity_1"}, tensor<2x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[[[[6.96050167]], [[6.68976212]]]]> : tensor<1x2x1x1xf32>} : () -> tensor<1x2x1x1xf32>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.minimum"(%1, %0) : (tensor<1x1x1x1xf32>, tensor<1x2x1x1xf32>) -> tensor<1x2x1x1xf32>
    %3 = "tosa.abs"(%2) : (tensor<1x2x1x1xf32>) -> tensor<1x2x1x1xf32>
    %4 = "tosa.reshape"(%3) {new_shape = [2, 1, 1]} : (tensor<1x2x1x1xf32>) -> tensor<2x1x1xf32>
    return %arg0, %3, %4 : tensor<1x1xf32>, tensor<1x2x1x1xf32>, tensor<2x1x1xf32>
  }
}

