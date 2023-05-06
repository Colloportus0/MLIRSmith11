module {
  func.func @main(%arg0: tensor<1x2x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x1x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x2x1x1x1xf32> {iree.identifier = "inputs_2"}) -> (tensor<3x1x1x1xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 2, 4, 3]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<3.78321767> : tensor<1x2x1x1x1xf32>} : () -> tensor<1x2x1x1x1xf32>
    %2 = "tosa.add"(%arg0, %1) : (tensor<1x2x1x1x1xf32>, tensor<1x2x1x1x1xf32>) -> tensor<1x2x1x1x1xf32>
    %3 = "tosa.abs"(%2) : (tensor<1x2x1x1x1xf32>) -> tensor<1x2x1x1x1xf32>
    %4 = "tosa.concat"(%arg2, %arg1, %3) {axis = 0 : i64} : (tensor<1x2x1x1x1xf32>, tensor<1x2x1x1x1xf32>, tensor<1x2x1x1x1xf32>) -> tensor<3x2x1x1x1xf32>
    %5 = "tosa.transpose"(%4, %0) : (tensor<3x2x1x1x1xf32>, tensor<5xi32>) -> tensor<3x2x1x1x1xi32>
    %6 = "tosa.reshape"(%5) {new_shape = [3, 2, 1, 1]} : (tensor<3x2x1x1x1xi32>) -> tensor<3x2x1x1xf32>
    %7 = "tosa.avg_pool2d"(%6) {kernel = [2, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<3x2x1x1xf32>) -> tensor<3x1x1x1xf32>
    return %7 : tensor<3x1x1x1xf32>
  }
}

