module {
  func.func @main(%arg0: tensor<1x1x2x2xf16> {iree.identifier = "inputs_0"}) -> (tensor<3x1x2x1xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[3.859380e+01, 3.731250e+01], [1.149220e+01, 1.882810e+01]]], [[[3.493750e+01, 2.229690e+01], [1.770310e+01, 1.670310e+01]]]]> : tensor<2x1x2x2xf16>} : () -> tensor<2x1x2x2xf16>
    %1 = "tosa.abs"(%arg0) : (tensor<1x1x2x2xf16>) -> tensor<1x1x2x2xf16>
    %2 = "tosa.concat"(%0, %1) {axis = 0 : i64} : (tensor<2x1x2x2xf16>, tensor<1x1x2x2xf16>) -> tensor<3x1x2x2xf16>
    %3 = "tosa.slice"(%2) {size = [3, 1, 2, 1], start = [0, 0, 0, 0]} : (tensor<3x1x2x2xf16>) -> tensor<3x1x2x1xf16>
    return %3 : tensor<3x1x2x1xf16>
  }
}

