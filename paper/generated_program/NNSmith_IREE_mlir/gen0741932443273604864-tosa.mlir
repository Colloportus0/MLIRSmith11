module {
  func.func @main(%arg0: tensor<1x2x2x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<?xi1> {iree.identifier = "inputs_1"}) -> (tensor<1x2x2x2xf16> {iree.identifier = "Identity"}, tensor<2x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5.066410e+00> : tensor<f16>} : () -> tensor<f16>
    %1 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, -1]} : (tensor<?xi1>) -> tensor<1x1x1x?xi1>
    %2 = "tosa.select"(%1, %arg0, %0) : (tensor<1x1x1x?xi1>, tensor<1x2x2x2xf16>, tensor<f16>) -> tensor<1x2x2x2xf16>
    %3 = "tosa.maximum"(%2, %2) : (tensor<1x2x2x2xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %4 = "tosa.reshape"(%3) {new_shape = [2, 2, 2]} : (tensor<1x2x2x2xf16>) -> tensor<2x2x2xf16>
    %5 = "tosa.reduce_max"(%4) {axis = 0 : i64} : (tensor<2x2x2xf16>) -> tensor<1x2x2xf16>
    %6 = "tosa.reshape"(%5) {new_shape = [2, 2]} : (tensor<1x2x2xf16>) -> tensor<2x2xf16>
    return %2, %6 : tensor<1x2x2x2xf16>, tensor<2x2xf16>
  }
}

