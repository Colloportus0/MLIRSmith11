module {
  func.func @main(%arg0: tensor<1x2x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x2x1x2xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x2x2x1x2xf16> {iree.identifier = "inputs_2"}) -> (tensor<1x2x4x2xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<[0, 1, 3, 4, 2]> : tensor<5xi32>} : () -> tensor<5xi32>
    %2 = "tosa.const"() {value = dense<[[[[[6.714840e+00, 3.322270e+00], [3.083980e+00, 6.582030e+00]]], [[[4.578130e+00, 4.871090e+00], [3.722660e+00, 4.484380e+00]]]]]> : tensor<1x2x1x2x2xf16>} : () -> tensor<1x2x1x2x2xf16>
    %3 = "tosa.const"() {value = dense<[[[[[4.039060e+00, 6.875000e+00], [6.214840e+00, 3.332030e+00]]], [[[6.683590e+00, 4.324220e+00], [5.859380e+00, 5.554690e+00]]]]]> : tensor<1x2x1x2x2xf16>} : () -> tensor<1x2x1x2x2xf16>
    %4 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2, 2]} : (tensor<1x2x2xf16>) -> tensor<1x1x1x2x2xf16>
    %5 = "tosa.minimum"(%4, %2) : (tensor<1x1x1x2x2xf16>, tensor<1x2x1x2x2xf16>) -> tensor<1x2x1x2x2xf16>
    %6 = "tosa.concat"(%3, %5) {axis = 2 : i64} : (tensor<1x2x1x2x2xf16>, tensor<1x2x1x2x2xf16>) -> tensor<1x2x2x2x2xf16>
    %7 = "tosa.concat"(%6, %arg2, %arg1) {axis = 3 : i64} : (tensor<1x2x2x2x2xf16>, tensor<1x2x2x1x2xf16>, tensor<1x2x2x1x2xf16>) -> tensor<1x2x2x4x2xf16>
    %8 = "tosa.transpose"(%7, %1) : (tensor<1x2x2x4x2xf16>, tensor<5xi32>) -> tensor<1x2x4x2x2xi32>
    %9 = "tosa.reshape"(%8) {new_shape = [16, 2]} : (tensor<1x2x4x2x2xi32>) -> tensor<16x2xf16>
    %10 = "tosa.reduce_sum"(%9) {axis = 1 : i64} : (tensor<16x2xf16>) -> tensor<16x1xf16>
    %11 = "tosa.reshape"(%10) {new_shape = [1, 2, 4, 2]} : (tensor<16x1xf16>) -> tensor<1x2x4x2xf16>
    %12 = "tosa.mul"(%11, %0) {shift = 0 : i32} : (tensor<1x2x4x2xf16>, tensor<1x1x1x1xf32>) -> tensor<1x2x4x2xf16>
    return %12 : tensor<1x2x4x2xf16>
  }
}

