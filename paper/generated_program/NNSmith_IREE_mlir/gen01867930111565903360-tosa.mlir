module {
  func.func @main(%arg0: tensor<1x2x2x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x2x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<2x1x2x1xf32> {iree.identifier = "Identity"}, tensor<2x2x2x1xf16> {iree.identifier = "Identity_1"}, tensor<2x2x2x1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.negate"(%arg0) : (tensor<1x2x2x1xf16>) -> tensor<1x2x2x1xf16>
    %1 = "tosa.maximum"(%arg1, %0) : (tensor<2x1x2x1xf16>, tensor<1x2x2x1xf16>) -> tensor<2x2x2x1xf16>
    %2 = "tosa.mul"(%arg1, %1) {shift = 0 : i32} : (tensor<2x1x2x1xf16>, tensor<2x2x2x1xf16>) -> tensor<2x2x2x1xf16>
    %3 = "tosa.cast"(%arg1) : (tensor<2x1x2x1xf16>) -> tensor<2x1x2x1xf32>
    %4 = "tosa.maximum"(%0, %arg1) : (tensor<1x2x2x1xf16>, tensor<2x1x2x1xf16>) -> tensor<2x2x2x1xf16>
    return %3, %4, %2 : tensor<2x1x2x1xf32>, tensor<2x2x2x1xf16>, tensor<2x2x2x1xf16>
  }
}

