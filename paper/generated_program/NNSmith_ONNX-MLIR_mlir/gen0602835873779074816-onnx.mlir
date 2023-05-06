module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v10_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [3 , 1 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [3 , 1 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<[[[[6, 6], [5, 6]]]]> : tensor<1x1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i1>, %arg23: !llvm.ptr<i1>, %arg24: i64, %arg25: !llvm.ptr<i32>, %arg26: !llvm.ptr<i32>, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: i64, %arg34: !llvm.ptr<i32>, %arg35: !llvm.ptr<i32>, %arg36: i64, %arg37: i64, %arg38: i64, %arg39: i64, %arg40: i64, %arg41: i64, %arg42: i64, %arg43: i64, %arg44: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v10_0", "v9_0", "v2_0", "v6_0", "v3_0"], llvm.emit_c_interface, output_names = ["v4_0"]} {
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
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %25 = llvm.insertvalue %arg22, %24[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %26 = llvm.insertvalue %arg23, %25[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %27 = llvm.insertvalue %arg24, %26[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %29 = llvm.insertvalue %arg25, %28[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.insertvalue %arg26, %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %31 = llvm.insertvalue %arg27, %30[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.insertvalue %arg28, %31[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %33 = llvm.insertvalue %arg31, %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.insertvalue %arg29, %33[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %35 = llvm.insertvalue %arg32, %34[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.insertvalue %arg30, %35[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %37 = llvm.insertvalue %arg33, %36[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %39 = llvm.insertvalue %arg34, %38[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %arg35, %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %arg36, %40[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %arg37, %41[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %arg41, %42[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %arg38, %43[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %arg42, %44[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %arg39, %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %arg43, %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %arg40, %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.insertvalue %arg44, %48[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<2 x array<2 x i32>>>>>
    %52 = llvm.bitcast %51 : !llvm.ptr<array<1 x array<1 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(4 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(4 : index) : i64
    %65 = llvm.insertvalue %64, %63[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(2 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(2 : index) : i64
    %71 = llvm.insertvalue %70, %69[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(3 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mlir.constant(2 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(4 : index) : i64
    %80 = llvm.mlir.constant(4 : index) : i64
    %81 = llvm.mlir.constant(12 : index) : i64
    %82 = llvm.mlir.null : !llvm.ptr<i32>
    %83 = llvm.getelementptr %82[%81] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %84 = llvm.ptrtoint %83 : !llvm.ptr<i32> to i64
    %85 = llvm.mlir.constant(16 : index) : i64
    %86 = llvm.add %84, %85  : i64
    %87 = llvm.call @malloc(%86) : (i64) -> !llvm.ptr<i8>
    %88 = llvm.bitcast %87 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %89 = llvm.ptrtoint %88 : !llvm.ptr<i32> to i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.sub %85, %90  : i64
    %92 = llvm.add %89, %91  : i64
    %93 = llvm.urem %92, %85  : i64
    %94 = llvm.sub %92, %93  : i64
    %95 = llvm.inttoptr %94 : i64 to !llvm.ptr<i32>
    %96 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %97 = llvm.insertvalue %88, %96[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %95, %97[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.insertvalue %99, %98[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %74, %100[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %75, %101[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %76, %102[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %77, %103[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %80, %104[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %79, %105[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %77, %106[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %78, %107[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%109 : i64)
  ^bb1(%112: i64):  // 2 preds: ^bb0, ^bb11
    %113 = llvm.icmp "slt" %112, %110 : i64
    llvm.cond_br %113, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%114 : i64)
  ^bb3(%117: i64):  // 2 preds: ^bb2, ^bb10
    %118 = llvm.icmp "slt" %117, %115 : i64
    llvm.cond_br %118, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%119 : i64)
  ^bb5(%122: i64):  // 2 preds: ^bb4, ^bb9
    %123 = llvm.icmp "slt" %122, %120 : i64
    llvm.cond_br %123, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %124 = llvm.mlir.constant(0 : index) : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%124 : i64)
  ^bb7(%127: i64):  // 2 preds: ^bb6, ^bb8
    %128 = llvm.icmp "slt" %127, %125 : i64
    llvm.cond_br %128, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %129 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.mlir.constant(4 : index) : i64
    %131 = llvm.mul %112, %130  : i64
    %132 = llvm.mlir.constant(4 : index) : i64
    %133 = llvm.mul %117, %132  : i64
    %134 = llvm.add %131, %133  : i64
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mul %122, %135  : i64
    %137 = llvm.add %134, %136  : i64
    %138 = llvm.add %137, %127  : i64
    %139 = llvm.getelementptr %129[%138] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %140 = llvm.load %139 : !llvm.ptr<i32>
    %141 = llvm.extractvalue %108[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.mlir.constant(4 : index) : i64
    %143 = llvm.mul %112, %142  : i64
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mul %117, %144  : i64
    %146 = llvm.add %143, %145  : i64
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mul %122, %147  : i64
    %149 = llvm.add %146, %148  : i64
    %150 = llvm.add %149, %127  : i64
    %151 = llvm.getelementptr %141[%150] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %140, %151 : !llvm.ptr<i32>
    %152 = llvm.add %127, %126  : i64
    llvm.br ^bb7(%152 : i64)
  ^bb9:  // pred: ^bb7
    %153 = llvm.add %122, %121  : i64
    llvm.br ^bb5(%153 : i64)
  ^bb10:  // pred: ^bb5
    %154 = llvm.add %117, %116  : i64
    llvm.br ^bb3(%154 : i64)
  ^bb11:  // pred: ^bb3
    %155 = llvm.add %112, %111  : i64
    llvm.br ^bb1(%155 : i64)
  ^bb12:  // pred: ^bb1
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%156 : i64)
  ^bb13(%159: i64):  // 2 preds: ^bb12, ^bb23
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%161 : i64)
  ^bb15(%164: i64):  // 2 preds: ^bb14, ^bb22
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%166 : i64)
  ^bb17(%169: i64):  // 2 preds: ^bb16, ^bb21
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%171 : i64)
  ^bb19(%174: i64):  // 2 preds: ^bb18, ^bb20
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.add %159, %176  : i64
    %178 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.mlir.constant(4 : index) : i64
    %180 = llvm.mul %159, %179  : i64
    %181 = llvm.mlir.constant(4 : index) : i64
    %182 = llvm.mul %164, %181  : i64
    %183 = llvm.add %180, %182  : i64
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mul %169, %184  : i64
    %186 = llvm.add %183, %185  : i64
    %187 = llvm.add %186, %174  : i64
    %188 = llvm.getelementptr %178[%187] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %189 = llvm.load %188 : !llvm.ptr<i32>
    %190 = llvm.extractvalue %108[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.mlir.constant(4 : index) : i64
    %192 = llvm.mul %177, %191  : i64
    %193 = llvm.mlir.constant(4 : index) : i64
    %194 = llvm.mul %164, %193  : i64
    %195 = llvm.add %192, %194  : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mul %169, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.add %198, %174  : i64
    %200 = llvm.getelementptr %190[%199] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %189, %200 : !llvm.ptr<i32>
    %201 = llvm.add %174, %173  : i64
    llvm.br ^bb19(%201 : i64)
  ^bb21:  // pred: ^bb19
    %202 = llvm.add %169, %168  : i64
    llvm.br ^bb17(%202 : i64)
  ^bb22:  // pred: ^bb17
    %203 = llvm.add %164, %163  : i64
    llvm.br ^bb15(%203 : i64)
  ^bb23:  // pred: ^bb15
    %204 = llvm.add %159, %158  : i64
    llvm.br ^bb13(%204 : i64)
  ^bb24:  // pred: ^bb13
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%205 : i64)
  ^bb25(%208: i64):  // 2 preds: ^bb24, ^bb35
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%210 : i64)
  ^bb27(%213: i64):  // 2 preds: ^bb26, ^bb34
    %214 = llvm.icmp "slt" %213, %211 : i64
    llvm.cond_br %214, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%215 : i64)
  ^bb29(%218: i64):  // 2 preds: ^bb28, ^bb33
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%220 : i64)
  ^bb31(%223: i64):  // 2 preds: ^bb30, ^bb32
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.add %208, %225  : i64
    %227 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.mlir.constant(4 : index) : i64
    %229 = llvm.mul %208, %228  : i64
    %230 = llvm.mlir.constant(4 : index) : i64
    %231 = llvm.mul %213, %230  : i64
    %232 = llvm.add %229, %231  : i64
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mul %218, %233  : i64
    %235 = llvm.add %232, %234  : i64
    %236 = llvm.add %235, %223  : i64
    %237 = llvm.getelementptr %227[%236] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %238 = llvm.load %237 : !llvm.ptr<i32>
    %239 = llvm.extractvalue %108[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.mlir.constant(4 : index) : i64
    %241 = llvm.mul %226, %240  : i64
    %242 = llvm.mlir.constant(4 : index) : i64
    %243 = llvm.mul %213, %242  : i64
    %244 = llvm.add %241, %243  : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mul %218, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.add %247, %223  : i64
    %249 = llvm.getelementptr %239[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %238, %249 : !llvm.ptr<i32>
    %250 = llvm.add %223, %222  : i64
    llvm.br ^bb31(%250 : i64)
  ^bb33:  // pred: ^bb31
    %251 = llvm.add %218, %217  : i64
    llvm.br ^bb29(%251 : i64)
  ^bb34:  // pred: ^bb29
    %252 = llvm.add %213, %212  : i64
    llvm.br ^bb27(%252 : i64)
  ^bb35:  // pred: ^bb27
    %253 = llvm.add %208, %207  : i64
    llvm.br ^bb25(%253 : i64)
  ^bb36:  // pred: ^bb25
    %254 = llvm.mlir.constant(3 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(2 : index) : i64
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(4 : index) : i64
    %260 = llvm.mlir.constant(4 : index) : i64
    %261 = llvm.mlir.constant(12 : index) : i64
    %262 = llvm.mlir.null : !llvm.ptr<i32>
    %263 = llvm.getelementptr %262[%261] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %264 = llvm.ptrtoint %263 : !llvm.ptr<i32> to i64
    %265 = llvm.mlir.constant(16 : index) : i64
    %266 = llvm.add %264, %265  : i64
    %267 = llvm.call @malloc(%266) : (i64) -> !llvm.ptr<i8>
    %268 = llvm.bitcast %267 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %269 = llvm.ptrtoint %268 : !llvm.ptr<i32> to i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.sub %265, %270  : i64
    %272 = llvm.add %269, %271  : i64
    %273 = llvm.urem %272, %265  : i64
    %274 = llvm.sub %272, %273  : i64
    %275 = llvm.inttoptr %274 : i64 to !llvm.ptr<i32>
    %276 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %277 = llvm.insertvalue %268, %276[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %275, %277[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.insertvalue %279, %278[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %254, %280[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %255, %281[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %256, %282[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.insertvalue %257, %283[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %260, %284[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.insertvalue %259, %285[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.insertvalue %257, %286[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.insertvalue %258, %287[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(3 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%289 : i64)
  ^bb37(%292: i64):  // 2 preds: ^bb36, ^bb47
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%294 : i64)
  ^bb39(%297: i64):  // 2 preds: ^bb38, ^bb46
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%299 : i64)
  ^bb41(%302: i64):  // 2 preds: ^bb40, ^bb45
    %303 = llvm.icmp "slt" %302, %300 : i64
    llvm.cond_br %303, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(2 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%304 : i64)
  ^bb43(%307: i64):  // 2 preds: ^bb42, ^bb44
    %308 = llvm.icmp "slt" %307, %305 : i64
    llvm.cond_br %308, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %309 = llvm.extractvalue %108[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.mlir.constant(4 : index) : i64
    %311 = llvm.mul %292, %310  : i64
    %312 = llvm.mlir.constant(4 : index) : i64
    %313 = llvm.mul %297, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mul %302, %315  : i64
    %317 = llvm.add %314, %316  : i64
    %318 = llvm.add %317, %307  : i64
    %319 = llvm.getelementptr %309[%318] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %320 = llvm.load %319 : !llvm.ptr<i32>
    %321 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %322 = llvm.add %297, %50  : i64
    %323 = llvm.add %322, %50  : i64
    %324 = llvm.getelementptr %321[%323] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %325 = llvm.load %324 : !llvm.ptr<i32>
    %326 = llvm.sub %320, %325  : i32
    %327 = llvm.extractvalue %288[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.mlir.constant(4 : index) : i64
    %329 = llvm.mul %292, %328  : i64
    %330 = llvm.mlir.constant(4 : index) : i64
    %331 = llvm.mul %297, %330  : i64
    %332 = llvm.add %329, %331  : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mul %302, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.add %335, %307  : i64
    %337 = llvm.getelementptr %327[%336] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %326, %337 : !llvm.ptr<i32>
    %338 = llvm.add %307, %306  : i64
    llvm.br ^bb43(%338 : i64)
  ^bb45:  // pred: ^bb43
    %339 = llvm.add %302, %301  : i64
    llvm.br ^bb41(%339 : i64)
  ^bb46:  // pred: ^bb41
    %340 = llvm.add %297, %296  : i64
    llvm.br ^bb39(%340 : i64)
  ^bb47:  // pred: ^bb39
    %341 = llvm.add %292, %291  : i64
    llvm.br ^bb37(%341 : i64)
  ^bb48:  // pred: ^bb37
    %342 = llvm.mlir.constant(3 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mlir.constant(2 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.mlir.constant(4 : index) : i64
    %348 = llvm.mlir.constant(4 : index) : i64
    %349 = llvm.mlir.constant(12 : index) : i64
    %350 = llvm.mlir.null : !llvm.ptr<i32>
    %351 = llvm.getelementptr %350[%349] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %352 = llvm.ptrtoint %351 : !llvm.ptr<i32> to i64
    %353 = llvm.mlir.constant(16 : index) : i64
    %354 = llvm.add %352, %353  : i64
    %355 = llvm.call @malloc(%354) : (i64) -> !llvm.ptr<i8>
    %356 = llvm.bitcast %355 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %357 = llvm.ptrtoint %356 : !llvm.ptr<i32> to i64
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.sub %353, %358  : i64
    %360 = llvm.add %357, %359  : i64
    %361 = llvm.urem %360, %353  : i64
    %362 = llvm.sub %360, %361  : i64
    %363 = llvm.inttoptr %362 : i64 to !llvm.ptr<i32>
    %364 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %365 = llvm.insertvalue %356, %364[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.insertvalue %363, %365[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.insertvalue %367, %366[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.insertvalue %342, %368[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.insertvalue %343, %369[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.insertvalue %344, %370[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %345, %371[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %348, %372[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.insertvalue %347, %373[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %345, %374[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %346, %375[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.mlir.constant(3 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%377 : i64)
  ^bb49(%380: i64):  // 2 preds: ^bb48, ^bb59
    %381 = llvm.icmp "slt" %380, %378 : i64
    llvm.cond_br %381, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %382 = llvm.mlir.constant(0 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%382 : i64)
  ^bb51(%385: i64):  // 2 preds: ^bb50, ^bb58
    %386 = llvm.icmp "slt" %385, %383 : i64
    llvm.cond_br %386, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.mlir.constant(2 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%387 : i64)
  ^bb53(%390: i64):  // 2 preds: ^bb52, ^bb57
    %391 = llvm.icmp "slt" %390, %388 : i64
    llvm.cond_br %391, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %392 = llvm.mlir.constant(0 : index) : i64
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%392 : i64)
  ^bb55(%395: i64):  // 2 preds: ^bb54, ^bb56
    %396 = llvm.icmp "slt" %395, %393 : i64
    llvm.cond_br %396, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %397 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %398 = llvm.load %397 : !llvm.ptr<i1>
    %399 = llvm.extractvalue %288[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.mlir.constant(4 : index) : i64
    %401 = llvm.mul %380, %400  : i64
    %402 = llvm.mlir.constant(4 : index) : i64
    %403 = llvm.mul %385, %402  : i64
    %404 = llvm.add %401, %403  : i64
    %405 = llvm.mlir.constant(2 : index) : i64
    %406 = llvm.mul %390, %405  : i64
    %407 = llvm.add %404, %406  : i64
    %408 = llvm.add %407, %395  : i64
    %409 = llvm.getelementptr %399[%408] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %410 = llvm.load %409 : !llvm.ptr<i32>
    %411 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.mlir.constant(2 : index) : i64
    %413 = llvm.mul %380, %412  : i64
    %414 = llvm.mlir.constant(2 : index) : i64
    %415 = llvm.mul %385, %414  : i64
    %416 = llvm.add %413, %415  : i64
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mul %50, %417  : i64
    %419 = llvm.add %416, %418  : i64
    %420 = llvm.add %419, %395  : i64
    %421 = llvm.getelementptr %411[%420] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %422 = llvm.load %421 : !llvm.ptr<i32>
    %423 = llvm.select %398, %410, %422 : i1, i32
    %424 = llvm.extractvalue %376[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.mlir.constant(4 : index) : i64
    %426 = llvm.mul %380, %425  : i64
    %427 = llvm.mlir.constant(4 : index) : i64
    %428 = llvm.mul %385, %427  : i64
    %429 = llvm.add %426, %428  : i64
    %430 = llvm.mlir.constant(2 : index) : i64
    %431 = llvm.mul %390, %430  : i64
    %432 = llvm.add %429, %431  : i64
    %433 = llvm.add %432, %395  : i64
    %434 = llvm.getelementptr %424[%433] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %423, %434 : !llvm.ptr<i32>
    %435 = llvm.add %395, %394  : i64
    llvm.br ^bb55(%435 : i64)
  ^bb57:  // pred: ^bb55
    %436 = llvm.add %390, %389  : i64
    llvm.br ^bb53(%436 : i64)
  ^bb58:  // pred: ^bb53
    %437 = llvm.add %385, %384  : i64
    llvm.br ^bb51(%437 : i64)
  ^bb59:  // pred: ^bb51
    %438 = llvm.add %380, %379  : i64
    llvm.br ^bb49(%438 : i64)
  ^bb60:  // pred: ^bb49
    llvm.return %376 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg5: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v10_0", "v9_0", "v2_0", "v6_0", "v3_0"], llvm.emit_c_interface, output_names = ["v4_0"]} {
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
    %24 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    %25 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %26 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %27 = llvm.extractvalue %24[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %28 = llvm.load %arg4 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %29 = llvm.extractvalue %28[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %31 = llvm.extractvalue %28[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.extractvalue %28[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %33 = llvm.extractvalue %28[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.extractvalue %28[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %35 = llvm.extractvalue %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.extractvalue %28[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %37 = llvm.extractvalue %28[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %38 = llvm.load %arg5 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %50 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %29, %30, %31, %32, %33, %34, %35, %36, %37, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %50, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    %88 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    %89 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %90 = llvm.call @omTensorGetDataPtr(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %92 = llvm.insertvalue %91, %89[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %93 = llvm.insertvalue %91, %92[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.insertvalue %94, %93[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %96 = llvm.call @omTensorGetShape(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.call @omTensorGetStrides(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %95, %88 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    %98 = llvm.mlir.constant(3 : i64) : i64
    %99 = llvm.getelementptr %0[%98] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %100 = llvm.load %99 : !llvm.ptr<ptr<i8>>
    %101 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %102 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %103 = llvm.call @omTensorGetDataPtr(%100) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %104 = llvm.bitcast %103 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %105 = llvm.insertvalue %104, %102[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %106 = llvm.insertvalue %104, %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.mlir.constant(0 : i64) : i64
    %108 = llvm.insertvalue %107, %106[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.call @omTensorGetShape(%100) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %110 = llvm.call @omTensorGetStrides(%100) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %111 = llvm.mlir.constant(0 : i64) : i64
    %112 = llvm.getelementptr %109[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %113 = llvm.load %112 : !llvm.ptr<i64>
    %114 = llvm.insertvalue %113, %108[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.getelementptr %110[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %116 = llvm.load %115 : !llvm.ptr<i64>
    %117 = llvm.insertvalue %116, %114[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.getelementptr %109[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %120 = llvm.load %119 : !llvm.ptr<i64>
    %121 = llvm.insertvalue %120, %117[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.getelementptr %110[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %123 = llvm.load %122 : !llvm.ptr<i64>
    %124 = llvm.insertvalue %123, %121[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %125 = llvm.mlir.constant(2 : i64) : i64
    %126 = llvm.getelementptr %109[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %127 = llvm.load %126 : !llvm.ptr<i64>
    %128 = llvm.insertvalue %127, %124[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %129 = llvm.getelementptr %110[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %130 = llvm.load %129 : !llvm.ptr<i64>
    %131 = llvm.insertvalue %130, %128[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %131, %101 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %132 = llvm.mlir.constant(4 : i64) : i64
    %133 = llvm.getelementptr %0[%132] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %134 = llvm.load %133 : !llvm.ptr<ptr<i8>>
    %135 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %136 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %137 = llvm.call @omTensorGetDataPtr(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %138 = llvm.bitcast %137 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %139 = llvm.insertvalue %138, %136[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %138, %139[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.mlir.constant(0 : i64) : i64
    %142 = llvm.insertvalue %141, %140[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.call @omTensorGetShape(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %144 = llvm.call @omTensorGetStrides(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %145 = llvm.mlir.constant(0 : i64) : i64
    %146 = llvm.getelementptr %143[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %147 = llvm.load %146 : !llvm.ptr<i64>
    %148 = llvm.insertvalue %147, %142[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.getelementptr %144[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %150 = llvm.load %149 : !llvm.ptr<i64>
    %151 = llvm.insertvalue %150, %148[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.mlir.constant(1 : i64) : i64
    %153 = llvm.getelementptr %143[%152] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %154 = llvm.load %153 : !llvm.ptr<i64>
    %155 = llvm.insertvalue %154, %151[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.getelementptr %144[%152] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %157 = llvm.load %156 : !llvm.ptr<i64>
    %158 = llvm.insertvalue %157, %155[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.mlir.constant(2 : i64) : i64
    %160 = llvm.getelementptr %143[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %161 = llvm.load %160 : !llvm.ptr<i64>
    %162 = llvm.insertvalue %161, %158[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.getelementptr %144[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %164 = llvm.load %163 : !llvm.ptr<i64>
    %165 = llvm.insertvalue %164, %162[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.mlir.constant(3 : i64) : i64
    %167 = llvm.getelementptr %143[%166] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %168 = llvm.load %167 : !llvm.ptr<i64>
    %169 = llvm.insertvalue %168, %165[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.getelementptr %144[%166] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %171 = llvm.load %170 : !llvm.ptr<i64>
    %172 = llvm.insertvalue %171, %169[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %172, %135 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88, %101, %135) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %173 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %174 = llvm.mlir.constant(1 : i64) : i64
    %175 = llvm.mlir.constant(8 : i64) : i64
    %176 = llvm.call @malloc(%175) : (i64) -> !llvm.ptr<i8>
    %177 = llvm.bitcast %176 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %178 = llvm.mlir.constant(4 : i64) : i64
    %179 = llvm.call @omTensorCreateUntyped(%178) : (i64) -> !llvm.ptr<i8>
    %180 = llvm.mlir.constant(1 : i64) : i64
    %181 = llvm.extractvalue %173[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.bitcast %181 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %183 = llvm.extractvalue %173[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.bitcast %183 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%179, %180, %182, %184) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %185 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%179, %185) : (!llvm.ptr<i8>, i64) -> ()
    %186 = llvm.call @omTensorGetShape(%179) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %187 = llvm.call @omTensorGetStrides(%179) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %188 = llvm.mlir.constant(0 : i64) : i64
    %189 = llvm.extractvalue %173[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.getelementptr %186[%188] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %189, %190 : !llvm.ptr<i64>
    %191 = llvm.extractvalue %173[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.getelementptr %187[%188] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %191, %192 : !llvm.ptr<i64>
    %193 = llvm.mlir.constant(1 : i64) : i64
    %194 = llvm.extractvalue %173[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.getelementptr %186[%193] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %194, %195 : !llvm.ptr<i64>
    %196 = llvm.extractvalue %173[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.getelementptr %187[%193] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %196, %197 : !llvm.ptr<i64>
    %198 = llvm.mlir.constant(2 : i64) : i64
    %199 = llvm.extractvalue %173[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.getelementptr %186[%198] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %199, %200 : !llvm.ptr<i64>
    %201 = llvm.extractvalue %173[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.getelementptr %187[%198] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %201, %202 : !llvm.ptr<i64>
    %203 = llvm.mlir.constant(3 : i64) : i64
    %204 = llvm.extractvalue %173[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.getelementptr %186[%203] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %204, %205 : !llvm.ptr<i64>
    %206 = llvm.extractvalue %173[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.getelementptr %187[%203] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %206, %207 : !llvm.ptr<i64>
    %208 = llvm.mlir.constant(0 : i64) : i64
    %209 = llvm.getelementptr %177[%208] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %179, %209 : !llvm.ptr<ptr<i8>>
    %210 = llvm.call @omTensorListCreate(%177, %174, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %210 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<335 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<335 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

