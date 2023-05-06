module {
  func.func @main(%arg0: tensor<2x1x1x1xi1> {iree.identifier = "inputs_0"}) -> (tensor<2x2x2x1xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[3.175780e+00], [4.070310e+00]], [[4.906250e+00], [5.421880e+00]]], [[[5.441400e+00], [3.152340e+00]], [[3.021480e+00], [4.191410e+00]]]]> : tensor<2x2x2x1xf16>} : () -> tensor<2x2x2x1xf16>
    %1 = "tosa.const"() {value = dense<4.187500e+00> : tensor<1xf16>} : () -> tensor<1xf16>
    %2 = "tosa.select"(%arg0, %0, %1) : (tensor<2x1x1x1xi1>, tensor<2x2x2x1xf16>, tensor<1xf16>) -> tensor<2x2x2x1xf16>
    return %2 : tensor<2x2x2x1xf16>
  }
}

