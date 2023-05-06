module {
  func.func @main(%arg0: tensor<1x1x1x1x2xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x1x2xi32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x2x1x1x2xi32> {iree.identifier = "inputs_2"}) -> (tensor<6x1x2x2x1xi32> {iree.identifier = "Identity"}, tensor<6x2x1x2xi32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<true> : tensor<1x1x1x1x1xi1>} : () -> tensor<1x1x1x1x1xi1>
    %1 = "tosa.const"() {value = dense<[[[[[6]]], [[[7]]]], [[[[5]]], [[[5]]]]]> : tensor<2x2x1x1x1xi32>} : () -> tensor<2x2x1x1x1xi32>
    %2 = "tosa.const"() {value = dense<[[[[[5, 3]]], [[[4, 5]]]]]> : tensor<1x2x1x1x2xi32>} : () -> tensor<1x2x1x1x2xi32>
    %3 = "tosa.const"() {value = dense<[[[[[4, 5]]], [[[6, 5]]]]]> : tensor<1x2x1x1x2xi32>} : () -> tensor<1x2x1x1x2xi32>
    %4 = "tosa.select"(%0, %arg0, %1) : (tensor<1x1x1x1x1xi1>, tensor<1x1x1x1x2xi32>, tensor<2x2x1x1x1xi32>) -> tensor<2x2x1x1x2xi32>
    %5 = "tosa.concat"(%arg2, %arg1, %2, %3, %4) {axis = 0 : i64} : (tensor<1x2x1x1x2xi32>, tensor<1x2x1x1x2xi32>, tensor<1x2x1x1x2xi32>, tensor<1x2x1x1x2xi32>, tensor<2x2x1x1x2xi32>) -> tensor<6x2x1x1x2xi32>
    %6 = "tosa.reshape"(%5) {new_shape = [6, 2, 1, 2]} : (tensor<6x2x1x1x2xi32>) -> tensor<6x2x1x2xi32>
    %7 = "tosa.reshape"(%5) {new_shape = [6, 1, 2, 2, 1]} : (tensor<6x2x1x1x2xi32>) -> tensor<6x1x2x2x1xi32>
    return %7, %6 : tensor<6x1x2x2x1xi32>, tensor<6x2x1x2xi32>
  }
}

