module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.avg_pool2d"(%arg0) {kernel = [1, 1], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %1 = "tf.Tan"(%0) {T = f32} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.reshape"(%0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xf32>
    return %2, %1, %0 : tensor<1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

