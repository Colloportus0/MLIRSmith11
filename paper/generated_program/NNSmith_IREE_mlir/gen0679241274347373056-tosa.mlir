module {
  func.func @main(%arg0: tensor<2x2x1x1x2xf16> {iree.identifier = "inputs_0"}) -> (tensor<24x1xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 3, 4, 2]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<[[[[[1.135740e+00, 8.081050e-01], [1.407230e+00, 1.000980e+00]]], [[[1.306640e+00, 9.853510e-01], [9.277340e-01, 7.001950e-01]]]], [[[[1.114260e+00, 1.256840e+00], [1.379880e+00, 1.555660e+00]]], [[[1.077150e+00, 8.276360e-01], [7.646480e-01, 5.878900e-01]]]]]> : tensor<2x2x1x2x2xf16>} : () -> tensor<2x2x1x2x2xf16>
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.concat"(%arg0, %1) {axis = 3 : i64} : (tensor<2x2x1x1x2xf16>, tensor<2x2x1x2x2xf16>) -> tensor<2x2x1x3x2xf16>
    %4 = "tosa.transpose"(%3, %0) : (tensor<2x2x1x3x2xf16>, tensor<5xi32>) -> tensor<2x2x3x2x1xi32>
    %5 = "tosa.reshape"(%4) {new_shape = [2, 2, 3, 2]} : (tensor<2x2x3x2x1xi32>) -> tensor<2x2x3x2xf16>
    %6 = "tosa.transpose"(%5, %2) : (tensor<2x2x3x2xf16>, tensor<4xi32>) -> tensor<2x2x2x3xf16>
    %7 = "tosa.reshape"(%6) {new_shape = [24, 1]} : (tensor<2x2x2x3xf16>) -> tensor<24x1xf16>
    return %7 : tensor<24x1xf16>
  }
}

