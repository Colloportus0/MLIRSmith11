module {
  func.func @main(%arg0: tensor<1x2x2x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x2x1x1xf16> {iree.identifier = "Identity"}, tensor<1x2xf16> {iree.identifier = "Identity_1"}, tensor<1x2x1x1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 3, 4, 2]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<[[[[[5.523440e+00]], [[3.876950e+00]]], [[[6.027340e+00]], [[6.621090e+00]]]]]> : tensor<1x2x2x1x1xf16>} : () -> tensor<1x2x2x1x1xf16>
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.minimum"(%arg0, %1) : (tensor<1x2x2x1x1xf16>, tensor<1x2x2x1x1xf16>) -> tensor<1x2x2x1x1xf16>
    %4 = "tosa.transpose"(%3, %0) : (tensor<1x2x2x1x1xf16>, tensor<5xi32>) -> tensor<1x2x1x1x2xi32>
    %5 = "tosa.reshape"(%4) {new_shape = [2, 2]} : (tensor<1x2x1x1x2xi32>) -> tensor<2x2xf16>
    %6 = "tosa.reduce_min"(%5) {axis = 1 : i64} : (tensor<2x2xf16>) -> tensor<2x1xf16>
    %7 = "tosa.reshape"(%6) {new_shape = [1, 2, 1, 1]} : (tensor<2x1xf16>) -> tensor<1x2x1x1xf16>
    %8 = "tosa.transpose"(%7, %2) : (tensor<1x2x1x1xf16>, tensor<4xi32>) -> tensor<1x1x2x1xf16>
    %9 = "tosa.negate"(%7) : (tensor<1x2x1x1xf16>) -> tensor<1x2x1x1xf16>
    %10 = "tosa.reshape"(%8) {new_shape = [1, 2]} : (tensor<1x1x2x1xf16>) -> tensor<1x2xf16>
    %11 = "tosa.transpose"(%arg0, %0) : (tensor<1x2x2x1x1xf16>, tensor<5xi32>) -> tensor<1x2x1x1x2xi32>
    %12 = "tosa.reshape"(%11) {new_shape = [2, 2]} : (tensor<1x2x1x1x2xi32>) -> tensor<2x2xf16>
    %13 = "tosa.reduce_sum"(%12) {axis = 1 : i64} : (tensor<2x2xf16>) -> tensor<2x1xf16>
    %14 = "tosa.reshape"(%13) {new_shape = [1, 2, 1, 1]} : (tensor<2x1xf16>) -> tensor<1x2x1x1xf16>
    return %14, %10, %9 : tensor<1x2x1x1xf16>, tensor<1x2xf16>, tensor<1x2x1x1xf16>
  }
}

