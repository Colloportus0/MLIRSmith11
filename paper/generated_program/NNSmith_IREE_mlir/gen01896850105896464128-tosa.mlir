module {
  func.func @main(%arg0: tensor<2x2x2x2xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x2xf32> {iree.identifier = "inputs_1"}) -> (tensor<2x2x1xf32> {iree.identifier = "Identity"}, tensor<2x2x2x2xf32> {iree.identifier = "Identity_1"}, tensor<1x2x2x2xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[[[[-1.20499969, 1.62434363]]]]> : tensor<1x1x1x2xf32>} : () -> tensor<1x1x1x2xf32>
    %1 = "tosa.const"() {value = dense<[[[[4.77594233, 3.79242182]]]]> : tensor<1x1x1x2xf32>} : () -> tensor<1x1x1x2xf32>
    %2 = "tosa.const"() {value = dense<0.707106769> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %4 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %5 = "tosa.reshape"(%arg1) {new_shape = [1, 2, 1, 2]} : (tensor<2x1x2xf32>) -> tensor<1x2x1x2xf32>
    %6 = "tosa.mul"(%arg0, %1) {shift = 0 : i32} : (tensor<2x2x2x2xf32>, tensor<1x1x1x2xf32>) -> tensor<2x2x2x2xf32>
    %7 = "tosa.add"(%6, %0) : (tensor<2x2x2x2xf32>, tensor<1x1x1x2xf32>) -> tensor<2x2x2x2xf32>
    %8 = "tosa.reciprocal"(%5) : (tensor<1x2x1x2xf32>) -> tensor<1x2x1x2xf32>
    %9 = "tosa.mul"(%7, %8) {shift = 0 : i32} : (tensor<2x2x2x2xf32>, tensor<1x2x1x2xf32>) -> tensor<2x2x2x2xf32>
    %10 = "tosa.mul"(%9, %2) {shift = 0 : i32} : (tensor<2x2x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<2x2x2x2xf32>
    %11 = "tf.Erf"(%10) {T = f32} : (tensor<2x2x2x2xf32>) -> tensor<2x2x2x2xf32>
    %12 = "tosa.add"(%11, %3) : (tensor<2x2x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<2x2x2x2xf32>
    %13 = "tosa.mul"(%9, %12) {shift = 0 : i32} : (tensor<2x2x2x2xf32>, tensor<2x2x2x2xf32>) -> tensor<2x2x2x2xf32>
    %14 = "tosa.mul"(%13, %4) {shift = 0 : i32} : (tensor<2x2x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<2x2x2x2xf32>
    %15 = "tosa.reshape"(%arg1) {new_shape = [2, 2, 1]} : (tensor<2x1x2xf32>) -> tensor<2x2x1xf32>
    %16 = "tosa.slice"(%9) {size = [1, 2, 2, 2], start = [0, 0, 0, 0]} : (tensor<2x2x2x2xf32>) -> tensor<1x2x2x2xf32>
    return %15, %14, %16 : tensor<2x2x1xf32>, tensor<2x2x2x2xf32>, tensor<1x2x2x2xf32>
  }
}

