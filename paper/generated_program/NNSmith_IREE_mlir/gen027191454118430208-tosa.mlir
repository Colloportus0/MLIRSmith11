module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<1> : tensor<2xi32>} : () -> tensor<2xi32>
    %1 = "tosa.abs"(%arg0) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.reciprocal"(%1) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %3 = "tosa.mul"(%1, %2) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xf32>
    %5 = "tf.ResizeBicubic"(%3, %0) {T = f32, align_corners = false, half_pixel_centers = true} : (tensor<1x1x1x1xf32>, tensor<2xi32>) -> tensor<1x1x1x1xf32>
    %6 = "tosa.reshape"(%3) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xf32>
    return %4, %6, %5 : tensor<1x1x1xf32>, tensor<1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

