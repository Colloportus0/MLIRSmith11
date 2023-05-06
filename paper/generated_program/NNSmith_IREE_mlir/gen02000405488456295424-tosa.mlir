module {
  func.func @main(%arg0: tensor<2x2xi32> {iree.identifier = "inputs_0"}) -> (tensor<2xi32> {iree.identifier = "Identity"}, tensor<1x1x2x2xi32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<1> : tensor<1x1x1x2xi32>} : () -> tensor<1x1x1x2xi32>
    %1 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 2, 2]} : (tensor<2x2xi32>) -> tensor<1x1x2x2xi32>
    %2 = "tosa.add"(%1, %0) : (tensor<1x1x2x2xi32>, tensor<1x1x1x2xi32>) -> tensor<1x1x2x2xi32>
    %3 = "tosa.abs"(%2) : (tensor<1x1x2x2xi32>) -> tensor<1x1x2x2xi32>
    %4 = "tosa.reduce_max"(%arg0) {axis = 1 : i64} : (tensor<2x2xi32>) -> tensor<2x1xi32>
    %5 = "tosa.reshape"(%4) {new_shape = [2]} : (tensor<2x1xi32>) -> tensor<2xi32>
    return %5, %3 : tensor<2xi32>, tensor<1x1x2x2xi32>
  }
}

