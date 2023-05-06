module {
  func.func @main(%arg0: tensor<3x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<2x2x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x2x2x1xf16> {iree.identifier = "Identity"}, tensor<2x2x2xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[2, 0, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 2, 1, 1]} : (tensor<3x1xf16>) -> tensor<1x2x1x1xf16>
    %2 = "tosa.slice"(%1) {size = [1, 1, 1, 1], start = [0, 0, 0, 0]} : (tensor<1x2x1x1xf16>) -> tensor<1x1x1x1xf16>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 2, 1]} : (tensor<1x1x1x1xf16>) -> tensor<1x1x2x1xf16>
    %4 = "tosa.mul"(%3, %arg1) {shift = 0 : i32} : (tensor<1x1x2x1xf16>, tensor<2x2x1x1xf16>) -> tensor<2x2x2x1xf16>
    %5 = "tosa.concat"(%4, %4, %4, %4, %4) {axis = 3 : i64} : (tensor<2x2x2x1xf16>, tensor<2x2x2x1xf16>, tensor<2x2x2x1xf16>, tensor<2x2x2x1xf16>, tensor<2x2x2x1xf16>) -> tensor<2x2x2x5xf16>
    %6 = "tosa.argmax"(%5) {axis = 3 : i64} : (tensor<2x2x2x5xf16>) -> tensor<2x2x2xi64>
    %7 = "tosa.transpose"(%arg1, %0) : (tensor<2x2x1x1xf16>, tensor<4xi32>) -> tensor<1x2x2x1xf16>
    return %7, %6 : tensor<1x2x2x1xf16>, tensor<2x2x2xi64>
  }
}

