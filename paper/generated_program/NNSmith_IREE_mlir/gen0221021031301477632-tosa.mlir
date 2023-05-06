module {
  func.func @main(%arg0: tensor<2x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<2x2xf16> {iree.identifier = "inputs_0"}, tensor<1x2x2x2xf16> {iree.identifier = "Identity_1"}, tensor<1x2x2x2xi1> {iree.identifier = "Identity_2"}, tensor<1x2x2x2xi1> {iree.identifier = "Identity_3"}) {
    %0 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 2, 2]} : (tensor<2x2xf16>) -> tensor<1x1x2x2xf16>
    %1 = "tosa.maximum"(%arg1, %0) : (tensor<1x2x1x1xf16>, tensor<1x1x2x2xf16>) -> tensor<1x2x2x2xf16>
    %2 = "tosa.cast"(%1) : (tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xi1>
    %3 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 2, 2]} : (tensor<2x2xf16>) -> tensor<1x1x2x2xf16>
    %4 = "tosa.minimum"(%arg1, %3) : (tensor<1x2x1x1xf16>, tensor<1x1x2x2xf16>) -> tensor<1x2x2x2xf16>
    %5 = "tosa.greater_equal"(%1, %arg1) : (tensor<1x2x2x2xf16>, tensor<1x2x1x1xf16>) -> tensor<1x2x2x2xi1>
    %6 = "tosa.logical_not"(%5) : (tensor<1x2x2x2xi1>) -> tensor<1x2x2x2xi1>
    return %arg0, %4, %2, %6 : tensor<2x2xf16>, tensor<1x2x2x2xf16>, tensor<1x2x2x2xi1>, tensor<1x2x2x2xi1>
  }
}

