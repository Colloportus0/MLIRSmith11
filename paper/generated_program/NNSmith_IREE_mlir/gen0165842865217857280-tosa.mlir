module {
  func.func @main(%arg0: tensor<?xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x?xf16> {iree.identifier = "Identity"}, tensor<1x1x1x?xi32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<1> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.const"() {value = dense<-1> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %2 = "tosa.const"() {value = dense<6.429690e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %3 = "tosa.maximum"(%arg0, %2) : (tensor<?xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x?xf16>
    %4 = "tosa.cast"(%3) : (tensor<1x1x1x?xf16>) -> tensor<1x1x1x?xi32>
    %5 = "tosa.minimum"(%4, %0) : (tensor<1x1x1x?xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x?xi32>
    %6 = "tosa.maximum"(%5, %1) : (tensor<1x1x1x?xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x?xi32>
    %7 = "tosa.reshape"(%3) {new_shape = [1, 1, -1]} : (tensor<1x1x1x?xf16>) -> tensor<1x1x?xf16>
    return %7, %6 : tensor<1x1x?xf16>, tensor<1x1x1x?xi32>
  }
}

