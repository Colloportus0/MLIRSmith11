module {
  func.func @main(%arg0: tensor<2x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x2x1x1xi64> {iree.identifier = "Identity"}) {
    %0 = "tosa.cast"(%arg0) : (tensor<2x1x1x1xf16>) -> tensor<2x1x1x1xi1>
    %1 = "tosa.cast"(%arg0) : (tensor<2x1x1x1xf16>) -> tensor<2x1x1x1xi64>
    %2 = "tosa.reshape"(%1) {new_shape = [1, 2, 1, 1]} : (tensor<2x1x1x1xi64>) -> tensor<1x2x1x1xi64>
    %3 = "tosa.select"(%0, %1, %2) : (tensor<2x1x1x1xi1>, tensor<2x1x1x1xi64>, tensor<1x2x1x1xi64>) -> tensor<2x2x1x1xi64>
    return %3 : tensor<2x2x1x1xi64>
  }
}

