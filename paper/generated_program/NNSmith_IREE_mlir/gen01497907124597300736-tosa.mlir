module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<f16> {iree.identifier = "Identity"}, tensor<1xf16> {iree.identifier = "Identity_1"}, tensor<2x2x1x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[[[[5.000000e+00, 4.273440e+00]], [[6.609380e+00, 5.777340e+00]]], [[[3.927730e+00, 6.570310e+00]], [[6.656250e+00, 6.824210e+00]]]]> : tensor<2x2x1x2xf16>} : () -> tensor<2x2x1x2xf16>
    %1 = "tosa.sub"(%arg0, %0) : (tensor<1x1x1x1xf16>, tensor<2x2x1x2xf16>) -> tensor<2x2x1x2xf16>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1]} : (tensor<1x1x1x1xf16>) -> tensor<1xf16>
    %3 = "tosa.reshape"(%arg0) {new_shape = []} : (tensor<1x1x1x1xf16>) -> tensor<f16>
    return %3, %2, %1 : tensor<f16>, tensor<1xf16>, tensor<2x2x1x2xf16>
  }
}

