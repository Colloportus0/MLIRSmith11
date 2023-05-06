module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi32> {iree.identifier = "Identity"}, tensor<1x1x1x1xi32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<4> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.abs"(%arg0) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %2 = "tosa.add"(%arg0, %0) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %3 = "tosa.negate"(%2) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    return %1, %3 : tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>
  }
}

