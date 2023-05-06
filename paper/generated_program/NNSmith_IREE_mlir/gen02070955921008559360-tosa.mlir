module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi1> {iree.identifier = "Identity"}, tensor<1x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<1> : tensor<i32>} : () -> tensor<i32>
    %1 = "tosa.const"() {value = dense<2> : tensor<i32>} : () -> tensor<i32>
    %2 = "tosa.greater_equal"(%arg0, %arg0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi1>
    %3 = "tosa.logical_not"(%2) : (tensor<1x1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %4 = "tf.ArgMin"(%arg0, %0) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x1x1x1xf16>, tensor<i32>) -> tensor<1x1x1xi64>
    %5 = "tf.ArgMin"(%4, %1) {T = i64, Tidx = i32, output_type = i64} : (tensor<1x1x1xi64>, tensor<i32>) -> tensor<1x1xi64>
    return %3, %5 : tensor<1x1x1x1xi1>, tensor<1x1xi64>
  }
}

