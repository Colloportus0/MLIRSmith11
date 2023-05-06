module {
  func.func @main(%arg0: tensor<1x2x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x2x1x1xf16> {iree.identifier = "Identity"}, tensor<1x2x1x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, 1]} : (tensor<1x1xf16>) -> tensor<1x1x1x1xf16>
    %2 = "tosa.sub"(%1, %arg0) : (tensor<1x1x1x1xf16>, tensor<1x2x1x1xf16>) -> tensor<1x2x1x1xf16>
    %3 = "tosa.negate"(%2) : (tensor<1x2x1x1xf16>) -> tensor<1x2x1x1xf16>
    %4 = "tosa.transpose"(%2, %0) : (tensor<1x2x1x1xf16>, tensor<4xi32>) -> tensor<1x2x1x1xf16>
    return %3, %4 : tensor<1x2x1x1xf16>, tensor<1x2x1x1xf16>
  }
}

