module {
  func.func @main(%arg0: tensor<2x2x1x2xi32> {iree.identifier = "inputs_0"}) -> (tensor<2x1x2x2xi32> {iree.identifier = "Identity"}, tensor<2x1x2x2xi32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.const"() {value = dense<[[[[5, 6]]]]> : tensor<1x1x1x2xi32>} : () -> tensor<1x1x1x2xi32>
    %2 = "tosa.transpose"(%arg0, %0) : (tensor<2x2x1x2xi32>, tensor<4xi32>) -> tensor<2x1x2x2xi32>
    %3 = "tosa.add"(%2, %1) : (tensor<2x1x2x2xi32>, tensor<1x1x1x2xi32>) -> tensor<2x1x2x2xi32>
    %4 = "tosa.negate"(%3) : (tensor<2x1x2x2xi32>) -> tensor<2x1x2x2xi32>
    return %3, %4 : tensor<2x1x2x2xi32>, tensor<2x1x2x2xi32>
  }
}

