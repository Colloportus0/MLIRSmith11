module {
  func.func @main(%arg0: tensor<2x2x2x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<2xi1> {iree.identifier = "inputs_2"}) -> (tensor<2x2xf16> {iree.identifier = "Identity"}, tensor<2x2x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.reshape"(%arg2) {new_shape = [1, 1, 1, 2]} : (tensor<2xi1>) -> tensor<1x1x1x2xi1>
    %1 = "tosa.select"(%0, %arg1, %arg0) : (tensor<1x1x1x2xi1>, tensor<1x1x2x1xf16>, tensor<2x2x2x2xf16>) -> tensor<2x2x2x2xf16>
    %2 = "tosa.reduce_max"(%1) {axis = 1 : i64} : (tensor<2x2x2x2xf16>) -> tensor<2x1x2x2xf16>
    %3 = "tosa.reshape"(%2) {new_shape = [2, 2, 2]} : (tensor<2x1x2x2xf16>) -> tensor<2x2x2xf16>
    %4 = "tosa.reduce_sum"(%3) {axis = 0 : i64} : (tensor<2x2x2xf16>) -> tensor<1x2x2xf16>
    %5 = "tosa.reshape"(%4) {new_shape = [2, 2]} : (tensor<1x2x2xf16>) -> tensor<2x2xf16>
    %6 = "tosa.maximum"(%5, %5) : (tensor<2x2xf16>, tensor<2x2xf16>) -> tensor<2x2xf16>
    return %6, %3 : tensor<2x2xf16>, tensor<2x2x2xf16>
  }
}

