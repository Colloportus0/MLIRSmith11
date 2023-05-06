module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<4.3819952> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<4.27711678> : tensor<1x1x1xf32>} : () -> tensor<1x1x1xf32>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xf32>
    %3 = "tosa.matmul"(%2, %1) : (tensor<1x1x1xf32>, tensor<1x1x1xf32>) -> tensor<1x1x1xf32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.add"(%4, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %6 = "tosa.negate"(%5) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tosa.reshape"(%5) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xf32>
    return %7, %6 : tensor<1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

