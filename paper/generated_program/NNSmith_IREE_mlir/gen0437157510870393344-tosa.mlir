module {
  func.func @main(%arg0: tensor<?xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x2x1x?xf16> {iree.identifier = "Identity"}, tensor<2x2x1x?xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[3.921880e+00]], [[4.757810e+00]]], [[[3.748050e+00]], [[6.390630e+00]]]]> : tensor<2x2x1x1xf16>} : () -> tensor<2x2x1x1xf16>
    %1 = "tosa.sub"(%arg0, %0) : (tensor<?xf16>, tensor<2x2x1x1xf16>) -> tensor<2x2x1x?xf16>
    return %1, %1 : tensor<2x2x1x?xf16>, tensor<2x2x1x?xf16>
  }
}

