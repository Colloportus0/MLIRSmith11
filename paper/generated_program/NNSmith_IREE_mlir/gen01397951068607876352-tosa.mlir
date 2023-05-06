module {
  func.func @main(%arg0: tensor<1x1x1x1x1xi32> {iree.identifier = "inputs_0"}) -> (tensor<1x1x1x1x1xi1> {iree.identifier = "Identity"}, tensor<1x1x1x1xi32> {iree.identifier = "Identity_1"}, tensor<1x1x1x1xi32> {iree.identifier = "Identity_2"}, tensor<1x1x1x1xi64> {iree.identifier = "Identity_3"}) {
    %0 = "tosa.const"() {value = dense<1> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %1 = "tosa.const"() {value = dense<-1> : tensor<1x1x1x1xi32>} : () -> tensor<1x1x1x1xi32>
    %2 = "tosa.const"() {value = dense<[0, 1, 3, 4, 2]> : tensor<5xi32>} : () -> tensor<5xi32>
    %3 = "tosa.const"() {value = dense<true> : tensor<1x1x1x1x1xi1>} : () -> tensor<1x1x1x1x1xi1>
    %4 = "tosa.transpose"(%arg0, %2) : (tensor<1x1x1x1x1xi32>, tensor<5xi32>) -> tensor<1x1x1x1x1xi32>
    %5 = "tosa.reshape"(%4) {new_shape = [1, 1, 1, 1]} : (tensor<1x1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %6 = "tosa.cast"(%5) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi64>
    %7 = "tosa.minimum"(%5, %0) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    %8 = "tosa.maximum"(%7, %1) : (tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>) -> tensor<1x1x1x1xi32>
    return %3, %8, %5, %6 : tensor<1x1x1x1x1xi1>, tensor<1x1x1x1xi32>, tensor<1x1x1x1xi32>, tensor<1x1x1x1xi64>
  }
}

