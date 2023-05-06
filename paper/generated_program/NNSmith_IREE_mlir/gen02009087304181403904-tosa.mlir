module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf32> {iree.identifier = "inputs_2"}) -> (tensor<1x1x1x1xi32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<[[[[5.26181126, 3.99628568, 6.72411919]]]]> : tensor<1x1x1x3xf32>} : () -> tensor<1x1x1x3xf32>
    %2 = "tosa.const"() {value = dense<5.756150e+00> : tensor<1xf32>} : () -> tensor<1xf32>
    %3 = "tosa.cast"(%arg2) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xi32>
    %4 = "tosa.add"(%arg0, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.floor"(%4) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %6 = "tosa.concat"(%arg2, %5, %arg1) {axis = 1 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x3x1x1xf32>
    %7 = "tosa.reshape"(%6) {new_shape = [1, 1, 1, 3]} : (tensor<1x3x1x1xf32>) -> tensor<1x1x1x3xf32>
    %8 = "tosa.conv2d"(%7, %1, %2) {dilation = [1, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x1x1x3xf32>, tensor<1x1x1x3xf32>, tensor<1xf32>) -> tensor<1x1x1x1xf32>
    return %3, %8 : tensor<1x1x1x1xi32>, tensor<1x1x1x1xf32>
  }
}

