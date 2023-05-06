module {
  func.func @main(%arg0: tensor<2x1x1x1x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x2x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<2x1x4x1x2xf16> {iree.identifier = "Identity"}, tensor<2x2x1x2xf16> {iree.identifier = "Identity_1"}, tensor<2x2x1x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 3, 4, 1]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.add"(%arg1, %arg0) : (tensor<2x1x2x1x1xf16>, tensor<2x1x1x1x2xf16>) -> tensor<2x1x2x1x2xf16>
    %2 = "tosa.concat"(%1, %1) {axis = 2 : i64} : (tensor<2x1x2x1x2xf16>, tensor<2x1x2x1x2xf16>) -> tensor<2x1x4x1x2xf16>
    %3 = "tosa.transpose"(%1, %0) : (tensor<2x1x2x1x2xf16>, tensor<5xi32>) -> tensor<2x2x1x2x1xi32>
    %4 = "tosa.reshape"(%3) {new_shape = [2, 2, 1, 2]} : (tensor<2x2x1x2x1xi32>) -> tensor<2x2x1x2xf16>
    %5 = "tosa.add"(%4, %4) : (tensor<2x2x1x2xf16>, tensor<2x2x1x2xf16>) -> tensor<2x2x1x2xf16>
    return %2, %4, %5 : tensor<2x1x4x1x2xf16>, tensor<2x2x1x2xf16>, tensor<2x2x1x2xf16>
  }
}

