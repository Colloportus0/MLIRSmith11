module {
  func.func @main(%arg0: tensor<1x2x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x2x1x1xf32> {iree.identifier = "Identity"}, tensor<1x2x2x1xi1> {iree.identifier = "Identity_1"}, tensor<1x2x2x1xi1> {iree.identifier = "Identity_2"}, tensor<1x2x2x1xf32> {iree.identifier = "Identity_3"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<[[0, 0], [1, 1], [1, 1], [0, 0]]> : tensor<4x2xi32>} : () -> tensor<4x2xi32>
    %2 = "tosa.const"() {value = dense<0xFF800000> : tensor<f32>} : () -> tensor<f32>
    %3 = "tosa.add"(%arg0, %0) : (tensor<1x2x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x2x1x1xf32>
    %4 = "tosa.floor"(%3) : (tensor<1x2x1x1xf32>) -> tensor<1x2x1x1xf32>
    %5 = "tosa.pad"(%arg0, %1, %2) : (tensor<1x2x1x1xf32>, tensor<4x2xi32>, tensor<f32>) -> tensor<1x4x3x1xf32>
    %6 = "tosa.max_pool2d"(%5) {kernel = [4, 2], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x4x3x1xf32>) -> tensor<1x1x2x1xf32>
    %7 = "tosa.maximum"(%arg0, %6) : (tensor<1x2x1x1xf32>, tensor<1x1x2x1xf32>) -> tensor<1x2x2x1xf32>
    %8 = "tosa.greater"(%arg0, %6) : (tensor<1x2x1x1xf32>, tensor<1x1x2x1xf32>) -> tensor<1x2x2x1xi1>
    %9 = "tosa.greater"(%6, %arg0) : (tensor<1x1x2x1xf32>, tensor<1x2x1x1xf32>) -> tensor<1x2x2x1xi1>
    return %4, %9, %8, %7 : tensor<1x2x1x1xf32>, tensor<1x2x2x1xi1>, tensor<1x2x2x1xi1>, tensor<1x2x2x1xf32>
  }
}

