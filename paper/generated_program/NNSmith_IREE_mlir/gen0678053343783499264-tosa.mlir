module {
  func.func @main(%arg0: tensor<1x2xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x2x2xi1> {iree.identifier = "inputs_1"}) -> (tensor<1x1xf32> {iree.identifier = "Identity"}, tensor<2x1x2x2xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<0.00999999977> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<[[5.06169128, 3.81059265]]> : tensor<1x2xf32>} : () -> tensor<1x2xf32>
    %3 = "tosa.const"() {value = dense<4.91146564> : tensor<1xf32>} : () -> tensor<1xf32>
    %4 = "tosa.const"() {value = dense<[[[[5.6562748], [5.02728748]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %5 = "tosa.ceil"(%arg0) : (tensor<1x2xf32>) -> tensor<1x2xf32>
    %6 = "tosa.fully_connected"(%arg0, %2, %3) : (tensor<1x2xf32>, tensor<1x2xf32>, tensor<1xf32>) -> tensor<1x1xf32>
    %7 = "tosa.select"(%arg1, %4, %5) : (tensor<2x1x2x2xi1>, tensor<1x1x2x1xf32>, tensor<1x2xf32>) -> tensor<2x1x2x2xf32>
    %8 = "tosa.abs"(%7) : (tensor<2x1x2x2xf32>) -> tensor<2x1x2x2xf32>
    %9 = "tosa.mul"(%8, %0) {shift = 0 : i32} : (tensor<2x1x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x2x2xf32>
    %10 = "tosa.greater_equal"(%8, %1) : (tensor<2x1x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x2x2xi1>
    %11 = "tosa.select"(%10, %8, %9) : (tensor<2x1x2x2xi1>, tensor<2x1x2x2xf32>, tensor<2x1x2x2xf32>) -> tensor<2x1x2x2xf32>
    return %6, %11 : tensor<1x1xf32>, tensor<2x1x2x2xf32>
  }
}

