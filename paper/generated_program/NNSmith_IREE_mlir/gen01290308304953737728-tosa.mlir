module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xi64> {iree.identifier = "Identity"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<0> : tensor<i32>} : () -> tensor<i32>
    %1 = "tosa.negate"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %2 = "tosa.cast"(%1) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi64>
    %3 = "tosa.greater"(%2, %2) : (tensor<1x1x1x1xi64>, tensor<1x1x1x1xi64>) -> tensor<1x1x1x1xi1>
    %4 = "tf.ArgMin"(%arg0, %0) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x1x1x1xf16>, tensor<i32>) -> tensor<1x1x1xi64>
    return %4, %3 : tensor<1x1x1xi64>, tensor<1x1x1x1xi1>
  }
}

