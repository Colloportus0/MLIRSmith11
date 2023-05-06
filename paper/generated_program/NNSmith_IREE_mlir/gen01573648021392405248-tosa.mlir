module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tf.Atan"(%arg0) {T = f32} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %1 = "tosa.abs"(%0) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %2 = "tosa.sigmoid"(%0) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %2, %0, %1 : tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>
  }
}

