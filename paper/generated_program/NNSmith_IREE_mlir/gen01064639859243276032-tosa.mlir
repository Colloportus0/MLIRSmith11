module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf32> {iree.identifier = "inputs_2"}) -> (tensor<1x1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x5xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<4.73823404> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<4.49650764> : tensor<1x1x1xf32>} : () -> tensor<1x1x1xf32>
    %2 = "tosa.const"() {value = dense<5.23990726> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %3 = "tosa.const"() {value = dense<6.52403831> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %4 = "tosa.concat"(%arg2, %arg1, %2, %3, %arg0) {axis = 3 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x5xf32>
    %5 = "tosa.floor"(%4) : (tensor<1x1x1x5xf32>) -> tensor<1x1x1x5xf32>
    %6 = "tosa.greater"(%5, %5) : (tensor<1x1x1x5xf32>, tensor<1x1x1x5xf32>) -> tensor<1x1x1x5xi1>
    %7 = "tosa.reshape"(%arg2) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xf32>
    %8 = "tosa.matmul"(%7, %1) : (tensor<1x1x1xf32>, tensor<1x1x1xf32>) -> tensor<1x1x1xf32>
    %9 = "tosa.reshape"(%8) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %10 = "tosa.add"(%9, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %10, %6 : tensor<1x1x1x1xf32>, tensor<1x1x1x5xi1>
  }
}

