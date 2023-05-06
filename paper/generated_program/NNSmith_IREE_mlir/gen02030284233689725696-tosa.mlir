module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.add"(%arg0, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.floor"(%1) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %3 = "tosa.avg_pool2d"(%2) {kernel = [1, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.resize"(%3) {mode = "NEAREST_NEIGHBOR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 0.000000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 1.000000e+00 : f32]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %3, %4 : tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

