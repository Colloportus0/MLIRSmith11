module {
  func.func @main(%arg0: tensor<1x2x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x2x1x1xf32> {iree.identifier = "inputs_2"}) -> (tensor<1x2x1x6xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[6.21514892]], [[5.190530e+00]]]]> : tensor<1x2x1x1xf32>} : () -> tensor<1x2x1x1xf32>
    %1 = "tosa.const"() {value = dense<[[[[6.51417351, 3.24699473]], [[5.41884279, 3.5692327]]]]> : tensor<1x2x1x2xf32>} : () -> tensor<1x2x1x2xf32>
    %2 = "tosa.concat"(%arg2, %arg1, %arg0, %0, %1) {axis = 3 : i64} : (tensor<1x2x1x1xf32>, tensor<1x2x1x1xf32>, tensor<1x2x1x1xf32>, tensor<1x2x1x1xf32>, tensor<1x2x1x2xf32>) -> tensor<1x2x1x6xf32>
    return %2 : tensor<1x2x1x6xf32>
  }
}

