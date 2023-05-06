module {
  func.func @main(%arg0: tensor<1x2x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<2x1x1x2xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[6.92168808, 5.05117035], [3.82035446, 3.60751677]], [[4.74425125, 5.17413855], [5.92451239, 5.01711655]]], [[[3.02684402, 5.535330e+00], [4.87563324, 3.55246425]], [[6.42619324, 4.59795809], [3.56592965, 6.22608089]]]]> : tensor<2x2x2x2xf32>} : () -> tensor<2x2x2x2xf32>
    %1 = "tosa.const"() {value = dense<[[0, 0], [255, 255], [255, 255], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %2 = "tosa.const"() {value = dense<0xFF800000> : tensor<f32>} : () -> tensor<f32>
    %3 = "tosa.pad"(%0, %1, %2) : (tensor<2x2x2x2xf32>, tensor<4x2xi32>, tensor<f32>) -> tensor<2x512x512x2xf32>
    %4 = "tosa.max_pool2d"(%3) {kernel = [512, 510], pad = [0, 0, 0, 0], stride = [3, 3]} : (tensor<2x512x512x2xf32>) -> tensor<2x1x1x2xf32>
    return %4 : tensor<2x1x1x2xf32>
  }
}

