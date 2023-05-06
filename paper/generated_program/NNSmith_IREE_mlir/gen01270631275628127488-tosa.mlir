module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<3.39128232> : tensor<1x1x1xf32>} : () -> tensor<1x1x1xf32>
    %1 = "tosa.const"() {value = dense<3.54268122> : tensor<1x1x1x1x1xf32>} : () -> tensor<1x1x1x1x1xf32>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1xf32>
    %3 = "tosa.matmul"(%2, %0) : (tensor<1x1x1xf32>, tensor<1x1x1xf32>) -> tensor<1x1x1xf32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 1, 1, 1]} : (tensor<1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %5 = "tosa.add"(%4, %1) : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %6 = "tosa.reshape"(%5) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tosa.cast"(%6) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xi64>
    %8 = "tosa.add"(%7, %7) : (tensor<1x1x1x1xi64>, tensor<1x1x1x1xi64>) -> tensor<1x1x1x1xi64>
    %9 = "tosa.resize"(%6) {mode = "NEAREST_NEIGHBOR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 0.000000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 1.000000e+00 : f32]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %9, %8 : tensor<1x1x1x1xf32>, tensor<1x1x1x1xi64>
  }
}

