module {
  func.func @main(%arg0: tensor<?xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x?xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<5.48705387> : tensor<1x1x1x1x1xf32>} : () -> tensor<1x1x1x1x1xf32>
    %1 = "tosa.minimum"(%arg0, %0) : (tensor<?xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x?xf32>
    %2 = "tosa.reshape"(%1) {new_shape = [1, 1, 1, -1]} : (tensor<1x1x1x1x?xf32>) -> tensor<1x1x1x?xf32>
    return %2 : tensor<1x1x1x?xf32>
  }
}

