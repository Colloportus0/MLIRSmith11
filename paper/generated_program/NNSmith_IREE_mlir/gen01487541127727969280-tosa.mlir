module {
  func.func @main(%arg0: tensor<1x2xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x2x2x1xf32> {iree.identifier = "Identity"}, tensor<1x2x2x1xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[0.280075282, 0.28042388]], [[0.319999963, 0.319999963]]]]> : tensor<1x2x1x2xf32>} : () -> tensor<1x2x1x2xf32>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<1x2xf32>) -> tensor<1x1x1x2xf32>
    %2 = "tosa.mul"(%1, %0) {shift = 0 : i32} : (tensor<1x1x1x2xf32>, tensor<1x2x1x2xf32>) -> tensor<1x2x1x2xf32>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 2, 2, 1]} : (tensor<1x2x1x2xf32>) -> tensor<1x2x2x1xf32>
    return %3, %3 : tensor<1x2x2x1xf32>, tensor<1x2x2x1xf32>
  }
}

