module {
  func.func @main(%arg0: tensor<1x2x1x12xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x4x1x12xf16> {iree.identifier = "Identity"}, tensor<2x1x12xi1> {iree.identifier = "Identity_1"}, tensor<1x2x1x12xi1> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.reshape"(%arg0) {new_shape = [2, 1, 12]} : (tensor<1x2x1x12xf16>) -> tensor<2x1x12xf16>
    %1 = "tosa.greater"(%arg0, %arg0) : (tensor<1x2x1x12xf16>, tensor<1x2x1x12xf16>) -> tensor<1x2x1x12xi1>
    %2 = "tosa.cast"(%0) : (tensor<2x1x12xf16>) -> tensor<2x1x12xi1>
    %3 = "tosa.concat"(%arg0, %arg0) {axis = 1 : i64} : (tensor<1x2x1x12xf16>, tensor<1x2x1x12xf16>) -> tensor<1x4x1x12xf16>
    return %3, %2, %1 : tensor<1x4x1x12xf16>, tensor<2x1x12xi1>, tensor<1x2x1x12xi1>
  }
}

