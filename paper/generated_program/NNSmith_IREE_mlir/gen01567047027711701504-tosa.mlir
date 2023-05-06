module {
  func.func @main(%arg0: tensor<2x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x2x2x2xf32> {iree.identifier = "inputs_1"}) -> (tensor<2x2x2x2xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %1 = "tosa.transpose"(%arg1, %0) : (tensor<2x2x2x2xf32>, tensor<4xi32>) -> tensor<2x2x2x2xf32>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<2x1x1x1xf32>) -> tensor<1x1x1x2xf32>
    %3 = "tosa.reciprocal"(%2) : (tensor<1x1x1x2xf32>) -> tensor<1x1x1x2xf32>
    %4 = "tosa.mul"(%1, %3) {shift = 0 : i32} : (tensor<2x2x2x2xf32>, tensor<1x1x1x2xf32>) -> tensor<2x2x2x2xf32>
    %5 = "tosa.clamp"(%4) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<2x2x2x2xf32>) -> tensor<2x2x2x2xf32>
    %6 = "tosa.abs"(%5) : (tensor<2x2x2x2xf32>) -> tensor<2x2x2x2xf32>
    %7 = "tosa.add"(%6, %6) : (tensor<2x2x2x2xf32>, tensor<2x2x2x2xf32>) -> tensor<2x2x2x2xf32>
    return %7 : tensor<2x2x2x2xf32>
  }
}

