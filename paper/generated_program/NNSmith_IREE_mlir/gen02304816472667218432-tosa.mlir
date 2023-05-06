module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<?xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x?xf16> {iree.identifier = "Identity"}, tensor<1x1x1x?xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.mul"(%arg0, %arg1) {shift = 0 : i32} : (tensor<1x1x1x1xf16>, tensor<?xf16>) -> tensor<1x1x1x?xf16>
    %1 = "tosa.sub"(%0, %arg0) : (tensor<1x1x1x?xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x?xf16>
    %2 = "tosa.maximum"(%0, %1) : (tensor<1x1x1x?xf16>, tensor<1x1x1x?xf16>) -> tensor<1x1x1x?xf16>
    return %2, %0 : tensor<1x1x1x?xf16>, tensor<1x1x1x?xf16>
  }
}

