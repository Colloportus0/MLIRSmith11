module {
  func.func @main(%arg0: tensor<1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x2xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x2x2xi64> {iree.identifier = "Identity"}, tensor<1x2x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[5.242190e+00], [4.757810e+00]]> : tensor<2x1xf16>} : () -> tensor<2x1xf16>
    %1 = "tosa.const"() {value = dense<2> : tensor<i32>} : () -> tensor<i32>
    %2 = "tosa.mul"(%arg0, %0) {shift = 0 : i32} : (tensor<1x1xf16>, tensor<2x1xf16>) -> tensor<2x1xf16>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 2, 1]} : (tensor<2x1xf16>) -> tensor<1x1x2x1xf16>
    %4 = "tosa.minimum"(%3, %arg1) : (tensor<1x1x2x1xf16>, tensor<1x2x1x2xf16>) -> tensor<1x2x2x2xf16>
    %5 = "tf.ArgMin"(%4, %1) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x2x2x2xf16>, tensor<i32>) -> tensor<1x2x2xi64>
    %6 = "tosa.matmul"(%5, %5) : (tensor<1x2x2xi64>, tensor<1x2x2xi64>) -> tensor<1x2x2xi64>
    %7 = "tosa.reduce_max"(%4) {axis = 2 : i64} : (tensor<1x2x2x2xf16>) -> tensor<1x2x1x2xf16>
    %8 = "tosa.reshape"(%7) {new_shape = [1, 2, 2]} : (tensor<1x2x1x2xf16>) -> tensor<1x2x2xf16>
    return %6, %8 : tensor<1x2x2xi64>, tensor<1x2x2xf16>
  }
}

