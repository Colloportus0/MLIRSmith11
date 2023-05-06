module {
  func.func @main(%arg0: tensor<1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x2x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1xf16> {iree.identifier = "inputs_0"}, tensor<1x1x1x2x1xf16> {iree.identifier = "Identity_1"}, tensor<1x1x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1, 1]} : (tensor<1xf16>) -> tensor<1x1x1x1x1xf16>
    %2 = "tosa.mul"(%arg1, %1) {shift = 0 : i32} : (tensor<1x1x1x2x1xf16>, tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x2x1xf16>
    %3 = "tosa.minimum"(%2, %2) : (tensor<1x1x1x2x1xf16>, tensor<1x1x1x2x1xf16>) -> tensor<1x1x1x2x1xf16>
    %4 = "tosa.transpose"(%2, %0) : (tensor<1x1x1x2x1xf16>, tensor<5xi32>) -> tensor<1x1x2x1x1xi32>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 1, 2]} : (tensor<1x1x2x1x1xi32>) -> tensor<1x1x2xf16>
    return %arg0, %3, %5 : tensor<1xf16>, tensor<1x1x1x2x1xf16>, tensor<1x1x2xf16>
  }
}

