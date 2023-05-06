module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x1xf16> {iree.identifier = "Identity"}, tensor<1x2x1x1xf16> {iree.identifier = "Identity_1"}, tensor<1x2x1x1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.abs"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %1 = "tosa.maximum"(%arg1, %arg0) : (tensor<1x2x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x2x1x1xf16>
    %2 = "tosa.add"(%1, %1) : (tensor<1x2x1x1xf16>, tensor<1x2x1x1xf16>) -> tensor<1x2x1x1xf16>
    return %0, %1, %2 : tensor<1x1x1x1xf16>, tensor<1x2x1x1xf16>, tensor<1x2x1x1xf16>
  }
}

