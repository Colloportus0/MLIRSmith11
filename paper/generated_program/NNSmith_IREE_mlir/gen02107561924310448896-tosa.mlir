module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 3, 4, 1]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<0.707106769> : tensor<1x1x1x1x1xf32>} : () -> tensor<1x1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x1x1x1x1xf32>} : () -> tensor<1x1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1x1xf32>} : () -> tensor<1x1x1x1x1xf32>
    %4 = "tosa.const"() {value = dense<1> : tensor<2xi32>} : () -> tensor<2xi32>
    %5 = "tosa.mul"(%arg0, %1) {shift = 0 : i32} : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %6 = "tf.Erf"(%5) {T = f32} : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %7 = "tosa.add"(%6, %2) : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %8 = "tosa.mul"(%arg0, %7) {shift = 0 : i32} : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %9 = "tosa.mul"(%8, %3) {shift = 0 : i32} : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %10 = "tosa.transpose"(%9, %0) : (tensor<1x1x1x1x1xf32>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %11 = "tosa.reshape"(%10) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf32>
    %12 = "tf.ResizeBicubic"(%11, %4) {T = f32, align_corners = false, half_pixel_centers = true} : (tensor<1x1x1x1xf32>, tensor<2xi32>) -> tensor<1x1x1x1xf32>
    return %9, %12 : tensor<1x1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

