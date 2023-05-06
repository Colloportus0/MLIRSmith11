module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf32> {iree.identifier = "inputs_2"}) -> (tensor<1x1x1x20xi32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<0.805857539> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.concat"(%arg2, %arg1, %0, %arg0) {axis = 3 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x4xf32>
    %2 = "tosa.cast"(%1) : (tensor<1x1x1x4xf32>) -> tensor<1x1x1x4xi32>
    %3 = "tosa.concat"(%2, %2, %2, %2, %2) {axis = 3 : i64} : (tensor<1x1x1x4xi32>, tensor<1x1x1x4xi32>, tensor<1x1x1x4xi32>, tensor<1x1x1x4xi32>, tensor<1x1x1x4xi32>) -> tensor<1x1x1x20xi32>
    return %3 : tensor<1x1x1x20xi32>
  }
}

