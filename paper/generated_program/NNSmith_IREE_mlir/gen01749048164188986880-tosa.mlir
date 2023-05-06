module {
  func.func @main(%arg0: tensor<2xi1> {iree.identifier = "inputs_0"}) -> (tensor<2x1x2x2xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[4.76073742], [6.98283958]]], [[[3.71343517], [3.07540774]]]]> : tensor<2x1x2x1xf32>} : () -> tensor<2x1x2x1xf32>
    %1 = "tosa.const"() {value = dense<3.15441012> : tensor<1x1x1xf32>} : () -> tensor<1x1x1xf32>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<2xi1>) -> tensor<1x1x1x2xi1>
    %3 = "tosa.select"(%2, %0, %1) : (tensor<1x1x1x2xi1>, tensor<2x1x2x1xf32>, tensor<1x1x1xf32>) -> tensor<2x1x2x2xf32>
    return %3 : tensor<2x1x2x2xf32>
  }
}

