module {
  func.func @main(%arg0: tensor<?xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x2x2xf32> {iree.identifier = "inputs_1"}) -> (tensor<2x1x2x2xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<5.29715729> : tensor<1xf32>} : () -> tensor<1xf32>
    %1 = "tosa.const"() {value = dense<0.00999999977> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.minimum"(%arg0, %0) : (tensor<?xf32>, tensor<1xf32>) -> tensor<?xf32>
    %4 = "tosa.maximum"(%3, %arg1) : (tensor<?xf32>, tensor<2x1x2x2xf32>) -> tensor<2x1x2x2xf32>
    %5 = "tosa.abs"(%4) : (tensor<2x1x2x2xf32>) -> tensor<2x1x2x2xf32>
    %6 = "tosa.mul"(%5, %1) {shift = 0 : i32} : (tensor<2x1x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x2x2xf32>
    %7 = "tosa.greater_equal"(%5, %2) : (tensor<2x1x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x2x2xi1>
    %8 = "tosa.select"(%7, %5, %6) : (tensor<2x1x2x2xi1>, tensor<2x1x2x2xf32>, tensor<2x1x2x2xf32>) -> tensor<2x1x2x2xf32>
    return %8 : tensor<2x1x2x2xf32>
  }
}

