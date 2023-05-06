module {
  func.func @main(%arg0: tensor<2x1xi1> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x2xi1> {iree.identifier = "inputs_1"}, %arg2: tensor<1x2x1x1xf16> {iree.identifier = "inputs_2"}, %arg3: tensor<1xf16> {iree.identifier = "inputs_3"}) -> (tensor<1x1x1xf16> {iree.identifier = "Identity"}, tensor<1x2x2x2xf16> {iree.identifier = "Identity_1"}, tensor<1x2x2x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.reshape"(%arg0) {new_shape = [1, 2, 1]} : (tensor<2x1xi1>) -> tensor<1x2x1xi1>
    %1 = "tosa.logical_and"(%arg1, %0) : (tensor<2x1x2xi1>, tensor<1x2x1xi1>) -> tensor<2x2x2xi1>
    %2 = "tosa.reshape"(%1) {new_shape = [1, 2, 2, 2]} : (tensor<2x2x2xi1>) -> tensor<1x2x2x2xi1>
    %3 = "tosa.select"(%2, %arg3, %arg2) : (tensor<1x2x2x2xi1>, tensor<1xf16>, tensor<1x2x1x1xf16>) -> tensor<1x2x2x2xf16>
    %4 = "tosa.maximum"(%3, %3) : (tensor<1x2x2x2xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf16>
    %5 = "tosa.reduce_sum"(%arg2) {axis = 1 : i64} : (tensor<1x2x1x1xf16>) -> tensor<1x1x1x1xf16>
    %6 = "tosa.reshape"(%5) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xf16>
    return %6, %3, %4 : tensor<1x1x1xf16>, tensor<1x2x2x2xf16>, tensor<1x2x2x2xf16>
  }
}

