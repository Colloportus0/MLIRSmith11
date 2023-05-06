module {
  func.func @main(%arg0: tensor<2x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x1x1x1xf16> {iree.identifier = "Identity"}, tensor<2x1x1x1xf16> {iree.identifier = "inputs_0"}, tensor<f16> {iree.identifier = "Identity_2"}, tensor<2x1x1x2xf16> {iree.identifier = "Identity_3"}) {
    %0 = "tosa.negate"(%arg0) : (tensor<2x1x1x1xf16>) -> tensor<2x1x1x1xf16>
    %1 = "tosa.reshape"(%arg0) {new_shape = [2]} : (tensor<2x1x1x1xf16>) -> tensor<2xf16>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<2x1x1x1xf16>) -> tensor<1x1x1x2xf16>
    %3 = "tosa.minimum"(%arg0, %2) : (tensor<2x1x1x1xf16>, tensor<1x1x1x2xf16>) -> tensor<2x1x1x2xf16>
    %4 = "tosa.reduce_max"(%1) {axis = 0 : i64} : (tensor<2xf16>) -> tensor<1xf16>
    %5 = "tosa.reshape"(%4) {new_shape = []} : (tensor<1xf16>) -> tensor<f16>
    return %0, %arg0, %5, %3 : tensor<2x1x1x1xf16>, tensor<2x1x1x1xf16>, tensor<f16>, tensor<2x1x1x2xf16>
  }
}

