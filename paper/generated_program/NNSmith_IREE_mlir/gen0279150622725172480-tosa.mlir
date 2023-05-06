module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<0.707106769> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<3.74091649> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %4 = "tosa.const"() {value = dense<6.72938728> : tensor<1xf32>} : () -> tensor<1xf32>
    %5 = "tosa.add"(%arg0, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %6 = "tosa.floor"(%5) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tosa.mul"(%arg0, %1) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %8 = "tf.Erf"(%7) {T = f32} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %9 = "tosa.add"(%8, %2) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %10 = "tosa.mul"(%arg0, %9) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %11 = "tosa.mul"(%10, %0) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %12 = "tosa.conv2d"(%arg0, %3, %4) {dilation = [1, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1xf32>) -> tensor<1x1x1x1xf32>
    return %6, %11, %12 : tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

