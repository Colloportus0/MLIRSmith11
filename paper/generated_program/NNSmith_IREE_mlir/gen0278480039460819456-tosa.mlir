module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf16> {iree.identifier = "Identity"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}, tensor<1x1x1xi64> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.negate"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %1 = "tosa.sub"(%arg0, %arg0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %2 = "tosa.cast"(%0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi1>
    %3 = "tosa.argmax"(%1) {axis = 0 : i64} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xi64>
    return %0, %2, %3 : tensor<1x1x1x1xf16>, tensor<1x1x1x1xi1>, tensor<1x1x1xi64>
  }
}

