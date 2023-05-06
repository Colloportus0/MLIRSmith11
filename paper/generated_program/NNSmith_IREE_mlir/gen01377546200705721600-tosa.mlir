module {
  func.func @main(%arg0: tensor<1x1x2x2x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2x2x2xf16> {iree.identifier = "Identity"}, tensor<1x1x2x0xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[[6.835930e-01, 9.765620e-01]]]]]> : tensor<1x1x1x1x2xf16>} : () -> tensor<1x1x1x1x2xf16>
    %1 = "tosa.const"() {value = dense<> : tensor<1x1x2x0xf16>} : () -> tensor<1x1x2x0xf16>
    %2 = "tosa.reciprocal"(%0) : (tensor<1x1x1x1x2xf16>) -> tensor<1x1x1x1x2xf16>
    %3 = "tosa.mul"(%arg0, %2) {shift = 0 : i32} : (tensor<1x1x2x2x1xf16>, tensor<1x1x1x1x2xf16>) -> tensor<1x1x2x2x2xf16>
    return %3, %1 : tensor<1x1x2x2x2xf16>, tensor<1x1x2x0xf16>
  }
}

