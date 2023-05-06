module {
  func.func @main(%arg0: tensor<1x1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x2xi32> {iree.identifier = "Identity"}, tensor<1x1x1x2xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.const"() {value = dense<4> : tensor<1x1x1x1x1xi32>} : () -> tensor<1x1x1x1x1xi32>
    %2 = "tosa.concat"(%arg0, %1) {axis = 4 : i64} : (tensor<1x1x1x1x1xi32>, tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1x2xi32>
    %3 = "tosa.transpose"(%2, %0) : (tensor<1x1x1x1x2xi32>, tensor<5xi32>) -> tensor<1x1x1x2x1xi32>
    %4 = "tosa.reshape"(%3) {new_shape = [1, 1, 1, 2]} : (tensor<1x1x1x2x1xi32>) -> tensor<1x1x1x2xi32>
    %5 = "tosa.greater"(%4, %4) : (tensor<1x1x1x2xi32>, tensor<1x1x1x2xi32>) -> tensor<1x1x1x2xi1>
    %6 = "tosa.mul"(%4, %4) {shift = 0 : i32} : (tensor<1x1x1x2xi32>, tensor<1x1x1x2xi32>) -> tensor<1x1x1x2xi32>
    return %6, %5 : tensor<1x1x1x2xi32>, tensor<1x1x1x2xi1>
  }
}

