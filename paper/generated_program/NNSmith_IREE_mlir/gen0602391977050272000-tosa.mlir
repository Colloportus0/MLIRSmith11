module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xi64> {iree.identifier = "Identity"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_1"}, tensor<1x1x1xi64> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 3, 4, 2]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<[0, 1, 3, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2 = "tosa.const"() {value = dense<3> : tensor<i32>} : () -> tensor<i32>
    %3 = "tosa.const"() {value = dense<2> : tensor<i32>} : () -> tensor<i32>
    %4 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x1x1x1xf16>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf16>
    %6 = "tosa.transpose"(%5, %1) : (tensor<1x1x1x1xf16>, tensor<4xi32>) -> tensor<1x1x1x1xf16>
    %7 = "tf.ArgMin"(%6, %2) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x1x1x1xf16>, tensor<i32>) -> tensor<1x1x1xi64>
    %8 = "tf.ArgMin"(%5, %3) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x1x1x1xf16>, tensor<i32>) -> tensor<1x1x1xi64>
    return %8, %5, %7 : tensor<1x1x1xi64>, tensor<1x1x1x1xf16>, tensor<1x1x1xi64>
  }
}

