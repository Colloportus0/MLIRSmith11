module {
  func.func @main(%arg0: tensor<1x1x2x2xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2x2xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x2x2xf32> {iree.identifier = "inputs_2"}) -> (tensor<1x1x1x2xf32> {iree.identifier = "Identity"}, tensor<4x1x2x2xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[1.71380091, 1.19824719]]]]> : tensor<1x1x1x2xf32>} : () -> tensor<1x1x1x2xf32>
    %1 = "tosa.const"() {value = dense<[[[[3.14387155, 3.10028243]]]]> : tensor<1x1x1x2xf32>} : () -> tensor<1x1x1x2xf32>
    %2 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<[[[[2.31915855, 1.71064138], [3.25721645, 0.829634666]]]]> : tensor<1x1x2x2xf32>} : () -> tensor<1x1x2x2xf32>
    %4 = "tosa.add"(%arg0, %2) : (tensor<1x1x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x2x2xf32>
    %5 = "tosa.floor"(%4) : (tensor<1x1x2x2xf32>) -> tensor<1x1x2x2xf32>
    %6 = "tosa.concat"(%5, %3, %arg2, %arg1) {axis = 0 : i64} : (tensor<1x1x2x2xf32>, tensor<1x1x2x2xf32>, tensor<1x1x2x2xf32>, tensor<1x1x2x2xf32>) -> tensor<4x1x2x2xf32>
    %7 = "tosa.mul"(%6, %1) {shift = 0 : i32} : (tensor<4x1x2x2xf32>, tensor<1x1x1x2xf32>) -> tensor<4x1x2x2xf32>
    %8 = "tosa.resize"(%arg2) {mode = "BILINEAR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 5.000000e-01 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 2.000000e+00 : f32]} : (tensor<1x1x2x2xf32>) -> tensor<1x1x1x2xf32>
    %9 = "tosa.add"(%7, %0) : (tensor<4x1x2x2xf32>, tensor<1x1x1x2xf32>) -> tensor<4x1x2x2xf32>
    return %8, %9 : tensor<1x1x1x2xf32>, tensor<4x1x2x2xf32>
  }
}

