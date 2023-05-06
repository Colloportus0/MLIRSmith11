module {
  func.func @main(%arg0: tensor<1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf16> {iree.identifier = "inputs_2"}) -> (tensor<1x1x1x1xf16> {iree.identifier = "inputs_2"}, tensor<1x1x2x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.negate"(%arg2) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %1 = "tosa.concat"(%arg1, %arg0) {axis = 0 : i64} : (tensor<1x1xf16>, tensor<1x1xf16>) -> tensor<2x1xf16>
    %2 = "tosa.reshape"(%1) {new_shape = [1, 1, 2, 1]} : (tensor<2x1xf16>) -> tensor<1x1x2x1xf16>
    %3 = "tosa.mul"(%0, %2) {shift = 0 : i32} : (tensor<1x1x1x1xf16>, tensor<1x1x2x1xf16>) -> tensor<1x1x2x1xf16>
    %4 = "tosa.add"(%3, %arg2) : (tensor<1x1x2x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x2x1xf16>
    return %arg2, %4 : tensor<1x1x1x1xf16>, tensor<1x1x2x1xf16>
  }
}

