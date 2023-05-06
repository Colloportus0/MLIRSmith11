module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi1> {iree.identifier = "Identity"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %1 = "tosa.greater"(%0, %0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi1>
    %2 = "tosa.logical_and"(%1, %1) : (tensor<1x1x1x1xi1>, tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %3 = "tosa.logical_not"(%2) : (tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %4 = "tosa.logical_or"(%1, %1) : (tensor<1x1x1x1xi1>, tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %5 = "tosa.logical_and"(%4, %3) : (tensor<1x1x1x1xi1>, tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %6 = "tosa.greater_equal"(%0, %0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi1>
    %7 = "tosa.logical_not"(%6) : (tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    return %7, %5 : tensor<1x1x1x1xi1>, tensor<1x1x1x1xi1>
  }
}

