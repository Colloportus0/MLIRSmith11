module {
  func.func @main(%arg0: tensor<1x1x2x1x2xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<1xi1> {iree.identifier = "inputs_1"}) -> (tensor<2x2x2x1xi1> {iree.identifier = "Identity"}, tensor<2x2x2x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[[6, 3]], [[7, 5]]], [[[4, 5]], [[3, 4]]]], [[[[4, 4]], [[5, 6]]], [[[5, 4]], [[4, 7]]]]]> : tensor<2x2x2x1x2xi32>} : () -> tensor<2x2x2x1x2xi32>
    %1 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, 1, 1]} : (tensor<1xi1>) -> tensor<1x1x1x1x1xi1>
    %2 = "tosa.select"(%1, %0, %arg0) : (tensor<1x1x1x1x1xi1>, tensor<2x2x2x1x2xi32>, tensor<1x1x2x1x2xi32>) -> tensor<2x2x2x1x2xi32>
    %3 = "tosa.negate"(%2) : (tensor<2x2x2x1x2xi32>) -> tensor<2x2x2x1x2xi32>
    %4 = "tosa.reshape"(%3) {new_shape = [8, 2]} : (tensor<2x2x2x1x2xi32>) -> tensor<8x2xi32>
    %5 = "tosa.reduce_max"(%4) {axis = 1 : i64} : (tensor<8x2xi32>) -> tensor<8x1xi32>
    %6 = "tosa.reshape"(%5) {new_shape = [2, 2, 2, 1]} : (tensor<8x1xi32>) -> tensor<2x2x2x1xi32>
    %7 = "tosa.cast"(%6) : (tensor<2x2x2x1xi32>) -> tensor<2x2x2x1xi64>
    %8 = "tosa.cast"(%6) : (tensor<2x2x2x1xi32>) -> tensor<2x2x2x1xi1>
    return %8, %7 : tensor<2x2x2x1xi1>, tensor<2x2x2x1xi64>
  }
}

