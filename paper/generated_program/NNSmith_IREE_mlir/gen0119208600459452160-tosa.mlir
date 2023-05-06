module {
  func.func @main(%arg0: tensor<1xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x2x1xi32> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1xi32> {iree.identifier = "Identity"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<true> : tensor<1x1x1x1xi1>} : () -> tensor<1x1x1x1xi1>
    %1 = "tosa.const"() {value = dense<[0, 1, 2, 4, 3]> : tensor<5xi32>} : () -> tensor<5xi32>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 1, 1]} : (tensor<1xi32>) -> tensor<1x1x1x1x1xi32>
    %3 = "tosa.maximum"(%arg1, %2) : (tensor<1x1x1x2x1xi32>, tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x2x1xi32>
    %4 = "tosa.transpose"(%3, %1) : (tensor<1x1x1x2x1xi32>, tensor<5xi32>) -> tensor<1x1x1x1x2xi32>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 2]} : (tensor<1x1x1x1x2xi32>) -> tensor<1x2xi32>
    %6 = "tosa.reduce_min"(%5) {axis = 1 : i64} : (tensor<1x2xi32>) -> tensor<1x1xi32>
    %7 = "tosa.reshape"(%6) {new_shape = [1, 1, 1, 1]} : (tensor<1x1xi32>) -> tensor<1x1x1x1xi32>
    %8 = "tosa.maximum"(%7, %7) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %9 = "tosa.reshape"(%8) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xi32>) -> tensor<1x1x1xi32>
    return %9, %0 : tensor<1x1x1xi32>, tensor<1x1x1x1xi1>
  }
}

