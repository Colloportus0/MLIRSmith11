module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 3 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v4_0", "v2_0"], llvm.emit_c_interface, output_names = ["v7_0", "v0_0", "v1_0"]} {
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
    %26 = llvm.mlir.constant(0 : i64) : i64
    %27 = llvm.mlir.constant(-1 : i64) : i64
    %28 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<3 x i64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.constant(3 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %46 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<3 x i64>>
    %47 = llvm.bitcast %46 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %47, %48[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(3 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %58 = llvm.bitcast %57 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.null : !llvm.ptr<i64>
    %85 = llvm.getelementptr %84[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %86 = llvm.ptrtoint %85 : !llvm.ptr<i64> to i64
    %87 = llvm.mlir.constant(16 : index) : i64
    %88 = llvm.add %86, %87  : i64
    %89 = llvm.call @malloc(%88) : (i64) -> !llvm.ptr<i8>
    %90 = llvm.bitcast %89 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %91 = llvm.ptrtoint %90 : !llvm.ptr<i64> to i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.sub %87, %92  : i64
    %94 = llvm.add %91, %93  : i64
    %95 = llvm.urem %94, %87  : i64
    %96 = llvm.sub %94, %95  : i64
    %97 = llvm.inttoptr %96 : i64 to !llvm.ptr<i64>
    %98 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %99 = llvm.insertvalue %90, %98[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.insertvalue %97, %99[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.insertvalue %101, %100[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %103 = llvm.insertvalue %80, %102[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.insertvalue %81, %103[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.insertvalue %82, %104[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %106 = llvm.insertvalue %81, %105[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.insertvalue %82, %106[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %108 = llvm.insertvalue %83, %107[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%109 : i64)
  ^bb1(%112: i64):  // 2 preds: ^bb0, ^bb8
    %113 = llvm.icmp "slt" %112, %110 : i64
    llvm.cond_br %113, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%114 : i64)
  ^bb3(%117: i64):  // 2 preds: ^bb2, ^bb7
    %118 = llvm.icmp "slt" %117, %115 : i64
    llvm.cond_br %118, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%119 : i64)
  ^bb5(%122: i64):  // 2 preds: ^bb4, ^bb6
    %123 = llvm.icmp "slt" %122, %120 : i64
    llvm.cond_br %123, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %124 = llvm.extractvalue %108[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %125 = llvm.add %112, %117  : i64
    %126 = llvm.add %125, %122  : i64
    %127 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %27, %127 : !llvm.ptr<i64>
    %128 = llvm.add %122, %121  : i64
    llvm.br ^bb5(%128 : i64)
  ^bb7:  // pred: ^bb5
    %129 = llvm.add %117, %116  : i64
    llvm.br ^bb3(%129 : i64)
  ^bb8:  // pred: ^bb3
    %130 = llvm.add %112, %111  : i64
    llvm.br ^bb1(%130 : i64)
  ^bb9:  // pred: ^bb1
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%131 : i64)
  ^bb10(%134: i64):  // 2 preds: ^bb9, ^bb20
    %135 = llvm.icmp "slt" %134, %132 : i64
    llvm.cond_br %135, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%136 : i64)
  ^bb12(%139: i64):  // 2 preds: ^bb11, ^bb19
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%141 : i64)
  ^bb14(%144: i64):  // 2 preds: ^bb13, ^bb18
    %145 = llvm.icmp "slt" %144, %142 : i64
    llvm.cond_br %145, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%146 : i64)
  ^bb16(%149: i64):  // 2 preds: ^bb15, ^bb17
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %151 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.add %134, %139  : i64
    %153 = llvm.add %152, %144  : i64
    %154 = llvm.add %153, %149  : i64
    %155 = llvm.getelementptr %151[%154] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %156 = llvm.load %155 : !llvm.ptr<i32>
    %157 = llvm.extractvalue %108[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %158 = llvm.add %134, %144  : i64
    %159 = llvm.add %158, %149  : i64
    %160 = llvm.getelementptr %157[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %161 = llvm.load %160 : !llvm.ptr<i64>
    %162 = llvm.icmp "slt" %161, %26 : i64
    %163 = llvm.select %162, %26, %161 : i1, i64
    %164 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.add %134, %163  : i64
    %166 = llvm.add %165, %144  : i64
    %167 = llvm.add %166, %149  : i64
    %168 = llvm.getelementptr %164[%167] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %169 = llvm.load %168 : !llvm.ptr<i32>
    %170 = llvm.icmp "sgt" %156, %169 : i32
    %171 = llvm.select %170, %139, %163 : i1, i64
    %172 = llvm.extractvalue %108[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %173 = llvm.add %134, %144  : i64
    %174 = llvm.add %173, %149  : i64
    %175 = llvm.getelementptr %172[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %171, %175 : !llvm.ptr<i64>
    %176 = llvm.add %149, %148  : i64
    llvm.br ^bb16(%176 : i64)
  ^bb18:  // pred: ^bb16
    %177 = llvm.add %144, %143  : i64
    llvm.br ^bb14(%177 : i64)
  ^bb19:  // pred: ^bb14
    %178 = llvm.add %139, %138  : i64
    llvm.br ^bb12(%178 : i64)
  ^bb20:  // pred: ^bb12
    %179 = llvm.add %134, %133  : i64
    llvm.br ^bb10(%179 : i64)
  ^bb21:  // pred: ^bb10
    %180 = llvm.mlir.constant(3 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.null : !llvm.ptr<i64>
    %183 = llvm.getelementptr %182[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %184 = llvm.ptrtoint %183 : !llvm.ptr<i64> to i64
    %185 = llvm.mlir.constant(16 : index) : i64
    %186 = llvm.add %184, %185  : i64
    %187 = llvm.call @malloc(%186) : (i64) -> !llvm.ptr<i8>
    %188 = llvm.bitcast %187 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %189 = llvm.ptrtoint %188 : !llvm.ptr<i64> to i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.sub %185, %190  : i64
    %192 = llvm.add %189, %191  : i64
    %193 = llvm.urem %192, %185  : i64
    %194 = llvm.sub %192, %193  : i64
    %195 = llvm.inttoptr %194 : i64 to !llvm.ptr<i64>
    %196 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %197 = llvm.insertvalue %188, %196[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.insertvalue %195, %197[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.insertvalue %199, %198[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.insertvalue %180, %200[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.insertvalue %181, %201[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(3 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%203 : i64)
  ^bb22(%206: i64):  // 2 preds: ^bb21, ^bb23
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %208 = llvm.extractvalue %202[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %209 = llvm.getelementptr %208[%206] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %24, %209 : !llvm.ptr<i64>
    %210 = llvm.add %206, %205  : i64
    llvm.br ^bb22(%210 : i64)
  ^bb24:  // pred: ^bb22
    %211 = llvm.mlir.constant(3 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.null : !llvm.ptr<i64>
    %214 = llvm.getelementptr %213[%211] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %215 = llvm.ptrtoint %214 : !llvm.ptr<i64> to i64
    %216 = llvm.mlir.constant(16 : index) : i64
    %217 = llvm.add %215, %216  : i64
    %218 = llvm.call @malloc(%217) : (i64) -> !llvm.ptr<i8>
    %219 = llvm.bitcast %218 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %220 = llvm.ptrtoint %219 : !llvm.ptr<i64> to i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.sub %216, %221  : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.urem %223, %216  : i64
    %225 = llvm.sub %223, %224  : i64
    %226 = llvm.inttoptr %225 : i64 to !llvm.ptr<i64>
    %227 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %228 = llvm.insertvalue %219, %227[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.insertvalue %226, %228[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.insertvalue %230, %229[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %232 = llvm.insertvalue %211, %231[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.insertvalue %212, %232[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(3 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%234 : i64)
  ^bb25(%237: i64):  // 2 preds: ^bb24, ^bb26
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %239 = llvm.extractvalue %202[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.getelementptr %239[%237] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %241 = llvm.load %240 : !llvm.ptr<i64>
    %242 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %243 = llvm.load %242 : !llvm.ptr<i64>
    %244 = llvm.mul %241, %243  : i64
    %245 = llvm.extractvalue %233[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.getelementptr %245[%237] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %244, %246 : !llvm.ptr<i64>
    %247 = llvm.add %237, %236  : i64
    llvm.br ^bb25(%247 : i64)
  ^bb27:  // pred: ^bb25
    %248 = llvm.mlir.constant(3 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.null : !llvm.ptr<i1>
    %251 = llvm.getelementptr %250[%248] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %252 = llvm.ptrtoint %251 : !llvm.ptr<i1> to i64
    %253 = llvm.mlir.constant(16 : index) : i64
    %254 = llvm.add %252, %253  : i64
    %255 = llvm.call @malloc(%254) : (i64) -> !llvm.ptr<i8>
    %256 = llvm.bitcast %255 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %257 = llvm.ptrtoint %256 : !llvm.ptr<i1> to i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.sub %253, %258  : i64
    %260 = llvm.add %257, %259  : i64
    %261 = llvm.urem %260, %253  : i64
    %262 = llvm.sub %260, %261  : i64
    %263 = llvm.inttoptr %262 : i64 to !llvm.ptr<i1>
    %264 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %265 = llvm.insertvalue %256, %264[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.insertvalue %263, %265[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.insertvalue %267, %266[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %269 = llvm.insertvalue %248, %268[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.insertvalue %249, %269[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %271 = llvm.mlir.constant(0 : index) : i64
    %272 = llvm.mlir.constant(3 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%271 : i64)
  ^bb28(%274: i64):  // 2 preds: ^bb27, ^bb29
    %275 = llvm.icmp "slt" %274, %272 : i64
    llvm.cond_br %275, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %276 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.getelementptr %276[%274] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %278 = llvm.load %277 : !llvm.ptr<i64>
    %279 = llvm.extractvalue %233[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %280 = llvm.getelementptr %279[%274] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %281 = llvm.load %280 : !llvm.ptr<i64>
    %282 = llvm.icmp "eq" %278, %281 : i64
    %283 = llvm.extractvalue %270[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.getelementptr %283[%274] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %282, %284 : !llvm.ptr<i1>
    %285 = llvm.add %274, %273  : i64
    llvm.br ^bb28(%285 : i64)
  ^bb30:  // pred: ^bb28
    %286 = llvm.mlir.constant(3 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.mlir.null : !llvm.ptr<i64>
    %289 = llvm.getelementptr %288[%286] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %290 = llvm.ptrtoint %289 : !llvm.ptr<i64> to i64
    %291 = llvm.mlir.constant(16 : index) : i64
    %292 = llvm.add %290, %291  : i64
    %293 = llvm.call @malloc(%292) : (i64) -> !llvm.ptr<i8>
    %294 = llvm.bitcast %293 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %295 = llvm.ptrtoint %294 : !llvm.ptr<i64> to i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.sub %291, %296  : i64
    %298 = llvm.add %295, %297  : i64
    %299 = llvm.urem %298, %291  : i64
    %300 = llvm.sub %298, %299  : i64
    %301 = llvm.inttoptr %300 : i64 to !llvm.ptr<i64>
    %302 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %303 = llvm.insertvalue %294, %302[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.insertvalue %301, %303[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.insertvalue %305, %304[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.insertvalue %286, %306[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.insertvalue %287, %307[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.mlir.constant(3 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%309 : i64)
  ^bb31(%312: i64):  // 2 preds: ^bb30, ^bb32
    %313 = llvm.icmp "slt" %312, %310 : i64
    llvm.cond_br %313, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %314 = llvm.extractvalue %270[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %315 = llvm.getelementptr %314[%312] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %316 = llvm.load %315 : !llvm.ptr<i1>
    %317 = llvm.extractvalue %202[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %318 = llvm.getelementptr %317[%312] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %319 = llvm.load %318 : !llvm.ptr<i64>
    %320 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.getelementptr %320[%312] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %322 = llvm.load %321 : !llvm.ptr<i64>
    %323 = llvm.select %316, %319, %322 : i1, i64
    %324 = llvm.extractvalue %308[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.getelementptr %324[%312] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %323, %325 : !llvm.ptr<i64>
    %326 = llvm.add %312, %311  : i64
    llvm.br ^bb31(%326 : i64)
  ^bb33:  // pred: ^bb31
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.null : !llvm.ptr<i64>
    %332 = llvm.getelementptr %331[%327] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %333 = llvm.ptrtoint %332 : !llvm.ptr<i64> to i64
    %334 = llvm.mlir.constant(16 : index) : i64
    %335 = llvm.add %333, %334  : i64
    %336 = llvm.call @malloc(%335) : (i64) -> !llvm.ptr<i8>
    %337 = llvm.bitcast %336 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %338 = llvm.ptrtoint %337 : !llvm.ptr<i64> to i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.sub %334, %339  : i64
    %341 = llvm.add %338, %340  : i64
    %342 = llvm.urem %341, %334  : i64
    %343 = llvm.sub %341, %342  : i64
    %344 = llvm.inttoptr %343 : i64 to !llvm.ptr<i64>
    %345 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %346 = llvm.insertvalue %337, %345[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %347 = llvm.insertvalue %344, %346[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.insertvalue %348, %347[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %350 = llvm.insertvalue %327, %349[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %351 = llvm.insertvalue %328, %350[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %352 = llvm.insertvalue %329, %351[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %353 = llvm.insertvalue %328, %352[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %354 = llvm.insertvalue %329, %353[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %355 = llvm.insertvalue %330, %354[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%356 : i64)
  ^bb34(%359: i64):  // 2 preds: ^bb33, ^bb41
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb35, ^bb42
  ^bb35:  // pred: ^bb34
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%361 : i64)
  ^bb36(%364: i64):  // 2 preds: ^bb35, ^bb40
    %365 = llvm.icmp "slt" %364, %362 : i64
    llvm.cond_br %365, ^bb37, ^bb41
  ^bb37:  // pred: ^bb36
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%366 : i64)
  ^bb38(%369: i64):  // 2 preds: ^bb37, ^bb39
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb39, ^bb40
  ^bb39:  // pred: ^bb38
    %371 = llvm.extractvalue %108[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %372 = llvm.add %25, %25  : i64
    %373 = llvm.add %372, %25  : i64
    %374 = llvm.getelementptr %371[%373] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %375 = llvm.load %374 : !llvm.ptr<i64>
    %376 = llvm.extractvalue %355[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %377 = llvm.add %359, %364  : i64
    %378 = llvm.add %377, %369  : i64
    %379 = llvm.getelementptr %376[%378] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %375, %379 : !llvm.ptr<i64>
    %380 = llvm.add %369, %368  : i64
    llvm.br ^bb38(%380 : i64)
  ^bb40:  // pred: ^bb38
    %381 = llvm.add %364, %363  : i64
    llvm.br ^bb36(%381 : i64)
  ^bb41:  // pred: ^bb36
    %382 = llvm.add %359, %358  : i64
    llvm.br ^bb34(%382 : i64)
  ^bb42:  // pred: ^bb34
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(3 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mlir.constant(3 : index) : i64
    %389 = llvm.mlir.null : !llvm.ptr<i32>
    %390 = llvm.getelementptr %389[%388] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %391 = llvm.ptrtoint %390 : !llvm.ptr<i32> to i64
    %392 = llvm.mlir.constant(16 : index) : i64
    %393 = llvm.add %391, %392  : i64
    %394 = llvm.call @malloc(%393) : (i64) -> !llvm.ptr<i8>
    %395 = llvm.bitcast %394 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %396 = llvm.ptrtoint %395 : !llvm.ptr<i32> to i64
    %397 = llvm.mlir.constant(1 : index) : i64
    %398 = llvm.sub %392, %397  : i64
    %399 = llvm.add %396, %398  : i64
    %400 = llvm.urem %399, %392  : i64
    %401 = llvm.sub %399, %400  : i64
    %402 = llvm.inttoptr %401 : i64 to !llvm.ptr<i32>
    %403 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %404 = llvm.insertvalue %395, %403[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.insertvalue %402, %404[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.insertvalue %406, %405[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %383, %407[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.insertvalue %384, %408[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.insertvalue %385, %409[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %386, %410[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %384, %411[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.insertvalue %385, %412[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %386, %413[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %387, %414[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.mlir.constant(0 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%416 : i64)
  ^bb43(%419: i64):  // 2 preds: ^bb42, ^bb53
    %420 = llvm.icmp "slt" %419, %417 : i64
    llvm.cond_br %420, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %421 = llvm.mlir.constant(0 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%421 : i64)
  ^bb45(%424: i64):  // 2 preds: ^bb44, ^bb52
    %425 = llvm.icmp "slt" %424, %422 : i64
    llvm.cond_br %425, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%426 : i64)
  ^bb47(%429: i64):  // 2 preds: ^bb46, ^bb51
    %430 = llvm.icmp "slt" %429, %427 : i64
    llvm.cond_br %430, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.mlir.constant(1 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%431 : i64)
  ^bb49(%434: i64):  // 2 preds: ^bb48, ^bb50
    %435 = llvm.icmp "slt" %434, %432 : i64
    llvm.cond_br %435, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %436 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.add %419, %424  : i64
    %438 = llvm.add %437, %429  : i64
    %439 = llvm.add %438, %434  : i64
    %440 = llvm.getelementptr %436[%439] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %441 = llvm.load %440 : !llvm.ptr<i32>
    %442 = llvm.extractvalue %415[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.mlir.constant(3 : index) : i64
    %444 = llvm.mul %419, %443  : i64
    %445 = llvm.add %444, %424  : i64
    %446 = llvm.add %445, %429  : i64
    %447 = llvm.add %446, %434  : i64
    %448 = llvm.getelementptr %442[%447] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %441, %448 : !llvm.ptr<i32>
    %449 = llvm.add %434, %433  : i64
    llvm.br ^bb49(%449 : i64)
  ^bb51:  // pred: ^bb49
    %450 = llvm.add %429, %428  : i64
    llvm.br ^bb47(%450 : i64)
  ^bb52:  // pred: ^bb47
    %451 = llvm.add %424, %423  : i64
    llvm.br ^bb45(%451 : i64)
  ^bb53:  // pred: ^bb45
    %452 = llvm.add %419, %418  : i64
    llvm.br ^bb43(%452 : i64)
  ^bb54:  // pred: ^bb43
    %453 = llvm.mlir.constant(0 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%453 : i64)
  ^bb55(%456: i64):  // 2 preds: ^bb54, ^bb65
    %457 = llvm.icmp "slt" %456, %454 : i64
    llvm.cond_br %457, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %458 = llvm.mlir.constant(0 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%458 : i64)
  ^bb57(%461: i64):  // 2 preds: ^bb56, ^bb64
    %462 = llvm.icmp "slt" %461, %459 : i64
    llvm.cond_br %462, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %463 = llvm.mlir.constant(0 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%463 : i64)
  ^bb59(%466: i64):  // 2 preds: ^bb58, ^bb63
    %467 = llvm.icmp "slt" %466, %464 : i64
    llvm.cond_br %467, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %468 = llvm.mlir.constant(0 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%468 : i64)
  ^bb61(%471: i64):  // 2 preds: ^bb60, ^bb62
    %472 = llvm.icmp "slt" %471, %469 : i64
    llvm.cond_br %472, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.add %461, %473  : i64
    %475 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.add %456, %461  : i64
    %477 = llvm.add %476, %466  : i64
    %478 = llvm.add %477, %471  : i64
    %479 = llvm.getelementptr %475[%478] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %480 = llvm.load %479 : !llvm.ptr<i32>
    %481 = llvm.extractvalue %415[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.mlir.constant(3 : index) : i64
    %483 = llvm.mul %456, %482  : i64
    %484 = llvm.add %483, %474  : i64
    %485 = llvm.add %484, %466  : i64
    %486 = llvm.add %485, %471  : i64
    %487 = llvm.getelementptr %481[%486] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %480, %487 : !llvm.ptr<i32>
    %488 = llvm.add %471, %470  : i64
    llvm.br ^bb61(%488 : i64)
  ^bb63:  // pred: ^bb61
    %489 = llvm.add %466, %465  : i64
    llvm.br ^bb59(%489 : i64)
  ^bb64:  // pred: ^bb59
    %490 = llvm.add %461, %460  : i64
    llvm.br ^bb57(%490 : i64)
  ^bb65:  // pred: ^bb57
    %491 = llvm.add %456, %455  : i64
    llvm.br ^bb55(%491 : i64)
  ^bb66:  // pred: ^bb55
    %492 = llvm.mlir.constant(0 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%492 : i64)
  ^bb67(%495: i64):  // 2 preds: ^bb66, ^bb77
    %496 = llvm.icmp "slt" %495, %493 : i64
    llvm.cond_br %496, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %497 = llvm.mlir.constant(0 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%497 : i64)
  ^bb69(%500: i64):  // 2 preds: ^bb68, ^bb76
    %501 = llvm.icmp "slt" %500, %498 : i64
    llvm.cond_br %501, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    %502 = llvm.mlir.constant(0 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%502 : i64)
  ^bb71(%505: i64):  // 2 preds: ^bb70, ^bb75
    %506 = llvm.icmp "slt" %505, %503 : i64
    llvm.cond_br %506, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%507 : i64)
  ^bb73(%510: i64):  // 2 preds: ^bb72, ^bb74
    %511 = llvm.icmp "slt" %510, %508 : i64
    llvm.cond_br %511, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %512 = llvm.mlir.constant(2 : index) : i64
    %513 = llvm.add %500, %512  : i64
    %514 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %515 = llvm.add %495, %500  : i64
    %516 = llvm.add %515, %505  : i64
    %517 = llvm.add %516, %510  : i64
    %518 = llvm.getelementptr %514[%517] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %519 = llvm.load %518 : !llvm.ptr<i32>
    %520 = llvm.extractvalue %415[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.mlir.constant(3 : index) : i64
    %522 = llvm.mul %495, %521  : i64
    %523 = llvm.add %522, %513  : i64
    %524 = llvm.add %523, %505  : i64
    %525 = llvm.add %524, %510  : i64
    %526 = llvm.getelementptr %520[%525] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %519, %526 : !llvm.ptr<i32>
    %527 = llvm.add %510, %509  : i64
    llvm.br ^bb73(%527 : i64)
  ^bb75:  // pred: ^bb73
    %528 = llvm.add %505, %504  : i64
    llvm.br ^bb71(%528 : i64)
  ^bb76:  // pred: ^bb71
    %529 = llvm.add %500, %499  : i64
    llvm.br ^bb69(%529 : i64)
  ^bb77:  // pred: ^bb69
    %530 = llvm.add %495, %494  : i64
    llvm.br ^bb67(%530 : i64)
  ^bb78:  // pred: ^bb67
    %531 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %532 = llvm.extractvalue %415[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %533 = llvm.extractvalue %415[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %534 = llvm.insertvalue %532, %531[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %535 = llvm.insertvalue %533, %534[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %536 = llvm.mlir.constant(0 : index) : i64
    %537 = llvm.insertvalue %536, %535[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %538 = llvm.mlir.constant(1 : index) : i64
    %539 = llvm.insertvalue %538, %537[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %540 = llvm.mlir.constant(3 : index) : i64
    %541 = llvm.insertvalue %540, %539[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %542 = llvm.mlir.constant(3 : index) : i64
    %543 = llvm.insertvalue %542, %541[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %544 = llvm.mlir.constant(1 : index) : i64
    %545 = llvm.insertvalue %544, %543[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %546 = llvm.mlir.constant(1 : index) : i64
    %547 = llvm.insertvalue %546, %545[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %548 = llvm.mlir.constant(1 : index) : i64
    %549 = llvm.insertvalue %548, %547[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %550 = llvm.mlir.constant(1 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    %553 = llvm.mlir.constant(1 : index) : i64
    %554 = llvm.mlir.null : !llvm.ptr<i64>
    %555 = llvm.getelementptr %554[%550] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %556 = llvm.ptrtoint %555 : !llvm.ptr<i64> to i64
    %557 = llvm.mlir.constant(16 : index) : i64
    %558 = llvm.add %556, %557  : i64
    %559 = llvm.call @malloc(%558) : (i64) -> !llvm.ptr<i8>
    %560 = llvm.bitcast %559 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %561 = llvm.ptrtoint %560 : !llvm.ptr<i64> to i64
    %562 = llvm.mlir.constant(1 : index) : i64
    %563 = llvm.sub %557, %562  : i64
    %564 = llvm.add %561, %563  : i64
    %565 = llvm.urem %564, %557  : i64
    %566 = llvm.sub %564, %565  : i64
    %567 = llvm.inttoptr %566 : i64 to !llvm.ptr<i64>
    %568 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %569 = llvm.insertvalue %560, %568[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %570 = llvm.insertvalue %567, %569[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %571 = llvm.mlir.constant(0 : index) : i64
    %572 = llvm.insertvalue %571, %570[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %573 = llvm.insertvalue %550, %572[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %574 = llvm.insertvalue %551, %573[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %575 = llvm.insertvalue %552, %574[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %576 = llvm.insertvalue %551, %575[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %577 = llvm.insertvalue %552, %576[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %578 = llvm.insertvalue %553, %577[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %579 = llvm.mlir.constant(0 : index) : i64
    %580 = llvm.mlir.constant(1 : index) : i64
    %581 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%579 : i64)
  ^bb79(%582: i64):  // 2 preds: ^bb78, ^bb86
    %583 = llvm.icmp "slt" %582, %580 : i64
    llvm.cond_br %583, ^bb80, ^bb87
  ^bb80:  // pred: ^bb79
    %584 = llvm.mlir.constant(0 : index) : i64
    %585 = llvm.mlir.constant(1 : index) : i64
    %586 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%584 : i64)
  ^bb81(%587: i64):  // 2 preds: ^bb80, ^bb85
    %588 = llvm.icmp "slt" %587, %585 : i64
    llvm.cond_br %588, ^bb82, ^bb86
  ^bb82:  // pred: ^bb81
    %589 = llvm.mlir.constant(0 : index) : i64
    %590 = llvm.mlir.constant(1 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%589 : i64)
  ^bb83(%592: i64):  // 2 preds: ^bb82, ^bb84
    %593 = llvm.icmp "slt" %592, %590 : i64
    llvm.cond_br %593, ^bb84, ^bb85
  ^bb84:  // pred: ^bb83
    %594 = llvm.extractvalue %578[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %595 = llvm.add %582, %587  : i64
    %596 = llvm.add %595, %592  : i64
    %597 = llvm.getelementptr %594[%596] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %27, %597 : !llvm.ptr<i64>
    %598 = llvm.add %592, %591  : i64
    llvm.br ^bb83(%598 : i64)
  ^bb85:  // pred: ^bb83
    %599 = llvm.add %587, %586  : i64
    llvm.br ^bb81(%599 : i64)
  ^bb86:  // pred: ^bb81
    %600 = llvm.add %582, %581  : i64
    llvm.br ^bb79(%600 : i64)
  ^bb87:  // pred: ^bb79
    %601 = llvm.mlir.constant(0 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    %603 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%601 : i64)
  ^bb88(%604: i64):  // 2 preds: ^bb87, ^bb98
    %605 = llvm.icmp "slt" %604, %602 : i64
    llvm.cond_br %605, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %606 = llvm.mlir.constant(0 : index) : i64
    %607 = llvm.mlir.constant(3 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%606 : i64)
  ^bb90(%609: i64):  // 2 preds: ^bb89, ^bb97
    %610 = llvm.icmp "slt" %609, %607 : i64
    llvm.cond_br %610, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %611 = llvm.mlir.constant(0 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%611 : i64)
  ^bb92(%614: i64):  // 2 preds: ^bb91, ^bb96
    %615 = llvm.icmp "slt" %614, %612 : i64
    llvm.cond_br %615, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %616 = llvm.mlir.constant(0 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    %618 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%616 : i64)
  ^bb94(%619: i64):  // 2 preds: ^bb93, ^bb95
    %620 = llvm.icmp "slt" %619, %617 : i64
    llvm.cond_br %620, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %621 = llvm.extractvalue %415[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %622 = llvm.mlir.constant(3 : index) : i64
    %623 = llvm.mul %604, %622  : i64
    %624 = llvm.add %623, %609  : i64
    %625 = llvm.add %624, %614  : i64
    %626 = llvm.add %625, %619  : i64
    %627 = llvm.getelementptr %621[%626] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %628 = llvm.load %627 : !llvm.ptr<i32>
    %629 = llvm.extractvalue %578[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %630 = llvm.add %604, %614  : i64
    %631 = llvm.add %630, %619  : i64
    %632 = llvm.getelementptr %629[%631] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %633 = llvm.load %632 : !llvm.ptr<i64>
    %634 = llvm.icmp "slt" %633, %26 : i64
    %635 = llvm.select %634, %26, %633 : i1, i64
    %636 = llvm.extractvalue %415[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %637 = llvm.mlir.constant(3 : index) : i64
    %638 = llvm.mul %604, %637  : i64
    %639 = llvm.add %638, %635  : i64
    %640 = llvm.add %639, %614  : i64
    %641 = llvm.add %640, %619  : i64
    %642 = llvm.getelementptr %636[%641] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %643 = llvm.load %642 : !llvm.ptr<i32>
    %644 = llvm.icmp "sgt" %628, %643 : i32
    %645 = llvm.select %644, %609, %635 : i1, i64
    %646 = llvm.extractvalue %578[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %647 = llvm.add %604, %614  : i64
    %648 = llvm.add %647, %619  : i64
    %649 = llvm.getelementptr %646[%648] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %645, %649 : !llvm.ptr<i64>
    %650 = llvm.add %619, %618  : i64
    llvm.br ^bb94(%650 : i64)
  ^bb96:  // pred: ^bb94
    %651 = llvm.add %614, %613  : i64
    llvm.br ^bb92(%651 : i64)
  ^bb97:  // pred: ^bb92
    %652 = llvm.add %609, %608  : i64
    llvm.br ^bb90(%652 : i64)
  ^bb98:  // pred: ^bb90
    %653 = llvm.add %604, %603  : i64
    llvm.br ^bb88(%653 : i64)
  ^bb99:  // pred: ^bb88
    %654 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    %655 = llvm.insertvalue %355, %654[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %656 = llvm.insertvalue %549, %655[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %657 = llvm.insertvalue %578, %656[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %657 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0", "v2_0"], llvm.emit_c_interface, output_names = ["v7_0", "v0_0", "v1_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %88 = llvm.extractvalue %85[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %89 = llvm.mlir.constant(3 : i64) : i64
    %90 = llvm.mlir.constant(24 : i64) : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %93 = llvm.mlir.constant(3 : i64) : i64
    %94 = llvm.call @omTensorCreateUntyped(%93) : (i64) -> !llvm.ptr<i8>
    %95 = llvm.mlir.constant(1 : i64) : i64
    %96 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %98 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %99 = llvm.bitcast %98 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%94, %95, %97, %99) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %100 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%94, %100) : (!llvm.ptr<i8>, i64) -> ()
    %101 = llvm.call @omTensorGetShape(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.call @omTensorGetStrides(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %103 = llvm.mlir.constant(0 : i64) : i64
    %104 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.getelementptr %101[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %102[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %110 = llvm.getelementptr %101[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.getelementptr %102[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(2 : i64) : i64
    %114 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.getelementptr %101[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.getelementptr %102[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(0 : i64) : i64
    %119 = llvm.getelementptr %92[%118] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %94, %119 : !llvm.ptr<ptr<i8>>
    %120 = llvm.mlir.constant(3 : i64) : i64
    %121 = llvm.call @omTensorCreateUntyped(%120) : (i64) -> !llvm.ptr<i8>
    %122 = llvm.mlir.constant(1 : i64) : i64
    %123 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %124 = llvm.bitcast %123 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %125 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %126 = llvm.bitcast %125 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%121, %122, %124, %126) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %127 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%121, %127) : (!llvm.ptr<i8>, i64) -> ()
    %128 = llvm.call @omTensorGetShape(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %129 = llvm.call @omTensorGetStrides(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %130 = llvm.mlir.constant(0 : i64) : i64
    %131 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %132 = llvm.getelementptr %128[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %134 = llvm.getelementptr %129[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.mlir.constant(1 : i64) : i64
    %136 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %137 = llvm.getelementptr %128[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.getelementptr %129[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.mlir.constant(2 : i64) : i64
    %141 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %142 = llvm.getelementptr %128[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.getelementptr %129[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.mlir.constant(1 : i64) : i64
    %146 = llvm.getelementptr %92[%145] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %121, %146 : !llvm.ptr<ptr<i8>>
    %147 = llvm.mlir.constant(3 : i64) : i64
    %148 = llvm.call @omTensorCreateUntyped(%147) : (i64) -> !llvm.ptr<i8>
    %149 = llvm.mlir.constant(1 : i64) : i64
    %150 = llvm.extractvalue %88[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %151 = llvm.bitcast %150 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %152 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %153 = llvm.bitcast %152 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%148, %149, %151, %153) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %154 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%148, %154) : (!llvm.ptr<i8>, i64) -> ()
    %155 = llvm.call @omTensorGetShape(%148) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %156 = llvm.call @omTensorGetStrides(%148) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %157 = llvm.mlir.constant(0 : i64) : i64
    %158 = llvm.extractvalue %88[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %159 = llvm.getelementptr %155[%157] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %158, %159 : !llvm.ptr<i64>
    %160 = llvm.extractvalue %88[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %161 = llvm.getelementptr %156[%157] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %160, %161 : !llvm.ptr<i64>
    %162 = llvm.mlir.constant(1 : i64) : i64
    %163 = llvm.extractvalue %88[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %164 = llvm.getelementptr %155[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %163, %164 : !llvm.ptr<i64>
    %165 = llvm.extractvalue %88[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.getelementptr %156[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.mlir.constant(2 : i64) : i64
    %168 = llvm.extractvalue %88[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %169 = llvm.getelementptr %155[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %168, %169 : !llvm.ptr<i64>
    %170 = llvm.extractvalue %88[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.getelementptr %156[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.mlir.constant(2 : i64) : i64
    %173 = llvm.getelementptr %92[%172] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %148, %173 : !llvm.ptr<ptr<i8>>
    %174 = llvm.call @omTensorListCreate(%92, %89, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %174 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<199 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<199 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

