module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<2x1x1x1xf32> {iree.identifier = "Identity"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<2x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<0.00999999977> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<3.68054199> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.concat"(%arg0, %2) {axis = 0 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %4 = "tosa.mul"(%3, %0) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %5 = "tosa.greater_equal"(%3, %1) : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xi1>
    %6 = "tosa.select"(%5, %3, %4) : (tensor<2x1x1x1xi1>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %7 = "tosa.reciprocal"(%6) : (tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %8 = "tosa.mul"(%6, %7) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %9 = "tosa.reshape"(%6) {new_shape = [2, 1, 1]} : (tensor<2x1x1x1xf32>) -> tensor<2x1x1xf32>
    %10 = "tosa.reshape"(%3) {new_shape = [1, 1, 1, 2]} : (tensor<2x1x1x1xf32>) -> tensor<1x1x1x2xf32>
    %11 = "tosa.exp"(%10) : (tensor<1x1x1x2xf32>) -> tensor<1x1x1x2xf32>
    %12 = "tosa.reduce_sum"(%11) {axis = 3 : i64} : (tensor<1x1x1x2xf32>) -> tensor<1x1x1x1xf32>
    %13 = "tosa.reciprocal"(%12) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %14 = "tosa.mul"(%11, %13) {shift = 0 : i32} : (tensor<1x1x1x2xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x2xf32>
    %15 = "tosa.reshape"(%14) {new_shape = [2, 1, 1, 1]} : (tensor<1x1x1x2xf32>) -> tensor<2x1x1x1xf32>
    return %15, %8, %9 : tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>, tensor<2x1x1xf32>
  }
}

