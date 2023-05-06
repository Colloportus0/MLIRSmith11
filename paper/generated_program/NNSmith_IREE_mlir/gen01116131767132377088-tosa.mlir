module {
  func.func @main(%arg0: tensor<1x1x1x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x2xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x2xf16> {iree.identifier = "inputs_2"}, %arg3: tensor<2x2x2x2xf16> {iree.identifier = "inputs_3"}) -> (tensor<2x4xf16> {iree.identifier = "Identity"}, tensor<2x2x1x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[4.980470e+00, 3.591800e+00]]]]> : tensor<1x1x1x2xf16>} : () -> tensor<1x1x1x2xf16>
    %1 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %2 = "tosa.concat"(%0, %arg2, %arg1, %arg0) {axis = 1 : i64} : (tensor<1x1x1x2xf16>, tensor<1x1x1x2xf16>, tensor<1x1x1x2xf16>, tensor<1x1x1x2xf16>) -> tensor<1x4x1x2xf16>
    %3 = "tosa.transpose"(%2, %1) : (tensor<1x4x1x2xf16>, tensor<4xi32>) -> tensor<1x2x4x1xf16>
    %4 = "tosa.reduce_min"(%2) {axis = 1 : i64} : (tensor<1x4x1x2xf16>) -> tensor<1x1x1x2xf16>
    %5 = "tosa.minimum"(%4, %arg3) : (tensor<1x1x1x2xf16>, tensor<2x2x2x2xf16>) -> tensor<2x2x2x2xf16>
    %6 = "tosa.slice"(%5) {size = [2, 2, 1, 2], start = [0, 0, 0, 0]} : (tensor<2x2x2x2xf16>) -> tensor<2x2x1x2xf16>
    %7 = "tosa.reshape"(%3) {new_shape = [2, 4]} : (tensor<1x2x4x1xf16>) -> tensor<2x4xf16>
    return %7, %6 : tensor<2x4xf16>, tensor<2x2x1x2xf16>
  }
}

