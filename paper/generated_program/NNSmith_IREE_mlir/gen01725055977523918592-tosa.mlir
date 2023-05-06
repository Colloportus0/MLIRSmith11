module {
  func.func @main(%arg0: tensor<?xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf16> {iree.identifier = "inputs_2"}) -> (tensor<1x1x3x2xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<6.085940e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %1 = "tosa.maximum"(%arg1, %arg0) : (tensor<1x1x2x1xf16>, tensor<?xf16>) -> tensor<1x1x2x?xf16>
    %2 = "tosa.concat"(%arg2, %0) {axis = 3 : i64} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x2xf16>
    %3 = "tosa.concat"(%2, %1) {axis = 2 : i64} : (tensor<1x1x1x2xf16>, tensor<1x1x2x?xf16>) -> tensor<1x1x3x2xf16>
    %4 = "tosa.cast"(%3) : (tensor<1x1x3x2xf16>) -> tensor<1x1x3x2xf32>
    return %4 : tensor<1x1x3x2xf32>
  }
}

