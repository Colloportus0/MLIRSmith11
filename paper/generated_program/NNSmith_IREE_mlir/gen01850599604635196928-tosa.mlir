module {
  func.func @main(%arg0: tensor<1x1x2x2xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x1x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<1x1x2x2xf32> {iree.identifier = "Identity"}, tensor<1x1x2x2xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<1.500000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<-1.500000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.minimum"(%arg0, %0) : (tensor<1x1x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x2x2xf32>
    %3 = "tosa.maximum"(%2, %1) : (tensor<1x1x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x2x2xf32>
    %4 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, 2]} : (tensor<2x1x1x1xf32>) -> tensor<1x1x1x2xf32>
    %5 = "tosa.reciprocal"(%4) : (tensor<1x1x1x2xf32>) -> tensor<1x1x1x2xf32>
    %6 = "tosa.mul"(%3, %5) {shift = 0 : i32} : (tensor<1x1x2x2xf32>, tensor<1x1x1x2xf32>) -> tensor<1x1x2x2xf32>
    %7 = "tosa.add"(%6, %6) : (tensor<1x1x2x2xf32>, tensor<1x1x2x2xf32>) -> tensor<1x1x2x2xf32>
    %8 = "tosa.minimum"(%3, %0) : (tensor<1x1x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x2x2xf32>
    %9 = "tosa.maximum"(%8, %1) : (tensor<1x1x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x2x2xf32>
    return %9, %7 : tensor<1x1x2x2xf32>, tensor<1x1x2x2xf32>
  }
}

