module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1xf32> {iree.identifier = "Identity"}, tensor<1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.resize"(%arg0) {mode = "NEAREST_NEIGHBOR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 0.000000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 1.000000e+00 : f32]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %1 = "tosa.reshape"(%0) {new_shape = [1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1xf32>
    %2 = "tosa.reshape"(%0) {new_shape = [1]} : (tensor<1x1x1x1xf32>) -> tensor<1xf32>
    %3 = "tf.Atan"(%2) {T = f32} : (tensor<1xf32>) -> tensor<1xf32>
    return %1, %3 : tensor<1x1xf32>, tensor<1xf32>
  }
}

