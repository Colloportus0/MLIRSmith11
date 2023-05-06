module {
  func.func @main(%arg0: tensor<1x1x1x2xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x2xf16> {iree.identifier = "Identity"}) {
    return %arg0 : tensor<1x1x1x2xf16>
  }
}

