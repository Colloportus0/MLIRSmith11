module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<0.00999999977> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<1> : tensor<2xi32>} : () -> tensor<2xi32>
    %3 = "tosa.mul"(%arg0, %0) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.greater_equal"(%arg0, %1) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xi1>
    %5 = "tosa.select"(%4, %arg0, %3) : (tensor<1x1x1x1xi1>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %6 = "tf.Atan"(%5) {T = f32} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tosa.maximum"(%6, %6) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %8 = "tosa.ceil"(%7) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %9 = "tf.ResizeBicubic"(%7, %2) {T = f32, align_corners = false, half_pixel_centers = true} : (tensor<1x1x1x1xf32>, tensor<2xi32>) -> tensor<1x1x1x1xf32>
    return %8, %9 : tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

