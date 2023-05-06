module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2x1xi1> {iree.identifier = "Identity"}, tensor<3x1x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.cast"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi64>
    %1 = "tosa.concat"(%0, %0) {axis = 2 : i64} : (tensor<1x1x1x1xi64>, tensor<1x1x1x1xi64>) -> tensor<1x1x2x1xi64>
    %2 = "tosa.greater"(%0, %1) : (tensor<1x1x1x1xi64>, tensor<1x1x2x1xi64>) -> tensor<1x1x2x1xi1>
    %3 = "tosa.argmax"(%1) {axis = 2 : i64} : (tensor<1x1x2x1xi64>) -> tensor<1x1x1xi64>
    %4 = "tosa.concat"(%3, %3, %3) {axis = 0 : i64} : (tensor<1x1x1xi64>, tensor<1x1x1xi64>, tensor<1x1x1xi64>) -> tensor<3x1x1xi64>
    return %2, %4 : tensor<1x1x2x1xi1>, tensor<3x1x1xi64>
  }
}

