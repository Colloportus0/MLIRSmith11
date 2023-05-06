module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1xf32> {iree.identifier = "Identity"}, tensor<1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1x1xf32>} : () -> tensor<1x1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %2 = "tosa.add"(%arg0, %0) : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %3 = "tosa.floor"(%2) : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %4 = "tosa.transpose"(%3, %1) : (tensor<1x1x1x1x1xf32>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %5 = "tosa.reshape"(%3) {new_shape = [1]} : (tensor<1x1x1x1x1xf32>) -> tensor<1xf32>
    %6 = "tosa.reshape"(%4) {new_shape = [1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1xf32>
    return %5, %6 : tensor<1xf32>, tensor<1x1xf32>
  }
}

