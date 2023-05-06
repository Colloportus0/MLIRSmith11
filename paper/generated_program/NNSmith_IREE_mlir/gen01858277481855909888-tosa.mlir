module {
  func.func @main(%arg0: tensor<1x1x1x2x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<?xf16> {iree.identifier = "inputs_2"}) -> (tensor<1x4x2x?xf16> {iree.identifier = "Identity"}, tensor<1x4x2x?xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 3, 4, 2]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<[[[[5.722650e+00], [4.238280e+00]]]]> : tensor<1x1x2x1xf16>} : () -> tensor<1x1x2x1xf16>
    %2 = "tosa.const"() {value = dense<[[[[4.843750e+00], [4.355470e+00]]]]> : tensor<1x1x2x1xf16>} : () -> tensor<1x1x2x1xf16>
    %3 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x1x2x1xf16>, tensor<5xi32>) -> tensor<1x1x2x1x1xi32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 2, 1]} : (tensor<1x1x2x1x1xi32>) -> tensor<1x1x2x1xf16>
    %5 = "tosa.concat"(%1, %2, %4, %arg1) {axis = 1 : i64} : (tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>, tensor<1x1x2x1xf16>) -> tensor<1x4x2x1xf16>
    %6 = "tosa.mul"(%arg2, %5) {shift = 0 : i32} : (tensor<?xf16>, tensor<1x4x2x1xf16>) -> tensor<1x4x2x?xf16>
    %7 = "tosa.reciprocal"(%6) : (tensor<1x4x2x?xf16>) -> tensor<1x4x2x?xf16>
    %8 = "tosa.mul"(%6, %7) {shift = 0 : i32} : (tensor<1x4x2x?xf16>, tensor<1x4x2x?xf16>) -> tensor<1x4x2x?xf16>
    return %6, %8 : tensor<1x4x2x?xf16>, tensor<1x4x2x?xf16>
  }
}

