module {
  func.func @main(%arg0: tensor<1x1x1x2x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x2x1xf16> {iree.identifier = "Identity"}, tensor<1x1x2x1xf16> {iree.identifier = "Identity_1"}, tensor<1x1x2x1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 2, 1]} : (tensor<1x1x1x2x1xf16>) -> tensor<1x1x2x1xf16>
    %2 = "tosa.transpose"(%1, %0) : (tensor<1x1x2x1xf16>, tensor<4xi32>) -> tensor<1x2x1x1xf16>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 2, 1]} : (tensor<1x2x1x1xf16>) -> tensor<1x1x2x1xf16>
    %4 = "tosa.add"(%1, %3) : (tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>) -> tensor<1x1x2x1xf16>
    %5 = "tosa.reshape"(%2) {new_shape = [1, 2, 1]} : (tensor<1x2x1x1xf16>) -> tensor<1x2x1xf16>
    return %5, %4, %1 : tensor<1x2x1xf16>, tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>
  }
}

