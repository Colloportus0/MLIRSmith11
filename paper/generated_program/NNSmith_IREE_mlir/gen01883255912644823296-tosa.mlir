module {
  func.func @main(%arg0: tensor<1x2x2x2xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x2x2x1xf32> {iree.identifier = "Identity"}, tensor<2x2x2x2xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[6.000000e+00], [3.000000e+00]]], [[[6.000000e+00], [5.000000e+00]]]]> : tensor<2x1x2x1xf32>} : () -> tensor<2x1x2x1xf32>
    %1 = "tosa.reciprocal"(%arg0) : (tensor<1x2x2x2xf32>) -> tensor<1x2x2x2xf32>
    %2 = "tosa.mul"(%1, %0) {shift = 0 : i32} : (tensor<1x2x2x2xf32>, tensor<2x1x2x1xf32>) -> tensor<2x2x2x2xf32>
    %3 = "tosa.greater"(%2, %2) : (tensor<2x2x2x2xf32>, tensor<2x2x2x2xf32>) -> tensor<2x2x2x2xi1>
    %4 = "tosa.slice"(%arg0) {size = [1, 2, 2, 1], start = [0, 0, 0, 0]} : (tensor<1x2x2x2xf32>) -> tensor<1x2x2x1xf32>
    return %4, %3 : tensor<1x2x2x1xf32>, tensor<2x2x2x2xi1>
  }
}

