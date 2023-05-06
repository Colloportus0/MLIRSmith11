module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x2x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x2x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5.56294727> : tensor<1x1x1x1x1xf32>} : () -> tensor<1x1x1x1x1xf32>
    %1 = "tosa.concat"(%arg0, %0) {axis = 1 : i64} : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x2x1x1x1xf32>
    %2 = "tosa.negate"(%1) : (tensor<1x2x1x1x1xf32>) -> tensor<1x2x1x1x1xf32>
    %3 = "tosa.reshape"(%1) {new_shape = [1, 2, 1, 1]} : (tensor<1x2x1x1x1xf32>) -> tensor<1x2x1x1xf32>
    %4 = "tosa.avg_pool2d"(%3) {kernel = [1, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x2x1x1xf32>) -> tensor<1x2x1x1xf32>
    return %2, %4 : tensor<1x2x1x1x1xf32>, tensor<1x2x1x1xf32>
  }
}

