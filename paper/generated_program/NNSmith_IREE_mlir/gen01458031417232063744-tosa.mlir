module {
  func.func @main(%arg0: tensor<1x2x2x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x2xf32> {iree.identifier = "inputs_1"}) -> (tensor<2xf32> {iree.identifier = "Identity"}, tensor<1x1x1x2xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x2xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.reciprocal"(%arg0) : (tensor<1x2x2x1xf32>) -> tensor<1x2x2x1xf32>
    %1 = "tosa.mul"(%arg1, %0) {shift = 0 : i32} : (tensor<1x2x1x2xf32>, tensor<1x2x2x1xf32>) -> tensor<1x2x2x2xf32>
    %2 = "tosa.resize"(%1) {mode = "BILINEAR", offset = [0, 0], offset_fp = [5.000000e-01 : f32, 5.000000e-01 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [2.000000e+00 : f32, 2.000000e+00 : f32]} : (tensor<1x2x2x2xf32>) -> tensor<1x1x1x2xf32>
    %3 = "tosa.reshape"(%2) {new_shape = [2]} : (tensor<1x1x1x2xf32>) -> tensor<2xf32>
    return %3, %2, %2 : tensor<2xf32>, tensor<1x1x1x2xf32>, tensor<1x1x1x2xf32>
  }
}

