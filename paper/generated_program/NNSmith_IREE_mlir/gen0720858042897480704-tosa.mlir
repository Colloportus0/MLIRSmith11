module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 3, 4, 2]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<6.8119812> : tensor<1x1x1x1x1xf32>} : () -> tensor<1x1x1x1x1xf32>
    %2 = "tosa.concat"(%arg0, %1) {axis = 2 : i64} : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x2x1x1xf32>
    %3 = "tosa.transpose"(%2, %0) : (tensor<1x1x2x1x1xf32>, tensor<5xi32>) -> tensor<1x1x1x1x2xi32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 2]} : (tensor<1x1x1x1x2xi32>) -> tensor<1x2xf32>
    %5 = "tosa.reduce_min"(%4) {axis = 1 : i64} : (tensor<1x2xf32>) -> tensor<1x1xf32>
    %6 = "tosa.reshape"(%5) {new_shape = [1, 1, 1, 1]} : (tensor<1x1xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tosa.resize"(%6) {mode = "BILINEAR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 0.000000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 1.000000e+00 : f32]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %6, %7, %6 : tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

