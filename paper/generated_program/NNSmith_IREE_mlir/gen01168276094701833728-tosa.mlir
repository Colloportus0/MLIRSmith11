module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xi32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xi32> {iree.identifier = "inputs_2"}) -> (tensor<1x1x1xi32> {iree.identifier = "Identity"}, tensor<1x1x1x1xi32> {iree.identifier = "Identity_1"}, tensor<1x4x1xi64> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<5> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.negate"(%arg1) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %2 = "tosa.concat"(%arg2, %0, %arg1, %arg0) {axis = 1 : i64} : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x4x1x1xi32>
    %3 = "tosa.mul"(%2, %2) {shift = 0 : i32} : (tensor<1x4x1x1xi32>, tensor<1x4x1x1xi32>) -> tensor<1x4x1x1xi32>
    %4 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xi32>) -> tensor<1x1x1xi32>
    %5 = "tosa.argmax"(%3) {axis = 2 : i64} : (tensor<1x4x1x1xi32>) -> tensor<1x4x1xi64>
    return %4, %1, %5 : tensor<1x1x1xi32>, tensor<1x1x1x1xi32>, tensor<1x4x1xi64>
  }
}

