module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xi32> {iree.identifier = "Identity"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.abs"(%arg0) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %1 = "tosa.greater"(%0, %0) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi1>
    %2 = "tosa.cast"(%0) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi1>
    %3 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xi32>) -> tensor<1x1x1xi32>
    return %3, %2, %1 : tensor<1x1x1xi32>, tensor<1x1x1x1xi1>, tensor<1x1x1x1xi1>
  }
}

