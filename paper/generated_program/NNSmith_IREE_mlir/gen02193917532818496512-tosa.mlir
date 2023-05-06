module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf16> {iree.identifier = "inputs_2"}) -> (tensor<1x1x1xi64> {iree.identifier = "Identity"}, tensor<1x1x5x1xf16> {iree.identifier = "Identity_1"}, tensor<5x1x1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<4.617190e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %1 = "tosa.const"() {value = dense<3.406250e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %2 = "tosa.const"() {value = dense<0> : tensor<i32>} : () -> tensor<i32>
    %3 = "tosa.concat"(%arg2, %0, %arg1, %arg0, %1) {axis = 2 : i64} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x5x1xf16>
    %4 = "tosa.reshape"(%3) {new_shape = [5, 1, 1]} : (tensor<1x1x5x1xf16>) -> tensor<5x1x1xf16>
    %5 = "tf.ArgMin"(%arg2, %2) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x1x1x1xf16>, tensor<i32>) -> tensor<1x1x1xi64>
    return %5, %3, %4 : tensor<1x1x1xi64>, tensor<1x1x5x1xf16>, tensor<5x1x1xf16>
  }
}

