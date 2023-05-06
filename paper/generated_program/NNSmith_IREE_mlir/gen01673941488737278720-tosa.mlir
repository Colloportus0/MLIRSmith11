module {
  func.func @main(%arg0: tensor<2x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<2x2x1x1xi64> {iree.identifier = "Identity"}, tensor<2x2x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[3.42603374]], [[4.823680e+00]]]]> : tensor<1x2x1x1xf32>} : () -> tensor<1x2x1x1xf32>
    %1 = "tosa.minimum"(%arg0, %0) : (tensor<2x1x1x1xf32>, tensor<1x2x1x1xf32>) -> tensor<2x2x1x1xf32>
    %2 = "tosa.floor"(%1) : (tensor<2x2x1x1xf32>) -> tensor<2x2x1x1xf32>
    %3 = "tosa.cast"(%2) : (tensor<2x2x1x1xf32>) -> tensor<2x2x1x1xi64>
    return %3, %2 : tensor<2x2x1x1xi64>, tensor<2x2x1x1xf32>
  }
}

