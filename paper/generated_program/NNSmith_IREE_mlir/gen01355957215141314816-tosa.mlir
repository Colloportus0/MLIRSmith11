module {
  func.func @main(%arg0: tensor<2x1x2xi1> {iree.identifier = "inputs_0"}) -> (tensor<2x2x2x2xf32> {iree.identifier = "Identity"}, tensor<2x2x2x2xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[6.2487154, 6.34151268]], [[4.120260e+00, 4.96282291]]]> : tensor<2x1x2xf32>} : () -> tensor<2x1x2xf32>
    %1 = "tosa.const"() {value = dense<[[[[0.408204585], [-0.750325858]], [[0.750696898], [0.679995834]]], [[[0.965435862], [0.0240660422]], [[-0.276041478], [0.743436694]]]]> : tensor<2x2x2x1xf32>} : () -> tensor<2x2x2x1xf32>
    %2 = "tosa.const"() {value = dense<[[[[5.13287544], [3.86383414]], [[5.56150532], [5.46014595]]], [[[6.54687119], [4.73645735]], [[4.43271589], [5.55058336]]]]> : tensor<2x2x2x1xf32>} : () -> tensor<2x2x2x1xf32>
    %3 = "tosa.reshape"(%arg0) {new_shape = [1, 2, 1, 2]} : (tensor<2x1x2xi1>) -> tensor<1x2x1x2xi1>
    %4 = "tosa.select"(%3, %0, %1) : (tensor<1x2x1x2xi1>, tensor<2x1x2xf32>, tensor<2x2x2x1xf32>) -> tensor<2x2x2x2xf32>
    %5 = "tosa.clamp"(%4) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<2x2x2x2xf32>) -> tensor<2x2x2x2xf32>
    %6 = "tosa.abs"(%5) : (tensor<2x2x2x2xf32>) -> tensor<2x2x2x2xf32>
    %7 = "tosa.add"(%5, %2) : (tensor<2x2x2x2xf32>, tensor<2x2x2x1xf32>) -> tensor<2x2x2x2xf32>
    return %7, %6 : tensor<2x2x2x2xf32>, tensor<2x2x2x2xf32>
  }
}

