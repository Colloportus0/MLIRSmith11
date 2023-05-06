module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.sigmoid"(%arg0) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %0 : tensor<1x1x1x1xf32>
  }
}

