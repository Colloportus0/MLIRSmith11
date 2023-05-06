module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<0.707106769> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<0.333333343> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %4 = "tosa.const"() {value = dense<1.64178145> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %5 = "tosa.const"() {value = dense<5.97745705> : tensor<1xf32>} : () -> tensor<1xf32>
    %6 = "tosa.mul"(%arg0, %0) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tf.Erf"(%6) {T = f32} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %8 = "tosa.add"(%7, %1) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %9 = "tosa.mul"(%arg0, %8) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %10 = "tosa.mul"(%9, %2) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %11 = "tosa.avg_pool2d"(%10) {kernel = [3, 3], pad = [1, 1, 1, 1], stride = [3, 3]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %12 = "tosa.mul"(%11, %3) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %13 = "tosa.mul"(%12, %3) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %14 = "tosa.conv2d"(%9, %4, %5) {dilation = [1, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1xf32>) -> tensor<1x1x1x1xf32>
    %15 = "tosa.reshape"(%14) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xf32>
    return %13, %15, %10 : tensor<1x1x1x1xf32>, tensor<1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

