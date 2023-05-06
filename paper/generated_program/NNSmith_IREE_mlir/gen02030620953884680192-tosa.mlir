module {
  func.func @main(%arg0: tensor<1x1x1x1x2xf16> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1x2xi32> {iree.identifier = "Identity"}, tensor<1x1x1x1x2xf16> {iree.identifier = "Identity_1"}, tensor<1x1x1x1x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 2, 3, 4, 1]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.cast"(%arg0) : (tensor<1x1x1x1x2xf16>) -> tensor<1x1x1x1x2xi32>
    %2 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x1x1x2xf16>, tensor<5xi32>) -> tensor<1x1x1x2x1xi32>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 1, 1, 2]} : (tensor<1x1x1x2x1xi32>) -> tensor<1x1x1x1x2xf16>
    %4 = "tosa.reciprocal"(%arg0) : (tensor<1x1x1x1x2xf16>) -> tensor<1x1x1x1x2xf16>
    %5 = "tosa.mul"(%3, %4) {shift = 0 : i32} : (tensor<1x1x1x1x2xf16>, tensor<1x1x1x1x2xf16>) -> tensor<1x1x1x1x2xf16>
    %6 = "tosa.add"(%arg0, %3) : (tensor<1x1x1x1x2xf16>, tensor<1x1x1x1x2xf16>) -> tensor<1x1x1x1x2xf16>
    return %1, %5, %6 : tensor<1x1x1x1x2xi32>, tensor<1x1x1x1x2xf16>, tensor<1x1x1x1x2xf16>
  }
}

