module {
  func.func @main(%arg0: tensor<2x2x2x2x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<2x2x2x2xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[[4.539060e+00, 5.910150e+00]]]]]> : tensor<1x1x1x1x2xf16>} : () -> tensor<1x1x1x1x2xf16>
    %1 = "tosa.const"() {value = dense<[0, 1, 3, 4, 2]> : tensor<5xi32>} : () -> tensor<5xi32>
    %2 = "tosa.maximum"(%arg0, %0) : (tensor<2x2x2x2x1xf16>, tensor<1x1x1x1x2xf16>) -> tensor<2x2x2x2x2xf16>
    %3 = "tosa.transpose"(%arg1, %1) : (tensor<1x1x1x1x1xf16>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf16>
    %5 = "tosa.transpose"(%2, %1) : (tensor<2x2x2x2x2xf16>, tensor<5xi32>) -> tensor<2x2x2x2x2xi32>
    %6 = "tosa.reshape"(%5) {new_shape = [16, 2]} : (tensor<2x2x2x2x2xi32>) -> tensor<16x2xf16>
    %7 = "tosa.reduce_sum"(%6) {axis = 1 : i64} : (tensor<16x2xf16>) -> tensor<16x1xf16>
    %8 = "tosa.reshape"(%7) {new_shape = [2, 2, 2, 2]} : (tensor<16x1xf16>) -> tensor<2x2x2x2xf16>
    %9 = "tosa.minimum"(%4, %8) : (tensor<1x1x1x1xf16>, tensor<2x2x2x2xf16>) -> tensor<2x2x2x2xf16>
    return %9 : tensor<2x2x2x2xf16>
  }
}

