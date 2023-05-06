module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf16> {iree.identifier = "Identity"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.greater"(%arg0, %arg0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi1>
    %1 = "tosa.logical_and"(%0, %0) : (tensor<1x1x1x1xi1>, tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %2 = "tosa.sub"(%arg0, %arg0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %3 = "tosa.negate"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %4 = "tosa.minimum"(%2, %arg0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    return %3, %4, %1 : tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xi1>
  }
}

