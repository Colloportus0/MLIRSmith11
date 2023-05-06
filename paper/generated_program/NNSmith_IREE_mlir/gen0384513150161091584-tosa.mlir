module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1xf32> {iree.identifier = "Identity"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<2x1x1x1xi1> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<0.00999999977> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.ceil"(%arg0) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %3 = "tosa.concat"(%2, %arg1) {axis = 0 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %4 = "tosa.greater"(%3, %3) : (tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xi1>
    %5 = "tosa.mul"(%3, %0) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %6 = "tosa.greater_equal"(%3, %1) : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xi1>
    %7 = "tosa.select"(%6, %3, %5) : (tensor<2x1x1x1xi1>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %8 = "tosa.reshape"(%2) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xf32>
    return %8, %7, %4 : tensor<1x1x1xf32>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xi1>
  }
}

