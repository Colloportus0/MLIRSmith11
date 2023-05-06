module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xi32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.add"(%arg0, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.floor"(%1) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %3 = "tosa.sub"(%2, %2) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.cast"(%3) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xi32>
    %5 = "tosa.negate"(%2) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %5, %4 : tensor<1x1x1x1xf32>, tensor<1x1x1x1xi32>
  }
}

