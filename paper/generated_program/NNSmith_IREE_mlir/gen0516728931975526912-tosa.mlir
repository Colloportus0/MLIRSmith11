module {
  func.func @main(%arg0: tensor<1x1x1x2x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x2x1xf16> {iree.identifier = "inputs_2"}, %arg3: tensor<1x1x1x2x1xf16> {iree.identifier = "inputs_3"}) -> (tensor<1x1x6x2x1xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[[6.484380e+00], [4.378910e+00]]]]]> : tensor<1x1x1x2x1xf16>} : () -> tensor<1x1x1x2x1xf16>
    %1 = "tosa.const"() {value = dense<[[[[[6.476560e+00], [6.207030e+00]]]]]> : tensor<1x1x1x2x1xf16>} : () -> tensor<1x1x1x2x1xf16>
    %2 = "tosa.const"() {value = dense<[[[[[5.175780e+00], [4.121090e+00]]]]]> : tensor<1x1x1x2x1xf16>} : () -> tensor<1x1x1x2x1xf16>
    %3 = "tosa.concat"(%0, %1, %arg0) {axis = 2 : i64} : (tensor<1x1x1x2x1xf16>, tensor<1x1x1x2x1xf16>, tensor<1x1x1x2x1xf16>) -> tensor<1x1x3x2x1xf16>
    %4 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, 1, 1]} : (tensor<1x1xf16>) -> tensor<1x1x1x1x1xf16>
    %5 = "tosa.add"(%3, %4) : (tensor<1x1x3x2x1xf16>, tensor<1x1x1x1x1xf16>) -> tensor<1x1x3x2x1xf16>
    %6 = "tosa.concat"(%arg3, %arg2, %2, %5) {axis = 2 : i64} : (tensor<1x1x1x2x1xf16>, tensor<1x1x1x2x1xf16>, tensor<1x1x1x2x1xf16>, tensor<1x1x3x2x1xf16>) -> tensor<1x1x6x2x1xf16>
    %7 = "tosa.sub"(%6, %6) : (tensor<1x1x6x2x1xf16>, tensor<1x1x6x2x1xf16>) -> tensor<1x1x6x2x1xf16>
    return %7 : tensor<1x1x6x2x1xf16>
  }
}

