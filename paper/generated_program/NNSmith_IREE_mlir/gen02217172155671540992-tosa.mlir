module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xi64> {iree.identifier = "Identity"}, tensor<1x1x1x1xi64> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.mul"(%arg0, %arg0) {shift = 0 : i32} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %1 = "tosa.add"(%0, %0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %2 = "tosa.cast"(%0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi64>
    %3 = "tosa.argmax"(%arg0) {axis = 2 : i64} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xi64>
    return %3, %2, %1 : tensor<1x1x1xi64>, tensor<1x1x1x1xi64>, tensor<1x1x1x1xf16>
  }
}

