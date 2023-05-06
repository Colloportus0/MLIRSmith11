module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.abs"(%arg0) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %1 = "tosa.resize"(%arg0) {mode = "NEAREST_NEIGHBOR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 0.000000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 1.000000e+00 : f32]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.argmax"(%1) {axis = 3 : i64} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xi64>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1]} : (tensor<1x1x1xi64>) -> tensor<1x1xi64>
    %4 = "tf.BatchMatMulV2"(%2, %3) {T = i64, adj_x = false, adj_y = false} : (tensor<1x1x1xi64>, tensor<1x1xi64>) -> tensor<1x1x1xi64>
    return %0, %4 : tensor<1x1x1x1xf32>, tensor<1x1x1xi64>
  }
}

