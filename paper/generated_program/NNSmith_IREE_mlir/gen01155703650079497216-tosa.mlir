module {
  func.func @main(%arg0: tensor<1x1x1x2x2xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x2xf32> {iree.identifier = "inputs_1"}) -> (tensor<2x2xf32> {iree.identifier = "Identity"}, tensor<1x2x2x2xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<2> : tensor<1x1xi48>} : () -> tensor<1x1xi48>
    %1 = "tosa.const"() {value = dense<0.000000e+00> : tensor<2x2xf32>} : () -> tensor<2x2xf32>
    %2 = "tosa.const"() {value = dense<[0, 1, 3, 4, 2]> : tensor<5xi32>} : () -> tensor<5xi32>
    %3 = "tosa.const"() {value = dense<[[0, -1], [1, 0]]> : tensor<2x2xi48>} : () -> tensor<2x2xi48>
    %4 = "tosa.const"() {value = dense<0> : tensor<i48>} : () -> tensor<i48>
    %5 = "tosa.const"() {value = dense<[0, 3, 2, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %6 = "tosa.reshape"(%arg0) {new_shape = [1, 2, 1, 1, 2]} : (tensor<1x1x1x2x2xf32>) -> tensor<1x2x1x1x2xf32>
    %7 = "tosa.transpose"(%6, %2) : (tensor<1x2x1x1x2xf32>, tensor<5xi32>) -> tensor<1x2x1x2x1xi32>
    %8 = "tosa.reshape"(%7) {new_shape = [1, 2, 1, 2]} : (tensor<1x2x1x2x1xi32>) -> tensor<1x2x1x2xf32>
    %9 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 2, 2]} : (tensor<2x2xf32>) -> tensor<1x1x2x2xf32>
    %10 = "tosa.maximum"(%9, %8) : (tensor<1x1x2x2xf32>, tensor<1x2x1x2xf32>) -> tensor<1x2x2x2xf32>
    %11 = "tosa.greater_equal"(%0, %3) : (tensor<1x1xi48>, tensor<2x2xi48>) -> tensor<2x2xi1>
    %12 = "tosa.negate"(%4) : (tensor<i48>) -> tensor<i64>
    %13 = "tosa.reshape"(%12) {new_shape = [1, 1]} : (tensor<i64>) -> tensor<1x1xi64>
    %14 = "tosa.greater_equal"(%3, %13) : (tensor<2x2xi48>, tensor<1x1xi64>) -> tensor<2x2xi1>
    %15 = "tosa.logical_and"(%11, %14) : (tensor<2x2xi1>, tensor<2x2xi1>) -> tensor<2x2xi1>
    %16 = "tosa.select"(%15, %arg1, %1) : (tensor<2x2xi1>, tensor<2x2xf32>, tensor<2x2xf32>) -> tensor<2x2xf32>
    %17 = "tosa.transpose"(%10, %5) : (tensor<1x2x2x2xf32>, tensor<4xi32>) -> tensor<1x2x2x2xf32>
    return %16, %17 : tensor<2x2xf32>, tensor<1x2x2x2xf32>
  }
}

