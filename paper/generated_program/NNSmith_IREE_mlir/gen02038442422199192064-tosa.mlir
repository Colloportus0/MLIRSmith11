module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<0.00999999977> : tensor<1x1x1x1x1xf32>} : () -> tensor<1x1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<0.000000e+00> : tensor<1x1x1x1x1xf32>} : () -> tensor<1x1x1x1x1xf32>
    %2 = "tosa.mul"(%arg0, %0) {shift = 0 : i32} : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %3 = "tosa.greater_equal"(%arg0, %1) : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xi1>
    %4 = "tosa.select"(%3, %arg0, %2) : (tensor<1x1x1x1x1xi1>, tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %6 = "tosa.clamp"(%5) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tosa.exp"(%5) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %8 = "tosa.reciprocal"(%7) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %9 = "tosa.mul"(%7, %8) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %9, %6 : tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

