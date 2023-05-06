module {
  func.func @main(%arg0: tensor<2x1x2x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x2x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<2x1x2x5xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[23.0106506], [25.3253975]]], [[[25.1753635], [28.1552906]]]]> : tensor<2x1x2x1xf32>} : () -> tensor<2x1x2x1xf32>
    %1 = "tosa.const"() {value = dense<[[[[5.6023941], [5.14077854]]], [[[5.15440512], [4.51968193]]]]> : tensor<2x1x2x1xf32>} : () -> tensor<2x1x2x1xf32>
    %2 = "tosa.const"() {value = dense<[[[[5.71498775], [3.9471879]]], [[[4.43732929], [6.84087371]]]]> : tensor<2x1x2x1xf32>} : () -> tensor<2x1x2x1xf32>
    %3 = "tosa.concat"(%0, %1, %arg1, %2, %arg0) {axis = 3 : i64} : (tensor<2x1x2x1xf32>, tensor<2x1x2x1xf32>, tensor<2x1x2x1xf32>, tensor<2x1x2x1xf32>, tensor<2x1x2x1xf32>) -> tensor<2x1x2x5xf32>
    %4 = "tosa.floor"(%3) : (tensor<2x1x2x5xf32>) -> tensor<2x1x2x5xf32>
    return %4 : tensor<2x1x2x5xf32>
  }
}

