module {
  func.func @main(%arg0: tensor<2xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x2x1x2xf16> {iree.identifier = "Identity"}, tensor<1x2x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[5.738280e+00, 3.939450e+00]], [[4.265630e+00, 5.000000e+00]]]]> : tensor<1x2x1x2xf16>} : () -> tensor<1x2x1x2xf16>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<2xf16>) -> tensor<1x1x1x2xf16>
    %2 = "tosa.minimum"(%1, %0) : (tensor<1x1x1x2xf16>, tensor<1x2x1x2xf16>) -> tensor<1x2x1x2xf16>
    %3 = "tosa.abs"(%2) : (tensor<1x2x1x2xf16>) -> tensor<1x2x1x2xf16>
    %4 = "tosa.sub"(%3, %3) : (tensor<1x2x1x2xf16>, tensor<1x2x1x2xf16>) -> tensor<1x2x1x2xf16>
    %5 = "tosa.reshape"(%3) {new_shape = [1, 2, 2]} : (tensor<1x2x1x2xf16>) -> tensor<1x2x2xf16>
    return %4, %5 : tensor<1x2x1x2xf16>, tensor<1x2x2xf16>
  }
}

