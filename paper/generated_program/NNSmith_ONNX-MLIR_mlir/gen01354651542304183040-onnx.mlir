module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [4] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<6> : tensor<1x1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x array<1 x i32>>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: !llvm.ptr<i32>, %arg27: !llvm.ptr<i32>, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: i64, %arg34: i64, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v7_0", "v6_0", "v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %15 = llvm.insertvalue %arg13, %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %18 = llvm.insertvalue %arg16, %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %19 = llvm.insertvalue %arg21, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %21 = llvm.insertvalue %arg22, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.insertvalue %arg23, %22[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.insertvalue %arg19, %23[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %25 = llvm.insertvalue %arg24, %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %26 = llvm.insertvalue %arg20, %25[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.insertvalue %arg25, %26[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %29 = llvm.insertvalue %arg26, %28[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.insertvalue %arg27, %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %31 = llvm.insertvalue %arg28, %30[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %32 = llvm.insertvalue %arg29, %31[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %33 = llvm.insertvalue %arg34, %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.insertvalue %arg30, %33[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %35 = llvm.insertvalue %arg35, %34[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %36 = llvm.insertvalue %arg31, %35[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.insertvalue %arg36, %36[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %38 = llvm.insertvalue %arg32, %37[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %39 = llvm.insertvalue %arg37, %38[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %40 = llvm.insertvalue %arg33, %39[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.insertvalue %arg38, %40[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %42 = llvm.mlir.constant(2147483647 : i32) : i32
    %43 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x array<1 x i32>>>>>>
    %44 = llvm.bitcast %43 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x array<1 x i32>>>>>> to !llvm.ptr<i32>
    %45 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %46 = llvm.insertvalue %44, %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.insertvalue %48, %47[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(4 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(4 : index) : i64
    %77 = llvm.mlir.constant(4 : index) : i64
    %78 = llvm.mlir.constant(4 : index) : i64
    %79 = llvm.mlir.constant(4 : index) : i64
    %80 = llvm.mlir.null : !llvm.ptr<i32>
    %81 = llvm.getelementptr %80[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %82 = llvm.ptrtoint %81 : !llvm.ptr<i32> to i64
    %83 = llvm.mlir.constant(16 : index) : i64
    %84 = llvm.add %82, %83  : i64
    %85 = llvm.call @malloc(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.bitcast %85 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %87 = llvm.ptrtoint %86 : !llvm.ptr<i32> to i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.sub %83, %88  : i64
    %90 = llvm.add %87, %89  : i64
    %91 = llvm.urem %90, %83  : i64
    %92 = llvm.sub %90, %91  : i64
    %93 = llvm.inttoptr %92 : i64 to !llvm.ptr<i32>
    %94 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %95 = llvm.insertvalue %86, %94[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %96 = llvm.insertvalue %93, %95[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.insertvalue %97, %96[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %99 = llvm.insertvalue %70, %98[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %100 = llvm.insertvalue %71, %99[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %101 = llvm.insertvalue %72, %100[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %102 = llvm.insertvalue %73, %101[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %103 = llvm.insertvalue %74, %102[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %104 = llvm.insertvalue %78, %103[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %105 = llvm.insertvalue %77, %104[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %106 = llvm.insertvalue %76, %105[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %107 = llvm.insertvalue %74, %106[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %108 = llvm.insertvalue %75, %107[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%109 : i64)
  ^bb1(%112: i64):  // 2 preds: ^bb0, ^bb14
    %113 = llvm.icmp "slt" %112, %110 : i64
    llvm.cond_br %113, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%114 : i64)
  ^bb3(%117: i64):  // 2 preds: ^bb2, ^bb13
    %118 = llvm.icmp "slt" %117, %115 : i64
    llvm.cond_br %118, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%119 : i64)
  ^bb5(%122: i64):  // 2 preds: ^bb4, ^bb12
    %123 = llvm.icmp "slt" %122, %120 : i64
    llvm.cond_br %123, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %124 = llvm.mlir.constant(0 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%124 : i64)
  ^bb7(%127: i64):  // 2 preds: ^bb6, ^bb11
    %128 = llvm.icmp "slt" %127, %125 : i64
    llvm.cond_br %128, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%129 : i64)
  ^bb9(%132: i64):  // 2 preds: ^bb8, ^bb10
    %133 = llvm.icmp "slt" %132, %130 : i64
    llvm.cond_br %133, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %134 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %135 = llvm.add %112, %117  : i64
    %136 = llvm.add %135, %122  : i64
    %137 = llvm.add %136, %127  : i64
    %138 = llvm.add %137, %132  : i64
    %139 = llvm.getelementptr %134[%138] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %140 = llvm.load %139 : !llvm.ptr<i32>
    %141 = llvm.extractvalue %108[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %142 = llvm.mlir.constant(4 : index) : i64
    %143 = llvm.mul %112, %142  : i64
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mul %117, %144  : i64
    %146 = llvm.add %143, %145  : i64
    %147 = llvm.mlir.constant(4 : index) : i64
    %148 = llvm.mul %122, %147  : i64
    %149 = llvm.add %146, %148  : i64
    %150 = llvm.mlir.constant(4 : index) : i64
    %151 = llvm.mul %127, %150  : i64
    %152 = llvm.add %149, %151  : i64
    %153 = llvm.add %152, %132  : i64
    %154 = llvm.getelementptr %141[%153] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %140, %154 : !llvm.ptr<i32>
    %155 = llvm.add %132, %131  : i64
    llvm.br ^bb9(%155 : i64)
  ^bb11:  // pred: ^bb9
    %156 = llvm.add %127, %126  : i64
    llvm.br ^bb7(%156 : i64)
  ^bb12:  // pred: ^bb7
    %157 = llvm.add %122, %121  : i64
    llvm.br ^bb5(%157 : i64)
  ^bb13:  // pred: ^bb5
    %158 = llvm.add %117, %116  : i64
    llvm.br ^bb3(%158 : i64)
  ^bb14:  // pred: ^bb3
    %159 = llvm.add %112, %111  : i64
    llvm.br ^bb1(%159 : i64)
  ^bb15:  // pred: ^bb1
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%160 : i64)
  ^bb16(%163: i64):  // 2 preds: ^bb15, ^bb29
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb17, ^bb30
  ^bb17:  // pred: ^bb16
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%165 : i64)
  ^bb18(%168: i64):  // 2 preds: ^bb17, ^bb28
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb19, ^bb29
  ^bb19:  // pred: ^bb18
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%170 : i64)
  ^bb20(%173: i64):  // 2 preds: ^bb19, ^bb27
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb21, ^bb28
  ^bb21:  // pred: ^bb20
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%175 : i64)
  ^bb22(%178: i64):  // 2 preds: ^bb21, ^bb26
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb23, ^bb27
  ^bb23:  // pred: ^bb22
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%180 : i64)
  ^bb24(%183: i64):  // 2 preds: ^bb23, ^bb25
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.add %183, %185  : i64
    %187 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %188 = llvm.add %163, %168  : i64
    %189 = llvm.add %188, %173  : i64
    %190 = llvm.add %189, %178  : i64
    %191 = llvm.add %190, %183  : i64
    %192 = llvm.getelementptr %187[%191] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %193 = llvm.load %192 : !llvm.ptr<i32>
    %194 = llvm.extractvalue %108[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %195 = llvm.mlir.constant(4 : index) : i64
    %196 = llvm.mul %163, %195  : i64
    %197 = llvm.mlir.constant(4 : index) : i64
    %198 = llvm.mul %168, %197  : i64
    %199 = llvm.add %196, %198  : i64
    %200 = llvm.mlir.constant(4 : index) : i64
    %201 = llvm.mul %173, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.mlir.constant(4 : index) : i64
    %204 = llvm.mul %178, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.add %205, %186  : i64
    %207 = llvm.getelementptr %194[%206] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %193, %207 : !llvm.ptr<i32>
    %208 = llvm.add %183, %182  : i64
    llvm.br ^bb24(%208 : i64)
  ^bb26:  // pred: ^bb24
    %209 = llvm.add %178, %177  : i64
    llvm.br ^bb22(%209 : i64)
  ^bb27:  // pred: ^bb22
    %210 = llvm.add %173, %172  : i64
    llvm.br ^bb20(%210 : i64)
  ^bb28:  // pred: ^bb20
    %211 = llvm.add %168, %167  : i64
    llvm.br ^bb18(%211 : i64)
  ^bb29:  // pred: ^bb18
    %212 = llvm.add %163, %162  : i64
    llvm.br ^bb16(%212 : i64)
  ^bb30:  // pred: ^bb16
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%213 : i64)
  ^bb31(%216: i64):  // 2 preds: ^bb30, ^bb44
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb32, ^bb45
  ^bb32:  // pred: ^bb31
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%218 : i64)
  ^bb33(%221: i64):  // 2 preds: ^bb32, ^bb43
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb34, ^bb44
  ^bb34:  // pred: ^bb33
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%223 : i64)
  ^bb35(%226: i64):  // 2 preds: ^bb34, ^bb42
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb36, ^bb43
  ^bb36:  // pred: ^bb35
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%228 : i64)
  ^bb37(%231: i64):  // 2 preds: ^bb36, ^bb41
    %232 = llvm.icmp "slt" %231, %229 : i64
    llvm.cond_br %232, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%233 : i64)
  ^bb39(%236: i64):  // 2 preds: ^bb38, ^bb40
    %237 = llvm.icmp "slt" %236, %234 : i64
    llvm.cond_br %237, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.add %236, %238  : i64
    %240 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %241 = llvm.add %216, %221  : i64
    %242 = llvm.add %241, %226  : i64
    %243 = llvm.add %242, %231  : i64
    %244 = llvm.add %243, %236  : i64
    %245 = llvm.getelementptr %240[%244] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %246 = llvm.load %245 : !llvm.ptr<i32>
    %247 = llvm.extractvalue %108[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %248 = llvm.mlir.constant(4 : index) : i64
    %249 = llvm.mul %216, %248  : i64
    %250 = llvm.mlir.constant(4 : index) : i64
    %251 = llvm.mul %221, %250  : i64
    %252 = llvm.add %249, %251  : i64
    %253 = llvm.mlir.constant(4 : index) : i64
    %254 = llvm.mul %226, %253  : i64
    %255 = llvm.add %252, %254  : i64
    %256 = llvm.mlir.constant(4 : index) : i64
    %257 = llvm.mul %231, %256  : i64
    %258 = llvm.add %255, %257  : i64
    %259 = llvm.add %258, %239  : i64
    %260 = llvm.getelementptr %247[%259] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %246, %260 : !llvm.ptr<i32>
    %261 = llvm.add %236, %235  : i64
    llvm.br ^bb39(%261 : i64)
  ^bb41:  // pred: ^bb39
    %262 = llvm.add %231, %230  : i64
    llvm.br ^bb37(%262 : i64)
  ^bb42:  // pred: ^bb37
    %263 = llvm.add %226, %225  : i64
    llvm.br ^bb35(%263 : i64)
  ^bb43:  // pred: ^bb35
    %264 = llvm.add %221, %220  : i64
    llvm.br ^bb33(%264 : i64)
  ^bb44:  // pred: ^bb33
    %265 = llvm.add %216, %215  : i64
    llvm.br ^bb31(%265 : i64)
  ^bb45:  // pred: ^bb31
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%266 : i64)
  ^bb46(%269: i64):  // 2 preds: ^bb45, ^bb59
    %270 = llvm.icmp "slt" %269, %267 : i64
    llvm.cond_br %270, ^bb47, ^bb60
  ^bb47:  // pred: ^bb46
    %271 = llvm.mlir.constant(0 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%271 : i64)
  ^bb48(%274: i64):  // 2 preds: ^bb47, ^bb58
    %275 = llvm.icmp "slt" %274, %272 : i64
    llvm.cond_br %275, ^bb49, ^bb59
  ^bb49:  // pred: ^bb48
    %276 = llvm.mlir.constant(0 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%276 : i64)
  ^bb50(%279: i64):  // 2 preds: ^bb49, ^bb57
    %280 = llvm.icmp "slt" %279, %277 : i64
    llvm.cond_br %280, ^bb51, ^bb58
  ^bb51:  // pred: ^bb50
    %281 = llvm.mlir.constant(0 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%281 : i64)
  ^bb52(%284: i64):  // 2 preds: ^bb51, ^bb56
    %285 = llvm.icmp "slt" %284, %282 : i64
    llvm.cond_br %285, ^bb53, ^bb57
  ^bb53:  // pred: ^bb52
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%286 : i64)
  ^bb54(%289: i64):  // 2 preds: ^bb53, ^bb55
    %290 = llvm.icmp "slt" %289, %287 : i64
    llvm.cond_br %290, ^bb55, ^bb56
  ^bb55:  // pred: ^bb54
    %291 = llvm.mlir.constant(3 : index) : i64
    %292 = llvm.add %289, %291  : i64
    %293 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %294 = llvm.add %269, %274  : i64
    %295 = llvm.add %294, %279  : i64
    %296 = llvm.add %295, %284  : i64
    %297 = llvm.add %296, %289  : i64
    %298 = llvm.getelementptr %293[%297] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %299 = llvm.load %298 : !llvm.ptr<i32>
    %300 = llvm.extractvalue %108[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %301 = llvm.mlir.constant(4 : index) : i64
    %302 = llvm.mul %269, %301  : i64
    %303 = llvm.mlir.constant(4 : index) : i64
    %304 = llvm.mul %274, %303  : i64
    %305 = llvm.add %302, %304  : i64
    %306 = llvm.mlir.constant(4 : index) : i64
    %307 = llvm.mul %279, %306  : i64
    %308 = llvm.add %305, %307  : i64
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.mul %284, %309  : i64
    %311 = llvm.add %308, %310  : i64
    %312 = llvm.add %311, %292  : i64
    %313 = llvm.getelementptr %300[%312] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %299, %313 : !llvm.ptr<i32>
    %314 = llvm.add %289, %288  : i64
    llvm.br ^bb54(%314 : i64)
  ^bb56:  // pred: ^bb54
    %315 = llvm.add %284, %283  : i64
    llvm.br ^bb52(%315 : i64)
  ^bb57:  // pred: ^bb52
    %316 = llvm.add %279, %278  : i64
    llvm.br ^bb50(%316 : i64)
  ^bb58:  // pred: ^bb50
    %317 = llvm.add %274, %273  : i64
    llvm.br ^bb48(%317 : i64)
  ^bb59:  // pred: ^bb48
    %318 = llvm.add %269, %268  : i64
    llvm.br ^bb46(%318 : i64)
  ^bb60:  // pred: ^bb46
    %319 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %320 = llvm.extractvalue %108[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %321 = llvm.extractvalue %108[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %322 = llvm.insertvalue %320, %319[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.insertvalue %321, %322[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.insertvalue %324, %323[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %326 = llvm.mlir.constant(4 : index) : i64
    %327 = llvm.insertvalue %326, %325[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.insertvalue %328, %327[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mlir.null : !llvm.ptr<i32>
    %336 = llvm.getelementptr %335[%330] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %337 = llvm.ptrtoint %336 : !llvm.ptr<i32> to i64
    %338 = llvm.mlir.constant(16 : index) : i64
    %339 = llvm.add %337, %338  : i64
    %340 = llvm.call @malloc(%339) : (i64) -> !llvm.ptr<i8>
    %341 = llvm.bitcast %340 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %342 = llvm.ptrtoint %341 : !llvm.ptr<i32> to i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.sub %338, %343  : i64
    %345 = llvm.add %342, %344  : i64
    %346 = llvm.urem %345, %338  : i64
    %347 = llvm.sub %345, %346  : i64
    %348 = llvm.inttoptr %347 : i64 to !llvm.ptr<i32>
    %349 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %350 = llvm.insertvalue %341, %349[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %348, %350[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.insertvalue %352, %351[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %330, %353[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %331, %354[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %332, %355[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.insertvalue %333, %356[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %331, %357[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %332, %358[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %333, %359[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.insertvalue %334, %360[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%362 : i64)
  ^bb61(%365: i64):  // 2 preds: ^bb60, ^bb71
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%367 : i64)
  ^bb63(%370: i64):  // 2 preds: ^bb62, ^bb70
    %371 = llvm.icmp "slt" %370, %368 : i64
    llvm.cond_br %371, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%372 : i64)
  ^bb65(%375: i64):  // 2 preds: ^bb64, ^bb69
    %376 = llvm.icmp "slt" %375, %373 : i64
    llvm.cond_br %376, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%377 : i64)
  ^bb67(%380: i64):  // 2 preds: ^bb66, ^bb68
    %381 = llvm.icmp "slt" %380, %378 : i64
    llvm.cond_br %381, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %382 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.add %365, %370  : i64
    %384 = llvm.add %383, %375  : i64
    %385 = llvm.add %384, %380  : i64
    %386 = llvm.getelementptr %382[%385] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %42, %386 : !llvm.ptr<i32>
    %387 = llvm.add %380, %379  : i64
    llvm.br ^bb67(%387 : i64)
  ^bb69:  // pred: ^bb67
    %388 = llvm.add %375, %374  : i64
    llvm.br ^bb65(%388 : i64)
  ^bb70:  // pred: ^bb65
    %389 = llvm.add %370, %369  : i64
    llvm.br ^bb63(%389 : i64)
  ^bb71:  // pred: ^bb63
    %390 = llvm.add %365, %364  : i64
    llvm.br ^bb61(%390 : i64)
  ^bb72:  // pred: ^bb61
    %391 = llvm.mlir.constant(0 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%391 : i64)
  ^bb73(%394: i64):  // 2 preds: ^bb72, ^bb86
    %395 = llvm.icmp "slt" %394, %392 : i64
    llvm.cond_br %395, ^bb74, ^bb87
  ^bb74:  // pred: ^bb73
    %396 = llvm.mlir.constant(0 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%396 : i64)
  ^bb75(%399: i64):  // 2 preds: ^bb74, ^bb85
    %400 = llvm.icmp "slt" %399, %397 : i64
    llvm.cond_br %400, ^bb76, ^bb86
  ^bb76:  // pred: ^bb75
    %401 = llvm.mlir.constant(0 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%401 : i64)
  ^bb77(%404: i64):  // 2 preds: ^bb76, ^bb84
    %405 = llvm.icmp "slt" %404, %402 : i64
    llvm.cond_br %405, ^bb78, ^bb85
  ^bb78:  // pred: ^bb77
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%406 : i64)
  ^bb79(%409: i64):  // 2 preds: ^bb78, ^bb83
    %410 = llvm.icmp "slt" %409, %407 : i64
    llvm.cond_br %410, ^bb80, ^bb84
  ^bb80:  // pred: ^bb79
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.mlir.constant(4 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%411 : i64)
  ^bb81(%414: i64):  // 2 preds: ^bb80, ^bb82
    %415 = llvm.icmp "slt" %414, %412 : i64
    llvm.cond_br %415, ^bb82, ^bb83
  ^bb82:  // pred: ^bb81
    %416 = llvm.extractvalue %108[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %417 = llvm.mlir.constant(4 : index) : i64
    %418 = llvm.mul %394, %417  : i64
    %419 = llvm.mlir.constant(4 : index) : i64
    %420 = llvm.mul %399, %419  : i64
    %421 = llvm.add %418, %420  : i64
    %422 = llvm.mlir.constant(4 : index) : i64
    %423 = llvm.mul %404, %422  : i64
    %424 = llvm.add %421, %423  : i64
    %425 = llvm.mlir.constant(4 : index) : i64
    %426 = llvm.mul %409, %425  : i64
    %427 = llvm.add %424, %426  : i64
    %428 = llvm.add %427, %414  : i64
    %429 = llvm.getelementptr %416[%428] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %430 = llvm.load %429 : !llvm.ptr<i32>
    %431 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.add %394, %399  : i64
    %433 = llvm.add %432, %404  : i64
    %434 = llvm.add %433, %409  : i64
    %435 = llvm.getelementptr %431[%434] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %436 = llvm.load %435 : !llvm.ptr<i32>
    %437 = llvm.icmp "slt" %436, %430 : i32
    %438 = llvm.select %437, %436, %430 : i1, i32
    %439 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.add %394, %399  : i64
    %441 = llvm.add %440, %404  : i64
    %442 = llvm.add %441, %409  : i64
    %443 = llvm.getelementptr %439[%442] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %438, %443 : !llvm.ptr<i32>
    %444 = llvm.add %414, %413  : i64
    llvm.br ^bb81(%444 : i64)
  ^bb83:  // pred: ^bb81
    %445 = llvm.add %409, %408  : i64
    llvm.br ^bb79(%445 : i64)
  ^bb84:  // pred: ^bb79
    %446 = llvm.add %404, %403  : i64
    llvm.br ^bb77(%446 : i64)
  ^bb85:  // pred: ^bb77
    %447 = llvm.add %399, %398  : i64
    llvm.br ^bb75(%447 : i64)
  ^bb86:  // pred: ^bb75
    %448 = llvm.add %394, %393  : i64
    llvm.br ^bb73(%448 : i64)
  ^bb87:  // pred: ^bb73
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.null : !llvm.ptr<i32>
    %455 = llvm.getelementptr %454[%449] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %456 = llvm.ptrtoint %455 : !llvm.ptr<i32> to i64
    %457 = llvm.mlir.constant(16 : index) : i64
    %458 = llvm.add %456, %457  : i64
    %459 = llvm.call @malloc(%458) : (i64) -> !llvm.ptr<i8>
    %460 = llvm.bitcast %459 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %461 = llvm.ptrtoint %460 : !llvm.ptr<i32> to i64
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.sub %457, %462  : i64
    %464 = llvm.add %461, %463  : i64
    %465 = llvm.urem %464, %457  : i64
    %466 = llvm.sub %464, %465  : i64
    %467 = llvm.inttoptr %466 : i64 to !llvm.ptr<i32>
    %468 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %469 = llvm.insertvalue %460, %468[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %467, %469[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.mlir.constant(0 : index) : i64
    %472 = llvm.insertvalue %471, %470[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %449, %472[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %450, %473[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %451, %474[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %452, %475[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %450, %476[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %451, %477[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.insertvalue %452, %478[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.insertvalue %453, %479[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%481 : i64)
  ^bb88(%484: i64):  // 2 preds: ^bb87, ^bb98
    %485 = llvm.icmp "slt" %484, %482 : i64
    llvm.cond_br %485, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%486 : i64)
  ^bb90(%489: i64):  // 2 preds: ^bb89, ^bb97
    %490 = llvm.icmp "slt" %489, %487 : i64
    llvm.cond_br %490, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%491 : i64)
  ^bb92(%494: i64):  // 2 preds: ^bb91, ^bb96
    %495 = llvm.icmp "slt" %494, %492 : i64
    llvm.cond_br %495, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %496 = llvm.mlir.constant(0 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%496 : i64)
  ^bb94(%499: i64):  // 2 preds: ^bb93, ^bb95
    %500 = llvm.icmp "slt" %499, %497 : i64
    llvm.cond_br %500, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %501 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.add %484, %489  : i64
    %503 = llvm.add %502, %494  : i64
    %504 = llvm.add %503, %499  : i64
    %505 = llvm.getelementptr %501[%504] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %506 = llvm.load %505 : !llvm.ptr<i32>
    %507 = llvm.mlir.constant(false) : i1
    %508 = "llvm.intr.abs"(%506, %507) : (i32, i1) -> i32
    %509 = llvm.extractvalue %480[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.add %484, %489  : i64
    %511 = llvm.add %510, %494  : i64
    %512 = llvm.add %511, %499  : i64
    %513 = llvm.getelementptr %509[%512] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %508, %513 : !llvm.ptr<i32>
    %514 = llvm.add %499, %498  : i64
    llvm.br ^bb94(%514 : i64)
  ^bb96:  // pred: ^bb94
    %515 = llvm.add %494, %493  : i64
    llvm.br ^bb92(%515 : i64)
  ^bb97:  // pred: ^bb92
    %516 = llvm.add %489, %488  : i64
    llvm.br ^bb90(%516 : i64)
  ^bb98:  // pred: ^bb90
    %517 = llvm.add %484, %483  : i64
    llvm.br ^bb88(%517 : i64)
  ^bb99:  // pred: ^bb88
    %518 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %519 = llvm.insertvalue %329, %518[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %520 = llvm.insertvalue %480, %519[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %520 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v7_0", "v6_0", "v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %15 = llvm.extractvalue %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %16 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %17 = llvm.extractvalue %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %18 = llvm.extractvalue %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %19 = llvm.extractvalue %14[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.extractvalue %14[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %21 = llvm.extractvalue %14[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %22 = llvm.extractvalue %14[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.extractvalue %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %24 = llvm.extractvalue %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %25 = llvm.extractvalue %14[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %26 = llvm.extractvalue %14[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.extractvalue %14[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %28 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %29 = llvm.extractvalue %28[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %31 = llvm.extractvalue %28[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %32 = llvm.extractvalue %28[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %33 = llvm.extractvalue %28[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.extractvalue %28[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %35 = llvm.extractvalue %28[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %36 = llvm.extractvalue %28[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.extractvalue %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %38 = llvm.extractvalue %28[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %39 = llvm.extractvalue %28[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %40 = llvm.extractvalue %28[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.extractvalue %28[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %42 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %42, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.getelementptr %0[%51] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %53 = llvm.load %52 : !llvm.ptr<ptr<i8>>
    %54 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %56 = llvm.call @omTensorGetDataPtr(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %58 = llvm.insertvalue %57, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %59 = llvm.insertvalue %57, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.mlir.constant(0 : i64) : i64
    %65 = llvm.getelementptr %62[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.getelementptr %63[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.getelementptr %62[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.getelementptr %63[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.getelementptr %62[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %82 = llvm.getelementptr %63[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %85 = llvm.mlir.constant(3 : i64) : i64
    %86 = llvm.getelementptr %62[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %87 = llvm.load %86 : !llvm.ptr<i64>
    %88 = llvm.insertvalue %87, %84[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %89 = llvm.getelementptr %63[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %90 = llvm.load %89 : !llvm.ptr<i64>
    %91 = llvm.insertvalue %90, %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %92 = llvm.mlir.constant(4 : i64) : i64
    %93 = llvm.getelementptr %62[%92] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %94 = llvm.load %93 : !llvm.ptr<i64>
    %95 = llvm.insertvalue %94, %91[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %96 = llvm.getelementptr %63[%92] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %97 = llvm.load %96 : !llvm.ptr<i64>
    %98 = llvm.insertvalue %97, %95[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %98, %54 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %99 = llvm.mlir.constant(2 : i64) : i64
    %100 = llvm.getelementptr %0[%99] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %101 = llvm.load %100 : !llvm.ptr<ptr<i8>>
    %102 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %103 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %104 = llvm.call @omTensorGetDataPtr(%101) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %105 = llvm.bitcast %104 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %106 = llvm.insertvalue %105, %103[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %107 = llvm.insertvalue %105, %106[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %108 = llvm.mlir.constant(0 : i64) : i64
    %109 = llvm.insertvalue %108, %107[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %110 = llvm.call @omTensorGetShape(%101) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %111 = llvm.call @omTensorGetStrides(%101) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %112 = llvm.mlir.constant(0 : i64) : i64
    %113 = llvm.getelementptr %110[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %114 = llvm.load %113 : !llvm.ptr<i64>
    %115 = llvm.insertvalue %114, %109[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %116 = llvm.getelementptr %111[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.insertvalue %117, %115[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %119 = llvm.mlir.constant(1 : i64) : i64
    %120 = llvm.getelementptr %110[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %121 = llvm.load %120 : !llvm.ptr<i64>
    %122 = llvm.insertvalue %121, %118[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %123 = llvm.getelementptr %111[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %124 = llvm.load %123 : !llvm.ptr<i64>
    %125 = llvm.insertvalue %124, %122[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %126 = llvm.mlir.constant(2 : i64) : i64
    %127 = llvm.getelementptr %110[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %128 = llvm.load %127 : !llvm.ptr<i64>
    %129 = llvm.insertvalue %128, %125[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %130 = llvm.getelementptr %111[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %131 = llvm.load %130 : !llvm.ptr<i64>
    %132 = llvm.insertvalue %131, %129[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %133 = llvm.mlir.constant(3 : i64) : i64
    %134 = llvm.getelementptr %110[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %135 = llvm.load %134 : !llvm.ptr<i64>
    %136 = llvm.insertvalue %135, %132[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %137 = llvm.getelementptr %111[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %138 = llvm.load %137 : !llvm.ptr<i64>
    %139 = llvm.insertvalue %138, %136[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %140 = llvm.mlir.constant(4 : i64) : i64
    %141 = llvm.getelementptr %110[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %142 = llvm.load %141 : !llvm.ptr<i64>
    %143 = llvm.insertvalue %142, %139[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %144 = llvm.getelementptr %111[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %145 = llvm.load %144 : !llvm.ptr<i64>
    %146 = llvm.insertvalue %145, %143[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %146, %102 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %54, %102) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %147 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %148 = llvm.extractvalue %147[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %149 = llvm.extractvalue %147[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %150 = llvm.mlir.constant(2 : i64) : i64
    %151 = llvm.mlir.constant(16 : i64) : i64
    %152 = llvm.call @malloc(%151) : (i64) -> !llvm.ptr<i8>
    %153 = llvm.bitcast %152 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.call @omTensorCreateUntyped(%154) : (i64) -> !llvm.ptr<i8>
    %156 = llvm.mlir.constant(1 : i64) : i64
    %157 = llvm.extractvalue %148[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.bitcast %157 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %159 = llvm.extractvalue %148[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.bitcast %159 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%155, %156, %158, %160) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %161 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%155, %161) : (!llvm.ptr<i8>, i64) -> ()
    %162 = llvm.call @omTensorGetShape(%155) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %163 = llvm.call @omTensorGetStrides(%155) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %164 = llvm.mlir.constant(0 : i64) : i64
    %165 = llvm.extractvalue %148[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.getelementptr %162[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.extractvalue %148[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %168 = llvm.getelementptr %163[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %167, %168 : !llvm.ptr<i64>
    %169 = llvm.mlir.constant(0 : i64) : i64
    %170 = llvm.getelementptr %153[%169] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %155, %170 : !llvm.ptr<ptr<i8>>
    %171 = llvm.mlir.constant(4 : i64) : i64
    %172 = llvm.call @omTensorCreateUntyped(%171) : (i64) -> !llvm.ptr<i8>
    %173 = llvm.mlir.constant(1 : i64) : i64
    %174 = llvm.extractvalue %149[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.bitcast %174 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %176 = llvm.extractvalue %149[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.bitcast %176 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%172, %173, %175, %177) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %178 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%172, %178) : (!llvm.ptr<i8>, i64) -> ()
    %179 = llvm.call @omTensorGetShape(%172) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %180 = llvm.call @omTensorGetStrides(%172) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %181 = llvm.mlir.constant(0 : i64) : i64
    %182 = llvm.extractvalue %149[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.getelementptr %179[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %182, %183 : !llvm.ptr<i64>
    %184 = llvm.extractvalue %149[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.getelementptr %180[%181] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %184, %185 : !llvm.ptr<i64>
    %186 = llvm.mlir.constant(1 : i64) : i64
    %187 = llvm.extractvalue %149[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.getelementptr %179[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %187, %188 : !llvm.ptr<i64>
    %189 = llvm.extractvalue %149[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.getelementptr %180[%186] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %189, %190 : !llvm.ptr<i64>
    %191 = llvm.mlir.constant(2 : i64) : i64
    %192 = llvm.extractvalue %149[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.getelementptr %179[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %192, %193 : !llvm.ptr<i64>
    %194 = llvm.extractvalue %149[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.getelementptr %180[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %194, %195 : !llvm.ptr<i64>
    %196 = llvm.mlir.constant(3 : i64) : i64
    %197 = llvm.extractvalue %149[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.getelementptr %179[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %197, %198 : !llvm.ptr<i64>
    %199 = llvm.extractvalue %149[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.getelementptr %180[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %199, %200 : !llvm.ptr<i64>
    %201 = llvm.mlir.constant(1 : i64) : i64
    %202 = llvm.getelementptr %153[%201] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %172, %202 : !llvm.ptr<ptr<i8>>
    %203 = llvm.call @omTensorListCreate(%153, %150, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %203 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<224 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<224 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

