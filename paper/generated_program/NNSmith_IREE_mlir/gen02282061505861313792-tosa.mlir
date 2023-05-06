module {
  func.func @main(%arg0: tensor<2x2x1x2x2xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x2x2x2x2xi1> {iree.identifier = "Identity"}, tensor<2x10x1x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 2, 4, 3]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.transpose"(%arg0, %0) : (tensor<2x2x1x2x2xf16>, tensor<5xi32>) -> tensor<2x2x1x2x2xi32>
    %2 = "tosa.reshape"(%1) {new_shape = [8, 2]} : (tensor<2x2x1x2x2xi32>) -> tensor<8x2xf16>
    %3 = "tosa.reduce_sum"(%2) {axis = 1 : i64} : (tensor<8x2xf16>) -> tensor<8x1xf16>
    %4 = "tosa.reshape"(%3) {new_shape = [2, 2, 1, 2]} : (tensor<8x1xf16>) -> tensor<2x2x1x2xf16>
    %5 = "tosa.reshape"(%3) {new_shape = [1, 2, 2, 1, 2]} : (tensor<8x1xf16>) -> tensor<1x2x2x1x2xf16>
    %6 = "tosa.greater"(%arg0, %5) : (tensor<2x2x1x2x2xf16>, tensor<1x2x2x1x2xf16>) -> tensor<2x2x2x2x2xi1>
    %7 = "tosa.concat"(%4, %4, %4, %4, %4) {axis = 1 : i64} : (tensor<2x2x1x2xf16>, tensor<2x2x1x2xf16>, tensor<2x2x1x2xf16>, tensor<2x2x1x2xf16>, tensor<2x2x1x2xf16>) -> tensor<2x10x1x2xf16>
    return %6, %7 : tensor<2x2x2x2x2xi1>, tensor<2x10x1x2xf16>
  }
}

