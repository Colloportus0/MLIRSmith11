module {
  func.func @main(%arg0: tensor<1x1x2x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1xf32> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<0.707106769> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<[[[[3.45001888], [5.93323993]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %4 = "tosa.const"() {value = dense<[[[[6.27891684], [6.43729734]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %5 = "tosa.const"() {value = dense<[[[[6.20196628], [3.57594967]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %6 = "tosa.const"() {value = dense<[[[[6.94129085], [4.09033298]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %7 = "tosa.const"() {value = dense<4.48569489> : tensor<1xf32>} : () -> tensor<1xf32>
    %8 = "tosa.concat"(%3, %4, %5, %arg0) {axis = 1 : i64} : (tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>) -> tensor<1x4x2x1xf32>
    %9 = "tosa.reciprocal"(%arg1) : (tensor<1xf32>) -> tensor<1xf32>
    %10 = "tosa.reshape"(%9) {new_shape = [1, 1, 1, 1]} : (tensor<1xf32>) -> tensor<1x1x1x1xf32>
    %11 = "tosa.mul"(%8, %10) {shift = 0 : i32} : (tensor<1x4x2x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x4x2x1xf32>
    %12 = "tosa.conv2d"(%11, %6, %7) {dilation = [1, 1], pad = [0, 0, 0, 0], stride = [4, 4]} : (tensor<1x4x2x1xf32>, tensor<1x1x2x1xf32>, tensor<1xf32>) -> tensor<1x1x1x1xf32>
    %13 = "tosa.mul"(%12, %0) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %14 = "tf.Erf"(%13) {T = f32} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %15 = "tosa.add"(%14, %1) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %16 = "tosa.mul"(%12, %15) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %17 = "tosa.mul"(%16, %2) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %17 : tensor<1x1x1x1xf32>
  }
}

