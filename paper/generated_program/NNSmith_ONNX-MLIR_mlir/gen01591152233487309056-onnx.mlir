module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 4 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<5> : tensor<1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x i32>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: !llvm.ptr<i32>, %arg10: !llvm.ptr<i32>, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: !llvm.ptr<i32>, %arg19: !llvm.ptr<i32>, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: !llvm.ptr<i32>, %arg28: !llvm.ptr<i32>, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64, %arg33: i64, %arg34: i64, %arg35: i64, %arg36: i64, %arg37: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v5_0", "v1_0", "v2_0"], llvm.emit_c_interface, output_names = ["v9_0", "v3_0"]} {
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
    %43 = llvm.mlir.constant(0 : i64) : i64
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x i32>>>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<1 x array<1 x array<1 x i32>>>> to !llvm.ptr<i32>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.null : !llvm.ptr<i64>
    %69 = llvm.getelementptr %68[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %70 = llvm.ptrtoint %69 : !llvm.ptr<i64> to i64
    %71 = llvm.mlir.constant(16 : index) : i64
    %72 = llvm.add %70, %71  : i64
    %73 = llvm.call @malloc(%72) : (i64) -> !llvm.ptr<i8>
    %74 = llvm.bitcast %73 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %75 = llvm.ptrtoint %74 : !llvm.ptr<i64> to i64
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.sub %71, %76  : i64
    %78 = llvm.add %75, %77  : i64
    %79 = llvm.urem %78, %71  : i64
    %80 = llvm.sub %78, %79  : i64
    %81 = llvm.inttoptr %80 : i64 to !llvm.ptr<i64>
    %82 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %83 = llvm.insertvalue %74, %82[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.insertvalue %81, %83[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.insertvalue %85, %84[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %87 = llvm.insertvalue %64, %86[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.insertvalue %65, %87[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.insertvalue %66, %88[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.insertvalue %65, %89[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.insertvalue %66, %90[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %92 = llvm.insertvalue %67, %91[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%93 : i64)
  ^bb1(%96: i64):  // 2 preds: ^bb0, ^bb8
    %97 = llvm.icmp "slt" %96, %94 : i64
    llvm.cond_br %97, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%98 : i64)
  ^bb3(%101: i64):  // 2 preds: ^bb2, ^bb7
    %102 = llvm.icmp "slt" %101, %99 : i64
    llvm.cond_br %102, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%103 : i64)
  ^bb5(%106: i64):  // 2 preds: ^bb4, ^bb6
    %107 = llvm.icmp "slt" %106, %104 : i64
    llvm.cond_br %107, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %108 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.add %96, %101  : i64
    %110 = llvm.add %109, %106  : i64
    %111 = llvm.getelementptr %108[%110] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %112 = llvm.load %111 : !llvm.ptr<i32>
    %113 = llvm.sext %112 : i32 to i64
    %114 = llvm.extractvalue %92[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.add %96, %101  : i64
    %116 = llvm.add %115, %106  : i64
    %117 = llvm.getelementptr %114[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %117 : !llvm.ptr<i64>
    %118 = llvm.add %106, %105  : i64
    llvm.br ^bb5(%118 : i64)
  ^bb7:  // pred: ^bb5
    %119 = llvm.add %101, %100  : i64
    llvm.br ^bb3(%119 : i64)
  ^bb8:  // pred: ^bb3
    %120 = llvm.add %96, %95  : i64
    llvm.br ^bb1(%120 : i64)
  ^bb9:  // pred: ^bb1
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.mlir.null : !llvm.ptr<i64>
    %125 = llvm.getelementptr %124[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %126 = llvm.ptrtoint %125 : !llvm.ptr<i64> to i64
    %127 = llvm.mlir.constant(16 : index) : i64
    %128 = llvm.add %126, %127  : i64
    %129 = llvm.call @malloc(%128) : (i64) -> !llvm.ptr<i8>
    %130 = llvm.bitcast %129 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %131 = llvm.ptrtoint %130 : !llvm.ptr<i64> to i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.sub %127, %132  : i64
    %134 = llvm.add %131, %133  : i64
    %135 = llvm.urem %134, %127  : i64
    %136 = llvm.sub %134, %135  : i64
    %137 = llvm.inttoptr %136 : i64 to !llvm.ptr<i64>
    %138 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %139 = llvm.insertvalue %130, %138[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %140 = llvm.insertvalue %137, %139[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.insertvalue %141, %140[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %143 = llvm.insertvalue %121, %142[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %144 = llvm.insertvalue %122, %143[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %145 = llvm.insertvalue %122, %144[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %146 = llvm.insertvalue %123, %145[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%147 : i64)
  ^bb10(%150: i64):  // 2 preds: ^bb9, ^bb14
    %151 = llvm.icmp "slt" %150, %148 : i64
    llvm.cond_br %151, ^bb11, ^bb15
  ^bb11:  // pred: ^bb10
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%152 : i64)
  ^bb12(%155: i64):  // 2 preds: ^bb11, ^bb13
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %157 = llvm.extractvalue %146[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.add %150, %155  : i64
    %159 = llvm.getelementptr %157[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %43, %159 : !llvm.ptr<i64>
    %160 = llvm.add %155, %154  : i64
    llvm.br ^bb12(%160 : i64)
  ^bb14:  // pred: ^bb12
    %161 = llvm.add %150, %149  : i64
    llvm.br ^bb10(%161 : i64)
  ^bb15:  // pred: ^bb10
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%162 : i64)
  ^bb16(%165: i64):  // 2 preds: ^bb15, ^bb23
    %166 = llvm.icmp "slt" %165, %163 : i64
    llvm.cond_br %166, ^bb17, ^bb24
  ^bb17:  // pred: ^bb16
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%167 : i64)
  ^bb18(%170: i64):  // 2 preds: ^bb17, ^bb22
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb19, ^bb23
  ^bb19:  // pred: ^bb18
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%172 : i64)
  ^bb20(%175: i64):  // 2 preds: ^bb19, ^bb21
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb21, ^bb22
  ^bb21:  // pred: ^bb20
    %177 = llvm.extractvalue %92[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %178 = llvm.add %165, %170  : i64
    %179 = llvm.add %178, %175  : i64
    %180 = llvm.getelementptr %177[%179] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %181 = llvm.load %180 : !llvm.ptr<i64>
    %182 = llvm.extractvalue %146[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %183 = llvm.add %170, %175  : i64
    %184 = llvm.getelementptr %182[%183] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %185 = llvm.load %184 : !llvm.ptr<i64>
    %186 = llvm.add %185, %181  : i64
    %187 = llvm.extractvalue %146[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %188 = llvm.add %170, %175  : i64
    %189 = llvm.getelementptr %187[%188] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %186, %189 : !llvm.ptr<i64>
    %190 = llvm.add %175, %174  : i64
    llvm.br ^bb20(%190 : i64)
  ^bb22:  // pred: ^bb20
    %191 = llvm.add %170, %169  : i64
    llvm.br ^bb18(%191 : i64)
  ^bb23:  // pred: ^bb18
    %192 = llvm.add %165, %164  : i64
    llvm.br ^bb16(%192 : i64)
  ^bb24:  // pred: ^bb16
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.null : !llvm.ptr<i64>
    %197 = llvm.getelementptr %196[%193] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %198 = llvm.ptrtoint %197 : !llvm.ptr<i64> to i64
    %199 = llvm.mlir.constant(16 : index) : i64
    %200 = llvm.add %198, %199  : i64
    %201 = llvm.call @malloc(%200) : (i64) -> !llvm.ptr<i8>
    %202 = llvm.bitcast %201 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %203 = llvm.ptrtoint %202 : !llvm.ptr<i64> to i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.sub %199, %204  : i64
    %206 = llvm.add %203, %205  : i64
    %207 = llvm.urem %206, %199  : i64
    %208 = llvm.sub %206, %207  : i64
    %209 = llvm.inttoptr %208 : i64 to !llvm.ptr<i64>
    %210 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %211 = llvm.insertvalue %202, %210[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %212 = llvm.insertvalue %209, %211[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.insertvalue %213, %212[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %215 = llvm.insertvalue %193, %214[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %216 = llvm.insertvalue %194, %215[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %217 = llvm.insertvalue %194, %216[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %218 = llvm.insertvalue %195, %217[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%219 : i64)
  ^bb25(%222: i64):  // 2 preds: ^bb24, ^bb29
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb26, ^bb30
  ^bb26:  // pred: ^bb25
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%224 : i64)
  ^bb27(%227: i64):  // 2 preds: ^bb26, ^bb28
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb28, ^bb29
  ^bb28:  // pred: ^bb27
    %229 = llvm.extractvalue %146[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %230 = llvm.add %222, %227  : i64
    %231 = llvm.getelementptr %229[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %232 = llvm.load %231 : !llvm.ptr<i64>
    %233 = llvm.extractvalue %146[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %234 = llvm.add %222, %227  : i64
    %235 = llvm.getelementptr %233[%234] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %236 = llvm.load %235 : !llvm.ptr<i64>
    %237 = llvm.icmp "slt" %232, %236 : i64
    %238 = llvm.select %237, %232, %236 : i1, i64
    %239 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %240 = llvm.add %222, %227  : i64
    %241 = llvm.getelementptr %239[%240] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %238, %241 : !llvm.ptr<i64>
    %242 = llvm.add %227, %226  : i64
    llvm.br ^bb27(%242 : i64)
  ^bb29:  // pred: ^bb27
    %243 = llvm.add %222, %221  : i64
    llvm.br ^bb25(%243 : i64)
  ^bb30:  // pred: ^bb25
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(4 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(4 : index) : i64
    %249 = llvm.mlir.null : !llvm.ptr<i32>
    %250 = llvm.getelementptr %249[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %251 = llvm.ptrtoint %250 : !llvm.ptr<i32> to i64
    %252 = llvm.mlir.constant(16 : index) : i64
    %253 = llvm.add %251, %252  : i64
    %254 = llvm.call @malloc(%253) : (i64) -> !llvm.ptr<i8>
    %255 = llvm.bitcast %254 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %256 = llvm.ptrtoint %255 : !llvm.ptr<i32> to i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.sub %252, %257  : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.urem %259, %252  : i64
    %261 = llvm.sub %259, %260  : i64
    %262 = llvm.inttoptr %261 : i64 to !llvm.ptr<i32>
    %263 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %264 = llvm.insertvalue %255, %263[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %265 = llvm.insertvalue %262, %264[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.insertvalue %266, %265[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %268 = llvm.insertvalue %244, %267[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %269 = llvm.insertvalue %245, %268[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %270 = llvm.insertvalue %246, %269[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %271 = llvm.insertvalue %245, %270[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %272 = llvm.insertvalue %246, %271[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %273 = llvm.insertvalue %247, %272[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%274 : i64)
  ^bb31(%277: i64):  // 2 preds: ^bb30, ^bb38
    %278 = llvm.icmp "slt" %277, %275 : i64
    llvm.cond_br %278, ^bb32, ^bb39
  ^bb32:  // pred: ^bb31
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%279 : i64)
  ^bb33(%282: i64):  // 2 preds: ^bb32, ^bb37
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb34, ^bb38
  ^bb34:  // pred: ^bb33
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%284 : i64)
  ^bb35(%287: i64):  // 2 preds: ^bb34, ^bb36
    %288 = llvm.icmp "slt" %287, %285 : i64
    llvm.cond_br %288, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %289 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %290 = llvm.add %277, %282  : i64
    %291 = llvm.add %290, %287  : i64
    %292 = llvm.getelementptr %289[%291] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %293 = llvm.load %292 : !llvm.ptr<i32>
    %294 = llvm.extractvalue %273[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %295 = llvm.mlir.constant(4 : index) : i64
    %296 = llvm.mul %277, %295  : i64
    %297 = llvm.add %296, %282  : i64
    %298 = llvm.add %297, %287  : i64
    %299 = llvm.getelementptr %294[%298] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %293, %299 : !llvm.ptr<i32>
    %300 = llvm.add %287, %286  : i64
    llvm.br ^bb35(%300 : i64)
  ^bb37:  // pred: ^bb35
    %301 = llvm.add %282, %281  : i64
    llvm.br ^bb33(%301 : i64)
  ^bb38:  // pred: ^bb33
    %302 = llvm.add %277, %276  : i64
    llvm.br ^bb31(%302 : i64)
  ^bb39:  // pred: ^bb31
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%303 : i64)
  ^bb40(%306: i64):  // 2 preds: ^bb39, ^bb47
    %307 = llvm.icmp "slt" %306, %304 : i64
    llvm.cond_br %307, ^bb41, ^bb48
  ^bb41:  // pred: ^bb40
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%308 : i64)
  ^bb42(%311: i64):  // 2 preds: ^bb41, ^bb46
    %312 = llvm.icmp "slt" %311, %309 : i64
    llvm.cond_br %312, ^bb43, ^bb47
  ^bb43:  // pred: ^bb42
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%313 : i64)
  ^bb44(%316: i64):  // 2 preds: ^bb43, ^bb45
    %317 = llvm.icmp "slt" %316, %314 : i64
    llvm.cond_br %317, ^bb45, ^bb46
  ^bb45:  // pred: ^bb44
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.add %311, %318  : i64
    %320 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.add %306, %311  : i64
    %322 = llvm.add %321, %316  : i64
    %323 = llvm.getelementptr %320[%322] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %324 = llvm.load %323 : !llvm.ptr<i32>
    %325 = llvm.extractvalue %273[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %326 = llvm.mlir.constant(4 : index) : i64
    %327 = llvm.mul %306, %326  : i64
    %328 = llvm.add %327, %319  : i64
    %329 = llvm.add %328, %316  : i64
    %330 = llvm.getelementptr %325[%329] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %324, %330 : !llvm.ptr<i32>
    %331 = llvm.add %316, %315  : i64
    llvm.br ^bb44(%331 : i64)
  ^bb46:  // pred: ^bb44
    %332 = llvm.add %311, %310  : i64
    llvm.br ^bb42(%332 : i64)
  ^bb47:  // pred: ^bb42
    %333 = llvm.add %306, %305  : i64
    llvm.br ^bb40(%333 : i64)
  ^bb48:  // pred: ^bb40
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%334 : i64)
  ^bb49(%337: i64):  // 2 preds: ^bb48, ^bb56
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %339 = llvm.mlir.constant(0 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%339 : i64)
  ^bb51(%342: i64):  // 2 preds: ^bb50, ^bb55
    %343 = llvm.icmp "slt" %342, %340 : i64
    llvm.cond_br %343, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%344 : i64)
  ^bb53(%347: i64):  // 2 preds: ^bb52, ^bb54
    %348 = llvm.icmp "slt" %347, %345 : i64
    llvm.cond_br %348, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.add %342, %349  : i64
    %351 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %352 = llvm.add %337, %342  : i64
    %353 = llvm.add %352, %347  : i64
    %354 = llvm.getelementptr %351[%353] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %355 = llvm.load %354 : !llvm.ptr<i32>
    %356 = llvm.extractvalue %273[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %357 = llvm.mlir.constant(4 : index) : i64
    %358 = llvm.mul %337, %357  : i64
    %359 = llvm.add %358, %350  : i64
    %360 = llvm.add %359, %347  : i64
    %361 = llvm.getelementptr %356[%360] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %355, %361 : !llvm.ptr<i32>
    %362 = llvm.add %347, %346  : i64
    llvm.br ^bb53(%362 : i64)
  ^bb55:  // pred: ^bb53
    %363 = llvm.add %342, %341  : i64
    llvm.br ^bb51(%363 : i64)
  ^bb56:  // pred: ^bb51
    %364 = llvm.add %337, %336  : i64
    llvm.br ^bb49(%364 : i64)
  ^bb57:  // pred: ^bb49
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%365 : i64)
  ^bb58(%368: i64):  // 2 preds: ^bb57, ^bb65
    %369 = llvm.icmp "slt" %368, %366 : i64
    llvm.cond_br %369, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%370 : i64)
  ^bb60(%373: i64):  // 2 preds: ^bb59, ^bb64
    %374 = llvm.icmp "slt" %373, %371 : i64
    llvm.cond_br %374, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%375 : i64)
  ^bb62(%378: i64):  // 2 preds: ^bb61, ^bb63
    %379 = llvm.icmp "slt" %378, %376 : i64
    llvm.cond_br %379, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %380 = llvm.mlir.constant(3 : index) : i64
    %381 = llvm.add %373, %380  : i64
    %382 = llvm.extractvalue %63[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %383 = llvm.add %368, %373  : i64
    %384 = llvm.add %383, %378  : i64
    %385 = llvm.getelementptr %382[%384] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %386 = llvm.load %385 : !llvm.ptr<i32>
    %387 = llvm.extractvalue %273[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %388 = llvm.mlir.constant(4 : index) : i64
    %389 = llvm.mul %368, %388  : i64
    %390 = llvm.add %389, %381  : i64
    %391 = llvm.add %390, %378  : i64
    %392 = llvm.getelementptr %387[%391] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %386, %392 : !llvm.ptr<i32>
    %393 = llvm.add %378, %377  : i64
    llvm.br ^bb62(%393 : i64)
  ^bb64:  // pred: ^bb62
    %394 = llvm.add %373, %372  : i64
    llvm.br ^bb60(%394 : i64)
  ^bb65:  // pred: ^bb60
    %395 = llvm.add %368, %367  : i64
    llvm.br ^bb58(%395 : i64)
  ^bb66:  // pred: ^bb58
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.mlir.constant(4 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.mlir.constant(4 : index) : i64
    %401 = llvm.mlir.null : !llvm.ptr<i32>
    %402 = llvm.getelementptr %401[%400] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %403 = llvm.ptrtoint %402 : !llvm.ptr<i32> to i64
    %404 = llvm.mlir.constant(16 : index) : i64
    %405 = llvm.add %403, %404  : i64
    %406 = llvm.call @malloc(%405) : (i64) -> !llvm.ptr<i8>
    %407 = llvm.bitcast %406 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %408 = llvm.ptrtoint %407 : !llvm.ptr<i32> to i64
    %409 = llvm.mlir.constant(1 : index) : i64
    %410 = llvm.sub %404, %409  : i64
    %411 = llvm.add %408, %410  : i64
    %412 = llvm.urem %411, %404  : i64
    %413 = llvm.sub %411, %412  : i64
    %414 = llvm.inttoptr %413 : i64 to !llvm.ptr<i32>
    %415 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %416 = llvm.insertvalue %407, %415[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %417 = llvm.insertvalue %414, %416[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.insertvalue %418, %417[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %420 = llvm.insertvalue %396, %419[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %421 = llvm.insertvalue %397, %420[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %422 = llvm.insertvalue %398, %421[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %423 = llvm.insertvalue %397, %422[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %424 = llvm.insertvalue %398, %423[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %425 = llvm.insertvalue %399, %424[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%426 : i64)
  ^bb67(%429: i64):  // 2 preds: ^bb66, ^bb74
    %430 = llvm.icmp "slt" %429, %427 : i64
    llvm.cond_br %430, ^bb68, ^bb75
  ^bb68:  // pred: ^bb67
    %431 = llvm.mlir.constant(0 : index) : i64
    %432 = llvm.mlir.constant(4 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%431 : i64)
  ^bb69(%434: i64):  // 2 preds: ^bb68, ^bb73
    %435 = llvm.icmp "slt" %434, %432 : i64
    llvm.cond_br %435, ^bb70, ^bb74
  ^bb70:  // pred: ^bb69
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%436 : i64)
  ^bb71(%439: i64):  // 2 preds: ^bb70, ^bb72
    %440 = llvm.icmp "slt" %439, %437 : i64
    llvm.cond_br %440, ^bb72, ^bb73
  ^bb72:  // pred: ^bb71
    %441 = llvm.extractvalue %273[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %442 = llvm.mlir.constant(4 : index) : i64
    %443 = llvm.mul %429, %442  : i64
    %444 = llvm.add %443, %434  : i64
    %445 = llvm.add %444, %439  : i64
    %446 = llvm.getelementptr %441[%445] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %447 = llvm.load %446 : !llvm.ptr<i32>
    %448 = llvm.sub %42, %447  : i32
    %449 = llvm.extractvalue %425[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %450 = llvm.mlir.constant(4 : index) : i64
    %451 = llvm.mul %429, %450  : i64
    %452 = llvm.add %451, %434  : i64
    %453 = llvm.add %452, %439  : i64
    %454 = llvm.getelementptr %449[%453] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %448, %454 : !llvm.ptr<i32>
    %455 = llvm.add %439, %438  : i64
    llvm.br ^bb71(%455 : i64)
  ^bb73:  // pred: ^bb71
    %456 = llvm.add %434, %433  : i64
    llvm.br ^bb69(%456 : i64)
  ^bb74:  // pred: ^bb69
    %457 = llvm.add %429, %428  : i64
    llvm.br ^bb67(%457 : i64)
  ^bb75:  // pred: ^bb67
    %458 = llvm.mlir.constant(2 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.mlir.constant(4 : index) : i64
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.mlir.constant(8 : index) : i64
    %464 = llvm.mlir.constant(8 : index) : i64
    %465 = llvm.mlir.constant(16 : index) : i64
    %466 = llvm.mlir.null : !llvm.ptr<i32>
    %467 = llvm.getelementptr %466[%465] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %468 = llvm.ptrtoint %467 : !llvm.ptr<i32> to i64
    %469 = llvm.mlir.constant(16 : index) : i64
    %470 = llvm.add %468, %469  : i64
    %471 = llvm.call @malloc(%470) : (i64) -> !llvm.ptr<i8>
    %472 = llvm.bitcast %471 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %473 = llvm.ptrtoint %472 : !llvm.ptr<i32> to i64
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.sub %469, %474  : i64
    %476 = llvm.add %473, %475  : i64
    %477 = llvm.urem %476, %469  : i64
    %478 = llvm.sub %476, %477  : i64
    %479 = llvm.inttoptr %478 : i64 to !llvm.ptr<i32>
    %480 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %481 = llvm.insertvalue %472, %480[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.insertvalue %479, %481[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.insertvalue %483, %482[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.insertvalue %458, %484[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.insertvalue %459, %485[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %487 = llvm.insertvalue %460, %486[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.insertvalue %461, %487[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.insertvalue %464, %488[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.insertvalue %463, %489[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.insertvalue %461, %490[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %492 = llvm.insertvalue %462, %491[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.mlir.constant(2 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%493 : i64)
  ^bb76(%496: i64):  // 2 preds: ^bb75, ^bb86
    %497 = llvm.icmp "slt" %496, %494 : i64
    llvm.cond_br %497, ^bb77, ^bb87
  ^bb77:  // pred: ^bb76
    %498 = llvm.mlir.constant(0 : index) : i64
    %499 = llvm.mlir.constant(1 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%498 : i64)
  ^bb78(%501: i64):  // 2 preds: ^bb77, ^bb85
    %502 = llvm.icmp "slt" %501, %499 : i64
    llvm.cond_br %502, ^bb79, ^bb86
  ^bb79:  // pred: ^bb78
    %503 = llvm.mlir.constant(0 : index) : i64
    %504 = llvm.mlir.constant(4 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%503 : i64)
  ^bb80(%506: i64):  // 2 preds: ^bb79, ^bb84
    %507 = llvm.icmp "slt" %506, %504 : i64
    llvm.cond_br %507, ^bb81, ^bb85
  ^bb81:  // pred: ^bb80
    %508 = llvm.mlir.constant(0 : index) : i64
    %509 = llvm.mlir.constant(2 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%508 : i64)
  ^bb82(%511: i64):  // 2 preds: ^bb81, ^bb83
    %512 = llvm.icmp "slt" %511, %509 : i64
    llvm.cond_br %512, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %513 = llvm.extractvalue %425[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %514 = llvm.mlir.constant(4 : index) : i64
    %515 = llvm.mul %501, %514  : i64
    %516 = llvm.add %515, %506  : i64
    %517 = llvm.add %516, %44  : i64
    %518 = llvm.getelementptr %513[%517] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %519 = llvm.load %518 : !llvm.ptr<i32>
    %520 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.mlir.constant(2 : index) : i64
    %522 = llvm.mul %496, %521  : i64
    %523 = llvm.mlir.constant(2 : index) : i64
    %524 = llvm.mul %501, %523  : i64
    %525 = llvm.add %522, %524  : i64
    %526 = llvm.mlir.constant(2 : index) : i64
    %527 = llvm.mul %44, %526  : i64
    %528 = llvm.add %525, %527  : i64
    %529 = llvm.add %528, %511  : i64
    %530 = llvm.getelementptr %520[%529] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %531 = llvm.load %530 : !llvm.ptr<i32>
    %532 = llvm.add %519, %531  : i32
    %533 = llvm.extractvalue %492[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %534 = llvm.mlir.constant(8 : index) : i64
    %535 = llvm.mul %496, %534  : i64
    %536 = llvm.mlir.constant(8 : index) : i64
    %537 = llvm.mul %501, %536  : i64
    %538 = llvm.add %535, %537  : i64
    %539 = llvm.mlir.constant(2 : index) : i64
    %540 = llvm.mul %506, %539  : i64
    %541 = llvm.add %538, %540  : i64
    %542 = llvm.add %541, %511  : i64
    %543 = llvm.getelementptr %533[%542] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %532, %543 : !llvm.ptr<i32>
    %544 = llvm.add %511, %510  : i64
    llvm.br ^bb82(%544 : i64)
  ^bb84:  // pred: ^bb82
    %545 = llvm.add %506, %505  : i64
    llvm.br ^bb80(%545 : i64)
  ^bb85:  // pred: ^bb80
    %546 = llvm.add %501, %500  : i64
    llvm.br ^bb78(%546 : i64)
  ^bb86:  // pred: ^bb78
    %547 = llvm.add %496, %495  : i64
    llvm.br ^bb76(%547 : i64)
  ^bb87:  // pred: ^bb76
    %548 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %549 = llvm.insertvalue %218, %548[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %550 = llvm.insertvalue %492, %549[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %550 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg4: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v6_0", "v5_0", "v1_0", "v2_0"], llvm.emit_c_interface, output_names = ["v9_0", "v3_0"]} {
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
    %42 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %11, %12, %13, %14, %15, %16, %17, %18, %19, %21, %22, %23, %24, %25, %26, %27, %28, %29, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %42, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %40, %74, %108) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %146 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %147 = llvm.extractvalue %146[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %148 = llvm.extractvalue %146[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %149 = llvm.mlir.constant(2 : i64) : i64
    %150 = llvm.mlir.constant(16 : i64) : i64
    %151 = llvm.call @malloc(%150) : (i64) -> !llvm.ptr<i8>
    %152 = llvm.bitcast %151 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %153 = llvm.mlir.constant(2 : i64) : i64
    %154 = llvm.call @omTensorCreateUntyped(%153) : (i64) -> !llvm.ptr<i8>
    %155 = llvm.mlir.constant(1 : i64) : i64
    %156 = llvm.extractvalue %147[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %157 = llvm.bitcast %156 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %158 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %159 = llvm.bitcast %158 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%154, %155, %157, %159) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %160 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%154, %160) : (!llvm.ptr<i8>, i64) -> ()
    %161 = llvm.call @omTensorGetShape(%154) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %162 = llvm.call @omTensorGetStrides(%154) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %163 = llvm.mlir.constant(0 : i64) : i64
    %164 = llvm.extractvalue %147[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.getelementptr %161[%163] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %164, %165 : !llvm.ptr<i64>
    %166 = llvm.extractvalue %147[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %167 = llvm.getelementptr %162[%163] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %166, %167 : !llvm.ptr<i64>
    %168 = llvm.mlir.constant(1 : i64) : i64
    %169 = llvm.extractvalue %147[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %170 = llvm.getelementptr %161[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %169, %170 : !llvm.ptr<i64>
    %171 = llvm.extractvalue %147[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %172 = llvm.getelementptr %162[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %171, %172 : !llvm.ptr<i64>
    %173 = llvm.mlir.constant(0 : i64) : i64
    %174 = llvm.getelementptr %152[%173] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %154, %174 : !llvm.ptr<ptr<i8>>
    %175 = llvm.mlir.constant(4 : i64) : i64
    %176 = llvm.call @omTensorCreateUntyped(%175) : (i64) -> !llvm.ptr<i8>
    %177 = llvm.mlir.constant(1 : i64) : i64
    %178 = llvm.extractvalue %148[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.bitcast %178 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %180 = llvm.extractvalue %148[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.bitcast %180 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%176, %177, %179, %181) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %182 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%176, %182) : (!llvm.ptr<i8>, i64) -> ()
    %183 = llvm.call @omTensorGetShape(%176) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %184 = llvm.call @omTensorGetStrides(%176) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %185 = llvm.mlir.constant(0 : i64) : i64
    %186 = llvm.extractvalue %148[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.getelementptr %183[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %186, %187 : !llvm.ptr<i64>
    %188 = llvm.extractvalue %148[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.getelementptr %184[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %188, %189 : !llvm.ptr<i64>
    %190 = llvm.mlir.constant(1 : i64) : i64
    %191 = llvm.extractvalue %148[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.getelementptr %183[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %191, %192 : !llvm.ptr<i64>
    %193 = llvm.extractvalue %148[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.getelementptr %184[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %193, %194 : !llvm.ptr<i64>
    %195 = llvm.mlir.constant(2 : i64) : i64
    %196 = llvm.extractvalue %148[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.getelementptr %183[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %196, %197 : !llvm.ptr<i64>
    %198 = llvm.extractvalue %148[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.getelementptr %184[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %198, %199 : !llvm.ptr<i64>
    %200 = llvm.mlir.constant(3 : i64) : i64
    %201 = llvm.extractvalue %148[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.getelementptr %183[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %201, %202 : !llvm.ptr<i64>
    %203 = llvm.extractvalue %148[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.getelementptr %184[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %203, %204 : !llvm.ptr<i64>
    %205 = llvm.mlir.constant(1 : i64) : i64
    %206 = llvm.getelementptr %152[%205] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %176, %206 : !llvm.ptr<ptr<i8>>
    %207 = llvm.call @omTensorListCreate(%152, %149, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %207 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<270 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<270 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

