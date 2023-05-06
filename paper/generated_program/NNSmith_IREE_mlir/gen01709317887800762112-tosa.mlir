module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi1> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.ceil"(%arg0) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %1 = "tosa.sigmoid"(%0) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.greater"(%arg0, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xi1>
    return %2, %1, %arg0 : tensor<1x1x1x1xi1>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

