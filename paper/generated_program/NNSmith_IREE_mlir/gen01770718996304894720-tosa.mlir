module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi1> {iree.identifier = "Identity"}, tensor<1x1x1xf16> {iree.identifier = "Identity_1"}, tensor<1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1 = "tosa.negate"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %2 = "tosa.cast"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi1>
    %3 = "tosa.reshape"(%1) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xf16>
    %4 = "tosa.transpose"(%3, %0) : (tensor<1x1x1xf16>, tensor<3xi32>) -> tensor<1x1x1xf16>
    %5 = "tosa.reshape"(%4) {new_shape = [1]} : (tensor<1x1x1xf16>) -> tensor<1xf16>
    return %2, %3, %5 : tensor<1x1x1x1xi1>, tensor<1x1x1xf16>, tensor<1xf16>
  }
}

