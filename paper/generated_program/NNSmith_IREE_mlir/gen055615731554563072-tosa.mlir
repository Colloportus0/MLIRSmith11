module {
  func.func @main(%arg0: tensor<1x1x2x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x1xf32> {iree.identifier = "inputs_1"}) -> (tensor<1x1x2x1x1xf32> {iree.identifier = "Identity"}, tensor<1x2x2x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<1.500000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<-1.500000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<[0, 1, 2, 4, 3]> : tensor<5xi32>} : () -> tensor<5xi32>
    %3 = "tf.Tan"(%arg0) {T = f32} : (tensor<1x1x2x1x1xf32>) -> tensor<1x1x2x1x1xf32>
    %4 = "tosa.transpose"(%arg0, %2) : (tensor<1x1x2x1x1xf32>, tensor<5xi32>) -> tensor<1x1x2x1x1xi32>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 1, 2, 1]} : (tensor<1x1x2x1x1xi32>) -> tensor<1x1x2x1xf32>
    %6 = "tosa.reshape"(%arg1) {new_shape = [1, 2, 1, 1]} : (tensor<2x1x1xf32>) -> tensor<1x2x1x1xf32>
    %7 = "tosa.maximum"(%6, %5) : (tensor<1x2x1x1xf32>, tensor<1x1x2x1xf32>) -> tensor<1x2x2x1xf32>
    %8 = "tosa.minimum"(%7, %0) : (tensor<1x2x2x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x2x2x1xf32>
    %9 = "tosa.maximum"(%8, %1) : (tensor<1x2x2x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x2x2x1xf32>
    %10 = "tosa.negate"(%9) : (tensor<1x2x2x1xf32>) -> tensor<1x2x2x1xf32>
    return %3, %10 : tensor<1x1x2x1x1xf32>, tensor<1x2x2x1xf32>
  }
}

