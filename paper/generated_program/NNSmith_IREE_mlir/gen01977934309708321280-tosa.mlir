module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x5xf16> {iree.identifier = "Identity"}, tensor<1x1x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 2, 4, 3]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x1x1x1xf16>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf16>
    %4 = "tosa.transpose"(%3, %1) : (tensor<1x1x1x1xf16>, tensor<4xi32>) -> tensor<1x1x1x1xf16>
    %5 = "tosa.reshape"(%2) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1xf16>
    %6 = "tosa.cast"(%5) : (tensor<1x1x1xf16>) -> tensor<1x1x1xi64>
    %7 = "tosa.reshape"(%4) {new_shape = [1, 1]} : (tensor<1x1x1x1xf16>) -> tensor<1x1xf16>
    %8 = "tosa.concat"(%7, %7, %7, %7, %7) {axis = 1 : i64} : (tensor<1x1xf16>, tensor<1x1xf16>, tensor<1x1xf16>, tensor<1x1xf16>, tensor<1x1xf16>) -> tensor<1x5xf16>
    return %8, %6 : tensor<1x5xf16>, tensor<1x1x1xi64>
  }
}

