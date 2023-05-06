module {
  func.func @main(%arg0: tensor<1x1x2x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2xf16> {iree.identifier = "Identity"}, tensor<1x1x2xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1xf32>} : () -> tensor<1x1x1xf32>
    %1 = "tosa.const"() {value = dense<[[[[5.882810e+00, 4.046880e+00]]]]> : tensor<1x1x1x2xf16>} : () -> tensor<1x1x1x2xf16>
    %2 = "tosa.const"() {value = dense<[[[5.882810e+00, 4.046880e+00]]]> : tensor<1x1x2xf16>} : () -> tensor<1x1x2xf16>
    %3 = "tosa.reciprocal"(%1) : (tensor<1x1x1x2xf16>) -> tensor<1x1x1x2xf16>
    %4 = "tosa.mul"(%arg0, %3) {shift = 0 : i32} : (tensor<1x1x2x1xf16>, tensor<1x1x1x2xf16>) -> tensor<1x1x2x2xf16>
    %5 = "tosa.reduce_sum"(%4) {axis = 3 : i64} : (tensor<1x1x2x2xf16>) -> tensor<1x1x2x1xf16>
    %6 = "tosa.reshape"(%5) {new_shape = [1, 1, 2]} : (tensor<1x1x2x1xf16>) -> tensor<1x1x2xf16>
    %7 = "tosa.mul"(%6, %0) {shift = 0 : i32} : (tensor<1x1x2xf16>, tensor<1x1x1xf32>) -> tensor<1x1x2xf16>
    %8 = "tosa.greater_equal"(%7, %7) : (tensor<1x1x2xf16>, tensor<1x1x2xf16>) -> tensor<1x1x2xi1>
    %9 = "tosa.logical_not"(%8) : (tensor<1x1x2xi1>) -> tensor<1x1x2xi1>
    %10 = "tosa.sub"(%7, %2) : (tensor<1x1x2xf16>, tensor<1x1x2xf16>) -> tensor<1x1x2xf16>
    return %10, %9 : tensor<1x1x2xf16>, tensor<1x1x2xi1>
  }
}

