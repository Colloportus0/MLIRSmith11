module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xi32> {iree.identifier = "inputs_1"}) -> (tensor<1x1x3x1xi32> {iree.identifier = "Identity"}, tensor<1x1x3x1xi32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.concat"(%arg1, %0, %arg0) {axis = 2 : i64} : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x3x1xi32>
    %2 = "tosa.minimum"(%1, %1) : (tensor<1x1x3x1xi32>, tensor<1x1x3x1xi32>) -> tensor<1x1x3x1xi32>
    return %2, %1 : tensor<1x1x3x1xi32>, tensor<1x1x3x1xi32>
  }
}

