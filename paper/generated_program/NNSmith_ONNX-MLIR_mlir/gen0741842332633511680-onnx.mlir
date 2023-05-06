module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 4 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<6> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<[1, 4, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[1, 4, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v7_0", "v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0", "v4_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg18, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg19, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg20, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg21, %22[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(0 : i64) : i64
    %25 = llvm.mlir.constant(-1 : i64) : i64
    %26 = llvm.mlir.constant(1 : i64) : i64
    %27 = llvm.mlir.constant(-2147483648 : i32) : i32
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i64>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(4 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %54 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %55 = llvm.bitcast %54 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %56 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %57 = llvm.insertvalue %55, %56[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.insertvalue %55, %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.insertvalue %59, %58[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(4 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %66 = llvm.bitcast %65 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %67 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %72 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %73 = llvm.bitcast %72 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %74 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %75 = llvm.insertvalue %73, %74[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %73, %75[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.insertvalue %77, %76[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.insertvalue %79, %78[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.insertvalue %81, %80[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.insertvalue %83, %82[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.insertvalue %85, %84[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.insertvalue %87, %86[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.insertvalue %89, %88[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.insertvalue %91, %90[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.insertvalue %93, %92[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(4 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.constant(4 : index) : i64
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
    %120 = llvm.insertvalue %95, %119[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %96, %120[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %97, %121[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %98, %122[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %96, %123[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %97, %124[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %98, %125[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %99, %126[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%143 : i64)
  ^bb7(%146: i64):  // 2 preds: ^bb6, ^bb8
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %148 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.add %131, %136  : i64
    %150 = llvm.add %149, %141  : i64
    %151 = llvm.add %150, %146  : i64
    %152 = llvm.getelementptr %148[%151] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %153 = llvm.load %152 : !llvm.ptr<i32>
    %154 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.mlir.constant(4 : index) : i64
    %156 = llvm.mul %131, %155  : i64
    %157 = llvm.add %156, %136  : i64
    %158 = llvm.add %157, %141  : i64
    %159 = llvm.add %158, %146  : i64
    %160 = llvm.getelementptr %154[%159] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %153, %160 : !llvm.ptr<i32>
    %161 = llvm.add %146, %145  : i64
    llvm.br ^bb7(%161 : i64)
  ^bb9:  // pred: ^bb7
    %162 = llvm.add %141, %140  : i64
    llvm.br ^bb5(%162 : i64)
  ^bb10:  // pred: ^bb5
    %163 = llvm.add %136, %135  : i64
    llvm.br ^bb3(%163 : i64)
  ^bb11:  // pred: ^bb3
    %164 = llvm.add %131, %130  : i64
    llvm.br ^bb1(%164 : i64)
  ^bb12:  // pred: ^bb1
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%165 : i64)
  ^bb13(%168: i64):  // 2 preds: ^bb12, ^bb23
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%170 : i64)
  ^bb15(%173: i64):  // 2 preds: ^bb14, ^bb22
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%175 : i64)
  ^bb17(%178: i64):  // 2 preds: ^bb16, ^bb21
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%180 : i64)
  ^bb19(%183: i64):  // 2 preds: ^bb18, ^bb20
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.add %173, %185  : i64
    %187 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.add %168, %173  : i64
    %189 = llvm.add %188, %178  : i64
    %190 = llvm.add %189, %183  : i64
    %191 = llvm.getelementptr %187[%190] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %192 = llvm.load %191 : !llvm.ptr<i32>
    %193 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.mlir.constant(4 : index) : i64
    %195 = llvm.mul %168, %194  : i64
    %196 = llvm.add %195, %186  : i64
    %197 = llvm.add %196, %178  : i64
    %198 = llvm.add %197, %183  : i64
    %199 = llvm.getelementptr %193[%198] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %192, %199 : !llvm.ptr<i32>
    %200 = llvm.add %183, %182  : i64
    llvm.br ^bb19(%200 : i64)
  ^bb21:  // pred: ^bb19
    %201 = llvm.add %178, %177  : i64
    llvm.br ^bb17(%201 : i64)
  ^bb22:  // pred: ^bb17
    %202 = llvm.add %173, %172  : i64
    llvm.br ^bb15(%202 : i64)
  ^bb23:  // pred: ^bb15
    %203 = llvm.add %168, %167  : i64
    llvm.br ^bb13(%203 : i64)
  ^bb24:  // pred: ^bb13
    %204 = llvm.mlir.constant(0 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%204 : i64)
  ^bb25(%207: i64):  // 2 preds: ^bb24, ^bb35
    %208 = llvm.icmp "slt" %207, %205 : i64
    llvm.cond_br %208, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%209 : i64)
  ^bb27(%212: i64):  // 2 preds: ^bb26, ^bb34
    %213 = llvm.icmp "slt" %212, %210 : i64
    llvm.cond_br %213, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%214 : i64)
  ^bb29(%217: i64):  // 2 preds: ^bb28, ^bb33
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%219 : i64)
  ^bb31(%222: i64):  // 2 preds: ^bb30, ^bb32
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.add %212, %224  : i64
    %226 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.add %207, %212  : i64
    %228 = llvm.add %227, %217  : i64
    %229 = llvm.add %228, %222  : i64
    %230 = llvm.getelementptr %226[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %231 = llvm.load %230 : !llvm.ptr<i32>
    %232 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.mlir.constant(4 : index) : i64
    %234 = llvm.mul %207, %233  : i64
    %235 = llvm.add %234, %225  : i64
    %236 = llvm.add %235, %217  : i64
    %237 = llvm.add %236, %222  : i64
    %238 = llvm.getelementptr %232[%237] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %231, %238 : !llvm.ptr<i32>
    %239 = llvm.add %222, %221  : i64
    llvm.br ^bb31(%239 : i64)
  ^bb33:  // pred: ^bb31
    %240 = llvm.add %217, %216  : i64
    llvm.br ^bb29(%240 : i64)
  ^bb34:  // pred: ^bb29
    %241 = llvm.add %212, %211  : i64
    llvm.br ^bb27(%241 : i64)
  ^bb35:  // pred: ^bb27
    %242 = llvm.add %207, %206  : i64
    llvm.br ^bb25(%242 : i64)
  ^bb36:  // pred: ^bb25
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%243 : i64)
  ^bb37(%246: i64):  // 2 preds: ^bb36, ^bb47
    %247 = llvm.icmp "slt" %246, %244 : i64
    llvm.cond_br %247, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%248 : i64)
  ^bb39(%251: i64):  // 2 preds: ^bb38, ^bb46
    %252 = llvm.icmp "slt" %251, %249 : i64
    llvm.cond_br %252, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%253 : i64)
  ^bb41(%256: i64):  // 2 preds: ^bb40, ^bb45
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%258 : i64)
  ^bb43(%261: i64):  // 2 preds: ^bb42, ^bb44
    %262 = llvm.icmp "slt" %261, %259 : i64
    llvm.cond_br %262, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %263 = llvm.mlir.constant(3 : index) : i64
    %264 = llvm.add %251, %263  : i64
    %265 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.add %246, %251  : i64
    %267 = llvm.add %266, %256  : i64
    %268 = llvm.add %267, %261  : i64
    %269 = llvm.getelementptr %265[%268] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %270 = llvm.load %269 : !llvm.ptr<i32>
    %271 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.mlir.constant(4 : index) : i64
    %273 = llvm.mul %246, %272  : i64
    %274 = llvm.add %273, %264  : i64
    %275 = llvm.add %274, %256  : i64
    %276 = llvm.add %275, %261  : i64
    %277 = llvm.getelementptr %271[%276] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %270, %277 : !llvm.ptr<i32>
    %278 = llvm.add %261, %260  : i64
    llvm.br ^bb43(%278 : i64)
  ^bb45:  // pred: ^bb43
    %279 = llvm.add %256, %255  : i64
    llvm.br ^bb41(%279 : i64)
  ^bb46:  // pred: ^bb41
    %280 = llvm.add %251, %250  : i64
    llvm.br ^bb39(%280 : i64)
  ^bb47:  // pred: ^bb39
    %281 = llvm.add %246, %245  : i64
    llvm.br ^bb37(%281 : i64)
  ^bb48:  // pred: ^bb37
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.null : !llvm.ptr<i32>
    %287 = llvm.getelementptr %286[%282] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %288 = llvm.ptrtoint %287 : !llvm.ptr<i32> to i64
    %289 = llvm.mlir.constant(16 : index) : i64
    %290 = llvm.add %288, %289  : i64
    %291 = llvm.call @malloc(%290) : (i64) -> !llvm.ptr<i8>
    %292 = llvm.bitcast %291 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %293 = llvm.ptrtoint %292 : !llvm.ptr<i32> to i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.sub %289, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.urem %296, %289  : i64
    %298 = llvm.sub %296, %297  : i64
    %299 = llvm.inttoptr %298 : i64 to !llvm.ptr<i32>
    %300 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %301 = llvm.insertvalue %292, %300[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %302 = llvm.insertvalue %299, %301[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.insertvalue %303, %302[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %305 = llvm.insertvalue %282, %304[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %306 = llvm.insertvalue %283, %305[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %307 = llvm.insertvalue %284, %306[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %308 = llvm.insertvalue %283, %307[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %309 = llvm.insertvalue %284, %308[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %310 = llvm.insertvalue %285, %309[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%311 : i64)
  ^bb49(%314: i64):  // 2 preds: ^bb48, ^bb56
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%316 : i64)
  ^bb51(%319: i64):  // 2 preds: ^bb50, ^bb55
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%321 : i64)
  ^bb53(%324: i64):  // 2 preds: ^bb52, ^bb54
    %325 = llvm.icmp "slt" %324, %322 : i64
    llvm.cond_br %325, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %326 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %327 = llvm.add %314, %319  : i64
    %328 = llvm.add %327, %324  : i64
    %329 = llvm.getelementptr %326[%328] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %27, %329 : !llvm.ptr<i32>
    %330 = llvm.add %324, %323  : i64
    llvm.br ^bb53(%330 : i64)
  ^bb55:  // pred: ^bb53
    %331 = llvm.add %319, %318  : i64
    llvm.br ^bb51(%331 : i64)
  ^bb56:  // pred: ^bb51
    %332 = llvm.add %314, %313  : i64
    llvm.br ^bb49(%332 : i64)
  ^bb57:  // pred: ^bb49
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%333 : i64)
  ^bb58(%336: i64):  // 2 preds: ^bb57, ^bb68
    %337 = llvm.icmp "slt" %336, %334 : i64
    llvm.cond_br %337, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.mlir.constant(4 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%338 : i64)
  ^bb60(%341: i64):  // 2 preds: ^bb59, ^bb67
    %342 = llvm.icmp "slt" %341, %339 : i64
    llvm.cond_br %342, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%343 : i64)
  ^bb62(%346: i64):  // 2 preds: ^bb61, ^bb66
    %347 = llvm.icmp "slt" %346, %344 : i64
    llvm.cond_br %347, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%348 : i64)
  ^bb64(%351: i64):  // 2 preds: ^bb63, ^bb65
    %352 = llvm.icmp "slt" %351, %349 : i64
    llvm.cond_br %352, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %353 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.mlir.constant(4 : index) : i64
    %355 = llvm.mul %336, %354  : i64
    %356 = llvm.add %355, %341  : i64
    %357 = llvm.add %356, %346  : i64
    %358 = llvm.add %357, %351  : i64
    %359 = llvm.getelementptr %353[%358] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %360 = llvm.load %359 : !llvm.ptr<i32>
    %361 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %362 = llvm.add %336, %346  : i64
    %363 = llvm.add %362, %351  : i64
    %364 = llvm.getelementptr %361[%363] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %365 = llvm.load %364 : !llvm.ptr<i32>
    %366 = llvm.icmp "sgt" %365, %360 : i32
    %367 = llvm.select %366, %365, %360 : i1, i32
    %368 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %369 = llvm.add %336, %346  : i64
    %370 = llvm.add %369, %351  : i64
    %371 = llvm.getelementptr %368[%370] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %367, %371 : !llvm.ptr<i32>
    %372 = llvm.add %351, %350  : i64
    llvm.br ^bb64(%372 : i64)
  ^bb66:  // pred: ^bb64
    %373 = llvm.add %346, %345  : i64
    llvm.br ^bb62(%373 : i64)
  ^bb67:  // pred: ^bb62
    %374 = llvm.add %341, %340  : i64
    llvm.br ^bb60(%374 : i64)
  ^bb68:  // pred: ^bb60
    %375 = llvm.add %336, %335  : i64
    llvm.br ^bb58(%375 : i64)
  ^bb69:  // pred: ^bb58
    %376 = llvm.mlir.constant(4 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.null : !llvm.ptr<i64>
    %379 = llvm.getelementptr %378[%376] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %380 = llvm.ptrtoint %379 : !llvm.ptr<i64> to i64
    %381 = llvm.mlir.constant(16 : index) : i64
    %382 = llvm.add %380, %381  : i64
    %383 = llvm.call @malloc(%382) : (i64) -> !llvm.ptr<i8>
    %384 = llvm.bitcast %383 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %385 = llvm.ptrtoint %384 : !llvm.ptr<i64> to i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.sub %381, %386  : i64
    %388 = llvm.add %385, %387  : i64
    %389 = llvm.urem %388, %381  : i64
    %390 = llvm.sub %388, %389  : i64
    %391 = llvm.inttoptr %390 : i64 to !llvm.ptr<i64>
    %392 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %393 = llvm.insertvalue %384, %392[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %394 = llvm.insertvalue %391, %393[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.insertvalue %395, %394[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.insertvalue %376, %396[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.insertvalue %377, %397[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.mlir.constant(4 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%399 : i64)
  ^bb70(%402: i64):  // 2 preds: ^bb69, ^bb71
    %403 = llvm.icmp "slt" %402, %400 : i64
    llvm.cond_br %403, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %404 = llvm.extractvalue %398[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %405 = llvm.getelementptr %404[%402] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %26, %405 : !llvm.ptr<i64>
    %406 = llvm.add %402, %401  : i64
    llvm.br ^bb70(%406 : i64)
  ^bb72:  // pred: ^bb70
    %407 = llvm.mlir.constant(4 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    %409 = llvm.mlir.null : !llvm.ptr<i64>
    %410 = llvm.getelementptr %409[%407] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %411 = llvm.ptrtoint %410 : !llvm.ptr<i64> to i64
    %412 = llvm.mlir.constant(16 : index) : i64
    %413 = llvm.add %411, %412  : i64
    %414 = llvm.call @malloc(%413) : (i64) -> !llvm.ptr<i8>
    %415 = llvm.bitcast %414 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %416 = llvm.ptrtoint %415 : !llvm.ptr<i64> to i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.sub %412, %417  : i64
    %419 = llvm.add %416, %418  : i64
    %420 = llvm.urem %419, %412  : i64
    %421 = llvm.sub %419, %420  : i64
    %422 = llvm.inttoptr %421 : i64 to !llvm.ptr<i64>
    %423 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %424 = llvm.insertvalue %415, %423[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %425 = llvm.insertvalue %422, %424[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.insertvalue %426, %425[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %428 = llvm.insertvalue %407, %427[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %429 = llvm.insertvalue %408, %428[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %430 = llvm.mlir.constant(0 : index) : i64
    %431 = llvm.mlir.constant(4 : index) : i64
    %432 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%430 : i64)
  ^bb73(%433: i64):  // 2 preds: ^bb72, ^bb74
    %434 = llvm.icmp "slt" %433, %431 : i64
    llvm.cond_br %434, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %435 = llvm.extractvalue %398[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %436 = llvm.getelementptr %435[%433] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %437 = llvm.load %436 : !llvm.ptr<i64>
    %438 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %439 = llvm.load %438 : !llvm.ptr<i64>
    %440 = llvm.mul %437, %439  : i64
    %441 = llvm.extractvalue %429[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %442 = llvm.getelementptr %441[%433] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %440, %442 : !llvm.ptr<i64>
    %443 = llvm.add %433, %432  : i64
    llvm.br ^bb73(%443 : i64)
  ^bb75:  // pred: ^bb73
    %444 = llvm.mlir.constant(4 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.null : !llvm.ptr<i1>
    %447 = llvm.getelementptr %446[%444] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %448 = llvm.ptrtoint %447 : !llvm.ptr<i1> to i64
    %449 = llvm.mlir.constant(16 : index) : i64
    %450 = llvm.add %448, %449  : i64
    %451 = llvm.call @malloc(%450) : (i64) -> !llvm.ptr<i8>
    %452 = llvm.bitcast %451 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %453 = llvm.ptrtoint %452 : !llvm.ptr<i1> to i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.sub %449, %454  : i64
    %456 = llvm.add %453, %455  : i64
    %457 = llvm.urem %456, %449  : i64
    %458 = llvm.sub %456, %457  : i64
    %459 = llvm.inttoptr %458 : i64 to !llvm.ptr<i1>
    %460 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %461 = llvm.insertvalue %452, %460[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %462 = llvm.insertvalue %459, %461[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %463 = llvm.mlir.constant(0 : index) : i64
    %464 = llvm.insertvalue %463, %462[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.insertvalue %444, %464[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %466 = llvm.insertvalue %445, %465[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.mlir.constant(4 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%467 : i64)
  ^bb76(%470: i64):  // 2 preds: ^bb75, ^bb77
    %471 = llvm.icmp "slt" %470, %468 : i64
    llvm.cond_br %471, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %472 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %473 = llvm.getelementptr %472[%470] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %474 = llvm.load %473 : !llvm.ptr<i64>
    %475 = llvm.extractvalue %429[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %476 = llvm.getelementptr %475[%470] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %477 = llvm.load %476 : !llvm.ptr<i64>
    %478 = llvm.icmp "eq" %474, %477 : i64
    %479 = llvm.extractvalue %466[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %480 = llvm.getelementptr %479[%470] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %478, %480 : !llvm.ptr<i1>
    %481 = llvm.add %470, %469  : i64
    llvm.br ^bb76(%481 : i64)
  ^bb78:  // pred: ^bb76
    %482 = llvm.mlir.constant(4 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.null : !llvm.ptr<i64>
    %485 = llvm.getelementptr %484[%482] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %486 = llvm.ptrtoint %485 : !llvm.ptr<i64> to i64
    %487 = llvm.mlir.constant(16 : index) : i64
    %488 = llvm.add %486, %487  : i64
    %489 = llvm.call @malloc(%488) : (i64) -> !llvm.ptr<i8>
    %490 = llvm.bitcast %489 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %491 = llvm.ptrtoint %490 : !llvm.ptr<i64> to i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.sub %487, %492  : i64
    %494 = llvm.add %491, %493  : i64
    %495 = llvm.urem %494, %487  : i64
    %496 = llvm.sub %494, %495  : i64
    %497 = llvm.inttoptr %496 : i64 to !llvm.ptr<i64>
    %498 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %499 = llvm.insertvalue %490, %498[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %500 = llvm.insertvalue %497, %499[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %501 = llvm.mlir.constant(0 : index) : i64
    %502 = llvm.insertvalue %501, %500[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %503 = llvm.insertvalue %482, %502[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %504 = llvm.insertvalue %483, %503[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.mlir.constant(4 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%505 : i64)
  ^bb79(%508: i64):  // 2 preds: ^bb78, ^bb80
    %509 = llvm.icmp "slt" %508, %506 : i64
    llvm.cond_br %509, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %510 = llvm.extractvalue %466[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %511 = llvm.getelementptr %510[%508] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %512 = llvm.load %511 : !llvm.ptr<i1>
    %513 = llvm.extractvalue %398[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %514 = llvm.getelementptr %513[%508] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %515 = llvm.load %514 : !llvm.ptr<i64>
    %516 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %517 = llvm.getelementptr %516[%508] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %518 = llvm.load %517 : !llvm.ptr<i64>
    %519 = llvm.select %512, %515, %518 : i1, i64
    %520 = llvm.extractvalue %504[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %521 = llvm.getelementptr %520[%508] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %519, %521 : !llvm.ptr<i64>
    %522 = llvm.add %508, %507  : i64
    llvm.br ^bb79(%522 : i64)
  ^bb81:  // pred: ^bb79
    %523 = llvm.mlir.constant(1 : index) : i64
    %524 = llvm.mlir.constant(4 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    %528 = llvm.mlir.constant(4 : index) : i64
    %529 = llvm.mlir.null : !llvm.ptr<i32>
    %530 = llvm.getelementptr %529[%528] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %531 = llvm.ptrtoint %530 : !llvm.ptr<i32> to i64
    %532 = llvm.mlir.constant(16 : index) : i64
    %533 = llvm.add %531, %532  : i64
    %534 = llvm.call @malloc(%533) : (i64) -> !llvm.ptr<i8>
    %535 = llvm.bitcast %534 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %536 = llvm.ptrtoint %535 : !llvm.ptr<i32> to i64
    %537 = llvm.mlir.constant(1 : index) : i64
    %538 = llvm.sub %532, %537  : i64
    %539 = llvm.add %536, %538  : i64
    %540 = llvm.urem %539, %532  : i64
    %541 = llvm.sub %539, %540  : i64
    %542 = llvm.inttoptr %541 : i64 to !llvm.ptr<i32>
    %543 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %544 = llvm.insertvalue %535, %543[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.insertvalue %542, %544[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.mlir.constant(0 : index) : i64
    %547 = llvm.insertvalue %546, %545[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.insertvalue %523, %547[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.insertvalue %524, %548[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %550 = llvm.insertvalue %525, %549[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %551 = llvm.insertvalue %526, %550[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %552 = llvm.insertvalue %524, %551[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %553 = llvm.insertvalue %525, %552[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %554 = llvm.insertvalue %526, %553[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %555 = llvm.insertvalue %527, %554[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %556 = llvm.mlir.constant(0 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%556 : i64)
  ^bb82(%559: i64):  // 2 preds: ^bb81, ^bb92
    %560 = llvm.icmp "slt" %559, %557 : i64
    llvm.cond_br %560, ^bb83, ^bb93
  ^bb83:  // pred: ^bb82
    %561 = llvm.mlir.constant(0 : index) : i64
    %562 = llvm.mlir.constant(4 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%561 : i64)
  ^bb84(%564: i64):  // 2 preds: ^bb83, ^bb91
    %565 = llvm.icmp "slt" %564, %562 : i64
    llvm.cond_br %565, ^bb85, ^bb92
  ^bb85:  // pred: ^bb84
    %566 = llvm.mlir.constant(0 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    %568 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%566 : i64)
  ^bb86(%569: i64):  // 2 preds: ^bb85, ^bb90
    %570 = llvm.icmp "slt" %569, %567 : i64
    llvm.cond_br %570, ^bb87, ^bb91
  ^bb87:  // pred: ^bb86
    %571 = llvm.mlir.constant(0 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%571 : i64)
  ^bb88(%574: i64):  // 2 preds: ^bb87, ^bb89
    %575 = llvm.icmp "slt" %574, %572 : i64
    llvm.cond_br %575, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %576 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %577 = llvm.mlir.constant(4 : index) : i64
    %578 = llvm.mul %28, %577  : i64
    %579 = llvm.add %578, %564  : i64
    %580 = llvm.add %579, %28  : i64
    %581 = llvm.add %580, %28  : i64
    %582 = llvm.getelementptr %576[%581] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %583 = llvm.load %582 : !llvm.ptr<i32>
    %584 = llvm.extractvalue %555[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.mlir.constant(4 : index) : i64
    %586 = llvm.mul %559, %585  : i64
    %587 = llvm.add %586, %564  : i64
    %588 = llvm.add %587, %569  : i64
    %589 = llvm.add %588, %574  : i64
    %590 = llvm.getelementptr %584[%589] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %583, %590 : !llvm.ptr<i32>
    %591 = llvm.add %574, %573  : i64
    llvm.br ^bb88(%591 : i64)
  ^bb90:  // pred: ^bb88
    %592 = llvm.add %569, %568  : i64
    llvm.br ^bb86(%592 : i64)
  ^bb91:  // pred: ^bb86
    %593 = llvm.add %564, %563  : i64
    llvm.br ^bb84(%593 : i64)
  ^bb92:  // pred: ^bb84
    %594 = llvm.add %559, %558  : i64
    llvm.br ^bb82(%594 : i64)
  ^bb93:  // pred: ^bb82
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.mlir.constant(1 : index) : i64
    %597 = llvm.mlir.constant(1 : index) : i64
    %598 = llvm.mlir.constant(1 : index) : i64
    %599 = llvm.mlir.null : !llvm.ptr<i64>
    %600 = llvm.getelementptr %599[%595] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %601 = llvm.ptrtoint %600 : !llvm.ptr<i64> to i64
    %602 = llvm.mlir.constant(16 : index) : i64
    %603 = llvm.add %601, %602  : i64
    %604 = llvm.call @malloc(%603) : (i64) -> !llvm.ptr<i8>
    %605 = llvm.bitcast %604 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %606 = llvm.ptrtoint %605 : !llvm.ptr<i64> to i64
    %607 = llvm.mlir.constant(1 : index) : i64
    %608 = llvm.sub %602, %607  : i64
    %609 = llvm.add %606, %608  : i64
    %610 = llvm.urem %609, %602  : i64
    %611 = llvm.sub %609, %610  : i64
    %612 = llvm.inttoptr %611 : i64 to !llvm.ptr<i64>
    %613 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %614 = llvm.insertvalue %605, %613[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %615 = llvm.insertvalue %612, %614[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %616 = llvm.mlir.constant(0 : index) : i64
    %617 = llvm.insertvalue %616, %615[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %618 = llvm.insertvalue %595, %617[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %619 = llvm.insertvalue %596, %618[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %620 = llvm.insertvalue %597, %619[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %621 = llvm.insertvalue %596, %620[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %622 = llvm.insertvalue %597, %621[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %623 = llvm.insertvalue %598, %622[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %624 = llvm.mlir.constant(0 : index) : i64
    %625 = llvm.mlir.constant(1 : index) : i64
    %626 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%624 : i64)
  ^bb94(%627: i64):  // 2 preds: ^bb93, ^bb101
    %628 = llvm.icmp "slt" %627, %625 : i64
    llvm.cond_br %628, ^bb95, ^bb102
  ^bb95:  // pred: ^bb94
    %629 = llvm.mlir.constant(0 : index) : i64
    %630 = llvm.mlir.constant(1 : index) : i64
    %631 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb96(%629 : i64)
  ^bb96(%632: i64):  // 2 preds: ^bb95, ^bb100
    %633 = llvm.icmp "slt" %632, %630 : i64
    llvm.cond_br %633, ^bb97, ^bb101
  ^bb97:  // pred: ^bb96
    %634 = llvm.mlir.constant(0 : index) : i64
    %635 = llvm.mlir.constant(1 : index) : i64
    %636 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb98(%634 : i64)
  ^bb98(%637: i64):  // 2 preds: ^bb97, ^bb99
    %638 = llvm.icmp "slt" %637, %635 : i64
    llvm.cond_br %638, ^bb99, ^bb100
  ^bb99:  // pred: ^bb98
    %639 = llvm.extractvalue %623[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %640 = llvm.add %627, %632  : i64
    %641 = llvm.add %640, %637  : i64
    %642 = llvm.getelementptr %639[%641] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %25, %642 : !llvm.ptr<i64>
    %643 = llvm.add %637, %636  : i64
    llvm.br ^bb98(%643 : i64)
  ^bb100:  // pred: ^bb98
    %644 = llvm.add %632, %631  : i64
    llvm.br ^bb96(%644 : i64)
  ^bb101:  // pred: ^bb96
    %645 = llvm.add %627, %626  : i64
    llvm.br ^bb94(%645 : i64)
  ^bb102:  // pred: ^bb94
    %646 = llvm.mlir.constant(0 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    %648 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%646 : i64)
  ^bb103(%649: i64):  // 2 preds: ^bb102, ^bb113
    %650 = llvm.icmp "slt" %649, %647 : i64
    llvm.cond_br %650, ^bb104, ^bb114
  ^bb104:  // pred: ^bb103
    %651 = llvm.mlir.constant(0 : index) : i64
    %652 = llvm.mlir.constant(4 : index) : i64
    %653 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb105(%651 : i64)
  ^bb105(%654: i64):  // 2 preds: ^bb104, ^bb112
    %655 = llvm.icmp "slt" %654, %652 : i64
    llvm.cond_br %655, ^bb106, ^bb113
  ^bb106:  // pred: ^bb105
    %656 = llvm.mlir.constant(0 : index) : i64
    %657 = llvm.mlir.constant(1 : index) : i64
    %658 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb107(%656 : i64)
  ^bb107(%659: i64):  // 2 preds: ^bb106, ^bb111
    %660 = llvm.icmp "slt" %659, %657 : i64
    llvm.cond_br %660, ^bb108, ^bb112
  ^bb108:  // pred: ^bb107
    %661 = llvm.mlir.constant(0 : index) : i64
    %662 = llvm.mlir.constant(1 : index) : i64
    %663 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%661 : i64)
  ^bb109(%664: i64):  // 2 preds: ^bb108, ^bb110
    %665 = llvm.icmp "slt" %664, %662 : i64
    llvm.cond_br %665, ^bb110, ^bb111
  ^bb110:  // pred: ^bb109
    %666 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %667 = llvm.mlir.constant(4 : index) : i64
    %668 = llvm.mul %649, %667  : i64
    %669 = llvm.add %668, %654  : i64
    %670 = llvm.add %669, %659  : i64
    %671 = llvm.add %670, %664  : i64
    %672 = llvm.getelementptr %666[%671] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %673 = llvm.load %672 : !llvm.ptr<i32>
    %674 = llvm.extractvalue %623[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %675 = llvm.add %649, %659  : i64
    %676 = llvm.add %675, %664  : i64
    %677 = llvm.getelementptr %674[%676] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %678 = llvm.load %677 : !llvm.ptr<i64>
    %679 = llvm.icmp "slt" %678, %24 : i64
    %680 = llvm.select %679, %24, %678 : i1, i64
    %681 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %682 = llvm.mlir.constant(4 : index) : i64
    %683 = llvm.mul %649, %682  : i64
    %684 = llvm.add %683, %680  : i64
    %685 = llvm.add %684, %659  : i64
    %686 = llvm.add %685, %664  : i64
    %687 = llvm.getelementptr %681[%686] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %688 = llvm.load %687 : !llvm.ptr<i32>
    %689 = llvm.icmp "sgt" %673, %688 : i32
    %690 = llvm.select %689, %654, %680 : i1, i64
    %691 = llvm.extractvalue %623[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %692 = llvm.add %649, %659  : i64
    %693 = llvm.add %692, %664  : i64
    %694 = llvm.getelementptr %691[%693] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %690, %694 : !llvm.ptr<i64>
    %695 = llvm.add %664, %663  : i64
    llvm.br ^bb109(%695 : i64)
  ^bb111:  // pred: ^bb109
    %696 = llvm.add %659, %658  : i64
    llvm.br ^bb107(%696 : i64)
  ^bb112:  // pred: ^bb107
    %697 = llvm.add %654, %653  : i64
    llvm.br ^bb105(%697 : i64)
  ^bb113:  // pred: ^bb105
    %698 = llvm.add %649, %648  : i64
    llvm.br ^bb103(%698 : i64)
  ^bb114:  // pred: ^bb103
    %699 = llvm.mlir.constant(1 : index) : i64
    %700 = llvm.mlir.constant(1 : index) : i64
    %701 = llvm.mlir.constant(1 : index) : i64
    %702 = llvm.mlir.constant(1 : index) : i64
    %703 = llvm.mlir.null : !llvm.ptr<i64>
    %704 = llvm.getelementptr %703[%699] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %705 = llvm.ptrtoint %704 : !llvm.ptr<i64> to i64
    %706 = llvm.mlir.constant(16 : index) : i64
    %707 = llvm.add %705, %706  : i64
    %708 = llvm.call @malloc(%707) : (i64) -> !llvm.ptr<i8>
    %709 = llvm.bitcast %708 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %710 = llvm.ptrtoint %709 : !llvm.ptr<i64> to i64
    %711 = llvm.mlir.constant(1 : index) : i64
    %712 = llvm.sub %706, %711  : i64
    %713 = llvm.add %710, %712  : i64
    %714 = llvm.urem %713, %706  : i64
    %715 = llvm.sub %713, %714  : i64
    %716 = llvm.inttoptr %715 : i64 to !llvm.ptr<i64>
    %717 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %718 = llvm.insertvalue %709, %717[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %719 = llvm.insertvalue %716, %718[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %720 = llvm.mlir.constant(0 : index) : i64
    %721 = llvm.insertvalue %720, %719[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %722 = llvm.insertvalue %699, %721[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %723 = llvm.insertvalue %700, %722[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %724 = llvm.insertvalue %701, %723[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %725 = llvm.insertvalue %700, %724[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %726 = llvm.insertvalue %701, %725[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %727 = llvm.insertvalue %702, %726[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %728 = llvm.mlir.constant(0 : index) : i64
    %729 = llvm.mlir.constant(1 : index) : i64
    %730 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%728 : i64)
  ^bb115(%731: i64):  // 2 preds: ^bb114, ^bb122
    %732 = llvm.icmp "slt" %731, %729 : i64
    llvm.cond_br %732, ^bb116, ^bb123
  ^bb116:  // pred: ^bb115
    %733 = llvm.mlir.constant(0 : index) : i64
    %734 = llvm.mlir.constant(1 : index) : i64
    %735 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb117(%733 : i64)
  ^bb117(%736: i64):  // 2 preds: ^bb116, ^bb121
    %737 = llvm.icmp "slt" %736, %734 : i64
    llvm.cond_br %737, ^bb118, ^bb122
  ^bb118:  // pred: ^bb117
    %738 = llvm.mlir.constant(0 : index) : i64
    %739 = llvm.mlir.constant(1 : index) : i64
    %740 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb119(%738 : i64)
  ^bb119(%741: i64):  // 2 preds: ^bb118, ^bb120
    %742 = llvm.icmp "slt" %741, %739 : i64
    llvm.cond_br %742, ^bb120, ^bb121
  ^bb120:  // pred: ^bb119
    %743 = llvm.extractvalue %623[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %744 = llvm.add %731, %736  : i64
    %745 = llvm.add %744, %741  : i64
    %746 = llvm.getelementptr %743[%745] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %747 = llvm.load %746 : !llvm.ptr<i64>
    %748 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %749 = llvm.load %748 : !llvm.ptr<i64>
    %750 = llvm.icmp "slt" %747, %749 : i64
    %751 = llvm.select %750, %749, %747 : i1, i64
    %752 = llvm.extractvalue %71[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %753 = llvm.load %752 : !llvm.ptr<i64>
    %754 = llvm.icmp "slt" %751, %753 : i64
    %755 = llvm.select %754, %751, %753 : i1, i64
    %756 = llvm.extractvalue %727[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %757 = llvm.add %731, %736  : i64
    %758 = llvm.add %757, %741  : i64
    %759 = llvm.getelementptr %756[%758] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %755, %759 : !llvm.ptr<i64>
    %760 = llvm.add %741, %740  : i64
    llvm.br ^bb119(%760 : i64)
  ^bb121:  // pred: ^bb119
    %761 = llvm.add %736, %735  : i64
    llvm.br ^bb117(%761 : i64)
  ^bb122:  // pred: ^bb117
    %762 = llvm.add %731, %730  : i64
    llvm.br ^bb115(%762 : i64)
  ^bb123:  // pred: ^bb115
    %763 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %764 = llvm.insertvalue %310, %763[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %765 = llvm.insertvalue %555, %764[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %766 = llvm.insertvalue %727, %765[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %766 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v7_0", "v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0", "v4_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.getelementptr %55[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %56[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %84, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %88 = llvm.extractvalue %85[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %89 = llvm.mlir.constant(3 : i64) : i64
    %90 = llvm.mlir.constant(24 : i64) : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %93 = llvm.mlir.constant(3 : i64) : i64
    %94 = llvm.call @omTensorCreateUntyped(%93) : (i64) -> !llvm.ptr<i8>
    %95 = llvm.mlir.constant(1 : i64) : i64
    %96 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %98 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %99 = llvm.bitcast %98 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%94, %95, %97, %99) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %100 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%94, %100) : (!llvm.ptr<i8>, i64) -> ()
    %101 = llvm.call @omTensorGetShape(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.call @omTensorGetStrides(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %103 = llvm.mlir.constant(0 : i64) : i64
    %104 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.getelementptr %101[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %102[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %110 = llvm.getelementptr %101[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.getelementptr %102[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(2 : i64) : i64
    %114 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.getelementptr %101[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.getelementptr %102[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(0 : i64) : i64
    %119 = llvm.getelementptr %92[%118] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %94, %119 : !llvm.ptr<ptr<i8>>
    %120 = llvm.mlir.constant(4 : i64) : i64
    %121 = llvm.call @omTensorCreateUntyped(%120) : (i64) -> !llvm.ptr<i8>
    %122 = llvm.mlir.constant(1 : i64) : i64
    %123 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.bitcast %123 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %125 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.bitcast %125 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%121, %122, %124, %126) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %127 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%121, %127) : (!llvm.ptr<i8>, i64) -> ()
    %128 = llvm.call @omTensorGetShape(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %129 = llvm.call @omTensorGetStrides(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %130 = llvm.mlir.constant(0 : i64) : i64
    %131 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.getelementptr %128[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %129[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.mlir.constant(1 : i64) : i64
    %136 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.getelementptr %128[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %129[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.mlir.constant(2 : i64) : i64
    %141 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.getelementptr %128[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.getelementptr %129[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.mlir.constant(3 : i64) : i64
    %146 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %128[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.getelementptr %129[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.mlir.constant(1 : i64) : i64
    %151 = llvm.getelementptr %92[%150] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %121, %151 : !llvm.ptr<ptr<i8>>
    %152 = llvm.mlir.constant(3 : i64) : i64
    %153 = llvm.call @omTensorCreateUntyped(%152) : (i64) -> !llvm.ptr<i8>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.extractvalue %88[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %156 = llvm.bitcast %155 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %157 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %158 = llvm.bitcast %157 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%153, %154, %156, %158) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %159 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%153, %159) : (!llvm.ptr<i8>, i64) -> ()
    %160 = llvm.call @omTensorGetShape(%153) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %161 = llvm.call @omTensorGetStrides(%153) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %162 = llvm.mlir.constant(0 : i64) : i64
    %163 = llvm.extractvalue %88[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %164 = llvm.getelementptr %160[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %163, %164 : !llvm.ptr<i64>
    %165 = llvm.extractvalue %88[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.getelementptr %161[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.mlir.constant(1 : i64) : i64
    %168 = llvm.extractvalue %88[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %169 = llvm.getelementptr %160[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %168, %169 : !llvm.ptr<i64>
    %170 = llvm.extractvalue %88[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.getelementptr %161[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.mlir.constant(2 : i64) : i64
    %173 = llvm.extractvalue %88[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %174 = llvm.getelementptr %160[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %173, %174 : !llvm.ptr<i64>
    %175 = llvm.extractvalue %88[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %176 = llvm.getelementptr %161[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.mlir.constant(2 : i64) : i64
    %178 = llvm.getelementptr %92[%177] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %153, %178 : !llvm.ptr<ptr<i8>>
    %179 = llvm.call @omTensorListCreate(%92, %89, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %179 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<142 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<142 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<203 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<203 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

