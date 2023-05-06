module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<5x1x1x1xf16> {iree.identifier = "inputs_2"}) -> (tensor<1x1x1x1xi64> {iree.identifier = "Identity"}, tensor<5x1x2x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<3.751950e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %1 = "tosa.const"() {value = dense<4.246090e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %2 = "tosa.const"() {value = dense<6.507810e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %3 = "tosa.cast"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi64>
    %4 = "tosa.concat"(%0, %1, %arg1, %arg0, %2) {axis = 0 : i64} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<5x1x1x1xf16>
    %5 = "tosa.concat"(%arg2, %4) {axis = 2 : i64} : (tensor<5x1x1x1xf16>, tensor<5x1x1x1xf16>) -> tensor<5x1x2x1xf16>
    return %3, %5 : tensor<1x1x1x1xi64>, tensor<5x1x2x1xf16>
  }
}

