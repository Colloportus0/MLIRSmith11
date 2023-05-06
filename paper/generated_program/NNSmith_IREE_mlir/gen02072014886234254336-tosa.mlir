module {
  func.func @main(%arg0: tensor<?xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xi1> {iree.identifier = "inputs_2"}, %arg3: tensor<?xi1> {iree.identifier = "inputs_3"}, %arg4: tensor<1x1x1x1xf16> {iree.identifier = "inputs_4"}) -> (tensor<1x1x1x1xf16> {iree.identifier = "inputs_4"}, tensor<1x1x1x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<true> : tensor<2xi1>} : () -> tensor<2xi1>
    %1 = "tosa.select"(%arg2, %arg1, %arg0) : (tensor<1x1x1x1xi1>, tensor<1xf16>, tensor<?xf16>) -> tensor<1x1x1x?xf16>
    %2 = "tosa.logical_and"(%arg3, %0) : (tensor<?xi1>, tensor<2xi1>) -> tensor<2xi1>
    %3 = "tosa.logical_not"(%2) : (tensor<2xi1>) -> tensor<2xi1>
    %4 = "tosa.logical_and"(%3, %0) : (tensor<2xi1>, tensor<2xi1>) -> tensor<2xi1>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 1, 1, 2]} : (tensor<2xi1>) -> tensor<1x1x1x2xi1>
    %6 = "tosa.select"(%5, %1, %arg4) : (tensor<1x1x1x2xi1>, tensor<1x1x1x?xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x2xf16>
    %7 = "tosa.maximum"(%6, %1) : (tensor<1x1x1x2xf16>, tensor<1x1x1x?xf16>) -> tensor<1x1x1x2xf16>
    return %arg4, %7 : tensor<1x1x1x1xf16>, tensor<1x1x1x2xf16>
  }
}

