module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<?xf32> {iree.identifier = "inputs_1"}) -> (tensor<?xf32> {iree.identifier = "Identity"}, tensor<1x1x1x?xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.floor"(%arg1) : (tensor<?xf32>) -> tensor<?xf32>
    %1 = "tosa.minimum"(%arg0, %0) : (tensor<1x1x1x1xf32>, tensor<?xf32>) -> tensor<1x1x1x?xf32>
    %2 = "tosa.sigmoid"(%arg1) : (tensor<?xf32>) -> tensor<?xf32>
    %3 = "tosa.resize"(%1) {mode = "BILINEAR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 0.000000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [1.000000e+00 : f32, 1.000000e+00 : f32]} : (tensor<1x1x1x?xf32>) -> tensor<1x1x1x?xf32>
    return %2, %3 : tensor<?xf32>, tensor<1x1x1x?xf32>
  }
}

