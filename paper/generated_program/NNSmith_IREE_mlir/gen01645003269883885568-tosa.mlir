module {
  func.func @main(%arg0: tensor<2x1x2x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<?xf16> {iree.identifier = "inputs_1"}) -> (tensor<2x1x2x1xi32> {iree.identifier = "Identity"}, tensor<4xi64> {iree.identifier = "Identity_1"}, tensor<2x1x2x?xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.cast"(%arg0) : (tensor<2x1x2x1xf16>) -> tensor<2x1x2x1xi32>
    %2 = "tosa.sub"(%arg1, %arg0) : (tensor<?xf16>, tensor<2x1x2x1xf16>) -> tensor<2x1x2x?xf16>
    %3 = "tosa.cast"(%2) : (tensor<2x1x2x?xf16>) -> tensor<2x1x2x?xi64>
    %4 = "tosa.sub"(%2, %2) : (tensor<2x1x2x?xf16>, tensor<2x1x2x?xf16>) -> tensor<2x1x2x?xf16>
    %5 = "tosa.transpose"(%3, %0) : (tensor<2x1x2x?xi64>, tensor<4xi32>) -> tensor<2x?x1x2xi64>
    %6 = "tosa.reshape"(%5) {new_shape = [4]} : (tensor<2x?x1x2xi64>) -> tensor<4xi64>
    return %1, %6, %4 : tensor<2x1x2x1xi32>, tensor<4xi64>, tensor<2x1x2x?xf16>
  }
}

