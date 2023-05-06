module {
  func.func @main(%arg0: tensor<2x2x2x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x2x1x2xi1> {iree.identifier = "inputs_2"}) -> (tensor<2x2x2xi64> {iree.identifier = "Identity"}, tensor<2x2x2x2xi1> {iree.identifier = "Identity_1"}, tensor<2x2x2x2xf16> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.select"(%arg2, %arg1, %arg0) : (tensor<1x2x1x2xi1>, tensor<1x2x1x1xf16>, tensor<2x2x2x1xf16>) -> tensor<2x2x2x2xf16>
    %1 = "tosa.cast"(%0) : (tensor<2x2x2x2xf16>) -> tensor<2x2x2x2xi64>
    %2 = "tosa.greater"(%1, %1) : (tensor<2x2x2x2xi64>, tensor<2x2x2x2xi64>) -> tensor<2x2x2x2xi1>
    %3 = "tosa.negate"(%0) : (tensor<2x2x2x2xf16>) -> tensor<2x2x2x2xf16>
    %4 = "tosa.reduce_sum"(%1) {axis = 1 : i64} : (tensor<2x2x2x2xi64>) -> tensor<2x1x2x2xi64>
    %5 = "tosa.reshape"(%4) {new_shape = [2, 2, 2]} : (tensor<2x1x2x2xi64>) -> tensor<2x2x2xi64>
    return %5, %2, %3 : tensor<2x2x2xi64>, tensor<2x2x2x2xi1>, tensor<2x2x2x2xf16>
  }
}

