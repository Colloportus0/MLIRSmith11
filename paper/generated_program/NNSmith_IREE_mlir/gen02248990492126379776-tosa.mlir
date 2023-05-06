module {
  func.func @main(%arg0: tensor<2x2x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x2x2x1xi1> {iree.identifier = "Identity"}, tensor<1x2x2x1xi32> {iree.identifier = "Identity_1"}, tensor<2x2x2x1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[2, 0, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.transpose"(%arg0, %0) : (tensor<2x2x1x1xf16>, tensor<4xi32>) -> tensor<1x2x2x1xf16>
    %2 = "tosa.greater_equal"(%arg0, %1) : (tensor<2x2x1x1xf16>, tensor<1x2x2x1xf16>) -> tensor<2x2x2x1xi1>
    %3 = "tosa.logical_not"(%2) : (tensor<2x2x2x1xi1>) -> tensor<2x2x2x1xi1>
    %4 = "tosa.reciprocal"(%1) : (tensor<1x2x2x1xf16>) -> tensor<1x2x2x1xf16>
    %5 = "tosa.mul"(%arg0, %4) {shift = 0 : i32} : (tensor<2x2x1x1xf16>, tensor<1x2x2x1xf16>) -> tensor<2x2x2x1xf16>
    %6 = "tosa.cast"(%1) : (tensor<1x2x2x1xf16>) -> tensor<1x2x2x1xi32>
    return %3, %6, %5 : tensor<2x2x2x1xi1>, tensor<1x2x2x1xi32>, tensor<2x2x2x1xf16>
  }
}

