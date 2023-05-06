module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 5 , 1] , \22name\22 : \22v8_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<7> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<6> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> attributes {input_names = ["v3_0", "v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v8_0"]} {
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
    %36 = llvm.mlir.constant(0 : i64) : i64
    %37 = llvm.mlir.constant(-1 : i64) : i64
    %38 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %39 = llvm.bitcast %38 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %41 = llvm.insertvalue %39, %40[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %39, %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.insertvalue %43, %42[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.insertvalue %47, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.insertvalue %49, %48[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %62 = llvm.bitcast %61 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %64 = llvm.insertvalue %62, %63[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.null : !llvm.ptr<i32>
    %90 = llvm.getelementptr %89[%84] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %91 = llvm.ptrtoint %90 : !llvm.ptr<i32> to i64
    %92 = llvm.mlir.constant(16 : index) : i64
    %93 = llvm.add %91, %92  : i64
    %94 = llvm.call @malloc(%93) : (i64) -> !llvm.ptr<i8>
    %95 = llvm.bitcast %94 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %96 = llvm.ptrtoint %95 : !llvm.ptr<i32> to i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.sub %92, %97  : i64
    %99 = llvm.add %96, %98  : i64
    %100 = llvm.urem %99, %92  : i64
    %101 = llvm.sub %99, %100  : i64
    %102 = llvm.inttoptr %101 : i64 to !llvm.ptr<i32>
    %103 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %104 = llvm.insertvalue %95, %103[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %102, %104[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.insertvalue %106, %105[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %84, %107[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %85, %108[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %86, %109[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %87, %110[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %85, %111[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %86, %112[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %87, %113[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %88, %114[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.mlir.constant(0 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%116 : i64)
  ^bb1(%119: i64):  // 2 preds: ^bb0, ^bb11
    %120 = llvm.icmp "slt" %119, %117 : i64
    llvm.cond_br %120, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %121 = llvm.mlir.constant(0 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%121 : i64)
  ^bb3(%124: i64):  // 2 preds: ^bb2, ^bb10
    %125 = llvm.icmp "slt" %124, %122 : i64
    llvm.cond_br %125, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %126 = llvm.mlir.constant(0 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%126 : i64)
  ^bb5(%129: i64):  // 2 preds: ^bb4, ^bb9
    %130 = llvm.icmp "slt" %129, %127 : i64
    llvm.cond_br %130, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%131 : i64)
  ^bb7(%134: i64):  // 2 preds: ^bb6, ^bb8
    %135 = llvm.icmp "slt" %134, %132 : i64
    llvm.cond_br %135, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %136 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.add %119, %124  : i64
    %138 = llvm.add %137, %129  : i64
    %139 = llvm.add %138, %134  : i64
    %140 = llvm.getelementptr %136[%139] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %141 = llvm.load %140 : !llvm.ptr<i32>
    %142 = llvm.mlir.constant(false) : i1
    %143 = "llvm.intr.abs"(%141, %142) : (i32, i1) -> i32
    %144 = llvm.extractvalue %115[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.add %119, %124  : i64
    %146 = llvm.add %145, %129  : i64
    %147 = llvm.add %146, %134  : i64
    %148 = llvm.getelementptr %144[%147] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %143, %148 : !llvm.ptr<i32>
    %149 = llvm.add %134, %133  : i64
    llvm.br ^bb7(%149 : i64)
  ^bb9:  // pred: ^bb7
    %150 = llvm.add %129, %128  : i64
    llvm.br ^bb5(%150 : i64)
  ^bb10:  // pred: ^bb5
    %151 = llvm.add %124, %123  : i64
    llvm.br ^bb3(%151 : i64)
  ^bb11:  // pred: ^bb3
    %152 = llvm.add %119, %118  : i64
    llvm.br ^bb1(%152 : i64)
  ^bb12:  // pred: ^bb1
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(5 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(5 : index) : i64
    %159 = llvm.mlir.null : !llvm.ptr<i32>
    %160 = llvm.getelementptr %159[%158] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %161 = llvm.ptrtoint %160 : !llvm.ptr<i32> to i64
    %162 = llvm.mlir.constant(16 : index) : i64
    %163 = llvm.add %161, %162  : i64
    %164 = llvm.call @malloc(%163) : (i64) -> !llvm.ptr<i8>
    %165 = llvm.bitcast %164 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %166 = llvm.ptrtoint %165 : !llvm.ptr<i32> to i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.sub %162, %167  : i64
    %169 = llvm.add %166, %168  : i64
    %170 = llvm.urem %169, %162  : i64
    %171 = llvm.sub %169, %170  : i64
    %172 = llvm.inttoptr %171 : i64 to !llvm.ptr<i32>
    %173 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %174 = llvm.insertvalue %165, %173[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %172, %174[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.insertvalue %176, %175[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.insertvalue %153, %177[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.insertvalue %154, %178[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.insertvalue %155, %179[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.insertvalue %156, %180[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.insertvalue %154, %181[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.insertvalue %155, %182[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.insertvalue %156, %183[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.insertvalue %157, %184[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%186 : i64)
  ^bb13(%189: i64):  // 2 preds: ^bb12, ^bb23
    %190 = llvm.icmp "slt" %189, %187 : i64
    llvm.cond_br %190, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %191 = llvm.mlir.constant(0 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%191 : i64)
  ^bb15(%194: i64):  // 2 preds: ^bb14, ^bb22
    %195 = llvm.icmp "slt" %194, %192 : i64
    llvm.cond_br %195, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %196 = llvm.mlir.constant(0 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%196 : i64)
  ^bb17(%199: i64):  // 2 preds: ^bb16, ^bb21
    %200 = llvm.icmp "slt" %199, %197 : i64
    llvm.cond_br %200, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%201 : i64)
  ^bb19(%204: i64):  // 2 preds: ^bb18, ^bb20
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %206 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.add %189, %194  : i64
    %208 = llvm.add %207, %199  : i64
    %209 = llvm.add %208, %204  : i64
    %210 = llvm.getelementptr %206[%209] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %211 = llvm.load %210 : !llvm.ptr<i32>
    %212 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.mlir.constant(5 : index) : i64
    %214 = llvm.mul %189, %213  : i64
    %215 = llvm.add %214, %194  : i64
    %216 = llvm.add %215, %199  : i64
    %217 = llvm.add %216, %204  : i64
    %218 = llvm.getelementptr %212[%217] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %211, %218 : !llvm.ptr<i32>
    %219 = llvm.add %204, %203  : i64
    llvm.br ^bb19(%219 : i64)
  ^bb21:  // pred: ^bb19
    %220 = llvm.add %199, %198  : i64
    llvm.br ^bb17(%220 : i64)
  ^bb22:  // pred: ^bb17
    %221 = llvm.add %194, %193  : i64
    llvm.br ^bb15(%221 : i64)
  ^bb23:  // pred: ^bb15
    %222 = llvm.add %189, %188  : i64
    llvm.br ^bb13(%222 : i64)
  ^bb24:  // pred: ^bb13
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%223 : i64)
  ^bb25(%226: i64):  // 2 preds: ^bb24, ^bb35
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%228 : i64)
  ^bb27(%231: i64):  // 2 preds: ^bb26, ^bb34
    %232 = llvm.icmp "slt" %231, %229 : i64
    llvm.cond_br %232, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%233 : i64)
  ^bb29(%236: i64):  // 2 preds: ^bb28, ^bb33
    %237 = llvm.icmp "slt" %236, %234 : i64
    llvm.cond_br %237, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%238 : i64)
  ^bb31(%241: i64):  // 2 preds: ^bb30, ^bb32
    %242 = llvm.icmp "slt" %241, %239 : i64
    llvm.cond_br %242, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.add %231, %243  : i64
    %245 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.add %226, %231  : i64
    %247 = llvm.add %246, %236  : i64
    %248 = llvm.add %247, %241  : i64
    %249 = llvm.getelementptr %245[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %250 = llvm.load %249 : !llvm.ptr<i32>
    %251 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.mlir.constant(5 : index) : i64
    %253 = llvm.mul %226, %252  : i64
    %254 = llvm.add %253, %244  : i64
    %255 = llvm.add %254, %236  : i64
    %256 = llvm.add %255, %241  : i64
    %257 = llvm.getelementptr %251[%256] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %250, %257 : !llvm.ptr<i32>
    %258 = llvm.add %241, %240  : i64
    llvm.br ^bb31(%258 : i64)
  ^bb33:  // pred: ^bb31
    %259 = llvm.add %236, %235  : i64
    llvm.br ^bb29(%259 : i64)
  ^bb34:  // pred: ^bb29
    %260 = llvm.add %231, %230  : i64
    llvm.br ^bb27(%260 : i64)
  ^bb35:  // pred: ^bb27
    %261 = llvm.add %226, %225  : i64
    llvm.br ^bb25(%261 : i64)
  ^bb36:  // pred: ^bb25
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%262 : i64)
  ^bb37(%265: i64):  // 2 preds: ^bb36, ^bb47
    %266 = llvm.icmp "slt" %265, %263 : i64
    llvm.cond_br %266, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%267 : i64)
  ^bb39(%270: i64):  // 2 preds: ^bb38, ^bb46
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%272 : i64)
  ^bb41(%275: i64):  // 2 preds: ^bb40, ^bb45
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%277 : i64)
  ^bb43(%280: i64):  // 2 preds: ^bb42, ^bb44
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.add %270, %282  : i64
    %284 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.add %265, %270  : i64
    %286 = llvm.add %285, %275  : i64
    %287 = llvm.add %286, %280  : i64
    %288 = llvm.getelementptr %284[%287] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %289 = llvm.load %288 : !llvm.ptr<i32>
    %290 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.mlir.constant(5 : index) : i64
    %292 = llvm.mul %265, %291  : i64
    %293 = llvm.add %292, %283  : i64
    %294 = llvm.add %293, %275  : i64
    %295 = llvm.add %294, %280  : i64
    %296 = llvm.getelementptr %290[%295] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %289, %296 : !llvm.ptr<i32>
    %297 = llvm.add %280, %279  : i64
    llvm.br ^bb43(%297 : i64)
  ^bb45:  // pred: ^bb43
    %298 = llvm.add %275, %274  : i64
    llvm.br ^bb41(%298 : i64)
  ^bb46:  // pred: ^bb41
    %299 = llvm.add %270, %269  : i64
    llvm.br ^bb39(%299 : i64)
  ^bb47:  // pred: ^bb39
    %300 = llvm.add %265, %264  : i64
    llvm.br ^bb37(%300 : i64)
  ^bb48:  // pred: ^bb37
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%301 : i64)
  ^bb49(%304: i64):  // 2 preds: ^bb48, ^bb59
    %305 = llvm.icmp "slt" %304, %302 : i64
    llvm.cond_br %305, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%306 : i64)
  ^bb51(%309: i64):  // 2 preds: ^bb50, ^bb58
    %310 = llvm.icmp "slt" %309, %307 : i64
    llvm.cond_br %310, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%311 : i64)
  ^bb53(%314: i64):  // 2 preds: ^bb52, ^bb57
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%316 : i64)
  ^bb55(%319: i64):  // 2 preds: ^bb54, ^bb56
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %321 = llvm.mlir.constant(3 : index) : i64
    %322 = llvm.add %309, %321  : i64
    %323 = llvm.extractvalue %115[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.add %304, %309  : i64
    %325 = llvm.add %324, %314  : i64
    %326 = llvm.add %325, %319  : i64
    %327 = llvm.getelementptr %323[%326] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %328 = llvm.load %327 : !llvm.ptr<i32>
    %329 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.mlir.constant(5 : index) : i64
    %331 = llvm.mul %304, %330  : i64
    %332 = llvm.add %331, %322  : i64
    %333 = llvm.add %332, %314  : i64
    %334 = llvm.add %333, %319  : i64
    %335 = llvm.getelementptr %329[%334] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %328, %335 : !llvm.ptr<i32>
    %336 = llvm.add %319, %318  : i64
    llvm.br ^bb55(%336 : i64)
  ^bb57:  // pred: ^bb55
    %337 = llvm.add %314, %313  : i64
    llvm.br ^bb53(%337 : i64)
  ^bb58:  // pred: ^bb53
    %338 = llvm.add %309, %308  : i64
    llvm.br ^bb51(%338 : i64)
  ^bb59:  // pred: ^bb51
    %339 = llvm.add %304, %303  : i64
    llvm.br ^bb49(%339 : i64)
  ^bb60:  // pred: ^bb49
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%340 : i64)
  ^bb61(%343: i64):  // 2 preds: ^bb60, ^bb71
    %344 = llvm.icmp "slt" %343, %341 : i64
    llvm.cond_br %344, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%345 : i64)
  ^bb63(%348: i64):  // 2 preds: ^bb62, ^bb70
    %349 = llvm.icmp "slt" %348, %346 : i64
    llvm.cond_br %349, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%350 : i64)
  ^bb65(%353: i64):  // 2 preds: ^bb64, ^bb69
    %354 = llvm.icmp "slt" %353, %351 : i64
    llvm.cond_br %354, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%355 : i64)
  ^bb67(%358: i64):  // 2 preds: ^bb66, ^bb68
    %359 = llvm.icmp "slt" %358, %356 : i64
    llvm.cond_br %359, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %360 = llvm.mlir.constant(4 : index) : i64
    %361 = llvm.add %348, %360  : i64
    %362 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.add %343, %348  : i64
    %364 = llvm.add %363, %353  : i64
    %365 = llvm.add %364, %358  : i64
    %366 = llvm.getelementptr %362[%365] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %367 = llvm.load %366 : !llvm.ptr<i32>
    %368 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.mlir.constant(5 : index) : i64
    %370 = llvm.mul %343, %369  : i64
    %371 = llvm.add %370, %361  : i64
    %372 = llvm.add %371, %353  : i64
    %373 = llvm.add %372, %358  : i64
    %374 = llvm.getelementptr %368[%373] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %367, %374 : !llvm.ptr<i32>
    %375 = llvm.add %358, %357  : i64
    llvm.br ^bb67(%375 : i64)
  ^bb69:  // pred: ^bb67
    %376 = llvm.add %353, %352  : i64
    llvm.br ^bb65(%376 : i64)
  ^bb70:  // pred: ^bb65
    %377 = llvm.add %348, %347  : i64
    llvm.br ^bb63(%377 : i64)
  ^bb71:  // pred: ^bb63
    %378 = llvm.add %343, %342  : i64
    llvm.br ^bb61(%378 : i64)
  ^bb72:  // pred: ^bb61
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.constant(5 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mlir.constant(5 : index) : i64
    %384 = llvm.mlir.null : !llvm.ptr<i64>
    %385 = llvm.getelementptr %384[%383] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %386 = llvm.ptrtoint %385 : !llvm.ptr<i64> to i64
    %387 = llvm.mlir.constant(16 : index) : i64
    %388 = llvm.add %386, %387  : i64
    %389 = llvm.call @malloc(%388) : (i64) -> !llvm.ptr<i8>
    %390 = llvm.bitcast %389 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %391 = llvm.ptrtoint %390 : !llvm.ptr<i64> to i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.sub %387, %392  : i64
    %394 = llvm.add %391, %393  : i64
    %395 = llvm.urem %394, %387  : i64
    %396 = llvm.sub %394, %395  : i64
    %397 = llvm.inttoptr %396 : i64 to !llvm.ptr<i64>
    %398 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %399 = llvm.insertvalue %390, %398[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %400 = llvm.insertvalue %397, %399[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %401 = llvm.mlir.constant(0 : index) : i64
    %402 = llvm.insertvalue %401, %400[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %403 = llvm.insertvalue %379, %402[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %404 = llvm.insertvalue %380, %403[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %405 = llvm.insertvalue %381, %404[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %406 = llvm.insertvalue %380, %405[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %407 = llvm.insertvalue %381, %406[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %408 = llvm.insertvalue %382, %407[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%409 : i64)
  ^bb73(%412: i64):  // 2 preds: ^bb72, ^bb80
    %413 = llvm.icmp "slt" %412, %410 : i64
    llvm.cond_br %413, ^bb74, ^bb81
  ^bb74:  // pred: ^bb73
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(5 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%414 : i64)
  ^bb75(%417: i64):  // 2 preds: ^bb74, ^bb79
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb76, ^bb80
  ^bb76:  // pred: ^bb75
    %419 = llvm.mlir.constant(0 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%419 : i64)
  ^bb77(%422: i64):  // 2 preds: ^bb76, ^bb78
    %423 = llvm.icmp "slt" %422, %420 : i64
    llvm.cond_br %423, ^bb78, ^bb79
  ^bb78:  // pred: ^bb77
    %424 = llvm.extractvalue %408[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %425 = llvm.mlir.constant(5 : index) : i64
    %426 = llvm.mul %412, %425  : i64
    %427 = llvm.add %426, %417  : i64
    %428 = llvm.add %427, %422  : i64
    %429 = llvm.getelementptr %424[%428] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %37, %429 : !llvm.ptr<i64>
    %430 = llvm.add %422, %421  : i64
    llvm.br ^bb77(%430 : i64)
  ^bb79:  // pred: ^bb77
    %431 = llvm.add %417, %416  : i64
    llvm.br ^bb75(%431 : i64)
  ^bb80:  // pred: ^bb75
    %432 = llvm.add %412, %411  : i64
    llvm.br ^bb73(%432 : i64)
  ^bb81:  // pred: ^bb73
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%433 : i64)
  ^bb82(%436: i64):  // 2 preds: ^bb81, ^bb92
    %437 = llvm.icmp "slt" %436, %434 : i64
    llvm.cond_br %437, ^bb83, ^bb93
  ^bb83:  // pred: ^bb82
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.mlir.constant(5 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%438 : i64)
  ^bb84(%441: i64):  // 2 preds: ^bb83, ^bb91
    %442 = llvm.icmp "slt" %441, %439 : i64
    llvm.cond_br %442, ^bb85, ^bb92
  ^bb85:  // pred: ^bb84
    %443 = llvm.mlir.constant(0 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%443 : i64)
  ^bb86(%446: i64):  // 2 preds: ^bb85, ^bb90
    %447 = llvm.icmp "slt" %446, %444 : i64
    llvm.cond_br %447, ^bb87, ^bb91
  ^bb87:  // pred: ^bb86
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%448 : i64)
  ^bb88(%451: i64):  // 2 preds: ^bb87, ^bb89
    %452 = llvm.icmp "slt" %451, %449 : i64
    llvm.cond_br %452, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %453 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.mlir.constant(5 : index) : i64
    %455 = llvm.mul %436, %454  : i64
    %456 = llvm.add %455, %441  : i64
    %457 = llvm.add %456, %446  : i64
    %458 = llvm.add %457, %451  : i64
    %459 = llvm.getelementptr %453[%458] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %460 = llvm.load %459 : !llvm.ptr<i32>
    %461 = llvm.extractvalue %408[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %462 = llvm.mlir.constant(5 : index) : i64
    %463 = llvm.mul %436, %462  : i64
    %464 = llvm.add %463, %441  : i64
    %465 = llvm.add %464, %446  : i64
    %466 = llvm.getelementptr %461[%465] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %467 = llvm.load %466 : !llvm.ptr<i64>
    %468 = llvm.icmp "slt" %467, %36 : i64
    %469 = llvm.select %468, %36, %467 : i1, i64
    %470 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.mlir.constant(5 : index) : i64
    %472 = llvm.mul %436, %471  : i64
    %473 = llvm.add %472, %441  : i64
    %474 = llvm.add %473, %446  : i64
    %475 = llvm.add %474, %469  : i64
    %476 = llvm.getelementptr %470[%475] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %477 = llvm.load %476 : !llvm.ptr<i32>
    %478 = llvm.icmp "sgt" %460, %477 : i32
    %479 = llvm.select %478, %451, %469 : i1, i64
    %480 = llvm.extractvalue %408[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %481 = llvm.mlir.constant(5 : index) : i64
    %482 = llvm.mul %436, %481  : i64
    %483 = llvm.add %482, %441  : i64
    %484 = llvm.add %483, %446  : i64
    %485 = llvm.getelementptr %480[%484] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %479, %485 : !llvm.ptr<i64>
    %486 = llvm.add %451, %450  : i64
    llvm.br ^bb88(%486 : i64)
  ^bb90:  // pred: ^bb88
    %487 = llvm.add %446, %445  : i64
    llvm.br ^bb86(%487 : i64)
  ^bb91:  // pred: ^bb86
    %488 = llvm.add %441, %440  : i64
    llvm.br ^bb84(%488 : i64)
  ^bb92:  // pred: ^bb84
    %489 = llvm.add %436, %435  : i64
    llvm.br ^bb82(%489 : i64)
  ^bb93:  // pred: ^bb82
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.mlir.constant(5 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(5 : index) : i64
    %495 = llvm.mlir.null : !llvm.ptr<i1>
    %496 = llvm.getelementptr %495[%494] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %497 = llvm.ptrtoint %496 : !llvm.ptr<i1> to i64
    %498 = llvm.mlir.constant(16 : index) : i64
    %499 = llvm.add %497, %498  : i64
    %500 = llvm.call @malloc(%499) : (i64) -> !llvm.ptr<i8>
    %501 = llvm.bitcast %500 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %502 = llvm.ptrtoint %501 : !llvm.ptr<i1> to i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.sub %498, %503  : i64
    %505 = llvm.add %502, %504  : i64
    %506 = llvm.urem %505, %498  : i64
    %507 = llvm.sub %505, %506  : i64
    %508 = llvm.inttoptr %507 : i64 to !llvm.ptr<i1>
    %509 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %510 = llvm.insertvalue %501, %509[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %511 = llvm.insertvalue %508, %510[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.insertvalue %512, %511[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %514 = llvm.insertvalue %490, %513[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %515 = llvm.insertvalue %491, %514[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %516 = llvm.insertvalue %492, %515[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %517 = llvm.insertvalue %491, %516[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %518 = llvm.insertvalue %492, %517[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %519 = llvm.insertvalue %493, %518[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%520 : i64)
  ^bb94(%523: i64):  // 2 preds: ^bb93, ^bb101
    %524 = llvm.icmp "slt" %523, %521 : i64
    llvm.cond_br %524, ^bb95, ^bb102
  ^bb95:  // pred: ^bb94
    %525 = llvm.mlir.constant(0 : index) : i64
    %526 = llvm.mlir.constant(5 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb96(%525 : i64)
  ^bb96(%528: i64):  // 2 preds: ^bb95, ^bb100
    %529 = llvm.icmp "slt" %528, %526 : i64
    llvm.cond_br %529, ^bb97, ^bb101
  ^bb97:  // pred: ^bb96
    %530 = llvm.mlir.constant(0 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb98(%530 : i64)
  ^bb98(%533: i64):  // 2 preds: ^bb97, ^bb99
    %534 = llvm.icmp "slt" %533, %531 : i64
    llvm.cond_br %534, ^bb99, ^bb100
  ^bb99:  // pred: ^bb98
    %535 = llvm.extractvalue %408[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %536 = llvm.mlir.constant(5 : index) : i64
    %537 = llvm.mul %523, %536  : i64
    %538 = llvm.add %537, %528  : i64
    %539 = llvm.add %538, %533  : i64
    %540 = llvm.getelementptr %535[%539] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %541 = llvm.load %540 : !llvm.ptr<i64>
    %542 = llvm.icmp "ne" %541, %36 : i64
    %543 = llvm.extractvalue %519[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %544 = llvm.mlir.constant(5 : index) : i64
    %545 = llvm.mul %523, %544  : i64
    %546 = llvm.add %545, %528  : i64
    %547 = llvm.add %546, %533  : i64
    %548 = llvm.getelementptr %543[%547] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %542, %548 : !llvm.ptr<i1>
    %549 = llvm.add %533, %532  : i64
    llvm.br ^bb98(%549 : i64)
  ^bb100:  // pred: ^bb98
    %550 = llvm.add %528, %527  : i64
    llvm.br ^bb96(%550 : i64)
  ^bb101:  // pred: ^bb96
    %551 = llvm.add %523, %522  : i64
    llvm.br ^bb94(%551 : i64)
  ^bb102:  // pred: ^bb94
    llvm.return %519 : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0", "v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v8_0"]} {
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
    %36 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    llvm.store %36, %arg0 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %126 = llvm.load %2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    %127 = llvm.mlir.constant(1 : i64) : i64
    %128 = llvm.mlir.constant(8 : i64) : i64
    %129 = llvm.call @malloc(%128) : (i64) -> !llvm.ptr<i8>
    %130 = llvm.bitcast %129 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %131 = llvm.mlir.constant(3 : i64) : i64
    %132 = llvm.call @omTensorCreateUntyped(%131) : (i64) -> !llvm.ptr<i8>
    %133 = llvm.mlir.constant(1 : i64) : i64
    %134 = llvm.extractvalue %126[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.bitcast %134 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %136 = llvm.extractvalue %126[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %137 = llvm.bitcast %136 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%132, %133, %135, %137) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %138 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%132, %138) : (!llvm.ptr<i8>, i64) -> ()
    %139 = llvm.call @omTensorGetShape(%132) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %140 = llvm.call @omTensorGetStrides(%132) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %141 = llvm.mlir.constant(0 : i64) : i64
    %142 = llvm.extractvalue %126[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.getelementptr %139[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %126[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %145 = llvm.getelementptr %140[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(1 : i64) : i64
    %147 = llvm.extractvalue %126[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %148 = llvm.getelementptr %139[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.extractvalue %126[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %150 = llvm.getelementptr %140[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.mlir.constant(2 : i64) : i64
    %152 = llvm.extractvalue %126[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %153 = llvm.getelementptr %139[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.extractvalue %126[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %155 = llvm.getelementptr %140[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.mlir.constant(0 : i64) : i64
    %157 = llvm.getelementptr %130[%156] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %132, %157 : !llvm.ptr<ptr<i8>>
    %158 = llvm.call @omTensorListCreate(%130, %127, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %158 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<66 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<66 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

