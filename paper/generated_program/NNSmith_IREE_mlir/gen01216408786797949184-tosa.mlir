module {
  func.func @main(%arg0: tensor<1x1x1x2x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x2x1xi32> {iree.identifier = "Identity"}, tensor<1x1x2x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<4.148440e+00> : tensor<1x1x1x1x1xf16>} : () -> tensor<1x1x1x1x1xf16>
    %1 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %2 = "tosa.maximum"(%arg0, %0) : (tensor<1x1x1x2x1xf16>, tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x2x1xf16>
    %3 = "tosa.cast"(%2) : (tensor<1x1x1x2x1xf16>) -> tensor<1x1x1x2x1xi32>
    %4 = "tosa.transpose"(%2, %1) : (tensor<1x1x1x2x1xf16>, tensor<5xi32>) -> tensor<1x1x2x1x1xi32>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 1, 2, 1]} : (tensor<1x1x2x1x1xi32>) -> tensor<1x1x2x1xf16>
    %6 = "tosa.cast"(%5) : (tensor<1x1x2x1xf16>) -> tensor<1x1x2x1xi64>
    return %3, %6 : tensor<1x1x1x2x1xi32>, tensor<1x1x2x1xi64>
  }
}

