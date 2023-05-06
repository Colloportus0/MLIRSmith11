module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf16> {iree.identifier = "Identity"}, tensor<1x1x1xi64> {iree.identifier = "Identity_1"}, tensor<1x1x1xi1> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<3> : tensor<i32>} : () -> tensor<i32>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xf16>
    %2 = "tosa.greater_equal"(%1, %1) : (tensor<1x1x1xf16>, tensor<1x1x1xf16>) -> tensor<1x1x1xi1>
    %3 = "tosa.logical_not"(%2) : (tensor<1x1x1xi1>) -> tensor<1x1x1xi1>
    %4 = "tosa.maximum"(%arg0, %arg0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %5 = "tf.ArgMin"(%4, %0) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x1x1x1xf16>, tensor<i32>) -> tensor<1x1x1xi64>
    return %arg0, %5, %3 : tensor<1x1x1x1xf16>, tensor<1x1x1xi64>, tensor<1x1x1xi1>
  }
}

