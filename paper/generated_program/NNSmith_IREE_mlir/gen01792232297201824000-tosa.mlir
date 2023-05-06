module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x2xf16> {iree.identifier = "Identity"}, tensor<1x1x1x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[6.015630e+00, 6.683590e+00]]]]> : tensor<1x1x1x2xf16>} : () -> tensor<1x1x1x2xf16>
    %1 = "tosa.minimum"(%arg0, %0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x2xf16>) -> tensor<1x1x1x2xf16>
    %2 = "tosa.mul"(%1, %1) {shift = 0 : i32} : (tensor<1x1x1x2xf16>, tensor<1x1x1x2xf16>) -> tensor<1x1x1x2xf16>
    %3 = "tosa.sub"(%2, %0) : (tensor<1x1x1x2xf16>, tensor<1x1x1x2xf16>) -> tensor<1x1x1x2xf16>
    return %3, %2 : tensor<1x1x1x2xf16>, tensor<1x1x1x2xf16>
  }
}

