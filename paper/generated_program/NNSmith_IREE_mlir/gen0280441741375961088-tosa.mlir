module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<19.0588531> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<-5.81684112> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.concat"(%1, %arg1, %arg0) {axis = 3 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x3xf32>
    %3 = "tosa.add"(%2, %0) : (tensor<1x1x1x3xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x3xf32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 3, 1]} : (tensor<1x1x1x3xf32>) -> tensor<1x1x3x1xf32>
    %5 = "tosa.resize"(%4) {mode = "BILINEAR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 1.000000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 3.000000e+00 : f32]} : (tensor<1x1x3x1xf32>) -> tensor<1x1x1x1xf32>
    return %5 : tensor<1x1x1x1xf32>
  }
}

