module {
  func.func @main(%arg0: tensor<1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x2x2x2xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[3.027340e+00, 5.292970e+00], [4.085940e+00, 3.193360e+00]], [[6.011710e+00, 5.277340e+00], [3.480470e+00, 6.109380e+00]]], [[[3.712890e+00, 5.011720e+00], [6.289060e+00, 3.757810e+00]], [[6.289060e+00, 4.019530e+00], [3.478520e+00, 4.281250e+00]]]]> : tensor<2x2x2x2xf16>} : () -> tensor<2x2x2x2xf16>
    %1 = "tosa.const"() {value = dense<[[[[3.027340e+00, 6.011710e+00], [5.292970e+00, 5.277340e+00]], [[4.085940e+00, 3.480470e+00], [3.193360e+00, 6.109380e+00]]], [[[3.712890e+00, 6.289060e+00], [5.011720e+00, 4.019530e+00]], [[6.289060e+00, 3.478520e+00], [3.757810e+00, 4.281250e+00]]]]> : tensor<2x2x2x2xf16>} : () -> tensor<2x2x2x2xf16>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1]} : (tensor<1x1xf16>) -> tensor<1xf16>
    %3 = "tosa.reciprocal"(%2) : (tensor<1xf16>) -> tensor<1xf16>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 1, 1]} : (tensor<1xf16>) -> tensor<1x1x1x1xf16>
    %5 = "tosa.mul"(%4, %0) {shift = 0 : i32} : (tensor<1x1x1x1xf16>, tensor<2x2x2x2xf16>) -> tensor<2x2x2x2xf16>
    %6 = "tosa.sub"(%1, %5) : (tensor<2x2x2x2xf16>, tensor<2x2x2x2xf16>) -> tensor<2x2x2x2xf16>
    return %6 : tensor<2x2x2x2xf16>
  }
}

