module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi32> {iree.identifier = "Identity"}, tensor<1x1x1x1xi64> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xi32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<1> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.const"() {value = dense<-1> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %2 = "tosa.abs"(%arg0) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %3 = "tosa.minimum"(%arg0, %0) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %4 = "tosa.maximum"(%3, %1) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %5 = "tosa.cast"(%4) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi64>
    return %2, %5, %4 : tensor<1x1x1x1xi32>, tensor<1x1x1x1xi64>, tensor<1x1x1x1xi32>
  }
}

