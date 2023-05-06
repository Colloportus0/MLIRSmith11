module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xi32> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x1xi32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<-4> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.maximum"(%arg1, %arg0) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %2 = "tosa.sub"(%0, %1) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %3 = "tosa.maximum"(%2, %1) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    return %3 : tensor<1x1x1x1xi32>
  }
}

