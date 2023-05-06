module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.clamp"(%arg0) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.abs"(%1) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %3 = "tosa.add"(%1, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.floor"(%3) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.argmax"(%2) {axis = 0 : i64} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xi64>
    return %4, %5 : tensor<1x1x1x1xf32>, tensor<1x1x1xi64>
  }
}

