module {
  func.func @main(%arg0: tensor<1x2x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x2x1xi32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 2, 4, 3]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<[[[[5.671880e+00]], [[3.296880e+00]]]]> : tensor<1x2x1x1xf16>} : () -> tensor<1x2x1x1xf16>
    %2 = "tosa.transpose"(%arg0, %0) : (tensor<1x2x1x1x1xf16>, tensor<5xi32>) -> tensor<1x2x1x1x1xi32>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 2, 1]} : (tensor<1x2x1x1x1xi32>) -> tensor<1x1x2x1xf16>
    %4 = "tosa.sub"(%1, %3) : (tensor<1x2x1x1xf16>, tensor<1x1x2x1xf16>) -> tensor<1x2x2x1xf16>
    %5 = "tosa.argmax"(%4) {axis = 1 : i64} : (tensor<1x2x2x1xf16>) -> tensor<1x2x1xi64>
    %6 = "tosa.cast"(%5) : (tensor<1x2x1xi64>) -> tensor<1x2x1xi32>
    return %6 : tensor<1x2x1xi32>
  }
}

