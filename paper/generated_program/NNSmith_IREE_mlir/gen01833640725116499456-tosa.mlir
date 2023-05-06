module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1x1xi1> {iree.identifier = "Identity"}, tensor<1x1x1xi64> {iree.identifier = "Identity_1"}, tensor<1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %1 = "tosa.cast"(%arg0) : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xi1>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1xf32>
    %3 = "tosa.argmax"(%0) {axis = 2 : i64} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xi64>
    return %1, %3, %2 : tensor<1x1x1x1x1xi1>, tensor<1x1x1xi64>, tensor<1x1x1xf32>
  }
}

