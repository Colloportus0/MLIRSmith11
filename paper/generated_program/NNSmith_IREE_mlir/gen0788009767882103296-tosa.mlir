module {
  func.func @main(%arg0: tensor<1x1x2x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x2x2x1xf16> {iree.identifier = "Identity"}, tensor<1x1x10x1xf16> {iree.identifier = "Identity_1"}, tensor<1x5x1xi64> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.const"() {value = dense<6.296880e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %2 = "tosa.const"() {value = dense<0> : tensor<i32>} : () -> tensor<i32>
    %3 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x2x1xf16>, tensor<4xi32>) -> tensor<1x2x1x1xf16>
    %4 = "tosa.concat"(%arg1, %arg0, %1) {axis = 2 : i64} : (tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x5x1xf16>
    %5 = "tosa.reciprocal"(%arg1) : (tensor<1x1x2x1xf16>) -> tensor<1x1x2x1xf16>
    %6 = "tosa.mul"(%3, %5) {shift = 0 : i32} : (tensor<1x2x1x1xf16>, tensor<1x1x2x1xf16>) -> tensor<1x2x2x1xf16>
    %7 = "tosa.concat"(%4, %4) {axis = 2 : i64} : (tensor<1x1x5x1xf16>, tensor<1x1x5x1xf16>) -> tensor<1x1x10x1xf16>
    %8 = "tf.ArgMin"(%4, %2) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x1x5x1xf16>, tensor<i32>) -> tensor<1x5x1xi64>
    return %6, %7, %8 : tensor<1x2x2x1xf16>, tensor<1x1x10x1xf16>, tensor<1x5x1xi64>
  }
}

