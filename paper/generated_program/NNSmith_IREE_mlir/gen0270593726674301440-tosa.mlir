module {
  func.func @main(%arg0: tensor<1x2x2x2xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1xi1> {iree.identifier = "inputs_1"}) -> (tensor<2x2x2x2xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[26.1732178, 21.4570065]]], [[[30.1972656, 19.3631344]]]]> : tensor<2x1x1x2xf32>} : () -> tensor<2x1x1x2xf32>
    %1 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, 1]} : (tensor<1xi1>) -> tensor<1x1x1x1xi1>
    %2 = "tosa.select"(%1, %0, %arg0) : (tensor<1x1x1x1xi1>, tensor<2x1x1x2xf32>, tensor<1x2x2x2xf32>) -> tensor<2x2x2x2xf32>
    return %2 : tensor<2x2x2x2xf32>
  }
}

