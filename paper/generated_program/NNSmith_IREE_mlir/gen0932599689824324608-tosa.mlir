module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<4.881430e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<4.3522563> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.clamp"(%arg0) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %3 = "tosa.concat"(%arg1, %0, %arg0, %1) {axis = 3 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x4xf32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 4, 1]} : (tensor<1x1x1x4xf32>) -> tensor<1x1x4x1xf32>
    %5 = "tosa.resize"(%4) {mode = "BILINEAR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 1.500000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 4.000000e+00 : f32]} : (tensor<1x1x4x1xf32>) -> tensor<1x1x1x1xf32>
    return %2, %5 : tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

