module {
  func.func @main(%arg0: tensor<2x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<2x1xf32> {iree.identifier = "Identity"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5.31152296> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<-0.685957431> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.mul"(%arg0, %0) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %3 = "tosa.add"(%2, %1) : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %4 = "tosa.abs"(%3) : (tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %5 = "tosa.reshape"(%4) {new_shape = [2, 1]} : (tensor<2x1x1x1xf32>) -> tensor<2x1xf32>
    return %5, %4 : tensor<2x1xf32>, tensor<2x1x1x1xf32>
  }
}

