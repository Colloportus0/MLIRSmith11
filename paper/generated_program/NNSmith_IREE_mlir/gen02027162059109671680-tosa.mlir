module {
  func.func @main(%arg0: tensor<?xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2x4xf16> {iree.identifier = "Identity"}, tensor<1x1x2xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<2.500000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<[0, 1, 2, 4, 3]> : tensor<5xi32>} : () -> tensor<5xi32>
    %2 = "tosa.const"() {value = dense<[[[[[3.664060e+00, 3.345700e+00, 5.820310e+00, 5.441400e+00], [3.593750e+00, 3.548830e+00, 4.628910e+00, 4.750000e+00]], [[5.796880e+00, 5.023440e+00, 4.515630e+00, 3.464840e+00], [3.486330e+00, 3.693360e+00, 6.832030e+00, 3.769530e+00]]]]]> : tensor<1x1x2x2x4xf16>} : () -> tensor<1x1x2x2x4xf16>
    %3 = "tosa.mul"(%arg0, %2) {shift = 0 : i32} : (tensor<?xf16>, tensor<1x1x2x2x4xf16>) -> tensor<1x1x2x2x4xf16>
    %4 = "tosa.reshape"(%3) {new_shape = [4, 4]} : (tensor<1x1x2x2x4xf16>) -> tensor<4x4xf16>
    %5 = "tosa.reduce_sum"(%4) {axis = 1 : i64} : (tensor<4x4xf16>) -> tensor<4x1xf16>
    %6 = "tosa.reshape"(%5) {new_shape = [1, 1, 2, 2]} : (tensor<4x1xf16>) -> tensor<1x1x2x2xf16>
    %7 = "tosa.mul"(%6, %0) {shift = 0 : i32} : (tensor<1x1x2x2xf16>, tensor<1x1x1x1xf32>) -> tensor<1x1x2x2xf16>
    %8 = "tosa.argmax"(%7) {axis = 3 : i64} : (tensor<1x1x2x2xf16>) -> tensor<1x1x2xi64>
    %9 = "tosa.transpose"(%3, %1) : (tensor<1x1x2x2x4xf16>, tensor<5xi32>) -> tensor<1x1x2x4x2xi32>
    %10 = "tosa.reshape"(%9) {new_shape = [8, 2]} : (tensor<1x1x2x4x2xi32>) -> tensor<8x2xf16>
    %11 = "tosa.reduce_sum"(%10) {axis = 1 : i64} : (tensor<8x2xf16>) -> tensor<8x1xf16>
    %12 = "tosa.reshape"(%11) {new_shape = [1, 1, 2, 4]} : (tensor<8x1xf16>) -> tensor<1x1x2x4xf16>
    return %12, %8 : tensor<1x1x2x4xf16>, tensor<1x1x2xi64>
  }
}

