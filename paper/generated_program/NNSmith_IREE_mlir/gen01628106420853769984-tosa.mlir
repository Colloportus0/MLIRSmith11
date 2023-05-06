module {
  func.func @main(%arg0: tensor<2x1x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x2x2xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x4xf16> {iree.identifier = "Identity"}, tensor<1x2x2x2x2xf16> {iree.identifier = "Identity_1"}, tensor<1x2x2x2xi1> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 1]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1 = "tosa.transpose"(%arg0, %0) : (tensor<2x1x2xf16>, tensor<3xi32>) -> tensor<2x2x1xf16>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 2, 1, 2]} : (tensor<2x1x2xf16>) -> tensor<1x1x2x1x2xf16>
    %3 = "tosa.add"(%arg1, %2) : (tensor<1x2x1x2x2xf16>, tensor<1x1x2x1x2xf16>) -> tensor<1x2x2x2x2xf16>
    %4 = "tosa.reshape"(%3) {new_shape = [8, 2]} : (tensor<1x2x2x2x2xf16>) -> tensor<8x2xf16>
    %5 = "tosa.reduce_sum"(%4) {axis = 1 : i64} : (tensor<8x2xf16>) -> tensor<8x1xf16>
    %6 = "tosa.reshape"(%5) {new_shape = [1, 2, 2, 2]} : (tensor<8x1xf16>) -> tensor<1x2x2x2xf16>
    %7 = "tosa.reshape"(%5) {new_shape = [1, 1, 2, 2, 2]} : (tensor<8x1xf16>) -> tensor<1x1x2x2x2xf16>
    %8 = "tosa.sub"(%arg1, %7) : (tensor<1x2x1x2x2xf16>, tensor<1x1x2x2x2xf16>) -> tensor<1x2x2x2x2xf16>
    %9 = "tosa.greater_equal"(%6, %6) : (tensor<1x2x2x2xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xi1>
    %10 = "tosa.logical_not"(%9) : (tensor<1x2x2x2xi1>) -> tensor<1x2x2x2xi1>
    %11 = "tosa.reshape"(%1) {new_shape = [1, 1, 1, 4]} : (tensor<2x2x1xf16>) -> tensor<1x1x1x4xf16>
    return %11, %8, %10 : tensor<1x1x1x4xf16>, tensor<1x2x2x2x2xf16>, tensor<1x2x2x2xi1>
  }
}

