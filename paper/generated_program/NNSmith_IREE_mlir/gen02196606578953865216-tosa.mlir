module {
  func.func @main(%arg0: tensor<1x2x2x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x2x1x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<2xf32> {iree.identifier = "inputs_2"}) -> (tensor<1x2x2x4xi64> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 2, 4, 3]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<[[[[[3.66700935]], [[6.8665018]]], [[[6.13807582]], [[6.94108676]]]]]> : tensor<1x2x2x1x1xf32>} : () -> tensor<1x2x2x1x1xf32>
    %2 = "tosa.const"() {value = dense<[[[[[4.96090078]], [[3.3710835]]], [[[5.11923265]], [[5.3197217]]]]]> : tensor<1x2x2x1x1xf32>} : () -> tensor<1x2x2x1x1xf32>
    %3 = "tosa.concat"(%1, %arg1, %arg0, %2) {axis = 4 : i64} : (tensor<1x2x2x1x1xf32>, tensor<1x2x2x1x1xf32>, tensor<1x2x2x1x1xf32>, tensor<1x2x2x1x1xf32>) -> tensor<1x2x2x1x4xf32>
    %4 = "tosa.reshape"(%arg2) {new_shape = [1, 1, 1, 2, 1]} : (tensor<2xf32>) -> tensor<1x1x1x2x1xf32>
    %5 = "tosa.reciprocal"(%3) : (tensor<1x2x2x1x4xf32>) -> tensor<1x2x2x1x4xf32>
    %6 = "tosa.mul"(%4, %5) {shift = 0 : i32} : (tensor<1x1x1x2x1xf32>, tensor<1x2x2x1x4xf32>) -> tensor<1x2x2x2x4xf32>
    %7 = "tosa.abs"(%6) : (tensor<1x2x2x2x4xf32>) -> tensor<1x2x2x2x4xf32>
    %8 = "tosa.transpose"(%7, %0) : (tensor<1x2x2x2x4xf32>, tensor<5xi32>) -> tensor<1x2x2x4x2xi32>
    %9 = "tosa.reshape"(%8) {new_shape = [16, 2]} : (tensor<1x2x2x4x2xi32>) -> tensor<16x2xf32>
    %10 = "tosa.reduce_sum"(%9) {axis = 1 : i64} : (tensor<16x2xf32>) -> tensor<16x1xf32>
    %11 = "tosa.reshape"(%10) {new_shape = [1, 2, 2, 4]} : (tensor<16x1xf32>) -> tensor<1x2x2x4xf32>
    %12 = "tosa.cast"(%11) : (tensor<1x2x2x4xf32>) -> tensor<1x2x2x4xi64>
    return %12 : tensor<1x2x2x4xi64>
  }
}

