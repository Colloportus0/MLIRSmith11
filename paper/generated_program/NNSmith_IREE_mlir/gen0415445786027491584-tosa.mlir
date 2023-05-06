module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf16> {iree.identifier = "inputs_2"}) -> (tensor<1x1x1x5xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<5.179690e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %1 = "tosa.const"() {value = dense<4.093750e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %2 = "tosa.concat"(%arg2, %arg1, %0, %arg0, %1) {axis = 3 : i64} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x5xf16>
    %3 = "tosa.sub"(%2, %2) : (tensor<1x1x1x5xf16>, tensor<1x1x1x5xf16>) -> tensor<1x1x1x5xf16>
    %4 = "tosa.maximum"(%2, %3) : (tensor<1x1x1x5xf16>, tensor<1x1x1x5xf16>) -> tensor<1x1x1x5xf16>
    return %4 : tensor<1x1x1x5xf16>
  }
}

