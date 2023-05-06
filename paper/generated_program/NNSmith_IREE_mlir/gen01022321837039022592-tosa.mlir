module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<1.500000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<-1.500000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xf32>
    %3 = "tosa.minimum"(%arg0, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.maximum"(%3, %1) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.minimum"(%4, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %6 = "tosa.maximum"(%5, %1) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tosa.resize"(%arg0) {mode = "BILINEAR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 0.000000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 1.000000e+00 : f32]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %7, %2, %6 : tensor<1x1x1x1xf32>, tensor<1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

