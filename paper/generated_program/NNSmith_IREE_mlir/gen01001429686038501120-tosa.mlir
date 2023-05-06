module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x2xi1> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<21.8663635> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tf.Tan"(%arg0) {T = f32} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.concat"(%1, %0) {axis = 3 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x2xf32>
    %3 = "tosa.greater"(%2, %arg0) : (tensor<1x1x1x2xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x2xi1>
    return %3 : tensor<1x1x1x2xi1>
  }
}

