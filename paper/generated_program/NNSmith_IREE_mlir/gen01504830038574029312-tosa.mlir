module {
  func.func @main(%arg0: tensor<?xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x2x2xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x2xf32> {iree.identifier = "inputs_2"}) -> (tensor<2x1x2x2xf32> {iree.identifier = "Identity"}, tensor<2x1x2x2xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<0.707106769> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.minimum"(%arg1, %arg0) : (tensor<2x1x2x2xf32>, tensor<?xf32>) -> tensor<2x1x2x2xf32>
    %4 = "tosa.reshape"(%arg2) {new_shape = [1, 1, 1, 2]} : (tensor<1x2xf32>) -> tensor<1x1x1x2xf32>
    %5 = "tosa.mul"(%3, %0) {shift = 0 : i32} : (tensor<2x1x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x2x2xf32>
    %6 = "tf.Erf"(%5) {T = f32} : (tensor<2x1x2x2xf32>) -> tensor<2x1x2x2xf32>
    %7 = "tosa.add"(%6, %1) : (tensor<2x1x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x2x2xf32>
    %8 = "tosa.mul"(%3, %7) {shift = 0 : i32} : (tensor<2x1x2x2xf32>, tensor<2x1x2x2xf32>) -> tensor<2x1x2x2xf32>
    %9 = "tosa.mul"(%8, %2) {shift = 0 : i32} : (tensor<2x1x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x2x2xf32>
    %10 = "tosa.reciprocal"(%9) : (tensor<2x1x2x2xf32>) -> tensor<2x1x2x2xf32>
    %11 = "tosa.mul"(%4, %10) {shift = 0 : i32} : (tensor<1x1x1x2xf32>, tensor<2x1x2x2xf32>) -> tensor<2x1x2x2xf32>
    %12 = "tosa.clamp"(%11) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<2x1x2x2xf32>) -> tensor<2x1x2x2xf32>
    return %11, %12 : tensor<2x1x2x2xf32>, tensor<2x1x2x2xf32>
  }
}

