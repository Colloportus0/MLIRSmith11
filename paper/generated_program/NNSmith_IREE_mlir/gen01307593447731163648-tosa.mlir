module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi1> {iree.identifier = "Identity"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.negate"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %1 = "tosa.sub"(%arg0, %arg0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %2 = "tosa.greater_equal"(%0, %0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi1>
    %3 = "tosa.logical_not"(%2) : (tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %4 = "tosa.reciprocal"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %5 = "tosa.mul"(%1, %4) {shift = 0 : i32} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    return %3, %5 : tensor<1x1x1x1xi1>, tensor<1x1x1x1xf16>
  }
}

