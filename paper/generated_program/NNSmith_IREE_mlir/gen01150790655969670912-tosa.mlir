module {
  func.func @main(%arg0: tensor<1x2x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<5x2x1xf16> {iree.identifier = "inputs_2"}) -> (tensor<1x2x1x5xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[5.449210e+00]], [[5.785150e+00]]]]> : tensor<1x2x1x1xf16>} : () -> tensor<1x2x1x1xf16>
    %1 = "tosa.const"() {value = dense<[[[[4.570310e+00]], [[6.550780e+00]]]]> : tensor<1x2x1x1xf16>} : () -> tensor<1x2x1x1xf16>
    %2 = "tosa.const"() {value = dense<[[[[4.089840e+00]], [[4.910160e+00]]]]> : tensor<1x2x1x1xf16>} : () -> tensor<1x2x1x1xf16>
    %3 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %4 = "tosa.abs"(%arg0) : (tensor<1x2x1x1xf16>) -> tensor<1x2x1x1xf16>
    %5 = "tosa.concat"(%0, %1, %2, %arg1, %4) {axis = 3 : i64} : (tensor<1x2x1x1xf16>, tensor<1x2x1x1xf16>, tensor<1x2x1x1xf16>, tensor<1x2x1x1xf16>, tensor<1x2x1x1xf16>) -> tensor<1x2x1x5xf16>
    %6 = "tosa.reshape"(%arg2) {new_shape = [1, 5, 2, 1]} : (tensor<5x2x1xf16>) -> tensor<1x5x2x1xf16>
    %7 = "tosa.transpose"(%6, %3) : (tensor<1x5x2x1xf16>, tensor<4xi32>) -> tensor<1x2x1x5xf16>
    %8 = "tosa.reciprocal"(%7) : (tensor<1x2x1x5xf16>) -> tensor<1x2x1x5xf16>
    %9 = "tosa.mul"(%5, %8) {shift = 0 : i32} : (tensor<1x2x1x5xf16>, tensor<1x2x1x5xf16>) -> tensor<1x2x1x5xf16>
    %10 = "tosa.mul"(%9, %9) {shift = 0 : i32} : (tensor<1x2x1x5xf16>, tensor<1x2x1x5xf16>) -> tensor<1x2x1x5xf16>
    return %10 : tensor<1x2x1x5xf16>
  }
}

