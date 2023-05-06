module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 5 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: !llvm.ptr<i32>, %arg25: !llvm.ptr<i32>, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: i64, %arg34: i64, %arg35: !llvm.ptr<i32>, %arg36: !llvm.ptr<i32>, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64, %arg44: i64, %arg45: i64, %arg46: !llvm.ptr<i32>, %arg47: !llvm.ptr<i32>, %arg48: i64, %arg49: i64, %arg50: i64, %arg51: i64, %arg52: i64, %arg53: i64, %arg54: i64, %arg55: i64, %arg56: i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v3_0", "v8_0", "v7_0", "v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
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
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %15 = llvm.insertvalue %arg13, %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg16, %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg20, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg21, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg22, %22[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg19, %23[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg23, %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %27 = llvm.insertvalue %arg24, %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg25, %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg26, %28[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %arg27, %29[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %arg31, %30[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %arg28, %31[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %arg32, %32[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %arg29, %33[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %arg33, %34[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.insertvalue %arg30, %35[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %arg34, %36[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %39 = llvm.insertvalue %arg35, %38[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %arg36, %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %arg37, %40[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %arg38, %41[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %arg42, %42[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %arg39, %43[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %arg43, %44[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %arg40, %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %arg44, %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %arg41, %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %arg45, %48[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %51 = llvm.insertvalue %arg46, %50[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %arg47, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %arg48, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %arg49, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %arg53, %54[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %arg50, %55[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %arg54, %56[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %arg51, %57[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %arg55, %58[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %arg52, %59[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %arg56, %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(0 : i32) : i32
    %63 = llvm.mlir.constant(2147483647 : i32) : i32
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.null : !llvm.ptr<i32>
    %70 = llvm.getelementptr %69[%64] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %71 = llvm.ptrtoint %70 : !llvm.ptr<i32> to i64
    %72 = llvm.mlir.constant(16 : index) : i64
    %73 = llvm.add %71, %72  : i64
    %74 = llvm.call @malloc(%73) : (i64) -> !llvm.ptr<i8>
    %75 = llvm.bitcast %74 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %76 = llvm.ptrtoint %75 : !llvm.ptr<i32> to i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.sub %72, %77  : i64
    %79 = llvm.add %76, %78  : i64
    %80 = llvm.urem %79, %72  : i64
    %81 = llvm.sub %79, %80  : i64
    %82 = llvm.inttoptr %81 : i64 to !llvm.ptr<i32>
    %83 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %84 = llvm.insertvalue %75, %83[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %82, %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.insertvalue %86, %85[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %64, %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %65, %88[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %66, %89[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %67, %90[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %65, %91[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %66, %92[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %67, %93[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %68, %94[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%96 : i64)
  ^bb1(%99: i64):  // 2 preds: ^bb0, ^bb11
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%101 : i64)
  ^bb3(%104: i64):  // 2 preds: ^bb2, ^bb10
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%106 : i64)
  ^bb5(%109: i64):  // 2 preds: ^bb4, ^bb9
    %110 = llvm.icmp "slt" %109, %107 : i64
    llvm.cond_br %110, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %111 = llvm.mlir.constant(0 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%111 : i64)
  ^bb7(%114: i64):  // 2 preds: ^bb6, ^bb8
    %115 = llvm.icmp "slt" %114, %112 : i64
    llvm.cond_br %115, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %116 = llvm.extractvalue %95[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.add %99, %104  : i64
    %118 = llvm.add %117, %109  : i64
    %119 = llvm.add %118, %114  : i64
    %120 = llvm.getelementptr %116[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %63, %120 : !llvm.ptr<i32>
    %121 = llvm.add %114, %113  : i64
    llvm.br ^bb7(%121 : i64)
  ^bb9:  // pred: ^bb7
    %122 = llvm.add %109, %108  : i64
    llvm.br ^bb5(%122 : i64)
  ^bb10:  // pred: ^bb5
    %123 = llvm.add %104, %103  : i64
    llvm.br ^bb3(%123 : i64)
  ^bb11:  // pred: ^bb3
    %124 = llvm.add %99, %98  : i64
    llvm.br ^bb1(%124 : i64)
  ^bb12:  // pred: ^bb1
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%125 : i64)
  ^bb13(%128: i64):  // 2 preds: ^bb12, ^bb26
    %129 = llvm.icmp "slt" %128, %126 : i64
    llvm.cond_br %129, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%130 : i64)
  ^bb15(%133: i64):  // 2 preds: ^bb14, ^bb25
    %134 = llvm.icmp "slt" %133, %131 : i64
    llvm.cond_br %134, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %135 = llvm.mlir.constant(0 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%135 : i64)
  ^bb17(%138: i64):  // 2 preds: ^bb16, ^bb24
    %139 = llvm.icmp "slt" %138, %136 : i64
    llvm.cond_br %139, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %140 = llvm.mlir.constant(0 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%140 : i64)
  ^bb19(%143: i64):  // 2 preds: ^bb18, ^bb23
    %144 = llvm.icmp "slt" %143, %141 : i64
    llvm.cond_br %144, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%145 : i64)
  ^bb21(%148: i64):  // 2 preds: ^bb20, ^bb22
    %149 = llvm.icmp "slt" %148, %146 : i64
    llvm.cond_br %149, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %150 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %151 = llvm.add %128, %133  : i64
    %152 = llvm.add %151, %138  : i64
    %153 = llvm.add %152, %143  : i64
    %154 = llvm.add %153, %148  : i64
    %155 = llvm.getelementptr %150[%154] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %156 = llvm.load %155 : !llvm.ptr<i32>
    %157 = llvm.extractvalue %95[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.add %128, %133  : i64
    %159 = llvm.add %158, %138  : i64
    %160 = llvm.add %159, %143  : i64
    %161 = llvm.getelementptr %157[%160] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %162 = llvm.load %161 : !llvm.ptr<i32>
    %163 = llvm.icmp "slt" %162, %156 : i32
    %164 = llvm.select %163, %162, %156 : i1, i32
    %165 = llvm.extractvalue %95[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.add %128, %133  : i64
    %167 = llvm.add %166, %138  : i64
    %168 = llvm.add %167, %143  : i64
    %169 = llvm.getelementptr %165[%168] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %164, %169 : !llvm.ptr<i32>
    %170 = llvm.add %148, %147  : i64
    llvm.br ^bb21(%170 : i64)
  ^bb23:  // pred: ^bb21
    %171 = llvm.add %143, %142  : i64
    llvm.br ^bb19(%171 : i64)
  ^bb24:  // pred: ^bb19
    %172 = llvm.add %138, %137  : i64
    llvm.br ^bb17(%172 : i64)
  ^bb25:  // pred: ^bb17
    %173 = llvm.add %133, %132  : i64
    llvm.br ^bb15(%173 : i64)
  ^bb26:  // pred: ^bb15
    %174 = llvm.add %128, %127  : i64
    llvm.br ^bb13(%174 : i64)
  ^bb27:  // pred: ^bb13
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(5 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(5 : index) : i64
    %181 = llvm.mlir.constant(5 : index) : i64
    %182 = llvm.mlir.null : !llvm.ptr<i32>
    %183 = llvm.getelementptr %182[%181] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %184 = llvm.ptrtoint %183 : !llvm.ptr<i32> to i64
    %185 = llvm.mlir.constant(16 : index) : i64
    %186 = llvm.add %184, %185  : i64
    %187 = llvm.call @malloc(%186) : (i64) -> !llvm.ptr<i8>
    %188 = llvm.bitcast %187 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %189 = llvm.ptrtoint %188 : !llvm.ptr<i32> to i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.sub %185, %190  : i64
    %192 = llvm.add %189, %191  : i64
    %193 = llvm.urem %192, %185  : i64
    %194 = llvm.sub %192, %193  : i64
    %195 = llvm.inttoptr %194 : i64 to !llvm.ptr<i32>
    %196 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %197 = llvm.insertvalue %188, %196[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %195, %197[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.insertvalue %199, %198[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %175, %200[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.insertvalue %176, %201[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.insertvalue %177, %202[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %178, %203[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.insertvalue %180, %204[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %177, %205[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.insertvalue %178, %206[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %179, %207[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%209 : i64)
  ^bb28(%212: i64):  // 2 preds: ^bb27, ^bb38
    %213 = llvm.icmp "slt" %212, %210 : i64
    llvm.cond_br %213, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%214 : i64)
  ^bb30(%217: i64):  // 2 preds: ^bb29, ^bb37
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%219 : i64)
  ^bb32(%222: i64):  // 2 preds: ^bb31, ^bb36
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%224 : i64)
  ^bb34(%227: i64):  // 2 preds: ^bb33, ^bb35
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %229 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.add %212, %217  : i64
    %231 = llvm.add %230, %222  : i64
    %232 = llvm.add %231, %227  : i64
    %233 = llvm.getelementptr %229[%232] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %234 = llvm.load %233 : !llvm.ptr<i32>
    %235 = llvm.extractvalue %208[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.mlir.constant(5 : index) : i64
    %237 = llvm.mul %212, %236  : i64
    %238 = llvm.mlir.constant(5 : index) : i64
    %239 = llvm.mul %217, %238  : i64
    %240 = llvm.add %237, %239  : i64
    %241 = llvm.add %240, %222  : i64
    %242 = llvm.add %241, %227  : i64
    %243 = llvm.getelementptr %235[%242] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %234, %243 : !llvm.ptr<i32>
    %244 = llvm.add %227, %226  : i64
    llvm.br ^bb34(%244 : i64)
  ^bb36:  // pred: ^bb34
    %245 = llvm.add %222, %221  : i64
    llvm.br ^bb32(%245 : i64)
  ^bb37:  // pred: ^bb32
    %246 = llvm.add %217, %216  : i64
    llvm.br ^bb30(%246 : i64)
  ^bb38:  // pred: ^bb30
    %247 = llvm.add %212, %211  : i64
    llvm.br ^bb28(%247 : i64)
  ^bb39:  // pred: ^bb28
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%248 : i64)
  ^bb40(%251: i64):  // 2 preds: ^bb39, ^bb50
    %252 = llvm.icmp "slt" %251, %249 : i64
    llvm.cond_br %252, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%253 : i64)
  ^bb42(%256: i64):  // 2 preds: ^bb41, ^bb49
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%258 : i64)
  ^bb44(%261: i64):  // 2 preds: ^bb43, ^bb48
    %262 = llvm.icmp "slt" %261, %259 : i64
    llvm.cond_br %262, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%263 : i64)
  ^bb46(%266: i64):  // 2 preds: ^bb45, ^bb47
    %267 = llvm.icmp "slt" %266, %264 : i64
    llvm.cond_br %267, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.add %261, %268  : i64
    %270 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.add %251, %256  : i64
    %272 = llvm.add %271, %261  : i64
    %273 = llvm.add %272, %266  : i64
    %274 = llvm.getelementptr %270[%273] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %275 = llvm.load %274 : !llvm.ptr<i32>
    %276 = llvm.extractvalue %208[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.mlir.constant(5 : index) : i64
    %278 = llvm.mul %251, %277  : i64
    %279 = llvm.mlir.constant(5 : index) : i64
    %280 = llvm.mul %256, %279  : i64
    %281 = llvm.add %278, %280  : i64
    %282 = llvm.add %281, %269  : i64
    %283 = llvm.add %282, %266  : i64
    %284 = llvm.getelementptr %276[%283] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %275, %284 : !llvm.ptr<i32>
    %285 = llvm.add %266, %265  : i64
    llvm.br ^bb46(%285 : i64)
  ^bb48:  // pred: ^bb46
    %286 = llvm.add %261, %260  : i64
    llvm.br ^bb44(%286 : i64)
  ^bb49:  // pred: ^bb44
    %287 = llvm.add %256, %255  : i64
    llvm.br ^bb42(%287 : i64)
  ^bb50:  // pred: ^bb42
    %288 = llvm.add %251, %250  : i64
    llvm.br ^bb40(%288 : i64)
  ^bb51:  // pred: ^bb40
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%289 : i64)
  ^bb52(%292: i64):  // 2 preds: ^bb51, ^bb62
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%294 : i64)
  ^bb54(%297: i64):  // 2 preds: ^bb53, ^bb61
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%299 : i64)
  ^bb56(%302: i64):  // 2 preds: ^bb55, ^bb60
    %303 = llvm.icmp "slt" %302, %300 : i64
    llvm.cond_br %303, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%304 : i64)
  ^bb58(%307: i64):  // 2 preds: ^bb57, ^bb59
    %308 = llvm.icmp "slt" %307, %305 : i64
    llvm.cond_br %308, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %309 = llvm.mlir.constant(2 : index) : i64
    %310 = llvm.add %302, %309  : i64
    %311 = llvm.extractvalue %95[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.add %292, %297  : i64
    %313 = llvm.add %312, %302  : i64
    %314 = llvm.add %313, %307  : i64
    %315 = llvm.getelementptr %311[%314] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %316 = llvm.load %315 : !llvm.ptr<i32>
    %317 = llvm.extractvalue %208[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.mlir.constant(5 : index) : i64
    %319 = llvm.mul %292, %318  : i64
    %320 = llvm.mlir.constant(5 : index) : i64
    %321 = llvm.mul %297, %320  : i64
    %322 = llvm.add %319, %321  : i64
    %323 = llvm.add %322, %310  : i64
    %324 = llvm.add %323, %307  : i64
    %325 = llvm.getelementptr %317[%324] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %316, %325 : !llvm.ptr<i32>
    %326 = llvm.add %307, %306  : i64
    llvm.br ^bb58(%326 : i64)
  ^bb60:  // pred: ^bb58
    %327 = llvm.add %302, %301  : i64
    llvm.br ^bb56(%327 : i64)
  ^bb61:  // pred: ^bb56
    %328 = llvm.add %297, %296  : i64
    llvm.br ^bb54(%328 : i64)
  ^bb62:  // pred: ^bb54
    %329 = llvm.add %292, %291  : i64
    llvm.br ^bb52(%329 : i64)
  ^bb63:  // pred: ^bb52
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%330 : i64)
  ^bb64(%333: i64):  // 2 preds: ^bb63, ^bb74
    %334 = llvm.icmp "slt" %333, %331 : i64
    llvm.cond_br %334, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%335 : i64)
  ^bb66(%338: i64):  // 2 preds: ^bb65, ^bb73
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%340 : i64)
  ^bb68(%343: i64):  // 2 preds: ^bb67, ^bb72
    %344 = llvm.icmp "slt" %343, %341 : i64
    llvm.cond_br %344, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%345 : i64)
  ^bb70(%348: i64):  // 2 preds: ^bb69, ^bb71
    %349 = llvm.icmp "slt" %348, %346 : i64
    llvm.cond_br %349, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %350 = llvm.mlir.constant(3 : index) : i64
    %351 = llvm.add %343, %350  : i64
    %352 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.add %333, %338  : i64
    %354 = llvm.add %353, %343  : i64
    %355 = llvm.add %354, %348  : i64
    %356 = llvm.getelementptr %352[%355] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %357 = llvm.load %356 : !llvm.ptr<i32>
    %358 = llvm.extractvalue %208[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.mlir.constant(5 : index) : i64
    %360 = llvm.mul %333, %359  : i64
    %361 = llvm.mlir.constant(5 : index) : i64
    %362 = llvm.mul %338, %361  : i64
    %363 = llvm.add %360, %362  : i64
    %364 = llvm.add %363, %351  : i64
    %365 = llvm.add %364, %348  : i64
    %366 = llvm.getelementptr %358[%365] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %357, %366 : !llvm.ptr<i32>
    %367 = llvm.add %348, %347  : i64
    llvm.br ^bb70(%367 : i64)
  ^bb72:  // pred: ^bb70
    %368 = llvm.add %343, %342  : i64
    llvm.br ^bb68(%368 : i64)
  ^bb73:  // pred: ^bb68
    %369 = llvm.add %338, %337  : i64
    llvm.br ^bb66(%369 : i64)
  ^bb74:  // pred: ^bb66
    %370 = llvm.add %333, %332  : i64
    llvm.br ^bb64(%370 : i64)
  ^bb75:  // pred: ^bb64
    %371 = llvm.mlir.constant(0 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%371 : i64)
  ^bb76(%374: i64):  // 2 preds: ^bb75, ^bb86
    %375 = llvm.icmp "slt" %374, %372 : i64
    llvm.cond_br %375, ^bb77, ^bb87
  ^bb77:  // pred: ^bb76
    %376 = llvm.mlir.constant(0 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%376 : i64)
  ^bb78(%379: i64):  // 2 preds: ^bb77, ^bb85
    %380 = llvm.icmp "slt" %379, %377 : i64
    llvm.cond_br %380, ^bb79, ^bb86
  ^bb79:  // pred: ^bb78
    %381 = llvm.mlir.constant(0 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%381 : i64)
  ^bb80(%384: i64):  // 2 preds: ^bb79, ^bb84
    %385 = llvm.icmp "slt" %384, %382 : i64
    llvm.cond_br %385, ^bb81, ^bb85
  ^bb81:  // pred: ^bb80
    %386 = llvm.mlir.constant(0 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%386 : i64)
  ^bb82(%389: i64):  // 2 preds: ^bb81, ^bb83
    %390 = llvm.icmp "slt" %389, %387 : i64
    llvm.cond_br %390, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %391 = llvm.mlir.constant(4 : index) : i64
    %392 = llvm.add %384, %391  : i64
    %393 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.add %374, %379  : i64
    %395 = llvm.add %394, %384  : i64
    %396 = llvm.add %395, %389  : i64
    %397 = llvm.getelementptr %393[%396] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %398 = llvm.load %397 : !llvm.ptr<i32>
    %399 = llvm.extractvalue %208[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.mlir.constant(5 : index) : i64
    %401 = llvm.mul %374, %400  : i64
    %402 = llvm.mlir.constant(5 : index) : i64
    %403 = llvm.mul %379, %402  : i64
    %404 = llvm.add %401, %403  : i64
    %405 = llvm.add %404, %392  : i64
    %406 = llvm.add %405, %389  : i64
    %407 = llvm.getelementptr %399[%406] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %398, %407 : !llvm.ptr<i32>
    %408 = llvm.add %389, %388  : i64
    llvm.br ^bb82(%408 : i64)
  ^bb84:  // pred: ^bb82
    %409 = llvm.add %384, %383  : i64
    llvm.br ^bb80(%409 : i64)
  ^bb85:  // pred: ^bb80
    %410 = llvm.add %379, %378  : i64
    llvm.br ^bb78(%410 : i64)
  ^bb86:  // pred: ^bb78
    %411 = llvm.add %374, %373  : i64
    llvm.br ^bb76(%411 : i64)
  ^bb87:  // pred: ^bb76
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.constant(5 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(5 : index) : i64
    %418 = llvm.mlir.constant(5 : index) : i64
    %419 = llvm.mlir.null : !llvm.ptr<i32>
    %420 = llvm.getelementptr %419[%418] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %421 = llvm.ptrtoint %420 : !llvm.ptr<i32> to i64
    %422 = llvm.mlir.constant(16 : index) : i64
    %423 = llvm.add %421, %422  : i64
    %424 = llvm.call @malloc(%423) : (i64) -> !llvm.ptr<i8>
    %425 = llvm.bitcast %424 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %426 = llvm.ptrtoint %425 : !llvm.ptr<i32> to i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.sub %422, %427  : i64
    %429 = llvm.add %426, %428  : i64
    %430 = llvm.urem %429, %422  : i64
    %431 = llvm.sub %429, %430  : i64
    %432 = llvm.inttoptr %431 : i64 to !llvm.ptr<i32>
    %433 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %434 = llvm.insertvalue %425, %433[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %432, %434[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.insertvalue %436, %435[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %412, %437[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %413, %438[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %414, %439[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %415, %440[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %417, %441[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %414, %442[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %415, %443[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %416, %444[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%446 : i64)
  ^bb88(%449: i64):  // 2 preds: ^bb87, ^bb98
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%451 : i64)
  ^bb90(%454: i64):  // 2 preds: ^bb89, ^bb97
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(5 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%456 : i64)
  ^bb92(%459: i64):  // 2 preds: ^bb91, ^bb96
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%461 : i64)
  ^bb94(%464: i64):  // 2 preds: ^bb93, ^bb95
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %466 = llvm.extractvalue %208[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mlir.constant(5 : index) : i64
    %468 = llvm.mul %449, %467  : i64
    %469 = llvm.mlir.constant(5 : index) : i64
    %470 = llvm.mul %454, %469  : i64
    %471 = llvm.add %468, %470  : i64
    %472 = llvm.add %471, %459  : i64
    %473 = llvm.add %472, %464  : i64
    %474 = llvm.getelementptr %466[%473] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %475 = llvm.load %474 : !llvm.ptr<i32>
    %476 = llvm.sub %62, %475  : i32
    %477 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.mlir.constant(5 : index) : i64
    %479 = llvm.mul %449, %478  : i64
    %480 = llvm.mlir.constant(5 : index) : i64
    %481 = llvm.mul %454, %480  : i64
    %482 = llvm.add %479, %481  : i64
    %483 = llvm.add %482, %459  : i64
    %484 = llvm.add %483, %464  : i64
    %485 = llvm.getelementptr %477[%484] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %476, %485 : !llvm.ptr<i32>
    %486 = llvm.add %464, %463  : i64
    llvm.br ^bb94(%486 : i64)
  ^bb96:  // pred: ^bb94
    %487 = llvm.add %459, %458  : i64
    llvm.br ^bb92(%487 : i64)
  ^bb97:  // pred: ^bb92
    %488 = llvm.add %454, %453  : i64
    llvm.br ^bb90(%488 : i64)
  ^bb98:  // pred: ^bb90
    %489 = llvm.add %449, %448  : i64
    llvm.br ^bb88(%489 : i64)
  ^bb99:  // pred: ^bb88
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    %492 = llvm.mlir.constant(5 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.constant(5 : index) : i64
    %496 = llvm.mlir.constant(5 : index) : i64
    %497 = llvm.mlir.null : !llvm.ptr<i1>
    %498 = llvm.getelementptr %497[%496] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %499 = llvm.ptrtoint %498 : !llvm.ptr<i1> to i64
    %500 = llvm.mlir.constant(16 : index) : i64
    %501 = llvm.add %499, %500  : i64
    %502 = llvm.call @malloc(%501) : (i64) -> !llvm.ptr<i8>
    %503 = llvm.bitcast %502 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %504 = llvm.ptrtoint %503 : !llvm.ptr<i1> to i64
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.sub %500, %505  : i64
    %507 = llvm.add %504, %506  : i64
    %508 = llvm.urem %507, %500  : i64
    %509 = llvm.sub %507, %508  : i64
    %510 = llvm.inttoptr %509 : i64 to !llvm.ptr<i1>
    %511 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %512 = llvm.insertvalue %503, %511[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.insertvalue %510, %512[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %514 = llvm.mlir.constant(0 : index) : i64
    %515 = llvm.insertvalue %514, %513[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %516 = llvm.insertvalue %490, %515[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.insertvalue %491, %516[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.insertvalue %492, %517[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %519 = llvm.insertvalue %493, %518[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %520 = llvm.insertvalue %495, %519[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.insertvalue %492, %520[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.insertvalue %493, %521[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.insertvalue %494, %522[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %524 = llvm.mlir.constant(0 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%524 : i64)
  ^bb100(%527: i64):  // 2 preds: ^bb99, ^bb110
    %528 = llvm.icmp "slt" %527, %525 : i64
    llvm.cond_br %528, ^bb101, ^bb111
  ^bb101:  // pred: ^bb100
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb102(%529 : i64)
  ^bb102(%532: i64):  // 2 preds: ^bb101, ^bb109
    %533 = llvm.icmp "slt" %532, %530 : i64
    llvm.cond_br %533, ^bb103, ^bb110
  ^bb103:  // pred: ^bb102
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.mlir.constant(5 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb104(%534 : i64)
  ^bb104(%537: i64):  // 2 preds: ^bb103, ^bb108
    %538 = llvm.icmp "slt" %537, %535 : i64
    llvm.cond_br %538, ^bb105, ^bb109
  ^bb105:  // pred: ^bb104
    %539 = llvm.mlir.constant(0 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%539 : i64)
  ^bb106(%542: i64):  // 2 preds: ^bb105, ^bb107
    %543 = llvm.icmp "slt" %542, %540 : i64
    llvm.cond_br %543, ^bb107, ^bb108
  ^bb107:  // pred: ^bb106
    %544 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.mlir.constant(5 : index) : i64
    %546 = llvm.mul %527, %545  : i64
    %547 = llvm.mlir.constant(5 : index) : i64
    %548 = llvm.mul %532, %547  : i64
    %549 = llvm.add %546, %548  : i64
    %550 = llvm.add %549, %537  : i64
    %551 = llvm.add %550, %542  : i64
    %552 = llvm.getelementptr %544[%551] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %553 = llvm.load %552 : !llvm.ptr<i32>
    %554 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %555 = llvm.mlir.constant(5 : index) : i64
    %556 = llvm.mul %527, %555  : i64
    %557 = llvm.mlir.constant(5 : index) : i64
    %558 = llvm.mul %532, %557  : i64
    %559 = llvm.add %556, %558  : i64
    %560 = llvm.add %559, %537  : i64
    %561 = llvm.add %560, %542  : i64
    %562 = llvm.getelementptr %554[%561] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %563 = llvm.load %562 : !llvm.ptr<i32>
    %564 = llvm.icmp "sgt" %553, %563 : i32
    %565 = llvm.extractvalue %523[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %566 = llvm.mlir.constant(5 : index) : i64
    %567 = llvm.mul %527, %566  : i64
    %568 = llvm.mlir.constant(5 : index) : i64
    %569 = llvm.mul %532, %568  : i64
    %570 = llvm.add %567, %569  : i64
    %571 = llvm.add %570, %537  : i64
    %572 = llvm.add %571, %542  : i64
    %573 = llvm.getelementptr %565[%572] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %564, %573 : !llvm.ptr<i1>
    %574 = llvm.add %542, %541  : i64
    llvm.br ^bb106(%574 : i64)
  ^bb108:  // pred: ^bb106
    %575 = llvm.add %537, %536  : i64
    llvm.br ^bb104(%575 : i64)
  ^bb109:  // pred: ^bb104
    %576 = llvm.add %532, %531  : i64
    llvm.br ^bb102(%576 : i64)
  ^bb110:  // pred: ^bb102
    %577 = llvm.add %527, %526  : i64
    llvm.br ^bb100(%577 : i64)
  ^bb111:  // pred: ^bb100
    %578 = llvm.mlir.constant(1 : index) : i64
    %579 = llvm.mlir.constant(1 : index) : i64
    %580 = llvm.mlir.constant(5 : index) : i64
    %581 = llvm.mlir.constant(1 : index) : i64
    %582 = llvm.mlir.constant(1 : index) : i64
    %583 = llvm.mlir.constant(5 : index) : i64
    %584 = llvm.mlir.constant(5 : index) : i64
    %585 = llvm.mlir.null : !llvm.ptr<i1>
    %586 = llvm.getelementptr %585[%584] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %587 = llvm.ptrtoint %586 : !llvm.ptr<i1> to i64
    %588 = llvm.mlir.constant(16 : index) : i64
    %589 = llvm.add %587, %588  : i64
    %590 = llvm.call @malloc(%589) : (i64) -> !llvm.ptr<i8>
    %591 = llvm.bitcast %590 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %592 = llvm.ptrtoint %591 : !llvm.ptr<i1> to i64
    %593 = llvm.mlir.constant(1 : index) : i64
    %594 = llvm.sub %588, %593  : i64
    %595 = llvm.add %592, %594  : i64
    %596 = llvm.urem %595, %588  : i64
    %597 = llvm.sub %595, %596  : i64
    %598 = llvm.inttoptr %597 : i64 to !llvm.ptr<i1>
    %599 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %600 = llvm.insertvalue %591, %599[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %601 = llvm.insertvalue %598, %600[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %602 = llvm.mlir.constant(0 : index) : i64
    %603 = llvm.insertvalue %602, %601[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %604 = llvm.insertvalue %578, %603[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %605 = llvm.insertvalue %579, %604[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %606 = llvm.insertvalue %580, %605[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %607 = llvm.insertvalue %581, %606[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %608 = llvm.insertvalue %583, %607[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %609 = llvm.insertvalue %580, %608[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %610 = llvm.insertvalue %581, %609[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.insertvalue %582, %610[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.mlir.constant(0 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    %614 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb112(%612 : i64)
  ^bb112(%615: i64):  // 2 preds: ^bb111, ^bb122
    %616 = llvm.icmp "slt" %615, %613 : i64
    llvm.cond_br %616, ^bb113, ^bb123
  ^bb113:  // pred: ^bb112
    %617 = llvm.mlir.constant(0 : index) : i64
    %618 = llvm.mlir.constant(1 : index) : i64
    %619 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb114(%617 : i64)
  ^bb114(%620: i64):  // 2 preds: ^bb113, ^bb121
    %621 = llvm.icmp "slt" %620, %618 : i64
    llvm.cond_br %621, ^bb115, ^bb122
  ^bb115:  // pred: ^bb114
    %622 = llvm.mlir.constant(0 : index) : i64
    %623 = llvm.mlir.constant(5 : index) : i64
    %624 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb116(%622 : i64)
  ^bb116(%625: i64):  // 2 preds: ^bb115, ^bb120
    %626 = llvm.icmp "slt" %625, %623 : i64
    llvm.cond_br %626, ^bb117, ^bb121
  ^bb117:  // pred: ^bb116
    %627 = llvm.mlir.constant(0 : index) : i64
    %628 = llvm.mlir.constant(1 : index) : i64
    %629 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb118(%627 : i64)
  ^bb118(%630: i64):  // 2 preds: ^bb117, ^bb119
    %631 = llvm.icmp "slt" %630, %628 : i64
    llvm.cond_br %631, ^bb119, ^bb120
  ^bb119:  // pred: ^bb118
    %632 = llvm.extractvalue %523[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %633 = llvm.mlir.constant(5 : index) : i64
    %634 = llvm.mul %615, %633  : i64
    %635 = llvm.mlir.constant(5 : index) : i64
    %636 = llvm.mul %620, %635  : i64
    %637 = llvm.add %634, %636  : i64
    %638 = llvm.add %637, %625  : i64
    %639 = llvm.add %638, %630  : i64
    %640 = llvm.getelementptr %632[%639] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %641 = llvm.load %640 : !llvm.ptr<i1>
    %642 = llvm.extractvalue %523[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %643 = llvm.mlir.constant(5 : index) : i64
    %644 = llvm.mul %615, %643  : i64
    %645 = llvm.mlir.constant(5 : index) : i64
    %646 = llvm.mul %620, %645  : i64
    %647 = llvm.add %644, %646  : i64
    %648 = llvm.add %647, %625  : i64
    %649 = llvm.add %648, %630  : i64
    %650 = llvm.getelementptr %642[%649] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %651 = llvm.load %650 : !llvm.ptr<i1>
    %652 = llvm.or %641, %651  : i1
    %653 = llvm.extractvalue %611[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %654 = llvm.mlir.constant(5 : index) : i64
    %655 = llvm.mul %615, %654  : i64
    %656 = llvm.mlir.constant(5 : index) : i64
    %657 = llvm.mul %620, %656  : i64
    %658 = llvm.add %655, %657  : i64
    %659 = llvm.add %658, %625  : i64
    %660 = llvm.add %659, %630  : i64
    %661 = llvm.getelementptr %653[%660] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %652, %661 : !llvm.ptr<i1>
    %662 = llvm.add %630, %629  : i64
    llvm.br ^bb118(%662 : i64)
  ^bb120:  // pred: ^bb118
    %663 = llvm.add %625, %624  : i64
    llvm.br ^bb116(%663 : i64)
  ^bb121:  // pred: ^bb116
    %664 = llvm.add %620, %619  : i64
    llvm.br ^bb114(%664 : i64)
  ^bb122:  // pred: ^bb114
    %665 = llvm.add %615, %614  : i64
    llvm.br ^bb112(%665 : i64)
  ^bb123:  // pred: ^bb112
    llvm.return %611 : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0", "v8_0", "v7_0", "v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v2_0"]} {
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
    %14 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %15 = llvm.extractvalue %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %14[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %14[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %14[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.extractvalue %14[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.extractvalue %14[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %27 = llvm.extractvalue %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.extractvalue %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.extractvalue %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.extractvalue %26[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.extractvalue %26[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.extractvalue %26[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.extractvalue %26[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.extractvalue %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.extractvalue %26[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.extractvalue %26[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %39 = llvm.extractvalue %38[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.extractvalue %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.extractvalue %38[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.extractvalue %38[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.extractvalue %38[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.extractvalue %38[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.extractvalue %38[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.extractvalue %38[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.extractvalue %38[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.extractvalue %38[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.load %arg5 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %51 = llvm.extractvalue %50[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.extractvalue %50[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.extractvalue %50[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.extractvalue %50[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.extractvalue %50[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.extractvalue %50[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.extractvalue %50[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.extractvalue %50[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.extractvalue %50[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.extractvalue %50[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %62, %arg0 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %54 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %56 = llvm.call @omTensorGetDataPtr(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %58 = llvm.insertvalue %57, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %57, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.mlir.constant(0 : i64) : i64
    %65 = llvm.getelementptr %62[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %63[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.getelementptr %62[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %63[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.getelementptr %62[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %63[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(3 : i64) : i64
    %86 = llvm.getelementptr %62[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %87 = llvm.load %86 : !llvm.ptr<i64>
    %88 = llvm.insertvalue %87, %84[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %63[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %90 = llvm.load %89 : !llvm.ptr<i64>
    %91 = llvm.insertvalue %90, %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %91, %54 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %92 = llvm.mlir.constant(2 : i64) : i64
    %93 = llvm.getelementptr %0[%92] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %94 = llvm.load %93 : !llvm.ptr<ptr<i8>>
    %95 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %96 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %97 = llvm.call @omTensorGetDataPtr(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %98 = llvm.bitcast %97 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %99 = llvm.insertvalue %98, %96[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %98, %99[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.mlir.constant(0 : i64) : i64
    %102 = llvm.insertvalue %101, %100[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.call @omTensorGetShape(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %104 = llvm.call @omTensorGetStrides(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %105 = llvm.mlir.constant(0 : i64) : i64
    %106 = llvm.getelementptr %103[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %102[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %104[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(1 : i64) : i64
    %113 = llvm.getelementptr %103[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %114 = llvm.load %113 : !llvm.ptr<i64>
    %115 = llvm.insertvalue %114, %111[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %104[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.insertvalue %117, %115[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(2 : i64) : i64
    %120 = llvm.getelementptr %103[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %121 = llvm.load %120 : !llvm.ptr<i64>
    %122 = llvm.insertvalue %121, %118[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %104[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %124 = llvm.load %123 : !llvm.ptr<i64>
    %125 = llvm.insertvalue %124, %122[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.mlir.constant(3 : i64) : i64
    %127 = llvm.getelementptr %103[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %128 = llvm.load %127 : !llvm.ptr<i64>
    %129 = llvm.insertvalue %128, %125[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %104[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %131 = llvm.load %130 : !llvm.ptr<i64>
    %132 = llvm.insertvalue %131, %129[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %132, %95 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %133 = llvm.mlir.constant(3 : i64) : i64
    %134 = llvm.getelementptr %0[%133] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %135 = llvm.load %134 : !llvm.ptr<ptr<i8>>
    %136 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %137 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %138 = llvm.call @omTensorGetDataPtr(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %139 = llvm.bitcast %138 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %140 = llvm.insertvalue %139, %137[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %139, %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.mlir.constant(0 : i64) : i64
    %143 = llvm.insertvalue %142, %141[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.call @omTensorGetShape(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %145 = llvm.call @omTensorGetStrides(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %146 = llvm.mlir.constant(0 : i64) : i64
    %147 = llvm.getelementptr %144[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %148 = llvm.load %147 : !llvm.ptr<i64>
    %149 = llvm.insertvalue %148, %143[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %145[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %151 = llvm.load %150 : !llvm.ptr<i64>
    %152 = llvm.insertvalue %151, %149[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.mlir.constant(1 : i64) : i64
    %154 = llvm.getelementptr %144[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %155 = llvm.load %154 : !llvm.ptr<i64>
    %156 = llvm.insertvalue %155, %152[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %145[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %158 = llvm.load %157 : !llvm.ptr<i64>
    %159 = llvm.insertvalue %158, %156[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(2 : i64) : i64
    %161 = llvm.getelementptr %144[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %162 = llvm.load %161 : !llvm.ptr<i64>
    %163 = llvm.insertvalue %162, %159[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.getelementptr %145[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %165 = llvm.load %164 : !llvm.ptr<i64>
    %166 = llvm.insertvalue %165, %163[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.mlir.constant(3 : i64) : i64
    %168 = llvm.getelementptr %144[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %169 = llvm.load %168 : !llvm.ptr<i64>
    %170 = llvm.insertvalue %169, %166[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.getelementptr %145[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %172 = llvm.load %171 : !llvm.ptr<i64>
    %173 = llvm.insertvalue %172, %170[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %173, %136 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %174 = llvm.mlir.constant(4 : i64) : i64
    %175 = llvm.getelementptr %0[%174] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %176 = llvm.load %175 : !llvm.ptr<ptr<i8>>
    %177 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %178 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %179 = llvm.call @omTensorGetDataPtr(%176) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %180 = llvm.bitcast %179 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %181 = llvm.insertvalue %180, %178[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.insertvalue %180, %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.mlir.constant(0 : i64) : i64
    %184 = llvm.insertvalue %183, %182[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.call @omTensorGetShape(%176) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %186 = llvm.call @omTensorGetStrides(%176) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %187 = llvm.mlir.constant(0 : i64) : i64
    %188 = llvm.getelementptr %185[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %189 = llvm.load %188 : !llvm.ptr<i64>
    %190 = llvm.insertvalue %189, %184[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.getelementptr %186[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %192 = llvm.load %191 : !llvm.ptr<i64>
    %193 = llvm.insertvalue %192, %190[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.mlir.constant(1 : i64) : i64
    %195 = llvm.getelementptr %185[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %196 = llvm.load %195 : !llvm.ptr<i64>
    %197 = llvm.insertvalue %196, %193[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.getelementptr %186[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %199 = llvm.load %198 : !llvm.ptr<i64>
    %200 = llvm.insertvalue %199, %197[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(2 : i64) : i64
    %202 = llvm.getelementptr %185[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %203 = llvm.load %202 : !llvm.ptr<i64>
    %204 = llvm.insertvalue %203, %200[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.getelementptr %186[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %206 = llvm.load %205 : !llvm.ptr<i64>
    %207 = llvm.insertvalue %206, %204[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.mlir.constant(3 : i64) : i64
    %209 = llvm.getelementptr %185[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %210 = llvm.load %209 : !llvm.ptr<i64>
    %211 = llvm.insertvalue %210, %207[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.getelementptr %186[%208] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %213 = llvm.load %212 : !llvm.ptr<i64>
    %214 = llvm.insertvalue %213, %211[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %214, %177 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %54, %95, %136, %177) : (!llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %215 = llvm.load %2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %216 = llvm.mlir.constant(1 : i64) : i64
    %217 = llvm.mlir.constant(8 : i64) : i64
    %218 = llvm.call @malloc(%217) : (i64) -> !llvm.ptr<i8>
    %219 = llvm.bitcast %218 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %220 = llvm.mlir.constant(4 : i64) : i64
    %221 = llvm.call @omTensorCreateUntyped(%220) : (i64) -> !llvm.ptr<i8>
    %222 = llvm.mlir.constant(1 : i64) : i64
    %223 = llvm.extractvalue %215[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.bitcast %223 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %225 = llvm.extractvalue %215[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.bitcast %225 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%221, %222, %224, %226) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %227 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%221, %227) : (!llvm.ptr<i8>, i64) -> ()
    %228 = llvm.call @omTensorGetShape(%221) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %229 = llvm.call @omTensorGetStrides(%221) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %230 = llvm.mlir.constant(0 : i64) : i64
    %231 = llvm.extractvalue %215[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.getelementptr %228[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %231, %232 : !llvm.ptr<i64>
    %233 = llvm.extractvalue %215[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.getelementptr %229[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %233, %234 : !llvm.ptr<i64>
    %235 = llvm.mlir.constant(1 : i64) : i64
    %236 = llvm.extractvalue %215[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.getelementptr %228[%235] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %236, %237 : !llvm.ptr<i64>
    %238 = llvm.extractvalue %215[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.getelementptr %229[%235] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %238, %239 : !llvm.ptr<i64>
    %240 = llvm.mlir.constant(2 : i64) : i64
    %241 = llvm.extractvalue %215[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.getelementptr %228[%240] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %241, %242 : !llvm.ptr<i64>
    %243 = llvm.extractvalue %215[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.getelementptr %229[%240] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %243, %244 : !llvm.ptr<i64>
    %245 = llvm.mlir.constant(3 : i64) : i64
    %246 = llvm.extractvalue %215[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.getelementptr %228[%245] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %246, %247 : !llvm.ptr<i64>
    %248 = llvm.extractvalue %215[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.getelementptr %229[%245] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %248, %249 : !llvm.ptr<i64>
    %250 = llvm.mlir.constant(0 : i64) : i64
    %251 = llvm.getelementptr %219[%250] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %221, %251 : !llvm.ptr<ptr<i8>>
    %252 = llvm.call @omTensorListCreate(%219, %216, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %252 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<356 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<356 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<70 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<70 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

