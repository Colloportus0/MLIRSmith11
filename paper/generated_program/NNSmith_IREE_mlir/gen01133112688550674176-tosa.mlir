module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x3xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<6.08439159> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.concat"(%0, %arg1, %arg0) {axis = 3 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x3xf32>
    %2 = "tf.Atan"(%1) {T = f32} : (tensor<1x1x1x3xf32>) -> tensor<1x1x1x3xf32>
    return %2 : tensor<1x1x1x3xf32>
  }
}

