module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1x1xi32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_1"}, tensor<1x1x1xi64> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 2, 4, 3]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<[0, 1, 3, 2, 4]> : tensor<5xi32>} : () -> tensor<5xi32>
    %2 = "tosa.const"() {value = dense<3> : tensor<i32>} : () -> tensor<i32>
    %3 = "tosa.transpose"(%arg0, %1) : (tensor<1x1x1x1x1xf16>, tensor<5xi32>) -> tensor<1x1x1x1x1xf16>
    %4 = "tosa.cast"(%3) : (tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x1x1xi32>
    %5 = "tosa.transpose"(%3, %0) : (tensor<1x1x1x1x1xf16>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %6 = "tosa.reshape"(%5) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf16>
    %7 = "tosa.abs"(%6) : (tensor<1x1x1x1xf16>) -> tensor<1x1x1x1xf16>
    %8 = "tf.ArgMin"(%6, %2) {T = f16, Tidx = i32, output_type = i64} : (tensor<1x1x1x1xf16>, tensor<i32>) -> tensor<1x1x1xi64>
    return %4, %7, %8 : tensor<1x1x1x1x1xi32>, tensor<1x1x1x1xf16>, tensor<1x1x1xi64>
  }
}

