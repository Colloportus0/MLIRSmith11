module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2x1xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<6.375000e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %1 = "tosa.concat"(%arg0, %0) {axis = 2 : i64} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x2x1xf16>
    return %1 : tensor<1x1x2x1xf16>
  }
}

