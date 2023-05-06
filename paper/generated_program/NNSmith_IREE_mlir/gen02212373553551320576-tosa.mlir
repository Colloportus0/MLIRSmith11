module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1xi1> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<true> : tensor<1x1x1xi1>} : () -> tensor<1x1x1xi1>
    %1 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %2 = "tosa.transpose"(%arg0, %1) : (tensor<1x1x1x1x1xf32>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.floor"(%3) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.reshape"(%2) {new_shape = [1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1xf32>
    return %5, %4, %0 : tensor<1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1xi1>
  }
}

