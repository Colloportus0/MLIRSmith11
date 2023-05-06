module {
  func.func @main(%arg0: tensor<1x1x2x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<2x2x2xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x1x2x2xf16> {iree.identifier = "Identity"}, tensor<1x2x2xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<true> : tensor<1x2x2xi1>} : () -> tensor<1x2x2xi1>
    %1 = "tosa.reshape"(%arg1) {new_shape = [1, 2, 2, 2]} : (tensor<2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %2 = "tosa.reciprocal"(%arg0) : (tensor<1x1x2x2xf16>) -> tensor<1x1x2x2xf16>
    %3 = "tosa.mul"(%1, %2) {shift = 0 : i32} : (tensor<1x2x2x2xf16>, tensor<1x1x2x2xf16>) -> tensor<1x2x2x2xf16>
    %4 = "tosa.slice"(%3) {size = [1, 1, 2, 2], start = [0, 0, 0, 0]} : (tensor<1x2x2x2xf16>) -> tensor<1x1x2x2xf16>
    return %4, %0 : tensor<1x1x2x2xf16>, tensor<1x2x2xi1>
  }
}

