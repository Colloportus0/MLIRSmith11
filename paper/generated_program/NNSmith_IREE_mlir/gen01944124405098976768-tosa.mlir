module {
  func.func @main(%arg0: tensor<2x2x2x1xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2x1xi1> {iree.identifier = "inputs_1"}) -> (tensor<8xi32> {iree.identifier = "Identity"}, tensor<2x2x2xi32> {iree.identifier = "Identity_1"}, tensor<2x2x2x1xi64> {iree.identifier = "Identity_2"}, tensor<2x2x2x1xi32> {iree.identifier = "Identity_3"}) {
    %0 = "tosa.const"() {value = dense<6> : tensor<i32>} : () -> tensor<i32>
    %1 = "tosa.cast"(%arg0) : (tensor<2x2x2x1xi32>) -> tensor<2x2x2x1xi64>
    %2 = "tosa.reshape"(%arg0) {new_shape = [2, 2, 2]} : (tensor<2x2x2x1xi32>) -> tensor<2x2x2xi32>
    %3 = "tosa.select"(%arg1, %arg0, %0) : (tensor<1x1x2x1xi1>, tensor<2x2x2x1xi32>, tensor<i32>) -> tensor<2x2x2x1xi32>
    %4 = "tosa.reshape"(%arg0) {new_shape = [8]} : (tensor<2x2x2x1xi32>) -> tensor<8xi32>
    return %4, %2, %1, %3 : tensor<8xi32>, tensor<2x2x2xi32>, tensor<2x2x2x1xi64>, tensor<2x2x2x1xi32>
  }
}

