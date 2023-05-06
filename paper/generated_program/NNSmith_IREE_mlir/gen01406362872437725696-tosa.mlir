module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xi32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xi32> {iree.identifier = "inputs_2"}, %arg3: tensor<1x1x1x1xi32> {iree.identifier = "inputs_3"}) -> (tensor<1x1x4x1xi32> {iree.identifier = "Identity"}, tensor<1x4x1xi64> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.concat"(%arg3, %arg2, %arg1, %arg0) {axis = 2 : i64} : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x4x1xi32>
    %1 = "tosa.abs"(%0) : (tensor<1x1x4x1xi32>) -> tensor<1x1x4x1xi32>
    %2 = "tosa.cast"(%1) : (tensor<1x1x4x1xi32>) -> tensor<1x1x4x1xf32>
    %3 = "tosa.argmax"(%2) {axis = 0 : i64} : (tensor<1x1x4x1xf32>) -> tensor<1x4x1xi64>
    return %1, %3 : tensor<1x1x4x1xi32>, tensor<1x4x1xi64>
  }
}

