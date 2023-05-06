module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1x1xf32>} : () -> tensor<1x1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %2 = "tosa.add"(%arg0, %0) : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %3 = "tosa.floor"(%2) : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %4 = "tosa.exp"(%3) : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %5 = "tosa.reciprocal"(%4) : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %6 = "tosa.mul"(%4, %5) {shift = 0 : i32} : (tensor<1x1x1x1x1xf32>, tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %7 = "tf.Atan"(%6) {T = f32} : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1x1xf32>
    %8 = "tosa.transpose"(%6, %1) : (tensor<1x1x1x1x1xf32>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %9 = "tosa.reshape"(%8) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf32>
    return %7, %9 : tensor<1x1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

