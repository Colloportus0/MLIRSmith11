module {
  func.func @main(%arg0: tensor<1x1x2x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x2x1xf32> {iree.identifier = "Identity"}, tensor<2xf32> {iree.identifier = "Identity_1"}, tensor<1x1x2xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<3.13370419> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.maximum"(%arg0, %0) : (tensor<1x1x2x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x2x1xf32>
    %2 = "tf.Atan"(%1) {T = f32} : (tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 2]} : (tensor<1x1x2x1xf32>) -> tensor<1x1x2xf32>
    %4 = "tosa.reshape"(%arg0) {new_shape = [1, 2, 1]} : (tensor<1x1x2x1xf32>) -> tensor<1x2x1xf32>
    %5 = "tosa.reshape"(%1) {new_shape = [2]} : (tensor<1x1x2x1xf32>) -> tensor<2xf32>
    return %4, %5, %3 : tensor<1x2x1xf32>, tensor<2xf32>, tensor<1x1x2xf32>
  }
}

