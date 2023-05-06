module {
  func.func @main(%arg0: tensor<1x2x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x2x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x2x1xf32> {iree.identifier = "inputs_2"}, %arg3: tensor<?xf32> {iree.identifier = "inputs_3"}) -> (tensor<1x1x2x4xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[4.7641716], [5.73472691]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %1 = "tosa.const"() {value = dense<[[[[0.258330345], [1.2633692]]]]> : tensor<1x1x2x1xf32>} : () -> tensor<1x1x2x1xf32>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 2, 1]} : (tensor<1x2x1xf32>) -> tensor<1x1x2x1xf32>
    %3 = "tosa.add"(%2, %0) : (tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>) -> tensor<1x1x2x1xf32>
    %4 = "tosa.concat"(%1, %arg2, %arg1, %3) {axis = 3 : i64} : (tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>, tensor<1x1x2x1xf32>) -> tensor<1x1x2x4xf32>
    %5 = "tosa.reciprocal"(%4) : (tensor<1x1x2x4xf32>) -> tensor<1x1x2x4xf32>
    %6 = "tosa.mul"(%arg3, %5) {shift = 0 : i32} : (tensor<?xf32>, tensor<1x1x2x4xf32>) -> tensor<1x1x2x4xf32>
    return %6 : tensor<1x1x2x4xf32>
  }
}

