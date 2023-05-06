module {
  func.func @main(%arg0: tensor<1x1x2x2xi1> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2x2xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<4.304690e+00> : tensor<f16>} : () -> tensor<f16>
    %1 = "tosa.const"() {value = dense<[[[6.378900e+00, 4.042970e+00], [4.519530e+00, 5.726560e+00]]]> : tensor<1x2x2xf16>} : () -> tensor<1x2x2xf16>
    %2 = "tosa.select"(%arg0, %0, %1) : (tensor<1x1x2x2xi1>, tensor<f16>, tensor<1x2x2xf16>) -> tensor<1x1x2x2xf16>
    return %2 : tensor<1x1x2x2xf16>
  }
}

