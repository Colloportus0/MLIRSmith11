module {
  func.func @main(%arg0: tensor<2x1x2x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2xf16> {iree.identifier = "inputs_1"}) -> (tensor<4xf16> {iree.identifier = "Identity"}, tensor<2x1x2x1xf16> {iree.identifier = "Identity_1"}, tensor<2x1x2x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.add"(%arg0, %arg0) : (tensor<2x1x2x1xf16>, tensor<2x1x2x1xf16>) -> tensor<2x1x2x1xf16>
    %2 = "tosa.abs"(%1) : (tensor<2x1x2x1xf16>) -> tensor<2x1x2x1xf16>
    %3 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, 2]} : (tensor<1x2xf16>) -> tensor<1x1x1x2xf16>
    %4 = "tosa.minimum"(%3, %arg0) : (tensor<1x1x1x2xf16>, tensor<2x1x2x1xf16>) -> tensor<2x1x2x2xf16>
    %5 = "tosa.transpose"(%arg0, %0) : (tensor<2x1x2x1xf16>, tensor<4xi32>) -> tensor<2x1x1x2xf16>
    %6 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, 2]} : (tensor<1x2xf16>) -> tensor<1x1x1x2xf16>
    %7 = "tosa.sub"(%4, %6) : (tensor<2x1x2x2xf16>, tensor<1x1x1x2xf16>) -> tensor<2x1x2x2xf16>
    %8 = "tosa.reshape"(%5) {new_shape = [4]} : (tensor<2x1x1x2xf16>) -> tensor<4xf16>
    return %8, %2, %7 : tensor<4xf16>, tensor<2x1x2x1xf16>, tensor<2x1x2x2xf16>
  }
}

