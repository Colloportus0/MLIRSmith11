module {
  func.func @main(%arg0: tensor<2xi1> {iree.identifier = "inputs_0"}) -> (tensor<1x2x2x2xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[5.63931799, 6.31463242]], [[3.54906607, 5.80882168]]]]> : tensor<1x2x1x2xf32>} : () -> tensor<1x2x1x2xf32>
    %1 = "tosa.const"() {value = dense<[[[[5.04569912], [6.1045413]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<2xi1>) -> tensor<1x1x1x2xi1>
    %3 = "tosa.select"(%2, %0, %1) : (tensor<1x1x1x2xi1>, tensor<1x2x1x2xf32>, tensor<1x1x2x1xf32>) -> tensor<1x2x2x2xf32>
    %4 = "tosa.add"(%3, %3) : (tensor<1x2x2x2xf32>, tensor<1x2x2x2xf32>) -> tensor<1x2x2x2xf32>
    return %4 : tensor<1x2x2x2xf32>
  }
}

