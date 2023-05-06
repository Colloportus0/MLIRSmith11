module {
  func.func @main(%arg0: tensor<2x2x1x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<?xf16> {iree.identifier = "inputs_1"}) -> (tensor<2x2x1x2xf16> {iree.identifier = "Identity"}, tensor<2x2x1x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.add"(%arg1, %arg0) : (tensor<?xf16>, tensor<2x2x1x2xf16>) -> tensor<2x2x1x2xf16>
    return %arg0, %0 : tensor<2x2x1x2xf16>, tensor<2x2x1x2xf16>
  }
}

