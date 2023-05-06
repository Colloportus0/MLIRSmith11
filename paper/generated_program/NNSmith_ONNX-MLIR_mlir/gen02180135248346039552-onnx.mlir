module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [5] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [4 , 5 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_1(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64, %arg44: !llvm.ptr<i32>, %arg45: !llvm.ptr<i32>, %arg46: i64, %arg47: i64, %arg48: i64, %arg49: i64, %arg50: i64, %arg51: i64, %arg52: i64, %arg53: i64, %arg54: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v9_0", "v8_0", "v7_0", "v6_0", "v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
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
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %37 = llvm.insertvalue %arg33, %36[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %arg34, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %arg35, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %arg36, %39[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %arg40, %40[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %arg37, %41[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %arg41, %42[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %arg38, %43[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %arg42, %44[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %arg39, %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %arg43, %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.insertvalue %arg44, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %arg45, %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %arg46, %50[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %arg47, %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %arg51, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %arg48, %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %arg52, %54[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %arg49, %55[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %arg53, %56[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %arg50, %57[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %arg54, %58[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %62 = llvm.bitcast %61 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %64 = llvm.insertvalue %62, %63[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %68 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i32>>
    %69 = llvm.bitcast %68 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %70 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %71 = llvm.insertvalue %69, %70[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(5 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(5 : index) : i64
    %81 = llvm.mlir.null : !llvm.ptr<i32>
    %82 = llvm.getelementptr %81[%80] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %83 = llvm.ptrtoint %82 : !llvm.ptr<i32> to i64
    %84 = llvm.mlir.constant(16 : index) : i64
    %85 = llvm.add %83, %84  : i64
    %86 = llvm.call @malloc(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.bitcast %86 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %88 = llvm.ptrtoint %87 : !llvm.ptr<i32> to i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.sub %84, %89  : i64
    %91 = llvm.add %88, %90  : i64
    %92 = llvm.urem %91, %84  : i64
    %93 = llvm.sub %91, %92  : i64
    %94 = llvm.inttoptr %93 : i64 to !llvm.ptr<i32>
    %95 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %96 = llvm.insertvalue %87, %95[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %94, %96[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.insertvalue %98, %97[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %75, %99[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %76, %100[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %77, %101[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %78, %102[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %76, %103[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %77, %104[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %78, %105[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %79, %106[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%108 : i64)
  ^bb1(%111: i64):  // 2 preds: ^bb0, ^bb11
    %112 = llvm.icmp "slt" %111, %109 : i64
    llvm.cond_br %112, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%113 : i64)
  ^bb3(%116: i64):  // 2 preds: ^bb2, ^bb10
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%118 : i64)
  ^bb5(%121: i64):  // 2 preds: ^bb4, ^bb9
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%123 : i64)
  ^bb7(%126: i64):  // 2 preds: ^bb6, ^bb8
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %128 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.add %111, %116  : i64
    %130 = llvm.add %129, %121  : i64
    %131 = llvm.add %130, %126  : i64
    %132 = llvm.getelementptr %128[%131] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %133 = llvm.load %132 : !llvm.ptr<i32>
    %134 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.mlir.constant(5 : index) : i64
    %136 = llvm.mul %111, %135  : i64
    %137 = llvm.add %136, %116  : i64
    %138 = llvm.add %137, %121  : i64
    %139 = llvm.add %138, %126  : i64
    %140 = llvm.getelementptr %134[%139] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %133, %140 : !llvm.ptr<i32>
    %141 = llvm.add %126, %125  : i64
    llvm.br ^bb7(%141 : i64)
  ^bb9:  // pred: ^bb7
    %142 = llvm.add %121, %120  : i64
    llvm.br ^bb5(%142 : i64)
  ^bb10:  // pred: ^bb5
    %143 = llvm.add %116, %115  : i64
    llvm.br ^bb3(%143 : i64)
  ^bb11:  // pred: ^bb3
    %144 = llvm.add %111, %110  : i64
    llvm.br ^bb1(%144 : i64)
  ^bb12:  // pred: ^bb1
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%145 : i64)
  ^bb13(%148: i64):  // 2 preds: ^bb12, ^bb23
    %149 = llvm.icmp "slt" %148, %146 : i64
    llvm.cond_br %149, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%150 : i64)
  ^bb15(%153: i64):  // 2 preds: ^bb14, ^bb22
    %154 = llvm.icmp "slt" %153, %151 : i64
    llvm.cond_br %154, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%155 : i64)
  ^bb17(%158: i64):  // 2 preds: ^bb16, ^bb21
    %159 = llvm.icmp "slt" %158, %156 : i64
    llvm.cond_br %159, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%160 : i64)
  ^bb19(%163: i64):  // 2 preds: ^bb18, ^bb20
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.add %153, %165  : i64
    %167 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.add %148, %153  : i64
    %169 = llvm.add %168, %158  : i64
    %170 = llvm.add %169, %163  : i64
    %171 = llvm.getelementptr %167[%170] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %172 = llvm.load %171 : !llvm.ptr<i32>
    %173 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.mlir.constant(5 : index) : i64
    %175 = llvm.mul %148, %174  : i64
    %176 = llvm.add %175, %166  : i64
    %177 = llvm.add %176, %158  : i64
    %178 = llvm.add %177, %163  : i64
    %179 = llvm.getelementptr %173[%178] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %172, %179 : !llvm.ptr<i32>
    %180 = llvm.add %163, %162  : i64
    llvm.br ^bb19(%180 : i64)
  ^bb21:  // pred: ^bb19
    %181 = llvm.add %158, %157  : i64
    llvm.br ^bb17(%181 : i64)
  ^bb22:  // pred: ^bb17
    %182 = llvm.add %153, %152  : i64
    llvm.br ^bb15(%182 : i64)
  ^bb23:  // pred: ^bb15
    %183 = llvm.add %148, %147  : i64
    llvm.br ^bb13(%183 : i64)
  ^bb24:  // pred: ^bb13
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%184 : i64)
  ^bb25(%187: i64):  // 2 preds: ^bb24, ^bb35
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %189 = llvm.mlir.constant(0 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%189 : i64)
  ^bb27(%192: i64):  // 2 preds: ^bb26, ^bb34
    %193 = llvm.icmp "slt" %192, %190 : i64
    llvm.cond_br %193, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %194 = llvm.mlir.constant(0 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%194 : i64)
  ^bb29(%197: i64):  // 2 preds: ^bb28, ^bb33
    %198 = llvm.icmp "slt" %197, %195 : i64
    llvm.cond_br %198, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%199 : i64)
  ^bb31(%202: i64):  // 2 preds: ^bb30, ^bb32
    %203 = llvm.icmp "slt" %202, %200 : i64
    llvm.cond_br %203, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %204 = llvm.mlir.constant(2 : index) : i64
    %205 = llvm.add %192, %204  : i64
    %206 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.add %187, %192  : i64
    %208 = llvm.add %207, %197  : i64
    %209 = llvm.add %208, %202  : i64
    %210 = llvm.getelementptr %206[%209] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %211 = llvm.load %210 : !llvm.ptr<i32>
    %212 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.mlir.constant(5 : index) : i64
    %214 = llvm.mul %187, %213  : i64
    %215 = llvm.add %214, %205  : i64
    %216 = llvm.add %215, %197  : i64
    %217 = llvm.add %216, %202  : i64
    %218 = llvm.getelementptr %212[%217] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %211, %218 : !llvm.ptr<i32>
    %219 = llvm.add %202, %201  : i64
    llvm.br ^bb31(%219 : i64)
  ^bb33:  // pred: ^bb31
    %220 = llvm.add %197, %196  : i64
    llvm.br ^bb29(%220 : i64)
  ^bb34:  // pred: ^bb29
    %221 = llvm.add %192, %191  : i64
    llvm.br ^bb27(%221 : i64)
  ^bb35:  // pred: ^bb27
    %222 = llvm.add %187, %186  : i64
    llvm.br ^bb25(%222 : i64)
  ^bb36:  // pred: ^bb25
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%223 : i64)
  ^bb37(%226: i64):  // 2 preds: ^bb36, ^bb47
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%228 : i64)
  ^bb39(%231: i64):  // 2 preds: ^bb38, ^bb46
    %232 = llvm.icmp "slt" %231, %229 : i64
    llvm.cond_br %232, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%233 : i64)
  ^bb41(%236: i64):  // 2 preds: ^bb40, ^bb45
    %237 = llvm.icmp "slt" %236, %234 : i64
    llvm.cond_br %237, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%238 : i64)
  ^bb43(%241: i64):  // 2 preds: ^bb42, ^bb44
    %242 = llvm.icmp "slt" %241, %239 : i64
    llvm.cond_br %242, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %243 = llvm.mlir.constant(3 : index) : i64
    %244 = llvm.add %231, %243  : i64
    %245 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.add %226, %231  : i64
    %247 = llvm.add %246, %236  : i64
    %248 = llvm.add %247, %241  : i64
    %249 = llvm.getelementptr %245[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %250 = llvm.load %249 : !llvm.ptr<i32>
    %251 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.mlir.constant(5 : index) : i64
    %253 = llvm.mul %226, %252  : i64
    %254 = llvm.add %253, %244  : i64
    %255 = llvm.add %254, %236  : i64
    %256 = llvm.add %255, %241  : i64
    %257 = llvm.getelementptr %251[%256] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %250, %257 : !llvm.ptr<i32>
    %258 = llvm.add %241, %240  : i64
    llvm.br ^bb43(%258 : i64)
  ^bb45:  // pred: ^bb43
    %259 = llvm.add %236, %235  : i64
    llvm.br ^bb41(%259 : i64)
  ^bb46:  // pred: ^bb41
    %260 = llvm.add %231, %230  : i64
    llvm.br ^bb39(%260 : i64)
  ^bb47:  // pred: ^bb39
    %261 = llvm.add %226, %225  : i64
    llvm.br ^bb37(%261 : i64)
  ^bb48:  // pred: ^bb37
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%262 : i64)
  ^bb49(%265: i64):  // 2 preds: ^bb48, ^bb59
    %266 = llvm.icmp "slt" %265, %263 : i64
    llvm.cond_br %266, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%267 : i64)
  ^bb51(%270: i64):  // 2 preds: ^bb50, ^bb58
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%272 : i64)
  ^bb53(%275: i64):  // 2 preds: ^bb52, ^bb57
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%277 : i64)
  ^bb55(%280: i64):  // 2 preds: ^bb54, ^bb56
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %282 = llvm.mlir.constant(4 : index) : i64
    %283 = llvm.add %270, %282  : i64
    %284 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.add %265, %270  : i64
    %286 = llvm.add %285, %275  : i64
    %287 = llvm.add %286, %280  : i64
    %288 = llvm.getelementptr %284[%287] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %289 = llvm.load %288 : !llvm.ptr<i32>
    %290 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.mlir.constant(5 : index) : i64
    %292 = llvm.mul %265, %291  : i64
    %293 = llvm.add %292, %283  : i64
    %294 = llvm.add %293, %275  : i64
    %295 = llvm.add %294, %280  : i64
    %296 = llvm.getelementptr %290[%295] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %289, %296 : !llvm.ptr<i32>
    %297 = llvm.add %280, %279  : i64
    llvm.br ^bb55(%297 : i64)
  ^bb57:  // pred: ^bb55
    %298 = llvm.add %275, %274  : i64
    llvm.br ^bb53(%298 : i64)
  ^bb58:  // pred: ^bb53
    %299 = llvm.add %270, %269  : i64
    llvm.br ^bb51(%299 : i64)
  ^bb59:  // pred: ^bb51
    %300 = llvm.add %265, %264  : i64
    llvm.br ^bb49(%300 : i64)
  ^bb60:  // pred: ^bb49
    %301 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %302 = llvm.extractvalue %107[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %302, %301[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %305 = llvm.insertvalue %303, %304[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.insertvalue %306, %305[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.mlir.constant(5 : index) : i64
    %309 = llvm.insertvalue %308, %307[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.insertvalue %310, %309[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %312 = llvm.mlir.constant(5 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.null : !llvm.ptr<i32>
    %315 = llvm.getelementptr %314[%312] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %316 = llvm.ptrtoint %315 : !llvm.ptr<i32> to i64
    %317 = llvm.mlir.constant(16 : index) : i64
    %318 = llvm.add %316, %317  : i64
    %319 = llvm.call @malloc(%318) : (i64) -> !llvm.ptr<i8>
    %320 = llvm.bitcast %319 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %321 = llvm.ptrtoint %320 : !llvm.ptr<i32> to i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.sub %317, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.urem %324, %317  : i64
    %326 = llvm.sub %324, %325  : i64
    %327 = llvm.inttoptr %326 : i64 to !llvm.ptr<i32>
    %328 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %329 = llvm.insertvalue %320, %328[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.insertvalue %327, %329[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %331 = llvm.mlir.constant(0 : index) : i64
    %332 = llvm.insertvalue %331, %330[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %333 = llvm.insertvalue %312, %332[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %334 = llvm.insertvalue %313, %333[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(5 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%335 : i64)
  ^bb61(%338: i64):  // 2 preds: ^bb60, ^bb62
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %340 = llvm.extractvalue %311[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.getelementptr %340[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %342 = llvm.load %341 : !llvm.ptr<i32>
    %343 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %344 = llvm.load %343 : !llvm.ptr<i32>
    %345 = llvm.icmp "slt" %342, %344 : i32
    %346 = llvm.select %345, %344, %342 : i1, i32
    %347 = llvm.extractvalue %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %348 = llvm.load %347 : !llvm.ptr<i32>
    %349 = llvm.icmp "slt" %346, %348 : i32
    %350 = llvm.select %349, %346, %348 : i1, i32
    %351 = llvm.extractvalue %334[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %352 = llvm.getelementptr %351[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %350, %352 : !llvm.ptr<i32>
    %353 = llvm.add %338, %337  : i64
    llvm.br ^bb61(%353 : i64)
  ^bb63:  // pred: ^bb61
    %354 = llvm.mlir.constant(4 : index) : i64
    %355 = llvm.mlir.constant(5 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mlir.constant(20 : index) : i64
    %360 = llvm.mlir.null : !llvm.ptr<i32>
    %361 = llvm.getelementptr %360[%359] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %362 = llvm.ptrtoint %361 : !llvm.ptr<i32> to i64
    %363 = llvm.mlir.constant(16 : index) : i64
    %364 = llvm.add %362, %363  : i64
    %365 = llvm.call @malloc(%364) : (i64) -> !llvm.ptr<i8>
    %366 = llvm.bitcast %365 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %367 = llvm.ptrtoint %366 : !llvm.ptr<i32> to i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.sub %363, %368  : i64
    %370 = llvm.add %367, %369  : i64
    %371 = llvm.urem %370, %363  : i64
    %372 = llvm.sub %370, %371  : i64
    %373 = llvm.inttoptr %372 : i64 to !llvm.ptr<i32>
    %374 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %375 = llvm.insertvalue %366, %374[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %373, %375[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.insertvalue %377, %376[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %354, %378[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %355, %379[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %356, %380[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %357, %381[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %355, %382[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.insertvalue %356, %383[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.insertvalue %357, %384[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %358, %385[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.mlir.constant(1 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%387 : i64)
  ^bb64(%390: i64):  // 2 preds: ^bb63, ^bb74
    %391 = llvm.icmp "slt" %390, %388 : i64
    llvm.cond_br %391, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %392 = llvm.mlir.constant(0 : index) : i64
    %393 = llvm.mlir.constant(5 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%392 : i64)
  ^bb66(%395: i64):  // 2 preds: ^bb65, ^bb73
    %396 = llvm.icmp "slt" %395, %393 : i64
    llvm.cond_br %396, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%397 : i64)
  ^bb68(%400: i64):  // 2 preds: ^bb67, ^bb72
    %401 = llvm.icmp "slt" %400, %398 : i64
    llvm.cond_br %401, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%402 : i64)
  ^bb70(%405: i64):  // 2 preds: ^bb69, ^bb71
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %407 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.mlir.constant(5 : index) : i64
    %409 = llvm.mul %390, %408  : i64
    %410 = llvm.add %409, %395  : i64
    %411 = llvm.add %410, %400  : i64
    %412 = llvm.add %411, %405  : i64
    %413 = llvm.getelementptr %407[%412] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %414 = llvm.load %413 : !llvm.ptr<i32>
    %415 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.mlir.constant(5 : index) : i64
    %417 = llvm.mul %390, %416  : i64
    %418 = llvm.add %417, %395  : i64
    %419 = llvm.add %418, %400  : i64
    %420 = llvm.add %419, %405  : i64
    %421 = llvm.getelementptr %415[%420] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %414, %421 : !llvm.ptr<i32>
    %422 = llvm.add %405, %404  : i64
    llvm.br ^bb70(%422 : i64)
  ^bb72:  // pred: ^bb70
    %423 = llvm.add %400, %399  : i64
    llvm.br ^bb68(%423 : i64)
  ^bb73:  // pred: ^bb68
    %424 = llvm.add %395, %394  : i64
    llvm.br ^bb66(%424 : i64)
  ^bb74:  // pred: ^bb66
    %425 = llvm.add %390, %389  : i64
    llvm.br ^bb64(%425 : i64)
  ^bb75:  // pred: ^bb64
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%426 : i64)
  ^bb76(%429: i64):  // 2 preds: ^bb75, ^bb86
    %430 = llvm.icmp "slt" %429, %427 : i64
    llvm.cond_br %430, ^bb77, ^bb87
  ^bb77:  // pred: ^bb76
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.mlir.constant(5 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%431 : i64)
  ^bb78(%434: i64):  // 2 preds: ^bb77, ^bb85
    %435 = llvm.icmp "slt" %434, %432 : i64
    llvm.cond_br %435, ^bb79, ^bb86
  ^bb79:  // pred: ^bb78
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%436 : i64)
  ^bb80(%439: i64):  // 2 preds: ^bb79, ^bb84
    %440 = llvm.icmp "slt" %439, %437 : i64
    llvm.cond_br %440, ^bb81, ^bb85
  ^bb81:  // pred: ^bb80
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%441 : i64)
  ^bb82(%444: i64):  // 2 preds: ^bb81, ^bb83
    %445 = llvm.icmp "slt" %444, %442 : i64
    llvm.cond_br %445, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.add %429, %446  : i64
    %448 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.mlir.constant(5 : index) : i64
    %450 = llvm.mul %429, %449  : i64
    %451 = llvm.add %450, %434  : i64
    %452 = llvm.add %451, %439  : i64
    %453 = llvm.add %452, %444  : i64
    %454 = llvm.getelementptr %448[%453] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %455 = llvm.load %454 : !llvm.ptr<i32>
    %456 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.mlir.constant(5 : index) : i64
    %458 = llvm.mul %447, %457  : i64
    %459 = llvm.add %458, %434  : i64
    %460 = llvm.add %459, %439  : i64
    %461 = llvm.add %460, %444  : i64
    %462 = llvm.getelementptr %456[%461] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %455, %462 : !llvm.ptr<i32>
    %463 = llvm.add %444, %443  : i64
    llvm.br ^bb82(%463 : i64)
  ^bb84:  // pred: ^bb82
    %464 = llvm.add %439, %438  : i64
    llvm.br ^bb80(%464 : i64)
  ^bb85:  // pred: ^bb80
    %465 = llvm.add %434, %433  : i64
    llvm.br ^bb78(%465 : i64)
  ^bb86:  // pred: ^bb78
    %466 = llvm.add %429, %428  : i64
    llvm.br ^bb76(%466 : i64)
  ^bb87:  // pred: ^bb76
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%467 : i64)
  ^bb88(%470: i64):  // 2 preds: ^bb87, ^bb98
    %471 = llvm.icmp "slt" %470, %468 : i64
    llvm.cond_br %471, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %472 = llvm.mlir.constant(0 : index) : i64
    %473 = llvm.mlir.constant(5 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%472 : i64)
  ^bb90(%475: i64):  // 2 preds: ^bb89, ^bb97
    %476 = llvm.icmp "slt" %475, %473 : i64
    llvm.cond_br %476, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%477 : i64)
  ^bb92(%480: i64):  // 2 preds: ^bb91, ^bb96
    %481 = llvm.icmp "slt" %480, %478 : i64
    llvm.cond_br %481, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %482 = llvm.mlir.constant(0 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%482 : i64)
  ^bb94(%485: i64):  // 2 preds: ^bb93, ^bb95
    %486 = llvm.icmp "slt" %485, %483 : i64
    llvm.cond_br %486, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %487 = llvm.mlir.constant(2 : index) : i64
    %488 = llvm.add %470, %487  : i64
    %489 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.mlir.constant(5 : index) : i64
    %491 = llvm.mul %470, %490  : i64
    %492 = llvm.add %491, %475  : i64
    %493 = llvm.add %492, %480  : i64
    %494 = llvm.add %493, %485  : i64
    %495 = llvm.getelementptr %489[%494] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %496 = llvm.load %495 : !llvm.ptr<i32>
    %497 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.mlir.constant(5 : index) : i64
    %499 = llvm.mul %488, %498  : i64
    %500 = llvm.add %499, %475  : i64
    %501 = llvm.add %500, %480  : i64
    %502 = llvm.add %501, %485  : i64
    %503 = llvm.getelementptr %497[%502] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %496, %503 : !llvm.ptr<i32>
    %504 = llvm.add %485, %484  : i64
    llvm.br ^bb94(%504 : i64)
  ^bb96:  // pred: ^bb94
    %505 = llvm.add %480, %479  : i64
    llvm.br ^bb92(%505 : i64)
  ^bb97:  // pred: ^bb92
    %506 = llvm.add %475, %474  : i64
    llvm.br ^bb90(%506 : i64)
  ^bb98:  // pred: ^bb90
    %507 = llvm.add %470, %469  : i64
    llvm.br ^bb88(%507 : i64)
  ^bb99:  // pred: ^bb88
    %508 = llvm.mlir.constant(0 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%508 : i64)
  ^bb100(%511: i64):  // 2 preds: ^bb99, ^bb110
    %512 = llvm.icmp "slt" %511, %509 : i64
    llvm.cond_br %512, ^bb101, ^bb111
  ^bb101:  // pred: ^bb100
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.mlir.constant(5 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb102(%513 : i64)
  ^bb102(%516: i64):  // 2 preds: ^bb101, ^bb109
    %517 = llvm.icmp "slt" %516, %514 : i64
    llvm.cond_br %517, ^bb103, ^bb110
  ^bb103:  // pred: ^bb102
    %518 = llvm.mlir.constant(0 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb104(%518 : i64)
  ^bb104(%521: i64):  // 2 preds: ^bb103, ^bb108
    %522 = llvm.icmp "slt" %521, %519 : i64
    llvm.cond_br %522, ^bb105, ^bb109
  ^bb105:  // pred: ^bb104
    %523 = llvm.mlir.constant(0 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%523 : i64)
  ^bb106(%526: i64):  // 2 preds: ^bb105, ^bb107
    %527 = llvm.icmp "slt" %526, %524 : i64
    llvm.cond_br %527, ^bb107, ^bb108
  ^bb107:  // pred: ^bb106
    %528 = llvm.mlir.constant(3 : index) : i64
    %529 = llvm.add %511, %528  : i64
    %530 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %531 = llvm.mlir.constant(5 : index) : i64
    %532 = llvm.mul %511, %531  : i64
    %533 = llvm.add %532, %516  : i64
    %534 = llvm.add %533, %521  : i64
    %535 = llvm.add %534, %526  : i64
    %536 = llvm.getelementptr %530[%535] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %537 = llvm.load %536 : !llvm.ptr<i32>
    %538 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.mlir.constant(5 : index) : i64
    %540 = llvm.mul %529, %539  : i64
    %541 = llvm.add %540, %516  : i64
    %542 = llvm.add %541, %521  : i64
    %543 = llvm.add %542, %526  : i64
    %544 = llvm.getelementptr %538[%543] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %537, %544 : !llvm.ptr<i32>
    %545 = llvm.add %526, %525  : i64
    llvm.br ^bb106(%545 : i64)
  ^bb108:  // pred: ^bb106
    %546 = llvm.add %521, %520  : i64
    llvm.br ^bb104(%546 : i64)
  ^bb109:  // pred: ^bb104
    %547 = llvm.add %516, %515  : i64
    llvm.br ^bb102(%547 : i64)
  ^bb110:  // pred: ^bb102
    %548 = llvm.add %511, %510  : i64
    llvm.br ^bb100(%548 : i64)
  ^bb111:  // pred: ^bb100
    %549 = llvm.mlir.constant(4 : index) : i64
    %550 = llvm.mlir.constant(5 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    %553 = llvm.mlir.constant(1 : index) : i64
    %554 = llvm.mlir.constant(20 : index) : i64
    %555 = llvm.mlir.null : !llvm.ptr<i1>
    %556 = llvm.getelementptr %555[%554] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %557 = llvm.ptrtoint %556 : !llvm.ptr<i1> to i64
    %558 = llvm.mlir.constant(16 : index) : i64
    %559 = llvm.add %557, %558  : i64
    %560 = llvm.call @malloc(%559) : (i64) -> !llvm.ptr<i8>
    %561 = llvm.bitcast %560 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %562 = llvm.ptrtoint %561 : !llvm.ptr<i1> to i64
    %563 = llvm.mlir.constant(1 : index) : i64
    %564 = llvm.sub %558, %563  : i64
    %565 = llvm.add %562, %564  : i64
    %566 = llvm.urem %565, %558  : i64
    %567 = llvm.sub %565, %566  : i64
    %568 = llvm.inttoptr %567 : i64 to !llvm.ptr<i1>
    %569 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %570 = llvm.insertvalue %561, %569[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %571 = llvm.insertvalue %568, %570[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.mlir.constant(0 : index) : i64
    %573 = llvm.insertvalue %572, %571[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %574 = llvm.insertvalue %549, %573[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %575 = llvm.insertvalue %550, %574[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %576 = llvm.insertvalue %551, %575[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %577 = llvm.insertvalue %552, %576[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %578 = llvm.insertvalue %550, %577[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %579 = llvm.insertvalue %551, %578[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %580 = llvm.insertvalue %552, %579[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.insertvalue %553, %580[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.mlir.constant(4 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb112(%582 : i64)
  ^bb112(%585: i64):  // 2 preds: ^bb111, ^bb122
    %586 = llvm.icmp "slt" %585, %583 : i64
    llvm.cond_br %586, ^bb113, ^bb123
  ^bb113:  // pred: ^bb112
    %587 = llvm.mlir.constant(0 : index) : i64
    %588 = llvm.mlir.constant(5 : index) : i64
    %589 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb114(%587 : i64)
  ^bb114(%590: i64):  // 2 preds: ^bb113, ^bb121
    %591 = llvm.icmp "slt" %590, %588 : i64
    llvm.cond_br %591, ^bb115, ^bb122
  ^bb115:  // pred: ^bb114
    %592 = llvm.mlir.constant(0 : index) : i64
    %593 = llvm.mlir.constant(1 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb116(%592 : i64)
  ^bb116(%595: i64):  // 2 preds: ^bb115, ^bb120
    %596 = llvm.icmp "slt" %595, %593 : i64
    llvm.cond_br %596, ^bb117, ^bb121
  ^bb117:  // pred: ^bb116
    %597 = llvm.mlir.constant(0 : index) : i64
    %598 = llvm.mlir.constant(1 : index) : i64
    %599 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb118(%597 : i64)
  ^bb118(%600: i64):  // 2 preds: ^bb117, ^bb119
    %601 = llvm.icmp "slt" %600, %598 : i64
    llvm.cond_br %601, ^bb119, ^bb120
  ^bb119:  // pred: ^bb118
    %602 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %603 = llvm.mlir.constant(5 : index) : i64
    %604 = llvm.mul %585, %603  : i64
    %605 = llvm.add %604, %590  : i64
    %606 = llvm.add %605, %595  : i64
    %607 = llvm.add %606, %600  : i64
    %608 = llvm.getelementptr %602[%607] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %609 = llvm.load %608 : !llvm.ptr<i32>
    %610 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.mlir.constant(5 : index) : i64
    %612 = llvm.mul %60, %611  : i64
    %613 = llvm.add %612, %590  : i64
    %614 = llvm.add %613, %595  : i64
    %615 = llvm.add %614, %600  : i64
    %616 = llvm.getelementptr %610[%615] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %617 = llvm.load %616 : !llvm.ptr<i32>
    %618 = llvm.icmp "eq" %609, %617 : i32
    %619 = llvm.extractvalue %581[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %620 = llvm.mlir.constant(5 : index) : i64
    %621 = llvm.mul %585, %620  : i64
    %622 = llvm.add %621, %590  : i64
    %623 = llvm.add %622, %595  : i64
    %624 = llvm.add %623, %600  : i64
    %625 = llvm.getelementptr %619[%624] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %618, %625 : !llvm.ptr<i1>
    %626 = llvm.add %600, %599  : i64
    llvm.br ^bb118(%626 : i64)
  ^bb120:  // pred: ^bb118
    %627 = llvm.add %595, %594  : i64
    llvm.br ^bb116(%627 : i64)
  ^bb121:  // pred: ^bb116
    %628 = llvm.add %590, %589  : i64
    llvm.br ^bb114(%628 : i64)
  ^bb122:  // pred: ^bb114
    %629 = llvm.add %585, %584  : i64
    llvm.br ^bb112(%629 : i64)
  ^bb123:  // pred: ^bb112
    %630 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %631 = llvm.insertvalue %334, %630[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %632 = llvm.insertvalue %581, %631[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %632 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v9_0", "v8_0", "v7_0", "v6_0", "v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
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
    %36 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %48 = llvm.load %arg5 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %49 = llvm.extractvalue %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.extractvalue %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.extractvalue %48[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.extractvalue %48[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.extractvalue %48[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.extractvalue %48[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.extractvalue %48[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.extractvalue %48[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.extractvalue %48[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.extractvalue %48[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %60, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %126 = llvm.mlir.constant(3 : i64) : i64
    %127 = llvm.getelementptr %0[%126] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %128 = llvm.load %127 : !llvm.ptr<ptr<i8>>
    %129 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %130 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %131 = llvm.call @omTensorGetDataPtr(%128) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %132 = llvm.bitcast %131 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %133 = llvm.insertvalue %132, %130[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %132, %133[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.mlir.constant(0 : i64) : i64
    %136 = llvm.insertvalue %135, %134[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.call @omTensorGetShape(%128) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %138 = llvm.call @omTensorGetStrides(%128) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %139 = llvm.mlir.constant(0 : i64) : i64
    %140 = llvm.getelementptr %137[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %141 = llvm.load %140 : !llvm.ptr<i64>
    %142 = llvm.insertvalue %141, %136[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %138[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %144 = llvm.load %143 : !llvm.ptr<i64>
    %145 = llvm.insertvalue %144, %142[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.mlir.constant(1 : i64) : i64
    %147 = llvm.getelementptr %137[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %148 = llvm.load %147 : !llvm.ptr<i64>
    %149 = llvm.insertvalue %148, %145[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %138[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %151 = llvm.load %150 : !llvm.ptr<i64>
    %152 = llvm.insertvalue %151, %149[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.mlir.constant(2 : i64) : i64
    %154 = llvm.getelementptr %137[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %155 = llvm.load %154 : !llvm.ptr<i64>
    %156 = llvm.insertvalue %155, %152[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %138[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %158 = llvm.load %157 : !llvm.ptr<i64>
    %159 = llvm.insertvalue %158, %156[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(3 : i64) : i64
    %161 = llvm.getelementptr %137[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %162 = llvm.load %161 : !llvm.ptr<i64>
    %163 = llvm.insertvalue %162, %159[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.getelementptr %138[%160] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %165 = llvm.load %164 : !llvm.ptr<i64>
    %166 = llvm.insertvalue %165, %163[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %166, %129 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %167 = llvm.mlir.constant(4 : i64) : i64
    %168 = llvm.getelementptr %0[%167] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %169 = llvm.load %168 : !llvm.ptr<ptr<i8>>
    %170 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %171 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %172 = llvm.call @omTensorGetDataPtr(%169) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %173 = llvm.bitcast %172 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %174 = llvm.insertvalue %173, %171[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %173, %174[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.mlir.constant(0 : i64) : i64
    %177 = llvm.insertvalue %176, %175[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.call @omTensorGetShape(%169) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %179 = llvm.call @omTensorGetStrides(%169) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %180 = llvm.mlir.constant(0 : i64) : i64
    %181 = llvm.getelementptr %178[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %182 = llvm.load %181 : !llvm.ptr<i64>
    %183 = llvm.insertvalue %182, %177[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %179[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %185 = llvm.load %184 : !llvm.ptr<i64>
    %186 = llvm.insertvalue %185, %183[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.mlir.constant(1 : i64) : i64
    %188 = llvm.getelementptr %178[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %189 = llvm.load %188 : !llvm.ptr<i64>
    %190 = llvm.insertvalue %189, %186[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.getelementptr %179[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %192 = llvm.load %191 : !llvm.ptr<i64>
    %193 = llvm.insertvalue %192, %190[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.mlir.constant(2 : i64) : i64
    %195 = llvm.getelementptr %178[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %196 = llvm.load %195 : !llvm.ptr<i64>
    %197 = llvm.insertvalue %196, %193[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.getelementptr %179[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %199 = llvm.load %198 : !llvm.ptr<i64>
    %200 = llvm.insertvalue %199, %197[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(3 : i64) : i64
    %202 = llvm.getelementptr %178[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %203 = llvm.load %202 : !llvm.ptr<i64>
    %204 = llvm.insertvalue %203, %200[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.getelementptr %179[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %206 = llvm.load %205 : !llvm.ptr<i64>
    %207 = llvm.insertvalue %206, %204[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %207, %170 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %129, %170) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %208 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %209 = llvm.extractvalue %208[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %210 = llvm.extractvalue %208[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %211 = llvm.mlir.constant(2 : i64) : i64
    %212 = llvm.mlir.constant(16 : i64) : i64
    %213 = llvm.call @malloc(%212) : (i64) -> !llvm.ptr<i8>
    %214 = llvm.bitcast %213 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %215 = llvm.mlir.constant(1 : i64) : i64
    %216 = llvm.call @omTensorCreateUntyped(%215) : (i64) -> !llvm.ptr<i8>
    %217 = llvm.mlir.constant(1 : i64) : i64
    %218 = llvm.extractvalue %209[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.bitcast %218 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %220 = llvm.extractvalue %209[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %221 = llvm.bitcast %220 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%216, %217, %219, %221) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %222 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%216, %222) : (!llvm.ptr<i8>, i64) -> ()
    %223 = llvm.call @omTensorGetShape(%216) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %224 = llvm.call @omTensorGetStrides(%216) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %225 = llvm.mlir.constant(0 : i64) : i64
    %226 = llvm.extractvalue %209[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.getelementptr %223[%225] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %227 : !llvm.ptr<i64>
    %228 = llvm.extractvalue %209[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.getelementptr %224[%225] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %228, %229 : !llvm.ptr<i64>
    %230 = llvm.mlir.constant(0 : i64) : i64
    %231 = llvm.getelementptr %214[%230] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %216, %231 : !llvm.ptr<ptr<i8>>
    %232 = llvm.mlir.constant(4 : i64) : i64
    %233 = llvm.call @omTensorCreateUntyped(%232) : (i64) -> !llvm.ptr<i8>
    %234 = llvm.mlir.constant(1 : i64) : i64
    %235 = llvm.extractvalue %210[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.bitcast %235 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %237 = llvm.extractvalue %210[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.bitcast %237 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%233, %234, %236, %238) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %239 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%233, %239) : (!llvm.ptr<i8>, i64) -> ()
    %240 = llvm.call @omTensorGetShape(%233) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %241 = llvm.call @omTensorGetStrides(%233) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %242 = llvm.mlir.constant(0 : i64) : i64
    %243 = llvm.extractvalue %210[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.getelementptr %240[%242] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %243, %244 : !llvm.ptr<i64>
    %245 = llvm.extractvalue %210[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.getelementptr %241[%242] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %245, %246 : !llvm.ptr<i64>
    %247 = llvm.mlir.constant(1 : i64) : i64
    %248 = llvm.extractvalue %210[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.getelementptr %240[%247] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %248, %249 : !llvm.ptr<i64>
    %250 = llvm.extractvalue %210[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.getelementptr %241[%247] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %250, %251 : !llvm.ptr<i64>
    %252 = llvm.mlir.constant(2 : i64) : i64
    %253 = llvm.extractvalue %210[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.getelementptr %240[%252] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %253, %254 : !llvm.ptr<i64>
    %255 = llvm.extractvalue %210[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.getelementptr %241[%252] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %255, %256 : !llvm.ptr<i64>
    %257 = llvm.mlir.constant(3 : i64) : i64
    %258 = llvm.extractvalue %210[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.getelementptr %240[%257] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %258, %259 : !llvm.ptr<i64>
    %260 = llvm.extractvalue %210[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.getelementptr %241[%257] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %260, %261 : !llvm.ptr<i64>
    %262 = llvm.mlir.constant(1 : i64) : i64
    %263 = llvm.getelementptr %214[%262] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %233, %263 : !llvm.ptr<ptr<i8>>
    %264 = llvm.call @omTensorListCreate(%214, %211, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %264 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<352 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<352 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<128 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<128 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

