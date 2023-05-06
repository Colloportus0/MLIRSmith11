module {
  func.func @main(%arg0: tensor<1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2x2xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[5.210940e+00, 5.527340e+00], [4.156250e+00, 6.949210e+00]]]]> : tensor<1x1x2x2xf16>} : () -> tensor<1x1x2x2xf16>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1xf16>) -> tensor<1x1x1x1xf16>
    %2 = "tosa.minimum"(%1, %0) : (tensor<1x1x1x1xf16>, tensor<1x1x2x2xf16>) -> tensor<1x1x2x2xf16>
    %3 = "tosa.maximum"(%2, %2) : (tensor<1x1x2x2xf16>, tensor<1x1x2x2xf16>) -> tensor<1x1x2x2xf16>
    %4 = "tosa.add"(%2, %3) : (tensor<1x1x2x2xf16>, tensor<1x1x2x2xf16>) -> tensor<1x1x2x2xf16>
    return %4 : tensor<1x1x2x2xf16>
  }
}

