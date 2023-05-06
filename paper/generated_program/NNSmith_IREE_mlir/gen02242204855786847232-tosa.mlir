module {
  func.func @main(%arg0: tensor<1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x2x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x2x2x1xf16> {iree.identifier = "inputs_2"}, %arg3: tensor<1x2x2x1xf16> {iree.identifier = "inputs_3"}, %arg4: tensor<?xi1> {iree.identifier = "inputs_4"}) -> (tensor<1x2x1x1xf16> {iree.identifier = "Identity"}, tensor<5x2x2x2xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[6.003900e+00], [6.703130e+00]], [[3.066410e+00], [6.917960e+00]]]]> : tensor<1x2x2x1xf16>} : () -> tensor<1x2x2x1xf16>
    %1 = "tosa.const"() {value = dense<[[[[6.480460e+00], [5.488280e+00]], [[5.335940e+00], [3.533200e+00]]]]> : tensor<1x2x2x1xf16>} : () -> tensor<1x2x2x1xf16>
    %2 = "tosa.const"() {value = dense<[[[3.746090e+00, 5.792960e+00]], [[6.199210e+00, 5.613280e+00]]]> : tensor<2x1x2xf16>} : () -> tensor<2x1x2xf16>
    %3 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1xf16>) -> tensor<1x1x1x1xf16>
    %4 = "tosa.sub"(%arg1, %3) : (tensor<1x2x2x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x2x2x1xf16>
    %5 = "tosa.concat"(%0, %4, %arg3, %1, %arg2) {axis = 0 : i64} : (tensor<1x2x2x1xf16>, tensor<1x2x2x1xf16>, tensor<1x2x2x1xf16>, tensor<1x2x2x1xf16>, tensor<1x2x2x1xf16>) -> tensor<5x2x2x1xf16>
    %6 = "tosa.reshape"(%arg4) {new_shape = [1, 1, 1, -1]} : (tensor<?xi1>) -> tensor<1x1x1x?xi1>
    %7 = "tosa.select"(%6, %2, %5) : (tensor<1x1x1x?xi1>, tensor<2x1x2xf16>, tensor<5x2x2x1xf16>) -> tensor<5x2x2x2xf16>
    %8 = "tosa.slice"(%4) {size = [1, 2, 1, 1], start = [0, 0, 0, 0]} : (tensor<1x2x2x1xf16>) -> tensor<1x2x1x1xf16>
    return %8, %7 : tensor<1x2x1x1xf16>, tensor<5x2x2x2xf16>
  }
}

