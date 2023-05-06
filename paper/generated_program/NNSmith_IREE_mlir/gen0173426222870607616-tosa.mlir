module {
  func.func @main(%arg0: tensor<2x2x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x2x1xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<4.300780e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %1 = "tosa.minimum"(%arg0, %0) : (tensor<2x2x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<2x2x1x1xf16>
    %2 = "tosa.reshape"(%1) {new_shape = [2, 2, 1]} : (tensor<2x2x1x1xf16>) -> tensor<2x2x1xf16>
    return %2 : tensor<2x2x1xf16>
  }
}

