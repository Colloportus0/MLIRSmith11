module {
  func.func @main(%arg0: tensor<1x2x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x1x1xf16> {iree.identifier = "Identity"}, tensor<1x2x2x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[3.525390e+00, 5.937500e+00]], [[5.660150e+00, 5.480460e+00]]]]> : tensor<1x2x1x2xf16>} : () -> tensor<1x2x1x2xf16>
    %1 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x2x2x2xf16>} : () -> tensor<1x2x2x2xf16>
    %2 = "tosa.reciprocal"(%0) : (tensor<1x2x1x2xf16>) -> tensor<1x2x1x2xf16>
    %3 = "tosa.mul"(%arg0, %2) {shift = 0 : i32} : (tensor<1x2x1x1xf16>, tensor<1x2x1x2xf16>) -> tensor<1x2x1x2xf16>
    %4 = "tosa.mul"(%3, %1) {shift = 0 : i32} : (tensor<1x2x1x2xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %5 = "tosa.add"(%3, %4) : (tensor<1x2x1x2xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %6 = "tosa.reshape"(%arg0) {new_shape = [2, 1, 1]} : (tensor<1x2x1x1xf16>) -> tensor<2x1x1xf16>
    return %6, %5 : tensor<2x1x1xf16>, tensor<1x2x2x2xf16>
  }
}

