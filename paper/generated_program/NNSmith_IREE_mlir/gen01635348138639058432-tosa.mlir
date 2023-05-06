module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x1x1x1xf16> {iree.identifier = "Identity"}, tensor<2x1x1x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5.429690e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %1 = "tosa.concat"(%arg0, %0) {axis = 0 : i64} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<2x1x1x1xf16>
    return %1, %1 : tensor<2x1x1x1xf16>, tensor<2x1x1x1xf16>
  }
}

