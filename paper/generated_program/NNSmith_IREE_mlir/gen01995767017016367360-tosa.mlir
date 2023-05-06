module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xf16> {iree.identifier = "Identity"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}, tensor<1x2x1x1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.sub"(%arg0, %arg0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %1 = "tosa.greater"(%0, %0) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi1>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xf16>
    %3 = "tosa.concat"(%0, %0) {axis = 1 : i64} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x2x1x1xf16>
    return %2, %1, %3 : tensor<1x1x1xf16>, tensor<1x1x1x1xi1>, tensor<1x2x1x1xf16>
  }
}

