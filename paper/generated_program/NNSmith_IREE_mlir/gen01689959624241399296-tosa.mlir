module {
  func.func @main(%arg0: tensor<2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x2x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x2x2x2xf16> {iree.identifier = "Identity"}, tensor<1x2x2x2xf16> {iree.identifier = "Identity_1"}, tensor<2x2x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.const"() {value = dense<6.023440e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %2 = "tosa.transpose"(%arg1, %0) : (tensor<1x2x2x1xf16>, tensor<4xi32>) -> tensor<1x2x1x2xf16>
    %3 = "tosa.reciprocal"(%1) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %4 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<2xf16>) -> tensor<1x1x1x2xf16>
    %5 = "tosa.mul"(%4, %3) {shift = 0 : i32} : (tensor<1x1x1x2xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x2xf16>
    %6 = "tosa.reshape"(%5) {new_shape = [1, 1, 2, 1]} : (tensor<1x1x1x2xf16>) -> tensor<1x1x2x1xf16>
    %7 = "tosa.mul"(%6, %2) {shift = 0 : i32} : (tensor<1x1x2x1xf16>, tensor<1x2x1x2xf16>) -> tensor<1x2x2x2xf16>
    %8 = "tosa.reciprocal"(%6) : (tensor<1x1x2x1xf16>) -> tensor<1x1x2x1xf16>
    %9 = "tosa.mul"(%2, %8) {shift = 0 : i32} : (tensor<1x2x1x2xf16>, tensor<1x1x2x1xf16>) -> tensor<1x2x2x2xf16>
    %10 = "tosa.maximum"(%5, %arg1) : (tensor<1x1x1x2xf16>, tensor<1x2x2x1xf16>) -> tensor<1x2x2x2xf16>
    %11 = "tosa.reshape"(%10) {new_shape = [2, 2, 2]} : (tensor<1x2x2x2xf16>) -> tensor<2x2x2xf16>
    return %7, %9, %11 : tensor<1x2x2x2xf16>, tensor<1x2x2x2xf16>, tensor<2x2x2xf16>
  }
}

