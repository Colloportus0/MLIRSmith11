module {
  func.func @main(%arg0: tensor<2x2x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x2x2x2xf32> {iree.identifier = "Identity"}, tensor<8xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 2, 2, 2]} : (tensor<2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %2 = "tosa.sub"(%arg1, %1) : (tensor<1x2x1x1xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %3 = "tosa.cast"(%2) : (tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf32>
    %4 = "tosa.sigmoid"(%3) : (tensor<1x2x2x2xf32>) -> tensor<1x2x2x2xf32>
    %5 = "tosa.transpose"(%2, %0) : (tensor<1x2x2x2xf16>, tensor<4xi32>) -> tensor<1x2x2x2xf16>
    %6 = "tosa.reshape"(%5) {new_shape = [8]} : (tensor<1x2x2x2xf16>) -> tensor<8xf16>
    return %4, %6 : tensor<1x2x2x2xf32>, tensor<8xf16>
  }
}

