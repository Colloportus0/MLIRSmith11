module {
  func.func @main(%arg0: tensor<1x2x2x1xi1> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x2x2x2xf16> {iree.identifier = "inputs_1"}) -> (tensor<2x6x2x2xf16> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<6.644530e+00> : tensor<1x1x1x1xf16>} : () -> tensor<1x1x1x1xf16>
    %1 = "tosa.const"() {value = dense<[[[[[5.265630e+00, 6.058590e+00], [4.421880e+00, 5.437500e+00]]]], [[[[6.984380e+00, 3.183590e+00], [6.351560e+00, 3.296880e+00]]]]]> : tensor<2x1x1x2x2xf16>} : () -> tensor<2x1x1x2x2xf16>
    %2 = "tosa.const"() {value = dense<6.644530e+00> : tensor<f16>} : () -> tensor<f16>
    %3 = "tosa.const"() {value = dense<[[[[[1.664060e+01, 2.601560e+01], [3.262500e+01, 3.812500e+01]], [[3.515630e+01, 2.262500e+01], [2.112500e+01, 1.017970e+01]]], [[[2.798440e+01, 3.806250e+01], [3.928130e+01, 3.021880e+01]], [[3.934380e+01, 3.434380e+01], [1.835940e+01, 1.499220e+01]]]], [[[[1.792190e+01, 1.610940e+01], [2.701560e+01, 4.003130e+01]], [[2.490630e+01, 4.006250e+01], [2.028130e+01, 9.796870e+00]]], [[[3.048440e+01, 1.867190e+01], [4.746880e+01, 3.234380e+01]], [[2.423440e+01, 2.440630e+01], [1.864060e+01, 1.182810e+01]]]]]> : tensor<2x2x2x2x2xf16>} : () -> tensor<2x2x2x2x2xf16>
    %4 = "tosa.const"() {value = dense<[[[[[5.515630e+00, 5.328130e+00], [3.943360e+00, 4.898440e+00]], [[6.972650e+00, 4.910160e+00], [3.439450e+00, 4.601560e+00]]]], [[[[3.851560e+00, 6.292960e+00], [5.734380e+00, 6.992180e+00]], [[4.941410e+00, 6.234380e+00], [4.441410e+00, 3.300780e+00]]]]]> : tensor<2x1x2x2x2xf16>} : () -> tensor<2x1x2x2x2xf16>
    %5 = "tosa.const"() {value = dense<[[[[[4.535160e+00, 6.082030e+00], [6.835930e+00, 6.785150e+00]], [[5.078130e+00, 4.265630e+00], [6.972650e+00, 5.339840e+00]]]], [[[[3.177730e+00, 4.152340e+00], [4.179690e+00, 6.089840e+00]], [[6.703130e+00, 5.503900e+00], [6.406250e+00, 5.562500e+00]]]]]> : tensor<2x1x2x2x2xf16>} : () -> tensor<2x1x2x2x2xf16>
    %6 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 2, 2, 1]} : (tensor<1x2x2x1xi1>) -> tensor<1x1x2x2x1xi1>
    %7 = "tosa.select"(%6, %1, %2) : (tensor<1x1x2x2x1xi1>, tensor<2x1x1x2x2xf16>, tensor<f16>) -> tensor<2x1x2x2x2xf16>
    %8 = "tosa.concat"(%3, %arg1, %7, %4, %5) {axis = 1 : i64} : (tensor<2x2x2x2x2xf16>, tensor<2x1x2x2x2xf16>, tensor<2x1x2x2x2xf16>, tensor<2x1x2x2x2xf16>, tensor<2x1x2x2x2xf16>) -> tensor<2x6x2x2x2xf16>
    %9 = "tosa.reshape"(%8) {new_shape = [48, 2]} : (tensor<2x6x2x2x2xf16>) -> tensor<48x2xf16>
    %10 = "tosa.reduce_max"(%9) {axis = 1 : i64} : (tensor<48x2xf16>) -> tensor<48x1xf16>
    %11 = "tosa.reshape"(%10) {new_shape = [2, 6, 2, 2]} : (tensor<48x1xf16>) -> tensor<2x6x2x2xf16>
    %12 = "tosa.sub"(%0, %11) : (tensor<1x1x1x1xf16>, tensor<2x6x2x2xf16>) -> tensor<2x6x2x2xf16>
    return %12 : tensor<2x6x2x2xf16>
  }
}

