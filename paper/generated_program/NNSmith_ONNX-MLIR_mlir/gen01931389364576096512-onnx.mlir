module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[1, 1, 4, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 1, 4, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v5_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v8_0", "v0_0", "v2_0"]} {
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
    %48 = llvm.mlir.constant(1 : i64) : i64
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(3 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %53 = llvm.bitcast %52 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %54 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %55 = llvm.insertvalue %53, %54[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.insertvalue %53, %55[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.insertvalue %57, %56[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(4 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %64 = llvm.bitcast %63 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %65 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %66 = llvm.insertvalue %64, %65[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %70 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %71 = llvm.bitcast %70 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %72 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %73 = llvm.insertvalue %71, %72[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.insertvalue %71, %73[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.insertvalue %75, %74[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.mlir.constant(4 : index) : i64
    %78 = llvm.insertvalue %77, %76[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.insertvalue %79, %78[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(4 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(4 : index) : i64
    %87 = llvm.mlir.constant(4 : index) : i64
    %88 = llvm.mlir.null : !llvm.ptr<i32>
    %89 = llvm.getelementptr %88[%87] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %90 = llvm.ptrtoint %89 : !llvm.ptr<i32> to i64
    %91 = llvm.mlir.constant(16 : index) : i64
    %92 = llvm.add %90, %91  : i64
    %93 = llvm.call @malloc(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.bitcast %93 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %95 = llvm.ptrtoint %94 : !llvm.ptr<i32> to i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.sub %91, %96  : i64
    %98 = llvm.add %95, %97  : i64
    %99 = llvm.urem %98, %91  : i64
    %100 = llvm.sub %98, %99  : i64
    %101 = llvm.inttoptr %100 : i64 to !llvm.ptr<i32>
    %102 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %103 = llvm.insertvalue %94, %102[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %101, %103[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.insertvalue %105, %104[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %81, %106[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %82, %107[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %83, %108[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %84, %109[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %86, %110[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %83, %111[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %84, %112[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %85, %113[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%115 : i64)
  ^bb1(%118: i64):  // 2 preds: ^bb0, ^bb11
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%120 : i64)
  ^bb3(%123: i64):  // 2 preds: ^bb2, ^bb10
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%125 : i64)
  ^bb5(%128: i64):  // 2 preds: ^bb4, ^bb9
    %129 = llvm.icmp "slt" %128, %126 : i64
    llvm.cond_br %129, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%130 : i64)
  ^bb7(%133: i64):  // 2 preds: ^bb6, ^bb8
    %134 = llvm.icmp "slt" %133, %131 : i64
    llvm.cond_br %134, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %135 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.add %118, %123  : i64
    %137 = llvm.add %136, %128  : i64
    %138 = llvm.add %137, %133  : i64
    %139 = llvm.getelementptr %135[%138] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %140 = llvm.load %139 : !llvm.ptr<i32>
    %141 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.mlir.constant(4 : index) : i64
    %143 = llvm.mul %118, %142  : i64
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mul %123, %144  : i64
    %146 = llvm.add %143, %145  : i64
    %147 = llvm.add %146, %128  : i64
    %148 = llvm.add %147, %133  : i64
    %149 = llvm.getelementptr %141[%148] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %140, %149 : !llvm.ptr<i32>
    %150 = llvm.add %133, %132  : i64
    llvm.br ^bb7(%150 : i64)
  ^bb9:  // pred: ^bb7
    %151 = llvm.add %128, %127  : i64
    llvm.br ^bb5(%151 : i64)
  ^bb10:  // pred: ^bb5
    %152 = llvm.add %123, %122  : i64
    llvm.br ^bb3(%152 : i64)
  ^bb11:  // pred: ^bb3
    %153 = llvm.add %118, %117  : i64
    llvm.br ^bb1(%153 : i64)
  ^bb12:  // pred: ^bb1
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%154 : i64)
  ^bb13(%157: i64):  // 2 preds: ^bb12, ^bb23
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%159 : i64)
  ^bb15(%162: i64):  // 2 preds: ^bb14, ^bb22
    %163 = llvm.icmp "slt" %162, %160 : i64
    llvm.cond_br %163, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%164 : i64)
  ^bb17(%167: i64):  // 2 preds: ^bb16, ^bb21
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%169 : i64)
  ^bb19(%172: i64):  // 2 preds: ^bb18, ^bb20
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.add %167, %174  : i64
    %176 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.add %157, %162  : i64
    %178 = llvm.add %177, %167  : i64
    %179 = llvm.add %178, %172  : i64
    %180 = llvm.getelementptr %176[%179] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %181 = llvm.load %180 : !llvm.ptr<i32>
    %182 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.mlir.constant(4 : index) : i64
    %184 = llvm.mul %157, %183  : i64
    %185 = llvm.mlir.constant(4 : index) : i64
    %186 = llvm.mul %162, %185  : i64
    %187 = llvm.add %184, %186  : i64
    %188 = llvm.add %187, %175  : i64
    %189 = llvm.add %188, %172  : i64
    %190 = llvm.getelementptr %182[%189] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %181, %190 : !llvm.ptr<i32>
    %191 = llvm.add %172, %171  : i64
    llvm.br ^bb19(%191 : i64)
  ^bb21:  // pred: ^bb19
    %192 = llvm.add %167, %166  : i64
    llvm.br ^bb17(%192 : i64)
  ^bb22:  // pred: ^bb17
    %193 = llvm.add %162, %161  : i64
    llvm.br ^bb15(%193 : i64)
  ^bb23:  // pred: ^bb15
    %194 = llvm.add %157, %156  : i64
    llvm.br ^bb13(%194 : i64)
  ^bb24:  // pred: ^bb13
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%195 : i64)
  ^bb25(%198: i64):  // 2 preds: ^bb24, ^bb35
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%200 : i64)
  ^bb27(%203: i64):  // 2 preds: ^bb26, ^bb34
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%205 : i64)
  ^bb29(%208: i64):  // 2 preds: ^bb28, ^bb33
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%210 : i64)
  ^bb31(%213: i64):  // 2 preds: ^bb30, ^bb32
    %214 = llvm.icmp "slt" %213, %211 : i64
    llvm.cond_br %214, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.add %208, %215  : i64
    %217 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.add %198, %203  : i64
    %219 = llvm.add %218, %208  : i64
    %220 = llvm.add %219, %213  : i64
    %221 = llvm.getelementptr %217[%220] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %222 = llvm.load %221 : !llvm.ptr<i32>
    %223 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.mlir.constant(4 : index) : i64
    %225 = llvm.mul %198, %224  : i64
    %226 = llvm.mlir.constant(4 : index) : i64
    %227 = llvm.mul %203, %226  : i64
    %228 = llvm.add %225, %227  : i64
    %229 = llvm.add %228, %216  : i64
    %230 = llvm.add %229, %213  : i64
    %231 = llvm.getelementptr %223[%230] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %222, %231 : !llvm.ptr<i32>
    %232 = llvm.add %213, %212  : i64
    llvm.br ^bb31(%232 : i64)
  ^bb33:  // pred: ^bb31
    %233 = llvm.add %208, %207  : i64
    llvm.br ^bb29(%233 : i64)
  ^bb34:  // pred: ^bb29
    %234 = llvm.add %203, %202  : i64
    llvm.br ^bb27(%234 : i64)
  ^bb35:  // pred: ^bb27
    %235 = llvm.add %198, %197  : i64
    llvm.br ^bb25(%235 : i64)
  ^bb36:  // pred: ^bb25
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%236 : i64)
  ^bb37(%239: i64):  // 2 preds: ^bb36, ^bb47
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%241 : i64)
  ^bb39(%244: i64):  // 2 preds: ^bb38, ^bb46
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%246 : i64)
  ^bb41(%249: i64):  // 2 preds: ^bb40, ^bb45
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%251 : i64)
  ^bb43(%254: i64):  // 2 preds: ^bb42, ^bb44
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %256 = llvm.mlir.constant(3 : index) : i64
    %257 = llvm.add %249, %256  : i64
    %258 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.add %239, %244  : i64
    %260 = llvm.add %259, %249  : i64
    %261 = llvm.add %260, %254  : i64
    %262 = llvm.getelementptr %258[%261] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %263 = llvm.load %262 : !llvm.ptr<i32>
    %264 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.mlir.constant(4 : index) : i64
    %266 = llvm.mul %239, %265  : i64
    %267 = llvm.mlir.constant(4 : index) : i64
    %268 = llvm.mul %244, %267  : i64
    %269 = llvm.add %266, %268  : i64
    %270 = llvm.add %269, %257  : i64
    %271 = llvm.add %270, %254  : i64
    %272 = llvm.getelementptr %264[%271] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %263, %272 : !llvm.ptr<i32>
    %273 = llvm.add %254, %253  : i64
    llvm.br ^bb43(%273 : i64)
  ^bb45:  // pred: ^bb43
    %274 = llvm.add %249, %248  : i64
    llvm.br ^bb41(%274 : i64)
  ^bb46:  // pred: ^bb41
    %275 = llvm.add %244, %243  : i64
    llvm.br ^bb39(%275 : i64)
  ^bb47:  // pred: ^bb39
    %276 = llvm.add %239, %238  : i64
    llvm.br ^bb37(%276 : i64)
  ^bb48:  // pred: ^bb37
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(4 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(4 : index) : i64
    %283 = llvm.mlir.constant(4 : index) : i64
    %284 = llvm.mlir.null : !llvm.ptr<i32>
    %285 = llvm.getelementptr %284[%283] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %286 = llvm.ptrtoint %285 : !llvm.ptr<i32> to i64
    %287 = llvm.mlir.constant(16 : index) : i64
    %288 = llvm.add %286, %287  : i64
    %289 = llvm.call @malloc(%288) : (i64) -> !llvm.ptr<i8>
    %290 = llvm.bitcast %289 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %291 = llvm.ptrtoint %290 : !llvm.ptr<i32> to i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.sub %287, %292  : i64
    %294 = llvm.add %291, %293  : i64
    %295 = llvm.urem %294, %287  : i64
    %296 = llvm.sub %294, %295  : i64
    %297 = llvm.inttoptr %296 : i64 to !llvm.ptr<i32>
    %298 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %299 = llvm.insertvalue %290, %298[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %297, %299[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.insertvalue %301, %300[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %277, %302[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %278, %303[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %279, %304[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %280, %305[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.insertvalue %282, %306[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %279, %307[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %280, %308[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.insertvalue %281, %309[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%311 : i64)
  ^bb49(%314: i64):  // 2 preds: ^bb48, ^bb59
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%316 : i64)
  ^bb51(%319: i64):  // 2 preds: ^bb50, ^bb58
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.mlir.constant(4 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%321 : i64)
  ^bb53(%324: i64):  // 2 preds: ^bb52, ^bb57
    %325 = llvm.icmp "slt" %324, %322 : i64
    llvm.cond_br %325, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%326 : i64)
  ^bb55(%329: i64):  // 2 preds: ^bb54, ^bb56
    %330 = llvm.icmp "slt" %329, %327 : i64
    llvm.cond_br %330, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %331 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.add %314, %319  : i64
    %333 = llvm.add %332, %49  : i64
    %334 = llvm.add %333, %329  : i64
    %335 = llvm.getelementptr %331[%334] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %336 = llvm.load %335 : !llvm.ptr<i32>
    %337 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.mlir.constant(4 : index) : i64
    %339 = llvm.mul %314, %338  : i64
    %340 = llvm.mlir.constant(4 : index) : i64
    %341 = llvm.mul %319, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.add %342, %324  : i64
    %344 = llvm.add %343, %329  : i64
    %345 = llvm.getelementptr %337[%344] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %346 = llvm.load %345 : !llvm.ptr<i32>
    %347 = llvm.sub %336, %346  : i32
    %348 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.mlir.constant(4 : index) : i64
    %350 = llvm.mul %314, %349  : i64
    %351 = llvm.mlir.constant(4 : index) : i64
    %352 = llvm.mul %319, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.add %353, %324  : i64
    %355 = llvm.add %354, %329  : i64
    %356 = llvm.getelementptr %348[%355] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %347, %356 : !llvm.ptr<i32>
    %357 = llvm.add %329, %328  : i64
    llvm.br ^bb55(%357 : i64)
  ^bb57:  // pred: ^bb55
    %358 = llvm.add %324, %323  : i64
    llvm.br ^bb53(%358 : i64)
  ^bb58:  // pred: ^bb53
    %359 = llvm.add %319, %318  : i64
    llvm.br ^bb51(%359 : i64)
  ^bb59:  // pred: ^bb51
    %360 = llvm.add %314, %313  : i64
    llvm.br ^bb49(%360 : i64)
  ^bb60:  // pred: ^bb49
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    %363 = llvm.mlir.null : !llvm.ptr<i64>
    %364 = llvm.getelementptr %363[%361] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %365 = llvm.ptrtoint %364 : !llvm.ptr<i64> to i64
    %366 = llvm.mlir.constant(16 : index) : i64
    %367 = llvm.add %365, %366  : i64
    %368 = llvm.call @malloc(%367) : (i64) -> !llvm.ptr<i8>
    %369 = llvm.bitcast %368 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %370 = llvm.ptrtoint %369 : !llvm.ptr<i64> to i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.sub %366, %371  : i64
    %373 = llvm.add %370, %372  : i64
    %374 = llvm.urem %373, %366  : i64
    %375 = llvm.sub %373, %374  : i64
    %376 = llvm.inttoptr %375 : i64 to !llvm.ptr<i64>
    %377 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %378 = llvm.insertvalue %369, %377[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.insertvalue %376, %378[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.insertvalue %380, %379[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.insertvalue %361, %381[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.insertvalue %362, %382[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(4 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%384 : i64)
  ^bb61(%387: i64):  // 2 preds: ^bb60, ^bb62
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %389 = llvm.extractvalue %383[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %390 = llvm.getelementptr %389[%387] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %48, %390 : !llvm.ptr<i64>
    %391 = llvm.add %387, %386  : i64
    llvm.br ^bb61(%391 : i64)
  ^bb63:  // pred: ^bb61
    %392 = llvm.mlir.constant(4 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.null : !llvm.ptr<i64>
    %395 = llvm.getelementptr %394[%392] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %396 = llvm.ptrtoint %395 : !llvm.ptr<i64> to i64
    %397 = llvm.mlir.constant(16 : index) : i64
    %398 = llvm.add %396, %397  : i64
    %399 = llvm.call @malloc(%398) : (i64) -> !llvm.ptr<i8>
    %400 = llvm.bitcast %399 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %401 = llvm.ptrtoint %400 : !llvm.ptr<i64> to i64
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.sub %397, %402  : i64
    %404 = llvm.add %401, %403  : i64
    %405 = llvm.urem %404, %397  : i64
    %406 = llvm.sub %404, %405  : i64
    %407 = llvm.inttoptr %406 : i64 to !llvm.ptr<i64>
    %408 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %409 = llvm.insertvalue %400, %408[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.insertvalue %407, %409[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.insertvalue %411, %410[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.insertvalue %392, %412[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.insertvalue %393, %413[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(4 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%415 : i64)
  ^bb64(%418: i64):  // 2 preds: ^bb63, ^bb65
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %420 = llvm.extractvalue %383[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %421 = llvm.getelementptr %420[%418] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %422 = llvm.load %421 : !llvm.ptr<i64>
    %423 = llvm.extractvalue %69[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %424 = llvm.load %423 : !llvm.ptr<i64>
    %425 = llvm.mul %422, %424  : i64
    %426 = llvm.extractvalue %414[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %427 = llvm.getelementptr %426[%418] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %425, %427 : !llvm.ptr<i64>
    %428 = llvm.add %418, %417  : i64
    llvm.br ^bb64(%428 : i64)
  ^bb66:  // pred: ^bb64
    %429 = llvm.mlir.constant(4 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.mlir.null : !llvm.ptr<i1>
    %432 = llvm.getelementptr %431[%429] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %433 = llvm.ptrtoint %432 : !llvm.ptr<i1> to i64
    %434 = llvm.mlir.constant(16 : index) : i64
    %435 = llvm.add %433, %434  : i64
    %436 = llvm.call @malloc(%435) : (i64) -> !llvm.ptr<i8>
    %437 = llvm.bitcast %436 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %438 = llvm.ptrtoint %437 : !llvm.ptr<i1> to i64
    %439 = llvm.mlir.constant(1 : index) : i64
    %440 = llvm.sub %434, %439  : i64
    %441 = llvm.add %438, %440  : i64
    %442 = llvm.urem %441, %434  : i64
    %443 = llvm.sub %441, %442  : i64
    %444 = llvm.inttoptr %443 : i64 to !llvm.ptr<i1>
    %445 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %446 = llvm.insertvalue %437, %445[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %447 = llvm.insertvalue %444, %446[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.insertvalue %448, %447[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %450 = llvm.insertvalue %429, %449[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %451 = llvm.insertvalue %430, %450[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %452 = llvm.mlir.constant(0 : index) : i64
    %453 = llvm.mlir.constant(4 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%452 : i64)
  ^bb67(%455: i64):  // 2 preds: ^bb66, ^bb68
    %456 = llvm.icmp "slt" %455, %453 : i64
    llvm.cond_br %456, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %457 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %458 = llvm.getelementptr %457[%455] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %459 = llvm.load %458 : !llvm.ptr<i64>
    %460 = llvm.extractvalue %414[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.getelementptr %460[%455] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %462 = llvm.load %461 : !llvm.ptr<i64>
    %463 = llvm.icmp "eq" %459, %462 : i64
    %464 = llvm.extractvalue %451[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.getelementptr %464[%455] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %463, %465 : !llvm.ptr<i1>
    %466 = llvm.add %455, %454  : i64
    llvm.br ^bb67(%466 : i64)
  ^bb69:  // pred: ^bb67
    %467 = llvm.mlir.constant(4 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.mlir.null : !llvm.ptr<i64>
    %470 = llvm.getelementptr %469[%467] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %471 = llvm.ptrtoint %470 : !llvm.ptr<i64> to i64
    %472 = llvm.mlir.constant(16 : index) : i64
    %473 = llvm.add %471, %472  : i64
    %474 = llvm.call @malloc(%473) : (i64) -> !llvm.ptr<i8>
    %475 = llvm.bitcast %474 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %476 = llvm.ptrtoint %475 : !llvm.ptr<i64> to i64
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.sub %472, %477  : i64
    %479 = llvm.add %476, %478  : i64
    %480 = llvm.urem %479, %472  : i64
    %481 = llvm.sub %479, %480  : i64
    %482 = llvm.inttoptr %481 : i64 to !llvm.ptr<i64>
    %483 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %484 = llvm.insertvalue %475, %483[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %485 = llvm.insertvalue %482, %484[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.insertvalue %486, %485[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %488 = llvm.insertvalue %467, %487[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %489 = llvm.insertvalue %468, %488[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %490 = llvm.mlir.constant(0 : index) : i64
    %491 = llvm.mlir.constant(4 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%490 : i64)
  ^bb70(%493: i64):  // 2 preds: ^bb69, ^bb71
    %494 = llvm.icmp "slt" %493, %491 : i64
    llvm.cond_br %494, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %495 = llvm.extractvalue %451[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %496 = llvm.getelementptr %495[%493] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %497 = llvm.load %496 : !llvm.ptr<i1>
    %498 = llvm.extractvalue %383[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %499 = llvm.getelementptr %498[%493] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %500 = llvm.load %499 : !llvm.ptr<i64>
    %501 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %502 = llvm.getelementptr %501[%493] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %503 = llvm.load %502 : !llvm.ptr<i64>
    %504 = llvm.select %497, %500, %503 : i1, i64
    %505 = llvm.extractvalue %489[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %506 = llvm.getelementptr %505[%493] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %504, %506 : !llvm.ptr<i64>
    %507 = llvm.add %493, %492  : i64
    llvm.br ^bb70(%507 : i64)
  ^bb72:  // pred: ^bb70
    %508 = llvm.extractvalue %489[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %509 = llvm.getelementptr %508[%49] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %510 = llvm.load %509 : !llvm.ptr<i64>
    %511 = llvm.extractvalue %489[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %512 = llvm.getelementptr %511[%51] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %513 = llvm.load %512 : !llvm.ptr<i64>
    %514 = llvm.extractvalue %489[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %515 = llvm.getelementptr %514[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %516 = llvm.load %515 : !llvm.ptr<i64>
    %517 = llvm.mlir.constant(4 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    %519 = llvm.mul %516, %517  : i64
    %520 = llvm.mul %519, %513  : i64
    %521 = llvm.mul %520, %510  : i64
    %522 = llvm.mlir.null : !llvm.ptr<i32>
    %523 = llvm.getelementptr %522[%521] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %524 = llvm.ptrtoint %523 : !llvm.ptr<i32> to i64
    %525 = llvm.mlir.constant(16 : index) : i64
    %526 = llvm.add %524, %525  : i64
    %527 = llvm.call @malloc(%526) : (i64) -> !llvm.ptr<i8>
    %528 = llvm.bitcast %527 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %529 = llvm.ptrtoint %528 : !llvm.ptr<i32> to i64
    %530 = llvm.mlir.constant(1 : index) : i64
    %531 = llvm.sub %525, %530  : i64
    %532 = llvm.add %529, %531  : i64
    %533 = llvm.urem %532, %525  : i64
    %534 = llvm.sub %532, %533  : i64
    %535 = llvm.inttoptr %534 : i64 to !llvm.ptr<i32>
    %536 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %537 = llvm.insertvalue %528, %536[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %538 = llvm.insertvalue %535, %537[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.mlir.constant(0 : index) : i64
    %540 = llvm.insertvalue %539, %538[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %541 = llvm.insertvalue %510, %540[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.insertvalue %513, %541[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.insertvalue %517, %542[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.insertvalue %516, %543[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.insertvalue %520, %544[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.insertvalue %519, %545[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %547 = llvm.insertvalue %516, %546[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %548 = llvm.insertvalue %518, %547[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.mlir.constant(0 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%549 : i64)
  ^bb73(%551: i64):  // 2 preds: ^bb72, ^bb83
    %552 = llvm.icmp "slt" %551, %510 : i64
    llvm.cond_br %552, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %553 = llvm.mlir.constant(0 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%553 : i64)
  ^bb75(%555: i64):  // 2 preds: ^bb74, ^bb82
    %556 = llvm.icmp "slt" %555, %513 : i64
    llvm.cond_br %556, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %557 = llvm.mlir.constant(0 : index) : i64
    %558 = llvm.mlir.constant(4 : index) : i64
    %559 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%557 : i64)
  ^bb77(%560: i64):  // 2 preds: ^bb76, ^bb81
    %561 = llvm.icmp "slt" %560, %558 : i64
    llvm.cond_br %561, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %562 = llvm.mlir.constant(0 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%562 : i64)
  ^bb79(%564: i64):  // 2 preds: ^bb78, ^bb80
    %565 = llvm.icmp "slt" %564, %516 : i64
    llvm.cond_br %565, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %566 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.mlir.constant(4 : index) : i64
    %568 = llvm.mul %49, %567  : i64
    %569 = llvm.mlir.constant(4 : index) : i64
    %570 = llvm.mul %49, %569  : i64
    %571 = llvm.add %568, %570  : i64
    %572 = llvm.add %571, %560  : i64
    %573 = llvm.add %572, %49  : i64
    %574 = llvm.getelementptr %566[%573] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %575 = llvm.load %574 : !llvm.ptr<i32>
    %576 = llvm.extractvalue %548[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %577 = llvm.extractvalue %548[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %578 = llvm.mul %551, %577  : i64
    %579 = llvm.extractvalue %548[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %580 = llvm.mul %555, %579  : i64
    %581 = llvm.add %578, %580  : i64
    %582 = llvm.extractvalue %548[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %583 = llvm.mul %560, %582  : i64
    %584 = llvm.add %581, %583  : i64
    %585 = llvm.add %584, %564  : i64
    %586 = llvm.getelementptr %576[%585] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %575, %586 : !llvm.ptr<i32>
    %587 = llvm.add %564, %563  : i64
    llvm.br ^bb79(%587 : i64)
  ^bb81:  // pred: ^bb79
    %588 = llvm.add %560, %559  : i64
    llvm.br ^bb77(%588 : i64)
  ^bb82:  // pred: ^bb77
    %589 = llvm.add %555, %554  : i64
    llvm.br ^bb75(%589 : i64)
  ^bb83:  // pred: ^bb75
    %590 = llvm.add %551, %550  : i64
    llvm.br ^bb73(%590 : i64)
  ^bb84:  // pred: ^bb73
    %591 = llvm.mlir.constant(1 : index) : i64
    %592 = llvm.mlir.constant(1 : index) : i64
    %593 = llvm.mlir.constant(4 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.mlir.constant(4 : index) : i64
    %597 = llvm.mlir.constant(4 : index) : i64
    %598 = llvm.mlir.null : !llvm.ptr<i1>
    %599 = llvm.getelementptr %598[%597] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %600 = llvm.ptrtoint %599 : !llvm.ptr<i1> to i64
    %601 = llvm.mlir.constant(16 : index) : i64
    %602 = llvm.add %600, %601  : i64
    %603 = llvm.call @malloc(%602) : (i64) -> !llvm.ptr<i8>
    %604 = llvm.bitcast %603 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %605 = llvm.ptrtoint %604 : !llvm.ptr<i1> to i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.sub %601, %606  : i64
    %608 = llvm.add %605, %607  : i64
    %609 = llvm.urem %608, %601  : i64
    %610 = llvm.sub %608, %609  : i64
    %611 = llvm.inttoptr %610 : i64 to !llvm.ptr<i1>
    %612 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %613 = llvm.insertvalue %604, %612[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %614 = llvm.insertvalue %611, %613[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %615 = llvm.mlir.constant(0 : index) : i64
    %616 = llvm.insertvalue %615, %614[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %617 = llvm.insertvalue %591, %616[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %618 = llvm.insertvalue %592, %617[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %619 = llvm.insertvalue %593, %618[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %620 = llvm.insertvalue %594, %619[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %621 = llvm.insertvalue %596, %620[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %622 = llvm.insertvalue %593, %621[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %623 = llvm.insertvalue %594, %622[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %624 = llvm.insertvalue %595, %623[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %625 = llvm.mlir.constant(0 : index) : i64
    %626 = llvm.mlir.constant(1 : index) : i64
    %627 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%625 : i64)
  ^bb85(%628: i64):  // 2 preds: ^bb84, ^bb95
    %629 = llvm.icmp "slt" %628, %626 : i64
    llvm.cond_br %629, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %630 = llvm.mlir.constant(0 : index) : i64
    %631 = llvm.mlir.constant(1 : index) : i64
    %632 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%630 : i64)
  ^bb87(%633: i64):  // 2 preds: ^bb86, ^bb94
    %634 = llvm.icmp "slt" %633, %631 : i64
    llvm.cond_br %634, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %635 = llvm.mlir.constant(0 : index) : i64
    %636 = llvm.mlir.constant(4 : index) : i64
    %637 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%635 : i64)
  ^bb89(%638: i64):  // 2 preds: ^bb88, ^bb93
    %639 = llvm.icmp "slt" %638, %636 : i64
    llvm.cond_br %639, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %640 = llvm.mlir.constant(0 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%640 : i64)
  ^bb91(%643: i64):  // 2 preds: ^bb90, ^bb92
    %644 = llvm.icmp "slt" %643, %641 : i64
    llvm.cond_br %644, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %645 = llvm.extractvalue %548[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %646 = llvm.extractvalue %548[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %647 = llvm.mul %628, %646  : i64
    %648 = llvm.extractvalue %548[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %649 = llvm.mul %633, %648  : i64
    %650 = llvm.add %647, %649  : i64
    %651 = llvm.extractvalue %548[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %652 = llvm.mul %638, %651  : i64
    %653 = llvm.add %650, %652  : i64
    %654 = llvm.add %653, %643  : i64
    %655 = llvm.getelementptr %645[%654] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %656 = llvm.load %655 : !llvm.ptr<i32>
    %657 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %658 = llvm.add %49, %49  : i64
    %659 = llvm.add %658, %49  : i64
    %660 = llvm.add %659, %49  : i64
    %661 = llvm.getelementptr %657[%660] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %662 = llvm.load %661 : !llvm.ptr<i32>
    %663 = llvm.icmp "sgt" %656, %662 : i32
    %664 = llvm.extractvalue %624[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %665 = llvm.mlir.constant(4 : index) : i64
    %666 = llvm.mul %628, %665  : i64
    %667 = llvm.mlir.constant(4 : index) : i64
    %668 = llvm.mul %633, %667  : i64
    %669 = llvm.add %666, %668  : i64
    %670 = llvm.add %669, %638  : i64
    %671 = llvm.add %670, %643  : i64
    %672 = llvm.getelementptr %664[%671] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %663, %672 : !llvm.ptr<i1>
    %673 = llvm.add %643, %642  : i64
    llvm.br ^bb91(%673 : i64)
  ^bb93:  // pred: ^bb91
    %674 = llvm.add %638, %637  : i64
    llvm.br ^bb89(%674 : i64)
  ^bb94:  // pred: ^bb89
    %675 = llvm.add %633, %632  : i64
    llvm.br ^bb87(%675 : i64)
  ^bb95:  // pred: ^bb87
    %676 = llvm.add %628, %627  : i64
    llvm.br ^bb85(%676 : i64)
  ^bb96:  // pred: ^bb85
    %677 = llvm.mlir.constant(1 : index) : i64
    %678 = llvm.mlir.constant(1 : index) : i64
    %679 = llvm.mlir.constant(4 : index) : i64
    %680 = llvm.mlir.constant(1 : index) : i64
    %681 = llvm.mlir.constant(1 : index) : i64
    %682 = llvm.mlir.constant(4 : index) : i64
    %683 = llvm.mlir.constant(4 : index) : i64
    %684 = llvm.mlir.null : !llvm.ptr<i32>
    %685 = llvm.getelementptr %684[%683] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %686 = llvm.ptrtoint %685 : !llvm.ptr<i32> to i64
    %687 = llvm.mlir.constant(16 : index) : i64
    %688 = llvm.add %686, %687  : i64
    %689 = llvm.call @malloc(%688) : (i64) -> !llvm.ptr<i8>
    %690 = llvm.bitcast %689 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %691 = llvm.ptrtoint %690 : !llvm.ptr<i32> to i64
    %692 = llvm.mlir.constant(1 : index) : i64
    %693 = llvm.sub %687, %692  : i64
    %694 = llvm.add %691, %693  : i64
    %695 = llvm.urem %694, %687  : i64
    %696 = llvm.sub %694, %695  : i64
    %697 = llvm.inttoptr %696 : i64 to !llvm.ptr<i32>
    %698 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %699 = llvm.insertvalue %690, %698[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %700 = llvm.insertvalue %697, %699[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %701 = llvm.mlir.constant(0 : index) : i64
    %702 = llvm.insertvalue %701, %700[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %703 = llvm.insertvalue %677, %702[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %704 = llvm.insertvalue %678, %703[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %705 = llvm.insertvalue %679, %704[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %706 = llvm.insertvalue %680, %705[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %707 = llvm.insertvalue %682, %706[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %708 = llvm.insertvalue %679, %707[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %709 = llvm.insertvalue %680, %708[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %710 = llvm.insertvalue %681, %709[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %711 = llvm.mlir.constant(0 : index) : i64
    %712 = llvm.mlir.constant(1 : index) : i64
    %713 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%711 : i64)
  ^bb97(%714: i64):  // 2 preds: ^bb96, ^bb107
    %715 = llvm.icmp "slt" %714, %712 : i64
    llvm.cond_br %715, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %716 = llvm.mlir.constant(0 : index) : i64
    %717 = llvm.mlir.constant(1 : index) : i64
    %718 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%716 : i64)
  ^bb99(%719: i64):  // 2 preds: ^bb98, ^bb106
    %720 = llvm.icmp "slt" %719, %717 : i64
    llvm.cond_br %720, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %721 = llvm.mlir.constant(0 : index) : i64
    %722 = llvm.mlir.constant(4 : index) : i64
    %723 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%721 : i64)
  ^bb101(%724: i64):  // 2 preds: ^bb100, ^bb105
    %725 = llvm.icmp "slt" %724, %722 : i64
    llvm.cond_br %725, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %726 = llvm.mlir.constant(0 : index) : i64
    %727 = llvm.mlir.constant(1 : index) : i64
    %728 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%726 : i64)
  ^bb103(%729: i64):  // 2 preds: ^bb102, ^bb104
    %730 = llvm.icmp "slt" %729, %727 : i64
    llvm.cond_br %730, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %731 = llvm.extractvalue %548[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %732 = llvm.extractvalue %548[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %733 = llvm.mul %714, %732  : i64
    %734 = llvm.extractvalue %548[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %735 = llvm.mul %719, %734  : i64
    %736 = llvm.add %733, %735  : i64
    %737 = llvm.extractvalue %548[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %738 = llvm.mul %724, %737  : i64
    %739 = llvm.add %736, %738  : i64
    %740 = llvm.add %739, %729  : i64
    %741 = llvm.getelementptr %731[%740] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %742 = llvm.load %741 : !llvm.ptr<i32>
    %743 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %744 = llvm.mlir.constant(4 : index) : i64
    %745 = llvm.mul %49, %744  : i64
    %746 = llvm.mlir.constant(4 : index) : i64
    %747 = llvm.mul %49, %746  : i64
    %748 = llvm.add %745, %747  : i64
    %749 = llvm.add %748, %724  : i64
    %750 = llvm.add %749, %49  : i64
    %751 = llvm.getelementptr %743[%750] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %752 = llvm.load %751 : !llvm.ptr<i32>
    %753 = llvm.mul %742, %752  : i32
    %754 = llvm.extractvalue %710[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %755 = llvm.mlir.constant(4 : index) : i64
    %756 = llvm.mul %714, %755  : i64
    %757 = llvm.mlir.constant(4 : index) : i64
    %758 = llvm.mul %719, %757  : i64
    %759 = llvm.add %756, %758  : i64
    %760 = llvm.add %759, %724  : i64
    %761 = llvm.add %760, %729  : i64
    %762 = llvm.getelementptr %754[%761] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %753, %762 : !llvm.ptr<i32>
    %763 = llvm.add %729, %728  : i64
    llvm.br ^bb103(%763 : i64)
  ^bb105:  // pred: ^bb103
    %764 = llvm.add %724, %723  : i64
    llvm.br ^bb101(%764 : i64)
  ^bb106:  // pred: ^bb101
    %765 = llvm.add %719, %718  : i64
    llvm.br ^bb99(%765 : i64)
  ^bb107:  // pred: ^bb99
    %766 = llvm.add %714, %713  : i64
    llvm.br ^bb97(%766 : i64)
  ^bb108:  // pred: ^bb97
    %767 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %768 = llvm.insertvalue %310, %767[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %769 = llvm.insertvalue %624, %768[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %770 = llvm.insertvalue %710, %769[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %770 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v6_0", "v5_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v8_0", "v0_0", "v2_0"]} {
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
    %48 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %48, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %129) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %167 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %168 = llvm.extractvalue %167[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %169 = llvm.extractvalue %167[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %170 = llvm.extractvalue %167[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %171 = llvm.mlir.constant(3 : i64) : i64
    %172 = llvm.mlir.constant(24 : i64) : i64
    %173 = llvm.call @malloc(%172) : (i64) -> !llvm.ptr<i8>
    %174 = llvm.bitcast %173 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %175 = llvm.mlir.constant(4 : i64) : i64
    %176 = llvm.call @omTensorCreateUntyped(%175) : (i64) -> !llvm.ptr<i8>
    %177 = llvm.mlir.constant(1 : i64) : i64
    %178 = llvm.extractvalue %168[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.bitcast %178 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %180 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.bitcast %180 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%176, %177, %179, %181) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %182 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%176, %182) : (!llvm.ptr<i8>, i64) -> ()
    %183 = llvm.call @omTensorGetShape(%176) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %184 = llvm.call @omTensorGetStrides(%176) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %185 = llvm.mlir.constant(0 : i64) : i64
    %186 = llvm.extractvalue %168[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.getelementptr %183[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %186, %187 : !llvm.ptr<i64>
    %188 = llvm.extractvalue %168[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.getelementptr %184[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %188, %189 : !llvm.ptr<i64>
    %190 = llvm.mlir.constant(1 : i64) : i64
    %191 = llvm.extractvalue %168[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.getelementptr %183[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %191, %192 : !llvm.ptr<i64>
    %193 = llvm.extractvalue %168[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.getelementptr %184[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %193, %194 : !llvm.ptr<i64>
    %195 = llvm.mlir.constant(2 : i64) : i64
    %196 = llvm.extractvalue %168[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.getelementptr %183[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %196, %197 : !llvm.ptr<i64>
    %198 = llvm.extractvalue %168[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.getelementptr %184[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %198, %199 : !llvm.ptr<i64>
    %200 = llvm.mlir.constant(3 : i64) : i64
    %201 = llvm.extractvalue %168[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.getelementptr %183[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %201, %202 : !llvm.ptr<i64>
    %203 = llvm.extractvalue %168[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.getelementptr %184[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %203, %204 : !llvm.ptr<i64>
    %205 = llvm.mlir.constant(0 : i64) : i64
    %206 = llvm.getelementptr %174[%205] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %176, %206 : !llvm.ptr<ptr<i8>>
    %207 = llvm.mlir.constant(4 : i64) : i64
    %208 = llvm.call @omTensorCreateUntyped(%207) : (i64) -> !llvm.ptr<i8>
    %209 = llvm.mlir.constant(1 : i64) : i64
    %210 = llvm.extractvalue %169[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.bitcast %210 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %212 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.bitcast %212 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%208, %209, %211, %213) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %214 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%208, %214) : (!llvm.ptr<i8>, i64) -> ()
    %215 = llvm.call @omTensorGetShape(%208) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %216 = llvm.call @omTensorGetStrides(%208) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %217 = llvm.mlir.constant(0 : i64) : i64
    %218 = llvm.extractvalue %169[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.getelementptr %215[%217] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %218, %219 : !llvm.ptr<i64>
    %220 = llvm.extractvalue %169[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.getelementptr %216[%217] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %220, %221 : !llvm.ptr<i64>
    %222 = llvm.mlir.constant(1 : i64) : i64
    %223 = llvm.extractvalue %169[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.getelementptr %215[%222] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %223, %224 : !llvm.ptr<i64>
    %225 = llvm.extractvalue %169[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.getelementptr %216[%222] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %225, %226 : !llvm.ptr<i64>
    %227 = llvm.mlir.constant(2 : i64) : i64
    %228 = llvm.extractvalue %169[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.getelementptr %215[%227] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %228, %229 : !llvm.ptr<i64>
    %230 = llvm.extractvalue %169[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.getelementptr %216[%227] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %230, %231 : !llvm.ptr<i64>
    %232 = llvm.mlir.constant(3 : i64) : i64
    %233 = llvm.extractvalue %169[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.getelementptr %215[%232] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %233, %234 : !llvm.ptr<i64>
    %235 = llvm.extractvalue %169[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.getelementptr %216[%232] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %235, %236 : !llvm.ptr<i64>
    %237 = llvm.mlir.constant(1 : i64) : i64
    %238 = llvm.getelementptr %174[%237] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %208, %238 : !llvm.ptr<ptr<i8>>
    %239 = llvm.mlir.constant(4 : i64) : i64
    %240 = llvm.call @omTensorCreateUntyped(%239) : (i64) -> !llvm.ptr<i8>
    %241 = llvm.mlir.constant(1 : i64) : i64
    %242 = llvm.extractvalue %170[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.bitcast %242 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %244 = llvm.extractvalue %170[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.bitcast %244 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%240, %241, %243, %245) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %246 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%240, %246) : (!llvm.ptr<i8>, i64) -> ()
    %247 = llvm.call @omTensorGetShape(%240) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %248 = llvm.call @omTensorGetStrides(%240) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %249 = llvm.mlir.constant(0 : i64) : i64
    %250 = llvm.extractvalue %170[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.getelementptr %247[%249] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %250, %251 : !llvm.ptr<i64>
    %252 = llvm.extractvalue %170[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.getelementptr %248[%249] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %252, %253 : !llvm.ptr<i64>
    %254 = llvm.mlir.constant(1 : i64) : i64
    %255 = llvm.extractvalue %170[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.getelementptr %247[%254] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %255, %256 : !llvm.ptr<i64>
    %257 = llvm.extractvalue %170[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.getelementptr %248[%254] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %257, %258 : !llvm.ptr<i64>
    %259 = llvm.mlir.constant(2 : i64) : i64
    %260 = llvm.extractvalue %170[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.getelementptr %247[%259] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %260, %261 : !llvm.ptr<i64>
    %262 = llvm.extractvalue %170[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.getelementptr %248[%259] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %262, %263 : !llvm.ptr<i64>
    %264 = llvm.mlir.constant(3 : i64) : i64
    %265 = llvm.extractvalue %170[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.getelementptr %247[%264] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %265, %266 : !llvm.ptr<i64>
    %267 = llvm.extractvalue %170[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.getelementptr %248[%264] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %267, %268 : !llvm.ptr<i64>
    %269 = llvm.mlir.constant(2 : i64) : i64
    %270 = llvm.getelementptr %174[%269] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %240, %270 : !llvm.ptr<ptr<i8>>
    %271 = llvm.call @omTensorListCreate(%174, %171, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %271 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<282 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<282 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<210 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<210 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

