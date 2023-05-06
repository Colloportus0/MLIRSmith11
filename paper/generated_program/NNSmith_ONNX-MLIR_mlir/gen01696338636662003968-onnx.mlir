module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 5 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v11_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 5 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<7> : tensor<1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x i32>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<i32>, %arg8: !llvm.ptr<i32>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr<i32>, %arg15: !llvm.ptr<i32>, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: !llvm.ptr<i32>, %arg22: !llvm.ptr<i32>, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: !llvm.ptr<i32>, %arg29: !llvm.ptr<i32>, %arg30: i64, %arg31: !llvm.ptr<i32>, %arg32: !llvm.ptr<i32>, %arg33: i64, %arg34: i64, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v9_0", "v8_0", "v7_0", "v2_0", "v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v0_0", "v11_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg14, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg16, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg19, %20[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg20, %22[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %25 = llvm.insertvalue %arg21, %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.insertvalue %arg22, %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.insertvalue %arg23, %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.insertvalue %arg24, %27[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.insertvalue %arg26, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %arg25, %29[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.insertvalue %arg27, %30[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %33 = llvm.insertvalue %arg28, %32[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %34 = llvm.insertvalue %arg29, %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %35 = llvm.insertvalue %arg30, %34[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %37 = llvm.insertvalue %arg31, %36[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %arg32, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %arg33, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %arg34, %39[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %arg38, %40[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %arg35, %41[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %arg39, %42[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %arg36, %43[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %arg40, %44[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %arg37, %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %arg41, %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(-2147483648 : i32) : i32
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(0 : i32) : i32
    %51 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x i32>>>
    %52 = llvm.bitcast %51 : !llvm.ptr<array<1 x array<1 x i32>>> to !llvm.ptr<i32>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.null : !llvm.ptr<i32>
    %70 = llvm.getelementptr %69[%66] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %83 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %84 = llvm.insertvalue %75, %83[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.insertvalue %82, %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.insertvalue %86, %85[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %88 = llvm.insertvalue %66, %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.insertvalue %67, %88[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.insertvalue %67, %89[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %91 = llvm.insertvalue %68, %90[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.null : !llvm.ptr<i32>
    %94 = llvm.getelementptr %93[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %95 = llvm.ptrtoint %94 : !llvm.ptr<i32> to i64
    %96 = llvm.alloca %95 x i32 : (i64) -> !llvm.ptr<i32>
    %97 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %98 = llvm.insertvalue %96, %97[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %99 = llvm.insertvalue %96, %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.insertvalue %100, %99[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%102 : i64)
  ^bb1(%105: i64):  // 2 preds: ^bb0, ^bb8
    %106 = llvm.icmp "slt" %105, %103 : i64
    llvm.cond_br %106, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%107 : i64)
  ^bb3(%110: i64):  // 2 preds: ^bb2, ^bb7
    %111 = llvm.icmp "slt" %110, %108 : i64
    llvm.cond_br %111, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %112 = llvm.extractvalue %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %50, %112 : !llvm.ptr<i32>
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%113 : i64)
  ^bb5(%116: i64):  // 2 preds: ^bb4, ^bb6
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %118 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %119 = llvm.add %105, %116  : i64
    %120 = llvm.getelementptr %118[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %121 = llvm.load %120 : !llvm.ptr<i32>
    %122 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.add %116, %110  : i64
    %124 = llvm.getelementptr %122[%123] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %125 = llvm.load %124 : !llvm.ptr<i32>
    %126 = llvm.extractvalue %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %127 = llvm.load %126 : !llvm.ptr<i32>
    %128 = llvm.mul %121, %125  : i32
    %129 = llvm.add %127, %128  : i32
    %130 = llvm.extractvalue %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %129, %130 : !llvm.ptr<i32>
    %131 = llvm.add %116, %115  : i64
    llvm.br ^bb5(%131 : i64)
  ^bb7:  // pred: ^bb5
    %132 = llvm.extractvalue %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %133 = llvm.load %132 : !llvm.ptr<i32>
    %134 = llvm.extractvalue %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %135 = llvm.add %105, %110  : i64
    %136 = llvm.getelementptr %134[%135] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %133, %136 : !llvm.ptr<i32>
    %137 = llvm.add %110, %109  : i64
    llvm.br ^bb3(%137 : i64)
  ^bb8:  // pred: ^bb3
    %138 = llvm.add %105, %104  : i64
    llvm.br ^bb1(%138 : i64)
  ^bb9:  // pred: ^bb1
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.null : !llvm.ptr<i32>
    %142 = llvm.getelementptr %141[%139] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %143 = llvm.ptrtoint %142 : !llvm.ptr<i32> to i64
    %144 = llvm.mlir.constant(16 : index) : i64
    %145 = llvm.add %143, %144  : i64
    %146 = llvm.call @malloc(%145) : (i64) -> !llvm.ptr<i8>
    %147 = llvm.bitcast %146 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %148 = llvm.ptrtoint %147 : !llvm.ptr<i32> to i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.sub %144, %149  : i64
    %151 = llvm.add %148, %150  : i64
    %152 = llvm.urem %151, %144  : i64
    %153 = llvm.sub %151, %152  : i64
    %154 = llvm.inttoptr %153 : i64 to !llvm.ptr<i32>
    %155 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %156 = llvm.insertvalue %147, %155[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %157 = llvm.insertvalue %154, %156[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.insertvalue %158, %157[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.insertvalue %139, %159[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.insertvalue %140, %160[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%162 : i64)
  ^bb10(%165: i64):  // 2 preds: ^bb9, ^bb11
    %166 = llvm.icmp "slt" %165, %163 : i64
    llvm.cond_br %166, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %167 = llvm.extractvalue %161[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %168 = llvm.getelementptr %167[%165] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %48, %168 : !llvm.ptr<i32>
    %169 = llvm.add %165, %164  : i64
    llvm.br ^bb10(%169 : i64)
  ^bb12:  // pred: ^bb10
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%170 : i64)
  ^bb13(%173: i64):  // 2 preds: ^bb12, ^bb17
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%175 : i64)
  ^bb15(%178: i64):  // 2 preds: ^bb14, ^bb16
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %180 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %181 = llvm.add %173, %178  : i64
    %182 = llvm.getelementptr %180[%181] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %183 = llvm.load %182 : !llvm.ptr<i32>
    %184 = llvm.extractvalue %161[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.getelementptr %184[%178] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %186 = llvm.load %185 : !llvm.ptr<i32>
    %187 = llvm.icmp "sgt" %186, %183 : i32
    %188 = llvm.select %187, %186, %183 : i1, i32
    %189 = llvm.extractvalue %161[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.getelementptr %189[%178] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %188, %190 : !llvm.ptr<i32>
    %191 = llvm.add %178, %177  : i64
    llvm.br ^bb15(%191 : i64)
  ^bb17:  // pred: ^bb15
    %192 = llvm.add %173, %172  : i64
    llvm.br ^bb13(%192 : i64)
  ^bb18:  // pred: ^bb13
    %193 = llvm.mlir.constant(5 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.null : !llvm.ptr<i32>
    %197 = llvm.getelementptr %196[%193] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %198 = llvm.ptrtoint %197 : !llvm.ptr<i32> to i64
    %199 = llvm.mlir.constant(16 : index) : i64
    %200 = llvm.add %198, %199  : i64
    %201 = llvm.call @malloc(%200) : (i64) -> !llvm.ptr<i8>
    %202 = llvm.bitcast %201 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %203 = llvm.ptrtoint %202 : !llvm.ptr<i32> to i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.sub %199, %204  : i64
    %206 = llvm.add %203, %205  : i64
    %207 = llvm.urem %206, %199  : i64
    %208 = llvm.sub %206, %207  : i64
    %209 = llvm.inttoptr %208 : i64 to !llvm.ptr<i32>
    %210 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %211 = llvm.insertvalue %202, %210[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %212 = llvm.insertvalue %209, %211[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.insertvalue %213, %212[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %215 = llvm.insertvalue %193, %214[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %216 = llvm.insertvalue %194, %215[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %217 = llvm.insertvalue %194, %216[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %218 = llvm.insertvalue %195, %217[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%219 : i64)
  ^bb19(%222: i64):  // 2 preds: ^bb18, ^bb23
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%224 : i64)
  ^bb21(%227: i64):  // 2 preds: ^bb20, ^bb22
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %229 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %230 = llvm.add %222, %227  : i64
    %231 = llvm.getelementptr %229[%230] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %232 = llvm.load %231 : !llvm.ptr<i32>
    %233 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %234 = llvm.add %222, %227  : i64
    %235 = llvm.getelementptr %233[%234] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %232, %235 : !llvm.ptr<i32>
    %236 = llvm.add %227, %226  : i64
    llvm.br ^bb21(%236 : i64)
  ^bb23:  // pred: ^bb21
    %237 = llvm.add %222, %221  : i64
    llvm.br ^bb19(%237 : i64)
  ^bb24:  // pred: ^bb19
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%238 : i64)
  ^bb25(%241: i64):  // 2 preds: ^bb24, ^bb29
    %242 = llvm.icmp "slt" %241, %239 : i64
    llvm.cond_br %242, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%243 : i64)
  ^bb27(%246: i64):  // 2 preds: ^bb26, ^bb28
    %247 = llvm.icmp "slt" %246, %244 : i64
    llvm.cond_br %247, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.add %241, %248  : i64
    %250 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %251 = llvm.add %241, %246  : i64
    %252 = llvm.getelementptr %250[%251] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %253 = llvm.load %252 : !llvm.ptr<i32>
    %254 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %255 = llvm.add %249, %246  : i64
    %256 = llvm.getelementptr %254[%255] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %253, %256 : !llvm.ptr<i32>
    %257 = llvm.add %246, %245  : i64
    llvm.br ^bb27(%257 : i64)
  ^bb29:  // pred: ^bb27
    %258 = llvm.add %241, %240  : i64
    llvm.br ^bb25(%258 : i64)
  ^bb30:  // pred: ^bb25
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%259 : i64)
  ^bb31(%262: i64):  // 2 preds: ^bb30, ^bb35
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb32, ^bb36
  ^bb32:  // pred: ^bb31
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%264 : i64)
  ^bb33(%267: i64):  // 2 preds: ^bb32, ^bb34
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    %269 = llvm.mlir.constant(2 : index) : i64
    %270 = llvm.add %262, %269  : i64
    %271 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %272 = llvm.add %262, %267  : i64
    %273 = llvm.getelementptr %271[%272] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %274 = llvm.load %273 : !llvm.ptr<i32>
    %275 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %276 = llvm.add %270, %267  : i64
    %277 = llvm.getelementptr %275[%276] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %274, %277 : !llvm.ptr<i32>
    %278 = llvm.add %267, %266  : i64
    llvm.br ^bb33(%278 : i64)
  ^bb35:  // pred: ^bb33
    %279 = llvm.add %262, %261  : i64
    llvm.br ^bb31(%279 : i64)
  ^bb36:  // pred: ^bb31
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%280 : i64)
  ^bb37(%283: i64):  // 2 preds: ^bb36, ^bb41
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%285 : i64)
  ^bb39(%288: i64):  // 2 preds: ^bb38, ^bb40
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %290 = llvm.mlir.constant(3 : index) : i64
    %291 = llvm.add %283, %290  : i64
    %292 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %293 = llvm.add %283, %288  : i64
    %294 = llvm.getelementptr %292[%293] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %295 = llvm.load %294 : !llvm.ptr<i32>
    %296 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %297 = llvm.add %291, %288  : i64
    %298 = llvm.getelementptr %296[%297] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %295, %298 : !llvm.ptr<i32>
    %299 = llvm.add %288, %287  : i64
    llvm.br ^bb39(%299 : i64)
  ^bb41:  // pred: ^bb39
    %300 = llvm.add %283, %282  : i64
    llvm.br ^bb37(%300 : i64)
  ^bb42:  // pred: ^bb37
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%301 : i64)
  ^bb43(%304: i64):  // 2 preds: ^bb42, ^bb47
    %305 = llvm.icmp "slt" %304, %302 : i64
    llvm.cond_br %305, ^bb44, ^bb48
  ^bb44:  // pred: ^bb43
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%306 : i64)
  ^bb45(%309: i64):  // 2 preds: ^bb44, ^bb46
    %310 = llvm.icmp "slt" %309, %307 : i64
    llvm.cond_br %310, ^bb46, ^bb47
  ^bb46:  // pred: ^bb45
    %311 = llvm.mlir.constant(4 : index) : i64
    %312 = llvm.add %304, %311  : i64
    %313 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %314 = llvm.add %304, %309  : i64
    %315 = llvm.getelementptr %313[%314] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %316 = llvm.load %315 : !llvm.ptr<i32>
    %317 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %318 = llvm.add %312, %309  : i64
    %319 = llvm.getelementptr %317[%318] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %316, %319 : !llvm.ptr<i32>
    %320 = llvm.add %309, %308  : i64
    llvm.br ^bb45(%320 : i64)
  ^bb47:  // pred: ^bb45
    %321 = llvm.add %304, %303  : i64
    llvm.br ^bb43(%321 : i64)
  ^bb48:  // pred: ^bb43
    %322 = llvm.mlir.constant(5 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.null : !llvm.ptr<i32>
    %326 = llvm.getelementptr %325[%322] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<i32> to i64
    %328 = llvm.mlir.constant(16 : index) : i64
    %329 = llvm.add %327, %328  : i64
    %330 = llvm.call @malloc(%329) : (i64) -> !llvm.ptr<i8>
    %331 = llvm.bitcast %330 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %332 = llvm.ptrtoint %331 : !llvm.ptr<i32> to i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.sub %328, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.urem %335, %328  : i64
    %337 = llvm.sub %335, %336  : i64
    %338 = llvm.inttoptr %337 : i64 to !llvm.ptr<i32>
    %339 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %340 = llvm.insertvalue %331, %339[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %341 = llvm.insertvalue %338, %340[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.insertvalue %342, %341[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %344 = llvm.insertvalue %322, %343[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %345 = llvm.insertvalue %323, %344[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %346 = llvm.insertvalue %323, %345[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %347 = llvm.insertvalue %324, %346[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.mlir.constant(5 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%348 : i64)
  ^bb49(%351: i64):  // 2 preds: ^bb48, ^bb53
    %352 = llvm.icmp "slt" %351, %349 : i64
    llvm.cond_br %352, ^bb50, ^bb54
  ^bb50:  // pred: ^bb49
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%353 : i64)
  ^bb51(%356: i64):  // 2 preds: ^bb50, ^bb52
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb52, ^bb53
  ^bb52:  // pred: ^bb51
    %358 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %359 = llvm.add %351, %356  : i64
    %360 = llvm.getelementptr %358[%359] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %361 = llvm.load %360 : !llvm.ptr<i32>
    %362 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %363 = llvm.load %362 : !llvm.ptr<i32>
    %364 = llvm.add %361, %363  : i32
    %365 = llvm.extractvalue %347[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %366 = llvm.add %351, %356  : i64
    %367 = llvm.getelementptr %365[%366] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %364, %367 : !llvm.ptr<i32>
    %368 = llvm.add %356, %355  : i64
    llvm.br ^bb51(%368 : i64)
  ^bb53:  // pred: ^bb51
    %369 = llvm.add %351, %350  : i64
    llvm.br ^bb49(%369 : i64)
  ^bb54:  // pred: ^bb49
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.constant(5 : index) : i64
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.constant(10 : index) : i64
    %376 = llvm.mlir.constant(10 : index) : i64
    %377 = llvm.mlir.constant(10 : index) : i64
    %378 = llvm.mlir.null : !llvm.ptr<i32>
    %379 = llvm.getelementptr %378[%377] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %380 = llvm.ptrtoint %379 : !llvm.ptr<i32> to i64
    %381 = llvm.mlir.constant(16 : index) : i64
    %382 = llvm.add %380, %381  : i64
    %383 = llvm.call @malloc(%382) : (i64) -> !llvm.ptr<i8>
    %384 = llvm.bitcast %383 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %385 = llvm.ptrtoint %384 : !llvm.ptr<i32> to i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.sub %381, %386  : i64
    %388 = llvm.add %385, %387  : i64
    %389 = llvm.urem %388, %381  : i64
    %390 = llvm.sub %388, %389  : i64
    %391 = llvm.inttoptr %390 : i64 to !llvm.ptr<i32>
    %392 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %393 = llvm.insertvalue %384, %392[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %391, %393[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.insertvalue %395, %394[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %370, %396[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %371, %397[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %372, %398[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.insertvalue %373, %399[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %376, %400[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %375, %401[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.insertvalue %373, %402[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %374, %403[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%405 : i64)
  ^bb55(%408: i64):  // 2 preds: ^bb54, ^bb65
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%410 : i64)
  ^bb57(%413: i64):  // 2 preds: ^bb56, ^bb64
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(5 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%415 : i64)
  ^bb59(%418: i64):  // 2 preds: ^bb58, ^bb63
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.mlir.constant(2 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%420 : i64)
  ^bb61(%423: i64):  // 2 preds: ^bb60, ^bb62
    %424 = llvm.icmp "slt" %423, %421 : i64
    llvm.cond_br %424, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %425 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.mlir.constant(10 : index) : i64
    %427 = llvm.mul %408, %426  : i64
    %428 = llvm.mlir.constant(10 : index) : i64
    %429 = llvm.mul %413, %428  : i64
    %430 = llvm.add %427, %429  : i64
    %431 = llvm.mlir.constant(2 : index) : i64
    %432 = llvm.mul %418, %431  : i64
    %433 = llvm.add %430, %432  : i64
    %434 = llvm.add %433, %423  : i64
    %435 = llvm.getelementptr %425[%434] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %436 = llvm.load %435 : !llvm.ptr<i32>
    %437 = llvm.extractvalue %347[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %438 = llvm.add %418, %49  : i64
    %439 = llvm.getelementptr %437[%438] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %440 = llvm.load %439 : !llvm.ptr<i32>
    %441 = llvm.icmp "slt" %436, %440 : i32
    %442 = llvm.select %441, %436, %440 : i1, i32
    %443 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.mlir.constant(10 : index) : i64
    %445 = llvm.mul %408, %444  : i64
    %446 = llvm.mlir.constant(10 : index) : i64
    %447 = llvm.mul %413, %446  : i64
    %448 = llvm.add %445, %447  : i64
    %449 = llvm.mlir.constant(2 : index) : i64
    %450 = llvm.mul %418, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.add %451, %423  : i64
    %453 = llvm.getelementptr %443[%452] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %442, %453 : !llvm.ptr<i32>
    %454 = llvm.add %423, %422  : i64
    llvm.br ^bb61(%454 : i64)
  ^bb63:  // pred: ^bb61
    %455 = llvm.add %418, %417  : i64
    llvm.br ^bb59(%455 : i64)
  ^bb64:  // pred: ^bb59
    %456 = llvm.add %413, %412  : i64
    llvm.br ^bb57(%456 : i64)
  ^bb65:  // pred: ^bb57
    %457 = llvm.add %408, %407  : i64
    llvm.br ^bb55(%457 : i64)
  ^bb66:  // pred: ^bb55
    %458 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %459 = llvm.insertvalue %91, %458[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %460 = llvm.insertvalue %161, %459[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %461 = llvm.insertvalue %404, %460[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %461 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, %arg6: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v9_0", "v8_0", "v7_0", "v2_0", "v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v0_0", "v11_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %17 = llvm.extractvalue %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.extractvalue %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.extractvalue %16[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.extractvalue %16[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.extractvalue %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.extractvalue %16[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %25 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.extractvalue %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.load %arg5 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %33 = llvm.extractvalue %32[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %34 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %35 = llvm.extractvalue %32[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %36 = llvm.load %arg6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %37 = llvm.extractvalue %36[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.extractvalue %36[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.extractvalue %36[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.extractvalue %36[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.extractvalue %36[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.extractvalue %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.extractvalue %36[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.extractvalue %36[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.extractvalue %36[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.extractvalue %36[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %48, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %29, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.getelementptr %0[%30] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %32 = llvm.load %31 : !llvm.ptr<ptr<i8>>
    %33 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %35 = llvm.call @omTensorGetDataPtr(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %37 = llvm.insertvalue %36, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %36, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.mlir.constant(0 : i64) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %42 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %43 = llvm.mlir.constant(0 : i64) : i64
    %44 = llvm.getelementptr %41[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %40[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.getelementptr %42[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.mlir.constant(1 : i64) : i64
    %51 = llvm.getelementptr %41[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.getelementptr %42[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %56, %33 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.getelementptr %0[%57] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %59 = llvm.load %58 : !llvm.ptr<ptr<i8>>
    %60 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %61 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %62 = llvm.call @omTensorGetDataPtr(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %63 = llvm.bitcast %62 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %64 = llvm.insertvalue %63, %61[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.insertvalue %63, %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.mlir.constant(0 : i64) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.call @omTensorGetShape(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %69 = llvm.call @omTensorGetStrides(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %70 = llvm.mlir.constant(0 : i64) : i64
    %71 = llvm.getelementptr %68[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %72 = llvm.load %71 : !llvm.ptr<i64>
    %73 = llvm.insertvalue %72, %67[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.getelementptr %69[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %75 = llvm.load %74 : !llvm.ptr<i64>
    %76 = llvm.insertvalue %75, %73[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.mlir.constant(1 : i64) : i64
    %78 = llvm.getelementptr %68[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %79 = llvm.load %78 : !llvm.ptr<i64>
    %80 = llvm.insertvalue %79, %76[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %81 = llvm.getelementptr %69[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %82 = llvm.load %81 : !llvm.ptr<i64>
    %83 = llvm.insertvalue %82, %80[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %83, %60 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %84 = llvm.mlir.constant(3 : i64) : i64
    %85 = llvm.getelementptr %0[%84] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %86 = llvm.load %85 : !llvm.ptr<ptr<i8>>
    %87 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %88 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %89 = llvm.call @omTensorGetDataPtr(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %90 = llvm.bitcast %89 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %91 = llvm.insertvalue %90, %88[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %92 = llvm.insertvalue %90, %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.insertvalue %93, %92[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %95 = llvm.call @omTensorGetShape(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %96 = llvm.call @omTensorGetStrides(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.mlir.constant(0 : i64) : i64
    %98 = llvm.getelementptr %95[%97] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %99 = llvm.load %98 : !llvm.ptr<i64>
    %100 = llvm.insertvalue %99, %94[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.getelementptr %96[%97] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %102 = llvm.load %101 : !llvm.ptr<i64>
    %103 = llvm.insertvalue %102, %100[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.mlir.constant(1 : i64) : i64
    %105 = llvm.getelementptr %95[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %106 = llvm.load %105 : !llvm.ptr<i64>
    %107 = llvm.insertvalue %106, %103[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.getelementptr %96[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %109 = llvm.load %108 : !llvm.ptr<i64>
    %110 = llvm.insertvalue %109, %107[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %110, %87 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %111 = llvm.mlir.constant(4 : i64) : i64
    %112 = llvm.getelementptr %0[%111] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %113 = llvm.load %112 : !llvm.ptr<ptr<i8>>
    %114 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %115 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %116 = llvm.call @omTensorGetDataPtr(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %117 = llvm.bitcast %116 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %118 = llvm.insertvalue %117, %115[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %119 = llvm.insertvalue %117, %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %120 = llvm.mlir.constant(0 : i64) : i64
    %121 = llvm.insertvalue %120, %119[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %122 = llvm.call @omTensorGetShape(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %123 = llvm.call @omTensorGetStrides(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %121, %114 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %124 = llvm.mlir.constant(5 : i64) : i64
    %125 = llvm.getelementptr %0[%124] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %126 = llvm.load %125 : !llvm.ptr<ptr<i8>>
    %127 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %128 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %129 = llvm.call @omTensorGetDataPtr(%126) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %130 = llvm.bitcast %129 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %131 = llvm.insertvalue %130, %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %130, %131[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.mlir.constant(0 : i64) : i64
    %134 = llvm.insertvalue %133, %132[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.call @omTensorGetShape(%126) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %136 = llvm.call @omTensorGetStrides(%126) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %137 = llvm.mlir.constant(0 : i64) : i64
    %138 = llvm.getelementptr %135[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %139 = llvm.load %138 : !llvm.ptr<i64>
    %140 = llvm.insertvalue %139, %134[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %136[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %142 = llvm.load %141 : !llvm.ptr<i64>
    %143 = llvm.insertvalue %142, %140[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.mlir.constant(1 : i64) : i64
    %145 = llvm.getelementptr %135[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %146 = llvm.load %145 : !llvm.ptr<i64>
    %147 = llvm.insertvalue %146, %143[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %136[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %149 = llvm.load %148 : !llvm.ptr<i64>
    %150 = llvm.insertvalue %149, %147[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.mlir.constant(2 : i64) : i64
    %152 = llvm.getelementptr %135[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %153 = llvm.load %152 : !llvm.ptr<i64>
    %154 = llvm.insertvalue %153, %150[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.getelementptr %136[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %156 = llvm.load %155 : !llvm.ptr<i64>
    %157 = llvm.insertvalue %156, %154[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.mlir.constant(3 : i64) : i64
    %159 = llvm.getelementptr %135[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %160 = llvm.load %159 : !llvm.ptr<i64>
    %161 = llvm.insertvalue %160, %157[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.getelementptr %136[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %163 = llvm.load %162 : !llvm.ptr<i64>
    %164 = llvm.insertvalue %163, %161[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %164, %127 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %33, %60, %87, %114, %127) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %165 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %166 = llvm.extractvalue %165[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %167 = llvm.extractvalue %165[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %168 = llvm.extractvalue %165[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %169 = llvm.mlir.constant(3 : i64) : i64
    %170 = llvm.mlir.constant(24 : i64) : i64
    %171 = llvm.call @malloc(%170) : (i64) -> !llvm.ptr<i8>
    %172 = llvm.bitcast %171 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %173 = llvm.mlir.constant(2 : i64) : i64
    %174 = llvm.call @omTensorCreateUntyped(%173) : (i64) -> !llvm.ptr<i8>
    %175 = llvm.mlir.constant(1 : i64) : i64
    %176 = llvm.extractvalue %166[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %177 = llvm.bitcast %176 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %178 = llvm.extractvalue %166[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %179 = llvm.bitcast %178 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%174, %175, %177, %179) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %180 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%174, %180) : (!llvm.ptr<i8>, i64) -> ()
    %181 = llvm.call @omTensorGetShape(%174) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %182 = llvm.call @omTensorGetStrides(%174) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %183 = llvm.mlir.constant(0 : i64) : i64
    %184 = llvm.extractvalue %166[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %185 = llvm.getelementptr %181[%183] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %184, %185 : !llvm.ptr<i64>
    %186 = llvm.extractvalue %166[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %187 = llvm.getelementptr %182[%183] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %186, %187 : !llvm.ptr<i64>
    %188 = llvm.mlir.constant(1 : i64) : i64
    %189 = llvm.extractvalue %166[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %190 = llvm.getelementptr %181[%188] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %189, %190 : !llvm.ptr<i64>
    %191 = llvm.extractvalue %166[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %192 = llvm.getelementptr %182[%188] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %191, %192 : !llvm.ptr<i64>
    %193 = llvm.mlir.constant(0 : i64) : i64
    %194 = llvm.getelementptr %172[%193] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %174, %194 : !llvm.ptr<ptr<i8>>
    %195 = llvm.mlir.constant(1 : i64) : i64
    %196 = llvm.call @omTensorCreateUntyped(%195) : (i64) -> !llvm.ptr<i8>
    %197 = llvm.mlir.constant(1 : i64) : i64
    %198 = llvm.extractvalue %167[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.bitcast %198 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %200 = llvm.extractvalue %167[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.bitcast %200 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%196, %197, %199, %201) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %202 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%196, %202) : (!llvm.ptr<i8>, i64) -> ()
    %203 = llvm.call @omTensorGetShape(%196) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %204 = llvm.call @omTensorGetStrides(%196) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %205 = llvm.mlir.constant(0 : i64) : i64
    %206 = llvm.extractvalue %167[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.getelementptr %203[%205] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %206, %207 : !llvm.ptr<i64>
    %208 = llvm.extractvalue %167[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %209 = llvm.getelementptr %204[%205] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %208, %209 : !llvm.ptr<i64>
    %210 = llvm.mlir.constant(1 : i64) : i64
    %211 = llvm.getelementptr %172[%210] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %196, %211 : !llvm.ptr<ptr<i8>>
    %212 = llvm.mlir.constant(4 : i64) : i64
    %213 = llvm.call @omTensorCreateUntyped(%212) : (i64) -> !llvm.ptr<i8>
    %214 = llvm.mlir.constant(1 : i64) : i64
    %215 = llvm.extractvalue %168[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.bitcast %215 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %217 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.bitcast %217 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%213, %214, %216, %218) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %219 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%213, %219) : (!llvm.ptr<i8>, i64) -> ()
    %220 = llvm.call @omTensorGetShape(%213) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %221 = llvm.call @omTensorGetStrides(%213) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %222 = llvm.mlir.constant(0 : i64) : i64
    %223 = llvm.extractvalue %168[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.getelementptr %220[%222] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %223, %224 : !llvm.ptr<i64>
    %225 = llvm.extractvalue %168[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.getelementptr %221[%222] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %225, %226 : !llvm.ptr<i64>
    %227 = llvm.mlir.constant(1 : i64) : i64
    %228 = llvm.extractvalue %168[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.getelementptr %220[%227] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %228, %229 : !llvm.ptr<i64>
    %230 = llvm.extractvalue %168[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.getelementptr %221[%227] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %230, %231 : !llvm.ptr<i64>
    %232 = llvm.mlir.constant(2 : i64) : i64
    %233 = llvm.extractvalue %168[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.getelementptr %220[%232] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %233, %234 : !llvm.ptr<i64>
    %235 = llvm.extractvalue %168[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.getelementptr %221[%232] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %235, %236 : !llvm.ptr<i64>
    %237 = llvm.mlir.constant(3 : i64) : i64
    %238 = llvm.extractvalue %168[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.getelementptr %220[%237] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %238, %239 : !llvm.ptr<i64>
    %240 = llvm.extractvalue %168[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.getelementptr %221[%237] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %240, %241 : !llvm.ptr<i64>
    %242 = llvm.mlir.constant(2 : i64) : i64
    %243 = llvm.getelementptr %172[%242] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %213, %243 : !llvm.ptr<ptr<i8>>
    %244 = llvm.call @omTensorListCreate(%172, %169, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %244 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<377 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<377 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<192 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<192 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

