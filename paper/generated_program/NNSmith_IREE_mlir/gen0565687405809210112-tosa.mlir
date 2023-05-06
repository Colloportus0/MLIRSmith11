module {
  func.func @main(%arg0: tensor<2x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x1x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<2x1x1x1xf32> {iree.identifier = "inputs_2"}, %arg3: tensor<4x1x2xi1> {iree.identifier = "inputs_3"}) -> (tensor<2x4x1x1xi64> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<[[[5.84288692], [6.89218997]], [[3.92806653E-30], [0.000000e+00]], [[4.75159116E-30], [0.000000e+00]], [[3.92336606E-30], [0.000000e+00]], [[0.000000e+00], [0.000000e+00]], [[4.72956936E-30], [0.000000e+00]], [[1.121040e-44], [0.000000e+00]], [[4.72101101E-30], [0.000000e+00]]]> : tensor<8x2x1xf32>} : () -> tensor<8x2x1xf32>
    %1 = "tosa.const"() {value = dense<3.14241505> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<1> : tensor<1x1x1x1xi48>} : () -> tensor<1x1x1x1xi48>
    %3 = "tosa.const"() {value = dense<-1> : tensor<1x1x1x1xi48>} : () -> tensor<1x1x1x1xi48>
    %4 = "tosa.const"() {value = dense<[[[[3.79291415]]], [[[6.21301364]]]]> : tensor<2x1x1x1xf32>} : () -> tensor<2x1x1x1xf32>
    %5 = "tosa.const"() {value = dense<[6.311584, 5.03731823]> : tensor<2xf32>} : () -> tensor<2xf32>
    %6 = "tosa.concat"(%arg2, %arg1, %4, %arg0) {axis = 1 : i64} : (tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>, tensor<2x1x1x1xf32>) -> tensor<2x4x1x1xf32>
    %7 = "tosa.reshape"(%arg3) {new_shape = [1, 4, 1, 2]} : (tensor<4x1x2xi1>) -> tensor<1x4x1x2xi1>
    %8 = "tosa.select"(%7, %6, %5) : (tensor<1x4x1x2xi1>, tensor<2x4x1x1xf32>, tensor<2xf32>) -> tensor<2x4x1x2xf32>
    %9 = "tosa.reshape"(%8) {new_shape = [8, 1, 2]} : (tensor<2x4x1x2xf32>) -> tensor<8x1x2xf32>
    %10 = "tosa.matmul"(%9, %0) : (tensor<8x1x2xf32>, tensor<8x2x1xf32>) -> tensor<8x1x1xf32>
    %11 = "tosa.reshape"(%10) {new_shape = [2, 4, 1, 1]} : (tensor<8x1x1xf32>) -> tensor<2x4x1x1xf32>
    %12 = "tosa.add"(%11, %1) : (tensor<2x4x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x4x1x1xf32>
    %13 = "tosa.cast"(%12) : (tensor<2x4x1x1xf32>) -> tensor<2x4x1x1xi64>
    %14 = "tosa.minimum"(%13, %2) : (tensor<2x4x1x1xi64>, tensor<1x1x1x1xi48>) -> tensor<2x4x1x1xi64>
    %15 = "tosa.maximum"(%14, %3) : (tensor<2x4x1x1xi64>, tensor<1x1x1x1xi48>) -> tensor<2x4x1x1xi64>
    return %15 : tensor<2x4x1x1xi64>
  }
}

