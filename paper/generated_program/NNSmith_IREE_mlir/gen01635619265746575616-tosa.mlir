module {
  func.func @main(%arg0: tensor<1x1x1x2x1xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x2xi1> {iree.identifier = "Identity"}, tensor<1x1x1x2x1xf16> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 2, 4, 3]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<4.714840e+00> : tensor<1xf16>} : () -> tensor<1xf16>
    %2 = "tosa.reciprocal"(%1) : (tensor<1xf16>) -> tensor<1xf16>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 1, 1, 1]} : (tensor<1xf16>) -> tensor<1x1x1x1x1xf16>
    %4 = "tosa.mul"(%arg0, %3) {shift = 0 : i32} : (tensor<1x1x1x2x1xf16>, tensor<1x1x1x1x1xf16>) -> tensor<1x1x1x2x1xf16>
    %5 = "tosa.sub"(%4, %4) : (tensor<1x1x1x2x1xf16>, tensor<1x1x1x2x1xf16>) -> tensor<1x1x1x2x1xf16>
    %6 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<1x1x1x2x1xf16>) -> tensor<1x1x1x2xf16>
    %7 = "tosa.greater_equal"(%6, %6) : (tensor<1x1x1x2xf16>, tensor<1x1x1x2xf16>) -> tensor<1x1x1x2xi1>
    %8 = "tosa.logical_not"(%7) : (tensor<1x1x1x2xi1>) -> tensor<1x1x1x2xi1>
    %9 = "tosa.transpose"(%4, %0) : (tensor<1x1x1x2x1xf16>, tensor<5xi32>) -> tensor<1x1x1x1x2xi32>
    %10 = "tosa.reshape"(%9) {new_shape = [1, 2]} : (tensor<1x1x1x1x2xi32>) -> tensor<1x2xf16>
    %11 = "tosa.reduce_sum"(%10) {axis = 1 : i64} : (tensor<1x2xf16>) -> tensor<1x1xf16>
    %12 = "tosa.reshape"(%11) {new_shape = [1, 1, 1, 1]} : (tensor<1x1xf16>) -> tensor<1x1x1x1xf16>
    return %8, %5, %12 : tensor<1x1x1x2xi1>, tensor<1x1x1x2x1xf16>, tensor<1x1x1x1xf16>
  }
}

