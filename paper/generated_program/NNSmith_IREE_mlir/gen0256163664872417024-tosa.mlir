module {
  func.func @main(%arg0: tensor<1x2x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x1xf16> {iree.identifier = "Identity"}, tensor<1x2x1xf16> {iree.identifier = "Identity_1"}, tensor<1x2x1xf16> {iree.identifier = "inputs_0"}, tensor<8xf16> {iree.identifier = "Identity_3"}) {
    %0 = "tosa.const"() {value = dense<[[[[3.933590e+00, 4.050780e+00], [6.664060e+00, 3.609380e+00]], [[5.402340e+00, 4.660160e+00], [4.757810e+00, 5.718750e+00]]]]> : tensor<1x2x2x2xf16>} : () -> tensor<1x2x2x2xf16>
    %1 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2 = "tosa.negate"(%arg0) : (tensor<1x2x1xf16>) -> tensor<1x2x1xf16>
    %3 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 2, 1]} : (tensor<1x2x1xf16>) -> tensor<1x1x2x1xf16>
    %4 = "tosa.maximum"(%3, %0) : (tensor<1x1x2x1xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %5 = "tosa.transpose"(%4, %1) : (tensor<1x2x2x2xf16>, tensor<4xi32>) -> tensor<1x2x2x2xf16>
    %6 = "tosa.reshape"(%arg0) {new_shape = [2, 1]} : (tensor<1x2x1xf16>) -> tensor<2x1xf16>
    %7 = "tosa.reshape"(%5) {new_shape = [8]} : (tensor<1x2x2x2xf16>) -> tensor<8xf16>
    return %6, %2, %arg0, %7 : tensor<2x1xf16>, tensor<1x2x1xf16>, tensor<1x2x1xf16>, tensor<8xf16>
  }
}

