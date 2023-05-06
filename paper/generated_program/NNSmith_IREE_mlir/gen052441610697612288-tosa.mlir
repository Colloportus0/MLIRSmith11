module {
  func.func @main(%arg0: tensor<1x1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xi32> {iree.identifier = "Identity"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xi32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x1x1x1xi32>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %2 = "tosa.reshape"(%1) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %3 = "tosa.reshape"(%1) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1xi32>
    %4 = "tosa.matmul"(%3, %3) : (tensor<1x1x1xi32>, tensor<1x1x1xi32>) -> tensor<1x1x1xi32>
    %5 = "tosa.greater"(%2, %2) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi1>
    return %4, %5, %2 : tensor<1x1x1xi32>, tensor<1x1x1x1xi1>, tensor<1x1x1x1xi32>
  }
}

