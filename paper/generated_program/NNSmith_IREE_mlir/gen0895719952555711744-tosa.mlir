module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf16> {iree.identifier = "Identity"}, tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_2"}, tensor<1xf16> {iree.identifier = "Identity_3"}) {
    %0 = "tosa.greater_equal"(%arg0, %arg0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi1>
    %1 = "tosa.logical_not"(%0) : (tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %2 = "tosa.sub"(%arg0, %arg0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %3 = "tosa.reshape"(%arg0) {new_shape = [1]} : (tensor<1x1x1x1xf16>) -> tensor<1xf16>
    return %2, %arg0, %1, %3 : tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xi1>, tensor<1xf16>
  }
}

