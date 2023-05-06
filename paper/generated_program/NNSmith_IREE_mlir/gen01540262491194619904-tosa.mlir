module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x2x2x1xf32> {iree.identifier = "Identity"}, tensor<1x2x2x2xi1> {iree.identifier = "Identity_1"}, tensor<1x2x2x1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[[[[6.312500e+00], [5.312500e+00]], [[5.308590e+00], [4.441410e+00]]]]> : tensor<1x2x2x1xf16>} : () -> tensor<1x2x2x1xf16>
    %1 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x2x2x2xf16>} : () -> tensor<1x2x2x2xf16>
    %2 = "tosa.maximum"(%arg0, %0) : (tensor<1x1x1x1xf16>, tensor<1x2x2x1xf16>) -> tensor<1x2x2x1xf16>
    %3 = "tosa.mul"(%2, %1) {shift = 0 : i32} : (tensor<1x2x2x1xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %4 = "tosa.greater_equal"(%2, %3) : (tensor<1x2x2x1xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xi1>
    %5 = "tosa.logical_not"(%4) : (tensor<1x2x2x2xi1>) -> tensor<1x2x2x2xi1>
    %6 = "tosa.cast"(%2) : (tensor<1x2x2x1xf16>) -> tensor<1x2x2x1xf32>
    return %6, %5, %2 : tensor<1x2x2x1xf32>, tensor<1x2x2x2xi1>, tensor<1x2x2x1xf16>
  }
}

