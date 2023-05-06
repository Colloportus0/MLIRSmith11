module {
  func.func @main(%arg0: tensor<1x2x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<?xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x2x1x1xf16> {iree.identifier = "inputs_2"}) -> (tensor<?xf32> {iree.identifier = "Identity"}, tensor<1x2x2x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.reciprocal"(%arg0) : (tensor<1x2x2xf16>) -> tensor<1x2x2xf16>
    %1 = "tosa.mul"(%arg1, %0) {shift = 0 : i32} : (tensor<?xf16>, tensor<1x2x2xf16>) -> tensor<1x2x2xf16>
    %2 = "tosa.cast"(%arg1) : (tensor<?xf16>) -> tensor<?xf32>
    %3 = "tosa.reshape"(%1) {new_shape = [1, 1, 2, 2]} : (tensor<1x2x2xf16>) -> tensor<1x1x2x2xf16>
    %4 = "tosa.sub"(%3, %arg2) : (tensor<1x1x2x2xf16>, tensor<1x2x1x1xf16>) -> tensor<1x2x2x2xf16>
    %5 = "tosa.reduce_min"(%1) {axis = 2 : i64} : (tensor<1x2x2xf16>) -> tensor<1x2x1xf16>
    %6 = "tosa.reshape"(%5) {new_shape = [1, 1, 1, 2]} : (tensor<1x2x1xf16>) -> tensor<1x1x1x2xf16>
    %7 = "tosa.minimum"(%6, %4) : (tensor<1x1x1x2xf16>, tensor<1x2x2x2xf16>) -> tensor<1x2x2x2xf16>
    return %2, %7 : tensor<?xf32>, tensor<1x2x2x2xf16>
  }
}

