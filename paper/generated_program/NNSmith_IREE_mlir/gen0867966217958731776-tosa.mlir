module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x4xf16> {iree.identifier = "Identity"}, tensor<1x1x1x1x4xf16> {iree.identifier = "Identity_1"}, tensor<1x1x1x4xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 2, 4, 3]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<[0, 1, 3, 4, 2]> : tensor<5xi32>} : () -> tensor<5xi32>
    %2 = "tosa.const"() {value = dense<4.464840e+00> : tensor<1x1x1x1x1xf16>} : () -> tensor<1x1x1x1x1xf16>
    %3 = "tosa.const"() {value = dense<5.617190e+00> : tensor<1x1x1x1x1xf16>} : () -> tensor<1x1x1x1x1xf16>
    %4 = "tosa.concat"(%arg1, %2, %arg0, %3) {axis = 4 : i64} : (tensor<1x1x1x1x1xf16>, tensor<1x1x1x1x1xf16>, tensor<1x1x1x1x1xf16>, tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1x4xf16>
    %5 = "tosa.minimum"(%4, %4) : (tensor<1x1x1x1x4xf16>, tensor<1x1x1x1x4xf16>) -> tensor<1x1x1x1x4xf16>
    %6 = "tosa.transpose"(%4, %1) : (tensor<1x1x1x1x4xf16>, tensor<5xi32>) -> tensor<1x1x1x4x1xi32>
    %7 = "tosa.reshape"(%6) {new_shape = [1, 1, 1, 4]} : (tensor<1x1x1x4x1xi32>) -> tensor<1x1x1x4xf16>
    %8 = "tosa.transpose"(%4, %0) : (tensor<1x1x1x1x4xf16>, tensor<5xi32>) -> tensor<1x1x1x4x1xi32>
    %9 = "tosa.reshape"(%8) {new_shape = [1, 1, 1, 4]} : (tensor<1x1x1x4x1xi32>) -> tensor<1x1x1x4xf16>
    return %7, %5, %9 : tensor<1x1x1x4xf16>, tensor<1x1x1x1x4xf16>, tensor<1x1x1x4xf16>
  }
}

