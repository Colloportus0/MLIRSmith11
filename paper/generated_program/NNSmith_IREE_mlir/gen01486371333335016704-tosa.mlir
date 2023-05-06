module {
  func.func @main(%arg0: tensor<2x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<2x1x1x1xf32> {iree.identifier = "Identity"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<6.41188669> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<-2.92459249> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.mul"(%arg0, %0) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %3 = "tosa.add"(%2, %1) : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 1, 2]} : (tensor<2x1x1x1xf32>) -> tensor<1x1x1x2xf32>
    %5 = "tosa.exp"(%4) : (tensor<1x1x1x2xf32>) -> tensor<1x1x1x2xf32>
    %6 = "tosa.reduce_sum"(%5) {axis = 3 : i64} : (tensor<1x1x1x2xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tosa.reciprocal"(%6) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %8 = "tosa.mul"(%5, %7) {shift = 0 : i32} : (tensor<1x1x1x2xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x2xf32>
    %9 = "tosa.reshape"(%8) {new_shape = [2, 1, 1, 1]} : (tensor<1x1x1x2xf32>) -> tensor<2x1x1x1xf32>
    %10 = "tosa.floor"(%9) : (tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    return %10, %9 : tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>
  }
}

