module {
  func.func @main(%arg0: tensor<2x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x1x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<2x1x1x1xf32> {iree.identifier = "inputs_2"}) -> (tensor<2x1x1x1xf32> {iree.identifier = "inputs_1"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<2x1x1x1xf32> {iree.identifier = "Identity_2"}, tensor<2x1x1x5xf32> {iree.identifier = "Identity_3"}) {
    %0 = "tosa.const"() {value = dense<3.36347127> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<1.01495695> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<[[[[5.08324575]]], [[[4.77576065]]]]> : tensor<2x1x1x1xf32>} : () -> tensor<2x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<[[[[5.133250e+00]]], [[[6.75452136]]]]> : tensor<2x1x1x1xf32>} : () -> tensor<2x1x1x1xf32>
    %4 = "tosa.clamp"(%arg0) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %5 = "tosa.sub"(%4, %arg2) : (tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %6 = "tosa.mul"(%arg2, %0) {shift = 0 : i32} : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    %7 = "tosa.concat"(%arg2, %arg1, %2, %3, %4) {axis = 3 : i64} : (tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>) -> tensor<2x1x1x5xf32>
    %8 = "tosa.add"(%6, %1) : (tensor<2x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x1x1xf32>
    return %arg1, %8, %5, %7 : tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>, tensor<2x1x1x5xf32>
  }
}

