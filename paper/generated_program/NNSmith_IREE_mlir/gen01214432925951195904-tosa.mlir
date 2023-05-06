module {
  func.func @main(%arg0: tensor<1x1x2x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x1x2xi64> {iree.identifier = "Identity"}, tensor<1x1x2xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, 2]} : (tensor<1x1x2xf16>) -> tensor<1x1x1x2xf16>
    %1 = "tosa.minimum"(%0, %arg0) : (tensor<1x1x1x2xf16>, tensor<1x1x2x2xf16>) -> tensor<1x1x2x2xf16>
    %2 = "tosa.abs"(%1) : (tensor<1x1x2x2xf16>) -> tensor<1x1x2x2xf16>
    %3 = "tosa.argmax"(%2) {axis = 3 : i64} : (tensor<1x1x2x2xf16>) -> tensor<1x1x2xi64>
    %4 = "tosa.argmax"(%2) {axis = 2 : i64} : (tensor<1x1x2x2xf16>) -> tensor<1x1x2xi64>
    return %4, %3 : tensor<1x1x2xi64>, tensor<1x1x2xi64>
  }
}

