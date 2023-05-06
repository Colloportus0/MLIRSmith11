module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi64> {iree.identifier = "Identity"}, tensor<1x1x1x1xi64> {iree.identifier = "Identity"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.negate"(%arg0) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %1 = "tosa.cast"(%0) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi1>
    %2 = "tosa.logical_or"(%1, %1) : (tensor<1x1x1x1xi1>, tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %3 = "tosa.cast"(%0) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi64>
    return %3, %3, %2 : tensor<1x1x1x1xi64>, tensor<1x1x1x1xi64>, tensor<1x1x1x1xi1>
  }
}

