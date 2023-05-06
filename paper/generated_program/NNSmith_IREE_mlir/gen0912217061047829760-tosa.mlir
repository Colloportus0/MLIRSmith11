module {
  func.func @main(%arg0: tensor<1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1xf16> {iree.identifier = "inputs_2"}, %arg3: tensor<2x1x1x1xf16> {iree.identifier = "inputs_3"}) -> (tensor<2x1x1x5xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<6.062500e+00> : tensor<1xf16>} : () -> tensor<1xf16>
    %1 = "tosa.const"() {value = dense<5.902340e+00> : tensor<1xf16>} : () -> tensor<1xf16>
    %2 = "tosa.concat"(%arg2, %0, %arg1, %1, %arg0) {axis = 0 : i64} : (tensor<1xf16>, tensor<1xf16>, tensor<1xf16>, tensor<1xf16>, tensor<1xf16>) -> tensor<5xf16>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 1, 5]} : (tensor<5xf16>) -> tensor<1x1x1x5xf16>
    %4 = "tosa.maximum"(%3, %arg3) : (tensor<1x1x1x5xf16>, tensor<2x1x1x1xf16>) -> tensor<2x1x1x5xf16>
    return %4 : tensor<2x1x1x5xf16>
  }
}

