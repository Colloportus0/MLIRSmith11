module {
  func.func @main(%arg0: tensor<2x1x1x2xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<2x1x1x2xf32> {iree.identifier = "Identity"}, tensor<1x1x2x1xf32> {iree.identifier = "Identity_1"}, tensor<2x4x1x2xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<0.00999999977> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<[[[[5.32160854, 4.74462509]]], [[[3.08068347, 6.10894394]]]]> : tensor<2x1x1x2xf32>} : () -> tensor<2x1x1x2xf32>
    %4 = "tosa.const"() {value = dense<[[[[3.04054666, 5.71444941]]], [[[4.1896987, 6.67524623]]]]> : tensor<2x1x1x2xf32>} : () -> tensor<2x1x1x2xf32>
    %5 = "tosa.const"() {value = dense<[[[[5.74930573, 4.49100685]]], [[[6.85948181, 5.29893684]]]]> : tensor<2x1x1x2xf32>} : () -> tensor<2x1x1x2xf32>
    %6 = "tosa.add"(%arg0, %0) : (tensor<2x1x1x2xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x2xf32>
    %7 = "tosa.floor"(%6) : (tensor<2x1x1x2xf32>) -> tensor<2x1x1x2xf32>
    %8 = "tosa.max_pool2d"(%arg1) {kernel = [1, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    %9 = "tosa.mul"(%arg1, %1) {shift = 0 : i32} : (tensor<1x1x2x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x2x1xf32>
    %10 = "tosa.greater_equal"(%arg1, %2) : (tensor<1x1x2x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x2x1xi1>
    %11 = "tosa.select"(%10, %arg1, %9) : (tensor<1x1x2x1xi1>, tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    %12 = "tosa.concat"(%3, %arg0, %4, %5) {axis = 1 : i64} : (tensor<2x1x1x2xf32>, tensor<2x1x1x2xf32>, tensor<2x1x1x2xf32>, tensor<2x1x1x2xf32>) -> tensor<2x4x1x2xf32>
    %13 = "tosa.reshape"(%8) {new_shape = [1, 1, 1, 2]} : (tensor<1x1x2x1xf32>) -> tensor<1x1x1x2xf32>
    %14 = "tosa.mul"(%12, %13) {shift = 0 : i32} : (tensor<2x4x1x2xf32>, tensor<1x1x1x2xf32>) -> tensor<2x4x1x2xf32>
    return %7, %11, %14 : tensor<2x1x1x2xf32>, tensor<1x1x2x1xf32>, tensor<2x4x1x2xf32>
  }
}

