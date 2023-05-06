module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<1> : tensor<2xi32>} : () -> tensor<2xi32>
    %1 = "tosa.floor"(%arg0) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tf.ResizeBicubic"(%1, %0) {T = f32, align_corners = false, half_pixel_centers = true} : (tensor<1x1x1x1xf32>, tensor<2xi32>) -> tensor<1x1x1x1xf32>
    %3 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xf32>
    return %3, %2 : tensor<1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

