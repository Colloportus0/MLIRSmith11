module {
  func.func @main(%arg0: tensor<1x2x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x2x1x2xi64> {iree.identifier = "Identity"}, tensor<2x2x1x2xi1> {iree.identifier = "Identity_1"}, tensor<2x1xi64> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[[[[5.519530e+00, 6.257810e+00]], [[6.019530e+00, 6.273440e+00]]], [[[5.945310e+00, 5.136720e+00]], [[5.398440e+00, 5.332030e+00]]]]> : tensor<2x2x1x2xf16>} : () -> tensor<2x2x1x2xf16>
    %1 = "tosa.const"() {value = dense<3> : tensor<i32>} : () -> tensor<i32>
    %2 = "tosa.reshape"(%arg0) {new_shape = [2]} : (tensor<1x2x1x1xf16>) -> tensor<2xf16>
    %3 = "tosa.reciprocal"(%2) : (tensor<2xf16>) -> tensor<2xf16>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 1, 2]} : (tensor<2xf16>) -> tensor<1x1x1x2xf16>
    %5 = "tosa.mul"(%4, %0) {shift = 0 : i32} : (tensor<1x1x1x2xf16>, tensor<2x2x1x2xf16>) -> tensor<2x2x1x2xf16>
    %6 = "tosa.cast"(%5) : (tensor<2x2x1x2xf16>) -> tensor<2x2x1x2xi64>
    %7 = "tosa.greater"(%0, %5) : (tensor<2x2x1x2xf16>, tensor<2x2x1x2xf16>) -> tensor<2x2x1x2xi1>
    %8 = "tf.ArgMin"(%5, %1) {T = f16, Tidx = i32, output_type = i64} : (tensor<2x2x1x2xf16>, tensor<i32>) -> tensor<2x2x1xi64>
    %9 = "tosa.argmax"(%8) {axis = 0 : i64} : (tensor<2x2x1xi64>) -> tensor<2x1xi64>
    return %6, %7, %9 : tensor<2x2x1x2xi64>, tensor<2x2x1x2xi1>, tensor<2x1xi64>
  }
}

