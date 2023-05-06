module {
  func.func @main(%arg0: tensor<2x1x1x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x2xi1> {iree.identifier = "inputs_2"}) -> (tensor<2x1x2xf16> {iree.identifier = "Identity"}, tensor<1x1x1x2xi1> {iree.identifier = "Identity_1"}, tensor<2x1x1x2xi1> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.logical_and"(%arg2, %arg2) : (tensor<1x1x1x2xi1>, tensor<1x1x1x2xi1>) -> tensor<1x1x1x2xi1>
    %1 = "tosa.logical_not"(%0) : (tensor<1x1x1x2xi1>) -> tensor<1x1x1x2xi1>
    %2 = "tosa.logical_or"(%arg2, %arg2) : (tensor<1x1x1x2xi1>, tensor<1x1x1x2xi1>) -> tensor<1x1x1x2xi1>
    %3 = "tosa.logical_and"(%2, %1) : (tensor<1x1x1x2xi1>, tensor<1x1x1x2xi1>) -> tensor<1x1x1x2xi1>
    %4 = "tosa.select"(%arg2, %arg1, %arg0) : (tensor<1x1x1x2xi1>, tensor<1x1x1x1xf16>, tensor<2x1x1x2xf16>) -> tensor<2x1x1x2xf16>
    %5 = "tosa.greater"(%4, %4) : (tensor<2x1x1x2xf16>, tensor<2x1x1x2xf16>) -> tensor<2x1x1x2xi1>
    %6 = "tosa.reshape"(%arg0) {new_shape = [2, 1, 2]} : (tensor<2x1x1x2xf16>) -> tensor<2x1x2xf16>
    return %6, %3, %5 : tensor<2x1x2xf16>, tensor<1x1x1x2xi1>, tensor<2x1x1x2xi1>
  }
}

