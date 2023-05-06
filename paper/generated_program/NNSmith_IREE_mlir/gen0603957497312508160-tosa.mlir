module {
  func.func @main(%arg0: tensor<1x1x2x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2x1xi1> {iree.identifier = "Identity"}, tensor<1x1x2x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 3, 2, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x2x1xf16>, tensor<4xi32>) -> tensor<1x1x2x1xf16>
    %2 = "tosa.abs"(%1) : (tensor<1x1x2x1xf16>) -> tensor<1x1x2x1xf16>
    %3 = "tosa.minimum"(%arg0, %2) : (tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>) -> tensor<1x1x2x1xf16>
    %4 = "tosa.greater"(%arg0, %1) : (tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>) -> tensor<1x1x2x1xi1>
    return %4, %3 : tensor<1x1x2x1xi1>, tensor<1x1x2x1xf16>
  }
}

