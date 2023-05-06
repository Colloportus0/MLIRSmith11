module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xi64> {iree.identifier = "Identity"}, tensor<1x1x1xf16> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %2 = "tosa.transpose"(%1, %0) : (tensor<1x1x1x1xf16>, tensor<4xi32>) -> tensor<1x1x1x1xf16>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xf16>
    %4 = "tosa.argmax"(%1) {axis = 3 : i64} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xi64>
    return %4, %3, %1 : tensor<1x1x1xi64>, tensor<1x1x1xf16>, tensor<1x1x1x1xf16>
  }
}

