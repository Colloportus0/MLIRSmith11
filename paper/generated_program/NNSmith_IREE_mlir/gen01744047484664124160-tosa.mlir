module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1xf32> {iree.identifier = "Identity"}, tensor<1x1x1x1xf32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xi1> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.floor"(%arg0) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %1 = "tosa.cast"(%0) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xi64>
    %2 = "tosa.greater"(%1, %1) : (tensor<1x1x1x1xi64>, tensor<1x1x1x1xi64>) -> tensor<1x1x1x1xi1>
    %3 = "tosa.exp"(%arg0) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %4 = "tosa.reciprocal"(%3) : (tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %5 = "tosa.mul"(%3, %4) {shift = 0 : i32} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %6 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1]} : (tensor<1x1x1x1xf32>) -> tensor<1x1x1xf32>
    return %6, %5, %2 : tensor<1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xi1>
  }
}

