module {
  func.func @main(%arg0: tensor<2xf16> {iree.identifier = "inputs_0"}) -> (tensor<i64> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[6.656250e+00]], [[5.828130e+00]]], [[[5.644530e+00]], [[3.839840e+00]]]]> : tensor<2x2x1x1xf16>} : () -> tensor<2x2x1x1xf16>
    %1 = "tosa.const"() {value = dense<0> : tensor<i32>} : () -> tensor<i32>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<2xf16>) -> tensor<1x1x1x2xf16>
    %3 = "tosa.sub"(%2, %0) : (tensor<1x1x1x2xf16>, tensor<2x2x1x1xf16>) -> tensor<2x2x1x2xf16>
    %4 = "tosa.reduce_sum"(%3) {axis = 0 : i64} : (tensor<2x2x1x2xf16>) -> tensor<1x2x1x2xf16>
    %5 = "tosa.reshape"(%4) {new_shape = [2, 1, 2]} : (tensor<1x2x1x2xf16>) -> tensor<2x1x2xf16>
    %6 = "tf.ArgMin"(%5, %1) {T = f16, Tidx = i32, output_type = i64} : (tensor<2x1x2xf16>, tensor<i32>) -> tensor<1x2xi64>
    %7 = "tosa.reshape"(%6) {new_shape = [2]} : (tensor<1x2xi64>) -> tensor<2xi64>
    %8 = "tosa.reduce_sum"(%7) {axis = 0 : i64} : (tensor<2xi64>) -> tensor<1xi64>
    %9 = "tosa.reshape"(%8) {new_shape = []} : (tensor<1xi64>) -> tensor<i64>
    return %9 : tensor<i64>
  }
}

