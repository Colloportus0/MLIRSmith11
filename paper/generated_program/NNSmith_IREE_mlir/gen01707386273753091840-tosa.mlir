module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x1xi32> {iree.identifier = "Identity"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.reshape"(%arg0) {new_shape = [1, 1]} : (tensor<1x1x1x1xi32>) -> tensor<1x1xi32>
    %1 = "tosa.cast"(%arg0) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi1>
    return %0, %1 : tensor<1x1xi32>, tensor<1x1x1x1xi1>
  }
}

