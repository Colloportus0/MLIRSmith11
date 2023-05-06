module {
  func.func @main(%arg0: tensor<1x1x1x2xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x2xi32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x2xi32> {iree.identifier = "inputs_2"}, %arg3: tensor<1x2x2xi32> {iree.identifier = "inputs_3"}) -> (tensor<5x1x1x2xf32> {iree.identifier = "Identity"}, tensor<5x1x2x2xi32> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[[[[7, 4]]]]> : tensor<1x1x1x2xi32>} : () -> tensor<1x1x1x2xi32>
    %1 = "tosa.const"() {value = dense<[[[[3, 5]]]]> : tensor<1x1x1x2xi32>} : () -> tensor<1x1x1x2xi32>
    %2 = "tosa.concat"(%arg2, %0, %arg1, %1, %arg0) {axis = 0 : i64} : (tensor<1x1x1x2xi32>, tensor<1x1x1x2xi32>, tensor<1x1x1x2xi32>, tensor<1x1x1x2xi32>, tensor<1x1x1x2xi32>) -> tensor<5x1x1x2xi32>
    %3 = "tosa.cast"(%2) : (tensor<5x1x1x2xi32>) -> tensor<5x1x1x2xf32>
    %4 = "tosa.floor"(%3) : (tensor<5x1x1x2xf32>) -> tensor<5x1x1x2xf32>
    %5 = "tosa.sigmoid"(%4) : (tensor<5x1x1x2xf32>) -> tensor<5x1x1x2xf32>
    %6 = "tosa.reshape"(%arg3) {new_shape = [1, 1, 2, 2]} : (tensor<1x2x2xi32>) -> tensor<1x1x2x2xi32>
    %7 = "tosa.maximum"(%2, %6) : (tensor<5x1x1x2xi32>, tensor<1x1x2x2xi32>) -> tensor<5x1x2x2xi32>
    return %5, %7 : tensor<5x1x1x2xf32>, tensor<5x1x2x2xi32>
  }
}

