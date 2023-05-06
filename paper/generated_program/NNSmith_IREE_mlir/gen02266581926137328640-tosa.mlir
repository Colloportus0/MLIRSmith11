module {
  func.func @main(%arg0: tensor<?xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x2x1xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<6.05889702> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<?xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.add"(%1, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    return %2 : tensor<1x1x2x1xf32>
  }
}

