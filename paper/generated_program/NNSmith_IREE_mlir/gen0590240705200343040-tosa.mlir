module {
  func.func @main(%arg0: tensor<1x1x2x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2x2xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x2x2xf16> {iree.identifier = "Identity"}, tensor<1x2x2x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[4.109380e+00, 6.308590e+00]]]]> : tensor<1x1x1x2xf16>} : () -> tensor<1x1x1x2xf16>
    %1 = "tosa.mul"(%arg0, %0) {shift = 0 : i32} : (tensor<1x1x2x2xf16>, tensor<1x1x1x2xf16>) -> tensor<1x1x2x2xf16>
    %2 = "tosa.reshape"(%arg1) {new_shape = [1, 2, 2]} : (tensor<1x1x2x2xf16>) -> tensor<1x2x2xf16>
    %3 = "tosa.concat"(%1, %arg1) {axis = 1 : i64} : (tensor<1x1x2x2xf16>, tensor<1x1x2x2xf16>) -> tensor<1x2x2x2xf16>
    return %2, %3 : tensor<1x2x2xf16>, tensor<1x2x2x2xf16>
  }
}

