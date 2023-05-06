module {
  func.func @main(%arg0: tensor<2x1x1x2xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x1x1xi32> {iree.identifier = "inputs_1"}) -> (tensor<2x1x1x2xi32> {iree.identifier = "Identity"}, tensor<2x1x1x2xi32> {iree.identifier = "inputs_0"}, tensor<2x1x1x2xi32> {iree.identifier = "Identity_2"}, tensor<2x1x1x1xi1> {iree.identifier = "Identity_3"}, tensor<2x1x1x2xi32> {iree.identifier = "Identity_4"}) {
    %0 = "tosa.const"() {value = dense<1> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.const"() {value = dense<-1> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %2 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, 2]} : (tensor<2x1x1x1xi32>) -> tensor<1x1x1x2xi32>
    %3 = "tosa.add"(%arg0, %2) : (tensor<2x1x1x2xi32>, tensor<1x1x1x2xi32>) -> tensor<2x1x1x2xi32>
    %4 = "tosa.greater"(%arg1, %arg1) : (tensor<2x1x1x1xi32>, tensor<2x1x1x1xi32>) -> tensor<2x1x1x1xi1>
    %5 = "tosa.maximum"(%arg1, %arg0) : (tensor<2x1x1x1xi32>, tensor<2x1x1x2xi32>) -> tensor<2x1x1x2xi32>
    %6 = "tosa.minimum"(%arg0, %0) : (tensor<2x1x1x2xi32>, tensor<1x1x1x1xi32>) -> tensor<2x1x1x2xi32>
    %7 = "tosa.maximum"(%6, %1) : (tensor<2x1x1x2xi32>, tensor<1x1x1x1xi32>) -> tensor<2x1x1x2xi32>
    return %7, %arg0, %3, %4, %5 : tensor<2x1x1x2xi32>, tensor<2x1x1x2xi32>, tensor<2x1x1x2xi32>, tensor<2x1x1x1xi1>, tensor<2x1x1x2xi32>
  }
}

