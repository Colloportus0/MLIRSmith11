module {
  func.func @main(%arg0: tensor<1x1x1x1x1xf16> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf16> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf16> {iree.identifier = "inputs_2"}, %arg3: tensor<1x1x1x1xf16> {iree.identifier = "inputs_3"}, %arg4: tensor<4xf16> {iree.identifier = "inputs_4"}) -> (tensor<1x1x1x4xf16> {iree.identifier = "Identity"}, tensor<1x1x1x4xf16> {iree.identifier = "Identity_1"}) {
    %0 = "tosa.const"() {value = dense<[1, 2, 3, 4, 0]> : tensor<5xi32>} : () -> tensor<5xi32>
    %1 = "tosa.reshape"(%arg4) {new_shape = [1, 1, 1, 4]} : (tensor<4xf16>) -> tensor<1x1x1x4xf16>
    %2 = "tosa.transpose"(%arg0, %0) : (tensor<1x1x1x1x1xf16>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %3 = "tosa.reshape"(%2) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xf16>
    %4 = "tosa.concat"(%arg3, %arg2, %3, %arg1) {axis = 3 : i64} : (tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>, tensor<1x1x1x1xf16>) -> tensor<1x1x1x4xf16>
    %5 = "tosa.mul"(%4, %1) {shift = 0 : i32} : (tensor<1x1x1x4xf16>, tensor<1x1x1x4xf16>) -> tensor<1x1x1x4xf16>
    %6 = "tosa.mul"(%5, %4) {shift = 0 : i32} : (tensor<1x1x1x4xf16>, tensor<1x1x1x4xf16>) -> tensor<1x1x1x4xf16>
    %7 = "tosa.sub"(%4, %5) : (tensor<1x1x1x4xf16>, tensor<1x1x1x4xf16>) -> tensor<1x1x1x4xf16>
    return %6, %7 : tensor<1x1x1x4xf16>, tensor<1x1x1x4xf16>
  }
}

