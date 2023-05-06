module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf32> {iree.identifier = "inputs_2"}, %arg3: tensor<1x1x1x1xf32> {iree.identifier = "inputs_3"}, %arg4: tensor<1x1x1x1xf32> {iree.identifier = "inputs_4"}) -> (tensor<1x1x1x1xi1> {iree.identifier = "Identity"}, tensor<1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_2"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_3"}, tensor<5x1x1x1xf32> {iree.identifier = "Identity_4"}) {
    %0 = "tosa.const"() {value = dense<1.500000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<-1.500000e+00> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.greater"(%arg1, %arg0) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xi1>
    %3 = "tosa.sigmoid"(%arg3) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xf32>
    %5 = "tosa.concat"(%arg4, %arg3, %arg2, %arg1, %arg0) {axis = 0 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<5x1x1x1xf32>
    %6 = "tosa.minimum"(%arg3, %0) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %7 = "tosa.maximum"(%6, %1) : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    return %2, %4, %3, %7, %5 : tensor<1x1x1x1xi1>, tensor<1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<5x1x1x1xf32>
  }
}

