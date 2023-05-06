module {
  func.func @main(%arg0: tensor<1x1x1x2x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x2x1x2xf16> {iree.identifier = "inputs_1"}) -> (tensor<2x2x2xi64> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.minimum"(%arg0, %arg1) : (tensor<1x1x1x2x1xf16>, tensor<1x2x2x1x2xf16>) -> tensor<1x2x2x2x2xf16>
    %2 = "tosa.transpose"(%1, %0) : (tensor<1x2x2x2x2xf16>, tensor<5xi32>) -> tensor<2x2x2x2x1xi32>
    %3 = "tosa.reshape"(%2) {new_shape = [2, 2, 2, 2]} : (tensor<2x2x2x2x1xi32>) -> tensor<2x2x2x2xf16>
    %4 = "tosa.argmax"(%3) {axis = 1 : i64} : (tensor<2x2x2x2xf16>) -> tensor<2x2x2xi64>
    %5 = "tosa.mul"(%4, %4) {shift = 0 : i32} : (tensor<2x2x2xi64>, tensor<2x2x2xi64>) -> tensor<2x2x2xi64>
    return %5 : tensor<2x2x2xi64>
  }
}

