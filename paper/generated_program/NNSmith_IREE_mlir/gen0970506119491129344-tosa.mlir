module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi64> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %1 = "tosa.cast"(%0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.cast"(%0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi64>
    return %2, %1 : tensor<1x1x1x1xi64>, tensor<1x1x1x1xf32>
  }
}

