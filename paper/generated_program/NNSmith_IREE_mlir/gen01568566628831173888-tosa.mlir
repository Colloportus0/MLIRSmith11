module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.cast"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi1>
    %1 = "tosa.logical_or"(%0, %0) : (tensor<1x1x1x1xi1>, tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %2 = "tosa.sub"(%arg0, %arg0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    return %arg0, %1, %2 : tensor<1x1x1x1xf16>, tensor<1x1x1x1xi1>, tensor<1x1x1x1xf16>
  }
}

