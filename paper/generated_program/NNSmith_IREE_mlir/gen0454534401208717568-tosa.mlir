module {
  func.func @main(%arg0: tensor<1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<1x2xf32> {iree.identifier = "Identity"}, tensor<1x2x1x2xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<0.00999999977> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<[[5.28698444, 5.29180431]]> : tensor<1x2xf32>} : () -> tensor<1x2xf32>
    %3 = "tosa.mul"(%arg1, %0) {shift = 0 : i32} : (tensor<1x2x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x2x1x1xf32>
    %4 = "tosa.greater_equal"(%arg1, %1) : (tensor<1x2x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x2x1x1xi1>
    %5 = "tosa.select"(%4, %arg1, %3) : (tensor<1x2x1x1xi1>, tensor<1x2x1x1xf32>, tensor<1x2x1x1xf32>) -> tensor<1x2x1x1xf32>
    %6 = "tosa.minimum"(%arg0, %2) : (tensor<1x1xf32>, tensor<1x2xf32>) -> tensor<1x2xf32>
    %7 = "tosa.reshape"(%6) {new_shape = [1, 1, 1, 2]} : (tensor<1x2xf32>) -> tensor<1x1x1x2xf32>
    %8 = "tosa.add"(%5, %7) : (tensor<1x2x1x1xf32>, tensor<1x1x1x2xf32>) -> tensor<1x2x1x2xf32>
    %9 = "tosa.reshape"(%6) {new_shape = [2, 1]} : (tensor<1x2xf32>) -> tensor<2x1xf32>
    %10 = "tosa.exp"(%9) : (tensor<2x1xf32>) -> tensor<2x1xf32>
    %11 = "tosa.reciprocal"(%10) : (tensor<2x1xf32>) -> tensor<2x1xf32>
    %12 = "tosa.mul"(%10, %11) {shift = 0 : i32} : (tensor<2x1xf32>, tensor<2x1xf32>) -> tensor<2x1xf32>
    %13 = "tosa.reshape"(%12) {new_shape = [1, 2]} : (tensor<2x1xf32>) -> tensor<1x2xf32>
    return %13, %8 : tensor<1x2xf32>, tensor<1x2x1x2xf32>
  }
}

