module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1xf16> {iree.identifier = "Identity"}, tensor<1xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.reshape"(%arg0) {new_shape = [1]} : (tensor<1x1x1x1xf16>) -> tensor<1xf16>
    %1 = "tosa.greater_equal"(%0, %0) : (tensor<1xf16>, tensor<1xf16>) -> tensor<1xi1>
    %2 = "tosa.logical_not"(%1) : (tensor<1xi1>) -> tensor<1xi1>
    return %0, %2 : tensor<1xf16>, tensor<1xi1>
  }
}

