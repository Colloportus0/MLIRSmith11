module {
  func.func @main(%arg0: tensor<2x2xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x2x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<2x2xf32> {iree.identifier = "Identity"}, tensor<1x1x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<0> : tensor<1x1xi48>} : () -> tensor<1x1xi48>
    %1 = "tosa.const"() {value = dense<0.000000e+00> : tensor<2x2xf32>} : () -> tensor<2x2xf32>
    %2 = "tosa.const"() {value = dense<[[0, -1], [1, 0]]> : tensor<2x2xi48>} : () -> tensor<2x2xi48>
    %3 = "tosa.const"() {value = dense<2> : tensor<i48>} : () -> tensor<i48>
    %4 = "tosa.greater_equal"(%0, %2) : (tensor<1x1xi48>, tensor<2x2xi48>) -> tensor<2x2xi1>
    %5 = "tosa.negate"(%3) : (tensor<i48>) -> tensor<i64>
    %6 = "tosa.reshape"(%5) {new_shape = [1, 1]} : (tensor<i64>) -> tensor<1x1xi64>
    %7 = "tosa.greater_equal"(%2, %6) : (tensor<2x2xi48>, tensor<1x1xi64>) -> tensor<2x2xi1>
    %8 = "tosa.logical_and"(%4, %7) : (tensor<2x2xi1>, tensor<2x2xi1>) -> tensor<2x2xi1>
    %9 = "tosa.select"(%8, %arg0, %1) : (tensor<2x2xi1>, tensor<2x2xf32>, tensor<2x2xf32>) -> tensor<2x2xf32>
    %10 = "tosa.reshape"(%9) {new_shape = [1, 1, 2, 2]} : (tensor<2x2xf32>) -> tensor<1x1x2x2xf32>
    %11 = "tosa.minimum"(%10, %arg1) : (tensor<1x1x2x2xf32>, tensor<2x1x2x1xf32>) -> tensor<2x1x2x2xf32>
    %12 = "tosa.reshape"(%11) {new_shape = [2, 2, 2, 1]} : (tensor<2x1x2x2xf32>) -> tensor<2x2x2x1xf32>
    %13 = "tosa.resize"(%12) {mode = "BILINEAR", offset = [0, 0], offset_fp = [5.000000e-01 : f32, 5.000000e-01 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [2.000000e+00 : f32, 2.000000e+00 : f32]} : (tensor<2x2x2x1xf32>) -> tensor<2x1x1x1xf32>
    %14 = "tosa.argmax"(%13) {axis = 0 : i64} : (tensor<2x1x1x1xf32>) -> tensor<1x1x1xi64>
    %15 = "tosa.select"(%8, %9, %1) : (tensor<2x2xi1>, tensor<2x2xf32>, tensor<2x2xf32>) -> tensor<2x2xf32>
    return %15, %14 : tensor<2x2xf32>, tensor<1x1x1xi64>
  }
}

