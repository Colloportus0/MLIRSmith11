module {
  func.func @main(%arg0: tensor<2x1x2x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x2xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x1x2xf16> {iree.identifier = "Identity"}, tensor<6x1x2xi64> {iree.identifier = "Identity_1"}, tensor<2x2x1x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.const"() {value = dense<0> : tensor<i32>} : () -> tensor<i32>
    %2 = "tosa.transpose"(%arg0, %0) : (tensor<2x1x2x1xf16>, tensor<4xi32>) -> tensor<2x1x1x2xf16>
    %3 = "tosa.mul"(%2, %arg1) {shift = 0 : i32} : (tensor<2x1x1x2xf16>, tensor<1x2x1x2xf16>) -> tensor<2x2x1x2xf16>
    %4 = "tf.ArgMin"(%arg1, %1) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x2x1x2xf16>, tensor<i32>) -> tensor<2x1x2xi64>
    %5 = "tosa.concat"(%4, %4, %4) {axis = 0 : i64} : (tensor<2x1x2xi64>, tensor<2x1x2xi64>, tensor<2x1x2xi64>) -> tensor<6x1x2xi64>
    %6 = "tosa.reduce_sum"(%2) {axis = 0 : i64} : (tensor<2x1x1x2xf16>) -> tensor<1x1x1x2xf16>
    %7 = "tosa.reshape"(%6) {new_shape = [1, 1, 2]} : (tensor<1x1x1x2xf16>) -> tensor<1x1x2xf16>
    return %7, %5, %3 : tensor<1x1x2xf16>, tensor<6x1x2xi64>, tensor<2x2x1x2xf16>
  }
}

