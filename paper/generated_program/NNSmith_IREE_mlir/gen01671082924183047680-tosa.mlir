module {
  func.func @main(%arg0: tensor<2x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<2x1x1x1xf32> {iree.identifier = "Identity"}, tensor<2x2x1x2xf32> {iree.identifier = "Identity_1"}, tensor<2x2x1x1xf32> {iree.identifier = "Identity_2"}, tensor<2x2x1x1xi64> {iree.identifier = "Identity_3"}) {
    %0 = "tosa.const"() {value = dense<[[[[2.60174346, 2.80448246]]]]> : tensor<1x1x1x2xf32>} : () -> tensor<1x1x1x2xf32>
    %1 = "tosa.const"() {value = dense<[[[[2.66250825, 3.40892458]]]]> : tensor<1x1x1x2xf32>} : () -> tensor<1x1x1x2xf32>
    %2 = "tosa.const"() {value = dense<0.00999999977> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %4 = "tosa.const"() {value = dense<[[[[3.77944875]], [[4.09571695]]]]> : tensor<1x2x1x1xf32>} : () -> tensor<1x2x1x1xf32>
    %5 = "tosa.mul"(%arg0, %2) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %6 = "tosa.greater_equal"(%arg0, %3) : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xi1>
    %7 = "tosa.select"(%6, %arg0, %5) : (tensor<2x1x1x1xi1>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %8 = "tosa.sub"(%arg0, %4) : (tensor<2x1x1x1xf32>, tensor<1x2x1x1xf32>) -> tensor<2x2x1x1xf32>
    %9 = "tosa.mul"(%8, %1) {shift = 0 : i32} : (tensor<2x2x1x1xf32>, tensor<1x1x1x2xf32>) -> tensor<2x2x1x2xf32>
    %10 = "tosa.cast"(%8) : (tensor<2x2x1x1xf32>) -> tensor<2x2x1x1xi64>
    %11 = "tosa.negate"(%8) : (tensor<2x2x1x1xf32>) -> tensor<2x2x1x1xf32>
    %12 = "tosa.add"(%9, %0) : (tensor<2x2x1x2xf32>, tensor<1x1x1x2xf32>) -> tensor<2x2x1x2xf32>
    return %7, %12, %11, %10 : tensor<2x1x1x1xf32>, tensor<2x2x1x2xf32>, tensor<2x2x1x1xf32>, tensor<2x2x1x1xi64>
  }
}

