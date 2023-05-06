module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf16> {iree.identifier = "inputs_2"}) -> (tensor<1x1x26x1xi1> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<3.058590e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %1 = "tosa.const"() {value = dense<5.734380e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %2 = "tosa.concat"(%arg2, %0, %arg1, %1, %arg0) {axis = 2 : i64} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x5x1xf16>
    %3 = "tosa.concat"(%2, %0, %2, %2, %2, %2) {axis = 2 : i64} : (tensor<1x1x5x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x5x1xf16>, tensor<1x1x5x1xf16>, tensor<1x1x5x1xf16>, tensor<1x1x5x1xf16>) -> tensor<1x1x26x1xf16>
    %4 = "tosa.cast"(%3) : (tensor<1x1x26x1xf16>) -> tensor<1x1x26x1xi1>
    return %4 : tensor<1x1x26x1xi1>
  }
}

