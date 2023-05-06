module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xi64> {iree.identifier = "Identity"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xi32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<1> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.const"() {value = dense<-1> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %3 = "tosa.cast"(%2) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xi32>
    %4 = "tosa.maximum"(%2, %2) : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %5 = "tosa.minimum"(%3, %0) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %6 = "tosa.maximum"(%5, %1) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %7 = "tosa.argmax"(%2) {axis = 2 : i64} : (tensor<1x1x1x1xf16>) -> tensor<1x1x1xi64>
    return %7, %4, %6 : tensor<1x1x1xi64>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xi32>
  }
}

