module {
  func.func @main(%arg0: tensor<1x1x1x1xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<1x1x1x1xf32> {iree.identifier = "inputs_1"}, %arg2: tensor<1x1x1x1xf32> {iree.identifier = "inputs_2"}, %arg3: tensor<1x1x1x1xf32> {iree.identifier = "inputs_3"}) -> (tensor<1x1x1x5xf32> {iree.identifier = "Identity"}, tensor<1x1x1x5xi1> {iree.identifier = "Identity_1"}, tensor<1x1x1x5xf32> {iree.identifier = "Identity_2"}) {
    %0 = "tosa.const"() {value = dense<6.92162322> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.concat"(%arg3, %0, %arg2, %arg1, %arg0) {axis = 3 : i64} : (tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>, tensor<1x1x1x1xf32>) -> tensor<1x1x1x5xf32>
    %2 = "tosa.greater"(%1, %1) : (tensor<1x1x1x5xf32>, tensor<1x1x1x5xf32>) -> tensor<1x1x1x5xi1>
    %3 = "tosa.clamp"(%1) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x1x1x5xf32>) -> tensor<1x1x1x5xf32>
    return %3, %2, %1 : tensor<1x1x1x5xf32>, tensor<1x1x1x5xi1>, tensor<1x1x1x5xf32>
  }
}

