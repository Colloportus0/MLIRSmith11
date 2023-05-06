module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xi32> {iree.identifier = "Identity"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xi32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<true> : tensor<1x1x1x1xi1>} : () -> tensor<1x1x1x1xi1>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xi32>) -> tensor<1x1x1xi32>
    %2 = "tosa.matmul"(%1, %1) : (tensor<1x1x1xi32>, tensor<1x1x1xi32>) -> tensor<1x1x1xi32>
    %3 = "tosa.add"(%arg0, %arg0) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    return %2, %0, %3 : tensor<1x1x1xi32>, tensor<1x1x1x1xi1>, tensor<1x1x1x1xi32>
  }
}

