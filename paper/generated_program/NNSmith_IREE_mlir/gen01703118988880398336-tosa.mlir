module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<true> : tensor<1x1x1x1xi1>} : () -> tensor<1x1x1x1xi1>
    %1 = "tosa.logical_and"(%0, %0) : (tensor<1x1x1x1xi1>, tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %2 = "tosa.maximum"(%arg0, %arg0) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %3 = "tosa.greater"(%2, %2) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi1>
    return %arg0, %3, %1 : tensor<1x1x1x1xi32>, tensor<1x1x1x1xi1>, tensor<1x1x1x1xi1>
  }
}

