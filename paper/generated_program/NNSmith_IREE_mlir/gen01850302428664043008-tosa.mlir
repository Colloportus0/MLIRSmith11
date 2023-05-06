module {
  func.func @main(%arg0: tensor<1x1x2x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x2x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x2x1xf32> {iree.identifier = "inputs_2"}) -> (tensor<5x2x2x1xi1> {iree.identifier = "Identity"}, tensor<5x1x2x1xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1xf32>} : () -> tensor<1x1x1xf32>
    %1 = "tosa.const"() {value = dense<[[[[5.40912056], [4.66335106]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %2 = "tosa.concat"(%arg2, %arg1, %1, %arg0) {axis = 0 : i64} : (tensor<1x1x2x1xf32>, tensor<2x1x2x1xf32>, tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>) -> tensor<5x1x2x1xf32>
    %3 = "tosa.ceil"(%2) : (tensor<5x1x2x1xf32>) -> tensor<5x1x2x1xf32>
    %4 = "tosa.greater"(%3, %arg2) : (tensor<5x1x2x1xf32>, tensor<1x1x2x1xf32>) -> tensor<5x1x2x1xi1>
    %5 = "tosa.reduce_sum"(%arg1) {axis = 2 : i64} : (tensor<2x1x2x1xf32>) -> tensor<2x1x1x1xf32>
    %6 = "tosa.reshape"(%5) {new_shape = [2, 1, 1]} : (tensor<2x1x1x1xf32>) -> tensor<2x1x1xf32>
    %7 = "tosa.mul"(%6, %0) {shift = 0 : i32} : (tensor<2x1x1xf32>, tensor<1x1x1xf32>) -> tensor<2x1x1xf32>
    %8 = "tosa.reshape"(%7) {new_shape = [1, 2, 1, 1]} : (tensor<2x1x1xf32>) -> tensor<1x2x1x1xf32>
    %9 = "tosa.greater"(%8, %2) : (tensor<1x2x1x1xf32>, tensor<5x1x2x1xf32>) -> tensor<5x2x2x1xi1>
    return %9, %4 : tensor<5x2x2x1xi1>, tensor<5x1x2x1xi1>
  }
}

