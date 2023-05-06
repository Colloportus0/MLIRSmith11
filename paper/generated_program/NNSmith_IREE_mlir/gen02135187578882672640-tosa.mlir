module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x1x1x1xf32>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %2 = "tosa.reshape"(%1) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf32>
    %3 = "tf.Tan"(%2) {T = f32} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.minimum"(%3, %3) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.clamp"(%4) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %3, %5 : tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

