module {
  func.func @main(%arg0: tensor<1x31x1x4xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x31x2x4xi1> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<1.500000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<-1.500000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.resize"(%arg0) {mode = "NEAREST_NEIGHBOR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 0.000000e+00 : f32], output_size = [1, 2], shift = 0 : i32, stride = [0, 0], stride_fp = [3.100000e+01 : f32, 5.000000e-01 : f32]} : (tensor<1x31x1x4xf32>) -> tensor<1x1x2x4xf32>
    %3 = "tosa.minimum"(%arg0, %0) : (tensor<1x31x1x4xf32>, tensor<1x1x1x1xf32>) -> tensor<1x31x1x4xf32>
    %4 = "tosa.maximum"(%3, %1) : (tensor<1x31x1x4xf32>, tensor<1x1x1x1xf32>) -> tensor<1x31x1x4xf32>
    %5 = "tosa.minimum"(%4, %2) : (tensor<1x31x1x4xf32>, tensor<1x1x2x4xf32>) -> tensor<1x31x2x4xf32>
    %6 = "tosa.greater"(%5, %2) : (tensor<1x31x2x4xf32>, tensor<1x1x2x4xf32>) -> tensor<1x31x2x4xi1>
    return %6 : tensor<1x31x2x4xi1>
  }
}

