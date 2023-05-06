module {
  func.func @main(%arg0: tensor<2x1x1x2xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<2x1x1x2xi32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1x1xi32> {iree.identifier = "inputs_2"}) -> (tensor<2x2x1x2xi32> {iree.identifier = "Identity"}, tensor<1x2x2x2xi32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[0, 1, 2, 4, 3]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<false> : tensor<1x1x1x2x2xi1>} : () -> tensor<1x1x1x2x2xi1>
    %2 = "tosa.concat"(%arg1, %arg0) {axis = 1 : i64} : (tensor<2x1x1x2xi32>, tensor<2x1x1x2xi32>) -> tensor<2x2x1x2xi32>
    %3 = "tosa.select"(%1, %arg2, %2) : (tensor<1x1x1x2x2xi1>, tensor<1x1x1x1x1xi32>, tensor<2x2x1x2xi32>) -> tensor<1x2x2x2x2xi32>
    %4 = "tosa.sub"(%2, %2) : (tensor<2x2x1x2xi32>, tensor<2x2x1x2xi32>) -> tensor<2x2x1x2xi32>
    %5 = "tosa.transpose"(%3, %0) : (tensor<1x2x2x2x2xi32>, tensor<5xi32>) -> tensor<1x2x2x2x2xi32>
    %6 = "tosa.reshape"(%5) {new_shape = [8, 2]} : (tensor<1x2x2x2x2xi32>) -> tensor<8x2xi32>
    %7 = "tosa.reduce_min"(%6) {axis = 1 : i64} : (tensor<8x2xi32>) -> tensor<8x1xi32>
    %8 = "tosa.reshape"(%7) {new_shape = [1, 2, 2, 2]} : (tensor<8x1xi32>) -> tensor<1x2x2x2xi32>
    return %4, %8 : tensor<2x2x1x2xi32>, tensor<1x2x2x2xi32>
  }
}

