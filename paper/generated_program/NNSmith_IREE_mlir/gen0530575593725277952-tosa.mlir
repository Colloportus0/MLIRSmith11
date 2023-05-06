module {
  func.func @main(%arg0: tensor<1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x5x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x5x3xi64> {iree.identifier = "Identity"}, tensor<1x1x5x5xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<4.277340e+00> : tensor<1x1x1xf16>} : () -> tensor<1x1x1xf16>
    %1 = "tosa.const"() {value = dense<3.925780e+00> : tensor<1x1x1xf16>} : () -> tensor<1x1x1xf16>
    %2 = "tosa.const"() {value = dense<4.714840e+00> : tensor<1x1x1xf16>} : () -> tensor<1x1x1xf16>
    %3 = "tosa.const"() {value = dense<4.660160e+00> : tensor<1x1x1xf16>} : () -> tensor<1x1x1xf16>
    %4 = "tosa.concat"(%arg0, %0, %1, %2, %3) {axis = 1 : i64} : (tensor<1x1x1xf16>, tensor<1x1x1xf16>, tensor<1x1x1xf16>, tensor<1x1x1xf16>, tensor<1x1x1xf16>) -> tensor<1x5x1xf16>
    %5 = "tosa.concat"(%4, %4, %4) {axis = 2 : i64} : (tensor<1x5x1xf16>, tensor<1x5x1xf16>, tensor<1x5x1xf16>) -> tensor<1x5x3xf16>
    %6 = "tosa.cast"(%5) : (tensor<1x5x3xf16>) -> tensor<1x5x3xi64>
    %7 = "tosa.reshape"(%4) {new_shape = [1, 1, 1, 5]} : (tensor<1x5x1xf16>) -> tensor<1x1x1x5xf16>
    %8 = "tosa.add"(%arg1, %7) : (tensor<1x1x5x1xf16>, tensor<1x1x1x5xf16>) -> tensor<1x1x5x5xf16>
    return %6, %8 : tensor<1x5x3xi64>, tensor<1x1x5x5xf16>
  }
}

