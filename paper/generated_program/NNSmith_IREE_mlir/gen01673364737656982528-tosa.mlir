module {
  func.func @main(%arg0: tensor<2x1x1x1x2xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x2x1x1x2xf16> {iree.identifier = "Identity"}, tensor<2x1x2x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.negate"(%arg0) : (tensor<2x1x1x1x2xf16>) -> tensor<2x1x1x1x2xf16>
    %2 = "tosa.reshape"(%1) {new_shape = [2, 1, 1, 2]} : (tensor<2x1x1x1x2xf16>) -> tensor<2x1x1x2xf16>
    %3 = "tosa.reshape"(%1) {new_shape = [1, 2, 1, 1, 2]} : (tensor<2x1x1x1x2xf16>) -> tensor<1x2x1x1x2xf16>
    %4 = "tosa.maximum"(%arg0, %3) : (tensor<2x1x1x1x2xf16>, tensor<1x2x1x1x2xf16>) -> tensor<2x2x1x1x2xf16>
    %5 = "tosa.abs"(%4) : (tensor<2x2x1x1x2xf16>) -> tensor<2x2x1x1x2xf16>
    %6 = "tosa.transpose"(%2, %0) : (tensor<2x1x1x2xf16>, tensor<4xi32>) -> tensor<2x1x2x1xf16>
    return %5, %6 : tensor<2x2x1x1x2xf16>, tensor<2x1x2x1xf16>
  }
}

