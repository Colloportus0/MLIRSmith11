module {
  func.func @main(%arg0: tensor<2x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<2x1x1x1xf32> {iree.identifier = "Identity"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<2x1x1xi64> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<0.707106769> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<1.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<5.9500885> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<-1.88024855> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %4 = "tosa.const"() {value = dense<0.00999999977> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %5 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %6 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %7 = "tosa.mul"(%arg0, %0) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %8 = "tf.Erf"(%7) {T = f32} : (tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %9 = "tosa.add"(%8, %1) : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %10 = "tosa.mul"(%arg0, %9) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %11 = "tosa.mul"(%arg0, %2) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %12 = "tosa.add"(%11, %3) : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %13 = "tosa.cast"(%12) : (tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xi64>
    %14 = "tosa.mul"(%12, %4) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %15 = "tosa.greater_equal"(%12, %5) : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xi1>
    %16 = "tosa.select"(%15, %12, %14) : (tensor<2x1x1x1xi1>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %17 = "tosa.reshape"(%13) {new_shape = [2, 1, 1]} : (tensor<2x1x1x1xi64>) -> tensor<2x1x1xi64>
    %18 = "tosa.mul"(%10, %6) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    return %18, %16, %17 : tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>, tensor<2x1x1xi64>
  }
}

