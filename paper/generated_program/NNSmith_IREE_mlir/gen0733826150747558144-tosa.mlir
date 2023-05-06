module {
  func.func @main(%arg0: tensor<1x1x2x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<5x1x2xf32> {iree.identifier = "Identity"}, tensor<5x1x2x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[3.50597262], [6.00675487]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %1 = "tosa.const"() {value = dense<[[[[3.0369935], [6.19942665]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %2 = "tosa.const"() {value = dense<[[[[6.03334379], [5.94994402]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %3 = "tosa.const"() {value = dense<[[[[3.57111788], [4.51924038]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %4 = "tosa.concat"(%0, %arg0, %1, %2, %3) {axis = 0 : i64} : (tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>) -> tensor<5x1x2x1xf32>
    %5 = "tosa.reciprocal"(%4) : (tensor<5x1x2x1xf32>) -> tensor<5x1x2x1xf32>
    %6 = "tosa.mul"(%arg1, %5) {shift = 0 : i32} : (tensor<1x1x2x1xf32>, tensor<5x1x2x1xf32>) -> tensor<5x1x2x1xf32>
    %7 = "tosa.reshape"(%4) {new_shape = [5, 1, 2]} : (tensor<5x1x2x1xf32>) -> tensor<5x1x2xf32>
    return %7, %6 : tensor<5x1x2xf32>, tensor<5x1x2x1xf32>
  }
}

