module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x3x1xf32> {iree.identifier = "Identity_1"}, tensor<1x3x1x1xi64> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<4.3238163> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.abs"(%arg0) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tf.Atan"(%arg1) {T = f32} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %3 = "tosa.concat"(%arg1, %0, %1) {axis = 1 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x3x1x1xf32>
    %4 = "tosa.cast"(%3) : (tensor<1x3x1x1xf32>) -> tensor<1x3x1x1xi64>
    %5 = "tosa.reshape"(%3) {new_shape = [1, 3, 1]} : (tensor<1x3x1x1xf32>) -> tensor<1x3x1xf32>
    return %2, %5, %4 : tensor<1x1x1x1xf32>, tensor<1x3x1xf32>, tensor<1x3x1x1xi64>
  }
}

