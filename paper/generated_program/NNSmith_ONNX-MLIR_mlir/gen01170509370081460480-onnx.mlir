module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<5> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v8_0", "v6_0", "v5_0"], llvm.emit_c_interface, output_names = ["v4_0"]} {
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
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %25 = llvm.insertvalue %arg22, %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg23, %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg24, %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg25, %27[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg29, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %arg26, %29[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %arg30, %30[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %arg27, %31[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %arg31, %32[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %arg28, %33[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %arg32, %34[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.mlir.constant(0 : i64) : i64
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.mlir.constant(3 : index) : i64
    %40 = llvm.mlir.constant(2 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
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
    %53 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %56 = llvm.insertvalue %54, %55[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %57 = llvm.insertvalue %54, %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.insertvalue %58, %57[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %60 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
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
    %71 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
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
    %94 = llvm.mlir.constant(4 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.null : !llvm.ptr<i32>
    %100 = llvm.getelementptr %99[%94] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %101 = llvm.ptrtoint %100 : !llvm.ptr<i32> to i64
    %102 = llvm.mlir.constant(16 : index) : i64
    %103 = llvm.add %101, %102  : i64
    %104 = llvm.call @malloc(%103) : (i64) -> !llvm.ptr<i8>
    %105 = llvm.bitcast %104 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %106 = llvm.ptrtoint %105 : !llvm.ptr<i32> to i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.sub %102, %107  : i64
    %109 = llvm.add %106, %108  : i64
    %110 = llvm.urem %109, %102  : i64
    %111 = llvm.sub %109, %110  : i64
    %112 = llvm.inttoptr %111 : i64 to !llvm.ptr<i32>
    %113 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %114 = llvm.insertvalue %105, %113[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %112, %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.insertvalue %116, %115[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.insertvalue %94, %117[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.insertvalue %95, %118[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %96, %119[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %97, %120[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %95, %121[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %96, %122[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %97, %123[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %98, %124[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%126 : i64)
  ^bb1(%129: i64):  // 2 preds: ^bb0, ^bb11
    %130 = llvm.icmp "slt" %129, %127 : i64
    llvm.cond_br %130, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%131 : i64)
  ^bb3(%134: i64):  // 2 preds: ^bb2, ^bb10
    %135 = llvm.icmp "slt" %134, %132 : i64
    llvm.cond_br %135, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%136 : i64)
  ^bb5(%139: i64):  // 2 preds: ^bb4, ^bb9
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%141 : i64)
  ^bb7(%144: i64):  // 2 preds: ^bb6, ^bb8
    %145 = llvm.icmp "slt" %144, %142 : i64
    llvm.cond_br %145, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %146 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.add %129, %134  : i64
    %148 = llvm.add %147, %139  : i64
    %149 = llvm.add %148, %144  : i64
    %150 = llvm.getelementptr %146[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %151 = llvm.load %150 : !llvm.ptr<i32>
    %152 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.add %129, %134  : i64
    %154 = llvm.add %153, %139  : i64
    %155 = llvm.add %154, %144  : i64
    %156 = llvm.getelementptr %152[%155] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %151, %156 : !llvm.ptr<i32>
    %157 = llvm.add %144, %143  : i64
    llvm.br ^bb7(%157 : i64)
  ^bb9:  // pred: ^bb7
    %158 = llvm.add %139, %138  : i64
    llvm.br ^bb5(%158 : i64)
  ^bb10:  // pred: ^bb5
    %159 = llvm.add %134, %133  : i64
    llvm.br ^bb3(%159 : i64)
  ^bb11:  // pred: ^bb3
    %160 = llvm.add %129, %128  : i64
    llvm.br ^bb1(%160 : i64)
  ^bb12:  // pred: ^bb1
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%161 : i64)
  ^bb13(%164: i64):  // 2 preds: ^bb12, ^bb23
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%166 : i64)
  ^bb15(%169: i64):  // 2 preds: ^bb14, ^bb22
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%171 : i64)
  ^bb17(%174: i64):  // 2 preds: ^bb16, ^bb21
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%176 : i64)
  ^bb19(%179: i64):  // 2 preds: ^bb18, ^bb20
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.add %164, %181  : i64
    %183 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.add %164, %169  : i64
    %185 = llvm.add %184, %174  : i64
    %186 = llvm.add %185, %179  : i64
    %187 = llvm.getelementptr %183[%186] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %188 = llvm.load %187 : !llvm.ptr<i32>
    %189 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.add %182, %169  : i64
    %191 = llvm.add %190, %174  : i64
    %192 = llvm.add %191, %179  : i64
    %193 = llvm.getelementptr %189[%192] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %188, %193 : !llvm.ptr<i32>
    %194 = llvm.add %179, %178  : i64
    llvm.br ^bb19(%194 : i64)
  ^bb21:  // pred: ^bb19
    %195 = llvm.add %174, %173  : i64
    llvm.br ^bb17(%195 : i64)
  ^bb22:  // pred: ^bb17
    %196 = llvm.add %169, %168  : i64
    llvm.br ^bb15(%196 : i64)
  ^bb23:  // pred: ^bb15
    %197 = llvm.add %164, %163  : i64
    llvm.br ^bb13(%197 : i64)
  ^bb24:  // pred: ^bb13
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%198 : i64)
  ^bb25(%201: i64):  // 2 preds: ^bb24, ^bb35
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%203 : i64)
  ^bb27(%206: i64):  // 2 preds: ^bb26, ^bb34
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%208 : i64)
  ^bb29(%211: i64):  // 2 preds: ^bb28, ^bb33
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%213 : i64)
  ^bb31(%216: i64):  // 2 preds: ^bb30, ^bb32
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %218 = llvm.mlir.constant(2 : index) : i64
    %219 = llvm.add %201, %218  : i64
    %220 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.add %201, %206  : i64
    %222 = llvm.add %221, %211  : i64
    %223 = llvm.add %222, %216  : i64
    %224 = llvm.getelementptr %220[%223] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %225 = llvm.load %224 : !llvm.ptr<i32>
    %226 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.add %219, %206  : i64
    %228 = llvm.add %227, %211  : i64
    %229 = llvm.add %228, %216  : i64
    %230 = llvm.getelementptr %226[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %225, %230 : !llvm.ptr<i32>
    %231 = llvm.add %216, %215  : i64
    llvm.br ^bb31(%231 : i64)
  ^bb33:  // pred: ^bb31
    %232 = llvm.add %211, %210  : i64
    llvm.br ^bb29(%232 : i64)
  ^bb34:  // pred: ^bb29
    %233 = llvm.add %206, %205  : i64
    llvm.br ^bb27(%233 : i64)
  ^bb35:  // pred: ^bb27
    %234 = llvm.add %201, %200  : i64
    llvm.br ^bb25(%234 : i64)
  ^bb36:  // pred: ^bb25
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%235 : i64)
  ^bb37(%238: i64):  // 2 preds: ^bb36, ^bb47
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%240 : i64)
  ^bb39(%243: i64):  // 2 preds: ^bb38, ^bb46
    %244 = llvm.icmp "slt" %243, %241 : i64
    llvm.cond_br %244, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%245 : i64)
  ^bb41(%248: i64):  // 2 preds: ^bb40, ^bb45
    %249 = llvm.icmp "slt" %248, %246 : i64
    llvm.cond_br %249, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%250 : i64)
  ^bb43(%253: i64):  // 2 preds: ^bb42, ^bb44
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %255 = llvm.mlir.constant(3 : index) : i64
    %256 = llvm.add %238, %255  : i64
    %257 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.add %238, %243  : i64
    %259 = llvm.add %258, %248  : i64
    %260 = llvm.add %259, %253  : i64
    %261 = llvm.getelementptr %257[%260] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %262 = llvm.load %261 : !llvm.ptr<i32>
    %263 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.add %256, %243  : i64
    %265 = llvm.add %264, %248  : i64
    %266 = llvm.add %265, %253  : i64
    %267 = llvm.getelementptr %263[%266] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %262, %267 : !llvm.ptr<i32>
    %268 = llvm.add %253, %252  : i64
    llvm.br ^bb43(%268 : i64)
  ^bb45:  // pred: ^bb43
    %269 = llvm.add %248, %247  : i64
    llvm.br ^bb41(%269 : i64)
  ^bb46:  // pred: ^bb41
    %270 = llvm.add %243, %242  : i64
    llvm.br ^bb39(%270 : i64)
  ^bb47:  // pred: ^bb39
    %271 = llvm.add %238, %237  : i64
    llvm.br ^bb37(%271 : i64)
  ^bb48:  // pred: ^bb37
    %272 = llvm.mlir.constant(4 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.null : !llvm.ptr<i64>
    %278 = llvm.getelementptr %277[%272] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %279 = llvm.ptrtoint %278 : !llvm.ptr<i64> to i64
    %280 = llvm.mlir.constant(16 : index) : i64
    %281 = llvm.add %279, %280  : i64
    %282 = llvm.call @malloc(%281) : (i64) -> !llvm.ptr<i8>
    %283 = llvm.bitcast %282 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %284 = llvm.ptrtoint %283 : !llvm.ptr<i64> to i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.sub %280, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.urem %287, %280  : i64
    %289 = llvm.sub %287, %288  : i64
    %290 = llvm.inttoptr %289 : i64 to !llvm.ptr<i64>
    %291 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %292 = llvm.insertvalue %283, %291[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.insertvalue %290, %292[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.insertvalue %294, %293[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %272, %295[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %273, %296[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %274, %297[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %275, %298[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %273, %299[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %274, %300[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %275, %301[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %276, %302[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(4 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%304 : i64)
  ^bb49(%307: i64):  // 2 preds: ^bb48, ^bb59
    %308 = llvm.icmp "slt" %307, %305 : i64
    llvm.cond_br %308, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%309 : i64)
  ^bb51(%312: i64):  // 2 preds: ^bb50, ^bb58
    %313 = llvm.icmp "slt" %312, %310 : i64
    llvm.cond_br %313, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%314 : i64)
  ^bb53(%317: i64):  // 2 preds: ^bb52, ^bb57
    %318 = llvm.icmp "slt" %317, %315 : i64
    llvm.cond_br %318, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%319 : i64)
  ^bb55(%322: i64):  // 2 preds: ^bb54, ^bb56
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %324 = llvm.extractvalue %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.add %307, %312  : i64
    %326 = llvm.add %325, %317  : i64
    %327 = llvm.add %326, %322  : i64
    %328 = llvm.getelementptr %324[%327] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %329 = llvm.load %328 : !llvm.ptr<i32>
    %330 = llvm.sext %329 : i32 to i64
    %331 = llvm.extractvalue %303[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.add %307, %312  : i64
    %333 = llvm.add %332, %317  : i64
    %334 = llvm.add %333, %322  : i64
    %335 = llvm.getelementptr %331[%334] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %330, %335 : !llvm.ptr<i64>
    %336 = llvm.add %322, %321  : i64
    llvm.br ^bb55(%336 : i64)
  ^bb57:  // pred: ^bb55
    %337 = llvm.add %317, %316  : i64
    llvm.br ^bb53(%337 : i64)
  ^bb58:  // pred: ^bb53
    %338 = llvm.add %312, %311  : i64
    llvm.br ^bb51(%338 : i64)
  ^bb59:  // pred: ^bb51
    %339 = llvm.add %307, %306  : i64
    llvm.br ^bb49(%339 : i64)
  ^bb60:  // pred: ^bb49
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.null : !llvm.ptr<i64>
    %345 = llvm.getelementptr %344[%340] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %346 = llvm.ptrtoint %345 : !llvm.ptr<i64> to i64
    %347 = llvm.mlir.constant(16 : index) : i64
    %348 = llvm.add %346, %347  : i64
    %349 = llvm.call @malloc(%348) : (i64) -> !llvm.ptr<i8>
    %350 = llvm.bitcast %349 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %351 = llvm.ptrtoint %350 : !llvm.ptr<i64> to i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.sub %347, %352  : i64
    %354 = llvm.add %351, %353  : i64
    %355 = llvm.urem %354, %347  : i64
    %356 = llvm.sub %354, %355  : i64
    %357 = llvm.inttoptr %356 : i64 to !llvm.ptr<i64>
    %358 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %359 = llvm.insertvalue %350, %358[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %360 = llvm.insertvalue %357, %359[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.insertvalue %361, %360[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %363 = llvm.insertvalue %340, %362[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %364 = llvm.insertvalue %341, %363[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %365 = llvm.insertvalue %342, %364[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %366 = llvm.insertvalue %341, %365[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %367 = llvm.insertvalue %342, %366[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %368 = llvm.insertvalue %343, %367[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%369 : i64)
  ^bb61(%372: i64):  // 2 preds: ^bb60, ^bb68
    %373 = llvm.icmp "slt" %372, %370 : i64
    llvm.cond_br %373, ^bb62, ^bb69
  ^bb62:  // pred: ^bb61
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%374 : i64)
  ^bb63(%377: i64):  // 2 preds: ^bb62, ^bb67
    %378 = llvm.icmp "slt" %377, %375 : i64
    llvm.cond_br %378, ^bb64, ^bb68
  ^bb64:  // pred: ^bb63
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%379 : i64)
  ^bb65(%382: i64):  // 2 preds: ^bb64, ^bb66
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb66, ^bb67
  ^bb66:  // pred: ^bb65
    %384 = llvm.extractvalue %368[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %385 = llvm.add %372, %377  : i64
    %386 = llvm.add %385, %382  : i64
    %387 = llvm.getelementptr %384[%386] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %37, %387 : !llvm.ptr<i64>
    %388 = llvm.add %382, %381  : i64
    llvm.br ^bb65(%388 : i64)
  ^bb67:  // pred: ^bb65
    %389 = llvm.add %377, %376  : i64
    llvm.br ^bb63(%389 : i64)
  ^bb68:  // pred: ^bb63
    %390 = llvm.add %372, %371  : i64
    llvm.br ^bb61(%390 : i64)
  ^bb69:  // pred: ^bb61
    %391 = llvm.mlir.constant(0 : index) : i64
    %392 = llvm.mlir.constant(4 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%391 : i64)
  ^bb70(%394: i64):  // 2 preds: ^bb69, ^bb80
    %395 = llvm.icmp "slt" %394, %392 : i64
    llvm.cond_br %395, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %396 = llvm.mlir.constant(0 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%396 : i64)
  ^bb72(%399: i64):  // 2 preds: ^bb71, ^bb79
    %400 = llvm.icmp "slt" %399, %397 : i64
    llvm.cond_br %400, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %401 = llvm.mlir.constant(0 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%401 : i64)
  ^bb74(%404: i64):  // 2 preds: ^bb73, ^bb78
    %405 = llvm.icmp "slt" %404, %402 : i64
    llvm.cond_br %405, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%406 : i64)
  ^bb76(%409: i64):  // 2 preds: ^bb75, ^bb77
    %410 = llvm.icmp "slt" %409, %407 : i64
    llvm.cond_br %410, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %411 = llvm.extractvalue %303[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.add %394, %399  : i64
    %413 = llvm.add %412, %404  : i64
    %414 = llvm.add %413, %409  : i64
    %415 = llvm.getelementptr %411[%414] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %416 = llvm.load %415 : !llvm.ptr<i64>
    %417 = llvm.extractvalue %368[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %418 = llvm.add %399, %404  : i64
    %419 = llvm.add %418, %409  : i64
    %420 = llvm.getelementptr %417[%419] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %421 = llvm.load %420 : !llvm.ptr<i64>
    %422 = llvm.add %421, %416  : i64
    %423 = llvm.extractvalue %368[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %424 = llvm.add %399, %404  : i64
    %425 = llvm.add %424, %409  : i64
    %426 = llvm.getelementptr %423[%425] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %422, %426 : !llvm.ptr<i64>
    %427 = llvm.add %409, %408  : i64
    llvm.br ^bb76(%427 : i64)
  ^bb78:  // pred: ^bb76
    %428 = llvm.add %404, %403  : i64
    llvm.br ^bb74(%428 : i64)
  ^bb79:  // pred: ^bb74
    %429 = llvm.add %399, %398  : i64
    llvm.br ^bb72(%429 : i64)
  ^bb80:  // pred: ^bb72
    %430 = llvm.add %394, %393  : i64
    llvm.br ^bb70(%430 : i64)
  ^bb81:  // pred: ^bb70
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.mlir.constant(1 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.mlir.null : !llvm.ptr<i64>
    %436 = llvm.getelementptr %435[%431] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %437 = llvm.ptrtoint %436 : !llvm.ptr<i64> to i64
    %438 = llvm.mlir.constant(16 : index) : i64
    %439 = llvm.add %437, %438  : i64
    %440 = llvm.call @malloc(%439) : (i64) -> !llvm.ptr<i8>
    %441 = llvm.bitcast %440 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %442 = llvm.ptrtoint %441 : !llvm.ptr<i64> to i64
    %443 = llvm.mlir.constant(1 : index) : i64
    %444 = llvm.sub %438, %443  : i64
    %445 = llvm.add %442, %444  : i64
    %446 = llvm.urem %445, %438  : i64
    %447 = llvm.sub %445, %446  : i64
    %448 = llvm.inttoptr %447 : i64 to !llvm.ptr<i64>
    %449 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %450 = llvm.insertvalue %441, %449[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %451 = llvm.insertvalue %448, %450[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %452 = llvm.mlir.constant(0 : index) : i64
    %453 = llvm.insertvalue %452, %451[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %454 = llvm.insertvalue %431, %453[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %455 = llvm.insertvalue %432, %454[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %456 = llvm.insertvalue %433, %455[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %457 = llvm.insertvalue %432, %456[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %458 = llvm.insertvalue %433, %457[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %459 = llvm.insertvalue %434, %458[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %460 = llvm.mlir.constant(0 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%460 : i64)
  ^bb82(%463: i64):  // 2 preds: ^bb81, ^bb89
    %464 = llvm.icmp "slt" %463, %461 : i64
    llvm.cond_br %464, ^bb83, ^bb90
  ^bb83:  // pred: ^bb82
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%465 : i64)
  ^bb84(%468: i64):  // 2 preds: ^bb83, ^bb88
    %469 = llvm.icmp "slt" %468, %466 : i64
    llvm.cond_br %469, ^bb85, ^bb89
  ^bb85:  // pred: ^bb84
    %470 = llvm.mlir.constant(0 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%470 : i64)
  ^bb86(%473: i64):  // 2 preds: ^bb85, ^bb87
    %474 = llvm.icmp "slt" %473, %471 : i64
    llvm.cond_br %474, ^bb87, ^bb88
  ^bb87:  // pred: ^bb86
    %475 = llvm.extractvalue %368[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %476 = llvm.add %463, %468  : i64
    %477 = llvm.add %476, %473  : i64
    %478 = llvm.getelementptr %475[%477] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %479 = llvm.load %478 : !llvm.ptr<i64>
    %480 = llvm.sub %37, %479  : i64
    %481 = llvm.extractvalue %459[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %482 = llvm.add %463, %468  : i64
    %483 = llvm.add %482, %473  : i64
    %484 = llvm.getelementptr %481[%483] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %480, %484 : !llvm.ptr<i64>
    %485 = llvm.add %473, %472  : i64
    llvm.br ^bb86(%485 : i64)
  ^bb88:  // pred: ^bb86
    %486 = llvm.add %468, %467  : i64
    llvm.br ^bb84(%486 : i64)
  ^bb89:  // pred: ^bb84
    %487 = llvm.add %463, %462  : i64
    llvm.br ^bb82(%487 : i64)
  ^bb90:  // pred: ^bb82
    %488 = llvm.mlir.constant(4 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    %490 = llvm.mlir.null : !llvm.ptr<i64>
    %491 = llvm.getelementptr %490[%488] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %492 = llvm.ptrtoint %491 : !llvm.ptr<i64> to i64
    %493 = llvm.mlir.constant(16 : index) : i64
    %494 = llvm.add %492, %493  : i64
    %495 = llvm.call @malloc(%494) : (i64) -> !llvm.ptr<i8>
    %496 = llvm.bitcast %495 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %497 = llvm.ptrtoint %496 : !llvm.ptr<i64> to i64
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.sub %493, %498  : i64
    %500 = llvm.add %497, %499  : i64
    %501 = llvm.urem %500, %493  : i64
    %502 = llvm.sub %500, %501  : i64
    %503 = llvm.inttoptr %502 : i64 to !llvm.ptr<i64>
    %504 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %505 = llvm.insertvalue %496, %504[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %506 = llvm.insertvalue %503, %505[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.insertvalue %507, %506[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %509 = llvm.insertvalue %488, %508[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %510 = llvm.insertvalue %489, %509[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %511 = llvm.mlir.constant(0 : index) : i64
    %512 = llvm.mlir.constant(4 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%511 : i64)
  ^bb91(%514: i64):  // 2 preds: ^bb90, ^bb92
    %515 = llvm.icmp "slt" %514, %512 : i64
    llvm.cond_br %515, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %516 = llvm.extractvalue %510[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %517 = llvm.getelementptr %516[%514] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %36, %517 : !llvm.ptr<i64>
    %518 = llvm.add %514, %513  : i64
    llvm.br ^bb91(%518 : i64)
  ^bb93:  // pred: ^bb91
    %519 = llvm.mlir.constant(4 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.null : !llvm.ptr<i64>
    %522 = llvm.getelementptr %521[%519] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %523 = llvm.ptrtoint %522 : !llvm.ptr<i64> to i64
    %524 = llvm.mlir.constant(16 : index) : i64
    %525 = llvm.add %523, %524  : i64
    %526 = llvm.call @malloc(%525) : (i64) -> !llvm.ptr<i8>
    %527 = llvm.bitcast %526 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %528 = llvm.ptrtoint %527 : !llvm.ptr<i64> to i64
    %529 = llvm.mlir.constant(1 : index) : i64
    %530 = llvm.sub %524, %529  : i64
    %531 = llvm.add %528, %530  : i64
    %532 = llvm.urem %531, %524  : i64
    %533 = llvm.sub %531, %532  : i64
    %534 = llvm.inttoptr %533 : i64 to !llvm.ptr<i64>
    %535 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %536 = llvm.insertvalue %527, %535[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %537 = llvm.insertvalue %534, %536[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %538 = llvm.mlir.constant(0 : index) : i64
    %539 = llvm.insertvalue %538, %537[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %540 = llvm.insertvalue %519, %539[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %541 = llvm.insertvalue %520, %540[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %542 = llvm.mlir.constant(0 : index) : i64
    %543 = llvm.mlir.constant(4 : index) : i64
    %544 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%542 : i64)
  ^bb94(%545: i64):  // 2 preds: ^bb93, ^bb95
    %546 = llvm.icmp "slt" %545, %543 : i64
    llvm.cond_br %546, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %547 = llvm.extractvalue %510[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %548 = llvm.getelementptr %547[%545] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %549 = llvm.load %548 : !llvm.ptr<i64>
    %550 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %551 = llvm.load %550 : !llvm.ptr<i64>
    %552 = llvm.mul %549, %551  : i64
    %553 = llvm.extractvalue %541[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %554 = llvm.getelementptr %553[%545] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %552, %554 : !llvm.ptr<i64>
    %555 = llvm.add %545, %544  : i64
    llvm.br ^bb94(%555 : i64)
  ^bb96:  // pred: ^bb94
    %556 = llvm.mlir.constant(4 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.mlir.null : !llvm.ptr<i1>
    %559 = llvm.getelementptr %558[%556] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %560 = llvm.ptrtoint %559 : !llvm.ptr<i1> to i64
    %561 = llvm.mlir.constant(16 : index) : i64
    %562 = llvm.add %560, %561  : i64
    %563 = llvm.call @malloc(%562) : (i64) -> !llvm.ptr<i8>
    %564 = llvm.bitcast %563 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %565 = llvm.ptrtoint %564 : !llvm.ptr<i1> to i64
    %566 = llvm.mlir.constant(1 : index) : i64
    %567 = llvm.sub %561, %566  : i64
    %568 = llvm.add %565, %567  : i64
    %569 = llvm.urem %568, %561  : i64
    %570 = llvm.sub %568, %569  : i64
    %571 = llvm.inttoptr %570 : i64 to !llvm.ptr<i1>
    %572 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %573 = llvm.insertvalue %564, %572[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %574 = llvm.insertvalue %571, %573[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %575 = llvm.mlir.constant(0 : index) : i64
    %576 = llvm.insertvalue %575, %574[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %577 = llvm.insertvalue %556, %576[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %578 = llvm.insertvalue %557, %577[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %579 = llvm.mlir.constant(0 : index) : i64
    %580 = llvm.mlir.constant(4 : index) : i64
    %581 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%579 : i64)
  ^bb97(%582: i64):  // 2 preds: ^bb96, ^bb98
    %583 = llvm.icmp "slt" %582, %580 : i64
    llvm.cond_br %583, ^bb98, ^bb99
  ^bb98:  // pred: ^bb97
    %584 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %585 = llvm.getelementptr %584[%582] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %586 = llvm.load %585 : !llvm.ptr<i64>
    %587 = llvm.extractvalue %541[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %588 = llvm.getelementptr %587[%582] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %589 = llvm.load %588 : !llvm.ptr<i64>
    %590 = llvm.icmp "eq" %586, %589 : i64
    %591 = llvm.extractvalue %578[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %592 = llvm.getelementptr %591[%582] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %590, %592 : !llvm.ptr<i1>
    %593 = llvm.add %582, %581  : i64
    llvm.br ^bb97(%593 : i64)
  ^bb99:  // pred: ^bb97
    %594 = llvm.mlir.constant(4 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.mlir.null : !llvm.ptr<i64>
    %597 = llvm.getelementptr %596[%594] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %598 = llvm.ptrtoint %597 : !llvm.ptr<i64> to i64
    %599 = llvm.mlir.constant(16 : index) : i64
    %600 = llvm.add %598, %599  : i64
    %601 = llvm.call @malloc(%600) : (i64) -> !llvm.ptr<i8>
    %602 = llvm.bitcast %601 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %603 = llvm.ptrtoint %602 : !llvm.ptr<i64> to i64
    %604 = llvm.mlir.constant(1 : index) : i64
    %605 = llvm.sub %599, %604  : i64
    %606 = llvm.add %603, %605  : i64
    %607 = llvm.urem %606, %599  : i64
    %608 = llvm.sub %606, %607  : i64
    %609 = llvm.inttoptr %608 : i64 to !llvm.ptr<i64>
    %610 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %611 = llvm.insertvalue %602, %610[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %612 = llvm.insertvalue %609, %611[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %613 = llvm.mlir.constant(0 : index) : i64
    %614 = llvm.insertvalue %613, %612[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %615 = llvm.insertvalue %594, %614[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %616 = llvm.insertvalue %595, %615[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %617 = llvm.mlir.constant(0 : index) : i64
    %618 = llvm.mlir.constant(4 : index) : i64
    %619 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%617 : i64)
  ^bb100(%620: i64):  // 2 preds: ^bb99, ^bb101
    %621 = llvm.icmp "slt" %620, %618 : i64
    llvm.cond_br %621, ^bb101, ^bb102
  ^bb101:  // pred: ^bb100
    %622 = llvm.extractvalue %578[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %623 = llvm.getelementptr %622[%620] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %624 = llvm.load %623 : !llvm.ptr<i1>
    %625 = llvm.extractvalue %510[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %626 = llvm.getelementptr %625[%620] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %627 = llvm.load %626 : !llvm.ptr<i64>
    %628 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %629 = llvm.getelementptr %628[%620] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %630 = llvm.load %629 : !llvm.ptr<i64>
    %631 = llvm.select %624, %627, %630 : i1, i64
    %632 = llvm.extractvalue %616[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %633 = llvm.getelementptr %632[%620] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %631, %633 : !llvm.ptr<i64>
    %634 = llvm.add %620, %619  : i64
    llvm.br ^bb100(%634 : i64)
  ^bb102:  // pred: ^bb100
    %635 = llvm.extractvalue %616[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %636 = llvm.getelementptr %635[%38] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %637 = llvm.load %636 : !llvm.ptr<i64>
    %638 = llvm.extractvalue %616[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %639 = llvm.getelementptr %638[%41] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %640 = llvm.load %639 : !llvm.ptr<i64>
    %641 = llvm.extractvalue %616[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %642 = llvm.getelementptr %641[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %643 = llvm.load %642 : !llvm.ptr<i64>
    %644 = llvm.extractvalue %616[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %645 = llvm.getelementptr %644[%39] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %646 = llvm.load %645 : !llvm.ptr<i64>
    %647 = llvm.mlir.constant(1 : index) : i64
    %648 = llvm.mul %646, %643  : i64
    %649 = llvm.mul %648, %640  : i64
    %650 = llvm.mul %649, %637  : i64
    %651 = llvm.mlir.null : !llvm.ptr<i64>
    %652 = llvm.getelementptr %651[%650] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %653 = llvm.ptrtoint %652 : !llvm.ptr<i64> to i64
    %654 = llvm.mlir.constant(16 : index) : i64
    %655 = llvm.add %653, %654  : i64
    %656 = llvm.call @malloc(%655) : (i64) -> !llvm.ptr<i8>
    %657 = llvm.bitcast %656 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %658 = llvm.ptrtoint %657 : !llvm.ptr<i64> to i64
    %659 = llvm.mlir.constant(1 : index) : i64
    %660 = llvm.sub %654, %659  : i64
    %661 = llvm.add %658, %660  : i64
    %662 = llvm.urem %661, %654  : i64
    %663 = llvm.sub %661, %662  : i64
    %664 = llvm.inttoptr %663 : i64 to !llvm.ptr<i64>
    %665 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %666 = llvm.insertvalue %657, %665[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %667 = llvm.insertvalue %664, %666[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %668 = llvm.mlir.constant(0 : index) : i64
    %669 = llvm.insertvalue %668, %667[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %670 = llvm.insertvalue %637, %669[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %671 = llvm.insertvalue %640, %670[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %672 = llvm.insertvalue %643, %671[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %673 = llvm.insertvalue %646, %672[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %674 = llvm.insertvalue %649, %673[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %675 = llvm.insertvalue %648, %674[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %676 = llvm.insertvalue %646, %675[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %677 = llvm.insertvalue %647, %676[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %678 = llvm.mlir.constant(0 : index) : i64
    %679 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%678 : i64)
  ^bb103(%680: i64):  // 2 preds: ^bb102, ^bb113
    %681 = llvm.icmp "slt" %680, %637 : i64
    llvm.cond_br %681, ^bb104, ^bb114
  ^bb104:  // pred: ^bb103
    %682 = llvm.mlir.constant(0 : index) : i64
    %683 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb105(%682 : i64)
  ^bb105(%684: i64):  // 2 preds: ^bb104, ^bb112
    %685 = llvm.icmp "slt" %684, %640 : i64
    llvm.cond_br %685, ^bb106, ^bb113
  ^bb106:  // pred: ^bb105
    %686 = llvm.mlir.constant(0 : index) : i64
    %687 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb107(%686 : i64)
  ^bb107(%688: i64):  // 2 preds: ^bb106, ^bb111
    %689 = llvm.icmp "slt" %688, %643 : i64
    llvm.cond_br %689, ^bb108, ^bb112
  ^bb108:  // pred: ^bb107
    %690 = llvm.mlir.constant(0 : index) : i64
    %691 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%690 : i64)
  ^bb109(%692: i64):  // 2 preds: ^bb108, ^bb110
    %693 = llvm.icmp "slt" %692, %646 : i64
    llvm.cond_br %693, ^bb110, ^bb111
  ^bb110:  // pred: ^bb109
    %694 = llvm.extractvalue %459[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %695 = llvm.add %38, %38  : i64
    %696 = llvm.add %695, %38  : i64
    %697 = llvm.getelementptr %694[%696] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %698 = llvm.load %697 : !llvm.ptr<i64>
    %699 = llvm.extractvalue %677[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %700 = llvm.extractvalue %677[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %701 = llvm.mul %680, %700  : i64
    %702 = llvm.extractvalue %677[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %703 = llvm.mul %684, %702  : i64
    %704 = llvm.add %701, %703  : i64
    %705 = llvm.extractvalue %677[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %706 = llvm.mul %688, %705  : i64
    %707 = llvm.add %704, %706  : i64
    %708 = llvm.add %707, %692  : i64
    %709 = llvm.getelementptr %699[%708] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %698, %709 : !llvm.ptr<i64>
    %710 = llvm.add %692, %691  : i64
    llvm.br ^bb109(%710 : i64)
  ^bb111:  // pred: ^bb109
    %711 = llvm.add %688, %687  : i64
    llvm.br ^bb107(%711 : i64)
  ^bb112:  // pred: ^bb107
    %712 = llvm.add %684, %683  : i64
    llvm.br ^bb105(%712 : i64)
  ^bb113:  // pred: ^bb105
    %713 = llvm.add %680, %679  : i64
    llvm.br ^bb103(%713 : i64)
  ^bb114:  // pred: ^bb103
    %714 = llvm.mlir.constant(1 : index) : i64
    %715 = llvm.mlir.constant(1 : index) : i64
    %716 = llvm.mlir.constant(1 : index) : i64
    %717 = llvm.mlir.constant(1 : index) : i64
    %718 = llvm.mlir.constant(1 : index) : i64
    %719 = llvm.mlir.null : !llvm.ptr<i64>
    %720 = llvm.getelementptr %719[%714] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %721 = llvm.ptrtoint %720 : !llvm.ptr<i64> to i64
    %722 = llvm.mlir.constant(16 : index) : i64
    %723 = llvm.add %721, %722  : i64
    %724 = llvm.call @malloc(%723) : (i64) -> !llvm.ptr<i8>
    %725 = llvm.bitcast %724 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %726 = llvm.ptrtoint %725 : !llvm.ptr<i64> to i64
    %727 = llvm.mlir.constant(1 : index) : i64
    %728 = llvm.sub %722, %727  : i64
    %729 = llvm.add %726, %728  : i64
    %730 = llvm.urem %729, %722  : i64
    %731 = llvm.sub %729, %730  : i64
    %732 = llvm.inttoptr %731 : i64 to !llvm.ptr<i64>
    %733 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %734 = llvm.insertvalue %725, %733[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %735 = llvm.insertvalue %732, %734[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %736 = llvm.mlir.constant(0 : index) : i64
    %737 = llvm.insertvalue %736, %735[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %738 = llvm.insertvalue %714, %737[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %739 = llvm.insertvalue %715, %738[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %740 = llvm.insertvalue %716, %739[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %741 = llvm.insertvalue %717, %740[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %742 = llvm.insertvalue %715, %741[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %743 = llvm.insertvalue %716, %742[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %744 = llvm.insertvalue %717, %743[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %745 = llvm.insertvalue %718, %744[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %746 = llvm.mlir.constant(0 : index) : i64
    %747 = llvm.mlir.constant(1 : index) : i64
    %748 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%746 : i64)
  ^bb115(%749: i64):  // 2 preds: ^bb114, ^bb125
    %750 = llvm.icmp "slt" %749, %747 : i64
    llvm.cond_br %750, ^bb116, ^bb126
  ^bb116:  // pred: ^bb115
    %751 = llvm.mlir.constant(0 : index) : i64
    %752 = llvm.mlir.constant(1 : index) : i64
    %753 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb117(%751 : i64)
  ^bb117(%754: i64):  // 2 preds: ^bb116, ^bb124
    %755 = llvm.icmp "slt" %754, %752 : i64
    llvm.cond_br %755, ^bb118, ^bb125
  ^bb118:  // pred: ^bb117
    %756 = llvm.mlir.constant(0 : index) : i64
    %757 = llvm.mlir.constant(1 : index) : i64
    %758 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb119(%756 : i64)
  ^bb119(%759: i64):  // 2 preds: ^bb118, ^bb123
    %760 = llvm.icmp "slt" %759, %757 : i64
    llvm.cond_br %760, ^bb120, ^bb124
  ^bb120:  // pred: ^bb119
    %761 = llvm.mlir.constant(0 : index) : i64
    %762 = llvm.mlir.constant(1 : index) : i64
    %763 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb121(%761 : i64)
  ^bb121(%764: i64):  // 2 preds: ^bb120, ^bb122
    %765 = llvm.icmp "slt" %764, %762 : i64
    llvm.cond_br %765, ^bb122, ^bb123
  ^bb122:  // pred: ^bb121
    %766 = llvm.extractvalue %677[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %767 = llvm.extractvalue %677[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %768 = llvm.mul %749, %767  : i64
    %769 = llvm.extractvalue %677[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %770 = llvm.mul %754, %769  : i64
    %771 = llvm.add %768, %770  : i64
    %772 = llvm.extractvalue %677[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %773 = llvm.mul %759, %772  : i64
    %774 = llvm.add %771, %773  : i64
    %775 = llvm.add %774, %764  : i64
    %776 = llvm.getelementptr %766[%775] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %777 = llvm.load %776 : !llvm.ptr<i64>
    %778 = llvm.extractvalue %459[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %779 = llvm.add %38, %38  : i64
    %780 = llvm.add %779, %38  : i64
    %781 = llvm.getelementptr %778[%780] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %782 = llvm.load %781 : !llvm.ptr<i64>
    %783 = llvm.mul %777, %782  : i64
    %784 = llvm.extractvalue %745[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %785 = llvm.add %749, %754  : i64
    %786 = llvm.add %785, %759  : i64
    %787 = llvm.add %786, %764  : i64
    %788 = llvm.getelementptr %784[%787] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %783, %788 : !llvm.ptr<i64>
    %789 = llvm.add %764, %763  : i64
    llvm.br ^bb121(%789 : i64)
  ^bb123:  // pred: ^bb121
    %790 = llvm.add %759, %758  : i64
    llvm.br ^bb119(%790 : i64)
  ^bb124:  // pred: ^bb119
    %791 = llvm.add %754, %753  : i64
    llvm.br ^bb117(%791 : i64)
  ^bb125:  // pred: ^bb117
    %792 = llvm.add %749, %748  : i64
    llvm.br ^bb115(%792 : i64)
  ^bb126:  // pred: ^bb115
    llvm.return %745 : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v8_0", "v6_0", "v5_0"], llvm.emit_c_interface, output_names = ["v4_0"]} {
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
    %24 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %25 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.extractvalue %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.extractvalue %24[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.extractvalue %24[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.extractvalue %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.extractvalue %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %36, %arg0 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %85 = llvm.mlir.constant(2 : i64) : i64
    %86 = llvm.getelementptr %0[%85] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %87 = llvm.load %86 : !llvm.ptr<ptr<i8>>
    %88 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %89 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %90 = llvm.call @omTensorGetDataPtr(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %92 = llvm.insertvalue %91, %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %91, %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.insertvalue %94, %93[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.call @omTensorGetShape(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.call @omTensorGetStrides(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %98 = llvm.mlir.constant(0 : i64) : i64
    %99 = llvm.getelementptr %96[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %95[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %97[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.getelementptr %96[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %104[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %97[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.getelementptr %96[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %114 = llvm.load %113 : !llvm.ptr<i64>
    %115 = llvm.insertvalue %114, %111[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %97[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.insertvalue %117, %115[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(3 : i64) : i64
    %120 = llvm.getelementptr %96[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %121 = llvm.load %120 : !llvm.ptr<i64>
    %122 = llvm.insertvalue %121, %118[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %97[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %124 = llvm.load %123 : !llvm.ptr<i64>
    %125 = llvm.insertvalue %124, %122[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %125, %88 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %126 = llvm.load %2 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>
    %127 = llvm.mlir.constant(1 : i64) : i64
    %128 = llvm.mlir.constant(8 : i64) : i64
    %129 = llvm.call @malloc(%128) : (i64) -> !llvm.ptr<i8>
    %130 = llvm.bitcast %129 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %131 = llvm.mlir.constant(4 : i64) : i64
    %132 = llvm.call @omTensorCreateUntyped(%131) : (i64) -> !llvm.ptr<i8>
    %133 = llvm.mlir.constant(1 : i64) : i64
    %134 = llvm.extractvalue %126[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.bitcast %134 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %136 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.bitcast %136 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%132, %133, %135, %137) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %138 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%132, %138) : (!llvm.ptr<i8>, i64) -> ()
    %139 = llvm.call @omTensorGetShape(%132) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %140 = llvm.call @omTensorGetStrides(%132) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %141 = llvm.mlir.constant(0 : i64) : i64
    %142 = llvm.extractvalue %126[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %139[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %126[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %140[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(1 : i64) : i64
    %147 = llvm.extractvalue %126[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %139[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.extractvalue %126[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %140[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.mlir.constant(2 : i64) : i64
    %152 = llvm.extractvalue %126[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %139[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.extractvalue %126[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.getelementptr %140[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.mlir.constant(3 : i64) : i64
    %157 = llvm.extractvalue %126[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.getelementptr %139[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.extractvalue %126[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.getelementptr %140[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.mlir.constant(0 : i64) : i64
    %162 = llvm.getelementptr %130[%161] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %132, %162 : !llvm.ptr<ptr<i8>>
    %163 = llvm.call @omTensorListCreate(%130, %127, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %163 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<212 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<212 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

