module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf32> {iree.identifier = "inputs_2"}, %arg3: tensor<1x1x1x1xf32> {iree.identifier = "inputs_3"}) -> (tensor<1x1x1x5xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<29.2606544> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.concat"(%arg2, %arg1, %0, %arg3, %1) {axis = 3 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x5xf32>
    %3 = "tf.Atan"(%2) {T = f32} : (tensor<1x1x1x5xf32>) -> tensor<1x1x1x5xf32>
    return %3 : tensor<1x1x1x5xf32>
  }
}

