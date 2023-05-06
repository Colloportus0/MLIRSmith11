module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x5x2xi1> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<6.558590e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %1 = "tosa.const"() {value = dense<5.742190e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %2 = "tosa.const"() {value = dense<6.371090e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %3 = "tosa.const"() {value = dense<0> : tensor<i32>} : () -> tensor<i32>
    %4 = "tosa.concat"(%arg1, %0, %1, %arg0, %2) {axis = 2 : i64} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x5x1xf16>
    %5 = "tf.ArgMin"(%4, %3) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x1x5x1xf16>, tensor<i32>) -> tensor<1x5x1xi64>
    %6 = "tosa.concat"(%5, %5) {axis = 2 : i64} : (tensor<1x5x1xi64>, tensor<1x5x1xi64>) -> tensor<1x5x2xi64>
    %7 = "tosa.maximum"(%6, %5) : (tensor<1x5x2xi64>, tensor<1x5x1xi64>) -> tensor<1x5x2xi64>
    %8 = "tosa.equal"(%7, %6) : (tensor<1x5x2xi64>, tensor<1x5x2xi64>) -> tensor<1x5x2xi1>
    return %8 : tensor<1x5x2xi1>
  }
}

