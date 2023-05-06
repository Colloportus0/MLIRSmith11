module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_11(dense<[[[5, 4]]]> : tensor<1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x i32>>>
  llvm.mlir.global internal constant @constant_10(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_9(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_8(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(4 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<4 x i64>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(4 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.addressof @constant_9 : !llvm.ptr<array<1 x i64>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %58 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %59 = llvm.insertvalue %57, %58[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %60 = llvm.insertvalue %57, %59[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.insertvalue %61, %60[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %63 = llvm.mlir.addressof @constant_10 : !llvm.ptr<array<4 x i64>>
    %64 = llvm.bitcast %63 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %65 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %66 = llvm.insertvalue %64, %65[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.mlir.constant(4 : index) : i64
    %71 = llvm.insertvalue %70, %69[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.mlir.addressof @constant_11 : !llvm.ptr<array<1 x array<1 x array<2 x i32>>>>
    %75 = llvm.bitcast %74 : !llvm.ptr<array<1 x array<1 x array<2 x i32>>>> to !llvm.ptr<i32>
    %76 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %77 = llvm.insertvalue %75, %76[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %78 = llvm.insertvalue %75, %77[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.insertvalue %79, %78[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.insertvalue %81, %80[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.insertvalue %83, %82[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.insertvalue %85, %84[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.insertvalue %87, %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.insertvalue %89, %88[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.insertvalue %91, %90[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.mlir.constant(2 : index) : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mlir.null : !llvm.ptr<i32>
    %102 = llvm.getelementptr %101[%100] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %103 = llvm.ptrtoint %102 : !llvm.ptr<i32> to i64
    %104 = llvm.mlir.constant(16 : index) : i64
    %105 = llvm.add %103, %104  : i64
    %106 = llvm.call @malloc(%105) : (i64) -> !llvm.ptr<i8>
    %107 = llvm.bitcast %106 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %108 = llvm.ptrtoint %107 : !llvm.ptr<i32> to i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.sub %104, %109  : i64
    %111 = llvm.add %108, %110  : i64
    %112 = llvm.urem %111, %104  : i64
    %113 = llvm.sub %111, %112  : i64
    %114 = llvm.inttoptr %113 : i64 to !llvm.ptr<i32>
    %115 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %116 = llvm.insertvalue %107, %115[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.insertvalue %114, %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.insertvalue %118, %117[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %93, %119[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %94, %120[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %95, %121[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %96, %122[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %99, %123[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %98, %124[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %96, %125[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %97, %126[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%128 : i64)
  ^bb1(%131: i64):  // 2 preds: ^bb0, ^bb11
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%133 : i64)
  ^bb3(%136: i64):  // 2 preds: ^bb2, ^bb10
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%138 : i64)
  ^bb5(%141: i64):  // 2 preds: ^bb4, ^bb9
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.mlir.constant(2 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%143 : i64)
  ^bb7(%146: i64):  // 2 preds: ^bb6, ^bb8
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %148 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.add %131, %136  : i64
    %150 = llvm.add %149, %141  : i64
    %151 = llvm.add %150, %13  : i64
    %152 = llvm.getelementptr %148[%151] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %153 = llvm.load %152 : !llvm.ptr<i32>
    %154 = llvm.extractvalue %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mul %136, %155  : i64
    %157 = llvm.mlir.constant(2 : index) : i64
    %158 = llvm.mul %141, %157  : i64
    %159 = llvm.add %156, %158  : i64
    %160 = llvm.add %159, %146  : i64
    %161 = llvm.getelementptr %154[%160] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %162 = llvm.load %161 : !llvm.ptr<i32>
    %163 = llvm.add %153, %162  : i32
    %164 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mul %131, %165  : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mul %136, %167  : i64
    %169 = llvm.add %166, %168  : i64
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mul %141, %170  : i64
    %172 = llvm.add %169, %171  : i64
    %173 = llvm.add %172, %146  : i64
    %174 = llvm.getelementptr %164[%173] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %163, %174 : !llvm.ptr<i32>
    %175 = llvm.add %146, %145  : i64
    llvm.br ^bb7(%175 : i64)
  ^bb9:  // pred: ^bb7
    %176 = llvm.add %141, %140  : i64
    llvm.br ^bb5(%176 : i64)
  ^bb10:  // pred: ^bb5
    %177 = llvm.add %136, %135  : i64
    llvm.br ^bb3(%177 : i64)
  ^bb11:  // pred: ^bb3
    %178 = llvm.add %131, %130  : i64
    llvm.br ^bb1(%178 : i64)
  ^bb12:  // pred: ^bb1
    %179 = llvm.mlir.constant(4 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.null : !llvm.ptr<i64>
    %182 = llvm.getelementptr %181[%179] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %183 = llvm.ptrtoint %182 : !llvm.ptr<i64> to i64
    %184 = llvm.mlir.constant(16 : index) : i64
    %185 = llvm.add %183, %184  : i64
    %186 = llvm.call @malloc(%185) : (i64) -> !llvm.ptr<i8>
    %187 = llvm.bitcast %186 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %188 = llvm.ptrtoint %187 : !llvm.ptr<i64> to i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.sub %184, %189  : i64
    %191 = llvm.add %188, %190  : i64
    %192 = llvm.urem %191, %184  : i64
    %193 = llvm.sub %191, %192  : i64
    %194 = llvm.inttoptr %193 : i64 to !llvm.ptr<i64>
    %195 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %196 = llvm.insertvalue %187, %195[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.insertvalue %194, %196[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.insertvalue %198, %197[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.insertvalue %179, %199[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.insertvalue %180, %200[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(4 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%202 : i64)
  ^bb13(%205: i64):  // 2 preds: ^bb12, ^bb14
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %207 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.getelementptr %207[%205] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %208 : !llvm.ptr<i64>
    %209 = llvm.add %205, %204  : i64
    llvm.br ^bb13(%209 : i64)
  ^bb15:  // pred: ^bb13
    %210 = llvm.mlir.constant(4 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.null : !llvm.ptr<i64>
    %213 = llvm.getelementptr %212[%210] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %214 = llvm.ptrtoint %213 : !llvm.ptr<i64> to i64
    %215 = llvm.mlir.constant(16 : index) : i64
    %216 = llvm.add %214, %215  : i64
    %217 = llvm.call @malloc(%216) : (i64) -> !llvm.ptr<i8>
    %218 = llvm.bitcast %217 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %219 = llvm.ptrtoint %218 : !llvm.ptr<i64> to i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.sub %215, %220  : i64
    %222 = llvm.add %219, %221  : i64
    %223 = llvm.urem %222, %215  : i64
    %224 = llvm.sub %222, %223  : i64
    %225 = llvm.inttoptr %224 : i64 to !llvm.ptr<i64>
    %226 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %227 = llvm.insertvalue %218, %226[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.insertvalue %225, %227[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.insertvalue %229, %228[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.insertvalue %210, %230[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.insertvalue %211, %231[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.mlir.constant(4 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%233 : i64)
  ^bb16(%236: i64):  // 2 preds: ^bb15, ^bb17
    %237 = llvm.icmp "slt" %236, %234 : i64
    llvm.cond_br %237, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %238 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.getelementptr %238[%236] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %240 = llvm.load %239 : !llvm.ptr<i64>
    %241 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %242 = llvm.load %241 : !llvm.ptr<i64>
    %243 = llvm.mul %240, %242  : i64
    %244 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.getelementptr %244[%236] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %243, %245 : !llvm.ptr<i64>
    %246 = llvm.add %236, %235  : i64
    llvm.br ^bb16(%246 : i64)
  ^bb18:  // pred: ^bb16
    %247 = llvm.mlir.constant(4 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.null : !llvm.ptr<i1>
    %250 = llvm.getelementptr %249[%247] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %251 = llvm.ptrtoint %250 : !llvm.ptr<i1> to i64
    %252 = llvm.mlir.constant(16 : index) : i64
    %253 = llvm.add %251, %252  : i64
    %254 = llvm.call @malloc(%253) : (i64) -> !llvm.ptr<i8>
    %255 = llvm.bitcast %254 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %256 = llvm.ptrtoint %255 : !llvm.ptr<i1> to i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.sub %252, %257  : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.urem %259, %252  : i64
    %261 = llvm.sub %259, %260  : i64
    %262 = llvm.inttoptr %261 : i64 to !llvm.ptr<i1>
    %263 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %264 = llvm.insertvalue %255, %263[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %265 = llvm.insertvalue %262, %264[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.insertvalue %266, %265[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %268 = llvm.insertvalue %247, %267[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %269 = llvm.insertvalue %248, %268[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.mlir.constant(0 : index) : i64
    %271 = llvm.mlir.constant(4 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%270 : i64)
  ^bb19(%273: i64):  // 2 preds: ^bb18, ^bb20
    %274 = llvm.icmp "slt" %273, %271 : i64
    llvm.cond_br %274, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %275 = llvm.extractvalue %55[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %276 = llvm.getelementptr %275[%273] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %277 = llvm.load %276 : !llvm.ptr<i64>
    %278 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %279 = llvm.getelementptr %278[%273] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %280 = llvm.load %279 : !llvm.ptr<i64>
    %281 = llvm.icmp "eq" %277, %280 : i64
    %282 = llvm.extractvalue %269[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.getelementptr %282[%273] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %281, %283 : !llvm.ptr<i1>
    %284 = llvm.add %273, %272  : i64
    llvm.br ^bb19(%284 : i64)
  ^bb21:  // pred: ^bb19
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.null : !llvm.ptr<i64>
    %288 = llvm.getelementptr %287[%285] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %289 = llvm.ptrtoint %288 : !llvm.ptr<i64> to i64
    %290 = llvm.mlir.constant(16 : index) : i64
    %291 = llvm.add %289, %290  : i64
    %292 = llvm.call @malloc(%291) : (i64) -> !llvm.ptr<i8>
    %293 = llvm.bitcast %292 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %294 = llvm.ptrtoint %293 : !llvm.ptr<i64> to i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.sub %290, %295  : i64
    %297 = llvm.add %294, %296  : i64
    %298 = llvm.urem %297, %290  : i64
    %299 = llvm.sub %297, %298  : i64
    %300 = llvm.inttoptr %299 : i64 to !llvm.ptr<i64>
    %301 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %302 = llvm.insertvalue %293, %301[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.insertvalue %300, %302[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.insertvalue %304, %303[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %285, %305[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.insertvalue %286, %306[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%308 : i64)
  ^bb22(%311: i64):  // 2 preds: ^bb21, ^bb23
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %313 = llvm.extractvalue %269[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.getelementptr %313[%311] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %315 = llvm.load %314 : !llvm.ptr<i1>
    %316 = llvm.extractvalue %201[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %317 = llvm.getelementptr %316[%311] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %318 = llvm.load %317 : !llvm.ptr<i64>
    %319 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.getelementptr %319[%311] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %321 = llvm.load %320 : !llvm.ptr<i64>
    %322 = llvm.select %315, %318, %321 : i1, i64
    %323 = llvm.extractvalue %307[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.getelementptr %323[%311] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %322, %324 : !llvm.ptr<i64>
    %325 = llvm.add %311, %310  : i64
    llvm.br ^bb22(%325 : i64)
  ^bb24:  // pred: ^bb22
    %326 = llvm.extractvalue %307[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %327 = llvm.getelementptr %326[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %328 = llvm.load %327 : !llvm.ptr<i64>
    %329 = llvm.extractvalue %307[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.getelementptr %329[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %331 = llvm.load %330 : !llvm.ptr<i64>
    %332 = llvm.extractvalue %307[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %333 = llvm.getelementptr %332[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %334 = llvm.load %333 : !llvm.ptr<i64>
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mul %335, %334  : i64
    %338 = llvm.mul %337, %331  : i64
    %339 = llvm.mul %338, %328  : i64
    %340 = llvm.mlir.null : !llvm.ptr<i32>
    %341 = llvm.getelementptr %340[%339] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %342 = llvm.ptrtoint %341 : !llvm.ptr<i32> to i64
    %343 = llvm.mlir.constant(16 : index) : i64
    %344 = llvm.add %342, %343  : i64
    %345 = llvm.call @malloc(%344) : (i64) -> !llvm.ptr<i8>
    %346 = llvm.bitcast %345 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %347 = llvm.ptrtoint %346 : !llvm.ptr<i32> to i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.sub %343, %348  : i64
    %350 = llvm.add %347, %349  : i64
    %351 = llvm.urem %350, %343  : i64
    %352 = llvm.sub %350, %351  : i64
    %353 = llvm.inttoptr %352 : i64 to !llvm.ptr<i32>
    %354 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %355 = llvm.insertvalue %346, %354[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %353, %355[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.insertvalue %357, %356[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %328, %358[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %331, %359[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.insertvalue %334, %360[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.insertvalue %335, %361[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %338, %362[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.insertvalue %337, %363[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.insertvalue %335, %364[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.insertvalue %336, %365[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%367 : i64)
  ^bb25(%369: i64):  // 2 preds: ^bb24, ^bb35
    %370 = llvm.icmp "slt" %369, %328 : i64
    llvm.cond_br %370, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%371 : i64)
  ^bb27(%373: i64):  // 2 preds: ^bb26, ^bb34
    %374 = llvm.icmp "slt" %373, %331 : i64
    llvm.cond_br %374, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%375 : i64)
  ^bb29(%377: i64):  // 2 preds: ^bb28, ^bb33
    %378 = llvm.icmp "slt" %377, %334 : i64
    llvm.cond_br %378, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%379 : i64)
  ^bb31(%382: i64):  // 2 preds: ^bb30, ^bb32
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %384 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.mlir.constant(2 : index) : i64
    %386 = llvm.mul %13, %385  : i64
    %387 = llvm.mlir.constant(2 : index) : i64
    %388 = llvm.mul %13, %387  : i64
    %389 = llvm.add %386, %388  : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mul %13, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.add %392, %382  : i64
    %394 = llvm.getelementptr %384[%393] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %395 = llvm.load %394 : !llvm.ptr<i32>
    %396 = llvm.extractvalue %366[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.extractvalue %366[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.mul %369, %397  : i64
    %399 = llvm.extractvalue %366[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.mul %373, %399  : i64
    %401 = llvm.add %398, %400  : i64
    %402 = llvm.mlir.constant(2 : index) : i64
    %403 = llvm.mul %377, %402  : i64
    %404 = llvm.add %401, %403  : i64
    %405 = llvm.add %404, %382  : i64
    %406 = llvm.getelementptr %396[%405] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %395, %406 : !llvm.ptr<i32>
    %407 = llvm.add %382, %381  : i64
    llvm.br ^bb31(%407 : i64)
  ^bb33:  // pred: ^bb31
    %408 = llvm.add %377, %376  : i64
    llvm.br ^bb29(%408 : i64)
  ^bb34:  // pred: ^bb29
    %409 = llvm.add %373, %372  : i64
    llvm.br ^bb27(%409 : i64)
  ^bb35:  // pred: ^bb27
    %410 = llvm.add %369, %368  : i64
    llvm.br ^bb25(%410 : i64)
  ^bb36:  // pred: ^bb25
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.constant(2 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mlir.null : !llvm.ptr<i1>
    %420 = llvm.getelementptr %419[%418] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %421 = llvm.ptrtoint %420 : !llvm.ptr<i1> to i64
    %422 = llvm.mlir.constant(16 : index) : i64
    %423 = llvm.add %421, %422  : i64
    %424 = llvm.call @malloc(%423) : (i64) -> !llvm.ptr<i8>
    %425 = llvm.bitcast %424 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %426 = llvm.ptrtoint %425 : !llvm.ptr<i1> to i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.sub %422, %427  : i64
    %429 = llvm.add %426, %428  : i64
    %430 = llvm.urem %429, %422  : i64
    %431 = llvm.sub %429, %430  : i64
    %432 = llvm.inttoptr %431 : i64 to !llvm.ptr<i1>
    %433 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %434 = llvm.insertvalue %425, %433[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %432, %434[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.insertvalue %436, %435[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %411, %437[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %412, %438[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %413, %439[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %414, %440[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %417, %441[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %416, %442[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %414, %443[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %415, %444[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%446 : i64)
  ^bb37(%449: i64):  // 2 preds: ^bb36, ^bb47
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%451 : i64)
  ^bb39(%454: i64):  // 2 preds: ^bb38, ^bb46
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%456 : i64)
  ^bb41(%459: i64):  // 2 preds: ^bb40, ^bb45
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%461 : i64)
  ^bb43(%464: i64):  // 2 preds: ^bb42, ^bb44
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %466 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.add %13, %13  : i64
    %468 = llvm.add %467, %13  : i64
    %469 = llvm.add %468, %13  : i64
    %470 = llvm.getelementptr %466[%469] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %471 = llvm.load %470 : !llvm.ptr<i32>
    %472 = llvm.extractvalue %366[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.extractvalue %366[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.mul %449, %473  : i64
    %475 = llvm.extractvalue %366[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.mul %454, %475  : i64
    %477 = llvm.add %474, %476  : i64
    %478 = llvm.mlir.constant(2 : index) : i64
    %479 = llvm.mul %459, %478  : i64
    %480 = llvm.add %477, %479  : i64
    %481 = llvm.add %480, %464  : i64
    %482 = llvm.getelementptr %472[%481] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %483 = llvm.load %482 : !llvm.ptr<i32>
    %484 = llvm.icmp "sgt" %471, %483 : i32
    %485 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.mlir.constant(2 : index) : i64
    %487 = llvm.mul %449, %486  : i64
    %488 = llvm.mlir.constant(2 : index) : i64
    %489 = llvm.mul %454, %488  : i64
    %490 = llvm.add %487, %489  : i64
    %491 = llvm.mlir.constant(2 : index) : i64
    %492 = llvm.mul %459, %491  : i64
    %493 = llvm.add %490, %492  : i64
    %494 = llvm.add %493, %464  : i64
    %495 = llvm.getelementptr %485[%494] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %484, %495 : !llvm.ptr<i1>
    %496 = llvm.add %464, %463  : i64
    llvm.br ^bb43(%496 : i64)
  ^bb45:  // pred: ^bb43
    %497 = llvm.add %459, %458  : i64
    llvm.br ^bb41(%497 : i64)
  ^bb46:  // pred: ^bb41
    %498 = llvm.add %454, %453  : i64
    llvm.br ^bb39(%498 : i64)
  ^bb47:  // pred: ^bb39
    %499 = llvm.add %449, %448  : i64
    llvm.br ^bb37(%499 : i64)
  ^bb48:  // pred: ^bb37
    %500 = llvm.mlir.constant(1 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    %503 = llvm.mlir.constant(2 : index) : i64
    %504 = llvm.mlir.constant(1 : index) : i64
    %505 = llvm.mlir.constant(2 : index) : i64
    %506 = llvm.mlir.constant(2 : index) : i64
    %507 = llvm.mlir.constant(2 : index) : i64
    %508 = llvm.mlir.null : !llvm.ptr<i32>
    %509 = llvm.getelementptr %508[%507] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %510 = llvm.ptrtoint %509 : !llvm.ptr<i32> to i64
    %511 = llvm.mlir.constant(16 : index) : i64
    %512 = llvm.add %510, %511  : i64
    %513 = llvm.call @malloc(%512) : (i64) -> !llvm.ptr<i8>
    %514 = llvm.bitcast %513 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %515 = llvm.ptrtoint %514 : !llvm.ptr<i32> to i64
    %516 = llvm.mlir.constant(1 : index) : i64
    %517 = llvm.sub %511, %516  : i64
    %518 = llvm.add %515, %517  : i64
    %519 = llvm.urem %518, %511  : i64
    %520 = llvm.sub %518, %519  : i64
    %521 = llvm.inttoptr %520 : i64 to !llvm.ptr<i32>
    %522 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %523 = llvm.insertvalue %514, %522[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %524 = llvm.insertvalue %521, %523[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.mlir.constant(0 : index) : i64
    %526 = llvm.insertvalue %525, %524[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %527 = llvm.insertvalue %500, %526[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.insertvalue %501, %527[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %529 = llvm.insertvalue %502, %528[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %530 = llvm.insertvalue %503, %529[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %531 = llvm.insertvalue %506, %530[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %532 = llvm.insertvalue %505, %531[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %533 = llvm.insertvalue %503, %532[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %534 = llvm.insertvalue %504, %533[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %535 = llvm.mlir.constant(0 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    %537 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%535 : i64)
  ^bb49(%538: i64):  // 2 preds: ^bb48, ^bb59
    %539 = llvm.icmp "slt" %538, %536 : i64
    llvm.cond_br %539, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %540 = llvm.mlir.constant(0 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    %542 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%540 : i64)
  ^bb51(%543: i64):  // 2 preds: ^bb50, ^bb58
    %544 = llvm.icmp "slt" %543, %541 : i64
    llvm.cond_br %544, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %545 = llvm.mlir.constant(0 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%545 : i64)
  ^bb53(%548: i64):  // 2 preds: ^bb52, ^bb57
    %549 = llvm.icmp "slt" %548, %546 : i64
    llvm.cond_br %549, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %550 = llvm.mlir.constant(0 : index) : i64
    %551 = llvm.mlir.constant(2 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%550 : i64)
  ^bb55(%553: i64):  // 2 preds: ^bb54, ^bb56
    %554 = llvm.icmp "slt" %553, %551 : i64
    llvm.cond_br %554, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %555 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %556 = llvm.mlir.constant(2 : index) : i64
    %557 = llvm.mul %538, %556  : i64
    %558 = llvm.mlir.constant(2 : index) : i64
    %559 = llvm.mul %543, %558  : i64
    %560 = llvm.add %557, %559  : i64
    %561 = llvm.mlir.constant(2 : index) : i64
    %562 = llvm.mul %548, %561  : i64
    %563 = llvm.add %560, %562  : i64
    %564 = llvm.add %563, %553  : i64
    %565 = llvm.getelementptr %555[%564] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %566 = llvm.load %565 : !llvm.ptr<i32>
    %567 = llvm.extractvalue %534[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %568 = llvm.mlir.constant(2 : index) : i64
    %569 = llvm.mul %538, %568  : i64
    %570 = llvm.mlir.constant(2 : index) : i64
    %571 = llvm.mul %543, %570  : i64
    %572 = llvm.add %569, %571  : i64
    %573 = llvm.mlir.constant(2 : index) : i64
    %574 = llvm.mul %548, %573  : i64
    %575 = llvm.add %572, %574  : i64
    %576 = llvm.add %575, %553  : i64
    %577 = llvm.getelementptr %567[%576] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %566, %577 : !llvm.ptr<i32>
    %578 = llvm.add %553, %552  : i64
    llvm.br ^bb55(%578 : i64)
  ^bb57:  // pred: ^bb55
    %579 = llvm.add %548, %547  : i64
    llvm.br ^bb53(%579 : i64)
  ^bb58:  // pred: ^bb53
    %580 = llvm.add %543, %542  : i64
    llvm.br ^bb51(%580 : i64)
  ^bb59:  // pred: ^bb51
    %581 = llvm.add %538, %537  : i64
    llvm.br ^bb49(%581 : i64)
  ^bb60:  // pred: ^bb49
    %582 = llvm.mlir.constant(4 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    %584 = llvm.mlir.null : !llvm.ptr<i64>
    %585 = llvm.getelementptr %584[%582] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %586 = llvm.ptrtoint %585 : !llvm.ptr<i64> to i64
    %587 = llvm.mlir.constant(16 : index) : i64
    %588 = llvm.add %586, %587  : i64
    %589 = llvm.call @malloc(%588) : (i64) -> !llvm.ptr<i8>
    %590 = llvm.bitcast %589 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %591 = llvm.ptrtoint %590 : !llvm.ptr<i64> to i64
    %592 = llvm.mlir.constant(1 : index) : i64
    %593 = llvm.sub %587, %592  : i64
    %594 = llvm.add %591, %593  : i64
    %595 = llvm.urem %594, %587  : i64
    %596 = llvm.sub %594, %595  : i64
    %597 = llvm.inttoptr %596 : i64 to !llvm.ptr<i64>
    %598 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %599 = llvm.insertvalue %590, %598[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %600 = llvm.insertvalue %597, %599[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %601 = llvm.mlir.constant(0 : index) : i64
    %602 = llvm.insertvalue %601, %600[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %603 = llvm.insertvalue %582, %602[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %604 = llvm.insertvalue %583, %603[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %605 = llvm.mlir.constant(0 : index) : i64
    %606 = llvm.mlir.constant(4 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%605 : i64)
  ^bb61(%608: i64):  // 2 preds: ^bb60, ^bb62
    %609 = llvm.icmp "slt" %608, %606 : i64
    llvm.cond_br %609, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %610 = llvm.extractvalue %604[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %611 = llvm.getelementptr %610[%608] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %611 : !llvm.ptr<i64>
    %612 = llvm.add %608, %607  : i64
    llvm.br ^bb61(%612 : i64)
  ^bb63:  // pred: ^bb61
    %613 = llvm.mlir.constant(4 : index) : i64
    %614 = llvm.mlir.constant(1 : index) : i64
    %615 = llvm.mlir.null : !llvm.ptr<i64>
    %616 = llvm.getelementptr %615[%613] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %617 = llvm.ptrtoint %616 : !llvm.ptr<i64> to i64
    %618 = llvm.mlir.constant(16 : index) : i64
    %619 = llvm.add %617, %618  : i64
    %620 = llvm.call @malloc(%619) : (i64) -> !llvm.ptr<i8>
    %621 = llvm.bitcast %620 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %622 = llvm.ptrtoint %621 : !llvm.ptr<i64> to i64
    %623 = llvm.mlir.constant(1 : index) : i64
    %624 = llvm.sub %618, %623  : i64
    %625 = llvm.add %622, %624  : i64
    %626 = llvm.urem %625, %618  : i64
    %627 = llvm.sub %625, %626  : i64
    %628 = llvm.inttoptr %627 : i64 to !llvm.ptr<i64>
    %629 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %630 = llvm.insertvalue %621, %629[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %631 = llvm.insertvalue %628, %630[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %632 = llvm.mlir.constant(0 : index) : i64
    %633 = llvm.insertvalue %632, %631[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %634 = llvm.insertvalue %613, %633[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %635 = llvm.insertvalue %614, %634[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %636 = llvm.mlir.constant(0 : index) : i64
    %637 = llvm.mlir.constant(4 : index) : i64
    %638 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%636 : i64)
  ^bb64(%639: i64):  // 2 preds: ^bb63, ^bb65
    %640 = llvm.icmp "slt" %639, %637 : i64
    llvm.cond_br %640, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %641 = llvm.extractvalue %604[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %642 = llvm.getelementptr %641[%639] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %643 = llvm.load %642 : !llvm.ptr<i64>
    %644 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %645 = llvm.load %644 : !llvm.ptr<i64>
    %646 = llvm.mul %643, %645  : i64
    %647 = llvm.extractvalue %635[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %648 = llvm.getelementptr %647[%639] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %646, %648 : !llvm.ptr<i64>
    %649 = llvm.add %639, %638  : i64
    llvm.br ^bb64(%649 : i64)
  ^bb66:  // pred: ^bb64
    %650 = llvm.mlir.constant(4 : index) : i64
    %651 = llvm.mlir.constant(1 : index) : i64
    %652 = llvm.mlir.null : !llvm.ptr<i1>
    %653 = llvm.getelementptr %652[%650] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %654 = llvm.ptrtoint %653 : !llvm.ptr<i1> to i64
    %655 = llvm.mlir.constant(16 : index) : i64
    %656 = llvm.add %654, %655  : i64
    %657 = llvm.call @malloc(%656) : (i64) -> !llvm.ptr<i8>
    %658 = llvm.bitcast %657 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %659 = llvm.ptrtoint %658 : !llvm.ptr<i1> to i64
    %660 = llvm.mlir.constant(1 : index) : i64
    %661 = llvm.sub %655, %660  : i64
    %662 = llvm.add %659, %661  : i64
    %663 = llvm.urem %662, %655  : i64
    %664 = llvm.sub %662, %663  : i64
    %665 = llvm.inttoptr %664 : i64 to !llvm.ptr<i1>
    %666 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %667 = llvm.insertvalue %658, %666[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %668 = llvm.insertvalue %665, %667[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %669 = llvm.mlir.constant(0 : index) : i64
    %670 = llvm.insertvalue %669, %668[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %671 = llvm.insertvalue %650, %670[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %672 = llvm.insertvalue %651, %671[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %673 = llvm.mlir.constant(0 : index) : i64
    %674 = llvm.mlir.constant(4 : index) : i64
    %675 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%673 : i64)
  ^bb67(%676: i64):  // 2 preds: ^bb66, ^bb68
    %677 = llvm.icmp "slt" %676, %674 : i64
    llvm.cond_br %677, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %678 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %679 = llvm.getelementptr %678[%676] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %680 = llvm.load %679 : !llvm.ptr<i64>
    %681 = llvm.extractvalue %635[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %682 = llvm.getelementptr %681[%676] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %683 = llvm.load %682 : !llvm.ptr<i64>
    %684 = llvm.icmp "eq" %680, %683 : i64
    %685 = llvm.extractvalue %672[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %686 = llvm.getelementptr %685[%676] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %684, %686 : !llvm.ptr<i1>
    %687 = llvm.add %676, %675  : i64
    llvm.br ^bb67(%687 : i64)
  ^bb69:  // pred: ^bb67
    %688 = llvm.mlir.constant(4 : index) : i64
    %689 = llvm.mlir.constant(1 : index) : i64
    %690 = llvm.mlir.null : !llvm.ptr<i64>
    %691 = llvm.getelementptr %690[%688] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %692 = llvm.ptrtoint %691 : !llvm.ptr<i64> to i64
    %693 = llvm.mlir.constant(16 : index) : i64
    %694 = llvm.add %692, %693  : i64
    %695 = llvm.call @malloc(%694) : (i64) -> !llvm.ptr<i8>
    %696 = llvm.bitcast %695 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %697 = llvm.ptrtoint %696 : !llvm.ptr<i64> to i64
    %698 = llvm.mlir.constant(1 : index) : i64
    %699 = llvm.sub %693, %698  : i64
    %700 = llvm.add %697, %699  : i64
    %701 = llvm.urem %700, %693  : i64
    %702 = llvm.sub %700, %701  : i64
    %703 = llvm.inttoptr %702 : i64 to !llvm.ptr<i64>
    %704 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %705 = llvm.insertvalue %696, %704[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %706 = llvm.insertvalue %703, %705[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %707 = llvm.mlir.constant(0 : index) : i64
    %708 = llvm.insertvalue %707, %706[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %709 = llvm.insertvalue %688, %708[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %710 = llvm.insertvalue %689, %709[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %711 = llvm.mlir.constant(0 : index) : i64
    %712 = llvm.mlir.constant(4 : index) : i64
    %713 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%711 : i64)
  ^bb70(%714: i64):  // 2 preds: ^bb69, ^bb71
    %715 = llvm.icmp "slt" %714, %712 : i64
    llvm.cond_br %715, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %716 = llvm.extractvalue %672[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %717 = llvm.getelementptr %716[%714] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %718 = llvm.load %717 : !llvm.ptr<i1>
    %719 = llvm.extractvalue %604[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %720 = llvm.getelementptr %719[%714] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %721 = llvm.load %720 : !llvm.ptr<i64>
    %722 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %723 = llvm.getelementptr %722[%714] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %724 = llvm.load %723 : !llvm.ptr<i64>
    %725 = llvm.select %718, %721, %724 : i1, i64
    %726 = llvm.extractvalue %710[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %727 = llvm.getelementptr %726[%714] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %725, %727 : !llvm.ptr<i64>
    %728 = llvm.add %714, %713  : i64
    llvm.br ^bb70(%728 : i64)
  ^bb72:  // pred: ^bb70
    %729 = llvm.mlir.constant(1 : index) : i64
    %730 = llvm.mlir.constant(1 : index) : i64
    %731 = llvm.mlir.constant(1 : index) : i64
    %732 = llvm.mlir.constant(2 : index) : i64
    %733 = llvm.mlir.constant(1 : index) : i64
    %734 = llvm.mlir.constant(2 : index) : i64
    %735 = llvm.mlir.constant(2 : index) : i64
    %736 = llvm.mlir.constant(2 : index) : i64
    %737 = llvm.mlir.null : !llvm.ptr<i32>
    %738 = llvm.getelementptr %737[%736] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %739 = llvm.ptrtoint %738 : !llvm.ptr<i32> to i64
    %740 = llvm.mlir.constant(16 : index) : i64
    %741 = llvm.add %739, %740  : i64
    %742 = llvm.call @malloc(%741) : (i64) -> !llvm.ptr<i8>
    %743 = llvm.bitcast %742 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %744 = llvm.ptrtoint %743 : !llvm.ptr<i32> to i64
    %745 = llvm.mlir.constant(1 : index) : i64
    %746 = llvm.sub %740, %745  : i64
    %747 = llvm.add %744, %746  : i64
    %748 = llvm.urem %747, %740  : i64
    %749 = llvm.sub %747, %748  : i64
    %750 = llvm.inttoptr %749 : i64 to !llvm.ptr<i32>
    %751 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %752 = llvm.insertvalue %743, %751[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %753 = llvm.insertvalue %750, %752[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %754 = llvm.mlir.constant(0 : index) : i64
    %755 = llvm.insertvalue %754, %753[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %756 = llvm.insertvalue %729, %755[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %757 = llvm.insertvalue %730, %756[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %758 = llvm.insertvalue %731, %757[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %759 = llvm.insertvalue %732, %758[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %760 = llvm.insertvalue %735, %759[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %761 = llvm.insertvalue %734, %760[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %762 = llvm.insertvalue %732, %761[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %763 = llvm.insertvalue %733, %762[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %764 = llvm.mlir.constant(0 : index) : i64
    %765 = llvm.mlir.constant(1 : index) : i64
    %766 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%764 : i64)
  ^bb73(%767: i64):  // 2 preds: ^bb72, ^bb83
    %768 = llvm.icmp "slt" %767, %765 : i64
    llvm.cond_br %768, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %769 = llvm.mlir.constant(0 : index) : i64
    %770 = llvm.mlir.constant(1 : index) : i64
    %771 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%769 : i64)
  ^bb75(%772: i64):  // 2 preds: ^bb74, ^bb82
    %773 = llvm.icmp "slt" %772, %770 : i64
    llvm.cond_br %773, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %774 = llvm.mlir.constant(0 : index) : i64
    %775 = llvm.mlir.constant(1 : index) : i64
    %776 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%774 : i64)
  ^bb77(%777: i64):  // 2 preds: ^bb76, ^bb81
    %778 = llvm.icmp "slt" %777, %775 : i64
    llvm.cond_br %778, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %779 = llvm.mlir.constant(0 : index) : i64
    %780 = llvm.mlir.constant(2 : index) : i64
    %781 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%779 : i64)
  ^bb79(%782: i64):  // 2 preds: ^bb78, ^bb80
    %783 = llvm.icmp "slt" %782, %780 : i64
    llvm.cond_br %783, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %784 = llvm.extractvalue %534[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %785 = llvm.mlir.constant(2 : index) : i64
    %786 = llvm.mul %13, %785  : i64
    %787 = llvm.mlir.constant(2 : index) : i64
    %788 = llvm.mul %13, %787  : i64
    %789 = llvm.add %786, %788  : i64
    %790 = llvm.mlir.constant(2 : index) : i64
    %791 = llvm.mul %13, %790  : i64
    %792 = llvm.add %789, %791  : i64
    %793 = llvm.add %792, %782  : i64
    %794 = llvm.getelementptr %784[%793] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %795 = llvm.load %794 : !llvm.ptr<i32>
    %796 = llvm.extractvalue %763[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %797 = llvm.mlir.constant(2 : index) : i64
    %798 = llvm.mul %767, %797  : i64
    %799 = llvm.mlir.constant(2 : index) : i64
    %800 = llvm.mul %772, %799  : i64
    %801 = llvm.add %798, %800  : i64
    %802 = llvm.mlir.constant(2 : index) : i64
    %803 = llvm.mul %777, %802  : i64
    %804 = llvm.add %801, %803  : i64
    %805 = llvm.add %804, %782  : i64
    %806 = llvm.getelementptr %796[%805] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %795, %806 : !llvm.ptr<i32>
    %807 = llvm.add %782, %781  : i64
    llvm.br ^bb79(%807 : i64)
  ^bb81:  // pred: ^bb79
    %808 = llvm.add %777, %776  : i64
    llvm.br ^bb77(%808 : i64)
  ^bb82:  // pred: ^bb77
    %809 = llvm.add %772, %771  : i64
    llvm.br ^bb75(%809 : i64)
  ^bb83:  // pred: ^bb75
    %810 = llvm.add %767, %766  : i64
    llvm.br ^bb73(%810 : i64)
  ^bb84:  // pred: ^bb73
    %811 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %812 = llvm.insertvalue %445, %811[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %813 = llvm.insertvalue %763, %812[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %813 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %92[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.getelementptr %50[%113] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %114 : !llvm.ptr<ptr<i8>>
    %115 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %115 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

