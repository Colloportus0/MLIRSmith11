module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) {
    %0 = "tosa.cast"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf32>
    return %arg0, %0, %arg0 : tensor<1x1x1x1xf16>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf16>
  }
}

