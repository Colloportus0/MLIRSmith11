module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 87 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 30 , 3] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 90 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[1, 90, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 90, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v7_0", "v6_0", "v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v1_0"]} {
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
    %50 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %51 = llvm.bitcast %50 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %53 = llvm.insertvalue %51, %52[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(4 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %62 = llvm.bitcast %61 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %64 = llvm.insertvalue %62, %63[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %68 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %69 = llvm.bitcast %68 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %70 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %71 = llvm.insertvalue %69, %70[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.mlir.constant(4 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(90 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(90 : index) : i64
    %85 = llvm.mlir.null : !llvm.ptr<i32>
    %86 = llvm.getelementptr %85[%84] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %87 = llvm.ptrtoint %86 : !llvm.ptr<i32> to i64
    %88 = llvm.mlir.constant(16 : index) : i64
    %89 = llvm.add %87, %88  : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %92 = llvm.ptrtoint %91 : !llvm.ptr<i32> to i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.sub %88, %93  : i64
    %95 = llvm.add %92, %94  : i64
    %96 = llvm.urem %95, %88  : i64
    %97 = llvm.sub %95, %96  : i64
    %98 = llvm.inttoptr %97 : i64 to !llvm.ptr<i32>
    %99 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %100 = llvm.insertvalue %91, %99[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %98, %100[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.insertvalue %102, %101[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %79, %103[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %80, %104[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %81, %105[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %82, %106[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %80, %107[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %81, %108[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %82, %109[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %83, %110[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%112 : i64)
  ^bb1(%115: i64):  // 2 preds: ^bb0, ^bb11
    %116 = llvm.icmp "slt" %115, %113 : i64
    llvm.cond_br %116, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(87 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%117 : i64)
  ^bb3(%120: i64):  // 2 preds: ^bb2, ^bb10
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%122 : i64)
  ^bb5(%125: i64):  // 2 preds: ^bb4, ^bb9
    %126 = llvm.icmp "slt" %125, %123 : i64
    llvm.cond_br %126, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%127 : i64)
  ^bb7(%130: i64):  // 2 preds: ^bb6, ^bb8
    %131 = llvm.icmp "slt" %130, %128 : i64
    llvm.cond_br %131, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %132 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.mlir.constant(87 : index) : i64
    %134 = llvm.mul %115, %133  : i64
    %135 = llvm.add %134, %120  : i64
    %136 = llvm.add %135, %125  : i64
    %137 = llvm.add %136, %130  : i64
    %138 = llvm.getelementptr %132[%137] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %139 = llvm.load %138 : !llvm.ptr<i32>
    %140 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.mlir.constant(90 : index) : i64
    %142 = llvm.mul %115, %141  : i64
    %143 = llvm.add %142, %120  : i64
    %144 = llvm.add %143, %125  : i64
    %145 = llvm.add %144, %130  : i64
    %146 = llvm.getelementptr %140[%145] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %139, %146 : !llvm.ptr<i32>
    %147 = llvm.add %130, %129  : i64
    llvm.br ^bb7(%147 : i64)
  ^bb9:  // pred: ^bb7
    %148 = llvm.add %125, %124  : i64
    llvm.br ^bb5(%148 : i64)
  ^bb10:  // pred: ^bb5
    %149 = llvm.add %120, %119  : i64
    llvm.br ^bb3(%149 : i64)
  ^bb11:  // pred: ^bb3
    %150 = llvm.add %115, %114  : i64
    llvm.br ^bb1(%150 : i64)
  ^bb12:  // pred: ^bb1
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%151 : i64)
  ^bb13(%154: i64):  // 2 preds: ^bb12, ^bb23
    %155 = llvm.icmp "slt" %154, %152 : i64
    llvm.cond_br %155, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%156 : i64)
  ^bb15(%159: i64):  // 2 preds: ^bb14, ^bb22
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%161 : i64)
  ^bb17(%164: i64):  // 2 preds: ^bb16, ^bb21
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%166 : i64)
  ^bb19(%169: i64):  // 2 preds: ^bb18, ^bb20
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %171 = llvm.mlir.constant(87 : index) : i64
    %172 = llvm.add %159, %171  : i64
    %173 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.add %154, %159  : i64
    %175 = llvm.add %174, %164  : i64
    %176 = llvm.add %175, %169  : i64
    %177 = llvm.getelementptr %173[%176] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %178 = llvm.load %177 : !llvm.ptr<i32>
    %179 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.mlir.constant(90 : index) : i64
    %181 = llvm.mul %154, %180  : i64
    %182 = llvm.add %181, %172  : i64
    %183 = llvm.add %182, %164  : i64
    %184 = llvm.add %183, %169  : i64
    %185 = llvm.getelementptr %179[%184] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %178, %185 : !llvm.ptr<i32>
    %186 = llvm.add %169, %168  : i64
    llvm.br ^bb19(%186 : i64)
  ^bb21:  // pred: ^bb19
    %187 = llvm.add %164, %163  : i64
    llvm.br ^bb17(%187 : i64)
  ^bb22:  // pred: ^bb17
    %188 = llvm.add %159, %158  : i64
    llvm.br ^bb15(%188 : i64)
  ^bb23:  // pred: ^bb15
    %189 = llvm.add %154, %153  : i64
    llvm.br ^bb13(%189 : i64)
  ^bb24:  // pred: ^bb13
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%190 : i64)
  ^bb25(%193: i64):  // 2 preds: ^bb24, ^bb35
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%195 : i64)
  ^bb27(%198: i64):  // 2 preds: ^bb26, ^bb34
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%200 : i64)
  ^bb29(%203: i64):  // 2 preds: ^bb28, ^bb33
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%205 : i64)
  ^bb31(%208: i64):  // 2 preds: ^bb30, ^bb32
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %210 = llvm.mlir.constant(88 : index) : i64
    %211 = llvm.add %198, %210  : i64
    %212 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.add %193, %198  : i64
    %214 = llvm.add %213, %203  : i64
    %215 = llvm.add %214, %208  : i64
    %216 = llvm.getelementptr %212[%215] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %217 = llvm.load %216 : !llvm.ptr<i32>
    %218 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.mlir.constant(90 : index) : i64
    %220 = llvm.mul %193, %219  : i64
    %221 = llvm.add %220, %211  : i64
    %222 = llvm.add %221, %203  : i64
    %223 = llvm.add %222, %208  : i64
    %224 = llvm.getelementptr %218[%223] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %217, %224 : !llvm.ptr<i32>
    %225 = llvm.add %208, %207  : i64
    llvm.br ^bb31(%225 : i64)
  ^bb33:  // pred: ^bb31
    %226 = llvm.add %203, %202  : i64
    llvm.br ^bb29(%226 : i64)
  ^bb34:  // pred: ^bb29
    %227 = llvm.add %198, %197  : i64
    llvm.br ^bb27(%227 : i64)
  ^bb35:  // pred: ^bb27
    %228 = llvm.add %193, %192  : i64
    llvm.br ^bb25(%228 : i64)
  ^bb36:  // pred: ^bb25
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%229 : i64)
  ^bb37(%232: i64):  // 2 preds: ^bb36, ^bb47
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%234 : i64)
  ^bb39(%237: i64):  // 2 preds: ^bb38, ^bb46
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%239 : i64)
  ^bb41(%242: i64):  // 2 preds: ^bb40, ^bb45
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%244 : i64)
  ^bb43(%247: i64):  // 2 preds: ^bb42, ^bb44
    %248 = llvm.icmp "slt" %247, %245 : i64
    llvm.cond_br %248, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %249 = llvm.mlir.constant(89 : index) : i64
    %250 = llvm.add %237, %249  : i64
    %251 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.add %232, %237  : i64
    %253 = llvm.add %252, %242  : i64
    %254 = llvm.add %253, %247  : i64
    %255 = llvm.getelementptr %251[%254] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %256 = llvm.load %255 : !llvm.ptr<i32>
    %257 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.mlir.constant(90 : index) : i64
    %259 = llvm.mul %232, %258  : i64
    %260 = llvm.add %259, %250  : i64
    %261 = llvm.add %260, %242  : i64
    %262 = llvm.add %261, %247  : i64
    %263 = llvm.getelementptr %257[%262] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %256, %263 : !llvm.ptr<i32>
    %264 = llvm.add %247, %246  : i64
    llvm.br ^bb43(%264 : i64)
  ^bb45:  // pred: ^bb43
    %265 = llvm.add %242, %241  : i64
    llvm.br ^bb41(%265 : i64)
  ^bb46:  // pred: ^bb41
    %266 = llvm.add %237, %236  : i64
    llvm.br ^bb39(%266 : i64)
  ^bb47:  // pred: ^bb39
    %267 = llvm.add %232, %231  : i64
    llvm.br ^bb37(%267 : i64)
  ^bb48:  // pred: ^bb37
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.mlir.constant(90 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.mlir.constant(1 : index) : i64
    %273 = llvm.mlir.constant(90 : index) : i64
    %274 = llvm.mlir.null : !llvm.ptr<i32>
    %275 = llvm.getelementptr %274[%273] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %276 = llvm.ptrtoint %275 : !llvm.ptr<i32> to i64
    %277 = llvm.mlir.constant(16 : index) : i64
    %278 = llvm.add %276, %277  : i64
    %279 = llvm.call @malloc(%278) : (i64) -> !llvm.ptr<i8>
    %280 = llvm.bitcast %279 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %281 = llvm.ptrtoint %280 : !llvm.ptr<i32> to i64
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.sub %277, %282  : i64
    %284 = llvm.add %281, %283  : i64
    %285 = llvm.urem %284, %277  : i64
    %286 = llvm.sub %284, %285  : i64
    %287 = llvm.inttoptr %286 : i64 to !llvm.ptr<i32>
    %288 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %289 = llvm.insertvalue %280, %288[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.insertvalue %287, %289[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.insertvalue %291, %290[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.insertvalue %268, %292[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.insertvalue %269, %293[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.insertvalue %270, %294[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %271, %295[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %269, %296[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %270, %297[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %271, %298[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %272, %299[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%301 : i64)
  ^bb49(%304: i64):  // 2 preds: ^bb48, ^bb59
    %305 = llvm.icmp "slt" %304, %302 : i64
    llvm.cond_br %305, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %306 = llvm.mlir.constant(0 : index) : i64
    %307 = llvm.mlir.constant(90 : index) : i64
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
    %321 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.mlir.constant(90 : index) : i64
    %323 = llvm.mul %304, %322  : i64
    %324 = llvm.add %323, %309  : i64
    %325 = llvm.add %324, %314  : i64
    %326 = llvm.add %325, %319  : i64
    %327 = llvm.getelementptr %321[%326] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %328 = llvm.load %327 : !llvm.ptr<i32>
    %329 = llvm.mlir.constant(false) : i1
    %330 = "llvm.intr.abs"(%328, %329) : (i32, i1) -> i32
    %331 = llvm.extractvalue %300[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.mlir.constant(90 : index) : i64
    %333 = llvm.mul %304, %332  : i64
    %334 = llvm.add %333, %309  : i64
    %335 = llvm.add %334, %314  : i64
    %336 = llvm.add %335, %319  : i64
    %337 = llvm.getelementptr %331[%336] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %330, %337 : !llvm.ptr<i32>
    %338 = llvm.add %319, %318  : i64
    llvm.br ^bb55(%338 : i64)
  ^bb57:  // pred: ^bb55
    %339 = llvm.add %314, %313  : i64
    llvm.br ^bb53(%339 : i64)
  ^bb58:  // pred: ^bb53
    %340 = llvm.add %309, %308  : i64
    llvm.br ^bb51(%340 : i64)
  ^bb59:  // pred: ^bb51
    %341 = llvm.add %304, %303  : i64
    llvm.br ^bb49(%341 : i64)
  ^bb60:  // pred: ^bb49
    %342 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %343 = llvm.extractvalue %300[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.extractvalue %300[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %343, %342[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %346 = llvm.insertvalue %344, %345[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.insertvalue %347, %346[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %349 = llvm.mlir.constant(30 : index) : i64
    %350 = llvm.insertvalue %349, %348[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %351 = llvm.mlir.constant(3 : index) : i64
    %352 = llvm.insertvalue %351, %350[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %353 = llvm.mlir.constant(3 : index) : i64
    %354 = llvm.insertvalue %353, %352[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.insertvalue %355, %354[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mlir.constant(30 : index) : i64
    %360 = llvm.mlir.constant(3 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    %362 = llvm.mlir.constant(90 : index) : i64
    %363 = llvm.mlir.constant(90 : index) : i64
    %364 = llvm.mlir.constant(90 : index) : i64
    %365 = llvm.mlir.null : !llvm.ptr<i32>
    %366 = llvm.getelementptr %365[%364] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %367 = llvm.ptrtoint %366 : !llvm.ptr<i32> to i64
    %368 = llvm.mlir.constant(16 : index) : i64
    %369 = llvm.add %367, %368  : i64
    %370 = llvm.call @malloc(%369) : (i64) -> !llvm.ptr<i8>
    %371 = llvm.bitcast %370 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %372 = llvm.ptrtoint %371 : !llvm.ptr<i32> to i64
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.sub %368, %373  : i64
    %375 = llvm.add %372, %374  : i64
    %376 = llvm.urem %375, %368  : i64
    %377 = llvm.sub %375, %376  : i64
    %378 = llvm.inttoptr %377 : i64 to !llvm.ptr<i32>
    %379 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %380 = llvm.insertvalue %371, %379[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %378, %380[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.mlir.constant(0 : index) : i64
    %383 = llvm.insertvalue %382, %381[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.insertvalue %357, %383[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.insertvalue %358, %384[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %359, %385[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.insertvalue %360, %386[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.insertvalue %363, %387[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.insertvalue %362, %388[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.insertvalue %360, %389[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.insertvalue %361, %390[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.mlir.constant(0 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%392 : i64)
  ^bb61(%395: i64):  // 2 preds: ^bb60, ^bb71
    %396 = llvm.icmp "slt" %395, %393 : i64
    llvm.cond_br %396, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%397 : i64)
  ^bb63(%400: i64):  // 2 preds: ^bb62, ^bb70
    %401 = llvm.icmp "slt" %400, %398 : i64
    llvm.cond_br %401, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(30 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%402 : i64)
  ^bb65(%405: i64):  // 2 preds: ^bb64, ^bb69
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.mlir.constant(3 : index) : i64
    %409 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%407 : i64)
  ^bb67(%410: i64):  // 2 preds: ^bb66, ^bb68
    %411 = llvm.icmp "slt" %410, %408 : i64
    llvm.cond_br %411, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %412 = llvm.extractvalue %356[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %413 = llvm.mlir.constant(3 : index) : i64
    %414 = llvm.mul %405, %413  : i64
    %415 = llvm.add %414, %410  : i64
    %416 = llvm.getelementptr %412[%415] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %417 = llvm.load %416 : !llvm.ptr<i32>
    %418 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.add %395, %400  : i64
    %420 = llvm.add %419, %49  : i64
    %421 = llvm.add %420, %49  : i64
    %422 = llvm.getelementptr %418[%421] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %423 = llvm.load %422 : !llvm.ptr<i32>
    %424 = llvm.mul %417, %423  : i32
    %425 = llvm.extractvalue %391[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.mlir.constant(90 : index) : i64
    %427 = llvm.mul %395, %426  : i64
    %428 = llvm.mlir.constant(90 : index) : i64
    %429 = llvm.mul %400, %428  : i64
    %430 = llvm.add %427, %429  : i64
    %431 = llvm.mlir.constant(3 : index) : i64
    %432 = llvm.mul %405, %431  : i64
    %433 = llvm.add %430, %432  : i64
    %434 = llvm.add %433, %410  : i64
    %435 = llvm.getelementptr %425[%434] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %424, %435 : !llvm.ptr<i32>
    %436 = llvm.add %410, %409  : i64
    llvm.br ^bb67(%436 : i64)
  ^bb69:  // pred: ^bb67
    %437 = llvm.add %405, %404  : i64
    llvm.br ^bb65(%437 : i64)
  ^bb70:  // pred: ^bb65
    %438 = llvm.add %400, %399  : i64
    llvm.br ^bb63(%438 : i64)
  ^bb71:  // pred: ^bb63
    %439 = llvm.add %395, %394  : i64
    llvm.br ^bb61(%439 : i64)
  ^bb72:  // pred: ^bb61
    %440 = llvm.mlir.constant(4 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.null : !llvm.ptr<i64>
    %443 = llvm.getelementptr %442[%440] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %444 = llvm.ptrtoint %443 : !llvm.ptr<i64> to i64
    %445 = llvm.mlir.constant(16 : index) : i64
    %446 = llvm.add %444, %445  : i64
    %447 = llvm.call @malloc(%446) : (i64) -> !llvm.ptr<i8>
    %448 = llvm.bitcast %447 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %449 = llvm.ptrtoint %448 : !llvm.ptr<i64> to i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.sub %445, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.urem %452, %445  : i64
    %454 = llvm.sub %452, %453  : i64
    %455 = llvm.inttoptr %454 : i64 to !llvm.ptr<i64>
    %456 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %457 = llvm.insertvalue %448, %456[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %458 = llvm.insertvalue %455, %457[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.insertvalue %459, %458[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.insertvalue %440, %460[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %462 = llvm.insertvalue %441, %461[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %463 = llvm.mlir.constant(0 : index) : i64
    %464 = llvm.mlir.constant(4 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%463 : i64)
  ^bb73(%466: i64):  // 2 preds: ^bb72, ^bb74
    %467 = llvm.icmp "slt" %466, %464 : i64
    llvm.cond_br %467, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %468 = llvm.extractvalue %462[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %469 = llvm.getelementptr %468[%466] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %48, %469 : !llvm.ptr<i64>
    %470 = llvm.add %466, %465  : i64
    llvm.br ^bb73(%470 : i64)
  ^bb75:  // pred: ^bb73
    %471 = llvm.mlir.constant(4 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.null : !llvm.ptr<i64>
    %474 = llvm.getelementptr %473[%471] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %475 = llvm.ptrtoint %474 : !llvm.ptr<i64> to i64
    %476 = llvm.mlir.constant(16 : index) : i64
    %477 = llvm.add %475, %476  : i64
    %478 = llvm.call @malloc(%477) : (i64) -> !llvm.ptr<i8>
    %479 = llvm.bitcast %478 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %480 = llvm.ptrtoint %479 : !llvm.ptr<i64> to i64
    %481 = llvm.mlir.constant(1 : index) : i64
    %482 = llvm.sub %476, %481  : i64
    %483 = llvm.add %480, %482  : i64
    %484 = llvm.urem %483, %476  : i64
    %485 = llvm.sub %483, %484  : i64
    %486 = llvm.inttoptr %485 : i64 to !llvm.ptr<i64>
    %487 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %488 = llvm.insertvalue %479, %487[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %489 = llvm.insertvalue %486, %488[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %490 = llvm.mlir.constant(0 : index) : i64
    %491 = llvm.insertvalue %490, %489[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %492 = llvm.insertvalue %471, %491[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %493 = llvm.insertvalue %472, %492[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.mlir.constant(4 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%494 : i64)
  ^bb76(%497: i64):  // 2 preds: ^bb75, ^bb77
    %498 = llvm.icmp "slt" %497, %495 : i64
    llvm.cond_br %498, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %499 = llvm.extractvalue %462[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %500 = llvm.getelementptr %499[%497] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %501 = llvm.load %500 : !llvm.ptr<i64>
    %502 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %503 = llvm.load %502 : !llvm.ptr<i64>
    %504 = llvm.mul %501, %503  : i64
    %505 = llvm.extractvalue %493[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %506 = llvm.getelementptr %505[%497] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %504, %506 : !llvm.ptr<i64>
    %507 = llvm.add %497, %496  : i64
    llvm.br ^bb76(%507 : i64)
  ^bb78:  // pred: ^bb76
    %508 = llvm.mlir.constant(4 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    %510 = llvm.mlir.null : !llvm.ptr<i1>
    %511 = llvm.getelementptr %510[%508] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %512 = llvm.ptrtoint %511 : !llvm.ptr<i1> to i64
    %513 = llvm.mlir.constant(16 : index) : i64
    %514 = llvm.add %512, %513  : i64
    %515 = llvm.call @malloc(%514) : (i64) -> !llvm.ptr<i8>
    %516 = llvm.bitcast %515 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %517 = llvm.ptrtoint %516 : !llvm.ptr<i1> to i64
    %518 = llvm.mlir.constant(1 : index) : i64
    %519 = llvm.sub %513, %518  : i64
    %520 = llvm.add %517, %519  : i64
    %521 = llvm.urem %520, %513  : i64
    %522 = llvm.sub %520, %521  : i64
    %523 = llvm.inttoptr %522 : i64 to !llvm.ptr<i1>
    %524 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %525 = llvm.insertvalue %516, %524[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %526 = llvm.insertvalue %523, %525[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %527 = llvm.mlir.constant(0 : index) : i64
    %528 = llvm.insertvalue %527, %526[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %529 = llvm.insertvalue %508, %528[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %530 = llvm.insertvalue %509, %529[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %531 = llvm.mlir.constant(0 : index) : i64
    %532 = llvm.mlir.constant(4 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%531 : i64)
  ^bb79(%534: i64):  // 2 preds: ^bb78, ^bb80
    %535 = llvm.icmp "slt" %534, %532 : i64
    llvm.cond_br %535, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %536 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %537 = llvm.getelementptr %536[%534] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %538 = llvm.load %537 : !llvm.ptr<i64>
    %539 = llvm.extractvalue %493[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %540 = llvm.getelementptr %539[%534] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %541 = llvm.load %540 : !llvm.ptr<i64>
    %542 = llvm.icmp "eq" %538, %541 : i64
    %543 = llvm.extractvalue %530[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %544 = llvm.getelementptr %543[%534] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %542, %544 : !llvm.ptr<i1>
    %545 = llvm.add %534, %533  : i64
    llvm.br ^bb79(%545 : i64)
  ^bb81:  // pred: ^bb79
    %546 = llvm.mlir.constant(4 : index) : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    %548 = llvm.mlir.null : !llvm.ptr<i64>
    %549 = llvm.getelementptr %548[%546] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %550 = llvm.ptrtoint %549 : !llvm.ptr<i64> to i64
    %551 = llvm.mlir.constant(16 : index) : i64
    %552 = llvm.add %550, %551  : i64
    %553 = llvm.call @malloc(%552) : (i64) -> !llvm.ptr<i8>
    %554 = llvm.bitcast %553 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %555 = llvm.ptrtoint %554 : !llvm.ptr<i64> to i64
    %556 = llvm.mlir.constant(1 : index) : i64
    %557 = llvm.sub %551, %556  : i64
    %558 = llvm.add %555, %557  : i64
    %559 = llvm.urem %558, %551  : i64
    %560 = llvm.sub %558, %559  : i64
    %561 = llvm.inttoptr %560 : i64 to !llvm.ptr<i64>
    %562 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %563 = llvm.insertvalue %554, %562[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %564 = llvm.insertvalue %561, %563[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %565 = llvm.mlir.constant(0 : index) : i64
    %566 = llvm.insertvalue %565, %564[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %567 = llvm.insertvalue %546, %566[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %568 = llvm.insertvalue %547, %567[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %569 = llvm.mlir.constant(0 : index) : i64
    %570 = llvm.mlir.constant(4 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%569 : i64)
  ^bb82(%572: i64):  // 2 preds: ^bb81, ^bb83
    %573 = llvm.icmp "slt" %572, %570 : i64
    llvm.cond_br %573, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %574 = llvm.extractvalue %530[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %575 = llvm.getelementptr %574[%572] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %576 = llvm.load %575 : !llvm.ptr<i1>
    %577 = llvm.extractvalue %462[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %578 = llvm.getelementptr %577[%572] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %579 = llvm.load %578 : !llvm.ptr<i64>
    %580 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %581 = llvm.getelementptr %580[%572] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %582 = llvm.load %581 : !llvm.ptr<i64>
    %583 = llvm.select %576, %579, %582 : i1, i64
    %584 = llvm.extractvalue %568[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %585 = llvm.getelementptr %584[%572] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %583, %585 : !llvm.ptr<i64>
    %586 = llvm.add %572, %571  : i64
    llvm.br ^bb82(%586 : i64)
  ^bb84:  // pred: ^bb82
    %587 = llvm.mlir.constant(1 : index) : i64
    %588 = llvm.mlir.constant(90 : index) : i64
    %589 = llvm.mlir.constant(1 : index) : i64
    %590 = llvm.mlir.constant(1 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    %592 = llvm.mlir.constant(90 : index) : i64
    %593 = llvm.mlir.null : !llvm.ptr<i32>
    %594 = llvm.getelementptr %593[%592] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %595 = llvm.ptrtoint %594 : !llvm.ptr<i32> to i64
    %596 = llvm.mlir.constant(16 : index) : i64
    %597 = llvm.add %595, %596  : i64
    %598 = llvm.call @malloc(%597) : (i64) -> !llvm.ptr<i8>
    %599 = llvm.bitcast %598 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %600 = llvm.ptrtoint %599 : !llvm.ptr<i32> to i64
    %601 = llvm.mlir.constant(1 : index) : i64
    %602 = llvm.sub %596, %601  : i64
    %603 = llvm.add %600, %602  : i64
    %604 = llvm.urem %603, %596  : i64
    %605 = llvm.sub %603, %604  : i64
    %606 = llvm.inttoptr %605 : i64 to !llvm.ptr<i32>
    %607 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %608 = llvm.insertvalue %599, %607[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %609 = llvm.insertvalue %606, %608[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %610 = llvm.mlir.constant(0 : index) : i64
    %611 = llvm.insertvalue %610, %609[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.insertvalue %587, %611[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.insertvalue %588, %612[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %614 = llvm.insertvalue %589, %613[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %615 = llvm.insertvalue %590, %614[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %616 = llvm.insertvalue %588, %615[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %617 = llvm.insertvalue %589, %616[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %618 = llvm.insertvalue %590, %617[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %619 = llvm.insertvalue %591, %618[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %620 = llvm.mlir.constant(0 : index) : i64
    %621 = llvm.mlir.constant(1 : index) : i64
    %622 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%620 : i64)
  ^bb85(%623: i64):  // 2 preds: ^bb84, ^bb95
    %624 = llvm.icmp "slt" %623, %621 : i64
    llvm.cond_br %624, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %625 = llvm.mlir.constant(0 : index) : i64
    %626 = llvm.mlir.constant(90 : index) : i64
    %627 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%625 : i64)
  ^bb87(%628: i64):  // 2 preds: ^bb86, ^bb94
    %629 = llvm.icmp "slt" %628, %626 : i64
    llvm.cond_br %629, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %630 = llvm.mlir.constant(0 : index) : i64
    %631 = llvm.mlir.constant(1 : index) : i64
    %632 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%630 : i64)
  ^bb89(%633: i64):  // 2 preds: ^bb88, ^bb93
    %634 = llvm.icmp "slt" %633, %631 : i64
    llvm.cond_br %634, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %635 = llvm.mlir.constant(0 : index) : i64
    %636 = llvm.mlir.constant(1 : index) : i64
    %637 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%635 : i64)
  ^bb91(%638: i64):  // 2 preds: ^bb90, ^bb92
    %639 = llvm.icmp "slt" %638, %636 : i64
    llvm.cond_br %639, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %640 = llvm.extractvalue %300[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %641 = llvm.mlir.constant(90 : index) : i64
    %642 = llvm.mul %49, %641  : i64
    %643 = llvm.add %642, %628  : i64
    %644 = llvm.add %643, %49  : i64
    %645 = llvm.add %644, %49  : i64
    %646 = llvm.getelementptr %640[%645] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %647 = llvm.load %646 : !llvm.ptr<i32>
    %648 = llvm.extractvalue %619[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %649 = llvm.mlir.constant(90 : index) : i64
    %650 = llvm.mul %623, %649  : i64
    %651 = llvm.add %650, %628  : i64
    %652 = llvm.add %651, %633  : i64
    %653 = llvm.add %652, %638  : i64
    %654 = llvm.getelementptr %648[%653] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %647, %654 : !llvm.ptr<i32>
    %655 = llvm.add %638, %637  : i64
    llvm.br ^bb91(%655 : i64)
  ^bb93:  // pred: ^bb91
    %656 = llvm.add %633, %632  : i64
    llvm.br ^bb89(%656 : i64)
  ^bb94:  // pred: ^bb89
    %657 = llvm.add %628, %627  : i64
    llvm.br ^bb87(%657 : i64)
  ^bb95:  // pred: ^bb87
    %658 = llvm.add %623, %622  : i64
    llvm.br ^bb85(%658 : i64)
  ^bb96:  // pred: ^bb85
    %659 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %660 = llvm.insertvalue %391, %659[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %661 = llvm.insertvalue %619, %660[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %661 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v7_0", "v6_0", "v5_0", "v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v1_0"]} {
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
    %48 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %48, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %129) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %167 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %168 = llvm.extractvalue %167[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %169 = llvm.extractvalue %167[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %170 = llvm.mlir.constant(2 : i64) : i64
    %171 = llvm.mlir.constant(16 : i64) : i64
    %172 = llvm.call @malloc(%171) : (i64) -> !llvm.ptr<i8>
    %173 = llvm.bitcast %172 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %174 = llvm.mlir.constant(4 : i64) : i64
    %175 = llvm.call @omTensorCreateUntyped(%174) : (i64) -> !llvm.ptr<i8>
    %176 = llvm.mlir.constant(1 : i64) : i64
    %177 = llvm.extractvalue %168[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.bitcast %177 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %179 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.bitcast %179 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%175, %176, %178, %180) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %181 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%175, %181) : (!llvm.ptr<i8>, i64) -> ()
    %182 = llvm.call @omTensorGetShape(%175) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %183 = llvm.call @omTensorGetStrides(%175) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %184 = llvm.mlir.constant(0 : i64) : i64
    %185 = llvm.extractvalue %168[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.getelementptr %182[%184] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %185, %186 : !llvm.ptr<i64>
    %187 = llvm.extractvalue %168[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.getelementptr %183[%184] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %187, %188 : !llvm.ptr<i64>
    %189 = llvm.mlir.constant(1 : i64) : i64
    %190 = llvm.extractvalue %168[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.getelementptr %182[%189] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %190, %191 : !llvm.ptr<i64>
    %192 = llvm.extractvalue %168[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.getelementptr %183[%189] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %192, %193 : !llvm.ptr<i64>
    %194 = llvm.mlir.constant(2 : i64) : i64
    %195 = llvm.extractvalue %168[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.getelementptr %182[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %195, %196 : !llvm.ptr<i64>
    %197 = llvm.extractvalue %168[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.getelementptr %183[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %197, %198 : !llvm.ptr<i64>
    %199 = llvm.mlir.constant(3 : i64) : i64
    %200 = llvm.extractvalue %168[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.getelementptr %182[%199] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %200, %201 : !llvm.ptr<i64>
    %202 = llvm.extractvalue %168[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.getelementptr %183[%199] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %202, %203 : !llvm.ptr<i64>
    %204 = llvm.mlir.constant(0 : i64) : i64
    %205 = llvm.getelementptr %173[%204] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %175, %205 : !llvm.ptr<ptr<i8>>
    %206 = llvm.mlir.constant(4 : i64) : i64
    %207 = llvm.call @omTensorCreateUntyped(%206) : (i64) -> !llvm.ptr<i8>
    %208 = llvm.mlir.constant(1 : i64) : i64
    %209 = llvm.extractvalue %169[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.bitcast %209 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %211 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.bitcast %211 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%207, %208, %210, %212) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %213 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%207, %213) : (!llvm.ptr<i8>, i64) -> ()
    %214 = llvm.call @omTensorGetShape(%207) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %215 = llvm.call @omTensorGetStrides(%207) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %216 = llvm.mlir.constant(0 : i64) : i64
    %217 = llvm.extractvalue %169[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.getelementptr %214[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %217, %218 : !llvm.ptr<i64>
    %219 = llvm.extractvalue %169[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.getelementptr %215[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %219, %220 : !llvm.ptr<i64>
    %221 = llvm.mlir.constant(1 : i64) : i64
    %222 = llvm.extractvalue %169[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.getelementptr %214[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %222, %223 : !llvm.ptr<i64>
    %224 = llvm.extractvalue %169[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.getelementptr %215[%221] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %224, %225 : !llvm.ptr<i64>
    %226 = llvm.mlir.constant(2 : i64) : i64
    %227 = llvm.extractvalue %169[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.getelementptr %214[%226] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %227, %228 : !llvm.ptr<i64>
    %229 = llvm.extractvalue %169[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.getelementptr %215[%226] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %229, %230 : !llvm.ptr<i64>
    %231 = llvm.mlir.constant(3 : i64) : i64
    %232 = llvm.extractvalue %169[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.getelementptr %214[%231] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %232, %233 : !llvm.ptr<i64>
    %234 = llvm.extractvalue %169[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.getelementptr %215[%231] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %234, %235 : !llvm.ptr<i64>
    %236 = llvm.mlir.constant(1 : i64) : i64
    %237 = llvm.getelementptr %173[%236] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %207, %237 : !llvm.ptr<ptr<i8>>
    %238 = llvm.call @omTensorListCreate(%173, %170, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %238 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<283 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<283 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<143 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<143 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

