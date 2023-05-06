module {
  func.func @main(%arg0: tensor<?xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<?xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf16> {iree.identifier = "inputs_2"}) -> (tensor<2x1x1x1xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[3.751950e+00, 4.777340e+00]> : tensor<2xf16>} : () -> tensor<2xf16>
    %1 = "tosa.const"() {value = dense<[3, 0, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2 = "tosa.maximum"(%arg1, %arg0) : (tensor<?xf16>, tensor<?xf16>) -> tensor<?xf16>
    %3 = "tosa.minimum"(%2, %0) : (tensor<?xf16>, tensor<2xf16>) -> tensor<2xf16>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 1, 2]} : (tensor<2xf16>) -> tensor<1x1x1x2xf16>
    %5 = "tosa.maximum"(%4, %arg2) : (tensor<1x1x1x2xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x2xf16>
    %6 = "tosa.transpose"(%5, %1) : (tensor<1x1x1x2xf16>, tensor<4xi32>) -> tensor<2x1x1x1xf16>
    return %6 : tensor<2x1x1x1xf16>
  }
}

