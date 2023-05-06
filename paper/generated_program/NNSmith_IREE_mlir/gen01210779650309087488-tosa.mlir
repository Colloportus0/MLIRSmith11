module {
  func.func @main(%arg0: tensor<2xf32> {iree.identifier = "inputs_0"}) -> (tensor<2x2x2x1xf32> {iree.identifier = "Identity"}, tensor<2x2x2x2xf32> {iree.identifier = "Identity_1"}, tensor<2x2x2x2xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<[[[3.85789657], [4.57619381]], [[8.81447579E-30], [0.000000e+00]], [[9.73609346E-30], [0.000000e+00]], [[8.80507485E-30], [0.000000e+00]]]> : tensor<4x2x1xf32>} : () -> tensor<4x2x1xf32>
    %1 = "tosa.const"() {value = dense<5.358450e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<[[[[5.53112507, 4.79036522], [4.09512186, 3.0157268]], [[5.18069077, 4.62636566], [6.61699724, 6.68990088]]], [[[3.88510489, 3.03093886], [3.98988628, 4.93378544]], [[5.64175606, 3.96296287], [4.34426212, 4.88441324]]]]> : tensor<2x2x2x2xf32>} : () -> tensor<2x2x2x2xf32>
    %3 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<2xf32>) -> tensor<1x1x1x2xf32>
    %4 = "tosa.maximum"(%3, %2) : (tensor<1x1x1x2xf32>, tensor<2x2x2x2xf32>) -> tensor<2x2x2x2xf32>
    %5 = "tosa.reshape"(%4) {new_shape = [4, 2, 2]} : (tensor<2x2x2x2xf32>) -> tensor<4x2x2xf32>
    %6 = "tosa.matmul"(%5, %0) : (tensor<4x2x2xf32>, tensor<4x2x1xf32>) -> tensor<4x2x1xf32>
    %7 = "tosa.reshape"(%6) {new_shape = [2, 2, 2, 1]} : (tensor<4x2x1xf32>) -> tensor<2x2x2x1xf32>
    %8 = "tosa.add"(%7, %1) : (tensor<2x2x2x1xf32>, tensor<1x1x1x1xf32>) -> tensor<2x2x2x1xf32>
    %9 = "tosa.sub"(%4, %4) : (tensor<2x2x2x2xf32>, tensor<2x2x2x2xf32>) -> tensor<2x2x2x2xf32>
    %10 = "tosa.sub"(%9, %4) : (tensor<2x2x2x2xf32>, tensor<2x2x2x2xf32>) -> tensor<2x2x2x2xf32>
    return %8, %10, %4 : tensor<2x2x2x1xf32>, tensor<2x2x2x2xf32>, tensor<2x2x2x2xf32>
  }
}

