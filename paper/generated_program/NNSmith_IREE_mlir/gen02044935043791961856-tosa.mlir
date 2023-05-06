module {
  func.func @main(%arg0: tensor<1x2x1x2xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x2x2xi32> {iree.identifier = "Identity"}, tensor<1x2xi64> {iree.identifier = "Identity_1"}, tensor<1x2x2x2xi1> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<0> : tensor<1x1xi48>} : () -> tensor<1x1xi48>
    %1 = "tosa.const"() {value = dense<0> : tensor<1x2xi64>} : () -> tensor<1x2xi64>
    %2 = "tosa.const"() {value = dense<[[0, -1]]> : tensor<1x2xi48>} : () -> tensor<1x2xi48>
    %3 = "tosa.const"() {value = dense<2> : tensor<i48>} : () -> tensor<i48>
    %4 = "tosa.reshape"(%arg0) {new_shape = [1, 2, 2]} : (tensor<1x2x1x2xi32>) -> tensor<1x2x2xi32>
    %5 = "tosa.cast"(%4) : (tensor<1x2x2xi32>) -> tensor<1x2x2xi64>
    %6 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 2, 2]} : (tensor<1x2x1x2xi32>) -> tensor<1x1x2x2xi32>
    %7 = "tosa.greater"(%arg0, %6) : (tensor<1x2x1x2xi32>, tensor<1x1x2x2xi32>) -> tensor<1x2x2x2xi1>
    %8 = "tosa.reduce_sum"(%5) {axis = 2 : i64} : (tensor<1x2x2xi64>) -> tensor<1x2x1xi64>
    %9 = "tosa.reshape"(%8) {new_shape = [1, 2]} : (tensor<1x2x1xi64>) -> tensor<1x2xi64>
    %10 = "tosa.reshape"(%arg0) {new_shape = [1, 2, 2]} : (tensor<1x2x1x2xi32>) -> tensor<1x2x2xi32>
    %11 = "tosa.greater_equal"(%0, %2) : (tensor<1x1xi48>, tensor<1x2xi48>) -> tensor<1x2xi1>
    %12 = "tosa.negate"(%3) : (tensor<i48>) -> tensor<i64>
    %13 = "tosa.reshape"(%12) {new_shape = [1, 1]} : (tensor<i64>) -> tensor<1x1xi64>
    %14 = "tosa.greater_equal"(%2, %13) : (tensor<1x2xi48>, tensor<1x1xi64>) -> tensor<1x2xi1>
    %15 = "tosa.logical_and"(%11, %14) : (tensor<1x2xi1>, tensor<1x2xi1>) -> tensor<1x2xi1>
    %16 = "tosa.select"(%15, %9, %1) : (tensor<1x2xi1>, tensor<1x2xi64>, tensor<1x2xi64>) -> tensor<1x2xi64>
    return %10, %16, %7 : tensor<1x2x2xi32>, tensor<1x2xi64>, tensor<1x2x2x2xi1>
  }
}

