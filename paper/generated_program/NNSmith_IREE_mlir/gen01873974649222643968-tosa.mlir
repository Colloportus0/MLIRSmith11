module {
  func.func @main(%arg0: tensor<2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<2x2x2x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<2x2x2x2xf16> {iree.identifier = "Identity"}, tensor<2x2x2x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 3, 2, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<2xf16>) -> tensor<1x1x1x2xf16>
    %2 = "tosa.sub"(%arg1, %1) : (tensor<2x2x2x1xf16>, tensor<1x1x1x2xf16>) -> tensor<2x2x2x2xf16>
    %3 = "tosa.transpose"(%2, %0) : (tensor<2x2x2x2xf16>, tensor<4xi32>) -> tensor<2x2x2x2xf16>
    %4 = "tosa.negate"(%3) : (tensor<2x2x2x2xf16>) -> tensor<2x2x2x2xf16>
    %5 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<2xf16>) -> tensor<1x1x1x2xf16>
    %6 = "tosa.maximum"(%5, %3) : (tensor<1x1x1x2xf16>, tensor<2x2x2x2xf16>) -> tensor<2x2x2x2xf16>
    return %6, %4 : tensor<2x2x2x2xf16>, tensor<2x2x2x2xf16>
  }
}

