module {
  func.func @main(%arg0: tensor<1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x2x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x1x2x1xi1> {iree.identifier = "Identity"}, tensor<1x1x2x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1, 1]} : (tensor<1xf16>) -> tensor<1x1x1x1x1xf16>
    %2 = "tosa.minimum"(%arg1, %1) : (tensor<1x1x1x2x1xf16>, tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x2x1xf16>
    %3 = "tosa.transpose"(%2, %0) : (tensor<1x1x1x2x1xf16>, tensor<5xi32>) -> tensor<1x1x2x1x1xi32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 2, 1]} : (tensor<1x1x2x1x1xi32>) -> tensor<1x1x2x1xf16>
    %5 = "tosa.minimum"(%4, %4) : (tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>) -> tensor<1x1x2x1xf16>
    %6 = "tosa.cast"(%5) : (tensor<1x1x2x1xf16>) -> tensor<1x1x2x1xi1>
    %7 = "tosa.add"(%4, %4) : (tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>) -> tensor<1x1x2x1xf16>
    return %6, %7 : tensor<1x1x2x1xi1>, tensor<1x1x2x1xf16>
  }
}

