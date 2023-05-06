module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2x1xi32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<4> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.concat"(%arg0, %0) {axis = 2 : i64} : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x2x1xi32>
    return %1 : tensor<1x1x2x1xi32>
  }
}

