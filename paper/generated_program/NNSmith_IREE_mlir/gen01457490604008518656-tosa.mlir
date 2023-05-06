module {
  func.func @main(%arg0: tensor<1x1x2x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<2x3x2x2xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[3.507810e+00, 3.507810e+00], [3.507810e+00, 3.507810e+00]], [[6.019530e+00, 6.019530e+00], [6.019530e+00, 6.019530e+00]]]]> : tensor<1x2x2x2xf16>} : () -> tensor<1x2x2x2xf16>
    %1 = "tosa.concat"(%0, %arg0) {axis = 1 : i64} : (tensor<1x2x2x2xf16>, tensor<1x1x2x2xf16>) -> tensor<1x3x2x2xf16>
    %2 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %3 = "tosa.mul"(%2, %1) {shift = 0 : i32} : (tensor<1x1x1x1xf16>, tensor<1x3x2x2xf16>) -> tensor<1x3x2x2xf16>
    %4 = "tosa.concat"(%1, %3) {axis = 0 : i64} : (tensor<1x3x2x2xf16>, tensor<1x3x2x2xf16>) -> tensor<2x3x2x2xf16>
    return %4 : tensor<2x3x2x2xf16>
  }
}

