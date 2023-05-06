module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1x1xf16> {iree.identifier = "Identity"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<[0, 3, 2, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2 = "tosa.abs"(%arg0) : (tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1x1xf16>
    %3 = "tosa.negate"(%2) : (tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1x1xf16>
    %4 = "tosa.transpose"(%3, %0) : (tensor<1x1x1x1x1xf16>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf16>
    %6 = "tosa.transpose"(%5, %1) : (tensor<1x1x1x1xf16>, tensor<4xi32>) -> tensor<1x1x1x1xf16>
    return %2, %6 : tensor<1x1x1x1x1xf16>, tensor<1x1x1x1xf16>
  }
}

