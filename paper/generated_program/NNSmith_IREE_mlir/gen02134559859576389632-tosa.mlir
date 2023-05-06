module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tf.Atan"(%arg0) {T = f32} : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %2 = "tosa.minimum"(%1, %1) : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %3 = "tosa.transpose"(%1, %0) : (tensor<1x1x1x1x1xf32>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.resize"(%4) {mode = "NEAREST_NEIGHBOR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 0.000000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 1.000000e+00 : f32]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %6 = "tosa.reshape"(%5) {new_shape = [1]} : (tensor<1x1x1x1xf32>) -> tensor<1xf32>
    return %2, %6 : tensor<1x1x1x1x1xf32>, tensor<1xf32>
  }
}

