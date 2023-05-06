module {
  func.func @main(%arg0: tensor<1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xi64> {iree.identifier = "Identity"}, tensor<1x1x1xi64> {iree.identifier = "Identity_1"}, tensor<1x1x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<1> : tensor<1x1x1xi48>} : () -> tensor<1x1x1xi48>
    %1 = "tosa.const"() {value = dense<-1> : tensor<1x1x1xi48>} : () -> tensor<1x1x1xi48>
    %2 = "tosa.const"() {value = dense<2> : tensor<i32>} : () -> tensor<i32>
    %3 = "tosa.const"() {value = dense<0> : tensor<i32>} : () -> tensor<i32>
    %4 = "tf.ArgMin"(%arg0, %2) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x1x1x1xf16>, tensor<i32>) -> tensor<1x1x1xi64>
    %5 = "tf.ArgMin"(%arg0, %3) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x1x1x1xf16>, tensor<i32>) -> tensor<1x1x1xi64>
    %6 = "tosa.minimum"(%4, %0) : (tensor<1x1x1xi64>, tensor<1x1x1xi48>) -> tensor<1x1x1xi64>
    %7 = "tosa.maximum"(%6, %1) : (tensor<1x1x1xi64>, tensor<1x1x1xi48>) -> tensor<1x1x1xi64>
    return %7, %5, %5 : tensor<1x1x1xi64>, tensor<1x1x1xi64>, tensor<1x1x1xi64>
  }
}

