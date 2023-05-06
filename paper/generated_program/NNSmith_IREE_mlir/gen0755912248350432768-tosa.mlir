module {
  func.func @main(%arg0: tensor<1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x2xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x2x1xi1> {iree.identifier = "inputs_2"}) -> (tensor<2x1x2xf16> {iree.identifier = "Identity"}, tensor<1x2x2x2xf16> {iree.identifier = "Identity_1"}, tensor<2x2x2x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[[[5.480460e+00, 4.625000e+00]], [[6.554690e+00, 6.468750e+00]]]> : tensor<2x1x2xf16>} : () -> tensor<2x1x2xf16>
    %1 = "tosa.reciprocal"(%0) : (tensor<2x1x2xf16>) -> tensor<2x1x2xf16>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1xf16>) -> tensor<1x1x1xf16>
    %3 = "tosa.mul"(%2, %1) {shift = 0 : i32} : (tensor<1x1x1xf16>, tensor<2x1x2xf16>) -> tensor<2x1x2xf16>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 2, 1, 2]} : (tensor<2x1x2xf16>) -> tensor<1x2x1x2xf16>
    %5 = "tosa.reshape"(%arg2) {new_shape = [1, 1, 2, 1]} : (tensor<1x2x1xi1>) -> tensor<1x1x2x1xi1>
    %6 = "tosa.select"(%5, %arg1, %3) : (tensor<1x1x2x1xi1>, tensor<1x1x1x2xf16>, tensor<2x1x2xf16>) -> tensor<1x2x2x2xf16>
    %7 = "tosa.add"(%4, %6) : (tensor<1x2x1x2xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %8 = "tosa.concat"(%6, %6) {axis = 0 : i64} : (tensor<1x2x2x2xf16>, tensor<1x2x2x2xf16>) -> tensor<2x2x2x2xf16>
    return %3, %7, %8 : tensor<2x1x2xf16>, tensor<1x2x2x2xf16>, tensor<2x2x2x2xf16>
  }
}

