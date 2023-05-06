module {
  func.func @main(%arg0: tensor<1x1xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x1xi32> {iree.identifier = "inputs_1"}) -> (tensor<2x1x1x1xi32> {iree.identifier = "Identity"}, tensor<1x2x1x1xi32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<0> : tensor<1x1xi32>} : () -> tensor<1x1xi32>
    %1 = "tosa.const"() {value = dense<true> : tensor<1x1xi1>} : () -> tensor<1x1xi1>
    %2 = "tosa.const"() {value = dense<0> : tensor<1x1xi48>} : () -> tensor<1x1xi48>
    %3 = "tosa.const"() {value = dense<0> : tensor<i48>} : () -> tensor<i48>
    %4 = "tosa.negate"(%3) : (tensor<i48>) -> tensor<i64>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 1]} : (tensor<i64>) -> tensor<1x1xi64>
    %6 = "tosa.greater_equal"(%2, %5) : (tensor<1x1xi48>, tensor<1x1xi64>) -> tensor<1x1xi1>
    %7 = "tosa.logical_and"(%6, %1) : (tensor<1x1xi1>, tensor<1x1xi1>) -> tensor<1x1xi1>
    %8 = "tosa.select"(%7, %arg0, %0) : (tensor<1x1xi1>, tensor<1x1xi32>, tensor<1x1xi32>) -> tensor<1x1xi32>
    %9 = "tosa.reshape"(%8) {new_shape = [1, 1, 1, 1]} : (tensor<1x1xi32>) -> tensor<1x1x1x1xi32>
    %10 = "tosa.mul"(%arg1, %9) {shift = 0 : i32} : (tensor<1x2x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x2x1x1xi32>
    %11 = "tosa.reshape"(%arg1) {new_shape = [2, 1, 1, 1]} : (tensor<1x2x1x1xi32>) -> tensor<2x1x1x1xi32>
    return %11, %10 : tensor<2x1x1x1xi32>, tensor<1x2x1x1xi32>
  }
}

