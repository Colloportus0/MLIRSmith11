module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xi32> {iree.identifier = "Identity"}, tensor<1x1x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<1> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.const"() {value = dense<-1> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %2 = "tosa.const"() {value = dense<2> : tensor<i32>} : () -> tensor<i32>
    %3 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xi32>) -> tensor<1x1x1xi32>
    %4 = "tosa.minimum"(%arg0, %0) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %5 = "tosa.maximum"(%4, %1) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %6 = "tosa.cast"(%5) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi64>
    %7 = "tf.ArgMin"(%6, %2) {T = i64, Tidx = i32, output_type = i64} : (tensor<1x1x1x1xi64>, tensor<i32>) -> tensor<1x1x1xi64>
    return %3, %7 : tensor<1x1x1xi32>, tensor<1x1x1xi64>
  }
}

