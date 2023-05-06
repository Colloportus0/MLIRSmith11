module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x3x1xf32> {iree.identifier = "Identity"}, tensor<1x1x3x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<0.707106769> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<6.84036636> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %4 = "tosa.const"() {value = dense<5.37835407> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %5 = "tosa.concat"(%arg0, %3, %4) {axis = 2 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x3x1xf32>
    %6 = "tosa.mul"(%5, %0) {shift = 0 : i32} : (tensor<1x1x3x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x3x1xf32>
    %7 = "tf.Erf"(%6) {T = f32} : (tensor<1x1x3x1xf32>) -> tensor<1x1x3x1xf32>
    %8 = "tosa.add"(%7, %1) : (tensor<1x1x3x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x3x1xf32>
    %9 = "tosa.mul"(%5, %8) {shift = 0 : i32} : (tensor<1x1x3x1xf32>, tensor<1x1x3x1xf32>) -> tensor<1x1x3x1xf32>
    %10 = "tosa.mul"(%9, %2) {shift = 0 : i32} : (tensor<1x1x3x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x3x1xf32>
    %11 = "tf.Atan"(%10) {T = f32} : (tensor<1x1x3x1xf32>) -> tensor<1x1x3x1xf32>
    %12 = "tosa.mul"(%10, %5) {shift = 0 : i32} : (tensor<1x1x3x1xf32>, tensor<1x1x3x1xf32>) -> tensor<1x1x3x1xf32>
    return %11, %12 : tensor<1x1x3x1xf32>, tensor<1x1x3x1xf32>
  }
}

