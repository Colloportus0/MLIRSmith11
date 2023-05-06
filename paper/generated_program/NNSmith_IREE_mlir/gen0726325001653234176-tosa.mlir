module {
  func.func @main(%arg0: tensor<2x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x2xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1xi1> {iree.identifier = "inputs_2"}, %arg3: tensor<?xf16> {iree.identifier = "inputs_3"}) -> (tensor<2x1xf16> {iree.identifier = "Identity"}, tensor<?xf16> {iree.identifier = "Identity_1"}, tensor<1x2x1x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<5.019530e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %1 = "tosa.reshape"(%arg2) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1xi1>) -> tensor<1x1x1x1xi1>
    %2 = "tosa.select"(%1, %arg1, %arg0) : (tensor<1x1x1x1xi1>, tensor<1x2x1x2xf16>, tensor<2x1x1xf16>) -> tensor<1x2x1x2xf16>
    %3 = "tosa.abs"(%arg3) : (tensor<?xf16>) -> tensor<?xf16>
    %4 = "tosa.reciprocal"(%2) : (tensor<1x2x1x2xf16>) -> tensor<1x2x1x2xf16>
    %5 = "tosa.mul"(%4, %0) {shift = 0 : i32} : (tensor<1x2x1x2xf16>, tensor<1x1x1x1xf16>) -> tensor<1x2x1x2xf16>
    %6 = "tosa.minimum"(%5, %arg3) : (tensor<1x2x1x2xf16>, tensor<?xf16>) -> tensor<1x2x1x2xf16>
    %7 = "tosa.reshape"(%arg0) {new_shape = [2, 1]} : (tensor<2x1x1xf16>) -> tensor<2x1xf16>
    return %7, %3, %6 : tensor<2x1xf16>, tensor<?xf16>, tensor<1x2x1x2xf16>
  }
}

