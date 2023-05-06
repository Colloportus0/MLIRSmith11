module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 4 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 8 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 4 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<4> : tensor<1x1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: !llvm.ptr<i32>, %arg34: !llvm.ptr<i32>, %arg35: i64, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64, %arg44: !llvm.ptr<i32>, %arg45: !llvm.ptr<i32>, %arg46: i64, %arg47: i64, %arg48: i64, %arg49: i64, %arg50: i64, %arg51: i64, %arg52: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v9_0", "v7_0", "v6_0", "v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v2_0", "v3_0"]} {
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
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %49 = llvm.insertvalue %arg44, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %50 = llvm.insertvalue %arg45, %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %51 = llvm.insertvalue %arg46, %50[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.insertvalue %arg47, %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.insertvalue %arg50, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.insertvalue %arg48, %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.insertvalue %arg51, %54[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.insertvalue %arg49, %55[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.insertvalue %arg52, %56[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>>
    %60 = llvm.bitcast %59 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %61 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %62 = llvm.insertvalue %60, %61[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.insertvalue %72, %71[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.insertvalue %76, %75[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.insertvalue %78, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(4 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mlir.constant(8 : index) : i64
    %89 = llvm.mlir.constant(8 : index) : i64
    %90 = llvm.mlir.null : !llvm.ptr<i32>
    %91 = llvm.getelementptr %90[%89] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %92 = llvm.ptrtoint %91 : !llvm.ptr<i32> to i64
    %93 = llvm.mlir.constant(16 : index) : i64
    %94 = llvm.add %92, %93  : i64
    %95 = llvm.call @malloc(%94) : (i64) -> !llvm.ptr<i8>
    %96 = llvm.bitcast %95 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %97 = llvm.ptrtoint %96 : !llvm.ptr<i32> to i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.sub %93, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.urem %100, %93  : i64
    %102 = llvm.sub %100, %101  : i64
    %103 = llvm.inttoptr %102 : i64 to !llvm.ptr<i32>
    %104 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %105 = llvm.insertvalue %96, %104[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %103, %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.insertvalue %107, %106[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %82, %108[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %83, %109[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %84, %110[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %85, %111[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %88, %112[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %87, %113[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %85, %114[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %86, %115[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%117 : i64)
  ^bb1(%120: i64):  // 2 preds: ^bb0, ^bb11
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %122 = llvm.mlir.constant(0 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%122 : i64)
  ^bb3(%125: i64):  // 2 preds: ^bb2, ^bb10
    %126 = llvm.icmp "slt" %125, %123 : i64
    llvm.cond_br %126, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%127 : i64)
  ^bb5(%130: i64):  // 2 preds: ^bb4, ^bb9
    %131 = llvm.icmp "slt" %130, %128 : i64
    llvm.cond_br %131, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%132 : i64)
  ^bb7(%135: i64):  // 2 preds: ^bb6, ^bb8
    %136 = llvm.icmp "slt" %135, %133 : i64
    llvm.cond_br %136, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %137 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.mlir.constant(2 : index) : i64
    %139 = llvm.mul %120, %138  : i64
    %140 = llvm.mlir.constant(2 : index) : i64
    %141 = llvm.mul %125, %140  : i64
    %142 = llvm.add %139, %141  : i64
    %143 = llvm.mlir.constant(2 : index) : i64
    %144 = llvm.mul %130, %143  : i64
    %145 = llvm.add %142, %144  : i64
    %146 = llvm.add %145, %135  : i64
    %147 = llvm.getelementptr %137[%146] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %148 = llvm.load %147 : !llvm.ptr<i32>
    %149 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.mlir.constant(8 : index) : i64
    %151 = llvm.mul %120, %150  : i64
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mul %125, %152  : i64
    %154 = llvm.add %151, %153  : i64
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mul %130, %155  : i64
    %157 = llvm.add %154, %156  : i64
    %158 = llvm.add %157, %135  : i64
    %159 = llvm.getelementptr %149[%158] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %148, %159 : !llvm.ptr<i32>
    %160 = llvm.add %135, %134  : i64
    llvm.br ^bb7(%160 : i64)
  ^bb9:  // pred: ^bb7
    %161 = llvm.add %130, %129  : i64
    llvm.br ^bb5(%161 : i64)
  ^bb10:  // pred: ^bb5
    %162 = llvm.add %125, %124  : i64
    llvm.br ^bb3(%162 : i64)
  ^bb11:  // pred: ^bb3
    %163 = llvm.add %120, %119  : i64
    llvm.br ^bb1(%163 : i64)
  ^bb12:  // pred: ^bb1
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%164 : i64)
  ^bb13(%167: i64):  // 2 preds: ^bb12, ^bb23
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%169 : i64)
  ^bb15(%172: i64):  // 2 preds: ^bb14, ^bb22
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%174 : i64)
  ^bb17(%177: i64):  // 2 preds: ^bb16, ^bb21
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%179 : i64)
  ^bb19(%182: i64):  // 2 preds: ^bb18, ^bb20
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.add %172, %184  : i64
    %186 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mul %167, %187  : i64
    %189 = llvm.mlir.constant(2 : index) : i64
    %190 = llvm.mul %172, %189  : i64
    %191 = llvm.add %188, %190  : i64
    %192 = llvm.mlir.constant(2 : index) : i64
    %193 = llvm.mul %177, %192  : i64
    %194 = llvm.add %191, %193  : i64
    %195 = llvm.add %194, %182  : i64
    %196 = llvm.getelementptr %186[%195] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %197 = llvm.load %196 : !llvm.ptr<i32>
    %198 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.mlir.constant(8 : index) : i64
    %200 = llvm.mul %167, %199  : i64
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mul %185, %201  : i64
    %203 = llvm.add %200, %202  : i64
    %204 = llvm.mlir.constant(2 : index) : i64
    %205 = llvm.mul %177, %204  : i64
    %206 = llvm.add %203, %205  : i64
    %207 = llvm.add %206, %182  : i64
    %208 = llvm.getelementptr %198[%207] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %197, %208 : !llvm.ptr<i32>
    %209 = llvm.add %182, %181  : i64
    llvm.br ^bb19(%209 : i64)
  ^bb21:  // pred: ^bb19
    %210 = llvm.add %177, %176  : i64
    llvm.br ^bb17(%210 : i64)
  ^bb22:  // pred: ^bb17
    %211 = llvm.add %172, %171  : i64
    llvm.br ^bb15(%211 : i64)
  ^bb23:  // pred: ^bb15
    %212 = llvm.add %167, %166  : i64
    llvm.br ^bb13(%212 : i64)
  ^bb24:  // pred: ^bb13
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%213 : i64)
  ^bb25(%216: i64):  // 2 preds: ^bb24, ^bb35
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%218 : i64)
  ^bb27(%221: i64):  // 2 preds: ^bb26, ^bb34
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%223 : i64)
  ^bb29(%226: i64):  // 2 preds: ^bb28, ^bb33
    %227 = llvm.icmp "slt" %226, %224 : i64
    llvm.cond_br %227, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %228 = llvm.mlir.constant(0 : index) : i64
    %229 = llvm.mlir.constant(2 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%228 : i64)
  ^bb31(%231: i64):  // 2 preds: ^bb30, ^bb32
    %232 = llvm.icmp "slt" %231, %229 : i64
    llvm.cond_br %232, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.add %221, %233  : i64
    %235 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mul %216, %236  : i64
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mul %221, %238  : i64
    %240 = llvm.add %237, %239  : i64
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mul %226, %241  : i64
    %243 = llvm.add %240, %242  : i64
    %244 = llvm.add %243, %231  : i64
    %245 = llvm.getelementptr %235[%244] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %246 = llvm.load %245 : !llvm.ptr<i32>
    %247 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.mlir.constant(8 : index) : i64
    %249 = llvm.mul %216, %248  : i64
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mul %234, %250  : i64
    %252 = llvm.add %249, %251  : i64
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mul %226, %253  : i64
    %255 = llvm.add %252, %254  : i64
    %256 = llvm.add %255, %231  : i64
    %257 = llvm.getelementptr %247[%256] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %246, %257 : !llvm.ptr<i32>
    %258 = llvm.add %231, %230  : i64
    llvm.br ^bb31(%258 : i64)
  ^bb33:  // pred: ^bb31
    %259 = llvm.add %226, %225  : i64
    llvm.br ^bb29(%259 : i64)
  ^bb34:  // pred: ^bb29
    %260 = llvm.add %221, %220  : i64
    llvm.br ^bb27(%260 : i64)
  ^bb35:  // pred: ^bb27
    %261 = llvm.add %216, %215  : i64
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
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%277 : i64)
  ^bb43(%280: i64):  // 2 preds: ^bb42, ^bb44
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %282 = llvm.mlir.constant(3 : index) : i64
    %283 = llvm.add %270, %282  : i64
    %284 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mul %265, %285  : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mul %270, %287  : i64
    %289 = llvm.add %286, %288  : i64
    %290 = llvm.mlir.constant(2 : index) : i64
    %291 = llvm.mul %275, %290  : i64
    %292 = llvm.add %289, %291  : i64
    %293 = llvm.add %292, %280  : i64
    %294 = llvm.getelementptr %284[%293] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %295 = llvm.load %294 : !llvm.ptr<i32>
    %296 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.mlir.constant(8 : index) : i64
    %298 = llvm.mul %265, %297  : i64
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mul %283, %299  : i64
    %301 = llvm.add %298, %300  : i64
    %302 = llvm.mlir.constant(2 : index) : i64
    %303 = llvm.mul %275, %302  : i64
    %304 = llvm.add %301, %303  : i64
    %305 = llvm.add %304, %280  : i64
    %306 = llvm.getelementptr %296[%305] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %295, %306 : !llvm.ptr<i32>
    %307 = llvm.add %280, %279  : i64
    llvm.br ^bb43(%307 : i64)
  ^bb45:  // pred: ^bb43
    %308 = llvm.add %275, %274  : i64
    llvm.br ^bb41(%308 : i64)
  ^bb46:  // pred: ^bb41
    %309 = llvm.add %270, %269  : i64
    llvm.br ^bb39(%309 : i64)
  ^bb47:  // pred: ^bb39
    %310 = llvm.add %265, %264  : i64
    llvm.br ^bb37(%310 : i64)
  ^bb48:  // pred: ^bb37
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.constant(4 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.constant(2 : index) : i64
    %317 = llvm.mlir.constant(8 : index) : i64
    %318 = llvm.mlir.constant(8 : index) : i64
    %319 = llvm.mlir.null : !llvm.ptr<i32>
    %320 = llvm.getelementptr %319[%318] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %321 = llvm.ptrtoint %320 : !llvm.ptr<i32> to i64
    %322 = llvm.mlir.constant(16 : index) : i64
    %323 = llvm.add %321, %322  : i64
    %324 = llvm.call @malloc(%323) : (i64) -> !llvm.ptr<i8>
    %325 = llvm.bitcast %324 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %326 = llvm.ptrtoint %325 : !llvm.ptr<i32> to i64
    %327 = llvm.mlir.constant(1 : index) : i64
    %328 = llvm.sub %322, %327  : i64
    %329 = llvm.add %326, %328  : i64
    %330 = llvm.urem %329, %322  : i64
    %331 = llvm.sub %329, %330  : i64
    %332 = llvm.inttoptr %331 : i64 to !llvm.ptr<i32>
    %333 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %334 = llvm.insertvalue %325, %333[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %332, %334[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.insertvalue %336, %335[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.insertvalue %311, %337[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %312, %338[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %313, %339[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %314, %340[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %317, %341[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.insertvalue %316, %342[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %314, %343[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %315, %344[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%346 : i64)
  ^bb49(%349: i64):  // 2 preds: ^bb48, ^bb59
    %350 = llvm.icmp "slt" %349, %347 : i64
    llvm.cond_br %350, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(4 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%351 : i64)
  ^bb51(%354: i64):  // 2 preds: ^bb50, ^bb58
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%356 : i64)
  ^bb53(%359: i64):  // 2 preds: ^bb52, ^bb57
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %361 = llvm.mlir.constant(0 : index) : i64
    %362 = llvm.mlir.constant(2 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%361 : i64)
  ^bb55(%364: i64):  // 2 preds: ^bb54, ^bb56
    %365 = llvm.icmp "slt" %364, %362 : i64
    llvm.cond_br %365, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %366 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.mlir.constant(8 : index) : i64
    %368 = llvm.mul %349, %367  : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mul %354, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.mlir.constant(2 : index) : i64
    %373 = llvm.mul %359, %372  : i64
    %374 = llvm.add %371, %373  : i64
    %375 = llvm.add %374, %364  : i64
    %376 = llvm.getelementptr %366[%375] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %377 = llvm.load %376 : !llvm.ptr<i32>
    %378 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mlir.constant(4 : index) : i64
    %380 = llvm.mul %349, %379  : i64
    %381 = llvm.add %380, %354  : i64
    %382 = llvm.add %381, %359  : i64
    %383 = llvm.add %382, %58  : i64
    %384 = llvm.getelementptr %378[%383] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %385 = llvm.load %384 : !llvm.ptr<i32>
    %386 = llvm.mul %377, %385  : i32
    %387 = llvm.extractvalue %345[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %388 = llvm.mlir.constant(8 : index) : i64
    %389 = llvm.mul %349, %388  : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mul %354, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mul %359, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.add %395, %364  : i64
    %397 = llvm.getelementptr %387[%396] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %386, %397 : !llvm.ptr<i32>
    %398 = llvm.add %364, %363  : i64
    llvm.br ^bb55(%398 : i64)
  ^bb57:  // pred: ^bb55
    %399 = llvm.add %359, %358  : i64
    llvm.br ^bb53(%399 : i64)
  ^bb58:  // pred: ^bb53
    %400 = llvm.add %354, %353  : i64
    llvm.br ^bb51(%400 : i64)
  ^bb59:  // pred: ^bb51
    %401 = llvm.add %349, %348  : i64
    llvm.br ^bb49(%401 : i64)
  ^bb60:  // pred: ^bb49
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.constant(8 : index) : i64
    %404 = llvm.mlir.constant(2 : index) : i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.mlir.constant(16 : index) : i64
    %407 = llvm.mlir.constant(16 : index) : i64
    %408 = llvm.mlir.null : !llvm.ptr<i32>
    %409 = llvm.getelementptr %408[%407] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %410 = llvm.ptrtoint %409 : !llvm.ptr<i32> to i64
    %411 = llvm.mlir.constant(16 : index) : i64
    %412 = llvm.add %410, %411  : i64
    %413 = llvm.call @malloc(%412) : (i64) -> !llvm.ptr<i8>
    %414 = llvm.bitcast %413 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %415 = llvm.ptrtoint %414 : !llvm.ptr<i32> to i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.sub %411, %416  : i64
    %418 = llvm.add %415, %417  : i64
    %419 = llvm.urem %418, %411  : i64
    %420 = llvm.sub %418, %419  : i64
    %421 = llvm.inttoptr %420 : i64 to !llvm.ptr<i32>
    %422 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %423 = llvm.insertvalue %414, %422[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %424 = llvm.insertvalue %421, %423[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.insertvalue %425, %424[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %427 = llvm.insertvalue %402, %426[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %428 = llvm.insertvalue %403, %427[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %429 = llvm.insertvalue %404, %428[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %430 = llvm.insertvalue %406, %429[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %431 = llvm.insertvalue %404, %430[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %432 = llvm.insertvalue %405, %431[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%433 : i64)
  ^bb61(%436: i64):  // 2 preds: ^bb60, ^bb68
    %437 = llvm.icmp "slt" %436, %434 : i64
    llvm.cond_br %437, ^bb62, ^bb69
  ^bb62:  // pred: ^bb61
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%438 : i64)
  ^bb63(%441: i64):  // 2 preds: ^bb62, ^bb67
    %442 = llvm.icmp "slt" %441, %439 : i64
    llvm.cond_br %442, ^bb64, ^bb68
  ^bb64:  // pred: ^bb63
    %443 = llvm.mlir.constant(0 : index) : i64
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%443 : i64)
  ^bb65(%446: i64):  // 2 preds: ^bb64, ^bb66
    %447 = llvm.icmp "slt" %446, %444 : i64
    llvm.cond_br %447, ^bb66, ^bb67
  ^bb66:  // pred: ^bb65
    %448 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %449 = llvm.mlir.constant(4 : index) : i64
    %450 = llvm.mul %436, %449  : i64
    %451 = llvm.mlir.constant(2 : index) : i64
    %452 = llvm.mul %441, %451  : i64
    %453 = llvm.add %450, %452  : i64
    %454 = llvm.add %453, %446  : i64
    %455 = llvm.getelementptr %448[%454] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %456 = llvm.load %455 : !llvm.ptr<i32>
    %457 = llvm.extractvalue %432[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %458 = llvm.mlir.constant(16 : index) : i64
    %459 = llvm.mul %436, %458  : i64
    %460 = llvm.mlir.constant(2 : index) : i64
    %461 = llvm.mul %441, %460  : i64
    %462 = llvm.add %459, %461  : i64
    %463 = llvm.add %462, %446  : i64
    %464 = llvm.getelementptr %457[%463] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %456, %464 : !llvm.ptr<i32>
    %465 = llvm.add %446, %445  : i64
    llvm.br ^bb65(%465 : i64)
  ^bb67:  // pred: ^bb65
    %466 = llvm.add %441, %440  : i64
    llvm.br ^bb63(%466 : i64)
  ^bb68:  // pred: ^bb63
    %467 = llvm.add %436, %435  : i64
    llvm.br ^bb61(%467 : i64)
  ^bb69:  // pred: ^bb61
    %468 = llvm.mlir.constant(0 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%468 : i64)
  ^bb70(%471: i64):  // 2 preds: ^bb69, ^bb77
    %472 = llvm.icmp "slt" %471, %469 : i64
    llvm.cond_br %472, ^bb71, ^bb78
  ^bb71:  // pred: ^bb70
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%473 : i64)
  ^bb72(%476: i64):  // 2 preds: ^bb71, ^bb76
    %477 = llvm.icmp "slt" %476, %474 : i64
    llvm.cond_br %477, ^bb73, ^bb77
  ^bb73:  // pred: ^bb72
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.mlir.constant(2 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%478 : i64)
  ^bb74(%481: i64):  // 2 preds: ^bb73, ^bb75
    %482 = llvm.icmp "slt" %481, %479 : i64
    llvm.cond_br %482, ^bb75, ^bb76
  ^bb75:  // pred: ^bb74
    %483 = llvm.mlir.constant(2 : index) : i64
    %484 = llvm.add %476, %483  : i64
    %485 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %486 = llvm.mlir.constant(4 : index) : i64
    %487 = llvm.mul %471, %486  : i64
    %488 = llvm.mlir.constant(2 : index) : i64
    %489 = llvm.mul %476, %488  : i64
    %490 = llvm.add %487, %489  : i64
    %491 = llvm.add %490, %481  : i64
    %492 = llvm.getelementptr %485[%491] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %493 = llvm.load %492 : !llvm.ptr<i32>
    %494 = llvm.extractvalue %432[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %495 = llvm.mlir.constant(16 : index) : i64
    %496 = llvm.mul %471, %495  : i64
    %497 = llvm.mlir.constant(2 : index) : i64
    %498 = llvm.mul %484, %497  : i64
    %499 = llvm.add %496, %498  : i64
    %500 = llvm.add %499, %481  : i64
    %501 = llvm.getelementptr %494[%500] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %493, %501 : !llvm.ptr<i32>
    %502 = llvm.add %481, %480  : i64
    llvm.br ^bb74(%502 : i64)
  ^bb76:  // pred: ^bb74
    %503 = llvm.add %476, %475  : i64
    llvm.br ^bb72(%503 : i64)
  ^bb77:  // pred: ^bb72
    %504 = llvm.add %471, %470  : i64
    llvm.br ^bb70(%504 : i64)
  ^bb78:  // pred: ^bb70
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%505 : i64)
  ^bb79(%508: i64):  // 2 preds: ^bb78, ^bb86
    %509 = llvm.icmp "slt" %508, %506 : i64
    llvm.cond_br %509, ^bb80, ^bb87
  ^bb80:  // pred: ^bb79
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.mlir.constant(2 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%510 : i64)
  ^bb81(%513: i64):  // 2 preds: ^bb80, ^bb85
    %514 = llvm.icmp "slt" %513, %511 : i64
    llvm.cond_br %514, ^bb82, ^bb86
  ^bb82:  // pred: ^bb81
    %515 = llvm.mlir.constant(0 : index) : i64
    %516 = llvm.mlir.constant(2 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%515 : i64)
  ^bb83(%518: i64):  // 2 preds: ^bb82, ^bb84
    %519 = llvm.icmp "slt" %518, %516 : i64
    llvm.cond_br %519, ^bb84, ^bb85
  ^bb84:  // pred: ^bb83
    %520 = llvm.mlir.constant(4 : index) : i64
    %521 = llvm.add %513, %520  : i64
    %522 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %523 = llvm.mlir.constant(4 : index) : i64
    %524 = llvm.mul %508, %523  : i64
    %525 = llvm.mlir.constant(2 : index) : i64
    %526 = llvm.mul %513, %525  : i64
    %527 = llvm.add %524, %526  : i64
    %528 = llvm.add %527, %518  : i64
    %529 = llvm.getelementptr %522[%528] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %530 = llvm.load %529 : !llvm.ptr<i32>
    %531 = llvm.extractvalue %432[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %532 = llvm.mlir.constant(16 : index) : i64
    %533 = llvm.mul %508, %532  : i64
    %534 = llvm.mlir.constant(2 : index) : i64
    %535 = llvm.mul %521, %534  : i64
    %536 = llvm.add %533, %535  : i64
    %537 = llvm.add %536, %518  : i64
    %538 = llvm.getelementptr %531[%537] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %530, %538 : !llvm.ptr<i32>
    %539 = llvm.add %518, %517  : i64
    llvm.br ^bb83(%539 : i64)
  ^bb85:  // pred: ^bb83
    %540 = llvm.add %513, %512  : i64
    llvm.br ^bb81(%540 : i64)
  ^bb86:  // pred: ^bb81
    %541 = llvm.add %508, %507  : i64
    llvm.br ^bb79(%541 : i64)
  ^bb87:  // pred: ^bb79
    %542 = llvm.mlir.constant(0 : index) : i64
    %543 = llvm.mlir.constant(1 : index) : i64
    %544 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%542 : i64)
  ^bb88(%545: i64):  // 2 preds: ^bb87, ^bb95
    %546 = llvm.icmp "slt" %545, %543 : i64
    llvm.cond_br %546, ^bb89, ^bb96
  ^bb89:  // pred: ^bb88
    %547 = llvm.mlir.constant(0 : index) : i64
    %548 = llvm.mlir.constant(2 : index) : i64
    %549 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%547 : i64)
  ^bb90(%550: i64):  // 2 preds: ^bb89, ^bb94
    %551 = llvm.icmp "slt" %550, %548 : i64
    llvm.cond_br %551, ^bb91, ^bb95
  ^bb91:  // pred: ^bb90
    %552 = llvm.mlir.constant(0 : index) : i64
    %553 = llvm.mlir.constant(2 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%552 : i64)
  ^bb92(%555: i64):  // 2 preds: ^bb91, ^bb93
    %556 = llvm.icmp "slt" %555, %553 : i64
    llvm.cond_br %556, ^bb93, ^bb94
  ^bb93:  // pred: ^bb92
    %557 = llvm.mlir.constant(6 : index) : i64
    %558 = llvm.add %550, %557  : i64
    %559 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %560 = llvm.mlir.constant(4 : index) : i64
    %561 = llvm.mul %545, %560  : i64
    %562 = llvm.mlir.constant(2 : index) : i64
    %563 = llvm.mul %550, %562  : i64
    %564 = llvm.add %561, %563  : i64
    %565 = llvm.add %564, %555  : i64
    %566 = llvm.getelementptr %559[%565] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %567 = llvm.load %566 : !llvm.ptr<i32>
    %568 = llvm.extractvalue %432[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %569 = llvm.mlir.constant(16 : index) : i64
    %570 = llvm.mul %545, %569  : i64
    %571 = llvm.mlir.constant(2 : index) : i64
    %572 = llvm.mul %558, %571  : i64
    %573 = llvm.add %570, %572  : i64
    %574 = llvm.add %573, %555  : i64
    %575 = llvm.getelementptr %568[%574] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %567, %575 : !llvm.ptr<i32>
    %576 = llvm.add %555, %554  : i64
    llvm.br ^bb92(%576 : i64)
  ^bb94:  // pred: ^bb92
    %577 = llvm.add %550, %549  : i64
    llvm.br ^bb90(%577 : i64)
  ^bb95:  // pred: ^bb90
    %578 = llvm.add %545, %544  : i64
    llvm.br ^bb88(%578 : i64)
  ^bb96:  // pred: ^bb88
    %579 = llvm.mlir.constant(1 : index) : i64
    %580 = llvm.mlir.constant(4 : index) : i64
    %581 = llvm.mlir.constant(2 : index) : i64
    %582 = llvm.mlir.constant(2 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    %584 = llvm.mlir.constant(4 : index) : i64
    %585 = llvm.mlir.constant(16 : index) : i64
    %586 = llvm.mlir.constant(16 : index) : i64
    %587 = llvm.mlir.null : !llvm.ptr<i32>
    %588 = llvm.getelementptr %587[%586] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %589 = llvm.ptrtoint %588 : !llvm.ptr<i32> to i64
    %590 = llvm.mlir.constant(16 : index) : i64
    %591 = llvm.add %589, %590  : i64
    %592 = llvm.call @malloc(%591) : (i64) -> !llvm.ptr<i8>
    %593 = llvm.bitcast %592 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %594 = llvm.ptrtoint %593 : !llvm.ptr<i32> to i64
    %595 = llvm.mlir.constant(1 : index) : i64
    %596 = llvm.sub %590, %595  : i64
    %597 = llvm.add %594, %596  : i64
    %598 = llvm.urem %597, %590  : i64
    %599 = llvm.sub %597, %598  : i64
    %600 = llvm.inttoptr %599 : i64 to !llvm.ptr<i32>
    %601 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %602 = llvm.insertvalue %593, %601[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %603 = llvm.insertvalue %600, %602[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %604 = llvm.mlir.constant(0 : index) : i64
    %605 = llvm.insertvalue %604, %603[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %606 = llvm.insertvalue %579, %605[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %607 = llvm.insertvalue %580, %606[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %608 = llvm.insertvalue %581, %607[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %609 = llvm.insertvalue %582, %608[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %610 = llvm.insertvalue %585, %609[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.insertvalue %584, %610[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %612 = llvm.insertvalue %582, %611[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %613 = llvm.insertvalue %583, %612[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %614 = llvm.mlir.constant(0 : index) : i64
    %615 = llvm.mlir.constant(1 : index) : i64
    %616 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%614 : i64)
  ^bb97(%617: i64):  // 2 preds: ^bb96, ^bb107
    %618 = llvm.icmp "slt" %617, %615 : i64
    llvm.cond_br %618, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %619 = llvm.mlir.constant(0 : index) : i64
    %620 = llvm.mlir.constant(4 : index) : i64
    %621 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%619 : i64)
  ^bb99(%622: i64):  // 2 preds: ^bb98, ^bb106
    %623 = llvm.icmp "slt" %622, %620 : i64
    llvm.cond_br %623, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %624 = llvm.mlir.constant(0 : index) : i64
    %625 = llvm.mlir.constant(2 : index) : i64
    %626 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%624 : i64)
  ^bb101(%627: i64):  // 2 preds: ^bb100, ^bb105
    %628 = llvm.icmp "slt" %627, %625 : i64
    llvm.cond_br %628, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %629 = llvm.mlir.constant(0 : index) : i64
    %630 = llvm.mlir.constant(2 : index) : i64
    %631 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%629 : i64)
  ^bb103(%632: i64):  // 2 preds: ^bb102, ^bb104
    %633 = llvm.icmp "slt" %632, %630 : i64
    llvm.cond_br %633, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %634 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %635 = llvm.mlir.constant(4 : index) : i64
    %636 = llvm.mul %58, %635  : i64
    %637 = llvm.mlir.constant(2 : index) : i64
    %638 = llvm.mul %627, %637  : i64
    %639 = llvm.add %636, %638  : i64
    %640 = llvm.add %639, %632  : i64
    %641 = llvm.getelementptr %634[%640] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %642 = llvm.load %641 : !llvm.ptr<i32>
    %643 = llvm.extractvalue %345[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %644 = llvm.mlir.constant(8 : index) : i64
    %645 = llvm.mul %617, %644  : i64
    %646 = llvm.mlir.constant(2 : index) : i64
    %647 = llvm.mul %622, %646  : i64
    %648 = llvm.add %645, %647  : i64
    %649 = llvm.mlir.constant(2 : index) : i64
    %650 = llvm.mul %58, %649  : i64
    %651 = llvm.add %648, %650  : i64
    %652 = llvm.add %651, %632  : i64
    %653 = llvm.getelementptr %643[%652] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %654 = llvm.load %653 : !llvm.ptr<i32>
    %655 = llvm.sub %642, %654  : i32
    %656 = llvm.extractvalue %613[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %657 = llvm.mlir.constant(16 : index) : i64
    %658 = llvm.mul %617, %657  : i64
    %659 = llvm.mlir.constant(4 : index) : i64
    %660 = llvm.mul %622, %659  : i64
    %661 = llvm.add %658, %660  : i64
    %662 = llvm.mlir.constant(2 : index) : i64
    %663 = llvm.mul %627, %662  : i64
    %664 = llvm.add %661, %663  : i64
    %665 = llvm.add %664, %632  : i64
    %666 = llvm.getelementptr %656[%665] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %655, %666 : !llvm.ptr<i32>
    %667 = llvm.add %632, %631  : i64
    llvm.br ^bb103(%667 : i64)
  ^bb105:  // pred: ^bb103
    %668 = llvm.add %627, %626  : i64
    llvm.br ^bb101(%668 : i64)
  ^bb106:  // pred: ^bb101
    %669 = llvm.add %622, %621  : i64
    llvm.br ^bb99(%669 : i64)
  ^bb107:  // pred: ^bb99
    %670 = llvm.add %617, %616  : i64
    llvm.br ^bb97(%670 : i64)
  ^bb108:  // pred: ^bb97
    %671 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %672 = llvm.insertvalue %432, %671[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %673 = llvm.insertvalue %613, %672[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %673 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v9_0", "v7_0", "v6_0", "v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v2_0", "v3_0"]} {
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
    %48 = llvm.load %arg5 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %49 = llvm.extractvalue %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %50 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %51 = llvm.extractvalue %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.extractvalue %48[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.extractvalue %48[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.extractvalue %48[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.extractvalue %48[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.extractvalue %48[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.extractvalue %48[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %49, %50, %51, %52, %53, %54, %55, %56, %57) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %58, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %170 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %171 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %172 = llvm.call @omTensorGetDataPtr(%169) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %173 = llvm.bitcast %172 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %174 = llvm.insertvalue %173, %171[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %175 = llvm.insertvalue %173, %174[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %176 = llvm.mlir.constant(0 : i64) : i64
    %177 = llvm.insertvalue %176, %175[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %178 = llvm.call @omTensorGetShape(%169) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %179 = llvm.call @omTensorGetStrides(%169) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %180 = llvm.mlir.constant(0 : i64) : i64
    %181 = llvm.getelementptr %178[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %182 = llvm.load %181 : !llvm.ptr<i64>
    %183 = llvm.insertvalue %182, %177[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %184 = llvm.getelementptr %179[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %185 = llvm.load %184 : !llvm.ptr<i64>
    %186 = llvm.insertvalue %185, %183[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %187 = llvm.mlir.constant(1 : i64) : i64
    %188 = llvm.getelementptr %178[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %189 = llvm.load %188 : !llvm.ptr<i64>
    %190 = llvm.insertvalue %189, %186[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %191 = llvm.getelementptr %179[%187] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %192 = llvm.load %191 : !llvm.ptr<i64>
    %193 = llvm.insertvalue %192, %190[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %194 = llvm.mlir.constant(2 : i64) : i64
    %195 = llvm.getelementptr %178[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %196 = llvm.load %195 : !llvm.ptr<i64>
    %197 = llvm.insertvalue %196, %193[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %198 = llvm.getelementptr %179[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %199 = llvm.load %198 : !llvm.ptr<i64>
    %200 = llvm.insertvalue %199, %197[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %200, %170 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %129, %170) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %201 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %202 = llvm.extractvalue %201[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %203 = llvm.extractvalue %201[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %204 = llvm.mlir.constant(2 : i64) : i64
    %205 = llvm.mlir.constant(16 : i64) : i64
    %206 = llvm.call @malloc(%205) : (i64) -> !llvm.ptr<i8>
    %207 = llvm.bitcast %206 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %208 = llvm.mlir.constant(3 : i64) : i64
    %209 = llvm.call @omTensorCreateUntyped(%208) : (i64) -> !llvm.ptr<i8>
    %210 = llvm.mlir.constant(1 : i64) : i64
    %211 = llvm.extractvalue %202[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %212 = llvm.bitcast %211 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %213 = llvm.extractvalue %202[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %214 = llvm.bitcast %213 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%209, %210, %212, %214) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %215 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%209, %215) : (!llvm.ptr<i8>, i64) -> ()
    %216 = llvm.call @omTensorGetShape(%209) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %217 = llvm.call @omTensorGetStrides(%209) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %218 = llvm.mlir.constant(0 : i64) : i64
    %219 = llvm.extractvalue %202[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %220 = llvm.getelementptr %216[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %219, %220 : !llvm.ptr<i64>
    %221 = llvm.extractvalue %202[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %222 = llvm.getelementptr %217[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %221, %222 : !llvm.ptr<i64>
    %223 = llvm.mlir.constant(1 : i64) : i64
    %224 = llvm.extractvalue %202[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %225 = llvm.getelementptr %216[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %224, %225 : !llvm.ptr<i64>
    %226 = llvm.extractvalue %202[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %227 = llvm.getelementptr %217[%223] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %227 : !llvm.ptr<i64>
    %228 = llvm.mlir.constant(2 : i64) : i64
    %229 = llvm.extractvalue %202[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %230 = llvm.getelementptr %216[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %229, %230 : !llvm.ptr<i64>
    %231 = llvm.extractvalue %202[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %232 = llvm.getelementptr %217[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %231, %232 : !llvm.ptr<i64>
    %233 = llvm.mlir.constant(0 : i64) : i64
    %234 = llvm.getelementptr %207[%233] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %209, %234 : !llvm.ptr<ptr<i8>>
    %235 = llvm.mlir.constant(4 : i64) : i64
    %236 = llvm.call @omTensorCreateUntyped(%235) : (i64) -> !llvm.ptr<i8>
    %237 = llvm.mlir.constant(1 : i64) : i64
    %238 = llvm.extractvalue %203[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.bitcast %238 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %240 = llvm.extractvalue %203[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.bitcast %240 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%236, %237, %239, %241) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %242 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%236, %242) : (!llvm.ptr<i8>, i64) -> ()
    %243 = llvm.call @omTensorGetShape(%236) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %244 = llvm.call @omTensorGetStrides(%236) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %245 = llvm.mlir.constant(0 : i64) : i64
    %246 = llvm.extractvalue %203[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.getelementptr %243[%245] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %246, %247 : !llvm.ptr<i64>
    %248 = llvm.extractvalue %203[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.getelementptr %244[%245] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %248, %249 : !llvm.ptr<i64>
    %250 = llvm.mlir.constant(1 : i64) : i64
    %251 = llvm.extractvalue %203[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.getelementptr %243[%250] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %251, %252 : !llvm.ptr<i64>
    %253 = llvm.extractvalue %203[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.getelementptr %244[%250] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %253, %254 : !llvm.ptr<i64>
    %255 = llvm.mlir.constant(2 : i64) : i64
    %256 = llvm.extractvalue %203[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.getelementptr %243[%255] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %256, %257 : !llvm.ptr<i64>
    %258 = llvm.extractvalue %203[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.getelementptr %244[%255] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %258, %259 : !llvm.ptr<i64>
    %260 = llvm.mlir.constant(3 : i64) : i64
    %261 = llvm.extractvalue %203[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.getelementptr %243[%260] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %261, %262 : !llvm.ptr<i64>
    %263 = llvm.extractvalue %203[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.getelementptr %244[%260] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %263, %264 : !llvm.ptr<i64>
    %265 = llvm.mlir.constant(1 : i64) : i64
    %266 = llvm.getelementptr %207[%265] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %236, %266 : !llvm.ptr<ptr<i8>>
    %267 = llvm.call @omTensorListCreate(%207, %204, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %267 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<348 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<348 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

