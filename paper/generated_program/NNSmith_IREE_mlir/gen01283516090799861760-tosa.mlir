module {
  func.func @main(%arg0: tensor<1x1x2x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x2x1xf16> {iree.identifier = "inputs_2"}) -> (tensor<1x1x2x1xf16> {iree.identifier = "Identity"}, tensor<1x2x5xi64> {iree.identifier = "Identity_1"}, tensor<10xi32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[[[[4.261720e+00], [6.605460e+00]]]]> : tensor<1x1x2x1xf16>} : () -> tensor<1x1x2x1xf16>
    %1 = "tosa.const"() {value = dense<[[[[6.882810e+00], [4.855470e+00]]]]> : tensor<1x1x2x1xf16>} : () -> tensor<1x1x2x1xf16>
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.const"() {value = dense<[0, 3, 2, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4 = "tosa.concat"(%arg2, %arg1, %0, %1, %arg0) {axis = 3 : i64} : (tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>) -> tensor<1x1x2x5xf16>
    %5 = "tosa.transpose"(%4, %2) : (tensor<1x1x2x5xf16>, tensor<4xi32>) -> tensor<1x5x1x2xf16>
    %6 = "tosa.reshape"(%5) {new_shape = [10]} : (tensor<1x5x1x2xf16>) -> tensor<10xf16>
    %7 = "tosa.cast"(%6) : (tensor<10xf16>) -> tensor<10xi32>
    %8 = "tosa.transpose"(%arg0, %3) : (tensor<1x1x2x1xf16>, tensor<4xi32>) -> tensor<1x1x2x1xf16>
    %9 = "tosa.argmax"(%4) {axis = 1 : i64} : (tensor<1x1x2x5xf16>) -> tensor<1x2x5xi64>
    return %8, %9, %7 : tensor<1x1x2x1xf16>, tensor<1x2x5xi64>, tensor<10xi32>
  }
}

