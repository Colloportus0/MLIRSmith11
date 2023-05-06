module {
  func.func @main(%arg0: tensor<2x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<2x1x1x1xf32> {iree.identifier = "Identity"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<0.00999999977> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<5.91139412> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<-1.93434882> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %4 = "tosa.resize"(%arg0) {mode = "BILINEAR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 0.000000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 1.000000e+00 : f32]} : (tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %5 = "tosa.mul"(%4, %0) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %6 = "tosa.greater_equal"(%4, %1) : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xi1>
    %7 = "tosa.select"(%6, %4, %5) : (tensor<2x1x1x1xi1>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %8 = "tf.Atan"(%7) {T = f32} : (tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %9 = "tosa.mul"(%7, %2) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %10 = "tosa.resize"(%7) {mode = "BILINEAR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 0.000000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 1.000000e+00 : f32]} : (tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %11 = "tosa.add"(%9, %3) : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    return %11, %10, %8 : tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>
  }
}

