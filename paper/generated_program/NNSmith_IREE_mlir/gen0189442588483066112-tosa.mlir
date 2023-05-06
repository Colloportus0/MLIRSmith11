module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi1> {iree.identifier = "Identity"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x1x1x1xf16>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %2 = "tosa.reshape"(%1) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf16>
    %3 = "tosa.abs"(%2) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %4 = "tosa.greater_equal"(%2, %2) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi1>
    %5 = "tosa.logical_not"(%4) : (tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %6 = "tosa.maximum"(%2, %3) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    return %5, %6 : tensor<1x1x1x1xi1>, tensor<1x1x1x1xf16>
  }
}

