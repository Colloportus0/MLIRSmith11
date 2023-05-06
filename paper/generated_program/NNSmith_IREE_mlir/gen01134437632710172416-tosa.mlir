module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf16> {iree.identifier = "inputs_2"}) -> (tensor<1x1x4x1xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<5.667960e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %1 = "tosa.negate"(%arg0) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %2 = "tosa.concat"(%arg2, %arg1, %1, %0) {axis = 2 : i64} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x4x1xf16>
    %3 = "tosa.mul"(%2, %2) {shift = 0 : i32} : (tensor<1x1x4x1xf16>, tensor<1x1x4x1xf16>) -> tensor<1x1x4x1xf16>
    return %3 : tensor<1x1x4x1xf16>
  }
}

