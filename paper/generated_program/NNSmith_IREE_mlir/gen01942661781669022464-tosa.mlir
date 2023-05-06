module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xi32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<1> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.const"() {value = dense<-1> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %2 = "tosa.maximum"(%arg0, %arg0) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %3 = "tosa.greater"(%2, %arg0) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi1>
    %4 = "tosa.minimum"(%2, %0) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %5 = "tosa.maximum"(%4, %1) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %6 = "tosa.abs"(%5) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    return %arg0, %3, %6 : tensor<1x1x1x1xi32>, tensor<1x1x1x1xi1>, tensor<1x1x1x1xi32>
  }
}

