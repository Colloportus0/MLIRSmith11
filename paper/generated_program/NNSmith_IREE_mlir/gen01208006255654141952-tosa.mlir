module {
  func.func @main(%arg0: tensor<1x1x2x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<2x2x2xf32> {iree.identifier = "inputs_2"}) -> (tensor<5x2x2xf32> {iree.identifier = "Identity"}, tensor<5x2x2x6xf32> {iree.identifier = "Identity_1"}, tensor<5x2x2xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1xf32>} : () -> tensor<1x1x1xf32>
    %1 = "tosa.const"() {value = dense<[[[[4.46537113], [3.90703225]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %2 = "tosa.const"() {value = dense<[[[[3.00948048], [6.88613796]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %3 = "tosa.const"() {value = dense<[[[[6.36733055], [4.95258141]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %4 = "tosa.concat"(%arg1, %1, %2, %arg0, %3) {axis = 0 : i64} : (tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>) -> tensor<5x1x2x1xf32>
    %5 = "tosa.reshape"(%arg2) {new_shape = [1, 2, 2, 2]} : (tensor<2x2x2xf32>) -> tensor<1x2x2x2xf32>
    %6 = "tosa.sub"(%5, %4) : (tensor<1x2x2x2xf32>, tensor<5x1x2x1xf32>) -> tensor<5x2x2x2xf32>
    %7 = "tosa.reduce_sum"(%6) {axis = 2 : i64} : (tensor<5x2x2x2xf32>) -> tensor<5x2x1x2xf32>
    %8 = "tosa.reshape"(%7) {new_shape = [5, 2, 2]} : (tensor<5x2x1x2xf32>) -> tensor<5x2x2xf32>
    %9 = "tosa.mul"(%8, %0) {shift = 0 : i32} : (tensor<5x2x2xf32>, tensor<1x1x1xf32>) -> tensor<5x2x2xf32>
    %10 = "tosa.concat"(%6, %6, %6) {axis = 3 : i64} : (tensor<5x2x2x2xf32>, tensor<5x2x2x2xf32>, tensor<5x2x2x2xf32>) -> tensor<5x2x2x6xf32>
    return %9, %10, %9 : tensor<5x2x2xf32>, tensor<5x2x2x6xf32>, tensor<5x2x2xf32>
  }
}

