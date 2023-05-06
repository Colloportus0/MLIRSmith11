module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.mul"(%arg0, %arg0) {shift = 0 : i32} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %1 = "tosa.cast"(%0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi64>
    %2 = "tosa.cast"(%1) : (tensor<1x1x1x1xi64>) -> tensor<1x1x1x1xi32>
    %3 = "tosa.reciprocal"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %4 = "tosa.mul"(%0, %3) {shift = 0 : i32} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    return %2, %4 : tensor<1x1x1x1xi32>, tensor<1x1x1x1xf16>
  }
}

