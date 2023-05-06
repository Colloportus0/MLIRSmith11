module {
  func.func @main(%arg0: tensor<1x2x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x1x1x1xf16> {iree.identifier = "Identity"}, tensor<1x1x1x2xf16> {iree.identifier = "Identity_1"}, tensor<1x2x1x2xi64> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.const"() {value = dense<[0, 3, 2, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2 = "tosa.transpose"(%arg0, %0) : (tensor<1x2x1x1xf16>, tensor<4xi32>) -> tensor<1x1x2x1xf16>
    %3 = "tosa.reshape"(%2) {new_shape = [2, 1, 1, 1]} : (tensor<1x1x2x1xf16>) -> tensor<2x1x1x1xf16>
    %4 = "tosa.transpose"(%arg0, %1) : (tensor<1x2x1x1xf16>, tensor<4xi32>) -> tensor<1x1x1x2xf16>
    %5 = "tosa.maximum"(%4, %arg0) : (tensor<1x1x1x2xf16>, tensor<1x2x1x1xf16>) -> tensor<1x2x1x2xf16>
    %6 = "tosa.cast"(%5) : (tensor<1x2x1x2xf16>) -> tensor<1x2x1x2xi64>
    return %3, %4, %6 : tensor<2x1x1x1xf16>, tensor<1x1x1x2xf16>, tensor<1x2x1x2xi64>
  }
}

