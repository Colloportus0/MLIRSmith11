module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x1x1x1xi1> {iree.identifier = "Identity"}, tensor<4x1x1x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[4.753910e+00]]], [[[4.402340e+00]]]]> : tensor<2x1x1x1xf16>} : () -> tensor<2x1x1x1xf16>
    %1 = "tosa.const"() {value = dense<4.542970e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %2 = "tosa.maximum"(%arg0, %0) : (tensor<1x1x1x1xf16>, tensor<2x1x1x1xf16>) -> tensor<2x1x1x1xf16>
    %3 = "tosa.negate"(%2) : (tensor<2x1x1x1xf16>) -> tensor<2x1x1x1xf16>
    %4 = "tosa.cast"(%3) : (tensor<2x1x1x1xf16>) -> tensor<2x1x1x1xi1>
    %5 = "tosa.concat"(%arg0, %0, %1) {axis = 0 : i64} : (tensor<1x1x1x1xf16>, tensor<2x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<4x1x1x1xf16>
    return %4, %5 : tensor<2x1x1x1xi1>, tensor<4x1x1x1xf16>
  }
}

