module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xi64> {iree.identifier = "Identity"}, tensor<1x1x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.reciprocal"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %1 = "tosa.mul"(%arg0, %0) {shift = 0 : i32} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xf16>
    %3 = "tosa.negate"(%2) : (tensor<1x1x1xf16>) -> tensor<1x1x1xf16>
    %4 = "tosa.mul"(%2, %3) {shift = 0 : i32} : (tensor<1x1x1xf16>, tensor<1x1x1xf16>) -> tensor<1x1x1xf16>
    %5 = "tosa.argmax"(%1) {axis = 2 : i64} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xi64>
    return %5, %4 : tensor<1x1x1xi64>, tensor<1x1x1xf16>
  }
}

