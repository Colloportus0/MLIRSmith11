module {
  func.func @main(%arg0: tensor<1x2xf16> {iree.identifier = "inputs_0"}) -> (tensor<2xi64> {iree.identifier = "Identity"}, tensor<1x1x2x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[6.320310e+00, 6.851560e+00], [6.105460e+00, 6.031250e+00]]]]> : tensor<1x1x2x2xf16>} : () -> tensor<1x1x2x2xf16>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<1x2xf16>) -> tensor<1x1x1x2xf16>
    %2 = "tosa.maximum"(%1, %0) : (tensor<1x1x1x2xf16>, tensor<1x1x2x2xf16>) -> tensor<1x1x2x2xf16>
    %3 = "tosa.argmax"(%arg0) {axis = 0 : i64} : (tensor<1x2xf16>) -> tensor<2xi64>
    return %3, %2 : tensor<2xi64>, tensor<1x1x2x2xf16>
  }
}

