module {
  func.func @main(%arg0: tensor<2x1x1x1x2xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1xi1> {iree.identifier = "inputs_1"}, %arg2: tensor<2x2x1x1xf16> {iree.identifier = "inputs_2"}) -> (tensor<2x1x1x2xf16> {iree.identifier = "Identity"}, tensor<2x2x1x1xi1> {iree.identifier = "Identity_1"}, tensor<2x2x1x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 3, 4, 2]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<5.539060e+00> : tensor<f16>} : () -> tensor<f16>
    %2 = "tosa.cast"(%arg2) : (tensor<2x2x1x1xf16>) -> tensor<2x2x1x1xi1>
    %3 = "tosa.transpose"(%arg0, %0) : (tensor<2x1x1x1x2xf16>, tensor<5xi32>) -> tensor<2x1x1x2x1xi32>
    %4 = "tosa.reshape"(%3) {new_shape = [2, 1, 1, 2]} : (tensor<2x1x1x2x1xi32>) -> tensor<2x1x1x2xf16>
    %5 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, 1]} : (tensor<1xi1>) -> tensor<1x1x1x1xi1>
    %6 = "tosa.select"(%5, %4, %1) : (tensor<1x1x1x1xi1>, tensor<2x1x1x2xf16>, tensor<f16>) -> tensor<2x1x1x2xf16>
    %7 = "tosa.minimum"(%4, %6) : (tensor<2x1x1x2xf16>, tensor<2x1x1x2xf16>) -> tensor<2x1x1x2xf16>
    %8 = "tosa.mul"(%arg2, %6) {shift = 0 : i32} : (tensor<2x2x1x1xf16>, tensor<2x1x1x2xf16>) -> tensor<2x2x1x2xf16>
    return %7, %2, %8 : tensor<2x1x1x2xf16>, tensor<2x2x1x1xi1>, tensor<2x2x1x2xf16>
  }
}

