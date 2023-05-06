module {
  func.func @main(%arg0: tensor<2x2x2x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x2x2x2xf16> {iree.identifier = "Identity"}, tensor<1x2x2x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.reshape"(%arg0) {new_shape = [2, 2, 2, 1]} : (tensor<2x2x2x1x1xf16>) -> tensor<2x2x2x1xf16>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 2, 2, 2]} : (tensor<2x2x2x1x1xf16>) -> tensor<1x2x2x2xf16>
    %2 = "tosa.negate"(%1) : (tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %3 = "tosa.reciprocal"(%2) : (tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %4 = "tosa.mul"(%0, %3) {shift = 0 : i32} : (tensor<2x2x2x1xf16>, tensor<1x2x2x2xf16>) -> tensor<2x2x2x2xf16>
    return %4, %2 : tensor<2x2x2x2xf16>, tensor<1x2x2x2xf16>
  }
}

