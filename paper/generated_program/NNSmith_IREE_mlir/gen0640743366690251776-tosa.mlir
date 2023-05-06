module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x3x1x1xi32> {iree.identifier = "Identity"}, tensor<1x3x1x1xi32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<-7> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.const"() {value = dense<6> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %2 = "tosa.concat"(%arg0, %0, %1) {axis = 1 : i64} : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x3x1x1xi32>
    %3 = "tosa.add"(%2, %1) : (tensor<1x3x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x3x1x1xi32>
    %4 = "tosa.mul"(%2, %2) {shift = 0 : i32} : (tensor<1x3x1x1xi32>, tensor<1x3x1x1xi32>) -> tensor<1x3x1x1xi32>
    %5 = "tosa.maximum"(%2, %4) : (tensor<1x3x1x1xi32>, tensor<1x3x1x1xi32>) -> tensor<1x3x1x1xi32>
    return %3, %5 : tensor<1x3x1x1xi32>, tensor<1x3x1x1xi32>
  }
}

