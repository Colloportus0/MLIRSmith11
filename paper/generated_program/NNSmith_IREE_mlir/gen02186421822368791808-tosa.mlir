module {
  func.func @main(%arg0: tensor<1x2x2x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x2x2x1xf16> {iree.identifier = "Identity"}, tensor<1x2x2x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<4.160160e+00> : tensor<1x1x1xf16>} : () -> tensor<1x1x1xf16>
    %1 = "tosa.reciprocal"(%0) : (tensor<1x1x1xf16>) -> tensor<1x1x1xf16>
    %2 = "tosa.reshape"(%1) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %3 = "tosa.mul"(%arg0, %2) {shift = 0 : i32} : (tensor<1x2x2x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x2x2x1xf16>
    %4 = "tosa.add"(%3, %3) : (tensor<1x2x2x1xf16>, tensor<1x2x2x1xf16>) -> tensor<1x2x2x1xf16>
    %5 = "tosa.mul"(%3, %4) {shift = 0 : i32} : (tensor<1x2x2x1xf16>, tensor<1x2x2x1xf16>) -> tensor<1x2x2x1xf16>
    return %5, %4 : tensor<1x2x2x1xf16>, tensor<1x2x2x1xf16>
  }
}

