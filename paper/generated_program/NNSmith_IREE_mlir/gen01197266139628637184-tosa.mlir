module {
  func.func @main(%arg0: tensor<1x1xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x2x2x1xi32> {iree.identifier = "inputs_1"}, %arg2: tensor<2x2x1x2xi32> {iree.identifier = "inputs_2"}, %arg3: tensor<1x2x2x2xi32> {iree.identifier = "inputs_3"}) -> (tensor<1x1xi32> {iree.identifier = "Identity"}, tensor<4x2x2x2xi32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<0> : tensor<1x1xi32>} : () -> tensor<1x1xi32>
    %1 = "tosa.const"() {value = dense<true> : tensor<1x1xi1>} : () -> tensor<1x1xi1>
    %2 = "tosa.const"() {value = dense<0> : tensor<1x1xi48>} : () -> tensor<1x1xi48>
    %3 = "tosa.const"() {value = dense<0> : tensor<i48>} : () -> tensor<i48>
    %4 = "tosa.const"() {value = dense<true> : tensor<1x2x2x2xi1>} : () -> tensor<1x2x2x2xi1>
    %5 = "tosa.reshape"(%arg1) {new_shape = [1, 2, 2, 2]} : (tensor<1x2x2x2x1xi32>) -> tensor<1x2x2x2xi32>
    %6 = "tosa.negate"(%3) : (tensor<i48>) -> tensor<i64>
    %7 = "tosa.reshape"(%6) {new_shape = [1, 1]} : (tensor<i64>) -> tensor<1x1xi64>
    %8 = "tosa.greater_equal"(%2, %7) : (tensor<1x1xi48>, tensor<1x1xi64>) -> tensor<1x1xi1>
    %9 = "tosa.logical_and"(%8, %1) : (tensor<1x1xi1>, tensor<1x1xi1>) -> tensor<1x1xi1>
    %10 = "tosa.select"(%9, %arg0, %0) : (tensor<1x1xi1>, tensor<1x1xi32>, tensor<1x1xi32>) -> tensor<1x1xi32>
    %11 = "tosa.select"(%4, %arg2, %10) : (tensor<1x2x2x2xi1>, tensor<2x2x1x2xi32>, tensor<1x1xi32>) -> tensor<2x2x2x2xi32>
    %12 = "tosa.reshape"(%10) {new_shape = [1, 1, 1]} : (tensor<1x1xi32>) -> tensor<1x1x1xi32>
    %13 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1xi32>) -> tensor<1x1x1xi32>
    %14 = "tosa.matmul"(%12, %13) : (tensor<1x1x1xi32>, tensor<1x1x1xi32>) -> tensor<1x1x1xi32>
    %15 = "tosa.reshape"(%14) {new_shape = [1, 1]} : (tensor<1x1x1xi32>) -> tensor<1x1xi32>
    %16 = "tosa.concat"(%arg3, %11, %5) {axis = 0 : i64} : (tensor<1x2x2x2xi32>, tensor<2x2x2x2xi32>, tensor<1x2x2x2xi32>) -> tensor<4x2x2x2xi32>
    return %15, %16 : tensor<1x1xi32>, tensor<4x2x2x2xi32>
  }
}

