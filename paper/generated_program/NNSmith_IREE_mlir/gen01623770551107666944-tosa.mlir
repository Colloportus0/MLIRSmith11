module {
  func.func @main(%arg0: tensor<2x1x1x2xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x2xf32> {iree.identifier = "inputs_1"}) -> (tensor<1x2x2xf32> {iree.identifier = "Identity"}, tensor<2xf32> {iree.identifier = "Identity_1"}, tensor<2x1x6x2xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.floor"(%arg1) : (tensor<1x2x2xf32>) -> tensor<1x2x2xf32>
    %1 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 2, 2]} : (tensor<1x2x2xf32>) -> tensor<1x1x2x2xf32>
    %2 = "tosa.mul"(%1, %arg0) {shift = 0 : i32} : (tensor<1x1x2x2xf32>, tensor<2x1x1x2xf32>) -> tensor<2x1x2x2xf32>
    %3 = "tosa.reduce_min"(%arg1) {axis = 1 : i64} : (tensor<1x2x2xf32>) -> tensor<1x1x2xf32>
    %4 = "tosa.reshape"(%3) {new_shape = [2]} : (tensor<1x1x2xf32>) -> tensor<2xf32>
    %5 = "tosa.concat"(%2, %2, %2) {axis = 2 : i64} : (tensor<2x1x2x2xf32>, tensor<2x1x2x2xf32>, tensor<2x1x2x2xf32>) -> tensor<2x1x6x2xf32>
    return %0, %4, %5 : tensor<1x2x2xf32>, tensor<2xf32>, tensor<2x1x6x2xf32>
  }
}

