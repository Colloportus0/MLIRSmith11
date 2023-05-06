module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xi64> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<1> : tensor<2xi32>} : () -> tensor<2xi32>
    %1 = "tf.Atan"(%arg0) {T = f32} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.reciprocal"(%1) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %3 = "tosa.mul"(%1, %2) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.argmax"(%1) {axis = 1 : i64} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xi64>
    %5 = "tosa.sub"(%4, %4) : (tensor<1x1x1xi64>, tensor<1x1x1xi64>) -> tensor<1x1x1xi64>
    %6 = "tf.ResizeBicubic"(%1, %0) {T = f32, align_corners = false, half_pixel_centers = true} : (tensor<1x1x1x1xf32>, tensor<2xi32>) -> tensor<1x1x1x1xf32>
    return %5, %3, %6 : tensor<1x1x1xi64>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

