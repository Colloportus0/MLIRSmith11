module {
  func.func @main(%arg0: tensor<1x1x1x2xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2xf16> {iree.identifier = "Identity"}, tensor<1x1x2x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x1x2xf16>, tensor<4xi32>) -> tensor<1x1x2x1xf16>
    %2 = "tosa.mul"(%1, %arg0) {shift = 0 : i32} : (tensor<1x1x2x1xf16>, tensor<1x1x1x2xf16>) -> tensor<1x1x2x2xf16>
    %3 = "tosa.reduce_sum"(%arg0) {axis = 3 : i64} : (tensor<1x1x1x2xf16>) -> tensor<1x1x1x1xf16>
    %4 = "tosa.mul"(%2, %3) {shift = 0 : i32} : (tensor<1x1x2x2xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x2x2xf16>
    %5 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 2]} : (tensor<1x1x1x2xf16>) -> tensor<1x1x2xf16>
    return %5, %4 : tensor<1x1x2xf16>, tensor<1x1x2x2xf16>
  }
}

