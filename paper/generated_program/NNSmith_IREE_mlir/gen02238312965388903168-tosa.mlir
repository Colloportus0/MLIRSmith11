module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_1"}, tensor<1x2x1x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %2 = "tosa.concat"(%1, %0) {axis = 1 : i64} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x2x1x1xf16>
    return %arg1, %2 : tensor<1x1x1x1x1xf16>, tensor<1x2x1x1xf16>
  }
}

