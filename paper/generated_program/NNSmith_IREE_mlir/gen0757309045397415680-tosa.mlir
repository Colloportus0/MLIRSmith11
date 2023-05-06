module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x2x2x2xi1> {iree.identifier = "Identity_1"}, tensor<1x2x2x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[[[[3.093750e+00, 4.203130e+00], [6.656250e+00, 4.554690e+00]], [[5.851560e+00, 3.898440e+00], [6.371090e+00, 5.437500e+00]]]]> : tensor<1x2x2x2xf16>} : () -> tensor<1x2x2x2xf16>
    %1 = "tosa.cast"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.maximum"(%arg0, %0) : (tensor<1x1x1x1xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %3 = "tosa.maximum"(%2, %2) : (tensor<1x2x2x2xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %4 = "tosa.greater"(%2, %2) : (tensor<1x2x2x2xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xi1>
    return %1, %4, %3 : tensor<1x1x1x1xf32>, tensor<1x2x2x2xi1>, tensor<1x2x2x2xf16>
  }
}

