module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<0.00999999977> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<1.500000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<-1.500000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %4 = "tosa.mul"(%arg0, %0) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.greater_equal"(%arg0, %1) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xi1>
    %6 = "tosa.select"(%5, %arg0, %4) : (tensor<1x1x1x1xi1>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tosa.floor"(%6) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %8 = "tosa.exp"(%6) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %9 = "tosa.reciprocal"(%8) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %10 = "tosa.mul"(%8, %9) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %11 = "tosa.add"(%6, %7) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %12 = "tosa.minimum"(%arg0, %2) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %13 = "tosa.maximum"(%12, %3) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %13, %10, %11 : tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

