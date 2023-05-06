module {
  func.func @main(%arg0: tensor<1x1x2x2xf32> {iree.identifier = "inputs_0"}) -> (tensor<2x1x1x2xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[[3.63862848, 6.13621425]], [[3.56202316, 6.06431102]]], [[[6.20224333, 3.06891799]], [[6.11972808, 6.430010e+00]]]]> : tensor<2x2x1x2xf32>} : () -> tensor<2x2x1x2xf32>
    %1 = "tosa.maximum"(%arg0, %0) : (tensor<1x1x2x2xf32>, tensor<2x2x1x2xf32>) -> tensor<2x2x2x2xf32>
    %2 = "tosa.resize"(%1) {mode = "NEAREST_NEIGHBOR", offset = [0, 0], offset_fp = [0.000000e+00 : f32, 0.000000e+00 : f32], output_size = [1, 1], shift = 0 : i32, stride = [0, 0], stride_fp = [2.000000e+00 : f32, 2.000000e+00 : f32]} : (tensor<2x2x2x2xf32>) -> tensor<2x1x1x2xf32>
    return %2 : tensor<2x1x1x2xf32>
  }
}

