module {
  func.func @main(%arg0: tensor<1x2x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<2x1x2xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[5.62292051, 5.39482069], [3.62677979, 5.094300e+00]], [[5.16410351, 6.05301285], [3.42122293, 6.33542824]]]]> : tensor<1x2x2x2xf32>} : () -> tensor<1x2x2x2xf32>
    %1 = "tosa.const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %2 = "tosa.const"() {value = dense<0xFF800000> : tensor<f32>} : () -> tensor<f32>
    %3 = "tosa.minimum"(%arg0, %0) : (tensor<1x2x1x1xf32>, tensor<1x2x2x2xf32>) -> tensor<1x2x2x2xf32>
    %4 = "tosa.pad"(%3, %1, %2) : (tensor<1x2x2x2xf32>, tensor<4x2xi32>, tensor<f32>) -> tensor<1x4x4x2xf32>
    %5 = "tosa.max_pool2d"(%4) {kernel = [2, 4], pad = [0, 0, 0, 0], stride = [2, 2]} : (tensor<1x4x4x2xf32>) -> tensor<1x2x1x2xf32>
    %6 = "tosa.reshape"(%5) {new_shape = [2, 1, 2]} : (tensor<1x2x1x2xf32>) -> tensor<2x1x2xf32>
    return %6 : tensor<2x1x2xf32>
  }
}

