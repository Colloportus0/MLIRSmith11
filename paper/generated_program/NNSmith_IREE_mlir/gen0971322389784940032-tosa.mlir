module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi1> {iree.identifier = "Identity"}, tensor<1x1x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.abs"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %1 = "tosa.greater"(%arg0, %0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi1>
    %2 = "tosa.argmax"(%0) {axis = 2 : i64} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xi64>
    %3 = "tosa.matmul"(%2, %2) : (tensor<1x1x1xi64>, tensor<1x1x1xi64>) -> tensor<1x1x1xi64>
    %4 = "tosa.maximum"(%2, %3) : (tensor<1x1x1xi64>, tensor<1x1x1xi64>) -> tensor<1x1x1xi64>
    return %1, %4 : tensor<1x1x1x1xi1>, tensor<1x1x1xi64>
  }
}

