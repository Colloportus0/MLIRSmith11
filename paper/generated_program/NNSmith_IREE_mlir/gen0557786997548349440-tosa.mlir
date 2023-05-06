module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[4.23956871], [6.24989223]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %1 = "tosa.sub"(%arg0, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    %2 = "tf.Tan"(%1) {T = f32} : (tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    %3 = "tosa.maximum"(%2, %2) : (tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 2]} : (tensor<1x1x2x1xf32>) -> tensor<1x1x2xf32>
    return %4 : tensor<1x1x2xf32>
  }
}

