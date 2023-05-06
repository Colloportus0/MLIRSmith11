module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_5(dense<[1, 1, 4, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 4, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v7_0", "v4_0"], llvm.emit_c_interface, output_names = ["v1_0", "v3_0"]} {
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
    %24 = llvm.mlir.constant(1 : i64) : i64
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.mlir.constant(3 : index) : i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %35 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %42 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %43 = llvm.bitcast %42 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %44 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.insertvalue %43, %44[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.insertvalue %43, %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.insertvalue %47, %46[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(4 : index) : i64
    %50 = llvm.insertvalue %49, %48[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %56 = llvm.insertvalue %54, %55[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %57 = llvm.insertvalue %54, %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.insertvalue %58, %57[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %60 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %61 = llvm.bitcast %60 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %63 = llvm.insertvalue %61, %62[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(4 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %72 = llvm.bitcast %71 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %73 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %74 = llvm.insertvalue %72, %73[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.insertvalue %76, %75[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.insertvalue %84, %83[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.insertvalue %86, %85[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.insertvalue %88, %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.insertvalue %92, %91[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(4 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(4 : index) : i64
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
    %120 = llvm.insertvalue %94, %119[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %95, %120[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %96, %121[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %97, %122[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %99, %123[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %96, %124[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %97, %125[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %98, %126[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %157 = llvm.mlir.constant(4 : index) : i64
    %158 = llvm.mul %136, %157  : i64
    %159 = llvm.add %156, %158  : i64
    %160 = llvm.add %159, %141  : i64
    %161 = llvm.add %160, %146  : i64
    %162 = llvm.getelementptr %154[%161] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %153, %162 : !llvm.ptr<i32>
    %163 = llvm.add %146, %145  : i64
    llvm.br ^bb7(%163 : i64)
  ^bb9:  // pred: ^bb7
    %164 = llvm.add %141, %140  : i64
    llvm.br ^bb5(%164 : i64)
  ^bb10:  // pred: ^bb5
    %165 = llvm.add %136, %135  : i64
    llvm.br ^bb3(%165 : i64)
  ^bb11:  // pred: ^bb3
    %166 = llvm.add %131, %130  : i64
    llvm.br ^bb1(%166 : i64)
  ^bb12:  // pred: ^bb1
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%167 : i64)
  ^bb13(%170: i64):  // 2 preds: ^bb12, ^bb23
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%172 : i64)
  ^bb15(%175: i64):  // 2 preds: ^bb14, ^bb22
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%177 : i64)
  ^bb17(%180: i64):  // 2 preds: ^bb16, ^bb21
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%182 : i64)
  ^bb19(%185: i64):  // 2 preds: ^bb18, ^bb20
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.add %180, %187  : i64
    %189 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.add %170, %175  : i64
    %191 = llvm.add %190, %180  : i64
    %192 = llvm.add %191, %185  : i64
    %193 = llvm.getelementptr %189[%192] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %194 = llvm.load %193 : !llvm.ptr<i32>
    %195 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.mlir.constant(4 : index) : i64
    %197 = llvm.mul %170, %196  : i64
    %198 = llvm.mlir.constant(4 : index) : i64
    %199 = llvm.mul %175, %198  : i64
    %200 = llvm.add %197, %199  : i64
    %201 = llvm.add %200, %188  : i64
    %202 = llvm.add %201, %185  : i64
    %203 = llvm.getelementptr %195[%202] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %194, %203 : !llvm.ptr<i32>
    %204 = llvm.add %185, %184  : i64
    llvm.br ^bb19(%204 : i64)
  ^bb21:  // pred: ^bb19
    %205 = llvm.add %180, %179  : i64
    llvm.br ^bb17(%205 : i64)
  ^bb22:  // pred: ^bb17
    %206 = llvm.add %175, %174  : i64
    llvm.br ^bb15(%206 : i64)
  ^bb23:  // pred: ^bb15
    %207 = llvm.add %170, %169  : i64
    llvm.br ^bb13(%207 : i64)
  ^bb24:  // pred: ^bb13
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%208 : i64)
  ^bb25(%211: i64):  // 2 preds: ^bb24, ^bb35
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%213 : i64)
  ^bb27(%216: i64):  // 2 preds: ^bb26, ^bb34
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%218 : i64)
  ^bb29(%221: i64):  // 2 preds: ^bb28, ^bb33
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%223 : i64)
  ^bb31(%226: i64):  // 2 preds: ^bb30, ^bb32
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %228 = llvm.mlir.constant(2 : index) : i64
    %229 = llvm.add %221, %228  : i64
    %230 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.add %211, %216  : i64
    %232 = llvm.add %231, %221  : i64
    %233 = llvm.add %232, %226  : i64
    %234 = llvm.getelementptr %230[%233] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %235 = llvm.load %234 : !llvm.ptr<i32>
    %236 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.mlir.constant(4 : index) : i64
    %238 = llvm.mul %211, %237  : i64
    %239 = llvm.mlir.constant(4 : index) : i64
    %240 = llvm.mul %216, %239  : i64
    %241 = llvm.add %238, %240  : i64
    %242 = llvm.add %241, %229  : i64
    %243 = llvm.add %242, %226  : i64
    %244 = llvm.getelementptr %236[%243] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %235, %244 : !llvm.ptr<i32>
    %245 = llvm.add %226, %225  : i64
    llvm.br ^bb31(%245 : i64)
  ^bb33:  // pred: ^bb31
    %246 = llvm.add %221, %220  : i64
    llvm.br ^bb29(%246 : i64)
  ^bb34:  // pred: ^bb29
    %247 = llvm.add %216, %215  : i64
    llvm.br ^bb27(%247 : i64)
  ^bb35:  // pred: ^bb27
    %248 = llvm.add %211, %210  : i64
    llvm.br ^bb25(%248 : i64)
  ^bb36:  // pred: ^bb25
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%249 : i64)
  ^bb37(%252: i64):  // 2 preds: ^bb36, ^bb47
    %253 = llvm.icmp "slt" %252, %250 : i64
    llvm.cond_br %253, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%254 : i64)
  ^bb39(%257: i64):  // 2 preds: ^bb38, ^bb46
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%259 : i64)
  ^bb41(%262: i64):  // 2 preds: ^bb40, ^bb45
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%264 : i64)
  ^bb43(%267: i64):  // 2 preds: ^bb42, ^bb44
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %269 = llvm.mlir.constant(3 : index) : i64
    %270 = llvm.add %262, %269  : i64
    %271 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.add %252, %257  : i64
    %273 = llvm.add %272, %262  : i64
    %274 = llvm.add %273, %267  : i64
    %275 = llvm.getelementptr %271[%274] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %276 = llvm.load %275 : !llvm.ptr<i32>
    %277 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.mlir.constant(4 : index) : i64
    %279 = llvm.mul %252, %278  : i64
    %280 = llvm.mlir.constant(4 : index) : i64
    %281 = llvm.mul %257, %280  : i64
    %282 = llvm.add %279, %281  : i64
    %283 = llvm.add %282, %270  : i64
    %284 = llvm.add %283, %267  : i64
    %285 = llvm.getelementptr %277[%284] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %276, %285 : !llvm.ptr<i32>
    %286 = llvm.add %267, %266  : i64
    llvm.br ^bb43(%286 : i64)
  ^bb45:  // pred: ^bb43
    %287 = llvm.add %262, %261  : i64
    llvm.br ^bb41(%287 : i64)
  ^bb46:  // pred: ^bb41
    %288 = llvm.add %257, %256  : i64
    llvm.br ^bb39(%288 : i64)
  ^bb47:  // pred: ^bb39
    %289 = llvm.add %252, %251  : i64
    llvm.br ^bb37(%289 : i64)
  ^bb48:  // pred: ^bb37
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    %292 = llvm.mlir.constant(4 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.constant(4 : index) : i64
    %296 = llvm.mlir.constant(4 : index) : i64
    %297 = llvm.mlir.null : !llvm.ptr<i32>
    %298 = llvm.getelementptr %297[%296] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %299 = llvm.ptrtoint %298 : !llvm.ptr<i32> to i64
    %300 = llvm.mlir.constant(16 : index) : i64
    %301 = llvm.add %299, %300  : i64
    %302 = llvm.call @malloc(%301) : (i64) -> !llvm.ptr<i8>
    %303 = llvm.bitcast %302 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %304 = llvm.ptrtoint %303 : !llvm.ptr<i32> to i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.sub %300, %305  : i64
    %307 = llvm.add %304, %306  : i64
    %308 = llvm.urem %307, %300  : i64
    %309 = llvm.sub %307, %308  : i64
    %310 = llvm.inttoptr %309 : i64 to !llvm.ptr<i32>
    %311 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %312 = llvm.insertvalue %303, %311[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.insertvalue %310, %312[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.insertvalue %314, %313[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.insertvalue %290, %315[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %291, %316[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %292, %317[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.insertvalue %293, %318[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.insertvalue %295, %319[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %292, %320[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %293, %321[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.insertvalue %294, %322[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%324 : i64)
  ^bb49(%327: i64):  // 2 preds: ^bb48, ^bb59
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%329 : i64)
  ^bb51(%332: i64):  // 2 preds: ^bb50, ^bb58
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(4 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%334 : i64)
  ^bb53(%337: i64):  // 2 preds: ^bb52, ^bb57
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %339 = llvm.mlir.constant(0 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%339 : i64)
  ^bb55(%342: i64):  // 2 preds: ^bb54, ^bb56
    %343 = llvm.icmp "slt" %342, %340 : i64
    llvm.cond_br %343, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %344 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.mlir.constant(4 : index) : i64
    %346 = llvm.mul %327, %345  : i64
    %347 = llvm.mlir.constant(4 : index) : i64
    %348 = llvm.mul %332, %347  : i64
    %349 = llvm.add %346, %348  : i64
    %350 = llvm.add %349, %337  : i64
    %351 = llvm.add %350, %342  : i64
    %352 = llvm.getelementptr %344[%351] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %353 = llvm.load %352 : !llvm.ptr<i32>
    %354 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %355 = llvm.load %354 : !llvm.ptr<i32>
    %356 = llvm.icmp "slt" %353, %355 : i32
    %357 = llvm.select %356, %355, %353 : i1, i32
    %358 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %359 = llvm.load %358 : !llvm.ptr<i32>
    %360 = llvm.icmp "slt" %357, %359 : i32
    %361 = llvm.select %360, %357, %359 : i1, i32
    %362 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.mlir.constant(4 : index) : i64
    %364 = llvm.mul %327, %363  : i64
    %365 = llvm.mlir.constant(4 : index) : i64
    %366 = llvm.mul %332, %365  : i64
    %367 = llvm.add %364, %366  : i64
    %368 = llvm.add %367, %337  : i64
    %369 = llvm.add %368, %342  : i64
    %370 = llvm.getelementptr %362[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %361, %370 : !llvm.ptr<i32>
    %371 = llvm.add %342, %341  : i64
    llvm.br ^bb55(%371 : i64)
  ^bb57:  // pred: ^bb55
    %372 = llvm.add %337, %336  : i64
    llvm.br ^bb53(%372 : i64)
  ^bb58:  // pred: ^bb53
    %373 = llvm.add %332, %331  : i64
    llvm.br ^bb51(%373 : i64)
  ^bb59:  // pred: ^bb51
    %374 = llvm.add %327, %326  : i64
    llvm.br ^bb49(%374 : i64)
  ^bb60:  // pred: ^bb49
    %375 = llvm.mlir.constant(4 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.null : !llvm.ptr<i64>
    %378 = llvm.getelementptr %377[%375] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %379 = llvm.ptrtoint %378 : !llvm.ptr<i64> to i64
    %380 = llvm.mlir.constant(16 : index) : i64
    %381 = llvm.add %379, %380  : i64
    %382 = llvm.call @malloc(%381) : (i64) -> !llvm.ptr<i8>
    %383 = llvm.bitcast %382 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %384 = llvm.ptrtoint %383 : !llvm.ptr<i64> to i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.sub %380, %385  : i64
    %387 = llvm.add %384, %386  : i64
    %388 = llvm.urem %387, %380  : i64
    %389 = llvm.sub %387, %388  : i64
    %390 = llvm.inttoptr %389 : i64 to !llvm.ptr<i64>
    %391 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %392 = llvm.insertvalue %383, %391[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.insertvalue %390, %392[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.insertvalue %394, %393[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.insertvalue %375, %395[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.insertvalue %376, %396[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.mlir.constant(4 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%398 : i64)
  ^bb61(%401: i64):  // 2 preds: ^bb60, ^bb62
    %402 = llvm.icmp "slt" %401, %399 : i64
    llvm.cond_br %402, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %403 = llvm.extractvalue %397[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %404 = llvm.getelementptr %403[%401] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %24, %404 : !llvm.ptr<i64>
    %405 = llvm.add %401, %400  : i64
    llvm.br ^bb61(%405 : i64)
  ^bb63:  // pred: ^bb61
    %406 = llvm.mlir.constant(4 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.null : !llvm.ptr<i64>
    %409 = llvm.getelementptr %408[%406] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %410 = llvm.ptrtoint %409 : !llvm.ptr<i64> to i64
    %411 = llvm.mlir.constant(16 : index) : i64
    %412 = llvm.add %410, %411  : i64
    %413 = llvm.call @malloc(%412) : (i64) -> !llvm.ptr<i8>
    %414 = llvm.bitcast %413 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %415 = llvm.ptrtoint %414 : !llvm.ptr<i64> to i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.sub %411, %416  : i64
    %418 = llvm.add %415, %417  : i64
    %419 = llvm.urem %418, %411  : i64
    %420 = llvm.sub %418, %419  : i64
    %421 = llvm.inttoptr %420 : i64 to !llvm.ptr<i64>
    %422 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %423 = llvm.insertvalue %414, %422[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %424 = llvm.insertvalue %421, %423[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.insertvalue %425, %424[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %427 = llvm.insertvalue %406, %426[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %428 = llvm.insertvalue %407, %427[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %429 = llvm.mlir.constant(0 : index) : i64
    %430 = llvm.mlir.constant(4 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%429 : i64)
  ^bb64(%432: i64):  // 2 preds: ^bb63, ^bb65
    %433 = llvm.icmp "slt" %432, %430 : i64
    llvm.cond_br %433, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %434 = llvm.extractvalue %397[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %435 = llvm.getelementptr %434[%432] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %436 = llvm.load %435 : !llvm.ptr<i64>
    %437 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %438 = llvm.load %437 : !llvm.ptr<i64>
    %439 = llvm.mul %436, %438  : i64
    %440 = llvm.extractvalue %428[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %441 = llvm.getelementptr %440[%432] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %439, %441 : !llvm.ptr<i64>
    %442 = llvm.add %432, %431  : i64
    llvm.br ^bb64(%442 : i64)
  ^bb66:  // pred: ^bb64
    %443 = llvm.mlir.constant(4 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    %445 = llvm.mlir.null : !llvm.ptr<i1>
    %446 = llvm.getelementptr %445[%443] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %447 = llvm.ptrtoint %446 : !llvm.ptr<i1> to i64
    %448 = llvm.mlir.constant(16 : index) : i64
    %449 = llvm.add %447, %448  : i64
    %450 = llvm.call @malloc(%449) : (i64) -> !llvm.ptr<i8>
    %451 = llvm.bitcast %450 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %452 = llvm.ptrtoint %451 : !llvm.ptr<i1> to i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.sub %448, %453  : i64
    %455 = llvm.add %452, %454  : i64
    %456 = llvm.urem %455, %448  : i64
    %457 = llvm.sub %455, %456  : i64
    %458 = llvm.inttoptr %457 : i64 to !llvm.ptr<i1>
    %459 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %460 = llvm.insertvalue %451, %459[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.insertvalue %458, %460[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.insertvalue %462, %461[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %464 = llvm.insertvalue %443, %463[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.insertvalue %444, %464[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.mlir.constant(4 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%466 : i64)
  ^bb67(%469: i64):  // 2 preds: ^bb66, ^bb68
    %470 = llvm.icmp "slt" %469, %467 : i64
    llvm.cond_br %470, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %471 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %472 = llvm.getelementptr %471[%469] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %473 = llvm.load %472 : !llvm.ptr<i64>
    %474 = llvm.extractvalue %428[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %475 = llvm.getelementptr %474[%469] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %476 = llvm.load %475 : !llvm.ptr<i64>
    %477 = llvm.icmp "eq" %473, %476 : i64
    %478 = llvm.extractvalue %465[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %479 = llvm.getelementptr %478[%469] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %477, %479 : !llvm.ptr<i1>
    %480 = llvm.add %469, %468  : i64
    llvm.br ^bb67(%480 : i64)
  ^bb69:  // pred: ^bb67
    %481 = llvm.mlir.constant(4 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.null : !llvm.ptr<i64>
    %484 = llvm.getelementptr %483[%481] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %485 = llvm.ptrtoint %484 : !llvm.ptr<i64> to i64
    %486 = llvm.mlir.constant(16 : index) : i64
    %487 = llvm.add %485, %486  : i64
    %488 = llvm.call @malloc(%487) : (i64) -> !llvm.ptr<i8>
    %489 = llvm.bitcast %488 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %490 = llvm.ptrtoint %489 : !llvm.ptr<i64> to i64
    %491 = llvm.mlir.constant(1 : index) : i64
    %492 = llvm.sub %486, %491  : i64
    %493 = llvm.add %490, %492  : i64
    %494 = llvm.urem %493, %486  : i64
    %495 = llvm.sub %493, %494  : i64
    %496 = llvm.inttoptr %495 : i64 to !llvm.ptr<i64>
    %497 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %498 = llvm.insertvalue %489, %497[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %499 = llvm.insertvalue %496, %498[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.insertvalue %500, %499[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %502 = llvm.insertvalue %481, %501[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %503 = llvm.insertvalue %482, %502[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.mlir.constant(4 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%504 : i64)
  ^bb70(%507: i64):  // 2 preds: ^bb69, ^bb71
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %509 = llvm.extractvalue %465[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %510 = llvm.getelementptr %509[%507] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %511 = llvm.load %510 : !llvm.ptr<i1>
    %512 = llvm.extractvalue %397[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %513 = llvm.getelementptr %512[%507] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %514 = llvm.load %513 : !llvm.ptr<i64>
    %515 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %516 = llvm.getelementptr %515[%507] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %517 = llvm.load %516 : !llvm.ptr<i64>
    %518 = llvm.select %511, %514, %517 : i1, i64
    %519 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %520 = llvm.getelementptr %519[%507] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %518, %520 : !llvm.ptr<i64>
    %521 = llvm.add %507, %506  : i64
    llvm.br ^bb70(%521 : i64)
  ^bb72:  // pred: ^bb70
    %522 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %523 = llvm.getelementptr %522[%25] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %524 = llvm.load %523 : !llvm.ptr<i64>
    %525 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %526 = llvm.getelementptr %525[%27] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %527 = llvm.load %526 : !llvm.ptr<i64>
    %528 = llvm.extractvalue %503[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %529 = llvm.getelementptr %528[%26] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %530 = llvm.load %529 : !llvm.ptr<i64>
    %531 = llvm.mlir.constant(4 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    %533 = llvm.mul %530, %531  : i64
    %534 = llvm.mul %533, %527  : i64
    %535 = llvm.mul %534, %524  : i64
    %536 = llvm.mlir.null : !llvm.ptr<i32>
    %537 = llvm.getelementptr %536[%535] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %538 = llvm.ptrtoint %537 : !llvm.ptr<i32> to i64
    %539 = llvm.mlir.constant(16 : index) : i64
    %540 = llvm.add %538, %539  : i64
    %541 = llvm.call @malloc(%540) : (i64) -> !llvm.ptr<i8>
    %542 = llvm.bitcast %541 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %543 = llvm.ptrtoint %542 : !llvm.ptr<i32> to i64
    %544 = llvm.mlir.constant(1 : index) : i64
    %545 = llvm.sub %539, %544  : i64
    %546 = llvm.add %543, %545  : i64
    %547 = llvm.urem %546, %539  : i64
    %548 = llvm.sub %546, %547  : i64
    %549 = llvm.inttoptr %548 : i64 to !llvm.ptr<i32>
    %550 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %551 = llvm.insertvalue %542, %550[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %552 = llvm.insertvalue %549, %551[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %553 = llvm.mlir.constant(0 : index) : i64
    %554 = llvm.insertvalue %553, %552[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %555 = llvm.insertvalue %524, %554[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %556 = llvm.insertvalue %527, %555[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %557 = llvm.insertvalue %531, %556[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %558 = llvm.insertvalue %530, %557[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %559 = llvm.insertvalue %534, %558[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %560 = llvm.insertvalue %533, %559[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.insertvalue %530, %560[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %562 = llvm.insertvalue %532, %561[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %563 = llvm.mlir.constant(0 : index) : i64
    %564 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%563 : i64)
  ^bb73(%565: i64):  // 2 preds: ^bb72, ^bb83
    %566 = llvm.icmp "slt" %565, %524 : i64
    llvm.cond_br %566, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %567 = llvm.mlir.constant(0 : index) : i64
    %568 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%567 : i64)
  ^bb75(%569: i64):  // 2 preds: ^bb74, ^bb82
    %570 = llvm.icmp "slt" %569, %527 : i64
    llvm.cond_br %570, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %571 = llvm.mlir.constant(0 : index) : i64
    %572 = llvm.mlir.constant(4 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%571 : i64)
  ^bb77(%574: i64):  // 2 preds: ^bb76, ^bb81
    %575 = llvm.icmp "slt" %574, %572 : i64
    llvm.cond_br %575, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %576 = llvm.mlir.constant(0 : index) : i64
    %577 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%576 : i64)
  ^bb79(%578: i64):  // 2 preds: ^bb78, ^bb80
    %579 = llvm.icmp "slt" %578, %530 : i64
    llvm.cond_br %579, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %580 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.mlir.constant(4 : index) : i64
    %582 = llvm.mul %25, %581  : i64
    %583 = llvm.mlir.constant(4 : index) : i64
    %584 = llvm.mul %25, %583  : i64
    %585 = llvm.add %582, %584  : i64
    %586 = llvm.add %585, %574  : i64
    %587 = llvm.add %586, %25  : i64
    %588 = llvm.getelementptr %580[%587] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %589 = llvm.load %588 : !llvm.ptr<i32>
    %590 = llvm.extractvalue %562[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.extractvalue %562[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.mul %565, %591  : i64
    %593 = llvm.extractvalue %562[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.mul %569, %593  : i64
    %595 = llvm.add %592, %594  : i64
    %596 = llvm.extractvalue %562[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %597 = llvm.mul %574, %596  : i64
    %598 = llvm.add %595, %597  : i64
    %599 = llvm.add %598, %578  : i64
    %600 = llvm.getelementptr %590[%599] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %589, %600 : !llvm.ptr<i32>
    %601 = llvm.add %578, %577  : i64
    llvm.br ^bb79(%601 : i64)
  ^bb81:  // pred: ^bb79
    %602 = llvm.add %574, %573  : i64
    llvm.br ^bb77(%602 : i64)
  ^bb82:  // pred: ^bb77
    %603 = llvm.add %569, %568  : i64
    llvm.br ^bb75(%603 : i64)
  ^bb83:  // pred: ^bb75
    %604 = llvm.add %565, %564  : i64
    llvm.br ^bb73(%604 : i64)
  ^bb84:  // pred: ^bb73
    %605 = llvm.mlir.constant(1 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.constant(4 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    %609 = llvm.mlir.constant(1 : index) : i64
    %610 = llvm.mlir.constant(4 : index) : i64
    %611 = llvm.mlir.constant(4 : index) : i64
    %612 = llvm.mlir.null : !llvm.ptr<i32>
    %613 = llvm.getelementptr %612[%611] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %614 = llvm.ptrtoint %613 : !llvm.ptr<i32> to i64
    %615 = llvm.mlir.constant(16 : index) : i64
    %616 = llvm.add %614, %615  : i64
    %617 = llvm.call @malloc(%616) : (i64) -> !llvm.ptr<i8>
    %618 = llvm.bitcast %617 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %619 = llvm.ptrtoint %618 : !llvm.ptr<i32> to i64
    %620 = llvm.mlir.constant(1 : index) : i64
    %621 = llvm.sub %615, %620  : i64
    %622 = llvm.add %619, %621  : i64
    %623 = llvm.urem %622, %615  : i64
    %624 = llvm.sub %622, %623  : i64
    %625 = llvm.inttoptr %624 : i64 to !llvm.ptr<i32>
    %626 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %627 = llvm.insertvalue %618, %626[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %628 = llvm.insertvalue %625, %627[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %629 = llvm.mlir.constant(0 : index) : i64
    %630 = llvm.insertvalue %629, %628[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %631 = llvm.insertvalue %605, %630[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %632 = llvm.insertvalue %606, %631[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %633 = llvm.insertvalue %607, %632[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %634 = llvm.insertvalue %608, %633[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %635 = llvm.insertvalue %610, %634[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %636 = llvm.insertvalue %607, %635[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %637 = llvm.insertvalue %608, %636[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %638 = llvm.insertvalue %609, %637[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %639 = llvm.mlir.constant(0 : index) : i64
    %640 = llvm.mlir.constant(1 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%639 : i64)
  ^bb85(%642: i64):  // 2 preds: ^bb84, ^bb95
    %643 = llvm.icmp "slt" %642, %640 : i64
    llvm.cond_br %643, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %644 = llvm.mlir.constant(0 : index) : i64
    %645 = llvm.mlir.constant(1 : index) : i64
    %646 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%644 : i64)
  ^bb87(%647: i64):  // 2 preds: ^bb86, ^bb94
    %648 = llvm.icmp "slt" %647, %645 : i64
    llvm.cond_br %648, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %649 = llvm.mlir.constant(0 : index) : i64
    %650 = llvm.mlir.constant(4 : index) : i64
    %651 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%649 : i64)
  ^bb89(%652: i64):  // 2 preds: ^bb88, ^bb93
    %653 = llvm.icmp "slt" %652, %650 : i64
    llvm.cond_br %653, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %654 = llvm.mlir.constant(0 : index) : i64
    %655 = llvm.mlir.constant(1 : index) : i64
    %656 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%654 : i64)
  ^bb91(%657: i64):  // 2 preds: ^bb90, ^bb92
    %658 = llvm.icmp "slt" %657, %655 : i64
    llvm.cond_br %658, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %659 = llvm.extractvalue %562[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %660 = llvm.extractvalue %562[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %661 = llvm.mul %642, %660  : i64
    %662 = llvm.extractvalue %562[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %663 = llvm.mul %647, %662  : i64
    %664 = llvm.add %661, %663  : i64
    %665 = llvm.extractvalue %562[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %666 = llvm.mul %652, %665  : i64
    %667 = llvm.add %664, %666  : i64
    %668 = llvm.add %667, %657  : i64
    %669 = llvm.getelementptr %659[%668] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %670 = llvm.load %669 : !llvm.ptr<i32>
    %671 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %672 = llvm.load %671 : !llvm.ptr<i32>
    %673 = llvm.icmp "slt" %670, %672 : i32
    %674 = llvm.select %673, %672, %670 : i1, i32
    %675 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %676 = llvm.load %675 : !llvm.ptr<i32>
    %677 = llvm.icmp "slt" %674, %676 : i32
    %678 = llvm.select %677, %674, %676 : i1, i32
    %679 = llvm.extractvalue %638[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %680 = llvm.mlir.constant(4 : index) : i64
    %681 = llvm.mul %642, %680  : i64
    %682 = llvm.mlir.constant(4 : index) : i64
    %683 = llvm.mul %647, %682  : i64
    %684 = llvm.add %681, %683  : i64
    %685 = llvm.add %684, %652  : i64
    %686 = llvm.add %685, %657  : i64
    %687 = llvm.getelementptr %679[%686] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %678, %687 : !llvm.ptr<i32>
    %688 = llvm.add %657, %656  : i64
    llvm.br ^bb91(%688 : i64)
  ^bb93:  // pred: ^bb91
    %689 = llvm.add %652, %651  : i64
    llvm.br ^bb89(%689 : i64)
  ^bb94:  // pred: ^bb89
    %690 = llvm.add %647, %646  : i64
    llvm.br ^bb87(%690 : i64)
  ^bb95:  // pred: ^bb87
    %691 = llvm.add %642, %641  : i64
    llvm.br ^bb85(%691 : i64)
  ^bb96:  // pred: ^bb85
    %692 = llvm.mlir.constant(1 : index) : i64
    %693 = llvm.mlir.constant(1 : index) : i64
    %694 = llvm.mlir.constant(4 : index) : i64
    %695 = llvm.mlir.constant(1 : index) : i64
    %696 = llvm.mlir.constant(1 : index) : i64
    %697 = llvm.mlir.constant(4 : index) : i64
    %698 = llvm.mlir.constant(4 : index) : i64
    %699 = llvm.mlir.null : !llvm.ptr<i1>
    %700 = llvm.getelementptr %699[%698] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %701 = llvm.ptrtoint %700 : !llvm.ptr<i1> to i64
    %702 = llvm.mlir.constant(16 : index) : i64
    %703 = llvm.add %701, %702  : i64
    %704 = llvm.call @malloc(%703) : (i64) -> !llvm.ptr<i8>
    %705 = llvm.bitcast %704 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %706 = llvm.ptrtoint %705 : !llvm.ptr<i1> to i64
    %707 = llvm.mlir.constant(1 : index) : i64
    %708 = llvm.sub %702, %707  : i64
    %709 = llvm.add %706, %708  : i64
    %710 = llvm.urem %709, %702  : i64
    %711 = llvm.sub %709, %710  : i64
    %712 = llvm.inttoptr %711 : i64 to !llvm.ptr<i1>
    %713 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %714 = llvm.insertvalue %705, %713[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %715 = llvm.insertvalue %712, %714[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %716 = llvm.mlir.constant(0 : index) : i64
    %717 = llvm.insertvalue %716, %715[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %718 = llvm.insertvalue %692, %717[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %719 = llvm.insertvalue %693, %718[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %720 = llvm.insertvalue %694, %719[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %721 = llvm.insertvalue %695, %720[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %722 = llvm.insertvalue %697, %721[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %723 = llvm.insertvalue %694, %722[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %724 = llvm.insertvalue %695, %723[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %725 = llvm.insertvalue %696, %724[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %726 = llvm.mlir.constant(0 : index) : i64
    %727 = llvm.mlir.constant(1 : index) : i64
    %728 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%726 : i64)
  ^bb97(%729: i64):  // 2 preds: ^bb96, ^bb107
    %730 = llvm.icmp "slt" %729, %727 : i64
    llvm.cond_br %730, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %731 = llvm.mlir.constant(0 : index) : i64
    %732 = llvm.mlir.constant(1 : index) : i64
    %733 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%731 : i64)
  ^bb99(%734: i64):  // 2 preds: ^bb98, ^bb106
    %735 = llvm.icmp "slt" %734, %732 : i64
    llvm.cond_br %735, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %736 = llvm.mlir.constant(0 : index) : i64
    %737 = llvm.mlir.constant(4 : index) : i64
    %738 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%736 : i64)
  ^bb101(%739: i64):  // 2 preds: ^bb100, ^bb105
    %740 = llvm.icmp "slt" %739, %737 : i64
    llvm.cond_br %740, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %741 = llvm.mlir.constant(0 : index) : i64
    %742 = llvm.mlir.constant(1 : index) : i64
    %743 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%741 : i64)
  ^bb103(%744: i64):  // 2 preds: ^bb102, ^bb104
    %745 = llvm.icmp "slt" %744, %742 : i64
    llvm.cond_br %745, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %746 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %747 = llvm.mlir.constant(4 : index) : i64
    %748 = llvm.mul %25, %747  : i64
    %749 = llvm.mlir.constant(4 : index) : i64
    %750 = llvm.mul %25, %749  : i64
    %751 = llvm.add %748, %750  : i64
    %752 = llvm.add %751, %739  : i64
    %753 = llvm.add %752, %25  : i64
    %754 = llvm.getelementptr %746[%753] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %755 = llvm.load %754 : !llvm.ptr<i32>
    %756 = llvm.extractvalue %562[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %757 = llvm.extractvalue %562[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %758 = llvm.mul %729, %757  : i64
    %759 = llvm.extractvalue %562[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %760 = llvm.mul %734, %759  : i64
    %761 = llvm.add %758, %760  : i64
    %762 = llvm.extractvalue %562[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %763 = llvm.mul %739, %762  : i64
    %764 = llvm.add %761, %763  : i64
    %765 = llvm.add %764, %744  : i64
    %766 = llvm.getelementptr %756[%765] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %767 = llvm.load %766 : !llvm.ptr<i32>
    %768 = llvm.icmp "slt" %755, %767 : i32
    %769 = llvm.extractvalue %725[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %770 = llvm.mlir.constant(4 : index) : i64
    %771 = llvm.mul %729, %770  : i64
    %772 = llvm.mlir.constant(4 : index) : i64
    %773 = llvm.mul %734, %772  : i64
    %774 = llvm.add %771, %773  : i64
    %775 = llvm.add %774, %739  : i64
    %776 = llvm.add %775, %744  : i64
    %777 = llvm.getelementptr %769[%776] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %768, %777 : !llvm.ptr<i1>
    %778 = llvm.add %744, %743  : i64
    llvm.br ^bb103(%778 : i64)
  ^bb105:  // pred: ^bb103
    %779 = llvm.add %739, %738  : i64
    llvm.br ^bb101(%779 : i64)
  ^bb106:  // pred: ^bb101
    %780 = llvm.add %734, %733  : i64
    llvm.br ^bb99(%780 : i64)
  ^bb107:  // pred: ^bb99
    %781 = llvm.add %729, %728  : i64
    llvm.br ^bb97(%781 : i64)
  ^bb108:  // pred: ^bb97
    %782 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %783 = llvm.insertvalue %638, %782[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %784 = llvm.insertvalue %725, %783[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %784 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v7_0", "v4_0"], llvm.emit_c_interface, output_names = ["v1_0", "v3_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(4 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(3 : i64) : i64
    %118 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %100[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %101[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.getelementptr %91[%122] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %123 : !llvm.ptr<ptr<i8>>
    %124 = llvm.mlir.constant(4 : i64) : i64
    %125 = llvm.call @omTensorCreateUntyped(%124) : (i64) -> !llvm.ptr<i8>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.bitcast %127 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %129 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.bitcast %129 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%125, %126, %128, %130) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %131 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%125, %131) : (!llvm.ptr<i8>, i64) -> ()
    %132 = llvm.call @omTensorGetShape(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.call @omTensorGetStrides(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %134 = llvm.mlir.constant(0 : i64) : i64
    %135 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %132[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %133[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %132[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %133[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(2 : i64) : i64
    %145 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %132[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %133[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(3 : i64) : i64
    %150 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %132[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %133[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.getelementptr %91[%154] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %125, %155 : !llvm.ptr<ptr<i8>>
    %156 = llvm.call @omTensorListCreate(%91, %88, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %156 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

