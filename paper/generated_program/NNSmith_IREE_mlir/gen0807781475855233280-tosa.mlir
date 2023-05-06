module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xf16> {iree.identifier = "Identity"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.cast"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi1>
    %1 = "tosa.abs"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %2 = "tosa.reshape"(%1) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xf16>
    %3 = "tosa.greater_equal"(%arg0, %1) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi1>
    %4 = "tosa.logical_not"(%3) : (tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %5 = "tosa.logical_and"(%0, %4) : (tensor<1x1x1x1xi1>, tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    return %2, %5 : tensor<1x1x1xf16>, tensor<1x1x1x1xi1>
  }
}

