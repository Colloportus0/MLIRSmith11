module {
  func.func @main(%arg0: tensor<2xi32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xi32> {iree.identifier = "inputs_1"}) -> (tensor<1x1x1x2xi1> {iree.identifier = "Identity"}, tensor<1x1x1x2xi1> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<2xi32>) -> tensor<1x1x1x2xi32>
    %1 = "tosa.add"(%arg1, %0) : (tensor<1x1x1x1xi32>, tensor<1x1x1x2xi32>) -> tensor<1x1x1x2xi32>
    %2 = "tosa.minimum"(%1, %1) : (tensor<1x1x1x2xi32>, tensor<1x1x1x2xi32>) -> tensor<1x1x1x2xi32>
    %3 = "tosa.abs"(%2) : (tensor<1x1x1x2xi32>) -> tensor<1x1x1x2xi32>
    %4 = "tosa.cast"(%2) : (tensor<1x1x1x2xi32>) -> tensor<1x1x1x2xi1>
    %5 = "tosa.greater"(%3, %2) : (tensor<1x1x1x2xi32>, tensor<1x1x1x2xi32>) -> tensor<1x1x1x2xi1>
    return %4, %5 : tensor<1x1x1x2xi1>, tensor<1x1x1x2xi1>
  }
}

