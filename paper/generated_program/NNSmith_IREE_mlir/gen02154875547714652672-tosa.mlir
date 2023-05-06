module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1x1xi1> {iree.identifier = "Identity"}, tensor<1x1x1x1xi64> {iree.identifier = "Identity_1"}, tensor<1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.cast"(%arg0) : (tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1x1xi1>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %3 = "tosa.cast"(%2) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi64>
    %4 = "tosa.transpose"(%2, %0) : (tensor<1x1x1x1xf16>, tensor<4xi32>) -> tensor<1x1x1x1xf16>
    %5 = "tosa.reshape"(%4) {new_shape = [1]} : (tensor<1x1x1x1xf16>) -> tensor<1xf16>
    return %1, %3, %5 : tensor<1x1x1x1x1xi1>, tensor<1x1x1x1xi64>, tensor<1xf16>
  }
}

