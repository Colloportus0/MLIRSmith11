module {
  func.func @main(%arg0: tensor<1x1x2x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2x1xi32> {iree.identifier = "Identity"}, tensor<1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<1.500000e+00> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %1 = "tosa.minimum"(%arg0, %0) : (tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    %2 = "tosa.sigmoid"(%1) : (tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    %3 = "tosa.cast"(%1) : (tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xi32>
    %4 = "tosa.reduce_max"(%2) {axis = 2 : i64} : (tensor<1x1x2x1xf32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xf32>
    return %3, %5 : tensor<1x1x2x1xi32>, tensor<1x1x1xf32>
  }
}

