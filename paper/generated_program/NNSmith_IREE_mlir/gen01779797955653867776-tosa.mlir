module {
  func.func @main(%arg0: tensor<2xi32> {iree.identifier = "inputs_0"}) -> (tensor<2xi1> {iree.identifier = "Identity"}, tensor<1x1x1x2xi32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<6> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.cast"(%arg0) : (tensor<2xi32>) -> tensor<2xi64>
    %2 = "tosa.greater"(%1, %1) : (tensor<2xi64>, tensor<2xi64>) -> tensor<2xi1>
    %3 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<2xi32>) -> tensor<1x1x1x2xi32>
    %4 = "tosa.mul"(%3, %0) {shift = 0 : i32} : (tensor<1x1x1x2xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x2xi32>
    return %2, %4 : tensor<2xi1>, tensor<1x1x1x2xi32>
  }
}

