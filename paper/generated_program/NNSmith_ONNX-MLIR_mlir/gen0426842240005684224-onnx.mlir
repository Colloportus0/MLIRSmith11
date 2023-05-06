module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v10_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v8_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [5 , 4 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 5 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 5 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<[[[4], [6]]]> : tensor<1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<1 x i32>>>
  llvm.mlir.global internal constant @constant_1(dense<[[[3], [6]]]> : tensor<1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<1 x i32>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: !llvm.ptr<i32>, %arg10: !llvm.ptr<i32>, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: !llvm.ptr<i32>, %arg19: !llvm.ptr<i32>, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: !llvm.ptr<i32>, %arg28: !llvm.ptr<i32>, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: i64, %arg34: i64, %arg35: i64, %arg36: i64, %arg37: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v10_0", "v8_0", "v7_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.insertvalue %arg6, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg7, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg8, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %11 = llvm.insertvalue %arg9, %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %13 = llvm.insertvalue %arg11, %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.insertvalue %arg15, %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.insertvalue %arg13, %15[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.insertvalue %arg14, %17[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %21 = llvm.insertvalue %arg18, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.insertvalue %arg19, %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.insertvalue %arg20, %22[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.insertvalue %arg21, %23[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.insertvalue %arg24, %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.insertvalue %arg22, %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.insertvalue %arg25, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.insertvalue %arg23, %27[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.insertvalue %arg26, %28[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %31 = llvm.insertvalue %arg27, %30[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %arg28, %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %arg29, %32[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %arg30, %33[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %arg34, %34[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.insertvalue %arg31, %35[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %arg35, %36[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %arg32, %37[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.insertvalue %arg36, %38[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %arg33, %39[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %arg37, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(0 : i32) : i32
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<2 x array<1 x i32>>>>
    %45 = llvm.bitcast %44 : !llvm.ptr<array<1 x array<2 x array<1 x i32>>>> to !llvm.ptr<i32>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.mlir.constant(2 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<2 x array<1 x i32>>>>
    %64 = llvm.bitcast %63 : !llvm.ptr<array<1 x array<2 x array<1 x i32>>>> to !llvm.ptr<i32>
    %65 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %66 = llvm.insertvalue %64, %65[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %67 = llvm.insertvalue %64, %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.insertvalue %68, %67[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.insertvalue %72, %71[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.insertvalue %74, %73[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.mlir.constant(5 : index) : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(10 : index) : i64
    %87 = llvm.mlir.null : !llvm.ptr<i32>
    %88 = llvm.getelementptr %87[%86] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %89 = llvm.ptrtoint %88 : !llvm.ptr<i32> to i64
    %90 = llvm.mlir.constant(16 : index) : i64
    %91 = llvm.add %89, %90  : i64
    %92 = llvm.call @malloc(%91) : (i64) -> !llvm.ptr<i8>
    %93 = llvm.bitcast %92 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %94 = llvm.ptrtoint %93 : !llvm.ptr<i32> to i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.sub %90, %95  : i64
    %97 = llvm.add %94, %96  : i64
    %98 = llvm.urem %97, %90  : i64
    %99 = llvm.sub %97, %98  : i64
    %100 = llvm.inttoptr %99 : i64 to !llvm.ptr<i32>
    %101 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %102 = llvm.insertvalue %93, %101[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %103 = llvm.insertvalue %100, %102[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.insertvalue %104, %103[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %106 = llvm.insertvalue %82, %105[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.insertvalue %83, %106[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %108 = llvm.insertvalue %84, %107[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.insertvalue %83, %108[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %110 = llvm.insertvalue %84, %109[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.insertvalue %85, %110[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.mlir.constant(0 : index) : i64
    %113 = llvm.mlir.constant(1 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%112 : i64)
  ^bb1(%115: i64):  // 2 preds: ^bb0, ^bb8
    %116 = llvm.icmp "slt" %115, %113 : i64
    llvm.cond_br %116, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%117 : i64)
  ^bb3(%120: i64):  // 2 preds: ^bb2, ^bb7
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%122 : i64)
  ^bb5(%125: i64):  // 2 preds: ^bb4, ^bb6
    %126 = llvm.icmp "slt" %125, %123 : i64
    llvm.cond_br %126, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %127 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mul %115, %128  : i64
    %130 = llvm.add %129, %120  : i64
    %131 = llvm.add %130, %125  : i64
    %132 = llvm.getelementptr %127[%131] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %133 = llvm.load %132 : !llvm.ptr<i32>
    %134 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mul %115, %135  : i64
    %137 = llvm.add %136, %120  : i64
    %138 = llvm.add %137, %125  : i64
    %139 = llvm.getelementptr %134[%138] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %133, %139 : !llvm.ptr<i32>
    %140 = llvm.add %125, %124  : i64
    llvm.br ^bb5(%140 : i64)
  ^bb7:  // pred: ^bb5
    %141 = llvm.add %120, %119  : i64
    llvm.br ^bb3(%141 : i64)
  ^bb8:  // pred: ^bb3
    %142 = llvm.add %115, %114  : i64
    llvm.br ^bb1(%142 : i64)
  ^bb9:  // pred: ^bb1
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%143 : i64)
  ^bb10(%146: i64):  // 2 preds: ^bb9, ^bb17
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb11, ^bb18
  ^bb11:  // pred: ^bb10
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%148 : i64)
  ^bb12(%151: i64):  // 2 preds: ^bb11, ^bb16
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb13, ^bb17
  ^bb13:  // pred: ^bb12
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%153 : i64)
  ^bb14(%156: i64):  // 2 preds: ^bb13, ^bb15
    %157 = llvm.icmp "slt" %156, %154 : i64
    llvm.cond_br %157, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.add %146, %158  : i64
    %160 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %161 = llvm.mlir.constant(2 : index) : i64
    %162 = llvm.mul %146, %161  : i64
    %163 = llvm.add %162, %151  : i64
    %164 = llvm.add %163, %156  : i64
    %165 = llvm.getelementptr %160[%164] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %166 = llvm.load %165 : !llvm.ptr<i32>
    %167 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %168 = llvm.mlir.constant(2 : index) : i64
    %169 = llvm.mul %159, %168  : i64
    %170 = llvm.add %169, %151  : i64
    %171 = llvm.add %170, %156  : i64
    %172 = llvm.getelementptr %167[%171] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %166, %172 : !llvm.ptr<i32>
    %173 = llvm.add %156, %155  : i64
    llvm.br ^bb14(%173 : i64)
  ^bb16:  // pred: ^bb14
    %174 = llvm.add %151, %150  : i64
    llvm.br ^bb12(%174 : i64)
  ^bb17:  // pred: ^bb12
    %175 = llvm.add %146, %145  : i64
    llvm.br ^bb10(%175 : i64)
  ^bb18:  // pred: ^bb10
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%176 : i64)
  ^bb19(%179: i64):  // 2 preds: ^bb18, ^bb26
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%181 : i64)
  ^bb21(%184: i64):  // 2 preds: ^bb20, ^bb25
    %185 = llvm.icmp "slt" %184, %182 : i64
    llvm.cond_br %185, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%186 : i64)
  ^bb23(%189: i64):  // 2 preds: ^bb22, ^bb24
    %190 = llvm.icmp "slt" %189, %187 : i64
    llvm.cond_br %190, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.add %179, %191  : i64
    %193 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mul %179, %194  : i64
    %196 = llvm.add %195, %184  : i64
    %197 = llvm.add %196, %189  : i64
    %198 = llvm.getelementptr %193[%197] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %199 = llvm.load %198 : !llvm.ptr<i32>
    %200 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mul %192, %201  : i64
    %203 = llvm.add %202, %184  : i64
    %204 = llvm.add %203, %189  : i64
    %205 = llvm.getelementptr %200[%204] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %199, %205 : !llvm.ptr<i32>
    %206 = llvm.add %189, %188  : i64
    llvm.br ^bb23(%206 : i64)
  ^bb25:  // pred: ^bb23
    %207 = llvm.add %184, %183  : i64
    llvm.br ^bb21(%207 : i64)
  ^bb26:  // pred: ^bb21
    %208 = llvm.add %179, %178  : i64
    llvm.br ^bb19(%208 : i64)
  ^bb27:  // pred: ^bb19
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%209 : i64)
  ^bb28(%212: i64):  // 2 preds: ^bb27, ^bb35
    %213 = llvm.icmp "slt" %212, %210 : i64
    llvm.cond_br %213, ^bb29, ^bb36
  ^bb29:  // pred: ^bb28
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%214 : i64)
  ^bb30(%217: i64):  // 2 preds: ^bb29, ^bb34
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb31, ^bb35
  ^bb31:  // pred: ^bb30
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%219 : i64)
  ^bb32(%222: i64):  // 2 preds: ^bb31, ^bb33
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb33, ^bb34
  ^bb33:  // pred: ^bb32
    %224 = llvm.mlir.constant(3 : index) : i64
    %225 = llvm.add %212, %224  : i64
    %226 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %227 = llvm.mlir.constant(2 : index) : i64
    %228 = llvm.mul %212, %227  : i64
    %229 = llvm.add %228, %217  : i64
    %230 = llvm.add %229, %222  : i64
    %231 = llvm.getelementptr %226[%230] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %232 = llvm.load %231 : !llvm.ptr<i32>
    %233 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %234 = llvm.mlir.constant(2 : index) : i64
    %235 = llvm.mul %225, %234  : i64
    %236 = llvm.add %235, %217  : i64
    %237 = llvm.add %236, %222  : i64
    %238 = llvm.getelementptr %233[%237] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %232, %238 : !llvm.ptr<i32>
    %239 = llvm.add %222, %221  : i64
    llvm.br ^bb32(%239 : i64)
  ^bb34:  // pred: ^bb32
    %240 = llvm.add %217, %216  : i64
    llvm.br ^bb30(%240 : i64)
  ^bb35:  // pred: ^bb30
    %241 = llvm.add %212, %211  : i64
    llvm.br ^bb28(%241 : i64)
  ^bb36:  // pred: ^bb28
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%242 : i64)
  ^bb37(%245: i64):  // 2 preds: ^bb36, ^bb44
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(2 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%247 : i64)
  ^bb39(%250: i64):  // 2 preds: ^bb38, ^bb43
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%252 : i64)
  ^bb41(%255: i64):  // 2 preds: ^bb40, ^bb42
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.add %245, %257  : i64
    %259 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mul %245, %260  : i64
    %262 = llvm.add %261, %250  : i64
    %263 = llvm.add %262, %255  : i64
    %264 = llvm.getelementptr %259[%263] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %265 = llvm.load %264 : !llvm.ptr<i32>
    %266 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %267 = llvm.mlir.constant(2 : index) : i64
    %268 = llvm.mul %258, %267  : i64
    %269 = llvm.add %268, %250  : i64
    %270 = llvm.add %269, %255  : i64
    %271 = llvm.getelementptr %266[%270] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %265, %271 : !llvm.ptr<i32>
    %272 = llvm.add %255, %254  : i64
    llvm.br ^bb41(%272 : i64)
  ^bb43:  // pred: ^bb41
    %273 = llvm.add %250, %249  : i64
    llvm.br ^bb39(%273 : i64)
  ^bb44:  // pred: ^bb39
    %274 = llvm.add %245, %244  : i64
    llvm.br ^bb37(%274 : i64)
  ^bb45:  // pred: ^bb37
    %275 = llvm.mlir.constant(5 : index) : i64
    %276 = llvm.mlir.constant(4 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(20 : index) : i64
    %280 = llvm.mlir.null : !llvm.ptr<i32>
    %281 = llvm.getelementptr %280[%279] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %282 = llvm.ptrtoint %281 : !llvm.ptr<i32> to i64
    %283 = llvm.mlir.constant(16 : index) : i64
    %284 = llvm.add %282, %283  : i64
    %285 = llvm.call @malloc(%284) : (i64) -> !llvm.ptr<i8>
    %286 = llvm.bitcast %285 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %287 = llvm.ptrtoint %286 : !llvm.ptr<i32> to i64
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.sub %283, %288  : i64
    %290 = llvm.add %287, %289  : i64
    %291 = llvm.urem %290, %283  : i64
    %292 = llvm.sub %290, %291  : i64
    %293 = llvm.inttoptr %292 : i64 to !llvm.ptr<i32>
    %294 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %295 = llvm.insertvalue %286, %294[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %296 = llvm.insertvalue %293, %295[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.insertvalue %297, %296[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %299 = llvm.insertvalue %275, %298[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %300 = llvm.insertvalue %276, %299[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %301 = llvm.insertvalue %277, %300[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %302 = llvm.insertvalue %276, %301[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %303 = llvm.insertvalue %277, %302[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %304 = llvm.insertvalue %278, %303[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(5 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%305 : i64)
  ^bb46(%308: i64):  // 2 preds: ^bb45, ^bb53
    %309 = llvm.icmp "slt" %308, %306 : i64
    llvm.cond_br %309, ^bb47, ^bb54
  ^bb47:  // pred: ^bb46
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.mlir.constant(2 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%310 : i64)
  ^bb48(%313: i64):  // 2 preds: ^bb47, ^bb52
    %314 = llvm.icmp "slt" %313, %311 : i64
    llvm.cond_br %314, ^bb49, ^bb53
  ^bb49:  // pred: ^bb48
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%315 : i64)
  ^bb50(%318: i64):  // 2 preds: ^bb49, ^bb51
    %319 = llvm.icmp "slt" %318, %316 : i64
    llvm.cond_br %319, ^bb51, ^bb52
  ^bb51:  // pred: ^bb50
    %320 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.mlir.constant(2 : index) : i64
    %322 = llvm.mul %308, %321  : i64
    %323 = llvm.add %322, %313  : i64
    %324 = llvm.add %323, %318  : i64
    %325 = llvm.getelementptr %320[%324] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %326 = llvm.load %325 : !llvm.ptr<i32>
    %327 = llvm.extractvalue %304[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %328 = llvm.mlir.constant(4 : index) : i64
    %329 = llvm.mul %308, %328  : i64
    %330 = llvm.add %329, %313  : i64
    %331 = llvm.add %330, %318  : i64
    %332 = llvm.getelementptr %327[%331] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %326, %332 : !llvm.ptr<i32>
    %333 = llvm.add %318, %317  : i64
    llvm.br ^bb50(%333 : i64)
  ^bb52:  // pred: ^bb50
    %334 = llvm.add %313, %312  : i64
    llvm.br ^bb48(%334 : i64)
  ^bb53:  // pred: ^bb48
    %335 = llvm.add %308, %307  : i64
    llvm.br ^bb46(%335 : i64)
  ^bb54:  // pred: ^bb46
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.mlir.constant(5 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%336 : i64)
  ^bb55(%339: i64):  // 2 preds: ^bb54, ^bb62
    %340 = llvm.icmp "slt" %339, %337 : i64
    llvm.cond_br %340, ^bb56, ^bb63
  ^bb56:  // pred: ^bb55
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.mlir.constant(2 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%341 : i64)
  ^bb57(%344: i64):  // 2 preds: ^bb56, ^bb61
    %345 = llvm.icmp "slt" %344, %342 : i64
    llvm.cond_br %345, ^bb58, ^bb62
  ^bb58:  // pred: ^bb57
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%346 : i64)
  ^bb59(%349: i64):  // 2 preds: ^bb58, ^bb60
    %350 = llvm.icmp "slt" %349, %347 : i64
    llvm.cond_br %350, ^bb60, ^bb61
  ^bb60:  // pred: ^bb59
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.add %344, %351  : i64
    %353 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mul %339, %354  : i64
    %356 = llvm.add %355, %344  : i64
    %357 = llvm.add %356, %349  : i64
    %358 = llvm.getelementptr %353[%357] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %359 = llvm.load %358 : !llvm.ptr<i32>
    %360 = llvm.extractvalue %304[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %361 = llvm.mlir.constant(4 : index) : i64
    %362 = llvm.mul %339, %361  : i64
    %363 = llvm.add %362, %352  : i64
    %364 = llvm.add %363, %349  : i64
    %365 = llvm.getelementptr %360[%364] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %359, %365 : !llvm.ptr<i32>
    %366 = llvm.add %349, %348  : i64
    llvm.br ^bb59(%366 : i64)
  ^bb61:  // pred: ^bb59
    %367 = llvm.add %344, %343  : i64
    llvm.br ^bb57(%367 : i64)
  ^bb62:  // pred: ^bb57
    %368 = llvm.add %339, %338  : i64
    llvm.br ^bb55(%368 : i64)
  ^bb63:  // pred: ^bb55
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(5 : index) : i64
    %371 = llvm.mlir.constant(2 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.mlir.constant(10 : index) : i64
    %375 = llvm.mlir.constant(10 : index) : i64
    %376 = llvm.mlir.null : !llvm.ptr<i32>
    %377 = llvm.getelementptr %376[%375] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %378 = llvm.ptrtoint %377 : !llvm.ptr<i32> to i64
    %379 = llvm.mlir.constant(16 : index) : i64
    %380 = llvm.add %378, %379  : i64
    %381 = llvm.call @malloc(%380) : (i64) -> !llvm.ptr<i8>
    %382 = llvm.bitcast %381 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %383 = llvm.ptrtoint %382 : !llvm.ptr<i32> to i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.sub %379, %384  : i64
    %386 = llvm.add %383, %385  : i64
    %387 = llvm.urem %386, %379  : i64
    %388 = llvm.sub %386, %387  : i64
    %389 = llvm.inttoptr %388 : i64 to !llvm.ptr<i32>
    %390 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %391 = llvm.insertvalue %382, %390[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %389, %391[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.insertvalue %393, %392[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %369, %394[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %370, %395[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %371, %396[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %372, %397[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %374, %398[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.insertvalue %371, %399[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %372, %400[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %373, %401[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.mlir.constant(0 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%403 : i64)
  ^bb64(%406: i64):  // 2 preds: ^bb63, ^bb74
    %407 = llvm.icmp "slt" %406, %404 : i64
    llvm.cond_br %407, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %408 = llvm.mlir.constant(0 : index) : i64
    %409 = llvm.mlir.constant(5 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%408 : i64)
  ^bb66(%411: i64):  // 2 preds: ^bb65, ^bb73
    %412 = llvm.icmp "slt" %411, %409 : i64
    llvm.cond_br %412, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.mlir.constant(2 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%413 : i64)
  ^bb68(%416: i64):  // 2 preds: ^bb67, ^bb72
    %417 = llvm.icmp "slt" %416, %414 : i64
    llvm.cond_br %417, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%418 : i64)
  ^bb70(%421: i64):  // 2 preds: ^bb69, ^bb71
    %422 = llvm.icmp "slt" %421, %419 : i64
    llvm.cond_br %422, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %423 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.add %406, %43  : i64
    %425 = llvm.add %424, %43  : i64
    %426 = llvm.add %425, %421  : i64
    %427 = llvm.getelementptr %423[%426] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %428 = llvm.load %427 : !llvm.ptr<i32>
    %429 = llvm.extractvalue %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %430 = llvm.mlir.constant(2 : index) : i64
    %431 = llvm.mul %411, %430  : i64
    %432 = llvm.add %431, %416  : i64
    %433 = llvm.add %432, %421  : i64
    %434 = llvm.getelementptr %429[%433] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %435 = llvm.load %434 : !llvm.ptr<i32>
    %436 = llvm.icmp "slt" %428, %435 : i32
    %437 = llvm.select %436, %428, %435 : i1, i32
    %438 = llvm.extractvalue %402[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.mlir.constant(10 : index) : i64
    %440 = llvm.mul %406, %439  : i64
    %441 = llvm.mlir.constant(2 : index) : i64
    %442 = llvm.mul %411, %441  : i64
    %443 = llvm.add %440, %442  : i64
    %444 = llvm.add %443, %416  : i64
    %445 = llvm.add %444, %421  : i64
    %446 = llvm.getelementptr %438[%445] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %437, %446 : !llvm.ptr<i32>
    %447 = llvm.add %421, %420  : i64
    llvm.br ^bb70(%447 : i64)
  ^bb72:  // pred: ^bb70
    %448 = llvm.add %416, %415  : i64
    llvm.br ^bb68(%448 : i64)
  ^bb73:  // pred: ^bb68
    %449 = llvm.add %411, %410  : i64
    llvm.br ^bb66(%449 : i64)
  ^bb74:  // pred: ^bb66
    %450 = llvm.add %406, %405  : i64
    llvm.br ^bb64(%450 : i64)
  ^bb75:  // pred: ^bb64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(5 : index) : i64
    %453 = llvm.mlir.constant(2 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    %456 = llvm.mlir.constant(10 : index) : i64
    %457 = llvm.mlir.constant(10 : index) : i64
    %458 = llvm.mlir.null : !llvm.ptr<i32>
    %459 = llvm.getelementptr %458[%457] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %460 = llvm.ptrtoint %459 : !llvm.ptr<i32> to i64
    %461 = llvm.mlir.constant(16 : index) : i64
    %462 = llvm.add %460, %461  : i64
    %463 = llvm.call @malloc(%462) : (i64) -> !llvm.ptr<i8>
    %464 = llvm.bitcast %463 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %465 = llvm.ptrtoint %464 : !llvm.ptr<i32> to i64
    %466 = llvm.mlir.constant(1 : index) : i64
    %467 = llvm.sub %461, %466  : i64
    %468 = llvm.add %465, %467  : i64
    %469 = llvm.urem %468, %461  : i64
    %470 = llvm.sub %468, %469  : i64
    %471 = llvm.inttoptr %470 : i64 to !llvm.ptr<i32>
    %472 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %473 = llvm.insertvalue %464, %472[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %471, %473[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.mlir.constant(0 : index) : i64
    %476 = llvm.insertvalue %475, %474[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %451, %476[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %452, %477[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.insertvalue %453, %478[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.insertvalue %454, %479[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.insertvalue %456, %480[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.insertvalue %453, %481[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.insertvalue %454, %482[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.insertvalue %455, %483[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.mlir.constant(0 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%485 : i64)
  ^bb76(%488: i64):  // 2 preds: ^bb75, ^bb86
    %489 = llvm.icmp "slt" %488, %486 : i64
    llvm.cond_br %489, ^bb77, ^bb87
  ^bb77:  // pred: ^bb76
    %490 = llvm.mlir.constant(0 : index) : i64
    %491 = llvm.mlir.constant(5 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%490 : i64)
  ^bb78(%493: i64):  // 2 preds: ^bb77, ^bb85
    %494 = llvm.icmp "slt" %493, %491 : i64
    llvm.cond_br %494, ^bb79, ^bb86
  ^bb79:  // pred: ^bb78
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.mlir.constant(2 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%495 : i64)
  ^bb80(%498: i64):  // 2 preds: ^bb79, ^bb84
    %499 = llvm.icmp "slt" %498, %496 : i64
    llvm.cond_br %499, ^bb81, ^bb85
  ^bb81:  // pred: ^bb80
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%500 : i64)
  ^bb82(%503: i64):  // 2 preds: ^bb81, ^bb83
    %504 = llvm.icmp "slt" %503, %501 : i64
    llvm.cond_br %504, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %505 = llvm.extractvalue %402[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.mlir.constant(10 : index) : i64
    %507 = llvm.mul %488, %506  : i64
    %508 = llvm.mlir.constant(2 : index) : i64
    %509 = llvm.mul %493, %508  : i64
    %510 = llvm.add %507, %509  : i64
    %511 = llvm.add %510, %498  : i64
    %512 = llvm.add %511, %503  : i64
    %513 = llvm.getelementptr %505[%512] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %514 = llvm.load %513 : !llvm.ptr<i32>
    %515 = llvm.sub %42, %514  : i32
    %516 = llvm.extractvalue %484[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.mlir.constant(10 : index) : i64
    %518 = llvm.mul %488, %517  : i64
    %519 = llvm.mlir.constant(2 : index) : i64
    %520 = llvm.mul %493, %519  : i64
    %521 = llvm.add %518, %520  : i64
    %522 = llvm.add %521, %498  : i64
    %523 = llvm.add %522, %503  : i64
    %524 = llvm.getelementptr %516[%523] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %515, %524 : !llvm.ptr<i32>
    %525 = llvm.add %503, %502  : i64
    llvm.br ^bb82(%525 : i64)
  ^bb84:  // pred: ^bb82
    %526 = llvm.add %498, %497  : i64
    llvm.br ^bb80(%526 : i64)
  ^bb85:  // pred: ^bb80
    %527 = llvm.add %493, %492  : i64
    llvm.br ^bb78(%527 : i64)
  ^bb86:  // pred: ^bb78
    %528 = llvm.add %488, %487  : i64
    llvm.br ^bb76(%528 : i64)
  ^bb87:  // pred: ^bb76
    %529 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %530 = llvm.extractvalue %402[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %531 = llvm.extractvalue %402[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %532 = llvm.insertvalue %530, %529[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %533 = llvm.insertvalue %531, %532[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.insertvalue %534, %533[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %536 = llvm.mlir.constant(1 : index) : i64
    %537 = llvm.insertvalue %536, %535[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %538 = llvm.mlir.constant(10 : index) : i64
    %539 = llvm.insertvalue %538, %537[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %540 = llvm.mlir.constant(5 : index) : i64
    %541 = llvm.insertvalue %540, %539[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %542 = llvm.mlir.constant(2 : index) : i64
    %543 = llvm.insertvalue %542, %541[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.insertvalue %544, %543[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %546 = llvm.mlir.constant(1 : index) : i64
    %547 = llvm.insertvalue %546, %545[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %548 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %549 = llvm.insertvalue %304, %548[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %550 = llvm.insertvalue %484, %549[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %551 = llvm.insertvalue %547, %550[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %551 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v10_0", "v8_0", "v7_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v2_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %11 = llvm.extractvalue %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.extractvalue %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %13 = llvm.extractvalue %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.extractvalue %10[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.extractvalue %10[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.extractvalue %10[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.extractvalue %10[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.extractvalue %10[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.extractvalue %10[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %21 = llvm.extractvalue %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.extractvalue %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.extractvalue %20[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.extractvalue %20[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.extractvalue %20[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.extractvalue %20[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.extractvalue %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %29 = llvm.extractvalue %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %31 = llvm.extractvalue %30[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.extractvalue %30[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.extractvalue %30[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.extractvalue %30[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.extractvalue %30[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.extractvalue %30[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.extractvalue %30[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.extractvalue %30[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.extractvalue %30[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.extractvalue %30[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %11, %12, %13, %14, %15, %16, %17, %18, %19, %21, %22, %23, %24, %25, %26, %27, %28, %29, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %42, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %36, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %37 = llvm.mlir.constant(1 : i64) : i64
    %38 = llvm.getelementptr %0[%37] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %39 = llvm.load %38 : !llvm.ptr<ptr<i8>>
    %40 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %42 = llvm.call @omTensorGetDataPtr(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %43 = llvm.bitcast %42 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %44 = llvm.insertvalue %43, %41[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %45 = llvm.insertvalue %43, %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %46 = llvm.mlir.constant(0 : i64) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %48 = llvm.call @omTensorGetShape(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %49 = llvm.call @omTensorGetStrides(%39) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %50 = llvm.mlir.constant(0 : i64) : i64
    %51 = llvm.getelementptr %48[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.getelementptr %49[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.mlir.constant(1 : i64) : i64
    %58 = llvm.getelementptr %48[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.getelementptr %49[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.mlir.constant(2 : i64) : i64
    %65 = llvm.getelementptr %48[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %49[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %70, %40 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %0[%71] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %73 = llvm.load %72 : !llvm.ptr<ptr<i8>>
    %74 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %75 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %76 = llvm.call @omTensorGetDataPtr(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %78 = llvm.insertvalue %77, %75[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %79 = llvm.insertvalue %77, %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.mlir.constant(0 : i64) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.call @omTensorGetShape(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %83 = llvm.call @omTensorGetStrides(%73) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %84 = llvm.mlir.constant(0 : i64) : i64
    %85 = llvm.getelementptr %82[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %86 = llvm.load %85 : !llvm.ptr<i64>
    %87 = llvm.insertvalue %86, %81[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.getelementptr %83[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %89 = llvm.load %88 : !llvm.ptr<i64>
    %90 = llvm.insertvalue %89, %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.mlir.constant(1 : i64) : i64
    %92 = llvm.getelementptr %82[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %93 = llvm.load %92 : !llvm.ptr<i64>
    %94 = llvm.insertvalue %93, %90[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %83[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.load %95 : !llvm.ptr<i64>
    %97 = llvm.insertvalue %96, %94[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.getelementptr %82[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %97[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %83[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %104, %74 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %105 = llvm.mlir.constant(3 : i64) : i64
    %106 = llvm.getelementptr %0[%105] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %107 = llvm.load %106 : !llvm.ptr<ptr<i8>>
    %108 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %109 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %110 = llvm.call @omTensorGetDataPtr(%107) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %111 = llvm.bitcast %110 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %112 = llvm.insertvalue %111, %109[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %111, %112[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.mlir.constant(0 : i64) : i64
    %115 = llvm.insertvalue %114, %113[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.call @omTensorGetShape(%107) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %117 = llvm.call @omTensorGetStrides(%107) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %118 = llvm.mlir.constant(0 : i64) : i64
    %119 = llvm.getelementptr %116[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %120 = llvm.load %119 : !llvm.ptr<i64>
    %121 = llvm.insertvalue %120, %115[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %117[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %123 = llvm.load %122 : !llvm.ptr<i64>
    %124 = llvm.insertvalue %123, %121[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.getelementptr %116[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %127 = llvm.load %126 : !llvm.ptr<i64>
    %128 = llvm.insertvalue %127, %124[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %117[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %130 = llvm.load %129 : !llvm.ptr<i64>
    %131 = llvm.insertvalue %130, %128[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.mlir.constant(2 : i64) : i64
    %133 = llvm.getelementptr %116[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %134 = llvm.load %133 : !llvm.ptr<i64>
    %135 = llvm.insertvalue %134, %131[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %117[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %137 = llvm.load %136 : !llvm.ptr<i64>
    %138 = llvm.insertvalue %137, %135[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.mlir.constant(3 : i64) : i64
    %140 = llvm.getelementptr %116[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %141 = llvm.load %140 : !llvm.ptr<i64>
    %142 = llvm.insertvalue %141, %138[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %117[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %144 = llvm.load %143 : !llvm.ptr<i64>
    %145 = llvm.insertvalue %144, %142[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %145, %108 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %40, %74, %108) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %146 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %147 = llvm.extractvalue %146[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %148 = llvm.extractvalue %146[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %149 = llvm.extractvalue %146[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %150 = llvm.mlir.constant(3 : i64) : i64
    %151 = llvm.mlir.constant(24 : i64) : i64
    %152 = llvm.call @malloc(%151) : (i64) -> !llvm.ptr<i8>
    %153 = llvm.bitcast %152 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %154 = llvm.mlir.constant(3 : i64) : i64
    %155 = llvm.call @omTensorCreateUntyped(%154) : (i64) -> !llvm.ptr<i8>
    %156 = llvm.mlir.constant(1 : i64) : i64
    %157 = llvm.extractvalue %147[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %158 = llvm.bitcast %157 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %159 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %160 = llvm.bitcast %159 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%155, %156, %158, %160) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %161 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%155, %161) : (!llvm.ptr<i8>, i64) -> ()
    %162 = llvm.call @omTensorGetShape(%155) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %163 = llvm.call @omTensorGetStrides(%155) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %164 = llvm.mlir.constant(0 : i64) : i64
    %165 = llvm.extractvalue %147[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.getelementptr %162[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.extractvalue %147[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %168 = llvm.getelementptr %163[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %167, %168 : !llvm.ptr<i64>
    %169 = llvm.mlir.constant(1 : i64) : i64
    %170 = llvm.extractvalue %147[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.getelementptr %162[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.extractvalue %147[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %173 = llvm.getelementptr %163[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %172, %173 : !llvm.ptr<i64>
    %174 = llvm.mlir.constant(2 : i64) : i64
    %175 = llvm.extractvalue %147[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %176 = llvm.getelementptr %162[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.extractvalue %147[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %178 = llvm.getelementptr %163[%174] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %177, %178 : !llvm.ptr<i64>
    %179 = llvm.mlir.constant(0 : i64) : i64
    %180 = llvm.getelementptr %153[%179] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %155, %180 : !llvm.ptr<ptr<i8>>
    %181 = llvm.mlir.constant(4 : i64) : i64
    %182 = llvm.call @omTensorCreateUntyped(%181) : (i64) -> !llvm.ptr<i8>
    %183 = llvm.mlir.constant(1 : i64) : i64
    %184 = llvm.extractvalue %148[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.bitcast %184 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %186 = llvm.extractvalue %148[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.bitcast %186 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%182, %183, %185, %187) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %188 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%182, %188) : (!llvm.ptr<i8>, i64) -> ()
    %189 = llvm.call @omTensorGetShape(%182) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %190 = llvm.call @omTensorGetStrides(%182) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %191 = llvm.mlir.constant(0 : i64) : i64
    %192 = llvm.extractvalue %148[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.getelementptr %189[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %192, %193 : !llvm.ptr<i64>
    %194 = llvm.extractvalue %148[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.getelementptr %190[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %194, %195 : !llvm.ptr<i64>
    %196 = llvm.mlir.constant(1 : i64) : i64
    %197 = llvm.extractvalue %148[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.getelementptr %189[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %197, %198 : !llvm.ptr<i64>
    %199 = llvm.extractvalue %148[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.getelementptr %190[%196] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %199, %200 : !llvm.ptr<i64>
    %201 = llvm.mlir.constant(2 : i64) : i64
    %202 = llvm.extractvalue %148[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.getelementptr %189[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %202, %203 : !llvm.ptr<i64>
    %204 = llvm.extractvalue %148[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.getelementptr %190[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %204, %205 : !llvm.ptr<i64>
    %206 = llvm.mlir.constant(3 : i64) : i64
    %207 = llvm.extractvalue %148[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.getelementptr %189[%206] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %207, %208 : !llvm.ptr<i64>
    %209 = llvm.extractvalue %148[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.getelementptr %190[%206] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %209, %210 : !llvm.ptr<i64>
    %211 = llvm.mlir.constant(1 : i64) : i64
    %212 = llvm.getelementptr %153[%211] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %182, %212 : !llvm.ptr<ptr<i8>>
    %213 = llvm.mlir.constant(3 : i64) : i64
    %214 = llvm.call @omTensorCreateUntyped(%213) : (i64) -> !llvm.ptr<i8>
    %215 = llvm.mlir.constant(1 : i64) : i64
    %216 = llvm.extractvalue %149[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %217 = llvm.bitcast %216 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %218 = llvm.extractvalue %149[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %219 = llvm.bitcast %218 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%214, %215, %217, %219) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %220 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%214, %220) : (!llvm.ptr<i8>, i64) -> ()
    %221 = llvm.call @omTensorGetShape(%214) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %222 = llvm.call @omTensorGetStrides(%214) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %223 = llvm.mlir.constant(0 : i64) : i64
    %224 = llvm.extractvalue %149[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %225 = llvm.getelementptr %221[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %224, %225 : !llvm.ptr<i64>
    %226 = llvm.extractvalue %149[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %227 = llvm.getelementptr %222[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %227 : !llvm.ptr<i64>
    %228 = llvm.mlir.constant(1 : i64) : i64
    %229 = llvm.extractvalue %149[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %230 = llvm.getelementptr %221[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %229, %230 : !llvm.ptr<i64>
    %231 = llvm.extractvalue %149[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %232 = llvm.getelementptr %222[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %231, %232 : !llvm.ptr<i64>
    %233 = llvm.mlir.constant(2 : i64) : i64
    %234 = llvm.extractvalue %149[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %235 = llvm.getelementptr %221[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %234, %235 : !llvm.ptr<i64>
    %236 = llvm.extractvalue %149[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %237 = llvm.getelementptr %222[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %236, %237 : !llvm.ptr<i64>
    %238 = llvm.mlir.constant(2 : i64) : i64
    %239 = llvm.getelementptr %153[%238] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %214, %239 : !llvm.ptr<ptr<i8>>
    %240 = llvm.call @omTensorListCreate(%153, %150, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %240 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<271 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<271 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<203 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<203 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

