module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x2xi1> {iree.identifier = "inputs_1"}) -> (tensor<16xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<3.193360e+00> : tensor<1xf16>} : () -> tensor<1xf16>
    %1 = "tosa.const"() {value = dense<[[[[5.464840e+00], [6.078130e+00]], [[4.320310e+00], [6.281250e+00]]], [[[3.519530e+00], [6.269530e+00]], [[4.871090e+00], [6.730460e+00]]]]> : tensor<2x2x2x1xf16>} : () -> tensor<2x2x2x1xf16>
    %2 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.reshape"(%arg1) {new_shape = [1, 2, 1, 2]} : (tensor<2x1x2xi1>) -> tensor<1x2x1x2xi1>
    %4 = "tosa.select"(%3, %1, %arg0) : (tensor<1x2x1x2xi1>, tensor<2x2x2x1xf16>, tensor<1x1x1x1xf16>) -> tensor<2x2x2x2xf16>
    %5 = "tosa.transpose"(%4, %2) : (tensor<2x2x2x2xf16>, tensor<4xi32>) -> tensor<2x2x2x2xf16>
    %6 = "tosa.reshape"(%5) {new_shape = [16]} : (tensor<2x2x2x2xf16>) -> tensor<16xf16>
    %7 = "tosa.reciprocal"(%0) : (tensor<1xf16>) -> tensor<1xf16>
    %8 = "tosa.mul"(%6, %7) {shift = 0 : i32} : (tensor<16xf16>, tensor<1xf16>) -> tensor<16xf16>
    return %8 : tensor<16xf16>
  }
}

