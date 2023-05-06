module {
  func.func @main(%arg0: tensor<1x1x1x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x2x1xi64> {iree.identifier = "Identity"}, tensor<1x1x1x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<false> : tensor<1x1x1x2xi1>} : () -> tensor<1x1x1x2xi1>
    %1 = "tosa.const"() {value = dense<4.750000e+00> : tensor<1xf16>} : () -> tensor<1xf16>
    %2 = "tosa.const"() {value = dense<3> : tensor<i32>} : () -> tensor<i32>
    %3 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, 2]} : (tensor<1x2x1x1xf16>) -> tensor<1x1x1x2xf16>
    %4 = "tosa.select"(%0, %arg0, %1) : (tensor<1x1x1x2xi1>, tensor<1x1x1x2xf16>, tensor<1xf16>) -> tensor<1x1x1x2xf16>
    %5 = "tosa.add"(%4, %3) : (tensor<1x1x1x2xf16>, tensor<1x1x1x2xf16>) -> tensor<1x1x1x2xf16>
    %6 = "tf.ArgMin"(%arg1, %2) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x2x1x1xf16>, tensor<i32>) -> tensor<1x2x1xi64>
    return %6, %5 : tensor<1x2x1xi64>, tensor<1x1x1x2xf16>
  }
}

