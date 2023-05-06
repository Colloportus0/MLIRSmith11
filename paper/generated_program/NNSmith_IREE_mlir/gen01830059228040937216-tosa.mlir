module {
  func.func @main(%arg0: tensor<1x1x2x2xi32> {iree.identifier = "inputs_0"}) -> (tensor<2x1x2x2xi1> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[6, 4]]], [[[4, 5]]]]> : tensor<2x1x1x2xi32>} : () -> tensor<2x1x1x2xi32>
    %1 = "tosa.sub"(%0, %arg0) : (tensor<2x1x1x2xi32>, tensor<1x1x2x2xi32>) -> tensor<2x1x2x2xi32>
    %2 = "tosa.equal"(%1, %arg0) : (tensor<2x1x2x2xi32>, tensor<1x1x2x2xi32>) -> tensor<2x1x2x2xi1>
    return %2 : tensor<2x1x2x2xi1>
  }
}

