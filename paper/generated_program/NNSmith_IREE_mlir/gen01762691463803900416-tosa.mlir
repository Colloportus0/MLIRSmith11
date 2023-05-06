module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<4.093660e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<4.16081333> : tensor<1xf32>} : () -> tensor<1xf32>
    %2 = "tosa.conv2d"(%arg0, %0, %1) {dilation = [1, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1xf32>) -> tensor<1x1x1x1xf32>
    %3 = "tosa.negate"(%2) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.abs"(%3) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.avg_pool2d"(%4) {kernel = [1, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %6 = "tosa.greater"(%2, %3) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xi1>
    return %5, %6 : tensor<1x1x1x1xf32>, tensor<1x1x1x1xi1>
  }
}

