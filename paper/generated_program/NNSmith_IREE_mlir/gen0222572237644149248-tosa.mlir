module {
  func.func @main(%arg0: tensor<1x1x2x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2x2xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x1x2x2xf16> {iree.identifier = "inputs_1"}, tensor<1x2x2xf16> {iree.identifier = "Identity_1"}, tensor<1x2x2x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.transpose"(%arg1, %0) : (tensor<1x1x2x2xf16>, tensor<4xi32>) -> tensor<1x2x2x1xf16>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<1x1x2x1xf16>) -> tensor<1x1x1x2xf16>
    %3 = "tosa.sub"(%1, %2) : (tensor<1x2x2x1xf16>, tensor<1x1x1x2xf16>) -> tensor<1x2x2x2xf16>
    %4 = "tosa.maximum"(%3, %3) : (tensor<1x2x2x2xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %5 = "tosa.reduce_sum"(%3) {axis = 3 : i64} : (tensor<1x2x2x2xf16>) -> tensor<1x2x2x1xf16>
    %6 = "tosa.reshape"(%5) {new_shape = [1, 2, 2]} : (tensor<1x2x2x1xf16>) -> tensor<1x2x2xf16>
    return %arg1, %6, %4 : tensor<1x1x2x2xf16>, tensor<1x2x2xf16>, tensor<1x2x2x2xf16>
  }
}

