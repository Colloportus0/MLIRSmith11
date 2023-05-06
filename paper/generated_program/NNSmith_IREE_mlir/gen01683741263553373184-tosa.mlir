module {
  func.func @main(%arg0: tensor<1x2x1x2xf32> {iree.identifier = "inputs_0"}) -> (tensor<2x2x2xi64> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<[[[[4.637930e+00, 5.000000e-01]]], [[[5.20196486, 5.000000e-01]]]]> : tensor<2x1x1x2xf32>} : () -> tensor<2x1x1x2xf32>
    %2 = "tosa.const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %3 = "tosa.const"() {value = dense<0xFF800000> : tensor<f32>} : () -> tensor<f32>
    %4 = "tosa.maximum"(%arg0, %1) : (tensor<1x2x1x2xf32>, tensor<2x1x1x2xf32>) -> tensor<2x2x1x2xf32>
    %5 = "tosa.pad"(%4, %2, %3) : (tensor<2x2x1x2xf32>, tensor<4x2xi32>, tensor<f32>) -> tensor<2x4x3x2xf32>
    %6 = "tosa.max_pool2d"(%5) {kernel = [3, 2], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<2x4x3x2xf32>) -> tensor<2x2x2x2xf32>
    %7 = "tosa.add"(%6, %0) : (tensor<2x2x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<2x2x2x2xf32>
    %8 = "tosa.floor"(%7) : (tensor<2x2x2x2xf32>) -> tensor<2x2x2x2xf32>
    %9 = "tosa.argmax"(%8) {axis = 2 : i64} : (tensor<2x2x2x2xf32>) -> tensor<2x2x2xi64>
    return %9 : tensor<2x2x2xi64>
  }
}

