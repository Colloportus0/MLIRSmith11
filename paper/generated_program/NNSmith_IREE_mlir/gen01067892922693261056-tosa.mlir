module {
  func.func @main(%arg0: tensor<13x1x1x1x2xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1x2xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1x2xf32> {iree.identifier = "inputs_2"}, %arg3: tensor<1x1x1x1x2xf32> {iree.identifier = "inputs_3"}) -> (tensor<16x1x1x2xf32> {iree.identifier = "Identity"}, tensor<16x1x1x2xf32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<5.000000e-01> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<[0, 2, 3, 4, 1]> : tensor<5xi32>} : () -> tensor<5xi32>
    %2 = "tosa.concat"(%arg3, %arg2, %arg1, %arg0) {axis = 0 : i64} : (tensor<1x1x1x1x2xf32>, tensor<1x1x1x1x2xf32>, tensor<1x1x1x1x2xf32>, tensor<13x1x1x1x2xf32>) -> tensor<16x1x1x1x2xf32>
    %3 = "tosa.transpose"(%2, %1) : (tensor<16x1x1x1x2xf32>, tensor<5xi32>) -> tensor<16x1x1x2x1xi32>
    %4 = "tosa.reshape"(%3) {new_shape = [16, 1, 1, 2]} : (tensor<16x1x1x2x1xi32>) -> tensor<16x1x1x2xf32>
    %5 = "tosa.floor"(%4) : (tensor<16x1x1x2xf32>) -> tensor<16x1x1x2xf32>
    %6 = "tosa.add"(%4, %0) : (tensor<16x1x1x2xf32>, tensor<1x1x1x1xf32>) -> tensor<16x1x1x2xf32>
    %7 = "tosa.floor"(%6) : (tensor<16x1x1x2xf32>) -> tensor<16x1x1x2xf32>
    return %7, %5 : tensor<16x1x1x2xf32>, tensor<16x1x1x2xf32>
  }
}

