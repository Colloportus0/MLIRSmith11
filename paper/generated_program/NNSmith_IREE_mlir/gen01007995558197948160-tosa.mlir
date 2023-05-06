module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x3x1xf32> {iree.identifier = "Identity"}, tensor<1x1x3x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<0.707106769> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<0.00999999977> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %4 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %5 = "tosa.const"() {value = dense<6.5430994> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %6 = "tosa.const"() {value = dense<4.33922625> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %7 = "tosa.concat"(%arg0, %5, %6) {axis = 2 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x3x1xf32>
    %8 = "tosa.mul"(%7, %0) {shift = 0 : i32} : (tensor<1x1x3x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x3x1xf32>
    %9 = "tf.Erf"(%8) {T = f32} : (tensor<1x1x3x1xf32>) -> tensor<1x1x3x1xf32>
    %10 = "tosa.add"(%9, %1) : (tensor<1x1x3x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x3x1xf32>
    %11 = "tosa.mul"(%7, %10) {shift = 0 : i32} : (tensor<1x1x3x1xf32>, tensor<1x1x3x1xf32>) -> tensor<1x1x3x1xf32>
    %12 = "tosa.mul"(%11, %2) {shift = 0 : i32} : (tensor<1x1x3x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x3x1xf32>
    %13 = "tosa.mul"(%12, %3) {shift = 0 : i32} : (tensor<1x1x3x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x3x1xf32>
    %14 = "tosa.greater_equal"(%12, %4) : (tensor<1x1x3x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x3x1xi1>
    %15 = "tosa.select"(%14, %12, %13) : (tensor<1x1x3x1xi1>, tensor<1x1x3x1xf32>, tensor<1x1x3x1xf32>) -> tensor<1x1x3x1xf32>
    %16 = "tosa.clamp"(%12) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1x3x1xf32>) -> tensor<1x1x3x1xf32>
    return %15, %16 : tensor<1x1x3x1xf32>, tensor<1x1x3x1xf32>
  }
}

