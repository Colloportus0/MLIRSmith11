module {
  func.func @main(%arg0: tensor<1x2x2x1xi1> {iree.identifier = "inputs_0"}) -> (tensor<2x2x2x1xi64> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[5.972650e+00]], [[3.759770e+00]]]]> : tensor<1x2x1x1xf16>} : () -> tensor<1x2x1x1xf16>
    %1 = "tosa.const"() {value = dense<[[[[6.093750e+00]], [[5.308590e+00]]], [[[5.898440e+00]], [[6.527340e+00]]]]> : tensor<2x2x1x1xf16>} : () -> tensor<2x2x1x1xf16>
    %2 = "tosa.const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.select"(%arg0, %0, %1) : (tensor<1x2x2x1xi1>, tensor<1x2x1x1xf16>, tensor<2x2x1x1xf16>) -> tensor<2x2x2x1xf16>
    %4 = "tosa.transpose"(%3, %2) : (tensor<2x2x2x1xf16>, tensor<4xi32>) -> tensor<2x2x2x1xf16>
    %5 = "tosa.cast"(%4) : (tensor<2x2x2x1xf16>) -> tensor<2x2x2x1xi64>
    return %5 : tensor<2x2x2x1xi64>
  }
}

