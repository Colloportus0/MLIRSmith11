module {
  func.func @main(%arg0: tensor<2x1x1x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x1x2xf16> {iree.identifier = "inputs_1"}) -> (tensor<2x1x2xi64> {iree.identifier = "Identity"}, tensor<2x2x1x1xf16> {iree.identifier = "Identity_1"}, tensor<2x1x3x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.const"() {value = dense<[[[[6.863280e+00, 5.628900e+00]]]]> : tensor<1x1x1x2xf16>} : () -> tensor<1x1x1x2xf16>
    %2 = "tosa.const"() {value = dense<[0, 3, 2, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.transpose"(%arg0, %0) : (tensor<2x1x1x2xf16>, tensor<4xi32>) -> tensor<2x1x2x1xf16>
    %4 = "tosa.mul"(%3, %1) {shift = 0 : i32} : (tensor<2x1x2x1xf16>, tensor<1x1x1x2xf16>) -> tensor<2x1x2x2xf16>
    %5 = "tosa.transpose"(%arg1, %2) : (tensor<2x1x1x2xf16>, tensor<4xi32>) -> tensor<2x2x1x1xf16>
    %6 = "tosa.concat"(%arg1, %4) {axis = 2 : i64} : (tensor<2x1x1x2xf16>, tensor<2x1x2x2xf16>) -> tensor<2x1x3x2xf16>
    %7 = "tosa.argmax"(%4) {axis = 2 : i64} : (tensor<2x1x2x2xf16>) -> tensor<2x1x2xi64>
    return %7, %5, %6 : tensor<2x1x2xi64>, tensor<2x2x1x1xf16>, tensor<2x1x3x2xf16>
  }
}

