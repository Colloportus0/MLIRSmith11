module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf16> {iree.identifier = "Identity"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.negate"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %1 = "tosa.mul"(%arg0, %arg0) {shift = 0 : i32} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    return %0, %1 : tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>
  }
}

