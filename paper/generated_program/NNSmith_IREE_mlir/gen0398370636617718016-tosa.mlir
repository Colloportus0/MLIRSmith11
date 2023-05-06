module {
  func.func @main(%arg0: tensor<2x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<2x1x1xf32> {iree.identifier = "Identity"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<5.672050e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<5.20046616> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tf.Atan"(%arg0) {T = f32} : (tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %3 = "tosa.sigmoid"(%2) : (tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %4 = "tosa.reshape"(%3) {new_shape = [2, 1, 1]} : (tensor<2x1x1x1xf32>) -> tensor<2x1x1xf32>
    %5 = "tosa.mul"(%3, %0) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %6 = "tosa.add"(%5, %1) : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    return %4, %6, %3 : tensor<2x1x1xf32>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>
  }
}

