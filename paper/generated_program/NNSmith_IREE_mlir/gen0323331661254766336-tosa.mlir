module {
  func.func @main(%arg0: tensor<2xf32> {iree.identifier = "inputs_0"}, %arg1: tensor<2xf32> {iree.identifier = "inputs_1"}) -> (tensor<2x1x2x2xf32> {iree.identifier = "Identity"}) {
    %0 = "tosa.const"() {value = dense<5.95583725> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %1 = "tosa.const"() {value = dense<13.0285206> : tensor<1x1x1x1xf32>} : () -> tensor<1x1x1x1xf32>
    %2 = "tosa.const"() {value = dense<[[[[5.79881716], [6.74616814]]], [[[4.13260174], [6.28065062]]]]> : tensor<2x1x2x1xf32>} : () -> tensor<2x1x2x1xf32>
    %3 = "tosa.reshape"(%arg0) {new_shape = [1, 1, 1, 2]} : (tensor<2xf32>) -> tensor<1x1x1x2xf32>
    %4 = "tosa.sub"(%3, %2) : (tensor<1x1x1x2xf32>, tensor<2x1x2x1xf32>) -> tensor<2x1x2x2xf32>
    %5 = "tosa.reshape"(%arg1) {new_shape = [1, 1, 1, 2]} : (tensor<2xf32>) -> tensor<1x1x1x2xf32>
    %6 = "tosa.maximum"(%4, %5) : (tensor<2x1x2x2xf32>, tensor<1x1x1x2xf32>) -> tensor<2x1x2x2xf32>
    %7 = "tosa.negate"(%6) : (tensor<2x1x2x2xf32>) -> tensor<2x1x2x2xf32>
    %8 = "tosa.mul"(%7, %0) {shift = 0 : i32} : (tensor<2x1x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x2x2xf32>
    %9 = "tosa.add"(%8, %1) : (tensor<2x1x2x2xf32>, tensor<1x1x1x1xf32>) -> tensor<2x1x2x2xf32>
    %10 = "tosa.minimum"(%9, %9) : (tensor<2x1x2x2xf32>, tensor<2x1x2x2xf32>) -> tensor<2x1x2x2xf32>
    return %10 : tensor<2x1x2x2xf32>
  }
}

