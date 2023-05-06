module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.exp"(%arg0) : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %1 = "tosa.reciprocal"(%0) : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %2 = "tosa.mul"(%0, %1) {shift = 0 : i32} : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.exp"(%3) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.reciprocal"(%4) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %6 = "tosa.mul"(%4, %5) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tosa.resize"(%3) {mode = "BILINEAR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 0.000000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 1.000000e+00 : f32]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %8 = "tosa.cast"(%7) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xi1>
    return %6, %8 : tensor<1x1x1x1xf32>, tensor<1x1x1x1xi1>
  }
}

