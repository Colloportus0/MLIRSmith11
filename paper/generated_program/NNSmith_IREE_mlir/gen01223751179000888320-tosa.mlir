module {
  func.func @main(%arg0: tensor<1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<5x1x1x1xi32> {iree.identifier = "Identity"}) {
    %0 = "tosa.negate"(%arg0) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %1 = "tosa.concat"(%arg0, %arg0, %arg0, %arg0, %arg0) {axis = 0 : i64} : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<5x1x1x1xi32>
    %2 = "tosa.sub"(%0, %1) : (tensor<1x1x1x1xi32>, tensor<5x1x1x1xi32>) -> tensor<5x1x1x1xi32>
    return %2 : tensor<5x1x1x1xi32>
  }
}

