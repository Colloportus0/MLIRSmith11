module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi32> {iree.identifier = "Identity"}) {
    %0 = "tosa.mul"(%arg0, %arg0) {shift = 0 : i32} : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    return %0 : tensor<1x1x1x1xi32>
  }
}

