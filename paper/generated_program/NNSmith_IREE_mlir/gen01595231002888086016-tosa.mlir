module {
  func.func @main(%arg0: tensor<2x2x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<?xf32> {iree.identifier = "inputs_1"}) -> (tensor<2x1x1x?xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<3.94285107> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<0.757550716> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<1> : tensor<2xi32>} : () -> tensor<2xi32>
    %3 = "tosa.mul"(%arg0, %0) {shift = 0 : i32} : (tensor<2x2x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x2x1x1xf32>
    %4 = "tosa.add"(%3, %1) : (tensor<2x2x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x2x1x1xf32>
    %5 = "tosa.clamp"(%4) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<2x2x1x1xf32>) -> tensor<2x2x1x1xf32>
    %6 = "tosa.floor"(%5) : (tensor<2x2x1x1xf32>) -> tensor<2x2x1x1xf32>
    %7 = "tosa.reciprocal"(%6) : (tensor<2x2x1x1xf32>) -> tensor<2x2x1x1xf32>
    %8 = "tosa.mul"(%arg1, %7) {shift = 0 : i32} : (tensor<?xf32>, tensor<2x2x1x1xf32>) -> tensor<2x2x1x?xf32>
    %9 = "tf.ResizeBicubic"(%8, %2) {T = f32, align_corners = false, half_pixel_centers = true} : (tensor<2x2x1x?xf32>, tensor<2xi32>) -> tensor<2x1x1x?xf32>
    return %9 : tensor<2x1x1x?xf32>
  }
}

