module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<2xf16> {iree.identifier = "inputs_2"}) -> (tensor<2x1x1x1xf16> {iree.identifier = "Identity"}, tensor<2xf16> {iree.identifier = "Identity_1"}, tensor<2x1x1x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.abs"(%arg2) : (tensor<2xf16>) -> tensor<2xf16>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %2 = "tosa.concat"(%1, %arg1) {axis = 0 : i64} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<2x1x1x1xf16>
    %3 = "tosa.reshape"(%arg2) {new_shape = [1, 1, 1, 2]} : (tensor<2xf16>) -> tensor<1x1x1x2xf16>
    %4 = "tosa.maximum"(%2, %3) : (tensor<2x1x1x1xf16>, tensor<1x1x1x2xf16>) -> tensor<2x1x1x2xf16>
    return %2, %0, %4 : tensor<2x1x1x1xf16>, tensor<2xf16>, tensor<2x1x1x2xf16>
  }
}

