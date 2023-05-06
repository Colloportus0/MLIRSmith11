module {
  func.func @main(%arg0: tensor<?xf16> {iree.identifier = "inputs_0"}) -> (tensor<2x2x1x1xf32> {iree.identifier = "Identity"}, tensor<2x2x1x2xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[3.047544, 1.38370609]]]]> : tensor<1x1x1x2xf32>} : () -> tensor<1x1x1x2xf32>
    %1 = "tosa.const"() {value = dense<[[[[1.09943271, 1.68303084]]]]> : tensor<1x1x1x2xf32>} : () -> tensor<1x1x1x2xf32>
    %2 = "tosa.const"() {value = dense<[[[4.16005421], [5.38457298]], [[2.67354586E-30], [0.000000e+00]], [[4.82286261E-30], [0.000000e+00]], [[2.67871878E-30], [0.000000e+00]]]> : tensor<4x2x1xf32>} : () -> tensor<4x2x1xf32>
    %3 = "tosa.const"() {value = dense<3.86122823> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %4 = "tosa.const"() {value = dense<[[[[6.496090e+00, 3.562500e+00]], [[6.457030e+00, 4.609380e+00]]], [[[3.910160e+00, 5.835940e+00]], [[3.115230e+00, 5.070310e+00]]]]> : tensor<2x2x1x2xf16>} : () -> tensor<2x2x1x2xf16>
    %5 = "tosa.mul"(%arg0, %4) {shift = 0 : i32} : (tensor<?xf16>, tensor<2x2x1x2xf16>) -> tensor<2x2x1x2xf16>
    %6 = "tosa.cast"(%5) : (tensor<2x2x1x2xf16>) -> tensor<2x2x1x2xf32>
    %7 = "tosa.reshape"(%6) {new_shape = [4, 1, 2]} : (tensor<2x2x1x2xf32>) -> tensor<4x1x2xf32>
    %8 = "tosa.matmul"(%7, %2) : (tensor<4x1x2xf32>, tensor<4x2x1xf32>) -> tensor<4x1x1xf32>
    %9 = "tosa.reshape"(%8) {new_shape = [2, 2, 1, 1]} : (tensor<4x1x1xf32>) -> tensor<2x2x1x1xf32>
    %10 = "tosa.add"(%9, %3) : (tensor<2x2x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x2x1x1xf32>
    %11 = "tosa.mul"(%6, %1) {shift = 0 : i32} : (tensor<2x2x1x2xf32>, tensor<1x1x1x2xf32>) -> tensor<2x2x1x2xf32>
    %12 = "tosa.add"(%11, %0) : (tensor<2x2x1x2xf32>, tensor<1x1x1x2xf32>) -> tensor<2x2x1x2xf32>
    return %10, %12 : tensor<2x2x1x1xf32>, tensor<2x2x1x2xf32>
  }
}

