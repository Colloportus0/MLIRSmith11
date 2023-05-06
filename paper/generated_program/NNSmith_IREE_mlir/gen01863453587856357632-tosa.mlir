module {
  func.func @main(%arg0: tensor<1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2x4xf32> {iree.identifier = "Identity"}, tensor<1x1x1x4xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %1 = "tosa.const"() {value = dense<1.500000e+00> : tensor<1x1x2x4xf32>} : () -> tensor<1x1x2x4xf32>
    %2 = "tosa.const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %3 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.mul"(%3, %1) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x2x4xf32>) -> tensor<1x1x2x4xf32>
    %5 = "tosa.avg_pool2d"(%4) {kernel = [1, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x1x2x4xf32>) -> tensor<1x1x2x4xf32>
    %6 = "tosa.pad"(%4, %2, %0) : (tensor<1x1x2x4xf32>, tensor<4x2xi32>, tensor<f32>) -> tensor<1x3x4x4xf32>
    %7 = "tosa.avg_pool2d"(%6) {kernel = [2, 2], pad = [0, 0, 0, 0], stride = [5, 5]} : (tensor<1x3x4x4xf32>) -> tensor<1x1x1x4xf32>
    return %5, %7 : tensor<1x1x2x4xf32>, tensor<1x1x1x4xf32>
  }
}

