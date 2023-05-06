module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<0.707106769> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<[0, 2, 3, 4, 1]> : tensor<5xi32>} : () -> tensor<5xi32>
    %4 = "tosa.transpose"(%arg0, %3) : (tensor<1x1x1x1x1xf32>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf32>
    %6 = "tosa.mul"(%5, %0) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tf.Erf"(%6) {T = f32} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %8 = "tosa.add"(%7, %1) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %9 = "tosa.mul"(%5, %8) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %10 = "tosa.mul"(%9, %2) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %11 = "tosa.abs"(%10) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %12 = "tf.Atan"(%5) {T = f32} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %12, %11 : tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

