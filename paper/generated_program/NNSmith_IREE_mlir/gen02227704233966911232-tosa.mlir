module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1xf16> {iree.identifier = "Identity"}, tensor<1xf16> {iree.identifier = "Identity"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_2"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_3"}) {
    %0 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.abs"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %2 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x1x1xf16>, tensor<4xi32>) -> tensor<1x1x1x1xf16>
    %3 = "tosa.reshape"(%2) {new_shape = [1]} : (tensor<1x1x1x1xf16>) -> tensor<1xf16>
    return %3, %3, %1, %arg0 : tensor<1xf16>, tensor<1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>
  }
}

