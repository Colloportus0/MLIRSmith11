module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x3xf16> {iree.identifier = "Identity"}, tensor<1x1x1x3xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 3, 4, 1]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<4.277340e+00> : tensor<1x1x1x1x1xf16>} : () -> tensor<1x1x1x1x1xf16>
    %2 = "tosa.const"() {value = dense<5.773440e+00> : tensor<1x1x1x1x1xf16>} : () -> tensor<1x1x1x1x1xf16>
    %3 = "tosa.concat"(%arg0, %1, %2) {axis = 4 : i64} : (tensor<1x1x1x1x1xf16>, tensor<1x1x1x1x1xf16>, tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1x3xf16>
    %4 = "tosa.transpose"(%3, %0) : (tensor<1x1x1x1x3xf16>, tensor<5xi32>) -> tensor<1x1x1x3x1xi32>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 1, 1, 3]} : (tensor<1x1x1x3x1xi32>) -> tensor<1x1x1x3xf16>
    %6 = "tosa.sub"(%5, %5) : (tensor<1x1x1x3xf16>, tensor<1x1x1x3xf16>) -> tensor<1x1x1x3xf16>
    %7 = "tosa.transpose"(%3, %0) : (tensor<1x1x1x1x3xf16>, tensor<5xi32>) -> tensor<1x1x1x3x1xi32>
    %8 = "tosa.reshape"(%7) {new_shape = [1, 1, 1, 3]} : (tensor<1x1x1x3x1xi32>) -> tensor<1x1x1x3xf16>
    return %8, %6 : tensor<1x1x1x3xf16>, tensor<1x1x1x3xf16>
  }
}

