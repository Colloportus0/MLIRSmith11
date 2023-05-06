module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1xf16> {iree.identifier = "Identity"}, tensor<1x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<3> : tensor<i32>} : () -> tensor<i32>
    %1 = "tf.ArgMin"(%arg0, %0) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x1x1x1xf16>, tensor<i32>) -> tensor<1x1x1xi64>
    %2 = "tosa.abs"(%1) : (tensor<1x1x1xi64>) -> tensor<1x1x1xi64>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1]} : (tensor<1x1x1xi64>) -> tensor<1x1xi64>
    %4 = "tosa.reshape"(%arg0) {new_shape = [1]} : (tensor<1x1x1x1xf16>) -> tensor<1xf16>
    return %4, %3 : tensor<1xf16>, tensor<1x1xi64>
  }
}

