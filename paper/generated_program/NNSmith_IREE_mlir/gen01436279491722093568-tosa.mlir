module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<0.707106769> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<6.31171465> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %4 = "tosa.const"() {value = dense<4.30036163> : tensor<1xf32>} : () -> tensor<1xf32>
    %5 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %6 = "tosa.sigmoid"(%5) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tosa.conv2d"(%6, %3, %4) {dilation = [1, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1xf32>) -> tensor<1x1x1x1xf32>
    %8 = "tosa.clamp"(%7) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %9 = "tosa.mul"(%8, %1) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %10 = "tf.Erf"(%9) {T = f32} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %11 = "tosa.add"(%10, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %12 = "tosa.mul"(%8, %11) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %13 = "tosa.mul"(%12, %2) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %13 : tensor<1x1x1x1xf32>
  }
}

