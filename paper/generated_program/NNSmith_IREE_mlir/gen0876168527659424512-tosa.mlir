module {
  func.func @main(%arg0: tensor<2x1x2x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x2x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<2x1x1x2xf16> {iree.identifier = "inputs_2"}) -> (tensor<2x3x2x1xi64> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[6.285150e+00], [3.791020e+00]]], [[[5.640630e+00], [5.292970e+00]]]]> : tensor<2x1x2x1xf16>} : () -> tensor<2x1x2x1xf16>
    %1 = "tosa.concat"(%arg1, %0, %arg0) {axis = 1 : i64} : (tensor<2x1x2x1xf16>, tensor<2x1x2x1xf16>, tensor<2x1x2x1xf16>) -> tensor<2x3x2x1xf16>
    %2 = "tosa.mul"(%arg2, %1) {shift = 0 : i32} : (tensor<2x1x1x2xf16>, tensor<2x3x2x1xf16>) -> tensor<2x3x2x2xf16>
    %3 = "tosa.negate"(%2) : (tensor<2x3x2x2xf16>) -> tensor<2x3x2x2xf16>
    %4 = "tosa.slice"(%3) {size = [2, 3, 2, 1], start = [0, 0, 0, 1]} : (tensor<2x3x2x2xf16>) -> tensor<2x3x2x1xf16>
    %5 = "tosa.cast"(%4) : (tensor<2x3x2x1xf16>) -> tensor<2x3x2x1xi64>
    return %5 : tensor<2x3x2x1xi64>
  }
}

