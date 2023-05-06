module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xi1> {iree.identifier = "Identity"}, tensor<1x1x1x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x1x1x1xf32>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %2 = "tosa.reshape"(%1) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf32>
    %3 = "tosa.ceil"(%2) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.cast"(%3) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xi64>
    %5 = "tosa.abs"(%4) : (tensor<1x1x1x1xi64>) -> tensor<1x1x1x1xi64>
    %6 = "tosa.greater"(%3, %3) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xi1>
    return %6, %5 : tensor<1x1x1x1xi1>, tensor<1x1x1x1xi64>
  }
}

