module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x3x1x1xi1> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<4> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.const"() {value = dense<6> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %2 = "tosa.concat"(%0, %arg0, %1) {axis = 1 : i64} : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x3x1x1xi32>
    %3 = "tosa.cast"(%2) : (tensor<1x3x1x1xi32>) -> tensor<1x3x1x1xi1>
    return %3 : tensor<1x3x1x1xi1>
  }
}

