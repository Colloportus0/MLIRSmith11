module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf32> {iree.identifier = "inputs_2"}) -> (tensor<1xf32> {iree.identifier = "Identity"}, tensor<1x5x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<6.03756999> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<5.61168623> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<[[[[4.18930149, 6.85768985, 5.98947525, 3.99694014, 6.59803581]]]]> : tensor<1x1x1x5xf32>} : () -> tensor<1x1x1x5xf32>
    %3 = "tosa.const"() {value = dense<4.66377354> : tensor<1xf32>} : () -> tensor<1xf32>
    %4 = "tosa.concat"(%arg2, %0, %arg1, %1, %arg0) {axis = 1 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x5x1x1xf32>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 1, 1, 5]} : (tensor<1x5x1x1xf32>) -> tensor<1x1x1x5xf32>
    %6 = "tosa.reciprocal"(%4) : (tensor<1x5x1x1xf32>) -> tensor<1x5x1x1xf32>
    %7 = "tosa.mul"(%arg2, %6) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x5x1x1xf32>) -> tensor<1x5x1x1xf32>
    %8 = "tosa.conv2d"(%5, %2, %3) {dilation = [1, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x1x1x5xf32>, tensor<1x1x1x5xf32>, tensor<1xf32>) -> tensor<1x1x1x1xf32>
    %9 = "tosa.floor"(%8) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %10 = "tosa.reshape"(%arg2) {new_shape = [1]} : (tensor<1x1x1x1xf32>) -> tensor<1xf32>
    return %10, %7, %9 : tensor<1xf32>, tensor<1x5x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

