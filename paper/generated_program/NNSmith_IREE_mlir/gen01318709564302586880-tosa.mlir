module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x2x1xf32> {iree.identifier = "inputs_2"}) -> (tensor<2x1x2x1xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<6.40191173> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<4.57279682> : tensor<1xf32>} : () -> tensor<1xf32>
    %2 = "tosa.resize"(%arg0) {mode = "BILINEAR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 0.000000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 1.000000e+00 : f32]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %3 = "tosa.conv2d"(%2, %0, %1) {dilation = [1, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.concat"(%arg1, %3) {axis = 2 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x2x1xf32>
    %5 = "tosa.concat"(%arg2, %4) {axis = 0 : i64} : (tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>) -> tensor<2x1x2x1xf32>
    return %5 : tensor<2x1x2x1xf32>
  }
}

