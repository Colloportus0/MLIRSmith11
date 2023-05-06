module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1x1xi64> {iree.identifier = "Identity"}, tensor<1x1x1xf16> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 3, 4, 1]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.cast"(%arg0) : (tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1x1xi64>
    %2 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x1x1x1xf16>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf16>
    %4 = "tosa.sub"(%3, %3) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %5 = "tosa.reshape"(%2) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1xf16>
    return %1, %5, %4 : tensor<1x1x1x1x1xi64>, tensor<1x1x1xf16>, tensor<1x1x1x1xf16>
  }
}

