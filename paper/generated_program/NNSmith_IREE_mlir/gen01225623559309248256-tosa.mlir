module {
  func.func @main(%arg0: tensor<1x1x2x2xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x2x2x2xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[5.089840e+00, 5.031250e+00]], [[5.570310e+00, 4.984380e+00]]], [[[6.921880e+00, 5.507810e+00]], [[3.962890e+00, 6.496090e+00]]]]> : tensor<2x2x1x2xf16>} : () -> tensor<2x2x1x2xf16>
    %1 = "tosa.mul"(%arg0, %0) {shift = 0 : i32} : (tensor<1x1x2x2xf16>, tensor<2x2x1x2xf16>) -> tensor<2x2x2x2xf16>
    %2 = "tosa.negate"(%1) : (tensor<2x2x2x2xf16>) -> tensor<2x2x2x2xf16>
    return %2 : tensor<2x2x2x2xf16>
  }
}

