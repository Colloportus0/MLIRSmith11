module {
  func.func @main(%arg0: tensor<2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x2xf16> {iree.identifier = "Identity"}, tensor<1x1x1x2xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<true> : tensor<1x1x1x2xi1>} : () -> tensor<1x1x1x2xi1>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<2xf16>) -> tensor<1x1x1x2xf16>
    %2 = "tosa.mul"(%arg1, %1) {shift = 0 : i32} : (tensor<1x1x1x1xf16>, tensor<1x1x1x2xf16>) -> tensor<1x1x1x2xf16>
    %3 = "tosa.maximum"(%2, %2) : (tensor<1x1x1x2xf16>, tensor<1x1x1x2xf16>) -> tensor<1x1x1x2xf16>
    return %3, %0 : tensor<1x1x1x2xf16>, tensor<1x1x1x2xi1>
  }
}

