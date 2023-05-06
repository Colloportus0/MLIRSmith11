module {
  func.func @main(%arg0: tensor<1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2x1xi1> {iree.identifier = "inputs_1"}) -> (tensor<3x1x1xf16> {iree.identifier = "Identity"}, tensor<1x1x2x1xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<3.998050e+00> : tensor<1x1x1xf16>} : () -> tensor<1x1x1xf16>
    %1 = "tosa.select"(%arg1, %0, %arg0) : (tensor<1x1x2x1xi1>, tensor<1x1x1xf16>, tensor<1x1x1xf16>) -> tensor<1x1x2x1xf16>
    %2 = "tosa.mul"(%1, %1) {shift = 0 : i32} : (tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>) -> tensor<1x1x2x1xf16>
    %3 = "tosa.concat"(%0, %0, %arg0) {axis = 0 : i64} : (tensor<1x1x1xf16>, tensor<1x1x1xf16>, tensor<1x1x1xf16>) -> tensor<3x1x1xf16>
    return %3, %2 : tensor<3x1x1xf16>, tensor<1x1x2x1xf16>
  }
}

