module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xi64> {iree.identifier = "Identity"}, tensor<1x1x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 3, 4, 2]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.sigmoid"(%arg0) : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %2 = "tosa.negate"(%1) : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %3 = "tosa.transpose"(%2, %0) : (tensor<1x1x1x1x1xf32>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.argmax"(%4) {axis = 3 : i64} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xi64>
    %6 = "tosa.argmax"(%4) {axis = 2 : i64} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xi64>
    return %6, %5 : tensor<1x1x1xi64>, tensor<1x1x1xi64>
  }
}

