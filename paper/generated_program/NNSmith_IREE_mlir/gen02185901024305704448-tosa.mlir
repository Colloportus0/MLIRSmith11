module {
  func.func @main(%arg0: tensor<2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x2xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[3.677730e+00, 4.417970e+00]> : tensor<2xf16>} : () -> tensor<2xf16>
    %1 = "tosa.sub"(%0, %arg0) : (tensor<2xf16>, tensor<2xf16>) -> tensor<2xf16>
    %2 = "tosa.reshape"(%1) {new_shape = [1, 1, 1, 2]} : (tensor<2xf16>) -> tensor<1x1x1x2xf16>
    %3 = "tosa.sub"(%arg1, %2) : (tensor<1x1x1x1xf16>, tensor<1x1x1x2xf16>) -> tensor<1x1x1x2xf16>
    %4 = "tosa.cast"(%3) : (tensor<1x1x1x2xf16>) -> tensor<1x1x1x2xf32>
    %5 = "tosa.avg_pool2d"(%4) {kernel = [1, 1], pad = [0, 0, 0, 0], stride = [2, 2]} : (tensor<1x1x1x2xf32>) -> tensor<1x1x1x2xf32>
    return %5 : tensor<1x1x1x2xf32>
  }
}

