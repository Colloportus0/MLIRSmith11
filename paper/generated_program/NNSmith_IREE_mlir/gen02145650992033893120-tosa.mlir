module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x2x1x1xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 2, 4, 3]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x1x1x1xf16>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %2 = "tosa.reshape"(%1) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf16>
    %3 = "tosa.concat"(%2, %arg1) {axis = 1 : i64} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x2x1x1xf16>
    return %3 : tensor<1x2x1x1xf16>
  }
}

