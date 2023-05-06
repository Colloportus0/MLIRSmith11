module {
  func.func @main(%arg0: tensor<1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x2x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x2x1xf32> {iree.identifier = "Identity"}, tensor<1x1x2x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<[0, 1, 3, 4, 2]> : tensor<5xi32>} : () -> tensor<5xi32>
    %2 = "tosa.negate"(%arg1) : (tensor<1x1x1x2x1xf32>) -> tensor<1x1x1x2x1xf32>
    %3 = "tosa.transpose"(%arg1, %1) : (tensor<1x1x1x2x1xf32>, tensor<5xi32>) -> tensor<1x1x2x1x1xi32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 2, 1]} : (tensor<1x1x2x1x1xi32>) -> tensor<1x1x2x1xf32>
    %5 = "tosa.add"(%4, %0) : (tensor<1x1x2x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x2x1xf32>
    %6 = "tosa.floor"(%5) : (tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    %7 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1xf32>) -> tensor<1x1x1x1xf32>
    %8 = "tosa.maximum"(%6, %7) : (tensor<1x1x2x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x2x1xf32>
    return %2, %8 : tensor<1x1x1x2x1xf32>, tensor<1x1x2x1xf32>
  }
}

