module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}, tensor<1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<1.500000e+00> : tensor<1x1x1x1x1xf32>} : () -> tensor<1x1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<-1.500000e+00> : tensor<1x1x1x1x1xf32>} : () -> tensor<1x1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<[0, 1, 3, 4, 2]> : tensor<5xi32>} : () -> tensor<5xi32>
    %3 = "tosa.transpose"(%arg0, %2) : (tensor<1x1x1x1x1xf32>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1xf32>
    %5 = "tosa.minimum"(%arg0, %0) : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %6 = "tosa.maximum"(%5, %1) : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    return %6, %arg0, %4 : tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>, tensor<1x1x1xf32>
  }
}

