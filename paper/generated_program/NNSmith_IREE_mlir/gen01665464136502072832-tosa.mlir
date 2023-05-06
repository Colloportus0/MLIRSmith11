module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<2xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x2xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[4.183590e+00, 6.691400e+00]]> : tensor<1x2xf16>} : () -> tensor<1x2xf16>
    %1 = "tosa.reshape"(%arg1) {new_shape = [1, 2]} : (tensor<2xf16>) -> tensor<1x2xf16>
    %2 = "tosa.maximum"(%1, %0) : (tensor<1x2xf16>, tensor<1x2xf16>) -> tensor<1x2xf16>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 1, 2]} : (tensor<1x2xf16>) -> tensor<1x1x1x2xf16>
    %4 = "tosa.sub"(%arg0, %3) : (tensor<1x1x1x1xf16>, tensor<1x1x1x2xf16>) -> tensor<1x1x1x2xf16>
    %5 = "tosa.sub"(%4, %4) : (tensor<1x1x1x2xf16>, tensor<1x1x1x2xf16>) -> tensor<1x1x1x2xf16>
    %6 = "tosa.add"(%4, %5) : (tensor<1x1x1x2xf16>, tensor<1x1x1x2xf16>) -> tensor<1x1x1x2xf16>
    return %6 : tensor<1x1x1x2xf16>
  }
}

