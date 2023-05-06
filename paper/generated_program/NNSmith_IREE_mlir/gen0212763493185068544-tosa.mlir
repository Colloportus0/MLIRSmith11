module {
  func.func @main(%arg0: tensor<1x2x1xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x2x1x2xi32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x2xi32> {iree.identifier = "inputs_2"}) -> (tensor<1x2x2x2xi32> {iree.identifier = "Identity"}, tensor<1xi32> {iree.identifier = "Identity_1"}, tensor<1x2xi32> {iree.identifier = "Identity_2"}, tensor<1x2x2x2xi32> {iree.identifier = "Identity_3"}) {
    %0 = "tosa.const"() {value = dense<1> : tensor<1x1xi32>} : () -> tensor<1x1xi32>
    %1 = "tosa.const"() {value = dense<-1> : tensor<1x1xi32>} : () -> tensor<1x1xi32>
    %2 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 2, 1]} : (tensor<1x2x1xi32>) -> tensor<1x1x2x1xi32>
    %3 = "tosa.maximum"(%arg1, %2) : (tensor<1x2x1x2xi32>, tensor<1x1x2x1xi32>) -> tensor<1x2x2x2xi32>
    %4 = "tosa.reshape"(%arg2) {new_shape = [1, 1, 1, 2]} : (tensor<1x2xi32>) -> tensor<1x1x1x2xi32>
    %5 = "tosa.sub"(%4, %3) : (tensor<1x1x1x2xi32>, tensor<1x2x2x2xi32>) -> tensor<1x2x2x2xi32>
    %6 = "tosa.minimum"(%arg2, %0) : (tensor<1x2xi32>, tensor<1x1xi32>) -> tensor<1x2xi32>
    %7 = "tosa.maximum"(%6, %1) : (tensor<1x2xi32>, tensor<1x1xi32>) -> tensor<1x2xi32>
    %8 = "tosa.reduce_max"(%arg2) {axis = 1 : i64} : (tensor<1x2xi32>) -> tensor<1x1xi32>
    %9 = "tosa.reshape"(%8) {new_shape = [1]} : (tensor<1x1xi32>) -> tensor<1xi32>
    return %3, %9, %7, %5 : tensor<1x2x2x2xi32>, tensor<1xi32>, tensor<1x2xi32>, tensor<1x2x2x2xi32>
  }
}

