module {
  func.func @main(%arg0: tensor<?xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x1xf16> {iree.identifier = "Identity"}, tensor<1x1x1x?xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.reciprocal"(%arg0) : (tensor<?xf16>) -> tensor<?xf16>
    %1 = "tosa.mul"(%arg1, %0) {shift = 0 : i32} : (tensor<1x1x1x1xf16>, tensor<?xf16>) -> tensor<1x1x1x?xf16>
    %2 = "tosa.mul"(%1, %1) {shift = 0 : i32} : (tensor<1x1x1x?xf16>, tensor<1x1x1x?xf16>) -> tensor<1x1x1x?xf16>
    %3 = "tosa.slice"(%1) {size = [1, 1, 1, 1], start = [0, 0, 0, 0]} : (tensor<1x1x1x?xf16>) -> tensor<1x1x1x1xf16>
    return %3, %2 : tensor<1x1x1x1xf16>, tensor<1x1x1x?xf16>
  }
}

