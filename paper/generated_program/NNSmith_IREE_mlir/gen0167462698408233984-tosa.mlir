module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xf16> {iree.identifier = "Identity"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}, tensor<1x1x1xi64> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<true> : tensor<1x1x1x1xi1>} : () -> tensor<1x1x1x1xi1>
    %1 = "tosa.cast"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi64>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xf16>
    %3 = "tosa.reshape"(%1) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xi64>) -> tensor<1x1x1xi64>
    return %2, %0, %3 : tensor<1x1x1xf16>, tensor<1x1x1x1xi1>, tensor<1x1x1xi64>
  }
}

