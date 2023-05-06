module {
  func.func @main(%arg0: tensor<2x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<2x1x1x1xf32> {iree.identifier = "inputs_0"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_2"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_3"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<6.71907759> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<-2.17769051> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.sigmoid"(%arg0) : (tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %4 = "tosa.add"(%3, %0) : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %5 = "tosa.floor"(%4) : (tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %6 = "tosa.mul"(%arg0, %1) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %7 = "tosa.add"(%6, %2) : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    return %arg0, %7, %5, %3 : tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>
  }
}

