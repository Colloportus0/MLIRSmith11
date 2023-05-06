module {
  func.func @main(%arg0: tensor<2x2x2x2xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x2x2x2xi32> {iree.identifier = "Identity"}, tensor<2x2x2x2xi32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[4.769530e+00, 4.824220e+00]], [[4.250000e+00, 3.458980e+00]]], [[[3.386720e+00, 5.722650e+00]], [[4.843750e+00, 4.382810e+00]]]]> : tensor<2x2x1x2xf16>} : () -> tensor<2x2x1x2xf16>
    %1 = "tosa.cast"(%arg0) : (tensor<2x2x2x2xf16>) -> tensor<2x2x2x2xi32>
    %2 = "tosa.sub"(%0, %arg0) : (tensor<2x2x1x2xf16>, tensor<2x2x2x2xf16>) -> tensor<2x2x2x2xf16>
    %3 = "tosa.cast"(%2) : (tensor<2x2x2x2xf16>) -> tensor<2x2x2x2xi32>
    return %1, %3 : tensor<2x2x2x2xi32>, tensor<2x2x2x2xi32>
  }
}

