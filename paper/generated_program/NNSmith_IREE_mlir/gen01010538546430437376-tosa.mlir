module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<1x2x1x1xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<0.707106769> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.mul"(%arg0, %0) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tf.Erf"(%3) {T = f32} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.add"(%4, %1) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %6 = "tosa.mul"(%arg0, %5) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tosa.mul"(%6, %2) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %8 = "tosa.concat"(%arg1, %7) {axis = 1 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x2x1x1xf32>
    %9 = "tosa.avg_pool2d"(%8) {kernel = [1, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x2x1x1xf32>) -> tensor<1x2x1x1xf32>
    %10 = "tosa.negate"(%9) : (tensor<1x2x1x1xf32>) -> tensor<1x2x1x1xf32>
    %11 = "tosa.exp"(%10) : (tensor<1x2x1x1xf32>) -> tensor<1x2x1x1xf32>
    %12 = "tosa.reciprocal"(%11) : (tensor<1x2x1x1xf32>) -> tensor<1x2x1x1xf32>
    %13 = "tosa.mul"(%11, %12) {shift = 0 : i32} : (tensor<1x2x1x1xf32>, tensor<1x2x1x1xf32>) -> tensor<1x2x1x1xf32>
    return %13 : tensor<1x2x1x1xf32>
  }
}

