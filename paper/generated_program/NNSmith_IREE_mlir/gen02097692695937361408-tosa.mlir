module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xf16> {iree.identifier = "Identity"}, tensor<1x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.const"() {value = dense<2> : tensor<i32>} : () -> tensor<i32>
    %2 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x1x1xf16>, tensor<4xi32>) -> tensor<1x1x1x1xf16>
    %3 = "tosa.negate"(%2) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %4 = "tf.ArgMin"(%3, %1) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x1x1x1xf16>, tensor<i32>) -> tensor<1x1x1xi64>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 1]} : (tensor<1x1x1xi64>) -> tensor<1x1xi64>
    %6 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xf16>
    return %6, %5 : tensor<1x1x1xf16>, tensor<1x1xi64>
  }
}

