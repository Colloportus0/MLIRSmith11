module {
  func.func @main(%arg0: tensor<1x1x1004x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1004x1x1xf16> {iree.identifier = "Identity"}, tensor<1x1x1004x1004xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<6.007810e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %1 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2 = "tosa.const"() {value = dense<[0, 2, 1, 3]> : tensor<4xi32>} : () -> tensor<4xi32>
    %3 = "tosa.add"(%arg0, %0) : (tensor<1x1x1004x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1004x1xf16>
    %4 = "tosa.transpose"(%3, %1) : (tensor<1x1x1004x1xf16>, tensor<4xi32>) -> tensor<1x1x1x1004xf16>
    %5 = "tosa.minimum"(%3, %4) : (tensor<1x1x1004x1xf16>, tensor<1x1x1x1004xf16>) -> tensor<1x1x1004x1004xf16>
    %6 = "tosa.greater"(%arg0, %5) : (tensor<1x1x1004x1xf16>, tensor<1x1x1004x1004xf16>) -> tensor<1x1x1004x1004xi1>
    %7 = "tosa.transpose"(%3, %2) : (tensor<1x1x1004x1xf16>, tensor<4xi32>) -> tensor<1x1004x1x1xf16>
    return %7, %6 : tensor<1x1004x1x1xf16>, tensor<1x1x1004x1004xi1>
  }
}

